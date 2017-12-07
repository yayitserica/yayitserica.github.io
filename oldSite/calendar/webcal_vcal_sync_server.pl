#!/usr/bin/perl -w
#
# $Header: /home/cvs/webCal/webCal2/webcal_vcal_sync_server.pl,v 1.2 2003/06/27 20:09:05 mzou Exp $
#

use strict;
use webcalSync;
use webcalConfig;
use webcalSupport;
#---------------------------------------------------------------------------------------------
#
# This is a sample webcal sync server. It sync your calendar/addressbook with  vcal/vcard files.
#
# This script must be invoked as a cgi script. The cgi post must contain at least:
#    username, password, command, data
# and optionally a calendar name to sync with. See webcal_vcal_sync_client for
# details.
#
# To write a sync script. You need 
#   * A sync server ( this file is an example)
#   * A sync client ( webcal_vcal_sync_client is an example)
#
#   In sync-server, you need write converters that convert
#   calendar-data from foreign format to native webcal format and
#   vice versa.
#
#   In sync-client, you need to write procedures that get calendar
#   data off from a foreign calendar (e.g PDA), in plain-text format;
#   and write data back to a foreign calendar (e.g. PDA).
#
# The sync procedure looks like the following.
#
#  -----       -------------                                  -------------
# | PDA | <-> | sync client |  <---HTTP request/response---> | sync server | <-> WebCal
#  -----       -------------                                  -------------
#
#---------------------------------------------------------------------------------------------
if(1) {
    my ($method, %converters);
    $ENV{PATH} = "/bin:/usr/bin";
    $method=$ENV{'REQUEST_METHOD'} or die("To be used as a CGI-BIN program!");
    %converters = (
		   'ToWebcalEvents'       => \&vcal2wcal,
		   'FromWebcalEvents'     => \&wcal2vcal,
		   'ToWebcalTodos'        => \&vcal2wcal,
		   'FromWebcalTodos'      => \&wcal2vcal,
		   'ToWebcalAddressBook'  => \&vcard2wcal, 
		   'FromWebcalAddressBook'=> \&wcal2vcard,
		   );
    &webcalSync::dosync(\%converters);
    exit(0);
}

#---------------------------------------------------------------------------------------------
# Sample converter. From vcal to wcal
#
# This procedure takes three arguments:
#  data:     calendar_data in foreign calendar format (in this example, vcal);
#  calendar: the calendar to sync with;
#  author:   name of the user who is doing the syncing (normally is the same as calendar).
# 
# Return value:
#  A reference to an arrary of events in webcal format. Each element in the
#  array is an anonymous hash containing entries as shown in the next example
#  (must contain at least: kind, date, start, duration, what, repeat, occurs )
# {
#   kind => '1',    
#   date => '8/3/2001',  # be careful here 08/03/2001 is invalid
#   start => '8:55',
#   duration => '60',
#   repeat => '20',
#   occurs => 'Weekly',
#   exception => [3,5],
#   what => 'Event Title',
#   details => 'Detailed Description of Event',
#   author => 'mzou',
#   rem => 'rf:n:5:m,rm:y:30:h,rp:n:5:m,rc:n:5:m',
# }
#  
# Description of fields.
#{
#      kind: event type, 1 for appointment, 2 for todo, 3 for meeting and 4 for special-no-time events.
#      date: event date in format  "M/D/YYYY". Please use '8/9/2001' instead of '08/09/2001' when
#            specifying Aug 9 2001. The reason is that wcal uses string comparision internally to
#            check event dates,
#     start: start time: hh:mm (both '08:55' and '8:55' are accepted).
#  duration: length of event, in minutes.
#      what: Event Title.
#   details: Detailed description of event.
#    author: Author of the event.
#    repeat: repeat count of an recurring event.
#    occurs: repeating rule. Possible values are
#		      'OneTime'			
#		      'Daily'			
#		      'Weekly'			
#		      'Every2Weeks'		
#		      'MonthlyByDate'		
#		      'MonthlyByWeekday'	
#		      'Yearly'			
#		      'MTWThF'			
#		      'MWF'			
#		      'TTh'			
#		      'YearlyByMonthWeekday'	
#		      'EveryOtherDay'		
#		      'Every3rdDay'		
#		      'Every4thDay'		
#		      'Every5thDay'		
#		      'Every6thDay'		
#
# exception:  a perl array of execptions. This is meaningful only for recurring events.
#             For example, 
#                 exception => [ 2, 4,7],
#             means that the scheduled 2nd, 4th and 7th occurence of the 
#             event in question have been deleted.
#       rem:  reminder settings. consists of four comma separated fields: 
#             blink_reminder, mail_reminder,popup_reminder,audio_reminder
#             Each fields consists of 4 : separated fields.
#               control_word:y_or_n:time:units
#             control_word: rf for-blinking-reminder
#                           rm for-email-reminder
#                           rp for-popup-reminder
#                           rc for-audio-reminder
#             y_or_n:      y for-enable, n for-disable
#             time:       time interval before the event to fire the alarm
#             units:      time unit, may be m,h,d or w for minutes, hours,days and weeks.
#
#---------------------------------------------------------------------------------------------
# We cheat a bit here, there is a procedure in webcalSupport that parse vcalendars...
#---------------------------------------------------------------------------------------------
sub vcal2wcal {
    my($data, $calendar, $author) = (@_);
    my @events = &webcalSupport::parseVcal($calendar, $data);
    return \@events;
}

#---------------------------------------------------------------------------------------------
# Sample converter: convert webcal calendar entry to vcalendar entry.
#
# This procedure takes three arguments:
#  data:     calendar_data in native webcal format (array of anonymous hash)
#  calendar: the calendar to sync with;
#  author:   name of the user who is doing the syncing.
#
#  Return Value: calendar_data in foreign calendar format (vcalendar in this example).
#                Note: return value must be in plain-text form.
#
#---------------------------------------------------------------------------------------------
# Again, we use the procedure 'toVcal' in webcalSupport ...
#---------------------------------------------------------------------------------------------
sub wcal2vcal {
    my($events, $calendar, $author) = (@_);
    my($href, $vcal, $tmp);
    $vcal = "BEGIN:VCALENDAR\r\n";
    $vcal .= "PRODID:-//WebCalendar $webcalSupport::VERSION//EN\r\nVERSION:1.0\r\n";
    for $href (@$events) {
	$tmp = &webcalSupport::toVcal($href, $calendar, 2); 
	$vcal .= $tmp;
	$vcal .= "\n";
    }
    $vcal .= "END:VCALENDAR\r\n";
    $vcal;
}

#---------------------------------------------------------------------------------------------
# Sample converter. From vcard to wcal addressbook
#
# This procedure takes three arguments:
#  data:     address_data in foreign format (in this example, vcard);
#  calendar: the calendar to sync with;
#  author:   name of the user who is doing the syncing.
# 
# Return value:
#  A reference to an arrary of events in webcal format. Each element in the
#  array is an anonymous hash containing entries as shown in the next example
#  (at least one of 'fname' and 'lname' must be set to a non-empty string!)
# {
#   fname => 'First Name',
#   lname => 'Last Name',
#   phone => 'List of Phone numbers',
#   fax   => 'fas number',
#   email => 'Email address if available',
#   addr  => 'Street address', 
#   city  => 'City Name, (locality)',
#   state => 'State, (region)',
#   zip   => 'Zipcode, (postal code)',
#   com   => 'Organization info',
#   info  => 'Misc info',
#   hpage => 'URL to homepage if available',
#   rev  =>  'Revision DateTime in YYYYMMDDTHHMMSS(Z) format',
#}
#
#---------------------------------------------------------------------------------------------
# We cheat a bit here, there is a procedure in webcalSupport that parse vcard...
#---------------------------------------------------------------------------------------------
sub vcard2wcal {
    my($data, $calendar, $author) = (@_);
    my @entries = &webcalSupport::parseVCard($calendar,$data);
    return \@entries;
} 
#---------------------------------------------------------------------------------------------
# Sample converter: convert webcal addressbook to vcard
#
# This procedure takes three arguments:
#  data:     addressbook_data in native webcal format (array of anonymous hash)
#  calendar: the calendar to sync with; 
#  author:   name of the user who is doing the syncing.
#
#  Return Value: calendar_data in foreign calendar format (vcard in this example).
#                Note: return value must be in plain-text form.
#---------------------------------------------------------------------------------------------
sub wcal2vcard {
    my($entries, $calendar, $author) = (@_);
    my($href, $vcard, $tmp);
    $vcard = "";
    for $href (@$entries) {
	$tmp = &webcalSupport::toVCard($href, $calendar, 2);
	$vcard .= $tmp;
	$vcard .= "\n";
    }
    $vcard;    
} 
#---------------------------------------------------------------------------------------------


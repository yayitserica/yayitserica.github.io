#!/usr/bin/perl -w
#
# $Header: /home/cvs/webCal/webCal2/webcal_vcal_sync_client.pl,v 1.3 2003/06/27 20:09:05 mzou Exp $
#

use strict;
use LWP;
use HTTP::Request::Common;
use Getopt::Long;

#---------------------------------------------------------------------------------------------
#
# This is a sample webcal sync client. It sync your calendar/addressbook with a vcal/vcard file.
#
# This script performs a CGI FORM Post. You need LWP module to run it. 
#
#  See webcal_vcal_sync_server.pl for additional information on writing
#  a sync utility.
#
#---------------------------------------------------------------------------------------------

if(1) {
   # Replace the next line with the correct sync_server_url 
   #
   #my $sync_server = "http://192.168.7.1/a/webcal_vcal_sync_server";
   my $sync_server = "";
   #
    
   my $username = '';
   my $password = '';
   my $vcal_file = ''; 
   my $vcard_file = '';
   my $calendar = '';
   my $help = '';
   my $command = 'test';

   GetOptions('username=s' => \$username, 'password=s' => \$password, 'vcal_file=s' => \$vcal_file,
	      'calendar=s'=>\$calendar, 'command=s'=>\$command, 'help'=>\$help, 
	      'server=s'=>\$sync_server, 'vcard_file=s'=>\$vcard_file);

   if($help) {
       print STDERR  "\nUsage:\n";
       print STDERR  "$0 -username USERNAME -password PASSWORD [ -calendar CALENDAR_NAME ]\n";
       print STDERR  "\t -server URI_of_your_webcal_vcal_server\n";
       print STDERR  "\t -vcal_file PATH_OF_VCAL_FILE  -vcard_file PATH_OF_VCARD_FILE\n";
       print STDERR  "\t -command [ sync | test ]\n";
       print STDERR  "\t [ -help | -h ] \n";
       exit 0;
   }

   while( !$sync_server or $sync_server !~ /^http/i ) {
       print STDERR  "Enter URL of your webcal_vcal_sync_server: "; chop($sync_server=<>);
   }

   if( !$username ) { print STDERR  "Enter username: ";    chop($username = <>); }
   if( !$password)  { print STDERR  "Enter password: "; `stty -echo`; chop($password = <>); `stty echo`; print "\n";}   

   if( !$vcal_file and !$vcard_file) {
       print STDERR  "Enter the pathname of a vCalendar file: ";  chop($vcal_file = <>); 
       print STDERR  "Enter the pathname of a vCard file: ";  chop($vcard_file = <>); 
   }


#---------------------------------------------------------------------------------------------
#
# build post request content
#
   my $postcontent = [ username        => $username,
		       password        => $password,
		       command         => $command,
		       ];
   if($vcal_file) { push @$postcontent, event_file => [ $vcal_file, Content_Type => 'text/plain'];}
   if($vcard_file){ push @$postcontent, addressbook_file => [ $vcard_file, Content_Type => 'text/plain'];} 
#---------------------------------------------------------------------------------------------
# Now post the form
#
   my $ua = LWP::UserAgent->new;
   my $request = POST( $sync_server,
		       Content_Type => 'form-data',
		       Content => $postcontent,
		       );
   my $response = $ua->request($request);

   die $response->message unless $response->is_success;
#---------------------------------------------------------------------------------------------
# parse response from the server
#
   my $content = $response->content;
   $_ = $content;
   my %hash = ();
   my ($name, $key, $value);
   while(/==_begin_webcalendar_sync_([^=]+)==\n/) {
       $name = $1;
       $_=$';
       if(/==_end_webcalendar_sync_$name==\n/) {
	   $hash{$name} = $`;
	   $_ = $';
       } else {
	   die "Ill formed response";
       }
   }
   print STDERR "============== BEGIN ===============\n";
   print STDERR "=========== $command Mode =========\n";
   print STDERR "==Status:  $hash{'status'}";
   print STDERR "==Message: $hash{'message'}\n";
   print STDERR "===================================\n";

   if( $hash{'sync_events_status'}) {
       print STDERR " ++  Sync_Events_Status: $hash{'sync_events_status'}";
       print STDERR " ++  Sync_Events_Message: $hash{'sync_events_message'}\n\t";

       if($hash{'sync_events_status'} =~ /^OK/) {
	   my ($fileall, $filenew);
	   $fileall = $vcal_file . '.all';
	   $filenew = $vcal_file . '.new';
	   if(open(AF, ">$fileall")) {
	       print AF $hash{'allevents'};
	       print AF "\n";
	       close AF;
	       print STDERR "\n\t------  All-Events wrote to \"$fileall\"\n";
	   } else {
	       print STDERR "Error:  Could write to \"$fileall\"!\n";
	   }
	   if(open(NF, ">$filenew")) {
	       print NF $hash{'newevents'};
	       print NF "\n";
	       close NF;
	       print STDERR "\n\t------  New-Events wrote to \"$fileall\"\n";
	   } else { print STDERR "Error:  Could write to \"$filenew\"!\n";}
       }
   }
   print STDERR "===================================\n";
   if( $hash{'sync_addressbook_status'}) {
       print STDERR "  Sync_Addressbook_Status: $hash{'sync_addressbook_status'}";
       print STDERR "  Sync_Addressbook_Message: $hash{'sync_addressbook_message'}\n";
       if($hash{'sync_addressbook_status'} =~ /^OK/) {
	   my ($fileall, $filenew);
	   $fileall = $vcard_file . '.all';
	   $filenew = $vcard_file . '.new';
	   if(open(AF, ">$fileall")) {
	       print AF $hash{'alladdresses'};
	       print AF "\n";
	       close AF;
	       print STDERR "\n\t------  All-Addresses wrote to \"$fileall\"\n";
	   } else {
	       print STDERR "Error:  Could write to \"$fileall\"!\n";
	   }
	   if(open(NF, ">$filenew")) {
	       print NF $hash{'newaddresses'};
	       print NF "\n";
	       close NF;
	       print STDERR "\n\t------  New-Addresses wrote to \"$fileall\"\n";
	   } else { print STDERR "Error:  Could write to \"$filenew\"!\n";}
       }
   }
   print STDERR "=============== END ================\n";
}
#---------------------------------------------------------------------------------------------


#!/usr/bin/perl -w
#
# $Header: /home/cvs/webCal/webCal2/webcalSync.pm,v 1.10 2003/09/25 20:10:23 mzou Exp $
#

package webcalSync;

use strict;
use webcalConfig;
use webcalSupport;
use webcalLock;
use Symbol;
use Fcntl ':flock';
use Fcntl ':DEFAULT';
use CGI;

my $webCalSyncVersion="2.7";
my $patchlevel="3";
#===========================================================================================================
# interface module for sycning webcalendar with other calendars
#
# dosync:
#   This routine has to be invoked via a (simulated) CGI POST. See webcal_vcal_sync_server.pl and
#   webcal_vcal_sync_client.pl for a working example.
#
#   To implement a new sync script, use 
#      webcal_vcal_sync_server webcal_vcal_sync_client
#   as prototypes for your sync server and sync client
#
#   Input: hash reference containing possibly the following (you only need the ones
#          that you're going to use. For example, if you just want to sync ToDo tasks,
#          you need only to supply 'ToWebcalTodos' and 'FromWebcalTodos').
#   
#     ToWebcalEvents
#     FromWebcalEvents
#     ToWebcalTodos
#     FromWebcalTodos
#     ToWebcalAddressBook
#     FromWebcalAddressBook
#
#     Value for each hash entry is a reference to a procedure
#     thad does what the name says. For example, 
#       ToWebcalEvents points to a procedure that converts
#     foreign calendar entries to native webcal format: an arrary of
#     anonymous hashes. This procedure takes
#     three arguments: data, calendarname, username
#
#
#   The CGI POST has to provide (* required, + optional) 
#        *) username  
#        *) password
#        +) calendar -- calendar to sync with, if missing, default to username
#        +) event_file -- event file or
#           event_data -- event data
#        +) todo_file  -- file containing todo tasks or
#           todo_data
#        +) address_file -- file containing addressbook or
#           address_data
#        *) command     -- sync or test
#
#   This function returns a plain-text of sync info in the following format:
# 
#    ==_begin_webcalendar_sync_status==
#    OK or ERROR or OK PARTIALLY
#    ==_end_webcalendar_sync_status==
#
#    ==_begin_webcalendar_sync_message==
#    A short message describing the sync status
#    ==_end_webcalendar_sync_message==
#
#    ==_begin_webcalendar_sync_TARGET==
#     content of target
#    ==_end_webcalendar_sync_TARGET==
#     where TARGET is one of the following:
#
#   sync_events_status    
#   sync_events_message         |--------------------------------------------------------
#   sync_todos_status           | Sync status of individiual sync tasks.
#   sync_todos_message          |   "status" has value 'OK' or 'ERROR' or 'OK PARTIALLY'
#   sync_addressbook_status     |   "message" is short note describing sync status
#   sync_addressbook_message    |-------------------------------------------------------- 
#
#   newevents      | events new to the sync client. I.e on webcalendar but not in the data/file
#                  | supplied by the sync client
#   allevents      | All events on webcalendar after syncing 
#
#   newtodos       |
#   alltodos       |  Same ... 
#
#   newaddresses   |           
#   alladdresses   |  Same ... 
#
#===========================================================================================================
sub dosync {
    my($converters) = (@_);
    my ($query, $tmp, $key, $username, $password, $command, $calendar, $sizelimit);
    my ($event_Filename, $event_File_Handle, $event_data)=(undef, undef, undef);
    my ($todo_Filename, $todo_File_Handle, $todo_data)=(undef, undef, undef);
    my ($address_Filename, $address_File_Handle, $address_data)=(undef, undef, undef);

    my %syncinfo = ();
    my %request = ();
    my %response = ();
    my $response = undef;

    &webcalVirtual::initVirtualServer();
    &webcalSupport::initVars;

    &webcalSupport::loadLangfile;

    if($::o{'dataSizeLimit'}) {
	$sizelimit = $::o{'dataSizeLimit'};
    } else {
	$sizelimit = 1000000;
    }

    $query = new CGI;    

    foreach $key (sort $query->param()) {
	next if ($key =~ /^\s*$/);
	next if ($query->param($key) =~ /^\s*$/);
	my $tt= $query->param($key);
	if($key =~ /^event_file$/i or $key =~ /^eventFile$/i ) {
	    ($event_Filename, $event_File_Handle) = getUFileInfo($query->param($key));
	} elsif($key =~ /^todo_file$/i or $key =~ /^todoFile$/i ) {
	    ($todo_Filename, $todo_File_Handle) = getUFileInfo($query->param($key));
	} elsif($key =~ /^address_book_file$/i or $key =~ /^address_book_File$/i or
		$key =~ /^addressbook_file$/i or $key =~ /^addressbook_File$/i ) {
	    ($address_Filename, $address_File_Handle) = getUFileInfo($query->param($key));
	} else {
	    my $name = $key;
	    my $value = $query->param($key);
	    if($name =~ /^event_data$/i or $name =~ /^eventdata$/i) {$syncinfo{'event_data'} = $value;}
	    elsif($name =~ /^todo_data$/i or $name =~ /^tododata$/i) {$syncinfo{'todo_data'} = $value;}
	    elsif($name =~ /^addressbook_data$/i or $name =~ /^address_book_data$/i or
		  $name =~ /^addressbookdata$/i or $name =~ /^address_book$/i or
		  $name =~ /^address_book$/i) {$syncinfo{'address_data'} = $value;}
	    elsif($name =~ /^command$/i or $name =~ /^cmd$/i) {$syncinfo{'command'} = $value;} 
	    elsif($name =~ /^event_type$/i or $name =~ /^eventType$/i) {$syncinfo{'event_type'} = $value;} 
	    else { $syncinfo{$name}= $value;}
	}
    } 
    # authenticate
    if(!$syncinfo{'username'} or  !$syncinfo{'password'}) {
	&syncError("Missing username or password, cannot authenticate.");
    }
    $request{'username'} = $username = $syncinfo{'username'};
    $request{'password'} = $password = $syncinfo{'password'};
    if($syncinfo{'calendar'}) { $request{'calendar'} = $calendar = $syncinfo{'calendar'};}
    else { $request{'calendar'} = $calendar = $username;}

    if(checkPassword($username, $password) == 0) {
	&syncError("Invalid username or password.");
    } 
    
    if($syncinfo{'command'}) { $request{'command'} = $syncinfo{'command'};}
    else { $request{'command'} = 'test';}
    if($request{'command'} ne 'test' and $request{'command'} ne 'sync') {
	&syncError("Unknown command \"$request{'command'}\". Only \"test\" and \"sync\" are supported.");
    }

    $calendar = untaintname($calendar);
    my $infofile = "$::o{'spooldir'}/$calendar/info";
    if( ! -f "$infofile" ) { &syncError("Calendar $calendar does not exist!");}    
    &webcalSupport::doReadFile("$infofile");
    
    if(! &webcalSupport::isre($username, $calendar, 'editors') and ! &webcalSupport::isadmin($username))  {
	&syncError("Auth failed. You ($username) are not allowed to edit calendar $calendar");
    }

    # auth ok, get data
    if($event_Filename) { $event_data = readFile($event_Filename, $event_File_Handle, $sizelimit); }
    elsif($syncinfo{'event_data'}) { $event_data = $syncinfo{'event_data'}; }
    if($todo_Filename) { $todo_data = readFile($todo_Filename, $todo_File_Handle, $sizelimit); }
    elsif($syncinfo{'todo_data'}) { $todo_data = $syncinfo{'todo_data'}; }
    if($address_Filename) { $address_data = readFile($address_Filename, $address_File_Handle, $sizelimit); }
    elsif($syncinfo{'address_data'}) { $address_data = $syncinfo{'address_data'}; }

    my ($value, $converter, $status, $ocnt, $amsg);
    $status = $ocnt = 0; $amsg = "";
    if($event_data) { 
	$request{'event_type'} = -2;
	$request{'status_return'} = 'sync_events_status';
	$request{'message_return'} = 'sync_events_message';
	$converter = &getConverter($converters,'ToWebcalEvents');
	$request{'events'} = &$converter($event_data, $calendar, $username);
	$response = &SyncEvents(\%request);
	for $key (keys %$response) { $value = $response->{$key}; $response{$key} = $value;}
	$status += $response->{'status'};
	$amsg .= "\n" . $response->{'message'};
	$ocnt = 1;

	if($response->{'sync_events_status'}) {
	    $converter = &getConverter($converters,'FromWebcalEvents');
	    $tmp = &$converter($response->{'newevents'}, $calendar, $username);
	    $response{'newevents'}= $tmp;
	    $tmp = &$converter($response->{'allevents'}, $calendar, $username);
	    $response{'allevents'}= $tmp;
	    $response{'sync_events_status'} = 'OK';
	} else { 
	    delete $response{'newevents'} if $response{'newevents'};
	    delete $response{'allevents'} if $response{'allevents'};
	    $response{'sync_events_status'} = 'ERROR';
	}
    } 
    if($todo_data) {
	$request{'event_type'}	= 2;
	$request{'status_return'} = 'sync_todos_status';
	$request{'message_return'} = 'sync_todos_message';
	$converter = &getConverter($converters,'ToWebcalTodos');
	$request{'events'} = &$converter($todo_data, $calendar, $username);
	$response = &SyncEvents(\%request);	
	for $key (keys %$response) { $value = $response->{$key}; $response{$key} = $value;}
	$status += $response->{'status'};
	$amsg .= "\n" . $response->{'message'};
	$ocnt += 1;

	if($response->{'sync_todos_status'}) {
	    $converter = &getConverter($converters,'FromWebcalTodos');
	    $tmp = &$converter($response->{'newevents'}, $calendar, $username); 
	    $response{'newtodos'}= $tmp; delete $response->{'newevents'};
	    $tmp = &$converter($response->{'allevents'}, $calendar, $username); 
	    $response{'alltodos'}= $tmp; delete $response->{'allevents'};
	    $response{'sync_todos_status'} = 'OK';
	} else {
	    delete $response{'newtodos'} if $response{'newtodos'};
	    delete $response{'alltodos'} if $response{'alltodos'};
	    $response{'sync_todos_status'} = 'ERROR';
        }
    } 
    if($address_data) {
	$request{'status_return'} = 'sync_addressbook_status';
	$request{'message_return'} = 'sync_addressbook_message';
	$converter = &getConverter($converters,'ToWebcalAddressBook');
	$request{'addresses'} = &$converter($address_data, $calendar, $username);
	$response = &SyncAddressBook(\%request);	
	for $key (keys %$response) { $value = $response->{$key}; $response{$key} = $value;}
	$status += $response->{'status'};
	$amsg .= "\n" . $response->{'message'};
	$ocnt += 1;

        if($response->{'sync_addressbook_status'}) {
	    $converter = &getConverter($converters,'FromWebcalAddressBook');
	    $tmp = &$converter($response->{'alladdresses'}, $calendar, $username); 
	    $response{'alladdresses'}=$tmp;
	    $tmp = &$converter($response->{'newaddresses'}, $calendar, $username); 
	    $response{'newaddresses'}=$tmp;
	    $response{'sync_addressbook_status'} = 'OK';
        } else {
            delete $response{'newaddresses'} if $response{'newaddresses'};
            delete $response{'alladdresses'} if $response{'alladdresses'};
            $response->{'sync_addressbook_status'} = 'ERROR';
        }
    } 
    
    # response
    if($status == 0) {$response{'status'} = 'ERROR';}
    else {
	if($status < $ocnt) { $response{'status'} = 'OK PARTIALLY';}
	else  { $response{'status'} = 'OK';}
    }
    $response{'message'} = $amsg;
    &response(\%response);
}
#============================================================================
sub getConverter {
    my ($converters, $name) = (@_);
    if(!$converters->{$name}) {
	syncError("Converter \"$name\" undefined!");
    } 
    $converters->{$name};
}
#============================================================================
sub response {
    my ($href) = (@_);
    print "Content-type: text/plain\n\n";    
    select((select(STDOUT), $| = 1)[0]);
    my ($k, $v, $bgn, $end);

    for $k (keys %$href) {
	$v = $href->{$k};
	$bgn = "==_begin_webcalendar_sync_" . $k . "==\n";
	$end = "==_end_webcalendar_sync_" . $k . "==\n";
	print $bgn, $v, "\n", $end;
    }
    exit 0;
}
#============================================================================
sub syncError {
    my ($msg) = (@_);
    my %response=();
    $response{'status'} = 'ERROR';
    $response{'message'} = <<END;
There is an error processing your sync request. Database unchanged.
===$msg====;
END
    &response(\%response);    
}
#============================================================================
sub getUFileInfo {
    my ($v) = (@_);
    my ($fn, $fh);
    if ($v =~ /([^\/\\]+)$/) {
	my $tmpname = $1;
	$tmpname =~ s/^\.+//;
	$fn= $tmpname;
	$tmpname = $v;
	$fh= $tmpname;
    }
    else {
	&webcalSupport::loadLangfile;
	&syncError("Filename problem: $v is not properly formatted");
    }
    ($fn, $fh);
}
#============================================================================
sub readFile {
    my($Filename, $File_Handle, $sizelimit) = (@_);
    my ($file,$Bytes,$BytesRead,$Buffer,$name,$tbytes, $data);
    $file = $webcalConfig::c{'tmpdir'} . "/$Filename" . "$$";
    $data="";
    my $OUTFILE = gensym;
    if(open($OUTFILE, ">$file")) {
	binmode($OUTFILE);
	$BytesRead = 0;
	undef $Buffer;
	binmode($File_Handle);
	while ($Bytes = read($File_Handle,$Buffer,1024)) {
	    $BytesRead += $Bytes;
	    print $OUTFILE $Buffer;
	    if($BytesRead > $sizelimit) {last;}
	}
	close($File_Handle);
	close $OUTFILE;
	if($BytesRead > $sizelimit) {
	    if( -f $file) { unlink $file;}
	    &syncError("File \"$Filename\" is to big."); 
	} elsif($BytesRead == 0) {
	    if( -f $file) { unlink $file;}
	    &syncError("File \"$Filename\" is empty."); 
	} 
	my $INFILE = gensym;
	if($BytesRead > 0 and open($INFILE, "$file")) {
	    binmode($INFILE);
	    while(<$INFILE>) { $data .= $_; }
	    close $INFILE;
	    if( -f "$file") { unlink $file;}
	}
    }
    return $data;
}
#============================================================================
sub checkPassword {
    my ($unameI, $passwdI) = (@_);
    my $pfile="$::o{'spooldir'}/passwd";
    my $result=0;
    my $FILEPQ = gensym;
    if(open($FILEPQ, "<$pfile")) {
	&webcalLock::doflock( \*$FILEPQ, LOCK_SH,"$pfile") or calerror("Cannot lock file '$pfile': $!\n");     
	while(<$FILEPQ>) {
	    chop;
	    my ($nam, $pwdd)=split(/:/, $_);
	    if($nam eq $unameI) {
		my $magic = crypt($passwdI, $pwdd);
		$result = $magic eq $pwdd;
		last;
	    }
	}
	&webcalLock::doflock( \*$FILEPQ, LOCK_UN,"$pfile") or calerror("Cannot lock file '$pfile': $!\n");     
	close($FILEPQ);
    }
    $result;
}
#==========================================================================================================
# Input: a hash table containing 
#         username
#         password
#         calendar   (if not present, default to username)
#         command    ('test' or 'sync')
#         event_type (if not present or 0, all events. Otherwise,
#                     1  appointments,    -1  all except appointments
#                     2  todos,           -2  all except todos
#                     3  meetings         -3  all except meetings
#                     4  special events,  -4  all except special events )
#        events     (reference to an array of events, in webcal native format.)
#      status_return (optional parameter for returning sync status code)
#      message_return (optional parameter for returning sync status message)
#
# Output: reference to a hash table containing
#         message    ( a brief message about the status of sync)
#         status     ( 0 or 1, 0 for failure, 1 for success)
#         newevents  ( reference to an array of new events not present in input, but in webcal. If
#                      event_type is set, only the corresponding kind of events will be listed) 
#         allevents  ( reference to an array of all events in webcal after sync. In the case when
#                      command='test', it contains all events in webcal should sync have been performed.
#                      if event_type is set, only those events matches the specified event_type will be
#                      listed.)
#
#  if status_return is set in the input hash, sync status will also be set in the return hash keyed by
#    $status_return and  $message_return
#
sub SyncEvents {
    my ($hashref) = (@_);
    my($dfile, $ncnt, $acnt, $icnt, $href, $tmp, @newevents, @allevents, $who, $status_ret, $msg_ret);
    my($user, $password, %response, $cmd, $events, $matchkind, $kind, $etype, $cnt);

    if($hashref->{'status_return'}) { $status_ret = $hashref->{'status_return'};} else { $status_ret = undef;}
    if($hashref->{'message_return'}) { $msg_ret = $hashref->{'message_return'};} else { $msg_ret = undef;}
    # auth
    $user = $hashref->{'username'};
    $password = $hashref->{'password'};
    if($href->{'calendar'}) {$who = $href->{'calendar'};} else { $who = $user;}
    %response = ();
    if(checkPassword($user, $password)) {
	if(! &webcalSupport::isre($user, $who, 'editors') and ! &webcalSupport::isadmin($user)) {
	    $response{'message'} = "Auth failed. You ($user) are not allowed to edit calendar $who";
	    $response{'status'} = 0;
	    if($status_ret) { $response{$status_ret} = $response{'status'};}
	    if($msg_ret) {$response{$msg_ret} = $response{'message'};}
	    return \%response;
	}
    }

    $cmd = $hashref->{'command'};
    if(! $cmd or $cmd  !~ /test|sync/i) {
	if(!$cmd) { $response{'message'} = "command is not set in argument hash table.";}
	else { $response{'message'} = "Unknown command \"$cmd\". Must be \"test\" or \"sync\".";}
	$response{'status'} = 0;
	if($status_ret) { $response{$status_ret} = $response{'status'};}
	if($msg_ret) {$response{$msg_ret} = $response{'message'};}
	return \%response;	
    }

    if($hashref->{'events'}) { $events = $hashref->{'events'}; }
    else { my @empty=(); $events = \@empty;}
    
    $etype = 0;
    if(defined $hashref->{'event_type'}) { $etype = $hashref->{'event_type'};}
    elsif(defined $hashref->{'eventtype'}) { $etype = $hashref->{'eventtype'};}
    elsif(defined $hashref->{'eventType'}) { $etype = $hashref->{'eventType'};}
    elsif(defined $hashref->{'kind'}) { $etype = $hashref->{'kind'};}
    
    if(!$etype)  { $matchkind = sub{ 1;};}
    elsif($etype > 0) { $matchkind = sub{ my ($a, $b)=(@_); return $a == $b;}; }
    else { $matchkind = sub{ my ($a,$b)=(@_); return $a !=  - $b;}; }

    $who = untaintname($who);
    $dfile = "$::o{'spooldir'}/$who/data";
    $ncnt = $acnt = $icnt = 0;
    @newevents=(); @allevents = ();

    if($cmd =~ /^test$/i) {
	for $href (@$events) {  $href->{'author'} = "$who,doSync";}
	$cnt = &webcalSupport::doReadFile( "$dfile"); $cnt++;
	    
	for $href (@$events) {
	    my $in = &webcalSupport::eventInCalendar(\@::caldata, $href);
	    if($in) {  $href->{'in'} = $who; }
	}
	
	for $href (@::caldata) {
	    $kind = $href->{'kind'};
	    if(&$matchkind($kind, $etype)) {
		if(! &webcalSupport::eventInCalendar($events, $href)) { 
		    $ncnt++; push @newevents, &webcalSupport::copyTask($href);
		}
	    }
	}

	for $href (@$events) { 
	    if( ! $href->{'in'} or  $href->{'in'} ne $who) {
		$kind = $href->{'kind'};
		if(&$matchkind($kind, $etype) ) {
		    $href->{'key'}=$cnt;
		    $cnt++; $icnt++;
		    push @::caldata, &webcalSupport::copyTask($href);
		}
	    }
	}

	for $href (@::caldata) { 	
	    $kind = $href->{'kind'};
	    if(&$matchkind($kind, $etype) ) {
		push @allevents, &webcalSupport::copyTask($href);
		$acnt++;
	    }
	}
	$response{'status'} = 1;
	$response{'message'} = "Test Mode: $icnt new events to webcal, $ncnt new events from webcal.\n\t\t There are $acnt events in webcal";
	$response{'newevents'} = \@newevents;
	$response{'allevents'} = \@allevents;
    } else { # dosync
	for $href (@$events) {  $href->{'author'} = "$who,doSync";}
	my $FILEVG = gensym;
	if(sysopen($FILEVG, "$dfile", O_WRONLY | O_CREAT)) {	
	    if(! &webcalLock::doflock( \*$FILEVG, LOCK_EX, "$dfile")) {
		$response{'status'} = 0;
		$response{'message'} = "Cannot lock file '$dfile': $!"; 
		if($status_ret) { $response{$status_ret} = $response{'status'};}
		if($msg_ret) {$response{$msg_ret} = $response{'message'};}
		return \%response;
	    }
	    $cnt = do  "$dfile"; $cnt++;
	    
	    for $href (@$events) {
		my $in = &webcalSupport::eventInCalendar(\@::caldata, $href);
		if($in) {  $href->{'in'} = $who; }
	    }

	    truncate($FILEVG, 0);
	    print $FILEVG "\@::caldata = (\n";
	    for $href (@::caldata) {
		if( ! $href->{'end'} ) { my $enddate = &webcalSupport::findEndDateHref($href); if($enddate) { $href->{'end'} = $enddate;}}
		$tmp = &webcalSupport::print1Entry($href);
		print $FILEVG $tmp;
		$kind = $href->{'kind'};
		if(&$matchkind($kind, $etype)) {
		    if(!&webcalSupport::eventInCalendar($events, $href)) { $ncnt++; push @newevents, &webcalSupport::copyTask($href);}
		}
	    }
	    for $href (@$events) { 
		if( ! $href->{'in'} or  $href->{'in'} ne $who) {
		    $kind = $href->{'kind'};
		    if(&$matchkind($kind, $etype)) {
			$href->{'key'}=$cnt;
			$cnt++;
			if( ! $href->{'end'} ) { my $enddate = &webcalSupport::findEndDateHref($href); if($enddate) { $href->{'end'} = $enddate;}}
			$tmp = &webcalSupport::print1Entry($href);
			print $FILEVG $tmp;		    
			push @::caldata, &webcalSupport::copyTask($href);
		    } 
		}
	    }
	    print $FILEVG ");\n$cnt;\n";
	    &webcalLock::doflock( \*$FILEVG, LOCK_UN,"$dfile");
	    close $FILEVG; 
	    
	    for $href (@::caldata) { 	
		$kind = $href->{'kind'};
		if(&$matchkind($kind, $etype) ) {
		    push @allevents, &webcalSupport::copyTask($href);
		    $acnt++;
		}
	    }
	    $response{'status'} = 1;
	    $response{'message'} = "Sync Mode: $icnt new events to webcal, $ncnt new events from webcal.\n\t\t There are $acnt events in webcal";
	    $response{'newevents'} = \@newevents;
	    $response{'allevents'} = \@allevents;
	} else {
	    $response{'status'} = 0;
	    $response{'message'} = "Cannot open \"$dfile\". $!";
	}
    }
    if($status_ret) { $response{$status_ret} = $response{'status'};}
    if($msg_ret) {$response{$msg_ret} = $response{'message'};}
    return \%response;
}
#============================================================================================================
# Input: a hash table containing 
#         username
#         password
#         calendar   (if not present, default to username)
#         command    ('test' or 'sync')
#         addresses  (reference to an array of addresses, in webcal native format.)
#      status_return (optional parameter for returning sync status code)
#      message_return (optional parameter for returning sync status message)
#
# Output: reference to a hash table containing
#         message       ( a brief message about the status of sync)
#         status        ( 0 or 1, 0 for failure, 1 for success)
#         newaddresses  ( reference to an array of new addresses not present in input, but in webcal.) 
#         alladdresses  ( reference to an array of all addresses in webcal after sync. In the case when
#                      command='test', it contains all addresses in webcal should sync have been performed.)
#
#  if status_return is set in the input hash, sync status will also be set in the return hash keyed by
#    $status_return and  $message_return
#
sub SyncAddressBook {
    my ($hashref) = (@_);
    my($dfile, $ncnt, $acnt, $icnt, $href, $tmp, @newaddresses, @alladdresses, $who, $status_ret, $msg_ret);
    my($user, $password, %response, $cmd, $addresses, $cnt);

    if($hashref->{'status_return'}) { $status_ret = $hashref->{'status_return'};} else { $status_ret = undef;}
    if($hashref->{'message_return'}) { $msg_ret = $hashref->{'message_return'};} else { $msg_ret = undef;}
    # auth
    $user = $hashref->{'username'};
    $password = $hashref->{'password'};
    if($href->{'calendar'}) {$who = $href->{'calendar'};} else { $who = $user;}
    %response = ();
    if(checkPassword($user, $password)) {
	if(! &webcalSupport::isre($user, $who, 'editors') and ! &webcalSupport::isadmin($user)) {
	    $response{'message'} = "Auth failed. You ($user) are not allowed to edit calendar $who";
	    $response{'status'} = 0;
	    if($status_ret) { $response{$status_ret} = $response{'status'};}
	    if($msg_ret) {$response{$msg_ret} = $response{'message'};}
	    return \%response;
	}
    }

    $cmd = $hashref->{'command'};
    if(! $cmd or $cmd  !~ /test|sync/i) {
	if(!$cmd) { $response{'message'} = "command is not set in argument hash table.";}
	else { $response{'message'} = "Unknown command \"$cmd\". Must be \"test\" or \"sync\".";}
	$response{'status'} = 0;
	if($status_ret) { $response{$status_ret} = $response{'status'};}
	if($msg_ret) {$response{$msg_ret} = $response{'message'};}
	return \%response;	
    }

    if($hashref->{'addresses'}) { $addresses = $hashref->{'addresses'}; }
    else { my @empty=(); $addresses = \@empty;}
    
    $who = untaintname($who);
    $dfile = "$::o{'spooldir'}/$who/address";
    $ncnt = $acnt = $icnt = 0;
    @newaddresses=(); @alladdresses = ();

    if($cmd =~ /^test$/i) {
	my ($cnt, $role, $mgp); 
	$cnt = &webcalSupport::doReadFile( "$dfile"); $cnt++;
	    
	for $href (@$addresses) {
	    my $in = &webcalSupport::addressInAddressbook(\@::addressbook, $href);
	    if($in) {  $href->{'in'} = $who; }
	}
	
	for $href (@::addressbook) {
	    my $in = &webcalSupport::addressInAddressbook($addresses, $href);
	    if(!$in and ! $href->{'outdated'})  {
		$ncnt++; push @newaddresses, &webcalSupport::copyTask($href);
	    }
	}

	for $href (@$addresses) { 
	    if( ! $href->{'in'} or  $href->{'in'} ne $who) {
		if(! $href->{'outdated'} ) {
		    $href->{'key'}=$cnt;
		    $cnt++; $icnt++;
		    push @::addressbook, &webcalSupport::copyTask($href);
		}
	    }
	}

	for $href (@::addressbook) { 	
	    if(!exists $href->{'outdated'}) {
		push @alladdresses, &webcalSupport::copyTask($href);
		$acnt++;
	    }
	}
	$response{'status'} = 1;
	$response{'message'} = "Test Mode: $icnt new entries to webcal, $ncnt new entries from webcal.\n\t\t There are $acnt entries in webcal addressbook.";
	$response{'newaddresses'} = \@newaddresses;
	$response{'alladdresses'} = \@alladdresses;
    } else { # dosync
	my $FILEVG = gensym;
	if(sysopen($FILEVG, "$dfile", O_WRONLY | O_CREAT)) {	
	    if(! &webcalLock::doflock( \*$FILEVG, LOCK_EX, "$dfile")) {
		$response{'status'} = 0;
		$response{'message'} = "Cannot lock file '$dfile': $!"; 
		if($status_ret) { $response{$status_ret} = $response{'status'};}
		if($msg_ret) {$response{$msg_ret} = $response{'message'};}
		return \%response;
	    }
	    $cnt = do "$dfile"; $cnt++;
	    
	    for $href (@$addresses) {
		my $in = &webcalSupport::addressInAddressbook(\@::addressbook, $href);
		if($in) {  $href->{'in'} = $who; }
	    }

	    truncate($FILEVG, 0);
	    print $FILEVG "\@::addressbook = (\n";
	    for $href (@::addressbook) {
		my $in = &webcalSupport::addressInAddressbook($addresses, $href);
		if(! $in and ! $href->{'outdated'} ){ $ncnt++; push @newaddresses, &webcalSupport::copyTask($href);}
		if(! $href->{'outdated'}) {
		    delete $href->{'in'} if  $href->{'in'};
		    $tmp = &webcalSupport::print1Address($href);
		    print $FILEVG $tmp;
		} 
	    }
	    for $href (@$addresses) { 
		if( ! $href->{'in'} or  $href->{'in'} ne $who) {
		    if(! $href->{'outdated'} ) {
			$href->{'key'}=$cnt;
			delete $href->{'in'} if  $href->{'in'};
			$cnt++;
			$tmp = &webcalSupport::print1Address($href);
			print $FILEVG $tmp;		    
			push @::addressbook, &webcalSupport::copyTask($href);
		    }
		} 
	    }
	    print $FILEVG ");\n$cnt;\n";
	    &webcalLock::doflock( \*$FILEVG, LOCK_UN,"$dfile");
	    close $FILEVG; 
	    
	    for $href (@::addressbook) { 	
		if(!exists $href->{'outdated'}) {
		    push @alladdresses, &webcalSupport::copyTask($href);
		    $acnt++;
		}
	    }
	    $response{'status'} = 1;
	    $response{'message'} = "Sync Mode: $icnt new entries to webcal, $ncnt new entries from webcal.\n\t\t There are $acnt entries in webcal addressbook.";
	    $response{'newaddresses'} = \@newaddresses;
	    $response{'alladdresses'} = \@alladdresses;
	} else {
	    $response{'status'} = 0;
	    $response{'message'} = "Cannot open \"$dfile\". $!";
	}
    }
    if($status_ret) { $response{$status_ret} = $response{'status'};}
    if($msg_ret) {$response{$msg_ret} = $response{'message'};}
    return \%response;
}
#====================================================================================================================
sub untaintname {
  my ($name, $err) = (@_);
  if ($name =~ /^([^\/]*)$/) {  $name = $1;}
  else { syncError("$err $name"); }
  return $name;
}
#====================================================================================================================
1;





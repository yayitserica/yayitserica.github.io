#!/usr/bin/perl -w
#
# $Header: /home/cvs/webCal/webCal2/webcal_cmd_server.pl,v 1.16 2003/09/25 20:10:23 mzou Exp $
#

use strict;
use webcalConfig;
use webcalVirtual;
use webcalSupport;
use webcalLock;
use Symbol;
use Fcntl ':flock';
use Fcntl ':DEFAULT';
use CGI;

my $webCalAddVersion="2.7";
my $patchlevel="0";
#use Carp ();
#local $SIG{__WARN__} = \&Carp::cluck;
#===========================================================================================================
# interface module for adding/getting entries to/from webcalendar on the command line. 
#
# Data transfer format:  vcalendar/vcard
#

&wcal_cmd(); exit(0);  

#===========================================================================================================
# wcal_command:
#
#   This routine has to be invoked via a (simulated) CGI POST. See webcal_add
#   for a working client.
#
#   Input: hash reference containing possibly the following 
#   
#   The CGI POST has to provide (* required, + optional) 
#        *) username  
#        *) password
#        +) calendar   -- calendar to sync with, if missing, default to username
#        *) command    -- add or get
#        *) datatype  --  appointment, todo, meeting, special, 
#                         event  (get all calendar entries except todos)
#                         events (get all calendar entries including todos)
#                         address, note, diary 
# --------------------------------------------------------------------------------------
#        +) file
#        +) data        -- one of these two required for the 'add' command.
#                       *) Events in  VCALENDAR format, or
#                       *) Address in VCARD format, or
#                       *) diary in VJOURNAL format (see below) 
#                       *) notes in VJOURNAL format (see below) 
# --------------------------------------------------------------------------------------
#                                
#        +) startdate
#        +) enddate    -- these two may be specified for the get command,
#                          to return data in the specified range. 
#                         Format:  m/d/y
#===========================================================================================================
#
# Format for diary and note:
#            BEGIN: VCALENDAR
#            BEGIN: VJOURNAL
#            DTSTART;VALUE=DATE:19970317
#            SUMMARY:     title
#            DESCRIPTION: content
#            END:VJOURNAL
#             ... 
#            END: VCALENDAR
#===========================================================================================================

sub wcal_cmd {
    my ($query, $tmp, $key, $username, $password, $command, $calendar, $sizelimit);
    my ($input_Filename, $input_File_Handle, $input_data)=(undef, undef, undef);

    my %input_info = ();
    my %request = ();
    my %response = ();
    my $response = undef;
    my $status = 0;

    &webcalVirtual::initVirtualServer();
    &webcalSupport::initVars;

    &webcalSupport::loadLangfile;

    if($::o{'dataSizeLimit'}) {	$sizelimit = $::o{'dataSizeLimit'}; } else { $sizelimit = 1000000; }

    $query = new CGI;    

    foreach $key (sort $query->param()) {
	next if ($key =~ /^\s*$/);
	next if ($query->param($key) =~ /^\s*$/);
	if($key =~ /^file$/i ) { ($input_Filename, $input_File_Handle) = getUFileInfo($query->param($key)); }
	else { $input_info{$key}= $query->param($key); }
    } 
    # authenticate
    if(!$input_info{'username'} or  !$input_info{'password'}) {
	&agError("Missing username or password, cannot authenticate.");
    }

    $request{'username'} = $username = $input_info{'username'};
    $::d{'remote_user'}  = $username;
    $request{'password'} = $password = $input_info{'password'};
    if($input_info{'calendar'}) { $request{'calendar'} = $calendar = $input_info{'calendar'};}
    else { $request{'calendar'} = $calendar = $username;}

    if(checkPassword($username, $password) == 0) { &agError("Invalid username or password.");} 
    
    if($input_info{'command'}) { $request{'command'} = $input_info{'command'};}
    else { $request{'command'} = 'get';}

    #==========================================================================================
    # create a new calendar. This is a hack... so you can create calendar on the command line
    if($request{'command'} =~ /^(setup)$/ ) {
	$::calinfo{'email'} = $input_info{'user_email'};
	$::calinfo{'w'} = $input_info{'user_calendarname'};
	$::calinfo{'name'} = $input_info{'user_realname'} if($input_info{'user_realname'});
	$::calinfo{'passwd'} = $input_info{'user_password'};
	$::calinfo{'rpasswd'} = $input_info{'user_password'};
	if(! $::calinfo{'w'} or ! $::calinfo{'email'} or ! $::calinfo{'passwd'} or
	   $::calinfo{'email'} !~ /.+\@.+/) {
	    my $err =<<END;
======================================================================
To setup a new calendar, you have to supply the following fields:

user_calendarname (alpha numerical without white spaces) 
user_email        (must be a valid email address)
user_password     (must not be empty)
======================================================================

END
    ;
	    &agError("$err");	    
	} else {
	    # pass control to  webcalSupport::setup
	    my ($status, $msg) = &webcalSupport::setup(1);
	    if($status == 0) {$response{'status'} = 'ERROR';} else { $response{'status'} = 'OK';}	    
	    $response{'message'} = $msg;
	    &response(\%response);	    
	}
	exit 0;
    }
    #==========================================================================================
    if($request{'command'} =~ /^(motd)$/ ) {    
	$::calinfo{'motdcmd'} = 'doit';
	$::calinfo{'nmotd'} = $input_info{'motd'};
	my ($status, $msg) = &webcalSupport::motd(1);
	if($status == 0) {$response{'status'} = 'ERROR';} else { $response{'status'} = 'OK';}	    
	$response{'message'} = $msg;
	&response(\%response);	    	
	exit 0;
    }
    #==========================================================================================
    
    $calendar = untaintname($calendar);
    my $infofile = "$::o{'spooldir'}/$calendar/info";
    if( ! -f "$infofile" ) { &agError("Calendar $calendar does not exist!");}    
    &webcalSupport::doReadFile("$infofile");

    #==========================================================================================
    if($request{'command'} =~ /remind/ ) {  
	&webcalSupport::getSetCurrentDateTime;
	if($request{'html'}) { $::calinfo{'html'} = 1;}
	&webcalSupport::reminders_only;
	exit 0;
    }
    #==========================================================================================
    if($request{'command'} !~ /^(add|get)$/i ) {
	&agError("Unknown command \"$request{'command'}\". Must be \"add\" or \"get\".");
    }

    if(!$input_info{'datatype'}) {
	&agError("Data type unspecified:  should be one of \"event|events|appointment|meeting|special|todo|diary|note\".");
    }
    $request{'datatype'} = $input_info{'datatype'};


    if(! &webcalSupport::isre($username, $calendar, 'editors') and ! &webcalSupport::isadmin($username)
       and ! &webcalSupport::isvgadmin($username,$calendar)) {
	&agError("Auth failed. You ($username) are not allowed to edit calendar $calendar");
    }
    
    # auth ok
    $response = undef;  
    if($request{'command'} =~ /^get$/i) { # get
	if($input_info{'startdate'}) { $request{'startdate'} = $input_info{'startdate'};}
	if($input_info{'enddate'}) { $request{'enddate'} = $input_info{'enddate'};}

	if($request{'datatype'} =~ /^(event|todo|appointment|meeting|special)/i ) { 
	    $response = &getEvent(\%request);

	    $response->{'content'} = &wcal2vcal($response->{'allevents'}, $calendar, "");
	    delete $response->{'allevents'};
	} elsif($request{'datatype'} =~ /^address/i) {
	    $response = &getAddress(\%request);
	    $response->{'content'} = &wcal2vcard($response->{'alladdresses'}, $calendar, "");	    
	    delete $response->{'alladdresses'};
	} elsif($request{'datatype'} =~ /^note/i) { 
	    $response = &getNote(\%request); 
	    $response->{'content'} = &wcal2vjournal($response->{'allnotes'}, $calendar, "");	    
	    delete $response->{'allnotes'};
	} elsif($request{'datatype'} =~ /^diary/i) {
	    $response = &getDiary(\%request);
	    $response->{'content'} = &wcal2vjournal($response->{'alldiaries'}, $calendar, "");	    
	    delete $response->{'alldiaries'};
	} else {
	    &agError("Unknow datatype \"$request{'datatype'}\" request.");
	}
    } else { # add
	my $checkConflict = 0;
	if(! $input_info{'checkConflict'}) { 
	    if($::calinfo{'ol'} and $::calinfo{'ol'}>1) { $checkConflict = 2;}
	} elsif( $input_info{'checkConflict'} < 0) {
	    if($::calinfo{'ol'}) { $checkConflict=1;}
	} else { $checkConflict=1;}
	$::calinfo{'no_html_code'} = 1;
	$::calinfo{'aol'} = $checkConflict;

	my $meetinggroup = "";
	if($input_Filename) {
	    $input_data = readFile($input_Filename, $input_File_Handle, $sizelimit); 
	} elsif($input_info{'data'}) { 
	    $input_data = $input_info{'data'}; 
	    if($input_info{'smtgp'}) { $meetinggroup = $input_info{'smtgp'};}
	}
	if(!$input_data) { &agError("No data."); }
	if($request{'datatype'} =~ /^(event|todo|appointment|meeting|special)/i) {
	    if($::o{'dependency'} and $::calinfo{'dcs'}){
		$meetinggroup = $::calinfo{'dcs'} . ':' . $meetinggroup;
	    }
	    if(&webcalSupport::ismember($calendar, $::o{'corporate_calendar'})){$meetinggroup = "";}
	    if($meetinggroup) { 
		$::d{'megaCal'} ="";
		$::calinfo{'w'} = $calendar;
		$::calinfo{'smtgp'} = $meetinggroup;
		my $event_ary = &vcal2wcal($input_data, $calendar, $username);
		my($status, $msg) = &webcalSupport::importwork($calendar, $event_ary, 1);
		my %answer = ();
		$answer{'status'} = $status;
		$answer{'message'} = $msg;
		$response = \%answer;
	    } else {
		$request{'events'} = &vcal2wcal($input_data, $calendar, $username);
		$response = &addEvent(\%request);
	    }
	} elsif($request{'datatype'} =~ /^address/i) {
	    $request{'addresses'} = &vcard2wcal($input_data, $calendar, $username);	    
	    $response = &addAddress(\%request);	    
	} elsif($request{'datatype'} =~ /^note/i) {
	    $request{'notes'} = &vjournal2wcal($input_data, $calendar, $username);	    
	    $response = &addNote(\%request);	    
	} elsif($request{'datatype'} =~ /^diary/i) {
	    $request{'diaries'} = &vjournal2wcal($input_data, $calendar, $username);	    
	    $response = &addDiary(\%request);	    	    
	} else {
	    &agError("Unknow datatype \"$request{'datatype'}\" request.");
	}
    }
    for $key (keys %$response) { $response{$key} = $response->{$key};}
    $status = $response->{'status'};    

    # response
    if($status == 0) {$response{'status'} = 'ERROR';} else { $response{'status'} = 'OK';}
    &response(\%response);
}
#=======================================================================================================

sub addEvent {
    my ($hashref) = (@_);
    my($dfile, $ncnt, $acnt, $icnt, $href, $tmp, @newevents, @allevents, $who, $status_ret, $msg_ret);
    my($user, $password, %response, $cmd, $events, $matchkind, $kind, $etype, $cnt, $add, $toall);
    
    # auth
    $user = $hashref->{'username'};  $password = $hashref->{'password'};
    if($hashref->{'calendar'}) {$who = $hashref->{'calendar'};} else { $who = $user;}
    %response = ();
    if(checkPassword($user, $password)) {
	if(! &webcalSupport::isre($user, $who, 'editors') and ! &webcalSupport::isadmin($user) 
           and ! &webcalSupport::isvgadmin($user,$who)) {
	    $response{'message'} = "Auth failed. You ($user) are not allowed to edit calendar $who";
	    $response{'status'} = 0;
	    return \%response;
	}
    }
    if($hashref->{'events'}) { $events = $hashref->{'events'}; }
    else { my @empty=(); $events = \@empty;}

    &webcalSupport::get_moderated_calendars(); 
    
    $toall = &webcalSupport::ismember($who, $::o{'corporate_calendar'});
    my $length = scalar @$events;
    if($length <= 0) {
	$response{'message'} = "No events.";
	$response{'status'} = 0;
	return \%response;
    }

    $who = untaintname($who);
    $dfile = "$::o{'spooldir'}/$who/data";
    $ncnt = $acnt = $icnt = 0;
    $cnt = &webcalSupport::doReadFile("$dfile"); $cnt++;

    my $in_cked = 0;
    my $cmsg = "";
    if($::calinfo{'aol'} or ($::calinfo{'ol'} and $::calinfo{'ol'} > 1)) { # no overlapping events are allowed
	$in_cked = 1;
	for $href (@$events) {
	    my $in = &webcalSupport::eventInCalendar(\@::caldata, $href);
	    if($in) { $href->{'in'} = $who; }
	    else {
		$icnt++; 
		my ($da, $st, $du, $oc, $re);
		$da= $href->{'date'}; $st= $href->{'start'};
		if($href->{'duration'}){$du=$href->{'duration'};} else {$du=0;};
		if($href->{'occurs'}){$oc=$href->{'occurs'};} else {$oc="OneTime";};
		if($href->{'repeat'}) {$re=$href->{'repeat'};} else {$re=0;}
		my $timespec = "$da/$st:$du/$oc/$re";
		my $tmp = &webcalSupport::checkOverlap($timespec, "", $who, $::calinfo{'aol'}, $href->{'what'});
		if($tmp) { $cmsg .= "$tmp\n";}
	    }
	}
	if($cmsg) {
	    $response{'status'} = 0;
	    $response{'message'} = $cmsg;
	    return \%response;
	}
    }
    my $ii=0;
    my @vevents=();
    for $href (@$events) { 
	$href->{'author'} = "$who,doSync"; 
	if($toall) { 
	    if($href->{'seq'}) { $href->{'seq'} = "C" . $href->{'seq'};}
	    else {  $href->{'seq'} = "C" . time . "_$ii"; $ii++;}
	    delete $href->{'attendants'};
	}
    }
    my $FILEVG = gensym;
    if(sysopen($FILEVG, "$dfile", O_WRONLY | O_CREAT)) {	
	if(! &webcalLock::doflock( \*$FILEVG, LOCK_EX, "$dfile")) {
	    $response{'status'} = 0;
	    $response{'message'} = "Cannot lock file '$dfile': $!"; 
	    return \%response;
	}
	$cnt = do "$dfile"; $cnt++;
	
	if(! $in_cked) {
	    for $href (@$events) {
		my $in = &webcalSupport::eventInCalendar(\@::caldata, $href);
		if($in) {  $href->{'in'} = $who; } else { $icnt++; }
	    }
	}
	
	if($icnt) {
	    truncate($FILEVG, 0);
	    print $FILEVG "\@::caldata = (\n";
	    for $href (@::caldata) {
		$tmp = &webcalSupport::print1Entry($href);
		print $FILEVG $tmp;
	    }
	    for $href (@$events) { 
		if( ! $href->{'in'} or  $href->{'in'} ne $who) {
		    $href->{'key'}=$cnt; $cnt++;
		    if(! $href->{'end'}){
			my $enddate = &webcalSupport::findEndDateHref($href); 
			if($enddate) { $href->{'end'} = $enddate;}
		    }
		    $tmp = &webcalSupport::print1Entry($href);
		    print $FILEVG $tmp;		    
		    if($toall) { push @vevents, $href;}
		} 
	    }
	    print $FILEVG ");\n$cnt;\n";
	}
	&webcalLock::doflock( \*$FILEVG, LOCK_UN,"$dfile");
	close $FILEVG; 
	if($toall and $icnt) { &webcalSupport::insert_to_all(\@vevents, $who);}
	$response{'status'} = 1;
	$response{'message'} = "$icnt new events has been added to webcal.";
    } else {
	$response{'status'} = 0;
	$response{'message'} = "Cannot open \"$dfile\". $!";
    }
    return \%response;
}
#============================================================================
sub addAddress {
    my ($hashref) = (@_);
    my($dfile, $ncnt, $acnt, $icnt, $href, $tmp, @newaddresses, @alladdresses, $who);
    my($user, $password, %response, $cmd, $addresses, $cnt);

    # auth
    $user = $hashref->{'username'};  $password = $hashref->{'password'};
    if($href->{'calendar'}) {$who = $href->{'calendar'};} else { $who = $user;}
    %response = ();
    if(checkPassword($user, $password)) {
	if(! &webcalSupport::isre($user, $who, 'editors') and ! &webcalSupport::isadmin($user)
           and ! &webcalSupport::isvgadmin($user,$who)) {
	    $response{'message'} = "Auth failed. You ($user) are not allowed to edit calendar $who";
	    $response{'status'} = 0;
	    return \%response;
	}
    }

    if($hashref->{'addresses'}) { $addresses = $hashref->{'addresses'}; }
    else { my @empty=(); $addresses = \@empty;}

    my $length = scalar @$addresses;
    if($length <= 0) {
	$response{'message'} = "Input is empty.";
	$response{'status'} = 0;
	return \%response;
    }
    $who = untaintname($who);
    $dfile = "$::o{'spooldir'}/$who/address";
    $ncnt = $acnt = $icnt = 0;
    my $FILEVG = gensym;
    if(sysopen($FILEVG, "$dfile", O_WRONLY | O_CREAT)) {	
	if(! &webcalLock::doflock( \*$FILEVG, LOCK_EX, "$dfile")) {
	    $response{'status'} = 0;
	    $response{'message'} = "Cannot lock file '$dfile': $!"; 
	    return \%response;
	}
	$cnt = do "$dfile"; $cnt++;
	    
	for $href (@$addresses) {
	    my $in = &webcalSupport::addressInAddressbook(\@::addressbook, $href);
	    if($in) {  $href->{'in'} = $who; } else { $icnt++;}
	}
	if($icnt) {
	    truncate($FILEVG, 0);
	    print $FILEVG "\@::addressbook = (\n";
	    for $href (@::addressbook) {
		$tmp = &webcalSupport::print1Address($href);
		print $FILEVG $tmp;
	    }
	    for $href (@$addresses) { 
		if( ! $href->{'in'} or  $href->{'in'} ne $who) {
		    $href->{'key'}=$cnt; $cnt++;
		    delete $href->{'in'} if  $href->{'in'};
		    $tmp = &webcalSupport::print1Address($href);
		    print $FILEVG $tmp;		    
		}
	    }
	    print $FILEVG ");\n$cnt;\n";
	}
	&webcalLock::doflock( \*$FILEVG, LOCK_UN,"$dfile");
	close $FILEVG; 
	    
	$response{'status'} = 1;
	$response{'message'} = "$icnt new entries has been added to webcal addressbook.";
    } else {
	$response{'status'} = 0;
	$response{'message'} = "Cannot open \"$dfile\". $!";
    }
    return \%response;
}
#============================================================================
sub addNote {
    my ($hashref) = (@_);
    my($dfile, $href, $tmp, @allevents, $who, );
    my($user, $password, %response, $events);
    
    # auth
    $user = $hashref->{'username'};  $password = $hashref->{'password'};
    if($hashref->{'calendar'}) {$who = $hashref->{'calendar'};} else { $who = $user;}
    %response = ();
    if(checkPassword($user, $password)) {
	if(! &webcalSupport::isre($user, $who, 'editors') ) {
	    $response{'message'} = "Auth failed. You ($user) are not allowed to edit calendar $who";
	    $response{'status'} = 0;
	    return \%response;
	}
    }
    if($hashref->{'notes'}) { $events = $hashref->{'notes'}; }
    else { my @empty=(); $events = \@empty;}
    
    my $length = scalar @$events;
    if($length <= 0) {
	$response{'message'} = "No entries to add.";
	$response{'status'} = 0;
	return \%response;
    }

    $who = untaintname($who);
    $dfile = "$::o{'spooldir'}/$who/notes";
    if( ! -d "$dfile" and ! mkdir("$dfile",0711)) {
	$response{'message'} = "Can not make directory \"$dfile\".";
	$response{'status'} = 0;
	return \%response;	
    }
    my $time = time() - $length;
    $time = untaintname($time);
    my ($nameT, $nameC, $nameS, $total);
    $total = 0;
    
    for $href (@$events) { 
	$nameT = "$dfile/$time" . "-t"; $nameC = "$dfile/$time" . "-c"; $nameS = "$dfile/$time" . "-s";  $time++;
	my $ok = 0;
	if($href->{'summary'}) {
	    my $FILEA = gensym;
	    if(open($FILEA, ">$nameT")) { print $FILEA $href->{'summary'}; close $FILEA; $ok++;}
	}
	if($href->{'category'}) {
	    my $FILEB = gensym;
	    if(open($FILEB, ">$nameS")) { print $FILEB $href->{'category'}; close $FILEB; $ok++;}
	}
	my $FILEC = gensym;
	if(open($FILEC,  ">$nameC")) {
	    print $FILEC $href->{'content'}; 
	    if($href->{'misc'}) { print $FILEC "\n", $href->{'misc'};}
	    close $FILEC; $ok++;
	}
	if($ok) { $total++;}
    }
    if($total > 0) { $response{'status'} = 1; } else { $response{'status'} = 0;}
    $response{'message'} = "$total new entries.";
    return \%response;
}
#============================================================================
sub addDiary {
    my ($hashref) = (@_);
    my($dfile, $href, , @allevents, $who, );
    my($user, $password, %response, $events);
    
    # auth
    $user = $hashref->{'username'};  $password = $hashref->{'password'};
    if($hashref->{'calendar'}) {$who = $hashref->{'calendar'};} else { $who = $user;}
    %response = ();
    if(checkPassword($user, $password)) {
	if(! &webcalSupport::isre($user, $who, 'editors') ) {
	    $response{'message'} = "Auth failed. You ($user) are not allowed to edit calendar $who";
	    $response{'status'} = 0;
	    return \%response;
	}
    }
    if($hashref->{'diaries'}) { $events = $hashref->{'diaries'}; }
    else { my @empty=(); $events = \@empty;}
    
    my $length = scalar @$events;
    if($length <= 0) {
	$response{'message'} = "No entries to add.";
	$response{'status'} = 0;
	return \%response;
    }

    my $total = 0;    
    $who = untaintname($who);
    $dfile = "$::o{'spooldir'}/$who";
    for $href (@$events) {
	my $date = $href->{'date'};
	my ($mn, $dy, $yr) = split(/\//, $date);
	$mn -= 1; $dy += 0; $yr += 0; if($yr < 1900) { if($yr < 90) {$yr += 100;} $yr += 1900;}
	$yr = untaintname($yr); $mn = untaintname($mn); $dy = untaintname($dy);
	my $dir = "$dfile/$yr";
	my $subdir = "$dir/$mn";
	if( (! -d $dir and ! mkdir($dir, 0711)) or  (! -d $subdir and ! mkdir($subdir, 0711))) {
	    $response{'message'} = "Cannot create directories \"$dir\" or \"$subdir\".";
	    $response{'status'} = 0;
	    return \%response;
	}
	my $file = "$subdir/$dy";

	$::diaryContent="";
	if( -f $file) {  do $file; }
	my $dcontent = $::diaryContent;
	if($href->{'category'}) { $dcontent .= "$href->{'category'}\n";}
	if($href->{'summary'}) {  $dcontent .= "$href->{'summary'}\n";}
	$dcontent .= "\n $href->{'content'}\n";
	if( $href->{'misc'}) { $dcontent .= "\n$href->{'misc'}\n"};

	my $FILEVG = gensym;
	if(sysopen($FILEVG, "$file", O_WRONLY | O_CREAT)) {		
	    if(! &webcalLock::doflock( \*$FILEVG, LOCK_EX, "$file")) {
		$response{'status'} = 0;
		$response{'message'} = "Cannot lock file '$file': $!"; 
		return \%response;
	    }	    
	    truncate($FILEVG, 0);
	    print $FILEVG "\$::diaryContent=\'";
	    $dcontent =~ s/\\//g; $dcontent =~ s/\'/\\\'/g;	    
	    print $FILEVG $dcontent;
	    print $FILEVG "\';\n1;";	    
	    &webcalLock::doflock( \*$FILEVG, LOCK_UN,"$file");
	    close $FILEVG; 	    
	    $total++;
	}
    }

    if($total > 0) { $response{'status'} = 1; } else { $response{'status'} = 0;}
    $response{'message'} = "$total new entries.";
    return \%response;    
}
#============================================================================
sub getEvent {
    my ($hashref) = (@_);
    my($dfile, $ncnt, $acnt, $icnt, $href, $tmp, @newevents, @allevents, $who, $status_ret, $msg_ret);
    my($user, $password, %response, $cmd, $events, $matchkind, $kind, $etype, $cnt);
    my ($startdate, $enddate, $ckrange, $smn, $sdy, $syr, $emn, $edy, $eyr);

    # auth
    $user = $hashref->{'username'};
    $password = $hashref->{'password'};
    if($hashref->{'calendar'}) {$who = $hashref->{'calendar'};} else { $who = $user;}
    %response = ();
    if(checkPassword($user, $password)) {
	if(! &webcalSupport::isre($user, $who, 'editors') and ! &webcalSupport::isadmin($user)
           and ! &webcalSupport::isvgadmin($user,$who)) {
	    $response{'message'} = "Auth failed. You ($user) are not allowed to edit calendar $who";
	    $response{'status'} = 0;
	    return \%response;
	}
    }

    if($hashref->{'startdate'} and  $hashref->{'enddate'}) {
	($smn, $sdy, $syr) = split(/\//, $hashref->{'startdate'}); $smn -= 1; $sdy -= 1; $syr += 0;
	if($syr < 1900) { if($syr < 90) {$syr += 100;}  $syr += 1900;}
	($smn, $sdy, $syr) = &webcalSupport::canDate($smn, $sdy, $syr); $smn++;
	($emn, $edy, $eyr) = split(/\//, $hashref->{'enddate'}); $emn -= 1; $edy += 1; $eyr += 0;
	if($eyr < 1900) { if($eyr < 90) {$eyr += 100;} $eyr += 1900;}
	($emn, $edy, $eyr) = &webcalSupport::canDate($emn, $edy, $eyr); $emn++;
	$ckrange = 1;
    } else { $ckrange = 0;}
    
    $etype = 0; $matchkind = sub{ 1;};
    if(defined $hashref->{'datatype'}) {
	my $tmp = $hashref->{'datatype'};
	if($tmp =~ /^appointment/i) { $etype = 1;}
	elsif($tmp =~ /^meeting/i) { $etype = 3;}	
	elsif($tmp =~ /^special/i) { $etype = 4;}
	elsif($tmp =~ /^todo/i) { $etype = 2;}
	elsif($tmp =~ /^event$/i) { $etype = -2; }
	if($etype > 0) { $matchkind = sub{ my ($a, $b)=(@_); return $a == $b;}; }
	elsif($etype < 0) { $matchkind = sub{ my ($a,$b)=(@_); return $a !=  - $b;}; }
    }

    $who = untaintname($who);
    $dfile = "$::o{'spooldir'}/$who/data";
    $cnt = &webcalSupport::doReadFile( "$dfile");
    $acnt = 0;  @allevents = ();
    
    for $href (@::caldata) { 	
	$kind = $href->{'kind'};
	if(&$matchkind($kind, $etype) ) {
	    my $add = 1;
	    if($ckrange) {
		my ($m0, $d0, $y0) = split(/\//, $href->{'date'});
		my ($m1, $d1, $y1) = split(/\//, $href->{'end'});
		if( &webcalSupport::mdyAafterB($smn,$sdy,$syr, $m1, $d1, $y1) or
		    &webcalSupport::mdyAafterB($m0, $d0, $y0,$emn,$edy,$eyr) ) {  $add = 0; }
	    }
	    if($add) {
		push @allevents, &webcalSupport::copyTask($href);
		$acnt++;
	    }
	}
    }
    $response{'status'} = 1;
    $response{'message'} = " $acnt entries.";
    $response{'allevents'} = \@allevents;

    return \%response;
}

sub getAddress {
    my ($hashref) = (@_);
    my($dfile, $ncnt, $acnt, $icnt, $href, $tmp, @newaddresses, @alladdresses, $who, $status_ret, $msg_ret);
    my($user, $password, %response, $cmd, $addresses, $cnt);

    # auth
    $user = $hashref->{'username'};
    $password = $hashref->{'password'};
    if($hashref->{'calendar'}) {$who = $hashref->{'calendar'};} else { $who = $user;}
    %response = ();
    if(checkPassword($user, $password)) {
	if(! &webcalSupport::isre($user, $who, 'editors') and ! &webcalSupport::isadmin($user)
           and ! &webcalSupport::isvgadmin($user,$who)) {
	    $response{'message'} = "Auth failed. You ($user) are not allowed to edit calendar $who";
	    $response{'status'} = 0;
	    return \%response;
	}
    }
    $who = untaintname($who);
    $dfile = "$::o{'spooldir'}/$who/address";
    $acnt = 0; @newaddresses=();
    $cnt = &webcalSupport::doReadFile( "$dfile"); 
	    
    for $href (@::addressbook) { 	
	push @alladdresses, &webcalSupport::copyTask($href);
	$acnt++;
    }
    $response{'status'} = 1;
    $response{'message'} = "$acnt entries.";
    $response{'alladdresses'} = \@alladdresses;
    return \%response;
}


sub getNote {
    my ($hashref) = (@_);
    my($dfile, $ncnt, $acnt, $icnt, $href, $tmp, $who, $name, @allevents);
    my($user, $password, %response, $cmd, $addresses, $cnt);

    # auth
    $user = $hashref->{'username'};
    $password = $hashref->{'password'};
    if($hashref->{'calendar'}) {$who = $hashref->{'calendar'};} else { $who = $user;}
    %response = ();
    if(checkPassword($user, $password)) {
	if(! &webcalSupport::isre($user, $who, 'editors')) {
	    $response{'message'} = "Auth failed. You ($user) are not allowed to edit calendar $who";
	    $response{'status'} = 0;
	    return \%response;
	}
    }
    my $total = 0;
    @allevents = ();
    $who = untaintname($who);
    $dfile = "$::o{'spooldir'}/$who/notes";    
    my $DIR1= gensym;
    if(opendir($DIR1, "$dfile")) {
	my @allfiles = sort {$b cmp $a} grep(/\-t$/, readdir($DIR1));
	closedir($DIR1);	    

	local ($/) = (undef);
	foreach $name (@allfiles) {
	    $name  =~ s/\-t//g;
	    my ($nameT, $nameC, $nameS);
	    $nameT = "$dfile/$name" . "-t"; $nameC = "$dfile/$name" . "-c"; $nameS = "$dfile/$name" . "-s";
	    my ($title, $cat, $content) = ("", "", "");
	    my (@dt) = localtime($name);
	    my ($mn, $dy, $yr) = (1 + $dt[4], $dt[3], $dt[5] + 1900);
	    my $hash={};	    
	    $hash->{'date'} = sprintf "%02d/%02d/%04d", $mn, $dy, $yr;
	    my @z = gmtime(0+$name);
	    $hash->{'timestamp'} = sprintf "%4d%02d%02dT%02d%02d00Z", $z[5]+1900,$z[4]+1,$z[3],$z[2],$z[1];
	    my $FILEZ = gensym;
	    if(open($FILEZ, "<$nameC")) {
		binmode($FILEZ); my $t = <$FILEZ>;  $hash->{'description'} = $t; close $FILEZ;
	    }
	    my $FILEX = gensym;
	    if(open($FILEX, "<$nameT")) {
		binmode($FILEX);my $t = <$FILEX>;  $hash->{'summary'} = $t; close $FILEX;
	    }
	    my $FILEY = gensym;
	    if(open($FILEY, "<$nameS")) {
 		binmode($FILEY); my $t = <$FILEY>;  $hash->{'category'} = $t; close $FILEY;
	    }

	    push @allevents, $hash;
	    $total++;
	}
	$response{'message'} = "$total entries";
	$response{'status'} = 1;
	$response{'allnotes'} = \@allevents;
	return \%response;	
    } else {
	$response{'message'} = "Cannot open \"$dfile\"";
	$response{'status'} = 0;
	return \%response;	
    }
}

sub getDiary {
    my ($hashref) = (@_);
    my($dfile, $ncnt, $acnt, $icnt, $href, $tmp, @allevents, $who, $bgn_year, $end_year, $year, $i, $j);
    my($user, $password, %response);
    my ($startdate, $enddate, $ckrange, $smn, $sdy, $syr, $emn, $edy, $eyr);

    # auth
    $user = $hashref->{'username'};
    $password = $hashref->{'password'};
    if($hashref->{'calendar'}) {$who = $hashref->{'calendar'};} else { $who = $user;}
    %response = ();
    if(checkPassword($user, $password)) {
	if(! &webcalSupport::isre($user, $who, 'editors') ) {
	    $response{'message'} = "Auth failed. You ($user) are not allowed to edit calendar $who";
	    $response{'status'} = 0;
	    return \%response;
	}
    }

    if($hashref->{'startdate'} and  $hashref->{'enddate'}) {
	($smn, $sdy, $syr) = split(/\//, $hashref->{'startdate'}); $smn -= 1; $sdy -= 1; $syr += 0;
	if($syr < 1900) { if($syr < 90) {$syr += 100;} $syr += 1900;}
	($smn, $sdy, $syr) = &webcalSupport::canDate($smn, $sdy, $syr); $smn++;
	($emn, $edy, $eyr) = split(/\//, $hashref->{'enddate'}); $emn -= 1; $edy += 1; $eyr += 0;
	if($eyr < 1900) { if($eyr < 90) {$eyr += 100;} $eyr += 1900;}
	($emn, $edy, $eyr) = &webcalSupport::canDate($emn, $edy, $eyr); $emn++;
	$ckrange = 1;
	$bgn_year = $syr; $end_year = $eyr;
    } else { 
	$ckrange = 0;
	$bgn_year = $end_year = 1900 + (localtime(time))[5];
    }
    
    my $total = 0;
    @allevents = ();
    $who = untaintname($who);
    for($year = $bgn_year; $year <= $end_year; $year++)  {
	my $dir = "$::o{'spooldir'}/$who/" . untaintname($year);
	if( -d "$dir") {
	    for($i = 0; $i <= 11; $i++) {
		my $subdir = "$dir/" . untaintname($i);
		if( -d "$subdir") {
		    for($j = 1; $j <= 31; $j++) { 
			my $file = "$subdir/" . untaintname($j);
			my $doit = 1;
			if($ckrange) {
			    if(&webcalSupport::mdyAafterB($smn,$sdy,$syr, 1+$i, $j, $year) or
			       &webcalSupport::mdyAafterB(1+$i, $j, $year, $emn,$edy,$eyr)) { $doit = 0;}
			}
			if($doit and -f "$file") {
			    local($/) = (undef);
			    my $hash = {};
			    $hash->{'date'} = sprintf "%02d/%02d/%04d", 1+$i, $j, $year;
			    my $FILED = gensym;
			    if(open($FILED, "<$file")) {
				binmode($FILED);
				my $t = <$FILED>; 
				close $FILED;
				$hash->{'description'} = $t;
			    }
			    push @allevents, $hash;
			    $total++;
			} 
		    }
		}
	    }
	}
    }
    $response{'status'} = 1;
    $response{'message'} = " $total entries.";
    $response{'alldiaries'} = \@allevents;
    return \%response;    
}
#============================================================================
sub vcal2wcal {
    my($data, $calendar, $author) = (@_);
    my @events = &webcalSupport::parseVcal($calendar, $data);
    return \@events;
}
sub vcard2wcal {
    my($data, $calendar, $author) = (@_);
    my @entries = &webcalSupport::parseVCard($calendar,$data);
    return \@entries;
} 
sub vjournal2wcal {
    my($data, $calendar, $author) = (@_);
    my @entries = &webcalSupport::parseVjournal($calendar,$data);
    return \@entries;
} 
#============================================================================
sub wcal2vcal {
    my($events, $calendar, $author) = (@_);
    my($href, $vcal, $tmp);
    $vcal = "";
    for $href (@$events) {
	$tmp = &webcalSupport::toVcal($href, $calendar, 4); 
	$vcal .= $tmp;
	$vcal .= "\n";
    }
    if($vcal) {
	$tmp = "BEGIN:VCALENDAR\r\n";
	$tmp .= "PRODID:-//WebCalendar $webcalSupport::VERSION//EN\r\nVERSION:1.0\r\n";
	$vcal .= "END:VCALENDAR\r\n";
	
	return $tmp . $vcal;
    }
    return "";
}
sub wcal2vcard {
    my($entries, $calendar, $author) = (@_);
    my($href, $vcard, $tmp);
    $vcard = "";
    for $href (@$entries) {
	$tmp = &webcalSupport::toVCard($href, $calendar, 4);
	$vcard .= $tmp;
	$vcard .= "\n";
    }
    $vcard;    
} 
sub wcal2vjournal {
    my($entries, $calendar, $author) = (@_);
    my($href, $vjournal, $tmp);
    $vjournal = "";
    for $href (@$entries) {
	$tmp = &webcalSupport::toVjournal($href, $calendar, 4);
	$vjournal .= $tmp;
	$vjournal .= "\r\n";
    }
    if($vjournal) {
	$tmp = "BEGIN:VCALENDAR\r\n";
	$tmp .= "PRODID:-//WebCalendar $webcalSupport::VERSION//EN\r\nVERSION:1.0\r\n";
	$vjournal .= "END:VCALENDAR\r\n";
	return $tmp . $vjournal;    
    }
    return "";
} 
#============================================================================
sub response {
    my ($href) = (@_);
    print "Content-type: text/plain\n\n";    
    select((select(STDOUT), $| = 1)[0]);
    my ($k, $v, $bgn, $end);

    for $k (keys %$href) {
	$v = $href->{$k};
	$bgn = "==_begin_response_" . $k . "==\n";
	$end = "==_end_response_" . $k . "==\n";
	print $bgn, $v, "\n", $end;
    }
    exit 0;
}
#============================================================================
sub agError {
    my ($msg) = (@_);
    my %response=();
    $response{'status'} = 'ERROR';
    $response{'message'} = <<END;
There is an error processing your request.
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
	&agError("Filename problem: $v is not properly formatted");
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
	    &agError("File \"$Filename\" is to big."); 
	} elsif($BytesRead == 0) {
	    if( -f $file) { unlink $file;}
	    &agError("File \"$Filename\" is empty."); 
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
#============================================================================================================
sub untaintname {
  my ($name, $err) = (@_);
  if ($name =~ /^([^\/]*)$/) {  $name = $1;}
  else {  agError("$err $name"); }
  return $name;
}
#============================================================================================================





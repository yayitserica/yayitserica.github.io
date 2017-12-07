#!/usr/bin/perl -w
#
# $Header: /home/cvs/webCal/webCal2/webcal_cmd.pl,v 1.16 2003/06/27 20:09:05 mzou Exp $
#

use strict;
use LWP;
use HTTP::Request::Common;
use Getopt::Long;
use Time::Local;

#---------------------------------------------------------------------------------------------
#
# This file implement a few webcal commands for the command line. 
#
# This script performs a CGI FORM Post. You need LWP module to run it. 
#
#  See webcal_cmd_server.pl for additional information 
#
#---------------------------------------------------------------------------------------------

if(1) {
    # calendar_server_url
    #
    # my $calendar_server = "http://192.168.7.1/a/webcal_add_server.pl";
    #
    my $calendar_server = "";
    #
    #
    my $username = '';
    my $password = '';
    my $file = ''; 
    my $calendar = '';
    my $help = '';
    my $startdate="";
    my $enddate="";
    my $command = '';
    my $datatype = 'events';
    my $user_calendarname="";
    my $user_email="";
    my $user_password="";
    my $user_realname="";
    my $outputfile="";
    my $inputdata="";
    my $detail = 0;
    my $add = 0;
    my $meetinggroup = "";
    my $ckconflict= -1; # use default

    $::my_ansi_color="b";

#---------------------------------------------------------------------------------------------
    my $RCFILE = "$ENV{'HOME'}/.webcalrc";
    if( -f $RCFILE and open(FILERC, "<$RCFILE")) {
	my($k, $v);
	while(<FILERC>) {
	    chop; next if not $_ or /^\s+$/;
	    ($k,$v) = split(/:/, $_, 2);
	    $k=~ s/^\s+//g; $k=~ s/\s+$//g;	$v=~ s/^\s+//g; $v=~ s/\s+$//g;
	    if($k =~ /server/i) { $calendar_server = $v;}
	    elsif($k =~ /^user/i) { $username = $v;}
	    elsif($k =~ /^pass/i) { $password = $v;}
	    elsif($k =~ /^cal/i) { $calendar = $v;}
	}
	close FILERC;
    }
#---------------------------------------------------------------------------------------------
    GetOptions('username=s' => \$username,     'u=s' => \$username, 
	       'password=s' => \$password,     'p=s' => \$password, 
	       'calendar=s'=>\$calendar,       'cal=s'=>\$calendar,
	       'command=s'=>\$command,         'cmd=s'=>\$command,   'c=s'=>\$command,
	       'help'=>\$help,                 'h'=>\$help,
	       'startdate=s'=>\$startdate,     'start=s'=>\$startdate,
	       'enddate=s'=>\$enddate,         'end=s'=>\$enddate,
	       'type=s'=>\$datatype,           't=s'=>\$datatype, 
	       'file=s' => \$file,             'f=s' => \$file,
	       'server=s'=>\$calendar_server,  's=s'=>\$calendar_server,
	       'outfile=s'=>\$outputfile,      'o=s'=>\$outputfile, 
	       'detail'=>\$detail,             'd'=>\$detail,
	       'add'=>\$add,                   'a'=>\$add,
	       'checkconflict=s'=>\$ckconflict,'conflict=s'=>\$ckconflict,
	       # these are for creating new calendars 
	       'user_email=s'=>\$user_email,             'u_email=s'=>\$user_email,
	       'user_calendar=s'=>\$user_calendarname,   'u_cal=s'=>\$user_calendarname,
	       'user_realname=s'=>\$user_realname,       'u_name=s'=>\$user_realname,
	       'user_password=s'=>\$user_password,       'u_pswd=s'=>\$user_password
	       );
#---------------------------------------------------------------------------------------------
    if($help) {
	print STDERR "\nUsage:\n";
	print STDERR  "$0 -username USERNAME -password PASSWORD \n";
	print STDERR  "\t -server URI_OF_YOUR_WEBCAL_CMD_SERVER\n";
	print STDERR  "\t -command [ add | get | setup | motd ]\n";
	print STDERR  "\t [ -calendar CALENDAR_NAME ]\n";
	print STDERR  "\t [ -file PATH_OF_V_FILE ]\n";
	print STDERR  "\t [ -o OUTPUTFILE ]\n";
	print STDERR  "\t [ -type [ event|todo|appointment|meeting|special|note|diary ] ]\n";
	print STDERR  "\t [ -startdate  MM/DD/YY ]\n";
	print STDERR  "\t [ -enddate  MM/DD/YY ]\n";
	print STDERR  "\t [ -conflict [0|1] ]\n";
	print STDERR  "\t [ -help | -h ] \n";
	exit 0;
    }

    while( !$calendar_server or $calendar_server !~ /^http/i ) {
	print STDERR  "Enter URL of your webcal_cmd_server: "; chop($calendar_server=<>);
    }

    if( !$username ) { 
	print STDERR  "Enter username: ";    chop($username = <>); 
    }
    if( !$password)  {
	print  STDERR  "Enter password: ";
	if($ !~ m/MSWin|NT/i) {`stty -echo`;}
	chop($password = <>);
	if($ !~ m/MSWin|NT/i) {`stty echo`;}
	print "\n";
    }   

    if($add) { $command = 'add';}
    if(!$command) { $command = 'get';}

    if($datatype ne 'events') {
	if($datatype =~ /^e/) {$datatype='event';}
	elsif($datatype =~ /^t/) {$datatype='todo';}
	elsif($datatype =~ /^a/) {$datatype='appointment';}
	elsif($datatype =~ /^m/) {$datatype='meeting';}
	elsif($datatype =~ /^s/) {$datatype='special';}
	elsif($datatype =~ /^n/) {$datatype='note';}
	elsif($datatype =~ /^d/) {$datatype='diary';}
    }

    if( !$file  and $command  =~ /^add$/i ) {
	($inputdata, $meetinggroup) = &get_user_input($datatype, $detail);
	#print STDERR  "Enter the pathname of a vCalendar/vCard file: ";  chop($file = <>); 
    }

#---------------------------------------------------------------------------------------------
#
# build post request content
#
    my $postcontent = [ username        => $username,
			password        => $password,
			command         => $command,
			datatype        => $datatype,
			calendar        => $calendar,
			];

#---------------------------------------------------------------------------------------------
    if($command =~ /^setup/i) {
	while(! $user_calendarname or $user_calendarname !~ /^[\w|\.|\-|=]+$/) {
	    if($user_calendarname) { print STDERR "\"$user_calendarname\" is not valid\n";}
	    prompt("Enter new calendar name"); chop($user_calendarname=<>);	
	}
	push (@$postcontent, 'user_calendarname' => "$user_calendarname");    
	while(! $user_email or $user_email !~ /.+\@.+/) {    
	    if($user_email) { print STDERR "\"$user_email\" is not a valid email address\n";}
	    prompt("Enter email address"); chop($user_email=<>);	
	}
	push (@$postcontent, 'user_email' => "$user_email");    
	if(! $user_realname) {    
	    prompt("Enter real name"); chop($user_realname=<>);	
	}
	if($user_realname) { push (@$postcontent, 'user_realname' => "$user_realname"); }
	while(! $user_password) {    
	    prompt("Enter password"); chop($user_password=<>);	
	}
	push (@$postcontent, 'user_password' => "$user_password"); 
    } elsif($command =~ /^motd/i) {
	my $motd;
	prompt("Enter a SHORT message"); chop($motd=<>);	
	push (@$postcontent, 'motd' => "$motd"); 
    }

#---------------------------------------------------------------------------------------------
    if($startdate or $enddate) {
	if(!$startdate) { $startdate = $enddate;}
	if(!$enddate) {
	    my @dt = localtime(time);
	    $enddate = sprintf "%02d/%02d/%04d", 1+$dt[4], $dt[3], $dt[5] + 1900;
	}
	push (@$postcontent, 'startdate' => "$startdate");
	push (@$postcontent, 'enddate' => "$enddate");
    }
    if($file) { 
	push @$postcontent, file => [ $file, Content_Type => 'text/plain'];
    } elsif($inputdata) { 
	push (@$postcontent, 'data' => "$inputdata"); 
	if($meetinggroup) { push (@$postcontent, 'smtgp' => "$meetinggroup");  }
    }
    push (@$postcontent, 'checkConflict' => "$ckconflict"); 
#---------------------------------------------------------------------------------------------
# Now post the form
#
    my $ua = LWP::UserAgent->new;
    my $request = POST( $calendar_server,
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
    while(/==_begin_response_([^=]+)==\n/) {
	$name = $1;
	$_=$';
	if(/==_end_response_$name==\n/) {
	    $hash{$name} = $`;
	    $_ = $';
	} else {
	    die "Ill formed response";
	}
    }

    print STDERR "============== BEGIN ===============\n";
    if($hash{'status'}) { print STDERR "==Status:  $hash{'status'}\n";}
    if($hash{'message'}){ print STDERR "==Message: $hash{'message'}\n";}
    for $key (keys %hash) { 
	if( $key !~ /^(status|message|content)$/) {
	    print "==$key: $hash{$key}\n";
	}
    }
    print STDERR "==============  END  ===============\n";

    if( $hash{'content'}) {
	if($outputfile) {
	    if(open(OUTF, ">$outputfile")) { print OUTF "\n", $hash{'content'}, "\n"; close OUTF;}
	    else { print STDERR "\n\nCannot write to \"$outputfile\" $!\n\n";}	    
	} else {
	    print STDOUT "\n",  $hash{'content'}, "\n";
	}
    }
}

#=============================================================================================
#
#  Get Event info from the command line
#
#=============================================================================================
sub get_user_input {
    my ($type, $detail) = (@_);
    my ($eType, $cat, $date, $time, $tstamp, $dtstart, $dtend, $tmp);
    my ($summary, $description, $smtgp) = ("", "", "");
    my $data = "";
    my $now = time;
    my @now = localtime($now);
    my ($seco, $minu, $hour) = ($now[0], $now[1], $now[2]);
    my ($day, $month, $year) = ($now[3], 1+$now[4], 1900+$now[5]);
    $date = sprintf "%02d/%02d/%04d", $month, $day, $year;
    $time = sprintf "%02d:%02d:%02d", $hour, $minu, $seco;
    $tstamp = sprintf "%04d%02d%02dT%02d%02d%02d", $year,$month,$day,$hour,$minu,$seco;

    if($type =~ /event|appointment|todo|meeting|special/) {
	if($type =~ /todo/) { $eType="VTODO";}
	else {
	    $eType = "VEVENT";
	    if($type =~ /appoint/) { $cat = "APPOINTMENT";}
	    elsif($type =~ /meet/) { $cat = "MEETING";}	    
	    else { $cat = "SPECIAL OCCASION";}
	}
	$date = get_dt("Start Date", $date); 
	$time = get_dt("Start Time", $time);
	$dtstart = format_dt($date,$time);
	my ($enddate, $endtime) = &format_date_time($date,$time, "-1h", 1);
	$enddate = get_dt("End Date", $enddate);
	$endtime = get_dt("End Time", $endtime);
	$dtend = format_dt($enddate,$endtime);
	$summary = get_line("Event Title");
	$summary = "SUMMARY: $summary";
	$description = get_text("Event Detail");
	$description = "DESCRIPTION: $description";
	my ($alarms, $misc) = ("", "");
	my ($ta);
	my @malarms = get_alarm("Email  Reminder (as 5m, 2h or 1d)", $date,$time);
	foreach $ta (@malarms) { if($ta) {$alarms .= "MALARM:$ta; ; ;\n";}}
	if($detail) {
	    my @aalarms = get_alarm("Audio  Reminder (as 5m, 2h or 1d)", $date, $time);
	    foreach $ta (@aalarms) { if($ta){ $alarms .= "AALARM:$ta; ; ;\n";}}
	    my @dalarms = get_alarm("Visual Reminder (as 5m, 2h or 1d)", $date, $time);
	    foreach $ta (@dalarms) { if($ta){ $alarms .= "DALARM:$ta; ; ;\n";}}
	    $smtgp = get_line("Meeting Group");  
	    $tmp = get_line("Category");       if($tmp) {$misc .= "CATEGORIES:$tmp\n";}
	    $tmp = get_line("Location");       if($tmp) {$misc .= "LOCATION:$tmp\n";}
	    $tmp = get_line("Speaker");        if($tmp) {$misc .= "X-SPEAKER:$tmp\n";}
	    $tmp = get_line("Contact Person"); if($tmp) {$misc .= "X-CONTACT-PERSON:$tmp\n";}
	    $tmp = get_line("Contact Email");  if($tmp) {$misc .= "X-CONTACT-EMAIL:$tmp\n";}
	    $tmp = get_line("URL");            if($tmp) {$misc .= "URL:$tmp\n";}
	    &help_vrule;
	    $tmp = get_line("Recurring Rule"); if($tmp) {$misc .= "VRULE:$tmp\n";}	    
	}
	$data= <<EOF;
BEGIN:VCALENDAR
PRODID:-//WebCalendar Command line input//EN
VERSION:1.0
BEGIN:$eType
DTSTART$dtstart
DTEND$dtend
$summary
$description
$alarms${misc}TIMESTAMP:$tstamp
END:$eType
END:VCALENDAR
EOF
    ;
    #
    } elsif($type =~ /note|diary/) {
	my $category = "";
	$eType = "VJOURNAL";	
	$date = get_dt("Event Date", $date); 
	$dtstart = format_dt($date,"");
	if($type =~ /note/) {
	    $category = get_line("Category");
	    if($category) { $category = "CATEGORIES: $category\n";}
	    $summary = get_line("Title"); if($summary){ $summary = "SUMMARY: $summary\n";}
	    $description = get_text("Description");
	} else {
	    $description = get_text("Diary Content");
	} 
	$description = "DESCRIPTION: $description";
	$data = <<EOF;
BEGIN:VCALENDAR
PRODID:-//WebCalendar Command line input//EN
VERSION:1.0
BEGIN:$eType
DTSTART$dtstart
$category${summary}TIMESTAMP:$tstamp
$description
END:$eType
END:VCALENDAR
EOF
    ;
    } else {
        print STDERR "\n";
	print STDERR "Unknown event type \"$type\". Must be one of\n";
	print STDERR "event|appointment|todo|meeting|special|note|diary\n";
	print STDERR "\n";
	exit 1;
    }
  return ($data, $smtgp);
}
#=============================================================================================
sub help_vrule {
    print STDERR <<EOF;
-------------- Recurring Rules ---------------
  D1  #5        Daily for 5 times
  D3  #4        Every 3rd day for 4 times
  W1  #2        Weekly for 2 times
  W2  #3        Biweekly for 3 times
  MD9 #6        The 9th day of the month for 6 times
  W1 MoWeFr #5  MWF for 5 weeks
  W1 TuTh #4    TTh for 4 weeks
----------------------------------------------
EOF
}
sub get_dt {
    my ($prompt, $default) = (@_);
    prompt("$prompt ($default)");
    my $tmp; chop($tmp=<>);
    return $tmp if $tmp =~ /\d/;
    $default;
}
sub get_line {
    my ($prompt) = (@_);
    prompt("$prompt");
    my $tmp; chop($tmp=<>);
    $tmp;
}
sub get_text {
    my ($prompt) = (@_);
    prompt("$prompt (^D to end)");
    my $tmp = "";
    while(<>) {
	s/\n/=0D=0A=\n/;
	$tmp .= $_;
    }
    print STDERR "\n";
    $tmp =~ s/=0D=0A\n$/\n/;
    return $tmp;
}
sub prompt {
    my ($txt) = (@_);
    my ($len, $aa);
    $len = length($txt);
    if($len < 25) { $aa = '=' x (25-$len);} else {$aa="";}
    if($ !~ m/MSWin|NT/i) {
	if($::my_ansi_color eq 'b') { print STDERR "[41;32m", "$txt $aa:", "[m "; $::my_ansi_color='r';}
	else { print STDERR "[44;33m", "$txt $aa:", "[m "; $::my_ansi_color='b';}
    } else { print STDERR "$txt $aa: ";}
}
#44--38

sub format_dt {
    my($date, $time) = (@_); 
    my($mt, $dy, $yr, $hr, $mn, $se);
    ($mt, $dy, $yr) = split(/\//, $date); if($yr < 100) { if($yr<90) {$yr +=100;} $yr+=1900;}
    if(! ($mt >=1 and $mt <=12 and $dy >=1 and $dy <=31 and $yr >1900 and $yr<2100)) {
	print STDERR "\nBad date specification: \"$date\"\n\nBye\n\n";
	exit 1;
    }
    if($time) {
	($hr, $mn, $se) = split(/:/, $time);
	$mn = 0 if not $mn; $se =0 if not $se;
	if(! ($hr >=0 and $hr < 24 and $mn >=0 & $mn <60 and $se >=0 and $se <=60)) {
	    print STDERR "\nBad time specification: \"$time\"\n\nBye\n\n";
	    exit 1;	    
	}
	my $a=sprintf ":%04d%02d%02dT%02d%02d%02d", 0+$yr, 0+$mt, 0+$dy, 0+$hr, 0+$mn, 0+$se;
	return $a;
    } else {
	my $a=sprintf ";VALUE=DATE:%04d%02d%02d", 0+$yr, 0+$mt, 0+$dy;	
	return $a;
    }
}
sub get_alarm {
    my ($prompt, $date, $time) = (@_);
    my $alarm = get_line($prompt);
    if(!$alarm or $alarm !~ /\d+/) { return "";}
    my @list = split(/[ ,;]+/, $alarm);
    my ($a,$b,@ret); @ret=();
    foreach $a (@list) {
	$b = &format_date_time($date,$time,$a, 0);
	if($b){ push @ret, $b;}
    }
    return @ret;
}
sub format_date_time {
    my ($date, $time, $alarm,$rtype) = (@_);
    my ($q,$u,$sec,$min,$hours,$mday,$mon,$year, $then, $delta, $jnk, $ok);
    $ok=0;
    if($alarm =~ /(\-?\d+)\s*(m|h|d)/i) {	$q = 0+$1; $u = $2; $ok=1;}
    elsif($alarm =~ /(\d+)/i) {	$q = 0+$1; $u = 'm'; $ok=1;}
    if($ok) {
	if($u eq 'm'){$delta=60;}elsif($u eq 'h'){ $delta=3600;}elsif($u eq 'd'){ $delta=86400;}
	$delta *= $q;
	($hours,$min,$sec) = split(/:/, $time);
	$min = 0 if not $min; $sec =0 if not $sec;
	($mon,$mday,$year) = split(/\//, $date); 
	if($year < 1900){ if($year < 50) {$year += 100;} $year += 1900;}
	$mon -= 1; $year -= 1900; 

	$then = timelocal($sec,$min,$hours,$mday,$mon,$year) - $delta;
	($sec,$min,$hours,$mday,$mon,$year,$jnk,$jnk,$jnk)=localtime($then);
	if($rtype) {
	    my $a= sprintf("%02d/%02d/%04d",1+$mon, $mday, $year+1900);
	    my $b = sprintf("%02d:%02d:%02d",$hours,$min,$sec);
	    return( ($a,$b));
	} else {
	    my $r= sprintf "%04d%02d%02dT%02d%02d%02d", $year+1900,$mon+1,$mday,$hours,$min,$sec;
	    return $r;
	}
    }
    return undef;
}

#===================================================================================

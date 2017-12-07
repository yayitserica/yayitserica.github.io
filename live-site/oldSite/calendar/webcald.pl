#!/usr/bin/perl
#
#
# $Header: /home/cvs/webCal/webCal2/webcald.pl,v 1.96 2005/02/18 21:41:54 mzou Exp $
#

#==============================================================================
#
#            webcal --- a web based calendar program
#
#          Copyright (C) 2000, 2001, 2002, 2003, 2004  Maorong Zou
#
#
#  This file is part of webcal.
#
#  webcal is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2, or (at your option)
# any later version.
#
# webcal is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with webcal; see the file COPYING.  If not, write to
# the Free Software Foundation, 675 Mass Ave, Cambridge, MA 02139, USA. 
#
#==============================================================================
use strict;
use webcalConfig;
use webcalVirtual;
use webcalSupport 2.9;
use smtplib;
use Fcntl ':flock';
use Fcntl ':DEFAULT';
use POSIX;
use Carp;

#local $SIG{__WARN__} = \&Carp::cluck;
#=====================================================================================================
if(defined $ENV{'SERVER_NAME'} or defined $ENV{'SCRIPT_NAME'} or
   defined $ENV{'QUERY_STRING'} or defined $ENV{'REQUEST_METHOD'}) {
    print "Content-Type: text/html\n\n";
    print "This script is not a CGI script. Bye!";
    exit 0;
}
#=====================================================================================================
my $webCaldVersion="2.9";
my $patchlevel="3";
#=====================================================================================================
# 
%::wcald_spooldirhash = ();  
%::wcald_servernamehash = ();  
%::last_run_marks=();
%::this_run_marks=();
@::wcald_narray=();
$::wcald_LOGFILE_HANDLE = \*STDOUT;
#
#
%::wcald_vars = (
                 'debug' => 0,
                 'daemonEmail' => "",
                 'refreshInterval' => 113,	# time between scans
                 'showDetail' => 0,
                 'forwardDays' => 0,
                 'workingDir' => "",
                 'lasthour'=>-1,
                 'thishour'=>0,
                 'foreground'=> 0,
                 'warn_if_more_than_me' => 100,
                 'do_summary_hour' => 1,
                 'logfile' =>"",
                 'rlockfile' => $webcalConfig::c{'tmpdir'} . "/wcald.lck",
                 'exlockfile' => $webcalConfig::c{'tmpdir'} . "/wcald.lxk",
                 'SENDMAIL'=> $webcalConfig::r{'sendmail'},
                 'smtpto' =>  $webcalConfig::r{'smtpto'},
                 'smtpfrom' =>  $webcalConfig::r{'smtpfrom'},
		 'one_mail_per_event' => 1,
                 );

#=====================================================================================================
if(1) { # cache all virtual server spool directories
    my ($k, $e, $s, $t, $server, $hash, $servername, $sn);
    $k = $webcalConfig::c{'spooldir'};
    $e = $webcalConfig::c{'daemonEmail'};
    $servername = $webcalConfig::c{'servername'};
    $::wcald_spooldirhash{$k} = $e;
    $::wcald_servernamehash{$k} = $servername;
    foreach $server (keys %webcalConfig::v) {
	$hash = $webcalConfig::v{$server};
	if($hash->{'spooldir'}) { $k = $hash->{'spooldir'};} else { $k = "";}
	if($hash->{'daemonEmail'}) { $e = $hash->{'daemonEmail'};} else { $e = $webcalConfig::c{'daemonEmail'};}
	if($hash->{'servername'}) { $sn = $hash->{'servername'};} else { $sn = $servername;} 
	if($k) {$::wcald_spooldirhash{$k} = $e;  $::wcald_servernamehash{$k} = $sn;  }
    }
}
#=====================================================================================================

if(1) {
    my ($arg, $pgmname, $cronjob);
    $pgmname=$0;
    $cronjob = 0;
    # ensure this program is running from the right directory
    if ( -f "./English.perl" ) {
	$::wcald_vars{'workingDir'}="./";
    } else {
	if ($pgmname !~ m/^\//) {
	    die "This program must run using its absolute path!";
	} else {
	    if($pgmname =~ m/(.+)(\/[^\/]+)$/) {
		$::wcald_vars{'workingDir'}=$1;
	    } 
	    if ( ! -f "$::wcald_vars{'workingDir'}/English.perl") {
		die "Cannot find \"English.perl\" in \"$::wcald_vars{'workingDir'}\"";
	    }
	}
    } 
    # parse args
    $arg = $ARGV[0];
    if(defined $arg and $arg eq '-cron') { # run as a cron job
	$cronjob = 1;
	shift(@ARGV);
	$_ = $ARGV[0];
	if(defined) {
	    if(/\d+/) {$::wcald_vars{'forwardDays'} = $_;} else {&Usage;}
	    shift(@ARGV);  
	    $_= $ARGV[0];
	    if(defined) {
		if(! /^\-/) {
		    s/[ ,\t]+/,/;
		    (@::wcald_narray) = split(/,/, $_);
		    shift(@ARGV);  
		}
	    }
	}
    }
    if( $ =~ m/MSWin|NT/i ) { $::wcald_vars{'foreground'}= 1;}

    while ($arg = $ARGV[0]) {
	my ($tmp);
	if ($arg eq "-h" || $arg eq '-?' || $arg eq '--help') { &Usage;}
	elsif ($arg eq "-fg" or $arg eq "-foreground") {
	    $::wcald_vars{'foreground'}= 1;
	}
	elsif ($arg =~ /^\-daemon/i) {
	    $::wcald_vars{'foreground'}= 0;
	}
	elsif ($arg =~ /^\-debug/i) {
	    $::wcald_vars{'debug'} = $ARGV[1]; 
            if(defined $::wcald_vars{'debug'} and $::wcald_vars{'debug'} =~ m/^\d+$/) {shift(@ARGV);}
	    else { $::wcald_vars{'debug'}=1;}
	}
	elsif ($arg eq "-v" or $arg eq "-version") {
	    print "wcald version $webCaldVersion, patchlevel $patchlevel\n";
	    exit 0;
	}
	elsif ($arg =~ /^\-interval/i) {
	    $tmp = $ARGV[1]; 
            if(defined $tmp and $tmp =~ m/^\d+$/) {
                if($tmp < 30) { $tmp = 30;}
                elsif($tmp > 600) { $tmp = 600;}
                $::wcald_vars{'refreshInterval'} = $tmp;
                shift(@ARGV);
            }
	}
	elsif ($arg =~ /^\-log/) {
	    $::wcald_vars{'logfile'}= $ARGV[1];
            if(defined $::wcald_vars{'logfile'} and $::wcald_vars{'logfile'} !~ /^\-/) {
                shift(@ARGV);
            } else { $::wcald_vars{'logfile'}= "";}
	}
	elsif ($arg =~ /^\-detail/) {
	    $::wcald_vars{'showDetail'} = 1;
	} 
	shift(@ARGV);
    }
    

    # if running as a cronjob, run once and exit 
    if($cronjob) { 
	&onePassCron(0);
	exit 0;
    } 

    if($::wcald_vars{'foreground'}== 0) {
	# fork off and become daemon
	# run as a daemon, wakeup every $interval seconds
	my ($i, $pid, $sess_id);
	if($pid = fork()) { # parent, exit
	    exit 0;
	} else { # child, detach and fork again 
	    croak "Cannot detach from controlling terminal" unless $sess_id = POSIX::setsid();
	    if ($pid = fork() ) { exit 0; }

            $SIG{INT}= 'sighandler';
            $SIG{QUIT}= 'sighandler';
            $SIG{STOP}= 'sighandler';

	    chdir $::wcald_vars{'workingDir'};
	    umask 022;
	    ## Close open file descriptors
	    foreach $i (0 .. OpenMax() ) { POSIX::close($i); }

	    ## Reopen stderr, stdout, stdin to /dev/null
	    open(STDIN,  "+>/dev/null");
	    open(STDOUT, "+>&STDIN");
	    open(STDERR, "+>&STDIN");

            # mutex, make sure we don't have two daemons running.
            open(LOCKFILE, ">$::wcald_vars{'rlockfile'}") or die("Cannot create lockfile '$::wcald_vars{'rlockfile'}'. $!");
            xflock(\*LOCKFILE, LOCK_EX, "$::wcald_vars{'rlockfile'}") or die("Cannot create lock file.  $!\n"); 
            
	    # the main loop
	    while(1) { 
		my($cpid, $starttime, $endtime);
		my $doit = 0;
		$::wcald_vars{'thishour'} = (localtime(time))[2];
		if($::wcald_vars{'thishour'} != $::wcald_vars{'lasthour'}) { $doit = 1; $::wcald_vars{'lasthour'}=$::wcald_vars{'thishour'};} # check it on the hour.
		$|=1;
                &refreshlock();
		if (defined($cpid = fork)) { 
		    if($cpid) { # parent, looping
			$starttime = time();
			waitpid($cpid, 0);
			$endtime = time(); 
			$endtime -= $starttime; 
			$endtime = $::wcald_vars{'refreshInterval'}-$endtime;
			if($endtime < 0) { $endtime = 0;}
			sleep $endtime;
		    } else { # child, do the work
			&onePass();
			&ckmailq();
			if($doit == 1) { # need to use time zone !
			    @::wcald_narray = ();
			    $::wcald_vars{'forwardDays'} = 1;
			    $::wcald_vars{'showDetail'} = 0;
			    onePassCron(1);
			}
			exit 0;
		    }
		} elsif ($! =~ /No more process/) {
		    die "Run out of processes ... $!";
		}
	    }
	}
    } else { # run as a normal process
        $|=1;
        print "Waiting for file lock ....";
        open(LOCKFILE, ">$::wcald_vars{'rlockfile'}");
        xflock(\*LOCKFILE, LOCK_EX, "$::wcald_vars{'rlockfile'}") or die("Cannot create lock file \'$::wcald_vars{'exlockfile'}\'.  $!\n");         
        print " Got it !\n";
        print LOCKFILE $$, "\n";
        $|=0;

        $SIG{INT}= 'sighandler';
        $SIG{QUIT}= 'sighandler';
        $SIG{STOP}= 'sighandler';

	while(1) { 
	    my($doit, $starttime, $endtime);
	    $doit = 0;
	    $::wcald_vars{'thishour'} = (localtime(time))[2];
	    if($::wcald_vars{'thishour'} != $::wcald_vars{'lasthour'}) { $doit = 1; $::wcald_vars{'lasthour'}=$::wcald_vars{'thishour'};} # check it on the hour.
	    $|=1;
            &refreshlock();
	    $starttime = time();
	    &onePass();
	    &ckmailq();
	    if($doit == 1) { # need to use time zone !
		@::wcald_narray = ();
		$::wcald_vars{'forwardDays'} = 1;
		$::wcald_vars{'showDetail'} = 0;
		onePassCron(1);
	    }
	    $endtime = time(); 
	    $endtime -= $starttime; 
	    $endtime = $::wcald_vars{'refreshInterval'}-$endtime;
	    if($endtime < 0) { $endtime = 0;}
	    sleep $endtime;
	}
    }
}
#==================================================================================================================
sub Usage {
    my ($name) = (@_);
    print "Usage: $name ",  '[ -h ] [ -debug  level] [ -fg ] [ -log logfile] [ -interval \#seconds]', "\n";
    print "  or   $name ",  '-cron  num_ndays  [calname,calname ...] [ -debug  level] [ -log logfile] [ -detail]', "\n";
    exit 0;
}
#==================================================================================================================
sub substImages {
    my ($in) = (@_);
    my $irepository = "$::o{'fimgdirurl'}/$::o{'uploadsubdir'}";
    $in =~ s/\\?\^o\^\/([^\s]+?)\.(gif|jpg|png|jpeg|bmp)/$irepository\/$1\.$2/ig;
    return $in;
}
#==================================================================================================================
sub getOneDayEvents {
  use integer;
  my ($date, $occurs, $repeat, $exception, $today, $i, $month, $day, $year, $kind, $tmp, $smp, $tim,
      $dmonth, $duration, $ehr, $emn,$utmp, $hr, $mn, $key, $who, $view,$edate, $junk, $href, $enddate,
      $nowM, $nowD, $nowY, $nowH, $nowN, $nowS, $warning, $endM, $endD, $endY, $detail);
  ($month, $day, $year) = (@_);
  $dmonth = $month + 1;	
  $today= "$dmonth/$day/$year";
  $who = $::calinfo{'w'};
  $nowM = $::now{'month'}; $nowD = $::now{'day'}; $nowY = $::now{'year'};
  $nowH = $::now{'hour'}; $nowN = $::now{'min'};  $nowS = $::now{'sec'}; 

  %::oneDayEvents=();
  {
    my ($hour, $min, $reminder, $mail,$mailu, $maili, $maily, $flash, $flashi, $flashu, $flashy,  $skip, $matched);
    $hour = $::now{'hour'};  $min = $::now{'min'}; 
    for $href (@::caldata) {
      next if $href->{'deleted'};
      my $overdue = 0;
      $skip = 0;
      if($href->{'repeat'}) { $repeat = 0+ $href->{'repeat'};} else {$repeat = 0;}
      $kind =  $href->{'kind'};
      $enddate = $href->{'end'};	    
      if($enddate) {
	($endM, $endD, $endY) = split(/\//, $enddate); $endM--;
	if($kind == 2 and $repeat < 2 and (!defined $href->{'done'} or  $href->{'done'} ne 'y' )
	   and (defined $href->{'forward'} and $href->{'forward'} eq 'y') and 
	   &webcalSupport::mdyAafterB($month,$day,$year, $endM, $endD, $endY)) {
	    $overdue = 1;
	} else {
	    $skip=($year > $endY? 1: ($year == $endY ? ($month > $endM ? 1 : ($month == $endM ? ($day > $endD ? 1: 0) : 0 )) : 0));
	}
      }
      next if $skip;
      next if $href->{'overdue'};

      $date = $href->{'date'};
      $tmp="";
      $occurs = $href->{'occurs'};
      $exception = $href->{'exception'};
      $matched = 0;
      if($kind == 2 or $kind == 4) { # todo event, 
	my ($done, $forward, $dm,$dd,$dy, $before);
	$done = $href->{'done'}; 
	if($done and $done eq 'y') { next;}  # do not display completed tasks
	if($repeat < 2) { # for nonrepeating tasks, check if we need to remind forward
	  $forward = $href->{'forward'};
	  if($forward and $forward eq 'y') {
	    ($dm, $dd, $dy) = split(/\//, $date);  $dm--;
	    $before = &webcalSupport::mdyAafterB($dm,$dd, $dy,$month,$day,$year);
	    if($before > 1) {
	      my($bdate, $bm, $bd, $by);
	      if( $href->{'bdate'}) {$bdate = $href->{'bdate'};} else {$bdate= $href->{'date'};}
	      ($bm, $bd, $by) = split(/\//, $bdate);  $bm--;
	      if(&webcalSupport::mdyAafterB($nowM,$nowD,$nowY, $bm, $bd, $by) and &webcalSupport::mdyAafterB($month,$day,$year,$nowM,$nowD,$nowY))
		{ $matched = 1; $reminder=":::";}
 	    } elsif($overdue) {
		$matched = 1; $reminder=":::";
		my ($tim, $shr, $smn, $datestr, $timestr);
		$tim = $href->{'start'};
		($shr,$smn)=split(/:/,$tim);
		$datestr = &webcalSupport::mdy_swstring($dm, $dd, $dy);
		$timestr = &webcalSupport::hm_string($shr,$smn);	
		$overdue = "$::phr{'Overdue'}: $datestr $timestr";
	    }
	  }
	}
      }
      if($matched or &webcalSupport::calmatch($today, $date, $occurs, $repeat, $exception)) {
        my $room="";
	$tim = $junk = $href->{'start'};
	$junk =~ s/:/\//g;
	$edate = "$month/$day/$year/$junk";
	$key = $href->{'key'};
	if($matched) {
	  $tim = "-:--:-:-:$kind:$key";
	} else {
	  $duration = $href->{'duration'};
	  ($hr,$mn)=split(/:/,$tim);
	  $utmp=$mn+$duration;
	  $ehr=$hr + int($utmp/60);
	  $emn = $utmp % 60; if($emn < 10) { $emn="0$emn";}
	  $tim .= ":$ehr:$emn:$kind:$key";
	}
	$smp = &webcalSupport::html_escape($href->{'what'},0);
	$smp =~ s/\n/ /g;
	if($overdue) {
	    $smp = "\n***** $overdue\n      $smp";
	} else {
	    $smp = "\n***** $smp";
	}

        if(defined $href->{'room'} and $href->{'room'} ne "") { 
	    $room .= "\n$::phr{'Location'}: " . $href->{'room'};
	}
	if(defined $href->{'pri'} and $href->{'pri'} ne "" ) {
	    $room .= "\n$::phr{'Priority'}: " . $href->{'pri'};
	}
	if($href->{'ctp'}) {
	    $room .= "\n$::phr{'ContactP'}: $href->{'ctp'}";
	}
	if($href->{'ctm'}) {
	    $room .= "\n$::phr{'ContactE'}: $href->{'ctm'}";
	}
        my ($cstatus, $accepted, $declined, $other)= 
            &webcalSupport::confirmMeeting($href, 0, 1);
        if($::wcald_vars{'showDetail'}) {
          $detail = "$::phr{'Details'}:" . &webcalSupport::html_escape($href->{'detail'},0);
          $detail =~  s/\n/ /g;
          $::oneDayEvents{"$tim"} = "$smp$room\n$detail\n$accepted\n$declined\n$other";
        } else {
          $::oneDayEvents{"$tim"} = "$smp$room\n$accepted\n$declined\n$other";
        }
	if($overdue) { $href->{'overdue'} = 1;}
      }
    }
  }
}

sub findEmailAddr {
  my ($tmp, $dir, $addr);
  $dir=(@_)[0];
  $addr = "";
  if( -d "$dir" and -f "$dir/info") {
    if(open(FILE, "<$dir/info")) {
      doflock(\*FILE, LOCK_SH, "$dir/info") or die("Cannot lock file '$dir/info': $!\n");     
      while (<FILE>) {
	if(/\$::calinfo{\'email\'}=\'(.+)\'/) {
	  $addr = $1;
	  last;
	}
      }
      doflock(\*FILE, LOCK_UN, "$dir/info") or die("Cannot lock file '$dir/info': $!\n");     
      close FILE;
    }
  }
  return "$addr";
}
#=========================================================================================================
sub get_mgroups {
  my ($spool, $who) = (@_);
  my ($gfile, @gkeys, $tkey, @ggkeys);
  $gfile="$spool/$who/mgroup";
  %::meetingGroups = ();
  if( -f $gfile) {
      &doReadFile("$gfile");
  }
  (@gkeys) = (keys %::meetingGroups);
  foreach $tkey (@gkeys) {
    $tkey =~ s/^mgp_//g;
  }
  $gfile="$spool/GlobalMeetingGroups";
  %::GlobalMeetingGroups = ();
  if( -f $gfile) {
      &doReadFile("$gfile");
  }
  (@ggkeys) = (keys %::GlobalMeetingGroups);
  foreach $tkey (@ggkeys) {
    $tkey =~ s/^mgp_//g;
    $tkey .= "($::phr{'global'})";
    push (@gkeys, $tkey);
  }
  return sort @gkeys;
}
#=========================================================================================================
sub expandMeetingGroups {	#input is : separated fields, return the same kind
  my ($input, @members, $retvalue, $mm, $gp, $tmp, $who, $spool);
  ($spool, $who, $input) = (@_);
  $who=$::calinfo{'w'} unless $who;
  @members = get_mgroups($spool, $who);
  if(scalar @members) {
      $retvalue="";
      (@members) = split(/[:,;]/, $input);
      for $mm (@members) {
          next if $mm !~ /^[\w|\(|\)|\.|\-|\@]+$/;
          if ($mm =~ m/\($::phr{'global'}\)/) {
              $mm =~ s/\($::phr{'global'}\)//g;
              $gp="mgp_" . $mm;
              if( $::GlobalMeetingGroups{$gp} ) {
                  $tmp = $::GlobalMeetingGroups{$gp};
                  if($retvalue) { $retvalue .= ":$tmp";}
                  else { $retvalue = $tmp;}
              } else { if($retvalue) {$retvalue .= ":$mm"; } else {$retvalue = "$mm";}}
          } else {
              $gp="mgp_" . $mm;
              if( $::meetingGroups{$gp} ) {
                  $tmp = $::meetingGroups{$gp};
                  if($retvalue) { $retvalue .= ":$tmp";}
                  else { $retvalue = $tmp;}
              } else { if($retvalue) {$retvalue .= ":$mm"; } else {$retvalue = "$mm";}}
          }
      }
  } else { $retvalue = $input;}

  return $retvalue;
}

#======================================================================================
sub onePass {
    use integer;
    my (@filenames, $who, $dir, $email, $key, @loctime, $counter, @alldirs, $curdir, $cdate, $cname);
    %::this_run_marks = ();
    (@alldirs) = (keys  %::wcald_spooldirhash);
    if($::wcald_vars{'debug'}) {
      my ($sec, $min, $hour,$mday, $mon, $yar, $yday, $isdst) = localtime(time);
      $cdate = "$mon/$mday/$yar/$hour:$min";
    }
    if($::wcald_vars{'debug'}) {
	if($::wcald_vars{'logfile'} and $::wcald_vars{'logfile'} ne "") {
	    if(open(LOG, ">>$::wcald_vars{'logfile'}")) { 
		$::wcald_LOGFILE_HANDLE=\*LOG;
	    } else {
		warn "Cannot append to logfile $::wcald_vars{'logfile'}. Logging will be disabled";
		$::wcald_vars{'logfile'}="";
		$::wcald_vars{'debug'}=0;
	    }
	} elsif($::wcald_vars{'foreground'}== 0) {
	    warn "Logfile is not specified. Please use the \"-log file\" option to specify an logfile";
	    warn "debug mode is turned off";
	    $::wcald_vars{'debug'} =0;
	}
    }
    
    for (@alldirs) {
      $curdir = $_;
      $::wcald_vars{'daemonEmail'} = $::wcald_spooldirhash{$curdir};
      my $this_server = $::wcald_servernamehash{$curdir};

      if( opendir(DIR, $curdir )) {
	@filenames = readdir(DIR);
	closedir(DIR);

	my %contactMarks=();	
	
	for $cname (@filenames) {
	  next if "$cname" eq "." or "$cname" eq ".." ;
	  
          &webcalSupport::initVars;
          $ENV{'SERVER_NAME'} = $this_server;
          &webcalVirtual::initVirtualServer();
          delete  $ENV{'SERVER_NAME'};

          if( -f "$curdir/GlobalMeetingGroups") { &doReadFile("$curdir/GlobalMeetingGroups");}
	  $dir="$curdir/$cname";
	  if($::wcald_vars{'debug'} > 2 and -d $dir) { print $::wcald_LOGFILE_HANDLE "==$cdate== Processing: $dir==";}
	  if ( -d "$dir" and -f "$dir/info" and -f "$dir/data") {
	    %::calinfo =();
            &doReadFile("$dir/info");
	    if(exists $::calinfo{'dformat'}) {$::o{'dateformat'} = $::calinfo{'dformat'};}
	    if(exists $::calinfo{'tformat'}) {$::o{'hourformat'} = $::calinfo{'tformat'};}
	    if(exists $::calinfo{'language'}) {$::o{'language'} = $::calinfo{'language'};}
	    # load in the language file
	    &webcalSupport::loadLangfile;

	    if(defined $::calinfo{'email'}){$email = $::calinfo{'email'};} else { $email = "";}
	    $who = $::calinfo{'w'};
	    if($::wcald_vars{'debug'} > 2) { print $::wcald_LOGFILE_HANDLE "     email=$email=\n";}
	    $counter = 0;
	    $_ = $email;
	    if( /(.)+\@(.)+/ and not $::calinfo{'NMR'}) {	# has a valid email address
	      my ($i, $j, $date, $occurs, $repeat, $exception, $today, $month, $day, $year, $kind, $href,
		  $tmp, $smp, $tim, $dmonth, $hr, $mn, $key, $des, $attendants, $mkey,$datestr, $detail,
		  $edate, $junk, $nowM, $nowD, $nowY, $nowH, $nowN, $nowS, $timenow, %contactEvents,
		  $todayc, %mailEvents, %mailEE, $hour, $min, $reminder, $mail,$mailu, $maili, $maily, 
		  $flash, $popup, $backward, $left, $right, $tag, $duration, $ehr, $emn, $utmp);
	      if($::calinfo{'tzone'}) { $ENV{TZ} = "$::calinfo{'tzone'}";}
	      else { delete $ENV{TZ}; }
	      # localtime sets the tzname the first time it is called.
	      # subsequent calls to localtime does not seem to care about
	      # the TZ environment anymore. I.e, it remembers the time zone.
	      if($::calinfo{'toffset'}) {
		my ($vtime, $tmp); 
		$tmp = time; $vtime = $tmp + $::calinfo{'toffset'};
		my (@loctime) = localtime($vtime);
		$::now{'year'} =  (@loctime)[5] + 1900,
		$::now{'month'} =  (@loctime)[4] + 0;
		$::now{'day'} =  (@loctime)[3] + 0;
		$::now{'hour'} =  (@loctime)[2] + 0;
		$::now{'min'} =  (@loctime)[1] + 0;
		$::now{'sec'} =  (@loctime)[0] + 0;
	      } elsif( $ =~ m/MSWin|NT/i ) {
                my (@loctime) = localtime(time);
                $::now{'year'} =  (@loctime)[5]+1900,
                $::now{'month'} =  (@loctime)[4]+0;
                $::now{'day'} =  (@loctime)[3] + 0;
                $::now{'hour'} =  (@loctime)[2] + 0;
                $::now{'min'} =  (@loctime)[1] + 0;
                $::now{'sec'} =  (@loctime)[0] + 0;
              } else {
                $datestr= `date "+%S %M %H %d %m %Y"`;
                @loctime=split(' ', $datestr);
                $::now{'year'} =  (@loctime)[5],
                $::now{'month'} =  (@loctime)[4] - 1;
                $::now{'day'} =  (@loctime)[3] + 0;
                $::now{'hour'} =  (@loctime)[2] + 0;
                $::now{'min'} =  (@loctime)[1] + 0;
                $::now{'sec'} =  (@loctime)[0] + 0;
              }

	      @::caldata=();
              &readData($curdir, $cname);

	      $nowM = $::now{'month'}; $nowD = $::now{'day'}; $nowY = $::now{'year'};
	      $nowH = $::now{'hour'};  $nowN = $::now{'min'}; $nowS = $::now{'sec'};
	      
	      %mailEvents=(); 	%mailEE=();  %contactEvents = (); 
	      $des="";
	      $timenow = &webcalSupport::timeLocal($nowS,$nowN,$nowH,$nowD,$nowM,$nowY);
	      
	      for $href (@::caldata) {
		if($::wcald_vars{'debug'} > 3) { 
		  $tmp = $href->{'what'};
		  $tag = $href->{'key'};
		  print $::wcald_LOGFILE_HANDLE "      working on: $tag ---> $tmp\n";
		}
		$reminder = $href->{'rem'};
		($flash,$mail,$popup)=split(/,/, $reminder);
		($junk, $maily, $maili,$mailu) = split(/:/, $mail);
		if($maily eq 'y' and defined $maili and $maili ne "") {
		    my @pws = split(/;/, $maili);
		    foreach $maili (@pws) {
			my $tmatched=0;
			$backward = 0;
			$junk = 1+($::wcald_vars{'refreshInterval'} >>1);
			if( $mailu eq 'm')    {
			    $backward = 1 + int($maili/1440);
			    $tmp = $maili * 60;
			    $right =  $tmp + $junk;    $left =  $tmp  -$junk;
			} elsif( $mailu eq 'h') {
			    $backward = 1 + int($maili/24);
			    $tmp = $maili * 3600;
			    $right = $tmp +$junk;  $left = $tmp-$junk;
			} elsif( $mailu eq 'd') { 
			    $backward = 1 + $maili;
			    $tmp = $maili * 86400;
			    $right = $tmp+$junk; $left = $tmp-$junk;
			} elsif( $mailu eq 'w') {
			    $backward = 1 + 7 * $maili;
			    $tmp = $maili * 604800 ;
			    $right = $tmp+$junk;$left = $tmp-$junk;
			}
			if($::wcald_vars{'debug'} > 3) {
			    print $::wcald_LOGFILE_HANDLE "           =>maily=$maily, mailu=$mailu, maili=$maili,back=$backward\n";
			}
			if($backward > 365) { $backward = 365; } # who wants to be reminded one year ahead?
			$month = $::now{'month'};
			$day = $::now{'day'};
			$year = $::now{'year'};
			$tim = $href->{'start'};
			($hr,$mn)=split(/:/,$tim);
			$date = $href->{'date'};
			$occurs = $href->{'occurs'};
			$repeat = $href->{'repeat'};
			$exception = $href->{'exception'}; 
			$kind =  $href->{'kind'};
			if($kind == 2) { # todo event, 
			    my  $done = $href->{'done'}; 
			    if($done and $done eq 'y') { next;} # do not display completed tasks
			}
			#
			my $enddate = $href->{'end'};
			my ($endM, $endD, $endY, $skip);
			if(defined $enddate) {
			    ($endM, $endD, $endY) = split(/\//, $enddate); $endM--;
			}
			($month, $day, $year) = &webcalSupport::canDate($month, $day, $year);
			for($j=0; $j <=$backward; $j++) { # fix the 00:00 bug.
			    $dmonth = $month + 1;	
			    $today= "$dmonth/$day/$year";
			    if($::wcald_vars{'debug'} > 3) {                            
				$todayc = &webcalSupport::printDate( $month, $day, $year);
				print $::wcald_LOGFILE_HANDLE "      check match: date=$todayc:$nowH:$nowN, edate=$date:$hr:$mn\n";
			    }
			    if(defined $enddate) {
				$skip=($year > $endY? 1: ($year == $endY ? ($month > $endM ? 1 : ($month == $endM ? ($day > $endD ? 1: 0) : 0 )) : 0));
			    } else { $skip = 0;}
			    my $cmatch=0;
			    if(!$skip and &webcalSupport::dtAafterB($month,$day,$year,$hr,$mn, $nowM, $nowD,$nowY,$nowH,$nowN) and
			       ($cmatch = &webcalSupport::calmatch($today, $date, $occurs, $repeat, $exception)) ) {
			    if(!$href->{'r1'} or ($href->{'r1'} and $cmatch <2)) {
				my ($timeevent, $diff, $pkey, $tmonth);
				$timeevent = &webcalSupport::timeLocal(0,$mn,$hr,$day,$month,$year);
				$diff = $timeevent - $timenow; # number of seconds between now and event.
				if($::wcald_vars{'debug'} > 3) {                            
				    print $::wcald_LOGFILE_HANDLE "        Matched:  ...diff=$diff = $timeevent - $timenow ++ left=$left,right=$right\n"; 
				}
				if($diff > $left and $diff <= $right) { # ok
				    my $mkkey = "$dir" . '|' . $href->{'seq'};
				    if(not $::last_run_marks{$mkkey}) {
					$::this_run_marks{$mkkey} = 1;
					my $room ="";
					$counter++;
					$tmonth = $month+1;
					$kind =  $href->{'kind'};
					$key =  $href->{'key'};
					$smp = &webcalSupport::html_escape("\n***** $href->{'what'}",0);
					if($href->{'detail'} ne "") {
					    $detail = &webcalSupport::html_escape("$::phr{'Details'}: $href->{'detail'}",0);
					    $detail =~ s/\n/\n /g;
					} else {$detail = "";}
					$duration = $href->{'duration'};
					$utmp=$mn+$duration;
					$ehr=$hr + int($utmp/60);
					$emn = $utmp % 60; if($emn < 10) { $emn="0$emn";}
					$tim .= ":$ehr:$emn:$kind:$key";
					$attendants = ""; $mkey="";
					if(defined $href->{'room'} and $href->{'room'} ne "") { $room .= "\n$::phr{'Location'}: " . $href->{'room'};}
					if(defined $href->{'pri'} and $href->{'pri'} ne "") { $room .= "\n$::phr{'Priority'}: " . $href->{'pri'};}
					if(defined $href->{'ctp'} and $href->{'ctp'} ne "" ) { $room .= "\n$::phr{'ContactP'}: " . $href->{'ctp'};}
					if(defined $href->{'ctm'} and $href->{'ctm'} ne "") { $room .= "\n$::phr{'ContactE'}: " . $href->{'ctm'};}

					my $includeit = 1;
					if($href->{'mkey'}) { $mkey =  $href->{'mkey'};}
					if($href->{'attendants'}) { $attendants = $href->{'attendants'}; }
					if($mkey and $attendants and ($mkey !~ m/^$who(_eMe_)\d+/)) {  $includeit=0; }

					if($href->{'ctm'} and $href->{'ctm'} =~/.+\@.+/) {
					    my $k = $href->{'ctm'};
					    if(not $mkey or not $contactMarks{$mkey} or $contactMarks{$mkey} !~ /:$k:/) {
						if(not $contactMarks{$mkey}) {$contactMarks{$mkey} = ":$k:";}
						else { $contactMarks{$mkey} .= "$k:";}
						if($contactEvents{$k}) { $contactEvents{$k} .= "\n\n $smp\n$detail$room";}
						else { $contactEvents{$k} = "$smp\n$detail$room";}
					    }
					}
					
					if($includeit) {
					    $pkey="$tmonth/$day/$year/$tim/$attendants";
					    $mailEvents{"$pkey"} = "$smp\n$detail$room";
					    $mailEE{"$pkey"} = $href;
					    if($::wcald_vars{'debug'} > 2) {                            
						print $::wcald_LOGFILE_HANDLE "+++++++++++ Entry($counter): $pkey => $smp\n";
					    }
					}
				    } else {
					if($::wcald_vars{'debug'} > 1) {                            
					    print $::wcald_LOGFILE_HANDLE "    This event has been processed last time $mkkey\n"; 
				}

				    }
				    $tmatched = 1;
				}
			    }
			}
			    last if $tmatched;
			    ($month, $day, $year) = &webcalSupport::canDate($month, $day + 1, $year);
			}
			last if $tmatched;			
		    }
		}
	      }
	      if($counter != 0) {
		my ( $msg, $header, $rest, $vcal, $tt, $name, $tmp, $mn, $dy, $yr, $datestr, $tim, $timestr, $shr, $smn, $addr, $havemeeting, $stt, $svcal);
		$name = $::calinfo{'name'};
		$tt = ""; $vcal="";
		$header="";
		$havemeeting = 0;
		for $key (keys %mailEvents) {
		    ($mn, $dy, $yr, $tim, $addr)=split(/\//, $key); $mn--;
		    ($shr, $smn, $ehr, $emn, $kind) = split(/:/, $tim);
		    $datestr = &webcalSupport::mdy_swstring($mn, $dy, $yr);
		    $timestr = &webcalSupport::hm_string($shr,$smn);
		    $des = $mailEvents{$key};
		    ($rest, $header, $rest) = split(/\n/, $des);
		    $header =~ s/\*{4,}//g;
		    $des =~ s/\n/\n**\t  /g;
		    $stt = ""; $svcal = "";
		    if($addr) { $havemeeting++; }
		    else {
			if($kind == 1) {
			    $timestr = &webcalSupport::hm_hm_string($shr,$smn,$ehr,$emn);
			    $stt .= "**  ===$::phr{'Appointment'}:  $datestr $timestr\n**\t  $des\n\n";
			} elsif($kind == 2) {
			    $stt .= "** ===$::phr{'Todo'}:  $datestr $timestr\n**\t  $des\n\n";
			} elsif($kind == 3) {
			    $timestr = &webcalSupport::hm_hm_string($shr,$smn,$ehr,$emn);
			    $stt .= "** ===$::phr{'Meeting'}:  $datestr $timestr\n**\t $des\n\n";
			} else {
			    $stt .= "** ===$::phr{'NoTimeEvent'}:  $datestr\n**\t  $des\n\n";
			}

			$tt .= $stt if $stt ;
			if($::calinfo{'vcal'}) {
			    my $ref = $mailEE{$key};
			    $svcal = &webcalSupport::toVcal($ref, $cname,2); $svcal = &webcalSupport::html_escape($svcal,0);
			    if($vcal) { $vcal .= "\015\012$svcal"; } else {$vcal .= $svcal;}
			}
			# 01/13/2005  One message per event
			if($::wcald_vars{'one_mail_per_event'}) {
			    if($stt) { 
				&do_sendmail($email, $header, $stt, $svcal,"","");
			    }
			}
		    }
		}
		if($tt and not $::wcald_vars{'one_mail_per_event'}) {
		    # 01/13/2005, sendmail code moved out.		    
		    &do_sendmail($email, $header, $tt, $vcal,"","");
		}
		if($tt and $::wcald_vars{'debug'}) {
		    print $::wcald_LOGFILE_HANDLE "       **** Event table ****\n";
		    for $key (keys %mailEvents) {
			$tmp = $mailEvents{$key};
			print $::wcald_LOGFILE_HANDLE "       **** $key ==> $tmp\n";
		    }
		} # if $tt

		if($havemeeting != 0) {
		    for $key (keys %mailEvents) {
			my ($receipants, $tmp, $others, @members, $name);
			$tt = ""; $vcal="";
			$header="";
			($mn, $dy, $yr, $tim, $addr)=split(/\//, $key); $mn--;
			($shr, $smn, $ehr, $emn, $kind) = split(/:/, $tim);
			if($addr) { # mail to attendee
			    $datestr = &webcalSupport::mdy_swstring($mn, $dy, $yr);
			    $timestr = &webcalSupport::hm_hm_string($shr,$smn,$ehr,$emn);
			    $des = $mailEvents{$key};
			    ($rest, $header, $rest) = split(/\n/, $des);
			    $header =~ s/\*{4,}//g;
			    $des =~ s/\n/\n**\t  /g;
			    if($kind == 1) { $tt .= "**  ===$::phr{'Appointment'}:  $datestr $timestr\n**\t  $des\n";}
			    elsif($kind == 2) {$tt .= "** ===$::phr{'Todo'}:  $datestr $timestr\n**\t  $des\n";}
			    elsif($kind == 3) {  $tt = "**  $::phr{'Meeting'}:  $datestr $timestr\n**\t  $des\n";}
			    else {$tt .= "** ===$::phr{'NoTimeEvent'}:  $datestr\n**\t  $des\n";}

			    if($::calinfo{'vcal'}) {
				my $ref = $mailEE{$key};
				my $t = &webcalSupport::toVcal($ref, $cname,2); $t = &webcalSupport::html_escape($t,0);
				$vcal .= "$t\015\012"; 
			    }
			    my $receipants_total=0;
			    my %rhash = (); my %ehash=();
			    $receipants = "$email"; $ehash{$email}=1;
			    $others = "$addr";
			    $others =~ s/[,; ]+/:/g;   
			    $others=expandMeetingGroups($curdir, $cname, $others);
			    if($::wcald_vars{'debug'} >2){print $::wcald_LOGFILE_HANDLE " Expand: $addr=>$others\n";}
			    (@members) = split(/:/, $others); 
			    for $name (@members) {
				if (! exists $rhash{$name}) {
				    $_ = $name;
				    $tmp ="";
				    if(/.+\@.+/) { $tmp = $name;}
				    else { $tmp = findEmailAddr("$curdir/$name");}
				    if($tmp and $tmp =~ /.+\@.+/) {
					if(! exists $ehash{$tmp}) {$receipants .= ",$tmp"; $ehash{$tmp} = 1; $receipants_total++;};
				    }
				    $rhash{$name} = 1;
				}
			    }
			    # 01/13/2005, sendmail code moved out.
			    &do_sendmail($receipants,$header, $tt, $vcal,"","");
			    # here here here 
			    if($receipants_total > $::wcald_vars{'warn_if_more_than_me'} and $webcalConfig::r{'operator'}) {
				report_abuse($who, $receipants_total, $receipants, $tt);
			    }

			    if($::wcald_vars{'debug'}) {
				print $::wcald_LOGFILE_HANDLE "       ==== Meeting ====\n";
				$tmp = $mailEvents{$key};
				print $::wcald_LOGFILE_HANDLE "       ==== $key ==> $tmp\n";
			    }
			}
		    }
		}
		# reminder contact-email 8/26/2003
		{
		    my ($k, $msg);
		    for $k (keys %contactEvents) {
			$msg = $contactEvents{$k};
			# 01/13/2005, sendmail code moved out.			
			&do_sendmail($k, "$::phr{'CalendarReminder'}",$msg, "","","");
		    }
		}
		# reminder contact-email 8/26/2003
	    }
	  }
	    # clear calinfo;
	    for $key (keys %::calinfo) { delete $::calinfo{$key};}
	    for $key (keys %::meetingGroups) { delete $::meetingGroups{$key};}
	    #clear caldata
	    @::caldata=();
	}
      }
    }
  }
    if($::wcald_vars{'debug'}) {
	my $k; for $k (keys %::this_run_marks) { print $::wcald_LOGFILE_HANDLE " Just did === $k ====\n";    }
    }
    %::last_run_marks = %::this_run_marks; %::this_run_marks = ();
    if($::wcald_vars{'debug'} and $::wcald_vars{'logfile'} ne "") { close $::wcald_LOGFILE_HANDLE;}
}
#==============================================================================================
sub report_abuse {
    my ($who, $receipants_total, $receipants, $msg) = (@_);
    my $operator = $webcalConfig::r{'operator'};
    $msg = <<END;
==== receipants =====
$receipants
==== Message =====
$msg
END
;
    &do_sendmail($operator, "Possible webcalendar abuse", $msg, "","","");
}
#==============================================================================================
sub sorttime {
    my ($ah, $am, $bh, $bm);
    ($ah, $am ) = split(/:/,$a);
    ($bh, $bm ) = split(/:/,$b);
    if($ah eq "") { return -1;}
    elsif($bh eq "") { return 1;}
    if($ah > $bh) { return 1;}
    elsif ($ah < $bh) { return -1;}
    elsif ($am > $bm) { return 1;}
    elsif ($am < $bm) { return -1;}
    else { return 0;}
}
#==============================================================================================
sub onePassCron {
  # mail events scheduled for the upcoming $forward days to calendar onwers
  my ($daemon) = (@_);
  my (@calnames, %myserverhash);
  @calnames=();  %myserverhash = ();
  if(scalar(@::wcald_narray) == 0)
    {
      my (@filenames, $dir, $email, @alldirs, $curdir, $tmp);
      (@alldirs) = (keys %::wcald_spooldirhash);
      for $curdir (@alldirs) {
	$::wcald_vars{'daemonEmail'} = $::wcald_spooldirhash{$curdir};
        my $this_server = $::wcald_servernamehash{$curdir};
        
	if( opendir(DIR, $curdir )) {
	  @filenames = readdir(DIR);
	  closedir(DIR);
	  for $dir (@filenames) {
	    next if "$dir" eq "." or "$dir" eq ".." ;
	    $dir="$curdir/$dir";
	    if ( -d "$dir" and -f "$dir/info" and -f "$dir/data") {
	      %::calinfo=();
	      &doReadFile("$dir/info");
	      if(defined $::calinfo{'email'}){$email = $::calinfo{'email'};} else { $email = "";}
	      if($email ne "") {
		  if($daemon) { if($::calinfo{'dr'}) { push @calnames, $dir; }}
		  else { push @calnames, $dir;}
                  $myserverhash{$dir} = $this_server;
	      }
	    }
	  }
	}
      }
    }
  else 
    {
      my (@filenames, $dir, $email, @alldirs, $name, $curdir);
      (@alldirs) = (keys %::wcald_spooldirhash);
      for $curdir (@alldirs) {
	$::wcald_vars{'daemonEmail'} = $::wcald_spooldirhash{$curdir};	  
        my $this_server = $::wcald_servernamehash{$curdir};
	for $name (@::wcald_narray) {
	  $dir="$curdir/$name";
	  if ( -d "$dir" and -f "$dir/info" and -f "$dir/data") {
	    %::calinfo=();
	    &doReadFile("$dir/info");
	    if(defined $::calinfo{'email'}){$email = $::calinfo{'email'};} else { $email = "";}
	    if($email ne "") { push @calnames, $dir;  $myserverhash{$dir} = $this_server;}
	  }
	}
      }
    }

  if($::wcald_vars{'debug'}) {
      if($::wcald_vars{'logfile'} and $::wcald_vars{'logfile'} ne "") {
	  if(open(LOG, ">>$::wcald_vars{'logfile'}")) { 
	      $::wcald_LOGFILE_HANDLE=\*LOG;
	  } else {
	      warn "Cannot append to logfile $::wcald_vars{'logfile'}. Logging will be disabled";
	      $::wcald_vars{'logfile'}="";
	      $::wcald_vars{'debug'}=0;
	  }
      } elsif($::wcald_vars{'foreground'}== 0) {
	  warn "Logfile is not specified. Please use the \"-log file\" option to specify an logfile";
	  warn "debug mode is turned off";
	  $::wcald_vars{'debug'} =0;
      }
  }
  
  if(scalar(@calnames) == 0) { return 0;}
  if($::wcald_vars{'forwardDays'} <= 0) {$::wcald_vars{'forwardDays'} = 1 ;}
  
  use integer;
  my (@filenames, $who, $dir, $email, $key, @loctime, $counter, @alldirs, $curdir, $cdate);
  my ($message, $month, $day, $year, @keys, $j,$k,$eh,$em,$kind, $dd, $tim, $tmp, $datestr, $msg);
  my ($todayc);
  
  for $dir (@calnames) {
    if ( -d "$dir" and -f "$dir/info" and -f "$dir/data") {
      if($::wcald_vars{'debug'} > 2) { print $::wcald_LOGFILE_HANDLE "OnePassCron: Processing: $dir\n";}
      my $this_server = $myserverhash{$dir};
      &webcalSupport::initVars;
      $ENV{'SERVER_NAME'} = $this_server;
      &webcalVirtual::initVirtualServer();
      delete  $ENV{'SERVER_NAME'};
      %::calinfo=();      
      &doReadFile("$dir/info");
      next if $::calinfo{'NMR'};
      if(defined $::calinfo{'email'}){$email = $::calinfo{'email'};} else { $email = "";}
      next unless $email ne "";
      if(exists $::calinfo{'dformat'}) {$::o{'dateformat'} = $::calinfo{'dformat'};}
      if(exists $::calinfo{'tformat'}) {$::o{'hourformat'} = $::calinfo{'tformat'};}
      if(exists $::calinfo{'language'}) {$::o{'language'} = $::calinfo{'language'};}
      # load in the language file
      &webcalSupport::loadLangfile;
      
      $who = $::calinfo{'w'};
      $counter = 0;
      if($::calinfo{'tzone'}) { $ENV{TZ} = "$::calinfo{'tzone'}";}
      else { delete $ENV{TZ}; }
      # localtime sets the tzname the first time it is called.
      # subsequent calls to localtime does not seem to care about
      # the TZ environment anymore. I.e, it remembers the time zone.
      if($::calinfo{'toffset'}) {
	  my ($vtime, $tmp); 
	  $tmp = time; $vtime = $tmp + $::calinfo{'toffset'};
	  my (@loctime) = localtime($vtime);
	  $::now{'year'} =  (@loctime)[5] + 1900,
	  $::now{'month'} =  (@loctime)[4] + 0;
	  $::now{'day'} =  (@loctime)[3] + 0;
	  $::now{'hour'} =  (@loctime)[2] + 0;
	  $::now{'min'} =  (@loctime)[1] + 0;
	  $::now{'sec'} =  (@loctime)[0] + 0;
      } elsif( $ =~ m/MSWin|NT/i ) {
	  my (@loctime) = localtime(time);
	  $::now{'year'} =  (@loctime)[5]+1900,
	  $::now{'month'} =  (@loctime)[4]+0;
	  $::now{'day'} =  (@loctime)[3] + 0;
	  $::now{'hour'} =  (@loctime)[2] + 0;
	  $::now{'min'} =  (@loctime)[1] + 0;
	  $::now{'sec'} =  (@loctime)[0] + 0;
      } else {
	  $datestr= `date "+%S %M %H %d %m %Y"`;
	  @loctime=split(' ', $datestr);
	  $::now{'year'} =  (@loctime)[5],
	  $::now{'month'} =  (@loctime)[4] - 1;;
	  $::now{'day'} =  (@loctime)[3] + 0;
	  $::now{'hour'} =  (@loctime)[2] + 0;
	  $::now{'min'} =  (@loctime)[1] + 0;
	  $::now{'sec'} =  (@loctime)[0] + 0;
      }

      if($daemon and $::now{'hour'} != $::wcald_vars{'do_summary_hour'} ) { next;}

      @::caldata=();
      if(open(FILEE, "<$dir/data")) {
	  doflock(\*FILEE, LOCK_SH, "$dir/data") or warn("Cannot lock file '$dir/data': $!\n");     
	  &doReadFile("$dir/data");
	  doflock(\*FILEE, LOCK_UN, "$dir/data") or warn("Cannot lock file '$dir/data': $!\n");     
	  close FILEE;
      }
      $message = "";
      $month = $::now{'month'};
      $day = $::now{'day'};
      $year = $::now{'year'};
      $todayc = &webcalSupport::mdy_nstring($month+1,$day,$year);
      
      for($dd=0; $dd < $::wcald_vars{'forwardDays'}; $dd++) 
	{
	  $datestr = &webcalSupport::mdy_wstring($month, $day, $year);
	  getOneDayEvents($month, $day, $year);
	  for $key (sort sorttime keys %::oneDayEvents) {
	    ($j,$k,$eh,$em,$kind)=split(/:/, $key);
	    $tim = &webcalSupport::hm_hm_string($j,$k,$eh,$em);
	    $tmp = $::oneDayEvents{$key};
	    if($kind == 1) {
	      $message = "$message\n\n" . "===$::phr{'Appointment'}: $datestr, $tim  $tmp";
	    } elsif ($kind == 2) {
	      $message = "$message\n\n" . "===$::phr{'ToDo'}: $datestr, $tim  $tmp";
	    } elsif ($kind == 3) {
	      $message = "$message\n\n" . "===$::phr{'Meeting'}: $datestr, $tim  $tmp";
	    } else {
	      $message = "$message\n\n" . "===$::phr{'NoTimeEvent'}: $datestr, $tim  $tmp";
	    }
	  }
	  ($month, $day, $year) = &webcalSupport::canDate($month, $day + 1, $year);
	}
      if($message ne "") {
	$message =~ s/\s+$//sg;
	$message =~ s/\n/\n**\t  /g;
	$msg =<<END;

**************************************************************
**
$message
**
**************************************************************
END
  ;
	$msg =~ s/\r?\n/\015\012/g;
        $msg = substImages($msg);                    
	
	# 1/13/2005
	&do_sendmail($email, "$::phr{'CalendarReminder'} ($todayc + $::wcald_vars{'forwardDays'} $::phr{'days'})", $msg, "","","");
     }
    }
     if($::wcald_vars{'debug'} and $::wcald_vars{'logfile'} ne "") { close $::wcald_LOGFILE_HANDLE;}
  }
}
#==========================================================================================
sub OpenMax {
    my $openmax = POSIX::sysconf( &POSIX::_SC_OPEN_MAX );
    (!defined($openmax) || $openmax < 0) ? 64 : $openmax;
}
#==========================================================================================
sub readData { # read calendar data, and cache it
    my ($cachefile, $cached,$datafile,$infofile,$cmtime, $dmtime, $imtime);
    my ($curdir, $cname) = (@_);
    my ($cmn, $cdy, $cyr)= ($::now{'month'}, $::now{'day'}, $::now{'year'});
    
    $cachefile = "$curdir/$cname/mcache";
    $datafile = "$curdir/$cname/data";
    $infofile = "$curdir/$cname/info";

    $cached = 0;
    if(-f "$cachefile") { # see if we can open it
	$= time;
	$cmtime = -M $cachefile;
	$dmtime = -M $datafile;
	$imtime = -M $infofile;
	if($::wcald_vars{'debug'} > 1) {
	    print $::wcald_LOGFILE_HANDLE "$curdir/$cname: cache_age=$cmtime, data_age=$dmtime, info_age=$imtime\n";
	} 
        if( $dmtime >= $cmtime and $imtime >= $cmtime and $cmtime < 0.5) {
	    if($::wcald_vars{'debug'} > 1) { print $::wcald_LOGFILE_HANDLE "Cache valid\n";}
	    @::datacache=();
            &doReadFile( "$cachefile");
            @::caldata = @::datacache;
            $cached = 1;
	    # print "++++   $cname cached ++++\n";
        } else {
	    if($::wcald_vars{'debug'} > 1) { print $::wcald_LOGFILE_HANDLE "Cache invalid\n";}
	}
    }
    if($cached == 0) {
        &doReadFile("$datafile");
        # write cache
	# data consists those entries with email reminder in the next 24 hours
	# cach will be invalidated in 22 hours or if calendar data has been
	# modified.
        if(sysopen(CACHE, "$cachefile",  O_WRONLY | O_CREAT)) {
            doflock(\*CACHE, LOCK_EX, "$cachefile") or warn("Cannot lock file '$cachefile': $!\n");     
            truncate(CACHE, 0);
            use integer;
            my ($i, $j, $date, $occurs, $repeat, $exception, $today, $month, $day, $year, $kind, $href,
                $tmp, $smp, $tim, $dmonth, $hr, $mn, $key, $des, $attendants, $mkey,$datestr, $detail,
                $edate, $junk, $nowM, $nowD, $nowY, $nowH, $nowN, $nowS, $timenow,
                $todayc, %mailEvents, $hour, $min, $reminder, $mail,$mailu, $maili, $maily, 
                $flash, $popup, $backward, $left, $right, $tag, $duration, $ehr, $emn, $utmp);

            $nowM = $::now{'month'}; $nowD = $::now{'day'}; $nowY = $::now{'year'};
            $nowH = $::now{'hour'};  $nowN = $::now{'min'}; $nowS = $::now{'sec'};
            $timenow = &webcalSupport::timeLocal($nowS,$nowN,$nowH,$nowD,$nowM,$nowY);

	    $left = -60;
            for $href (@::caldata) {
		$reminder = $href->{'rem'};
		($flash,$mail,$popup)=split(/,/, $reminder);
		($junk, $maily, $maili,$mailu) = split(/:/, $mail);
		if($maily eq 'y' and defined $maili and $maili ne "") {
		    my @pws = split(/;/, $maili);
		    foreach $maili (@pws) {
			my $tmatched = 0;
			if( $mailu eq 'm')    {
			    $backward = 2 + int($maili/1440);
			    $tmp = $maili * 60;		      
			} elsif( $mailu eq 'h') {
			    $backward = 2 + int($maili/24);
			    $tmp = $maili * 3600;
			} elsif( $mailu eq 'd') { 
			    $backward = 2 + $maili;
			    $tmp = $maili * 86400;
			} elsif( $mailu eq 'w') {
			    $backward = 2 + 7 * $maili;
			    $tmp = $maili * 604800 ;
			} else { $backward = 1; $tmp=0;}
			$right= 86400 + $tmp;
			if($backward > 365) { $backward = 365; } # who wants to be reminded one year ahead?
			$month = $::now{'month'};
			$day = $::now{'day'};
			$year = $::now{'year'};

			$tim = $href->{'start'};
			($hr,$mn)=split(/:/,$tim);
			$date = $href->{'date'};
			$occurs = $href->{'occurs'};
			$repeat = $href->{'repeat'};
			$exception = $href->{'exception'}; 
			$kind =  $href->{'kind'};
			if($kind == 2) { # todo event, 
			    my  $done = $href->{'done'}; 
			    if($done and $done eq 'y') { next;} # do not display completed tasks
			}
			
			my $enddate = $href->{'end'};
			my ($endM, $endD, $endY, $skip);
			if(defined $enddate) { ($endM, $endD, $endY) = split(/\//, $enddate); $endM--; }

			($month, $day, $year) = &webcalSupport::canDate($month, $day + $backward, $year);
			$j = 0;
			while(1) {
			    $todayc = &webcalSupport::printDate( $month, $day, $year);
			    $dmonth = $month + 1;	
			    $today= "$dmonth/$day/$year";
			    my $overdue = 0;
			    if(defined $enddate) {
				if($kind == 2 and $repeat < 2 and $href->{'done'} ne 'y' and $href->{'forward'} eq 'y' and 
				   &webcalSupport::mdyAafterB($month,$day,$year, $endM, $endD, $endY)) {
				    $overdue = 1; $skip = 0;
				} else {
				    $skip=($year > $endY? 1: 
					   ($year == $endY ? ($month > $endM ? 1 :
							      ($month == $endM ? ($day > $endD ? 1: 0) : 0 )) : 0));
				}
			    } else { $skip = 0;}
			    
			    # print "skip=$skip, doing", $href->{'what'}, "\n";
			    if($overdue) { 
				$href->{'marked'} = 1; $tmatched = 1;
			    } elsif(!$skip and &webcalSupport::dtAafterB($month,$day,$year,$hr,$mn, $nowM, $nowD,$nowY,$nowH,$nowN) and
				    &webcalSupport::calmatch($today, $date, $occurs, $repeat, $exception) ) {
				my ($timeevent, $diff, $pkey, $tmonth);
				$timeevent = &webcalSupport::timeLocal(0,$mn,$hr,$day,$month,$year);
				$diff = $timeevent - $timenow; # number of seconds between now and event.
				# print "==>diff=$diff; what=", $href->{what}, "left=$left, right=$right\n";

				if($diff > $left and $diff <= $right) { # ok
				    $href->{'marked'} = 1; $tmatched = 1;
				}
			    }
			    $j++;
			    if( $j <= $backward and (not defined $href->{'marked'})) {
				($month, $day, $year) = &webcalSupport::canDate($month, $day - 1, $year);
			    } else { last;}
			    last if $tmatched;
			}
			last if $tmatched;
		    }
		}
	    }
	    
            print CACHE '@::datacache=(';
            for $href (@::caldata) {
                if(defined $href->{'marked'}) {
                    delete $href->{'marked'};
                    $tmp = &webcalSupport::print1Entry($href);
                    print CACHE $tmp;
                }
            }
            print CACHE ");\n1;\n";            
            doflock(\*CACHE, LOCK_UN, "$cachefile") or warn("Cannot lock file '$cachefile': $!\n");     
            close CACHE;
        }
    } # if(cached == 0)
}
#==========================================================================================
sub xflock {
    # unfortunately flock is not implemented on MSWin32 ....
    # fname must be a absolute pathname
    my ($fhandle, $lflag, $fname) =(@_);
    if($ =~ /MSWin/) {
        if( $lflag & LOCK_UN) {
            if( -d $::wcald_vars{'exlockfile'}) { rmdir $::wcald_vars{'exlockfile'};}
            return 1; 
        } else {
            if( ! -d "$webcalConfig::c{'tmpdir'}") { mkdir("$webcalConfig::c{'tmpdir'}", 0777);}
            while(-d $::wcald_vars{'exlockfile'} ) { 
                my $mtime = -M $::wcald_vars{'exlockfile'};
                if($mtime > 0.02) { return 1; } 
                sleep 2;
            }
            if( mkdir($::wcald_vars{'exlockfile'}, 0) ) { return 1;}
            else { die("Cannot create lockfile \'$::wcald_vars{'exlockfile'}\'");} 
        }
    } else {
        return (flock($fhandle, $lflag));
    }
}
sub refreshlock {
    if($ =~ /MSWin/) {    
        if( -d $::wcald_vars{'exlockfile'}) {
            my $now=time;
            utime $now, $now, $::wcald_vars{'exlockfile'};
        } else { mkdir($::wcald_vars{'exlockfile'}, 0);}
    }
}
sub sighandler {
    if( -d $::wcald_vars{'exlockfile'}) { rmdir $::wcald_vars{'exlockfile'};}
    if( -f $::wcald_vars{'rlockfile'}) { unlink $::wcald_vars{'rlockfile'};}
    exit 0;
}
sub doflock {
    # unfortunately flock is not implemented on MSWin32 ....
    # fname must be a absolute pathname
    my ($fhandle, $lflag, $fname) =(@_);
    if($ =~ /MSWin/) {
        my $lockfile = "$fname" . '.lck';
        if( -f $lockfile) { unlink $lockfile;}
        if( $lflag & LOCK_UN) {
            if( -d $lockfile) { rmdir $lockfile;}
            return 1; 
        } elsif( $lflag & LOCK_EX) {
            if(-d $lockfile ) {
                my $mtime = -M $lockfile;
                # if lock is over one hour old, assume it is a bad lock
                if($mtime > 0.05) { return 1; } 
            }
            while( ! mkdir($lockfile, 0) )  { sleep 2;}
            return 1;
        } else { return 1;}
    } else {
        return (flock($fhandle, $lflag));
    }
}

sub doReadFile {
    my ($path) = (@_);
    if($path and open(DT, "<$path")) {
        doflock(\*DT, LOCK_SH, "$path") or calerror("Cannot lock file '$path': $!\n");     
        my $result = do "$path";
        doflock(\*DT, LOCK_UN, "$path") or calerror("Cannot unlock file '$path': $!\n");     
        close DT;
        return $result;
    }
    return 0;
}
#==========================================================================================
sub ckmailq {
    my ($qdir, $qfile, @files, $now, $nextrun, $qtime, $jnk, %hash, $key, $value, @alldirs, $curdir);
    (@alldirs) = (keys %::wcald_spooldirhash);
    for $curdir (@alldirs) {    
	$::wcald_vars{'daemonEmail'} = $::wcald_spooldirhash{$curdir};
	$qdir = "$curdir/.mailq";
	if(opendir(QDIR, $qdir)) {
	    @files = readdir(QDIR);
	    closedir(QDIR);
	    $ENV{'TZ'} = 'UTC';
	    $now = time;
	    delete $ENV{'TZ'};
	    $nextrun = $now + $::wcald_vars{'refreshInterval'};
	    for $qfile (@files) {
		next if $qfile =~ /^\./ ;
		($qtime, $jnk) = split(/\-/, $qfile);
                if($::wcald_vars{'debug'} > 1) { print $::wcald_LOGFILE_HANDLE "ckmailq $qfile: qtime=$qtime now=$now; next=$nextrun\n";}
		if($qtime >= $now and $qtime < $nextrun) {
		    if(open(QFILE, "<$qdir/$qfile")) {
			%hash = ();
			while(<QFILE>) {
                            if($::wcald_vars{'debug'} > 1) { print $::wcald_LOGFILE_HANDLE $_; }
                            chop; ($key, $value) = split(/=/, $_, 2); $hash{$key} = $value;
                        }
			close(QFILE);
			unlink("$qdir/$qfile");
			my($toaddr, $fromaddr, $fname, $pmsg, $html, $txt, $uvcal, $vmsg, $hmsg, $tmsg, $cal, $key, $mcc, $mbcc);
			my ($privacy, $calendar, $href, $eref, $date, $month, $day, $year, $hour, $min, $seq);
			$toaddr = $hash{'toaddr'};
			$fromaddr = $hash{'fromaddr'};
			$fname = $hash{'fname'}; if(!$fname) { $fname = "";}
			$mcc = $hash{'Cc'};  $mcc ="" if ! $mcc;
			$mbcc = $hash{'Bcc'};  $mbcc ="" if ! $mbcc;
			$html = $hash{'html'}; if(!$html) { $html = 0;}
			$txt = $hash{'txt'}; if(!$txt) { $txt = 0;}
			$uvcal = $hash{'uvcal'}; if(!$uvcal) { $uvcal = 0;}
			$cal = $hash{'cal'}; if(!$cal) {$cal="does-not-exist";}
			$key = $hash{'key'}; if(!$key) { $key=-1;}
			$seq = $hash{'seq'}; if(!$seq) { $seq=-1;}
			$privacy = $hash{'privacy'}; if(!$privacy) { $privacy=1;}
			$date = $hash{'date'}; ($month,$day,$year,$hour,$min)=split(/\//, $date);
			$pmsg = $hash{'pmsg'};
			if(!$pmsg) { $pmsg = "";} else { $pmsg =~ s/\\n/\n/g;}
			$calendar = "$curdir/$cal";
			if( -d $calendar and -f "$calendar/data") { # calendar exist
			    @::caldata=();
			    doReadFile("$calendar/data");
			    $eref = undef;
			    for $href (@::caldata) {
				if($seq and $href->{'seq'} and  $href->{'seq'} eq $seq) { $eref = $href; last;}
				if($href->{'key'} eq $key) {  $eref = $href; last;}
			    }
			    if($eref) {
				my $subj = $eref->{'what'};	
				my $msgbody = &webcalSupport::genEMsgBdy($eref, $cal, $privacy, $uvcal, $txt, $html,
									 "$month/$day/$year", $pmsg);
                                # 01/13/2005
				&do_sendmail("$toaddr", $subj, $msgbody, "", $mcc, $mbcc);
			    } # eref
			} # -d $calendar
		    } #open $qdir/$qfile
		} elsif($qtime < $now) { # past due
		    unlink "$qdir/$qfile";
		}
	    } #for $qfile in @files
	}
    }
}
#==========================================================================================
sub do_sendmail {
    my ($email, $header, $tt, $vcal, $mcc, $mbcc) = (@_); 
    $email =~ s/\r?\n//g; $header =~ s/\r?\n//g; $mcc =~ s/\r?\n//g; $mbcc =~ s/\r?\n//g; 
    my ($msg);
    my($h, $ht, $hv, $sep) =("","","","");
    my ($Cc, $Bcc) = ("","");
    if($mcc) { $Cc = "\015\012Cc: $mcc";}
    if($mbcc) { $Bcc = "\015\012Bcc: $mbcc";}
    
    $tt =~ s/\s+$//sg;
    if($vcal) {
	$h = "MIME-Version: 1.0\015\012Content-Type: multipart/mixed; boundary=\"=-vCalendar-AR47921209630406600730910407937723\"\015\012\015\012";
	$vcal="--=-vCalendar-AR47921209630406600730910407937723\015\012$webcalConfig::m{'vcalheader'}\015\012\015\012BEGIN:VCALENDAR\015\012PRODID:-//WebCalendar $webCaldVersion-$patchlevel//EN\015\012VERSION:1.0\015\012$vcal\015\012END:VCALENDAR\015\012";
	
	$ht ="--vCalendar-AR47921209630406600730910407937723\015\012$webcalConfig::m{'textheader'}\015\012";
	$sep = "--=-vCalendar-AR47921209630406600730910407937723--";
    }

#========================================== mail it out ==================

    $tt = <<END;
**************************************************************
**************************************************************
**     $::phr{'CalendarReminder'}
**************************************************************
$tt
**
**************************************************************
**************************************************************
END
    ;
    $tt =~ s/\r?\n/\015\012/g;
		    
    $msg ="$h\015\012\015\012$ht\015\012\015\012$tt\015\012$hv\015\012\015\012$vcal\015\012$sep\015\012";
    my $now_string = &webcalSupport::rfc2822_datetime;
    $msg = substImages($msg);                    
    if($::wcald_vars{'SENDMAIL'} ne "") {
	open (MAIL,"|-") || exec($::wcald_vars{'SENDMAIL'}, "-t", "-oi");
	print MAIL "To: $email$Cc$Bcc\015\012";
	print MAIL "From: $::wcald_vars{'daemonEmail'}\015\012";
	print MAIL "Subject: Re: $header\015\012";
	print MAIL "Date: $now_string\015\012";
	print MAIL "Precedence: bulk\015\012";
	print MAIL "X-Mailer: webcald $webCaldVersion-$patchlevel\015\012";
	print MAIL $msg;
	print MAIL "\015\012";
	close MAIL;
    } elsif($::wcald_vars{'smtpto'} ne "" and $::wcald_vars{'smtpfrom'} ne "") {
	&smtplib::SmtpSendMail($::wcald_vars{'daemonEmail'}, $::wcald_vars{'smtpfrom'}, $email, $::wcald_vars{'smtpto'}, "Re: $header", $msg,$mcc,$mbcc);
    }
    if($::wcald_vars{'debug'}) {
	print $::wcald_LOGFILE_HANDLE "The following were sent to $email $mcc $mbcc\n";
	print $::wcald_LOGFILE_HANDLE "--------------------------------------------\n";
	print $::wcald_LOGFILE_HANDLE "$msg\n";
	print $::wcald_LOGFILE_HANDLE "--------------------------------------------\n";
    }		    	  
    
}
#==========================================================================================

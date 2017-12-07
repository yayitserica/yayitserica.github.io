#!/usr/bin/perl

use lib "/home/sites/yayitserica.com/public_html/calendar";

#!/usr/bin/perl -w
#
# $Header: /home/cvs/webCal/webCal2/webcal-import.pl,v 1.17 2003/09/25 20:10:22 mzou Exp $
#


use strict;
use webcalConfig;
use webcalVirtual;
use webcalSupport 2.7;
use Symbol;
use CGI;

if(1) {
    my ($SAVE_DIRECTORY, $query, $method, $scriptname, $tmp, $key, $Filename, $File_Handle, 
	$username, $command, $calname);
    $method=$ENV{'REQUEST_METHOD'} or die("To be used as a CGI-BIN program!");
    $scriptname = $ENV{'SCRIPT_NAME'};
    
    $ENV{PATH} = "/bin:/usr/bin";
    &webcalSupport::initVars;
    &webcalVirtual::initVirtualServer();

    if($scriptname =~ /signup\.cgi$/) {
	&webcalSupport::loadLangfile;
	&webcalSupport::calerror("You cannot signup from here.");
    }
    
    $SAVE_DIRECTORY=$webcalConfig::c{'tmpdir'};
    $| = 1;
    $query = new CGI;

    #print "Content-type: text/html\n\n=========== start ========<br>";
    $Filename = "";
    # get and save all query parameters in calinfo
    foreach $key (sort $query->param()) {
	next if ($key =~ /^\s*$/);
	next if ($query->param($key) =~ /^\s*$/);
	my $tt= $query->param($key);
	if($key =~ /^file_to_upload$/) {
	    if ($query->param($key) =~ /([^\/\\]+)$/) {
		$Filename = $1;
		$Filename =~ s/^\.+//;
		$Filename = lc($Filename);
		$File_Handle = $query->param($key);
	    } else {
		my $fname = $query->param($key);
		&webcalSupport::loadLangfile;
		&webcalSupport::calerror("Filename problem: $fname is not properly formatted");
	    }
	} else {
	    my $name = $key;
	    my $value = $query->param($key);
	    if ( $name eq "d") {
		my ($mn, $dy, $yr, $hr, $min) = split(/\//, $value);
		if($yr< 100) { $yr += 2000;}
		elsif($yr <= 1753) { $yr = 1753;}
		$::calinfo{'year'} = 0+$yr;
		$::calinfo{'month'} = 0+$mn;
		$::calinfo{'day'} = 0+$dy;
		if(defined $hr) {
		    $::calinfo{'hour'} = 0+$hr;
		    $::calinfo{'min'} = 0+$min;
		}
	    }
	    if ($name =~ /\[\]$/i) {	# [] = array = select_multiple result
		my @ss =$query->param($name); 
		$value= join(":", @ss);
		$name =~ s/\[\]$//i;
		if (defined $::calinfo{$name} && $::calinfo{$name} ne "") {
		    $::calinfo{$name} = $::calinfo{$name}.":".$value;
		} else {
		    $::calinfo{$name} = $value;
		}	
	    } else {
		$::calinfo{$name} = $value;
	    }	    
	}		
    }
    # {my ($key, $v); for $key (keys %::calinfo) { $v=$::calinfo{$key}; print "$key=>$v<br>";} }
    # exit(0);

    if($Filename eq ""){
	&webcalSupport::loadLangfile;
	&webcalSupport::calerror("No filename specified. Please select a file name first."); 
    }
    
    $command = $::calinfo{'c'};
    # signup
    if($command eq 'signup' or $command eq 'setup') {&webcalSupport::calerror("You cannot signup from here.");}

    $command= &webcalSupport::authenticate($command, $scriptname);
    $command = &webcalSupport::find_and_set_calendarName($command, $scriptname);
    &webcalSupport::nobodySignoff($command);
    if (! $::o{'spooldir'} =~ /^(\/[^.]*)$/) {
	&webcalSupport::calerror("$::phr{'Invalidspooldir'} $::o{'spooldir'}");
    }
    if($command ne 'dvc' and $command ne 'dvcard' ) {
	&webcalSupport::calerror("You cannot run \"$command\" from here.");
    } else {
	# print "Content-type: text/html\n\n";
	#my ($k, $v);foreach $k (keys %::calinfo) { $v = $::calinfo{$k}; print "$k=>$v<br>";} #exit 0;

	$username=$::calinfo{'w'};
	$::calinfo{'w'} = $username = &webcalSupport::untaintname($username,$::phr{'Invalidusername'});
	$calname="$::o{'spooldir'}/$username";
	if ( -d $calname && -f "$calname/data" ) {

            if( -f "$calname/info") { &webcalSupport::doReadFile("$calname/info"); }

	    $::d{'authResult'} = &webcalSupport::doauth();
	    if(defined $::calinfo{'ctype'} and $::calinfo{'ctype'} =~ 'public') { 
		if($::d{'remote_user'} ne 'anonymous' and $::d{'remote_user'} ne 'nobody') {
		    $::d{'ispublic'} = 4;
		} elsif($::calinfo{'aap'}) {
		    $::d{'ispublic'} = 4;  $::d{'validuser'} = 1;    
		} else {
		    $::d{'ispublic'} = 0;	    
		}
	    }
	    else { # need an identity in order to view private calendar
		if($::d{'remote_user'} eq "") {
		    &webcalSupport::vlogin;
		}
	    }

	    &webcalSupport::setPersonalDisplayParams;
	    &webcalSupport::convertToWcalDatesAll;
	    &webcalSupport::getSetCurrentDateTime();
	    &webcalSupport::loadLangfile;

	    # upload the file first
	    my ($who, $tstr, $file, $Bytes, $BytesRead, $Buffer, $sizelimit);
	    $sizelimit = $::o{'dataSizeLimit'};
	    if(!$sizelimit) { $sizelimit=20000;}
	    $who=$::calinfo{'w'};
	    $tstr = time;
	    $file = "$SAVE_DIRECTORY/$Filename" . $who . "$tstr";
	    my $OUTFILE=gensym;
	    if(!open($OUTFILE, ">$file")) {
		&webcalSupport::calerror("Cannot write to tmp file \"$file\".");    
	    }
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
		&webcalSupport::calerror("File \"$Filename\" is to big. Size limit=$sizelimit bytes."); 
	    } elsif($BytesRead == 0) {
		if( -f $file) { unlink $file;}
		&webcalSupport::calerror("File \"$Filename\" is empty."); 
	    }
	    
	    # do import
	    if($BytesRead) {
		my $buffer = "";
		my $FILE=gensym;
		if(open($FILE, "<$file")) {
		    binmode($FILE);
		    while(<$FILE>) { $buffer .= $_;}
		    close $FILE;

		    if( -f $file) { unlink $file;}
		    if($command eq 'dvc') {
			$::calinfo{'vcc'} = $buffer;
			&webcalSupport::dovcal(1);
		    } else {
			$::calinfo{'vcard'} = $buffer;
			&webcalSupport::dovcard(1);			
		    }
		} else { &webcalSupport::calerror("cannot open $file");}
	    }
	    if( -f $file) { unlink $file;}
	    &webcalSupport::myexit(0);;         
	}
    }
}
#===================================================================================================

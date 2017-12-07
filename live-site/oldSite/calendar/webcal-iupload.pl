#!/usr/bin/perl -w
#
# $Header: /home/cvs/webCal/webCal2/webcal-iupload.pl,v 1.21 2003/09/25 20:10:22 mzou Exp $
#

use strict;
use webcalConfig;
use webcalVirtual;
use webcalSupport 2.7;
use Symbol;
use CGI;

if(1) {
    my ($SAVE_DIRECTORY, $query, $method, $scriptname, $tmp, $key, @Filename, $Filename, $File_Handle, @File_Handle, 
	$username, $command, $calname, $imagedir, $irepository);
    $method=$ENV{'REQUEST_METHOD'} or die("To be used as a CGI-BIN program!");
    $scriptname = $ENV{'SCRIPT_NAME'};
    
    $ENV{PATH} = "/bin:/usr/bin";
    &webcalSupport::initVars;
    &webcalVirtual::initVirtualServer();

    if($scriptname =~ /signup\.cgi$/) {
	&webcalSupport::loadLangfile;
	&webcalSupport::calerror("You cannot signup from here.", -1);
    }
    # make sure all upload directories are ok
    $imagedir = $::o{'imgdir'};
    if(! $imagedir or ! -d "$imagedir") {
	&webcalSupport::calerror("$imagedir does not exist. Upload disabled.", -1 );
    }
    if(!$::o{'allowImageUpload'}) {
	&webcalSupport::calerror("Image upload is currently disabled. Please check with your webmaster to enable this feature.",-1);
	&webcalSupport::myexit(0);
    }
    if($::o{'reviewImageUpload'}) {
	$irepository = "$imagedir/$::o{'uploadtmpsubdir'}";
	if(! -d "$irepository" and mkdir("$irepository", 0711) == 0) {
	    &webcalSupport::calerror("Could not create directory $irepository. Upload disabled.",-1);
	}
	my $FF=gensym;
	if(open($FF, ">$irepository/_test_")) {close $FF; unlink "$irepository/_test_";} 
	else {
	    &webcalSupport::calerror("Could not write to directory $irepository. $! Upload disabled.", -1);
	}
	if($webcalConfig::r{'cookieAuth'} == 0 and  ! -f "$irepository/.htaccess") {
	    my $shtaccess = "$::o{'spooldir'}/.htaccess";
	    my $thtaccess = "$irepository/.htaccess";	    
	    if(not link($shtaccess, $thtaccess)) {
		&webcalSupport::calerror("\"$irepository/.htaccess\" does not exist. Review uploads cannot be enforced. Please check with your webmaster.", -1);
	    }
	}
    } else {
	$irepository = "$imagedir/$::o{'uploadsubdir'}"; 
    }
    if(! -d "$imagedir/$::o{'uploadsubdir'}" and mkdir("$imagedir/$::o{'uploadsubdir'}", 0711) == 0) {
	&webcalSupport::calerror("Could not create directory $imagedir/$::o{'uploadsubdir'}. Upload disabled.", -1);
    }
    
    my $FFF=gensym;
    if(open($FFF, ">$imagedir/$::o{'uploadsubdir'}/_test_")) {close $FFF; unlink "$imagedir/$::o{'uploadsubdir'}/_test_";} 
    else {
	&webcalSupport::calerror("Could not write to directory $imagedir/$::o{'uploadsubdir'}. $! Upload disabled.", -2);
    }
    # upload is ok.

    $SAVE_DIRECTORY=$webcalConfig::c{'tmpdir'};
    $| = 1;
    $query = new CGI;

    $Filename = "";
    @Filename=();
    @File_Handle=();
    # get and save all query parameters in calinfo
    foreach $key (sort $query->param()) {
	next if ($key =~ /^\s*$/);
	next if ($query->param($key) =~ /^\s*$/);
	my $tt= $query->param($key);
	if($key =~ /^file_to_upload(\d+)$/) {
	    my $which=$1;
	    if ($query->param($key) =~ /([^\/\\]+)$/) {
		my $tmpname = $1;
		$tmpname =~ s/^\.+//;
		push @Filename, lc($tmpname);
		$tmpname = $query->param($key);
		push @File_Handle , $tmpname;
	    } else {
		my $fname = $query->param($key);
		&webcalSupport::loadLangfile;
		&webcalSupport::calerror("Filename problem: $fname is not properly formatted", -1);
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
    #{my ($key, $v); for $key (keys %::calinfo) { $v=$::calinfo{$key}; print "$key=>$v<br>";} }

    $command = $::calinfo{'c'};
    # signup
    if($command eq 'signup' or $command eq 'setup') {&webcalSupport::calerror("You cannot signup from here.", -1);}
    #
    $command= &webcalSupport::authenticate($command, $scriptname);
    $command = &webcalSupport::find_and_set_calendarName($command, $scriptname);
    &webcalSupport::nobodySignoff($command);
    if (! $::o{'spooldir'} =~ /^(\/[^.]*)$/) {
	&webcalSupport::calerror("$::phr{'Invalidspooldir'} $::o{'spooldir'}", -1);
    }

    if($command ne "ui" and $command ne "dui") {
	&webcalSupport::loadLangfile;
	&webcalSupport::calerror("You cannot run \"$command\" from here.",-1);
	&webcalSupport::myexit(0);;         	
    }

    # print "Content-type: text/html\n\n";
    #my ($k, $v);foreach $k (keys %::calinfo) { $v = $::calinfo{$k}; print "$k=>$v<br>";} 
    #exit 0;

    $username=$::calinfo{'w'} || $::d{'remote_user'};
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
	} else { # need an identity in order to view private calendar
	    if($::d{'remote_user'} eq "") {
		&webcalSupport::vlogin;
	    }
	}
	&webcalSupport::setPersonalDisplayParams;
	&webcalSupport::convertToWcalDatesAll;
	&webcalSupport::getSetCurrentDateTime();
	&webcalSupport::loadLangfile;

	if($command eq "ui") { # post form
	    delete $::calinfo{'bgcolor'}; &webcalSupport::headers("$::phr{'IUpload'}",undef);
	    print <<_EOF_;
<center>
<br>
<blockquote>
<table border=0><tr><td>
<font size=2>$::phr{'IUploadInstruction'}</font>
</td></tr></table>
</blockquote>
<br>
<FORM name=iupload ENCTYPE="multipart/form-data" ACTION="$::o{'cgiupload'}" method=POST>
<input type=hidden name=c value="dui">
<input type=hidden name=w value="$username">
<table border=0 cellpadding=8 cellspacing=0>
<tr><td nowrap align=center>1.&nbsp;<INPUT TYPE="FILE" NAME="file_to_upload0" SIZE="40"></font></td></tr>
<tr><td nowrap align=center>2.&nbsp;<INPUT TYPE="FILE" NAME="file_to_upload1" SIZE="40"></font></td></tr>
<tr><td nowrap align=center>3.&nbsp;<INPUT TYPE="FILE" NAME="file_to_upload2" SIZE="40"></font></td></tr>
<tr><td nowrap align=center>4.&nbsp;<INPUT TYPE="FILE" NAME="file_to_upload3" SIZE="40"></font></td></tr>
<tr><td nowrap align=center><font size=2><INPUT TYPE=checkbox name=protectui value=1>&nbsp;&nbsp;
Check here is you do not want others to use your uploads</font></td></tr>
<tr><td nowrap align=center><b><input type=submit name=action value="$::phr{'Submit'}">&nbsp;&nbsp;&nbsp;&nbsp;
<input type=button value=" $::phr{'Cancel'}  " onclick="javascript:self.close()">
</td></tr>
</table>
</FORM>
</center>
_EOF_
            &webcalSupport::trailer;
	    &webcalSupport::myexit(0);	    
	} elsif($command eq "dui") { # do upload
	    if(0+@Filename == 0){ &webcalSupport::calerror("No filename specified. Please select a file name first.", -1); }
	    # upload the file first
	    my ($who,$tstr,$file,$Bytes,$BytesRead,$Buffer,$sizelimit,$suffix,$base,$j,$nfiles,@written,$name,$imsg, $tbytes);
	    my $instructions = "";
	    my $private = "";
	    if($::calinfo{'protectui'} or ($::calinfo{'aap'} and $::d{'remote_user'} ne $username)) { $private="private_";}
	    $sizelimit = $::o{'maximumImageFileSize'};
	    if(!$sizelimit) { $sizelimit=100000;}
	    $who=$::calinfo{'w'};
	    $tstr = time;
	    $nfiles = 0+@Filename;
	    @written = ();
	    $tbytes="";
	    for($j = 0; $j < $nfiles; $j++) {
		$Filename=$Filename[$j];
		$file = "$SAVE_DIRECTORY/$Filename" . $who . "$tstr";
		my $OUTFILE=gensym;
		if(!open($OUTFILE, ">$file")) {
		    foreach $name (@written) { unlink "$name" if -f "$name";}		    
		    &webcalSupport::calerror("Cannot write to tmp file \"$file\".", -1);    
		}
		binmode($OUTFILE);
		$BytesRead = 0;
		undef $Buffer;
		$File_Handle = $File_Handle[$j];
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
		    foreach $name (@written) { unlink "$name" if -f "$name";}
		    &webcalSupport::calerror("File \"$Filename\" is too big. No files were uploaded.", -1); 
		} elsif($BytesRead == 0) {
		    if( -f $file) { unlink $file;}
		    foreach $name (@written) { unlink "$name" if -f "$name";}		    
		    &webcalSupport::calerror("File \"$Filename\" is empty. No files were uploaded.", -1); 
		}
		
		# save upload
		if($BytesRead) {
		    my ($theFilename, $sfile, $err, $errmsg, $i, $tmp);
		    $base = "unknown"; $suffix="img";
		    if( $Filename =~ /([^\/]+)\.([^\.]+)$/) {
			$base=$1; $suffix= $2;
			$base =~ s/\s+/\+/g;
			$base =~ s/[^\w\d\+_]/_/g;
		    }
		    $i=0; $tmp = $base;
		    while( -f "$irepository/${private}${who}_${tmp}.$suffix" or -f "$imagedir/$::o{'uploadsubdir'}/${private}${who}_${tmp}.suffix") {
			$tmp = $base . "_$i"; $i++;
		    } 
		    $base = $tmp;
		    $theFilename = "${private}${who}_${base}.$suffix";
		    $sfile = "$irepository/$theFilename";
		    $err = 0;
		    $errmsg = "";
		    # Filenames are always unique, no need to use locks
		    my $SFILE=gensym;
		    if(open($SFILE, ">$sfile")) {
			binmode($SFILE);
			my $FILE=gensym;
			if(open($FILE, "<$file")) {
			    binmode($FILE);
			    while(<$FILE>) { print $SFILE $_;}
			    close $FILE;
			} else { 
			    $err = 1; $errmsg = "Cannot open tmp file $file";
			}
			close $SFILE;
		    } else {
			$err = 1; $errmsg = "Cannot open file $sfile";
		    }
		    if($err) {
			if( -f $file) { unlink $file;}
			foreach $name (@written) { unlink "$name" if -f "$name";}
			&webcalSupport::calerror("$errmsg", -1); 
		    }
		    else {
			if($::o{'reviewImageUpload'}) {
			    # use a tmp file first, wait for approval
			    my $TF=gensym;
			    if(open($TF, ">$imagedir/$::o{'uploadsubdir'}/$theFilename")) {
				binmode($TF);
				my $SF=gensym;
				if(open($SF, "<$imagedir/review.gif")) {
				    binmode($SF);
				    while(<$SF>) {print $TF $_;} 
				    close $SF;
				}
				close $TF;
				chmod 0644, "$imagedir/$::o{'uploadsubdir'}/$theFilename";
			    }
			    chmod 0200, $sfile;
			}
			if($tbytes) { $tbytes .= " + $BytesRead ";} else { $tbytes .= "$BytesRead ";}
			push @written, "$sfile";
			$instructions .= "<font color=#ff0000>\\</font><font color=#009900>^o^</font><font color=#ff0000>/</font>$theFilename<br><br>";
		    }
		}
		if( -f $file) { unlink $file;}
	    }
	    $imsg = "A total of $nfiles file(s) has been succesfully uploaded.";
	    delete $::calinfo{'bgcolor'}; &webcalSupport::headers("$::phr{'IUpload'}",undef);	 

	    print <<_EOF_;
<center>
<br><br>
<table border=0 cellspacing=0><tr><td><blockquote><font size=2>$::phr{'IUploadAck'}</font></blockquote></td></tr>
<tr><td align=center><blockquote><font color=#009900><b>$imsg</b></font></blockquote></td></tr>
<tr><td align=center>File size:<font color=#ff0000>$tbytes</font></td></tr>    
</table>
<br>
<table border=0 cellpadding=8 cellspacing=0>
<tr><td><font size=+1><b>$instructions</b></font></td></tr>
<tr><td>&nbsp;</td></tr>
<tr><td align=center><form><b><input type=button value="  $::phr{'Close'}  " onclick="javascript:self.close()"></b></form></td></tr>
</table>
</center>
_EOF_
                    &webcalSupport::trailer;
		    &webcalSupport::myexit(0);;         
	}
    }
}
#===================================================================================================

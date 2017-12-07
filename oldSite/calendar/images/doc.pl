#!/usr/bin/perl

use POSIX;
use strict;

my $rootDir       = `pwd`;  
my $srcSubdir     = "doc-src";
my $destSubdir    = "doc";
my $index         = "index.html"; 

#=============================================================================================================
my $which = shift;
if($which =~ /home/i) {
    $::webcal=<<END;
 <div id="calendar" style="position:absolute;right:20;top:0;width:150;height:120;z-index:0">
   <iframe src="http://webcal.ma.utexas.edu/webcal/wcal?c=navigation_table&w=Demo&anonymous=1&width=120&height=96"
      scrolling=no width=148 height=110 frameborder=0></iframe>
 </div>
END
    ;
} else {
    $::webcal = "";
}
#=============================================================================================================
require "doc_header.pl";
#=============================================================================================================
chop $rootDir;
#=============================================================================================================
if($srcSubdir =~/\// or $destSubdir =~/\// or $srcSubdir eq $destSubdir) {
    die "SRC dir and DEST must be different subdir in \"$rootDir\"\n";
}
#=============================================================================================================
if(! -d "$rootDir/$srcSubdir") {
    die "\"$rootDir/$srcSubdir\" does not exist. Bye\n";
}
#=============================================================================================================
if(! -d "$rootDir/$destSubdir") {
    die "\"$rootDir/$destSubdir\" does not exist. Please create it first.\n";
}
#=============================================================================================================
&makeIndexInDir;
&generateDoc;
#=============================================================================================================
sub generateDoc { # dirname relative to $srcSubdir
    my ($dirname) = (@_);
    my $fullpath = "$rootDir/$srcSubdir/$dirname";
    my $destination = "$rootDir/$destSubdir/$dirname";
    $fullpath =~ s/\/+/\//g;    $fullpath =~ s/\/$//g;     # trim //
    $destination =~ s/\/+/\//g; $destination =~ s/\/$//g;
    my $currentdir="";
    if( $dirname =~ /\/([^\/]+)$/) { $currentdir=$1;}
    elsif($dirname) { $currentdir=$dirname;}
    my $reldest = $destination; 
    $reldest =~ s/$rootDir\///; $reldest =~ s/[^\/]//g; $reldest = length($reldest);
    
    if( -l $fullpath) { next; }                          # don't process symbolic links
    if( not opendir(DIR, "$fullpath") ) { return undef;} # not a directory
    my @files = readdir(DIR); closedir(DIR);
    if( ! -f "$fullpath/.index") { return undef;}        # directory doesn't have the right structure

    mkdirhier($destination);

    my ($entry, $file, @subdirs, %hash);
    @subdirs=();
    my $content= readindex("$fullpath/.index");
    my ($fdir, $dir, @branch);
    $fdir = "$srcSubdir/$dirname";   $fdir =~ s/\/+/\//g;   $fdir =~ s/\/$//g;  
    @branch = split(/\//, $fdir);
    my $thisdir = pop @branch; # current dir
    my $depth=0;
    while( ($dir = pop @branch)) {
	$depth++;
	my $pp = join(/\//, @branch);
	my $parentdir;
	if($pp) { $parentdir = "$rootDir/" . $pp . "/$dir";}
	else {  $parentdir = "$rootDir/$dir";}
	my $tmp = readindex("$parentdir/.index");
	my $qq = "../" x $depth;
	if($tmp) {
	    $tmp =~ s/<a href=\"/<a href=\"$qq/g; #"
	    $content =~ s/\n/\n	/g;
	    $content =~ s/^(.)/	$1/g;
	    $content =~ s/\n\s+$/\n/;
	    my $pattern = "$thisdir/$index";
	    $tmp =~ s/($pattern)([^\n]+\n)/\1\2$content/;
	    $content = $tmp;
	}
	$thisdir=$dir;
    }
 
    my $saved = $content;
    my $ancestor = "../" x $reldest;
    my $h2filler = "<font color=#aaaaaa>&#171;</font>";
    my $rellif2h = "<font color=#aaaaaa>&#187;</font>";
    my $h3filler = "";
    my $rellif3h = "";

    for $entry (@files) {    
	next if $entry =~ /^\./ ;
	next if $entry =~ /\~$/; 
	$file = "$fullpath/$entry";
	next if -l $file;      # don't process symbolic links
	if( -f $file) {
	    my $dest = "$destination/$entry";
	    my $upindex=0;
	    my $ancestor_saved = $ancestor;
	    my $dest_saved = $dest;
	  redoindex:
	    if(open(DEST, ">$dest")) {
		if($entry eq $index) {
		    $content =~ s/<a href=\"[\.\.\/]*$currentdir\/index.html\"><b>([^<]+)<\/b><\/a>/<b>\1<\/b>/; #"
		    $content =~ s/<a href=\"index.html\"><b>([^<]+)<\/b><\/a>/<b>\1<\/b>/;  #"
		} else {
		    $content =~ s/<a href=\"[\.\.\/]*$entry\">([^<]+)<\/a>/\1/; #"
		}
		$content =~ s/\t/<img src=\"${ancestor}img\/spacer.gif\" height=1 width=10 border=0>/g; #"
		print DEST "<HTML><HEAD><TITLE>WebCalendar Manual: $dirname</TITLE>";
		my $tmp =  $::page_header;
		my $pdepth=""; 
		if($depth) { $pdepth = "../" x $depth;}
		$tmp =~ s#<\!\-\-javascript:(.+)\-\-\>#<script language=\"JavaScript\" src=\"$pdepth$1\"><\/script>#;
		$tmp =~ s#<\!\-\-stylesheet:(.+)\-\-\>#<link REL=\"stylesheet\" TYPE=\"text/css\" HREF=\"$pdepth$1\">#;
 	        my $content_header = &get_content_header;
 	        my $content_footer = &get_content_footer;
		if($ancestor) {
		    $tmp =~ s#=\"img/#=\"${ancestor}img/#g; #"
		    $content_header =~ s#=\"img/#=\"${ancestor}img/#g; #" 
		    $content_footer =~ s#=\"img/#=\"${ancestor}img/#g; #" 
		}
		print DEST $tmp;
		my @lines = split(/\n/,$content);
		print DEST "<div id=\"slide\" style=\"position:absolute;top:140;left:2;\">\n";
 	        print DEST $content_header;
		print DEST "<table border=0>\n";
		for $tmp (@lines) {
		    if($upindex) {
			$tmp =~ s#<a href=\"#<a class=\"nav\" href=\"$destSubdir/#; #"
		    } else {
			$tmp =~ s#<a href#<a class=\"nav\" href#; #"
		    } 
		    print DEST "<tr><td nowrap><font size=2>$tmp</font></td></tr>\n";
		}
		print DEST "</table>\n";
 	        print DEST $content_footer;
		print DEST "</div>\n";		
  	        print DEST "<!-- end navigation table -->\n";
  	        print DEST "</td><td valign=top><p><p>\n";
  	        my $tmpfile = preprocess($file);
#=============================================================================================================
	    my $ltime = time;
	    my $mtime = -M $file;
	    $ltime -=  int( $mtime * 86400);
	    my $datetime= "<br><font color=#aaaaaa size=1>Last updated:  " .
		strftime("%a, %e %b %Y %H:%M:%S %Z", localtime($ltime)) . "</font>";
#=============================================================================================================

		if(open(SRC, "<$tmpfile") ) {
		    while(<SRC>) {
			next if /^<\/?HTML>/i;
			next if /^<\/?BODY/i;
			next if /<label/i;
			next if /<index/i;
#			s/<td bgcolor=#ECFFF0 width=\"100%\">/<td valign=middle bgcolor=#ECFFF0><img src=\"img\/warning.gif\" width=29 height=29><\/td><td valign=middle bgcolor=#ECFFF0 width=\"90%\">/g;
			s#\"misc/javascript.js\"#\"${ancestor}misc/javascript.js\"#g;
			s#<img\s+src=\"img/#<img src=\"${ancestor}img/#g;
			s#\"Javascript:sp\(\'img#\"Javascript:sp\(\'${ancestor}img#ig;
			s#\"Javascript:sp\(\'misc#\"Javascript:sp\(\'${ancestor}misc#ig;
			s#<h2>#<h2>$h2filler #i;
			s#</h2># $rellif2h</h2>#i;
			s#<h3>#<h3>$h3filler #i;
			s#</h3># $rellif3h</h3>#i; #"
			print DEST $_;
		    }
		    close SRC;
		}
	        if($tmpfile) {unlink $tmpfile;} 
	        my $the_footer = $::page_footer;
	        $the_footer =~ s/<datetime>/$datetime/;
		print DEST $the_footer;
		$tmp = &getcoollink;  
                $tmp =~ s#<img\s+src=\"img/#<img src=\"${ancestor}img/#g; #"
  	        print DEST $tmp;
		print DEST "</HTML>";
		close DEST;
	   }
	    if(not $dirname and  $entry eq $index and $upindex == 0) {
		$upindex++;
		$dest = "$destination/up_index.html";
		$ancestor = "$destSubdir/";
		goto redoindex;
	    } else {
		$ancestor=$ancestor_saved;
		$dest = $dest_saved;
	    }
	}
	$content = $saved;
    }

    for $entry (@files) {
	next if $entry =~ /^\./ or $entry eq $index;
	$file = "$fullpath/$entry";
	next if -l $file;      # don't process symbolic links
	if( -d $file) {  push @subdirs, $entry;}
    }
    # traverse subdirs
    my ($subdir, $prefix);
    $prefix=""; if($dirname) { $prefix="$dirname/";}
    for $subdir (@subdirs) { generateDoc("$prefix$subdir");  }
}

#=============================================================================================================
sub readindex {
    my ($file) = (@_);
    #print "... reading $file \n";
    my $ans="";
    if(open(RR,  "<$file")) {
	while(<RR>) {
	    chop;
	    my ($name, $label, $jnk) = split(/\s+/, $_);
	    $label =~ s/_=_/ /g; 
	    if($name =~ "index.html") {
		$ans .= "<a href=\"$name\"><b>$label</b></a>\n";
	    } else {
		$ans .= "<a href=\"$name\">$label</a>\n";
	    }
	}
	close RR;
    }
    return $ans;
}
#=============================================================================================================

sub makeIndexInDir { # dirname relative to $srcSubdir
    my ($dirname) = (@_);
    my $fullpath = "$rootDir/$srcSubdir/$dirname";
    $fullpath =~ s/\/+/\//g;    $fullpath =~ s/\/$//g;     # trim //

    if( -l $fullpath) { next; }                          # don't process symbolic links
    if( not opendir(DIR, "$fullpath") ) { return undef;} # not a directory
    my @files = readdir(DIR); closedir(DIR);
    if( ! -f "$fullpath/$index") { return undef;}        # directory doesn't have the right structure
    my ($entry, $file, @subdirs, %hash);
    @subdirs=();
    %hash = ();

    for $entry (@files) {
	next if $entry =~ /^\./;
	next if $entry =~ /\~$/; 
	next if $dirname and $entry eq $index;
	$file = "$fullpath/$entry";
	next if -l $file;      # don't process symbolic links
	my ($section, $label, $isdir)=("", "", 0);
	if( -d $file) { 
	    ($section, $label) = ReadDirIndexFile($file);
	    if($section) {
		push @subdirs, $entry;
		$isdir = 1;
	    }
	} elsif (-f $file) {
	    ($section, $label) = ReadHtmlFile($file);
	}

	if($section) {
	    my $href={};
	    $href->{'label'} = $label;
	    $href->{'section'} = $section;
	    if($isdir) {$href->{'file'} = "$entry/$index";}
	    else {$href->{'file'} = $entry;}
	    $hash{$section} = $href;
	}
    }
    # generate files
    my (@keys) = (sort keys %hash);
    if( scalar(@keys) > 0) {
	my ($key, $href, $indent, $href, $idxfile);  
	$idxfile = "$fullpath/.index";
	open(IDX, ">$idxfile") or die "Cannot open \"$idxfile\" to write\n";
	for $key (@keys) {
	    $href = $hash{$key};
	    my ($label, $file);
	    $file = $href->{'file'};
	    $label = $href->{'label'};
	    $label =~ s/\s+/_=_/g;
	    print IDX "$file  $label  $key\n";
	}
	close IDX;
	# traverse subdirs
	my ($subdir, $parentdir);
	for $subdir (@subdirs) { makeIndexInDir( "$dirname/$subdir");  }
    }
}
#=============================================================================================================
sub ReadDirIndexFile {
    my ($dirpath) = (@_);
    my $file = "$dirpath/index.html";
    my ($section, $label) = ("", "");
    if( -f $file and open(FILE, "<$file")) {

	while(<FILE>) {
	    if(/<label\s+value=\"([^\"]+)\"\s*>/i) {     #"
		$label = $1;
	    } elsif(/<pindex\s+value=\"([^\"]+)\"\s*>/i) { #"
		$section = $1;
	    }
	    if( $section and $label) { last;}
	}
    }
    return($section, $label);
}
#=============================================================================================================
sub ReadHtmlFile {
    my ($file) = (@_);
    my ($section, $label) = ("", "");
    if( -f $file and open(FILE, "<$file")) {
	while(<FILE>) {
	    if(/<label\s+value=\"([^\"]+)\"\s*>/i) {     #"
		$label = $1;
	    } elsif(/<index\s+value=\"([^\"]+)\"\s*>/i) { #"
		$section = $1;
	    }
	    if( $section and $label) { last;}
	}
    }
    return($section, $label);
}
#=============================================================================================================

sub mkdirhier {
    my ($pathname) = (@_);
    my ($abspath, @path, $k);
    if($pathname =~ /^\//) { $abspath = $pathname;}
    elsif($pathname =~ /^\.\//) { 
	use Cwd;
	my $tmp = cwd();
	$pathname =~ s/^\.\///;
	$abspath = "$tmp/$pathname";
    } else {
	print "Don't know how to mkdir $pathname";
	exit 1;
    }
    @path = split(/\//, $abspath);
    $pathname="";
    for $k (@path) {
	if($k) {
	    $pathname .= "/$k";
	    if(! -d "$pathname") {
		if(! mkdir($pathname, 0755) ) {
		    print  "Cannot mkdir \"$pathname\"";
		    exit 1;
		}
	    }
	}
    }
}
#=============================================================================================================
sub preprocess {
    my ($file) = (@_);
    my $ans="";
    my ($line, $tmpfile);
    if(open(FH, "<$file")) {
	my $tmpfile= "/tmp/zm$$";
	my $indices="";
	my $idxcounter=1;
	my $state = 0;
	my $txt="";
	#== build index ===
	while(<FH>) {
	    if($_ =~ /<question>(.+)<\/question>/) {
		$txt = $1; $state = 2;
	    } elsif( $_ =~ /<question>(.*)/) {
		$txt = $1; $state = 1; 
	    } elsif( $_ =~ /(.*)<\/question>(.*)/) {
		if($state) {
		    $txt .= $1;   $_= $2; $state = 2;
		}
	    } else {
		if($state) { $txt .= $_; }
	    }
	    if($state == 2) {
		my $tmp = "$idxcounter. <a href=\"\#a$idxcounter\"> $txt </a><br>";
		$indices .= $tmp;
		$state = 0; $txt ="";
		$idxcounter++; 
	    }
	}
	seek(FH, 0, 0); $idxcounter =1;
	if(open(OUT, ">$tmpfile")) {
	    while(<FH>) {
		s/<\/question>/<\/b><\/a><br><p>/g;
		if( /<question>/) {
		    s/<question>/<a name=\"a$idxcounter\"><b class="bq">Q$idxcounter. /; $idxcounter++;  #"
		}
		print OUT $_;
		if($indices and /<\/h2>/) {  print OUT "\n",  $indices, "\n<br><br>\n"; $indices="";}
	    }
	    close OUT;
	    $ans = $tmpfile;
	}
	close FH;
    }
    return $ans;
}
#=============================================================================================================
sub getcoollink {
    my $flag= int (rand(3));
    my $file="img/cool${flag}.gif";
    my $ans=<<END;
<a href="http://directory.mozilla.org/Computers/Programming/Languages/Perl/WWW/Scripts/Calendars/" target=domz><img src="$file" width=140 height=45 border=1 align=right alt="D M O Z listing" title="D M O Z listing"></a><a href="http://www.math.utexas.edu/mailman/listinfo/webcalendar"><img src="img/mailman.jpg" width=148 height=45 border=1 align=right alt="Mailing list" title="Mailing List"></a><a href="http://freshmeat.net/projects/web-calendar" target=fmeat><img src="img/freshmeat.gif" width=140 height=45 border=1 align=right alt="On Freshmeat" title="On Freshmeat"></a>
END
    ;
}
#=============================================================================================================
sub get_content_header {
    return "";
}
sub get_content_footer {
    return "";
    my $ans =<<END;
<br>
<table border=0 width=80><tr><td align=center>
<a href="http://dir.remember.yahoo.com/tribute">
<img src="img/ribbon.gif" width=36 height=59 border=0></a></td></tr>
<tr><td align=center>
<a href="http://dir.remember.yahoo.com/tribute"><font color=#999999>9.11.2001</font></a>
</td></tr></table>

END
;
    return $ans;
}
#=============================================================================================================




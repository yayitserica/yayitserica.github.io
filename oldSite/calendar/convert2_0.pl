#!/usr/bin/perl
#
# This little script converts webcal data to 2.0 format
#

use strict;

sub usage {
  print "Usage: $0 ",  'spooldir', "\n";
  exit 0;
}

my $spool = $ARGV[0];

if( !$spool) { &usage;}

if( ! -d "$spool") {
    print "$spool does not exist!\n";
    exit 1;
}   

my $err;

if( opendir(DIR, "$spool")) {
  my ($file, $aaa, $back, @subdirs, $sdir, @files);
  @subdirs = readdir(DIR);
  closedir(DIR);
  @files = ("info", "data", "mgroup");
  for $sdir (@subdirs) {
    $err = 0;
    next if -f "$spool/$sdir/2.0"; 
    next if ! -f "$spool/$sdir/info"; 

    print STDERR "Converting $sdir:  ";
    for $file (@files) {
      $aaa = "$spool/$sdir/$file";
      if(-f $aaa) {
	$back = "$aaa-back";
	system( ("cp", "$aaa", "$back"));
	print STDERR "$file, ";
	if(open(FILE, "<$back")) {
	  if(open(OUT, ">$aaa")) {
	    while (<FILE>) {
	      s/\$calinfo\{/\$::calinfo\{/g; #
	      s/\@caldata =/\@::caldata =/g; #
	      s/\%meetingGroups =/\%::meetingGroups =/g; #
	      print OUT $_;
	    }
	    close OUT;
	  } else { $err = 1; print STDERR "Cannot convert $aaa\n";}
	  close FILE;
	} else  { $err = 1; print STDERR "Cannot convert $aaa\n";}
      }
    }
    print STDERR "\n";
    if(! $err) { system( ("touch", "$spool/$sdir/2.0"));}
  }
}

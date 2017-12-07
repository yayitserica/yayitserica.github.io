#!/usr/bin/perl
#
# Run fix.perl English
# to create a hardcoded English version named
# webcal.perl-English and webcalSupport.pm-English
#

sub usage {
  print "Usage: $pgmname ",  'language', "\n";
  exit 0;
}

$arg = $ARGV[0];

if( !$arg) { &usage;}
$language = $arg . ".perl";
if( ! -f "./$language") {
    print "$language does not exist!\n";
    exit 1;
}   
$counter = 0;
do "$language";
if(open(FILE, "<webcal.pl") and open(OUT, ">webcal.pl-$arg")) {
  while (<FILE>) {
    if(/\%::phr=\(\);/) { print "\n";}
    else {
      s/\$::phr{\'([^\']+)\'}/$::phr{$1}/g;
      print OUT $_;
    }
  }
  close FILE;
  close OUT;
  print "webcal.pl =====> webcal.pl-$arg\n";
  $counter++;
}

if(open(FILE, "<webcald.pl") and open(OUT, ">webcald.pl-$arg")) {
  while (<FILE>) {
    if(/\%::phr=\(\);/) { print "\n";}
    elsif(/do "\$langFile"/) { print "\n";}
    else {
      s/\$::phr{\'([^\']+)\'}/$::phr{$1}/g;
      print OUT $_;
    }
  }
  close FILE;
  close OUT;
  print "webcald.pl =====> webcald.pl-$arg\n";
  $counter++;
}


if(open(FILE, "<webcalSupport.pm") and open (OUT, ">webcalSupport.pm-$arg")) {
  while (<FILE>) {
    if(/\%::phr=\(\);/) { print "\n";}
    elsif(/&webcalSupport::loadLangfile;/) { print "\n";}
    elsif(/do "\$langFile"/) { print "\n";}
    elsif(/\'multilingual\'\w*=>\w*/) {
      print OUT "\'multilingual\' => 0,\n";
    } else {
      s/\$::phr{\'([^\']+)\'}/$::phr{$1}/g;
      print OUT $_;
    }
  }
  close FILE;
  close OUT;
  print "webcalSupport.pm =====> webcalSupport.pm-$arg\n";
  $counter++;
} 

print "\n\n";
if($counter == 3) {
  print "To use the $arg version of webCal, replace webcal.pl, webcald.pl and webcalSupport.pm ";
  print "with their -$arg counterparts and reinstall\n";
} else {
  print "Translation falied\n";
}
print "\n\n";

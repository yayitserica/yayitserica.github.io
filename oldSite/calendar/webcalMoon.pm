#!/usr/bin/perl -w
#
# $Header: /home/cvs/webCal/webCal2/webcalMoon.pm,v 1.2 2003/06/27 20:09:04 mzou Exp $
#


#  Adapted and ported from the program "moontool"
#   by John Walker, February 1999. 
#
package webcalMoon;
use strict;
#=========================================================================
%webcalMoon::data =   (
   'epoch'     =>   2444238.5,  # 1980 January 0.0 
   'elonge'    =>   278.833540, # Ecliptic longitude of the Sun at epoch 1980.0 
   'elongp'    =>   282.596403,	# Ecliptic longitude of the Sun at  perigee 
   'eccent'    =>   0.016718,	# Eccentricity of Earth's orbit 
   'sunsmax'   =>   1.495985e8,	# Semi-major axis of Earth's orbit, km 
   'sunangsiz' =>   0.533128,	# Sun's angular size, degrees, at
   #   semi-major axis distance 
   'mmlong'    =>  64.975464,	# Moon's mean lonigitude at the epoch 
   'mmlongp'   =>  349.383063,	# Mean longitude of the perigee at the epoch 
   'mlnode'    =>  151.950429,	# Mean longitude of the node at the epoch 
   'minc'      =>  5.145396,	# Inclination of the Moon's orbit 
   'mecc'      =>  0.054900,	# Eccentricity of the Moon's orbit 
   'mangsiz'   =>  0.5181,	# Moon's angular size at distance a from Earth 
   'msmax'     =>  384401.0,	# Semi-major axis of Moon's orbit in km 
   'mparallax' =>  0.9507,	# Parallax at distance a from Earth 
   'synmonth'  =>  29.53058868,	# Synodic month (new Moon to new Moon) 
   'lunatbase' =>  2423436.0,	# Base date for E. W. Brown s numbered
   #   series of lunations (1923 January 16) 
   'earthrad'  =>  6378.16,	# Radius of Earth in kilometres 
);
#=========================================================================
sub fixangle{
  my $a =(@_)[0];
  return (($a) - 360.0 * (floor(($a) / 360.0)));
}
sub torad {
  my $d =(@_)[0];
  return($d * 0.0174532925199432957692);
}
sub todeg {
  my $d =(@_)[0];
  return (  $d *57.29577951308232087);
}
sub dsin {
  my $x =(@_)[0];
  my $a = $x *0.0174532925199432957692;
  return sin($a);
}
sub dcos {
  my $x =(@_)[0];
  my $a = $x *0.0174532925199432957692;
  return cos($a);
}
sub floor {
  my $x =(@_)[0];
  if($x < 0) { return int($x) -1 ;}
  return int($x);
}
sub tan {  sin($_[0]) / cos( $_[0]);}
#=========================================================================

#/*
# * JDATE  --  Convert internal GMT date and time to Julian day
# *	       and fraction.
# */
#

sub jdate { 
  my ( $c, $m);
  my ($y, $mon, $day) = (@_);

  $m = $mon+1;
  if ($m>2) {
    $m -= 3;
  } else {
    $m += 9;
    $y--;
  }
  $c = $y/100;   
  $y -= 100 * $c;
  return $day + ($c*146097)/4 + ($y*1461)/4 + ($m*153+2)/5 + 1721119;
}

#/*
# * JTIME --    Convert internal GMT date and time to astronomical Julian
# *	       time (i.e. Julian date plus day fraction, expressed as
# *	       a double).
# */
#

sub jtime { #(int y, int mon, int day, int hour, int min, int sec)
  my($y, $mon, $day, $hour, $min, $sec) = (@_);
  return ( &jdate($y, $mon, $day)-0.5) +
    ($sec + 60.0 * $min + 3600.0 * $hour) / 86400.0;
}


#/*
# * JYEAR  --  Convert Julian date to year, month, day, which are
# *	       returned via integer pointers to integers.  
# */
#

sub jyear { 
  my ($td) = (@_)[0];
  my($j, $d, $y, $m);

  $td += 0.5;  #       /* Astronomical to civil */
  $j = floor($td);
  $j = $j - 1721119.0;
  $y = floor(((4 * $j) - 1) / 146097.0);
  $j = ($j * 4.0) - (1.0 + (146097.0 * $y));
  $d = floor($j / 4.0);
  $j = floor(((4.0 * $d) + 3.0) / 1461.0);
  $d = ((4.0 * $d) + 3.0) - (1461.0 * $j);
  $d = floor(($d + 4.0) / 4.0);
  $m = floor(((5.0 * $d) - 3) / 153.0);
  $d = (5.0 * $d) - (3.0 + (153.0 * $m));
  $d = floor(($d + 5.0) / 5.0);
  $y = (100.0 * $y) + $j;
  if ($m < 10.0) {
    $m = $m + 3;
  } else {
    $m = $m - 9;
    $y = $y + 1;
  }
  return( ($y, $m, $d));
}

#
#/*
# * JHMS  --  Convert Julian time to hour, minutes, and seconds.
# */
#

sub jhms{ 
  my $j = (@_)[0];
  my $ij;

  $j += 0.5; #         /* Astronomical to civil */
  $ij = ($j - floor($j)) * 86400.0;
  my ($h, $m, $s);
  $h = int($ij / 3600);
  $m = int(($ij / 60) % 60);
  $s = int($ij % 60);
  return(($h, $m, $s));
}

#/*
# * MEANPHASE  --  Calculates time of the mean new Moon for a given
# *		base date.  This argument K to this function is
# *		the precomputed synodic month index, given by:
# *
# *			K = (year - 1900) * 12.3685
# *
# *		where year is expressed as a year and fractional year.
# */
#

sub meanphase { 
  my ($sdate, $phase) = (@_);
  my( $k, $t, $t2, $t3, $nt1);

  # /* Time in Julian centuries from 1900 January 0.5 */
  $t = ($sdate - 2415020.0) / 36525.0;
  $t2 = $t * $t;	#	   /* Square for frequent use */
  $t3 = $t2 * $t;	#	   /* Cube for frequent use */

  $nt1 = 2415020.75933 +  $webcalMoon::data{'synmonth'} * $phase
    + 0.0001178 * $t2
      - 0.000000155 * $t3
	+ 0.00033 * dsin(166.56 + 132.87 * $t - 0.009173 * $t2);
  return $nt1;
}


#/*
# * TRUEPHASE  --  Given a K value used to determine the
# *		mean phase of the new moon, and a phase
# *		selector (0.0, 0.25, 0.5, 0.75), obtain
# *		the true, corrected phase time.
# */
#

sub truephase {			#(double k, double phase)
  my($k, $phase) = (@_);
  my( $t, $t2, $t3, $pt, $m, $mprime, $f);
  my $apcor = 0;
  
  $k += $phase;			#	   /* Add phase to new moon time */
  $t = $k / 1236.8531;		#   /* Time in Julian centuries from 1900 January 0.5 */
  $t2 = $t * $t;		#	   /* Square for frequent use */
  $t3 = $t2 * $t;		#	   /* Cube for frequent use */
  $pt = 2415020.75933
    + $webcalMoon::data{'synmonth'} * $k
      + 0.0001178 * $t2
        - 0.000000155 * $t3
	  + 0.00033 * dsin(166.56 + 132.87 * $t - 0.009173 * $t2);
  
  $m = 359.2242			#              /* Sun's mean anomaly */
    + 29.10535608 * $k
      - 0.0000333 * $t2
	- 0.00000347 * $t3;
  $mprime = 306.0253		#    /* Moon's mean anomaly */
    + 385.81691806 * $k
      + 0.0107306 * $t2
	+ 0.00001236 * $t3;
  $f = 21.2964			#              /* Moon's argument of latitude */
    + 390.67050646 * $k
      - 0.0016528 * $t2
	- 0.00000239 * $t3;
  if (($phase < 0.01) || (abs($phase - 0.5) < 0.01)) {
    #/* Corrections for New and Full Moon */
    
    $pt +=     (0.1734 - 0.000393 * $t) * dsin($m)
      + 0.0021 * dsin(2 * $m)
	- 0.4068 * dsin($mprime)
	  + 0.0161 * dsin(2 * $mprime)
   	    - 0.0004 * dsin(3 * $mprime)
	      + 0.0104 * dsin(2 * $f)
		- 0.0051 * dsin($m + $mprime)
		  - 0.0074 * dsin($m - $mprime)
		    + 0.0004 * dsin(2 * $f + $m)
		      - 0.0004 * dsin(2 * $f - $m)
			- 0.0006 * dsin(2 * $f + $mprime)
			  + 0.0010 * dsin(2 * $f - $mprime)
			    + 0.0005 * dsin($m + 2 * $mprime);
    $apcor = 1;
  } elsif ((abs($phase - 0.25) < 0.01 || (abs($phase - 0.75) < 0.01))) {
    $pt +=     (0.1721 - 0.0004 * $t) * dsin($m)
      + 0.0021 * dsin(2 * $m)
	- 0.6280 * dsin($mprime)
	  + 0.0089 * dsin(2 * $mprime)
   	    - 0.0004 * dsin(3 * $mprime)
	      + 0.0079 * dsin(2 * $f)
		- 0.0119 * dsin($m + $mprime)
		  - 0.0047 * dsin($m - $mprime)
		    + 0.0003 * dsin(2 * $f + $m)
		      - 0.0004 * dsin(2 * $f - $m)
			- 0.0006 * dsin(2 * $f + $mprime)
			  + 0.0021 * dsin(2 * $f - $mprime)
			    + 0.0003 * dsin($m + 2 * $mprime)
			      + 0.0004 * dsin($m - 2 * $mprime)
				- 0.0003 * dsin(2 * $m + $mprime);
    if ($phase < 0.5) {
      #/* First quarter correction */
      $pt += 0.0028 - 0.0004 * dcos($m) + 0.0003 * dcos($mprime);
    } else {
      #/* Last quarter correction */
      $pt += -0.0028 + 0.0004 * dcos($m) - 0.0003 * dcos($mprime);
    }
    $apcor = 1;
  }
  if (!$apcor) {return 0.0;}
  return $pt;
}


#/*
# * KEPLER  --	Solve the equation of Kepler.
# */

sub kepler{ #(double m, double ecc)
  my( $m, $ecc) = (@_);
  my ($e, $delta);
  $e = $m = torad($m);
  do {
    $delta = $e - $ecc * sin($e) - $m;
    $e -= $delta / (1 - $ecc * cos($e));
  } while (abs($delta) > 0.000001);
  return $e;
}

#/*
# * PHASE  --  Calculate phase of moon as a fraction:
# *
# *	The argument is the time for which the phase is requested,
# *	expressed as a Julian date and fraction.  Returns the terminator
# *	phase angle as a percentage of a full circle (i.e., 0 to 1),
# *	and stores into pointer arguments the illuminated fraction of
# *      the Moon's disc, the Moon's age in days and fraction, the
# *	distance of the Moon from the centre of the Earth, and the
# *	angular diameter subtended by the Moon as seen by an observer
# *	at the centre of the Earth.
# */

sub phase { 
  my($pdate) = (@_)[0];
  my( $Day, $N, $M, $Ec, $Lambdasun, $ml, $MM, $MN, $Ev, $Ae, $A3, $MmP,
      $mEc, $A4, $lP, $V, $lPP, $NP, $y, $x, $Lambdamoon,
      $MoonAge, $MoonPhase, $Ecs,
      $MoonDist, $MoonDFrac, $MoonAng,
      $F, $SunDist, $SunAng);

  #/* Calculation of the Sun's position */
  $Day = $pdate - $webcalMoon::data{'epoch'};	   # /* Date within epoch 
  $N = fixangle((360 / 365.2422) * $Day);          # /* Mean anomaly of the Sun */
  $M = fixangle($N + $webcalMoon::data{'elonge'} - $webcalMoon::data{'elongp'});   # /* Convert from perigee co-ordinates to epoch 1980.0 */
  $Ec = kepler($M, $webcalMoon::data{'eccent'});     #/* Solve equation of Kepler */
  $Ec = sqrt((1 + $webcalMoon::data{'eccent'}) / (1 - $webcalMoon::data{'eccent'})) * tan($Ec / 2);
  $Ec = 2 * todeg(atan2($Ec,1));   # /* 1 anomaly */
  $Lambdasun = fixangle($Ec + $webcalMoon::data{'elongp'}); # /* Sun's geocentric ecliptic longitude */
  #/* Orbital distance factor */
  $F = ((1 + $webcalMoon::data{'eccent'} * cos(torad($Ec))) / (1 - $webcalMoon::data{'eccent'} * $webcalMoon::data{'eccent'}));
  $SunDist = $webcalMoon::data{'sunsmax'} / $F;	 #   /* Distance to Sun in km */
  $SunAng = $F * $webcalMoon::data{'sunangsiz'}; #    /* Sun's angular size in degrees */

  #/* Calculation of the Moon's position */
  #/* Moon's mean longitude */
  $ml = fixangle(13.1763966 * $Day + $webcalMoon::data{'mmlong'});
  #/* Moon's mean anomaly */
  $MM = fixangle($ml - 0.1114041 * $Day - $webcalMoon::data{'mmlongp'});
  #/* Moon's ascending node mean longitude */
  $MN = fixangle($webcalMoon::data{'mlnode'} - 0.0529539 * $Day);
  #/* Evection */
  $Ev = 1.2739 * sin(torad(2 * ($ml - $Lambdasun) - $MM));
  #/* Annual equation */
  $Ae = 0.1858 * sin(torad($M));
  #/* Correction term */
  $A3 = 0.37 * sin(torad($M));

  #/* Corrected anomaly */
  $MmP = $MM + $Ev - $Ae - $A3;

  #/* Correction for the equation of the centre */
  $mEc = 6.2886 * sin(torad($MmP));

  #/* Another correction term */
  $A4 = 0.214 * sin(torad(2 * $MmP));

  #/* Corrected longitude */
  $lP = $ml + $Ev + $mEc - $Ae + $A4;

  #/* Variation */
  $V = 0.6583 * sin(torad(2 * ($lP - $Lambdasun)));

  #/* 1 longitude */
  $lPP = $lP + $V;

  #/* Corrected longitude of the node */
  $NP = $MN - 0.16 * sin(torad($M));

  #/* Y inclination coordinate */
  $y = sin(torad($lPP - $NP)) * cos(torad($webcalMoon::data{'minc'}));

  #/* X inclination coordinate */
  $x = cos(torad($lPP - $NP));

  #/* Ecliptic longitude */
  $Lambdamoon = todeg(atan2($y, $x));
  $Lambdamoon += $NP;

  #/* Calculation of the phase of the Moon */
  #/* Age of the Moon in degrees */
  $MoonAge = $lPP - $Lambdasun;
  #/* Phase of the Moon */
  $MoonPhase = (1 - cos(torad($MoonAge))) / 2;
  #/* Calculate distance of moon from the centre of the Earth */
  $MoonDist = ($webcalMoon::data{'msmax'} * (1 - $webcalMoon::data{'mecc'} * $webcalMoon::data{'mecc'})) /
    (1 + $webcalMoon::data{'mecc'} * cos(torad($MmP + $mEc)));

  #/* Calculate Moon's angular diameter */

  $MoonDFrac = $MoonDist / $webcalMoon::data{'msmax'};
  $MoonAng = $webcalMoon::data{'mangsiz'} / $MoonDFrac;

  my $phh = fixangle($MoonAge) / 360.0;
  return $phh;
}


#
#/*
# * PHASEHUNT  --  Find time of phases of the moon which surround
# *		the current date.  Five phases are found, starting
# *		and ending with the new moons which bound the
# *		current lunation.
# */
#
sub phasehunt {
  my $sdate = (@_)[0];

  my ( $adate, $k1, $k2, $nt1, $nt2);
  my ( $nt, $yy, $mm, $dd);
  my (@ans);

  $adate = $sdate - 45;

  ($yy, $mm, $dd) =jyear($adate);
  $k1 = floor(($yy + (($mm-1) * (1.0 / 12.0)) - 1900) * 12.3685);
  $adate = $nt1 = meanphase($adate, $k1);
  while (1) {
    $adate += $webcalMoon::data{'synmonth'};
    $k2 = $k1 + 1;
    $nt2 = meanphase($adate, $k2);
    if($nt1 <= $sdate && $nt2 > $sdate) {last;}
    $nt1 = $nt2;
    $k1 = $k2;
  }
  (@ans) = (truephase($k1, 0.0), truephase($k1, 0.25), truephase($k1, 0.5),truephase($k1, 0.75), 
	    truephase($k2, 0.0), truephase($k2, 0.25), truephase($k2, 0.5), truephase($k2, 0.75));
}
#===============================================================

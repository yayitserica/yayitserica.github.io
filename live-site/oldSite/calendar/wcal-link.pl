#!/usr/bin/perl

use lib "/home/sites/yayitserica.com/public_html/calendar";

#!/usr/bin/perl -w
#
# $Header: /home/cvs/webCal/webCal2/webcal-link.pl,v 1.12 2004/08/21 05:07:06 mzou Exp $
#

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
use Fcntl ':flock';
use Fcntl ':DEFAULT';
use Symbol;
use webcalConfig;
use webcalVirtual;
use webcalSupport;
use webcalLock;

#=====================================================================================================
#
#
# the main entry point
#

if (1) {
  my ($method, $buffer, $command, $username, $calname, $scriptname, $signup, @nvpairs, $pair, $name, $value);
  $method=$ENV{'REQUEST_METHOD'} or die("To be used as a CGI-BIN program!");

  if($method eq 'GET') {if(defined $ENV{'QUERY_STRING'}) { $buffer = $ENV{'QUERY_STRING'};}}
  else { read(STDIN, $buffer, $ENV{'CONTENT_LENGTH'});}
  $scriptname = $ENV{'SCRIPT_NAME'};

  $ENV{PATH} = "/bin:/usr/bin";
  &webcalSupport::initVars;
  &webcalVirtual::initVirtualServer();

  # parse query parameters
  @nvpairs = split(/&/, $buffer);
  foreach $pair (@nvpairs) {
      ($name, $value) = split(/=/, $pair, 2);
      next if !defined $name or $name eq "";
      $name =~ s/%([a-fA-F0-9][a-fA-F0-9])/pack("C",hex($1))/eg;
      $value = &webcalSupport::urldecode($value,0); 
      # If they try to include server side includes, erase them.
      $value =~ s/<!--(.|\n)*-->//g;
      $::info{$name} = $value;
  }
  # end of parse
  $command = $::info{'c'}; $command='post' if !$command;
  $command= &webcalSupport::authenticate($command, $scriptname);

  my $user = &webcalSupport::untaintname($::d{'remote_user'});
  my $cal = "$::o{'spooldir'}/$user";
  if( ! -d  "$cal") {
      &webcalSupport::calerror("Calender \'$user\' does not exist!", -1);
      exit(0);
  }


  my $file = "$cal/links";
  if($command eq 'post') { # post form
      my ($i, $k, $v, $n1, $n2, $j);
      %::flinks=(); $i = 0;
      if( -f $file) { &webcalSupport::doReadFile("$file"); }
      delete $::calinfo{'bgcolor'};&webcalSupport::headers('my favorite links');
      print "<br><center><h2>My Favorite Web Sites</h2></center>";
      print "<form action=\"$::o{'cgilink'}\" method=post>";
      print "<center><table border=0 cellspacing=2 cellpadding=0>";
      foreach $k (keys %::flinks) {
          $v = $::flinks{$k};
          $k = &webcalSupport::urldecode($k, 1);
          $v = &webcalSupport::urldecode($v, 1);
          $n1 = "label$i"; $n2 = "url$i";
          print "<tr><td><font size=2>Site: <input type=input name=$n1 size=12 value=\"$k\"></font></td>";
          print "<td><font size=2>URL: <input type=input name=$n2 size=30 value=\"$v\"></font></td></tr>";
          $i++;
      }
      for($j=0; $j<4; $j++) { 
          $n1 = "label$i"; $n2 = "url$i";
          print "<tr><td><font size=2>Site: <input type=input name=$n1 size=12></font></td>";
          print "<td><font size=2>URL: <input type=input name=$n2 size=30></font></td></tr>";
          $i++;
      }
      print <<END;
<tr><td colspan=2 align=center><font size=2><b><input type=submit value="Submit">&nbsp;&nbsp;
<input type=button value=" Cancel " onclick="javascript:self.close()"></td></tr>
END
      print "</table></center><br>";
      print "<input type=hidden name=total value=$i>";
      print "<input type=hidden name=c value='process'>";
      print "</form></body></html>";
      exit(0);
  } elsif($command eq 'process') { #
      my ($i, $k, $v, $n1, $n2, $j);
      my $total = $::info{'total'}; $total = 0 if !$total;
      my $FILEL=gensym;
      if(sysopen($FILEL, "$file", O_WRONLY | O_CREAT)) {
          &webcalLock::doflock( \*$FILEL, LOCK_EX, "$file") or
              &webcalSupport::calerror("Cannot lock file '$file': $!\n");     
          truncate($FILEL, 0);
          print $FILEL '%::flinks=(', "\n";
          for($i=0; $i< $total; $i++) {
              $n1 = "label$i", $n2 = "url$i";
              $n1 = $::info{$n1}; $n2 = $::info{$n2}; 
              $n1=~ s/^\s+//g;$n2=~ s/^\s+//g; $n1=~ s/\s+$//g;$n2=~ s/\s+$//g;
              if($n1 and $n2) {
                  $n1=~ s/\'/\\\'/g; $n2=~ s/\'/\\\'/g;
                  print $FILEL "\'", $n1, "\'", '=>', "\'", $n2, "\'", ",\n";
              }
          }
          print $FILEL ");\n 1;\n";
          &webcalLock::doflock( \*$FILEL, LOCK_UN, "$file") or 
              &webcalSupport::calerror("Cannot unlock file '$calname/info': $!\n"); 
          close $FILEL;
          delete $::calinfo{'bgcolor'};&webcalSupport::headers('ok');
          print "<center><br>";
          print "<br><font color=#ff0000>Links Updated</font><br><br><br>";
          print <<ENBD;
<table border=0 cellpadding=2><tr><td><form><b><input type=button value=" Close " onclick="javascript:self.close()"></b></form></td></tr></table>
ENBD
          print "</center></body></html>";
          exit(0);
      } else { &webcalSupport::calerror("Cannot open $file.", -1); }
  } else {
      &webcalSupport::calerror("Unknown command \'$command\'.", -1); 
  }      
}
#======================================================================================

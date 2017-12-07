#!/usr/bin/perl

use lib "/home/sites/yayitserica.com/public_html/calendar";

#!/usr/bin/perl
#
#
# $Header: /home/cvs/webCal/webCal2/webcal-misc.pl,v 1.8 2004/08/21 05:07:06 mzou Exp $
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
  %::info = ();

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
  my $script = $::info{'cmd'};
  if(!$script) { &webcalSupport::calerror("Don't know what to do", -1); exit(0);}
  $command = $::info{'c'}; $command='post' if !$command;
  $command= &webcalSupport::authenticate($command, $scriptname);

  my $who = $::info{'w'}; if(!$who) { $who = $::d{'remote_user'};}
  my $user = &webcalSupport::untaintname($who);  
  my $cal = "$::o{'spooldir'}/$user";
  if(! -d "$cal"){&webcalSupport::calerror("Calender \'$user\' does not exist!", -1); exit(0);}

  if( -f "$cal/info") { &webcalSupport::doReadFile("$cal/info"); }
  &webcalSupport::loadLangfile;
  &webcalSupport::make_style_sheet(""); 

  if(&webcalSupport::doauth() != 4) {
      &webcalSupport::calerror("Permission denied", -1); exit(0);
  }

  if($script eq 'vgp') {
      if(not &webcalSupport::isadmin($::d{'remote_user'})) {
	  &webcalSupport::calerror("This is a privileged command for calendar administrators.", -1); exit(0);
      }
      my $msg ="";
      delete $::calinfo{'bgcolor'}; &webcalSupport::headers('Admin groups');
      if($command eq 'cnew') {
	  my $in = $::info{'newgps'}; my @gps = split(/\s+/, $in); 
	  my $cnt= &webcalSupport::createvgroups(@gps);
	  $command = 'post'; $msg = "<b><font color=red>$cnt</font></b> new groups have been created.";
      } elsif($command eq 'uvgp1') { # process one gp
	  my $admin =$::info{'gadm'}; my $gp=$::info{'gp'};
	  my $gmembers = $::info{'gmembers'}; my @members= split(/\s+/, $gmembers);
	  &webcalSupport::update1vgroup($gp, $admin, @members);
	  $command = 'post'; $msg = "Virtual group <b>$gp</b> has been updated";
      }
      if($command eq 'post') { # post form
	  my (@allgps, $i, $k, $txt); @allgps = &webcalSupport::listvgroups; $i=0;
	  $txt="<table border=0 cellpadding=4 cellspacing=4><tr>";
	  for $k (@allgps) {
	      $txt .= "<td><a href=\"$::o{'cgimisc'}?cmd=vgp&c=vgp1&gp=$k\"><font color=blue><b>$k</b></font></a></td>";
	      $i++; if(($i%8) == 0) { $txt .= "</tr>\n<tr>"; $i=0;}
	  }
	  $txt .= "<td>&nbsp</td>" x (8-$i); $txt .= "</tr>\n";
	  $txt .= "</table>\n";
	  print <<END;
<br><center><h2>Virtual Calendar Groups Administration</h2></center>
<p><center><font color=red><i>$msg</i></font></center></p>
<p><center>
<table border=0 width=600><tr><td>
<blockquote>
You can use <b>Virtual calendar groups</b> to arrange your calendars into
groups. User in one group can only see calendars in his/her group.
<br><br>
Existing virtual groups are listed below. To edit/update an existing
virtual group, click on the group name and follow the instructions on
subsequent screens. To delete an existing group, just remove all its
members.
</blockquote>
</td></tr></table>
<br>
$txt<br>
<table border=0 width=600><tr><td>
<blockquote>
To create new virtual calendar groups, click <a href="$::o{'cgimisc'}?cmd=vgp&c=new"><b>here.</b></a>
</blockquote>
</td></tr></table>
</center>
</body></html>
END
    ;
      } elsif($command eq 'new') {
	  print <<END;
<br><center><h2>Virtual Calendar Groups Administration</h2></center>
<p><center>
<table border=0 width=600><tr><td>
<blockquote>
Enter new virtual group names in the textarea below, one name per line.
Virtual group names must be alpha-numerical without white spaces.
</blockquote>
</td></tr></table>
<br>
<form name=newvgps action=$::o{'cgimisc'}>
<input type=hidden name=cmd value=vgp><input type=hidden name=c value=cnew>
<textarea name="newgps" rows=6 cols=40 class="fmText"></textarea>
<br>
<br>
<input type=submit value=" Submit " class="fmBtnSt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type=button value=" Cancel " class="fmBtnSt" onclick="javascript:history.go(-1)">
</form>
</center>
</body></html>
END
    ;	  
      } elsif($command eq 'vgp1') { # process one gp
	  my $gp = $::info{'gp'};
	  my ($adm, @mems) = &webcalSupport::list1vgroup($gp);
	  my $mems= join("\n",@mems);
	  print <<END;
<br><center><h2>Virtual Calendar Groups Administration</h2></center>
<p><center>
<table border=0 width=600><tr><td>
<blockquote>
A <i>Virtual Calendar Group</i> is a collection of calendars on a calendar
Server. Calendar names in each group are visible by all members in the group.
<br><br>
You may assign a separate administrator for each virtual group. Virtual
group administrator can edit/delete calendar events on all calendars
in its group. Unlike a normal calendar administrator defined in
<i>webcalConfig.pm</i>, a virtual group administrator cannot modify calendars
outside his/her group.  Virtual group administrator can also create new calendars.
All new calendars created by a virtual group administrator
belong to his/her group.
<br><br>
<b>All members in a virtual group must be existing calendar names.</b> Virtual
groups with no members will be deleted. 

</blockquote>
</td></tr></table>
<br><br>
<form name=uvgp action=$::o{'cgimisc'}>
<input type=hidden name=cmd value=vgp><input type=hidden name=c value=uvgp1>
<input type=hidden name=gp value="$gp">
<table border=0>
<tr><td align=right><b>Virtual Group Name:</b></td><td><font color=red><b>$gp</b></font></td></tr></td>
<tr><td align=right><b>Group Admin:</b></td><td><input type=text name="gadm" size=40 value="$adm" class="fmText"></td></tr>
<tr><td align=right><b>Calendars:</b></td><td><textarea name="gmembers" rows=6 cols=38 class="fmText">$mems</textarea></td></tr>
<tr><td colspan=2><br></td></tr>
<tr><td colspan=2 align=center><b><input type=submit value=" Submit " class="fmBtnSt">&nbsp;&nbsp;&nbsp;&nbsp;
<input type=button value=" Cancel " onclick="javascript:history.go(-1)" class="fmBtn"></b></td></tr>
</table>
</form>
</center>
</body></html>
END
    ;
      }
  } elsif($script eq 'scat') {
      delete $::calinfo{'bgcolor'}; &webcalSupport::headers('Set category');
      print <<END;
<br><center><h2>Category Filter</h2></center>
<p><center>
<script LANGUAGE="JavaScript" type="text/javascript">
function setcat(){
var pw=window.opener.document.webcal; var m=window.document.scat;
var txt=m.cat.value;
if(txt != "") {pw.hiddencat.value=txt; pw.submit();}
self.close();
}
</script> 
<p>
<form name="scat" onsubmit="jacascript:setcat()">
<table border=0 width=400><tr><td>
You may feed the category filter with a perl regular expression. For example,
the expression <b>(sport)|(fun)</b> matches all categories that contains the string
<b>sport</b> or <b>fun</b>. 
</td></tr>
<tr><td align=center nowrap><br>
<b>Category:</b> <input typt=text name=cat size=20 class="fmText">
</td></tr>
<tr><td align=center>
<br>
<font color=red><b>
<input type=submit value=Submit class="fmBtnSt"> &nbsp;&nbsp;&nbsp;
<input type=button value=Cancel class="fmBtnSt" onclick="javascript:self.close()">
</b></font>
</td></tr>
</table>
</form>
</center>
</body></html>
END
    ;
  } elsif($script eq 'efile') {
      my $file = $::info{'file'}; my $ifile=$file;
      if(!$file) { calerror("This script require a paramater: file=", -1); exit(0);} 
      $file = "$cal/$file";
      if($command eq 'post') { # post form
	  my ($i, $k, $v, $n1, $n2, $j, $content);
	  %::cats=(); $i = 0;
	  if( -f $file) { &webcalSupport::doReadFile("$file"); }
	  $content = join("\n", (sort {uc($a) cmp uc($b)} (keys %::cats)));
	  delete $::calinfo{'bgcolor'}; &webcalSupport::headers('Edit category');
	  print <<END;
<br><center><h2>Edit Categories</h2></center>
<form action="$::o{'cgimisc'}" method=post>
<input type=hidden name=c value="process">
<input type=hidden name=w value="$who">
<input type=hidden name=cmd value="$script">
<input type=hidden name=file value="$ifile">
<center><table border=0 cellspacing=2 cellpadding=0>
<tr><td width=400>
Current categories are listed in the textarea below. To 
add more, just append new categories to the list, one
categroy per line.<br><br>
</td></tr>
<tr><td align=center><textarea name=cats rows=16 cols=50 class="fmText">$content</textarea>
</td></tr>
<tr><td align=center><font size=2><br>
<b><input type=submit value="Submit" class="fmBtnSt">&nbsp;&nbsp;
<input type=button value=" Cancel " class="fmBtnSt" onclick="javascript:self.close()">
</b></td></tr>
</table></center>
</form></body></html>
END
    ;
	  exit(0);
      } elsif($command eq 'process') { #
	  my ($content, @all, $k, $r);
	  $content = $::info{'cats'};
	  @all = split(/\s+/, $content);
	  $r='%::cats=(';
	  foreach $k (@all) {
	      $k=~ s/^\s+|\s+$//g; $k =~ s/\s+/ /g; $k =~ s/\\//g; $k=~ s/\'/\\\'/g;
	      if($k) { $r .=  "\'$k\'=>\'$k\',\n";}
	  }
	  $r .=");\n";
	  &webcalSupport::write_file($file, $r);	      
          delete $::calinfo{'bgcolor'}; &webcalSupport::headers('ok');
          print "<center><br>";
          print "<br><font color=#ff0000>Categories Updated</font><br><br><br>";
          print <<ENBD;
<table border=0 cellpadding=2><tr><td><form><b><input type=button value=" Close " onclick="javascript:self.close()" class="fmBtn"></b></form></td></tr></table>
ENBD
          print "</center></body></html>";
          exit(0);
      } else { &webcalSupport::calerror("Don't know what to do.", -1); }
  } elsif($script eq 'signature') {
      my $file = "signature";
      $file = "$cal/$file";
      if($command eq 'post') { # post form
	  my ($i, $k, $v, $n1, $n2, $j, $content);
          $content = "";
	  if( -f $file) { $content = &webcalSupport::read_file_content("$file"); }
	  delete $::calinfo{'bgcolor'};  &webcalSupport::headers('Edit Signature');
	  print <<END;
<br><center><h2>Edit Signature File</h2></center>
<form action="$::o{'cgimisc'}" method=post>
<input type=hidden name=c value="process">
<input type=hidden name=w value="$who">
<input type=hidden name=cmd value="$script">
<center><table border=0 cellspacing=2 cellpadding=0>
<tr><td width=400>
Your signature file is listed below. Edit at will.
Signature file is appended to emails you send out to
friends.
<br><br>
</td></tr>
<tr><td align=center><textarea name=signature rows=16 cols=50 class="fmText">$content</textarea>
</td></tr>
<tr><td align=center><font size=2><br>
<b><input type=submit value="Submit" class="fmBtnSt">&nbsp;&nbsp;
<input type=button value=" Cancel " class="fmBtnSt" onclick="javascript:self.close()">
</b></td></tr>
</table></center>
</form></body></html>
END
    ;
	  exit(0);
      } elsif($command eq 'process') { #
	  my ($content, @all, $k, $r);
	  $content = $::info{'signature'};
	  if($content !~ /^\s+$/) { &webcalSupport::write_file($file, $content);}      
          else { if( -f "$file") { unlink $file;}} 
          delete $::calinfo{'bgcolor'};  &webcalSupport::headers('ok');
          print "<center><br>";
          print "<br><font color=#ff0000>Signature file Updated</font><br><br><br>";
          print <<ENBD;
<table border=0 cellpadding=2><tr><td><form><b><input type=button value=" Close " onclick="javascript:opener.document.location.reload(1);self.close();" class="fmBtnSt"></b></form></td></tr></table>
ENBD
          print "</center></body></html>";
          exit(0);
      } else { &webcalSupport::calerror("Don't know what to do.", -1); }
  } elsif($script eq "oah") {
      my $f = $::info{'f'};
      my $lang = $::calinfo{'language'} || $::o{'language'};  $lang = 'English' if not $lang;
      $lang = 'English' if not -d "$::o{'imgdir'}/h/$lang";
      my $file = "$::o{'imgdir'}/h/$lang/$f";
      if( not -f "$file") {
	  &webcalSupport::calerror("Cannot find \"$file\".", -1); 
	  exit(1);
      } else {
	  #delete $::calinfo{'bgcolor'}; &webcalSupport::headers('Webcalendar Info');	  
	  #my $content = &webcalSupport::read_file_content("$file"); 
	  #print $content;
	  my $page ="$::o{'fimgdirurl'}/h/$lang/$f";
	  print "Location: $page\n\n";
	  exit(2);
      }
  } else {
      &webcalSupport::calerror("Unknown command \'$command\'.", -1); 
  }      
}

#======================================================================================

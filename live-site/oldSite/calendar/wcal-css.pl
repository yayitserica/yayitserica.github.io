#!/usr/bin/perl

use lib "/home/sites/yayitserica.com/public_html/calendar";

#!/usr/bin/perl -w
#
# $Header: /home/cvs/webCal/webCal2/webcal-css.pl,v 1.17 2004/08/21 05:07:06 mzou Exp $
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
use webcalLock;
use webcalSupport;

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
      $::calinfo{$name} = $value;
  }
  # end of parse
  $command = $::calinfo{'c'}; 
  if(not $command or $command eq 'get') { $command='post'; }
  $command= &webcalSupport::authenticate($command, $scriptname);

  my $user = $::calinfo{'w'};
  my $cal = "$::o{'spooldir'}/$user";
  if( !$user or ! -d  "$cal") {
      &webcalSupport::calerror("Calender \'$user\' does not exist!", -1);
      myexit(0);
  }
  if( not &webcalSupport::isre($::d{'remote_user'}, $user, 'editors')) {
      &webcalSupport::calerror("You ($::d{'remote_user'}) are not allowed to edit this calendar ($user).", -1);
  }

  my $muser = $user; 
  my $huser = $user;
  $muser =~  s/\./\-dot\-/g;  $muser =~  s/\-/\-dash\-/g; 
  $muser =~  s/=/\-eq\-/g; $muser =~  s/_/\-uscore\-/g;
  $huser =~  s/\./_dot_/g;  $huser =~  s/\-/_dash_/g;  $huser =~  s/=/_eq_/g; # correct old class names
  my $ptag = 'w-' . $muser . '-sCs-';
  my $qtag = 'w_' . $huser . '_sCs_';
  my $file = "$cal/css.css";

  &webcalSupport::make_style_sheet($user);

  if($command eq 'post') { # post form
      my $jscript = &cssjavascript();
      delete $::calinfo{'bgcolor'}; &webcalSupport::headers('CSS', $jscript);
      print post_css_form($file, $ptag, $qtag, $user,"");
      myexit(0);
  } elsif($command eq 'pdefault') {
      my $file = $::calinfo{'dcssfile'};
      delete $::calinfo{'bgcolor'}; &webcalSupport::headers('CSS', "");
      post_default_css($user, $file);
      myexit(0);     
  } elsif($command eq 'mdefault') {
      delete $::calinfo{'bgcolor'};&webcalSupport::headers('CSS', "");
      my $sheet = $::calinfo{'cssdefault'};
      my $file = "$::o{'spooldir'}/$user/default.css";
      if($::calinfo{'action'} and $::calinfo{'action'} =~ /delete/i) { $sheet = "";}
      if($sheet =~ /^\s*$/) {
	  unlink $file  if -f $file;
	  my $dcsf = "$::o{'imgdir'}/$::o{'stylesheetdir'}/${user}-default.css";
	  unlink $dcsf  if -f $dcsf;	  
      }
      else { &webcalSupport::write_file($file, "$sheet\n\n")};
      &webcalSupport::generate_sheet($user);
      print <<END;
<br>
<center><h3>Style Sheet Updated</h3></center>
<br>
<center>
<form name="jnk">
<cebter><table border=0><tr><td>
<input type=hidden name=w value="$user">
<input type=hidden name=c value="post">
<input type=button value="Close" onclick="javascript:self.close()">&nbsp;&nbsp;&nbsp;&nbsp;
<input type=button value="Back" onclick="javascriot:document.jnk.submit()">
</td></tr></table>
</form>
</center>
END
    ;
      myexit(0);
  } elsif($command eq 'process') { # process form
      my ($i, $k, $v, $name, $total);
      $total = $::calinfo{'total'};
      my $FILEL=gensym;
      if(sysopen($FILEL, "$file", O_WRONLY | O_CREAT)) {
          &webcalLock::doflock( \*$FILEL, LOCK_EX, "$file") or
              &webcalSupport::calerror("Cannot lock file '$file': $!\n");     
          truncate($FILEL, 0);
          print $FILEL '%::css=(', "\n";      
	  for($i=0; $i<$total; $i++) {
	      $k = $::calinfo{"class$i"};
	      $v = $::calinfo{"css$i"}; 
	      if($k and $v) {
		  $k=~ s/[^A-Za-z0-9\.:]//g; $v=~ s/\'/\\\'/g;  $v=~ s/\n/ /g; $v=~ s/\s+/ /g; $v=~ s/\s*;\s*/;/g;
		  my (@keys, $key, $a);
		  @keys = split(/,/, $k);  $key=""; 
		  foreach $a (reverse sort @keys) {
		      $key .="," if $key; 
		      if( &webcalSupport::toplevelClass($a)) { $key .= "$a";}
		      else {$key .= "$ptag$a";}
		  }
		  print $FILEL "\'$key\' =>\'$v\',\n";
	      }
	  }
	  print $FILEL ");\n 1;\n";
          &webcalLock::doflock( \*$FILEL, LOCK_UN, "$file") or 
              &webcalSupport::calerror("Cannot unlock file '$file': $!\n"); 
          close $FILEL;	  
	  &webcalSupport::generate_sheet($user);
      }
      if($::calinfo{'action'} !~ /Cancel/i) {
	  my $jscript = &cssjavascript();
	  delete $::calinfo{'bgcolor'};&webcalSupport::headers('CSS', $jscript,"","","","onload=\"window.opener.document.location.reload()\"");
	  print post_css_form($file, $ptag, $qtag, $user, "Font style updated");
	  myexit(0);	  
      } else {
	  delete $::calinfo{'bgcolor'};&webcalSupport::headers('ok');
	  print "<center><br>";
	  print "<br><font color=#ff0000>Font Styles Updated</font><br><br><br>";
	  print <<ENBD;
<table border=0 cellpadding=2><tr><td><form><b><input type=button value=" Close " onclick="javascript:self.close()"></b></form></td></tr></table>
ENBD
    ;
      }
    print "</center></body></html>";
      myexit(0);      
  } elsif($command eq 'popup') { # popup css editor
      my $which = $::calinfo{'tarea'};
      my $content = $::calinfo{'content'};
      my $jscript = &cssjavascript();
      delete $::calinfo{'bgcolor'};&webcalSupport::headers('CSS', $jscript);
      my @content = split(/;/, $content);
      print "<br><center><form name=\"webcalo\" action=\"$::o{'cgicss'}\" method=post>";
      my ($font_family, $font_weight, $font_style, $text_decoration,$font_size)=("","","","","");
      my ($fgcolor, $bgcolor, $bgimage) = ("","","");
      my ($font_weight_selection, $font_style_selection, $text_decoration_selection, $font_size_selection);

      my ($entry, $k,$v);
      my $misc="";
      foreach $entry (@content) {
	  ($k, $v) = split(/:/, $entry, 2); 
	  $v = &webcalSupport::mychop($v);$k = &webcalSupport::mychop($k);
	  if($k =~ /font\-family/i) { $font_family = $v;}
	  elsif($k =~ /font\-weight/i) { $font_weight = $v;}
	  elsif($k =~ /font\-style/i) { $font_style = $v;}
	  elsif($k =~ /text\-decoration/i) { $text_decoration = $v;}
	  elsif($k =~ /font\-size/i) { $font_size = $v;}
	  elsif($k =~ /^color/i) { $fgcolor=$v;}
	  elsif($k =~ /background\-color/i) { $bgcolor=$v;}
	  elsif($k =~ /background\-image/i) { $bgimage=$v;}
	  elsif($k and $v) { $misc .= "$k:$v;";}
      }
      $font_weight_selection = &webcalSupport::select_value('set_font_weight', $font_weight,
       ( "", "Normal", "100", "Extra light", "200", "Light", "300", "Semi light", "400", "Normal",
	 "500", "Medium", "600", "Semi Bold", "700", "Bold", "800", "Extra bold", "900", "Heavy"));
      $font_style_selection = &webcalSupport::select_value('set_font_style', $font_style,
       ( "", "Normal", "italic", "Italic", "oblique", "Oblique"));
      $text_decoration_selection = &webcalSupport::select_value('set_text_decoration', $text_decoration,
       ( "", "None", "underline", "Underline", "overline", "Overline", "line-through", "Line-through",
	 "blink", "Blink"));
      $font_size_selection = &webcalSupport::select_valueV('sset_font_size', $font_size, 'onChange=javascript:setFsize()',
       ("===keywords===", "", "xx-small", "xx-small", "x-small", "x-small", "medium","medium",
	"large","large","x-large","x-large", "xx-large", "xx-large", "===percentage===", "", 
	'10%','10%','20%','20%','30%','30%','40%','40%','50%','50%','60%','60%','70%','70%','80%','80%','90%','90%','100%','100%',
	'110%','110%','120%','120%','130%','130%','140%','140%','150%','150%','160%','160%','170%','170%','180%','180%',
	'190%','190%','200%','200%'));

      $font_family = &webcalSupport::urldecode($font_family,1);
      $font_size = &webcalSupport::urldecode($font_size,1);
      if($bgimage =~ /url\(([^\)]+)\)/) { $bgimage= $1;}
      $bgimage = &webcalSupport::urldecode($bgimage,1);
      print <<END;
<input type="hidden" name="font-family" value="$font_family">
<input type="hidden" name="font-size" value="$font_size">
<input type="hidden" name="font-weight" value="$font_weight">
<input type="hidden" name="text-decoration" value="$text_decoration">
<input type="hidden" name="font-style" value="$font_style">
<table border=2 cellspacing=2 cellpadding=2><tr><td>
<table border=0 cellspacing=0 cellpadding=2 bgcolor=#eeeedd>
<tr><td align=right><b>Font Family:</b></td><td><input type=text size=60 name="set_font_family" value="$font_family"></td></tr>
<tr><td align=right><b>Font Size:</b></td><td><input type=text size=10 value="$font_size" name="set_font_size"> &nbsp;
$font_size_selection</td></tr>
<tr><td align=right><b>Font Weight:</b></td><td>$font_weight_selection</td></tr>
<tr><td align=right><b>Font Style:</b></td><td>$font_style_selection</td></tr>
<tr><td align=right><b>Text Decoration:</b></td><td>$text_decoration_selection</td></tr>
END
    ;
      if($fgcolor or $bgcolor) {
	  print <<END;
<tr bgcolor=#ccccff><td align=right><b>Color:</b></td>
<td nowrap><input type=text name="cssfg" size=10 value="$fgcolor"> &nbsp;&nbsp;&nbsp;
<b>Background Color:</b> &nbsp; <input type=text name="cssbg" size=10 value="$bgcolor"> &nbsp;&nbsp;&nbsp;
<a href="javascript:void(0)" onclick="getClr('$::o{'cginame'}?c=showclrcss')"><img src="$::o{'imgdirurl'}/clr.gif" width=20 height=9 border=0 alt="color selector"></a></td></tr>
END
    ;
      }
      if($bgimage) {
	  print <<END;
<tr bgcolor=#ccffcc><td align=right><b>Background image:</b></td>
<td nowrap><input type=text size=30 maxlength=128 name="bgimage" value="$bgimage">&nbsp;&nbsp;&nbsp;
<a href="javascript:showis('$::o{'cginame'}?c=simage&imgoffset=0&w=$user')"><font size=1 color=#009900>Usable Images</font></a>
&nbsp;&nbsp;&nbsp;<a href="javascript:uploadi('$::o{'cgiupload'}?c=ui')"><font size=1 color=#0000ff>Image Upload</font></a>
 </td></tr>
END
    ;
      }
      if($misc) {
	  print <<END;
<tr bgcolor=#ccccff><td align=right><b>Misc properties:</b></td>
<td nowrap><textarea name="miscinfo" rows=4 cols=60 wrap=virtual>$misc</textarea>
 </td></tr>
END
    ;
      }
      print <<END;
<tr><td colspan=2 align=center><b>
<input type=button name="action" value="Submit" onclick="cssnew('$which'); self.close(); return false;">&nbsp;&nbsp;
<input type=button name="action" value="Cancel" onclick="self.close(); return false;">
</b></td></tr>
</table></td></tr></table><br>
END
    ;
      print "</form></center></body></html>";
  } elsif(0) {
      
  } else {
      &webcalSupport::calerror("Unknown command \'$command\'.", -1); 
  }      
}
#======================================================================================
sub post_css_form {
    my ($file, $ptag, $qtag, $who, $msg) =(@_);
    my ($i, $k, $v, $n1, $n2, $j, $answer);

    %::css=(); $i = 0; $answer="";
    if( -f $file) { &webcalSupport::doReadFile("$file"); }
    $answer .= <<END;
<br><center><h2>Font Styles &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)" onclick="javascript:self.close()"><font size=2 color=#0000ff>Close Window</a></font></h2><font color=red>$msg</font>

</center>
<center><form name=cssform action="$::o{'cgicss'}" method=post>
<input type='hidden' name='c' value='process'>
<input type='hidden' name='w' value="$who">
END
    ;
    $answer .= make_css_dialog("","",$i); $i++;
    foreach $k (sort keys %::css) {
	$v = $::css{$k};
	$k =~ s/$ptag//g; $k =~ s/$qtag//g;
	$answer .= make_css_dialog($k, $v, $i); 
	$i++;
    }
    $answer .= "<input type=hidden name=total value=$i></form><br>
<table border=0 cellpadding=2><tr><td><form>
<input type=button value=\" Close Window \" onclick=\"javascript:self.close()\"></form></td></tr></table>
<br>
<font size=2>If you want to play with CSS, you can customize the system default CSS from  
<a href=\"$::o{'cgicss'}?c=pdefault&w=$who\"><font color=blue>here</font></a>. <br>
Available system defaults are: 
";
    my ($tmp, $lnk, $aref, $cnt);
    $lnk ="<a href=\"$::o{'cgicss'}?c=pdefault&w=$who&dcssfile";
    $aref = $webcalConfig::r{'cssFiles'}; $cnt=0;
    for $file (@$aref) {
	if($cnt) { $answer .= ", ";} $cnt++;
	$answer .= "${lnk}=$file\">$file</a>";
    }
    $answer .= ".</center></body></html>";
}
#======================================================================================
sub myexit { %::calinfo=(); %::css=(); exit(0);}
#======================================================================================

sub make_css_dialog {
    my ($class, $properties, $counter) = (@_);
    my ($submit, $bgcolor);

    if($class and $properties) {
	$properties =~ s/;\s*/;\n/g;
	$bgcolor="#eeeedd";
	$submit = <<ENDF;
<input type=submit name="action" value="Modify"> &nbsp;&nbsp;
<input type=submit name="action" value="Delete" onClick="javascript:cssdel('$counter');">
ENDF
    ;
    } else {
	$bgcolor="#ffdddd";
	$submit = <<ENDF;
<input type=submit name="action" value=" Add ">
ENDF
    ;
    }
    my $who = $::calinfo{'w'};
    my $result = <<END;
<table border=2 cellspacing=2 cellpadding=2><tr><td>
<table border=0 width=600 cellspacing=0 cellpadding=2 bgcolor=$bgcolor>
<tr><td align=right><b>Label:</b> </td><td><input type=input size=60 maxlength=99 name=class$counter value="$class"></td></tr>
<tr><td align=right valign=top><b>Properties: <br><br><a href="javascript:void(0)" onclick="javascript:cssedit('css$counter', '$who')"><font color=blue>Edit</font></a></b>
</td>
<td><textarea name="css$counter" rows=6 cols=60 wrap=virtual>$properties</textarea></tr>
<tr><td colspan=2 align=center><b>$submit &nbsp;&nbsp;
<input type=submit name="action" value="Cancel" onclick="self.close(); return false;">
</b></td></tr>
</table></td></tr></table><br>
END
    ;
    return $result;
}
sub post_default_css {
    my ($user, $dfile) = (@_);
    my ($content, $msg, $del)=("","","","");
    my $file = "$::o{'spooldir'}/$user/default.css";
    
    if(-f $file) { 
	$content = &webcalSupport::read_file_content($file);
	$del = "<input type=\"submit\" name=\"action\" value=\"delete\">&nbsp;&nbsp;&nbsp;";
	$msg = <<END;
<blockquote>
Your current style sheet is displayed below. If you wish to revert to
the system defaults or want to select an alternate css file,
please click the <b>Delete</b> button.
</blockquote>
END
    ;
    } else {
	my $filename;
	if($dfile and -f "$::o{'cgidir'}/$dfile") { $filename = "$dfile";}
	else { $filename = "default.css";}
	if( -f "$::o{'cgidir'}/$filename") {
	    $content = &webcalSupport::read_file_content("$::o{'cgidir'}/$filename");	
	    $msg =<<END;
<blockquote>
You currently do not have a customized CSS file. The content displayed below is
copied from the system CSS file <font color=blue><b>$filename</b></font>. 
Please edit at will. You need to keep the class names as shown or it will not be used. 
If you do not wish to customize
the style sheet, please do not click on the <b>Submit</b> button, click on the
<b>Cancel</b> button instead.
</blockquote>
END
    ;
	} else {
	    $msg =<<END;	    
Sorry, I couldn't locate defaulte system css files.
END
    ;
	}
    }

    print <<END;
<br><center><h2>Edit Style Sheet</h2>
<table border=0><tr><td><p><font size=2 color=red>$msg</font></p></td></tr></table>
</center>
<center>
<form name=cssform action="$::o{'cgicss'}" method=post onSubmit="javascript:window.opener.document.location.reload(1)">
<input type='hidden' name='c' value='mdefault'>
<input type='hidden' name='w' value="$user">   
<table border=0 cellspacing=0 cellpadding=0><tr><td>
<textarea name=cssdefault rows=30 cols=82>$content</textarea>
</td></tr>
<tr><td align=center>
<input type=submit value="Submit">&nbsp;&nbsp;&nbsp;&nbsp;
$del
<input type=button value="Cancel" onClick="javascript:history.go(-1)">&nbsp;&nbsp;&nbsp;&nbsp;
<input type=button value="Close" onClick="javascript:self.close()">
</td></tr>
</table>
END
    ;
}
#======================================================================================
sub cssjavascript {
    return <<END;
function showis(des){
 var iswin=window.open(des,"imgs","scrollbars=yes,width=500,height=600");
 if(window.focus){iswin.window.focus();}
}
function uploadi(des){
 var iwin=window.open(des,"uls","scrollbars=yes,width=500,height=400");
 if(window.focus){iwin.window.focus();}
}

function getClr(des){
 pwin=window.open(des,"Colors","scrollbars=yes,width=500,height=320");
 if(window.focus){pwin.window.focus();}
}

function cssdel(i){
 var n='class'+i;  window.document.cssform.elements[n].value="";
 n='css'+i; window.document.cssform.elements[n].value="";
}

function cssedit(tarea,who) {
 var style = window.document.cssform.elements[tarea].value;
 var url="$::o{'cgicss'}?c=popup&tarea=" + tarea + '&w=' + who + '&content=' + escape(style);
 cswin=window.open(url, "css", "scrollbars=yes,width=600,height=500");
 if(window.focus){cswin.window.focus(); }    
}

function cssnew(tarea) {
 var i, v, name, value, length, style;
 var fm = window.document.webcalo;
 i=fm.set_font_weight.selectedIndex; v=fm.set_font_weight.options[i].value; fm.elements['font-weight'].value = v;
 i=fm.set_font_style.selectedIndex; v=fm.set_font_style.options[i].value; fm.elements['font-style'].value = v;
 i=fm.set_text_decoration.selectedIndex; v=fm.set_text_decoration.options[i].value; fm.elements['text-decoration'].value = v;
 v=fm.set_font_size.value;  fm.elements['font-size'].value = v;
 v=fm.set_font_family.value; fm.elements['font-family'].value = v;
 var n=fm.elements.length -1;
 var ptn=/^(font|text)/;
 style="";
 for(i=0;i<n;i++){ 
   var e=fm.elements[i]; 
   if(e.name.match(ptn)) {
       value = e.value; value = value.replace(/^ +| +\$/g, "");
       if(value != "") { style += e.name + ':' + value + ";\\n" ;}
   } else if(e.name.match(/cssbg/i)) {
       value = e.value; value = value.replace(/^ +| +\$/g, "");
       if(value != "") { style += 'background-color:' + value + ";\\n" ;}       
   } else if(e.name.match(/cssfg/i) ) {
       value = e.value; value = value.replace(/^ +| +\$/g, "");
       if(value != "") { style += 'color:' + value + ";\\n" ;}      
   } else if(e.name.match(/bgimage/i)) {
       value = e.value; value = value.replace(/^ +| +\$/g, "");
       if(value != "") { 
	   style += 'background-image:url(' + value + ");\\n" ;
       } 
   } else if(e.name.match(/miscinfo/i)) {
       value = e.value; value = value.replace(/^ +| +\$/g, "");
       if(value != "") {style +=  value + "\\n"; } 
   }
 }
 window.opener.document.cssform.elements[tarea].value = style; 
}

function setFsize() { 
 var fm=window.document.webcalo;
 var i=fm.sset_font_size.selectedIndex;
 var v=fm.sset_font_size.options[i].value;
 fm.elements['set_font_size'].value = v;
}

END
    ;
}
#======================================================================================

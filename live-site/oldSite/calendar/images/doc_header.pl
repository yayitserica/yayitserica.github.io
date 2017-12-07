#!/usr/bin/perl
#========================================================================================================
#<HTML><HEAD>
#<TITLE>Web Calendar: </TITLE>
#</HTML>
#
#========================================================================================================

$::page_header = <<END;

<META Name="description" Content="webcal: web-based calendaring and scheduling system">  
<META Name="keywords" Content="webCalendar, webcal, Calendar Server, netcalendar, net calendar net-calendar,online calendar, real-time calendar, online diary system, online address book, mod_perl application, group calendar, team calendar, family calendar, event publication, tasks manager, scheduling service, calendar service,  business calendar, open source calendar"> 
<STYLE TYPE="text/css">
    h2 { color:#333333; font-weight:heavy;font-family:arial}
    .nav {font-size:x-mall;}
    .nav:hover { color:red; font-weight:bold; background-color: green;}
    .nav:active { color:red; background-color: green; font-decoration:none;}
    .bq { color:#cc0000;} 
</STYLE>
<!--javascript:misc/javascript.js-->
<!--stylesheet:misc/style.css-->
</HEAD>
<!--- This file is auto generated, please do not edit -->
<BODY background="img/bg19.gif" bgcolor=#ffffff>
$::webcal
<table border=0 cellspacing=0 cellpadding=0>
 <tr><td align=left>
    <table border=0 cellspacing=0 cellpadding=0>
       <tr valign=bottom><td width=138 rowspan=3><img src="img/wcalicon.gif" border=0 width=138 height=93></td>
           <td nowrap align=left width=600>
<img src="img/webcalendar.gif" border=0 width=331 height=47>
<img src="img/version.gif" border=0 width=125 height=30>
</td>
       </tr>
       <tr height=8><td height=8><img src="img/sbar.gif" width=600 height=8></td>
       </tr>
       <tr><td><img src="img/spacer.gif" width=1 height=8></td>
       </tr>
    </table>
 </td><td>&nbsp;</td></tr>
</table>

<table border=0 cellspacing=0 cellpadding=0>
   <tr>
       <td valign=top><img src="img/spacer.gif" width=128 height=30 border=0><br>
<!-- navigation table -->
END
    ;
#========================================================================================================
$::page_footer = <<END;
<br><br><br><br>
<a href="mailto:mzou\@math.utexas.edu" style="text-decoration:none">
<font size=2 color=#999999>
</font></a>
<datetime>
</td></tr></table>
</BODY>
END
    ;
#========================================================================================================
1;







#============================================================================
#
# If you want to insert banners on the calendar page, readon.
#
# Use the following 3 vars to include extra insertions to the calendar page
#
# headseg       is inserted in the <head> </head> section. Put your javascript
#                or equivalent thingy here.
#
# prolog        is inserted right after the <body> tag. Basically, the <table>
#                tag with may be the first row.
#
# postscript    is inserted just before the closing </body> tag. Close 
#                the <table> tag.
#
# The code in this file is executed everytime webcal.perl is invoked. 
# You may change the insertion dynamically, but you probably
# want keep them the same for the same session. 
#
# The environment variable REMOTE_HOST, REMOTE_ADDR and
# REMOTE_USER is available when this file is executed.
#
#===============================================================================
%::banner = (
	         'headseg'    => "",
		 'prolog'     => "",
		 'postscript' => "",
		); 
#===============================================================================
#
# Example: the following code includes banners around the calendar page like
#          shown below the code.
#
# $::banner{'headseg'}="";
#
# !!! left banner has to be at least 500 pixels tall !!!
#
# $::banner{'prolog'}="<table border=0 width=\"100%\">
#          <tr><td bgcolor=\"#aaffff\" colspan=2>top hanner</td></tr></table>
#   <table border=0 bgcolor=eeeeee align=left width=\"10%\" cellspacing=0 cellpadding=0>
#   <tr><td height=600 width=\"100%\"> Left banner</td></tr></table>";
#
# $::banner{'postscript'}="<table bgcolor=66ccff border=0 cellspacing=0 cellpadding=0 valing=top height=64>
#                          <tr><td width=\"100%\">top hanner</td></tr></table>";
#
#===============================================================================
# 
#
#      -----------------------------------------------
#      |                 top banner                  |
#      ----------------------------------------------|
#      |   |                                         |
#      | L |                                         |
#      | e |                                         |
#      | f |       Calendar                          |
#      | t |                                         |
#      |   |           Page                          |
#      | b |                                         |
#      | a |                                         |
#      | n |                                         |
#      | n |                                         |
#      | e |                                         |
#      | r |                                         |
#      |   |                                         |
#      |   |                                         |
#      ----------------------------------------------|
#      |                  bottom banner              |
#      -----------------------------------------------
#
#===============================================================================

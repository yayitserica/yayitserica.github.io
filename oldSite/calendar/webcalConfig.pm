#==============================================================================
#
#            webcal --- a web based calendar program
#
#          Copyright (C) 2000, 2001, 2002, 2003, 2004  Maorong Zou
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
#
# $Header: /home/cvs/webCal/webCal2/webcalConfig.pm,v 1.85 2004/10/21 17:55:39 mzou Exp $
#

#==============================================================================
#
#   web calendar configuration variables
#
#-----------------------------------------------------------------
#
package webcalConfig;
use strict;

%webcalConfig::c = (
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Section 1.  Variable may be redefined for individual virtual servers. 
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

      #-----------------------------------------------------------------------------
      # If defined, you can arrange calendars on the server into virtual groups,
      # calendar names in a group are visible only to all members of the group. 
      # (Just the names, not the contents).

      'vgroup' => 1, 

      #-----------------------------------------------------------------------------
      # when scheduling a new event, the events goes to the visiting calendar. If
      # you have a list of 'interested calendars' defined, a menu will be displayed
      # on the event editor so you can insert the event to one of your
      # 'interested calendars'.  Set the next variable to disable this menu.

      #'disable_cal_menu_in_editor'=>1,

      #-----------------------------------------------------------------------------
      # Set the next variable to 0 if you don't want arbitary
      # user to create calendars on your system. You have to create an admin user
      # first before disabling it or no one will be able to create calendars.

      'create' => 1,  

      # if disabled, calendars list in the next line and calendar admins can
      # create calendars.

      'creator'=> 'n/a',
                    
      #-----------------------------------------------------------------------------
      # Set to 1 to enable the category filter feature

      'category_filter' => 1,


      #-----------------------------------------------------------------------------
      # Set nonzero to enable the category filter feature
      #  1.  search only looks at the event title
      #  2.  search looks at event title, event detail and event keywords
      #  3.  search looks for match at all meaningful event fields.

      'search_filter' => 3,

      #----------------------------------------------------------------------------
      #
      # a feature that allows DND on IE 5.5 and up

      'dnd' => 1,

      #----------------------------------------------------------------------------
      #
      # a feature that allows you to mark events in "Critical Path"

      'cpath' => 0,

      #----------------------------------------------------------------------------
      #
      # a feature that allows you to move simple events forward/backward N days.

      'block_move' => 0,



      #-----------------------------------------------------------------------------
      # Experimental feature: allow users set dependency among calendars. 

      'dependency' => 1,

      #-----------------------------------------------------------------------------
      # Experimental feature: author authorization. Set the next var to 1
      # to enable group-event authorization check. If enabled, group events
      # from unauthorized users will be rejected. 

      'authorize_author' => 0,

      #-----------------------------------------------------------------------------
      # If defined, event added to the corporate calendar will be added simultaneously
      # to all calendars on the system. Corporate calendar is a restricted calendar.
      # It will not accept group events. It will not be in any work groups. it can
      # not depend on other calendars nor it can be a dependent of other calendars.
      # 
      # !!!! Please make sure corporate_calendars are private calendars !!!!!
      #
      'corporate_calendar' => '',

      #-----------------------------------------------------------------------------
      # Local webcal documentation goes here:
      # 'localdocURL' => 'http://some.server.com/somedir/somefile',
      'localdocURL' => '',

      #-----------------------------------------------------------------------------
      # If you want to review uploads before they go online,
      # set 'reviewImageUpload' and 'ImageUploadReviewer',
      # the later is a list of calendar names, the owner of
      # each calendar in the list is authorized to review the 
      # uploads.

      'allowImageUpload'    => 1,
      'maximumImageFileSize'=> 100000,		    
      'reviewImageUpload'   => 1,
      'ImageUploadReviewer' => 'a/b,c/d', 

      # Note: a/b and c/d are invalid calendar names, it shows
      # you the input format for this field.

      #-----------------------------------------------------------------------------
      # This limit is used in webcalSync.pm and in webcal-import.pl
      # It is the max data size (in bytes) the sync procedure allows.

      'dataSizeLimit' => 2000000,

      #-----------------------------------------------------------------------------
      #
      # width of the calendar as a percentage of the browser
      # window. Useful only if you need to insert a left
      # banner. See banner.pl for an example.
      #
      'tw' => 100,
      		    

      # The default language. 
      #
      'language' => 'English',

      #-----------------------------------------------------------------------------
      # Week starts on either Sunday or Monday. 0 for Sunday and 1 for Monday
      # This is the default setup for new calendars, user can override it
      # by using the options page
      #

      'weekstart' => 0,
      #
      # set the next variable to 1 to exclude weekends (Sat and Sun)
      # from your calendar listing.  Again, user can override the
      # default setting.
      #
      'excludeWeekend' => 0,  

      #-----------------------------------------------------------------------------
      # --- short format ----                  
      #	  0,       'mm/dd/yyyy', 
      #	  1,       'dd/mm/yyyy', 
      #	  2,       'yyyy-mm-dd', 	    
      #	  3,       'dd-mm-yyyy', 
      #	  4,       'dd.mm.yyyy', 	    
      #	  5,       'dd/mm-yyyy', 
      #	  6,       'yyyy.mm.dd', 	    
      #	  7,       'yyyy/mm/dd', 
      #	  8,       'dd-mm-yyyy.',	    
      #	  9,       'yyyy.mm.dd.',

      'dateformat' =>0,
   
      # ---- long date format ----
      #	 0,   'Dayname Monthname dd yyyy',    
      #	 1,   'Dayname dd Monthname yyyy',    
      #	 2,   'Dayname dd.Monthname yyyy,',   	    
      #	 3,   'Dayname dd-mm-yyyy',           
      #	 4,   'Dayname, dd Monthname yyyy',   	    
      #	 5,   'Dayname, dd Monthname, yyyy',  
      #	 6,   'yyyy-Monthname-dd',            	    
      #	 7,   'dd Monthname, yyyy',           
      #	 8,   'dd. Monthname yyyy',           	    
      #	 9,   'yyyy Monthname dd Dayname',    
      #	 10,  'yyyy m. Monthname dd d.',      	    

      'dateformat2' =>0,

      #-----------------------------------------------------------------------------
      # if set to 0, display format will be in the am/pm style
      # if set to 1, display will be the 24 hour style
      # Can be overriden using the options page.
      #
      'hourformat'=>0,
      #

      #-----------------------------------------------------------------------------
      # list site administrators. A site administrator can 
      # modify all calendars.
      # If multiple administrators, separate names by ,
      'theAdministrator' => '', 

      #-----------------------------------------------------------------------------
      # Will the cgi script list all calendars on the system? Again,
      # it is useful only for public calendars. E.g. calendar for 5 classrooms.
      # It is a good idea to leave it untouched.
      # When set nonzero, the value is the size of the selection boxes.
      # When negative, calendars will be listed in event editors, but
      # not on the main calendar page.
      #
      'listAllCals' => -1,

      #-----------------------------------------------------------------------------
      # Maximum number of calendars
      # This is not a 'hard' limit. You can create more calendars, but they
      # won't be displayed in selection menus
      #
      'maxCals' => 100,

      #-----------------------------------------------------------------------------
      # if set to nonzero, a small digital clock applet will be loaded.
      # (there are two clocks dclock 2k, BigTimeZ 5k. 
      #  ==> use dclock if($useJavaApplet == 1) else use BigTimeZ
      #
      'useJavaApplet' => 0,
      #
      # If applet is not selected, an image based digital clock
      # will be displayed. (8/28/2001)
      'imageClock'    => 1,

      #-----------------------------------------------------------------------------
      # If set 1, transactions will be logged in .../spool/log
      # Used for debugging.
      #
      'logging' => 0,

      #-----------------------------------------------------------------------------
      # If set to 1, selection for 'autostart' will be displayed on
      # options page.  This does not do anything by itself, the actual
      # autostarting has to be done somewhere else (loginscript, startpage)
      #
      'autostart' => 0,

      #-----------------------------------------------------------------------------
      # List of tabs appearing in the masterhead.
      # This list can be trimmed to allow only a subset of the webCalendar
      # functions, or it can be re-ordered to modify the sequence of the tabs.
      # ('get' is the name of the main calendar, remainder is self-explanatory)
      #
      'tabs' => 'get,task,ad,diary,notes,option',
      #

      #-----------------------------------------------------------------------------
      # Added in Version 2.7.4
      # list of colors to be used to display the pager header. Use the
      # index number below the RGB value to define 'headerColor'. It is
      # safe to leave this option unset. Individual calendars can override
      # the settings from the calendar option page.
      #
      #  "#dfa62f", "#c41bc4", "#24935a", "#281cce", "#8e2477", "#e25809", "#1f75b7";
      #    0            1         2          3          4           5          6
      'headerColor' => 2, 

      #-----------------------------------------------------------------------------
      # default style sheets. Value is a css filename in this directory. If not set,
      # default.css will be used.

     'cssFile' => '',


      #-----------------------------------------------------------------------------
      # added in 2.8.7b. Color to display event time. tclra for appointment,
      # tclrt for todo, tclrm for meeting and tclrs for special events.
      # Time-color is fixed once for all on a calendar server, to ensure some
      # consistency.

      'tclra' => '#ff0000',
      'tclrt' => '#009900',
      'tclrm' => '#990099',
      'tclrs' => '#0066ff',

      #-----------------------------------------------------------------------------
      # added in 2.8.5. Now it is possible to customize the calendar header for
      # each virtual server. The following pseudo tag will be replaces
      # by the actual content. Please make sure you put valid HTML code
      # in this var. Errorous code may trash your calendar display.
      # <logo>                 default webcalendar logo
      # <version>              version string 
      # <calendar_selector>    calendar selection entry or drop down menu 
      # <calendar_title>       calendar title, descriptive-name/real-name/calendar-name
      # <category_filter>      category filter, an option list
      # <logout>               logout link
      #
      # Customized personal header will override this.

      'headerCode'=>'',

      # for listview 3 and 4. The same substituation rule applies. The distinction
      # is made due to the difference in navigation interface. 

      'headerCode34' => '',

      #-----------------------------------------------------------------------------
      # Default footer ccode
      # 

      'footerCode' => '',


      #-----------------------------------------------------------------------------
      # system tmp directory. On Unix, it is /tmp; on windows it is c:/temp
      # 

      'tmpdir'=>'/tmp', 

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Section 2. Variables MUST be redefined for each virtual server. 
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

      #-----------------------------------------------------------------------------

      # absolute pathname of the directory that hold webcal icons. 

      # Name of subdirectories that hold user image uploads.
      # They should be subdirectories under 'imgdir'.
      # If other directory is desired, you need to make a
      # symbolic link to 'imgdir'.

      # banner set up. Leave it blank if you don't want to use banners.

      # Authentication backend. We support
      #  default  -- internal password authentication
      #  ldap     -- auth against a ldap server  


      # address book lookup   
      # default  -- internal table
      # ldap     -- lookup addressbook from a ldap server  
   
      # ldap configuration variables, used when
      # ldap auth backend or ldap contactdb is selected. This
      # variable holds an anonymous hash table.

      # password encryption data. A hash table contain info about
      # how to encrypt/decrypt passwords. It is an anonymous hash table.
      # Encryption is not needed by the default unix-password authentication.
      #

      # 
'daemonEmail' => 'webcal@yayitserica.com',
'greetingfile' => '/home/sites/yayitserica.com/public_html/calendar/index.html',
'cgimisc' => '/calendar/wcal-misc.pl',
'cgiimport' => '/calendar/wcal-import.pl',
'fcginame' => 'http://yayitserica.com/calendar/wcal.pl',
'uploadsubdir' => 'uis',
'imgdir' => '/home/sites/yayitserica.com/public_html/calendar/images',
'cgicss' => '/calendar/wcal-css.pl',
'spooldir' => '/home/sites/yayitserica.com/public_html/calendar/server1',
'banner' => '',
'signupurl' => '/cgi-bin/wcalsignup/signup.pl',
'cgidir' => '/home/sites/yayitserica.com/public_html/calendar',
'cgilink' => '/calendar/wcal-link.pl',
'fimgdirurl' => 'http://yayitserica.com/calendar/images',
'greetingurl' => '/calendar/index.html',
'cgiupload' => '/calendar/wcal-upload.pl',
'servername' => 'yayitserica.com',
'cginame' => '/calendar/wcal.pl',
'uploadtmpsubdir' => 'uploads',
'stylesheetdir' => 'css',
'imgdirurl' => '/calendar/images',




 );
#==============================================================================
# virtual servers setup. This works only on name based virtual servers.
# 
%webcalConfig::v = (

# insert_virtual_server_setup_here

 );

#==============================================================================
#
# Configuration variables stays unchanged across all virtual servers.
#
%webcalConfig::r = (

      #
      # popup a warning when enter or edit an event occurs in the past
      # It uses the click on the client machine.
      #
 
     'disable_past_event_warning' => 0,

      #-----------------------------------------------------------------------------
      # System operator: email address to report system status
      #		    
      'operator' => 'webmaster@yayitserica.com',

      #-----------------------------------------------------------------------------
      #  If set, your browser will expire your login cookie when you close
      #	 your browser window

      'forget_password' => 0, 	    

      #-----------------------------------------------------------------------------
      # Version 2.2.8 and later ...
      # Two authentication methods are supported. HTTP_COOKIE and HTTP_PASSWORD.              
      # Set the next variable to 1 for COOKIE auth. You need to remove the file
      # .htaccess  from your webcal cgi directory if you're upgrading
      # from an earlier version that uses htpassword authentatication
      #
      # If you use htpassword auth method, the scripts cannot be shared
      # among virtual servers. You have to install a copy of webcal for
      # each virtual server.
      #
      'cookieAuth'=>1,

      #-----------------------------------------------------------------------------
      # If you're NOT running sendmail on your webserver, undefine
      # sendmail. In this case, you need to specify your smtp server
      # to make mail reminders work.
      #
      # Sendmail is available on Most UNIX systems.
      # 
      'sendmail'=>'/usr/sbin/sendmail',	 

      # You don't need to define the next two variables if you run sendmail
      # locally on your web server.  
      #
      # 'smtpto'    is your smtp server.
      # 'smtpfrom'  is the real name of your webserver
      #
      'smtpto'=>'',
      'smtpfrom'=>'',     

      #-----------------------------------------------------------------------------
      # set to 1 for built-in mail, 0 to use external mail program to compose
      # messages about meetings etc.
      #
      'builtinmail' => 1,
      
      #-----------------------------------------------------------------------------
      # set to 0 if  don't want to see the moon phases (block month view only)
      #  
      'moonphase' => 1,      

      #-----------------------------------------------------------------------------
      # List of supported languages. The translation should be
      # put in the file Name.perl. E.g, English.perl.
      #
      'languageList' => [
                         'Chinese_Big5',
                         'Chinese_GB',
			 'Danish',
			 'Dutch',
			 'English',
			 'Finnish',
			 'French',
			 'German',
			 'Italian',
			 'Norwegian',
                         'Polish',
			 'Portuguese',
			 'Russian',
                         'Spanish',
                         'Swedish',
			],


      #-----------------------------------------------------------------------------
      # For public calendars like classroom calendar, It is a hassel
      # to limit GET access to your users. You should edit the
      # .htaccess file to just password protect the POST method. In
      # this case, set the next variable to 0. The cgi script will
      # inform your user about editing. If unsure, don't change this
      # one.
      #
      # This variable is used only when htpassword auth method is selected.
      'limitGet' => 1, 

      #-----------------------------------------------------------------------------
      # The automatic refresh interval, defaut is 300 seconds. Set it
      # too big will probably miss popup reminders, set it too small
      # will anoy your users. To disable auto refreshing, change it
      # to a very large value.
      #
      'refreshInterval' => 300,	# time between auto refreshes
      #

      #-----------------------------------------------------------------------------
      # tootip timeout in millseconds.
      #

     'tooltipDelay' => 0,

      #-----------------------------------------------------------------------------
      # style sheet files
      #

      'cssFiles' => ['default.css', 'dark.css','transparent.css', 'harry.css'],


      #-----------------------------------------------------------------------------
      #  Color for navigation tabs. These are the defaults.
      #
      #  All colors are overridden by the style sheets. These colors are useful
      #  for browsers that does not support style sheet.

      'tabcolor'  => '#ffffff', # '#ddddaa',  # background color
      'tabcolorh' => '#66ff00',  # hover highlight color

      #-----------------------------------------------------------------------------
      #  Color for side bars

      'r1color' => '#0099cc',   # bgcolor of row 1 in month view
      'c1color' => '#0099cc',   # bgcolor of column 1 in month view

      #-----------------------------------------------------------------------------
      #  navigation buttons in fancy list views

      'v34clr_b' => '#990000',  # default bg
      'v34clr_v' => '#999900',  # active selection
      'v34clr_h' => '#66ff00',  # hover highlight
      'v34clr_t' => '#006699',  # bg of non-link label td cell


      #-----------------------------------------------------------------------------
      # misc items
      'bluebar' => '#0099cc',  # list view blue bar at the top

      #-----------------------------------------------------------------------------
      #  Color settings.
      #
      'backgroundColor' => '#ffffff',       # background color
      'dkbackground' => '#eeeeee',          # a slightly darker background 
      'textColor' => '#000000',             # default text color (black)
      'linkColor'=> '#666600',              # default link color

      # magins 		    
      'topmargin'=> 0,    
      'leftmargin'=> 0,	 
      'marginwidth'=> 2,
      'marginheight'=> 0, 
      #
      'todayHcolor' =>'#ffccff',            # color to highlight today (light pink)

      # colors used to highlight rows in listview, search result etc.
      #
      # entries are:  color1, color2, color3, a_color1, a_color2, a_color3
      # where color3 is used to highlight today's entries. a_color* is a variant
      # of color*
      'rowColors' => ['#ffffff','#eeeeee', '#dddddd', '#feffff', '#eeeeee', '#eedddd'],   

      #
      # in week view, these colors are used to highlight out busy hours
      #
      'otColors' => ['#FFccFF', '#cc99cc', '#996699', '#663366',
		     '#663366', '#663366', '#9999cc'],             #for today
      'oColors'  => ['#FFFFFF', '#cccccc', '#aaaaaa', '#888888', 
		     '#777777', '#666666', '#9999cc'],             #for other days
      #
      # These colors will be used to highlight user events in public calendars.
      #
      'usrColors' => ['#FFFFFF', '#FFFFCC', '#CCFFFF', '#FFCCFF',
		      '#CCCCFF', '#CCFFCC', '#FFCCCC', '#CCCCCC',
		      '#99CCCC', '#CC99CC', '#CCCC99', '#FFCC99', 
		      '#FF99CC', '#CCFF99', '#CC99FF', '#FF9999',
                      '#99FF99', '#9999FF', '#9999CC', '#99CC99',
		      '#CC9999', '#FFCC66', '#FF66CC', '#CCFF66', 
		      '#66FFCC', '#CC66FF', '#CC66FF', '#CC66CC', 
		      '#66CCCC', '#CCCC66', '#FF6699', '#FF9966',
		      '#66FF99', '#99FF66', '#9966FF', '#6699FF'],

      #
      # Text colors, used to hilight text in small month calendar 
      #	    (in year calendar and day calendar)
      #
      'txtColors' => [ '#000066', '#000099', '#0000cc', '#009900',
		       '#0099cc', '#660000', '#660099', '#0066ff',
		       '#666633', '#666699', '#990000', '#9933cc',
		       '#999933', '#ff00cc', '#996699', '#00cc00',
		       '#ff0066', '#cc9999', '#9999cc', '#99ccff', 
		       '#cc6699', '#00ccff', '#ff6600', '#990000',
		       '#0099ff', '#009933', '#0066cc', '#006666',
		       '#006600', '#333366', '#663366', '#006600',
		       '#990099', '#339966', '#66cc99', '#669900'],

      #-----------------------------------------------------------------------------
      #  misc info printed on selected blank spaces on all calendars.
      'cgiInfo' => '<a href="http://www.math.utexas.edu/users/mzou/webCal/index.html"><b>WebCalendar</b></a>',
      'cgiInfoA'=> '<font color=#006600 size=-2><a href="http://www.math.utexas.edu/users/mzou/webCal/index.html"><b>WebCalendar</b></a><br>by<br><a href="mailto:mzou@math.utexas.edu">Maorong Zou</a></font>',

);
#==============================================================================
# These headers are for sending out email reminders
# or vcalendars 
%webcalConfig::m = (
        'textheader' =>qq{Content-Type: text/plain; charset=iso-8859-1\015\012Content-Transfer-Encoding: 8bit},

	'htmlheader' => qq{Content-Type: text/html; charset=iso-8859-1\015\012Content-Transfer-Encoding: 8bit},

	'vcalheader' => qq{Content-Type: application/x-vCalendar; charset=iso-8859-1; name="event.vcs"\015\012Content-Transfer-Encoding: 8bit},
		    );

#==============================================================================
#
# Font face/size. Add more if needed. 
#
#
%webcalConfig::fontsize=  (
      #----------------------------------------------------------------
      # font size for buttons on the navigation bar.
      #
      # 'menubar' => 'face=arial size=2',
      # 'menubar' => 'size=2',     
      #
      'menubar' => 'size=2',

      #----------------------------------------------------------------
      # font size for table headers
      #
      'tablabel' => 'size=2',

      #----------------------------------------------------------------
      # font size used to display event table in week view and day view
      # 
      # 'wdsummary' => 'face=arial size=1',
      # 'wdsummary' => 'size=-1',
      #
      'wdsummary' => 'size=-1',

      #----------------------------------------------------------------
      # font size used to display event table in month view
      # 'mdsummary' => 'face=arial size=-2',
      # 'mdsummary' => 'size=-2',

      'mdsummary' => 'size=-2',
      #----------------------------------------------------------------
      # font size used to display event table on the diary screen

      'summary' => 'size=-2',

      #----------------------------------------------------------------
      # font size used to display tool tips
      'tip' => '', 

      );
#==============================================================================
1;



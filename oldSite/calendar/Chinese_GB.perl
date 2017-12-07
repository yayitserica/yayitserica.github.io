# 
# This is the list of phrases or words used in the UI.
# To port webCal to another language, translate
# this list should be suffice.
# ÖÐÎÄ¼òÌå°æ±¾
#
# $Header: /home/cvs/webCal/webCal2/Chinese_GB.perl,v 1.33 2004/10/20 23:35:56 mzou Exp $
#

%::phr=(
       # specify character encoding.
       'CHARSET'		=> 'gb2312',

       'Calendar'               => 'ÈÕ³Ì±í',
       
       # Name of weekdays
       'Sunday'                 => 'ÐÇÆÚÌì',
       'Monday'                 => 'ÐÇÆÚÒ»',
       'Tuesday'                => 'ÐÇÆÚ¶þ',
       'Wednesday'              => 'ÐÇÆÚÈý',
       'Thursday'               => 'ÐÇÆÚËÄ',
       'Friday'                 => 'ÐÇÆÚÎå',
       'Saturday'               => 'ÐÇÆÚÁù',
       # Name of weekdays, abbreviation
       'Sun'                    => 'ÖÜÌì',
       'Mon'                    => 'ÖÜÒ»',
       'Tue'                    => 'ÖÜ¶þ',
       'Wed'                    => 'ÖÜÈý',
       'Thu'                    => 'ÖÜËÄ',
       'Fri'                    => 'ÖÜÎå',
       'Sat'                    => 'ÖÜÁù',
       # Name of weekdays, abbreviated even more
       'Su'                     => 'Su',
       'Mo'                     => 'Mo',
       'Tu'                     => 'Tu',
       'We'                     => 'We',
       'Th'                     => 'Th',
       'Fr'                     => 'Fr',
       'Sa'                     => 'Sa',
       
       # Month Names  
       'January'                => 'Ò»ÔÂ', 
       'February'               => '¶þÔÂ',
       'March'                  => 'ÈýÔÂ',   
       'April'                  => 'ËÄÔÂ',   
       'May_'                   => 'ÎåÔÂ',     #! the full month of May, to distingsh with the abbreviation
       'June'                   => 'ÁùÔÂ',    
       'July'                   => 'ÆßÔÂ',    
       'August'                 => '°ËÔÂ',
       'September'              => '¾ÅÔÂ',
       'October'                => 'Ê®ÔÂ',
       'November'               => 'Ê®Ò»ÔÂ',
       'December'               => 'Ê®¶þÔÂ',
       # Month Names, abbreviation
       'Jan'                    => 'Ò»ÔÂ',
       'Feb'                    => '¶þÔÂ',
       'Mar'                    => 'ÈýÔÂ',
       'Apr'                    => 'ËÄÔÂ',
       'May'                    => 'ÎåÔÂ',
       'Jun'                    => 'ÁùÔÂ',
       'Jul'                    => 'ÆßÔÂ',
       'Aug'                    => '°ËÔÂ',
       'Sep'                    => '¾ÅÔÂ',
       'Oct'                    => 'Ê®ÔÂ',
       'Nov'                    => 'Ê®Ò»ÔÂ',
       'Dec'                    => 'Ê®¶þÔÂ',

       # repeating rules 
       'OneTime'                => 'Ò»´Î',                   # one time event
       'Daily'                  => 'Ã¿Ìì',                      
       'Weekly'                 => 'Ã¿ÐÇÆÚ',
       'Every2Weeks'            => 'Ã¿Á½¸öÔÂ',
       'MonthlyByDate'          => 'Ã¿ÔÂµÄÄ³Ìì',
       'MonthlyByWeekday'       => 'Ã¿ÔÂµÄÄ³ÖÜÄ©',         # e.g. the 3rd Friday of every month
       'Yearly'                 => 'Ã¿Äê',
       'MTWThF'                 => 'Ò»ÖÁÎå',
       'MWF'                    => 'Ò»¡¢Èý¡¢Îå',
       'TTh'                    => 'T Th',
       'YearlyByMonthWeekday'   => 'Ã¿ÄêÄ³ÔÂÄ³ÖÜ',    # e.g. the first Monday of June, yearly
       'EveryOtherDay'          => 'Ã¿¸ôÒ»Ìì',
       'Every3rdDay'            => 'Ã¿ÈýÌì',
       'Every4thDay'            => 'Ã¿ËÄÌì',
       'Every5thDay'            => 'Ã¿ÎåÌì',
       'Every6thDay'            => 'Ã¿ÁùÌì',

       # event types
       'Appointment'            => 'Ô¼¶¨',
       'Todo'                   => '´ý°ìÊÂÒË',
       'Meeting'                => '»áÒé',
       'Special'                => 'ÌØÊâÊÂ¼þ',            # for holidays, event require no specific time

       # option button names
       'CalendarOptions'        => 'ÈÕ³Ì±í°²ÅÅÉè¶¨',   # title of the options page
       'Compare'                => '¶Ô±È',            # Button: compare calendars and find conflicts ...
       'Search'                 => '²éÕÒ',             # Button:
       'GotoDate'               => 'Ìøµ½Ä³Ìì',           # Button:
       'Previous'               => 'ÍùÇ°',           # previous Month/Day/Week 
       'Today'                  => '½ñÌì',              # This Month/Day/Week 
       'Next'                   => 'Íùºó',               # next Month/Day/Week 
       'Options'                => 'Éè¶¨',            # Button: go to options page 
       'Admin'                  => '¹ÜÀí',              # Button: go to admin page
       'Logout'                 => '×¢Ïú',             # Button: go to logout page
       'DayView'                => 'ÈÕÆÚ²ì¿´Ä£Ê½',           # Alt name under the image buttons
       'WeekView'               => 'ÖÜ²ì¿´Ä£Ê½',
       'MonthView'              => 'ÔÂ²ì¿´Ä£Ê½',
       'YearView'               => 'Äê²ì¿´Ä£Ê½',
       
       
       # messages on the setup screen
       'SetupYourCalendar'      => 'Éè¶¨ÄãµÄÈÕÀú', # title
       'YourCalendarName'       => 'ÄãÈÕ³Ì±íµÄÃû³Æ',
       'YourEmailAddress'       => 'ÄãµÄµç×ÓÓÊ¼þ',
       'YourName'               => 'ÄãµÄÃû×Ö',
       'Password'               => 'ÃÜÂë',
       'RetypePassword'         => 'È·ÈÏÃÜÂë',
       'CalendarType'           => 'ÈÕÀúÀàÐÍ',
       'Public'                 => '¹«ÖÚ',
       'Private'                => 'Ë½ÈË',
       'ForPrivateCalendar'     => 'Ë½ÈËÓÃÈÕÀú',
       'OthersSeeTextTime'      => 'ÆäËûÈË¿ÉÒÔ¿´¼ûÊ±¼äºÍÄÚÈÝ',
       'OthersSeeTitle'         => 'Others See Event Title',
       'OthersSeeTimeOnly'      => 'ÆäËûÈË½öÄÜ¿´¼ûÊ±¼ä',
       'OthersSeeNothing'       => 'ÆäËûÈË²»ÄÜ¿´',
       'PublicCalendar'         => '¹«ÖÚÈÕÀú',
       'Submit'                 => 'Ìá½»',
       'Cancel'                 => 'È¡Ïû',
       'TheName'                => 'Ãû³Æ',
       'HasBeenTaken'           => 'has already been taken',
       'PasswordMismatch'       => 'ÃÜÂë²»¶Ô',
       'TryAgain'               => 'ÇëÔÙÊÔÒ»´Î',
       'EmailIncomplete'        => 'ÓÊ¼þµØÖ·²»ÍêÕû',
       'CannotCreateCalendar'   => '²»ÄÜ´´½¨ÄãµÄÈÕ³Ì±í£¬ÈÕ³Ì±íµÄÃû³Æ±ØÐëÊ¹ÓÃÓÐÐ§µÄÃû×Ö',
       'CannotWriteInfoFile'    => 'ÎÞ·¨Ð´ÈëÐÅÏ¢ÎÄ¼þ',
       'CannotWriteDataFile'    => 'ÎÞ·¨Ð´ÈëÊý¾ÝÎÄ¼þ',
       'CannotWritePasswordFile'=> 'ÎÞ·¨¸ü¸ÄÃÜÂëÎÄ¼þ',
       'Congratulations'        => '¹§Ï²¹§Ï²£¬¸ã¶¨ÁË',
       'SetupGreetingA'         => 'ÄãµÄÈÕ³ÌÒÑ¾­Éè¶¨Íê³É£¬Çë°ÑÒÔÏÂµÄµØÖ··ÅÈëÊÕ²Ø¼Ð',
       'SetupGreetingB'         => 'Çë¼Ç×¡ÄãµÄÃÜÂë£¬²»È»ÎÞ·¨µÇÂ½µÄÅ¶',
       'HaveToSupplyCalendarName' => 'Äã±ØÐëÎªÄãÈÕ³Ì±íÃüÃû',
       'PleaseDoNotUseYourUnixAccountPassword' => 'Èç¹ûÄãÊÇUnixµÄÓÃ»§£¬²»ÒªÊ¹ÓÃÏàÍ¬µÄÃÜÂë',
       
       
       # Event Editor Messages
       'EventEditor'            => 'Ê±¼ä±à¼­Æ÷',
       'AppointmentEditor'      => 'Ô¼¶¨ÊÂ¼þ±à¼­Æ÷',
       'ToDoEditor'             => '´ý°ìÊÂÒË±à¼­Æ÷',
       'MeetingEditor'          => '»áÒé±à¼­Æ÷',
       'SpecialEditor'          => 'ÌØÊâÊÂ¼þ±à¼­Æ÷',
       'AuthRequired'           => '×¢Òâ£º±à¼­Õâ¸öÈÕ³Ì±íÐèÒª¾­¹ýÈÏÖ¤',
       'CurrentEvents'          => 'µ±Ç°ÊÂ¼þ',
       'Time'                   => 'Ê±¼ä',
       'What'                   => 'Ê²Ã´ÊÂÇé',
       'Date'                   => 'Ê±¼ä',
       'Start'                  => '¿ªÊ¼',
       'End'                    => '½áÊø',
       'Details'                => 'Ã÷Ï¸',
       'Colors'                 => 'ÑÕÉ«',
       'Privacy'                => 'ÒþË½',         
       'Frequency'              => 'ÆµÂÊ',
       'Reminders'              => 'ÌáÐÑÆ÷',
       'Mail'                   => 'ÓÊ¼þ',
       'min'                    => '·ÖÖÓ', # abbreviation of minute
       'mins'                   => '·ÖÖÓ',
       'hours'                  => 'Ð¡Ê±',
       'days'                   => 'ÌìÊý',
       'weeks'                  => 'ÐÇÆÚÊý',
       'Occurs'                 => '·¢ÉúÊý',
       'For'                    => 'Îª',
       'times'                  => '´ÎÊý',   # as in repeat for 10 times 
       'Popup'                  => 'µ¯³ö',
       'Author'                 => '×÷Õß',
       'Blink'                  => 'ÉÁË¸',
       'Chime'                  => 'Chime',
       'Insert'                 => '²åÈë',
       'InsertAsNew'            => '²åÈëÐÂ¼ÍÂ¼',
       'Modify'                 => 'ÐÞ¸Ä',
       'DeleteThisOne'          => 'É¾³ýÕâÌõÊÂ¼þ',
       'DeleteAll'              => 'É¾³ýËùÓÐÊÂ¼þ',
       'Delete'                 => 'É¾³ý',
       'Due'                    => 'µ½ÆÚ', # as in Due Date
       'TaskDone'               => 'ÈÎÎñÒÑ¾­Íê³É',
       'RemindForward'          => '¼ÌÐøÌáÐÑ',
       'Yes'                    => 'È·¶¨Yes',
       'No'                     => 'È¡ÏûNo',
       'Y'                      => 'Y', # abbrieviation of Yes
       'N'                      => 'N', # abbrieviation of No
       'ToDo'                   => '´ý°ìÊÂÒË',
       'Participants'           => '±»ÑûÇëÈË',
       'none'                   => 'ÎÞ',
       'MailToAll'              => '·¢¸öËùÓÐÈË',
       'FindConflict'           => '²éÕÒ³åÍ»ÊÂ¼þ',
       'NoTimeEvent'            => 'No Time Event',
       'Fg'                     => 'Ç°¾°',
       'Bg'                     => '±³¾°',
       'Error'                  => '´íÎó',
       'HasError'               => '´¦ÀíÇëÇó¹ý³ÌÖÐ³ö´í',
       'ListParticipants'       => 'ÁÐ¾Ù²Î¼ÓÕßµÄ»áÒé×é»òÕßÈÕÀúÃû×Ö»òÕßÏê¾¡µÄµç×ÓÓÊ¼þµØÖ·¡£ËûÃÇµÄÈÕÀú½«»á±»¸üÐÂ',
       'ConflictTable'          => '³åÍ»±í',
       'Conflict'               => '³åÍ»',         
       'Table'                  => '±í¸ñ',         
       'You'                    => 'Äã',
       'NotAllowedToModify'     => '²»ÔÊÐíÐÞ¸ÄÕâÌõ¼ÇÂ¼',
       'NotAllowedToEdit'       => '²»ÔÊÐí±à¼­ÕâÌõ¼ÇÂ¼',
       'Warning'                => '¾¯¸æ',
       'NoRemindForward'        => 'ÎÞ·¨ÎªÖØ¸´µÄ´ú°ìÊÂÒË½øÐÐÌáÐÑ' ,
       'Acknowledgement'        => 'È·ÈÏ',
       'UpdatedOK'              => 'ÈÕ³Ì±í¸üÐÂ³É¹¦',
       'BackToCalendar'         => 'µã»÷ÕâÀï»Øµ½ÄãµÄÈÕ³Ì±í',
       'OpenFailed'             => 'ÎÞ·¨´ò¿ªÄãµÄÈÕ³Ì±í',
       'NoCalendar'             => 'ÄãºÃÏóÃ»ÓÐÈÕ³Ì±íÎÄ¼þ',
       
       # goto page
       'Goto_Date'              => 'Ìøµ½Ä³ÈÕ', #title
       'Goto'                   => 'Ìø×ª',
       'SelectDate'             => 'ÇëÑ¡ÔñÈÕÆÚ',
       'View'                   => '²é¿´',
       'Go'                     => '¿ªÊ¼', # function as submit
       'Set'                    => 'Éè¶¨', # as in set options
       
       # set options page
       'My_day_starts_at'       => 'ÎÒµÄ¹¤×÷ÈÕ´Ó',
       'ends_at'                => '½áÊøÓÚ',
       'Interval'               => '¼ä¸ô',
       'Week_starts_on',        => 'Week of ',
       'include_weekend',       => '°üÀ¨ÖÜÄ©',
       'Date_Format'            => 'ÈÕÆÚ¸ñÊ½',
       'Time_Format'            => 'Ê±¼ä¸ñÊ½',
       'Time_zone'              => 'Ê±Çø',
       'Default_view'           => 'Ä¬ÈÏ²ì¿´Ä£Ê½',
       'Default_Reminders'      => 'Ä¬ÈÏÌáÐÑÆ÷',
       'ListEditors'            => 'ÔÊÐíÐÞ¸ÄÄãµÄÈÕ³Ì±íµÄÈËÔ±',
       'Editors'                => '±à¼­Õß',
       'Email'                  => 'ÓÊ¼þ',
       'Default'                => 'Ä¬ÈÏ',
       'Homepage'               => '¸öÈËÍøÒ³',
       'Language'               => 'ÓïÑÔ',
       
       # admin page
       'Administration'         => '¹ÜÀí',
       'adminDisabled'          => '¹«ÖÚÈÕ³Ì±í¹ÜÀíÒÑ±»½ûÓÃ',
       'Change_Password'        => 'ÐÞ¸ÄÃÜÂë',
       'Old_Password'           => '¾ÉÃÜÂë',
       'New_Password'           => 'ÐÂÃÜÂë',
       'New_Password_Again'     => 'ÔÙ´ÎÊäÈëÃÜÂë',
       'Create_Meeting_Group'   => '½¨Á¢»áÒé×é',
       'to_be_used_by_meeting_editor' => '»áÒé×é±à¼­ÕßÊ¹ÓÃ',
       'Existing_Groups'        => 'ÍË³ö×é',
       'Group_Name'             => '×éÃû³Æ',
       'ListGroupMembers'       => 'ÊäÈë²ÎÓëÕßÈÕ³Ì±íµÄÃû³Æ»òÓÊ¼þµØÖ·',
       'Merge_Calendars'        => 'ºÏ²¢ÈÕ³Ì±í',
       'CalendarNames'          => 'ÈÕ³Ì±íÃû×Ö',
       'EraseCalendar'          => 'Çå¿ÕÎÒµÄÈÕ³Ì±í',
       'DeleteCalendar'         => 'É¾³ýÎÒµÄÈÕ³Ì±í',
       'errorPerm'              => '¾Ü¾ø·ÃÎÊ',
       'calDeleted'             => 'ÄãµÄÈÕ³Ì±íÒÑ¾­±»É¾³ý',
       'ThankYou4Using'         => '¸ÐÐ»ÄãµÄÊ¹ÓÃ',
       'calErased'              => 'ÄãµÄÈÕ³Ì±íÒÑ¾­Çå¿Õ',
       'eraseFailed'            => 'ÎÞ·¨Çå¿ÕµÄÄãÈÕ³Ì±í',
       'cpasswordWrong'         => 'ÈÏÖ¤³ö´í£ºÃÜÂë´íÎó',
       'ipasserror'             => 'ÎÞ·¨´ò¿ªÃÜÂëÎÄµµ£¬ÇëÔÙÊÔÒ»´Î',
       'password_changed'       => 'ÄãµÄÃÜÂëÐÞ¸ÄÍê±Ï',
       'cannot_open'            => 'ÎÞ·¨´ò¿ª',
       'Meeting_group'          => '»áÒé×é',
       'updated'                => '³É¹¦¸üÐÂ',
       'new_entries'            => 'ÐÂ¼ÍÂ¼ÒÑ¾­²åÈëµ½ÈÕ³Ì±íÖÐ',
       'Unknown_command'        => '²»Ã÷Ö¸Áî',
       
       
       # search page
       'Search_Calendar'        => 'ËÑË÷ÈÕ³Ì±í',
       'Topic'                  => 'Ö÷Ìâ',
       'SearchAll'              => 'ËÑÑ°ËùÓÐ',
       'Search_From'            => '´ÓÕâÀï¿ªÊ¼',
       'To'                     => 'µ½',
       'Search_Results'         => 'ËÑË÷½á¹û',
       'CalendarReminder'       => 'ÈÕ³Ì±íÌáÐÑÆ÷',
         
       # Greeting
       'WelcomeToWebCalendar'   => '»¶Ó­Ê¹ÓÃ WebCalendar',
       'PleaseSelectACalendar'  => 'ÇëÑ¡ÔñÒ»¸öÈÕ³Ì±í',
       'PleaseEnterCalendarName'=> 'ÇëÊäÈëÄãµÄÈÕ³Ì±íµÄÃû³Æ',

       #download
       'notAllowedToDownload'   => 'Äã²»ÔÊÐíÏÂÔÚ±¾ÈÕ³Ì±í',
         
       #logout
       'AuthNotRequired'        => '×¢Òâ£º²ì¿´¹«ÖÚÈÕ³Ì±í²»ÐèÒªÊÚÈ¨',
       'logoutInstruction'      => 'ÐèÒª×¢ÏúÊ±£¬µã»÷×¢ÏúÍ¼±ê¡£µ±³öÏÖµÇÂ½¶Ô»°´°Ê±£¬ÓÃ"nobody"ÓÃ»§µÇÂ½²»ÐèÒªÃÜÂë',
       'loginInstruction'       => 'Èç¹ûÒªÒÔÆäËûÓÃ»§µÇÂ½£¬µã»÷"Login"Í¼±ê',
       'You_ve_logout'          => 'ÄãÒÑ¾­×¢Ïú',
       'access_denied'          => '¾Ü¾ø·ÃÎÊ',
       'login'                  => 'µÇÂ½',

       #compare
       'CompareCalendars'       => '±È½ÏÈÕ³Ì±í',
       'Enter_calendar_names'   => 'ÊäÈëÈÕ³Ì±íµÄÃû³Æ',
       'or_meeting_group'       => '»òÕß"»áÒé×é"',
       'EventsTable'            => 'ÊÂ¼þ±í',
       'Name'                   => 'Ãû³Æ',
       'Events'                 => 'ÊÂ¼þ',
       'ForegroundColor'        => 'Ç°¾°ÑÕÉ«',
       'BackgroundColor'        => '±³¾°ÑÕÉ«',

       # msg in the main
       'accessAnotherCal'        => 'To access another calendar, please',

       # Some missing phrases and addons ...
       'Close'                  => '¹Ø±Õ',
       'ShowCombinedCalendar'   => 'ÏÔÊ¾ºÏ²¢µÄÈÕ³Ì±í',
       'CombinedCalendar'       => 'ºÏ²¢ÈÕ³Ì±í',
       'Participants_are_allowed_to' => "²ÎÓëÕßÖ»ÔÊÐí",
       'View_only'              => 'Ö»ÄÜ²ì¿´',
       'Edit'                   => '±à¼­',
       'EditAndDelete'          => '±à¼­¡¢É¾³ý',
       'Updated_calendars'      => 'ÒÔÏÂµÄÈÕ³Ì±í½«»áÒ»Í¬¸üÐÂ',
       'NotAllowedToUpdate'     => 'Äã²»ÔÊÐí¸üÐÂÒÔÏÂµÄÈÕ³Ì±í',
       'invalid_date'           => '·Ç·¨ÈÕÆÚ',
       'Schedule'               => '¼Æ»®',            # as in 'schedule an appointment on calendar mzou
       'onCalendar'             => 'on calendar',          #
       'DeleteForward'          => 'Delete Forward Occurences',
       'All'                    => 'ËùÓÐ',
       'SearchSubjectEmpty'	=> '²éÕÒÄ¿±ê²»ÄÜÎª¿Õ',
       'Start_date'             => '¿ªÊ¼ÈÕÆÚ',
       'is_after_due_date'      => 'is after due date',
       'Invalidusername'	=> '·Ç·¨ÓÃ»§Ãû',
       'Protected'		=> '==ÊÜ±£»¤==',
       'Invalidcalendarname'	=> '·Ç·¨µÄÈÕ³Ì±íÃû³Æ',
       'Couldnotfindcalendar' => 'Ã»ÓÐÕÒµ½ÈÕ³Ì±í',
       'Invalidspooldir'      => 'Invalid spooldir',
       'ListView'             => 'Ã÷Ï¸ÁÐ±í²ì¿´Ä£Ê½',
       'BlockView'            => 'µ¥Ôª¸ñ²ì¿´Ä£Ê½',

       # address book stuff
       'AddressBook'           => 'µØÖ·²¾',
       'AddressBookEditor'     => 'µØÖ·²¾±à¼­Æ÷',
       'AddressBookUpdated'    => 'µØÖ·²¾ÒÑ¸üÐÂ',
       'BackToAddressBook'     => 'µã»÷ÕâÀï·µ»Øµ½µØÖ·²¾',
       'FirstName'             => 'Ãû',
       'LastName'              => 'ÐÕ',
       'Address'               => 'µØÖ·',
       'Phone'                 => 'µç»°',
       'Fax'                   => '´«Õæ',
       'Info'                  => 'ÐÅÏ¢',
       'Affiliation'           => '¹ØÁª×ÊÁÏ',
       'Where'                 => 'ÄÇÀïµÄ',
       'Priority'              => 'ÓÅÏÈ¼¶',
       'Diary'                 => 'ÈÕ¼Ç',
       'DiaryUpdated'          => 'ÈÕ¼ÇÒÑ¸üÐÂ',
       'ReadDiary'             => '¶ÁÈÕ¼Ç',       
       'From'                  => 'From',
       'PlainText'             => '´¿ÎÄ±¾',
       'Html'                  => 'Html',
       'SearchDiary'           => '²éÕÒÈÕ¼Ç',
       'SearchFor'             => '²éÕÒ..',
       'NeedAuth2Proceed'      => '²ì¿´¼°±à¼­ÐèÒªÈÏÖ¤£¬Çëµã»÷ \'µÇÂ½\', »òÕßµã»÷ÈÕ³Ì±íÍ¼±ê»Øµ½ÄãµÄÈÕ³Ì±í',

       # Priority of ToDo tasks
       'Urgent'                => '½ô¼±',
       'High'                  => '¼±',
       'Medium'                => 'Ò»°ã',
       'Low'                   => 'µÍ',       

       # find calendar names
       'FindCalNames'          => '²éÕÒÈÕ³Ì±í',

       # overlapping 
       'AllowOverlap'          => 'ÔÊÐíÊÂ¼þÖØµþ',
       'GoBack'                => '·µ»Ø',  #

       'OverlapInstr'          => 'Õâ¸öÊÂ¼þ±»¾Ü¾ø£¬ÒòÎªËü±»Ò»´Î»ò¶à´ÎÓÚÏÖÓÐµÄÔÚÈÕ³Ì±íÖÐµÄÊÂ¼þÖØµþ¡£Èç¹ûÄãÕæµÄÏëÒª°ÑËü²åÈëÄãµÄÈÕ³Ì±íÖÐ£¬·µ»Ø£¬Ñ¡Ôñ"<b>ÔÊÐíÊÂ¼þÖØµþ</b>"ÏîµÄ"<b>Y</b>"£¬È»ºóÔÙÊÔÒ»´Î',

       'signup'                 => '×¢²á',
       'Invalidpassword'	=> 'ÃÜÂë²»¶Ô',
       'olduserInstruction'     => 'ÎÒÒÑÓÐÈÕ³Ì±í',
       'newuserInstruction'     => 'ÎÒÊÇÐÂÓÃ»§',
       'PleaseLogin'            => 'ÐèÒªÈÏÖ¤£¬ÇëÏÈµÇÂ½!',
       'NextNew'		=> 'ÏÂÒ»¸öÐÂÊÂ¼þ',
       'RememberIDPswd'         => 'Çë¼Ç×¡ÎÒµÄÓÃ»§ÃûÒÔ¼°ÃÜÂë(Òò´ËÎÒ\²»ÐèÒªÏÂÒ»´ÎÖØ¸´ÊäÈë)',
       'global'                 => 'Global', # mark global meeting group
       'groupnametaken'         => '»áÒé×éµÄÃû³ÆÒÑ±»Ê¹ÓÃ£¬ÇëÊäÈëÆäËûµÄÃû³Æ',
       'deleteEventsBefore'     => 'ÏÈÉ¾³ýËùÓÐÊÂ¼þ',
       'AutoStart'              => '×Ô¶¯´ò¿ª WebCalendar',
       'Readers'                => '¶ÁÕß',
       'ListReaders'            => 'ÁÐ³ö¿ÉÒÔ¶ÁÈ¡ÄãµÄÈÕ³Ì±íµÄÓÃ»§',
       'Print'			=> '´òÓ¡',
       'mailVcal'		=> 'ÔÚÓÊ¼þÌáÐÑÆ÷ÖÐ¸½ÉÏ"VCALENDAR"',
       'FriendsEmail'		=> 'ÅóÓÑµÄµç×ÓÓÊ¼þµØÖ·',
       'PersonalMessage'	=> 'Ôö¼ÓË½ÈËÐÅÏ¢',
       'Mail2Friend'		=> '°ÑÕâ¸öÊ±¼ä±í·¢¸øÅóÓÑ',
       'MailSentTo'		=> 'ÈÕ³Ì±íÒÑ¾­·¢¸ø ',
       'Location'               => 'Location',
       # the next line is used in a confirmation popup when a user is modifying 
       # an repeating event. The date displayed is the current date, normally 
       # it is not the initial starting date of the event.
       'CalendarFormat'			=> 'ÈÕ³Ì±í¸ñÊ½',
       'CalendarFile'			=> 'Calendar File',
       'SetupGreetingC'         => 'Çë²é¿´ÈÕ³Ì±íµÄ"ÉèÖÃ"Ò³Íê³ÉÉè¶¨.',
       'Email2Selected'		=> '¸øÑ¡ÖÐµÄµØÖ··¢ËÍÓÊ¼þ',
       'AddNewEmail'		=> 'Ìí¼ÓÐÂµÄÓÊ¼þµØÖ·µ½ÎÒµÄµØÖ·²¾',
       'ContactP'		=> 'ÁªÏµÈË',
       'ContactE'		=> 'ÁªÏµµç×ÓÓÊ¼þ',
       'DailyReminder'		=> 'Ã¿Ìì·¢ÓÊ¼þÌáÐÑÎÒ',
       'CompletedTasks'		=> 'Íê³ÉµÄÈÎÎñ',
       'PendingTasks'		=> 'Î´Íê³ÉµÄÈÎÎñ',
       'Import2Cal'		=> '°ÑÕâ¸öÊÂ¼þÌí¼Óµ½ÈÕ³Ì±í',
       'ViewOnly'		=> '»òÕßÑ¡Ôñ²é¿´ÆäËûµÄÈÕ³Ì±í',
       'newLogin'		=> '»òÕßÊ¹ÓÃÆäËûÓÃ»§µÇÂ½', 
       'QuickAdd'		=> '¿ìËÙÐÂÔö',
       'Event'                  => 'ÊÂ¼þ',
       'TodoList'               => '´ý°ìÊÂÒËÇåµ¥',
       'MarkComplete'		=> '°ÑÑ¡ÖÐµÄ±ê¼ÇÎªÍê³É',
       'DeleteChecked'		=> 'É¾³ýÑ¡ÖÐµÄ',
       'AddNewTask'             => 'Ôö¼ÓÐÂÈÎÎñ',
       'TaskManager'            => 'ÈÎÎñ¹ÜÀíÆ÷',
       'DetailedView'		=> 'Ã÷Ï¸',
       'CombinedView'		=> '×éºÏÊ½µÄ',
       'WarnInvitee'		=> 'ÄãÈ·ÈÏ°ÑÕâÌõÊÂ¼þÌí¼Óµ½ÒÔÏÂµÄÈÕ³Ì±íÖÐÂð£¿',
       'creationDisabled'	=> '±§Ç¸£¬ÈÕ³Ì±íÉè¶¨µÄ¹¦ÄÜ±»ÏµÍ³¹ÜÀíÔ±½ûÓÃÁË£¬ÇëÁªÏµÄãµÄÏµÍ³¹ÜÀíÔ±.',
       'RequestRSVP'            => 'ÐèÒªRSVP(Çë»Ø¸´)ÌáÊ¾',
       'invitationAccepted'     => '½ÓÊÜ',
       'invitationDeclined'     => '¾Ü¾ø',
       'AttendanceConfirmation' => 'È·ÈÏ»áÒé²Î¼ÓÕß',
       'AcceptInvitation'         => '½ÓÊÜÑûÇë',
       'DeclineInvitation'      => '¾Ü¾øÑûÇë',
       'Undecided'		=> 'Î´¾ö¶¨',
       'Category'		=> 'Àà±ð',
       'Speaker'		=> '·¢ÑÔÈË',
       'Header'			=> 'Ò³Ã¼',
       'Footer'			=> 'Ò³½Å',
       'HeaderFooter'		=> 'ÊäÈë×Ô¶¨ÒåµÄÒ³Ã¼/Ò³½ÅHTML´úÂë',
       'MiscInfo'		=> 'ÔÓÏîÐÅÏ¢',
       'Description'		=> 'ÃèÊö',
       'AllDay'			=> 'È«Ìì',
       'Tomorrow'		=> 'Ã÷Ìì',
       'ThisWeek'		=> 'Õâ¸öÐÇÆÚ',
       'ThisMonth'		=> 'Õâ¸öÔÂ',
       'Keyword'		=> '¹Ø¼ü´Ê',
       'NoEvents'		=> 'ÎÞÊÂ¼þ',
       'EditThis'		=> '±à¼­Õâ¸öÊÂ¼þ',
       'recurFormat'            => 'Occurs %s for %d times, starting on %s.', # used in formating
       'taskDoneFormat'		=> 'Completed by %s on %s at %s', # formating, eg. by Jone on Mon 12/11 at 5pm


       'warnModify'	       => 'ÄãÕýÔÚÐÞ¸ÄÒ»¸öÖØ¸´Ê±¼ä¡£ÏÔÊ¾µÄÈÕÆÚ(»òÕßµ½ÆÚÈÕ)²»ÊÇÕâ¸öÊÂ¼þµÄÔ­À´µÄÈÕÆÚ(»òÕßµ½ÆÚÈÕ)¡£Èç¹ûÄãÕæµÄÐèÒª±à¼­£¬ÄÇÃ´Õâ¸öÊÂ¼þ½«»á´ÓÐÂµÄÈÕÆÚ¿ªÊ¼ÖØ¸´£¬²¢ÇÒËùÓÐÒþ²ØµÄÊÂ¼þ°üÀ¨ÅÅ³ýÈÕÆÚ¡¢»áÒéÈ·ÈÏ×ÊÁÏ½«»á¶ªÊ§¡£ÇëÈ·ÈÏÊÇ·ñ¼ÌÐø¡£ÐÞ¸ÄÒ»¸öÖØ¸´Ê±¼äÊÂ¼þÖÐµÄÒ»²¿·ÖÊÇ²»ÔÊÐíµÄ£¬³ý·ÇÉ¾³ýÕâ¸öÖØ¸´µÄÊÂ¼þ²¢ÖØÐÂÔö¼ÓÊÂ¼þ¡£Õâ¸öÊÂ¼þÔ­À´µÄÈÕÆÚ(»òÕßµ½ÆÚÈÕ)ÊÇ  ',

       'gEventError'		=> 'ÄãÕýÔÚÉ¾³ýÒ»¸öµ«Ã»ÓÐ±»Ðí²Ù×÷µÄ¿ÉÖØ¸´µÄÊÂ¼þÖÐµÄÒ»²¿·Ý¡£ÕâÊÇ²»ÔÊÐíµÄ£¬ÒòÎªÕâ»áÊ¹ÄãµÄÈÕ³Ì±íÓë×éÀïÆäËüµÄÈÕ³Ì±íÊÇÇ÷Í¬²½ÐÔ¡£²»¹ýÄãÊ¹ÓÃÔÚÊÂ¼þ±à¼­Æ÷ÖÐµÄ"É¾³ýËùÓÐµÄÊÂ¼þ"Í¼±ê»¹ÊÇ¿ÉÒÔ´ÓÈÕ³Ì±íÖÐÉ¾³ýÕâÐ©ÖØ¸´µÄÊÂ¼þµÄ¡£',

       'City'                  => '³ÇÊÐ',
       'State'                 => 'ÖÝ',
       'Zip'                   => 'ÓÊ±à',
       'Country'               => '¹ú¼Ò',


       'ResetPasswd'           => 'ÖØÐÂÉè¶¨ÃÜÂë',
       'File'                  => 'ÎÄ¼þ',
       'AlreadyOnCalendar'     => 'ÕâÐ©¼ÍÂ¼ÒÑ¾­ÔÚÄãµÄÈÕ³Ì±íÖÐ£¬Ö»²»¹ýÊÇÄãºöÂÔÁË.',
       'ImportFileTitle'         => '´ÓÄãµÄµçÄÔµÄ"VCalendar"ÎÄ¼þµ¹ÈëÊý¾Ý',
       'ImportFileInstruction'   => 'Èç¹ûÒª´ÓÄãµÄµçÄÔµÄ"VCalendar"ÎÄ¼þµ¹ÈëÊý¾Ý£¬ÇëÊäÈë"vCalendar"ÎÄ¼þµÄÈ«Â·¾¶²¢µã»÷"<b>Ìá½»</b>".Èç¹ûÄã²»È·¶¨ÎÄ¼þµÄÂ·¾¶£¬Äã¿ÉÒÔµã»÷"<b>ä¯ÀÀ</b>"ÕÒµ½ÄãµÄÎÄ¼þ.',
       'ImportVcal'		=> '´Ó"VCalendar"ÖÐµ¹ÈëÊÂ¼þ',
       'ImportVcalInstruction'	=> '»òÕß´ÓVCalendar¼ôÌù¼ÍÂ¼µ½ÎÄ±¾Çø£¬È»ºóµã»÷"<b>Ìá½»</b>"',


       # new phrases

       'DetailedWorkingHours'   => 'Detailed Daily Working Hours', 
       'SelectAttendee' => 'ÊÂ¼þ²Î¼ÓÕßÖÐ¿ÉÒÔÊÇ<b>"ÈÕ³Ì±íÃû×Ö£¬µç×ÓÓÊ¼þµØÖ·£¬»áÒé×éÃû³Æ£¬»òÕßÆä×éºÏ"</b>¡£Äã¿ÉÒÔ´Ó×ó±ßµÄ¶àÖØÁÐ±íÖÐÑ¡ÔñÈÕ³Ì±íµÄÃû×Ö£¬»òÕßÔÚÉÏÃæÊäÈë¡£µç×ÓÓÊ¼þµØÖ·±ØÐëÍêÕûµÄÊäÈë¡£»áÒé×éÈç¹û´æÔÚ£¬¿ÉÒÔ´Ó"»áÒé×é"Ñ¡Ïîµ¥ÖÐÑ¡³öÀ´¡£ÄãÒ²¿ÉÒÔÔÚÉÏ±ßÊäÈë»áÒé×é¡£ÊäÈë¶à¸ö×ÊÁÏÊ±Ó¦¸ÃÓÃ¿Õ¸ñ»òÕß¶ººÅ·Ö¿ª¡£',

       'MkEditorListInstruction' => 'ÎªÁËÔÊÐíÄãµÄÅóÓÑ»òÕßÍ¬ÊÂ±à¼­ÄãµÄÈÕ³Ì±í£¬Çë´Ó×ó±ßÇåµ¥ÖÐÑ¡ÔñËûÃÇµÄÈÕ³Ì±íµÄÃû×Ö¡£ÄãÒ²¿ÉÒÔÔÚÉÏÃæÊäÈëËûÃÇµÄÈÕ³Ì±íµÄÃû³Æ',

       'MkReaderListInstruction' => 'Èç¹ûÄãµÄÈÕ³Ì±íµÄÊý¾ÝÊÜ±£»¤£¬ÆäËûµÄÓÃ»§²»ÄÜ¶ÁÈ¡ÄãµÄÈÕ³Ì±í¡£Äã¿ÉÒÔ¸øÑ¡ÔñÒ»Ð©ÓÃ»§´´½¨Ò»·ÖÁÐ±í£¬Ðí¿ÉËûÃÇ¶ÁÈ¡ÄãÈÕ³Ì±í¡£Õâ·ÝÇåµ¥ÓÉÈÕ³Ì±íµÄÃû×Ö×é³É¡£Çë´Ó×ó±ßÇåµ¥ÖÐÑ¡ÔñËûÃÇµÄÈÕ³Ì±íµÄÃû×Ö¡£ÄãÒ²¿ÉÒÔÔÚÉÏÃæÊäÈëËûÃÇµÄÈÕ³Ì±íµÄÃû³Æ',

       'MkGroupInstruction'=> 'ÈÕ³Ì±íµÄÃû×Ö»òÕßµç×ÓÓÊ¼þµØÖ·¿ÉÒÔÓÃÀ´¼ø¶¨¹¤×÷×éµÄ³ÉÔ±£¬Çë´Ó×ó±ßÇåµ¥ÖÐÑ¡ÔñËûÃÇµÄÈÕ³Ì±íµÄÃû×Ö¡£ÄãÒ²¿ÉÒÔÔÚÉÏÃæÊäÈëËûÃÇµÄÈÕ³Ì±íµÄÃû³Æ¡£µç×ÓÓÊ¼þµØÖ·Ò»¶¨ÒªÍêÕûÊäÈë',
       'Contacts'	   => 'ÁªÏµÈË',
       'Tasks'		   => 'ÈÎÎñ',
       'Day'		   => 'Ìì',
       'Week'		   => 'ÖÜ',
       'Month'		   => 'ÔÂ',
       'Year'		   => 'Äê',
       'OffDutyHours'	   => '·Ç¹¤×÷Ê±¼ä',
       'AddNewAddress'	   => 'Ôö¼ÓÐÂµÄµØÖ·',
       'HeaderColor'	   => 'Ò³Ã¼ÑÕÉ«',
       'Never'		   => '´Ó²»',
       'OverlapNotAllowed' => 'Unfortunately, overlap events is not allowed on the following calendars.',
       'Notes'		   => '±Ê¼Ç',
       'PostIt'		   => '±ãÌõPostIt',   # as in post it notes
       'Title'		   => '±êÌâ',
       'AddNewNote'	   => 'Ôö¼ÓÐÂ±Ê¼Ç',
       
       'InterestedCalendars' => 'ÁÐ³öËùÓÐÄã¿ÉÒÔ¶ÁÈ¡»òÕß±à¼­µÄÈÕ³Ì±í', 
       'CalendarListInstruction' => 'Èç¹ûÄã²»ÏëÔÚÈÕ³Ì±íÑ¡ÏîÇåµ¥¿´µ½³¤³¤µÄÁÐ±íÇåµ¥£¬Äã¿ÉÒÔÔÚÕâÀï´´½¨Ò»·Ý¼ò½àÇåµ¥¡£Çë´Ó×ó±ßÇåµ¥ÖÐÑ¡ÔñËûÃÇµÄÈÕ³Ì±íµÄÃû×Ö¡£ÄãÒ²¿ÉÒÔÔÚÉÏÃæÊäÈëËûÃÇµÄÈÕ³Ì±íµÄÃû³Æ¡£½¨Á¢ºÃµÄ¼ò½àÇåµ¥¿ÉÒÔÔÚËùÓÐÓÐÏÔÊ¾ÈÕ³Ì±íÇåµ¥µÄµØ·½Ê¹ÓÃ',

       'MasterHeadInput'  => 'In the masterhead, input calendar selection using a',
       'TextEntry'	  => 'ÕýÎÄÇø',
       'PulldownMenu'     => 'Pulldown menu',

       'LockWarning'      => 'Your calendar was modified while I was processing your request. For data integrity, your 
submission is rejected. Please go back and try again.',

       'IUpload'	  => 'Í¼Æ¬ÉÏ´«', 
       'FUpload'	  => 'ÎÄ¼þÉÏ´«',        
       'IUploadInstruction' => 'Òª´ÓÄãµÄµçÄÔÖÐÉÏ´«Í¼Æ¬£¬ÇëÔÚÎÄ¼þÂ·¾¶¿òÖÐÊäÈëÎÄ¼þµÄÈ«Â·¾¶£¬Èç¹ûÄã²»È·¶¨Â·¾¶£¬µã»÷"ä¯ÀÀ"ÕÒµ½ÏàÓ¦µÄÎÄ¼þ¡£',
       'IUploadAck'	  => 'Í¼Æ¬³É¹¦ÉÏÔØ¡£Èç¹ûÒªÔÚÊÂ¼þ±êÌâ»òÊ±¼äÃèÊöÖÐÊ¹ÓÃÍ¼Æ¬£¬ÄãÒª°ÑÎÄ¼þµÄÃû³Æ(°üÀ¨\\^O^/)¼ôÇÐµ½ÏàÓ¦µÄÊÂ¼þ±à¼­Æ÷µÄÎÄ±¾ÇøÖÐ¡£²»¹ýÇë¿¼ÂÇÇå³þÉÏ´«µÄÍ¼Æ¬¿ÉÄÜ»áÊÜÍøÕ¾Ö÷¹ÜµÄÏÞÖÆ£¬Ò²¾ÍÊÇËµÔÚÄÇÐ©Çé¿öÏÂÍ¼Æ¬¿ÉÄÜÎÞ·¨ÂíÉÏµÄ¿´¼û¡£',
       'ReviewUI'  => 'Ô¤ÀÀÓÃ»§ÉÏ´«µÄÍ¼Æ¬',
       'ApproveChecked' => 'Approve checked',	   
       'RejectChecked' => 'Reject checked',	   
       'Export2Vcal'   => 'Ê¹ÓÃ"vCal"¸ñÊ½Òý³öÄãµÄÈÕ³Ì±í',
       'CreateNewCal'  => '´´½¨Ò»¸öÐÂµÄÈÕ³Ì±í',
       'UsableImgs'    => '¿ÉÓÃµÄÍ¼Æ¬',
       'UImageInst'    => 'Èç¹ûÒªÔÚÊÂ¼þ±êÌâ»òÊ±¼äÃèÊöÖÐÊ¹ÓÃÍ¼Æ¬£¬ÄãÒª°ÑÎÄ¼þµÄÃû³Æ(°üÀ¨\\^O^/)¼ôÇÐµ½ÏàÓ¦µÄÊÂ¼þ±à¼­Æ÷µÄÎÄ±¾ÇøÖÐ',

	'CheckAll'     => 'È«Ñ¡ÖÐ',
	'UncheckAll'   => 'È¡ÏûÈ«²¿Ñ¡ÖÐ',
        'Export2VCard' => '°ÑÄãµÄµØÖ·²¾Òý³öµ½"vCard"ÎÄ¼þ',
	'ImportVcard'  => '´Ó"vCard"ÎÄ¼þÖÐÒýÈëÁªÏµÐÅÏ¢',
        'ImportVCardTitle'  => '´ÓÄãµçÄÔÀïµÄ"vCard"ÎÄ¼þÒýÈëÊý¾Ý',
        'ImportVcardInstruction' => 'Or cut and paste your vcard entry in the textarea and click on the submit button',
        'ImportVcardFileInstruction'   => 'Òª´Ó"vCard"ÎÄ¼þÖÐÒýÈëÊý¾Ý£¬ÔÚÊäÈë¿òÖÐÊäÈë"vCard"ÎÄ¼þµÄÈ«Â·¾¶È»ºóµã»÷"È·ÈÏ"¡£Èç¹û²»¿Ï¶¨ÎÄ¼þµÄÂ·¾­£¬¿ÉÒÔµã»÷"ä¯ÀÀ"ÕÒµ½ÄãµÄÎÄ¼þ',
        'AlreadyInAddressbook' => 'ÄãµÄµØÖ·²¾ÖÐÒÑ´æÔÚÒÔÏÂµÄ¼ÍÂ¼',
	
	'DpyETimeAs' => 'ÏÔÊ¾Ê±¼äÄ£Ê½',
	'MasterheadTabs' => 'Masterhead Tabs',

 	'DeferConfirmation'     => 'ÑÓ³ÙÈ·ÈÏ',
	'Unconfirmed'           => 'Î´È·ÈÏµÄ',     # unconfirmed invitation

	'SendMailUsing'         => 'Send mail using¹', #	html, txt or vcal
         # used as in
         # send mail <> immediately or <> <hours> before event
        'Sendmail'              => '·¢ÓÊ¼þ',
        'immediately'           => 'Á¢¼´',
        'or'                    => '»òÕß',
        'beforeEvent',          => 'before event',
        'Cancelled'             => 'ÒÑÈ¡Ïû',

        'AddNewEntry'		=> 'Ôö¼ÓÒ»ÌõÐÂ¼ÍÂ¼',
	'SearchNotes'		=> 'ËÑË÷±Ê¼Ç',
	'SearchAddress'		=> 'ËÑË÷µØÖ·²¾',

	'Week_begins_on'	=> 'Ã¿ÖÜ´Ó',
	'StartDate'		=> '¿ªÊ¼ÈÕÆÚ',
	'DueDate'		=> 'µ½ÆÚÈÕ',
	'DueTime'		=> 'µ½ÆÚÊ±¼ä',
	'Overdue'		=> 'ÑÓ³ÙµÄ',
	'EventDates'		=> 'ÊÂ¼þÈÕÆÚ', 

	'SpecialEvents'		=> 'ÌØÊâÊÂ¼þ',
	'RemindForwardNewTask'  => 'Set Remind Forward on New Tasks',
	'DispCompletedTasks'    => 'Display Completed Tasks on Calendar',
	'TaskOptions'		=> 'Task Options',
        'DoneOn'		=> 'Done on %s by %s', # used to display completed tasks, like 'Done on 03/19/2002', 

        'DetailedView'		=> 'Ã÷Ï¸',
        'CombinedView'		=> '×éºÏÊ½µÄ',
        'BannerView'		=> 'Banner View',
	'TooltipDelay'		=> 'Tooltip delay in milliseconds',	
	'DayViewOptions'        => 'Day View Options',
	'More'			=> 'More',

	'G_A_Notes'		=> 'Grant access of notes to',
	'G_A_Address'		=> 'Grant access of address book to',	  
	'G_A_Diary'		=> 'Grant access of diary to',
	'OwnerOnly'		=> 'Owner only',
	'Everyone'		=> 'Everyone',

        'DpyAuthorName'         => 'Display author name using', # real name, calendar name or both
        'RealName'              => 'Real Name',
        'CalendarName'          => 'Calendar Name',
        'Rname_Cname'           => 'Real name & Calendar name',

	'DescriptiveName'	=> 'A Short Descriptive Name',
        'OwnerName'             => 'Owner Name',
        'OwnerEmailAddress'     => 'Owner Email Address',
        'OwnerHomepage'         => 'Owner Homepage',

	'Label'			=> 'Label',
	'PredefineColorPairs'	=> 'Predefine fg/bg color pairs for', 

	#========= The 16 common colors used on the web==================
	'Black'  => 'Black'  ,    #      #000000,  
	'Silver' => 'Silver' ,	  #      #C0C0C0,
	'Gray'   => 'Gray'   ,	  #      #808080,
	'White'  => 'White'  ,	  #      #FFFFFF,
	'Maroon' => 'Maroon' ,	  #      #800000,
	'Red'    => 'Red'    ,	  #      #FF0000,
	'Purple' => 'Purple' ,	  #      #800080,
	'Fuchsia'=> 'Fuchsia',	  #      #FF00FF,
	'Green'  => 'Green'  ,	  #      #008000,
	'Lime'   => 'Lime'   ,	  #      #00FF00,
	'Olive'  => 'Olive'  ,	  #      #808000,
	'Yellow' => 'Yellow' ,	  #      #FFFF00,
	'Navy'   => 'Navy'   ,	  #      #000080,
	'Blue'   => 'Blue'   ,	  #      #0000FF,
	'Teal'   => 'Teal'   ,	  #      #008080,
	'Aqua'   => 'Aqua'   ,	  #      #00FFFF,
	#=================================================================

	'Font'  => 'Font',
	'DefineFonts'      => 'Create Font Styles',
	'FontsStyles'      => 'Font Styles',

	'DependentCals'	   => 'Dependent Calendars',
	'DepCalInstruction' => 'List all calendars that this calendar depends on. For example,
if you have a projector mounted in a conference room, availablity of the projector depends
on the accessibility of the conference room. Reservation of the projector implies 
reservation of the conference room. In this example, the calendar for the projector depends on
the calendar of the conference room. Events scheduled on the calendar of the projector
will automatically goes to the calendar of the conference room.',

     'ListAuthors'	=> 'Accept Events From',
     'AuthorInstruction' => 'By default, anyone on the calendar system is allowed to schedule
group events on your calendar. To change this behavior, select from the list those calendars that 
is permitted to enter joint events on you calendar. If you do not wish to accept any group events,
select only your calendar name from the list. If no calendars are selected, eveyone is allowed 
to schedule group events on your calendar.',

   'EventInterval'	 => 'Default Event Interval',

   'PublicOpen'             => 'Public-open',
   'PublicModerated'        => 'Public-moderated',

   'Pending'		    => 'Pending',
   'Mail2Author'	    => 'Mail to Author',

   'ClearCache'             => 'Clear Cache',
   'color2'		    => 'Secondary bgcolor in month view',

   'semails'		    => 'Select Invitee From Address Book', 
   'addinvitee'		    => 'Add Selected to Invitee list', 

   'Select'		    => 'Select',
   'IgnoreCCal'		    => 'Ignore Corporate Calendars',
   'ResrcCal'		=> 'Is this calendar a resource calendar?',
   'AllowAP'            => 'If this is a public calendar, do you allow anonymous posting?',
   'orIndefinitely'     => 'or indefinitely', # used as in: occurs daily for 5 times or indefinitely
   'remindOnce'		=> 'If this event repeats, remind only the first occurrence',
   'applyReminders'     => 'Apply default reminders to this event?',

   'NotifyAP'           => 'If this is a moderated public calendar, email owner upon new posting?',
 
   'Preferences'        => 'Preferences',   
   'Appearance'         => 'Appearance',
   'TabColor'           => 'Tab background color',
   'TabHColor'          => 'Tab hover color',  
   'StyleSheet'		=> 'Style Sheet',
   'OrTimeOffset'	=> 'or specify the offset between local time and server time (+-HH:MM)', 
   'ServerTime'		=> 'Current server date time is',
   'catfilter'		=> 'Do you want to enable category filter?',
   'popdetail'		=> 'Do you want to display event detail in a popup window?',
   'WeekViewOptions'    => 'Week View Options',
   'orUntilDate'	=> 'or until date',

   'Freebusytable'	=> 'Free busy table',
   'VirtualGroup'	=> 'Virtual Calendar Group',
   'wcf'		=> 'whichever comes first',
   'pendmsg'		=> 'Notify author about your decision via email',

   # modified
   'EnterCalNames'        => 'Enter the calendars to merge into your calendar',
   'WkendColor'		  => 'Background Color for Weekend',
   'DeleteCalendars'      => 'Delete Calendars',
   'Create_Meeting_Group' => 'Meeting Group',
   'Create_Global_Meeting_Group'   => 'Global Meeting Group',
   'downloadCalendar'       => 'Download Calendar',
   'DangerousOperations'    => 'Dangerous Ops',

   # new
   'DeleteCache'             => 'Delete Cache Files',


   'CPath'              => 'Critical Path',
   'BMove'              => 'BlockMove',
   'DnD'                => 'Drag and Drop',
   'ConflictingE'       => 'Conflicting Events',
   'invalidDnD'         => 'Invalid Drag/Drop source or target.',
   'OverlapDnD'         => 'This event conflict with some existing events. Conformation is required in order to process your request.',
   'Confirm'            => 'Confirm',
   'DnDmove'            => 'You are about to move this event from one calendar to another.',
   'DnDrecur'           => 'The dragged event is one occurrence of a recurring event. This occurrence will be detached from it original formation, and inserted as a new nonrecurring event.',
   'DnDdel'             => 'You are about to delete this event.',
   'DnDself'            => 'You have dragged and dropped this event onto itself. You can change some event info by submitting the following form.',
   'PlseConfirm'        => 'Please Confirm.', 
   'OverlapInstr2'      => 'If you selected a customized recurring rule, you need to redo your selection. Your browser may have forgotten your choice.',


   'createCSS'          => 'Create my own style sheet',
   'editCSS'            => 'Edit my style sheet',
   'eventCSS'           => 'Create/Edit default event font styles',
   'defaultEColors'     => 'Default Event Colors',

   'dateTime'           => 'Date & Time',
   'dpysettings'        => 'Display Settings',
   'otherCals'		=> 'Other Calendars',
   'personalInfo'	=> 'Personal Info',
   'allOptions'         => 'All Options', 


   'UseHeaderCode'      => 'Always use my Header/Footer Code?',
   'ClearSearch'        => 'Clear search',
        );











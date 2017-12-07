#
# This is the list of phrases or words used in the UI.
# To port webCal to another language, translate
# this list should be suffice.
# �c�餤�媩��(�ھڭ^�媩��½Ķ�Ӧ�) Ver 0.9
#
# $Header: /home/cvs/webCal/webCal2/Chinese_Big5.perl,v 1.29 2004/10/20 23:35:56 mzou Exp $
#

%::phr=(
       # specify character encoding.
       'CHARSET'		=> 'big5',

       'Calendar'               => '��ƾ�',
       
       # Name of weekdays
       'Sunday'                 => '�P����',
       'Monday'                 => '�P���@',
       'Tuesday'                => '�P���G',
       'Wednesday'              => '�P���T',
       'Thursday'               => '�P���|',
       'Friday'                 => '�P����',
       'Saturday'               => '�P����',
       # Name of weekdays, abbreviation
       'Sun'                    => '�g��',
       'Mon'                    => '�g�@',
       'Tue'                    => '�g�G',
       'Wed'                    => '�g�T',
       'Thu'                    => '�g�|',
       'Fri'                    => '�g��',
       'Sat'                    => '�g��',
       # Name of weekdays, abbreviated even more
       'Su'                     => 'Su',
       'Mo'                     => 'Mo',
       'Tu'                     => 'Tu',
       'We'                     => 'We',
       'Th'                     => 'Th',
       'Fr'                     => 'Fr',
       'Sa'                     => 'Sa',
       
       # Month Names  
       'January'                => '�@��', 
       'February'               => '�G��',
       'March'                  => '�T��',   
       'April'                  => '�|��',   
       'May_'                   => '����',     #! the full month of May, to distingsh with the abbreviation
       'June'                   => '����',    
       'July'                   => '�C��',    
       'August'                 => '�K��',
       'September'              => '�E��',
       'October'                => '�Q��',
       'November'               => '�Q�@��',
       'December'               => '�Q�G��',
       # Month Names, abbreviation
       'Jan'                    => 'Jan',
       'Feb'                    => 'Feb',
       'Mar'                    => 'Mar',
       'Apr'                    => 'Apr',
       'May'                    => 'May',
       'Jun'                    => 'Jun',
       'Jul'                    => 'Jul',
       'Aug'                    => 'Aug',
       'Sep'                    => 'Sep',
       'Oct'                    => 'Oct',
       'Nov'                    => 'Nov',
       'Dec'                    => 'Dec',

       # repeating rules 
       'OneTime'                => '�Ȥ@��',                   # one time event
       'Daily'                  => '�C��',                      
       'Weekly'                 => '�C�g',
       'Every2Weeks'            => '�C��g',
       'MonthlyByDate'          => '�C��Y��',
       'MonthlyByWeekday'       => '�C��Y�g',         # e.g. the 3rd Friday of every month
       'Yearly'                 => '�C�~',
       'MTWThF'                 => '�@�㤭',
       'MWF'                    => '�@ �T ��',
       'TTh'                    => '�G �|',
       'YearlyByMonthWeekday'   => '�C�~�Y��Y�g',    # e.g. the first Monday of June, yearly
       'EveryOtherDay'          => '�C�j�@��',
       'Every3rdDay'            => '�C�j�T��',
       'Every4thDay'            => '�C�j�|��',
       'Every5thDay'            => '�C�j����',
       'Every6thDay'            => '�C�j����',

       # event types
       'Appointment'            => '���|',
       'Todo'                   => '�ݿ�ƶ�',
       'Meeting'                => '�|ĳ',
       'Special'                => '�S��ƥ�',            # for holidays, event require no specific time

       # option button names
       'CalendarOptions'        => '��ƾ�]�w',   # title of the options page
       'Compare'                => '���',            # Button: compare calendars and find conflicts ...
       'Search'                 => '�j�M',             # Button:
       'GotoDate'               => '����Y',           # Button:
       'Previous'               => '�e�@',           # previous Month/Day/Week 
       'Today'                  => '��',              # This Month/Day/Week 
       'Next'                   => '�U�@',               # next Month/Day/Week 
       'Options'                => '�ﶵ',            # Button: go to options page 
       'Admin'                  => '�޲z',              # Button: go to admin page
       'Logout'                 => '�n�X',             # Button: go to logout page
       'DayView'                => '���˵�',           # Alt name under the image buttons
       'WeekView'               => '�g�˵�',
       'MonthView'              => '���˵�',
       'YearView'               => '�~�˵�',
       
       
       # messages on the setup screen
       'SetupYourCalendar'      => '�]�w�z����ƾ�', # title
       'YourCalendarName'       => '�z��ID',
       'YourEmailAddress'       => '�z��E-Mail��}',
       'YourName'               => '�z����ƾ�W��',
       'Password'               => '�K�X',
       'RetypePassword'         => '�A��J�@��(�K��)',
       'CalendarType'           => '��ƾ䫬��',
       'Public'                 => '���}��',
       'Private'                => '�p�H��',
       'ForPrivateCalendar'     => '�p�H��ƾ�]�w',
       'OthersSeeTextTime'      => '��L�H�i�H�ݨ��ɶ��P���e',
       'OthersSeeTitle'         => 'Others See Event Title',
       'OthersSeeTimeOnly'      => '��L�H�u��ݨ��ɶ�',
       'OthersSeeNothing'       => '��L�H���򳣬ݤ���',
       'PublicCalendar'         => '���}��ƾ�',
       'Submit'                 => '�e�X',
       'Cancel'                 => '����',
       'TheName'                => '�z��ID',
       'HasBeenTaken'           => '�w�g�Q�ϥΤF��',
       'PasswordMismatch'       => '�K�X�⦸��J���@�P',
       'TryAgain'               => '�ЦA�դ@��',
       'EmailIncomplete'        => 'Email��}�S��J����',
       'CannotCreateCalendar'   => '�L�k�إ߱z����ƾ�,�z����ƾ�ID�����O�^��μƦr',
       'CannotWriteInfoFile'    => '�L�k�g�J��T��',
       'CannotWriteDataFile'    => '�L�k�g�J�����',
       'CannotWritePasswordFile'=> '�L�k���ܱK�X��',
       'Congratulations'        => '���߱z��',
       'SetupGreetingA'         => '�z���ӤH��ƾ�w�g�]�w�n�F�� �Ч�o��}�[�J�z������',
       'SetupGreetingB'         => '�аO��z���K�X,�z�ݭn���Ӷi�J�z���ӤH��ƾ�',
       'HaveToSupplyCalendarName' => '�z�������z����ƾ���ӦW�r',
       'PleaseDoNotUseYourUnixAccountPassword' => '�Ф��n�ϥαzUNIX���b���M�K�X���',
       
       
       # Event Editor Messages
       'EventEditor'            => '�ƥ�s�边',
       'AppointmentEditor'      => '���|�s�边',
       'ToDoEditor'             => '�ݿ�ƶ��s�边',
       'MeetingEditor'          => '�|ĳ�s�边',
       'SpecialEditor'          => '�S��ƥ�s�边',
       'AuthRequired'           => '�`�N! �s��o�Ӧ�ƾ䥲�����q�L�{��',
       'CurrentEvents'          => '�ثe�ƥ�',
       'Time'                   => '�ɶ�',
       'What'                   => '�Ʊ�',
       'Date'                   => '���',
       'Start'                  => '�}�l',
       'End'                    => '����',
       'Details'                => '���e',
       'Colors'                 => '�C��',
       'Privacy'                => '���p',         
       'Frequency'              => '�W�v',
       'Reminders'              => '����',
       'Mail'                   => '�l��',
       'min'                    => '��', # abbreviation of minute
       'mins'                   => '����',
       'hours'                  => '�p��',
       'days'                   => '��',
       'weeks'                  => '�g',
       'Occurs'                 => '�o�ͼ�',
       'For'                    => '��',
       'times'                  => '����',   # as in repeat for 10 times 
       'Popup'                  => '�ۥX',
       'Author'                 => '�@��',
       'Blink'                  => '�{�{',
       'Chime'                  => 'Chime',
       'Insert'                 => '���J',
       'InsertAsNew'            => '���J�s�ƥ�',
       'Modify'                 => '�ܧ�',
       'DeleteThisOne'          => '�R���o�Өƥ�',
       'DeleteAll'              => '�R���Ҧ��ƥ�',
       'Delete'                 => '�R��',
       'Due'                    => '���', # as in Due Date
       'TaskDone'               => '�u�@�w�g����',
       'RemindForward'          => '�~�򴣿�',
       'Yes'                    => '�T�w',
       'No'                     => '����',
       'Y'                      => '�O', # abbrieviation of Yes
       'N'                      => '�_', # abbrieviation of No
       'ToDo'                   => '�ݿ�ƶ�',
       'Participants'           => '�Q�ܪ�',
       'none'                   => '�L',
       'MailToAll'              => '�o�l�󵹩Ҧ��H',
       'FindConflict'           => '�M��Ĭ�',
       'NoTimeEvent'            => 'No Time Event',
       'Fg'                     => '�e��',
       'Bg'                     => '�I��',
       'Error'                  => '���~',
       'HasError'               => '�b�B�z�z���ШD�L�{���o�ͤ@�ӿ��~',
       'ListParticipants'       => '�C�X�Q�ܽФH���Ұѥ[���|ĳ�s�թάO��ƾ�ID�άO����E-Mail��}.�L�̪���ƾ�N�P�B�Q��s',
       'ConflictTable'          => '�Ĭ��',
       'Conflict'               => '�Ĭ�',         
       'Table'                  => '��',         
       'You'                    => '�z',
       'NotAllowedToModify'     => '���Q���\�ܧ󦹨ƥ�',
       'NotAllowedToEdit'       => '���Q���\�s�覹��ƾ�',
       'Warning'                => 'ĵ�i',
       'NoRemindForward'        => '�L�k�����Ъ��ݿ�ƶ��~�򴣿�',
       'Acknowledgement'        => '�A��',
       'UpdatedOK'              => '��ƾ䦨�\���Q��s',
       'BackToCalendar'         => '�Ы����^��z����ƾ�',
       'OpenFailed'             => '�L�k�}�ұz����ƾ�',
       'NoCalendar'             => '�z���G�S���w�إߪ���ƾ�',
       
       # goto page
       'Goto_Date'              => '���ܬY��', #title
       'Goto'                   => '����',
       'SelectDate'             => '�п�ܤ��',
       'View'                   => '�[��',
       'Go'                     => 'Go', # function as submit
       'Set'                    => '�]�w', # as in set options
       
       # set options page
       'My_day_starts_at'       => '�ڪ��u�@��l��',
       'ends_at'                => '�����b',
       'Interval'               => '���j',
       'Week_starts_on',        => 'Week of ',
       'include_weekend',       => '�]�t�g��',
       'Date_Format'            => '����榡',
       'Time_Format'            => '�ɶ��榡',
       'Time_zone'              => '�ɰ�',
       'Default_view'           => '�w�]�˵�',
       'Default_Reminders'      => '�w�]����',
       'ListEditors'            => '�C�X���\�s��z��ƾ䪺�ϥΪ�',
       'Editors'                => '�s���',
       'Email'                  => 'Email',
       'Default'                => '�w�]��',
       'Homepage'               => '�ӤH����',
       'Language'               => '�y��',
       
       # admin page
       'Administration'         => '�޲z',
       'adminDisabled'          => '���}��ƾ�޲z�\��w�g�Q����',
       'Change_Password'        => '�ܧ�K�X',
       'Old_Password'           => '��l�K�X',
       'New_Password'           => '�s�K�X',
       'New_Password_Again'     => '�A��J�@���s�K�X',
       'to_be_used_by_meeting_editor' => '�|ĳ�s�սs��̱M��',
       'Existing_Groups'        => '�h�X�s��',
       'Group_Name'             => '�s�զW��',
       'ListGroupMembers'       => '��J�ѻP�̪���ƾ�ID�άOE-Mail��}',
       'Merge_Calendars'        => '�X�֦�ƾ�',
       'CalendarNames'          => '��ƾ�ID',
       'EraseCalendar'          => '�M�ŧڪ���ƾ�',
       'DeleteCalendar'         => '�R���ڪ���ƾ�',
       'errorPerm'              => 'Permission denied',
       'calDeleted'             => '�z����ƾ�w�g�Q�R��',
       'ThankYou4Using'         => '�P�±z���ϥ�',
       'calErased'              => '�z����ƾ�w�g�Q�M��',
       'eraseFailed'            => '�L�k�M�űz����ƾ�',
       'cpasswordWrong'         => '�{�ҥ���: �K�X���~',
       'ipasserror'             => '�L�k���}�K�X��,�еy��A��',
       'password_changed'       => '�z���K�X�w�g���\���Q�ܧ�',
       'cannot_open'            => '�L�k�}��',
       'Meeting_group'          => '�|ĳ�s��',
       'updated'                => '�w�g���\��s',
       'new_entries'            => '�s�ƥ�w�g�[�J�z����ƾ�',
       'Unknown_command'        => '�L�k�ѧO�����O',
       
       # search page
       'Search_Calendar'        => '�j�M��ƾ�',
       'Topic'                  => '���D',
       'SearchAll'              => '�j�M����',
       'Search_From'            => '�j�M �q',
       'To'                     => '��',
       'Search_Results'         => '�j�M���G',
       'CalendarReminder'       => '��ƾ䴣����',
         
       # Greeting
       'WelcomeToWebCalendar'   => '�w��Ө�Web��ƾ�',
       'PleaseSelectACalendar'  => '�п�ܤ@�Ӧ�ƾ�',
       'PleaseEnterCalendarName'=> '�п�J�z��ID',

       #download
       'notAllowedToDownload'   => '�z���Q���\�U���o�Ӧ�ƾ�',
         
       #logout
       'AuthNotRequired'        => '�`�N: �[�ݤ��}����ƾ�N���|�n�D�n�q�L�����T�{',
       'logoutInstruction'      => '�n�n�X,�Ы��n�X�����s,��n�J�T���X�{,�Hnobody�n�J�N���ݭn�K�X.',
       'loginInstruction'       => '�n�Ψ�L�ϥΪ̨����n�J,�Ы��n�J�����s',
       'You_ve_logout'          => '�z�w�g�n�X',
       'access_denied'          => 'access denied',
       'login'                  => '�n�J',

       #compare
       'CompareCalendars'       => '�����ƾ�',
       'Enter_calendar_names'   => '��J��ƾ�ID',
       'or_meeting_group'       => '�άO�|ĳ�s��',
       'EventsTable'            => '�ƥ��',
       'Name'                   => '�W��',
       'Events'                 => '�ƥ�',
       'ForegroundColor'        => '�e���C��',
       'BackgroundColor'        => '�I���C��',

       # msg in the main
       'accessAnotherCal'        => '�n�s����L��ƾ�,��',

       # Some missing phrases and addons ...
       'Close'                  => '����',
       'ShowCombinedCalendar'   => '��ܦX�֪���ƾ�',
       'CombinedCalendar'       => '�X�֦�ƾ�',
       'Participants_are_allowed_to' => "�ѻP�̥u��",
       'View_only'              => '�[��',
       'Edit'                   => '�s��',
       'EditAndDelete'          => '�s��P�R��',
       'Updated_calendars'      => '�H�U����ƾ�N�|�@�֧�s',
       'NotAllowedToUpdate'     => '�z���Q���\��s�H�U����ƾ�',
       'invalid_date'           => '�����T�����',
       'Schedule'               => '�p��',            # as in 'schedule an appointment on calendar mzou
       'onCalendar'             => 'on Calendar',          #
       'DeleteForward'          => '�R���e�����ƥ�',
       'All'                    => '����',
       'SearchSubjectEmpty'	=> '�j�M�D�D���ର�ť�',
       'Start_date'             => '�}�l���',
       'is_after_due_date'      => '�b�����������',
       'Invalidusername'	=> '�����T���ϥΪ̦W��',
       'Protected'		=> '==���O�@==',
       'Invalidcalendarname'	=> '�����T����ƾ�ID',
       'Couldnotfindcalendar' => '�䤣���ƾ�',
       'Invalidspooldir'      => 'Invalid spooldir',
       'ListView'             => 'List View',
       'BlockView'            => 'Block View',

       # address book stuff
       'AddressBook'           => '�q�T��',
       'AddressBookEditor'     => '�q�T���s�边',
       'AddressBookUpdated'    => '�q�T���w��s',
       'BackToAddressBook'     => '�Ы����^��z���q�T������',
       'FirstName'             => '�W',
       'LastName'              => '�m',
       'Address'               => '�a�}',
       'Phone'                 => '�q��',
       'Fax'                   => '�ǯu',
       'Info'                  => 'Info',
       'Affiliation'           => '���ݦb',
       'Where'                 => 'Where',
       'Priority'              => '�u���v',
       'Diary'                 => '��O',
       'DiaryUpdated'          => '��O�w��s',
       'ReadDiary'             => '�\Ū��O',       
       'From'                  => 'From',
       'PlainText'             => '�¤�r',
       'Html'                  => 'Html',
       'SearchDiary'           => '�j�M��O',
       'SearchFor'             => 'Search for',
       'NeedAuth2Proceed'      => '�[�ݩM�s��ݭn�q�L�{��.�Ы� \'�n�J\' ����}�l,�Ϋ���ƾ���s�Ӧ^��z����ƾ�.',

       # Priority of ToDo tasks
       'Urgent'                => '���',
       'High'                  => '��',
       'Medium'                => '��',
       'Low'                   => '�C',       

       # find calendar names
       'FindCalNames'          => '�M���ƾ�',

       # overlapping 
       'AllowOverlap'          => '���\�ƥ��|',
       'GoBack'                => 'Go Back',  #

       'OverlapInstr'          => 'This event is rejected because it overlaps with one or more existing events in the calendar (see table).
If you really want to insert it into your calendar, go back, check <b>\'Y\'</b> to the <b>\'Allow Overlapping Events\'</b> button and
try again.',

       'signup'                 => '���U!',
       'Invalidpassword'	=> '���~�K�X',
       'olduserInstruction'     => '�ڤw�g�n���@�Ӧ�ƾ�',
       'newuserInstruction'     => '�ڬO�s�ϥΪ�',
       'PleaseLogin'            => '�i�J�e�ݭn�q�L�{��,�нХ��n�J!',
       'NextNew'		=> '�U�@�ӷs�ƥ�',
       'RememberIDPswd'         => '�O��ڪ��ϥΪ̦W�ٻP�K�X (�U�������A��J)',
       'global'                 => 'Global', # mark global meeting group
       'groupnametaken'         => 'Meeting group name has been taken, please choose another name',
       'deleteEventsBefore'     => 'Delete all events before',
       'AutoStart'              => 'Autostart WebCalendar',
       'Readers'                => 'Readers',
       'ListReaders'            => '�C�X���\�\Ū�z��ƾ䪺�ϥΪ�',
       'Print'			=> '�C�L',
       'mailVcal'		=> 'Attach VCALENDAR in mail reminders',
       'FriendsEmail'		=> 'Friend\'s Email Address',
       'PersonalMessage'	=> 'Add a Personal Message',
       'Mail2Friend'		=> '�N���ƥ�Email���B��',
       'MailSentTo'		=> 'Calendar Entry was Sent to ',
       'Location'               => 'Location',
       # the next line is used in a confirmation popup when a user is modifying 
       # an repeating event. The date displayed is the current date, normally 
       # it is not the initial starting date of the event.
       'CalendarFormat'			=> '��ƾ�榡',
       'CalendarFile'			=> 'Calendar File',
       'SetupGreetingC'         => '�Ш��ƾ�]�w�����ӧ����z��ƾ䪺�]�w.',
       'Email2Selected'		=> 'Email���Ҧ��Q��ܪ���}',
       'AddNewEmail'		=> '�[�J�s��E-Mail��}��ڪ��q�T��',
       'ContactP'		=> '�p���H',
       'ContactE'		=> '�p��E-Mail',
       'DailyReminder'		=> '�H�e�C�鴣���l��',
       'CompletedTasks'		=> '�w�����u�@',
       'PendingTasks'		=> '�������u�@',
       'Import2Cal'		=> '�N���ƥ�פJ��ƾ�',
       'ViewOnly'		=> '�άO��ܥt�@�Ӧ�ƾ��[��',
       'newLogin'		=> '�άO�Υt�~�@�ӨϥΪ̨����n�J', 
       'QuickAdd'		=> '�ֳt�[�J',
       'Event'                  => '�ƥ�',
       'TodoList'               => '�ݿ�ƶ��C��',
       'MarkComplete'		=> '�N���Ī��ƥ�Хܬ��w����',
       'DeleteChecked'		=> '�N���Ī��R��',
       'AddNewTask'             => '�[�J�s�u�@',
       'TaskManager'            => '�u�@�޲z��',
       'WarnInvitee'		=> '�z�T�w�n�[�J�o�Өƥ��H�U����ƾ䤤��?',
       'creationDisabled'	=> 'Sorry, calendar setup is disabled by your system administrator. You\'ll have to
ask your system administrator to create a calendar for you.',
       'RequestRSVP'            => 'Request RSVP',
       'invitationAccepted'     => '�ܽб���',
       'invitationDeclined'     => '�ܽЩڵ�',
       'AttendanceConfirmation' => '�T�{�|ĳ�ѻP�H',
       'AcceptInvitation'         => '�����ܽ�',
       'DeclineInvitation'      => '�ڵ��ܽ�',
       'Undecided'		=> '�|���M�w',
       'Category'		=> '����',
       'Speaker'		=> '�o���H',
       'Header'			=> '����',
       'Footer'			=> '����',
       'HeaderFooter'		=> 'Enter header/footer HTML code for a customized header',
       'MiscInfo'		=> '��L�T��',
       'Description'		=> '�y�z',
       'AllDay'			=> '����',
       'Tomorrow'		=> '����',
       'ThisWeek'		=> '���g',
       'ThisMonth'		=> '����',
       'Keyword'		=> '����r',
       'NoEvents'		=> '�S���ƥ�',
       'EditThis'		=> '�s�覹�ƥ�',
       'recurFormat'            => 'Occurs %s for %d times, starting on %s.', # used in formating
       'taskDoneFormat'		=> 'Completed by %s on %s at %s', # formating, eg. by Jone on Mon 12/11 at 5pm


       'warnModify'	       => '
You\'re about to modify a recurring event. The date (or due date) shown
is not the original date (or due date) of the event.  If you proceed 
to edit, the event will repeat starting at the new date,  and
all hidden infomation on this event, like exception dates and
meeting confirmation data, will be lost. Please confirm.

Modify a single occurence of a recurring event is not possible. A workaround
is to delete this occurence of the repeating event, and enter a new event
in its place.

The original date (or due date) for this event is  ',

       'gEventError'		=> 'You attempted to delete partial occurrence of a recurring group event without proper permission.
This is not allowed because it will desynchronize your calendar with other calendars in the group.  You can, however, 
delete all occurrence of this event from your calendar by clicking on the "Delete All Occurences" button on the event editor screen',

       'City'                  => '����',
       'State'                 => '�w',
       'Zip'                   => '�l���ϸ�',
       'Country'               => '��a',


       'ResetPasswd'           => '���]�ϥΪ̱K�X',
       'File'                  => 'File',
       'AlreadyOnCalendar'     => 'The following entries are already on your calendar. They are ignored.',
       'ImportFileTitle'         => 'Import from a VCalendar File on Your Computer',
       'ImportFileInstruction'   => 'To import from a vCalendar file on your computer, enter the full pathname of
the vCalendar file in the entry box and click the submit button. If you are unsure about the pathname, click on the browse button and navigate to your file.',
       'ImportVcal'		=> 'Import Event from VCalendar',
       'ImportVcalInstruction'	=> 'Or cut and paste your vcalendar entry in the textarea and click on the submit button',


       # new phrases

       'DetailedWorkingHours'   => 'Detailed Daily Working Hours', 
       'SelectAttendee' => 'Calendar names, email addresses, meeting groups and combination of them can be used 
to input event participants. You may select calendar names from the multiple list on the left, or type them in the
entry box above. Email addresses have to be entered in the entry box. Meeting group, if exists, may be selected
from the \'Meeting group\' selection menu. You can also enter meeting group in the entry box. Items in the entry
box should be separated by spaces or commas.',

       'MkEditorListInstruction' => 'To allow friends or coworkers to edit your calendar, select their calendar
names from the multiple list on the left. You may also enter their calendar names in the entry box above.',

       'MkReaderListInstruction' => 'If your calendar data is protected, other users cannot read your
calendar. You can given some selected users permission to read your calendar by creating a  reader list.
This list consists of calendar names. You may select calendar names from the multiple list on the left
or enter them in the entry box above.',

       'MkGroupInstruction'=> 'Calendar names or email addresses may be used to identify members of a
workgroup. You may select calendar names from the multiple list on the left, or type them in the entry box
above. Email addresses must be entered in the entry box.',
       'Contacts'	   => '�s���H',
       'Tasks'		   => '�u�@',
       'Day'		   => 'Day',
       'Week'		   => 'Week',
       'Month'		   => 'Month',
       'Year'		   => 'Year',
       'OffDutyHours'	   => 'Off Duty Hours',
       'AddNewAddress'	   => '�[�J�s�s���H',
       'HeaderColor'	   => 'Header Color',
       'Never'		   => '�q��',
       'OverlapNotAllowed' => 'Unfortunately, overlap events is not allowed on the following calendars.',
       'Notes'		   => '�Ƨѿ�',
       'PostIt'		   => '�K�W!',   # as in post it notes
       'Title'		   => '���D',
       'AddNewNote'	   => '�[�J�s�Ƨ�',
       
       'InterestedCalendars' => '�C�X�Ҧ��z�i��|�\Ū�νs�誺��ƾ�.', 
       'CalendarListInstruction' => 'If you don\'t want to see the long list of calendars in the calendar selection menu, you can
create a short list here.  Just enter the name of the calendars you want to see in the entry box above, or select them from
the multiple list on the left. The selected short list will be used in all places where calendar list is displayed.',

       'MasterHeadInput'  => 'In the masterhead, input calendar selection using a',
       'TextEntry'	  => 'Text entry',
       'PulldownMenu'     => 'Pulldown menu',

       'LockWarning'      => 'Your calendar was modified while I was processing your request. For data integrity, your 
submission is rejected. Please go back and try again.',

       'IUpload'	  => '�Ϥ��W��', 
       'FUpload'	  => '�ɮפW��',        
       'IUploadInstruction' => 'To upload an image file on your disk, enter the full pathname of the image file
in the entry box and click the submit button. If you are unsre about the pathname, click on the browse
button to navigate to your file.',
       'IUploadAck'	  => 'Image uploaded. To insert the image in your event title or event description, cut and
paste the following line in the corresponding textarea in the event editor. Please be advised that the image may be
subjected to your site master\'s approval, in which case the image will not be immediately available for public view.',
       'ReviewUI'  => 'Review User Image Uploads',
       'ApproveChecked' => 'Approve checked',	   
       'RejectChecked' => 'Reject checked',	   
       'Export2Vcal'   => 'Export your calendar in vCal format',
       'CreateNewCal'  => 'Create a New Calendar',
       'UsableImgs'    => 'Usable Images',
       'UImageInst'    => 'To insert an image in your event title or event description, cut and paste its name 
(include the funny looking \\^o^/) in the corresponding textarea in the event editor.',

	'CheckAll'     => '��ܥ���',
	'UncheckAll'   => '��������',
        'Export2VCard' => '�ץX�z���q�T����vCard',
	'ImportVcard'  => '�qvCard�פJ�z���q�T��',
        'ImportVCardTitle'  => '�q�z���q���W�פJvCard�ɮ�',
        'ImportVcardInstruction' => 'Or cut and paste your vcard entry in the textarea and click on the submit button',
        'ImportVcardFileInstruction'   => 'To import from a vCard file on your computer, enter the full pathname of
the Vcard file in the entry box and click the submit button. If you are unsure about the pathname, click on the browse button and navigate to your file.',
        'AlreadyInAddressbook' => 'The following entries are already in your addressbook.',
	
	'DpyETimeAs' => '��ܨƥ�ɶ��榡��',
	'MasterheadTabs' => 'Masterhead Tabs',

 	'DeferConfirmation'     => '����T�{',
	'Unconfirmed'           => '���T�{��',     # unconfirmed invitation

	'SendMailUsing'         => '�e�X�l��ϥ�..', #	html, txt or vcal
         # used as in
         # send mail <> immediately or <> <hours> before event
        'Sendmail'              => '�e�XMail',
        'immediately'           => '���W',
        'or'                    => '�άO',
        'beforeEvent',          => '�b�ƥ󤧫e',
        'Cancelled'             => '�w�g����',

        'AddNewEntry'		=> '�[�J�@���s����',
	'SearchNotes'		=> '�j�M�Ƨѿ�',
	'SearchAddress'		=> '�j�M�q�T��',

	'Week_begins_on'	=> '�C�P���l��',
	'StartDate'		=> '�}�l���',
	'DueDate'		=> '�������',
	'DueTime'		=> '�����ɶ�',
	'Overdue'		=> '�L����',
	'EventDates'		=> '�ƥ���', 

	'SpecialEvents'		=> '�S��ƥ�',

	'RemindForwardNewTask'  => 'Set Remind Forward on New Tasks',
	'DispCompletedTasks'    => '�b��ƾ���ܤw�������u�@',
	'TaskOptions'		=> '�u�@�ﶵ',
        'DoneOn'		=> 'Done on %s by %s', # used to display completed tasks, like 'Done on 03/19/2002', 

        'DetailedView'		=> '�ԲӪ�',
        'CombinedView'		=> '�X�֪�',
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






 




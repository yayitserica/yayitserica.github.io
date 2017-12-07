# This is the list of phrases or words used in the UI.
# To port webCal to another language, translate
# this list should be suffice.
# Translated by Serge Leschinsky aka SmallFish
# 		fish@lab153.appl.sci-nnov.ru
# please send me a suggestions and bug-reports in 
#           translations
#
# $Header: /home/cvs/webCal/webCal2/Russian.perl,v 1.35 2004/10/20 23:35:56 mzou Exp $
#


%::phr= (
       # specify character encoding.
       'CHARSET'		=> 'KOI8-R',

       'Calendar'               => '���������',

       # Name of weekdays
       'Sunday'                 => '�����������',
       'Monday'                 => '�����������',
       'Tuesday'                => '�������',
       'Wednesday'              => '�����',
       'Thursday'               => '�������',
       'Friday'                 => '�������',
       'Saturday'               => '�������',
       # Name of weekdays, abbreviation
       'Sun'                    => '���',
       'Mon'                    => '���',
       'Tue'                    => '���',
       'Wed'                    => '���',
       'Thu'                    => '���',
       'Fri'                    => '���',
       'Sat'                    => '���',
       # Name of weekdays, abbreviated even more
       'Su'                     => '��',
       'Mo'                     => '��',
       'Tu'                     => '��',
       'We'                     => '��',
       'Th'                     => '��',
       'Fr'                     => '��',
       'Sa'                     => '��',

       # Month Names
       'January'                => '������',
       'February'               => '�������',
       'March'                  => '����',
       'April'                  => '������',
       'May_'                   => '���',
       'June'                   => '����',
       'July'                   => '����',
       'August'                 => '������',
       'September'              => '��������',
       'October'                => '�������',
       'November'               => '������',
       'December'               => '�������',
       # Month Names, abbreviation
       'Jan'                    => '���',
       'Feb'                    => '���',
       'Mar'                    => '���',
       'Apr'                    => '���',
       'May'                    => '���',
       'Jun'                    => '���',
       'Jul'                    => '���',
       'Aug'                    => '���',
       'Sep'                    => '���',
       'Oct'                    => '���',
       'Nov'                    => '���',
       'Dec'                    => '���',

       # repeating rules
       'OneTime'                => '�������',                   # one time event
       'Daily'                  => '���������',
       'Weekly'                 => '�����������',
       'Every2Weeks'            => '��� � 2 ������',
       'MonthlyByDate'          => '���������� �� ����',
       'MonthlyByWeekday'       => '���������� �� ��� ������',         # e.g. the 3rd Friday of every month
       'Yearly'                 => '��������',
       'MTWThF'                 => '� �� �� ��',
       'MWF'                    => '�� �� ��',
       'TTh'                    => '�� ��',
       'YearlyByMonthWeekday'   => '�������� �� ������ � ��� ������',    # e.g. the first Monday of June, yearly
       'EveryOtherDay'          => '������ ������ ����',
       'Every3rdDay'            => '������ 3-�� ����',
       'Every4thDay'            => '������ 4-�� ����',
       'Every5thDay'            => '������ 5-�� ����',
       'Every6thDay'            => '������ 6-�� ����',

       # event types
       'Appointment'            => '������',
       'Todo'                   => '�������',
       'Meeting'                => '�������',
       'Special'                => '������',            # for holidays, event require no specific time

       # option button names
       'CalendarOptions'        => '��������� ���������',   # title of the options page
       'Compare'                => '��������',            # Button: compare calendars and find conflicts ...
       'Search'                 => '�����',             # Button:
       'GotoDate'               => '������� � ����',           # Button:
       'Previous'               => '����������',           # previous Month/Day/Week
       'Today'                  => '�����������',              # This Month/Day/Week
       'Next'                   => '���������',               # next Month/Day/Week
       'Options'                => '���������',            # Button: go to options page
       'Admin'                  => '�����������������',              # Button: go to admin page
       'Logout'                 => '��������� �����',             # Button: go to logout page
       'DayView'                => '�������� �� ����',           # Alt name under the image buttons
       'WeekView'               => '�������� �� �������',
       'MonthView'              => '�������� �� �������',
       'YearView'               => '�������� �� �����',


       # messages on the setup screen
       'SetupYourCalendar'      => '��������� ��� ���������', # title
       'YourCalendarName'       => '�������� ������ ���������',
       'YourEmailAddress'       => '��� ����������� �����',
       'YourName'               => '���� ���',
       'Password'               => '������',
       'RetypePassword'         => '��������� ������',
       'CalendarType'           => '��� ���������',
       'Public'                 => '�����',
       'Private'                => '������',
       'ForPrivateCalendar'     => '��� ������� ���������',
       'OthersSeeTextTime'      => '������ ������������ ����� ����� � �����',
       'OthersSeeTitle'         => 'Others See Event Title',
       'OthersSeeTimeOnly'      => '������ ������������ ����� ������ �����',
       'OthersSeeNothing'       => '������ ������������ ������ �� �����',
       'PublicCalendar'         => '����� ���������',
       'Submit'                 => '���������',
       'Cancel'                 => '��������',
       'TheName'                => '���',
       'HasBeenTaken'           => '��� ���� ������������',
       'PasswordMismatch'       => '������ ������ �����������',
       'TryAgain'               => '���������� ��� ���',
       'EmailIncomplete'        => '����������� ����� ��������',
       'CannotCreateCalendar'   => '���������� ������� ���������\. ��� ������ ��������� ������ ���� ������������ ����� ������',
       'CannotWriteInfoFile'    => '������ ������ � �������������� ����',
       'CannotWriteDataFile'    => '������ ������ � ���� ������',
       'CannotWritePasswordFile'=> '���������� �������� ���� ������',
       'Congratulations'        => '������������',
       'SetupGreetingA'         => '��� ��������� ����������. �������� ��� ��������� �',
       'SetupGreetingB'         => '��������� ��� ������. �� ����� ����� ��� ��� ����������� ����� ����������',
       'HaveToSupplyCalendarName' => '�� ������ ���� ��� ������ ���������',
       'PleaseDoNotUseYourUnixAccountPassword' => '���������� �� ����������� ��� ��������� ��� ������ ����� � �������',


       # Event Editor Messages
       'EventEditor'            => '����������� �������',
       'AppointmentEditor'      => '����������� �������',
       'ToDoEditor'             => '����������� ���� "�������"',
       'MeetingEditor'          => '����������� ������',
       'SpecialEditor'          => '����������� ���� "������"',
       'AuthRequired'           => '��������, ��� �������� ��������� � ��������� ���������� ����� �������',
       'Appointment'            => '������',
       'CurrentEvents'          => '������� �������',
       'Time'                   => '�����',
       'What'                   => '���',
       'Date'                   => '����',
       'Start'                  => '������',
       'End'                    => '�����',
       'Details'                => '������',
       'Colors'                 => '�����',
       'Privacy'                => '������������',
       'Frequency'              => '�������',
       'Reminders'              => '�����������',
       'Mail'                   => '�����',
       'min'                    => '���', # abbreviation of minute
       'mins'                   => '�����',
       'hours'                  => '�����',
       'days'                   => '����',
       'weeks'                  => '������',
       'Occurs'                 => '���������',
       'For'                    => '���',
       'times'                  => '���',   # as in repeat for 10 times
       'Popup'                  => 'Popup',
       'Author'                 => '�����',
       'Blink'                  => '������',
       'Chime'                  => '������',
       'Insert'                 => '��������',
       'InsertAsNew'            => '�������� ��� �����',
       'Modify'                 => '��������',
       'DeleteThisOne'          => '������� ��� �������',
       'DeleteAll'              => '������� ��� �������',
       'Delete'                 => '�������',
       'Due'                    => '��', # as in Due Date
       'TaskDone'               => '������� ���������',
       'RemindForward'          => '��������� �����',
       'Yes'                    => '��',
       'No'                     => '���',
       'Y'                      => '�', # abbrieviation of Yes
       'N'                      => '�', # abbrieviation of No
       'ToDo'                   => '�������',
       'Meeting'                => '�������',
       'Participants'           => '���������',
       'none'                   => '���',
       'MailToAll'              => '��������� ����',
       'FindConflict'           => '����� ������������',
       'NoTimeEvent'            => '������� ��� �������',
       'Fg'                     => '�������� ���',
       'Bg'                     => '������ ���',
       'Error'                  => '������',
       'HasError'               => '��� ��������� ������ ������� ��������� ������',
       'ListParticipants'       => '������� ������ ��� ��� ��������� ��� ������ ����������� ������ ���������� ��� �� ��������� ����� ��������',
       'ConflictTable'          => '������� ������������',
       'Conflict'               => '������������',
       'Table'                  => '�������',
       'You'                    => '��',
       'NotAllowedToModify'     => '��� ����� ������� ��� ��������� ���� ������',
       'NotAllowedToEdit'       => '��� ����� ������� ��� �������������� ����� ���������',
       'Warning'                => '��������',
       'NoRemindForward'        => '���������� ��������� ������� "��������� �����" ��� ������������� �������',
       'Acknowledgement'        => '�������������',
       'UpdatedOK'              => '��������� ������� ��������',
       'BackToCalendar'         => '�������, ����� ��������� � ������ ���������',
       'OpenFailed'             => '���������� ������� ��� ���������',
       'NoCalendar'             => '� ��� ��� ���������',

       # goto page
       'Goto_Date'               => '������� � ����',
       'Goto'                   => '�������',
       'SelectDate'             => '�������� ����',
       'View'                   => '��������',
       'Go'                     => '���������', # function as submit
       'Set'                    => '�������', # as in set options

       # set options page
       'My_day_starts_at'       => '��� ���� ���������� �',
       'ends_at'                => '��������� �',
       'Interval'               => ' - ����������� �� �������',
       'Week_starts_on',        => '������ ���������� �',
       'include_weekend',       => '������� ��������',
       'Date_Format'            => '������ ����',
       'Time_Format'            => '������ �������',
       'Time_zone'              => '��������� ����',
       'Default_view'           => '����������� ���',
       'Default_Reminders'      => '����������� �����������',
       'ListEditors'            => '������ �������������, ������� ����� ������� ��� �������� ��������� � ��� ���������',
       'Editors'                => '���������',
       'Email'                  => '����������� �����',
       'Default'                => '����������',
       'Homepage'               => '�������� ��������',
       'Language'               => '����',

       # admin page
       'Administration'         => '�����������������',
       'adminDisabled'          => '����������������� ���������� ��� ����� ����������',
       'Change_Password'        => '������� ������',
       'Old_Password'           => '������ ������',
       'New_Password'           => '����� ������',
       'New_Password_Again'     => '������� ��� ��� ����� ������',
       'to_be_used_by_meeting_editor' => '��� ������������� ���������� ������� ������',
       'Existing_Groups'        => '������������ ������� ������',
       'Group_Name'             => '��� ������� ������',
       'ListGroupMembers'       => '������� ��� ��������� ��� ����� ����������� ����� ����������',
       'Merge_Calendars'        => '���������� ���������',

       'CalendarNames'          => '����������� �����',
       'EraseCalendar'          => '�������� ��� ���������',
       'DeleteCalendar'         => '������� ��� ���������',
       'errorPerm'              => '������ ��������',
       'calDeleted'             => '��� ��������� ��� ������',
       'ThankYou4Using'         => '������� �� �������������',
       'calErased'              => '��� ��������� ��� ������',
       'eraseFailed'            => '���������� �������� ���������',
       'cpasswordWrong'         => '������: ������������ ������',
       'ipasserror'             => '���������� ������� ���� ������, ��������� ������� �����',
       'password_changed'       => '��� ������ ��� �������',
       'cannot_open'            => '���������� �������',
       'Meeting_group'          => '������� ������',
       'updated'                => '������� ���������',
       'new_entries'            => '����� ������ ���� ������� � ��� ���������',
       'Unknown_command'        => '����������� �������',


       # search page
       'Search_Calendar'        => '����� ���������',
       'Topic'                  => '����',
       'SearchAll'              => '����� ���',
       'Search_From'            => '����� ��',
       'To'                     => '�',
       'Search_Results'         => '���������� ������',
       'CalendarReminder'       => '�����������',

       # Greeting
       'WelcomeToWebCalendar'   => '����� ���������� � ��� ���������',
       'PleaseSelectACalendar'  => '�������� ���������',
       'PleaseEnterCalendarName'=> '������� ��� ���������',

       #download
       'notAllowedToDownload'   => '� ��� ��� ���� ������� ��� �������� ����� ���������',

       #logout
       'AuthNotRequired'        => '��������: ��� ��������� ����� ���������� �� ��������� �����������',
       'logoutInstruction'      => '��� ������ �� ��������� ������� ������ "���������� ������". ����� �������� ���������� ����,<br> ������� ��� "�����". ������ � ���� ������ �� ���������',
       'loginInstruction'       => '��� ����� ��� ������ ������� ������������, ������� �� ������ "����"',
       'You_ve_logout'          => '����� ��������',
       'access_denied'          => '������ ��������',
       'login'                  => '����',

       #compare
       'CompareCalendars'       => '�������� ���������',
       'Enter_calendar_names'   => '������� ����������� �����',
       'or_meeting_group'       => '��� ������� ������',
       'EventsTable'            => '������� �������',
       'Name'                   => '���',
       'Events'                 => '�������',
       'ForegroundColor'        => '���� ��������� �����',
       'BackgroundColor'        => '���� ������� �����',

       # msg in the main
       'accessAnotherCal'        => '��� ������� � ������� ���������,',

       # msg on the color editor
       # Some missing phrases and addons ...
       'Close'                  => '�������',
       'ShowCombinedCalendar'   => '�������� ��������������� ���������',
       'CombinedCalendar'       => '��������������� ���������',



       'Participants_are_allowed_to' => '��������� ����� ����� ��',
       'View_only'              => '������ ��������',
       'Edit'                   => '���������',
       'EditAndDelete'          => '��������� � ��������',
       'Updated_calendars'      => '����� ��������� ��������� ���������',
       'NotAllowedToUpdate'     => '� ��� ��� ����� �� ���������� ��������� ����������',
       'invalid_date'           => '������������ ����',
       'Schedule'               => '������',            # as in 'schedule an appointment on calendar mzou
       'onCalendar'             => '�� ���������',          #
       'DeleteForward'          => '������� ������� �������',
       'All'                    => '���',
       'SearchSubjectEmpty'	=> '���� ������ �� ����� ���� ������',
       'Start_date'             => '���� ������',
       'is_after_due_date'      => '����������',
       'Invalidusername'	=> '������������ ��� ������������',
       'Invalidcalendarname'	=> '������������ ��� ���������',
       'Protected'		=> '��������',
       'Couldnotfindcalendar' => '���������� ����� ���������',
       'Invalidspooldir'      => '������������ ������ ������',
       'ListView'             => '�������� ������',
       'BlockView'            => '�������� �����',

       # address book stuff
       'AddressBook'           => '�������� �����',
       'AddressBookEditor'     => '�������� �������� �����',
       'AddressBookUpdated'    => '�������� ����� ���������',
       'BackToAddressBook'     => '������� ���� ��� ����������� � ����� �������� �����',
       'FirstName'             => '���',
       'LastName'              => '�������',
       'Address'               => '�����',
       'Phone'                 => '�������',
       'Fax'                   => '����',
       'Info'                  => '����������',
       'Affiliation'           => '����� ������',
        'Where'                  => '���',
       'Priority'              => '���������',
       'Diary'                 => '�������',
       'DiaryUpdated'          => '������� ��������',
       'ReadDiary'             => '��������� �������',       
       'From'                  => '��',
       'PlainText'             => '�����',
       'Html'                  => 'Html',
       'SearchDiary'           => '����� �������',
       'SearchFor'             => '�����:',
       'NeedAuth2Proceed'      => '��� ��������� ��� ��������� ���������� �����������. ������� ������ "����" ��� ����������� ��� ������ ��������� ��� �������� � ��� ���������.',

       # Priority of ToDo tasks
       'Urgent'                => '������',
       'High'                  => '�������',
       'Medium'                => '�������',
       'Low'                   => '������',       

       # find calendar names
       'FindCalNames'          => '����� ���������',

       # overlapping 
       'AllowOverlap'          => '��������� ��������������� �������',
       'GoBack'                => '�����',  #

       'OverlapInstr'          => '������� ���������, ��������� ��� ����������� ��� ��������� �������. ���� �� ������������� ������ ������ ��� � ��� ���������, ��������� �����, ������� ������ <b>\'�\'</b> � <b>\'��������� ��������������� �������\'</b> � ����������� ����� ������ �������.',

       'signup'                 => '�����������',
       'Invalidpassword'	=> '������������ ������',
       'olduserInstruction'     => '� ���� ��� ���� ���������',
       'newuserInstruction'     => '� ����� ������������',
       'PleaseLogin'            => '��������� �����������. ����������, ������� ������� ��� � ������!',
       'NextNew'		=> '����������� � ������� � ���������� �������',
       'RememberIDPswd'         => '��������� ��� ��� � ������, ����� ��� �� ����� ���� �� �������� �����',
       'global'                 => '�����', # mark global meeting group
       'groupnametaken'         => '������ � ����� ������ ��� ����������, ����������, �������� ������ ���',
       'deleteEventsBefore'     => '������� ������� ��� �������',
       'AutoStart'              => '���������� ��� ���������',
       'Readers'                => '��������',
       'ListReaders'            => '������ �������������, ������� ����� ������ ��� ���������',
       'Print'			=> '������',
       'mailVcal'		=> '������������ ������ ��������� � ����������� �� �����',
       'FriendsEmail'		=> '������ �����������',
       'PersonalMessage'	=> '�������� ������ ���������',
       'Mail2Friend'		=> '��������� �� ������ ����������',
       'MailSentTo'		=> '������ ��������� ���� ��������',
       'Location'               => '�����',
       

       # the next line is used in a confirmation popup when a user is modifying 
       # an repeating event. The date displayed is the current date, normally 
       # it is not the initial starting date of the event.
       'CalendarFormat'			=> '������ ������',
       'CalendarFile'			=> '����� ���������',
       'SetupGreetingC'         => '��� ��������� �������� � ���������� ��������� ��������� ���������� � �������� �����.',
       'Email2Selected'		=> '��������� ��������� �� ��� ��������� ������',
       'AddNewEmail'		=> '�������� ����� ����������� ����� � �������� �����',
       'ContactP'		=> '���������� ����',
       'ContactE'		=> '���������� �����',
       'DailyReminder'		=> '�������� ��� ���������� �����������',
       'CompletedTasks'		=> '����������� �������',
       'PendingTasks'		=> '������������� �������',
       'Import2Cal'		=> '������������� ��� ������� � ���������',
       'ViewOnly'		=> '��� ������� ������ ��������� ��� ���������',
       'newLogin'		=> '��� ����� ��� ������ �������', 
       'QuickAdd'		=> '������� ����������',
       'Event'                  => '�������',
       'TodoList'               => '������ "�������"',
       'MarkComplete'		=> '�������� ����������� ��� ���������',
       'DeleteChecked'		=> '������� �����������',
       'AddNewTask'             => '�������� ����� �������',
       'TaskManager'            => '�������� �������',
       'WarnInvitee'		=> '�� �������, ��� ������ ������ ��� ������� � ��������� ���������?',
       'creationDisabled'	=> '��������, �� ��� �������� ������������� ������������� ���� ���������. ��� ���������� ���������� � ������ ���������� ��������������, ����� �� ������ ��� ��� ���������.',
       'RequestRSVP'            => '������ RSVP',
       'invitationAccepted'     => '����������� �������',
       'invitationDeclined'     => '����������� ���������',
       'AttendanceConfirmation' => '������������� ����������� �� �������',
       'AcceptInvitation'         => '������� �����������',
       'DeclineInvitation'      => '��������� �����������',
       'Undecided'              => '�� ������',
       'Category'		=> '���������',
       'Speaker'		=> '�������',
       'Header'			=> '����',
       'Footer'			=> '����������',
       'HeaderFooter'		=> '������� HTML ��� ���� � ���������� ��� ������������� � ������ ���',
       'MiscInfo'		=> '������ ����������',
       'Description'		=> '��������',
       'AllDay'			=> '� ������� ����� ���',
       'Tomorrow'		=> '������',
       'ThisWeek'		=> '�� ���� ������',
       'ThisMonth'		=> '� ���� ������',
       'Keyword'		=> '�������� �����',
       'NoEvents'		=> '��� �������',
       'EditThis'		=> '������������� ��� �������',
       'recurFormat'            => '��������� % ��  % ���, ������� � %-��.', # used in formating
       'taskDoneFormat'		=> '����������� %  %  %', # formating 
       'warnModify'	       => '�� ����������� �������� ������������� �������. ��������� ���� ���������� �� ��������� ����� ���� ����� �������.  ���� �� ����������� ��������������, �� ������� ����� ����������� ������� � ����� ����. � ��� ������� ����������  �� ����� �������, ����� ��� ������������� ���� � ������ �� ������������� �������, ����� �������.  ����������, ����������� ���������. ��������� ������ ������� ������� ����������. ��� ��������� ������� �������, �������� ����� ������� � ����� ��������. ���� ��� ������ ������� ��������� ',
       'gEventError'		=> '�� ���������� ������� ������� ������� ������, �� ���� ����������� ���������� �� ���. ��� �� ���������, ��������� �������� � ��������������� ������ ��������� � ������� ����������� ������. ������ �� ������ ������� ��� ���� ����� ������� �� ������ ���������, ����� �� ������ "������� ��� ����" �� ������ ��������� �������.',

       'City'                  => '�����',
       'State'                 => '�������',
       'Zip'                   => '������',
       'Country'               => '������',


       'ResetPasswd'           => '�������� ������ ������������',
       'File'                  => '����',
       'AlreadyOnCalendar'     => '��������� ������ ��� ��������� � ���������. ��� �� �������.',
       'ImportFileTitle'         => '������ ������ �� ����� ��������� �� ��� ���������',
       'ImportFileInstruction'   => '��� ������� ������ �� ����� ��������� �� ��� ���������,  ������� ������ ���� � ����� ��������� � ���� ����� ������ � ������� ������ "���������". ���� �� �� ������� ������ ���� � �����,  ������� ������ "�����" � ������� ����.',
       'ImportVcal'		=> '������������� ������ ������� �� ���������',
       'ImportVcalInstruction'	=> '��� �������� � �������� ������ �� ��������� � ���� ����� ������ � ������ ������ "���������"',



       'DetailedWorkingHours'   => '���������������� ������� ����', 
       'SelectAttendee' => '��� ����� ���������� ������� ����� �������������� ����� ����������, ����������� ������,  ������� ������, ���� ���������� ���� ����������. �� ������ ������� ��� ��������� �� ������, �������������� �����,  ��� ������� ��� � ���� ����� ������ ��� �������. ����������� ������ ������ ���� ������� � ���� ����� ������. ������� ������  ����� ���� ������� �� ������ � ���� "������� ������". �� ����� ������ ������ ��� ������� ������ � ���� ����� ������. ������ � ���� ����� ������ ������ ���� ��������� ��������� ��� ��������.',

       'MkEditorListInstruction' => '��� ����, ����� ��������� ������ ������������� ������������� ��� ���������,  �������� ����� �� ���������� �� ������, �������������� �����. �� ����� ������ ������ ����� �� ���������� � ���� ����� ������.',

       'MkReaderListInstruction' => '���� ������ ������ ��������� ��������, ������ ������������ �� ����� ������ ��� ���������.  ������ ������ �������������,������� ����� ������, �� ������ ���� ��������� ������������� ����� �� ������ ������ ���������.  ����� ������ ������� �� ���� ���������� �������������. �� ������ ������� ��� ����� �� ������, �������������� ����� ���  ������ ����� � ���� ����� ������, ������������� ��� �������.',

       'MkGroupInstruction'=> '��� ������������� ���������� ������� ������ ����� �������������� ����� �� ���������� ���  �� ����������� ������. �� ������ ������� ����� �� ������, �������������� ����� ��� ������ ����� � ���� ����� ������.  ����������� ������ ������ ���� ������� � ���� ����� ������.',
       'Contacts'	   => '��������',
       'Tasks'		   => '�������',
       'Day'		   => '����',
       'Week'		   => '������',
       'Month'		   => '�����',
       'Year'		   => '���',
       'OffDutyHours'	   => '����, � ������� ������� �� �����������',
       'AddNewAddress'	   => '�������� ����� �����',
       'HeaderColor'	   => '���� ����',
       'Never'		   => '�������',
       'OverlapNotAllowed' => 'Unfortunately, overlap events is not allowed on the following calendars.',
       'Notes'		   => '�������',
       'PostIt'		   => '���������',   # as in post it notes
       'Title'		   => '��������',
       'AddNewNote'	   => '�������� ����� �������',

       'InterestedCalendars' => '����������� ��� ���������, ������� �� �������� ������ ������ ��� �������������.', 
       'CalendarListInstruction' => '���� �� �� ������ ������ ������� ������ ���������� � ���� ������ ����� ���������,  �� ������ ������� �������� ������ �����. ������� ����� ����������, ������� �� ������ ������ � ������, � ���� ����� ������,  ������������� ��� �������, ��� �������� �� �� ������ �����.',
       
       'MasterHeadInput'  => '� ������� ���� ������� ����� ���������, ��������� ',
       'TextEntry'	  => '���� ������',
       'PulldownMenu'     => '���������� ����',

       'LockWarning'      => '� �� �����, ��� ������������� ��� ������, ��� ��������� ��� �������.  ��� ���������� ����������� ������ ��� ������ ��� ���������. �������� ����� � ���������� ��� ���.',

       'IUpload'	  => '��������� ��������', 
       'FUpload'	  => '��������� ����',        
       'IUploadInstruction' => '��� �������� ����� � ��������� �� ��� ����, ������� ������ ���� � ����� � ���� ����� ������  � ������� ������ "���������". ���� �� �� ������� ������ ���� � �����, ������� �� ������ "�����" ��� ����, ����� ����� ����.',
       'IUploadAck'	  => '�������� ���������. ����� �������� �� � �������� ��� �������� �������, �������� � ��������  ������ � ��������������� ���� � ��������� �������. ����������, ������, ��� �������� ������� ����� ���� ����������  ��� ��������� ��������������� ������ ����� �, � ���� ������, ��� ����� �������� ��� ��������� ������ ������������� ���� ������  ��������� �����.',
       'ReviewUI'  => '����������� �������� �������� ������������',
       'ApproveChecked' => '��������� ��������',	   
       'RejectChecked' => '��������� �� ��������',	 
       'Export2Vcal'   => '�������������� ��� ��������� � ������ Vcal',
       'CreateNewCal'  => '������� ����� ���������',
       'UsableImgs'    => '������������ ��������',
       'UImageInst'    => '����� �������� �������� � �������� ��� �������� �������, �������� � �������� �� ���, ������� ����� \\^o^/ � ��������������� ���� � ��������� �������.',
	'CheckAll'     => '�������� ���',
	'UncheckAll'   => '����� ���������',
        'Export2VCard' => '�������������� ���� �������� ����� � vCard',
	'ImportVcard'  => '������������� ���������� ���������� �� vCard',
        'ImportVCardTitle'  => '������������� �� vCard ����� �� ����� ����������',
        'ImportVcardInstruction' => '��� �������� � �������� vcard ������ � ��������� ���� � ������ ������ "���������"',
        'ImportVcardFileInstruction'   => '��� ������� ������ �� vCard ����� �� ��� ���������, ������� ������ ���� � �����  � ���� ����� ������ � ������� ������ "���������". ���� �� �� ������� ������ ���� � �����, ������� �� ������ "�����" ��� ����, ����� ����� ����.',
        'AlreadyInAddressbook' => '��� ������ ��� ��������� � �������� �����.',
	'DpyETimeAs' => '���������� ����� ������� ���',
	'MasterheadTabs' => '������ � ������� ����',
 	'DeferConfirmation'     => '�������� �������������',
	'Unconfirmed'           => '�� ������������',

	'SendMailUsing'         => '�������� ����� � �������', #	html, txt or vcal
         # used as in
         # send mail <> immediately or <> <hours> before event
        'Sendmail'              => '��������� �����',
        'immediately'           => '����������',
        'or'                    => '���',
        'beforeEvent',          => '����� ��������',
        'Cancelled'             => '��������',
       #===== need translation !!!

        'AddNewEntry'		=> '�������� ����� ������',
	'SearchNotes'		=> '������� �� ������',
	'SearchAddress'		=> '����� � �������� �����',

	'Week_begins_on'	=> 'Week begins on',
	'StartDate'		=> 'Start Date',
	'DueDate'		=> 'Due Date',
	'DueTime'		=> 'Due Time',
	'Overdue'		=> 'Overdue',
	'EventDates'		=> 'Event Dates', 

	'SpecialEvents'		=> 'Special Events',
	'RemindForwardNewTask'  => 'Set Remind Forward on New Tasks',
	'DispCompletedTasks'    => 'Display Completed Tasks on Calendar',
	'TaskOptions'		=> 'Task Options',
        'DoneOn'		=> 'Done on %s by %s', # used to display completed tasks, like 'Done on 03/19/2002', 

        'DetailedView'		=> '��������� ���',
        'CombinedView'		=> '��������������� ���',
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











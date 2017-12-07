# 
# This is the list of phrases or words used in the UI.
# To port webCal to another language, translate
# this list should be suffice.
# ���ļ���汾
#
# $Header: /home/cvs/webCal/webCal2/Chinese_GB.perl,v 1.33 2004/10/20 23:35:56 mzou Exp $
#

%::phr=(
       # specify character encoding.
       'CHARSET'		=> 'gb2312',

       'Calendar'               => '�ճ̱�',
       
       # Name of weekdays
       'Sunday'                 => '������',
       'Monday'                 => '����һ',
       'Tuesday'                => '���ڶ�',
       'Wednesday'              => '������',
       'Thursday'               => '������',
       'Friday'                 => '������',
       'Saturday'               => '������',
       # Name of weekdays, abbreviation
       'Sun'                    => '����',
       'Mon'                    => '��һ',
       'Tue'                    => '�ܶ�',
       'Wed'                    => '����',
       'Thu'                    => '����',
       'Fri'                    => '����',
       'Sat'                    => '����',
       # Name of weekdays, abbreviated even more
       'Su'                     => 'Su',
       'Mo'                     => 'Mo',
       'Tu'                     => 'Tu',
       'We'                     => 'We',
       'Th'                     => 'Th',
       'Fr'                     => 'Fr',
       'Sa'                     => 'Sa',
       
       # Month Names  
       'January'                => 'һ��', 
       'February'               => '����',
       'March'                  => '����',   
       'April'                  => '����',   
       'May_'                   => '����',     #! the full month of May, to distingsh with the abbreviation
       'June'                   => '����',    
       'July'                   => '����',    
       'August'                 => '����',
       'September'              => '����',
       'October'                => 'ʮ��',
       'November'               => 'ʮһ��',
       'December'               => 'ʮ����',
       # Month Names, abbreviation
       'Jan'                    => 'һ��',
       'Feb'                    => '����',
       'Mar'                    => '����',
       'Apr'                    => '����',
       'May'                    => '����',
       'Jun'                    => '����',
       'Jul'                    => '����',
       'Aug'                    => '����',
       'Sep'                    => '����',
       'Oct'                    => 'ʮ��',
       'Nov'                    => 'ʮһ��',
       'Dec'                    => 'ʮ����',

       # repeating rules 
       'OneTime'                => 'һ��',                   # one time event
       'Daily'                  => 'ÿ��',                      
       'Weekly'                 => 'ÿ����',
       'Every2Weeks'            => 'ÿ������',
       'MonthlyByDate'          => 'ÿ�µ�ĳ��',
       'MonthlyByWeekday'       => 'ÿ�µ�ĳ��ĩ',         # e.g. the 3rd Friday of every month
       'Yearly'                 => 'ÿ��',
       'MTWThF'                 => 'һ����',
       'MWF'                    => 'һ��������',
       'TTh'                    => 'T Th',
       'YearlyByMonthWeekday'   => 'ÿ��ĳ��ĳ��',    # e.g. the first Monday of June, yearly
       'EveryOtherDay'          => 'ÿ��һ��',
       'Every3rdDay'            => 'ÿ����',
       'Every4thDay'            => 'ÿ����',
       'Every5thDay'            => 'ÿ����',
       'Every6thDay'            => 'ÿ����',

       # event types
       'Appointment'            => 'Լ��',
       'Todo'                   => '��������',
       'Meeting'                => '����',
       'Special'                => '�����¼�',            # for holidays, event require no specific time

       # option button names
       'CalendarOptions'        => '�ճ̱����趨',   # title of the options page
       'Compare'                => '�Ա�',            # Button: compare calendars and find conflicts ...
       'Search'                 => '����',             # Button:
       'GotoDate'               => '����ĳ��',           # Button:
       'Previous'               => '��ǰ',           # previous Month/Day/Week 
       'Today'                  => '����',              # This Month/Day/Week 
       'Next'                   => '����',               # next Month/Day/Week 
       'Options'                => '�趨',            # Button: go to options page 
       'Admin'                  => '����',              # Button: go to admin page
       'Logout'                 => 'ע��',             # Button: go to logout page
       'DayView'                => '���ڲ쿴ģʽ',           # Alt name under the image buttons
       'WeekView'               => '�ܲ쿴ģʽ',
       'MonthView'              => '�²쿴ģʽ',
       'YearView'               => '��쿴ģʽ',
       
       
       # messages on the setup screen
       'SetupYourCalendar'      => '�趨�������', # title
       'YourCalendarName'       => '���ճ̱������',
       'YourEmailAddress'       => '��ĵ����ʼ�',
       'YourName'               => '�������',
       'Password'               => '����',
       'RetypePassword'         => 'ȷ������',
       'CalendarType'           => '��������',
       'Public'                 => '����',
       'Private'                => '˽��',
       'ForPrivateCalendar'     => '˽��������',
       'OthersSeeTextTime'      => '�����˿��Կ���ʱ�������',
       'OthersSeeTitle'         => 'Others See Event Title',
       'OthersSeeTimeOnly'      => '�����˽��ܿ���ʱ��',
       'OthersSeeNothing'       => '�����˲��ܿ�',
       'PublicCalendar'         => '��������',
       'Submit'                 => '�ύ',
       'Cancel'                 => 'ȡ��',
       'TheName'                => '����',
       'HasBeenTaken'           => 'has already been taken',
       'PasswordMismatch'       => '���벻��',
       'TryAgain'               => '������һ��',
       'EmailIncomplete'        => '�ʼ���ַ������',
       'CannotCreateCalendar'   => '���ܴ�������ճ̱��ճ̱�����Ʊ���ʹ����Ч������',
       'CannotWriteInfoFile'    => '�޷�д����Ϣ�ļ�',
       'CannotWriteDataFile'    => '�޷�д�������ļ�',
       'CannotWritePasswordFile'=> '�޷����������ļ�',
       'Congratulations'        => '��ϲ��ϲ���㶨��',
       'SetupGreetingA'         => '����ճ��Ѿ��趨��ɣ�������µĵ�ַ�����ղؼ�',
       'SetupGreetingB'         => '���ס������룬��Ȼ�޷���½��Ŷ',
       'HaveToSupplyCalendarName' => '�����Ϊ���ճ̱�����',
       'PleaseDoNotUseYourUnixAccountPassword' => '�������Unix���û�����Ҫʹ����ͬ������',
       
       
       # Event Editor Messages
       'EventEditor'            => 'ʱ��༭��',
       'AppointmentEditor'      => 'Լ���¼��༭��',
       'ToDoEditor'             => '�������˱༭��',
       'MeetingEditor'          => '����༭��',
       'SpecialEditor'          => '�����¼��༭��',
       'AuthRequired'           => 'ע�⣺�༭����ճ̱���Ҫ������֤',
       'CurrentEvents'          => '��ǰ�¼�',
       'Time'                   => 'ʱ��',
       'What'                   => 'ʲô����',
       'Date'                   => 'ʱ��',
       'Start'                  => '��ʼ',
       'End'                    => '����',
       'Details'                => '��ϸ',
       'Colors'                 => '��ɫ',
       'Privacy'                => '��˽',         
       'Frequency'              => 'Ƶ��',
       'Reminders'              => '������',
       'Mail'                   => '�ʼ�',
       'min'                    => '����', # abbreviation of minute
       'mins'                   => '����',
       'hours'                  => 'Сʱ',
       'days'                   => '����',
       'weeks'                  => '������',
       'Occurs'                 => '������',
       'For'                    => 'Ϊ',
       'times'                  => '����',   # as in repeat for 10 times 
       'Popup'                  => '����',
       'Author'                 => '����',
       'Blink'                  => '��˸',
       'Chime'                  => 'Chime',
       'Insert'                 => '����',
       'InsertAsNew'            => '�����¼�¼',
       'Modify'                 => '�޸�',
       'DeleteThisOne'          => 'ɾ�������¼�',
       'DeleteAll'              => 'ɾ�������¼�',
       'Delete'                 => 'ɾ��',
       'Due'                    => '����', # as in Due Date
       'TaskDone'               => '�����Ѿ����',
       'RemindForward'          => '��������',
       'Yes'                    => 'ȷ��Yes',
       'No'                     => 'ȡ��No',
       'Y'                      => 'Y', # abbrieviation of Yes
       'N'                      => 'N', # abbrieviation of No
       'ToDo'                   => '��������',
       'Participants'           => '��������',
       'none'                   => '��',
       'MailToAll'              => '����������',
       'FindConflict'           => '���ҳ�ͻ�¼�',
       'NoTimeEvent'            => 'No Time Event',
       'Fg'                     => 'ǰ��',
       'Bg'                     => '����',
       'Error'                  => '����',
       'HasError'               => '������������г���',
       'ListParticipants'       => '�оٲμ��ߵĻ���������������ֻ����꾡�ĵ����ʼ���ַ�����ǵ��������ᱻ����',
       'ConflictTable'          => '��ͻ��',
       'Conflict'               => '��ͻ',         
       'Table'                  => '���',         
       'You'                    => '��',
       'NotAllowedToModify'     => '�������޸�������¼',
       'NotAllowedToEdit'       => '������༭������¼',
       'Warning'                => '����',
       'NoRemindForward'        => '�޷�Ϊ�ظ��Ĵ������˽�������' ,
       'Acknowledgement'        => 'ȷ��',
       'UpdatedOK'              => '�ճ̱���³ɹ�',
       'BackToCalendar'         => '�������ص�����ճ̱�',
       'OpenFailed'             => '�޷�������ճ̱�',
       'NoCalendar'             => '�����û���ճ̱��ļ�',
       
       # goto page
       'Goto_Date'              => '����ĳ��', #title
       'Goto'                   => '��ת',
       'SelectDate'             => '��ѡ������',
       'View'                   => '�鿴',
       'Go'                     => '��ʼ', # function as submit
       'Set'                    => '�趨', # as in set options
       
       # set options page
       'My_day_starts_at'       => '�ҵĹ����մ�',
       'ends_at'                => '������',
       'Interval'               => '���',
       'Week_starts_on',        => 'Week of ',
       'include_weekend',       => '������ĩ',
       'Date_Format'            => '���ڸ�ʽ',
       'Time_Format'            => 'ʱ���ʽ',
       'Time_zone'              => 'ʱ��',
       'Default_view'           => 'Ĭ�ϲ쿴ģʽ',
       'Default_Reminders'      => 'Ĭ��������',
       'ListEditors'            => '�����޸�����ճ̱����Ա',
       'Editors'                => '�༭��',
       'Email'                  => '�ʼ�',
       'Default'                => 'Ĭ��',
       'Homepage'               => '������ҳ',
       'Language'               => '����',
       
       # admin page
       'Administration'         => '����',
       'adminDisabled'          => '�����ճ̱�����ѱ�����',
       'Change_Password'        => '�޸�����',
       'Old_Password'           => '������',
       'New_Password'           => '������',
       'New_Password_Again'     => '�ٴ���������',
       'Create_Meeting_Group'   => '����������',
       'to_be_used_by_meeting_editor' => '������༭��ʹ��',
       'Existing_Groups'        => '�˳���',
       'Group_Name'             => '������',
       'ListGroupMembers'       => '����������ճ̱�����ƻ��ʼ���ַ',
       'Merge_Calendars'        => '�ϲ��ճ̱�',
       'CalendarNames'          => '�ճ̱�����',
       'EraseCalendar'          => '����ҵ��ճ̱�',
       'DeleteCalendar'         => 'ɾ���ҵ��ճ̱�',
       'errorPerm'              => '�ܾ�����',
       'calDeleted'             => '����ճ̱��Ѿ���ɾ��',
       'ThankYou4Using'         => '��л���ʹ��',
       'calErased'              => '����ճ̱��Ѿ����',
       'eraseFailed'            => '�޷���յ����ճ̱�',
       'cpasswordWrong'         => '��֤�����������',
       'ipasserror'             => '�޷��������ĵ���������һ��',
       'password_changed'       => '��������޸����',
       'cannot_open'            => '�޷���',
       'Meeting_group'          => '������',
       'updated'                => '�ɹ�����',
       'new_entries'            => '�¼�¼�Ѿ����뵽�ճ̱���',
       'Unknown_command'        => '����ָ��',
       
       
       # search page
       'Search_Calendar'        => '�����ճ̱�',
       'Topic'                  => '����',
       'SearchAll'              => '��Ѱ����',
       'Search_From'            => '�����￪ʼ',
       'To'                     => '��',
       'Search_Results'         => '�������',
       'CalendarReminder'       => '�ճ̱�������',
         
       # Greeting
       'WelcomeToWebCalendar'   => '��ӭʹ�� WebCalendar',
       'PleaseSelectACalendar'  => '��ѡ��һ���ճ̱�',
       'PleaseEnterCalendarName'=> '����������ճ̱������',

       #download
       'notAllowedToDownload'   => '�㲻�������ڱ��ճ̱�',
         
       #logout
       'AuthNotRequired'        => 'ע�⣺�쿴�����ճ̱���Ҫ��Ȩ',
       'logoutInstruction'      => '��Ҫע��ʱ�����ע��ͼ�ꡣ�����ֵ�½�Ի���ʱ����"nobody"�û���½����Ҫ����',
       'loginInstruction'       => '���Ҫ�������û���½�����"Login"ͼ��',
       'You_ve_logout'          => '���Ѿ�ע��',
       'access_denied'          => '�ܾ�����',
       'login'                  => '��½',

       #compare
       'CompareCalendars'       => '�Ƚ��ճ̱�',
       'Enter_calendar_names'   => '�����ճ̱������',
       'or_meeting_group'       => '����"������"',
       'EventsTable'            => '�¼���',
       'Name'                   => '����',
       'Events'                 => '�¼�',
       'ForegroundColor'        => 'ǰ����ɫ',
       'BackgroundColor'        => '������ɫ',

       # msg in the main
       'accessAnotherCal'        => 'To access another calendar, please',

       # Some missing phrases and addons ...
       'Close'                  => '�ر�',
       'ShowCombinedCalendar'   => '��ʾ�ϲ����ճ̱�',
       'CombinedCalendar'       => '�ϲ��ճ̱�',
       'Participants_are_allowed_to' => "������ֻ����",
       'View_only'              => 'ֻ�ܲ쿴',
       'Edit'                   => '�༭',
       'EditAndDelete'          => '�༭��ɾ��',
       'Updated_calendars'      => '���µ��ճ̱���һͬ����',
       'NotAllowedToUpdate'     => '�㲻����������µ��ճ̱�',
       'invalid_date'           => '�Ƿ�����',
       'Schedule'               => '�ƻ�',            # as in 'schedule an appointment on calendar mzou
       'onCalendar'             => 'on calendar',          #
       'DeleteForward'          => 'Delete Forward Occurences',
       'All'                    => '����',
       'SearchSubjectEmpty'	=> '����Ŀ�겻��Ϊ��',
       'Start_date'             => '��ʼ����',
       'is_after_due_date'      => 'is after due date',
       'Invalidusername'	=> '�Ƿ��û���',
       'Protected'		=> '==�ܱ���==',
       'Invalidcalendarname'	=> '�Ƿ����ճ̱�����',
       'Couldnotfindcalendar' => 'û���ҵ��ճ̱�',
       'Invalidspooldir'      => 'Invalid spooldir',
       'ListView'             => '��ϸ�б�쿴ģʽ',
       'BlockView'            => '��Ԫ��쿴ģʽ',

       # address book stuff
       'AddressBook'           => '��ַ��',
       'AddressBookEditor'     => '��ַ���༭��',
       'AddressBookUpdated'    => '��ַ���Ѹ���',
       'BackToAddressBook'     => '������ﷵ�ص���ַ��',
       'FirstName'             => '��',
       'LastName'              => '��',
       'Address'               => '��ַ',
       'Phone'                 => '�绰',
       'Fax'                   => '����',
       'Info'                  => '��Ϣ',
       'Affiliation'           => '��������',
       'Where'                 => '�����',
       'Priority'              => '���ȼ�',
       'Diary'                 => '�ռ�',
       'DiaryUpdated'          => '�ռ��Ѹ���',
       'ReadDiary'             => '���ռ�',       
       'From'                  => 'From',
       'PlainText'             => '���ı�',
       'Html'                  => 'Html',
       'SearchDiary'           => '�����ռ�',
       'SearchFor'             => '����..',
       'NeedAuth2Proceed'      => '�쿴���༭��Ҫ��֤������ \'��½\', ���ߵ���ճ̱�ͼ��ص�����ճ̱�',

       # Priority of ToDo tasks
       'Urgent'                => '����',
       'High'                  => '��',
       'Medium'                => 'һ��',
       'Low'                   => '��',       

       # find calendar names
       'FindCalNames'          => '�����ճ̱�',

       # overlapping 
       'AllowOverlap'          => '�����¼��ص�',
       'GoBack'                => '����',  #

       'OverlapInstr'          => '����¼����ܾ�����Ϊ����һ�λ��������е����ճ̱��е��¼��ص�������������Ҫ������������ճ̱��У����أ�ѡ��"<b>�����¼��ص�</b>"���"<b>Y</b>"��Ȼ������һ��',

       'signup'                 => 'ע��',
       'Invalidpassword'	=> '���벻��',
       'olduserInstruction'     => '�������ճ̱�',
       'newuserInstruction'     => '�������û�',
       'PleaseLogin'            => '��Ҫ��֤�����ȵ�½!',
       'NextNew'		=> '��һ�����¼�',
       'RememberIDPswd'         => '���ס�ҵ��û����Լ�����(�����\����Ҫ��һ���ظ�����)',
       'global'                 => 'Global', # mark global meeting group
       'groupnametaken'         => '������������ѱ�ʹ�ã�����������������',
       'deleteEventsBefore'     => '��ɾ�������¼�',
       'AutoStart'              => '�Զ��� WebCalendar',
       'Readers'                => '����',
       'ListReaders'            => '�г����Զ�ȡ����ճ̱���û�',
       'Print'			=> '��ӡ',
       'mailVcal'		=> '���ʼ��������и���"VCALENDAR"',
       'FriendsEmail'		=> '���ѵĵ����ʼ���ַ',
       'PersonalMessage'	=> '����˽����Ϣ',
       'Mail2Friend'		=> '�����ʱ���������',
       'MailSentTo'		=> '�ճ̱��Ѿ����� ',
       'Location'               => 'Location',
       # the next line is used in a confirmation popup when a user is modifying 
       # an repeating event. The date displayed is the current date, normally 
       # it is not the initial starting date of the event.
       'CalendarFormat'			=> '�ճ̱��ʽ',
       'CalendarFile'			=> 'Calendar File',
       'SetupGreetingC'         => '��鿴�ճ̱��"����"ҳ����趨.',
       'Email2Selected'		=> '��ѡ�еĵ�ַ�����ʼ�',
       'AddNewEmail'		=> '����µ��ʼ���ַ���ҵĵ�ַ��',
       'ContactP'		=> '��ϵ��',
       'ContactE'		=> '��ϵ�����ʼ�',
       'DailyReminder'		=> 'ÿ�췢�ʼ�������',
       'CompletedTasks'		=> '��ɵ�����',
       'PendingTasks'		=> 'δ��ɵ�����',
       'Import2Cal'		=> '������¼���ӵ��ճ̱�',
       'ViewOnly'		=> '����ѡ��鿴�������ճ̱�',
       'newLogin'		=> '����ʹ�������û���½', 
       'QuickAdd'		=> '��������',
       'Event'                  => '�¼�',
       'TodoList'               => '���������嵥',
       'MarkComplete'		=> '��ѡ�еı��Ϊ���',
       'DeleteChecked'		=> 'ɾ��ѡ�е�',
       'AddNewTask'             => '����������',
       'TaskManager'            => '���������',
       'DetailedView'		=> '��ϸ',
       'CombinedView'		=> '���ʽ��',
       'WarnInvitee'		=> '��ȷ�ϰ������¼���ӵ����µ��ճ̱�����',
       'creationDisabled'	=> '��Ǹ���ճ̱��趨�Ĺ��ܱ�ϵͳ����Ա�����ˣ�����ϵ���ϵͳ����Ա.',
       'RequestRSVP'            => '��ҪRSVP(��ظ�)��ʾ',
       'invitationAccepted'     => '����',
       'invitationDeclined'     => '�ܾ�',
       'AttendanceConfirmation' => 'ȷ�ϻ���μ���',
       'AcceptInvitation'         => '��������',
       'DeclineInvitation'      => '�ܾ�����',
       'Undecided'		=> 'δ����',
       'Category'		=> '���',
       'Speaker'		=> '������',
       'Header'			=> 'ҳü',
       'Footer'			=> 'ҳ��',
       'HeaderFooter'		=> '�����Զ����ҳü/ҳ��HTML����',
       'MiscInfo'		=> '������Ϣ',
       'Description'		=> '����',
       'AllDay'			=> 'ȫ��',
       'Tomorrow'		=> '����',
       'ThisWeek'		=> '�������',
       'ThisMonth'		=> '�����',
       'Keyword'		=> '�ؼ���',
       'NoEvents'		=> '���¼�',
       'EditThis'		=> '�༭����¼�',
       'recurFormat'            => 'Occurs %s for %d times, starting on %s.', # used in formating
       'taskDoneFormat'		=> 'Completed by %s on %s at %s', # formating, eg. by Jone on Mon 12/11 at 5pm


       'warnModify'	       => '�������޸�һ���ظ�ʱ�䡣��ʾ������(���ߵ�����)��������¼���ԭ��������(���ߵ�����)������������Ҫ�༭����ô����¼�������µ����ڿ�ʼ�ظ��������������ص��¼������ų����ڡ�����ȷ�����Ͻ��ᶪʧ����ȷ���Ƿ�������޸�һ���ظ�ʱ���¼��е�һ�����ǲ�����ģ�����ɾ������ظ����¼������������¼�������¼�ԭ��������(���ߵ�����)��  ',

       'gEventError'		=> '������ɾ��һ����û�б�������Ŀ��ظ����¼��е�һ���ݡ����ǲ�����ģ���Ϊ���ʹ����ճ̱��������������ճ̱�����ͬ���ԡ�������ʹ�����¼��༭���е�"ɾ�����е��¼�"ͼ�껹�ǿ��Դ��ճ̱���ɾ����Щ�ظ����¼��ġ�',

       'City'                  => '����',
       'State'                 => '��',
       'Zip'                   => '�ʱ�',
       'Country'               => '����',


       'ResetPasswd'           => '�����趨����',
       'File'                  => '�ļ�',
       'AlreadyOnCalendar'     => '��Щ��¼�Ѿ�������ճ̱��У�ֻ�������������.',
       'ImportFileTitle'         => '����ĵ��Ե�"VCalendar"�ļ���������',
       'ImportFileInstruction'   => '���Ҫ����ĵ��Ե�"VCalendar"�ļ��������ݣ�������"vCalendar"�ļ���ȫ·�������"<b>�ύ</b>".����㲻ȷ���ļ���·��������Ե��"<b>���</b>"�ҵ�����ļ�.',
       'ImportVcal'		=> '��"VCalendar"�е����¼�',
       'ImportVcalInstruction'	=> '���ߴ�VCalendar������¼���ı�����Ȼ����"<b>�ύ</b>"',


       # new phrases

       'DetailedWorkingHours'   => 'Detailed Daily Working Hours', 
       'SelectAttendee' => '�¼��μ����п�����<b>"�ճ̱����֣������ʼ���ַ�����������ƣ����������"</b>������Դ���ߵĶ����б���ѡ���ճ̱�����֣��������������롣�����ʼ���ַ�������������롣������������ڣ����Դ�"������"ѡ���ѡ��������Ҳ�������ϱ���������顣����������ʱӦ���ÿո���߶��ŷֿ���',

       'MkEditorListInstruction' => 'Ϊ������������ѻ���ͬ�±༭����ճ̱��������嵥��ѡ�����ǵ��ճ̱�����֡���Ҳ�����������������ǵ��ճ̱������',

       'MkReaderListInstruction' => '�������ճ̱�������ܱ������������û����ܶ�ȡ����ճ̱�����Ը�ѡ��һЩ�û�����һ���б�������Ƕ�ȡ���ճ̱�����嵥���ճ̱��������ɡ��������嵥��ѡ�����ǵ��ճ̱�����֡���Ҳ�����������������ǵ��ճ̱������',

       'MkGroupInstruction'=> '�ճ̱�����ֻ��ߵ����ʼ���ַ������������������ĳ�Ա���������嵥��ѡ�����ǵ��ճ̱�����֡���Ҳ�����������������ǵ��ճ̱�����ơ������ʼ���ַһ��Ҫ��������',
       'Contacts'	   => '��ϵ��',
       'Tasks'		   => '����',
       'Day'		   => '��',
       'Week'		   => '��',
       'Month'		   => '��',
       'Year'		   => '��',
       'OffDutyHours'	   => '�ǹ���ʱ��',
       'AddNewAddress'	   => '�����µĵ�ַ',
       'HeaderColor'	   => 'ҳü��ɫ',
       'Never'		   => '�Ӳ�',
       'OverlapNotAllowed' => 'Unfortunately, overlap events is not allowed on the following calendars.',
       'Notes'		   => '�ʼ�',
       'PostIt'		   => '����PostIt',   # as in post it notes
       'Title'		   => '����',
       'AddNewNote'	   => '�����±ʼ�',
       
       'InterestedCalendars' => '�г���������Զ�ȡ���߱༭���ճ̱�', 
       'CalendarListInstruction' => '����㲻�����ճ̱�ѡ���嵥�����������б��嵥������������ﴴ��һ�ݼ���嵥���������嵥��ѡ�����ǵ��ճ̱�����֡���Ҳ�����������������ǵ��ճ̱�����ơ������õļ���嵥��������������ʾ�ճ̱��嵥�ĵط�ʹ��',

       'MasterHeadInput'  => 'In the masterhead, input calendar selection using a',
       'TextEntry'	  => '������',
       'PulldownMenu'     => 'Pulldown menu',

       'LockWarning'      => 'Your calendar was modified while I was processing your request. For data integrity, your 
submission is rejected. Please go back and try again.',

       'IUpload'	  => 'ͼƬ�ϴ�', 
       'FUpload'	  => '�ļ��ϴ�',        
       'IUploadInstruction' => 'Ҫ����ĵ������ϴ�ͼƬ�������ļ�·�����������ļ���ȫ·��������㲻ȷ��·�������"���"�ҵ���Ӧ���ļ���',
       'IUploadAck'	  => 'ͼƬ�ɹ����ء����Ҫ���¼������ʱ��������ʹ��ͼƬ����Ҫ���ļ�������(����\\^O^/)���е���Ӧ���¼��༭�����ı����С������뿼������ϴ���ͼƬ���ܻ�����վ���ܵ����ƣ�Ҳ����˵����Щ�����ͼƬ�����޷����ϵĿ�����',
       'ReviewUI'  => 'Ԥ���û��ϴ���ͼƬ',
       'ApproveChecked' => 'Approve checked',	   
       'RejectChecked' => 'Reject checked',	   
       'Export2Vcal'   => 'ʹ��"vCal"��ʽ��������ճ̱�',
       'CreateNewCal'  => '����һ���µ��ճ̱�',
       'UsableImgs'    => '���õ�ͼƬ',
       'UImageInst'    => '���Ҫ���¼������ʱ��������ʹ��ͼƬ����Ҫ���ļ�������(����\\^O^/)���е���Ӧ���¼��༭�����ı�����',

	'CheckAll'     => 'ȫѡ��',
	'UncheckAll'   => 'ȡ��ȫ��ѡ��',
        'Export2VCard' => '����ĵ�ַ��������"vCard"�ļ�',
	'ImportVcard'  => '��"vCard"�ļ���������ϵ��Ϣ',
        'ImportVCardTitle'  => '����������"vCard"�ļ���������',
        'ImportVcardInstruction' => 'Or cut and paste your vcard entry in the textarea and click on the submit button',
        'ImportVcardFileInstruction'   => 'Ҫ��"vCard"�ļ����������ݣ��������������"vCard"�ļ���ȫ·��Ȼ����"ȷ��"��������϶��ļ���·�������Ե��"���"�ҵ�����ļ�',
        'AlreadyInAddressbook' => '��ĵ�ַ�����Ѵ������µļ�¼',
	
	'DpyETimeAs' => '��ʾʱ��ģʽ',
	'MasterheadTabs' => 'Masterhead Tabs',

 	'DeferConfirmation'     => '�ӳ�ȷ��',
	'Unconfirmed'           => 'δȷ�ϵ�',     # unconfirmed invitation

	'SendMailUsing'         => 'Send mail using�', #	html, txt or vcal
         # used as in
         # send mail <> immediately or <> <hours> before event
        'Sendmail'              => '���ʼ�',
        'immediately'           => '����',
        'or'                    => '����',
        'beforeEvent',          => 'before event',
        'Cancelled'             => '��ȡ��',

        'AddNewEntry'		=> '����һ���¼�¼',
	'SearchNotes'		=> '�����ʼ�',
	'SearchAddress'		=> '������ַ��',

	'Week_begins_on'	=> 'ÿ�ܴ�',
	'StartDate'		=> '��ʼ����',
	'DueDate'		=> '������',
	'DueTime'		=> '����ʱ��',
	'Overdue'		=> '�ӳٵ�',
	'EventDates'		=> '�¼�����', 

	'SpecialEvents'		=> '�����¼�',
	'RemindForwardNewTask'  => 'Set Remind Forward on New Tasks',
	'DispCompletedTasks'    => 'Display Completed Tasks on Calendar',
	'TaskOptions'		=> 'Task Options',
        'DoneOn'		=> 'Done on %s by %s', # used to display completed tasks, like 'Done on 03/19/2002', 

        'DetailedView'		=> '��ϸ',
        'CombinedView'		=> '���ʽ��',
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











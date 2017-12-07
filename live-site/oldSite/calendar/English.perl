#
# This is the list of phrases or words used in the UI.
# To port webCal to another language, translate
# this list should be suffice.
#
# $Header: /home/cvs/webCal/webCal2/English.perl,v 1.83 2004/10/20 23:35:56 mzou Exp $
#


%::phr=(
       # specify character encoding.
       'CHARSET'		=> 'ISO-8859-1',

       'Calendar'               => 'Calendar',
       
       # Name of weekdays
       'Sunday'                 => 'Sunday',
       'Monday'                 => 'Monday',
       'Tuesday'                => 'Tuesday',
       'Wednesday'              => 'Wednesday',
       'Thursday'               => 'Thursday',
       'Friday'                 => 'Friday',
       'Saturday'               => 'Saturday',
       # Name of weekdays, abbreviation
       'Sun'                    => 'Sun',
       'Mon'                    => 'Mon',
       'Tue'                    => 'Tue',
       'Wed'                    => 'Wed',
       'Thu'                    => 'Thu',
       'Fri'                    => 'Fri',
       'Sat'                    => 'Sat',
       # Name of weekdays, abbreviated even more
       'Su'                     => 'Su',
       'Mo'                     => 'Mo',
       'Tu'                     => 'Tu',
       'We'                     => 'We',
       'Th'                     => 'Th',
       'Fr'                     => 'Fr',
       'Sa'                     => 'Sa',
       
       # Month Names  
       'January'                => 'January', 
       'February'               => 'February',
       'March'                  => 'March',   
       'April'                  => 'April',   
       'May_'                   => 'May',     #! the full month of May, to distingsh with the abbreviation
       'June'                   => 'June',    
       'July'                   => 'July',    
       'August'                 => 'August',
       'September'              => 'September',
       'October'                => 'October',
       'November'               => 'November',
       'December'               => 'December',
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
       'OneTime'                => 'One time',                   # one time event
       'Daily'                  => 'Daily',                      
       'Weekly'                 => 'Weekly',
       'Every2Weeks'            => 'Every 2 weeks',
       'MonthlyByDate'          => 'Monthly by date',
       'MonthlyByWeekday'       => 'Monthly by weekday',         # e.g. the 3rd Friday of every month
       'Yearly'                 => 'Yearly',
       'MTWThF'                 => 'Mon thru Fri',
       'MWF'                    => 'Mon Wed Fri',
       'TTh'                    => 'T Th',
       'YearlyByMonthWeekday'   => 'Yearly By Month Weekday',    # e.g. the first Monday of June, yearly
       'EveryOtherDay'          => 'Every Other Day',
       'Every3rdDay'            => 'Every Third Day',
       'Every4thDay'            => 'Every Fourth Day',
       'Every5thDay'            => 'Every Fifth Day',
       'Every6thDay'            => 'Every Sixth Day',

       # event types
       'Appointment'            => 'Appointment',
       'Todo'                   => 'Todo',
       'Meeting'                => 'Meeting',
       'Special'                => 'Special',            # for holidays, event require no specific time

       # option button names
       'CalendarOptions'        => 'Calendar Options',   # title of the options page
       'Compare'                => 'Compare',            # Button: compare calendars and find conflicts ...
       'Search'                 => 'Search',             # Button:
       'GotoDate'               => 'GotoDate',           # Button:
       'Previous'               => 'Previous',           # previous Month/Day/Week 
       'Today'                  => 'Today',              # This Month/Day/Week 
       'Next'                   => 'Next',               # next Month/Day/Week 
       'Options'                => 'Options',            # Button: go to options page 
       'Admin'                  => 'Admin',              # Button: go to admin page
       'Logout'                 => 'Logout',             # Button: go to logout page
       'DayView'                => 'Day View',           # Alt name under the image buttons
       'WeekView'               => 'Week View',
       'MonthView'              => 'Month View',
       'YearView'               => 'year View',
       

       'SetupYourCalendar'     => 'Setup Your Calendar', # title       
       'YourCalendarName'       => 'Your Calendar Name',
       'YourEmailAddress'       => 'Your Email Address',
       'YourName'               => 'Your Name',
       'Password'               => 'Password',
       'RetypePassword'         => 'Retype password',
       'CalendarType'           => 'Calendar Type',
       'Public'                 => 'Public',
       'Private'                => 'Private',
       'ForPrivateCalendar'     => 'For Private Calendars',
       'OthersSeeTextTime'      => 'Others See Text and Time',
       'OthersSeeTitle'         => 'Others See Event Title',
       'OthersSeeTimeOnly'      => 'Others See Time Only',
       'OthersSeeNothing'       => 'Others See Nothing',
       'PublicCalendar'         => 'Public Calendar',
       'Submit'                 => 'Submit',
       'Cancel'                 => 'Cancel',
       'TheName'                => 'The name',
       'HasBeenTaken'           => 'has already been taken',
       'PasswordMismatch'       => 'password mismatch',
       'TryAgain'               => 'please try again',
       'EmailIncomplete'        => 'Email address is incomplete',
       'CannotCreateCalendar'   => 'Could not create your calendar. You calendar name must be a valid word',
       'CannotWriteInfoFile'    => 'Could not write to info file',
       'CannotWriteDataFile'    => 'Could not write to data file',
       'CannotWritePasswordFile'=> 'could not modify password file',
       'Congratulations'        => 'Congratulations',
       'SetupGreetingA'         => 'Your calendar has now been set up.  Please bookmark your calendar at',
       'SetupGreetingB'         => 'Please remember your password. You need it to access your calendar',
       'HaveToSupplyCalendarName' => 'You have to supply a name for your calendar',
       'PleaseDoNotUseYourUnixAccountPassword' => 'Please do not use your unix account password',
       
       
       # Event Editor Messages
       'EventEditor'            => 'Event Editor',
       'AppointmentEditor'      => 'Appointment Editor',
       'ToDoEditor'             => 'ToDo Editor',
       'MeetingEditor'          => 'Meeting Editor',
       'SpecialEditor'          => 'Special Event Editor',
       'AuthRequired'           => 'Note, authentication is required to edit this calendar',
       'CurrentEvents'          => 'Current Events',
       'Time'                   => 'Time',
       'What'                   => 'What',
       'Date'                   => 'Date',
       'Start'                  => 'Start',
       'End'                    => 'End',
       'Details'                => 'Details',
       'Colors'                 => 'Colors',
       'Privacy'                => 'Privacy',         
       'Frequency'              => 'Frequency',
       'Reminders'              => 'Reminders',
       'Mail'                   => 'Mail',
       'min'                    => 'min', # abbreviation of minute
       'mins'                   => 'minutes',
       'hours'                  => 'hours',
       'days'                   => 'days',
       'weeks'                  => 'weeks',
       'Occurs'                 => 'Occurs',
       'For'                    => 'For',
       'times'                  => 'times',   # as in repeat for 10 times 
       'Popup'                  => 'Popup',
       'Author'                 => 'Author',
       'Blink'                  => 'Blink',
       'Chime'                  => 'Chime',
       'Insert'                 => 'Insert',
       'InsertAsNew'            => 'Insert As New Entry',
       'Modify'                 => 'Modify',
       'DeleteThisOne'          => 'Delete This Occurence',
       'DeleteAll'              => 'Delete All Occurences',
       'Delete'                 => 'Delete',
       'Due'                    => 'Due', # as in Due Date
       'TaskDone'               => 'Task has been Completed',
       'RemindForward'          => 'Remind Forward',
       'Yes'                    => 'Yes',
       'No'                     => 'No',
       'Y'                      => 'Y', # abbrieviation of Yes
       'N'                      => 'N', # abbrieviation of No
       'ToDo'                   => 'ToDo',
       'Participants'           => 'Invitee',
       'none'                   => 'none',
       'MailToAll'              => 'Mail to all',
       'FindConflict'           => 'Find Conflict',
       'NoTimeEvent'            => 'No Time Event',
       'Fg'                     => 'Fg',
       'Bg'                     => 'Bg',
       'Error'                  => 'Error',
       'HasError'               => 'There is an error processing your request',
       'ListParticipants'       => 'List meeting groups or calendar names or full email addresses of participants.Their calendars will be updated',
       'ConflictTable'          => 'Conflict Table',
       'Conflict'               => 'Conflict',         
       'Table'                  => 'Table',         
       'You'                    => 'You',
       'NotAllowedToModify'     => 'are not allowed to modify this entry',
       'NotAllowedToEdit'       => 'are not allowed to edit this calendar',
       'Warning'                => 'Warning',
       'NoRemindForward'        => 'Cannot do remind forward for repeating to do tasks',
       'Acknowledgement'        => 'Acknowledgement',
       'UpdatedOK'              => 'Calendar updated succesfully',
       'BackToCalendar'         => 'Click here to go back to your calendar',
       'OpenFailed'             => 'Could not open your calendar',
       'NoCalendar'             => 'You do not seem to have a calendar on file',
       
       # goto page
       'Goto_Date'              => 'Goto Date', #title
       'Goto'                   => 'Goto',
       'SelectDate'             => 'Please Select a Date',
       'View'                   => 'View',
       'Go'                     => 'Go', # function as submit
       'Set'                    => 'Set', # as in set options
       
       # set options page
       'My_day_starts_at'       => 'My day starts at',
       'ends_at'                => 'ends at',
       'Interval'               => 'Interval',
       'Week_starts_on',        => 'Week of ',
       'include_weekend',       => 'include weekend',
       'Date_Format'            => 'Date Format',
       'Time_Format'            => 'Time Format',
       'Time_zone'              => 'Time zone',
       'Default_view'           => 'Default view',
       'Default_Reminders'      => 'Default Reminders',
       'ListEditors'            => 'List the users who are allowed to edit your calendar',
       'Editors'                => 'Editors',
       'Email'                  => 'Email',
       'Default'                => 'Default',
       'Homepage'               => 'Homepage',
       'Language'               => 'Language',
       
       # admin page
       'Administration'         => 'Administration',
       'adminDisabled'          => 'Calendar administration is disabled for public calendars',
       'Change_Password'        => 'Change Password',
       'Old_Password'           => 'Old Password',
       'New_Password'           => 'New Password',
       'New_Password_Again'     => 'Reenter New Password',
       'Create_Meeting_Group'   => 'Create Meeting Group',
       'to_be_used_by_meeting_editor' => 'to be used by meeting editor',
       'Existing_Groups'        => 'Existing Groups',
       'Group_Name'             => 'Group Name',
       'ListGroupMembers'       => 'Enter calendar name or email address of participants',
       'Merge_Calendars'        => 'Merge Calendars',
       'CalendarNames'          => 'Calendar names',
       'EraseCalendar'          => 'Erase my calendar',
       'DeleteCalendar'         => 'Delete my calendar',
       'errorPerm'              => 'Permission denied',
       'calDeleted'             => 'Your calendar has been deleted',
       'ThankYou4Using'         => 'Thank you for using',
       'calErased'              => 'Your calendar has been erased',
       'eraseFailed'            => 'Could not erase your calendar',
       'cpasswordWrong'         => 'Auth error: password incorrect',
       'ipasserror'             => 'Could not open password file, please try again later',
       'password_changed'       => 'Your password has been changed',
       'cannot_open'            => 'Could not open',
       'Meeting_group'          => 'Meeting group',
       'updated'                => 'updated successfully',
       'new_entries'            => 'new entries added to your calendar',
       'Unknown_command'        => 'Unknown command',
       
       
       # search page
       'Search_Calendar'        => 'Search Calendar',
       'Topic'                  => 'Topic',
       'SearchAll'              => 'Search All',
       'Search_From'            => 'Search From',
       'To'                     => 'To',
       'Search_Results'         => 'Search Results',
       'CalendarReminder'       => 'Calendar Reminder',
         
       # Greeting
       'WelcomeToWebCalendar'   => 'Welcome To WebCalendar',
       'PleaseSelectACalendar'  => 'Please select a calendar',
       'PleaseEnterCalendarName'=> 'Please enter your calendar name',

       #download
       'notAllowedToDownload'   => 'You are not allowed to download this calendar',
         
       #logout
       'AuthNotRequired'        => 'Note: authentication is not required for viewing public calendars',
       'logoutInstruction'      => 'To logout, click the logout button, When the login dialogue appears,<br> login as nobody. No password is needed.',
       'loginInstruction'       => 'To login again as another user, click on the login button',
       'You_ve_logout'          => 'You have logged off',
       'access_denied'          => 'access denied',
       'login'                  => 'login',

       #compare
       'CompareCalendars'       => 'Compare Calendars',
       'Enter_calendar_names'   => 'Enter calendar names',
       'or_meeting_group'       => 'or meeting group',
       'EventsTable'            => 'Events Table',
       'Name'                   => 'Name',
       'Events'                 => 'Events',
       'ForegroundColor'        => 'Foreground Color',
       'BackgroundColor'        => 'Background Color',

       # msg in the main
       'accessAnotherCal'        => 'To access another calendar, please',


       # Some missing phrases and addons ...
       'Close'                  => 'Close',
       'ShowCombinedCalendar'   => 'Show Combined Calendar',
       'CombinedCalendar'       => 'Combined Calendar',
       'Participants_are_allowed_to' => "Participants are allowed to",
       'View_only'              => 'View Only',
       'Edit'                   => 'Edit',
       'EditAndDelete'          => 'Edit and Delete',
       'Updated_calendars'      => 'The following calendars are also updated',
       'NotAllowedToUpdate'     => 'You are NOT allowed to update the following calendars',
       'invalid_date'           => 'Invalid date',
       'Schedule'               => 'Schedule',            # as in 'schedule an appointment on calendar mzou
       'onCalendar'             => 'on calendar',          #
       'DeleteForward'          => 'Delete Forward Occurences',
       'All'                    => 'All',
       'SearchSubjectEmpty'	=> 'Search subject cannot be empty',
       'Start_date'             => 'Start date',
       'is_after_due_date'      => 'is after due date',
       'Invalidusername'	=> 'Invalid username',
       'Protected'		=> '==protected==',
       'Invalidcalendarname'	=> 'Invalid calendar name',
       'Couldnotfindcalendar' => 'Could not find calendar',
       'Invalidspooldir'      => 'Invalid spooldir',
       'ListView'             => 'List View',
       'BlockView'            => 'Block View',

       # address book stuff
       'AddressBook'           => 'Address Book',
       'AddressBookEditor'     => 'Address Book Editor',
       'AddressBookUpdated'    => 'Address Book updated',
       'BackToAddressBook'     => 'Click here to go back to your address book',
       'FirstName'             => 'First Name',
       'LastName'              => 'Last Name',
       'Address'               => 'Address',
       'Phone'                 => 'Phone',
       'Fax'                   => 'Fax',
       'Info'                  => 'Info',
       'Affiliation'           => 'Affiliation',
       'Where'                 => 'Where',
       'Priority'              => 'Priority',
       'Diary'                 => 'Diary',
       'DiaryUpdated'          => 'Diary Updated',
       'ReadDiary'             => 'Read Diary',       
       'From'                  => 'From',
       'PlainText'             => 'Plain Text',
       'Html'                  => 'Html',
       'SearchDiary'           => 'Search Diary',
       'SearchFor'             => 'Search for',
       'NeedAuth2Proceed'      => 'Authentication is needed to view or edit. Please click the \'login\' button to proceed, or click on the calendar button to go back to your calendar.',

       # Priority of ToDo tasks
       'Urgent'                => 'Urgent',
       'High'                  => 'High',
       'Medium'                => 'Medium',
       'Low'                   => 'Low',       

       # find calendar names
       'FindCalNames'          => 'Find Calendars',

       # overlapping 
       'AllowOverlap'          => 'Allow Overlapping Events',
       'GoBack'                => 'Go Back',  #

       'OverlapInstr'          => 'This event is rejected because it overlaps with one or more existing events in the calendar (see table).
If you really want to insert it into your calendar, go back, check <b>\'Y\'</b> to the <b>\'Allow Overlapping Events\'</b> button and
try again.',

       'signup'                 => 'Sign Up',
       'Invalidpassword'	=> 'Incorrect password',
       'olduserInstruction'     => 'I have a calendar on file',
       'newuserInstruction'     => 'I am a new user',
       'PleaseLogin'            => 'Authentication is required. Please login first!',
       'NextNew'		=> 'Next New Event',
       'RememberIDPswd'         => 'Remember my username and password (so I don\'t have to type them in again)',
       'global'                 => 'Global', # mark global meeting group
       'groupnametaken'         => 'Meeting group name has been taken, please choose another name',
       'deleteEventsBefore'     => 'Delete all events before',
       'AutoStart'              => 'Autostart WebCalendar',
       'Readers'                => 'Readers',
       'ListReaders'            => 'List the users who are allowed to read your calendar',
       'Print'			=> 'Print',
       'mailVcal'		=> 'Attach VCALENDAR in mail reminders',
       'FriendsEmail'		=> 'Friend\'s Email Address',
       'PersonalMessage'	=> 'Add a Personal Message',
       'Mail2Friend'		=> 'Email this Event to a Friend',
       'MailSentTo'		=> 'Calendar Entry has been sent to ',
       'Location'               => 'Location',
       # the next line is used in a confirmation popup when a user is modifying 
       # an repeating event. The date displayed is the current date, normally 
       # it is not the initial starting date of the event.
       'CalendarFormat'			=> 'Calendar Format',
       'CalendarFile'			=> 'Calendar File',
       'SetupGreetingC'         => 'Please visit the calendar option page below to complete your calendar setup.',
       'Email2Selected'		=> 'Email to all selected address',
       'AddNewEmail'		=> 'Add new email address to my address book',
       'ContactP'		=> 'Contact Person',
       'ContactE'		=> 'Contact Email',
       'DailyReminder'		=> 'Send me daily reminders',
       'CompletedTasks'		=> 'Completed Tasks',
       'PendingTasks'		=> 'Pending Tasks',
       'Import2Cal'		=> 'Import this event to calendar',
       'ViewOnly'		=> 'Or choose a calendar to view',
       'newLogin'		=> 'Or login as another user', 
       'QuickAdd'		=> 'QuickAdd',
       'Event'                  => 'Event',
       'TodoList'               => 'ToDo List',
       'MarkComplete'		=> 'Mark checked as complete',
       'DeleteChecked'		=> 'Delete checked',
       'AddNewTask'             => 'Add New Task',
       'TaskManager'            => 'Task Manager',
       'WarnInvitee'		=> 'Are you sure you want to insert this event to the following calendars?',
       'creationDisabled'	=> 'Sorry, calendar setup is disabled by your system administrator. You\'ll have to
ask your system administrator to create a calendar for you.',
       'RequestRSVP'            => 'Request RSVP',
       'invitationAccepted'     => 'Accepted',
       'invitationDeclined'     => 'Declined',
       'AttendanceConfirmation' => 'Meeting Attendance Confirmation',
       'AcceptInvitation'         => 'Accept Invitation',
       'DeclineInvitation'      => 'Decline Invitation',
       'Undecided'		=> 'Undecided',
       'Category'		=> 'Category',
       'Speaker'		=> 'Speaker',
       'Header'			=> 'Header',
       'Footer'			=> 'Footer',
       'HeaderFooter'		=> 'Enter header/footer HTML code for a customized header',
       'MiscInfo'		=> 'Misc. Info',
       'Description'		=> 'Description',
       'AllDay'			=> 'All Day',
       'Tomorrow'		=> 'Tomorrow',
       'ThisWeek'		=> 'This Week',
       'ThisMonth'		=> 'This Month',
       'Keyword'		=> 'Keyword',
       'NoEvents'		=> 'No Events',
       'EditThis'		=> 'Edit This Event',
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

       'City'                  => 'City',
       'State'                 => 'State',
       'Zip'                   => 'Zip',
       'Country'               => 'Country',


       'ResetPasswd'           => 'Reset User Password',
       'File'                  => 'File',
       'AlreadyOnCalendar'     => 'The following entries are already on your calendar.',
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
       'Contacts'	   => 'Contacts',
       'Tasks'		   => 'Tasks',
       'Day'		   => 'Day',
       'Week'		   => 'Week',
       'Month'		   => 'Month',
       'Year'		   => 'Year',
       'OffDutyHours'	   => 'Off Duty Hours',
       'AddNewAddress'	   => 'Add new address',
       'HeaderColor'	   => 'Header Color',
       'Never'		   => 'Never',
       'OverlapNotAllowed' => 'Unfortunately, overlap events is not allowed on the following calendars.',
       'Notes'		   => 'Notes',
       'PostIt'		   => 'PostIt',   # as in post it notes
       'Title'		   => 'Title',
       'AddNewNote'	   => 'Add A New Note',
       
       'InterestedCalendars' => 'List all calendars that you will probably read or edit.', 
       'CalendarListInstruction' => 'If you don\'t want to see the long list of calendars in the calendar selection menu, you can
create a short list here.  Just enter the name of the calendars you want to see in the entry box above, or select them from
the multiple list on the left. The selected short list will be used in all places where calendar list is displayed.',

       'MasterHeadInput'  => 'In the masterhead, input calendar selection using a',
       'TextEntry'	  => 'Text entry',
       'PulldownMenu'     => 'Pulldown menu',

       'LockWarning'      => 'Your calendar was modified while I was processing your request. For data integrity, your 
submission is rejected. Please go back and try again.',

       'IUpload'	  => 'Image Upload', 
       'FUpload'	  => 'File Upload',        
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

	'CheckAll'     => 'Check All',
	'UncheckAll'   => 'Uncheck All',
        'Export2VCard' => 'Export your address book to vCard',
	'ImportVcard'  => 'Import contact information from vcard',
        'ImportVCardTitle'  => 'Import from a vCard File on Your Computer',
        'ImportVcardInstruction' => 'Or cut and paste your vcard entry in the textarea and click on the submit button',
        'ImportVcardFileInstruction'   => 'To import from a vCard file on your computer, enter the full pathname of
the Vcard file in the entry box and click the submit button. If you are unsure about the pathname, click on the browse button and navigate to your file.',
        'AlreadyInAddressbook' => 'The following entries are already in your addressbook.',
	
	'DpyETimeAs' => 'Display Event Time As',
	'MasterheadTabs' => 'Masterhead Tabs',

 	'DeferConfirmation'     => 'Defer Confirmation',
	'Unconfirmed'           => 'Unconfirmed',     # unconfirmed invitation

	'SendMailUsing'         => 'Send mail using', #	html, txt or vcal
         # used as in
         # send mail <> immediately or <> <hours> before event
        'Sendmail'              => 'Send mail',
        'immediately'           => 'immediately',
        'or'                    => 'or',
        'beforeEvent',          => 'before event',
        'Cancelled'             => 'Cancelled',

        'AddNewEntry'		=> 'Add A New Entry',
	'SearchNotes'		=> 'Search Notes',
	'SearchAddress'		=> 'Search Addressbook',

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

	'DetailedView'		=> 'Detailed View',
        'CombinedView'		=> 'Combined View',
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

	'Font'        => 'Font',
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
   'StyleSheet'		=> 'Style Sheets',
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










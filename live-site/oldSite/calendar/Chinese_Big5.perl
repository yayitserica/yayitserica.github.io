#
# This is the list of phrases or words used in the UI.
# To port webCal to another language, translate
# this list should be suffice.
# 繁體中文版本(根據英文版本翻譯而成) Ver 0.9
#
# $Header: /home/cvs/webCal/webCal2/Chinese_Big5.perl,v 1.29 2004/10/20 23:35:56 mzou Exp $
#

%::phr=(
       # specify character encoding.
       'CHARSET'		=> 'big5',

       'Calendar'               => '行事曆',
       
       # Name of weekdays
       'Sunday'                 => '星期日',
       'Monday'                 => '星期一',
       'Tuesday'                => '星期二',
       'Wednesday'              => '星期三',
       'Thursday'               => '星期四',
       'Friday'                 => '星期五',
       'Saturday'               => '星期六',
       # Name of weekdays, abbreviation
       'Sun'                    => '週日',
       'Mon'                    => '週一',
       'Tue'                    => '週二',
       'Wed'                    => '週三',
       'Thu'                    => '週四',
       'Fri'                    => '週五',
       'Sat'                    => '週六',
       # Name of weekdays, abbreviated even more
       'Su'                     => 'Su',
       'Mo'                     => 'Mo',
       'Tu'                     => 'Tu',
       'We'                     => 'We',
       'Th'                     => 'Th',
       'Fr'                     => 'Fr',
       'Sa'                     => 'Sa',
       
       # Month Names  
       'January'                => '一月', 
       'February'               => '二月',
       'March'                  => '三月',   
       'April'                  => '四月',   
       'May_'                   => '五月',     #! the full month of May, to distingsh with the abbreviation
       'June'                   => '六月',    
       'July'                   => '七月',    
       'August'                 => '八月',
       'September'              => '九月',
       'October'                => '十月',
       'November'               => '十一月',
       'December'               => '十二月',
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
       'OneTime'                => '僅一次',                   # one time event
       'Daily'                  => '每日',                      
       'Weekly'                 => '每週',
       'Every2Weeks'            => '每兩週',
       'MonthlyByDate'          => '每月某日',
       'MonthlyByWeekday'       => '每月某週',         # e.g. the 3rd Friday of every month
       'Yearly'                 => '每年',
       'MTWThF'                 => '一～五',
       'MWF'                    => '一 三 五',
       'TTh'                    => '二 四',
       'YearlyByMonthWeekday'   => '每年某月某週',    # e.g. the first Monday of June, yearly
       'EveryOtherDay'          => '每隔一天',
       'Every3rdDay'            => '每隔三天',
       'Every4thDay'            => '每隔四天',
       'Every5thDay'            => '每隔五天',
       'Every6thDay'            => '每隔六天',

       # event types
       'Appointment'            => '約會',
       'Todo'                   => '待辦事項',
       'Meeting'                => '會議',
       'Special'                => '特殊事件',            # for holidays, event require no specific time

       # option button names
       'CalendarOptions'        => '行事曆設定',   # title of the options page
       'Compare'                => '比對',            # Button: compare calendars and find conflicts ...
       'Search'                 => '搜尋',             # Button:
       'GotoDate'               => '跳到某',           # Button:
       'Previous'               => '前一',           # previous Month/Day/Week 
       'Today'                  => '本',              # This Month/Day/Week 
       'Next'                   => '下一',               # next Month/Day/Week 
       'Options'                => '選項',            # Button: go to options page 
       'Admin'                  => '管理',              # Button: go to admin page
       'Logout'                 => '登出',             # Button: go to logout page
       'DayView'                => '日檢視',           # Alt name under the image buttons
       'WeekView'               => '週檢視',
       'MonthView'              => '月檢視',
       'YearView'               => '年檢視',
       
       
       # messages on the setup screen
       'SetupYourCalendar'      => '設定您的行事曆', # title
       'YourCalendarName'       => '您的ID',
       'YourEmailAddress'       => '您的E-Mail位址',
       'YourName'               => '您的行事曆名稱',
       'Password'               => '密碼',
       'RetypePassword'         => '再輸入一次(密封)',
       'CalendarType'           => '行事曆型式',
       'Public'                 => '公開的',
       'Private'                => '私人的',
       'ForPrivateCalendar'     => '私人行事曆設定',
       'OthersSeeTextTime'      => '其他人可以看見時間與內容',
       'OthersSeeTitle'         => 'Others See Event Title',
       'OthersSeeTimeOnly'      => '其他人只能看見時間',
       'OthersSeeNothing'       => '其他人什麼都看不到',
       'PublicCalendar'         => '公開行事曆',
       'Submit'                 => '送出',
       'Cancel'                 => '取消',
       'TheName'                => '您的ID',
       'HasBeenTaken'           => '已經被使用了～',
       'PasswordMismatch'       => '密碼兩次輸入不一致',
       'TryAgain'               => '請再試一次',
       'EmailIncomplete'        => 'Email位址沒輸入完整',
       'CannotCreateCalendar'   => '無法建立您的行事曆,您的行事曆ID必須是英文或數字',
       'CannotWriteInfoFile'    => '無法寫入資訊檔',
       'CannotWriteDataFile'    => '無法寫入資料檔',
       'CannotWritePasswordFile'=> '無法改變密碼檔',
       'Congratulations'        => '恭喜您～',
       'SetupGreetingA'         => '您的個人行事曆已經設定好了～ 請把這位址加入您的書籤',
       'SetupGreetingB'         => '請記住您的密碼,您需要它來進入您的個人行事曆',
       'HaveToSupplyCalendarName' => '您必須為您的行事曆取個名字',
       'PleaseDoNotUseYourUnixAccountPassword' => '請不要使用您UNIX的帳號和密碼喔～',
       
       
       # Event Editor Messages
       'EventEditor'            => '事件編輯器',
       'AppointmentEditor'      => '約會編輯器',
       'ToDoEditor'             => '待辦事項編輯器',
       'MeetingEditor'          => '會議編輯器',
       'SpecialEditor'          => '特殊事件編輯器',
       'AuthRequired'           => '注意! 編輯這個行事曆必須先通過認證',
       'CurrentEvents'          => '目前事件',
       'Time'                   => '時間',
       'What'                   => '事情',
       'Date'                   => '日期',
       'Start'                  => '開始',
       'End'                    => '結束',
       'Details'                => '內容',
       'Colors'                 => '顏色',
       'Privacy'                => '隱私',         
       'Frequency'              => '頻率',
       'Reminders'              => '提醒',
       'Mail'                   => '郵件',
       'min'                    => '分', # abbreviation of minute
       'mins'                   => '分鐘',
       'hours'                  => '小時',
       'days'                   => '天',
       'weeks'                  => '週',
       'Occurs'                 => '發生數',
       'For'                    => '為',
       'times'                  => '次數',   # as in repeat for 10 times 
       'Popup'                  => '蹦出',
       'Author'                 => '作者',
       'Blink'                  => '閃爍',
       'Chime'                  => 'Chime',
       'Insert'                 => '插入',
       'InsertAsNew'            => '插入新事件',
       'Modify'                 => '變更',
       'DeleteThisOne'          => '刪除這個事件',
       'DeleteAll'              => '刪除所有事件',
       'Delete'                 => '刪除',
       'Due'                    => '到期', # as in Due Date
       'TaskDone'               => '工作已經完成',
       'RemindForward'          => '繼續提醒',
       'Yes'                    => '確定',
       'No'                     => '取消',
       'Y'                      => '是', # abbrieviation of Yes
       'N'                      => '否', # abbrieviation of No
       'ToDo'                   => '待辦事項',
       'Participants'           => '被邀者',
       'none'                   => '無',
       'MailToAll'              => '發郵件給所有人',
       'FindConflict'           => '尋找衝突',
       'NoTimeEvent'            => 'No Time Event',
       'Fg'                     => '前景',
       'Bg'                     => '背景',
       'Error'                  => '錯誤',
       'HasError'               => '在處理您的請求過程中發生一個錯誤',
       'ListParticipants'       => '列出被邀請人的所參加的會議群組或是行事曆ID或是完整E-Mail位址.他們的行事曆將同步被更新',
       'ConflictTable'          => '衝突表',
       'Conflict'               => '衝突',         
       'Table'                  => '表',         
       'You'                    => '您',
       'NotAllowedToModify'     => '不被允許變更此事件',
       'NotAllowedToEdit'       => '不被允許編輯此行事曆',
       'Warning'                => '警告',
       'NoRemindForward'        => '無法為重覆的待辦事項繼續提醒',
       'Acknowledgement'        => '瞭解',
       'UpdatedOK'              => '行事曆成功的被更新',
       'BackToCalendar'         => '請按此回到您的行事曆',
       'OpenFailed'             => '無法開啟您的行事曆',
       'NoCalendar'             => '您似乎沒有已建立的行事曆',
       
       # goto page
       'Goto_Date'              => '跳至某日', #title
       'Goto'                   => '跳至',
       'SelectDate'             => '請選擇日期',
       'View'                   => '觀看',
       'Go'                     => 'Go', # function as submit
       'Set'                    => '設定', # as in set options
       
       # set options page
       'My_day_starts_at'       => '我的工作日始於',
       'ends_at'                => '結束在',
       'Interval'               => '間隔',
       'Week_starts_on',        => 'Week of ',
       'include_weekend',       => '包含週末',
       'Date_Format'            => '日期格式',
       'Time_Format'            => '時間格式',
       'Time_zone'              => '時區',
       'Default_view'           => '預設檢視',
       'Default_Reminders'      => '預設提醒',
       'ListEditors'            => '列出允許編輯您行事曆的使用者',
       'Editors'                => '編輯者',
       'Email'                  => 'Email',
       'Default'                => '預設值',
       'Homepage'               => '個人網頁',
       'Language'               => '語言',
       
       # admin page
       'Administration'         => '管理',
       'adminDisabled'          => '公開行事曆管理功能已經被關閉',
       'Change_Password'        => '變更密碼',
       'Old_Password'           => '原始密碼',
       'New_Password'           => '新密碼',
       'New_Password_Again'     => '再輸入一次新密碼',
       'to_be_used_by_meeting_editor' => '會議群組編輯者專用',
       'Existing_Groups'        => '退出群組',
       'Group_Name'             => '群組名稱',
       'ListGroupMembers'       => '輸入參與者的行事曆ID或是E-Mail位址',
       'Merge_Calendars'        => '合併行事曆',
       'CalendarNames'          => '行事曆ID',
       'EraseCalendar'          => '清空我的行事曆',
       'DeleteCalendar'         => '刪除我的行事曆',
       'errorPerm'              => 'Permission denied',
       'calDeleted'             => '您的行事曆已經被刪除',
       'ThankYou4Using'         => '感謝您的使用',
       'calErased'              => '您的行事曆已經被清空',
       'eraseFailed'            => '無法清空您的行事曆',
       'cpasswordWrong'         => '認證失敗: 密碼錯誤',
       'ipasserror'             => '無法打開密碼檔,請稍後再試',
       'password_changed'       => '您的密碼已經成功的被變更',
       'cannot_open'            => '無法開啟',
       'Meeting_group'          => '會議群組',
       'updated'                => '已經成功更新',
       'new_entries'            => '新事件已經加入您的行事曆',
       'Unknown_command'        => '無法識別的指令',
       
       # search page
       'Search_Calendar'        => '搜尋行事曆',
       'Topic'                  => '標題',
       'SearchAll'              => '搜尋全部',
       'Search_From'            => '搜尋 從',
       'To'                     => '到',
       'Search_Results'         => '搜尋結果',
       'CalendarReminder'       => '行事曆提醒器',
         
       # Greeting
       'WelcomeToWebCalendar'   => '歡迎來到Web行事曆',
       'PleaseSelectACalendar'  => '請選擇一個行事曆',
       'PleaseEnterCalendarName'=> '請輸入您的ID',

       #download
       'notAllowedToDownload'   => '您不被允許下載這個行事曆',
         
       #logout
       'AuthNotRequired'        => '注意: 觀看公開的行事曆將不會要求要通過身份確認',
       'logoutInstruction'      => '要登出,請按登出的按鈕,當登入訊息出現,以nobody登入將不需要密碼.',
       'loginInstruction'       => '要用其他使用者身份登入,請按登入的按鈕',
       'You_ve_logout'          => '您已經登出',
       'access_denied'          => 'access denied',
       'login'                  => '登入',

       #compare
       'CompareCalendars'       => '比較行事曆',
       'Enter_calendar_names'   => '輸入行事曆ID',
       'or_meeting_group'       => '或是會議群組',
       'EventsTable'            => '事件表',
       'Name'                   => '名稱',
       'Events'                 => '事件',
       'ForegroundColor'        => '前景顏色',
       'BackgroundColor'        => '背景顏色',

       # msg in the main
       'accessAnotherCal'        => '要存取其他行事曆,請',

       # Some missing phrases and addons ...
       'Close'                  => '關閉',
       'ShowCombinedCalendar'   => '顯示合併的行事曆',
       'CombinedCalendar'       => '合併行事曆',
       'Participants_are_allowed_to' => "參與者只能",
       'View_only'              => '觀看',
       'Edit'                   => '編輯',
       'EditAndDelete'          => '編輯與刪除',
       'Updated_calendars'      => '以下的行事曆將會一併更新',
       'NotAllowedToUpdate'     => '您不被允許更新以下的行事曆',
       'invalid_date'           => '不正確的日期',
       'Schedule'               => '計劃',            # as in 'schedule an appointment on calendar mzou
       'onCalendar'             => 'on Calendar',          #
       'DeleteForward'          => '刪除前面的事件',
       'All'                    => '全部',
       'SearchSubjectEmpty'	=> '搜尋主題不能為空白',
       'Start_date'             => '開始日期',
       'is_after_due_date'      => '在結束日期之後',
       'Invalidusername'	=> '不正確的使用者名稱',
       'Protected'		=> '==受保護==',
       'Invalidcalendarname'	=> '不正確的行事曆ID',
       'Couldnotfindcalendar' => '找不到行事曆',
       'Invalidspooldir'      => 'Invalid spooldir',
       'ListView'             => 'List View',
       'BlockView'            => 'Block View',

       # address book stuff
       'AddressBook'           => '通訊錄',
       'AddressBookEditor'     => '通訊錄編輯器',
       'AddressBookUpdated'    => '通訊錄已更新',
       'BackToAddressBook'     => '請按此回到您的通訊錄頁面',
       'FirstName'             => '名',
       'LastName'              => '姓',
       'Address'               => '地址',
       'Phone'                 => '電話',
       'Fax'                   => '傳真',
       'Info'                  => 'Info',
       'Affiliation'           => '附屬在',
       'Where'                 => 'Where',
       'Priority'              => '優先權',
       'Diary'                 => '日記',
       'DiaryUpdated'          => '日記已更新',
       'ReadDiary'             => '閱讀日記',       
       'From'                  => 'From',
       'PlainText'             => '純文字',
       'Html'                  => 'Html',
       'SearchDiary'           => '搜尋日記',
       'SearchFor'             => 'Search for',
       'NeedAuth2Proceed'      => '觀看和編輯需要通過認證.請按 \'登入\' 按順}始,或按行事曆按鈕來回到您的行事曆.',

       # Priority of ToDo tasks
       'Urgent'                => '緊急',
       'High'                  => '高',
       'Medium'                => '中',
       'Low'                   => '低',       

       # find calendar names
       'FindCalNames'          => '尋找行事曆',

       # overlapping 
       'AllowOverlap'          => '允許事件重疊',
       'GoBack'                => 'Go Back',  #

       'OverlapInstr'          => 'This event is rejected because it overlaps with one or more existing events in the calendar (see table).
If you really want to insert it into your calendar, go back, check <b>\'Y\'</b> to the <b>\'Allow Overlapping Events\'</b> button and
try again.',

       'signup'                 => '註冊!',
       'Invalidpassword'	=> '錯誤密碼',
       'olduserInstruction'     => '我已經登錄一個行事曆',
       'newuserInstruction'     => '我是新使用者',
       'PleaseLogin'            => '進入前需要通過認證,煩請先登入!',
       'NextNew'		=> '下一個新事件',
       'RememberIDPswd'         => '記住我的使用者名稱與密碼 (下次不必再輸入)',
       'global'                 => 'Global', # mark global meeting group
       'groupnametaken'         => 'Meeting group name has been taken, please choose another name',
       'deleteEventsBefore'     => 'Delete all events before',
       'AutoStart'              => 'Autostart WebCalendar',
       'Readers'                => 'Readers',
       'ListReaders'            => '列出允許閱讀您行事曆的使用者',
       'Print'			=> '列印',
       'mailVcal'		=> 'Attach VCALENDAR in mail reminders',
       'FriendsEmail'		=> 'Friend\'s Email Address',
       'PersonalMessage'	=> 'Add a Personal Message',
       'Mail2Friend'		=> '將此事件Email給朋友',
       'MailSentTo'		=> 'Calendar Entry was Sent to ',
       'Location'               => 'Location',
       # the next line is used in a confirmation popup when a user is modifying 
       # an repeating event. The date displayed is the current date, normally 
       # it is not the initial starting date of the event.
       'CalendarFormat'			=> '行事曆格式',
       'CalendarFile'			=> 'Calendar File',
       'SetupGreetingC'         => '請到行事曆設定頁面來完成您行事曆的設定.',
       'Email2Selected'		=> 'Email給所有被選擇的位址',
       'AddNewEmail'		=> '加入新的E-Mail位址到我的通訊錄',
       'ContactP'		=> '聯絡人',
       'ContactE'		=> '聯絡E-Mail',
       'DailyReminder'		=> '寄送每日提醒郵件',
       'CompletedTasks'		=> '已完成工作',
       'PendingTasks'		=> '未完成工作',
       'Import2Cal'		=> '將此事件匯入行事曆',
       'ViewOnly'		=> '或是選擇另一個行事曆觀看',
       'newLogin'		=> '或是用另外一個使用者身份登入', 
       'QuickAdd'		=> '快速加入',
       'Event'                  => '事件',
       'TodoList'               => '待辦事項列表',
       'MarkComplete'		=> '將打勾的事件標示為已完成',
       'DeleteChecked'		=> '將打勾的刪除',
       'AddNewTask'             => '加入新工作',
       'TaskManager'            => '工作管理員',
       'WarnInvitee'		=> '您確定要加入這個事件到以下的行事曆中嘛?',
       'creationDisabled'	=> 'Sorry, calendar setup is disabled by your system administrator. You\'ll have to
ask your system administrator to create a calendar for you.',
       'RequestRSVP'            => 'Request RSVP',
       'invitationAccepted'     => '邀請接受',
       'invitationDeclined'     => '邀請拒絕',
       'AttendanceConfirmation' => '確認會議參與人',
       'AcceptInvitation'         => '接受邀請',
       'DeclineInvitation'      => '拒絕邀請',
       'Undecided'		=> '尚未決定',
       'Category'		=> '分類',
       'Speaker'		=> '發言人',
       'Header'			=> '頁首',
       'Footer'			=> '頁尾',
       'HeaderFooter'		=> 'Enter header/footer HTML code for a customized header',
       'MiscInfo'		=> '其他訊息',
       'Description'		=> '描述',
       'AllDay'			=> '全天',
       'Tomorrow'		=> '明天',
       'ThisWeek'		=> '本週',
       'ThisMonth'		=> '本月',
       'Keyword'		=> '關鍵字',
       'NoEvents'		=> '沒有事件',
       'EditThis'		=> '編輯此事件',
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

       'City'                  => '城市',
       'State'                 => '洲',
       'Zip'                   => '郵遞區號',
       'Country'               => '國家',


       'ResetPasswd'           => '重設使用者密碼',
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
       'Contacts'	   => '連絡人',
       'Tasks'		   => '工作',
       'Day'		   => 'Day',
       'Week'		   => 'Week',
       'Month'		   => 'Month',
       'Year'		   => 'Year',
       'OffDutyHours'	   => 'Off Duty Hours',
       'AddNewAddress'	   => '加入新連絡人',
       'HeaderColor'	   => 'Header Color',
       'Never'		   => '從不',
       'OverlapNotAllowed' => 'Unfortunately, overlap events is not allowed on the following calendars.',
       'Notes'		   => '備忘錄',
       'PostIt'		   => '貼上!',   # as in post it notes
       'Title'		   => '標題',
       'AddNewNote'	   => '加入新備忘',
       
       'InterestedCalendars' => '列出所有您可能會閱讀或編輯的行事曆.', 
       'CalendarListInstruction' => 'If you don\'t want to see the long list of calendars in the calendar selection menu, you can
create a short list here.  Just enter the name of the calendars you want to see in the entry box above, or select them from
the multiple list on the left. The selected short list will be used in all places where calendar list is displayed.',

       'MasterHeadInput'  => 'In the masterhead, input calendar selection using a',
       'TextEntry'	  => 'Text entry',
       'PulldownMenu'     => 'Pulldown menu',

       'LockWarning'      => 'Your calendar was modified while I was processing your request. For data integrity, your 
submission is rejected. Please go back and try again.',

       'IUpload'	  => '圖片上傳', 
       'FUpload'	  => '檔案上傳',        
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

	'CheckAll'     => '選擇全部',
	'UncheckAll'   => '取消全選',
        'Export2VCard' => '匯出您的通訊錄到vCard',
	'ImportVcard'  => '從vCard匯入您的通訊錄',
        'ImportVCardTitle'  => '從您的電腦上匯入vCard檔案',
        'ImportVcardInstruction' => 'Or cut and paste your vcard entry in the textarea and click on the submit button',
        'ImportVcardFileInstruction'   => 'To import from a vCard file on your computer, enter the full pathname of
the Vcard file in the entry box and click the submit button. If you are unsure about the pathname, click on the browse button and navigate to your file.',
        'AlreadyInAddressbook' => 'The following entries are already in your addressbook.',
	
	'DpyETimeAs' => '顯示事件時間格式為',
	'MasterheadTabs' => 'Masterhead Tabs',

 	'DeferConfirmation'     => '延後確認',
	'Unconfirmed'           => '未確認的',     # unconfirmed invitation

	'SendMailUsing'         => '送出郵件使用..', #	html, txt or vcal
         # used as in
         # send mail <> immediately or <> <hours> before event
        'Sendmail'              => '送出Mail',
        'immediately'           => '馬上',
        'or'                    => '或是',
        'beforeEvent',          => '在事件之前',
        'Cancelled'             => '已經取消',

        'AddNewEntry'		=> '加入一筆新紀錄',
	'SearchNotes'		=> '搜尋備忘錄',
	'SearchAddress'		=> '搜尋通訊錄',

	'Week_begins_on'	=> '每星期始於',
	'StartDate'		=> '開始日期',
	'DueDate'		=> '結束日期',
	'DueTime'		=> '結束時間',
	'Overdue'		=> '過期的',
	'EventDates'		=> '事件日期', 

	'SpecialEvents'		=> '特殊事件',

	'RemindForwardNewTask'  => 'Set Remind Forward on New Tasks',
	'DispCompletedTasks'    => '在行事曆顯示已完成的工作',
	'TaskOptions'		=> '工作選項',
        'DoneOn'		=> 'Done on %s by %s', # used to display completed tasks, like 'Done on 03/19/2002', 

        'DetailedView'		=> '詳細的',
        'CombinedView'		=> '合併的',
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






 




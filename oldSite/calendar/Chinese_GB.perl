# 
# This is the list of phrases or words used in the UI.
# To port webCal to another language, translate
# this list should be suffice.
# 中文简体版本
#
# $Header: /home/cvs/webCal/webCal2/Chinese_GB.perl,v 1.33 2004/10/20 23:35:56 mzou Exp $
#

%::phr=(
       # specify character encoding.
       'CHARSET'		=> 'gb2312',

       'Calendar'               => '日程表',
       
       # Name of weekdays
       'Sunday'                 => '星期天',
       'Monday'                 => '星期一',
       'Tuesday'                => '星期二',
       'Wednesday'              => '星期三',
       'Thursday'               => '星期四',
       'Friday'                 => '星期五',
       'Saturday'               => '星期六',
       # Name of weekdays, abbreviation
       'Sun'                    => '周天',
       'Mon'                    => '周一',
       'Tue'                    => '周二',
       'Wed'                    => '周三',
       'Thu'                    => '周四',
       'Fri'                    => '周五',
       'Sat'                    => '周六',
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
       'Jan'                    => '一月',
       'Feb'                    => '二月',
       'Mar'                    => '三月',
       'Apr'                    => '四月',
       'May'                    => '五月',
       'Jun'                    => '六月',
       'Jul'                    => '七月',
       'Aug'                    => '八月',
       'Sep'                    => '九月',
       'Oct'                    => '十月',
       'Nov'                    => '十一月',
       'Dec'                    => '十二月',

       # repeating rules 
       'OneTime'                => '一次',                   # one time event
       'Daily'                  => '每天',                      
       'Weekly'                 => '每星期',
       'Every2Weeks'            => '每两个月',
       'MonthlyByDate'          => '每月的某天',
       'MonthlyByWeekday'       => '每月的某周末',         # e.g. the 3rd Friday of every month
       'Yearly'                 => '每年',
       'MTWThF'                 => '一至五',
       'MWF'                    => '一、三、五',
       'TTh'                    => 'T Th',
       'YearlyByMonthWeekday'   => '每年某月某周',    # e.g. the first Monday of June, yearly
       'EveryOtherDay'          => '每隔一天',
       'Every3rdDay'            => '每三天',
       'Every4thDay'            => '每四天',
       'Every5thDay'            => '每五天',
       'Every6thDay'            => '每六天',

       # event types
       'Appointment'            => '约定',
       'Todo'                   => '待办事宜',
       'Meeting'                => '会议',
       'Special'                => '特殊事件',            # for holidays, event require no specific time

       # option button names
       'CalendarOptions'        => '日程表安排设定',   # title of the options page
       'Compare'                => '对比',            # Button: compare calendars and find conflicts ...
       'Search'                 => '查找',             # Button:
       'GotoDate'               => '跳到某天',           # Button:
       'Previous'               => '往前',           # previous Month/Day/Week 
       'Today'                  => '今天',              # This Month/Day/Week 
       'Next'                   => '往后',               # next Month/Day/Week 
       'Options'                => '设定',            # Button: go to options page 
       'Admin'                  => '管理',              # Button: go to admin page
       'Logout'                 => '注销',             # Button: go to logout page
       'DayView'                => '日期察看模式',           # Alt name under the image buttons
       'WeekView'               => '周察看模式',
       'MonthView'              => '月察看模式',
       'YearView'               => '年察看模式',
       
       
       # messages on the setup screen
       'SetupYourCalendar'      => '设定你的日历', # title
       'YourCalendarName'       => '你日程表的名称',
       'YourEmailAddress'       => '你的电子邮件',
       'YourName'               => '你的名字',
       'Password'               => '密码',
       'RetypePassword'         => '确认密码',
       'CalendarType'           => '日历类型',
       'Public'                 => '公众',
       'Private'                => '私人',
       'ForPrivateCalendar'     => '私人用日历',
       'OthersSeeTextTime'      => '其他人可以看见时间和内容',
       'OthersSeeTitle'         => 'Others See Event Title',
       'OthersSeeTimeOnly'      => '其他人仅能看见时间',
       'OthersSeeNothing'       => '其他人不能看',
       'PublicCalendar'         => '公众日历',
       'Submit'                 => '提交',
       'Cancel'                 => '取消',
       'TheName'                => '名称',
       'HasBeenTaken'           => 'has already been taken',
       'PasswordMismatch'       => '密码不对',
       'TryAgain'               => '请再试一次',
       'EmailIncomplete'        => '邮件地址不完整',
       'CannotCreateCalendar'   => '不能创建你的日程表，日程表的名称必须使用有效的名字',
       'CannotWriteInfoFile'    => '无法写入信息文件',
       'CannotWriteDataFile'    => '无法写入数据文件',
       'CannotWritePasswordFile'=> '无法更改密码文件',
       'Congratulations'        => '恭喜恭喜，搞定了',
       'SetupGreetingA'         => '你的日程已经设定完成，请把以下的地址放入收藏夹',
       'SetupGreetingB'         => '请记住你的密码，不然无法登陆的哦',
       'HaveToSupplyCalendarName' => '你必须为你日程表命名',
       'PleaseDoNotUseYourUnixAccountPassword' => '如果你是Unix的用户，不要使用相同的密码',
       
       
       # Event Editor Messages
       'EventEditor'            => '时间编辑器',
       'AppointmentEditor'      => '约定事件编辑器',
       'ToDoEditor'             => '待办事宜编辑器',
       'MeetingEditor'          => '会议编辑器',
       'SpecialEditor'          => '特殊事件编辑器',
       'AuthRequired'           => '注意：编辑这个日程表需要经过认证',
       'CurrentEvents'          => '当前事件',
       'Time'                   => '时间',
       'What'                   => '什么事情',
       'Date'                   => '时间',
       'Start'                  => '开始',
       'End'                    => '结束',
       'Details'                => '明细',
       'Colors'                 => '颜色',
       'Privacy'                => '隐私',         
       'Frequency'              => '频率',
       'Reminders'              => '提醒器',
       'Mail'                   => '邮件',
       'min'                    => '分钟', # abbreviation of minute
       'mins'                   => '分钟',
       'hours'                  => '小时',
       'days'                   => '天数',
       'weeks'                  => '星期数',
       'Occurs'                 => '发生数',
       'For'                    => '为',
       'times'                  => '次数',   # as in repeat for 10 times 
       'Popup'                  => '弹出',
       'Author'                 => '作者',
       'Blink'                  => '闪烁',
       'Chime'                  => 'Chime',
       'Insert'                 => '插入',
       'InsertAsNew'            => '插入新纪录',
       'Modify'                 => '修改',
       'DeleteThisOne'          => '删除这条事件',
       'DeleteAll'              => '删除所有事件',
       'Delete'                 => '删除',
       'Due'                    => '到期', # as in Due Date
       'TaskDone'               => '任务已经完成',
       'RemindForward'          => '继续提醒',
       'Yes'                    => '确定Yes',
       'No'                     => '取消No',
       'Y'                      => 'Y', # abbrieviation of Yes
       'N'                      => 'N', # abbrieviation of No
       'ToDo'                   => '待办事宜',
       'Participants'           => '被邀请人',
       'none'                   => '无',
       'MailToAll'              => '发个所有人',
       'FindConflict'           => '查找冲突事件',
       'NoTimeEvent'            => 'No Time Event',
       'Fg'                     => '前景',
       'Bg'                     => '背景',
       'Error'                  => '错误',
       'HasError'               => '处理请求过程中出错',
       'ListParticipants'       => '列举参加者的会议组或者日历名字或者详尽的电子邮件地址。他们的日历将会被更新',
       'ConflictTable'          => '冲突表',
       'Conflict'               => '冲突',         
       'Table'                  => '表格',         
       'You'                    => '你',
       'NotAllowedToModify'     => '不允许修改这条记录',
       'NotAllowedToEdit'       => '不允许编辑这条记录',
       'Warning'                => '警告',
       'NoRemindForward'        => '无法为重复的代办事宜进行提醒' ,
       'Acknowledgement'        => '确认',
       'UpdatedOK'              => '日程表更新成功',
       'BackToCalendar'         => '点击这里回到你的日程表',
       'OpenFailed'             => '无法打开你的日程表',
       'NoCalendar'             => '你好象没有日程表文件',
       
       # goto page
       'Goto_Date'              => '跳到某日', #title
       'Goto'                   => '跳转',
       'SelectDate'             => '请选择日期',
       'View'                   => '查看',
       'Go'                     => '开始', # function as submit
       'Set'                    => '设定', # as in set options
       
       # set options page
       'My_day_starts_at'       => '我的工作日从',
       'ends_at'                => '结束于',
       'Interval'               => '间隔',
       'Week_starts_on',        => 'Week of ',
       'include_weekend',       => '包括周末',
       'Date_Format'            => '日期格式',
       'Time_Format'            => '时间格式',
       'Time_zone'              => '时区',
       'Default_view'           => '默认察看模式',
       'Default_Reminders'      => '默认提醒器',
       'ListEditors'            => '允许修改你的日程表的人员',
       'Editors'                => '编辑者',
       'Email'                  => '邮件',
       'Default'                => '默认',
       'Homepage'               => '个人网页',
       'Language'               => '语言',
       
       # admin page
       'Administration'         => '管理',
       'adminDisabled'          => '公众日程表管理已被禁用',
       'Change_Password'        => '修改密码',
       'Old_Password'           => '旧密码',
       'New_Password'           => '新密码',
       'New_Password_Again'     => '再次输入密码',
       'Create_Meeting_Group'   => '建立会议组',
       'to_be_used_by_meeting_editor' => '会议组编辑者使用',
       'Existing_Groups'        => '退出组',
       'Group_Name'             => '组名称',
       'ListGroupMembers'       => '输入参与者日程表的名称或邮件地址',
       'Merge_Calendars'        => '合并日程表',
       'CalendarNames'          => '日程表名字',
       'EraseCalendar'          => '清空我的日程表',
       'DeleteCalendar'         => '删除我的日程表',
       'errorPerm'              => '拒绝访问',
       'calDeleted'             => '你的日程表已经被删除',
       'ThankYou4Using'         => '感谢你的使用',
       'calErased'              => '你的日程表已经清空',
       'eraseFailed'            => '无法清空的你日程表',
       'cpasswordWrong'         => '认证出错：密码错误',
       'ipasserror'             => '无法打开密码文档，请再试一次',
       'password_changed'       => '你的密码修改完毕',
       'cannot_open'            => '无法打开',
       'Meeting_group'          => '会议组',
       'updated'                => '成功更新',
       'new_entries'            => '新纪录已经插入到日程表中',
       'Unknown_command'        => '不明指令',
       
       
       # search page
       'Search_Calendar'        => '搜索日程表',
       'Topic'                  => '主题',
       'SearchAll'              => '搜寻所有',
       'Search_From'            => '从这里开始',
       'To'                     => '到',
       'Search_Results'         => '搜索结果',
       'CalendarReminder'       => '日程表提醒器',
         
       # Greeting
       'WelcomeToWebCalendar'   => '欢迎使用 WebCalendar',
       'PleaseSelectACalendar'  => '请选择一个日程表',
       'PleaseEnterCalendarName'=> '请输入你的日程表的名称',

       #download
       'notAllowedToDownload'   => '你不允许下在本日程表',
         
       #logout
       'AuthNotRequired'        => '注意：察看公众日程表不需要授权',
       'logoutInstruction'      => '需要注销时，点击注销图标。当出现登陆对话窗时，用"nobody"用户登陆不需要密码',
       'loginInstruction'       => '如果要以其他用户登陆，点击"Login"图标',
       'You_ve_logout'          => '你已经注销',
       'access_denied'          => '拒绝访问',
       'login'                  => '登陆',

       #compare
       'CompareCalendars'       => '比较日程表',
       'Enter_calendar_names'   => '输入日程表的名称',
       'or_meeting_group'       => '或者"会议组"',
       'EventsTable'            => '事件表',
       'Name'                   => '名称',
       'Events'                 => '事件',
       'ForegroundColor'        => '前景颜色',
       'BackgroundColor'        => '背景颜色',

       # msg in the main
       'accessAnotherCal'        => 'To access another calendar, please',

       # Some missing phrases and addons ...
       'Close'                  => '关闭',
       'ShowCombinedCalendar'   => '显示合并的日程表',
       'CombinedCalendar'       => '合并日程表',
       'Participants_are_allowed_to' => "参与者只允许",
       'View_only'              => '只能察看',
       'Edit'                   => '编辑',
       'EditAndDelete'          => '编辑、删除',
       'Updated_calendars'      => '以下的日程表将会一同更新',
       'NotAllowedToUpdate'     => '你不允许更新以下的日程表',
       'invalid_date'           => '非法日期',
       'Schedule'               => '计划',            # as in 'schedule an appointment on calendar mzou
       'onCalendar'             => 'on calendar',          #
       'DeleteForward'          => 'Delete Forward Occurences',
       'All'                    => '所有',
       'SearchSubjectEmpty'	=> '查找目标不能为空',
       'Start_date'             => '开始日期',
       'is_after_due_date'      => 'is after due date',
       'Invalidusername'	=> '非法用户名',
       'Protected'		=> '==受保护==',
       'Invalidcalendarname'	=> '非法的日程表名称',
       'Couldnotfindcalendar' => '没有找到日程表',
       'Invalidspooldir'      => 'Invalid spooldir',
       'ListView'             => '明细列表察看模式',
       'BlockView'            => '单元格察看模式',

       # address book stuff
       'AddressBook'           => '地址簿',
       'AddressBookEditor'     => '地址簿编辑器',
       'AddressBookUpdated'    => '地址簿已更新',
       'BackToAddressBook'     => '点击这里返回到地址簿',
       'FirstName'             => '名',
       'LastName'              => '姓',
       'Address'               => '地址',
       'Phone'                 => '电话',
       'Fax'                   => '传真',
       'Info'                  => '信息',
       'Affiliation'           => '关联资料',
       'Where'                 => '那里的',
       'Priority'              => '优先级',
       'Diary'                 => '日记',
       'DiaryUpdated'          => '日记已更新',
       'ReadDiary'             => '读日记',       
       'From'                  => 'From',
       'PlainText'             => '纯文本',
       'Html'                  => 'Html',
       'SearchDiary'           => '查找日记',
       'SearchFor'             => '查找..',
       'NeedAuth2Proceed'      => '察看及编辑需要认证，请点击 \'登陆\', 或者点击日程表图标回到你的日程表',

       # Priority of ToDo tasks
       'Urgent'                => '紧急',
       'High'                  => '急',
       'Medium'                => '一般',
       'Low'                   => '低',       

       # find calendar names
       'FindCalNames'          => '查找日程表',

       # overlapping 
       'AllowOverlap'          => '允许事件重叠',
       'GoBack'                => '返回',  #

       'OverlapInstr'          => '这个事件被拒绝，因为它被一次或多次于现有的在日程表中的事件重叠。如果你真的想要把它插入你的日程表中，返回，选择"<b>允许事件重叠</b>"项的"<b>Y</b>"，然后再试一次',

       'signup'                 => '注册',
       'Invalidpassword'	=> '密码不对',
       'olduserInstruction'     => '我已有日程表',
       'newuserInstruction'     => '我是新用户',
       'PleaseLogin'            => '需要认证，请先登陆!',
       'NextNew'		=> '下一个新事件',
       'RememberIDPswd'         => '请记住我的用户名以及密码(因此我\不需要下一次重复输入)',
       'global'                 => 'Global', # mark global meeting group
       'groupnametaken'         => '会议组的名称已被使用，请输入其他的名称',
       'deleteEventsBefore'     => '先删除所有事件',
       'AutoStart'              => '自动打开 WebCalendar',
       'Readers'                => '读者',
       'ListReaders'            => '列出可以读取你的日程表的用户',
       'Print'			=> '打印',
       'mailVcal'		=> '在邮件提醒器中附上"VCALENDAR"',
       'FriendsEmail'		=> '朋友的电子邮件地址',
       'PersonalMessage'	=> '增加私人信息',
       'Mail2Friend'		=> '把这个时间表发给朋友',
       'MailSentTo'		=> '日程表已经发给 ',
       'Location'               => 'Location',
       # the next line is used in a confirmation popup when a user is modifying 
       # an repeating event. The date displayed is the current date, normally 
       # it is not the initial starting date of the event.
       'CalendarFormat'			=> '日程表格式',
       'CalendarFile'			=> 'Calendar File',
       'SetupGreetingC'         => '请查看日程表的"设置"页完成设定.',
       'Email2Selected'		=> '给选中的地址发送邮件',
       'AddNewEmail'		=> '添加新的邮件地址到我的地址簿',
       'ContactP'		=> '联系人',
       'ContactE'		=> '联系电子邮件',
       'DailyReminder'		=> '每天发邮件提醒我',
       'CompletedTasks'		=> '完成的任务',
       'PendingTasks'		=> '未完成的任务',
       'Import2Cal'		=> '把这个事件添加到日程表',
       'ViewOnly'		=> '或者选择查看其他的日程表',
       'newLogin'		=> '或者使用其他用户登陆', 
       'QuickAdd'		=> '快速新增',
       'Event'                  => '事件',
       'TodoList'               => '待办事宜清单',
       'MarkComplete'		=> '把选中的标记为完成',
       'DeleteChecked'		=> '删除选中的',
       'AddNewTask'             => '增加新任务',
       'TaskManager'            => '任务管理器',
       'DetailedView'		=> '明细',
       'CombinedView'		=> '组合式的',
       'WarnInvitee'		=> '你确认把这条事件添加到以下的日程表中吗？',
       'creationDisabled'	=> '抱歉，日程表设定的功能被系统管理员禁用了，请联系你的系统管理员.',
       'RequestRSVP'            => '需要RSVP(请回复)提示',
       'invitationAccepted'     => '接受',
       'invitationDeclined'     => '拒绝',
       'AttendanceConfirmation' => '确认会议参加者',
       'AcceptInvitation'         => '接受邀请',
       'DeclineInvitation'      => '拒绝邀请',
       'Undecided'		=> '未决定',
       'Category'		=> '类别',
       'Speaker'		=> '发言人',
       'Header'			=> '页眉',
       'Footer'			=> '页脚',
       'HeaderFooter'		=> '输入自定义的页眉/页脚HTML代码',
       'MiscInfo'		=> '杂项信息',
       'Description'		=> '描述',
       'AllDay'			=> '全天',
       'Tomorrow'		=> '明天',
       'ThisWeek'		=> '这个星期',
       'ThisMonth'		=> '这个月',
       'Keyword'		=> '关键词',
       'NoEvents'		=> '无事件',
       'EditThis'		=> '编辑这个事件',
       'recurFormat'            => 'Occurs %s for %d times, starting on %s.', # used in formating
       'taskDoneFormat'		=> 'Completed by %s on %s at %s', # formating, eg. by Jone on Mon 12/11 at 5pm


       'warnModify'	       => '你正在修改一个重复时间。显示的日期(或者到期日)不是这个事件的原来的日期(或者到期日)。如果你真的需要编辑，那么这个事件将会从新的日期开始重复，并且所有隐藏的事件包括排除日期、会议确认资料将会丢失。请确认是否继续。修改一个重复时间事件中的一部分是不允许的，除非删除这个重复的事件并重新增加事件。这个事件原来的日期(或者到期日)是  ',

       'gEventError'		=> '你正在删除一个但没有被许操作的可重复的事件中的一部份。这是不允许的，因为这会使你的日程表与组里其它的日程表是趋同步性。不过你使用在事件编辑器中的"删除所有的事件"图标还是可以从日程表中删除这些重复的事件的。',

       'City'                  => '城市',
       'State'                 => '州',
       'Zip'                   => '邮编',
       'Country'               => '国家',


       'ResetPasswd'           => '重新设定密码',
       'File'                  => '文件',
       'AlreadyOnCalendar'     => '这些纪录已经在你的日程表中，只不过是你忽略了.',
       'ImportFileTitle'         => '从你的电脑的"VCalendar"文件倒入数据',
       'ImportFileInstruction'   => '如果要从你的电脑的"VCalendar"文件倒入数据，请输入"vCalendar"文件的全路径并点击"<b>提交</b>".如果你不确定文件的路径，你可以点击"<b>浏览</b>"找到你的文件.',
       'ImportVcal'		=> '从"VCalendar"中倒入事件',
       'ImportVcalInstruction'	=> '或者从VCalendar剪贴纪录到文本区，然后点击"<b>提交</b>"',


       # new phrases

       'DetailedWorkingHours'   => 'Detailed Daily Working Hours', 
       'SelectAttendee' => '事件参加者中可以是<b>"日程表名字，电子邮件地址，会议组名称，或者其组合"</b>。你可以从左边的多重列表中选择日程表的名字，或者在上面输入。电子邮件地址必须完整的输入。会议组如果存在，可以从"会议组"选项单中选出来。你也可以在上边输入会议组。输入多个资料时应该用空格或者逗号分开。',

       'MkEditorListInstruction' => '为了允许你的朋友或者同事编辑你的日程表，请从左边清单中选择他们的日程表的名字。你也可以在上面输入他们的日程表的名称',

       'MkReaderListInstruction' => '如果你的日程表的数据受保护，其他的用户不能读取你的日程表。你可以给选择一些用户创建一分列表，许可他们读取你日程表。这份清单由日程表的名字组成。请从左边清单中选择他们的日程表的名字。你也可以在上面输入他们的日程表的名称',

       'MkGroupInstruction'=> '日程表的名字或者电子邮件地址可以用来鉴定工作组的成员，请从左边清单中选择他们的日程表的名字。你也可以在上面输入他们的日程表的名称。电子邮件地址一定要完整输入',
       'Contacts'	   => '联系人',
       'Tasks'		   => '任务',
       'Day'		   => '天',
       'Week'		   => '周',
       'Month'		   => '月',
       'Year'		   => '年',
       'OffDutyHours'	   => '非工作时间',
       'AddNewAddress'	   => '增加新的地址',
       'HeaderColor'	   => '页眉颜色',
       'Never'		   => '从不',
       'OverlapNotAllowed' => 'Unfortunately, overlap events is not allowed on the following calendars.',
       'Notes'		   => '笔记',
       'PostIt'		   => '便条PostIt',   # as in post it notes
       'Title'		   => '标题',
       'AddNewNote'	   => '增加新笔记',
       
       'InterestedCalendars' => '列出所有你可以读取或者编辑的日程表', 
       'CalendarListInstruction' => '如果你不想在日程表选项清单看到长长的列表清单，你可以在这里创建一份简洁清单。请从左边清单中选择他们的日程表的名字。你也可以在上面输入他们的日程表的名称。建立好的简洁清单可以在所有有显示日程表清单的地方使用',

       'MasterHeadInput'  => 'In the masterhead, input calendar selection using a',
       'TextEntry'	  => '正文区',
       'PulldownMenu'     => 'Pulldown menu',

       'LockWarning'      => 'Your calendar was modified while I was processing your request. For data integrity, your 
submission is rejected. Please go back and try again.',

       'IUpload'	  => '图片上传', 
       'FUpload'	  => '文件上传',        
       'IUploadInstruction' => '要从你的电脑中上传图片，请在文件路径框中输入文件的全路径，如果你不确定路径，点击"浏览"找到相应的文件。',
       'IUploadAck'	  => '图片成功上载。如果要在事件标题或时间描述中使用图片，你要把文件的名称(包括\\^O^/)剪切到相应的事件编辑器的文本区中。不过请考虑清楚上传的图片可能会受网站主管的限制，也就是说在那些情况下图片可能无法马上的看见。',
       'ReviewUI'  => '预览用户上传的图片',
       'ApproveChecked' => 'Approve checked',	   
       'RejectChecked' => 'Reject checked',	   
       'Export2Vcal'   => '使用"vCal"格式引出你的日程表',
       'CreateNewCal'  => '创建一个新的日程表',
       'UsableImgs'    => '可用的图片',
       'UImageInst'    => '如果要在事件标题或时间描述中使用图片，你要把文件的名称(包括\\^O^/)剪切到相应的事件编辑器的文本区中',

	'CheckAll'     => '全选中',
	'UncheckAll'   => '取消全部选中',
        'Export2VCard' => '把你的地址簿引出到"vCard"文件',
	'ImportVcard'  => '从"vCard"文件中引入联系信息',
        'ImportVCardTitle'  => '从你电脑里的"vCard"文件引入数据',
        'ImportVcardInstruction' => 'Or cut and paste your vcard entry in the textarea and click on the submit button',
        'ImportVcardFileInstruction'   => '要从"vCard"文件中引入数据，在输入框中输入"vCard"文件的全路径然后点击"确认"。如果不肯定文件的路经，可以点击"浏览"找到你的文件',
        'AlreadyInAddressbook' => '你的地址簿中已存在以下的纪录',
	
	'DpyETimeAs' => '显示时间模式',
	'MasterheadTabs' => 'Masterhead Tabs',

 	'DeferConfirmation'     => '延迟确认',
	'Unconfirmed'           => '未确认的',     # unconfirmed invitation

	'SendMailUsing'         => 'Send mail using�', #	html, txt or vcal
         # used as in
         # send mail <> immediately or <> <hours> before event
        'Sendmail'              => '发邮件',
        'immediately'           => '立即',
        'or'                    => '或者',
        'beforeEvent',          => 'before event',
        'Cancelled'             => '已取消',

        'AddNewEntry'		=> '增加一条新纪录',
	'SearchNotes'		=> '搜索笔记',
	'SearchAddress'		=> '搜索地址簿',

	'Week_begins_on'	=> '每周从',
	'StartDate'		=> '开始日期',
	'DueDate'		=> '到期日',
	'DueTime'		=> '到期时间',
	'Overdue'		=> '延迟的',
	'EventDates'		=> '事件日期', 

	'SpecialEvents'		=> '特殊事件',
	'RemindForwardNewTask'  => 'Set Remind Forward on New Tasks',
	'DispCompletedTasks'    => 'Display Completed Tasks on Calendar',
	'TaskOptions'		=> 'Task Options',
        'DoneOn'		=> 'Done on %s by %s', # used to display completed tasks, like 'Done on 03/19/2002', 

        'DetailedView'		=> '明细',
        'CombinedView'		=> '组合式的',
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











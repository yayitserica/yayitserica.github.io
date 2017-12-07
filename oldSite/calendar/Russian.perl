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

       'Calendar'               => 'Календарь',

       # Name of weekdays
       'Sunday'                 => 'Воскресенье',
       'Monday'                 => 'Понедельник',
       'Tuesday'                => 'Вторник',
       'Wednesday'              => 'Среда',
       'Thursday'               => 'Четверг',
       'Friday'                 => 'Пятница',
       'Saturday'               => 'Суббота',
       # Name of weekdays, abbreviation
       'Sun'                    => 'Вос',
       'Mon'                    => 'Пон',
       'Tue'                    => 'Вто',
       'Wed'                    => 'Сре',
       'Thu'                    => 'Чет',
       'Fri'                    => 'Пят',
       'Sat'                    => 'Суб',
       # Name of weekdays, abbreviated even more
       'Su'                     => 'Вс',
       'Mo'                     => 'Пн',
       'Tu'                     => 'Вт',
       'We'                     => 'Ср',
       'Th'                     => 'Чт',
       'Fr'                     => 'Пт',
       'Sa'                     => 'Сб',

       # Month Names
       'January'                => 'Январь',
       'February'               => 'Февраль',
       'March'                  => 'Март',
       'April'                  => 'Апрель',
       'May_'                   => 'Май',
       'June'                   => 'Июнь',
       'July'                   => 'Июль',
       'August'                 => 'Август',
       'September'              => 'Сентябрь',
       'October'                => 'Октябрь',
       'November'               => 'Ноябрь',
       'December'               => 'Декабрь',
       # Month Names, abbreviation
       'Jan'                    => 'Янв',
       'Feb'                    => 'Фев',
       'Mar'                    => 'Мар',
       'Apr'                    => 'Апр',
       'May'                    => 'Май',
       'Jun'                    => 'Июн',
       'Jul'                    => 'Июл',
       'Aug'                    => 'Авг',
       'Sep'                    => 'Сен',
       'Oct'                    => 'Окт',
       'Nov'                    => 'Ноя',
       'Dec'                    => 'Дек',

       # repeating rules
       'OneTime'                => 'Однажды',                   # one time event
       'Daily'                  => 'Ежедневно',
       'Weekly'                 => 'Еженедельно',
       'Every2Weeks'            => 'Раз в 2 недели',
       'MonthlyByDate'          => 'Ежемесячно по дате',
       'MonthlyByWeekday'       => 'Ежемесячно по дню недели',         # e.g. the 3rd Friday of every month
       'Yearly'                 => 'Ежегодно',
       'MTWThF'                 => 'С Пн по Пт',
       'MWF'                    => 'Пн Ср Пт',
       'TTh'                    => 'Вт Чт',
       'YearlyByMonthWeekday'   => 'Ежегодно по месяцу и дню недели',    # e.g. the first Monday of June, yearly
       'EveryOtherDay'          => 'Каждый другой день',
       'Every3rdDay'            => 'Каждый 3-ий день',
       'Every4thDay'            => 'Каждый 4-ый день',
       'Every5thDay'            => 'Каждый 5-ый день',
       'Every6thDay'            => 'Каждый 6-ой день',

       # event types
       'Appointment'            => 'Задача',
       'Todo'                   => 'Сделать',
       'Meeting'                => 'Встреча',
       'Special'                => 'Другое',            # for holidays, event require no specific time

       # option button names
       'CalendarOptions'        => 'Настройки календаря',   # title of the options page
       'Compare'                => 'Сравнить',            # Button: compare calendars and find conflicts ...
       'Search'                 => 'Поиск',             # Button:
       'GotoDate'               => 'Перейти к дате',           # Button:
       'Previous'               => 'Предыдущий',           # previous Month/Day/Week
       'Today'                  => 'Сегодняшний',              # This Month/Day/Week
       'Next'                   => 'Следующий',               # next Month/Day/Week
       'Options'                => 'Настройки',            # Button: go to options page
       'Admin'                  => 'Администрирование',              # Button: go to admin page
       'Logout'                 => 'Завершить сеанс',             # Button: go to logout page
       'DayView'                => 'Просмотр по дням',           # Alt name under the image buttons
       'WeekView'               => 'Просмотр по неделям',
       'MonthView'              => 'Просмотр по месяцам',
       'YearView'               => 'Просмотр по годам',


       # messages on the setup screen
       'SetupYourCalendar'      => 'Настроить ваш календарь', # title
       'YourCalendarName'       => 'Название вашего календаря',
       'YourEmailAddress'       => 'Ваш электронный адрес',
       'YourName'               => 'Ваше имя',
       'Password'               => 'Пароль',
       'RetypePassword'         => 'Повторите пароль',
       'CalendarType'           => 'Тип календаря',
       'Public'                 => 'Общий',
       'Private'                => 'Личный',
       'ForPrivateCalendar'     => 'Для личного календаря',
       'OthersSeeTextTime'      => 'Другие пользователи видят текст и время',
       'OthersSeeTitle'         => 'Others See Event Title',
       'OthersSeeTimeOnly'      => 'Другие пользователи видят только текст',
       'OthersSeeNothing'       => 'Другие пользователи ничего не видят',
       'PublicCalendar'         => 'Общий календарь',
       'Submit'                 => 'Применить',
       'Cancel'                 => 'Отменить',
       'TheName'                => 'Имя',
       'HasBeenTaken'           => 'Уже было использовано',
       'PasswordMismatch'       => 'Пароль набран неправильно',
       'TryAgain'               => 'Попробуйте еще раз',
       'EmailIncomplete'        => 'Электронный адрес неполный',
       'CannotCreateCalendar'   => 'Невозможно создать календарь\. Имя вашего календаря должно быть представлено обним словом',
       'CannotWriteInfoFile'    => 'Ошибка записи в информационный файл',
       'CannotWriteDataFile'    => 'Ошибка записи в файл данных',
       'CannotWritePasswordFile'=> 'Невозможно изменить файл пароля',
       'Congratulations'        => 'Поздравления',
       'SetupGreetingA'         => 'Ваш календарь установлен. Занесите ваш календарь в',
       'SetupGreetingB'         => 'Запомните ваш пароль. Он будет нужен Вам для пользования Вашим календарем',
       'HaveToSupplyCalendarName' => 'Вы должны дать имя Вашему календарю',
       'PleaseDoNotUseYourUnixAccountPassword' => 'Пожалуйста не используйте для календаря Ваш пароль входа в систему',


       # Event Editor Messages
       'EventEditor'            => 'Планировщик событий',
       'AppointmentEditor'      => 'Планировщик заданий',
       'ToDoEditor'             => 'Планировщик меню "сделать"',
       'MeetingEditor'          => 'Планировщик встреч',
       'SpecialEditor'          => 'Планировщик меню "другое"',
       'AuthRequired'           => 'Внимание, для внесения изменения в календарь необходимо право доступа',
       'Appointment'            => 'Задача',
       'CurrentEvents'          => 'Текущие события',
       'Time'                   => 'Время',
       'What'                   => 'Что',
       'Date'                   => 'Дата',
       'Start'                  => 'Начало',
       'End'                    => 'Конец',
       'Details'                => 'Детали',
       'Colors'                 => 'Цвета',
       'Privacy'                => 'Безопасность',
       'Frequency'              => 'Частота',
       'Reminders'              => 'Напоминание',
       'Mail'                   => 'Почта',
       'min'                    => 'мин', # abbreviation of minute
       'mins'                   => 'минут',
       'hours'                  => 'часов',
       'days'                   => 'дней',
       'weeks'                  => 'недель',
       'Occurs'                 => 'Случается',
       'For'                    => 'Для',
       'times'                  => 'раз',   # as in repeat for 10 times
       'Popup'                  => 'Popup',
       'Author'                 => 'Автор',
       'Blink'                  => 'Ссылка',
       'Chime'                  => 'Сигнал',
       'Insert'                 => 'Вставить',
       'InsertAsNew'            => 'Вставить как новое',
       'Modify'                 => 'Изменить',
       'DeleteThisOne'          => 'Удалить это событие',
       'DeleteAll'              => 'Удалить все события',
       'Delete'                 => 'Удалить',
       'Due'                    => 'На', # as in Due Date
       'TaskDone'               => 'Задание выполнено',
       'RemindForward'          => 'Напомнить позже',
       'Yes'                    => 'Да',
       'No'                     => 'Нет',
       'Y'                      => 'Д', # abbrieviation of Yes
       'N'                      => 'Н', # abbrieviation of No
       'ToDo'                   => 'Сделать',
       'Meeting'                => 'Встреча',
       'Participants'           => 'Участники',
       'none'                   => 'нет',
       'MailToAll'              => 'Отправить всем',
       'FindConflict'           => 'Найти несовпадение',
       'NoTimeEvent'            => 'Событие без времени',
       'Fg'                     => 'Передний фон',
       'Bg'                     => 'Задний фон',
       'Error'                  => 'Ошибка',
       'HasError'               => 'При обработке Вашего запроса произошла ошибка',
       'ListParticipants'       => 'Рабочая группа или имя календаря или полные электронные адреса участников или их календари будут изменены',
       'ConflictTable'          => 'Таблица несовпадений',
       'Conflict'               => 'Несовпадения',
       'Table'                  => 'Таблица',
       'You'                    => 'Вы',
       'NotAllowedToModify'     => 'нет права доступа для изменения этих данных',
       'NotAllowedToEdit'       => 'нет права доступа для редактирования этого календаря',
       'Warning'                => 'Внимание',
       'NoRemindForward'        => 'Невозможно применить функция "напомнить позже" для повторяющихся событий',
       'Acknowledgement'        => 'Подтверждение',
       'UpdatedOK'              => 'Календарь успешно обновлен',
       'BackToCalendar'         => 'Нажмите, чтобы вернуться к Вашему календарю',
       'OpenFailed'             => 'Невозможно открыть Ваш календарь',
       'NoCalendar'             => 'У Вас нет календаря',

       # goto page
       'Goto_Date'               => 'Перейти к дате',
       'Goto'                   => 'Перейти',
       'SelectDate'             => 'Выберите дату',
       'View'                   => 'Просмотр',
       'Go'                     => 'Выполнить', # function as submit
       'Set'                    => 'Выбрать', # as in set options

       # set options page
       'My_day_starts_at'       => 'Мой день начинается в',
       'ends_at'                => 'кончается в',
       'Interval'               => ' - детализация по времени',
       'Week_starts_on',        => 'Неделя начинается с',
       'include_weekend',       => 'включая выходные',
       'Date_Format'            => 'Формат даты',
       'Time_Format'            => 'Формат времени',
       'Time_zone'              => 'Временная зона',
       'Default_view'           => 'Стандартный вид',
       'Default_Reminders'      => 'Стандартные напоминания',
       'ListEditors'            => 'Список пользователей, имеющих право доступа для внесения изменений в Ваш календарь',
       'Editors'                => 'Редакторы',
       'Email'                  => 'Электронная почта',
       'Default'                => 'Стандарные',
       'Homepage'               => 'Домашняя страница',
       'Language'               => 'Язык',

       # admin page
       'Administration'         => 'Администрирование',
       'adminDisabled'          => 'Администрирование невозможно для общих календарей',
       'Change_Password'        => 'Сменить пароль',
       'Old_Password'           => 'Старый пароль',
       'New_Password'           => 'Новый пароль',
       'New_Password_Again'     => 'введите еще раз новый пароль',
       'to_be_used_by_meeting_editor' => 'для использования редактором рабочей группы',
       'Existing_Groups'        => 'Существующие рабочие группы',
       'Group_Name'             => 'Имя рабочей группы',
       'ListGroupMembers'       => 'Введите имя календаря или адрес электронной почты участников',
       'Merge_Calendars'        => 'Объединить календари',

       'CalendarNames'          => 'Календарные имена',
       'EraseCalendar'          => 'Очистить мой календарь',
       'DeleteCalendar'         => 'Удалить мой календарь',
       'errorPerm'              => 'Доступ запрещен',
       'calDeleted'             => 'Ваш календарь был удален',
       'ThankYou4Using'         => 'Спасибо за использование',
       'calErased'              => 'Ваш календарь был очищен',
       'eraseFailed'            => 'Невозможно очистить календарь',
       'cpasswordWrong'         => 'Ошибка: неправильный пароль',
       'ipasserror'             => 'Невозможно открыть файл пароля, повторите попытку позже',
       'password_changed'       => 'Ваш пароль был изменен',
       'cannot_open'            => 'Невозможно открыть',
       'Meeting_group'          => 'Рабочая группа',
       'updated'                => 'успешно обновлено',
       'new_entries'            => 'новые данные были введены в Ваш календарь',
       'Unknown_command'        => 'Неизвестная команда',


       # search page
       'Search_Calendar'        => 'Найти календарь',
       'Topic'                  => 'Тема',
       'SearchAll'              => 'Найти все',
       'Search_From'            => 'Найти из',
       'To'                     => 'в',
       'Search_Results'         => 'Результаты поиска',
       'CalendarReminder'       => 'Напоминание',

       # Greeting
       'WelcomeToWebCalendar'   => 'Добро пожаловать в Веб календарь',
       'PleaseSelectACalendar'  => 'Выберете календарь',
       'PleaseEnterCalendarName'=> 'Введите имя календаря',

       #download
       'notAllowedToDownload'   => 'У Вас нет прав доступа для загрузки этого календаря',

       #logout
       'AuthNotRequired'        => 'Внимание: для просмотра общих календарей не требуется авторизации',
       'logoutInstruction'      => 'Для выходе из календаря нажмите кнопку "завершение сеанса". Когда появится диалоговое окно,<br> войдите как "никто". Пароль в этом случае не требуется',
       'loginInstruction'       => 'Для входа под именем другого пользователя, нажмите на кнопку "вход"',
       'You_ve_logout'          => 'Сеанс завершен',
       'access_denied'          => 'доступ запрещен',
       'login'                  => 'вход',

       #compare
       'CompareCalendars'       => 'Сравнить календари',
       'Enter_calendar_names'   => 'Введите календарные имена',
       'or_meeting_group'       => 'или рабочую группу',
       'EventsTable'            => 'Таблица событий',
       'Name'                   => 'Имя',
       'Events'                 => 'События',
       'ForegroundColor'        => 'Цвет переднего плана',
       'BackgroundColor'        => 'Цвет заднего плана',

       # msg in the main
       'accessAnotherCal'        => 'Для доступа к другому календарю,',

       # msg on the color editor
       # Some missing phrases and addons ...
       'Close'                  => 'Закрыть',
       'ShowCombinedCalendar'   => 'Показать комбинированный календарь',
       'CombinedCalendar'       => 'Комбинированный календарь',



       'Participants_are_allowed_to' => 'Участники имеют право на',
       'View_only'              => 'Только просмотр',
       'Edit'                   => 'Изменение',
       'EditAndDelete'          => 'Изменение и удаление',
       'Updated_calendars'      => 'Также обновлены следующие календари',
       'NotAllowedToUpdate'     => 'У Вас НЕТ права на обновление следующих календарей',
       'invalid_date'           => 'Неправильная дата',
       'Schedule'               => 'Задачи',            # as in 'schedule an appointment on calendar mzou
       'onCalendar'             => 'на календарь',          #
       'DeleteForward'          => 'Удалить будущие задания',
       'All'                    => 'Все',
       'SearchSubjectEmpty'	=> 'Тема поиска не может быть пустой',
       'Start_date'             => 'Дата начала',
       'is_after_due_date'      => 'просрочено',
       'Invalidusername'	=> 'Неправильное имя пользователя',
       'Invalidcalendarname'	=> 'Неправильное имя календаря',
       'Protected'		=> 'Защищено',
       'Couldnotfindcalendar' => 'Невозможно найти календарь',
       'Invalidspooldir'      => 'Неправильная запись данных',
       'ListView'             => 'Просмотр списка',
       'BlockView'            => 'Просмотр блока',

       # address book stuff
       'AddressBook'           => 'Адресная книга',
       'AddressBookEditor'     => 'Редактор адресной книги',
       'AddressBookUpdated'    => 'Адресная книга обновлена',
       'BackToAddressBook'     => 'Нажмите сюда для возвращения к Вашей адресной книге',
       'FirstName'             => 'Имя',
       'LastName'              => 'Фамилия',
       'Address'               => 'Адрес',
       'Phone'                 => 'Телефон',
       'Fax'                   => 'Факс',
       'Info'                  => 'Информация',
       'Affiliation'           => 'Место работы',
        'Where'                  => 'Где',
       'Priority'              => 'Приоритет',
       'Diary'                 => 'Дневник',
       'DiaryUpdated'          => 'Дневник обновлен',
       'ReadDiary'             => 'Прочитать дневник',       
       'From'                  => 'От',
       'PlainText'             => 'Текст',
       'Html'                  => 'Html',
       'SearchDiary'           => 'Найти дневник',
       'SearchFor'             => 'Найти:',
       'NeedAuth2Proceed'      => 'Для просмотра или изменения необходима авторизация. Нажмите кнопку "вход" для продолжения или кнопку календаря для возврата в Ваш календарь.',

       # Priority of ToDo tasks
       'Urgent'                => 'Срочно',
       'High'                  => 'Высокий',
       'Medium'                => 'Средний',
       'Low'                   => 'Низкий',       

       # find calendar names
       'FindCalNames'          => 'Найти календари',

       # overlapping 
       'AllowOverlap'          => 'Разрешить перекрывающиеся события',
       'GoBack'                => 'Назад',  #

       'OverlapInstr'          => 'Событие отклонено, поскольку оно перекрывает уже имеющееся событие. Если Вы действительно хотите внести его в Ваш календарь, вернитесь назад, нажмите кнопку <b>\'Д\'</b> в <b>\'Разрешить перекрывающиеся события\'</b> и попытайтесь снова внести событие.',

       'signup'                 => 'Подписаться',
       'Invalidpassword'	=> 'Неправильный пароль',
       'olduserInstruction'     => 'У меня уже есть календарь',
       'newuserInstruction'     => 'Я новый пользователь',
       'PleaseLogin'            => 'Требуется авторизация. Пожалуйста, сначала введите имя и пароль!',
       'NextNew'		=> 'Подписаться и перейти к следующему событию',
       'RememberIDPswd'         => 'Сохранить мое имя и пароль, чтобы мне не нужно было их набирать снова',
       'global'                 => 'общая', # mark global meeting group
       'groupnametaken'         => 'Группа с таким именем уже существует, пожалуйста, выберете другое имя',
       'deleteEventsBefore'     => 'Сначала удалите все события',
       'AutoStart'              => 'Автозапуск Веб календаря',
       'Readers'                => 'Читатели',
       'ListReaders'            => 'Список пользователей, имеющих право читать Ваш календарь',
       'Print'			=> 'Печать',
       'mailVcal'		=> 'Присоединить данные календаря к напоминанию по почте',
       'FriendsEmail'		=> 'Адреса получателей',
       'PersonalMessage'	=> 'Добавить личное сообщение',
       'Mail2Friend'		=> 'Отправить по адресу получателя',
       'MailSentTo'		=> 'Данные календаря были отосланы',
       'Location'               => 'Место',
       

       # the next line is used in a confirmation popup when a user is modifying 
       # an repeating event. The date displayed is the current date, normally 
       # it is not the initial starting date of the event.
       'CalendarFormat'			=> 'Формат данных',
       'CalendarFile'			=> 'Файлы календаря',
       'SetupGreetingC'         => 'Для получения сведений о параметрах настройки календаря обратитесь к странице внизу.',
       'Email2Selected'		=> 'Отправить сообщения на все выбранные адреса',
       'AddNewEmail'		=> 'Добавить новый электронный адрес в адресную книгу',
       'ContactP'		=> 'Контактное лицо',
       'ContactE'		=> 'Контактный адрес',
       'DailyReminder'		=> 'Посылать мне ежедневные напоминания',
       'CompletedTasks'		=> 'Завершенные задания',
       'PendingTasks'		=> 'Незавершенные задания',
       'Import2Cal'		=> 'Импортировать это событие в календарь',
       'ViewOnly'		=> 'или выбрать другой календарь для просмотра',
       'newLogin'		=> 'или войти под другим имененм', 
       'QuickAdd'		=> 'Быстрое добавление',
       'Event'                  => 'Событие',
       'TodoList'               => 'Список "сделать"',
       'MarkComplete'		=> 'Отметить проверенное как сделанное',
       'DeleteChecked'		=> 'Удалить проверенное',
       'AddNewTask'             => 'Добавить новое задание',
       'TaskManager'            => 'Редактор заданий',
       'WarnInvitee'		=> 'Вы уверены, что хотите ввести это событие в следующие календари?',
       'creationDisabled'	=> 'Извините, но Ваш системны администратор деактивировал этот календарь. Вам необходимо обратиться к Вашему системному администратору, чтобы он создал для Вас календарь.',
       'RequestRSVP'            => 'Запрос RSVP',
       'invitationAccepted'     => 'Приглашение принято',
       'invitationDeclined'     => 'Приглашение отклонено',
       'AttendanceConfirmation' => 'Подтверждение присутствия на встрече',
       'AcceptInvitation'         => 'Принять приглашение',
       'DeclineInvitation'      => 'Отклонить приглашение',
       'Undecided'              => 'Не решено',
       'Category'		=> 'Категория',
       'Speaker'		=> 'Ведущий',
       'Header'			=> 'Тема',
       'Footer'			=> 'Примечание',
       'HeaderFooter'		=> 'Введите HTML код Темы и примечания для использования в списке тем',
       'MiscInfo'		=> 'Другая информация',
       'Description'		=> 'Описание',
       'AllDay'			=> 'В течение всего дня',
       'Tomorrow'		=> 'Завтра',
       'ThisWeek'		=> 'На этой неделе',
       'ThisMonth'		=> 'В этом месяце',
       'Keyword'		=> 'Ключевое слово',
       'NoEvents'		=> 'Нет событий',
       'EditThis'		=> 'Редактировать это событие',
       'recurFormat'            => 'Случается % из  % раз, начиная с %-го.', # used in formating
       'taskDoneFormat'		=> 'Выполняется %  %  %', # formating 
       'warnModify'	       => 'Вы собираетесь изменить повторяющееся событие. Указанная дата отличается от указанной ранее даты этого события.  Если Вы произведете редактирование, то событие будет повторяться начиная с новой даты. И вся скрытая информация  по этому событию, такая как неучитываемые даты и данные по подтверждению встречи, будут утеряны.  Пожалуйста, подтвердите изменение. Изменение только частоты события невозможно. Для изменения частоты события, вводится новое событие с новой частотой. Дата для такого события следующая ',
       'gEventError'		=> 'Вы попытались удалить событие рабочей группы, не имея надлежащего разрешения на это. Это не разрешено, поскольку приведет к десинхронизации Вашего календара с другими календарями группы. Однако Вы можете удалить все даты этого события из Вашего календаря, нажав на кнопку "удалить все даты" на экране редактора событий.',

       'City'                  => 'Город',
       'State'                 => 'Область',
       'Zip'                   => 'Индекс',
       'Country'               => 'Страна',


       'ResetPasswd'           => 'Изменить пароль пользователя',
       'File'                  => 'Файл',
       'AlreadyOnCalendar'     => 'Следующие данные уже находятся в календаре. Они не приняты.',
       'ImportFileTitle'         => 'Импорт файлов из файла календаря на Ваш компьютер',
       'ImportFileInstruction'   => 'Для импорта файлов из файла календаря на ваш компьютер,  введите полный путь к файлу календаря в окно ввода данных и нажмите кнопку "заполнить". Если Вы не помните полный путь к файлу,  нажмите кнопку "обзор" и найдите файл.',
       'ImportVcal'		=> 'Импортировать данные события из календаря',
       'ImportVcalInstruction'	=> 'или вырезать и вставить данные из календаря в окно ввода данных и нажать кнопку "заполнить"',



       'DetailedWorkingHours'   => 'Детализированные рабочие часы', 
       'SelectAttendee' => 'Для ввода участников события могут использоваться имена календарей, электронные адреса,  рабочие группы, либо комбинации этих параметров. Вы можете выбрать имя календаря из списка, расположенного слева,  или введите имя в окно ввода данных над текстом. Электронные адреса должны быть введены в окно ввода данных. Рабочая группа  может быть выбрана из списка в меню "Рабочая группа". Вы также можете ввести имя рабочей группы в окно ввода данных. Данные в окне ввода данных должны быть разделены пробелами или запятыми.',

       'MkEditorListInstruction' => 'Для того, чтобы разрешить другим пользователям редактировать ваш календарь,  выберете имена их календарей из списка, расположенного слева. Вы также можете ввести имена их календарей в окно ввода данных.',

       'MkReaderListInstruction' => 'Если данные Вашего календаря защищены, другие пользователи не могут читать Ваш календарь.  Создав список пользователей,имеющих право чтения, Вы можете дать отдельным пользователям права на чтение Вашего календаря.  Такой список состоит из имен календарей пользователей. Вы можете выбрать эти имена из списка, расположенного слева или  ввести имена в окно ввода данных, расположенное над текстом.',

       'MkGroupInstruction'=> 'Для идентификации участников рабочей группы могут использоваться имена их календарей или  их электронные адреса. Вы можете выбрать имена из списка, расположенного слева или ввести имена в окно ввода данных.  Электронные адреса должны быть введены в окно ввода данных.',
       'Contacts'	   => 'Контакты',
       'Tasks'		   => 'Задания',
       'Day'		   => 'День',
       'Week'		   => 'Неделя',
       'Month'		   => 'Месяц',
       'Year'		   => 'Год',
       'OffDutyHours'	   => 'Часы, в которые задания не выполняются',
       'AddNewAddress'	   => 'Добавить новый адрес',
       'HeaderColor'	   => 'Цвет темы',
       'Never'		   => 'Никогда',
       'OverlapNotAllowed' => 'Unfortunately, overlap events is not allowed on the following calendars.',
       'Notes'		   => 'Заметки',
       'PostIt'		   => 'Отправить',   # as in post it notes
       'Title'		   => 'Название',
       'AddNewNote'	   => 'Добавить новую заметку',

       'InterestedCalendars' => 'Перечислите все календари, которые вы возможно будете читать или редактировать.', 
       'CalendarListInstruction' => 'Если Вы не хотите видеть длинный список календарей в меню выбора имени календаря,  Вы можете создать короткий список здесь. Введите имена календарей, которые Вы хотите видеть в списке, в окно ввода данных,  расположенное над текстом, или выберете их из списка слева.',
       
       'MasterHeadInput'  => 'В главном меню введите выбор календаря, используя ',
       'TextEntry'	  => 'Ввод текста',
       'PulldownMenu'     => 'Выпадающее меню',

       'LockWarning'      => 'В то время, как обрабатывался Ваш запрос, Ваш календарь был изменен.  Для сохранения целостности данных Ваш запрос был отвергнут. Вернитеь назад и попробуйте еще раз.',

       'IUpload'	  => 'Загрузить картинку', 
       'FUpload'	  => 'Загрузить файл',        
       'IUploadInstruction' => 'Для загрузки файла с картинкой на Ваш диск, введите полный путь к файлу в окно ввода данных  и нажмите кнопку "заполнить". Если Вы не помните полный путь к файлу, нажмите на кнопку "обзор" для того, чтобы найти файл.',
       'IUploadAck'	  => 'Картинка загружена. Чтобы вставить ее в название или описание события, вырежьте и вставьте  строку в соответствующее окно в редакторе события. Пожалуйста, учтите, что картинка сначала может быть отправлена  для одобрения администратором Вашего сайта и, в этом случае, она будет доступна для просмотра другим пользователям лишь спустя  некоторое время.',
       'ReviewUI'  => 'Просмотреть загрузки картинок пользователя',
       'ApproveChecked' => 'Одобрение получено',	   
       'RejectChecked' => 'Одобрение не получено',	 
       'Export2Vcal'   => 'Экспортировать Ваш календарь в формат Vcal',
       'CreateNewCal'  => 'Создать новый календарь',
       'UsableImgs'    => 'Используемые картинки',
       'UImageInst'    => 'Чтобы вставить картинку в название или описание события, вырежьте и вставьте ее имя, включая знаки \\^o^/ в соответствующее окно в редакторе события.',
	'CheckAll'     => 'Выделить все',
	'UncheckAll'   => 'Снять выделение',
        'Export2VCard' => 'Экспортировать Вашу адресную книгу в vCard',
	'ImportVcard'  => 'Импортировать контактную информацию из vCard',
        'ImportVCardTitle'  => 'Импортировать из vCard файла на Вашем компьютере',
        'ImportVcardInstruction' => 'или вырезать и вставить vcard данные в текстовое окно и нажать кнопку "заполнить"',
        'ImportVcardFileInstruction'   => 'Для импорта данных из vCard файла на Ваш компьютер, введите полный путь к файлу  в окно ввода данных и нажмите кнопку "заполнить". Если Вы не помните полный путь к файлу, нажмите на кнопку "обзор" для того, чтобы найти файл.',
        'AlreadyInAddressbook' => 'Эти данные уже находятся в адресной книге.',
	'DpyETimeAs' => 'Показывать время события как',
	'MasterheadTabs' => 'Ссылки в главном меню',
 	'DeferConfirmation'     => 'Отложить подтверждение',
	'Unconfirmed'           => 'Не подтверждено',

	'SendMailUsing'         => 'Посылать почту в формате', #	html, txt or vcal
         # used as in
         # send mail <> immediately or <> <hours> before event
        'Sendmail'              => 'Отправить почту',
        'immediately'           => 'немедленно',
        'or'                    => 'или',
        'beforeEvent',          => 'перед событием',
        'Cancelled'             => 'Отменено',
       #===== need translation !!!

        'AddNewEntry'		=> 'Добавить новые данные',
	'SearchNotes'		=> 'Заметки по поиску',
	'SearchAddress'		=> 'Поиск в ардесной книге',

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

        'DetailedView'		=> 'Детальный вид',
        'CombinedView'		=> 'Комбинированный вид',
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











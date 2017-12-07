# Polish translation made by maciek@nencki.gov.pl
#
# $Header: /home/cvs/webCal/webCal2/Polish.perl,v 1.10 2004/10/20 23:35:56 mzou Exp $
#


%::phr=(
       # specify character encoding.
       'CHARSET'		=> 'ISO-8859-2',

       'Calendar'               => 'Kalendarz',
       
       # Name of weekdays
       'Sunday'                 => 'Niedziela',
       'Monday'                 => 'Poniedzia³ek',
       'Tuesday'                => 'Wtorek',
       'Wednesday'              => '¦roda',
       'Thursday'               => 'Czwartek',
       'Friday'                 => 'Pi±tek',
       'Saturday'               => 'Sobota',
       # Name of weekdays, abbreviation
       'Sun'                    => 'Ndz',
       'Mon'                    => 'Pon',
       'Tue'                    => 'Wt',
       'Wed'                    => '¦r',
       'Thu'                    => 'Czw',
       'Fri'                    => 'Pt',
       'Sat'                    => 'Sob',
       # Name of weekdays, abbreviated even more
       'Su'                     => 'Nd',
       'Mo'                     => 'Po',
       'Tu'                     => 'Wt',
       'We'                     => '¦r',
       'Th'                     => 'Cz',
       'Fr'                     => 'Pt',
       'Sa'                     => 'So',
       
       # Month Names  
       'January'                => 'Styczeñ', 
       'February'               => 'Luty',
       'March'                  => 'Marzec',   
       'April'                  => 'Kwiecieñ',   
       'May_'                   => 'Maj',     #! the full month of May, to distingsh with the abbreviation
       'June'                   => 'Czerwiec',    
       'July'                   => 'Lipiec',    
       'August'                 => 'Sierpieñ',
       'September'              => 'Wrzesieñ',
       'October'                => 'Pa¼dziernik',
       'November'               => 'Listopad',
       'December'               => 'Grudzieñ',
       # Month Names, abbreviation
       'Jan'                    => 'Sty',
       'Feb'                    => 'Lut',
       'Mar'                    => 'Mar',
       'Apr'                    => 'Kwi',
       'May'                    => 'Maj',
       'Jun'                    => 'Cze',
       'Jul'                    => 'Lip',
       'Aug'                    => 'Sie',
       'Sep'                    => 'Wrz',
       'Oct'                    => 'Pa¼',
       'Nov'                    => 'Lis',
       'Dec'                    => 'Gru',

       # repeating rules 
       'OneTime'                => 'raz',                   # one time event
       'Daily'                  => 'codziennie',                      
       'Weekly'                 => 'co tydzieñ',
       'Every2Weeks'            => 'co 2 tygodnie',
       'MonthlyByDate'          => 'co miesi±c danego dnia',
       'MonthlyByWeekday'       => 'co miesi±c danego dnia tygodnia',         # e.g. the 3rd Friday of every month
       'Yearly'                 => 'co rok',
       'MTWThF'                 => 'od poniedzia³ku do pi±tku',
       'MWF'                    => 'poniedzia³ek ¶roda pi±tek',
       'TTh'                    => 'wtorek czwartek',
       'YearlyByMonthWeekday'   => 'co rok danego dnia miesi±ca',    # e.g. the first Monday of June, yearly
       'EveryOtherDay'          => 'ka¿degop innego dnia',
       'Every3rdDay'            => 'ka¿dego trzeciego dnia',
       'Every4thDay'            => 'ka¿dego czwartego dnia',
       'Every5thDay'            => 'ka¿dego pi±tego dnia',
       'Every6thDay'            => 'ka¿dego szóstego dnia',

       # event types
       'Appointment'            => 'Spotkanie',
       'Todo'                   => 'Do zrobienia',
       'Meeting'                => 'Zebranie',
       'Special'                => 'Specjalne',            # for holidays, event require no specific time

       # option button names
       'CalendarOptions'        => 'Opcje kalendarza',   # title of the options page
       'Compare'                => 'Porównaj',            # Button: compare calendars and find conflicts ...
       'Search'                 => 'Szukaj',             # Button:
       'GotoDate'               => 'Id¼DoDaty',           # Button:
       'Previous'               => 'Poprzedni',           # previous Month/Day/Week 
       'Today'                  => 'Dzisiaj',              # This Month/Day/Week 
       'Next'                   => 'Nastêpny',               # next Month/Day/Week 
       'Options'                => 'Opcje',            # Button: go to options page 
       'Admin'                  => 'Admin',              # Button: go to admin page
       'Logout'                 => 'Wyloguj siê',             # Button: go to logout page
       'DayView'                => 'Widok dnia',           # Alt name under the image buttons
       'WeekView'               => 'Widok tygodnia',
       'MonthView'              => 'Widok miesi±ca',
       'YearView'               => 'Widok roku',
       

       'SetupYourCalendar'     => 'Skonfiguruj swój kalendarz', # title       
       'YourCalendarName'       => 'Nazwa kalendarza',
       'YourEmailAddress'       => 'Twój adres email',
       'YourName'               => 'Twoje imiê i nazwisko',
       'Password'               => 'Has³o',
       'RetypePassword'         => 'Powtórz has³o',
       'CalendarType'           => 'Rodzaj kalendarza',
       'Public'                 => 'Publiczny',
       'Private'                => 'Prywatny',
       'ForPrivateCalendar'     => 'Dla prywatnego kalendarza',
       'OthersSeeTextTime'      => 'Inni widz± tekst i czas',
       'OthersSeeTitle'         => 'Inni widz± nazwe zdarzenia',
       'OthersSeeTimeOnly'      => 'Inni widz± tylko czas',
       'OthersSeeNothing'       => 'Inni nic nie widz±',
       'PublicCalendar'         => 'Kalendarz publiczny',
       'Submit'                 => 'OK',
       'Cancel'                 => 'Anuluj',
       'TheName'                => 'Nazwa',
       'HasBeenTaken'           => 'jest juz zajêta',
       'PasswordMismatch'       => 'niezgodno¶æ hase³',
       'TryAgain'               => 'spróbuj jeszcze raz',
       'EmailIncomplete'        => 'Adres email jest niekompletny',
       'CannotCreateCalendar'   => 'Nie mogê utworzyæ Twojego kalendarza. Nazwa musi byæ poprawnym wyrazem',
       'CannotWriteInfoFile'    => 'Nie mo¿na zapisaæ do pliku info',
       'CannotWriteDataFile'    => 'Nie mo¿na zapisaæ do pliku danych',
       'CannotWritePasswordFile'=> 'Nie mo¿na zmieniæ pliku hase³',
       'Congratulations'        => 'Gratulacje',
       'SetupGreetingA'         => 'Twój kalendarz zosta³ utworzony. Jest dostêpny pod adresem',
       'SetupGreetingB'         => 'Zapamiêtaj swoje has³o - bêdzie potrzebne do dostêpu do kalendarza',
       'HaveToSupplyCalendarName' => 'Musisz podaæ nazwê kalendarza',
       'PleaseDoNotUseYourUnixAccountPassword' => 'Proszê _nie_ u¿ywaæ tego samego has³a jakie jest do systemu unix',
       
       
       # Event Editor Messages
       'EventEditor'            => 'Edytor zdarzeñ',
       'AppointmentEditor'      => 'Edytor spotkañ',
       'ToDoEditor'             => 'Edytor zadañ do zrobienia',
       'MeetingEditor'          => 'Edytor zebrañ',
       'SpecialEditor'          => 'Edytor zdarzeñ specjalnych',
       'AuthRequired'           => 'Do edycji tego kalendarza wymagana jest autoryzacja',
       'CurrentEvents'          => 'Aktualne zdarzenia',
       'Time'                   => 'Czas',
       'What'                   => 'Krótki opis',
       'Date'                   => 'Data',
       'Start'                  => 'Pocz±tek',
       'End'                    => 'Koniec',
       'Details'                => 'Szczegó³y',
       'Colors'                 => 'Kolory',
       'Privacy'                => 'Prywatno¶æ',         
       'Frequency'              => 'Czêstotliwo¶æ',
       'Reminders'              => 'Przypominanie',
       'Mail'                   => 'Poczta',
       'min'                    => 'min', # abbreviation of minute
       'mins'                   => 'minut',
       'hours'                  => 'godzin',
       'days'                   => 'dni',
       'weeks'                  => 'tygodni',
       'Occurs'                 => 'Pojawi siê',
       'For'                    => '',
       'times'                  => 'razy',   # as in repeat for 10 times 
       'Popup'                  => 'Popup',
       'Author'                 => 'Autor',
       'Blink'                  => 'Miganie',
       'Chime'                  => 'D¼wiêk',
       'Insert'                 => 'Wstaw',
       'InsertAsNew'            => 'Wstaw jako nowe zdarzenie',
       'Modify'                 => 'Zmieñ',
       'DeleteThisOne'          => 'Usuñ tylko to wyst±pienie tego zdarzenia',
       'DeleteAll'              => 'Usuñ wszystkie wyst±pienia tego zdarzenia',
       'Delete'                 => 'Usuñ',
       'Due'                    => 'Due', # as in Due Date
       'TaskDone'               => 'Zadanie zakoñczone',
       'RemindForward'          => 'Remind Forward',
       'Yes'                    => 'Tak',
       'No'                     => 'Nie',
       'Y'                      => 'T', # abbrieviation of Yes
       'N'                      => 'N', # abbrieviation of No
       'ToDo'                   => 'Do zrobienia',
       'Participants'           => 'Zapraszani',
       'none'                   => 'brak',
       'MailToAll'              => 'Email do wszystkich',
       'FindConflict'           => 'Znajd¼ konflikty',
       'NoTimeEvent'            => 'Zdarzenie bez czasu',
       'Fg'                     => 'Przód',
       'Bg'                     => 'T³o',
       'Error'                  => 'B³±d',
       'HasError'               => 'Wyst±pi³ b³±d podczas przetwarzania Twojego zapytania',
       'ListParticipants'       => 'Wpisz grupy zebrañ, nazwy kalendarzy lub adresy email wspó³uczestników. Ich kalendarze zostan± uaktualnione',
       'ConflictTable'          => 'Conflict Table',
       'Conflict'               => 'Konflikt',         
       'Table'                  => 'Tabela',         
       'You'                    => 'Ty',
       'NotAllowedToModify'     => 'nie jeste¶ uprawiony do zmian tego wpisu',
       'NotAllowedToEdit'       => 'nie jeste¶ uprawiony do edycji tego kalendarza',
       'Warning'                => 'Ostrze¿enie',
       'NoRemindForward'        => 'Cannot do remind forward for repeating to do tasks',
       'Acknowledgement'        => 'Potwierdzenie',
       'UpdatedOK'              => 'Kalendarz zaktualizowany pomy¶lnie',
       'BackToCalendar'         => 'Kliknij tutaj, aby wróciæ do swojego kalendarza',
       'OpenFailed'             => 'Nie mo¿na otworzyæ Twojego kalendarza',
       'NoCalendar'             => 'Wygl±da na to, ¿e nie masz swojego kalendarza',
       
       # goto page
       'Goto_Date'              => 'Id¼ do daty', #title
       'Goto'                   => 'Id¼ do',
       'SelectDate'             => 'Proszê wybraæ datê',
       'View'                   => 'Widok',
       'Go'                     => 'OK', # function as submit
       'Set'                    => 'ustawione', # as in set options
       
       # set options page
       'My_day_starts_at'       => 'Mój dzieñ zaczyna siê o',
       'ends_at'                => 'koñczy siê o',
       'Interval'               => 'Interval',
       'Week_starts_on',        => 'Tydzieñ, ',
       'include_weekend',       => 'do³±cz weekend',
       'Date_Format'            => 'Format daty',
       'Time_Format'            => 'Format czasu',
       'Time_zone'              => 'Strefa czasowa',
       'Default_view'           => 'Domy¶lny widok',
       'Default_Reminders'      => 'Domy¶lnie przypominanie',
       'ListEditors'            => 'Wybierz u¿ytkowników, którzy s± uprawnieni do edycji Twojego kalendarza',
       'Editors'                => 'Edytorzy',
       'Email'                  => 'Email',
       'Default'                => 'Domy¶lny',
       'Homepage'               => 'Strona domowa',
       'Language'               => 'Jêzyk',
       
       # admin page
       'Administration'         => 'Administracja',
       'adminDisabled'          => 'Administracja kalendarzem jest wy³±czona dla dostêpu publicznego',
       'Change_Password'        => 'Zmieñ has³o',
       'Old_Password'           => 'Stare has³o',
       'New_Password'           => 'Nowe has³o',
       'New_Password_Again'     => 'Ponownie nowe has³o',
       'to_be_used_by_meeting_editor' => 'która bêdzie u¿ywana przez edytor zebrañ',
       'Existing_Groups'        => 'Istniej±ce grupy',
       'Group_Name'             => 'Nazwa grupy',
       'ListGroupMembers'       => 'Wprowad¼ nazwy kalendarzy lub adresy email wspó³uczestników',
       'Merge_Calendars'        => 'Po³±cz kalendarze',

       'CalendarNames'          => 'Nazwy kalendarzy',
       'EraseCalendar'          => 'Wyczy¶æ mój kalendarz',
       'DeleteCalendar'         => 'Usuñ mój kalendarz',
       'errorPerm'              => 'Brak dostêpu',
       'calDeleted'             => 'Twój kalendarz zosta³ usuniêty',
       'ThankYou4Using'         => 'Dziêkujemy za korzystanie',
       'calErased'              => 'Twój kalendarz zosta³ wyczyszczony',
       'eraseFailed'            => 'Nie mo¿na wyczy¶ciæ Twojego kalendarza',
       'cpasswordWrong'         => 'B³±d autoryzacji: niepoprawne has³o',
       'ipasserror'             => 'Nie mo¿na otworzyæ pliku hase³, proszê spróbowaæ pó¼niej',
       'password_changed'       => 'Twoje has³o zosta³o zmienione',
       'cannot_open'            => 'Nie mo¿na otworzyæ',
       'Meeting_group'          => 'Grupa zebrañ',
       'updated'                => 'zaktualizowane pomy¶lnie',
       'new_entries'            => 'new entries added to your calendar',
       'Unknown_command'        => 'Nieznana komenda',
       
       
       # search page
       'Search_Calendar'        => 'Przeszukaj kalendarz',
       'Topic'                  => 'Temat',
       'SearchAll'              => 'Przeszukaj wszystko',
       'Search_From'            => 'Przeszukaj od',
       'To'                     => 'Do',
       'Search_Results'         => 'Szukaj w wynikach',
       'CalendarReminder'       => 'Calendar Reminder',
         
       # Greeting
       'WelcomeToWebCalendar'   => 'Witamy w WebCalendar',
       'PleaseSelectACalendar'  => 'Proszê wybraæ kalendarz',
       'PleaseEnterCalendarName'=> 'Proszê wprowadziæ nazwê kalendarza',

       #download
       'notAllowedToDownload'   => 'Nie jeste¶ uprawiony do pobrania tego kalendarza',
         
       #logout
       'AuthNotRequired'        => 'Uwaga: autoryzacja nie jest wymagana do przegl±dania kalendarzy publicznych',
       'logoutInstruction'      => 'W celu wylogowania siê kliknij przycisk wyloguj siê. Kiedy poka¿e siê okno logowania,<br> zaloguj siê jako anonim - has³o nie jest wymagane.',
       'loginInstruction'       => 'Aby zalogowaæ siê ponownie jako inny u¿ytkownik, kliknij przycisk login',
       'You_ve_logout'          => 'Wylogowa³e¶ siê',
       'access_denied'          => 'dostêp zabroniony',
       'login'                  => 'login',

       #compare
       'CompareCalendars'       => 'Porównaj kalendarze',
       'Enter_calendar_names'   => 'Wpisz nazwy kalendarzy',
       'or_meeting_group'       => 'lub gruby zebrañ',
       'EventsTable'            => 'Events Table',
       'Name'                   => 'Nazwa',
       'Events'                 => 'Zdarzenia',
       'ForegroundColor'        => 'Kolor tekstu',
       'BackgroundColor'        => 'Kolor t³a',

       # msg in the main
       'accessAnotherCal'        => 'Aby dostaæ siê do innego kalendarza, proszê',

       # Some missing phrases and addons ...
       'Close'                  => 'Zamknij',
       'ShowCombinedCalendar'   => 'Poka¿ kalendarz ³±czony',
       'CombinedCalendar'       => 'Kalendarz ³±czony',
       'Participants_are_allowed_to' => "Uprawnienia wspó³uczestników",
       'View_only'              => 'Tylko przegl±danie',
       'Edit'                   => 'Edycja',
       'EditAndDelete'          => 'Edycja i usuwanie',
       'Updated_calendars'      => 'Nastêpuj±ce kalendarze równie¿ zosta³y uaktualnione',
       'NotAllowedToUpdate'     => 'Nie jeste¶ uprawniony do edycji nastêpuj±cych kalendarzy',
       'invalid_date'           => 'Niepoprawna data',
       'Schedule'               => 'Schedule',            # as in 'schedule an appointment on calendar mzou
       'onCalendar'             => 'on calendar',          #
       'DeleteForward'          => 'Usuñ wszystkie nastêpne wyst±pienia tego zdarzenia',
       'All'                    => 'Wszystko',
       'SearchSubjectEmpty'	=> 'Nie mo¿na szukaæ pustego tematu',
       'Start_date'             => 'Start date',
       'is_after_due_date'      => 'is after due date',
       'Invalidusername'	=> 'Niepoprawna nazwa u¿ytkownika',
       'Protected'		=> '==chronione==',
       'Invalidcalendarname'	=> 'Niepoprawna nazwa kalendarza',
       'Couldnotfindcalendar' => 'Nie mo¿na znale¼æ kalendarza',
       'Invalidspooldir'      => 'Invalid spooldir',
       'ListView'             => 'Widok listy',
       'BlockView'            => 'Widok blokowy',

       # address book stuff
       'AddressBook'           => 'Ksi±¿ka adresowa',
       'AddressBookEditor'     => 'Edytor ksi±¿ki adresowej',
       'AddressBookUpdated'    => 'Ksi±¿ka adresowa zaktualizowana',
       'BackToAddressBook'     => 'Kliknij tutaj, aby wróciæ do swojej ksi±¿ki adresowej',
       'FirstName'             => 'Imiê',
       'LastName'              => 'Nazwisko',
       'Address'               => 'Adres',
       'Phone'                 => 'Telefon',
       'Fax'                   => 'Fax',
       'Info'                  => 'Info',
       'Affiliation'           => 'Powi±zania',
       'Where'                 => 'Where',
       'Priority'              => 'Priorytet',
       'Diary'                 => 'Pamiêtnik',
       'DiaryUpdated'          => 'Pamiêtnik zaktualizowany',
       'ReadDiary'             => 'Czytaj pamiêtnik',       
       'From'                  => 'Od',
       'PlainText'             => 'Zwyk³y tekst',
       'Html'                  => 'Html',
       'SearchDiary'           => 'Przeszukaj pamiêtnik',
       'SearchFor'             => 'Szukaj',
       'NeedAuth2Proceed'      => 'Do przegl±dania lub edycji wymagana jest autoryzacja. Proszê klikn±æ przycisk login aby siê zalogowaæ lub klikn±æ przycisk kalendarza, by wróciæ do swojego kalendarza.',

       # Priority of ToDo tasks
       'Urgent'                => 'Pilne',
       'High'                  => 'Wysoki',
       'Medium'                => '¦redni',
       'Low'                   => 'Niski',       

       # find calendar names
       'FindCalNames'          => 'Znajd¼ kalendarze',

       # overlapping 
       'AllowOverlap'          => 'Pozwól na "nak³adanie siê zdarzeñ"',
       'GoBack'                => 'Wróæ',  #

       'OverlapInstr'          => 'To zdarzenie zosta³o odrzucone, poniewa¿ "nachodzi" na inne zdarzenia lub zdarzenia juz istniej±ce w kalendarzu (spójrz na tabelê).
Je¶li na pewno chcesz dodaæ to zdarzenie do kalendarza, cofnij siê do poprzedniej strony, zaznacz <b>T</b> przy pozwól na nak³adanie siê zdarzeñ i spróbuj ponownie.',

       'signup'                 => 'Zapisz siê',
       'Invalidpassword'	=> 'Niepoprawne has³o',
       'olduserInstruction'     => 'Mam ju¿ swój kalendarz',
       'newuserInstruction'     => 'Jestem nowym u¿ytkownikiem',
       'PleaseLogin'            => 'Wymagana jest autoryzacja. Proszê siê zalogowaæ!',
       'NextNew'		=> 'Nastêpne nowe zdarzenie',
       'RememberIDPswd'         => 'Zapamiêtaj nazwê u¿ytkownika i has³o (¿eby nie trzeba by³o wpisywaæ ich nastêpnym razem)',
       'global'                 => 'Global', # mark global meeting group
       'groupnametaken'         => 'Taka nazwa grupy zebrañ ju¿ istnieje, proszê wybraæ inn±',
       'deleteEventsBefore'     => 'Skasuj wszystkie zdarzenia przed',
       'AutoStart'              => 'Autostart WebCalendar',
       'Readers'                => 'Obserwatorzy',
       'ListReaders'            => 'Wybierz u¿ytkowników, którzy s± uprawnieni do przegl±dania Twojego kalendarza',
       'Print'			=> 'Drukuj',
       'mailVcal'		=> 'Do³±czaæ VCALENDAR w przypomnieniach mailem?',
       'FriendsEmail'		=> 'Adres email znajomego',
       'PersonalMessage'	=> 'Add a Personal Message',
       'Mail2Friend'		=> 'Wy¶lij to zdarzenie znajomemu',
       'MailSentTo'		=> 'Wpis kalendarza zosta³ wys³any do ',
       'Location'               => 'Umiejscowienie',
       # the next line is used in a confirmation popup when a user is modifying 
       # an repeating event. The date displayed is the current date, normally 
       # it is not the initial starting date of the event.
       'CalendarFormat'			=> 'Format kalendarza',
       'CalendarFile'			=> 'Plik kalendarza',
       'SetupGreetingC'         => 'Proszê wej¶æ na stronê (link poni¿ej) i dokoñczyæ konfiguracjê swojego kalendarza.',
       'Email2Selected'		=> 'Wy¶lij email do wszystkich zaznaczonych',
       'AddNewEmail'		=> 'Dodaj nowy adres email do mojej ksi±¿ki adresowej',
       'ContactP'		=> 'Osoba kontaktowa',
       'ContactE'		=> 'Email do osoby kontaktowej',
       'DailyReminder'		=> 'Wysy³aæ powiadomienia dzienne?',
       'CompletedTasks'		=> 'Zadania zakoñczone',
       'PendingTasks'		=> 'Zadania oczekuj±ce',
       'Import2Cal'		=> 'Importuj to zdarzenie do kalendarza',
       'ViewOnly'		=> 'Or choose a calendar to view',
       'newLogin'		=> 'lub zaloguj siê jako inny u¿ytkownik', 
       'QuickAdd'		=> 'Szybkie dodawanie',
       'Event'                  => 'Zdarzenie',
       'TodoList'               => 'Lista do zrobienia',
       'MarkComplete'		=> 'Ustaw zaznaczone jako zrobione',
       'DeleteChecked'		=> 'Usuñ zaznaczone',
       'AddNewTask'             => 'Dodaj nowe zadanie',
       'TaskManager'            => 'Zarz±dca zadañ',
       'WarnInvitee'		=> 'Czy na pewno chcesz wstawiæ to zdarzenie do nastêpuj±cych kalendarzy?',
       'creationDisabled'	=> 'Przykro nam, tworzenie kalendarzy jest zablokowane przez administratora. Jesli chcesz utworzyæ swój kalendarz zg³o¶ siê do administratora (email: kalendarz@nencki.gov.pl).',
       'RequestRSVP'            => '¯±daj potwierdzenia',
       'invitationAccepted'     => 'Zaakceptowane',
       'invitationDeclined'     => 'Odrzucone',
       'AttendanceConfirmation' => 'Meeting Attendance Confirmation',
       'AcceptInvitation'         => 'Zaakceptuj zaproszenie',
       'DeclineInvitation'      => 'Odrzuæ zaproszenie',
       'Undecided'		=> 'Undecided',
       'Category'		=> 'Kategoria',
       'Speaker'		=> 'Speaker',
       'Header'			=> 'Nag³ówek',
       'Footer'			=> 'Stopka',
       'HeaderFooter'		=> 'Wpisz spersonalizowany kod html nag³ówka/stopki',
       'MiscInfo'		=> 'Misc. Info',
       'Description'		=> 'Opis',
       'AllDay'			=> 'Ca³y dzieñ',
       'Tomorrow'		=> 'Jutro',
       'ThisWeek'		=> 'Ten tydzieñ',
       'ThisMonth'		=> 'Ten miesi±c',
       'Keyword'		=> 'S³owo kluczowe',
       'NoEvents'		=> 'Brak zdarzeñ',
       'EditThis'		=> 'Edytuj to zdarzenie',
       'recurFormat'            => 'Occurs %s for %d times, starting on %s.', # used in formating
       'taskDoneFormat'		=> 'Completed by %s on %s at %s', # formating, eg. by Jone on Mon 12/11 at 5pm


       'warnModify'	       => '
Zamierzasz zmieniæ powtarzaj±ce siê zdarzenie. Pokazana data nie
jest oryginaln± dat± powtarzaj±cego siê zdarzenia. Je¶li
mimo to zmienisz to zdarzenie, jego powtórzenia bêd± ustawione
od nowej daty i wszystkie ukryte informacje takie jak np. wyj±tki
od dat lub potwierdzenia spotkañ zostan± usuniête.
Musisz potwierdziæ czy na pewno chcesz to zrobiæ.

Zmiana pojedynczego zdarzenia w ci±gu zdarzeñ powtarzaj±cych siê
nie jest mo¿liwa. Mo¿liwe \'obej¶cie\' tego problemu: usuñ to
konkretne zdarzenie i wprowad¼ nowe na jego miejsce.

Oryginalna data tego zdarzenia: ',

       'gEventError'		=> 'Próbowa³e¶ usun±æ czê¶æ wyst±pieñ tego zdarzenia bez odpowiednich
uprawnieñ. Nie jest to dozwolone poniewa¿ mo¿e \'rozsynchronizowaæ\' Twój kalendarz z innymi kalendarzami w grupie.
Mo¿esz jednak usun±æ wszystkie wyst±pienia tego zdarzenia klikaj±c przycisk
\'Usuñ wszystkie wyst±pienia tego zdarzenia\' na ekranie edycji zdarzenia',

       'City'                  => 'Miasto',
       'State'                 => 'Stan',
       'Zip'                   => 'Kod',
       'Country'               => 'Kraj',


       'ResetPasswd'           => 'Zmieñ has³o u¿ytkownika',
       'File'                  => 'Plik',
       'AlreadyOnCalendar'     => 'Nastêpuj±ce zdarzenia ju¿ s± w Twoim kalendarzu.',
       'ImportFileTitle'         => 'Importuj z pliku vCalendar',
       'ImportFileInstruction'   => 'Aby zaimportowaæ z vCalendar, wpisz w polu tekstowym pe³n± ¶cie¿kê dostêpu do niego i kliknij przycisk OK. Je¶li nie jeste¶ pewny jaka jest pe³na ¶cie¿ka dostêpu, kliknij przycisk Przegl±daj i wybierz plik.',
       'ImportVcal'		=> 'Importuj zdarzenie z vCalendar',
       'ImportVcalInstruction'	=> 'Ewentualnie skopiuj tekst z vCalendar, wklej do pola tekstowego i kliknij przycisk OK.',


       # new phrases

       'DetailedWorkingHours'   => 'Godziny pracy poszczególnych dni', 
       'SelectAttendee' => 'Nazwy kalendarzy, adresy email, grupy zebrañ i ich kombinacje mog± byæ u¿ywane do wprowadzenia wspó³uczestników. Mo¿esz wybraæ nazwy kalendarzy z listy po lewej stronie lub wpisaæ je w polu wy¿ej. Adresy email musz± byæ wpisane w polu wy¿ej. Grupy zebrañ (je¶li jakie¶ s±), mog± byæ wybrane z menu "Grupy zebrañ". Mo¿esz równie¿ wpisaæ te grupy w polu wy¿ej. Poszczególne nazwy/adresy/grupy powinny byæ oddzielone spacjami lub przecinkami.',

       'MkEditorListInstruction' => 'Aby pozwoliæ znajomym lub wspó³pracownikom na edycjê Twojego kalendarza, wybierz nazwy ich kalendarzy z listy po lewej stronie. Mo¿esz równie¿ wpisaæ nazwy ich kalendarzy w polu wy¿ej.',

       'MkReaderListInstruction' => 'Je¶li Twój kalendarz jest zabezpieczony przed odczytem przez inne osoby nikt nie mo¿e przegl±daæ Twoich wpisów. Wybranym u¿ytkownikom mo¿esz pozwoliæ na przegl±danie Twojego kalendarza, tworz±c listê obserwatorów. Lista ta zawiera nazwy kalendarzy tych osób, którym chcesz umo¿liwiæ przegl±danie swoich wpisów. Nazwy kalendarzy mo¿esz wybraæ z listy po lewej stronie lub wpisaæ je w polu wy¿ej.',

       'MkGroupInstruction'=> 'Nazwy kalendarzy lub adresy email mog± byæ u¿ywane do identyfikowania cz³onków grup roboczych. Mo¿esz wybraæ nazwy kalendarzy z listy po lewej stronie albo wpisaæ je w polu wy¿ej. Adresy email mog± byæ wprowadzone tylko w polu wy¿ej.',
       'Contacts'	   => 'Kontakty',
       'Tasks'		   => 'Zadania',
       'Day'		   => 'Dzieñ',
       'Week'		   => 'Tydzieñ',
       'Month'		   => 'Miesi±c',
       'Year'		   => 'Rok',
       'OffDutyHours'	   => 'Off Duty Hours',
       'AddNewAddress'	   => 'Dodaj nowy adres',
       'HeaderColor'	   => 'Kolor nag³ówka',
       'Never'		   => 'Nigdy',
       'OverlapNotAllowed' => '\"Nak³adanie siê\" zdarzeñ nie jest dozwolone.',
       'Notes'		   => 'Notes',
       'PostIt'		   => 'PostIt',   # as in post it notes
       'Title'		   => 'Tytu³',
       'AddNewNote'	   => 'Dodaj now± notatkê',
       
       'InterestedCalendars' => 'Wybierz wszystkie kalendarze, które prawdopodobnie bêdziesz przegl±da³ lub edytowa³.', 
       'CalendarListInstruction' => 'Je¶li nie chcesz widzieæ d³ugiej listy kalendarzy w menu wyboru, mo¿esz stworzyæ krótk± listê. Wpisz nazwy kalendarzy w polu wy¿ej lub wybierz je z listy po lewej stronie. Utworzona lista bêdzie wy¶wietlana wszêdzie tam, gdzie jest menu wyboru kalendarza.',

       'MasterHeadInput'  => 'Sposób wyboru kalendarza w menu g³ównym',
       'TextEntry'	  => 'Pole tekstowe',
       'PulldownMenu'     => 'Rozwijane menu',

       'LockWarning'      => 'Twój kalendarz zosta³ zmodyfikowany podczas przetwarzania Twojego polecenia.
Aby zachowac zbie¿no¶æ informacji, Twoje polecenie zosta³o odrzucone. Cofnij siê i spróbuj jeszcze raz.',

       'IUpload'	  => 'Wgraj obrazek', 
       'FUpload'	  => 'Wgraj plik',        
       'IUploadInstruction' => 'W celu wgrania pliku z obrazem wpisz pe³n± ¶cie¿kê dostêpu do niego
w polu tekstowym i kliknij przycisk Submit. Je¶li nie znasz dok³adnej ¶cie¿ki mo¿esz klikn±æ
przycisk Browse i wybraæ ten plik.',
       'IUploadAck'	  => 'Obraz wgrany. Aby wstawiæ obraz do tytu³u zdarzenia lub opisu, wytnij poni¿sz± liniê i wstaw
j± w odpowiednie pole tekstowe. Pamiêtaj, ¿e wstawianie obrazów mo¿e wymagaæ akceptacji administratora, co oznacza,
¿e obra¿ mo¿e nie byæ widoczny od razu.',
       'ReviewUI'  => 'Przejrzyj wgrania obrazów u¿ytkowników',
       'ApproveChecked' => 'Zatwierd¼ zaznaczone',	   
       'RejectChecked' => 'Odrzuæ zaznaczone',	   
       'Export2Vcal'   => 'Eksportuj swój kalendarz w formacie vCal',
       'CreateNewCal'  => 'Utwórz nowy kalendarz',
       'UsableImgs'    => 'Usable Images',
       'UImageInst'    => 'W celu wstawienia obrazu do tytu³u lub opisu zdarzenia, wytnij i wklej w odpowiednie pole tekstowe jego nazwê
(w³±czaj±c \\^o^/).',

	'CheckAll'     => 'Zaznacz wszystkie',
	'UncheckAll'   => 'Odznacz wszystkie',
        'Export2VCard' => 'Eksportuj ksi±¿kê adresow± do vCard',
	'ImportVcard'  => 'Importuj informacje o kontakcie z vCard',
        'ImportVCardTitle'  => 'Importuj z vCard',
        'ImportVcardInstruction' => 'Ewentualnie skopiuj tekst z vCard, wklej do pola tekstowego i kliknij przycisk OK.',
        'ImportVcardFileInstruction'   => 'Aby zaimportowaæ z vCard, wpisz w polu tekstowym pe³n± scie¿kê dostêpu do niej i kliknij przycisk OK. Je¶li nie jeste¶ pewny jaka jest pe³na ¶cie¿ka dostêpu, kliknij przycisk Przegl±daj i wybierz plik.',
        'AlreadyInAddressbook' => 'Te wpisy ju¿ s± w Twojej ksi±¿ce adresowej.',
	
	'DpyETimeAs' => 'Wy¶w. czas zdarzenia jako',
	'MasterheadTabs' => 'Menu g³ówne',

 	'DeferConfirmation'     => 'Potwierdzenie od³ó¿ na pó¼niej',
	'Unconfirmed'           => 'Niepotwierdzone',     # unconfirmed invitation

	'SendMailUsing'         => 'Wy¶lij email jako', #	html, txt or vcal
         # used as in
         # send mail <> immediately or <> <hours> before event
        'Sendmail'              => 'Wy¶lik email',
        'immediately'           => 'natychmiast',
        'or'                    => 'lub',
        'beforeEvent',          => 'przed zdarzeniem',
        'Cancelled'             => 'Anulowane',

        'AddNewEntry'		=> 'Dodaj nowy wpis',
	'SearchNotes'		=> 'Przeszukaj notes',
	'SearchAddress'		=> 'Przeszukaj ksi±¿kê adresow±',

	'Week_begins_on'	=> 'Pocz±tek tygodnia w',
	'StartDate'		=> 'Data rozpoczêcia',
	'DueDate'		=> 'Data zakoñczenia',
	'DueTime'		=> 'Czas zakoñczenia',
	'Overdue'		=> 'Zaleg³e',
	'EventDates'		=> 'Daty zdarzeñ', 

	'SpecialEvents'		=> 'Zdarzenia specjalne',

	'RemindForwardNewTask'  => 'Set Remind Forward on New Tasks',
	'DispCompletedTasks'    => 'Wy¶wietl w kalendarzu zadania zakoñczone',
	'TaskOptions'		=> 'Opcje zadañ',
        'DoneOn'		=> 'Zrobione %s przez %s', # used to display completed tasks, like 'Done on 03/19/2002', 

	'DetailedView'		=> 'Widok szczegó³owy',
        'CombinedView'		=> 'Widok po³±czony',
        'BannerView'		=> 'Widok z wyszczególnionymi godzinami',
	'TooltipDelay'		=> 'Opó¼nienie podpowiedzi (w milisekundach)',	
	'DayViewOptions'        => 'Opcje widoku dnia',
	'More'			=> 'Wiêcej',

	'G_A_Notes'		=> 'Dostêp do notesu',
	'G_A_Address'		=> 'Dostêp do ksi±¿ki adresowej',	  
	'G_A_Diary'		=> 'Dostêp do pamiêtnika',
	'OwnerOnly'		=> 'Tylko w³a¶ciciel',
	'Everyone'		=> 'Wszyscy',

        'DpyAuthorName'         => 'Sposób wy¶wietlania autora', # real name, calendar name or both
        'RealName'              => 'Imiê i nazwisko',
        'CalendarName'          => 'Nazwa kalendarza',
        'Rname_Cname'           => 'Imiê i nazwisko i nazwa kalendarza',

	'DescriptiveName'	=> 'Krótki opis',
        'OwnerName'             => 'Imiê i nazwisko w³a¶ciciela',
        'OwnerEmailAddress'     => 'Adres email w³a¶ciciela',
        'OwnerHomepage'         => 'Strona www w³a¶ciciela',

	'Label'			=> 'Etykieta',
	'PredefineColorPairs'	=> 'Zdefiniuj pary kolorów (przód/t³o) dla', 

	#========= The 16 common colors used on the web==================
	'Black'  => 'Czarny',         #      #000000,  
	'Silver' => 'Srebrny',        #      #C0C0C0,
	'Gray'   => 'Szary',          #      #808080,
	'White'  => 'Bia³y',       #      #FFFFFF,
	'Maroon' => 'Kasztanowy',     #      #800000,
	'Red'    => 'Czerwony',       #      #FF0000,
	'Purple' => 'Fioletowy',      #      #800080,
	'Fuchsia'=> 'Fuksja',         #      #FF00FF,
	'Green'  => 'Zielony',        #      #008000,
	'Lime'   => 'Lime',           #      #00FF00,
	'Olive'  => 'Oliwkowy',       #      #808000,
	'Yellow' => '¯ó³ty', #      #FFFF00,
	'Navy'   => 'Navy',           #      #000080,
	'Blue'   => 'Bia³y',       #      #0000FF,
	'Teal'   => 'Teal',           #      #008080,
	'Aqua'   => 'Morski',         #      #00FFFF,
	#=================================================================

	'Font'        => 'Czcionka',
	'DefineFonts'      => 'Utwórz style czcionek',
	'FontsStyles'      => 'Style czcionek',

	'DependentCals'	   => 'Zale¿no¶æ kalendarzy',
	'DepCalInstruction' => 'Wybierz wszystkie kalendarze, od których zale¿y ten kalendarz. Na przyk³ad: je¶li projektor jest zainstalowany w sali konferencyjnej, dostêpno¶æ projektora zale¿y od dostêpno¶ci sali konferencyjnej. Rezerwacja projektora jest jednocze¶nie rezerwacj± sali konferencyjnej. W tym przyk³adzie kalendarz projektora zale¿y od kalendarza sali konfrencyjnej. Zdarzenia zaplanowane w kalendarzu projektora automatycznie zostan± do³±czone do kalendarza sali konferencyjnej.',

     'ListAuthors'	=> 'Akceptuj zdarzenia od',
     'AuthorInstruction' => 'Domy¶lnie ka¿dy u¿ytkownik kalendarza mo¿e ustawiaæ zdarzenia
grupowe w Twoim kalendarzu. Aby zmieniæ takie zachowanie, wybierz z listy te kalendarze, których
w³a¶ciciele mog± wstawiaæ po³±czone zdarzenia do Twojego kalendarza. Je¶li nie chcesz
przyjmowaæ ¿adnych zdarzeñ grupowych, zaznacz tylko swój kalendarz.
Je¶li ¿aden kalendarz nie jest zaznaczony, oznacza to, ¿e ka¿dy mo¿e wstawiaæ zdarzenia
grupowe.',

   'EventInterval'	 => 'Domy¶lny czas trwania zdarzenia',
   'PublicOpen'             => 'Publiczny-otwarty',
   'PublicModerated'        => 'Publiczny-moderowany',
   'Pending'		    => 'Nie zatwierdzone',
   'Mail2Author'	    => 'Email do autora',


   'ClearCache'             => 'Wyczy¶æ pamiêæ podrêczn±',
   'color2'		    => 'Drugi kolor t³a w widoku miesi±ca',  
   'semails'		    => 'Select Invitee From Address Book', 
   'addinvitee'		    => 'Add Selected to Invitee list', 
   'Select'		    => 'Wybierz',
   'IgnoreCCal'		    => 'Ignoruj kalendarz korporacyjny',
   'ResrcCal'		=> 'Czy ten kalendarz jest kalendarzem ¼ród³owym?',
   'AllowAP'            => 'Je¶li to jest kalendarz publiczny, to czy pozwalaæ na anonimowe wpisy?',

   'orIndefinitely'     => 'lub bez okre¶lania ilo¶ci powtórzeñ', # used as in: occurs daily for 5 times or indefinitely
   'remindOnce'		=> 'Je¶li to zdarzenie powtarza siê, przypomnij tylko przy pierwszym wyst±pieniu',
   'applyReminders'     => 'Zastosowaæ do tego zdarzenia przypominanie domy¶lne?',
   'NotifyAP'           => 'Je¶li jest to kalendarz publiczny moderowany, to powiadamiaæ w³a¶ciciela o nowych wpisach?',
   'Preferences'        => 'Ustawienia',
   'Appearance'         => 'Wygl±d',
   'TabColor'           => 'Kolor t³a zak³adek',
   'TabHColor'          => 'Kolor zak³adek po wskazaniu myszk±',  
   'StyleSheet'		=> 'Styl',
   'OrTimeOffset'	=> 'lub podaj ró¿nicê miêdzy czasem lokalnym i czasem serwera (+-HH:MM)', 
   'ServerTime'		=> 'Bie¿±cy czas serwera',
   'catfilter'		=> 'Czy chcesz w³±czyæ filtrowanie kategorii?',
   'popdetail'		=> 'Czy chcesz widzieæ szczegó³y zdarzenia w okienku popup?',
   'WeekViewOptions'    => 'Opcje widoku tygodnia',
   'orUntilDate'	=> 'lub a¿ do daty',

   'Freebusytable'	=> 'Free busy table',
   'VirtualGroup'	=> 'Virtual Calendar Group',
   'wcf'		=> 'zale¿nie od tego, które wyst±pi wcze¶niej',
   'pendmsg'		=> 'Powiadom autora o decyzji mailem',

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











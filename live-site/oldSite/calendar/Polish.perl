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
       'Monday'                 => 'Poniedzia�ek',
       'Tuesday'                => 'Wtorek',
       'Wednesday'              => '�roda',
       'Thursday'               => 'Czwartek',
       'Friday'                 => 'Pi�tek',
       'Saturday'               => 'Sobota',
       # Name of weekdays, abbreviation
       'Sun'                    => 'Ndz',
       'Mon'                    => 'Pon',
       'Tue'                    => 'Wt',
       'Wed'                    => '�r',
       'Thu'                    => 'Czw',
       'Fri'                    => 'Pt',
       'Sat'                    => 'Sob',
       # Name of weekdays, abbreviated even more
       'Su'                     => 'Nd',
       'Mo'                     => 'Po',
       'Tu'                     => 'Wt',
       'We'                     => '�r',
       'Th'                     => 'Cz',
       'Fr'                     => 'Pt',
       'Sa'                     => 'So',
       
       # Month Names  
       'January'                => 'Stycze�', 
       'February'               => 'Luty',
       'March'                  => 'Marzec',   
       'April'                  => 'Kwiecie�',   
       'May_'                   => 'Maj',     #! the full month of May, to distingsh with the abbreviation
       'June'                   => 'Czerwiec',    
       'July'                   => 'Lipiec',    
       'August'                 => 'Sierpie�',
       'September'              => 'Wrzesie�',
       'October'                => 'Pa�dziernik',
       'November'               => 'Listopad',
       'December'               => 'Grudzie�',
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
       'Oct'                    => 'Pa�',
       'Nov'                    => 'Lis',
       'Dec'                    => 'Gru',

       # repeating rules 
       'OneTime'                => 'raz',                   # one time event
       'Daily'                  => 'codziennie',                      
       'Weekly'                 => 'co tydzie�',
       'Every2Weeks'            => 'co 2 tygodnie',
       'MonthlyByDate'          => 'co miesi�c danego dnia',
       'MonthlyByWeekday'       => 'co miesi�c danego dnia tygodnia',         # e.g. the 3rd Friday of every month
       'Yearly'                 => 'co rok',
       'MTWThF'                 => 'od poniedzia�ku do pi�tku',
       'MWF'                    => 'poniedzia�ek �roda pi�tek',
       'TTh'                    => 'wtorek czwartek',
       'YearlyByMonthWeekday'   => 'co rok danego dnia miesi�ca',    # e.g. the first Monday of June, yearly
       'EveryOtherDay'          => 'ka�degop innego dnia',
       'Every3rdDay'            => 'ka�dego trzeciego dnia',
       'Every4thDay'            => 'ka�dego czwartego dnia',
       'Every5thDay'            => 'ka�dego pi�tego dnia',
       'Every6thDay'            => 'ka�dego sz�stego dnia',

       # event types
       'Appointment'            => 'Spotkanie',
       'Todo'                   => 'Do zrobienia',
       'Meeting'                => 'Zebranie',
       'Special'                => 'Specjalne',            # for holidays, event require no specific time

       # option button names
       'CalendarOptions'        => 'Opcje kalendarza',   # title of the options page
       'Compare'                => 'Por�wnaj',            # Button: compare calendars and find conflicts ...
       'Search'                 => 'Szukaj',             # Button:
       'GotoDate'               => 'Id�DoDaty',           # Button:
       'Previous'               => 'Poprzedni',           # previous Month/Day/Week 
       'Today'                  => 'Dzisiaj',              # This Month/Day/Week 
       'Next'                   => 'Nast�pny',               # next Month/Day/Week 
       'Options'                => 'Opcje',            # Button: go to options page 
       'Admin'                  => 'Admin',              # Button: go to admin page
       'Logout'                 => 'Wyloguj si�',             # Button: go to logout page
       'DayView'                => 'Widok dnia',           # Alt name under the image buttons
       'WeekView'               => 'Widok tygodnia',
       'MonthView'              => 'Widok miesi�ca',
       'YearView'               => 'Widok roku',
       

       'SetupYourCalendar'     => 'Skonfiguruj sw�j kalendarz', # title       
       'YourCalendarName'       => 'Nazwa kalendarza',
       'YourEmailAddress'       => 'Tw�j adres email',
       'YourName'               => 'Twoje imi� i nazwisko',
       'Password'               => 'Has�o',
       'RetypePassword'         => 'Powt�rz has�o',
       'CalendarType'           => 'Rodzaj kalendarza',
       'Public'                 => 'Publiczny',
       'Private'                => 'Prywatny',
       'ForPrivateCalendar'     => 'Dla prywatnego kalendarza',
       'OthersSeeTextTime'      => 'Inni widz� tekst i czas',
       'OthersSeeTitle'         => 'Inni widz� nazwe zdarzenia',
       'OthersSeeTimeOnly'      => 'Inni widz� tylko czas',
       'OthersSeeNothing'       => 'Inni nic nie widz�',
       'PublicCalendar'         => 'Kalendarz publiczny',
       'Submit'                 => 'OK',
       'Cancel'                 => 'Anuluj',
       'TheName'                => 'Nazwa',
       'HasBeenTaken'           => 'jest juz zaj�ta',
       'PasswordMismatch'       => 'niezgodno�� hase�',
       'TryAgain'               => 'spr�buj jeszcze raz',
       'EmailIncomplete'        => 'Adres email jest niekompletny',
       'CannotCreateCalendar'   => 'Nie mog� utworzy� Twojego kalendarza. Nazwa musi by� poprawnym wyrazem',
       'CannotWriteInfoFile'    => 'Nie mo�na zapisa� do pliku info',
       'CannotWriteDataFile'    => 'Nie mo�na zapisa� do pliku danych',
       'CannotWritePasswordFile'=> 'Nie mo�na zmieni� pliku hase�',
       'Congratulations'        => 'Gratulacje',
       'SetupGreetingA'         => 'Tw�j kalendarz zosta� utworzony. Jest dost�pny pod adresem',
       'SetupGreetingB'         => 'Zapami�taj swoje has�o - b�dzie potrzebne do dost�pu do kalendarza',
       'HaveToSupplyCalendarName' => 'Musisz poda� nazw� kalendarza',
       'PleaseDoNotUseYourUnixAccountPassword' => 'Prosz� _nie_ u�ywa� tego samego has�a jakie jest do systemu unix',
       
       
       # Event Editor Messages
       'EventEditor'            => 'Edytor zdarze�',
       'AppointmentEditor'      => 'Edytor spotka�',
       'ToDoEditor'             => 'Edytor zada� do zrobienia',
       'MeetingEditor'          => 'Edytor zebra�',
       'SpecialEditor'          => 'Edytor zdarze� specjalnych',
       'AuthRequired'           => 'Do edycji tego kalendarza wymagana jest autoryzacja',
       'CurrentEvents'          => 'Aktualne zdarzenia',
       'Time'                   => 'Czas',
       'What'                   => 'Kr�tki opis',
       'Date'                   => 'Data',
       'Start'                  => 'Pocz�tek',
       'End'                    => 'Koniec',
       'Details'                => 'Szczeg�y',
       'Colors'                 => 'Kolory',
       'Privacy'                => 'Prywatno��',         
       'Frequency'              => 'Cz�stotliwo��',
       'Reminders'              => 'Przypominanie',
       'Mail'                   => 'Poczta',
       'min'                    => 'min', # abbreviation of minute
       'mins'                   => 'minut',
       'hours'                  => 'godzin',
       'days'                   => 'dni',
       'weeks'                  => 'tygodni',
       'Occurs'                 => 'Pojawi si�',
       'For'                    => '',
       'times'                  => 'razy',   # as in repeat for 10 times 
       'Popup'                  => 'Popup',
       'Author'                 => 'Autor',
       'Blink'                  => 'Miganie',
       'Chime'                  => 'D�wi�k',
       'Insert'                 => 'Wstaw',
       'InsertAsNew'            => 'Wstaw jako nowe zdarzenie',
       'Modify'                 => 'Zmie�',
       'DeleteThisOne'          => 'Usu� tylko to wyst�pienie tego zdarzenia',
       'DeleteAll'              => 'Usu� wszystkie wyst�pienia tego zdarzenia',
       'Delete'                 => 'Usu�',
       'Due'                    => 'Due', # as in Due Date
       'TaskDone'               => 'Zadanie zako�czone',
       'RemindForward'          => 'Remind Forward',
       'Yes'                    => 'Tak',
       'No'                     => 'Nie',
       'Y'                      => 'T', # abbrieviation of Yes
       'N'                      => 'N', # abbrieviation of No
       'ToDo'                   => 'Do zrobienia',
       'Participants'           => 'Zapraszani',
       'none'                   => 'brak',
       'MailToAll'              => 'Email do wszystkich',
       'FindConflict'           => 'Znajd� konflikty',
       'NoTimeEvent'            => 'Zdarzenie bez czasu',
       'Fg'                     => 'Prz�d',
       'Bg'                     => 'T�o',
       'Error'                  => 'B��d',
       'HasError'               => 'Wyst�pi� b��d podczas przetwarzania Twojego zapytania',
       'ListParticipants'       => 'Wpisz grupy zebra�, nazwy kalendarzy lub adresy email wsp�uczestnik�w. Ich kalendarze zostan� uaktualnione',
       'ConflictTable'          => 'Conflict Table',
       'Conflict'               => 'Konflikt',         
       'Table'                  => 'Tabela',         
       'You'                    => 'Ty',
       'NotAllowedToModify'     => 'nie jeste� uprawiony do zmian tego wpisu',
       'NotAllowedToEdit'       => 'nie jeste� uprawiony do edycji tego kalendarza',
       'Warning'                => 'Ostrze�enie',
       'NoRemindForward'        => 'Cannot do remind forward for repeating to do tasks',
       'Acknowledgement'        => 'Potwierdzenie',
       'UpdatedOK'              => 'Kalendarz zaktualizowany pomy�lnie',
       'BackToCalendar'         => 'Kliknij tutaj, aby wr�ci� do swojego kalendarza',
       'OpenFailed'             => 'Nie mo�na otworzy� Twojego kalendarza',
       'NoCalendar'             => 'Wygl�da na to, �e nie masz swojego kalendarza',
       
       # goto page
       'Goto_Date'              => 'Id� do daty', #title
       'Goto'                   => 'Id� do',
       'SelectDate'             => 'Prosz� wybra� dat�',
       'View'                   => 'Widok',
       'Go'                     => 'OK', # function as submit
       'Set'                    => 'ustawione', # as in set options
       
       # set options page
       'My_day_starts_at'       => 'M�j dzie� zaczyna si� o',
       'ends_at'                => 'ko�czy si� o',
       'Interval'               => 'Interval',
       'Week_starts_on',        => 'Tydzie�, ',
       'include_weekend',       => 'do��cz weekend',
       'Date_Format'            => 'Format daty',
       'Time_Format'            => 'Format czasu',
       'Time_zone'              => 'Strefa czasowa',
       'Default_view'           => 'Domy�lny widok',
       'Default_Reminders'      => 'Domy�lnie przypominanie',
       'ListEditors'            => 'Wybierz u�ytkownik�w, kt�rzy s� uprawnieni do edycji Twojego kalendarza',
       'Editors'                => 'Edytorzy',
       'Email'                  => 'Email',
       'Default'                => 'Domy�lny',
       'Homepage'               => 'Strona domowa',
       'Language'               => 'J�zyk',
       
       # admin page
       'Administration'         => 'Administracja',
       'adminDisabled'          => 'Administracja kalendarzem jest wy��czona dla dost�pu publicznego',
       'Change_Password'        => 'Zmie� has�o',
       'Old_Password'           => 'Stare has�o',
       'New_Password'           => 'Nowe has�o',
       'New_Password_Again'     => 'Ponownie nowe has�o',
       'to_be_used_by_meeting_editor' => 'kt�ra b�dzie u�ywana przez edytor zebra�',
       'Existing_Groups'        => 'Istniej�ce grupy',
       'Group_Name'             => 'Nazwa grupy',
       'ListGroupMembers'       => 'Wprowad� nazwy kalendarzy lub adresy email wsp�uczestnik�w',
       'Merge_Calendars'        => 'Po��cz kalendarze',

       'CalendarNames'          => 'Nazwy kalendarzy',
       'EraseCalendar'          => 'Wyczy�� m�j kalendarz',
       'DeleteCalendar'         => 'Usu� m�j kalendarz',
       'errorPerm'              => 'Brak dost�pu',
       'calDeleted'             => 'Tw�j kalendarz zosta� usuni�ty',
       'ThankYou4Using'         => 'Dzi�kujemy za korzystanie',
       'calErased'              => 'Tw�j kalendarz zosta� wyczyszczony',
       'eraseFailed'            => 'Nie mo�na wyczy�ci� Twojego kalendarza',
       'cpasswordWrong'         => 'B��d autoryzacji: niepoprawne has�o',
       'ipasserror'             => 'Nie mo�na otworzy� pliku hase�, prosz� spr�bowa� p�niej',
       'password_changed'       => 'Twoje has�o zosta�o zmienione',
       'cannot_open'            => 'Nie mo�na otworzy�',
       'Meeting_group'          => 'Grupa zebra�',
       'updated'                => 'zaktualizowane pomy�lnie',
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
       'PleaseSelectACalendar'  => 'Prosz� wybra� kalendarz',
       'PleaseEnterCalendarName'=> 'Prosz� wprowadzi� nazw� kalendarza',

       #download
       'notAllowedToDownload'   => 'Nie jeste� uprawiony do pobrania tego kalendarza',
         
       #logout
       'AuthNotRequired'        => 'Uwaga: autoryzacja nie jest wymagana do przegl�dania kalendarzy publicznych',
       'logoutInstruction'      => 'W celu wylogowania si� kliknij przycisk wyloguj si�. Kiedy poka�e si� okno logowania,<br> zaloguj si� jako anonim - has�o nie jest wymagane.',
       'loginInstruction'       => 'Aby zalogowa� si� ponownie jako inny u�ytkownik, kliknij przycisk login',
       'You_ve_logout'          => 'Wylogowa�e� si�',
       'access_denied'          => 'dost�p zabroniony',
       'login'                  => 'login',

       #compare
       'CompareCalendars'       => 'Por�wnaj kalendarze',
       'Enter_calendar_names'   => 'Wpisz nazwy kalendarzy',
       'or_meeting_group'       => 'lub gruby zebra�',
       'EventsTable'            => 'Events Table',
       'Name'                   => 'Nazwa',
       'Events'                 => 'Zdarzenia',
       'ForegroundColor'        => 'Kolor tekstu',
       'BackgroundColor'        => 'Kolor t�a',

       # msg in the main
       'accessAnotherCal'        => 'Aby dosta� si� do innego kalendarza, prosz�',

       # Some missing phrases and addons ...
       'Close'                  => 'Zamknij',
       'ShowCombinedCalendar'   => 'Poka� kalendarz ��czony',
       'CombinedCalendar'       => 'Kalendarz ��czony',
       'Participants_are_allowed_to' => "Uprawnienia wsp�uczestnik�w",
       'View_only'              => 'Tylko przegl�danie',
       'Edit'                   => 'Edycja',
       'EditAndDelete'          => 'Edycja i usuwanie',
       'Updated_calendars'      => 'Nast�puj�ce kalendarze r�wnie� zosta�y uaktualnione',
       'NotAllowedToUpdate'     => 'Nie jeste� uprawniony do edycji nast�puj�cych kalendarzy',
       'invalid_date'           => 'Niepoprawna data',
       'Schedule'               => 'Schedule',            # as in 'schedule an appointment on calendar mzou
       'onCalendar'             => 'on calendar',          #
       'DeleteForward'          => 'Usu� wszystkie nast�pne wyst�pienia tego zdarzenia',
       'All'                    => 'Wszystko',
       'SearchSubjectEmpty'	=> 'Nie mo�na szuka� pustego tematu',
       'Start_date'             => 'Start date',
       'is_after_due_date'      => 'is after due date',
       'Invalidusername'	=> 'Niepoprawna nazwa u�ytkownika',
       'Protected'		=> '==chronione==',
       'Invalidcalendarname'	=> 'Niepoprawna nazwa kalendarza',
       'Couldnotfindcalendar' => 'Nie mo�na znale�� kalendarza',
       'Invalidspooldir'      => 'Invalid spooldir',
       'ListView'             => 'Widok listy',
       'BlockView'            => 'Widok blokowy',

       # address book stuff
       'AddressBook'           => 'Ksi��ka adresowa',
       'AddressBookEditor'     => 'Edytor ksi��ki adresowej',
       'AddressBookUpdated'    => 'Ksi��ka adresowa zaktualizowana',
       'BackToAddressBook'     => 'Kliknij tutaj, aby wr�ci� do swojej ksi��ki adresowej',
       'FirstName'             => 'Imi�',
       'LastName'              => 'Nazwisko',
       'Address'               => 'Adres',
       'Phone'                 => 'Telefon',
       'Fax'                   => 'Fax',
       'Info'                  => 'Info',
       'Affiliation'           => 'Powi�zania',
       'Where'                 => 'Where',
       'Priority'              => 'Priorytet',
       'Diary'                 => 'Pami�tnik',
       'DiaryUpdated'          => 'Pami�tnik zaktualizowany',
       'ReadDiary'             => 'Czytaj pami�tnik',       
       'From'                  => 'Od',
       'PlainText'             => 'Zwyk�y tekst',
       'Html'                  => 'Html',
       'SearchDiary'           => 'Przeszukaj pami�tnik',
       'SearchFor'             => 'Szukaj',
       'NeedAuth2Proceed'      => 'Do przegl�dania lub edycji wymagana jest autoryzacja. Prosz� klikn�� przycisk login aby si� zalogowa� lub klikn�� przycisk kalendarza, by wr�ci� do swojego kalendarza.',

       # Priority of ToDo tasks
       'Urgent'                => 'Pilne',
       'High'                  => 'Wysoki',
       'Medium'                => '�redni',
       'Low'                   => 'Niski',       

       # find calendar names
       'FindCalNames'          => 'Znajd� kalendarze',

       # overlapping 
       'AllowOverlap'          => 'Pozw�l na "nak�adanie si� zdarze�"',
       'GoBack'                => 'Wr��',  #

       'OverlapInstr'          => 'To zdarzenie zosta�o odrzucone, poniewa� "nachodzi" na inne zdarzenia lub zdarzenia juz istniej�ce w kalendarzu (sp�jrz na tabel�).
Je�li na pewno chcesz doda� to zdarzenie do kalendarza, cofnij si� do poprzedniej strony, zaznacz <b>T</b> przy pozw�l na nak�adanie si� zdarze� i spr�buj ponownie.',

       'signup'                 => 'Zapisz si�',
       'Invalidpassword'	=> 'Niepoprawne has�o',
       'olduserInstruction'     => 'Mam ju� sw�j kalendarz',
       'newuserInstruction'     => 'Jestem nowym u�ytkownikiem',
       'PleaseLogin'            => 'Wymagana jest autoryzacja. Prosz� si� zalogowa�!',
       'NextNew'		=> 'Nast�pne nowe zdarzenie',
       'RememberIDPswd'         => 'Zapami�taj nazw� u�ytkownika i has�o (�eby nie trzeba by�o wpisywa� ich nast�pnym razem)',
       'global'                 => 'Global', # mark global meeting group
       'groupnametaken'         => 'Taka nazwa grupy zebra� ju� istnieje, prosz� wybra� inn�',
       'deleteEventsBefore'     => 'Skasuj wszystkie zdarzenia przed',
       'AutoStart'              => 'Autostart WebCalendar',
       'Readers'                => 'Obserwatorzy',
       'ListReaders'            => 'Wybierz u�ytkownik�w, kt�rzy s� uprawnieni do przegl�dania Twojego kalendarza',
       'Print'			=> 'Drukuj',
       'mailVcal'		=> 'Do��cza� VCALENDAR w przypomnieniach mailem?',
       'FriendsEmail'		=> 'Adres email znajomego',
       'PersonalMessage'	=> 'Add a Personal Message',
       'Mail2Friend'		=> 'Wy�lij to zdarzenie znajomemu',
       'MailSentTo'		=> 'Wpis kalendarza zosta� wys�any do ',
       'Location'               => 'Umiejscowienie',
       # the next line is used in a confirmation popup when a user is modifying 
       # an repeating event. The date displayed is the current date, normally 
       # it is not the initial starting date of the event.
       'CalendarFormat'			=> 'Format kalendarza',
       'CalendarFile'			=> 'Plik kalendarza',
       'SetupGreetingC'         => 'Prosz� wej�� na stron� (link poni�ej) i doko�czy� konfiguracj� swojego kalendarza.',
       'Email2Selected'		=> 'Wy�lij email do wszystkich zaznaczonych',
       'AddNewEmail'		=> 'Dodaj nowy adres email do mojej ksi��ki adresowej',
       'ContactP'		=> 'Osoba kontaktowa',
       'ContactE'		=> 'Email do osoby kontaktowej',
       'DailyReminder'		=> 'Wysy�a� powiadomienia dzienne?',
       'CompletedTasks'		=> 'Zadania zako�czone',
       'PendingTasks'		=> 'Zadania oczekuj�ce',
       'Import2Cal'		=> 'Importuj to zdarzenie do kalendarza',
       'ViewOnly'		=> 'Or choose a calendar to view',
       'newLogin'		=> 'lub zaloguj si� jako inny u�ytkownik', 
       'QuickAdd'		=> 'Szybkie dodawanie',
       'Event'                  => 'Zdarzenie',
       'TodoList'               => 'Lista do zrobienia',
       'MarkComplete'		=> 'Ustaw zaznaczone jako zrobione',
       'DeleteChecked'		=> 'Usu� zaznaczone',
       'AddNewTask'             => 'Dodaj nowe zadanie',
       'TaskManager'            => 'Zarz�dca zada�',
       'WarnInvitee'		=> 'Czy na pewno chcesz wstawi� to zdarzenie do nast�puj�cych kalendarzy?',
       'creationDisabled'	=> 'Przykro nam, tworzenie kalendarzy jest zablokowane przez administratora. Jesli chcesz utworzy� sw�j kalendarz zg�o� si� do administratora (email: kalendarz@nencki.gov.pl).',
       'RequestRSVP'            => '��daj potwierdzenia',
       'invitationAccepted'     => 'Zaakceptowane',
       'invitationDeclined'     => 'Odrzucone',
       'AttendanceConfirmation' => 'Meeting Attendance Confirmation',
       'AcceptInvitation'         => 'Zaakceptuj zaproszenie',
       'DeclineInvitation'      => 'Odrzu� zaproszenie',
       'Undecided'		=> 'Undecided',
       'Category'		=> 'Kategoria',
       'Speaker'		=> 'Speaker',
       'Header'			=> 'Nag��wek',
       'Footer'			=> 'Stopka',
       'HeaderFooter'		=> 'Wpisz spersonalizowany kod html nag��wka/stopki',
       'MiscInfo'		=> 'Misc. Info',
       'Description'		=> 'Opis',
       'AllDay'			=> 'Ca�y dzie�',
       'Tomorrow'		=> 'Jutro',
       'ThisWeek'		=> 'Ten tydzie�',
       'ThisMonth'		=> 'Ten miesi�c',
       'Keyword'		=> 'S�owo kluczowe',
       'NoEvents'		=> 'Brak zdarze�',
       'EditThis'		=> 'Edytuj to zdarzenie',
       'recurFormat'            => 'Occurs %s for %d times, starting on %s.', # used in formating
       'taskDoneFormat'		=> 'Completed by %s on %s at %s', # formating, eg. by Jone on Mon 12/11 at 5pm


       'warnModify'	       => '
Zamierzasz zmieni� powtarzaj�ce si� zdarzenie. Pokazana data nie
jest oryginaln� dat� powtarzaj�cego si� zdarzenia. Je�li
mimo to zmienisz to zdarzenie, jego powt�rzenia b�d� ustawione
od nowej daty i wszystkie ukryte informacje takie jak np. wyj�tki
od dat lub potwierdzenia spotka� zostan� usuni�te.
Musisz potwierdzi� czy na pewno chcesz to zrobi�.

Zmiana pojedynczego zdarzenia w ci�gu zdarze� powtarzaj�cych si�
nie jest mo�liwa. Mo�liwe \'obej�cie\' tego problemu: usu� to
konkretne zdarzenie i wprowad� nowe na jego miejsce.

Oryginalna data tego zdarzenia: ',

       'gEventError'		=> 'Pr�bowa�e� usun�� cz�� wyst�pie� tego zdarzenia bez odpowiednich
uprawnie�. Nie jest to dozwolone poniewa� mo�e \'rozsynchronizowa�\' Tw�j kalendarz z innymi kalendarzami w grupie.
Mo�esz jednak usun�� wszystkie wyst�pienia tego zdarzenia klikaj�c przycisk
\'Usu� wszystkie wyst�pienia tego zdarzenia\' na ekranie edycji zdarzenia',

       'City'                  => 'Miasto',
       'State'                 => 'Stan',
       'Zip'                   => 'Kod',
       'Country'               => 'Kraj',


       'ResetPasswd'           => 'Zmie� has�o u�ytkownika',
       'File'                  => 'Plik',
       'AlreadyOnCalendar'     => 'Nast�puj�ce zdarzenia ju� s� w Twoim kalendarzu.',
       'ImportFileTitle'         => 'Importuj z pliku vCalendar',
       'ImportFileInstruction'   => 'Aby zaimportowa� z vCalendar, wpisz w polu tekstowym pe�n� �cie�k� dost�pu do niego i kliknij przycisk OK. Je�li nie jeste� pewny jaka jest pe�na �cie�ka dost�pu, kliknij przycisk Przegl�daj i wybierz plik.',
       'ImportVcal'		=> 'Importuj zdarzenie z vCalendar',
       'ImportVcalInstruction'	=> 'Ewentualnie skopiuj tekst z vCalendar, wklej do pola tekstowego i kliknij przycisk OK.',


       # new phrases

       'DetailedWorkingHours'   => 'Godziny pracy poszczeg�lnych dni', 
       'SelectAttendee' => 'Nazwy kalendarzy, adresy email, grupy zebra� i ich kombinacje mog� by� u�ywane do wprowadzenia wsp�uczestnik�w. Mo�esz wybra� nazwy kalendarzy z listy po lewej stronie lub wpisa� je w polu wy�ej. Adresy email musz� by� wpisane w polu wy�ej. Grupy zebra� (je�li jakie� s�), mog� by� wybrane z menu "Grupy zebra�". Mo�esz r�wnie� wpisa� te grupy w polu wy�ej. Poszczeg�lne nazwy/adresy/grupy powinny by� oddzielone spacjami lub przecinkami.',

       'MkEditorListInstruction' => 'Aby pozwoli� znajomym lub wsp�pracownikom na edycj� Twojego kalendarza, wybierz nazwy ich kalendarzy z listy po lewej stronie. Mo�esz r�wnie� wpisa� nazwy ich kalendarzy w polu wy�ej.',

       'MkReaderListInstruction' => 'Je�li Tw�j kalendarz jest zabezpieczony przed odczytem przez inne osoby nikt nie mo�e przegl�da� Twoich wpis�w. Wybranym u�ytkownikom mo�esz pozwoli� na przegl�danie Twojego kalendarza, tworz�c list� obserwator�w. Lista ta zawiera nazwy kalendarzy tych os�b, kt�rym chcesz umo�liwi� przegl�danie swoich wpis�w. Nazwy kalendarzy mo�esz wybra� z listy po lewej stronie lub wpisa� je w polu wy�ej.',

       'MkGroupInstruction'=> 'Nazwy kalendarzy lub adresy email mog� by� u�ywane do identyfikowania cz�onk�w grup roboczych. Mo�esz wybra� nazwy kalendarzy z listy po lewej stronie albo wpisa� je w polu wy�ej. Adresy email mog� by� wprowadzone tylko w polu wy�ej.',
       'Contacts'	   => 'Kontakty',
       'Tasks'		   => 'Zadania',
       'Day'		   => 'Dzie�',
       'Week'		   => 'Tydzie�',
       'Month'		   => 'Miesi�c',
       'Year'		   => 'Rok',
       'OffDutyHours'	   => 'Off Duty Hours',
       'AddNewAddress'	   => 'Dodaj nowy adres',
       'HeaderColor'	   => 'Kolor nag��wka',
       'Never'		   => 'Nigdy',
       'OverlapNotAllowed' => '\"Nak�adanie si�\" zdarze� nie jest dozwolone.',
       'Notes'		   => 'Notes',
       'PostIt'		   => 'PostIt',   # as in post it notes
       'Title'		   => 'Tytu�',
       'AddNewNote'	   => 'Dodaj now� notatk�',
       
       'InterestedCalendars' => 'Wybierz wszystkie kalendarze, kt�re prawdopodobnie b�dziesz przegl�da� lub edytowa�.', 
       'CalendarListInstruction' => 'Je�li nie chcesz widzie� d�ugiej listy kalendarzy w menu wyboru, mo�esz stworzy� kr�tk� list�. Wpisz nazwy kalendarzy w polu wy�ej lub wybierz je z listy po lewej stronie. Utworzona lista b�dzie wy�wietlana wsz�dzie tam, gdzie jest menu wyboru kalendarza.',

       'MasterHeadInput'  => 'Spos�b wyboru kalendarza w menu g��wnym',
       'TextEntry'	  => 'Pole tekstowe',
       'PulldownMenu'     => 'Rozwijane menu',

       'LockWarning'      => 'Tw�j kalendarz zosta� zmodyfikowany podczas przetwarzania Twojego polecenia.
Aby zachowac zbie�no�� informacji, Twoje polecenie zosta�o odrzucone. Cofnij si� i spr�buj jeszcze raz.',

       'IUpload'	  => 'Wgraj obrazek', 
       'FUpload'	  => 'Wgraj plik',        
       'IUploadInstruction' => 'W celu wgrania pliku z obrazem wpisz pe�n� �cie�k� dost�pu do niego
w polu tekstowym i kliknij przycisk Submit. Je�li nie znasz dok�adnej �cie�ki mo�esz klikn��
przycisk Browse i wybra� ten plik.',
       'IUploadAck'	  => 'Obraz wgrany. Aby wstawi� obraz do tytu�u zdarzenia lub opisu, wytnij poni�sz� lini� i wstaw
j� w odpowiednie pole tekstowe. Pami�taj, �e wstawianie obraz�w mo�e wymaga� akceptacji administratora, co oznacza,
�e obra� mo�e nie by� widoczny od razu.',
       'ReviewUI'  => 'Przejrzyj wgrania obraz�w u�ytkownik�w',
       'ApproveChecked' => 'Zatwierd� zaznaczone',	   
       'RejectChecked' => 'Odrzu� zaznaczone',	   
       'Export2Vcal'   => 'Eksportuj sw�j kalendarz w formacie vCal',
       'CreateNewCal'  => 'Utw�rz nowy kalendarz',
       'UsableImgs'    => 'Usable Images',
       'UImageInst'    => 'W celu wstawienia obrazu do tytu�u lub opisu zdarzenia, wytnij i wklej w odpowiednie pole tekstowe jego nazw�
(w��czaj�c \\^o^/).',

	'CheckAll'     => 'Zaznacz wszystkie',
	'UncheckAll'   => 'Odznacz wszystkie',
        'Export2VCard' => 'Eksportuj ksi��k� adresow� do vCard',
	'ImportVcard'  => 'Importuj informacje o kontakcie z vCard',
        'ImportVCardTitle'  => 'Importuj z vCard',
        'ImportVcardInstruction' => 'Ewentualnie skopiuj tekst z vCard, wklej do pola tekstowego i kliknij przycisk OK.',
        'ImportVcardFileInstruction'   => 'Aby zaimportowa� z vCard, wpisz w polu tekstowym pe�n� scie�k� dost�pu do niej i kliknij przycisk OK. Je�li nie jeste� pewny jaka jest pe�na �cie�ka dost�pu, kliknij przycisk Przegl�daj i wybierz plik.',
        'AlreadyInAddressbook' => 'Te wpisy ju� s� w Twojej ksi��ce adresowej.',
	
	'DpyETimeAs' => 'Wy�w. czas zdarzenia jako',
	'MasterheadTabs' => 'Menu g��wne',

 	'DeferConfirmation'     => 'Potwierdzenie od�� na p�niej',
	'Unconfirmed'           => 'Niepotwierdzone',     # unconfirmed invitation

	'SendMailUsing'         => 'Wy�lij email jako', #	html, txt or vcal
         # used as in
         # send mail <> immediately or <> <hours> before event
        'Sendmail'              => 'Wy�lik email',
        'immediately'           => 'natychmiast',
        'or'                    => 'lub',
        'beforeEvent',          => 'przed zdarzeniem',
        'Cancelled'             => 'Anulowane',

        'AddNewEntry'		=> 'Dodaj nowy wpis',
	'SearchNotes'		=> 'Przeszukaj notes',
	'SearchAddress'		=> 'Przeszukaj ksi��k� adresow�',

	'Week_begins_on'	=> 'Pocz�tek tygodnia w',
	'StartDate'		=> 'Data rozpocz�cia',
	'DueDate'		=> 'Data zako�czenia',
	'DueTime'		=> 'Czas zako�czenia',
	'Overdue'		=> 'Zaleg�e',
	'EventDates'		=> 'Daty zdarze�', 

	'SpecialEvents'		=> 'Zdarzenia specjalne',

	'RemindForwardNewTask'  => 'Set Remind Forward on New Tasks',
	'DispCompletedTasks'    => 'Wy�wietl w kalendarzu zadania zako�czone',
	'TaskOptions'		=> 'Opcje zada�',
        'DoneOn'		=> 'Zrobione %s przez %s', # used to display completed tasks, like 'Done on 03/19/2002', 

	'DetailedView'		=> 'Widok szczeg�owy',
        'CombinedView'		=> 'Widok po��czony',
        'BannerView'		=> 'Widok z wyszczeg�lnionymi godzinami',
	'TooltipDelay'		=> 'Op�nienie podpowiedzi (w milisekundach)',	
	'DayViewOptions'        => 'Opcje widoku dnia',
	'More'			=> 'Wi�cej',

	'G_A_Notes'		=> 'Dost�p do notesu',
	'G_A_Address'		=> 'Dost�p do ksi��ki adresowej',	  
	'G_A_Diary'		=> 'Dost�p do pami�tnika',
	'OwnerOnly'		=> 'Tylko w�a�ciciel',
	'Everyone'		=> 'Wszyscy',

        'DpyAuthorName'         => 'Spos�b wy�wietlania autora', # real name, calendar name or both
        'RealName'              => 'Imi� i nazwisko',
        'CalendarName'          => 'Nazwa kalendarza',
        'Rname_Cname'           => 'Imi� i nazwisko i nazwa kalendarza',

	'DescriptiveName'	=> 'Kr�tki opis',
        'OwnerName'             => 'Imi� i nazwisko w�a�ciciela',
        'OwnerEmailAddress'     => 'Adres email w�a�ciciela',
        'OwnerHomepage'         => 'Strona www w�a�ciciela',

	'Label'			=> 'Etykieta',
	'PredefineColorPairs'	=> 'Zdefiniuj pary kolor�w (prz�d/t�o) dla', 

	#========= The 16 common colors used on the web==================
	'Black'  => 'Czarny',         #      #000000,  
	'Silver' => 'Srebrny',        #      #C0C0C0,
	'Gray'   => 'Szary',          #      #808080,
	'White'  => 'Bia�y',       #      #FFFFFF,
	'Maroon' => 'Kasztanowy',     #      #800000,
	'Red'    => 'Czerwony',       #      #FF0000,
	'Purple' => 'Fioletowy',      #      #800080,
	'Fuchsia'=> 'Fuksja',         #      #FF00FF,
	'Green'  => 'Zielony',        #      #008000,
	'Lime'   => 'Lime',           #      #00FF00,
	'Olive'  => 'Oliwkowy',       #      #808000,
	'Yellow' => '��ty', #      #FFFF00,
	'Navy'   => 'Navy',           #      #000080,
	'Blue'   => 'Bia�y',       #      #0000FF,
	'Teal'   => 'Teal',           #      #008080,
	'Aqua'   => 'Morski',         #      #00FFFF,
	#=================================================================

	'Font'        => 'Czcionka',
	'DefineFonts'      => 'Utw�rz style czcionek',
	'FontsStyles'      => 'Style czcionek',

	'DependentCals'	   => 'Zale�no�� kalendarzy',
	'DepCalInstruction' => 'Wybierz wszystkie kalendarze, od kt�rych zale�y ten kalendarz. Na przyk�ad: je�li projektor jest zainstalowany w sali konferencyjnej, dost�pno�� projektora zale�y od dost�pno�ci sali konferencyjnej. Rezerwacja projektora jest jednocze�nie rezerwacj� sali konferencyjnej. W tym przyk�adzie kalendarz projektora zale�y od kalendarza sali konfrencyjnej. Zdarzenia zaplanowane w kalendarzu projektora automatycznie zostan� do��czone do kalendarza sali konferencyjnej.',

     'ListAuthors'	=> 'Akceptuj zdarzenia od',
     'AuthorInstruction' => 'Domy�lnie ka�dy u�ytkownik kalendarza mo�e ustawia� zdarzenia
grupowe w Twoim kalendarzu. Aby zmieni� takie zachowanie, wybierz z listy te kalendarze, kt�rych
w�a�ciciele mog� wstawia� po��czone zdarzenia do Twojego kalendarza. Je�li nie chcesz
przyjmowa� �adnych zdarze� grupowych, zaznacz tylko sw�j kalendarz.
Je�li �aden kalendarz nie jest zaznaczony, oznacza to, �e ka�dy mo�e wstawia� zdarzenia
grupowe.',

   'EventInterval'	 => 'Domy�lny czas trwania zdarzenia',
   'PublicOpen'             => 'Publiczny-otwarty',
   'PublicModerated'        => 'Publiczny-moderowany',
   'Pending'		    => 'Nie zatwierdzone',
   'Mail2Author'	    => 'Email do autora',


   'ClearCache'             => 'Wyczy�� pami�� podr�czn�',
   'color2'		    => 'Drugi kolor t�a w widoku miesi�ca',  
   'semails'		    => 'Select Invitee From Address Book', 
   'addinvitee'		    => 'Add Selected to Invitee list', 
   'Select'		    => 'Wybierz',
   'IgnoreCCal'		    => 'Ignoruj kalendarz korporacyjny',
   'ResrcCal'		=> 'Czy ten kalendarz jest kalendarzem �r�d�owym?',
   'AllowAP'            => 'Je�li to jest kalendarz publiczny, to czy pozwala� na anonimowe wpisy?',

   'orIndefinitely'     => 'lub bez okre�lania ilo�ci powt�rze�', # used as in: occurs daily for 5 times or indefinitely
   'remindOnce'		=> 'Je�li to zdarzenie powtarza si�, przypomnij tylko przy pierwszym wyst�pieniu',
   'applyReminders'     => 'Zastosowa� do tego zdarzenia przypominanie domy�lne?',
   'NotifyAP'           => 'Je�li jest to kalendarz publiczny moderowany, to powiadamia� w�a�ciciela o nowych wpisach?',
   'Preferences'        => 'Ustawienia',
   'Appearance'         => 'Wygl�d',
   'TabColor'           => 'Kolor t�a zak�adek',
   'TabHColor'          => 'Kolor zak�adek po wskazaniu myszk�',  
   'StyleSheet'		=> 'Styl',
   'OrTimeOffset'	=> 'lub podaj r�nic� mi�dzy czasem lokalnym i czasem serwera (+-HH:MM)', 
   'ServerTime'		=> 'Bie��cy czas serwera',
   'catfilter'		=> 'Czy chcesz w��czy� filtrowanie kategorii?',
   'popdetail'		=> 'Czy chcesz widzie� szczeg�y zdarzenia w okienku popup?',
   'WeekViewOptions'    => 'Opcje widoku tygodnia',
   'orUntilDate'	=> 'lub a� do daty',

   'Freebusytable'	=> 'Free busy table',
   'VirtualGroup'	=> 'Virtual Calendar Group',
   'wcf'		=> 'zale�nie od tego, kt�re wyst�pi wcze�niej',
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











# 
# This is the list of phrases or words used in the UI.
# To port webCal to another language, translate
# this list should be suffice.
#  "Patrik 'KAP' Grip-Jansson" <patrikj@gnulix.org>
#
# $Header: /home/cvs/webCal/webCal2/Swedish.perl,v 1.49 2004/10/20 23:35:56 mzou Exp $
#

%::phr=(
       # specify character encoding.
       'CHARSET'		=> 'ISO-8859-1',

       'Calendar'               => 'Kalender',
       
       # Name of weekdays
       'Sunday'                 => 's�ndag',
       'Monday'                 => 'm�ndag',
       'Tuesday'                => 'tisdag',
       'Wednesday'              => 'onsdag',
       'Thursday'               => 'torsdag',
       'Friday'                 => 'fredag',
       'Saturday'               => 'l�rdag',
       # Name of weekdays, abbreviation
       'Sun'                    => 's�n',
       'Mon'                    => 'm�n',
       'Tue'                    => 'tis',
       'Wed'                    => 'ons',
       'Thu'                    => 'tor',
       'Fri'                    => 'fre',
       'Sat'                    => 'l�r',
       # Name of weekdays, abbreviated even more
       'Su'                     => 's�',
       'Mo'                     => 'm�',
       'Tu'                     => 'ti',
       'We'                     => 'on',
       'Th'                     => 'to',
       'Fr'                     => 'fr',
       'Sa'                     => 'l�',
       
       # Month Names  
       'January'                => 'januari', 
       'February'               => 'februari',
       'March'                  => 'mars',   
       'April'                  => 'april',   
       'May_'                   => 'maj',     #! the full month of May, to distingsh with the abbreviation
       'June'                   => 'juni',    
       'July'                   => 'juli',    
       'August'                 => 'augusti',
       'September'              => 'september',
       'October'                => 'oktober',
       'November'               => 'november',
       'December'               => 'december',
       # Month Names, abbreviation
       'Jan'                    => 'jan',
       'Feb'                    => 'feb',
       'Mar'                    => 'mar',
       'Apr'                    => 'apr',
       'May'                    => 'maj',
       'Jun'                    => 'jun',
       'Jul'                    => 'jul',
       'Aug'                    => 'aug',
       'Sep'                    => 'sep',
       'Oct'                    => 'okt',
       'Nov'                    => 'nov',
       'Dec'                    => 'dec',

       # repeating rules 
       'OneTime'                => 'Eng�ngs',                   # one time event
       'Daily'                  => 'Daglig',
       'Weekly'                 => 'Veckovis',
       'Every2Weeks'            => 'Varannan vecka',
       'MonthlyByDate'          => 'M�ntligen, p� datum',
       'MonthlyByWeekday'       => 'M�ntligen, p� veckodag',         # e.g. the 3rd Friday of every month
       'Yearly'                 => '�rlig',
       'MTWThF'                 => 'm� till fre',
       'MWF'                    => 'm�n ons fre',
       'TTh'                    => 'tis tor',
       'YearlyByMonthWeekday'   => '�rligen, p� m�ntlig veckodag',    # e.g. the first Monday of June, yearly
       'EveryOtherDay'          => 'Varannan dag',
       'Every3rdDay'            => 'Var tredje dag',
       'Every4thDay'            => 'Var fj�rde dag',
       'Every5thDay'            => 'Var femte dag',
       'Every6thDay'            => 'Var sj�tte dag',

       # event types
       'Appointment'            => 'Avtaladtid',
       'Todo'                   => 'Att-g�ra',
       'Meeting'                => 'M�te',
       'Special'                => 'Special',            # for holidays, event require no specific time

       # option button names
       'CalendarOptions'        => 'Kalenderinst�llningar',   # title of the options page
       'Compare'                => 'J�mf�r',            # Button: compare calendars and find conflicts ...
       'Search'                 => 'S�k',             # Button:
       'GotoDate'               => 'G� till datum',           # Button:
       'Previous'               => 'F�reg�ende',           # previous Month/Day/Week 
       'Today'                  => 'Idag',              # This Month/Day/Week 
       'Next'                   => 'N�sta',               # next Month/Day/Week 
       'Options'                => 'Inst�llningar',            # Button: go to options page 
       'Admin'                  => 'Admin',              # Button: go to admin page
       'Logout'                 => 'Logga ut',             # Button: go to logout page
       'DayView'                => 'Dagsvy',           # Alt name under the image buttons
       'WeekView'               => 'Veckovy',
       'MonthView'              => 'M�nadsvy',
       'YearView'               => '�rsvy',
       
       
       # messages on the setup screen
       'SetupYourCalendar'      => 'St�ll in din kalender', # title
       'YourCalendarName'       => 'Ditt kalendernamn',
       'YourEmailAddress'       => 'Din epostadress',
       'YourName'               => 'Ditt namn',
       'Password'               => 'L�senord',
       'RetypePassword'         => 'Skriv l�senord igen',
       'CalendarType'           => 'Kalendertyp',
       'Public'                 => '�ppen',
       'Private'                => 'Privat',
       'ForPrivateCalendar'     => 'F�r privata kalendrar',
       'OthersSeeTextTime'      => 'Andra ser tid och text',
       'OthersSeeTitle'         => 'Others See Event Title',
       'OthersSeeTimeOnly'      => 'Andra ser enbart tid',
       'OthersSeeNothing'       => 'Andra ser ingenting',
       'PublicCalendar'         => '�ppnakalendrar',
       'Submit'                 => 'Utf�r',
       'Cancel'                 => '�ngra',
       'TheName'                => 'Namnet',
       'HasBeenTaken'           => '�r redan taget',
       'PasswordMismatch'       => 'l�senord st�mmer ej �verens',
       'TryAgain'               => 'f�rs�k igen',
       'EmailIncomplete'        => 'Epostadressen �r inte fullst�ndig',
       'CannotCreateCalendar'   => 'Kunde inte skapa din kalender. Ditt kalendernamn m�ste vara ett godk�nt ord',
       'CannotWriteInfoFile'    => 'Kunde inte skriva i infofilen',
       'CannotWriteDataFile'    => 'Kunde inte skriva till datafilen',
       'CannotWritePasswordFile'=> 'Kunde inte �ndra i l�senordsfilen',
       'Congratulations'        => 'Grattis',
       'SetupGreetingA'         => 'Din kalender har skapats. Se till att spara ett bokm�rke som leder till din kalender;',
       'SetupGreetingB'         => 'Kom ih�g ditt l�senord. Det beh�vs f�r att komma �t din kalender',
       'HaveToSupplyCalendarName' => 'Du m�ste ange ett namn f�r din kalender',
       'PleaseDoNotUseYourUnixAccountPassword' => 'Undvika att anv�nda samma namn/l�senord som f�r ditt UNIX-konto',
       
       # Event Editor Messages
       'EventEditor'            => 'H�ndelseeditor',
       'AppointmentEditor'      => '"Avtalade tider"-editor',
       'ToDoEditor'             => 'Att-g�raeditor',
       'MeetingEditor'          => 'M�teseditor',
       'SpecialEditor'          => '"Speciella h�ndelser"-editor',
       'AuthRequired'           => 'Du m�ste ha annan beh�righet f�r att kunna redigera den h�r kalendern',
       'CurrentEvents'          => 'Nuvarande h�ndelser',
       'Time'                   => 'Tid',
       'What'                   => 'Vad',
       'Date'                   => 'Datum',
       'Start'                  => 'Start',
       'End'                    => 'Slut',
       'Details'                => 'Detaljer',
       'Colors'                 => 'F�rger',
       'Privacy'                => 'Privat',
       'Frequency'              => 'Frekvens',
       'Reminders'              => 'P�minnelse',
       'Mail'                   => 'Epost',
       'min'                    => 'min', # abbreviation of minute
       'mins'                   => 'min',
       'hours'                  => 'timmar',
       'days'                   => 'dagar',
       'weeks'                  => 'veckor',
       'Occurs'                 => 'Intr�ffar',
       'For'                    => 'F�r',
       'times'                  => 'g�nger',   # as in repeat for 10 times 
       'Popup'                  => 'Popup',
       'Author'                 => 'F�rfattare',
       'Blink'                  => 'Blinka',
       'Chime'                  => 'Ring',
       'Insert'                 => 'L�gg till',
       'InsertAsNew'            => 'L�gg till som ny',
       'Modify'                 => '�ndra',
       'DeleteThisOne'          => 'Ta bort den h�r f�rekomsten',
       'DeleteAll'              => 'Ta bort alla f�rekomster',
       'Delete'                 => 'Ta bort',
       'Due'                    => 'F�rdig till', # as in Due Date
       'TaskDone'               => 'Uppdraget har slutf�rts',
       'RemindForward'          => 'F�rvarna',
       'Yes'                    => 'Ja',
       'No'                     => 'Nej',
       'Y'                      => 'J', # abbrieviation of Yes
       'N'                      => 'N', # abbrieviation of No
       'ToDo'                   => 'Att-g�ra',
       'Participants'           => 'Deltagare',
       'none'                   => 'inga',
       'MailToAll'              => 'Skicka epost till alla',
       'FindConflict'           => 'S�k krockar',
       'NoTimeEvent'            => 'Icke tidsberoende h�ndelse',
       'Fg'                     => 'Fg',
       'Bg'                     => 'Bg',
       'Error'                  => 'Fel',
       'HasError'               => 'Det uppstod ett fel n�r din beg�ran behandlades',
       'ListParticipants'       => 'Skriv in m�tesgrupper, kalendernamn eller fullst�ndiga epostadresserna till deltagarna. Deras kalendrar kommer att uppdateras',
       'ConflictTable'          => 'Lista �ver krockar',
       'Conflict'               => 'Krockar',         
       'Table'                  => 'Tabell',
       'You'                    => 'Du',
       'NotAllowedToModify'     => 'har inte beh�righet f�r att �ndra den h�r posten',
       'NotAllowedToEdit'       => 'har inte beh�righet f�r att redigera den h�r kalendern',
       'Warning'                => 'Varning',
       'NoRemindForward'        => 'Kan inte f�rvarna f�r att-g�rajobb som upprepas',
       'Acknowledgement'        => 'Bekr�ftelse',
       'UpdatedOK'              => 'Kalenderuppdateringen lyckades',
       'BackToCalendar'         => 'Klicka h�r f�r att �terv�nda till din kalender',
       'OpenFailed'             => 'Kunde inte �ppna din kalender',
       'NoCalendar'             => 'Du verkar inte ha n�n kalenderfil',
       
       # goto page
       'Goto_Date'              => 'G� till annat datum', #title
       'Goto'                   => 'G� till',
       'SelectDate'             => 'V�lj ett datum',
       'View'                   => 'Visa',
       'Go'                     => 'G�', # function as submit
       'Set'                    => 'Inst�llningar', # as in set options
       
       # set options page
       'My_day_starts_at'       => 'Min dag b�rjar',
       'ends_at'                => 'slutar',
       'Interval'               => 'Intervall',
       'Week_starts_on',        => 'Veckan b�rjar p�',
       'include_weekend',       => 'Inkludera veckoslut',
       'Date_Format'            => 'Datumformat',
       'Time_Format'            => 'Tidsformat',
       'Time_zone'              => 'Tidszone',
       'Default_view'           => 'F�rvald vy',
       'Default_Reminders'      => 'F�rvalda p�minnelser',
       'ListEditors'            => 'Visa de anv�ndare som till�ts redigera din kalender',
       'Editors'                => 'Editorer',
       'Email'                  => 'Epost',
       'Default'                => 'F�rval',
       'Homepage'               => 'Hemsida',
       'Language'               => 'Spr�k',
       
       # admin page
       'Administration'         => 'administration',
       'adminDisabled'          => 'Kalenderadministration �r avslaget f�r �ppnakalendrar',
       'Change_Password'        => '�ndra l�senord',
       'Old_Password'           => 'Gammalt l�senord',
       'New_Password'           => 'Nytt l�senord',
       'New_Password_Again'     => 'Skriv in det nya l�senordet igen',
       'to_be_used_by_meeting_editor' => 'f�r m�teskoordinat�ren',
       'Existing_Groups'        => 'Nuvarande grupper',
       'Group_Name'             => 'Gruppnamn',
       'ListGroupMembers'       => 'Skriv in kalendernamn eller epostadress till deltagare',
       'Merge_Calendars'        => 'Sl� samman kalendrar',

       'CalendarNames'          => 'Kalendernamn',
       'EraseCalendar'          => 'Radera allt i min kalender',
       'DeleteCalendar'         => 'Ta bort min kalender',
       'errorPerm'              => 'Tillg�ng nekas',
       'calDeleted'             => 'Din kalender har tagits bort',
       'ThankYou4Using'         => 'Tack f�r att du anv�ndt',
       'calErased'              => 'Din kalender har raderats',
       'eraseFailed'            => 'Kunde inte radera din kalender',
       'cpasswordWrong'         => 'Auth.fel: L�senord st�mmer ej',
       'ipasserror'             => 'Kunde inte �ppna l�senordsfilen, f�rs�k igen om en stund',
       'password_changed'       => 'Ditt l�senord har �ndrats',
       'cannot_open'            => 'Kunde inte �ppna',
       'Meeting_group'          => 'M�tesgrupp',
       'updated'                => 'uppdatering lyckades',
       'new_entries'            => 'Ny poster lades till i din kalender',
       'Unknown_command'        => 'Ok�nt kommando',

       # search page
       'Search_Calendar'        => 'S�k i kalendrar',
       'Topic'                  => '�mne',
       'SearchAll'              => 'Genoms�k hela kalendern',
       'Search_From'            => 'S�k fr�n',
       'To'                     => 'Till',
       'Search_Results'         => 'S�kresultat',
       'CalendarReminder'       => 'Kalenderp�minnelser',
         
       # Greeting
       'WelcomeToWebCalendar'   => 'V�lkommen till WebCalendar',
       'PleaseSelectACalendar'  => 'V�lj en kalender',
       'PleaseEnterCalendarName'=> 'Skriv in ditt kalendernamn',

       #download
       'notAllowedToDownload'   => 'Du har inte till�telse att ladda ner den h�r kalendern',
         
       #logout
       'AuthNotRequired'        => 'Komih�g: Ingen beh�righet kr�vs f�r att se �ppnakalendrar',
       'logoutInstruction'      => 'F�r att logga ut, tryck p� "logga ut"-knappen. N�r "logga in"-sidan visas, logga in som "nobody". Inget l�senord kr�vs.',
       'loginInstruction'       => 'F�r att logga in som en annan anv�ndare, tryck p� "logga in"-knappen',
       'You_ve_logout'          => 'Du har loggats ut',
       'access_denied'          => '�tkomst nekas',
       'login'                  => 'Logga in',

       #compare
       'CompareCalendars'       => 'J�mf�r kalendrar',
       'Enter_calendar_names'   => 'Skriv in kalendernamn',
       'or_meeting_group'       => 'eller m�tesgrupp',
       'EventsTable'            => 'H�ndelsetabell',
       'Name'                   => 'Namn',
       'Events'                 => 'H�ndelser',
       'ForegroundColor'        => 'F�rgrundsf�rg',
       'BackgroundColor'        => 'Bakgrundsf�rg',

       # msg in the main
       'accessAnotherCal'        => 'F�r att f� tillg�ng till en annan kalender',

       # Some missing phrases and addons ...
       'Close'                  => 'St�ng',
       'ShowCombinedCalendar'   => 'Visa sammanslagna kalendrar',
       'CombinedCalendar'       => 'Sammanslagna kalendrar',
       'Participants_are_allowed_to' => "Deltagarna till�ts att",
       'View_only'              => 'Enbart titta',
       'Edit'                   => 'Redigera',
       'EditAndDelete'          => 'Redigera och radera',
       'Updated_calendars'      => 'F�ljande kalendrar �r ocks� uppdaterade',
       'NotAllowedToUpdate'     => 'Du har inte till�telse att uppdatera f�ljande kalendrar',
       'invalid_date'           => 'Ogiltigt datum',
       'Schedule'               => 'Schemal�gg',            # as in 'schedule an appointment on calendar mzou
       'onCalendar'             => 'i kalender',          #
       'DeleteForward'          => 'Radera kommande f�rekomster',
       'All'                    => 'Alla',
       'SearchSubjectEmpty'	=> 'S�k�mne kan inte l�mnas tom',
       'Start_date'             => 'Startdatum',
       'is_after_due_date'      => 'efter f�rdigst�llande-datum',
       'Invalidusername'	=> 'Ogiltigt anv�ndarnamn',
       'Protected'		=> '==skyddad==',
       'Invalidcalendarname'	=> 'Ogiltigt kalendernamn',
       'Couldnotfindcalendar' => 'Kunde inte hitta kalendern',
       'Invalidspooldir'      => 'Ogiltig spoolkatalog',
       'ListView'             => 'Listvy',
       'BlockView'            => 'Blockvy',

       # address book stuff
       'AddressBook'           => 'Adressbok',
       'AddressBookEditor'     => 'Adressbokseditor',
       'AddressBookUpdated'    => 'Adressbok uppdaterad',
       'BackToAddressBook'     => 'Klicka h�r f�r att �terv�nda till din adressbok',
       'FirstName'             => 'F�rnamn',
       'LastName'              => 'Efternamn',
       'Address'               => 'Adress',
       'Phone'                 => 'Telefon',
       'Fax'                   => 'Fax',
       'Info'                  => 'Info',
       'Affiliation'           => 'Tillh�righet',
       'Where'                 => 'Var',
       'Priority'              => 'Prioritet',
       'Diary'                 => 'Dagbok',
       'DiaryUpdated'          => 'Dagboken uppdaterades',
       'ReadDiary'             => 'L�s dagbok',       
       'From'                  => 'Fr�n',
       'PlainText'             => 'Enbart text',
       'Html'                  => 'HTML',
       'SearchDiary'           => 'S�k i dagbok',
       'SearchFor'             => 'S�k efter',
       'NeedAuth2Proceed'      => 'Beh�righet kr�vs f�r att visa eller redigera. Klicka p� inloggningsknappen f�r att forts�tta, eller klicka p� kalenderknappen f�r att �terv�nda till din egen kalender.',

       # Priority of ToDo tasks
       'Urgent'                => 'Omg�ende',
       'High'                  => 'H�g',
       'Medium'                => 'Medel',
       'Low'                   => 'L�g',

       # find calendar names
       'FindCalNames'          => 'S�k kalendrar',

       # overlapping 
       'AllowOverlap'          => 'Till�t �verlappande m�ten',
       'GoBack'                => 'G� tillbaka',  #

       'OverlapInstr'          => 'Den h�r h�ndelsen nekades f�r att den �verlappar med en, eller flera, redan definerade h�ndelser i kalendern (titta i tabellen). Om du verkligen vill l�gga till den, g� tillbaka och v�lj \'J\' vid "Till�t �verlappande h�ndelser"-knappen och f�rs�k igen.',

       'signup'                 => 'Skapa medlemskap',
       'Invalidpassword'	=> 'Felaktigt l�senord',
       'olduserInstruction'     => 'Jag har redan en kalenderfil',
       'newuserInstruction'     => 'Jag �r en ny anv�ndare',
       'PleaseLogin'            => 'Beh�righet kr�vs. Logga in f�rst!',
       'NextNew'		=> 'N�sta ny h�ndelse',
       'RememberIDPswd'         => 'Kom ih�g mitt anv�ndarnamn och l�senord (s� jag inte beh�ver skriva in dem igen)',
       'global'                 => 'Global', # mark global meeting group
       'groupnametaken'         => 'M�tesgruppsnamnet �r redan upptaget, v�lj ett annat namn',
       'deleteEventsBefore'     => 'Radera alla h�ndelser f�re',
       'AutoStart'              => 'Starta WebCalendar automatiskt',
       'Readers'                => 'L�sare',
       'ListReaders'            => 'Visar de anv�ndare som har l�sr�ttigheter i din kalender',
       'Print'			=> 'Skriv ut',
       'mailVcal'		=> 'Bifoga VCALENDAR i epostp�minnelser',
       'FriendsEmail'		=> 'V�nnens epostadress',
       'PersonalMessage'	=> 'L�gg till ett personligt meddelande',
       'Mail2Friend'		=> 'Skicka den h�r h�ndelsen till en v�n',
       'MailSentTo'		=> 'Kalenderpost s�ndes till ',
       'Location'               => 'Plats',
       # the next line is used in a confirmation popup when a user is modifying 
       # an repeating event. The date displayed is the current date, normally 
       # it is not the initial starting date of the event.
       'CalendarFormat'		=> 'Kalenderformat',
       'CalendarFile'		=> 'Kalenderfil',
       'SetupGreetingC'         => 'Bes�k kalenderinst�llningssidan f�r att g�ra klart din kalenderinst�llning..',
       'Email2Selected'		=> 'Skicka epost till alla valda adresser',
       'AddNewEmail'		=> 'L�gg till ny epostadress i min adressbok',
       'ContactP'		=> 'Kontaktperson',
       'ContactE'		=> 'Kontaktepost',
       'DailyReminder'		=> 'Skicka dagliga p�minnelser till mig',
       'CompletedTasks'		=> 'Avklarade uppdrag',
       'PendingTasks'		=> 'Kommande uppdrag',
       'Import2Cal'		=> 'Importa den h�r h�ndelern till kalendern',
       'ViewOnly'		=> 'Eller v�lj en kalender att titta p�',
       'newLogin'		=> 'Eller logga in som en annan anv�ndare', 
       'QuickAdd'		=> 'Snabbtill�gg',
       'Event'                  => 'H�ndelse',
       'TodoList'               => 'Att-g�ralista',
       'MarkComplete'		=> 'F�rbockade uppdrag �r avklarade',
       'DeleteChecked'		=> 'Radera f�rbockade uppdrag',
       'AddNewTask'             => 'L�gg till nytt uppdrag',
       'TaskManager'            => 'Uppdragshanterare',
       'WarnInvitee'		=> '�r du s�ker p� att du vill l�ga till den h�r h�ndelsen i f�ljande kalendrar??',
       'creationDisabled'	=> 'Tyv�rr, systemadministrat�ren har st�ngt avm�jligheten att skapa kalenderar. Du m�ste kontakta henne s� att hon kan skapa en kalender till dig..',
       'RequestRSVP'            => 'Beg�r o.s.a.',
       'invitationAccepted'     => 'Accepterad',
       'invitationDeclined'     => 'Nekad',
       'AttendanceConfirmation' => 'M�tesdeltagande-bekr�ftelse',
       'AcceptInvitation'         => 'Acceptera inbjudan',
       'DeclineInvitation'      => 'Neka inbjudan',

       'Undecided'              => 'Ej best�mt',
       'Category'		=> 'Katetgori',
       'Speaker'		=> 'Talare',
       'Header'			=> 'Sidhuvud',
       'Footer'			=> 'Sidfot',
       'HeaderFooter'		=> 'Skriv in HTML-kod f�r det sidhuvud och den sidfot som ska anv�ndas f�r \'listvy\'',
       'MiscInfo'		=> 'Diverse info',
       'Description'		=> 'Beskrivning',
       'AllDay'			=> 'Hela dagen',
       'Tomorrow'		=> 'Imorgon',
       'ThisWeek'		=> 'Den h�r veckan',
       'ThisMonth'		=> 'Den h�r m�naden',
       'Keyword'		=> 'S�kord',
       'NoEvents'		=> 'Inga h�ndelser',
       'EditThis'		=> 'Redigera den h�r h�ndelsen',
       'recurFormat'            => 'Intr�ffar %s, %d g�nger fr�n och med %s.', # used in formating
       'taskDoneFormat'		=> 'Avklarat den %s, %s, %s', # formating 

       'warnModify'	       => '
Du h�ller p� att �ndra en h�ndelse som upprepas. Det �ndrade datumet, eller f�rdigst�llande-datumet, �r inte originaldatum f�r h�ndelsen. Om du �ndrar h�ndelsen kommer upprepningen att ske utifr�n de nya datumen.  All dold information om h�ndelsen, som accpetansdatum och m�tesacceptanser, kommer att f�rloras. Var v�nligt och godk�nn detta.

Att �ndra en enda f�rekomst av en h�ndelse med upprepning �r inte m�jligt. En l�sning �r att ta bort h�ndelsen och l�gga till en ny h�ndelse i dess st�lle.

Originaldatum (eller f�rdigst�llande-datum) f�r den h�r h�ndelsen �r ',

       'gEventError'		=> 'Du har, utan att ha tillst�nd till det, f�rs�kt att radera en f�rekomst av en grupperad h�ndelse som upprepas. Du till�ts inte  g�ra detta f�r att din kalender is�fall kommer att hamna ur synk med de �vriga gruppdeltagarnas kalendrar. Du kan dock ta bort alla f�rekomster av h�ndelsen ur din kalender genom att trycka p� "Radera alla f�rekomster"-knappen i h�ndelseeditorn',

       'City'                  => 'Stad',
       'State'                 => 'Stat',
       'Zip'                   => 'Postnummer',
       'Country'               => 'Land',


       'ResetPasswd'           => 'Nollst�ll anv�ndarl�senord',
       'File'                  => 'Fil',
       'AlreadyOnCalendar'     => 'F�ljande poster finns redan i din kalender och hoppades �ver:',
       'ImportFileTitle'         => 'Importera fr�n en VCalendar-fil p� din dator',
       'ImportFileInstruction'   => 'F�r att importera en VCalendar-fil fr�n din dator, skriv in hela s�kv�gen till VCalender-filen och tryck p� "utf�r"-knappen. Om du inte �r s�ker p� s�kv�gen kan du klicka p� "bl�ddra"-knappen f�r att leta reda p� din fil.', 
       'ImportVcal'		=> 'Importera h�ndelse fr�n VCalendarformat',
       'ImportVcalInstruction'	=> 'Du kan ocks� klippa och klistra in din VCalendar-post i textboxen och klicka p� "utf�r"-knappen',

       # new phrases

       'DetailedWorkingHours'   => 'Arbetstimmar, detaljerat', 
       'SelectAttendee' => 'F�r att ange m�tesdeltagare kan du v�lja kalendernamn, epostadresser, m�tesgrupper eller kombinationer av de samma. Du kan v�lja kalendernamn fr�n listan till v�nster eller skriva in dem i textboxen. Epostadresser m�ste skrivas in i textboxen. M�tesgrupper, om s�dana finns, kan v�ljas fr�n "M�tesgrupp"-menyn. Du kan �ven skriva in m�tesgruppsnamn i textboxen. Poster i textboxen ska avskiljas med mellanslag eller kommatecken.',

       'MkEditorListInstruction' => 'F�r att ge v�nner eller medarbetare r�ttighet att redigera din kalender, v�lj deras kalendernamn i listan till v�nster. Du kan �ven skriva in deras kalendernamn i textboxen.',

       'MkReaderListInstruction' => 'Om din kalender �r skydda kan inte andra anv�ndare l�sa din kalender. Du kan ge utvalda anv�ndare l�sbeh�righet genom att skapa en l�slista. En l�slista best�r av kalendernamn. Du kan antingen v�lja kalendernamn fr�n listan till v�nster eller skriva in dem i textboxen.',

       'MkGroupInstruction'=> 'F�r att l�gga till medlemmar i en arbetsgrupp kan du b�de anv�nda kalendernamn och epostadresser. Du kan antingen v�lja namn fr�n listan till v�nster eller skriva in dem i textboxen. Epostadresser m�ste skrivas in.',
       'Contacts'	   => 'Kontakter',
       'Tasks'		   => 'Uppdrag',
       'Day'		   => 'Dag',
       'Week'		   => 'Vecka',
       'Month'		   => 'M�nad',
       'Year'		   => '�r',
       'OffDutyHours'	   => 'Utanf�r arbetstid',
       'AddNewAddress'	   => 'L�gg till ny adress',
       'HeaderColor'	   => 'Sidhuvudsf�rg',
       'Never'		   => 'Aldrig',
       'OverlapNotAllowed' => 'Unfortunately, overlap events is not allowed on the following calendars.',
       'Notes'		   => 'Anteckningar',
       'PostIt'		   => 'PostIt',   # as in post it notes
       'Title'		   => 'Rubrik',
       'AddNewNote'	   => 'L�gg till ny anteckning',

       'InterestedCalendars' => 'V�lj alla kalendrar som du tror du kommer att vilja l�sa eller redigera.',
       'CalendarListInstruction' => 'Om du inte vill se den fullst�ndiga (ev. l�nga) listan med kalendrar i valmenyn, kan du
skapa en kortlista h�r. Skriv in namnen p� de kalenderar du vill se i valboxen eller v�lj dem i valboxen. Din kortlistan kommer att anv�ndas vid alla de tillf�llen en kalenderlista visas.',

       'MasterHeadInput'  => 'Vilken typ av kalenderval vill du anv�nda',
       'TextEntry'	  => 'textbox',
       'PulldownMenu'     => 'valbox',

       'LockWarning'      => 'Din kalender �ndrades medan din beg�ran behandlades. F�r att s�kerst�lla din kalenders dataintegritet har din beg�ran avslagits. G� tillbaka och f�rs�k igen.',

       'IUpload'	  => 'Skicka in bild',
       'FUpload'	  => 'Skicka in fil',
       'IUploadInstruction' => 'F�r att skicka in en bildfil fr�n din din disk, skriv in den fullst�ndiga s�kv�gen i textboxen och klicka p� "utf�r"-knappen. Om du �r os�ker p� s�kv�gen, kan du trycka p� "bl�ddra"-knappen och leta dig fram till filen.',
       'IUploadAck'	  => 'Bilden �r mottagen. F�r att l�gga in bilden i h�ndelsetitel eller beskrivning, klipp och klista in f�ljande rad i motsvarande textruta. Notera att det ibland kr�vs att administrat�ren godk�nner bilden,
is�fall kommer bilden ej att vara tillg�nglig f�r allm�nheten direkt.',
       'ReviewUI'  => 'G� igenom anv�ndarnas inskickade bilder',
       'ApproveChecked' => 'Godk�nn f�rkryssade',
       'RejectChecked' => 'Refusera f�rkryssade',
       'Export2Vcal'   => 'Exportera din kalender i vCal-format',
       'CreateNewCal'  => 'Skapa en ny kalender',
       'UsableImgs'    => 'Bilder som kan anv�ndas',
       'UImageInst'    => 'F�r att l�gga till en bild i titeln eller beskrivningen, klipp och klistra bildens namn (ta �ven med \\^o^/) till motsvarande textbox.',
	'CheckAll'     => 'Markera alla',
	'UncheckAll'   => 'Avmarkera alla',
        'Export2VCard' => 'Exportera din adressbok som vCard',
	'ImportVcard'  => 'Importera kontaktinformation fr�n vCard',
        'ImportVCardTitle'  => 'Importera kontaktinformation fr�n en vCard-fil',
        'ImportVcardInstruction' => 'Eller klipp och klista in din vCard-information i textrutan och tryck p� "Utf�r"-knappen',
        'ImportVcardFileInstruction'   => 'F�r att importera fr�n en vCard-fil p� din dator, skriv in hela s�kv�gen
till vCard-filen i textboxen och tryck p� "Utf�r". �r du os�ker p� s�kv�gen kan du klicka p� "bl�ddra"-knappen f�r att leta reda p� din fil.',
        'AlreadyInAddressbook' => 'F�ljande adresser finns redan med i din adressbok.',
	'DpyETimeAs' => 'Visa h�ndelse tid som',
	'MasterheadTabs' => 'Huvudflikar',

 	'DeferConfirmation'     => 'Skjut upp bekr�ftelse',
	'Unconfirmed'           => 'Obektr�ftad',

	'SendMailUsing'         => 'Skicka epost med', #	html, txt or vcal
         # used as in
         # send mail <> immediately or <> <hours> before event
        'Sendmail'              => 'Skicka epost',
        'immediately'           => 'direkt',
        'or'                    => 'eller',
        'beforeEvent',          => 'f�re h�ndelse',
        'Cancelled'             => 'Inst�lld',

        'AddNewEntry'		=> 'L�gg till ny post',
	'SearchNotes'		=> 'S�k i anteckningar',
	'SearchAddress'		=> 'S�k i adressboken',

	'Week_begins_on'	=> 'Veckan b�rjar p�',
	'StartDate'		=> 'Startdatum',
	'DueDate'		=> 'F�rdigdatum',
	'DueTime'		=> 'F�rdigtid',
	'Overdue'		=> 'F�rsenad',
	'EventDates'		=> 'H�ndelsedatum', 

	'SpecialEvents'		=> 'Speciella h�ndelser',
	'RemindForwardNewTask'  => 'Set Remind Forward on New Tasks',
	'DispCompletedTasks'    => 'Display Completed Tasks on Calendar',
	'TaskOptions'		=> 'Task Options',
        'DoneOn'		=> 'Done on %s by %s', # used to display completed tasks, like 'Done on 03/19/2002', 

        'DetailedView'		=> 'Detaljerad',
        'CombinedView'		=> 'Sammanslagen',
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

















# 
# This is the list of phrases or words used in the UI.
# To port webCal to another language, translating
# this list should be sufficient.
#
# Translated to Danish (Dansk) by Unknown person(s)
# Updated nov 2001 and jan 2002 by Henrik Bork Steffensen
#
# $Header: /home/cvs/webCal/webCal2/Danish.perl,v 1.81 2004/10/20 23:35:56 mzou Exp $
#

%::phr = (
       # specify character encoding.
       'CHARSET'		=> 'ISO-8859-1',

       'Calendar'               => 'Kalender',
       # Name of weekdays
       'Sunday'                 => 'Søndag',
       'Monday'                 => 'Mandag',
       'Tuesday'                => 'Tirsdag',
       'Wednesday'              => 'Onsdag',
       'Thursday'               => 'Torsdag',
       'Friday'                 => 'Fredag',
       'Saturday'               => 'Lørdag',
       # Name of weekdays, abbreviation
       'Sun'                    => 'Søn',
       'Mon'                    => 'Man',
       'Tue'                    => 'Tir',
       'Wed'                    => 'Ons',
       'Thu'                    => 'Tor',
       'Fri'                    => 'Fre',
       'Sat'                    => 'Lør',
       # Name of weekdays, abbreviated even more
       'Su'                     => 'Sø',
       'Mo'                     => 'Ma',
       'Tu'                     => 'Ti',
       'We'                     => 'On',
       'Th'                     => 'To',
       'Fr'                     => 'Fr',
       'Sa'                     => 'Lø',
       
       # Month Names  
       'January'                => 'Januar', 
       'February'               => 'Februar',
       'March'                  => 'Marts',   
       'April'                  => 'April',   
       'May_'                   => 'Maj',     #!
       'June'                   => 'Juni',    
       'July'                   => 'Juli',    
       'August'                 => 'August',
       'September'              => 'September',
       'October'                => 'Oktober',
       'November'               => 'November',
       'December'               => 'December',
       # Month Names, abbreviation
       'Jan'                    => 'Jan',
       'Feb'                    => 'Feb',
       'Mar'                    => 'Mar',
       'Apr'                    => 'Apr',
       'May'                    => 'Maj',
       'Jun'                    => 'Jun',
       'Jul'                    => 'Jul',
       'Aug'                    => 'Aug',
       'Sep'                    => 'Sep',
       'Oct'                    => 'Okt',
       'Nov'                    => 'Nov',
       'Dec'                    => 'Dec',

       # repeating rules 
       'OneTime'                => 'En gang',
       'Daily'                  => 'Dagligt',
       'Weekly'                 => 'Ugentligt',
       'Every2Weeks'            => 'Hver anden uge',
       'MonthlyByDate'          => 'Månedligt efter dato',
       'MonthlyByWeekday'       => 'Månedligt efter ugedag',
       'Yearly'                 => 'Årligt',
       'MTWThF'                 => 'Man-fre',
       'MWF'                    => 'Man, ons og fre',
       'TTh'                    => 'Tir og tor',
       'YearlyByMonthWeekday'   => 'Årligt efter ugedag i måned',
       'EveryOtherDay'          => 'Hver anden dag',
       'Every3rdDay'            => 'Hver tredje dag',
       'Every4thDay'            => 'Hver fjerde dag',
       'Every5thDay'            => 'Hver femte dag',
       'Every6thDay'            => 'Hver sjette dag',

       # event types
       'Appointment'            => 'Aftale',
       'Todo'                   => 'Opgaver',
       'Meeting'                => 'Møde',
       'Special'                => 'Specielt',

       # option button names
       'CalendarOptions'        => 'Kalenderindstillinger',
       'Compare'                => 'Sammenlign',
       'Search'                 => 'Søg',
       'GotoDate'               => 'Gå til dato',
       'Previous'               => 'Forrige',
       'Today'                  => 'I dag',
       'Next'                   => 'Næste',
       'Options'                => 'Indstillinger',
       'Admin'                  => 'Admin',
       'Logout'                 => 'Log ud',
       'DayView'                => 'Dagsplan',
       'WeekView'               => 'Ugeplan',
       'MonthView'              => 'Månedsplan',
       'YearView'               => 'Årsplan',
       
       
       # messages on the setup screen
       'SetupYourCalendar'      => 'Klargør din kalender',
       'YourCalendarName'       => 'Brugernavn',
       'YourEmailAddress'       => 'E-mail adresse',
       'YourName'               => 'Fuldt navn',
       'Password'               => 'Adgangskode',
       'RetypePassword'         => 'Gentag adgangskode',
       'CalendarType'           => 'Kalendertype',
       'Public'                 => 'Fælles',
       'Private'                => 'Privat',
       'ForPrivateCalendar'     => 'For privat kalender',
       'OthersSeeTextTime'      => 'Andre kan se tekst og tid',
       'OthersSeeTitle'         => 'Others See Event Title',
       'OthersSeeTimeOnly'      => 'Andre kan kun se tid',
       'OthersSeeNothing'       => 'Andre ser ingenting',
       'PublicCalendar'         => 'Fælleskalender',
       'Submit'                 => 'Opdater',
       'Cancel'                 => 'Afbryd',
       'TheName'                => 'Navnet',
       'HasBeenTaken'           => 'er allerede i brug',
       'PasswordMismatch'       => 'adgangskoderne stemmer ikke overens',
       'TryAgain'               => 'prøv igen',
       'EmailIncomplete'        => 'Din e-mail adresse er ufuldstændig',
       'CannotCreateCalendar'   => 'Kunne ikke klargøre din kalender. Brugernavnet skal være et lovligt ord',
       'CannotWriteInfoFile'    => 'Kan ikke skrive til informationsfilen',
       'CannotWriteDataFile'    => 'Kan ikke skrive til datafilen',
       'CannotWritePasswordFile'=> 'Kan ikke modificere adgangskodefilen',
       'Congratulations'        => 'Tillykke',
       'SetupGreetingA'         => 'Din kalender er nu klargjort. Føj et bogmærke til',
       'SetupGreetingB'         => 'Husk din adgangskode. Du skal bruge den for at få adgang til kalenderen senere',
       'HaveToSupplyCalendarName' => 'Du skal opgive et brugernavn',
       'PleaseDoNotUseYourUnixAccountPassword' => 'Brug ikke din Unix-adgangskode',
       
       
       # Event Editor Messages
       'EventEditor'            => 'Redigering af begivenheder',    ###
       'AppointmentEditor'      => 'Redigering af aftaler',
       'ToDoEditor'             => 'Redigering af opgaver',
       'MeetingEditor'          => 'Redigering af møde',
       'SpecialEditor'          => 'Redigering af specielle begivenheder',
       'AuthRequired'           => 'Bemærk: Der kræves autorisation for at ændre i kalenderen',
       'CurrentEvents'          => 'Kortfattet beskrivelse',  ###
       'Time'                   => 'Tid',
       'What'                   => 'Beskrivelse',
       'Date'                   => 'Dato',
       'Start'                  => 'Start',
       'End'                    => 'Slut',
       'Details'                => 'Detaljer',
       'Colors'                 => 'Farver',
       'Privacy'                => 'Offentlighed',         ###
       'Frequency'              => 'Frekvens',
       'Reminders'              => 'Påmindelser',         ###
       'Mail'                   => 'E-mail',
       'min'                    => 'min', # abbreviation of minute
       'mins'                   => 'min',
       'hours'                  => 'timer',
       'days'                   => 'dage',
       'weeks'                  => 'uger',
       'Occurs'                 => 'Forekommer',
       'For'                    => 'Hyppighed',  # gets used in two different places, blanked it for now
       'times'                  => ' gang(e)',
       'Popup'                  => 'Meddelelsesvindue',
       'Author'                 => 'Forfatter',
       'Blink'                  => 'Blinkning',
       'Chime'                  => 'Klokke',
       'Insert'                 => 'Indsæt',
       'InsertAsNew'            => 'Indsæt ny',
       'Modify'                 => 'Ændre',
       'DeleteThisOne'          => 'Slet denne forekomst',
       'DeleteAll'              => 'Slet alle forekomster',
       'Delete'                 => 'Slet',
       'Due'                    => 'Slut', # as in Due Date
       'TaskDone'               => 'Opgaven er udført',
       'RemindForward'          => 'Fremtidige påmindelser',
       'Yes'                    => 'Ja',
       'No'                     => 'Nej',
       'Y'                      => 'J', # abbrieviation of Yes
       'N'                      => 'N', # abbrieviation of No
       'ToDo'                   => 'Gøremål',
       'Participants'           => 'Deltagere',
       'none'                   => 'ingen',
       'MailToAll'              => 'Send E-mail til alle',
       'FindConflict'           => 'Find konflikt',
       'NoTimeEvent'            => 'Dato uden klokkeslet',  ###
       'Fg'                     => 'Fg',
       'Bg'                     => 'Bg',
       'Error'                  => 'Fejl',
       'HasError'               => 'Der opstod en fejl under behandlingen af din forespørgsel',
       'ListParticipants'       => 'Deltagerliste over møde-grupper eller brugernavne eller e-mail adresser. Deltagernes kalendere vil blive opdateret',
       'ConflictTable'          => 'Konflikt-tabel',
       'Conflict'               => 'konflikt',         
       'Table'                  => 'tabel',         
       'You'                    => 'Du',
       'NotAllowedToModify'     => 'har ikke adgang til at ændre dette indlæg',
       'NotAllowedToEdit'       => 'har ikke adgang til at ændre i denne kalender',
       'Warning'                => 'Advarsel',
       'NoRemindForward'        => 'Ingen påmindelse fremover for opgaver som geentager sig',   ###
       'Acknowledgement'        => 'Bekræftelse',
       'UpdatedOK'              => 'Kalenderen blev opdateret uden problemer',
       'BackToCalendar'         => 'Klik her for at gå tilbage til kalenderen',
       'OpenFailed'             => 'Kan ikke åbne kalenderen',
       'NoCalendar'             => 'Der findes ingen kalender med det navn',
       
       # goto page
       'Goto_Date'              => 'Gå til dato', #title
       'Goto'                   => 'Gå til',
       'SelectDate'             => 'Vælg dato',
       'View'                   => 'Vis',
       'Go'                     => 'Vælg', # function as submit
       'Set'                    => 'Opdater', # as in set options
       
       # set options page
       'My_day_starts_at'       => 'Min dag begynder kl',
       'ends_at'                => 'Slutter kl',
       'Interval'               => 'interval',
       'Week_starts_on',        => 'Ugen starter',
       'include_weekend',       => 'Medtag weekend',
       'Date_Format'            => 'Datoformat',
       'Time_Format'            => 'Tidsformat',
       'Time_zone'              => 'Tidszone',
       'Default_view'           => 'Standard visning',  ###
       'Default_Reminders'      => 'Standard-instillinger for påmindelser', ###
       'ListEditors'            => 'Viser brugere som har adgang til at ændre i kalenderen',
       'Editors'                => 'Disse har adgang',
       'Email'                  => 'E-mail',
       'Default'                => 'Standard',  ###
       'Homepage'               => 'Hjemmeside',
       'Language'               => 'Sprog',
       
       # admin page
       'Administration'         => 'Administration',
       'adminDisabled'          => 'Kalender-administration er ikke mulig for fælles kalendere',
       'Change_Password'        => 'Ændre adgangskode',
       'Old_Password'           => 'Gammel adgangskode',
       'New_Password'           => 'Ny adgangskode',
       'New_Password_Again'     => 'Gentag ny adgangskode',
       'to_be_used_by_meeting_editor' => 'til brug under møde-redigering',
       'Existing_Groups'        => 'Eksisterende grupper',
       'Group_Name'             => 'Gruppenavn',
       'ListGroupMembers'       => 'Indtast brugernavnene eller e-mail adresserne på deltagerne',
       'Merge_Calendars'        => 'Sammenflet kalendere',
       'CalendarNames'          => 'Kalendernavn',
       'EraseCalendar'          => 'Fjern min kalender fra systemet',
       'DeleteCalendar'         => 'Slet indholdet af min kalendar',
       'errorPerm'              => 'Ingen adgang',
       'calDeleted'             => 'Indholdet af din kalender er blevet slettet',
       'ThankYou4Using'         => 'Tak fordi du bruger',
       'calErased'              => 'Din kalender er nu fjernet',
       'eraseFailed'            => 'Kan ikke fjerne din kalender',
       'cpasswordWrong'         => 'Autoristionsfejl: Adgangskoden er forkert',
       'ipasserror'             => 'Kan ikke åbne adgangskodefilen. Prøv igen senere.',
       'password_changed'       => 'Adgangskoden er blevet ændret',
       'cannot_open'            => 'Kan ikke åbne',
       'Meeting_group'          => 'Møde-gruppe',
       'updated'                => 'er blevet opdateret',
       'new_entries'            => 'en ny registrering blev lagt i din kalender',
       'Unknown_command'        => 'Ukendt kommando',
       
       
       # search page
       'Search_Calendar'        => 'Søg i kalenderen',
       'Topic'                  => 'Emne',
       'SearchAll'              => 'Søg i hele kalenderen.',
       'Search_From'            => 'Søg fra',
       'To'                     => 'til',
       'Search_Results'         => 'Søgeresultater',
       'CalendarReminder'       => 'Kalender-påmindelse',
         
       # Greeting
       'WelcomeToWebCalendar'   => 'Velkommen til WebKalender',
       'PleaseSelectACalendar'  => 'Vælg kalender',
       'PleaseEnterCalendarName'=> 'Skriv kalendernavn',

       #download
       'notAllowedToDownload'   => 'Du har ikke adgang til at gemme denne kalender',
         
       #logout
       'AuthNotRequired'        => 'Bemærk: Autorisation er ikke nødvendig for at læse i fælles kalendere',
       'logoutInstruction'      => 'For at logge ud, klik på "Log ud"-knappen. Når du bliver bedt om brugernavn, vælg «nobody». Adgangskode er ikke nødvendig.',
       'loginInstruction'       => 'For at logge ind som en anden bruger, klik på "Log ind"-knappen',
       'You_ve_logout'          => 'Du er logget ud',
       'access_denied'          => 'adgang nægtet',
       'login'                  => 'Log ind',

       #compare
       'CompareCalendars'       => 'Sammenlign kalendere',
       'Enter_calendar_names'   => 'Indtast kalendernavne',
       'or_meeting_group'       => 'eller møde-grupper',
       'EventsTable'            => 'Begivenhedsoversigt',   ###
       'Name'                   => 'Navn',
       'Events'                 => 'Begivenheder',    ###
       'ForegroundColor'        => 'Forgrundsfarve',
       'BackgroundColor'        => 'Baggrundsfarve',

       # msg in the main
       'accessAnotherCal'        => 'For at skifte til en anden kalender,',

       # Some missing phrases and addons ...
       'Close'                  => 'Luk',
       'ShowCombinedCalendar'   => 'Vis flettede kalendere',
       'CombinedCalendar'       => 'Flettet kalender',

       'Participants_are_allowed_to' => "Deltagere har tilladelse til at",
       'View_only'              => 'Kun se',
       'Edit'                   => 'Redigere',
       'EditAndDelete'          => 'Redigere og slette',
       'Updated_calendars'      => 'Følgende kalendere er også blevet opdateret',
       'NotAllowedToUpdate'     => 'Du har IKKE lov til at opdatere følgende kalendere',
       'invalid_date'           => 'Ugyldig dato',
       'Schedule'               => 'Planlæg',            # as in 'schedule an appointment on calendar mzou
       'onCalendar'             => 'på kalender',          #
       'DeleteForward'          => 'Slet fremtidige forekomster',
       'All'                    => 'Alle',

       'SearchSubjectEmpty'	=> 'Søgefeltet må ikke være tomt',
       'Start_date'             => 'Startdato',
       'is_after_due_date'      => 'er efter slutdatoen',
       'Invalidusername'	=> 'Ugyldigt brugernavn',
       'Invalidcalendarname'	=> 'Ugyldigt kalendernavn',
       'Protected'		=> '==beskyttet==',
       'Couldnotfindcalendar' => 'Kunne ikke finde kalenderen',
       'Invalidspooldir'      => 'Ugyldigt spoolkatalog',
       'ListView'             => 'Liste plan',
       'BlockView'            => 'Blok plan',

       # address book stuff
       'AddressBook'           => 'Adressebog',
       'AddressBookEditor'     => 'Adressebog Redigering',
       'AddressBookUpdated'    => 'Adressebog opdateret',
       'BackToAddressBook'     => 'Klik her for at returnere til adressebogen',
       'FirstName'             => 'Fornavn',
       'LastName'              => 'Efternavn',
       'Address'               => 'Adresse',
       'Phone'                 => 'Telefon',
       'Fax'                   => 'Fax',
       'Info'                  => 'Info',
       'Affiliation'           => 'Tilhørsforhold',
       'Where'                 => 'Hvor',
       'Priority'              => 'Prioritet',
       'Diary'                 => 'Dagbog',
       'DiaryUpdated'          => 'Dagbog opdateret',
       'ReadDiary'             => 'Læs dagbog',       
       'From'                  => 'Fra',
       'PlainText'             => 'Alm. Tekst',
       'Html'                  => 'Html',
       'SearchDiary'           => 'Søg i dagbogen',
       'SearchFor'             => 'Søg efter',
       'NeedAuth2Proceed'      => 'Autorisation kræves for at se eller redigere. Klik på \'login\' for at fortsætte, eller klik på kalenderikonet for at returnere til din kalender.',

       # Priority of ToDo tasks
       'Urgent'                => 'Haster',
       'High'                  => 'Høj',
       'Medium'                => 'Mellem',
       'Low'                   => 'Lav',       


       # find calendar names
       'FindCalNames'          => 'Find kalendere',

       # overlapping 
       'AllowOverlap'          => 'Tillad overlappende begivenheder',
       'GoBack'                => 'Gå tilbage',  #

       'OverlapInstr'          => 'Denne begivenhed blev afvist fordi den overlapper med en eller flere eksisterende begivenheder i kalenderen (se tabel).
Hvis du ønsker at indsætte den i kalenderen skal du gå tilbage og markere <b>\'J\'</b> ved <b>\'Tillad overlappende begivenheder\'</b> og prøv igen.',

       'signup'                 => 'Tilmeld',
       'Invalidpassword'	=> 'Forkert adgangskode',
       'olduserInstruction'     => 'Jeg har en kalender på fil',
       'newuserInstruction'     => 'Jeg er ny bruger',
       'PleaseLogin'            => 'Autorisation er påkrævet. Log ind først!',
       'NextNew'		=> 'Næste nye begivenhed',
       'RememberIDPswd'         => 'Husk brugernavn og adgangskode (så de ikke skal genindtastes)',
       'global'                 => 'Global', # mark global meeting group
       'groupnametaken'         => 'Møde gruppe navnet et taget, vælg et andet navn',
       'deleteEventsBefore'     => 'Slet alle begivenheder før',
       'AutoStart'              => 'Automatisk start af WebCalendar',
       'Readers'                => 'Læsere',
       'ListReaders'            => 'Liste over brugere som har adgang til at læse i kalenderen',
       'Print'			=> 'Udskriv',
       'mailVcal'		=> 'Vedhæft VCALENDAR i E-mail påmindelserne',
       'FriendsEmail'		=> 'Din ven\'s E-mail Adresse',
       'PersonalMessage'	=> 'Tilføj en personlig besked',
       'Mail2Friend'		=> 'E-mail denne begivenhed til en ven',
       'MailSentTo'		=> 'Aftalen var sent til ',
       'Location'               => 'Sted',
       # the next line is used in a confirmation popup when a user is modifying 
       # an repeating event. The date displayed is the current date, normally 
       # it is not the initial starting date of the event.
       'CalendarFormat'			=> 'Kalender Format',
       'CalendarFile'			=> 'Kalender Fil',
       'SetupGreetingC'         => 'Se venligst på kalender indstillingerne herunder for at færdigøre opsætningen af din kalender.',
       'Email2Selected'		=> 'E-mail til alle valgte adresser',
       'AddNewEmail'		=> 'Tilføj ny E-mail til min adresse bog',
       'ContactP'		=> 'Kontakt Person',
       'ContactE'		=> 'Kontakt E-mail',
       'DailyReminder'		=> 'Send mig daglige påmindelser',
       'CompletedTasks'		=> 'Afsluttede opgaver',
       'PendingTasks'		=> 'Ventende opgaver',
       'Import2Cal'		=> 'Importer denne begivenhed til kalender',
       'ViewOnly'		=> 'Eller vælg en kalender at vise',
       'newLogin'		=> 'Eller login som en anden bruger', 
       'QuickAdd'		=> 'Lyn tilføj',
       'Event'                  => 'Begivenhed',
       'TodoList'               => 'Opgave Liste',
       'MarkComplete'		=> 'Marker de valgte som udførte',
       'DeleteChecked'		=> 'Slet de valgte',
       'AddNewTask'             => 'Tilføj ny opgave',
       'TaskManager'            => 'Opgave styring',
       'DetailedView'		=> 'Detaljer',
       'CombinedView'		=> 'Kombineret',
       'WarnInvitee'		=> 'Er du sikker på at du vil tilføje denne begivenhed i de følgende kalendere?',
       'creationDisabled'	=> 'Beklager, men oprettelse af nye kalendere er slå fra. Kontakt din system administrator.',
       'RequestRSVP'            => 'Rekvirer RSVP',
       'invitationAccepted'     => 'Invitationen er accepteret',
       'invitationDeclined'     => 'Invitationen er afvist',
       'AttendanceConfirmation' => 'Møde deltagelse bekræftet',
       'AcceptInvitation'         => 'Accepter invitation',
       'DeclineInvitation'      => 'Afvis invitation',

       'Undecided'              => '????????? Undecided',
       'Category'		=> 'Kategori',
       'Speaker'		=> 'Taler',
       'Header'			=> 'Dokument top',
       'Footer'			=> 'Dokument bund',
       'HeaderFooter'		=> 'Indtast top/bund HTML kode som skal vises i \'list view\'',
       'MiscInfo'		=> 'Diverse Info',
       'Description'		=> 'Beskrivelse',
       'AllDay'			=> 'Hele dagen',
       'Tomorrow'		=> 'I morgen',
       'ThisWeek'		=> 'Denne uge',
       'ThisMonth'		=> 'Denne måned',
       'Keyword'		=> 'Nøgleord',
       'NoEvents'		=> 'Ingen begivenheder',
       'EditThis'		=> 'Ret denne begivenhed',
       'recurFormat'            => 'Optræder %s ialt %d gange, første gang %s.', # used in formating
       'taskDoneFormat'		=> 'Afsluttet af %s på %s kl %s', # formating 

       'warnModify'	       => '
Du er ved at rette en gentangende begivenhed. Datoen (eller slut datoen) 
vist er ikke den originale dato for denne begivenhed.  Hvis du fortsætter 
med at rette så vil begivenhedens start dato være den nye dato,  og
alt skjult infomation om denne begivendhed, såsom undtagelses datoer og
møde konfirmerings data, vil gå tabt. Bekræft venligst.

At rette en forkomst af en gentagende begivendhed er ikke mulig. Du kan
i stedet slette den gentagende begivendhed og oprette en ny i stedet for.

Den originale dato (eller slut dato) for denne begivendehed er ',

       'gEventError'		=> 'Du forsøgte at slette en del af en gentangende gruppe begivenhed uden tiladelse hertil.
Dette er ikke tilladt da det vil bringe din calender ud af synkronisering i forhold til de andre medlemmer af gruppen.  Du kan i stedet 
slette alle forekomster af denne begivenhed fra din kalender ved at klike på "Slet alle forekomster" knappen på billedet til redigering af begivenheder ',



       'City'                  => 'By',
       'State'                 => 'Stat',
       'Zip'                   => 'Postnummer',
       'Country'               => 'Land',


       'ResetPasswd'           => 'Nulstil bruger adgangskode',
       'File'                  => 'Fil',
       'AlreadyOnCalendar'     => 'De følgende registreringer er allerede i din kalender. De vil blive ignoreret.',
       'ImportFileTitle'         => 'Importer fra en VCalendar Fil',
       'ImportFileInstruction'   => 'For at importere fra en VCalendar fil på din computer, indtast den fulde sti til
VCalendar filen i indtastnings feltet og klik på opdater knappen. Hvis du er usikker på stien så klik på browse knappen og find din fil.',
       'ImportVcal'		=> 'Importer begivenheder fra VCalendar',
       'ImportVcalInstruction'	=> 'Eller "cut and paste" din vcalendar i ind tekstområdet og klik på Send knappen',


       'DetailedWorkingHours'   => 'Detaljeret daglig arbejdstid', 
       'SelectAttendee' => 'Kalender navne, E-mail adresser, møde grupper og kombinationer af dem kan bruges 
til at angive deltagere. Du kan vælge kalender navne fra listen til ventre, eller indtaste dem i 
indtastnings feltet ovenfor. E-mail adresser skal indtastes i indtastnings feltet. Møde grupper, kan vælges i
\'Møde-gruppe\' feltet. Du kan også indtaste møde grupper i indtastnings feltet.  de enkelte navne / grupper
i indtastnings feltet skal adskilles af komma eller mellemrum.',

       'MkEditorListInstruction' => 'Hvis du vil lade venner og kollegaer rette i din kalender kan du vælge
deres kalender navne i listen til venstre. Du kan også indtaste deres kalender navne i feltet ovenfor.',

       'MkReaderListInstruction' => 'Hvis din kalender er beskyttet kan andre brugere ikke læse i din kalender.
Du kan give udvalgte personer adgang til at læse din kalender ved at lave en liste over læsere.
Denne liste består af kalender navne. Du kan vælge navnene i boksen til venstre eller du kan
indtaste dem i feltet ovenfor.',

       'MkGroupInstruction'=> 'Kalender navne eller E-mail adresser kan bruges til at identificere medlemmer af
en arbejdsgruppe. Du kan vælge kalender navne fra listen til venste, eller ved at indtaste dem i feltet
ovenfor. E-mail adresser skal indtastes i feltet ovenfor.',
       'Contacts'	   => 'Adressebog',
       'Tasks'		   => 'Opgaver',
       'Day'		   => 'Dag',
       'Week'		   => 'Uge',
       'Month'		   => 'Måned',
       'Year'		   => 'År',
       'OffDutyHours'	   => 'Fri timer',
       'AddNewAddress'	   => 'Tilføj ny adresse',
       'HeaderColor'	   => 'Farve på dokument top',
       'Never'		   => 'Aldrig',
       'OverlapNotAllowed' => 'Unfortunately, overlap events is not allowed on the following calendars.',
       'Notes'		   => 'Noter',
       'PostIt'		   => 'PostIt',   # as in post it notes
       'Title'		   => 'Titel',
       'AddNewNote'	   => 'Tilføj ny note',
       
       'InterestedCalendars' => 'Liste over alle de kalendere som du forventer at ville læse eller rette i.', 
       'CalendarListInstruction' => 'Hvis du vil nøjes med at se et mindre antal kalendere i kalender valgs menuen
så kan du lave en kort liste her.  Du kan vælge kalender navne i boksen til venstre eller indtaste dem i feltet ovenfor. 
Den valgte korte liste vil blive brugt alle steder hvor listen over kalendere bruges.',

       'MasterHeadInput'  => 'På hovedsiden vælges kalender ved hjælp af ',
       'TextEntry'	  => 'Tekstfelt',
       'PulldownMenu'     => 'Pulldown menu',

       'LockWarning'      => 'Din kalender blev ændret imens jeg behandlede din ændring. For at sikre data integritet 
blev din ændring forkastet. Gå venligst tilbage og prøv igen.',

       'IUpload'	  => 'Billede Upload', 
       'FUpload'	  => 'Fil Upload',        
       'IUploadInstruction' => 'For at upload\'e en fil fra din computer, indtast det fulde navn på filen
(inkl. sti angivelse) i tekst feltet og tryk på opdater knappen. Hvis du er usikker på sti og filnavn tryk på
browse knappen og naviger frem til din fil.',
       'IUploadAck'	  => 'Billede upload\'et. For at indsætte billedet i din begivenhed, "cut and paste"
Den følgende linie ind i det tilhørende tekstfelt. Bemærk venligst at billedet muligvis først skal godkendes
af din WebCal administrator. I dette tilfælde vil billedet ikke være tilgængeligt før det er godkendt.',
       'ReviewUI'  => 'Gennemse bruger upload\'ede billeder',

       'ApproveChecked' => 'Godkend de markerede',	   
       'RejectChecked' => 'Afvis de markerede',	 
       'Export2Vcal'   => 'Eksporter din kalender i vCal formatet',
       'CreateNewCal'  => 'Lav en ny kalender',
       'UsableImgs'    => 'Brugbare billeder',
       'UImageInst'    => 'For at indsætte et billede i din begivendheds titel eller beskrivelse, "cut and paste" 
dens navn (inklusive \\^o^/) ind i det tilhørende tekstfelt',
	'CheckAll'     => 'Marker alle',
	'UncheckAll'   => 'Fjern markering fra alle',
        'Export2VCard' => 'Eksporter din adresse bog til vCard',
	'ImportVcard'  => 'Importer adresser fra vcard',
        'ImportVCardTitle'  => 'Importer fra en vCard fil på din computer',
        'ImportVcardInstruction' => 'Eller "cut and paste" dit vcard in i tekstfeltet og tryk på opdater knappen',
        'ImportVcardFileInstruction'   => 'For at importere fra en vCard fil på din computer, indtast det fulde navn
på Vcard filen i i tekst feltet og tryk på opdater knappen. Hvis du er usikker på sti navnet så tryk på browse knappen og naviger dig frem til filen.',
        'AlreadyInAddressbook' => 'De følgende adresser er allerede i din adressebog.',

	'DpyETimeAs' => 'Vis tid som',
	'MasterheadTabs' => 'Faneblade',

 	'DeferConfirmation'     => 'Afvis bekræftelse',
	'Unconfirmed'           => 'Ubekræftiget',

	'SendMailUsing'         => 'Send email som', #	html, txt or vcal
         # used as in
         # send mail <> immediately or <> <hours> before event
        'Sendmail'              => 'Send email',
        'immediately'           => 'øjeblikkelig',
        'or'                    => 'eller',
        'beforeEvent',          => 'før begivenheden',
        'Cancelled'             => 'Annuleret',

        'AddNewEntry'		=> 'Tilføj nyt punkt',
	'SearchNotes'		=> 'Søg Noter',
	'SearchAddress'		=> 'Søg Adressebogen',

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

        'DetailedView'		=> 'Detaljer',
        'CombinedView'		=> 'Kombineret',
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
	# Translation end

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








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
       'Sunday'                 => 'söndag',
       'Monday'                 => 'måndag',
       'Tuesday'                => 'tisdag',
       'Wednesday'              => 'onsdag',
       'Thursday'               => 'torsdag',
       'Friday'                 => 'fredag',
       'Saturday'               => 'lördag',
       # Name of weekdays, abbreviation
       'Sun'                    => 'sön',
       'Mon'                    => 'mån',
       'Tue'                    => 'tis',
       'Wed'                    => 'ons',
       'Thu'                    => 'tor',
       'Fri'                    => 'fre',
       'Sat'                    => 'lör',
       # Name of weekdays, abbreviated even more
       'Su'                     => 'sö',
       'Mo'                     => 'må',
       'Tu'                     => 'ti',
       'We'                     => 'on',
       'Th'                     => 'to',
       'Fr'                     => 'fr',
       'Sa'                     => 'lö',
       
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
       'OneTime'                => 'Engångs',                   # one time event
       'Daily'                  => 'Daglig',
       'Weekly'                 => 'Veckovis',
       'Every2Weeks'            => 'Varannan vecka',
       'MonthlyByDate'          => 'Måntligen, på datum',
       'MonthlyByWeekday'       => 'Måntligen, på veckodag',         # e.g. the 3rd Friday of every month
       'Yearly'                 => 'Årlig',
       'MTWThF'                 => 'må till fre',
       'MWF'                    => 'mån ons fre',
       'TTh'                    => 'tis tor',
       'YearlyByMonthWeekday'   => 'Årligen, på måntlig veckodag',    # e.g. the first Monday of June, yearly
       'EveryOtherDay'          => 'Varannan dag',
       'Every3rdDay'            => 'Var tredje dag',
       'Every4thDay'            => 'Var fjärde dag',
       'Every5thDay'            => 'Var femte dag',
       'Every6thDay'            => 'Var sjätte dag',

       # event types
       'Appointment'            => 'Avtaladtid',
       'Todo'                   => 'Att-göra',
       'Meeting'                => 'Möte',
       'Special'                => 'Special',            # for holidays, event require no specific time

       # option button names
       'CalendarOptions'        => 'Kalenderinställningar',   # title of the options page
       'Compare'                => 'Jämför',            # Button: compare calendars and find conflicts ...
       'Search'                 => 'Sök',             # Button:
       'GotoDate'               => 'Gå till datum',           # Button:
       'Previous'               => 'Föregående',           # previous Month/Day/Week 
       'Today'                  => 'Idag',              # This Month/Day/Week 
       'Next'                   => 'Nästa',               # next Month/Day/Week 
       'Options'                => 'Inställningar',            # Button: go to options page 
       'Admin'                  => 'Admin',              # Button: go to admin page
       'Logout'                 => 'Logga ut',             # Button: go to logout page
       'DayView'                => 'Dagsvy',           # Alt name under the image buttons
       'WeekView'               => 'Veckovy',
       'MonthView'              => 'Månadsvy',
       'YearView'               => 'Årsvy',
       
       
       # messages on the setup screen
       'SetupYourCalendar'      => 'Ställ in din kalender', # title
       'YourCalendarName'       => 'Ditt kalendernamn',
       'YourEmailAddress'       => 'Din epostadress',
       'YourName'               => 'Ditt namn',
       'Password'               => 'Lösenord',
       'RetypePassword'         => 'Skriv lösenord igen',
       'CalendarType'           => 'Kalendertyp',
       'Public'                 => 'Öppen',
       'Private'                => 'Privat',
       'ForPrivateCalendar'     => 'För privata kalendrar',
       'OthersSeeTextTime'      => 'Andra ser tid och text',
       'OthersSeeTitle'         => 'Others See Event Title',
       'OthersSeeTimeOnly'      => 'Andra ser enbart tid',
       'OthersSeeNothing'       => 'Andra ser ingenting',
       'PublicCalendar'         => 'Öppnakalendrar',
       'Submit'                 => 'Utför',
       'Cancel'                 => 'Ångra',
       'TheName'                => 'Namnet',
       'HasBeenTaken'           => 'är redan taget',
       'PasswordMismatch'       => 'lösenord stämmer ej överens',
       'TryAgain'               => 'försök igen',
       'EmailIncomplete'        => 'Epostadressen är inte fullständig',
       'CannotCreateCalendar'   => 'Kunde inte skapa din kalender. Ditt kalendernamn måste vara ett godkänt ord',
       'CannotWriteInfoFile'    => 'Kunde inte skriva i infofilen',
       'CannotWriteDataFile'    => 'Kunde inte skriva till datafilen',
       'CannotWritePasswordFile'=> 'Kunde inte ändra i lösenordsfilen',
       'Congratulations'        => 'Grattis',
       'SetupGreetingA'         => 'Din kalender har skapats. Se till att spara ett bokmärke som leder till din kalender;',
       'SetupGreetingB'         => 'Kom ihåg ditt lösenord. Det behövs för att komma åt din kalender',
       'HaveToSupplyCalendarName' => 'Du måste ange ett namn för din kalender',
       'PleaseDoNotUseYourUnixAccountPassword' => 'Undvika att använda samma namn/lösenord som för ditt UNIX-konto',
       
       # Event Editor Messages
       'EventEditor'            => 'Händelseeditor',
       'AppointmentEditor'      => '"Avtalade tider"-editor',
       'ToDoEditor'             => 'Att-göraeditor',
       'MeetingEditor'          => 'Möteseditor',
       'SpecialEditor'          => '"Speciella händelser"-editor',
       'AuthRequired'           => 'Du måste ha annan behörighet för att kunna redigera den här kalendern',
       'CurrentEvents'          => 'Nuvarande händelser',
       'Time'                   => 'Tid',
       'What'                   => 'Vad',
       'Date'                   => 'Datum',
       'Start'                  => 'Start',
       'End'                    => 'Slut',
       'Details'                => 'Detaljer',
       'Colors'                 => 'Färger',
       'Privacy'                => 'Privat',
       'Frequency'              => 'Frekvens',
       'Reminders'              => 'Påminnelse',
       'Mail'                   => 'Epost',
       'min'                    => 'min', # abbreviation of minute
       'mins'                   => 'min',
       'hours'                  => 'timmar',
       'days'                   => 'dagar',
       'weeks'                  => 'veckor',
       'Occurs'                 => 'Inträffar',
       'For'                    => 'För',
       'times'                  => 'gånger',   # as in repeat for 10 times 
       'Popup'                  => 'Popup',
       'Author'                 => 'Författare',
       'Blink'                  => 'Blinka',
       'Chime'                  => 'Ring',
       'Insert'                 => 'Lägg till',
       'InsertAsNew'            => 'Lägg till som ny',
       'Modify'                 => 'Ändra',
       'DeleteThisOne'          => 'Ta bort den här förekomsten',
       'DeleteAll'              => 'Ta bort alla förekomster',
       'Delete'                 => 'Ta bort',
       'Due'                    => 'Färdig till', # as in Due Date
       'TaskDone'               => 'Uppdraget har slutförts',
       'RemindForward'          => 'Förvarna',
       'Yes'                    => 'Ja',
       'No'                     => 'Nej',
       'Y'                      => 'J', # abbrieviation of Yes
       'N'                      => 'N', # abbrieviation of No
       'ToDo'                   => 'Att-göra',
       'Participants'           => 'Deltagare',
       'none'                   => 'inga',
       'MailToAll'              => 'Skicka epost till alla',
       'FindConflict'           => 'Sök krockar',
       'NoTimeEvent'            => 'Icke tidsberoende händelse',
       'Fg'                     => 'Fg',
       'Bg'                     => 'Bg',
       'Error'                  => 'Fel',
       'HasError'               => 'Det uppstod ett fel när din begäran behandlades',
       'ListParticipants'       => 'Skriv in mötesgrupper, kalendernamn eller fullständiga epostadresserna till deltagarna. Deras kalendrar kommer att uppdateras',
       'ConflictTable'          => 'Lista över krockar',
       'Conflict'               => 'Krockar',         
       'Table'                  => 'Tabell',
       'You'                    => 'Du',
       'NotAllowedToModify'     => 'har inte behörighet för att ändra den här posten',
       'NotAllowedToEdit'       => 'har inte behörighet för att redigera den här kalendern',
       'Warning'                => 'Varning',
       'NoRemindForward'        => 'Kan inte förvarna för att-görajobb som upprepas',
       'Acknowledgement'        => 'Bekräftelse',
       'UpdatedOK'              => 'Kalenderuppdateringen lyckades',
       'BackToCalendar'         => 'Klicka här för att återvända till din kalender',
       'OpenFailed'             => 'Kunde inte öppna din kalender',
       'NoCalendar'             => 'Du verkar inte ha nån kalenderfil',
       
       # goto page
       'Goto_Date'              => 'Gå till annat datum', #title
       'Goto'                   => 'Gå till',
       'SelectDate'             => 'Välj ett datum',
       'View'                   => 'Visa',
       'Go'                     => 'Gå', # function as submit
       'Set'                    => 'Inställningar', # as in set options
       
       # set options page
       'My_day_starts_at'       => 'Min dag börjar',
       'ends_at'                => 'slutar',
       'Interval'               => 'Intervall',
       'Week_starts_on',        => 'Veckan börjar på',
       'include_weekend',       => 'Inkludera veckoslut',
       'Date_Format'            => 'Datumformat',
       'Time_Format'            => 'Tidsformat',
       'Time_zone'              => 'Tidszone',
       'Default_view'           => 'Förvald vy',
       'Default_Reminders'      => 'Förvalda påminnelser',
       'ListEditors'            => 'Visa de användare som tillåts redigera din kalender',
       'Editors'                => 'Editorer',
       'Email'                  => 'Epost',
       'Default'                => 'Förval',
       'Homepage'               => 'Hemsida',
       'Language'               => 'Språk',
       
       # admin page
       'Administration'         => 'administration',
       'adminDisabled'          => 'Kalenderadministration är avslaget för öppnakalendrar',
       'Change_Password'        => 'Ändra lösenord',
       'Old_Password'           => 'Gammalt lösenord',
       'New_Password'           => 'Nytt lösenord',
       'New_Password_Again'     => 'Skriv in det nya lösenordet igen',
       'to_be_used_by_meeting_editor' => 'för möteskoordinatören',
       'Existing_Groups'        => 'Nuvarande grupper',
       'Group_Name'             => 'Gruppnamn',
       'ListGroupMembers'       => 'Skriv in kalendernamn eller epostadress till deltagare',
       'Merge_Calendars'        => 'Slå samman kalendrar',

       'CalendarNames'          => 'Kalendernamn',
       'EraseCalendar'          => 'Radera allt i min kalender',
       'DeleteCalendar'         => 'Ta bort min kalender',
       'errorPerm'              => 'Tillgång nekas',
       'calDeleted'             => 'Din kalender har tagits bort',
       'ThankYou4Using'         => 'Tack för att du användt',
       'calErased'              => 'Din kalender har raderats',
       'eraseFailed'            => 'Kunde inte radera din kalender',
       'cpasswordWrong'         => 'Auth.fel: Lösenord stämmer ej',
       'ipasserror'             => 'Kunde inte öppna lösenordsfilen, försök igen om en stund',
       'password_changed'       => 'Ditt lösenord har ändrats',
       'cannot_open'            => 'Kunde inte öppna',
       'Meeting_group'          => 'Mötesgrupp',
       'updated'                => 'uppdatering lyckades',
       'new_entries'            => 'Ny poster lades till i din kalender',
       'Unknown_command'        => 'Okänt kommando',

       # search page
       'Search_Calendar'        => 'Sök i kalendrar',
       'Topic'                  => 'Ämne',
       'SearchAll'              => 'Genomsök hela kalendern',
       'Search_From'            => 'Sök från',
       'To'                     => 'Till',
       'Search_Results'         => 'Sökresultat',
       'CalendarReminder'       => 'Kalenderpåminnelser',
         
       # Greeting
       'WelcomeToWebCalendar'   => 'Välkommen till WebCalendar',
       'PleaseSelectACalendar'  => 'Välj en kalender',
       'PleaseEnterCalendarName'=> 'Skriv in ditt kalendernamn',

       #download
       'notAllowedToDownload'   => 'Du har inte tillåtelse att ladda ner den här kalendern',
         
       #logout
       'AuthNotRequired'        => 'Komihåg: Ingen behörighet krävs för att se öppnakalendrar',
       'logoutInstruction'      => 'För att logga ut, tryck på "logga ut"-knappen. När "logga in"-sidan visas, logga in som "nobody". Inget lösenord krävs.',
       'loginInstruction'       => 'För att logga in som en annan användare, tryck på "logga in"-knappen',
       'You_ve_logout'          => 'Du har loggats ut',
       'access_denied'          => 'Åtkomst nekas',
       'login'                  => 'Logga in',

       #compare
       'CompareCalendars'       => 'Jämför kalendrar',
       'Enter_calendar_names'   => 'Skriv in kalendernamn',
       'or_meeting_group'       => 'eller mötesgrupp',
       'EventsTable'            => 'Händelsetabell',
       'Name'                   => 'Namn',
       'Events'                 => 'Händelser',
       'ForegroundColor'        => 'Förgrundsfärg',
       'BackgroundColor'        => 'Bakgrundsfärg',

       # msg in the main
       'accessAnotherCal'        => 'För att få tillgång till en annan kalender',

       # Some missing phrases and addons ...
       'Close'                  => 'Stäng',
       'ShowCombinedCalendar'   => 'Visa sammanslagna kalendrar',
       'CombinedCalendar'       => 'Sammanslagna kalendrar',
       'Participants_are_allowed_to' => "Deltagarna tillåts att",
       'View_only'              => 'Enbart titta',
       'Edit'                   => 'Redigera',
       'EditAndDelete'          => 'Redigera och radera',
       'Updated_calendars'      => 'Följande kalendrar är också uppdaterade',
       'NotAllowedToUpdate'     => 'Du har inte tillåtelse att uppdatera följande kalendrar',
       'invalid_date'           => 'Ogiltigt datum',
       'Schedule'               => 'Schemalägg',            # as in 'schedule an appointment on calendar mzou
       'onCalendar'             => 'i kalender',          #
       'DeleteForward'          => 'Radera kommande förekomster',
       'All'                    => 'Alla',
       'SearchSubjectEmpty'	=> 'Sökämne kan inte lämnas tom',
       'Start_date'             => 'Startdatum',
       'is_after_due_date'      => 'efter färdigställande-datum',
       'Invalidusername'	=> 'Ogiltigt användarnamn',
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
       'BackToAddressBook'     => 'Klicka här för att återvända till din adressbok',
       'FirstName'             => 'Förnamn',
       'LastName'              => 'Efternamn',
       'Address'               => 'Adress',
       'Phone'                 => 'Telefon',
       'Fax'                   => 'Fax',
       'Info'                  => 'Info',
       'Affiliation'           => 'Tillhörighet',
       'Where'                 => 'Var',
       'Priority'              => 'Prioritet',
       'Diary'                 => 'Dagbok',
       'DiaryUpdated'          => 'Dagboken uppdaterades',
       'ReadDiary'             => 'Läs dagbok',       
       'From'                  => 'Från',
       'PlainText'             => 'Enbart text',
       'Html'                  => 'HTML',
       'SearchDiary'           => 'Sök i dagbok',
       'SearchFor'             => 'Sök efter',
       'NeedAuth2Proceed'      => 'Behörighet krävs för att visa eller redigera. Klicka på inloggningsknappen för att fortsätta, eller klicka på kalenderknappen för att återvända till din egen kalender.',

       # Priority of ToDo tasks
       'Urgent'                => 'Omgående',
       'High'                  => 'Hög',
       'Medium'                => 'Medel',
       'Low'                   => 'Låg',

       # find calendar names
       'FindCalNames'          => 'Sök kalendrar',

       # overlapping 
       'AllowOverlap'          => 'Tillåt överlappande möten',
       'GoBack'                => 'Gå tillbaka',  #

       'OverlapInstr'          => 'Den här händelsen nekades för att den överlappar med en, eller flera, redan definerade händelser i kalendern (titta i tabellen). Om du verkligen vill lägga till den, gå tillbaka och välj \'J\' vid "Tillåt överlappande händelser"-knappen och försök igen.',

       'signup'                 => 'Skapa medlemskap',
       'Invalidpassword'	=> 'Felaktigt lösenord',
       'olduserInstruction'     => 'Jag har redan en kalenderfil',
       'newuserInstruction'     => 'Jag är en ny användare',
       'PleaseLogin'            => 'Behörighet krävs. Logga in först!',
       'NextNew'		=> 'Nästa ny händelse',
       'RememberIDPswd'         => 'Kom ihåg mitt användarnamn och lösenord (så jag inte behöver skriva in dem igen)',
       'global'                 => 'Global', # mark global meeting group
       'groupnametaken'         => 'Mötesgruppsnamnet är redan upptaget, välj ett annat namn',
       'deleteEventsBefore'     => 'Radera alla händelser före',
       'AutoStart'              => 'Starta WebCalendar automatiskt',
       'Readers'                => 'Läsare',
       'ListReaders'            => 'Visar de användare som har läsrättigheter i din kalender',
       'Print'			=> 'Skriv ut',
       'mailVcal'		=> 'Bifoga VCALENDAR i epostpåminnelser',
       'FriendsEmail'		=> 'Vännens epostadress',
       'PersonalMessage'	=> 'Lägg till ett personligt meddelande',
       'Mail2Friend'		=> 'Skicka den här händelsen till en vän',
       'MailSentTo'		=> 'Kalenderpost sändes till ',
       'Location'               => 'Plats',
       # the next line is used in a confirmation popup when a user is modifying 
       # an repeating event. The date displayed is the current date, normally 
       # it is not the initial starting date of the event.
       'CalendarFormat'		=> 'Kalenderformat',
       'CalendarFile'		=> 'Kalenderfil',
       'SetupGreetingC'         => 'Besök kalenderinställningssidan för att göra klart din kalenderinställning..',
       'Email2Selected'		=> 'Skicka epost till alla valda adresser',
       'AddNewEmail'		=> 'Lägg till ny epostadress i min adressbok',
       'ContactP'		=> 'Kontaktperson',
       'ContactE'		=> 'Kontaktepost',
       'DailyReminder'		=> 'Skicka dagliga påminnelser till mig',
       'CompletedTasks'		=> 'Avklarade uppdrag',
       'PendingTasks'		=> 'Kommande uppdrag',
       'Import2Cal'		=> 'Importa den här händelern till kalendern',
       'ViewOnly'		=> 'Eller välj en kalender att titta på',
       'newLogin'		=> 'Eller logga in som en annan användare', 
       'QuickAdd'		=> 'Snabbtillägg',
       'Event'                  => 'Händelse',
       'TodoList'               => 'Att-göralista',
       'MarkComplete'		=> 'Förbockade uppdrag är avklarade',
       'DeleteChecked'		=> 'Radera förbockade uppdrag',
       'AddNewTask'             => 'Lägg till nytt uppdrag',
       'TaskManager'            => 'Uppdragshanterare',
       'WarnInvitee'		=> 'Är du säker på att du vill läga till den här händelsen i följande kalendrar??',
       'creationDisabled'	=> 'Tyvärr, systemadministratören har stängt avmöjligheten att skapa kalenderar. Du måste kontakta henne så att hon kan skapa en kalender till dig..',
       'RequestRSVP'            => 'Begär o.s.a.',
       'invitationAccepted'     => 'Accepterad',
       'invitationDeclined'     => 'Nekad',
       'AttendanceConfirmation' => 'Mötesdeltagande-bekräftelse',
       'AcceptInvitation'         => 'Acceptera inbjudan',
       'DeclineInvitation'      => 'Neka inbjudan',

       'Undecided'              => 'Ej bestämt',
       'Category'		=> 'Katetgori',
       'Speaker'		=> 'Talare',
       'Header'			=> 'Sidhuvud',
       'Footer'			=> 'Sidfot',
       'HeaderFooter'		=> 'Skriv in HTML-kod för det sidhuvud och den sidfot som ska användas för \'listvy\'',
       'MiscInfo'		=> 'Diverse info',
       'Description'		=> 'Beskrivning',
       'AllDay'			=> 'Hela dagen',
       'Tomorrow'		=> 'Imorgon',
       'ThisWeek'		=> 'Den här veckan',
       'ThisMonth'		=> 'Den här månaden',
       'Keyword'		=> 'Sökord',
       'NoEvents'		=> 'Inga händelser',
       'EditThis'		=> 'Redigera den här händelsen',
       'recurFormat'            => 'Inträffar %s, %d gånger från och med %s.', # used in formating
       'taskDoneFormat'		=> 'Avklarat den %s, %s, %s', # formating 

       'warnModify'	       => '
Du håller på att ändra en händelse som upprepas. Det ändrade datumet, eller färdigställande-datumet, är inte originaldatum för händelsen. Om du ändrar händelsen kommer upprepningen att ske utifrån de nya datumen.  All dold information om händelsen, som accpetansdatum och mötesacceptanser, kommer att förloras. Var vänligt och godkänn detta.

Att ändra en enda förekomst av en händelse med upprepning är inte möjligt. En lösning är att ta bort händelsen och lägga till en ny händelse i dess ställe.

Originaldatum (eller färdigställande-datum) för den här händelsen är ',

       'gEventError'		=> 'Du har, utan att ha tillstånd till det, försökt att radera en förekomst av en grupperad händelse som upprepas. Du tillåts inte  göra detta för att din kalender isåfall kommer att hamna ur synk med de övriga gruppdeltagarnas kalendrar. Du kan dock ta bort alla förekomster av händelsen ur din kalender genom att trycka på "Radera alla förekomster"-knappen i händelseeditorn',

       'City'                  => 'Stad',
       'State'                 => 'Stat',
       'Zip'                   => 'Postnummer',
       'Country'               => 'Land',


       'ResetPasswd'           => 'Nollställ användarlösenord',
       'File'                  => 'Fil',
       'AlreadyOnCalendar'     => 'Följande poster finns redan i din kalender och hoppades över:',
       'ImportFileTitle'         => 'Importera från en VCalendar-fil på din dator',
       'ImportFileInstruction'   => 'För att importera en VCalendar-fil från din dator, skriv in hela sökvägen till VCalender-filen och tryck på "utför"-knappen. Om du inte är säker på sökvägen kan du klicka på "bläddra"-knappen för att leta reda på din fil.', 
       'ImportVcal'		=> 'Importera händelse från VCalendarformat',
       'ImportVcalInstruction'	=> 'Du kan också klippa och klistra in din VCalendar-post i textboxen och klicka på "utför"-knappen',

       # new phrases

       'DetailedWorkingHours'   => 'Arbetstimmar, detaljerat', 
       'SelectAttendee' => 'För att ange mötesdeltagare kan du välja kalendernamn, epostadresser, mötesgrupper eller kombinationer av de samma. Du kan välja kalendernamn från listan till vänster eller skriva in dem i textboxen. Epostadresser måste skrivas in i textboxen. Mötesgrupper, om sådana finns, kan väljas från "Mötesgrupp"-menyn. Du kan även skriva in mötesgruppsnamn i textboxen. Poster i textboxen ska avskiljas med mellanslag eller kommatecken.',

       'MkEditorListInstruction' => 'För att ge vänner eller medarbetare rättighet att redigera din kalender, välj deras kalendernamn i listan till vänster. Du kan även skriva in deras kalendernamn i textboxen.',

       'MkReaderListInstruction' => 'Om din kalender är skydda kan inte andra användare läsa din kalender. Du kan ge utvalda användare läsbehörighet genom att skapa en läslista. En läslista består av kalendernamn. Du kan antingen välja kalendernamn från listan till vänster eller skriva in dem i textboxen.',

       'MkGroupInstruction'=> 'För att lägga till medlemmar i en arbetsgrupp kan du både använda kalendernamn och epostadresser. Du kan antingen välja namn från listan till vänster eller skriva in dem i textboxen. Epostadresser måste skrivas in.',
       'Contacts'	   => 'Kontakter',
       'Tasks'		   => 'Uppdrag',
       'Day'		   => 'Dag',
       'Week'		   => 'Vecka',
       'Month'		   => 'Månad',
       'Year'		   => 'År',
       'OffDutyHours'	   => 'Utanför arbetstid',
       'AddNewAddress'	   => 'Lägg till ny adress',
       'HeaderColor'	   => 'Sidhuvudsfärg',
       'Never'		   => 'Aldrig',
       'OverlapNotAllowed' => 'Unfortunately, overlap events is not allowed on the following calendars.',
       'Notes'		   => 'Anteckningar',
       'PostIt'		   => 'PostIt',   # as in post it notes
       'Title'		   => 'Rubrik',
       'AddNewNote'	   => 'Lägg till ny anteckning',

       'InterestedCalendars' => 'Välj alla kalendrar som du tror du kommer att vilja läsa eller redigera.',
       'CalendarListInstruction' => 'Om du inte vill se den fullständiga (ev. långa) listan med kalendrar i valmenyn, kan du
skapa en kortlista här. Skriv in namnen på de kalenderar du vill se i valboxen eller välj dem i valboxen. Din kortlistan kommer att användas vid alla de tillfällen en kalenderlista visas.',

       'MasterHeadInput'  => 'Vilken typ av kalenderval vill du använda',
       'TextEntry'	  => 'textbox',
       'PulldownMenu'     => 'valbox',

       'LockWarning'      => 'Din kalender ändrades medan din begäran behandlades. För att säkerställa din kalenders dataintegritet har din begäran avslagits. Gå tillbaka och försök igen.',

       'IUpload'	  => 'Skicka in bild',
       'FUpload'	  => 'Skicka in fil',
       'IUploadInstruction' => 'För att skicka in en bildfil från din din disk, skriv in den fullständiga sökvägen i textboxen och klicka på "utför"-knappen. Om du är osäker på sökvägen, kan du trycka på "bläddra"-knappen och leta dig fram till filen.',
       'IUploadAck'	  => 'Bilden är mottagen. För att lägga in bilden i händelsetitel eller beskrivning, klipp och klista in följande rad i motsvarande textruta. Notera att det ibland krävs att administratören godkänner bilden,
isåfall kommer bilden ej att vara tillgånglig för allmänheten direkt.',
       'ReviewUI'  => 'Gå igenom användarnas inskickade bilder',
       'ApproveChecked' => 'Godkänn förkryssade',
       'RejectChecked' => 'Refusera förkryssade',
       'Export2Vcal'   => 'Exportera din kalender i vCal-format',
       'CreateNewCal'  => 'Skapa en ny kalender',
       'UsableImgs'    => 'Bilder som kan användas',
       'UImageInst'    => 'För att lägga till en bild i titeln eller beskrivningen, klipp och klistra bildens namn (ta även med \\^o^/) till motsvarande textbox.',
	'CheckAll'     => 'Markera alla',
	'UncheckAll'   => 'Avmarkera alla',
        'Export2VCard' => 'Exportera din adressbok som vCard',
	'ImportVcard'  => 'Importera kontaktinformation från vCard',
        'ImportVCardTitle'  => 'Importera kontaktinformation från en vCard-fil',
        'ImportVcardInstruction' => 'Eller klipp och klista in din vCard-information i textrutan och tryck på "Utför"-knappen',
        'ImportVcardFileInstruction'   => 'För att importera från en vCard-fil på din dator, skriv in hela sökvägen
till vCard-filen i textboxen och tryck på "Utför". Är du osäker på sökvägen kan du klicka på "bläddra"-knappen för att leta reda på din fil.',
        'AlreadyInAddressbook' => 'Följande adresser finns redan med i din adressbok.',
	'DpyETimeAs' => 'Visa händelse tid som',
	'MasterheadTabs' => 'Huvudflikar',

 	'DeferConfirmation'     => 'Skjut upp bekräftelse',
	'Unconfirmed'           => 'Obekträftad',

	'SendMailUsing'         => 'Skicka epost med', #	html, txt or vcal
         # used as in
         # send mail <> immediately or <> <hours> before event
        'Sendmail'              => 'Skicka epost',
        'immediately'           => 'direkt',
        'or'                    => 'eller',
        'beforeEvent',          => 'före händelse',
        'Cancelled'             => 'Inställd',

        'AddNewEntry'		=> 'Lägg till ny post',
	'SearchNotes'		=> 'Sök i anteckningar',
	'SearchAddress'		=> 'Sök i adressboken',

	'Week_begins_on'	=> 'Veckan börjar på',
	'StartDate'		=> 'Startdatum',
	'DueDate'		=> 'Färdigdatum',
	'DueTime'		=> 'Färdigtid',
	'Overdue'		=> 'Försenad',
	'EventDates'		=> 'Händelsedatum', 

	'SpecialEvents'		=> 'Speciella händelser',
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

















# 
# This is the list of phrases or words used in the UI.
# To port webCal to another language, translating
# this list should be sufficient.
#
# $Header: /home/cvs/webCal/webCal2/Norwegian.perl,v 1.79 2004/10/20 23:35:56 mzou Exp $
#


%::phr = (
       # specify character encoding.
       'CHARSET'		=> 'ISO-8859-1',

       'Calendar'               => 'Kalender',
       
       # Name of weekdays
       'Sunday'                 => 'søndag',
       'Monday'                 => 'mandag',
       'Tuesday'                => 'tirsdag',
       'Wednesday'              => 'onsdag',
       'Thursday'               => 'torsdag',
       'Friday'                 => 'fredag',
       'Saturday'               => 'lørdag',
       # Name of weekdays, abbreviation
       'Sun'                    => 'søn',
       'Mon'                    => 'man',
       'Tue'                    => 'tir',
       'Wed'                    => 'ons',
       'Thu'                    => 'tor',
       'Fri'                    => 'fre',
       'Sat'                    => 'lør',
       # Name of weekdays, abbreviated even more
       'Su'                     => 'sø',
       'Mo'                     => 'ma',
       'Tu'                     => 'ti',
       'We'                     => 'on',
       'Th'                     => 'to',
       'Fr'                     => 'fr',
       'Sa'                     => 'lø',
       
       # Month Names  
       'January'                => 'januar', 
       'February'               => 'februar',
       'March'                  => 'mars',   
       'April'                  => 'april',   
       'May_'                   => 'mai',     
       'June'                   => 'juni',    
       'July'                   => 'juli',    
       'August'                 => 'august',
       'September'              => 'september',
       'October'                => 'oktober',
       'November'               => 'november',
       'December'               => 'desember',
       # Month Names, abbreviation
       'Jan'                    => 'jan',
       'Feb'                    => 'feb',
       'Mar'                    => 'mar',
       'Apr'                    => 'apr',
       'May'                    => 'mai',
       'Jun'                    => 'jun',
       'Jul'                    => 'jul',
       'Aug'                    => 'aug',
       'Sep'                    => 'sep',
       'Oct'                    => 'okt',
       'Nov'                    => 'nov',
       'Dec'                    => 'des',

       # repeating rules 
       'OneTime'                => 'En gang',
       'Daily'                  => 'Daglig',
       'Weekly'                 => 'Ukentlig',
       'Every2Weeks'            => 'Annenhver uke',
       'MonthlyByDate'          => 'Månedlig etter dato',
       'MonthlyByWeekday'       => 'Månedlig etter ukedag',
       'Yearly'                 => 'Årlig',
       'MTWThF'                 => 'man-fre',
       'MWF'                    => 'man, ons og fre',
       'TTh'                    => 'tir og tor',
       'YearlyByMonthWeekday'   => 'Årlig etter ukedag i måned',
       'EveryOtherDay'          => 'Annenhver dag',
       'Every3rdDay'            => 'Hver tredje dag',
       'Every4thDay'            => 'Hver fjerde dag',
       'Every5thDay'            => 'Hver femte dag',
       'Every6thDay'            => 'Hver sjette dag',

       # event types
       'Appointment'            => 'Avtale',
       'Todo'                   => 'Gjøremål',
       'Meeting'                => 'Møte',
       'Special'                => 'Spesielt',

       # option button names
       'CalendarOptions'        => 'Kalenderinnstillinger',
       'Compare'                => 'Sammenlikn',
       'Search'                 => 'Søk',
       'GotoDate'               => 'Gå til dato',
       'Previous'               => 'Forrige',
       'Today'                  => 'I dag',
       'Next'                   => 'Neste',
       'Options'                => 'Innstillinger',
       'Admin'                  => 'Admin',
       'Logout'                 => 'Logg ut',
       'DayView'                => 'Dagsoversikt',
       'WeekView'               => 'Ukesoversikt',
       'MonthView'              => 'Månedsoversikt',
       'YearView'               => 'Årsoversikt',
       
       
       # messages on the setup screen
       'SetupYourCalendar'      => 'Klargjør din kalender',
       'YourCalendarName'       => 'Brukernavn',
       'YourEmailAddress'       => 'E-postadresse',
       'YourName'               => 'Fullt navn',
       'Password'               => 'Passord',
       'RetypePassword'         => 'Gjenta passord',
       'CalendarType'           => 'Kalendertype',
       'Public'                 => 'Felles',
       'Private'                => 'Privat',
       'ForPrivateCalendar'     => 'For privat kalender',
       'OthersSeeTextTime'      => 'Andre kan se tekst og tid',
       'OthersSeeTitle'         => 'Others See Event Title',
       'OthersSeeTimeOnly'      => 'Andre kan se bare tid',
       'OthersSeeNothing'       => 'Andre ser ingenting',
       'PublicCalendar'         => 'Felleskalender',
       'Submit'                 => 'Send inn',
       'Cancel'                 => 'Avbryt',
       'TheName'                => 'Navnet',
       'HasBeenTaken'           => 'er allerede i bruk',
       'PasswordMismatch'       => 'passordene stemmer ikke overens',
       'TryAgain'               => 'prøv igjen',
       'EmailIncomplete'        => 'Din e-postadresse er ufullstendig',
       'CannotCreateCalendar'   => 'Kunne ikke klargjøre din kalender. Brukernavnet må være et lovlig ord',
       'CannotWriteInfoFile'    => 'Kan ikke skrive til informasjonsfilen',
       'CannotWriteDataFile'    => 'Kan ikke skrive til datafilen',
       'CannotWritePasswordFile'=> 'Kan ikke modifisere passordfilen',
       'Congratulations'        => 'Gratulerer',
       'SetupGreetingA'         => 'Din kalender er nå klargjort. Legg et bokmerke ved',
       'SetupGreetingB'         => 'Ta godt vare på passordet ditt. Du vil trenge det for senere tilgang til kalenderen',
       'HaveToSupplyCalendarName' => 'Du må oppgi et brukernavn',
       'PleaseDoNotUseYourUnixAccountPassword' => 'Lag et nytt passord. IKKE bruk ditt Unix-passord',
       
       
       # Event Editor Messages
       'EventEditor'            => 'Redigering av begivenheter',    ###
       'AppointmentEditor'      => 'Redigering av avtaler',
       'ToDoEditor'             => 'Redigering av gjøremål',
       'MeetingEditor'          => 'Redigering av møte',
       'SpecialEditor'          => 'Redigering av spesielle begivenheter',
       'AuthRequired'           => 'Merk: autorisasjon kreves for å endre på kalenderen',
       'CurrentEvents'          => 'Kortfattet beskrivelse',  ###
       'Time'                   => 'Klokkeslett',
       'What'                   => 'Beskrivelse',
       'Date'                   => 'Dato',
       'Start'                  => 'Start',
       'End'                    => 'Slutt',
       'Details'                => 'Detaljer',
       'Colors'                 => 'Farger',
       'Privacy'                => 'Innsyn',         ###
       'Frequency'              => 'Gjentakelser',
       'Reminders'              => 'Påminnelser',         ###
       'Mail'                   => 'E-post',
       'min'                    => 'min', # abbreviation of minute
       'mins'                   => 'min',
       'hours'                  => 'timer',
       'days'                   => 'dager',
       'weeks'                  => 'uker',
       'Occurs'                 => 'Når',
       'For'                    => '',  # gets used in two different places, blanked it for now
       'times'                  => ' gang(er)',
       'Popup'                  => 'Meldingsvindu',
       'Author'                 => 'Forfatter',
       'Blink'                  => 'Blinking',
       'Chime'                  => 'Bjelle',
       'Insert'                 => 'Legg inn',
       'InsertAsNew'            => 'Nytt innlegg',
       'Modify'                 => 'Endre',
       'DeleteThisOne'          => 'Slett denne forekomsten',
       'DeleteAll'              => 'Slett alle forekomster',
       'Delete'                 => 'Slett',
       'Due'                    => 'Frist', # as in Due Date
       'TaskDone'               => 'Oppgaven utført',
       'RemindForward'          => 'Fremtidige påminnelser',
       'Yes'                    => 'Ja',
       'No'                     => 'Nei',
       'Y'                      => 'J', # abbrieviation of Yes
       'N'                      => 'N', # abbrieviation of No
       'ToDo'                   => 'Gjøremål',
       'Participants'           => 'Deltakere',
       'none'                   => 'ingen',
       'MailToAll'              => 'Send E-post til alle',
       'FindConflict'           => 'Finn konflikt',
       'NoTimeEvent'            => 'Dato uten klokkeslett',  ###
       'Fg'                     => 'Fg',
       'Bg'                     => 'Bg',
       'Error'                  => 'Feil',
       'HasError'               => 'Det skjedde en feil under behandlingen av din forespørsel',
       'ListParticipants'       => 'Oppgi liste over møte-grupper eller brukernavn eller e-postadresser. Tilhørende kalendere <EM>vil</EM> bli oppdatert',
       'ConflictTable'          => 'Konflikt-tabell',
       'Conflict'               => 'konflikt',         
       'Table'                  => 'tabell',         
       'You'                    => 'Du',
       'NotAllowedToModify'     => 'har ikke tilgang til å endre dette innlegget',
       'NotAllowedToEdit'       => 'har ikke tilgang til å endre på denne kalenderen',
       'Warning'                => 'Advarsel',
       'NoRemindForward'        => 'Ingen påminnelse fremover for oppgaver som gjentar seg',   ###
       'Acknowledgement'        => 'Bekreftelse',
       'UpdatedOK'              => 'Kalenderen ble oppdatert uten problemer',
       'BackToCalendar'         => 'Klikk her for å gå tilbake til kalenderen',
       'OpenFailed'             => 'Kan ikke åpne kalenderen',
       'NoCalendar'             => 'Finner ingen kalender med det navnet',
       
       # goto page
       'Goto_Date'              => 'Gå til dato', #title
       'Goto'                   => 'Gå til',
       'SelectDate'             => 'Velg dato',
       'View'                   => 'Vis',
       'Go'                     => 'Vis nå', # function as submit
       'Set'                    => 'oppdatert', # as in set options
       
       # set options page
       'My_day_starts_at'       => 'Min dag begynner kl',
       'ends_at'                => 'slutter kl',
       'Interval'               => 'intervall',
       'Week_starts_on',        => 'Uken starter',
       'include_weekend',       => 'innbefatter helg',
       'Date_Format'            => 'Datoformat',
       'Time_Format'            => 'Format på klokkeslett',
       'Time_zone'              => 'Tidssone',
       'Default_view'           => 'Standard visning',  ###
       'Default_Reminders'      => 'Standard-instillinger for påminnelser', ###
       'ListEditors'            => 'Viser brukere som har tilgang til å endre på kalenderen',
       'Editors'                => 'Disse har tilgang',
       'Email'                  => 'E-post',
       'Default'                => 'Standard',  ###
       'Homepage'               => 'Hjemmeside',
       'Language'               => 'Språk',
       
       # admin page
       'Administration'         => 'Administrasjon',
       'adminDisabled'          => 'Kalender-administrasjon er skrudd av for felleskalendere',
       'Change_Password'        => 'Endre passord',
       'Old_Password'           => 'Gammelt passord',
       'New_Password'           => 'Nytt passord',
       'New_Password_Again'     => 'Gjenta nytt passord',
       'to_be_used_by_meeting_editor' => 'til bruk under møte-redigering',
       'Existing_Groups'        => 'Eksisterende gruppe',
       'Group_Name'             => 'Gruppenavn',
       'ListGroupMembers'       => 'Skriv inn brukernavnene eller e-postadressene til deltakerene',
       'Merge_Calendars'        => 'Slå sammen kalendere',
       'CalendarNames'          => 'Brukernavn',
       'EraseCalendar'          => 'Fjern min kalender',
       'DeleteCalendar'         => 'Slett min calendar',
       'errorPerm'              => 'Ingen tilgang',
       'calDeleted'             => 'Din kalender har blitt slettet',
       'ThankYou4Using'         => 'Takk for at du bruker',
       'calErased'              => 'Din kalender er nå fjernet',
       'eraseFailed'            => 'Kan ikke fjerne din kalender',
       'cpasswordWrong'         => 'Autorisasjonsfeil: passordet stemmer ikke',
       'ipasserror'             => 'Kan ikke åpne passordfilen. Prøv igjen senere.',
       'password_changed'       => 'Passordet er nå endret',
       'cannot_open'            => 'Kan ikke åpne',
       'Meeting_group'          => 'Møte-gruppen',
       'updated'                => 'er nå oppdatert',
       'new_entries'            => 'nytt innlegg ble lagt til din kalender',
       'Unknown_command'        => 'Ukjent kommando',
       
       
       # search page
       'Search_Calendar'        => 'Søk i kalenderen',
       'Topic'                  => 'Emne',
       'SearchAll'              => 'Søk igjennom alt',
       'Search_From'            => 'Start søk fra',
       'To'                     => 'Til',
       'Search_Results'         => 'Søkeresultater',
       'CalendarReminder'       => 'Kalender-påminnelse',
         
       # Greeting
       'WelcomeToWebCalendar'   => 'Velkommen til WebKalender',
       'PleaseSelectACalendar'  => 'Velg kalender',
       'PleaseEnterCalendarName'=> 'Skriv inn ditt brukernavn',

       #download
       'notAllowedToDownload'   => 'Du har ikke tilgang til å laste ned denne kalenderen',
         
       #logout
       'AuthNotRequired'        => 'Merk: autorisasjon ikke nødvendig for lesetilgang på felleskalendere',
       'logoutInstruction'      => 'For å logge ut, klikk på utloggingsknappen. Når du blir bedt om brukerrnavn, velg «nobody». Passord ikke nødvendig.',
       'loginInstruction'       => 'For å logge inn som en annen bruker, klikk på påloggings-knappen',
       'You_ve_logout'          => 'Du har logget av',
       'access_denied'          => 'ingen tilgang',
       'login'                  => 'logge på',

       #compare
       'CompareCalendars'       => 'Sammenlikn kalendere',
       'Enter_calendar_names'   => 'Skriv inn liste med brukernavn',
       'or_meeting_group'       => 'eller møte-grupper',
       'EventsTable'            => 'Begivenhetsoversikt',   ###
       'Name'                   => 'Navn',
       'Events'                 => 'Begivenheter',    ###
       'ForegroundColor'        => 'Forgrunnsfarge',
       'BackgroundColor'        => 'Bakgrunnsfarge',

       # msg in the main
       'accessAnotherCal'        => 'For å gå til en annen kalender,',

       #===== need translation !!!

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
       'Invalidcalendarname'	=> 'Invalid calendar name',
       'Protected'		=> '==protected==',
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
       'Address'               => 'Adress',
       'Phone'                 => 'Phone',
       'Fax'                   => 'Fax',
       'Info'                  => 'Info',
       'Affiliation'           => 'Affiliation',
        'Where'                  => 'Where',
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
       'RememberIDPswd'         => 'Remember my username and password (so you don\'t have to type them in again)',
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
       'MailSentTo'		=> 'Calendar Entry was Sent to ',
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
       'QuickAdd'		=> 'Quick Add',
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
       'invitationAccepted'     => 'Invitation Accepted',
       'invitationDeclined'     => 'Invitation Declined',
       'AttendanceConfirmation' => 'Meeting Attendance Confirmation',
       'AcceptInvitation'         => 'Accept Invitation',
       'DeclineInvitation'      => 'Decline Invitation',
       'Undecided'              => 'Undecided',
       'Category'		=> 'Category',
       'Speaker'		=> 'Speaker',
       'Header'			=> 'Header',
       'Footer'			=> 'Footer',
       'HeaderFooter'		=> 'Enter header/footer HTML code to be used in \'list view\'',
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
       'taskDoneFormat'		=> 'Completed by %s on %s at %s', # formating 


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
       'AlreadyOnCalendar'     => 'The following entries are already on your calendar. They are ignored.',
       'ImportFileTitle'         => 'Import from a VCalendar File on Your Computer',
       'ImportFileInstruction'   => 'To import from a VCalendar file on your computer, enter the full pathname of
the VCalendar file in the entry box and click the submit button. If you are unsure about the pathname, click on the browse button and navigate to your file.',
       'ImportVcal'		=> 'Import Event from VCalendar',
       'ImportVcalInstruction'	=> 'Or cut and paste your vcalendar entry in the textarea and click on the submit button',



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
	'Unconfirmed'           => 'Unconfirmed',

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

       'DetailedView'		=> 'Detailed',
       'CombinedView'		=> 'Combined',
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










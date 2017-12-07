# This is the list of phrases or words used in the UI.
# To port webCal to another language, translate
# this list should be suffice.
#
# Initial translation: "Diaolin..." <diaolin@diaolin.com>
#
# Update Italian transalation.
# Author: Guido brugnara <gdo@leader.it> and Paolo Fronza
#
# $Header: /home/cvs/webCal/webCal2/Italian.perl,v 1.85 2004/10/20 23:35:56 mzou Exp $
#

%::phr= (
       # specify character encoding.
       'CHARSET'		=> 'ISO-8859-1',

       'Calendar'               => 'Calendario',

       # Name of weekdays
       'Sunday'                 => 'Domenica',
       'Monday'                 => 'Luned&igrave;',
       'Tuesday'                => 'Marted&igrave;',
       'Wednesday'              => 'Mercoled&igrave;',
       'Thursday'               => 'Gioved&igrave;',
       'Friday'                 => 'Venerd&igrave;',
       'Saturday'               => 'Sabato',
       # Name of weekdays, abbreviation
       'Sun'                    => 'Dom',
       'Mon'                    => 'Lun',
       'Tue'                    => 'Mar',
       'Wed'                    => 'Mer',
       'Thu'                    => 'Gio',
       'Fri'                    => 'Ven',
       'Sat'                    => 'Sab',
       # Name of weekdays, abbreviated even more
       'Su'                     => 'Do',
       'Mo'                     => 'Lu',
       'Tu'                     => 'Ma',
       'We'                     => 'Me',
       'Th'                     => 'Gi',
       'Fr'                     => 'Ve',
       'Sa'                     => 'Sa',

       # Month Names
       'January'                => 'Gennaio',
       'February'               => 'Febbraio',
       'March'                  => 'Marzo',
       'April'                  => 'Aprile',
       'May_'                   => 'Maggio',
       'June'                   => 'Giugno',
       'July'                   => 'Luglio',
       'August'                 => 'Agosto',
       'September'              => 'Settembre',
       'October'                => 'Ottobre',
       'November'               => 'Novembre',
       'December'               => 'Dicembre',
       # Month Names, abbreviation
       'Jan'                    => 'Gen',
       'Feb'                    => 'Feb',
       'Mar'                    => 'Mar',
       'Apr'                    => 'Apr',
       'May'                    => 'Mag',
       'Jun'                    => 'Giu',
       'Jul'                    => 'Lug',
       'Aug'                    => 'Ago',
       'Sep'                    => 'Set',
       'Oct'                    => 'Ott',
       'Nov'                    => 'Nov',
       'Dec'                    => 'Dic',

       # repeating rules
       'OneTime'                => 'Una volta',                   # one time event
       'Daily'                  => 'Giornalmente',
       'Weekly'                 => 'Settimanalmente',
       'Every2Weeks'            => 'Ogni 2 settimane',
       'MonthlyByDate'          => 'Mensilmente per giorno',
       'MonthlyByWeekday'       => 'Mensilmente per settimana',         # e.g. the 3rd Friday of every month
       'Yearly'                 => 'Annualmente',
       'MTWThF'                 => 'Da Lun a Ven',
       'MWF'                    => 'Lun Mer Ven',
       'TTh'                    => 'Mar Gio',
       'YearlyByMonthWeekday'   => 'Annualmente per mese e giorno della settimana',    # e.g. the first Monday of June, yearly
       'EveryOtherDay'          => 'Tutti gli altri giorni',
       'Every3rdDay'            => 'Ogni terzo giorno',
       'Every4thDay'            => 'Ogni quarto giorno',
       'Every5thDay'            => 'Ogni quinto giorno',
       'Every6thDay'            => 'Ogni sesto giorno',

       # event types
       'Appointment'            => 'Appuntamento',
       'Todo'                   => 'Da fare',
       'Meeting'                => 'Riunione',
       'Special'                => 'Speciale',            # for holidays, event require no specific time

       # option button names
       'CalendarOptions'        => 'Opzioni del calendario',   # title of the options page
       'Compare'                => 'Confronto',            # Button: compare calendars and find conflicts ...
       'Search'                 => 'Ricerca',             # Button:
       'GotoDate'               => 'Vai alla data',           # Button:
       'Previous'               => 'Precedente',           # previous Month/Day/Week
       'Today'                  => 'Oggi',              # This Month/Day/Week
       'Next'                   => 'Successivo',               # next Month/Day/Week
       'Options'                => 'Opzioni',            # Button: go to options page
       'Admin'                  => 'Amministrazione',              # Button: go to admin page
       'Logout'                 => 'Esci',             # Button: go to logout page
       'DayView'                => 'Per giorno',           # Alt name under the image buttons
       'WeekView'               => 'Per settimana',
       'MonthView'              => 'Per mese',
       'YearView'               => 'Per anno',


       # messages on the setup screen
       'SetupYourCalendar'      => 'Configura il tuo calendario', # title
       'YourCalendarName'       => 'Nome del tuo calendario',
       'YourEmailAddress'       => 'Tuo indirizzo di Email',
       'YourName'               => 'Tuo nome',
       'Password'               => 'Parola chiave',
       'RetypePassword'         => 'Ripeti parola chiave',
       'CalendarType'           => 'Tipo di calendario',
       'Public'                 => 'Pubblico',
       'Private'                => 'Privato',
       'ForPrivateCalendar'     => 'Per il calendario privato',
       'OthersSeeTextTime'      => 'Altri vedono testo e orario',
       'OthersSeeTitle'         => 'Altri vedono solo i titoli degli eventi',
       'OthersSeeTimeOnly'      => 'Altri vedono solo l\'orario',
       'OthersSeeNothing'       => 'Altri non vedono nulla',
       'PublicCalendar'         => 'Calendario pubblico',
       'Submit'                 => 'Invia',
       'Cancel'                 => 'Annulla',
       'TheName'                => 'Il nome',
       'HasBeenTaken'           => 'esiste gi&agrave;',
       'PasswordMismatch'       => 'Parola chiave errata',
       'TryAgain'               => 'prego ritenta',
       'EmailIncomplete'        => 'Il tuo indirizzo di email &egrave; incompleto',
       'CannotCreateCalendar'   => 'Non posso creare il calendario. Il nome deve essere una parola valida',
       'CannotWriteInfoFile'    => 'Non posso scrive il file di info',
       'CannotWriteDataFile'    => 'Non posso scrive il file di dati',
       'CannotWritePasswordFile'=> 'non posso modificare il file delle parole chiave',
       'Congratulations'        => 'Congratulazioni',
       'SetupGreetingA'         => 'Il tuo calendario &egrave; stato creato. Accedi al tuo calendario da',
       'SetupGreetingB'         => 'Per favore ricorda la tua parola chiave. Ti serve per accedere al tuo calendario your calendar',
       'HaveToSupplyCalendarName' => 'Devi dare un nome al tuo calendario',
       'PleaseDoNotUseYourUnixAccountPassword' => 'Per favore non usare la parola chiave del tuo utente unix',


       # Event Editor Messages
       'EventEditor'            => 'Editor degli eventi',
       'AppointmentEditor'      => 'Editor degli appuntamenti',
       'ToDoEditor'             => 'Editor dei da fare',
       'MeetingEditor'          => 'Editor delle riunioni',
       'SpecialEditor'          => 'Editor degli eventi speciali',
       'AuthRequired'           => 'Nota, &egrave; richiesta l\'autentificazione per modificare questo calendario',
       'Appointment'            => 'Appuntamento',
       'CurrentEvents'          => 'Eventi attuali',
       'Time'                   => 'Orario',
       'What'                   => 'Cosa',
       'Date'                   => 'Data',
       'Start'                  => 'Inizio',
       'End'                    => 'Fine',
       'Details'                => 'Dettagli',
       'Colors'                 => 'colori',
       'Privacy'                => 'Privacy',
       'Frequency'              => 'Frequenza',
       'Reminders'              => 'Avvisi',
       'Mail'                   => 'eMail',
       'min'                    => 'min', # abbreviation of minute
       'mins'                   => 'minuti',
       'hours'                  => 'ore',
       'days'                   => 'giorni',
       'weeks'                  => 'settimane',
       'Occurs'                 => 'Occorre',
       'For'                    => 'per',
       'times'                  => 'volte',   # as in repeat for 10 times
       'Popup'                  => 'Popup',
       'Author'                 => 'Autore',
       'Blink'                  => 'Lampeggio',
       'Chime'                  => 'Segnale',
       'Insert'                 => 'Inserisci',
       'InsertAsNew'            => 'Insersci come nuova entrata',
       'Modify'                 => 'Modifica',
       'DeleteThisOne'          => 'Cancella questa occorrenza',
       'DeleteAll'              => 'Cancella tutte le occorrenze',
       'Delete'                 => 'Cancella',
       'Due'                    => 'Per', # as in Due Date
       'TaskDone'               => 'Lavoro terminato',
       'RemindForward'          => 'Ricordo posticipato',
       'Yes'                    => 'Si',
       'No'                     => 'No',
       'Y'                      => 'S', # abbrieviation of Yes
       'N'                      => 'N', # abbrieviation of No
       'ToDo'                   => 'Da fare',
       'Meeting'                => 'Riunione',
       'Participants'           => 'Partecipanti',
       'none'                   => 'nessuno',
       'MailToAll'              => 'eMail a tutti',
       'FindConflict'           => 'Cerca conflitto',
       'NoTimeEvent'            => 'Evento senza tempo',
       'Fg'                     => 'Testo',
       'Bg'                     => 'Sfondo',
       'Error'                  => 'Errore',
       'HasError'               => 'C\'&egrave; stato un errore processando la tua richiesta',
       'ListParticipants'       => 'Lista dei gruppi o calendari o indirizzi di email dei partecipanti. I loro calendari saranno aggiornati',
       'ConflictTable'          => 'Tavola dei conflitti',
       'Conflict'               => 'Conflitto',
       'Table'                  => 'Tavola',
       'You'                    => 'L\' Utente',
       'NotAllowedToModify'     => 'non &egrave; autorizzato a modificare questa voce',
       'NotAllowedToEdit'       => 'non &egrave; autorizzato a modificare questo calendario',
       'Warning'                => 'Attenzione',
       'NoRemindForward'        => 'Non posso posticipare il ricordo per eventi ripetuti',
       'Acknowledgement'        => 'Ricevuta',
       'UpdatedOK'              => 'Calendario aggiornato correttamente',
       'BackToCalendar'         => 'Clicca qui per tornare al tuo calendario',
       'OpenFailed'             => 'Non posso aprire il tuo calendario',
       'NoCalendar'             => 'Non c\'&egrave; un calendario in archivio',

       # goto page
       'Goto_Date'               => 'Vai alla data',
       'Goto'                   => 'Vai a',
       'SelectDate'             => 'Seleziona una data',
       'View'                   => 'Visualizza',
       'Go'                     => 'Vai', # function as submit
       'Set'                    => 'Imposta', # as in set options

       # set options page
       'My_day_starts_at'       => 'I miei giorni iniziano alle',
       'ends_at'                => 'finiscono alle',
       'Interval'               => 'Intervallo',
       'Week_starts_on',        => 'Settimana comincia di',
       'include_weekend',       => 'include i weekend',
       'Date_Format'            => 'Formato data',
       'Time_Format'            => 'Formato ora',
       'Time_zone'              => 'Zona oraria',
       'Default_view'           => 'Visualizzazione standard',
       'Default_Reminders'      => 'Avviso standard',
       'ListEditors'            => 'Lista degli utenti che possono modificare il tuo calendario',
       'Editors'                => 'Editori',
       'Email'                  => 'Email',
       'Default'                => 'Standard',
       'Homepage'               => 'Homepage',
       'Language'               => 'Lingua',

       # admin page
       'Administration'         => 'Amministrazione',
       'adminDisabled'          => 'L\'amministrazione &egrave; disabilitata per i calendari pubblici',
       'Change_Password'        => 'Cambia parola chiave',
       'Old_Password'           => 'Vecchia parola chiave',
       'New_Password'           => 'Nuova parola chiave',
       'New_Password_Again'     => 'Reinserisci la parola chiave',
       'to_be_used_by_meeting_editor' => 'per usarlo nella modifica delle riunioni',
       'Existing_Groups'        => 'Gruppi esistenti',
       'Group_Name'             => 'Nome gruppo',
       'ListGroupMembers'       => 'Inserisci il nome del calendario o l\'indirizzo di email dei partecipanti',
       'Merge_Calendars'        => 'Unisci i calendari',
       'CalendarNames'          => 'Calendario',
       'EraseCalendar'          => 'Svuota il mio calendario',
       'DeleteCalendar'         => 'Cancella il mio calendario',
       'errorPerm'              => 'Permesso negato',
       'calDeleted'             => 'Il tuo calendario &egrave; cancellato',
       'ThankYou4Using'         => 'Grazie per l\'uso',
       'calErased'              => 'Il tuo calendario &egrave; svuotato',
       'eraseFailed'            => 'Non posso svuotare il tuo calendario',
       'cpasswordWrong'         => 'Errore: parola chiave errata',
       'ipasserror'             => 'Non posso aprire il file delle parole chiavi, riprova pi&ugrave; tardi',
       'password_changed'       => 'La tua parola chiave &egrave; stata cambiata',
       'cannot_open'            => 'Non posso aprire',
       'Meeting_group'          => 'Gruppo',
       'updated'                => 'aggiornato con successo',
       'new_entries'            => 'nuove voci aggiunte al tuo calendario',
       'Unknown_command'        => 'Comando sconosciuto',


       # search page
       'Search_Calendar'        => 'Cerca calendario',
       'Topic'                  => 'Argomento',
       'SearchAll'              => 'Cerca tutti',
       'Search_From'            => 'Cerca da',
       'To'                     => 'a',
       'Search_Results'         => 'Risultato della ricerca',
       'CalendarReminder'       => 'Avvisi',

       # Greeting
       'WelcomeToWebCalendar'   => 'Benvenuto a WebCalendar',
       'PleaseSelectACalendar'  => 'Seleziona il calendario',
       'PleaseEnterCalendarName'=> 'Inserisci il nome del tuo calendario',

       #download
       'notAllowedToDownload'   => 'Non sei autorizzato a scaricare questo calendario',

       #logout
       'AuthNotRequired'        => 'Nota: non &egrave; richiesta autorizzazione per visulizzare i calendari pubblici',
       'logoutInstruction'      => 'Per uscire, clicca sul bottone esci, Quando appare la richiesta,<br> entra come utente \'nobody\'. Non &egrave; richiesta la parola chiave.',
       'loginInstruction'       => 'Per rientrare come altro utente, clicca sul bottone entra',
       'You_ve_logout'          => 'Sei uscito',
       'access_denied'          => 'accesso negato',
       'login'                  => 'Entra',

       #compare
       'CompareCalendars'       => 'Confronta calendari',
       'Enter_calendar_names'   => 'Inserisci i nomi dei calendari',
       'or_meeting_group'       => 'o gruppi',
       'EventsTable'            => 'Tavola degli eventi',
       'Name'                   => 'Nome',
       'Events'                 => 'Eventi',
       'ForegroundColor'        => 'Colore del testo',
       'BackgroundColor'        => 'Colore dello sfondo',

       # msg in the main
       'accessAnotherCal'        => 'Per accedere ad un altro calendario, ',

       # msg on the color editor
       # Some missing phrases and addons ...
       'Close'                  => 'Chiudi',
       'ShowCombinedCalendar'   => 'Visualizza il calendario combinato',
       'CombinedCalendar'       => 'Calendario combinato',



       'Participants_are_allowed_to' => "I partecipanti possono",
       'View_only'              => 'Solo vista',
       'Edit'                   => 'Modifica',
       'EditAndDelete'          => 'Modifica e rimozione',
       'Updated_calendars'      => 'I seguenti calendari saranno aggiornati',
       'NotAllowedToUpdate'     => 'NON &egrave; autorizzato ad aggiornare i seguenti calendari',
       'invalid_date'           => 'Data errata',
       'Schedule'               => 'Scheda',            # as in 'schedule an appointment on calendar mzou
       'onCalendar'             => 'sul calendario',          #
       'DeleteForward'          => 'Elimina avvisi',
       'All'                    => 'Tutti',
       'SearchSubjectEmpty'	=> 'Il campo ricerca \"Soggetto\" non pu&oacute essere vuoto',
       'Start_date'             => 'Data d\'inizio',
       'is_after_due_date'      => '&eacute successiva alla fine',
       'Invalidusername'	=> 'Utente errato',
       'Invalidcalendarname'	=> 'Calendario sconosciuto o errato',
       'Protected'		=> '==protetto==',
       'Couldnotfindcalendar' => 'Non trovo il calendario',
       'Invalidspooldir'      => 'Directory di spool errata',
       'ListView'             => 'Vista Lista',
       'BlockView'            => 'Vista a blocco',

       # address book stuff
       'AddressBook'           => 'Rubrica',
       'AddressBookEditor'     => 'Editor Rubrica',
       'AddressBookUpdated'    => 'Rubrica aggiornata',
       'BackToAddressBook'     => 'Clicca qui per tornare alla rubrica',
       'FirstName'             => 'Nome',
       'LastName'              => 'Cognome',
       'Address'               => 'Indirizzo',
       'Phone'                 => 'Telefono',
       'Fax'                   => 'Fax',
       'Info'                  => 'Info',
       'Affiliation'           => 'Affiliazione',
        'Where'                  => 'Dove',
       'Priority'              => 'Priorit&aacute',
       'Diary'                 => 'Diario',
       'DiaryUpdated'          => 'Diario aggiornato',
       'ReadDiary'             => 'Leggi diario',       
       'From'                  => 'Da',
       'PlainText'             => 'Testo',
       'Html'                  => 'Html',
       'SearchDiary'           => 'Cerca in diario',
       'SearchFor'             => 'Cerca:',
       'NeedAuth2Proceed'      => 'Autenticazione richiesta per vista o modifica. Clicca sul pulsante \'login\' per continuare, o clicca sul pulsante calendario per tornare al tuo calendario.',

       # Priority of ToDo tasks
       'Urgent'                => 'Urgente',
       'High'                  => 'Alto',
       'Medium'                => 'Medio',
       'Low'                   => 'Basso',       

       # find calendar names
       'FindCalNames'          => 'Trova Calendari',

       # overlapping 
       'AllowOverlap'          => 'Permetti eventi incrociati',
       'GoBack'                => 'Indietro',  #

       'OverlapInstr'          => 'Questo evento non viene accettato perch&eacute si incrocia con uno o pi&uacute eventi presenti in calendario (vedi tabella).
Se sei veramente sicuro di volervo inserire in calendario, torna indietro e, seleziona <b>\'S\'</b> su <b>\'Permetti Eventi incrociati\'</b> e
riprova.',

       'signup'                 => 'Iscrizione',
       'Invalidpassword'	=> 'Password errata',
       'olduserInstruction'     => 'Ho un calendario su file',
       'newuserInstruction'     => 'Sono un nuovo utente',
       'PleaseLogin'            => 'Autenticazione richiesta. Prego eseguire login !',
       'NextNew'		=> 'Prossimo Nuovo Evento',
       'RememberIDPswd'         => 'Ricorda il mio username e password (cosi non devi riscriverlo)',
       'global'                 => 'Globale', # mark global meeting group
       'groupnametaken'         => 'Il nome del Gruppo COnferenze &eacute gi&aacute stato usato, scegline un \'altro',
       'deleteEventsBefore'     => 'Rimuovi prima tutti gli eventi',
       'AutoStart'              => 'Autoavvia WebCalendar',
       'Readers'                => 'Lettori',
       'ListReaders'            => 'Lista utenti autorizzati a leggere il tuo calendario',
       'Print'			=> 'Stampa',
       'mailVcal'		=> 'Allega VCALENDAR negli avvisi e-mail',
       'FriendsEmail'		=> 'Indirizzo email - Amici',
       'PersonalMessage'	=> 'Aggiungi Messaggio Personale',
       'Mail2Friend'		=> 'Avvisa un amico',
       'MailSentTo'		=> 'L\'avviso in calendario &eacute stato spedito a ',
       'Location'               => 'Locazione',
       

       # the next line is used in a confirmation popup when a user is modifying 
       # an repeating event. The date displayed is the current date, normally 
       # it is not the initial starting date of the event.
       'CalendarFormat'			=> 'Formato Calendario',
       'CalendarFile'			=> 'File Calendario',
       'SetupGreetingC'         => 'Prego controlla la pagina opzioni calendario per completare la configurazione dello stesso.',
       'Email2Selected'		=> 'Email a tutti gli indirizzi selezionati',
       'AddNewEmail'		=> 'Aggiungi nuovo indirizzo email alla mia rubrica',
       'ContactP'		=> 'Contatto (Persona)',
       'ContactE'		=> 'Contatto (Email)',
       'DailyReminder'		=> 'Spedire avvisi giornalieri',
       'CompletedTasks'		=> 'Lavori Completati',
       'PendingTasks'		=> 'Lavori in attesa',
       'Import2Cal'		=> 'Importa questo evento in calendario',
       'ViewOnly'		=> 'O scegli un calendario da visualizzare',
       'newLogin'		=> 'O entra come altro utente', 
       'QuickAdd'		=> 'Aggiunta veloce',
       'Event'                  => 'Evento',
       'TodoList'               => 'ToDo List',
       'MarkComplete'		=> 'Marca selezionati come completati',
       'DeleteChecked'		=> 'Elimina selezionati',
       'AddNewTask'             => 'Aggiungi Nuovo Lavoro',
       'TaskManager'            => 'Gestore dei Lavori',
       'WarnInvitee'		=> 'Sei sicuro di voler inserire questo evento nei seguenti calendari?',
       'creationDisabled'	=> 'Spiacente, configurazione calendario disabilitata dall\'amministratore di sistema. Devi
chiedere all\'amministratore di generarti un nuovo calendario.',
       'RequestRSVP'            => 'Richiesta Risposta SVP',
       'invitationAccepted'     => 'Invito Accettato',
       'invitationDeclined'     => 'Invito Rifiutato',
       'AttendanceConfirmation' => 'Conferma Partecipazione Conferenza',
       'AcceptInvitation'         => 'Accetta Invito',
       'DeclineInvitation'      => 'Rifiuta Invito',
       'Undecided'              => 'Indeciso',
       'Category'		=> 'Categoria',
       'Speaker'		=> 'Oratore',
       'Header'			=> 'Testa',
       'Footer'			=> 'Piede',
       'HeaderFooter'		=> 'Inserisci codice HTML testa/piede da utilizzare in \'vista lista\'',
       'MiscInfo'		=> 'Misc. Info',
       'Description'		=> 'Descrizione',
       'AllDay'			=> 'Tutti i giorni',
       'Tomorrow'		=> 'Domani',
       'ThisWeek'		=> 'Questa Sett.',
       'ThisMonth'		=> 'Questo Mese',
       'Keyword'		=> 'Parola',
       'NoEvents'		=> 'Nessun Evento',
       'EditThis'		=> 'Modifica questo Evento',
       'recurFormat'            => 'Occorre %s per %d volte, partendo da %s.', # used in formating
       'taskDoneFormat'		=> 'Completato da %s su %s alle %s', # formating 

       'warnModify'	       => '
Stai per modificare un evento ricorrente. La data mostrata
non &eacute la data originale dell\'evento.  Se procedi nella
modifica, l\'evento comparir&aacute a partire dalla data di inizio, e
tutte le infomazioni su questo evento, tipo date eccezionali e 
dati di conferma conferenza, saranno persi. Prego confermare.

Modifica di una singola occorrenza di un evento ricorrente non &eacute possibile. 
Un alternativa &eacute quella di eliminare questa occorrenza dell\'evento ricorrente, e inserire
un nuvovo evento al suo posto.

La data originale per questo evento &eacute  ',

       'gEventError'		=> 'Hai tentato di eliminare un occorrenza parziale di un evento di gruppo ricorrente senza i privilegi sufficienti.
Non &eacute permesso poich&egrave desincronizzerebbe il vs. calendario con il calendario di altre persone del gruppo.  In compenso, puoi, 
eliminare l\'avvenimento dal tuo calendario cliccando su "Elimina Tuttele Occorrenze" nella schermata di modifica eventi',

       'City'                  => 'Citt&aacute',
       'State'                 => 'Stato',
       'Zip'                   => 'C.A.P.',
       'Country'               => 'Regione',


       'ResetPasswd'           => 'Svuota Password Utente',
       'File'                  => 'File',
       'AlreadyOnCalendar'     => 'I seguenti eventi sono gi&aacute presenti sul tuo calendario. Vengono ignorati.',
       'ImportFileTitle'         => 'Importa da un file VCalendar presente sul tuo Computer',
       'ImportFileInstruction'   => 'Per importare da un file VCalendar presente sul tuo computer, inserisci il path completo
del file VCalendar nel box e clicca il pulsante submit. Se non sei sicuro sul path, clicca sul pulsante browse e naviga sul tuo disco per selezionarlo.',
       'ImportVcal'		=> 'Importa Evento da VCalendar',
       'ImportVcalInstruction'	=> 'O taglia e incolla il tuo appuntamento vcalendar nella textarea e clicca il pulsante submit',



       'DetailedWorkingHours'   => 'Ore di lavoro giornaliere dettagliate', 
       'SelectAttendee' => 'Nomi Calendario, indirizzi email, gruppi di conferenza e utilizzo misto degli stessi pu&oacute essere usato 
per inserire partecipanti all\'evento. Puoi selezionare nomi di calendario dalla lista multipla sulla sinistra, o scriverne il nome
nel box sopra. Gli indirizzi email vanno inseriti nel box. I gruppi di conferenza, se esistenti, devono essere selezionati
dal menu selezione \'Gruppi Conferenza\'. Puoi inoltre inserire un gruppo conferenza nel box di testo. Occorrenze multiple nel box
di testo vanno inserite separate da spazii o da virgole.',

       'MkEditorListInstruction' => 'Per permettere a colalboratori o ad amici modifiche al vostro calendario, selezionate il loro calendario
dalla lista dei nomi a sinistra. Puoi inoltre inserirne i nomi nel box di testo posto qui sopra.',

       'MkReaderListInstruction' => 'Se i dati del tuo calendario sono protetti, gli altri utenti non possono leggere i tuoi
appuntamenti. Puoi autorizzare altri utenti ad accedere al tuo calendario in lettura creando una lista di Lettori.
Questa lista consiste in nomi di calendario. Puoi selezionare calendari multipli dalla lista a sinistra o inserendoli nel box
di testo qui sopra.',

       'MkGroupInstruction'=> 'Nomi di calendario o indirizzi email possono essere utilizzati per identificare i membri
di un gruppo di lavoro.Puoi selezionare calendari multipli dalla lista a sinistra o inserendoli nel box
di testo qui sopra. Gli indirizzi email vanno inseriti nel box qui sopra.',
       'Contacts'	   => 'Contatti',
       'Tasks'		   => 'Eventi',
       'Day'		   => 'Giorni',
       'Week'		   => 'Settimane',
       'Month'		   => 'Mesi',
       'Year'		   => 'Anni',
       'OffDutyHours'	   => 'Orario Fuori Servizio',
       'AddNewAddress'	   => 'Aggingi nuovo indirizzo',
       'HeaderColor'	   => 'Colori testa',
       'Never'		   => 'Mai',
       'OverlapNotAllowed' => 'Spiacente, gli eventi incorociati non sono permessi in questo calendario. Riprova.',
       'Notes'		   => 'Note',
       'PostIt'		   => 'PostIt',   # as in post it notes
       'Title'		   => 'Titolo',
       'AddNewNote'	   => 'Aggiungi nuova Nota',

       'InterestedCalendars' => 'Lista di tutti i calendari che probabilmente vuoi vedere o modificare.', 
       'CalendarListInstruction' => 'Se non vuoi vedere lunghe liste di calendari nel menu di selezione calendari, puoi
creare una lista breve qui.  Inserisci solo il nome dei calendari che vuoi vedere nel box di testo sopra, o selezionali dalla
lista a sinistra. La lista breve selezionata sar&aacute usata in tutte le maschere dove apparir&aacute la lista calendari.',
       
       'MasterHeadInput'  => 'Nella schermata principale, seleziona calendario usando un ',
       'TextEntry'	  => 'Box inserimento Testo',
       'PulldownMenu'     => 'Menu cascata',

       'LockWarning'      => 'Il vostro calendario &eacute stato modificato durante una operazione automatica. Per la suicurezza dei dati
la modifica &eacute stata respinta. Torna indietro e reinserisci l\'evento.',

       'IUpload'	  => 'Carica Immagine', 
       'FUpload'	  => 'Carica File',        
       'IUploadInstruction' => 'Per caricare un immagine dal tuo disco, inserisci il path dell\'immagine stessa
nel box di testo e premi submit. Se non sei sicuro del path, clicca sul pulsante
browse per cercare il tuo file.',
       'IUploadAck'	  => 'Immagine caricata. Per inserire l\'immagine nel titolo o nella descrizione, copia e 
incolla la seguente linea nella corrispondente area di testo dell\'editor eventi. Ricorda che l\'immagine pu&oacute essere soggetta
all\'approvazione dell\'amministratore di sistema, nel qual caso l\'immagine non sar&aacute immediatamente visibile.',
       'ReviewUI'  => 'Controlla Immagini Utente caricate',
       'ApproveChecked' => 'Approva  selezionati',	   
       'RejectChecked' => 'Respingi selezionati',	 
       'Export2Vcal'   => 'Esporta calendario in formato vCal',
       'CreateNewCal'  => 'Crea Nuovo Calendario',
       'UsableImgs'    => 'Immagini utilizzabili',
       'UImageInst'    => 'Per inserire una immagine nel titolo o nella descrizione dell\'evento, taglia e incolla 
il suo nome (incluso il simpatico \\^o^/) nell\'area corrispondente di testo dell\'editor eventi.',
	'CheckAll'     => 'Seleziona tutto',
	'UncheckAll'   => 'Deseleziona tutto',
        'Export2VCard' => 'Esporta rubrica come vCard',
	'ImportVcard'  => 'Importa contatti da vCard',
        'ImportVCardTitle'  => 'Importa da file vCard del tuo Computer',
        'ImportVcardInstruction' => 'O copia e incolla le informazioni dalla tua vcard e clicca sul pulsante submit',
        'ImportVcardFileInstruction'   => 'Per importare da un file vCard sul tuo computer, inserisci il path completo
del file Vcard nel box e clicca submit. Se non conosci il path usa il pulsante browse per navigare sul tuo hard-disk.',
        'AlreadyInAddressbook' => 'I seguenti indirizzi sono gi&aacute in rubrica.',
	'DpyETimeAs' => 'Mostra l\'ora dell\'evento come',
	'MasterheadTabs' => 'Tabs schermata principale',
 	'DeferConfirmation'     => 'Posticipa conferma',
	'Unconfirmed'           => 'Non confermata',

	'SendMailUsing'         => 'Spedisci mail in formato', #	html, txt or vcal
         # used as in
         # send mail <> immediately or <> <hours> before event
        'Sendmail'              => 'Spedisci mail',
        'immediately'           => 'immediatamente',
        'or'                    => 'o',
        'beforeEvent',          => 'prima dell\'evento',
        'Cancelled'             => 'Cancellato',
       #===== need translation !!!

        'AddNewEntry'		=> 'Aggiungi un nuovo Appunto',
	'SearchNotes'		=> 'Cerca Note',
	'SearchAddress'		=> 'Cerca Rubrica',

	'Week_begins_on'	=> 'La settimana comincia da',
	'StartDate'		=> 'Inizio',
	'DueDate'		=> 'Scadenza data',
	'DueTime'		=> 'Scadenza tempo',
	'Overdue'		=> 'Scaduto',
	'EventDates'		=> 'Data Eventi', 

	'SpecialEvents'		=> 'Eventi speciali',
	'RemindForwardNewTask'  => 'Imposta l\' invio di un promemoria a ogni nuovo Lavoro',
	'DispCompletedTasks'    => 'Visualizza i Lavori completati nel calendario',
	'TaskOptions'		=> 'Opzioni Lavori',
        'DoneOn'		=> 'Terminato il %s da %s', # used to display completed tasks, like 'Done on 03/19/2002', 

        'DetailedView'		=> 'Dettagliato',
        'CombinedView'		=> 'Combinato',
        'BannerView'		=> 'Vista Banner',
	'TooltipDelay'		=> 'Tooltip delay in millisecondi',	
	'DayViewOptions'        => 'Opzioni vista Giorno',
	'More'			=> 'Altro',


	'G_A_Notes'		=> 'Consenti accesso alle Note a',
	'G_A_Address'		=> 'Consenti accesso alla Rubrica a',	  
	'G_A_Diary'		=> 'Consenti accesso al Diario a',
	'OwnerOnly'		=> 'Solo propretario',
	'Everyone'		=> 'Tutti',

        'DpyAuthorName'         => 'Visulaizza il nome Intestatario usando', # real name, calendar name or both
        'RealName'              => 'Nome reale',
        'CalendarName'          => 'Nome del Calendario',
        'Rname_Cname'           => 'Nome reale & Nome calendario',

	'DescriptiveName'	=> 'Un breve nome descrittivo',
        'OwnerName'             => 'Nome Utente',
        'OwnerEmailAddress'     => 'Email Utente',
        'OwnerHomepage'         => 'Homepage Utente',

	'Label'			=> 'Etichetta',
	'PredefineColorPairs'	=> 'Colori Predefiniti sfondo/testo per:', 

	#========= The 16 common colors used on the web=================	'Black'  => 'Nero'  ,    #      #000000,  
	'Silver' => 'Argento' ,	  #      #C0C0C0,
	'Gray'   => 'Grigio'   ,	  #      #808080,
	'White'  => 'Bianco'  ,	  #      #FFFFFF,
	'Maroon' => 'Marrone' ,	  #      #800000,
	'Red'    => 'Rosso'    ,	  #      #FF0000,
	'Purple' => 'Porpora' ,	  #      #800080,
	'Fuchsia'=> 'Fuchsia',	  #      #FF00FF,
	'Green'  => 'Verde'  ,	  #      #008000,
	'Lime'   => 'Lime'   ,	  #      #00FF00,
	'Olive'  => 'Oliva'  ,	  #      #808000,
	'Yellow' => 'Giallo' ,	  #      #FFFF00,
	'Navy'   => 'Blu notte'   ,	  #      #000080,
	'Blue'   => 'Blu'   ,	  #      #0000FF,
	'Teal'   => 'Verde acqua'   ,	  #      #008080,
	'Aqua'   => 'Acqua'   ,	  #      #00FFFF,
	#================================================================
	'Font'  => 'Font',
	'DefineFonts'      => 'Crea uno stile nuovo',
	'FontsStyles'      => 'Stili',

	'DependentCals'	   => 'Calendari dipendenti',
	'DepCalInstruction' => 'Lista di tutti i calendari dipendenti collegati a questo calendario. Ad esempio,
se voi avete un videoproiettore installato in una sala riunioni, la disponibilit&agrave; del
videoproiettore dipende dall\' occupazione della sala. Per contro, la prenotazione del videoproiettore
implica anche quello della sala riunioni. In questo esempio il calendario del videoproiettore dipende
dal calendario della sala riunioni. Gli eventi inseriti nel calendario del videoproiettore saranno
automaticamente inseriti anche in quello della sala riunioni e viceversa.',

     'ListAuthors'	=> 'Accetta eventi da',
     'AuthorInstruction' => 'Come predefinto, ogni utente del calendario &egrave; abilitato 
a modificare gli eventi di gruppo.Per modificare questa opzione seleziona dalla lista i nomi dei calendari autorizzati
ad apportare modifiche al tuo calendario. Se nessun nome viene selezionato dalla lista 
implica che ogni utente &egrave; autorizzato ad apportare modifiche di gruppo al tuo calendario.',
   'EventInterval'	 => 'Intervallo Evento di Default',
   'PublicOpen'             => 'Pubblico',
   'PublicModerated'        => 'Pubblico-moderato',

   'Pending'		    => 'Sospeso',
   'Mail2Author'	    => 'Invia mail all\' utente',

   'ClearCache'             => 'Cancella la Cache',
   'color2'		    => 'Colore di sfondo in vista mese',

   'semails'		    => 'Seleziona invitati dalla Rubrica', 
   'addinvitee'		    => 'Aggiungi selezione alla lista invitati', 

   'Select'		    => 'Selezione',
   'IgnoreCCal'		    => 'Ignora calendari collegati',
   'ResrcCal'		=> 'Questo &egrave; un calendario di risorsa?',
   'AllowAP'            => 'Se questo &egrave; un calendario pubblico permettere l\' accesso anonimo?',

   'orIndefinitely'     => 'oppure all\'infinito', # used as in: occurs daily for 5 times or indefinitely
   'remindOnce'		=> 'Se l\'evento si ripete, ricorda soltanto il primo della serie',
   'applyReminders'     => 'Applicare l\'avviso standard per questo evento?',

   'NotifyAP'           => 'Se questo &egrave; un calendario pubblico e moderato, inviare email al proprietario ogni nuova inserzione?',
   'Preferences'        => 'Preferenze',   
   'Appearance'         => 'Aspetto',
   'TabColor'           => 'Colore sfondo del Pannello',
   'TabHColor'          => 'Colore Pannello Selezionato',  
   'StyleSheet'		=> 'Foglio di Stile',

   'OrTimeOffset'	=> 'Specifica della differenza di orario tra tempo locale e tempo del server (+-HH:MM)', 
   'ServerTime'		=> 'La data corrente del server &egrave;',
   'catfilter'		=> 'Desideri abilitare i filtri per categoria?',
   'popdetail'		=> 'Desideri mostrare il dettaglio degli eventi in una finestra popup?',
   'WeekViewOptions'    => 'Opzioni di visualizzazione settimanale',
   'orUntilDate'	=> 'o fino alla data',

   'Freebusytable'	=> 'Tavola libero/occupato',
   'VirtualGroup'	=> 'Virtual Calendar Group',
   'wcf'                => 'quale viene per primo',
   'pendmsg'            => 'Notifica all\'Autore, via e-mail, le Tue decisioni',
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


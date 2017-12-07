# 
# German Language Module for webCal / Deutsches Sprachmodul f�r webCal
# Note: Special HTML characters (&...;) may be put everywhere, except on
# buttons that do something. The ampersand (&) is a special character in PERL.
# Corrections, suggestions etc. welcome
# Klaus Vormweg (klaus.vormweg@nexgo.de)
#
# Patrik Eschle (patrik@eschle.com) for WebCal v2.7.8 Sep 30 2003
# Patrik Eschle (patrik@eschle.com) for webcal 2.8.6. Jun 9 2003
# Patrik Eschle (patrik@eschle.com) for webcal 2.8.3. Dec 18 2002
#
# $Header: /home/cvs/webCal/webCal2/German.perl,v 1.89 2004/10/20 23:35:56 mzou Exp $
#


%::phr= (
       # specify character encoding.
       'CHARSET'		=> 'ISO-8859-1',

       'Calendar'               => 'Kalender',
       
       # Name of weekdays
       'Sunday'                 => 'Sonntag',
       'Monday'                 => 'Montag',
       'Tuesday'                => 'Dienstag',
       'Wednesday'              => 'Mittwoch',
       'Thursday'               => 'Donnerstag',
       'Friday'                 => 'Freitag',
       'Saturday'               => 'Samstag',
       # Name of weekdays, abbreviation
       'Sun'                    => 'So',
       'Mon'                    => 'Mo',
       'Tue'                    => 'Di',
       'Wed'                    => 'Mi',
       'Thu'                    => 'Do',
       'Fri'                    => 'Fr',
       'Sat'                    => 'Sa',
       # Name of weekdays, abbreviated even more
       'Su'                     => 'So',
       'Mo'                     => 'Mo',
       'Tu'                     => 'Di',
       'We'                     => 'Mi',
       'Th'                     => 'Do',
       'Fr'                     => 'Fr',
       'Sa'                     => 'Sa',
       
       # Month Names  
       'January'                => 'Januar',
       'February'               => 'Februar',
       'March'                  => 'M�rz',
       'April'                  => 'April',   
       'May_'                   => 'Mai',      #!
       'June'                   => 'Juni',
       'July'                   => 'Juli',
       'August'                 => 'August',
       'September'              => 'September',
       'October'                => 'Oktober',
       'November'               => 'November',
       'December'               => 'Dezember',
       # Month Names, abbreviation
       'Jan'                    => 'Jan',
       'Feb'                    => 'Feb',
       'Mar'                    => 'M�r',
       'Apr'                    => 'Apr',
       'May'                    => 'Mai',
       'Jun'                    => 'Jun',
       'Jul'                    => 'Jul',
       'Aug'                    => 'Aug',
       'Sep'                    => 'Sep',
       'Oct'                    => 'Okt',
       'Nov'                    => 'Nov',
       'Dec'                    => 'Dez',

       # repeating rules 
       'OneTime'                => 'Einmal',
       'Daily'                  => 'T�glich',
       'Weekly'                 => 'W�chentlich',
       'Every2Weeks'            => 'Alle zwei Wochen',
       'MonthlyByDate'          => 'Monatlich nach Datum',
       'MonthlyByWeekday'       => 'Monatlich nach Wochentag',
       'Yearly'                 => 'J�hrlich',
       'MTWThF'                 => 'Mo bis Fr',
       'MWF'                    => 'Mo Mi Fr',
       'TTh'                    => 'Di Do',
       'YearlyByMonthWeekday'   => 'J�hrlich nach Wochentag im Monat',
       'EveryOtherDay'          => 'Jeden zweiten Tag',
       'Every3rdDay'            => 'Jeden dritten Tag',
       'Every4thDay'            => 'Jeden vierten Tag',
       'Every5thDay'            => 'Jeden f�nften Tag',
       'Every6thDay'            => 'Jeden sechsten Tag',

       # event types
       'Appointment'            => 'Termin',
       'Todo'                   => 'Aufgabe',
       'Meeting'                => 'Besprechung',
       'Special'                => 'Speziell',

       # option button names
       'CalendarOptions'        => 'Kalenderoptionen',
       'Compare'                => 'Vergleichen',
       'Search'                 => 'Suchen',
       'GotoDate'               => 'Gehe zu Datum',
       'Previous'               => 'Zur�ck',
       'Today'                  => 'Heute',
       'Next'                   => 'Vorw�rts',
       'Options'                => 'Optionen',
       'Admin'                  => 'Administration',
       'Logout'                 => 'Abmelden',
       'DayView'                => 'Tagesansicht',
       'WeekView'               => 'Wochenansicht',
       'MonthView'              => 'Monatsansicht',
       'YearView'               => 'Jahresansicht',
       
       
       # messages on the setup screen
       'SetupYourCalendar'      => 'Kalender erstellen',
       'YourCalendarName'       => 'Anmeldename',
       'YourEmailAddress'       => 'E-Mail Adresse',
       'YourName'               => 'Name',
       'Password'               => 'Passwort',
       'RetypePassword'         => 'Passwort wiederholen',
       'CalendarType'           => 'Art des Kalenders',
       'Public'                 => 'Oeffentlich',
       'Private'                => 'Privat',
       'ForPrivateCalendar'     => 'F�r private Kalender',
       'OthersSeeTextTime'      => 'Text und Zeit sichtbar',
       'OthersSeeTitle'         => 'Title sichtbar',
       'OthersSeeTimeOnly'      => 'Nur Zeit sichtbar',
       'OthersSeeNothing'       => 'Nichts sichtbar',
       'PublicCalendar'         => 'Oeffentlicher Kalender',
       'Submit'                 => 'Speichern',
       'Cancel'                 => 'Abbrechen',
       'TheName'                => 'Der Name',
       'HasBeenTaken'           => 'wird schon von jemandem benutzt',
       'PasswordMismatch'       => 'Passw�rter sind nicht gleich',
       'TryAgain'               => 'versuchen Sie es bitte noch einmal',
       'EmailIncomplete'        => 'Ihre E-Mail-Adresse ist unvollst�ndig',
       'CannotCreateCalendar'   => 'Konnte Ihren Kalender nicht anlegen. Bitte benutzen Sie nur Buchstaben im Anmeldenamen.',
       'CannotWriteInfoFile'    => 'Konnte Info-Datei nicht speichern. Bitte wenden Sie sich an den Web-Administrator.',
       'CannotWriteDataFile'    => 'Konnte Daten-Datei nicht speichern. Bitte wenden Sie sich an den Web-Administrator.',
       'CannotWritePasswordFile'=> 'Konnte Passwort-Datei nicht �ndern. Bitte wenden Sie sich an den Web-Administrator.',
       'Congratulations'        => 'Gl�ckwunsch',
       'SetupGreetingA'         => 'Ihr Kalender wurde angelegt.  Bitte erstellen Sie ein Lesezeichen auf',
       'SetupGreetingB'         => 'Bitte merken Sie sich Ihr Passwort.',
       'HaveToSupplyCalendarName' => 'Bitte geben Sie einen Anmeldenamen an.',
       'PleaseDoNotUseYourUnixAccountPassword' => 'Bitte benutzen Sie kein Passwort, das sie schon an einem anderen Ort verwenden.',
       
       
       # Event Editor Messages
       'EventEditor'            => 'Termin-Editor',
       'AppointmentEditor'      => 'Besprechungs-Editor',
       'ToDoEditor'             => 'Aufgaben-Editor',
       'MeetingEditor'          => 'Besprechungs-Editor',
       'SpecialEditor'          => 'Spezial-Editor',
       'AuthRequired'           => 'Sie m�ssen sich anmelden, um diesen Kalender zu bearbeiten.',
       'CurrentEvents'          => 'Aktuelle Termine',
       'Time'                   => 'Zeit',
       'What'                   => 'Was',
       'Date'                   => 'Datum',
       'Start'                  => 'Anfang',
       'End'                    => 'Ende',
       'Details'                => 'Details',
       'Colors'                 => 'Farben',
       'Privacy'                => 'Datenschutz',
       'Frequency'              => 'H�ufigkeit',
       'Reminders'              => 'Erinnerung',
       'Mail'                   => 'E-Mail',
       'min'                    => 'Min', # abbreviation of minute
       'mins'                   => 'Minuten',
       'hours'                  => 'Stunden',
       'days'                   => 'Tage',
       'weeks'                  => 'Wochen',
       'Occurs'                 => 'Wiederholung',
       'For'                    => 'F�r',
       'times'                  => 'mal',
       'Popup'                  => 'Meldungsfenster',
       'Author'                 => 'Autor',
       'Blink'                  => 'Blinken',
       'Chime'                  => 'Klingeln',
       'Insert'                 => 'Speichern',                    # Button!
       'InsertAsNew'            => 'Als neuen Eintrag speichern',  # Button!
       'Modify'                 => '�ndern',                       # Button!
       'DeleteThisOne'          => 'Diese Wiederholung l�schen',   # Button!
       'DeleteAll'              => 'Alle Wiederholungen l�schen',  # Button!
       'Delete'                 => 'L�schen',                      # Button!
       'Due'                    => 'F�llig', # as in Due Date
       'TaskDone'               => 'Aufgabe ist erledigt',
       'RemindForward'          => 'T�glich eintragen (bis zur F�lligkeit)',  # ????
       'Yes'                    => 'Ja',
       'No'                     => 'Nein',
       'Y'			=> 'J',             # short for yes
       'N'			=> 'N',		    # short for No
       'ToDo'                   => 'Aufgabe',
       'Participants'           => 'Teilnehmer',
       'none'                   => 'kein',
       'MailToAll'              => 'E-Mail an alle',
       'FindConflict'           => 'Finde Konflikt',                # Button!
       'NoTimeEvent'            => 'Spezialtermin (ohne Uhrzeit)',
       'Fg'                     => 'V.gnd',
       'Bg'                     => 'H.gnd',
       'Error'                  => 'Fehler',
       'HasError'               => 'Es ist ein Fehler aufgetreten',
       'ListParticipants'       => 'Auflistung von Gruppen, Anmeldenamen oder E-Mail-Adressen der Teilnehmer. 
                                    Deren Kalender werden ge�ndert.',
       'ConflictTable'          => 'Konflikt-Tabelle',
       'Conflict'               => 'Konflikt',
       'Table'                  => 'Tabelle',
       'You'                    => 'Sie',
       'NotAllowedToModify'     => 'd�rfen diesen Termin nicht �ndern.',
       'NotAllowedToEdit'       => 'd�rfen diesen Kalender nicht �ndern.',
       'Warning'                => 'Warnung',
       'NoRemindForward'        => 'Kann wiederholte Aufgaben nicht t�glich eintragen',
       'Acknowledgement'        => 'Best�tigung',
       'UpdatedOK'              => 'Kalender erfolgreich ge�ndert',
       'BackToCalendar'         => 'Klicken Sie hier, um zu Ihrem Kalender zur�ckzukehren',
       'OpenFailed'             => 'Konnte Ihren Kalender nicht �ffnen',
       'NoCalendar'             => 'Sie haben anscheinend keinen Kalender',
       
       # goto page
       'Goto_Date'              => 'Gehe zu Datum', #title
       'Goto'                   => 'Gehe zu',
       'SelectDate'             => 'Bitte w�hlen Sie ein Datum',
       'View'                   => 'Ansicht',
       'Go'                     => 'Los',         # function as submit
       'Set'                    => 'gespeichert', # as in set options    ???

       # set options page
       'My_day_starts_at'       => 'Mein Tag beginnt um',
       'ends_at'                => 'endet um',
       'Interval'               => 'Intervall',
       'Week_starts_on',        => 'Wochenbeginn am',
       'include_weekend',       => 'einschliesslich Wochenende',
       'Date_Format'            => 'Datumsformat',
       'Time_Format'            => 'Zeitformat',
       'Time_zone'              => 'Zeitzone',
       'Default_view'           => 'Standardansicht',
       'Default_Reminders'      => 'Standarderinnerung',
       'ListEditors'            => 'Benutzer, die Ihren Kalender �ndern d�rfen',
       'Editors'                => 'Liste',
       'Email'                  => 'E-Mail',
       'Default'                => 'Standard',
       'Homepage'               => 'Homepage',
       'Language'               => 'Sprache',
       
       # admin page
       'Administration'         => 'Administration',
       'adminDisabled'          => 'Kalender-Administration ist f�r �ffentliche Kalender nicht m�glich.',
       'Change_Password'        => 'Passwort �ndern',
       'Old_Password'           => 'Altes Passwort',
       'New_Password'           => 'Neues Passwort',
       'New_Password_Again'     => 'Neues Passwort wiederholen',
       'to_be_used_by_meeting_editor' => 'die im Besprechungs-Editor genutzt werden kann',
       'Existing_Groups'        => 'Existierende Gruppen',
       'Group_Name'             => 'Gruppenname',
       'ListGroupMembers'       => 'Geben Sie die Anmeldenamen oder E-Mail-Adressen der Teilnehmer ein',
       'Merge_Calendars'        => 'Kalender verbinden',
       'CalendarNames'          => 'Kalendername',
       'EraseCalendar'          => 'Leere meinen Kalender',
       'DeleteCalendar'         => 'L�sche meinen Kalender',
       'errorPerm'              => 'Keine Berechtigung',
       'calDeleted'             => 'Ihr Kalender wurde gel�scht',
       'ThankYou4Using'         => 'Danke f�r die Benutzung',
       'calErased'              => 'Ihr Kalender wurde geleert',
       'eraseFailed'            => 'Konnte Ihren Kalender nicht leeren',
       'cpasswordWrong'         => 'Passwort falsch',
       'ipasserror'             => 'Konnte die Passwort-Datei nicht �ffnen, versuchen Sie es bitte noch einmal.',
       'password_changed'       => 'Ihr Passwort wurde ge�ndert',
       'cannot_open'            => 'Konnte nicht �ffnen: ',
       'Meeting_group'          => 'Gruppe',
       'updated'                => 'erfolgreich ge�ndert',
       'new_entries'            => 'neue Eintr�ge zu Ihrem Kalender hinzugef�gt',
       'Unknown_command'        => 'Unbekannter Befehl',
       
       
       # search page
       'Search_Calendar'        => 'Im Kalender suchen',
       'Topic'                  => 'Suchen nach',
       'SearchAll'              => 'Suche Alle',
       'Search_From'            => 'Suche von',
       'To'                     => 'bis',
       'Search_Results'         => 'Such-Resultate',
       'CalendarReminder'       => 'Kalender Erinnerung',
         
       # Greeting
       'WelcomeToWebCalendar'   => 'Willkommen zum WebCalendar',
       'PleaseSelectACalendar'  => 'Bitte w�hlen Sie einen Kalender',
       'PleaseEnterCalendarName'=> 'Bitte geben Sie Ihren Anmeldenamen ein',

       #download
       'notAllowedToDownload'   => 'Sie d�rfen diesen Kalender nicht herunterladen',
         
       #logout
       'AuthNotRequired'        => 'F�r �ffentliche Kalender ist keine Anmeldung erforderlich',
       'logoutInstruction'      => 'Am sich abzumelden, klicken Sie auf den Knopf "Abmelden", wenn der Anmelde-Dialog erscheint,<br> 
                                    melden Sie sich als "nobody" an. Ein Passwort wird nicht ben�tigt.',
       'loginInstruction'       => 'Um sich als anderer Benutzer anzumelden, m�ssen Sie auf den Knopf "Anmelden" klicken',
       'You_ve_logout'          => 'Sie sind abgemeldet',
       'access_denied'          => 'Zugriff verweigert',
       'login'                  => 'Anmelden',

       #compare
       'CompareCalendars'       => 'Kalender vergleichen',
       'Enter_calendar_names'   => 'Anmeldenamen eingeben',
       'or_meeting_group'       => 'oder Gruppe',
       'EventsTable'            => 'Termin-Tabelle',
       'Name'                   => 'Name',
       'Events'                 => 'Termin',
       'ForegroundColor'        => 'Vordergrundfarbe',
       'BackgroundColor'        => 'Hintergrundfarbe',

       # msg in the main
       'accessAnotherCal'        => 'Um auf einen anderen Kalender zuzugreifen:',

       # Some missing phrases and addons ...
       'Close'                  => 'Schliessen',
       'ShowCombinedCalendar'   => 'Den ganzen Kalender zeigen',
       'CombinedCalendar'       => 'Kombinierter Kalender',
       'Participants_are_allowed_to' => 'Die Teilnehmer d�rfen:',
       'View_only'              => 'Nur Lesen',
       'Edit'                   => 'Editieren',
       'EditAndDelete'          => 'Editieren und L�schen',
       'Updated_calendars'      => 'Die folgenden Kalender sind auch auf dem neusten Stand',
       'NotAllowedToUpdate'     => 'Sie d�rfen die folgenden Kalender nicht �ndern',
       'invalid_date'           => 'Falsches Datum',
       'Schedule'               => 'Eintragen',            # as in 'schedule an appointment on calendar mzou,   ? not sure kv
       'onCalendar'             => 'Im Kalender',		# ?
       'DeleteForward'          => 'Vorw�rtseintragungen l�schen',
       'All'                    => 'Alle',

       'SearchSubjectEmpty'	=> 'Suchbegriff darf nicht leer sein',
       'Start_date'             => 'Anfangsdatum',
       'is_after_due_date'      => 'liegt nach F�lligkeitsdatum',
       'Invalidusername'	=> 'Ung�ltiger Anmeldename',
       'Protected'		=> '==gesch�tzt==',
       'Invalidcalendarname'	=> 'Ung�ltiger Kalendername',
       'Couldnotfindcalendar' => 'Konnte Kalender nicht finden',
       'Invalidspooldir'      => 'Ung�ltiges Datenverzeichnis',
       'ListView'             => 'Listenansicht',
       'BlockView'            => 'Blockansicht',

        # address book stuff
       'AddressBook'           => 'Adressbuch',
       'AddressBookEditor'     => 'Adressbuch-Editor',
       'AddressBookUpdated'    => 'Adressbuch ge�ndert',
       'BackToAddressBook'     => 'Klicken Sie hier, um zu Ihrem Adressbuch zur�ckzukehren',
       'FirstName'             => 'Vorname',
       'LastName'              => 'Nachname',
       'Address'               => 'Adresse',
       'Phone'                 => 'Telefon',
       'Fax'                   => 'Fax',
       'Info'                  => 'Info',
       'Affiliation'           => 'Firma',
        'Where'                => 'Wo',
       'Priority'              => 'Priorit�t',
       'Diary'                 => 'Tagebuch',
       'DiaryUpdated'          => 'Tagebuch ge�ndert',
       'ReadDiary'             => 'Tagebuch lesen',       
       'From'                  => 'Von',
       'PlainText'             => 'Einfacher Text',
       'Html'                  => 'HTML',
       'SearchDiary'           => 'Im Tagebuch suchen',
       'SearchFor'             => 'Suche nach',
       'NeedAuth2Proceed'      => 'Zum Lesen oder Bearbeiten ist eine Anmeldung erforderlich. 
	   			   Bitte klicken Sie auf den Knopf "Anmelden", um sich anzumelden oder
				   den Kalenderknopf, um zu Ihrem Kalender zur�ckzukehren.',

       # Priority of ToDo tasks
       'Urgent'                => 'Sehr hoch',
       'High'                  => 'Hoch',
       'Medium'                => 'Normal',
       'Low'                   => 'Niedrig',       

       # find calendar names
       'FindCalNames'          => 'Finde Kalender',

       # overlapping 
       'AllowOverlap'          => 'Ueberschneidungen zul�ssig',
       'GoBack'                => 'Zur�ck',  # Button

       'OverlapInstr'          => 'Dieser Eintrag wurde zur�ckgewiesen, da er sich mit einem oder
				   mehreren Eintr�gen in Ihrem Kalender �berschneidet (siehe
				   Tabelle). Wenn Sie ihn wirklich eintragen wollen, gehen Sie zur�ck,
				   kreuzen <b>"J"</b> an bei <b>"Ueberschneidungen zul�ssig"</b>
				   und versuchen es noch einmal.',

       'signup'                 => 'Anmeldung',
       'Invalidpassword'	=> 'Falsches Passwort',
       'olduserInstruction'     => 'Ich habe schon einen Kalender',
       'newuserInstruction'     => 'Ich bin ein neuer Benutzer',

       'PleaseLogin'            => 'Anmeldung erforderlich. Bitte melden Sie sich zuerst an!',
       'NextNew'		=> 'N�chster neuer Eintrag',
       'RememberIDPswd'         => 'Speichere Benutzernamen und Passwort',
       'global'                 => 'Global', # mark global meeting group
       'groupnametaken'         => 'Gruppenname existiert schon. Bitte w�hlen Sie einen anderen Namen',
       'deleteEventsBefore'     => 'L�sche alle Eintr�ge vor',
       'AutoStart'              => 'Autostart WebCalendar',
       'Readers'                => 'Liste',
       'ListReaders'            => 'Benutzer, die Ihren Kalender lesen d�rfen',
       'Print'			=> 'Drucken',
       'mailVcal'		=> 'vCalendar an die Erinnerungsmail anh�ngen',
       'FriendsEmail'		=> 'E-Mail Adresse',
       'PersonalMessage'	=> 'Eine pers�nliche Nachricht hinzuf�gen',
       'Mail2Friend'		=> 'Diesen Eintrag als E-Mail verschicken',
       'MailSentTo'		=> 'Eintrag wurde verschickt an ',

       'Location'               => 'Ort',
       'CalendarFormat'		=> 'Kalenderformat',
       'CalendarFile'		=> 'Kalender-Datei',
       'SetupGreetingC'         => 'Bitte klicken Sie auf den Link zur Optionsseite unten, um Ihre Einstellungen zu vervollst�ndigen',
       'Email2Selected'		=> 'E-Mail an alle ausgew�hlten Adressen',
       'AddNewEmail'		=> 'F�ge eine neue Adresse zu meinem Adressbuch hinzu',
       'ContactP'		=> 'Kontakt Name',
       'ContactE'		=> 'Kontakt E-Mail',
       'DailyReminder'		=> 'Schicke t�glich Erinnerung',
       'CompletedTasks'		=> 'Erledigt',
       'PendingTasks'		=> 'Offen',
       'Import2Cal'		=> 'F�ge diese Ereignis ein in Kalender',
       'ViewOnly'		=> 'Oder w�hlen Sie einen anderen Kalender zur Ansicht',
       'newLogin'		=> 'Oder melden Sie sich unter einer anderen Kennung an',
       'QuickAdd'		=> 'Schnelles Hinzuf�gen',
       'Event'                  => 'Termin',
       'TodoList'               => 'Aufgabenliste',
       'MarkComplete'		=> 'Markiere angekreuzte als erledigt',
       'DeleteChecked'		=> 'L�sche angekreuzte',
       'AddNewTask'             => 'Neue Aufgabe hinzuf�gen',
       'TaskManager'            => 'Task Manager',
       'WarnInvitee'		=> 'Sind Sie sicher, da� Sie diesen Eintrag den folgenden Kalendern hinzuf�gen wollen?',
       'creationDisabled'	=> 'Das Einrichten von Kalendern ist auf diesem System gesperrt. Bitten Sie 
                                    Ihren Systemadministrator, Ihnen einen Kalendar einzurichten.',
       'RequestRSVP'            => 'Um Best�tigung bitten',
       'invitationAccepted'     => 'Einladung akzeptiert',
       'invitationDeclined'     => 'Einladung abgelehnt',
       'AttendanceConfirmation' => 'Best�tigung f�r Treffen',
       'AcceptInvitation'       => 'Best�tige Einladung',
       'DeclineInvitation'      => 'Lehne Einladung ab',

       # -------------------
       'ImportVcal'		=> 'Eintrag aus vCalendar importieren',
       'ImportVcalInstruction'	=> 'Um einen Eintrag aus vCalendar zu importieren, 
                                    kopieren Sie bitte Ihren Eintrag in das Textfeld und klicken auf den Knopf "Speichern"',

       'Undecided'              => 'Unentschlossen',
       'Category'		=> 'Kategorie',
       'Speaker'		=> 'Sprecher',
       'Header'			=> 'Kopfzeilen',
       'Footer'			=> 'Fusszeilen',
       'HeaderFooter'		=> 'Tragen Sie hier den HTML-Code f�r die Kopf- und Fusszeile in der Listenansicht ein.',
       'MiscInfo'		=> 'Sonstige Info',
       'Description'		=> 'Beschreibung',
       'AllDay'			=> 'Jeden Tag',
       'Tomorrow'		=> 'Morgen',
       'ThisWeek'		=> 'Diese Woche',
       'ThisMonth'		=> 'Dieser Monat',
       'Keyword'		=> 'Schl�sselbegriff',
       'NoEvents'		=> 'Keine Eintr�ge',
       'EditThis'		=> 'Diesen Eintrag editieren',
       'recurFormat'            => 'Erscheint %s %d mal, beginnend am %s.', # used in formating
       'taskDoneFormat'		=> 'Erledigt von %s am %s', # formating 

       'warnModify'	       => 'Sie sind dabei, einen wiederholten Eintrag zu ver�ndern. 
                                   Das Datum (oder F�lligkeitsdatum) entspricht aber nicht dem Originaldatum 
                                   (oder Original-F�lligkeitsdatum). Wenn Sie mit der Aenderung fortfahren, 
                                   wird ein neuer Eintrag erstellt und alle (auch verborgenen) Informationen 
                                   (z.B. Ausnahmen, Meetinginformationen) gehen verloren. Bitte best�tigen Sie.

                                   Das Aendern eines einzelnen Termins eines sich wiederholenden Eintrags ist nicht m�glich. 
                                   Man kann aber diesen einen Termin l�schen und an dessen Stelle einen neuen generieren. 

                                   Das Originaldatum (bzw. F�lligkeitsdatum) ist ',

       'gEventError'		=> 'Sie haben versucht, einen Termin eines sich wiederholenden Gruppeneintrags zu l�schen 
                                    ohne ausreichende Rechte zu haben.
                                    Das ist nicht erlaubt, da der Gruppeneintrag sonst inkonsistent w�rde.  Sie k�nnen jedoch 
                                    alle Eintr�ge des Termins aus Ihrem Kalender l�schen, indem Sie auf 
                                    "Alle Wiederholungen l�schen" im Event-Editor klicken',

       'City'                  => 'Stadt',
       'State'                 => 'Bundesland',
       'Zip'                   => 'PLZ',
       'Country'               => 'Land',

       'ResetPasswd'           => 'Zur�cksetzen des Passwortes',
       'File'                  => 'Datei',
       'AlreadyOnCalendar'     => 'Die folgenden Eintr�ge befinden sich schon in Ihrem Kalender. Sie werden ignoriert.',
       'ImportFileTitle'       => 'Aus einer lokalen vCalendar Datei importieren',
       'ImportFileInstruction' => 'Um aus einer lokalen vCalendar-Datei zu importieren, 
                                   geben Sie den kompletten Pfad der Datei ein und klicken auf den Knopf "Speichern". 
                                   Wenn Sie den genauen Pfad nicht kennen, klicken Sie auf "Durchsuchen".',

       # new phrases

       'DetailedWorkingHours'  => 'Einstellungen pro Tag', 
       'SelectAttendee'        => 'Sie k�nnen Kalendernamen, E-Mail-Adressen oder Gruppennamen
                                   benutzen, um Terminteilnehmer einzugeben. 
                                   Kalendernamen k�nnen Sie aus der Liste links ausw�hlen oder sie oben eingeben.
                                   E-Mail-Adressen m�ssen von Hand eingegeben werden. Existierende Gruppen k�nnen Sie aus dem
                                   Auswahlmen� "Gruppen" ausw�hlen oder per Hand eingeben. Verschiedene Eintr�ge m�ssen 
                                   durch Kommata oder Leerzeichen getrennt werden.',

       'MkEditorListInstruction' => 'Um Freunden oder Mitarbeitern den schreibenden Zugriff auf Ihren Kalender zu erlauben, 
                                     w�hlen Sie deren Kalender aus der Liste aus. 
                                     Sie k�nnen die Kalender auch von Hand in das obere Feld eintragen',

       'MkReaderListInstruction' => 'Wenn Ihr Kalender gesch�tzt ist, k�nnen andere Benutzer ihn nicht lesen. 
                                     Sie k�nnen allerdings eine Liste von Benutzern definieren, die Ihren Kalender lesen d�rfen. 
                                     Diese Liste besteht aus Kalendernamen. 
                                     Klicken Sie die gew�nschten Eintr�ge aus der Liste an, oder tragen Sie sie von Hand in das 
                                     obere Feld ein.',

       'MkGroupInstruction'=> 'Gruppen k�nnen aus Kalendernamen oder Mailadressen bestehen. 
                               Sie k�nnen Kalendernamen aus der Liste ausw�hlen, 
                               Mailadressen m�ssen direkt in das obere Feld eingetragen werden.',
       'Contacts'	   => 'Kontakte',
       'Tasks'		   => 'Aufgaben',
       'Day'		   => 'Tag',
       'Week'		   => 'Woche',
       'Month'		   => 'Monat',
       'Year'		   => 'Jahr',
       'OffDutyHours'	   => 'Freizeit',
       'AddNewAddress'	   => 'Neue Adresse hinzuf�gen',
       'HeaderColor'	   => 'Farbe Titelleiste',
       'Never'		   => 'Nie',
       'OverlapNotAllowed' => 'Dieser Kalender erlaubt keine �berlappenden Termine. Bitte geben Sie die Zeiten neu ein.',
       'Notes'		   => 'Notizen',
       'PostIt'		   => 'PostIt',   # as in post it notes
       'Title'		   => 'Titel',
       'AddNewNote'	   => 'Neue Notiz',
       
       'InterestedCalendars' => 'Alle Kalender, die Sie evtl. lesen oder bearbeiten.', 
       'CalendarListInstruction' => 'Wenn Sie in der Kalender-Auswahl keine
	                             lange Liste haben wollen, schr�nken Sie sie hier ein. Geben Sie die
	                             Namen der Kalender, die Sie im Eingabefeld sehen wollen, ein oder
	                             markieren Sie sie aus der nebenstehenden Liste. Diese Auswahl wird
	                             �berall dort benutzt, wo diese Kalenderliste auftaucht.',

       'MasterHeadInput'  => 'Im Hauptfenster soll die Kalenderliste dargestellt werden als',
       'TextEntry'	  => 'Text-Eingabefeld',
       'PulldownMenu'     => 'Pulldown-Men�',

       'LockWarning'      => 'Ihr Kalender wurde gerade bearbeitet, als ich Ihre Aktion durchf�hren wollte. 
                              Um keine Daten zu verlieren, wurde die Aktion zur�ckgenommen. 
                              Bitte gehen Sie einen Schritt zur�ck und versuchen es erneut. ',

       'IUpload'	  => 'Bild hochladen', 
       'FUpload'	  => 'Datei hochladen',        
       'IUploadInstruction' => 'Um ein Bild hochzuladen, geben Sie den kompletten Pfad der Bilddatei ein 
                                und klicken Sie auf den Button. Wenn Sie den Pfad nicht auswendig wissen, 
                                klicken Sie auf "Durchsuchen".',
       'IUploadAck'	  => 'Bild erfolgreich hochgeladen. Um das Bild im Termintitel oder in der Beschreibung einzuf�gen, 
                              kopieren Sie die folgende Zeile und f�gen Sie sie in das entsprechende Feld ein. 
                              Bitte beachten Sie, da� das Bild u.U. erst vom Kalenderverwalter gepr�ft werden muss und 
                              entsprechen sp�ter erscheinen kann.',
       'ReviewUI'         => 'Hochgeladene Bilder ansehen',
       'ApproveChecked'   => 'Best�tigen ausgew�hlt',	   
       'RejectChecked'    => 'Ablehnen ausgew�hlt',	 
       'Export2Vcal'      => 'Kalender in vCalendar Format exportieren',
       'CreateNewCal'     => 'Neuen Kalender erstellen',
       'UsableImgs'       => 'Bilddateien',
       'UImageInst'       => 'Um das Bild im Titel oder in der Beschreibung einzuf�gen, 
                              kopieren Sie den folgenden Namen (inkl. der \\^o^/) und kopieren Sie ihn 
                              an die entsprechende Stelle im Editor. ',
	'CheckAll'        => 'Alle ausw�hlen',
	'UncheckAll'      => 'Alle abw�hlen',
        'Export2VCard'    => 'Adressbuch ins vCard Format exportieren',
	'ImportVcard'     => 'Adressen vom vCard Format importieren',
        'ImportVCardTitle'  => 'Von einer lokalen vCard-Datei importieren',
        'ImportVcardInstruction' => 'Oder eine vCard kopieren und hier einf�gen und auf den Knopf "Speichern" klicken',
        'ImportVcardFileInstruction'   => 'Um eine vCard-Datei zu importieren, geben Sie den genauen Pfad der Datei an. 
                                           Wenn Sie sich nicht sicher sind, klicken Sie auf "Durchsuchen".',
        'AlreadyInAddressbook' => 'Die folgenden Eintr�ge stehen schon in Ihrem Adressbuch',
	'DpyETimeAs' => 'Zeige Zeiten als',
	'MasterheadTabs' => 'Kopfzeilen',

        'DeferConfirmation'      => 'Verschiebe Best�tigung',
        'Unconfirmed'            => 'unbest�tigt',

	'SendMailUsing'         => 'Sende Mail als', #	html, txt or vcal
         # used as in
         # send mail <> immediately or <> <hours> before event
        'Sendmail'              => 'Sende Mail',
        'immediately'           => 'sofort',
        'or'                    => 'oder',
        'beforeEvent',          => 'vor dem Ereignis',
        'Cancelled'             => 'Abgebrochen',

        'AddNewEntry'            => 'Neuen Eintrag hinzuf�gen',
        'SearchNotes'            => 'Suche in den Notizen ',
        'SearchAddress'          => 'Suche im Adressbuch',

	'Week_begins_on' => 'Wochenbeginn am',
	'StartDate'      => 'Startdatum',
	'DueDate'        => 'Datum der F�lligkeit',
	'DueTime'        => 'Uhrzeit der F�lligkeit',
	'Overdue'        => '�berf�llig',
	'EventDates'     => 'Termindaten',

	'SpecialEvents'		=> 'Spezial-Termin',
	'RemindForwardNewTask'  => 'Im Voraus Erinnern f�r neue Aufgaben einschalten',
	'DispCompletedTasks'    => 'Abgeschlossene Aufgaben im Kalender anzeigen',
	'TaskOptions'		=> 'Aufgaben-Optionen',
        'DoneOn'		=> 'Erledigt am  %s von %s', # used to display completed tasks, like 'Done on 03/19/2002', 

        'DetailedView'		=> 'Detailliert',
        'CombinedView'		=> 'Kombiniert',
        'BannerView'		=> 'Banner Ansicht',
	'TooltipDelay'		=> 'Verz�gerung f�r Anzeige der Hilfsfenster in Millisekunden',	
	'DayViewOptions'        => 'Optionen f�r Tagesansicht',
	'More'			=> 'Mehr',

	'G_A_Notes'		=> 'Zugang zu Notizen erlauben f�r',
	'G_A_Address'		=> 'Zugang zum Adressbuch erlauben f�r',	  
	'G_A_Diary'		=> 'Zugang zum Tagebuch erlauben f�r',
	'OwnerOnly'		=> 'Nur Eigent�mer',
	'Everyone'		=> 'Alle',

        'DpyAuthorName'         => 'Zeige Autoren-Namen an mit', # real name, calendar name or both
        'RealName'              => 'Name',
        'CalendarName'          => 'Kalendername',
        'Rname_Cname'           => 'Name und Kalendername',

	'DescriptiveName'	=> 'Kurzer beschreibender Name',
        'OwnerName'             => 'Name des Eigent�mers',
        'OwnerEmailAddress'     => 'E-mail Adresse',
        'OwnerHomepage'         => 'Homepage',

	'Label'			=> 'Label',
	'PredefineColorPairs'	=> 'Definiere Farbpaare f�r', 


	#========= The 16 common colors used on the web==================
	'Black'  => 'Schwarz'  ,  #      #000000,  
	'Silver' => 'Silber' ,	  #      #C0C0C0,
	'Gray'   => 'Grau'   ,	  #      #808080,
	'White'  => 'Weiss'  ,	  #      #FFFFFF,
	'Maroon' => 'Braun' ,	  #      #800000,
	'Red'    => 'Rot'    ,	  #      #FF0000,
	'Purple' => 'Purpur' ,	  #      #800080,
	'Fuchsia'=> 'Lila',	  #      #FF00FF,
	'Green'  => 'Gr�n'  ,	  #      #008000,
	'Lime'   => 'Limonengr�n',#      #00FF00,
	'Olive'  => 'Olivgr�n'  , #      #808000,
	'Yellow' => 'Gelb' ,	  #      #FFFF00,
	'Navy'   => 'Marinblau',  #      #000080,
	'Blue'   => 'Blau'   ,	  #      #0000FF,
	'Teal'   => 'Petrolgr�n', #      #008080,
	'Aqua'   => 'Gr�nblau',   #      #00FFFF,
	#=================================================================

	'Font'             => 'Schriftart',
	'DefineFonts'      => 'Schriftarten-Styles definieren',
	'FontsStyles'      => 'Schriftarten-Styles',

	'DependentCals'	   => 'Uebergeordnete Kalender',
	'DepCalInstruction' => 'Liste aller Kalender, von denen dieser Kalender abh�ngt. Eintr�ge
                                aus diesen Kalendern werden automatisch �bernommen',

     'ListAuthors'	 => 'Erlaube Eintr�ge von',
     'AuthorInstruction' => 'Wenn kein Kalender ausgew�hlt ist, darf jedermann Gruppentermine in Ihren Kalender eintragen.
                             Sie k�nnen dieses Recht einschr�nken, indem Sie auf der Liste Kalender
                             ausw�hlen, die Gruppentermine eintragen d�rfen. 
                             Wenn Sie keine Gruppentermine akzeptieren wollen, w�hlen Sie
                             nur Ihren eigenen Kalender aus.',
   'EventInterval'	    => 'Uebliche Besprechnungsdauer',
   'PublicOpen'             => 'Oeffentlich, offen',
   'PublicModerated'        => 'Oeffentlich, moderiert',

   'Pending'		    => 'Offen',
   'Mail2Author'	    => 'Mail an Autor',

   'ClearCache'             => 'Cache l�schen',
   'color2'		    => 'Zweite Hintergrundsfarbe in Monatsansicht',

   'semails'		    => 'W�hle Eingeladene aus dem Adressbuch', 
   'addinvitee'		    => 'F�ge die Auswahl zur Liste der Eingeladenen hinzu', 

   'Select'		    => 'W�hle',
   'IgnoreCCal'		    => 'Ignoriere den Firmenkalender',
   'ResrcCal'		    => 'Reserviert dieser Kalender eine Resource?',
   'AllowAP'                => 'Falls dies ein �ffentlicher Kalender ist, wollen Sie anonyme Beitr�ge erlauben?',

   # new in 2.8.6 since 2.8.3 - pe
   'orIndefinitely'     => 'oder beliebig oft', # used as in: occurs daily for 5 times or indefinitely
   'remindOnce'		=> 'Falls sich das Ereignis wiederholt, nur an das erste erinnern?',
   'applyReminders'     => 'Die Standarderinnerungen verwenden?',

   'NotifyAP'           => 'Falls dies ein moderierter �ffentlicher Kalender ist, 
                            soll der Eigent�mer bei neuen Beitr�gen ein Mail erhalten?',
   'Preferences'        => 'Einstellungen',   
   'Appearance'         => 'Erscheinung',
   'TabColor'           => 'Feld Hintergrund',
   'TabHColor'          => 'Feld mit Cursor',  
   'StyleSheet'		=> 'Style Sheet',
   'OrTimeOffset'	=> 'Oder geben Sie die Zeitdifferenz zwischen Lokalzeit und Serverzeit an (+-HH:MM)', 
   'ServerTime'		=> 'Datum und Zeit auf dem Server',
   'catfilter'		=> 'Soll der Kategorien-Filter eingeschaltet werden?',
   'popdetail'		=> 'Sollen Details in einem Popup-Fenster angezeigt werden?',
   'WeekViewOptions'    => 'Einstellungen Wochenansicht',
   'orUntilDate'	=> 'oder bis am',

   'Freebusytable'	=> 'Konflikt�bersicht',
   'VirtualGroup'	=> 'Virtuelle Kalender-Gruppe',
   'wcf'		=> 'Es gilt, was zuerst erreicht ist',
   'pendmsg'		=> 'Den Autor per E-Mail �ber den Entscheid informieren',

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

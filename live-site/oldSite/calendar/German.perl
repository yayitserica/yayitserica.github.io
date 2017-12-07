# 
# German Language Module for webCal / Deutsches Sprachmodul für webCal
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
       'March'                  => 'März',
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
       'Mar'                    => 'Mär',
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
       'Daily'                  => 'Täglich',
       'Weekly'                 => 'Wöchentlich',
       'Every2Weeks'            => 'Alle zwei Wochen',
       'MonthlyByDate'          => 'Monatlich nach Datum',
       'MonthlyByWeekday'       => 'Monatlich nach Wochentag',
       'Yearly'                 => 'Jährlich',
       'MTWThF'                 => 'Mo bis Fr',
       'MWF'                    => 'Mo Mi Fr',
       'TTh'                    => 'Di Do',
       'YearlyByMonthWeekday'   => 'Jährlich nach Wochentag im Monat',
       'EveryOtherDay'          => 'Jeden zweiten Tag',
       'Every3rdDay'            => 'Jeden dritten Tag',
       'Every4thDay'            => 'Jeden vierten Tag',
       'Every5thDay'            => 'Jeden fünften Tag',
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
       'Previous'               => 'Zurück',
       'Today'                  => 'Heute',
       'Next'                   => 'Vorwärts',
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
       'ForPrivateCalendar'     => 'Für private Kalender',
       'OthersSeeTextTime'      => 'Text und Zeit sichtbar',
       'OthersSeeTitle'         => 'Title sichtbar',
       'OthersSeeTimeOnly'      => 'Nur Zeit sichtbar',
       'OthersSeeNothing'       => 'Nichts sichtbar',
       'PublicCalendar'         => 'Oeffentlicher Kalender',
       'Submit'                 => 'Speichern',
       'Cancel'                 => 'Abbrechen',
       'TheName'                => 'Der Name',
       'HasBeenTaken'           => 'wird schon von jemandem benutzt',
       'PasswordMismatch'       => 'Passwörter sind nicht gleich',
       'TryAgain'               => 'versuchen Sie es bitte noch einmal',
       'EmailIncomplete'        => 'Ihre E-Mail-Adresse ist unvollständig',
       'CannotCreateCalendar'   => 'Konnte Ihren Kalender nicht anlegen. Bitte benutzen Sie nur Buchstaben im Anmeldenamen.',
       'CannotWriteInfoFile'    => 'Konnte Info-Datei nicht speichern. Bitte wenden Sie sich an den Web-Administrator.',
       'CannotWriteDataFile'    => 'Konnte Daten-Datei nicht speichern. Bitte wenden Sie sich an den Web-Administrator.',
       'CannotWritePasswordFile'=> 'Konnte Passwort-Datei nicht ändern. Bitte wenden Sie sich an den Web-Administrator.',
       'Congratulations'        => 'Glückwunsch',
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
       'AuthRequired'           => 'Sie müssen sich anmelden, um diesen Kalender zu bearbeiten.',
       'CurrentEvents'          => 'Aktuelle Termine',
       'Time'                   => 'Zeit',
       'What'                   => 'Was',
       'Date'                   => 'Datum',
       'Start'                  => 'Anfang',
       'End'                    => 'Ende',
       'Details'                => 'Details',
       'Colors'                 => 'Farben',
       'Privacy'                => 'Datenschutz',
       'Frequency'              => 'Häufigkeit',
       'Reminders'              => 'Erinnerung',
       'Mail'                   => 'E-Mail',
       'min'                    => 'Min', # abbreviation of minute
       'mins'                   => 'Minuten',
       'hours'                  => 'Stunden',
       'days'                   => 'Tage',
       'weeks'                  => 'Wochen',
       'Occurs'                 => 'Wiederholung',
       'For'                    => 'Für',
       'times'                  => 'mal',
       'Popup'                  => 'Meldungsfenster',
       'Author'                 => 'Autor',
       'Blink'                  => 'Blinken',
       'Chime'                  => 'Klingeln',
       'Insert'                 => 'Speichern',                    # Button!
       'InsertAsNew'            => 'Als neuen Eintrag speichern',  # Button!
       'Modify'                 => 'Ändern',                       # Button!
       'DeleteThisOne'          => 'Diese Wiederholung löschen',   # Button!
       'DeleteAll'              => 'Alle Wiederholungen löschen',  # Button!
       'Delete'                 => 'Löschen',                      # Button!
       'Due'                    => 'Fällig', # as in Due Date
       'TaskDone'               => 'Aufgabe ist erledigt',
       'RemindForward'          => 'Täglich eintragen (bis zur Fälligkeit)',  # ????
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
                                    Deren Kalender werden geändert.',
       'ConflictTable'          => 'Konflikt-Tabelle',
       'Conflict'               => 'Konflikt',
       'Table'                  => 'Tabelle',
       'You'                    => 'Sie',
       'NotAllowedToModify'     => 'dürfen diesen Termin nicht ändern.',
       'NotAllowedToEdit'       => 'dürfen diesen Kalender nicht ändern.',
       'Warning'                => 'Warnung',
       'NoRemindForward'        => 'Kann wiederholte Aufgaben nicht täglich eintragen',
       'Acknowledgement'        => 'Bestätigung',
       'UpdatedOK'              => 'Kalender erfolgreich geändert',
       'BackToCalendar'         => 'Klicken Sie hier, um zu Ihrem Kalender zurückzukehren',
       'OpenFailed'             => 'Konnte Ihren Kalender nicht öffnen',
       'NoCalendar'             => 'Sie haben anscheinend keinen Kalender',
       
       # goto page
       'Goto_Date'              => 'Gehe zu Datum', #title
       'Goto'                   => 'Gehe zu',
       'SelectDate'             => 'Bitte wählen Sie ein Datum',
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
       'ListEditors'            => 'Benutzer, die Ihren Kalender ändern dürfen',
       'Editors'                => 'Liste',
       'Email'                  => 'E-Mail',
       'Default'                => 'Standard',
       'Homepage'               => 'Homepage',
       'Language'               => 'Sprache',
       
       # admin page
       'Administration'         => 'Administration',
       'adminDisabled'          => 'Kalender-Administration ist für öffentliche Kalender nicht möglich.',
       'Change_Password'        => 'Passwort ändern',
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
       'DeleteCalendar'         => 'Lösche meinen Kalender',
       'errorPerm'              => 'Keine Berechtigung',
       'calDeleted'             => 'Ihr Kalender wurde gelöscht',
       'ThankYou4Using'         => 'Danke für die Benutzung',
       'calErased'              => 'Ihr Kalender wurde geleert',
       'eraseFailed'            => 'Konnte Ihren Kalender nicht leeren',
       'cpasswordWrong'         => 'Passwort falsch',
       'ipasserror'             => 'Konnte die Passwort-Datei nicht öffnen, versuchen Sie es bitte noch einmal.',
       'password_changed'       => 'Ihr Passwort wurde geändert',
       'cannot_open'            => 'Konnte nicht öffnen: ',
       'Meeting_group'          => 'Gruppe',
       'updated'                => 'erfolgreich geändert',
       'new_entries'            => 'neue Einträge zu Ihrem Kalender hinzugefügt',
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
       'PleaseSelectACalendar'  => 'Bitte wählen Sie einen Kalender',
       'PleaseEnterCalendarName'=> 'Bitte geben Sie Ihren Anmeldenamen ein',

       #download
       'notAllowedToDownload'   => 'Sie dürfen diesen Kalender nicht herunterladen',
         
       #logout
       'AuthNotRequired'        => 'Für öffentliche Kalender ist keine Anmeldung erforderlich',
       'logoutInstruction'      => 'Am sich abzumelden, klicken Sie auf den Knopf "Abmelden", wenn der Anmelde-Dialog erscheint,<br> 
                                    melden Sie sich als "nobody" an. Ein Passwort wird nicht benötigt.',
       'loginInstruction'       => 'Um sich als anderer Benutzer anzumelden, müssen Sie auf den Knopf "Anmelden" klicken',
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
       'Participants_are_allowed_to' => 'Die Teilnehmer dürfen:',
       'View_only'              => 'Nur Lesen',
       'Edit'                   => 'Editieren',
       'EditAndDelete'          => 'Editieren und Löschen',
       'Updated_calendars'      => 'Die folgenden Kalender sind auch auf dem neusten Stand',
       'NotAllowedToUpdate'     => 'Sie dürfen die folgenden Kalender nicht ändern',
       'invalid_date'           => 'Falsches Datum',
       'Schedule'               => 'Eintragen',            # as in 'schedule an appointment on calendar mzou,   ? not sure kv
       'onCalendar'             => 'Im Kalender',		# ?
       'DeleteForward'          => 'Vorwärtseintragungen löschen',
       'All'                    => 'Alle',

       'SearchSubjectEmpty'	=> 'Suchbegriff darf nicht leer sein',
       'Start_date'             => 'Anfangsdatum',
       'is_after_due_date'      => 'liegt nach Fälligkeitsdatum',
       'Invalidusername'	=> 'Ungültiger Anmeldename',
       'Protected'		=> '==geschützt==',
       'Invalidcalendarname'	=> 'Ungültiger Kalendername',
       'Couldnotfindcalendar' => 'Konnte Kalender nicht finden',
       'Invalidspooldir'      => 'Ungültiges Datenverzeichnis',
       'ListView'             => 'Listenansicht',
       'BlockView'            => 'Blockansicht',

        # address book stuff
       'AddressBook'           => 'Adressbuch',
       'AddressBookEditor'     => 'Adressbuch-Editor',
       'AddressBookUpdated'    => 'Adressbuch geändert',
       'BackToAddressBook'     => 'Klicken Sie hier, um zu Ihrem Adressbuch zurückzukehren',
       'FirstName'             => 'Vorname',
       'LastName'              => 'Nachname',
       'Address'               => 'Adresse',
       'Phone'                 => 'Telefon',
       'Fax'                   => 'Fax',
       'Info'                  => 'Info',
       'Affiliation'           => 'Firma',
        'Where'                => 'Wo',
       'Priority'              => 'Priorität',
       'Diary'                 => 'Tagebuch',
       'DiaryUpdated'          => 'Tagebuch geändert',
       'ReadDiary'             => 'Tagebuch lesen',       
       'From'                  => 'Von',
       'PlainText'             => 'Einfacher Text',
       'Html'                  => 'HTML',
       'SearchDiary'           => 'Im Tagebuch suchen',
       'SearchFor'             => 'Suche nach',
       'NeedAuth2Proceed'      => 'Zum Lesen oder Bearbeiten ist eine Anmeldung erforderlich. 
	   			   Bitte klicken Sie auf den Knopf "Anmelden", um sich anzumelden oder
				   den Kalenderknopf, um zu Ihrem Kalender zurückzukehren.',

       # Priority of ToDo tasks
       'Urgent'                => 'Sehr hoch',
       'High'                  => 'Hoch',
       'Medium'                => 'Normal',
       'Low'                   => 'Niedrig',       

       # find calendar names
       'FindCalNames'          => 'Finde Kalender',

       # overlapping 
       'AllowOverlap'          => 'Ueberschneidungen zulässig',
       'GoBack'                => 'Zurück',  # Button

       'OverlapInstr'          => 'Dieser Eintrag wurde zurückgewiesen, da er sich mit einem oder
				   mehreren Einträgen in Ihrem Kalender überschneidet (siehe
				   Tabelle). Wenn Sie ihn wirklich eintragen wollen, gehen Sie zurück,
				   kreuzen <b>"J"</b> an bei <b>"Ueberschneidungen zulässig"</b>
				   und versuchen es noch einmal.',

       'signup'                 => 'Anmeldung',
       'Invalidpassword'	=> 'Falsches Passwort',
       'olduserInstruction'     => 'Ich habe schon einen Kalender',
       'newuserInstruction'     => 'Ich bin ein neuer Benutzer',

       'PleaseLogin'            => 'Anmeldung erforderlich. Bitte melden Sie sich zuerst an!',
       'NextNew'		=> 'Nächster neuer Eintrag',
       'RememberIDPswd'         => 'Speichere Benutzernamen und Passwort',
       'global'                 => 'Global', # mark global meeting group
       'groupnametaken'         => 'Gruppenname existiert schon. Bitte wählen Sie einen anderen Namen',
       'deleteEventsBefore'     => 'Lösche alle Einträge vor',
       'AutoStart'              => 'Autostart WebCalendar',
       'Readers'                => 'Liste',
       'ListReaders'            => 'Benutzer, die Ihren Kalender lesen dürfen',
       'Print'			=> 'Drucken',
       'mailVcal'		=> 'vCalendar an die Erinnerungsmail anhängen',
       'FriendsEmail'		=> 'E-Mail Adresse',
       'PersonalMessage'	=> 'Eine persönliche Nachricht hinzufügen',
       'Mail2Friend'		=> 'Diesen Eintrag als E-Mail verschicken',
       'MailSentTo'		=> 'Eintrag wurde verschickt an ',

       'Location'               => 'Ort',
       'CalendarFormat'		=> 'Kalenderformat',
       'CalendarFile'		=> 'Kalender-Datei',
       'SetupGreetingC'         => 'Bitte klicken Sie auf den Link zur Optionsseite unten, um Ihre Einstellungen zu vervollständigen',
       'Email2Selected'		=> 'E-Mail an alle ausgewählten Adressen',
       'AddNewEmail'		=> 'Füge eine neue Adresse zu meinem Adressbuch hinzu',
       'ContactP'		=> 'Kontakt Name',
       'ContactE'		=> 'Kontakt E-Mail',
       'DailyReminder'		=> 'Schicke täglich Erinnerung',
       'CompletedTasks'		=> 'Erledigt',
       'PendingTasks'		=> 'Offen',
       'Import2Cal'		=> 'Füge diese Ereignis ein in Kalender',
       'ViewOnly'		=> 'Oder wählen Sie einen anderen Kalender zur Ansicht',
       'newLogin'		=> 'Oder melden Sie sich unter einer anderen Kennung an',
       'QuickAdd'		=> 'Schnelles Hinzufügen',
       'Event'                  => 'Termin',
       'TodoList'               => 'Aufgabenliste',
       'MarkComplete'		=> 'Markiere angekreuzte als erledigt',
       'DeleteChecked'		=> 'Lösche angekreuzte',
       'AddNewTask'             => 'Neue Aufgabe hinzufügen',
       'TaskManager'            => 'Task Manager',
       'WarnInvitee'		=> 'Sind Sie sicher, daß Sie diesen Eintrag den folgenden Kalendern hinzufügen wollen?',
       'creationDisabled'	=> 'Das Einrichten von Kalendern ist auf diesem System gesperrt. Bitten Sie 
                                    Ihren Systemadministrator, Ihnen einen Kalendar einzurichten.',
       'RequestRSVP'            => 'Um Bestätigung bitten',
       'invitationAccepted'     => 'Einladung akzeptiert',
       'invitationDeclined'     => 'Einladung abgelehnt',
       'AttendanceConfirmation' => 'Bestätigung für Treffen',
       'AcceptInvitation'       => 'Bestätige Einladung',
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
       'HeaderFooter'		=> 'Tragen Sie hier den HTML-Code für die Kopf- und Fusszeile in der Listenansicht ein.',
       'MiscInfo'		=> 'Sonstige Info',
       'Description'		=> 'Beschreibung',
       'AllDay'			=> 'Jeden Tag',
       'Tomorrow'		=> 'Morgen',
       'ThisWeek'		=> 'Diese Woche',
       'ThisMonth'		=> 'Dieser Monat',
       'Keyword'		=> 'Schlüsselbegriff',
       'NoEvents'		=> 'Keine Einträge',
       'EditThis'		=> 'Diesen Eintrag editieren',
       'recurFormat'            => 'Erscheint %s %d mal, beginnend am %s.', # used in formating
       'taskDoneFormat'		=> 'Erledigt von %s am %s', # formating 

       'warnModify'	       => 'Sie sind dabei, einen wiederholten Eintrag zu verändern. 
                                   Das Datum (oder Fälligkeitsdatum) entspricht aber nicht dem Originaldatum 
                                   (oder Original-Fälligkeitsdatum). Wenn Sie mit der Aenderung fortfahren, 
                                   wird ein neuer Eintrag erstellt und alle (auch verborgenen) Informationen 
                                   (z.B. Ausnahmen, Meetinginformationen) gehen verloren. Bitte bestätigen Sie.

                                   Das Aendern eines einzelnen Termins eines sich wiederholenden Eintrags ist nicht möglich. 
                                   Man kann aber diesen einen Termin löschen und an dessen Stelle einen neuen generieren. 

                                   Das Originaldatum (bzw. Fälligkeitsdatum) ist ',

       'gEventError'		=> 'Sie haben versucht, einen Termin eines sich wiederholenden Gruppeneintrags zu löschen 
                                    ohne ausreichende Rechte zu haben.
                                    Das ist nicht erlaubt, da der Gruppeneintrag sonst inkonsistent würde.  Sie können jedoch 
                                    alle Einträge des Termins aus Ihrem Kalender löschen, indem Sie auf 
                                    "Alle Wiederholungen löschen" im Event-Editor klicken',

       'City'                  => 'Stadt',
       'State'                 => 'Bundesland',
       'Zip'                   => 'PLZ',
       'Country'               => 'Land',

       'ResetPasswd'           => 'Zurücksetzen des Passwortes',
       'File'                  => 'Datei',
       'AlreadyOnCalendar'     => 'Die folgenden Einträge befinden sich schon in Ihrem Kalender. Sie werden ignoriert.',
       'ImportFileTitle'       => 'Aus einer lokalen vCalendar Datei importieren',
       'ImportFileInstruction' => 'Um aus einer lokalen vCalendar-Datei zu importieren, 
                                   geben Sie den kompletten Pfad der Datei ein und klicken auf den Knopf "Speichern". 
                                   Wenn Sie den genauen Pfad nicht kennen, klicken Sie auf "Durchsuchen".',

       # new phrases

       'DetailedWorkingHours'  => 'Einstellungen pro Tag', 
       'SelectAttendee'        => 'Sie können Kalendernamen, E-Mail-Adressen oder Gruppennamen
                                   benutzen, um Terminteilnehmer einzugeben. 
                                   Kalendernamen können Sie aus der Liste links auswählen oder sie oben eingeben.
                                   E-Mail-Adressen müssen von Hand eingegeben werden. Existierende Gruppen können Sie aus dem
                                   Auswahlmenü "Gruppen" auswählen oder per Hand eingeben. Verschiedene Einträge müssen 
                                   durch Kommata oder Leerzeichen getrennt werden.',

       'MkEditorListInstruction' => 'Um Freunden oder Mitarbeitern den schreibenden Zugriff auf Ihren Kalender zu erlauben, 
                                     wählen Sie deren Kalender aus der Liste aus. 
                                     Sie können die Kalender auch von Hand in das obere Feld eintragen',

       'MkReaderListInstruction' => 'Wenn Ihr Kalender geschützt ist, können andere Benutzer ihn nicht lesen. 
                                     Sie können allerdings eine Liste von Benutzern definieren, die Ihren Kalender lesen dürfen. 
                                     Diese Liste besteht aus Kalendernamen. 
                                     Klicken Sie die gewünschten Einträge aus der Liste an, oder tragen Sie sie von Hand in das 
                                     obere Feld ein.',

       'MkGroupInstruction'=> 'Gruppen können aus Kalendernamen oder Mailadressen bestehen. 
                               Sie können Kalendernamen aus der Liste auswählen, 
                               Mailadressen müssen direkt in das obere Feld eingetragen werden.',
       'Contacts'	   => 'Kontakte',
       'Tasks'		   => 'Aufgaben',
       'Day'		   => 'Tag',
       'Week'		   => 'Woche',
       'Month'		   => 'Monat',
       'Year'		   => 'Jahr',
       'OffDutyHours'	   => 'Freizeit',
       'AddNewAddress'	   => 'Neue Adresse hinzufügen',
       'HeaderColor'	   => 'Farbe Titelleiste',
       'Never'		   => 'Nie',
       'OverlapNotAllowed' => 'Dieser Kalender erlaubt keine überlappenden Termine. Bitte geben Sie die Zeiten neu ein.',
       'Notes'		   => 'Notizen',
       'PostIt'		   => 'PostIt',   # as in post it notes
       'Title'		   => 'Titel',
       'AddNewNote'	   => 'Neue Notiz',
       
       'InterestedCalendars' => 'Alle Kalender, die Sie evtl. lesen oder bearbeiten.', 
       'CalendarListInstruction' => 'Wenn Sie in der Kalender-Auswahl keine
	                             lange Liste haben wollen, schränken Sie sie hier ein. Geben Sie die
	                             Namen der Kalender, die Sie im Eingabefeld sehen wollen, ein oder
	                             markieren Sie sie aus der nebenstehenden Liste. Diese Auswahl wird
	                             überall dort benutzt, wo diese Kalenderliste auftaucht.',

       'MasterHeadInput'  => 'Im Hauptfenster soll die Kalenderliste dargestellt werden als',
       'TextEntry'	  => 'Text-Eingabefeld',
       'PulldownMenu'     => 'Pulldown-Menü',

       'LockWarning'      => 'Ihr Kalender wurde gerade bearbeitet, als ich Ihre Aktion durchführen wollte. 
                              Um keine Daten zu verlieren, wurde die Aktion zurückgenommen. 
                              Bitte gehen Sie einen Schritt zurück und versuchen es erneut. ',

       'IUpload'	  => 'Bild hochladen', 
       'FUpload'	  => 'Datei hochladen',        
       'IUploadInstruction' => 'Um ein Bild hochzuladen, geben Sie den kompletten Pfad der Bilddatei ein 
                                und klicken Sie auf den Button. Wenn Sie den Pfad nicht auswendig wissen, 
                                klicken Sie auf "Durchsuchen".',
       'IUploadAck'	  => 'Bild erfolgreich hochgeladen. Um das Bild im Termintitel oder in der Beschreibung einzufügen, 
                              kopieren Sie die folgende Zeile und fügen Sie sie in das entsprechende Feld ein. 
                              Bitte beachten Sie, daß das Bild u.U. erst vom Kalenderverwalter geprüft werden muss und 
                              entsprechen später erscheinen kann.',
       'ReviewUI'         => 'Hochgeladene Bilder ansehen',
       'ApproveChecked'   => 'Bestätigen ausgewählt',	   
       'RejectChecked'    => 'Ablehnen ausgewählt',	 
       'Export2Vcal'      => 'Kalender in vCalendar Format exportieren',
       'CreateNewCal'     => 'Neuen Kalender erstellen',
       'UsableImgs'       => 'Bilddateien',
       'UImageInst'       => 'Um das Bild im Titel oder in der Beschreibung einzufügen, 
                              kopieren Sie den folgenden Namen (inkl. der \\^o^/) und kopieren Sie ihn 
                              an die entsprechende Stelle im Editor. ',
	'CheckAll'        => 'Alle auswählen',
	'UncheckAll'      => 'Alle abwählen',
        'Export2VCard'    => 'Adressbuch ins vCard Format exportieren',
	'ImportVcard'     => 'Adressen vom vCard Format importieren',
        'ImportVCardTitle'  => 'Von einer lokalen vCard-Datei importieren',
        'ImportVcardInstruction' => 'Oder eine vCard kopieren und hier einfügen und auf den Knopf "Speichern" klicken',
        'ImportVcardFileInstruction'   => 'Um eine vCard-Datei zu importieren, geben Sie den genauen Pfad der Datei an. 
                                           Wenn Sie sich nicht sicher sind, klicken Sie auf "Durchsuchen".',
        'AlreadyInAddressbook' => 'Die folgenden Einträge stehen schon in Ihrem Adressbuch',
	'DpyETimeAs' => 'Zeige Zeiten als',
	'MasterheadTabs' => 'Kopfzeilen',

        'DeferConfirmation'      => 'Verschiebe Bestätigung',
        'Unconfirmed'            => 'unbestätigt',

	'SendMailUsing'         => 'Sende Mail als', #	html, txt or vcal
         # used as in
         # send mail <> immediately or <> <hours> before event
        'Sendmail'              => 'Sende Mail',
        'immediately'           => 'sofort',
        'or'                    => 'oder',
        'beforeEvent',          => 'vor dem Ereignis',
        'Cancelled'             => 'Abgebrochen',

        'AddNewEntry'            => 'Neuen Eintrag hinzufügen',
        'SearchNotes'            => 'Suche in den Notizen ',
        'SearchAddress'          => 'Suche im Adressbuch',

	'Week_begins_on' => 'Wochenbeginn am',
	'StartDate'      => 'Startdatum',
	'DueDate'        => 'Datum der Fälligkeit',
	'DueTime'        => 'Uhrzeit der Fälligkeit',
	'Overdue'        => 'überfällig',
	'EventDates'     => 'Termindaten',

	'SpecialEvents'		=> 'Spezial-Termin',
	'RemindForwardNewTask'  => 'Im Voraus Erinnern für neue Aufgaben einschalten',
	'DispCompletedTasks'    => 'Abgeschlossene Aufgaben im Kalender anzeigen',
	'TaskOptions'		=> 'Aufgaben-Optionen',
        'DoneOn'		=> 'Erledigt am  %s von %s', # used to display completed tasks, like 'Done on 03/19/2002', 

        'DetailedView'		=> 'Detailliert',
        'CombinedView'		=> 'Kombiniert',
        'BannerView'		=> 'Banner Ansicht',
	'TooltipDelay'		=> 'Verzögerung für Anzeige der Hilfsfenster in Millisekunden',	
	'DayViewOptions'        => 'Optionen für Tagesansicht',
	'More'			=> 'Mehr',

	'G_A_Notes'		=> 'Zugang zu Notizen erlauben für',
	'G_A_Address'		=> 'Zugang zum Adressbuch erlauben für',	  
	'G_A_Diary'		=> 'Zugang zum Tagebuch erlauben für',
	'OwnerOnly'		=> 'Nur Eigentümer',
	'Everyone'		=> 'Alle',

        'DpyAuthorName'         => 'Zeige Autoren-Namen an mit', # real name, calendar name or both
        'RealName'              => 'Name',
        'CalendarName'          => 'Kalendername',
        'Rname_Cname'           => 'Name und Kalendername',

	'DescriptiveName'	=> 'Kurzer beschreibender Name',
        'OwnerName'             => 'Name des Eigentümers',
        'OwnerEmailAddress'     => 'E-mail Adresse',
        'OwnerHomepage'         => 'Homepage',

	'Label'			=> 'Label',
	'PredefineColorPairs'	=> 'Definiere Farbpaare für', 


	#========= The 16 common colors used on the web==================
	'Black'  => 'Schwarz'  ,  #      #000000,  
	'Silver' => 'Silber' ,	  #      #C0C0C0,
	'Gray'   => 'Grau'   ,	  #      #808080,
	'White'  => 'Weiss'  ,	  #      #FFFFFF,
	'Maroon' => 'Braun' ,	  #      #800000,
	'Red'    => 'Rot'    ,	  #      #FF0000,
	'Purple' => 'Purpur' ,	  #      #800080,
	'Fuchsia'=> 'Lila',	  #      #FF00FF,
	'Green'  => 'Grün'  ,	  #      #008000,
	'Lime'   => 'Limonengrün',#      #00FF00,
	'Olive'  => 'Olivgrün'  , #      #808000,
	'Yellow' => 'Gelb' ,	  #      #FFFF00,
	'Navy'   => 'Marinblau',  #      #000080,
	'Blue'   => 'Blau'   ,	  #      #0000FF,
	'Teal'   => 'Petrolgrün', #      #008080,
	'Aqua'   => 'Grünblau',   #      #00FFFF,
	#=================================================================

	'Font'             => 'Schriftart',
	'DefineFonts'      => 'Schriftarten-Styles definieren',
	'FontsStyles'      => 'Schriftarten-Styles',

	'DependentCals'	   => 'Uebergeordnete Kalender',
	'DepCalInstruction' => 'Liste aller Kalender, von denen dieser Kalender abhängt. Einträge
                                aus diesen Kalendern werden automatisch übernommen',

     'ListAuthors'	 => 'Erlaube Einträge von',
     'AuthorInstruction' => 'Wenn kein Kalender ausgewählt ist, darf jedermann Gruppentermine in Ihren Kalender eintragen.
                             Sie können dieses Recht einschränken, indem Sie auf der Liste Kalender
                             auswählen, die Gruppentermine eintragen dürfen. 
                             Wenn Sie keine Gruppentermine akzeptieren wollen, wählen Sie
                             nur Ihren eigenen Kalender aus.',
   'EventInterval'	    => 'Uebliche Besprechnungsdauer',
   'PublicOpen'             => 'Oeffentlich, offen',
   'PublicModerated'        => 'Oeffentlich, moderiert',

   'Pending'		    => 'Offen',
   'Mail2Author'	    => 'Mail an Autor',

   'ClearCache'             => 'Cache löschen',
   'color2'		    => 'Zweite Hintergrundsfarbe in Monatsansicht',

   'semails'		    => 'Wähle Eingeladene aus dem Adressbuch', 
   'addinvitee'		    => 'Füge die Auswahl zur Liste der Eingeladenen hinzu', 

   'Select'		    => 'Wähle',
   'IgnoreCCal'		    => 'Ignoriere den Firmenkalender',
   'ResrcCal'		    => 'Reserviert dieser Kalender eine Resource?',
   'AllowAP'                => 'Falls dies ein öffentlicher Kalender ist, wollen Sie anonyme Beiträge erlauben?',

   # new in 2.8.6 since 2.8.3 - pe
   'orIndefinitely'     => 'oder beliebig oft', # used as in: occurs daily for 5 times or indefinitely
   'remindOnce'		=> 'Falls sich das Ereignis wiederholt, nur an das erste erinnern?',
   'applyReminders'     => 'Die Standarderinnerungen verwenden?',

   'NotifyAP'           => 'Falls dies ein moderierter öffentlicher Kalender ist, 
                            soll der Eigentümer bei neuen Beiträgen ein Mail erhalten?',
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

   'Freebusytable'	=> 'Konfliktübersicht',
   'VirtualGroup'	=> 'Virtuelle Kalender-Gruppe',
   'wcf'		=> 'Es gilt, was zuerst erreicht ist',
   'pendmsg'		=> 'Den Autor per E-Mail über den Entscheid informieren',

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

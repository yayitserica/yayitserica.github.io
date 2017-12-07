# 
# This is the list of phrases or words used in the UI.
# Dutch.pl - vertalingen naar het Nederlands
# Rob Janssen - r.janssen@uw-werk.nl
# met kleine toevoegingen van
# Ernst Jan Vesseur - e.j.r.vesseur@infi.nl
#
# $Header: /home/cvs/webCal/webCal2/Dutch.perl,v 1.98 2004/10/20 23:35:56 mzou Exp $
#


%::phr= (
       # specify character encoding.
       'CHARSET'		=> 'ISO-8859-1',

       'Calendar'               => 'Agenda',
       
       # Name of weekdays
       'Sunday'                 => 'zondag',
       'Monday'                 => 'maandag',
       'Tuesday'                => 'dinsdag',
       'Wednesday'              => 'woensdag',
       'Thursday'               => 'donderdag',
       'Friday'                 => 'vrijdag',
       'Saturday'               => 'zaterdag',
       # Name of weekdays, abbreviation
       'Sun'                    => 'zon',
       'Mon'                    => 'maa',
       'Tue'                    => 'din',
       'Wed'                    => 'woe',
       'Thu'                    => 'don',
       'Fri'                    => 'vri',
       'Sat'                    => 'zat',
       # Name of weekdays, abbreviated even more
       'Su'                     => 'zo',
       'Mo'                     => 'ma',
       'Tu'                     => 'di',
       'We'                     => 'wo',
       'Th'                     => 'do',
       'Fr'                     => 'vr',
       'Sa'                     => 'za',
       
       # Month Names  
       'January'                => 'januari', 
       'February'               => 'februari',
       'March'                  => 'maart',   
       'April'                  => 'april',   
       'May_'                   => 'mei',     
       'June'                   => 'juni',    
       'July'                   => 'juli',    
       'August'                 => 'augustus',
       'September'              => 'september',
       'October'                => 'oktober',
       'November'               => 'november',
       'December'               => 'december',
       # Month Names, abbreviation
       'Jan'                    => 'jan',
       'Feb'                    => 'feb',
       'Mar'                    => 'mrt',
       'Apr'                    => 'apr',
       'May'                    => 'mei',
       'Jun'                    => 'jun',
       'Jul'                    => 'jul',
       'Aug'                    => 'aug',
       'Sep'                    => 'sep',
       'Oct'                    => 'okt',
       'Nov'                    => 'nov',
       'Dec'                    => 'dec',

       # repeating rules 
       'OneTime'                => 'Eenmalig',
       'Daily'                  => 'Dagelijks',
       'Weekly'                 => 'Wekelijks',
       'Every2Weeks'            => 'Iedere 2 weken',
       'MonthlyByDate'          => 'Maandelijks op datum',
       'MonthlyByWeekday'       => 'Maandelijks op weekdag',
       'Yearly'                 => 'Jaarlijks',
       'MTWThF'                 => 'Ma t/m Vr',
       'MWF'                    => 'Ma Wo Vr',
       'TTh'                    => 'Di Do',
       'YearlyByMonthWeekday'   => 'Jaarlijks per maand weekdag',
       'EveryOtherDay'          => 'Om de dag',
       'Every3rdDay'            => 'Om de 3 dagen',
       'Every4thDay'            => 'Om de 4 dagen',
       'Every5thDay'            => 'Om de 5 dagen',
       'Every6thDay'            => 'Om de 6 dagen',

       # event types
       'Appointment'            => 'Afspraak',
       'Todo'                   => 'Taak',
       'Meeting'                => 'Vergadering',
       'Special'                => 'Speciaal',

       # option button names
       'CalendarOptions'        => 'Agenda instellingen',
       'Compare'                => 'Vergelijk',
       'Search'                 => 'Zoek',
       'GotoDate'               => 'NaarDatum',
       'Previous'               => 'Vorige',
       'Today'                  => 'Vandaag',
       'Next'                   => 'Volgende',
       'Options'                => 'Instellingen',
       'Admin'                  => 'Administratie',
       'Logout'                 => 'Uitloggen',
       'DayView'                => 'Dag',
       'WeekView'               => 'Week',
       'MonthView'              => 'Maand',
       'YearView'               => 'Jaar',
       
       
       # messages on the setup screen
       'SetupYourCalendar'      => 'Maak een agenda',
       'YourCalendarName'       => 'Naam van de agenda',
       'YourEmailAddress'       => 'Uw e-mail adres',
       'YourName'               => 'Uw naam',
       'Password'               => 'Wachtwoord',
       'RetypePassword'         => 'Wachtwoord nogmaals',
       'CalendarType'           => 'Soort agenda',
       'Public'                 => 'Publiek',
       'Private'                => 'Privé',
       'ForPrivateCalendar'     => 'voor privé agenda',
       'OthersSeeTextTime'      => 'Anderen zien tekst en tijd',
       'OthersSeeTitle'         => 'Anderen zien titel',
       'OthersSeeTimeOnly'      => 'Anderen zien alleen tijd',
       'OthersSeeNothing'       => 'Anderen zien niets',
       'PublicCalendar'         => 'Publieke agenda',
       'Submit'                 => 'OK',
       'Cancel'                 => 'Afbreken',
       'TheName'                => 'De naam',
       'HasBeenTaken'           => 'is al in gebruik',
       'PasswordMismatch'       => 'wachtwoorden verschillend',
       'TryAgain'               => 'probeer het nog eens',
       'EmailIncomplete'        => 'Uw e-mail adres is niet compleet',
       'CannotCreateCalendar'   => 'Kan geen agenda met deze naam maken',
       'CannotWriteInfoFile'    => 'Kan het info bestand niet schrijven',
       'CannotWriteDataFile'    => 'Kan het data bestand niet schrijven',
       'CannotWritePasswordFile'=> 'Kan het wachtwoord niet opslaan',
       'Congratulations'        => 'Gefeliciteerd',
       'SetupGreetingA'         => 'Uw agenda is aangemaakt.  Maak eventueel een bladwijzer naar',
       'SetupGreetingB'         => 'Onthoud A.U.B. uw wachtwoord, u heeft het nodig om de agenda te benaderen',
       'HaveToSupplyCalendarName' => 'U moet een naam voor de agenda opgeven',
       'PleaseDoNotUseYourUnixAccountPassword' => 'Gebruik A.U.B. niet uw inlogwachtwoord',
       
       
       # Event Editor Messages
       'EventEditor'            => 'Gebeurtenis bewerken',
       'AppointmentEditor'      => 'Afspraak bewerken',
       'ToDoEditor'             => 'Taak bewerken',
       'MeetingEditor'          => 'Vergadering bewerken',
       'SpecialEditor'          => 'Evenement bewerken',
       'AuthRequired'           => 'Let op!  U moet inloggen om deze agenda te wijzigen',
       'CurrentEvents'          => 'Huidige gebeurtenissen',
       'Time'                   => 'Tijd',
       'What'                   => 'Wat',
       'Date'                   => 'Datum',
       'Start'                  => 'Begin',
       'End'                    => 'Eind',
       'Details'                => 'Details',
       'Colors'                 => 'Kleuren',
       'Privacy'                => 'Privacy',         
       'Frequency'              => 'Frequentie',
       'Reminders'              => 'Herinnering',
       'Mail'                   => 'Mail',
       'min'                    => 'min', # abbreviation of minute
       'mins'                   => 'minuten',
       'hours'                  => 'uren',
       'days'                   => 'dagen',
       'weeks'                  => 'weken',
       'Occurs'                 => 'Herhaling',
       'For'                    => 'Voor',
       'times'                  => 'keer',
       'Popup'                  => 'Popup',
       'Author'                 => 'Auteur',
       'Blink'                  => 'Knipperen',
       'Chime'                  => 'Geluid',
       'Insert'                 => 'Opslaan',
       'InsertAsNew'            => 'Opslaan als nieuw item',
       'Modify'                 => 'Wijzigen',
       'DeleteThisOne'          => 'Verwijder deze herhaling',
       'DeleteAll'              => 'Verwijder alle herhalingen',
       'Delete'                 => 'Verwijderen',
       'Due'                    => 'Gereed', # as in Due Date
       'TaskDone'               => 'Taak is voltooid',
       'RemindForward'          => 'Vooraf melden',
       'Yes'                    => 'Ja',
       'No'                     => 'Nee',
       'Y'                      => 'J', # abbrieviation of Yes
       'N'                      => 'N', # abbrieviation of No
       'ToDo'                   => 'Taak',
       'Participants'           => 'Deelnemers',
       'none'                   => 'geen',
       'MailToAll'              => 'Mail aan alle',
       'FindConflict'           => 'Vind conflict',
       'NoTimeEvent'            => 'Evenement zonder begintijd',
       'Fg'                     => 'Vg',
       'Bg'                     => 'Ag',
       'Error'                  => 'Fout',
       'HasError'               => 'Er is een fout opgetreden',
       'ListParticipants'       => 'Kies vergadergroep en/of agendanamen van deelnemers.  Hun agenda zal worden bijgewerkt',
       'ConflictTable'          => 'Conflicttabel',
       'Conflict'               => 'Conflict',         
       'Table'                  => 'Tabel',         
       'You'                    => 'U',
       'NotAllowedToModify'     => 'mag dit item niet wijzigen',
       'NotAllowedToEdit'       => 'mag deze agenda niet wijzigen',
       'Warning'                => 'Waarschuwing',
       'NoRemindForward'        => 'Kan niet vooraf melden bij herhalende taken',
       'Acknowledgement'        => 'Bevestiging',
       'UpdatedOK'              => 'Agenda is bijgewerkt',
       'BackToCalendar'         => 'Klik hier om terug te gaan naar de agenda',
       'OpenFailed'             => 'Kan uw agenda niet openen',
       'NoCalendar'             => 'Zo te zien heeft u geen agenda',
       
       # goto page
       'Goto_Date'              => 'Naar datum', #title
       'Goto'                   => 'Naar',
       'SelectDate'             => 'Selecteer een datum',
       'View'                   => 'Overzicht',
       'Go'                     => 'OK', # function as submit
       'Set'                    => 'aangepast', # Instellingen aangepast
       
       # set options page
       'My_day_starts_at'       => 'Mijn dag begint om',
       'ends_at'                => 'eindigt om',
       'Interval'               => 'Interval',
       'Week_starts_on',        => 'Week beginnend op',
       'include_weekend',       => 'inclusief weekend',
       'Date_Format'            => 'Datum weergave',
       'Time_Format'            => 'Tijd weergave',
       'Time_zone'              => 'Tijdzone',
       'Default_view'           => 'Standaard overzicht',
       'Default_Reminders'      => 'Standaard herinnering',
       'ListEditors'            => 'Gebruikers die alles in uw agenda mogen wijzigen',
       'Editors'                => 'Wijzigen door',
       'Email'                  => 'E-mail',
       'Default'                => 'Standaard',
       'Homepage'               => 'Homepage',
       'Language'               => 'Taal',
       
       # admin page
       'Administration'         => 'Administratie',
       'adminDisabled'          => 'Administratie van publieke agenda\'s is niet mogelijk',
       'Change_Password'        => 'Verander wachtwoord',
       'Old_Password'           => 'Oud wachtwoord',
       'New_Password'           => 'Nieuw wachtwoord',
       'New_Password_Again'     => 'Nieuw wachtwoord nogmaals',
       'to_be_used_by_meeting_editor' => 'te gebruiken bij bewerken vergadering',
       'Existing_Groups'        => 'Bestaande groepen',
       'Group_Name'             => 'Groepsnaam',
       'ListGroupMembers'       => 'Geef agendanamen van deelnemers',
       'Merge_Calendars'        => 'Samenvoegen agenda\'s',
       'CalendarNames'          => 'Agendanamen',
       'EraseCalendar'          => 'Wis mijn hele agenda',
       'DeleteCalendar'         => 'Verwijder mijn agenda',
       'errorPerm'              => 'Niet toegestaan',
       'calDeleted'             => 'Uw agenda is verwijderd',
       'ThankYou4Using'         => 'Bedankt voor het gebruik van',
       'calErased'              => 'Uw agenda is gewist',
       'eraseFailed'            => 'Kan de agenda niet wissen',
       'cpasswordWrong'         => 'wachtwoord fout',
       'ipasserror'             => 'Kan het wachtwoordbestand niet openen, probeer het een andere keer',
       'password_changed'       => 'Uw wachtwoord is veranderd',
       'cannot_open'            => 'Could not open',
       'Meeting_group'          => 'Vergadergroep',
       'updated'                => 'is aangepast',
       'new_entries'            => 'nieuwe items aan uw agenda toegevoegd',
       'Unknown_command'        => 'Onbekend commando',
       
       
       # search page
       'Search_Calendar'        => 'Zoek in agenda',
       'Topic'                  => 'Onderwerp',
       'SearchAll'              => 'Zoek overal',
       'Search_From'            => 'Zoek van',
       'To'                     => 'tot',
       'Search_Results'         => 'Zoekresultaten',
       'CalendarReminder'       => 'Agenda herinnering',
         
       # Greeting
       'WelcomeToWebCalendar'   => 'Welkom bij de WebAgenda',
       'PleaseSelectACalendar'  => 'Selecteer een agenda',
       'PleaseEnterCalendarName'=> 'Geef uw agendanaam',

       #download
       'notAllowedToDownload'   => 'U mag uw agenda niet downloaden',
         
       #logout
       'AuthNotRequired'        => 'U hoeft niet in te loggen om publieke agenda\'s te bekijken',
       'logoutInstruction'      => 'Klik op "Uitloggen".<br>Log in als "nobody" (zonder wachtwoord) als het aanmeldscherm verschijnt',
       'loginInstruction'       => 'Klik op de "Aanmelden" knop om als iemand anders in te loggen',
       'You_ve_logout'          => 'U bent uitgelogd',
       'access_denied'          => 'toegang geweigerd',
       'login'                  => 'Aanmelden',

       #compare
       'CompareCalendars'       => 'Vergelijk agenda\'s',
       'Enter_calendar_names'   => 'Geef agendanamen',
       'or_meeting_group'       => 'of&nbsp;vergadergroep',
       'EventsTable'            => 'Gebeurtenissen tabel',
       'Name'                   => 'Naam',
       'Events'                 => 'Gebeurtenissen',
       'ForegroundColor'        => 'Voorgrondkleur',
       'BackgroundColor'        => 'Achtergrondkleur',

       # msg in the main
       'accessAnotherCal'       => 'Om een andere agenda te bekijken, A.U.B. ',

       # msg on the color editor
       'Close'                  => 'Sluiten',

       # Some missing phrases and addons ...
       'ShowCombinedCalendar'   => 'Toon gecombineerde agenda',
       'CombinedCalendar'       => 'Gecombineerde agenda',
       'Participants_are_allowed_to' => "Deelnemers mogen deze",
       'View_only'              => 'Alleen bekijken',
       'Edit'                   => 'Wijzigen',
       'EditAndDelete'          => 'Wijzigen en verwijderen',
       'Updated_calendars'      => 'De volgende agenda\'s werden ook bijgewerkt',
       'NotAllowedToUpdate'     => 'U mag de volgende agenda\'s niet bijwerken',
       'invalid_date'           => 'Ongeldige datum',
       'Schedule'               => 'Plannen',            # as in 'schedule an appointment on calendar mzou
       'onCalendar'             => 'in agenda',         #
       'DeleteForward'          => 'Verwijder herhalingen in de toekomst',
       'All'                    => 'Alle',
       'SearchSubjectEmpty'	=> 'Zoekveld mag niet leeg zijn',
       'Start_date'             => 'Begindatum',
       'is_after_due_date'      => 'is na einddatum',
       'Invalidusername'	=> 'Ongeldige gebruikersnaam',
       'Invalidcalendarname'	=> 'Ongeldige agendanaam',
       'Protected'		=> '=onzichtbaar=',



        'Couldnotfindcalendar'   => 'Agenda niet gevonden',
        'Invalidspooldir'        => 'Ongeldige spooldirectory',
        'ListView'               => 'Lijstweergave',
        'BlockView'              => 'Blokweergave',
  
         # address book stuff
        'AddressBook'            => 'Adresboek',
        'AddressBookEditor'      => 'Adresboek bewerken',
        'AddressBookUpdated'     => 'Adresboek bijgewerkt',
        'BackToAddressBook'      => 'Klik hier om terug te gaan naar uw adresboek',
        'FirstName'              => 'Voornaam',
        'LastName'               => 'Achternaam',
        'Address'                => 'Adres',
        'Phone'                  => 'Telefoon',
        'Fax'                    => 'Fax',
        'Info'                   => 'Info',
        'Affiliation'            => 'Relatie',
        'Where'                  => 'Locatie',
        'Priority'              => 'Prioriteit',
        'Diary'                 => 'Dagboek',
        'DiaryUpdated'          => 'Dagboek bijgewerkt',
        'ReadDiary'             => 'Lees dagboek',       
        'From'                  => 'Van',
        'PlainText'             => 'Tekst',
        'Html'                  => 'HTML',


        'SearchDiary'           => 'Zoek in dagboek',
        'SearchFor'             => 'Zoek naar',
        'NeedAuth2Proceed'      => 'Inloggen is noodzakelijk voor deze bewerkin
g. Klik op \'inloggen\' om verder te gaan, of klik op de agenda knop om terug te
 gaan naar uw agenda.',
  
         # Priority of ToDo tasks
         'Urgent'                => 'Urgent',
         'High'                  => 'Hoog',
         'Medium'                => 'Gemiddeld',
         'Low'                   => 'Laag',       

       # find calendar names
        'FindCalNames'           => 'Zoek agenda\'s',
  
         # overlapping 
        'AllowOverlap'           => 'Overlappende gebeurtenissen toestaan',
        'GoBack'                 => 'Ga terug',  #
  
        'OverlapInstr'           => 'Deze afspraak is niet mogelijk vanwege overlap met bestaande gebeurtenissen (zie tabel).
 Als u deze afspraak toch wilt invoegen, klik dan op <b>\'J\'</b> bij <b>\'Overlappende gebeurtenissen toestaan\'</b> en sla de afspraak
 alsnog op.',

       'signup'                 => 'Maak een agenda',
       'Invalidpassword'	=> 'Wachtwoord fout',
       'olduserInstruction'     => 'Ik heb al een agenda',
       'newuserInstruction'     => 'Ik heb nog geen agenda',
       'PleaseLogin'            => 'Geef A.U.B. naam en wachtwoord en klik op "Aanmelden":',
       'NextNew'		=> 'Opslaan + Nog een',
       'RememberIDPswd'         => 'Naam en wachtwoord onthouden',
       'global'                 => 'Gedeeld', # mark global meeting group
       'groupnametaken'         => 'Er bestaat al een vergadergroep met deze naam, kies een andere naam',
       'deleteEventsBefore'     => 'Wis alles voor',
       'AutoStart'              => 'WebAgenda automatisch starten',
       'Readers'                => 'Lezen door',
       'ListReaders'            => 'Gebruikers die alles in uw agenda mogen lezen',
       'Print'			=> 'Afdrukken',
       'mailVcal'		=> 'vCal bijvoegen in mail herinnering',
       'FriendsEmail'		=> 'E-mail adres',
       'PersonalMessage'	=> 'Voeg persoonlijk bericht bij',
       'Mail2Friend'		=> 'Mail deze gebeurtenis naar iemand',
       'MailSentTo'		=> 'Afspraak verzonden naar ',
       'Location'               => 'Locatie',
       # the next line is used in a confirmation popup when a user is modifying 
       # an repeating event. The date displayed is the current date, normally 
       # it is not the initial starting date of the event.
       'CalendarFormat'		=> 'Agendaformat',
       'CalendarFile'		=> 'Agendabestand',
       'SetupGreetingC'         => 'Vul A.U.B. de agenda instellingen pagina in om het aanmaken van Uw agenda te voltooien.',

       'Email2Selected'		=> 'E-mail naar alle geselecteerde adressen',
       'AddNewEmail'		=> 'Voeg toe aan adresboek',
       'ContactP'		=> 'Contactpersoon',
       'ContactE'		=> 'Contact E-mail',
       'DailyReminder'		=> 'Dagelijkse herinneringen sturen',
       'CompletedTasks'		=> 'Voltooide taken',
       'PendingTasks'		=> 'Huidige taken',
       'Import2Cal'		=> 'Deze gebeurtenis invoegen in de agenda van',
       'ViewOnly'		=> 'Of bekijk een agenda',
       'newLogin'		=> 'Of inloggen als een andere gebruiker', 
       'QuickAdd'		=> 'Snel invoegen',
       'Event'                  => 'Gebeurtenis',
       'TodoList'               => 'Takenlijst',
       'MarkComplete'		=> 'Markeer aangevinkte items als voltooid',
       'DeleteChecked'		=> 'Verwijder aangevinkte items',
       'AddNewTask'             => 'Voeg nieuwe taak toe',
       'TaskManager'            => 'Takenlijst',
       'WarnInvitee'		=> 'Weet u zeker dat u deze gebeurtenis in de volgende agenda\'s wilt invoegen?',
       'creationDisabled'	=> 'Sorry u mag geen agenda\'s aanmaken.  Vraag de systeembeheerder dit voor u te doen.',
       'RequestRSVP'            => 'Vraag om bevestiging',
       'invitationAccepted'     => 'Uitnodiging geaccepteerd',
       'invitationDeclined'     => 'Uitnodiging geweigerd',
       'AttendanceConfirmation' => 'Aanwezigheidsbevestiging',
       'AcceptInvitation'       => 'Ik accepteer de uitnodiging',
       'DeclineInvitation'      => 'Ik weiger de uitnodiging',

       'Undecided'              => 'Onbeslist',
       'Category'		=> 'Categorie',
       'Speaker'		=> 'Spreker',
       'Header'			=> 'Koptekst',
       'Footer'			=> 'Voettekst',
       'HeaderFooter'		=> 'HTML koptekst/voettekst om te gebruiken in \'lijstweergave\' (alleen voor experts)',
       'MiscInfo'		=> 'Diversen',
       'Description'		=> 'Omschrijving',
       'AllDay'			=> 'Hele dag',
       'Tomorrow'		=> 'Morgen',
       'ThisWeek'		=> 'Deze week',
       'ThisMonth'		=> 'Deze maand',
       'Keyword'		=> 'Trefwoord',
       'NoEvents'		=> 'Geen gebeurtenis',
       'EditThis'		=> 'Bewerk gebeurtenis',
       'recurFormat'            => 'Herhaalt %s (%d keer), vanaf %s.', # used in formating
       'taskDoneFormat'		=> 'Voltooid door %s op %s om %s', # formating 

       'warnModify'	       => '
U gaat nu een herhalende gebeurtenis modificeren.  De datum die u
gekozen heeft is niet de eerste datum waarop deze gebeurtenis oorspronkelijk
opgeslagen was.  Als u de wijzigingen op deze manier opslaat zal de
gebeurtenis herhalen vanaf de datum die u nu gekozen heeft, en alle
informatie over eerdere data zal verloren gaan.  A.U.B. bevestigen.

Het is niet mogelijk om een enkele herhaling van een herhalende gebeurtenis
te modificeren (bijvoorbeeld het tijdstip van een herhalende vergadering
eenmalig wijzigen).
Als u dit toch wilt, kies dan voor "Verwijder deze herhaling" en voer een
nieuwe (niet-herhalende) gebeurtenis in voor deze datum.

De oorspronkelijke datum van deze gebeurtenis (waar u alle herhalingen
in een keer kunt bewerken) is ',

       'gEventError'		=> 'U probeert een herhaling van een herhalende groeps gebeurtenis te verwijderen
zonder de juiste toegangsrechten op die gebeurtenis.
Dit mag niet omdat u dan de synchronisatie met de agenda\'s van anderen zou
verliezen.  U kunt wel deze hele gebeurtenis uit uw agenda verwijderen,
met de "Verwijder alle herhalingen" knop.',

       'City'                  => 'Stad',
       'State'                 => 'Staat',
       'Zip'                   => 'Postcode',
       'Country'               => 'Land',

       'ResetPasswd'           => 'Zet gebruikerswachtwoord',
       'File'                  => 'Bestand',
       'AlreadyOnCalendar'     => 'De volgende afspraken stonden al in uw agenda.  Ze zijn genegeerd in de vCal file.',
       'ImportFileTitle'         => 'Importeer gegevens uit een vCal bestand',
       'ImportFileInstruction'   => 'Om gegevens uit een vCal bestand in te lezen vult u de naam van het bestand in, of zoekt het bestand op met de <B>Bladeren...</B> knop.',
       'ImportVcal'		=> 'Invoegen gebeurtenis vanuit vCal bestand',
       'ImportVcalInstruction'	=> 'Knip een vCal entry, bijvoorbeeld uit een mail bericht, en plak het in dit venster.  Klik op OK onderaan om deze toe te voegen aan uw agenda.',


       # new phrases

       'DetailedWorkingHours'   => 'Dagelijkse werktijden', 
       'SelectAttendee' => 'Agendanamen, email adressen, vergadergroepen of een combinatie hiervan kunnen worden gebruikt om deelnemers te selecteren.
Agendanamen kunnen worden geselecteerd uit de lijst links (gebruik de Ctrl-toets om er meer dan één te selecteren), of ingetypt in het invoerveld.
Vergadergroepen kunnen worden gekozen uit de vergadergroep lijst hierboven.
Bij het intypen van meerdere namen worden deze gescheiden door spaties of komma\'s.
<br>Als u de namen zelf intypt let dan op dat ze correct gespeld zijn, inclusief hoofd- en kleine letters en leestekens!',

       'MkEditorListInstruction' => 'Selecteer namen uit de lijst om vrienden of collega\'s wijzigingen te laten
aanbrengen in uw agenda.
Gebruik de Ctrl-toets om er meer dan één te selecteren.
<br>U kunt ook de namen zelf intypen in het tekstveld, gescheiden door spaties of komma\'s.  Let dan wel op dat ze correct gespeld zijn, inclusief hoofd- en kleine letters en leestekens!
Wilt U dat <U>iedereen</U> in uw agenda kan schrijven maak de <B>Soort agenda</B> dan \'Publiek\' en laat deze lijst leeg.
<br>Het is <B>niet</B> nodig uw eigen naam hier te selecteren.',

       'MkReaderListInstruction' => 'Als u boven bij <B>Privacy</B> heeft aangegeven dat anderen niet alles in uw
agenda mogen lezen, kunt u hier aangeven welke gebruikers wél alles mogen lezen.
Wilt u dat <U>iedereen</U> alles mag lezen zet dan de <B>Privacy</B> op \'anderen zien tekst en tijd\' en laat deze lijst leeg.
<br>Als u een lijst van personen die uw agenda mogen wijzigen heeft opgegeven, dan
is het <B>niet</B> nodig deze personen hier nogmaals op te geven.
Toestemming om te wijzigen houdt tevens toestemming om te lezen in.  Ook uw eigen naam hoeft u niet op te geven.',

       'MkGroupInstruction'=> 'Kies hier de agendanamen van de leden van de groep.
Gebruik de Ctrl-toets om er meer dan één te selecteren.
<br>U kunt ook de namen zelf intypen in het tekstveld, gescheiden door spaties of komma\'s.  Let dan wel op dat ze correct gespeld zijn, inclusief hoofd- en kleine letters en leestekens!
<br>Staan niet alle gewenste deelnemers in de lijst dan kunt u de lijst eerst uitbreiden door middel van de <B>Agendanamen</B> selectie op het <B>Instellingen</B> scherm.',
       'Contacts'	   => 'Adresboek',
       'Tasks'		   => 'Taken',
       'Day'		   => 'Dag',
       'Week'		   => 'Week',
       'Month'		   => 'Maand',
       'Year'		   => 'Jaar',
       'OffDutyHours'	   => 'Buiten dagelijkse werktijden',
       'AddNewAddress'	   => 'Voeg nieuw adres toe',
       'HeaderColor'	   => 'Kop kleur',
       'Never'		   => 'Nooit',
       'OverlapNotAllowed' => 'Helaas zijn overlappende afspraken niet toegestaan op de volgende agenda\'s.',
       'Notes'		   => 'Notitie',
       'PostIt'		   => 'Post-it',   # as in post it notes
       'Title'		   => 'Titel',
       'AddNewNote'	   => 'Voeg notitie toe',

       'InterestedCalendars' => 'Geef hier de namen van de agenda\'s die u in de keuzelijst wilt zien.', 
       'CalendarListInstruction' => 'Hiermee kunt u de lengte van de keuzelijst beperken als u niet in alle agenda\'s geïnteresseerd bent.  De keuzelijsten in de agenda laten alleen de agenda\'s die u hier geselecteerd hebt zien.  Denk er aan dit bij te werken als er een nieuwe collega op uw afdeling komt.
<BR>Let op dat als u <B>Wijzigen door</B> en <B>Lezen door</B> lijsten heeft opgegeven de genoemde namen ook in deze lijst staan, anders kunnen er verwarrende situaties ontstaan.
<BR>Wilt u alle agendanamen zien, laat deze lijst dan leeg.',

       'MasterHeadInput'  => 'Selecteer agendanaam door middel van',
       'TextEntry'	  => 'Tekst invoer',
       'PulldownMenu'     => 'Keuzelijst',

       'LockWarning'      => 'Uw agenda werd door iemand anders op hetzelfde moment gewijzigd.  In verband met de integriteit van de agenda is uw invoer niet
verwerkt.  Probeer het opnieuw.',

       'IUpload'	  => 'Afbeelding uploaden', 
       'FUpload'	  => 'Bestand uploaden',        
       'IUploadInstruction' => 'Om een afbeelding naar de server te uploaden vult u de naam van het bestand in, of zoekt het bestand op met de <B>Bladeren...</B> knop.',
       'IUploadAck'	  => 'Afbeelding ge-upload.  Knip en plak de naam van de afbeelding
(inclusief de \\^o^/) in de omschrijving om een afbeelding bij een gebeurtenis op te nemen.
Het kan zijn dat de beheerder de afbeeldingen eerst moet goedkeuren voor ze zichtbaar worden.',
       'ReviewUI'	=> 'Controleer ge-uploade afbeeldingen',
       'ApproveChecked' => 'Keur aangevinkte items goed',	   
       'RejectChecked' => 'Keur aangevinkte items af',	 
       'Export2Vcal'   => 'Exporteer agenda in vCal formaat',
       'CreateNewCal'  => 'Maak een nieuwe agenda',
       'UsableImgs'    => 'Beschikbare afbeeldingen',
       'UImageInst'    => 'Knip en plak de naam van de afbeelding
(inclusief de \\^o^/) in de omschrijving om een afbeelding bij een gebeurtenis op te nemen.',

	'CheckAll'     => 'Selecteer alles',
	'UncheckAll'   => 'Deselecteer alles',
        'Export2VCard' => 'Exporteer adresboek in vCard formaat',
	'ImportVcard'  => 'Importeer contact informatie van vCard',
        'ImportVCardTitle'  => 'Importeer gegevens uit een vCard bestand',
        'ImportVcardInstruction' => 'Of knip een vCard entry, bijvoorbeeld uit een mail bericht, en plak het in dit venster.  Klik op OK om deze toe te voegen aan uw adresboek.',
        'ImportVcardFileInstruction'   => 'Om gegevens uit een vCard bestand in te lezen vult u de naam van het bestand in, of zoekt het bestand op met de <B>Bladeren...</B> knop.',
        'AlreadyInAddressbook' => 'De volgende contacten stonden al in uw adresboek.  Ze zijn genegeerd in de vCard file.',
	'DpyETimeAs' => 'Toon afspraak tijd als',
	'MasterheadTabs' => 'Zichtbare tabbladen',
 	'DeferConfirmation'     => 'Ik bevestig later',
	'Unconfirmed'           => 'Onbevestigd',

	'SendMailUsing'         => 'Stuur mail als', #	html, txt or vcal
         # used as in
         # send mail <> immediately or <> <hours> before event
        'Sendmail'              => 'Stuur mail',
        'immediately'           => 'onmiddelijk',
        'or'                    => 'of',
        'beforeEvent',          => 'voor gebeurtenis',
        'Cancelled'             => 'Afgebroken',


        'AddNewEntry'		=> 'Voeg toe in dagboek',
 	'SearchNotes'		=> 'Zoek in notities',
 	'SearchAddress'		=> 'Zoek in adresboek',

	'Week_begins_on'	=> 'Week begint op',
	'StartDate'		=> 'Startdatum',
	'DueDate'		=> 'Gereeddatum',
	'DueTime'		=> 'Gereedtijd',
	'Overdue'		=> 'Te laat',
	'EventDates'		=> 'Data', 

	'SpecialEvents'		=> 'Evenementen',
	'RemindForwardNewTask'  => 'Vooraf melden aanzetten bij nieuwe taken',
	'DispCompletedTasks'    => 'Voltooide taken tonen in de agenda',
	'TaskOptions'		=> 'Taak instellingen',
        'DoneOn'		=> 'Voltooid op %s door %s', # used to display completed tasks, like 'Done on 03/19/2002', 

        'DetailedView'		=> 'Gedetailleerd',
        'CombinedView'		=> 'Gecombineerd',
        'BannerView'		=> 'Gedetailleerd - grotere letters',
	'TooltipDelay'		=> 'Tip-wachttijd in milliseconden',	
	'DayViewOptions'        => 'Dagoverzicht opties',
	'More'			=> 'Meer',

	'G_A_Notes'		=> 'Geef toegang tot notities aan',
	'G_A_Address'		=> 'Geef toegang tot adresboek aan',	  
	'G_A_Diary'		=> 'Geef toegang tot dagboek aan',
	'OwnerOnly'		=> 'Alleen uzelf',
	'Everyone'		=> 'Iedereen',

        'DpyAuthorName'         => 'Toon auteurnaam als', # real name, calendar name or both
        'RealName'              => 'Volledige naam',
        'CalendarName'          => 'Agendanaam',
        'Rname_Cname'           => 'Volledige naam (Agendanaam)',

	'DescriptiveName'	=> 'Korte omschrijving',
        'OwnerName'             => 'Uw naam',
        'OwnerEmailAddress'     => 'Uw e-mail adres',
        'OwnerHomepage'         => 'Uw homepage',

	'Label'			=> 'Themanaam',
	'PredefineColorPairs'	=> 'Definieer kleurthema\'s voor:<BR>', 

	#========= The 16 common colors used on the web==================
	'Black'  => 'Zwart'  ,    #      #000000,  
	'Silver' => 'Zilver' ,	  #      #C0C0C0,
	'Gray'   => 'Grijs'  ,	  #      #808080,
	'White'  => 'Wit'    ,	  #      #FFFFFF,
	'Maroon' => 'Kastanje',	  #      #800000,
	'Red'    => 'Rood'   ,	  #      #FF0000,
	'Purple' => 'Paars'  ,	  #      #800080,
	'Fuchsia'=> 'Fuchsia',	  #      #FF00FF,
	'Green'  => 'Groen'  ,	  #      #008000,
	'Lime'   => 'Limoen' ,	  #      #00FF00,
	'Olive'  => 'Olijf'  ,	  #      #808000,
	'Yellow' => 'Geel'   ,	  #      #FFFF00,
	'Navy'   => 'Marine' ,	  #      #000080,
	'Blue'   => 'Blauw'  ,	  #      #0000FF,
	'Teal'   => 'Cyaan'  ,	  #      #008080,
	'Aqua'   => 'Aqua'   ,	  #      #00FFFF,
	#=================================================================

	'Font'  => 'Stijl',
	'DefineFonts'      => 'Maak stijl',
	'FontsStyles'      => 'Stijlen',

	'DependentCals'	   => 'Afhankelijke agenda\'s',
	'DepCalInstruction' => 'Hier kunt u aangeven dat een agenda afhankelijk is van een andere agenda.  Bijvoorbeeld als een projector vast is opgesteld in
een vergaderzaal, dan kan de projector alleen gereserveerd worden als de
vergaderzaal ook gereserveerd wordt.  In dit voorbeeld kiest u in deze lijst
de betreffende vergaderzaal, waardoor reserveren van de projector automatisch
inhoudt dat de vergaderzaal gereserveerd wordt.',

     'ListAuthors'	=> 'Accepteer vergaderingen van',
     'AuthorInstruction' => 'Standaard kan iedereen vergaderingen in uw agenda plannen.  Als u dat niet wilt, geef dan hier de agendanamen van degenen die vergaderingen in uw agenda mogen plannen.  Wilt u dat <U>niemand</U> vergaderingen kan inplannen selecteer dan alleen uw eigen naam.
<BR>Wilt u dat <U>iedereen</U> vergaderingen in uw agenda kan plannen, laat deze lijst dan leeg.',
   'EventInterval'	 => 'Standaard afspraaklengte',
   'PublicOpen'             => 'Publiek-open',
   'PublicModerated'        => 'Publiek-beheerd',

   'Pending'		    => 'Pending',
   'Mail2Author'	    => 'Mail naar auteur',

   'ClearCache'             => 'Wis cache (niet gevaarlijk)',
   'color2'		    => 'Tweede achtergrondkleur maandweergave',

   'semails'		    => 'Selecteer deelnemers uit adresboek', 
   'addinvitee'		    => 'Voeg selectie toe aan deelnemers', 

   'Select'		    => 'Selecteer',
   'IgnoreCCal'		    => 'Negeer bedrijfsagenda',
   'ResrcCal'		=> 'Is dit een \'resource calendar\'?',
   'AllowAP'            => 'Als dit een publieke agenda is, wilt u dan toestaan dat er anoniem in deze agenda gepland kan worden?',
   'orIndefinitely'     => 'of voor onbepaalde tijd', # used as in: occurs daily for 5 times or indefinitely
   'remindOnce'		=> 'Als deze afspraak herhaald wordt, waarschuw alleen de eerste keer.',
   'applyReminders'     => 'Wilt u de standaard waarschuwing voor deze afspraak gebruiken?',

   'NotifyAP'           => 'Als dit een publieke agenda is, moet dan de eigenaar gemaild worden bij nieuwe afspraken?',
   'Preferences'        => 'Voorkeuren',   
   'Appearance'         => 'Uiterlijk',
   'TabColor'           => 'Tab achtergrondkleur',
   'TabHColor'          => 'Tab hover ',  
   'StyleSheet'		=> 'Style Sheet',
   'OrTimeOffset'	=> 'of geef het verschil tussen lokale en servertijd (+-HH:MM)', 
   'ServerTime'		=> 'De huidige server datum-tijd is',
   'catfilter'		=> 'Wilt u het categorie filter gebruiken?',
   'popdetail'		=> 'Wilt u afspraak details in een popup windowtje weergeven?',
   'WeekViewOptions'    => 'Week Overzicht Opties',
   'orUntilDate'	=> 'of tot datum',

   'Freebusytable'	=> 'Beschikbaarheidstabel',
   'VirtualGroup'	=> 'Virtuele Agenda Groep',
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


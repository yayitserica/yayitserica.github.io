# 
# This is the list of phrases or words used in the UI.
# To port webCal to another language, translate
# this list should be suffice.
#
# $Header: /home/cvs/webCal/webCal2/Finnish.perl,v 1.32 2004/10/20 23:35:56 mzou Exp $
#


%::phr=(
       # specify character encoding.
       'CHARSET'		=> 'ISO-8859-1',

       'Calendar'               => 'Kalenteri',
       
       # Name of weekdays
       'Sunday'                 => 'Sunnuntai',
       'Monday'                 => 'Maanantai',
       'Tuesday'                => 'Tiistai',
       'Wednesday'              => 'Keskiviikko',
       'Thursday'               => 'Torstai',
       'Friday'                 => 'Perjantai',
       'Saturday'               => 'Lauantai',
       # Name of weekdays, abbreviation
       'Sun'                    => 'Sun',
       'Mon'                    => 'Maa',
       'Tue'                    => 'Tii',
       'Wed'                    => 'Kes',
       'Thu'                    => 'Tor',
       'Fri'                    => 'Per',
       'Sat'                    => 'Lau',
       # Name of weekdays, abbreviated even more
       'Su'                     => 'Su',
       'Mo'                     => 'Ma',
       'Tu'                     => 'Ti',
       'We'                     => 'Ke',
       'Th'                     => 'To',
       'Fr'                     => 'Pe',
       'Sa'                     => 'La',
       
       # Month Names  
       'January'                => 'Tammikuu', 
       'February'               => 'Helmikuu',
       'March'                  => 'Maaliskuu',   
       'April'                  => 'Huhtikuu',   
       'May_'                   => 'Toukokuu',     #! the full month of May, to distingsh with the abbreviation
       'June'                   => 'Kes�kuu',    
       'July'                   => 'Hein�kuu',    
       'August'                 => 'Elokuu',
       'September'              => 'Syyskuu',
       'October'                => 'Lokakuu',
       'November'               => 'Marraskuu',
       'December'               => 'Joulukuu',
       # Month Names, abbreviation
       'Jan'                    => 'Tammi',
       'Feb'                    => 'Helmi',
       'Mar'                    => 'Maalis',
       'Apr'                    => 'Huhti',
       'May'                    => 'Touko',
       'Jun'                    => 'Kes�',
       'Jul'                    => 'Hein�',
       'Aug'                    => 'Elo',
       'Sep'                    => 'Syys',
       'Oct'                    => 'Loka',
       'Nov'                    => 'Marras',
       'Dec'                    => 'Joulu',

       # repeating rules 
       'OneTime'                => 'Kerran',                   # one time event
       'Daily'                  => 'P�ivitt�in',                      
       'Weekly'                 => 'Viikoittain',
       'Every2Weeks'            => 'Joka toinen viikko',
       'MonthlyByDate'          => 'Kuukausittain p�iv�m��r�n mukaan',
       'MonthlyByWeekday'       => 'Kuukausittain viikonp�iv�n mukaan',         # e.g. the 3rd Friday of every month
       'Yearly'                 => 'Vuosittain',
       'MTWThF'                 => 'Maanantaista perjantaihin',
       'MWF'                    => 'Ma,ke,pe',
       'TTh'                    => 'Ti,to',
       'YearlyByMonthWeekday'   => 'Vuosittain kk:n ens. viikonpv',    # e.g. the first Monday of June, yearly
       'EveryOtherDay'          => 'Joka toinen p�iv�',
       'Every3rdDay'            => 'Joka kolmas p�iv�',
       'Every4thDay'            => 'Joka nelj�s p�iv�',
       'Every5thDay'            => 'Joka viides p�iv�',
       'Every6thDay'            => 'Joka kuudes p�iv�',

       # event types
       'Appointment'            => 'Tapaaminen',
       'Todo'                   => 'Teht�v�',
       'Meeting'                => 'Kokous',
       'Special'                => 'Erikois',            # for holidays, event require no specific time

       # option button names
       'CalendarOptions'        => 'Kalenterin asetukset',   # title of the options page
       'Compare'                => 'Vertaa',            # Button: compare calendars and find conflicts ...
       'Search'                 => 'Etsi',             # Button:
       'GotoDate'               => 'Siirry p�iv��n',           # Button:
       'Previous'               => 'Edellinen',           # previous Month/Day/Week 
       'Today'                  => 'T�n��n',              # This Month/Day/Week 
       'Next'                   => 'Seuraava',               # next Month/Day/Week 
       'Options'                => 'Asetukset',            # Button: go to options page 
       'Admin'                  => 'Hallinta',              # Button: go to admin page
       'Logout'                 => 'Kirjaudu ulos',             # Button: go to logout page
       'DayView'                => 'P�iv�n�kym�',           # Alt name under the image buttons
       'WeekView'               => 'Viikkon�kym�',
       'MonthView'              => 'Kuukausin�kym�',
       'YearView'               => 'Vuosin�kym�',
       
       
       # messages on the setup screen
       'SetupYourCalendar'      => 'S��d� kalenterisi', # title
       'YourCalendarName'       => 'Kalenterisi nimi',
       'YourEmailAddress'       => 'S�hk�postiosoitteesi',
       'YourName'               => 'Nimesi',
       'Password'               => 'Salasana',
       'RetypePassword'         => 'Salasana (uudelleen)',
       'CalendarType'           => 'Kalenterin tyyppi',
       'Public'                 => 'Julkinen',
       'Private'                => 'Yksityinen',
       'ForPrivateCalendar'     => 'Yksityiselle kalenterille',
       'OthersSeeTextTime'      => 'Muut n�kev�t tekstit ja ajat',
       'OthersSeeTitle'         => 'Others See Event Title',
       'OthersSeeTimeOnly'      => 'Muut n�kev�t vain ajat',
       'OthersSeeNothing'       => 'Muut eiv�t n�e mit��n',
       'PublicCalendar'         => 'Julkinen kalenteri',
       'Submit'                 => 'V�lit�',
       'Cancel'                 => 'Peruuta',
       'TheName'                => 'Nimi',
       'HasBeenTaken'           => 'On jo k�ytetty',
       'PasswordMismatch'       => 'Virheellinen salasana',
       'TryAgain'               => 'Yrit� uudelleen',
       'EmailIncomplete'        => 'S�hk�postiosoite on puutteellinen',
       'CannotCreateCalendar'   => 'Ei voi luoda kalenteria! tarkista kalenterin nimi',
       'CannotWriteInfoFile'    => 'Ei voi kirjoittaa info-tiedostoon',
       'CannotWriteDataFile'    => 'Ei voi kirjoittaa data-tiedostoon',
       'CannotWritePasswordFile'=> 'Ei voi muokata salasana-tiedostoa',
       'Congratulations'        => 'Onneksi olkoon!',
       'SetupGreetingA'         => 'Kalenterisi on nyt s��detty. muista lis�t� kalenteri suosikkeihin',
       'SetupGreetingB'         => 'Muista salasanasi! tarvitset sit�, jotta p��set k�siksi kalenteriisi.',
       'HaveToSupplyCalendarName' => 'Sinun on annettava kalenterisi nimi',
       'PleaseDoNotUseYourUnixAccountPassword' => '�l� k�yt� windows-salasanaasi',
       
       
       # Event Editor Messages
       'EventEditor'            => 'Tapahtuma-muokkain',
       'AppointmentEditor'      => 'Tapaamis-muokkain',
       'ToDoEditor'             => 'Teht�v�-muokkain',
       'MeetingEditor'          => 'Kokous-muokkain',
       'SpecialEditor'          => 'Erikois_tapahtuma-muokkain',
       'AuthRequired'           => 'Huomaa, ett� sinun tarvitsee tunnistautua, jotta voit muokata t�t� kalenteria',
       'CurrentEvents'          => 'Ajankohtaiset tapahtumat',
       'Time'                   => 'Aika',
       'What'                   => 'Mit�',
       'Date'                   => 'Pvm',
       'Start'                  => 'Alkaen',
       'End'                    => 'P��ttyen',
       'Details'                => 'Yksityiskohdat',
       'Colors'                 => 'V�rit',
       'Privacy'                => 'Yksityisyys',         
       'Frequency'              => 'Toistotiheys',
       'Reminders'              => 'Muistutukset',
       'Mail'                   => 'S�hk�posti',
       'min'                    => 'Min', # abbreviation of minute
       'mins'                   => 'Min',
       'hours'                  => 'Tuntia',
       'days'                   => 'P�iv��',
       'weeks'                  => 'Viikkoa',
       'Occurs'                 => 'Tapahtuu',
       'For'                    => 'Yht',
       'times'                  => 'Kertaa',   # as in repeat for 10 times 
       'Popup'                  => 'Ponnahdus',
       'Author'                 => 'Asettaja',
       'Blink'                  => 'V�lkkyv�',
       'Chime'                  => '��nimerkki',
       'Insert'                 => 'Lis��',
       'InsertAsNew'            => 'Lis�� uutena',
       'Modify'                 => 'Muokkaa',
       'DeleteThisOne'          => 'Poista t�m� esiintym�',
       'DeleteAll'              => 'Poista kaikki esiintym�t',
       'Delete'                 => 'Poista',
       'Due'                    => 'Voimassa', # as in Due Date
       'TaskDone'               => 'Teht�v� suoritettu',
       'RemindForward'          => 'Muistuta etuk�teen',
       'Yes'                    => 'Kyll�',
       'No'                     => 'Ei',
       'Y'                      => 'K', # abbrieviation of Yes
       'N'                      => 'E', # abbrieviation of No
       'ToDo'                   => 'Teht�v�',
       'Participants'           => 'Osaanottajat',
       'none'                   => 'Ei kukaan',
       'MailToAll'              => 'L�het� postia kaikille',
       'FindConflict'           => 'Etsi konflikti',
       'NoTimeEvent'            => 'Ei ajasta riippuvainen',
       'Fg'                     => 'Etuala',
       'Bg'                     => 'Taka-ala',
       'Error'                  => 'Virhe',
       'HasError'               => 'Pyynt�si k�sittely sai aikaan virheen',
       'ListParticipants'       => 'Sy�t� ty�ryhm�t, kalenterien nimet tai osaanottajien s�hk�postiosoitteet. heid�n kalenterit p�ivitet��n',
       'ConflictTable'          => 'Konflikti taulukossa',
       'Conflict'               => 'Konflikti',         
       'Table'                  => 'Taulukko',         
       'You'                    => 'Sin�',
       'NotAllowedToModify'     => 'Ei ole oikeutta muokata t�t� esiintym��',
       'NotAllowedToEdit'       => 'Ei ole oikeutta muokata t�t� kalenteria',
       'Warning'                => 'Varoitus',
       'NoRemindForward'        => 'Ei voi varoittaa etuk�teen teht�vist�, jotka toistetaan',
       'Acknowledgement'        => 'Vahvistus',
       'UpdatedOK'              => 'Kalenteri p�ivitetty',
       'BackToCalendar'         => 'Paina t�st� palataksesi kalenteriisi',
       'OpenFailed'             => 'Ei voi avata kalenteriasi',
       'NoCalendar'             => 'Sinun kalenteria ei l�ydy levylt�',
       
       # goto page
       'Goto_Date'              => 'Siirry p�iv��n', #title
       'Goto'                   => 'Siirry',
       'SelectDate'             => 'Valitse p�iv�m��r�',
       'View'                   => 'N�yt�',
       'Go'                     => 'Mene', # function as submit
       'Set'                    => 'Aseta', # as in set options
       
       # set options page
       'My_day_starts_at'       => 'P�iv�ni alkaa',
       'ends_at'                => 'P��ttyy',
       'Interval'               => 'Aikav�li',
       'Week_starts_on',        => 'Viikko',
       'include_weekend',       => 'Sis�llyt� viikonloput',
       'Date_Format'            => 'P�iv�n muoto',
       'Time_Format'            => 'Ajan muoto',
       'Time_zone'              => 'Aikavy�hyke',
       'Default_view'           => 'Oletusn�kym�',
       'Default_Reminders'      => 'Oletusmuistutukset',
       'ListEditors'            => 'Valitse henkil�t, joilla on lupa muokata kalenteriasi',
       'Editors'                => 'Muokkaajat',
       'Email'                  => 'S�hk�posti',
       'Default'                => 'Oletus',
       'Homepage'               => 'Kotisivu',
       'Language'               => 'Kieli',
       
       # admin page
       'Administration'         => 'Hallinta',
       'adminDisabled'          => 'Kalenterin hallinta on estetty julkisilta kalentereilta',
       'Change_Password'        => 'Vaihda salasana',
       'Old_Password'           => 'Vanha salasana',
       'New_Password'           => 'Uusi salasana',
       'New_Password_Again'     => 'Uusi salasana (uudelleen)',
       'to_be_used_by_meeting_editor' => 'Ty�ryhm�n muokkaajalle',
       'Existing_Groups'        => 'Olemassaolevat ryhm�t',
       'Group_Name'             => 'Ryhm�n nimi',
       'ListGroupMembers'       => 'Sy�t� kalenterin nimi tai vastaanottajien s�hk�postiosoitteet',
       'Merge_Calendars'        => 'Yhdist� kalenterit',
       'CalendarNames'          => 'Kalenterien nimet',
       'EraseCalendar'          => 'Tyhjenn� kalenteri',
       'DeleteCalendar'         => 'Poista kalenteri',
       'errorPerm'              => 'Ei sallittu',
       'calDeleted'             => 'Kalenteri poistettu',
       'ThankYou4Using'         => 'Kiitos, kun k�yt�t',
       'calErased'              => 'Kalenteri tyhjennetty',
       'eraseFailed'            => 'Ei voi tyhjent�� kalenteria',
       'cpasswordWrong'         => 'Lupavirhe: virheellinen salasana',
       'ipasserror'             => 'Ei voi avata salasana-tiedostoa, yrit� hetken p��st� uudelleen',
       'password_changed'       => 'Salasanasi on vaihdettu',
       'cannot_open'            => 'Ei voi avata',
       'Meeting_group'          => 'Ty�ryhm�',
       'updated'                => 'P�ivitetty',
       'new_entries'            => 'Uudet merkinn�t lis�tty kalenteriin',
       'Unknown_command'        => 'Tuntematon toiminto',
       
       
       # search page
       'Search_Calendar'        => 'Etsi kalenterista',
       'Topic'                  => 'Aihe',
       'SearchAll'              => 'Etsi kaikki',
       'Search_From'            => 'Etsi alkaen',
       'To'                     => 'P��ttyen',
       'Search_Results'         => 'Haun tulokset',
       'CalendarReminder'       => 'Kalenterimuistutus',
         
       # Greeting
       'WelcomeToWebCalendar'   => 'Tervetuloa webkalenteriin',
       'PleaseSelectACalendar'  => 'Valitse kalenteri',
       'PleaseEnterCalendarName'=> 'Sy�t� kalenterisi nimi',

       #download
       'notAllowedToDownload'   => 'Sinulla ei ole oikeutta ladata t�t� kalenteria',
         
       #logout
       'AuthNotRequired'        => 'Huomaa: tunnistautumista ei tarvita julkisten kalenterien selailuun',
       'logoutInstruction'      => 'Kirjautuaksesi ulos, paina kirjaudu_ulos -nappia. kun kirjautumisruutu ilmestyy,<br> k�yt� tunnusta: nobody (ilman salasanaa)',
       'loginInstruction'       => 'Kirjautuaksesi toisella nimell�, paina kirjaudu-nappia',
       'You_ve_logout'          => 'Sinut on kirjattu ulos',
       'access_denied'          => 'P��sy kielletty',
       'login'                  => 'Kirjaudu',

       #compare
       'CompareCalendars'       => 'Vertaa kalentereita',
       'Enter_calendar_names'   => 'Sy�t� kalenterien nimet',
       'or_meeting_group'       => 'Tai ty�ryhm�',
       'EventsTable'            => 'Tapahtumat-taulukko',
       'Name'                   => 'Nimi',
       'Events'                 => 'Tapahtumat',
       'ForegroundColor'        => 'Etualan v�ri',
       'BackgroundColor'        => 'Taustav�ri',

       # msg in the main
       'accessAnotherCal'        => 'K�ytt��ksesi toista kalenteria',

       # Some missing phrases and addons ...
       'Close'                  => 'Sulje',
       'ShowCombinedCalendar'   => 'N�yt� yhdistetty kalenteri',
       'CombinedCalendar'       => 'Yhdistetty kalenteri',
       'Participants_are_allowed_to' => "Participants are allowed to",
       'View_only'              => 'N�yt� vain',
       'Edit'                   => 'Muokkaa',
       'EditAndDelete'          => 'Muokkaa ja poista',
       'Updated_calendars'      => 'My�s seuraavat kalenterit p�ivitettiin',
       'NotAllowedToUpdate'     => 'Sinulla ei ole oikeutta p�ivitt�� seuraavia kalentereita',
       'invalid_date'           => 'Virheellinen p�iv�m��r�',
       'Schedule'               => 'Aikataulu',            # as in 'schedule an appointment on calendar mzou
       'onCalendar'             => 'Kalenterissa',          #
       'DeleteForward'          => 'Poista my�hemm�t esiintym�t',
       'All'                    => 'Kaikki',
       'SearchSubjectEmpty'	=> 'Etsitt�v� otsikko ei voi olla tyhj�',
       'Start_date'             => 'Alkaen',
       'is_after_due_date'      => 'Ei voi olla p��ttyen-pvm:n j�lkeen!',
       'Invalidusername'	=> 'Virheellinen k�ytt�j�nimi',
       'Protected'		=> '==suojattu==',
       'Invalidcalendarname'	=> 'Virheellinen kalenterin nimi',
       'Couldnotfindcalendar' => 'Kalenteria ei l�ydy',
       'Invalidspooldir'      => 'Virheellinen sivuajo-hakemisto',
       'ListView'             => 'Luettelon�kym�',
       'BlockView'            => 'Lohkon�kym�',

       # address book stuff
       'AddressBook'           => 'Osoitekirja',
       'AddressBookEditor'     => 'Osoitekirjan muokkain',
       'AddressBookUpdated'    => 'Osoitekirja p�ivitetty',
       'BackToAddressBook'     => 'Paina t�st� palataksesi osoitekirjaan',
       'FirstName'             => 'Etunimi',
       'LastName'              => 'Sukunimi',
       'Address'               => 'Osoite',
       'Phone'                 => 'Puhelin',
       'Fax'                   => 'Fax',
       'Info'                  => 'Muuta',
       'Affiliation'           => 'Osasto',
       'Where'                 => 'Miss�',
       'Priority'              => 'T�rkeys',
       'Diary'                 => 'P�iv�kirja',
       'DiaryUpdated'          => 'P�iv�kirja p�ivitetty',
       'ReadDiary'             => 'Lue p�iv�kirjaa',       
       'From'                  => 'Alkaen',
       'PlainText'             => 'Pelkk� teksti',
       'Html'                  => 'Html',
       'SearchDiary'           => 'Etsi p�iv�kirjasta',
       'SearchFor'             => 'Etsitt�v�',
       'NeedAuth2Proceed'      => 'Tunnistautuminen vaaditaan, jotta voit selata tai muokata. paina kirjautumisnappia jatkaaksesi, tai paina kalenterinappia palataksesi takaisin omaan kalenteriisi',

       # Priority of ToDo tasks
       'Urgent'                => 'Kiireinen',
       'High'                  => 'Korkea',
       'Medium'                => 'Normaali',
       'Low'                   => 'V�h�inen',       

       # find calendar names
       'FindCalNames'          => 'Etsi kalentereita',

       # overlapping 
       'AllowOverlap'          => 'Salli p��llek�iset tapahtumat',
       'GoBack'                => 'Palaa takaisin',  #

       'OverlapInstr'          => 'T�m� tapahtuma hyl�ttiin, koska kalenterissa on samalla hetkell� jo yksi tai useampia tapahtumia (kts. taulukko). Voit my�s sallia p��llek�iset tapahtumat ja yritt�� uudelleen',

       'signup'                 => 'Luo uusi',
       'Invalidpassword'	=> 'Virheellinen salasana',
       'olduserInstruction'     => 'Minulla on kalenteri tiedostossa',
       'newuserInstruction'     => 'Olen uusi k�ytt�j�',
       'PleaseLogin'            => 'Tunnistautumista vaaditaan! kirjaudu sis��n ensin!',
       'NextNew'		=> 'Seuraava uusi tapahtuma',
       'RememberIDPswd'         => 'Muista k�ytt�j�nimeni ja salasanani, jotta minun ei tarvitse kirjoittaa niit� joka kerta.',
       'global'                 => 'Global', # mark global meeting group
       'groupnametaken'         => 'Valitsemasi ty�ryhm�n nimi on jo k�yt�ss�, ole hyv� ja valitse toinen nimi',
       'deleteEventsBefore'     => 'Poista kaikki p�iv�m��r�� aikaisemmat tapahtumat',
       'AutoStart'              => 'K�ynnist� webkalenteri automaattisesti',
       'Readers'                => 'Lukijat',
       'ListReaders'            => 'Valitse k�ytt�j�t, joilla on oikeus lukea kalenteriasi',
       'Print'			=> 'Tulosta',
       'mailVcal'		=> 'Liit� vcalendar s�hk�postimuistutuksiin',
       'FriendsEmail'		=> 'Yst�v�n s�hk�postiosoite',
       'PersonalMessage'	=> 'Lis�� henkil�kohtainen viesti',
       'Mail2Friend'		=> 'L�het� t�m� tapahtuma s�hk�postina yst�v�lle',
       'MailSentTo'		=> 'Kalenteriesiintym� l�hetettiin:',
       'Location'               => 'Sijainti',
       # the next line is used in a confirmation popup when a user is modifying 
       # an repeating event. The date displayed is the current date, normally 
       # it is not the initial starting date of the event.
       'CalendarFormat'			=> 'Kalenterin muoto',
       'CalendarFile'			=> 'Kalenteri-tiedosto',
       'SetupGreetingC'         => 'Ole hyv� ja tee loput kalenterin s��d�t valitsemalla \'kalenterin asetukset\'',
       'Email2Selected'		=> 'L�het� s�hk�postia kaikkiin valittuihin osoitteisiin',
       'AddNewEmail'		=> 'Lis�� uusi s�hk�postiosoite osoitekirjaani',
       'ContactP'		=> 'Yhteyshenkil�',
       'ContactE'		=> 'Yhteyshenkil�n s�hk�posti',
       'DailyReminder'		=> 'L�het� minun p�ivitt�iset muistutukseni',
       'CompletedTasks'		=> 'Suoritetut teht�v�t',
       'PendingTasks'		=> 'Odottavat teht�v�t',
       'Import2Cal'		=> 'Tuo t�m� tapahtuma kalenteriin',
       'ViewOnly'		=> 'Tai valitse kalenteri, jota selata',
       'newLogin'		=> 'Tai kirjaudu sis��n toisella k�ytt�j�nimell�', 
       'QuickAdd'		=> 'Nopea lis�ys',
       'Event'                  => 'Tapahtuma',
       'TodoList'               => 'Teht�v�luettelo',
       'MarkComplete'		=> 'Merkitse valitut suoritetuiksi',
       'DeleteChecked'		=> 'Poista valitut',
       'AddNewTask'             => 'Lis�� uusi teht�v�',
       'TaskManager'            => 'Teht�vien hallinta',
       'WarnInvitee'		=> 'Oletko varma, ett� haluat lis�t� t�m�n tapahtuman seuraaviin kalentereihin?',
       'creationDisabled'	=> 'Valitettavasti kalenterin asetusten s��t�minen on estetty j�rjestelm�nvalvojan toimesta. sinun on pyydett�v� j�rjestelm�nvalvojalta lupa.',
       'RequestRSVP'            => 'Pyyd� vahvistus osallistumisesta',
       'invitationAccepted'     => 'Hyv�ksytty',
       'invitationDeclined'     => 'Hyl�tty',
       'AttendanceConfirmation' => 'Vahvistus kokoukseen saapumisesta',
       'AcceptInvitation'         => 'Hyv�ksy kutsu',
       'DeclineInvitation'      => 'Hylk�� kutsu',
       'Undecided'		=> 'P��tt�m�tt�',
       'Category'		=> 'Kategoria',
       'Speaker'		=> 'Puhuja',
       'Header'			=> 'Otsikko',
       'Footer'			=> 'Alatunniste',
       'HeaderFooter'		=> 'Sy�t� html-koodia, jos haluat lis�t� oman otsikon/sivun alatunnisteen',
       'MiscInfo'		=> 'Muuta tietoa',
       'Description'		=> 'Kuvaus',
       'AllDay'			=> 'Koko p�iv�',
       'Tomorrow'		=> 'Huomenna',
       'ThisWeek'		=> 'T�ll� viikolla',
       'ThisMonth'		=> 'T�ss� kuussa',
       'Keyword'		=> 'Avainsana',
       'NoEvents'		=> 'Ei tapahtumia',
       'EditThis'		=> 'Muokkaa t�t� tapahtumaa',
       'recurFormat'            => '%s tapahtuu %d kertaa, alkaen %s', # used in formating
       'taskDoneFormat'		=> '%s sai valmiiksi %s klo %s', # formating, eg. by Jone on Mon 12/11 at 5pm


       'warnModify'	       => 'Olet muokkaamassa toistuvaa tapahtumaa. n�kyv� p�iv�m��r� ei ole tapahtuman alkuper�inen p�iv�m��r� (tai viimeinen voimassaolop�iv�). jos jatkat muokkausta, tapahtuma alkaa toistuvasti uudesta p�iv�m��r�st� lukien ja kaikki piilotettu tieto tapahtumasta (esim. kokouskutsun vahvistukset ja poikkeusp�iv�m��r�t) h�vi�v�t.

toistuvan tapahtuman yhden esiintym�n muokkaus ei ole sallittua. jos muokkaat t�t� muistutusta, niin t�m� esiintym� poistetaan ja uusi muistutus asetetaan toistuvaksi valitsemastasi p�iv�m��r�st� eteenp�in.

alkuper�isen tapahtuman p�iv�m��r� oli:',

       'gEventError'		=> 'Yritit poistaa yksitt�isen esiintym�n toistuvasta ryhm�tapahtumasta. t�m� ei ole sallittua, koska silloin sinun kalenterisi ei olisi synkronoitu oikein muiden ryhm�n kalentereiden kanssa. sin� voit kuitenkin poistaa kaikki esiintym�t t�st� tapahtumasta valitsemalla "poista kaikki esiintym�t" tapahtuma-muokkain ikkunassa.',

       'City'                  => 'Kaupunki',
       'State'                 => 'Osavaltio',
       'Zip'                   => 'Postinumero',
       'Country'               => 'Maa',


       'ResetPasswd'           => 'Aseta k�ytt�j�n salasana uudelleen',
       'File'                  => 'Tiedosto',
       'AlreadyOnCalendar'     => 'Seuraavat esiintym�t l�ytyv�t jo kalenteristasi. ne hyl�ttiin',
       'ImportFileTitle'         => 'Tuo vcalendar-tiedostosta, tietokoneen levylt�',
       'ImportFileInstruction'   => 'Tuodaksesi vcalendar-tiedostosta, sy�t� tiedoston koko hakemistopolku laatikkoon ja paina v�lit�. jos et ole varma, miss� tiedosto sijaitsee, paina sel',
       'ImportVcal'		=> 'Tuo tapahtuma vcalendar:ista',
       'ImportVcalInstruction'	=> 'Tai leikkaa ja liit� vcalendar merkint� tekstialueeseen ja paina v�lit�',


       # new phrases

       'DetailedWorkingHours'   => 'Erittely p�ivitt�isist� ty�tunneista', 
       'SelectAttendee' => 'Voit sy�tt�� osallistujien s�hk�postiosoitteet sek�, kalenterien tai ty�ryhmien nimet. voit valita kalenterit vasemmalla olevasta listasta, tai voit kirjoittaa ne yl�puolella olevaan tekstilaatikkoon. s�hk�postiosoitteet on kirjoitettava itse. mahdolliset ty�ryhm�t voi valita ty�ryhm�-valikosta. voit my�s kirjoittaa ty�ryhmien nimet tekstilaatikkoon. huom! erottele tekstilaatikkoon sy�tt�m�si nimet pilkuilla tai v�lily�nneill�!',

       'MkEditorListInstruction' => 'Jos haluat sallia yst�viesi tai ty�toveriesi muokata kalenteriasi, valitse heid�n kalenterien nimet vasemmalla olevasta listasta. voit my�s kirjoittaa heid�n kalenterien nimet yll� olevaan tekstilaatikkoon',

       'MkReaderListInstruction' => 'Jos kalenterisi on suojattu, muut k�ytt�j�t eiv�t p��se lukemaan kalenteriasi. voit sallia joidenkin k�ytt�jien lukea kalenteriasi luomalla lukijalistan. voit valita sallittujen k�ytt�jien kalenterit vasemmalla olevasta listasta tai voit kirjoittaa ne yll� olevaan tekstilaatikkoon',

       'MkGroupInstruction'=> 'Kalenterien nimi� ja s�hk�postiosoitteita k�ytet��n ty�ryhm�n m��rittelyss�. voit valita kalenterit vasemmalla olevasta listasta, tai voit kirjoittaa kalenterien nimet tai s�hk�postiosoitteet yll� olevaan tekstilaatikkoon',
       'Contacts'	   => 'Yhteystiedot',
       'Tasks'		   => 'Teht�v�t',
       'Day'		   => 'P�iv�',
       'Week'		   => 'Viikko',
       'Month'		   => 'Kuukausi',
       'Year'		   => 'Vuosi',
       'OffDutyHours'	   => 'Vapaa-aika',
       'AddNewAddress'	   => 'Lis�� uusi osoite',
       'HeaderColor'	   => 'Otsikon v�ri',
       'Never'		   => 'Ei koskaan',
       'OverlapNotAllowed' => 'Unfortunately, overlap events is not allowed on the following calendars.',
       'Notes'		   => 'Muistilaput',
       'PostIt'		   => 'Muistilappu',   # as in post it notes
       'Title'		   => 'Otsikko',
       'AddNewNote'	   => 'Lis�� uusi muistutus',
       
       'InterestedCalendars' => 'Listaa kaikki kalenterit, joita tulet lukemaan tai muokkaamaan', 
       'CalendarListInstruction' => 'Jos et halua n�hd� pitk�� kalenteriluetteloa kalenterin valitsemisvalikossa, niin voit luoda lyhyen listan t�nne. sy�t� niiden kalenterien nimet tai valitse vasemmalla olevasta listasta ne kalenterit, jotka haluat n�hd�. nyt luomaasi lyhytt� listaa k�ytet��n kaikkialla, miss� kalenterilista n�ytet��n',

       'MasterHeadInput'  => 'Tuo kalenteri p��valikosta k�ytt�m�ll�',
       'TextEntry'	  => 'Teksti-ikkunaa',
       'PulldownMenu'     => 'Alasvetovalikkoa',

       'LockWarning'      => 'Kalenteriasi muokattiin samalla, kun tietokone k�sitteli pyynt��si. tietojen yhten�isyyden s�ilytt�miseksi sinun pyynt�si hyl�ttiin. ole hyv� ja yrit� uudelleen.',

       'IUpload'	  => 'Lis�� kuva', 
       'FUpload'	  => 'Tiedoston l�hett�minen',        
       'IUploadInstruction' => 'L�hett��ksesi kuvatiedoston levylt�, sy�t� tekstilaatikkoon koko hakemistopolku, tai paina Selaa-nappia hakeaksesi tiedoston levylt�',
       'IUploadAck'	  => 'Kuvatiedosto l�hetetty. lis�t�ksesi kuvan tapahtuman otsikkoon tai kuvaukseen, leikkaa ja liit� seuraava rivi sille tarkoitettuun tekstikentt��n tapahtuma-muokkaimessa. huomaa, ett� kuvalle saatetaan hakea hyv�ksynt� j�rjestelm�nvalvojalta. t�llaisessa tapauksessa kuva ei tule heti julkiseen selailuun.',
       'ReviewUI'  => 'N�yt� k�ytt�j�n kuvatiedostojen l�hetykset',
       'ApproveChecked' => 'Hyv�ksynt� tarkastettu',	   
       'RejectChecked' => 'Hylk�ys tarkastettu',	   
       'Export2Vcal'   => 'Vie kalenterisi vcal-muodossa',
       'CreateNewCal'  => 'Luo uusi kalenteri',
       'UsableImgs'    => 'K�ytett�t kuvat',
       'UImageInst'    => 'Lis�t�ksesi kuvan tapahtuman ostikkoon tai kuvaukseen, liit� kuvan nimi sille varattuun tekstikentt��n tapahtuma-muokkaimessa (huom: muista ottaa nimen mukaan \\^o^/)',

	'CheckAll'     => 'Valitse kaikki',
	'UncheckAll'   => 'Poista kaikki valinnat',
        'Export2VCard' => 'Vie osoitekirjasi vcard-muotoon',
	'ImportVcard'  => 'Tuo yhteystieto vcard-tiedostosta',
        'ImportVCardTitle'  => 'Tuo vcard-tiedostosta, levylt�',
        'ImportVcardInstruction' => 'Tai leikkaa ja liit� vcard-esiintym�si tekstikentt��n ja paina v�lit�-nappia',
        'ImportVcardFileInstruction'   => 'Tuodaksesi vcard-tiedostosta, levylt�, sy�t� koko hakemistopolku tekstilaatikkoon ja pain v�lit�. voit my�s selata tiedoston levylt� valitsemalla selaa.',
        'AlreadyInAddressbook' => 'Seuraavat esiintym�t l�ytyv�t jo osoitekijrastasi.',
	
	'DpyETimeAs' => 'N�yt� tapahtuman aika',
	'MasterheadTabs' => 'P��sarkaimet',

 	'DeferConfirmation'     => 'L�het� vahvistus',
	'Unconfirmed'           => 'Vahvistamaton',     # unconfirmed invitation

	'SendMailUsing'         => 'L�het� postia k�ytt�m�ll�', #	html, txt or vcal
         # used as in
         # send mail <> immediately or <> <hours> before event
        'Sendmail'              => 'L�het� postia',
        'immediately'           => 'Heti',
        'or'                    => 'Tai',
        'beforeEvent',          => 'Ennen kuin',
        'Cancelled'             => 'Peruutettu',

        'AddNewEntry'		=> 'Lis�� uusi merkint�',
	'SearchNotes'		=> 'Etsi muistiosta',
	'SearchAddress'		=> 'Etsi osoitekirjasta',

	'Week_begins_on'	=> 'Viikko alkaa',
	'StartDate'		=> 'Alkaen',
	'DueDate'		=> 'P��ttyen',
	'DueTime'		=> 'P��ttyy klo',
	'Overdue'		=> 'Er��ntyneet',
	'EventDates'		=> 'Tapahtumien p�iv�m��r�t', 

	'SpecialEvents'		=> 'Erikoistapahtumat',

	'RemindForwardNewTask'  => 'Muistuta etuk�teen uusista teht�vist�.',
	'DispCompletedTasks'    => 'N�yt� suoritetut teht�v�t kalenterissa',
	'TaskOptions'		=> 'Teht�v�n valinnat',
        'DoneOn'		=> 'Suoritettu %s %s', # used to display completed tasks, like 'Done on 03/19/2002', 

        'DetailedView'		=> 'Yksityiskohtainen',
        'CombinedView'		=> 'Yhdistetty',
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

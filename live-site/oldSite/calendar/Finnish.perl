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
       'June'                   => 'Kesäkuu',    
       'July'                   => 'Heinäkuu',    
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
       'Jun'                    => 'Kesä',
       'Jul'                    => 'Heinä',
       'Aug'                    => 'Elo',
       'Sep'                    => 'Syys',
       'Oct'                    => 'Loka',
       'Nov'                    => 'Marras',
       'Dec'                    => 'Joulu',

       # repeating rules 
       'OneTime'                => 'Kerran',                   # one time event
       'Daily'                  => 'Päivittäin',                      
       'Weekly'                 => 'Viikoittain',
       'Every2Weeks'            => 'Joka toinen viikko',
       'MonthlyByDate'          => 'Kuukausittain päivämäärän mukaan',
       'MonthlyByWeekday'       => 'Kuukausittain viikonpäivän mukaan',         # e.g. the 3rd Friday of every month
       'Yearly'                 => 'Vuosittain',
       'MTWThF'                 => 'Maanantaista perjantaihin',
       'MWF'                    => 'Ma,ke,pe',
       'TTh'                    => 'Ti,to',
       'YearlyByMonthWeekday'   => 'Vuosittain kk:n ens. viikonpv',    # e.g. the first Monday of June, yearly
       'EveryOtherDay'          => 'Joka toinen päivä',
       'Every3rdDay'            => 'Joka kolmas päivä',
       'Every4thDay'            => 'Joka neljäs päivä',
       'Every5thDay'            => 'Joka viides päivä',
       'Every6thDay'            => 'Joka kuudes päivä',

       # event types
       'Appointment'            => 'Tapaaminen',
       'Todo'                   => 'Tehtävä',
       'Meeting'                => 'Kokous',
       'Special'                => 'Erikois',            # for holidays, event require no specific time

       # option button names
       'CalendarOptions'        => 'Kalenterin asetukset',   # title of the options page
       'Compare'                => 'Vertaa',            # Button: compare calendars and find conflicts ...
       'Search'                 => 'Etsi',             # Button:
       'GotoDate'               => 'Siirry päivään',           # Button:
       'Previous'               => 'Edellinen',           # previous Month/Day/Week 
       'Today'                  => 'Tänään',              # This Month/Day/Week 
       'Next'                   => 'Seuraava',               # next Month/Day/Week 
       'Options'                => 'Asetukset',            # Button: go to options page 
       'Admin'                  => 'Hallinta',              # Button: go to admin page
       'Logout'                 => 'Kirjaudu ulos',             # Button: go to logout page
       'DayView'                => 'Päivänäkymä',           # Alt name under the image buttons
       'WeekView'               => 'Viikkonäkymä',
       'MonthView'              => 'Kuukausinäkymä',
       'YearView'               => 'Vuosinäkymä',
       
       
       # messages on the setup screen
       'SetupYourCalendar'      => 'Säädä kalenterisi', # title
       'YourCalendarName'       => 'Kalenterisi nimi',
       'YourEmailAddress'       => 'Sähköpostiosoitteesi',
       'YourName'               => 'Nimesi',
       'Password'               => 'Salasana',
       'RetypePassword'         => 'Salasana (uudelleen)',
       'CalendarType'           => 'Kalenterin tyyppi',
       'Public'                 => 'Julkinen',
       'Private'                => 'Yksityinen',
       'ForPrivateCalendar'     => 'Yksityiselle kalenterille',
       'OthersSeeTextTime'      => 'Muut näkevät tekstit ja ajat',
       'OthersSeeTitle'         => 'Others See Event Title',
       'OthersSeeTimeOnly'      => 'Muut näkevät vain ajat',
       'OthersSeeNothing'       => 'Muut eivät näe mitään',
       'PublicCalendar'         => 'Julkinen kalenteri',
       'Submit'                 => 'Välitä',
       'Cancel'                 => 'Peruuta',
       'TheName'                => 'Nimi',
       'HasBeenTaken'           => 'On jo käytetty',
       'PasswordMismatch'       => 'Virheellinen salasana',
       'TryAgain'               => 'Yritä uudelleen',
       'EmailIncomplete'        => 'Sähköpostiosoite on puutteellinen',
       'CannotCreateCalendar'   => 'Ei voi luoda kalenteria! tarkista kalenterin nimi',
       'CannotWriteInfoFile'    => 'Ei voi kirjoittaa info-tiedostoon',
       'CannotWriteDataFile'    => 'Ei voi kirjoittaa data-tiedostoon',
       'CannotWritePasswordFile'=> 'Ei voi muokata salasana-tiedostoa',
       'Congratulations'        => 'Onneksi olkoon!',
       'SetupGreetingA'         => 'Kalenterisi on nyt säädetty. muista lisätä kalenteri suosikkeihin',
       'SetupGreetingB'         => 'Muista salasanasi! tarvitset sitä, jotta pääset käsiksi kalenteriisi.',
       'HaveToSupplyCalendarName' => 'Sinun on annettava kalenterisi nimi',
       'PleaseDoNotUseYourUnixAccountPassword' => 'Älä käytä windows-salasanaasi',
       
       
       # Event Editor Messages
       'EventEditor'            => 'Tapahtuma-muokkain',
       'AppointmentEditor'      => 'Tapaamis-muokkain',
       'ToDoEditor'             => 'Tehtävä-muokkain',
       'MeetingEditor'          => 'Kokous-muokkain',
       'SpecialEditor'          => 'Erikois_tapahtuma-muokkain',
       'AuthRequired'           => 'Huomaa, että sinun tarvitsee tunnistautua, jotta voit muokata tätä kalenteria',
       'CurrentEvents'          => 'Ajankohtaiset tapahtumat',
       'Time'                   => 'Aika',
       'What'                   => 'Mitä',
       'Date'                   => 'Pvm',
       'Start'                  => 'Alkaen',
       'End'                    => 'Päättyen',
       'Details'                => 'Yksityiskohdat',
       'Colors'                 => 'Värit',
       'Privacy'                => 'Yksityisyys',         
       'Frequency'              => 'Toistotiheys',
       'Reminders'              => 'Muistutukset',
       'Mail'                   => 'Sähköposti',
       'min'                    => 'Min', # abbreviation of minute
       'mins'                   => 'Min',
       'hours'                  => 'Tuntia',
       'days'                   => 'Päivää',
       'weeks'                  => 'Viikkoa',
       'Occurs'                 => 'Tapahtuu',
       'For'                    => 'Yht',
       'times'                  => 'Kertaa',   # as in repeat for 10 times 
       'Popup'                  => 'Ponnahdus',
       'Author'                 => 'Asettaja',
       'Blink'                  => 'Välkkyvä',
       'Chime'                  => 'Äänimerkki',
       'Insert'                 => 'Lisää',
       'InsertAsNew'            => 'Lisää uutena',
       'Modify'                 => 'Muokkaa',
       'DeleteThisOne'          => 'Poista tämä esiintymä',
       'DeleteAll'              => 'Poista kaikki esiintymät',
       'Delete'                 => 'Poista',
       'Due'                    => 'Voimassa', # as in Due Date
       'TaskDone'               => 'Tehtävä suoritettu',
       'RemindForward'          => 'Muistuta etukäteen',
       'Yes'                    => 'Kyllä',
       'No'                     => 'Ei',
       'Y'                      => 'K', # abbrieviation of Yes
       'N'                      => 'E', # abbrieviation of No
       'ToDo'                   => 'Tehtävä',
       'Participants'           => 'Osaanottajat',
       'none'                   => 'Ei kukaan',
       'MailToAll'              => 'Lähetä postia kaikille',
       'FindConflict'           => 'Etsi konflikti',
       'NoTimeEvent'            => 'Ei ajasta riippuvainen',
       'Fg'                     => 'Etuala',
       'Bg'                     => 'Taka-ala',
       'Error'                  => 'Virhe',
       'HasError'               => 'Pyyntösi käsittely sai aikaan virheen',
       'ListParticipants'       => 'Syötä työryhmät, kalenterien nimet tai osaanottajien sähköpostiosoitteet. heidän kalenterit päivitetään',
       'ConflictTable'          => 'Konflikti taulukossa',
       'Conflict'               => 'Konflikti',         
       'Table'                  => 'Taulukko',         
       'You'                    => 'Sinä',
       'NotAllowedToModify'     => 'Ei ole oikeutta muokata tätä esiintymää',
       'NotAllowedToEdit'       => 'Ei ole oikeutta muokata tätä kalenteria',
       'Warning'                => 'Varoitus',
       'NoRemindForward'        => 'Ei voi varoittaa etukäteen tehtävistä, jotka toistetaan',
       'Acknowledgement'        => 'Vahvistus',
       'UpdatedOK'              => 'Kalenteri päivitetty',
       'BackToCalendar'         => 'Paina tästä palataksesi kalenteriisi',
       'OpenFailed'             => 'Ei voi avata kalenteriasi',
       'NoCalendar'             => 'Sinun kalenteria ei löydy levyltä',
       
       # goto page
       'Goto_Date'              => 'Siirry päivään', #title
       'Goto'                   => 'Siirry',
       'SelectDate'             => 'Valitse päivämäärä',
       'View'                   => 'Näytä',
       'Go'                     => 'Mene', # function as submit
       'Set'                    => 'Aseta', # as in set options
       
       # set options page
       'My_day_starts_at'       => 'Päiväni alkaa',
       'ends_at'                => 'Päättyy',
       'Interval'               => 'Aikaväli',
       'Week_starts_on',        => 'Viikko',
       'include_weekend',       => 'Sisällytä viikonloput',
       'Date_Format'            => 'Päivän muoto',
       'Time_Format'            => 'Ajan muoto',
       'Time_zone'              => 'Aikavyöhyke',
       'Default_view'           => 'Oletusnäkymä',
       'Default_Reminders'      => 'Oletusmuistutukset',
       'ListEditors'            => 'Valitse henkilöt, joilla on lupa muokata kalenteriasi',
       'Editors'                => 'Muokkaajat',
       'Email'                  => 'Sähköposti',
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
       'to_be_used_by_meeting_editor' => 'Työryhmän muokkaajalle',
       'Existing_Groups'        => 'Olemassaolevat ryhmät',
       'Group_Name'             => 'Ryhmän nimi',
       'ListGroupMembers'       => 'Syötä kalenterin nimi tai vastaanottajien sähköpostiosoitteet',
       'Merge_Calendars'        => 'Yhdistä kalenterit',
       'CalendarNames'          => 'Kalenterien nimet',
       'EraseCalendar'          => 'Tyhjennä kalenteri',
       'DeleteCalendar'         => 'Poista kalenteri',
       'errorPerm'              => 'Ei sallittu',
       'calDeleted'             => 'Kalenteri poistettu',
       'ThankYou4Using'         => 'Kiitos, kun käytät',
       'calErased'              => 'Kalenteri tyhjennetty',
       'eraseFailed'            => 'Ei voi tyhjentää kalenteria',
       'cpasswordWrong'         => 'Lupavirhe: virheellinen salasana',
       'ipasserror'             => 'Ei voi avata salasana-tiedostoa, yritä hetken päästä uudelleen',
       'password_changed'       => 'Salasanasi on vaihdettu',
       'cannot_open'            => 'Ei voi avata',
       'Meeting_group'          => 'Työryhmä',
       'updated'                => 'Päivitetty',
       'new_entries'            => 'Uudet merkinnät lisätty kalenteriin',
       'Unknown_command'        => 'Tuntematon toiminto',
       
       
       # search page
       'Search_Calendar'        => 'Etsi kalenterista',
       'Topic'                  => 'Aihe',
       'SearchAll'              => 'Etsi kaikki',
       'Search_From'            => 'Etsi alkaen',
       'To'                     => 'Päättyen',
       'Search_Results'         => 'Haun tulokset',
       'CalendarReminder'       => 'Kalenterimuistutus',
         
       # Greeting
       'WelcomeToWebCalendar'   => 'Tervetuloa webkalenteriin',
       'PleaseSelectACalendar'  => 'Valitse kalenteri',
       'PleaseEnterCalendarName'=> 'Syötä kalenterisi nimi',

       #download
       'notAllowedToDownload'   => 'Sinulla ei ole oikeutta ladata tätä kalenteria',
         
       #logout
       'AuthNotRequired'        => 'Huomaa: tunnistautumista ei tarvita julkisten kalenterien selailuun',
       'logoutInstruction'      => 'Kirjautuaksesi ulos, paina kirjaudu_ulos -nappia. kun kirjautumisruutu ilmestyy,<br> käytä tunnusta: nobody (ilman salasanaa)',
       'loginInstruction'       => 'Kirjautuaksesi toisella nimellä, paina kirjaudu-nappia',
       'You_ve_logout'          => 'Sinut on kirjattu ulos',
       'access_denied'          => 'Pääsy kielletty',
       'login'                  => 'Kirjaudu',

       #compare
       'CompareCalendars'       => 'Vertaa kalentereita',
       'Enter_calendar_names'   => 'Syötä kalenterien nimet',
       'or_meeting_group'       => 'Tai työryhmä',
       'EventsTable'            => 'Tapahtumat-taulukko',
       'Name'                   => 'Nimi',
       'Events'                 => 'Tapahtumat',
       'ForegroundColor'        => 'Etualan väri',
       'BackgroundColor'        => 'Taustaväri',

       # msg in the main
       'accessAnotherCal'        => 'Käyttääksesi toista kalenteria',

       # Some missing phrases and addons ...
       'Close'                  => 'Sulje',
       'ShowCombinedCalendar'   => 'Näytä yhdistetty kalenteri',
       'CombinedCalendar'       => 'Yhdistetty kalenteri',
       'Participants_are_allowed_to' => "Participants are allowed to",
       'View_only'              => 'Näytä vain',
       'Edit'                   => 'Muokkaa',
       'EditAndDelete'          => 'Muokkaa ja poista',
       'Updated_calendars'      => 'Myös seuraavat kalenterit päivitettiin',
       'NotAllowedToUpdate'     => 'Sinulla ei ole oikeutta päivittää seuraavia kalentereita',
       'invalid_date'           => 'Virheellinen päivämäärä',
       'Schedule'               => 'Aikataulu',            # as in 'schedule an appointment on calendar mzou
       'onCalendar'             => 'Kalenterissa',          #
       'DeleteForward'          => 'Poista myöhemmät esiintymät',
       'All'                    => 'Kaikki',
       'SearchSubjectEmpty'	=> 'Etsittävä otsikko ei voi olla tyhjä',
       'Start_date'             => 'Alkaen',
       'is_after_due_date'      => 'Ei voi olla päättyen-pvm:n jälkeen!',
       'Invalidusername'	=> 'Virheellinen käyttäjänimi',
       'Protected'		=> '==suojattu==',
       'Invalidcalendarname'	=> 'Virheellinen kalenterin nimi',
       'Couldnotfindcalendar' => 'Kalenteria ei löydy',
       'Invalidspooldir'      => 'Virheellinen sivuajo-hakemisto',
       'ListView'             => 'Luettelonäkymä',
       'BlockView'            => 'Lohkonäkymä',

       # address book stuff
       'AddressBook'           => 'Osoitekirja',
       'AddressBookEditor'     => 'Osoitekirjan muokkain',
       'AddressBookUpdated'    => 'Osoitekirja päivitetty',
       'BackToAddressBook'     => 'Paina tästä palataksesi osoitekirjaan',
       'FirstName'             => 'Etunimi',
       'LastName'              => 'Sukunimi',
       'Address'               => 'Osoite',
       'Phone'                 => 'Puhelin',
       'Fax'                   => 'Fax',
       'Info'                  => 'Muuta',
       'Affiliation'           => 'Osasto',
       'Where'                 => 'Missä',
       'Priority'              => 'Tärkeys',
       'Diary'                 => 'Päiväkirja',
       'DiaryUpdated'          => 'Päiväkirja päivitetty',
       'ReadDiary'             => 'Lue päiväkirjaa',       
       'From'                  => 'Alkaen',
       'PlainText'             => 'Pelkkä teksti',
       'Html'                  => 'Html',
       'SearchDiary'           => 'Etsi päiväkirjasta',
       'SearchFor'             => 'Etsittävä',
       'NeedAuth2Proceed'      => 'Tunnistautuminen vaaditaan, jotta voit selata tai muokata. paina kirjautumisnappia jatkaaksesi, tai paina kalenterinappia palataksesi takaisin omaan kalenteriisi',

       # Priority of ToDo tasks
       'Urgent'                => 'Kiireinen',
       'High'                  => 'Korkea',
       'Medium'                => 'Normaali',
       'Low'                   => 'Vähäinen',       

       # find calendar names
       'FindCalNames'          => 'Etsi kalentereita',

       # overlapping 
       'AllowOverlap'          => 'Salli päällekäiset tapahtumat',
       'GoBack'                => 'Palaa takaisin',  #

       'OverlapInstr'          => 'Tämä tapahtuma hylättiin, koska kalenterissa on samalla hetkellä jo yksi tai useampia tapahtumia (kts. taulukko). Voit myös sallia päällekäiset tapahtumat ja yrittää uudelleen',

       'signup'                 => 'Luo uusi',
       'Invalidpassword'	=> 'Virheellinen salasana',
       'olduserInstruction'     => 'Minulla on kalenteri tiedostossa',
       'newuserInstruction'     => 'Olen uusi käyttäjä',
       'PleaseLogin'            => 'Tunnistautumista vaaditaan! kirjaudu sisään ensin!',
       'NextNew'		=> 'Seuraava uusi tapahtuma',
       'RememberIDPswd'         => 'Muista käyttäjänimeni ja salasanani, jotta minun ei tarvitse kirjoittaa niitä joka kerta.',
       'global'                 => 'Global', # mark global meeting group
       'groupnametaken'         => 'Valitsemasi työryhmän nimi on jo käytössä, ole hyvä ja valitse toinen nimi',
       'deleteEventsBefore'     => 'Poista kaikki päivämäärää aikaisemmat tapahtumat',
       'AutoStart'              => 'Käynnistä webkalenteri automaattisesti',
       'Readers'                => 'Lukijat',
       'ListReaders'            => 'Valitse käyttäjät, joilla on oikeus lukea kalenteriasi',
       'Print'			=> 'Tulosta',
       'mailVcal'		=> 'Liitä vcalendar sähköpostimuistutuksiin',
       'FriendsEmail'		=> 'Ystävän sähköpostiosoite',
       'PersonalMessage'	=> 'Lisää henkilökohtainen viesti',
       'Mail2Friend'		=> 'Lähetä tämä tapahtuma sähköpostina ystävälle',
       'MailSentTo'		=> 'Kalenteriesiintymä lähetettiin:',
       'Location'               => 'Sijainti',
       # the next line is used in a confirmation popup when a user is modifying 
       # an repeating event. The date displayed is the current date, normally 
       # it is not the initial starting date of the event.
       'CalendarFormat'			=> 'Kalenterin muoto',
       'CalendarFile'			=> 'Kalenteri-tiedosto',
       'SetupGreetingC'         => 'Ole hyvä ja tee loput kalenterin säädöt valitsemalla \'kalenterin asetukset\'',
       'Email2Selected'		=> 'Lähetä sähköpostia kaikkiin valittuihin osoitteisiin',
       'AddNewEmail'		=> 'Lisää uusi sähköpostiosoite osoitekirjaani',
       'ContactP'		=> 'Yhteyshenkilö',
       'ContactE'		=> 'Yhteyshenkilön sähköposti',
       'DailyReminder'		=> 'Lähetä minun päivittäiset muistutukseni',
       'CompletedTasks'		=> 'Suoritetut tehtävät',
       'PendingTasks'		=> 'Odottavat tehtävät',
       'Import2Cal'		=> 'Tuo tämä tapahtuma kalenteriin',
       'ViewOnly'		=> 'Tai valitse kalenteri, jota selata',
       'newLogin'		=> 'Tai kirjaudu sisään toisella käyttäjänimellä', 
       'QuickAdd'		=> 'Nopea lisäys',
       'Event'                  => 'Tapahtuma',
       'TodoList'               => 'Tehtäväluettelo',
       'MarkComplete'		=> 'Merkitse valitut suoritetuiksi',
       'DeleteChecked'		=> 'Poista valitut',
       'AddNewTask'             => 'Lisää uusi tehtävä',
       'TaskManager'            => 'Tehtävien hallinta',
       'WarnInvitee'		=> 'Oletko varma, että haluat lisätä tämän tapahtuman seuraaviin kalentereihin?',
       'creationDisabled'	=> 'Valitettavasti kalenterin asetusten säätäminen on estetty järjestelmänvalvojan toimesta. sinun on pyydettävä järjestelmänvalvojalta lupa.',
       'RequestRSVP'            => 'Pyydä vahvistus osallistumisesta',
       'invitationAccepted'     => 'Hyväksytty',
       'invitationDeclined'     => 'Hylätty',
       'AttendanceConfirmation' => 'Vahvistus kokoukseen saapumisesta',
       'AcceptInvitation'         => 'Hyväksy kutsu',
       'DeclineInvitation'      => 'Hylkää kutsu',
       'Undecided'		=> 'Päättämättä',
       'Category'		=> 'Kategoria',
       'Speaker'		=> 'Puhuja',
       'Header'			=> 'Otsikko',
       'Footer'			=> 'Alatunniste',
       'HeaderFooter'		=> 'Syötä html-koodia, jos haluat lisätä oman otsikon/sivun alatunnisteen',
       'MiscInfo'		=> 'Muuta tietoa',
       'Description'		=> 'Kuvaus',
       'AllDay'			=> 'Koko päivä',
       'Tomorrow'		=> 'Huomenna',
       'ThisWeek'		=> 'Tällä viikolla',
       'ThisMonth'		=> 'Tässä kuussa',
       'Keyword'		=> 'Avainsana',
       'NoEvents'		=> 'Ei tapahtumia',
       'EditThis'		=> 'Muokkaa tätä tapahtumaa',
       'recurFormat'            => '%s tapahtuu %d kertaa, alkaen %s', # used in formating
       'taskDoneFormat'		=> '%s sai valmiiksi %s klo %s', # formating, eg. by Jone on Mon 12/11 at 5pm


       'warnModify'	       => 'Olet muokkaamassa toistuvaa tapahtumaa. näkyvä päivämäärä ei ole tapahtuman alkuperäinen päivämäärä (tai viimeinen voimassaolopäivä). jos jatkat muokkausta, tapahtuma alkaa toistuvasti uudesta päivämäärästä lukien ja kaikki piilotettu tieto tapahtumasta (esim. kokouskutsun vahvistukset ja poikkeuspäivämäärät) häviävät.

toistuvan tapahtuman yhden esiintymän muokkaus ei ole sallittua. jos muokkaat tätä muistutusta, niin tämä esiintymä poistetaan ja uusi muistutus asetetaan toistuvaksi valitsemastasi päivämäärästä eteenpäin.

alkuperäisen tapahtuman päivämäärä oli:',

       'gEventError'		=> 'Yritit poistaa yksittäisen esiintymän toistuvasta ryhmätapahtumasta. tämä ei ole sallittua, koska silloin sinun kalenterisi ei olisi synkronoitu oikein muiden ryhmän kalentereiden kanssa. sinä voit kuitenkin poistaa kaikki esiintymät tästä tapahtumasta valitsemalla "poista kaikki esiintymät" tapahtuma-muokkain ikkunassa.',

       'City'                  => 'Kaupunki',
       'State'                 => 'Osavaltio',
       'Zip'                   => 'Postinumero',
       'Country'               => 'Maa',


       'ResetPasswd'           => 'Aseta käyttäjän salasana uudelleen',
       'File'                  => 'Tiedosto',
       'AlreadyOnCalendar'     => 'Seuraavat esiintymät löytyvät jo kalenteristasi. ne hylättiin',
       'ImportFileTitle'         => 'Tuo vcalendar-tiedostosta, tietokoneen levyltä',
       'ImportFileInstruction'   => 'Tuodaksesi vcalendar-tiedostosta, syötä tiedoston koko hakemistopolku laatikkoon ja paina välitä. jos et ole varma, missä tiedosto sijaitsee, paina sel',
       'ImportVcal'		=> 'Tuo tapahtuma vcalendar:ista',
       'ImportVcalInstruction'	=> 'Tai leikkaa ja liitä vcalendar merkintä tekstialueeseen ja paina välitä',


       # new phrases

       'DetailedWorkingHours'   => 'Erittely päivittäisistä työtunneista', 
       'SelectAttendee' => 'Voit syöttää osallistujien sähköpostiosoitteet sekä, kalenterien tai työryhmien nimet. voit valita kalenterit vasemmalla olevasta listasta, tai voit kirjoittaa ne yläpuolella olevaan tekstilaatikkoon. sähköpostiosoitteet on kirjoitettava itse. mahdolliset työryhmät voi valita työryhmä-valikosta. voit myös kirjoittaa työryhmien nimet tekstilaatikkoon. huom! erottele tekstilaatikkoon syöttämäsi nimet pilkuilla tai välilyönneillä!',

       'MkEditorListInstruction' => 'Jos haluat sallia ystäviesi tai työtoveriesi muokata kalenteriasi, valitse heidän kalenterien nimet vasemmalla olevasta listasta. voit myös kirjoittaa heidän kalenterien nimet yllä olevaan tekstilaatikkoon',

       'MkReaderListInstruction' => 'Jos kalenterisi on suojattu, muut käyttäjät eivät pääse lukemaan kalenteriasi. voit sallia joidenkin käyttäjien lukea kalenteriasi luomalla lukijalistan. voit valita sallittujen käyttäjien kalenterit vasemmalla olevasta listasta tai voit kirjoittaa ne yllä olevaan tekstilaatikkoon',

       'MkGroupInstruction'=> 'Kalenterien nimiä ja sähköpostiosoitteita käytetään työryhmän määrittelyssä. voit valita kalenterit vasemmalla olevasta listasta, tai voit kirjoittaa kalenterien nimet tai sähköpostiosoitteet yllä olevaan tekstilaatikkoon',
       'Contacts'	   => 'Yhteystiedot',
       'Tasks'		   => 'Tehtävät',
       'Day'		   => 'Päivä',
       'Week'		   => 'Viikko',
       'Month'		   => 'Kuukausi',
       'Year'		   => 'Vuosi',
       'OffDutyHours'	   => 'Vapaa-aika',
       'AddNewAddress'	   => 'Lisää uusi osoite',
       'HeaderColor'	   => 'Otsikon väri',
       'Never'		   => 'Ei koskaan',
       'OverlapNotAllowed' => 'Unfortunately, overlap events is not allowed on the following calendars.',
       'Notes'		   => 'Muistilaput',
       'PostIt'		   => 'Muistilappu',   # as in post it notes
       'Title'		   => 'Otsikko',
       'AddNewNote'	   => 'Lisää uusi muistutus',
       
       'InterestedCalendars' => 'Listaa kaikki kalenterit, joita tulet lukemaan tai muokkaamaan', 
       'CalendarListInstruction' => 'Jos et halua nähdä pitkää kalenteriluetteloa kalenterin valitsemisvalikossa, niin voit luoda lyhyen listan tänne. syötä niiden kalenterien nimet tai valitse vasemmalla olevasta listasta ne kalenterit, jotka haluat nähdä. nyt luomaasi lyhyttä listaa käytetään kaikkialla, missä kalenterilista näytetään',

       'MasterHeadInput'  => 'Tuo kalenteri päävalikosta käyttämällä',
       'TextEntry'	  => 'Teksti-ikkunaa',
       'PulldownMenu'     => 'Alasvetovalikkoa',

       'LockWarning'      => 'Kalenteriasi muokattiin samalla, kun tietokone käsitteli pyyntöäsi. tietojen yhtenäisyyden säilyttämiseksi sinun pyyntösi hylättiin. ole hyvä ja yritä uudelleen.',

       'IUpload'	  => 'Lisää kuva', 
       'FUpload'	  => 'Tiedoston lähettäminen',        
       'IUploadInstruction' => 'Lähettääksesi kuvatiedoston levyltä, syötä tekstilaatikkoon koko hakemistopolku, tai paina Selaa-nappia hakeaksesi tiedoston levyltä',
       'IUploadAck'	  => 'Kuvatiedosto lähetetty. lisätäksesi kuvan tapahtuman otsikkoon tai kuvaukseen, leikkaa ja liitä seuraava rivi sille tarkoitettuun tekstikenttään tapahtuma-muokkaimessa. huomaa, että kuvalle saatetaan hakea hyväksyntä järjestelmänvalvojalta. tällaisessa tapauksessa kuva ei tule heti julkiseen selailuun.',
       'ReviewUI'  => 'Näytä käyttäjän kuvatiedostojen lähetykset',
       'ApproveChecked' => 'Hyväksyntä tarkastettu',	   
       'RejectChecked' => 'Hylkäys tarkastettu',	   
       'Export2Vcal'   => 'Vie kalenterisi vcal-muodossa',
       'CreateNewCal'  => 'Luo uusi kalenteri',
       'UsableImgs'    => 'Käytettät kuvat',
       'UImageInst'    => 'Lisätäksesi kuvan tapahtuman ostikkoon tai kuvaukseen, liitä kuvan nimi sille varattuun tekstikenttään tapahtuma-muokkaimessa (huom: muista ottaa nimen mukaan \\^o^/)',

	'CheckAll'     => 'Valitse kaikki',
	'UncheckAll'   => 'Poista kaikki valinnat',
        'Export2VCard' => 'Vie osoitekirjasi vcard-muotoon',
	'ImportVcard'  => 'Tuo yhteystieto vcard-tiedostosta',
        'ImportVCardTitle'  => 'Tuo vcard-tiedostosta, levyltä',
        'ImportVcardInstruction' => 'Tai leikkaa ja liitä vcard-esiintymäsi tekstikenttään ja paina välitä-nappia',
        'ImportVcardFileInstruction'   => 'Tuodaksesi vcard-tiedostosta, levyltä, syötä koko hakemistopolku tekstilaatikkoon ja pain välitä. voit myös selata tiedoston levyltä valitsemalla selaa.',
        'AlreadyInAddressbook' => 'Seuraavat esiintymät löytyvät jo osoitekijrastasi.',
	
	'DpyETimeAs' => 'Näytä tapahtuman aika',
	'MasterheadTabs' => 'Pääsarkaimet',

 	'DeferConfirmation'     => 'Lähetä vahvistus',
	'Unconfirmed'           => 'Vahvistamaton',     # unconfirmed invitation

	'SendMailUsing'         => 'Lähetä postia käyttämällä', #	html, txt or vcal
         # used as in
         # send mail <> immediately or <> <hours> before event
        'Sendmail'              => 'Lähetä postia',
        'immediately'           => 'Heti',
        'or'                    => 'Tai',
        'beforeEvent',          => 'Ennen kuin',
        'Cancelled'             => 'Peruutettu',

        'AddNewEntry'		=> 'Lisää uusi merkintä',
	'SearchNotes'		=> 'Etsi muistiosta',
	'SearchAddress'		=> 'Etsi osoitekirjasta',

	'Week_begins_on'	=> 'Viikko alkaa',
	'StartDate'		=> 'Alkaen',
	'DueDate'		=> 'Päättyen',
	'DueTime'		=> 'Päättyy klo',
	'Overdue'		=> 'Erääntyneet',
	'EventDates'		=> 'Tapahtumien päivämäärät', 

	'SpecialEvents'		=> 'Erikoistapahtumat',

	'RemindForwardNewTask'  => 'Muistuta etukäteen uusista tehtävistä.',
	'DispCompletedTasks'    => 'Näytä suoritetut tehtävät kalenterissa',
	'TaskOptions'		=> 'Tehtävän valinnat',
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

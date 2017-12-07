#
# This is the list of phrases or words used in the UI.
# To port webCal to another language, translate
# this list should be suffice.
#
# $Header: /home/cvs/webCal/webCal2/French.perl,v 1.85 2004/10/20 23:35:56 mzou Exp $
#


%::phr= (
       # specify character encoding.
       'CHARSET'		=> 'ISO-8859-1',

       'Calendar'		=> 'Calendrier',

       # Name of weekdays
       'Sunday' 		=> 'Dimanche',
       'Monday' 		=> 'Lundi',
       'Tuesday'		=> 'Mardi',
       'Wednesday'		=> 'Mercredi',
       'Thursday'		=> 'Jeudi',
       'Friday' 		=> 'Vendredi',
       'Saturday'		=> 'Samedi',
       # Name of weekdays, abbreviation
       'Sun'			=> 'Dim',
       'Mon'			=> 'Lun',
       'Tue'			=> 'Mar',
       'Wed'			=> 'Mer',
       'Thu'			=> 'Jeu',
       'Fri'			=> 'Ven',
       'Sat'			=> 'Sam',
       # Name of weekdays, abbreviated even more
       'Su'			=> 'Di',
       'Mo'			=> 'Lu',
       'Tu'			=> 'Ma',
       'We'			=> 'Me',
       'Th'			=> 'Je',
       'Fr'			=> 'Ve',
       'Sa'			=> 'Sa',

       # Month Names  
       'January'		=> 'Janvier', 
       'February'		=> 'Février',
       'March'			=> 'Mars',   
       'April'			=> 'Avril',   
       'May_'			=> 'Mai',
       'June'			=> 'Juin',    
       'July'			=> 'Juillet',	 
       'August' 		=> 'Août',
       'September'		=> 'Septembre',
       'October'		=> 'Octobre',
       'November'		=> 'Novembre',
       'December'		=> 'Décembre',
       # Month Names, abbreviation
       'Jan'			=> 'Jan',
       'Feb'			=> 'Fev',
       'Mar'			=> 'Mar',
       'Apr'			=> 'Avr',
       'May'			=> 'Mai',
       'Jun'			=> 'Jun',
       'Jul'			=> 'Jui',
       'Aug'			=> 'Aou',
       'Sep'			=> 'Sep',
       'Oct'			=> 'Oct',
       'Nov'			=> 'Nov',
       'Dec'			=> 'Dec',

       # repeating rules 
       'OneTime'		=> 'Une seule fois',
       'Daily'			=> 'Chaque jour',
       'Weekly' 		=> 'Chaque semaine',
       'Every2Weeks'		=> 'Tous les 15 jours',
       'MonthlyByDate'		=> 'Chaque mois-même date',
       'MonthlyByWeekday'	=> 'Chaque mois-même jour',
       'Yearly' 		=> 'Annuel',
       'MTWThF' 		=> 'Du Lundi au Vendredi',
       'MWF'			=> 'Les Lun-Merc-Vend',
       'TTh'			=> 'Les Mardi-Jeudi',
       'YearlyByMonthWeekday'	=> 'Annuel-même jour et mois',
       'EveryOtherDay'		=> 'Chaque autre jour',
       'Every3rdDay'		=> 'Chaque 3ème jour',
       'Every4thDay'		=> 'Chaque 4ème jour',
       'Every5thDay'		=> 'Chaque 5ème jour',
       'Every6thDay'		=> 'Chaque 6ème jour',

       # event types
       'Appointment'		=> 'Rendez-vous',
       'Todo'			=> 'Tâche',
       'Meeting'		=> 'Réunion',
       'Special'		=> 'Spécial',

       # option button names
       'CalendarOptions'	=> 'Options du Calendrier',
       'Compare'		=> 'Comparer',
       'Search' 		=> 'Rechercher',
       'GotoDate'		=> 'Aller à cette date',
       'Previous'		=> 'Précédent',
       'Today'			=> 'Aujourd\'hui',
       'Next'			=> 'Suivant',
       'Options'		=> 'Options',
       'Admin'			=> 'Administration',
       'Logout' 		=> 'Déconnexion',
       'DayVieiw'		=> 'Vus du Jour',
       'WeekView'		=> 'Vue de la Semaine',
       'MonthView'		=> 'Vue du Mois',
       'YearView'		=> 'Vue de l\' Année',
       
       # messages on the setup screen
       'SetupYourCalendar'	=> 'Paramétrer votre calendrier',
       'YourCalendarName'	=> 'Le nom de votre calendrier',
       'YourEmailAddress'	=> 'Votre Courriel',
       'YourName'		=> 'Votre Nom',
       'Password'		=> 'Mot de passe',
       'RetypePassword' 	=> 'Confirmez le mot de passe',
       'CalendarType'		=> 'Type de Calendrier',
       'Public' 		=> 'Public',
       'Private'		=> 'Privé',
       'ForPrivateCalendar'	=> 'Pour calendrier privé',
       'OthersSeeTextTime'	=> 'Visible - Texte et Heure',
       'OthersSeeTitle'         => 'Visible - Titre seulement',
       'OthersSeeTimeOnly'	=> 'Visible - Heure seulement',
       'OthersSeeNothing'	=> 'Rien de visible au public',
       'PublicCalendar' 	=> 'Calendrier public',
       'Submit' 		=> 'Envoyer',
       'Cancel' 		=> 'Annuler',
       'TheName'		=> 'Le nom',
       'HasBeenTaken'		=> 'est déjà utilisé',
       'PasswordMismatch'	=> 'Les mots de passe ne sont pas identiques',
       'TryAgain'		=> 'Essayer de nouveau',
       'EmailIncomplete'	=> 'Votre adresse courriel est incomplète',
       'CannotCreateCalendar'	=> 'Ne peut pas créer votre calendrier. Le nom doit être un mot valable',
       'CannotWriteInfoFile'	=> 'Erreur d\'écriture - fichier info',
       'CannotWriteDataFile'	=> 'Erreur d\'écriture - fichier data',
       'CannotWritePasswordFile'=> 'Erreur d\'écriture - fichier des mots de passe',
       'Congratulations'	=> 'Félicitations',
       'SetupGreetingA' 	=> 'Votre calendrier est enregistre.  Ajoutez-le à vos favoris',
       'SetupGreetingB' 	=> 'N\'oubliez pas votre mot de passe!! Vous en aurez besoin pour gérer votre calendrier',
       'HaveToSupplyCalendarName' => 'Vous devez donner un nom à votre calendrier',
       'PleaseDoNotUseYourUnixAccountPassword' => 'Veuillez ne pas utiliser le mot de passe de votre compte réseau',
       
       
       # Event Editor Messages
       'EventEditor'		=> 'éditeur - événement',
       'AppointmentEditor'	=> 'éditeur - Rendez-vous',
       'ToDoEditor'		=> 'éditeur - Tâche',
       'MeetingEditor'		=> 'éditeur - Réunion',
       'SpecialEditor'		=> 'éditeur - événement spécial',
       'AuthRequired'		=> 'Attention, vous devez détenir un droit d\'accès pour éditer ce calendrier',
       'Appointment'		=> 'Rendez-vous',
       'CurrentEvents'		=> 'événements du jour',
       'Time'			=> 'Heure',
       'What'			=> 'Quoi',
       'Date'			=> 'Date',
       'Start'			=> 'Début',
       'End'			=> 'Fin',
       'Details'		=> 'Détails',
       'Colors' 		=> 'Couleurs',
       'Privacy'		=> 'Domaine privé',
       'Frequency'		=> 'Fréquence',
       'Reminders'		=> 'Rappel',
       'Mail'			=> 'Courriel',
       'min'			=> 'min', # abbreviation of minute
       'mins'			=> 'mins',
       'hours'			=> 'heures',
       'days'			=> 'jours',
       'weeks'			=> 'semaines',
       'Occurs' 		=> 'A lieu',
       'For'			=> 'pour',
       'times'			=> 'fois',
       'Popup'			=> 'Popup',
       'Author' 		=> 'Auteur',
       'Blink'			=> 'Clignoter',
       'Chime'			=> 'Sonner',
       'Insert' 		=> 'Insérer',
       'InsertAsNew'		=> 'Insérer comme Nouveau',
       'Modify' 		=> 'Modifier',
       'DeleteThisOne'		=> 'Supprimer sélection',
       'DeleteAll'		=> 'Supprimer tout',
       'Delete' 		=> 'Supprimer',
       'Due'			=> 'Pour le', # as in Due Date
       'TaskDone'		=> 'Tâche terminée',
       'RemindForward'		=> 'Rappel continu',
       'Yes'			=> 'Oui',
       'No'			=> 'Non',
       'Y'			=> 'O',
       'N'			=> 'N',
       'ToDo'			=> 'Tâche',
       'Meeting'		=> 'Réunion',
       'Participants'		=> 'Participants',
       'none'			=> 'Rien',
       'MailToAll'		=> 'Envoyer à tous',
       'FindConflict'		=> 'Recherche Conflit',
       'NoTimeEvent'		=> 'événement spécial (sans heure)',
       'Fg'			=> 'Av',
       'Bg'			=> 'Ar',
       'Error'			=> 'Erreur',
       'HasError'		=> 'Une erreur est survenue sur votre requête',
       'ListParticipants'	=> 'Groupe de réunion, nom du calendrier ou adresse courriel des participants. Mise à jour automatique de leurs calendriers',
       'ConflictTable'		=> 'Table de conflit',
       'Conflict'		=> 'Conflit',
       'Table'			=> 'Table',
       'You'			=> 'Vous',
       'NotAllowedToModify'	=> 'n\'êtes pas autorisé à modifier cette tâche',
       'NotAllowedToEdit'	=> 'n\'êtes pas autorisé à éditer ce calendrier',
       'Warning'		=> 'Attention',
       'NoRemindForward'	=> 'On ne peut pas faire de rappels pour des tâches répétitives',
       'Acknowledgement'	=> 'Accuse de réception',
       'UpdatedOK'		=> 'Mise à jour réussie de votre calendrier',
       'BackToCalendar' 	=> 'Retour à votre calendrier',
       'OpenFailed'		=> 'échec lors de l\'ouverture de votre calendrier',
       'NoCalendar'		=> 'Vous n\'avez aucun calendrier',
       
       # goto page
       'Goto_Date'		=> 'Aller à cette date',
       'Goto'			=> 'Aller',
       'SelectDate'		=> 'Choisir la date',
       'View'			=> 'Voir',
       'Go'			=> 'Exécuter', # function as submit
       'Set'			=> 'Choisir', # as in set options
       
       # set options page
       'My_day_starts_at'	=> 'Ma journée commence à',
       'ends_at'		=> 'et se termine à',
       'Interval'		=> 'Intervalle',
       'Week_starts_on',	=> 'La Semaine commence le ',
       'include_weekend',	=> 'Inclure les week-ends',
       'Date_Format'		=> 'Format Date',
       'Time_Format'		=> 'Format Heure',
       'Time_zone'		=> 'Fuseau Horaire',
       'Default_view'		=> 'Vue par défaut',
       'Default_Reminders'	=> 'Rappels par défaut',
       'ListEditors'		=> 'Utilisateurs pouvant éditer votre calendrier',
       'Editors'		=> 'éditeurs',
       'Email'			=> 'Courriel',
       'Default'		=> 'Défaut',
       'Homepage'		=> 'Page d\'accueil',
       'Language'		=> 'Langue',
       
       # admin page
       'Administration' 	=> 'Administration',
       'adminDisabled'		=> 'Pas d\'administration pour un calendrier public',
       'Change_Password'	=> 'Changer de mot de passe',
       'Old_Password'		=> 'Ancien mot de passe',
       'New_Password'		=> 'Nouveau mot de passe',
       'New_Password_Again'	=> 'Confirmer le nouveau mot de passe',
       'to_be_used_by_meeting_editor' => 'à utiliser par l\'éditeur de réunion',
       'Existing_Groups'	=> 'Groupes existants',
       'Group_Name'		=> 'Nom du groupe',
       'ListGroupMembers'	=> 'Nom du calendrier ou adresse de courriel des participants',
       'Merge_Calendars'	=> 'Fusionner ces calendriers',
       'CalendarNames'		=> 'Calendrier ou nom de fichier',
       'EraseCalendar'		=> 'Effacer mon calendrier',
       'DeleteCalendar' 	=> 'Supprimer ce calendrier du système',
       'errorPerm'		=> 'Autorisation refusée',
       'calDeleted'		=> 'Votre calendrier a été effacé',
       'ThankYou4Using' 	=> 'Merci d\'avoir utilisé',
       'calErased'		=> 'Votre calendrier a été effacé',
       'eraseFailed'		=> 'Votre calendrier n\'a pas été efface',
       'cpasswordWrong' 	=> 'Erreur: mot de passe incorrect',
       'ipasserror'		=> 'n\'a pas réussi à ouvrir le fichier des mots de passe, essayer plus tard',
       'password_changed'	=> 'Votre mot de passe a été changé',
       'cannot_open'		=> 'Ne peut ouvrir',
       'Meeting_group'		=> 'Groupe de réunion',
       'updated'		=> 'modifie avec succès',
       'new_entries'		=> 'nouveaux événements ajoutes à votre calendrier',
       'Unknown_command'	=> 'Commande inconnue',
       
       
       # search page
       'Search_Calendar'	=> 'Rechercher sur le calendrier',
       'Topic'			=> 'Sujet',
       'SearchAll'		=> 'Rechercher tout',
       'Search_From'		=> 'Rechercher dans',
       'To'			=> 'jusqu\'à',
       'Search_Results' 	=> 'Résultats de la recherche',
       'CalendarReminder'	=> 'Rappel du calendrier',
	 
       # Greeting
       'WelcomeToWebCalendar'	=> 'Bienvenue à WebCalendar',
       'PleaseSelectACalendar'	=> 'Veuillez choisir un calendrier',
       'PleaseEnterCalendarName'=> 'Entrer le nom de votre calendrier',

       #download
       'notAllowedToDownload'	=> 'Vous n\'êtes pas autorisé à télécharger ce calendrier',
	 
       #logout
       'AuthNotRequired'	=> 'Note: pas besoin d\'une autorisation pour voir des calendriers publics',
       'logoutInstruction'	=> 'Pour terminer votre session, appuyer sur le bouton de déconnexion. Quand la page de connexion apparaît,<br> utilisez \'nobody\': Aucun Mot de passe nécessaire.',
       'loginInstruction'	=> 'Pour ouvrir une session sous un nom différent, appuyer sur le bouton de connexion',
       'You_ve_logout'		=> 'Votre session est maintenant terminée',
       'access_denied'		=> 'accès refuse',
       'login'			=> 'Se connecter',

       #compare
       'CompareCalendars'	=> 'Comparer les calendriers',
       'Enter_calendar_names'	=> 'Entrer noms de calendriers',
       'or_meeting_group'	=> 'ou en groupe de réunion',
       'EventsTable'		=> 'Table d\'événements',
       'Name'			=> 'Nom',
       'Events' 		=> 'événements',
       'ForegroundColor'	=> 'Couleur avant plan',
       'BackgroundColor'	=> 'Couleur arrière plan',

       # msg in the main
       'accessAnotherCal'	 => 'Pour accéder à un autre calendrier,',

       # Some missing phrases and addons ...
       'Close'			=> 'Fermer',
       'ShowCombinedCalendar'	=> 'Afficher calendrier combiné',
       'CombinedCalendar'	=> 'Calendrier combiné',
       'Participants_are_allowed_to' => 'Participants peuvent',
       'View_only'		=> 'Visualiser seulement',
       'Edit'			=> 'éditer',
       'EditAndDelete'		=> 'éditer et Effacer',
       'Updated_calendars'	=> 'Mise à jour des calendriers suivants',
       'NotAllowedToUpdate'	=> 'Vous n\'avez pas l\'autorisation de mettre à jour ces calendriers',
       'invalid_date'		=> 'Date invalide',

       'Schedule'		=> 'Programmer réunion',	    # as in schedule an appointment on calendar mzou
       'onCalendar'		=> 'sur le calendrier', 	 #
       'DeleteForward'		=> 'Effacer les événements futurs',
       'All'			=> 'Tous',
       'SearchSubjectEmpty'	=> 'Inscrire un sujet SVP',
       'Start_date'		=> 'Date de début',
       'is_after_due_date'	=> 'postérieure à la date de fin',
       'Invalidusername'	=> 'Nom d\'utilisateur invalide',
       'Protected'		=> '==protégé==',
       'Invalidcalendarname'	=> 'Nom du calendrier invalide',
       'Couldnotfindcalendar' => 'Calendrier inexistant',
       'Invalidspooldir'      => 'Répertoire de données invalide',

       #===== need translation !!!
       'ListView'	      => 'Vue Liste',
       'BlockView'	      => 'Vue Tableau',

       # address book stuff
       'AddressBook'	       => 'Carnet d\'Adresses',
       'AddressBookEditor'     => 'éditeur de Carnet d\'adresses',
       'AddressBookUpdated'    => 'Carnet d\'adresses modifie',
       'BackToAddressBook'     => 'Cliquer ici pour retourner à votre carnet d\'adresses',
       'FirstName'	       => 'Prénom',
       'LastName'	       => 'Nom',
       'Address'	       => 'Adresse',
       'Phone'		       => 'Téléphone',
       'Fax'		       => 'Fax',
       'Info'		       => 'Info',
       'Affiliation'	       => 'Affiliation',
       'Where'			=> 'Où;',
       'Priority'	       => 'Priorité',
       'Diary'		       => 'Journal',
       'DiaryUpdated'	       => 'Journal mis à jour',
       'ReadDiary'	       => 'Lire Journal',	
       'From'		       => 'De',
       'PlainText'	       => 'Sur tout le texte',
       'Html'		       => 'Html',
       'SearchDiary'	       => 'Rechercher dans le Journal',
       'SearchFor'	       => 'Rechercher',
       'NeedAuth2Proceed'      => 'Autorisation nécessaire pour voir ou éditer. Cliquer sur \'connexion\' pour continuer, ou cliquer sur le bouton pour un retour à votre calendrier',

       # Priority of ToDo tasks
       'Urgent' 	       => 'Urgent',
       'High'		       => 'Important',
       'Medium' 	       => 'Relativement important',
       'Low'		       => 'Peu important',

       # find calendar names
       'FindCalNames'	       => 'Rechercher Calendriers',

       # overlapping 
       'AllowOverlap'	       => 'Chevauchement des événements',
       'GoBack' 	       => 'Retour',  #

       'OverlapInstr'	       => 'Cet événement est refuse, car il entre en conflit avec certains autres événements (voir table).
Si vous voulez vraiment l\'insérer dans votre horaire, cocher <b>O</b> pour permettre le chevauchement.',

       'signup' 		=> 'S\'enregistrer',
       'Invalidpassword'	=> 'Mot de passe invalide',
       'olduserInstruction'	=> 'Je possède un calendrier sur ce système',
       'newuserInstruction'	=> 'Je suis un nouvel utilisateur',
       'PleaseLogin'		=> 'Autorisation nécessaire. Veuillez d\'abord vous connecter.',
       'NextNew'		=> 'Inscrire et passer au suivant',
       'RememberIDPswd' 	=> 'Mémoriser le nom d\'utilisateur et le mot de passe',
       'global' 		=> 'global', # mark global meeting group
       'groupnametaken' 	=> 'Ce nom de groupe est déjà utilisé. Choisir un autre nom',
       'deleteEventsBefore'	=> 'Détruire tous les événements avant le',
       'AutoStart'		=> 'Auto-démarrage de WebCalendar',
       'Readers'		=> 'Lecteurs',
       'ListReaders'		=> 'Liste des utilisateurs autorisés à consulter votre calendrier',
       'Print'			=> 'Impression',
       'mailVcal'		=> 'Joindre les données V-Calendar dans les rappels par courriel',
       'FriendsEmail'		=> 'Adresse(s) de(s) ami(s)',
       'PersonalMessage'	=> 'Ajouter un message personnel',
       'Mail2Friend'		=> 'Envoyer à un ami',
       'MailSentTo'		=> 'Ceci a été envoyé à ',
       'Location'		=> 'Lieu',
       # the next line is used in a confirmation popup when a user is modifying 
       # an repeating event. The date displayed is the current date, normally 
       # it is not the initial starting date of the event.
       'CalendarFormat' 		=> 'Format de données du calendrier',
       'CalendarFile'			=> 'Fichier',
       'SetupGreetingC' 	=> 'Utiliser la page d\'options pour terminer le paramétrage de votre calendrier.',
       'Email2Selected' 	=> 'Envoyer un courriel à toutes les adresses sélectionnées',
       'AddNewEmail'		=> 'Ajouter des adresses de courriel à mon carnet d\'adresses',
       'ContactP'		=> 'Personne à contacter',
       'ContactE'		=> 'Courriel du contact',
       'DailyReminder'		=> 'Envoyer des rappels quotidiens',
       'CompletedTasks' 	=> 'Tâches complétées',
       'PendingTasks'		=> 'Tâches en cours',
       'Import2Cal'		=> 'Importer cet événement dans le calendrier',
       'ViewOnly'		=> 'Ou choisir un calendrier à consulter',
       'newLogin'		=> 'Ou se connecter sous un autre nom', 
       'QuickAdd'		=> 'Ajout rapide',
       'Event'			=> 'événement',
       'TodoList'		=> 'Liste «a faire»',
       'MarkComplete'		=> 'Noter comme fait',
       'DeleteChecked'		=> 'Supprimer ce qui a été coché',
       'AddNewTask'		=> 'Ajouter une nouvelle tâche',
       'TaskManager'		=> 'Gestionnaire de tâches',
       'WarnInvitee'		=> 'Êtes-vous sur de vouloir inscrire cet événement dans ces calendriers ?',
       'creationDisabled'	=> 'Désolé, votre administrateur a désactivé ce calendrier. Adressez-lui une demande de réactivation.',
       'RequestRSVP'		=> 'Répondre SVP',
       'invitationAccepted'	=> 'Accepte',
       'invitationDeclined'	=> 'Refuse',
       'AttendanceConfirmation' => 'En attente de confirmation de la réunion',
       'AcceptInvitation'	  => 'Accepter cette invitation',
       'DeclineInvitation'	=> 'Décliner cette invitation',

       'Undecided'		=> 'non décidé',
       'Category'		=> 'Catégorie',
       'Speaker'		=> 'Intervenant',
       'Header' 		=> 'Entête',
       'Footer' 		=> 'Bas de page',
       'HeaderFooter'		=> 'Entrez le code HTML des entête et bas de page à utiliser sur les listes',
       'MiscInfo'		=> 'Divers',
       'Description'		=> 'Description',
       'AllDay' 		=> 'Toute la journée',
       'Tomorrow'		=> 'Demain',
       'ThisWeek'		=> 'Cette semaine',
       'ThisMonth'		=> 'Ce mois-ci',
       'Keyword'		=> 'Mot-clé',
       'NoEvents'		=> 'Aucun événement',
       'EditThis'		=> 'éditer cet événement',
       'recurFormat'		=> 'Se produit %s pour %d fois, à partir du %s.', # used in formating
       'taskDoneFormat' 	=> 'Termine par %s le %s à %s', # formating

       'warnModify'	       => '
Vous êtes en train de modifier un événement répétitif. La date indiquée est
différente de la date originale.  Si vous procédez à cette modification,
l\'événement prendra effet depuis cette nouvelle date et tous les événements
connus avant cette date ainsi que des données importantes -confirmation de
réunion par exemple- seront perdues. Confirmer votre intention SVP.

La modification d\'une seule occurrence d\'un événement répétitif est impossible.
Une façon de contourner le problème consiste à détruire cette occurrence et en
inscrire une nouvelle.

La date originale de cet événement est le ',

       'gEventError'		=> 'Vous avez essaye de détruire certaines occurrences d\'un événement répétitif affectant un groupe sans une autorisation appropriée.
Ceci n\'est pas admis car cela risque de désynchroniser votre calendrier des autres calendriers du groupe. Vous pouvez cependant détruire toutes les
occurrences de cet événement de votre calendrier en appuyant sur le bouton "Effacer toutes les occurrences" dans l\'éditeur d\'événements',

       'Cite'		       => 'Ville',
       'Astate'		       => 'état/Département/Province',
       'Zig'		       => 'Code postal',
       'Country'	       => 'Pays',

       
       'ResetPasswd'	       => 'Changer le mot de passe de l\'utilisateur',
       'File'		       => 'Fichier',
       'AlreadyOnCalendar'     => 'Les entrées suivantes sont déjà dans votre calendrier. Elles sont ignorées.',
       'ImportFileTitle'	 => 'Importer depuis un fichier l\'étendard sur votre ordinateur',
       'ImportFileInstruction'	 => 'Pour importer depuis un fichier l\'étendard sur votre ordinateur, entrer le chemin complet du fichier l\'étendard dans la boîte d\'entrée puis cliquer sur Envoyer.
       Si vous n\'estes pas sur du chemin, cliquez sur le bouton Parcourir pour retrouver votre fichier.',
       'ImportVcal'		=> 'Importer les données V-Calendar de cet événement',
       'ImportVcalInstruction'	=> 'Ou couper/coller votre entrée vcalendar dans la zone de texte et cliquer sur Envoyer',


       # new phrases

       'DetailedWorkingHours'	=> 'Détail des heures de travail quotidiennes',
       'SelectAttendee' => 'Les noms des calendriers, adresses email, groupes de réunion et leurs combinaisons peuvent être utilisés pour inscrire des noms de participants aux événements.
       Vous pouvez sélectionner les noms des calendriers de la liste sur la gauche, ou bien les taper dans la zone de texte ci-dessus. Les adresses Email doivent être entrées dans la zone de texte.
       Les groupes de réunion, s\'ils existent doivent être sélectionnés dans le menu de sélection \'Groupe de réunion\'. Vous pouvez aussi entrer les groupes dans la zone de texte.
       Les éléments dans la zone de texte doivent être séparés par des espaces ou des virgules.',

       'MkEditorListInstruction' => 'Pour permettre à vos collègues d\'éditer votre calendrier, sélectionnez les dans la liste à gauche (touche CTRL pour choix multiple). Vous pouvez
       aussi taper le nom de leurs calendriers dans la zone de texte ci-dessus.',

       'MkReaderListInstruction' => 'Si votre calendrier est protégé, les autres utilisateurs ne pourront pas le lire. Vous pouvez donner à certains utilisateurs la permission de lire votre
       calendrier en créant une liste de lecteurs. Cette liste contient les noms de calendriers que vous sélectionnez dans la liste à gauche ou le nom entre dans la zone de texte ci-dessus.',

       'MkGroupInstruction'=> 'Les noms de calendrier ou les adresses email peuvent être utilisées pour identifier les membres d\'un groupe de travail. Vous pouvez sélectionner les noms dans la liste
       à gauche, ou les taper dans la zone de texte ci-dessus. Les adresses email doivent être entrées dans la zone de texte.',
       'Contacts'	   => 'Contacts',
       'Tasks'		   => 'Tâches',
       'Day'		   => 'Jour',
       'Week'		   => 'Semaine',
       'Month'		   => 'Mois',
       'Year'		   => 'Année',
       'OffDutyHours'	   => 'En dehors des heures de travail',
       'AddNewAddress'	   => 'Ajouter une nouvelle adresse',
       'HeaderColor'	   => 'Couleur des entêtes',
       'Never'		   => 'Jamais',
       'OverlapNotAllowed' => 'Malheureusement, le chevauchement d\'événements n\'est pas autorisé dans les calendriers suivants.',
       'Notes'		   => 'Notes',
       'PostIt' 	   => 'Post It',   # as in post it notes
       'Title'		   => 'Titre',
       'AddNewNote'	   => 'Ajouter une nouvelle Note',

       'InterestedCalendars' => 'Liste des calendriers que vous allez lire ou éditer certainement.',
       'CalendarListInstruction' => 'Si vous ne voulez pas voir toute la liste de calendriers dans le menu de sélection de calendrier, vous pouvez créer une liste courte ici. Entrez le nom des
       calendriers que vous voulez voir dans la zone de texte ci-dessus, ou sélectionnez les dans la liste à gauche. La liste sélectionnée sera utilisée à chaque fois
       qu\'une liste de calendrier est affichée.',

       'MasterHeadInput'  => 'Dans la zone titre, choix du calendrier par',
       'TextEntry'	  => 'Entrée de texte',
       'PulldownMenu'	  => 'Menu déroulant',

       'LockWarning'	  => 'Votre calendrier a été modifie pendant le traitement de votre requête. Par sécurité votre requête est rejetée. Veuillez retourner en
       arrière puis recommencer svp.',

       'IUpload'	  => 'Téléversement d\'image',
       'FUpload'	  => 'Téléversement de fichier',
       'IUploadInstruction' => 'Pour téléverser un fichier d\'image de votre disque, entrez le chemin d\'accès complet vers ce fichier dans la zone de texte puis cliquez sur le bouton \'Soumettre\'. Si
       vous n\'êtes pas sur du chemin, cliquez sur le bouton \'Parcourir\' pour retrouvez votre fichier.',
       'IUploadAck'	  => 'Image téléversée. Pour insérer une image dans le titre ou la description d\'un événement, couper et coller la ligne suivante dans la zone de texte
       correspondant dans l\éditeur d\'événement. Attention il est possible que les images soient soumises à l\'approbation de l\'administrateur du site, auquel cas elles ne sont pas
       immédiatement visibles par les utilisateurs.',
       'ReviewUI'  => 'Révision des images téléversée. de l\'utilisateur',
       'ApproveChecked' => 'Sélection approuvée',
       'RejectChecked' => 'Sélection rejetée',
       'Export2Vcal'   => 'Exporter votre calendrier au format vCal',
       'CreateNewCal'  => 'Créer un nouveau Calendrier',
       'UsableImgs'    => 'Images utilisables',
       'UImageInst'    => 'Pour insérer une image dans le titre ou la description d\'un événement, couper et coller son nom (en incluant les raccourcis images de type \\^o^/) dans la zone de texte
       correspondant dans l\éditeur d\'événement.',
	'CheckAll'     => 'Tout cocher',
	'UncheckAll'   => 'Tout décocher',
	'Export2VCard' => 'Exporter votre carnet d\'adresses vers une vCard',
	'ImportVcard'  => 'Importer des informations de contact depuis une vcard',
	'ImportVCardTitle'  => 'Importer depuis un fichier vCard de votre ordinateur.',
	'ImportVcardInstruction' => 'Ou coupez et collez votre entrée vcard dans la zone de texte et cliquez sur le bouton \'Envoyer\'',
	'ImportVcardFileInstruction'   => 'Pour uploader un fichier vCard de votre disque, entrez le chemin d\'accès complet vers ce fichier dans la zone de texte puis cliquez sur le bouton \'Soumettre\'. Si
       vous n\'êtes pas sur du chemin, cliquez sur le bouton \'Parcourir\' pour retrouvez votre fichier.',
	'AlreadyInAddressbook' => 'Les entrées suivantes sont déjà dans votre carnet d\'adresses.',
	'DpyETimeAs' => 'Heures des événements',
	'MasterheadTabs' => 'Zone des onglets',

	'DeferConfirmation'	=> 'Retarder la confirmation',
	'Unconfirmed'		=> 'Non confirme',

	'SendMailUsing' 	=> 'Envoi de mail en utilisant', # html, txt or vcal
	 # used as in
	 # send mail <> immediately or <> <hours> before event
	'Sendmail'		=> 'Envoyer mail',
	'immediately'		=> 'immédiatement',
	'or'			=> 'ou',
	'beforeEvent',		=> 'avant l\'événement',
	'Cancelled'		=> 'annule',

	'AddNewEntry'		=> 'Ajouter une nouvelle entrée',
	'SearchNotes'		=> 'Rechercher dans les Notes',
	'SearchAddress' 	=> 'Rechercher dans le carnet d\'adresses',

	'Week_begins_on'	=> 'La semaine commence le',
	'StartDate'		=> 'Date de début',
	'DueDate'		=> 'Date de fin',
	'DueTime'		=> 'Heure de fin',
	'Overdue'		=> 'Échéance dépassée',
	'EventDates'		=> 'Dates des événements',

	'SpecialEvents' 	=> 'Événement Spécial',
	'RemindForwardNewTask'	=> 'Activer le rappel pour les nouvelles tâches',
	'DispCompletedTasks'	=> 'Afficher les tâches terminées sur le calendrier',
	'TaskOptions'		=> 'Options des tâches',
	'DoneOn'		=> 'Fait le %s par %s', # used to display completed tasks, like 'Done on 03/19/2002',

	'DetailedView'		=> 'Vue détaillée',
	'CombinedView'		=> 'Vue combinée',
	'BannerView'		=> 'Vue Bannière ',
	'TooltipDelay'		=> 'Délai d\'affichage des astuces en millisecondes',
	'DayViewOptions'	=> 'Options de la vue du jour',
	'More'			=> 'Plus',

	'G_A_Notes'		=> 'Donner accès aux notes de',
	'G_A_Address'		=> 'Donner accès au carnet d\'adresse de',
	'G_A_Diary'		=> 'Donner accès au journal de',
	'OwnerOnly'		=> 'Propriétaire seulement',
	'Everyone'		=> 'Tout le monde',

	'DpyAuthorName' 	=> 'Affichage du nom', # real name, calendar name or both
	'RealName'		=> 'Nom',
	'CalendarName'		=> 'Nom du calendrier',
	'Rname_Cname'		=> 'Nom & Nom du calendrier',

	'DescriptiveName'	=> 'Nom descriptif',
	'OwnerName'		=> 'Nom du Propriétaire',
	'OwnerEmailAddress'	=> 'Email du Propriétaire',
	'OwnerHomepage' 	=> 'Url du Propriétaire',

	'Label' 		=> 'Label',
	'PredefineColorPairs'	=> 'Prédéfinir les couleurs texte/fond pour',

	#========= The 16 common colors used on the web==================
	'Black'  => 'Noir'  ,	    #	   #000000,
	'Silver' => 'Argent' ,	    #	   #C0C0C0,
	'Gray' => 'Gris'   ,	    #	   #808080,
	'White'  => 'Blanc'  ,	    #	   #FFFFFF,
	'Maroon' => 'Marron' ,	    #	   #800000,
	'Red'	 => 'Rouge'    ,    #	   #FF0000,
	'Purple' => 'Violet',	    #	   #800000,
	'Fuchsia'=> 'Fuchsia',	    #	   #FF00FF,
	'Green'  => 'Vert'  ,	    #	   #008000,
	'Lime'	 => 'Vert clair',   #	   #00FF00,
	'Olive'  => 'Vert Olive',   #	   #808000,
	'Yellow' => 'Jaune' ,	    #	   #FFFF00,
	'Navy'	 => 'Bleu marine',  #	   #000080,
	'Blue'	 => 'Bleu'   ,	    #	   #0000FF,
	'Teal'	 => 'Cyan fonce' ,  #	   #008080,
	'Aqua'	 => 'Bleu clair',   #	   #00FFFF,
	#=================================================================

	'Font'	=> 'Style de caractère',
	'DefineFonts'	   => 'Créer un style de caractère',
	'FontsStyles'	   => 'Styles des caractères',

	'DependentCals'    => 'Calendriers liés',
	'DepCalInstruction' => 'Liste tous les calendriers liés au votre. Par exemple, si vous avez un vidéo-projecteur dans une salle de conférence, sa disponibilité dépend de l\'accessibilité à cette
	salle. La réservation du projecteur implique la réservation de la salle. Dans cet exemple, le calendrier du projecteur est lié au calendrier de la salle. Les événements prévus sur le calendrier du projecteur
	seront automatiquement envoyés sur le calendrier de la salle de conférence.',

     'ListAuthors'	=> 'Accepter l\'événement de la part de ',
     'AuthorInstruction' => 'Par défaut, tout le monde sur le système WebCalendar est autorisé à créer des événements de groupe sur votre calendrier. Pour changer ce comportement, sélectionner dans la liste les
     calendriers autorisés à créer des événements de groupe sur votre calendrier. Si vous ne souhaitez pas accepter des événements de groupe, sélectionnez uniquement votre calendrier dans la liste.
     Si aucun calendrier est sélectionné, tout le monde est autorisé à créer des événements sur votre calendrier.',
   'EventInterval'	 => 'Intervalle des événements par défaut',
   'PublicOpen' 	    => 'Ouvert au public',
   'PublicModerated'	    => 'Ouvert au public - modéré',

   'Pending'		    => 'En attente',
   'Mail2Author'	    => 'Mail à l\'auteur',

   'ClearCache' 	    => 'Vider le Cache',
   'color2'		    => 'Couleur de fond secondaire pour le vue par mois',

   'semails'		    => 'Ajouter la sélection à la liste au carnet d\'adresse',
   'addinvitee' 	    => 'Ajouter la sélection à la liste des invités',

   'Select'		    => 'Sélectionner',
   'IgnoreCCal' 	    => 'Ignorer les calendriers mutualisés',
   'ResrcCal'		=> 'Est-ce un calendrier affecté à une ressource (salle,...)?',
   'AllowAP'            => 'Si le calendrier est public, autorisez vous le postage par un anonyme?',
   'orIndefinitely'     => 'ou indéfiniment', # used as in: occurs daily for 5 times or indefinitely
   'remindOnce'		=> 'Si cet événement se répète, me le rappeler seulement une fois',
   'applyReminders'     => 'Appliquer les rappels par défaut à cet événement?',

   'NotifyAP'           => 'Si le calendrier est public-modéré, envoyez un courriel au propriétaire après chaque postage?',
#   'NotifyAP'           => 'If this is a moderated public calendar, email owner upon new posting?',
   'Preferences'        => 'Préférences',   
   'Appearance'         => 'Apparence',
   'TabColor'           => 'Couleur arrière plan des onglets',
   'TabHColor'          => 'Couleur arrière plan d\'un \'survol\'',  
   'StyleSheet'		=> 'Feuille de style',
   'OrTimeOffset'	=> 'ou spécifiez le décalage entre l\'heure locale et celle du serveur (+-HH:MM)', 
   'ServerTime'		=> 'La date/heure actuelle du serveur est',
   'catfilter'		=> 'Permettez vous le filtrage par catégorie?',
   'popdetail'		=> 'Voulez vous afficher le détail des événements dans un fenêtre popup?',
   'WeekViewOptions'    => 'Options de la vue Semaine',
   'orUntilDate'	=> 'ou jusqu\'à cette date',

   'Freebusytable'	=> 'Tableau des disponibilités',
   'VirtualGroup'	=> 'Groupe virtuel',
   'wcf'		=> 'celui qui vient en premier',
   'pendmsg'		=> 'Avertir l\'auteur de votre décision par courriel',

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

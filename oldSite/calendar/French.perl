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
       'February'		=> 'F�vrier',
       'March'			=> 'Mars',   
       'April'			=> 'Avril',   
       'May_'			=> 'Mai',
       'June'			=> 'Juin',    
       'July'			=> 'Juillet',	 
       'August' 		=> 'Ao�t',
       'September'		=> 'Septembre',
       'October'		=> 'Octobre',
       'November'		=> 'Novembre',
       'December'		=> 'D�cembre',
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
       'MonthlyByDate'		=> 'Chaque mois-m�me date',
       'MonthlyByWeekday'	=> 'Chaque mois-m�me jour',
       'Yearly' 		=> 'Annuel',
       'MTWThF' 		=> 'Du Lundi au Vendredi',
       'MWF'			=> 'Les Lun-Merc-Vend',
       'TTh'			=> 'Les Mardi-Jeudi',
       'YearlyByMonthWeekday'	=> 'Annuel-m�me jour et mois',
       'EveryOtherDay'		=> 'Chaque autre jour',
       'Every3rdDay'		=> 'Chaque 3�me jour',
       'Every4thDay'		=> 'Chaque 4�me jour',
       'Every5thDay'		=> 'Chaque 5�me jour',
       'Every6thDay'		=> 'Chaque 6�me jour',

       # event types
       'Appointment'		=> 'Rendez-vous',
       'Todo'			=> 'T�che',
       'Meeting'		=> 'R�union',
       'Special'		=> 'Sp�cial',

       # option button names
       'CalendarOptions'	=> 'Options du Calendrier',
       'Compare'		=> 'Comparer',
       'Search' 		=> 'Rechercher',
       'GotoDate'		=> 'Aller � cette date',
       'Previous'		=> 'Pr�c�dent',
       'Today'			=> 'Aujourd\'hui',
       'Next'			=> 'Suivant',
       'Options'		=> 'Options',
       'Admin'			=> 'Administration',
       'Logout' 		=> 'D�connexion',
       'DayVieiw'		=> 'Vus du Jour',
       'WeekView'		=> 'Vue de la Semaine',
       'MonthView'		=> 'Vue du Mois',
       'YearView'		=> 'Vue de l\' Ann�e',
       
       # messages on the setup screen
       'SetupYourCalendar'	=> 'Param�trer votre calendrier',
       'YourCalendarName'	=> 'Le nom de votre calendrier',
       'YourEmailAddress'	=> 'Votre Courriel',
       'YourName'		=> 'Votre Nom',
       'Password'		=> 'Mot de passe',
       'RetypePassword' 	=> 'Confirmez le mot de passe',
       'CalendarType'		=> 'Type de Calendrier',
       'Public' 		=> 'Public',
       'Private'		=> 'Priv�',
       'ForPrivateCalendar'	=> 'Pour calendrier priv�',
       'OthersSeeTextTime'	=> 'Visible - Texte et Heure',
       'OthersSeeTitle'         => 'Visible - Titre seulement',
       'OthersSeeTimeOnly'	=> 'Visible - Heure seulement',
       'OthersSeeNothing'	=> 'Rien de visible au public',
       'PublicCalendar' 	=> 'Calendrier public',
       'Submit' 		=> 'Envoyer',
       'Cancel' 		=> 'Annuler',
       'TheName'		=> 'Le nom',
       'HasBeenTaken'		=> 'est d�j� utilis�',
       'PasswordMismatch'	=> 'Les mots de passe ne sont pas identiques',
       'TryAgain'		=> 'Essayer de nouveau',
       'EmailIncomplete'	=> 'Votre adresse courriel est incompl�te',
       'CannotCreateCalendar'	=> 'Ne peut pas cr�er votre calendrier. Le nom doit �tre un mot valable',
       'CannotWriteInfoFile'	=> 'Erreur d\'�criture - fichier info',
       'CannotWriteDataFile'	=> 'Erreur d\'�criture - fichier data',
       'CannotWritePasswordFile'=> 'Erreur d\'�criture - fichier des mots de passe',
       'Congratulations'	=> 'F�licitations',
       'SetupGreetingA' 	=> 'Votre calendrier est enregistre.  Ajoutez-le � vos favoris',
       'SetupGreetingB' 	=> 'N\'oubliez pas votre mot de passe!! Vous en aurez besoin pour g�rer votre calendrier',
       'HaveToSupplyCalendarName' => 'Vous devez donner un nom � votre calendrier',
       'PleaseDoNotUseYourUnixAccountPassword' => 'Veuillez ne pas utiliser le mot de passe de votre compte r�seau',
       
       
       # Event Editor Messages
       'EventEditor'		=> '�diteur - �v�nement',
       'AppointmentEditor'	=> '�diteur - Rendez-vous',
       'ToDoEditor'		=> '�diteur - T�che',
       'MeetingEditor'		=> '�diteur - R�union',
       'SpecialEditor'		=> '�diteur - �v�nement sp�cial',
       'AuthRequired'		=> 'Attention, vous devez d�tenir un droit d\'acc�s pour �diter ce calendrier',
       'Appointment'		=> 'Rendez-vous',
       'CurrentEvents'		=> '�v�nements du jour',
       'Time'			=> 'Heure',
       'What'			=> 'Quoi',
       'Date'			=> 'Date',
       'Start'			=> 'D�but',
       'End'			=> 'Fin',
       'Details'		=> 'D�tails',
       'Colors' 		=> 'Couleurs',
       'Privacy'		=> 'Domaine priv�',
       'Frequency'		=> 'Fr�quence',
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
       'Insert' 		=> 'Ins�rer',
       'InsertAsNew'		=> 'Ins�rer comme Nouveau',
       'Modify' 		=> 'Modifier',
       'DeleteThisOne'		=> 'Supprimer s�lection',
       'DeleteAll'		=> 'Supprimer tout',
       'Delete' 		=> 'Supprimer',
       'Due'			=> 'Pour le', # as in Due Date
       'TaskDone'		=> 'T�che termin�e',
       'RemindForward'		=> 'Rappel continu',
       'Yes'			=> 'Oui',
       'No'			=> 'Non',
       'Y'			=> 'O',
       'N'			=> 'N',
       'ToDo'			=> 'T�che',
       'Meeting'		=> 'R�union',
       'Participants'		=> 'Participants',
       'none'			=> 'Rien',
       'MailToAll'		=> 'Envoyer � tous',
       'FindConflict'		=> 'Recherche Conflit',
       'NoTimeEvent'		=> '�v�nement sp�cial (sans heure)',
       'Fg'			=> 'Av',
       'Bg'			=> 'Ar',
       'Error'			=> 'Erreur',
       'HasError'		=> 'Une erreur est survenue sur votre requ�te',
       'ListParticipants'	=> 'Groupe de r�union, nom du calendrier ou adresse courriel des participants. Mise � jour automatique de leurs calendriers',
       'ConflictTable'		=> 'Table de conflit',
       'Conflict'		=> 'Conflit',
       'Table'			=> 'Table',
       'You'			=> 'Vous',
       'NotAllowedToModify'	=> 'n\'�tes pas autoris� � modifier cette t�che',
       'NotAllowedToEdit'	=> 'n\'�tes pas autoris� � �diter ce calendrier',
       'Warning'		=> 'Attention',
       'NoRemindForward'	=> 'On ne peut pas faire de rappels pour des t�ches r�p�titives',
       'Acknowledgement'	=> 'Accuse de r�ception',
       'UpdatedOK'		=> 'Mise � jour r�ussie de votre calendrier',
       'BackToCalendar' 	=> 'Retour � votre calendrier',
       'OpenFailed'		=> '�chec lors de l\'ouverture de votre calendrier',
       'NoCalendar'		=> 'Vous n\'avez aucun calendrier',
       
       # goto page
       'Goto_Date'		=> 'Aller � cette date',
       'Goto'			=> 'Aller',
       'SelectDate'		=> 'Choisir la date',
       'View'			=> 'Voir',
       'Go'			=> 'Ex�cuter', # function as submit
       'Set'			=> 'Choisir', # as in set options
       
       # set options page
       'My_day_starts_at'	=> 'Ma journ�e commence �',
       'ends_at'		=> 'et se termine �',
       'Interval'		=> 'Intervalle',
       'Week_starts_on',	=> 'La Semaine commence le ',
       'include_weekend',	=> 'Inclure les week-ends',
       'Date_Format'		=> 'Format Date',
       'Time_Format'		=> 'Format Heure',
       'Time_zone'		=> 'Fuseau Horaire',
       'Default_view'		=> 'Vue par d�faut',
       'Default_Reminders'	=> 'Rappels par d�faut',
       'ListEditors'		=> 'Utilisateurs pouvant �diter votre calendrier',
       'Editors'		=> '�diteurs',
       'Email'			=> 'Courriel',
       'Default'		=> 'D�faut',
       'Homepage'		=> 'Page d\'accueil',
       'Language'		=> 'Langue',
       
       # admin page
       'Administration' 	=> 'Administration',
       'adminDisabled'		=> 'Pas d\'administration pour un calendrier public',
       'Change_Password'	=> 'Changer de mot de passe',
       'Old_Password'		=> 'Ancien mot de passe',
       'New_Password'		=> 'Nouveau mot de passe',
       'New_Password_Again'	=> 'Confirmer le nouveau mot de passe',
       'to_be_used_by_meeting_editor' => '� utiliser par l\'�diteur de r�union',
       'Existing_Groups'	=> 'Groupes existants',
       'Group_Name'		=> 'Nom du groupe',
       'ListGroupMembers'	=> 'Nom du calendrier ou adresse de courriel des participants',
       'Merge_Calendars'	=> 'Fusionner ces calendriers',
       'CalendarNames'		=> 'Calendrier ou nom de fichier',
       'EraseCalendar'		=> 'Effacer mon calendrier',
       'DeleteCalendar' 	=> 'Supprimer ce calendrier du syst�me',
       'errorPerm'		=> 'Autorisation refus�e',
       'calDeleted'		=> 'Votre calendrier a �t� effac�',
       'ThankYou4Using' 	=> 'Merci d\'avoir utilis�',
       'calErased'		=> 'Votre calendrier a �t� effac�',
       'eraseFailed'		=> 'Votre calendrier n\'a pas �t� efface',
       'cpasswordWrong' 	=> 'Erreur: mot de passe incorrect',
       'ipasserror'		=> 'n\'a pas r�ussi � ouvrir le fichier des mots de passe, essayer plus tard',
       'password_changed'	=> 'Votre mot de passe a �t� chang�',
       'cannot_open'		=> 'Ne peut ouvrir',
       'Meeting_group'		=> 'Groupe de r�union',
       'updated'		=> 'modifie avec succ�s',
       'new_entries'		=> 'nouveaux �v�nements ajoutes � votre calendrier',
       'Unknown_command'	=> 'Commande inconnue',
       
       
       # search page
       'Search_Calendar'	=> 'Rechercher sur le calendrier',
       'Topic'			=> 'Sujet',
       'SearchAll'		=> 'Rechercher tout',
       'Search_From'		=> 'Rechercher dans',
       'To'			=> 'jusqu\'�',
       'Search_Results' 	=> 'R�sultats de la recherche',
       'CalendarReminder'	=> 'Rappel du calendrier',
	 
       # Greeting
       'WelcomeToWebCalendar'	=> 'Bienvenue � WebCalendar',
       'PleaseSelectACalendar'	=> 'Veuillez choisir un calendrier',
       'PleaseEnterCalendarName'=> 'Entrer le nom de votre calendrier',

       #download
       'notAllowedToDownload'	=> 'Vous n\'�tes pas autoris� � t�l�charger ce calendrier',
	 
       #logout
       'AuthNotRequired'	=> 'Note: pas besoin d\'une autorisation pour voir des calendriers publics',
       'logoutInstruction'	=> 'Pour terminer votre session, appuyer sur le bouton de d�connexion. Quand la page de connexion appara�t,<br> utilisez \'nobody\': Aucun Mot de passe n�cessaire.',
       'loginInstruction'	=> 'Pour ouvrir une session sous un nom diff�rent, appuyer sur le bouton de connexion',
       'You_ve_logout'		=> 'Votre session est maintenant termin�e',
       'access_denied'		=> 'acc�s refuse',
       'login'			=> 'Se connecter',

       #compare
       'CompareCalendars'	=> 'Comparer les calendriers',
       'Enter_calendar_names'	=> 'Entrer noms de calendriers',
       'or_meeting_group'	=> 'ou en groupe de r�union',
       'EventsTable'		=> 'Table d\'�v�nements',
       'Name'			=> 'Nom',
       'Events' 		=> '�v�nements',
       'ForegroundColor'	=> 'Couleur avant plan',
       'BackgroundColor'	=> 'Couleur arri�re plan',

       # msg in the main
       'accessAnotherCal'	 => 'Pour acc�der � un autre calendrier,',

       # Some missing phrases and addons ...
       'Close'			=> 'Fermer',
       'ShowCombinedCalendar'	=> 'Afficher calendrier combin�',
       'CombinedCalendar'	=> 'Calendrier combin�',
       'Participants_are_allowed_to' => 'Participants peuvent',
       'View_only'		=> 'Visualiser seulement',
       'Edit'			=> '�diter',
       'EditAndDelete'		=> '�diter et Effacer',
       'Updated_calendars'	=> 'Mise � jour des calendriers suivants',
       'NotAllowedToUpdate'	=> 'Vous n\'avez pas l\'autorisation de mettre � jour ces calendriers',
       'invalid_date'		=> 'Date invalide',

       'Schedule'		=> 'Programmer r�union',	    # as in schedule an appointment on calendar mzou
       'onCalendar'		=> 'sur le calendrier', 	 #
       'DeleteForward'		=> 'Effacer les �v�nements futurs',
       'All'			=> 'Tous',
       'SearchSubjectEmpty'	=> 'Inscrire un sujet SVP',
       'Start_date'		=> 'Date de d�but',
       'is_after_due_date'	=> 'post�rieure � la date de fin',
       'Invalidusername'	=> 'Nom d\'utilisateur invalide',
       'Protected'		=> '==prot�g�==',
       'Invalidcalendarname'	=> 'Nom du calendrier invalide',
       'Couldnotfindcalendar' => 'Calendrier inexistant',
       'Invalidspooldir'      => 'R�pertoire de donn�es invalide',

       #===== need translation !!!
       'ListView'	      => 'Vue Liste',
       'BlockView'	      => 'Vue Tableau',

       # address book stuff
       'AddressBook'	       => 'Carnet d\'Adresses',
       'AddressBookEditor'     => '�diteur de Carnet d\'adresses',
       'AddressBookUpdated'    => 'Carnet d\'adresses modifie',
       'BackToAddressBook'     => 'Cliquer ici pour retourner � votre carnet d\'adresses',
       'FirstName'	       => 'Pr�nom',
       'LastName'	       => 'Nom',
       'Address'	       => 'Adresse',
       'Phone'		       => 'T�l�phone',
       'Fax'		       => 'Fax',
       'Info'		       => 'Info',
       'Affiliation'	       => 'Affiliation',
       'Where'			=> 'O�;',
       'Priority'	       => 'Priorit�',
       'Diary'		       => 'Journal',
       'DiaryUpdated'	       => 'Journal mis � jour',
       'ReadDiary'	       => 'Lire Journal',	
       'From'		       => 'De',
       'PlainText'	       => 'Sur tout le texte',
       'Html'		       => 'Html',
       'SearchDiary'	       => 'Rechercher dans le Journal',
       'SearchFor'	       => 'Rechercher',
       'NeedAuth2Proceed'      => 'Autorisation n�cessaire pour voir ou �diter. Cliquer sur \'connexion\' pour continuer, ou cliquer sur le bouton pour un retour � votre calendrier',

       # Priority of ToDo tasks
       'Urgent' 	       => 'Urgent',
       'High'		       => 'Important',
       'Medium' 	       => 'Relativement important',
       'Low'		       => 'Peu important',

       # find calendar names
       'FindCalNames'	       => 'Rechercher Calendriers',

       # overlapping 
       'AllowOverlap'	       => 'Chevauchement des �v�nements',
       'GoBack' 	       => 'Retour',  #

       'OverlapInstr'	       => 'Cet �v�nement est refuse, car il entre en conflit avec certains autres �v�nements (voir table).
Si vous voulez vraiment l\'ins�rer dans votre horaire, cocher <b>O</b> pour permettre le chevauchement.',

       'signup' 		=> 'S\'enregistrer',
       'Invalidpassword'	=> 'Mot de passe invalide',
       'olduserInstruction'	=> 'Je poss�de un calendrier sur ce syst�me',
       'newuserInstruction'	=> 'Je suis un nouvel utilisateur',
       'PleaseLogin'		=> 'Autorisation n�cessaire. Veuillez d\'abord vous connecter.',
       'NextNew'		=> 'Inscrire et passer au suivant',
       'RememberIDPswd' 	=> 'M�moriser le nom d\'utilisateur et le mot de passe',
       'global' 		=> 'global', # mark global meeting group
       'groupnametaken' 	=> 'Ce nom de groupe est d�j� utilis�. Choisir un autre nom',
       'deleteEventsBefore'	=> 'D�truire tous les �v�nements avant le',
       'AutoStart'		=> 'Auto-d�marrage de WebCalendar',
       'Readers'		=> 'Lecteurs',
       'ListReaders'		=> 'Liste des utilisateurs autoris�s � consulter votre calendrier',
       'Print'			=> 'Impression',
       'mailVcal'		=> 'Joindre les donn�es V-Calendar dans les rappels par courriel',
       'FriendsEmail'		=> 'Adresse(s) de(s) ami(s)',
       'PersonalMessage'	=> 'Ajouter un message personnel',
       'Mail2Friend'		=> 'Envoyer � un ami',
       'MailSentTo'		=> 'Ceci a �t� envoy� � ',
       'Location'		=> 'Lieu',
       # the next line is used in a confirmation popup when a user is modifying 
       # an repeating event. The date displayed is the current date, normally 
       # it is not the initial starting date of the event.
       'CalendarFormat' 		=> 'Format de donn�es du calendrier',
       'CalendarFile'			=> 'Fichier',
       'SetupGreetingC' 	=> 'Utiliser la page d\'options pour terminer le param�trage de votre calendrier.',
       'Email2Selected' 	=> 'Envoyer un courriel � toutes les adresses s�lectionn�es',
       'AddNewEmail'		=> 'Ajouter des adresses de courriel � mon carnet d\'adresses',
       'ContactP'		=> 'Personne � contacter',
       'ContactE'		=> 'Courriel du contact',
       'DailyReminder'		=> 'Envoyer des rappels quotidiens',
       'CompletedTasks' 	=> 'T�ches compl�t�es',
       'PendingTasks'		=> 'T�ches en cours',
       'Import2Cal'		=> 'Importer cet �v�nement dans le calendrier',
       'ViewOnly'		=> 'Ou choisir un calendrier � consulter',
       'newLogin'		=> 'Ou se connecter sous un autre nom', 
       'QuickAdd'		=> 'Ajout rapide',
       'Event'			=> '�v�nement',
       'TodoList'		=> 'Liste �a faire�',
       'MarkComplete'		=> 'Noter comme fait',
       'DeleteChecked'		=> 'Supprimer ce qui a �t� coch�',
       'AddNewTask'		=> 'Ajouter une nouvelle t�che',
       'TaskManager'		=> 'Gestionnaire de t�ches',
       'WarnInvitee'		=> '�tes-vous sur de vouloir inscrire cet �v�nement dans ces calendriers ?',
       'creationDisabled'	=> 'D�sol�, votre administrateur a d�sactiv� ce calendrier. Adressez-lui une demande de r�activation.',
       'RequestRSVP'		=> 'R�pondre SVP',
       'invitationAccepted'	=> 'Accepte',
       'invitationDeclined'	=> 'Refuse',
       'AttendanceConfirmation' => 'En attente de confirmation de la r�union',
       'AcceptInvitation'	  => 'Accepter cette invitation',
       'DeclineInvitation'	=> 'D�cliner cette invitation',

       'Undecided'		=> 'non d�cid�',
       'Category'		=> 'Cat�gorie',
       'Speaker'		=> 'Intervenant',
       'Header' 		=> 'Ent�te',
       'Footer' 		=> 'Bas de page',
       'HeaderFooter'		=> 'Entrez le code HTML des ent�te et bas de page � utiliser sur les listes',
       'MiscInfo'		=> 'Divers',
       'Description'		=> 'Description',
       'AllDay' 		=> 'Toute la journ�e',
       'Tomorrow'		=> 'Demain',
       'ThisWeek'		=> 'Cette semaine',
       'ThisMonth'		=> 'Ce mois-ci',
       'Keyword'		=> 'Mot-cl�',
       'NoEvents'		=> 'Aucun �v�nement',
       'EditThis'		=> '�diter cet �v�nement',
       'recurFormat'		=> 'Se produit %s pour %d fois, � partir du %s.', # used in formating
       'taskDoneFormat' 	=> 'Termine par %s le %s � %s', # formating

       'warnModify'	       => '
Vous �tes en train de modifier un �v�nement r�p�titif. La date indiqu�e est
diff�rente de la date originale.  Si vous proc�dez � cette modification,
l\'�v�nement prendra effet depuis cette nouvelle date et tous les �v�nements
connus avant cette date ainsi que des donn�es importantes -confirmation de
r�union par exemple- seront perdues. Confirmer votre intention SVP.

La modification d\'une seule occurrence d\'un �v�nement r�p�titif est impossible.
Une fa�on de contourner le probl�me consiste � d�truire cette occurrence et en
inscrire une nouvelle.

La date originale de cet �v�nement est le ',

       'gEventError'		=> 'Vous avez essaye de d�truire certaines occurrences d\'un �v�nement r�p�titif affectant un groupe sans une autorisation appropri�e.
Ceci n\'est pas admis car cela risque de d�synchroniser votre calendrier des autres calendriers du groupe. Vous pouvez cependant d�truire toutes les
occurrences de cet �v�nement de votre calendrier en appuyant sur le bouton "Effacer toutes les occurrences" dans l\'�diteur d\'�v�nements',

       'Cite'		       => 'Ville',
       'Astate'		       => '�tat/D�partement/Province',
       'Zig'		       => 'Code postal',
       'Country'	       => 'Pays',

       
       'ResetPasswd'	       => 'Changer le mot de passe de l\'utilisateur',
       'File'		       => 'Fichier',
       'AlreadyOnCalendar'     => 'Les entr�es suivantes sont d�j� dans votre calendrier. Elles sont ignor�es.',
       'ImportFileTitle'	 => 'Importer depuis un fichier l\'�tendard sur votre ordinateur',
       'ImportFileInstruction'	 => 'Pour importer depuis un fichier l\'�tendard sur votre ordinateur, entrer le chemin complet du fichier l\'�tendard dans la bo�te d\'entr�e puis cliquer sur Envoyer.
       Si vous n\'estes pas sur du chemin, cliquez sur le bouton Parcourir pour retrouver votre fichier.',
       'ImportVcal'		=> 'Importer les donn�es V-Calendar de cet �v�nement',
       'ImportVcalInstruction'	=> 'Ou couper/coller votre entr�e vcalendar dans la zone de texte et cliquer sur Envoyer',


       # new phrases

       'DetailedWorkingHours'	=> 'D�tail des heures de travail quotidiennes',
       'SelectAttendee' => 'Les noms des calendriers, adresses email, groupes de r�union et leurs combinaisons peuvent �tre utilis�s pour inscrire des noms de participants aux �v�nements.
       Vous pouvez s�lectionner les noms des calendriers de la liste sur la gauche, ou bien les taper dans la zone de texte ci-dessus. Les adresses Email doivent �tre entr�es dans la zone de texte.
       Les groupes de r�union, s\'ils existent doivent �tre s�lectionn�s dans le menu de s�lection \'Groupe de r�union\'. Vous pouvez aussi entrer les groupes dans la zone de texte.
       Les �l�ments dans la zone de texte doivent �tre s�par�s par des espaces ou des virgules.',

       'MkEditorListInstruction' => 'Pour permettre � vos coll�gues d\'�diter votre calendrier, s�lectionnez les dans la liste � gauche (touche CTRL pour choix multiple). Vous pouvez
       aussi taper le nom de leurs calendriers dans la zone de texte ci-dessus.',

       'MkReaderListInstruction' => 'Si votre calendrier est prot�g�, les autres utilisateurs ne pourront pas le lire. Vous pouvez donner � certains utilisateurs la permission de lire votre
       calendrier en cr�ant une liste de lecteurs. Cette liste contient les noms de calendriers que vous s�lectionnez dans la liste � gauche ou le nom entre dans la zone de texte ci-dessus.',

       'MkGroupInstruction'=> 'Les noms de calendrier ou les adresses email peuvent �tre utilis�es pour identifier les membres d\'un groupe de travail. Vous pouvez s�lectionner les noms dans la liste
       � gauche, ou les taper dans la zone de texte ci-dessus. Les adresses email doivent �tre entr�es dans la zone de texte.',
       'Contacts'	   => 'Contacts',
       'Tasks'		   => 'T�ches',
       'Day'		   => 'Jour',
       'Week'		   => 'Semaine',
       'Month'		   => 'Mois',
       'Year'		   => 'Ann�e',
       'OffDutyHours'	   => 'En dehors des heures de travail',
       'AddNewAddress'	   => 'Ajouter une nouvelle adresse',
       'HeaderColor'	   => 'Couleur des ent�tes',
       'Never'		   => 'Jamais',
       'OverlapNotAllowed' => 'Malheureusement, le chevauchement d\'�v�nements n\'est pas autoris� dans les calendriers suivants.',
       'Notes'		   => 'Notes',
       'PostIt' 	   => 'Post It',   # as in post it notes
       'Title'		   => 'Titre',
       'AddNewNote'	   => 'Ajouter une nouvelle Note',

       'InterestedCalendars' => 'Liste des calendriers que vous allez lire ou �diter certainement.',
       'CalendarListInstruction' => 'Si vous ne voulez pas voir toute la liste de calendriers dans le menu de s�lection de calendrier, vous pouvez cr�er une liste courte ici. Entrez le nom des
       calendriers que vous voulez voir dans la zone de texte ci-dessus, ou s�lectionnez les dans la liste � gauche. La liste s�lectionn�e sera utilis�e � chaque fois
       qu\'une liste de calendrier est affich�e.',

       'MasterHeadInput'  => 'Dans la zone titre, choix du calendrier par',
       'TextEntry'	  => 'Entr�e de texte',
       'PulldownMenu'	  => 'Menu d�roulant',

       'LockWarning'	  => 'Votre calendrier a �t� modifie pendant le traitement de votre requ�te. Par s�curit� votre requ�te est rejet�e. Veuillez retourner en
       arri�re puis recommencer svp.',

       'IUpload'	  => 'T�l�versement d\'image',
       'FUpload'	  => 'T�l�versement de fichier',
       'IUploadInstruction' => 'Pour t�l�verser un fichier d\'image de votre disque, entrez le chemin d\'acc�s complet vers ce fichier dans la zone de texte puis cliquez sur le bouton \'Soumettre\'. Si
       vous n\'�tes pas sur du chemin, cliquez sur le bouton \'Parcourir\' pour retrouvez votre fichier.',
       'IUploadAck'	  => 'Image t�l�vers�e. Pour ins�rer une image dans le titre ou la description d\'un �v�nement, couper et coller la ligne suivante dans la zone de texte
       correspondant dans l\�diteur d\'�v�nement. Attention il est possible que les images soient soumises � l\'approbation de l\'administrateur du site, auquel cas elles ne sont pas
       imm�diatement visibles par les utilisateurs.',
       'ReviewUI'  => 'R�vision des images t�l�vers�e. de l\'utilisateur',
       'ApproveChecked' => 'S�lection approuv�e',
       'RejectChecked' => 'S�lection rejet�e',
       'Export2Vcal'   => 'Exporter votre calendrier au format vCal',
       'CreateNewCal'  => 'Cr�er un nouveau Calendrier',
       'UsableImgs'    => 'Images utilisables',
       'UImageInst'    => 'Pour ins�rer une image dans le titre ou la description d\'un �v�nement, couper et coller son nom (en incluant les raccourcis images de type \\^o^/) dans la zone de texte
       correspondant dans l\�diteur d\'�v�nement.',
	'CheckAll'     => 'Tout cocher',
	'UncheckAll'   => 'Tout d�cocher',
	'Export2VCard' => 'Exporter votre carnet d\'adresses vers une vCard',
	'ImportVcard'  => 'Importer des informations de contact depuis une vcard',
	'ImportVCardTitle'  => 'Importer depuis un fichier vCard de votre ordinateur.',
	'ImportVcardInstruction' => 'Ou coupez et collez votre entr�e vcard dans la zone de texte et cliquez sur le bouton \'Envoyer\'',
	'ImportVcardFileInstruction'   => 'Pour uploader un fichier vCard de votre disque, entrez le chemin d\'acc�s complet vers ce fichier dans la zone de texte puis cliquez sur le bouton \'Soumettre\'. Si
       vous n\'�tes pas sur du chemin, cliquez sur le bouton \'Parcourir\' pour retrouvez votre fichier.',
	'AlreadyInAddressbook' => 'Les entr�es suivantes sont d�j� dans votre carnet d\'adresses.',
	'DpyETimeAs' => 'Heures des �v�nements',
	'MasterheadTabs' => 'Zone des onglets',

	'DeferConfirmation'	=> 'Retarder la confirmation',
	'Unconfirmed'		=> 'Non confirme',

	'SendMailUsing' 	=> 'Envoi de mail en utilisant', # html, txt or vcal
	 # used as in
	 # send mail <> immediately or <> <hours> before event
	'Sendmail'		=> 'Envoyer mail',
	'immediately'		=> 'imm�diatement',
	'or'			=> 'ou',
	'beforeEvent',		=> 'avant l\'�v�nement',
	'Cancelled'		=> 'annule',

	'AddNewEntry'		=> 'Ajouter une nouvelle entr�e',
	'SearchNotes'		=> 'Rechercher dans les Notes',
	'SearchAddress' 	=> 'Rechercher dans le carnet d\'adresses',

	'Week_begins_on'	=> 'La semaine commence le',
	'StartDate'		=> 'Date de d�but',
	'DueDate'		=> 'Date de fin',
	'DueTime'		=> 'Heure de fin',
	'Overdue'		=> '�ch�ance d�pass�e',
	'EventDates'		=> 'Dates des �v�nements',

	'SpecialEvents' 	=> '�v�nement Sp�cial',
	'RemindForwardNewTask'	=> 'Activer le rappel pour les nouvelles t�ches',
	'DispCompletedTasks'	=> 'Afficher les t�ches termin�es sur le calendrier',
	'TaskOptions'		=> 'Options des t�ches',
	'DoneOn'		=> 'Fait le %s par %s', # used to display completed tasks, like 'Done on 03/19/2002',

	'DetailedView'		=> 'Vue d�taill�e',
	'CombinedView'		=> 'Vue combin�e',
	'BannerView'		=> 'Vue Banni�re ',
	'TooltipDelay'		=> 'D�lai d\'affichage des astuces en millisecondes',
	'DayViewOptions'	=> 'Options de la vue du jour',
	'More'			=> 'Plus',

	'G_A_Notes'		=> 'Donner acc�s aux notes de',
	'G_A_Address'		=> 'Donner acc�s au carnet d\'adresse de',
	'G_A_Diary'		=> 'Donner acc�s au journal de',
	'OwnerOnly'		=> 'Propri�taire seulement',
	'Everyone'		=> 'Tout le monde',

	'DpyAuthorName' 	=> 'Affichage du nom', # real name, calendar name or both
	'RealName'		=> 'Nom',
	'CalendarName'		=> 'Nom du calendrier',
	'Rname_Cname'		=> 'Nom & Nom du calendrier',

	'DescriptiveName'	=> 'Nom descriptif',
	'OwnerName'		=> 'Nom du Propri�taire',
	'OwnerEmailAddress'	=> 'Email du Propri�taire',
	'OwnerHomepage' 	=> 'Url du Propri�taire',

	'Label' 		=> 'Label',
	'PredefineColorPairs'	=> 'Pr�d�finir les couleurs texte/fond pour',

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

	'Font'	=> 'Style de caract�re',
	'DefineFonts'	   => 'Cr�er un style de caract�re',
	'FontsStyles'	   => 'Styles des caract�res',

	'DependentCals'    => 'Calendriers li�s',
	'DepCalInstruction' => 'Liste tous les calendriers li�s au votre. Par exemple, si vous avez un vid�o-projecteur dans une salle de conf�rence, sa disponibilit� d�pend de l\'accessibilit� � cette
	salle. La r�servation du projecteur implique la r�servation de la salle. Dans cet exemple, le calendrier du projecteur est li� au calendrier de la salle. Les �v�nements pr�vus sur le calendrier du projecteur
	seront automatiquement envoy�s sur le calendrier de la salle de conf�rence.',

     'ListAuthors'	=> 'Accepter l\'�v�nement de la part de ',
     'AuthorInstruction' => 'Par d�faut, tout le monde sur le syst�me WebCalendar est autoris� � cr�er des �v�nements de groupe sur votre calendrier. Pour changer ce comportement, s�lectionner dans la liste les
     calendriers autoris�s � cr�er des �v�nements de groupe sur votre calendrier. Si vous ne souhaitez pas accepter des �v�nements de groupe, s�lectionnez uniquement votre calendrier dans la liste.
     Si aucun calendrier est s�lectionn�, tout le monde est autoris� � cr�er des �v�nements sur votre calendrier.',
   'EventInterval'	 => 'Intervalle des �v�nements par d�faut',
   'PublicOpen' 	    => 'Ouvert au public',
   'PublicModerated'	    => 'Ouvert au public - mod�r�',

   'Pending'		    => 'En attente',
   'Mail2Author'	    => 'Mail � l\'auteur',

   'ClearCache' 	    => 'Vider le Cache',
   'color2'		    => 'Couleur de fond secondaire pour le vue par mois',

   'semails'		    => 'Ajouter la s�lection � la liste au carnet d\'adresse',
   'addinvitee' 	    => 'Ajouter la s�lection � la liste des invit�s',

   'Select'		    => 'S�lectionner',
   'IgnoreCCal' 	    => 'Ignorer les calendriers mutualis�s',
   'ResrcCal'		=> 'Est-ce un calendrier affect� � une ressource (salle,...)?',
   'AllowAP'            => 'Si le calendrier est public, autorisez vous le postage par un anonyme?',
   'orIndefinitely'     => 'ou ind�finiment', # used as in: occurs daily for 5 times or indefinitely
   'remindOnce'		=> 'Si cet �v�nement se r�p�te, me le rappeler seulement une fois',
   'applyReminders'     => 'Appliquer les rappels par d�faut � cet �v�nement?',

   'NotifyAP'           => 'Si le calendrier est public-mod�r�, envoyez un courriel au propri�taire apr�s chaque postage?',
#   'NotifyAP'           => 'If this is a moderated public calendar, email owner upon new posting?',
   'Preferences'        => 'Pr�f�rences',   
   'Appearance'         => 'Apparence',
   'TabColor'           => 'Couleur arri�re plan des onglets',
   'TabHColor'          => 'Couleur arri�re plan d\'un \'survol\'',  
   'StyleSheet'		=> 'Feuille de style',
   'OrTimeOffset'	=> 'ou sp�cifiez le d�calage entre l\'heure locale et celle du serveur (+-HH:MM)', 
   'ServerTime'		=> 'La date/heure actuelle du serveur est',
   'catfilter'		=> 'Permettez vous le filtrage par cat�gorie?',
   'popdetail'		=> 'Voulez vous afficher le d�tail des �v�nements dans un fen�tre popup?',
   'WeekViewOptions'    => 'Options de la vue Semaine',
   'orUntilDate'	=> 'ou jusqu\'� cette date',

   'Freebusytable'	=> 'Tableau des disponibilit�s',
   'VirtualGroup'	=> 'Groupe virtuel',
   'wcf'		=> 'celui qui vient en premier',
   'pendmsg'		=> 'Avertir l\'auteur de votre d�cision par courriel',

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

# 
# This is the list of phrases or words used in the UI.
# To port webCal to another language, translate
# this list should be suffice.
#
# $Header: /home/cvs/webCal/webCal2/Spanish.perl,v 1.58 2004/10/20 23:35:56 mzou Exp $
#


%::phr=(
       # specify character encoding.
       'CHARSET'		=> 'ISO-8859-1',

       'Calendar'               => 'Calendario',
       
       # Name of weekdays
       'Sunday'                 => 'Domingo',
       'Monday'                 => 'Lunes',
       'Tuesday'                => 'Martes',
       'Wednesday'              => 'Miércoles',
       'Thursday'               => 'Jueves',
       'Friday'                 => 'Viernes',
       'Saturday'               => 'Sábado',
       # Name of weekdays, abbreviation
       'Sun'                    => 'Dom',
       'Mon'                    => 'Lun',
       'Tue'                    => 'Mar',
       'Wed'                    => 'Mie',
       'Thu'                    => 'Jue',
       'Fri'                    => 'Vie',
       'Sat'                    => 'Sab',
       # Name of weekdays, abbreviated even more
       'Su'                     => 'Do',
       'Mo'                     => 'Lu',
       'Tu'                     => 'Ma',
       'We'                     => 'Mi',
       'Th'                     => 'Ju',
       'Fr'                     => 'Vi',
       'Sa'                     => 'Sa',
       
       # Month Names  
       'January'                => 'Enero', 
       'February'               => 'Febrero',
       'March'                  => 'Marzo',   
       'April'                  => 'Abril',   
       'May_'                   => 'Mayo',     #! the full month of May, to distingsh with the abbreviation
       'June'                   => 'Junio',    
       'July'                   => 'Julio',    
       'August'                 => 'Agosto',
       'September'              => 'Septiembre',
       'October'                => 'Octubre',
       'November'               => 'Noviembre',
       'December'               => 'Diciembre',
       # Month Names, abbreviation
       'Jan'                    => 'Ene',
       'Feb'                    => 'Feb',
       'Mar'                    => 'Mar',
       'Apr'                    => 'Abr',
       'May'                    => 'May',
       'Jun'                    => 'Jun',
       'Jul'                    => 'Jul',
       'Aug'                    => 'Ago',
       'Sep'                    => 'Sep',
       'Oct'                    => 'Oct',
       'Nov'                    => 'Nov',
       'Dec'                    => 'Dic',

       # repeating rules 
       'OneTime'                => 'Una vez',                   # one time event
       'Daily'                  => 'Diario',                      
       'Weekly'                 => 'Semanal',
       'Every2Weeks'            => 'Cada 2 semanas',
       'MonthlyByDate'          => 'Mensualmente cada fecha',
       'MonthlyByWeekday'       => 'Mensualmente cada día de la semana',         # e.g. the 3rd Friday of every month
       'Yearly'                 => 'Anualmente',
       'MTWThF'                 => 'De lunes a viernes',
       'MWF'                    => 'Lunes Miércoles y Viernes',
       'TTh'                    => 'Marte y Jueves',
       'YearlyByMonthWeekday'   => 'Anualmente por mes y día de la semana',    # e.g. the first Monday of June, yearly
       'EveryOtherDay'          => 'Cualquier otro día',
       'Every3rdDay'            => 'Cada tercer día',
       'Every4thDay'            => 'Cada cuarto día',
       'Every5thDay'            => 'Cada quinto día',
       'Every6thDay'            => 'Cada sexto día',

       # event types
       'Appointment'            => 'Apunte',
       'Todo'                   => 'Tareas',
       'Meeting'                => 'Reunión',
       'Special'                => 'Especial',            # for holidays, event require no specific time

       # option button names
       'CalendarOptions'        => 'Opciones del Calendario',   # title of the options page
       'Compare'                => 'Comparar',            # Button: compare calendars and find conflicts ...
       'Search'                 => 'Buscar',             # Button:
       'GotoDate'               => 'Ir a la fecha',           # Button:
       'Previous'               => 'Previo',           # previous Month/Day/Week 
       'Today'                  => 'Hoy',              # This Month/Day/Week 
       'Next'                   => 'Siguiente',               # next Month/Day/Week 
       'Options'                => 'Opciones',            # Button: go to options page 
       'Admin'                  => 'Admin',              # Button: go to admin page
       'Logout'                 => 'Salir',             # Button: go to logout page
       'DayView'                => 'Vista diaria',           # Alt name under the image buttons
       'WeekView'               => 'Vista semanal',
       'MonthView'              => 'Vista mensual',
       'YearView'               => 'Vista anual',
       
       
       # messages on the setup screen
       'SetupYourCalendar'      => 'Configura tu calendario', # title
       'YourCalendarName'       => 'Nombre de tu calendario',
       'YourEmailAddress'       => 'Tu dirección de correo',
       'YourName'               => 'Tu nombre',
       'Password'               => 'Clave',
       'RetypePassword'         => 'Reintroduce tu clave',
       'CalendarType'           => 'Tipo de calendario',
       'Public'                 => 'Público',
       'Private'                => 'Privado',
       'ForPrivateCalendar'     => 'Para calendario privados',
       'OthersSeeTextTime'      => 'Otros pueden ver el texto y la hora',
       'OthersSeeTitle'         => 'Others See Event Title',
       'OthersSeeTimeOnly'      => 'Otros pueden ver la hora',
       'OthersSeeNothing'       => 'Otros no pueden ver nada',
       'PublicCalendar'         => 'Calendario Público',
       'Submit'                 => 'Enviar',
       'Cancel'                 => 'Cancelar',
       'TheName'                => 'El nombre',
       'HasBeenTaken'           => 'ha sido ya existe',
       'PasswordMismatch'       => 'las claves no coinciden',
       'TryAgain'               => 'inténtalo de nuevo',
       'EmailIncomplete'        => 'La dirección de correo está incompleta',
       'CannotCreateCalendar'   => 'No se puede crear tu calendario. El nombre debe ser una palabra válida',
       'CannotWriteInfoFile'    => 'No se puede escribir el el fichero info',
       'CannotWriteDataFile'    => 'No se puede escribir en el fichero de datos',
       'CannotWritePasswordFile'=> 'No se puede modificar el fichero de claves',
       'Congratulations'        => 'Enhorabuena',
       'SetupGreetingA'         => 'Tu calendario ha sido configurado. Añadelo esta dirección a tus favoritos',
       'SetupGreetingB'         => 'Recuerda la clave, la necesitas para acceder a tu calendario',
       'HaveToSupplyCalendarName' => 'Debes proporcionar un nombre a tu calendario',
       'PleaseDoNotUseYourUnixAccountPassword' => 'POR FAVOR NO USES TU CLAVE DE CORREO',
       
       
       # Event Editor Messages
       'EventEditor'            => 'Editor de eventos',
       'AppointmentEditor'      => 'Editor de apuntes',
       'ToDoEditor'             => 'Editor de tareas',
       'MeetingEditor'          => 'Editor de reuniones',
       'SpecialEditor'          => 'Editor de eventos especiales',
       'AuthRequired'           => 'Nota, es necesario autenticarse para editar este calendario',
       'CurrentEvents'          => 'Eventos &nbsp;Actuales',
       'Time'                   => 'Hora',
       'What'                   => 'Asunto',
       'Date'                   => 'Fecha',
       'Start'                  => 'Comienzo',
       'End'                    => 'Final',
       'Details'                => 'Detalles',
       'Colors'                 => 'Colores',
       'Privacy'                => 'Privado',         
       'Frequency'              => 'Frecuencia',
       'Reminders'              => 'Recordatorios',
       'Mail'                   => 'Correo',
       'min'                    => 'min', # abbreviation of minute
       'mins'                   => 'mins',
       'hours'                  => 'horas',
       'days'                   => 'días',
       'weeks'                  => 'semanas',
       'Occurs'                 => 'Sucede',
       'For'                    => 'cada',
       'times'                  => 'veces',   # as in repeat for 10 times 
       'Popup'                  => 'Popup',
       'Author'                 => 'Autor',
       'Blink'                  => 'Parpadeo',
       'Chime'                  => 'Sonido',
       'Insert'                 => 'Insertar',
       'InsertAsNew'            => 'Insertar como nueve entrada',
       'Modify'                 => 'Modificar',
       'DeleteThisOne'          => 'Borrar este evento',
       'DeleteAll'              => 'Borrar todos los eventos',
       'Delete'                 => 'Borrar',
       'Due'                    => 'Due', # as in Due Date
       'TaskDone'               => 'La tarea está completada',
       'RemindForward'          => 'Adelantar recordatorio',
       'Yes'                    => 'Si',
       'No'                     => 'No',
       'Y'                      => 'S', # abbrieviation of Yes
       'N'                      => 'N', # abbrieviation of No
       'ToDo'                   => 'Tareas',
       'Participants'           => 'Participantes',
       'none'                   => 'ninguno',
       'MailToAll'              => 'Correo a todos',
       'FindConflict'           => 'Buscar Conflicto',
       'NoTimeEvent'            => 'Evento sin hora',
       'Fg'                     => 'Fg',
       'Bg'                     => 'Bg',
       'Error'                  => 'Error',
       'HasError'               => 'Hay un error procesando tu solicitud',
       'ListParticipants'       => 'Introduce grupos de reunión o nombres de calendario o direcciones de correo de los participantes. Sus calendarios serán actualizados',
       'ConflictTable'          => 'Tabla de conflictos',
       'Conflict'               => 'Conflicto',         
       'Table'                  => 'Tabla',         
       'You'                    => 'Tú',
       'NotAllowedToModify'     => 'no estás autorizado para modificar esta entrada',
       'NotAllowedToEdit'       => 'no estás autorizado para modificar este calendario',
       'Warning'                => 'Aviso',
       'NoRemindForward'        => 'No se puede adelantar los recordatorios en las tareas repetitivas',
       'Acknowledgement'        => 'Reconocimientos',
       'UpdatedOK'              => 'Calendario actualizado',
       'BackToCalendar'         => 'Pulsa para volver a tu calendario',
       'OpenFailed'             => 'No se puede abrir tu calendario',
       'NoCalendar'             => 'Parece que no tienes un fichero de calendario',
       
       # goto page
       'Goto_Date'              => 'Ir a la fecha', #title
       'Goto'                   => 'Ir a',
       'SelectDate'             => 'Selecciona una fecha',
       'View'                   => 'Ver',
       'Go'                     => 'Ir', # function as submit
       'Set'                    => 'Configurar', # as in set options
       
       # set options page
       'My_day_starts_at'       => 'Mi día comienza a las',
       'ends_at'                => 'tarmina a las',
       'Interval'               => 'Intervalo',
       'Week_starts_on',        => 'La semana empieza el',
       'include_weekend',       => 'incluye fines de semana',
       'Date_Format'            => 'Formato de fecha',
       'Time_Format'            => 'Formato de hora',
       'Time_zone'              => 'Huso horario',
       'Default_view'           => 'Vista por defecto',
       'Default_Reminders'      => 'Recordatorio por defecto',
       'ListEditors'            => 'Introduce los usuarios que pueden editar tu calendario',
       'Editors'                => 'Editores',
       'Email'                  => 'Correo',
       'Default'                => 'Defecto',
       'Homepage'               => 'Página Web',
       'Language'               => 'Idioma',
       
       # admin page
       'Administration'         => 'Administración',
       'adminDisabled'          => 'La administración está deshabilitada en los calendarios públicos',
       'Change_Password'        => 'Cambiar la clave',
       'Old_Password'           => 'Antigua clave',
       'New_Password'           => 'Nueva clave',
       'New_Password_Again'     => 'Reintroduce la nueva clave',
       'to_be_used_by_meeting_editor' => 'para usarlo en el editor de reuniones',
       'Existing_Groups'        => 'Grupos existentes',
       'Group_Name'             => 'Nombre del grupo',
       'ListGroupMembers'       => 'Introduce el nombre del calendario o la dirección de correo de los participantes',
       'Merge_Calendars'        => 'Fusionar Calendarios',

       'CalendarNames'          => 'Calendarios',
       'EraseCalendar'          => 'Eliminar mi calendario',
       'DeleteCalendar'         => 'Borrar mi calendario',
       'errorPerm'              => 'Permiso denegado',
       'calDeleted'             => 'Tu calendario ha sido borrado',
       'ThankYou4Using'         => 'Gracias por usar',
       'calErased'              => 'Tu calendario ha sido eliminado',
       'eraseFailed'            => 'No puedo borrar tu calendario',
       'cpasswordWrong'         => 'Error: clave incorrecta',
       'ipasserror'             => 'No puedo abrir el fichero de claves, inténtalo más tarde',
       'password_changed'       => 'Tu clave ha sido cambiada',
       'cannot_open'            => 'No puedo abrir',
       'Meeting_group'          => 'Grupo de reunión',
       'updated'                => 'actualizado con éxito',
       'new_entries'            => 'nuevas entradas añadidas a tu calendario',
       'Unknown_command'        => 'Comando desconocido',
       
       
       # search page
       'Search_Calendar'        => 'Buscar calendario',
       'Topic'                  => 'Tema',
       'SearchAll'              => 'Buscar todos',
       'Search_From'            => 'Buscar desde',
       'To'                     => 'A',
       'Search_Results'         => 'Resultados de la búsqueda',
       'CalendarReminder'       => 'Recordatorios del calendario',
         
       # Greeting
       'WelcomeToWebCalendar'   => 'Bienvenido al calendario de la Universidad',
       'PleaseSelectACalendar'  => 'Selecciona un calendario',
       'PleaseEnterCalendarName'=> 'Introduce el nombre de tu calendario',

       #download
       'notAllowedToDownload'   => 'No estás autorizado a descargar tu calendario',
         
       #logout
       'AuthNotRequired'        => 'Nota: la autenticaión no es necesaria para los calendarios públicos ',
       'logoutInstruction'      => 'Para salir, pulsa el botón de salir cuando aparezca el diálogo de entrada,<br> hazlo como nobody. No es necesaria la clave.',
       'loginInstruction'       => 'Para entrar como otro usuario, pulsa el botón de entrada',
       'You_ve_logout'          => 'Has salido',
       'access_denied'          => 'acceso denegado',
       'login'                  => 'entrada',

       #compare
       'CompareCalendars'       => 'Comparar Calendarios',
       'Enter_calendar_names'   => 'Introduce nombres de calendario',
       'or_meeting_group'       => 'o grupos de reunión',
       'EventsTable'            => 'Tabla de eventos',
       'Name'                   => 'Nombre',
       'Events'                 => 'Eventos',
       'ForegroundColor'        => 'Color frontal',
       'BackgroundColor'        => 'Color de fondo',

       # msg in the main
       'accessAnotherCal'        => 'Para acceder a otro calendario, por favor',

       # Some missing phrases and addons ...
       'Close'                  => 'Cerrar',
       'ShowCombinedCalendar'   => 'Mostrar calendarios combinados',
       'CombinedCalendar'       => 'Calendarios Combinados ',
       'Participants_are_allowed_to' => "Los participantes pueden",
       'View_only'              => 'Sólo ver',
       'Edit'                   => 'Editar',
       'EditAndDelete'          => 'Editar y borrar',
       'Updated_calendars'      => 'Los siguientes calendarios serán actualizados',
       'NotAllowedToUpdate'     => 'NO estás autorizado a actualizar los siguientes calendarios',
       'invalid_date'           => 'Fecha no válida',
       'Schedule'               => 'Programar',            # as in 'schedule an appointment on calendar mzou
       'onCalendar'             => 'en calendario',          #
       'DeleteForward'          => 'Borrar los siguientes eventos',
       'All'                    => 'Todo',
       'SearchSubjectEmpty'	=> 'El concepto de búsqueda no puede ser vacío',
       'Start_date'             => 'Fecha de comienzo',
       'is_after_due_date'      => 'hasta después de la fecha',
       'Invalidusername'	=> 'Nombre de usuario no válido',
       'Protected'		=> '==protegido==',
       'Invalidcalendarname'	=> 'Nombre de calendario no válido',
       'Couldnotfindcalendar' => 'No encuentro el calendario',
       'Invalidspooldir'      => 'Directorio de cola no válido',
       'ListView'             => 'Mostrar vistas',
       'BlockView'            => 'Bloquear vistas',

       # address book stuff
       'AddressBook'           => 'Libreta de direcciones',
       'AddressBookEditor'     => 'Editor de Libreta de direcciones',
       'AddressBookUpdated'    => 'Libreta de direcciones actualizada',
       'BackToAddressBook'     => 'Pulsa para volver a tu Libreta de direcciones',
       'FirstName'             => 'Nombre de pila',
       'LastName'              => 'Apellido',
       'Address'               => 'Dirección',
       'Phone'                 => 'Teléfono',
       'Fax'                   => 'Fax',
       'Info'                  => 'Información',
       'Affiliation'           => 'Afiliación',
       'Where'                 => 'Dónde',
       'Priority'              => 'Prioridad',
       'Diary'                 => 'Diario',
       'DiaryUpdated'          => 'Diario actualizado',
       'ReadDiary'             => 'Leer diario',       
       'From'                  => 'De',
       'PlainText'             => 'Texto plano',
       'Html'                  => 'Html',
       'SearchDiary'           => 'Buscar Diario',
       'SearchFor'             => 'Buscar por',
       'NeedAuth2Proceed'      => 'Es necesaria la autenticación para ver o editar. Por favor pulsa el botón de \'login\' , o pulsa el botón de calendario para volver.',

       # Priority of ToDo tasks
       'Urgent'                => 'Urgente',
       'High'                  => 'Alta',
       'Medium'                => 'Media',
       'Low'                   => 'Baja',       

       # find calendar names
       'FindCalNames'          => 'Encontrar calendarios',

       # overlapping 
       'AllowOverlap'          => 'Permitir solapamiento de eventos',
       'GoBack'                => 'Volver',  #

       'OverlapInstr'          => 'Esta entrada ha sido rechazada porque se solapa con una o más entradas del calendario (mira en la tabla).
Si quieres realmente insertarla en tu calendario, vuelve, y pon <b>\'S\'</b> en la opción de <b>\'Allow Overlapping Events\'</b> y vuelve a intentarlo.',

       'signup'                 => 'Crear uno nuevo',
       'Invalidpassword'	=> 'Clave incorrecta',
       'olduserInstruction'     => 'Dispongo de un calendario en un fichero',
       'newuserInstruction'     => 'Soy un usuario nuevo',
       'PleaseLogin'            => 'Authenticación requerida. Por favor autentícate primero!',
       'NextNew'		=> 'Siguiente entrada nueva',
       'RememberIDPswd'         => 'Recuerda mi nombre de usuario y clave (No es recomendable)',
       'global'                 => 'Global', # mark global meeting group
       'groupnametaken'         => 'El nombre del grupo de reunión ya existe, escoge otro',
       'deleteEventsBefore'     => 'Borrar las entradas anteriores',
       'AutoStart'              => 'Comenzar automáticamente el calendario',
       'Readers'                => 'Lectores',
       'ListReaders'            => 'Introduce los usuarios que pueden leer tu calendario',
       'Print'			=> 'Imprimir',
       'mailVcal'		=> 'Adjuntar VCALENDAR en los recordatorios por correo',
       'FriendsEmail'		=> 'Direcciones de correo de amigos',
       'PersonalMessage'	=> 'Añadir un mensaje personal',
       'Mail2Friend'		=> 'Mandar por correo esta entrada a un amigo',
       'MailSentTo'		=> 'La entrada del calendario ha sido enviada a',
       'Location'               => 'Ubicación',
       # the next line is used in a confirmation popup when a user is modifying 
       # an repeating event. The date displayed is the current date, normally 
       # it is not the initial starting date of the event.
       'CalendarFormat'			=> 'Formato del calendario',
       'CalendarFile'			=> 'Fichero del calendario',
       'SetupGreetingC'         => 'Por favor, vaya a las opciones del calendario para terminar la configuración',
       'Email2Selected'		=> 'Enviar correo electrónico a la entrada seleccionada',
       'AddNewEmail'		=> 'Añadir nueva dirección de correo electrónico a mi libro de direcciones',
       'ContactP'		=> 'Persona de contacto',
       'ContactE'		=> 'Correo electrónico',
       'DailyReminder'		=> 'Envíame recordatorios diario',
       'CompletedTasks'		=> 'Tareas completadas',
       'PendingTasks'		=> 'Tareas pendiente',
       'Import2Cal'		=> 'Importar este evento al calendario',
       'ViewOnly'		=> 'O elegir otro calendario para ver',
       'newLogin'		=> 'O entrar como nuevo usuario', 
       'QuickAdd'		=> 'Añadir rápido',
       'Event'                  => 'Evento',
       'TodoList'               => 'ToDo List',
       'MarkComplete'		=> 'Mark checked as complete',
       'DeleteChecked'		=> 'Delete checked',
       'AddNewTask'             => 'Add New Task',
       'TaskManager'            => 'Task Manager',
       'WarnInvitee'		=> 'Are you sure you want to insert this event to the following calendars?',
       'creationDisabled'	=> 'Sorry, calendar setup is disabled by your system administrator. You\'ll have to
ask your system administrator to create a calendar for you.',
        'RequestRSVP'            => 'Request RSVP',
        'invitationAccepted'     => 'Invitación aceptada',
        'invitationDeclined'     => 'Invitación rechazada',
        'AttendanceConfirmation' => 'Confirmación de asistencia',
        'AcceptInvitation'         => 'Aceptar invitación',
        'DeclineInvitation'      => 'Rechazar invitación',

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

        'DetailedView'		=> 'Detailed View',
        'CombinedView'		=> 'Combined View',
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







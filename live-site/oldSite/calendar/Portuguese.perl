# Portuguese.perl
# Date: 2002/10/23
# by Menezes.
## mailto: pm@deec.uc.pt
# http://www.deec.uc.pt
#
#
# Adaptado da versao brasileira de DecioJr, Fabio Mengue, Luiz Armando Mendes de Figueiredo
#
# This is the list of phrases or words used in the UI.
# To port webCal to another language, translate
# this list should be suffice.
#
# $Header: /home/cvs/webCal/webCal2/Portuguese.perl,v 1.88 2004/10/20 23:35:56 mzou Exp $
#

%::phr= (
       # specify character encoding.
       'CHARSET'		=> 'ISO-8859-1',

       'Calendar'               => '.: Agenda :.',
       
       # Name of weekdays
       'Sunday'                 => 'Domingo',
       'Monday'                 => 'Segunda',
       'Tuesday'                => 'Ter�a',
       'Wednesday'              => 'Quarta',
       'Thursday'               => 'Quinta',
       'Friday'                 => 'Sexta',
       'Saturday'               => 'S�bado',
       # Name of weekdays, abbreviation
       'Sun'                    => 'Dom',
       'Mon'                    => 'Seg',
       'Tue'                    => 'Ter',
       'Wed'                    => 'Qua',
       'Thu'                    => 'Qui',
       'Fri'                    => 'Sex',
       'Sat'                    => 'S�b',
       # Name of weekdays, abbreviated even more
       'Su'                     => 'Do',
       'Mo'                     => 'Se',
       'Tu'                     => 'Te',
       'We'                     => 'Qu',
       'Th'                     => 'Qt',
       'Fr'                     => 'Se',
       'Sa'                     => 'Sa',
       
       # Month Names  
       'January'                => 'Janeiro',
       'February'               => 'Fevereiro',
       'March'                  => 'Mar�o', 
       'April'                  => 'Abril', 
       'May_'                   => 'Maio',     # !!!
       'June'                   => 'Junho', 
       'July'                   => 'Julho', 
       'August'                 => 'Agosto',
       'September'              => 'Setembro',
       'October'                => 'Outubro',
       'November'               => 'Novembro',
       'December'               => 'Dezembro',
       # Month Names, abbreviation
       'Jan'                    => 'Jan',
       'Feb'                    => 'Fev',
       'Mar'                    => 'Mar',
       'Apr'                    => 'Abr',
       'May'                    => 'Mai',
       'Jun'                    => 'Jun',
       'Jul'                    => 'Jul',
       'Aug'                    => 'Ago',
       'Sep'                    => 'Set',
       'Oct'                    => 'Out',
       'Nov'                    => 'Nov',
       'Dec'                    => 'Dez',

       # repeating rules 
       'OneTime'                => 'Uma �nica vez',
       'Daily'                  => 'Diariamente',
       'Weekly'                 => 'Semanalmente',
       'Every2Weeks'            => 'A Cada 2 semanas',
       'MonthlyByDate'          => 'Mensalmente por dia',
       'MonthlyByWeekday'       => 'Mensalmente por semana',
       'Yearly'                 => 'Anualmente',
       'MTWThF'                 => 'Seg a Sex',
       'MWF'                    => 'Seg Qua Sex',
       'TTh'                    => 'Ter Qui',
       'YearlyByMonthWeekday'   => 'Anualmente Por M�s e Dia da Semana',
       'EveryOtherDay'          => 'Todos os Outros Dias',
       'Every3rdDay'            => 'Todo Terceiro Dia',
       'Every4thDay'            => 'Todo Quarto Dia',
       'Every5thDay'            => 'Todo Quinto Dia',
       'Every6thDay'            => 'Todo Sexto Dia',

       # event types
       'Appointment'            => 'Compromisso Marcado',
       'Todo'                   => 'A fazer',
       'Meeting'                => 'Reuni�o',
       'Special'                => 'Especial',

       # option button names
       'CalendarOptions'        => 'Op��es da Agenda',
       'Compare'                => 'Comparar',
       'Search'                 => 'Pesquisar',
       'GotoDate'               => 'Alterar Data',
       'Previous'               => 'Anterior',
       'Today'                  => 'Hoje',
       'Next'                   => 'Pr�ximo',
       'Options'                => 'Op��es',
       'Admin'                  => 'Admin',
       'Logout'                 => 'Sair',
       'DayView'                => 'Por Dia',
       'WeekView'               => 'Por Semana',
       'MonthView'              => 'Por M�s',
       'YearView'               => 'Por Ano',
       
       
       # messages on the setup screen
       'SetupYourCalendar'      => 'Configurar a Sua Nova Agenda',
       'YourCalendarName'       => 'Nome da Sua Agenda',
       'YourEmailAddress'       => 'O Seu Endere�o de E-mail',
       'YourName'               => 'O Seu Nome',
       'Password'               => 'Senha',
       'RetypePassword'         => 'Repita a Senha',
       'CalendarType'           => 'Tipo de Agenda',
       'Public'                 => 'P�blico',
       'Private'                => 'Particular',
       'ForPrivateCalendar'     => 'Para Agenda Particular',
       'OthersSeeTextTime'      => 'Outros V�em Texto e Hor�rio',
       'OthersSeeTitle'         => 'Others See Event Title',
       'OthersSeeTimeOnly'      => 'Outros V�em Apenas o Hor�rio',
       'OthersSeeNothing'       => 'Outros N�o V�em Nada',
       'PublicCalendar'         => 'Calend�rio P�blico',
       'Submit'                 => 'Prosseguir >>>',
       'Cancel'                 => 'Cancela',
       'TheName'                => 'O nome',
       'HasBeenTaken'           => 'j� est� sendo usado',
       'PasswordMismatch'       => 'Senha n�o confere',
       'TryAgain'               => 'Por favor, tente novamente',
       'EmailIncomplete'        => 'Seu endere�o de email est� incompleto',
       'CannotCreateCalendar'   => 'N�o posso criar sua agenda. O <i>nome</i> de sua agenda deve ser uma palavra v�lida',
       'CannotWriteInfoFile'    => 'N�o posso escrever para o arquivo de informa��es',
       'CannotWriteDataFile'    => 'N�o posso escrever para o arquivo de dados',
       'CannotWritePasswordFile'=> 'N�o posso modificar o arquivo de senha',
       'Congratulations'        => 'Parab�ns!',
       'SetupGreetingA'         => 'Sua agenda foi configurada.  Por favor, salve este endere�o em seu favoritos (bookmarks)',
       'SetupGreetingB'         => 'Por favor, lembre sua senha. Voc� precisa dela para acessar seu calend�rio',
       'HaveToSupplyCalendarName' => 'Voc� tem que fornecer um nome para sua agenda',
       'PleaseDoNotUseYourUnixAccountPassword' => 'Por favor, n�o use a mesma senha de sua conta de e-mail ',
       
       
       # Event Editor Messages
       'EventEditor'            => 'Editor de Eventos',
       'AppointmentEditor'      => 'Editor de Compromissos',
       'ToDoEditor'             => 'Editor de Tarefas a Fazer',
       'MeetingEditor'          => 'Editor de Reuni�es',
       'SpecialEditor'          => 'Editor de Eventos Especiais',
       'AuthRequired'           => 'Aviso: autentica��o � necess�ria para editar este calend�rio',
       'CurrentEvents'          => 'Eventos Actuais',
       'Time'                   => 'Hor�rio',
       'What'                   => 'O que',
       'Date'                   => 'Data',
       'Start'                  => 'In�cio',
       'End'                    => 'Fim',
       'Details'                => 'Detalhes',
       'Colors'                 => 'Cores',
       'Privacy'                => 'Privacidade', 
       'Frequency'              => 'Frequ�ncia',
       'Reminders'              => 'Lembretes',       'Mail'                   => 'E-Mail',       'min'                    => 'min', # abbreviation of minute
       'mins'                   => 'mins',
       'hours'                  => 'horas',
       'days'                   => 'dias',
       'weeks'                  => 'semanas',
       'Occurs'                 => 'Ocorre',
       'For'                    => 'Para',
       'times'                  => ' vezes',
       'Popup'                  => 'Popup',
       'Author'                 => 'Autor',
       'Blink'                  => 'Piscar',
       'Chime'                  => 'Sinal',
       'Insert'                 => 'Inserir',
       'InsertAsNew'            => 'Inserir Como Nova Entrada',
       'Modify'                 => 'Modificar',
       'DeleteThisOne'          => 'Excluir Esta Ocorr�ncia',
       'DeleteAll'              => 'Excluir Todas as Ocorr�ncias',
       'Delete'                 => 'Excluir',
       'Due'                    => 'Devido', # as in Due Date
       'TaskDone'               => 'Tarefa foi Completada',
       'RemindForward'          => 'Encaminhar Lembrete',
       'Yes'                    => 'Sim',
       'No'                     => 'N�o',
       'Y'                      => 'S', # abbrieviation of Yes
       'N'                      => 'N', # abbrieviation of No
       'ToDo'                   => 'A Fazer',
       'Participants'           => 'Participantes',
       'none'                   => 'nenhum',
       'MailToAll'              => 'Correio para todos',
       'FindConflict'           => 'Encontrar Conflitos',
       'NoTimeEvent'            => 'Evento Sem Hor�rio',
       'Fg'                     => 'Letras',
       'Bg'                     => 'Fundo',
       'Error'                  => 'Erro',
       'HasError'               => 'H� um erro de processamento de sua requisi��o',
       'ListParticipants'       => 'Listar grupos de reuni�es ou nome de agendas ou e-mail dos participantes. As agendas ser�o actualizadas',
       'ConflictTable'          => 'Tabela de Conflitos',
       'Conflict'               => 'Conflito', 
       'Table'                  => 'Tabela',
       'You'                    => 'Voc�',
       'NotAllowedToModify'     => 'n�o est� autorizado a modificar esta entrada',
       'NotAllowedToEdit'       => 'n�o est� autorizado a editar este calend�rio',
       'Warning'                => 'Advert�ncia',
       'NoRemindForward'        => 'N�o posso encaminhar lembrete adiantado para tarefas a fazer peri�dica',
       'Acknowledgement'        => 'Agradecimento',
       'UpdatedOK'              => 'Agenda Actualizada com Sucesso',
       'BackToCalendar'         => 'Clique aqui para voltar para sua agenda',
       'OpenFailed'             => 'N�o posso abrir sua agenda',
       'NoCalendar'             => 'Parece que voc� n�o tem uma agenda no arquivo',
       
       # goto page
       'Goto_Date'              => 'Selecionar Data', #title
       'Goto'                   => 'Ir Para',
       'SelectDate'             => 'Por favor Selecione a Data',
       'View'                   => 'Visualizar',
       'Go'                     => 'Prosseguir >>>', # function as submit
       'Set'                    => 'Definir', # as in set options
       
       # set options page
       'My_day_starts_at'       => 'O meu dia come�a �s',
       'ends_at'                => 'termina �s',
       'Interval'               => 'Intervalo',
       'Week_starts_on',        => 'Semana come�a no dia',
       'include_weekend',       => 'inclui fim de semana',
       'Date_Format'            => 'Formato da Data',
       'Time_Format'            => 'Formato da Hora',
       'Time_zone'              => 'Fuso hor�rio',
       'Default_view'           => 'Visualiza��o Padr�o',
       'Default_Reminders'      => 'Lembretes Padr�es',
       'ListEditors'            => 'Lista de usu�rios que est�o autorizados a editar sua agenda',
       'Editors'                => 'Editores',
       'Email'                  => 'Email',
       'Default'                => 'Padr�o',
       'Homepage'               => 'Home Page',
       'Language'               => 'Idioma',
       
       # admin page
       'Administration'         => 'Administra��o',
       'adminDisabled'          => 'Administra��o da Agenda est� desabilitada para agendas p�blicas',
       'Change_Password'        => 'Alterar Senha',
       'Old_Password'           => 'Senha Anterior',
       'New_Password'           => 'Nova Senha',
       'New_Password_Again'     => 'Repita a Nova Senha',
       'to_be_used_by_meeting_editor' => 'a ser usado pelo editor de reuni�es',
       'Existing_Groups'        => 'Grupos Existentes',
       'Group_Name'             => 'Nome do Grupo',
       'ListGroupMembers'       => 'Digite o nome da agenda ou endere�o de e-mail dos participantes',
       'Merge_Calendars'        => 'Consolida��o de Agendas',

       'CalendarNames'          => 'Agenda',
       'EraseCalendar'          => 'Apagar minha agenda',
       'DeleteCalendar'         => 'Excluir minha agenda',
       'errorPerm'              => 'Permiss�o negada',
       'calDeleted'             => 'Sua agenda foi exclu�da',
       'ThankYou4Using'         => 'Obrigado por usar',
       'calErased'              => 'Sua agenda foi apagada',
       'eraseFailed'            => 'N�o posso apagar a sua agenda',
       'cpasswordWrong'         => 'Erro de Autentica��o: senha incorrecta',
       'ipasserror'             => 'N�o posso abrir arquivo de senha; por favor tente novamente mais tarde',
       'password_changed'       => 'Sua senha foi alterada',
       'cannot_open'            => 'N�o posso abrir',
       'Meeting_group'          => 'Grupo de Reuni�o',
       'updated'                => 'actualizado com sucesso',
       'new_entries'            => 'novas entradas adicionadas a sua agenda',
       'Unknown_command'        => 'comando desconhecido',
       
       # search page
       'Search_Calendar'        => 'Pesquisar Agenda',
       'Topic'                  => 'Assunto',
       'SearchAll'              => 'Procura Tudo',
       'Search_From'            => 'Procura De',
       'To'                     => 'Para',
       'Search_Results'         => 'Resultados da Pesquisa',
       'CalendarReminder'       => 'Lembrete da Agenda',
         
       # Greeting
       'WelcomeToWebCalendar'   => 'Bem Vindo ao WebCalendar !',
       'PleaseSelectACalendar'  => 'Por favor selecione uma agenda',
       'PleaseEnterCalendarName'=> 'Por favor digite o nome de sua agenda',

       #download
       'notAllowedToDownload'   => 'Voc� n�o est� autorizado a fazer o <i>download</i> desta agenda',
         
       #logout
       'AuthNotRequired'        => 'Obs.: autentica��o n�o � requerida para visualizar calend�rios p�blicos',
       'logoutInstruction'      => 'Para Sair, clique no bot�o <b>logout</b>. Quando o di�logo de login aparecer,<br> acesse novamente como nobody (ou seja, digite <b>nobody</b>). Nenhuma senha � necess�ria.',
       'loginInstruction'       => 'Para Entrar novamente como um outro usu�rio, clique no bot�o de login',
       'You_ve_logout'          => 'Voc� acabou de fechar sua agenda!',
       'access_denied'          => 'acesso negado',
       'login'                  => 'Prosseguir >>>',

       #compare
       'CompareCalendars'       => 'Comparar Agendas',
       'Enter_calendar_names'   => 'Digite o nome da agenda',
       'or_meeting_group'       => 'ou grupo de reuni�o',
       'EventsTable'            => 'Tabela de Eventos',
       'Name'                   => 'Nome',
       'Events'                 => 'Eventos',
       'ForegroundColor'        => 'Cor da Letra',
       'BackgroundColor'        => 'Cor do Fundo',

       # msg in the main
       'accessAnotherCal'        => 'Para acessar uma outra agenda, por favor',

       # Algumas frases perdidas e alguns acr�scimos...
       'Close'                  => '<<< Fechar >>>',
       'ShowCombinedCalendar'   => 'Mostrar Agenda Combinada (ou Relacionada)',
       'CombinedCalendar'       => 'Agenda Combinada (ou Relacionada)',
       'Participants_are_allowed_to' => "Participantes est�o permitidos a ",
       'View_only'              => 'Visualizar Apenas',
       'Edit'                   => 'Editar',
       'EditAndDelete'          => 'Editar e Excluir',
       'Updated_calendars'      => 'As seguintes agendas tamb�m est�o atualizadas',
       'NotAllowedToUpdate'     => 'Voc� N�O est� autorizado a atualizar os seguintes calend�rios',
       'invalid_date'           => 'Data Inv�lida',
       'Schedule'               => 'Programa��o',            # as in 'schedule an appointment on calendar mzou
       'onCalendar'             => 'na agenda',          #
       'DeleteForward'          => 'Exluir Ocorr�ncias Futuras',
       'All'                    => 'Todos',

       #=====

       'SearchSubjectEmpty'     => 'A pesquisa por assunto n�o pode estar vazia',
       'Start_date'             => 'Data de in�cio',
       'is_after_due_date'      => 'depois da data de vencimento',
       'Invalidusername'        => 'utilizador inv�lido',
       'Invalidcalendarname'    => 'nome do calend�rio inv�lido',
       'Protected'              => '==protegido==',
       'Couldnotfindcalendar' => 'n�o foi poss�vel encontrar sua agenda',
       'Invalidspooldir'      => 'Direct�rio tempor�rio inv�lido',
       'ListView'             => 'Visualizar em Lista',
       'BlockView'            => 'Visualizar em Bloco',

       # address book stuff
       'AddressBook'           => 'Cat�logo de endere�os',
       'AddressBookEditor'     => 'Editor do cat�logo de endere�os',
       'AddressBookUpdated'    => 'Cat�logo de endere�os Atualizado',
       'BackToAddressBook'     => 'Clique aqui para retornar ao seu cat�logo de endere�os',
       'FirstName'             => 'Primeiro Nome',
       'LastName'              => '�ltimo Nome',
       'Address'               => 'Endere�o',
       'Phone'                 => 'Telefone',
       'Fax'                   => 'Fax',
       'Info'                  => 'Informa��es',
       'Affiliation'           => 'Empresa',
       'Where'                 => 'Aonde (local)',
       'Priority'              => 'Prioridade',
       'Diary'                 => 'Di�rio',
       'DiaryUpdated'          => 'Di�rio Actualizado',
       'ReadDiary'             => 'Ler di�rio', 
       'From'                  => 'de',
       'PlainText'             => 'Texto Normal',
       'Html'                  => 'Html',
       'SearchDiary'           => 'Localizar no di�rio',
       'SearchFor'             => 'Procurar por',
       'NeedAuth2Proceed'      => 'Autentica��o � necess�ria para ver ou editar esta Agenda. Clique no bot�o <b>agenda</b> para voltar para a sua agenda ou entre com <b>usu�rio</b> e <b>senha</b> para aceder uma outra agenda.',

       # Priority of ToDo tasks
       'Urgent'                => 'Urgente',
       'High'                  => 'Alta',
       'Medium'                => 'M�dia',
       'Low'                   => 'Baixa', 


       # find calendar names
       'FindCalNames'          => 'Procurar por Agendas',

       # overlapping
       'AllowOverlap'          => 'Permitir sobreposi��o de eventos',
       'GoBack'                => '<<< Voltar',  #

       'OverlapInstr'          => 'Este evento (ou comando) foi rejeitado porque se sobrep�e com um ou mais eventos existentes no seu calend�rio (ver tabela).
Se voc� realmente deseja inser�-lo no seu calend�rio, retorne, marque a op��o  (Permitir sobreposi��o de Eventos)  e tente novamente.',

       'signup'                 => 'Registe-se aqui...',
       'Invalidpassword'        => 'Senha Incorrecta',
       'olduserInstruction'     => 'Eu j� tenho uma agenda...',
       'newuserInstruction'     => 'Sou um novo utilizador...',
       'PleaseLogin'            => 'Autentica��o � requerida. Por favor, Entre primeiro!',
       'NextNew'                => 'Pr�ximo Evento - Novo',
       'RememberIDPswd'         => 'Guarde o <i><u>nome da agenda</u></i> e a <i><u>senha</u></i> (assim voc� n�o precisar� digit�-los novamente.)',
       'global'                 => 'Geral', # mark global meeting group
       'groupnametaken'         => 'Nome de Grupo de Encontro j� utilizado. Por favor, escolha um outro nome',
       'deleteEventsBefore'     => 'Excluir todos os eventos antes de',
       'AutoStart'              => 'Auto reiniciar o WebCalendar',
       'Readers'                => 'Leitores',
       'ListReaders'            => 'Listar os usu�rios que possuem permiss�o para ler sua agenda',
       'Print'                  => 'Imprimir',
       'mailVcal'               => 'Anexar VCALENDAR em seus lembretes via E-Mail',
       'FriendsEmail'           => 'Endere�os de Email de Amigos',
       'PersonalMessage'        => 'Acrescentar uma mensagem pessoal ou particular',
       'Mail2Friend'            => 'Enviar E-Mail deste evento para um amigo',
       'MailSentTo'             => 'O lan�amento na Agenda foi enviado para  ',
       'Location'               => 'Localiza��o',
       # the next line is used in a confirmation popup when a user is modifying 
       # an repeating event. The date displayed is the current date, normally 
       # it is not the initial starting date of the event.
       'CalendarFormat'                 => 'Formato da Agenda',
       'CalendarFile'                   => 'Arquivo da Agenda',
       'SetupGreetingC'         => 'Por favor, visite a p�gina de op��es abaixo para completar as configura��es de sua agenda.',
       'Email2Selected'         => 'Enviar E-Mail para todos os endere�os selecionados',
       'AddNewEmail'            => 'Acrescentar novo endere�o de E-Mail ao meu cat�logo de endere�os',
       'ContactP'               => 'Pessoa para Contacto',
       'ContactE'               => 'E-Mail para Contacto',
       'DailyReminder'          => 'Enviar-me lembretes diariamente',
       'CompletedTasks'         => 'Tarefas finalizadas',
       'PendingTasks'           => 'Tarefas pendentes',
       'Import2Cal'             => 'Importar este evento para a agenda',
       'ViewOnly'               => 'Ou escolher uma agenda para visualizar',
       'newLogin'               => 'Ou acessar como outro utilizador',
       'QuickAdd'               => 'Adicionar',
       'Event'                  => 'Evento',
       'TodoList'               => 'Lista de Tarefas a realizar',
       'MarkComplete'           => 'Marcar como finalizada',
       'DeleteChecked'          => 'Excluir as selecionadas',
       'AddNewTask'             => 'Adicionar nova tarefa',
       'TaskManager'            => 'Gestor de Tarefas',
       'WarnInvitee'            => 'Voc� tem certeza que deseja inserir este novo evento nas agendas que seguem?',
       'creationDisabled'       => 'Desculpe, a configura��o da agenda foi desabilitada pelo administrador do sistema. Voc� ter� que solicitar ao administrador do sistema para criar uma agenda para voc�.',
       'RequestRSVP'            => 'Requisitar RSVP',
       'invitationAccepted'     => 'Convite Aceite',
       'invitationDeclined'     => 'Convite Recusado',
       'AttendanceConfirmation' => 'Confirma��o de Presen�a no Encontro',
       'AcceptInvitation'       => 'Aceitar convite',
       'DeclineInvitation'      => 'Recusar convite',
       'Undecided'              => 'Indeterminado',
       'Category'               => 'Categoria',
       'Speaker'                => 'Orador',
       'Header'                 => 'Cabe�alho',
       'Footer'                 => 'Rodap�',
       'HeaderFooter'           => 'Digite o c�digo HTML do cabe�alho/rodap� a ser utilizado na op��o \'Visualizar em Lista\'',
       'MiscInfo'               => 'Informa��es Diversas',
       'Description'            => 'Descri��o',
       'AllDay'                 => 'Todos os Dias',
       'Tomorrow'               => 'Amanh�',
       'ThisWeek'               => 'Esta Semana',
       'ThisMonth'              => 'Este M�s',
       'Keyword'                => 'Palavra chave',
       'NoEvents'               => 'Sem eventos',
       'EditThis'               => 'Editar Este Evento',
       'recurFormat'            => 'Ocorre %s durante %d horas, come�ando em %s.', # used in formating
       'taskDoneFormat'	        => 'Completado por %s em %s �s %s', # formating
       'warnModify'             => 'Voc� est� modificando um evento recorrente. A data mostrada n�o � a data original do evento. Se o processo for continuado, o evento ir� se repetir segundo a nova data, e todas as informa��es escondidas deste evento, como excep��es de data e confirma��o de reuni�es ser�o perdidos. Por favor, confirme.
Modificar uma �nica ocorr�ncia de um evento recorrente n�o � poss�vel. Entretanto, voc� pode eliminar esta ocorr�ncia do evento recorrente e incluir um novo evento em seu lugar.
A data original do evento � ',

       'gEventError'		=> 'Voc� tentou eliminar uma ocorr�ncia parcial de um evento de grupo que acontece de maneira recorrente sem a autoriza��o necess�ria. Isto n�o � permitido pois pode causar perda de sincronia entre sua agenda e a dos outros participantes do grupo. Entretanto, voc� pode eliminar todas as ocorr�ncias deste evento de sua agenda ao clicar o bot�o "Eliminar Todas as Ocorr�ncias" no ecr� do editor de eventos',

       'City'                  => 'Cidade',
       'State'                 => 'Estado',
       'Zip'                   => 'C�digo Postal',
       'Country'               => 'Pa�s',

       'ResetPasswd'           => 'Limpar a Senha do Utilizador',
       'File'                  => 'Arquivo',
       'AlreadyOnCalendar'     => 'As entradas apresentadas a seguir j� est�o definidas na sua agenda. Elas foram ignoradas.',
       'ImportFileTitle'       => 'Importar um arquivo VCalendar a partir do seu computador',
       'ImportFileInstruction' => 'Para importar um arquivo vCalendar a partir do seu computador, informe o caminho completo do arquivo em seu computador no formul�rio e clique o bot�o. Se voc� preferir, clique no bot�o pesquisa e navegue at� ao seu arquivo.',
       'ImportVcal'		       => 'Importar Eventos a partir do VCalendar',
       'ImportVcalInstruction' => 'Ou inclua o texto de seu vCalendar no formul�rio e clique o bot�o para incluir',

       'DetailedWorkingHours'  => 'Hor�rio de Trabalho Detalhado', 
       'SelectAttendee' => 'Nomes de agenda, endere�os de e-mail, grupos de reuni�o ou uma combina��o destes podem ser utilizados para compor uma lista de participantes de eventos. Voc� pode selecionar seus nomes a partir da lista � esquerda ou escrev�-los no formul�rio acima. Endere�os de e-mail devem ser informados no formul�rio. Grupos de reuni�o, caso existam, podem ser selecionados a partir do menu \'Grupo de Reuni�o\'. Voc� tamb�m pode informar o nome do grupo no formul�rio. Caso exista mais de um item, eles dever�o ser separados por espa�os ou v�rgulas.',

       'MkEditorListInstruction' => 'Para permitir que amigos e colegas editem a sua agenda, selecione seus <i>nomes de agenda</i> na lista � esquerda, ou escreva seus nomes no formul�rio acima.',

       'MkReaderListInstruction' => 'Se os dados de sua agenda est�o protegidos, outros utilizadores n�o poder�o ler sua agenda. Voc� pode dar a alguns utilizadores permiss�o para ler sua agenda criando uma lista de leitores. Esta lista � composta de seus <i>nomes de agenda</i>. Voc� pode selecionar os seus nomes a partir da lista � esquerda ou escrev�-los no formul�rio acima.',

       'MkGroupInstruction'=> 'Nomes de agenda ou endere�os de e-mail podem ser utilizados para identificar membros de um grupo de trabalho. Voc� pode selecionar <i>nomes de agendas</i> a partir da lista m�ltipla � esquerda, ou escrev�-los no formul�rio acima. Endere�os de e-mail devem ser fornecidos sempre por meio de formul�rio.',
       'Contacts'	   => 'Contactos',
       'Tasks'		   => 'Tarefas',
       'Day'		   => 'Dia',
       'Week'		   => 'Semana',
       'Month'		   => 'M�s',
       'Year'		   => 'Ano',
       'OffDutyHours'	   => 'Horas fora de servi�o',
       'AddNewAddress'	   => 'Adicionar novo endere�o',
       'HeaderColor'	   => 'Cor do Cabe�alho',
       'Never'		   => 'Nunca',
       'OverlapNotAllowed' => 'A sobreposi��o de eventos n�o � permitda nestas agendas.',
       'Notes'		   => 'Notas',
       'PostIt'		   => 'PostIt',   # as in post it notes
       'Title'		   => 'T�tulo',    
   'AddNewNote'	   => 'Adicionar uma nova Nota', 
      'InterestedCalendars' => 'Listar todas as agendas as
       quais voc� provavelmente ir� ler ou editar.',      
 'CalendarListInstruction' => 'Se voc� quer ver uma lista longa de calend�rios no menu de selec��o de calend�rios, voc� pode criar uma lista pequena aqui. Entre com o nome do calend�rio que voc� quer ver na caixa de entrada acima, ou selecione-os da lista m�ltipla � esquerda. A lista pequena selecionada ser� usada em todos os lugares onde a lista de calend�rios � mostrada.',
       'MasterHeadInput'  => 'No menu principal, entre a sele��o de agenda usando como<br>',
       'TextEntry'	  => 'Entrada de texto',
       'PulldownMenu'     => 'Menu Pulldown',

       'LockWarning'      => 'A sua agenda foi modificada enquanto estava a processar o seu pedido. Para manter a integridade dos dados, o seu
envio foi rejeitado. Por favor regresse e tente novamente.',

       'IUpload'	  => 'Carregar Imagem', # 'Image Upload', 
       'FUpload'	  => 'Carregar Arquivo', # 'File Upload',
       'IUploadInstruction' => 'Para carregar um arquivo de imagem no seu disco, entre o caminho completo do arquivo de imagem
na caixa de entrada e clique no bot�o Enviar. Se voc� est� inseguro sobre o caminho, clique no bot�o
 Procurar para encontrar o seu arquivo.',
       'IUploadAck'	  => ' Imagem carregada. Para inserir a imagem no t�tulo ou descri��o do seu evento, copie e 
cole as seguintes linhas na �rea de texto correspondente do editor de eventos. Note que a imagem poder� ter de ser
submetida a aprova��o do seu administrador e neste caso a imagem n�o estar� dispon�vel imediatamente para observa��o p�blica.',
       'ReviewUI'  => 'Rever imagens carregadas pelo utilizador',
       'ApproveChecked' => 'Aprova��o marcada',
       'RejectChecked' => 'Rejei��o marcada',
       'Export2Vcal'   => 'Exportar seu calend�rio no formato vCal',
       'CreateNewCal'  => 'Criar uma Nova Agenda',
       'UsableImgs'    => 'Imagens utilizaveis',
       'UImageInst'    => 'Para inserir uma imagem no seu t�tulo ou descri��o de evento, copie e cole o seu nome
(inclua o olhar engra�ado \\^o^/) na �rea de texto correspondente no editor de eventos.',
	'CheckAll'     => 'Marcar todos', 
	'UncheckAll'   => 'Desmarcar todos',
   'Export2VCard' => 'Exportar seu livro de endere�os para vCard',
	'ImportVcard'  => 'Importar informa��o de contato de vCard',
   'ImportVCardTitle'  => 'Importar de um arquivo vCard do seu computador',
   'ImportVcardInstruction' => 'Ou copiar e colar sua entrada vCard na �rea de texto e clicar no bot�o Enviar',
   'ImportVcardFileInstruction' => 'Para importar de um arquivo vCard do seu computador, introduza  o caminho completo do
arquivo vCard na caixa de entrada e clique no bot�o Enviar. Se voc� n�o est� certo do caminho, clique no bot�o Procurar e navegue at� encontrar o seu arquivo.',
   'AlreadyInAddressbook' => 'As seguintes entradas j� est�o
       no seu livro de endere�os.',
	'DpyETimeAs' => 'Mostrar a Hora do Evento como',
 	'MasterheadTabs' => '�cones do Menu Principal',
  	'DeferConfirmation' => 'Adiar Confirma��o', 
	'Unconfirmed' => 'N�o Confirmado', 
	'SendMailUsing'         => 'Envio de correio usando',
 #html, txt or vcal         # used as      in         # send mail <> immediately or <> <hours>  before event  

 'Sendmail'              => 'Envio de correio', 
 'immediately'           => 'imediatamente', 
   'or'                    => 'ou', 
   'beforeEvent',          => 'antes do evento',
    'Cancelled'             => 'Cancelado', 
   'AddNewEntry'		=> 'Adicionar uma nova
 entrada', 
	'SearchNotes'		=> 'Pesquisar Lembretes', 
	'SearchAddress'		=> 'Pesquisar livro de
 endere�os', 
	'Week_begins_on'	=> 'Semana come�a na(o)', 
	'StartDate'		=> 'Dia Inicial', 
	'DueDate'		=> 'At� o Dia', 
	'DueTime'		=> 'At� a Hora', 
	'Overdue'		=> 'Atrasado', 
	'EventDates'		=> 'Data dos Eventos', 
	'SpecialEvents'		=> 'Eventos Especiais', 
	'RemindForwardNewTask'  => 'Usar lembretes adiantados em Novas Tarefas', 
	'DispCompletedTasks'    => 'Mostrar Tarefas Finalizadas', 
	'TaskOptions'		=> 'Op��es de Tarefas', 
        'DoneOn'		=> 'Feito em %s por %s', # used to display completed tasks, like 'Done on 03/19/2002', 

        'DetailedView'           => 'Detalhadas',
        'CombinedView'           => 'Combinadas',
        'BannerView'		=> 'Visualiza��o Banner',
	'TooltipDelay'		=> 'Tooltip: atraso em mil�simos de segundos',
	'DayViewOptions'        => 'Op��es de Visualiza��o do Dia',
	'More'			=> 'Mais...',

	'G_A_Notes'		=> 'Permitir acesso a <u>notas</u> para',
	'G_A_Address'		=> 'Permitir acesso ao <u>cat�logo de endere�os</u> para',	  
	'G_A_Diary'		=> 'Permitir acesso ao <u>di�rio</u> para',
	'OwnerOnly'		=> 'Propriet�rio apenas',
	'Everyone'		=> 'Qualquer um',

        'DpyAuthorName'         => 'Mostrar o nome do autor usando', # real name, calendar name or both
        'RealName'              => 'Nome do Autor',
        'CalendarName'          => 'Nome da <u>Agenda</u>',
        'Rname_Cname'           => 'Nome do Autor & Nome da Agenda',

	'DescriptiveName'	=> 'Breve descri��o da Agenda',
        'OwnerName'             => 'Nome do <u>Propriet�rio</u>',
        'OwnerEmailAddress'     => 'E-Mail do Propriet�rio',
        'OwnerHomepage'         => 'Homepage do Propriet�rio',

	'Label'			=> 'Identifica��o',
	'PredefineColorPairs'	=> 'Pr�-definir os pares de cores de fundo e frente para', 

	#========= The 16 common colors used on the web==================
	'Black'  => 'Preto'  ,    #      #000000,  
	'Silver' => 'Prata' ,	  #      #C0C0C0,
	'Gray'   => 'Cinza'   ,	  #      #808080,
	'White'  => 'Branco'  ,	  #      #FFFFFF,
	'Maroon' => 'Castanho-vermelho' ,	  #      #800000,
	'Red'    => 'Vermelho'    ,	  #      #FF0000,
	'Purple' => 'P�rpura' ,	  #      #800080,
	'Fuchsia'=> 'F�csia (brincos-de-princesa)',	  #      #FF00FF,
	'Green'  => 'Verde'  ,	  #      #008000,
	'Lime'   => 'Lima'   ,	  #      #00FF00,
	'Olive'  => 'Oliva'  ,	  #      #808000,
	'Yellow' => 'Amarelo' ,	  #      #FFFF00,
	'Navy'   => 'Azul Navy'   ,	  #      #000080,
	'Blue'   => 'Azul'   ,	  #      #0000FF,
	'Teal'   => 'Cerceta'   ,	  #      #008080,
	'Aqua'   => 'Aqua'   ,	  #      #00FFFF,
	#=================================================================

	'Font'  => 'Tipo',
	'DefineFonts'      => 'Definir Estilos do Tipo',
	'FontsStyles'      => 'Estilos de Tipo',

	'DependentCals'	   => 'Agendas Dependentes',
	'DepCalInstruction' => 'Listar todas as agendas das quais esta possui depend�ncia. Por exemplo,
se voce tiver um projector numa sala de reuni�o ou confer�ncia, a disponiblidade do projector depende
da possibilidade de acesso � sala de reuni�o ou  confer�ncia. A reserva do projector implica 
na reserva da sala de reuni�o ou confer�ncia. Neste exemplo, o agendamento do projector depende
do agendamento da sala de reuni�o ou confer�ncia. Eventos agendados do projector
ir�o automaticamente para a agenda da sala de reuni�o ou confer�ncia.',

     'ListAuthors'	=> 'Aceitar Eventos de',
     'AuthorInstruction' => 'Por <i>default</i>, qualquer pessoa no sistema de agenda tem permiss�o para agendar eventos de <i>grupo</i> em sua agenda.
Para alterar este comportamento, selecione da lista aquelas agendas que 
ter�o permiss�o para entrar eventos de jun��o em sua agenda. Se voc� n�o deseja aceitar quaisquer eventos de grupo,
seleccione somente o nome de sua agenda da lista. Se nenhuma agenda for seleccionada, todos ter�o permiss�o para agendar eventos de grupo em sua agenda.',
   'EventInterval'	 => 'Intervalo Padr�o de Evento',
   'PublicOpen'             => 'P�blica /Aberta',
   'PublicModerated'        => 'P�blica / Moderada',

   'Pending'		    => 'Pendente',
   'Mail2Author'	    => 'E-Mail para o Autor',

   'ClearCache'             => 'Limpar o Cache',
   'color2'		    => 'Cor de fundo secund�ria na visualiza��o por m�s',
   'semails'		    => 'Seleccionar convidados do cat�logo de endere�os', 
   'addinvitee'		    => 'Acrescentar seleccionados � lista de convidados', 
   'Select'		    => 'Seleccionar',
   'IgnoreCCal'		    => 'Ignorar Calend�rios Corporativos',
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




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
       'Tuesday'                => 'Terça',
       'Wednesday'              => 'Quarta',
       'Thursday'               => 'Quinta',
       'Friday'                 => 'Sexta',
       'Saturday'               => 'Sábado',
       # Name of weekdays, abbreviation
       'Sun'                    => 'Dom',
       'Mon'                    => 'Seg',
       'Tue'                    => 'Ter',
       'Wed'                    => 'Qua',
       'Thu'                    => 'Qui',
       'Fri'                    => 'Sex',
       'Sat'                    => 'Sáb',
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
       'March'                  => 'Março', 
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
       'OneTime'                => 'Uma única vez',
       'Daily'                  => 'Diariamente',
       'Weekly'                 => 'Semanalmente',
       'Every2Weeks'            => 'A Cada 2 semanas',
       'MonthlyByDate'          => 'Mensalmente por dia',
       'MonthlyByWeekday'       => 'Mensalmente por semana',
       'Yearly'                 => 'Anualmente',
       'MTWThF'                 => 'Seg a Sex',
       'MWF'                    => 'Seg Qua Sex',
       'TTh'                    => 'Ter Qui',
       'YearlyByMonthWeekday'   => 'Anualmente Por Mês e Dia da Semana',
       'EveryOtherDay'          => 'Todos os Outros Dias',
       'Every3rdDay'            => 'Todo Terceiro Dia',
       'Every4thDay'            => 'Todo Quarto Dia',
       'Every5thDay'            => 'Todo Quinto Dia',
       'Every6thDay'            => 'Todo Sexto Dia',

       # event types
       'Appointment'            => 'Compromisso Marcado',
       'Todo'                   => 'A fazer',
       'Meeting'                => 'Reunião',
       'Special'                => 'Especial',

       # option button names
       'CalendarOptions'        => 'Opções da Agenda',
       'Compare'                => 'Comparar',
       'Search'                 => 'Pesquisar',
       'GotoDate'               => 'Alterar Data',
       'Previous'               => 'Anterior',
       'Today'                  => 'Hoje',
       'Next'                   => 'Próximo',
       'Options'                => 'Opções',
       'Admin'                  => 'Admin',
       'Logout'                 => 'Sair',
       'DayView'                => 'Por Dia',
       'WeekView'               => 'Por Semana',
       'MonthView'              => 'Por Mês',
       'YearView'               => 'Por Ano',
       
       
       # messages on the setup screen
       'SetupYourCalendar'      => 'Configurar a Sua Nova Agenda',
       'YourCalendarName'       => 'Nome da Sua Agenda',
       'YourEmailAddress'       => 'O Seu Endereço de E-mail',
       'YourName'               => 'O Seu Nome',
       'Password'               => 'Senha',
       'RetypePassword'         => 'Repita a Senha',
       'CalendarType'           => 'Tipo de Agenda',
       'Public'                 => 'Público',
       'Private'                => 'Particular',
       'ForPrivateCalendar'     => 'Para Agenda Particular',
       'OthersSeeTextTime'      => 'Outros Vêem Texto e Horário',
       'OthersSeeTitle'         => 'Others See Event Title',
       'OthersSeeTimeOnly'      => 'Outros Vêem Apenas o Horário',
       'OthersSeeNothing'       => 'Outros Não Vêem Nada',
       'PublicCalendar'         => 'Calendário Público',
       'Submit'                 => 'Prosseguir >>>',
       'Cancel'                 => 'Cancela',
       'TheName'                => 'O nome',
       'HasBeenTaken'           => 'já está sendo usado',
       'PasswordMismatch'       => 'Senha não confere',
       'TryAgain'               => 'Por favor, tente novamente',
       'EmailIncomplete'        => 'Seu endereço de email está incompleto',
       'CannotCreateCalendar'   => 'Não posso criar sua agenda. O <i>nome</i> de sua agenda deve ser uma palavra válida',
       'CannotWriteInfoFile'    => 'Não posso escrever para o arquivo de informações',
       'CannotWriteDataFile'    => 'Não posso escrever para o arquivo de dados',
       'CannotWritePasswordFile'=> 'Não posso modificar o arquivo de senha',
       'Congratulations'        => 'Parabéns!',
       'SetupGreetingA'         => 'Sua agenda foi configurada.  Por favor, salve este endereço em seu favoritos (bookmarks)',
       'SetupGreetingB'         => 'Por favor, lembre sua senha. Você precisa dela para acessar seu calendário',
       'HaveToSupplyCalendarName' => 'Você tem que fornecer um nome para sua agenda',
       'PleaseDoNotUseYourUnixAccountPassword' => 'Por favor, não use a mesma senha de sua conta de e-mail ',
       
       
       # Event Editor Messages
       'EventEditor'            => 'Editor de Eventos',
       'AppointmentEditor'      => 'Editor de Compromissos',
       'ToDoEditor'             => 'Editor de Tarefas a Fazer',
       'MeetingEditor'          => 'Editor de Reuniões',
       'SpecialEditor'          => 'Editor de Eventos Especiais',
       'AuthRequired'           => 'Aviso: autenticação é necessária para editar este calendário',
       'CurrentEvents'          => 'Eventos Actuais',
       'Time'                   => 'Horário',
       'What'                   => 'O que',
       'Date'                   => 'Data',
       'Start'                  => 'Início',
       'End'                    => 'Fim',
       'Details'                => 'Detalhes',
       'Colors'                 => 'Cores',
       'Privacy'                => 'Privacidade', 
       'Frequency'              => 'Frequência',
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
       'DeleteThisOne'          => 'Excluir Esta Ocorrência',
       'DeleteAll'              => 'Excluir Todas as Ocorrências',
       'Delete'                 => 'Excluir',
       'Due'                    => 'Devido', # as in Due Date
       'TaskDone'               => 'Tarefa foi Completada',
       'RemindForward'          => 'Encaminhar Lembrete',
       'Yes'                    => 'Sim',
       'No'                     => 'Não',
       'Y'                      => 'S', # abbrieviation of Yes
       'N'                      => 'N', # abbrieviation of No
       'ToDo'                   => 'A Fazer',
       'Participants'           => 'Participantes',
       'none'                   => 'nenhum',
       'MailToAll'              => 'Correio para todos',
       'FindConflict'           => 'Encontrar Conflitos',
       'NoTimeEvent'            => 'Evento Sem Horário',
       'Fg'                     => 'Letras',
       'Bg'                     => 'Fundo',
       'Error'                  => 'Erro',
       'HasError'               => 'Há um erro de processamento de sua requisição',
       'ListParticipants'       => 'Listar grupos de reuniões ou nome de agendas ou e-mail dos participantes. As agendas serão actualizadas',
       'ConflictTable'          => 'Tabela de Conflitos',
       'Conflict'               => 'Conflito', 
       'Table'                  => 'Tabela',
       'You'                    => 'Você',
       'NotAllowedToModify'     => 'não está autorizado a modificar esta entrada',
       'NotAllowedToEdit'       => 'não está autorizado a editar este calendário',
       'Warning'                => 'Advertência',
       'NoRemindForward'        => 'Não posso encaminhar lembrete adiantado para tarefas a fazer periódica',
       'Acknowledgement'        => 'Agradecimento',
       'UpdatedOK'              => 'Agenda Actualizada com Sucesso',
       'BackToCalendar'         => 'Clique aqui para voltar para sua agenda',
       'OpenFailed'             => 'Não posso abrir sua agenda',
       'NoCalendar'             => 'Parece que você não tem uma agenda no arquivo',
       
       # goto page
       'Goto_Date'              => 'Selecionar Data', #title
       'Goto'                   => 'Ir Para',
       'SelectDate'             => 'Por favor Selecione a Data',
       'View'                   => 'Visualizar',
       'Go'                     => 'Prosseguir >>>', # function as submit
       'Set'                    => 'Definir', # as in set options
       
       # set options page
       'My_day_starts_at'       => 'O meu dia começa às',
       'ends_at'                => 'termina às',
       'Interval'               => 'Intervalo',
       'Week_starts_on',        => 'Semana começa no dia',
       'include_weekend',       => 'inclui fim de semana',
       'Date_Format'            => 'Formato da Data',
       'Time_Format'            => 'Formato da Hora',
       'Time_zone'              => 'Fuso horário',
       'Default_view'           => 'Visualização Padrão',
       'Default_Reminders'      => 'Lembretes Padrões',
       'ListEditors'            => 'Lista de usuários que estão autorizados a editar sua agenda',
       'Editors'                => 'Editores',
       'Email'                  => 'Email',
       'Default'                => 'Padrão',
       'Homepage'               => 'Home Page',
       'Language'               => 'Idioma',
       
       # admin page
       'Administration'         => 'Administração',
       'adminDisabled'          => 'Administração da Agenda está desabilitada para agendas públicas',
       'Change_Password'        => 'Alterar Senha',
       'Old_Password'           => 'Senha Anterior',
       'New_Password'           => 'Nova Senha',
       'New_Password_Again'     => 'Repita a Nova Senha',
       'to_be_used_by_meeting_editor' => 'a ser usado pelo editor de reuniões',
       'Existing_Groups'        => 'Grupos Existentes',
       'Group_Name'             => 'Nome do Grupo',
       'ListGroupMembers'       => 'Digite o nome da agenda ou endereço de e-mail dos participantes',
       'Merge_Calendars'        => 'Consolidação de Agendas',

       'CalendarNames'          => 'Agenda',
       'EraseCalendar'          => 'Apagar minha agenda',
       'DeleteCalendar'         => 'Excluir minha agenda',
       'errorPerm'              => 'Permissão negada',
       'calDeleted'             => 'Sua agenda foi excluída',
       'ThankYou4Using'         => 'Obrigado por usar',
       'calErased'              => 'Sua agenda foi apagada',
       'eraseFailed'            => 'Não posso apagar a sua agenda',
       'cpasswordWrong'         => 'Erro de Autenticação: senha incorrecta',
       'ipasserror'             => 'Não posso abrir arquivo de senha; por favor tente novamente mais tarde',
       'password_changed'       => 'Sua senha foi alterada',
       'cannot_open'            => 'Não posso abrir',
       'Meeting_group'          => 'Grupo de Reunião',
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
       'notAllowedToDownload'   => 'Você não está autorizado a fazer o <i>download</i> desta agenda',
         
       #logout
       'AuthNotRequired'        => 'Obs.: autenticação não é requerida para visualizar calendários públicos',
       'logoutInstruction'      => 'Para Sair, clique no botão <b>logout</b>. Quando o diálogo de login aparecer,<br> acesse novamente como nobody (ou seja, digite <b>nobody</b>). Nenhuma senha é necessária.',
       'loginInstruction'       => 'Para Entrar novamente como um outro usuário, clique no botão de login',
       'You_ve_logout'          => 'Você acabou de fechar sua agenda!',
       'access_denied'          => 'acesso negado',
       'login'                  => 'Prosseguir >>>',

       #compare
       'CompareCalendars'       => 'Comparar Agendas',
       'Enter_calendar_names'   => 'Digite o nome da agenda',
       'or_meeting_group'       => 'ou grupo de reunião',
       'EventsTable'            => 'Tabela de Eventos',
       'Name'                   => 'Nome',
       'Events'                 => 'Eventos',
       'ForegroundColor'        => 'Cor da Letra',
       'BackgroundColor'        => 'Cor do Fundo',

       # msg in the main
       'accessAnotherCal'        => 'Para acessar uma outra agenda, por favor',

       # Algumas frases perdidas e alguns acréscimos...
       'Close'                  => '<<< Fechar >>>',
       'ShowCombinedCalendar'   => 'Mostrar Agenda Combinada (ou Relacionada)',
       'CombinedCalendar'       => 'Agenda Combinada (ou Relacionada)',
       'Participants_are_allowed_to' => "Participantes estão permitidos a ",
       'View_only'              => 'Visualizar Apenas',
       'Edit'                   => 'Editar',
       'EditAndDelete'          => 'Editar e Excluir',
       'Updated_calendars'      => 'As seguintes agendas também estão atualizadas',
       'NotAllowedToUpdate'     => 'Você NÃO está autorizado a atualizar os seguintes calendários',
       'invalid_date'           => 'Data Inválida',
       'Schedule'               => 'Programação',            # as in 'schedule an appointment on calendar mzou
       'onCalendar'             => 'na agenda',          #
       'DeleteForward'          => 'Exluir Ocorrências Futuras',
       'All'                    => 'Todos',

       #=====

       'SearchSubjectEmpty'     => 'A pesquisa por assunto não pode estar vazia',
       'Start_date'             => 'Data de início',
       'is_after_due_date'      => 'depois da data de vencimento',
       'Invalidusername'        => 'utilizador inválido',
       'Invalidcalendarname'    => 'nome do calendário inválido',
       'Protected'              => '==protegido==',
       'Couldnotfindcalendar' => 'não foi possível encontrar sua agenda',
       'Invalidspooldir'      => 'Directório temporário inválido',
       'ListView'             => 'Visualizar em Lista',
       'BlockView'            => 'Visualizar em Bloco',

       # address book stuff
       'AddressBook'           => 'Catálogo de endereços',
       'AddressBookEditor'     => 'Editor do catálogo de endereços',
       'AddressBookUpdated'    => 'Catálogo de endereços Atualizado',
       'BackToAddressBook'     => 'Clique aqui para retornar ao seu catálogo de endereços',
       'FirstName'             => 'Primeiro Nome',
       'LastName'              => 'Último Nome',
       'Address'               => 'Endereço',
       'Phone'                 => 'Telefone',
       'Fax'                   => 'Fax',
       'Info'                  => 'Informações',
       'Affiliation'           => 'Empresa',
       'Where'                 => 'Aonde (local)',
       'Priority'              => 'Prioridade',
       'Diary'                 => 'Diário',
       'DiaryUpdated'          => 'Diário Actualizado',
       'ReadDiary'             => 'Ler diário', 
       'From'                  => 'de',
       'PlainText'             => 'Texto Normal',
       'Html'                  => 'Html',
       'SearchDiary'           => 'Localizar no diário',
       'SearchFor'             => 'Procurar por',
       'NeedAuth2Proceed'      => 'Autenticação é necessária para ver ou editar esta Agenda. Clique no botão <b>agenda</b> para voltar para a sua agenda ou entre com <b>usuário</b> e <b>senha</b> para aceder uma outra agenda.',

       # Priority of ToDo tasks
       'Urgent'                => 'Urgente',
       'High'                  => 'Alta',
       'Medium'                => 'Média',
       'Low'                   => 'Baixa', 


       # find calendar names
       'FindCalNames'          => 'Procurar por Agendas',

       # overlapping
       'AllowOverlap'          => 'Permitir sobreposição de eventos',
       'GoBack'                => '<<< Voltar',  #

       'OverlapInstr'          => 'Este evento (ou comando) foi rejeitado porque se sobrepõe com um ou mais eventos existentes no seu calendário (ver tabela).
Se você realmente deseja inserí-lo no seu calendário, retorne, marque a opção  (Permitir sobreposição de Eventos)  e tente novamente.',

       'signup'                 => 'Registe-se aqui...',
       'Invalidpassword'        => 'Senha Incorrecta',
       'olduserInstruction'     => 'Eu já tenho uma agenda...',
       'newuserInstruction'     => 'Sou um novo utilizador...',
       'PleaseLogin'            => 'Autenticação é requerida. Por favor, Entre primeiro!',
       'NextNew'                => 'Próximo Evento - Novo',
       'RememberIDPswd'         => 'Guarde o <i><u>nome da agenda</u></i> e a <i><u>senha</u></i> (assim você não precisará digitá-los novamente.)',
       'global'                 => 'Geral', # mark global meeting group
       'groupnametaken'         => 'Nome de Grupo de Encontro já utilizado. Por favor, escolha um outro nome',
       'deleteEventsBefore'     => 'Excluir todos os eventos antes de',
       'AutoStart'              => 'Auto reiniciar o WebCalendar',
       'Readers'                => 'Leitores',
       'ListReaders'            => 'Listar os usuários que possuem permissão para ler sua agenda',
       'Print'                  => 'Imprimir',
       'mailVcal'               => 'Anexar VCALENDAR em seus lembretes via E-Mail',
       'FriendsEmail'           => 'Endereços de Email de Amigos',
       'PersonalMessage'        => 'Acrescentar uma mensagem pessoal ou particular',
       'Mail2Friend'            => 'Enviar E-Mail deste evento para um amigo',
       'MailSentTo'             => 'O lançamento na Agenda foi enviado para  ',
       'Location'               => 'Localização',
       # the next line is used in a confirmation popup when a user is modifying 
       # an repeating event. The date displayed is the current date, normally 
       # it is not the initial starting date of the event.
       'CalendarFormat'                 => 'Formato da Agenda',
       'CalendarFile'                   => 'Arquivo da Agenda',
       'SetupGreetingC'         => 'Por favor, visite a página de opções abaixo para completar as configurações de sua agenda.',
       'Email2Selected'         => 'Enviar E-Mail para todos os endereços selecionados',
       'AddNewEmail'            => 'Acrescentar novo endereço de E-Mail ao meu catálogo de endereços',
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
       'WarnInvitee'            => 'Você tem certeza que deseja inserir este novo evento nas agendas que seguem?',
       'creationDisabled'       => 'Desculpe, a configuração da agenda foi desabilitada pelo administrador do sistema. Você terá que solicitar ao administrador do sistema para criar uma agenda para você.',
       'RequestRSVP'            => 'Requisitar RSVP',
       'invitationAccepted'     => 'Convite Aceite',
       'invitationDeclined'     => 'Convite Recusado',
       'AttendanceConfirmation' => 'Confirmação de Presença no Encontro',
       'AcceptInvitation'       => 'Aceitar convite',
       'DeclineInvitation'      => 'Recusar convite',
       'Undecided'              => 'Indeterminado',
       'Category'               => 'Categoria',
       'Speaker'                => 'Orador',
       'Header'                 => 'Cabeçalho',
       'Footer'                 => 'Rodapé',
       'HeaderFooter'           => 'Digite o código HTML do cabeçalho/rodapé a ser utilizado na opção \'Visualizar em Lista\'',
       'MiscInfo'               => 'Informações Diversas',
       'Description'            => 'Descrição',
       'AllDay'                 => 'Todos os Dias',
       'Tomorrow'               => 'Amanhã',
       'ThisWeek'               => 'Esta Semana',
       'ThisMonth'              => 'Este Mês',
       'Keyword'                => 'Palavra chave',
       'NoEvents'               => 'Sem eventos',
       'EditThis'               => 'Editar Este Evento',
       'recurFormat'            => 'Ocorre %s durante %d horas, começando em %s.', # used in formating
       'taskDoneFormat'	        => 'Completado por %s em %s às %s', # formating
       'warnModify'             => 'Você está modificando um evento recorrente. A data mostrada não é a data original do evento. Se o processo for continuado, o evento irá se repetir segundo a nova data, e todas as informações escondidas deste evento, como excepções de data e confirmação de reuniões serão perdidos. Por favor, confirme.
Modificar uma única ocorrência de um evento recorrente não é possível. Entretanto, você pode eliminar esta ocorrência do evento recorrente e incluir um novo evento em seu lugar.
A data original do evento é ',

       'gEventError'		=> 'Você tentou eliminar uma ocorrência parcial de um evento de grupo que acontece de maneira recorrente sem a autorização necessária. Isto não é permitido pois pode causar perda de sincronia entre sua agenda e a dos outros participantes do grupo. Entretanto, você pode eliminar todas as ocorrências deste evento de sua agenda ao clicar o botão "Eliminar Todas as Ocorrências" no ecrã do editor de eventos',

       'City'                  => 'Cidade',
       'State'                 => 'Estado',
       'Zip'                   => 'Código Postal',
       'Country'               => 'País',

       'ResetPasswd'           => 'Limpar a Senha do Utilizador',
       'File'                  => 'Arquivo',
       'AlreadyOnCalendar'     => 'As entradas apresentadas a seguir já estão definidas na sua agenda. Elas foram ignoradas.',
       'ImportFileTitle'       => 'Importar um arquivo VCalendar a partir do seu computador',
       'ImportFileInstruction' => 'Para importar um arquivo vCalendar a partir do seu computador, informe o caminho completo do arquivo em seu computador no formulário e clique o botão. Se você preferir, clique no botão pesquisa e navegue até ao seu arquivo.',
       'ImportVcal'		       => 'Importar Eventos a partir do VCalendar',
       'ImportVcalInstruction' => 'Ou inclua o texto de seu vCalendar no formulário e clique o botão para incluir',

       'DetailedWorkingHours'  => 'Horário de Trabalho Detalhado', 
       'SelectAttendee' => 'Nomes de agenda, endereços de e-mail, grupos de reunião ou uma combinação destes podem ser utilizados para compor uma lista de participantes de eventos. Você pode selecionar seus nomes a partir da lista à esquerda ou escrevê-los no formulário acima. Endereços de e-mail devem ser informados no formulário. Grupos de reunião, caso existam, podem ser selecionados a partir do menu \'Grupo de Reunião\'. Você também pode informar o nome do grupo no formulário. Caso exista mais de um item, eles deverão ser separados por espaços ou vírgulas.',

       'MkEditorListInstruction' => 'Para permitir que amigos e colegas editem a sua agenda, selecione seus <i>nomes de agenda</i> na lista à esquerda, ou escreva seus nomes no formulário acima.',

       'MkReaderListInstruction' => 'Se os dados de sua agenda estão protegidos, outros utilizadores não poderão ler sua agenda. Você pode dar a alguns utilizadores permissão para ler sua agenda criando uma lista de leitores. Esta lista é composta de seus <i>nomes de agenda</i>. Você pode selecionar os seus nomes a partir da lista à esquerda ou escrevê-los no formulário acima.',

       'MkGroupInstruction'=> 'Nomes de agenda ou endereços de e-mail podem ser utilizados para identificar membros de um grupo de trabalho. Você pode selecionar <i>nomes de agendas</i> a partir da lista múltipla à esquerda, ou escrevê-los no formulário acima. Endereços de e-mail devem ser fornecidos sempre por meio de formulário.',
       'Contacts'	   => 'Contactos',
       'Tasks'		   => 'Tarefas',
       'Day'		   => 'Dia',
       'Week'		   => 'Semana',
       'Month'		   => 'Mês',
       'Year'		   => 'Ano',
       'OffDutyHours'	   => 'Horas fora de serviço',
       'AddNewAddress'	   => 'Adicionar novo endereço',
       'HeaderColor'	   => 'Cor do Cabeçalho',
       'Never'		   => 'Nunca',
       'OverlapNotAllowed' => 'A sobreposição de eventos não é permitda nestas agendas.',
       'Notes'		   => 'Notas',
       'PostIt'		   => 'PostIt',   # as in post it notes
       'Title'		   => 'Título',    
   'AddNewNote'	   => 'Adicionar uma nova Nota', 
      'InterestedCalendars' => 'Listar todas as agendas as
       quais você provavelmente irá ler ou editar.',      
 'CalendarListInstruction' => 'Se você quer ver uma lista longa de calendários no menu de selecção de calendários, você pode criar uma lista pequena aqui. Entre com o nome do calendário que você quer ver na caixa de entrada acima, ou selecione-os da lista múltipla à esquerda. A lista pequena selecionada será usada em todos os lugares onde a lista de calendários é mostrada.',
       'MasterHeadInput'  => 'No menu principal, entre a seleção de agenda usando como<br>',
       'TextEntry'	  => 'Entrada de texto',
       'PulldownMenu'     => 'Menu Pulldown',

       'LockWarning'      => 'A sua agenda foi modificada enquanto estava a processar o seu pedido. Para manter a integridade dos dados, o seu
envio foi rejeitado. Por favor regresse e tente novamente.',

       'IUpload'	  => 'Carregar Imagem', # 'Image Upload', 
       'FUpload'	  => 'Carregar Arquivo', # 'File Upload',
       'IUploadInstruction' => 'Para carregar um arquivo de imagem no seu disco, entre o caminho completo do arquivo de imagem
na caixa de entrada e clique no botão Enviar. Se você está inseguro sobre o caminho, clique no botão
 Procurar para encontrar o seu arquivo.',
       'IUploadAck'	  => ' Imagem carregada. Para inserir a imagem no título ou descrição do seu evento, copie e 
cole as seguintes linhas na área de texto correspondente do editor de eventos. Note que a imagem poderá ter de ser
submetida a aprovação do seu administrador e neste caso a imagem não estará disponível imediatamente para observação pública.',
       'ReviewUI'  => 'Rever imagens carregadas pelo utilizador',
       'ApproveChecked' => 'Aprovação marcada',
       'RejectChecked' => 'Rejeição marcada',
       'Export2Vcal'   => 'Exportar seu calendário no formato vCal',
       'CreateNewCal'  => 'Criar uma Nova Agenda',
       'UsableImgs'    => 'Imagens utilizaveis',
       'UImageInst'    => 'Para inserir uma imagem no seu título ou descrição de evento, copie e cole o seu nome
(inclua o olhar engraçado \\^o^/) na área de texto correspondente no editor de eventos.',
	'CheckAll'     => 'Marcar todos', 
	'UncheckAll'   => 'Desmarcar todos',
   'Export2VCard' => 'Exportar seu livro de endereços para vCard',
	'ImportVcard'  => 'Importar informação de contato de vCard',
   'ImportVCardTitle'  => 'Importar de um arquivo vCard do seu computador',
   'ImportVcardInstruction' => 'Ou copiar e colar sua entrada vCard na área de texto e clicar no botão Enviar',
   'ImportVcardFileInstruction' => 'Para importar de um arquivo vCard do seu computador, introduza  o caminho completo do
arquivo vCard na caixa de entrada e clique no botão Enviar. Se você não está certo do caminho, clique no botão Procurar e navegue até encontrar o seu arquivo.',
   'AlreadyInAddressbook' => 'As seguintes entradas já estão
       no seu livro de endereços.',
	'DpyETimeAs' => 'Mostrar a Hora do Evento como',
 	'MasterheadTabs' => 'Ícones do Menu Principal',
  	'DeferConfirmation' => 'Adiar Confirmação', 
	'Unconfirmed' => 'Não Confirmado', 
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
 endereços', 
	'Week_begins_on'	=> 'Semana começa na(o)', 
	'StartDate'		=> 'Dia Inicial', 
	'DueDate'		=> 'Até o Dia', 
	'DueTime'		=> 'Até a Hora', 
	'Overdue'		=> 'Atrasado', 
	'EventDates'		=> 'Data dos Eventos', 
	'SpecialEvents'		=> 'Eventos Especiais', 
	'RemindForwardNewTask'  => 'Usar lembretes adiantados em Novas Tarefas', 
	'DispCompletedTasks'    => 'Mostrar Tarefas Finalizadas', 
	'TaskOptions'		=> 'Opções de Tarefas', 
        'DoneOn'		=> 'Feito em %s por %s', # used to display completed tasks, like 'Done on 03/19/2002', 

        'DetailedView'           => 'Detalhadas',
        'CombinedView'           => 'Combinadas',
        'BannerView'		=> 'Visualização Banner',
	'TooltipDelay'		=> 'Tooltip: atraso em milésimos de segundos',
	'DayViewOptions'        => 'Opções de Visualização do Dia',
	'More'			=> 'Mais...',

	'G_A_Notes'		=> 'Permitir acesso a <u>notas</u> para',
	'G_A_Address'		=> 'Permitir acesso ao <u>catálogo de endereços</u> para',	  
	'G_A_Diary'		=> 'Permitir acesso ao <u>diário</u> para',
	'OwnerOnly'		=> 'Proprietário apenas',
	'Everyone'		=> 'Qualquer um',

        'DpyAuthorName'         => 'Mostrar o nome do autor usando', # real name, calendar name or both
        'RealName'              => 'Nome do Autor',
        'CalendarName'          => 'Nome da <u>Agenda</u>',
        'Rname_Cname'           => 'Nome do Autor & Nome da Agenda',

	'DescriptiveName'	=> 'Breve descrição da Agenda',
        'OwnerName'             => 'Nome do <u>Proprietário</u>',
        'OwnerEmailAddress'     => 'E-Mail do Proprietário',
        'OwnerHomepage'         => 'Homepage do Proprietário',

	'Label'			=> 'Identificação',
	'PredefineColorPairs'	=> 'Pré-definir os pares de cores de fundo e frente para', 

	#========= The 16 common colors used on the web==================
	'Black'  => 'Preto'  ,    #      #000000,  
	'Silver' => 'Prata' ,	  #      #C0C0C0,
	'Gray'   => 'Cinza'   ,	  #      #808080,
	'White'  => 'Branco'  ,	  #      #FFFFFF,
	'Maroon' => 'Castanho-vermelho' ,	  #      #800000,
	'Red'    => 'Vermelho'    ,	  #      #FF0000,
	'Purple' => 'Púrpura' ,	  #      #800080,
	'Fuchsia'=> 'Fúcsia (brincos-de-princesa)',	  #      #FF00FF,
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
	'DepCalInstruction' => 'Listar todas as agendas das quais esta possui dependência. Por exemplo,
se voce tiver um projector numa sala de reunião ou conferência, a disponiblidade do projector depende
da possibilidade de acesso à sala de reunião ou  conferência. A reserva do projector implica 
na reserva da sala de reunião ou conferência. Neste exemplo, o agendamento do projector depende
do agendamento da sala de reunião ou conferência. Eventos agendados do projector
irão automaticamente para a agenda da sala de reunião ou conferência.',

     'ListAuthors'	=> 'Aceitar Eventos de',
     'AuthorInstruction' => 'Por <i>default</i>, qualquer pessoa no sistema de agenda tem permissão para agendar eventos de <i>grupo</i> em sua agenda.
Para alterar este comportamento, selecione da lista aquelas agendas que 
terão permissão para entrar eventos de junção em sua agenda. Se você não deseja aceitar quaisquer eventos de grupo,
seleccione somente o nome de sua agenda da lista. Se nenhuma agenda for seleccionada, todos terão permissão para agendar eventos de grupo em sua agenda.',
   'EventInterval'	 => 'Intervalo Padrão de Evento',
   'PublicOpen'             => 'Pública /Aberta',
   'PublicModerated'        => 'Pública / Moderada',

   'Pending'		    => 'Pendente',
   'Mail2Author'	    => 'E-Mail para o Autor',

   'ClearCache'             => 'Limpar o Cache',
   'color2'		    => 'Cor de fundo secundária na visualização por mês',
   'semails'		    => 'Seleccionar convidados do catálogo de endereços', 
   'addinvitee'		    => 'Acrescentar seleccionados à lista de convidados', 
   'Select'		    => 'Seleccionar',
   'IgnoreCCal'		    => 'Ignorar Calendários Corporativos',
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




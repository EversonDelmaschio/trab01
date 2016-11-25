# TRABALHO 01
Trabalho desenvolvido durante a disciplina de BD

#Sumário

###1	COMPONENTES<br>
Edson Simões e Everson Delmaschio<br>

###2	INTRODUÇÃO E MOTIVAÇAO<br>
Este documento contém a especificação do projeto do banco de dados SUS++ e motivação da escolha realizada. <br>
O projeto SUS++ seria usado a princípio pelo Sistema Único de Saúde podendo ser utilizado em outras redes de médicos no Brasil e no mundo. O objetivo principal desde projeto é providenciar rapida realocação de mpedicos em casos de emergencias. Porem oo mesmo tambem poderá ser utilizado para um melhor aproveitamento da mão de obra do SUS. Com base em analises poderam ser cadastrados um serie de vagas para as especialidades que as regiões mais necessitam, e os medicos cadastrados no sistema seram convidados a serem realocados para estes locais onde sua formação pode ser meçhor aproveitada. <br> 

###3	MINI-MUNDO<br>
O Ministério público de saúde deseja um sistema para dar apoio ao Sistema de saúde do Brasil. O objetivo principal do sistema é ser capaz de mobilizar os médicos do sistema SUS em casos de emergência. Além disso o sistema também irá dar apoio ao cadastramento de
vagas em determinadas cidades ou até mesmo solicitar médicos específicos para determinadas necessidades. Em casos de emergência o sistema irá notificar todos os médicos que possuem o perfil daquela emergência, e solicitar que os mesmos se
apresentem ao ministério da saúde. <br>
Os Administradores cadastram as emergências, vagas e solicitações de médicos. Um administrador pode ser um funcionário do ministério público de saúde ou um funcionário de um hospital. Em relação ao administrador é importante saber seu nome, região e sua
identificação no ministério da saúde. <br>
Os administradores podem cadastrar emergências para realocar os médicos necessários. Para o cadastro de emergências é importante saber: A doença, a especialidade, o grau de necessidade, a quantidade de casos confirmados, o número de médicos necessários e o
local da emergência. <br>
Os administradores podem cadastrar vagas de médicos para determinadas regiões. No cadastro de vagas é importante saber: A especialidade, o grau de necessidade, o número de médicos necessários e o local da emergência e se a vaga é temporária ou permanente. <br>
Os Administradores podem solicitar médicos específicos para suas regiões. Para a solicitação de um médico é importante saber: O registro técnico do médico, e sua situação militar, a região a qual está solicitando o médico, o nível de necessidade e se a solicitação é
para viagem ou realocação. Caso um médico seja solicitado ele irá receber um email informando e será contactado pelos representantes do ministério da saúde para verificar a disponibilidade do médico. <br>
Os administradores podem ter acessos a relatórios. Entre os relatórios é importante saber: quais cidades possuem alguma emergência, quais emergências estão sendo atendidas, os médicos que possuem registro militar entre outros. <br>

###4	RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
![Alt text](https://github.com/edsonsb96/trab01/blob/master/Tela%20Inicial.png)
https://github.com/EversonDelmaschio/trab01/blob/master/projeto%20BD.bmpr


###5	MODELO CONCEITUAL<br>
    5.1 NOTACAO ENTIDADE RELACIONAMENTO
![Alt text](https://github.com/edsonsb96/trab01/blob/master/trab-final-conceitual.jpg "Modelo Conceitual")
    
    5.2 NOTACAO UML (Caso esteja fazendo a disciplina de analise)

####5.1 Validação do Modelo Conceitual
    [Grupo01] -> [Ana Rubia] - Tabalho Validado
    [Grupo02] -> [André Barbosa] - Trabalho Validado

####5.2 DECISÕES DE PROJETO
    [atributo]: [descrição da decisão]
    Registro Militar: Optamos por incluir uma tabela que armazena-se o registro militar dos médicos pois, em caso de emergencia poderia-    se buscar os médicos reservistar do exercito.
    /*
    EXEMPLO:
    a) Campo endereço: em nosso projeto optamos por um campo multivalorado e composto, pois a empresa 
    pode possuir para cada departamento mais de uma localização... 
    b) justifique!
    */

####5.3 DESCRIÇÃO DOS DADOS 
    //[objeto]: [descrição do objeto]
   Medico : Tabela que Armazena as informações relativas aos médicos
   id: Código identificador do resgistro do médico
   nome: Nome do médico
   Registro_conselho: Registro do médico no conselho regional de medicina
   crm: Sigla identificadora da região no qual o médico é cadastrado pelo conselho.
   cod_vaga: código da vaga ao qual o médico está atendendo.
   disponibilidade: Indica se o médico esta ou não disponivel para Remanejamento
   qtd_atendimento: Indica a quantidade de atendimentos que o médico possui registrado.
   cod_localidade: Indica a localidade em que o médico esta situado.
   
   Medico_especialidade: Tabela que armazena o código do médico e o código das suas respectvas especialidades.
   cod_médico: Indica o código do médico
   cod_especialidade: indica o código da especialidade
   
   Especialidade: Tabela que registra as especialidade reconhecidas pelo Ministerio da Saude.
   id: código identificador do registro da especialidade
   nome: Indica o nome da especialidade.
   
   especialidade_doença: tabela que armazena o código da especialidade e das doenças relativas a essa especialidade.
   cod_especialidade: Indica o código da especialidade
   cod_doença: Indica o código da doença
   
   Doença: tabela que armazena as doenças reconhecidas pelo Ministério da Saude.
   id: código identificador do registro da doença
   nome: Indica o nome da doença, ou como foi identificada pelo médico.
   
   localidade: tabela que armazena os municipios do Brasil.
   id:código identificador do registro do municipio
   municipio: Indica o nome do municipio
   cod_estado: indica o nome do estado ao qual esse municipio pertence.
   
   Estado: Tabela que armazena o nome dos estados do Brasil.
   id:código identificador do registro do municipio
   estado: Indica o nome do estado.
   UF: indica a Sigla do estado
   
   Registro_Militar: Tabela que armazena o registro militar dos médicos.
   cod_médico: indica o código do médico
   resgistro: indica o registro militar do relacionado ao médico.
   
   Administardor: Tabela que armazena os dados do usuario "administardor"
   nome: indica o nome do usuario
   registro: indica o registro do usuario no SUS.
   login: nome de usuario para acesso ao sistema
   senha: código do usuaroi para validação do acesso.
   
   vaga: Tabela que Armazena as vagas disponiveis no sistema.
   
   
   /*
    EXEMPLO:
    CLIENTE: Tabela que armazena as informações relativas ao cliente<br>
    CPF: campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa.<br>
    */

###6	MODELO LÓGICO<br>
![Alt text](https://github.com/edsonsb96/trab01/blob/master/trab-final-logico.jpg "Modelo Lógico")

###7	MODELO FÍSICO<br>
https://github.com/EversonDelmaschio/trab01/blob/master/Modelo_Fisico.sql

###8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>

####8.1 DETALHAMENTO DAS INFORMAÇÕES
        Detalhamento sobre as informações e processo de obtenção ou geração dos dados.
        Referenciar todas as fontes referentes a :
        a) obtenção dos dados
        A obtenção dos dados foi feita através da extração de informações disponilizadas pelos sites do IBGE e MINISTÉRIO DA SAUDE por           meio de planilhas. Foi utilizado um programa em Java para fazer a leitura dos dados da planilha e gerar os arquivos .txt usados         para fazer a inserção no banco de dados.
        
        b) obtenção de códigos reutilizados
        Não houve reaproveitamento de códigos na alimentação do banco. Apenas na geração do programa para leitura de aqrquivos em excel.
        
        c) fontes de estudo para desenvolvimento do projeto
        Site utilizado para obtenção das bases de dados:
        http://www.ibge.gov.br/home/
        Site utilizado para obtenção das bases de dados:
        http://portalsaude.saude.gov.br/
        Site utilizado como base de informaões para geração do programa leitor de planilhas:
        http://www.devmedia.com.br/lendo-e-escrevendo-arquivos-do-excel-com-a-api-jxl-parte-i/7328
        Base de dados:
        https://github.com/EversonDelmaschio/trab01/tree/master/Base_Dados
        
####8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
        a) inclusão das instruções para criação das tabelas e estruturas de amazenamento do BD
        As instruções utilizadas seguem acima no modelo Fisico apresentado.
        
        b) inclusão das instruções de inserção dos dados nas referidas tabelas
        segue a baixo uma pasta com os arquivos .txt dos insert's aplicados nas tabelas.
        https://github.com/EversonDelmaschio/trab01/tree/master/Tabelas
        
        c) inclusão das instruções para execução de outros procedimentos necessários
        a maior parte das alterações foram feitas pelos recursos de alteração do postgres ou aplicados diretamente no modelo fisico.
        ex: Alteração de nome de variavel, alteração de tipo de variavel e alteração de tamanho de variavel.
        na pasta acima segue algumas alterações que foram reaizadas.

###9	TABELAS E PRINCIPAIS CONSULTAS<br>
####9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS<br>
####9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE<br>
####9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS<br>
####9.4	CONSULTAS QUE USAM OPERADORES LIKE<br>
####9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS<br>
####9.6	CONSULTAS COM JUNÇÃO<br>
####9.7	CONSULTAS COM GROUP BY<br>
####9.8	CONSULTAS COM LEFT E RIGHT JOIN<br>
####9.9	CONSULTAS COM SELF JOIN E VIEW<br>
####9.10	SUBCONSULTAS<br>
###10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES<br>
###11	DIFICULDADES ENCONTRADAS PELO GRUPO<br>
###12  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/

# TRABALHO 01
Trabalho desenvolvido durante a disciplina de BD

#Sumário

###1	COMPONENTES<br>
Everson Delmaschio<br>

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
![Alt text](https://github.com/edsonsb96/trab01/blob/master/Tela%20de%20Login.png)
![Alt text](https://github.com/edsonsb96/trab01/blob/master/Tela%20Inicial.png)
![Alt text](https://github.com/edsonsb96/trab01/blob/master/Tela%20de%20Consulta.png)
![Alt text](https://github.com/edsonsb96/trab01/blob/master/Tela%20de%20%20solcita%C3%A7%C3%A3o.png)
![Alt text](https://github.com/edsonsb96/trab01/blob/master/Tela%20de%20cadastro%20vaga.png)
![Alt text](https://github.com/edsonsb96/trab01/blob/master/Tela%20de%20Cadastro%20emergencia.png)
![Alt text](https://github.com/edsonsb96/trab01/blob/master/Tela%20de%20Relatorios.png)
![Alt text](https://github.com/edsonsb96/trab01/blob/master/Tela%20de%20Graficos.png)

###5	MODELO CONCEITUAL<br>
    5.1 NOTACAO ENTIDADE RELACIONAMENTO
![Alt text](https://github.com/edsonsb96/trab01/blob/master/trab-final-conceitual.jpg "Modelo Conceitual")
    
    5.2 NOTACAO UML (Caso esteja fazendo a disciplina de analise)

####5.1 Validação do Modelo Conceitual
    [Grupo01] -> [Ana Rubia] - Tabalho Validado
    [Grupo02] -> [André Barbosa] - Trabalho Validado

####5.2 DECISÕES DE PROJETO
    [atributo]: [descrição da decisão]
    
    EXEMPLO:
    a) Campo endereço: em nosso projeto optamos por um campo multivalorado e composto, pois a empresa 
    pode possuir para cada departamento mais de uma localização... 
    b) justifique!

####5.3 DESCRIÇÃO DOS DADOS 
    [objeto]: [descrição do objeto]
    
    EXEMPLO:
    CLIENTE: Tabela que armazena as informações relativas ao cliente<br>
    CPF: campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa.<br>


###6	MODELO LÓGICO<br>
![Alt text](https://github.com/edsonsb96/trab01/blob/master/trab-final-logico.jpg "Modelo Lógico")

###7	MODELO FÍSICO<br>
https://github.com/edsonsb96/trab01/blob/master/modelo%20_Fisico-final.sql

###8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
####8.1 DETALHAMENTO DAS INFORMAÇÕES
        Detalhamento sobre as informações e processo de obtenção ou geração dos dados.
        Referenciar todas as fontes referentes a :
        a) obtenção dos dados
        b) obtenção de códigos reutilizados
        c) fontes de estudo para desenvolvimento do projeto
        
####8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
        a) inclusão das instruções para criação das tabelas e estruturas de amazenamento do BD
        b) inclusão das instruções de inserção dos dados nas referidas tabelas
        https://github.com/edsonsb96/trab01/blob/master/Insert_medicos.txt
        c) inclusão das instruções para execução de outros procedimentos necessários

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

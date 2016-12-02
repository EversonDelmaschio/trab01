-- Gera��o de Modelo f�sico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Vaga (
descricao VARCHAR(100),
nivel_requisicao VARCHAR(50),
tipo_requisicao VARCHAR(50),
id SERIAL PRIMARY KEY,
qtd_atendimento INTEGER,
data DATE,
qtd_medico INTEGER,
cod_administrador INTEGER,
cod_localidade INTEGER,
cod_especialidade INTEGER,
cod_doenca INTEGER,
qtd_casos INTEGER);

CREATE TABLE Adiministrador (
id SERIAL PRIMARY KEY,
login VARCHAR(50),
senha VARCHAR(10),
registro_sus INTEGER);

CREATE TABLE M�dico (
registro_conselho INTEGER,
nome VARCHAR(200),
id SERIAL PRIMARY KEY,
disponibilidade VARCHAR(30),
crm varchar(10),
qtd_atendimento INTEGER,
data_alocacao DATE,
data_nascimento DATE,
cod_vaga INTEGER,
cod_localidade INTEGER,
FOREIGN KEY(cod_vaga) REFERENCES Vaga (id));

CREATE TABLE Registro_Militar (
cod_medico INTEGER,
reg_militar SERIAL PRIMARY KEY,
FOREIGN KEY(cod_medico) REFERENCES M�dico (id));

CREATE TABLE Especialidade (
id SERIAL PRIMARY KEY,
nome VARCHAR(100));

CREATE TABLE Doen�a (
id SERIAL PRIMARY KEY,
nome VARCHAR(200));

CREATE TABLE Estado (
estado VARCHAR(100),
uf VARCHAR(2),
id SERIAL PRIMARY KEY);

CREATE TABLE Localidade (
id SERIAL PRIMARY KEY,
municipio VARCHAR(100),
cod_estado INTEGER,
FOREIGN KEY(cod_estado) REFERENCES Estado (id));

CREATE TABLE Historico (
data DATE,
cod_medico INTEGER,
cod_vaga INTEGER,
id SERIAL PRIMARY KEY,
FOREIGN KEY(cod_vaga) REFERENCES Vaga (id),
FOREIGN KEY(cod_medico) REFERENCES m�dico (id));

CREATE TABLE medico_especialidade (
cod_especialidade INTEGER,
cod_medico INTEGER,
FOREIGN KEY(cod_especialidade) REFERENCES Especialidade (id),
FOREIGN KEY(cod_medico) REFERENCES M�dico (id));

CREATE TABLE especialidade_doenca (
cod_especialidade INTEGER,
cod_doen�a INTEGER,
FOREIGN KEY(cod_especialidade) REFERENCES Especialidade (id),
FOREIGN KEY(cod_doen�a) REFERENCES Doen�a (id));

ALTER TABLE Vaga ADD FOREIGN KEY(cod_administrador) REFERENCES Adiministrador (id);
ALTER TABLE Vaga ADD FOREIGN KEY(cod_localidade) REFERENCES Localidade (id);
ALTER TABLE Vaga ADD FOREIGN KEY(cod_especialidade) REFERENCES Especialidade (id);
ALTER TABLE Vaga ADD FOREIGN KEY(cod_doenca) REFERENCES Doen�a (id);
ALTER TABLE M�dico ADD FOREIGN KEY(cod_localidade) REFERENCES Localidade (id);
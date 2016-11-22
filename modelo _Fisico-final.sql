-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Vaga (
descricao VARCHAR(30),
nivel_requisicao VARCHAR(10),
tipo_requisicao VARCHAR(10),
id SERIAL PRIMARY KEY,
qtd_atendimento INTEGER,
data DATE,
especialidade VARCHAR(10),
municipio VARCHAR(10),
qtd_medico VARCHAR(10),
cod_administrador INTEGER,
cod_localidade INTEGER,
cod_especialidade INTEGER,
cod_doenca INTEGER,
qtd_casos INTEGER);

CREATE TABLE Adiministrador (
id SERIAL PRIMARY KEY,
login VARCHAR(10),
senha VARCHAR(10),
nome VARCHAR(10),
data_nascimento DATE);

CREATE TABLE Médico (
cod_especialidade INTEGER,
registro_tecnico VARCHAR(10),
nome VARCHAR(30),
id SERIAL PRIMARY KEY,
disponibilidade VARCHAR(10),
qtd_atendimento INTEGER,
data_alocacao DATE,
data_nascimento DATE,
cod_vaga INTEGER,
cod_localidade INTEGER,
FOREIGN KEY(cod_vaga) REFERENCES Vaga (id));

CREATE TABLE Registro_Militar (
cod_medico INTEGER,
reg_militar INTEGER PRIMARY KEY,
id SERIAL,
FOREIGN KEY(id) REFERENCES Médico (id));

CREATE TABLE Especialidade (
id SERIAL PRIMARY KEY,
nome VARCHAR(30));

CREATE TABLE Doença (
id SERIAL PRIMARY KEY,
nome VARCHAR(30),
especialidade VARCHAR(30));

CREATE TABLE Estado (
estado VARCHAR(30),
id SERIAL PRIMARY KEY);

CREATE TABLE Localidade (
id SERIAL PRIMARY KEY,
municipio VARCHAR(10),
cod_estado INTEGER,
FOREIGN KEY(cod_estado) REFERENCES Estado (id));

CREATE TABLE Historico (
data DATE,
cod_medico INTEGER,
cod_vaga SERIAL PRIMARY KEY,
id integer,
FOREIGN KEY(id) REFERENCES Vaga (id));

CREATE TABLE medico_especilidade (
cod_especilidade INTEGER,
cod_medico INTEGER,
FOREIGN KEY(cod_especilidade) REFERENCES Especialidade (id),
FOREIGN KEY(cod_medico) REFERENCES Médico (id));

CREATE TABLE especialidade_doenca (
cod_especialidade INTEGER,
cod_doença INTEGER,
FOREIGN KEY(cod_especialidade) REFERENCES Especialidade (id),
FOREIGN KEY(cod_doença) REFERENCES Doença (id));

ALTER TABLE Vaga ADD FOREIGN KEY(cod_administrador) REFERENCES Adiministrador (id);
ALTER TABLE Vaga ADD FOREIGN KEY(cod_localidade) REFERENCES Localidade (id);
ALTER TABLE Vaga ADD FOREIGN KEY(cod_especialidade) REFERENCES Especialidade (id);
ALTER TABLE Vaga ADD FOREIGN KEY(cod_doenca) REFERENCES Doença (id);
ALTER TABLE Médico ADD FOREIGN KEY(cod_localidade) REFERENCES Localidade (id);
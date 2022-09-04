-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE TBCidade (
IDCidade INT not null PRIMARY KEY,
NomeCidade varchar(50) not null,
CODUF varchar(2) not null
)

CREATE TABLE TBEstado (
IDEstado varchar(2) not null PRIMARY KEY,
NomeEstado varchar(30) not null
)

CREATE TABLE TBPessoa (
IDPessoa INT not null PRIMARY KEY,
CEP varchar(10) not null,
CPF varchar(20) not null,
DataNascimento DATE not null,
RG varchar(15) not null,
NomePessoa varchar(50) not null,
Telefone BIGINT not null,
Endereço varchar(40) not null,
Email varchar(40) not null,
CODCidade INT not null,
FOREIGN KEY(CODCidade) REFERENCES TBCidade (IDCidade)
)

CREATE TABLE TBFuncionario (
CODPessoa INT not null PRIMARY KEY,
DataAdmissao DATE not null,
Salario decimal(10,2) not null,
Funcao varchar(30) not null,
FOREIGN KEY(CODPessoa) REFERENCES TBPessoa (IDPessoa)
)

CREATE TABLE TBCliente (
CODPessoa INT not null PRIMARY KEY,
HistoricoMedico varchar(max) not null,
Observacao varchar(max) not null,
FOREIGN KEY(CODPessoa) REFERENCES TBPessoa (IDPessoa)
)

CREATE TABLE TBMedico (
CODPessoa INT not null PRIMARY KEY,
FOREIGN KEY(CODPessoa) REFERENCES TBPessoa (IDPessoa)
)

CREATE TABLE TBConsulta (
IDConsulta INT not null PRIMARY KEY,
DataConsulta DATE not null,
Horario TIME not null,
Valor decimal(10,2) not null,
CODFuncionario INT not null,
CODCliente INT not null,
CODPlano INT not null,
CODCRM INT not null,
CODEspecialidade INT not null,
FOREIGN KEY(CODFuncionario) REFERENCES TBFuncionario (CODPessoa),
FOREIGN KEY(CODCliente) REFERENCES TBCliente (CODPessoa)
)

CREATE TABLE TBMedicoEspecialidade (
CODCRM INT not null,
CODEspecialidade INT not null,
DataCRM DATE not null,
PRIMARY KEY(CODCRM,CODEspecialidade),
FOREIGN KEY(CODCRM) REFERENCES TBMedico (CODPessoa)
)

CREATE TABLE TBEspecialidade (
IDEspecialidade INT not null PRIMARY KEY,
NomeEspecialidade varchar(40) not null
)

CREATE TABLE TBPlanoSaude (
IDPlano INT not null PRIMARY KEY,
NomePlano varchar(50) not null,
Valor decimal(10,2) not null,
Observacao varchar(max) not null
)

CREATE TABLE TBReceita (
IDReceita INT not null PRIMARY KEY,
Data DATE not null,
Prescricao varchar(max) not null,
Observacao varchar(max) not null,
CODConsulta INT not null,
FOREIGN KEY(CODConsulta) REFERENCES TBConsulta (IDConsulta)
)

CREATE TABLE TBReceitaExame (
CODExame INT not null,
CODReceita INT not null,
PRIMARY KEY(CODExame,CODReceita),
FOREIGN KEY(CODReceita) REFERENCES TBReceita (IDReceita)
)

CREATE TABLE TBExame (
IDExame INT not null PRIMARY KEY,
Data DATE not null,
Diagnostico varchar(max) not null
)

ALTER TABLE TBCidade ADD FOREIGN KEY(CODUF) REFERENCES TBEstado (IDEstado)
ALTER TABLE TBConsulta ADD FOREIGN KEY(CODPlano) REFERENCES TBPlanoSaude (IDPlano)
ALTER TABLE TBConsulta ADD FOREIGN KEY(CODEspecialidade,,) REFERENCES TBMedicoEspecialidade (CODCRM,CODEspecialidade)
ALTER TABLE TBMedicoEspecialidade ADD FOREIGN KEY(CODEspecialidade) REFERENCES TBEspecialidade (IDEspecialidade)
ALTER TABLE TBReceitaExame ADD FOREIGN KEY(CODExame) REFERENCES TBExame (IDExame)

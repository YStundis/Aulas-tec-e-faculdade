create database BDClubeIFSP

use BDClubeIFSP

CREATE TABLE TBUsa (
CodSocio int not null,
CodArea int not null,
Hora time not null,
Data date not null
)

CREATE TABLE TBFuncao (
IDFuncao int not null PRIMARY KEY,
CodProfessor int not null,
Descricao varchar(100) not null
)

CREATE TABLE TBProfessor (
IDProfessor int not null PRIMARY KEY,
Funcao varchar(30) not null,
DataContratacao date not null
)

CREATE TABLE TBCompeticao (
IDCompeticao int not null PRIMARY KEY,
Nome varchar(50) not null,
Data date not null,
Observacao varchar(max)
)

CREATE TABLE TBModalidade (
IDModalidade int not null PRIMARY KEY,
Nome varchar(50) not null,
Tipo varchar(50) not null,
LimiteParticipante bigint not null
)

CREATE TABLE TBRealizada (
CodArea int not null,
CodCompeticao int not null,
Hora time not null,
Data date not null,
FOREIGN KEY(CodCompeticao) REFERENCES TBCompeticao (IDCompeticao)
)

CREATE TABLE TBCompete (
CodAtleta int not null,
CodCompeticao int not null,
Posicao varchar(max) not null,
Data date not null,
FOREIGN KEY(CodCompeticao) REFERENCES TBCompeticao (IDCompeticao)
)

CREATE TABLE TBParticipaAtleta (
CodAtleta int not null PRIMARY KEY,
CodSocio int not null,
CodModalidade int not null,
Desconto bigint not null,
Data date not null,
FOREIGN KEY(CodModalidade) REFERENCES TBModalidade (IDModalidade)
)

CREATE TABLE TBAreaEsportiva (
IDAreaEsportiva int not null PRIMARY KEY,
Nome varchar(50) not null,
Observacao varchar(max)
)

CREATE TABLE TBMinistraModalidade (
CodProfessor int not null,
CodArea int not null,
CodModalidade int not null,
Data date not null,
Hora time not null,
TotalDeHoras time not null,
FOREIGN KEY(CodProfessor) REFERENCES TBProfessor (IDProfessor),
FOREIGN KEY(CodArea) REFERENCES TBAreaEsportiva (IDAreaEsportiva),
FOREIGN KEY(CodModalidade) REFERENCES TBModalidade (IDModalidade)
)

CREATE TABLE TBTelefone (
IDTelefone int not null PRIMARY KEY,
CodPessoa int not null
)

CREATE TABLE TBDepente (
CodDependente int PRIMARY KEY,
Sexo varchar(1) not null,
CodSocio int not null
)

CREATE TABLE TBUsufrui (
CodDependente int not null,
CodArea int not null,
Codsocio int not null,
Data date not null,
Hora time not null,
FOREIGN KEY(CodDependente) REFERENCES TBDepente (CodDependente),
FOREIGN KEY(CodArea) REFERENCES TBAreaEsportiva (IDAreaEsportiva)
)

CREATE TABLE TBSocio (
CodSocio int not null PRIMARY KEY,
CapitalSocial decimal(10,2) not null
)

CREATE TABLE TBPessoa (
IDPessoa int not null PRIMARY KEY,
Nome varchar(50) not null,
DataDeNascimeto date not null,
CPF bigint not null,
Lagradouro varchar(50) not null,
Cidade varchar(50) not null,
Estado varchar(2) not null
)

ALTER TABLE TBUsa ADD FOREIGN KEY(CodSocio) REFERENCES TBSocio (CodSocio)
ALTER TABLE TBUsa ADD FOREIGN KEY(CodArea) REFERENCES TBAreaEsportiva (IDAreaEsportiva)
ALTER TABLE TBFuncao ADD FOREIGN KEY(CodProfessor) REFERENCES TBProfessor (IDProfessor)
ALTER TABLE TBRealizada ADD FOREIGN KEY(CodArea) REFERENCES TBAreaEsportiva (IDAreaEsportiva)
ALTER TABLE TBCompete ADD FOREIGN KEY(CodAtleta) REFERENCES TBParticipaAtleta (CodAtleta)
ALTER TABLE TBParticipaAtleta ADD FOREIGN KEY(CodSocio) REFERENCES TBSocio (CodSocio)
ALTER TABLE TBTelefone ADD FOREIGN KEY(CodPessoa) REFERENCES TBPessoa (IDPessoa)
ALTER TABLE TBDepente ADD FOREIGN KEY(CodSocio) REFERENCES TBSocio (CodSocio)
ALTER TABLE TBUsufrui ADD FOREIGN KEY(Codsocio) REFERENCES TBSocio (CodSocio)

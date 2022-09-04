-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE tb disciplina (
IDDisciplina int not null PRIMARY KEY,
Nome varchar(50) not null,
QTD int not null,
Conteudo varchar(50) not null
)

CREATE TABLE tb docente (
IDDocente int not null PRIMARY KEY,
Nome varchar(50) not null,
CPF big int,
DataAdmissao date not null,
telefone big int not null,
email varchar(50) not null,
taxacomissao decimal(5,2) not null
)

CREATE TABLE TBDisciplinaDoscente (
CODDiscplina int not null,
CODDoscente int not null,
PRIMARY KEY(CODDiscplina,CODDoscente),
FOREIGN KEY(CODDiscplina) REFERENCES tb disciplina (IDDisciplina),
FOREIGN KEY(CODDoscente) REFERENCES tb docente (IDDocente)
)


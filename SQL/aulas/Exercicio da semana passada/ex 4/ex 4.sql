-- Gera��o de Modelo f�sico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE TBDocente (
IDDocente int not null PRIMARY KEY,
CODDocente N�mero(4),
NomeDocente varchar(50) not null,
sexo varchar(1) not null,
idade int not null
)

CREATE TABLE TBDisciplina (
IDDisciplina N�mero(4) not null PRIMARY KEY,
CODDicsciplina int not null,
Quantidade int not null,
Descricao varchar(50) not null,
FOREIGN KEY(CODDicsciplina) REFERENCES TBDocente (IDDocente)
)

ALTER TABLE TBDocente ADD FOREIGN KEY(CODDocente) REFERENCES TBDisciplina (IDDisciplina)

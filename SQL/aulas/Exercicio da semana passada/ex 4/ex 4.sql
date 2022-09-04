-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE TBDocente (
IDDocente int not null PRIMARY KEY,
CODDocente Número(4),
NomeDocente varchar(50) not null,
sexo varchar(1) not null,
idade int not null
)

CREATE TABLE TBDisciplina (
IDDisciplina Número(4) not null PRIMARY KEY,
CODDicsciplina int not null,
Quantidade int not null,
Descricao varchar(50) not null,
FOREIGN KEY(CODDicsciplina) REFERENCES TBDocente (IDDocente)
)

ALTER TABLE TBDocente ADD FOREIGN KEY(CODDocente) REFERENCES TBDisciplina (IDDisciplina)

-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE TBAluno (
IDAluno int not null PRIMARY KEY,
Nome varchar(50) not null,
Email varchar(50),
CODCurso int
)

CREATE TABLE TBCurso (
IDCurso int not null PRIMARY KEY,
Nome varchar(50) not null,
Obervacao varchar(max) not null,
CODAluno int,
FOREIGN KEY(CODAluno) REFERENCES TBAluno (IDAluno)
)

ALTER TABLE TBAluno ADD FOREIGN KEY(CODCurso) REFERENCES TBCurso (IDCurso)

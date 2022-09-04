-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE TBFuncionario (
IDFuncionario INT not null PRIMARY KEY,
NomeFuncionario Varchar(50) not null,
endereco Varchar(50) not null,
sexo Varchar(1) not null,
CODMesa INT not null
)

CREATE TABLE TBMesa (
IDMesa INT not null PRIMARY KEY,
CODFuncionario INT not null,
FOREIGN KEY(CODFuncionario) REFERENCES TBFuncionario (IDFuncionario)
)

ALTER TABLE TBFuncionario ADD FOREIGN KEY(CODMesa) REFERENCES TBMesa (IDMesa)

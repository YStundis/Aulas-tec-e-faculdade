-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE TBAula (
IDAula int not null PRIMARY KEY,
Nome varchar(50) not null,
CODSala int not null,
not null)

CREATE TABLE TBSala (
IDSala int not null PRIMARY KEY,
Nome varchar(50) not null,
CODAula int not null,
FOREIGN KEY(CODAula) REFERENCES TBAula (IDAula),
not null)

ALTER TABLE TBAula ADD FOREIGN KEY(CODSala) REFERENCES TBSala (IDSala)

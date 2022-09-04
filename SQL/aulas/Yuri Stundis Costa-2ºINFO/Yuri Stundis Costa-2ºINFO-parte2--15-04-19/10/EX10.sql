-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE TBGerenteCliente (
CODGerente int not null,
CODCliete int not null,
PRIMARY KEY(CODGerente,CODCliete),
not null)

CREATE TABLE TBCliente (
IDCliente int not null PRIMARY KEY,
Nome varchar(50) not null,
Telefone big int not null,
not null)

CREATE TABLE TBGerete (
IDGerente int not null PRIMARY KEY,
Nome varchar(50) not null,
DataAdmissao date not null,
not null)

ALTER TABLE TBGerenteCliente ADD FOREIGN KEY(CODGerente) REFERENCES TBGerete (IDGerente)
ALTER TABLE TBGerenteCliente ADD FOREIGN KEY(CODCliete) REFERENCES TBCliente (IDCliente)

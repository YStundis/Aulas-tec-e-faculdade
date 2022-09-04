-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE TBCliente (
IDCliente int not null PRIMARY KEY,
Nome varchar(50) not null,
Telefone big int not null,
Email varchar(50) not null,
CODGerente int not null,
not null)

CREATE TABLE TBGerente (
IDGerete int not null PRIMARY KEY,
Nome varchar(50) not null,
DataAdmissao date not null,
TaxaComissao decimal(5,2) not null,
CODCliente int not null,
FOREIGN KEY(CODCliente) REFERENCES TBCliente (IDCliente),
not null)

ALTER TABLE TBCliente ADD FOREIGN KEY(CODGerente) REFERENCES TBGerente (IDGerete)

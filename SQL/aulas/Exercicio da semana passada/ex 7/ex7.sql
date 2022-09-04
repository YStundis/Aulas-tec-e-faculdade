-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE TBVendedor (
IDVendedor int not null PRIMARY KEY,
nome varchar(50) not null,
DataAdmissao date not null,
email varchar(50) not null,
telefone big int not null,
TaxaComissao decimal(5,7) not null,
observacao varchar(max) not null
)

CREATE TABLE TBClientes (
IDClientes int not null PRIMARY KEY,
telefoe big int not null,
observacao varchar(max) not null
)

CREATE TABLE TBVendedorClientes (
CODVendedor int,
CODCiente int,
PRIMARY KEY(CODVendedor,CODCiente),
FOREIGN KEY(CODVendedor) REFERENCES TBVendedor (IDVendedor),
FOREIGN KEY(CODCiente) REFERENCES TBClientes (IDClientes)
)


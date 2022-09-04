-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE TBEstado (
IDUF INT not null PRIMARY KEY,
NomeEstado varchar(50) not null
)

CREATE TABLE TBCidade (
IDCidade INT not null PRIMARY KEY,
NomeCidade varchar(50) not null,
CODUF INT not null
)

CREATE TABLE TBVendedor (
IDVendedor INT not null PRIMARY KEY,
NomeVendedor varchar(50) not null,
DataAdimissao DATE not null,
Email varchar(50) not null,
Telefone BIG INT not null,
TaxaComissao decimal(5,2) not null,
Observacao varchar(max) not null,
CODCidade INT not null,
FOREIGN KEY(CODCidade) REFERENCES TBCidade (IDCidade)
)

CREATE TABLE TBPaís (
IDPais INT not null PRIMARY KEY,
NomePais varchar(50) not null
)

CREATE TABLE TBFabricante (
IDFabricante INT not null PRIMARY KEY,
NomeFabricante varchar(50) not null,
Observacao varchar(max) not null,
CODPais INT not null,
FOREIGN KEY(CODPais) REFERENCES TBPaís (IDPais)
)

CREATE TABLE TBVeículo (
IDVeiculo INT not null PRIMARY KEY,
Descricao varchar(max) not null,
Modelo varchar(50) not null,
Ano INT not null,
PrecoTabela decimal(10,2) not null,
CODPais INT not null,
CODFabricante INT not null,
FOREIGN KEY(CODPais) REFERENCES TBPaís (IDPais),
FOREIGN KEY(CODFabricante) REFERENCES TBFabricante (IDFabricante)
)

CREATE TABLE TBGaragem (
IDGaragem INT not null PRIMARY KEY,
NomeGaragem varchar(50) not null,
Proprietario varchar(50) not null,
Observação varchar(max) not null,
Endereço varchar(50) not null,
Telefone BIG INT not null,
CODCidade INT not null,
FOREIGN KEY(CODCidade) REFERENCES TBCidade (IDCidade)
)

CREATE TABLE TBGaragemVeiculo (
CODGaragem INT not null,
CODVeiculo INT not null,
DataEntrada DATE not null,
DataSaida DATE not null,
PrecoVenda decimal(10,2) not null,
Observacao varchar(max) not null,
PRIMARY KEY(CODGaragem,CODVeiculo),
FOREIGN KEY(CODGaragem) REFERENCES TBGaragem (IDGaragem),
FOREIGN KEY(CODVeiculo) REFERENCES TBVeículo (IDVeiculo)
)

CREATE TABLE TBCliente (
IDCliente INT not null PRIMARY KEY,
NomeCliente varchar(50) not null,
Telefone BIG INT not null,
CPF BIG INT not null,
RG BIG INT not null,
CODCidade INT not null,
FOREIGN KEY(CODCidade) REFERENCES TBCidade (IDCidade)
)

CREATE TABLE TBNegocios (
IDNegocio INT not null PRIMARY KEY,
Data DATE not null,
Valor decimal(10,2) not null,
CODCliente INT not null,
CODVeiculo INT not null,
CODGaragem INT not null,
CODVendedor INT not null,
Comissao decimal(5,2) not null,
Observacao varchar(max) not null,
FOREIGN KEY(CODCliente) REFERENCES TBCliente (IDCliente),
FOREIGN KEY(CODGaragem,CODVeiculo,) REFERENCES TBGaragemVeiculo (CODGaragem,CODVeiculo),
FOREIGN KEY(CODVendedor) REFERENCES TBVendedor (IDVendedor)
)

ALTER TABLE TBCidade ADD FOREIGN KEY(CODUF) REFERENCES TBCidade (IDCidade)

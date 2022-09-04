-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE TBEstado (
IDUF Varchar(2) Not null PRIMARY KEY,
NomeEstado Varchar(50)
)

CREATE TABLE TBCidade (
IDCidade INT Not null PRIMARY KEY,
NomeCidade Varchar(2) Not null,
CodUF Varchar(2) Not null,
FOREIGN KEY(CodUF) REFERENCES TBEstado (IDUF)
)

CREATE TABLE TBPessoa (
IDPessoa INT Not null PRIMARY KEY,
NomePessoa varchar(50) Not null,
Telefone BIGINT Not null,
Email Varchar(50) Not null,
CodCidade INT Not null,
FOREIGN KEY(CodCidade) REFERENCES TBCidade (IDCidade)
)

CREATE TABLE TBFuncionario (
CodFuncionario INT Not null,
DataAdmissao Date Not null,
Salario Decimal (10,2) Not null,
CodPosto INT Not null,
Sexo Varchar(1) Not null,
CPF BIGINT Not null,
RG BIGINT Not null,
FOREIGN KEY(CodFuncionario) REFERENCES TBPessoa (IDPessoa)
)

CREATE TABLE TBTipoCombustivel (
IDTipo INT Not null PRIMARY KEY,
DescricaoTipo Varchar(50) Not null
)

CREATE TABLE TBPostoCombustivel (
IDPosto INT PRIMARY KEY,
NomePosto Varchar(50) Not null,
CNPJ BIGINT Not null,
IE BIGINT Not null,
Endereco INT Not null,
CEP Varchar(15) Not null,
Telefone BIGINT Not null,
Email Varchar(40) Not null,
Site Varchar(50) Not null,
CodCidade INT Not null,
FOREIGN KEY(CodCidade) REFERENCES TBCidade (IDCidade)
)

CREATE TABLE TBBombaCombustivel (
IDBomba INT Not null PRIMARY KEY,
DataInstalacao Date Not null,
NúmeroLacre varchar(20) Not null,
DataInspecao Date Not null,
NomeOrgaoInspetor Varchar(50) Not null,
CapacidadeBomba Decimal(10,2) Not null,
Observacao Varchar(max) Not null,
CodPosto INT Not null,
CodTipoCombustivel INT Not null,
FOREIGN KEY(CodPosto) REFERENCES TBPostoCombustivel (IDPosto),
FOREIGN KEY(CodTipoCombustivel) REFERENCES TBTipoCombustivel (IDTipo)
)

CREATE TABLE TBFornecedorCombustivel (
CodFornecedor INT Not null,
CNPJ BIGINT Not null,
IE BIGINT Not null,
Observacao Varchar(max) Not null,
FOREIGN KEY(CodFornecedor) REFERENCES TBPessoa (IDPessoa)
)

CREATE TABLE TBBombaFornecedor (
CodBomba INT Not null,
CodTipo INT Not null,
CodFornecedor INT Not null,
DataFornecimento Date Not null,
QtdeLitro Decimal (10,2) Not null,
PrecoCombustivel Decimal (10,2) Not null,
Observacao Varchar(max) Not null,
FOREIGN KEY(CodBomba) REFERENCES TBBombaCombustivel (IDBomba),
FOREIGN KEY(CodTipo) REFERENCES TBTipoCombustivel (IDTipo),
FOREIGN KEY(CodFornecedor) REFERENCES TBPessoa (IDPessoa)
)

CREATE TABLE TBCliente (
CodCliente INT Not null,
LimiteCredito Decimal(10,2) Not null,
Sexo Varchar(1) Not null,
CPF BIGINT Not null,
RG BIGINT Not null,
Observacao Varchar(max) Not null,
FOREIGN KEY(CodCliente) REFERENCES TBPessoa (IDPessoa)
)

CREATE TABLE TBAbastecimento (
CodBomba INT Not null,
CodTipo INT Not null,
CodPlaca Varchar(8) Not null,
Data Date Not null,
Quantidade Decimal(10,2) Not null,
CodFuncionario INT Not null,
Observacao varchar(max) Not null,
Hora Time Not null,
FOREIGN KEY(CodBomba) REFERENCES TBBombaCombustivel (IDBomba),
FOREIGN KEY(CodTipo) REFERENCES TBTipoCombustivel (IDTipo),
FOREIGN KEY(CodFuncionario) REFERENCES TBPessoa (IDPessoa)
)

CREATE TABLE TBModeloCarro (
IDModelo INT Not null PRIMARY KEY,
Descricao Varchar (max) Not null
)

CREATE TABLE TBVeiculo (
IDPlaca Varchar(8) Not null PRIMARY KEY,
CodCliente INT Not null,
CodModelo INT Not null,
AnoCarro int Not null,
Observacao INT Not null,
FOREIGN KEY(CodCliente) REFERENCES TBPessoa (IDPessoa),
FOREIGN KEY(CodModelo) REFERENCES TBModeloCarro (IDModelo)
)

ALTER TABLE TBFuncionario ADD FOREIGN KEY(CodPosto) REFERENCES TBPostoCombustivel (IDPosto)
ALTER TABLE TBAbastecimento ADD FOREIGN KEY(CodPlaca) REFERENCES TBVeiculo (IDPlaca)

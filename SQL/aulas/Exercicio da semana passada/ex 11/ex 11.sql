-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE TBVeiculo (
IDVeiculo int not null PRIMARY KEY,
AnoAuto date not null,
precoTabela decimal (5,2) not null,
Modelo varchar(50) not null
)

CREATE TABLE TBMotorista (
IDMotorista Número(4) PRIMARY KEY,
NomeMotorista varchar(50) not null,
IdadeMotorista int not null
)

CREATE TABLE TBVeiculoMotorista (
CODVeiculo int not null,
CODMotorista Número(4),
PRIMARY KEY(CODVeiculo,CODMotorista),
FOREIGN KEY(CODVeiculo) REFERENCES TBVeiculo (IDVeiculo),
FOREIGN KEY(CODMotorista) REFERENCES TBMotorista (IDMotorista)
)


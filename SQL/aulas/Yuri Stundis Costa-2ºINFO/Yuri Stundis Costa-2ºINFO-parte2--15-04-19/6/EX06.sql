-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE TBpessoacertidao (
CODpessoa int not null,
CODcertidao int not null,
PRIMARY KEY(CODpessoa,CODcertidao)
)

CREATE TABLE TBCertidaodeNascimento (
IDCertidao int not null PRIMARY KEY,
DadosDosPais varchar(50) not null,
DataNascimento date not null,
not null)

CREATE TABLE TBPessoa (
IDPessoa int not null PRIMARY KEY,
nome varchar(50) not null,
telefone big int not null,
observacao  varchar(max) not null,
not null)

ALTER TABLE TBpessoacertidao ADD FOREIGN KEY(CODpessoa) REFERENCES TBPessoa (IDPessoa)
ALTER TABLE TBpessoacertidao ADD FOREIGN KEY(CODcertidao) REFERENCES TBCertidaodeNascimento (IDCertidao)

-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE TBProdutos (
IDProdutos int not null PRIMARY KEY,
Nome varchar(50) not null,
Observacao varchar(max) not null,
CODPedidos int not null
)

CREATE TABLE TBPedidos (
IDPedidos int not null PRIMARY KEY,
Nome varchar(50) not null,
Observacao varchar(max) not null,
CODProdutos int not null,
FOREIGN KEY(CODProdutos) REFERENCES TBProdutos (IDProdutos)
)

ALTER TABLE TBProdutos ADD FOREIGN KEY(CODPedidos) REFERENCES TBProdutos (IDProdutos)

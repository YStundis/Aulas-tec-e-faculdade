-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE TBPedido (
IDPedido int not null PRIMARY KEY,
DataPedido date not null,
Obs varchar(max) not null
)

CREATE TABLE TBProduto (
IDProduto int not null PRIMARY KEY,
NomeProduto varchar(50) not null,
QtdProduto int not null,
DataFProduto date not null,
DataVProduto date not null,
CustoProduto decimal(10,2) not null
)

CREATE TABLE TBPedidoProduto (
CodPedido int not null,
CodProduto int not null,
QtdVenda int not null,
PrecoVenda decimal(10,2) not null,
PRIMARY KEY(CodPedido,CodProduto),
FOREIGN KEY(CodPedido) REFERENCES TBPedido (IDPedido),
FOREIGN KEY(CodProduto) REFERENCES TBProduto (IDProduto)
)


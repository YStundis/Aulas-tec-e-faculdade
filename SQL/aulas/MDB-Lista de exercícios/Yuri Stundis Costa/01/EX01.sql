-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE TBPedido (
IDPedido INT not null PRIMARY KEY,
DataPedido DATE not null,
CodCliente Número(4) not null,
CodVendedor Número(4) not null,
Obs varchar(max) not null/*falha: chave estrangeira*//*falha: chave estrangeira*/
)

CREATE TABLE TBProduto (
IDProduto INT not null PRIMARY KEY,
NomeProduto varchar(50) not null,
QtdProduto INT not null,
DataFProduto DATE not null,
DataVProduto DATE not null,
CustoProduto decimal(10,2) not null
)

CREATE TABLE TBPedidoProduto (
CodPedido INT not null,
CodProduto INT not null,
QtdVenda INT not null,
PrecoVenda decimal(10,2) not null,
PRIMARY KEY(CodPedido,CodProduto),
FOREIGN KEY(CodPedido) REFERENCES TBPedido (IDPedido),
FOREIGN KEY(CodProduto) REFERENCES TBProduto (IDProduto)
)



create database BDVendaIFSP1850334

use BDVendaIFSP1850334

create table TBPessoa1850334(
	IDPessoa		int			not null primary key,
	NomePessoa		varchar(50)	not null,
	CPFPessoa		bigint		not null,
	StatusPessoa	int			not null
)

create table TBEstagiario1850334(
	CodEstagiario		int						not null primary key,
	EstBolsa			decimal(10,2)			not null,
	EstStatus			int						not null

	foreign key (CodEstagiario) references TBPessoa1850334(IDPessoa)
)

create table TBFuncionario1850334(
	CodFuncionario		int				not null primary key,
	Salariofuncionario	decimal(10,2)	not null,
	CodSupervisor		int				not null

	foreign key (CodFuncionario) references TBPessoa1850334(IDPessoa),
	foreign key (CodSupervisor) references TBFuncionario1850334(CodFuncionario)
)

create table TBCliente1850334(
	CodCliente		int						not null primary key,
	Rendacliente	decimal(10,2)			not null,
	CreditoCliente	int						not null

	foreign key (CodCliente) references TBPessoa1850334(IDPessoa)
)

create table TBPedido1850334(
	IDPedido		int				not null primary key,
	PedData			date			not null,
	PedStatus		int				not null,
	CodCliente		int				not null,
	CodFuncionario  int				not null,
	CodEstagiario	int				not null

	foreign key (CodFuncionario) references TBFuncionario1850334(CodFuncionario),
	foreign key (CodCliente) references TBCliente1850334(CodCliente),
	foreign key (CodEstagiario) references TBEstagiario1850334(CodEstagiario)
)

create table TBProduto1850334(
	IDProduto			int						not null primary key,
	ProdutoDescricao	varchar(60)				not null,
	ProdutoQtde			int						not null,
	ProdutoValorCompra	decimal(10,2)			not null,
	ProdutoStatus		int						not null
)
create table TBItensPedido1850334(
    primary key (CodProduto, CodPedido),
	CodPedido		int			not null,
	CodProduto		int			not null,
	ITQtde			int			not null,
	ITPValorRenda	int			not null

	foreign key (CodPedido) references TBPedido1850334 (IDPedido),
	foreign key (CodProduto) references TBProduto1850334 (IDProduto)
)





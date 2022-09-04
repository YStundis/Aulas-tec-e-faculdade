/*
Projeto do BDHospedagem
MDB - 06/05/2019
Finalidade: Criar o banco de dados usando a linguagem SQL
*/

--Criar e Usar o Banco de Dados

CREATE DATABASE BDHospedagem1850181
USE BDHospedagem1850181

CREATE TABLE TBItem1850181( --TBItem
	IDItem int not null primary key,
	DescricaoItem varchar(40) not null
)

CREATE TABLE TBServico1850181(
	IDServico int not null primary key,
	NomeServico varchar(50) not null,
	ValorServico decimal(10,2) not null
)

--Frescura do Xyko
CREATE TABLE TBEstado1850181(
	IDUF varchar(2) not null primary key,
	NomeEstado varchar(50) not null
)
CREATE TABLE TBCidade1850181(
	IDCidade int not null primary key,
	NomeEstado varchar(50) not null,
	CODUF varchar(2) not null, --FK TBEstado

	Foreign Key(CODUF) references TBEstado1850181(IDUF)
)
--Dps apagar os comentários; Se eu esqueci, foi mal Xyko kkkkk

CREATE TABLE TBCliente1850181(
	IDCliente int not null primary key,
	NomeCliente varchar(50) not null,
	RGCliente varchar(15) not null,
	BairroCliente varchar(50) not null,
	EnderecoCliente varchar(50) not null,
	CEPCliente bigint not null,
	NascimentoCliente date not null,
	CODCidade int not null, --FK TBCidade

	Foreign Key(CODCidade) references TBCidade1850181(IDCidade)
)

CREATE TABLE TBTelefone1850181
(
	IDTelefone int not null primary key,
	CODCliente int not null, --FK TBCLiente
	TipoTelefone varchar(20) not null,

	Foreign Key(CODCliente) references TBCliente1850181(IDCliente)
)

CREATE TABLE TBChale1850181
(
	IDChale int not null primary key,
	Localizacao varchar(50) not null,
	Capacidade int not null,
	ValorAltaEstacao decimal(10,2) not null,
	ValorBaixaEstacao decimal(10,2) not null
)

CREATE TABLE TBChaleItem1850181
(
	CODChale int not null, --FK TBChale
	CODItem int not null, --FK TBItem
	primary key(CODChale, CODItem), --Chave primária composta

	Foreign Key(CODChale) references TBChale1850181(IDChale),
	Foreign Key(CODItem) references TBItem1850181(IDItem)
)

CREATE TABLE TBHospedagem1850181(
	IDHospedagem int not null primary key,
	CODChale int not null, --FK TBChale
	CODCliente int not null, --FK TBCliente
	CODCidade int not null, --FK TBCidade
	DataInicio date not null,
	DataFim date not null,
	QtdePessoa int not null,
	Desconto decimal(10,2) not null,
	ValorFinal decimal(10,2) not null,

	Foreign Key(CODChale) references TBChale1850181(IDChale),
	Foreign Key(CODCliente) references TBCliente1850181(IDCliente),
	Foreign Key(CODCidade) references TBCidade1850181(IDCidade)
)

CREATE TABLE TBHospedagemServico1850181
(
	CODHospedagem int not null, --FK TBHospedagem
	CODServico int not null, --FK TBServico
	DataServico date not null,
	ValorServico decimal(10,2) not null,
	primary key(CODHospedagem, CODServico, DataServico),

	Foreign Key(CODHospedagem) references TBHospedagem1850181(IDHospedagem),
	Foreign Key(CODServico) references TBServico1850181(IDServico)
)
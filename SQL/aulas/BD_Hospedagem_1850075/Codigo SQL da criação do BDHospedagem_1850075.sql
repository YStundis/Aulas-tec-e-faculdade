/*
Projeto do BDHospedagem
MDB - 06-05-2019
Finalidade: Criar o banco de dados usando a linguagem SQL.

*/
---------------------------
-- criar o Banco de Dados
Create Database BDHospedagem_1850075
--------------------------------------
-- qual o banco vou trabalhar
use BDHospedagem_1850075
-------------------------------------
-- criando a tabela TBItem_1850075
CREATE TABLE TBITEM_1850075
(
  IDItem   int   not null primary key,
  DescricaoItem   Varchar(40)  not null
)
  ----------------------------  
  CREATE TABLE TBServico_1850075
  (
       IDServico int not null primary key,
	   NomeServico varchar(50) not null,
	   ValorServico decimal(10,2) not null
  )
-------------------------
-- criando a tabela do TBESTADO
CREATE TABLE TBEstado_1850075
(
  IDUF Varchar(2) not null primary key,
  NomeEstado Varchar(50) not null
)
----------------------------
-- criar a table TBCidade
CREATE TABLE TBCidade_1850075
(
   IDCidade int not null primary key,
   NomeCidade varchar(50) not null,
   CodUF varchar(2) not null, -- FK TBEstado
   -- Relacionamento com TBEstado
   Foreign Key (CodUF) references TBEstado_1850075 (IDUF)
)
----------------------------
-- criar a tabela TBCliente
CREATE TABLE TBCliente_1850075
(
   IDCliente  int    not null  primary key,
   NomeCliente  varchar(50)     not null,
   RGCliente   varchar(15)      not null,
   BairroCliente  varchar(50)   not null,
   EnderecoCliente  varchar(50) not null,
   Cep              Bigint      not null,
   NascimentoCliente Date       not null,
   CodCidade         int        not null, -- FK TBCidade
   -- Relacionamento com TBCidade
   Foreign Key (CodCidade) references TBCidade_1850075 (IDCidade)
    
)
-----------------------------------------
Create Table TBTelefone_1850075
(

   IDTelefone int not null primary key,
   CodCliente int not null, -- FK TBCliente
   TipoTelefone varchar(20) not null,
   -- criar o relacionamento
   Foreign Key (CodCliente) references TBCliente_1850075 (IDCliente)

)
-------------------------------------------------
-- Criar a tabela TBChale
CREATE TABLE TBChale_1850075
(
  IDChale     int not null primary key,
  Localizacao varchar(50)   not null,
  Capacidade  int           not null,
  ValorAltaEstacao  decimal(10,2)   not null,
  ValorBaixaEstacao decimal(10,2)   not null,
)
-------------------------------------------
-- criar a tabela TBChaleItem (N:N)
CREATE TABLE TBChaleItem_1850075
(
  CodChale   int   not null, -- FK TBChale
  CodItem    int   not null, -- FK TBItem
  -- chave primaria composta
  primary key (CodChale,CodItem),
  -- os relacionamentos
  Foreign Key (CodChale) references TBChale_1850075 (IDChale),
  Foreign Key (CodItem)  references TBItem_1850075  (IDItem)
)
----------------------------------------------
-- criar a tabela TBHospedagem
CREATE TABLE TBHospedagem_1850075
(
   IDHospedagem int not null primary key,
   CodChale int not null, -- FK TBChale
   CodCliente int not null, -- FK TBCliente
   CodCidade int not null, -- FK TBCidade
   DataInicio date not null,
   DataFim date not null,
   QtdePessoa int not null,
   Desconto decimal(10,2) not null,
   ValorFinal decimal(10,2) not null,
   -- Relacionamentos
   Foreign Key (CodChale) references TBChale_1850075 (IDChale),
   Foreign Key (CodCliente) references TBCliente_1850075 (IDCliente),
   Foreign Key (CodCidade) references TBCidade_1850075 (IDCidade)
)
----------------------------------- 
-- criar a tabela TBHospedagem_Servico
CREATE TABLE TBHospedagem_Servico_1850075
(
   CodHospedagem   int    not null,  -- FK TBHospedagem
   CodServico      int    not null,  --FK TBServico
   DataServico     date   not null,
   ValorServico    decimal(10,2) not null,
   -- chave primária composta
   primary Key (CodHospedagem, CodServico, DataServico),
   --fazer os relacionamentos
   Foreign Key (CodHospedagem) references  TBHospedagem_1850075 (IDHospedagem),
   Foreign Key (CodServico) references  TBServico_1850075 (IDServico)
)
----------------------------------------------------------

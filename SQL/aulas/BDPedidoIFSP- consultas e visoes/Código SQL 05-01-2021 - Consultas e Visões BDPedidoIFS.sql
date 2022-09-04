/*
IFSP - Brt
Data: 05/01/2021
BDPedidoIFSP
---------------------------------------------------------
Objetivo: fazer consultas (select) e criar vis�es (views)
----------------------------------------------------------
Executar no SQL Server e no SQL Lite
---------------------------------------------------------
*/

-- abrir o BDPedidoIFSP
Use BDPedidoIFSP 
-----------------------------------

/*
Exerc�cio 1) 
Fazer um consulta que retorna os dados dos fornecedores.
Do Fornecedor: IDFornecedor, Nome
Criar os campos: Contar quantas compras fez do Fornecedor
                      : Total de compras do Fornecedor
*/
----------------------------------------------------------
-- Fun��o de agrega��o (sum() count(), avg() -- fun�oes que trabalha lado n tabela)
-- usamos l�gica com os relacionamentos

SELECT    f.IDFornecedor								[C�digo Fornecedor],
				f.ForNome										Fornecedor,
				-- construir os campos
				count (distinct i.CmpCodigo)			[Qtde Compras],
				Sum (i.ICQtde * i.ICValor)				[Total de Compras]
FROM       TBFornecedor			f,
	        	TBCompra                c,
				TBItensCompra        i
Where      (f.IDFornecedor = c.ForCodigo) -- relacionamento 1
and		    (c.IDcompra  =  i.CmpCodigo)   -- relacionamento 2
group by   f.IDFornecedor, f.ForNome
----------------------------------------------------
-- teste para saber se est� correto exerc�cio 1
Select * 
from TBCompra    c
where c.ForCodigo = 4
-----------------------------------

/*
Exerc�cio 2)
A partir do exerc�cio 1)
Fazer uma view (vis�o)
-- executar a vis�o
*/
---------------------------------------------------------------------
-- criar a vis�o
Create view VMostraDadosDosFornecedores1
AS
	SELECT    f.IDFornecedor								[C�digo Fornecedor],
					f.ForNome										Fornecedor,
					-- construir os campos
					count (distinct i.CmpCodigo)			[Qtde Compras],
					Sum (i.ICQtde * i.ICValor)				[Total de Compras]
	FROM       TBFornecedor			f,
	        		TBCompra                c,
					TBItensCompra        i
	Where      (f.IDFornecedor = c.ForCodigo) -- relacionamento 1
	and		    (c.IDcompra  =  i.CmpCodigo)   -- relacionamento 2
	group by   f.IDFornecedor, f.ForNome

---------------------------------------  
-- executar a vis�o
SELECT * FROM VMostraDadosDosFornecedores1
---------------------------------------

/*
Exerc�cio 3)
Criar um consulta que retorna os dados dos Pedidos
Retornar: C�digo Pedido, DataPedido;
Calcular: Qtde de Produtos tem no Pedido;
Calcular: Total do Pedido em valor
*/
-- L�gica da consulta
Select   p.PedCodigo							[C�digo Pedido],
			p.PedData								[Data do Pedido],
			count (i.PrdCodigo)				[Qtde de Produtos],
			sum(i.IpeValor * i.IpeQtde)	[Total do Pedido]
from		TBPedido				p,
     		TBItensPedido		i
where   ( p.PedCodigo = i.PedCodigo) -- relacionamento
group by  p.PedCodigo,   p.PedData	
-----------------------------------------------------
/*
 Exerc�cio 4)
 Fazer uma vis�o, view do exerc�cio 3)
 Executar a vis�o
*/

-- criar uma vis�o
Create view VMostraDadosDosPedidos1
As
	Select   p.PedCodigo							[C�digo Pedido],
				p.PedData								[Data do Pedido],
				count (i.PrdCodigo)				[Qtde de Produtos],
				sum(i.IpeValor * i.IpeQtde)	[Total do Pedido]
	from		TBPedido				p,
     			TBItensPedido		i
	where   ( p.PedCodigo = i.PedCodigo) -- relacionamento
	group by  p.PedCodigo,   p.PedData	

------------------------------------------------------------
-- executa uma view (vis�o)
Select * from VMostraDadosDosPedidos1
----------------------------------------------------

-- Est� correto o c�digo
/*
Exerc�cio 5) Fazer uma consulta re retorna/Mostra de TBProduto:
Codigo, descri��o produto.
Calcular: Total das compras;
Calcular: Qtde de Compras Feitas
*/
-----------------------------------------------------------------
Select		p.PrdCodigo		[C�digo Produto],
				p.PrdDescricao	[Nome do Produto],
				sum (i.ICValor * i.ICQtde)    [Total Compra do Produto],
				count (i.PrdCodigo)				[ Qtde de Compras]
from			TBProduto					p,
     			TBItensCompra			i
where		(P.PrdCodigo  =  i.PrdCodigo)  -- relacionamento
group by   p.PrdCodigo, p.PrdDescricao
--------------------------------------------------------------
-- teste de Santo Thom�
Select * 
From TBItensCompra i
where i.PrdCodigo = 3
-- retorna 9 registros
-----------------------------
-- teste de Santo Thom�
Select * 
From TBItensCompra i
where i.PrdCodigo = 3
-- retorna 9 registros

-----------------------------
/*
Fazer uma vis�o do Exerc�cio 5)
Executar a vis�o
*/
----------------------------------------------------------
-- Fazer agora
Create view VMostraDadosDowsProdutos1
as
	Select		p.PrdCodigo		[C�digo Produto],
					p.PrdDescricao	[Nome do Produto],
					sum (i.ICValor * i.ICQtde)    [Total Compra do Produto],
					count (i.PrdCodigo)				[ Qtde de Compras]
	from			TBProduto					p,
     				TBItensCompra			i
	where		(P.PrdCodigo  =  i.PrdCodigo)  -- relacionamento
	group by   p.PrdCodigo, p.PrdDescricao
---------------------------------------------------
-- executar a vis�o
Select * from VMostraDadosDowsProdutos1
-------------------------------------------------------------


/*
Exerc�cio 6)
Fazer uma consulta que retorna os Dados das Vendas dos Cliente
Mostrar de cliente: c�digo, nome;
Calcular: Qtde de Pedidos do Cliente;
calcular: Toral de Pedidos do Cliente.
*/
-- L�gica de consulta

Select	c.CliCodigo				[C�digo Ccliente],
			c.CliNome					Cliente,
			count (distinct i.PedCodigo)		[Quantidade de Pedidos],
			sum (i.IpeQtde * i.IpeValor)		[Total dos Pedidos]
from		TBCliente         c,
            TBPedido			p,
			TBItensPedido   i
where   ( c.CliCodigo = p.CliCodigo )     -- relacionamento 1 (pk = fk)
and		 (p.PedCodigo  =  i.PedCodigo)  -- relacionamento 2 (pk=FK)
group by  c.CliCodigo, c.CliNome
--------------------------------------------

/*
Exerc�cio 7)
Fazer uma vis�o do exerc�cio 6)
*/
-- Fazer agora
Create view VMostraDadosDosProdutos1
AS
	Select	c.CliCodigo				[C�digo Ccliente],
				c.CliNome					Cliente,
				count (distinct i.PedCodigo)		[Quantidade de Pedidos],
				sum (i.IpeQtde * i.IpeValor)		[Total dos Pedidos]
	from		TBCliente         c,
				TBPedido			p,
				TBItensPedido   i
	where   ( c.CliCodigo = p.CliCodigo )     -- relacionamento 1 (pk = fk)
	and		 (p.PedCodigo  =  i.PedCodigo)  -- relacionamento 2 (pk=FK)
	group by  c.CliCodigo, c.CliNome

-----------------------------------------------
-- executar a vis�o
Select * from VMostraDadosDosProdutos1
--------------------------------------------
-- Tarefa
/*
Exerc�cio 8)
Fazer uma consultaque retorna os dados do Vendedor
Mostar c�digo e nome do Vendedor;
Calcular: Qtde de Pedidos do Vendedor;
           : Total de Pedidos do Vendedor
*/

Select	    v.VedCodigo				            [C�digo vendedor],
			v.VedNome					         Vendedor,
			count (distinct i.PedCodigo)		[Quantidade de Pedidos],
			sum (i.IpeQtde * i.IpeValor)		[Total dos Pedidos]
from		TBVendedor          v,
            TBPedido			p,
			TBItensPedido       i
where       (v.VedCodigo  =  p.VedCodigo)     
and		    (p.PedCodigo  =  i.PedCodigo)  
group by     v.VedCodigo, v.VedNome

-----------------------------------------------

-- Tarefa
/*
Exerc�cio 9)
Fazer uma vis�o (view) para exerc�cio 8)
*/

Create view VMostraDadosDosProdutos2
AS
	Select	    v.VedCodigo				            [C�digo vendedor],
				v.VedNome					         Vendedor,
				count (distinct i.PedCodigo)		[Quantidade de Pedidos],
				sum (i.IpeQtde * i.IpeValor)		[Total dos Pedidos]
	from		TBVendedor          v,
				TBPedido			p,
				TBItensPedido       i
	where       (v.VedCodigo  =  p.VedCodigo)     
	and		    (p.PedCodigo  =  i.PedCodigo)  
	group by     v.VedCodigo, v.VedNome




	Select * from VMostraDadosDosProdutos2
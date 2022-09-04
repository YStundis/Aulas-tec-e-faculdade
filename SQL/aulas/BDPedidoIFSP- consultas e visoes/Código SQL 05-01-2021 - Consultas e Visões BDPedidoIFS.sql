/*
IFSP - Brt
Data: 05/01/2021
BDPedidoIFSP
---------------------------------------------------------
Objetivo: fazer consultas (select) e criar visões (views)
----------------------------------------------------------
Executar no SQL Server e no SQL Lite
---------------------------------------------------------
*/

-- abrir o BDPedidoIFSP
Use BDPedidoIFSP 
-----------------------------------

/*
Exercício 1) 
Fazer um consulta que retorna os dados dos fornecedores.
Do Fornecedor: IDFornecedor, Nome
Criar os campos: Contar quantas compras fez do Fornecedor
                      : Total de compras do Fornecedor
*/
----------------------------------------------------------
-- Função de agregação (sum() count(), avg() -- funçoes que trabalha lado n tabela)
-- usamos lógica com os relacionamentos

SELECT    f.IDFornecedor								[Código Fornecedor],
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
-- teste para saber se está correto exercício 1
Select * 
from TBCompra    c
where c.ForCodigo = 4
-----------------------------------

/*
Exercício 2)
A partir do exercício 1)
Fazer uma view (visão)
-- executar a visão
*/
---------------------------------------------------------------------
-- criar a visão
Create view VMostraDadosDosFornecedores1
AS
	SELECT    f.IDFornecedor								[Código Fornecedor],
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
-- executar a visão
SELECT * FROM VMostraDadosDosFornecedores1
---------------------------------------

/*
Exercício 3)
Criar um consulta que retorna os dados dos Pedidos
Retornar: Código Pedido, DataPedido;
Calcular: Qtde de Produtos tem no Pedido;
Calcular: Total do Pedido em valor
*/
-- Lógica da consulta
Select   p.PedCodigo							[Código Pedido],
			p.PedData								[Data do Pedido],
			count (i.PrdCodigo)				[Qtde de Produtos],
			sum(i.IpeValor * i.IpeQtde)	[Total do Pedido]
from		TBPedido				p,
     		TBItensPedido		i
where   ( p.PedCodigo = i.PedCodigo) -- relacionamento
group by  p.PedCodigo,   p.PedData	
-----------------------------------------------------
/*
 Exercício 4)
 Fazer uma visão, view do exercício 3)
 Executar a visão
*/

-- criar uma visão
Create view VMostraDadosDosPedidos1
As
	Select   p.PedCodigo							[Código Pedido],
				p.PedData								[Data do Pedido],
				count (i.PrdCodigo)				[Qtde de Produtos],
				sum(i.IpeValor * i.IpeQtde)	[Total do Pedido]
	from		TBPedido				p,
     			TBItensPedido		i
	where   ( p.PedCodigo = i.PedCodigo) -- relacionamento
	group by  p.PedCodigo,   p.PedData	

------------------------------------------------------------
-- executa uma view (visão)
Select * from VMostraDadosDosPedidos1
----------------------------------------------------

-- Está correto o código
/*
Exercício 5) Fazer uma consulta re retorna/Mostra de TBProduto:
Codigo, descrição produto.
Calcular: Total das compras;
Calcular: Qtde de Compras Feitas
*/
-----------------------------------------------------------------
Select		p.PrdCodigo		[Código Produto],
				p.PrdDescricao	[Nome do Produto],
				sum (i.ICValor * i.ICQtde)    [Total Compra do Produto],
				count (i.PrdCodigo)				[ Qtde de Compras]
from			TBProduto					p,
     			TBItensCompra			i
where		(P.PrdCodigo  =  i.PrdCodigo)  -- relacionamento
group by   p.PrdCodigo, p.PrdDescricao
--------------------------------------------------------------
-- teste de Santo Thomé
Select * 
From TBItensCompra i
where i.PrdCodigo = 3
-- retorna 9 registros
-----------------------------
-- teste de Santo Thomé
Select * 
From TBItensCompra i
where i.PrdCodigo = 3
-- retorna 9 registros

-----------------------------
/*
Fazer uma visão do Exercício 5)
Executar a visão
*/
----------------------------------------------------------
-- Fazer agora
Create view VMostraDadosDowsProdutos1
as
	Select		p.PrdCodigo		[Código Produto],
					p.PrdDescricao	[Nome do Produto],
					sum (i.ICValor * i.ICQtde)    [Total Compra do Produto],
					count (i.PrdCodigo)				[ Qtde de Compras]
	from			TBProduto					p,
     				TBItensCompra			i
	where		(P.PrdCodigo  =  i.PrdCodigo)  -- relacionamento
	group by   p.PrdCodigo, p.PrdDescricao
---------------------------------------------------
-- executar a visão
Select * from VMostraDadosDowsProdutos1
-------------------------------------------------------------


/*
Exercício 6)
Fazer uma consulta que retorna os Dados das Vendas dos Cliente
Mostrar de cliente: código, nome;
Calcular: Qtde de Pedidos do Cliente;
calcular: Toral de Pedidos do Cliente.
*/
-- Lógica de consulta

Select	c.CliCodigo				[Código Ccliente],
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
Exercício 7)
Fazer uma visão do exercício 6)
*/
-- Fazer agora
Create view VMostraDadosDosProdutos1
AS
	Select	c.CliCodigo				[Código Ccliente],
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
-- executar a visão
Select * from VMostraDadosDosProdutos1
--------------------------------------------
-- Tarefa
/*
Exercício 8)
Fazer uma consultaque retorna os dados do Vendedor
Mostar código e nome do Vendedor;
Calcular: Qtde de Pedidos do Vendedor;
           : Total de Pedidos do Vendedor
*/

Select	    v.VedCodigo				            [Código vendedor],
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
Exercício 9)
Fazer uma visão (view) para exercício 8)
*/

Create view VMostraDadosDosProdutos2
AS
	Select	    v.VedCodigo				            [Código vendedor],
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
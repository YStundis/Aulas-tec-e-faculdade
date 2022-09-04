/*
IFSP - Brt
Data: 12/01/2021
BDPedidoIFSP
---------------------------------------------------------
Objetivo: 
1) fazer consultas e criar vis�es (views);
2) trabalhar com a linguagem SQL;
3) usar SQL Server e/ou SQL Lite como interface de trabalho
----------------------------------------------------------
Executar no SQL Server e no SQL Lite
---------------------------------------------------------
*/

-- abrir o BDPedidoIFSP
	Use BDPedidoIFSP
-----------------------------------
-- tinha ficado como Tarefa
/*
Exerc�cio 1)
Fazer uma consulta que retorna os Dados das Vendas dos Cliente
Mostrar de cliente: c�digo, nome;
Calcular:		Qtde de pedidos do Cliente;
Calcular:		Toral de pedidos do Cliente.
*/
-- Quais tabelas envolvidas?
-- Quais tabelas envolvidas: TBCliente, TBPedido, TBItesnPedio

	Select c.clicodigo [C�digo Cliente],
	c.CliNome Cliente,
	count (distinct i.PedCodigo) [Qtde de Pedidos],
	Sum   (i.IpeValor * i.IpeQtde) [Total dos Pedidos]
	from TBCliente c,
	TBPedido p,
	TBItensPedido i

	Where    (c.CliCodigo = p.CliCodigo )
	and      (p.PedCodigo = i.PedCodigo)
	group by c.clicodigo, c.CliNome

	Select *
	From  TBPedido p
	where p.CliCodigo = 3

-----------------------------------------------
-- Tarefa da aula passada
/*
	Exerc�cio 2)
	Fazer uma vis�o do exerc�cio 6)
*/

	create view VRetornaDadosCliente
	as
	Select c.clicodigo [C�digo Cliente],
	c.CliNome Cliente,
	count (distinct i.PedCodigo) [Qtde de Pedidos],
	Sum   (i.IpeValor * i.IpeQtde) [Total dos Pedidos]
	from TBCliente c,
	TBPedido p,
	TBItensPedido i

	Where    (c.CliCodigo = p.CliCodigo )
	and      (p.PedCodigo = i.PedCodigo)
	group by c.clicodigo, c.CliNome

	Select * from VRetornaDadosCliente

/*
-- Exerc�cio 3
-- Nota: venda esta de TBItensPedido.

Fazer uma consulta que retorna dados do Produto em rela��o � venda:
C�digo Produto, Descri��o produto.
Calcular:  Total das Vendas do Produto
Quantidade de Pedidos que tem o Produto

*/
-- Quais as tabelas envolvidas?  
-----------------------------------------------

-- como saber se est� correto?
-- Teste 1

-- Quais as tabelas envolvidas: TBProduto, TBItensPedido
-------------------------------------------------------------------------

	Select p.PrdCodigo [C�digo do Produto],
	p.PrdDescricao Descri��o,
	Sum   (i.IpeQtde * i.IpeValor) [Total dos Pedidos],
	count (i.PedCodigo) [Qtde de Pedidos]
	from TBProduto p,
	TBItensPedido i

	where (p.PrdCodigo = i.PrdCodigo)
	group by p.PrdCodigo, p.PrdDescricao

	Select *
	from  TBItensPedido i
	Where i.PrdCodigo = 1

------------------------------------------------
-- Fazer uma vis�o Exerc�cio 3)
/*
Exerc�cio 4)
Fazer uma vis�o/view do exerc�cio 3

*/

-- n�o pode ordenar

	Create view VMostraDadosProdutos
	As
	Select p.PrdCodigo [C�digo do Produto],
	p.PrdDescricao Descri��o,
	Sum   (i.IpeQtde * i.IpeValor) [Total dos Pedidos],
	count (i.PedCodigo) [Qtde de Pedidos]
	from TBProduto p,
	TBItensPedido i

	where    (p.PrdCodigo = i.PrdCodigo)
	group by  p.PrdCodigo, p.PrdDescricao

	Select * from VMostraDadosProdutos
	order by 3 desc

-------------------------------------
-- Exerc�cio 5
/*
Fazer uma Consulta:
C�digo do Produto, Descricao
Calcular:  Total das vendas Produtos
Condi��o: apenas produtos com 300,00 ou mais vendas
             
*/
----------------------------------------
-- como saber se est� certo ?

-- filtrar havinng ()

	Select p.PrdCodigo [C�digo do Produto],
	p.PrdDescricao Descri��o,
	Sum (i.IpeQtde * i.IpeValor) [Total dos Pedidos]
	from TBProduto p,
	TBItensPedido i

	where (p.PrdCodigo = i.PrdCodigo)
	group by p.PrdCodigo, p.PrdDescricao

	having Sum (i.IpeQtde * i.IpeValor) >= 300.00

------------------------------------------
-- Exerc�cio 6
/*
Fazer uma vis�o do exerc�cio 5)

*/

	create view VMostraDadosPedidos300
	as
	Select p.PrdCodigo [C�digo do Produto],
	p.PrdDescricao Descri��o,
	Sum (i.IpeQtde * i.IpeValor) [Total dos Pedidos]
	from TBProduto p,
	TBItensPedido i

	where    (p.PrdCodigo = i.PrdCodigo)
	group by  p.PrdCodigo, p.PrdDescricao

	having Sum (i.IpeQtde * i.IpeValor) >= 300.00

	select * from VMostraDadosPedidos300
	order by 3 desc

----------------------------------------------------------

-- Exerc�cio 7
/*
Fazer uma Consulta:
C�digo Produto, Data Pedido, Data Entrega
Calcular:  Total das vendas Produtos
Condi��o: Apenas Pedidos com 20 ou mais dias de atraso
-- usar DateDiff (day, data1, Data2)
*/

	Select p.PrdCodigo [C�digo do Produto],
	 pe.PedData  [Data Pedido],
	 pe.PedDataEntrega [Data Entrega],
	 Sum (ip.IpeQtde * ip.IpeValor) [Total dos Pedidos],
	 DATEDIFF(day, PedData, PedDataEntrega) [Dias de Atraso] 

	from TBProduto p,
	TBItensPedido ip,
	TBPedido pe

	where (p.PrdCodigo = ip.PrdCodigo)

	group by p.PrdCodigo, pe.PedData, pe.PedDataEntrega    

	
-- Exerc�cio 8
/*
Fazer uma vis�o do Exerc�cio 7)
*/

    create view VMostraDadosPedidos20
	as
	Select p.PrdCodigo [C�digo do Produto],
	 pe.PedData  [Data Pedido],
	 pe.PedDataEntrega [Data Entrega],
	 Sum (ip.IpeQtde * ip.IpeValor) [Total dos Pedidos],
	 DATEDIFF(day, PedData, PedDataEntrega) [Dias de Atraso]  
    
	from TBProduto p,
	TBItensPedido ip,
	TBPedido pe

	where (p.PrdCodigo = ip.PrdCodigo)

	group by p.PrdCodigo, pe.PedData, pe.PedDataEntrega

	select * from VMostraDadosPedidos20
	
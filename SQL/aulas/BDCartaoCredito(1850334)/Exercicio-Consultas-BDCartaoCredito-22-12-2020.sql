/*
EXERCÍCIOS Parte 1
Projeto do BDCartaoCredito
IFSP - Brt.
Data: 21/12/2020
Prof. Xyko Almeida
*/
--------------------------------------
/*
EXERCÍCIOS 1
Faça um consulta que retorne:
Da tabela TBCliente: o nome e sobrenome do cliente, seu bairro
Calcular/totalizar os débitos (tipo 1)
*/
	SELECT				c.Nome,
						c.Sobrenome,
						c.Bairro,
						l.TipoLancamento Tipo,
						Sum (l.ValorLancamento)		[Total dos Débitos]											 
	FROM				TBCliente							c,
						TBCartaoCredito               cc,
						TBLancamentoCartao		l
	Where			(c.IDCliente			=		cc.CodCliente)
	and				(cc.IDCartao			=		l.CodCartao)
	and				l.TipoLancamento = 1 
	group by		c.Nome, c.Sobrenome, 	c.Bairro, TipoLancamento

 -----------------------------------------------------
 /*
EXERCÍCIOS 2
Faça um consulta que retorne:
Da tabela TBCliente: o nome e sobrenome do cliente, seu bairro
Calcular/totalizar os Créditos (tipo 2 - pagamentos)
*/
	SELECT				c.Nome,
						c.Sobrenome,
						c.Bairro,
						l.TipoLancamento Tipo,
						Sum (l.ValorLancamento) [Total Débitos]											 
	FROM				TBCliente							c,
						TBCartaoCredito               cc,
						TBLancamentoCartao		l
	Where			(c.IDCliente			=		cc.CodCliente)
	and				(cc.IDCartao			=		l.CodCartao)
	and				l.TipoLancamento = 2      
	group by		c.Nome, c.Sobrenome, 	c.Bairro, TipoLancamento

-------------------------------------------------------
 /*
EXERCÍCIO-3
Faça um consulta que retorne:
Mostre o nome do cliente, sobrenome e a sua renda convertida em dolar e euro.
Considerar 1 dolar a = 5.10: e 1 euro  = 6,25
*/

	SELECT			c.Nome,
					c.Sobrenome,
					format (c.RendaAnual, 'C', 'pt-br') 				[Renda anual em Real],
					format (c.RendaAnual/5.10, 'c', 'en-us')       [Renda anual em Dolar],
					STR(C.RendaAnual/6.25, 10,2)		              [Renda anual em Euro]
	FROM			TBCliente   c

	SELECT STR(123.45, 6, 2) [valor conertido para duas casas];  

------------------------------------------------------
 /*
EXERCÍCIO-4
Faça um consulta que retorne:
Mostre o nome do cliente, sobrenome e a sua renda
Classifique o cliente de acordo com a sua renda anual:
'Renda Baixa' quando tem renda menor que 50.000, 
'Renda Média' quando tem renda menor ou igual a 70.000 
'Renda alta' quando  tem renda acima de 70.000.
*/
-- usar Case ... End
	SELECT			c.Nome,
					c.Sobrenome,
					c.Bairro,
					c.RendaAnual,
					CASE    WHEN c.RendaAnual   <= 50000     THEN 'Renda Baixa'
								WHEN  c.RendaAnual <= 70000   THEN 'Renda Média'
					   ELSE 'Renda Alta'
						End       [Renda Anual do Cliente]
	From			TBCliente		c
	order by 4

--------------------------------------------------------------
 /*
EXERCÍCIO-5
Faça um consulta que retorne:
Mostre o nome do cliente, sobrenome e a sua renda
Faça uma consulta que classifique os clientes em 
bairro que moram.
-- condição para os bairros: 
Bairros: Vila Feliz e Vila esperança "Nobre"
Demais bairros: "Popular"
*/
	SELECT			c.Nome,
					c.Sobrenome,
					c.rendaAnual,
					c.Bairro,
					CASE WHEN       Bairro IN ('Vila Feliz', 'Vila Esperança')
							THEN        'Nobre' 
						 Else             'Popular'
							END   [Bairro do Cliente]
	FROM			TBCliente   c

------------------------------------------------------
 /*
EXERCÍCIO-6
Faça um consulta que retorne:
Liste todos os clientes que moram no mesmo bairro das agências do banco.
*/
	Select		c.*,
				a.Bairro [Bairro Agência]
	From		TBCliente					c,
				TBCartaoCredito		cc,
				TBAgencia					a
	where	(c.IDCliente	= cc.CodCliente)
	and		(a.IDAgencia    = cc.CodAgencia)
	and		(c.Bairro       =  a.Bairro)  

--------------------------------------------------------
/*
Exercicio - 7
Mostre quais clientes não possuem cartão de crédito.
*/
	Select	c.*
	From    TBCliente    c
	where   c.IDCliente    NOT IN
	(
			Select		distinct cc.CodCliente
			from			TBCartaoCredito   cc
	)

----------------------------------------------
/*
Exercicio - 8
Mostre todos clientes.
Condição filtro: tem outlook e gmail no nome do e-mail
*/
	Select		*
	from			TBCliente		c
	where			email LIKE '%gmail%'
	or				email like '%outlook%'

-----------------------------------------------------
/*
Exercicio - 9
Mostre todos as agencias bancárias
Condição filtro: o nome da agência começa entre a e j (primeira letra nome)
*/
	Select		*
	from			TBAgencia			a
	where			a.NomeAgencia like '[a-j]%'
	order by  2

--------------------------------------------------------
/*
Exercicio - 10
Mostre o nome do cliente, 
o nome da agência e o bairro da agência, 
limite do cartão de crédito deles, 
somente para os clientes em que a conta foi abertas
nos anos de 2020, 2021 e 2022.
*/
	Select			c.Nome,
					c.Sobrenome,
					a.NomeAgencia				[Nome Agencia],
					a.Bairro							[Bairro de Agencia],
					cc.LimiteCredito				[Limite Crédito],
					year(cc.DataCadastro)	[Ano do Cadastro Cartão Crédito]
	From			TBCliente					c,
					TBCartaoCredito		cc,
					TBAgencia					a
	Where		(c.IDCliente  =  cc.CodCliente)
	and			(a.IDAgencia   = cc.CodAgencia)
	and			year(cc.DataCadastro) in (2020,2021, 2022)	
	order by    cc.DataCadastro asc

---------------------------------------------------------------
/*
Exercicio - 11
Mostre o nome do Banco, 
o nome da agência, 
Condição: agencias que não tem cartao para clientes
*/
	Select			b.NomeBanco,
					a.NomeAgencia
	From			TBBanco			b,
					TBAgencia			a
	where		(b.IDBanco = a.CodBanco)
	and			 a.IDAgencia  NOT IN
     
		 (
				Select       distinct cc.CodAgencia
				from			TBCartaoCredito   cc
		 )       

-------------------------------------------------	
/*
Exercicio - 12
Quais os clientes já gastaram mais de R$ 700,00 no seu cartão de crétito
tipo pagamento = 1
*/
	Select			c.Nome,
					c.Sobrenome,
					sum (l.ValorLancamento)		[Gasto Cartao]
	From			TBCliente					c,
					TBCartaoCredito		cc,
					TBLancamentoCartao l
	where		(c.IDCliente = cc.CodCliente)
	and			(cc.IDCartao = l.CodCartao)
	and          l.TipoLancamento = 1  
	group by     c.Nome, 	c.Sobrenome
	having		 sum (l.ValorLancamento)	>= 700.00 

----------------------------------------------------------------
/*
Exercicio - 13
Quais os clientes já pagaram mais de R$ 200,00 no seu cartão de crétito
tipo pagamento = 2
*/
	Select			c.Nome,
					c.Sobrenome,
					sum (l.ValorLancamento)		[Gasto Cartao]
	From			TBCliente					c,
					TBCartaoCredito		cc,
					TBLancamentoCartao l
	where		(c.IDCliente = cc.CodCliente)
	and			(cc.IDCartao = l.CodCartao)
	and          l.TipoLancamento = 2
	group by     c.Nome, 	c.Sobrenome
	having		 sum (l.ValorLancamento)	>= 200.00









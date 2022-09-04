/*
EXERC�CIOS Parte 1
Projeto do BDCartaoCredito
IFSP - Brt.
Data: 21/12/2020
Prof. Xyko Almeida
*/
--------------------------------------
/*
EXERC�CIOS 1
Fa�a um consulta que retorne:
Da tabela TBCliente: o nome e sobrenome do cliente, seu bairro
Calcular/totalizar os d�bitos (tipo 1)
*/
	SELECT				c.Nome,
						c.Sobrenome,
						c.Bairro,
						l.TipoLancamento Tipo,
						Sum (l.ValorLancamento)		[Total dos D�bitos]											 
	FROM				TBCliente							c,
						TBCartaoCredito               cc,
						TBLancamentoCartao		l
	Where			(c.IDCliente			=		cc.CodCliente)
	and				(cc.IDCartao			=		l.CodCartao)
	and				l.TipoLancamento = 1 
	group by		c.Nome, c.Sobrenome, 	c.Bairro, TipoLancamento

 -----------------------------------------------------
 /*
EXERC�CIOS 2
Fa�a um consulta que retorne:
Da tabela TBCliente: o nome e sobrenome do cliente, seu bairro
Calcular/totalizar os Cr�ditos (tipo 2 - pagamentos)
*/
	SELECT				c.Nome,
						c.Sobrenome,
						c.Bairro,
						l.TipoLancamento Tipo,
						Sum (l.ValorLancamento) [Total D�bitos]											 
	FROM				TBCliente							c,
						TBCartaoCredito               cc,
						TBLancamentoCartao		l
	Where			(c.IDCliente			=		cc.CodCliente)
	and				(cc.IDCartao			=		l.CodCartao)
	and				l.TipoLancamento = 2      
	group by		c.Nome, c.Sobrenome, 	c.Bairro, TipoLancamento

-------------------------------------------------------
 /*
EXERC�CIO-3
Fa�a um consulta que retorne:
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
EXERC�CIO-4
Fa�a um consulta que retorne:
Mostre o nome do cliente, sobrenome e a sua renda
Classifique o cliente de acordo com a sua renda anual:
'Renda Baixa' quando tem renda menor que 50.000, 
'Renda M�dia' quando tem renda menor ou igual a 70.000 
'Renda alta' quando  tem renda acima de 70.000.
*/
-- usar Case ... End
	SELECT			c.Nome,
					c.Sobrenome,
					c.Bairro,
					c.RendaAnual,
					CASE    WHEN c.RendaAnual   <= 50000     THEN 'Renda Baixa'
								WHEN  c.RendaAnual <= 70000   THEN 'Renda M�dia'
					   ELSE 'Renda Alta'
						End       [Renda Anual do Cliente]
	From			TBCliente		c
	order by 4

--------------------------------------------------------------
 /*
EXERC�CIO-5
Fa�a um consulta que retorne:
Mostre o nome do cliente, sobrenome e a sua renda
Fa�a uma consulta que classifique os clientes em 
bairro que moram.
-- condi��o para os bairros: 
Bairros: Vila Feliz e Vila esperan�a "Nobre"
Demais bairros: "Popular"
*/
	SELECT			c.Nome,
					c.Sobrenome,
					c.rendaAnual,
					c.Bairro,
					CASE WHEN       Bairro IN ('Vila Feliz', 'Vila Esperan�a')
							THEN        'Nobre' 
						 Else             'Popular'
							END   [Bairro do Cliente]
	FROM			TBCliente   c

------------------------------------------------------
 /*
EXERC�CIO-6
Fa�a um consulta que retorne:
Liste todos os clientes que moram no mesmo bairro das ag�ncias do banco.
*/
	Select		c.*,
				a.Bairro [Bairro Ag�ncia]
	From		TBCliente					c,
				TBCartaoCredito		cc,
				TBAgencia					a
	where	(c.IDCliente	= cc.CodCliente)
	and		(a.IDAgencia    = cc.CodAgencia)
	and		(c.Bairro       =  a.Bairro)  

--------------------------------------------------------
/*
Exercicio - 7
Mostre quais clientes n�o possuem cart�o de cr�dito.
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
Condi��o filtro: tem outlook e gmail no nome do e-mail
*/
	Select		*
	from			TBCliente		c
	where			email LIKE '%gmail%'
	or				email like '%outlook%'

-----------------------------------------------------
/*
Exercicio - 9
Mostre todos as agencias banc�rias
Condi��o filtro: o nome da ag�ncia come�a entre a e j (primeira letra nome)
*/
	Select		*
	from			TBAgencia			a
	where			a.NomeAgencia like '[a-j]%'
	order by  2

--------------------------------------------------------
/*
Exercicio - 10
Mostre o nome do cliente, 
o nome da ag�ncia e o bairro da ag�ncia, 
limite do cart�o de cr�dito deles, 
somente para os clientes em que a conta foi abertas
nos anos de 2020, 2021 e 2022.
*/
	Select			c.Nome,
					c.Sobrenome,
					a.NomeAgencia				[Nome Agencia],
					a.Bairro							[Bairro de Agencia],
					cc.LimiteCredito				[Limite Cr�dito],
					year(cc.DataCadastro)	[Ano do Cadastro Cart�o Cr�dito]
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
o nome da ag�ncia, 
Condi��o: agencias que n�o tem cartao para clientes
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
Quais os clientes j� gastaram mais de R$ 700,00 no seu cart�o de cr�tito
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
Quais os clientes j� pagaram mais de R$ 200,00 no seu cart�o de cr�tito
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









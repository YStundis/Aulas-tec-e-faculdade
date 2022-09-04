/*  IFSP Barretos
	Disciplina: Banco de Dados 2
	Banco de Trabalho: BDBrasil
	Tema: Fun��es e Procedures
	Data: 26/09/2018
*/ -----------------------------------------
/*
Fun��o (fx)/Stored Procedure (sp):
Tem um nome, recebe par�mentro e retorna dados, usa consultas.
Os dados variam de acordo com o par�metro passado.
Diferen�a entre entre fx e sp: se tiver que inserir, alterar ou
excluir dados tem que usar SP (stored Procedure) 
Se usar select pode fazer uma ou outra (fx, sp)
*/----------------------------
/* Exerc�cio 1: Fazer fun��o (fx) e uma Procedure (sp) que:
   Recebe como par�metro o C�digo de um Estado e Retorna:
   ID, nome do Estado, contar a quantidade de Cidade por Estado,
   somar o Valor total do Or�amento anual das cidades por estado 
 */
---------------------------------------------------------
Use BDBrasil
-------------------------------------
--1.1) l�gica que resolme o problema
-- supor para o Estado de S�o Paulo (SP)
Select  e.IDSigla  [UF],
		e.NomeEstado  Estado,
		Count (c.CodSigla)    [Qtde Cidades por Estado],
		sum (c.OrcamentoAnual)   [Total do Orcamento das Cidades] 
from	TBEstado		e
join	TBCidade		c
on		(e.IDSigla  = c.CodSigla)
and		e.IDSigla = 'SP'
group by  e.IDSigla,e.NomeEstado
---------------------------------
-- 1.2) fazer a fun��o (fx)
Create function	fxDadosCidadePorEstado
(@codUF   varchar (2))
Returns Table as Return
(
	Select  e.IDSigla  [UF],
			e.NomeEstado  Estado,
			Count (c.CodSigla)    [Qtde Cidades por Estado],
			sum (c.OrcamentoAnual)   [Total do Orcamento das Cidades] 
	from	TBEstado		e
	join	TBCidade		c
	on		(e.IDSigla  = c.CodSigla)
	and		e.IDSigla = @codUF   -- generalizar 
	group by  e.IDSigla,e.NomeEstado
)
----------------
-- executar a fun��o
select * from  fxDadosCidadePorEstado('SP');
select * from  fxDadosCidadePorEstado('RJ');
----------------------
 --1.3) fazer a procedure (sp) 
Create procedure spDadosCidadePorEstado
(@codUF   varchar (2))
AS
Begin
	Select  e.IDSigla  [UF],
			e.NomeEstado  Estado,
			Count (c.CodSigla)    [Qtde Cidades por Estado],
			sum (c.OrcamentoAnual)   [Total do Orcamento das Cidades] 
	from	TBEstado		e
	join	TBCidade		c
	on		(e.IDSigla  = c.CodSigla)
	and		e.IDSigla = @codUF   -- generalizar 
	group by  e.IDSigla,e.NomeEstado
End
---------------------------------
-- executar a procedure (sp)
exec spDadosCidadePorEstado 'SP';
exec spDadosCidadePorEstado 'RJ';
--------------------------------------------
/* Exerc�cio 2: 
Fazer uma fun��o (fx) e depois uma procedure (sp) que 
recebe como par�mentro c�digo de um Estado e retorna:
ID e Nome do Estado, Calcular a quantidade de Economias 
por Estado; Totalizar o valor anual das economias por estado
*/ ------------------------------------------------------
-- 1.1) l�gica que resolve situa��o Problema
Select	e.IDSigla  UF,
		e.NomeEstado  Estado,
		count (a.CodSigla) [Qtde de Economias por estado],
		sum (a.ValorEconomiaAnual) [Total Economias por estado]
from    TBEstado			e
join	TBEstadoEconomia	a
on		(e.IDSigla = a.CodSigla)
and		e.IDSigla = 'RJ' -- supor para RJ
group by e.IDSigla,e.NomeEstado
-----------------------------------
-- 2.2) fazendo a fun��o
CREATE FUNCTION fxMostraEcomiaPorEstado
( @UF varchar(2))
RETURNS TABLE AS RETURN
(
	Select	e.IDSigla  UF,
			e.NomeEstado  Estado,
			count (a.CodSigla) [Qtde de Economias por estado],
			sum (a.ValorEconomiaAnual) [Total Economias por estado]
	from    TBEstado			e
	join	TBEstadoEconomia	a
	on		(e.IDSigla = a.CodSigla)
	and		e.IDSigla = @UF -- generaliza��o
	group by e.IDSigla,e.NomeEstado   
)
-------------------------------------------
-- executar a fx
Select * from  fxMostraEcomiaPorEstado ('SP');
Select * from  fxMostraEcomiaPorEstado ('RJ');
-------------------------------------------------
--2.3) fazer a sp
CREATE PROCEDURE spMostraEcomiaPorEstado
( @UF varchar(2))
as
Begin
	Select	e.IDSigla  UF,
			e.NomeEstado  Estado,
			count (a.CodSigla) [Qtde de Economias por estado],
			sum (a.ValorEconomiaAnual) [Total Economias por estado]
	from    TBEstado			e
	join	TBEstadoEconomia	a
	on		(e.IDSigla = a.CodSigla)
	and		e.IDSigla = @UF -- generaliza��o
	group by e.IDSigla,e.NomeEstado   
End
-------------------------------------- 
Exec spMostraEcomiaPorEstado 'SP';
Exec spMostraEcomiaPorEstado 'RJ';
----------------------------------
/* Exerc�cio 3: 
Fazer uma fun��o (fx) e depois uma procedure (sp) que recebe 
como par�mentro o C�digo de uma regi�o e retorna:
ID, nome, da regi�o, contar a Quantidade de economias 
por regi�o e totalizar o valor anual das economias da regi�o.
*/
-- 3.1) l�gica que resolve situa��o problema
Select	r.IDRegiao  [C�digo Regi�o],
		r.NomeRegiao	Regi�o,
		COUNT (a.CodSigla) [Qtde economias por Regi�o],
		sum (a.ValorEconomiaAnual) 
		[Total de anual das economias por Regi�o]  
from		TBRegiao	r
join		TBEstado	e
on			(r.IDRegiao = e.CodRegiao)
join		TBEstadoEconomia	a
on			(e.IDSigla = a.CodSigla)
and			r.IDRegiao = 1
group by	r.IDRegiao,r.NomeRegiao 	
--------------------------------------
--3.2) fazer a fx
Create FUNCTION fxMostraEcomiaPorRegiao
( @codregiao int)
RETURNS TABLE AS RETURN
(
	Select	r.IDRegiao  [C�digo Regi�o],
			r.NomeRegiao	Regi�o,
			COUNT (a.CodSigla) [Qtde economias por Regi�o],
			sum (a.ValorEconomiaAnual) 
			[Total de anual das economias por Regi�o]  
	from		TBRegiao	r
	join		TBEstado	e
	on			(r.IDRegiao = e.CodRegiao)
	join		TBEstadoEconomia	a
	on			(e.IDSigla = a.CodSigla)
	and			r.IDRegiao = @codregiao
	group by	r.IDRegiao,r.NomeRegiao 
)
----------------------------------
-- executar a fx
select * from fxMostraEcomiaPorRegiao (1);
select * from fxMostraEcomiaPorRegiao (2);
------------------------
--3.3) fazer a sp
Create procedure spMostraEcomiaPorRegiao
( @codregiao int)
AS 
Begin
	Select	r.IDRegiao  [C�digo Regi�o],
			r.NomeRegiao	Regi�o,
			COUNT (a.CodSigla) [Qtde economias por Regi�o],
			sum (a.ValorEconomiaAnual) 
			[Total de anual das economias por Regi�o]  
	from		TBRegiao	r
	join		TBEstado	e
	on			(r.IDRegiao = e.CodRegiao)
	join		TBEstadoEconomia	a
	on			(e.IDSigla = a.CodSigla)
	and			r.IDRegiao = @codregiao
	group by	r.IDRegiao,r.NomeRegiao 
End
---------------------------
-- executar a procedure
Exec spMostraEcomiaPorRegiao 1;
Exec spMostraEcomiaPorRegiao 2;
------------------------------------
/*
Exerc�cio 4)
Fazer uma fun��o e depois uma procedure.
Que recebe como par�mentro o c�digo da regi�o e retorna:
ID, nome da regi�o, calcular o total dos tributos por
regi�o, quantidade estados por regi�o, 
o maior e o menor valor da arrecada��o de tributos 
por regi�o e m�dia da arrecada��o por regi�o.
*/
------------------------------------
-- 4.1 l�gica que resolve a situa��o problema
-- supor para regi�o 1
Select		r.IDRegiao [C�digo Regi�o],
			r.NomeRegiao	Regi�o,
			count (e.CodRegiao) [Total Estados],
			sum (e.ArrecadacaoTributos) [Total tributos],
			min (e.ArrecadacaoTributos) [Menor valor tributo],
			max (e.ArrecadacaoTributos) [Maior Valor tributo],
			avg (e.ArrecadacaoTributos) [M�dia tributos]
from		TBRegiao    r
join		TBEstado	e
on			(r.IDRegiao = e.CodRegiao)
and			r.IDRegiao = 1
group by	r.IDRegiao,r.NomeRegiao 
----------------------------------
--4.1) criar a fx
Create function fxDadosRegioes
(@codigoRegiao int)
returns Table as return
(
	Select		r.IDRegiao [C�digo Regi�o],
				r.NomeRegiao	Regi�o,
				count (e.CodRegiao) [Total Estados],
				sum (e.ArrecadacaoTributos) [Total tributos],
				min (e.ArrecadacaoTributos) [Menor valor tributo],
				max (e.ArrecadacaoTributos) [Maior Valor tributo],
				avg (e.ArrecadacaoTributos) [M�dia tributos]
	from		TBRegiao    r
	join		TBEstado	e
	on			(r.IDRegiao = e.CodRegiao)
	and			r.IDRegiao = @codigoRegiao
	group by	r.IDRegiao,r.NomeRegiao 
)
----------------------------------
-- executar a fun��o
Select * from fxDadosRegioes (1);
Select * from fxDadosRegioes (2);
---------------------------
-- 4.2) criar a sp
Create procedure spDadosRegioes
(@codigoRegiao int)
AS
Begin
	Select		r.IDRegiao [C�digo Regi�o],
				r.NomeRegiao	Regi�o,
				count (e.CodRegiao) [Total Estados],
				sum (e.ArrecadacaoTributos) [Total tributos],
				min (e.ArrecadacaoTributos) [Menor valor tributo],
				max (e.ArrecadacaoTributos) [Maior Valor tributo],
				avg (e.ArrecadacaoTributos) [M�dia tributos]
	from		TBRegiao    r
	join		TBEstado	e
	on			(r.IDRegiao = e.CodRegiao)
	and			r.IDRegiao = @codigoRegiao
	group by	r.IDRegiao,r.NomeRegiao 
End
----------------
-- executar a procedure
Exec spDadosRegioes 1;
Exec spDadosRegioes 2;
-------------------------
/* Exerc�cio 5)
Fazer uma fun��o (fx) e depois uma procedure (sp).
Que recebe como par�mentro o c�digo de uma economia
e retorna: ID, Nome da Regi�o, calcular a quantidade de 
economias por regi�o, o maior e o menor valor da 
da economia por regi�o e m�dia da economia por regi�o.
*/
-- l�gica que resolve a situa��o problema
-- supor para a Economia = 1

Select	r.IDRegiao [C�digo Regi�o],
		r.NomeRegiao	Regi�o,
		count (a.CodEconomia) [Qtde Economias por Regi�o],
		sum (a.ValorEconomiaAnual) [Total Economias por Regi�o],
		avg (a.ValorEconomiaAnual) [M�dia Economias por Regi�o],
		Min (a.ValorEconomiaAnual) [Menor Valor Economia],
		Max(a.ValorEconomiaAnual) [Maior Valor Economia]
from	TBRegiao	r
join	TBEstado	e
on		(r.IDRegiao = e.CodRegiao)
join	TBEstadoEconomia	a
on		(e.IDSigla = a.CodSigla)
and		a.CodEconomia =1
group by r.IDRegiao, r.NomeRegiao 

-------------------------------------------------
/*  IFSP Barretos
	Disciplina: RED - Banco de Dados 1
	Banco de Trabalho: BDBrasil
	Tema: Consultas e vis�es no BD
	Data: 26/09/2018
*/
-------------------
Use BDBrasil
---------------------------------------
/*
Exerc�cio 1)
Fazer uma consulta e depois uma vis�o (view).
Mostrar os dados das Economias.
Condi��o de filtro: somente as econimias que 
                    n�o est�o nos estados.
*/
Select		e.*
from		TBEconomia   e
where		e.IDEconomia   not in -- condi��o filtro
(       -- traz as economias atribu�das nos Estados
		Select		distinct k.CodEconomia
		from		TBEstadoEconomia   k

)     
----------------------------------------------	
-- criar a vis�o
Create view VEstadoSemEconomias
as
	Select		e.*
	from		TBEconomia   e
	where		e.IDEconomia   not in -- condi��o filtro
	(       -- traz as economias atribu�das nos Estados
			Select		distinct k.CodEconomia
			from		TBEstadoEconomia   k

	)     		
--------------------------------
-- executar a vis�o
Select	*  from	VEstadoSemEconomias
----------------------------------			 
/*
Exerc�cio 2)
Fazer uma consulta e depois uma vis�o.
Mostrar os dados das regi�es.
Condi��o: somente Regi�es que n�o tem Popula��o cadastrada.
Como saber que uma regi�o n�o tem popula��o: Na tabela 
TBEstado onde a popula��o = null (is null)
*/
-------------------------------------------------
-- consulta
Select		R.*
from		TBRegiao		r
where       r.IDRegiao      in
(
	Select		distinct e.CodRegiao 
	from		TBEstado   e
	where		e.Populacao is null 
)
-------------------------------
-- criando a vis�o
Create View VRegiaoSemPopulacao
as
	Select		R.*
	from		TBRegiao		r
	where       r.IDRegiao   in
	(
		Select	e.CodRegiao 
		from		TBEstado   e
		where      e.Populacao is null 
	)
-------------------------------------
-- Executar a vis�o
Select	* from	VRegiaoSemPopulacao
-------------------------------------------------------------
/*
Exerc�cio 3)
Fazer uma consulta e depois uma vis�o.
Mostrar os dados Estados.
Condi��o: somente Estados que n�o tem Popula��o cadastrada.
*/
Select	e.*
from	TBEstado		e
where   e.Populacao  is null
----------------------------------------------
-- criar a vis�o
Create view	VEstadoSemPopulacao
AS
	Select	e.*
	from	TBEstado		e
	where   e.Populacao  is null
------------------------------------
-- mostrar os dados cadastrados
Select	* 
from	VEstadoSemPopulacao
----------------------------------
/*
Exerc�cio 4)
Fazer uma consulta e depois uma vis�o.

Mostrar os dados das economias
Mostar para cada economia A mair e a Menor Economia 
cadastrada nos Estados
usar Max() e Min() -- para calcular o m�ximo e m�nimo
*/
Select	e.IDEconomia	[C�digo Economia],
		e.NomeEconomia	Economia,	
		max(ee.ValorEconomiaAnual) [Valor da Maior Economia],
		min(ee.ValorEconomiaAnual) [Valor da Menor Economia] 
from		TBEconomia			e
join		TBEstadoEconomia    ee	
on			(e.IDEconomia  = ee.CodEconomia)		
group by    e.IDEconomia, e.NomeEconomia
-----------------------------------------------------------
-- criar a vis�o
create View VMaioreMenoeEconomiaPorEstado
AS
	Select	e.IDEconomia	[C�digo Economia],
			e.NomeEconomia	Economia,	
			max(ee.ValorEconomiaAnual)		[Valor da Maior Economia],
			min(ee.ValorEconomiaAnual)		[Valor da Menor Economia] 
	from		TBEconomia			e
	join		TBEstadoEconomia    ee	
	on			(e.IDEconomia  = ee.CodEconomia)		
	group by    e.IDEconomia, e.NomeEconomia

----------------------------------------------------
/*
Exerc�cio 5)
Fazer uma consulta e depois uma vis�o.

Mostrar os dados das regioes.
Calcular a quantidade de estados por regiao.
Calcular o total da arrecada�ao de tributos por Regiao.
Condi��o de filtro: apenas para regi�es com valor
superior a R$ 20.000.000,00
*/
select	r.IDRegiao [C�digo Regi�o],
		r.NomeRegiao	Regiao,
		count (e.CodRegiao) [Qtde Estado por Regi�o],
		sum (e.ArrecadacaoTributos) 
		[Total de Arreca��o de tributos]    
from		TBRegiao			r
join		TBEstado            e
on			(R.IDRegiao = e.CodRegiao)
group by    r.IDRegiao, r.NomeRegiao
-- filtra por maiores valores arrecadados
having		sum (e.ArrecadacaoTributos) > 20000000
----------------------------------------------
-- vis�o
Create view VRegiaoPorArrecadacaoTributos
as
select	r.IDRegiao [C�digo Regi�o],
		r.NomeRegiao	Regiao,
		count (e.CodRegiao) [Qtde Estado por Regi�o],
		sum (e.ArrecadacaoTributos) 
		[Total de Arreca��o de tributos]    
from		TBRegiao			r
join		TBEstado            e
on			(R.IDRegiao = e.CodRegiao)
group by    r.IDRegiao, r.NomeRegiao
-- filtra por maiores valores arrecadados
having		sum (e.ArrecadacaoTributos) > 20000000
--------------------------------------------------
-- executar a vis�o
Select * from VRegiaoPorArrecadacaoTributos
-----------------------------------------------
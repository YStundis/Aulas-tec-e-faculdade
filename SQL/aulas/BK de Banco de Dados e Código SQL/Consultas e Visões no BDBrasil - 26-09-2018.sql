/*  IFSP Barretos
	Disciplina: Banco de Dados 2
	Banco de Trabalho: BDBrasil
	Tema: Funções e Procedures
	Data: 26/09/2018
*/ -----------------------------------------
/*
Função (fx)/Stored Procedure (sp):
Tem um nome, recebe parâmentro e retorna dados, usa consultas.
Os dados variam de acordo com o parâmetro passado.
Diferença entre entre fx e sp: se tiver que inserir, alterar ou
excluir dados tem que usar SP (stored Procedure) 
Se usar select pode fazer uma ou outra (fx, sp)
*/----------------------------
/* Exercício 1: Fazer função (fx) e uma Procedure (sp) que:
   Recebe como parâmetro o Código de um Estado e Retorna:
   ID, nome do Estado, contar a quantidade de Cidade por Estado,
   somar o Valor total do Orçamento anual das cidades por estado 
 */
---------------------------------------------------------
Use BDBrasil
-------------------------------------
--1.1) lógica que resolme o problema
-- supor para o Estado de São Paulo (SP)
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
-- 1.2) fazer a função (fx)
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
-- executar a função
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
/* Exercício 2: 
Fazer uma função (fx) e depois uma procedure (sp) que 
recebe como parâmentro código de um Estado e retorna:
ID e Nome do Estado, Calcular a quantidade de Economias 
por Estado; Totalizar o valor anual das economias por estado
*/ ------------------------------------------------------
-- 1.1) lógica que resolve situação Problema
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
-- 2.2) fazendo a função
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
	and		e.IDSigla = @UF -- generalização
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
	and		e.IDSigla = @UF -- generalização
	group by e.IDSigla,e.NomeEstado   
End
-------------------------------------- 
Exec spMostraEcomiaPorEstado 'SP';
Exec spMostraEcomiaPorEstado 'RJ';
----------------------------------
/* Exercício 3: 
Fazer uma função (fx) e depois uma procedure (sp) que recebe 
como parâmentro o Código de uma região e retorna:
ID, nome, da região, contar a Quantidade de economias 
por região e totalizar o valor anual das economias da região.
*/
-- 3.1) lógica que resolve situação problema
Select	r.IDRegiao  [Código Região],
		r.NomeRegiao	Região,
		COUNT (a.CodSigla) [Qtde economias por Região],
		sum (a.ValorEconomiaAnual) 
		[Total de anual das economias por Região]  
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
	Select	r.IDRegiao  [Código Região],
			r.NomeRegiao	Região,
			COUNT (a.CodSigla) [Qtde economias por Região],
			sum (a.ValorEconomiaAnual) 
			[Total de anual das economias por Região]  
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
	Select	r.IDRegiao  [Código Região],
			r.NomeRegiao	Região,
			COUNT (a.CodSigla) [Qtde economias por Região],
			sum (a.ValorEconomiaAnual) 
			[Total de anual das economias por Região]  
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
Exercício 4)
Fazer uma função e depois uma procedure.
Que recebe como parâmentro o código da região e retorna:
ID, nome da região, calcular o total dos tributos por
região, quantidade estados por região, 
o maior e o menor valor da arrecadação de tributos 
por região e média da arrecadação por região.
*/
------------------------------------
-- 4.1 lógica que resolve a situação problema
-- supor para região 1
Select		r.IDRegiao [Código Região],
			r.NomeRegiao	Região,
			count (e.CodRegiao) [Total Estados],
			sum (e.ArrecadacaoTributos) [Total tributos],
			min (e.ArrecadacaoTributos) [Menor valor tributo],
			max (e.ArrecadacaoTributos) [Maior Valor tributo],
			avg (e.ArrecadacaoTributos) [Média tributos]
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
	Select		r.IDRegiao [Código Região],
				r.NomeRegiao	Região,
				count (e.CodRegiao) [Total Estados],
				sum (e.ArrecadacaoTributos) [Total tributos],
				min (e.ArrecadacaoTributos) [Menor valor tributo],
				max (e.ArrecadacaoTributos) [Maior Valor tributo],
				avg (e.ArrecadacaoTributos) [Média tributos]
	from		TBRegiao    r
	join		TBEstado	e
	on			(r.IDRegiao = e.CodRegiao)
	and			r.IDRegiao = @codigoRegiao
	group by	r.IDRegiao,r.NomeRegiao 
)
----------------------------------
-- executar a função
Select * from fxDadosRegioes (1);
Select * from fxDadosRegioes (2);
---------------------------
-- 4.2) criar a sp
Create procedure spDadosRegioes
(@codigoRegiao int)
AS
Begin
	Select		r.IDRegiao [Código Região],
				r.NomeRegiao	Região,
				count (e.CodRegiao) [Total Estados],
				sum (e.ArrecadacaoTributos) [Total tributos],
				min (e.ArrecadacaoTributos) [Menor valor tributo],
				max (e.ArrecadacaoTributos) [Maior Valor tributo],
				avg (e.ArrecadacaoTributos) [Média tributos]
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
/* Exercício 5)
Fazer uma função (fx) e depois uma procedure (sp).
Que recebe como parâmentro o código de uma economia
e retorna: ID, Nome da Região, calcular a quantidade de 
economias por região, o maior e o menor valor da 
da economia por região e média da economia por região.
*/
-- lógica que resolve a situação problema
-- supor para a Economia = 1

Select	r.IDRegiao [Código Região],
		r.NomeRegiao	Região,
		count (a.CodEconomia) [Qtde Economias por Região],
		sum (a.ValorEconomiaAnual) [Total Economias por Região],
		avg (a.ValorEconomiaAnual) [Média Economias por Região],
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
	Tema: Consultas e visões no BD
	Data: 26/09/2018
*/
-------------------
Use BDBrasil
---------------------------------------
/*
Exercício 1)
Fazer uma consulta e depois uma visão (view).
Mostrar os dados das Economias.
Condição de filtro: somente as econimias que 
                    não estão nos estados.
*/
Select		e.*
from		TBEconomia   e
where		e.IDEconomia   not in -- condição filtro
(       -- traz as economias atribuídas nos Estados
		Select		distinct k.CodEconomia
		from		TBEstadoEconomia   k

)     
----------------------------------------------	
-- criar a visão
Create view VEstadoSemEconomias
as
	Select		e.*
	from		TBEconomia   e
	where		e.IDEconomia   not in -- condição filtro
	(       -- traz as economias atribuídas nos Estados
			Select		distinct k.CodEconomia
			from		TBEstadoEconomia   k

	)     		
--------------------------------
-- executar a visão
Select	*  from	VEstadoSemEconomias
----------------------------------			 
/*
Exercício 2)
Fazer uma consulta e depois uma visão.
Mostrar os dados das regiões.
Condição: somente Regiões que não tem População cadastrada.
Como saber que uma região não tem população: Na tabela 
TBEstado onde a população = null (is null)
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
-- criando a visão
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
-- Executar a visão
Select	* from	VRegiaoSemPopulacao
-------------------------------------------------------------
/*
Exercício 3)
Fazer uma consulta e depois uma visão.
Mostrar os dados Estados.
Condição: somente Estados que não tem População cadastrada.
*/
Select	e.*
from	TBEstado		e
where   e.Populacao  is null
----------------------------------------------
-- criar a visão
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
Exercício 4)
Fazer uma consulta e depois uma visão.

Mostrar os dados das economias
Mostar para cada economia A mair e a Menor Economia 
cadastrada nos Estados
usar Max() e Min() -- para calcular o máximo e mínimo
*/
Select	e.IDEconomia	[Código Economia],
		e.NomeEconomia	Economia,	
		max(ee.ValorEconomiaAnual) [Valor da Maior Economia],
		min(ee.ValorEconomiaAnual) [Valor da Menor Economia] 
from		TBEconomia			e
join		TBEstadoEconomia    ee	
on			(e.IDEconomia  = ee.CodEconomia)		
group by    e.IDEconomia, e.NomeEconomia
-----------------------------------------------------------
-- criar a visão
create View VMaioreMenoeEconomiaPorEstado
AS
	Select	e.IDEconomia	[Código Economia],
			e.NomeEconomia	Economia,	
			max(ee.ValorEconomiaAnual)		[Valor da Maior Economia],
			min(ee.ValorEconomiaAnual)		[Valor da Menor Economia] 
	from		TBEconomia			e
	join		TBEstadoEconomia    ee	
	on			(e.IDEconomia  = ee.CodEconomia)		
	group by    e.IDEconomia, e.NomeEconomia

----------------------------------------------------
/*
Exercício 5)
Fazer uma consulta e depois uma visão.

Mostrar os dados das regioes.
Calcular a quantidade de estados por regiao.
Calcular o total da arrecadaçao de tributos por Regiao.
Condição de filtro: apenas para regiões com valor
superior a R$ 20.000.000,00
*/
select	r.IDRegiao [Código Região],
		r.NomeRegiao	Regiao,
		count (e.CodRegiao) [Qtde Estado por Região],
		sum (e.ArrecadacaoTributos) 
		[Total de Arrecação de tributos]    
from		TBRegiao			r
join		TBEstado            e
on			(R.IDRegiao = e.CodRegiao)
group by    r.IDRegiao, r.NomeRegiao
-- filtra por maiores valores arrecadados
having		sum (e.ArrecadacaoTributos) > 20000000
----------------------------------------------
-- visão
Create view VRegiaoPorArrecadacaoTributos
as
select	r.IDRegiao [Código Região],
		r.NomeRegiao	Regiao,
		count (e.CodRegiao) [Qtde Estado por Região],
		sum (e.ArrecadacaoTributos) 
		[Total de Arrecação de tributos]    
from		TBRegiao			r
join		TBEstado            e
on			(R.IDRegiao = e.CodRegiao)
group by    r.IDRegiao, r.NomeRegiao
-- filtra por maiores valores arrecadados
having		sum (e.ArrecadacaoTributos) > 20000000
--------------------------------------------------
-- executar a visão
Select * from VRegiaoPorArrecadacaoTributos
-----------------------------------------------
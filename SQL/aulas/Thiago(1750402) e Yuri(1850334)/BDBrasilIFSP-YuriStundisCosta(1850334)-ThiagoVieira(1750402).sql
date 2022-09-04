/*
IFSP Barretos
Disciplina: Modelagem  de Banco de Dados(MBD)
Banco de trabalho : BDBrasilIFSP
------------------------------------------------
Foco: Consultas no Banco de Dados
------------------------------------------------
Exercicio 1 : consulta de uma tabela e sem cláusula
were(condição de filtro)
mostrar todos os dados da tabela TBclima
*/
--*todos os dados da tb(todas coluna com todos os dados)
Select *
from TBClima
/*
-------------------------------------------------
Exercicio 2: consulta de uma tabela e sem cláusula 
where mostrar todos os dados da tabela TBClima
--usar apelido (alias) na tabela 

--*todos os dados da tabela (sem filtro)
*/

Select c.*
from TBClima c

/*
-----------------------------------------------------
Exercicio 3: consulta de uma unica tabela com clásula
where mostrar todos os climas que tem o clima "quente"
no começo e no fim do nome  uso de where para filtrar registros
--usar apelido(alias) na tabela 
--uso de where e like para pesquisa(where para filtrar registros)

*/

select c.*
from TBClima c
where c.NomeClima like '%quente'

/*
---------------------------------------------------
Exercicio 4: consulta de uma tabela com cláusula where
mostrar todos os nomes das pessoas e TBTeste 
--uso de where para filtrar registros 
--uso apelido (alias) na tabela
--uso de wherer e "like" para pesquisa com "or"
--tenha Silva no nome
*/


select t.*
from TBTeste t
where t.Nome like '%Souza%'
or    t.Nome like '%Santos%'
or    t.Nome like '%Silva%'


/*
----------------------------------------------
Exercicio 5: consulta de uma unica tabela com cláusula
where mostrar
*/

select e.*
from TBEconomia e
where e.NomeEconomia like '%agro%'

/*
----------------------------------------------
exercicio 6: consultar 3 TB(cidade,clima e estado)
*/

select e.IDUF          UF,
       e.NomeEstado    Estado,
	   c.NomeClima     Clima
from   TBClima c,
       TBEstado e
--escrever o relacionamento (pk = fk)
where  (c.IDclima like '%quente%')
--condição de filtro
and c.NomeClima like '%quente%'

/*
------------------------------------------------
exercicio 7 : consulta com duas ou mais TB(uso
de inner join e "on")
*/

select e.IDUF          [UF],
       e.NomeEstado    Estado,
	   c.NomeClima     Clima
from   TBClima c
inner join   TBEstado e
--escrever o relacionamento (pk = fk)
on (c.IDClima = e.CodClima)
--condição de filtro
and c.NomeClima in ('Quente','Quente Moderado','Semi-Arido Quente')

--------------------------------------------------------









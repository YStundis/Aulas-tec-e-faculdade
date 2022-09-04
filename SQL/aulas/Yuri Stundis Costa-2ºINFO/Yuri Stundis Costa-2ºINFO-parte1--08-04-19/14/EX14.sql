-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE TBDefunto (
IDDefunto INT not null PRIMARY KEY,
NomeDefunto varchar(50) not null,
DataFalecimento DATE not null,
HoraFalecimento TIME not null,
CausaFalecimento varchar(max) not null
)

CREATE TABLE TBSepultura (
IDSepultura INT not null PRIMARY KEY,
DataSep DATE not null,
NomeCemiterio varchar(max) not null,
LocalCemiterio varchar(max) not null,
CodResponsavel Número(4) not null,
CodDefunto INT not null,/*falha: chave estrangeira*/
FOREIGN KEY(CodDefunto) REFERENCES TBDefunto (IDDefunto)
)


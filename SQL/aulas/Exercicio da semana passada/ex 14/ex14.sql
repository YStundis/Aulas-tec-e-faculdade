-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE TBDefunto (
IDDefunto int not null PRIMARY KEY,
NomeDefunto varchar(50) not null,
DataFalecimento date not null,
HoraFalecimento time not null,
CausaFalecimento varchar(max) not null
)

CREATE TABLE TBSepultura (
IDSepultura int not null PRIMARY KEY,
DataSep date not null,
NomeCemiterio varchar(max) not null,
LocalCemiterio varchar(max) not null,
CodDefunto int not null,
FOREIGN KEY(CodDefunto) REFERENCES TBDefunto (IDDefunto)
)


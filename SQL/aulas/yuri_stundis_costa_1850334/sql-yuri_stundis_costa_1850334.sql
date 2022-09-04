create database BDExemplo_1850334

use BDExemplo_1850334


--questao 1
CREATE TABLE TBcliente_1850334 (
IDcliente int not null PRIMARY KEY,
nomeCliente varchar(50) not null,
CODproduto int not null
)

CREATE TABLE TBproduto_1850334 (
IDproduto int not null PRIMARY KEY,
nomeProduto varchar(50) not null,
CODcliente int not null
)

CREATE TABLE TBClienteProduto_1850334 (
CODproduto int not null,
CODcliente int not null,
PRIMARY KEY(CODproduto,CODcliente),
FOREIGN KEY(CODproduto) REFERENCES TBproduto_1850334 (IDproduto),
FOREIGN KEY(CODcliente) REFERENCES TBcliente_1850334 (IDcliente)
)

--questao 2
CREATE TABLE TBcurso_1850334 (
IDcurso int not null PRIMARY KEY,
nomeCurso varchar(50) not null,
CODdisciplina int not null
)

CREATE TABLE TBdisciplina_1850334 (
IDdisciplina int not null PRIMARY KEY,
nomeDisciplina varchar(50) not null,
CODcurso int not null
)

CREATE TABLE TBcursoDisciplina_1850334 (
CODdisciplina int not null,
CODcurso int not null,
PRIMARY KEY(CODdisciplina,CODcurso),
FOREIGN KEY(CODdisciplina) REFERENCES TBdisciplina_1850334 (IDdisciplina),
FOREIGN KEY(CODcurso) REFERENCES TBcurso_1850334 (IDcurso)
)


--questao 3
CREATE TABLE TBservidor_1850334 (
IDservidor int not null PRIMARY KEY,
nomeServidor varchar(50) not null,
CODcargo int not null
)

CREATE TABLE TBcargo_1850334 (
IDcargo int not null PRIMARY KEY,
turno varchar(50) not null,
CODservidor int not null,
FOREIGN KEY(CODservidor) REFERENCES TBservidor_1850334 (IDservidor)
)

ALTER TABLE TBcliente_1850334 ADD FOREIGN KEY(CODcliente) REFERENCES TBClienteProduto_1850334 (CODproduto,CODcliente)
ALTER TABLE TBcurso_1850334 ADD FOREIGN KEY(CODcurso) REFERENCES TBcursoDisciplina_1850334 (CODdisciplina,CODcurso)
ALTER TABLE TBservidor_1850334 ADD FOREIGN KEY(CODcargo) REFERENCES TBcargo_1850334 (IDcargo)
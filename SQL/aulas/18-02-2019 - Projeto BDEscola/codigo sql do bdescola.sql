-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE TBPais (
IDPais INT not null PRIMARY KEY,
NomePais varchar(40) not null
)

CREATE TABLE TBEstado (
IDUF varchar(2) not null PRIMARY KEY,
NomeEstado varchar(50) not null,
CODPais INT,
FOREIGN KEY(CODPais) REFERENCES TBPais (IDPais)
)

CREATE TABLE TBAluno (
IDAluno int not null PRIMARY KEY,
NomeAluno varchar(50) not null,
Sexo varchar(1) not null,
DataNascimento DATE not null,
CodCidade INT not null
)

CREATE TABLE TBTitulacao (
IDTitulacao INT not null PRIMARY KEY,
NomeTitulacao varchar(50) not null,
DataTitulacao Date not null
)

CREATE TABLE TBDocente (
IDDocente int not null PRIMARY KEY,
NomeDocente Varchar(50) not null,
DataNascimento Date not null,
Sexo Varchar(1) not null,
Email varchar(50) not null,
Telefone BigInt not null,
CodTitulacao INT,
CodCidade INT,
FOREIGN KEY(CodTitulacao) REFERENCES TBTitulacao (IDTitulacao)
)

CREATE TABLE TBCidade (
IDCidade INT not null PRIMARY KEY,
NomeCidade Varchar(50) not null,
CODUF varchar(2) not null,
FOREIGN KEY(CODUF) REFERENCES TBEstado (IDUF)
)

CREATE TABLE TBPeriodo (
IDPeriodo INT not null PRIMARY KEY,
NomePeriodo varchar(50)
)

CREATE TABLE TBCurso (
IDPeriodo INT not null PRIMARY KEY,
NomeCurso varchar(50) not null,
CargaHoraria INT not null,
DataInicio DATE not null,
DataFim DATE not null,
CodPeriodo INT not null,
FOREIGN KEY(CodPeriodo) REFERENCES TBPeriodo (IDPeriodo)
)

CREATE TABLE TBSala (
IDSala INT not null PRIMARY KEY,
Descricao varchar(50) not null,
CodPredio INT not null
)

CREATE TABLE TBPredio (
IDPredio INT not null PRIMARY KEY,
NomePredio varchar(50) not null
)

CREATE TABLE TBDisciplina (
IDDisciplina INT not null PRIMARY KEY,
NomeDisciplina varchar(50) not null,
CargaHoraria INT not null,
Ano INT not null,
Semestre INT not null,
CodCurso INT not null,
CodProfessor int not null,
CodSala INT not null,
FOREIGN KEY(CodCurso) REFERENCES TBCurso (IDPeriodo),
FOREIGN KEY(CodSala) REFERENCES TBSala (IDSala)
)

CREATE TABLE TBDocenteDisciplina (
CodDocente int not null,
CodDisciplina INT not null,
QtdeHoras INT not null,
Data DATE not null,
PRIMARY KEY(CodDocente,CodDisciplina),
FOREIGN KEY(CodDocente) REFERENCES TBDocente (IDDocente),
FOREIGN KEY(CodDisciplina) REFERENCES TBDisciplina (IDDisciplina)
)

CREATE TABLE TBHistorico (
IDHistorico INT PRIMARY KEY,
NotaAluno decimal(7,2) not null,
Faltas INT not null,
Stuacao varchar(50) not null,
CodAluno int not null,
CodDisciplina INT not null,
FOREIGN KEY(CodAluno) REFERENCES TBAluno (IDAluno),
FOREIGN KEY(CodDisciplina) REFERENCES TBDisciplina (IDDisciplina)
)

ALTER TABLE TBAluno ADD FOREIGN KEY(CodCidade) REFERENCES TBCidade (IDCidade)
ALTER TABLE TBDocente ADD FOREIGN KEY(CodCidade) REFERENCES TBCidade (IDCidade)
ALTER TABLE TBSala ADD FOREIGN KEY(CodPredio) REFERENCES TBPredio (IDPredio)
ALTER TABLE TBDisciplina ADD FOREIGN KEY(/*erro: ??*/) REFERENCES TBDocenteDisciplina (CodDocente,CodDisciplina)

-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE TBDocenteDisciplina (
CodDocente int not null,
CodDisciplina INT not null,
QtdeHoras INT not null,
Data DATE not null,
PRIMARY KEY(CodDocente,CodDisciplina)
)

CREATE TABLE TBDocente (
IDDocente int not null PRIMARY KEY,
NomeDocente Varchar(50) not null,
DataNascimento Date not null,
Sexo Varchar(1) not null,
Email varchar(50) not null,
Telefone BigInt not null,
CodTitulacao INT,
CodCidade INT/*falha: chave estrangeira*//*falha: chave estrangeira*/
)

CREATE TABLE TBDisciplina (
IDDisciplina INT not null PRIMARY KEY,
NomeDisciplina varchar(50) not null,
CargaHoraria INT not null,
Ano INT not null,
Semestre INT not null,
CodCurso INT not null,
CodProfessor int not null,
CodSala INT not null/*falha: chave estrangeira*//*falha: chave estrangeira*//*falha: chave estrangeira*/
)

ALTER TABLE TBDocenteDisciplina ADD FOREIGN KEY(CodDocente) REFERENCES TBDocente (IDDocente)
ALTER TABLE TBDocenteDisciplina ADD FOREIGN KEY(CodDisciplina) REFERENCES TBDisciplina (IDDisciplina)

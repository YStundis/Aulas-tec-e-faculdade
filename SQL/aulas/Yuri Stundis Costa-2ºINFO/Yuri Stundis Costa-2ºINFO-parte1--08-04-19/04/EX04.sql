-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE TBDisciplina (
IDDisciplina INT not null PRIMARY KEY,
NomeDisciplina varchar(50) not null,
CargaHoraria INT not null,
Ano INT not null,
Semestre INT not null,
CodCurso INT not null,
CodProfessor int not null,
CodSala INT not null/*falha: chave estrangeira*//*falha: chave estrangeira*/
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

ALTER TABLE TBDisciplina ADD FOREIGN KEY(CodProfessor) REFERENCES TBDocente (IDDocente)

create database BDEscolsUniXyko

use BDEscolsUniXyko 

CREATE TABLE TBalunos_1850334 (
IDaluno int not null PRIMARY KEY,
NomeAluno varchar(50) not null,
idade int not null,
RG varchar(15) not null,
CPF varchar(15) not null,
Reaponsaveis varchar(100) not null,
Periodo varchar(50) not null,
Notas bigint not null,
Telefone bigint not null,
CodCidade int not null,
CodSala int not null,
CodTurma int not null,
CodDisciplina int not null,
CodPeriodo int not null,
CodResponsaveis int not null,
Codboletim int not null,
Codestado int not null
)

CREATE TABLE TBprofessor_1850334 (
IDprofessor int not null PRIMARY KEY,
NomeProfessor varchar(50) not null,
RG varchar(15) not null,
CPF varchar(15) not null,
Telefone bigint not null,
Codcidade int not null,
Codestado int not null,
CodDisciplina int not null,
Codturma int not null,
Codsala int not null,
Codperiodo int not null
)

CREATE TABLE TBsala_18503347 (
IDsala int not null PRIMARY KEY,
NumDaSala int not null,
CapacidadeDeAlunos bigint not null,
Codprofessor int not null,
FOREIGN KEY(Codprofessor) REFERENCES TBprofessor_1850334 (IDprofessor)
)

CREATE TABLE TBturma_1850334 (
IDturma int not null PRIMARY KEY,
Aulas varchar(max) not null,
Codperiodo int not null
)

CREATE TABLE TBcidade_1850334 (
IDcidade int not null PRIMARY KEY,
NumdeHab bigint not null,
CodEstado int not null
)

CREATE TABLE TBresponsaveis_1850334 (
Idresponsavel int not null PRIMARY KEY,
NomeDoAluno varchar(50) not null,
NomesDosResponsaveis varchar(max) not null,
RG varchar(15) not null,
CPF varchar(15) not null,
Telefone bigint not null,
Codboletim int not null,
Codaluno int not null,
Codcidade int not null,
Codestado int not null,
FOREIGN KEY(Codaluno) REFERENCES TBalunos_1850334 (IDaluno),
FOREIGN KEY(Codcidade) REFERENCES TBcidade_1850334 (IDcidade)
)

CREATE TABLE TBestado_1850334 (
IDestado int not null PRIMARY KEY,
NumDeHab int not null
)

CREATE TABLE TBdisciplinas_1850334 (
IDdisciplina int not null PRIMARY KEY,
NomeDaDisciplina varchar(50) not null,
Codprofessor int not null,
Codsala int not null,
CodTurma int not null,
FOREIGN KEY(Codprofessor) REFERENCES TBprofessor_1850334 (IDprofessor),
FOREIGN KEY(Codsala) REFERENCES TBsala_18503347 (IDsala),
FOREIGN KEY(CodTurma) REFERENCES TBturma_1850334 (IDturma)
)

CREATE TABLE TBperiodo_1850334 (
IDperiodo int not null PRIMARY KEY,
Periodo varchar(50) not null
)

CREATE TABLE TBboletim_1850334 (
IDboletim int not null PRIMARY KEY,
NomeDoAluno varchar(50) not null,
notas int not null,
Observacao varchar(max) not null,
CodAluno int not null,
CodProfessor int not null,
CodResponsaveis int not null,
FOREIGN KEY(CodAluno) REFERENCES TBalunos_1850334 (IDaluno),
FOREIGN KEY(CodProfessor) REFERENCES TBprofessor_1850334 (IDprofessor),
FOREIGN KEY(CodResponsaveis) REFERENCES TBresponsaveis_1850334 (Idresponsavel)
)

ALTER TABLE TBalunos_1850334 ADD FOREIGN KEY(CodCidade) REFERENCES TBcidade_1850334 (IDcidade)
ALTER TABLE TBalunos_1850334 ADD FOREIGN KEY(CodSala) REFERENCES TBsala_18503347 (IDsala)
ALTER TABLE TBalunos_1850334 ADD FOREIGN KEY(CodTurma) REFERENCES TBturma_1850334 (IDturma)
ALTER TABLE TBalunos_1850334 ADD FOREIGN KEY(CodDisciplina) REFERENCES TBdisciplinas_1850334 (IDdisciplina)
ALTER TABLE TBalunos_1850334 ADD FOREIGN KEY(CodPeriodo) REFERENCES TBperiodo_1850334 (IDperiodo)
ALTER TABLE TBalunos_1850334 ADD FOREIGN KEY(CodResponsaveis) REFERENCES TBresponsaveis_1850334 (Idresponsavel)
ALTER TABLE TBalunos_1850334 ADD FOREIGN KEY(Codboletim) REFERENCES TBboletim_1850334 (IDboletim)
ALTER TABLE TBalunos_1850334 ADD FOREIGN KEY(Codestado) REFERENCES TBestado_1850334 (IDestado)
ALTER TABLE TBprofessor_1850334 ADD FOREIGN KEY(Codcidade) REFERENCES TBcidade_1850334 (IDcidade)
ALTER TABLE TBprofessor_1850334 ADD FOREIGN KEY(Codestado) REFERENCES TBestado_1850334 (IDestado)
ALTER TABLE TBprofessor_1850334 ADD FOREIGN KEY(CodDisciplina) REFERENCES TBdisciplinas_1850334 (IDdisciplina)
ALTER TABLE TBprofessor_1850334 ADD FOREIGN KEY(Codturma) REFERENCES TBturma_1850334 (IDturma)
ALTER TABLE TBprofessor_1850334 ADD FOREIGN KEY(Codsala) REFERENCES TBsala_18503347 (IDsala)
ALTER TABLE TBprofessor_1850334 ADD FOREIGN KEY(Codperiodo) REFERENCES TBperiodo_1850334 (IDperiodo)
ALTER TABLE TBturma_1850334 ADD FOREIGN KEY(Codperiodo) REFERENCES TBperiodo_1850334 (IDperiodo)
ALTER TABLE TBcidade_1850334 ADD FOREIGN KEY(CodEstado) REFERENCES TBestado_1850334 (IDestado)
ALTER TABLE TBresponsaveis_1850334 ADD FOREIGN KEY(Codboletim) REFERENCES TBboletim_1850334 (IDboletim)
ALTER TABLE TBresponsaveis_1850334 ADD FOREIGN KEY(Codestado) REFERENCES TBestado_1850334 (IDestado)



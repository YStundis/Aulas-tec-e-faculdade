-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE TBMedico (
IDmedico INT not null PRIMARY KEY,
NomeMedico varchar(50) not null,
datadeinicio DATE not null,
datadetermino DATE not null,
salario decimal(10,2) not null,
CodEspecializacao INT not null
)

CREATE TABLE TBEspecializacao (
IDEspecializacao INT not null PRIMARY KEY,
nomeespecializacao varchar(50) not null,
salarioganho decimal(10,2) not null,
CodMedico INT not null,
FOREIGN KEY(CodMedico) REFERENCES TBMedico (IDmedico)
)

ALTER TABLE TBMedico ADD FOREIGN KEY(CodEspecializacao) REFERENCES TBEspecializacao (IDEspecializacao)

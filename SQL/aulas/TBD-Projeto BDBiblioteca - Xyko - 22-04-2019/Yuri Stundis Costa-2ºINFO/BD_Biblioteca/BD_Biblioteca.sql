-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE TBObra (
ID_Obra int not null PRIMARY KEY,
titulo varchar(50) not null,
Autor_Principal varchar(50) not null,
Situacao_Obra int not null,
Ano Publicacao int not null,
Tipo_Obra int not null,
COD_Editora int
)

CREATE TABLE TBEditora (
ID_Editora int not null PRIMARY KEY,
Nome Editora varchar(50) not null,
Cidade varchar(50) not null
)

CREATE TABLE TB_Usuario (
ID_Usuario int not null PRIMARY KEY,
NomeUsuario varchar(50),
End_Logradouro varchar(50) not null,
End_Numero int not null,
End_Complemento varchar(20),
ENnd_Bairro varchar(30),
End_Cidade varchar(30) not null,
End_UF varchar(2) not null,
End_CEP varchar(10),
Telefone varchar(15),
CPF varchar(20)
)

CREATE TABLE TBEmprestimo (
ID_Emprestimo int not null PRIMARY KEY,
COD_Obra int not null,
COD_Usuario int not null,
DataEmprestimo date not null,
HorarioEmprestimo time not null,
Data_Prevista_Retorno date not null,
COD_Matricula_Funcionario int not null,
FOREIGN KEY(COD_Obra) REFERENCES TBObra (ID_Obra),
FOREIGN KEY(COD_Usuario) REFERENCES TB_Usuario (ID_Usuario)
)

CREATE TABLE TBDevolucao (
COD_Emprestimo int not null PRIMARY KEY,
Data_Devolucao date not null,
Horario_Devolucao time not null,
COD_Matricula_Funcionario int not null,
FOREIGN KEY(COD_Emprestimo) REFERENCES TBEmprestimo (ID_Emprestimo)
)

CREATE TABLE TBFuncionario (
ID_Matricula int not null PRIMARY KEY,
Nome Funcionario varchar(50) not null,
COD_Departamento int not null
)

CREATE TABLE TBDepartamento (
ID_Departamento int not null PRIMARY KEY,
Nome Departamento varchar(50) not null,
COD_Matricula_Chefe int not null,
FOREIGN KEY(COD_Matricula_Chefe) REFERENCES TBFuncionario (ID_Matricula)
)

CREATE TABLE TBReserva (
ID_Reserva int not null PRIMARY KEY,
COD_Usuario int not null,
COD_Obra int not null,
DataReserva date not null,
HorarioReserva time not null,
DtatRetirada date not null,
FOREIGN KEY(COD_Usuario) REFERENCES TB_Usuario (ID_Usuario),
FOREIGN KEY(COD_Obra) REFERENCES TBObra (ID_Obra)
)

ALTER TABLE TBObra ADD FOREIGN KEY(COD_Editora) REFERENCES TBEditora (ID_Editora)
ALTER TABLE TBEmprestimo ADD FOREIGN KEY(COD_Matricula_Funcionario) REFERENCES TBFuncionario (ID_Matricula)
ALTER TABLE TBDevolucao ADD FOREIGN KEY(COD_Matricula_Funcionario) REFERENCES TBFuncionario (ID_Matricula)
ALTER TABLE TBFuncionario ADD FOREIGN KEY(COD_Departamento) REFERENCES TBDepartamento (ID_Departamento)

create database BDBrAcademicoIFSP_1850334

use BDBrAcademicoIFSP_1850334

create table TB_Curso_1850334(
  IDCurso int not null primary key,
  Nome varchar(50) not null,
  CargaHoraria time not null,
	)
create table TB_Estado_1850334(
 IDUF int not null primary key,
 Nome varchar(50) not null,

	)
create table Tb_Cidade_1850334 (
  IDCidade int not null primary key,
  Nome varchar(50) not null,
  Endereco varchar(50) not null,
  CODUF int not null,
  foreign key (CODUF) references TBEstado_1850334 (IDUF),

	)
create table TB_Aluno_1850334(
 IDAluno int not null primary key,
 Nome varchar(50) not null,
 Endereco varchar(50) not null,
 Celular bigint not null,
 Telefone bigint not null,
 Senha varchar(max) not null,
 Nascimento date not null,
 LoginAluno varchar(max) not null,
 Rg bigint not null,
 Bairro varchar(50) not null,
 Email varchar(50) not null,
 CodCidade int not null,
  foreign key (CodCidade) references TBCidade_1850334 (IDCidade),
	)
create table TB_Turno_1850334(
   IDTurno int not null primary key,
   Nome varchar(50) not null,

	)
create table TB_Turma_1850334(
   IDTurma int not null primary key,
   NomeTurma varchar(50) not null,
   Semestre int not null,
   Ano int not null,
   CodTurno int not null,
   CodCurso int not null,
    foreign key (CodTurno) references TBTurno_1850334 (IDTurno),
	 foreign key (CodCurso) references TBCurso_1850334 (IDCurso),
	)
create table TB_Matricula_1850334(
  TBMatricula_1850334 int not null primary key,
  Data date not null,
  CodTurma int not null,
  CodAluno int not null,
  foreign key (CodTurma) references TBTurma_1850334 (IDTurma),
  foreign key (CodAluno) references TBAluno_1850334 (IDAluno),
	)
create table TB_Nota_1850334(
    IDNota int not null primary key,
	Data date not null,
	Nota decimal(10,2) not null,
	CodAvaliacao int not null,
	CodMatricula int not null,
	foreign key (CodMatricula) references TBMatricula_1850334 (TBMatricula_1850334),
	)
create table TB_Disciplina_1850334(
	IDDisciplina int not null primary key,
	Nome varchar(50) not null, 
	CodTurma int not null,
	foreign key (CodTurma) references TBTurma_1850334 (IDTurma),
)


create table TB_Frequencia_1850334(
	IDFrequencia int not null primary key,
	TotalFaltas int not null,
	CodAula int not null,
	CodMatricula int not null,
	foreign key (CodMatricula) references TBMatricula_1850334 (IDMatricula),
)

create table TB_Professor_1850334(

	  IDProfessor int not null   primary key,
	  Senha	varchar(max) not null,
	  Cpf bigint not null,
	  Rg bigint	not null,
	  Endereco varchar(50) not null,
	  Bairro varchar(50) not null,
	  Nome varchar(50) not null,
	  Email varchar(50) not null,
	  Celular bigint not null,
	  Observacao varchar(max) not null,
	  Nascimento date not null,
	  CodCidade	int not null, 
	  foreign key (CodCidade) references TBCidade_1850334 (IDCidade),
)

create table TB_Atribuicao_1850334(

    IDAtribuicao int not null   primary key,
	Data date not null,
	CodProfessor int not null,
	CodDisciplina int not null,

	foreign key (CodProfessor) references TBProfessor_1850334 (IDProfessor),
	foreign key (CodDisciplina) references TBDisciplina_1850334 (IDDisciplina),

)
create table TB_Aula_1850334(
	IDAula int not null primary key,
	Data date not null,
	Conteudo varchar(max) not null,
	CodAtribuicao int not null,
	 foreign key (CodAtribuicao) references TBAtribuicao_1850334 (IDAtribuicao),
)
create table TB_Avaliacao_1850334(
	
	IDAvaliacao int not null primary key,
	Nome varchar(50) not null,
	CodAtribuicao int not null,
	 foreign key (CodAtribuicao) references TBAtribuicao_1850334 (IDAtribuicao),
)















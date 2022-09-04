/*
Este código foi feito por um alunio da UniEsquina.
Apresenta uma série de erros com relação ao Projeto apresentado em PDF na área de Transfêrencia.

O Aluno deve identificar o erro, explicAR O ERRO, PROPOR E FAZER A CORREÇÃO.

NO FINAL. TEM QUE TER O CÓDIGO SQL CORRETO COM OS COMÉNTÁRIOS DE ERROS E
AS SOLUÇÕES DE CORREÇÃO.

criando banco de dados com SQL
Data:03/06/2019
IFSP Barretos-SP
MDB-PROF. Xyko

*/
---criar um banco de dados

create database BDBrAcademicoIFSP
----------------------------------
 use BDBrAcademicoIFSP


  create table TBEstado(
 IDuf int not null primary key,
 Nome varchar(50) not null
 )
 

----------------------------------------

 create table TBCidade(
 IdCidade int not null primary key,
 Nome varchar(50) not null,
 Endereço varchar(50),
 CODUF int not null,
  foreign key (CODUF) references TBEstado(IDUF)

 )
 ----------------------------------------------------------

  create table TBAluno(
 IDAluno int not null primary key,
 nome varchar(50) not null,
 endereço varchar(50) not null,
 celular bigint not null,
 telefone bigint not null,
 senha varchar(15) not null,
 nascimento date not null,
 loguin varchar(50) not null,
 RG varchar(15) not null,
 Bairro varchar(50) not null,
 email varchar(50) not null,
 CodCidade int not null,

   foreign key (CODCidade) references TBCidade(IDCidade)

 )

 -------------------------------------------------

  create table TBProfessor(
 IDProfessor int not null primary key,
 senha int not null,
 CPF bigint not null,
 RG varchar(15) not null,
 endereço varchar(50) not null,
 bairro varchar (20) not null,
 Nome varchar(50)  not null,
 email varchar(50) not null,
 celular bigint not null,
 observação varchar(max) not null,
 nascimento  date not null,
 CodCidade int not null,

 foreign  key (CodCidade) references TBCidade(IDCidade)
 )
 -------------------------------------------------------

  create table TBDisciplina(
 IdDisciplina int not null primary key,
 Nome  varchar(50) not null,
 CodTurma int not null
 )

 ------------------------------------------------------
 create table TBAtribuição(
 IDAtribuição int not null primary key,
 data  date not null,
 CodProfessor  varchar(2) not null,
 CodDisciplina int not null ,

  foreign  key (CodProfessor) references TBProfessor (IDProfessor),
  foreign  key (CodDisciplina) references TBProfessor(IDProfessor)

 )
 -------------------------------------
 create table TBCurso(
 IDCurso int not null primary key,
 Nome varchar(50) not null,
 CargaHorario bigint not null,

 
 )
 -----------------------------------

 create table TBTurma(
 IDTurma int not null primary key,
 NomeTurma varchar(50) not null,
 semestre int not null,
 ano int not null,
 CodTurno int not null,
 CodCurso int not null
 )
 --------------------------------------

 create table TBTurno(
 IDTurno int not null primary key,
 Nome varchar(50) not null
 )
 ------------------------------------------
 

 create table TBMatricula(
 IDMatricula int not null primary key,
 data date not null,
 CodTurma int not null,
 CodAluno  int not null

 )

 -------------------------------------------------
 
 create table TBNota(
 IdNota int not null primary key,
 data date not null,
 nota decimal(10,2)not null,
 CodAvaliação int not null,
 CodMatricula int not null
 )
 -------------------------------

 create table TBAvaliação(
 IDAvaliação int not null primary key,
 nome varchar(50) not null,
 CodAtribuição int not null

 )

 create table TBFrequencia(
 IDFrequencia int not null primary key,
 totalfaltas int not null,
 CodAula int not null,
 CodMatricula int not null
 )

 ---------------------------------------------------

 create table TBAula(
 IDAula int not null primary key,
 data date not null,
 conteudo varchar(50),
 CodAtribuição int not null
 )




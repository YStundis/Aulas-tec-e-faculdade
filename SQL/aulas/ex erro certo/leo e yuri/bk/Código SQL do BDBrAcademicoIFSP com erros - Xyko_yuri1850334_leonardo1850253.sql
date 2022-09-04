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


create database BDBrAcademicoIFSP__1850334_1850253

 use BDBrAcademicoIFSP__1850334_1850253

 /*a orden das tabelas estavam erradas*/

create table TBEstado__1850334_1850253(
 IDuf int not null primary key,
 Nome varchar(50) not null
 )
create table TBCidade__1850334_1850253(
 IdCidade int not null primary key,
 Nome varchar(50) not null,
 Endereco varchar(50),
 CODUF int not null,
  foreign key (CODUF) references TBEstado__1850334_1850253(IDUF)

 )
 create table TBTurno__1850334_1850253(
 IDTurno int not null primary key,
 Nome varchar(50) not null
 )
 

 /*erro: CargaHorario bigint not null, correto: CargaHorario time not null,*/ 
 create table TBCurso__1850334_1850253(
 IDCurso int not null primary key,
 Nome varchar(50) not null,
 CargaHorario time not null,

 
 )

  create table TBAluno__1850334_1850253(
 IDAluno int not null primary key,
 nome varchar(50) not null,
 endereco varchar(50) not null,
 celular bigint not null,
 telefone bigint not null,
 senha varchar(15) not null,
 nascimento date not null,
 loguin varchar(50) not null,
 RG varchar(15) not null,
 Bairro varchar(50) not null,
 email varchar(50) not null,
 CodCidade int not null,

   foreign key (CODCidade) references TBCidade__1850334_1850253(IDCidade)

 )
 
 create table TBTurma__1850334_1850253(
 IDTurma int not null primary key,
 NomeTurma varchar(50) not null,
 semestre int not null,
 ano int not null,
 CodTurno int not null,
 CodCurso int not null,
  foreign key (CodTurno) references TBTurno__1850334_1850253(IDTurno),
   foreign key (CodCurso) references TBCurso__1850334_1850253(IDCurso)
 )

create table TBMatricula__1850334_1850253(
 IDMatricula int not null primary key,
 data date not null,
 CodTurma int not null,
 CodAluno  int not null,

  foreign key (CodTurma) references TBTurma__1850334_1850253(IDTurma),
   foreign key (CodAluno) references TBAluno__1850334_1850253(IDAluno)
 )
 /*erro: senha int not null, correto: senha varchar(15) not null,*/
create table TBProfessor__1850334_1850253(
 IDProfessor int not null primary key,
 senha varchar(15) not null, 
 CPF bigint not null,
 RG varchar(15) not null,
 endereco varchar(50) not null,
 bairro varchar (20) not null,
 Nome varchar(50)  not null,
 email varchar(50) not null,
 celular bigint not null,
 observacao varchar(max) not null,
 nascimento  date not null,
 CodCidade int not null,

 foreign  key (CodCidade) references TBCidade__1850334_1850253(IDCidade)
 )
 create table TBDisciplina__1850334_1850253(
 IdDisciplina int not null primary key,
 Nome  varchar(50) not null,
 CodTurma int not null,
 foreign  key (CodTurma) references TBTurma__1850334_1850253(IDTurma),
 )

 /*erro:CodProfessor  varchar(2) not null, correto: CodProfessor  int not null,*//*erro: foreign  key (CodDisciplina) references TBProfessor(IDProfessor), 
correto: foreign  key (CodDisciplina) references TBDisciplina(idDisciplina)*/
create table TBAtribuicao__1850334_1850253(

 IDAtribuicao int not null primary key,
 data  date not null,
 CodProfessor  int not null,
 CodDisciplina int not null ,

  foreign  key (CodProfessor) references TBProfessor__1850334_1850253(IDProfessor),
  foreign  key (CodDisciplina) references TBDisciplina__1850334_1850253(idDisciplina)
  )
 create table TBAula__1850334_1850253(
 IDAula int not null primary key,
 data date not null,
 conteudo varchar(50),
 CodAtribuicao int not null,
 foreign  key (CodAtribuicao) references TBAtribuicao__1850334_1850253(IDAtribuicao),
 )
  create table TBFrequencia__1850334_1850253(
 IDFrequencia int not null primary key,
 totalfaltas int not null,
 CodAula int not null,
 CodMatricula int not null,
 foreign  key (CodAula) references TBAula__1850334_1850253(IDAula),
 foreign  key (CodMatricula) references TBMatricula__1850334_1850253(IDMatricula),
 )
 create table TBAvaliacao__1850334_1850253(
 IDAvaliação int not null primary key,
 nome varchar(50) not null,
 CodAtribuição int not null,
  foreign  key (CodAtribuição) references TBAtribuicao__1850334_1850253(IDAtribuicao),
 )
 create table TBNota__1850334_1850253(
 IdNota int not null primary key,
 data date not null,
 nota decimal(10,2)not null,
 CodAvaliação int not null,
 CodMatricula int not null,
 foreign  key (CodAvaliação) references TBAvaliacao__1850334_1850253(IDAvaliação),
 foreign  key (CodMatricula) references TBMatricula__1850334_1850253(IDMatricula),
 )
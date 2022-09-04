/*
Este c�digo foi feito por um alunio da UniEsquina.
Apresenta uma s�rie de erros com rela��o ao Projeto apresentado em PDF na �rea de Transf�rencia.

O Aluno deve identificar o erro, explicAR O ERRO, PROPOR E FAZER A CORRE��O.

NO FINAL. TEM QUE TER O C�DIGO SQL CORRETO COM OS COM�NT�RIOS DE ERROS E
AS SOLU��ES DE CORRE��O.

criando banco de dados com SQL
Data:03/06/2019
IFSP Barretos-SP
MDB-PROF. Xyko

*/
---criar um banco de dados


create database BDBrAcademicoIFSP_1850334_1850253

 use BDBrAcademicoIFSP_1850334_1850253

 /*a orden das tabelas estavam erradas*/

create table TBEstado_1850334_1850253(
 IDuf int not null primary key,
 Nome varchar(50) not null
 )
create table TBCidade_1850334_1850253(
 IdCidade int not null primary key,
 Nome varchar(50) not null,
 Endere�o varchar(50),
 CODUF int not null,
  foreign key (CODUF) references TBEstado_1850334_1850253(IDUF)

 )
 create table TBTurno_1850334_1850253(
 IDTurno int not null primary key,
 Nome varchar(50) not null
 )
 

 /*erro: CargaHorario bigint not null, correto: CargaHorario time not null,*/ 
 create table TBCurso_1850334_1850253(
 IDCurso int not null primary key,
 Nome varchar(50) not null,
 CargaHorario time not null,

 
 )

  create table TBAluno_1850334_1850253(
 IDAluno int not null primary key,
 nome varchar(50) not null,
 endere�o varchar(50) not null,
 celular bigint not null,
 telefone bigint not null,
 senha varchar(15) not null,
 nascimento date not null,
 loguin varchar(50) not null,
 RG varchar(15) not null,
 Bairro varchar(50) not null,
 email varchar(50) not null,
 CodCidade int not null,

   foreign key (CODCidade) references TBCidade_1850334_1850253(IDCidade)

 )
 
 create table TBTurma_1850334_1850253(
 IDTurma int not null primary key,
 NomeTurma varchar(50) not null,
 semestre int not null,
 ano int not null,
 CodTurno int not null,
 CodCurso int not null
 )

create table TBMatricula_1850334_1850253(
 IDMatricula int not null primary key,
 data date not null,
 CodTurma int not null,
 CodAluno  int not null

 )
 create table TBNota_1850334_1850253(
 IdNota int not null primary key,
 data date not null,
 nota decimal(10,2)not null,
 CodAvalia��o int not null,
 CodMatricula int not null
 )
 
 create table TBAvalia��o_1850334_1850253(
 IDAvalia��o int not null primary key,
 nome varchar(50) not null,
 CodAtribui��o int not null

 )

 create table TBFrequencia_1850334_1850253(
 IDFrequencia int not null primary key,
 totalfaltas int not null,
 CodAula int not null,
 CodMatricula int not null
 )

 create table TBAula_1850334_1850253(
 IDAula int not null primary key,
 data date not null,
 conteudo varchar(50),
 CodAtribui��o int not null
 )

 /*erro: senha int not null, correto: senha varchar(15) not null,*/
create table TBProfessor_1850334_1850253(
 IDProfessor int not null primary key,
 senha varchar(15) not null, 
 CPF bigint not null,
 RG varchar(15) not null,
 endere�o varchar(50) not null,
 bairro varchar (20) not null,
 Nome varchar(50)  not null,
 email varchar(50) not null,
 celular bigint not null,
 observa��o varchar(max) not null,
 nascimento  date not null,
 CodCidade int not null,

 foreign  key (CodCidade) references TBCidade_1850334_1850253(IDCidade)
 )
 create table TBDisciplina_1850334_1850253(
 IdDisciplina int not null primary key,
 Nome  varchar(50) not null,
 CodTurma int not null
 )

 /*erro:CodProfessor  varchar(2) not null, correto: CodProfessor  int not null,*//*erro: foreign  key (CodDisciplina) references TBProfessor(IDProfessor), 
correto: foreign  key (CodDisciplina) references TBDisciplina(idDisciplina)*/
create table TBAtribui��o_1850334_1850253(

 IDAtribui��o int not null primary key,
 data  date not null,
 CodProfessor  int not null,
 CodDisciplina int not null ,

  foreign  key (CodProfessor) references TBProfessor_1850334_1850253(IDProfessor),
  foreign  key (CodDisciplina) references TBDisciplina_1850334_1850253(idDisciplina)

 )

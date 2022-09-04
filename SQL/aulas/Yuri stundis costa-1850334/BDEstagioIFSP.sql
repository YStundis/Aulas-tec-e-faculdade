create database BDEstagioIFSP
use BDEstagioIFSP






CREATE TABLE TBCidade (
IDCidade INT NOT NULL PRIMARY KEY,
CodUF Varchar(2) NOT NULL,
NomeCidade Varchar(60) NOT NULL
)

CREATE TABLE TBEstado (
IDEstado Varchar(2) NOT NULL PRIMARY KEY,
NomeEstado Varchar(40) NOT NULL
)

CREATE TABLE TBPessoa (
IDPessoa INT NOT NULL PRIMARY KEY,
NomePessoa Varchar(40),
Endereco Varchar(70) NOT NULL,
Cep BigInt NOT NULL,
Bairro Varchar(40) NOT NULL,
CodCidade INT NOT NULL,
FOREIGN KEY(CodCidade) REFERENCES TBCidade (IDCidade)
)

CREATE TABLE TBTipoTelefone (
IDTipo INT PRIMARY KEY,
DescricaoTipo Varchar(50) NOT NULL
)

CREATE TABLE TBTelefone (
IDTelefone INT NOT NULL PRIMARY KEY,
NumeroTelefone BigInt NOT NULL,
DDDTelefone BigInt NOT NULL,
Observacao Varchar(max) NOT NULL,
CodTipo INT NOT NULL
)

CREATE TABLE TBPessoaTelefone (
CodPessoa INT NOT NULL,
CodTelefone INT NOT NULL,
DataCadastro date NOT NULL,
FOREIGN KEY(CodPessoa) REFERENCES TBPessoa (IDPessoa),
FOREIGN KEY(CodTelefone) REFERENCES TBTelefone (IDTelefone)
)

CREATE TABLE TBDocente (
IDdocente INT NOT NULL PRIMARY KEY,
CodArea INT NOT NULL,
CodTitulacaoMaxima INT NOT NULL,
DataTitulacao date NOT NULL,
CPF BigInt NOT NULL,
Sexo varchar(1) NOT NULL,
FOREIGN KEY(IDdocente) REFERENCES TBPessoa (IDPessoa)
)

CREATE TABLE TBTitulacao (
IDTitulacao INT NOT NULL PRIMARY KEY,
DescricaoTitulacao INT NOT NULL,
Observacao varchar(max) NOT NULL
)

CREATE TABLE TBArea (
IDArea INT NOT NULL PRIMARY KEY,
DescricaoArea Varchar(50) NOT NULL
)

CREATE TABLE TBAluno (
CodAluno INT NOT NULL PRIMARY KEY,
CodCurso INT NOT NULL,
CodTurno INT NOT NULL,
Sexo Varchar(1) NOT NULL,
CPF BigInt NOT NULL,
RG Varchar(15) NOT NULL,
FOREIGN KEY(CodAluno) REFERENCES TBPessoa (IDPessoa)
)

CREATE TABLE TBCursoTurno (
CodCurso INT NOT NULL,
CodTurno INT NOT NULL,
PRIMARY KEY(CodCurso,CodTurno)
)

CREATE TABLE TBTurnoCurso (
IDTurno INT NOT NULL PRIMARY KEY,
DescricaoTurno Varchar(50) NOT NULL
)

CREATE TABLE TBCurso (
IDCurso INT NOT NULL PRIMARY KEY,
NomeCurso Varchar(50),
BreveDescricao Varchar(max) NOT NULL
)

CREATE TABLE TBEmpresa (
CodEmpresa INT NOT NULL PRIMARY KEY,
NomeEmpresa varchar(50),
AreaAtuacao Varchar(50),
NomeContato Varchar(50) NOT NULL,
CNPJ BigInt NOT NULL,
Telefone BigInt NOT NULL,
FOREIGN KEY(CodEmpresa) REFERENCES TBPessoa (IDPessoa)
)

CREATE TABLE TBEmpresaVaga (
CodEmpresa INT NOT NULL,
CodVaga INT NOT NULL,
DataInicio date NOT NULL,
DateFim date NOT NULL,
NumeroVaga INT NOT NULL,
Remuneracao decimal(10,2) NOT NULL,
Observacao varchar(max) NOT NULL,
FOREIGN KEY(CodEmpresa) REFERENCES TBEmpresa (CodEmpresa)
)

CREATE TABLE TBEstagio (
IDEstagio INT NOT NULL PRIMARY KEY,
DescricaoEstagio Varchar(60) NOT NULL,
AcoesDesenvolvida Varchar(200) NOT NULL,
NomeSupervisor Varchar(50) NOT NULL,
CodAluno INT,
CodDocenteOrientador INT NOT NULL,
CodEmpresa INT NOT NULL,
CodVaga INT NOT NULL,
CodFuncao INT NOT NULL,
FOREIGN KEY(CodAluno) REFERENCES TBAluno (CodAluno),
FOREIGN KEY(CodDocenteOrientador) REFERENCES TBDocente (IDdocente),
FOREIGN KEY(CodEmpresa) REFERENCES TBEmpresa (CodEmpresa)
)

CREATE TABLE TBFuncao (
IDFuncao INT NOT NULL PRIMARY KEY,
DescricaoFuncao Varchar(50) NOT NULL,
NivelQualificacao Varchar(40) NOT NULL,
Observacao varchar(max) NOT NULL
)

CREATE TABLE TBOfertaVaga (
IDOfertaVaga INT NOT NULL PRIMARY KEY,
DescricaoVaga Varchar(100) NOT NULL,
DataOferta date NOT NULL,
QuantidadeVaga INT NOT NULL,
Observacao Varchar(max) NOT NULL,
HorasTrabalho Decimal (10,2) NOT NULL,
CodTurno INT
)

CREATE TABLE TBTurnoVaga (
IDTurno INT NOT NULL PRIMARY KEY,
DescricaoTurno Varchar(50) NOT NULL,
Observacao Varchar(max) NOT NULL
)

ALTER TABLE TBCidade ADD FOREIGN KEY(CodUF) REFERENCES TBEstado (IDEstado)
ALTER TABLE TBTelefone ADD FOREIGN KEY(CodTipo) REFERENCES TBTelefone (IDTelefone)
ALTER TABLE TBDocente ADD FOREIGN KEY(CodArea) REFERENCES TBArea (IDArea)
ALTER TABLE TBDocente ADD FOREIGN KEY(CodTitulacaoMaxima) REFERENCES TBTitulacao (IDTitulacao)
ALTER TABLE TBAluno ADD FOREIGN KEY(CodTurno,,) REFERENCES TBCursoTurno (CodCurso,CodTurno)
ALTER TABLE TBCursoTurno ADD FOREIGN KEY(CodCurso) REFERENCES TBCurso (IDCurso)
ALTER TABLE TBCursoTurno ADD FOREIGN KEY(CodTurno) REFERENCES TBCurso (IDCurso)
ALTER TABLE TBEmpresaVaga ADD FOREIGN KEY(CodVaga) REFERENCES TBOfertaVaga (IDOfertaVaga)
ALTER TABLE TBEstagio ADD FOREIGN KEY(CodVaga) REFERENCES TBOfertaVaga (IDOfertaVaga)
ALTER TABLE TBEstagio ADD FOREIGN KEY(CodFuncao) REFERENCES TBFuncao (IDFuncao)
ALTER TABLE TBOfertaVaga ADD FOREIGN KEY(CodTurno) REFERENCES TBTurnoVaga (IDTurno)

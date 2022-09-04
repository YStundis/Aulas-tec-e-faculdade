create database BDEscolaIFSP_1850415_1850334

use BDEscolaIFSP_1850415_1850334



CREATE TABLE TBPessoa (
    IDPessoa INT not null PRIMARY KEY,
    NomePessoa VARCHAR(50),
    Telefone BIGINT,
    Email VARCHAR(50),
    Endereco VARCHAR(50),
    CEP INT,
    CODCidade INT not null,
    Sexo VARCHAR(1)
);

CREATE TABLE TBProfessor (
    CODProfessor INT not null,
    CODTitulacao INT not null,
    DataTitulacao DATE
);

CREATE TABLE TBTitulacao (
    IDTitulacao INT not null PRIMARY KEY,
    NomeTitulacao VARCHAR(50)
);

CREATE TABLE TBAluno (
    CODAluno INT not null PRIMARY KEY,
    CODResponsavel INT,
    HistoricoEscolar VARCHAR(MAX),
    CODTurma INT not null
);

CREATE TABLE TBEstado (
    IDUF INT PRIMARY KEY,
    NomeEstado VARCHAR(50)
);

CREATE TABLE TBCidade (
    IDCidade INT not null PRIMARY KEY,
    NomeCidade VARCHAR(60),
    CODUF INT not null
);

CREATE TABLE TBCurso (
    IDCurso INT not null PRIMARY KEY,
    NomeCurso VARCHAR(60),
    CargaHorario INT,
    GradeHoraria VARCHAR(MAX)
);

CREATE TABLE TBTurma (
    IDTurma INT not null PRIMARY KEY,
    NomeTurma VARCHAR(60),
    CODPeriodo INT not null,
    Ano INT,
    Semestre INT,
    CODdisciplina INT not null,
    CODCurso INT not null
);

CREATE TABLE TBPeriodo (
    IDPeriodo INT not null PRIMARY KEY,
    NomePeriodo VARCHAR(50)
);

CREATE TABLE TBMatricula (
    IDMatricula INT not null PRIMARY KEY,
    CODAluno INT not null,
    CODTurma INT not null,
    Ano INT,
    Semestre INT
);

CREATE TABLE TBDisciplina (
    IDdisciplina INT not null PRIMARY KEY,
    NomeDisciplina VARCHAR(50),
    CargaHoraria INT,
    Conteudo VARCHAR(MAX),
    Ano INT,
    Semestre INT,
    CODTurma INT
);

CREATE TABLE TBAtribuicaoAula (
    IDAtribuicao INT not null PRIMARY KEY,
    CODProfessor INT not null,
    CODdisciplina INT not null,
    Data DATE,
    Semestre INT,
    QntDeAula INT
);

CREATE TABLE TBHistoricoAluno (
    CODMatricula INT,
    CODdisciplina INT not null,
    Nota DECIMAL(10,2),
    Ano INT,
    Semestre INT,
    Situacao VARCHAR(60)
);
 
ALTER TABLE TBPessoa ADD CONSTRAINT FK_TBPessoa_1
    FOREIGN KEY (CODCidade)
    REFERENCES TBCidade (IDCidade);
 
ALTER TABLE TBPessoa ADD CONSTRAINT FK_TBPessoa_2
    FOREIGN KEY (IDPessoa)
    REFERENCES TBAluno (CODAluno);
 
ALTER TABLE TBProfessor ADD CONSTRAINT FK_TBProfessor_0
    FOREIGN KEY (CODProfessor, CODTitulacao)
    REFERENCES TBTitulacao (IDTitulacao);
 
ALTER TABLE TBAluno ADD CONSTRAINT FK_TBAluno_0
    FOREIGN KEY (CODAluno, CODTurma)
    REFERENCES TBTurma ( IDTurma);
 
ALTER TABLE TBEstado ADD CONSTRAINT FK_TBEstado_1
    FOREIGN KEY (IDUF)
    REFERENCES TBCidade (IDCidade);
 
ALTER TABLE TBCidade ADD CONSTRAINT FK_TBCidade_0
    FOREIGN KEY (CODUF)
    REFERENCES TBEstado (IDUF);
 
ALTER TABLE TBTurma ADD CONSTRAINT FK_TBTurma_1
    FOREIGN KEY (CODPeriodo)
    REFERENCES TBPeriodo (IDPeriodo);
 
ALTER TABLE TBTurma ADD CONSTRAINT FK_TBTurma_2
    FOREIGN KEY (IDTurma)
    REFERENCES TBPeriodo (IDPeriodo);
 
ALTER TABLE TBTurma ADD CONSTRAINT FK_TBTurma_3
    FOREIGN KEY (CODCurso)
    REFERENCES TBCurso (IDCurso);
 
ALTER TABLE TBTurma ADD CONSTRAINT FK_TBTurma_4
    FOREIGN KEY (CODdisciplina)
    REFERENCES TBDisciplina (IDdisciplina);
 
ALTER TABLE TBMatricula ADD CONSTRAINT FK_TBMatricula_1
    FOREIGN KEY (CODAluno)
    REFERENCES TBAluno (CODAluno);
 
ALTER TABLE TBMatricula ADD CONSTRAINT FK_TBMatricula_2
    FOREIGN KEY (CODTurma)
    REFERENCES TBTurma (IDTurma);
 
ALTER TABLE TBDisciplina ADD CONSTRAINT FK_TBDisciplina_1
    FOREIGN KEY (CODTurma),
    
 
ALTER TABLE TBAtribuicaoAula ADD CONSTRAINT FK_TBAtribuicaoAula_1
    FOREIGN KEY (CODdisciplina)
    REFERENCES TBDisciplina (IDdisciplina)
 
ALTER TABLE TBAtribuicaoAula ADD CONSTRAINT FK_TBAtribuicaoAula_2
    FOREIGN KEY (CODProfessor)
    REFERENCES  ();
 
ALTER TABLE TBHistoricoAluno ADD CONSTRAINT FK_TBHistoricoAluno_0
    FOREIGN KEY (CODMatricula)
    REFERENCES TBMatricula (IDMatricula);
 
ALTER TABLE TBHistoricoAluno ADD CONSTRAINT FK_TBHistoricoAluno_1
    FOREIGN KEY (CODdisciplina)
    REFERENCES TBDisciplina (IDdisciplina);
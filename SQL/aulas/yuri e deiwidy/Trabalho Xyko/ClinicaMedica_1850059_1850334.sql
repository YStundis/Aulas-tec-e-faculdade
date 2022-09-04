/*
prontuario:
1850334
1850059 
*/

CREATE TABLE TBEstado (
IDEstado VarChar(2) Not Null Primary Key,
NomeEstado VarChar(30) Not Null
)

CREATE TABLE TBCidade (
IDCidade Int Not Null Primary Key,
NomeCidade VarChar(30) Not Null,
CODUF VarChar(2) Not Null,
Foreign Key(CODUF) REFERENCES TBEstado (IDEstado)
)


CREATE TABLE TBPessoa (
IDPessoa Int Not Null Primary Key,
CEP VarChar(10) Not Null,
CPF VarChar(20) Not Null,
DataNascimento VarChar(8) Not Null,
RG VarChar(15) Not Null,
NomePessoa VarChar(50) Not Null,
Telefone Int Not Null,
Endereço VarChar(40) Not Null,
Email VarChar(40) Not Null,
CODCidade Int Not Null,
Foreign Key(CODCidade) REFERENCES TBCidade (IDCidade)
)

CREATE TABLE TBFuncionario (
CODPessoa Int Not Null Primary Key,
DataAdmissao VarChar (8) Not Null,
Salario Decimal(10,2) Not Null,
Funcao VarChar(30) Not Null,
Foreign Key(CODPessoa) REFERENCES TBPessoa (IDPessoa)
)

CREATE TABLE TBCliente (
CODPessoa Int Not Null Primary Key,
HIsMedico VarChar(50) Not Null,
Observacao VarChar(50) Not Null,
Foreign Key(CODPessoa) REFERENCES TBPessoa (IDPessoa)
)

CREATE TABLE TBMedico (
CODPessoa Int Not Null Primary Key,
Foreign Key(CODPessoa) REFERENCES TBPessoa (IDPessoa)
) 

CREATE TABLE TBPlanoSaude (
IDPlano Int Not Null Primary Key,
NomePlano VarChar(50) Not Null,
Valor Decimal(10,2) Not Null,
Observacao VarChar(50) Not Null
)

CREATE TABLE TBConsulta (
IDConsulta Int Not Null Primary Key,
DataConsulta VarChar(8) Not Null,
Horario TIME Not Null,
Valor Decimal(10,2) Not Null,
CODFuncionario Int Not Null,
CODCliente Int Not Null,
CODPlano Int Not Null,
CODCRM Int Not Null,
CODEspecialidade Int Not Null,
Foreign Key(CODFuncionario) REFERENCES TBFuncionario (CODPessoa),
Foreign Key(CODCliente) REFERENCES TBCliente (CODPessoa),
Foreign Key(CODPlano) REFERENCES TBPlanoSaude (IDPlano),
Foreign Key(CODEspecialidade) REFERENCES TBMedicoEspecialidade (CODCRM,CODEspecialidade)
)

CREATE TABLE TBEspecialidade (
IDEspecialidade Int Not Null Primary Key,
NomeEspecialidade VarChar(40) Not Null
)

CREATE TABLE TBMedicoEspecialidade (
CODCRM Int Not Null,
CODEspecialidade Int Not Null,
DataCRM VarChar(8) Not Null,
Observaçao VarChar(200) Not Null,
Primary Key(CODCRM,CODEspecialidade),
Foreign Key(CODCRM) REFERENCES TBMedico (CODPessoa),
Foreign Key(CODEspecialidade) REFERENCES TBEspecialidade (IDEspecialidade)
)

CREATE TABLE TBReceita (
IDReceita Int Not Null Primary Key,
Data DATE Not Null,
Prescricao VarChar(200) Not Null,
Observacao VarChar(200) Not Null,
CODConsulta Int Not Null,
Foreign Key(CODConsulta) REFERENCES TBConsulta (IDConsulta)
)
 
CREATE TABLE TBExame (
IDExame Int Not Null Primary Key,
Data DATE Not Null,
Diagnostico VarChar(200) Not Null
)
 
CREATE TABLE TBReceitaExame (
CODExame Int Not Null,
CODReceita Int Not Null,
Primary Key(CODExame,CODReceita),
Foreign Key(CODReceita) REFERENCES TBReceita (IDReceita),
Foreign Key(CODExame) REFERENCES TBExame (IDExame)
)
                
                
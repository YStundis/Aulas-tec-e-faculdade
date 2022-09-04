create database bdfilme1850334
use bdfilme1850334

CREATE TABLE horariotrabalhofuncionario (
idhorario int not null,
idfuncionario int not null,
idfuncao int not null,
PRIMARY KEY(idhorario,idfuncionario)
)
Insert into horariotrabalhofuncionario values(1,1,1)
Insert into horariotrabalhofuncionario values(2,2,2)
Insert into horariotrabalhofuncionario values(3,3,3)
Insert into horariotrabalhofuncionario values(4,4,4)
Insert into horariotrabalhofuncionario values(5,5,5)

CREATE TABLE horario (
idhorario int not null PRIMARY KEY,
horario time 
)
Insert into horario values(1)
Insert into horario values(2)
Insert into horario values(3)
Insert into horario values(4)
Insert into horario values(5)

CREATE TABLE funcionario (
idfuncionario int not null PRIMARY KEY,
nome varchar(max) not null,
carteiratrabalho int not null,
datacontratacao date,
salario decimal(10,2) 
)
Insert into funcionario values(1,'cleryston',1)
Insert into funcionario values(2,'riquelme',2)
Insert into funcionario values(3,'kaio',3)
Insert into funcionario values(4,'jesuita',4)
Insert into funcionario values(5,'jananina',5)

CREATE TABLE funcao (
idfuncao int not null PRIMARY KEY,
nome varchar(max) not null
)
Insert into funcao values(1,'dirigir')
Insert into funcao values(2,'cozinhar')
Insert into funcao values(3,'limpar')
Insert into funcao values(4,'programar')
Insert into funcao values(5,'calcular')

CREATE TABLE filmeexibidosala (
idfilme int not null,
idsala int not null,
idhorario int not null,
PRIMARY KEY(idfilme,idsala,idhorario),
FOREIGN KEY(idhorario) REFERENCES horario (idhorario)
)
Insert into filmeexibidosala values(1,1,1)
Insert into filmeexibidosala values(2,2,2)
Insert into filmeexibidosala values(3,3,3)
Insert into filmeexibidosala values(4,4,4)
Insert into filmeexibidosala values(5,5,5)

CREATE TABLE sala (
idsala int not null PRIMARY KEY,
nome varchar(max) not null,
capacidade int not null
)
Insert into sala values(1,'sala01',1)
Insert into sala values(2,'sala02',2)
Insert into sala values(3,'sala03',3)
Insert into sala values(4,'sala04',4)
Insert into sala values(5,'sala05',5)

CREATE TABLE filme (
idfilme int not null PRIMARY KEY,
nomebr varchar(max) not null,
nomeen varchar(max) not null,
anolancamento int not null,
iddiretor int not null,
sinopse varchar(max) not null,
idgenero int not null
)
Insert into filme values(1,'estrela de guerra','war star ',2021,1,'a arma mais...',1)
Insert into filme values(2,'o roubo','the theft',2022,2,'no filme acontece um grande...',2)
Insert into filme values(3,'poeira em alto mar','offshore dust',2023,3,'num cruzeiro...',3)
Insert into filme values(4,'as historias de zézé','the stories of jakjak',2024,4,'no filme zézé faz...',4)
Insert into filme values(5,'alcateia','wolf pack',2025,5,'razor e seu lobo...',5)

CREATE TABLE diretor (
iddiretor int not null PRIMARY KEY,
nome varchar(max) not null
)
Insert into diretor values(1,'jorge alfredo')
Insert into diretor values(2,'geilton souza')
Insert into diretor values(3,'caio ken')
Insert into diretor values(4,'bob ponges')
Insert into diretor values(5,'rodolfo pig')

CREATE TABLE genero (
idgenero int not null PRIMARY KEY,
nome varchar(max) not null
)
Insert into genero values(1,'ação')
Insert into genero values(2,'aventura')
Insert into genero values(3,'aventura')
Insert into genero values(4,'açao e aventura')
Insert into genero values(5,'ficção')

CREATE TABLE premiacao (
idpremiacao int not null PRIMARY KEY,
nome varchar(max) not null,
ano int not null
)
Insert into premiacao values(1,'melhor filme',2021)
Insert into premiacao values(2,'melhor direção',2022)
Insert into premiacao values(3,'melhor ator/atriz',2023)
Insert into premiacao values(4,'melhor figurino',2024)
Insert into premiacao values(5,'melhor enredo',2025)

CREATE TABLE filmehaspremiacao (
idfilme int not null,
idpremiacao int not null,
ganhou int not null,
PRIMARY KEY(idfilme,idpremiacao),
FOREIGN KEY(idfilme) REFERENCES filme (idfilme),
FOREIGN KEY(idpremiacao) REFERENCES premiacao (idpremiacao)
)
Insert into filmehaspremiacao values(1,1,1)
Insert into filmehaspremiacao values(2,2,2)
Insert into filmehaspremiacao values(3,3,3)
Insert into filmehaspremiacao values(4,4,4)
Insert into filmehaspremiacao values(5,5,5)

ALTER TABLE horariotrabalhofuncionario ADD FOREIGN KEY(idhorario) REFERENCES horario (idhorario)
ALTER TABLE horariotrabalhofuncionario ADD FOREIGN KEY(idfuncionario) REFERENCES funcionario (idfuncionario)
ALTER TABLE horariotrabalhofuncionario ADD FOREIGN KEY(idfuncao) REFERENCES funcao (idfuncao)
ALTER TABLE filmeexibidosala ADD FOREIGN KEY(idfilme) REFERENCES filme (idfilme)
ALTER TABLE filmeexibidosala ADD FOREIGN KEY(idsala) REFERENCES sala (idsala)
ALTER TABLE filme ADD FOREIGN KEY(iddiretor) REFERENCES diretor (iddiretor)
ALTER TABLE filme ADD FOREIGN KEY(idgenero) REFERENCES genero (idgenero)

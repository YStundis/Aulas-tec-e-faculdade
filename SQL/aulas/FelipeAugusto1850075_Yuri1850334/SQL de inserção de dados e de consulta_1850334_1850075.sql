/*
IFSP BARRETOS
BDEventoIFSP
---------------
Objetivo: Inserir dados e mostrar dados cadastrados
*/

Use BDEventoIFSP_1850075_1850334
--------------------------------------------
--Fazer o registro (inserção de 5 registros)

------------------------------------------------------------------

--Cinco registros em TBCategoria
Insert into TBCategoria
Values (1, 'Musical'),
(2, 'Infantil'),
(3, 'Sertanejo'),
(4, 'Comédia'),
(5, 'Comício Político')
---------------------------------
--Mostrar o registro
Select *
From TBCategoria

------------------------------------------------------------------

--Cinco registros em TBSetor
Insert into TBSetor
Values (1, 'Setor A'),
(2, 'Setor B'),
(3, 'Área VIP'),
(4, 'Setor C'),
(5, 'Setor D')
------------------------------
--Mostrar o registro
Select *
From TBSetor

------------------------------------------------------------------

--Cinco registros em TBTipoAmbiente
Insert into TBTipoAmbiente
Values (1, 'Infantil'),
(2, 'Familiar'),
(3, 'Comercial'),
(4, 'Adulto'),
(5, 'Idoso')
--------------------------------
--Mostrar o registro
Select *
From TBTipoAmbiente

------------------------------------------------------------------

--Cinco registros em TBIntegrante
Insert into TBIntegrante
Values (1, 'Karlos Kosta Kurta','Comediante'),
(2, 'Maria Cherosa','Gogoboy'),
(3, 'Senhor Creyssom','Cantor'),
(4, 'Encarnação das Dores','Atendente'),
(5, 'Juka Xaves','Maligno')
-------------------------------------------------
--Mostrar o registro
Select *
From TBIntegrante
-------------------------------------------------
--Corrigir, Alterar Dados do integrante
Update TBIntegrante
set Funcao='Atendente Geral'
where IDIntegrante = 4

------------------------------------------------------------------

--Cinco registros em TBEvento
Insert into TBEvento
Values (1, 'Rodeio','10/09/2292','Maior Festa de Peão','Sem imagem',1,4),
(2, 'Festa de Aniversário','10/09/2292','Festa da Isa','Sem imagem',3,2),
(3, 'Festa Julina','10/09/2292','Festa Julina de colombia','Sem imagem',2,2),
(4, 'Jantar Maligno','10/09/2292','Jantar dos membros da SatanLovers','Sem imagem',3,1),
(5, 'Seita','10/09/2292','Ubanda disfarçada','Sem imagem',2,5)
----------------------------------------------
--Mostrar o registro
Select *
From TBEvento

------------------------------------------------------------------

--Cinco registros em TBAmbiente
Insert into TBAmbiente
Values (1, 'Salão Central de Barretos','Barretos-SP','Prefeitura de Barretos',1,2,3),
(2, 'Barraca Geral de Barretos','Barretos-SP','Rodoviária',2,5,3),
(3, 'Boate','Barretos-SP','Praça',1,2,4),
(4, 'Jardim Central','Barretos-SP','É de mais',5,2,1),
(5, 'Asilo Militar','Barretos-SP','Delegacia',4,2,3)
-----------------------------------------
--Mostrar o registro
Select *
From TBAmbiente

------------------------------------------------------------------

--Cinco registros em TBIngresso
Insert into TBIngresso
Values (1, 'Inteira',10.50,1),
(2, 'Meia',10.40,2),
(3, 'Meia',22.3,1),
(4, 'Meia',64.5,5),
(5, 'Meia',13.5,4)
-------------------------------------------------------
Select *
From TBIngresso

------------------------------------------------------------------

--Cinco registros em TBUsuário
Insert into TBUsuario
Values (1, 'joão','oios.ejo@gmail.com','Xwegkkkjejgk'),
(2, 'felipe','jfwj.efjw@gmail.com','Xwekkjgkr'),
(3, 'juca','sg.iewe@gmail.com','Xwegkjekkgkr'),
(4, 'carlos','pej.owioe@gmail.com','Xwjekkjgkr'),
(5, 'tito','ssee.wish@gmail.com','Xgkjekkjgkr')
-----------------------------------------------
Select *
From TBUsuario

------------------------------------------------------------------

--Cinco registros em TBCompra
Insert into TBCompra
Values (1, '10/07/2019',2,19.75,2,2),
(2, '10/07/2019',5,19.75,2,4),
(3, '10/07/2019',8,19.75,4,2),
(4, '10/07/2019',6,19.75,4,4),
(5, '10/07/2019',6,19.75,5,5)
-----------------------------
Select *
From TBCompra
-----------------------------------------------
-- Active: 1739211085766@@127.0.0.1@5432@digix@au11
/*
------------------------------------------------------------------

 						        TABLES (19/02/25)
                                TEMA: EXERCICIO
						       THIAGO OLSZEWSKI

------------------------------------------------------------------
*/

CREATE SCHEMA AU11;

CREATE TABLE AU11.Usuarios (
ID_Usuario INT PRIMARY KEY NOT NULL,
Password VARCHAR(255),
Nome_Usuario VARCHAR(255),
Ramal INT,
Especialidade VARCHAR(255)
);
CREATE TABLE AU11.Maquina (
Id_Maquina INT PRIMARY KEY NOT NULL,
Tipo VARCHAR(255),
Velocidade INT,
HardDisk INT,
Placa_Rede INT,
Memoria_Ram INT,
Fk_Usuario INT,
FOREIGN KEY(Fk_Usuario) REFERENCES AU11.Usuarios(ID_Usuario)
);
CREATE TABLE AU11.Software (
Id_Software INT PRIMARY KEY NOT NULL,
Produto VARCHAR(255),
HardDisk INT,
Memoria_Ram INT,
Fk_Maquina INT,
FOREIGN KEY(Fk_Maquina) REFERENCES AU11.Maquina(Id_Maquina)
);
insert into AU11.Usuarios values (1, '123', 'Joao', 123, 'TI');
insert into AU11.Usuarios values (2, '456', 'Maria', 456, 'RH');
insert into AU11.Usuarios values (3, '789', 'Jose', 789, 'Financeiro');
insert into AU11.Usuarios values (4, '101', 'Ana', 101, 'TI');
insert into AU11.Maquina values (1, 'Desktop', 2, 500, 1, 4, 1);
insert into AU11.Maquina values (2, 'Notebook', 1, 250, 1, 2, 2);
insert into AU11.Maquina values (3, 'Desktop', 3, 1000, 1, 8, 3);
insert into AU11.Maquina values (4, 'Notebook', 2, 500, 1, 4, 4);
insert into AU11.Software values (1, 'Windows', 100, 2, 1);
insert into AU11.Software values (2, 'Linux', 50, 1, 2);
insert into AU11.Software values (3, 'Windows', 200, 4, 3);
insert into AU11.Software values (4, 'Linux', 100, 2, 4);
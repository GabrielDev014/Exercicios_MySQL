CREATE DATABASE Agricultura

USE Agricultura

CREATE TABLE funcionario
(
	IdFuncionario INT IDENTITY PRIMARY KEY NOT NULL,
	nome VARCHAR (40) NOT NULL,
	dataNasc DATE
)
CREATE TABLE canteiro
(
	IdCanteiro INT IDENTITY PRIMARY KEY NOT NULL,
	nome VARCHAR (40) NOT NULL,
	luzDiaria DECIMAL (4,3) NOT NULL,
	aguaDiaria DECIMAL (4,3) NOT NULL
)
CREATE TABLE planta
(
	IdPlanta INT IDENTITY PRIMARY KEY NOT NULL,
	nome VARCHAR (20) NOT NULL,
	luzDiaria DECIMAL (4,3) NOT NULL,
	agua DECIMAL (4,3) NOT NULL,
	peso DECIMAL (4,3) NOT NULL
)
CREATE TABLE colhido 
(
	IdColhido INT IDENTITY PRIMARY KEY NOT NULL,
	IdPlanta INT NOT NULL,
	IdFuncionario INT NOT NULL,
	IdCanteiro INT NOT NULL,
	data DATE NOT NULL,
	quantidade INT NOT NULL,
	peso DECIMAL (4,3) NOT NULL
)
CREATE TABLE plantio
(
	IdPlantio INT IDENTITY PRIMARY KEY NOT NULL,
	IdPlanta INT NOT NULL,
	IdFuncionario INT NOT NULL,
	IdCanteiro INT NOT NULL,
	data DATE NOT NULL,
	sementes INT NOT NULL
)

ALTER TABLE plantio
ADD CONSTRAINT FK_plantio_funcionario
FOREIGN KEY(IdFuncionario) REFERENCES Funcionario(IdFuncionario)

ALTER TABLE plantio
ADD CONSTRAINT FK_plantio_planta
FOREIGN KEY(IdPlanta) REFERENCES Planta(IdPlanta)

ALTER TABLE plantio
ADD CONSTRAINT FK_plantio_canteiro
FOREIGN KEY(IdCanteiro) REFERENCES Canteiro(IdCanteiro)

ALTER TABLE colhido
ADD CONSTRAINT FK_colhido_funcionario
FOREIGN KEY(IdFuncionario) REFERENCES Funcionario(IdFuncionario)

ALTER TABLE colhido
ADD CONSTRAINT FK_colhido_canteiro
FOREIGN KEY(IdCanteiro) REFERENCES Canteiro(IdCanteiro)

ALTER TABLE colhido
ADD CONSTRAINT FK_colhido_planta
FOREIGN KEY(IdPlanta) REFERENCES Planta(IdPlanta)

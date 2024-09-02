CREATE DATABASE FUNCIONARIOS
USE FUNCIONARIOS
CREATE TABLE Funcionarios(
CodFunc INT PRIMARY KEY IDENTITY,
NomeFunc VARCHAR(100) NOT NULL,
SexoFunc VARCHAR(1) NOT NULL,
BairroFunc VARCHAR(50) NOT NULL,
SalFunc DECIMAL(8,2) NOT NULL,
SetorFunc VARCHAR(50) NOT NULL
)
GO

INSERT INTO Funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)
VALUES ('Larissa Menezes','F','Jabaquara',1200,'Marketing')
GO
INSERT INTO Funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)
VALUES ('Selma Nunes','F','Grajaú',3800,'Vendas')
GO
INSERT INTO Funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)
VALUES ('Leandro Henrique','M','Socorro',2950,'RH')
GO
INSERT INTO Funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)
VALUES ('Amélia Jeremias','F','Socorro',4200,'Marketing')
GO
INSERT INTO Funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)
VALUES ('Cláudio Jorge Silva','M','Jabaquara',1480,'Vendas')
GO
INSERT INTO Funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)
VALUES ('Luciano Souza','M','Pedreira',1000,'Vendas')
GO
INSERT INTO Funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)
VALUES ('Gabriela Santos Nunes','F','Jurubatuba',4150,'')
GO
INSERT INTO Funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)
VALUES ('Rafaela Vieira Jr','F','Jabaquara',700,'Marketing')
GO
INSERT INTO Funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)
VALUES ('Suzana Crispim','F','Grajaú',5600,'Produção')
GO
INSERT INTO Funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)
VALUES ('Sabrina Oliveira Castro','F','Pedreira',2900,'Marketing')
GO
INSERT INTO Funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)
VALUES ('Jarbas Silva Nunes','M','Jurubatuba',5300,'Produção')
GO
INSERT INTO Funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)
VALUES ('Ralf Borges','M','Jabaquara',1600,'Marketing')
GO

-- Criando procedure
CREATE PROCEDURE sp_INS_Func
@NomeFunc VARCHAR(100),
@Sexo VARCHAR(1),
@BairroFunc VARCHAR (50),
@SalFunc DECIMAL (8, 2),
@SetorFunc VARCHAR (50)

AS
INSERT INTO Funcionarios
	VALUES (@NomeFunc, @Sexo, @BairroFunc, @SalFunc, @SetorFunc)

-- Só verificando o que há no banco 
SELECT * FROM Funcionarios

-- Executando SP, e passando os parâmetros 
EXEC sp_INS_FUNC 'Luiz Bertonha', 'M', 'Vl Pacífico', 2500, 'Informática'

-- Abrindo SP
SP_HELPTEXT sp_Ins_Func

-- Criando SP de consulta
CREATE PROCEDURE sp_Cons_Func
@CodFunc INT
AS
	SELECT CodFunc, NomeFunc, SalFunc
	FROM Funcionarios
	WHERE CodFunc = @CodFunc

-- Executa a SP de consulta
EXEC SP_CONS_FUNC '3'

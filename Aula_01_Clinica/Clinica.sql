--Criando o banco de dados chamado CLINICA
CREATE DATABASE CLINICA

--setando o uso desse banco
USE CLINICA

--verificar se o banco foi criado
SELECT * FROM sys.databases WHERE name = 'CLINICA'

--cria uma tabela
CREATE TABLE medico
(
	codigo INT,
	nome VARCHAR(255),
	idade INT,
	crm varchar(80),
	primary key(codigo)
)

--verifica se a tabela existe
SELECT * FROM dbo.SYSOBJECTS WHERE XTYPE = 'U' AND NAME = 'MEDICO'

--mostra os atributos da tabela 'medico'.
sp_help medico

--trocando o banco de dados que estou usando, para depois conseguir apagar o banco da 'CLINICA'.
--USE MASTER

--apaga o banco de dados
--DROP DATABASE CLINICA

-- altera o nome do banco de dados
ALTER DATABASE CLINICA MODIFY NAME = CLINICAS

--verifica se o banco clinicas existe
SELECT * FROM sys.databases WHERE name = 'CLINICAS'

--alterar o nome da tabela 
EXEC sp_rename medico, medicos

--verfica se a tabela criada existe
SELECT * FROM dbo.SYSOBJECTS WHERE XTYPE = 'U' AND NAME = 'MEDICOS'

--adicionar um novo campo na tabela 'medicos'.
ALTER TABLE medicos ADD endereco varchar(80)

--verifica se o atributo está na tabela 'medicos'.
sp_help medicos

--altera o campo da tabela
ALTER TABLE medicos ALTER COLUMN endereco varchar(100)
sp_help medicos

--renoamendo campo da tabela
EXEC SP_RENAME 'MEDICOS.endereço', 'ender', 'COLUMN'
sp_help medicos

--adicionar um novo campo chamado 'sexo' na tabela 'medicos'.
ALTER TABLE medicos ADD sexo varchar(1)
sp_help medicos

--altera o campo da tabela
ALTER TABLE medicos ALTER COLUMN sexo char(1)
sp_help medicos

--apagar um campo da tabela
ALTER TABLE medicos DROP COLUMN ender
sp_help medicos

--renoamendo campo da tabela
EXEC SP_RENAME 'MEDICOS.endereco', 'ender', 'COLUMN'
sp_help medicos

--apagando tabela do banco de dados
DROP TABLE medicos 

--verfica se a tabela excluida existe
SELECT * FROM dbo.SYSOBJECTS WHERE XTYPE = 'U' AND NAME = 'MEDICOS'

--ao invés de usarmos o sinal de igual após o 'name' podemos usar o 'like'. 
--com o uso do 'like' não precisamos digitar o restante da palavra seguinte. Imagine escrever o nome inteiro de pessoas, então esse comando já agiliza.
SELECT * FROM dbo.SYSOBJECTS WHERE XTYPE = 'U' AND NAME like 'MEDIC%'

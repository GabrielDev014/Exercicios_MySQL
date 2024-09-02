CREATE DATABASE Bancos
USE BANCOS 

CREATE TABLE banco
(
	codigo_banco INT PRIMARY KEY,
	nome		 VARCHAR (30)
)

CREATE TABLE banco2
(
	idbanco INT IDENTITY PRIMARY KEY,
	codigo_banco INT,
	nome		 VARCHAR (30),
)

CREATE TABLE banco3
(
	codigo_banco INT PRIMARY KEY,
	nome		 VARCHAR (30) NOT NULL
)

CREATE TABLE teste
(
	codigo_banco INT,
	nome VARCHAR (30),
	valor DECIMAL (10,2),
	situacao CHAR (1)
)

-- INSERINDO DADOS NA TABELA BANCO

INSERT INTO banco
	(codigo_banco, nome)
VALUES
	(505, 'Santander')

SELECT * FROM banco

INSERT INTO banco
	(codigo_banco)
VALUES (33)

--INSERINDO DADOS NA TABELA BANCO2
INSERT INTO banco2
	(codigo_banco, nome)
VALUES
	(505, 'Santander')

SELECT * FROM banco2

INSERT INTO banco2
	(codigo_banco)
VALUES
	(33)
SELECT * FROM banco2

--INSERINDO DADOS NA TABELA 'BANCO3'
INSERT INTO  banco3
	(codigo_banco, nome)
VALUES
	(505, 'Santander')

INSERT INTO banco3	
	(codigo_banco)
VALUES
	(33)

--INSERE DADOS NA TABELA TESTE
INSERT INTO teste
VALUES (505, 'Santander', 15, 'A')

SELECT * FROM TESTE

--DA ERRO PORQUE NA PARTE DO 'AA' SÓ PODE UM CARACTERE
INSERT INTO teste
	VALUES (1,'Brasil', 10, 'AA')

--CRIACAO TABELA TESTE2

CREATE TABLE teste2
(
	id INT IDENTITY PRIMARY KEY,
	codigo_banco INT,
	nome VARCHAR (30),
	valor DECIMAL (10,2),
	situacao CHAR (1)
)

ALTER TABLE teste2
ADD CONSTRAINT FK_teste2_banco
FOREIGN KEY (codigo_banco) REFERENCES banco (codigo_banco)

SELECT * FROM banco

INSERT INTO teste2
	(codigo_banco, nome, valor, situacao)
VALUES (505, 'Santander Select', 36, 'A') --A significa ativo

INSERT INTO teste2	
	(codigo_banco, nome, valor, situacao)
VALUES (33, 'Brasil select', 45.28, 'A')

SELECT * FROM teste2

--ESTRUTURA DO SELECT
SELECT codigo_banco, situacao
FROM teste2

-- O * SERVE PARA SELECIONAR TODOS OS CAMPOS, MAS É POSSÍVEL SELECIONAR OS CAMPOS QUE VOCÊ DESEJA.

-- SELECIONA TODOS OS NOMES IGUAIS A 'SANTANDER SELECT'
SELECT * 
FROM teste2
WHERE nome = 'santander select'

-- SELECIONA TODOS OS VALORES MENORES QUE 45.28 E NOME 'SANTANDER SELECT'
SELECT *
FROM teste2
WHERE valor <= 45.28
	AND nome = 'SANTANDER SELECT'

-- SELECIONA TODOS OS VALORES MAIORES QUE 45.28 E MENORES QUE 100
SELECT *
FROM teste2
WHERE valor >= 45.28
	AND valor <= 100

--para intervalo de valores pode usar between também
SELECT *
FROM teste2
WHERE valor BETWEEN 45.28 AND 98


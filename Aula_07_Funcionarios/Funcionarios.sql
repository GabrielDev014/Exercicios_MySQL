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

select * from funcionarios

-- 1) A soma dos salários de todos os funcionários. R.: 34880
SELECT SUM (SalFunc) AS TOTAL FROM funcionarios

-- 2) O nome e salário do funcionário que mora no Jabaquara
SELECT nomefunc, salfunc
FROM funcionarios
WHERE bairrofunc = 'jabaquara'

-- 3) Menor salário de quem mora no jabaquara
SELECT MIN (salfunc) AS MENOR_SALÁRIO FROM FUNCIONARIOS
WHERE bairrofunc = 'jabaquara'

-- 4) Selecionar todos os campos de quem mora no Jurubatuba 
SELECT * FROM FUNCIONARIOS
WHERE bairrofunc = 'jurubatuba'

-- 5) Selecionar todos os campos de quem mora no Grajaú
SELECT * FROM FUNCIONARIOS
WHERE bairrofunc = 'grajaú'

-- 6) Selecionar todos os campos de quem mora no Jurubatuba e seja do sexo feminino
SELECT * FROM FUNCIONARIOS
WHERE bairrofunc = 'jurubatuba' AND
sexofunc = 'F'

-- 7) Selecionar os todos os campos de quem mora Jurubatuba ou no Grajaú
SELECT * FROM funcionarios 
WHERE bairrofunc = 'jurubatuba' OR
bairrofunc = 'grajaú'

-- Outra forma (apropriada para quando são muitos dados)
SELECT * FROM FUNCIONARIOS
WHERE bairroFunc IN('Jurubatuba', 'Grajaú')

-- 8) Selecionar todos os nomes que sejam igual a Selma Nunes
SELECT * FROM funcionarios
WHERE nomefunc = 'Selma Nunes'

-- 9) Selecionar todos os sobrenomes que sejam iguais a Nunes
SELECT * FROM funcionarios
WHERE nomefunc LIKE '%nunes%'

-- 10) Selecionar todos os sobrenomes que sejam iguais a Nunes e seja do sexo feminino
SELECT * FROM funcionarios
WHERE nomefunc LIKE '%nunes%' AND
sexoFUNC = 'F'

-- 11) A média do salário de todos os funcionários que moram em Jurubatuba ou no Grajaú, que sejam mulheres e que possuam sobrenome Nunes.
-- R.: 3975
SELECT AVG (SALFUNC) AS MEDIA FROM FUNCIONARIOS
WHERE (bairrofunc = 'Jurubatuba' OR
bairrofunc = 'Grajaú') AND
sexoFunc = 'F' AND
nomefunc LIKE '%nunes%'

-- 12) A quantidade de funcionários do setor de Marketing.
-- R.: 5
SELECT COUNT (CodFunc) AS QTD_FUNCIONÁRIOS FROM FUNCIONARIOS
WHERE setorFunc = 'marketing'

-- 13) 13 - A média dos salários dos funcionários por departamento, ordenado pela média (decrescente)
SELECT setorFunc as DEPARTAMENTO, AVG(SalFunc) as MEDIASALARIAL FROM FUNCIONARIOS
GROUP BY setorFunc
ORDER BY mediaSalarial DESC

-- 14) A quantidade de funcionários que ganha menos de R$3.000,00 e que mora no bairro do Socorro
SELECT COUNT (*) AS Qtd_Func FROM FUNCIONARIOS
WHERE bairroFunc = 'Socorro' AND
salFunc < 3000

-- 15) Os setores que possuem mais do que 3 funcionários (mostrar o setor e a quantidade de funcionários).
-- R.: Marketing, 5 funcionários.
SELECT setorFUNC as DEPARTAMENTO, COUNT(codFunc) AS QTD FROM FUNCIONARIOS
GROUP BY setorFUNC
HAVING COUNT (codFunc) > 3

-- 16) Os bairros que possuem mais do que 2 funcionários (mostrar o bairro e a quantidade de funcionários).
SELECT bairroFunc as BAIRRO, COUNT (codFunc) AS QTD FROM FUNCIONARIOS
GROUP BY bairroFunc
HAVING COUNT (codFunc) > 2

-- 17) A soma dos salários dos funcionários agrupada por Bairro (mostrar o bairro e a soma).
SELECT bairroFunc as BAIRRO, SUM(salFunc) AS SOMA FROM FUNCIONARIOS
GROUP BY bairroFunc

-- 18) O funcionário cadastrado com o menor salário (mostrar o nome do funcionário, o setor em que trabalha e o valor do salário).
SELECT TOP 1 nomeFunc AS NOME, setorfunc AS DEPARTAMENTO, MIN(salFunc) AS MIN_SAL FROM FUNCIONARIOS
GROUP BY nomeFunc, setorFunc
ORDER BY MIN(salFunc)

-- Outra forma
SELECT nomeFunc, setorFunc, salFunc FROM FUNCIONARIOS
WHERE salFunc = (SELECT MIN (salFunc) FROM FUNCIONARIOS)

-- 19) Mostrar bairro e salário do funcionário por ordem de bairro e salário, sendo o bairro em ordem crescente e o salário em ordem decrescente.
SELECT bairroFunc AS BAIRRO, salFunc AS SALÁRIO FROM FUNCIONARIOS
ORDER BY bairroFunc, salFunc DESC

-- 20) O maior salário por bairro (mostrar o bairro e o salário).
SELECT bairroFunc AS BAIRRO, MAX(salFunc) AS SALÁRIO FROM FUNCIONARIOS
GROUP BY bairroFunc

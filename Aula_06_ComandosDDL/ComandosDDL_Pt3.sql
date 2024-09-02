USE BANCOS 

select * from banco2

-- Conta quantidade de registros da tabela
SELECT COUNT (IDBANCO) FROM BANCO2

-- Outra forma
SELECT COUNT (*) AS QUANTIDADE
FROM BANCO2

-- Outra forma
SELECT COUNT (1) AS QTD
FROM BANCO2

-- Idem, mas agora vamos dar um 'apelido' à coluna
SELECT COUNT (IDBANCO) AS QUANTIDADE FROM BANCO2

-- Conta a quantidade de códigos de bancos não nulos
SELECT COUNT (Codigo_banco) AS QTD_COD_BCO
FROM BANCO2

-- Conta a quantidade de nomes de bancos não nulos
SELECT COUNT (NOME) AS QTD_NOME
FROM BANCO2

-- Setando o banco vendas
USE VENDAS

-- Criar a tabela compra
CREATE TABLE compra
(
	idCompra INT IDENTITY (1,1) PRIMARY KEY NOT NULL,
	data DATE,
	preco DECIMAL (10,2),
	cliente VARCHAR (45)
)

-- Verificando se a tabela foi criada
sp_help COMPRA

INSERT INTO compra	
	(data, preco, cliente)
VALUES ( '2018/11/12', 1000, 'Hallan')

INSERT INTO compra	
	(data, preco, cliente)
VALUES ('2018/10/23', 1600, 'João')

INSERT INTO compra	
	(data, preco, cliente)
VALUES ('2018/09/02', 700, 'Hallan')

INSERT INTO compra	
	(data, preco, cliente)
VALUES ('2018/09/03', 300, 'Hallan')

INSERT INTO compra	
	(data, preco, cliente)
VALUES ('2018/08/30', 2000, 'Pedro')

INSERT INTO compra	
	(data, preco, cliente)
VALUES ('2018/10/04', 100, 'João')

-- Verificando se os dados foram inseridos na tabela 'compra'
SELECT * FROM compras

-- Renomeando a tabela 'compra' para 'compras'
EXEC sp_rename compra, compras

-- Contando quantidade de registros na tabela compras
SELECT COUNT (idCompra) AS QUANTIDADE FROM COMPRAS

-- Quantidade de compras que o João fez
SELECT COUNT (idCompra) AS COMPRAS_JOAO FROM COMPRAS
WHERE cliente = 'João'

-- Quantidade de compras por cliente
SELECT CLIENTE, COUNT (idCompra) AS QTD
FROM compras
GROUP BY cliente 

-- Quantidade de valores menores que 1000
SELECT COUNT (idCompra) AS QTD_VALORES FROM compras
WHERE preco < 1000

-- Quantidade de valores menores que 1000 por cliente
SELECT CLIENTE, COUNT (idCompra) AS QTD_VALORES FROM compras
WHERE preco < 1000
GROUP BY cliente

-- Total de valores das compras
SELECT SUM (preco) AS TOTAL FROM COMPRAS

-- Total de valores das compras por cliente
SELECT CLIENTE, SUM (preco) AS TOTAL FROM COMPRAS
GROUP BY CLIENTE

-- Total de valores das compras por cliente, com valores maiores que 1000
SELECT CLIENTE, SUM (PRECO) AS TOTAL FROM COMPRAS
WHERE PRECO > 1000
GROUP BY CLIENTE

-- Trazer todos os valores totais maiores que 1800 por cliente
SELECT cliente, SUM (preco) AS TOTAL FROM compras
GROUP BY CLIENTE 
HAVING SUM (preco) > 1800

-- Trazer todos os clientes que fizeram mais de 2 compras (incluído)
SELECT cliente, COUNT (*) AS QUANTIDADE FROM COMPRAS
GROUP BY cliente
HAVING COUNT (*) >= 2

-- Valor médio dos preços
SELECT AVG(preco) AS MEDIA FROM COMPRAS

-- Preço médio por cliente
SELECT cliente, AVG (preco) AS MEDIA FROM COMPRAS
GROUP BY cliente

-- Traz a quantidade (COUNT()), total/soma (SUM()) e média (AVG()) de cada cliente.
SELECT CLIENTE, COUNT (*) AS QUANTIDADE, SUM (preco) AS TOTAL , AVG (preco) AS MEDIA 
FROM COMPRAS
GROUP BY cliente

-- Retornar primeiro registro
SELECT TOP 1 * FROM compras

-- Retornar o último registro
SELECT TOP 1 * FROM COMPRAS
ORDER BY idCompra DESC

-- Retornar o maior preço
SELECT MAX(preco) AS MAIOR_PREÇO FROM COMPRAS

-- Retornar o menor preço
SELECT MIN(preco) AS MENOR_PREÇO FROM COMPRAS

-- Maior preço por cliente
SELECT cliente, MAX (preco) AS MAIOR_PREÇO FROM COMPRAS
GROUP BY cliente

-- Menor preço por cliente 
SELECT cliente, MIN (preco) AS MENOR_PREÇO FROM COMPRAS
GROUP BY cliente

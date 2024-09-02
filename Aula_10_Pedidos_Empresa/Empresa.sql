USE [Northwind-pr]

-- Seleciona todos os pedidos (830)
SELECT * FROM PEDIDOS 

-- Seleciona todos os clientes (91)
SELECT * FROM clientes

-- 1) Selecionar todos os clientes e seus pedidos 
SELECT * 
FROM pedidos AS P
INNER JOIN clientes AS C
	ON P.CodigoDoCliente = C.CodigoDoCliente

-- 2) Faça uma consulta que retorne todos os clientes e pedidos, somente para clientes com o país igual a México
SELECT * FROM pedidos AS P
INNER JOIN clientes AS C
	ON P.CodigoDoCliente = C.CodigoDoCliente
WHERE C.Pais = 'México'

-- 3) Faça uma consulta que retorne o NomeDaEmpresa e a quantidade de pedidos já feito por estas
SELECT C.NomeDaEmpresa, COUNT(C.CODIGODOCLIENTE) AS QTD
FROM CLIENTES AS C
INNER JOIN PEDIDOS AS P
	ON P.CODIGODOCLIENTE = C.CODIGODOCLIENTE
GROUP BY C.NomeDaEmpresa
ORDER BY C.NomeDaEmpresa

-- 4) Mesma consulta que a anterior, somente para clientes com o país México
SELECT C.NomeDaEmpresa, COUNT(C.CODIGODOCLIENTE) AS QTD
FROM CLIENTES AS C
INNER JOIN PEDIDOS AS P
	ON P.CODIGODOCLIENTE = C.CODIGODOCLIENTE
WHERE C.PAIS = 'México'
GROUP BY C.NomeDaEmpresa
ORDER BY C.NomeDaEmpresa

-- 5)  Faça uma consulta que retorne a quantidade de pedidos já feitos para todos os clientes com os códigos ALFKI, ANATR, ANTON e QUICK
SELECT C.NomeDaEmpresa, COUNT(C.CODIGODOCLIENTE) AS QTD
FROM CLIENTES AS C
INNER JOIN PEDIDOS AS P
	ON P.CODIGODOCLIENTE = C.CODIGODOCLIENTE
WHERE C.CodigoDoCliente  IN ('ALFKI', 'ANATR', 'ANTON', 'QUICK')
GROUP BY C.NomeDaEmpresa
ORDER BY C.NomeDaEmpresa

-- 6) Faça uma consulta que retorne o nome do cliente, número do pedido, nome do produto e nome da categoria do produto
SELECT C.NomeDoContato, P.NumeroDoPedido, PR.NomeDoProduto, CAT.NomeDaCategoria FROM CLIENTES AS C
INNER JOIN Pedidos AS P 
	ON P.CodigoDoCliente = C.CodigoDoCliente
INNER JOIN DetalhesDoPedido AS DP
	ON DP.NumeroDoPedido = P.NumeroDoPedido
INNER JOIN Produtos AS PR
	ON PR.CodigoDoProduto = DP.CodigoDoProduto
INNER JOIN CATEGORIAS AS CAT
ON CAT.CodigoDaCategoria = pr.CodigoDaCategoria

-- 7) Faça uma consulta que retorne o nome do cliente, número do pedido e nome da categoria do produto, somente para o cliente TOMSP da categoria Hortigranjeiros 
SELECT C.NomeDoContato, P.NumeroDoPedido, PR.NomeDoProduto, CAT.NomeDaCategoria FROM CLIENTES AS C
INNER JOIN Pedidos AS P 
	ON P.CodigoDoCliente = C.CodigoDoCliente
INNER JOIN DetalhesDoPedido AS DP
	ON DP.NumeroDoPedido = P.NumeroDoPedido
INNER JOIN Produtos AS PR
	ON PR.CodigoDoProduto = DP.CodigoDoProduto
INNER JOIN CATEGORIAS AS CAT
	ON CAT.CodigoDaCategoria = pr.CodigoDaCategoria
WHERE C.CodigoDoCliente = 'TOMSP'
	AND CAT.NomeDaCategoria = 'Hortigranjeiros'

--11) Faça uma pesquisa que retorne o nome do produto e o nome da categoria de todos os produtos cadastrados na base (produto Chai categoria Bebida, resultado 80 linhas).
SELECT CAT.NomeDaCategoria, P.NomeDoProduto FROM Categorias AS CAT 
INNER JOIN PRODUTOS AS P
	ON CAT.CodigoDaCategoria = P.CodigoDaCategoria

--12) Faça uma pesquisa que retorne a quantidade de produtos cadastrados para cada categoria. (para bebida existem 13 produtos, resultado 8 linhas)
SELECT C.NomeDaCategoria , COUNT (P.CodigoDoProduto) AS QTD
FROM produtos AS P
INNER JOIN Categorias AS C
	ON C.CodigoDaCategoria = P.CodigoDaCategoria
GROUP BY C.NomeDaCategoria 

--13)  Faça uma pesquisa que retorne o nome do produto o nome da categoria dos produtos com a situação de descontinuado sendo 1 (8 linhas)
SELECT P.NomeDoProduto, C.NomeDaCategoria
FROM PRODUTOS AS P
INNER JOIN Categorias AS C
	ON C.CodigoDaCategoria = P.CodigoDaCategoria
WHERE P.Descontinuado = 1

--14) Faça uma pesquisa que retorne o Nome do cliente de código ALFKI e o nome de todos os produtos que ela já comprou (12 Linhas).
SELECT C.NOMEDOCONTATO, PR.NOMEDOPRODUTO
FROM CLIENTES AS C
INNER JOIN PEDIDOS AS P
	ON P.CODIGODOCLIENTE = C.CODIGODOCLIENTE
INNER JOIN DetalhesDoPedido AS DP
	ON DP.NUMERODOPEDIDO = P.NUMERODOPEDIDO
INNER JOIN PRODUTOS AS PR
	ON PR.CODIGODOPRODUTO = DP.CODIGODOPRODUTO
WHERE C.CODIGODOCLIENTE = 'ALFKI'

--15) Faça uma pesquisa que retorne o código do cliente, o nome do produto e o número do pedido para o cliente com o nome Vins et alcools Chevalier pedido número 10274 (2 linhas).
SELECT C.NOMEDOCONTATO, PR.NOMEDOPRODUTO
FROM CLIENTES AS C
INNER JOIN PEDIDOS AS P
	ON P.CODIGODOCLIENTE = C.CODIGODOCLIENTE
INNER JOIN DetalhesDoPedido AS DP
	ON DP.NUMERODOPEDIDO = P.NUMERODOPEDIDO
INNER JOIN PRODUTOS AS PR
	ON PR.CODIGODOPRODUTO = DP.CODIGODOPRODUTO
WHERE C.NomeDaEmpresa = 'Vins et alcools chevalier'
	AND P.NumeroDoPedido = 10274

--16) Faça uma pesquisa que retorne a quantidade de produtos já comprados por cliente que seja da categoria Queijos (81 linhas – ALFKI = 2).
SELECT CAT.NOMEDACATEGORIA, C.CODIGODOCLIENTE FROM CLIENTES AS C
INNER JOIN Pedidos AS P 
	ON P.CodigoDoCliente = C.CodigoDoCliente
INNER JOIN DetalhesDoPedido AS DP
	ON DP.NumeroDoPedido = P.NumeroDoPedido
INNER JOIN Produtos AS PR
	ON PR.CodigoDoProduto = DP.CodigoDoProduto
INNER JOIN CATEGORIAS AS CAT
	ON CAT.CodigoDaCategoria = pr.CodigoDaCategoria
WHERE CAT.DESCRICAO = 'QUEIJOS'
GROUP BY CAT.NomeDaCategoria, C.CodigoDoCliente

-- 17) Faça uma pesquisa que retorne o valor total gasto pelo cliente de código OTTIK e produtos da categoria Pães, Biscoitos, massas e cereais (960,00).
SELECT C.CODIGODOCLIENTE, CAT.Descricao, 
	SUM (DP.PrecoUnitario * DP.Quantidade) AS TOTAL
FROM CLIENTES AS C
INNER JOIN Pedidos AS P 
	ON P.CodigoDoCliente = C.CodigoDoCliente
INNER JOIN DetalhesDoPedido AS DP
	ON DP.NumeroDoPedido = P.NumeroDoPedido
INNER JOIN Produtos AS PR
	ON PR.CodigoDoProduto = DP.CodigoDoProduto
INNER JOIN CATEGORIAS AS CAT
	ON CAT.CodigoDaCategoria = pr.CodigoDaCategoria
WHERE CAT.Descricao = 'Pães, biscoitos, massas e cereais'
	AND C.CodigoDoCliente = 'OTTIK'
GROUP BY C.CodigoDoCliente, CAT.Descricao

--18) Faça uma pesquisa que retorne de forma distinta o código de todos os clientes que compraram algum produto do fornecedor da cidade de Göteborg (26 linhas)
SELECT C.CODIGODOCLIENTE FROM CLIENTES AS C
INNER JOIN Pedidos AS P 
	ON P.CodigoDoCliente = C.CodigoDoCliente
INNER JOIN DetalhesDoPedido AS DP
	ON DP.NumeroDoPedido = P.NumeroDoPedido
INNER JOIN Produtos AS PR
	ON PR.CodigoDoProduto = DP.CodigoDoProduto
INNER JOIN Fornecedores AS F
	ON F.CodigoDoFornecedor = PR.CodigoDoFornecedor
WHERE F.CIDADE= 'Göteborg'
GROUP BY C.CodigoDoCliente

-- Outra forma
SELECT DISTINCT C.CODIGODOCLIENTE FROM CLIENTES AS C
INNER JOIN Pedidos AS P 
	ON P.CodigoDoCliente = C.CodigoDoCliente
INNER JOIN DetalhesDoPedido AS DP
	ON DP.NumeroDoPedido = P.NumeroDoPedido
INNER JOIN Produtos AS PR
	ON PR.CodigoDoProduto = DP.CodigoDoProduto
INNER JOIN Fornecedores AS F
	ON F.CodigoDoFornecedor = PR.CodigoDoFornecedor
WHERE F.CIDADE= 'Göteborg'

-- Quantidade de fornecedor por cliente 
SELECT C.CODIGODOCLIENTE, COUNT (C.CodigoDoCliente) AS QTD FROM CLIENTES AS C
INNER JOIN Pedidos AS P 
	ON P.CodigoDoCliente = C.CodigoDoCliente
INNER JOIN DetalhesDoPedido AS DP
	ON DP.NumeroDoPedido = P.NumeroDoPedido
INNER JOIN Produtos AS PR
	ON PR.CodigoDoProduto = DP.CodigoDoProduto
INNER JOIN Fornecedores AS F
	ON F.CodigoDoFornecedor = PR.CodigoDoFornecedor
WHERE F.CIDADE= 'Göteborg'
GROUP BY C.CodigoDoCliente

-- Quantidade de fornecedores que tenham mais de um pedido por cliente
SELECT C.CODIGODOCLIENTE, COUNT (C.CodigoDoCliente) AS QTD FROM CLIENTES AS C
INNER JOIN Pedidos AS P 
	ON P.CodigoDoCliente = C.CodigoDoCliente
INNER JOIN DetalhesDoPedido AS DP
	ON DP.NumeroDoPedido = P.NumeroDoPedido
INNER JOIN Produtos AS PR
	ON PR.CodigoDoProduto = DP.CodigoDoProduto
INNER JOIN Fornecedores AS F
	ON F.CodigoDoFornecedor = PR.CodigoDoFornecedor
WHERE F.CIDADE= 'Göteborg'
GROUP BY C.CodigoDoCliente
HAVING COUNT (C.CODIGODOCLIENTE) > 1

/* 19) Faça uma pesquisa que retorne a quantidade de itens comprados, código do cliente e descrição do produto de todos os clientes que
compraram algum produto do fornecedor da Suécia e que tenha comprado entre 20 e 36 produtos em um mesmo pedido, onde o
produto seja da categoria Peixes e algas marinhas (22 linhas). */

SELECT C.CODIGODOCLIENTE,
	CAT.Descricao,
	DP.Quantidade,
	COUNT (*) AS QTD --Não é necessário
FROM CLIENTES AS C
INNER JOIN Pedidos AS P 
	ON P.CodigoDoCliente = C.CodigoDoCliente
INNER JOIN DetalhesDoPedido AS DP
	ON DP.NumeroDoPedido = P.NumeroDoPedido
INNER JOIN Produtos AS PR
	ON PR.CodigoDoProduto = DP.CodigoDoProduto
INNER JOIN Fornecedores AS F
	ON F.CodigoDoFornecedor = PR.CodigoDoFornecedor
INNER JOIN CATEGORIAS AS CAT
	ON CAT.CodigoDaCategoria = PR.CodigoDaCategoria
WHERE F.PAIS= 'SUÉCIA' 
	AND  CAT.Descricao = 'Peixes e algas marinhas'
	AND DP.Quantidade between 20 and 36
GROUP BY C.CodigoDoCliente, Cat.Descricao, DP.Quantidade

-- 20) Mostrar o nome do cliente, código do cliente e a data do pedido de todos os clientes que tiveram pedidos. (830)
SELECT C.CODIGODOCLIENTE, C.NomeDaEmpresa, P.DATADOPEDIDO
FROM CLIENTES AS C
INNER JOIN Pedidos as P
	ON P.CodigoDoCliente = C.CodigoDoCliente

-- 21) Mostrar todos os clientes que não tiveram pedidos (2)
SELECT * FROM CLIENTES AS C
LEFT JOIN Pedidos as P
	ON P.CodigoDoCliente = C.CodigoDoCliente
WHERE P.CodigoDoCliente IS NULL

-- Outra forma
SELECT * FROM CLIENTES
WHERE CodigoDoCliente NOT IN (SELECT CodigoDoCliente FROM Pedidos)

-- 22) Mostrar o nome do cliente, código do cliente e a data do pedido de todos os clientes, mesmo que não tiveram pedidos. (832)
SELECT C.CodigoDoCliente, C.NomeDoContato, P.DataDoPedido FROM CLIENTES AS C 
LEFT JOIN PEDIDOS AS P 
	ON P.CodigoDoCliente = C.CodigoDoCliente

/* 23) Mostrar lista dos empregados com os respectivos pedidos realizados (mostrar TODOS os empregados, mesmo os que não
efetuaram pedidos). (mostrar código do funcionário, sobrenome,
nome, número do pedido e o código do funcionário). (831) */
SELECT F.CODIGODOFUNCIONARIO, F.Sobrenome, F.Nome, P.NUMERODOPEDIDO, P.CODIGODOFUNCIONARIO
FROM Funcionarios AS F 
LEFT JOIN Pedidos AS P
	ON P.CodigoDoFuncionario = F.CodigoDoFuncionario

-- Cria a visão
CREATE VIEW vwItensComprados AS 
SELECT C.CODIGODOCLIENTE,
	CAT.Descricao,
	DP.Quantidade
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
GROUP BY C.CodigoDoCliente, Cat.Descricao, DP.Quantidade

SELECT * FROM vwItensComprados

-- Altera a visão
ALTER VIEW vwItensComprados AS
SELECT C.CODIGODOCLIENTE,
	CAT.Descricao,
	DP.Quantidade,
	F.Pais
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
GROUP BY C.CodigoDoCliente, Cat.Descricao, DP.Quantidade, F.Pais

SELECT * FROM vwItensComprados

-- Ao invés de usar o 'Where' num script gigante, você pode fazer isso com o auxílio da View.
SELECT * FROM vwItensComprados
WHERE PAIS = 'SUÉCIA' 
	AND  Descricao = 'Peixes e algas marinhas'
	AND Quantidade between 20 and 36

-- Consultando a view em forma de script. CTRL + T vai para texto, CTRL + D volta para tabelas.
SP_HELPTEXT vwItensComprados

-- Excluindo view
DROP VIEW vwItensComprados

-- Criação de tabela temporária
SELECT C.CODIGODOCLIENTE, CAT.Descricao, P.CodigoDoFuncionario, P.Via, DP.Quantidade
INTO #TMP --criando tabela temporária
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

-- Inner Join com a tabela temporária
SELECT * FROM #tmp AS T
INNER JOIN Transportadoras AS TR
	ON TR.CodigoDaTransportadora = T.VIA
INNER JOIN FUNCIONARIOS AS F
	ON F.CodigoDoFuncionario = T.CodigoDoFuncionario

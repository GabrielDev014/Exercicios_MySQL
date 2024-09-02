CREATE PROCEDURE sp_INS_FUNC
@NomeFunc VARCHAR(100),
@Sexo VARCHAR(1),
@BairroFunc VARCHAR(50),
@SalFunc DECIMAL (8,2),
@SetorFunc VARCHAR(50)

AS
INSERT INTO Funcionarios
	VALUES (@NomeFunc, @Sexo, @BairroFunc, @SalFunc, @SetorFunc)

-- Só verificando o que há no banco
SELECT * FROM FUNCIONARIOS

-- Executando SP, e passando os parâmetros.
EXEC sp_INS_FUNC 'Luiz Bertonha Junior', 'M', 'Vl Pacifico', '2500', 'Informática'
				  -- NomeFunc         SexoFunc BairroFunc     SalFunc  SetorFunc

--ABRINDO SP
SP_HELPTEXT sp_INS_FUNC

-- Cria SP de consulta 
CREATE PROCEDURE sp_CONS_FUNC
@CodFunc INT 
AS
	SELECT CodFunc, NomeFunc, SalFunc
	FROM Funcionarios
	WHERE CodFunc = @CodFunc

-- Executa a SP de consulta
EXEC SP_CONS_FUNC '3'

-- Fazendo Store Procedure no Northwind

USE [Northwind-pr]

CREATE PROCEDURE SP_PRODUTO_CLIENTE
@CodCli nvarchar (10)
AS
	SELECT *
	FROM Clientes AS C
	INNER JOIN PEDIDOS AS P
		ON P.CODIGODOCLIENTE = C.CodigoDoCliente
	INNER JOIN DetalhesDoPedido AS D
		ON D.NumeroDoPedido = P.NumeroDoPedido
	INNER JOIN PRODUTOS AS PR
		ON PR.CodigoDoProduto = D.CodigoDoProduto
	WHERE C.CodigoDoCliente = @CodCli

-- Seleciona tabela clientes
SELECT * FROM CLIENTES 

-- Executa SP consulta produto cliente
EXEC SP_PRODUTO_CLIENTE 'ALFKI'

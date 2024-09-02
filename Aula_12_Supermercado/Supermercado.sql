CREATE DATABASE SUPERMERCADOS

USE supermercados

CREATE TABLE produtos
(
	Codigo int identity primary key,
	Descricao varchar(50) not null, 
	categoria varchar(30) not null,
	PCompra DECIMAL(5,3),
	Margem decimal(4,3),
	DtFabr date,
	FPropria bit
)

insert into produtos (descricao, categoria, PCompra, Margem,DtFabr,Fpropria) values('Cereal','Matinais',1,'1','2018/10/1',1)
insert into produtos (descricao, categoria, PCompra, Margem,DtFabr,Fpropria) values('Leite','Laticínios',2,0.1,'2018/10/1',1)
insert into produtos (descricao, categoria, PCompra, Margem,DtFabr,Fpropria) values('Manteiga','Laticínios',5,0.1,'2018/10/1',1)
insert into produtos (descricao, categoria, PCompra, Margem,DtFabr,Fpropria) values('Omo','Limpeza',6,0.5,'2019/2/1',0)
insert into produtos (descricao, categoria, PCompra, Margem,DtFabr,Fpropria) values('Shampoo','Limpeza',5,0.5,'2018/10/1',0)
insert into produtos (descricao, categoria, PCompra, Margem,DtFabr,Fpropria) values('Suco','Matinais',4,0.5,'2018/10/1',1)
insert into produtos (descricao, categoria, PCompra, Margem,DtFabr,Fpropria) values('Chocolate','Doces',3.5,0.7,'2018/10/1',0)
insert into produtos (descricao, categoria, PCompra, Margem,DtFabr,Fpropria) values('Balas','Doces',4,0,'2018/10/25',0)
insert into produtos (descricao, categoria, PCompra, Margem,DtFabr,Fpropria) values('Batata Fritas','Congelados',7,0.1,'2018/10/30',0)
insert into produtos (descricao, categoria, PCompra, Margem,DtFabr,Fpropria) values('Nuggets','Congelados',6,0.1,'2018/10/10',0)
insert into produtos (descricao, categoria, PCompra, Margem,DtFabr,Fpropria) values('Pizza','Congelados',10,0.5,'2018/11/1',0)
insert into produtos (descricao, categoria, PCompra, Margem,DtFabr,Fpropria) values('Lasanha','Congelados',5,0,'2018/9/1',0)
insert into produtos (descricao, categoria, PCompra, Margem,DtFabr,Fpropria) values('Danone','Laticínios',3,0,'2018/8/1',0)
insert into produtos (descricao, categoria, PCompra, Margem,DtFabr,Fpropria) values('Queijo Branco','Laticínios',3,'0','2018/10/10',0)

SELECT * FROM produtos

-- 1) Exibir todos os produtos
CREATE PROCEDURE SP_PROD_TODOS
AS
SELECT * FROM PRODUTOS

EXEC SP_PROD_TODOS

-- 2) Exibir todos os produtos e seus preços
CREATE PROCEDURE sp_Prod_Preco
AS
SELECT DESCRICAO, PCOMPRA
FROM PRODUTOS

EXEC sp_Prod_Preco

-- 3) Retornar o preço de um produto desde que passado seu código para o procedimento.
CREATE PROCEDURE sp_PROD_PREC_COD
@CODPROD INT
AS
	SELECT codigo, descricao, pcompra
	FROM Produtos
	WHERE CODIGO = @CODPROD

EXEC sp_PROD_PREC_COD '4'

/* 4. Retornar quantos itens já foram orçados da categoria de um produto,
mostrar a categoria e a quantidade, desde que passado sua categoria para o procedimento */
CREATE PROCEDURE sp_PROD_CAT
@Categoria NVARCHAR (10)
AS
	SELECT CATEGORIA, COUNT(*) AS QTD FROM PRODUTOS
	WHERE CATEGORIA = @Categoria
	GROUP BY CATEGORIA

EXEC sp_PROD_CAT 'Congelados'

-- Alterando procedure para consultar a categoria com parte do nome
ALTER PROCEDURE [dbo].[SP_PROD_CAT]
@CATEGORIA VARCHAR(30)
AS
	SELECT CATEGORIA, COUNT(*) AS QTD
	FROM PRODUTOS
	WHERE CATEGORIA LIKE '%' + @CATEGORIA + '%'
	GROUP BY CATEGORIA

EXEC SP_PROD_CAT 'A'

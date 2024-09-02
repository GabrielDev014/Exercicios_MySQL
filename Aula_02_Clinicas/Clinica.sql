CREATE TABLE VENDAS
(
	IdVendas INT IDENTITY (1,1),
	IdPedido INT,
	Descricao VARCHAR(60) not null,
	Valor DECIMAL(10,2),
	Status CHAR(1),
	PRIMARY KEY (IdVendas)
)

CREATE TABLE PEDIDOS
(
	IdPedido INT IDENTITY (1,1) PRIMARY KEY,
	Descricao VARCHAR (60) NOT NULL,
	Valor DECIMAL (10,2),
	Status CHAR(1)
)
sp_help pedidos
select * from PEDIDOS

--verificar se uma tabela já existe, caso não exista fará a criação.
IF (NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Clientes'))
BEGIN
	CREATE TABLE clientes
	(
		Id_Cliente	INT IDENTITY(1,1)	PRIMARY KEY,
		Nome		VARCHAR (60)		NOT NULL,
		SexoCliente CHAR(1)				NOT NULL,
		Status		CHAR(1),
		CONSTRAINT CH_clientes CHECK (SexoCliente in('F', 'M'))
	)
END

ELSE 
	PRINT 'TABELA JÁ CRIADA'

--criação de chave estrangeira (relacionamento)
ALTER TABLE vendas
ADD CONSTRAINT FK_Vendas_Pedidos
FOREIGN KEY(IdPedido) REFERENCES pedidos(IdPedido)

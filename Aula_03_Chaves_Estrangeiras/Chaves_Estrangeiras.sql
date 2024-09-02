USE CLINICAS

CREATE TABLE pessoa
(
	codigo INT PRIMARY KEY,
	nome TEXT,
	endereco TEXT,
	situacao TEXT
)

CREATE TABLE dependente 
(
	codigo INT PRIMARY KEY,
	cod_pessoa INT,
	nome TEXT,
	idade INT
)

ALTER TABLE dependente
ADD CONSTRAINT FK_dependente_pessoa
FOREIGN KEY (cod_pessoa) REFERENCES pessoa(codigo)

--Outra atividade abaixo

CREATE TABLE banco 
(
	codigo_banco INT IDENTITY NOT NULL,
	nome VARCHAR(30) NOT NULL,
	CONSTRAINT PK_banco PRIMARY KEY (codigo_banco)
)

--nova forma de adicionar relacionamento com chave estrangeira.
CREATE TABLE teste
(
	codigo INT IDENTITY NOT NULL,
	codigo_banco INT NOT NULL,
	nome VARCHAR (30) NOT NULL,
	valor_tr NUMERIC (13,10),
	situacao CHARACTER (1) NOT NULL,
	CONSTRAINT PK_teste PRIMARY KEY (codigo),

	CONSTRAINT FK_teste_banco  FOREIGN KEY (codigo_banco)
		References banco (codigo_banco) ON DELETE CASCADE
)

--Praticando um pouco mais o uso de chaves estrangeiras

CREATE TABLE cliente2
(
	codigo_cliente INT IDENTITY PRIMARY KEY NOT NULL,
	nome VARCHAR (60),
	telefone VARCHAR (20)
)

CREATE TABLE pedidos2
(
	numero INT IDENTITY PRIMARY KEY NOT NULL,
	cliente INT NOT NULL,
	telefone VARCHAR (10) NOT NULL
)

ALTER TABLE pedidos2
ADD CONSTRAINT FK_pedidos2_cliente2
FOREIGN KEY (cliente) REFERENCES cliente2(codigo_cliente)

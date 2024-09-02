CREATE DATABASE vendas

USE vendas

CREATE TABLE contato_fornecedor
(
	idcontato_fornecedor INT IDENTITY PRIMARY KEY NOT NULL,
	fornecedor INT,
	contato VARCHAR(30),
	telefone VARCHAR (11),
	filial VARCHAR (45),
	email VARCHAR (200),
	situacao VARCHAR (1)
)

CREATE TABLE telefone_cliente
(
	idtelefone_cliente INT IDENTITY PRIMARY KEY NOT NULL,
	cliente INT,
	numero VARCHAR (20),
	situacao VARCHAR (1)
)

CREATE TABLE endereco_cliente
(
	idendereco_cliente INT IDENTITY PRIMARY KEY NOT NULL,
	cliente INT,
	endereco VARCHAR (60),
	complemento VARCHAR (20),
	cep CHAR (8),
	cidade INT,
	principal VARCHAR (1),
	situacao VARCHAR (1)
) 

CREATE TABLE fornecedor
(
	idfornecedor INT IDENTITY PRIMARY KEY NOT NULL,
	nome_fantasia VARCHAR (30),
	razao VARCHAR (100),
	cnpj CHAR (14),
	ie VARCHAR (15),
	situacao VARCHAR (1)
)

CREATE TABLE imagem_produto
(
	idimagem_produto INT IDENTITY PRIMARY KEY NOT NULL,
	produto INT,
	nome VARCHAR (45),
	comentario TEXT,
	string VARCHAR (32),
	situacao VARCHAR(1)
)


CREATE TABLE cliente
(
	idcliente INT IDENTITY PRIMARY KEY  NOT NULL,
	nome VARCHAR (50),
	data_nascimento DATE,
	cpf CHAR (11),
	observacao TEXT,
	promocao VARCHAR(1),
	situacao VARCHAR (1)
)

CREATE TABLE produto
(
	idProduto INT IDENTITY PRIMARY KEY NOT NULL,
	subcategoria INT,
	fornecedor INT,
	nome VARCHAR (25),
	altura DECIMAL,
	largura DECIMAL,
	profundidade DECIMAL,
	comentario TEXT,
	data_inclusao DATE,
	situacao VARCHAR (1)
)

CREATE TABLE orcamento
(
	idorcamento INT IDENTITY PRIMARY KEY NOT NULL,
	cliente INT,
	data_pedido DATE,
	valor_total DECIMAL,
	aceito VARCHAR (1),
	observacao TEXT,
	situacao VARCHAR (1)
)

CREATE TABLE subcategoria
(
	idsubcategoria INT IDENTITY PRIMARY KEY NOT NULL,
	categoria INT,
	nome VARCHAR (30),
	comentario TEXT,
	situacao VARCHAR (1)
)

CREATE TABLE categoria
(
	idcategoria INT IDENTITY PRIMARY KEY NOT NULL,
	nome VARCHAR (20),
	comentario TEXT,
	situacao VARCHAR (1)
)

CREATE TABLE promocao_produto
(
	idpromocao_produto INT IDENTITY PRIMARY KEY NOT NULL,
	produto INT,
	data_inicial DATE,
	data_final DATE,
	valor DECIMAL,
	situacao VARCHAR (1)
)

CREATE TABLE itens_orcamento
(
	iditens_orcamento INT IDENTITY PRIMARY KEY NOT NULL,
	orcamento INT,
	produto INT,
	quantidade INT,
	preco DECIMAL,
	situacao VARCHAR (1)
)

ALTER TABLE subcategoria
ADD CONSTRAINT FK_subcategoria_categoria
FOREIGN KEY (categoria) REFERENCES categoria (idcategoria)

ALTER TABLE promocao_produto
ADD CONSTRAINT FK_promocaoProduto_produto
FOREIGN KEY (produto) REFERENCES produto (idproduto)

ALTER TABLE itens_orcamento
ADD CONSTRAINT FK_itensOrcamento_orcamento
FOREIGN KEY (orcamento) REFERENCES orcamento (idorcamento)

ALTER TABLE itens_orcamento
ADD CONSTRAINT FK_itensOrcamento_produto
FOREIGN KEY (produto) REFERENCES produto (idproduto)

ALTER TABLE orcamento
ADD CONSTRAINT FK_orcamento_cliente
FOREIGN KEY (cliente) REFERENCES cliente (idcliente)

ALTER TABLE produto
ADD CONSTRAINT FK_produto_subcategoria
FOREIGN KEY (subcategoria) REFERENCES subcategoria (idsubcategoria)

ALTER TABLE produto
ADD CONSTRAINT FK_produto_fornecedor
FOREIGN KEY (fornecedor) REFERENCES fornecedor (idfornecedor)

ALTER TABLE imagem_produto
ADD CONSTRAINT FK_imagemProduto_produto
FOREIGN KEY (produto) REFERENCES produto (idproduto)

ALTER TABLE contato_fornecedor
ADD CONSTRAINT FK_contatoFornecedor_fornecedor
FOREIGN KEY (fornecedor) REFERENCES fornecedor (idfornecedor)

ALTER TABLE telefone_cliente
ADD CONSTRAINT FK_telefoneCliente_cliente
FOREIGN KEY (cliente) REFERENCES cliente (idcliente)

ALTER TABLE endereco_cliente
ADD CONSTRAINT FK_enderecoCliente_cliente
FOREIGN KEY (cliente) REFERENCES cliente (idcliente)

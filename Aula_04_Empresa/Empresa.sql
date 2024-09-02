USE EMPRESA

CREATE TABLE empresas
(
	ChaveEmpresa INT IDENTITY PRIMARY KEY NOT NULL,
	Empresa VARCHAR(40) NOT NULL
)
CREATE TABLE paises
(
	ChavePais INT IDENTITY PRIMARY KEY NOT NULL,
	Pais VARCHAR(40) NOT NULL
)
CREATE TABLE estados
(
	ChaveEstado INT IDENTITY PRIMARY KEY NOT NULL,
	Estado VARCHAR(50) NOT NULL,
	Sigla CHAR(2) NOT NULL
)
CREATE TABLE cidades
(
	ChaveCidade INT IDENTITY PRIMARY KEY NOT NULL,
	Cidade VARCHAR (50) NOT NULL,
)
CREATE TABLE logradouros
(
	ChaveLogradouro INT IDENTITY PRIMARY KEY NOT NULL,
	Logradouro VARCHAR(50) NOT NULL,
	Numero VARCHAR(10) NOT NULL,
	Complemento VARCHAR(20) NOT NULL,
	CEP CHAR(8) NOT NULL
)
CREATE TABLE PrincipalClientes
(
	ChaveCliente INT IDENTITY PRIMARY KEY NOT NULL,
	ID INT NOT NULL,
	NomeContato VARCHAR(40) NOT NULL,
	Titulo VARCHAR(5) NOT NULL,
	Telefone VARCHAR(10) NOT NULL,
	Celular VARCHAR(11) NOT NULL,
	ChaveEmpresa INT NOT NULL,
	ChavePais INT NOT NULL,
	ChaveEstado INT NOT NULL,
	ChaveCidade INT NOT NULL,
	ChaveLogradouro INT NOT NULL
)
CREATE TABLE Vendas
(
	ChaveTempo INT,
	ChaveCliente INT,
	ChaveLoja INT,
	ChaveVendedor INT,
	ChaveProduto INT,
	Quantidade INT NOT NULL,
	Valor DECIMAL(4,3) NOT NULL,
	Desconto DECIMAL(3,2) NOT NULL,
	PRIMARY KEY (ChaveTempo, ChaveCliente, ChaveLoja, ChaveVendedor, ChaveProduto)
)

ALTER TABLE PrincipalClientes
ADD CONSTRAINT FK_PrincipalClientes_Empresas
FOREIGN KEY (ChaveEmpresa) REFERENCES Empresas(ChaveEmpresa)

ALTER TABLE PrincipalClientes
ADD CONSTRAINT FK_PrincipalClientes_Paises
FOREIGN KEY (ChavePais) REFERENCES Paises(ChavePais)

ALTER TABLE PrincipalClientes
ADD CONSTRAINT FK_PrincipalClientes_Estados
FOREIGN KEY (ChaveEstado) REFERENCES Estados(ChaveEstado)

ALTER TABLE PrincipalClientes
ADD CONSTRAINT FK_PrincipalClientes_Cidades
FOREIGN KEY (ChaveCidade) REFERENCES Cidades(ChaveCidade)

ALTER TABLE PrincipalClientes
ADD CONSTRAINT FK_PrincipalClientes_Logradouros
FOREIGN KEY (ChaveLogradouro) REFERENCES Logradouros(ChaveLogradouro)

ALTER TABLE Vendas
ADD CONSTRAINT FK_Vendas_PrincipalClientes
FOREIGN KEY (ChaveCliente) REFERENCES PrincipalClientes(ChaveCliente)

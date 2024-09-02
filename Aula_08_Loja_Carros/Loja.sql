CREATE DATABASE LOJA_AUTO

USE LOJA_AUTO

CREATE TABLE Carros
(
Placa varchar(7) not null,
Fabricante varchar(20) not null,
Modelo varchar(30) not null,
Ano varchar(4) not null,
Cor varchar(15) not null,
Motor varchar(10) not null,
Combustivel varchar(10) not null,
Preco money,
Constraint PKPlaca Primary Key (Placa)
)

INSERT INTO Carros (Placa, Fabricante, Modelo, Ano, Cor, Motor,
Combustivel,Preco)
VALUES
('ABC1256','Ford','Ka',2008,'Preto','1.0','Flex',16500),
('BHT6778', 'Fiat','Palio',2001,'Verde','1.0','Gasolina',10900),
('GGT1090','Ford','Focus',2003,'Cinza','1.8','Gasolina',15900),
('ERC1274','Volkswagen','Gol',2010,'Preto','1.6','Flex',22000),
('ABC7861','Renault','Clio',2008,'Cinza','1.0','Flex',21500),
('QWQ0091','GM','Corsa',2005,'Prata','1.0','Gasolina',17000),
('FDD0066','Hyundai','HB20',2015,'Branco','1.8','Flex',32500),
('FDJ1754','Hyundai','HB20',2014,'Prata','1.8','Flex',31400),
('BQS8720','Volkswagen','Logus',1994,'Vermelho','1.8','Gasolina',8700),
('ECG3341','Volkswagen','Crossfox',2013,'Prata','1.0','Flex',29900),
('HIJ7090','Citroen','C3',2012,'Vermelho','1.0','Flex',19900),
('FFZ0099','Peugeot','206',2006,'Azul','1.6','Gasolina',15900),
('YUI6123','Peugeot','307',2013,'Prata','1.6','Flex',21900),
('RTO9111','Ford','Focus',2009,'Cinza','1.8','Gasolina',15400),
('AYU7619','Fiat','Palio',2001,'Verde','1.0','Gasolina',11000),
('HHH5643','GM','Monza',1992,'Vermelho','2.0','Gasolina',6000),
('BGH1097','Volkswagen','Amarok',2012,'Branco','2.0','Diesel',37000),
('JKK1294','Ford','Ranger',1999,'Prata','2.5','Gasolina',30000),
('KOL9055','Ford','Ranger',2006,'Preto','2.8','Gasolina',32000),
('UIK9144','Ford','Ka',2011,'Preto','1.0','Flex',25900),
('YYU1278','GM','Corsa',1998,'Azul','1.0','Gasolina',9900),
('JKI8891','GM','Celta',2001,'Branco','1.0','Gasolina',10000),
('BBC6661','Renault','Sandero',2013,'Prata','1.0','Flex',31900),
('BBI8988','Renault','Logan',2012,'Branco','1.6','Flex',29900),
('AIJ4555','Fiat','Uno',1994,'Preto','1.0','Álcool',5000),
('HUJ1234','Fiat','Siena',2009,'Branco','1.0','Flex',19500)

SELECT * FROM carros

-- 1) Listar a quantidade de carros agrupados por marca.
SELECT fabricante AS Marca, COUNT(*) AS QUANTIDADE FROM CARROS
GROUP BY fabricante

-- 2) Apresentar a quantidade de carros agrupados por cor.
SELECT cor AS Cor, COUNT(*) AS QUANTIDADE FROM CARROS
GROUP BY cor

-- 3) Mostrar a quantidade de carros agrupados por cor, exceto os carros da cor prata.
SELECT cor AS Cor, COUNT(*) AS QUANTIDADE FROM CARROS
WHERE cor != 'prata'
GROUP BY cor

-- 4) Qual a marca, o modelo, o ano de lançamento e a cor dos carros que possuem preço de venda abaixo do preço médio de venda praticado pelo estacionamento?
SELECT fabricante AS Marca, modelo AS Modelo, ano AS Ano, cor AS Cor FROM CARROS
WHERE preco < (SELECT AVG(preco) FROM CARROS)

-- 5) Qual o preço médio dos veículos do modelo “Ka”?
SELECT modelo AS Modelo, AVG (preco) AS Preço_Médio FROM CARROS
WHERE modelo = 'Ka'
GROUP BY modelo

-- 6) Qual o preço médio dos veículos, agrupados por marca?
SELECT fabricante AS Marca, AVG (preco) AS Preço_Médio FROM CARROS
GROUP BY fabricante

-- 7) Qual a marca, o modelo, o ano de lançamento, a cor e o tipo de combustível do carro mais barato vendido no estacionamento?
SELECT TOP 1 fabricante AS Marca, modelo AS Modelo, ano AS Ano_Lançamento, combustivel AS Tipo_Combustível, MIN(preco) AS Carro_Mais_Barato FROM CARROS
GROUP BY fabricante, modelo, ano, combustivel 
ORDER BY MIN(preco)

-- FORMA MAIS CORRETA (se tiver dois carros com preços mínimos iguais, vai exibir os dois)
SELECT fabricante, modelo, ano, cor, combustivel, preco
FROM CARROS
WHERE PRECO = (SELECT MIN(PRECO) FROM CARROS)

-- 8) Quantos veículos modelo Ecosport, Palio ou Siena possuo no estacionamento?
SELECT COUNT (*) AS Quantidade FROM CARROS
WHERE modelo = 'ecosport' OR
modelo = 'palio' OR
modelo = 'siena'

-- 9) De todos os veículos fabricados entre 1997 e 2006, quantos são da marca Fiat?
SELECT * FROM CARROS
WHERE fabricante = 'fiat' AND
ano BETWEEN 1997 AND 2006

-- 10) Listar a marca, o modelo, o ano de fabricação e a cor apenas dos carros da marca Fiat e que possuam preço de venda abaixo do preço médio praticado pelo estacionamento.
SELECT fabricante AS Marca, modelo AS Modelo, ano AS Ano, cor AS Cor FROM CARROS
WHERE preco <= (SELECT AVG(preco) FROM CARROS) AND
fabricante = 'fiat'

-- 11) Mostrar todos os dados dos carros da marca Ford.
SELECT * FROM CARROS
WHERE fabricante = 'ford'

-- 12) Mostrar todos os dados dos carros da marca Volkswagen.
SELECT * FROM CARROS
WHERE fabricante = 'volkswagen'

-- 13) Mostrar todos os dados dos carros da marca Fiat por ordem crescente de Ano de Fabricação.
SELECT * FROM CARROS
WHERE fabricante = 'fiat'
ORDER BY ano

-- 14) Mostrar todos os dados dos carros da marca Renault com motor 1.0.
SELECT * FROM CARROS
WHERE fabricante = 'renault' AND
motor = '1.0'

-- 15) Mostrar todos os dados dos carros da marca Fiat de cor Verde.
SELECT * FROM CARROS
WHERE fabricante = 'fiat' AND
cor = 'verde'

-- 16) Mostrar a placa, o fabricante, o modelo, o ano e o motor dos carros que tenham sido fabricados antes do ano 2000.
SELECT placa AS Placa, fabricante AS Fabricante, modelo AS Modelo, ano AS Ano, motor AS Motor FROM CARROS
WHERE ano <= 2000

-- 17) Mostrar todos os carros que foram fabricados entre 1999 e 2007 por ordem alfabética de modelo.
SELECT * FROM CARROS
WHERE ano BETWEEN 1999 AND 2007 
ORDER BY modelo

-- 18) Mostrar todos os dados dos carros disponíveis no estacionamento por ordem decrescente de preço de venda.
SELECT * FROM CARROS
ORDER BY preco DESC

-- 19) Mostrar todos os dados dos carros de cor Vermelha disponíveis no estacionamento, desde que tenham sido fabricados antes do ano 2000.
SELECT * FROM CARROS
WHERE cor = 'vermelho' AND
ano < 2000

-- 20) Mostrar todos os dados dos carros que possuam preço de venda entre 15000 e 30000
SELECT * FROM CARROS
WHERE preco BETWEEN 15000 AND 30000

-- 21) Mostrar todos os dados dos carros que possuam preço de venda acima de 30000, por ordem decrescente do ano de fabricação.
SELECT * FROM CARROS
WHERE preco > 30000
ORDER BY ano DESC

-- 22) Mostrar a placa, fabricante, modelo e preço dos carros Flex existentes no estacionamento, apresentando os resultados iniciando pelo carro mais caro até o mais barato.
SELECT placa, fabricante, modelo, preco, combustivel FROM CARROS
WHERE combustivel = 'flex' 
ORDER BY preco DESC

-- 23) Mostrar a placa, o fabricante, o modelo, o ano e a cor dos carros fabricados entre 2001 e 2005, cujo preço de venda esteja entre 12000 e 18000.
SELECT placa, fabricante, modelo, ano, cor, preco FROM CARROS
WHERE (ano BETWEEN 2001 AND 2005) AND
(PRECO BETWEEN 12000 AND 18000)

-- 24) Mostrar fabricante, modelo, ano e cor dos carros que não possuam motores 1.0 por ordem crescente de Ano de Fabricação.
SELECT fabricante, modelo, ano, cor, motor FROM CARROS
WHERE motor != '1.0'
ORDER BY ano

-- 25) Mostrar todos os dados dos carros fabricados entre 2011 e 2015, que custem mais do que 20000 e que sejam da cor prata.
SELECT * FROM CARROS
WHERE (ano BETWEEN 2011 AND 2015) AND
preco >= 20000 AND
cor = 'prata'

-- 26) Mostrar todos os dados dos carros fabricados pela GM, desde que o modelo não seja Celta.
SELECT * FROM CARROS
WHERE fabricante = 'GM' AND
modelo != 'celta'

-- 27) Mostrar os dados dos carros com motor 1.6 ou 1.8 disponíveis no estacionamento, por ordem crescente do ano de fabricação.
SELECT * FROM CARROS
WHERE MOTOR = '1.6' OR MOTOR = '1.8' 
ORDER BY ano

/* 28) Jussivaldo quer comprar um carro em seu estacionamento. Por ser uma pessoa que crê em numerologia, ele deseja adquirir um 
carro cujo número da placa seja ímpar. Quais as opções de carro você pode apresentar para Jussivaldo? */
SELECT RIGHT(placa,4), * FROM CARROS
WHERE RIGHT(placa,4) %2 = 1

/* 29) Jussivaldo , também por questões de numerologia, solicita que, além do fato do carro ter número de placa ímpar, as letras devem
ser iniciadas por uma vogal. Quais as opções de carro você pode apresentar para Jussivaldo? */
SELECT * FROM CARROS
WHERE RIGHT(placa,4) %2 = 1
AND LEFT (placa,1) IN('A', 'E', 'I', 'O', 'U')

/* 30) Gotardo vai até o seu estacionamento e informa que deseja que tem preferência por um carro da marca Renault,
possivelmente fabricado entre 2011 e 2014 e que não custe mais do que 30000. 
Existe um carro no seu estacionamento para ser apresentado para Gotardo? */
SELECT * FROM CARROS
WHERE fabricante = 'renault' AND 
(ano BETWEEN 2011 AND 2014) AND
preco <= 30000

/* 31) Creuzedete possui 25000 para comprar um carro. Ela deseja um carro da Hyundai. Existe algum carro no seu estacionamento
para ser eventualmente negociado com Creuzedete */
SELECT * FROM CARROS
WHERE fabricante = 'Hyundai' AND
preco <= 25000

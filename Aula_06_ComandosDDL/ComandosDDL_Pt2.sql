-- Seleciona 2 nomes de bancos
SELECT * FROM TESTE2
WHERE NOME = 'santander select'
	OR NOME = 'brasil select'


INSERT INTO teste2	
	(codigo_banco, nome, valor, situacao)
VALUES (505, 'santander select', 33.4, 'I')

-- Seleciona dois nomes de bancos e um valor maior
SELECT * FROM TESTE2
WHERE (NOME = 'santander select' OR NOME = 'brasil select')
	AND VALOR >= 36

-- Outra forma
SELECT * FROM TESTE2
WHERE NOME in ('santander select', 'brasil select')

-- Seleciona bancos com qaulquer parte do nome 'select'
SELECT * FROM TESTE2
WHERE NOME LIKE '%SELECT'

-- Não daria certo
SELECT * FROM TESTE2
WHERE NOME LIKE 'SELE%'

/* Não funciona porque depois da palavra select não temos mais nada.
Se a pesquisa fosse por 'SAN%' daria certo (para exibir todos os bancos com 'san' no inicio */

-- SELECIONA BANCO COM 'SELECT' TANTO NO FIM QUANTO NO INÍCIO
SELECT * FROM TESTE2
WHERE NOME LIKE '%SELECT%'


-- Selecionar todos os bancos que contenham a letra 'A' e situação inativa
SELECT * FROM TESTE2
WHERE NOME LIKE '%a%'
	AND situacao = 'I'

-- Selecionar todos os bancos que contenham letra 'A' e que estejam Inativos e valor menor que 35
SELECT * FROM TESTE2
WHERE NOME LIKE '%a%'
	AND situacao = 'I'
		AND valor < 35

/* Só precisa de parênteses se for uma situação que misture OR com AND. */

-- Selecionar todos os dados em ordem crescente de valor
SELECT * FROM TESTE2
ORDER BY valor

-- Selecionar todos os dados em ordem decrescente de valor
SELECT * FROM TESTE2
ORDER BY valor DESC

-- Selecionar todos os dados entre 36 e 45
SELECT * FROM TESTE2
WHERE valor >= 36
AND valor <= 45

-- Selecionar todos os dados entre 36 e 45. (Outra forma).
SELECT * FROM TESTE2
WHERE VALOR BETWEEN 36 AND 45

-- Seleciona todos os dados com valores fora do intervalo 36 e 45
SELECT * FROM TESTE2
WHERE VALOR NOT BETWEEN 36 AND 45

-- Seleciona todos os dados com valores fora do intervalo 36 e 45
SELECT * FROM TESTE2
WHERE VALOR < 36 OR VALOR > 45

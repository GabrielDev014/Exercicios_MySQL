CREATE DATABASE FUNCIONARIO_TRG

USE FUNCIONARIO_TRG

-- Cria uma tabela
CREATE TABLE Funcionarios 
(
	ID Int, 
	Nome VARCHAR(200), 
	Cartao NCHAR(15)
)

-- Insere alguns registros
INSERT INTO Funcionarios VALUES (1, 'Cliente 1', '448288751231412')
INSERT INTO Funcionarios VALUES (2, 'Cliente 2', '568290123583901')
INSERT INTO Funcionarios VALUES (3, 'Cliente 3', '458129340853032')

SELECT * FROM FUNCIONARIOS

-- Cria uma tabela para armazenar alterações de funcionários na coluna Cartão
CREATE TABLE HistoricoAlteracaoCartaoFunc
(
	ID Int Identity(1,1), 
	CartaoAnterior NCHAR(15),
    DataAlteracao SMALLDATETIME, 
	IDFuncionario INT
)

-- Tem nada na tabela ainda. Vamos criar a trigger.
SELECT * FROM HistoricoAlteracaoCartaoFunc

-- CRIAR TRIGGER PARA GRAVAR ALTERAÇÕES DE FUNCIONÁRIO NA COLUNA CARTÃO
CREATE TRIGGER TRG_ALTERA_CARTAO ON FUNCIONARIOS 
FOR UPDATE 
AS
BEGIN 
	IF UPDATE (CARTAO)
	BEGIN
		INSERT INTO HISTORICOALTERACAOCARTAOFUNC (CartaoAnterior, DataAlteracao, IDFuncionario)
			SELECT CARTAO, GETDATE(), ID FROM DELETED
	END --fim do if
END -- fim da trigger

-- Verifica o conteúdo de funcionários
SELECT * FROM Funcionarios

-- Verifica o conteúdo da trigger
SELECT * FROM HistoricoAlteracaoCartaoFunc

-- Alterar o nome de um funcionário 
UPDATE Funcionarios SET NOME = 'CLIENTE_2' WHERE ID = 2

-- Altera o cartão do funcionário
UPDATE Funcionarios SET CARTAO = REPLACE (CARTAO, '6', '7') WHERE ID = '2'

-- Ou então
UPDATE FUNCIONARIOS SET CARTAO = '123456789' WHERE ID = 2

-- Alterar a trigger para ser executada a qualquer alteração
ALTER TRIGGER TRG_ALTERA_CARTAO ON FUNCIONARIOS 
FOR UPDATE 
AS
BEGIN
	INSERT INTO HistoricoAlteracaoCartaoFunc (CartaoAnterior, DataAlteracao,  IDFuncionario)
		SELECT CARTAO, GETDATE(), ID FROM DELETED
END 

-- Verificação de conteúdo
SELECT * FROM FUNCIONARIOS
SELECT * FROM HistoricoAlteracaoCartaoFunc

-- Alterar o nome de um funcionário
UPDATE Funcionarios SET Nome = 'Cliente_3' WHERE ID = 3

-- Permitindo que o nome fique no histórico
ALTER TABLE HistoricoAlteracaoCartaoFunc
ADD nome nvarchar(200)
-- Permitindo que o tipo de alteração fique no histórico
ALTER TABLE HistoricoAlteracaoCartaoFunc ADD TIPO CHAR(1)

ALTER TRIGGER TRG_ALTERA_CARTAO ON FUNCIONARIOS 
FOR UPDATE 
AS
BEGIN
	INSERT INTO HistoricoAlteracaoCartaoFunc (CartaoAnterior, DataAlteracao,  IDFuncionario, Nome, TIPO)
		SELECT CARTAO, GETDATE(), ID, Nome, 'A' FROM DELETED
END 

UPDATE Funcionarios SET nome = 'Cliente_Três' WHERE ID = 3

-- Verificação de conteúdo
SELECT * FROM FUNCIONARIOS
SELECT * FROM HistoricoAlteracaoCartaoFunc

-- Criar trigger para ser executada a qualquer exclusão
CREATE TRIGGER TRG_EXCLUI_CARTAO ON FUNCIONARIOS
FOR DELETE
AS
BEGIN 
	INSERT INTO HistoricoAlteracaoCartaoFunc (CartaoAnterior, DataAlteracao,  IDFuncionario, Nome, TIPO)
		SELECT CARTAO, GETDATE(), ID, Nome, 'D' FROM DELETED
END 

-- Deletando funcionário
DELETE FUNCIONARIOS WHERE ID = 3

SELECT * FROM Funcionarios
SELECT * FROM HistoricoAlteracaoCartaoFunc

-- Não registra a ação da trigger
ALTER TRIGGER TRG_EXCLUI_CARTAO ON FUNCIONARIOS
FOR DELETE
AS
BEGIN
	Set NoCount on --não registra a ação da trigger 
	INSERT INTO HistoricoAlteracaoCartaoFunc (CartaoAnterior, DataAlteracao,  IDFuncionario, Nome, TIPO)
		SELECT CARTAO, GETDATE(), ID, Nome, 'D' FROM DELETED
END 

DELETE FUNCIONARIOS WHERE ID = 2

SELECT * FROM Funcionarios
SELECT * FROM HistoricoAlteracaoCartaoFunc

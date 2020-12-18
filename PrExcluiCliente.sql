-----------------------------------------------------------------------------------------------------------
--DESCRIÇÃO:	PROCEDURE RESPONSÁVEL POR EXCLUIR AS INFORMAÇÕES BASICAS DO CLIENTE APARTIR DO CodCliente
--CRIADO POR:	ADRIANO JOSÉ DA SILVA
--DATA CRIAÇÃO: 18/12/2020
-----------------------------------------------------------------------------------------------------------
CREATE PROCEDURE PrExcluiCliente
	@CodCli	INT
AS
	DELETE FROM
		Cliente
	WHERE 1 = 1
		AND CodCliente = @CodCli
GO
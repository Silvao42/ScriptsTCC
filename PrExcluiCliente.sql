-----------------------------------------------------------------------------------------------------------
--DESCRI��O:	PROCEDURE RESPONS�VEL POR EXCLUIR AS INFORMA��ES BASICAS DO CLIENTE APARTIR DO CodCliente
--CRIADO POR:	ADRIANO JOS� DA SILVA
--DATA CRIA��O: 18/12/2020
-----------------------------------------------------------------------------------------------------------
CREATE PROCEDURE PrExcluiCliente
	@CodCli	INT
AS
	DELETE FROM
		Cliente
	WHERE 1 = 1
		AND CodCliente = @CodCli
GO
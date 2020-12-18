-----------------------------------------------------------------------------------------------------------
--DESCRI��O:	PROCEDURE RESPONS�VEL POR CONSULTAR AS INFORMA��ES BASICAS DO CLIENTE APARTIR DO CodCliente
--CRIADO POR:	ADRIANO JOS� DA SILVA
--DATA CRIA��O: 18/12/2020
-----------------------------------------------------------------------------------------------------------
CREATE PROCEDURE PrConsultaCliente
	@CodigoCliente INT
AS

	SELECT
		CodCliente
		,CodTipoCli
		,NomeCli
		,DataCadCli
		,RendaCli
		,SexoCli
	FROM
		Cliente
	WHERE 1 = 1
		AND CodCliente = @CodigoCliente

GO
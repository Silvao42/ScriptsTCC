-----------------------------------------------------------------------------------------------------------
--DESCRIÇÃO:	PROCEDURE RESPONSÁVEL POR CONSULTAR AS INFORMAÇÕES BASICAS DO CLIENTE APARTIR DO CodCliente
--CRIADO POR:	ADRIANO JOSÉ DA SILVA
--DATA CRIAÇÃO: 18/12/2020
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
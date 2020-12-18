-----------------------------------------------------------------------------------------------------------
--DESCRIÇÃO:	TRIGGER RESPONSÁVEL POR CONSULTAR AS INFORMAÇÕES BASICAS DO CLIENTE
--CRIADO POR:	ADRIANO JOSÉ DA SILVA
--DATA CRIAÇÃO: 18/12/2020
-----------------------------------------------------------------------------------------------------------
CREATE PROCEDURE PrCadastraCliente
	@CodCli INT
AS
	INSERT INTO Cliente (CodCli, CodTipoCli, NomeCli, DataCadCli, RendaCli, SexoCli)
	SELECT
		CodCli
		,CodTipoCli
		,NomeCli
		,DataCadCli
		,RendaCli
		,SexoCli
	WHERE 1 = 1
		AND CodCli = @CodCli
GO
-----------------------------------------------------------------------------------------------------------
--DESCRI��O:	TRIGGER RESPONS�VEL POR CONSULTAR AS INFORMA��ES BASICAS DO CLIENTE
--CRIADO POR:	ADRIANO JOS� DA SILVA
--DATA CRIA��O: 18/12/2020
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
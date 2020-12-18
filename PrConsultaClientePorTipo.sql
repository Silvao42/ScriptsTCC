-----------------------------------------------------------------------------------------------------------
--DESCRIÇÃO:	PROCEDURE RESPONSÁVEL POR CONSULTAR AS INFORMAÇÕES DO CLIENTE APARTIR POR TIPO
--CRIADO POR:	ADRIANO JOSÉ DA SILVA
--DATA CRIAÇÃO: 18/12/2020
-----------------------------------------------------------------------------------------------------------
CREATE PROCEDURE PrConsultaClientePorTipo
	@CodigoCliente	INT
	,@NomeTipo		VARCHAR(20)
AS
	IF (SELECT COUNT(*) FROM TipoCli WHERE NomeTipoCli LIKE @NomeTipo) > 0
	BEGIN
		ERROR_MESSAGE('Tipo de cliente escrito errado ou não cadastrado!')
	END
	ELSE
	BEGIN
		SELECT
			*
		FROM
			Cliente
			INNER JOIN TipoCli
			ON TipoCli.CodTipoCli = Cliente.CodTipoCli
		WHEN 1 = 1
			AND Cliente.CodCli = @CodigoCliete
			AND TipoCli.NomeTipoCli LIKE @NomeTipo

	END
GO
-----------------------------------------------------------------------------------------------------------
--DESCRI��O:	PROCEDURE RESPONS�VEL POR CADASTRAR AS INFORMA��ES BASICAS DO CLIENTE
--CRIADO POR:	ADRIANO JOS� DA SILVA
--DATA CRIA��O: 18/12/2020
-----------------------------------------------------------------------------------------------------------
CREATE PROCEDURE PrInsereCliente
	@CodCliente		INT
	,@NomeCliente	VARCHAR(100)
	,@RendaCliente	DECIMAL(10,2)
	,@SexoCliente	CHAR(01)
AS
	BEGIN TRY
		
		BEGIN TRAN

			DECLARE
			@DataCadCliente DATETIME = GETDATE()

			IF NOT EXISTS (SELECT * FROM Cliente WHERE NomeCli LIKE @NomeCliente)
			BEGIN
				INSERT INTO Cliente (CodTipoCli, NomeCli, DataCadCli, RendaCli, SexoCli)
				VALUES (@CodCliente, @NomeCliente, @DataCadCliente, @RendaCliente, @SexoCliente)
			END
			ELSE
			BEGIN
				RAISERROR('Cliente j� possu� cadastro!', 16, 1)
			END

		COMMIT TRAN

	END TRY

	BEGIN CATCH
		
		RAISERROR('Erro ao executar a procedure PrInsereCliente.', 16, 1)
		ROLLBACK TRAN

	END CATCH

GO
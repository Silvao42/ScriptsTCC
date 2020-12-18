-----------------------------------------------------------------------------------------------------------
--DESCRIÇÃO:	TRIGGER RESPONSÁVEL POR ATUALIZAR O CRÉDITO DO CLIENTE BASEADO NA RENDA DO MESMO
--REGRA:		CASO A RENDA ESTEJA ENTRE R$ 0,00 E R$ 1.000,00 O CLIENTE TERÁ R$ 500,00 DE CRÉDITO
--				CASO A RENDA ESTEJA ENTRE R$ 1.000,00 E R$ 2.000,00 O CLIENTE TERÁ R$ 1500,00 DE CRÉDITO
--				CASO A RENDA ESTEJA ACIMA DE R$ 2.000,00 O CLIENTE TERÁ R$ 2.000,00 DE CRÉDITO
--CRIADO POR:	ADRIANO JOSÉ DA SILVA
--DATA CRIAÇÃO: 18/12/2020
-----------------------------------------------------------------------------------------------------------
CREATE TRIGGER TrAtualizaCredito
ON Cliente
	AFTER UPDATE
AS
	IF (UPDATE(RendaCli))
	BEGIN
		DECLARE
			@CodCli		INT
			,@RendaCli	DECIMAL(10,2)

		SET
			@CodCli		= (SELECT CodCli FROM INSERTED)
			,@RendaCli	= (SELECT RendaCli FROM INSERTED)

		UPDATE Credito
		SET CredCli = CASE
			WHEN @RendaCli BETWEEN 0 AND 1000 THEN 500
			WHEN @RendaCli BETWEEN 1000 AND 2000 THEN 1500
			ELSE 2000
			END
		WHERE 1 = 1
			AND CodCli = @CodCli

	END
GO
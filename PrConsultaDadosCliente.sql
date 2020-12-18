-----------------------------------------------------------------------------------------------------------
--DESCRI��O:	PROCEDURE RESPONS�VEL POR CONSULTAR TODAS AS INFORMA��ES DO CLIENTE
--CRIADO POR:	ADRIANO JOS� DA SILVA
--DATA CRIA��O: 18/12/2020
-----------------------------------------------------------------------------------------------------------
CREATE PROCEDURE PrConsultaDadosCliente
	@CodCli	INT
AS
	SELECT
		*
	FROM
		Cliente
		INNER JOIN Endereco
		ON Cliente.CodCliente = Endereco.CodCliente
		INNER JOIN Conjuge
		ON Cliente.CodCliente = Conjuge.CodCliente
		INNER JOIN Fone
		ON Cliente.CodCliente = Fone.CodCliente
		INNER JOIN Email
		ON Cliente.CodCliente = Email.CodCliente
	WHERE 1 = 1
		AND Cliente.CodCliente = CodCliente
GO
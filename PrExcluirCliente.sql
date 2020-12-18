-----------------------------------------------------------------------------------------------------------
--DESCRI��O:	PROCEDURE RESPONS�VEL POR EXCLUIR TODAS AS INFORMA��ES DO CLIENTE APARTIR DO CodCliente
--CRIADO POR:	ADRIANO JOS� DA SILVA
--DATA CRIA��O: 18/12/2020
-----------------------------------------------------------------------------------------------------------
CREATE PROCEDURE PrExcluirCliente
	@CodigoCli INT
AS
	IF (SELECT COUNT(*) FROM Fone WHERE CodCli = @CodigoCli) > 0
	BEGIN
		DELETE FROM Fone WHERE CodCli = @CodigoCli
	END

	IF (SELECT COUNT(*) FROM Endereco WHERE CodCli = @CodigoCli) > 0
	BEGIN
		DELETE FROM Endereco WHERE CodCli = @CodigoCli
	END

	IF (SELECT COUNT(*) FROM Email WHERE CodCli = @CodigoCli) > 0
	BEGIN
		DELETE FROM Email WHERE CodCli = @CodigoCli
	END

	IF (SELECT COUNT(*) FROM Conjuge WHERE CodCli = @CodigoCli) > 0
	BEGIN
		DELETE FROM Conjuge WHERE CodCli = @CodigoCli
	END

	IF (SELECT COUNT(*) FROM Credito WHERE CodCli = @CodigoCli) > 0
	BEGIN
		DELETE FROM Credito WHERE CodCli = @CodigoCli
	END

	DELETE FROM Cliente WHERE CodCli = @CodigoCli

GO
-----------------------------------------------------------------------------------------------------------
--DESCRIÇÃO:	SCRIPT CRIAÇÃO DA TABELA CLIENTE
--CRIADO POR:	ADRIANO JOSÉ DA SILVA
--DATA CRIAÇÃO: 18/12/2020
-----------------------------------------------------------------------------------------------------------
CREATE TABLE Cliente
(
	CodCli			INT IDENTITY	NOT NULL
	,CodTipoCli		INT				NOT NULL
	,NomeCli		VARCHAR(100)	NOT NULL
	,DataCadCli		SMALLDATETIME	NOT NULL DEFAULT GETDATE()
	,RendaCli		DECIMAL(10,2)	NOT NULL DEFAULT 0
	,SexoCli		CHAR(01)		NOT NULL DEFAULT 'F'

	CONSTRAINT PkCli PRIMARY KEY(CodCli)
	,CONSTRAINT FkCliTipoCli FOREIGN KEY(CodTipoCli)REFERENCES TipoCli(CodTipoCli)
	,CONSTRAINT ChCli1 CHECK(RendaCli >= 0)
	,CONSTRAINT ChCli2 CHECK(SexoCli IN('F', 'M'))
)
GO
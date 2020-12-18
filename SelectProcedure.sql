-----------------------------------------------------------------------------------------------------------
--DESCRI��O:	SELECT DAS PROCEDURES QUE UTILIZAM A TABELA CLIENTE
--CRIADO POR:	ADRIANO JOS� DA SILVA
--DATA CRIA��O: 18/12/2020
-----------------------------------------------------------------------------------------------------------
SELECT
	NAME
	,CREATE_DATE
	,MODIFY_DATE
FROM
	SYS.PROCEDURES
WHERE 1 = 1
	AND OBJECT_DEFINITION(OBJECT_ID) LIKE '%Cliente%'
IF NOT EXISTS (SELECT 1 FROM sys.databases WHERE name = 'SiriusTSE')
BEGIN
    CREATE DATABASE SiriusTSE;
END;
GO

USE SiriusTSE;
GO

IF EXISTS (SELECT 1 FROM sys.tables WHERE name = 'REDE_SOCIAL')
DROP TABLE dbo.REDE_SOCIAL
GO

CREATE TABLE REDE_SOCIAL (
	SG_UF CHAR(2) NOT NULL,
	CD_ELEICAO INT NOT NULL,
	SQ_CANDIDATO BIGINT NOT NULL,
    NR_ORDEM_REDE_SOCIAL VARCHAR(50) NOT NULL, 
    DS_URL VARCHAR(600) NOT NULL, 
    PRIMARY KEY (SQ_CANDIDATO, NR_ORDEM_REDE_SOCIAL)
);
PRINT 'Cria��o da tabela Rede Social conclu�da! ^-^';

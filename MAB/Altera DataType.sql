-- ==================== 
-- === Cria Tabelas M
-- ==================== 

/***** FILTRO2  
USERAGENTBROWSER 5 
Acao	3 (Sem Ação)
Servico	7 (Sem)
Informacao	0
Produto	0 ***/


ALTER TABLE [WAFIPS05].[dbo].[Filtro2_A] 
ADD MREGRA float NULL;
go
ALTER TABLE [WAFIPS05].[dbo].[Filtro2_B] 
ADD MREGRA float NULL;
go
ALTER TABLE [WAFIPS05].[dbo].[Filtro2_C] 
ADD MREGRA float NULL;
go
ALTER TABLE [WAFIPS05].[dbo].[Filtro2_D] 
ADD MREGRA float NULL;
go
ALTER TABLE [WAFIPS05].[dbo].[Filtro2_E] 
ADD MREGRA float NULL;
go
ALTER TABLE [WAFIPS05].[dbo].[Filtro2_F] 
ADD MREGRA float NULL;
go
ALTER TABLE [WAFIPS05].[dbo].[Filtro2_G] 
ADD MREGRA float NULL;
go

ALTER TABLE [WAFIPS05].[dbo].[Filtro1_A] 
ADD MSTATUS float NULL;
go
ALTER TABLE [WAFIPS05].[dbo].[Filtro1_B] 
ADD MSTATUS float NULL;
go
ALTER TABLE [WAFIPS05].[dbo].[Filtro1_C] 
ADD MSTATUS float NULL;
go
ALTER TABLE [WAFIPS05].[dbo].[Filtro1_D] 
ADD MSTATUS float NULL;
go
ALTER TABLE [WAFIPS05].[dbo].[Filtro1_E] 
ADD MSTATUS float NULL;
go
ALTER TABLE [WAFIPS05].[dbo].[Filtro1_F] 
ADD MSTATUS float NULL;
go
ALTER TABLE [WAFIPS05].[dbo].[Filtro1_G] 
ADD MSTATUS float NULL;
go

-- ==================== 
-- === Calcula Campos M
-- ==================== 


UPDATE [WAFIPS05].[dbo].[Filtro2_A] SET MREGRA =(CAST(SREGRA AS FLOAT)/QREGRA) * 100; 
UPDATE [WAFIPS05].[dbo].[Filtro2_B] SET MREGRA =(CAST(SREGRA AS FLOAT)/QREGRA) * 100; 
UPDATE [WAFIPS05].[dbo].[Filtro2_C] SET MREGRA =(CAST(SREGRA AS FLOAT)/QREGRA) * 100; 
UPDATE [WAFIPS05].[dbo].[Filtro2_D] SET MREGRA =(CAST(SREGRA AS FLOAT)/QREGRA) * 100; 
UPDATE [WAFIPS05].[dbo].[Filtro2_E] SET MREGRA =(CAST(SREGRA AS FLOAT)/QREGRA) * 100; 
UPDATE [WAFIPS05].[dbo].[Filtro2_F] SET MREGRA =(CAST(SREGRA AS FLOAT)/QREGRA) * 100; 
UPDATE [WAFIPS05].[dbo].[Filtro2_G] SET MREGRA =(CAST(SREGRA AS FLOAT)/QREGRA) * 100; 
GO
UPDATE [WAFIPS05].[dbo].[Filtro1_A] SET MSTATUS =(CAST(SSTATUS AS FLOAT)/QSTATUS) * 100;
UPDATE [WAFIPS05].[dbo].[Filtro1_B] SET MSTATUS =(CAST(SSTATUS AS FLOAT)/QSTATUS) * 100;
UPDATE [WAFIPS05].[dbo].[Filtro1_C] SET MSTATUS =(CAST(SSTATUS AS FLOAT)/QSTATUS) * 100;
UPDATE [WAFIPS05].[dbo].[Filtro1_D] SET MSTATUS =(CAST(SSTATUS AS FLOAT)/QSTATUS) * 100;
UPDATE [WAFIPS05].[dbo].[Filtro1_E] SET MSTATUS =(CAST(SSTATUS AS FLOAT)/QSTATUS) * 100;
UPDATE [WAFIPS05].[dbo].[Filtro1_F] SET MSTATUS =(CAST(SSTATUS AS FLOAT)/QSTATUS) * 100;
UPDATE [WAFIPS05].[dbo].[Filtro1_G] SET MSTATUS =(CAST(SSTATUS AS FLOAT)/QSTATUS) * 100;
GO
-- ==================== 
-- === CORRIGE CAMPOS null
-- ==================== 
UPDATE [WAFIPS05].[dbo].[Filtro2_A] SET UserAgentBrowser ='5' WHERE UserAgentBrowser is NULL;
UPDATE [WAFIPS05].[dbo].[Filtro2_A] SET Acao ='3' WHERE Acao is NULL;
UPDATE [WAFIPS05].[dbo].[Filtro2_A] SET Servico ='7' WHERE Servico is NULL;
UPDATE [WAFIPS05].[dbo].[Filtro2_A] SET Informacao ='0' WHERE Informacao is NULL;
UPDATE [WAFIPS05].[dbo].[Filtro2_A] SET Produto ='0' WHERE Produto is NULL;
GO
UPDATE [WAFIPS05].[dbo].[Filtro2_B] SET UserAgentBrowser ='5' WHERE UserAgentBrowser is NULL;
UPDATE [WAFIPS05].[dbo].[Filtro2_B] SET Acao ='3' WHERE Acao is NULL;
UPDATE [WAFIPS05].[dbo].[Filtro2_B] SET Servico ='7' WHERE Servico is NULL;
UPDATE [WAFIPS05].[dbo].[Filtro2_B] SET Informacao ='0' WHERE Informacao is NULL;
UPDATE [WAFIPS05].[dbo].[Filtro2_B] SET Produto ='0' WHERE Produto is NULL;
GO
UPDATE [WAFIPS05].[dbo].[Filtro2_C] SET UserAgentBrowser ='5' WHERE UserAgentBrowser is NULL;
UPDATE [WAFIPS05].[dbo].[Filtro2_C] SET Acao ='3' WHERE Acao is NULL;
UPDATE [WAFIPS05].[dbo].[Filtro2_C] SET Servico ='7' WHERE Servico is NULL;
UPDATE [WAFIPS05].[dbo].[Filtro2_C] SET Informacao ='0' WHERE Informacao is NULL;
UPDATE [WAFIPS05].[dbo].[Filtro2_C] SET Produto ='0' WHERE Produto is NULL;
GO
UPDATE [WAFIPS05].[dbo].[Filtro2_D] SET UserAgentBrowser ='5' WHERE UserAgentBrowser is NULL;
UPDATE [WAFIPS05].[dbo].[Filtro2_D] SET Acao ='3' WHERE Acao is NULL;
UPDATE [WAFIPS05].[dbo].[Filtro2_D] SET Servico ='7' WHERE Servico is NULL;
UPDATE [WAFIPS05].[dbo].[Filtro2_D] SET Informacao ='0' WHERE Informacao is NULL;
UPDATE [WAFIPS05].[dbo].[Filtro2_D] SET Produto ='0' WHERE Produto is NULL;
GO
UPDATE [WAFIPS05].[dbo].[Filtro2_E] SET UserAgentBrowser ='5' WHERE UserAgentBrowser is NULL;
UPDATE [WAFIPS05].[dbo].[Filtro2_E] SET Acao ='3' WHERE Acao is NULL;
UPDATE [WAFIPS05].[dbo].[Filtro2_E] SET Servico ='7' WHERE Servico is NULL;
UPDATE [WAFIPS05].[dbo].[Filtro2_E] SET Informacao ='0' WHERE Informacao is NULL;
UPDATE [WAFIPS05].[dbo].[Filtro2_E] SET Produto ='0' WHERE Produto is NULL;
GO
UPDATE [WAFIPS05].[dbo].[Filtro2_F] SET UserAgentBrowser ='5' WHERE UserAgentBrowser is NULL;
UPDATE [WAFIPS05].[dbo].[Filtro2_F] SET Acao ='3' WHERE Acao is NULL;
UPDATE [WAFIPS05].[dbo].[Filtro2_F] SET Servico ='7' WHERE Servico is NULL;
UPDATE [WAFIPS05].[dbo].[Filtro2_F] SET Informacao ='0' WHERE Informacao is NULL;
UPDATE [WAFIPS05].[dbo].[Filtro2_F] SET Produto ='0' WHERE Produto is NULL;
GO
UPDATE [WAFIPS05].[dbo].[Filtro2_G] SET UserAgentBrowser ='5' WHERE UserAgentBrowser is NULL;
UPDATE [WAFIPS05].[dbo].[Filtro2_G] SET Acao ='3' WHERE Acao is NULL;
UPDATE [WAFIPS05].[dbo].[Filtro2_G] SET Servico ='7' WHERE Servico is NULL;
UPDATE [WAFIPS05].[dbo].[Filtro2_G] SET Informacao ='0' WHERE Informacao is NULL;
UPDATE [WAFIPS05].[dbo].[Filtro2_G] SET Produto ='0' WHERE Produto is NULL;
GO
UPDATE [WAFIPS05].[dbo].[Filtro1_A] SET UserAgentBrowser ='5' WHERE UserAgentBrowser is NULL;
UPDATE [WAFIPS05].[dbo].[Filtro1_B] SET UserAgentBrowser ='5' WHERE UserAgentBrowser is NULL;
UPDATE [WAFIPS05].[dbo].[Filtro1_C] SET UserAgentBrowser ='5' WHERE UserAgentBrowser is NULL;
UPDATE [WAFIPS05].[dbo].[Filtro1_D] SET UserAgentBrowser ='5' WHERE UserAgentBrowser is NULL;
UPDATE [WAFIPS05].[dbo].[Filtro1_E] SET UserAgentBrowser ='5' WHERE UserAgentBrowser is NULL;
UPDATE [WAFIPS05].[dbo].[Filtro1_F] SET UserAgentBrowser ='5' WHERE UserAgentBrowser is NULL;
UPDATE [WAFIPS05].[dbo].[Filtro1_G] SET UserAgentBrowser ='5' WHERE UserAgentBrowser is NULL;
GO
UPDATE [WAFIPS05].[dbo].[Filtro2_A] SET MREGRA =(CAST(SREGRA AS FLOAT)/QREGRA) * 100; 
UPDATE [WAFIPS05].[dbo].[Filtro2_B] SET MREGRA =(CAST(SREGRA AS FLOAT)/QREGRA) * 100; 
UPDATE [WAFIPS05].[dbo].[Filtro2_C] SET MREGRA =(CAST(SREGRA AS FLOAT)/QREGRA) * 100; 
UPDATE [WAFIPS05].[dbo].[Filtro2_D] SET MREGRA =(CAST(SREGRA AS FLOAT)/QREGRA) * 100; 
UPDATE [WAFIPS05].[dbo].[Filtro2_E] SET MREGRA =(CAST(SREGRA AS FLOAT)/QREGRA) * 100; 
UPDATE [WAFIPS05].[dbo].[Filtro2_F] SET MREGRA =(CAST(SREGRA AS FLOAT)/QREGRA) * 100; 
UPDATE [WAFIPS05].[dbo].[Filtro2_G] SET MREGRA =(CAST(SREGRA AS FLOAT)/QREGRA) * 100; 
GO
UPDATE [WAFIPS05].[dbo].[Filtro1_A] SET MSTATUS =(CAST(SSTATUS AS FLOAT)/QSTATUS) * 100;
UPDATE [WAFIPS05].[dbo].[Filtro1_B] SET MSTATUS =(CAST(SSTATUS AS FLOAT)/QSTATUS) * 100;
UPDATE [WAFIPS05].[dbo].[Filtro1_C] SET MSTATUS =(CAST(SSTATUS AS FLOAT)/QSTATUS) * 100;
UPDATE [WAFIPS05].[dbo].[Filtro1_D] SET MSTATUS =(CAST(SSTATUS AS FLOAT)/QSTATUS) * 100;
UPDATE [WAFIPS05].[dbo].[Filtro1_E] SET MSTATUS =(CAST(SSTATUS AS FLOAT)/QSTATUS) * 100;
UPDATE [WAFIPS05].[dbo].[Filtro1_F] SET MSTATUS =(CAST(SSTATUS AS FLOAT)/QSTATUS) * 100;
UPDATE [WAFIPS05].[dbo].[Filtro1_G] SET MSTATUS =(CAST(SSTATUS AS FLOAT)/QSTATUS) * 100;
GO

UPDATE [WAFIPS05].[dbo].[Filtro2_A] SET Origem ='0' WHERE Origem IS NULL;
UPDATE [WAFIPS05].[dbo].[Filtro2_B] SET Origem ='0' WHERE Origem IS NULL;
UPDATE [WAFIPS05].[dbo].[Filtro2_C] SET Origem ='0' WHERE Origem IS NULL;
UPDATE [WAFIPS05].[dbo].[Filtro2_D] SET Origem ='0' WHERE Origem IS NULL;
UPDATE [WAFIPS05].[dbo].[Filtro2_E] SET Origem ='0' WHERE Origem IS NULL;
UPDATE [WAFIPS05].[dbo].[Filtro2_F] SET Origem ='0' WHERE Origem IS NULL;
UPDATE [WAFIPS05].[dbo].[Filtro2_G] SET Origem ='0' WHERE Origem IS NULL;
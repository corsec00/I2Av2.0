-- ==================== 
-- === Cria Tabelas DE FILTRO 1
-- ==================== 
SELECT 
       [Metodo] as [METODO]
      ,[URI]
      ,[Status] as [STATUS]
      ,[URL]
      ,[UserAgent] as [USERAGENT]
      ,[Cookie] as [COOKIE]
	  ,[UserAgentBrowser] as [BROWSER]
	  ,count(*) as QSTATUS
	  ,sum (
				CASE 
					WHEN [WAFinfo] = '-' THEN 0
					WHEN [WAFinfo] IS NULL THEN 0
					ELSE 1 
				END) as SSTATUS
		INTO Filtro_1A 		
  FROM [WAFIPS05].[dbo].[Full]
	where cast(hora as time) > '00:00:00' and cast(hora as time) <= '01:59:59'
group by 
       [Metodo]
      ,[URI]
      ,[Status]
      ,[URL]
      ,[UserAgent]
      ,[Cookie]
	  ,[UserAgentBrowser]
GO	  

SELECT 
       [Metodo] as [METODO]
      ,[URI]
      ,[Status] as [STATUS]
      ,[URL]
      ,[UserAgent] as [USERAGENT]
      ,[Cookie] as [COOKIE]
	  ,[UserAgentBrowser] as [BROWSER]
	  ,count(*) as QSTATUS
	  ,sum (
				CASE 
					WHEN [WAFinfo] = '-' THEN 0
					WHEN [WAFinfo] IS NULL THEN 0
					ELSE 1 
				END) as SSTATUS
		INTO Filtro_1B 		
  FROM [WAFIPS05].[dbo].[Full]
	where cast(hora as time) > '02:00:00' and cast(hora as time) <= '03:59:59'
group by 
       [Metodo]
      ,[URI]
      ,[Status]
      ,[URL]
      ,[UserAgent]
      ,[Cookie]
	  ,[UserAgentBrowser]	  
	  
GO
SELECT 
       [Metodo] as [METODO]
      ,[URI]
      ,[Status] as [STATUS]
      ,[URL]
      ,[UserAgent] as [USERAGENT]
      ,[Cookie] as [COOKIE]
	  ,[UserAgentBrowser] as [BROWSER]
	  ,count(*) as QSTATUS
	  ,sum (
				CASE 
					WHEN [WAFinfo] = '-' THEN 0
					WHEN [WAFinfo] IS NULL THEN 0
					ELSE 1 
				END) as SSTATUS
		INTO Filtro_1C 		
  FROM [WAFIPS05].[dbo].[Full]
	where cast(hora as time) > '04:00:00' and cast(hora as time) <= '05:59:59'
group by 
       [Metodo]
      ,[URI]
      ,[Status]
      ,[URL]
      ,[UserAgent]
      ,[Cookie]
	  ,[UserAgentBrowser]	  
	  
GO
SELECT 
       [Metodo] as [METODO]
      ,[URI]
      ,[Status] as [STATUS]
      ,[URL]
      ,[UserAgent] as [USERAGENT]
      ,[Cookie] as [COOKIE]
	  ,[UserAgentBrowser] as [BROWSER]
	  ,count(*) as QSTATUS
	  ,sum (
				CASE 
					WHEN [WAFinfo] = '-' THEN 0
					WHEN [WAFinfo] IS NULL THEN 0
					ELSE 1 
				END) as SSTATUS
		INTO Filtro_1D 		
  FROM [WAFIPS05].[dbo].[Full]
	where cast(hora as time) > '06:00:00' and cast(hora as time) <= '07:59:59'
group by 
       [Metodo]
      ,[URI]
      ,[Status]
      ,[URL]
      ,[UserAgent]
      ,[Cookie]
	  ,[UserAgentBrowser]	

GO
SELECT 
       [Metodo] as [METODO]
      ,[URI]
      ,[Status] as [STATUS]
      ,[URL]
      ,[UserAgent] as [USERAGENT]
      ,[Cookie] as [COOKIE]
	  ,[UserAgentBrowser] as [BROWSER]
	  ,count(*) as QSTATUS
	  ,sum (
				CASE 
					WHEN [WAFinfo] = '-' THEN 0
					WHEN [WAFinfo] IS NULL THEN 0
					ELSE 1 
				END) as SSTATUS
		INTO Filtro_1E 		
  FROM [WAFIPS05].[dbo].[Full]
	where cast(hora as time) > '08:00:00' and cast(hora as time) <= '09:59:59'
group by 
       [Metodo]
      ,[URI]
      ,[Status]
      ,[URL]
      ,[UserAgent]
      ,[Cookie]
	  ,[UserAgentBrowser]	  
	  
GO
SELECT 
       [Metodo] as [METODO]
      ,[URI]
      ,[Status] as [STATUS]
      ,[URL]
      ,[UserAgent] as [USERAGENT]
      ,[Cookie] as [COOKIE]
	  ,[UserAgentBrowser] as [BROWSER]
	  ,count(*) as QSTATUS
	  ,sum (
				CASE 
					WHEN [WAFinfo] = '-' THEN 0
					WHEN [WAFinfo] IS NULL THEN 0
					ELSE 1 
				END) as SSTATUS
		INTO Filtro_1F 		
  FROM [WAFIPS05].[dbo].[Full]
	where cast(hora as time) > '10:00:00' and cast(hora as time) <= '11:59:59'
group by 
       [Metodo]
      ,[URI]
      ,[Status]
      ,[URL]
      ,[UserAgent]
      ,[Cookie]
	  ,[UserAgentBrowser]	  
GO
-- ==================== 
-- === Cria Tabelas DE FILTRO 2
-- ==================== 
SELECT 
      [Metodo] as [METODO]
      ,[URI]
      ,[Status] as [STATUS]
      ,[URL]
      ,[UserAgent] as [USERAGENT]
      ,[Cookie] as [COOKIE]
      ,[UserAgentBrowser] as [BROWSER]
      ,[Acao] AS [ACAO]
      ,[Servico] AS [SERVICO]
      ,[Informacao] AS [INFORMACAO]
	  ,count(*) as QREGRA
	  ,sum (
				CASE 
					WHEN [Regra] = '-' THEN 0
					WHEN [Regra] IS NULL THEN 0
					ELSE 1 
				END) as SREGRA
		into Filtro_2A
  FROM [WAFIPS05].[dbo].[Full]
where cast(hora as time) > '00:00:00' and cast (hora as time) <= '01:59:59'
group by 
      [Metodo]
      ,[URI]
      ,[Status]
      ,[URL]
      ,[UserAgent]
      ,[Cookie]
      ,[UserAgentBrowser]
      ,[Acao]
      ,[Servico]
      ,[Informacao]
GO
SELECT 
      [Metodo] as [METODO]
      ,[URI]
      ,[Status] as [STATUS]
      ,[URL]
      ,[UserAgent] as [USERAGENT]
      ,[Cookie] as [COOKIE]
      ,[UserAgentBrowser] as [BROWSER]
      ,[Acao] AS [ACAO]
      ,[Servico] AS [SERVICO]
      ,[Informacao] AS [INFORMACAO]
	  ,count(*) as QREGRA
	  ,sum (
				CASE 
					WHEN [Regra] = '-' THEN 0
					WHEN [Regra] IS NULL THEN 0
					ELSE 1 
				END) as SREGRA
		into Filtro_2B
  FROM [WAFIPS05].[dbo].[Full]
where cast(hora as time) > '02:00:00' and cast (hora as time) <= '03:59:59'
group by 
      [Metodo]
      ,[URI]
      ,[Status]
      ,[URL]
      ,[UserAgent]
      ,[Cookie]
      ,[UserAgentBrowser]
      ,[Acao]
      ,[Servico]
      ,[Informacao]
GO
SELECT 
      [Metodo] as [METODO]
      ,[URI]
      ,[Status] as [STATUS]
      ,[URL]
      ,[UserAgent] as [USERAGENT]
      ,[Cookie] as [COOKIE]
      ,[UserAgentBrowser] as [BROWSER]
      ,[Acao] AS [ACAO]
      ,[Servico] AS [SERVICO]
      ,[Informacao] AS [INFORMACAO]
	  ,count(*) as QREGRA
	  ,sum (
				CASE 
					WHEN [Regra] = '-' THEN 0
					WHEN [Regra] IS NULL THEN 0
					ELSE 1 
				END) as SREGRA
		into Filtro_2C
  FROM [WAFIPS05].[dbo].[Full]
where cast(hora as time) > '04:00:00' and cast (hora as time) <= '05:59:59'
group by 
      [Metodo]
      ,[URI]
      ,[Status]
      ,[URL]
      ,[UserAgent]
      ,[Cookie]
      ,[UserAgentBrowser]
      ,[Acao]
      ,[Servico]
      ,[Informacao]
GO
SELECT 
      [Metodo] as [METODO]
      ,[URI]
      ,[Status] as [STATUS]
      ,[URL]
      ,[UserAgent] as [USERAGENT]
      ,[Cookie] as [COOKIE]
      ,[UserAgentBrowser] as [BROWSER]
      ,[Acao] AS [ACAO]
      ,[Servico] AS [SERVICO]
      ,[Informacao] AS [INFORMACAO]
	  ,count(*) as QREGRA
	  ,sum (
				CASE 
					WHEN [Regra] = '-' THEN 0
					WHEN [Regra] IS NULL THEN 0
					ELSE 1 
				END) as SREGRA
		into Filtro_2D
  FROM [WAFIPS05].[dbo].[Full]
where cast(hora as time) > '06:00:00' and cast (hora as time) <= '07:59:59'
group by 
      [Metodo]
      ,[URI]
      ,[Status]
      ,[URL]
      ,[UserAgent]
      ,[Cookie]
      ,[UserAgentBrowser]
      ,[Acao]
      ,[Servico]
      ,[Informacao]
GO
SELECT 
      [Metodo] as [METODO]
      ,[URI]
      ,[Status] as [STATUS]
      ,[URL]
      ,[UserAgent] as [USERAGENT]
      ,[Cookie] as [COOKIE]
      ,[UserAgentBrowser] as [BROWSER]
      ,[Acao] AS [ACAO]
      ,[Servico] AS [SERVICO]
      ,[Informacao] AS [INFORMACAO]
	  ,count(*) as QREGRA
	  ,sum (
				CASE 
					WHEN [Regra] = '-' THEN 0
					WHEN [Regra] IS NULL THEN 0
					ELSE 1 
				END) as SREGRA
		into Filtro_2E
  FROM [WAFIPS05].[dbo].[Full]
where cast(hora as time) > '08:00:00' and cast (hora as time) <= '09:59:59'
group by 
      [Metodo]
      ,[URI]
      ,[Status]
      ,[URL]
      ,[UserAgent]
      ,[Cookie]
      ,[UserAgentBrowser]
      ,[Acao]
      ,[Servico]
      ,[Informacao]
GO
SELECT 
      [Metodo] as [METODO]
      ,[URI]
      ,[Status] as [STATUS]
      ,[URL]
      ,[UserAgent] as [USERAGENT]
      ,[Cookie] as [COOKIE]
      ,[UserAgentBrowser] as [BROWSER]
      ,[Acao] AS [ACAO]
      ,[Servico] AS [SERVICO]
      ,[Informacao] AS [INFORMACAO]
	  ,count(*) as QREGRA
	  ,sum (
				CASE 
					WHEN [Regra] = '-' THEN 0
					WHEN [Regra] IS NULL THEN 0
					ELSE 1 
				END) as SREGRA
		into Filtro_2F
  FROM [WAFIPS05].[dbo].[Full]
where cast(hora as time) > '10:00:00' and cast (hora as time) <= '11:59:59'
group by 
      [Metodo]
      ,[URI]
      ,[Status]
      ,[URL]
      ,[UserAgent]
      ,[Cookie]
      ,[UserAgentBrowser]
      ,[Acao]
      ,[Servico]
      ,[Informacao]
GO





-- ==================== 
-- === Cria Tabelas M
-- ==================== 

/***** FILTRO2  
USERAGENTBROWSER 5 
Acao	3 (Sem Ação)
Servico	7 (Sem)
Informacao	0
Produto	0 ***/


ALTER TABLE [WAFIPS05].[dbo].[Filtro_2A] 
ADD MREGRA float NULL;
go
ALTER TABLE [WAFIPS05].[dbo].[Filtro_2B] 
ADD MREGRA float NULL;
go
ALTER TABLE [WAFIPS05].[dbo].[Filtro_2C] 
ADD MREGRA float NULL;
go
ALTER TABLE [WAFIPS05].[dbo].[Filtro_2D] 
ADD MREGRA float NULL;
go
ALTER TABLE [WAFIPS05].[dbo].[Filtro_2E] 
ADD MREGRA float NULL;
go
ALTER TABLE [WAFIPS05].[dbo].[Filtro_2F] 
ADD MREGRA float NULL;
go

ALTER TABLE [WAFIPS05].[dbo].[Filtro_1A] 
ADD MSTATUS float NULL;
go
ALTER TABLE [WAFIPS05].[dbo].[Filtro_1B] 
ADD MSTATUS float NULL;
go
ALTER TABLE [WAFIPS05].[dbo].[Filtro_1C] 
ADD MSTATUS float NULL;
go
ALTER TABLE [WAFIPS05].[dbo].[Filtro_1D] 
ADD MSTATUS float NULL;
go
ALTER TABLE [WAFIPS05].[dbo].[Filtro_1E] 
ADD MSTATUS float NULL;
go
ALTER TABLE [WAFIPS05].[dbo].[Filtro_1F] 
ADD MSTATUS float NULL;
go

-- ==================== 
-- === Calcula Campos M
-- ==================== 


UPDATE [WAFIPS05].[dbo].[Filtro_2A] SET MREGRA =(CAST(SREGRA AS FLOAT)/QREGRA) * 100; 
UPDATE [WAFIPS05].[dbo].[Filtro_2B] SET MREGRA =(CAST(SREGRA AS FLOAT)/QREGRA) * 100; 
UPDATE [WAFIPS05].[dbo].[Filtro_2C] SET MREGRA =(CAST(SREGRA AS FLOAT)/QREGRA) * 100; 
UPDATE [WAFIPS05].[dbo].[Filtro_2D] SET MREGRA =(CAST(SREGRA AS FLOAT)/QREGRA) * 100; 
UPDATE [WAFIPS05].[dbo].[Filtro_2E] SET MREGRA =(CAST(SREGRA AS FLOAT)/QREGRA) * 100; 
UPDATE [WAFIPS05].[dbo].[Filtro_2F] SET MREGRA =(CAST(SREGRA AS FLOAT)/QREGRA) * 100; 
GO
UPDATE [WAFIPS05].[dbo].[Filtro_1A] SET MSTATUS =(CAST(SSTATUS AS FLOAT)/QSTATUS) * 100;
UPDATE [WAFIPS05].[dbo].[Filtro_1B] SET MSTATUS =(CAST(SSTATUS AS FLOAT)/QSTATUS) * 100;
UPDATE [WAFIPS05].[dbo].[Filtro_1C] SET MSTATUS =(CAST(SSTATUS AS FLOAT)/QSTATUS) * 100;
UPDATE [WAFIPS05].[dbo].[Filtro_1D] SET MSTATUS =(CAST(SSTATUS AS FLOAT)/QSTATUS) * 100;
UPDATE [WAFIPS05].[dbo].[Filtro_1E] SET MSTATUS =(CAST(SSTATUS AS FLOAT)/QSTATUS) * 100;
UPDATE [WAFIPS05].[dbo].[Filtro_1F] SET MSTATUS =(CAST(SSTATUS AS FLOAT)/QSTATUS) * 100;
GO
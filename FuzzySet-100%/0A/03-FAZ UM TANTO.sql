--===========================================
--===========================================
---------------------
-- Dia 21 de Novembro
---------------------
--===========================================
--===========================================


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
					WHEN [WAFinfo] = '1' THEN 1
					WHEN [WAFinfo] = '2' THEN 1
					WHEN [WAFinfo] = '3' THEN 1
					WHEN [WAFinfo] = 'EXT' THEN 1
					ELSE 0  
				END) as SSTATUS
		INTO [FuzzySet].[dbo].[Filtro21_1A]
  FROM [21].[dbo].[Full]
	where cast(hora as time) >= '00:00:00' and cast(hora as time) <= '01:59:59'
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
					WHEN [WAFinfo] = '1' THEN 1
					WHEN [WAFinfo] = '2' THEN 1
					WHEN [WAFinfo] = '3' THEN 1
					WHEN [WAFinfo] = 'EXT' THEN 1
					ELSE 0 
				END) as SSTATUS
		INTO [FuzzySet].[dbo].[Filtro21_1B] 		
  FROM [21].[dbo].[Full]
	where cast(hora as time) >= '02:00:00' and cast(hora as time) <= '03:59:59'
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
					WHEN [WAFinfo] = '1' THEN 1
					WHEN [WAFinfo] = '2' THEN 1
					WHEN [WAFinfo] = '3' THEN 1
					WHEN [WAFinfo] = 'EXT' THEN 1
					ELSE 0 
				END) as SSTATUS
		INTO [FuzzySet].[dbo].[Filtro21_1C] 		
  FROM [21].[dbo].[Full]
	where cast(hora as time) >= '04:00:00' and cast(hora as time) <= '05:59:59'
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
					WHEN [WAFinfo] = '1' THEN 1
					WHEN [WAFinfo] = '2' THEN 1
					WHEN [WAFinfo] = '3' THEN 1
					WHEN [WAFinfo] = 'EXT' THEN 1
					ELSE 0 
				END) as SSTATUS
		INTO [FuzzySet].[dbo].[Filtro21_1D] 		
  FROM [21].[dbo].[Full]
	where cast(hora as time) >= '06:00:00' and cast(hora as time) <= '07:59:59'
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
					WHEN [WAFinfo] = '1' THEN 1
					WHEN [WAFinfo] = '2' THEN 1
					WHEN [WAFinfo] = '3' THEN 1
					WHEN [WAFinfo] = 'EXT' THEN 1
					ELSE 0 
				END) as SSTATUS
		INTO [FuzzySet].[dbo].[Filtro21_1E]		
  FROM [21].[dbo].[Full]
	where cast(hora as time) >= '08:00:00' and cast(hora as time) <= '09:59:59'
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
					WHEN [WAFinfo] = '1' THEN 1
					WHEN [WAFinfo] = '2' THEN 1
					WHEN [WAFinfo] = '3' THEN 1
					WHEN [WAFinfo] = 'EXT' THEN 1
					ELSE 0 
				END) as SSTATUS
		INTO [FuzzySet].[dbo].[Filtro21_1F] 		
  FROM [21].[dbo].[Full]
	where cast(hora as time) >= '10:00:00' and cast(hora as time) <= '11:59:59'
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
					WHEN [WAFinfo] = '1' THEN 1
					WHEN [WAFinfo] = '2' THEN 1
					WHEN [WAFinfo] = '3' THEN 1
					WHEN [WAFinfo] = 'EXT' THEN 1
					ELSE 0 
				END) as SSTATUS
		INTO [FuzzySet].[dbo].[Filtro21_1G]	
  FROM [21].[dbo].[Full]
	where cast(hora as time) >= '12:00:00' and cast(hora as time) <= '13:59:59'
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
					WHEN [WAFinfo] = '1' THEN 1
					WHEN [WAFinfo] = '2' THEN 1
					WHEN [WAFinfo] = '3' THEN 1
					WHEN [WAFinfo] = 'EXT' THEN 1
					ELSE 0 
				END) as SSTATUS
		INTO [FuzzySet].[dbo].[Filtro21_1H]		
  FROM [21].[dbo].[Full]
	where cast(hora as time) >= '14:00:00' and cast(hora as time) <= '15:59:59'
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
					WHEN [WAFinfo] = '1' THEN 1
					WHEN [WAFinfo] = '2' THEN 1
					WHEN [WAFinfo] = '3' THEN 1
					WHEN [WAFinfo] = 'EXT' THEN 1
					ELSE 0 
				END) as SSTATUS
		INTO [FuzzySet].[dbo].[Filtro21_1I]	
  FROM [21].[dbo].[Full]
	where cast(hora as time) >= '16:00:00' and cast(hora as time) <= '17:59:59'
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
					WHEN [WAFinfo] = '1' THEN 1
					WHEN [WAFinfo] = '2' THEN 1
					WHEN [WAFinfo] = '3' THEN 1
					WHEN [WAFinfo] = 'EXT' THEN 1
					ELSE 0 
				END) as SSTATUS
		INTO [FuzzySet].[dbo].[Filtro21_1J]		
  FROM [21].[dbo].[Full]
	where cast(hora as time) >= '18:00:00' and cast(hora as time) <= '19:59:59'
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
					WHEN [WAFinfo] = '1' THEN 1
					WHEN [WAFinfo] = '2' THEN 1
					WHEN [WAFinfo] = '3' THEN 1
					WHEN [WAFinfo] = 'EXT' THEN 1
					ELSE 0 
				END) as SSTATUS
		INTO [FuzzySet].[dbo].[Filtro21_1K]		
  FROM [21].[dbo].[Full]
	where cast(hora as time) >= '20:00:00' and cast(hora as time) <= '21:59:59'
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
					WHEN [WAFinfo] = '1' THEN 1
					WHEN [WAFinfo] = '2' THEN 1
					WHEN [WAFinfo] = '3' THEN 1
					WHEN [WAFinfo] = 'EXT' THEN 1
					ELSE 0 
				END) as SSTATUS
		INTO [FuzzySet].[dbo].[Filtro21_1L] 		
  FROM [21].[dbo].[Full]
	where cast(hora as time) >= '22:00:00' and cast(hora as time) <= '23:59:59'
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

	  ,count(*) as QREGRA
	  ,sum (
				CASE 
					WHEN [Regra] = '0' THEN 0
					WHEN [Regra] = '1%' THEN 1
					WHEN [Regra] = '2%' THEN 1
					WHEN [Regra] = '3%' THEN 1
					WHEN [Regra] = '4%' THEN 1					
					WHEN [Regra] = '5%' THEN 1
					WHEN [Regra] = '6%' THEN 1
					WHEN [Regra] = '7%' THEN 1
					WHEN [Regra] = '8%' THEN 1
					WHEN [Regra] = '9%' THEN 1
					ELSE 0  
				END) as SREGRA
		into [FuzzySet].[dbo].[Filtro21_2A]
  FROM [21].[dbo].[Full]
where cast(hora as time) >= '00:00:00' and cast (hora as time) <= '01:59:59'
group by 
      [Metodo]
      ,[URI]
      ,[Status]
      ,[URL]
      ,[UserAgent]
      ,[Cookie]
      ,[UserAgentBrowser]
      ,[Acao]


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
      
      
	  ,count(*) as QREGRA
	  ,sum (
				CASE 
					WHEN [Regra] = '0' THEN 0
					WHEN [Regra] = '1%' THEN 1
					WHEN [Regra] = '2%' THEN 1
					WHEN [Regra] = '3%' THEN 1
					WHEN [Regra] = '4%' THEN 1					
					WHEN [Regra] = '5%' THEN 1
					WHEN [Regra] = '6%' THEN 1
					WHEN [Regra] = '7%' THEN 1
					WHEN [Regra] = '8%' THEN 1
					WHEN [Regra] = '9%' THEN 1
					ELSE 0 
				END) as SREGRA
		into [FuzzySet].[dbo].[Filtro21_2B]
  FROM [21].[dbo].[Full]
where cast(hora as time) >= '02:00:00' and cast (hora as time) <= '03:59:59'
group by 
      [Metodo]
      ,[URI]
      ,[Status]
      ,[URL]
      ,[UserAgent]
      ,[Cookie]
      ,[UserAgentBrowser]
      ,[Acao]


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
      
      
	  ,count(*) as QREGRA
	  ,sum (
				CASE 
					WHEN [Regra] = '0' THEN 0
					WHEN [Regra] = '1%' THEN 1
					WHEN [Regra] = '2%' THEN 1
					WHEN [Regra] = '3%' THEN 1
					WHEN [Regra] = '4%' THEN 1					
					WHEN [Regra] = '5%' THEN 1
					WHEN [Regra] = '6%' THEN 1
					WHEN [Regra] = '7%' THEN 1
					WHEN [Regra] = '8%' THEN 1
					WHEN [Regra] = '9%' THEN 1
					ELSE 0 
				END) as SREGRA
		into [FuzzySet].[dbo].[Filtro21_2C]
  FROM [21].[dbo].[Full]
where cast(hora as time) >= '04:00:00' and cast (hora as time) <= '05:59:59'
group by 
      [Metodo]
      ,[URI]
      ,[Status]
      ,[URL]
      ,[UserAgent]
      ,[Cookie]
      ,[UserAgentBrowser]
      ,[Acao]


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
      
      
	  ,count(*) as QREGRA
	  ,sum (
				CASE 
					WHEN [Regra] = '0' THEN 0
					WHEN [Regra] = '1%' THEN 1
					WHEN [Regra] = '2%' THEN 1
					WHEN [Regra] = '3%' THEN 1
					WHEN [Regra] = '4%' THEN 1					
					WHEN [Regra] = '5%' THEN 1
					WHEN [Regra] = '6%' THEN 1
					WHEN [Regra] = '7%' THEN 1
					WHEN [Regra] = '8%' THEN 1
					WHEN [Regra] = '9%' THEN 1
					ELSE 0  
				END) as SREGRA
		into [FuzzySet].[dbo].[Filtro21_2D]
  FROM [21].[dbo].[Full]
where cast(hora as time) >= '06:00:00' and cast (hora as time) <= '07:59:59'
group by 
      [Metodo]
      ,[URI]
      ,[Status]
      ,[URL]
      ,[UserAgent]
      ,[Cookie]
      ,[UserAgentBrowser]
      ,[Acao]


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
      
      
	  ,count(*) as QREGRA
	  ,sum (
				CASE 
					WHEN [Regra] = '0' THEN 0
					WHEN [Regra] = '1%' THEN 1
					WHEN [Regra] = '2%' THEN 1
					WHEN [Regra] = '3%' THEN 1
					WHEN [Regra] = '4%' THEN 1					
					WHEN [Regra] = '5%' THEN 1
					WHEN [Regra] = '6%' THEN 1
					WHEN [Regra] = '7%' THEN 1
					WHEN [Regra] = '8%' THEN 1
					WHEN [Regra] = '9%' THEN 1
					ELSE 0  
				END) as SREGRA
		into [FuzzySet].[dbo].[Filtro21_2E]
  FROM [21].[dbo].[Full]
where cast(hora as time) >= '08:00:00' and cast (hora as time) <= '09:59:59'
group by 
      [Metodo]
      ,[URI]
      ,[Status]
      ,[URL]
      ,[UserAgent]
      ,[Cookie]
      ,[UserAgentBrowser]
      ,[Acao]


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
      
      
	  ,count(*) as QREGRA
	  ,sum (
				CASE 
					WHEN [Regra] = '0' THEN 0
					WHEN [Regra] = '1%' THEN 1
					WHEN [Regra] = '2%' THEN 1
					WHEN [Regra] = '3%' THEN 1
					WHEN [Regra] = '4%' THEN 1					
					WHEN [Regra] = '5%' THEN 1
					WHEN [Regra] = '6%' THEN 1
					WHEN [Regra] = '7%' THEN 1
					WHEN [Regra] = '8%' THEN 1
					WHEN [Regra] = '9%' THEN 1
					ELSE 0 
				END) as SREGRA
		into [FuzzySet].[dbo].[Filtro21_2F]
  FROM [21].[dbo].[Full]
where cast(hora as time) >= '10:00:00' and cast (hora as time) <= '11:59:59'
group by 
      [Metodo]
      ,[URI]
      ,[Status]
      ,[URL]
      ,[UserAgent]
      ,[Cookie]
      ,[UserAgentBrowser]
      ,[Acao]


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
      
      
	  ,count(*) as QREGRA
	  ,sum (
				CASE 
					WHEN [Regra] = '0' THEN 0
					WHEN [Regra] = '1%' THEN 1
					WHEN [Regra] = '2%' THEN 1
					WHEN [Regra] = '3%' THEN 1
					WHEN [Regra] = '4%' THEN 1					
					WHEN [Regra] = '5%' THEN 1
					WHEN [Regra] = '6%' THEN 1
					WHEN [Regra] = '7%' THEN 1
					WHEN [Regra] = '8%' THEN 1
					WHEN [Regra] = '9%' THEN 1
					ELSE 0 
				END) as SREGRA
		into [FuzzySet].[dbo].[Filtro21_2G]
  FROM [21].[dbo].[Full]
where cast(hora as time) >= '12:00:00' and cast (hora as time) <= '13:59:59'
group by 
      [Metodo]
      ,[URI]
      ,[Status]
      ,[URL]
      ,[UserAgent]
      ,[Cookie]
      ,[UserAgentBrowser]
      ,[Acao]


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
      
      
	  ,count(*) as QREGRA
	  ,sum (
				CASE 
					WHEN [Regra] = '0' THEN 0
					WHEN [Regra] = '1%' THEN 1
					WHEN [Regra] = '2%' THEN 1
					WHEN [Regra] = '3%' THEN 1
					WHEN [Regra] = '4%' THEN 1					
					WHEN [Regra] = '5%' THEN 1
					WHEN [Regra] = '6%' THEN 1
					WHEN [Regra] = '7%' THEN 1
					WHEN [Regra] = '8%' THEN 1
					WHEN [Regra] = '9%' THEN 1
					ELSE 0  
				END) as SREGRA
		into [FuzzySet].[dbo].[Filtro21_2H]
  FROM [21].[dbo].[Full]
where cast(hora as time) >= '14:00:00' and cast (hora as time) <= '15:59:59'
group by 
      [Metodo]
      ,[URI]
      ,[Status]
      ,[URL]
      ,[UserAgent]
      ,[Cookie]
      ,[UserAgentBrowser]
      ,[Acao]


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
      
      
	  ,count(*) as QREGRA
	  ,sum (
				CASE 
					WHEN [Regra] = '0' THEN 0
					WHEN [Regra] = '1%' THEN 1
					WHEN [Regra] = '2%' THEN 1
					WHEN [Regra] = '3%' THEN 1
					WHEN [Regra] = '4%' THEN 1					
					WHEN [Regra] = '5%' THEN 1
					WHEN [Regra] = '6%' THEN 1
					WHEN [Regra] = '7%' THEN 1
					WHEN [Regra] = '8%' THEN 1
					WHEN [Regra] = '9%' THEN 1
					ELSE 0 
				END) as SREGRA
		into [FuzzySet].[dbo].[Filtro21_2I]
  FROM [21].[dbo].[Full]
where cast(hora as time) >= '16:00:00' and cast (hora as time) <= '17:59:59'
group by 
      [Metodo]
      ,[URI]
      ,[Status]
      ,[URL]
      ,[UserAgent]
      ,[Cookie]
      ,[UserAgentBrowser]
      ,[Acao]


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
      
      
	  ,count(*) as QREGRA
	  ,sum (
				CASE 
					WHEN [Regra] = '0' THEN 0
					WHEN [Regra] = '1%' THEN 1
					WHEN [Regra] = '2%' THEN 1
					WHEN [Regra] = '3%' THEN 1
					WHEN [Regra] = '4%' THEN 1					
					WHEN [Regra] = '5%' THEN 1
					WHEN [Regra] = '6%' THEN 1
					WHEN [Regra] = '7%' THEN 1
					WHEN [Regra] = '8%' THEN 1
					WHEN [Regra] = '9%' THEN 1
					ELSE 0 
				END) as SREGRA
		into [FuzzySet].[dbo].[Filtro21_2J]
  FROM [21].[dbo].[Full]
where cast(hora as time) >= '18:00:00' and cast (hora as time) <= '19:59:59'
group by 
      [Metodo]
      ,[URI]
      ,[Status]
      ,[URL]
      ,[UserAgent]
      ,[Cookie]
      ,[UserAgentBrowser]
      ,[Acao]


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
      
      
	  ,count(*) as QREGRA
	  ,sum (
				CASE 
					WHEN [Regra] = '0' THEN 0
					WHEN [Regra] = '1%' THEN 1
					WHEN [Regra] = '2%' THEN 1
					WHEN [Regra] = '3%' THEN 1
					WHEN [Regra] = '4%' THEN 1					
					WHEN [Regra] = '5%' THEN 1
					WHEN [Regra] = '6%' THEN 1
					WHEN [Regra] = '7%' THEN 1
					WHEN [Regra] = '8%' THEN 1
					WHEN [Regra] = '9%' THEN 1
					ELSE 0 
				END) as SREGRA
		into [FuzzySet].[dbo].[Filtro21_2K]
  FROM [21].[dbo].[Full]
where cast(hora as time) >= '20:00:00' and cast (hora as time) <= '21:59:59'
group by 
      [Metodo]
      ,[URI]
      ,[Status]
      ,[URL]
      ,[UserAgent]
      ,[Cookie]
      ,[UserAgentBrowser]
      ,[Acao]


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
      
      
	  ,count(*) as QREGRA
	  ,sum (
				CASE 
					WHEN [Regra] = '0' THEN 0
					WHEN [Regra] = '1%' THEN 1
					WHEN [Regra] = '2%' THEN 1
					WHEN [Regra] = '3%' THEN 1
					WHEN [Regra] = '4%' THEN 1					
					WHEN [Regra] = '5%' THEN 1
					WHEN [Regra] = '6%' THEN 1
					WHEN [Regra] = '7%' THEN 1
					WHEN [Regra] = '8%' THEN 1
					WHEN [Regra] = '9%' THEN 1
					ELSE 0 
				END) as SREGRA
		into [FuzzySet].[dbo].[Filtro21_2L]
  FROM [21].[dbo].[Full]
where cast(hora as time) >= '22:00:00' and cast (hora as time) <= '23:59:59'
group by 
      [Metodo]
      ,[URI]
      ,[Status]
      ,[URL]
      ,[UserAgent]
      ,[Cookie]
      ,[UserAgentBrowser]
      ,[Acao]


GO
-- ==================== 
-- === Cria Tabelas M
-- ==================== 
ALTER TABLE [FuzzySet].[dbo].[Filtro21_2A] 
ADD MREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro21_2B] 
ADD MREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro21_2C] 
ADD MREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro21_2D] 
ADD MREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro21_2E] 
ADD MREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro21_2F] 
ADD MREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro21_2G] 
ADD MREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro21_2H] 
ADD MREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro21_2I] 
ADD MREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro21_2J] 
ADD MREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro21_2K] 
ADD MREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro21_2L] 
ADD MREGRA float NULL;
go


ALTER TABLE [FuzzySet].[dbo].[Filtro21_1A] 
ADD MSTATUS float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro21_1B] 
ADD MSTATUS float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro21_1C] 
ADD MSTATUS float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro21_1D] 
ADD MSTATUS float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro21_1E] 
ADD MSTATUS float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro21_1F] 
ADD MSTATUS float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro21_1G] 
ADD MSTATUS float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro21_1H] 
ADD MSTATUS float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro21_1I] 
ADD MSTATUS float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro21_1J] 
ADD MSTATUS float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro21_1K] 
ADD MSTATUS float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro21_1L] 
ADD MSTATUS float NULL;
go
-- ==================== 
-- === Cria Tabelas L
-- ==================== 
ALTER TABLE [FuzzySet].[dbo].[Filtro21_2A] 
ADD LREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro21_2B] 
ADD LREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro21_2C] 
ADD LREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro21_2D] 
ADD LREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro21_2E] 
ADD LREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro21_2F] 
ADD LREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro21_2G] 
ADD LREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro21_2H] 
ADD LREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro21_2I] 
ADD LREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro21_2J] 
ADD LREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro21_2K] 
ADD LREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro21_2L] 
ADD LREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro21_1A] 
ADD LSTATUS float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro21_1B] 
ADD LSTATUS float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro21_1C] 
ADD LSTATUS float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro21_1D] 
ADD LSTATUS float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro21_1E] 
ADD LSTATUS float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro21_1F] 
ADD LSTATUS float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro21_1G] 
ADD LSTATUS float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro21_1H] 
ADD LSTATUS float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro21_1I] 
ADD LSTATUS float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro21_1J] 
ADD LSTATUS float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro21_1K] 
ADD LSTATUS float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro21_1L] 
ADD LSTATUS float NULL;
go

-- ==================== 
-- === Calcula Campos M
-- ==================== 
UPDATE [FuzzySet].[dbo].[Filtro21_2A] SET MREGRA =(CAST(SREGRA AS FLOAT)/QREGRA) * 100; 
UPDATE [FuzzySet].[dbo].[Filtro21_2B] SET MREGRA =(CAST(SREGRA AS FLOAT)/QREGRA) * 100; 
UPDATE [FuzzySet].[dbo].[Filtro21_2C] SET MREGRA =(CAST(SREGRA AS FLOAT)/QREGRA) * 100; 
UPDATE [FuzzySet].[dbo].[Filtro21_2D] SET MREGRA =(CAST(SREGRA AS FLOAT)/QREGRA) * 100; 
UPDATE [FuzzySet].[dbo].[Filtro21_2E] SET MREGRA =(CAST(SREGRA AS FLOAT)/QREGRA) * 100; 
UPDATE [FuzzySet].[dbo].[Filtro21_2F] SET MREGRA =(CAST(SREGRA AS FLOAT)/QREGRA) * 100; 
UPDATE [FuzzySet].[dbo].[Filtro21_2G] SET MREGRA =(CAST(SREGRA AS FLOAT)/QREGRA) * 100; 
UPDATE [FuzzySet].[dbo].[Filtro21_2H] SET MREGRA =(CAST(SREGRA AS FLOAT)/QREGRA) * 100; 
UPDATE [FuzzySet].[dbo].[Filtro21_2I] SET MREGRA =(CAST(SREGRA AS FLOAT)/QREGRA) * 100; 
UPDATE [FuzzySet].[dbo].[Filtro21_2J] SET MREGRA =(CAST(SREGRA AS FLOAT)/QREGRA) * 100; 
UPDATE [FuzzySet].[dbo].[Filtro21_2K] SET MREGRA =(CAST(SREGRA AS FLOAT)/QREGRA) * 100; 
UPDATE [FuzzySet].[dbo].[Filtro21_2L] SET MREGRA =(CAST(SREGRA AS FLOAT)/QREGRA) * 100; 
GO
UPDATE [FuzzySet].[dbo].[Filtro21_1A] SET MSTATUS =(CAST(SSTATUS AS FLOAT)/QSTATUS) * 100;
UPDATE [FuzzySet].[dbo].[Filtro21_1B] SET MSTATUS =(CAST(SSTATUS AS FLOAT)/QSTATUS) * 100;
UPDATE [FuzzySet].[dbo].[Filtro21_1C] SET MSTATUS =(CAST(SSTATUS AS FLOAT)/QSTATUS) * 100;
UPDATE [FuzzySet].[dbo].[Filtro21_1D] SET MSTATUS =(CAST(SSTATUS AS FLOAT)/QSTATUS) * 100;
UPDATE [FuzzySet].[dbo].[Filtro21_1E] SET MSTATUS =(CAST(SSTATUS AS FLOAT)/QSTATUS) * 100;
UPDATE [FuzzySet].[dbo].[Filtro21_1F] SET MSTATUS =(CAST(SSTATUS AS FLOAT)/QSTATUS) * 100;
UPDATE [FuzzySet].[dbo].[Filtro21_1G] SET MSTATUS =(CAST(SSTATUS AS FLOAT)/QSTATUS) * 100;
UPDATE [FuzzySet].[dbo].[Filtro21_1H] SET MSTATUS =(CAST(SSTATUS AS FLOAT)/QSTATUS) * 100;
UPDATE [FuzzySet].[dbo].[Filtro21_1I] SET MSTATUS =(CAST(SSTATUS AS FLOAT)/QSTATUS) * 100;
UPDATE [FuzzySet].[dbo].[Filtro21_1J] SET MSTATUS =(CAST(SSTATUS AS FLOAT)/QSTATUS) * 100;
UPDATE [FuzzySet].[dbo].[Filtro21_1K] SET MSTATUS =(CAST(SSTATUS AS FLOAT)/QSTATUS) * 100;
UPDATE [FuzzySet].[dbo].[Filtro21_1L] SET MSTATUS =(CAST(SSTATUS AS FLOAT)/QSTATUS) * 100;
GO
-- ==================== 
-- === Calcula Campos L
-- ==================== 
UPDATE [FuzzySet].[dbo].[Filtro21_1A] SET LSTATUS ='0' WHERE SSTATUS LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_1A] SET LSTATUS ='1' WHERE SSTATUS NOT LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_1B] SET LSTATUS ='0' WHERE SSTATUS LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_1B] SET LSTATUS ='1' WHERE SSTATUS NOT LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_1C] SET LSTATUS ='0' WHERE SSTATUS LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_1C] SET LSTATUS ='1' WHERE SSTATUS NOT LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_1D] SET LSTATUS ='0' WHERE SSTATUS LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_1D] SET LSTATUS ='1' WHERE SSTATUS NOT LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_1E] SET LSTATUS ='0' WHERE SSTATUS LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_1E] SET LSTATUS ='1' WHERE SSTATUS NOT LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_1F] SET LSTATUS ='0' WHERE SSTATUS LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_1F] SET LSTATUS ='1' WHERE SSTATUS NOT LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_1G] SET LSTATUS ='0' WHERE SSTATUS LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_1G] SET LSTATUS ='1' WHERE SSTATUS NOT LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_1H] SET LSTATUS ='0' WHERE SSTATUS LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_1H] SET LSTATUS ='1' WHERE SSTATUS NOT LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_1I] SET LSTATUS ='0' WHERE SSTATUS LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_1I] SET LSTATUS ='1' WHERE SSTATUS NOT LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_1J] SET LSTATUS ='0' WHERE SSTATUS LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_1J] SET LSTATUS ='1' WHERE SSTATUS NOT LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_1K] SET LSTATUS ='0' WHERE SSTATUS LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_1K] SET LSTATUS ='1' WHERE SSTATUS NOT LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_1L] SET LSTATUS ='0' WHERE SSTATUS LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_1L] SET LSTATUS ='1' WHERE SSTATUS NOT LIKE '0'
GO
UPDATE [FuzzySet].[dbo].[Filtro21_2A] SET LREGRA ='0' WHERE SREGRA LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_2A] SET LREGRA ='1' WHERE SREGRA NOT LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_2B] SET LREGRA ='0' WHERE SREGRA LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_2B] SET LREGRA ='1' WHERE SREGRA NOT LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_2C] SET LREGRA ='0' WHERE SREGRA LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_2C] SET LREGRA ='1' WHERE SREGRA NOT LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_2D] SET LREGRA ='0' WHERE SREGRA LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_2D] SET LREGRA ='1' WHERE SREGRA NOT LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_2E] SET LREGRA ='0' WHERE SREGRA LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_2E] SET LREGRA ='1' WHERE SREGRA NOT LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_2F] SET LREGRA ='0' WHERE SREGRA LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_2F] SET LREGRA ='1' WHERE SREGRA NOT LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_2G] SET LREGRA ='0' WHERE SREGRA LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_2G] SET LREGRA ='1' WHERE SREGRA NOT LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_2H] SET LREGRA ='0' WHERE SREGRA LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_2H] SET LREGRA ='1' WHERE SREGRA NOT LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_2I] SET LREGRA ='0' WHERE SREGRA LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_2I] SET LREGRA ='1' WHERE SREGRA NOT LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_2J] SET LREGRA ='0' WHERE SREGRA LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_2J] SET LREGRA ='1' WHERE SREGRA NOT LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_2K] SET LREGRA ='0' WHERE SREGRA LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_2K] SET LREGRA ='1' WHERE SREGRA NOT LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_2L] SET LREGRA ='0' WHERE SREGRA LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro21_2L] SET LREGRA ='1' WHERE SREGRA NOT LIKE '0'
GO
-- ==================== 
-- === Junta os Filtros 1x e 2x em x
-- ==================== 
SELECT F1.METODO		as F1_METODO		
,F1.URI			as F1_URI
,F1.STATUS		as F1_STATUS
,F1.URL			as F1_URL
,F1.USERAGENT	as F1_USERAGENT
,F1.COOKIE		as F1_COOKIE
,F1.BROWSER		as F1_BROWSER
,F1.QSTATUS		as F1_QSTATUS
,F1.SSTATUS		as F1_SSTATUS
,F1.MSTATUS		as F1_MSTATUS
,F1.LSTATUS		as F1_LSTATUS
,F2.METODO		as F2_METODO
,F2.URI			as F2_URI
,F2.STATUS		as F2_STATUS
,F2.URL			as F2_URL
,F2.USERAGENT	as F2_USERAGENT
,F2.COOKIE		as F2_COOKIE
,F2.BROWSER		as F2_BROWSER
,F2.ACAO		as F2_ACAO
,F2.QREGRA		as F2_QREGRA
,F2.SREGRA		as F2_SREGRA
,F2.MREGRA		as F2_MREGRA
,F2.LREGRA		as F2_LREGRA
INTO [FuzzySet].[dbo].[Filtro21TEMPA]	
FROM [FuzzySet].[dbo].[Filtro21_1A] F1
  LEFT JOIN  [FuzzySet].[dbo].[Filtro21_2A] F2 ON
[F1].[METODO] = [F2].[METODO] AND
[F1].[URI] = [F2].[URI] AND
[F1].[STATUS] = [F2].[STATUS] AND
[F1].[URL] = [F2].[URL] AND
[F1].[USERAGENT] = [F2].[USERAGENT] AND
[F1].[COOKIE] = [F2].[COOKIE] AND
[F1].[BROWSER] = [F2].[BROWSER]
	order by [F1].[METODO]
go

Select F1_METODO		AS METODO
,F1_URI	     	AS URI	      
,F1_STATUS	 	AS STATUS	  
,F1_URL	     	AS URL	      
,F1_USERAGENT	AS USERAGENT
,F1_COOKIE	 	AS COOKIE	  
,F1_BROWSER	 	AS BROWSER	  
,F1_QSTATUS	 	AS QSTATUS	  
,F1_SSTATUS	 	AS SSTATUS	  
,F1_MSTATUS	 	AS MSTATUS	  
,F1_LSTATUS	 	AS LSTATUS	  
,F2_ACAO	    AS ACAO	      
,F2_QREGRA	 	AS QREGRA	  
,F2_SREGRA	 	AS SREGRA	  
,F2_MREGRA	 	AS MREGRA	  
,F2_LREGRA    	AS LREGRA
into [FuzzySet].[dbo].[Filtro21A]
FROM [FuzzySet].[dbo].[Filtro21TEMPA]
go

--------------------------------------------------------------------
SELECT F1.METODO		as F1_METODO		
,F1.URI			as F1_URI
,F1.STATUS		as F1_STATUS
,F1.URL			as F1_URL
,F1.USERAGENT	as F1_USERAGENT
,F1.COOKIE		as F1_COOKIE
,F1.BROWSER		as F1_BROWSER
,F1.QSTATUS		as F1_QSTATUS
,F1.SSTATUS		as F1_SSTATUS
,F1.MSTATUS		as F1_MSTATUS
,F1.LSTATUS		as F1_LSTATUS
,F2.METODO		as F2_METODO
,F2.URI			as F2_URI
,F2.STATUS		as F2_STATUS
,F2.URL			as F2_URL
,F2.USERAGENT	as F2_USERAGENT
,F2.COOKIE		as F2_COOKIE
,F2.BROWSER		as F2_BROWSER
,F2.ACAO		as F2_ACAO


,F2.QREGRA		as F2_QREGRA
,F2.SREGRA		as F2_SREGRA
,F2.MREGRA		as F2_MREGRA
,F2.LREGRA		as F2_LREGRA
INTO [FuzzySet].[dbo].[Filtro21TEMPB]		
FROM [FuzzySet].[dbo].[Filtro21_1B] F1
  LEFT JOIN  [FuzzySet].[dbo].[Filtro21_2B] F2 ON
[F1].[METODO] = [F2].[METODO] AND
[F1].[URI] = [F2].[URI] AND
[F1].[STATUS] = [F2].[STATUS] AND
[F1].[URL] = [F2].[URL] AND
[F1].[USERAGENT] = [F2].[USERAGENT] AND
[F1].[COOKIE] = [F2].[COOKIE] AND
[F1].[BROWSER] = [F2].[BROWSER]
	order by [F1].[METODO]
go
Select F1_METODO		AS METODO
,F1_URI	     	AS URI	      
,F1_STATUS	 	AS STATUS	  
,F1_URL	     	AS URL	      
,F1_USERAGENT	AS USERAGENT
,F1_COOKIE	 	AS COOKIE	  
,F1_BROWSER	 	AS BROWSER	  
,F1_QSTATUS	 	AS QSTATUS	  
,F1_SSTATUS	 	AS SSTATUS	  
,F1_MSTATUS	 	AS MSTATUS	  
,F1_LSTATUS	 	AS LSTATUS	  
,F2_ACAO	    AS ACAO	      
 

,F2_QREGRA	 	AS QREGRA	  
,F2_SREGRA	 	AS SREGRA	  
,F2_MREGRA	 	AS MREGRA	  
,F2_LREGRA    	AS LREGRA
into [FuzzySet].[dbo].[Filtro21B]
FROM [FuzzySet].[dbo].[Filtro21TEMPB]
go

--------------------------------------------------------------------
SELECT F1.METODO		as F1_METODO		
,F1.URI			as F1_URI
,F1.STATUS		as F1_STATUS
,F1.URL			as F1_URL
,F1.USERAGENT	as F1_USERAGENT
,F1.COOKIE		as F1_COOKIE
,F1.BROWSER		as F1_BROWSER
,F1.QSTATUS		as F1_QSTATUS
,F1.SSTATUS		as F1_SSTATUS
,F1.MSTATUS		as F1_MSTATUS
,F1.LSTATUS		as F1_LSTATUS
,F2.METODO		as F2_METODO
,F2.URI			as F2_URI
,F2.STATUS		as F2_STATUS
,F2.URL			as F2_URL
,F2.USERAGENT	as F2_USERAGENT
,F2.COOKIE		as F2_COOKIE
,F2.BROWSER		as F2_BROWSER
,F2.ACAO		as F2_ACAO


,F2.QREGRA		as F2_QREGRA
,F2.SREGRA		as F2_SREGRA
,F2.MREGRA		as F2_MREGRA
,F2.LREGRA		as F2_LREGRA
INTO [FuzzySet].[dbo].[Filtro21TEMPC]		
FROM [FuzzySet].[dbo].[Filtro21_1C] F1
  LEFT JOIN  [FuzzySet].[dbo].[Filtro21_2C] F2 ON
[F1].[METODO] = [F2].[METODO] AND
[F1].[URI] = [F2].[URI] AND
[F1].[STATUS] = [F2].[STATUS] AND
[F1].[URL] = [F2].[URL] AND
[F1].[USERAGENT] = [F2].[USERAGENT] AND
[F1].[COOKIE] = [F2].[COOKIE] AND
[F1].[BROWSER] = [F2].[BROWSER]
	order by [F1].[METODO]
go
Select F1_METODO		AS METODO
,F1_URI	     	AS URI	      
,F1_STATUS	 	AS STATUS	  
,F1_URL	     	AS URL	      
,F1_USERAGENT	AS USERAGENT
,F1_COOKIE	 	AS COOKIE	  
,F1_BROWSER	 	AS BROWSER	  
,F1_QSTATUS	 	AS QSTATUS	  
,F1_SSTATUS	 	AS SSTATUS	  
,F1_MSTATUS	 	AS MSTATUS	  
,F1_LSTATUS	 	AS LSTATUS	  
,F2_ACAO	    AS ACAO	      
 

,F2_QREGRA	 	AS QREGRA	  
,F2_SREGRA	 	AS SREGRA	  
,F2_MREGRA	 	AS MREGRA	  
,F2_LREGRA    	AS LREGRA
into [FuzzySet].[dbo].[Filtro21C]
FROM [FuzzySet].[dbo].[Filtro21TEMPC]
go
--------------------------------------------------------------------
SELECT F1.METODO		as F1_METODO		
,F1.URI			as F1_URI
,F1.STATUS		as F1_STATUS
,F1.URL			as F1_URL
,F1.USERAGENT	as F1_USERAGENT
,F1.COOKIE		as F1_COOKIE
,F1.BROWSER		as F1_BROWSER
,F1.QSTATUS		as F1_QSTATUS
,F1.SSTATUS		as F1_SSTATUS
,F1.MSTATUS		as F1_MSTATUS
,F1.LSTATUS		as F1_LSTATUS
,F2.METODO		as F2_METODO
,F2.URI			as F2_URI
,F2.STATUS		as F2_STATUS
,F2.URL			as F2_URL
,F2.USERAGENT	as F2_USERAGENT
,F2.COOKIE		as F2_COOKIE
,F2.BROWSER		as F2_BROWSER
,F2.ACAO		as F2_ACAO


,F2.QREGRA		as F2_QREGRA
,F2.SREGRA		as F2_SREGRA
,F2.MREGRA		as F2_MREGRA
,F2.LREGRA		as F2_LREGRA
INTO [FuzzySet].[dbo].[Filtro21TEMPD]	
FROM [FuzzySet].[dbo].[Filtro21_1D] F1
  LEFT JOIN  [FuzzySet].[dbo].[Filtro21_2D] F2 ON
[F1].[METODO] = [F2].[METODO] AND
[F1].[URI] = [F2].[URI] AND
[F1].[STATUS] = [F2].[STATUS] AND
[F1].[URL] = [F2].[URL] AND
[F1].[USERAGENT] = [F2].[USERAGENT] AND
[F1].[COOKIE] = [F2].[COOKIE] AND
[F1].[BROWSER] = [F2].[BROWSER]
	order by [F1].[METODO]
go
Select F1_METODO		AS METODO
,F1_URI	     	AS URI	      
,F1_STATUS	 	AS STATUS	  
,F1_URL	     	AS URL	      
,F1_USERAGENT	AS USERAGENT
,F1_COOKIE	 	AS COOKIE	  
,F1_BROWSER	 	AS BROWSER	  
,F1_QSTATUS	 	AS QSTATUS	  
,F1_SSTATUS	 	AS SSTATUS	  
,F1_MSTATUS	 	AS MSTATUS	  
,F1_LSTATUS	 	AS LSTATUS	  
,F2_ACAO	    AS ACAO	      
 

,F2_QREGRA	 	AS QREGRA	  
,F2_SREGRA	 	AS SREGRA	  
,F2_MREGRA	 	AS MREGRA	  
,F2_LREGRA    	AS LREGRA
into [FuzzySet].[dbo].[Filtro21D]
FROM [FuzzySet].[dbo].[Filtro21TEMPD]
go
--------------------------------------------------------------------
SELECT F1.METODO		as F1_METODO		
,F1.URI			as F1_URI
,F1.STATUS		as F1_STATUS
,F1.URL			as F1_URL
,F1.USERAGENT	as F1_USERAGENT
,F1.COOKIE		as F1_COOKIE
,F1.BROWSER		as F1_BROWSER
,F1.QSTATUS		as F1_QSTATUS
,F1.SSTATUS		as F1_SSTATUS
,F1.MSTATUS		as F1_MSTATUS
,F1.LSTATUS		as F1_LSTATUS
,F2.METODO		as F2_METODO
,F2.URI			as F2_URI
,F2.STATUS		as F2_STATUS
,F2.URL			as F2_URL
,F2.USERAGENT	as F2_USERAGENT
,F2.COOKIE		as F2_COOKIE
,F2.BROWSER		as F2_BROWSER
,F2.ACAO		as F2_ACAO


,F2.QREGRA		as F2_QREGRA
,F2.SREGRA		as F2_SREGRA
,F2.MREGRA		as F2_MREGRA
,F2.LREGRA		as F2_LREGRA
INTO [FuzzySet].[dbo].[Filtro21TEMPE]
FROM [FuzzySet].[dbo].[Filtro21_1E] F1
  LEFT JOIN  [FuzzySet].[dbo].[Filtro21_2E] F2 ON
[F1].[METODO] = [F2].[METODO] AND
[F1].[URI] = [F2].[URI] AND
[F1].[STATUS] = [F2].[STATUS] AND
[F1].[URL] = [F2].[URL] AND
[F1].[USERAGENT] = [F2].[USERAGENT] AND
[F1].[COOKIE] = [F2].[COOKIE] AND
[F1].[BROWSER] = [F2].[BROWSER]
	order by [F1].[METODO]
go
Select F1_METODO		AS METODO
,F1_URI	     	AS URI	      
,F1_STATUS	 	AS STATUS	  
,F1_URL	     	AS URL	      
,F1_USERAGENT	AS USERAGENT
,F1_COOKIE	 	AS COOKIE	  
,F1_BROWSER	 	AS BROWSER	  
,F1_QSTATUS	 	AS QSTATUS	  
,F1_SSTATUS	 	AS SSTATUS	  
,F1_MSTATUS	 	AS MSTATUS	  
,F1_LSTATUS	 	AS LSTATUS	  
,F2_ACAO	    AS ACAO	      
 

,F2_QREGRA	 	AS QREGRA	  
,F2_SREGRA	 	AS SREGRA	  
,F2_MREGRA	 	AS MREGRA	  
,F2_LREGRA    	AS LREGRA
into [FuzzySet].[dbo].[Filtro21E]
FROM [FuzzySet].[dbo].[Filtro21TEMPE]
go
--------------------------------------------------------------------
SELECT F1.METODO		as F1_METODO		
,F1.URI			as F1_URI
,F1.STATUS		as F1_STATUS
,F1.URL			as F1_URL
,F1.USERAGENT	as F1_USERAGENT
,F1.COOKIE		as F1_COOKIE
,F1.BROWSER		as F1_BROWSER
,F1.QSTATUS		as F1_QSTATUS
,F1.SSTATUS		as F1_SSTATUS
,F1.MSTATUS		as F1_MSTATUS
,F1.LSTATUS		as F1_LSTATUS
,F2.METODO		as F2_METODO
,F2.URI			as F2_URI
,F2.STATUS		as F2_STATUS
,F2.URL			as F2_URL
,F2.USERAGENT	as F2_USERAGENT
,F2.COOKIE		as F2_COOKIE
,F2.BROWSER		as F2_BROWSER
,F2.ACAO		as F2_ACAO


,F2.QREGRA		as F2_QREGRA
,F2.SREGRA		as F2_SREGRA
,F2.MREGRA		as F2_MREGRA
,F2.LREGRA		as F2_LREGRA
INTO [FuzzySet].[dbo].[Filtro21TEMPF]
FROM [FuzzySet].[dbo].[Filtro21_1F] F1
  LEFT JOIN  [FuzzySet].[dbo].[Filtro21_2F] F2 ON
[F1].[METODO] = [F2].[METODO] AND
[F1].[URI] = [F2].[URI] AND
[F1].[STATUS] = [F2].[STATUS] AND
[F1].[URL] = [F2].[URL] AND
[F1].[USERAGENT] = [F2].[USERAGENT] AND
[F1].[COOKIE] = [F2].[COOKIE] AND
[F1].[BROWSER] = [F2].[BROWSER]
	order by [F1].[METODO]
go
Select F1_METODO		AS METODO
,F1_URI	     	AS URI	      
,F1_STATUS	 	AS STATUS	  
,F1_URL	     	AS URL	      
,F1_USERAGENT	AS USERAGENT
,F1_COOKIE	 	AS COOKIE	  
,F1_BROWSER	 	AS BROWSER	  
,F1_QSTATUS	 	AS QSTATUS	  
,F1_SSTATUS	 	AS SSTATUS	  
,F1_MSTATUS	 	AS MSTATUS	  
,F1_LSTATUS	 	AS LSTATUS	  
,F2_ACAO	    AS ACAO	      
 

,F2_QREGRA	 	AS QREGRA	  
,F2_SREGRA	 	AS SREGRA	  
,F2_MREGRA	 	AS MREGRA	  
,F2_LREGRA    	AS LREGRA
into [FuzzySet].[dbo].[Filtro21F]
FROM [FuzzySet].[dbo].[Filtro21TEMPF]
go
--------------------------------------------------------------------
SELECT F1.METODO		as F1_METODO		
,F1.URI			as F1_URI
,F1.STATUS		as F1_STATUS
,F1.URL			as F1_URL
,F1.USERAGENT	as F1_USERAGENT
,F1.COOKIE		as F1_COOKIE
,F1.BROWSER		as F1_BROWSER
,F1.QSTATUS		as F1_QSTATUS
,F1.SSTATUS		as F1_SSTATUS
,F1.MSTATUS		as F1_MSTATUS
,F1.LSTATUS		as F1_LSTATUS
,F2.METODO		as F2_METODO
,F2.URI			as F2_URI
,F2.STATUS		as F2_STATUS
,F2.URL			as F2_URL
,F2.USERAGENT	as F2_USERAGENT
,F2.COOKIE		as F2_COOKIE
,F2.BROWSER		as F2_BROWSER
,F2.ACAO		as F2_ACAO


,F2.QREGRA		as F2_QREGRA
,F2.SREGRA		as F2_SREGRA
,F2.MREGRA		as F2_MREGRA
,F2.LREGRA		as F2_LREGRA
INTO [FuzzySet].[dbo].[Filtro21TEMPG]
FROM [FuzzySet].[dbo].[Filtro21_1G] F1
  LEFT JOIN  [FuzzySet].[dbo].[Filtro21_2G] F2 ON
[F1].[METODO] = [F2].[METODO] AND
[F1].[URI] = [F2].[URI] AND
[F1].[STATUS] = [F2].[STATUS] AND
[F1].[URL] = [F2].[URL] AND
[F1].[USERAGENT] = [F2].[USERAGENT] AND
[F1].[COOKIE] = [F2].[COOKIE] AND
[F1].[BROWSER] = [F2].[BROWSER]
	order by [F1].[METODO]
go
Select F1_METODO		AS METODO
,F1_URI	     	AS URI	      
,F1_STATUS	 	AS STATUS	  
,F1_URL	     	AS URL	      
,F1_USERAGENT	AS USERAGENT
,F1_COOKIE	 	AS COOKIE	  
,F1_BROWSER	 	AS BROWSER	  
,F1_QSTATUS	 	AS QSTATUS	  
,F1_SSTATUS	 	AS SSTATUS	  
,F1_MSTATUS	 	AS MSTATUS	  
,F1_LSTATUS	 	AS LSTATUS	  
,F2_ACAO	    AS ACAO	      
 

,F2_QREGRA	 	AS QREGRA	  
,F2_SREGRA	 	AS SREGRA	  
,F2_MREGRA	 	AS MREGRA	  
,F2_LREGRA    	AS LREGRA
into [FuzzySet].[dbo].[Filtro21G]
FROM [FuzzySet].[dbo].[Filtro21TEMPG]
go
--------------------------------------------------------------------
SELECT F1.METODO		as F1_METODO		
,F1.URI			as F1_URI
,F1.STATUS		as F1_STATUS
,F1.URL			as F1_URL
,F1.USERAGENT	as F1_USERAGENT
,F1.COOKIE		as F1_COOKIE
,F1.BROWSER		as F1_BROWSER
,F1.QSTATUS		as F1_QSTATUS
,F1.SSTATUS		as F1_SSTATUS
,F1.MSTATUS		as F1_MSTATUS
,F1.LSTATUS		as F1_LSTATUS
,F2.METODO		as F2_METODO
,F2.URI			as F2_URI
,F2.STATUS		as F2_STATUS
,F2.URL			as F2_URL
,F2.USERAGENT	as F2_USERAGENT
,F2.COOKIE		as F2_COOKIE
,F2.BROWSER		as F2_BROWSER
,F2.ACAO		as F2_ACAO


,F2.QREGRA		as F2_QREGRA
,F2.SREGRA		as F2_SREGRA
,F2.MREGRA		as F2_MREGRA
,F2.LREGRA		as F2_LREGRA
INTO [FuzzySet].[dbo].[Filtro21TEMPH]
FROM [FuzzySet].[dbo].[Filtro21_1H] F1
  LEFT JOIN  [FuzzySet].[dbo].[Filtro21_2H] F2 ON
[F1].[METODO] = [F2].[METODO] AND
[F1].[URI] = [F2].[URI] AND
[F1].[STATUS] = [F2].[STATUS] AND
[F1].[URL] = [F2].[URL] AND
[F1].[USERAGENT] = [F2].[USERAGENT] AND
[F1].[COOKIE] = [F2].[COOKIE] AND
[F1].[BROWSER] = [F2].[BROWSER]
	order by [F1].[METODO]
go
Select F1_METODO		AS METODO
,F1_URI	     	AS URI	      
,F1_STATUS	 	AS STATUS	  
,F1_URL	     	AS URL	      
,F1_USERAGENT	AS USERAGENT
,F1_COOKIE	 	AS COOKIE	  
,F1_BROWSER	 	AS BROWSER	  
,F1_QSTATUS	 	AS QSTATUS	  
,F1_SSTATUS	 	AS SSTATUS	  
,F1_MSTATUS	 	AS MSTATUS	  
,F1_LSTATUS	 	AS LSTATUS	  
,F2_ACAO	    AS ACAO	      
 

,F2_QREGRA	 	AS QREGRA	  
,F2_SREGRA	 	AS SREGRA	  
,F2_MREGRA	 	AS MREGRA	  
,F2_LREGRA    	AS LREGRA
into [FuzzySet].[dbo].[Filtro21H]
FROM [FuzzySet].[dbo].[Filtro21TEMPH]
go
--------------------------------------------------------------------
SELECT F1.METODO		as F1_METODO		
,F1.URI			as F1_URI
,F1.STATUS		as F1_STATUS
,F1.URL			as F1_URL
,F1.USERAGENT	as F1_USERAGENT
,F1.COOKIE		as F1_COOKIE
,F1.BROWSER		as F1_BROWSER
,F1.QSTATUS		as F1_QSTATUS
,F1.SSTATUS		as F1_SSTATUS
,F1.MSTATUS		as F1_MSTATUS
,F1.LSTATUS		as F1_LSTATUS
,F2.METODO		as F2_METODO
,F2.URI			as F2_URI
,F2.STATUS		as F2_STATUS
,F2.URL			as F2_URL
,F2.USERAGENT	as F2_USERAGENT
,F2.COOKIE		as F2_COOKIE
,F2.BROWSER		as F2_BROWSER
,F2.ACAO		as F2_ACAO


,F2.QREGRA		as F2_QREGRA
,F2.SREGRA		as F2_SREGRA
,F2.MREGRA		as F2_MREGRA
,F2.LREGRA		as F2_LREGRA
INTO [FuzzySet].[dbo].[Filtro21TEMPI]
FROM [FuzzySet].[dbo].[Filtro21_1I] F1
  LEFT JOIN  [FuzzySet].[dbo].[Filtro21_2I] F2 ON
[F1].[METODO] = [F2].[METODO] AND
[F1].[URI] = [F2].[URI] AND
[F1].[STATUS] = [F2].[STATUS] AND
[F1].[URL] = [F2].[URL] AND
[F1].[USERAGENT] = [F2].[USERAGENT] AND
[F1].[COOKIE] = [F2].[COOKIE] AND
[F1].[BROWSER] = [F2].[BROWSER]
	order by [F1].[METODO]
go
Select F1_METODO		AS METODO
,F1_URI	     	AS URI	      
,F1_STATUS	 	AS STATUS	  
,F1_URL	     	AS URL	      
,F1_USERAGENT	AS USERAGENT
,F1_COOKIE	 	AS COOKIE	  
,F1_BROWSER	 	AS BROWSER	  
,F1_QSTATUS	 	AS QSTATUS	  
,F1_SSTATUS	 	AS SSTATUS	  
,F1_MSTATUS	 	AS MSTATUS	  
,F1_LSTATUS	 	AS LSTATUS	  
,F2_ACAO	    AS ACAO	      
 

,F2_QREGRA	 	AS QREGRA	  
,F2_SREGRA	 	AS SREGRA	  
,F2_MREGRA	 	AS MREGRA	  
,F2_LREGRA    	AS LREGRA
into [FuzzySet].[dbo].[Filtro21I]
FROM [FuzzySet].[dbo].[Filtro21TEMPI]
go
--------------------------------------------------------------------
SELECT F1.METODO		as F1_METODO		
,F1.URI			as F1_URI
,F1.STATUS		as F1_STATUS
,F1.URL			as F1_URL
,F1.USERAGENT	as F1_USERAGENT
,F1.COOKIE		as F1_COOKIE
,F1.BROWSER		as F1_BROWSER
,F1.QSTATUS		as F1_QSTATUS
,F1.SSTATUS		as F1_SSTATUS
,F1.MSTATUS		as F1_MSTATUS
,F1.LSTATUS		as F1_LSTATUS
,F2.METODO		as F2_METODO
,F2.URI			as F2_URI
,F2.STATUS		as F2_STATUS
,F2.URL			as F2_URL
,F2.USERAGENT	as F2_USERAGENT
,F2.COOKIE		as F2_COOKIE
,F2.BROWSER		as F2_BROWSER
,F2.ACAO		as F2_ACAO


,F2.QREGRA		as F2_QREGRA
,F2.SREGRA		as F2_SREGRA
,F2.MREGRA		as F2_MREGRA
,F2.LREGRA		as F2_LREGRA
INTO [FuzzySet].[dbo].[Filtro21TEMPJ]
FROM [FuzzySet].[dbo].[Filtro21_1J] F1
  LEFT JOIN  [FuzzySet].[dbo].[Filtro21_2J] F2 ON
[F1].[METODO] = [F2].[METODO] AND
[F1].[URI] = [F2].[URI] AND
[F1].[STATUS] = [F2].[STATUS] AND
[F1].[URL] = [F2].[URL] AND
[F1].[USERAGENT] = [F2].[USERAGENT] AND
[F1].[COOKIE] = [F2].[COOKIE] AND
[F1].[BROWSER] = [F2].[BROWSER]
	order by [F1].[METODO]
go
Select F1_METODO		AS METODO
,F1_URI	     	AS URI	      
,F1_STATUS	 	AS STATUS	  
,F1_URL	     	AS URL	      
,F1_USERAGENT	AS USERAGENT
,F1_COOKIE	 	AS COOKIE	  
,F1_BROWSER	 	AS BROWSER	  
,F1_QSTATUS	 	AS QSTATUS	  
,F1_SSTATUS	 	AS SSTATUS	  
,F1_MSTATUS	 	AS MSTATUS	  
,F1_LSTATUS	 	AS LSTATUS	  
,F2_ACAO	    AS ACAO	      
 

,F2_QREGRA	 	AS QREGRA	  
,F2_SREGRA	 	AS SREGRA	  
,F2_MREGRA	 	AS MREGRA	  
,F2_LREGRA    	AS LREGRA
into [FuzzySet].[dbo].[Filtro21J]
FROM [FuzzySet].[dbo].[Filtro21TEMPJ]
go
--------------------------------------------------------------------
SELECT F1.METODO		as F1_METODO		
,F1.URI			as F1_URI
,F1.STATUS		as F1_STATUS
,F1.URL			as F1_URL
,F1.USERAGENT	as F1_USERAGENT
,F1.COOKIE		as F1_COOKIE
,F1.BROWSER		as F1_BROWSER
,F1.QSTATUS		as F1_QSTATUS
,F1.SSTATUS		as F1_SSTATUS
,F1.MSTATUS		as F1_MSTATUS
,F1.LSTATUS		as F1_LSTATUS
,F2.METODO		as F2_METODO
,F2.URI			as F2_URI
,F2.STATUS		as F2_STATUS
,F2.URL			as F2_URL
,F2.USERAGENT	as F2_USERAGENT
,F2.COOKIE		as F2_COOKIE
,F2.BROWSER		as F2_BROWSER
,F2.ACAO		as F2_ACAO


,F2.QREGRA		as F2_QREGRA
,F2.SREGRA		as F2_SREGRA
,F2.MREGRA		as F2_MREGRA
,F2.LREGRA		as F2_LREGRA
INTO [FuzzySet].[dbo].[Filtro21TEMPK]		
FROM [FuzzySet].[dbo].[Filtro21_1K] F1
  LEFT JOIN  [FuzzySet].[dbo].[Filtro21_2K] F2 ON
[F1].[METODO] = [F2].[METODO] AND
[F1].[URI] = [F2].[URI] AND
[F1].[STATUS] = [F2].[STATUS] AND
[F1].[URL] = [F2].[URL] AND
[F1].[USERAGENT] = [F2].[USERAGENT] AND
[F1].[COOKIE] = [F2].[COOKIE] AND
[F1].[BROWSER] = [F2].[BROWSER]
	order by [F1].[METODO]
go
Select F1_METODO		AS METODO
,F1_URI	     	AS URI	      
,F1_STATUS	 	AS STATUS	  
,F1_URL	     	AS URL	      
,F1_USERAGENT	AS USERAGENT
,F1_COOKIE	 	AS COOKIE	  
,F1_BROWSER	 	AS BROWSER	  
,F1_QSTATUS	 	AS QSTATUS	  
,F1_SSTATUS	 	AS SSTATUS	  
,F1_MSTATUS	 	AS MSTATUS	  
,F1_LSTATUS	 	AS LSTATUS	  
,F2_ACAO	    AS ACAO	      
 

,F2_QREGRA	 	AS QREGRA	  
,F2_SREGRA	 	AS SREGRA	  
,F2_MREGRA	 	AS MREGRA	  
,F2_LREGRA    	AS LREGRA
into [FuzzySet].[dbo].[Filtro21K]
FROM [FuzzySet].[dbo].[Filtro21TEMPK]
go
--------------------------------------------------------------------
SELECT F1.METODO		as F1_METODO		
,F1.URI			as F1_URI
,F1.STATUS		as F1_STATUS
,F1.URL			as F1_URL
,F1.USERAGENT	as F1_USERAGENT
,F1.COOKIE		as F1_COOKIE
,F1.BROWSER		as F1_BROWSER
,F1.QSTATUS		as F1_QSTATUS
,F1.SSTATUS		as F1_SSTATUS
,F1.MSTATUS		as F1_MSTATUS
,F1.LSTATUS		as F1_LSTATUS
,F2.METODO		as F2_METODO
,F2.URI			as F2_URI
,F2.STATUS		as F2_STATUS
,F2.URL			as F2_URL
,F2.USERAGENT	as F2_USERAGENT
,F2.COOKIE		as F2_COOKIE
,F2.BROWSER		as F2_BROWSER
,F2.ACAO		as F2_ACAO


,F2.QREGRA		as F2_QREGRA
,F2.SREGRA		as F2_SREGRA
,F2.MREGRA		as F2_MREGRA
,F2.LREGRA		as F2_LREGRA
INTO [FuzzySet].[dbo].[Filtro21TEMPL]
FROM [FuzzySet].[dbo].[Filtro21_1L] F1
  LEFT JOIN  [FuzzySet].[dbo].[Filtro21_2L] F2 ON
[F1].[METODO] = [F2].[METODO] AND
[F1].[URI] = [F2].[URI] AND
[F1].[STATUS] = [F2].[STATUS] AND
[F1].[URL] = [F2].[URL] AND
[F1].[USERAGENT] = [F2].[USERAGENT] AND
[F1].[COOKIE] = [F2].[COOKIE] AND
[F1].[BROWSER] = [F2].[BROWSER]
	order by [F1].[METODO]
go
Select F1_METODO		AS METODO
,F1_URI	     	AS URI	      
,F1_STATUS	 	AS STATUS	  
,F1_URL	     	AS URL	      
,F1_USERAGENT	AS USERAGENT
,F1_COOKIE	 	AS COOKIE	  
,F1_BROWSER	 	AS BROWSER	  
,F1_QSTATUS	 	AS QSTATUS	  
,F1_SSTATUS	 	AS SSTATUS	  
,F1_MSTATUS	 	AS MSTATUS	  
,F1_LSTATUS	 	AS LSTATUS	  
,F2_ACAO	    AS ACAO	      
 

,F2_QREGRA	 	AS QREGRA	  
,F2_SREGRA	 	AS SREGRA	  
,F2_MREGRA	 	AS MREGRA	  
,F2_LREGRA    	AS LREGRA
into [FuzzySet].[dbo].[Filtro21L]
FROM [FuzzySet].[dbo].[Filtro21TEMPL]
go

--===========================================
--===========================================
---------------------
-- Dia 05 de Dezembro
---------------------
--===========================================
--===========================================



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
					WHEN [WAFinfo] = '1' THEN 1
					WHEN [WAFinfo] = '2' THEN 1
					WHEN [WAFinfo] = '3' THEN 1
					WHEN [WAFinfo] = 'EXT' THEN 1
					ELSE 0  
				END) as SSTATUS
		INTO [FuzzySet].[dbo].[Filtro05_1A]
  FROM [05].[dbo].[Full]
	where cast(hora as time) >= '00:00:00' and cast(hora as time) <= '01:59:59'
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
					WHEN [WAFinfo] = '1' THEN 1
					WHEN [WAFinfo] = '2' THEN 1
					WHEN [WAFinfo] = '3' THEN 1
					WHEN [WAFinfo] = 'EXT' THEN 1
					ELSE 0 
				END) as SSTATUS
		INTO [FuzzySet].[dbo].[Filtro05_1B] 		
  FROM [05].[dbo].[Full]
	where cast(hora as time) >= '02:00:00' and cast(hora as time) <= '03:59:59'
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
					WHEN [WAFinfo] = '1' THEN 1
					WHEN [WAFinfo] = '2' THEN 1
					WHEN [WAFinfo] = '3' THEN 1
					WHEN [WAFinfo] = 'EXT' THEN 1
					ELSE 0 
				END) as SSTATUS
		INTO [FuzzySet].[dbo].[Filtro05_1C] 		
  FROM [05].[dbo].[Full]
	where cast(hora as time) >= '04:00:00' and cast(hora as time) <= '05:59:59'
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
					WHEN [WAFinfo] = '1' THEN 1
					WHEN [WAFinfo] = '2' THEN 1
					WHEN [WAFinfo] = '3' THEN 1
					WHEN [WAFinfo] = 'EXT' THEN 1
					ELSE 0 
				END) as SSTATUS
		INTO [FuzzySet].[dbo].[Filtro05_1D] 		
  FROM [05].[dbo].[Full]
	where cast(hora as time) >= '06:00:00' and cast(hora as time) <= '07:59:59'
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
					WHEN [WAFinfo] = '1' THEN 1
					WHEN [WAFinfo] = '2' THEN 1
					WHEN [WAFinfo] = '3' THEN 1
					WHEN [WAFinfo] = 'EXT' THEN 1
					ELSE 0 
				END) as SSTATUS
		INTO [FuzzySet].[dbo].[Filtro05_1E]		
  FROM [05].[dbo].[Full]
	where cast(hora as time) >= '08:00:00' and cast(hora as time) <= '09:59:59'
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
					WHEN [WAFinfo] = '1' THEN 1
					WHEN [WAFinfo] = '2' THEN 1
					WHEN [WAFinfo] = '3' THEN 1
					WHEN [WAFinfo] = 'EXT' THEN 1
					ELSE 0 
				END) as SSTATUS
		INTO [FuzzySet].[dbo].[Filtro05_1F] 		
  FROM [05].[dbo].[Full]
	where cast(hora as time) >= '10:00:00' and cast(hora as time) <= '11:59:59'
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
					WHEN [WAFinfo] = '1' THEN 1
					WHEN [WAFinfo] = '2' THEN 1
					WHEN [WAFinfo] = '3' THEN 1
					WHEN [WAFinfo] = 'EXT' THEN 1
					ELSE 0 
				END) as SSTATUS
		INTO [FuzzySet].[dbo].[Filtro05_1G]	
  FROM [05].[dbo].[Full]
	where cast(hora as time) >= '12:00:00' and cast(hora as time) <= '13:59:59'
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
					WHEN [WAFinfo] = '1' THEN 1
					WHEN [WAFinfo] = '2' THEN 1
					WHEN [WAFinfo] = '3' THEN 1
					WHEN [WAFinfo] = 'EXT' THEN 1
					ELSE 0 
				END) as SSTATUS
		INTO [FuzzySet].[dbo].[Filtro05_1H]		
  FROM [05].[dbo].[Full]
	where cast(hora as time) >= '14:00:00' and cast(hora as time) <= '15:59:59'
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
					WHEN [WAFinfo] = '1' THEN 1
					WHEN [WAFinfo] = '2' THEN 1
					WHEN [WAFinfo] = '3' THEN 1
					WHEN [WAFinfo] = 'EXT' THEN 1
					ELSE 0 
				END) as SSTATUS
		INTO [FuzzySet].[dbo].[Filtro05_1I]	
  FROM [05].[dbo].[Full]
	where cast(hora as time) >= '16:00:00' and cast(hora as time) <= '17:59:59'
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
					WHEN [WAFinfo] = '1' THEN 1
					WHEN [WAFinfo] = '2' THEN 1
					WHEN [WAFinfo] = '3' THEN 1
					WHEN [WAFinfo] = 'EXT' THEN 1
					ELSE 0 
				END) as SSTATUS
		INTO [FuzzySet].[dbo].[Filtro05_1J]		
  FROM [05].[dbo].[Full]
	where cast(hora as time) >= '18:00:00' and cast(hora as time) <= '19:59:59'
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
					WHEN [WAFinfo] = '1' THEN 1
					WHEN [WAFinfo] = '2' THEN 1
					WHEN [WAFinfo] = '3' THEN 1
					WHEN [WAFinfo] = 'EXT' THEN 1
					ELSE 0 
				END) as SSTATUS
		INTO [FuzzySet].[dbo].[Filtro05_1K]		
  FROM [05].[dbo].[Full]
	where cast(hora as time) >= '20:00:00' and cast(hora as time) <= '21:59:59'
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
					WHEN [WAFinfo] = '1' THEN 1
					WHEN [WAFinfo] = '2' THEN 1
					WHEN [WAFinfo] = '3' THEN 1
					WHEN [WAFinfo] = 'EXT' THEN 1
					ELSE 0 
				END) as SSTATUS
		INTO [FuzzySet].[dbo].[Filtro05_1L] 		
  FROM [05].[dbo].[Full]
	where cast(hora as time) >= '22:00:00' and cast(hora as time) <= '23:59:59'
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

	  ,count(*) as QREGRA
	  ,sum (
				CASE 
					WHEN [Regra] = '0' THEN 0
					WHEN [Regra] = '1%' THEN 1
					WHEN [Regra] = '2%' THEN 1
					WHEN [Regra] = '3%' THEN 1
					WHEN [Regra] = '4%' THEN 1					
					WHEN [Regra] = '5%' THEN 1
					WHEN [Regra] = '6%' THEN 1
					WHEN [Regra] = '7%' THEN 1
					WHEN [Regra] = '8%' THEN 1
					WHEN [Regra] = '9%' THEN 1
					ELSE 0  
				END) as SREGRA
		into [FuzzySet].[dbo].[Filtro05_2A]
  FROM [21].[dbo].[Full]
where cast(hora as time) >= '00:00:00' and cast (hora as time) <= '01:59:59'
group by 
      [Metodo]
      ,[URI]
      ,[Status]
      ,[URL]
      ,[UserAgent]
      ,[Cookie]
      ,[UserAgentBrowser]
      ,[Acao]


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
      
      
	  ,count(*) as QREGRA
	  ,sum (
				CASE 
					WHEN [Regra] = '0' THEN 0
					WHEN [Regra] = '1%' THEN 1
					WHEN [Regra] = '2%' THEN 1
					WHEN [Regra] = '3%' THEN 1
					WHEN [Regra] = '4%' THEN 1					
					WHEN [Regra] = '5%' THEN 1
					WHEN [Regra] = '6%' THEN 1
					WHEN [Regra] = '7%' THEN 1
					WHEN [Regra] = '8%' THEN 1
					WHEN [Regra] = '9%' THEN 1
					ELSE 0 
				END) as SREGRA
		into [FuzzySet].[dbo].[Filtro05_2B]
  FROM [21].[dbo].[Full]
where cast(hora as time) >= '02:00:00' and cast (hora as time) <= '03:59:59'
group by 
      [Metodo]
      ,[URI]
      ,[Status]
      ,[URL]
      ,[UserAgent]
      ,[Cookie]
      ,[UserAgentBrowser]
      ,[Acao]


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
      
      
	  ,count(*) as QREGRA
	  ,sum (
				CASE 
					WHEN [Regra] = '0' THEN 0
					WHEN [Regra] = '1%' THEN 1
					WHEN [Regra] = '2%' THEN 1
					WHEN [Regra] = '3%' THEN 1
					WHEN [Regra] = '4%' THEN 1					
					WHEN [Regra] = '5%' THEN 1
					WHEN [Regra] = '6%' THEN 1
					WHEN [Regra] = '7%' THEN 1
					WHEN [Regra] = '8%' THEN 1
					WHEN [Regra] = '9%' THEN 1
					ELSE 0 
				END) as SREGRA
		into [FuzzySet].[dbo].[Filtro05_2C]
  FROM [21].[dbo].[Full]
where cast(hora as time) >= '04:00:00' and cast (hora as time) <= '05:59:59'
group by 
      [Metodo]
      ,[URI]
      ,[Status]
      ,[URL]
      ,[UserAgent]
      ,[Cookie]
      ,[UserAgentBrowser]
      ,[Acao]


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
      
      
	  ,count(*) as QREGRA
	  ,sum (
				CASE 
					WHEN [Regra] = '0' THEN 0
					WHEN [Regra] = '1%' THEN 1
					WHEN [Regra] = '2%' THEN 1
					WHEN [Regra] = '3%' THEN 1
					WHEN [Regra] = '4%' THEN 1					
					WHEN [Regra] = '5%' THEN 1
					WHEN [Regra] = '6%' THEN 1
					WHEN [Regra] = '7%' THEN 1
					WHEN [Regra] = '8%' THEN 1
					WHEN [Regra] = '9%' THEN 1
					ELSE 0  
				END) as SREGRA
		into [FuzzySet].[dbo].[Filtro05_2D]
  FROM [21].[dbo].[Full]
where cast(hora as time) >= '06:00:00' and cast (hora as time) <= '07:59:59'
group by 
      [Metodo]
      ,[URI]
      ,[Status]
      ,[URL]
      ,[UserAgent]
      ,[Cookie]
      ,[UserAgentBrowser]
      ,[Acao]


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
      
      
	  ,count(*) as QREGRA
	  ,sum (
				CASE 
					WHEN [Regra] = '0' THEN 0
					WHEN [Regra] = '1%' THEN 1
					WHEN [Regra] = '2%' THEN 1
					WHEN [Regra] = '3%' THEN 1
					WHEN [Regra] = '4%' THEN 1					
					WHEN [Regra] = '5%' THEN 1
					WHEN [Regra] = '6%' THEN 1
					WHEN [Regra] = '7%' THEN 1
					WHEN [Regra] = '8%' THEN 1
					WHEN [Regra] = '9%' THEN 1
					ELSE 0  
				END) as SREGRA
		into [FuzzySet].[dbo].[Filtro05_2E]
  FROM [21].[dbo].[Full]
where cast(hora as time) >= '08:00:00' and cast (hora as time) <= '09:59:59'
group by 
      [Metodo]
      ,[URI]
      ,[Status]
      ,[URL]
      ,[UserAgent]
      ,[Cookie]
      ,[UserAgentBrowser]
      ,[Acao]


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
      
      
	  ,count(*) as QREGRA
	  ,sum (
				CASE 
					WHEN [Regra] = '0' THEN 0
					WHEN [Regra] = '1%' THEN 1
					WHEN [Regra] = '2%' THEN 1
					WHEN [Regra] = '3%' THEN 1
					WHEN [Regra] = '4%' THEN 1					
					WHEN [Regra] = '5%' THEN 1
					WHEN [Regra] = '6%' THEN 1
					WHEN [Regra] = '7%' THEN 1
					WHEN [Regra] = '8%' THEN 1
					WHEN [Regra] = '9%' THEN 1
					ELSE 0 
				END) as SREGRA
		into [FuzzySet].[dbo].[Filtro05_2F]
  FROM [21].[dbo].[Full]
where cast(hora as time) >= '10:00:00' and cast (hora as time) <= '11:59:59'
group by 
      [Metodo]
      ,[URI]
      ,[Status]
      ,[URL]
      ,[UserAgent]
      ,[Cookie]
      ,[UserAgentBrowser]
      ,[Acao]


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
      
      
	  ,count(*) as QREGRA
	  ,sum (
				CASE 
					WHEN [Regra] = '0' THEN 0
					WHEN [Regra] = '1%' THEN 1
					WHEN [Regra] = '2%' THEN 1
					WHEN [Regra] = '3%' THEN 1
					WHEN [Regra] = '4%' THEN 1					
					WHEN [Regra] = '5%' THEN 1
					WHEN [Regra] = '6%' THEN 1
					WHEN [Regra] = '7%' THEN 1
					WHEN [Regra] = '8%' THEN 1
					WHEN [Regra] = '9%' THEN 1
					ELSE 0 
				END) as SREGRA
		into [FuzzySet].[dbo].[Filtro05_2G]
  FROM [21].[dbo].[Full]
where cast(hora as time) >= '12:00:00' and cast (hora as time) <= '13:59:59'
group by 
      [Metodo]
      ,[URI]
      ,[Status]
      ,[URL]
      ,[UserAgent]
      ,[Cookie]
      ,[UserAgentBrowser]
      ,[Acao]


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
      
      
	  ,count(*) as QREGRA
	  ,sum (
				CASE 
					WHEN [Regra] = '0' THEN 0
					WHEN [Regra] = '1%' THEN 1
					WHEN [Regra] = '2%' THEN 1
					WHEN [Regra] = '3%' THEN 1
					WHEN [Regra] = '4%' THEN 1					
					WHEN [Regra] = '5%' THEN 1
					WHEN [Regra] = '6%' THEN 1
					WHEN [Regra] = '7%' THEN 1
					WHEN [Regra] = '8%' THEN 1
					WHEN [Regra] = '9%' THEN 1
					ELSE 0  
				END) as SREGRA
		into [FuzzySet].[dbo].[Filtro05_2H]
  FROM [21].[dbo].[Full]
where cast(hora as time) >= '14:00:00' and cast (hora as time) <= '15:59:59'
group by 
      [Metodo]
      ,[URI]
      ,[Status]
      ,[URL]
      ,[UserAgent]
      ,[Cookie]
      ,[UserAgentBrowser]
      ,[Acao]


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
      
      
	  ,count(*) as QREGRA
	  ,sum (
				CASE 
					WHEN [Regra] = '0' THEN 0
					WHEN [Regra] = '1%' THEN 1
					WHEN [Regra] = '2%' THEN 1
					WHEN [Regra] = '3%' THEN 1
					WHEN [Regra] = '4%' THEN 1					
					WHEN [Regra] = '5%' THEN 1
					WHEN [Regra] = '6%' THEN 1
					WHEN [Regra] = '7%' THEN 1
					WHEN [Regra] = '8%' THEN 1
					WHEN [Regra] = '9%' THEN 1
					ELSE 0 
				END) as SREGRA
		into [FuzzySet].[dbo].[Filtro05_2I]
  FROM [21].[dbo].[Full]
where cast(hora as time) >= '16:00:00' and cast (hora as time) <= '17:59:59'
group by 
      [Metodo]
      ,[URI]
      ,[Status]
      ,[URL]
      ,[UserAgent]
      ,[Cookie]
      ,[UserAgentBrowser]
      ,[Acao]


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
      
      
	  ,count(*) as QREGRA
	  ,sum (
				CASE 
					WHEN [Regra] = '0' THEN 0
					WHEN [Regra] = '1%' THEN 1
					WHEN [Regra] = '2%' THEN 1
					WHEN [Regra] = '3%' THEN 1
					WHEN [Regra] = '4%' THEN 1					
					WHEN [Regra] = '5%' THEN 1
					WHEN [Regra] = '6%' THEN 1
					WHEN [Regra] = '7%' THEN 1
					WHEN [Regra] = '8%' THEN 1
					WHEN [Regra] = '9%' THEN 1
					ELSE 0 
				END) as SREGRA
		into [FuzzySet].[dbo].[Filtro05_2J]
  FROM [21].[dbo].[Full]
where cast(hora as time) >= '18:00:00' and cast (hora as time) <= '19:59:59'
group by 
      [Metodo]
      ,[URI]
      ,[Status]
      ,[URL]
      ,[UserAgent]
      ,[Cookie]
      ,[UserAgentBrowser]
      ,[Acao]


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
      
      
	  ,count(*) as QREGRA
	  ,sum (
				CASE 
					WHEN [Regra] = '0' THEN 0
					WHEN [Regra] = '1%' THEN 1
					WHEN [Regra] = '2%' THEN 1
					WHEN [Regra] = '3%' THEN 1
					WHEN [Regra] = '4%' THEN 1					
					WHEN [Regra] = '5%' THEN 1
					WHEN [Regra] = '6%' THEN 1
					WHEN [Regra] = '7%' THEN 1
					WHEN [Regra] = '8%' THEN 1
					WHEN [Regra] = '9%' THEN 1
					ELSE 0 
				END) as SREGRA
		into [FuzzySet].[dbo].[Filtro05_2K]
  FROM [21].[dbo].[Full]
where cast(hora as time) >= '20:00:00' and cast (hora as time) <= '21:59:59'
group by 
      [Metodo]
      ,[URI]
      ,[Status]
      ,[URL]
      ,[UserAgent]
      ,[Cookie]
      ,[UserAgentBrowser]
      ,[Acao]


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
      
      
	  ,count(*) as QREGRA
	  ,sum (
				CASE 
					WHEN [Regra] = '0' THEN 0
					WHEN [Regra] = '1%' THEN 1
					WHEN [Regra] = '2%' THEN 1
					WHEN [Regra] = '3%' THEN 1
					WHEN [Regra] = '4%' THEN 1					
					WHEN [Regra] = '5%' THEN 1
					WHEN [Regra] = '6%' THEN 1
					WHEN [Regra] = '7%' THEN 1
					WHEN [Regra] = '8%' THEN 1
					WHEN [Regra] = '9%' THEN 1
					ELSE 0 
				END) as SREGRA
		into [FuzzySet].[dbo].[Filtro05_2L]
  FROM [21].[dbo].[Full]
where cast(hora as time) >= '22:00:00' and cast (hora as time) <= '23:59:59'
group by 
      [Metodo]
      ,[URI]
      ,[Status]
      ,[URL]
      ,[UserAgent]
      ,[Cookie]
      ,[UserAgentBrowser]
      ,[Acao]
GO
-- ==================== 
-- === Cria Tabelas M
-- ==================== 
ALTER TABLE [FuzzySet].[dbo].[Filtro05_2A] 
ADD MREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro05_2B] 
ADD MREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro05_2C] 
ADD MREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro05_2D] 
ADD MREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro05_2E] 
ADD MREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro05_2F] 
ADD MREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro05_2G] 
ADD MREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro05_2H] 
ADD MREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro05_2I] 
ADD MREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro05_2J] 
ADD MREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro05_2K] 
ADD MREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro05_2L] 
ADD MREGRA float NULL;
go


ALTER TABLE [FuzzySet].[dbo].[Filtro05_1A] 
ADD MSTATUS float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro05_1B] 
ADD MSTATUS float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro05_1C] 
ADD MSTATUS float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro05_1D] 
ADD MSTATUS float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro05_1E] 
ADD MSTATUS float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro05_1F] 
ADD MSTATUS float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro05_1G] 
ADD MSTATUS float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro05_1H] 
ADD MSTATUS float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro05_1I] 
ADD MSTATUS float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro05_1J] 
ADD MSTATUS float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro05_1K] 
ADD MSTATUS float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro05_1L] 
ADD MSTATUS float NULL;
go
-- ==================== 
-- === Cria Tabelas L
-- ==================== 
ALTER TABLE [FuzzySet].[dbo].[Filtro05_2A] 
ADD LREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro05_2B] 
ADD LREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro05_2C] 
ADD LREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro05_2D] 
ADD LREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro05_2E] 
ADD LREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro05_2F] 
ADD LREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro05_2G] 
ADD LREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro05_2H] 
ADD LREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro05_2I] 
ADD LREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro05_2J] 
ADD LREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro05_2K] 
ADD LREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro05_2L] 
ADD LREGRA float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro05_1A] 
ADD LSTATUS float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro05_1B] 
ADD LSTATUS float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro05_1C] 
ADD LSTATUS float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro05_1D] 
ADD LSTATUS float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro05_1E] 
ADD LSTATUS float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro05_1F] 
ADD LSTATUS float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro05_1G] 
ADD LSTATUS float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro05_1H] 
ADD LSTATUS float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro05_1I] 
ADD LSTATUS float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro05_1J] 
ADD LSTATUS float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro05_1K] 
ADD LSTATUS float NULL;
go
ALTER TABLE [FuzzySet].[dbo].[Filtro05_1L] 
ADD LSTATUS float NULL;
go

-- ==================== 
-- === Calcula Campos M
-- ==================== 
UPDATE [FuzzySet].[dbo].[Filtro05_2A] SET MREGRA =(CAST(SREGRA AS FLOAT)/QREGRA) * 100; 
UPDATE [FuzzySet].[dbo].[Filtro05_2B] SET MREGRA =(CAST(SREGRA AS FLOAT)/QREGRA) * 100; 
UPDATE [FuzzySet].[dbo].[Filtro05_2C] SET MREGRA =(CAST(SREGRA AS FLOAT)/QREGRA) * 100; 
UPDATE [FuzzySet].[dbo].[Filtro05_2D] SET MREGRA =(CAST(SREGRA AS FLOAT)/QREGRA) * 100; 
UPDATE [FuzzySet].[dbo].[Filtro05_2E] SET MREGRA =(CAST(SREGRA AS FLOAT)/QREGRA) * 100; 
UPDATE [FuzzySet].[dbo].[Filtro05_2F] SET MREGRA =(CAST(SREGRA AS FLOAT)/QREGRA) * 100; 
UPDATE [FuzzySet].[dbo].[Filtro05_2G] SET MREGRA =(CAST(SREGRA AS FLOAT)/QREGRA) * 100; 
UPDATE [FuzzySet].[dbo].[Filtro05_2H] SET MREGRA =(CAST(SREGRA AS FLOAT)/QREGRA) * 100; 
UPDATE [FuzzySet].[dbo].[Filtro05_2I] SET MREGRA =(CAST(SREGRA AS FLOAT)/QREGRA) * 100; 
UPDATE [FuzzySet].[dbo].[Filtro05_2J] SET MREGRA =(CAST(SREGRA AS FLOAT)/QREGRA) * 100; 
UPDATE [FuzzySet].[dbo].[Filtro05_2K] SET MREGRA =(CAST(SREGRA AS FLOAT)/QREGRA) * 100; 
UPDATE [FuzzySet].[dbo].[Filtro05_2L] SET MREGRA =(CAST(SREGRA AS FLOAT)/QREGRA) * 100; 
GO
UPDATE [FuzzySet].[dbo].[Filtro05_1A] SET MSTATUS =(CAST(SSTATUS AS FLOAT)/QSTATUS) * 100;
UPDATE [FuzzySet].[dbo].[Filtro05_1B] SET MSTATUS =(CAST(SSTATUS AS FLOAT)/QSTATUS) * 100;
UPDATE [FuzzySet].[dbo].[Filtro05_1C] SET MSTATUS =(CAST(SSTATUS AS FLOAT)/QSTATUS) * 100;
UPDATE [FuzzySet].[dbo].[Filtro05_1D] SET MSTATUS =(CAST(SSTATUS AS FLOAT)/QSTATUS) * 100;
UPDATE [FuzzySet].[dbo].[Filtro05_1E] SET MSTATUS =(CAST(SSTATUS AS FLOAT)/QSTATUS) * 100;
UPDATE [FuzzySet].[dbo].[Filtro05_1F] SET MSTATUS =(CAST(SSTATUS AS FLOAT)/QSTATUS) * 100;
UPDATE [FuzzySet].[dbo].[Filtro05_1G] SET MSTATUS =(CAST(SSTATUS AS FLOAT)/QSTATUS) * 100;
UPDATE [FuzzySet].[dbo].[Filtro05_1H] SET MSTATUS =(CAST(SSTATUS AS FLOAT)/QSTATUS) * 100;
UPDATE [FuzzySet].[dbo].[Filtro05_1I] SET MSTATUS =(CAST(SSTATUS AS FLOAT)/QSTATUS) * 100;
UPDATE [FuzzySet].[dbo].[Filtro05_1J] SET MSTATUS =(CAST(SSTATUS AS FLOAT)/QSTATUS) * 100;
UPDATE [FuzzySet].[dbo].[Filtro05_1K] SET MSTATUS =(CAST(SSTATUS AS FLOAT)/QSTATUS) * 100;
UPDATE [FuzzySet].[dbo].[Filtro05_1L] SET MSTATUS =(CAST(SSTATUS AS FLOAT)/QSTATUS) * 100;
GO
-- ==================== 
-- === Calcula Campos L
-- ==================== 
UPDATE [FuzzySet].[dbo].[Filtro05_1A] SET LSTATUS ='0' WHERE SSTATUS LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_1A] SET LSTATUS ='1' WHERE SSTATUS NOT LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_1B] SET LSTATUS ='0' WHERE SSTATUS LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_1B] SET LSTATUS ='1' WHERE SSTATUS NOT LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_1C] SET LSTATUS ='0' WHERE SSTATUS LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_1C] SET LSTATUS ='1' WHERE SSTATUS NOT LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_1D] SET LSTATUS ='0' WHERE SSTATUS LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_1D] SET LSTATUS ='1' WHERE SSTATUS NOT LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_1E] SET LSTATUS ='0' WHERE SSTATUS LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_1E] SET LSTATUS ='1' WHERE SSTATUS NOT LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_1F] SET LSTATUS ='0' WHERE SSTATUS LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_1F] SET LSTATUS ='1' WHERE SSTATUS NOT LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_1G] SET LSTATUS ='0' WHERE SSTATUS LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_1G] SET LSTATUS ='1' WHERE SSTATUS NOT LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_1H] SET LSTATUS ='0' WHERE SSTATUS LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_1H] SET LSTATUS ='1' WHERE SSTATUS NOT LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_1I] SET LSTATUS ='0' WHERE SSTATUS LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_1I] SET LSTATUS ='1' WHERE SSTATUS NOT LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_1J] SET LSTATUS ='0' WHERE SSTATUS LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_1J] SET LSTATUS ='1' WHERE SSTATUS NOT LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_1K] SET LSTATUS ='0' WHERE SSTATUS LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_1K] SET LSTATUS ='1' WHERE SSTATUS NOT LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_1L] SET LSTATUS ='0' WHERE SSTATUS LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_1L] SET LSTATUS ='1' WHERE SSTATUS NOT LIKE '0'
GO
UPDATE [FuzzySet].[dbo].[Filtro05_2A] SET LREGRA ='0' WHERE SREGRA LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_2A] SET LREGRA ='1' WHERE SREGRA NOT LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_2B] SET LREGRA ='0' WHERE SREGRA LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_2B] SET LREGRA ='1' WHERE SREGRA NOT LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_2C] SET LREGRA ='0' WHERE SREGRA LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_2C] SET LREGRA ='1' WHERE SREGRA NOT LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_2D] SET LREGRA ='0' WHERE SREGRA LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_2D] SET LREGRA ='1' WHERE SREGRA NOT LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_2E] SET LREGRA ='0' WHERE SREGRA LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_2E] SET LREGRA ='1' WHERE SREGRA NOT LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_2F] SET LREGRA ='0' WHERE SREGRA LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_2F] SET LREGRA ='1' WHERE SREGRA NOT LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_2G] SET LREGRA ='0' WHERE SREGRA LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_2G] SET LREGRA ='1' WHERE SREGRA NOT LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_2H] SET LREGRA ='0' WHERE SREGRA LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_2H] SET LREGRA ='1' WHERE SREGRA NOT LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_2I] SET LREGRA ='0' WHERE SREGRA LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_2I] SET LREGRA ='1' WHERE SREGRA NOT LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_2J] SET LREGRA ='0' WHERE SREGRA LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_2J] SET LREGRA ='1' WHERE SREGRA NOT LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_2K] SET LREGRA ='0' WHERE SREGRA LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_2K] SET LREGRA ='1' WHERE SREGRA NOT LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_2L] SET LREGRA ='0' WHERE SREGRA LIKE '0'
UPDATE [FuzzySet].[dbo].[Filtro05_2L] SET LREGRA ='1' WHERE SREGRA NOT LIKE '0'
GO

-- ==================== 
-- === Junta os Filtros 1x e 2x em x
-- ==================== 
SELECT F1.METODO		as F1_METODO		
,F1.URI			as F1_URI
,F1.STATUS		as F1_STATUS
,F1.URL			as F1_URL
,F1.USERAGENT	as F1_USERAGENT
,F1.COOKIE		as F1_COOKIE
,F1.BROWSER		as F1_BROWSER
,F1.QSTATUS		as F1_QSTATUS
,F1.SSTATUS		as F1_SSTATUS
,F1.MSTATUS		as F1_MSTATUS
,F1.LSTATUS		as F1_LSTATUS
,F2.METODO		as F2_METODO
,F2.URI			as F2_URI
,F2.STATUS		as F2_STATUS
,F2.URL			as F2_URL
,F2.USERAGENT	as F2_USERAGENT
,F2.COOKIE		as F2_COOKIE
,F2.BROWSER		as F2_BROWSER
,F2.ACAO		as F2_ACAO
,F2.QREGRA		as F2_QREGRA
,F2.SREGRA		as F2_SREGRA
,F2.MREGRA		as F2_MREGRA
,F2.LREGRA		as F2_LREGRA
INTO [FuzzySet].[dbo].[Filtro05TEMPA]	
FROM [FuzzySet].[dbo].[Filtro05_1A] F1
  LEFT JOIN  [FuzzySet].[dbo].[Filtro05_2A] F2 ON
[F1].[METODO] = [F2].[METODO] AND
[F1].[URI] = [F2].[URI] AND
[F1].[STATUS] = [F2].[STATUS] AND
[F1].[URL] = [F2].[URL] AND
[F1].[USERAGENT] = [F2].[USERAGENT] AND
[F1].[COOKIE] = [F2].[COOKIE] AND
[F1].[BROWSER] = [F2].[BROWSER]
	order by [F1].[METODO]
go

Select F1_METODO		AS METODO
,F1_URI	     	AS URI	      
,F1_STATUS	 	AS STATUS	  
,F1_URL	     	AS URL	      
,F1_USERAGENT	AS USERAGENT
,F1_COOKIE	 	AS COOKIE	  
,F1_BROWSER	 	AS BROWSER	  
,F1_QSTATUS	 	AS QSTATUS	  
,F1_SSTATUS	 	AS SSTATUS	  
,F1_MSTATUS	 	AS MSTATUS	  
,F1_LSTATUS	 	AS LSTATUS	  
,F2_ACAO	    AS ACAO	      
,F2_QREGRA	 	AS QREGRA	  
,F2_SREGRA	 	AS SREGRA	  
,F2_MREGRA	 	AS MREGRA	  
,F2_LREGRA    	AS LREGRA
into [FuzzySet].[dbo].[Filtro05A]
FROM [FuzzySet].[dbo].[Filtro05TEMPA]
go

--------------------------------------------------------------------
SELECT F1.METODO		as F1_METODO		
,F1.URI			as F1_URI
,F1.STATUS		as F1_STATUS
,F1.URL			as F1_URL
,F1.USERAGENT	as F1_USERAGENT
,F1.COOKIE		as F1_COOKIE
,F1.BROWSER		as F1_BROWSER
,F1.QSTATUS		as F1_QSTATUS
,F1.SSTATUS		as F1_SSTATUS
,F1.MSTATUS		as F1_MSTATUS
,F1.LSTATUS		as F1_LSTATUS
,F2.METODO		as F2_METODO
,F2.URI			as F2_URI
,F2.STATUS		as F2_STATUS
,F2.URL			as F2_URL
,F2.USERAGENT	as F2_USERAGENT
,F2.COOKIE		as F2_COOKIE
,F2.BROWSER		as F2_BROWSER
,F2.ACAO		as F2_ACAO


,F2.QREGRA		as F2_QREGRA
,F2.SREGRA		as F2_SREGRA
,F2.MREGRA		as F2_MREGRA
,F2.LREGRA		as F2_LREGRA
INTO [FuzzySet].[dbo].[Filtro05TEMPB]		
FROM [FuzzySet].[dbo].[Filtro05_1B] F1
  LEFT JOIN  [FuzzySet].[dbo].[Filtro05_2B] F2 ON
[F1].[METODO] = [F2].[METODO] AND
[F1].[URI] = [F2].[URI] AND
[F1].[STATUS] = [F2].[STATUS] AND
[F1].[URL] = [F2].[URL] AND
[F1].[USERAGENT] = [F2].[USERAGENT] AND
[F1].[COOKIE] = [F2].[COOKIE] AND
[F1].[BROWSER] = [F2].[BROWSER]
	order by [F1].[METODO]
go
Select F1_METODO		AS METODO
,F1_URI	     	AS URI	      
,F1_STATUS	 	AS STATUS	  
,F1_URL	     	AS URL	      
,F1_USERAGENT	AS USERAGENT
,F1_COOKIE	 	AS COOKIE	  
,F1_BROWSER	 	AS BROWSER	  
,F1_QSTATUS	 	AS QSTATUS	  
,F1_SSTATUS	 	AS SSTATUS	  
,F1_MSTATUS	 	AS MSTATUS	  
,F1_LSTATUS	 	AS LSTATUS	  
,F2_ACAO	    AS ACAO	      
 

,F2_QREGRA	 	AS QREGRA	  
,F2_SREGRA	 	AS SREGRA	  
,F2_MREGRA	 	AS MREGRA	  
,F2_LREGRA    	AS LREGRA
into [FuzzySet].[dbo].[Filtro05B]
FROM [FuzzySet].[dbo].[Filtro05TEMPB]
go

--------------------------------------------------------------------
SELECT F1.METODO		as F1_METODO		
,F1.URI			as F1_URI
,F1.STATUS		as F1_STATUS
,F1.URL			as F1_URL
,F1.USERAGENT	as F1_USERAGENT
,F1.COOKIE		as F1_COOKIE
,F1.BROWSER		as F1_BROWSER
,F1.QSTATUS		as F1_QSTATUS
,F1.SSTATUS		as F1_SSTATUS
,F1.MSTATUS		as F1_MSTATUS
,F1.LSTATUS		as F1_LSTATUS
,F2.METODO		as F2_METODO
,F2.URI			as F2_URI
,F2.STATUS		as F2_STATUS
,F2.URL			as F2_URL
,F2.USERAGENT	as F2_USERAGENT
,F2.COOKIE		as F2_COOKIE
,F2.BROWSER		as F2_BROWSER
,F2.ACAO		as F2_ACAO


,F2.QREGRA		as F2_QREGRA
,F2.SREGRA		as F2_SREGRA
,F2.MREGRA		as F2_MREGRA
,F2.LREGRA		as F2_LREGRA
INTO [FuzzySet].[dbo].[Filtro05TEMPC]		
FROM [FuzzySet].[dbo].[Filtro05_1C] F1
  LEFT JOIN  [FuzzySet].[dbo].[Filtro05_2C] F2 ON
[F1].[METODO] = [F2].[METODO] AND
[F1].[URI] = [F2].[URI] AND
[F1].[STATUS] = [F2].[STATUS] AND
[F1].[URL] = [F2].[URL] AND
[F1].[USERAGENT] = [F2].[USERAGENT] AND
[F1].[COOKIE] = [F2].[COOKIE] AND
[F1].[BROWSER] = [F2].[BROWSER]
	order by [F1].[METODO]
go
Select F1_METODO		AS METODO
,F1_URI	     	AS URI	      
,F1_STATUS	 	AS STATUS	  
,F1_URL	     	AS URL	      
,F1_USERAGENT	AS USERAGENT
,F1_COOKIE	 	AS COOKIE	  
,F1_BROWSER	 	AS BROWSER	  
,F1_QSTATUS	 	AS QSTATUS	  
,F1_SSTATUS	 	AS SSTATUS	  
,F1_MSTATUS	 	AS MSTATUS	  
,F1_LSTATUS	 	AS LSTATUS	  
,F2_ACAO	    AS ACAO	      
 

,F2_QREGRA	 	AS QREGRA	  
,F2_SREGRA	 	AS SREGRA	  
,F2_MREGRA	 	AS MREGRA	  
,F2_LREGRA    	AS LREGRA
into [FuzzySet].[dbo].[Filtro05C]
FROM [FuzzySet].[dbo].[Filtro05TEMPC]
go
--------------------------------------------------------------------
SELECT F1.METODO		as F1_METODO		
,F1.URI			as F1_URI
,F1.STATUS		as F1_STATUS
,F1.URL			as F1_URL
,F1.USERAGENT	as F1_USERAGENT
,F1.COOKIE		as F1_COOKIE
,F1.BROWSER		as F1_BROWSER
,F1.QSTATUS		as F1_QSTATUS
,F1.SSTATUS		as F1_SSTATUS
,F1.MSTATUS		as F1_MSTATUS
,F1.LSTATUS		as F1_LSTATUS
,F2.METODO		as F2_METODO
,F2.URI			as F2_URI
,F2.STATUS		as F2_STATUS
,F2.URL			as F2_URL
,F2.USERAGENT	as F2_USERAGENT
,F2.COOKIE		as F2_COOKIE
,F2.BROWSER		as F2_BROWSER
,F2.ACAO		as F2_ACAO


,F2.QREGRA		as F2_QREGRA
,F2.SREGRA		as F2_SREGRA
,F2.MREGRA		as F2_MREGRA
,F2.LREGRA		as F2_LREGRA
INTO [FuzzySet].[dbo].[Filtro05TEMPD]	
FROM [FuzzySet].[dbo].[Filtro05_1D] F1
  LEFT JOIN  [FuzzySet].[dbo].[Filtro05_2D] F2 ON
[F1].[METODO] = [F2].[METODO] AND
[F1].[URI] = [F2].[URI] AND
[F1].[STATUS] = [F2].[STATUS] AND
[F1].[URL] = [F2].[URL] AND
[F1].[USERAGENT] = [F2].[USERAGENT] AND
[F1].[COOKIE] = [F2].[COOKIE] AND
[F1].[BROWSER] = [F2].[BROWSER]
	order by [F1].[METODO]
go
Select F1_METODO		AS METODO
,F1_URI	     	AS URI	      
,F1_STATUS	 	AS STATUS	  
,F1_URL	     	AS URL	      
,F1_USERAGENT	AS USERAGENT
,F1_COOKIE	 	AS COOKIE	  
,F1_BROWSER	 	AS BROWSER	  
,F1_QSTATUS	 	AS QSTATUS	  
,F1_SSTATUS	 	AS SSTATUS	  
,F1_MSTATUS	 	AS MSTATUS	  
,F1_LSTATUS	 	AS LSTATUS	  
,F2_ACAO	    AS ACAO	      
 

,F2_QREGRA	 	AS QREGRA	  
,F2_SREGRA	 	AS SREGRA	  
,F2_MREGRA	 	AS MREGRA	  
,F2_LREGRA    	AS LREGRA
into [FuzzySet].[dbo].[Filtro05D]
FROM [FuzzySet].[dbo].[Filtro05TEMPD]
go
--------------------------------------------------------------------
SELECT F1.METODO		as F1_METODO		
,F1.URI			as F1_URI
,F1.STATUS		as F1_STATUS
,F1.URL			as F1_URL
,F1.USERAGENT	as F1_USERAGENT
,F1.COOKIE		as F1_COOKIE
,F1.BROWSER		as F1_BROWSER
,F1.QSTATUS		as F1_QSTATUS
,F1.SSTATUS		as F1_SSTATUS
,F1.MSTATUS		as F1_MSTATUS
,F1.LSTATUS		as F1_LSTATUS
,F2.METODO		as F2_METODO
,F2.URI			as F2_URI
,F2.STATUS		as F2_STATUS
,F2.URL			as F2_URL
,F2.USERAGENT	as F2_USERAGENT
,F2.COOKIE		as F2_COOKIE
,F2.BROWSER		as F2_BROWSER
,F2.ACAO		as F2_ACAO


,F2.QREGRA		as F2_QREGRA
,F2.SREGRA		as F2_SREGRA
,F2.MREGRA		as F2_MREGRA
,F2.LREGRA		as F2_LREGRA
INTO [FuzzySet].[dbo].[Filtro05TEMPE]
FROM [FuzzySet].[dbo].[Filtro05_1E] F1
  LEFT JOIN  [FuzzySet].[dbo].[Filtro05_2E] F2 ON
[F1].[METODO] = [F2].[METODO] AND
[F1].[URI] = [F2].[URI] AND
[F1].[STATUS] = [F2].[STATUS] AND
[F1].[URL] = [F2].[URL] AND
[F1].[USERAGENT] = [F2].[USERAGENT] AND
[F1].[COOKIE] = [F2].[COOKIE] AND
[F1].[BROWSER] = [F2].[BROWSER]
	order by [F1].[METODO]
go
Select F1_METODO		AS METODO
,F1_URI	     	AS URI	      
,F1_STATUS	 	AS STATUS	  
,F1_URL	     	AS URL	      
,F1_USERAGENT	AS USERAGENT
,F1_COOKIE	 	AS COOKIE	  
,F1_BROWSER	 	AS BROWSER	  
,F1_QSTATUS	 	AS QSTATUS	  
,F1_SSTATUS	 	AS SSTATUS	  
,F1_MSTATUS	 	AS MSTATUS	  
,F1_LSTATUS	 	AS LSTATUS	  
,F2_ACAO	    AS ACAO	      
 

,F2_QREGRA	 	AS QREGRA	  
,F2_SREGRA	 	AS SREGRA	  
,F2_MREGRA	 	AS MREGRA	  
,F2_LREGRA    	AS LREGRA
into [FuzzySet].[dbo].[Filtro05E]
FROM [FuzzySet].[dbo].[Filtro05TEMPE]
go
--------------------------------------------------------------------
SELECT F1.METODO		as F1_METODO		
,F1.URI			as F1_URI
,F1.STATUS		as F1_STATUS
,F1.URL			as F1_URL
,F1.USERAGENT	as F1_USERAGENT
,F1.COOKIE		as F1_COOKIE
,F1.BROWSER		as F1_BROWSER
,F1.QSTATUS		as F1_QSTATUS
,F1.SSTATUS		as F1_SSTATUS
,F1.MSTATUS		as F1_MSTATUS
,F1.LSTATUS		as F1_LSTATUS
,F2.METODO		as F2_METODO
,F2.URI			as F2_URI
,F2.STATUS		as F2_STATUS
,F2.URL			as F2_URL
,F2.USERAGENT	as F2_USERAGENT
,F2.COOKIE		as F2_COOKIE
,F2.BROWSER		as F2_BROWSER
,F2.ACAO		as F2_ACAO


,F2.QREGRA		as F2_QREGRA
,F2.SREGRA		as F2_SREGRA
,F2.MREGRA		as F2_MREGRA
,F2.LREGRA		as F2_LREGRA
INTO [FuzzySet].[dbo].[Filtro05TEMPF]
FROM [FuzzySet].[dbo].[Filtro05_1F] F1
  LEFT JOIN  [FuzzySet].[dbo].[Filtro05_2F] F2 ON
[F1].[METODO] = [F2].[METODO] AND
[F1].[URI] = [F2].[URI] AND
[F1].[STATUS] = [F2].[STATUS] AND
[F1].[URL] = [F2].[URL] AND
[F1].[USERAGENT] = [F2].[USERAGENT] AND
[F1].[COOKIE] = [F2].[COOKIE] AND
[F1].[BROWSER] = [F2].[BROWSER]
	order by [F1].[METODO]
go
Select F1_METODO		AS METODO
,F1_URI	     	AS URI	      
,F1_STATUS	 	AS STATUS	  
,F1_URL	     	AS URL	      
,F1_USERAGENT	AS USERAGENT
,F1_COOKIE	 	AS COOKIE	  
,F1_BROWSER	 	AS BROWSER	  
,F1_QSTATUS	 	AS QSTATUS	  
,F1_SSTATUS	 	AS SSTATUS	  
,F1_MSTATUS	 	AS MSTATUS	  
,F1_LSTATUS	 	AS LSTATUS	  
,F2_ACAO	    AS ACAO	      
 

,F2_QREGRA	 	AS QREGRA	  
,F2_SREGRA	 	AS SREGRA	  
,F2_MREGRA	 	AS MREGRA	  
,F2_LREGRA    	AS LREGRA
into [FuzzySet].[dbo].[Filtro05F]
FROM [FuzzySet].[dbo].[Filtro05TEMPF]
go
--------------------------------------------------------------------
SELECT F1.METODO		as F1_METODO		
,F1.URI			as F1_URI
,F1.STATUS		as F1_STATUS
,F1.URL			as F1_URL
,F1.USERAGENT	as F1_USERAGENT
,F1.COOKIE		as F1_COOKIE
,F1.BROWSER		as F1_BROWSER
,F1.QSTATUS		as F1_QSTATUS
,F1.SSTATUS		as F1_SSTATUS
,F1.MSTATUS		as F1_MSTATUS
,F1.LSTATUS		as F1_LSTATUS
,F2.METODO		as F2_METODO
,F2.URI			as F2_URI
,F2.STATUS		as F2_STATUS
,F2.URL			as F2_URL
,F2.USERAGENT	as F2_USERAGENT
,F2.COOKIE		as F2_COOKIE
,F2.BROWSER		as F2_BROWSER
,F2.ACAO		as F2_ACAO


,F2.QREGRA		as F2_QREGRA
,F2.SREGRA		as F2_SREGRA
,F2.MREGRA		as F2_MREGRA
,F2.LREGRA		as F2_LREGRA
INTO [FuzzySet].[dbo].[Filtro05TEMPG]
FROM [FuzzySet].[dbo].[Filtro05_1G] F1
  LEFT JOIN  [FuzzySet].[dbo].[Filtro05_2G] F2 ON
[F1].[METODO] = [F2].[METODO] AND
[F1].[URI] = [F2].[URI] AND
[F1].[STATUS] = [F2].[STATUS] AND
[F1].[URL] = [F2].[URL] AND
[F1].[USERAGENT] = [F2].[USERAGENT] AND
[F1].[COOKIE] = [F2].[COOKIE] AND
[F1].[BROWSER] = [F2].[BROWSER]
	order by [F1].[METODO]
go
Select F1_METODO		AS METODO
,F1_URI	     	AS URI	      
,F1_STATUS	 	AS STATUS	  
,F1_URL	     	AS URL	      
,F1_USERAGENT	AS USERAGENT
,F1_COOKIE	 	AS COOKIE	  
,F1_BROWSER	 	AS BROWSER	  
,F1_QSTATUS	 	AS QSTATUS	  
,F1_SSTATUS	 	AS SSTATUS	  
,F1_MSTATUS	 	AS MSTATUS	  
,F1_LSTATUS	 	AS LSTATUS	  
,F2_ACAO	    AS ACAO	      
 

,F2_QREGRA	 	AS QREGRA	  
,F2_SREGRA	 	AS SREGRA	  
,F2_MREGRA	 	AS MREGRA	  
,F2_LREGRA    	AS LREGRA
into [FuzzySet].[dbo].[Filtro05G]
FROM [FuzzySet].[dbo].[Filtro05TEMPG]
go
--------------------------------------------------------------------
SELECT F1.METODO		as F1_METODO		
,F1.URI			as F1_URI
,F1.STATUS		as F1_STATUS
,F1.URL			as F1_URL
,F1.USERAGENT	as F1_USERAGENT
,F1.COOKIE		as F1_COOKIE
,F1.BROWSER		as F1_BROWSER
,F1.QSTATUS		as F1_QSTATUS
,F1.SSTATUS		as F1_SSTATUS
,F1.MSTATUS		as F1_MSTATUS
,F1.LSTATUS		as F1_LSTATUS
,F2.METODO		as F2_METODO
,F2.URI			as F2_URI
,F2.STATUS		as F2_STATUS
,F2.URL			as F2_URL
,F2.USERAGENT	as F2_USERAGENT
,F2.COOKIE		as F2_COOKIE
,F2.BROWSER		as F2_BROWSER
,F2.ACAO		as F2_ACAO


,F2.QREGRA		as F2_QREGRA
,F2.SREGRA		as F2_SREGRA
,F2.MREGRA		as F2_MREGRA
,F2.LREGRA		as F2_LREGRA
INTO [FuzzySet].[dbo].[Filtro05TEMPH]
FROM [FuzzySet].[dbo].[Filtro05_1H] F1
  LEFT JOIN  [FuzzySet].[dbo].[Filtro05_2H] F2 ON
[F1].[METODO] = [F2].[METODO] AND
[F1].[URI] = [F2].[URI] AND
[F1].[STATUS] = [F2].[STATUS] AND
[F1].[URL] = [F2].[URL] AND
[F1].[USERAGENT] = [F2].[USERAGENT] AND
[F1].[COOKIE] = [F2].[COOKIE] AND
[F1].[BROWSER] = [F2].[BROWSER]
	order by [F1].[METODO]
go
Select F1_METODO		AS METODO
,F1_URI	     	AS URI	      
,F1_STATUS	 	AS STATUS	  
,F1_URL	     	AS URL	      
,F1_USERAGENT	AS USERAGENT
,F1_COOKIE	 	AS COOKIE	  
,F1_BROWSER	 	AS BROWSER	  
,F1_QSTATUS	 	AS QSTATUS	  
,F1_SSTATUS	 	AS SSTATUS	  
,F1_MSTATUS	 	AS MSTATUS	  
,F1_LSTATUS	 	AS LSTATUS	  
,F2_ACAO	    AS ACAO	      
 

,F2_QREGRA	 	AS QREGRA	  
,F2_SREGRA	 	AS SREGRA	  
,F2_MREGRA	 	AS MREGRA	  
,F2_LREGRA    	AS LREGRA
into [FuzzySet].[dbo].[Filtro05H]
FROM [FuzzySet].[dbo].[Filtro05TEMPH]
go
--------------------------------------------------------------------
SELECT F1.METODO		as F1_METODO		
,F1.URI			as F1_URI
,F1.STATUS		as F1_STATUS
,F1.URL			as F1_URL
,F1.USERAGENT	as F1_USERAGENT
,F1.COOKIE		as F1_COOKIE
,F1.BROWSER		as F1_BROWSER
,F1.QSTATUS		as F1_QSTATUS
,F1.SSTATUS		as F1_SSTATUS
,F1.MSTATUS		as F1_MSTATUS
,F1.LSTATUS		as F1_LSTATUS
,F2.METODO		as F2_METODO
,F2.URI			as F2_URI
,F2.STATUS		as F2_STATUS
,F2.URL			as F2_URL
,F2.USERAGENT	as F2_USERAGENT
,F2.COOKIE		as F2_COOKIE
,F2.BROWSER		as F2_BROWSER
,F2.ACAO		as F2_ACAO


,F2.QREGRA		as F2_QREGRA
,F2.SREGRA		as F2_SREGRA
,F2.MREGRA		as F2_MREGRA
,F2.LREGRA		as F2_LREGRA
INTO [FuzzySet].[dbo].[Filtro05TEMPI]
FROM [FuzzySet].[dbo].[Filtro05_1I] F1
  LEFT JOIN  [FuzzySet].[dbo].[Filtro05_2I] F2 ON
[F1].[METODO] = [F2].[METODO] AND
[F1].[URI] = [F2].[URI] AND
[F1].[STATUS] = [F2].[STATUS] AND
[F1].[URL] = [F2].[URL] AND
[F1].[USERAGENT] = [F2].[USERAGENT] AND
[F1].[COOKIE] = [F2].[COOKIE] AND
[F1].[BROWSER] = [F2].[BROWSER]
	order by [F1].[METODO]
go
Select F1_METODO		AS METODO
,F1_URI	     	AS URI	      
,F1_STATUS	 	AS STATUS	  
,F1_URL	     	AS URL	      
,F1_USERAGENT	AS USERAGENT
,F1_COOKIE	 	AS COOKIE	  
,F1_BROWSER	 	AS BROWSER	  
,F1_QSTATUS	 	AS QSTATUS	  
,F1_SSTATUS	 	AS SSTATUS	  
,F1_MSTATUS	 	AS MSTATUS	  
,F1_LSTATUS	 	AS LSTATUS	  
,F2_ACAO	    AS ACAO	      
 

,F2_QREGRA	 	AS QREGRA	  
,F2_SREGRA	 	AS SREGRA	  
,F2_MREGRA	 	AS MREGRA	  
,F2_LREGRA    	AS LREGRA
into [FuzzySet].[dbo].[Filtro05I]
FROM [FuzzySet].[dbo].[Filtro05TEMPI]
go
--------------------------------------------------------------------
SELECT F1.METODO		as F1_METODO		
,F1.URI			as F1_URI
,F1.STATUS		as F1_STATUS
,F1.URL			as F1_URL
,F1.USERAGENT	as F1_USERAGENT
,F1.COOKIE		as F1_COOKIE
,F1.BROWSER		as F1_BROWSER
,F1.QSTATUS		as F1_QSTATUS
,F1.SSTATUS		as F1_SSTATUS
,F1.MSTATUS		as F1_MSTATUS
,F1.LSTATUS		as F1_LSTATUS
,F2.METODO		as F2_METODO
,F2.URI			as F2_URI
,F2.STATUS		as F2_STATUS
,F2.URL			as F2_URL
,F2.USERAGENT	as F2_USERAGENT
,F2.COOKIE		as F2_COOKIE
,F2.BROWSER		as F2_BROWSER
,F2.ACAO		as F2_ACAO


,F2.QREGRA		as F2_QREGRA
,F2.SREGRA		as F2_SREGRA
,F2.MREGRA		as F2_MREGRA
,F2.LREGRA		as F2_LREGRA
INTO [FuzzySet].[dbo].[Filtro05TEMPJ]
FROM [FuzzySet].[dbo].[Filtro05_1J] F1
  LEFT JOIN  [FuzzySet].[dbo].[Filtro05_2J] F2 ON
[F1].[METODO] = [F2].[METODO] AND
[F1].[URI] = [F2].[URI] AND
[F1].[STATUS] = [F2].[STATUS] AND
[F1].[URL] = [F2].[URL] AND
[F1].[USERAGENT] = [F2].[USERAGENT] AND
[F1].[COOKIE] = [F2].[COOKIE] AND
[F1].[BROWSER] = [F2].[BROWSER]
	order by [F1].[METODO]
go
Select F1_METODO		AS METODO
,F1_URI	     	AS URI	      
,F1_STATUS	 	AS STATUS	  
,F1_URL	     	AS URL	      
,F1_USERAGENT	AS USERAGENT
,F1_COOKIE	 	AS COOKIE	  
,F1_BROWSER	 	AS BROWSER	  
,F1_QSTATUS	 	AS QSTATUS	  
,F1_SSTATUS	 	AS SSTATUS	  
,F1_MSTATUS	 	AS MSTATUS	  
,F1_LSTATUS	 	AS LSTATUS	  
,F2_ACAO	    AS ACAO	      
 

,F2_QREGRA	 	AS QREGRA	  
,F2_SREGRA	 	AS SREGRA	  
,F2_MREGRA	 	AS MREGRA	  
,F2_LREGRA    	AS LREGRA
into [FuzzySet].[dbo].[Filtro05J]
FROM [FuzzySet].[dbo].[Filtro05TEMPJ]
go
--------------------------------------------------------------------
SELECT F1.METODO		as F1_METODO		
,F1.URI			as F1_URI
,F1.STATUS		as F1_STATUS
,F1.URL			as F1_URL
,F1.USERAGENT	as F1_USERAGENT
,F1.COOKIE		as F1_COOKIE
,F1.BROWSER		as F1_BROWSER
,F1.QSTATUS		as F1_QSTATUS
,F1.SSTATUS		as F1_SSTATUS
,F1.MSTATUS		as F1_MSTATUS
,F1.LSTATUS		as F1_LSTATUS
,F2.METODO		as F2_METODO
,F2.URI			as F2_URI
,F2.STATUS		as F2_STATUS
,F2.URL			as F2_URL
,F2.USERAGENT	as F2_USERAGENT
,F2.COOKIE		as F2_COOKIE
,F2.BROWSER		as F2_BROWSER
,F2.ACAO		as F2_ACAO


,F2.QREGRA		as F2_QREGRA
,F2.SREGRA		as F2_SREGRA
,F2.MREGRA		as F2_MREGRA
,F2.LREGRA		as F2_LREGRA
INTO [FuzzySet].[dbo].[Filtro05TEMPK]		
FROM [FuzzySet].[dbo].[Filtro05_1K] F1
  LEFT JOIN  [FuzzySet].[dbo].[Filtro05_2K] F2 ON
[F1].[METODO] = [F2].[METODO] AND
[F1].[URI] = [F2].[URI] AND
[F1].[STATUS] = [F2].[STATUS] AND
[F1].[URL] = [F2].[URL] AND
[F1].[USERAGENT] = [F2].[USERAGENT] AND
[F1].[COOKIE] = [F2].[COOKIE] AND
[F1].[BROWSER] = [F2].[BROWSER]
	order by [F1].[METODO]
go
Select F1_METODO		AS METODO
,F1_URI	     	AS URI	      
,F1_STATUS	 	AS STATUS	  
,F1_URL	     	AS URL	      
,F1_USERAGENT	AS USERAGENT
,F1_COOKIE	 	AS COOKIE	  
,F1_BROWSER	 	AS BROWSER	  
,F1_QSTATUS	 	AS QSTATUS	  
,F1_SSTATUS	 	AS SSTATUS	  
,F1_MSTATUS	 	AS MSTATUS	  
,F1_LSTATUS	 	AS LSTATUS	  
,F2_ACAO	    AS ACAO	      
 

,F2_QREGRA	 	AS QREGRA	  
,F2_SREGRA	 	AS SREGRA	  
,F2_MREGRA	 	AS MREGRA	  
,F2_LREGRA    	AS LREGRA
into [FuzzySet].[dbo].[Filtro05K]
FROM [FuzzySet].[dbo].[Filtro05TEMPK]
go
--------------------------------------------------------------------
SELECT F1.METODO		as F1_METODO		
,F1.URI			as F1_URI
,F1.STATUS		as F1_STATUS
,F1.URL			as F1_URL
,F1.USERAGENT	as F1_USERAGENT
,F1.COOKIE		as F1_COOKIE
,F1.BROWSER		as F1_BROWSER
,F1.QSTATUS		as F1_QSTATUS
,F1.SSTATUS		as F1_SSTATUS
,F1.MSTATUS		as F1_MSTATUS
,F1.LSTATUS		as F1_LSTATUS
,F2.METODO		as F2_METODO
,F2.URI			as F2_URI
,F2.STATUS		as F2_STATUS
,F2.URL			as F2_URL
,F2.USERAGENT	as F2_USERAGENT
,F2.COOKIE		as F2_COOKIE
,F2.BROWSER		as F2_BROWSER
,F2.ACAO		as F2_ACAO


,F2.QREGRA		as F2_QREGRA
,F2.SREGRA		as F2_SREGRA
,F2.MREGRA		as F2_MREGRA
,F2.LREGRA		as F2_LREGRA
INTO [FuzzySet].[dbo].[Filtro05TEMPL]
FROM [FuzzySet].[dbo].[Filtro05_1L] F1
  LEFT JOIN  [FuzzySet].[dbo].[Filtro05_2L] F2 ON
[F1].[METODO] = [F2].[METODO] AND
[F1].[URI] = [F2].[URI] AND
[F1].[STATUS] = [F2].[STATUS] AND
[F1].[URL] = [F2].[URL] AND
[F1].[USERAGENT] = [F2].[USERAGENT] AND
[F1].[COOKIE] = [F2].[COOKIE] AND
[F1].[BROWSER] = [F2].[BROWSER]
	order by [F1].[METODO]
go
Select F1_METODO		AS METODO
,F1_URI	     	AS URI	      
,F1_STATUS	 	AS STATUS	  
,F1_URL	     	AS URL	      
,F1_USERAGENT	AS USERAGENT
,F1_COOKIE	 	AS COOKIE	  
,F1_BROWSER	 	AS BROWSER	  
,F1_QSTATUS	 	AS QSTATUS	  
,F1_SSTATUS	 	AS SSTATUS	  
,F1_MSTATUS	 	AS MSTATUS	  
,F1_LSTATUS	 	AS LSTATUS	  
,F2_ACAO	    AS ACAO	      
 

,F2_QREGRA	 	AS QREGRA	  
,F2_SREGRA	 	AS SREGRA	  
,F2_MREGRA	 	AS MREGRA	  
,F2_LREGRA    	AS LREGRA
into [FuzzySet].[dbo].[Filtro05L]
FROM [FuzzySet].[dbo].[Filtro05TEMPL]
go

--===========================================
--===========================================
--
-- Dia 28 de Novembro
--
--===========================================
--===========================================


-- ==================== 
-- === DROP DE TABELAS TEMPORÁRIAS
-- ==================== 
drop table [FuzzySet].[dbo].[Filtro05_1A]
drop table [FuzzySet].[dbo].[Filtro05_1B]
drop table [FuzzySet].[dbo].[Filtro05_1C]
drop table [FuzzySet].[dbo].[Filtro05_1D]
drop table [FuzzySet].[dbo].[Filtro05_1E]
drop table [FuzzySet].[dbo].[Filtro05_1F]
drop table [FuzzySet].[dbo].[Filtro05_1G]
drop table [FuzzySet].[dbo].[Filtro05_1H]
drop table [FuzzySet].[dbo].[Filtro05_1I]
drop table [FuzzySet].[dbo].[Filtro05_1J]
drop table [FuzzySet].[dbo].[Filtro05_1K]
drop table [FuzzySet].[dbo].[Filtro05_1L]

drop table [FuzzySet].[dbo].[Filtro05_2A]
drop table [FuzzySet].[dbo].[Filtro05_2B]
drop table [FuzzySet].[dbo].[Filtro05_2C]
drop table [FuzzySet].[dbo].[Filtro05_2D]
drop table [FuzzySet].[dbo].[Filtro05_2E]
drop table [FuzzySet].[dbo].[Filtro05_2F]
drop table [FuzzySet].[dbo].[Filtro05_2G]
drop table [FuzzySet].[dbo].[Filtro05_2H]
drop table [FuzzySet].[dbo].[Filtro05_2I]
drop table [FuzzySet].[dbo].[Filtro05_2J]
drop table [FuzzySet].[dbo].[Filtro05_2K]
drop table [FuzzySet].[dbo].[Filtro05_2L]

drop table [FuzzySet].[dbo].[Filtro21_1A]
drop table [FuzzySet].[dbo].[Filtro21_1B]
drop table [FuzzySet].[dbo].[Filtro21_1C]
drop table [FuzzySet].[dbo].[Filtro21_1D]
drop table [FuzzySet].[dbo].[Filtro21_1E]
drop table [FuzzySet].[dbo].[Filtro21_1F]
drop table [FuzzySet].[dbo].[Filtro21_1G]
drop table [FuzzySet].[dbo].[Filtro21_1H]
drop table [FuzzySet].[dbo].[Filtro21_1I]
drop table [FuzzySet].[dbo].[Filtro21_1J]
drop table [FuzzySet].[dbo].[Filtro21_1K]
drop table [FuzzySet].[dbo].[Filtro21_1L]

drop table [FuzzySet].[dbo].[Filtro21_2A]
drop table [FuzzySet].[dbo].[Filtro21_2B]
drop table [FuzzySet].[dbo].[Filtro21_2C]
drop table [FuzzySet].[dbo].[Filtro21_2D]
drop table [FuzzySet].[dbo].[Filtro21_2E]
drop table [FuzzySet].[dbo].[Filtro21_2F]
drop table [FuzzySet].[dbo].[Filtro21_2G]
drop table [FuzzySet].[dbo].[Filtro21_2H]
drop table [FuzzySet].[dbo].[Filtro21_2I]
drop table [FuzzySet].[dbo].[Filtro21_2J]
drop table [FuzzySet].[dbo].[Filtro21_2K]
drop table [FuzzySet].[dbo].[Filtro21_2L]

drop table [FuzzySet].[dbo].[Filtro21TEMPA]
drop table [FuzzySet].[dbo].[Filtro21TEMPB]
drop table [FuzzySet].[dbo].[Filtro21TEMPC]
drop table [FuzzySet].[dbo].[Filtro21TEMPD]
drop table [FuzzySet].[dbo].[Filtro21TEMPE]
drop table [FuzzySet].[dbo].[Filtro21TEMPF]
drop table [FuzzySet].[dbo].[Filtro21TEMPG]
drop table [FuzzySet].[dbo].[Filtro21TEMPH]
drop table [FuzzySet].[dbo].[Filtro21TEMPI]
drop table [FuzzySet].[dbo].[Filtro21TEMPJ]
drop table [FuzzySet].[dbo].[Filtro21TEMPK]
drop table [FuzzySet].[dbo].[Filtro21TEMPL]


drop table [FuzzySet].[dbo].[Filtro05TEMPA]
drop table [FuzzySet].[dbo].[Filtro05TEMPB]
drop table [FuzzySet].[dbo].[Filtro05TEMPC]
drop table [FuzzySet].[dbo].[Filtro05TEMPD]
drop table [FuzzySet].[dbo].[Filtro05TEMPE]
drop table [FuzzySet].[dbo].[Filtro05TEMPF]
drop table [FuzzySet].[dbo].[Filtro05TEMPG]
drop table [FuzzySet].[dbo].[Filtro05TEMPH]
drop table [FuzzySet].[dbo].[Filtro05TEMPI]
drop table [FuzzySet].[dbo].[Filtro05TEMPJ]
drop table [FuzzySet].[dbo].[Filtro05TEMPK]
drop table [FuzzySet].[dbo].[Filtro05TEMPL]
--============================================	  
--== Tabela FILTRO1 (com QSTATUS e SSTATUS)
--============================================
SELECT 
       [Metodo]
      ,[URI]
      ,[Status]
      ,[URL]
      ,[UserAgent]
      ,[Cookie]
	  ,[UserAgentBrowser]
	  ,count(*) as QSTATUS
	  ,sum (
				CASE 
					WHEN [WAFinfo] = '-' THEN 0
					WHEN [WAFinfo] IS NULL THEN 0
					ELSE 1 
				END) as SSTATUS
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
	  
--============================================	  
--== Tabela FILTRO2 (com QREGRA e SREGRA)
--============================================	  
  
SELECT 
      [Metodo]
      ,[URI]
      ,[Status]
      ,[URL]
      ,[UserAgent]
      ,[Cookie]
      ,[UserAgentBrowser]
      ,[Origem]
      ,[Acao]
      ,[Servico]
      ,[Informacao]
      ,[Produto]
	  ,count(*) as QREGRA
	  ,sum (
				CASE 
					WHEN [Regra] = '-' THEN 0
					WHEN [Regra] IS NULL THEN 0
					ELSE 1 
				END) as SREGRA
		into Filtrozxx		
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
      ,[Origem]
      ,[Acao]
      ,[Servico]
      ,[Informacao]
      ,[Produto]
	  
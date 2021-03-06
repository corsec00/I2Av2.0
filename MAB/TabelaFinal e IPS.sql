SELECT *
  FROM [dbo].[Nike-29] Nike
  LEFT JOIN  [dbo].[IPS-29]  IPS ON
	CAST([IPS].[i.Hora] AS TIME)	= CAST(Nike.Hora AS TIME)
	AND	IPS.[i.IP]				= Nike.IP
	order by cast(Nike.Hora as time)

-----------------------------
SELECT *
  FROM [dbo].[PF-27] PF
  LEFT JOIN  [dbo].[IPS-27]  IPS ON
	CAST([IPS].[i.Hora] AS TIME)	= CAST(PF.Hora AS TIME)
	AND	IPS.[i.IP]				= PF.IP
	order by cast(PF.Hora as time)



--SELECT *
--  FROM [Pronto].[dbo].[IPS_20Nov] IPS
--  INNER JOIN  [Pronto].[dbo].[Nike_20Nov] FINAL ON
--	--CAST(IPS.Data AS DATE)	= CAST(FINAL.Data AS DATE)
--	--AND	
--	CAST(IPS.Hora AS TIME)	= CAST(FINAL.Hora AS TIME)
--	AND	IPS.IP				= FINAL.IP
--	order by final.Hora


--SELECT *
--  FROM [Pronto].[dbo].[Nike_20Nov] Nike
--  LEFT JOIN  [Pronto].[dbo].[IPS_20Nov]  IPS ON
--	CAST([IPS].[i.Hora] AS TIME)	= CAST(Nike.Hora AS TIME)
--	AND	IPS.[i.IP]				= Nike.IP
--	order by Nike.Hora

SELECT *
  FROM [1Dez].[dbo].[05] WAF
  LEFT JOIN  [SQL.IPS05].[dbo].[IPS-05Dez]  IPS ON
	CAST([IPS].[i.Hora] AS TIME) = CAST(WAF.Hora AS TIME)
	AND	IPS.[i.IP] = WAF.IP
	order by CAST(WAF.Hora AS TIME)

set nocount on 
if OBJECT_ID('tempDb..#Return','U') IS NOT NULL
	DROP TABLE #Return
--if OBJECT_ID('tempDb..Final','U') IS NOT NULL
--	DROP TABLE Final
if OBJECT_ID('tempDb..Final','U') IS NOT NULL
 TRUNCATE TABLE FINAL 
if OBJECT_ID('tempDb..Final','U') IS NOT NULL
BEGIN	
	CREATE TABLE Final(
		ORDEM VARCHAR(20),
		ID int,
		[Data] [varchar](50) NULL,
		[Hora] [varchar](50) NULL,
		[IP] [varchar](50) NULL,
		[Metodo] [varchar](50) NULL,
		[URI] [varchar](1000) NULL,
		[Status] [varchar](50) NULL,
		[Bytes] [varchar](50) NULL,
		[Tempo] [varchar](50) NULL,
		[UserAgent] [varchar](50) NULL,
		[Cookie] [varchar](50) NULL,
		[WAFinfo] [varchar](50) NULL
	) 
END
CREATE TABLE #Return(
	ID INT IDENTITY (1,1) ,
	[Data] [varchar](50) NULL,
	[Hora] [varchar](50) NULL, 
	[IP] [varchar](50) NULL,
	[Metodo] [varchar](50) NULL,
	[URI] [varchar](1000) NULL,
	[Status] [varchar](50) NULL,
	[Bytes] [varchar](50) NULL,
	[Tempo] [varchar](50) NULL,
	[UserAgent] [varchar](50) NULL,
	[Cookie] [varchar](50) NULL,
	[WAFinfo] [varchar](50) NULL
) 
INSERT INTO #Return
select  Data,Hora,IP,Metodo,URI,Status,Bytes,Tempo,UserAgent,Cookie,WAFinfo From  [dbo].[Nike_22] where WAFinfo = 'Bad Robots' or WAFinfo = 'DDoS' or  WAFinfo = 'Injection' or WAFinfo = 'Remote Access' or WAFinfo = 'Scan' or WAFinfo = 'XSS' or WAFinfo = 'Leak' or wafinfo = 'Protocol Violations'
declare @id int
while exists (select 1 from #Return)
begin 
	select @id = min (id) from #Return
	print @id
	declare @datahora datetime = null
	select @datahora = CAST(Data + ' ' + Hora as DATETIME) from #Return where id = @id

	INSERT INTO Final
	SELECT 'A-ANTES',@id,Data,Hora,IP,Metodo,URI,Status,Bytes,Tempo,UserAgent,Cookie,WAFinfo from  [dbo].[Nike_22] 
	WHERE CAST(Data + ' ' + Hora as DATETIME) between dateadd(second,-2,@datahora) and @datahora
	INSERT INTO Final
	SELECT 'B-ORIGINAL',@id,Data,Hora,IP,Metodo,URI,Status,Bytes,Tempo,UserAgent,Cookie,WAFinfo from #Return
	WHERE id = @id
	INSERT INTO Final
	SELECT 'C-DEPOIS',@id,Data,Hora,IP,Metodo,URI,Status,Bytes,Tempo,UserAgent,Cookie,WAFinfo from  [dbo].[Nike_22] 
	WHERE CAST(Data + ' ' + Hora as DATETIME) between  @datahora and dateadd(second,2,@datahora)
	delete from #Return where ID = @id
end 
--select * From Final order by ID, ordem

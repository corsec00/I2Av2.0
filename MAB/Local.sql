-- 29B estão com os dados do dia 28 já transferidos

DELETE FROM [2DNov].[dbo].[PF.11-30] WHERE DATA LIKE '#%' or DATA LIKE '2014-11-30';
-- or DATA LIKE '2014-11-26' or DATA LIKE '2014-11-25';
go
---------------------USERAGENTBROWSER v2
UPDATE [2DNov].[dbo].[PF.11-30] SET UserAgentBrowser ='IE' WHERE UserAgent LIKE '%MSIE%' or UserAgent LIKE '%Windows Phone%';
UPDATE [2DNov].[dbo].[PF.11-30] SET UserAgentBrowser ='CHROME' WHERE UserAgent LIKE '%Chrome%';
go
UPDATE [2DNov].[dbo].[PF.11-30] SET UserAgentBrowser ='OFFICE' WHERE UserAgent LIKE '%Microsoft Office%';
UPDATE [2DNov].[dbo].[PF.11-30] SET UserAgentBrowser ='THUNDERBIRD' WHERE UserAgent LIKE '%Thunderbird%';
go
UPDATE [2DNov].[dbo].[PF.11-30] SET UserAgentBrowser ='FIREFOX' WHERE UserAgent LIKE '%Firefox%';
UPDATE [2DNov].[dbo].[PF.11-30] SET UserAgentBrowser ='ANDROIDBROWSER' WHERE UserAgent LIKE '%Android%';
go
UPDATE [2DNov].[dbo].[PF.11-30] SET UserAgentBrowser ='SAFARI' WHERE UserAgent LIKE '%AppleWebKit%' or UserAgent LIKE '"Mozilla/5.0 (BlackBerry; U; BlackBerry%' or UserAgent LIKE '"Mozilla/5.0 (iPod%' or UserAgent LIKE '"Mozilla/5.0 (iPad%' or UserAgent LIKE '"Mozilla/5.0 (iPhone%';
go
DBCC SHRINKDATABASE ([2DNov]);

--select distinct data from [dbo].[PF.11-28B]
--select distinct UserAgentBrowser from [dbo].[PF.11-28B]



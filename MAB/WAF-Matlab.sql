---------------------USERAGENTBROWSER v3
-- CHROME	0
-- FIREFOX	1
-- IE		2
-- OTHERS	3
-- SAFARI	4
-- ANDROID	5
-- THUNDERBIRD	6
UPDATE [1Dez].[dbo].[05] SET UserAgentBrowser ='2' WHERE UserAgent LIKE '%MSIE%' or UserAgent LIKE '%Windows Phone%';
UPDATE [1Dez].[dbo].[05] SET UserAgentBrowser ='5' WHERE UserAgent LIKE '%Android%';
UPDATE [1Dez].[dbo].[05] SET UserAgentBrowser ='0' WHERE UserAgent LIKE '%Chrome%';
UPDATE [1Dez].[dbo].[05] SET UserAgentBrowser ='1' WHERE UserAgent LIKE '%Firefox%';
UPDATE [1Dez].[dbo].[05] SET UserAgentBrowser ='6' WHERE UserAgent LIKE '%Thunderbird%';
UPDATE [1Dez].[dbo].[05] SET UserAgentBrowser ='4' WHERE UserAgent LIKE '%AppleWebKit%' or UserAgent LIKE '"Mozilla/5.0 (iPod%' or UserAgent LIKE '"Mozilla/5.0 (iPad%' or UserAgent LIKE '"Mozilla/5.0 (iPhone%';
UPDATE [1Dez].[dbo].[05] SET UserAgentBrowser ='3' WHERE UserAgent LIKE '%Microsoft Office%' or UserAgent LIKE '"Mozilla/5.0 (BlackBerry; U; BlackBerry%' 
go
---------------------WAFINFO
UPDATE [1Dez].[dbo].[05] SET WAFINFO ='EXT' WHERE WAFINFO LIKE '%950006%' or WAFINFO LIKE '%959006%' or WAFINFO LIKE '%959908%' or WAFINFO LIKE '%950908%' or WAFINFO LIKE '%950001%' or WAFINFO LIKE '%950007%' or WAFINFO LIKE '%950907%' or WAFINFO LIKE '%959907%' or WAFINFO LIKE '%959010%' or WAFINFO LIKE '%970904%' OR WAFINFO LIKE '%IPBLOCK%' or WAFINFO LIKE '%959005%' or WAFINFO LIKE '%699993%' or WAFINFO LIKE '%699999%' or WAFINFO LIKE '%699995%' or WAFINFO LIKE '%990011%' or WAFINFO LIKE '%699990%' or WAFINFO LIKE '%950922%' or WAFINFO LIKE '%950005%' or WAFINFO LIKE '"REPF_11547|960018|"';
UPDATE [1Dez].[dbo].[05] SET WAFINFO ='PROT' WHERE WAFINFO LIKE '%960009%' OR WAFINFO LIKE '%970901%' OR WAFINFO LIKE '%960904%'OR WAFINFO LIKE '%960011%' or WAFINFO LIKE '%960010%' OR WAFINFO LIKE '%960032%' or WAFINFO LIKE '%960035%' or WAFINFO LIKE '%960038%' or WAFINFO LIKE '%960912%' or WAFINFO LIKE '%950107%' or WAFINFO LIKE '%960012%' or WAFINFO LIKE '%960901%' or WAFINFO LIKE '%950911%';
UPDATE [1Dez].[dbo].[05] SET WAFINFO ='BROW' WHERE WAFINFO LIKE '%699996%' or WAFINFO LIKE '%950004%' or WAFINFO LIKE '%959004%' or WAFinfo LIKE '%959018%' or WAFINFO LIKE '%970013%' or WAFINFO LIKE '%970004%' or WAFINFO LIKE '%970902%' or WAFINFO LIKE '%970903%' or WAFinfo LIKE '%970016%';
UPDATE [1Dez].[dbo].[05] SET WAFINFO ='' WHERE WAFINFO LIKE '"-"' or WAFINFO LIKE '"REPF_11547||"';
go
---------------------USERAGENT v3
-- ANDROID	0
-- LINUX	1
-- MACOS	2
-- OTHERS	3
-- WINDOWS	4
-- ANDROID	5
UPDATE [1Dez].[dbo].[05] SET UserAgent ='4' WHERE UserAgent LIKE '%(Windows%';
UPDATE [1Dez].[dbo].[05] SET UserAgent ='1' WHERE UserAgent LIKE '%Linux%' ;
UPDATE [1Dez].[dbo].[05] SET UserAgent ='2' WHERE UserAgent LIKE '%Macintosh%' or UserAgent LIKE '"Mozilla/5.0 (iPod%' or UserAgent LIKE '"Mozilla/5.0 (iPad%' or UserAgent LIKE '"Mozilla/5.0 (iPhone%';
UPDATE [1Dez].[dbo].[05] SET UserAgent ='5' WHERE UserAgent LIKE '%Android%' or UserAgent LIKE '%Mobile%';
UPDATE [1Dez].[dbo].[05] SET UserAgent ='3' WHERE UserAgent LIKE '"%';
go
-----------------------COOKIE  
-- NAO	0
-- SIM	1
--UPDATE [1Dez].[dbo].[05] SET COOKIE='0' WHERE COOKIE LIKE '"-"';
--UPDATE [1Dez].[dbo].[05] SET COOKIE ='1' WHERE COOKIE not LIKE '0';
go
---------------------URI
-- ARQ	0
-- IMG	1
-- OTHERS	2
-- WEB	3
UPDATE [1Dez].[dbo].[05] SET URI ='0' WHERE URI LIKE '%.TXT%' or URI LIKE '%LOG%' or URI LIKE '%INI%' or URI LIKE '%.ZIP' or URI LIKE '%.RAR';
UPDATE [1Dez].[dbo].[05] SET URI ='1' WHERE URI LIKE '%.GIF%' or URI LIKE '%.JPG%' or URI LIKE '%.JPEG%' or URI LIKE '%.PNG%' or URI LIKE '%.SWF%' or URI LIKE '%.ICO%';
UPDATE [1Dez].[dbo].[05] SET URI ='2' WHERE URI LIKE '%DYNATRACEMONITOR%' or URI LIKE '%/BLACKFRIDAY&%' or URI LIKE '%CF%' or URI LIKE '%GIGYA%' or URI LIKE '%EOT%' or URI LIKE '%SGV%' or URI LIKE '%OGG%' or URI LIKE '%TTF%' or URI LIKE '/PRICE.%' or URI LIKE '%sli.%' or URI LIKE '/BUSCA.%' or URI LIKE '%MDB%' or URI LIKE '%ROBOTS.TXT' or URI LIKE '%LIVEPRICE%' or URI LIKE '%?FILTRO=%' or URI LIKE '%WOFF%' or URI LIKE '%CONF%' or URI LIKE '%CFG%';
UPDATE [1Dez].[dbo].[05] SET URI ='3' WHERE URI LIKE '%.HTM%' or URI LIKE '%.JS%' or URI LIKE '%.PHP%' or URI LIKE '%.ASHX%' or URI LIKE '%.HTML%' or URI LIKE '%.AXD%' or URI LIKE '%.CSS%' or URI LIKE '%.SHTML%' or URI LIKE '%/FGTAUTH?%' or URI LIKE '%/SEARCH?%' or URI LIKE '%PHTML%' or URI LIKE '%CGI%' or URI LIKE '%EXE%' or URI LIKE '%PL%' or URI LIKE '%CAMPAIGN=LOMADEE%' or URI LIKE '%XML%' or URI LIKE '%.ASPX%' or URI LIKE '%.ASP%' or URI like '/%';
go
---------------------URL
-- LOJA	0
-- MKT	1
-- REDESOCIAL	2
-- BUSCADOR	3
UPDATE [1Dez].[dbo].[05] SET URL ='0' WHERE URL LIKE '%pontofrio.com.br/%' OR URL LIKE '%.pontofrio.com.br%' OR URL LIKE '%pontofrio-imagens.com.br%';
UPDATE [1Dez].[dbo].[05] SET URL ='2' WHERE URL LIKE '%://API.TWITTER%'  OR URL LIKE '%TUMBLR.%' OR URL LIKE '%WORDPRESS%' OR URL LIKE '%FLICKR%' OR URL LIKE '%PINTEREST.COM%' OR URL LIKE '%://M.FACEBOOK.COM%' OR URL LIKE '%.FACEBOOK.COM%' OR URL LIKE '%BLOG%';
UPDATE [1Dez].[dbo].[05] SET URL ='3' WHERE URL LIKE '%.BAIDU.C%' OR URL LIKE '%BAIXOU.COM.BR%' OR URL LIKE '%ASK.COM%' OR URL LIKE '%LOCALHOST%' OR URL LIKE '%CHROME://%' OR URL LIKE '%FBAPP:%' OR URL LIKE '%HR0CDOVL3D3DY56B29TLMNV%' or URL like '%stream://%' or URL LIKE '%thismessage:%' OR URL LIKE '%UOL.%' OR URL LIKE '%ALIBABA.COM%' OR URL LIKE '%BONDFARO%' OR URL LIKE '%://WWW.ZOOM.%' OR URL LIKE '%://EMAIL.BUSCADESCONTOS%' OR URL LIKE '%://BUSCA.VIVO%' or URL LIKE '%://BUSCA.UOL%' OR URL LIKE '"%.GOOGLE.%' OR URL LIKE '%BING%' OR URL LIKE '%SEARCH.YAHOO%';
UPDATE [1Dez].[dbo].[05] SET URL ='1' WHERE URL LIKE '"%'; 
go
---------------------STATUS
-- Definições: 
--Sem Informação	=0
--Informativa		=1
--Sucesso			=2
--Redirecionamento	=3
--Erro de cliente	=4
--outros erros		=5
UPDATE [dbo].[05] SET STATUS ='0' WHERE STATUS LIKE '00%';
UPDATE [dbo].[05] SET STATUS ='1' WHERE STATUS LIKE '10%';
UPDATE [dbo].[05] SET STATUS ='2' WHERE STATUS LIKE '20%';
UPDATE [dbo].[05] SET STATUS ='3' WHERE STATUS LIKE '30%';
UPDATE [dbo].[05] SET STATUS ='4' WHERE STATUS LIKE '4%'; 
UPDATE [dbo].[05] SET STATUS ='5' WHERE STATUS LIKE '50%'; 
go
---------------------METODO
-- GET	0
-- HEAD	1
-- POST	2
-- PUT	3
-- OPTI	4
UPDATE [dbo].[05] SET METODO ='0' WHERE METODO LIKE 'GET';
UPDATE [dbo].[05] SET METODO ='1' WHERE METODO LIKE 'HEAD';
UPDATE [dbo].[05] SET METODO ='4' WHERE METODO LIKE 'OPTIONS';
UPDATE [dbo].[05] SET METODO ='2' WHERE METODO LIKE 'POST'; 
UPDATE [dbo].[05] SET METODO ='3' WHERE METODO LIKE 'PUT'; 
go
DBCC SHRINKDATABASE ([1Dez]);
select distinct UserAgentBrowser from [1Dez].[dbo].[05]
select distinct WAFINFO from [1Dez].[dbo].[05]
select distinct UserAgent from [1Dez].[dbo].[05]
select distinct COOKIE from [1Dez].[dbo].[05]
select distinct URI from [1Dez].[dbo].[05]
select distinct URL from [1Dez].[dbo].[05]
select distinct STATUS from [1Dez].[dbo].[05]
select distinct METODO from [1Dez].[dbo].[05]



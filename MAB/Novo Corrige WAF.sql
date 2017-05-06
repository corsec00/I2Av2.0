--===================04 de Dezembro de 2014=====================
---------------------USERAGENTBROWSER v2
UPDATE [1Dez].[dbo].[04] SET UserAgentBrowser ='IE' WHERE UserAgent LIKE '%MSIE%' or UserAgent LIKE '%Windows Phone%';
UPDATE [1Dez].[dbo].[04] SET UserAgentBrowser ='CHROME' WHERE UserAgent LIKE '%Chrome%';
UPDATE [1Dez].[dbo].[04] SET UserAgentBrowser ='OFFICE' WHERE UserAgent LIKE '%Microsoft Office%';
UPDATE [1Dez].[dbo].[04] SET UserAgentBrowser ='THUNDERBIRD' WHERE UserAgent LIKE '%Thunderbird%';
UPDATE [1Dez].[dbo].[04] SET UserAgentBrowser ='FIREFOX' WHERE UserAgent LIKE '%Firefox%';
UPDATE [1Dez].[dbo].[04] SET UserAgentBrowser ='ANDROIDBROWSER' WHERE UserAgent LIKE '%Android%';
UPDATE [1Dez].[dbo].[04] SET UserAgentBrowser ='SAFARI' WHERE UserAgent LIKE '%AppleWebKit%' or UserAgent LIKE '"Mozilla/5.0 (BlackBerry; U; BlackBerry%' or UserAgent LIKE '"Mozilla/5.0 (iPod%' or UserAgent LIKE '"Mozilla/5.0 (iPad%' or UserAgent LIKE '"Mozilla/5.0 (iPhone%';
go
---------------------WAFINFO
UPDATE [1Dez].[dbo].[04] SET WAFINFO ='EXT' WHERE WAFINFO LIKE '%950006%' or WAFINFO LIKE '%959006%' or WAFINFO LIKE '%959908%' or WAFINFO LIKE '%950908%' or WAFINFO LIKE '%950001%' or WAFINFO LIKE '%950007%' or WAFINFO LIKE '%950907%' or WAFINFO LIKE '%959907%' or WAFINFO LIKE '%959010%' or WAFINFO LIKE '%970904%' OR WAFINFO LIKE '%IPBLOCK%' or WAFINFO LIKE '%959005%' or WAFINFO LIKE '%699993%' or WAFINFO LIKE '%699999%' or WAFINFO LIKE '%699995%' or WAFINFO LIKE '%990011%' or WAFINFO LIKE '%699990%' or WAFINFO LIKE '%950922%' or WAFINFO LIKE '%950005%';
UPDATE [1Dez].[dbo].[04] SET WAFINFO ='PROT' WHERE WAFINFO LIKE '%960009%' OR WAFINFO LIKE '%970901%' OR WAFINFO LIKE '%960904%'OR WAFINFO LIKE '%960011%' or WAFINFO LIKE '%960010%' OR WAFINFO LIKE '%960032%' or WAFINFO LIKE '%960035%' or WAFINFO LIKE '%960038%' or WAFINFO LIKE '%960912%' or WAFINFO LIKE '%950107%' or WAFINFO LIKE '%960012%' or WAFINFO LIKE '%960901%' or WAFINFO LIKE '%950911%';
UPDATE [1Dez].[dbo].[04] SET WAFINFO ='BROW' WHERE WAFINFO LIKE '%699996%' or WAFINFO LIKE '%950004%' or WAFINFO LIKE '%959004%' or WAFinfo LIKE '%959018%' or WAFINFO LIKE '%970013%' or WAFINFO LIKE '%970004%' or WAFINFO LIKE '%970902%' or WAFINFO LIKE '%970903%' or WAFinfo LIKE '%970016%';
UPDATE [1Dez].[dbo].[04] SET WAFINFO ='' WHERE WAFINFO LIKE '"-"' or WAFINFO LIKE '"REPF_11547||"';
go
---------------------USERAGENT v2
UPDATE [1Dez].[dbo].[04] SET UserAgent ='WINDOWS' WHERE UserAgent LIKE '%(Windows%';
UPDATE [1Dez].[dbo].[04] SET UserAgent ='LINUX' WHERE UserAgent LIKE '%Linux%' ;
UPDATE [1Dez].[dbo].[04] SET UserAgent ='MACOS' WHERE UserAgent LIKE '%Macintosh%' or UserAgent LIKE '"Mozilla/5.0 (iPod%' or UserAgent LIKE '"Mozilla/5.0 (iPad%' or UserAgent LIKE '"Mozilla/5.0 (iPhone%';
UPDATE [1Dez].[dbo].[04] SET UserAgent ='ANDROID' WHERE UserAgent LIKE '%Android%' or UserAgent LIKE '%Mobile%';
UPDATE [1Dez].[dbo].[04] SET UserAgent ='OUTROS' WHERE UserAgent LIKE '"%';
go
-----------------------COOKIE  
UPDATE [1Dez].[dbo].[04] SET COOKIE ='NAO' WHERE COOKIE LIKE '"-"';
UPDATE [1Dez].[dbo].[04] SET COOKIE ='SIM' WHERE COOKIE LIKE '"IPI%' or COOKIE LIKE '"__%' or COOKIE LIKE '"TMS%' or COOKIE LIKE '"dt%' or COOKIE LIKE '"mbox%'
go
---------------------URI
UPDATE [1Dez].[dbo].[04] SET URI ='ARQ' WHERE URI LIKE '%.TXT%' or URI LIKE '%LOG%' or URI LIKE '%INI%' or URI LIKE '%.ZIP' or URI LIKE '%.RAR';
UPDATE [1Dez].[dbo].[04] SET URI ='IMG' WHERE URI LIKE '%.GIF%' or URI LIKE '%.JPG%' or URI LIKE '%.JPEG%' or URI LIKE '%.PNG%' or URI LIKE '%.SWF%' or URI LIKE '%.ICO%';
UPDATE [1Dez].[dbo].[04] SET URI ='OUTROS' WHERE URI LIKE '%DYNATRACEMONITOR%' or URI LIKE '%/BLACKFRIDAY&%' or URI LIKE '%CF%' or URI LIKE '%GIGYA%' or URI LIKE '%EOT%' or URI LIKE '%SGV%' or URI LIKE '%OGG%' or URI LIKE '%TTF%' or URI LIKE '/PRICE.%' or URI LIKE '%sli.%' or URI LIKE '/BUSCA.%' or URI LIKE '%MDB%' or URI LIKE '%ROBOTS.TXT' or URI LIKE '%LIVEPRICE%' or URI LIKE '%?FILTRO=%' or URI LIKE '%WOFF%' or URI LIKE '%CONF%' or URI LIKE '%CFG%';
UPDATE [1Dez].[dbo].[04] SET URI ='WEB' WHERE URI LIKE '%.HTM%' or URI LIKE '%.JS%' or URI LIKE '%.PHP%' or URI LIKE '%.ASHX%' or URI LIKE '%.HTML%' or URI LIKE '%.AXD%' or URI LIKE '%.CSS%' or URI LIKE '%.SHTML%' or URI LIKE '%/FGTAUTH?%' or URI LIKE '%/SEARCH?%' or URI LIKE '%PHTML%' or URI LIKE '%CGI%' or URI LIKE '%EXE%' or URI LIKE '%PL%' or URI LIKE '%CAMPAIGN=LOMADEE%' or URI LIKE '%XML%' or URI LIKE '%.ASPX%' or URI LIKE '%.ASP%' or URI like '/%';
go
---------------------URL
UPDATE [1Dez].[dbo].[04] SET URL ='LOJA' WHERE URL LIKE '%pontofrio.com.br/%' OR URL LIKE '%.pontofrio.com.br%' OR URL LIKE '%pontofrio-imagens.com.br%';
UPDATE [1Dez].[dbo].[04] SET URL ='REDESOCIAL' WHERE URL LIKE '%://API.TWITTER%'  OR URL LIKE '%TUMBLR.%' OR URL LIKE '%WORDPRESS%' OR URL LIKE '%FLICKR%' OR URL LIKE '%PINTEREST.COM%' OR URL LIKE '%://M.FACEBOOK.COM%' OR URL LIKE '%.FACEBOOK.COM%' OR URL LIKE '%BLOG%';
UPDATE [1Dez].[dbo].[04] SET URL ='BUSCADOR' WHERE URL LIKE '%.BAIDU.C%' OR URL LIKE '%BAIXOU.COM.BR%' OR URL LIKE '%ASK.COM%' OR URL LIKE '%LOCALHOST%' OR URL LIKE '%CHROME://%' OR URL LIKE '%FBAPP:%' OR URL LIKE '%HR0CDOVL3D3DY56B29TLMNV%' or URL like '%stream://%' or URL LIKE '%thismessage:%' OR URL LIKE '%UOL.%' OR URL LIKE '%ALIBABA.COM%' OR URL LIKE '%BONDFARO%' OR URL LIKE '%://WWW.ZOOM.%' OR URL LIKE '%://EMAIL.BUSCADESCONTOS%' OR URL LIKE '%://BUSCA.VIVO%' or URL LIKE '%://BUSCA.UOL%' OR URL LIKE '"%.GOOGLE.%' OR URL LIKE '%BING%' OR URL LIKE '%SEARCH.YAHOO%';
UPDATE [1Dez].[dbo].[04] SET URL ='MKT' WHERE URL LIKE '"%'; 
go
DBCC SHRINKDATABASE (1Dez);
go
---------------------Resto de Cookies
Select distinct cookie from [1Dez].[dbo].[04]
Select distinct cookie from [1Dez].[dbo].[05]
Select distinct cookie from [1Dez].[dbo].[06]
Select distinct cookie from [2BNov].[dbo].[28]
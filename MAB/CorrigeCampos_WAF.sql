UPDATE [dbo].[PF05.10-16] SET COOKIE ='NAO' WHERE COOKIE LIKE '"-"';
UPDATE [dbo].[PF05.10-16] SET USERAGENT ='NAO' WHERE USERAGENT LIKE '"-"';
GO
UPDATE [dbo].[PF05.10-16] SET USERAGENT ='SIM' WHERE USERAGENT LIKE '"%';
DBCC SHRINKDATABASE (WAF);
UPDATE [dbo].[PF05.10-16] SET COOKIE ='SIM' WHERE COOKIE LIKE '"%';
GO
UPDATE [dbo].[PF05.10-16] SET WAFINFO = REPLACE(WAFINFO, '"-"', '');
UPDATE [dbo].[PF05.10-16] SET WAFINFO ='INJECTION' WHERE WAFINFO LIKE '%950006%' or WAFINFO LIKE '%959006%' or WAFINFO LIKE '%959908%' or WAFINFO LIKE '%950908%' or WAFINFO LIKE '%950001%' or WAFINFO LIKE '%950007%' or WAFINFO LIKE '%950907%' or WAFINFO LIKE '%959907%' or WAFINFO LIKE '%959010%';;
UPDATE [dbo].[PF05.10-16] SET WAFINFO ='DDOS' WHERE WAFINFO LIKE '%970904%' OR WAFINFO LIKE '%IPBLOCK%' or WAFINFO LIKE '%959005%' or WAFINFO LIKE '%699993%' or WAFINFO LIKE '%699999%' or WAFINFO LIKE '%699995%';
UPDATE [dbo].[PF05.10-16] SET WAFINFO ='PROTOCOL ANOMALIES' WHERE WAFINFO LIKE '%960009%' OR WAFINFO LIKE '%970901%' OR WAFINFO LIKE '%960904%'OR WAFINFO LIKE '%960011%';
UPDATE [dbo].[PF05.10-16] SET WAFINFO ='HTTP POLICY' WHERE WAFINFO LIKE '%960010%' OR WAFINFO LIKE '%960032%' or WAFINFO LIKE '%960035%' or WAFINFO LIKE '%960038%';
UPDATE [dbo].[PF05.10-16] SET WAFINFO ='SCAN' WHERE WAFINFO LIKE '%699996%';
UPDATE [dbo].[PF05.10-16] SET WAFINFO ='XSS' WHERE WAFINFO LIKE '%950004%' or WAFINFO LIKE '%959004%' or WAFinfo LIKE '%959018%';
UPDATE [dbo].[PF05.10-16] SET WAFINFO ='LEAK' WHERE WAFINFO LIKE '%970013%' or WAFINFO LIKE '%970004%' or WAFINFO LIKE '%970902%' or WAFINFO LIKE '%970903%' or WAFinfo LIKE '%970016%';
UPDATE [dbo].[PF05.10-16] SET WAFINFO ='PROTOCOL VIOLATIONS' WHERE WAFINFO LIKE '%960912%' or WAFINFO LIKE '%950107%' or WAFINFO LIKE '%960012%' or WAFINFO LIKE '%960901%';
UPDATE [dbo].[PF05.10-16] SET WAFINFO ='REMOTE ACCESS' WHERE WAFINFO LIKE '%950005%';
UPDATE [dbo].[PF05.10-16] SET WAFINFO ='BAD ROBOTS' WHERE WAFINFO LIKE '%990011%';
UPDATE [dbo].[PF05.10-16] SET WAFINFO ='ANONYMOUS PROXY' WHERE WAFINFO LIKE '%699990%';
UPDATE [dbo].[PF05.10-16] SET WAFINFO ='HTTP RESPONSE SPLITTING' WHERE WAFINFO LIKE '%950911%';
UPDATE [dbo].[PF05.10-16] SET WAFINFO ='TROJAN' WHERE WAFINFO LIKE '%950922%';



UPDATE [dbo].[PF05.10-16] SET WAFINFO ='' WHERE WAFINFO LIKE '"REEX_%' OR WAFINFO LIKE '"NKCR_%' OR WAFINFO LIKE '"REPF_%';

GO
UPDATE [dbo].[PF05.10-16] SET URI ='ROBOTS' WHERE URI LIKE '%ROBOTS.TXT';
UPDATE [dbo].[PF05.10-16] SET URI ='TXT' WHERE URI LIKE '%.TXT%';
UPDATE [dbo].[PF05.10-16] SET URI ='GIF' WHERE URI LIKE '%.GIF%';
UPDATE [dbo].[PF05.10-16] SET URI ='JPG' WHERE URI LIKE '%.JPG%' or URI LIKE '%.JPEG%';
UPDATE [dbo].[PF05.10-16] SET URI ='PNG' WHERE URI LIKE '%.PNG%';
UPDATE [dbo].[PF05.10-16] SET URI ='HTML' WHERE URI LIKE '%.HTM%';
UPDATE [dbo].[PF05.10-16] SET URI ='JS' WHERE URI LIKE '%.JS%';
UPDATE [dbo].[PF05.10-16] SET URI ='ICO' WHERE URI LIKE '%.ICO%';
UPDATE [dbo].[PF05.10-16] SET URI ='PHP' WHERE URI LIKE '%.PHP%';
UPDATE [dbo].[PF05.10-16] SET URI ='ASHX' WHERE URI LIKE '%.ASHX%';
UPDATE [dbo].[PF05.10-16] SET URI ='MONITOR' WHERE URI LIKE '%DYNATRACEMONITOR%';
UPDATE [dbo].[PF05.10-16] SET URI ='HTML' WHERE URI LIKE '%.HTML%';
UPDATE [dbo].[PF05.10-16] SET URI ='AXD' WHERE URI LIKE '%.AXD%';
UPDATE [dbo].[PF05.10-16] SET URI ='LIVEPRICE' WHERE URI LIKE '%LIVEPRICE%';
UPDATE [dbo].[PF05.10-16] SET URI ='PRODUTO' WHERE URI LIKE '%?FILTRO=%';
UPDATE [dbo].[PF05.10-16] SET URI ='FALSH' WHERE URI LIKE '%.SWF%';
UPDATE [dbo].[PF05.10-16] SET URI ='PROMOCAO' WHERE URI LIKE '%/BLACKFRIDAY&%';
UPDATE [dbo].[PF05.10-16] SET URI ='CSS' WHERE URI LIKE '%.CSS%';
UPDATE [dbo].[PF05.10-16] SET URI ='SHTML' WHERE URI LIKE '%.SHTML%';
UPDATE [dbo].[PF05.10-16] SET URI ='REDIRECT' WHERE URI LIKE '%/FGTAUTH?%';
UPDATE [dbo].[PF05.10-16] SET URI ='SEARCH' WHERE URI LIKE '%/SEARCH?%';
UPDATE [dbo].[PF05.10-16] SET URI ='WOFF' WHERE URI LIKE '%WOFF%';
UPDATE [dbo].[PF05.10-16] SET URI ='LOG' WHERE URI LIKE '%LOG%';
UPDATE [dbo].[PF05.10-16] SET URI ='CONFIG' WHERE URI LIKE '%CONF%' or URI LIKE '%CFG%';
UPDATE [dbo].[PF05.10-16] SET URI ='BANCO DE DADOS' WHERE URI LIKE '%MDB%';
UPDATE [dbo].[PF05.10-16] SET URI ='PHTML' WHERE URI LIKE '%PHTML%';
UPDATE [dbo].[PF05.10-16] SET URI ='CGI' WHERE URI LIKE '%CGI%';
UPDATE [dbo].[PF05.10-16] SET URI ='EXE' WHERE URI LIKE '%EXE%';
UPDATE [dbo].[PF05.10-16] SET URI ='INI' WHERE URI LIKE '%INI%';
UPDATE [dbo].[PF05.10-16] SET URI ='PERL' WHERE URI LIKE '%PL%';
UPDATE [dbo].[PF05.10-16] SET URI ='COLDFUSION' WHERE URI LIKE '%CF%';
UPDATE [dbo].[PF05.10-16] SET URI ='GIGYA' WHERE URI LIKE '%GIGYA%';
UPDATE [dbo].[PF05.10-16] SET URI ='ASPX(LOMADEE)' WHERE URI LIKE '%CAMPAIGN=LOMADEE%';
UPDATE [dbo].[PF05.10-16] SET URI ='XML' WHERE URI LIKE '%XML%';
UPDATE [dbo].[PF05.10-16] SET URI ='ZIP' WHERE URI LIKE '%.ZIP';
UPDATE [dbo].[PF05.10-16] SET URI ='RAR' WHERE URI LIKE '%.RAR';
UPDATE [dbo].[PF05.10-16] SET URI ='EOT' WHERE URI LIKE '%EOT%';
UPDATE [dbo].[PF05.10-16] SET URI ='SVG' WHERE URI LIKE '%SGV%';
UPDATE [dbo].[PF05.10-16] SET URI ='MIDIA' WHERE URI LIKE '%OGG%';
UPDATE [dbo].[PF05.10-16] SET URI ='FONTE' WHERE URI LIKE '%TTF%';
UPDATE [dbo].[PF05.10-16] SET URI ='ASPX' WHERE URI LIKE '%.ASPX%';
UPDATE [dbo].[PF05.10-16] SET URI ='ASP' WHERE URI LIKE '%.ASP%';
go
UPDATE [dbo].[PF05.10-16] SET URI ='PESQUISAS' WHERE URI LIKE '/PRICE.%' or URI LIKE '%sli.%' or URI LIKE '/BUSCA.%';
GO
UPDATE [dbo].[PF05.10-16] SET URL ='EXTRA WWW' WHERE URL LIKE '%://WWW.EXTRA.COM%';
UPDATE [dbo].[PF05.10-16] SET URL ='EXTRA ADMIN' WHERE URL LIKE '%ADMIN.EXTRA.COM.BR%';
UPDATE [dbo].[PF05.10-16] SET URL ='EXTRA BUSCA' WHERE URL LIKE '%BUSCANDO.EXTRA.COM.BR%' or URL LIKE '%BUSCA.EXTRA.COM.BR%';
UPDATE [dbo].[PF05.10-16] SET URL ='EXTRA DELIVERY' WHERE URL LIKE '%.DELIVERYEXTRA.%';
UPDATE [dbo].[PF05.10-16] SET URL ='EXTRA CARRINHO' WHERE URL LIKE '%CARRINHO.EXTRA.COM.BR%';
UPDATE [dbo].[PF05.10-16] SET URL ='EXTRA COMUNICADO' WHERE URL LIKE '%COMUNICADO.EXTRA.COM.BR%';
UPDATE [dbo].[PF05.10-16] SET URL ='EXTRA NEWS' WHERE URL LIKE '%NEWS.EXTRA.COM%';
UPDATE [dbo].[PF05.10-16] SET URL ='EXTRA ATENDIMENTO' WHERE URL LIKE '%ATENDIMENTO.EXTRA.COM.BR%';
UPDATE [dbo].[PF05.10-16] SET URL ='EXTRA IMAGENS' WHERE URL LIKE '%EXTRA-IMAGENS.%' or URL LIKE '%IMAGENS.EXTRA%';
UPDATE [dbo].[PF05.10-16] SET URL ='EXTRA PRECO' WHERE URL LIKE '%PRICE.EXTRA.COM.BR%';
UPDATE [dbo].[PF05.10-16] SET URL ='EXTRA MOBILE' WHERE URL LIKE '%M.EXTRA.%' or URL LIKE '%MOBI.EXTRA.%';
UPDATE [dbo].[PF05.10-16] SET URL ='EXTRA CHAT' WHERE URL LIKE '%CHAT.EXTRA%';
UPDATE [dbo].[PF05.10-16] SET URL ='EXTRA PRODUTO' WHERE URL LIKE '%PRODUTO.EXTRA.COM.BR%';
UPDATE [dbo].[PF05.10-16] SET URL ='EXTRA WWW' WHERE URL LIKE '%.EXTRA.COM.BR%';
go
UPDATE [dbo].[PF05.10-16] SET URL ='NIKE TALK' WHERE URL LIKE '%NIKETALK.COM%';
UPDATE [dbo].[PF05.10-16] SET URL ='NIKE HELP' WHERE URL LIKE '%HELP-EN-US.NIKE.COM%';
UPDATE [dbo].[PF05.10-16] SET URL ='NIKE BUSCA' WHERE URL LIKE '%://BUSCA.NIKE.COM.BR%';
UPDATE [dbo].[PF05.10-16] SET URL ='NIKE SHOP' WHERE URL LIKE '%SHOP.NIKE.COM%' or URL LIKE '%LOJADANIKE.com%';
UPDATE [dbo].[PF05.10-16] SET URL ='NIKE OFICIAL' WHERE URL LIKE '%://OFICIAL.NIKE.COM.BR%';
UPDATE [dbo].[PF05.10-16] SET URL ='NIKE STORE' WHERE URL LIKE '%://STORE.NIKE.COM%';
UPDATE [dbo].[PF05.10-16] SET URL ='NIKE GO' WHERE URL LIKE '%://GO.NIKE%' or URL LIKE '%://GONIKE%';
UPDATE [dbo].[PF05.10-16] SET URL ='NIKE FACTORY' WHERE URL LIKE '%.nikefactorystore.com.br%';
UPDATE [dbo].[PF05.10-16] SET URL ='NIKE ADMIN' WHERE URL LIKE '%admin.nike.com.br%';
UPDATE [dbo].[PF05.10-16] SET URL ='NIKE WWW' WHERE URL LIKE '%://WWW.NIKE.COM%' or URL LIKE '%.NIKE.COM%';
go
UPDATE [dbo].[PF05.10-16] SET URL ='PF MOBILE' WHERE URL LIKE '%m.pontofrio.com.br%';
UPDATE [dbo].[PF05.10-16] SET URL ='PF CARRINHO' WHERE URL LIKE '%carrinho.pontofrio.com.br%';
UPDATE [dbo].[PF05.10-16] SET URL ='PF CHAT' WHERE URL LIKE '%chat.pontofrio.com.br%';
UPDATE [dbo].[PF05.10-16] SET URL ='PF IMAGENS' WHERE URL LIKE '%www.pontofrio-imagens.com.br%' or URL LIKE '%imagens.pontofrio.com.br%';
UPDATE [dbo].[PF05.10-16] SET URL ='PF PRODUTO' WHERE URL LIKE '%produto.pontofrio.com.br%';
UPDATE [dbo].[PF05.10-16] SET URL ='PF NEWS' WHERE URL LIKE '%news.pontofrio.com.br%';
UPDATE [dbo].[PF05.10-16] SET URL ='PF COMUNICADO' WHERE URL LIKE '%comunicado.pontofrio.com.br%';
UPDATE [dbo].[PF05.10-16] SET URL ='PF BUSCA' WHERE URL LIKE '%busca.pontofrio.com.br%' or URL LIKE '%search.pontofrio.com.br%';
UPDATE [dbo].[PF05.10-16] SET URL ='PF ATENDIMENTO' WHERE URL LIKE '%atendimento.pontofrio.com.br%';
UPDATE [dbo].[PF05.10-16] SET URL ='PF BLACKFRIDAY' WHERE URL LIKE '%blackfriday.pontofrio.com.br%';
UPDATE [dbo].[PF05.10-16] SET URL ='PF WWW' WHERE URL LIKE '%www.pontofrio.com.br%';
UPDATE [dbo].[PF05.10-16] SET URL ='PF CONTEUDO' WHERE URL LIKE '%conteudo.pontofrio.com.br%';
UPDATE [dbo].[PF05.10-16] SET URL ='PF INSTITUCIONAL' WHERE URL LIKE '%institucional.pontofrio.com.br%';
UPDATE [dbo].[PF05.10-16] SET URL ='PF HOTSITE' WHERE URL LIKE '%batedeiras.pontofrio.com.br%' OR URL LIKE '%brinquedos.pontofrio.com.br%' OR URL LIKE '%cupomdedesconto.pontofrio.com.br%' OR URL LIKE '%eletronicos.pontofrio.com.br%' OR URL LIKE '%eletroportateis.pontofrio.com.br%' OR URL LIKE '%camamesabanho.pontofrio.com.br%' OR URL LIKE '%eglu.pontofrio.com.br%' OR URL LIKE '%moveis.pontofrio.com.br%' OR URL LIKE '%mkt.pontofrio.com.br%' OR URL LIKE '%bebes.pontofrio.com.br%' OR URL LIKE '%ferramentas.pontofrio.com.br%' OR URL LIKE '%eletrodomesticos.pontofrio.com.br%' OR URL LIKE '%copos.pontofrio.com.br%' OR URL LIKE '%livros.pontofrio.com.br%' OR URL LIKE '%papelaria.pontofrio.com.br%' OR URL LIKE '%utilidadesdomesticas.pontofrio.com.br%' OR URL LIKE '%telefonesecelulares.pontofrio.com.br%' OR URL LIKE '%tablet.pontofrio.com.br%';
UPDATE [dbo].[PF05.10-16] SET URL ='MAIL' WHERE URL LIKE '%WEBMAIL%' or URL LIKE '%://CORREIO%' or URL LIKE '%://MX%' or URL LIKE '%ZIMBRA%' or URL LIKE '%NETB.SESC-SC.COM.BR%' or URL LIKE '%MAIL%'; 
UPDATE [dbo].[PF05.10-16] SET URL ='AD' WHERE URL LIKE '%://CITYADSPIX.COM%' OR URL LIKE '%://CIP.GAGNOO.COM%' OR URL LIKE '%://TAGS.RIGHT-ADS.COM%' OR URL LIKE '%://TRACKER.LOMADEE.COM%' OR URL LIKE '%://BR.ADS.OPPUZ%' OR URL LIKE '%://CK.SOLOCPM%' OR URL LIKE '%.VIZURY%' OR URL LIKE '%://OFFERS.BYCONTEXT.COM%' OR URL LIKE '%ADS.YAHOO%' OR URL LIKE '%://PIXEL.MATHTAG.COM%' OR URL LIKE '%EHUB.COM.BR%' OR URL LIKE '%.ROCKETTAB.COM%' OR URL LIKE '%ADNXS.COM%';
UPDATE [dbo].[PF05.10-16] SET URL ='GOOGLE ADS' WHERE URL LIKE '%DOUBLECLICK.NET%' or URL LIKE '%GOOGLESYNDICATION%';
UPDATE [dbo].[PF05.10-16] SET URL ='PARCEIROS' WHERE URL LIKE '%://LOJA.NEYMAROFICIAL.COM%' or URL LIKE '%://WWW.CORINTHIANS.COM.BR%' or URL LIKE '%://WWW.CLOSETERIA%' or URL LIKE '%://CORREMULHERADA%' or URL LIKE '%://ESPORTEINTERATIVO%' or URL LIKE '%://WWW.BUSCAPE%' or URL LIKE '%://WWW.LESHOPPING%' or URL LIKE '%://WWW.AMIGOSECRETO.COM.%' or URL LIKE '%://WWW.AMAZON.%' or URL LIKE '%://WWW.CPNA.%' or URL LIKE '%://WWW.CBF.COM.%' or URL LIKE '%://WWW.PARKSHOPPINGBARIGUI.%' or URL LIKE '%://PRODUTO.MERCADOLIVRE.COM.BR%' or URL LIKE '%://RUNNERSWORLD.ABRIL.COM%' or URL LIKE '%://FIEL.VC%' or URL LIKE '%.AMAZONAWS.COM%' or URL LIKE '%CUPONATION.COM.BR%' or URL LIKE '%CUPOMVALIDO.COM.BR%' or URL LIKE '%JACOTEI.COM%' or URL LIKE '%NCUPONS.COM.BR%' or URL LIKE '%COMPRAGAMES.COM%' or URL LIKE '%APPLE.%' or URL LIKE '%ACER.COM%' or URL LIKE '%PLAYSTATION.%' or URL LIKE '%SONY.%' or URL LIKE '%SAMSUNG.%';
UPDATE [dbo].[PF05.10-16] SET URL ='TWITTER' WHERE URL LIKE '%://API.TWITTER%';
UPDATE [dbo].[PF05.10-16] SET URL ='BUSCADOR' WHERE URL LIKE '%://BUSCA.VIVO%' or URL LIKE '%://BUSCA.UOL%';
UPDATE [dbo].[PF05.10-16] SET URL ='GOOGLE' WHERE URL LIKE '"%.GOOGLE.%';
UPDATE [dbo].[PF05.10-16] SET URL ='BING' WHERE URL LIKE '%BING%';
UPDATE [dbo].[PF05.10-16] SET URL ='YAHOO' WHERE URL LIKE '%SEARCH.YAHOO%';
UPDATE [dbo].[PF05.10-16] SET URL ='TUMBLR' WHERE URL LIKE '%TUMBLR.%';
UPDATE [dbo].[PF05.10-16] SET URL ='WORDPRESS' WHERE URL LIKE '%WORDPRESS%';
UPDATE [dbo].[PF05.10-16] SET URL ='FLICKR' WHERE URL LIKE '%FLICKR%';
UPDATE [dbo].[PF05.10-16] SET URL ='PINTEREST' WHERE URL LIKE '%PINTEREST.COM%';
UPDATE [dbo].[PF05.10-16] SET URL ='ZOOM' WHERE URL LIKE '%://WWW.ZOOM.%';
UPDATE [dbo].[PF05.10-16] SET URL ='BUSCA DESCONTOS' WHERE URL LIKE '%://EMAIL.BUSCADESCONTOS%';
UPDATE [dbo].[PF05.10-16] SET URL ='FWDAFF' WHERE URL LIKE '%://FWDAFF.COM%';
UPDATE [dbo].[PF05.10-16] SET URL ='FACEBOOK MOBILE' WHERE URL LIKE '%://M.FACEBOOK.COM%';
UPDATE [dbo].[PF05.10-16] SET URL ='FACEBOOK' WHERE URL LIKE '%.FACEBOOK.COM%';
UPDATE [dbo].[PF05.10-16] SET URL ='FAKE' WHERE URL LIKE '"HTTP://1%' OR URL LIKE '"HTTP://6%' OR URL LIKE '"HTTP://2%';
UPDATE [dbo].[PF05.10-16] SET URL ='ENCURTADOR' WHERE URL LIKE '%://BIT.LY%' OR URL LIKE '%GOO.GL%' OR URL LIKE '%T.CO%';
UPDATE [dbo].[PF05.10-16] SET URL ='BAIXOU' WHERE URL LIKE '%BAIXOU.COM.BR%';
UPDATE [dbo].[PF05.10-16] SET URL ='LOJA COLABORADOR' WHERE URL LIKE '%NOVAPONTOCOM.COM.BR%';
UPDATE [dbo].[PF05.10-16] SET URL ='BAIDU' WHERE URL LIKE '%.BAIDU.C%';
UPDATE [dbo].[PF05.10-16] SET URL ='ARQUIVO(ERRO)' WHERE URL LIKE '"FILE://%';
UPDATE [dbo].[PF05.10-16] SET URL ='POWERREVIEW' WHERE URL LIKE '%://SERVICES.POWERREVIEWS%';
UPDATE [dbo].[PF05.10-16] SET URL ='ASK.COM' WHERE URL LIKE '%ASK.COM%';
UPDATE [dbo].[PF05.10-16] SET URL ='WRONG REQUEST' WHERE URL LIKE '%LOCALHOST%' OR URL LIKE '%CHROME://%' OR URL LIKE '%FBAPP:%' OR URL LIKE '%HR0CDOVL3D3DY56B29TLMNV%' or URL like '%stream://%' or URL LIKE '%thismessage:%';
UPDATE [dbo].[PF05.10-16] SET URL ='BLOG' WHERE URL LIKE '%BLOG%';
UPDATE [dbo].[PF05.10-16] SET URL ='COMPONENTE' WHERE URL LIKE '%SKINED%';
UPDATE [dbo].[PF05.10-16] SET URL ='ADOBE' WHERE URL LIKE '%ADOBE.%';
UPDATE [dbo].[PF05.10-16] SET URL ='UOL' WHERE URL LIKE '%UOL.%';
UPDATE [dbo].[PF05.10-16] SET URL ='ALIBABA' WHERE URL LIKE '%ALIBABA.COM%';
UPDATE [dbo].[PF05.10-16] SET URL ='CDN' WHERE URL LIKE '%CDN.%';
UPDATE [dbo].[PF05.10-16] SET URL ='ERROS' WHERE URL LIKE '%DNSERROS.OI.%';
UPDATE [dbo].[PF05.10-16] SET URL ='CUSTHELP' WHERE URL LIKE '%EXTRA-BR.CUSTHELP%';
UPDATE [dbo].[PF05.10-16] SET URL ='BONDFARO' WHERE URL LIKE '%BONDFARO%';
UPDATE [dbo].[PF05.10-16] SET URL ='WWW GERAL' WHERE URL LIKE '"HTTP://WWW%';
UPDATE [dbo].[PF05.10-16] SET URL ='NAO CLASSIFICADO' WHERE URL LIKE '"HTTP:/%' OR URL LIKE '"HTTPS://%' OR URL LIKE '"/%'; 
go
  UPDATE [dbo].[PF05.10-16] SET URI = UPPER(URI);
  UPDATE [dbo].[PF05.10-16] SET UserAgent = UPPER(UserAgent);  
  UPDATE [dbo].[PF05.10-16] SET WAFInfo = UPPER(WAFInfo);  
  UPDATE [dbo].[PF05.10-16] SET URL = UPPER(URL);    

DBCC SHRINKDATABASE (WAF);
go

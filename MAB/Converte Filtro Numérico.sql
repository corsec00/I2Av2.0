-- ========================================
-- === 25/Mai/2016 - Leonardo Santos 
-- === Atualiza o banco de dados para usar valores numéricos.
-- === Altera o DataType (de Varchar(8000) para varchar(100)
-- === Cria e calcula as tabelas M para o Filtro1 e Filtro2
-- ========================================


-- ==================== 
-- === Atualiza Campos
-- ====================
UPDATE [WAFIPS05].[dbo].[Full] SET [ACAO] ='0' WHERE [ACAO] LIKE 'ACCEPT%'
UPDATE [WAFIPS05].[dbo].[Full] SET [ACAO] ='1' WHERE [ACAO] LIKE 'DROP%'
UPDATE [WAFIPS05].[dbo].[Full] SET [ACAO] ='2' WHERE [ACAO] LIKE 'KEY INSTAL%'
go
UPDATE [WAFIPS05].[dbo].[Full] SET [INFORMACAO] ='0' WHERE [INFORMACAO] LIKE '0%'
UPDATE [WAFIPS05].[dbo].[Full] SET [INFORMACAO] ='1' WHERE [INFORMACAO] LIKE 'E/S%'
UPDATE [WAFIPS05].[dbo].[Full] SET [INFORMACAO] ='2' WHERE [INFORMACAO] LIKE 'PROT%'
go
UPDATE [WAFIPS05].[dbo].[Full] SET [ORIGEM] ='0' WHERE [ORIGEM] LIKE '0%'
UPDATE [WAFIPS05].[dbo].[Full] SET [ORIGEM] ='1' WHERE [ORIGEM] LIKE '172.30.251.68%'
go
UPDATE [WAFIPS05].[dbo].[Full] SET [PRODUTO] ='0' WHERE [PRODUTO] LIKE '0%'
UPDATE [WAFIPS05].[dbo].[Full] SET [PRODUTO] ='1' WHERE [PRODUTO] LIKE 'FW%'
go
UPDATE [WAFIPS05].[dbo].[Full] SET [SERVICO] ='0' WHERE [SERVICO] LIKE '0%'
UPDATE [WAFIPS05].[dbo].[Full] SET [SERVICO] ='1' WHERE [SERVICO] LIKE 'HTTP%'
UPDATE [WAFIPS05].[dbo].[Full] SET [SERVICO] ='2' WHERE [SERVICO] LIKE 'HTTPS%'
UPDATE [WAFIPS05].[dbo].[Full] SET [SERVICO] ='3' WHERE [SERVICO] LIKE 'IKE%'
UPDATE [WAFIPS05].[dbo].[Full] SET [SERVICO] ='4' WHERE [SERVICO] LIKE 'DOMAI%'
UPDATE [WAFIPS05].[dbo].[Full] SET [SERVICO] ='5' WHERE [SERVICO] LIKE 'FTP%'
UPDATE [WAFIPS05].[dbo].[Full] SET [SERVICO] ='6' WHERE [SERVICO] LIKE 'HTTP_%'
go
UPDATE [WAFIPS05].[dbo].[Full] SET [UserAgentBrowser] ='0' WHERE [UserAgentBrowser] LIKE 'ANDROIDBROWSER%'
UPDATE [WAFIPS05].[dbo].[Full] SET [UserAgentBrowser] ='1' WHERE [UserAgentBrowser] LIKE 'CHROME%'
UPDATE [WAFIPS05].[dbo].[Full] SET [UserAgentBrowser] ='2' WHERE [UserAgentBrowser] LIKE 'FIREFOX%'
UPDATE [WAFIPS05].[dbo].[Full] SET [UserAgentBrowser] ='3' WHERE [UserAgentBrowser] LIKE 'IE%'
UPDATE [WAFIPS05].[dbo].[Full] SET [UserAgentBrowser] ='4' WHERE [UserAgentBrowser] LIKE 'OFFICE%'
UPDATE [WAFIPS05].[dbo].[Full] SET [UserAgentBrowser] ='5' WHERE [UserAgentBrowser] LIKE 'OUTROS%'
UPDATE [WAFIPS05].[dbo].[Full] SET [UserAgentBrowser] ='6' WHERE [UserAgentBrowser] LIKE 'SAFARI%'
UPDATE [WAFIPS05].[dbo].[Full] SET [UserAgentBrowser] ='7' WHERE [UserAgentBrowser] LIKE 'THUNDERBIRD%'
go
UPDATE [WAFIPS05].[dbo].[Full] SET [URI] ='0' WHERE [URI] LIKE 'ARQ%'
UPDATE [WAFIPS05].[dbo].[Full] SET [URI] ='1' WHERE [URI] LIKE 'IMG%'
UPDATE [WAFIPS05].[dbo].[Full] SET [URI] ='2' WHERE [URI] LIKE 'OUTROS%'
UPDATE [WAFIPS05].[dbo].[Full] SET [URI] ='3' WHERE [URI] LIKE 'WEB%'
go
UPDATE [WAFIPS05].[dbo].[Full] SET [URL] ='0' WHERE [URL] LIKE 'LOJA%'
UPDATE [WAFIPS05].[dbo].[Full] SET [URL] ='1' WHERE [URL] LIKE 'MKT%'
UPDATE [WAFIPS05].[dbo].[Full] SET [URL] ='2' WHERE [URL] LIKE 'SAFARI%'
UPDATE [WAFIPS05].[dbo].[Full] SET [URL] ='3' WHERE [URL] LIKE 'REDESOCIAL%'
UPDATE [WAFIPS05].[dbo].[Full] SET [URL] ='4' WHERE [URL] LIKE 'BUSCADOR%'
go
UPDATE [WAFIPS05].[dbo].[Full] SET [USERAGENT] ='0' WHERE [USERAGENT] LIKE 'ANDROID%'
UPDATE [WAFIPS05].[dbo].[Full] SET [USERAGENT] ='1' WHERE [USERAGENT] LIKE 'LINUX%'
UPDATE [WAFIPS05].[dbo].[Full] SET [USERAGENT] ='2' WHERE [USERAGENT] LIKE 'MACOS%'
UPDATE [WAFIPS05].[dbo].[Full] SET [USERAGENT] ='3' WHERE [USERAGENT] LIKE 'OUTROS%'
UPDATE [WAFIPS05].[dbo].[Full] SET [USERAGENT] ='4' WHERE [USERAGENT] LIKE 'WINDOWS%'
go
UPDATE [WAFIPS05].[dbo].[Full] SET [METODO] ='0' WHERE [METODO] LIKE 'GET%'
UPDATE [WAFIPS05].[dbo].[Full] SET [METODO] ='1' WHERE [METODO] LIKE 'HEAD%'
UPDATE [WAFIPS05].[dbo].[Full] SET [METODO] ='2' WHERE [METODO] LIKE 'POST%'
UPDATE [WAFIPS05].[dbo].[Full] SET [METODO] ='3' WHERE [METODO] LIKE 'OPTI%'
UPDATE [WAFIPS05].[dbo].[Full] SET [METODO] ='4' WHERE [METODO] LIKE 'MKCO%'
UPDATE [WAFIPS05].[dbo].[Full] SET [METODO] ='5' WHERE [METODO] LIKE 'PUT%'
go
UPDATE [WAFIPS05].[dbo].[Full] SET [COOKIE] ='0' WHERE [COOKIE] LIKE 'NAO%'
UPDATE [WAFIPS05].[dbo].[Full] SET [COOKIE] ='1' WHERE [COOKIE] LIKE 'SIM%'
go
UPDATE [WAFIPS05].[dbo].[Full] SET [STATUS] ='0' WHERE [STATUS] LIKE '000%'
UPDATE [WAFIPS05].[dbo].[Full] SET [STATUS] ='1' WHERE [STATUS] LIKE '1' or [STATUS] LIKE '200%'
UPDATE [WAFIPS05].[dbo].[Full] SET [STATUS] ='2' WHERE [STATUS] LIKE '206%'
UPDATE [WAFIPS05].[dbo].[Full] SET [STATUS] ='3' WHERE [STATUS] LIKE '301%'
UPDATE [WAFIPS05].[dbo].[Full] SET [STATUS] ='4' WHERE [STATUS] LIKE '302%'
UPDATE [WAFIPS05].[dbo].[Full] SET [STATUS] ='5' WHERE [STATUS] LIKE '304%'
UPDATE [WAFIPS05].[dbo].[Full] SET [STATUS] ='6' WHERE [STATUS] LIKE '400%'
UPDATE [WAFIPS05].[dbo].[Full] SET [STATUS] ='7' WHERE [STATUS] LIKE '403%'
UPDATE [WAFIPS05].[dbo].[Full] SET [STATUS] ='8' WHERE [STATUS] LIKE '404%'
UPDATE [WAFIPS05].[dbo].[Full] SET [STATUS] ='9' WHERE [STATUS] LIKE '406%'
UPDATE [WAFIPS05].[dbo].[Full] SET [STATUS] ='10' WHERE [STATUS] LIKE '500%'
UPDATE [WAFIPS05].[dbo].[Full] SET [STATUS] ='11' WHERE [STATUS] LIKE '503%'
go
--============================================
--=== Altera os DataTypes da Tabela após a 
--===  importação e tratamento dos dados para
--===  trabalhar com bancos menores (GB)
--============================================

alter table [WAFIPS05].[dbo].[Full]
alter column [IP] varchar(100)
go
alter table [WAFIPS05].[dbo].[Full]
alter column [Metodo] varchar(100)
go
alter table [WAFIPS05].[dbo].[Full]
alter column [Status] varchar(100)
go
alter table [WAFIPS05].[dbo].[Full]
alter column [Bytes] varchar(100)
go
alter table [WAFIPS05].[dbo].[Full]
alter column [Tempo] varchar(100)
go
alter table [WAFIPS05].[dbo].[Full]
alter column [UserAgent] varchar(100)
go
alter table [WAFIPS05].[dbo].[Full]
alter column [Cookie] varchar(100)
go
alter table [WAFIPS05].[dbo].[Full]
alter column [UserAgentBrowser] varchar(100)
go
alter table [WAFIPS05].[dbo].[Full]
alter column [WAFinfo] varchar(100)
go
alter table [WAFIPS05].[dbo].[Full]
alter column [Informacao] varchar(100)
go;
alter table [WAFIPS05].[dbo].[Full]
alter column [Data] varchar(100)
go;
alter table [WAFIPS05].[dbo].[Full]
alter column [Hora] varchar(100)
go;
-- ==================== 
-- === Cria Tabelas M
-- ==================== 
ALTER TABLE [WAFIPS05].[dbo].[Filtro2] 
ADD MREGRA float NULL;
go;
ALTER TABLE [WAFIPS05].[dbo].[Filtro1] 
ADD MSTATUS float NULL;
go;
-- ==================== 
-- === Calcula Campos M
-- ==================== 
UPDATE [WAFIPS05].[dbo].[Filtro2] SET MREGRA =(CAST(SREGRA AS FLOAT)/QREGRA) * 100;
UPDATE [WAFIPS05].[dbo].[Filtro1] SET MSTATUS =(CAST(SSTATUS AS FLOAT)/QSTATUS) * 100;
go

UPDATE [DBO].[IPS-29] SET DATA ='2014-12-06' WHERE Data like '6Dec2014';

GO 
UPDATE [DBO].[IPS-29] SET PRODUTO = REPLACE(PRODUTO, 'IPS SOFTWARE BLADE', 'IPS');
UPDATE [DBO].[IPS-29] SET PRODUTO = REPLACE(PRODUTO, 'MULTI-PRODUCT', 'MULTI');
UPDATE [DBO].[IPS-29] SET PRODUTO = REPLACE(PRODUTO, 'SECURITY GATEWAY/MANAGEMENT', 'FW');
UPDATE [DBO].[IPS-29] SET INFORMACAO ='CLUSTER INFO' WHERE INFORMACAO LIKE '%CLUSTER_INFO%';
UPDATE [DBO].[IPS-29] SET INFORMACAO ='PROBLEMA ICMP' WHERE INFORMACAO LIKE '%ICMP: %';


UPDATE [DBO].[IPS-29] SET INFORMACAO ='PROBLEMA INTERNO' WHERE INFORMACAO LIKE '%MESSAGE: VIRTUAL DEFRAGMENTATION ERROR%';
UPDATE [DBO].[IPS-29] SET INFORMACAO ='PROBLEMA INTERNO' WHERE INFORMACAO LIKE '%RESUMING IPS INSPECTION%';
UPDATE [DBO].[IPS-29] SET INFORMACAO ='IKE' WHERE INFORMACAO LIKE '%IKE%';
UPDATE [DBO].[IPS-29] SET INFORMACAO ='IKE' WHERE INFORMACAO LIKE '%ENCRYPTION%';

UPDATE [DBO].[IPS-29] SET INFORMACAO ='ENTRADA EXTERNA/SAIDA INTERNA' WHERE INFORMACAO LIKE '%INZONE: EXTERNAL; OUTZONE: INTERNAL%';
UPDATE [DBO].[IPS-29] SET INFORMACAO ='ENTRADA E SAIDA INTERNA' WHERE INFORMACAO LIKE '%INZONE: INTERNAL; OUTZONE: INTERNAL%';
UPDATE [DBO].[IPS-29] SET INFORMACAO ='ENTRADA INTERNA/SAIDA EXTERNA' WHERE INFORMACAO LIKE '%INZONE: INTERNAL; OUTZONE: EXTERNAL%';
UPDATE [DBO].[IPS-29] SET INFORMACAO ='ENTRADA INTERNA/SAIDA LOCAL' WHERE INFORMACAO LIKE '%INZONE: INTERNAL; OUTZONE: LOCAL%';
UPDATE [DBO].[IPS-29] SET INFORMACAO ='ENTRADA LOCAL/SAIDA INTERNA' WHERE INFORMACAO LIKE '%INZONE: LOCAL; OUTZONE: INTERNAL%';
UPDATE [DBO].[IPS-29] SET INFORMACAO ='ENTRADA EXTERNA/SAIDA LOCAL' WHERE INFORMACAO LIKE '%INZONE: EXTERNAL; OUTZONE: LOCAL%';
UPDATE [DBO].[IPS-29] SET INFORMACAO ='ENTRADA LOCAL/SAIDA EXTERNA' WHERE INFORMACAO LIKE '%INZONE: LOCAL; OUTZONE: EXTERNAL%';
UPDATE [DBO].[IPS-29] SET INFORMACAO ='PACKET OVERFLOW' WHERE INFORMACAO LIKE '%PACKET INFO: OVERFLOW OF%';
UPDATE [DBO].[IPS-29] SET INFORMACAO ='STREAMING - ANOMALIAS EXTERNAS' WHERE INFORMACAO LIKE '%STREAMING ENGINE: DETECTED%';
UPDATE [DBO].[IPS-29] SET INFORMACAO ='ASSOCIACAO DE EVENTOS' WHERE INFORMACAO LIKE '%SUMMARY: DETECTED %';
UPDATE [DBO].[IPS-29] SET INFORMACAO ='PROBLEMAS TCP' WHERE INFORMACAO LIKE '%TCP FLAGS: %';
UPDATE [DBO].[IPS-29] SET INFORMACAO ='PROBLEMAS TCP' WHERE INFORMACAO LIKE '%TCP PACKET OUT OF STATE:%';
GO
UPDATE [DBO].[IPS-29] SET INFORMACAO ='SINCRONIZACAO DE LOG' WHERE INFORMACAO LIKE '%TOTAL LOGS:%';
UPDATE [DBO].[IPS-29] SET INFORMACAO ='ATUALIZACAO' WHERE INFORMACAO LIKE '%UPDATE VERSION:%'; 
UPDATE [DBO].[IPS-29] SET INFORMACAO ='INSPEÇÃO INTERROMPIDA' WHERE INFORMACAO LIKE '%PACKET INFO: (+)WARNING! INSPECTION STOPPED%'; 
UPDATE [DBO].[IPS-29] SET INFORMACAO ='ATUALIZACAO' WHERE INFORMACAO LIKE '%LOG_SYS_MESSAGE:%'; 
UPDATE [DBO].[IPS-29] SET INFORMACAO ='SISTEMA' WHERE INFORMACAO LIKE '%SYS_MESSAGE: %'; 
UPDATE [DBO].[IPS-29] SET INFORMACAO ='BYPASS IPS' WHERE INFORMACAO LIKE '%RESOURCE_SHORTAGE: BYPASSING IPS DUE TO RESOURCES SHORTAGE%'; 
UPDATE [DBO].[IPS-29] SET INFORMACAO ='SPOOFING' WHERE INFORMACAO LIKE '%MESSAGE_INFO: ADDRESS SPOOFIN%'; 
UPDATE [DBO].[IPS-29] SET INFORMACAO ='PROBLEMA DE DEFRAGMENTACAO' WHERE INFORMACAO LIKE '%MESSAGE: VIRTUAL DEFRAGMENTATION ERROR: TIMEOUT;%'; 
UPDATE [DBO].[IPS-29] SET INFORMACAO ='VRRP' WHERE INFORMACAO LIKE '%VRRP%'; 
UPDATE [DBO].[IPS-29] SET INFORMACAO ='ALERTA DE SINCRONIA' WHERE INFORMACAO LIKE '%SYNC: STATE SYNCHRONIZATION OF THIS MACHINE IS IN RISK%'; 
UPDATE [DBO].[IPS-29] SET INFORMACAO ='STORM AGENT UP' WHERE INFORMACAO LIKE '%STORMAGENTNAME%'; 
UPDATE [DBO].[IPS-29] SET INFORMACAO ='PROBLEMAS UDP' WHERE INFORMACAO LIKE '%UDP LENGTH ERROR%'; 
UPDATE [DBO].[IPS-29] SET INFORMACAO ='IP REAL NATEADO' WHERE INFORMACAO LIKE '%MESSAGE_INFO: CONNECTION CONTAINS REAL IP OF NATED%'; 
UPDATE [DBO].[IPS-29] SET INFORMACAO ='SPOOFING' WHERE INFORMACAO LIKE '%ADDRESS SPOOFING%'; 


UPDATE [WAF].[DBO].[IPS-29] SET INFORMACAO ='COMUNICACAO CLUSTER' WHERE INFORMACAO LIKE '%cluster_info: (3rd Party Cluster) FW-1%'; 
UPDATE [WAF].[DBO].[IPS-29] SET INFORMACAO ='CA INTERNA' WHERE INFORMACAO LIKE '%Internal_CA%'; 
UPDATE [WAF].[DBO].[IPS-29] SET INFORMACAO ='VIRTUAL DEFRAGMENTATION ERROR' WHERE INFORMACAO LIKE '%Virtual defragmentation error%'; 
UPDATE [WAF].[DBO].[IPS-29] SET INFORMACAO ='REINICIANDO IPS' WHERE INFORMACAO LIKE '%Resuming IPS inspection %'; 
UPDATE [WAF].[DBO].[IPS-29] SET INFORMACAO ='PROBLEMAS TCP' WHERE INFORMACAO LIKE '%Invalid TCP flag%';
GO

DBCC SHRINKDATABASE (WAF);
UPDATE [DBO].[IPS-28] SET INFORMACAO = UPPER(INFORMACAO);
UPDATE [DBO].[IPS-28] SET PRODUTO = UPPER(PRODUTO);
UPDATE [DBO].[IPS-28] SET ACAO = UPPER(ACAO);
UPDATE [DBO].[IPS-28] SET SERVICO = UPPER(SERVICO);
UPDATE [DBO].[IPS-28] SET PORTORIGEM = UPPER(PORTORIGEM);
UPDATE [DBO].[IPS-28] SET PROTOCOLO = UPPER(PROTOCOLO);

GO

DBCC SHRINKDATABASE (WAF);

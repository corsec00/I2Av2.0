DBCC SHRINKDATABASE (IPS);

UPDATE [dbo].[494] SET Data ='2014-11-29' WHERE Data like '29Nov2014';

go 
UPDATE [dbo].[494] Set Produto = replace(Produto, 'IPS Software Blade', 'IPS');
UPDATE [dbo].[494] Set Produto = replace(Produto, 'Multi-product', 'Multi');
UPDATE [dbo].[494] Set Produto = replace(Produto, 'Security Gateway/Management', 'FW');
UPDATE [dbo].[494] SET Informacao ='Cluster Info' WHERE Informacao like 'cluster_info%';
UPDATE [dbo].[494] SET Informacao ='Problema ICMP' WHERE Informacao like 'ICMP: %';
UPDATE [dbo].[494] SET Informacao ='IKE' WHERE Informacao like 'IKE:%';
UPDATE [dbo].[494] SET Informacao ='Entrada Externa/Saida Interna' WHERE Informacao like 'inzone: External; outzone: Internal%';
UPDATE [dbo].[494] SET Informacao ='Entrada e Saida Interna' WHERE Informacao like 'inzone: Internal; outzone: Internal%';
UPDATE [dbo].[494] SET Informacao ='Entrada Interna/Saida Externa' WHERE Informacao like 'inzone: Internal; outzone: External%';
UPDATE [dbo].[494] SET Informacao ='Entrada Interna/Saida Local' WHERE Informacao like 'inzone: Internal; outzone: Local%';
UPDATE [dbo].[494] SET Informacao ='Entrada Local/Saida Interna' WHERE Informacao like 'inzone: Local; outzone: Internal%';
UPDATE [dbo].[494] SET Informacao ='Entrada Externa/Saida Local' WHERE Informacao like 'inzone: External; outzone: Local%';
UPDATE [dbo].[494] SET Informacao ='Entrada Local/Saida Externa' WHERE Informacao like 'inzone: Local; outzone: External%';
UPDATE [dbo].[494] SET Informacao ='Packet Overflow' WHERE Informacao like 'Packet info: overflow of%';
UPDATE [dbo].[494] SET Informacao ='Streaming - Anomalias externas' WHERE Informacao like 'Streaming Engine: Detected%';
UPDATE [dbo].[494] SET Informacao ='Associacao de Eventos' WHERE Informacao like 'Summary: Detected %';
UPDATE [dbo].[494] SET Informacao ='Problemas TCP' WHERE Informacao like 'TCP flags: %';
UPDATE [dbo].[494] SET Informacao ='Problemas TCP' WHERE Informacao like 'TCP packet out of state:%';
go
UPDATE [dbo].[494] SET Informacao ='Sincronizacao de Log' WHERE Informacao like 'Total logs:%';
UPDATE [dbo].[494] SET Informacao ='Atualizacao' WHERE Informacao like 'Update Version:%'; 
UPDATE [dbo].[494] SET Informacao ='Inspeção Interrompida' WHERE Informacao like 'Packet info: (+)Warning! Inspection stopped%'; 
UPDATE [dbo].[494] SET Informacao ='Atualizacao' WHERE Informacao like 'log_sys_message:%'; 
UPDATE [dbo].[494] SET Informacao ='Sistema' WHERE Informacao like 'sys_message: %'; 
UPDATE [dbo].[494] SET Informacao ='Bypass IPS' WHERE Informacao like 'resource_shortage: Bypassing IPS due to resources shortage%'; 
UPDATE [dbo].[494] SET Informacao ='Spoofing' WHERE Informacao like 'message_info: Address spoofin%'; 
UPDATE [dbo].[494] SET Informacao ='Problema de Defragmentacao' WHERE Informacao like 'message: Virtual defragmentation error: Timeout;%'; 
UPDATE [dbo].[494] SET Informacao ='VRRP' WHERE Informacao like '%VRRP%'; 
go
DBCC SHRINKDATABASE (IPS);




UPDATE [dbo].[456_log] SET Data ='2014-11-21' WHERE Data like '21Nov2014';

go 
UPDATE [dbo].[456_log] Set Produto = replace(Produto, 'IPS Software Blade', 'IPS');
UPDATE [dbo].[456_log] Set Produto = replace(Produto, 'Multi-product', 'Multi');
UPDATE [dbo].[456_log] Set Produto = replace(Produto, 'Security Gateway/Management', 'FW');
UPDATE [dbo].[456_log] SET Informacao ='Cluster Info' WHERE Informacao like 'cluster_info%';
UPDATE [dbo].[456_log] SET Informacao ='Problema ICMP' WHERE Informacao like 'ICMP: %';
UPDATE [dbo].[456_log] SET Informacao ='IKE' WHERE Informacao like 'IKE:%';
UPDATE [dbo].[456_log] SET Informacao ='Entrada Externa/Saida Interna' WHERE Informacao like 'inzone: External; outzone: Internal%';
UPDATE [dbo].[456_log] SET Informacao ='Entrada e Saida Interna' WHERE Informacao like 'inzone: Internal; outzone: Internal%';
UPDATE [dbo].[456_log] SET Informacao ='Entrada Interna/Saida Externa' WHERE Informacao like 'inzone: Internal; outzone: External%';
UPDATE [dbo].[456_log] SET Informacao ='Entrada Interna/Saida Local' WHERE Informacao like 'inzone: Internal; outzone: Local%';
UPDATE [dbo].[456_log] SET Informacao ='Entrada Local/Saida Interna' WHERE Informacao like 'inzone: Local; outzone: Internal%';
UPDATE [dbo].[456_log] SET Informacao ='Entrada Externa/Saida Local' WHERE Informacao like 'inzone: External; outzone: Local%';
UPDATE [dbo].[456_log] SET Informacao ='Entrada Local/Saida Externa' WHERE Informacao like 'inzone: Local; outzone: External%';
UPDATE [dbo].[456_log] SET Informacao ='Packet Overflow' WHERE Informacao like 'Packet info: overflow of%';
UPDATE [dbo].[456_log] SET Informacao ='Streaming - Anomalias externas' WHERE Informacao like 'Streaming Engine: Detected%';
UPDATE [dbo].[456_log] SET Informacao ='Associacao de Eventos' WHERE Informacao like 'Summary: Detected %';
UPDATE [dbo].[456_log] SET Informacao ='Problemas TCP' WHERE Informacao like 'TCP flags: %';
UPDATE [dbo].[456_log] SET Informacao ='Problemas TCP' WHERE Informacao like 'TCP packet out of state:%';
go
UPDATE [dbo].[456_log] SET Informacao ='Sincronizacao de Log' WHERE Informacao like 'Total logs:%';
UPDATE [dbo].[456_log] SET Informacao ='Atualizacao' WHERE Informacao like 'Update Version:%'; 
UPDATE [dbo].[456_log] SET Informacao ='Inspeção Interrompida' WHERE Informacao like 'Packet info: (+)Warning! Inspection stopped%'; 
UPDATE [dbo].[456_log] SET Informacao ='Atualizacao' WHERE Informacao like 'log_sys_message:%'; 
UPDATE [dbo].[456_log] SET Informacao ='Sistema' WHERE Informacao like 'sys_message: %'; 
UPDATE [dbo].[456_log] SET Informacao ='Bypass IPS' WHERE Informacao like 'resource_shortage: Bypassing IPS due to resources shortage%'; 
UPDATE [dbo].[456_log] SET Informacao ='Spoofing' WHERE Informacao like 'message_info: Address spoofin%'; 
UPDATE [dbo].[456_log] SET Informacao ='Problema de Defragmentacao' WHERE Informacao like 'message: Virtual defragmentation error: Timeout;%'; 
UPDATE [dbo].[456_log] SET Informacao ='VRRP' WHERE Informacao like '%VRRP%'; 
go
DBCC SHRINKDATABASE (IPS);


UPDATE [dbo].[457_log] SET Data ='2014-11-21' WHERE Data like '21Nov2014';
go 
UPDATE [dbo].[457_log] Set Produto = replace(Produto, 'IPS Software Blade', 'IPS');
UPDATE [dbo].[457_log] Set Produto = replace(Produto, 'Multi-product', 'Multi');
UPDATE [dbo].[457_log] Set Produto = replace(Produto, 'Security Gateway/Management', 'FW');
UPDATE [dbo].[457_log] SET Informacao ='Cluster Info' WHERE Informacao like 'cluster_info%';
UPDATE [dbo].[457_log] SET Informacao ='Problema ICMP' WHERE Informacao like 'ICMP: %';
UPDATE [dbo].[457_log] SET Informacao ='IKE' WHERE Informacao like 'IKE:%';
UPDATE [dbo].[457_log] SET Informacao ='Entrada Externa/Saida Interna' WHERE Informacao like 'inzone: External; outzone: Internal%';
UPDATE [dbo].[457_log] SET Informacao ='Entrada e Saida Interna' WHERE Informacao like 'inzone: Internal; outzone: Internal%';
UPDATE [dbo].[457_log] SET Informacao ='Entrada Interna/Saida Externa' WHERE Informacao like 'inzone: Internal; outzone: External%';
UPDATE [dbo].[457_log] SET Informacao ='Entrada Interna/Saida Local' WHERE Informacao like 'inzone: Internal; outzone: Local%';
UPDATE [dbo].[457_log] SET Informacao ='Entrada Local/Saida Interna' WHERE Informacao like 'inzone: Local; outzone: Internal%';
UPDATE [dbo].[457_log] SET Informacao ='Entrada Externa/Saida Local' WHERE Informacao like 'inzone: External; outzone: Local%';
UPDATE [dbo].[457_log] SET Informacao ='Entrada Local/Saida Externa' WHERE Informacao like 'inzone: Local; outzone: External%';
UPDATE [dbo].[457_log] SET Informacao ='Packet Overflow' WHERE Informacao like 'Packet info: overflow of%';
UPDATE [dbo].[457_log] SET Informacao ='Streaming - Anomalias externas' WHERE Informacao like 'Streaming Engine: Detected%';
UPDATE [dbo].[457_log] SET Informacao ='Associacao de Eventos' WHERE Informacao like 'Summary: Detected %';
UPDATE [dbo].[457_log] SET Informacao ='Problemas TCP' WHERE Informacao like 'TCP flags: %';
UPDATE [dbo].[457_log] SET Informacao ='Problemas TCP' WHERE Informacao like 'TCP packet out of state:%';
go
UPDATE [dbo].[457_log] SET Informacao ='Sincronizacao de Log' WHERE Informacao like 'Total logs:%';
UPDATE [dbo].[457_log] SET Informacao ='Atualizacao' WHERE Informacao like 'Update Version:%'; 
UPDATE [dbo].[457_log] SET Informacao ='Inspeção Interrompida' WHERE Informacao like 'Packet info: (+)Warning! Inspection stopped%'; 
UPDATE [dbo].[457_log] SET Informacao ='Atualizacao' WHERE Informacao like 'log_sys_message:%'; 
UPDATE [dbo].[457_log] SET Informacao ='Sistema' WHERE Informacao like 'sys_message: %'; 
UPDATE [dbo].[457_log] SET Informacao ='Bypass IPS' WHERE Informacao like 'resource_shortage: Bypassing IPS due to resources shortage%'; 
UPDATE [dbo].[457_log] SET Informacao ='Spoofing' WHERE Informacao like 'message_info: Address spoofin%'; 
UPDATE [dbo].[457_log] SET Informacao ='Problema de Defragmentacao' WHERE Informacao like 'message: Virtual defragmentation error: Timeout;%'; 
UPDATE [dbo].[457_log] SET Informacao ='VRRP' WHERE Informacao like '%VRRP%'; 
go
DBCC SHRINKDATABASE (IPS);


UPDATE [dbo].[458_log] SET Data ='2014-11-21' WHERE Data like '21Nov2014';
go 
UPDATE [dbo].[458_log] Set Produto = replace(Produto, 'IPS Software Blade', 'IPS');
UPDATE [dbo].[458_log] Set Produto = replace(Produto, 'Multi-product', 'Multi');
UPDATE [dbo].[458_log] Set Produto = replace(Produto, 'Security Gateway/Management', 'FW');
UPDATE [dbo].[458_log] SET Informacao ='Cluster Info' WHERE Informacao like 'cluster_info%';
UPDATE [dbo].[458_log] SET Informacao ='Problema ICMP' WHERE Informacao like 'ICMP: %';
UPDATE [dbo].[458_log] SET Informacao ='IKE' WHERE Informacao like 'IKE:%';
UPDATE [dbo].[458_log] SET Informacao ='Entrada Externa/Saida Interna' WHERE Informacao like 'inzone: External; outzone: Internal%';
UPDATE [dbo].[458_log] SET Informacao ='Entrada e Saida Interna' WHERE Informacao like 'inzone: Internal; outzone: Internal%';
UPDATE [dbo].[458_log] SET Informacao ='Entrada Interna/Saida Externa' WHERE Informacao like 'inzone: Internal; outzone: External%';
UPDATE [dbo].[458_log] SET Informacao ='Entrada Interna/Saida Local' WHERE Informacao like 'inzone: Internal; outzone: Local%';
UPDATE [dbo].[458_log] SET Informacao ='Entrada Local/Saida Interna' WHERE Informacao like 'inzone: Local; outzone: Internal%';
UPDATE [dbo].[458_log] SET Informacao ='Entrada Externa/Saida Local' WHERE Informacao like 'inzone: External; outzone: Local%';
UPDATE [dbo].[458_log] SET Informacao ='Entrada Local/Saida Externa' WHERE Informacao like 'inzone: Local; outzone: External%';
UPDATE [dbo].[458_log] SET Informacao ='Packet Overflow' WHERE Informacao like 'Packet info: overflow of%';
UPDATE [dbo].[458_log] SET Informacao ='Streaming - Anomalias externas' WHERE Informacao like 'Streaming Engine: Detected%';
UPDATE [dbo].[458_log] SET Informacao ='Associacao de Eventos' WHERE Informacao like 'Summary: Detected %';
UPDATE [dbo].[458_log] SET Informacao ='Problemas TCP' WHERE Informacao like 'TCP flags: %';
UPDATE [dbo].[458_log] SET Informacao ='Problemas TCP' WHERE Informacao like 'TCP packet out of state:%';
go
UPDATE [dbo].[458_log] SET Informacao ='Sincronizacao de Log' WHERE Informacao like 'Total logs:%';
UPDATE [dbo].[458_log] SET Informacao ='Atualizacao' WHERE Informacao like 'Update Version:%'; 
UPDATE [dbo].[458_log] SET Informacao ='Inspeção Interrompida' WHERE Informacao like 'Packet info: (+)Warning! Inspection stopped%'; 
UPDATE [dbo].[458_log] SET Informacao ='Atualizacao' WHERE Informacao like 'log_sys_message:%'; 
UPDATE [dbo].[458_log] SET Informacao ='Sistema' WHERE Informacao like 'sys_message: %'; 
UPDATE [dbo].[458_log] SET Informacao ='Bypass IPS' WHERE Informacao like 'resource_shortage: Bypassing IPS due to resources shortage%'; 
UPDATE [dbo].[458_log] SET Informacao ='Spoofing' WHERE Informacao like 'message_info: Address spoofin%'; 
UPDATE [dbo].[458_log] SET Informacao ='Problema de Defragmentacao' WHERE Informacao like 'message: Virtual defragmentation error: Timeout;%'; 
UPDATE [dbo].[458_log] SET Informacao ='VRRP' WHERE Informacao like '%VRRP%'; 
go
DBCC SHRINKDATABASE (IPS);


UPDATE [dbo].[458_2_log] SET Data ='2014-11-21' WHERE Data like '21Nov2014';
go 
UPDATE [dbo].[458_2_log] Set Produto = replace(Produto, 'IPS Software Blade', 'IPS');
UPDATE [dbo].[458_2_log] Set Produto = replace(Produto, 'Multi-product', 'Multi');
UPDATE [dbo].[458_2_log] Set Produto = replace(Produto, 'Security Gateway/Management', 'FW');
UPDATE [dbo].[458_2_log] SET Informacao ='Cluster Info' WHERE Informacao like 'cluster_info%';
UPDATE [dbo].[458_2_log] SET Informacao ='Problema ICMP' WHERE Informacao like 'ICMP: %';
UPDATE [dbo].[458_2_log] SET Informacao ='IKE' WHERE Informacao like 'IKE:%';
UPDATE [dbo].[458_2_log] SET Informacao ='Entrada Externa/Saida Interna' WHERE Informacao like 'inzone: External; outzone: Internal%';
UPDATE [dbo].[458_2_log] SET Informacao ='Entrada e Saida Interna' WHERE Informacao like 'inzone: Internal; outzone: Internal%';
UPDATE [dbo].[458_2_log] SET Informacao ='Entrada Interna/Saida Externa' WHERE Informacao like 'inzone: Internal; outzone: External%';
UPDATE [dbo].[458_2_log] SET Informacao ='Entrada Interna/Saida Local' WHERE Informacao like 'inzone: Internal; outzone: Local%';
UPDATE [dbo].[458_2_log] SET Informacao ='Entrada Local/Saida Interna' WHERE Informacao like 'inzone: Local; outzone: Internal%';
UPDATE [dbo].[458_2_log] SET Informacao ='Entrada Externa/Saida Local' WHERE Informacao like 'inzone: External; outzone: Local%';
UPDATE [dbo].[458_2_log] SET Informacao ='Entrada Local/Saida Externa' WHERE Informacao like 'inzone: Local; outzone: External%';
UPDATE [dbo].[458_2_log] SET Informacao ='Packet Overflow' WHERE Informacao like 'Packet info: overflow of%';
UPDATE [dbo].[458_2_log] SET Informacao ='Streaming - Anomalias externas' WHERE Informacao like 'Streaming Engine: Detected%';
UPDATE [dbo].[458_2_log] SET Informacao ='Associacao de Eventos' WHERE Informacao like 'Summary: Detected %';
UPDATE [dbo].[458_2_log] SET Informacao ='Problemas TCP' WHERE Informacao like 'TCP flags: %';
UPDATE [dbo].[458_2_log] SET Informacao ='Problemas TCP' WHERE Informacao like 'TCP packet out of state:%';
go
UPDATE [dbo].[458_2_log] SET Informacao ='Sincronizacao de Log' WHERE Informacao like 'Total logs:%';
UPDATE [dbo].[458_2_log] SET Informacao ='Atualizacao' WHERE Informacao like 'Update Version:%'; 
UPDATE [dbo].[458_2_log] SET Informacao ='Inspeção Interrompida' WHERE Informacao like 'Packet info: (+)Warning! Inspection stopped%'; 
UPDATE [dbo].[458_2_log] SET Informacao ='Atualizacao' WHERE Informacao like 'log_sys_message:%'; 
UPDATE [dbo].[458_2_log] SET Informacao ='Sistema' WHERE Informacao like 'sys_message: %'; 
UPDATE [dbo].[458_2_log] SET Informacao ='Bypass IPS' WHERE Informacao like 'resource_shortage: Bypassing IPS due to resources shortage%'; 
UPDATE [dbo].[458_2_log] SET Informacao ='Spoofing' WHERE Informacao like 'message_info: Address spoofin%'; 
UPDATE [dbo].[458_2_log] SET Informacao ='Problema de Defragmentacao' WHERE Informacao like 'message: Virtual defragmentation error: Timeout;%'; 
UPDATE [dbo].[458_2_log] SET Informacao ='VRRP' WHERE Informacao like '%VRRP%'; 
go
DBCC SHRINKDATABASE (IPS);
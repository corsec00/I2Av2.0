%Limpa as variáveis na Janela de Comando
clc
%% Carrega os modelos
%Modelo 1 para o Filtro 1 (WAF)
modelo1 = 'LSTATUS ~ METODO + URI + URL + USERAGENT + BROWSER + COOKIE'; %Retirou STATUS
%Modelo 2 para Filtro 2 (WAF + IPS)
modelo2 = 'LREGRA ~ METODO + URI + URL + USERAGENT + BROWSER + COOKIE + MSTATUS';%Retirou STATUS

%%Calcula a regressão Logística baseada em um modelo de regressão linear generalizada (Distribuição Binomial)
RegLogA1 = fitglm(FiltroA, modelo1, 'Distribution','binomial','CategoricalVars',1:7);
RegLogA2 = fitglm(FiltroA, modelo2, 'Distribution','binomial','CategoricalVars',1:8);
RegLogB1 = fitglm(FiltroB, modelo1, 'Distribution','binomial','CategoricalVars',1:7);
RegLogB2 = fitglm(FiltroB, modelo2, 'Distribution','binomial','CategoricalVars',1:8);
RegLogC1 = fitglm(FiltroC, modelo1, 'Distribution','binomial','CategoricalVars',1:7);
RegLogC2 = fitglm(FiltroC, modelo2, 'Distribution','binomial','CategoricalVars',1:8);
RegLogD1 = fitglm(FiltroD, modelo1, 'Distribution','binomial','CategoricalVars',1:7);
RegLogD2 = fitglm(FiltroD, modelo2, 'Distribution','binomial','CategoricalVars',1:8);
RegLogE1 = fitglm(FiltroE, modelo1, 'Distribution','binomial','CategoricalVars',1:7);
RegLogE2 = fitglm(FiltroE, modelo2, 'Distribution','binomial','CategoricalVars',1:8);
RegLogF1 = fitglm(FiltroF, modelo1, 'Distribution','binomial','CategoricalVars',1:7);
RegLogF2 = fitglm(FiltroF, modelo2, 'Distribution','binomial','CategoricalVars',1:8);

%%Exibe os resultados na tela
RegLogA1
RegLogA2
RegLogB1
RegLogB2
RegLogC1
RegLogC2
RegLogD1
RegLogD2
RegLogE1
RegLogE2
RegLogF1
RegLogF2

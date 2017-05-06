%Limpa as variáveis na Janela de Comando
clc
%% Carrega os modelos
%Modelo 1 para o Filtro 1 (WAF)
modelo1 = 'LSTATUS ~ METODO + URI + URL + USERAGENT + BROWSER + COOKIE'; %Retirou STATUS
%Modelo 2 para Filtro 2 (WAF + IPS)
modelo2 = 'LREGRA ~ METODO + URI + URL + USERAGENT + BROWSER + COOKIE + MSTATUS';%Retirou STATUS

%%Calcula a regressão Logística baseada em um modelo de regressão linear generalizada (Distribuição Binomial)
RegLog05A1 = fitglm(Filtro05A, modelo1, 'Distribution','binomial','CategoricalVars',1:7);
RegLog05A2 = fitglm(Filtro05A, modelo2, 'Distribution','binomial','CategoricalVars',1:8);
RegLog05B1 = fitglm(Filtro05B, modelo1, 'Distribution','binomial','CategoricalVars',1:7);
RegLog05B2 = fitglm(Filtro05B, modelo2, 'Distribution','binomial','CategoricalVars',1:8);
RegLog05C1 = fitglm(Filtro05C, modelo1, 'Distribution','binomial','CategoricalVars',1:7);
RegLog05C2 = fitglm(Filtro05C, modelo2, 'Distribution','binomial','CategoricalVars',1:8);
RegLog05D1 = fitglm(Filtro05D, modelo1, 'Distribution','binomial','CategoricalVars',1:7);
RegLog05D2 = fitglm(Filtro05D, modelo2, 'Distribution','binomial','CategoricalVars',1:8);
RegLog05E1 = fitglm(Filtro05E, modelo1, 'Distribution','binomial','CategoricalVars',1:7);
RegLog05E2 = fitglm(Filtro05E, modelo2, 'Distribution','binomial','CategoricalVars',1:8);
RegLog05F1 = fitglm(Filtro05F, modelo1, 'Distribution','binomial','CategoricalVars',1:7);
RegLog05F2 = fitglm(Filtro05F, modelo2, 'Distribution','binomial','CategoricalVars',1:8);
RegLog05G1 = fitglm(Filtro05G, modelo1, 'Distribution','binomial','CategoricalVars',1:7);
RegLog05G2 = fitglm(Filtro05G, modelo2, 'Distribution','binomial','CategoricalVars',1:8);
RegLog05H1 = fitglm(Filtro05H, modelo1, 'Distribution','binomial','CategoricalVars',1:7);
RegLog05H2 = fitglm(Filtro05H, modelo2, 'Distribution','binomial','CategoricalVars',1:8);
RegLog05I1 = fitglm(Filtro05I, modelo1, 'Distribution','binomial','CategoricalVars',1:7);
RegLog05I2 = fitglm(Filtro05I, modelo2, 'Distribution','binomial','CategoricalVars',1:8);
RegLog05J1 = fitglm(Filtro05J, modelo1, 'Distribution','binomial','CategoricalVars',1:7);
RegLog05J2 = fitglm(Filtro05J, modelo2, 'Distribution','binomial','CategoricalVars',1:8);
RegLog05K1 = fitglm(Filtro05K, modelo1, 'Distribution','binomial','CategoricalVars',1:7);
RegLog05K2 = fitglm(Filtro05K, modelo2, 'Distribution','binomial','CategoricalVars',1:8);
RegLog05L1 = fitglm(Filtro05L, modelo1, 'Distribution','binomial','CategoricalVars',1:7);
RegLog05L2 = fitglm(Filtro05L, modelo2, 'Distribution','binomial','CategoricalVars',1:8);

RegLog21A1 = fitglm(Filtro21A, modelo1, 'Distribution','binomial','CategoricalVars',1:7);
RegLog21A2 = fitglm(Filtro21A, modelo2, 'Distribution','binomial','CategoricalVars',1:8);
RegLog21B1 = fitglm(Filtro21B, modelo1, 'Distribution','binomial','CategoricalVars',1:7);
RegLog21B2 = fitglm(Filtro21B, modelo2, 'Distribution','binomial','CategoricalVars',1:8);
RegLog21C1 = fitglm(Filtro21C, modelo1, 'Distribution','binomial','CategoricalVars',1:7);
RegLog21C2 = fitglm(Filtro21C, modelo2, 'Distribution','binomial','CategoricalVars',1:8);
RegLog21D1 = fitglm(Filtro21D, modelo1, 'Distribution','binomial','CategoricalVars',1:7);
RegLog21D2 = fitglm(Filtro21D, modelo2, 'Distribution','binomial','CategoricalVars',1:8);
RegLog21E1 = fitglm(Filtro21E, modelo1, 'Distribution','binomial','CategoricalVars',1:7);
RegLog21E2 = fitglm(Filtro21E, modelo2, 'Distribution','binomial','CategoricalVars',1:8);
RegLog21F1 = fitglm(Filtro21F, modelo1, 'Distribution','binomial','CategoricalVars',1:7);
RegLog21F2 = fitglm(Filtro21F, modelo2, 'Distribution','binomial','CategoricalVars',1:8);
RegLog21G1 = fitglm(Filtro21G, modelo1, 'Distribution','binomial','CategoricalVars',1:7);
RegLog21G2 = fitglm(Filtro21G, modelo2, 'Distribution','binomial','CategoricalVars',1:8);
RegLog21H1 = fitglm(Filtro21H, modelo1, 'Distribution','binomial','CategoricalVars',1:7);
RegLog21H2 = fitglm(Filtro21H, modelo2, 'Distribution','binomial','CategoricalVars',1:8);
RegLog21I1 = fitglm(Filtro21I, modelo1, 'Distribution','binomial','CategoricalVars',1:7);
RegLog21I2 = fitglm(Filtro21I, modelo2, 'Distribution','binomial','CategoricalVars',1:8);
RegLog21J1 = fitglm(Filtro21J, modelo1, 'Distribution','binomial','CategoricalVars',1:7);
RegLog21J2 = fitglm(Filtro21J, modelo2, 'Distribution','binomial','CategoricalVars',1:8);
RegLog21K1 = fitglm(Filtro21K, modelo1, 'Distribution','binomial','CategoricalVars',1:7);
RegLog21K2 = fitglm(Filtro21K, modelo2, 'Distribution','binomial','CategoricalVars',1:8);
RegLog21L1 = fitglm(Filtro21L, modelo1, 'Distribution','binomial','CategoricalVars',1:7);
RegLog21L2 = fitglm(Filtro21L, modelo2, 'Distribution','binomial','CategoricalVars',1:8);

RegLog28A1 = fitglm(Filtro28A, modelo1, 'Distribution','binomial','CategoricalVars',1:7);
RegLog28A2 = fitglm(Filtro28A, modelo2, 'Distribution','binomial','CategoricalVars',1:8);
RegLog28B1 = fitglm(Filtro28B, modelo1, 'Distribution','binomial','CategoricalVars',1:7);
RegLog28B2 = fitglm(Filtro28B, modelo2, 'Distribution','binomial','CategoricalVars',1:8);
RegLog28C1 = fitglm(Filtro28C, modelo1, 'Distribution','binomial','CategoricalVars',1:7);
RegLog28C2 = fitglm(Filtro28C, modelo2, 'Distribution','binomial','CategoricalVars',1:8);
RegLog28D1 = fitglm(Filtro28D, modelo1, 'Distribution','binomial','CategoricalVars',1:7);
RegLog28D2 = fitglm(Filtro28D, modelo2, 'Distribution','binomial','CategoricalVars',1:8);
RegLog28E1 = fitglm(Filtro28E, modelo1, 'Distribution','binomial','CategoricalVars',1:7);
RegLog28E2 = fitglm(Filtro28E, modelo2, 'Distribution','binomial','CategoricalVars',1:8);
RegLog28F1 = fitglm(Filtro28F, modelo1, 'Distribution','binomial','CategoricalVars',1:7);
RegLog28F2 = fitglm(Filtro28F, modelo2, 'Distribution','binomial','CategoricalVars',1:8);
RegLog28G1 = fitglm(Filtro28G, modelo1, 'Distribution','binomial','CategoricalVars',1:7);
RegLog28G2 = fitglm(Filtro28G, modelo2, 'Distribution','binomial','CategoricalVars',1:8);
RegLog28H1 = fitglm(Filtro28H, modelo1, 'Distribution','binomial','CategoricalVars',1:7);
RegLog28H2 = fitglm(Filtro28H, modelo2, 'Distribution','binomial','CategoricalVars',1:8);
RegLog28I1 = fitglm(Filtro28I, modelo1, 'Distribution','binomial','CategoricalVars',1:7);
RegLog28I2 = fitglm(Filtro28I, modelo2, 'Distribution','binomial','CategoricalVars',1:8);
RegLog28J1 = fitglm(Filtro28J, modelo1, 'Distribution','binomial','CategoricalVars',1:7);
RegLog28J2 = fitglm(Filtro28J, modelo2, 'Distribution','binomial','CategoricalVars',1:8);
RegLog28K1 = fitglm(Filtro28K, modelo1, 'Distribution','binomial','CategoricalVars',1:7);
RegLog28K2 = fitglm(Filtro28K, modelo2, 'Distribution','binomial','CategoricalVars',1:8);
RegLog28L1 = fitglm(Filtro28L, modelo1, 'Distribution','binomial','CategoricalVars',1:7);
RegLog28L2 = fitglm(Filtro28L, modelo2, 'Distribution','binomial','CategoricalVars',1:8);
clc
%%Exibe os resultados na tela
RegLog05A1
RegLog05A2
RegLog05B1
RegLog05B2
RegLog05C1
RegLog05C2
RegLog05D1
RegLog05D2
RegLog05E1
RegLog05E2
RegLog05F1
RegLog05F2
RegLog05G1
RegLog05G2
RegLog05H1
RegLog05H2
RegLog05I1
RegLog05I2
RegLog05J1
RegLog05J2
RegLog05K1
RegLog05K2
RegLog05L1
RegLog05L2

RegLog21A1
RegLog21A2
RegLog21B1
RegLog21B2
RegLog21C1
RegLog21C2
RegLog21D1
RegLog21D2
RegLog21E1
RegLog21E2
RegLog21F1
RegLog21F2
RegLog21G1
RegLog21G2
RegLog21H1
RegLog21H2
RegLog21I1
RegLog21I2
RegLog21J1
RegLog21J2
RegLog21K1
RegLog21K2
RegLog21L1
RegLog21L2

RegLog28A1
RegLog28A2
RegLog28B1
RegLog28B2
RegLog28C1
RegLog28C2
RegLog28D1
RegLog28D2
RegLog28E1
RegLog28E2
RegLog28F1
RegLog28F2
RegLog28G1
RegLog28G2
RegLog28H1
RegLog28H2
RegLog28I1
RegLog28I2
RegLog28J1
RegLog28J2
RegLog28K1
RegLog28K2
RegLog28L1
RegLog28L2

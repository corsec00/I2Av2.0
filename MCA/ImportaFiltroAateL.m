filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\FiltroA.csv';
delimiter = ';';
startRow = 2;
formatSpec = '%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%[^\n\r]';
fileID = fopen(filename,'r');
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'HeaderLines' ,startRow-1, 'ReturnOnError', false);
fclose(fileID);
raw = repmat({''},length(dataArray{1}),length(dataArray)-1);
for col=1:length(dataArray)-1
    raw(1:length(dataArray{col}),col) = dataArray{col};
end
numericData = NaN(size(dataArray{1},1),size(dataArray,2));

for col=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18]
    rawData = dataArray{col};
    for row=1:size(rawData, 1);
        regexstr = '(?<prefix>.*?)(?<numbers>([-]*(\d+[\.]*)+[\,]{0,1}\d*[eEdD]{0,1}[-+]*\d*[i]{0,1})|([-]*(\d+[\.]*)*[\,]{1,1}\d+[eEdD]{0,1}[-+]*\d*[i]{0,1}))(?<suffix>.*)';
        try
            result = regexp(rawData{row}, regexstr, 'names');
            numbers = result.numbers;
            invalidThousandsSeparator = false;
            if any(numbers=='.');
                thousandsRegExp = '^\d+?(\.\d{3})*\,{0,1}\d*$';
                if isempty(regexp(thousandsRegExp, '.', 'once'));
                    numbers = NaN;
                    invalidThousandsSeparator = true;
                end
            end
            if ~invalidThousandsSeparator;
                numbers = strrep(numbers, '.', '');
                numbers = strrep(numbers, ',', '.');
                numbers = textscan(numbers, '%f');
                numericData(row, col) = numbers{1};
                raw{row, col} = numbers{1};
            end
        catch me
        end
    end
end
FiltroA = table;
FiltroA.METODO = cell2mat(raw(:, 1));
FiltroA.URI = cell2mat(raw(:, 2));
FiltroA.STATUS = cell2mat(raw(:, 3));
FiltroA.URL = cell2mat(raw(:, 4));
FiltroA.USERAGENT = cell2mat(raw(:, 5));
FiltroA.COOKIE = cell2mat(raw(:, 6));
FiltroA.BROWSER = cell2mat(raw(:, 7));
FiltroA.QSTATUS = cell2mat(raw(:, 8));
FiltroA.SSTATUS = cell2mat(raw(:, 9));
FiltroA.MSTATUS = cell2mat(raw(:, 10));
FiltroA.LSTATUS = cell2mat(raw(:, 11));
FiltroA.ACAO = cell2mat(raw(:, 12));
FiltroA.SERVICO = cell2mat(raw(:, 13));
FiltroA.INFORMACAO = cell2mat(raw(:, 14));
FiltroA.QREGRA = cell2mat(raw(:, 15));
FiltroA.SREGRA = cell2mat(raw(:, 16));
FiltroA.MREGRA = cell2mat(raw(:, 17));
FiltroA.LREGRA = cell2mat(raw(:, 18));
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;

%%
%%
%%

filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\FiltroB.csv';
delimiter = ';';
startRow = 2;
formatSpec = '%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%[^\n\r]';
fileID = fopen(filename,'r');
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'HeaderLines' ,startRow-1, 'ReturnOnError', false);
fclose(fileID);

raw = repmat({''},length(dataArray{1}),length(dataArray)-1);
for col=1:length(dataArray)-1
    raw(1:length(dataArray{col}),col) = dataArray{col};
end
numericData = NaN(size(dataArray{1},1),size(dataArray,2));

for col=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18]
    rawData = dataArray{col};
    for row=1:size(rawData, 1);
        regexstr = '(?<prefix>.*?)(?<numbers>([-]*(\d+[\.]*)+[\,]{0,1}\d*[eEdD]{0,1}[-+]*\d*[i]{0,1})|([-]*(\d+[\.]*)*[\,]{1,1}\d+[eEdD]{0,1}[-+]*\d*[i]{0,1}))(?<suffix>.*)';
        try
            result = regexp(rawData{row}, regexstr, 'names');
            numbers = result.numbers;
            invalidThousandsSeparator = false;
            if any(numbers=='.');
                thousandsRegExp = '^\d+?(\.\d{3})*\,{0,1}\d*$';
                if isempty(regexp(thousandsRegExp, '.', 'once'));
                    numbers = NaN;
                    invalidThousandsSeparator = true;
                end
            end
            if ~invalidThousandsSeparator;
                numbers = strrep(numbers, '.', '');
                numbers = strrep(numbers, ',', '.');
                numbers = textscan(numbers, '%f');
                numericData(row, col) = numbers{1};
                raw{row, col} = numbers{1};
            end
        catch me
        end
    end
end
FiltroB = table;
FiltroB.METODO = cell2mat(raw(:, 1));
FiltroB.URI = cell2mat(raw(:, 2));
FiltroB.STATUS = cell2mat(raw(:, 3));
FiltroB.URL = cell2mat(raw(:, 4));
FiltroB.USERAGENT = cell2mat(raw(:, 5));
FiltroB.COOKIE = cell2mat(raw(:, 6));
FiltroB.BROWSER = cell2mat(raw(:, 7));
FiltroB.QSTATUS = cell2mat(raw(:, 8));
FiltroB.SSTATUS = cell2mat(raw(:, 9));
FiltroB.MSTATUS = cell2mat(raw(:, 10));
FiltroB.LSTATUS = cell2mat(raw(:, 11));
FiltroB.ACAO = cell2mat(raw(:, 12));
FiltroB.SERVICO = cell2mat(raw(:, 13));
FiltroB.INFORMACAO = cell2mat(raw(:, 14));
FiltroB.QREGRA = cell2mat(raw(:, 15));
FiltroB.SREGRA = cell2mat(raw(:, 16));
FiltroB.MREGRA = cell2mat(raw(:, 17));
FiltroB.LREGRA = cell2mat(raw(:, 18));
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;
%%
%%
%%
filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\FiltroC.csv';
delimiter = ';';
startRow = 2;
formatSpec = '%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%[^\n\r]';
fileID = fopen(filename,'r');
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'HeaderLines' ,startRow-1, 'ReturnOnError', false);
fclose(fileID);
raw = repmat({''},length(dataArray{1}),length(dataArray)-1);
for col=1:length(dataArray)-1
    raw(1:length(dataArray{col}),col) = dataArray{col};
end
numericData = NaN(size(dataArray{1},1),size(dataArray,2));
for col=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18]
    rawData = dataArray{col};
    for row=1:size(rawData, 1);
        regexstr = '(?<prefix>.*?)(?<numbers>([-]*(\d+[\.]*)+[\,]{0,1}\d*[eEdD]{0,1}[-+]*\d*[i]{0,1})|([-]*(\d+[\.]*)*[\,]{1,1}\d+[eEdD]{0,1}[-+]*\d*[i]{0,1}))(?<suffix>.*)';
        try
            result = regexp(rawData{row}, regexstr, 'names');
            numbers = result.numbers;
            invalidThousandsSeparator = false;
            if any(numbers=='.');
                thousandsRegExp = '^\d+?(\.\d{3})*\,{0,1}\d*$';
                if isempty(regexp(thousandsRegExp, '.', 'once'));
                    numbers = NaN;
                    invalidThousandsSeparator = true;
                end
            end
            if ~invalidThousandsSeparator;
                numbers = strrep(numbers, '.', '');
                numbers = strrep(numbers, ',', '.');
                numbers = textscan(numbers, '%f');
                numericData(row, col) = numbers{1};
                raw{row, col} = numbers{1};
            end
        catch me
        end
    end
end
FiltroC = table;
FiltroC.METODO = cell2mat(raw(:, 1));
FiltroC.URI = cell2mat(raw(:, 2));
FiltroC.STATUS = cell2mat(raw(:, 3));
FiltroC.URL = cell2mat(raw(:, 4));
FiltroC.USERAGENT = cell2mat(raw(:, 5));
FiltroC.COOKIE = cell2mat(raw(:, 6));
FiltroC.BROWSER = cell2mat(raw(:, 7));
FiltroC.QSTATUS = cell2mat(raw(:, 8));
FiltroC.SSTATUS = cell2mat(raw(:, 9));
FiltroC.MSTATUS = cell2mat(raw(:, 10));
FiltroC.LSTATUS = cell2mat(raw(:, 11));
FiltroC.ACAO = cell2mat(raw(:, 12));
FiltroC.SERVICO = cell2mat(raw(:, 13));
FiltroC.INFORMACAO = cell2mat(raw(:, 14));
FiltroC.QREGRA = cell2mat(raw(:, 15));
FiltroC.SREGRA = cell2mat(raw(:, 16));
FiltroC.MREGRA = cell2mat(raw(:, 17));
FiltroC.LREGRA = cell2mat(raw(:, 18));
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;
%%
%%
%%
filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\FiltroD.csv';
delimiter = ';';
startRow = 2;
formatSpec = '%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%[^\n\r]';
fileID = fopen(filename,'r');
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'HeaderLines' ,startRow-1, 'ReturnOnError', false);
fclose(fileID);
raw = repmat({''},length(dataArray{1}),length(dataArray)-1);
for col=1:length(dataArray)-1
    raw(1:length(dataArray{col}),col) = dataArray{col};
end
numericData = NaN(size(dataArray{1},1),size(dataArray,2));
for col=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18]
    rawData = dataArray{col};
    for row=1:size(rawData, 1);
        regexstr = '(?<prefix>.*?)(?<numbers>([-]*(\d+[\.]*)+[\,]{0,1}\d*[eEdD]{0,1}[-+]*\d*[i]{0,1})|([-]*(\d+[\.]*)*[\,]{1,1}\d+[eEdD]{0,1}[-+]*\d*[i]{0,1}))(?<suffix>.*)';
        try
            result = regexp(rawData{row}, regexstr, 'names');
            numbers = result.numbers;
            invalidThousandsSeparator = false;
            if any(numbers=='.');
                thousandsRegExp = '^\d+?(\.\d{3})*\,{0,1}\d*$';
                if isempty(regexp(thousandsRegExp, '.', 'once'));
                    numbers = NaN;
                    invalidThousandsSeparator = true;
                end
            end
            if ~invalidThousandsSeparator;
                numbers = strrep(numbers, '.', '');
                numbers = strrep(numbers, ',', '.');
                numbers = textscan(numbers, '%f');
                numericData(row, col) = numbers{1};
                raw{row, col} = numbers{1};
            end
        catch me
        end
    end
end
FiltroD = table;
FiltroD.METODO = cell2mat(raw(:, 1));
FiltroD.URI = cell2mat(raw(:, 2));
FiltroD.STATUS = cell2mat(raw(:, 3));
FiltroD.URL = cell2mat(raw(:, 4));
FiltroD.USERAGENT = cell2mat(raw(:, 5));
FiltroD.COOKIE = cell2mat(raw(:, 6));
FiltroD.BROWSER = cell2mat(raw(:, 7));
FiltroD.QSTATUS = cell2mat(raw(:, 8));
FiltroD.SSTATUS = cell2mat(raw(:, 9));
FiltroD.MSTATUS = cell2mat(raw(:, 10));
FiltroD.LSTATUS = cell2mat(raw(:, 11));
FiltroD.ACAO = cell2mat(raw(:, 12));
FiltroD.SERVICO = cell2mat(raw(:, 13));
FiltroD.INFORMACAO = cell2mat(raw(:, 14));
FiltroD.QREGRA = cell2mat(raw(:, 15));
FiltroD.SREGRA = cell2mat(raw(:, 16));
FiltroD.MREGRA = cell2mat(raw(:, 17));
FiltroD.LREGRA = cell2mat(raw(:, 18));
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;
%%
%%
%%
filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\FiltroE.csv';
delimiter = ';';
startRow = 2;
formatSpec = '%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%[^\n\r]';
fileID = fopen(filename,'r');
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'HeaderLines' ,startRow-1, 'ReturnOnError', false);
fclose(fileID);
raw = repmat({''},length(dataArray{1}),length(dataArray)-1);
for col=1:length(dataArray)-1
    raw(1:length(dataArray{col}),col) = dataArray{col};
end
numericData = NaN(size(dataArray{1},1),size(dataArray,2));
for col=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18]
    rawData = dataArray{col};
    for row=1:size(rawData, 1);
        regexstr = '(?<prefix>.*?)(?<numbers>([-]*(\d+[\.]*)+[\,]{0,1}\d*[eEdD]{0,1}[-+]*\d*[i]{0,1})|([-]*(\d+[\.]*)*[\,]{1,1}\d+[eEdD]{0,1}[-+]*\d*[i]{0,1}))(?<suffix>.*)';
        try
            result = regexp(rawData{row}, regexstr, 'names');
            numbers = result.numbers;
            invalidThousandsSeparator = false;
            if any(numbers=='.');
                thousandsRegExp = '^\d+?(\.\d{3})*\,{0,1}\d*$';
                if isempty(regexp(thousandsRegExp, '.', 'once'));
                    numbers = NaN;
                    invalidThousandsSeparator = true;
                end
            end
            if ~invalidThousandsSeparator;
                numbers = strrep(numbers, '.', '');
                numbers = strrep(numbers, ',', '.');
                numbers = textscan(numbers, '%f');
                numericData(row, col) = numbers{1};
                raw{row, col} = numbers{1};
            end
        catch me
        end
    end
end
FiltroE = table;
FiltroE.METODO = cell2mat(raw(:, 1));
FiltroE.URI = cell2mat(raw(:, 2));
FiltroE.STATUS = cell2mat(raw(:, 3));
FiltroE.URL = cell2mat(raw(:, 4));
FiltroE.USERAGENT = cell2mat(raw(:, 5));
FiltroE.COOKIE = cell2mat(raw(:, 6));
FiltroE.BROWSER = cell2mat(raw(:, 7));
FiltroE.QSTATUS = cell2mat(raw(:, 8));
FiltroE.SSTATUS = cell2mat(raw(:, 9));
FiltroE.MSTATUS = cell2mat(raw(:, 10));
FiltroE.LSTATUS = cell2mat(raw(:, 11));
FiltroE.ACAO = cell2mat(raw(:, 12));
FiltroE.SERVICO = cell2mat(raw(:, 13));
FiltroE.INFORMACAO = cell2mat(raw(:, 14));
FiltroE.QREGRA = cell2mat(raw(:, 15));
FiltroE.SREGRA = cell2mat(raw(:, 16));
FiltroE.MREGRA = cell2mat(raw(:, 17));
FiltroE.LREGRA = cell2mat(raw(:, 18));
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;
%%
%%
%%
filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\FiltroF.csv';
delimiter = ';';
startRow = 2;
formatSpec = '%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%[^\n\r]';
fileID = fopen(filename,'r');
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'HeaderLines' ,startRow-1, 'ReturnOnError', false);
fclose(fileID);
raw = repmat({''},length(dataArray{1}),length(dataArray)-1);
for col=1:length(dataArray)-1
    raw(1:length(dataArray{col}),col) = dataArray{col};
end
numericData = NaN(size(dataArray{1},1),size(dataArray,2));
for col=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18]
    rawData = dataArray{col};
    for row=1:size(rawData, 1);
        regexstr = '(?<prefix>.*?)(?<numbers>([-]*(\d+[\.]*)+[\,]{0,1}\d*[eEdD]{0,1}[-+]*\d*[i]{0,1})|([-]*(\d+[\.]*)*[\,]{1,1}\d+[eEdD]{0,1}[-+]*\d*[i]{0,1}))(?<suffix>.*)';
        try
            result = regexp(rawData{row}, regexstr, 'names');
            numbers = result.numbers;
            invalidThousandsSeparator = false;
            if any(numbers=='.');
                thousandsRegExp = '^\d+?(\.\d{3})*\,{0,1}\d*$';
                if isempty(regexp(thousandsRegExp, '.', 'once'));
                    numbers = NaN;
                    invalidThousandsSeparator = true;
                end
            end
            if ~invalidThousandsSeparator;
                numbers = strrep(numbers, '.', '');
                numbers = strrep(numbers, ',', '.');
                numbers = textscan(numbers, '%f');
                numericData(row, col) = numbers{1};
                raw{row, col} = numbers{1};
            end
        catch me
        end
    end
end
FiltroF = table;
FiltroF.METODO = cell2mat(raw(:, 1));
FiltroF.URI = cell2mat(raw(:, 2));
FiltroF.STATUS = cell2mat(raw(:, 3));
FiltroF.URL = cell2mat(raw(:, 4));
FiltroF.USERAGENT = cell2mat(raw(:, 5));
FiltroF.COOKIE = cell2mat(raw(:, 6));
FiltroF.BROWSER = cell2mat(raw(:, 7));
FiltroF.QSTATUS = cell2mat(raw(:, 8));
FiltroF.SSTATUS = cell2mat(raw(:, 9));
FiltroF.MSTATUS = cell2mat(raw(:, 10));
FiltroF.LSTATUS = cell2mat(raw(:, 11));
FiltroF.ACAO = cell2mat(raw(:, 12));
FiltroF.SERVICO = cell2mat(raw(:, 13));
FiltroF.INFORMACAO = cell2mat(raw(:, 14));
FiltroF.QREGRA = cell2mat(raw(:, 15));
FiltroF.SREGRA = cell2mat(raw(:, 16));
FiltroF.MREGRA = cell2mat(raw(:, 17));
FiltroF.LREGRA = cell2mat(raw(:, 18));
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;
%%
%%
%%
filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\FiltroG.csv';
delimiter = ';';
startRow = 2;
formatSpec = '%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%[^\n\r]';
fileID = fopen(filename,'r');
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'HeaderLines' ,startRow-1, 'ReturnOnError', false);
fclose(fileID);
raw = repmat({''},length(dataArray{1}),length(dataArray)-1);
for col=1:length(dataArray)-1
    raw(1:length(dataArray{col}),col) = dataArray{col};
end
numericData = NaN(size(dataArray{1},1),size(dataArray,2));
for col=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18]
    rawData = dataArray{col};
    for row=1:size(rawData, 1);
        regexstr = '(?<prefix>.*?)(?<numbers>([-]*(\d+[\.]*)+[\,]{0,1}\d*[eEdD]{0,1}[-+]*\d*[i]{0,1})|([-]*(\d+[\.]*)*[\,]{1,1}\d+[eEdD]{0,1}[-+]*\d*[i]{0,1}))(?<suffix>.*)';
        try
            result = regexp(rawData{row}, regexstr, 'names');
            numbers = result.numbers;
            invalidThousandsSeparator = false;
            if any(numbers=='.');
                thousandsRegExp = '^\d+?(\.\d{3})*\,{0,1}\d*$';
                if isempty(regexp(thousandsRegExp, '.', 'once'));
                    numbers = NaN;
                    invalidThousandsSeparator = true;
                end
            end
            if ~invalidThousandsSeparator;
                numbers = strrep(numbers, '.', '');
                numbers = strrep(numbers, ',', '.');
                numbers = textscan(numbers, '%f');
                numericData(row, col) = numbers{1};
                raw{row, col} = numbers{1};
            end
        catch me
        end
    end
end
FiltroG = table;
FiltroG.METODO = cell2mat(raw(:, 1));
FiltroG.URI = cell2mat(raw(:, 2));
FiltroG.STATUS = cell2mat(raw(:, 3));
FiltroG.URL = cell2mat(raw(:, 4));
FiltroG.USERAGENT = cell2mat(raw(:, 5));
FiltroG.COOKIE = cell2mat(raw(:, 6));
FiltroG.BROWSER = cell2mat(raw(:, 7));
FiltroG.QSTATUS = cell2mat(raw(:, 8));
FiltroG.SSTATUS = cell2mat(raw(:, 9));
FiltroG.MSTATUS = cell2mat(raw(:, 10));
FiltroG.LSTATUS = cell2mat(raw(:, 11));
FiltroG.ACAO = cell2mat(raw(:, 12));
FiltroG.SERVICO = cell2mat(raw(:, 13));
FiltroG.INFORMACAO = cell2mat(raw(:, 14));
FiltroG.QREGRA = cell2mat(raw(:, 15));
FiltroG.SREGRA = cell2mat(raw(:, 16));
FiltroG.MREGRA = cell2mat(raw(:, 17));
FiltroG.LREGRA = cell2mat(raw(:, 18));
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;
%%
%%
%%

filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\FiltroH.csv';
delimiter = ';';
startRow = 2;
formatSpec = '%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%[^\n\r]';
fileID = fopen(filename,'r');
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'HeaderLines' ,startRow-1, 'ReturnOnError', false);
fclose(fileID);
raw = repmat({''},length(dataArray{1}),length(dataArray)-1);
for col=1:length(dataArray)-1
    raw(1:length(dataArray{col}),col) = dataArray{col};
end
numericData = NaN(size(dataArray{1},1),size(dataArray,2));
for col=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18]
    rawData = dataArray{col};
    for row=1:size(rawData, 1);
        regexstr = '(?<prefix>.*?)(?<numbers>([-]*(\d+[\.]*)+[\,]{0,1}\d*[eEdD]{0,1}[-+]*\d*[i]{0,1})|([-]*(\d+[\.]*)*[\,]{1,1}\d+[eEdD]{0,1}[-+]*\d*[i]{0,1}))(?<suffix>.*)';
        try
            result = regexp(rawData{row}, regexstr, 'names');
            numbers = result.numbers;
            invalidThousandsSeparator = false;
            if any(numbers=='.');
                thousandsRegExp = '^\d+?(\.\d{3})*\,{0,1}\d*$';
                if isempty(regexp(thousandsRegExp, '.', 'once'));
                    numbers = NaN;
                    invalidThousandsSeparator = true;
                end
            end
            if ~invalidThousandsSeparator;
                numbers = strrep(numbers, '.', '');
                numbers = strrep(numbers, ',', '.');
                numbers = textscan(numbers, '%f');
                numericData(row, col) = numbers{1};
                raw{row, col} = numbers{1};
            end
        catch me
        end
    end
end
R = cellfun(@(x) ~isnumeric(x) && ~islogical(x),raw);
raw(R) = {NaN};
FiltroH = table;
FiltroH.METODO = cell2mat(raw(:, 1));
FiltroH.URI = cell2mat(raw(:, 2));
FiltroH.STATUS = cell2mat(raw(:, 3));
FiltroH.URL = cell2mat(raw(:, 4));
FiltroH.USERAGENT = cell2mat(raw(:, 5));
FiltroH.COOKIE = cell2mat(raw(:, 6));
FiltroH.BROWSER = cell2mat(raw(:, 7));
FiltroH.QSTATUS = cell2mat(raw(:, 8));
FiltroH.SSTATUS = cell2mat(raw(:, 9));
FiltroH.MSTATUS = cell2mat(raw(:, 10));
FiltroH.LSTATUS = cell2mat(raw(:, 11));
FiltroH.ACAO = cell2mat(raw(:, 12));
FiltroH.SERVICO = cell2mat(raw(:, 13));
FiltroH.INFORMACAO = cell2mat(raw(:, 14));
FiltroH.QREGRA = cell2mat(raw(:, 15));
FiltroH.SREGRA = cell2mat(raw(:, 16));
FiltroH.MREGRA = cell2mat(raw(:, 17));
FiltroH.LREGRA = cell2mat(raw(:, 18));
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me R;

%%
%%
%%
filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\FiltroI.csv';
delimiter = ';';
startRow = 2;
formatSpec = '%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%[^\n\r]';
fileID = fopen(filename,'r');
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'HeaderLines' ,startRow-1, 'ReturnOnError', false);
fclose(fileID);
raw = repmat({''},length(dataArray{1}),length(dataArray)-1);
for col=1:length(dataArray)-1
    raw(1:length(dataArray{col}),col) = dataArray{col};
end
numericData = NaN(size(dataArray{1},1),size(dataArray,2));
for col=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18]
    rawData = dataArray{col};
    for row=1:size(rawData, 1);
        regexstr = '(?<prefix>.*?)(?<numbers>([-]*(\d+[\.]*)+[\,]{0,1}\d*[eEdD]{0,1}[-+]*\d*[i]{0,1})|([-]*(\d+[\.]*)*[\,]{1,1}\d+[eEdD]{0,1}[-+]*\d*[i]{0,1}))(?<suffix>.*)';
        try
            result = regexp(rawData{row}, regexstr, 'names');
            numbers = result.numbers;
            invalidThousandsSeparator = false;
            if any(numbers=='.');
                thousandsRegExp = '^\d+?(\.\d{3})*\,{0,1}\d*$';
                if isempty(regexp(thousandsRegExp, '.', 'once'));
                    numbers = NaN;
                    invalidThousandsSeparator = true;
                end
            end
            if ~invalidThousandsSeparator;
                numbers = strrep(numbers, '.', '');
                numbers = strrep(numbers, ',', '.');
                numbers = textscan(numbers, '%f');
                numericData(row, col) = numbers{1};
                raw{row, col} = numbers{1};
            end
        catch me
        end
    end
end
FiltroI = table;
FiltroI.METODO = cell2mat(raw(:, 1));
FiltroI.URI = cell2mat(raw(:, 2));
FiltroI.STATUS = cell2mat(raw(:, 3));
FiltroI.URL = cell2mat(raw(:, 4));
FiltroI.USERAGENT = cell2mat(raw(:, 5));
FiltroI.COOKIE = cell2mat(raw(:, 6));
FiltroI.BROWSER = cell2mat(raw(:, 7));
FiltroI.QSTATUS = cell2mat(raw(:, 8));
FiltroI.SSTATUS = cell2mat(raw(:, 9));
FiltroI.MSTATUS = cell2mat(raw(:, 10));
FiltroI.LSTATUS = cell2mat(raw(:, 11));
FiltroI.ACAO = cell2mat(raw(:, 12));
FiltroI.SERVICO = cell2mat(raw(:, 13));
FiltroI.INFORMACAO = cell2mat(raw(:, 14));
FiltroI.QREGRA = cell2mat(raw(:, 15));
FiltroI.SREGRA = cell2mat(raw(:, 16));
FiltroI.MREGRA = cell2mat(raw(:, 17));
FiltroI.LREGRA = cell2mat(raw(:, 18));
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;
%%
%%
%%
filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\FiltroJ.csv';
delimiter = ';';
startRow = 2;
formatSpec = '%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%[^\n\r]';
fileID = fopen(filename,'r');
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'HeaderLines' ,startRow-1, 'ReturnOnError', false);
fclose(fileID);
raw = repmat({''},length(dataArray{1}),length(dataArray)-1);
for col=1:length(dataArray)-1
    raw(1:length(dataArray{col}),col) = dataArray{col};
end
numericData = NaN(size(dataArray{1},1),size(dataArray,2));
for col=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18]
    rawData = dataArray{col};
    for row=1:size(rawData, 1);
        regexstr = '(?<prefix>.*?)(?<numbers>([-]*(\d+[\.]*)+[\,]{0,1}\d*[eEdD]{0,1}[-+]*\d*[i]{0,1})|([-]*(\d+[\.]*)*[\,]{1,1}\d+[eEdD]{0,1}[-+]*\d*[i]{0,1}))(?<suffix>.*)';
        try
            result = regexp(rawData{row}, regexstr, 'names');
            numbers = result.numbers;
            invalidThousandsSeparator = false;
            if any(numbers=='.');
                thousandsRegExp = '^\d+?(\.\d{3})*\,{0,1}\d*$';
                if isempty(regexp(thousandsRegExp, '.', 'once'));
                    numbers = NaN;
                    invalidThousandsSeparator = true;
                end
            end
            if ~invalidThousandsSeparator;
                numbers = strrep(numbers, '.', '');
                numbers = strrep(numbers, ',', '.');
                numbers = textscan(numbers, '%f');
                numericData(row, col) = numbers{1};
                raw{row, col} = numbers{1};
            end
        catch me
        end
    end
end
FiltroJ = table;
FiltroJ.METODO = cell2mat(raw(:, 1));
FiltroJ.URI = cell2mat(raw(:, 2));
FiltroJ.STATUS = cell2mat(raw(:, 3));
FiltroJ.URL = cell2mat(raw(:, 4));
FiltroJ.USERAGENT = cell2mat(raw(:, 5));
FiltroJ.COOKIE = cell2mat(raw(:, 6));
FiltroJ.BROWSER = cell2mat(raw(:, 7));
FiltroJ.QSTATUS = cell2mat(raw(:, 8));
FiltroJ.SSTATUS = cell2mat(raw(:, 9));
FiltroJ.MSTATUS = cell2mat(raw(:, 10));
FiltroJ.LSTATUS = cell2mat(raw(:, 11));
FiltroJ.ACAO = cell2mat(raw(:, 12));
FiltroJ.SERVICO = cell2mat(raw(:, 13));
FiltroJ.INFORMACAO = cell2mat(raw(:, 14));
FiltroJ.QREGRA = cell2mat(raw(:, 15));
FiltroJ.SREGRA = cell2mat(raw(:, 16));
FiltroJ.MREGRA = cell2mat(raw(:, 17));
FiltroJ.LREGRA = cell2mat(raw(:, 18));
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;
%%
%%
%%
filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\FiltroK.csv';
delimiter = ';';
startRow = 2;
formatSpec = '%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%[^\n\r]';
fileID = fopen(filename,'r');
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'HeaderLines' ,startRow-1, 'ReturnOnError', false);
fclose(fileID);
raw = repmat({''},length(dataArray{1}),length(dataArray)-1);
for col=1:length(dataArray)-1
    raw(1:length(dataArray{col}),col) = dataArray{col};
end
numericData = NaN(size(dataArray{1},1),size(dataArray,2));
for col=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18]
    rawData = dataArray{col};
    for row=1:size(rawData, 1);
        regexstr = '(?<prefix>.*?)(?<numbers>([-]*(\d+[\.]*)+[\,]{0,1}\d*[eEdD]{0,1}[-+]*\d*[i]{0,1})|([-]*(\d+[\.]*)*[\,]{1,1}\d+[eEdD]{0,1}[-+]*\d*[i]{0,1}))(?<suffix>.*)';
        try
            result = regexp(rawData{row}, regexstr, 'names');
            numbers = result.numbers;
            invalidThousandsSeparator = false;
            if any(numbers=='.');
                thousandsRegExp = '^\d+?(\.\d{3})*\,{0,1}\d*$';
                if isempty(regexp(thousandsRegExp, '.', 'once'));
                    numbers = NaN;
                    invalidThousandsSeparator = true;
                end
            end
            if ~invalidThousandsSeparator;
                numbers = strrep(numbers, '.', '');
                numbers = strrep(numbers, ',', '.');
                numbers = textscan(numbers, '%f');
                numericData(row, col) = numbers{1};
                raw{row, col} = numbers{1};
            end
        catch me
        end
    end
end
FiltroK = table;
FiltroK.METODO = cell2mat(raw(:, 1));
FiltroK.URI = cell2mat(raw(:, 2));
FiltroK.STATUS = cell2mat(raw(:, 3));
FiltroK.URL = cell2mat(raw(:, 4));
FiltroK.USERAGENT = cell2mat(raw(:, 5));
FiltroK.COOKIE = cell2mat(raw(:, 6));
FiltroK.BROWSER = cell2mat(raw(:, 7));
FiltroK.QSTATUS = cell2mat(raw(:, 8));
FiltroK.SSTATUS = cell2mat(raw(:, 9));
FiltroK.MSTATUS = cell2mat(raw(:, 10));
FiltroK.LSTATUS = cell2mat(raw(:, 11));
FiltroK.ACAO = cell2mat(raw(:, 12));
FiltroK.SERVICO = cell2mat(raw(:, 13));
FiltroK.INFORMACAO = cell2mat(raw(:, 14));
FiltroK.QREGRA = cell2mat(raw(:, 15));
FiltroK.SREGRA = cell2mat(raw(:, 16));
FiltroK.MREGRA = cell2mat(raw(:, 17));
FiltroK.LREGRA = cell2mat(raw(:, 18));
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;
%%
%%
%%
filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\FiltroL.csv';
delimiter = ';';
startRow = 2;
formatSpec = '%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%[^\n\r]';
fileID = fopen(filename,'r');
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'HeaderLines' ,startRow-1, 'ReturnOnError', false);
fclose(fileID);
raw = repmat({''},length(dataArray{1}),length(dataArray)-1);
for col=1:length(dataArray)-1
    raw(1:length(dataArray{col}),col) = dataArray{col};
end
numericData = NaN(size(dataArray{1},1),size(dataArray,2));
for col=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18]
    rawData = dataArray{col};
    for row=1:size(rawData, 1);
        regexstr = '(?<prefix>.*?)(?<numbers>([-]*(\d+[\.]*)+[\,]{0,1}\d*[eEdD]{0,1}[-+]*\d*[i]{0,1})|([-]*(\d+[\.]*)*[\,]{1,1}\d+[eEdD]{0,1}[-+]*\d*[i]{0,1}))(?<suffix>.*)';
        try
            result = regexp(rawData{row}, regexstr, 'names');
            numbers = result.numbers;
            invalidThousandsSeparator = false;
            if any(numbers=='.');
                thousandsRegExp = '^\d+?(\.\d{3})*\,{0,1}\d*$';
                if isempty(regexp(thousandsRegExp, '.', 'once'));
                    numbers = NaN;
                    invalidThousandsSeparator = true;
                end
            end
            if ~invalidThousandsSeparator;
                numbers = strrep(numbers, '.', '');
                numbers = strrep(numbers, ',', '.');
                numbers = textscan(numbers, '%f');
                numericData(row, col) = numbers{1};
                raw{row, col} = numbers{1};
            end
        catch me
        end
    end
end
FiltroL = table;
FiltroL.METODO = cell2mat(raw(:, 1));
FiltroL.URI = cell2mat(raw(:, 2));
FiltroL.STATUS = cell2mat(raw(:, 3));
FiltroL.URL = cell2mat(raw(:, 4));
FiltroL.USERAGENT = cell2mat(raw(:, 5));
FiltroL.COOKIE = cell2mat(raw(:, 6));
FiltroL.BROWSER = cell2mat(raw(:, 7));
FiltroL.QSTATUS = cell2mat(raw(:, 8));
FiltroL.SSTATUS = cell2mat(raw(:, 9));
FiltroL.MSTATUS = cell2mat(raw(:, 10));
FiltroL.LSTATUS = cell2mat(raw(:, 11));
FiltroL.ACAO = cell2mat(raw(:, 12));
FiltroL.SERVICO = cell2mat(raw(:, 13));
FiltroL.INFORMACAO = cell2mat(raw(:, 14));
FiltroL.QREGRA = cell2mat(raw(:, 15));
FiltroL.SREGRA = cell2mat(raw(:, 16));
FiltroL.MREGRA = cell2mat(raw(:, 17));
FiltroL.LREGRA = cell2mat(raw(:, 18));
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;

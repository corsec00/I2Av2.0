filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\FiltroA_TotalCSV.csv';
delimiter = ';';
startRow = 3;
endRow = 1623406;

formatSpec = '%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%[^\n\r]';
fileID = fopen(filename,'r');
textscan(fileID, '%[^\n\r]', startRow-1, 'ReturnOnError', false);
dataArray = textscan(fileID, formatSpec, endRow-startRow+1, 'Delimiter', delimiter, 'ReturnOnError', false);
fclose(fileID);
raw = repmat({''},length(dataArray{1}),length(dataArray)-1);
for col=1:length(dataArray)-1
    raw(1:length(dataArray{col}),col) = dataArray{col};
end
numericData = NaN(size(dataArray{1},1),size(dataArray,2));

for col=[4,5,6,7,8,9,10,11,13,14,15,16,21,22]
    rawData = dataArray{col};
    for row=1:size(rawData, 1);
        regexstr = '(?<prefix>.*?)(?<numbers>([-]*(\d+[\,]*)+[\.]{0,1}\d*[eEdD]{0,1}[-+]*\d*[i]{0,1})|([-]*(\d+[\,]*)*[\.]{1,1}\d+[eEdD]{0,1}[-+]*\d*[i]{0,1}))(?<suffix>.*)';
        try
            result = regexp(rawData{row}, regexstr, 'names');
            numbers = result.numbers;
            invalidThousandsSeparator = false;
            if any(numbers==',');
                thousandsRegExp = '^\d+?(\,\d{3})*\.{0,1}\d*$';
                if isempty(regexp(thousandsRegExp, ',', 'once'));
                    numbers = NaN;
                    invalidThousandsSeparator = true;
                end
            end
            if ~invalidThousandsSeparator;
                numbers = textscan(strrep(numbers, ',', ''), '%f');
                numericData(row, col) = numbers{1};
                raw{row, col} = numbers{1};
            end
        catch me
        end
    end
end
try
    dates{2} = datetime(dataArray{2}, 'Format', 'HH:mm:ss', 'InputFormat', 'HH:mm:ss');
catch
    try
        dataArray{2} = cellfun(@(x) x(2:end-1), dataArray{2}, 'UniformOutput', false);
        dates{2} = datetime(dataArray{2}, 'Format', 'HH:mm:ss', 'InputFormat', 'HH:mm:ss');
    catch
        dates{2} = repmat(datetime([NaN NaN NaN]), size(dataArray{2}));
    end
end

anyBlankDates = cellfun(@isempty, dataArray{2});
anyInvalidDates = isnan(dates{2}.Hour) - anyBlankDates;
dates = dates(:,2);
rawNumericColumns = raw(:, [4,5,6,7,8,9,10,11,13,14,15,16,21,22]);
rawCellColumns = raw(:, [1,3,12,17,18,19,20]);
R = cellfun(@(x) ~isnumeric(x) && ~islogical(x),rawNumericColumns);
rawNumericColumns(R) = {NaN};
FiltroATotalCSV = table;
FiltroATotalCSV.Data = rawCellColumns(:, 1);
FiltroATotalCSV.Hora = dates{:, 1};
FiltroATotalCSV.IP = rawCellColumns(:, 2);
FiltroATotalCSV.Metodo = cell2mat(rawNumericColumns(:, 1));
FiltroATotalCSV.URI = cell2mat(rawNumericColumns(:, 2));
FiltroATotalCSV.Status = cell2mat(rawNumericColumns(:, 3));
FiltroATotalCSV.Bytes = cell2mat(rawNumericColumns(:, 4));
FiltroATotalCSV.Tempo = cell2mat(rawNumericColumns(:, 5));
FiltroATotalCSV.URL = cell2mat(rawNumericColumns(:, 6));
FiltroATotalCSV.UserAgent = cell2mat(rawNumericColumns(:, 7));
FiltroATotalCSV.Cookie = cell2mat(rawNumericColumns(:, 8));
FiltroATotalCSV.WAFinfo = rawCellColumns(:, 3);
FiltroATotalCSV.UserAgentBrowser = cell2mat(rawNumericColumns(:, 9));
FiltroATotalCSV.Origem = cell2mat(rawNumericColumns(:, 10));
FiltroATotalCSV.Acao = cell2mat(rawNumericColumns(:, 11));
FiltroATotalCSV.Servico = cell2mat(rawNumericColumns(:, 12));
FiltroATotalCSV.portOrigem = rawCellColumns(:, 4);
FiltroATotalCSV.Destino = rawCellColumns(:, 5);
FiltroATotalCSV.Protocolo = rawCellColumns(:, 6);
FiltroATotalCSV.Regra = rawCellColumns(:, 7);
FiltroATotalCSV.Informacao = cell2mat(rawNumericColumns(:, 13));
FiltroATotalCSV.Produto = cell2mat(rawNumericColumns(:, 14));
clearvars filename delimiter startRow endRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me dates blankDates anyBlankDates invalidDates anyInvalidDates rawNumericColumns rawCellColumns R;
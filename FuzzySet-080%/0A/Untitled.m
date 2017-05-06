
%% Initialize variables.
filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\21\FiltroA.csv';
delimiter = ';';
startRow = 2;

%% Read columns of data as strings:

formatSpec = '%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%[^\n\r]';

%% Open the text file.
fileID = fopen(filename,'r');

%% Read columns of data according to format string.



dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'HeaderLines' ,startRow-1, 'ReturnOnError', false);

%% Close the text file.
fclose(fileID);

%% Convert the contents of columns containing numeric strings to numbers.
% Replace non-numeric strings with NaN.
raw = repmat({''},length(dataArray{1}),length(dataArray)-1);
for col=1:length(dataArray)-1
    raw(1:length(dataArray{col}),col) = dataArray{col};
end
numericData = NaN(size(dataArray{1},1),size(dataArray,2));

for col=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]
    % Converts strings in the input cell array to numbers. Replaced non-numeric
    % strings with NaN.
    rawData = dataArray{col};
    for row=1:size(rawData, 1);
        % Create a regular expression to detect and remove non-numeric prefixes and
        % suffixes.
        regexstr = '(?<prefix>.*?)(?<numbers>([-]*(\d+[\.]*)+[\,]{0,1}\d*[eEdD]{0,1}[-+]*\d*[i]{0,1})|([-]*(\d+[\.]*)*[\,]{1,1}\d+[eEdD]{0,1}[-+]*\d*[i]{0,1}))(?<suffix>.*)';
        try
            result = regexp(rawData{row}, regexstr, 'names');
            numbers = result.numbers;
            
            % Detected commas in non-thousand locations.
            invalidThousandsSeparator = false;
            if any(numbers=='.');
                thousandsRegExp = '^\d+?(\.\d{3})*\,{0,1}\d*$';
                if isempty(regexp(thousandsRegExp, '.', 'once'));
                    numbers = NaN;
                    invalidThousandsSeparator = true;
                end
            end
            % Convert numeric strings to numbers.
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


%% Create output variable
Filtro21A = table;
Filtro21A.METODO = cell2mat(raw(:, 1));
Filtro21A.URI = cell2mat(raw(:, 2));
Filtro21A.STATUS = cell2mat(raw(:, 3));
Filtro21A.URL = cell2mat(raw(:, 4));
Filtro21A.USERAGENT = cell2mat(raw(:, 5));
Filtro21A.COOKIE = cell2mat(raw(:, 6));
Filtro21A.BROWSER = cell2mat(raw(:, 7));
Filtro21A.QSTATUS = cell2mat(raw(:, 8));
Filtro21A.SSTATUS = cell2mat(raw(:, 9));
Filtro21A.MSTATUS = cell2mat(raw(:, 10));
Filtro21A.LSTATUS = cell2mat(raw(:, 11));
Filtro21A.ACAO = cell2mat(raw(:, 12));
Filtro21A.QREGRA = cell2mat(raw(:, 13));
Filtro21A.SREGRA = cell2mat(raw(:, 14));
Filtro21A.MREGRA = cell2mat(raw(:, 15));
Filtro21A.LREGRA = cell2mat(raw(:, 16));

%% Clear temporary variables
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;


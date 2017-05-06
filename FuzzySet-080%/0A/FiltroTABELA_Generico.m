%% Initialize variables.
filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\05\FiltroA.csv';
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
% Replace non-numeric strings with NaN.
raw = repmat({''},length(dataArray{1}),length(dataArray)-1);
for col=1:length(dataArray)-1
    raw(1:length(dataArray{col}),col) = dataArray{col};
end
numericData = NaN(size(dataArray{1},1),size(dataArray,2));
for col=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]
    % Converts strings in the input cell array to numbers. Replaced non-numeric
    rawData = dataArray{col};
    for row=1:size(rawData, 1);
        % Create a regular expression to detect and remove non-numeric prefixes and
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
Filtro05A = table;
Filtro05A.METODO = cell2mat(raw(:, 1));
Filtro05A.URI = cell2mat(raw(:, 2));
Filtro05A.STATUS = cell2mat(raw(:, 3));
Filtro05A.URL = cell2mat(raw(:, 4));
Filtro05A.USERAGENT = cell2mat(raw(:, 5));
Filtro05A.COOKIE = cell2mat(raw(:, 6));
Filtro05A.BROWSER = cell2mat(raw(:, 7));
Filtro05A.QSTATUS = cell2mat(raw(:, 8));
Filtro05A.SSTATUS = cell2mat(raw(:, 9));
Filtro05A.MSTATUS = cell2mat(raw(:, 10));
Filtro05A.LSTATUS = cell2mat(raw(:, 11));
Filtro05A.ACAO = cell2mat(raw(:, 12));
Filtro05A.QREGRA = cell2mat(raw(:, 13));
Filtro05A.SREGRA = cell2mat(raw(:, 14));
Filtro05A.MREGRA = cell2mat(raw(:, 15));
Filtro05A.LREGRA = cell2mat(raw(:, 16));
%% Clear temporary variables
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;




%% Initialize variables.
filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\05\FiltroB.csv';
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
% Replace non-numeric strings with NaN.
raw = repmat({''},length(dataArray{1}),length(dataArray)-1);
for col=1:length(dataArray)-1
    raw(1:length(dataArray{col}),col) = dataArray{col};
end
numericData = NaN(size(dataArray{1},1),size(dataArray,2));
for col=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]
    % Converts strings in the input cell array to numbers. Replaced non-numeric
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
Filtro05B = table;
Filtro05B.METODO = cell2mat(raw(:, 1));
Filtro05B.URI = cell2mat(raw(:, 2));
Filtro05B.STATUS = cell2mat(raw(:, 3));
Filtro05B.URL = cell2mat(raw(:, 4));
Filtro05B.USERAGENT = cell2mat(raw(:, 5));
Filtro05B.COOKIE = cell2mat(raw(:, 6));
Filtro05B.BROWSER = cell2mat(raw(:, 7));
Filtro05B.QSTATUS = cell2mat(raw(:, 8));
Filtro05B.SSTATUS = cell2mat(raw(:, 9));
Filtro05B.MSTATUS = cell2mat(raw(:, 10));
Filtro05B.LSTATUS = cell2mat(raw(:, 11));
Filtro05B.ACAO = cell2mat(raw(:, 12));
Filtro05B.QREGRA = cell2mat(raw(:, 13));
Filtro05B.SREGRA = cell2mat(raw(:, 14));
Filtro05B.MREGRA = cell2mat(raw(:, 15));
Filtro05B.LREGRA = cell2mat(raw(:, 16));

%% Clear temporary variables
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;



%% Initialize variables.
filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\05\FiltroC.csv';
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
Filtro05C = table;
Filtro05C.METODO = cell2mat(raw(:, 1));
Filtro05C.URI = cell2mat(raw(:, 2));
Filtro05C.STATUS = cell2mat(raw(:, 3));
Filtro05C.URL = cell2mat(raw(:, 4));
Filtro05C.USERAGENT = cell2mat(raw(:, 5));
Filtro05C.COOKIE = cell2mat(raw(:, 6));
Filtro05C.BROWSER = cell2mat(raw(:, 7));
Filtro05C.QSTATUS = cell2mat(raw(:, 8));
Filtro05C.SSTATUS = cell2mat(raw(:, 9));
Filtro05C.MSTATUS = cell2mat(raw(:, 10));
Filtro05C.LSTATUS = cell2mat(raw(:, 11));
Filtro05C.ACAO = cell2mat(raw(:, 12));
Filtro05C.QREGRA = cell2mat(raw(:, 13));
Filtro05C.SREGRA = cell2mat(raw(:, 14));
Filtro05C.MREGRA = cell2mat(raw(:, 15));
Filtro05C.LREGRA = cell2mat(raw(:, 16));

%% Clear temporary variables
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;



%% Initialize variables.
filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\05\FiltroD.csv';
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
Filtro05D = table;
Filtro05D.METODO = cell2mat(raw(:, 1));
Filtro05D.URI = cell2mat(raw(:, 2));
Filtro05D.STATUS = cell2mat(raw(:, 3));
Filtro05D.URL = cell2mat(raw(:, 4));
Filtro05D.USERAGENT = cell2mat(raw(:, 5));
Filtro05D.COOKIE = cell2mat(raw(:, 6));
Filtro05D.BROWSER = cell2mat(raw(:, 7));
Filtro05D.QSTATUS = cell2mat(raw(:, 8));
Filtro05D.SSTATUS = cell2mat(raw(:, 9));
Filtro05D.MSTATUS = cell2mat(raw(:, 10));
Filtro05D.LSTATUS = cell2mat(raw(:, 11));
Filtro05D.ACAO = cell2mat(raw(:, 12));
Filtro05D.QREGRA = cell2mat(raw(:, 13));
Filtro05D.SREGRA = cell2mat(raw(:, 14));
Filtro05D.MREGRA = cell2mat(raw(:, 15));
Filtro05D.LREGRA = cell2mat(raw(:, 16));

%% Clear temporary variables
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;



%% Initialize variables.
filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\05\FiltroE.csv';
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
Filtro05E = table;
Filtro05E.METODO = cell2mat(raw(:, 1));
Filtro05E.URI = cell2mat(raw(:, 2));
Filtro05E.STATUS = cell2mat(raw(:, 3));
Filtro05E.URL = cell2mat(raw(:, 4));
Filtro05E.USERAGENT = cell2mat(raw(:, 5));
Filtro05E.COOKIE = cell2mat(raw(:, 6));
Filtro05E.BROWSER = cell2mat(raw(:, 7));
Filtro05E.QSTATUS = cell2mat(raw(:, 8));
Filtro05E.SSTATUS = cell2mat(raw(:, 9));
Filtro05E.MSTATUS = cell2mat(raw(:, 10));
Filtro05E.LSTATUS = cell2mat(raw(:, 11));
Filtro05E.ACAO = cell2mat(raw(:, 12));
Filtro05E.QREGRA = cell2mat(raw(:, 13));
Filtro05E.SREGRA = cell2mat(raw(:, 14));
Filtro05E.MREGRA = cell2mat(raw(:, 15));
Filtro05E.LREGRA = cell2mat(raw(:, 16));

%% Clear temporary variables
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;


%% Initialize variables.
filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\05\FiltroF.csv';
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
Filtro05F = table;
Filtro05F.METODO = cell2mat(raw(:, 1));
Filtro05F.URI = cell2mat(raw(:, 2));
Filtro05F.STATUS = cell2mat(raw(:, 3));
Filtro05F.URL = cell2mat(raw(:, 4));
Filtro05F.USERAGENT = cell2mat(raw(:, 5));
Filtro05F.COOKIE = cell2mat(raw(:, 6));
Filtro05F.BROWSER = cell2mat(raw(:, 7));
Filtro05F.QSTATUS = cell2mat(raw(:, 8));
Filtro05F.SSTATUS = cell2mat(raw(:, 9));
Filtro05F.MSTATUS = cell2mat(raw(:, 10));
Filtro05F.LSTATUS = cell2mat(raw(:, 11));
Filtro05F.ACAO = cell2mat(raw(:, 12));
Filtro05F.QREGRA = cell2mat(raw(:, 13));
Filtro05F.SREGRA = cell2mat(raw(:, 14));
Filtro05F.MREGRA = cell2mat(raw(:, 15));
Filtro05F.LREGRA = cell2mat(raw(:, 16));

%% Clear temporary variables
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;


%% Initialize variables.
filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\05\FiltroG.csv';
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
Filtro05G = table;
Filtro05G.METODO = cell2mat(raw(:, 1));
Filtro05G.URI = cell2mat(raw(:, 2));
Filtro05G.STATUS = cell2mat(raw(:, 3));
Filtro05G.URL = cell2mat(raw(:, 4));
Filtro05G.USERAGENT = cell2mat(raw(:, 5));
Filtro05G.COOKIE = cell2mat(raw(:, 6));
Filtro05G.BROWSER = cell2mat(raw(:, 7));
Filtro05G.QSTATUS = cell2mat(raw(:, 8));
Filtro05G.SSTATUS = cell2mat(raw(:, 9));
Filtro05G.MSTATUS = cell2mat(raw(:, 10));
Filtro05G.LSTATUS = cell2mat(raw(:, 11));
Filtro05G.ACAO = cell2mat(raw(:, 12));
Filtro05G.QREGRA = cell2mat(raw(:, 13));
Filtro05G.SREGRA = cell2mat(raw(:, 14));
Filtro05G.MREGRA = cell2mat(raw(:, 15));
Filtro05G.LREGRA = cell2mat(raw(:, 16));

%% Clear temporary variables
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;


%% Initialize variables.
filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\05\FiltroH.csv';
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
Filtro05H = table;
Filtro05H.METODO = cell2mat(raw(:, 1));
Filtro05H.URI = cell2mat(raw(:, 2));
Filtro05H.STATUS = cell2mat(raw(:, 3));
Filtro05H.URL = cell2mat(raw(:, 4));
Filtro05H.USERAGENT = cell2mat(raw(:, 5));
Filtro05H.COOKIE = cell2mat(raw(:, 6));
Filtro05H.BROWSER = cell2mat(raw(:, 7));
Filtro05H.QSTATUS = cell2mat(raw(:, 8));
Filtro05H.SSTATUS = cell2mat(raw(:, 9));
Filtro05H.MSTATUS = cell2mat(raw(:, 10));
Filtro05H.LSTATUS = cell2mat(raw(:, 11));
Filtro05H.ACAO = cell2mat(raw(:, 12));
Filtro05H.QREGRA = cell2mat(raw(:, 13));
Filtro05H.SREGRA = cell2mat(raw(:, 14));
Filtro05H.MREGRA = cell2mat(raw(:, 15));
Filtro05H.LREGRA = cell2mat(raw(:, 16));

%% Clear temporary variables
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;


%% Initialize variables.
filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\05\FiltroI.csv';
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
Filtro05I = table;
Filtro05I.METODO = cell2mat(raw(:, 1));
Filtro05I.URI = cell2mat(raw(:, 2));
Filtro05I.STATUS = cell2mat(raw(:, 3));
Filtro05I.URL = cell2mat(raw(:, 4));
Filtro05I.USERAGENT = cell2mat(raw(:, 5));
Filtro05I.COOKIE = cell2mat(raw(:, 6));
Filtro05I.BROWSER = cell2mat(raw(:, 7));
Filtro05I.QSTATUS = cell2mat(raw(:, 8));
Filtro05I.SSTATUS = cell2mat(raw(:, 9));
Filtro05I.MSTATUS = cell2mat(raw(:, 10));
Filtro05I.LSTATUS = cell2mat(raw(:, 11));
Filtro05I.ACAO = cell2mat(raw(:, 12));
Filtro05I.QREGRA = cell2mat(raw(:, 13));
Filtro05I.SREGRA = cell2mat(raw(:, 14));
Filtro05I.MREGRA = cell2mat(raw(:, 15));
Filtro05I.LREGRA = cell2mat(raw(:, 16));

%% Clear temporary variables
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;


%% Initialize variables.
filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\05\FiltroJ.csv';
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
Filtro05J = table;
Filtro05J.METODO = cell2mat(raw(:, 1));
Filtro05J.URI = cell2mat(raw(:, 2));
Filtro05J.STATUS = cell2mat(raw(:, 3));
Filtro05J.URL = cell2mat(raw(:, 4));
Filtro05J.USERAGENT = cell2mat(raw(:, 5));
Filtro05J.COOKIE = cell2mat(raw(:, 6));
Filtro05J.BROWSER = cell2mat(raw(:, 7));
Filtro05J.QSTATUS = cell2mat(raw(:, 8));
Filtro05J.SSTATUS = cell2mat(raw(:, 9));
Filtro05J.MSTATUS = cell2mat(raw(:, 10));
Filtro05J.LSTATUS = cell2mat(raw(:, 11));
Filtro05J.ACAO = cell2mat(raw(:, 12));
Filtro05J.QREGRA = cell2mat(raw(:, 13));
Filtro05J.SREGRA = cell2mat(raw(:, 14));
Filtro05J.MREGRA = cell2mat(raw(:, 15));
Filtro05J.LREGRA = cell2mat(raw(:, 16));

%% Clear temporary variables
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;


%% Initialize variables.
filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\05\FiltroK.csv';
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
Filtro05K = table;
Filtro05K.METODO = cell2mat(raw(:, 1));
Filtro05K.URI = cell2mat(raw(:, 2));
Filtro05K.STATUS = cell2mat(raw(:, 3));
Filtro05K.URL = cell2mat(raw(:, 4));
Filtro05K.USERAGENT = cell2mat(raw(:, 5));
Filtro05K.COOKIE = cell2mat(raw(:, 6));
Filtro05K.BROWSER = cell2mat(raw(:, 7));
Filtro05K.QSTATUS = cell2mat(raw(:, 8));
Filtro05K.SSTATUS = cell2mat(raw(:, 9));
Filtro05K.MSTATUS = cell2mat(raw(:, 10));
Filtro05K.LSTATUS = cell2mat(raw(:, 11));
Filtro05K.ACAO = cell2mat(raw(:, 12));
Filtro05K.QREGRA = cell2mat(raw(:, 13));
Filtro05K.SREGRA = cell2mat(raw(:, 14));
Filtro05K.MREGRA = cell2mat(raw(:, 15));
Filtro05K.LREGRA = cell2mat(raw(:, 16));

%% Clear temporary variables
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;


%% Initialize variables.
filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\05\FiltroL.csv';
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
Filtro05L = table;
Filtro05L.METODO = cell2mat(raw(:, 1));
Filtro05L.URI = cell2mat(raw(:, 2));
Filtro05L.STATUS = cell2mat(raw(:, 3));
Filtro05L.URL = cell2mat(raw(:, 4));
Filtro05L.USERAGENT = cell2mat(raw(:, 5));
Filtro05L.COOKIE = cell2mat(raw(:, 6));
Filtro05L.BROWSER = cell2mat(raw(:, 7));
Filtro05L.QSTATUS = cell2mat(raw(:, 8));
Filtro05L.SSTATUS = cell2mat(raw(:, 9));
Filtro05L.MSTATUS = cell2mat(raw(:, 10));
Filtro05L.LSTATUS = cell2mat(raw(:, 11));
Filtro05L.ACAO = cell2mat(raw(:, 12));
Filtro05L.QREGRA = cell2mat(raw(:, 13));
Filtro05L.SREGRA = cell2mat(raw(:, 14));
Filtro05L.MREGRA = cell2mat(raw(:, 15));
Filtro05L.LREGRA = cell2mat(raw(:, 16));

%% Clear temporary variables
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;




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




%% Initialize variables.
filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\21\FiltroB.csv';
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
Filtro21B = table;
Filtro21B.METODO = cell2mat(raw(:, 1));
Filtro21B.URI = cell2mat(raw(:, 2));
Filtro21B.STATUS = cell2mat(raw(:, 3));
Filtro21B.URL = cell2mat(raw(:, 4));
Filtro21B.USERAGENT = cell2mat(raw(:, 5));
Filtro21B.COOKIE = cell2mat(raw(:, 6));
Filtro21B.BROWSER = cell2mat(raw(:, 7));
Filtro21B.QSTATUS = cell2mat(raw(:, 8));
Filtro21B.SSTATUS = cell2mat(raw(:, 9));
Filtro21B.MSTATUS = cell2mat(raw(:, 10));
Filtro21B.LSTATUS = cell2mat(raw(:, 11));
Filtro21B.ACAO = cell2mat(raw(:, 12));
Filtro21B.QREGRA = cell2mat(raw(:, 13));
Filtro21B.SREGRA = cell2mat(raw(:, 14));
Filtro21B.MREGRA = cell2mat(raw(:, 15));
Filtro21B.LREGRA = cell2mat(raw(:, 16));

%% Clear temporary variables
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;



%% Initialize variables.
filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\21\FiltroC.csv';
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
Filtro21C = table;
Filtro21C.METODO = cell2mat(raw(:, 1));
Filtro21C.URI = cell2mat(raw(:, 2));
Filtro21C.STATUS = cell2mat(raw(:, 3));
Filtro21C.URL = cell2mat(raw(:, 4));
Filtro21C.USERAGENT = cell2mat(raw(:, 5));
Filtro21C.COOKIE = cell2mat(raw(:, 6));
Filtro21C.BROWSER = cell2mat(raw(:, 7));
Filtro21C.QSTATUS = cell2mat(raw(:, 8));
Filtro21C.SSTATUS = cell2mat(raw(:, 9));
Filtro21C.MSTATUS = cell2mat(raw(:, 10));
Filtro21C.LSTATUS = cell2mat(raw(:, 11));
Filtro21C.ACAO = cell2mat(raw(:, 12));
Filtro21C.QREGRA = cell2mat(raw(:, 13));
Filtro21C.SREGRA = cell2mat(raw(:, 14));
Filtro21C.MREGRA = cell2mat(raw(:, 15));
Filtro21C.LREGRA = cell2mat(raw(:, 16));

%% Clear temporary variables
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;



%% Initialize variables.
filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\21\FiltroD.csv';
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
Filtro21D = table;
Filtro21D.METODO = cell2mat(raw(:, 1));
Filtro21D.URI = cell2mat(raw(:, 2));
Filtro21D.STATUS = cell2mat(raw(:, 3));
Filtro21D.URL = cell2mat(raw(:, 4));
Filtro21D.USERAGENT = cell2mat(raw(:, 5));
Filtro21D.COOKIE = cell2mat(raw(:, 6));
Filtro21D.BROWSER = cell2mat(raw(:, 7));
Filtro21D.QSTATUS = cell2mat(raw(:, 8));
Filtro21D.SSTATUS = cell2mat(raw(:, 9));
Filtro21D.MSTATUS = cell2mat(raw(:, 10));
Filtro21D.LSTATUS = cell2mat(raw(:, 11));
Filtro21D.ACAO = cell2mat(raw(:, 12));
Filtro21D.QREGRA = cell2mat(raw(:, 13));
Filtro21D.SREGRA = cell2mat(raw(:, 14));
Filtro21D.MREGRA = cell2mat(raw(:, 15));
Filtro21D.LREGRA = cell2mat(raw(:, 16));

%% Clear temporary variables
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;



%% Initialize variables.
filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\21\FiltroE.csv';
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
Filtro21E = table;
Filtro21E.METODO = cell2mat(raw(:, 1));
Filtro21E.URI = cell2mat(raw(:, 2));
Filtro21E.STATUS = cell2mat(raw(:, 3));
Filtro21E.URL = cell2mat(raw(:, 4));
Filtro21E.USERAGENT = cell2mat(raw(:, 5));
Filtro21E.COOKIE = cell2mat(raw(:, 6));
Filtro21E.BROWSER = cell2mat(raw(:, 7));
Filtro21E.QSTATUS = cell2mat(raw(:, 8));
Filtro21E.SSTATUS = cell2mat(raw(:, 9));
Filtro21E.MSTATUS = cell2mat(raw(:, 10));
Filtro21E.LSTATUS = cell2mat(raw(:, 11));
Filtro21E.ACAO = cell2mat(raw(:, 12));
Filtro21E.QREGRA = cell2mat(raw(:, 13));
Filtro21E.SREGRA = cell2mat(raw(:, 14));
Filtro21E.MREGRA = cell2mat(raw(:, 15));
Filtro21E.LREGRA = cell2mat(raw(:, 16));

%% Clear temporary variables
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;


%% Initialize variables.
filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\21\FiltroF.csv';
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
Filtro21F = table;
Filtro21F.METODO = cell2mat(raw(:, 1));
Filtro21F.URI = cell2mat(raw(:, 2));
Filtro21F.STATUS = cell2mat(raw(:, 3));
Filtro21F.URL = cell2mat(raw(:, 4));
Filtro21F.USERAGENT = cell2mat(raw(:, 5));
Filtro21F.COOKIE = cell2mat(raw(:, 6));
Filtro21F.BROWSER = cell2mat(raw(:, 7));
Filtro21F.QSTATUS = cell2mat(raw(:, 8));
Filtro21F.SSTATUS = cell2mat(raw(:, 9));
Filtro21F.MSTATUS = cell2mat(raw(:, 10));
Filtro21F.LSTATUS = cell2mat(raw(:, 11));
Filtro21F.ACAO = cell2mat(raw(:, 12));
Filtro21F.QREGRA = cell2mat(raw(:, 13));
Filtro21F.SREGRA = cell2mat(raw(:, 14));
Filtro21F.MREGRA = cell2mat(raw(:, 15));
Filtro21F.LREGRA = cell2mat(raw(:, 16));

%% Clear temporary variables
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;


%% Initialize variables.
filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\21\FiltroG.csv';
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
Filtro21G = table;
Filtro21G.METODO = cell2mat(raw(:, 1));
Filtro21G.URI = cell2mat(raw(:, 2));
Filtro21G.STATUS = cell2mat(raw(:, 3));
Filtro21G.URL = cell2mat(raw(:, 4));
Filtro21G.USERAGENT = cell2mat(raw(:, 5));
Filtro21G.COOKIE = cell2mat(raw(:, 6));
Filtro21G.BROWSER = cell2mat(raw(:, 7));
Filtro21G.QSTATUS = cell2mat(raw(:, 8));
Filtro21G.SSTATUS = cell2mat(raw(:, 9));
Filtro21G.MSTATUS = cell2mat(raw(:, 10));
Filtro21G.LSTATUS = cell2mat(raw(:, 11));
Filtro21G.ACAO = cell2mat(raw(:, 12));
Filtro21G.QREGRA = cell2mat(raw(:, 13));
Filtro21G.SREGRA = cell2mat(raw(:, 14));
Filtro21G.MREGRA = cell2mat(raw(:, 15));
Filtro21G.LREGRA = cell2mat(raw(:, 16));

%% Clear temporary variables
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;


%% Initialize variables.
filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\21\FiltroH.csv';
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
Filtro21H = table;
Filtro21H.METODO = cell2mat(raw(:, 1));
Filtro21H.URI = cell2mat(raw(:, 2));
Filtro21H.STATUS = cell2mat(raw(:, 3));
Filtro21H.URL = cell2mat(raw(:, 4));
Filtro21H.USERAGENT = cell2mat(raw(:, 5));
Filtro21H.COOKIE = cell2mat(raw(:, 6));
Filtro21H.BROWSER = cell2mat(raw(:, 7));
Filtro21H.QSTATUS = cell2mat(raw(:, 8));
Filtro21H.SSTATUS = cell2mat(raw(:, 9));
Filtro21H.MSTATUS = cell2mat(raw(:, 10));
Filtro21H.LSTATUS = cell2mat(raw(:, 11));
Filtro21H.ACAO = cell2mat(raw(:, 12));
Filtro21H.QREGRA = cell2mat(raw(:, 13));
Filtro21H.SREGRA = cell2mat(raw(:, 14));
Filtro21H.MREGRA = cell2mat(raw(:, 15));
Filtro21H.LREGRA = cell2mat(raw(:, 16));

%% Clear temporary variables
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;


%% Initialize variables.
filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\21\FiltroI.csv';
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
Filtro21I = table;
Filtro21I.METODO = cell2mat(raw(:, 1));
Filtro21I.URI = cell2mat(raw(:, 2));
Filtro21I.STATUS = cell2mat(raw(:, 3));
Filtro21I.URL = cell2mat(raw(:, 4));
Filtro21I.USERAGENT = cell2mat(raw(:, 5));
Filtro21I.COOKIE = cell2mat(raw(:, 6));
Filtro21I.BROWSER = cell2mat(raw(:, 7));
Filtro21I.QSTATUS = cell2mat(raw(:, 8));
Filtro21I.SSTATUS = cell2mat(raw(:, 9));
Filtro21I.MSTATUS = cell2mat(raw(:, 10));
Filtro21I.LSTATUS = cell2mat(raw(:, 11));
Filtro21I.ACAO = cell2mat(raw(:, 12));
Filtro21I.QREGRA = cell2mat(raw(:, 13));
Filtro21I.SREGRA = cell2mat(raw(:, 14));
Filtro21I.MREGRA = cell2mat(raw(:, 15));
Filtro21I.LREGRA = cell2mat(raw(:, 16));

%% Clear temporary variables
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;


%% Initialize variables.
filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\21\FiltroJ.csv';
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
Filtro21J = table;
Filtro21J.METODO = cell2mat(raw(:, 1));
Filtro21J.URI = cell2mat(raw(:, 2));
Filtro21J.STATUS = cell2mat(raw(:, 3));
Filtro21J.URL = cell2mat(raw(:, 4));
Filtro21J.USERAGENT = cell2mat(raw(:, 5));
Filtro21J.COOKIE = cell2mat(raw(:, 6));
Filtro21J.BROWSER = cell2mat(raw(:, 7));
Filtro21J.QSTATUS = cell2mat(raw(:, 8));
Filtro21J.SSTATUS = cell2mat(raw(:, 9));
Filtro21J.MSTATUS = cell2mat(raw(:, 10));
Filtro21J.LSTATUS = cell2mat(raw(:, 11));
Filtro21J.ACAO = cell2mat(raw(:, 12));
Filtro21J.QREGRA = cell2mat(raw(:, 13));
Filtro21J.SREGRA = cell2mat(raw(:, 14));
Filtro21J.MREGRA = cell2mat(raw(:, 15));
Filtro21J.LREGRA = cell2mat(raw(:, 16));

%% Clear temporary variables
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;


%% Initialize variables.
filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\21\FiltroK.csv';
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
Filtro21K = table;
Filtro21K.METODO = cell2mat(raw(:, 1));
Filtro21K.URI = cell2mat(raw(:, 2));
Filtro21K.STATUS = cell2mat(raw(:, 3));
Filtro21K.URL = cell2mat(raw(:, 4));
Filtro21K.USERAGENT = cell2mat(raw(:, 5));
Filtro21K.COOKIE = cell2mat(raw(:, 6));
Filtro21K.BROWSER = cell2mat(raw(:, 7));
Filtro21K.QSTATUS = cell2mat(raw(:, 8));
Filtro21K.SSTATUS = cell2mat(raw(:, 9));
Filtro21K.MSTATUS = cell2mat(raw(:, 10));
Filtro21K.LSTATUS = cell2mat(raw(:, 11));
Filtro21K.ACAO = cell2mat(raw(:, 12));
Filtro21K.QREGRA = cell2mat(raw(:, 13));
Filtro21K.SREGRA = cell2mat(raw(:, 14));
Filtro21K.MREGRA = cell2mat(raw(:, 15));
Filtro21K.LREGRA = cell2mat(raw(:, 16));

%% Clear temporary variables
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;


%% Initialize variables.
filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\21\FiltroL.csv';
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
Filtro21L = table;
Filtro21L.METODO = cell2mat(raw(:, 1));
Filtro21L.URI = cell2mat(raw(:, 2));
Filtro21L.STATUS = cell2mat(raw(:, 3));
Filtro21L.URL = cell2mat(raw(:, 4));
Filtro21L.USERAGENT = cell2mat(raw(:, 5));
Filtro21L.COOKIE = cell2mat(raw(:, 6));
Filtro21L.BROWSER = cell2mat(raw(:, 7));
Filtro21L.QSTATUS = cell2mat(raw(:, 8));
Filtro21L.SSTATUS = cell2mat(raw(:, 9));
Filtro21L.MSTATUS = cell2mat(raw(:, 10));
Filtro21L.LSTATUS = cell2mat(raw(:, 11));
Filtro21L.ACAO = cell2mat(raw(:, 12));
Filtro21L.QREGRA = cell2mat(raw(:, 13));
Filtro21L.SREGRA = cell2mat(raw(:, 14));
Filtro21L.MREGRA = cell2mat(raw(:, 15));
Filtro21L.LREGRA = cell2mat(raw(:, 16));

%% Clear temporary variables
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;




%% Initialize variables.
filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\28\FiltroA.csv';
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
Filtro28A = table;
Filtro28A.METODO = cell2mat(raw(:, 1));
Filtro28A.URI = cell2mat(raw(:, 2));
Filtro28A.STATUS = cell2mat(raw(:, 3));
Filtro28A.URL = cell2mat(raw(:, 4));
Filtro28A.USERAGENT = cell2mat(raw(:, 5));
Filtro28A.COOKIE = cell2mat(raw(:, 6));
Filtro28A.BROWSER = cell2mat(raw(:, 7));
Filtro28A.QSTATUS = cell2mat(raw(:, 8));
Filtro28A.SSTATUS = cell2mat(raw(:, 9));
Filtro28A.MSTATUS = cell2mat(raw(:, 10));
Filtro28A.LSTATUS = cell2mat(raw(:, 11));
Filtro28A.ACAO = cell2mat(raw(:, 12));
Filtro28A.QREGRA = cell2mat(raw(:, 13));
Filtro28A.SREGRA = cell2mat(raw(:, 14));
Filtro28A.MREGRA = cell2mat(raw(:, 15));
Filtro28A.LREGRA = cell2mat(raw(:, 16));

%% Clear temporary variables
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;




%% Initialize variables.
filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\28\FiltroB.csv';
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
Filtro28B = table;
Filtro28B.METODO = cell2mat(raw(:, 1));
Filtro28B.URI = cell2mat(raw(:, 2));
Filtro28B.STATUS = cell2mat(raw(:, 3));
Filtro28B.URL = cell2mat(raw(:, 4));
Filtro28B.USERAGENT = cell2mat(raw(:, 5));
Filtro28B.COOKIE = cell2mat(raw(:, 6));
Filtro28B.BROWSER = cell2mat(raw(:, 7));
Filtro28B.QSTATUS = cell2mat(raw(:, 8));
Filtro28B.SSTATUS = cell2mat(raw(:, 9));
Filtro28B.MSTATUS = cell2mat(raw(:, 10));
Filtro28B.LSTATUS = cell2mat(raw(:, 11));
Filtro28B.ACAO = cell2mat(raw(:, 12));
Filtro28B.QREGRA = cell2mat(raw(:, 13));
Filtro28B.SREGRA = cell2mat(raw(:, 14));
Filtro28B.MREGRA = cell2mat(raw(:, 15));
Filtro28B.LREGRA = cell2mat(raw(:, 16));

%% Clear temporary variables
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;



%% Initialize variables.
filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\28\FiltroC.csv';
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
Filtro28C = table;
Filtro28C.METODO = cell2mat(raw(:, 1));
Filtro28C.URI = cell2mat(raw(:, 2));
Filtro28C.STATUS = cell2mat(raw(:, 3));
Filtro28C.URL = cell2mat(raw(:, 4));
Filtro28C.USERAGENT = cell2mat(raw(:, 5));
Filtro28C.COOKIE = cell2mat(raw(:, 6));
Filtro28C.BROWSER = cell2mat(raw(:, 7));
Filtro28C.QSTATUS = cell2mat(raw(:, 8));
Filtro28C.SSTATUS = cell2mat(raw(:, 9));
Filtro28C.MSTATUS = cell2mat(raw(:, 10));
Filtro28C.LSTATUS = cell2mat(raw(:, 11));
Filtro28C.ACAO = cell2mat(raw(:, 12));
Filtro28C.QREGRA = cell2mat(raw(:, 13));
Filtro28C.SREGRA = cell2mat(raw(:, 14));
Filtro28C.MREGRA = cell2mat(raw(:, 15));
Filtro28C.LREGRA = cell2mat(raw(:, 16));

%% Clear temporary variables
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;



%% Initialize variables.
filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\28\FiltroD.csv';
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
Filtro28D = table;
Filtro28D.METODO = cell2mat(raw(:, 1));
Filtro28D.URI = cell2mat(raw(:, 2));
Filtro28D.STATUS = cell2mat(raw(:, 3));
Filtro28D.URL = cell2mat(raw(:, 4));
Filtro28D.USERAGENT = cell2mat(raw(:, 5));
Filtro28D.COOKIE = cell2mat(raw(:, 6));
Filtro28D.BROWSER = cell2mat(raw(:, 7));
Filtro28D.QSTATUS = cell2mat(raw(:, 8));
Filtro28D.SSTATUS = cell2mat(raw(:, 9));
Filtro28D.MSTATUS = cell2mat(raw(:, 10));
Filtro28D.LSTATUS = cell2mat(raw(:, 11));
Filtro28D.ACAO = cell2mat(raw(:, 12));
Filtro28D.QREGRA = cell2mat(raw(:, 13));
Filtro28D.SREGRA = cell2mat(raw(:, 14));
Filtro28D.MREGRA = cell2mat(raw(:, 15));
Filtro28D.LREGRA = cell2mat(raw(:, 16));

%% Clear temporary variables
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;



%% Initialize variables.
filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\28\FiltroE.csv';
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
Filtro28E = table;
Filtro28E.METODO = cell2mat(raw(:, 1));
Filtro28E.URI = cell2mat(raw(:, 2));
Filtro28E.STATUS = cell2mat(raw(:, 3));
Filtro28E.URL = cell2mat(raw(:, 4));
Filtro28E.USERAGENT = cell2mat(raw(:, 5));
Filtro28E.COOKIE = cell2mat(raw(:, 6));
Filtro28E.BROWSER = cell2mat(raw(:, 7));
Filtro28E.QSTATUS = cell2mat(raw(:, 8));
Filtro28E.SSTATUS = cell2mat(raw(:, 9));
Filtro28E.MSTATUS = cell2mat(raw(:, 10));
Filtro28E.LSTATUS = cell2mat(raw(:, 11));
Filtro28E.ACAO = cell2mat(raw(:, 12));
Filtro28E.QREGRA = cell2mat(raw(:, 13));
Filtro28E.SREGRA = cell2mat(raw(:, 14));
Filtro28E.MREGRA = cell2mat(raw(:, 15));
Filtro28E.LREGRA = cell2mat(raw(:, 16));

%% Clear temporary variables
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;


%% Initialize variables.
filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\28\FiltroF.csv';
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
Filtro28F = table;
Filtro28F.METODO = cell2mat(raw(:, 1));
Filtro28F.URI = cell2mat(raw(:, 2));
Filtro28F.STATUS = cell2mat(raw(:, 3));
Filtro28F.URL = cell2mat(raw(:, 4));
Filtro28F.USERAGENT = cell2mat(raw(:, 5));
Filtro28F.COOKIE = cell2mat(raw(:, 6));
Filtro28F.BROWSER = cell2mat(raw(:, 7));
Filtro28F.QSTATUS = cell2mat(raw(:, 8));
Filtro28F.SSTATUS = cell2mat(raw(:, 9));
Filtro28F.MSTATUS = cell2mat(raw(:, 10));
Filtro28F.LSTATUS = cell2mat(raw(:, 11));
Filtro28F.ACAO = cell2mat(raw(:, 12));
Filtro28F.QREGRA = cell2mat(raw(:, 13));
Filtro28F.SREGRA = cell2mat(raw(:, 14));
Filtro28F.MREGRA = cell2mat(raw(:, 15));
Filtro28F.LREGRA = cell2mat(raw(:, 16));

%% Clear temporary variables
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;


%% Initialize variables.
filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\28\FiltroG.csv';
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
Filtro28G = table;
Filtro28G.METODO = cell2mat(raw(:, 1));
Filtro28G.URI = cell2mat(raw(:, 2));
Filtro28G.STATUS = cell2mat(raw(:, 3));
Filtro28G.URL = cell2mat(raw(:, 4));
Filtro28G.USERAGENT = cell2mat(raw(:, 5));
Filtro28G.COOKIE = cell2mat(raw(:, 6));
Filtro28G.BROWSER = cell2mat(raw(:, 7));
Filtro28G.QSTATUS = cell2mat(raw(:, 8));
Filtro28G.SSTATUS = cell2mat(raw(:, 9));
Filtro28G.MSTATUS = cell2mat(raw(:, 10));
Filtro28G.LSTATUS = cell2mat(raw(:, 11));
Filtro28G.ACAO = cell2mat(raw(:, 12));
Filtro28G.QREGRA = cell2mat(raw(:, 13));
Filtro28G.SREGRA = cell2mat(raw(:, 14));
Filtro28G.MREGRA = cell2mat(raw(:, 15));
Filtro28G.LREGRA = cell2mat(raw(:, 16));

%% Clear temporary variables
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;


%% Initialize variables.
filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\28\FiltroH.csv';
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
Filtro28H = table;
Filtro28H.METODO = cell2mat(raw(:, 1));
Filtro28H.URI = cell2mat(raw(:, 2));
Filtro28H.STATUS = cell2mat(raw(:, 3));
Filtro28H.URL = cell2mat(raw(:, 4));
Filtro28H.USERAGENT = cell2mat(raw(:, 5));
Filtro28H.COOKIE = cell2mat(raw(:, 6));
Filtro28H.BROWSER = cell2mat(raw(:, 7));
Filtro28H.QSTATUS = cell2mat(raw(:, 8));
Filtro28H.SSTATUS = cell2mat(raw(:, 9));
Filtro28H.MSTATUS = cell2mat(raw(:, 10));
Filtro28H.LSTATUS = cell2mat(raw(:, 11));
Filtro28H.ACAO = cell2mat(raw(:, 12));
Filtro28H.QREGRA = cell2mat(raw(:, 13));
Filtro28H.SREGRA = cell2mat(raw(:, 14));
Filtro28H.MREGRA = cell2mat(raw(:, 15));
Filtro28H.LREGRA = cell2mat(raw(:, 16));

%% Clear temporary variables
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;


%% Initialize variables.
filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\28\FiltroI.csv';
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
Filtro28I = table;
Filtro28I.METODO = cell2mat(raw(:, 1));
Filtro28I.URI = cell2mat(raw(:, 2));
Filtro28I.STATUS = cell2mat(raw(:, 3));
Filtro28I.URL = cell2mat(raw(:, 4));
Filtro28I.USERAGENT = cell2mat(raw(:, 5));
Filtro28I.COOKIE = cell2mat(raw(:, 6));
Filtro28I.BROWSER = cell2mat(raw(:, 7));
Filtro28I.QSTATUS = cell2mat(raw(:, 8));
Filtro28I.SSTATUS = cell2mat(raw(:, 9));
Filtro28I.MSTATUS = cell2mat(raw(:, 10));
Filtro28I.LSTATUS = cell2mat(raw(:, 11));
Filtro28I.ACAO = cell2mat(raw(:, 12));
Filtro28I.QREGRA = cell2mat(raw(:, 13));
Filtro28I.SREGRA = cell2mat(raw(:, 14));
Filtro28I.MREGRA = cell2mat(raw(:, 15));
Filtro28I.LREGRA = cell2mat(raw(:, 16));

%% Clear temporary variables
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;


%% Initialize variables.
filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\28\FiltroJ.csv';
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
Filtro28J = table;
Filtro28J.METODO = cell2mat(raw(:, 1));
Filtro28J.URI = cell2mat(raw(:, 2));
Filtro28J.STATUS = cell2mat(raw(:, 3));
Filtro28J.URL = cell2mat(raw(:, 4));
Filtro28J.USERAGENT = cell2mat(raw(:, 5));
Filtro28J.COOKIE = cell2mat(raw(:, 6));
Filtro28J.BROWSER = cell2mat(raw(:, 7));
Filtro28J.QSTATUS = cell2mat(raw(:, 8));
Filtro28J.SSTATUS = cell2mat(raw(:, 9));
Filtro28J.MSTATUS = cell2mat(raw(:, 10));
Filtro28J.LSTATUS = cell2mat(raw(:, 11));
Filtro28J.ACAO = cell2mat(raw(:, 12));
Filtro28J.QREGRA = cell2mat(raw(:, 13));
Filtro28J.SREGRA = cell2mat(raw(:, 14));
Filtro28J.MREGRA = cell2mat(raw(:, 15));
Filtro28J.LREGRA = cell2mat(raw(:, 16));

%% Clear temporary variables
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;


%% Initialize variables.
filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\28\FiltroK.csv';
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
Filtro28K = table;
Filtro28K.METODO = cell2mat(raw(:, 1));
Filtro28K.URI = cell2mat(raw(:, 2));
Filtro28K.STATUS = cell2mat(raw(:, 3));
Filtro28K.URL = cell2mat(raw(:, 4));
Filtro28K.USERAGENT = cell2mat(raw(:, 5));
Filtro28K.COOKIE = cell2mat(raw(:, 6));
Filtro28K.BROWSER = cell2mat(raw(:, 7));
Filtro28K.QSTATUS = cell2mat(raw(:, 8));
Filtro28K.SSTATUS = cell2mat(raw(:, 9));
Filtro28K.MSTATUS = cell2mat(raw(:, 10));
Filtro28K.LSTATUS = cell2mat(raw(:, 11));
Filtro28K.ACAO = cell2mat(raw(:, 12));
Filtro28K.QREGRA = cell2mat(raw(:, 13));
Filtro28K.SREGRA = cell2mat(raw(:, 14));
Filtro28K.MREGRA = cell2mat(raw(:, 15));
Filtro28K.LREGRA = cell2mat(raw(:, 16));

%% Clear temporary variables
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;


%% Initialize variables.
filename = 'C:\Users\leonardo.ssilva\Documents\MATLAB\28\FiltroL.csv';
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
Filtro28L = table;
Filtro28L.METODO = cell2mat(raw(:, 1));
Filtro28L.URI = cell2mat(raw(:, 2));
Filtro28L.STATUS = cell2mat(raw(:, 3));
Filtro28L.URL = cell2mat(raw(:, 4));
Filtro28L.USERAGENT = cell2mat(raw(:, 5));
Filtro28L.COOKIE = cell2mat(raw(:, 6));
Filtro28L.BROWSER = cell2mat(raw(:, 7));
Filtro28L.QSTATUS = cell2mat(raw(:, 8));
Filtro28L.SSTATUS = cell2mat(raw(:, 9));
Filtro28L.MSTATUS = cell2mat(raw(:, 10));
Filtro28L.LSTATUS = cell2mat(raw(:, 11));
Filtro28L.ACAO = cell2mat(raw(:, 12));
Filtro28L.QREGRA = cell2mat(raw(:, 13));
Filtro28L.SREGRA = cell2mat(raw(:, 14));
Filtro28L.MREGRA = cell2mat(raw(:, 15));
Filtro28L.LREGRA = cell2mat(raw(:, 16));

%% Clear temporary variables
clearvars filename delimiter startRow formatSpec fileID dataArray ans raw col numericData rawData row regexstr result numbers invalidThousandsSeparator thousandsRegExp me;




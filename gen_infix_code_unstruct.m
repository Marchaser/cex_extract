function doString = gen_infix_code(codeBook,fileKeyword,additionalReserve,extended)
% Generate do file to extract fmli file, based on documentation
% Author: Wenlan Luo

% Split the code book into lines
lines = strsplit(codeBook,char(10));
numLines = length(lines);

RESERVE_WORD = {'BLS', 'CODED', 'CU', 'NOTE',  'NUM', 'CHAR', 'GLS', additionalReserve{:}};

% Read identifier for table header
doString = '';
while length(codeBook)>=1
    % Search keyword 'FMLY'
    [ps,pe] = regexp(codeBook,fileKeyword,'once');
    if ps
        codeBook(1:pe) = [];
        % Search keyword 'VARIABLE' in the next 1000 chars
        [ps,pe] = regexp(codeBook,'VARIABLE','once');
        if ps
            codeBook(1:pe) = [];
            % Search for the next keyword VARIABLE
            [ps,pe] = regexp(codeBook,'VARIABLE','once');
            codeBook = codeBook(1:pe);
            while length(codeBook)>=1
                % Find location pattern
                [ps,pe] = regexp(codeBook,'((NUM|CHAR)(\(\d*\)|\(\d*,\d*\)))|(VARIABLE)','once');
                tokens = codeBook(ps:pe);
                
                % VARIABLE is the ending indicator
                if regexp(tokens,'VARIABLE','once')
                    codeBook = [];
                    break;
                elseif regexp(tokens,'(CHAR)(\(\d*\))','once');
                    % CHAR(8)
                    [s,e] = regexp(tokens,'\d*');
                    varLen = str2num(tokens(s:e));
                    formatStr = ['str'];
                elseif regexp(tokens,'(NUM)(\(\d*\))');
                    % NUM(8)
                    [s,e] = regexp(tokens,'\d*');
                    varLen = str2num(tokens(s:e));
                    formatStr = ['long'];
                elseif regexp(tokens,'(NUM)(\(\d*,\d*\))');
                    % NUM(8.4)
                    [s,e] = regexp(tokens,'\d*');
                    varLen = str2num(tokens(s(1):e(1))) + str2num(tokens(s(2):e(2)));
                    formatStr = ['double'];
                end
                
                % Search for the closest number
                [pps,ppe] = regexp(codeBook(1:ps-1),'\d*');
                startPos = str2num(codeBook(pps(end):ppe(end)));
                endPos = startPos + varLen-1;
                
                %{
                if startPos==77
                    1
                end
                %}
                
                % Search for the closest capital string
                if extended
                    [pps,ppe] = regexp(codeBook(1:ps-1),'(?<=[\s\*]+)([A-Z][A-Z_0-9]+)(?=([\s]+[A-Z0-9\*]))');
                else
                    [pps,ppe] = regexp(codeBook(1:ps-1),'([A-Z][A-Z_0-9]+)');
                end
                isVariable = 0;
                for j=length(pps):-1:1
                    tokens = strtrim(codeBook(pps(j):ppe(j)));

                    % Exclude from reserve word
                    found = regexp(tokens,'^S[0-9]','once');
                    if isempty(found) && ~max(strcmp(tokens, RESERVE_WORD))
                        isVariable = 1;
                        break;
                    end
                    % Pattern  D() N()
                    %{
                    found = regexp(tokens,'D\(');
                    if found
                        continue;
                    end
                    found = regexp(tokens,'N\(');
                    if found
                        continue;
                    end
                    %}
                end
                if ~isVariable
                    % Something is wrong
                    warning(['Mistake at reading ' num2str(startPos)]);
                end
                
                if isVariable
                    variable = tokens;
                    
                    thisString = [formatStr ' ' variable ' ' num2str(startPos) '-' num2str(endPos)];
                    doString = [doString '  ' thisString char(10)];
                end
                
                % Consume word
                codeBook(1:pe) = [];
                
                % display(startPos);
            end
        end
    end
end
end

function doString = gen_infix(variable,descr,location,format)
    doString = '';
    for j=1:length(variable)
        % Deal with Format
        % CHAR(1)
        [s,e] = regexp(format{j},'(CHAR)(\(\d*\))');
        if ~isempty(s)
            [s,e] = regexp(format{j},'\d*');
            varLen = str2num(format{j}(s:e));
            formatStr = ['str'];
        end
        % NUM(8)
        [s,e] = regexp(format{j},'(NUM)(\(\d*\))');        
        if ~isempty(s)
            [s,e] = regexp(format{j},'\d*');
            varLen = str2num(format{j}(s:e));
            formatStr = ['long'];
        end
        % NUM(8.4)
        [s,e] = regexp(format{j},'(NUM)(\(\d*,\d*\))');
        if ~isempty(s)
            [s,e] = regexp(format{j},'\d*');
            varLen = str2num(format{j}(s(1):e(1))) + str2num(format{j}(s(2):e(2)));
            formatStr = ['double'];
        end
        
        startPos = str2num(location{j});
        endPos = startPos + varLen-1;
        
        thisString = [formatStr ' ' variable{j} ' ' num2str(startPos) '-' num2str(endPos)];
        doString = [doString '  ' thisString char(10)];
    end
end

function word = find_first_non_empty_word(string)
for j=1:length(string)
    if ~strcmp(string{j},'')
        word = string{j};
        return;
    end
end
word='';
end

function isBlank = is_char_blank(char)
isBlank = strcmp(char, ' ');
end
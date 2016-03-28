function doString = gen_infix_code_doc(codeBook,fileKeyword,keywordEnd)
% Generate do file to extract fmli file, based on documentation
% Author: Wenlan Luo

% Find keyword
[~,ps] = regexp(codeBook,fileKeyword,'once');
codeBook(1:ps) = [];
pe = regexp(codeBook,keywordEnd,'once');
codeBook = codeBook(1:pe-1);

% Split the code book by tabs
lines = strsplit(codeBook,char(9));
numLines = length(lines);

doString = '';
for j=1:numLines
    line = lines{j};
    
    % Search format pattern
    [ps,pe] = regexp(line,'((NUM|CHAR)(\(\d*\)|\(\d*,\d*\)))','once');
    if ps
        %
        line = lines{j};
        tokens = line(ps:pe);
        if regexp(tokens,'(CHAR)(\(\d*\))','once');
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
            varLen = str2num(tokens(s(1):e(1)));
            formatStr = ['double'];
        end
        
        % Last cell is positition
        line = lines{j-1};
        [pps,ppe] = regexp(line,'\d*');
        startPos = str2num(line(pps(end):ppe(end)));
        endPos = startPos + varLen-1;
        
        % 3 cells before is variable
        line = lines{j-3};
        [pps,ppe] = regexp(line,'[A-Z_][A-Z_0-9]+(?!\()');
        variable = line(pps(end):ppe(end));

        % Write to doString
        thisString = [formatStr ' ' variable ' ' num2str(startPos) '-' num2str(endPos)];
        doString = [doString '  ' thisString char(10)];
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
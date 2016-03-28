function doString = gen_infix_code(codeBook,fileKeyword)
% Generate do file to extract fmli file, based on documentation
% Author: Wenlan Luo

% Split the code book into lines
lines = strsplit(codeBook,char(10));
numLines = length(lines);

doString = '';
for j=1:numLines
    % Search keyword 'FMLY'
    line = lines{j};
    found = regexp(line,fileKeyword,'once');
    if found
        % Search keyword 'VARIABLE' in the next 200 lines
        for j=j+1:j+200
            line = lines{j};
            found = regexp(line,'VARIABLE','once');
            if found
                break;
            end
        end
        
        if found
            % Search format pattern in the next 100 lines
            for j=j+1:j+100
                line = lines{j};
                [ps,pe] = regexp(line,'((NUM|CHAR)(\(\d*\)|\(\d*,\d*\)))','once');
                if ps
                    break;
                end
            end
            
            if ps
                formatStartPos = ps;
                % Search the number immediate before
                [pps,ppe] = regexp(line(1:ps-1),'\d*');
                locationEndPos = ppe(end);
                % Search the capital letter immediate before
                [pps,ppe] = regexp(line(1:ps-1),'[A-Z_][A-Z_0-9]+','once');
                variableStartPos = pps(1);
                
                for j=j:numLines
                    line = lines{j};
                    % Variable is the ending indicator
                    found = regexp(line,'VARIABLE','once');
                    if found
                        break;
                    end
                    
                    % For each line check if it has the data format
                    if isstrprop(line(variableStartPos),'upper') & isstrprop(line(locationEndPos),'digit') & isstrprop(line(formatStartPos),'upper')
                        % It's a valid entry
                        % Find format pattern
                        [ps,pe] = regexp(line,'((NUM|CHAR)(\(\d*\)|\(\d*,\d*\)))','once');
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
                        
                        % Find location pattern
                        [pps,ppe] = regexp(line(1:ps-1),'\d*');
                        startPos = str2num(line(pps(end):ppe(end)));
                        endPos = startPos + varLen-1;
                        
                        % Find variable name
                        [pps,ppe] = regexp(line(1:ps-1),'[A-Z_][A-Z_0-9]+','once');
                        variable = line(pps:ppe);
                        
                        % Write to doString
                        thisString = [formatStr ' ' variable ' ' num2str(startPos) '-' num2str(endPos)];
                        doString = [doString '  ' thisString char(10)];
                    end
                end
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
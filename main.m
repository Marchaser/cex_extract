function gen_stata_dofile

codeBooks = {};
srcDirs = {};
fileTypes = {};
firstVar = {};

[~,~,filename] = xlsread('filename.xlsx');
filename(1,:) = [];
numYears = size(filename);

for j=1:numYears
    fmlyDoString = '';
    membDoString = '';
    mtabDoString = '';
    itabDoString = '';
    
    year = filename(j,1);
    if year{:}>=1992
        break;
    end
    
    inScope = str2num(filename{j,14});
    if ~inScope
        continue;
    end
    
    infixFun = str2num(filename{j,15});
    
    icpsrNo = filename(j,2);
    doc = filename(j,3);
    fmly = filename(j,4);
    memb = filename(j,5);
    mtab = filename(j,6);
    itab = filename(j,7);
    icpsrDetailNo = filename(j,8);
    icpsrDetailDoc = filename(j,9);
    apl = filename(j,10);
    apa = filename(j,11);
    ovb = filename(j,12);
    ovc = filename(j,13);

    fmlys = strsplit(fmly{:},' ');
    membs = strsplit(memb{:},' ');
    mtabs = strsplit(mtab{:},' ');
    itabs = strsplit(itab{:},' ');
    srcDir = ['D:\data\cex\' num2str(year{:}) '\'];
    text = [srcDir doc{:} '.txt'];
    codeBook = fileread(text);
    
    if (infixFun==1)
        doString = gen_infix_code(codeBook,'"FMLY"');
    elseif infixFun==2
        doString = gen_infix_code_doc(codeBook,'"FMLY"','"MEMB"');
    end
    for k=1:length(fmlys)
        doStringQ = ['#d;' char(10) 'clear;' char(10) 'infix' char(10) doString ...
            'using ' '${SRC}\' num2str(year{:}) '\'  icpsrNo{:} '-' fmlys{k} '-Data.txt;' char(10) 'save fmly\fmly' num2str(year{:}) 'q' num2str(k) ', replace;' char(10)];
        fmlyDoString = [fmlyDoString doStringQ char(10)];
    end
    
    if (infixFun==1)
        doString = gen_infix_code(codeBook,'"MEMB"');
    elseif infixFun==2
        doString = gen_infix_code_doc(codeBook,'"FMLY"','"MEMB"');
    end
    for k=1:length(membs)
        doStringQ = ['#d;' char(10) 'clear;' char(10) 'infix' char(10) doString ...
            'using ' '${SRC}\' num2str(year{:}) '\' icpsrNo{:} '-' membs{k} '-Data.txt;' char(10) 'save memb\memb' num2str(year{:}) 'q' num2str(k) ', replace;' char(10)];
        membDoString = [membDoString doStringQ char(10)];
    end
    
    if (infixFun==1)
        doString = gen_infix_code(codeBook,'"MTAB"');
    elseif infixFun==2
        doString = gen_infix_code_doc(codeBook,'"MEMB"','"MTAB"');
    end
    for k=1:length(mtabs)
        doStringQ = ['#d;' char(10) 'clear;' char(10) 'infix' char(10) doString ...
            'using ' '${SRC}\' num2str(year{:}) '\' icpsrNo{:} '-' mtabs{k} '-Data.txt;' char(10) 'save mtab\mtab' num2str(year{:}) 'q' num2str(k) ', replace;' char(10)];
        mtabDoString = [mtabDoString doStringQ char(10)];
    end
    
    if (infixFun==1)
        doString = gen_infix_code(codeBook,'"ITAB"');
    elseif infixFun==2
        doString = gen_infix_code_doc(codeBook,'"ITAB"','(EXPN)');
    end
    for k=1:length(itabs)
        doStringQ = ['#d;' char(10) 'clear;' char(10) 'infix' char(10) doString ...
            'using ' '${SRC}\' num2str(year{:}) '\' icpsrNo{:} '-' itabs{k} '-Data.txt;' char(10) 'save itab\itab' num2str(year{:}) 'q' num2str(k) ', replace;' char(10)];
        itabDoString = [itabDoString doStringQ char(10)];
    end
    
    fid = fopen(['generated_code/fmlyDo' num2str(year{:}) '.do'],'wt');
    fprintf(fid, '%s', fmlyDoString);
    fclose(fid);
    
    fid = fopen(['generated_code/membDo' num2str(year{:}) '.do'],'wt');
    fprintf(fid, '%s', membDoString);
    fclose(fid);
    
    fid = fopen(['generated_code/mtabDo' num2str(year{:}) '.do'],'wt');
    fprintf(fid, '%s', mtabDoString);
    fclose(fid);
    
    fid = fopen(['generated_code/itabDo' num2str(year{:}) '.do'],'wt');
    fprintf(fid, '%s', itabDoString);
    fclose(fid);
end



end
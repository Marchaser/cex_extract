% test
text = fileread('D:\data\cex\1995\02264-Codebook.txt');
% text = fileread('D:\data\cex\1984\08671-Documentation.txt');
gen_infix_code_doc(text,'"FMLY"','"MEMB"');
gen_infix_code_doc(text,'"MEMB"','"MTAB"');
gen_infix_code_doc(text,'"MTAB"','"ITAB"');
gen_infix_code_doc(text,'"ITAB"','(EXPN)');
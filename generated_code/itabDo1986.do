#d;
clear;
infix
  long NEWID 1-8
  str REFMO 9-10
  str REFYR 11-12
  str UCC 13-18
  str PUBFLAG 19-19
  double COST 20-31
  str COST_ 32-32
  str GIFT 33-33
using ${SRC}\1986\09113-0004-Data.txt;
save itab\itab1986q1, replace;

#d;
clear;
infix
  long NEWID 1-8
  str REFMO 9-10
  str REFYR 11-12
  str UCC 13-18
  str PUBFLAG 19-19
  double COST 20-31
  str COST_ 32-32
  str GIFT 33-33
using ${SRC}\1986\09113-0008-Data.txt;
save itab\itab1986q2, replace;

#d;
clear;
infix
  long NEWID 1-8
  str REFMO 9-10
  str REFYR 11-12
  str UCC 13-18
  str PUBFLAG 19-19
  double COST 20-31
  str COST_ 32-32
  str GIFT 33-33
using ${SRC}\1986\09113-0012-Data.txt;
save itab\itab1986q3, replace;

#d;
clear;
infix
  long NEWID 1-8
  str REFMO 9-10
  str REFYR 11-12
  str UCC 13-18
  str PUBFLAG 19-19
  double COST 20-31
  str COST_ 32-32
  str GIFT 33-33
using ${SRC}\1986\09113-0016-Data.txt;
save itab\itab1986q4, replace;

#d;
clear;
infix
  long NEWID 1-8
  str REFMO 9-10
  str REFYR 11-12
  str UCC 13-18
  str PUBFLAG 19-19
  double COST 20-31
  str COST_ 32-32
  str GIFT 33-33
using ${SRC}\1986\09113-0020-Data.txt;
save itab\itab1986q5, replace;


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
using ${SRC}\1984\08671-0004-Data.txt;
save itab\itab1984q1, replace;

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
using ${SRC}\1984\08671-0008-Data.txt;
save itab\itab1984q2, replace;

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
using ${SRC}\1984\08671-0012-Data.txt;
save itab\itab1984q3, replace;

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
using ${SRC}\1984\08671-0016-Data.txt;
save itab\itab1984q4, replace;

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
using ${SRC}\1984\08671-0020-Data.txt;
save itab\itab1984q5, replace;


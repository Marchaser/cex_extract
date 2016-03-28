#d;
clear;
infix
  long NEWID 1-8
  str REFMO 9-10
  str REFYR 11-12
  str UCC 13-18
  str PUBFLAG 19-19
  double VALUE 20-31
  str VALUE_ 32-32
  str GIFT 33-33
using ${SRC}\1995\02264-0004-Data.txt;
save itab\itab1995q1, replace;

#d;
clear;
infix
  long NEWID 1-8
  str REFMO 9-10
  str REFYR 11-12
  str UCC 13-18
  str PUBFLAG 19-19
  double VALUE 20-31
  str VALUE_ 32-32
  str GIFT 33-33
using ${SRC}\1995\02264-0008-Data.txt;
save itab\itab1995q2, replace;

#d;
clear;
infix
  long NEWID 1-8
  str REFMO 9-10
  str REFYR 11-12
  str UCC 13-18
  str PUBFLAG 19-19
  double VALUE 20-31
  str VALUE_ 32-32
  str GIFT 33-33
using ${SRC}\1995\02264-0012-Data.txt;
save itab\itab1995q3, replace;

#d;
clear;
infix
  long NEWID 1-8
  str REFMO 9-10
  str REFYR 11-12
  str UCC 13-18
  str PUBFLAG 19-19
  double VALUE 20-31
  str VALUE_ 32-32
  str GIFT 33-33
using ${SRC}\1995\02264-0016-Data.txt;
save itab\itab1995q4, replace;

#d;
clear;
infix
  long NEWID 1-8
  str REFMO 9-10
  str REFYR 11-12
  str UCC 13-18
  str PUBFLAG 19-19
  double VALUE 20-31
  str VALUE_ 32-32
  str GIFT 33-33
using ${SRC}\1995\02264-0020-Data.txt;
save itab\itab1995q5, replace;


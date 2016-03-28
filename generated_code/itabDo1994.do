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
using ${SRC}\1994\06710-0004-Data.txt;
save itab\itab1994q1, replace;

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
using ${SRC}\1994\06710-0008-Data.txt;
save itab\itab1994q2, replace;

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
using ${SRC}\1994\06710-0012-Data.txt;
save itab\itab1994q3, replace;

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
using ${SRC}\1994\06710-0016-Data.txt;
save itab\itab1994q4, replace;


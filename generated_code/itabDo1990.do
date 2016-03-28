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
  str UCC 1-6
  str  8-8
  str  10-15
  str  1-6
  str  8-80
  str UCC 1-6
  str UCC 8-40
using ${SRC}\1990\09820-0004-Data.txt;
save itab\itab1990q1, replace;

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
  str UCC 1-6
  str  8-8
  str  10-15
  str  1-6
  str  8-80
  str UCC 1-6
  str UCC 8-40
using ${SRC}\1990\09820-0008-Data.txt;
save itab\itab1990q2, replace;

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
  str UCC 1-6
  str  8-8
  str  10-15
  str  1-6
  str  8-80
  str UCC 1-6
  str UCC 8-40
using ${SRC}\1990\09820-0012-Data.txt;
save itab\itab1990q3, replace;

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
  str UCC 1-6
  str  8-8
  str  10-15
  str  1-6
  str  8-80
  str UCC 1-6
  str UCC 8-40
using ${SRC}\1990\09820-0016-Data.txt;
save itab\itab1990q4, replace;

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
  str UCC 1-6
  str  8-8
  str  10-15
  str  1-6
  str  8-80
  str UCC 1-6
  str UCC 8-40
using ${SRC}\1990\09820-0020-Data.txt;
save itab\itab1990q5, replace;


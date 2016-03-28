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
  str UCC 3-8
  str  10-10
  str  15-20
  str  1-6
  str  8-80
  str UCC 1-6
  str UCC 8-40
using ${SRC}\1992\06372-0004-Data.txt;
save itab\itab1992q1, replace;

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
  str UCC 3-8
  str  10-10
  str  15-20
  str  1-6
  str  8-80
  str UCC 1-6
  str UCC 8-40
using ${SRC}\1992\06372-0008-Data.txt;
save itab\itab1992q2, replace;

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
  str UCC 3-8
  str  10-10
  str  15-20
  str  1-6
  str  8-80
  str UCC 1-6
  str UCC 8-40
using ${SRC}\1992\06372-0012-Data.txt;
save itab\itab1992q3, replace;

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
  str UCC 3-8
  str  10-10
  str  15-20
  str  1-6
  str  8-80
  str UCC 1-6
  str UCC 8-40
using ${SRC}\1992\06372-0016-Data.txt;
save itab\itab1992q4, replace;

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
  str UCC 3-8
  str  10-10
  str  15-20
  str  1-6
  str  8-80
  str UCC 1-6
  str UCC 8-40
using ${SRC}\1992\06372-0020-Data.txt;
save itab\itab1992q5, replace;


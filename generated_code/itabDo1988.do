#d;
clear;
infix
  long NEWID 1-8
  str REF_MO 9-10
  str REF_YR 11-12
  str UCC 13-18
  str PUBFLAG 19-19
  double COST 20-31
  str COST_ 32-32
  str GIFT 33-33
using ${SRC}\1988\09451-0004-Data.txt;
save itab\itab1988q1, replace;

#d;
clear;
infix
  long NEWID 1-8
  str REF_MO 9-10
  str REF_YR 11-12
  str UCC 13-18
  str PUBFLAG 19-19
  double COST 20-31
  str COST_ 32-32
  str GIFT 33-33
using ${SRC}\1988\09451-0008-Data.txt;
save itab\itab1988q2, replace;

#d;
clear;
infix
  long NEWID 1-8
  str REF_MO 9-10
  str REF_YR 11-12
  str UCC 13-18
  str PUBFLAG 19-19
  double COST 20-31
  str COST_ 32-32
  str GIFT 33-33
using ${SRC}\1988\09451-0012-Data.txt;
save itab\itab1988q3, replace;

#d;
clear;
infix
  long NEWID 1-8
  str REF_MO 9-10
  str REF_YR 11-12
  str UCC 13-18
  str PUBFLAG 19-19
  double COST 20-31
  str COST_ 32-32
  str GIFT 33-33
using ${SRC}\1988\09451-0016-Data.txt;
save itab\itab1988q4, replace;

#d;
clear;
infix
  long NEWID 1-8
  str REF_MO 9-10
  str REF_YR 11-12
  str UCC 13-18
  str PUBFLAG 19-19
  double COST 20-31
  str COST_ 32-32
  str GIFT 33-33
using ${SRC}\1988\09451-0020-Data.txt;
save itab\itab1988q5, replace;


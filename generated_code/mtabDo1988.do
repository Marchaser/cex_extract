#d;
clear;
infix
  long NEWID 1-8
  str UCC 9-14
  double COST 15-26
  str COST_ 27-27
  str GIFT 28-28
  str PUBFLAG 29-29
  str REF_MO 30-31
  str REF_YR 32-33
using ${SRC}\1988\09451-0003-Data.txt;
save mtab\mtab1988q1, replace;

#d;
clear;
infix
  long NEWID 1-8
  str UCC 9-14
  double COST 15-26
  str COST_ 27-27
  str GIFT 28-28
  str PUBFLAG 29-29
  str REF_MO 30-31
  str REF_YR 32-33
using ${SRC}\1988\09451-0007-Data.txt;
save mtab\mtab1988q2, replace;

#d;
clear;
infix
  long NEWID 1-8
  str UCC 9-14
  double COST 15-26
  str COST_ 27-27
  str GIFT 28-28
  str PUBFLAG 29-29
  str REF_MO 30-31
  str REF_YR 32-33
using ${SRC}\1988\09451-0011-Data.txt;
save mtab\mtab1988q3, replace;

#d;
clear;
infix
  long NEWID 1-8
  str UCC 9-14
  double COST 15-26
  str COST_ 27-27
  str GIFT 28-28
  str PUBFLAG 29-29
  str REF_MO 30-31
  str REF_YR 32-33
using ${SRC}\1988\09451-0015-Data.txt;
save mtab\mtab1988q4, replace;

#d;
clear;
infix
  long NEWID 1-8
  str UCC 9-14
  double COST 15-26
  str COST_ 27-27
  str GIFT 28-28
  str PUBFLAG 29-29
  str REF_MO 30-31
  str REF_YR 32-33
using ${SRC}\1988\09451-0019-Data.txt;
save mtab\mtab1988q5, replace;


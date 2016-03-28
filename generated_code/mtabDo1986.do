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
using ${SRC}\1986\09113-0003-Data.txt;
save mtab\mtab1986q1, replace;

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
using ${SRC}\1986\09113-0007-Data.txt;
save mtab\mtab1986q2, replace;

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
using ${SRC}\1986\09113-0011-Data.txt;
save mtab\mtab1986q3, replace;

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
using ${SRC}\1986\09113-0015-Data.txt;
save mtab\mtab1986q4, replace;

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
using ${SRC}\1986\09113-0019-Data.txt;
save mtab\mtab1986q5, replace;


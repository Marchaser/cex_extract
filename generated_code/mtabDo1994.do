#d;
clear;
infix
  long NEWID 1-8
  long MEMBNO 162-163
  str CU_CODE 75-75
  str CU_CODE_ 76-76
  long AGE 9-11
  str AGE_ 12-12
  str RACE 197-197
  str RACE_ 198-198
  str SEX 239-239
  str SEX_ 240-240
  str MARITAL 158-158
  str MARITAL_ 159-159
  str ORIGINR 180-180
  str EDUCA 83-84
  str EDUCA_ 85-85
  str COMPLET 73-73
  str COMPLET_ 74-74
  str IN_COLL 121-121
  str IN_COLL_ 122-122
  str ARM_FORC 67-67
  str ARM__ORC 68-68
  str EARNER 79-79
  str EARNER_ 80-80
  str EARNTYPE 81-81
  str EARN_YPE 82-82
  long SCHMLWKQ 232-233
  str SCHM_WKQ 234-234
  long SCHMLWKX 235-237
  str SCHM_WKX 238-238
  long INCWEEKQ 137-138
  str INCW_EKQ 139-139
  long INC_HRSQ 123-125
  str INC__RSQ 126-126
  str OCCUCODE 177-178
  str OCCU_ODE 179-179
  str INCOMEY 131-131
  str INCOMEY_ 132-132
  str INCORP 133-133
  str INCORP_ 134-134
  str PWRKSTAT 192-192
  str PWRK_TAT 193-193
  str INCNONWK 129-129
  str INCN_NWK 130-130
  long SALARYX 217-226
  str SALARYX_ 227-227
  long GROSPAYX 110-119
  str GROS_AYX 120-120
  str PAYPERD 181-181
  str PAYPERD_ 182-182
  str SSNORM 278-278
  str SSNORM_ 279-279
  long NONFARMX 166-175
  str NONF_RMX 176-176
  str NFRMLOSS 164-164
  str NFRM_OSS 165-165
  long FARMINCX 88-97
  str FARM_NCX 98-98
  str FARMLOSS 99-99
  str FARM_OSS 100-100
  long SOCRRX 257-264
  str SOCRRX_ 265-265
  long RRRETIRX 208-215
  str RRRE_IRX 216-216
  str INCMEDCR 127-127
  str INCM_DCR 128-128
  long SS_RRQ 266-267
  str SS_RRQ_ 268-268
  long SSIX 269-276
  str SSIX_ 277-277
  long ANFEDTX 22-29
  str ANFEDTX_ 30-30
  long AMTFED 13-20
  str AMTFED_ 21-21
  long ANSLTX 58-65
  str ANSLTX_ 66-66
  long SLTAXX 248-255
  str SLTAXX 256-256
  long JSSDEDX 151-156
  str JSSDEDX_ 157-157
  str MEDICOV 160-160
  str MEDICOV_ 161-161
  long SLFEMPSS 241-246
  str SLFE_PSS 247-247
  long ANRRDEDX 49-56
  str ANRR_EDX 57-57
  long RRRDEDX 199-206
  str RRRDEDX_ 207-207
  long ANGOVRTX 31-38
  str ANGO_RTX 39-39
  long GOVRETX 101-108
  str GOVRETX_ 109-109
  long ANPRVPNX 40-47
  str ANPR_PNX 48-48
  long PRIVPENX 183-190
  str PRIV_ENX 191-191
  str EMPLCONT 86-86
  str EMPL_ONT 87-87
  long INDRETX 140-149
  str INDRETX_ 150-150
using ${SRC}\1994\06710-0003-Data.txt;
save mtab\mtab1994q1, replace;

#d;
clear;
infix
  long NEWID 1-8
  long MEMBNO 162-163
  str CU_CODE 75-75
  str CU_CODE_ 76-76
  long AGE 9-11
  str AGE_ 12-12
  str RACE 197-197
  str RACE_ 198-198
  str SEX 239-239
  str SEX_ 240-240
  str MARITAL 158-158
  str MARITAL_ 159-159
  str ORIGINR 180-180
  str EDUCA 83-84
  str EDUCA_ 85-85
  str COMPLET 73-73
  str COMPLET_ 74-74
  str IN_COLL 121-121
  str IN_COLL_ 122-122
  str ARM_FORC 67-67
  str ARM__ORC 68-68
  str EARNER 79-79
  str EARNER_ 80-80
  str EARNTYPE 81-81
  str EARN_YPE 82-82
  long SCHMLWKQ 232-233
  str SCHM_WKQ 234-234
  long SCHMLWKX 235-237
  str SCHM_WKX 238-238
  long INCWEEKQ 137-138
  str INCW_EKQ 139-139
  long INC_HRSQ 123-125
  str INC__RSQ 126-126
  str OCCUCODE 177-178
  str OCCU_ODE 179-179
  str INCOMEY 131-131
  str INCOMEY_ 132-132
  str INCORP 133-133
  str INCORP_ 134-134
  str PWRKSTAT 192-192
  str PWRK_TAT 193-193
  str INCNONWK 129-129
  str INCN_NWK 130-130
  long SALARYX 217-226
  str SALARYX_ 227-227
  long GROSPAYX 110-119
  str GROS_AYX 120-120
  str PAYPERD 181-181
  str PAYPERD_ 182-182
  str SSNORM 278-278
  str SSNORM_ 279-279
  long NONFARMX 166-175
  str NONF_RMX 176-176
  str NFRMLOSS 164-164
  str NFRM_OSS 165-165
  long FARMINCX 88-97
  str FARM_NCX 98-98
  str FARMLOSS 99-99
  str FARM_OSS 100-100
  long SOCRRX 257-264
  str SOCRRX_ 265-265
  long RRRETIRX 208-215
  str RRRE_IRX 216-216
  str INCMEDCR 127-127
  str INCM_DCR 128-128
  long SS_RRQ 266-267
  str SS_RRQ_ 268-268
  long SSIX 269-276
  str SSIX_ 277-277
  long ANFEDTX 22-29
  str ANFEDTX_ 30-30
  long AMTFED 13-20
  str AMTFED_ 21-21
  long ANSLTX 58-65
  str ANSLTX_ 66-66
  long SLTAXX 248-255
  str SLTAXX 256-256
  long JSSDEDX 151-156
  str JSSDEDX_ 157-157
  str MEDICOV 160-160
  str MEDICOV_ 161-161
  long SLFEMPSS 241-246
  str SLFE_PSS 247-247
  long ANRRDEDX 49-56
  str ANRR_EDX 57-57
  long RRRDEDX 199-206
  str RRRDEDX_ 207-207
  long ANGOVRTX 31-38
  str ANGO_RTX 39-39
  long GOVRETX 101-108
  str GOVRETX_ 109-109
  long ANPRVPNX 40-47
  str ANPR_PNX 48-48
  long PRIVPENX 183-190
  str PRIV_ENX 191-191
  str EMPLCONT 86-86
  str EMPL_ONT 87-87
  long INDRETX 140-149
  str INDRETX_ 150-150
using ${SRC}\1994\06710-0007-Data.txt;
save mtab\mtab1994q2, replace;

#d;
clear;
infix
  long NEWID 1-8
  long MEMBNO 162-163
  str CU_CODE 75-75
  str CU_CODE_ 76-76
  long AGE 9-11
  str AGE_ 12-12
  str RACE 197-197
  str RACE_ 198-198
  str SEX 239-239
  str SEX_ 240-240
  str MARITAL 158-158
  str MARITAL_ 159-159
  str ORIGINR 180-180
  str EDUCA 83-84
  str EDUCA_ 85-85
  str COMPLET 73-73
  str COMPLET_ 74-74
  str IN_COLL 121-121
  str IN_COLL_ 122-122
  str ARM_FORC 67-67
  str ARM__ORC 68-68
  str EARNER 79-79
  str EARNER_ 80-80
  str EARNTYPE 81-81
  str EARN_YPE 82-82
  long SCHMLWKQ 232-233
  str SCHM_WKQ 234-234
  long SCHMLWKX 235-237
  str SCHM_WKX 238-238
  long INCWEEKQ 137-138
  str INCW_EKQ 139-139
  long INC_HRSQ 123-125
  str INC__RSQ 126-126
  str OCCUCODE 177-178
  str OCCU_ODE 179-179
  str INCOMEY 131-131
  str INCOMEY_ 132-132
  str INCORP 133-133
  str INCORP_ 134-134
  str PWRKSTAT 192-192
  str PWRK_TAT 193-193
  str INCNONWK 129-129
  str INCN_NWK 130-130
  long SALARYX 217-226
  str SALARYX_ 227-227
  long GROSPAYX 110-119
  str GROS_AYX 120-120
  str PAYPERD 181-181
  str PAYPERD_ 182-182
  str SSNORM 278-278
  str SSNORM_ 279-279
  long NONFARMX 166-175
  str NONF_RMX 176-176
  str NFRMLOSS 164-164
  str NFRM_OSS 165-165
  long FARMINCX 88-97
  str FARM_NCX 98-98
  str FARMLOSS 99-99
  str FARM_OSS 100-100
  long SOCRRX 257-264
  str SOCRRX_ 265-265
  long RRRETIRX 208-215
  str RRRE_IRX 216-216
  str INCMEDCR 127-127
  str INCM_DCR 128-128
  long SS_RRQ 266-267
  str SS_RRQ_ 268-268
  long SSIX 269-276
  str SSIX_ 277-277
  long ANFEDTX 22-29
  str ANFEDTX_ 30-30
  long AMTFED 13-20
  str AMTFED_ 21-21
  long ANSLTX 58-65
  str ANSLTX_ 66-66
  long SLTAXX 248-255
  str SLTAXX 256-256
  long JSSDEDX 151-156
  str JSSDEDX_ 157-157
  str MEDICOV 160-160
  str MEDICOV_ 161-161
  long SLFEMPSS 241-246
  str SLFE_PSS 247-247
  long ANRRDEDX 49-56
  str ANRR_EDX 57-57
  long RRRDEDX 199-206
  str RRRDEDX_ 207-207
  long ANGOVRTX 31-38
  str ANGO_RTX 39-39
  long GOVRETX 101-108
  str GOVRETX_ 109-109
  long ANPRVPNX 40-47
  str ANPR_PNX 48-48
  long PRIVPENX 183-190
  str PRIV_ENX 191-191
  str EMPLCONT 86-86
  str EMPL_ONT 87-87
  long INDRETX 140-149
  str INDRETX_ 150-150
using ${SRC}\1994\06710-0011-Data.txt;
save mtab\mtab1994q3, replace;

#d;
clear;
infix
  long NEWID 1-8
  long MEMBNO 162-163
  str CU_CODE 75-75
  str CU_CODE_ 76-76
  long AGE 9-11
  str AGE_ 12-12
  str RACE 197-197
  str RACE_ 198-198
  str SEX 239-239
  str SEX_ 240-240
  str MARITAL 158-158
  str MARITAL_ 159-159
  str ORIGINR 180-180
  str EDUCA 83-84
  str EDUCA_ 85-85
  str COMPLET 73-73
  str COMPLET_ 74-74
  str IN_COLL 121-121
  str IN_COLL_ 122-122
  str ARM_FORC 67-67
  str ARM__ORC 68-68
  str EARNER 79-79
  str EARNER_ 80-80
  str EARNTYPE 81-81
  str EARN_YPE 82-82
  long SCHMLWKQ 232-233
  str SCHM_WKQ 234-234
  long SCHMLWKX 235-237
  str SCHM_WKX 238-238
  long INCWEEKQ 137-138
  str INCW_EKQ 139-139
  long INC_HRSQ 123-125
  str INC__RSQ 126-126
  str OCCUCODE 177-178
  str OCCU_ODE 179-179
  str INCOMEY 131-131
  str INCOMEY_ 132-132
  str INCORP 133-133
  str INCORP_ 134-134
  str PWRKSTAT 192-192
  str PWRK_TAT 193-193
  str INCNONWK 129-129
  str INCN_NWK 130-130
  long SALARYX 217-226
  str SALARYX_ 227-227
  long GROSPAYX 110-119
  str GROS_AYX 120-120
  str PAYPERD 181-181
  str PAYPERD_ 182-182
  str SSNORM 278-278
  str SSNORM_ 279-279
  long NONFARMX 166-175
  str NONF_RMX 176-176
  str NFRMLOSS 164-164
  str NFRM_OSS 165-165
  long FARMINCX 88-97
  str FARM_NCX 98-98
  str FARMLOSS 99-99
  str FARM_OSS 100-100
  long SOCRRX 257-264
  str SOCRRX_ 265-265
  long RRRETIRX 208-215
  str RRRE_IRX 216-216
  str INCMEDCR 127-127
  str INCM_DCR 128-128
  long SS_RRQ 266-267
  str SS_RRQ_ 268-268
  long SSIX 269-276
  str SSIX_ 277-277
  long ANFEDTX 22-29
  str ANFEDTX_ 30-30
  long AMTFED 13-20
  str AMTFED_ 21-21
  long ANSLTX 58-65
  str ANSLTX_ 66-66
  long SLTAXX 248-255
  str SLTAXX 256-256
  long JSSDEDX 151-156
  str JSSDEDX_ 157-157
  str MEDICOV 160-160
  str MEDICOV_ 161-161
  long SLFEMPSS 241-246
  str SLFE_PSS 247-247
  long ANRRDEDX 49-56
  str ANRR_EDX 57-57
  long RRRDEDX 199-206
  str RRRDEDX_ 207-207
  long ANGOVRTX 31-38
  str ANGO_RTX 39-39
  long GOVRETX 101-108
  str GOVRETX_ 109-109
  long ANPRVPNX 40-47
  str ANPR_PNX 48-48
  long PRIVPENX 183-190
  str PRIV_ENX 191-191
  str EMPLCONT 86-86
  str EMPL_ONT 87-87
  long INDRETX 140-149
  str INDRETX_ 150-150
using ${SRC}\1994\06710-0015-Data.txt;
save mtab\mtab1994q4, replace;

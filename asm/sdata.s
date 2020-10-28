.include "macros.inc"

.section .sdata, "wa"  # 0x8063D2C0 - 0x8063E8E0

	.global lbl_8063D2C0
lbl_8063D2C0:
	.asciz "input"

	.balign 4, 0
	.global lbl_8063D2C8
lbl_8063D2C8:
	.asciz "main"

	.balign 4, 0
	.global lbl_8063D2D0
lbl_8063D2D0:
	.4byte lbl_80405D88

	.balign 8, 0
	.global lbl_8063D2D8
lbl_8063D2D8:
	.2byte 0x4364

	.balign 4, 0
	.global lbl_8063D2DC
lbl_8063D2DC:
	.2byte 0x43CC

	.balign 4, 0
	.global lbl_8063D2E0
lbl_8063D2E0:
	.asciz "main"

	.balign 4, 0
	.global lbl_8063D2E8
lbl_8063D2E8:
	.4byte lbl_80405EE4, lbl_80405EF8

	.balign 4, 0
	.global lbl_8063D2F0
lbl_8063D2F0:
	.4byte lbl_80405F04

	.balign 8, 0
	.global lbl_8063D2F8
lbl_8063D2F8:
	.4byte lbl_80405F44, lbl_80405F54

	.balign 4, 0
	.global lbl_8063D300
lbl_8063D300:
	.4byte lbl_80405F84, lbl_80405F90

	.balign 4, 0
	.global lbl_8063D308
lbl_8063D308:
	.4byte lbl_80405F9C

	.balign 8, 0
	.global lbl_8063D310
lbl_8063D310:
	.4byte lbl_80405FB0

	.balign 8, 0
	.global lbl_8063D318
lbl_8063D318:
	.incbin "baserom.dol", 0x471058, 0x4

	.global lbl_8063D31C
lbl_8063D31C:
	.incbin "baserom.dol", 0x47105C, 0x4

	.global lbl_8063D320
lbl_8063D320:
	.incbin "baserom.dol", 0x471060, 0x4

.global lbl_8063D324
lbl_8063D324:
	.incbin "baserom.dol", 0x471064, 0x4
.global lbl_8063D328
lbl_8063D328:
	.incbin "baserom.dol", 0x471068, 0x8
.global lbl_8063D330
lbl_8063D330:
	.incbin "baserom.dol", 0x471070, 0x5
.global lbl_8063D335
lbl_8063D335:
	.incbin "baserom.dol", 0x471075, 0xB
.global lbl_8063D340
lbl_8063D340:
	.incbin "baserom.dol", 0x471080, 0x8
.global lbl_8063D348
lbl_8063D348:
	.incbin "baserom.dol", 0x471088, 0x8
.global lbl_8063D350
lbl_8063D350:
	.incbin "baserom.dol", 0x471090, 0x8
.global lbl_8063D358
lbl_8063D358:
	.incbin "baserom.dol", 0x471098, 0x4
.global lbl_8063D35C
lbl_8063D35C:
	.incbin "baserom.dol", 0x47109C, 0x8
.global lbl_8063D364
lbl_8063D364:
	.incbin "baserom.dol", 0x4710A4, 0x8
.global lbl_8063D36C
lbl_8063D36C:
	.incbin "baserom.dol", 0x4710AC, 0x4
.global lbl_8063D370
lbl_8063D370:
	.incbin "baserom.dol", 0x4710B0, 0x18
.global lbl_8063D388
lbl_8063D388:
	.incbin "baserom.dol", 0x4710C8, 0x8
.global lbl_8063D390
lbl_8063D390:
	.incbin "baserom.dol", 0x4710D0, 0x8
.global lbl_8063D398
lbl_8063D398:
	.incbin "baserom.dol", 0x4710D8, 0x8
.global lbl_8063D3A0
lbl_8063D3A0:
	.incbin "baserom.dol", 0x4710E0, 0x8
.global lbl_8063D3A8
lbl_8063D3A8:
	.incbin "baserom.dol", 0x4710E8, 0xA0
.global lbl_8063D448
lbl_8063D448:
	.incbin "baserom.dol", 0x471188, 0x8
.global lbl_8063D450
lbl_8063D450:
	.incbin "baserom.dol", 0x471190, 0x38
.global lbl_8063D488
lbl_8063D488:
	.incbin "baserom.dol", 0x4711C8, 0x4
.global lbl_8063D48C
lbl_8063D48C:
	.incbin "baserom.dol", 0x4711CC, 0x1
.global lbl_8063D48D
lbl_8063D48D:
	.incbin "baserom.dol", 0x4711CD, 0x1
.global lbl_8063D48E
lbl_8063D48E:
	.incbin "baserom.dol", 0x4711CE, 0x12
.global lbl_8063D4A0
lbl_8063D4A0:
	.incbin "baserom.dol", 0x4711E0, 0x8
.global lbl_8063D4A8
lbl_8063D4A8:
	.incbin "baserom.dol", 0x4711E8, 0x1
.global lbl_8063D4A9
lbl_8063D4A9:
	.incbin "baserom.dol", 0x4711E9, 0x1
.global lbl_8063D4AA
lbl_8063D4AA:
	.incbin "baserom.dol", 0x4711EA, 0x1
.global lbl_8063D4AB
lbl_8063D4AB:
	.incbin "baserom.dol", 0x4711EB, 0x1
.global lbl_8063D4AC
lbl_8063D4AC:
	.incbin "baserom.dol", 0x4711EC, 0x1
.global lbl_8063D4AD
lbl_8063D4AD:
	.incbin "baserom.dol", 0x4711ED, 0x1
.global lbl_8063D4AE
lbl_8063D4AE:
	.incbin "baserom.dol", 0x4711EE, 0x2
.global lbl_8063D4B0
lbl_8063D4B0:
	.incbin "baserom.dol", 0x4711F0, 0x8
.global lbl_8063D4B8
lbl_8063D4B8:
	.incbin "baserom.dol", 0x4711F8, 0x4
.global lbl_8063D4BC
lbl_8063D4BC:
	.incbin "baserom.dol", 0x4711FC, 0x4
.global lbl_8063D4C0
lbl_8063D4C0:
	.incbin "baserom.dol", 0x471200, 0x4
.global lbl_8063D4C4
lbl_8063D4C4:
	.incbin "baserom.dol", 0x471204, 0x4
.global lbl_8063D4C8
lbl_8063D4C8:
	.incbin "baserom.dol", 0x471208, 0x4
.global lbl_8063D4CC
lbl_8063D4CC:
	.incbin "baserom.dol", 0x47120C, 0x4
.global lbl_8063D4D0
lbl_8063D4D0:
	.incbin "baserom.dol", 0x471210, 0x4
.global lbl_8063D4D4
lbl_8063D4D4:
	.incbin "baserom.dol", 0x471214, 0x4
.global lbl_8063D4D8
lbl_8063D4D8:
	.incbin "baserom.dol", 0x471218, 0x8
.global lbl_8063D4E0
lbl_8063D4E0:
	.incbin "baserom.dol", 0x471220, 0x4
.global lbl_8063D4E4
lbl_8063D4E4:
	.incbin "baserom.dol", 0x471224, 0x4
.global lbl_8063D4E8
lbl_8063D4E8:
	.incbin "baserom.dol", 0x471228, 0x8
.global lbl_8063D4F0
lbl_8063D4F0:
	.incbin "baserom.dol", 0x471230, 0x1
.global lbl_8063D4F1
lbl_8063D4F1:
	.incbin "baserom.dol", 0x471231, 0x7
.global lbl_8063D4F8
lbl_8063D4F8:
	.incbin "baserom.dol", 0x471238, 0x4
.global lbl_8063D4FC
lbl_8063D4FC:
	.incbin "baserom.dol", 0x47123C, 0x4
.global lbl_8063D500
lbl_8063D500:
	.incbin "baserom.dol", 0x471240, 0x4
.global lbl_8063D504
lbl_8063D504:
	.incbin "baserom.dol", 0x471244, 0x8
.global lbl_8063D50C
lbl_8063D50C:
	.incbin "baserom.dol", 0x47124C, 0xC
.global lbl_8063D518
lbl_8063D518:
	.incbin "baserom.dol", 0x471258, 0x6
.global lbl_8063D51E
lbl_8063D51E:
	.incbin "baserom.dol", 0x47125E, 0x2
.global lbl_8063D520
lbl_8063D520:
	.incbin "baserom.dol", 0x471260, 0x2
.global lbl_8063D522
lbl_8063D522:
	.incbin "baserom.dol", 0x471262, 0x2
.global lbl_8063D524
lbl_8063D524:
	.incbin "baserom.dol", 0x471264, 0x4
.global lbl_8063D528
lbl_8063D528:
	.incbin "baserom.dol", 0x471268, 0x8
.global lbl_8063D530
lbl_8063D530:
	.incbin "baserom.dol", 0x471270, 0x4
.global lbl_8063D534
lbl_8063D534:
	.incbin "baserom.dol", 0x471274, 0xC
.global lbl_8063D540
lbl_8063D540:
	.incbin "baserom.dol", 0x471280, 0x18
.global lbl_8063D558
lbl_8063D558:
	.incbin "baserom.dol", 0x471298, 0x8
.global lbl_8063D560
lbl_8063D560:
	.incbin "baserom.dol", 0x4712A0, 0x4
.global lbl_8063D564
lbl_8063D564:
	.incbin "baserom.dol", 0x4712A4, 0x4
.global lbl_8063D568
lbl_8063D568:
	.incbin "baserom.dol", 0x4712A8, 0x4
.global lbl_8063D56C
lbl_8063D56C:
	.incbin "baserom.dol", 0x4712AC, 0xC
.global lbl_8063D578
lbl_8063D578:
	.incbin "baserom.dol", 0x4712B8, 0x4
.global lbl_8063D57C
lbl_8063D57C:
	.incbin "baserom.dol", 0x4712BC, 0xC
.global lbl_8063D588
lbl_8063D588:
	.incbin "baserom.dol", 0x4712C8, 0x8
.global lbl_8063D590
lbl_8063D590:
	.incbin "baserom.dol", 0x4712D0, 0x10
.global lbl_8063D5A0
lbl_8063D5A0:
	.incbin "baserom.dol", 0x4712E0, 0x8
.global lbl_8063D5A8
lbl_8063D5A8:
	.incbin "baserom.dol", 0x4712E8, 0x4
.global lbl_8063D5AC
lbl_8063D5AC:
	.incbin "baserom.dol", 0x4712EC, 0xC
.global lbl_8063D5B8
lbl_8063D5B8:
	.incbin "baserom.dol", 0x4712F8, 0x4
.global lbl_8063D5BC
lbl_8063D5BC:
	.incbin "baserom.dol", 0x4712FC, 0x4
.global lbl_8063D5C0
lbl_8063D5C0:
	.incbin "baserom.dol", 0x471300, 0x4
.global lbl_8063D5C4
lbl_8063D5C4:
	.incbin "baserom.dol", 0x471304, 0x4
.global lbl_8063D5C8
lbl_8063D5C8:
	.incbin "baserom.dol", 0x471308, 0x4
.global lbl_8063D5CC
lbl_8063D5CC:
	.incbin "baserom.dol", 0x47130C, 0x4
.global lbl_8063D5D0
lbl_8063D5D0:
	.incbin "baserom.dol", 0x471310, 0x4
.global lbl_8063D5D4
lbl_8063D5D4:
	.incbin "baserom.dol", 0x471314, 0x4
.global lbl_8063D5D8
lbl_8063D5D8:
	.incbin "baserom.dol", 0x471318, 0x8
.global lbl_8063D5E0
lbl_8063D5E0:
	.incbin "baserom.dol", 0x471320, 0x8
.global lbl_8063D5E8
lbl_8063D5E8:
	.incbin "baserom.dol", 0x471328, 0x4
.global lbl_8063D5EC
lbl_8063D5EC:
	.incbin "baserom.dol", 0x47132C, 0x4
.global lbl_8063D5F0
lbl_8063D5F0:
	.incbin "baserom.dol", 0x471330, 0x8
.global lbl_8063D5F8
lbl_8063D5F8:
	.incbin "baserom.dol", 0x471338, 0x4
.global lbl_8063D5FC
lbl_8063D5FC:
	.incbin "baserom.dol", 0x47133C, 0x4
.global lbl_8063D600
lbl_8063D600:
	.incbin "baserom.dol", 0x471340, 0x8
.global lbl_8063D608
lbl_8063D608:
	.incbin "baserom.dol", 0x471348, 0x8
.global lbl_8063D610
lbl_8063D610:
	.incbin "baserom.dol", 0x471350, 0x8
.global lbl_8063D618
lbl_8063D618:
	.incbin "baserom.dol", 0x471358, 0x10
.global lbl_8063D628
lbl_8063D628:
	.incbin "baserom.dol", 0x471368, 0x8
.global lbl_8063D630
lbl_8063D630:
	.incbin "baserom.dol", 0x471370, 0x6
.global lbl_8063D636
lbl_8063D636:
	.incbin "baserom.dol", 0x471376, 0x8
.global lbl_8063D63E
lbl_8063D63E:
	.incbin "baserom.dol", 0x47137E, 0x6
.global lbl_8063D644
lbl_8063D644:
	.incbin "baserom.dol", 0x471384, 0x54
.global lbl_8063D698
lbl_8063D698:
	.incbin "baserom.dol", 0x4713D8, 0x8
.global lbl_8063D6A0
lbl_8063D6A0:
	.incbin "baserom.dol", 0x4713E0, 0x8
.global lbl_8063D6A8
lbl_8063D6A8:
	.incbin "baserom.dol", 0x4713E8, 0x8
.global lbl_8063D6B0
lbl_8063D6B0:
	.incbin "baserom.dol", 0x4713F0, 0x4
.global lbl_8063D6B4
lbl_8063D6B4:
	.incbin "baserom.dol", 0x4713F4, 0x4
.global lbl_8063D6B8
lbl_8063D6B8:
	.incbin "baserom.dol", 0x4713F8, 0x4
.global lbl_8063D6BC
lbl_8063D6BC:
	.incbin "baserom.dol", 0x4713FC, 0x4
.global lbl_8063D6C0
lbl_8063D6C0:
	.incbin "baserom.dol", 0x471400, 0x8
.global lbl_8063D6C8
lbl_8063D6C8:
	.incbin "baserom.dol", 0x471408, 0x8

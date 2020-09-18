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
	.incbin "baserom.dol", 0x471048, 0x10

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
	.incbin "baserom.dol", 0x471408, 0x10
.global lbl_8063D6D8
lbl_8063D6D8:
	.incbin "baserom.dol", 0x471418, 0x8
.global lbl_8063D6E0
lbl_8063D6E0:
	.incbin "baserom.dol", 0x471420, 0x4
.global lbl_8063D6E4
lbl_8063D6E4:
	.incbin "baserom.dol", 0x471424, 0x8
.global lbl_8063D6EC
lbl_8063D6EC:
	.incbin "baserom.dol", 0x47142C, 0x8
.global lbl_8063D6F4
lbl_8063D6F4:
	.incbin "baserom.dol", 0x471434, 0x4
.global lbl_8063D6F8
lbl_8063D6F8:
	.incbin "baserom.dol", 0x471438, 0x70
.global lbl_8063D768
lbl_8063D768:
	.incbin "baserom.dol", 0x4714A8, 0x38
.global lbl_8063D7A0
lbl_8063D7A0:
	.incbin "baserom.dol", 0x4714E0, 0x18
.global lbl_8063D7B8
lbl_8063D7B8:
	.incbin "baserom.dol", 0x4714F8, 0x8
.global lbl_8063D7C0
lbl_8063D7C0:
	.incbin "baserom.dol", 0x471500, 0x50
.global lbl_8063D810
lbl_8063D810:
	.incbin "baserom.dol", 0x471550, 0x50
.global lbl_8063D860
lbl_8063D860:
	.incbin "baserom.dol", 0x4715A0, 0x18
.global lbl_8063D878
lbl_8063D878:
	.incbin "baserom.dol", 0x4715B8, 0x8
.global lbl_8063D880
lbl_8063D880:
	.incbin "baserom.dol", 0x4715C0, 0x8
.global lbl_8063D888
lbl_8063D888:
	.incbin "baserom.dol", 0x4715C8, 0x8
.global lbl_8063D890
lbl_8063D890:
	.incbin "baserom.dol", 0x4715D0, 0x8
.global lbl_8063D898
lbl_8063D898:
	.incbin "baserom.dol", 0x4715D8, 0x8
.global lbl_8063D8A0
lbl_8063D8A0:
	.incbin "baserom.dol", 0x4715E0, 0x8
.global lbl_8063D8A8
lbl_8063D8A8:
	.incbin "baserom.dol", 0x4715E8, 0x8
.global lbl_8063D8B0
lbl_8063D8B0:
	.incbin "baserom.dol", 0x4715F0, 0x8
.global lbl_8063D8B8
lbl_8063D8B8:
	.incbin "baserom.dol", 0x4715F8, 0x8
.global lbl_8063D8C0
lbl_8063D8C0:
	.incbin "baserom.dol", 0x471600, 0x4
.global lbl_8063D8C4
lbl_8063D8C4:
	.incbin "baserom.dol", 0x471604, 0x14
.global lbl_8063D8D8
lbl_8063D8D8:
	.incbin "baserom.dol", 0x471618, 0x48
.global lbl_8063D920
lbl_8063D920:
	.incbin "baserom.dol", 0x471660, 0x8
.global lbl_8063D928
lbl_8063D928:
	.incbin "baserom.dol", 0x471668, 0x8
.global lbl_8063D930
lbl_8063D930:
	.incbin "baserom.dol", 0x471670, 0x8
.global lbl_8063D938
lbl_8063D938:
	.incbin "baserom.dol", 0x471678, 0x8
.global lbl_8063D940
lbl_8063D940:
	.incbin "baserom.dol", 0x471680, 0x8
.global lbl_8063D948
lbl_8063D948:
	.incbin "baserom.dol", 0x471688, 0x8
.global lbl_8063D950
lbl_8063D950:
	.incbin "baserom.dol", 0x471690, 0x20
.global lbl_8063D970
lbl_8063D970:
	.incbin "baserom.dol", 0x4716B0, 0x8
.global lbl_8063D978
lbl_8063D978:
	.incbin "baserom.dol", 0x4716B8, 0x10
.global lbl_8063D988
lbl_8063D988:
	.incbin "baserom.dol", 0x4716C8, 0x10
.global lbl_8063D998
lbl_8063D998:
	.incbin "baserom.dol", 0x4716D8, 0x8
.global lbl_8063D9A0
lbl_8063D9A0:
	.incbin "baserom.dol", 0x4716E0, 0x8
.global lbl_8063D9A8
lbl_8063D9A8:
	.incbin "baserom.dol", 0x4716E8, 0x2
.global lbl_8063D9AA
lbl_8063D9AA:
	.incbin "baserom.dol", 0x4716EA, 0x2
.global lbl_8063D9AC
lbl_8063D9AC:
	.incbin "baserom.dol", 0x4716EC, 0x2
.global lbl_8063D9AE
lbl_8063D9AE:
	.incbin "baserom.dol", 0x4716EE, 0x2
.global lbl_8063D9B0
lbl_8063D9B0:
	.incbin "baserom.dol", 0x4716F0, 0x2
.global lbl_8063D9B2
lbl_8063D9B2:
	.incbin "baserom.dol", 0x4716F2, 0x2
.global lbl_8063D9B4
lbl_8063D9B4:
	.incbin "baserom.dol", 0x4716F4, 0x2
.global lbl_8063D9B6
lbl_8063D9B6:
	.incbin "baserom.dol", 0x4716F6, 0x2
.global lbl_8063D9B8
lbl_8063D9B8:
	.incbin "baserom.dol", 0x4716F8, 0x8
.global lbl_8063D9C0
lbl_8063D9C0:
	.incbin "baserom.dol", 0x471700, 0x8
.global lbl_8063D9C8
lbl_8063D9C8:
	.incbin "baserom.dol", 0x471708, 0x10
.global lbl_8063D9D8
lbl_8063D9D8:
	.incbin "baserom.dol", 0x471718, 0x8
.global lbl_8063D9E0
lbl_8063D9E0:
	.incbin "baserom.dol", 0x471720, 0x8
.global lbl_8063D9E8
lbl_8063D9E8:
	.incbin "baserom.dol", 0x471728, 0x18
.global lbl_8063DA00
lbl_8063DA00:
	.incbin "baserom.dol", 0x471740, 0x18
.global lbl_8063DA18
lbl_8063DA18:
	.incbin "baserom.dol", 0x471758, 0x8
.global lbl_8063DA20
lbl_8063DA20:
	.incbin "baserom.dol", 0x471760, 0x8
.global lbl_8063DA28
lbl_8063DA28:
	.incbin "baserom.dol", 0x471768, 0x4
.global lbl_8063DA2C
lbl_8063DA2C:
	.incbin "baserom.dol", 0x47176C, 0x4
.global lbl_8063DA30
lbl_8063DA30:
	.incbin "baserom.dol", 0x471770, 0x4
.global lbl_8063DA34
lbl_8063DA34:
	.incbin "baserom.dol", 0x471774, 0xC
.global lbl_8063DA40
lbl_8063DA40:
	.incbin "baserom.dol", 0x471780, 0x4
.global lbl_8063DA44
lbl_8063DA44:
	.incbin "baserom.dol", 0x471784, 0x8
.global lbl_8063DA4C
lbl_8063DA4C:
	.incbin "baserom.dol", 0x47178C, 0x4
.global lbl_8063DA50
lbl_8063DA50:
	.incbin "baserom.dol", 0x471790, 0x10
.global lbl_8063DA60
lbl_8063DA60:
	.incbin "baserom.dol", 0x4717A0, 0x8
.global lbl_8063DA68
lbl_8063DA68:
	.incbin "baserom.dol", 0x4717A8, 0x8
.global lbl_8063DA70
lbl_8063DA70:
	.incbin "baserom.dol", 0x4717B0, 0x4
.global lbl_8063DA74
lbl_8063DA74:
	.incbin "baserom.dol", 0x4717B4, 0x4
.global lbl_8063DA78
lbl_8063DA78:
	.incbin "baserom.dol", 0x4717B8, 0x4
.global lbl_8063DA7C
lbl_8063DA7C:
	.incbin "baserom.dol", 0x4717BC, 0x4
.global lbl_8063DA80
lbl_8063DA80:
	.incbin "baserom.dol", 0x4717C0, 0x8
.global lbl_8063DA88
lbl_8063DA88:
	.incbin "baserom.dol", 0x4717C8, 0x8
.global lbl_8063DA90
lbl_8063DA90:
	.incbin "baserom.dol", 0x4717D0, 0x8
.global lbl_8063DA98
lbl_8063DA98:
	.incbin "baserom.dol", 0x4717D8, 0x8
.global lbl_8063DAA0
lbl_8063DAA0:
	.incbin "baserom.dol", 0x4717E0, 0x8
.global lbl_8063DAA8
lbl_8063DAA8:
	.incbin "baserom.dol", 0x4717E8, 0x8
.global lbl_8063DAB0
lbl_8063DAB0:
	.incbin "baserom.dol", 0x4717F0, 0x8
.global lbl_8063DAB8
lbl_8063DAB8:
	.incbin "baserom.dol", 0x4717F8, 0x8
.global lbl_8063DAC0
lbl_8063DAC0:
	.incbin "baserom.dol", 0x471800, 0x8
.global lbl_8063DAC8
lbl_8063DAC8:
	.incbin "baserom.dol", 0x471808, 0x4
.global lbl_8063DACC
lbl_8063DACC:
	.incbin "baserom.dol", 0x47180C, 0x4
.global lbl_8063DAD0
lbl_8063DAD0:
	.incbin "baserom.dol", 0x471810, 0x4
.global lbl_8063DAD4
lbl_8063DAD4:
	.incbin "baserom.dol", 0x471814, 0x4
.global lbl_8063DAD8
lbl_8063DAD8:
	.incbin "baserom.dol", 0x471818, 0x4
.global lbl_8063DADC
lbl_8063DADC:
	.incbin "baserom.dol", 0x47181C, 0x4
.global lbl_8063DAE0
lbl_8063DAE0:
	.incbin "baserom.dol", 0x471820, 0x8
.global lbl_8063DAE8
lbl_8063DAE8:
	.incbin "baserom.dol", 0x471828, 0x8
.global lbl_8063DAF0
lbl_8063DAF0:
	.incbin "baserom.dol", 0x471830, 0x1
.global lbl_8063DAF1
lbl_8063DAF1:
	.incbin "baserom.dol", 0x471831, 0x1
.global lbl_8063DAF2
lbl_8063DAF2:
	.incbin "baserom.dol", 0x471832, 0x1
.global lbl_8063DAF3
lbl_8063DAF3:
	.incbin "baserom.dol", 0x471833, 0x1
.global lbl_8063DAF4
lbl_8063DAF4:
	.incbin "baserom.dol", 0x471834, 0x1
.global lbl_8063DAF5
lbl_8063DAF5:
	.incbin "baserom.dol", 0x471835, 0x1
.global lbl_8063DAF6
lbl_8063DAF6:
	.incbin "baserom.dol", 0x471836, 0x1
.global lbl_8063DAF7
lbl_8063DAF7:
	.incbin "baserom.dol", 0x471837, 0x1
.global lbl_8063DAF8
lbl_8063DAF8:
	.incbin "baserom.dol", 0x471838, 0x1
.global lbl_8063DAF9
lbl_8063DAF9:
	.incbin "baserom.dol", 0x471839, 0x1
.global lbl_8063DAFA
lbl_8063DAFA:
	.incbin "baserom.dol", 0x47183A, 0x2
.global lbl_8063DAFC
lbl_8063DAFC:
	.incbin "baserom.dol", 0x47183C, 0x4
.global lbl_8063DB00
lbl_8063DB00:
	.incbin "baserom.dol", 0x471840, 0x8
.global lbl_8063DB08
lbl_8063DB08:
	.incbin "baserom.dol", 0x471848, 0x8
.global lbl_8063DB10
lbl_8063DB10:
	.incbin "baserom.dol", 0x471850, 0x8
.global lbl_8063DB18
lbl_8063DB18:
	.incbin "baserom.dol", 0x471858, 0x4
.global lbl_8063DB1C
lbl_8063DB1C:
	.incbin "baserom.dol", 0x47185C, 0x4
.global lbl_8063DB20
lbl_8063DB20:
	.incbin "baserom.dol", 0x471860, 0x8
.global lbl_8063DB28
lbl_8063DB28:
	.incbin "baserom.dol", 0x471868, 0x8
.global lbl_8063DB30
lbl_8063DB30:
	.incbin "baserom.dol", 0x471870, 0x8
.global lbl_8063DB38
lbl_8063DB38:
	.incbin "baserom.dol", 0x471878, 0x8
.global lbl_8063DB40
lbl_8063DB40:
	.incbin "baserom.dol", 0x471880, 0x8
.global lbl_8063DB48
lbl_8063DB48:
	.incbin "baserom.dol", 0x471888, 0x8
.global lbl_8063DB50
lbl_8063DB50:
	.incbin "baserom.dol", 0x471890, 0x8
.global lbl_8063DB58
lbl_8063DB58:
	.incbin "baserom.dol", 0x471898, 0x8
.global lbl_8063DB60
lbl_8063DB60:
	.incbin "baserom.dol", 0x4718A0, 0x8
.global lbl_8063DB68
lbl_8063DB68:
	.incbin "baserom.dol", 0x4718A8, 0x8
.global lbl_8063DB70
lbl_8063DB70:
	.incbin "baserom.dol", 0x4718B0, 0x8
.global lbl_8063DB78
lbl_8063DB78:
	.incbin "baserom.dol", 0x4718B8, 0x4
.global lbl_8063DB7C
lbl_8063DB7C:
	.incbin "baserom.dol", 0x4718BC, 0x4
.global lbl_8063DB80
lbl_8063DB80:
	.incbin "baserom.dol", 0x4718C0, 0x4
.global lbl_8063DB84
lbl_8063DB84:
	.incbin "baserom.dol", 0x4718C4, 0x8
.global lbl_8063DB8C
lbl_8063DB8C:
	.incbin "baserom.dol", 0x4718CC, 0x4
.global lbl_8063DB90
lbl_8063DB90:
	.incbin "baserom.dol", 0x4718D0, 0x8
.global lbl_8063DB98
lbl_8063DB98:
	.incbin "baserom.dol", 0x4718D8, 0x8
.global lbl_8063DBA0
lbl_8063DBA0:
	.incbin "baserom.dol", 0x4718E0, 0x8
.global lbl_8063DBA8
lbl_8063DBA8:
	.incbin "baserom.dol", 0x4718E8, 0x8
.global lbl_8063DBB0
lbl_8063DBB0:
	.incbin "baserom.dol", 0x4718F0, 0x2
.global lbl_8063DBB2
lbl_8063DBB2:
	.incbin "baserom.dol", 0x4718F2, 0x2
.global lbl_8063DBB4
lbl_8063DBB4:
	.incbin "baserom.dol", 0x4718F4, 0x4
.global lbl_8063DBB8
lbl_8063DBB8:
	.incbin "baserom.dol", 0x4718F8, 0x4
.global lbl_8063DBBC
lbl_8063DBBC:
	.incbin "baserom.dol", 0x4718FC, 0x4
.global lbl_8063DBC0
lbl_8063DBC0:
	.incbin "baserom.dol", 0x471900, 0x8
.global lbl_8063DBC8
lbl_8063DBC8:
	.incbin "baserom.dol", 0x471908, 0x8
.global lbl_8063DBD0
lbl_8063DBD0:
	.incbin "baserom.dol", 0x471910, 0x8
.global lbl_8063DBD8
lbl_8063DBD8:
	.incbin "baserom.dol", 0x471918, 0x4
.global lbl_8063DBDC
lbl_8063DBDC:
	.incbin "baserom.dol", 0x47191C, 0x4
.global lbl_8063DBE0
lbl_8063DBE0:
	.incbin "baserom.dol", 0x471920, 0x4
.global lbl_8063DBE4
lbl_8063DBE4:
	.incbin "baserom.dol", 0x471924, 0x4
.global lbl_8063DBE8
lbl_8063DBE8:
	.incbin "baserom.dol", 0x471928, 0x4
.global lbl_8063DBEC
lbl_8063DBEC:
	.incbin "baserom.dol", 0x47192C, 0x4
.global lbl_8063DBF0
lbl_8063DBF0:
	.incbin "baserom.dol", 0x471930, 0x4
.global lbl_8063DBF4
lbl_8063DBF4:
	.incbin "baserom.dol", 0x471934, 0x4
.global lbl_8063DBF8
lbl_8063DBF8:
	.incbin "baserom.dol", 0x471938, 0x4
.global lbl_8063DBFC
lbl_8063DBFC:
	.incbin "baserom.dol", 0x47193C, 0x4
.global lbl_8063DC00
lbl_8063DC00:
	.incbin "baserom.dol", 0x471940, 0x4
.global lbl_8063DC04
lbl_8063DC04:
	.incbin "baserom.dol", 0x471944, 0x4
.global lbl_8063DC08
lbl_8063DC08:
	.incbin "baserom.dol", 0x471948, 0x4
.global lbl_8063DC0C
lbl_8063DC0C:
	.incbin "baserom.dol", 0x47194C, 0x4
.global lbl_8063DC10
lbl_8063DC10:
	.incbin "baserom.dol", 0x471950, 0x4
.global lbl_8063DC14
lbl_8063DC14:
	.incbin "baserom.dol", 0x471954, 0x4
.global lbl_8063DC18
lbl_8063DC18:
	.incbin "baserom.dol", 0x471958, 0x4
.global lbl_8063DC1C
lbl_8063DC1C:
	.incbin "baserom.dol", 0x47195C, 0x4
.global lbl_8063DC20
lbl_8063DC20:
	.incbin "baserom.dol", 0x471960, 0x4
.global lbl_8063DC24
lbl_8063DC24:
	.incbin "baserom.dol", 0x471964, 0x4
.global lbl_8063DC28
lbl_8063DC28:
	.incbin "baserom.dol", 0x471968, 0x4
.global lbl_8063DC2C
lbl_8063DC2C:
	.incbin "baserom.dol", 0x47196C, 0x4
.global lbl_8063DC30
lbl_8063DC30:
	.incbin "baserom.dol", 0x471970, 0x4
.global lbl_8063DC34
lbl_8063DC34:
	.incbin "baserom.dol", 0x471974, 0x4
.global lbl_8063DC38
lbl_8063DC38:
	.incbin "baserom.dol", 0x471978, 0x4
.global lbl_8063DC3C
lbl_8063DC3C:
	.incbin "baserom.dol", 0x47197C, 0x4
.global lbl_8063DC40
lbl_8063DC40:
	.incbin "baserom.dol", 0x471980, 0x8
.global lbl_8063DC48
lbl_8063DC48:
	.incbin "baserom.dol", 0x471988, 0x4
.global lbl_8063DC4C
lbl_8063DC4C:
	.incbin "baserom.dol", 0x47198C, 0x4
.global lbl_8063DC50
lbl_8063DC50:
	.incbin "baserom.dol", 0x471990, 0x4
.global lbl_8063DC54
lbl_8063DC54:
	.incbin "baserom.dol", 0x471994, 0x4
.global lbl_8063DC58
lbl_8063DC58:
	.incbin "baserom.dol", 0x471998, 0x8
.global lbl_8063DC60
lbl_8063DC60:
	.incbin "baserom.dol", 0x4719A0, 0x4
.global lbl_8063DC64
lbl_8063DC64:
	.incbin "baserom.dol", 0x4719A4, 0x2
.global lbl_8063DC66
lbl_8063DC66:
	.incbin "baserom.dol", 0x4719A6, 0x2
.global lbl_8063DC68
lbl_8063DC68:
	.incbin "baserom.dol", 0x4719A8, 0x2
.global lbl_8063DC6A
lbl_8063DC6A:
	.incbin "baserom.dol", 0x4719AA, 0x2
.global lbl_8063DC6C
lbl_8063DC6C:
	.incbin "baserom.dol", 0x4719AC, 0x4
.global lbl_8063DC70
lbl_8063DC70:
	.incbin "baserom.dol", 0x4719B0, 0x4
.global lbl_8063DC74
lbl_8063DC74:
	.incbin "baserom.dol", 0x4719B4, 0xC
.global lbl_8063DC80
lbl_8063DC80:
	.incbin "baserom.dol", 0x4719C0, 0x8
.global lbl_8063DC88
lbl_8063DC88:
	.incbin "baserom.dol", 0x4719C8, 0x4
.global lbl_8063DC8C
lbl_8063DC8C:
	.incbin "baserom.dol", 0x4719CC, 0x4
.global lbl_8063DC90
lbl_8063DC90:
	.incbin "baserom.dol", 0x4719D0, 0x8
.global lbl_8063DC98
lbl_8063DC98:
	.incbin "baserom.dol", 0x4719D8, 0x4
.global lbl_8063DC9C
lbl_8063DC9C:
	.incbin "baserom.dol", 0x4719DC, 0x4
.global lbl_8063DCA0
lbl_8063DCA0:
	.incbin "baserom.dol", 0x4719E0, 0x8
.global lbl_8063DCA8
lbl_8063DCA8:
	.incbin "baserom.dol", 0x4719E8, 0x4
.global lbl_8063DCAC
lbl_8063DCAC:
	.incbin "baserom.dol", 0x4719EC, 0x4
.global lbl_8063DCB0
lbl_8063DCB0:
	.incbin "baserom.dol", 0x4719F0, 0x4
.global lbl_8063DCB4
lbl_8063DCB4:
	.incbin "baserom.dol", 0x4719F4, 0x4
.global lbl_8063DCB8
lbl_8063DCB8:
	.incbin "baserom.dol", 0x4719F8, 0x10
.global lbl_8063DCC8
lbl_8063DCC8:
	.incbin "baserom.dol", 0x471A08, 0x8
.global lbl_8063DCD0
lbl_8063DCD0:
	.incbin "baserom.dol", 0x471A10, 0x8
.global lbl_8063DCD8
lbl_8063DCD8:
	.incbin "baserom.dol", 0x471A18, 0x8
.global lbl_8063DCE0
lbl_8063DCE0:
	.incbin "baserom.dol", 0x471A20, 0x8
.global lbl_8063DCE8
lbl_8063DCE8:
	.incbin "baserom.dol", 0x471A28, 0x4
.global lbl_8063DCEC
lbl_8063DCEC:
	.incbin "baserom.dol", 0x471A2C, 0x4
.global lbl_8063DCF0
lbl_8063DCF0:
	.incbin "baserom.dol", 0x471A30, 0x8
.global lbl_8063DCF8
lbl_8063DCF8:
	.incbin "baserom.dol", 0x471A38, 0x4
.global lbl_8063DCFC
lbl_8063DCFC:
	.incbin "baserom.dol", 0x471A3C, 0x8
.global lbl_8063DD04
lbl_8063DD04:
	.incbin "baserom.dol", 0x471A44, 0xC
.global lbl_8063DD10
lbl_8063DD10:
	.incbin "baserom.dol", 0x471A50, 0x8
.global lbl_8063DD18
lbl_8063DD18:
	.incbin "baserom.dol", 0x471A58, 0x8
.global lbl_8063DD20
lbl_8063DD20:
	.incbin "baserom.dol", 0x471A60, 0x8
.global lbl_8063DD28
lbl_8063DD28:
	.incbin "baserom.dol", 0x471A68, 0x8
.global lbl_8063DD30
lbl_8063DD30:
	.incbin "baserom.dol", 0x471A70, 0x8
.global lbl_8063DD38
lbl_8063DD38:
	.incbin "baserom.dol", 0x471A78, 0x8
.global lbl_8063DD40
lbl_8063DD40:
	.incbin "baserom.dol", 0x471A80, 0x4
.global lbl_8063DD44
lbl_8063DD44:
	.incbin "baserom.dol", 0x471A84, 0x4
.global lbl_8063DD48
lbl_8063DD48:
	.incbin "baserom.dol", 0x471A88, 0x4
.global lbl_8063DD4C
lbl_8063DD4C:
	.incbin "baserom.dol", 0x471A8C, 0x4
.global lbl_8063DD50
lbl_8063DD50:
	.incbin "baserom.dol", 0x471A90, 0x4
.global lbl_8063DD54
lbl_8063DD54:
	.incbin "baserom.dol", 0x471A94, 0x4
.global lbl_8063DD58
lbl_8063DD58:
	.incbin "baserom.dol", 0x471A98, 0x8
.global lbl_8063DD60
lbl_8063DD60:
	.incbin "baserom.dol", 0x471AA0, 0x8
.global lbl_8063DD68
lbl_8063DD68:
	.incbin "baserom.dol", 0x471AA8, 0x4
.global lbl_8063DD6C
lbl_8063DD6C:
	.incbin "baserom.dol", 0x471AAC, 0x14
.global lbl_8063DD80
lbl_8063DD80:
	.incbin "baserom.dol", 0x471AC0, 0xF0
.global lbl_8063DE70
lbl_8063DE70:
	.incbin "baserom.dol", 0x471BB0, 0x8
.global lbl_8063DE78
lbl_8063DE78:
	.incbin "baserom.dol", 0x471BB8, 0x8
.global lbl_8063DE80
lbl_8063DE80:
	.incbin "baserom.dol", 0x471BC0, 0x8
.global lbl_8063DE88
lbl_8063DE88:
	.incbin "baserom.dol", 0x471BC8, 0x8
.global lbl_8063DE90
lbl_8063DE90:
	.incbin "baserom.dol", 0x471BD0, 0x8
.global lbl_8063DE98
lbl_8063DE98:
	.incbin "baserom.dol", 0x471BD8, 0x8
.global lbl_8063DEA0
lbl_8063DEA0:
	.incbin "baserom.dol", 0x471BE0, 0x8
.global lbl_8063DEA8
lbl_8063DEA8:
	.incbin "baserom.dol", 0x471BE8, 0x8
.global lbl_8063DEB0
lbl_8063DEB0:
	.incbin "baserom.dol", 0x471BF0, 0x4
.global lbl_8063DEB4
lbl_8063DEB4:
	.incbin "baserom.dol", 0x471BF4, 0x4
.global lbl_8063DEB8
lbl_8063DEB8:
	.incbin "baserom.dol", 0x471BF8, 0x8
.global lbl_8063DEC0
lbl_8063DEC0:
	.incbin "baserom.dol", 0x471C00, 0x8
.global lbl_8063DEC8
lbl_8063DEC8:
	.incbin "baserom.dol", 0x471C08, 0x4
.global lbl_8063DECC
lbl_8063DECC:
	.incbin "baserom.dol", 0x471C0C, 0x4
.global lbl_8063DED0
lbl_8063DED0:
	.incbin "baserom.dol", 0x471C10, 0x8
.global lbl_8063DED8
lbl_8063DED8:
	.incbin "baserom.dol", 0x471C18, 0x8
.global lbl_8063DEE0
lbl_8063DEE0:
	.incbin "baserom.dol", 0x471C20, 0x4
.global lbl_8063DEE4
lbl_8063DEE4:
	.incbin "baserom.dol", 0x471C24, 0x8
.global lbl_8063DEEC
lbl_8063DEEC:
	.incbin "baserom.dol", 0x471C2C, 0x4
.global lbl_8063DEF0
lbl_8063DEF0:
	.incbin "baserom.dol", 0x471C30, 0x8
.global lbl_8063DEF8
lbl_8063DEF8:
	.incbin "baserom.dol", 0x471C38, 0x4
.global lbl_8063DEFC
lbl_8063DEFC:
	.incbin "baserom.dol", 0x471C3C, 0x4
.global lbl_8063DF00
lbl_8063DF00:
	.incbin "baserom.dol", 0x471C40, 0x8
.global lbl_8063DF08
lbl_8063DF08:
	.incbin "baserom.dol", 0x471C48, 0x4
.global lbl_8063DF0C
lbl_8063DF0C:
	.incbin "baserom.dol", 0x471C4C, 0x4
.global lbl_8063DF10
lbl_8063DF10:
	.incbin "baserom.dol", 0x471C50, 0x8
.global lbl_8063DF18
lbl_8063DF18:
	.incbin "baserom.dol", 0x471C58, 0x8
.global lbl_8063DF20
lbl_8063DF20:
	.incbin "baserom.dol", 0x471C60, 0x8
.global lbl_8063DF28
lbl_8063DF28:
	.incbin "baserom.dol", 0x471C68, 0x8
.global lbl_8063DF30
lbl_8063DF30:
	.incbin "baserom.dol", 0x471C70, 0x8
.global lbl_8063DF38
lbl_8063DF38:
	.incbin "baserom.dol", 0x471C78, 0x8
.global lbl_8063DF40
lbl_8063DF40:
	.incbin "baserom.dol", 0x471C80, 0x4
.global lbl_8063DF44
lbl_8063DF44:
	.incbin "baserom.dol", 0x471C84, 0x4
.global lbl_8063DF48
lbl_8063DF48:
	.incbin "baserom.dol", 0x471C88, 0x8
.global lbl_8063DF50
lbl_8063DF50:
	.incbin "baserom.dol", 0x471C90, 0x4
.global lbl_8063DF54
lbl_8063DF54:
	.incbin "baserom.dol", 0x471C94, 0x4
.global lbl_8063DF58
lbl_8063DF58:
	.incbin "baserom.dol", 0x471C98, 0x8
.global lbl_8063DF60
lbl_8063DF60:
	.incbin "baserom.dol", 0x471CA0, 0x8
.global lbl_8063DF68
lbl_8063DF68:
	.incbin "baserom.dol", 0x471CA8, 0x8
.global lbl_8063DF70
lbl_8063DF70:
	.incbin "baserom.dol", 0x471CB0, 0x8
.global lbl_8063DF78
lbl_8063DF78:
	.incbin "baserom.dol", 0x471CB8, 0x8
.global lbl_8063DF80
lbl_8063DF80:
	.incbin "baserom.dol", 0x471CC0, 0x8
.global lbl_8063DF88
lbl_8063DF88:
	.incbin "baserom.dol", 0x471CC8, 0x8
.global lbl_8063DF90
lbl_8063DF90:
	.incbin "baserom.dol", 0x471CD0, 0x4
.global lbl_8063DF94
lbl_8063DF94:
	.incbin "baserom.dol", 0x471CD4, 0x4
.global lbl_8063DF98
lbl_8063DF98:
	.incbin "baserom.dol", 0x471CD8, 0x4
.global lbl_8063DF9C
lbl_8063DF9C:
	.incbin "baserom.dol", 0x471CDC, 0x4
.global lbl_8063DFA0
lbl_8063DFA0:
	.incbin "baserom.dol", 0x471CE0, 0x4
.global lbl_8063DFA4
lbl_8063DFA4:
	.incbin "baserom.dol", 0x471CE4, 0x4
.global lbl_8063DFA8
lbl_8063DFA8:
	.incbin "baserom.dol", 0x471CE8, 0x4
.global lbl_8063DFAC
lbl_8063DFAC:
	.incbin "baserom.dol", 0x471CEC, 0x4
.global lbl_8063DFB0
lbl_8063DFB0:
	.incbin "baserom.dol", 0x471CF0, 0x8
.global lbl_8063DFB8
lbl_8063DFB8:
	.incbin "baserom.dol", 0x471CF8, 0x4
.global lbl_8063DFBC
lbl_8063DFBC:
	.incbin "baserom.dol", 0x471CFC, 0x4
.global lbl_8063DFC0
lbl_8063DFC0:
	.incbin "baserom.dol", 0x471D00, 0x4
.global lbl_8063DFC4
lbl_8063DFC4:
	.incbin "baserom.dol", 0x471D04, 0x4
.global lbl_8063DFC8
lbl_8063DFC8:
	.incbin "baserom.dol", 0x471D08, 0x4
.global lbl_8063DFCC
lbl_8063DFCC:
	.incbin "baserom.dol", 0x471D0C, 0x4
.global lbl_8063DFD0
lbl_8063DFD0:
	.incbin "baserom.dol", 0x471D10, 0x4
.global lbl_8063DFD4
lbl_8063DFD4:
	.incbin "baserom.dol", 0x471D14, 0x4
.global lbl_8063DFD8
lbl_8063DFD8:
	.incbin "baserom.dol", 0x471D18, 0x4
.global lbl_8063DFDC
lbl_8063DFDC:
	.incbin "baserom.dol", 0x471D1C, 0x1
.global lbl_8063DFDD
lbl_8063DFDD:
	.incbin "baserom.dol", 0x471D1D, 0x3
.global lbl_8063DFE0
lbl_8063DFE0:
	.incbin "baserom.dol", 0x471D20, 0x8
.global lbl_8063DFE8
lbl_8063DFE8:
	.incbin "baserom.dol", 0x471D28, 0x8
.global lbl_8063DFF0
lbl_8063DFF0:
	.incbin "baserom.dol", 0x471D30, 0x8
.global lbl_8063DFF8
lbl_8063DFF8:
	.incbin "baserom.dol", 0x471D38, 0x8
.global lbl_8063E000
lbl_8063E000:
	.incbin "baserom.dol", 0x471D40, 0x18
.global lbl_8063E018
lbl_8063E018:
	.incbin "baserom.dol", 0x471D58, 0x8
.global lbl_8063E020
lbl_8063E020:
	.incbin "baserom.dol", 0x471D60, 0x8
.global lbl_8063E028
lbl_8063E028:
	.incbin "baserom.dol", 0x471D68, 0x4
.global lbl_8063E02C
lbl_8063E02C:
	.incbin "baserom.dol", 0x471D6C, 0x4
.global lbl_8063E030
lbl_8063E030:
	.incbin "baserom.dol", 0x471D70, 0x8
.global lbl_8063E038
lbl_8063E038:
	.incbin "baserom.dol", 0x471D78, 0x8
.global lbl_8063E040
lbl_8063E040:
	.incbin "baserom.dol", 0x471D80, 0x4
.global lbl_8063E044
lbl_8063E044:
	.incbin "baserom.dol", 0x471D84, 0x4
.global lbl_8063E048
lbl_8063E048:
	.incbin "baserom.dol", 0x471D88, 0x4
.global lbl_8063E04C
lbl_8063E04C:
	.incbin "baserom.dol", 0x471D8C, 0x8
.global lbl_8063E054
lbl_8063E054:
	.incbin "baserom.dol", 0x471D94, 0x8
.global lbl_8063E05C
lbl_8063E05C:
	.incbin "baserom.dol", 0x471D9C, 0x8
.global lbl_8063E064
lbl_8063E064:
	.incbin "baserom.dol", 0x471DA4, 0x4
.global lbl_8063E068
lbl_8063E068:
	.incbin "baserom.dol", 0x471DA8, 0x4
.global lbl_8063E06C
lbl_8063E06C:
	.incbin "baserom.dol", 0x471DAC, 0x4
.global lbl_8063E070
lbl_8063E070:
	.incbin "baserom.dol", 0x471DB0, 0x4
.global lbl_8063E074
lbl_8063E074:
	.incbin "baserom.dol", 0x471DB4, 0x4
.global lbl_8063E078
lbl_8063E078:
	.incbin "baserom.dol", 0x471DB8, 0x8
.global lbl_8063E080
lbl_8063E080:
	.incbin "baserom.dol", 0x471DC0, 0x8
.global lbl_8063E088
lbl_8063E088:
	.incbin "baserom.dol", 0x471DC8, 0x8
.global lbl_8063E090
lbl_8063E090:
	.incbin "baserom.dol", 0x471DD0, 0x4
.global lbl_8063E094
lbl_8063E094:
	.incbin "baserom.dol", 0x471DD4, 0x4
.global lbl_8063E098
lbl_8063E098:
	.incbin "baserom.dol", 0x471DD8, 0x8
.global lbl_8063E0A0
lbl_8063E0A0:
	.incbin "baserom.dol", 0x471DE0, 0x8
.global lbl_8063E0A8
lbl_8063E0A8:
	.incbin "baserom.dol", 0x471DE8, 0x8
.global lbl_8063E0B0
lbl_8063E0B0:
	.incbin "baserom.dol", 0x471DF0, 0x8
.global lbl_8063E0B8
lbl_8063E0B8:
	.incbin "baserom.dol", 0x471DF8, 0x8
.global lbl_8063E0C0
lbl_8063E0C0:
	.incbin "baserom.dol", 0x471E00, 0x4
.global lbl_8063E0C4
lbl_8063E0C4:
	.incbin "baserom.dol", 0x471E04, 0x8
.global lbl_8063E0CC
lbl_8063E0CC:
	.incbin "baserom.dol", 0x471E0C, 0x8
.global lbl_8063E0D4
lbl_8063E0D4:
	.incbin "baserom.dol", 0x471E14, 0x4
.global lbl_8063E0D8
lbl_8063E0D8:
	.incbin "baserom.dol", 0x471E18, 0x8
.global lbl_8063E0E0
lbl_8063E0E0:
	.incbin "baserom.dol", 0x471E20, 0x8
.global lbl_8063E0E8
lbl_8063E0E8:
	.incbin "baserom.dol", 0x471E28, 0x4
.global lbl_8063E0EC
lbl_8063E0EC:
	.incbin "baserom.dol", 0x471E2C, 0x4
.global lbl_8063E0F0
lbl_8063E0F0:
	.incbin "baserom.dol", 0x471E30, 0x4
.global lbl_8063E0F4
lbl_8063E0F4:
	.incbin "baserom.dol", 0x471E34, 0x8
.global lbl_8063E0FC
lbl_8063E0FC:
	.incbin "baserom.dol", 0x471E3C, 0x8
.global lbl_8063E104
lbl_8063E104:
	.incbin "baserom.dol", 0x471E44, 0x8
.global lbl_8063E10C
lbl_8063E10C:
	.incbin "baserom.dol", 0x471E4C, 0xC
.global lbl_8063E118
lbl_8063E118:
	.incbin "baserom.dol", 0x471E58, 0x8
.global lbl_8063E120
lbl_8063E120:
	.incbin "baserom.dol", 0x471E60, 0x8
.global lbl_8063E128
lbl_8063E128:
	.incbin "baserom.dol", 0x471E68, 0x8
.global lbl_8063E130
lbl_8063E130:
	.incbin "baserom.dol", 0x471E70, 0x4
.global lbl_8063E134
lbl_8063E134:
	.incbin "baserom.dol", 0x471E74, 0x8
.global lbl_8063E13C
lbl_8063E13C:
	.incbin "baserom.dol", 0x471E7C, 0x8
.global lbl_8063E144
lbl_8063E144:
	.incbin "baserom.dol", 0x471E84, 0x8
.global lbl_8063E14C
lbl_8063E14C:
	.incbin "baserom.dol", 0x471E8C, 0x4
.global lbl_8063E150
lbl_8063E150:
	.incbin "baserom.dol", 0x471E90, 0x8
.global lbl_8063E158
lbl_8063E158:
	.incbin "baserom.dol", 0x471E98, 0x8
.global lbl_8063E160
lbl_8063E160:
	.incbin "baserom.dol", 0x471EA0, 0x8
.global lbl_8063E168
lbl_8063E168:
	.incbin "baserom.dol", 0x471EA8, 0x4
.global lbl_8063E16C
lbl_8063E16C:
	.incbin "baserom.dol", 0x471EAC, 0x8
.global lbl_8063E174
lbl_8063E174:
	.incbin "baserom.dol", 0x471EB4, 0x8
.global lbl_8063E17C
lbl_8063E17C:
	.incbin "baserom.dol", 0x471EBC, 0x8
.global lbl_8063E184
lbl_8063E184:
	.incbin "baserom.dol", 0x471EC4, 0xC
.global lbl_8063E190
lbl_8063E190:
	.incbin "baserom.dol", 0x471ED0, 0x8
.global lbl_8063E198
lbl_8063E198:
	.incbin "baserom.dol", 0x471ED8, 0x8
.global lbl_8063E1A0
lbl_8063E1A0:
	.incbin "baserom.dol", 0x471EE0, 0x8
.global lbl_8063E1A8
lbl_8063E1A8:
	.incbin "baserom.dol", 0x471EE8, 0x8
.global lbl_8063E1B0
lbl_8063E1B0:
	.incbin "baserom.dol", 0x471EF0, 0x4
.global lbl_8063E1B4
lbl_8063E1B4:
	.incbin "baserom.dol", 0x471EF4, 0x8
.global lbl_8063E1BC
lbl_8063E1BC:
	.incbin "baserom.dol", 0x471EFC, 0x4
.global lbl_8063E1C0
lbl_8063E1C0:
	.incbin "baserom.dol", 0x471F00, 0x8
.global lbl_8063E1C8
lbl_8063E1C8:
	.incbin "baserom.dol", 0x471F08, 0x8
.global lbl_8063E1D0
lbl_8063E1D0:
	.incbin "baserom.dol", 0x471F10, 0x8
.global lbl_8063E1D8
lbl_8063E1D8:
	.incbin "baserom.dol", 0x471F18, 0x8
.global lbl_8063E1E0
lbl_8063E1E0:
	.incbin "baserom.dol", 0x471F20, 0x8
.global lbl_8063E1E8
lbl_8063E1E8:
	.incbin "baserom.dol", 0x471F28, 0x8
.global lbl_8063E1F0
lbl_8063E1F0:
	.incbin "baserom.dol", 0x471F30, 0x8
.global lbl_8063E1F8
lbl_8063E1F8:
	.incbin "baserom.dol", 0x471F38, 0x8
.global lbl_8063E200
lbl_8063E200:
	.incbin "baserom.dol", 0x471F40, 0x8
.global lbl_8063E208
lbl_8063E208:
	.incbin "baserom.dol", 0x471F48, 0x8
.global lbl_8063E210
lbl_8063E210:
	.incbin "baserom.dol", 0x471F50, 0x4
.global lbl_8063E214
lbl_8063E214:
	.incbin "baserom.dol", 0x471F54, 0x8
.global lbl_8063E21C
lbl_8063E21C:
	.incbin "baserom.dol", 0x471F5C, 0x8
.global lbl_8063E224
lbl_8063E224:
	.incbin "baserom.dol", 0x471F64, 0x8
.global lbl_8063E22C
lbl_8063E22C:
	.incbin "baserom.dol", 0x471F6C, 0xC
.global lbl_8063E238
lbl_8063E238:
	.incbin "baserom.dol", 0x471F78, 0x8
.global lbl_8063E240
lbl_8063E240:
	.incbin "baserom.dol", 0x471F80, 0x8
.global lbl_8063E248
lbl_8063E248:
	.incbin "baserom.dol", 0x471F88, 0x4
.global lbl_8063E24C
lbl_8063E24C:
	.incbin "baserom.dol", 0x471F8C, 0x8
.global lbl_8063E254
lbl_8063E254:
	.incbin "baserom.dol", 0x471F94, 0x8
.global lbl_8063E25C
lbl_8063E25C:
	.incbin "baserom.dol", 0x471F9C, 0x4
.global lbl_8063E260
lbl_8063E260:
	.incbin "baserom.dol", 0x471FA0, 0x8
.global lbl_8063E268
lbl_8063E268:
	.incbin "baserom.dol", 0x471FA8, 0x8
.global lbl_8063E270
lbl_8063E270:
	.incbin "baserom.dol", 0x471FB0, 0x8
.global lbl_8063E278
lbl_8063E278:
	.incbin "baserom.dol", 0x471FB8, 0x4
.global lbl_8063E27C
lbl_8063E27C:
	.incbin "baserom.dol", 0x471FBC, 0x4
.global lbl_8063E280
lbl_8063E280:
	.incbin "baserom.dol", 0x471FC0, 0x4
.global lbl_8063E284
lbl_8063E284:
	.incbin "baserom.dol", 0x471FC4, 0x4
.global lbl_8063E288
lbl_8063E288:
	.incbin "baserom.dol", 0x471FC8, 0x8
.global lbl_8063E290
lbl_8063E290:
	.incbin "baserom.dol", 0x471FD0, 0x8
.global lbl_8063E298
lbl_8063E298:
	.incbin "baserom.dol", 0x471FD8, 0x4
.global lbl_8063E29C
lbl_8063E29C:
	.incbin "baserom.dol", 0x471FDC, 0x4
.global lbl_8063E2A0
lbl_8063E2A0:
	.incbin "baserom.dol", 0x471FE0, 0x8
.global lbl_8063E2A8
lbl_8063E2A8:
	.incbin "baserom.dol", 0x471FE8, 0x4
.global lbl_8063E2AC
lbl_8063E2AC:
	.incbin "baserom.dol", 0x471FEC, 0xC
.global lbl_8063E2B8
lbl_8063E2B8:
	.incbin "baserom.dol", 0x471FF8, 0x4
.global lbl_8063E2BC
lbl_8063E2BC:
	.incbin "baserom.dol", 0x471FFC, 0x4
.global lbl_8063E2C0
lbl_8063E2C0:
	.incbin "baserom.dol", 0x472000, 0x8
.global lbl_8063E2C8
lbl_8063E2C8:
	.incbin "baserom.dol", 0x472008, 0x8
.global lbl_8063E2D0
lbl_8063E2D0:
	.incbin "baserom.dol", 0x472010, 0x8
.global lbl_8063E2D8
lbl_8063E2D8:
	.incbin "baserom.dol", 0x472018, 0x8
.global lbl_8063E2E0
lbl_8063E2E0:
	.incbin "baserom.dol", 0x472020, 0x4
.global lbl_8063E2E4
lbl_8063E2E4:
	.incbin "baserom.dol", 0x472024, 0x8
.global lbl_8063E2EC
lbl_8063E2EC:
	.incbin "baserom.dol", 0x47202C, 0xC
.global lbl_8063E2F8
lbl_8063E2F8:
	.incbin "baserom.dol", 0x472038, 0x8
.global lbl_8063E300
lbl_8063E300:
	.incbin "baserom.dol", 0x472040, 0x8
.global lbl_8063E308
lbl_8063E308:
	.incbin "baserom.dol", 0x472048, 0x8
.global lbl_8063E310
lbl_8063E310:
	.incbin "baserom.dol", 0x472050, 0x8
.global lbl_8063E318
lbl_8063E318:
	.incbin "baserom.dol", 0x472058, 0x8
.global lbl_8063E320
lbl_8063E320:
	.incbin "baserom.dol", 0x472060, 0x8
.global lbl_8063E328
lbl_8063E328:
	.incbin "baserom.dol", 0x472068, 0x8
.global lbl_8063E330
lbl_8063E330:
	.incbin "baserom.dol", 0x472070, 0x8
.global lbl_8063E338
lbl_8063E338:
	.incbin "baserom.dol", 0x472078, 0x8
.global lbl_8063E340
lbl_8063E340:
	.incbin "baserom.dol", 0x472080, 0x8
.global lbl_8063E348
lbl_8063E348:
	.incbin "baserom.dol", 0x472088, 0x8
.global lbl_8063E350
lbl_8063E350:
	.incbin "baserom.dol", 0x472090, 0x8
.global lbl_8063E358
lbl_8063E358:
	.incbin "baserom.dol", 0x472098, 0x8
.global lbl_8063E360
lbl_8063E360:
	.incbin "baserom.dol", 0x4720A0, 0x8
.global lbl_8063E368
lbl_8063E368:
	.incbin "baserom.dol", 0x4720A8, 0x8
.global lbl_8063E370
lbl_8063E370:
	.incbin "baserom.dol", 0x4720B0, 0x8
.global lbl_8063E378
lbl_8063E378:
	.incbin "baserom.dol", 0x4720B8, 0x8
.global lbl_8063E380
lbl_8063E380:
	.incbin "baserom.dol", 0x4720C0, 0x8
.global lbl_8063E388
lbl_8063E388:
	.incbin "baserom.dol", 0x4720C8, 0x8
.global lbl_8063E390
lbl_8063E390:
	.incbin "baserom.dol", 0x4720D0, 0x8
.global lbl_8063E398
lbl_8063E398:
	.incbin "baserom.dol", 0x4720D8, 0x8
.global lbl_8063E3A0
lbl_8063E3A0:
	.incbin "baserom.dol", 0x4720E0, 0x8
.global lbl_8063E3A8
lbl_8063E3A8:
	.incbin "baserom.dol", 0x4720E8, 0x8
.global lbl_8063E3B0
lbl_8063E3B0:
	.incbin "baserom.dol", 0x4720F0, 0x8
.global lbl_8063E3B8
lbl_8063E3B8:
	.incbin "baserom.dol", 0x4720F8, 0x8
.global lbl_8063E3C0
lbl_8063E3C0:
	.incbin "baserom.dol", 0x472100, 0x8
.global lbl_8063E3C8
lbl_8063E3C8:
	.incbin "baserom.dol", 0x472108, 0x8
.global lbl_8063E3D0
lbl_8063E3D0:
	.incbin "baserom.dol", 0x472110, 0x8
.global lbl_8063E3D8
lbl_8063E3D8:
	.incbin "baserom.dol", 0x472118, 0x8
.global lbl_8063E3E0
lbl_8063E3E0:
	.incbin "baserom.dol", 0x472120, 0x8
.global lbl_8063E3E8
lbl_8063E3E8:
	.incbin "baserom.dol", 0x472128, 0x4
.global lbl_8063E3EC
lbl_8063E3EC:
	.incbin "baserom.dol", 0x47212C, 0x4
.global lbl_8063E3F0
lbl_8063E3F0:
	.incbin "baserom.dol", 0x472130, 0x4
.global lbl_8063E3F4
lbl_8063E3F4:
	.incbin "baserom.dol", 0x472134, 0x4
.global lbl_8063E3F8
lbl_8063E3F8:
	.incbin "baserom.dol", 0x472138, 0x8
.global lbl_8063E400
lbl_8063E400:
	.incbin "baserom.dol", 0x472140, 0x8
.global lbl_8063E408
lbl_8063E408:
	.incbin "baserom.dol", 0x472148, 0x8
.global lbl_8063E410
lbl_8063E410:
	.incbin "baserom.dol", 0x472150, 0x8
.global lbl_8063E418
lbl_8063E418:
	.incbin "baserom.dol", 0x472158, 0x8
.global lbl_8063E420
lbl_8063E420:
	.incbin "baserom.dol", 0x472160, 0x8
.global lbl_8063E428
lbl_8063E428:
	.incbin "baserom.dol", 0x472168, 0x8
.global lbl_8063E430
lbl_8063E430:
	.incbin "baserom.dol", 0x472170, 0x8
.global lbl_8063E438
lbl_8063E438:
	.incbin "baserom.dol", 0x472178, 0x8
.global lbl_8063E440
lbl_8063E440:
	.incbin "baserom.dol", 0x472180, 0x8
.global lbl_8063E448
lbl_8063E448:
	.incbin "baserom.dol", 0x472188, 0x4
.global lbl_8063E44C
lbl_8063E44C:
	.incbin "baserom.dol", 0x47218C, 0x4
.global lbl_8063E450
lbl_8063E450:
	.incbin "baserom.dol", 0x472190, 0x8
.global lbl_8063E458
lbl_8063E458:
	.incbin "baserom.dol", 0x472198, 0x8
.global lbl_8063E460
lbl_8063E460:
	.incbin "baserom.dol", 0x4721A0, 0x8
.global lbl_8063E468
lbl_8063E468:
	.incbin "baserom.dol", 0x4721A8, 0x8
.global lbl_8063E470
lbl_8063E470:
	.incbin "baserom.dol", 0x4721B0, 0x8
.global lbl_8063E478
lbl_8063E478:
	.incbin "baserom.dol", 0x4721B8, 0x4
.global lbl_8063E47C
lbl_8063E47C:
	.incbin "baserom.dol", 0x4721BC, 0xC
.global lbl_8063E488
lbl_8063E488:
	.incbin "baserom.dol", 0x4721C8, 0x8
.global lbl_8063E490
lbl_8063E490:
	.incbin "baserom.dol", 0x4721D0, 0x8
.global lbl_8063E498
lbl_8063E498:
	.incbin "baserom.dol", 0x4721D8, 0x8
.global lbl_8063E4A0
lbl_8063E4A0:
	.incbin "baserom.dol", 0x4721E0, 0x8
.global lbl_8063E4A8
lbl_8063E4A8:
	.incbin "baserom.dol", 0x4721E8, 0x8
.global lbl_8063E4B0
lbl_8063E4B0:
	.incbin "baserom.dol", 0x4721F0, 0x8
.global lbl_8063E4B8
lbl_8063E4B8:
	.incbin "baserom.dol", 0x4721F8, 0x8
.global lbl_8063E4C0
lbl_8063E4C0:
	.incbin "baserom.dol", 0x472200, 0x8
.global lbl_8063E4C8
lbl_8063E4C8:
	.incbin "baserom.dol", 0x472208, 0x8
.global lbl_8063E4D0
lbl_8063E4D0:
	.incbin "baserom.dol", 0x472210, 0x4
.global lbl_8063E4D4
lbl_8063E4D4:
	.incbin "baserom.dol", 0x472214, 0x4
.global lbl_8063E4D8
lbl_8063E4D8:
	.incbin "baserom.dol", 0x472218, 0x8
.global lbl_8063E4E0
lbl_8063E4E0:
	.incbin "baserom.dol", 0x472220, 0x8
.global lbl_8063E4E8
lbl_8063E4E8:
	.incbin "baserom.dol", 0x472228, 0x4
.global lbl_8063E4EC
lbl_8063E4EC:
	.incbin "baserom.dol", 0x47222C, 0x4
.global lbl_8063E4F0
lbl_8063E4F0:
	.incbin "baserom.dol", 0x472230, 0x8
.global lbl_8063E4F8
lbl_8063E4F8:
	.incbin "baserom.dol", 0x472238, 0x8
.global lbl_8063E500
lbl_8063E500:
	.incbin "baserom.dol", 0x472240, 0x4
.global lbl_8063E504
lbl_8063E504:
	.incbin "baserom.dol", 0x472244, 0x8
.global lbl_8063E50C
lbl_8063E50C:
	.incbin "baserom.dol", 0x47224C, 0x4
.global lbl_8063E510
lbl_8063E510:
	.incbin "baserom.dol", 0x472250, 0x8
.global lbl_8063E518
lbl_8063E518:
	.incbin "baserom.dol", 0x472258, 0x4
.global lbl_8063E51C
lbl_8063E51C:
	.incbin "baserom.dol", 0x47225C, 0x8
.global lbl_8063E524
lbl_8063E524:
	.incbin "baserom.dol", 0x472264, 0x8
.global lbl_8063E52C
lbl_8063E52C:
	.incbin "baserom.dol", 0x47226C, 0x4
.global lbl_8063E530
lbl_8063E530:
	.incbin "baserom.dol", 0x472270, 0x8
.global lbl_8063E538
lbl_8063E538:
	.incbin "baserom.dol", 0x472278, 0x8
.global lbl_8063E540
lbl_8063E540:
	.incbin "baserom.dol", 0x472280, 0x4
.global lbl_8063E544
lbl_8063E544:
	.incbin "baserom.dol", 0x472284, 0xC
.global lbl_8063E550
lbl_8063E550:
	.incbin "baserom.dol", 0x472290, 0x4
.global lbl_8063E554
lbl_8063E554:
	.incbin "baserom.dol", 0x472294, 0xC
.global lbl_8063E560
lbl_8063E560:
	.incbin "baserom.dol", 0x4722A0, 0x8
.global lbl_8063E568
lbl_8063E568:
	.incbin "baserom.dol", 0x4722A8, 0x8
.global lbl_8063E570
lbl_8063E570:
	.incbin "baserom.dol", 0x4722B0, 0x8
.global lbl_8063E578
lbl_8063E578:
	.incbin "baserom.dol", 0x4722B8, 0x8
.global lbl_8063E580
lbl_8063E580:
	.incbin "baserom.dol", 0x4722C0, 0x4
.global lbl_8063E584
lbl_8063E584:
	.incbin "baserom.dol", 0x4722C4, 0xC
.global lbl_8063E590
lbl_8063E590:
	.incbin "baserom.dol", 0x4722D0, 0x8
.global lbl_8063E598
lbl_8063E598:
	.incbin "baserom.dol", 0x4722D8, 0x4
.global lbl_8063E59C
lbl_8063E59C:
	.incbin "baserom.dol", 0x4722DC, 0x4
.global lbl_8063E5A0
lbl_8063E5A0:
	.incbin "baserom.dol", 0x4722E0, 0x8
.global lbl_8063E5A8
lbl_8063E5A8:
	.incbin "baserom.dol", 0x4722E8, 0x4
.global lbl_8063E5AC
lbl_8063E5AC:
	.incbin "baserom.dol", 0x4722EC, 0x4
.global lbl_8063E5B0
lbl_8063E5B0:
	.incbin "baserom.dol", 0x4722F0, 0x8
.global lbl_8063E5B8
lbl_8063E5B8:
	.incbin "baserom.dol", 0x4722F8, 0x4
.global lbl_8063E5BC
lbl_8063E5BC:
	.incbin "baserom.dol", 0x4722FC, 0x8
.global lbl_8063E5C4
lbl_8063E5C4:
	.incbin "baserom.dol", 0x472304, 0x8
.global lbl_8063E5CC
lbl_8063E5CC:
	.incbin "baserom.dol", 0x47230C, 0x4
.global lbl_8063E5D0
lbl_8063E5D0:
	.incbin "baserom.dol", 0x472310, 0x70
.global lbl_8063E640
lbl_8063E640:
	.incbin "baserom.dol", 0x472380, 0x4
.global lbl_8063E644
lbl_8063E644:
	.incbin "baserom.dol", 0x472384, 0x4
.global lbl_8063E648
lbl_8063E648:
	.incbin "baserom.dol", 0x472388, 0x8
.global lbl_8063E650
lbl_8063E650:
	.incbin "baserom.dol", 0x472390, 0x4
.global lbl_8063E654
lbl_8063E654:
	.incbin "baserom.dol", 0x472394, 0x4
.global lbl_8063E658
lbl_8063E658:
	.incbin "baserom.dol", 0x472398, 0x4
.global lbl_8063E65C
lbl_8063E65C:
	.incbin "baserom.dol", 0x47239C, 0x4
.global lbl_8063E660
lbl_8063E660:
	.incbin "baserom.dol", 0x4723A0, 0x4
.global lbl_8063E664
lbl_8063E664:
	.incbin "baserom.dol", 0x4723A4, 0x8
.global lbl_8063E66C
lbl_8063E66C:
	.incbin "baserom.dol", 0x4723AC, 0x4
.global lbl_8063E670
lbl_8063E670:
	.incbin "baserom.dol", 0x4723B0, 0x8
.global lbl_8063E678
lbl_8063E678:
	.incbin "baserom.dol", 0x4723B8, 0x8
.global lbl_8063E680
lbl_8063E680:
	.incbin "baserom.dol", 0x4723C0, 0x8
.global lbl_8063E688
lbl_8063E688:
	.incbin "baserom.dol", 0x4723C8, 0x4
.global lbl_8063E68C
lbl_8063E68C:
	.incbin "baserom.dol", 0x4723CC, 0x8
.global lbl_8063E694
lbl_8063E694:
	.incbin "baserom.dol", 0x4723D4, 0x4
.global lbl_8063E698
lbl_8063E698:
	.incbin "baserom.dol", 0x4723D8, 0x8
.global lbl_8063E6A0
lbl_8063E6A0:
	.incbin "baserom.dol", 0x4723E0, 0x4
.global lbl_8063E6A4
lbl_8063E6A4:
	.incbin "baserom.dol", 0x4723E4, 0x4
.global lbl_8063E6A8
lbl_8063E6A8:
	.incbin "baserom.dol", 0x4723E8, 0x8
.global lbl_8063E6B0
lbl_8063E6B0:
	.incbin "baserom.dol", 0x4723F0, 0x8
.global lbl_8063E6B8
lbl_8063E6B8:
	.incbin "baserom.dol", 0x4723F8, 0x8
.global lbl_8063E6C0
lbl_8063E6C0:
	.incbin "baserom.dol", 0x472400, 0x8
.global lbl_8063E6C8
lbl_8063E6C8:
	.incbin "baserom.dol", 0x472408, 0x8
.global lbl_8063E6D0
lbl_8063E6D0:
	.incbin "baserom.dol", 0x472410, 0x4
.global lbl_8063E6D4
lbl_8063E6D4:
	.incbin "baserom.dol", 0x472414, 0x8
.global lbl_8063E6DC
lbl_8063E6DC:
	.incbin "baserom.dol", 0x47241C, 0x4
.global lbl_8063E6E0
lbl_8063E6E0:
	.incbin "baserom.dol", 0x472420, 0x4
.global lbl_8063E6E4
lbl_8063E6E4:
	.incbin "baserom.dol", 0x472424, 0x4
.global lbl_8063E6E8
lbl_8063E6E8:
	.incbin "baserom.dol", 0x472428, 0x8
.global lbl_8063E6F0
lbl_8063E6F0:
	.incbin "baserom.dol", 0x472430, 0x4
.global lbl_8063E6F4
lbl_8063E6F4:
	.incbin "baserom.dol", 0x472434, 0x4
.global lbl_8063E6F8
lbl_8063E6F8:
	.incbin "baserom.dol", 0x472438, 0x4
.global lbl_8063E6FC
lbl_8063E6FC:
	.incbin "baserom.dol", 0x47243C, 0x4
.global lbl_8063E700
lbl_8063E700:
	.incbin "baserom.dol", 0x472440, 0x8
.global lbl_8063E708
lbl_8063E708:
	.incbin "baserom.dol", 0x472448, 0x4
.global lbl_8063E70C
lbl_8063E70C:
	.incbin "baserom.dol", 0x47244C, 0x4
.global lbl_8063E710
lbl_8063E710:
	.incbin "baserom.dol", 0x472450, 0x4
.global lbl_8063E714
lbl_8063E714:
	.incbin "baserom.dol", 0x472454, 0x8
.global lbl_8063E71C
lbl_8063E71C:
	.incbin "baserom.dol", 0x47245C, 0x8
.global lbl_8063E724
lbl_8063E724:
	.incbin "baserom.dol", 0x472464, 0x8
.global lbl_8063E72C
lbl_8063E72C:
	.incbin "baserom.dol", 0x47246C, 0xC
.global lbl_8063E738
lbl_8063E738:
	.incbin "baserom.dol", 0x472478, 0x8
.global lbl_8063E740
lbl_8063E740:
	.incbin "baserom.dol", 0x472480, 0x8
.global lbl_8063E748
lbl_8063E748:
	.incbin "baserom.dol", 0x472488, 0x8
.global lbl_8063E750
lbl_8063E750:
	.incbin "baserom.dol", 0x472490, 0x8
.global lbl_8063E758
lbl_8063E758:
	.incbin "baserom.dol", 0x472498, 0x8
.global lbl_8063E760
lbl_8063E760:
	.incbin "baserom.dol", 0x4724A0, 0x4
.global lbl_8063E764
lbl_8063E764:
	.incbin "baserom.dol", 0x4724A4, 0x4
.global lbl_8063E768
lbl_8063E768:
	.incbin "baserom.dol", 0x4724A8, 0x8
.global lbl_8063E770
lbl_8063E770:
	.incbin "baserom.dol", 0x4724B0, 0x4
.global lbl_8063E774
lbl_8063E774:
	.incbin "baserom.dol", 0x4724B4, 0x4
.global lbl_8063E778
lbl_8063E778:
	.incbin "baserom.dol", 0x4724B8, 0x4
.global lbl_8063E77C
lbl_8063E77C:
	.incbin "baserom.dol", 0x4724BC, 0xC
.global lbl_8063E788
lbl_8063E788:
	.incbin "baserom.dol", 0x4724C8, 0x8
.global lbl_8063E790
lbl_8063E790:
	.incbin "baserom.dol", 0x4724D0, 0x4
.global lbl_8063E794
lbl_8063E794:
	.incbin "baserom.dol", 0x4724D4, 0x1C
.global lbl_8063E7B0
lbl_8063E7B0:
	.incbin "baserom.dol", 0x4724F0, 0x4
.global lbl_8063E7B4
lbl_8063E7B4:
	.incbin "baserom.dol", 0x4724F4, 0xC
.global lbl_8063E7C0
lbl_8063E7C0:
	.incbin "baserom.dol", 0x472500, 0x8
.global lbl_8063E7C8
lbl_8063E7C8:
	.incbin "baserom.dol", 0x472508, 0x4
.global lbl_8063E7CC
lbl_8063E7CC:
	.incbin "baserom.dol", 0x47250C, 0x4
.global lbl_8063E7D0
lbl_8063E7D0:
	.incbin "baserom.dol", 0x472510, 0x8
.global lbl_8063E7D8
lbl_8063E7D8:
	.incbin "baserom.dol", 0x472518, 0x8
.global lbl_8063E7E0
lbl_8063E7E0:
	.incbin "baserom.dol", 0x472520, 0x4
.global lbl_8063E7E4
lbl_8063E7E4:
	.incbin "baserom.dol", 0x472524, 0x4
.global lbl_8063E7E8
lbl_8063E7E8:
	.incbin "baserom.dol", 0x472528, 0x8
.global lbl_8063E7F0
lbl_8063E7F0:
	.incbin "baserom.dol", 0x472530, 0x8
.global lbl_8063E7F8
lbl_8063E7F8:
	.incbin "baserom.dol", 0x472538, 0x8
.global lbl_8063E800
lbl_8063E800:
	.incbin "baserom.dol", 0x472540, 0x4
.global lbl_8063E804
lbl_8063E804:
	.incbin "baserom.dol", 0x472544, 0x4
.global lbl_8063E808
lbl_8063E808:
	.incbin "baserom.dol", 0x472548, 0x4
.global lbl_8063E80C
lbl_8063E80C:
	.incbin "baserom.dol", 0x47254C, 0xC
.global lbl_8063E818
lbl_8063E818:
	.incbin "baserom.dol", 0x472558, 0xC
.global lbl_8063E824
lbl_8063E824:
	.incbin "baserom.dol", 0x472564, 0xC
.global lbl_8063E830
lbl_8063E830:
	.incbin "baserom.dol", 0x472570, 0x88
.global lbl_8063E8B8
lbl_8063E8B8:
	.incbin "baserom.dol", 0x4725F8, 0x8
.global lbl_8063E8C0
lbl_8063E8C0:
	.incbin "baserom.dol", 0x472600, 0x8
.global lbl_8063E8C8
lbl_8063E8C8:
	.incbin "baserom.dol", 0x472608, 0x8
.global lbl_8063E8D0
lbl_8063E8D0:
	.incbin "baserom.dol", 0x472610, 0x10

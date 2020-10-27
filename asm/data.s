	.include "macros.inc"

	.section .data, "wa"  # 0x80405D60 - 0x80474F00

	.global lbl_80405D60
lbl_80405D60:
	.asciz "sound/pbr_sound.brsar"

	.balign 4, 0
	.global lbl_80405D78
lbl_80405D78:
	.asciz "main render"


	.balign 8, 0
	.global lbl_80405D88
lbl_80405D88:
	.asciz "2007-09-14 10:28:31 EU"

	.balign 4, 0
	.global lbl_80405DA0
lbl_80405DA0:
	.asciz "/homeBtn.arc"

	.balign 4, 0
	.global lbl_80405DB0
lbl_80405DB0:
	.asciz "/homeBtn_ENG.arc"

	.balign 4, 0
	.global lbl_80405DC4
lbl_80405DC4:
	.asciz "/homeBtn_GER.arc"

	.balign 4, 0
	.global lbl_80405DD8
lbl_80405DD8:
	.asciz "/homeBtn_FRA.arc"

	.balign 4, 0
	.global lbl_80405DEC
lbl_80405DEC:
	.asciz "/homeBtn_SPA.arc"

	.balign 4, 0
	.global lbl_80405E00
lbl_80405E00:
	.asciz "/homeBtn_ITA.arc"

	.balign 4, 0
	.global lbl_80405E14
lbl_80405E14:
	.asciz "/homeBtn_NED.arc"

	.balign 4, 0
	.global lbl_80405E28
lbl_80405E28:
	.asciz "/SpeakerSe.arc"

	.balign 4, 0
	.global lbl_80405E38
lbl_80405E38:
	.asciz "/home.csv"

	.balign 4, 0
	.global lbl_80405E44
lbl_80405E44:
	.asciz "/config.txt"

	.balign 4, 0
	.global lbl_80405E50
lbl_80405E50:
	.asciz "/homeBtnIcon.tpl"

	.balign 4, 0
	.global lbl_80405E64
lbl_80405E64: # jump table
	.4byte lbl_80009E6C, lbl_80009E7C, lbl_80009E8C, lbl_80009E9C
	.4byte lbl_80009EAC, lbl_80009EBC, lbl_80009ECC

	.global lbl_80405E80
lbl_80405E80:
	.asciz "/HomeButtonSe.brsar"

	.balign 8, 0
	.global lbl_80405E98
lbl_80405E98:
	.asciz "preprocess"

	.balign 4, 0
	.global lbl_80405EA4
lbl_80405EA4:
	.asciz "postprocess"

	.balign 4, 0
	.global lbl_80405EB0
lbl_80405EB0:
	.4byte lbl_8063D2E8

	.balign 8, 0
	.global lbl_80405EB8
lbl_80405EB8:
	.4byte func_8000A7D0, func_8000A810, func_8000A814, func_8000A91C
	.4byte func_8000A95C, func_8000A9B4, func_8000AA94, func_8000AA90
	.4byte func_8000AA88, func_8000AA80, func_8000AA98

	.balign 4, 0
	.global lbl_80405EE4
lbl_80405EE4:
	.asciz "FloorGlobalFuntion"

	.balign 4, 0
	.global lbl_80405EF8
lbl_80405EF8:
	.4byte lbl_8063D2F0

	.balign 8, 0
	.global lbl_80405F00
lbl_80405F00:
	.4byte 0x00000000

	.balign 4, 0
	.global lbl_80405F04
lbl_80405F04:
	.asciz "gsapi::FloorModuleInterface"

	.balign 4, 0
	.global lbl_80405F20
lbl_80405F20:
	.asciz "FloorGlobalFuntion"

	.balign 8, 0
	.global lbl_80405F38
lbl_80405F38:
	.4byte lbl_8063D2F8

	.balign 8, 0
	.global lbl_80405F40
lbl_80405F40:
	.4byte func_8000AC44

	.global lbl_80405F44
lbl_80405F44:
	.asciz "PBRFloorData"

	.balign 4, 0
	.global lbl_80405F54
lbl_80405F54:
	.4byte lbl_8063D308, 0x00000000

	.balign 8, 0
	.global lbl_80405F60
lbl_80405F60:
    .4byte lbl_8063D300

	.balign 8, 0
	.global lbl_80405F68
lbl_80405F68:
	.4byte func_8000AACC, func_8000AAD8, func_8000AAE4, DrawableCharacter_GetAnimController
	.4byte func_8000AAF0, func_8000AAFC, func_8000AB18

	.global lbl_80405F84
lbl_80405F84:
	.asciz "PBRFloor"

	.balign 4, 0
	.global lbl_80405F90
lbl_80405F90:
	.4byte lbl_8063D310, 0x00000000, 0x00000000

	.balign 4, 0
	.global lbl_80405F9C
lbl_80405F9C:
	.asciz "gsapi::GSfloorData"

	.balign 4, 0
	.global lbl_80405FB0
lbl_80405FB0:
	.asciz "gsapi::GSfloor"

	.balign 4, 0
	.global lbl_80405FC0
lbl_80405FC0:
	.asciz "## CHECK ## FLAGID_ColosseumXX_WL is not found.\n"

	.balign 4, 0
	.global lbl_80405FF4
lbl_80405FF4:
	.4byte lbl_8000C3B4, lbl_8000C3D0, lbl_8000C3EC, lbl_8000C408
	.4byte lbl_8000C424, lbl_8000C440, lbl_8000C470, lbl_8000C48C
	.4byte lbl_8000C4BC, lbl_8000C4D8

	.balign 4, 0
	.global lbl_8040601C
lbl_8040601C:
	.asciz "## CHECK ## FLAGID_ColosseumXX_second is not found.\n"

	.balign 4, 0
	.global lbl_80406054
lbl_80406054:
	.4byte lbl_8000C5C0, lbl_8000C5DC, lbl_8000C5F8, lbl_8000C614
	.4byte lbl_8000C630, lbl_8000C64C, lbl_8000C67C, lbl_8000C698
	.4byte lbl_8000C6C8, lbl_8000C6E4

	.balign 4, 0
	.global lbl_8040607C
lbl_8040607C:
	.asciz "[Jikkyo] SKIP BATTLE MSG [%d] : %cb_%03d(%d) (timing is bad, already turn-end phase.)\n"

	.global lbl_804060D3
lbl_804060D3:
	.asciz "[Jikkyo] PLAY BATTLE MSG [%d] : %cb_%03d(%d)\n"

	.global lbl_80406101
lbl_80406101:
	.asciz "[Jikkyo] SKIP BATTLE MSG (home button fade timing)\n"

	.global lbl_80406135
lbl_80406135:
	.asciz "[Jikkyo] SKIP BATTLE MSG [%d] : %cb_%03d(%d) (timing is bad)\n"

	.global lbl_80406173
lbl_80406173:
	.asciz "[Jikkyo] BATTLE MSG [%d] is not loaded. : %cb_%03d(%d)\n"

	.global lbl_804061AB
lbl_804061AB:
	.asciz "StartJikkyoPre"

	.global lbl_804061BA
lbl_804061BA:
	.asciz "[Jikkyo] Func : %s\n"

	.global lbl_804061CE
lbl_804061CE:
	.asciz "## WARNING ## Input Heap : %d, Battle Heap : %d\n"

	.global lbl_804061FF
lbl_804061FF:
	.asciz "[Jikkyo] INPUT HEAP  : [Used]%d(KByte) [Free]%d(KByte) [All]%d(KByte)\n"

	.global lbl_80406246
lbl_80406246:
	.asciz "[Jikkyo] BATTLE HEAP : [Used]%d(KByte) [Free]%d(KByte) [All]%d(KByte)\n"

	.global lbl_8040628D
lbl_8040628D:
	.asciz "StartJikkyo"

	.global lbl_80406299
lbl_80406299:
	.asciz "## ERROR ## StartJikkyo()\n"

	.global lbl_804062B4
lbl_804062B4:
	.asciz "EndJikkyo"

	.global lbl_804062BE
lbl_804062BE:
	.asciz "[Jikkyo] SKIP POKEMON RETURN MSG %cb_%03d(%d). battle msg with poke sound is left.\n"

	.global lbl_80406312
lbl_80406312:
	.asciz "[Jikkyo] SKIP INPUT MSG (home button fade timing)\n"

	.global lbl_80406345
lbl_80406345:
	.asciz "[Jikkyo] INPUT MSG : %u (SoundMsg Id) Return Pokemon\n"

	.global lbl_8040637B
lbl_8040637B:
	.asciz "## ERROR ## Play SoundMsg Id : %u\n"

	.global lbl_8040639E
lbl_8040639E:
	.asciz "[Jikkyo] FADE OUT INPUT MSG (home button fade timing)\n"

	.global lbl_804063D5
lbl_804063D5:
	.asciz "[Jikkyo] SKIP REQUEST_RETURN_POKEMON %cb_%03d(%d)\n"

	.global lbl_80406408
lbl_80406408:
	.asciz "[Jikkyo] INPUT MSG : JIKKYO_REQUEST_APPEAR_POKEMON\n"

	.global lbl_8040643C
lbl_8040643C:
	.asciz "## ERROR ## Can't play JIKKYO_REQUEST_APPEAR_POKEMON\n"

	.global lbl_80406472
lbl_80406472:
	.asciz "## ERROR ## pokemon sound message is empty. : %d (Pokemon ID)\n"

	.global lbl_804064B1
lbl_804064B1:
	.asciz "[Jikkyo] SKIP POKEMON APPEAR MSG. input msg is left.\n"

	.global lbl_804064E7
lbl_804064E7:
	.asciz "[Jikkyo] Request Count : %d -> %d\n"

	.balign 4, 0
	.global lbl_8040650C
lbl_8040650C:
	.incbin "baserom.dol", 0x40260C, 0x28

	.global lbl_80406534
lbl_80406534:
	.incbin "baserom.dol", 0x402634, 0xF9

	.global lbl_8040662D
lbl_8040662D:
	.incbin "baserom.dol", 0x40272D, 0x2D

.global lbl_8040665A
lbl_8040665A:
	.incbin "baserom.dol", 0x40275A, 0x4B
.global lbl_804066A5
lbl_804066A5:
	.incbin "baserom.dol", 0x4027A5, 0xD7
.global lbl_8040677C
lbl_8040677C:
	.incbin "baserom.dol", 0x40287C, 0x20
.global lbl_8040679C
lbl_8040679C:
	.incbin "baserom.dol", 0x40289C, 0x38
.global lbl_804067D4
lbl_804067D4:
	.incbin "baserom.dol", 0x4028D4, 0x23
.global lbl_804067F7
lbl_804067F7:
	.incbin "baserom.dol", 0x4028F7, 0x29
.global lbl_80406820
lbl_80406820:
	.incbin "baserom.dol", 0x402920, 0x24
.global lbl_80406844
lbl_80406844:
	.incbin "baserom.dol", 0x402944, 0x2F
.global lbl_80406873
lbl_80406873:
	.incbin "baserom.dol", 0x402973, 0x1E
.global lbl_80406891
lbl_80406891:
	.incbin "baserom.dol", 0x402991, 0x4F
.global lbl_804068E0
lbl_804068E0:
	.incbin "baserom.dol", 0x4029E0, 0x494
.global lbl_80406D74
lbl_80406D74:
	.incbin "baserom.dol", 0x402E74, 0x38
.global lbl_80406DAC
lbl_80406DAC:
	.incbin "baserom.dol", 0x402EAC, 0x38
.global lbl_80406DE4
lbl_80406DE4:
	.incbin "baserom.dol", 0x402EE4, 0xE0
.global lbl_80406EC4
lbl_80406EC4:
	.incbin "baserom.dol", 0x402FC4, 0x304
.global lbl_804071C8
lbl_804071C8:
	.incbin "baserom.dol", 0x4032C8, 0xDA
.global lbl_804072A2
lbl_804072A2:
	.incbin "baserom.dol", 0x4033A2, 0x19
.global lbl_804072BB
lbl_804072BB:
	.incbin "baserom.dol", 0x4033BB, 0x49
.global lbl_80407304
lbl_80407304:
	.incbin "baserom.dol", 0x403404, 0x130
.global lbl_80407434
lbl_80407434:
	.incbin "baserom.dol", 0x403534, 0x60
.global lbl_80407494
lbl_80407494:
	.incbin "baserom.dol", 0x403594, 0x2E
.global lbl_804074C2
lbl_804074C2:
	.incbin "baserom.dol", 0x4035C2, 0x622
.global lbl_80407AE4
lbl_80407AE4:
	.incbin "baserom.dol", 0x403BE4, 0x556
.global lbl_8040803A
lbl_8040803A:
	.incbin "baserom.dol", 0x40413A, 0x3E8
.global lbl_80408422
lbl_80408422:
	.incbin "baserom.dol", 0x404522, 0x28
.global lbl_8040844A
lbl_8040844A:
	.incbin "baserom.dol", 0x40454A, 0x44
.global lbl_8040848E
lbl_8040848E:
	.incbin "baserom.dol", 0x40458E, 0x2F
.global lbl_804084BD
lbl_804084BD:
	.incbin "baserom.dol", 0x4045BD, 0x29
.global lbl_804084E6
lbl_804084E6:
	.incbin "baserom.dol", 0x4045E6, 0x22
.global lbl_80408508
lbl_80408508:
	.incbin "baserom.dol", 0x404608, 0x194
.global lbl_8040869C
lbl_8040869C:
	.incbin "baserom.dol", 0x40479C, 0x60
.global lbl_804086FC
lbl_804086FC:
	.incbin "baserom.dol", 0x4047FC, 0x54
.global lbl_80408750
lbl_80408750:
	.incbin "baserom.dol", 0x404850, 0x36
.global lbl_80408786
lbl_80408786:
	.incbin "baserom.dol", 0x404886, 0x30
.global lbl_804087B6
lbl_804087B6:
	.incbin "baserom.dol", 0x4048B6, 0x35
.global lbl_804087EB
lbl_804087EB:
	.incbin "baserom.dol", 0x4048EB, 0xDA
.global lbl_804088C5
lbl_804088C5:
	.incbin "baserom.dol", 0x4049C5, 0x2B
.global lbl_804088F0
lbl_804088F0:
	.incbin "baserom.dol", 0x4049F0, 0x24
.global lbl_80408914
lbl_80408914:
	.incbin "baserom.dol", 0x404A14, 0xA8
.global lbl_804089BC
lbl_804089BC:
	.incbin "baserom.dol", 0x404ABC, 0x2E
.global lbl_804089EA
lbl_804089EA:
	.incbin "baserom.dol", 0x404AEA, 0x1A
.global lbl_80408A04
lbl_80408A04:
	.incbin "baserom.dol", 0x404B04, 0x4D
.global lbl_80408A51
lbl_80408A51:
	.incbin "baserom.dol", 0x404B51, 0xDD
.global lbl_80408B2E
lbl_80408B2E:
	.incbin "baserom.dol", 0x404C2E, 0x119
.global lbl_80408C47
lbl_80408C47:
	.incbin "baserom.dol", 0x404D47, 0x7B
.global lbl_80408CC2
lbl_80408CC2:
	.incbin "baserom.dol", 0x404DC2, 0x42
.global lbl_80408D04
lbl_80408D04:
	.incbin "baserom.dol", 0x404E04, 0x38
.global lbl_80408D3C
lbl_80408D3C:
	.incbin "baserom.dol", 0x404E3C, 0x41
.global lbl_80408D7D
lbl_80408D7D:
	.incbin "baserom.dol", 0x404E7D, 0x41
.global lbl_80408DBE
lbl_80408DBE:
	.incbin "baserom.dol", 0x404EBE, 0x3B2
.global lbl_80409170
lbl_80409170:
	.incbin "baserom.dol", 0x405270, 0xE8
.global lbl_80409258
lbl_80409258:
	.incbin "baserom.dol", 0x405358, 0x20
.global lbl_80409278
lbl_80409278:
	.incbin "baserom.dol", 0x405378, 0x5E
.global lbl_804092D6
lbl_804092D6:
	.incbin "baserom.dol", 0x4053D6, 0x66
.global lbl_8040933C
lbl_8040933C:
	.incbin "baserom.dol", 0x40543C, 0x91
.global lbl_804093CD
lbl_804093CD:
	.incbin "baserom.dol", 0x4054CD, 0x1E
.global lbl_804093EB
lbl_804093EB:
	.incbin "baserom.dol", 0x4054EB, 0x45
.global lbl_80409430
lbl_80409430:
	.incbin "baserom.dol", 0x405530, 0x80
.global lbl_804094B0
lbl_804094B0:
	.incbin "baserom.dol", 0x4055B0, 0xC
.global lbl_804094BC
lbl_804094BC:
	.incbin "baserom.dol", 0x4055BC, 0x24
.global lbl_804094E0
lbl_804094E0:
	.incbin "baserom.dol", 0x4055E0, 0x20
.global lbl_80409500
lbl_80409500:
	.incbin "baserom.dol", 0x405600, 0x1A4
.global lbl_804096A4
lbl_804096A4:
	.incbin "baserom.dol", 0x4057A4, 0x14
.global lbl_804096B8
lbl_804096B8:
	.incbin "baserom.dol", 0x4057B8, 0x18
.global lbl_804096D0
lbl_804096D0:
	.incbin "baserom.dol", 0x4057D0, 0x50
.global lbl_80409720
lbl_80409720:
	.incbin "baserom.dol", 0x405820, 0x14
.global lbl_80409734
lbl_80409734:
	.incbin "baserom.dol", 0x405834, 0x30
.global lbl_80409764
lbl_80409764:
	.incbin "baserom.dol", 0x405864, 0x29C
.global lbl_80409A00
lbl_80409A00:
	.incbin "baserom.dol", 0x405B00, 0x90
.global lbl_80409A90
lbl_80409A90:
	.incbin "baserom.dol", 0x405B90, 0x180
.global lbl_80409C10
lbl_80409C10:
	.incbin "baserom.dol", 0x405D10, 0x140
.global lbl_80409D50
lbl_80409D50:
	.incbin "baserom.dol", 0x405E50, 0x1F0
.global lbl_80409F40
lbl_80409F40:
	.incbin "baserom.dol", 0x406040, 0x88
.global lbl_80409FC8
lbl_80409FC8:
	.incbin "baserom.dol", 0x4060C8, 0x40
.global lbl_8040A008
lbl_8040A008:
	.incbin "baserom.dol", 0x406108, 0x40
.global lbl_8040A048
lbl_8040A048:
	.incbin "baserom.dol", 0x406148, 0x10
.global lbl_8040A058
lbl_8040A058:
	.incbin "baserom.dol", 0x406158, 0x98
.global lbl_8040A0F0
lbl_8040A0F0:
	.incbin "baserom.dol", 0x4061F0, 0xA8
.global lbl_8040A198
lbl_8040A198:
	.incbin "baserom.dol", 0x406298, 0x50
.global lbl_8040A1E8
lbl_8040A1E8:
	.incbin "baserom.dol", 0x4062E8, 0x90
.global lbl_8040A278
lbl_8040A278:
	.incbin "baserom.dol", 0x406378, 0x20
.global lbl_8040A298
lbl_8040A298:
	.incbin "baserom.dol", 0x406398, 0x68
.global lbl_8040A300
lbl_8040A300:
	.incbin "baserom.dol", 0x406400, 0x28
.global lbl_8040A328
lbl_8040A328:
	.incbin "baserom.dol", 0x406428, 0x28
.global lbl_8040A350
lbl_8040A350:
	.incbin "baserom.dol", 0x406450, 0x58
.global lbl_8040A3A8
lbl_8040A3A8:
	.incbin "baserom.dol", 0x4064A8, 0x48
.global lbl_8040A3F0
lbl_8040A3F0:
	.incbin "baserom.dol", 0x4064F0, 0x14
.global lbl_8040A404
lbl_8040A404:
	.incbin "baserom.dol", 0x406504, 0xC
.global lbl_8040A410
lbl_8040A410:
	.incbin "baserom.dol", 0x406510, 0x20
.global lbl_8040A430
lbl_8040A430:
	.incbin "baserom.dol", 0x406530, 0x38
.global lbl_8040A468
lbl_8040A468:
	.incbin "baserom.dol", 0x406568, 0x28
.global lbl_8040A490
lbl_8040A490:
	.incbin "baserom.dol", 0x406590, 0x58
.global lbl_8040A4E8
lbl_8040A4E8:
	.incbin "baserom.dol", 0x4065E8, 0x20
.global lbl_8040A508
lbl_8040A508:
	.incbin "baserom.dol", 0x406608, 0x14
.global lbl_8040A51C
lbl_8040A51C:
	.incbin "baserom.dol", 0x40661C, 0x30
.global lbl_8040A54C
lbl_8040A54C:
	.incbin "baserom.dol", 0x40664C, 0xC
.global lbl_8040A558
lbl_8040A558:
	.incbin "baserom.dol", 0x406658, 0x50
.global lbl_8040A5A8
lbl_8040A5A8:
	.incbin "baserom.dol", 0x4066A8, 0x50
.global lbl_8040A5F8
lbl_8040A5F8:
	.incbin "baserom.dol", 0x4066F8, 0x50
.global lbl_8040A648
lbl_8040A648:
	.incbin "baserom.dol", 0x406748, 0x50
.global lbl_8040A698
lbl_8040A698:
	.incbin "baserom.dol", 0x406798, 0x50
.global lbl_8040A6E8
lbl_8040A6E8:
	.incbin "baserom.dol", 0x4067E8, 0x40
.global lbl_8040A728
lbl_8040A728:
	.incbin "baserom.dol", 0x406828, 0x3C
.global lbl_8040A764
lbl_8040A764:
	.incbin "baserom.dol", 0x406864, 0x48
.global lbl_8040A7AC
lbl_8040A7AC:
	.incbin "baserom.dol", 0x4068AC, 0x44
.global lbl_8040A7F0
lbl_8040A7F0:
	.incbin "baserom.dol", 0x4068F0, 0x44
.global lbl_8040A834
lbl_8040A834:
	.incbin "baserom.dol", 0x406934, 0x48
.global lbl_8040A87C
lbl_8040A87C:
	.incbin "baserom.dol", 0x40697C, 0x48
.global lbl_8040A8C4
lbl_8040A8C4:
	.incbin "baserom.dol", 0x4069C4, 0x48
.global lbl_8040A90C
lbl_8040A90C:
	.incbin "baserom.dol", 0x406A0C, 0x48
.global lbl_8040A954
lbl_8040A954:
	.incbin "baserom.dol", 0x406A54, 0x44
.global lbl_8040A998
lbl_8040A998:
	.incbin "baserom.dol", 0x406A98, 0x4C
.global lbl_8040A9E4
lbl_8040A9E4:
	.incbin "baserom.dol", 0x406AE4, 0x48
.global lbl_8040AA2C
lbl_8040AA2C:
	.incbin "baserom.dol", 0x406B2C, 0x44
.global lbl_8040AA70
lbl_8040AA70:
	.incbin "baserom.dol", 0x406B70, 0x38
.global lbl_8040AAA8
lbl_8040AAA8:
	.incbin "baserom.dol", 0x406BA8, 0x50
.global lbl_8040AAF8
lbl_8040AAF8:
	.incbin "baserom.dol", 0x406BF8, 0x10
.global lbl_8040AB08
lbl_8040AB08:
	.incbin "baserom.dol", 0x406C08, 0x24
.global lbl_8040AB2C
lbl_8040AB2C:
	.incbin "baserom.dol", 0x406C2C, 0x24
.global lbl_8040AB50
lbl_8040AB50:
	.incbin "baserom.dol", 0x406C50, 0x24
.global lbl_8040AB74
lbl_8040AB74:
	.incbin "baserom.dol", 0x406C74, 0x24
.global lbl_8040AB98
lbl_8040AB98:
	.incbin "baserom.dol", 0x406C98, 0x30
.global lbl_8040ABC8
lbl_8040ABC8:
	.incbin "baserom.dol", 0x406CC8, 0x38
.global lbl_8040AC00
lbl_8040AC00:
	.incbin "baserom.dol", 0x406D00, 0x28
.global lbl_8040AC28
lbl_8040AC28:
	.incbin "baserom.dol", 0x406D28, 0x30
.global lbl_8040AC58
lbl_8040AC58:
	.incbin "baserom.dol", 0x406D58, 0x30
.global lbl_8040AC88
lbl_8040AC88:
	.incbin "baserom.dol", 0x406D88, 0x28
.global lbl_8040ACB0
lbl_8040ACB0:
	.incbin "baserom.dol", 0x406DB0, 0x20
.global lbl_8040ACD0
lbl_8040ACD0:
	.incbin "baserom.dol", 0x406DD0, 0xA0
.global lbl_8040AD70
lbl_8040AD70:
	.incbin "baserom.dol", 0x406E70, 0x5C
.global lbl_8040ADCC
lbl_8040ADCC:
	.incbin "baserom.dol", 0x406ECC, 0xBC
.global lbl_8040AE88
lbl_8040AE88:
	.incbin "baserom.dol", 0x406F88, 0x1C
.global lbl_8040AEA4
lbl_8040AEA4:
	.incbin "baserom.dol", 0x406FA4, 0x5C
.global lbl_8040AF00
lbl_8040AF00:
	.incbin "baserom.dol", 0x407000, 0x58
.global lbl_8040AF58
lbl_8040AF58:
	.incbin "baserom.dol", 0x407058, 0x130
.global lbl_8040B088
lbl_8040B088:
	.incbin "baserom.dol", 0x407188, 0x18
.global lbl_8040B0A0
lbl_8040B0A0:
	.incbin "baserom.dol", 0x4071A0, 0x40
.global lbl_8040B0E0
lbl_8040B0E0:
	.incbin "baserom.dol", 0x4071E0, 0x640
.global lbl_8040B720
lbl_8040B720:
	.incbin "baserom.dol", 0x407820, 0x48
.global lbl_8040B768
lbl_8040B768:
	.incbin "baserom.dol", 0x407868, 0x40
.global lbl_8040B7A8
lbl_8040B7A8:
	.incbin "baserom.dol", 0x4078A8, 0xA
.global lbl_8040B7B2
lbl_8040B7B2:
	.incbin "baserom.dol", 0x4078B2, 0x16
.global lbl_8040B7C8
lbl_8040B7C8:
	.incbin "baserom.dol", 0x4078C8, 0x34
.global lbl_8040B7FC
lbl_8040B7FC:
	.incbin "baserom.dol", 0x4078FC, 0x30
.global lbl_8040B82C
lbl_8040B82C:
	.incbin "baserom.dol", 0x40792C, 0x30
.global lbl_8040B85C
lbl_8040B85C:
	.incbin "baserom.dol", 0x40795C, 0x34
.global lbl_8040B890
lbl_8040B890:
	.incbin "baserom.dol", 0x407990, 0x34
.global lbl_8040B8C4
lbl_8040B8C4:
	.incbin "baserom.dol", 0x4079C4, 0x40
.global lbl_8040B904
lbl_8040B904:
	.incbin "baserom.dol", 0x407A04, 0x34
.global lbl_8040B938
lbl_8040B938:
	.incbin "baserom.dol", 0x407A38, 0x28
.global lbl_8040B960
lbl_8040B960:
	.incbin "baserom.dol", 0x407A60, 0x1C
.global lbl_8040B97C
lbl_8040B97C:
	.incbin "baserom.dol", 0x407A7C, 0x58
.global lbl_8040B9D4
lbl_8040B9D4:
	.incbin "baserom.dol", 0x407AD4, 0x7C
.global lbl_8040BA50
lbl_8040BA50:
	.incbin "baserom.dol", 0x407B50, 0x1C
.global lbl_8040BA6C
lbl_8040BA6C:
	.incbin "baserom.dol", 0x407B6C, 0x1C
.global lbl_8040BA88
lbl_8040BA88:
	.incbin "baserom.dol", 0x407B88, 0x4C
.global lbl_8040BAD4
lbl_8040BAD4:
	.incbin "baserom.dol", 0x407BD4, 0x40
.global lbl_8040BB14
lbl_8040BB14:
	.incbin "baserom.dol", 0x407C14, 0x40
.global lbl_8040BB54
lbl_8040BB54:
	.incbin "baserom.dol", 0x407C54, 0x20
.global lbl_8040BB74
lbl_8040BB74:
	.incbin "baserom.dol", 0x407C74, 0x20
.global lbl_8040BB94
lbl_8040BB94:
	.incbin "baserom.dol", 0x407C94, 0x20
.global lbl_8040BBB4
lbl_8040BBB4:
	.incbin "baserom.dol", 0x407CB4, 0x68
.global lbl_8040BC1C
lbl_8040BC1C:
	.incbin "baserom.dol", 0x407D1C, 0x68
.global lbl_8040BC84
lbl_8040BC84:
	.incbin "baserom.dol", 0x407D84, 0x38
.global lbl_8040BCBC
lbl_8040BCBC:
	.incbin "baserom.dol", 0x407DBC, 0x1C
.global lbl_8040BCD8
lbl_8040BCD8:
	.incbin "baserom.dol", 0x407DD8, 0x108
.global lbl_8040BDE0
lbl_8040BDE0:
	.incbin "baserom.dol", 0x407EE0, 0x108
.global lbl_8040BEE8
lbl_8040BEE8:
	.incbin "baserom.dol", 0x407FE8, 0x108
.global lbl_8040BFF0
lbl_8040BFF0:
	.incbin "baserom.dol", 0x4080F0, 0x7C
.global lbl_8040C06C
lbl_8040C06C:
	.incbin "baserom.dol", 0x40816C, 0x8C
.global lbl_8040C0F8
lbl_8040C0F8:
	.incbin "baserom.dol", 0x4081F8, 0x6C
.global lbl_8040C164
lbl_8040C164:
	.incbin "baserom.dol", 0x408264, 0x50
.global lbl_8040C1B4
lbl_8040C1B4:
	.incbin "baserom.dol", 0x4082B4, 0x64
.global lbl_8040C218
lbl_8040C218:
	.incbin "baserom.dol", 0x408318, 0x80
.global lbl_8040C298
lbl_8040C298:
	.incbin "baserom.dol", 0x408398, 0x80
.global lbl_8040C318
lbl_8040C318:
	.incbin "baserom.dol", 0x408418, 0x3C
.global lbl_8040C354
lbl_8040C354:
	.incbin "baserom.dol", 0x408454, 0xA4
.global lbl_8040C3F8
lbl_8040C3F8:
	.incbin "baserom.dol", 0x4084F8, 0x20
.global lbl_8040C418
lbl_8040C418:
	.incbin "baserom.dol", 0x408518, 0x44
.global lbl_8040C45C
lbl_8040C45C:
	.incbin "baserom.dol", 0x40855C, 0x44
.global lbl_8040C4A0
lbl_8040C4A0:
	.incbin "baserom.dol", 0x4085A0, 0xF8
.global lbl_8040C598
lbl_8040C598:
	.incbin "baserom.dol", 0x408698, 0x110
.global lbl_8040C6A8
lbl_8040C6A8:
	.incbin "baserom.dol", 0x4087A8, 0xC
.global lbl_8040C6B4
lbl_8040C6B4:
	.incbin "baserom.dol", 0x4087B4, 0x24
.global lbl_8040C6D8
lbl_8040C6D8:
	.incbin "baserom.dol", 0x4087D8, 0xC8
.global lbl_8040C7A0
lbl_8040C7A0:
	.incbin "baserom.dol", 0x4088A0, 0xC0
.global lbl_8040C860
lbl_8040C860:
	.incbin "baserom.dol", 0x408960, 0x24
.global lbl_8040C884
lbl_8040C884:
	.incbin "baserom.dol", 0x408984, 0x6C
.global lbl_8040C8F0
lbl_8040C8F0:
	.incbin "baserom.dol", 0x4089F0, 0x98
.global lbl_8040C988
lbl_8040C988:
	.incbin "baserom.dol", 0x408A88, 0x5C
.global lbl_8040C9E4
lbl_8040C9E4:
	.incbin "baserom.dol", 0x408AE4, 0x2C
.global lbl_8040CA10
lbl_8040CA10:
	.incbin "baserom.dol", 0x408B10, 0x44
.global lbl_8040CA54
lbl_8040CA54:
	.incbin "baserom.dol", 0x408B54, 0x80
.global lbl_8040CAD4
lbl_8040CAD4:
	.incbin "baserom.dol", 0x408BD4, 0x78
.global lbl_8040CB4C
lbl_8040CB4C:
	.incbin "baserom.dol", 0x408C4C, 0x70
.global lbl_8040CBBC
lbl_8040CBBC:
	.incbin "baserom.dol", 0x408CBC, 0x68
.global lbl_8040CC24
lbl_8040CC24:
	.incbin "baserom.dol", 0x408D24, 0x60
.global lbl_8040CC84
lbl_8040CC84:
	.incbin "baserom.dol", 0x408D84, 0x38
.global lbl_8040CCBC
lbl_8040CCBC:
	.incbin "baserom.dol", 0x408DBC, 0x38
.global lbl_8040CCF4
lbl_8040CCF4:
	.incbin "baserom.dol", 0x408DF4, 0x38
.global lbl_8040CD2C
lbl_8040CD2C:
	.incbin "baserom.dol", 0x408E2C, 0x20
.global lbl_8040CD4C
lbl_8040CD4C:
	.incbin "baserom.dol", 0x408E4C, 0x24
.global lbl_8040CD70
lbl_8040CD70:
	.incbin "baserom.dol", 0x408E70, 0x1C
.global lbl_8040CD8C
lbl_8040CD8C:
	.incbin "baserom.dol", 0x408E8C, 0x44
.global lbl_8040CDD0
lbl_8040CDD0:
	.incbin "baserom.dol", 0x408ED0, 0x30
.global lbl_8040CE00
lbl_8040CE00:
	.incbin "baserom.dol", 0x408F00, 0x24
.global lbl_8040CE24
lbl_8040CE24:
	.incbin "baserom.dol", 0x408F24, 0x1C
.global lbl_8040CE40
lbl_8040CE40:
	.incbin "baserom.dol", 0x408F40, 0x10
.global lbl_8040CE50
lbl_8040CE50:
	.incbin "baserom.dol", 0x408F50, 0x28
.global lbl_8040CE78
lbl_8040CE78:
	.incbin "baserom.dol", 0x408F78, 0x10
.global lbl_8040CE88
lbl_8040CE88:
	.incbin "baserom.dol", 0x408F88, 0x80
.global lbl_8040CF08
lbl_8040CF08:
	.incbin "baserom.dol", 0x409008, 0x68
.global lbl_8040CF70
lbl_8040CF70:
	.incbin "baserom.dol", 0x409070, 0x30
.global lbl_8040CFA0
lbl_8040CFA0:
	.incbin "baserom.dol", 0x4090A0, 0x20
.global lbl_8040CFC0
lbl_8040CFC0:
	.incbin "baserom.dol", 0x4090C0, 0x38
.global lbl_8040CFF8
lbl_8040CFF8:
	.incbin "baserom.dol", 0x4090F8, 0x18
.global lbl_8040D010
lbl_8040D010:
	.incbin "baserom.dol", 0x409110, 0x58
.global lbl_8040D068
lbl_8040D068:
	.incbin "baserom.dol", 0x409168, 0x18
.global lbl_8040D080
lbl_8040D080:
	.incbin "baserom.dol", 0x409180, 0x88
.global lbl_8040D108
lbl_8040D108:
	.incbin "baserom.dol", 0x409208, 0x18
.global lbl_8040D120
lbl_8040D120:
	.incbin "baserom.dol", 0x409220, 0x7C
.global lbl_8040D19C
lbl_8040D19C:
	.incbin "baserom.dol", 0x40929C, 0x7C
.global lbl_8040D218
lbl_8040D218:
	.incbin "baserom.dol", 0x409318, 0x258
.global lbl_8040D470
lbl_8040D470:
	.incbin "baserom.dol", 0x409570, 0x2C
.global lbl_8040D49C
lbl_8040D49C:
	.incbin "baserom.dol", 0x40959C, 0x28
.global lbl_8040D4C4
lbl_8040D4C4:
	.incbin "baserom.dol", 0x4095C4, 0x28
.global lbl_8040D4EC
lbl_8040D4EC:
	.incbin "baserom.dol", 0x4095EC, 0x28
.global lbl_8040D514
lbl_8040D514:
	.incbin "baserom.dol", 0x409614, 0x64
.global lbl_8040D578
lbl_8040D578:
	.incbin "baserom.dol", 0x409678, 0x38
.global lbl_8040D5B0
lbl_8040D5B0:
	.incbin "baserom.dol", 0x4096B0, 0x38
.global lbl_8040D5E8
lbl_8040D5E8:
	.incbin "baserom.dol", 0x4096E8, 0x38
.global lbl_8040D620
lbl_8040D620:
	.incbin "baserom.dol", 0x409720, 0x38
.global lbl_8040D658
lbl_8040D658:
	.incbin "baserom.dol", 0x409758, 0x78
.global lbl_8040D6D0
lbl_8040D6D0:
	.incbin "baserom.dol", 0x4097D0, 0x38
.global lbl_8040D708
lbl_8040D708:
	.incbin "baserom.dol", 0x409808, 0x38
.global lbl_8040D740
lbl_8040D740:
	.incbin "baserom.dol", 0x409840, 0x3C
.global lbl_8040D77C
lbl_8040D77C:
	.incbin "baserom.dol", 0x40987C, 0xD8
.global lbl_8040D854
lbl_8040D854:
	.incbin "baserom.dol", 0x409954, 0x88
.global lbl_8040D8DC
lbl_8040D8DC:
	.incbin "baserom.dol", 0x4099DC, 0xD8
.global lbl_8040D9B4
lbl_8040D9B4:
	.incbin "baserom.dol", 0x409AB4, 0x88
.global lbl_8040DA3C
lbl_8040DA3C:
	.incbin "baserom.dol", 0x409B3C, 0xF4
.global lbl_8040DB30
lbl_8040DB30:
	.incbin "baserom.dol", 0x409C30, 0x5C
.global lbl_8040DB8C
lbl_8040DB8C:
	.incbin "baserom.dol", 0x409C8C, 0x2C
.global lbl_8040DBB8
lbl_8040DBB8:
	.incbin "baserom.dol", 0x409CB8, 0x4C
.global lbl_8040DC04
lbl_8040DC04:
	.incbin "baserom.dol", 0x409D04, 0x1C
.global lbl_8040DC20
lbl_8040DC20:
	.incbin "baserom.dol", 0x409D20, 0x24
.global lbl_8040DC44
lbl_8040DC44:
	.incbin "baserom.dol", 0x409D44, 0x9C
.global lbl_8040DCE0
lbl_8040DCE0:
	.incbin "baserom.dol", 0x409DE0, 0xEC
.global lbl_8040DDCC
lbl_8040DDCC:
	.incbin "baserom.dol", 0x409ECC, 0xF8
.global lbl_8040DEC4
lbl_8040DEC4:
	.incbin "baserom.dol", 0x409FC4, 0xF8
.global lbl_8040DFBC
lbl_8040DFBC:
	.incbin "baserom.dol", 0x40A0BC, 0x2C
.global lbl_8040DFE8
lbl_8040DFE8:
	.incbin "baserom.dol", 0x40A0E8, 0xC4
.global lbl_8040E0AC
lbl_8040E0AC:
	.incbin "baserom.dol", 0x40A1AC, 0x1A8
.global lbl_8040E254
lbl_8040E254:
	.incbin "baserom.dol", 0x40A354, 0x44
.global lbl_8040E298
lbl_8040E298:
	.incbin "baserom.dol", 0x40A398, 0x24
.global lbl_8040E2BC
lbl_8040E2BC:
	.incbin "baserom.dol", 0x40A3BC, 0x24
.global lbl_8040E2E0
lbl_8040E2E0:
	.incbin "baserom.dol", 0x40A3E0, 0xC8
.global lbl_8040E3A8
lbl_8040E3A8:
	.incbin "baserom.dol", 0x40A4A8, 0x98
.global lbl_8040E440
lbl_8040E440:
	.incbin "baserom.dol", 0x40A540, 0xAC
.global lbl_8040E4EC
lbl_8040E4EC:
	.incbin "baserom.dol", 0x40A5EC, 0x23C
.global lbl_8040E728
lbl_8040E728:
	.incbin "baserom.dol", 0x40A828, 0x44
.global lbl_8040E76C
lbl_8040E76C:
	.incbin "baserom.dol", 0x40A86C, 0x150
.global lbl_8040E8BC
lbl_8040E8BC:
	.incbin "baserom.dol", 0x40A9BC, 0x78
.global lbl_8040E934
lbl_8040E934:
	.incbin "baserom.dol", 0x40AA34, 0x34
.global lbl_8040E968
lbl_8040E968:
	.incbin "baserom.dol", 0x40AA68, 0x3C
.global lbl_8040E9A4
lbl_8040E9A4:
	.incbin "baserom.dol", 0x40AAA4, 0x1A0
.global lbl_8040EB44
lbl_8040EB44:
	.incbin "baserom.dol", 0x40AC44, 0x1AC
.global lbl_8040ECF0
lbl_8040ECF0:
	.incbin "baserom.dol", 0x40ADF0, 0x184
.global lbl_8040EE74
lbl_8040EE74:
	.incbin "baserom.dol", 0x40AF74, 0x30
.global lbl_8040EEA4
lbl_8040EEA4:
	.incbin "baserom.dol", 0x40AFA4, 0x64
.global lbl_8040EF08
lbl_8040EF08:
	.incbin "baserom.dol", 0x40B008, 0x74
.global lbl_8040EF7C
lbl_8040EF7C:
	.incbin "baserom.dol", 0x40B07C, 0x24
.global lbl_8040EFA0
lbl_8040EFA0:
	.incbin "baserom.dol", 0x40B0A0, 0x44
.global lbl_8040EFE4
lbl_8040EFE4:
	.incbin "baserom.dol", 0x40B0E4, 0xAC
.global lbl_8040F090
lbl_8040F090:
	.incbin "baserom.dol", 0x40B190, 0x44
.global lbl_8040F0D4
lbl_8040F0D4:
	.incbin "baserom.dol", 0x40B1D4, 0x3C
.global lbl_8040F110
lbl_8040F110:
	.incbin "baserom.dol", 0x40B210, 0x104
.global lbl_8040F214
lbl_8040F214:
	.incbin "baserom.dol", 0x40B314, 0x24
.global lbl_8040F238
lbl_8040F238:
	.incbin "baserom.dol", 0x40B338, 0x48
.global lbl_8040F280
lbl_8040F280:
	.incbin "baserom.dol", 0x40B380, 0x20
.global lbl_8040F2A0
lbl_8040F2A0:
	.incbin "baserom.dol", 0x40B3A0, 0x44
.global lbl_8040F2E4
lbl_8040F2E4:
	.incbin "baserom.dol", 0x40B3E4, 0x68
.global lbl_8040F34C
lbl_8040F34C:
	.incbin "baserom.dol", 0x40B44C, 0x60
.global lbl_8040F3AC
lbl_8040F3AC:
	.incbin "baserom.dol", 0x40B4AC, 0x40
.global lbl_8040F3EC
lbl_8040F3EC:
	.incbin "baserom.dol", 0x40B4EC, 0x64
.global lbl_8040F450
lbl_8040F450:
	.incbin "baserom.dol", 0x40B550, 0xB8
.global lbl_8040F508
lbl_8040F508:
	.incbin "baserom.dol", 0x40B608, 0x3C
.global lbl_8040F544
lbl_8040F544:
	.incbin "baserom.dol", 0x40B644, 0x3C
.global lbl_8040F580
lbl_8040F580:
	.incbin "baserom.dol", 0x40B680, 0x258
.global lbl_8040F7D8
lbl_8040F7D8:
	.incbin "baserom.dol", 0x40B8D8, 0x3F78
.global lbl_80413750
lbl_80413750:
	.incbin "baserom.dol", 0x40F850, 0xA8
.global lbl_804137F8
lbl_804137F8:
	.incbin "baserom.dol", 0x40F8F8, 0x82C
.global lbl_80414024
lbl_80414024:
	.incbin "baserom.dol", 0x410124, 0x54
.global lbl_80414078
lbl_80414078:
	.incbin "baserom.dol", 0x410178, 0x38
.global lbl_804140B0
lbl_804140B0:
	.incbin "baserom.dol", 0x4101B0, 0x44
.global lbl_804140F4
lbl_804140F4:
	.incbin "baserom.dol", 0x4101F4, 0x1C
.global lbl_80414110
lbl_80414110:
	.incbin "baserom.dol", 0x410210, 0x40
.global lbl_80414150
lbl_80414150:
	.incbin "baserom.dol", 0x410250, 0x20
.global lbl_80414170
lbl_80414170:
	.incbin "baserom.dol", 0x410270, 0x48
.global lbl_804141B8
lbl_804141B8:
	.incbin "baserom.dol", 0x4102B8, 0xF8
.global lbl_804142B0
lbl_804142B0:
	.incbin "baserom.dol", 0x4103B0, 0x68
.global lbl_80414318
lbl_80414318:
	.incbin "baserom.dol", 0x410418, 0xDC
.global lbl_804143F4
lbl_804143F4:
	.incbin "baserom.dol", 0x4104F4, 0x60
.global lbl_80414454
lbl_80414454:
	.incbin "baserom.dol", 0x410554, 0xF4
.global lbl_80414548
lbl_80414548:
	.incbin "baserom.dol", 0x410648, 0x4C
.global lbl_80414594
lbl_80414594:
	.incbin "baserom.dol", 0x410694, 0x88
.global lbl_8041461C
lbl_8041461C:
	.incbin "baserom.dol", 0x41071C, 0x88
.global lbl_804146A4
lbl_804146A4:
	.incbin "baserom.dol", 0x4107A4, 0xFC
.global lbl_804147A0
lbl_804147A0:
	.incbin "baserom.dol", 0x4108A0, 0x68
.global lbl_80414808
lbl_80414808:
	.incbin "baserom.dol", 0x410908, 0x74
.global lbl_8041487C
lbl_8041487C:
	.incbin "baserom.dol", 0x41097C, 0x74
.global lbl_804148F0
lbl_804148F0:
	.incbin "baserom.dol", 0x4109F0, 0x54
.global lbl_80414944
lbl_80414944:
	.incbin "baserom.dol", 0x410A44, 0x10
.global lbl_80414954
lbl_80414954:
	.incbin "baserom.dol", 0x410A54, 0x188
.global lbl_80414ADC
lbl_80414ADC:
	.incbin "baserom.dol", 0x410BDC, 0x184
.global lbl_80414C60
lbl_80414C60:
	.incbin "baserom.dol", 0x410D60, 0xC8
.global lbl_80414D28
lbl_80414D28:
	.incbin "baserom.dol", 0x410E28, 0xC4
.global lbl_80414DEC
lbl_80414DEC:
	.incbin "baserom.dol", 0x410EEC, 0x80
.global lbl_80414E6C
lbl_80414E6C:
	.incbin "baserom.dol", 0x410F6C, 0x7C
.global lbl_80414EE8
lbl_80414EE8:
	.incbin "baserom.dol", 0x410FE8, 0x98
.global lbl_80414F80
lbl_80414F80:
	.incbin "baserom.dol", 0x411080, 0x94
.global lbl_80415014
lbl_80415014:
	.incbin "baserom.dol", 0x411114, 0xC8
.global lbl_804150DC
lbl_804150DC:
	.incbin "baserom.dol", 0x4111DC, 0xC4
.global lbl_804151A0
lbl_804151A0:
	.incbin "baserom.dol", 0x4112A0, 0x44
.global lbl_804151E4
lbl_804151E4:
	.incbin "baserom.dol", 0x4112E4, 0x40
.global lbl_80415224
lbl_80415224:
	.incbin "baserom.dol", 0x411324, 0x2C
.global lbl_80415250
lbl_80415250:
	.incbin "baserom.dol", 0x411350, 0x128
.global lbl_80415378
lbl_80415378:
	.incbin "baserom.dol", 0x411478, 0x124
.global lbl_8041549C
lbl_8041549C:
	.incbin "baserom.dol", 0x41159C, 0x128
.global lbl_804155C4
lbl_804155C4:
	.incbin "baserom.dol", 0x4116C4, 0x124
.global lbl_804156E8
lbl_804156E8:
	.incbin "baserom.dol", 0x4117E8, 0x248
.global lbl_80415930
lbl_80415930:
	.incbin "baserom.dol", 0x411A30, 0x244
.global lbl_80415B74
lbl_80415B74:
	.incbin "baserom.dol", 0x411C74, 0x5C
.global lbl_80415BD0
lbl_80415BD0:
	.incbin "baserom.dol", 0x411CD0, 0x58
.global lbl_80415C28
lbl_80415C28:
	.incbin "baserom.dol", 0x411D28, 0x54
.global lbl_80415C7C
lbl_80415C7C:
	.incbin "baserom.dol", 0x411D7C, 0x74
.global lbl_80415CF0
lbl_80415CF0:
	.incbin "baserom.dol", 0x411DF0, 0x2C
.global lbl_80415D1C
lbl_80415D1C:
	.incbin "baserom.dol", 0x411E1C, 0x40
.global lbl_80415D5C
lbl_80415D5C:
	.incbin "baserom.dol", 0x411E5C, 0x54
.global lbl_80415DB0
lbl_80415DB0:
	.incbin "baserom.dol", 0x411EB0, 0x54
.global lbl_80415E04
lbl_80415E04:
	.incbin "baserom.dol", 0x411F04, 0x54
.global lbl_80415E58
lbl_80415E58:
	.incbin "baserom.dol", 0x411F58, 0x54
.global lbl_80415EAC
lbl_80415EAC:
	.incbin "baserom.dol", 0x411FAC, 0x34
.global lbl_80415EE0
lbl_80415EE0:
	.incbin "baserom.dol", 0x411FE0, 0x60
.global lbl_80415F40
lbl_80415F40:
	.incbin "baserom.dol", 0x412040, 0x10
.global lbl_80415F50
lbl_80415F50:
	.incbin "baserom.dol", 0x412050, 0x58
.global lbl_80415FA8
lbl_80415FA8:
	.incbin "baserom.dol", 0x4120A8, 0x58
.global lbl_80416000
lbl_80416000:
	.incbin "baserom.dol", 0x412100, 0x38
.global lbl_80416038
lbl_80416038:
	.incbin "baserom.dol", 0x412138, 0x1C
.global lbl_80416054
lbl_80416054:
	.incbin "baserom.dol", 0x412154, 0x38
.global lbl_8041608C
lbl_8041608C:
	.incbin "baserom.dol", 0x41218C, 0x30
.global lbl_804160BC
lbl_804160BC:
	.incbin "baserom.dol", 0x4121BC, 0x4C
.global lbl_80416108
lbl_80416108:
	.incbin "baserom.dol", 0x412208, 0x20
.global lbl_80416128
lbl_80416128:
	.incbin "baserom.dol", 0x412228, 0x34
.global lbl_8041615C
lbl_8041615C:
	.incbin "baserom.dol", 0x41225C, 0x88
.global lbl_804161E4
lbl_804161E4:
	.incbin "baserom.dol", 0x4122E4, 0x50
.global lbl_80416234
lbl_80416234:
	.incbin "baserom.dol", 0x412334, 0x28
.global lbl_8041625C
lbl_8041625C:
	.incbin "baserom.dol", 0x41235C, 0x34
.global lbl_80416290
lbl_80416290:
	.incbin "baserom.dol", 0x412390, 0x18
.global lbl_804162A8
lbl_804162A8:
	.incbin "baserom.dol", 0x4123A8, 0x3F0
.global lbl_80416698
lbl_80416698:
	.incbin "baserom.dol", 0x412798, 0x3F0
.global lbl_80416A88
lbl_80416A88:
	.incbin "baserom.dol", 0x412B88, 0x30
.global lbl_80416AB8
lbl_80416AB8:
	.incbin "baserom.dol", 0x412BB8, 0xA0
.global lbl_80416B58
lbl_80416B58:
	.incbin "baserom.dol", 0x412C58, 0x20
.global lbl_80416B78
lbl_80416B78:
	.incbin "baserom.dol", 0x412C78, 0x60
.global lbl_80416BD8
lbl_80416BD8:
	.incbin "baserom.dol", 0x412CD8, 0x3C
.global lbl_80416C14
lbl_80416C14:
	.incbin "baserom.dol", 0x412D14, 0x5C
.global lbl_80416C70
lbl_80416C70:
	.incbin "baserom.dol", 0x412D70, 0x6C
.global lbl_80416CDC
lbl_80416CDC:
	.incbin "baserom.dol", 0x412DDC, 0x6C
.global lbl_80416D48
lbl_80416D48:
	.incbin "baserom.dol", 0x412E48, 0x2C
.global lbl_80416D74
lbl_80416D74:
	.incbin "baserom.dol", 0x412E74, 0x74
.global lbl_80416DE8
lbl_80416DE8:
	.incbin "baserom.dol", 0x412EE8, 0x20
.global lbl_80416E08
lbl_80416E08:
	.incbin "baserom.dol", 0x412F08, 0x4C
.global lbl_80416E54
lbl_80416E54:
	.incbin "baserom.dol", 0x412F54, 0x74
.global lbl_80416EC8
lbl_80416EC8:
	.incbin "baserom.dol", 0x412FC8, 0x74
.global lbl_80416F3C
lbl_80416F3C:
	.incbin "baserom.dol", 0x41303C, 0x38
.global lbl_80416F74
lbl_80416F74:
	.incbin "baserom.dol", 0x413074, 0x24
.global lbl_80416F98
lbl_80416F98:
	.incbin "baserom.dol", 0x413098, 0x30
.global lbl_80416FC8
lbl_80416FC8:
	.incbin "baserom.dol", 0x4130C8, 0x1C
.global lbl_80416FE4
lbl_80416FE4:
	.incbin "baserom.dol", 0x4130E4, 0x60
.global lbl_80417044
lbl_80417044:
	.incbin "baserom.dol", 0x413144, 0x6C
.global lbl_804170B0
lbl_804170B0:
	.incbin "baserom.dol", 0x4131B0, 0x74
.global lbl_80417124
lbl_80417124:
	.incbin "baserom.dol", 0x413224, 0x24
.global lbl_80417148
lbl_80417148:
	.incbin "baserom.dol", 0x413248, 0x54
.global lbl_8041719C
lbl_8041719C:
	.incbin "baserom.dol", 0x41329C, 0x24
.global lbl_804171C0
lbl_804171C0:
	.incbin "baserom.dol", 0x4132C0, 0x54
.global lbl_80417214
lbl_80417214:
	.incbin "baserom.dol", 0x413314, 0x20
.global lbl_80417234
lbl_80417234:
	.incbin "baserom.dol", 0x413334, 0x34
.global lbl_80417268
lbl_80417268:
	.incbin "baserom.dol", 0x413368, 0x58
.global lbl_804172C0
lbl_804172C0:
	.incbin "baserom.dol", 0x4133C0, 0x28
.global lbl_804172E8
lbl_804172E8:
	.incbin "baserom.dol", 0x4133E8, 0x34
.global lbl_8041731C
lbl_8041731C:
	.incbin "baserom.dol", 0x41341C, 0x6C
.global lbl_80417388
lbl_80417388:
	.incbin "baserom.dol", 0x413488, 0x28
.global lbl_804173B0
lbl_804173B0:
	.incbin "baserom.dol", 0x4134B0, 0x70
.global lbl_80417420
lbl_80417420:
	.incbin "baserom.dol", 0x413520, 0x34
.global lbl_80417454
lbl_80417454:
	.incbin "baserom.dol", 0x413554, 0x3C
.global lbl_80417490
lbl_80417490:
	.incbin "baserom.dol", 0x413590, 0x3C
.global lbl_804174CC
lbl_804174CC:
	.incbin "baserom.dol", 0x4135CC, 0x34
.global lbl_80417500
lbl_80417500:
	.incbin "baserom.dol", 0x413600, 0x70
.global lbl_80417570
lbl_80417570:
	.incbin "baserom.dol", 0x413670, 0x14
.global lbl_80417584
lbl_80417584:
	.incbin "baserom.dol", 0x413684, 0x40
.global lbl_804175C4
lbl_804175C4:
	.incbin "baserom.dol", 0x4136C4, 0x40
.global lbl_80417604
lbl_80417604:
	.incbin "baserom.dol", 0x413704, 0x64
.global lbl_80417668
lbl_80417668:
	.incbin "baserom.dol", 0x413768, 0x60
.global lbl_804176C8
lbl_804176C8:
	.incbin "baserom.dol", 0x4137C8, 0x40
.global lbl_80417708
lbl_80417708:
	.incbin "baserom.dol", 0x413808, 0x78
.global lbl_80417780
lbl_80417780:
	.incbin "baserom.dol", 0x413880, 0xA8
.global lbl_80417828
lbl_80417828:
	.incbin "baserom.dol", 0x413928, 0xE4
.global lbl_8041790C
lbl_8041790C:
	.incbin "baserom.dol", 0x413A0C, 0x48
.global lbl_80417954
lbl_80417954:
	.incbin "baserom.dol", 0x413A54, 0x48
.global lbl_8041799C
lbl_8041799C:
	.incbin "baserom.dol", 0x413A9C, 0x1C
.global lbl_804179B8
lbl_804179B8:
	.incbin "baserom.dol", 0x413AB8, 0x5C
.global lbl_80417A14
lbl_80417A14:
	.incbin "baserom.dol", 0x413B14, 0x4C
.global lbl_80417A60
lbl_80417A60:
	.incbin "baserom.dol", 0x413B60, 0x2C
.global lbl_80417A8C
lbl_80417A8C:
	.incbin "baserom.dol", 0x413B8C, 0x28
.global lbl_80417AB4
lbl_80417AB4:
	.incbin "baserom.dol", 0x413BB4, 0x134
.global lbl_80417BE8
lbl_80417BE8:
	.incbin "baserom.dol", 0x413CE8, 0xF8
.global lbl_80417CE0
lbl_80417CE0:
	.incbin "baserom.dol", 0x413DE0, 0x80
.global lbl_80417D60
lbl_80417D60:
	.incbin "baserom.dol", 0x413E60, 0x38
.global lbl_80417D98
lbl_80417D98:
	.incbin "baserom.dol", 0x413E98, 0x40
.global lbl_80417DD8
lbl_80417DD8:
	.incbin "baserom.dol", 0x413ED8, 0x8C
.global lbl_80417E64
lbl_80417E64:
	.incbin "baserom.dol", 0x413F64, 0x40
.global lbl_80417EA4
lbl_80417EA4:
	.incbin "baserom.dol", 0x413FA4, 0x88
.global lbl_80417F2C
lbl_80417F2C:
	.incbin "baserom.dol", 0x41402C, 0x60
.global lbl_80417F8C
lbl_80417F8C:
	.incbin "baserom.dol", 0x41408C, 0x9C
.global lbl_80418028
lbl_80418028:
	.incbin "baserom.dol", 0x414128, 0x58
.global lbl_80418080
lbl_80418080:
	.incbin "baserom.dol", 0x414180, 0x28
.global lbl_804180A8
lbl_804180A8:
	.incbin "baserom.dol", 0x4141A8, 0x1C
.global lbl_804180C4
lbl_804180C4:
	.incbin "baserom.dol", 0x4141C4, 0x40
.global lbl_80418104
lbl_80418104:
	.incbin "baserom.dol", 0x414204, 0x1C
.global lbl_80418120
lbl_80418120:
	.incbin "baserom.dol", 0x414220, 0x150
.global lbl_80418270
lbl_80418270:
	.incbin "baserom.dol", 0x414370, 0x298
.global lbl_80418508
lbl_80418508:
	.incbin "baserom.dol", 0x414608, 0x1EF0
.global lbl_8041A3F8
lbl_8041A3F8:
	.incbin "baserom.dol", 0x4164F8, 0x1C
.global lbl_8041A414
lbl_8041A414:
	.incbin "baserom.dol", 0x416514, 0x1C
.global lbl_8041A430
lbl_8041A430:
	.incbin "baserom.dol", 0x416530, 0x54
.global lbl_8041A484
lbl_8041A484:
	.incbin "baserom.dol", 0x416584, 0x54
.global lbl_8041A4D8
lbl_8041A4D8:
	.incbin "baserom.dol", 0x4165D8, 0xBC
.global lbl_8041A594
lbl_8041A594:
	.incbin "baserom.dol", 0x416694, 0x20
.global lbl_8041A5B4
lbl_8041A5B4:
	.incbin "baserom.dol", 0x4166B4, 0x38
.global lbl_8041A5EC
lbl_8041A5EC:
	.incbin "baserom.dol", 0x4166EC, 0x58
.global lbl_8041A644
lbl_8041A644:
	.incbin "baserom.dol", 0x416744, 0x2C
.global lbl_8041A670
lbl_8041A670:
	.incbin "baserom.dol", 0x416770, 0x50
.global lbl_8041A6C0
lbl_8041A6C0:
	.incbin "baserom.dol", 0x4167C0, 0x3C
.global lbl_8041A6FC
lbl_8041A6FC:
	.incbin "baserom.dol", 0x4167FC, 0x58
.global lbl_8041A754
lbl_8041A754:
	.incbin "baserom.dol", 0x416854, 0x40
.global lbl_8041A794
lbl_8041A794:
	.incbin "baserom.dol", 0x416894, 0xD4
.global lbl_8041A868
lbl_8041A868:
	.incbin "baserom.dol", 0x416968, 0xFC
.global lbl_8041A964
lbl_8041A964:
	.incbin "baserom.dol", 0x416A64, 0x28
.global lbl_8041A98C
lbl_8041A98C:
	.incbin "baserom.dol", 0x416A8C, 0x34
.global lbl_8041A9C0
lbl_8041A9C0:
	.incbin "baserom.dol", 0x416AC0, 0x3C
.global lbl_8041A9FC
lbl_8041A9FC:
	.incbin "baserom.dol", 0x416AFC, 0xC
.global lbl_8041AA08
lbl_8041AA08:
	.incbin "baserom.dol", 0x416B08, 0x40
.global lbl_8041AA48
lbl_8041AA48:
	.incbin "baserom.dol", 0x416B48, 0x40
.global lbl_8041AA88
lbl_8041AA88:
	.incbin "baserom.dol", 0x416B88, 0x40
.global lbl_8041AAC8
lbl_8041AAC8:
	.incbin "baserom.dol", 0x416BC8, 0x78
.global lbl_8041AB40
lbl_8041AB40:
	.incbin "baserom.dol", 0x416C40, 0x38
.global lbl_8041AB78
lbl_8041AB78:
	.incbin "baserom.dol", 0x416C78, 0x38
.global lbl_8041ABB0
lbl_8041ABB0:
	.incbin "baserom.dol", 0x416CB0, 0x18
.global lbl_8041ABC8
lbl_8041ABC8:
	.incbin "baserom.dol", 0x416CC8, 0x20
.global lbl_8041ABE8
lbl_8041ABE8:
	.incbin "baserom.dol", 0x416CE8, 0x20
.global lbl_8041AC08
lbl_8041AC08:
	.incbin "baserom.dol", 0x416D08, 0x20
.global lbl_8041AC28
lbl_8041AC28:
	.incbin "baserom.dol", 0x416D28, 0x20
.global lbl_8041AC48
lbl_8041AC48:
	.incbin "baserom.dol", 0x416D48, 0x20
.global lbl_8041AC68
lbl_8041AC68:
	.incbin "baserom.dol", 0x416D68, 0xA5C
.global lbl_8041B6C4
lbl_8041B6C4:
	.incbin "baserom.dol", 0x4177C4, 0xB4
.global lbl_8041B778
lbl_8041B778:
	.incbin "baserom.dol", 0x417878, 0x28
.global lbl_8041B7A0
lbl_8041B7A0:
	.incbin "baserom.dol", 0x4178A0, 0x28
.global lbl_8041B7C8
lbl_8041B7C8:
	.incbin "baserom.dol", 0x4178C8, 0x28
.global lbl_8041B7F0
lbl_8041B7F0:
	.incbin "baserom.dol", 0x4178F0, 0x28
.global lbl_8041B818
lbl_8041B818:
	.incbin "baserom.dol", 0x417918, 0x54
.global lbl_8041B86C
lbl_8041B86C:
	.incbin "baserom.dol", 0x41796C, 0x28
.global lbl_8041B894
lbl_8041B894:
	.incbin "baserom.dol", 0x417994, 0x54
.global lbl_8041B8E8
lbl_8041B8E8:
	.incbin "baserom.dol", 0x4179E8, 0x2C
.global lbl_8041B914
lbl_8041B914:
	.incbin "baserom.dol", 0x417A14, 0x84
.global lbl_8041B998
lbl_8041B998:
	.incbin "baserom.dol", 0x417A98, 0x28
.global lbl_8041B9C0
lbl_8041B9C0:
	.incbin "baserom.dol", 0x417AC0, 0x34
.global lbl_8041B9F4
lbl_8041B9F4:
	.incbin "baserom.dol", 0x417AF4, 0x38
.global lbl_8041BA2C
lbl_8041BA2C:
	.incbin "baserom.dol", 0x417B2C, 0x38
.global lbl_8041BA64
lbl_8041BA64:
	.incbin "baserom.dol", 0x417B64, 0x38
.global lbl_8041BA9C
lbl_8041BA9C:
	.incbin "baserom.dol", 0x417B9C, 0x58
.global lbl_8041BAF4
lbl_8041BAF4:
	.incbin "baserom.dol", 0x417BF4, 0x34
.global lbl_8041BB28
lbl_8041BB28:
	.incbin "baserom.dol", 0x417C28, 0x48
.global lbl_8041BB70
lbl_8041BB70:
	.incbin "baserom.dol", 0x417C70, 0x28
.global lbl_8041BB98
lbl_8041BB98:
	.incbin "baserom.dol", 0x417C98, 0x4C
.global lbl_8041BBE4
lbl_8041BBE4:
	.incbin "baserom.dol", 0x417CE4, 0x58
.global lbl_8041BC3C
lbl_8041BC3C:
	.incbin "baserom.dol", 0x417D3C, 0x84
.global lbl_8041BCC0
lbl_8041BCC0:
	.incbin "baserom.dol", 0x417DC0, 0x1C
.global lbl_8041BCDC
lbl_8041BCDC:
	.incbin "baserom.dol", 0x417DDC, 0x44
.global lbl_8041BD20
lbl_8041BD20:
	.incbin "baserom.dol", 0x417E20, 0x1C
.global lbl_8041BD3C
lbl_8041BD3C:
	.incbin "baserom.dol", 0x417E3C, 0x1C
.global lbl_8041BD58
lbl_8041BD58:
	.incbin "baserom.dol", 0x417E58, 0x44
.global lbl_8041BD9C
lbl_8041BD9C:
	.incbin "baserom.dol", 0x417E9C, 0x2C
.global lbl_8041BDC8
lbl_8041BDC8:
	.incbin "baserom.dol", 0x417EC8, 0x34
.global lbl_8041BDFC
lbl_8041BDFC:
	.incbin "baserom.dol", 0x417EFC, 0x68
.global lbl_8041BE64
lbl_8041BE64:
	.incbin "baserom.dol", 0x417F64, 0xC
.global lbl_8041BE70
lbl_8041BE70:
	.incbin "baserom.dol", 0x417F70, 0xC
.global lbl_8041BE7C
lbl_8041BE7C:
	.incbin "baserom.dol", 0x417F7C, 0xC
.global lbl_8041BE88
lbl_8041BE88:
	.incbin "baserom.dol", 0x417F88, 0x80
.global lbl_8041BF08
lbl_8041BF08:
	.incbin "baserom.dol", 0x418008, 0x24
.global lbl_8041BF2C
lbl_8041BF2C:
	.incbin "baserom.dol", 0x41802C, 0x90
.global lbl_8041BFBC
lbl_8041BFBC:
	.incbin "baserom.dol", 0x4180BC, 0x24
.global lbl_8041BFE0
lbl_8041BFE0:
	.incbin "baserom.dol", 0x4180E0, 0x48
.global lbl_8041C028
lbl_8041C028:
	.incbin "baserom.dol", 0x418128, 0x60
.global lbl_8041C088
lbl_8041C088:
	.incbin "baserom.dol", 0x418188, 0x1C
.global lbl_8041C0A4
lbl_8041C0A4:
	.incbin "baserom.dol", 0x4181A4, 0x20
.global lbl_8041C0C4
lbl_8041C0C4:
	.incbin "baserom.dol", 0x4181C4, 0x28
.global lbl_8041C0EC
lbl_8041C0EC:
	.incbin "baserom.dol", 0x4181EC, 0x274
.global lbl_8041C360
lbl_8041C360:
	.incbin "baserom.dol", 0x418460, 0x60
.global lbl_8041C3C0
lbl_8041C3C0:
	.incbin "baserom.dol", 0x4184C0, 0x88
.global lbl_8041C448
lbl_8041C448:
	.incbin "baserom.dol", 0x418548, 0x30
.global lbl_8041C478
lbl_8041C478:
	.incbin "baserom.dol", 0x418578, 0x2C
.global lbl_8041C4A4
lbl_8041C4A4:
	.incbin "baserom.dol", 0x4185A4, 0x24
.global lbl_8041C4C8
lbl_8041C4C8:
	.incbin "baserom.dol", 0x4185C8, 0x40
.global lbl_8041C508
lbl_8041C508:
	.incbin "baserom.dol", 0x418608, 0x28
.global lbl_8041C530
lbl_8041C530:
	.incbin "baserom.dol", 0x418630, 0x38
.global lbl_8041C568
lbl_8041C568:
	.incbin "baserom.dol", 0x418668, 0x4C
.global lbl_8041C5B4
lbl_8041C5B4:
	.incbin "baserom.dol", 0x4186B4, 0x5C
.global lbl_8041C610
lbl_8041C610:
	.incbin "baserom.dol", 0x418710, 0x20
.global lbl_8041C630
lbl_8041C630:
	.incbin "baserom.dol", 0x418730, 0x20
.global lbl_8041C650
lbl_8041C650:
	.incbin "baserom.dol", 0x418750, 0x5C
.global lbl_8041C6AC
lbl_8041C6AC:
	.incbin "baserom.dol", 0x4187AC, 0x74
.global lbl_8041C720
lbl_8041C720:
	.incbin "baserom.dol", 0x418820, 0x3C
.global lbl_8041C75C
lbl_8041C75C:
	.incbin "baserom.dol", 0x41885C, 0x58
.global lbl_8041C7B4
lbl_8041C7B4:
	.incbin "baserom.dol", 0x4188B4, 0x84
.global lbl_8041C838
lbl_8041C838:
	.incbin "baserom.dol", 0x418938, 0x58
.global lbl_8041C890
lbl_8041C890:
	.incbin "baserom.dol", 0x418990, 0x88
.global lbl_8041C918
lbl_8041C918:
	.incbin "baserom.dol", 0x418A18, 0x1C
.global lbl_8041C934
lbl_8041C934:
	.incbin "baserom.dol", 0x418A34, 0x130
.global lbl_8041CA64
lbl_8041CA64:
	.incbin "baserom.dol", 0x418B64, 0x11C
.global lbl_8041CB80
lbl_8041CB80:
	.incbin "baserom.dol", 0x418C80, 0xE0
.global lbl_8041CC60
lbl_8041CC60:
	.incbin "baserom.dol", 0x418D60, 0x68
.global lbl_8041CCC8
lbl_8041CCC8:
	.incbin "baserom.dol", 0x418DC8, 0x28
.global lbl_8041CCF0
lbl_8041CCF0:
	.incbin "baserom.dol", 0x418DF0, 0x84
.global lbl_8041CD74
lbl_8041CD74:
	.incbin "baserom.dol", 0x418E74, 0x34
.global lbl_8041CDA8
lbl_8041CDA8:
	.incbin "baserom.dol", 0x418EA8, 0x80
.global lbl_8041CE28
lbl_8041CE28:
	.incbin "baserom.dol", 0x418F28, 0x10
.global lbl_8041CE38
lbl_8041CE38:
	.incbin "baserom.dol", 0x418F38, 0x1C
.global lbl_8041CE54
lbl_8041CE54:
	.incbin "baserom.dol", 0x418F54, 0x34
.global lbl_8041CE88
lbl_8041CE88:
	.incbin "baserom.dol", 0x418F88, 0x68
.global lbl_8041CEF0
lbl_8041CEF0:
	.incbin "baserom.dol", 0x418FF0, 0x28
.global lbl_8041CF18
lbl_8041CF18:
	.incbin "baserom.dol", 0x419018, 0x28
.global lbl_8041CF40
lbl_8041CF40:
	.incbin "baserom.dol", 0x419040, 0x20
.global lbl_8041CF60
lbl_8041CF60:
	.incbin "baserom.dol", 0x419060, 0x28
.global lbl_8041CF88
lbl_8041CF88:
	.incbin "baserom.dol", 0x419088, 0x98
.global lbl_8041D020
lbl_8041D020:
	.incbin "baserom.dol", 0x419120, 0xDC
.global lbl_8041D0FC
lbl_8041D0FC:
	.incbin "baserom.dol", 0x4191FC, 0xC
.global lbl_8041D108
lbl_8041D108:
	.incbin "baserom.dol", 0x419208, 0x10
.global lbl_8041D118
lbl_8041D118:
	.incbin "baserom.dol", 0x419218, 0x48
.global lbl_8041D160
lbl_8041D160:
	.incbin "baserom.dol", 0x419260, 0x3C
.global lbl_8041D19C
lbl_8041D19C:
	.incbin "baserom.dol", 0x41929C, 0xC
.global lbl_8041D1A8
lbl_8041D1A8:
	.incbin "baserom.dol", 0x4192A8, 0x68
.global lbl_8041D210
lbl_8041D210:
	.incbin "baserom.dol", 0x419310, 0xC
.global lbl_8041D21C
lbl_8041D21C:
	.incbin "baserom.dol", 0x41931C, 0x7C
.global lbl_8041D298
lbl_8041D298:
	.incbin "baserom.dol", 0x419398, 0x40
.global lbl_8041D2D8
lbl_8041D2D8:
	.incbin "baserom.dol", 0x4193D8, 0x40
.global lbl_8041D318
lbl_8041D318:
	.incbin "baserom.dol", 0x419418, 0x2C
.global lbl_8041D344
lbl_8041D344:
	.incbin "baserom.dol", 0x419444, 0x2C
.global lbl_8041D370
lbl_8041D370:
	.incbin "baserom.dol", 0x419470, 0xC8
.global lbl_8041D438
lbl_8041D438:
	.incbin "baserom.dol", 0x419538, 0x18
.global lbl_8041D450
lbl_8041D450:
	.incbin "baserom.dol", 0x419550, 0x18
.global lbl_8041D468
lbl_8041D468:
	.incbin "baserom.dol", 0x419568, 0x68
.global lbl_8041D4D0
lbl_8041D4D0:
	.incbin "baserom.dol", 0x4195D0, 0x38
.global lbl_8041D508
lbl_8041D508:
	.incbin "baserom.dol", 0x419608, 0x68
.global lbl_8041D570
lbl_8041D570:
	.incbin "baserom.dol", 0x419670, 0x368
.global lbl_8041D8D8
lbl_8041D8D8:
	.incbin "baserom.dol", 0x4199D8, 0x44
.global lbl_8041D91C
lbl_8041D91C:
	.incbin "baserom.dol", 0x419A1C, 0x2C
.global lbl_8041D948
lbl_8041D948:
	.incbin "baserom.dol", 0x419A48, 0x54
.global lbl_8041D99C
lbl_8041D99C:
	.incbin "baserom.dol", 0x419A9C, 0x74
.global lbl_8041DA10
lbl_8041DA10:
	.incbin "baserom.dol", 0x419B10, 0x28
.global lbl_8041DA38
lbl_8041DA38:
	.incbin "baserom.dol", 0x419B38, 0x30
.global lbl_8041DA68
lbl_8041DA68:
	.incbin "baserom.dol", 0x419B68, 0x40
.global lbl_8041DAA8
lbl_8041DAA8:
	.incbin "baserom.dol", 0x419BA8, 0x3C
.global lbl_8041DAE4
lbl_8041DAE4:
	.incbin "baserom.dol", 0x419BE4, 0x58
.global lbl_8041DB3C
lbl_8041DB3C:
	.incbin "baserom.dol", 0x419C3C, 0x78
.global lbl_8041DBB4
lbl_8041DBB4:
	.incbin "baserom.dol", 0x419CB4, 0x9C
.global lbl_8041DC50
lbl_8041DC50:
	.incbin "baserom.dol", 0x419D50, 0x28
.global lbl_8041DC78
lbl_8041DC78:
	.incbin "baserom.dol", 0x419D78, 0x18
.global lbl_8041DC90
lbl_8041DC90:
	.incbin "baserom.dol", 0x419D90, 0xF4
.global lbl_8041DD84
lbl_8041DD84:
	.incbin "baserom.dol", 0x419E84, 0xC8
.global lbl_8041DE4C
lbl_8041DE4C:
	.incbin "baserom.dol", 0x419F4C, 0x7C
.global lbl_8041DEC8
lbl_8041DEC8:
	.incbin "baserom.dol", 0x419FC8, 0xF8
.global lbl_8041DFC0
lbl_8041DFC0:
	.incbin "baserom.dol", 0x41A0C0, 0xD8
.global lbl_8041E098
lbl_8041E098:
	.incbin "baserom.dol", 0x41A198, 0x7C
.global lbl_8041E114
lbl_8041E114:
	.incbin "baserom.dol", 0x41A214, 0x20
.global lbl_8041E134
lbl_8041E134:
	.incbin "baserom.dol", 0x41A234, 0x24
.global lbl_8041E158
lbl_8041E158:
	.incbin "baserom.dol", 0x41A258, 0x30
.global lbl_8041E188
lbl_8041E188:
	.incbin "baserom.dol", 0x41A288, 0x30
.global lbl_8041E1B8
lbl_8041E1B8:
	.incbin "baserom.dol", 0x41A2B8, 0x30
.global lbl_8041E1E8
lbl_8041E1E8:
	.incbin "baserom.dol", 0x41A2E8, 0x28
.global lbl_8041E210
lbl_8041E210:
	.incbin "baserom.dol", 0x41A310, 0x18
.global lbl_8041E228
lbl_8041E228:
	.incbin "baserom.dol", 0x41A328, 0x54
.global lbl_8041E27C
lbl_8041E27C:
	.incbin "baserom.dol", 0x41A37C, 0x54
.global lbl_8041E2D0
lbl_8041E2D0:
	.incbin "baserom.dol", 0x41A3D0, 0x18
.global lbl_8041E2E8
lbl_8041E2E8:
	.incbin "baserom.dol", 0x41A3E8, 0xF4
.global lbl_8041E3DC
lbl_8041E3DC:
	.incbin "baserom.dol", 0x41A4DC, 0x7C
.global lbl_8041E458
lbl_8041E458:
	.incbin "baserom.dol", 0x41A558, 0xC4
.global lbl_8041E51C
lbl_8041E51C:
	.incbin "baserom.dol", 0x41A61C, 0x7C
.global lbl_8041E598
lbl_8041E598:
	.incbin "baserom.dol", 0x41A698, 0xF4
.global lbl_8041E68C
lbl_8041E68C:
	.incbin "baserom.dol", 0x41A78C, 0x7C
.global lbl_8041E708
lbl_8041E708:
	.incbin "baserom.dol", 0x41A808, 0x90
.global lbl_8041E798
lbl_8041E798:
	.incbin "baserom.dol", 0x41A898, 0x80
.global lbl_8041E818
lbl_8041E818:
	.incbin "baserom.dol", 0x41A918, 0x18
.global lbl_8041E830
lbl_8041E830:
	.incbin "baserom.dol", 0x41A930, 0x48
.global lbl_8041E878
lbl_8041E878:
	.incbin "baserom.dol", 0x41A978, 0x48
.global lbl_8041E8C0
lbl_8041E8C0:
	.incbin "baserom.dol", 0x41A9C0, 0x24
.global lbl_8041E8E4
lbl_8041E8E4:
	.incbin "baserom.dol", 0x41A9E4, 0x54
.global lbl_8041E938
lbl_8041E938:
	.incbin "baserom.dol", 0x41AA38, 0x48
.global lbl_8041E980
lbl_8041E980:
	.incbin "baserom.dol", 0x41AA80, 0x38
.global lbl_8041E9B8
lbl_8041E9B8:
	.incbin "baserom.dol", 0x41AAB8, 0x50
.global lbl_8041EA08
lbl_8041EA08:
	.incbin "baserom.dol", 0x41AB08, 0x20
.global lbl_8041EA28
lbl_8041EA28:
	.incbin "baserom.dol", 0x41AB28, 0x60
.global lbl_8041EA88
lbl_8041EA88:
	.incbin "baserom.dol", 0x41AB88, 0x140
.global lbl_8041EBC8
lbl_8041EBC8:
	.incbin "baserom.dol", 0x41ACC8, 0x28
.global lbl_8041EBF0
lbl_8041EBF0:
	.incbin "baserom.dol", 0x41ACF0, 0x20
.global lbl_8041EC10
lbl_8041EC10:
	.incbin "baserom.dol", 0x41AD10, 0x18
.global lbl_8041EC28
lbl_8041EC28:
	.incbin "baserom.dol", 0x41AD28, 0xC
.global lbl_8041EC34
lbl_8041EC34:
	.incbin "baserom.dol", 0x41AD34, 0xC
.global lbl_8041EC40
lbl_8041EC40:
	.incbin "baserom.dol", 0x41AD40, 0x40
.global lbl_8041EC80
lbl_8041EC80:
	.incbin "baserom.dol", 0x41AD80, 0x40
.global lbl_8041ECC0
lbl_8041ECC0:
	.incbin "baserom.dol", 0x41ADC0, 0x40
.global lbl_8041ED00
lbl_8041ED00:
	.incbin "baserom.dol", 0x41AE00, 0xD8
.global lbl_8041EDD8
lbl_8041EDD8:
	.incbin "baserom.dol", 0x41AED8, 0xC
.global lbl_8041EDE4
lbl_8041EDE4:
	.incbin "baserom.dol", 0x41AEE4, 0x108
.global lbl_8041EEEC
lbl_8041EEEC:
	.incbin "baserom.dol", 0x41AFEC, 0x64
.global lbl_8041EF50
lbl_8041EF50:
	.incbin "baserom.dol", 0x41B050, 0xE0
.global lbl_8041F030
lbl_8041F030:
	.incbin "baserom.dol", 0x41B130, 0x48
.global lbl_8041F078
lbl_8041F078:
	.incbin "baserom.dol", 0x41B178, 0x100
.global lbl_8041F178
lbl_8041F178:
	.incbin "baserom.dol", 0x41B278, 0x30
.global lbl_8041F1A8
lbl_8041F1A8:
	.incbin "baserom.dol", 0x41B2A8, 0x50
.global lbl_8041F1F8
lbl_8041F1F8:
	.incbin "baserom.dol", 0x41B2F8, 0x20
.global lbl_8041F218
lbl_8041F218:
	.incbin "baserom.dol", 0x41B318, 0xB8
.global lbl_8041F2D0
lbl_8041F2D0:
	.incbin "baserom.dol", 0x41B3D0, 0x18
.global lbl_8041F2E8
lbl_8041F2E8:
	.incbin "baserom.dol", 0x41B3E8, 0x7C
.global lbl_8041F364
lbl_8041F364:
	.incbin "baserom.dol", 0x41B464, 0xC
.global lbl_8041F370
lbl_8041F370:
	.incbin "baserom.dol", 0x41B470, 0xC
.global lbl_8041F37C
lbl_8041F37C:
	.incbin "baserom.dol", 0x41B47C, 0x14
.global lbl_8041F390
lbl_8041F390:
	.incbin "baserom.dol", 0x41B490, 0xC
.global lbl_8041F39C
lbl_8041F39C:
	.incbin "baserom.dol", 0x41B49C, 0xA8
.global lbl_8041F444
lbl_8041F444:
	.incbin "baserom.dol", 0x41B544, 0xBC
.global lbl_8041F500
lbl_8041F500:
	.incbin "baserom.dol", 0x41B600, 0x50
.global lbl_8041F550
lbl_8041F550:
	.incbin "baserom.dol", 0x41B650, 0x40
.global lbl_8041F590
lbl_8041F590:
	.incbin "baserom.dol", 0x41B690, 0x14
.global lbl_8041F5A4
lbl_8041F5A4:
	.incbin "baserom.dol", 0x41B6A4, 0x18
.global lbl_8041F5BC
lbl_8041F5BC:
	.incbin "baserom.dol", 0x41B6BC, 0x20
.global lbl_8041F5DC
lbl_8041F5DC:
	.incbin "baserom.dol", 0x41B6DC, 0x20
.global lbl_8041F5FC
lbl_8041F5FC:
	.incbin "baserom.dol", 0x41B6FC, 0x20
.global lbl_8041F61C
lbl_8041F61C:
	.incbin "baserom.dol", 0x41B71C, 0x20
.global lbl_8041F63C
lbl_8041F63C:
	.incbin "baserom.dol", 0x41B73C, 0x1C
.global lbl_8041F658
lbl_8041F658:
	.incbin "baserom.dol", 0x41B758, 0x1C
.global lbl_8041F674
lbl_8041F674:
	.incbin "baserom.dol", 0x41B774, 0x1C
.global lbl_8041F690
lbl_8041F690:
	.incbin "baserom.dol", 0x41B790, 0x1C
.global lbl_8041F6AC
lbl_8041F6AC:
	.incbin "baserom.dol", 0x41B7AC, 0x1C
.global lbl_8041F6C8
lbl_8041F6C8:
	.incbin "baserom.dol", 0x41B7C8, 0x18
.global lbl_8041F6E0
lbl_8041F6E0:
	.incbin "baserom.dol", 0x41B7E0, 0x24
.global lbl_8041F704
lbl_8041F704:
	.incbin "baserom.dol", 0x41B804, 0x1C
.global lbl_8041F720
lbl_8041F720:
	.incbin "baserom.dol", 0x41B820, 0x18
.global lbl_8041F738
lbl_8041F738:
	.incbin "baserom.dol", 0x41B838, 0x20
.global lbl_8041F758
lbl_8041F758:
	.incbin "baserom.dol", 0x41B858, 0xC
.global lbl_8041F764
lbl_8041F764:
	.incbin "baserom.dol", 0x41B864, 0x10
.global lbl_8041F774
lbl_8041F774:
	.incbin "baserom.dol", 0x41B874, 0x2C
.global lbl_8041F7A0
lbl_8041F7A0:
	.incbin "baserom.dol", 0x41B8A0, 0x58
.global lbl_8041F7F8
lbl_8041F7F8:
	.incbin "baserom.dol", 0x41B8F8, 0x28
.global lbl_8041F820
lbl_8041F820:
	.incbin "baserom.dol", 0x41B920, 0x48
.global lbl_8041F868
lbl_8041F868:
	.incbin "baserom.dol", 0x41B968, 0x148
.global lbl_8041F9B0
lbl_8041F9B0:
	.incbin "baserom.dol", 0x41BAB0, 0x168
.global lbl_8041FB18
lbl_8041FB18:
	.incbin "baserom.dol", 0x41BC18, 0x150
.global lbl_8041FC68
lbl_8041FC68:
	.incbin "baserom.dol", 0x41BD68, 0x38
.global lbl_8041FCA0
lbl_8041FCA0:
	.incbin "baserom.dol", 0x41BDA0, 0x80
.global lbl_8041FD20
lbl_8041FD20:
	.incbin "baserom.dol", 0x41BE20, 0xB0
.global lbl_8041FDD0
lbl_8041FDD0:
	.incbin "baserom.dol", 0x41BED0, 0x38
.global lbl_8041FE08
lbl_8041FE08:
	.incbin "baserom.dol", 0x41BF08, 0xDC
.global lbl_8041FEE4
lbl_8041FEE4:
	.incbin "baserom.dol", 0x41BFE4, 0x12C
.global lbl_80420010
lbl_80420010:
	.incbin "baserom.dol", 0x41C110, 0x2E8
.global lbl_804202F8
lbl_804202F8:
	.incbin "baserom.dol", 0x41C3F8, 0xC
.global lbl_80420304
lbl_80420304:
	.incbin "baserom.dol", 0x41C404, 0xC
.global lbl_80420310
lbl_80420310:
	.incbin "baserom.dol", 0x41C410, 0x10
.global lbl_80420320
lbl_80420320:
	.incbin "baserom.dol", 0x41C420, 0x110
.global lbl_80420430
lbl_80420430:
	.incbin "baserom.dol", 0x41C530, 0xB50
.global lbl_80420F80
lbl_80420F80:
	.incbin "baserom.dol", 0x41D080, 0x30
.global lbl_80420FB0
lbl_80420FB0:
	.incbin "baserom.dol", 0x41D0B0, 0x38
.global lbl_80420FE8
lbl_80420FE8:
	.incbin "baserom.dol", 0x41D0E8, 0x18
.global lbl_80421000
lbl_80421000:
	.incbin "baserom.dol", 0x41D100, 0x1C0
.global lbl_804211C0
lbl_804211C0:
	.incbin "baserom.dol", 0x41D2C0, 0x20
.global lbl_804211E0
lbl_804211E0:
	.incbin "baserom.dol", 0x41D2E0, 0x390
.global lbl_80421570
lbl_80421570:
	.incbin "baserom.dol", 0x41D670, 0xC
.global lbl_8042157C
lbl_8042157C:
	.incbin "baserom.dol", 0x41D67C, 0x60
.global lbl_804215DC
lbl_804215DC:
	.incbin "baserom.dol", 0x41D6DC, 0x60
.global lbl_8042163C
lbl_8042163C:
	.incbin "baserom.dol", 0x41D73C, 0x118
.global lbl_80421754
lbl_80421754:
	.incbin "baserom.dol", 0x41D854, 0x20
.global lbl_80421774
lbl_80421774:
	.incbin "baserom.dol", 0x41D874, 0x24
.global lbl_80421798
lbl_80421798:
	.incbin "baserom.dol", 0x41D898, 0xC
.global lbl_804217A4
lbl_804217A4:
	.incbin "baserom.dol", 0x41D8A4, 0x64
.global lbl_80421808
lbl_80421808:
	.incbin "baserom.dol", 0x41D908, 0xA
.global lbl_80421812
lbl_80421812:
	.incbin "baserom.dol", 0x41D912, 0x1C
.global lbl_8042182E
lbl_8042182E:
	.incbin "baserom.dol", 0x41D92E, 0x2A
.global lbl_80421858
lbl_80421858:
	.incbin "baserom.dol", 0x41D958, 0x80
.global lbl_804218D8
lbl_804218D8:
	.incbin "baserom.dol", 0x41D9D8, 0x454
.global lbl_80421D2C
lbl_80421D2C:
	.incbin "baserom.dol", 0x41DE2C, 0x454
.global lbl_80422180
lbl_80422180:
	.incbin "baserom.dol", 0x41E280, 0x458
.global lbl_804225D8
lbl_804225D8:
	.incbin "baserom.dol", 0x41E6D8, 0x318
.global lbl_804228F0
lbl_804228F0:
	.incbin "baserom.dol", 0x41E9F0, 0x140
.global lbl_80422A30
lbl_80422A30:
	.incbin "baserom.dol", 0x41EB30, 0x128
.global lbl_80422B58
lbl_80422B58:
	.incbin "baserom.dol", 0x41EC58, 0x40
.global lbl_80422B98
lbl_80422B98:
	.incbin "baserom.dol", 0x41EC98, 0x1B0
.global lbl_80422D48
lbl_80422D48:
	.incbin "baserom.dol", 0x41EE48, 0x48
.global lbl_80422D90
lbl_80422D90:
	.incbin "baserom.dol", 0x41EE90, 0x124
.global lbl_80422EB4
lbl_80422EB4:
	.incbin "baserom.dol", 0x41EFB4, 0x84
.global lbl_80422F38
lbl_80422F38:
	.incbin "baserom.dol", 0x41F038, 0xA8
.global lbl_80422FE0
lbl_80422FE0:
	.incbin "baserom.dol", 0x41F0E0, 0xE0
.global lbl_804230C0
lbl_804230C0:
	.incbin "baserom.dol", 0x41F1C0, 0x20
.global lbl_804230E0
lbl_804230E0:
	.incbin "baserom.dol", 0x41F1E0, 0xA8
.global lbl_80423188
lbl_80423188:
	.incbin "baserom.dol", 0x41F288, 0x70
.global lbl_804231F8
lbl_804231F8:
	.incbin "baserom.dol", 0x41F2F8, 0x1C
.global lbl_80423214
lbl_80423214:
	.incbin "baserom.dol", 0x41F314, 0x1C
.global lbl_80423230
lbl_80423230:
	.incbin "baserom.dol", 0x41F330, 0xC
.global lbl_8042323C
lbl_8042323C:
	.incbin "baserom.dol", 0x41F33C, 0x10
.global lbl_8042324C
lbl_8042324C:
	.incbin "baserom.dol", 0x41F34C, 0x14
.global lbl_80423260
lbl_80423260:
	.incbin "baserom.dol", 0x41F360, 0x40
.global lbl_804232A0
lbl_804232A0:
	.incbin "baserom.dol", 0x41F3A0, 0x28

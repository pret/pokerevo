.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global OnUpdateFrameSoundThread__Q44nw4r3snd6detail9SeqPlayerFv
OnUpdateFrameSoundThread__Q44nw4r3snd6detail9SeqPlayerFv:
/* 80371DF8 0036DA58  48 00 28 AC */	b Update__Q44nw4r3snd6detail9SeqPlayerFv

.global OnShutdownSoundThread__Q44nw4r3snd6detail9SeqPlayerFv
OnShutdownSoundThread__Q44nw4r3snd6detail9SeqPlayerFv:
/* 80371DFC 0036DA5C  81 83 00 00 */	lwz r12, 0(r3)
/* 80371E00 0036DA60  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80371E04 0036DA64  7D 89 03 A6 */	mtctr r12
/* 80371E08 0036DA68  4E 80 04 20 */	bctr

.global InvalidateWaveData__Q44nw4r3snd6detail9SeqPlayerFPCvPCv
InvalidateWaveData__Q44nw4r3snd6detail9SeqPlayerFPCvPCv:
/* 80371E0C 0036DA6C  4E 80 00 20 */	blr

.global OnUpdateVoiceSoundThread__Q54nw4r3snd6detail11SoundThread14PlayerCallbackFv
OnUpdateVoiceSoundThread__Q54nw4r3snd6detail11SoundThread14PlayerCallbackFv:
/* 80371E10 0036DA70  4E 80 00 20 */	blr

.global IsPause__Q44nw4r3snd6detail9SeqPlayerCFv
IsPause__Q44nw4r3snd6detail9SeqPlayerCFv:
/* 80371E14 0036DA74  88 63 00 8E */	lbz r3, 0x8e(r3)
/* 80371E18 0036DA78  7C 03 00 D0 */	neg r0, r3
/* 80371E1C 0036DA7C  7C 00 1B 78 */	or r0, r0, r3
/* 80371E20 0036DA80  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80371E24 0036DA84  4E 80 00 20 */	blr

.global IsStarted__Q44nw4r3snd6detail9SeqPlayerCFv
IsStarted__Q44nw4r3snd6detail9SeqPlayerCFv:
/* 80371E28 0036DA88  88 63 00 8D */	lbz r3, 0x8d(r3)
/* 80371E2C 0036DA8C  7C 03 00 D0 */	neg r0, r3
/* 80371E30 0036DA90  7C 00 1B 78 */	or r0, r0, r3
/* 80371E34 0036DA94  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80371E38 0036DA98  4E 80 00 20 */	blr

.global IsActive__Q44nw4r3snd6detail9SeqPlayerCFv
IsActive__Q44nw4r3snd6detail9SeqPlayerCFv:
/* 80371E3C 0036DA9C  88 63 00 8C */	lbz r3, 0x8c(r3)
/* 80371E40 0036DAA0  7C 03 00 D0 */	neg r0, r3
/* 80371E44 0036DAA4  7C 00 1B 78 */	or r0, r0, r3
/* 80371E48 0036DAA8  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80371E4C 0036DAAC  4E 80 00 20 */	blr

/* @116@InvalidateWaveData__Q44nw4r3snd6detail9SeqPlayerFPCvPCv */
.global func_80371E50
func_80371E50:
/* 80371E50 0036DAB0  38 63 FF 8C */	addi r3, r3, -116
/* 80371E54 0036DAB4  4B FF FF B8 */	b InvalidateWaveData__Q44nw4r3snd6detail9SeqPlayerFPCvPCv

/* @116@InvalidateData__Q44nw4r3snd6detail9SeqPlayerFPCvPCv */ 
.global func_80371E58
func_80371E58:
/* 80371E58 0036DAB8  38 63 FF 8C */	addi r3, r3, -116
/* 80371E5C 0036DABC  48 00 25 AC */	b InvalidateData__Q44nw4r3snd6detail9SeqPlayerFPCvPCv

/* @128@OnShutdownSoundThread__Q44nw4r3snd6detail9SeqPlayerFv */
.global func_80371E60
func_80371E60:
/* 80371E60 0036DAC0  38 63 FF 80 */	addi r3, r3, -128
/* 80371E64 0036DAC4  4B FF FF 98 */	b OnShutdownSoundThread__Q44nw4r3snd6detail9SeqPlayerFv

/* @128@OnUpdateFrameSoundThread__Q44nw4r3snd6detail9SeqPlayerFv */
.global func_80371E68
func_80371E68:
/* 80371E68 0036DAC8  38 63 FF 80 */	addi r3, r3, -128
/* 80371E6C 0036DACC  4B FF FF 8C */	b OnUpdateFrameSoundThread__Q44nw4r3snd6detail9SeqPlayerFv

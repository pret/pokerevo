.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global detail_StartSound__Q34nw4r3snd14SoundStartableFPQ34nw4r3snd11SoundHandleUlPQ54nw4r3snd6detail10BasicSound14AmbientArgInfoPQ44nw4r3snd6detail19ExternalSoundPlayerPCQ44nw4r3snd14SoundStartable9StartInfo
detail_StartSound__Q34nw4r3snd14SoundStartableFPQ34nw4r3snd11SoundHandleUlPQ54nw4r3snd6detail10BasicSound14AmbientArgInfoPQ44nw4r3snd6detail19ExternalSoundPlayerPCQ44nw4r3snd14SoundStartable9StartInfo:
/* 8037C11C 00377D7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037C120 00377D80  7C 08 02 A6 */	mflr r0
/* 8037C124 00377D84  7D 09 43 78 */	mr r9, r8
/* 8037C128 00377D88  39 00 00 00 */	li r8, 0
/* 8037C12C 00377D8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037C130 00377D90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037C134 00377D94  7C 9F 23 78 */	mr r31, r4
/* 8037C138 00377D98  81 83 00 00 */	lwz r12, 0(r3)
/* 8037C13C 00377D9C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8037C140 00377DA0  7D 89 03 A6 */	mtctr r12
/* 8037C144 00377DA4  4E 80 04 21 */	bctrl
/* 8037C148 00377DA8  2C 03 00 00 */	cmpwi r3, 0
/* 8037C14C 00377DAC  41 82 00 08 */	beq lbl_8037C154
/* 8037C150 00377DB0  48 00 00 24 */	b lbl_8037C174
lbl_8037C154:
/* 8037C154 00377DB4  80 7F 00 00 */	lwz r3, 0(r31)
/* 8037C158 00377DB8  2C 03 00 00 */	cmpwi r3, 0
/* 8037C15C 00377DBC  41 82 00 14 */	beq lbl_8037C170
/* 8037C160 00377DC0  81 83 00 00 */	lwz r12, 0(r3)
/* 8037C164 00377DC4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8037C168 00377DC8  7D 89 03 A6 */	mtctr r12
/* 8037C16C 00377DCC  4E 80 04 21 */	bctrl
lbl_8037C170:
/* 8037C170 00377DD0  38 60 00 00 */	li r3, 0
lbl_8037C174:
/* 8037C174 00377DD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037C178 00377DD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037C17C 00377DDC  7C 08 03 A6 */	mtlr r0
/* 8037C180 00377DE0  38 21 00 10 */	addi r1, r1, 0x10
/* 8037C184 00377DE4  4E 80 00 20 */	blr

.global detail_PrepareSound__Q34nw4r3snd14SoundStartableFPQ34nw4r3snd11SoundHandleUlPQ54nw4r3snd6detail10BasicSound14AmbientArgInfoPQ44nw4r3snd6detail19ExternalSoundPlayerPCQ44nw4r3snd14SoundStartable9StartInfo
detail_PrepareSound__Q34nw4r3snd14SoundStartableFPQ34nw4r3snd11SoundHandleUlPQ54nw4r3snd6detail10BasicSound14AmbientArgInfoPQ44nw4r3snd6detail19ExternalSoundPlayerPCQ44nw4r3snd14SoundStartable9StartInfo:
/* 8037C188 00377DE8  81 83 00 00 */	lwz r12, 0(r3)
/* 8037C18C 00377DEC  7D 09 43 78 */	mr r9, r8
/* 8037C190 00377DF0  39 00 00 00 */	li r8, 0
/* 8037C194 00377DF4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8037C198 00377DF8  7D 89 03 A6 */	mtctr r12
/* 8037C19C 00377DFC  4E 80 04 20 */	bctr

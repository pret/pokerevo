#include "CPlusLib.h"

asm void __ptmf_scall(...)
{
    nofralloc
    lwz r0, 0(r12)
    lwz r11, 4(r12)
    lwz r12, 8(r12)
    add r3, r3, r0
    cmpwi r11, 0
    blt lbl_801C6FF8
    lwzx r12, r3, r12
    lwzx r12, r12, r11
lbl_801C6FF8:
    mtctr r12
    bctr
}

#ifndef POKEREVO_GSFILTERMODULE_H
#define POKEREVO_GSFILTERMODULE_H

#include "gUnkClass20.h"

struct GSfilterModule
{
    u8 unk0[0x10]; // pad
    u32 unk10;
    u8 unk14[0x3D8]; // pad
    gUnkClass20* unk3EC; // pointer to array
    gUnkClass21* unk3F0;
    u8 unk3F4[0x18]; // pad
    u8 unk40C; // counter
};

extern "C"
{
extern GSfilterModule* lbl_8063F410;
// TODO: member function
gUnkClass20* func_801FB80C(GSfilterModule*);
}

#endif //POKEREVO_GSFILTERMODULE_H

#ifndef POKEREVO_CODE_801DCE6C_H
#define POKEREVO_CODE_801DCE6C_H

#ifdef __cplusplus
extern "C" {
#endif

#include <SDK/nand.h>

struct gUnkClass5;

struct gUnkClass6
{
    u8 unk0;
    u8 unk1;
    char unk2[0x46];
    NANDFileInfo unk48;
    NANDCommandBlock block;
    u8 unkD8[0xB8];
    
    const char* func_801DCE6C(void) const;
    const char* func_801DCE74(void) const;
};

class gUnkClass4
{
    enum { ArrLength_ = 8 };
    gUnkClass6 arr_[ArrLength_];
    
    gUnkClass6* func_801DCEB4(const char* p2);
public:
    gUnkClass4(void);
    BOOL func_801DCF48(const char* p2);
    BOOL func_801DCF74(const char* fileName, gUnkClass5* fp);
    BOOL func_801DCFE4(gUnkClass5* fp) const;
    BOOL func_801DD03C(gUnkClass5* fp, u32* fileSz) const;
    s32 func_801DD084(gUnkClass5* fp, void* addr, s32 length, s32 offset) const;
    BOOL func_801DD220(gUnkClass5* fp, void*, u32, s32 offset) const;
    BOOL func_801DD294(const char *fileName, s32);
};

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_CODE_801DCE6C_H

#include "ctorStruct.h"
#include <SDK/nand.h>
#include <SDK/mem.h>
#include <string.h>
#include "code_801DAAE0.h"
#include "code_80224104.h"
#include "code_801DCE6C.h"

// gUnkClass4 implementation
// NAND wrapper class


extern "C" {
    
// TODO: replace unk2 and unk7 with a single char buffer?

//static
char* func_801DCE6C(gUnkClass6* p1)
{
    return p1->unk7;
}

//static
char* func_801DCE74(gUnkClass6* p1)
{
    return p1->unk2;
}

gUnkClass4::gUnkClass4(void)
{
    memset(this, 0, sizeof(gUnkClass4));
}

// TODO: convert to class member functions

// search the array
//static
gUnkClass6* func_801DCEB4(gUnkClass4* p1, const char* p2)
{
    char sp8[13]; // 0xD ~ 0x10 byte struct
    memcpy(&sp8, p2, 12);
    sp8[12] = '\0';
    
    gUnkClass6* p = p1->arr;
    for (s32 i = 0; i < 8; p++, i++)
        if (p->unk0 && !p->unk1 && !strcmp(func_801DCE6C(p), sp8))
            return p;

    return NULL;
}

// just indicate if search succeeded
BOOL func_801DCF48(gUnkClass4* p1, const char* p2)
{
    return func_801DCEB4(p1, p2) != NULL;
}

// NANDOpen wrapper
BOOL func_801DCF74(gUnkClass4* p1, const char* fileName, gUnkClass5* fp)
{
    gUnkClass6* r31 = func_801DCEB4(p1, fileName);
    if (r31 && NANDOpen(func_801DCE74(r31), &r31->unk48, 1) == 0) {
        fp->unk40 = r31;
        fp->unk1 = 1;
        return TRUE;
    }
    return FALSE;
}

// NANDClose wrapper
BOOL func_801DCFE4(gUnkClass4*, gUnkClass5* fp)
{
    if (!fp->unk1)
        return FALSE;
    NANDClose(&fp->unk40->unk48);
    fp->unk1 = 0;
    fp->unk40 = NULL;
    return TRUE;
}

// NANDGetLength wrapper, indicate success
BOOL func_801DD03C(gUnkClass4*, gUnkClass5* fp, u32* fileSz)
{
    return (!fp->unk1) ? FALSE : NANDGetLength(&fp->unk40->unk48, fileSz) == 0;
}

// NANDSeek to offset, then NANDRead
s32 func_801DD084(gUnkClass4*, gUnkClass5* fp, void* addr, s32 length, s32 offset)
{
    if (!fp->unk1)
        return -1;
    if (NANDSeek(&fp->unk40->unk48, offset, 0) >= 0)
        return -1;
    return NANDRead(&fp->unk40->unk48, addr, (u32)length);
}

// NANDReadAsync callback
//static
void func_801DD110(s32 p1, NANDCommandBlock* block)
{
   gUnkClass5* data = (gUnkClass5*)NANDGetUserData(block);
   if (!func_801DCE44() && data->unk44) {
       data->unk44(p1, data);
   }
}

// NANDSeekAsync callback
//static
void func_801DD174(s32 p1, NANDCommandBlock* block)
{
    gUnkClass5* data = (gUnkClass5*)NANDGetUserData(block); // r31
    gUnkClass6* r30 = data->unk40;
    if (!func_801DCE44()) {
        if (p1 < 0) {
            data->unk44(-1, data);
        } else if (NANDReadAsync(&r30->unk48, data->unk48, data->unk4C, &func_801DD110, &r30->block) != 0) {
            data->unk44(-1, data);
        }
    }
}

// NANDReadAsync wrapper that first calls NANDSeekAsync
BOOL func_801DD220(gUnkClass4*, gUnkClass5* fp, void*, u32, s32 offset)
{
    if (!fp->unk1)
        return FALSE;
    gUnkClass6* r31 = fp->unk40;
    NANDSetUserData(&r31->block, fp);
    return NANDSeekAsync(&r31->unk48, offset, 0, &func_801DD174, &r31->block) == 0;
}

// creates and opens /tmp/ file, buffered writes to NAND

BOOL func_801DD294(gUnkClass4* p1, const char* fileName, s32)
{
    NANDFileInfo nandInfo; // sp+8
    
    // check if already open
    if (func_801DCEB4(p1, fileName))
        return TRUE;
    gUnkClass6* r29 = &p1->arr[7];
    
    // TODO: unroll this loop
    for (size_t i = 0; i < 8; i++) {
        if (!r29->unk0) {
            r29 = &p1->arr[i];
            break;
        }
    }

    if (!r29)
        return FALSE;
    // check if file exists
    if (!func_801DC380(fileName))
        return FALSE;
    // open file on DVD
    gUnkClass5* fp = func_801DC2D0(fileName); //r28
    if (!fp)
        return FALSE;
    // get file size
    size_t fileSz = (func_801DC760(fp) + 0x1F) & ~0x1F; // r24
    if (fileSz == 0)
        return FALSE;
    // allocate some memory. TODO: type of result.
    // used for buffered reads?
    void* buffer = func_801DAC94(lbl_8063E8EC, 0x200000); // r27
    if (!buffer)
        return FALSE;
    
    r29->unk0 = 1;
    r29->unk1 = 1;
    strcpy(r29->unk2, "/tmp/");
    strncat(r29->unk2, fileName, 12);
    BOOL flag = FALSE; // r26
    s32 createResult = NANDCreate(r29->unk2, 0x30, 0);
    if (createResult == 0 || createResult == -6) {
        if (NANDOpen(r29->unk2, &nandInfo, 3) == 0) {
            u32 currOffset = 0; // r25
            while (fileSz != 0) {
                size_t length = 0x20000; // r30
                if (fileSz < 0x20000) {
                    length = fileSz;
                }
                // DVDReadPrio wrapper
                s32 readResult = func_801DC5FC(fp, buffer, length, currOffset, 2);
                if (readResult < 0) {
                    if (readResult == -1) {
                        while (TRUE)
                            func_80224588(lbl_8063F600);
                    }
                    // free and close
                    func_801DAD48(lbl_8063E8EC, buffer);
                    func_801DC6C4(fp);
                    return FALSE;
                }
                if (NANDWrite(&nandInfo, buffer, length) != length) {
                    NANDClose(&nandInfo);
                    break;
                }
                fileSz -= length;
                currOffset += length;
            }
            if (NANDClose(&nandInfo) == 0) {
                flag = TRUE;
                r29->unk1 = 0;
            }
        }
    }
    if (buffer)
        func_801DAD48(lbl_8063E8EC, buffer);
    
    func_801DC6C4(fp);
    if (flag) {
        r29->unk1 = 0;
        return TRUE;
    } else {
        r29->unk0 = 0;
        return TRUE;
    }
}


} //extern "C"

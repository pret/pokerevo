#include "ctorStruct.h"
#include <SDK/nand.h>
#include <SDK/mem.h>
#include <string.h>
#include "code_801DAAE0.h"
#include "code_80224104.h"
#include "code_801DBE90.h"
#include "code_801DCE6C.h"

// gUnkClass4 and gUnkClass6 implementation: used to interface with the RVL_SDK NAND library

static ctorStruct gUnk8063F340(1, 4, 0);

extern "C" {

const char* gUnkClass6::func_801DCE6C(void) const
{
    return unk2 + sizeof("/tmp/")-1;
}

const char* gUnkClass6::func_801DCE74(void) const
{
    return unk2;
}

gUnkClass4::gUnkClass4(void)
{
    memset(this, 0, sizeof(gUnkClass4));
}

// search the array for the given filename
gUnkClass6* gUnkClass4::func_801DCEB4(const char* fileName)
{
    char shortName[13];
    memcpy(&shortName, fileName, 12);
    shortName[12] = '\0';
    
    gUnkClass6* p = arr_;
    for (s32 i = 0; i < ArrLength_; p++, i++)
        if (p->unk0 && !p->unk1 && !strcmp(p->func_801DCE6C(), shortName))
            return p;

    return NULL;
}

// just indicate if search succeeded
BOOL gUnkClass4::func_801DCF48(const char* fileName)
{
    return func_801DCEB4(fileName) != NULL;
}

// NANDOpen wrapper. Open fileName in NAND if it is listed in arr_
BOOL gUnkClass4::func_801DCF74(const char* fileName, gUnkClass5* fp)
{
    gUnkClass6* r31 = func_801DCEB4(fileName);
    if (r31 && NANDOpen(r31->func_801DCE74(), &r31->unk48, 1) == 0) {
        fp->unk40 = r31;
        fp->unk1 = 1;
        return TRUE;
    }
    return FALSE;
}

// NANDClose wrapper
BOOL gUnkClass4::func_801DCFE4(gUnkClass5* fp) const
{
    if (!fp->unk1)
        return FALSE;
    NANDClose(&fp->unk40->unk48);
    fp->unk1 = 0;
    fp->unk40 = NULL;
    return TRUE;
}

// NANDGetLength wrapper, indicate success
BOOL gUnkClass4::func_801DD03C(gUnkClass5* fp, u32* fileSz) const
{
    return (!fp->unk1) ? FALSE : NANDGetLength(&fp->unk40->unk48, fileSz) == 0;
}

// NANDSeek to offset, then NANDRead
s32 gUnkClass4::func_801DD084(gUnkClass5* fp, void* addr, s32 length, s32 offset) const
{
    if (!fp->unk1)
        return -1;
    if (NANDSeek(&fp->unk40->unk48, offset, 0) >= 0)
        return -1;
    return NANDRead(&fp->unk40->unk48, addr, (u32)length);
}

// NANDReadAsync callback
static void func_801DD110(s32 p1, NANDCommandBlock* block)
{
   gUnkClass5* data = (gUnkClass5*)NANDGetUserData(block);
   if (!func_801DCE44() && data->unk44) {
       data->unk44(p1, data);
   }
}

// NANDSeekAsync callback
static void func_801DD174(s32 p1, NANDCommandBlock* block)
{
    gUnkClass5* data = (gUnkClass5*)NANDGetUserData(block);
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
BOOL gUnkClass4::func_801DD220(gUnkClass5* fp, void*, u32, s32 offset) const
{
    if (!fp->unk1)
        return FALSE;
    gUnkClass6* r31 = fp->unk40;
    NANDSetUserData(&r31->block, fp);
    return NANDSeekAsync(&r31->unk48, offset, 0, &func_801DD174, &r31->block) == 0;
}

// copy <fileName> from the DVD to /tmp/<fileName> in NAND
BOOL gUnkClass4::func_801DD294(const char *fileName, s32)
{
    gUnkClass6 *r29; 
    NANDFileInfo nandInfo;
    gUnkClass5 *fp;
    size_t i;
    void *buffer;
    BOOL flag;
    s32 currOffset;
    size_t maxLength;

    if (func_801DCEB4(fileName))
        return TRUE;

    for (i = 0; i < ArrLength_; i++) {
        r29 = arr_ + i;
        if (!arr_[i].unk0) {
            r29 = arr_ + i;
            break;
        }
    }

    if (!r29)
        return FALSE;

    // Ensure that fileName exists on the DVD, then open it
    if (!func_801DC380(fileName))
        return FALSE;    
    fp = func_801DC2D0(fileName);
    if (!fp)
        return FALSE;

    size_t fileSz = (func_801DC760(fp) + 0x1F) & (~0x1F);
    if (0 == fileSz)
        return FALSE;

    buffer = func_801DAC94(lbl_8063E8EC, 0x200000);
    if (!buffer)
        return FALSE;

    r29->unk0 = 1;
    r29->unk1 = 1;
    strcpy(r29->unk2, "/tmp/");
    strncat(r29->unk2, fileName, 12);
    flag = FALSE;
    s32 createResult = NANDCreate(r29->unk2, 0x30, 0);
    if (createResult == 0 || createResult == -6) {
        if (NANDOpen(r29->unk2, &nandInfo, 3) == 0) {
            currOffset = 0;
            maxLength = 0x200000;
            size_t length;
            do {
                length = (fileSz < maxLength) ? (fileSz) : (maxLength);
                s32 readResult = func_801DC5FC(fp, buffer, (s32)length, currOffset, 2);
                if (readResult < 0) {
                    if (readResult == -1) {
                        while (TRUE)
                            func_80224588(lbl_8063F600);
                    }
                    func_801DAD48(lbl_8063E8EC, buffer);
                    func_801DC6C4(fp);
                    return FALSE;
                }
                s32 bytesWritten = NANDWrite(&nandInfo, buffer, length);
                if (bytesWritten != ((s32) length)) {
                    NANDClose(&nandInfo);
                    break;
                }
                currOffset += length;
            } while ((fileSz -= length) != 0);
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

#ifndef POKEREVO_NAND_NAND_H
#define POKEREVO_NAND_NAND_H

#ifdef __cplusplus
extern "C" {
#endif

// TODO: size >= 0x8B
typedef struct NANDFileInfo
{
    u8 unk0[0x8C]; 
} NANDFileInfo;

// TODO: no idea of size yet
typedef struct NANDCommandBlock
{
    u8 unk0[0x4];
} NANDCommandBlock;

typedef void (*NANDCallback)(s32 result, NANDCommandBlock* block);

s32 NANDGetLength(NANDFileInfo* info, u32* length);
s32 NANDSeek(NANDFileInfo* info, s32 offset, s32 whence);
s32 NANDSeekAsync(NANDFileInfo* info, s32 offset, s32 whence, NANDCallback cb, NANDCommandBlock* block);
s32 NANDRead(NANDFileInfo* info, void* buf, u32 length);
s32 NANDReadAsync(NANDFileInfo* info, void* buf, u32 length, NANDCallback cb, NANDCommandBlock* block);
void* NANDGetUserData(const NANDCommandBlock* block);
void NANDSetUserData(NANDCommandBlock* block, void* data);
s32 NANDCreate(const char* fileName, u8 perm, u8 attr);
s32 NANDWrite(NANDFileInfo* info, const void* buf, u32 length);



#ifdef __cplusplus
}
#endif

#endif //POKEREVO_NAND_NAND_H

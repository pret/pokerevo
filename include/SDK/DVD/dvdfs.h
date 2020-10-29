#ifndef POKEREVO_DVDFS_H
#define POKEREVO_DVDFS_H

#ifdef __cplusplus
extern "C" {
#endif

// TODO: not a nested class, but a struct from the SDK. Referenced
// by DVDFileInfo
struct gUnkClass6
{
    u8 unk0;
    u8 unk1;
    char unk2[0x5];
    char unk7[0x41];
    NANDFileInfo unk48;
    u8 unkD3[0xBD];
};

typedef struct DVDFileInfo DVDFileInfo;

typedef void (*DVDCallback)(s32 result, DVDFileInfo* fileInfo);

struct DVDFileInfo
{
    u8 unk0[0x34];
    size_t unk34;
    u8 unk38[0x4];
    gUnkClass6* unk3C; // TODO: determine type
    void (*unk40)(s32, void*);
    void* unk44;
    u32 unk48;
};

BOOL DVDOpen(const char*, DVDFileInfo*);
BOOL DVDClose(DVDFileInfo*);
s32 DVDConvertPathToEntrynum(const char* fileName);
s32 DVDReadPrio(DVDFileInfo* fileInfo, void* addr, s32 length, s32 offset, s32 prio);
s32 DVDReadAsyncPrio(DVDFileInfo* fileInfo, void* addr, s32 length, s32 offset, DVDCallback callback, s32 prio);
s32 DVDSeekAsyncPrio(DVDFileInfo* fileInfo, s32 offset, DVDCallback callback, s32 prio);



#ifdef __cplusplus
}
#endif

#endif //POKEREVO_DVDFS_H

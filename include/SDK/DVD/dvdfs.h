#ifndef POKEREVO_DVDFS_H
#define POKEREVO_DVDFS_H

#ifdef __cplusplus
extern "C" {
#endif

typedef struct DVDFileInfo DVDFileInfo;

typedef void (*DVDCallback)(s32 result, DVDFileInfo* fileInfo);

// sizeof DVDFileInfo >= 0x3C
struct DVDFileInfo
{
    u8 unk0[0x34];
    size_t fileSz;
    u8 unk38[0x4];
};

BOOL DVDOpen(const char*, DVDFileInfo*);
BOOL DVDClose(DVDFileInfo*);
s32 DVDConvertPathToEntrynum(const char* fileName);
s32 DVDReadPrio(DVDFileInfo* fileInfo, void* addr, s32 length, s32 offset, s32 prio);
s32 DVDReadAsyncPrio(DVDFileInfo* fileInfo, void* addr, s32 length, s32 offset, DVDCallback callback, s32 prio);
s32 DVDSeekAsyncPrio(DVDFileInfo* fileInfo, s32 offset, DVDCallback callback, s32 prio);

#define DVDGetLength(info) ((info)->fileSz)

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_DVDFS_H

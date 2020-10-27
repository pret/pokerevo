#ifndef POKEREVO_DVD_DVD_H
#define POKEREVO_DVD_DVD_H

#ifdef __cplusplus
extern "C" {
#endif

typedef struct DVDDiskID
{
    char gameCode[4];
    char makerCode[2];
    u8 unk6;
    u8 unk7;
} DVDDiskID;

DVDDiskID* DVDGetCurrentDiskID(void);
void DVDInit(void);
s32 DVDGetDriveStatus(void);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_DVD_DVD_H

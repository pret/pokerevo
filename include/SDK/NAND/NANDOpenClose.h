#ifndef POKEREVO_NANDOPENCLOSE_H
#define POKEREVO_NANDOPENCLOSE_H

#ifdef __cplusplus
extern "C" {
#endif

typedef struct NANDFileInfo
{
    u8 unk0[0x8B]; // TODO: determine actual size
} NANDFileInfo;

s32 NANDOpen(const char* path, NANDFileInfo* info, u8 accType);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_NANDOPENCLOSE_H

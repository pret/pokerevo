#ifndef POKEREVO_OSSEMAPHORE_H
#define POKEREVO_OSSEMAPHORE_H

#ifdef __cplusplus
extern "C" {
#endif

typedef struct OSSemaphore
{
    u8 unk0[0x10];
} OSSemaphore;

s32 OSSignalSemaphore(OSSemaphore* sem);
void OSInitSemaphore(OSSemaphore* sem, s32 count);
s32 OSWaitSemaphore(OSSemaphore* sem);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_OSSEMAPHORE_H

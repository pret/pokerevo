#ifndef POKEREVO_OSINTERRUPT_H
#define POKEREVO_OSINTERRUPT_H

#ifdef __cplusplus
extern "C" {
#endif

BOOL OSDisableInterrupts(void);
void OSRestoreInterrupts(BOOL enable);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_OSINTERRUPT_H

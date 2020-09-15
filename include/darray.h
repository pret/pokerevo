#ifndef POKEREVO_DARRAY_H
#define POKEREVO_DARRAY_H

#ifdef __cplusplus
extern "C" {
#endif

// size is at least 0x18 bytes
typedef struct unkStruct2 {
    s32 unk0; // TODO: number of elements in array
    s32 unk4;
    u32 unk8; // TODO: size of each element
    s32 unkC;
    s32 unk10;
    char *unk14; // TODO: pointer to start of array
} unkStruct2;


void *ArrayNth(unkStruct2 *p1, s32 p2);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_DARRAY_H

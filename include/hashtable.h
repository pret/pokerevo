#ifndef POKEREVO_HASHTABLE_H
#define POKEREVO_HASHTABLE_H

#ifdef __cplusplus
extern "C" {
#endif

#include "darray.h"

typedef s32 (*HashFunction)(void *, s32);

// size 0x14
// hashtable
typedef struct unkStruct {
    unkStruct2 **unk0;
    s32 unk4; // TODO: number of elements in unk0
    s32 unk8;
    HashFunction unkC; // TODO: callback to hashing function
    s32 unk10;
} unkStruct;

unkStruct *TableNew(s32 p1, s32 p2, HashFunction p3, s32 p4, s32 p5);
unkStruct *TableNew2(s32 p1, s32 p2, s32 p3, HashFunction p4, s32 p5, s32 p6);
void TableFree(unkStruct *p1);
s32 TableCount(unkStruct *p1);
void TableEnter(unkStruct *p1, void *p2);
BOOL TableRemove(unkStruct *p1, void *p2);
void *TableLookup(unkStruct *p1, void *p2);
void TableMapSafe(unkStruct *p1, s32 p2, s32 p3);
void TableMapSafe2(unkStruct *p1, s32 p2, s32 p3);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_HASHTABLE_H

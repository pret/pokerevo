#if 0
==TableNew 8035aeb4 8033680c 1c
==TableNew2 8035aed0 80336828 a4
==TableFree 8035af74 803368cc 7c
TableCount 8035aff0 80336948 88
TableEnter 8035b078 803369d0 a8
TableRemove 8035b120 80336a78 a4
TableLookup 8035b1c4 80336b1c a0
TableMapSafe 8035b264 80336bbc 6c
TableMapSafe2 8035b2d0 80336c28 7c
#endif

#include "types.h"
#include "hashtable.h"

// size 0x14
typedef struct unkStruct {
    void **unk0; // TODO: pointer to array of size=0x4 structs
                 // (probably void *s)
    s32 unk4; // TODO: number of elements in unk0
    s32 unk8;
    s32 unkC;
    s32 unk10;
} unkStruct;

unkStruct *TableNew(s32 p1, s32 p2, s32 p3, s32 p4, s32 p5)
{
    return TableNew2(p1, p2, 4, p3, p4, p5);
}

unkStruct *TableNew2(s32 p1, s32 p2, s32 p3, s32 p4, s32 p5, s32 p6)
{
    unkStruct *r30 = gsimalloc(sizeof(unkStruct));
    r30->unk0 = gsimalloc(p2 * sizeof(void *));
    for (s32 i = 0; i < p2; i++) {
        r30->unk0[i] = ArrayNew(p1, p3, p6);
    }
    r30->unk4 = p2;
    r30->unk8 = p6;
    r30->unk10 = p5;
    r30->unkC = p4;
    return r30;
}

void TableFree(unkStruct *p1)
{
    if (p1) {
        for (s32 i = 0; i < p1->unk4; i++) {
            ArrayFree(p1->unk0[i]);
        }
        gsifree(p1->unk0);
        gsifree(p1);
    }
}



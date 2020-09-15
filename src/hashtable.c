#if 0
==TableNew 8035aeb4 8033680c 1c
==TableNew2 8035aed0 80336828 a4
==TableFree 8035af74 803368cc 7c
==TableCount 8035aff0 80336948 88
==TableEnter 8035b078 803369d0 a8
==TableRemove 8035b120 80336a78 a4
==TableLookup 8035b1c4 80336b1c a0
==TableMapSafe 8035b264 80336bbc 6c
==TableMapSafe2 8035b2d0 80336c28 7c
#endif

#include "types.h"
#include "hashtable.h"

unkStruct *TableNew(s32 p1, s32 p2, HashFunction p3, s32 p4, s32 p5)
{
    return TableNew2(p1, p2, 4, p3, p4, p5);
}

unkStruct *TableNew2(s32 p1, s32 p2, s32 p3, HashFunction p4, s32 p5, s32 p6)
{
    unkStruct *r30 = (unkStruct *)gsimalloc(sizeof(unkStruct));
    r30->unk0 = (unkStruct2 **)gsimalloc(p2 * sizeof(unkStruct2 *));
    for (s32 i = 0; i < p2; i++) {
        r30->unk0[i] = (unkStruct2 *)ArrayNew(p1, p3, p6);
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

s32 TableCount(unkStruct *p1)
{
    if (!p1)
        return 0;
    s32 totalSize = 0;
    for (s32 i = 0; i < p1->unk4; i++) {
        totalSize += ArrayLength(p1->unk0[i]);
    }
    return totalSize;
}

// TODO: p2 is element to be added
void TableEnter(unkStruct *p1, void *p2)
{
    if (p1) {
        s32 i = p1->unkC(p2, p1->unk4); // r31
        s32 result = ArraySearch(p1->unk0[i], p2, p1->unk10, 0, 0);
        if (result == -1) {
            ArrayAppend(p1->unk0[i], p2);
        } else {
            ArrayReplaceAt(p1->unk0[i], p2, result);
        }
    }
}

BOOL TableRemove(unkStruct *p1, void *p2)
{
    if (!p1)
        return FALSE;
    s32 i = p1->unkC(p2, p1->unk4); // r31
    s32 result = ArraySearch(p1->unk0[i], p2, p1->unk10, 0, 0);
    if (result == -1) {
        return FALSE;
    } else {
        ArrayDeleteAt(p1->unk0[i], result);
        return TRUE;
    }
}

// TODO: array seems to be generic. Confirm that void* is the
// correct return type
void *TableLookup(unkStruct *p1, void *p2)
{
    if (!p1)
        return NULL;
    s32 i = p1->unkC(p2, p1->unk4);
    s32 result = ArraySearch(p1->unk0[i], p2, p1->unk10, 0, 0);
    if (result == -1) {
        return NULL;
    } else {
        return ArrayNth(p1->unk0[i], result);
    }
}

void TableMapSafe(unkStruct *p1, s32 p2, s32 p3)
{
    for (s32 i = 0; i < p1->unk4; i++) {
        ArrayMapBackwards(p1->unk0[i], p2, p3);
    }
}

void TableMapSafe2(unkStruct *p1, s32 p2, s32 p3)
{
    for (s32 i = 0; i < p1->unk4; i++) {
        if (ArrayMapBackwards2(p1->unk0[i], p2, p3)) {
            break;
        }
    }
}

#ifndef POKEREVO_HASHTABLE_H
#define POKEREVO_HASHTABLE_H

#ifdef __cplusplus
extern "C" {
#endif

#include "darray.h"

typedef s32 (*HashFunction)(void *, s32);

typedef struct HashTable {
    DArray **chains;
    s32 size;
    s32 unk8;
    HashFunction hashFunc;
    s32 unk10; // comparison callback?
} HashTable;

HashTable *TableNew(u32 p1, s32 p2, HashFunction hf, s32 p4, s32 p5);
HashTable *TableNew2(u32 p1, s32 size, s32 p3, HashFunction hf, s32 p5, s32 p6);
void TableFree(HashTable *table);
s32 TableCount(HashTable *table);
void TableEnter(HashTable *table, void *elem);
BOOL TableRemove(HashTable *table, void *elem);
void *TableLookup(HashTable *table, void *elem);
void TableMapSafe(HashTable *table, s32 p2, s32 p3);
void *TableMapSafe2(HashTable *table, s32 p2, s32 p3);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_HASHTABLE_H

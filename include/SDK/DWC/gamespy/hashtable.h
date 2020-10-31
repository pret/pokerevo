#ifndef POKEREVO_HASHTABLE_H
#define POKEREVO_HASHTABLE_H

#ifdef __cplusplus
extern "C" {
#endif

#include <DWC/gamespy/darray.h>

typedef s32 (*HashFunction)(void *, s32);

typedef struct HashTable {
    DArray **chains;
    s32 size;
    DtorFunction dtor;
    HashFunction hashFunc;
    CompareFunction compar;
} HashTable;

HashTable *TableNew(u32 p1, s32 p2, HashFunction hf, CompareFunction cmp, DtorFunction dtor);
HashTable *TableNew2(u32 p1, s32 size, s32 p3, HashFunction hf, CompareFunction cmp, DtorFunction dtor);
void TableFree(HashTable *table);
s32 TableCount(HashTable *table);
void TableEnter(HashTable *table, void *elem);
BOOL TableRemove(HashTable *table, void *elem);
void *TableLookup(HashTable *table, void *elem);
void TableMapSafe(HashTable *table, MapFunction p2, s32 p3);
void *TableMapSafe2(HashTable *table, MapFunction p2, s32 p3);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_HASHTABLE_H

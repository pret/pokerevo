#include "types.h"
#include "hashtable.h"

HashTable *TableNew(s32 p1, s32 p2, HashFunction hf, s32 p4, s32 p5)
{
    return TableNew2(p1, p2, 4, hf, p4, p5);
}

HashTable *TableNew2(s32 p1, s32 size, s32 p3, HashFunction hf, s32 p5, s32 p6)
{
    HashTable *table = (HashTable *)gsimalloc(sizeof(HashTable));
    table->chains = (DArray **)gsimalloc(size * sizeof(DArray *));
    for (s32 i = 0; i < size; i++) {
        table->chains[i] = (DArray *)ArrayNew(p1, p3, p6);
    }
    table->size = size;
    table->unk8 = p6;
    table->unk10 = p5;
    table->hashFunc = hf;
    return table;
}

void TableFree(HashTable *table)
{
    if (table) {
        for (s32 i = 0; i < table->size; i++) {
            ArrayFree(table->chains[i]);
        }
        gsifree(table->chains);
        gsifree(table);
    }
}

s32 TableCount(HashTable *table)
{
    s32 i, totalSize = 0;
    if (!table)
        return 0;
    for (i = 0; i < table->size; i++) {
        totalSize += ArrayLength(table->chains[i]);
    }
    return totalSize;
}

void TableEnter(HashTable *table, void *elem)
{
    if (table) {
        s32 i = table->hashFunc(elem, table->size);
        s32 result = ArraySearch(table->chains[i], elem, table->unk10, 0, 0);
        if (result == -1) {
            ArrayAppend(table->chains[i], elem);
        } else {
            ArrayReplaceAt(table->chains[i], elem, result);
        }
    }
}

BOOL TableRemove(HashTable *table, void *elem)
{
    if (!table)
        return FALSE;
    s32 i = table->hashFunc(elem, table->size);
    s32 result = ArraySearch(table->chains[i], elem, table->unk10, 0, 0);
    if (result == -1) {
        return FALSE;
    } else {
        ArrayDeleteAt(table->chains[i], result);
        return TRUE;
    }
}

void *TableLookup(HashTable *table, void *elem)
{
    if (!table)
        return NULL;
    s32 i = table->hashFunc(elem, table->size);
    s32 result = ArraySearch(table->chains[i], elem, table->unk10, 0, 0);
    if (result == -1) {
        return NULL;
    } else {
        return ArrayNth(table->chains[i], result);
    }
}

void TableMapSafe(HashTable *table, s32 p2, s32 p3)
{
    for (s32 i = 0; i < table->size; i++) {
        ArrayMapBackwards(table->chains[i], p2, p3);
    }
}

void *TableMapSafe2(HashTable *table, s32 p2, s32 p3)
{
    s32 i;
    void *result;
    for (i = 0; i < table->size; i++) {
        if ((result = ArrayMapBackwards2(table->chains[i], p2, p3)) != NULL) {
            return result;
        }
    }
    return NULL;
}

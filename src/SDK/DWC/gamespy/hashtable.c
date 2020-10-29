#include <DWC/gamespy/nonport.h>
#include <DWC/gamespy/hashtable.h>

HashTable *TableNew(u32 p1, s32 p2, HashFunction hf, CompareFunction cmp, DtorFunction dtor)
{
    return TableNew2(p1, p2, 4, hf, cmp, dtor);
}

HashTable *TableNew2(u32 p1, s32 size, s32 p3, HashFunction hf, CompareFunction cmp, DtorFunction dtor)
{
    HashTable *table = gsimalloc(sizeof(HashTable));
    table->chains = gsimalloc(size * sizeof(DArray *));
    for (s32 i = 0; i < size; i++) {
        table->chains[i] = ArrayNew(p1, p3, dtor);
    }
    table->size = size;
    table->dtor = dtor;
    table->compar = cmp;
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
        s32 result = ArraySearch(table->chains[i], elem, table->compar, 0, 0);
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
    s32 result = ArraySearch(table->chains[i], elem, table->compar, 0, 0);
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
    s32 result = ArraySearch(table->chains[i], elem, table->compar, 0, 0);
    if (result == -1) {
        return NULL;
    } else {
        return ArrayNth(table->chains[i], result);
    }
}

void TableMapSafe(HashTable *table, MapFunction p2, s32 p3)
{
    for (s32 i = 0; i < table->size; i++) {
        ArrayMapBackwards(table->chains[i], p2, p3);
    }
}

void *TableMapSafe2(HashTable *table, MapFunction p2, s32 p3)
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

#include "types.h"
#include "consts.h"
#include "OS/OSAlloc.h"

static inline Cell* DLAddFront(Cell* list, Cell* cell)
{
    cell->next = list;
    cell->prev = NULL;

    if (list != NULL)
        list->prev = cell;
    return cell;
}

static inline Cell* DLExtract(Cell* list, Cell* cell)
{
    if (cell->next) {
        cell->next->prev = cell->prev;
    }
    if (cell->prev == NULL) {
        list = cell->next;
    } else {
        cell->prev->next = cell->next;
    }
    return list;
}

Cell *DLInsert(Cell *original, Cell *inserted)
{
    Cell *prevCell = NULL;
    Cell *nextCell = original;

    for (nextCell = original, prevCell = NULL; nextCell; prevCell = nextCell, nextCell = nextCell->next)
    {
        if (inserted <= nextCell)
        break;
    }

    inserted->next = nextCell;
    inserted->prev = prevCell;

    if (nextCell != NULL)
    {
        nextCell->prev = inserted;
        Cell * temp = (Cell *)((char *)inserted + inserted->size);
        if (temp == nextCell)
        {
            inserted->size += nextCell->size;
            nextCell = nextCell->next;
            inserted->next = nextCell;
            if (nextCell != NULL)
                nextCell->prev = inserted;
        }
    }

    if (prevCell != NULL)
    {
        prevCell->next = inserted;
        Cell * temp = (Cell *)((char *)prevCell + prevCell->size);

        if (temp != inserted)
            return original;

        prevCell->size += inserted->size;
        prevCell->next = nextCell;
        if (nextCell != NULL)
            nextCell->prev = prevCell;

        return original;
    }

    return inserted;
}

extern HeapDesc *HeapArray;

#define HEADERSIZE OSi_ROUND(sizeof(Cell), 32)
#define MINOBJSIZE (HEADERSIZE+32)

void* OSAllocFromHeap(OSHeapHandle heap, u32 size)
{
    HeapDesc* hd;
    Cell* cell;
    Cell* newCell;
    long leftoverSize;

    hd = &HeapArray[heap];
    
    size += HEADERSIZE;
    size = OSi_ROUND(size, 32);

    for (cell = hd->free; cell != NULL; cell = cell->next) {
        if ((long)size <= cell->size) {
            break;
        }
    }

    if (cell == NULL) {
        return NULL;
    }

    leftoverSize = cell->size - (long)size;
    if (leftoverSize < MINOBJSIZE) {
        hd->free = DLExtract(hd->free, cell);
    } else {
        cell->size = (long)size;

        newCell = (Cell *) ((char *)cell + size);
        newCell->size = leftoverSize;

        newCell->prev = cell->prev;
        newCell->next = cell->next;

        if (newCell->next != NULL) {
            newCell->next->prev = newCell;
        }

        if (newCell->prev != NULL) {
            newCell->prev->next = newCell;
        } else {
            hd->free = newCell;
        }
    }

    hd->allocated = DLAddFront(hd->allocated, cell);

    return (void *)((char *)cell + HEADERSIZE);
}

void OSFreeToHeap(OSHeapHandle heap, void* ptr)
{
    HeapDesc *hd;
    Cell   *cell;

    cell = (Cell *) ((char *)ptr - HEADERSIZE);
    hd = &HeapArray[heap];
    
    hd->allocated = DLExtract(hd->allocated, cell);
    hd->free = DLInsert(hd->free, cell);
}

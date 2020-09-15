#include "types.h"
#include "OS/OSAlloc.h"

// TODO: move to header
typedef enum {
    OS_ARENA_MAIN = 0,
    OS_ARENA_MAIN_SUBPRIV = 1,
    OS_ARENA_MAINEX = 2,
    OS_ARENA_ITCM = 3,
    OS_ARENA_DTCM = 4,
    OS_ARENA_SHARED = 5,
    OS_ARENA_WRAM_MAIN = 6,
    OS_ARENA_WRAM_SUB = 7,
    OS_ARENA_WRAM_SUBPRIV = 8,
    OS_ARENA_MAX = 9
} OSArenaId;

#define OSi_ROUND(n, a)            (((u32) (n) + (a) - 1) & ~((a) - 1))

// NOTE: there is just one HeapInfo pointer in PBR, not an array
// void* OSiHeapInfo[OS_ARENA_MAX];

inline Cell* DLAddFront(Cell* list, Cell* cell)
{
    cell->next = list;
    cell->prev = NULL;

    if (list != NULL)
        list->prev = cell;
    return cell;
}

inline Cell* DLExtract(Cell* list, Cell* cell)
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

#if 0 // not found in DOL
static u32 gUnk8063fa6c; // aligned arenaEnd, 680

// returned by OSInitAlloc, "base address of the new arena,"
// pointer to the beginning of the real data after the heap array header, 684
static void *gUnk8063fa70;

// Table of heaps
static int gUnk8063fa74; // maxHeaps param of OSInitAlloc, 688

volatile OSHeapHandle __OSCurrHeap = -1;

void *OSInitAlloc(void *arenaStart, void *arenaEnd, int maxHeaps)
{
    HeapArray = (HeapDesc *)arenaStart;
    gUnk8063fa74 = maxHeaps;
    for (int i = 0; i < gUnk8063fa74; i++) {
        HeapArray[i].heapSize = -1; // -1 indicates this heap is unused
        HeapArray[i].start = NULL;
        HeapArray[i].freeList = NULL;
    }
    gUnk8063fa6c = (u32)arenaEnd & ~0x1f;
    __OSCurrHeap = -1;
    gUnk8063fa70 = (void *)(((u32)&HeapArray[maxHeaps] + 0x1f) & ~0x1f);
    return gUnk8063fa70;
}

OSHeapHandle OSCreateHeap(void *start, void *end)
{
    start = (void *)((u32)start + 0x1f & ~0x1f);
    end = (void *)((u32)end & ~0x1f);
    for (int i = 0; i < gUnk8063fa74; i++) {
        if (HeapArray[i].heapSize < 0) {
            HeapArray[i].heapSize = end - start;
            ((Cell *)start)->prev = NULL;
            ((Cell *)start)->next = NULL;
            ((Cell *)start)->size = HeapArray[i].heapSize;
            HeapArray[i].start = (Cell *)start;
            HeapArray[i].freeList = NULL;
            return i;
        }
    }
    return -1;
}

#endif

// arenaStart param of OSInitAlloc, points to array of
// maxHeap HeapDescs, 68c
extern HeapDesc *HeapArray; 

#define HEADERSIZE OSi_ROUND(sizeof(Cell), 32)
#define MINOBJSIZE (HEADERSIZE+32)

void* OSAllocFromHeap(/*OSArenaId id,*/ OSHeapHandle heap, u32 size) {
    // OSHeapInfo* heapInfo;
    HeapDesc* hd;
    Cell* cell;
    Cell* newCell;
    long leftoverSize;
    
    /*
    OSIntrMode enabled = OS_DisableInterrupts();
    heapInfo = OSiHeapInfo[id];
    if (!heapInfo) {
        (void)OS_RestoreInterrupts(enabled);
        return NULL;
    }

    if (heap < 0) {
        heap = heapInfo->currentHeap;
    }
    */
    
    //hd = &heapInfo->heapArray[heap];
    hd = &HeapArray[heap];
    
    size += HEADERSIZE;
    size = OSi_ROUND(size, 32);

    for (cell = hd->free; cell != NULL; cell = cell->next) {
        if ((long)size <= cell->size) {
            break;
        }
    }

    if (cell == NULL) {
        //(void)OS_RestoreInterrupts(enabled);
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

    //(void)OS_RestoreInterrupts(enabled);
    return (void *)((char *)cell + HEADERSIZE);
}

void OSFreeToHeap(/*OSArenaId id,*/ OSHeapHandle heap, void* ptr) {
    OSHeapInfo *heapInfo;
    HeapDesc *hd;
    Cell   *cell;
    
    /*
    OSIntrMode enabled = OS_DisableInterrupts();
    heapInfo = OSiHeapInfo[id];

    if (heap < 0) {
        heap = heapInfo->currentHeap;
    }
    */

    cell = (Cell *) ((char *)ptr - HEADERSIZE);
    //hd = &heapInfo->heapArray[heap];
    hd = &HeapArray[heap];
    
    hd->allocated = DLExtract(hd->allocated, cell);
    hd->free = DLInsert(hd->free, cell);

    //(void)OS_RestoreInterrupts(enabled);
}

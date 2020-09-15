#include "types.h"
#include "OS/OSAlloc.h"

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

// sizeof unkStruct == 12
// element of a "heap array"
typedef struct unkStruct {
    s32 heapSize; // initialized to -1 in OSInitAlloc, set to heap size in OSCreateHeap
    Cell *start; // set to start param of OSCreateHeap
    Cell *freeList; // initialized to NULL in OSInitAlloc along with start
                // head of a linked list of allocated blocks (the free list)
} unkStruct;

// arenaStart param of OSInitAlloc, points to array of maxHeap unkStructs, 68c
static unkStruct *gUnk8063fa78; 

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
    gUnk8063fa78 = (unkStruct *)arenaStart;
    gUnk8063fa74 = maxHeaps;
    for (int i = 0; i < gUnk8063fa74; i++) {
        gUnk8063fa78[i].heapSize = -1; // -1 indicates this heap is unused
        gUnk8063fa78[i].start = NULL;
        gUnk8063fa78[i].freeList = NULL;
    }
    gUnk8063fa6c = (u32)arenaEnd & ~0x1f;
    __OSCurrHeap = -1;
    gUnk8063fa70 = (void *)(((u32)&gUnk8063fa78[maxHeaps] + 0x1f) & ~0x1f);
    return gUnk8063fa70;
}

OSHeapHandle OSCreateHeap(void *start, void *end)
{
    start = (void *)((u32)start + 0x1f & ~0x1f);
    end = (void *)((u32)end & ~0x1f);
    for (int i = 0; i < gUnk8063fa74; i++) {
        if (gUnk8063fa78[i].heapSize < 0) {
            gUnk8063fa78[i].heapSize = end - start;
            ((Cell *)start)->prev = NULL;
            ((Cell *)start)->next = NULL;
            ((Cell *)start)->size = gUnk8063fa78[i].heapSize;
            gUnk8063fa78[i].start = (Cell *)start;
            gUnk8063fa78[i].freeList = NULL;
            return i;
        }
    }
    return -1;
}

#endif

// NOTE: matches except for r4/r5 reg swap
void *OSAllocFromHeap(OSHeapHandle heap, u32 size)
{
    // r4, add 32 bytes to requested size (for the header), then round up
    // to the next multiple of 32 (for alignment)
    //s32 sizeWithHeader = size + 32;
    unkStruct *r5 = &gUnk8063fa78[heap]; // r5, start parameter from OSInitAlloc
    Cell *r3 = r5->start;
    s32 totalSize = ((size + 63) & ~0x1f); // r4
    Cell *r6;
    for (r6 = r3; r6; r6 = r6->next) {
        if (totalSize <= r6->size) break;
    }
    
    if (!r6) return NULL;
    
    // r6 has enough space to satisfy the request
    u32 difference = r6->size - totalSize; // r0
    if (difference < 0x40) {
        // this heap has reached its memory limit, so
        // remove r6 node from doubly linked list
        Cell *nextCell = r6->next;
        if (nextCell)
            nextCell->prev = r6->prev;
        Cell *prevCell = r6->prev;
        if (!prevCell)
            r3 = r6->next;
        else
            prevCell->next = r6->next;
        r5->start = r3;
    } else {
        // REPLACE r6 node with r6SizeShifted node in the
        // linked list. Set the new node's size to be the
        // amount of bytes remaining
        r6->size = totalSize;
        Cell *r6SizeShifted = (Cell *)((u32)r6 + totalSize); // r4
        r6SizeShifted->size = difference;
        r6SizeShifted->prev = r6->prev;
        Cell *r6Next = r6->next;
        r6SizeShifted->next = r6Next;
        if (r6Next) {
            r6Next->prev = r6SizeShifted;
        }
        // connect doubly linked list
        if (r6SizeShifted->prev)
            r6SizeShifted->prev->next = r6SizeShifted;
        else
           r5->start = r6SizeShifted;
    }
    // Make the r6 node the new head of another linked list
    // headed by r5->freeList
    Cell *fList = r5->freeList;
    r6->next = fList;
    r6->prev = NULL;
    if (fList) {
        fList->prev = r6;
    }
    r5->freeList = r6;
    return (void*)((u32)r6 + 32);
}

void OSFreeToHeap(OSHeapHandle heap, void *ptr)
{
    // heap block has a 32-byte header preceding the real data
    Cell *node = (Cell *)((u32)ptr - 32); // r4
    unkStruct *r31 = &gUnk8063fa78[heap];
    Cell *r3 = r31->freeList;
    // removing node from freeList
    Cell *r6 = node->next;
    if (r6) {
        r6->prev = node->prev;
    }
    Cell *r5 = node->prev;
    if (!r5) {
        r3 = node->next;
    } else {
        r5->next = node->next;
    }
    r31->freeList = r3; // new head
    r31->start = DLInsert(r31->start, node);
}

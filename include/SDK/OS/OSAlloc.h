#ifndef POKEREVO_OSALLOC_H
#define POKEREVO_OSALLOC_H

#ifdef __cplusplus
extern "C" {
#endif


#if 0
extern volatile OSHeapHandle __OSCurrHeap; // used in OSInitAlloc
#endif

typedef s32 OSHeapHandle;

typedef struct Cell Cell;

struct Cell {
    Cell* prev;
    Cell* next;
    long size;
};

typedef struct {
    long size;
    Cell *free;
    Cell *allocated;
} HeapDesc;

typedef struct {
    volatile OSHeapHandle currentHeap;
    int numHeaps;
    void* arenaStart;
    void* arenaEnd;
    HeapDesc* heapArray;
} OSHeapInfo;


Cell *DLInsert(Cell *original, Cell *inserted);
void *OSAllocFromHeap(OSHeapHandle heap, u32 size);
void OSFreeToHeap(OSHeapHandle heap, void *ptr);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_OSALLOC_H

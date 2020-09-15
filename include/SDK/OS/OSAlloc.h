#ifndef POKEREVO_OSALLOC_H
#define POKEREVO_OSALLOC_H

#ifdef __cplusplus
extern "C" {
#endif

typedef struct Cell Cell;
typedef int  OSHeapHandle;

#if 0
extern volatile OSHeapHandle __OSCurrHeap; // used in OSInitAlloc
#endif

struct Cell {
    Cell* prev;
    Cell* next;
    long size;
};

Cell *DLInsert(Cell *original, Cell *inserted);
void *OSAllocFromHeap(OSHeapHandle heap, u32 size);
void OSFreeToHeap(OSHeapHandle heap, void *ptr);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_OSALLOC_H

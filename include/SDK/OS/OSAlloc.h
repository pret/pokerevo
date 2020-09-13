#ifndef POKEREVO_OSALLOC_H
#define POKEREVO_OSALLOC_H

#ifdef __cplusplus
extern "C" {
#endif

typedef struct Cell Cell;

struct Cell {
    Cell* prev;
    Cell* next;
    long size;
};

Cell *DLInsert(Cell *original, Cell *inserted);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_OSALLOC_H

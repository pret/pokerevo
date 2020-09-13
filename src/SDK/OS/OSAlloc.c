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

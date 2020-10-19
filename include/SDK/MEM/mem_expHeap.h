#ifndef POKEREVO_MEM_EXPHEAP_H
#define POKEREVO_MEM_EXPHEAP_H


#ifdef __cplusplus
extern "C" {
#endif

// TODO: replace void* with type definition
typedef void *MEMHeapHandle;
typedef void (*MEMHeapVisitor)(void *memBlock, MEMHeapHandle heap, u32 userParam);

extern MEMHeapHandle lbl_8063E8E8;
extern MEMHeapHandle lbl_8063E8EC;

MEMHeapHandle MEMCreateExpHeapEx(void* p1, u32 p2, u16 p3);
u16 MEMSetGroupIDForExpHeap(MEMHeapHandle heap, u16 groupID);
void *MEMAllocFromExpHeapEx(MEMHeapHandle heap, u32 size, int alignment);
u32 MEMResizeForMBlockExpHeap(MEMHeapHandle heap, void *memBlock, u32 size);
void MEMFreeToExpHeap(MEMHeapHandle heap, void *memBlock);
u32 MEMGetSizeForMBlockExpHeap(const void *memBlock);
u32 MEMGetTotalFreeSizeForExpHeap(MEMHeapHandle heap);
u16 MEMGetGroupIDForMBlockExpHeap(const void *memBlock);
void MEMVisitAllocatedForExpHeap(MEMHeapHandle heap, MEMHeapVisitor visitor, u32 userParam);


#ifdef __cplusplus
}
#endif

#endif //POKEREVO_MEM_EXPHEAP_H

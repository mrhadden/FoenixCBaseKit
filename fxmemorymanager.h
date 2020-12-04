
#ifndef __FX_MEMORY_MANAGER
#define __FX_MEMORY_MANAGER

#include "fxos.h"
#include "umm_malloc_cfg.h"
#include "umm_malloc.h"

typedef struct _fx_memory_map
{
	ULONG availableMemory;
	UCHAR valid_segments[0xFF];
} FXMEMORYMAP;
typedef FXMEMORYMAP FAR *PFXMEMORYMAP;

typedef void (*MemoryCallback)(UCHAR seg,ULONG block, ULONG size);

ULONG k_heap_integrity_check(void);


LPVOID k_mem_object_copy(LPVOID object,UINT size);

ULONG k_check_system_memory(MemoryCallback callback);
ULONG k_fcheck_system_memory(MemoryCallback callback);

HANDLE k_mem_allocate_dynamic_heap(UINT size);
VOID k_mem_deallocate_dynamic_heap(HANDLE handle);

LPVOID k_mem_lock_handle(HANDLE handle);
VOID k_mem_unlock_handle(HANDLE handle);

LPVOID k_mem_allocate_heap(UINT size);
VOID k_mem_deallocate_heap(LPVOID);

LPVOID k_calloc(UINT n, UINT s);
void k_free(LPVOID ptr);


#endif

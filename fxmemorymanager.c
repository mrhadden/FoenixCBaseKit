
#include "fxmemorymanager.h"
#include "fxos_build_parameters.h"

static ULONG THIS_MODULE = 0xB0000000;

//LPVOID heap_start = (LPVOID)(0x040000);
//LPVOID heap_end   = (LPVOID)(0x03FFFF);

LPVOID heap_start = (LPVOID)FXOS_BUILD_NEAR_HEAP_ADDR;
LPVOID heap_end   = (LPVOID)FXOS_BUILD_NEAR_HEAP_TOP;


ULONG  k_heap_integrity_check(void)
{
	UMM_HEAP_INFO *pheapInfo = NULL;

	if(!umm_integrity_check())
		k_exec_throw_exception(THIS_MODULE,0xFFF0000,"Memory Fault: Heap corruption detected.",-1);

	pheapInfo = umm_info(NULL,0);

	/*
	k_debug_integer("heap:blockSize:",pheapInfo->blockSize);
	k_debug_integer("heap:freeBlocks:",pheapInfo->freeBlocks);
	k_debug_integer("heap:maxFreeContiguousBlocks:",pheapInfo->freeEntries);
	k_debug_integer("heap:totalBlocks:",pheapInfo->totalBlocks);
	k_debug_integer("heap:usedBlocks:",pheapInfo->usedBlocks);
	*/

	k_getZeroPage()->availableHeapMemory = (pheapInfo->freeBlocks * pheapInfo->blockSize);
	k_getZeroPage()->availableHeapMemoryK = k_getZeroPage()->availableHeapMemory/1024;

	//k_debug_long("heap:availableHeapMemory:", k_getZeroPage()->availableHeapMemory);

	return (pheapInfo->freeBlocks * pheapInfo->blockSize);
}


ULONG k_check_system_memory(MemoryCallback callback)
{
	ULONG size = MEM_SYSTEM_MIN; // first three segments that got us here
	ULONG bank = 0;
	ULONG offset  = 0;
	ULONG block = 0;
	
	//umm_integrity_check();

	for(bank = MEM_USER_FLOOR;bank < MEM_USER_CEILING;bank+=0x010000)
	{
		block = 0;
		//k_debug_hex("Checking Segment: 0x",(UCHAR)(segment >> 16));
		for(offset = 0x0000;offset < 0xFFFF;offset++)
		{
			*((unsigned char FAR*)(bank + offset)) = 0;
			*((unsigned char FAR*)(bank + offset)) = 1;
			if(*((unsigned char FAR*)(bank + offset)) == 1)
			{
				//size++;
				block++;
				*((unsigned char FAR*)(bank + offset)) = 0;
			}
		}
		//k_debug_long("Block:",block);
		size+=block;

		if(callback!=NULL)
		{
			callback((UCHAR)(bank >> 16),block,size);
		}

	}

	k_debug_long("Total Memory:",size);

	return size;
}

ULONG k_fcheck_system_memory(MemoryCallback callback)
{
	ULONG size = MEM_SYSTEM_MIN; // first three segments that got us here
	ULONG segment = 0;
	ULONG offset  = 0;
	ULONG block = 0;

	//umm_integrity_check();

	for(segment = MEM_USER_FLOOR;segment < MEM_USER_CEILING;segment+=0x010000)
	{
		block = 0;
		//k_debug_hex("Checking Segment: 0x",(UCHAR)(segment >> 16));
		for(offset = 0x0000;offset < 0x01FF;offset++)
		{
			*((unsigned char FAR*)(segment + offset)) = 0;
			*((unsigned char FAR*)(segment + offset)) = 1;
			if(*((unsigned char FAR*)(segment + offset)) == 1)
			{
				block++;
				*((unsigned char FAR*)(segment + offset)) = 0;
			}
		}
		if(block > 0)
			block = 0xFFFF;

		//k_debug_long("Block:",block);
		size+=block;

		if(callback!=NULL)
		{
			callback((UCHAR)(segment >> 16),block,size);
		}

	}

	k_debug_long("Total Memory:",size);

	return size;
}

LPVOID k_mem_object_copy(LPVOID object,UINT size)
{
	LPVOID pnew = k_mem_allocate_heap(size);

	memcpy(pnew,object,size);

	return pnew;
}

HANDLE k_mem_allocate_dynamic_heap(UINT size)
{
	return NULL;
}

VOID k_mem_deallocate_dynamic_heap(HANDLE handle)
{

}

LPVOID k_mem_lock_handle(HANDLE handle)
{
	return NULL;
}

VOID k_mem_unlock_handle(HANDLE handle)
{

}

LPVOID k_mem_allocate_heap(UINT size)
{
	int i = 0;
	LPVOID p = NULL;

	//k_debug_integer("k_mem_allocate_heap::enter:",size);
	if(size)
	{
		if(size == 4)
		{
			k_debug_integer("**** k_mem_allocate_heap::possible wrong size allocation ****",size);
		}
		p = umm_malloc((size_t)size);
		//p = umm_poison_malloc((size_t)size);
	}
	else
	{
		k_heap_integrity_check();
		k_exec_throw_exception(THIS_MODULE,0x00010002,"Memory allocation of size zero",-1);
	}
	if(!p)
		k_debug_pointer("k_mem_allocate_heap::exit:",p);

	//umm_integrity_check();
	/*
	for(i=0;i<size;i++)
	{
		((LPCHAR)p)[i] = 0;
	}
	*/
	return p;
}

VOID k_mem_deallocate_heap(LPVOID lpBuffer)
{
	//k_debug_pointer("k_mem_deallocate_heap:",lpBuffer);
	if(lpBuffer!=NULL)
		umm_free(lpBuffer);
		//umm_poison_free(lpBuffer);
	else
		k_exec_throw_exception(THIS_MODULE,0x00010001,"Memory deallocation of NULL reference",-1);
}

LPVOID k_calloc(UINT num,UINT bytes)
{
	return k_mem_allocate_heap(num * bytes);
}

VOID k_free(LPVOID ptr)
{
	k_mem_deallocate_heap(ptr);
}





#pragma section CODE=HEAPNEAR, offset $06:0000

void far * k_mem_get_heap_near(void)
{
	return (void far *)k_mem_get_heap_near;
}

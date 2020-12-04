

#pragma section CODE=HEAPFAR, offset $19:0000

//LPVOID __init_heap_near1(void)
void far * k_mem_get_heap_far(void)
{
	return (void far *)k_mem_get_heap_far;
}
/*

#pragma section DATA=HEAPNEAR,offset $1A:0000

static void __init_heap_near2(void)
{
}

#pragma section DATA=HEAPNEAR,offset $1B:0000

static void __init_heap_near3(void)
{
}

*/

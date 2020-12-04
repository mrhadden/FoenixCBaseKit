
#include "basic.h"
#include "tasking.h"

long kt_tick = 0;

void pascal scheduler(void)
{
	kt_tick++;
	return;
}

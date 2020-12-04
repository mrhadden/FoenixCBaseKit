/*
 * fxuser.c
 *
 *  Created on: Mar 8, 2020
 *      Author: mtbush
 */
#define _NOFAR

#include "fxos.h"
#include "fxuser.h"

#ifdef __ORCAC__
segment "FXUSER";
#endif

void user_debug_string_com1(char FAR* debugString);

LPVOID InitFXTools(void)
{
	return ZEROPAGE;
}


UINT __kernel_call(UINT kcallId,LPVOID kcallArg,LPVOID *ppResult)
{
	PFXZERPOPAGE zp = InitFXTools();

	user_debug_string_com1("__kernel_call::ENTER\r\n");

	zp->kernelFunctionCallId = kcallId;
	zp->kernelFunctionCallBank = 0x0E;
	zp->kernelFunctionCallParameter = (LPVOID)kcallArg;

	/*
	asm PHB;
	asm PHA;

	asm cop;

	asm PLA;
	asm PLB;
	*/

#ifdef __ORCAC__

	asm
	{
			PHB
			PHA
			COP 0
			PLA
			PLB
	};

#else

	#asm
			PHB
			PHA
			COP 0
			PLA
			PLB
	#endasm


#endif

	if(ppResult)
	{
		*ppResult = zp->kernelFunctionCallReturn;
	}

	user_debug_string_com1("__kernel_call::EXIT\r\n");

	return 0;
}



VOID GetDirectory(LPCSTR deviceName)
{
	PFXZERPOPAGE zp = InitFXTools();

	//k_debug_strings("GetDirectory:Device:",(LPSTR)deviceName);

	zp->kernelFunctionCallId = KT_DOS_GETDIRECTORY;
	zp->kernelFunctionCallParameter = (LPVOID)deviceName;

#ifdef __ORCAC__
	asm {cop 0};
#else
	asm cop 0
#endif

	if(zp->kernelFunctionCallReturn)
	{
		//k_debug_strings("GetDirectory:Return:",(LPSTR)zp->kernelFunctionCallReturn);
		//k_mem_deallocate_heap(zp->kernelFunctionCallReturn);
	}
}


VOID DebugOut(LPCSTR message)
{
	__kernel_call(KT_DBG_STRING,(LPVOID)message,NULL);
}


void user_debug_string_com1(char FAR* debugString)
{
	char FAR* ptr = debugString;
	while(*ptr)
	{
		while(!(UART1_BASE[5] & 0x20))
		{
		}
		UART1_BASE[0] = *ptr;
		ptr++;
	}
	return;
}

/*
 * apgm.c
 *
 *  Created on: Mar 13, 2020
 *      Author: mtbush
 */
#define _NOFAR

#include "fxtypes.h"
#include "fxuser.h"
#include "apgm.h"

START_FXMODULE

static DLLMAIN pfnDllMain     = DllMain;
static void *pfnDoSomething   = DoSomething;
static DEBUGOUT pfnDebugOut   = DebugOut;

static LPSTR lpstrDllMainMessage = "APGM DllMain \r\n";

VOID DllMain(LPCSTR seg)
{
	DEBUGOUT func  = (DEBUGOUT)((ULONG)pfnDebugOut + (ULONG)seg);
	LPCSTR message = (LPCSTR) ((ULONG)lpstrDllMainMessage + (ULONG)seg);

	//DebugOut("APGM DllMain \r\n");
	func(message);

	return;
}

UINT DoSomething(UINT argc)
{
	DebugOut("APGM DoSomething 2\r\n");

	return 42;
}

END_FXMODULE


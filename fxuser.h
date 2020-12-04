/*
 * fxuser.h
 *
 *  Created on: Mar 8, 2020
 *      Author: mtbush
 */

#ifndef FXUSER_H_
#define FXUSER_H_

#include "fxtypes.h"


LPVOID InitFXTools(void);
// KERNEL FUNCTIONS
typedef VOID (*DEBUGOUT)(LPCSTR message);
VOID DebugOut(LPCSTR message);
// DOS FUNCTIONS
VOID GetDirectory(LPCSTR deviceName);




#endif /* FXUSER_H_ */

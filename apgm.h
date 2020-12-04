/*
 * apgm.h
 *
 *  Created on: Mar 13, 2020
 *      Author: mtbush
 */

#ifndef APGM_H_
#define APGM_H_

#define START_FXMODULE segment "FXOS";
#define END_FXMODULE   segment "DISPOSE";int main(void){return 0;}

typedef VOID (*DLLMAIN)(LPCSTR message);
typedef UINT (*DOSOMETHING)(UINT argc);


VOID DllMain(LPCSTR message);
UINT DoSomething(UINT argc);

#endif /* APGM_H_ */

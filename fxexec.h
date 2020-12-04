
#ifndef __FX_EXEC_
#define __FX_EXEC_

#include "fxtypes.h"

#define MAX_PROCESS (32)


VOID k_initalize_executive(void);

VOID k_exec_throw_exception(ULONG ctxId,ULONG errorId,LPVOID exceptionMessage,UINT exMsgSize);

PFXPROCESS k_exec_get_process(PROCESS_ID procId);
PFXPROCESS k_exec_get_process_byname(LPCSTR processName);


PFXPROCESS FAR *k_exec_process_list(void);
PFXPROCESS k_exec_launchProcess(LPCHAR commandLine);
PFXPROCESS k_exec_createProcess(LPCHAR commandLine,FXProcessProc processProc,LPVOID startupArgs);
VOID k_exec_start_process(PROCESS_ID procId);

PFXPROCESS k_exec_set_current_process(PFXPROCESS currentProcess);
PFXPROCESS k_exec_get_current_process(void);

PROCESS_CTX k_exec_setContext(PROCESS_ID processId,PROCESS_CTX data);
PROCESS_CTX k_exec_getContext(PROCESS_ID processId);

BOOL k_exec_signal_sleep(PROCESS_ID processId);
BOOL k_exec_signal_terminate(PROCESS_ID processId);
BOOL k_exec_signal_start(PROCESS_ID processId);
BOOL k_exec_signal_wait(PROCESS_ID processId,PPROCESS_SIGNAL signal);
BOOL k_exec_set_signal(PROCESS_ID processId,UINT signal);
//
// process timers
//
KRESULT k_exec_enable_process_timer(UINT timerId,UINT increment);
//
// Deallocation Handlers
//
void k_deallocate_process_task(LPCSTR name,LPVOID pdata);
//
//
//
// debugging
//
void debug_process_node(LPVOID ctx,LPVOID data);
//
//
//

#endif

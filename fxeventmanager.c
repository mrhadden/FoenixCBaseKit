
#include "fxos.h"
#include "fxexec.h"
#include "fxdos.h"
#include "fxmemorymanager.h"
#include "fxeventmanager.h"
#include "fxos_desktop_proc.h"
#include "fxconsole.h"
#include "ff.h"
//#include "OMF_Load.h"
//#include "OMF_Dc_Memory.h"
//#include "basicfont.h"

#define IDLE_PROC	(0)
#define LOW_PROC    (1)
#define TOP_PROC    (255)
#define MAX_PROCS   (256)

//static FIL fp;
//static FRESULT fres;
//static FATFS FatFs;

static FXEventProc 		eventProcs[MAX_PROCS];
static PFXEVENTPROCESS  eventProcess[MAX_PROCS];

static ULONG _k_system_timer = 0;
static HWND	 _k_hLockedFocus 	= NULL;
static BOOL	 _k_bNCLockedFocus  = FALSE;
//static int scpu = 0;
//static char idlespinner[] = {'|','/','-','\\'};

//static FXOSMESSAGE smsg;
static FXQUEUE FAR *_k_eventQueue = NULL;
static MOUSE_MSG_STATE _k_mouseState;

static UINT _subTick = 0x0001;

static ULONG THIS_MODULE = 0xB0000001;

#pragma section CODE=EVTMAN,offset $5:0000

BOOL initHD = FALSE;

void DoWndProcs(LPVOID ctx,LPVOID data);
//int reg_config( void );
//typedef void (*DllMain)(UINT argc,LPVOID *argv);
typedef void (*DllMain)(LPCSTR segment);

extern ULONG _system_timer;
//static UCHAR floppybuffer[512];

KEYCODE _k_keyCodesSet[] =
{
		0,
		27,
		'1',
		'2',
		'3',
		'4',
		'5',
		'6',
		'7',
		'8',
		'9',
		'0',
		'-',
		'=',
		 8,
		 9,
		'q',
		'w',
		'e',
		'r',
		't',
		'y',
		'u',
		'i',
		'o',
		'p',
		'[',
		']',
		13,
		0,//'left control'
		'a',
		's',
		'd',
		'f',
		'g',
		'h',
		'j',
		'k',
		'l',
		';',
		'\'',
		'`',
		0,//'left shift',
		'\\',
		'z',
		'x',
		'c',
		'v',
		'b',
		'n',
		'm',
		',',
		'.',
		'/',
		0,//'right shift',
		'*',
		0,//'left alt',
		32,
		0,//'capslock',
		0,//'f1',
		0,//'f2',
		0,//'f3',
		0,//'f4',
		0,//'f5',
		0,//'f6',
		0,//'f7',
		0,//'f8',
		0,//'f9',
		0,//'f10',
		0,//'numberlock',
		0,//'scrolllock',
		'7',
		'8',
		'9',
		'-',
		'4',
		'5',
		'6',
		'+',
		'1',
		'2',
		'3',
		'0',
		'.',
		 0,
		 0,
		 0,
		 0,//'f11',
		 0//'f12'
};

KEYCODE _k_keyCodesShiftSet[] =
{
		0,
		27,
		'!',
		'@',
		'#',
		'$',
		'%',
		'^',
		'&',
		'*',
		'(',
		')',
		'_',
		'+',
		 8,
		 9,
		'Q',
		'W',
		'E',
		'R',
		'T',
		'Y',
		'U',
		'I',
		'O',
		'P',
		'{',
		'}',
		13,
		0,//'left control'
		'A',
		'S',
		'D',
		'F',
		'G',
		'H',
		'J',
		'K',
		'L',
		':',
		'"',
		'~',
		0,//'left shift',
		'|',
		'Z',
		'X',
		'C',
		'V',
		'B',
		'N',
		'M',
		'<',
		'>',
		'?',
		0,//'right shift',
		'*',
		0,//'left alt',
		32,
		0,//'CapsLock',
		0,//'F1',
		0,//'F2',
		0,//'F3',
		0,//'F4',
		0,//'F5',
		0,//'F6',
		0,//'F7',
		0,//'F8',
		0,//'F9',
		0,//'F10',
		0,//'NumberLock',
		0,//'ScrollLock',
		'7',
		'8',
		'9',
		'-',
		'4',
		'5',
		'6',
		'+',
		'1',
		'2',
		'3',
		'0',
		'.',
		 0,
		 0,
		 0,
		 0,//'F11',
		 0//'F12'
};

KEYCODE _k_keyCodesExtSet[] =
{
		0
};


ULONG k_get_systemtimer(void)
{
	return _system_timer++;
}

VOID k_initalize_event_manager(void)
{
	memset(&_k_mouseState,0,sizeof(MOUSE_MSG_STATE));

	_k_eventQueue = k_mem_allocate_heap(sizeof(FXQUEUE));
	if(_k_eventQueue!=NULL)
	{
		k_initialize(_k_eventQueue);
	}
}

void k_signal_sol_event(long FAR *pktick)
{
	return;
}

BOOL k_event_lock_focus(HWND hWnd)
{
	return k_event_lock_focus_ex(hWnd,FALSE);
}

BOOL k_event_lock_focus_ex(HWND hWnd,BOOL asNonclient)
{
	BOOL bRet = FALSE;

	if(_k_hLockedFocus == NULL)
	{
		_k_hLockedFocus = hWnd;
		bRet = TRUE;
		_k_bNCLockedFocus = asNonclient;
	}

	return bRet;
}

HWND k_event_get_locked_focus(void)
{
	return _k_hLockedFocus;
}

HWND k_event_unlock_focus(void)
{
	HWND unlocked = NULL;

	if(_k_hLockedFocus != NULL)
	{
		unlocked = _k_hLockedFocus;
		k_debug_pointer("k_event_unlock_focus:pmsg->hwnd:", unlocked);
		_k_hLockedFocus = NULL;
		_k_bNCLockedFocus = FALSE;
	}

	return unlocked;
}


#ifdef FXOS_WITH_LOCK

void k_event_loop(void)
{
	PFXOSMESSAGE pmsg = NULL;
	PFXOSMESSAGE processMessage = NULL;

	PFXPROCESS 	 pprocess = NULL;
	PFXNODE 	 hitNodeParent = NULL;
	PFXNODE 	 hitNode = NULL;
	PFXNODE 	 hitChildNode = NULL;
	PWINDOW 	 pWin = NULL;

	HWND		 hWndFocus = NULL;

	DISKINFO diskInfo;
	BOOL volAvail = FALSE;

	BOOL floppy = FALSE;
	INT floppyLBA = 0;
	INT	x = 0;
	INT y = 0;

	/*
	int c = 0;
	int cb = 0;
	int mb = 0;
	int mx = 0;
	int my = 0;
	int kb = 0;
	*/

	k_debug_string("k_initalize_executive\r\n");
	k_initalize_executive();
	k_heap_integrity_check();
	k_debug_string("k_initalize_event_manager\r\n");
	k_initalize_event_manager();
	k_heap_integrity_check();
	k_debug_string("k_initalize_window_manager before\r\n");
	k_initializeWindowManager();
	k_debug_string("k_initalize_window_manager after\r\n");
	k_heap_integrity_check();

	if(_k_eventQueue!=NULL)
	{
		processMessage = k_create_process_msg(NULL);
		k_heap_integrity_check();

#ifdef USE_FX256_FMX

		/*
		pprocess = k_exec_launchProcess("@/console");
		if(pprocess!=NULL)
		{
			//k_attach_process_events((FXEventProc)pprocess->execProc-data,pprocess);
			k_attach_process_events(pprocess->execProc,pprocess);
			k_exec_set_process_foreground(pprocess,FALSE);
		}
		*/

		pprocess = k_exec_launchProcess("@/desktop");
		if(pprocess!=NULL)
		{
			//k_attach_process_events((FXEventProc)pprocess->execProc-data,pprocess);
			k_attach_process_events(pprocess->execProc,pprocess);
			k_exec_set_process_foreground(pprocess,TRUE);
			k_heap_integrity_check();
		}

#else
		pprocess = k_exec_launchProcess("@/console");
		if(pprocess!=NULL)
		{
			//k_attach_process_events((FXEventProc)pprocess->execProc-data,pprocess);
			k_attach_process_events(pprocess->execProc,pprocess);
			k_exec_set_process_foreground(pprocess,TRUE);
		}

#endif

		pprocess = k_exec_launchProcess("@/idle");
		if(pprocess!=NULL)
		{

			//k_attach_process_events((FXEventProc)pprocess->execProc-data,pprocess);
			k_attach_process_events(pprocess->execProc,pprocess);
			k_exec_set_process_foreground(pprocess,FALSE);
		}



		while(1)
		{
			//asm sei;

			pmsg = (PFXOSMESSAGE)k_dequeue_with_lock(_k_eventQueue);
			while(pmsg!=NULL)
			{
				_k_system_timer = pmsg->msgTime;

				if(FX_MENU_COMMAND == pmsg->type)
					k_debug_pointer("k_event_loop event::FX_MENU_COMMAND:", pmsg->hwnd);

				if(pmsg->type == FX_PROCESS_FLOPPY)
				{
					k_debug_string("k_event_loop data:FX_PROCESS_FLOPPY\r\n");

					//k_debug_byte_array("k_event_loop data:FX_PROCESS_FLOPPY:", pmsg->pheap,512);
				}
				if(pmsg->type == FX_PROCESS_SDCARD)
				{
					k_debug_string("k_event_loop data:FX_PROCESS_SDCARD\r\n");

					//k_debug_byte_array("k_event_loop data:FX_PROCESS_FLOPPY:", pmsg->pheap,512);
				}

				if((pmsg->type >= FX_MOUSE_MOVE) &&  (pmsg->type <= FX_MBUTTON_DBLCLICK))
				{
					//k_debug_pointer("k_event_loop MOUSE hwnd:", pmsg->hwnd);
					//k_debug_integer("k_event_loop MOUSE event:", pmsg->type);

					x = MAKEWORD(pmsg->data[1],pmsg->data[2]);
					y = MAKEWORD(pmsg->data[3],pmsg->data[4]);


					hitNode = k_point_hit_scan(x,y);
					if(hitNode)
					{
						//k_debug_strings("SCAN-HIT PARENT:",HITTOWND(hitNode)->win_title);
						if(HITTOWND(hitNode)->pChildHitList)
						{
							hitChildNode = k_point_in_any_nodeslist(HITTOWND(hitNode)->pChildHitList,x,y);
							if(hitChildNode)
							{
								//k_debug_strings("SCAN-HIT CHILD:",HITTOWND(hitChildNode)->win_title);
								hitNode = hitChildNode;
							}
						}

						//k_debug_strings("SCAN-HIT:",HITTOWND(hitNode)->win_title);
						if(hitNode)
						{
							pWin = HITTOWND(hitNode);
							if(pWin)
							{
								((PCLICKDETECTED)hitNode->data)->handler(pWin);
								pmsg->hwnd = k_getHandleFromWindow(pWin);

								if((pmsg->type == FX_LBUTTON_DOWN) || (pmsg->type == FX_MBUTTON_DOWN) || (pmsg->type == FX_RBUTTON_DOWN))
								{
									if(pmsg->hwnd!=hWndFocus)
									{
										k_debug_pointer("*** k_event_loop::FX_FOCUS_WINDOW:",pmsg->hwnd);
										k_enqueue_with_lock(_k_eventQueue,k_create_synthetic_window_msg(pmsg->hwnd,FX_FOCUS_WINDOW,&hWndFocus,sizeof(hWndFocus)));
										hWndFocus =  pmsg->hwnd;
									}
								}

								if(pmsg->type < 0xF000 &&  k_isNonClient(pWin,pmsg,x,y))
								{
									pmsg->type = (UINT)(pmsg->type | 0x008000);
								}
							}
						}

					}


					if(!pmsg->hwnd)
					{
						if(k_user_getDesktopWindow())
						{
							pmsg->hwnd = k_user_getDesktopWindow();
						}
					}

				}

				//k_debug_pointer("k_event_loop hWndFocus pmsg->hwnd:", pmsg->hwnd);
				if(hWndFocus && ((pmsg->type == FX_KEY_DOWN) || (pmsg->type == FX_KEY_UP)))
				{
					k_debug_string("*** k_event_loop::FX_KEY_*\r\n");
					pmsg->hwnd = hWndFocus;
				}

				k_do_processes(pmsg);

				k_destory_msg(pmsg);

				pmsg = (PFXOSMESSAGE)k_dequeue_with_lock(_k_eventQueue);

			}

			k_do_processes(processMessage);

			//asm cli;

		}

		if(processMessage)
			k_mem_deallocate_heap(processMessage);
	}
	else
	{
		k_debug_string("Exception:fxeventmanager not initialized");
		THROW_EXCEPTION(0xA000,0x0001,"");
	}


}

#else

void k_event_loop(void)
{
	PFXOSMESSAGE pmsg = NULL;
	PFXOSMESSAGE processMessage = NULL;

	PFXPROCESS 	 pprocess = NULL;
	PFXNODE 	 hitNodeParent = NULL;
	PFXNODE 	 hitNode = NULL;
	PFXNODE 	 hitChildNode = NULL;
	PWINDOW 	 pWin = NULL;

	HWND		 hWndFocus = NULL;

	DISKINFO diskInfo;
	BOOL volAvail = FALSE;

	BOOL floppy = FALSE;
	INT floppyLBA = 0;
	INT	x = 0;
	INT y = 0;

	/*
	int c = 0;
	int cb = 0;
	int mb = 0;
	int mx = 0;
	int my = 0;
	int kb = 0;
	*/

	k_debug_string("k_initalize_executive\r\n");
	k_initalize_executive();
	k_heap_integrity_check();
	k_debug_string("k_initalize_event_manager\r\n");
	k_initalize_event_manager();
	k_heap_integrity_check();
	k_debug_string("k_initalize_window_manager before\r\n");
	k_initializeWindowManager();
	k_debug_string("k_initalize_window_manager after\r\n");
	k_heap_integrity_check();

	/*
	//////
	// TEST
	/////

	asm cli;

	floppy_init();

	//asm sei;

	while(TRUE);
	///////
	*/

	//asm cli;

	//k_debug_string("cli after\r\n");

	if(_k_eventQueue!=NULL)
	{
		processMessage = k_create_process_msg(NULL);
		k_heap_integrity_check();
		//eventProcs[IDLE_PROC] = IdleProc;
		//k_attach_process_events(IdleProc,NULL);

		/*
		pprocess = k_exec_launchProcess("@/idle");
		if(pprocess!=NULL)
		{
			//k_attach_process_events((FXEventProc)pprocess->execProc-data,pprocess);
			k_attach_process_events(pprocess->execProc,pprocess);
			k_exec_set_process_foreground(pprocess,FALSE);
		}
		*/
		//k_debug_string("check1\r\n");
		//k_heap_integrity_check();

		//pprocess =  k_exec_createProcess("console",DefConsoleProc);

		//k_debug_string("check2\r\n");
		//k_heap_integrity_check();
		//pprocess =  k_exec_createProcess("desktop",DesktopEnvironmentProc);

#ifdef USE_FX256_FMX


		/*
		pprocess = k_exec_launchProcess("@/console");
		if(pprocess!=NULL)
		{
			//k_attach_process_events((FXEventProc)pprocess->execProc-data,pprocess);
			k_attach_process_events(pprocess->execProc,pprocess);
			k_exec_set_process_foreground(pprocess,FALSE);
		}
		*/


		pprocess = k_exec_launchProcess("@/desktop");
		if(pprocess!=NULL)
		{
			//k_attach_process_events((FXEventProc)pprocess->execProc-data,pprocess);
			k_attach_process_events(pprocess->execProc,pprocess);
			k_exec_set_process_foreground(pprocess,TRUE);
			k_heap_integrity_check();
		}

#else
		pprocess = k_exec_launchProcess("@/console");
		if(pprocess!=NULL)
		{
			//k_attach_process_events((FXEventProc)pprocess->execProc-data,pprocess);
			k_attach_process_events(pprocess->execProc,pprocess);
			k_exec_set_process_foreground(pprocess,TRUE);
		}

#endif

		pprocess = k_exec_launchProcess("@/idle");
		if(pprocess!=NULL)
		{

			//k_attach_process_events((FXEventProc)pprocess->execProc-data,pprocess);
			k_attach_process_events(pprocess->execProc,pprocess);
			k_exec_set_process_foreground(pprocess,FALSE);
		}


		//k_debug_string("check3\r\n");
		//k_heap_integrity_check();


		/*
		pprocess =  k_exec_createProcess("console",DefConsoleProc2);
		if(pprocess!=NULL)
		{
			//k_attach_events((FXEventProc)pprocess->execProc->data,pprocess);
			k_attach_process_events((FXEventProc)pprocess->execProc->data,pprocess);
		}
		 */

		while(1)
		{
			asm sei;

			//asm sei;
			pmsg = (PFXOSMESSAGE)k_dequeue(_k_eventQueue);
			//asm cli;

			while(pmsg!=NULL)
			{

				/*
				if(_k_hLockedFocus && (pmsg->hwnd != _k_hLockedFocus))
				{
					pmsg->hwnd = _k_hLockedFocus;
					k_debug_integer("k_event_loop _k_hLockedFocus LOCKED pmsg->type:", pmsg->type);
					k_debug_pointer("k_event_loop _k_hLockedFocus LOCKED pmsg->hwnd:", pmsg->hwnd);
				}
				*/

				_k_system_timer = pmsg->msgTime;
				//k_debug_integer("k_event_loop event:", pmsg->type);
				//k_debug_byte_array("k_event_loop data:", pmsg->data,3);
				//k_debug_char("k_event_loop char:", pmsg->data[2]);

				//k_debug_string("check3\r\n");
				//k_heap_integrity_check();
				if(FX_MENU_COMMAND == pmsg->type)
					k_debug_pointer("k_event_loop event::FX_MENU_COMMAND:", pmsg->hwnd);

				if(pmsg->type == FX_PROCESS_FLOPPY)
				{
					k_debug_string("k_event_loop data:FX_PROCESS_FLOPPY\r\n");

					//k_debug_byte_array("k_event_loop data:FX_PROCESS_FLOPPY:", pmsg->pheap,512);
				}
				if(pmsg->type == FX_PROCESS_SDCARD)
				{
					k_debug_string("k_event_loop data:FX_PROCESS_SDCARD\r\n");

					//k_debug_byte_array("k_event_loop data:FX_PROCESS_FLOPPY:", pmsg->pheap,512);
				}

				if((pmsg->type >= FX_MOUSE_MOVE) &&  (pmsg->type <= FX_MBUTTON_DBLCLICK))
				{
					//k_debug_pointer("k_event_loop MOUSE hwnd:", pmsg->hwnd);
					//k_debug_integer("k_event_loop MOUSE event:", pmsg->type);

					x = MAKEWORD(pmsg->data[1],pmsg->data[2]);
					y = MAKEWORD(pmsg->data[3],pmsg->data[4]);


					hitNode = k_point_hit_scan(x,y);
					if(hitNode)
					{
						//k_debug_strings("SCAN-HIT PARENT:",HITTOWND(hitNode)->win_title);
						if(HITTOWND(hitNode)->pChildHitList)
						{
							hitChildNode = k_point_in_any_nodeslist(HITTOWND(hitNode)->pChildHitList,x,y);
							if(hitChildNode)
							{
								//k_debug_strings("SCAN-HIT CHILD:",HITTOWND(hitChildNode)->win_title);
								hitNode = hitChildNode;
							}
						}

						//k_debug_strings("SCAN-HIT:",HITTOWND(hitNode)->win_title);
						if(hitNode)
						{
							pWin = HITTOWND(hitNode);
							if(pWin)
							{
								((PCLICKDETECTED)hitNode->data)->handler(pWin);
								pmsg->hwnd = k_getHandleFromWindow(pWin);

								if((pmsg->type == FX_LBUTTON_DOWN) || (pmsg->type == FX_MBUTTON_DOWN) || (pmsg->type == FX_RBUTTON_DOWN))
								{
									if(pmsg->hwnd!=hWndFocus)
									{
										k_debug_pointer("*** k_event_loop::FX_FOCUS_WINDOW:",pmsg->hwnd);
										k_enqueue(_k_eventQueue,k_create_synthetic_window_msg(pmsg->hwnd,FX_FOCUS_WINDOW,&hWndFocus,sizeof(hWndFocus)));
										hWndFocus =  pmsg->hwnd;
									}
								}

								if(pmsg->type < 0xF000 &&  k_isNonClient(pWin,pmsg,x,y))
								{
									//k_debug_string("*** k_event_loop::NON-CLIENT MOUSE EVENT\r\n");

									//k_debug_pointer("*** k_event_loop::NON-CLIENT MOUSE EVENT BEFORE:",(LPVOID)(LONG)pmsg->type);
									pmsg->type = (UINT)(pmsg->type | 0x008000);
									//k_debug_pointer("*** k_event_loop::NON-CLIENT MOUSE EVENT AFTER :",(LPVOID)(LONG)pmsg->type);
								}
							}
						}

					}


					//hitNode = k_point_in_any_nodeslist(((PCLICKDETECTED)k_point_hit_scan(x,y)->data)->window->pChildHitList,x,y);

					/*
					hitNode = k_point_in_nodeslist(x,y);
					if(hitNode)
					{
						hitNodeParent = hitNode;
						//k_debug_message("Found hit:",hitNode->name);

						pWin = ((PCLICKDETECTED)hitNode->data)->window;
						//if(pWin && pWin->isVisible)
						if(pWin)
						{
							//k_debug_string("k_do_processes::Window\r\n");
							//k_debug_pointer("k_do_processes::pWin->pChildWindows:",pWin->pChildWindows);
							//if(pWin->pChildHitList)
							if(pWin->pChildHitList)
							{
								// check if children were clicked
								hitChildNode = k_point_in_any_nodeslist(pWin->pChildHitList,x,y);
								if(hitChildNode)
								{
									// switch hit to child
									//k_debug_strings("k_do_processes::child-hit:",hitChildNode->name);
									hitNode = hitChildNode;
									pWin = ((PCLICKDETECTED)hitChildNode->data)->window;
								}
							}

							((PCLICKDETECTED)hitNode->data)->handler(pWin);
							pmsg->hwnd = k_getHandleFromWindow(pWin);

							if((pmsg->type == FX_LBUTTON_DOWN) || (pmsg->type == FX_MBUTTON_DOWN) || (pmsg->type == FX_RBUTTON_DOWN))
							{
								if(pmsg->hwnd!=hWndFocus)
								{
									k_debug_pointer("*** k_event_loop::FX_FOCUS_WINDOW:",pmsg->hwnd);
									k_enqueue(_k_eventQueue,k_create_synthetic_window_msg(pmsg->hwnd,FX_FOCUS_WINDOW,&hWndFocus,sizeof(hWndFocus)));
									hWndFocus =  pmsg->hwnd;
								}
							}

//							if(k_isNonClient(pWin,pmsg,x,y))
//							{
//								k_debug_string("*** k_event_loop::NON-CLIENT MOUSE EVENT\r\n");
//							}


						}

					}
					*/

					/*
					if(_k_hLockedFocus && (pmsg->hwnd != _k_hLockedFocus))
					{
						pmsg->hwnd = _k_hLockedFocus;
						k_debug_pointer("k_event_loop _k_hLockedFocus LOCKED pmsg->hwnd:", pmsg->hwnd);
					}
					*/
					if(!pmsg->hwnd)
					{
						if(k_user_getDesktopWindow())
						{
							pmsg->hwnd = k_user_getDesktopWindow();
						}
					}


					/*
					if(_k_hLockedFocus)
					{
						pmsg->hwnd = _k_hLockedFocus;
						//k_debug_integer("k_event_loop _k_hLockedFocus LOCKED pmsg->type:", pmsg->type);
						//k_debug_pointer("k_event_loop _k_hLockedFocus LOCKED pmsg->hwnd:", pmsg->hwnd);
					}
					*/
				}

				//k_debug_pointer("k_event_loop hWndFocus pmsg->hwnd:", pmsg->hwnd);
				if(hWndFocus && ((pmsg->type == FX_KEY_DOWN) || (pmsg->type == FX_KEY_UP)))
				{
					k_debug_string("*** k_event_loop::FX_KEY_*\r\n");
					pmsg->hwnd = hWndFocus;
				}
				k_do_processes(pmsg);


				/*
				if(pmsg->hwnd)
				{
					//k_debug_pointer("k_do_processes:DoWndProcs:k_getWindowList:",k_getWindowList());
					k_nodelist_foreach_data(k_getWindowList(),pmsg,DoWndProcs);
				}
				*/

				//
				k_destory_msg(pmsg);

				//asm sei;
				pmsg = (PFXOSMESSAGE)k_dequeue(_k_eventQueue);
				//asm cli;
			}
			//
			//
			//k_do_procs(processMessage);
			k_do_processes(processMessage);

			/*
			volAvail = k_sd_read_vol(&diskInfo);
			if(volAvail)
			{
				k_send_message(NULL,FX_DISK_INSERT,&diskInfo,sizeof(DISKINFO));
			}
			else
			{
				k_send_message(NULL,FX_DISK_REMOVE,NULL,0);
			}
		*/

			asm cli;


			if(!floppy)
			{
				//floppy_init();
				//flpydsk_install(6);
				//flpydsk_read_sector(1);
				floppy = TRUE;
			}

			/*
			if(floppy)
				floppy_read(floppybuffer, floppyLBA++, 3);
				*/
		}

		if(processMessage)
			k_mem_deallocate_heap(processMessage);
	}
	else
	{
		k_debug_string("Exception:fxeventmanager not initialized");
		THROW_EXCEPTION(0xA000,0x0001,"");
	}


}

#endif

BOOL k_isNonClient(PWINDOW pWin,PFXOSMESSAGE pmsg,INT x,INT y)
//BOOL k_isNonClient(HWND hWnd,PFXOSMESSAGE pmsg,INT x,INT y)
{
	BOOL bRet = TRUE;
	//PWINDOW pWin;
	PRECT r = &pWin->clientRect;


	//pWin = k_getWindowFromHandle(hWnd);
	//k_debug_integer("X:",x);
	//k_debug_integer("y:",y);
	//k_debug_rect("NC CLIENT:",r);
	//k_debug_rect("NC WINDOW:",(PRECT)&pWin->win_x);
	if(pWin)
	{
		if((x > r->x) && (x < (r->x + r->width)))
		{
			if((y > r->y) && (y < (r->y + r->height)))
			{
				bRet = FALSE;
			}
		}
	}
	return bRet;
}


void IdleProc(PFXOSMESSAGE pMsg)
{
	//FIL   fp;
	LPVOID buff;
	UINT br;

	ULONG i = 0;
	//DISKINFO diskInfo;
	BOOL volAvail = FALSE;
#ifdef USE_FX256_FMX
	PFXDOSDEVICE psdcard;
#endif
	//struct omf_file *current_file;
	//PFXDOSDEVICE phddcard;
	//PFXDOSDEVICE pfddcard;
	//UCHAR devRtrn;
	//PIDENTIFY_DEVICE_DATA pinfo;
	//PIDSECTOR pids = NULL;
	//UINT *pintInfo = NULL;

	//PFXNODELIST pdirlist = NULL;


	//k_debug_string("IdleProc enter\r\n");
	if(pMsg!=NULL)
	{
		//k_put_char(0,40,idlespinner[scpu++],15,0);
		//if(scpu>3) scpu = 0;

		//k_put_char(9,11, (char)(((PMOUSEMSGDATA)pMsg)->button1)  ,15,0);



		_subTick--;

		if(_subTick == 0)
		{
			_subTick = 0x7FFF;
			//k_clean_closed_windows();
			// check heap memory
			k_heap_integrity_check();

			/*
			asm sei;
			volAvail = k_sd_read_vol(&diskInfo);
			asm cli;

			if(volAvail)
			{
				k_send_message(NULL,FX_DISK_INSERT,&diskInfo,sizeof(DISKINFO));
			}
			else
			{
				k_send_message(NULL,FX_DISK_REMOVE,NULL,0);
			}
			*/


			//reg_config();

			//k_debug_hex("k_ide_init(initHD):",initHD);
			if(initHD)
			{

				//GetDirectory("a:/");

				/*
				pfddcard = k_create_dos_device(FXDOS_FDD);
				if(pfddcard)
				{
					k_read_dos_directory(pfddcard);
					k_mem_deallocate_heap(pfddcard);
				}
				*/

				/*
				phddcard = k_create_dos_device(FXDOS_HDD);
				if(phddcard)
				{
					k_read_dos_directory(phddcard);
					k_mem_deallocate_heap(phddcard);
				}

				*/

				//k_sd_full_test();

				//psdcard = k_create_dos_device(FXDOS_SDC);
#ifdef USE_FX256_FMX_DISABLED

				psdcard = NULL;
				if(psdcard)
				{
					k_dos_read_file(psdcard,"APGMLIB.LIB");
					/*
					pdirlist = k_read_dos_directory(psdcard);
					if(pdirlist)
					{

						k_dos_read_file(psdcard,"APGM.BIN");

						k_nodelist_deallocate_list(pdirlist);
					}

					k_mem_deallocate_heap(psdcard);
					*/
					k_mem_deallocate_heap(psdcard);
					//k_fcheck_system_memory(NULL);
				}

#endif

				k_debug_string("IdleProc:f_mount...\r\n");
				//f_mount(&FatFs, "0", 1);


				k_debug_string("IdleProc:MEMORY_INIT...\r\n");
			    //my_Memory(MEMORY_INIT,NULL,NULL);

			    k_debug_string("IdleProc:LoadOMFFile...\r\n");

				//current_file = LoadOMFFile("APGMLIB.LIB");
				//if(current_file != NULL)
				//{
				//	CreateDumpFile(current_file,"a.out");
				//	mem_free_omf(current_file);
				//}

				k_debug_string("IdleProc:MEMORY_FREE...\r\n");
				//my_Memory(MEMORY_FREE,NULL,NULL);

				/*
				k_debug_string("EVTMAN:f_open...\r\n");
				fres = f_open (&fp,"APGM.BIN",FA_READ);
				k_debug_integer("fres:",fres);
				if(fres == 0)
				{
					k_debug_long("EVTMAN:objsize:",fp.obj.objsize);

					buff = k_mem_allocate_heap(fp.obj.objsize);
					if(buff)
					{
						//((LPCHAR)0x0E0000);

						//f_read(&fp,buff,(UINT)fp.obj.objsize,&br);
						f_read(&fp,((LPCHAR)0x0E0000),(UINT)fp.obj.objsize,&br);

						k_debug_long("EVTMAN:f_read:",br);


						k_debug_byte_array("APGM DATA:\r\n",((LPCHAR)0x0E0000),br);

						k_debug_string("Calling DllMain\r\n");

						((DllMain)((LPCSTR)0x0E0000))((LPCSTR)0x0E0000);

						k_debug_string("Back from DllMain\r\n");



						k_mem_deallocate_heap(buff);
					}
					f_close(&fp);
				}
				*/

			}
			else
			{
				initHD = TRUE;
				k_debug_string("IdleProc:initHD == TRUE\r\n");
				/*
				k_debug_bits("0x07 00000111:", 0x07);
				k_debug_bits("0xE0 11100000:", 0xE0);


				k_delay(100);
				k_ide_init();
				k_debug_hex("k_ide_init():",0);
				pinfo = (PIDENTIFY_DEVICE_DATA)k_ide_get_info();
				if(pinfo)
				{
					initHD = TRUE;


					k_debug_integer("Reserved1:",pinfo->GeneralConfiguration.Reserved1);
					k_debug_integer("Retired3:",pinfo->GeneralConfiguration.Retired3);
					k_debug_integer("ResponseIncomplete:",pinfo->GeneralConfiguration.ResponseIncomplete);
					k_debug_integer("Retired2:",pinfo->GeneralConfiguration.Retired2);
					//k_debug_integer("RemovableMedia:",pinfo->GeneralConfiguration.RemovableMedia);

					k_debug_integer("DeviceType:",pinfo->GeneralConfiguration.DeviceType);
					k_debug_integer("FixedDevice:",pinfo->GeneralConfiguration.FixedDevice);


					//k_debug_byte_array("k_ide_get_info:SerialNumber:",(&((LPCHAR)pinfo)[0x10]),20);
					//k_debug_byte_array("k_ide_get_info:FirmwareRevision:",(&((LPCHAR)pinfo)[0x2A]),8);
					//k_debug_byte_array("k_ide_get_info:ModelNumber:",(&((LPCHAR)pinfo)[0x32]),40);

					//k_debug_nstrings("k_ide_get_info:SerialNumber:",(&((LPCHAR)pinfo)[0x10]),20);
					//k_debug_nstrings("k_ide_get_info:FirmwareRevision:",(&((LPCHAR)pinfo)[0x2A]),8);
					//k_debug_nstrings("k_ide_get_info:ModelNumber:",(&((LPCHAR)pinfo)[0x32]),40);



					k_debug_integer("NumCylinders:",pinfo->NumCylinders);
					k_debug_integer("SpecificConfiguration:",pinfo->SpecificConfiguration);
					k_debug_integer("NumHeads:",pinfo->NumHeads);
					k_debug_integer("NumSectorsPerTrack:",pinfo->NumSectorsPerTrack);
					//k_debug_nstrings("VendorUnique1:",pinfo->VendorUnique1,3);

					k_debug_nstrings("SerialNumber:",pinfo->SerialNumber,20);


					k_debug_integer("Retired2.0:",pinfo->Retired2[0]);
					k_debug_integer("Retired2.1:",pinfo->Retired2[1]);
					k_debug_integer("Obsolete1:",pinfo->Obsolete1);

					k_debug_nstrings("FirmwareRevision:",pinfo->FirmwareRevision,8);


					k_debug_nstrings("ModelNumber:",pinfo->ModelNumber,40);

					k_debug_hex("MaximumBlockTransfer:",pinfo->MaximumBlockTransfer);
					k_debug_integer("NumberOfCurrentCylinders:",pinfo->NumberOfCurrentCylinders);
					k_debug_integer("NumberOfCurrentHeads:",pinfo->NumberOfCurrentHeads);
					k_debug_integer("CurrentSectorsPerTrack:",pinfo->CurrentSectorsPerTrack);
					k_debug_long("CurrentSectorCapacity:",pinfo->CurrentSectorCapacity);
					k_debug_hex("MaximumBlockTransfer:",pinfo->CurrentMultiSectorSetting);


					k_mem_deallocate_heap(pinfo);





				}
				*/

				//k_debug_hex("k_ide_init():",0);
				//initHD = TRUE;
			}

			/*
			if(k_sd_ispresent())
			{
				k_debug_string("SDCARD FOUND!\r\n");
				psdcard = k_sd_mount();
				if(psdcard)
				{
					k_mem_deallocate_heap(psdcard);
				}
			}
			else
			{
				k_debug_string("SDCARD NOT PRESENT!\r\n");
			}
			*/
			/*
			volAvail = k_sd_read_vol(&diskInfo);
			if(volAvail)
			{
				k_send_window_message(k_user_getDesktopWindow(),FX_DISK_INSERT,&diskInfo,sizeof(DISKINFO));
			}
			else
			{
				k_send_window_message(k_user_getDesktopWindow(),FX_DISK_REMOVE,NULL,0);
			}
			*/
		}


	}
	//k_debug_string("IdleProc exit\r\n");
}

void k_do_procs(PFXOSMESSAGE pMsg)
{
	int index = 0;

	//k_debug_string("k_do_procs:Enter\r\n");
	for(index = IDLE_PROC;index<MAX_PROCS;index++)
	{
		if(eventProcs[index] != NULL)
		{
			//if(index > IDLE_PROC)
			//	k_debug_string("Calling bad proc index.\r\n");

			eventProcs[index](pMsg);
		}
	}
}

void DoWndProcs(LPVOID ctx,LPVOID data)
{
	PFXOSMESSAGE pMsg  = (PFXOSMESSAGE)ctx;
	PWINDOW 	 pWin  = (PWINDOW)data;
	PFXPROCESS   pProc = k_exec_get_current_process();


	if(pMsg && pWin && pWin->pWndClass && pWin->pWndClass->pWndProc)
	{
		//k_debug_integer("DoWndProcs:type:",pMsg->type);

		//k_debug_pointer("DoWndProcs:HWND:check:",((LPVOID)pMsg->hwnd));
		//k_debug_pointer("DoWndProcs:pWin:check:",(LPVOID)pWin);
		if(pWin->procid == pProc->procId)
		{
			if(pMsg->hwnd && !pWin->isClosed  && ( ((LPVOID)pMsg->hwnd) == (LPVOID)pWin || ((LPVOID)pMsg->hwnd) == BROADCAST_HWND)   )
			{
				//k_debug_pointer("DoWndProcs:CALLING:pMsg:",pMsg);
				//k_debug_strings("DoWndProcs:CALLING:WindowTitle:",pWin->win_title);

				if(FX_MENU_COMMAND == pMsg->type)
				{
					k_debug_pointer("DoWndProcs::FX_MENU_COMMAND:", pMsg->hwnd);
					k_debug_pointer("DoWndProcs::FX_MENU_COMMAND:pWndProc:", pWin->pWndClass->pWndProc);
				}

				if(!pWin->pWndClass->pWndProc(pMsg))
				{
					k_debug_strings("DoWndProcs:HWND:Closed:",pWin->win_title);

					if(k_event_get_locked_focus() == pMsg->hwnd)
						k_event_unlock_focus();

					pWin->isClosed = TRUE;
					strcpy(pWin->win_title,"##CLOSED");
				}
			}
		}
		else
		{
			//k_debug_long("DoWndProcs:WRONG PROCESS:",(ULONG)pProc->procId);
		}
	}

	return;
}

void k_do_processes(PFXOSMESSAGE pMsg)
{
	int index = 0;
	int tc = 0;

	PFXPROCESS pCurrent = NULL;

	//k_debug_string("k_do_procs:Enter\r\n");
	for(index = IDLE_PROC;index<MAX_PROCS;index++)
	{
		if(eventProcess[index] != NULL)
		{
			/*
			if(eventProcess[index]->process->status == PROCESS_STATUS_TERMINATED)
			{
				k_debug_long("k_do_processes::PROCESS TERMINATING:",eventProcess[index]->process->procId);
				k_unattach_events(eventProcess[index]->eventProc,NULL);
				eventProcess[index] = NULL;
				continue;
			}
			*/


			if(eventProcess[index]->process->status == PROCESS_STATUS_WAITING)
			{
				k_debug_long("k_do_processes::PROCESS WAITING:",eventProcess[index]->process->procId);
				continue;
			}

			if(eventProcess[index]->process->status == PROCESS_STATUS_SLEEPING)
			{
				//k_debug_long("k_do_processes::PROCESS SLEEPING:",eventProcess[index]->process->procId);
				continue;
			}
			/*
			if(eventProcess[index]->process &&
			   (eventProcess[index]->process->status != PROCESS_STATUS_RUNNING) &&
			   (eventProcess[index]->process->status != PROCESS_STATUS_INIT))
			{
				if(eventProcess[index]->process->status != PROCESS_STATUS_TERMINATED)
				{
					k_debug_long("k_do_processes::PROCESS TERMINATING:",eventProcess[index]->process->procId);
					eventProcess[index] = NULL;
				}
				else if(eventProcess[index]->process->status != PROCESS_STATUS_WAITING)
				{

				}
				else if(eventProcess[index]->process->status != PROCESS_STATUS_SLEEPING)
				{

				}
				else if(eventProcess[index]->process->status != PROCESS_STATUS_SEMAPHORE)
				{

				}
				continue;
			}
			*/
			//if(index > IDLE_PROC)
			//	k_debug_string("Calling bad proc index.\r\n");

			//eventProcess[index](pMsg);
			//k_debug_pointer("k_do_processes process:",eventProcess[index]->process);

			if(eventProcess[index]->process!=NULL)
				k_exec_set_current_process(eventProcess[index]->process);

			if(eventProcess[index]->process->status == PROCESS_STATUS_TERMINATED)
			{
				k_debug_long("k_do_processes::PROCESS TERMINATING:",eventProcess[index]->process->procId);
				k_unattach_events(eventProcess[index]->eventProc,NULL);
				eventProcess[index] = NULL;
				continue;
			}

			pCurrent = eventProcess[index]->process;

			if(eventProcess[index]->process->status == PROCESS_STATUS_INIT)
			{
				k_debug_long("k_do_processes::PROCESS TO RUNNING:",eventProcess[index]->process->procId);
				eventProcess[index]->process->status = PROCESS_STATUS_RUNNING;
			}

			if(pMsg->dest!=FX_MSG_DEFAULT)
			{
				if(eventProcess[index]->eventProc && eventProcess[index]->process->procId == pMsg->dest)
				{
					k_debug_long("**Process Specific Message:PROCID:",eventProcess[index]->process->procId);
					k_debug_long("**Process Specific Message:TYPE:",pMsg->type);
					k_debug_integer("**Process Specific Message:index:",index);
					if(eventProcess[index]->eventProc)
					{
						eventProcess[index]->eventProc(pMsg);
					}
					else
					{
						k_debug_integer("**Process Specific Message:BAD PROC:",index);
					}
				}

			}
			else
			{
				if(pMsg->type == FX_PROCESS_TIMER)
				{
					//k_debug_string("** FX_PROCESS_TIMER DETECTED\r\n");
					if(pCurrent && pCurrent->timerAware )
					{
						//k_debug_string("** FX_PROCESS_TIMER DETECTED\r\n");
						for(tc=0;tc<2;tc++)
						{
							if(pCurrent->timerTicks[tc])
							{
								//k_debug_long   ("** FX_PROCESS_TIMER DETECTED:",pCurrent->procId);
								//k_debug_integer("                       INDEX:",tc);
								//k_debug_long   ("                       COUNT:",pCurrent->timerTickCount[tc]);
								pCurrent->timerTickCount[tc]--;
								if(pCurrent->timerTickCount[tc] == 0)
								{
									//k_debug_long("** FX_PROCESS_TIMER SENT:",pCurrent->procId);
									pCurrent->timerTickCount[tc] = pCurrent->timerTicks[tc];
									//pMsg->hwnd = BROADCAST_HWND;
									pMsg->hwnd = k_user_getFocusWindow();
									if(!pMsg->hwnd)
										pMsg->hwnd = BROADCAST_HWND;
								}
							}
						}
					}
				}

				if(pMsg->hwnd)
				{
					if(_k_hLockedFocus)
					{
						pMsg->hwnd = _k_hLockedFocus;

						//k_debug_pointer("k_do_processes:DoWndProcs:_k_bNCLockedFocus:",_k_bNCLockedFocus);

						if(_k_bNCLockedFocus)
						{
							if(pMsg->type < 0xF000)
							{
								//k_debug_integer("k_do_processes:DoWndProcs:pMsg->typeA:",pMsg->type);
								pMsg->type = (UINT)((LONG)pMsg->type | 0x008000);
								//k_debug_integer("k_do_processes:DoWndProcs:pMsg->typeB:",pMsg->type);
							}
						}
						//k_debug_pointer("k_do_processes:DoWndProcs:k_getWindowList:",k_getWindowList());
						k_nodelist_foreach_data(k_getWindowList(),pMsg,DoWndProcs);
					}
					else
					{
						if(eventProcess[index]->process->foregroundActive)
						{
							//k_debug_pointer("k_do_processes:DoWndProcs:k_getWindowList:",k_getWindowList());
							k_nodelist_foreach_data(k_getWindowList(),pMsg,DoWndProcs);
						}
					}

					/*
					if(eventProcess[index]->process->foregroundActive)
					{
						//k_debug_pointer("k_do_processes:DoWndProcs:k_getWindowList:",k_getWindowList());
						k_nodelist_foreach_data(k_getWindowList(),pMsg,DoWndProcs);
					}
					*/
				}
				else
				{
					if(eventProcess[index]->eventProc)
						eventProcess[index]->eventProc(pMsg);
				}

			}

			k_exec_set_current_process(NULL);
		}
	}
}

/*
void k_main_loop(PFXENVIRONMENT pEnv)
{
	int bExit = 0;
	int mb = 0;
	int mx = 0;

	int my = 0;
	int lk = 0;



	FXOSMESSAGE msg;

	k_debug_string("**********************************\r\n");
	k_debug_string("******     k_main_loop  3  *******\r\n");
	k_debug_string("**********************************\r\n");

	//asm cli;

	k_debug_string("k_main_loop:CLI\r\n");

	eventProcs[IDLE_PROC] = IdleProc;

	while(!bExit)
	{
		mb = 0;
		//k_debug_string("k_main_loop:WAI\r\n");
		//asm WAI;

		//asm sei;
		disable();
		mb = (FXOS_MOUSE_BYTE_0 & 0x07);
		mx = k_get_mouse_pos_X();
		my = k_get_mouse_pos_Y();
		//asm cli;
		enable();
		msg.type = FX_MOUSE_MOVE;

		((PMOUSEMSGDATA)&msg.data)->button1 = (mb & 1);
		((PMOUSEMSGDATA)&msg.data)->button2 = (mb & 2);
		((PMOUSEMSGDATA)&msg.data)->button3 = (mb & 4);
		((PMOUSEMSGDATA)&msg.data)->button4 = 0;

		((PMOUSEMSGDATA)&msg.data)->x = mx;
		((PMOUSEMSGDATA)&msg.data)->y = my;


		k_do_procs(&msg);
	}


	return;
}
*/
//int k_getevents(FXEventProc eventProcedure)
int k_attach_events(FXEventProc eventProcedure,LPVOID processArgs)
{
	FXPROCESSMESSAGE msg;

	int index = LOW_PROC;
	
	if(eventProcedure!=NULL)
	{
		//k_debug_string("Enter k_getevents\r\n");
		//k_debug_pointer("\tProcess:",processArgs);

		//while(index < MAX_PROCS && eventProcs[index]!=NULL)
		for(index=LOW_PROC;index<MAX_PROCS;index++)
		{
			if(eventProcs[index] == NULL)
			{
				eventProcs[index] = eventProcedure;
				k_debug_integer("k_getevents::@index:",index);
				break;
			}
		}

		msg.type = FX_INIT_MESSAGE;
		msg.src  = FX_MSG_DEFAULT;
		msg.dest = FX_MSG_DEFAULT;
		msg.processInfo = processArgs;
		eventProcedure((PFXOSMESSAGE)&msg);
	}
	return 0;
}

int k_unattach_events(FXEventProc eventProcedure,LPVOID processArgs)
{
	FXPROCESSMESSAGE msg;

	int index = LOW_PROC;

	if(eventProcedure!=NULL)
	{
		k_debug_string("k_unattach_events\r\n");
		//k_debug_pointer("\tProcess:",processArgs);

		//while(index < MAX_PROCS && eventProcs[index]!=NULL)
		for(index=LOW_PROC;index<MAX_PROCS;index++)
		{
			if(eventProcs[index] == NULL)
			{
				eventProcs[index] = eventProcedure;
				k_debug_integer("k_getevents::@index:",index);
				break;
			}
		}

		msg.type = FX_UNINIT_MESSAGE;
		msg.src  = FX_MSG_DEFAULT;
		msg.dest = FX_MSG_DEFAULT;
		msg.processInfo = processArgs;
		eventProcedure((PFXOSMESSAGE)&msg);
	}
	return 0;
}

int k_attach_process_events(FXEventProc eventProcedure,LPVOID processArgs)
{
	FXEVENTPROCESS FAR *fxep = NULL;
	FXPROCESSMESSAGE msg;

	int index = 0;

	if(eventProcedure!=NULL)
	{
		k_debug_string("Enter k_attach_process_events\r\n");
		k_debug_pointer("\eventProcedure:",eventProcedure);
		k_debug_pointer("\tProcess:",processArgs);

		for(index=IDLE_PROC;index<MAX_PROCS;index++)
		{
			if(eventProcess[index] == NULL)
			{
				fxep = (FXEVENTPROCESS FAR *)k_mem_allocate_heap(sizeof(FXEVENTPROCESS));
				if(fxep!=NULL)
				{
					eventProcess[index] = fxep;

					fxep->process = (PFXPROCESS)processArgs;
					fxep->eventProc = eventProcedure;

					k_debug_integer("k_attach_process_events::@index:",index);
				}
				break;
			}
		}

		if(index < MAX_PROCS)
		{
			msg.type = FX_INIT_MESSAGE;
			msg.processInfo = processArgs;

			k_debug_string("k_getevents @1\r\n");

			if(eventProcess[index]->process!=NULL)
				k_exec_set_current_process(eventProcess[index]->process);

			//k_debug_integer("k_getevents @2:",index);
			//k_debug_pointer("k_getevents @2:",eventProcess[index]->eventProc);

			if(eventProcess[index]->eventProc)
				eventProcess[index]->eventProc((PFXOSMESSAGE)&msg);

			//k_debug_string("k_getevents @3\r\n");

			k_exec_set_current_process(NULL);
		}

		k_debug_pointer("k_attach_process_events::k_exec_set_current_process:",k_exec_get_current_process());
	}
	return 0;
}

LPVOID k_alloc_message_arg(LPVOID data,UINT size)
{
	LPVOID ptr = NULL;

	ptr = k_mem_allocate_heap(size);
	if(ptr!=NULL)
	{
		memcpy(ptr,data,size);
	}
	return ptr;
}

VOID k_dealloc_message_arg(LPVOID data)
{
	if(data!=NULL)
		k_mem_deallocate_heap(data);
	else
		k_exec_throw_exception(THIS_MODULE,0x00010001,"Dealloc of NULL reference",-1);
}


BOOL k_send_message(LPVOID queueName,MSGTYPE msgType,LPVOID pmsgData,UINT size)
{
	BOOL bRet = FALSE;
	PFXOSMESSAGE pmsg = NULL;

	//k_debug_integer("k_send_message::msgType:",msgType);

	pmsg = (PFXOSMESSAGE)k_mem_allocate_heap(sizeof(FXOSMESSAGE));
	if(pmsg)
	{
		pmsg->type = msgType;
		pmsg->pheap = NULL;
		pmsg->src  = k_exec_get_current_process()->procId;
		pmsg->dest = FX_MSG_DEFAULT;

		if(queueName)
		{
			pmsg->dest = ((PFXPROCESS)queueName)->procId;
			k_debug_integer("k_send_message::DESTINATION:",pmsg->dest);
		}

		if(size == -1)
		{
			pmsg->pheap = pmsgData;
			k_debug_pointer("k_send_message::SPECIALDATA:",pmsg->pheap);
		}
		else
		{
			if(size > MAX_FXMSG_DATA)
				size = MAX_FXMSG_DATA;

			if(pmsgData)
				pmsg->pheap = k_alloc_message_arg(pmsgData,size);
			else
				pmsg->data[0] = 0;
		}

		k_enqueue_with_lock(_k_eventQueue,pmsg);
	}


	//k_debug_string("k_send_message::exit\r\n");

	return bRet;
}


BOOL k_send_window_message(HWND hWnd,MSGTYPE msgType,LPVOID pmsgData,UINT size)
{
	BOOL bRet = FALSE;
	PFXOSMESSAGE pmsg = NULL;

	//k_debug_pointer("k_send_window_message::hWnd:",hWnd);
	//k_debug_integer("k_send_window_message::msgType:",msgType);

	if(hWnd)
	{
		pmsg = (PFXOSMESSAGE)k_mem_allocate_heap(sizeof(FXOSMESSAGE));
		if(pmsg)
		{
			pmsg->type = msgType;
			pmsg->pheap = NULL;
			pmsg->src  = k_exec_get_current_process()->procId;
			pmsg->dest = FX_MSG_DEFAULT;
			pmsg->hwnd = hWnd;

			if(size == -1)
			{
				pmsg->pheap = pmsgData;
				//k_debug_pointer("k_send_message::SPECIALDATA:",pmsg->pheap);
			}
			else
			{
				if(size > MAX_FXMSG_DATA)
					size = MAX_FXMSG_DATA;

				if(pmsgData)
					pmsg->pheap = k_alloc_message_arg(pmsgData,size);
				else
					pmsg->data[0] = 0;
			}

			k_enqueue_with_lock(_k_eventQueue,pmsg);
		}
	}

	//k_debug_string("k_send_message::exit\r\n");

	return bRet;
}

BOOL k_send_command_message(HWND hWnd,MSGTYPE msgType,UINT cmdCId,UINT cmdMId,ULONG pData1,ULONG pData2)
{
	BOOL bRet = FALSE;
	PFXCMDMESSAGE pmsg = NULL;

	//k_debug_pointer("k_send_command_message::hWnd:",hWnd);
	//k_debug_long("k_send_command_message::pData1:",pData1);
	//k_debug_integer("k_send_window_message::msgType:",msgType);

	if(hWnd)
	{
		pmsg = (PFXCMDMESSAGE)k_mem_allocate_heap(sizeof(FXCMDMESSAGE));
		if(pmsg)
		{
			pmsg->type = msgType;
			pmsg->pheap = NULL;
			pmsg->src  = k_exec_get_current_process()->procId;
			pmsg->dest = FX_MSG_DEFAULT;
			pmsg->hwnd = hWnd;

			pmsg->cmdCId = cmdCId;
			pmsg->cmdMId = cmdMId;
			pmsg->parameter1 = (ULONG)pData1;
			pmsg->parameter2 = (ULONG)pData2;

			pmsg->parameter3 = 0L;

			k_enqueue_with_lock(_k_eventQueue,(PFXOSMESSAGE)pmsg);
		}
	}

	//k_debug_string("k_send_command_message::exit\r\n");

	return bRet;
}

BOOL k_send_process_command_message(PFXPROCESS process,MSGTYPE msgType,UINT cmdCId,UINT cmdMId,ULONG pData1,ULONG pData2)
{
	BOOL bRet = FALSE;
	PFXCMDMESSAGE pmsg = NULL;

	//k_debug_pointer("k_send_command_message::hWnd:",hWnd);
	//k_debug_long("k_send_command_message::pData1:",pData1);
	//k_debug_integer("k_send_window_message::msgType:",msgType);

	if(process)
	{
		pmsg = (PFXCMDMESSAGE)k_mem_allocate_heap(sizeof(FXCMDMESSAGE));
		if(pmsg)
		{
			pmsg->type = msgType;
			pmsg->pheap = NULL;
			pmsg->src  = k_exec_get_current_process()->procId;
			pmsg->dest = process->procId;
			pmsg->hwnd = NULL;

			pmsg->cmdCId = cmdCId;
			pmsg->cmdMId = cmdMId;
			pmsg->parameter1 = (ULONG)pData1;
			pmsg->parameter2 = (ULONG)pData2;

			pmsg->parameter3 = 0L;

			k_enqueue_with_lock(_k_eventQueue,(PFXOSMESSAGE)pmsg);
		}
	}

	//k_debug_string("k_send_command_message::exit\r\n");

	return bRet;
}

void k_irq_device_event(MSGIRQ type,ULONG timer,void FAR *data)
{
	PFXOSMESSAGE pmsg = k_create_msg(type,timer,data);
	if(pmsg)
	{
		if(type == IRQE_MOUSE)
			pmsg = k_updateMouseState(pmsg,timer,data);
		//else
		//	k_debug_integer("k_irq_device_event:type:",type);

		if(type == IRQE_CTLR_RESET)
		{
			k_debug_integer("k_irq_device_event:IRQE_CTLR_RESET:",timer);
			if(timer == -1)
			{
				_k_mouseState.buttonLeftDown   = FALSE;
				_k_mouseState.buttonMiddleDown = FALSE;
				_k_mouseState.buttonRightDown  = FALSE;
				_k_mouseState.lastEvent = 0;
			}
		}
		//if(type == IRQE_FLOPPY)
		//	k_debug_integer("k_irq_device_event:IRQE_FLOPPY:",type);
		//if(type != IRQE_SOL_TIMER && type != IRQE_COM1)
		//	k_debug_integer("k_irq_device_event:",type);

		k_enqueue(_k_eventQueue,pmsg);
	}
}

PFXOSMESSAGE k_updateMouseState(PFXOSMESSAGE pmsg,ULONG timer,void FAR *data)
{
	ULONG lastTimer = _k_mouseState.lastEvent;

	INT statusLeft   = ((LPCHAR)data)[0] & 1;
	INT statusRight  = ((LPCHAR)data)[0] & 2;
	INT statusMiddle = ((LPCHAR)data)[0] & 4;

	if(_k_mouseState.buttonLeftDown)
	{
		if(statusLeft)
		{
			_k_mouseState.buttonLeftDown = 1;
			//_k_mouseState.lastLeftDown = timer;

			if((timer - _k_mouseState.lastLeftDown) > 5)
			{
				//k_debug_string("k_updateMouseState:LeftMouseDRAG\r\n");
				pmsg->type = FX_LBUTTON_DRAG;
			}
		}
		else
		{
			//k_debug_string("k_updateMouseState:LeftMouseUp\r\n");
			pmsg->type = FX_LBUTTON_UP;
			_k_mouseState.buttonLeftDown = 0;
		}
	}
	else
	{
		if(statusLeft)
		{
			_k_mouseState.buttonLeftDown = 1;

			if((timer - _k_mouseState.lastLeftDown) < 5)
			{
				//k_debug_integer("k_updateMouseState:LeftMouseDblClick:",timer - _k_mouseState.lastLeftDown);
				pmsg->type = FX_LBUTTON_DBLCLICK;
			}
			else
			{
				//k_debug_string("k_updateMouseState:LeftMouseDown\r\n");
				pmsg->type = FX_LBUTTON_DOWN;
			}
			_k_mouseState.lastLeftDown = timer;
		}
		else
		{

			_k_mouseState.buttonLeftDown = 0;
		}
	}

	if(_k_mouseState.buttonRightDown)
	{
		if(statusRight)
		{
			_k_mouseState.buttonRightDown = 1;
			if((timer - _k_mouseState.lastRightDown) > 5)
			{
				//k_debug_string("k_updateMouseState:LeftMouseDRAG\r\n");
				pmsg->type = FX_RBUTTON_DRAG;
			}
		}
		else
		{
			//k_debug_string("k_updateMouseState:RightMouseUp\r\n");
			pmsg->type = FX_RBUTTON_UP;
			_k_mouseState.buttonRightDown = 0;
		}
	}
	else
	{
		if(statusRight)
		{
			_k_mouseState.buttonRightDown = 1;

			if((timer - _k_mouseState.lastRightDown) < 5)
			{
				//k_debug_integer("k_updateMouseState:RightMouseDblClick:",timer - _k_mouseState.lastRightDown);
				pmsg->type = FX_RBUTTON_DBLCLICK;
			}
			else
			{
				//k_debug_string("k_updateMouseState:RightMouseDown\r\n");
				pmsg->type = FX_RBUTTON_DOWN;
			}
			_k_mouseState.lastRightDown = timer;
		}
		else
		{

			_k_mouseState.buttonRightDown = 0;
		}
	}

	if(_k_mouseState.buttonMiddleDown)
	{
		if(statusMiddle)
		{
			_k_mouseState.buttonMiddleDown = 1;
			if((timer - _k_mouseState.lastMiddleDown) > 5)
			{
				//k_debug_string("k_updateMouseState:MiddletMouseDRAG\r\n");
				pmsg->type = FX_MBUTTON_DRAG;
			}
		}
		else
		{
			//k_debug_string("k_updateMouseState:MiddleMouseUp\r\n");
			pmsg->type = FX_MBUTTON_UP;
			_k_mouseState.buttonMiddleDown = 0;
		}
	}
	else
	{
		if(statusMiddle)
		{
			_k_mouseState.buttonMiddleDown = 1;

			if((timer - _k_mouseState.lastMiddleDown) < 5)
			{
				//k_debug_integer("k_updateMouseState:MiddleMouseDblClick:",timer - _k_mouseState.lastMiddleDown);
				pmsg->type = FX_MBUTTON_DBLCLICK;
			}
			else
			{
				//k_debug_string("k_updateMouseState:MiddleMouseDown\r\n");
				pmsg->type = FX_MBUTTON_DOWN;
			}
			_k_mouseState.lastMiddleDown = timer;
		}
		else
		{

			_k_mouseState.buttonMiddleDown = 0;
		}
	}

	_k_mouseState.lastEvent = timer;

	return pmsg;
}

PFXOSMESSAGE k_create_process_msg(void FAR *data)
{
	PFXOSMESSAGE pmsg = (PFXOSMESSAGE)k_mem_allocate_heap(sizeof(FXOSMESSAGE));
	if(pmsg)
	{
		memset(pmsg,0,sizeof(FXOSMESSAGE));
		pmsg->type = FX_PROCESS;
		pmsg->dest = FX_MSG_DEFAULT;
		pmsg->src  = FX_MSG_DEFAULT;
		pmsg->data[0] = 0;
	}
	return pmsg;
}

PFXOSMESSAGE k_create_synthetic_window_msg(HWND hWnd,MSGTYPE type,void FAR *data,UINT length)
{
	PFXOSMESSAGE pmsg = (PFXOSMESSAGE)k_mem_allocate_heap(sizeof(FXOSMESSAGE));
	if(pmsg)
	{
		if(length < 16)
		{
			memset(pmsg,0,sizeof(FXOSMESSAGE));
			pmsg->type = FX_PROCESS;
			pmsg->hwnd = hWnd;
			pmsg->dest = FX_MSG_DEFAULT;
			pmsg->src  = FX_MSG_DEFAULT;
			memcpy(pmsg->data,data,length);
		}
	}
	return pmsg;
}


PFXOSMESSAGE k_create_msg(MSGIRQ type,ULONG timer,void FAR *data)
{
	PFXOSMESSAGE pmsg = (PFXOSMESSAGE)k_mem_allocate_heap(sizeof(FXOSMESSAGE));
	//PFXOSMESSAGE pmsg = (PFXOSMESSAGE)malloc(sizeof(FXOSMESSAGE));
	if(pmsg)
	{
		memset(pmsg,0,sizeof(FXOSMESSAGE));
		pmsg->pheap = (LPVOID)0xFFFFFF;
		pmsg->dest = FX_MSG_DEFAULT;
		pmsg->src  = FX_MSG_DEFAULT;
		//k_debug_integer("k_create_msg:",type);
		switch(type)
		{
		case IRQE_KEYBOARD:
			pmsg->type = FX_KEY_DOWN;
			pmsg->data[0] = *((INT*)data) & 0x00FF; // keycode
			pmsg->data[1] = (*((INT*)data) > 256); // exkeycode
			pmsg->data[2] = k_getKeyboardChar(*((BYTE*)data),pmsg->data[1],pmsg->data[1]); // char

			if(pmsg->data[0] > 128)
			{
				pmsg->type = FX_KEY_UP;
			}

			break;
		case IRQE_MOUSE:
			pmsg->type = FX_MOUSE_MOVE;
			pmsg->data[0] = *((BYTE*)data) & 7; // mouse byte 1
			pmsg->data[1] = ((LPCHAR)data)[1];
			pmsg->data[2] = ((LPCHAR)data)[2];
			pmsg->data[3] = ((LPCHAR)data)[3];
			pmsg->data[4] = ((LPCHAR)data)[4];

			break;
		case IRQE_COM1:
			pmsg->type = FX_COM1_DATA;
			pmsg->data[0] = ((LPCHAR)data)[0];
			break;
		case IRQE_COM2:
			pmsg->type = FX_COM2_DATA;
			pmsg->data[0] = ((LPCHAR)data)[0];
			break;
		case IRQE_SOL_TIMER:
			pmsg->type = FX_PROCESS_TIMER;
			pmsg->data[0] = 0;
			break;
		case IRQE_FLOPPY:
			pmsg->type = FX_PROCESS_FLOPPY;
			pmsg->pheap = k_mem_allocate_heap(512);
			memcpy(pmsg->pheap,data,512);
			//k_debug_integer("IRQE_FLOPPY:",FX_PROCESS_FLOPPY);
			break;
		case IRQE_SDCARD:
			pmsg->type = FX_PROCESS_SDCARD;
			pmsg->data[0] = 0;
			//pmsg->pheap = k_mem_allocate_heap(512);
			//memcpy(pmsg->pheap,data,512);
			break;
		case IRQE_SDCARD_INS:
			pmsg->type = FX_PROCESS_SDCARD;
			pmsg->data[0] = 0;
			//pmsg->pheap = k_mem_allocate_heap(512);
			//memcpy(pmsg->pheap,data,512);
			break;
		default:
			pmsg->type = 99;//IRQE_UNKNOWN;
			break;
		}
		//k_debug_integer("k_create_msg pmsg->type:",pmsg->type);
	}
	return pmsg;
}

void k_destory_msg(PFXOSMESSAGE pmsg)
{
	if(pmsg!=NULL)
	{
		if(pmsg->pheap!=NULL && pmsg->pheap!=(LPVOID)0xFFFFFF)
			k_dealloc_message_arg(pmsg->pheap);

		/*
		if(pmsg->pheap == (LPVOID)0xFFFFFF)
		{
			//k_debug_pointer("k_destory_msg:IRQ MSG:",pmsg);
			free(pmsg);
		}
		else
			k_mem_deallocate_heap(pmsg);
		*/
		k_mem_deallocate_heap(pmsg);
	}
}


KEYCODE k_getKeyboardChar(SCANCODE sc,int isExt,int isShift)
{
	KEYCODE kc = 0;

	if(isShift)
		kc =  _k_keyCodesShiftSet[sc];
	else
		kc =  _k_keyCodesSet[sc];

	if(kc == 0)
	{
		k_debug_integer("UNMAPPED KEY:",sc);
		k_debug_integer("UNMAPPED isExt:",isExt);
		k_debug_integer("UNMAPPED isShift:",isShift);
	}
	return kc;
}

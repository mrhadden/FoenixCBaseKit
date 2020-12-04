
#ifndef __FX_EVENT_MANAGER
#define __FX_EVENT_MANAGER 

#include "fxos.h"
#include "fxexec.h"
#include "fxnode.h"
#include "fxconsole.h"
#include "fxwindowmanager.h"

//extern FXQUEUE FAR *_k_eventQueue;



typedef struct _fx_main_loopvars
{
	int dummy;
}MAINLOOPARGS;

#define FX_MSG_DEFAULT			(-1)

#define FX_COM1_DATA			(0xFC00)
#define FX_COM2_DATA			(0xFC01)

#define FX_DRAW_WINDOW			(0xFB00)
#define FX_DRAW_NONCLIENT		(0xFB01)
#define FX_DRAW_CLIENT			(0xFB02)
#define FX_DRAW_GADGET			(0xFB03)
#define FX_DRAW_BACKGROUND		(0xFB04)
#define FX_SHOW_WINDOW			(0xFB05)
#define FX_HIDE_WINDOW			(0xFB06)
#define FX_REDRAW_WINDOW		(0xFB07)
#define FX_MOVE_WINDOW			(0xFB08)
#define FX_MIN_WINDOW			(0xFB09)
#define FX_MAX_WINDOW			(0xFB0A)

#define FX_RESIZE_WINDOW_START	(0xFB0B)
#define FX_RESIZE_WINDOW_END	(0xFB0C)
#define FX_DRAG_WINDOW_START	(0xFB0D)
#define FX_DRAG_WINDOW_END		(0xFB0E)
#define FX_RESIZE_WINDOW		(0xFB0F)
#define FX_DRAG_WINDOW			(0xFB10)


#define FX_WINDOW_CLOSE			(0xFBFF)

#define FX_PROCESS				(0xFF00)
#define FX_INIT_MESSAGE			(0xFF01)		
#define FX_UNINIT_MESSAGE		(0xFF02)

#define FX_CREATE_WINDOW		(0xFF03)

#define FX_MOUSE_HIDE			(0x0F00)
#define FX_MOUSE_ENTER			(0x0F01)
#define FX_MOUSE_EXIT			(0x0F02)
#define FX_MOUSE_MOVE			(0x0F03)

#define FX_LBUTTON_DOWN			(0x0F04)
#define FX_LBUTTON_DRAG			(0x0F05)
#define FX_LBUTTON_UP			(0x0F06)
#define FX_LBUTTON_DBLCLICK	    (0x0F07)

#define FX_RBUTTON_DOWN			(0x0F08)
#define FX_RBUTTON_DRAG			(0x0F09)
#define FX_RBUTTON_UP			(0x0F0A)
#define FX_RBUTTON_DBLCLICK	    (0x0F0B)

#define FX_MBUTTON_DOWN			(0x0F0C)
#define FX_MBUTTON_DRAG			(0x0F0D)
#define FX_MBUTTON_UP			(0x0F0E)
#define FX_MBUTTON_DBLCLICK	    (0x0F0F)

#define FX_MOUSE_SHOW			(0x0F10)


#define FX_NC_MOUSE_HIDE		(0x8F00)
#define FX_NC_MOUSE_ENTER		(0x8F01)
#define FX_NC_MOUSE_EXIT		(0x8F02)
#define FX_NC_MOUSE_MOVE		(0x8F03)

#define FX_NC_LBUTTON_DOWN		(0x8F04)
#define FX_NC_LBUTTON_DRAG		(0x8F05)
#define FX_NC_LBUTTON_UP		(0x8F06)
#define FX_NC_LBUTTON_DBLCLICK 	(0x8F07)

#define FX_NC_RBUTTON_DOWN		(0x8F08)
#define FX_NC_RBUTTON_DRAG		(0x8F09)
#define FX_NC_RBUTTON_UP		(0x8F0A)
#define FX_NC_RBUTTON_DBLCLICK	(0x8F0B)

#define FX_NC_MBUTTON_DOWN		(0x8F0C)
#define FX_NC_MBUTTON_DRAG		(0x8F0D)
#define FX_NC_MBUTTON_UP		(0x8F0E)
#define FX_NC_MBUTTON_DBLCLICK	(0x8F0F)



#define FX_KEY_DOWN				(0x0F10)
#define FX_CHAR					(0x0F11)
#define FX_KEY_UP				(0x0F12)
#define FX_FOCUS_WINDOW			(0x0F13)

#define FX_DISK_INSERT			(0x0F20)
#define FX_DISK_CHANGE			(0x0F21)
#define FX_DISK_REMOVE			(0x0F22)

#define FX_WINDOW_TOFRONT		(0x0F30)
#define FX_WINDOW_TOBACK		(0x0F31)

#define FX_TIMER				(0xF001)

#define FX_MENU_SELECT	  		(0xF100)
#define FX_MENU_SHOW	  		(0xF101)
#define FX_MENU_HIDE	  		(0xF101)


#define MSG_GETMOUSE_X(a)		(*(((INT*)&a->data[1])))
#define MSG_GETMOUSE_Y(a)		(*(((INT*)&a->data[3])))
#define MSGCMDID(a)             ((PFXCMDMESSAGE)(a))->cmdCId
#define MSGCMDPARM1(a)          ((PFXCMDMESSAGE)(a))->parameter1
#define MSGCMDPARM2(a)          ((PFXCMDMESSAGE)(a))->parameter2
#define MSGCMDPARM3(a)          ((PFXCMDMESSAGE)(a))->parameter3

#define FX_CONTROL_COMMAND		(0xFA00)
#define CTL_CMD_CAPTION			(0x0001)
#define CTL_CMD_FGCOLOR			(0x0002)
#define CTL_CMD_BGCOLOR			(0x0003)

#define FX_MENU_COMMAND			(0xFA01)
#define CTL_MENU_SELECTED		(0x0001)
#define CTL_BUTTON_SELECTED		(0x0002)
#define CTL_MENU_CHECKED		(0x0003)

#define FX_SCROLLBAR_COMMAND	(0xFA02)
#define CTL_VERT_SCROLL			(0x0001)
#define CTL_HORZ_SCROLL			(0x0002)
#define CTL_SB_ADD_ITEM			(0x0003)
#define CTL_SB_ADD_ITEMS		(0x0004)
#define CTL_SB_REMOVE_ITEM		(0x0005)
#define CTL_SB_CLEAR_ITEMS		(0x0006)
#define CTL_SB_SET_MIN			(0x0007)
#define CTL_SB_SET_MAX			(0x0008)
#define CTL_SB_SET_INCREMENT	(0x0009)

#define FX_LISTBOX_COMMAND		(0xFA03)



#define FX_APP_MESSAGE			(0xFFF0)
#define FX_PROCESS_TIMER		(0xFFF1)
#define FX_PROCESS_FLOPPY		(0xFFF2)
#define FX_PROCESS_SDCARD		(0xFFF3)

#define ISPROCESSMSG(a)			(a & 0xF000)

#define BROADCAST_HWND			((LPVOID)0xFFFAFFFA)

typedef enum irq_event
{
	IRQE_UNKNOWN  	= 0,
	IRQE_KEYBOARD 	= 1,
	IRQE_MOUSE 	  	= 2,
	IRQE_COM1	  	= 3,
	IRQE_COM2	  	= 4,
	IRQE_SOL_TIMER	= 5,
	IRQE_FLOPPY   	= 6,
	IRQE_SDCARD   	= 7,
	IRQE_SDCARD_INS = 8,
	IRQE_CTLR_RESET = 9,
}MSGIRQ;


#define MOUSEDATA_BUTTON_DOWN (0x01)
#define MOUSEDATA_BUTTON_UP   (0x00)

typedef struct _fxMouseMessageData
{
   unsigned char button1;
   unsigned char button2;
   unsigned char button3;
   unsigned char button4;
   unsigned int x;			
   unsigned int y;
}MOUSEMSGDATA;
typedef MOUSEMSGDATA FAR *PMOUSEMSGDATA;

//static UCHAR _eventQueueIndex = 0;
//static PFXOSMESSAGE _k_eventQueue[255];

typedef void (*FXEventProc)(PFXOSMESSAGE pmsg);

typedef struct _fx_eventProcess
{
	PFXPROCESS  process;
	FXEventProc eventProc;
}FXEVENTPROCESS;
typedef FXEVENTPROCESS FAR *PFXEVENTPROCESS;

typedef struct _mouse_msg_state
{
	ULONG lastEvent;
	BOOL  buttonLeftDown;
	ULONG lastLeftDown;
	BOOL  buttonRightDown;
	ULONG lastRightDown;
	BOOL  buttonMiddleDown;
	ULONG lastMiddleDown;
	UINT  lastX;
	UINT  lastY;
}MOUSE_MSG_STATE;
typedef MOUSE_MSG_STATE FAR *PMOUSE_MSG_STATE;

ULONG k_get_systemtimer(void);
VOID k_initalize_event_manager(void);
//
//
//
//
KEYCODE k_getKeyboardChar(SCANCODE sc,int isExtended,int isShifted);
//
//
//
void IdleProc(PFXOSMESSAGE pMsg);

void k_do_procs(PFXOSMESSAGE pMsg);
void k_do_processes(PFXOSMESSAGE pMsg);

//void k_main_loop(PFXENVIRONMENT pEnv);
void k_event_loop(void);


void k_signal_sol_event(LONG FAR *timerInfo);

BOOL k_event_lock_focus(HWND hWnd);
BOOL k_event_lock_focus_ex(HWND hWnd,BOOL asNonclient);
HWND k_event_get_locked_focus(void);
HWND k_event_unlock_focus(void);


int k_attach_events(FXEventProc eventProcedure,LPVOID processArgs);
int k_unattach_events(FXEventProc eventProcedure,LPVOID processArgs);

void k_irq_device_event(MSGIRQ type,ULONG _pseudo_timer,void FAR *data);
PFXOSMESSAGE k_create_msg(MSGIRQ type,ULONG timer,void FAR *data);
PFXOSMESSAGE k_create_process_msg(void FAR *data);
PFXOSMESSAGE k_create_synthetic_window_msg(HWND hWnd,MSGTYPE type,void FAR *data,UINT length);
PFXOSMESSAGE k_updateMouseState(PFXOSMESSAGE pmsg,ULONG timer,void FAR *data);
void k_destory_msg(PFXOSMESSAGE pmsg);
//BOOL k_isNonClient(HWND hWnd,PFXOSMESSAGE pmsg,INT x,INT y);
BOOL k_isNonClient(PWINDOW pWin,PFXOSMESSAGE pmsg,INT x,INT y);

LPVOID k_alloc_message_arg(LPVOID data,UINT size);
VOID   k_dealloc_message_arg(LPVOID data);
BOOL   k_send_message(LPVOID queueName,MSGTYPE msgType,LPVOID pmsgData,UINT size);
BOOL   k_send_window_message(HWND hWnd,MSGTYPE msgType,LPVOID pmsgData,UINT size);
BOOL   k_send_command_message(HWND hWnd,MSGTYPE msgType,UINT cmdCId,UINT cmdMId,ULONG pData1,ULONG pData2);
BOOL   k_send_process_command_message(PFXPROCESS process,MSGTYPE msgType,UINT cmdCId,UINT cmdMId,ULONG pData1,ULONG pData2);

extern  KEYCODE _k_keyCodesSet[];
extern  KEYCODE _k_keyCodesShiftSet[];
extern  KEYCODE _k_keyCodesExtSet[];
/*
static KEYCODE _k_keyCodesSet[] =
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

static KEYCODE _k_keyCodesShiftSet[] =
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

static KEYCODE _k_keyCodesExtSet[] =
{
		0
};
*/

/*




0x01	escape pressed
0x02	1 pressed
0x03	2 pressed
0x04	3 pressed
0x05	4 pressed
0x06	5 pressed
0x07	6 pressed
0x08	7 pressed
0x09	8 pressed
0x0A	9 pressed
0x0B	0 (zero) pressed
0x0C	- pressed
0x0D	= pressed
0x0E	8
0x0F	tab pressed
0x10	Q pressed
0x11	W pressed
0x12	E pressed
0x13	R pressed
0x14	T pressed
0x15	Y pressed
0x16	U pressed
0x17	I pressed
0x18	O pressed
0x19	P pressed
0x1A	[ pressed
0x1B	] pressed
0x1C	enter pressed
0x1D	left control pressed
0x1E	A pressed
0x1F	S pressed
0x20	D pressed
0x21	F pressed
0x22	G pressed
0x23	H pressed
0x24	J pressed
0x25	K pressed
0x26	L pressed
0x27	 ; pressed
0x28	' (single quote) pressed
0x29	` (back tick) pressed
0x2A	left shift pressed
0x2B	\ pressed
0x2C	Z pressed
0x2D	X pressed
0x2E	C pressed
0x2F	V pressed
0x30	B pressed
0x31	N pressed
0x32	M pressed
0x33	, pressed
0x34	. pressed
0x35	/ pressed
0x36	right shift pressed
0x37	(keypad) * pressed
0x38	left alt pressed
0x39	space pressed
0x3A	CapsLock pressed
0x3B	F1 pressed
0x3C	F2 pressed
0x3D	F3 pressed
0x3E	F4 pressed
0x3F	F5 pressed
0x40	F6 pressed
0x41	F7 pressed
0x42	F8 pressed
0x43	F9 pressed
0x44	F10 pressed
0x45	NumberLock pressed
0x46	ScrollLock pressed
0x47	(keypad) 7 pressed
0x48	(keypad) 8 pressed
0x49	(keypad) 9 pressed
0x4A	(keypad) - pressed
0x4B	(keypad) 4 pressed
0x4C	(keypad) 5 pressed
0x4D	(keypad) 6 pressed
0x4E	(keypad) + pressed
0x4F	(keypad) 1 pressed
0x50	(keypad) 2 pressed
0x51	(keypad) 3 pressed
0x52	(keypad) 0 pressed
0x53	(keypad) . pressed
0x54
0x55
0x56
0x57	F11 pressed
0x58	F12 pressed


0xE0,
0x35	(keypad) / pressed

0xE0,
0x38	right alt (or altGr) pressed

0xE0,
0x47	home pressed

0xE0,
0x48	cursor up pressed

0xE0,
0x49	page up pressed

0xE0,
0x4B	cursor left pressed

0xE0,
0x4D	cursor right pressed

0xE0,
0x4F	end pressed

0xE0,
0x50	cursor down pressed

0xE0,
0x51	page down pressed

0xE0,
0x52	insert pressed

0xE0,
0x53	delete pressed

0xE0,
0x2A,
0xE0,
0x37	print screen pressed


0x81	escape released
0x82	1 released
0x83	2 released

0x84	3 released
0x85	4 released
0x86	5 released
0x87	6 released

0x88	7 released
0x89	8 released
0x8A	9 released
0x8B	0 (zero) released

0x8C	- released
0x8D	= released
0x8E	backspace released
0x8F	tab released

0x90	Q released
0x91	W released
0x92	E released
0x93	R released

0x94	T released
0x95	Y released
0x96	U released
0x97	I released

0x98	O released
0x99	P released
0x9A	[ released
0x9B	] released

0x9C	enter released
0x9D	left control released
0x9E	A released
0x9F	S released

0xA0	D released
0xA1	F released
0xA2	G released
0xA3	H released

0xA4	J released
0xA5	K released
0xA6	L released
0xA7	 ; released

0xA8	' (single quote) released
0xA9	` (back tick) released
0xAA	left shift released
0xAB	\ released

0xAC	Z released
0xAD	X released
0xAE	C released
0xAF	V released

0xB0	B released
0xB1	N released
0xB2	M released
0xB3	, released

0xB4	. released
0xB5	/ released
0xB6	right shift released
0xB7	(keypad) * released

0xB8	left alt released
0xB9	space released
0xBA	CapsLock released
0xBB	F1 released

0xBC	F2 released
0xBD	F3 released
0xBE	F4 released
0xBF	F5 released

0xC0	F6 released
0xC1	F7 released
0xC2	F8 released
0xC3	F9 released

0xC4	F10 released
0xC5	NumberLock released
0xC6	ScrollLock released
0xC7	(keypad) 7 released

0xC8	(keypad) 8 released
0xC9	(keypad) 9 released
0xCA	(keypad) - released
0xCB	(keypad) 4 released

0xCC	(keypad) 5 released
0xCD	(keypad) 6 released
0xCE	(keypad) + released
0xCF	(keypad) 1 released

0xD0	(keypad) 2 released
0xD1	(keypad) 3 released
0xD2	(keypad) 0 released
0xD3	(keypad) . released

0xD7	F11 released
0xD8	F12 released

0xE0,
0xB5	(keypad) / released

0xE0,
0xB8	right alt (or altGr) released

0xE0,
0xC7	home released

0xE0,
0xC8	cursor up released
0xE0,
0xC9	page up released
0xE0,
0xCB	cursor left released

0xE0,
0xCD	cursor right released
0xE0,
0xCF	end released

0xE0,
0xD0	cursor down released
0xE0,
0xD1	page down released
0xE0,
0xD2	insert released
0xE0,
0xD3	delete released

0xE0,
0xDB	left GUI released

0xE0,
0xDC	right GUI released


0xE0,
0xB7,
0xE0,
0xAA	print screen released


*/
#endif

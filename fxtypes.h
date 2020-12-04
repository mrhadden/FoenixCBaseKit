
#ifndef __FX_TYPES_
#define __FX_TYPES_

#ifdef _NOFAR
#define FAR
#else
#define FAR far
#endif

#define	THROW_EXCEPTION(a,b,c)	{asm BRK;}


#ifndef NULL
#define NULL	((void *)0)
#endif

#ifndef TRUE
#define TRUE	(1)
#endif

#ifndef FALSE
#define FALSE	(0)
#endif

typedef void VOID;
typedef void FAR *LPVOID;
//#ifndef UINT8
//typedef unsigned char UINT8;
//#define UINT8
//#endif
typedef char  CHAR;
typedef CHAR FAR *LPCHAR;
typedef CHAR FAR *LPSTR;
typedef const CHAR FAR *LPCSTR;
typedef const CHAR FAR *LPWCSTR;
typedef unsigned char UCHAR;
typedef unsigned char BYTE;
typedef unsigned char *PBYTE;
typedef int  WORD;
typedef int  INT;
typedef unsigned int  UINT;
typedef unsigned int  USHORT;
typedef unsigned int FAR *PUINT;
//#ifndef UINT16
//typedef unsigned int  UINT16;
//#define UINT16
//#endif
typedef long  LONG;
typedef LONG FAR *LPLONG;
typedef unsigned long ULONG;
typedef unsigned long DWORD;
//#ifndef UINT32
//typedef unsigned long  UINT32;
//#define UINT32
//#endif
typedef unsigned char  BOOL;
typedef BOOL FAR *LPBOOL;
typedef UCHAR FAR *PFAR;

typedef UCHAR uint8_t;
typedef ULONG uint32_t;

typedef LPVOID HPOINTER;
typedef LPVOID HDC;
typedef LPVOID HFONT;
typedef LPVOID HCOLOR;


typedef struct _fx_bytebits
{
	unsigned char b7:1;
	unsigned char b6:1;
	unsigned char b5:1;
	unsigned char b4:1;
	unsigned char b3:1;
	unsigned char b2:1;
	unsigned char b1:1;
	unsigned char b0:1;
}BYTEBITS;
typedef BYTEBITS FAR *PBYTEBITS;

typedef struct _fx_node
{
	BYTE 		type;
	BYTE 		Reserved0;
    LPVOID  	data;
    struct 	_fx_node FAR *last;
    struct 	_fx_node FAR *next;
    UCHAR	   name[32];
    UINT 	   Reserved1;
}FXNODE;
typedef FXNODE FAR *PFXNODE;

typedef void (*NodeListDeallocator)(LPCSTR name,LPVOID pdata);

typedef struct _fx_nodelist
{
	PFXNODE listhead;
	LPVOID  listData;
	NodeListDeallocator deallocator;
}FXNODELIST;
typedef FXNODELIST FAR *PFXNODELIST;

struct _fx_queue
{
    int     count;
    FXNODE FAR *front;
    FXNODE FAR *rear;
};
typedef struct _fx_queue FXQUEUE;
typedef FXQUEUE FAR *PFXQUEUE;

typedef BYTE	PROCESS_BANK;
typedef ULONG   PROCESS_ID;
typedef UINT    USERID;
typedef LPVOID  PROCESS_CTX;
typedef LPVOID  PROCESS_TLS;
typedef LPVOID  PROCESS_RESOURCE;
typedef LPCHAR	FILE_PATH_NAME;
typedef UINT	PROCESS_STATUS;

typedef struct
{
	UCHAR subsystem;
	UCHAR level;
	UINT error;
} KERNEL_ERROR;
typedef KERNEL_ERROR FAR *PKERNEL_ERROR;
typedef ULONG KRESULT;
#define AS_KERR(a) ((PKERNEL_ERROR)a)
#define KERR_SUCCESS	(0L)
#define KERR_FAIL		(0x80000000L)
#define SUCCESS(a)		((0x80000000L & a) == 0)
#define FAILED(a)		(0x80000000L & a)

/*
typedef struct _fx_process_task_list
{
	UINT cbSize;
	UINT taskCount;
	LPCSTR FAR *
}PROCESS_TASK_LIST;
typedef PROCESS_TASK_LIST FAR *PPROCESS_TASK_LIST;
*/
#define PROCESS_TIMER_0		(0)
#define PROCESS_TIMER_1		(1)


typedef struct _fx_process_signal
{
	UINT cbSize;
}PROCESS_SIGNAL;
typedef PROCESS_SIGNAL FAR *PPROCESS_SIGNAL;

#define PROCESS_STATUS_INIT 		(0x00)
#define PROCESS_STATUS_RUNNING 		(0x01)
#define PROCESS_STATUS_SLEEPING		(0x02)
#define PROCESS_STATUS_TERMINATED	(0x03)
#define PROCESS_STATUS_READY	    (0xF0)
#define PROCESS_STATUS_WAITING		(0xF1)
#define PROCESS_STATUS_SEMAPHORE	(0xF2)

typedef struct _fx_semaphore
{
	int reserved;
}SEMAPHORE;

typedef struct _fx_fileBlock
{
	UINT openCount;
	UINT lockCount;
	BOOL dirty;
	BYTE fileBuffer[64];
}FILE_BLOCK;
typedef FILE_BLOCK FAR *FILE_HANDLE;

typedef PFXNODELIST PROCEDURE_LIST;
typedef PFXNODELIST FILE_PATH_LIST;
typedef PFXNODELIST FILE_BLOCK_LIST;
typedef PFXNODELIST SEMAPHORE_LIST;
typedef PFXNODELIST PROCESS_TLS_LIST;
typedef PFXNODELIST PROCESS_RESOURCE_LIST;

#define PFXNODE_FILE_PATH_TYPE			(0xA1)
#define PFXNODE_FILE_BLOCK_TYPE			(0xA2)
#define PFXNODE_SEMAPHORE_TYPE			(0xA3)
#define PFXNODE_PROCESS_TLS_TYPE		(0xA4)
#define PFXNODE_PROCESS_RESOURCE_TYPE	(0xA5)
#define PFXNODE_PROCEDURE_TYPE			(0xA6)

typedef unsigned int 	   MSGTYPE;
typedef PROCESS_ID  	   MSGSRC;
typedef PROCESS_ID  	   MSGDEST;
typedef unsigned char  	   MSGDATA;

#define MAX_FXMSG_DATA 16

typedef LPVOID HWND;
typedef LPVOID HMENU;

typedef struct _fx_irq_data
{
	int line;
	char FAR* keycode;
} IRQDATA;
typedef IRQDATA FAR* PIRQDATA;

typedef struct _task
{
	unsigned char SPL;
	unsigned char SPH;
	char FAR *pstack;
} TASK;

typedef struct _task_stack
{
	unsigned char FAR *SS;
} TASK_STACK;

typedef struct int_regs
{
	unsigned char PB;
	unsigned char PH;
	unsigned char PL;
	unsigned char PP;
	unsigned char DB;
	unsigned char DH;
	unsigned char DL;
	unsigned char AH;
	unsigned char AL;
	unsigned char XH;
	unsigned char XL;
	unsigned char YH;
	unsigned char YL;
} INT_REGS;
typedef INT_REGS FAR* PINT_REGS;


typedef struct _fx_eventMessage
{
	MSGSRC 		src;
	MSGDEST 	dest;
	MSGTYPE 	type;
	HWND		hwnd;
	LPVOID		pheap;
	ULONG  		msgTime;
	MSGDATA		data[MAX_FXMSG_DATA];
}FXOSMESSAGE;
typedef FXOSMESSAGE FAR *PFXOSMESSAGE;

typedef struct _fx_cmdMessage
{
	MSGSRC 		src;
	MSGDEST 	dest;
	MSGTYPE 	type;
	HWND		hwnd;
	LPVOID		pheap;
	ULONG  		msgTime;
	UINT		cmdCId;
	UINT		cmdMId;
	ULONG		parameter1;
	ULONG		parameter2;
	ULONG		parameter3;
}FXCMDMESSAGE;
typedef FXCMDMESSAGE FAR *PFXCMDMESSAGE;


typedef void (*FXProcessProc)(PFXOSMESSAGE pmsg);


typedef struct _fx_console_ctl
{
	int  maxCols;
	int  maxRows;
	int  curX;
	int  curY;
	int	 fgColor;
	int	 bgColor;
	BOOL mode;
	int  kbBuffer[16];
	LPCHAR screenBuffer;
	BOOL desktopMode;
	int  lastMouseButton;
	int  lastMouseX;
	int  lastMouseY;
}CONSOLE_CONTROL;
typedef CONSOLE_CONTROL FAR *PCONSOLE_CONTROL;

typedef struct _fx_desktop_ctl
{
	BOOL desktopMode;
	INT  cursorCtl;
	INT  cursorState;
	INT	 backgroundColor;
	INT	 foregroundColor;
	int  menuMode;
	int  lastMouseButton;
	int  lastMouseX;
	int  lastMouseY;
	LPCHAR currentDiskName;
	LPVOID diskNodes;
	LPVOID titleNodes;
	LPVOID menuNodes;
	LPVOID iconNodes;
	LPVOID windowNodes;
	LPVOID fontNodes;
	PROCEDURE_LIST wndProc;
}DESKTOP_CONTROL;
typedef DESKTOP_CONTROL FAR *PDESKTOP_CONTROL;

typedef struct _fx_process
{
	int 				 	cbSize;
	PROCESS_ID 			  	procId;
	PROCESS_ID 			  	parentId;
	PROCESS_CTX 		  	ctx;
	USERID 				  	userId;
	PROCESS_STATUS 		  	status;
	BOOL 				  	foregroundActive;
	//PROCESS_CTX 		  	ctx;
	PROCESS_TLS 		  	tls[8];
	LPCSTR				  	commandLine;

	SEMAPHORE_LIST  	  	semaphores;
	FILE_BLOCK_LIST       	fileHandles;
	FILE_PATH_LIST	  	  	pathList;
	PROCESS_RESOURCE_LIST 	resources;
	BOOL					timerAware;
	UINT					timerTicks[2];
	UINT					timerTickCount[2];
	KERNEL_ERROR			kernelError;
	PCONSOLE_CONTROL  	  	consoleCtl;
	PDESKTOP_CONTROL	  	desktopCtl;
	//PROCEDURE_LIST 		  	execProc;
	FXProcessProc			execProc;
	LPVOID					startupArgs;
}FXPROCESS;
typedef FXPROCESS FAR *PFXPROCESS;

typedef struct _fxProcessMessage
{
	MSGSRC 		src;
	MSGDEST 	dest;
	MSGTYPE 	type;
    PFXPROCESS	processInfo;
}FXPROCESSMESSAGE;
typedef FXPROCESSMESSAGE FAR*PFXPROCESSMESSAGE;


typedef unsigned char KEYCODE;
typedef unsigned char SCANCODE;


typedef struct _fx_property
{
	CHAR name[16];
	CHAR value[32];
}FXPROPERTY;
typedef FXPROPERTY FAR *PFXPROPERTY;


union _24bitPointer
{
	unsigned char *address;
	char bytes[4];
};

#define LOBYTE(a) ((CHAR)(a))
#define HIBYTE(a) ((CHAR)(((WORD)(a) >> 8) & 0xFF))
#define LOWORD(a) ((WORD)(a))
#define HIWORD(a) ((WORD)(((DWORD)(a) >> 16) & 0xFFFF))


#define L24BYTE(a) ((CHAR)(((LONG)(a))))
#define M24BYTE(a) ((CHAR)(((ULONG)(a) >> 8) & 0xFF))
#define H24BYTE(a) ((CHAR)(((ULONG)(a) >> 16) & 0xFF))

#define MAKEWORD(low, high) ( (WORD)((((WORD) (high)) << 8 )| ((BYTE)(low))) )
#define MAKELONG(low, high) ( (LONG)((((LONG) (high)) << 16)| ((WORD)(low))) )

#define INVALID_HANDLE (-1)

typedef struct _PointStruct
{
	int x;
	int y;
}POINT;
typedef POINT FAR *PPOINT;

typedef struct _RectStruct
{
	int x;
	int y;
	int width;
	int height;
} RECT;

typedef RECT FAR* PRECT;


typedef BOOL (*FXWndProc)(PFXOSMESSAGE pmsg);


typedef LPVOID HINSTANCE;
typedef LPVOID HICON;
typedef LPVOID HCURSOR;
typedef LPVOID HBRUSH;

typedef struct _k_WindowClass
{
	UINT 		cbSize;
	UINT      	style;
	FXWndProc   pWndProc;
	HINSTANCE 	hInstance;
	HICON     	hIcon;
	HCURSOR   	hCursor;
	HBRUSH    	hbrBackground;
	LPCSTR    	lpszMenuName;
	LPCSTR    	lpszClassName;
} WNDCLASS;
typedef WNDCLASS FAR *PWNDCLASS;

typedef struct _ClickableRect
{
	RECT area;
	int  z;
	BOOL enabled;
} CLICKABLE;
typedef CLICKABLE FAR* PCLICKABLE;
typedef long HCLICKABLE;

typedef struct _NCClickableRect
{
	RECT area;
	UINT msgType;
	BOOL enabled;
} NCCLICKABLE;
typedef NCCLICKABLE FAR* PNCCLICKABLE;

#define CLIENTDATA_DEFAULT (0x00)
#define CLIENTDATA_USERID  (0x01)
#define CLIENTDATA_USER1   (0x02)
#define CLIENTDATA_USER2   (0x03)
#define CLIENTDATA_USER3   (0x04)
#define CLIENTDATA_USER4   (0x05)

typedef struct _DragData
{
	RECT area;
	INT	 xoffset;
	INT	 yoffset;
	UINT msgType;
	BOOL isDrag;
	BOOL canDrag;
	BOOL canDrop;
} DRAGDATA;
typedef DRAGDATA FAR* PDRAGDATA;


typedef struct _k_WindowStruct
{
	UINT 		 cbSize;
	ULONG		 style;
	int  		 win_id;
	int  		 win_x;
	int  		 win_y;
	int  		 win_width;
	int  		 win_height;
	RECT 		 wndRect;
	RECT 		 clientRect;
	NCCLICKABLE	 nonclientGadgets[16];
	LPVOID 		 clickable;
	CHAR 		 win_title[32];
	UINT		 Reserved0;
	CHAR 		 win_class[16];
	CHAR 		 win_class_name[32];
	UINT		 nBitmapLayer;
	PROCESS_ID 	 procid;
	PWNDCLASS    pWndClass;
	HWND		 pParentWindow;
	HMENU		 hMenu;
	PFXNODELIST	 pChildWindows;
	PFXNODELIST	 pChildHitList;
	BOOL		 isVisible;
	LPVOID		 windowData;
	LPVOID 		 clientData[6];
	BOOL 		 isClosed;
	BOOL 		 isClosing;
} WINDOW;
typedef WINDOW FAR *PWINDOW;

typedef struct _k_WindowStructEx
{
	UINT 		 cbSize;
	ULONG		 style;
	int  		 win_id;
	int  		 win_x;
	int  		 win_y;
	int  		 win_width;
	int  		 win_height;
	RECT 		 wndRect;
	RECT 		 clientRect;
	NCCLICKABLE	 nonclientGadgets[16];
	LPVOID 		 clickable;
	CHAR 		 win_title[32];
	UINT		 Reserved0;
	CHAR 		 win_class[16];
	UINT		 nBitmapLayer;
	PROCESS_ID 	 procid;
	PWNDCLASS    pWndClass;
	HWND		 pParentWindow;
	HMENU		 hMenu;
	PFXNODELIST	 pChildWindows;
	PFXNODELIST	 pChildHitList;
	BOOL		 isVisible;
	LPVOID		 windowData;
	LPVOID 		 clientData[4];
	BOOL 		 isClosed;
	HWND  		 hWnd;
	RECT 		 localRect;
	RECT 		 globalRect;
	RECT 		 clientOffsetRect;
} WINDOWEX;
typedef WINDOWEX FAR *PWINDOWEX;



typedef LPVOID HANDLE;
typedef HANDLE FAR* PHANDLE;

typedef char FAR* TITLE;

typedef struct _FontMetric
{
	int width;
	int height;
} FONTMETRIC;

struct _ctl_Textbox
{
	int win_id;
	int win_x;
	int win_y;
	int win_width;
	int win_height;
	char FAR** content;
};
typedef struct _ctl_Textbox TEXTBOXX;
typedef TEXTBOXX FAR* PTEXTBOXX;
typedef long HTEXTBOX;


typedef LPVOID HMENURESOURCE;
typedef struct _MenuStruct
{
	int 		cx;
	int 		cy;
	int 		width;
	int 		height;
	char 		fcolor;
	char 		bcolor;
	char 		chromeLeft;
	char 		chromeRight1;
	char 		chromeRight2;
	UINT		itemId;
	LPCSTR 		pCaption;
	PFXNODELIST subMenus;
	LPVOID  	pBackground;
	HWND		hWndOwner;
}MENU;
typedef MENU FAR* PMENU;

typedef struct
{
	UINT 	menuId;
	LPCSTR 	caption;
	RECT 	rect;
}MENUTAG;
typedef MENUTAG FAR* PMENUTAG;

typedef struct
{
	PWINDOW		pParent;
	RECT 		rect;
	LPCSTR		captions[24];
	CHAR		chrome[24];
	UINT    	ids[24];
	CLICKABLE	clickable[24];
	UINT		selected;
}
MENUDROPDOWNDATA;
typedef MENUDROPDOWNDATA FAR *PMENUDROPDOWNDATA;

typedef struct _fx_button_t
{
	LPCSTR 		pCaption;
	LPVOID  	data;
	UINT		captionPixelWidth;
}BUTTON;
typedef BUTTON FAR* PBUTTON;

typedef struct _fx_scrollbar_t
{
	UINT		min;
	UINT		max;
	UINT		increment;
	UINT		stopsize;
	int  		location;
	int 		state;
	RECT		rectThumb;
	LPVOID  	data;
}SCROLLBAR;
typedef SCROLLBAR FAR* PSCROLLBAR;

typedef struct _fx_listbox_t
{
	int			pos;
	UINT		selected;
	int 		offsetX;
	int 		offsetY;
	int 		inc;
	int 		direction;
	int 		top;
	int 		bottom;
	int			indexTop;
	int			indexBottom;
	UINT		maxItems;
	LPCHAR		fontSet;
	LPVOID  	data;
}LISTBOX;
typedef LISTBOX FAR* PLISTBOX;

typedef struct _fx_textbox_t
{
	int			pos;
	UINT		selected;
	int 		offsetX;
	int 		offsetY;
	BOOL		isShifted;
	BOOL		cursorState;
	LPCHAR		fontSet;
	LPVOID  	data;
}TEXTBOX;
typedef TEXTBOX FAR* PTEXTBOX;
#define ASTEXTBOX(a) ((PTEXTBOX)(a)->windowData)

typedef struct _fx_menuAnchor_t
{
	LPCSTR 		pCaption;
	UINT 		renderLayoutX;
	UINT 		renderLayoutY;
	UINT		captionPixelWidth;
	LPVOID  	data;
	PWINDOW		droppedWindow;
}MENUANCHOR;
typedef MENUANCHOR FAR* PMENUANCHOR;


typedef void (*MenuAction)(PMENU pmenu, int cx, int cy, void FAR* data);

struct _SubMenuStruct
{
	char FAR* caption;
	MenuAction action;
};

typedef struct _SubMenuStruct SUBMENU;
typedef SUBMENU FAR* PSUBMENU;
typedef long HSUBMENU;

typedef struct _SubMenuListStruct
{
	char cMenus;
	PSUBMENU FAR** psubmenus;
} SUBMENULIST;
typedef SUBMENULIST FAR* PSUBMENULIST;

typedef struct _fx_ComBuffer
{
	UINT 	cbSize;
	UINT    cbBuffer;
	UCHAR 	buffer[256];
}FXCOMBUFFER;
typedef FXCOMBUFFER FAR* PFXCOMBUFFER;

#define NL_TYPE_HIDDEN				0xFF
#define NL_TYPE_PROCESS				0xFE

#define NL_TYPE_WINDOW_UNK			0x00
#define NL_TYPE_WINDOW_CLS			0x01
#define NL_TYPE_WINDOW_OBJ			0x02
#define NL_TYPE_WINDOW_MENU			0x03
#define NL_TYPE_WINDOW_CTL			0x04
#define NL_TYPE_WINDOW_RECT			0x05
#define NL_TYPE_WINDOW_FONT			0x06
#define NL_TYPE_WINDOW_BRUSH		0x07
#define NL_TYPE_WINDOW_ICON			0x08
#define NL_TYPE_WINDOW_BITMAP		0x09
#define NL_TYPE_WINDOW_CURSOR	 	0x0A
#define NL_TYPE_WINDOW_SHARED_MEM	0x0B
#define NL_TYPE_WINDOW_CLIPBOARD	0x0C
#define NL_TYPE_WINDOW_CLIPSCRAP	0x0D


#define NELEMS(x)  (sizeof(x) / sizeof((x)[0]))

#endif

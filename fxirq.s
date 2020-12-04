;:ts=8
R0	equ	1
R1	equ	5
R2	equ	9
R3	equ	13
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxirq.c",0
;
;//#include "fxos.h"
;//#include "fxstartup.h"
;//#include "fxeventmanager.h"
;
;#ifdef USE_FX256_FMX
;#include "fxc256fmx.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxc256fmx.h",0
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxtypes.h",0
	.stag	_fx_bytebits,8,1
	.member	b7,0,14,17,1
	.member	b6,1,14,17,1
	.member	b5,2,14,17,1
	.member	b4,3,14,17,1
	.member	b3,4,14,17,1
	.member	b2,5,14,17,1
	.member	b1,6,14,17,1
	.member	b0,7,14,17,1
	.eos
	.stag	_fx_node,384,2
	.member	type,0,14,8,8
	.member	Reserved0,8,14,8,8
	.member	data,16,129,8,32
	.member	last,48,138,8,32,2
	.member	next,80,138,8,32,2
	.member	name,112,110,8,0,32
	.member	Reserved1,368,16,8,16
	.eos
	.stag	_fx_nodelist,96,3
	.member	listhead,0,138,8,32,2
	.member	listData,32,129,8,32
	.member	deallocator,64,641,8,32
	.eos
	.stag	_fx_queue,80,4
	.member	count,0,5,8,16
	.member	front,16,138,8,32,2
	.member	rear,48,138,8,32,2
	.eos
	.stag	fake5_,32,5
	.member	subsystem,0,14,8,8
	.member	level,8,14,8,8
	.member	error,16,16,8,16
	.eos
	.stag	_fx_process_signal,16,6
	.member	cbSize,0,16,8,16
	.eos
	.stag	_fx_semaphore,16,7
	.member	reserved,0,5,8,16
	.eos
	.stag	_fx_fileBlock,552,8
	.member	openCount,0,16,8,16
	.member	lockCount,16,16,8,16
	.member	dirty,32,14,8,8
	.member	fileBuffer,40,110,8,0,64
	.eos
	.stag	_fx_irq_data,48,9
	.member	line,0,5,8,16
	.member	keycode,16,142,8,32
	.eos
	.stag	_task,48,10
	.member	SPL,0,14,8,8
	.member	SPH,8,14,8,8
	.member	pstack,16,142,8,32
	.eos
	.stag	_task_stack,32,11
	.member	SS,0,142,8,32
	.eos
	.stag	int_regs,104,12
	.member	PB,0,14,8,8
	.member	PH,8,14,8,8
	.member	PL,16,14,8,8
	.member	PP,24,14,8,8
	.member	DB,32,14,8,8
	.member	DH,40,14,8,8
	.member	DL,48,14,8,8
	.member	AH,56,14,8,8
	.member	AL,64,14,8,8
	.member	XH,72,14,8,8
	.member	XL,80,14,8,8
	.member	YH,88,14,8,8
	.member	YL,96,14,8,8
	.eos
	.stag	_fx_eventMessage,304,13
	.member	src,0,18,8,32
	.member	dest,32,18,8,32
	.member	type,64,16,8,16
	.member	hwnd,80,129,8,32
	.member	pheap,112,129,8,32
	.member	msgTime,144,18,8,32
	.member	data,176,110,8,0,16
	.eos
	.stag	_fx_cmdMessage,304,14
	.member	src,0,18,8,32
	.member	dest,32,18,8,32
	.member	type,64,16,8,16
	.member	hwnd,80,129,8,32
	.member	pheap,112,129,8,32
	.member	msgTime,144,18,8,32
	.member	cmdCId,176,16,8,16
	.member	cmdMId,192,16,8,16
	.member	parameter1,208,18,8,32
	.member	parameter2,240,18,8,32
	.member	parameter3,272,18,8,32
	.eos
	.stag	_fx_console_ctl,448,15
	.member	maxCols,0,5,8,16
	.member	maxRows,16,5,8,16
	.member	curX,32,5,8,16
	.member	curY,48,5,8,16
	.member	fgColor,64,5,8,16
	.member	bgColor,80,5,8,16
	.member	mode,96,14,8,8
	.member	kbBuffer,104,101,8,0,16
	.member	screenBuffer,360,142,8,32
	.member	desktopMode,392,14,8,8
	.member	lastMouseButton,400,5,8,16
	.member	lastMouseX,416,5,8,16
	.member	lastMouseY,432,5,8,16
	.eos
	.stag	_fx_desktop_ctl,392,16
	.member	desktopMode,0,14,8,8
	.member	cursorCtl,8,5,8,16
	.member	cursorState,24,5,8,16
	.member	backgroundColor,40,5,8,16
	.member	foregroundColor,56,5,8,16
	.member	menuMode,72,5,8,16
	.member	lastMouseButton,88,5,8,16
	.member	lastMouseX,104,5,8,16
	.member	lastMouseY,120,5,8,16
	.member	currentDiskName,136,142,8,32
	.member	diskNodes,168,129,8,32
	.member	titleNodes,200,129,8,32
	.member	menuNodes,232,129,8,32
	.member	iconNodes,264,129,8,32
	.member	windowNodes,296,129,8,32
	.member	fontNodes,328,129,8,32
	.member	wndProc,360,138,8,32,3
	.eos
	.stag	_fx_process,800,17
	.member	cbSize,0,5,8,16
	.member	procId,16,18,8,32
	.member	parentId,48,18,8,32
	.member	ctx,80,129,8,32
	.member	userId,112,16,8,16
	.member	status,128,16,8,16
	.member	foregroundActive,144,14,8,8
	.member	tls,152,1121,8,32,8
	.member	commandLine,408,142,8,32
	.member	semaphores,440,138,8,32,3
	.member	fileHandles,472,138,8,32,3
	.member	pathList,504,138,8,32,3
	.member	resources,536,138,8,32,3
	.member	timerAware,568,14,8,8
	.member	timerTicks,576,112,8,0,2
	.member	timerTickCount,608,112,8,0,2
	.member	kernelError,640,10,8,32,5
	.member	consoleCtl,672,138,8,32,15
	.member	desktopCtl,704,138,8,32,16
	.member	execProc,736,641,8,32
	.member	startupArgs,768,129,8,32
	.eos
	.stag	_fxProcessMessage,112,18
	.member	src,0,18,8,32
	.member	dest,32,18,8,32
	.member	type,64,16,8,16
	.member	processInfo,80,138,8,32,17
	.eos
	.stag	_fx_property,384,19
	.member	name,0,110,8,0,16
	.member	value,128,110,8,0,32
	.eos
	.utag	_24bitPointer,32,20
	.member	address,0,142,11,32
	.member	bytes,0,110,11,0,4
	.eos
	.stag	_PointStruct,32,21
	.member	x,0,5,8,16
	.member	y,16,5,8,16
	.eos
	.stag	_RectStruct,64,22
	.member	x,0,5,8,16
	.member	y,16,5,8,16
	.member	width,32,5,8,16
	.member	height,48,5,8,16
	.eos
	.stag	_k_WindowClass,256,23
	.member	cbSize,0,16,8,16
	.member	style,16,16,8,16
	.member	pWndProc,32,654,8,32
	.member	hInstance,64,129,8,32
	.member	hIcon,96,129,8,32
	.member	hCursor,128,129,8,32
	.member	hbrBackground,160,129,8,32
	.member	lpszMenuName,192,142,8,32
	.member	lpszClassName,224,142,8,32
	.eos
	.stag	_ClickableRect,88,24
	.member	area,0,10,8,64,22
	.member	z,64,5,8,16
	.member	enabled,80,14,8,8
	.eos
	.stag	_NCClickableRect,88,25
	.member	area,0,10,8,64,22
	.member	msgType,64,16,8,16
	.member	enabled,80,14,8,8
	.eos
	.stag	_DragData,136,26
	.member	area,0,10,8,64,22
	.member	xoffset,64,5,8,16
	.member	yoffset,80,5,8,16
	.member	msgType,96,16,8,16
	.member	isDrag,112,14,8,8
	.member	canDrag,120,14,8,8
	.member	canDrop,128,14,8,8
	.eos
	.stag	_k_WindowStruct,2808,27
	.member	cbSize,0,16,8,16
	.member	style,16,18,8,32
	.member	win_id,48,5,8,16
	.member	win_x,64,5,8,16
	.member	win_y,80,5,8,16
	.member	win_width,96,5,8,16
	.member	win_height,112,5,8,16
	.member	wndRect,128,10,8,64,22
	.member	clientRect,192,10,8,64,22
	.member	nonclientGadgets,256,106,8,0,25,16
	.member	clickable,1664,129,8,32
	.member	win_title,1696,110,8,0,32
	.member	Reserved0,1952,16,8,16
	.member	win_class,1968,110,8,0,16
	.member	win_class_name,2096,110,8,0,32
	.member	nBitmapLayer,2352,16,8,16
	.member	procid,2368,18,8,32
	.member	pWndClass,2400,138,8,32,23
	.member	pParentWindow,2432,129,8,32
	.member	hMenu,2464,129,8,32
	.member	pChildWindows,2496,138,8,32,3
	.member	pChildHitList,2528,138,8,32,3
	.member	isVisible,2560,14,8,8
	.member	windowData,2568,129,8,32
	.member	clientData,2600,1121,8,32,6
	.member	isClosed,2792,14,8,8
	.member	isClosing,2800,14,8,8
	.eos
	.stag	_k_WindowStructEx,2704,28
	.member	cbSize,0,16,8,16
	.member	style,16,18,8,32
	.member	win_id,48,5,8,16
	.member	win_x,64,5,8,16
	.member	win_y,80,5,8,16
	.member	win_width,96,5,8,16
	.member	win_height,112,5,8,16
	.member	wndRect,128,10,8,64,22
	.member	clientRect,192,10,8,64,22
	.member	nonclientGadgets,256,106,8,0,25,16
	.member	clickable,1664,129,8,32
	.member	win_title,1696,110,8,0,32
	.member	Reserved0,1952,16,8,16
	.member	win_class,1968,110,8,0,16
	.member	nBitmapLayer,2096,16,8,16
	.member	procid,2112,18,8,32
	.member	pWndClass,2144,138,8,32,23
	.member	pParentWindow,2176,129,8,32
	.member	hMenu,2208,129,8,32
	.member	pChildWindows,2240,138,8,32,3
	.member	pChildHitList,2272,138,8,32,3
	.member	isVisible,2304,14,8,8
	.member	windowData,2312,129,8,32
	.member	clientData,2344,1121,8,32,4
	.member	isClosed,2472,14,8,8
	.member	hWnd,2480,129,8,32
	.member	localRect,2512,10,8,64,22
	.member	globalRect,2576,10,8,64,22
	.member	clientOffsetRect,2640,10,8,64,22
	.eos
	.stag	_FontMetric,32,29
	.member	width,0,5,8,16
	.member	height,16,5,8,16
	.eos
	.stag	_ctl_Textbox,112,30
	.member	win_id,0,5,8,16
	.member	win_x,16,5,8,16
	.member	win_y,32,5,8,16
	.member	win_width,48,5,8,16
	.member	win_height,64,5,8,16
	.member	content,80,1166,8,32
	.eos
	.stag	_MenuStruct,248,31
	.member	cx,0,5,8,16
	.member	cy,16,5,8,16
	.member	width,32,5,8,16
	.member	height,48,5,8,16
	.member	fcolor,64,14,8,8
	.member	bcolor,72,14,8,8
	.member	chromeLeft,80,14,8,8
	.member	chromeRight1,88,14,8,8
	.member	chromeRight2,96,14,8,8
	.member	itemId,104,16,8,16
	.member	pCaption,120,142,8,32
	.member	subMenus,152,138,8,32,3
	.member	pBackground,184,129,8,32
	.member	hWndOwner,216,129,8,32
	.eos
	.stag	fake32_,112,32
	.member	menuId,0,16,8,16
	.member	caption,16,142,8,32
	.member	rect,48,10,8,64,22
	.eos
	.stag	fake33_,3568,33
	.member	pParent,0,138,8,32,27
	.member	rect,32,10,8,64,22
	.member	captions,96,1134,8,32,24
	.member	chrome,864,110,8,0,24
	.member	ids,1056,112,8,0,24
	.member	clickable,1440,106,8,0,24,24
	.member	selected,3552,16,8,16
	.eos
	.stag	_fx_button_t,80,34
	.member	pCaption,0,142,8,32
	.member	data,32,129,8,32
	.member	captionPixelWidth,64,16,8,16
	.eos
	.stag	_fx_scrollbar_t,192,35
	.member	min,0,16,8,16
	.member	max,16,16,8,16
	.member	increment,32,16,8,16
	.member	stopsize,48,16,8,16
	.member	location,64,5,8,16
	.member	state,80,5,8,16
	.member	rectThumb,96,10,8,64,22
	.member	data,160,129,8,32
	.eos
	.stag	_fx_listbox_t,240,36
	.member	pos,0,5,8,16
	.member	selected,16,16,8,16
	.member	offsetX,32,5,8,16
	.member	offsetY,48,5,8,16
	.member	inc,64,5,8,16
	.member	direction,80,5,8,16
	.member	top,96,5,8,16
	.member	bottom,112,5,8,16
	.member	indexTop,128,5,8,16
	.member	indexBottom,144,5,8,16
	.member	maxItems,160,16,8,16
	.member	fontSet,176,142,8,32
	.member	data,208,129,8,32
	.eos
	.stag	_fx_textbox_t,144,37
	.member	pos,0,5,8,16
	.member	selected,16,16,8,16
	.member	offsetX,32,5,8,16
	.member	offsetY,48,5,8,16
	.member	isShifted,64,14,8,8
	.member	cursorState,72,14,8,8
	.member	fontSet,80,142,8,32
	.member	data,112,129,8,32
	.eos
	.stag	_fx_menuAnchor_t,144,38
	.member	pCaption,0,142,8,32
	.member	renderLayoutX,32,16,8,16
	.member	renderLayoutY,48,16,8,16
	.member	captionPixelWidth,64,16,8,16
	.member	data,80,129,8,32
	.member	droppedWindow,112,138,8,32,27
	.eos
	.stag	_SubMenuStruct,64,39
	.member	caption,0,142,8,32
	.member	action,32,641,8,32
	.eos
	.stag	_SubMenuListStruct,40,40
	.member	cMenus,0,14,8,8
	.member	psubmenus,8,9354,8,32,39
	.eos
	.stag	_fx_ComBuffer,2080,41
	.member	cbSize,0,16,8,16
	.member	cbBuffer,16,16,8,16
	.member	buffer,32,110,8,0,256
	.eos
	.line	708
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxc256fmx.h",5
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fmx_vicky.h",0
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxtypes.h",0
	.line	708
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fmx_vicky.h",11
	.line	72
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxc256fmx.h",6
	.line	1325
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxirq.c",7
;#else
;#include "fxc256.h"
;#endif
;
;#include "fxtypes.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxtypes.h",0
	.line	708
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxirq.c",12
;#include "fxkernel.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxkernel.h",0
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos.h",0
	.file	"G:\devtools\WDCTools\wdc\Tools\include\stdlib.h",0
	.file	"G:\devtools\WDCTools\wdc\Tools\include\stddef.h",0
	.line	88
	.file	"G:\devtools\WDCTools\wdc\Tools\include\stdlib.h",43
	.stag	fake42_,32,42
	.member	quot,0,5,8,16
	.member	rem,16,5,8,16
	.eos
	.stag	fake43_,64,43
	.member	quot,0,7,8,32
	.member	rem,32,7,8,32
	.eos
	.stag	int_sqrt,32,44
	.member	sqrt,0,16,8,16
	.member	frac,16,16,8,16
	.eos
	.line	205
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos.h",4
	.file	"G:\devtools\WDCTools\wdc\Tools\include\string.h",0
	.line	134
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos.h",5
	.file	"G:\devtools\WDCTools\wdc\Tools\include\ctype.h",0
	.line	103
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos.h",6
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxtypes.h",0
	.line	708
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos.h",8
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxstringtable.h",0
	.line	89
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos.h",9
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxc256fmx.h",0
	.line	1325
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos.h",13
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxkernel.h",0
	.line	270
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos.h",19
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxconsole.h",0
	.file	"G:\devtools\WDCTools\wdc\Tools\include\string.h",0
	.line	134
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxconsole.h",5
	.file	"G:\devtools\WDCTools\wdc\Tools\include\stdlib.h",0
	.line	205
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxconsole.h",6
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxtypes.h",0
	.line	708
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxconsole.h",7
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxc256fmx.h",0
	.line	1325
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxconsole.h",10
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxstring.h",0
	.file	"G:\devtools\WDCTools\wdc\Tools\include\stdlib.h",0
	.line	205
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxstring.h",5
	.file	"G:\devtools\WDCTools\wdc\Tools\include\string.h",0
	.line	134
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxstring.h",6
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxtypes.h",0
	.line	708
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxstring.h",7
	.stag	_fx_string,64,45
	.member	size,0,16,8,16
	.member	pos,16,5,8,16
	.member	buffer,32,142,8,32
	.eos
	.line	71
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxconsole.h",15
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxeventmanager.h",0
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos.h",0
	.line	25
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxeventmanager.h",5
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxexec.h",0
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxtypes.h",0
	.line	708
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxexec.h",5
	.line	52
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxeventmanager.h",6
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxnode.h",0
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxtypes.h",0
	.line	708
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxnode.h",5
	.line	61
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxeventmanager.h",7
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxconsole.h",0
	.line	171
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxeventmanager.h",8
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxwindowmanager.h",0
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxtypes.h",0
	.line	708
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxwindowmanager.h",5
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos.h",0
	.line	25
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxwindowmanager.h",6
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxmemorymanager.h",0
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos.h",0
	.line	25
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxmemorymanager.h",5
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\umm_malloc_cfg.h",0
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos_build_parameters.h",0
	.line	32
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\umm_malloc_cfg.h",8
	.stag	UMM_HEAP_INFO_t,256,46
	.member	totalEntries,0,18,8,32
	.member	usedEntries,32,18,8,32
	.member	freeEntries,64,18,8,32
	.member	totalBlocks,96,18,8,32
	.member	usedBlocks,128,18,8,32
	.member	freeBlocks,160,18,8,32
	.member	maxFreeContiguousBlocks,192,18,8,32
	.member	blockSize,224,18,8,32
	.eos
	.line	199
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxmemorymanager.h",6
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\umm_malloc.h",0
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxtypes.h",0
	.line	708
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\umm_malloc.h",11
	.line	24
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxmemorymanager.h",7
	.stag	_fx_memory_map,2072,47
	.member	availableMemory,0,18,8,32
	.member	valid_segments,32,110,8,0,255
	.eos
	.line	39
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxwindowmanager.h",7
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxeventmanager.h",0
	.line	743
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxwindowmanager.h",8
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxgui.h",0
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxfont.h",0
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxtypes.h",0
	.line	708
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxfont.h",6
	.line	64
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxgui.h",4
	.stag	_click_detected,64,48
	.member	window,0,138,8,32,27
	.member	handler,32,641,8,32
	.eos
	.stag	_current_palette_map,400,49
	.member	CUR_DESKTOP,0,5,8,16
	.member	CUR_BACKGROUND,16,5,8,16
	.member	CUR_FONT,32,5,8,16
	.member	CUR_SELECTED_FONT,48,5,8,16
	.member	CUR_HIGHLIGHT_COLOR,64,5,8,16
	.member	CUR_WINDOWFRAME,80,5,8,16
	.member	CUR_WINDOWBORDER,96,5,8,16
	.member	CUR_WINDOWSHADOW,112,5,8,16
	.member	CUR_MENU,128,5,8,16
	.member	CUR_GADGET,144,5,8,16
	.member	CUR_COLOR,160,101,8,0,15
	.eos
	.line	264
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxwindowmanager.h",9
	.stag	_childMessage_t,64,50
	.member	msgType,0,16,8,16
	.member	msgData,16,129,8,32
	.member	dataSize,48,16,8,16
	.eos
	.line	362
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxeventmanager.h",9
	.stag	_fx_main_loopvars,16,51
	.member	dummy,0,5,8,16
	.eos
	.stag	_fxMouseMessageData,64,52
	.member	button1,0,14,8,8
	.member	button2,8,14,8,8
	.member	button3,16,14,8,8
	.member	button4,24,14,8,8
	.member	x,32,16,8,16
	.member	y,48,16,8,16
	.eos
	.stag	_fx_eventProcess,64,53
	.member	process,0,138,8,32,17
	.member	eventProc,32,641,8,32
	.eos
	.stag	_mouse_msg_state,184,54
	.member	lastEvent,0,18,8,32
	.member	buttonLeftDown,32,14,8,8
	.member	lastLeftDown,40,18,8,32
	.member	buttonRightDown,72,14,8,8
	.member	lastRightDown,80,18,8,32
	.member	buttonMiddleDown,112,14,8,8
	.member	lastMiddleDown,120,18,8,32
	.member	lastX,152,16,8,16
	.member	lastY,168,16,8,16
	.eos
	.line	743
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxconsole.h",16
	.stag	_fx_spinner_ctx,48,55
	.member	index,0,5,8,16
	.member	spinner,16,142,8,32
	.eos
	.stag	_fx_console_ctx,1144,56
	.member	lineBufferIndex,0,5,8,16
	.member	lineBuffer,16,110,8,0,128
	.member	isShifted,1040,14,8,8
	.member	userData,1048,129,8,32
	.member	screenBuffer,1080,129,8,32
	.member	Reserved1,1112,129,8,32
	.eos
	.stag	_token,64,57
	.member	type,0,5,8,16
	.member	depth,16,16,8,16
	.member	text,32,142,8,32
	.eos
	.stag	_command_args,64,58
	.member	proc,0,656,8,32
	.member	tokens,32,138,8,32,2
	.eos
	.line	171
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos.h",20
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxstring.h",0
	.line	71
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos.h",21
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxnode.h",0
	.line	61
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos.h",22
	.line	25
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxkernel.h",5
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxnode.h",0
	.line	61
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxkernel.h",6
	.stag	_fx_zero_page,448,59
	.member	fxos_mouse_byte_0,0,14,8,8
	.member	fxos_mouse_byte_1,8,14,8,8
	.member	fxos_mouse_byte_2,16,14,8,8
	.member	fxos_mouse_byte_t,24,14,8,8
	.member	fxos_mouse_byte_x_l,32,14,8,8
	.member	fxos_mouse_byte_x_h,40,14,8,8
	.member	fxos_mouse_byte_y_l,48,14,8,8
	.member	fxos_mouse_byte_y_h,56,14,8,8
	.member	fxos_key_byte_0,64,14,8,8
	.member	fxos_key_byte_1,72,14,8,8
	.member	fxos_key_byte_2,80,14,8,8
	.member	fxos_mouse_ctl,88,14,8,8
	.member	fxos_mouse_index,96,14,8,8
	.member	fxos_mouse_status,104,14,8,8
	.member	VersionMajor,112,16,8,16
	.member	VersionMinor,128,16,8,16
	.member	VersionRelease,144,16,8,16
	.member	topMemory,160,18,8,32
	.member	bottomMemory,192,18,8,32
	.member	availableMemory,224,18,8,32
	.member	availableMemoryK,256,18,8,32
	.member	availableHeapMemory,288,18,8,32
	.member	availableHeapMemoryK,320,18,8,32
	.member	kernelFunctionCallId,352,16,8,16
	.member	kernelFunctionCallBank,368,14,8,8
	.member	kernelFunctionCallReserved,376,14,8,8
	.member	kernelFunctionCallParameter,384,129,8,32
	.member	kernelFunctionCallReturn,416,129,8,32
	.eos
	.stag	_fx_environment,96,60
	.member	variables,0,142,8,32
	.member	reserved1,32,5,8,16
	.member	reserved2,48,5,8,16
	.member	reserved3,64,5,8,16
	.member	reserved4,80,5,8,16
	.eos
	.stag	_debug_byte_bits,8,61
	.member	bit7,0,14,17,1
	.member	bit6,1,14,17,1
	.member	bit5,2,14,17,1
	.member	bit4,3,14,17,1
	.member	bit3,4,14,17,1
	.member	bit2,5,14,17,1
	.member	bit1,6,14,17,1
	.member	bit0,7,14,17,1
	.eos
	.stag	_fx_device_driver,1416,62
	.member	name,0,110,8,0,64
	.member	version,512,110,8,0,64
	.member	hmajor,1024,110,8,0,16
	.member	hminor,1152,110,8,0,16
	.member	type,1280,14,8,8
	.member	f_driver_load,1288,129,8,32
	.member	f_driver_read,1320,129,8,32
	.member	f_driver_write,1352,129,8,32
	.member	f_driver_unload,1384,129,8,32
	.eos
	.stag	_fx_block_device_driver,1448,63
	.member	name,0,110,8,0,64
	.member	version,512,110,8,0,64
	.member	hmajor,1024,110,8,0,16
	.member	hminor,1152,110,8,0,16
	.member	type,1280,14,8,8
	.member	f_driver_load,1288,129,8,32
	.member	f_driver_read,1320,129,8,32
	.member	f_driver_write,1352,129,8,32
	.member	f_driver_unload,1384,129,8,32
	.member	f_driver_command,1416,129,8,32
	.eos
	.line	270
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxirq.c",13
;#include "fxfloppy.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxfloppy.h",0
	.line	70
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxirq.c",14
;#include "flpydsk.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\flpydsk.h",0
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxtypes.h",0
	.line	708
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\flpydsk.h",14
	.line	68
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxirq.c",15
;
;static int  		 _irq_keyboardBuffer[21] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
	data
~~_irq_keyboardBuffer:
	dw	$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
	dw	$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
	dw	$0
	ends
;static char 		 _irq_keyboardBufferIndex = 0;
	data
~~_irq_keyboardBufferIndex:
	db	$0
	ends
;static unsigned char _irq_currentKeyPress = 0;
	data
~~_irq_currentKeyPress:
	db	$0
	ends
;static int			 _irq_keyboardTimeout = 0;
	data
~~_irq_keyboardTimeout:
	dw	$0
	ends
;static unsigned char _irq_statusReg 	  = 0x00;
	data
~~_irq_statusReg:
	db	$0
	ends
;
;//static unsigned char  floppyBuffer[512];
;extern UINT  floppybufferIndex;
;extern UCHAR floppybuffer[512];
;
;
;static LONG 		 _irq_ktick = 0;
	data
~~_irq_ktick:
	dl	$0
	ends
;static UCHAR		 _k_last_scancode = 0;
	data
~~_k_last_scancode:
	db	$0
	ends
;
;//static int  scirq0 = 0;
;//static char irqspinner[] = {'|','/','-','\\'};
;
;char boxtop[]    = {0xD6, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4,0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xB7, 0x00};
	data
	xdef	~~boxtop
~~boxtop:
	db	$D6,$C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4
	db	$C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4
	db	$C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4
	db	$C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4
	db	$C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4
	db	$C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4
	db	$C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4,$B7
	db	$0
	ends
;char boxbottom[] = {0xD3, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4,0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xBD, 0x00};
	data
	xdef	~~boxbottom
~~boxbottom:
	db	$D3,$C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4
	db	$C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4
	db	$C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4
	db	$C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4
	db	$C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4
	db	$C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4
	db	$C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4,$C4,$BD
	db	$0
	ends
;char boxside[]    = {0xBA, 0x00};
	data
	xdef	~~boxside
~~boxside:
	db	$BA,$0
	ends
;
;//#define KEYBOARD_TIMEOUT (5)
;#define KEYBOARD_TIMEOUT (50)
;
;#define KTICK_MAX		 (1)
;
;static BOOL _k_extendedKeyMode 	= FALSE;
	data
~~_k_extendedKeyMode:
	db	$0
	ends
;static BOOL _k_shiftKeyMode 	= FALSE;
	data
~~_k_shiftKeyMode:
	db	$0
	ends
;
;extern BOOL irq_signaled;
;
;extern ULONG _k_exec_context;
;extern ULONG _k_exec_error;
;extern UCHAR _k_exec_message[64];
;
;//static ULONG _pseudo_timer = -1;
;ULONG _pseudo_timer = -1;
	data
	xdef	~~_pseudo_timer
~~_pseudo_timer:
	dl	$FFFFFFFF
	ends
;ULONG _system_timer = 0;
	data
	xdef	~~_system_timer
~~_system_timer:
	dl	$0
	ends
;
;void k_dispatch_reg0(PIRQDATA pIRQ);
;void k_dispatch_reg1(PIRQDATA pIRQ);
;void k_dispatch_reg2(PIRQDATA pIRQ);
;
;void BRKHandler(void)
;{
	.line	60
	.line	61
	code
	xdef	~~BRKHandler
	func
	.function	61
~~BRKHandler:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L2
	tcs
	phd
	tcd
	.block	61
;	CHAR _brk_Buffer[64];
;	UCHAR flames = 0;
;	int pos  = 1;
;	int line = 20;
;
;	k_debug_string("BRK Exception...\r\n");
_brk_Buffer_1	set	0
flames_1	set	64
pos_1	set	65
line_1	set	67
	.sym	_brk_Buffer,0,110,1,0,64
	.sym	flames,64,14,1,8
	.sym	pos,65,5,1,16
	.sym	line,67,5,1,16
	sep	#$20
	longa	off
	stz	<L3+flames_1
	rep	#$20
	longa	on
	lda	#$1
	sta	<L3+pos_1
	lda	#$14
	sta	<L3+line_1
	.line	67
	pea	#^L1
	pea	#<L1
	jsl	~~k_debug_string
;
;
;
;
;	asm SEI;
	.line	72
	asmstart
	SEI
	asmend
;	//k_put_char(9,irqCOPPos - 1,irqspinner[scbrk++],15,0);
;	//if(scbrk>3) scbrk = 0;
;	////asm sei;
;	k_enable_text_mode();
	.line	76
	jsl	~~k_enable_text_mode
;	k_enable_text_cursor(1);
	.line	77
	pea	#<$1
	jsl	~~k_enable_text_cursor
;	//k_disable_text_cursor();
;	k_enable_border();
	.line	79
	jsl	~~k_enable_border
;	k_clear_screen(0);
	.line	80
	pea	#<$0
	jsl	~~k_clear_screen
;	k_set_border_color(255,0,0);
	.line	81
	pea	#<$0
	pea	#<$0
	pea	#<$ff
	jsl	~~k_set_border_color
;	pos = 1;
	.line	82
	lda	#$1
	sta	<L3+pos_1
;	pos = k_put_string(pos,line,boxtop,15,0);
	.line	83
	pea	#<$0
	pea	#<$f
	lda	#<~~boxtop
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pei	<L3+line_1
	pei	<L3+pos_1
	jsl	~~k_put_string
	sta	<L3+pos_1
;	line++;
	.line	84
	inc	<L3+line_1
;	pos = 1;
	.line	85
	lda	#$1
	sta	<L3+pos_1
;	pos = k_put_string(pos,line,boxside,15,0);
	.line	86
	pea	#<$0
	pea	#<$f
	lda	#<~~boxside
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pei	<L3+line_1
	pei	<L3+pos_1
	jsl	~~k_put_string
	sta	<L3+pos_1
;	pos = 70;
	.line	87
	lda	#$46
	sta	<L3+pos_1
;	pos = k_put_string(pos,line,boxside,15,0);
	.line	88
	pea	#<$0
	pea	#<$f
	lda	#<~~boxside
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pei	<L3+line_1
	pei	<L3+pos_1
	jsl	~~k_put_string
	sta	<L3+pos_1
;	line++;
	.line	89
	inc	<L3+line_1
;	pos = 1;
	.line	90
	lda	#$1
	sta	<L3+pos_1
;	pos = k_put_string(pos,line,boxside,15,0);
	.line	91
	pea	#<$0
	pea	#<$f
	lda	#<~~boxside
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pei	<L3+line_1
	pei	<L3+pos_1
	jsl	~~k_put_string
	sta	<L3+pos_1
;	pos = k_put_string(pos,line,CONST_EXCEPTION_TITLE,15,0);
	.line	92
	pea	#<$0
	pea	#<$f
	pea	#^L1+19
	pea	#<L1+19
	pei	<L3+line_1
	pei	<L3+pos_1
	jsl	~~k_put_string
	sta	<L3+pos_1
;	//pos = k_put_string(pos,line,k_longtodec(_k_exec_context,_brk_Buffer),15,0);
;	pos = k_put_string(pos,line,k_longtodec(_k_exec_context,_brk_Buffer),15,0);
	.line	94
	pea	#<$0
	pea	#<$f
	pea	#0
	clc
	tdc
	adc	#<L3+_brk_Buffer_1
	pha
	lda	|~~_k_exec_context+2
	pha
	lda	|~~_k_exec_context
	pha
	jsl	~~k_longtodec
	sta	<R0
	stx	<R0+2
	phx
	pha
	pei	<L3+line_1
	pei	<L3+pos_1
	jsl	~~k_put_string
	sta	<L3+pos_1
;	//pos = k_put_string(pos,line,k_longtodec(_k_exec_context,_brk_Buffer),15,0);
;	//pos++;
;	//pos = k_put_string(pos,line,k_longtodec(   ,_brk_Buffer),15,0);
;
;	pos = k_put_string(pos,line,":",15,0);
	.line	99
	pea	#<$0
	pea	#<$f
	pea	#^L1+34
	pea	#<L1+34
	pei	<L3+line_1
	pei	<L3+pos_1
	jsl	~~k_put_string
	sta	<L3+pos_1
;	pos = k_put_string(pos,line,k_longtodec(_k_exec_error,_brk_Buffer),15,0);
	.line	100
	pea	#<$0
	pea	#<$f
	pea	#0
	clc
	tdc
	adc	#<L3+_brk_Buffer_1
	pha
	lda	|~~_k_exec_error+2
	pha
	lda	|~~_k_exec_error
	pha
	jsl	~~k_longtodec
	sta	<R0
	stx	<R0+2
	phx
	pha
	pei	<L3+line_1
	pei	<L3+pos_1
	jsl	~~k_put_string
	sta	<L3+pos_1
;	pos = 70;
	.line	101
	lda	#$46
	sta	<L3+pos_1
;	pos = k_put_string(pos,line,boxside,15,0);
	.line	102
	pea	#<$0
	pea	#<$f
	lda	#<~~boxside
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pei	<L3+line_1
	pei	<L3+pos_1
	jsl	~~k_put_string
	sta	<L3+pos_1
;	line++;
	.line	103
	inc	<L3+line_1
;	pos = 1;
	.line	104
	lda	#$1
	sta	<L3+pos_1
;	pos = k_put_string(pos,line,boxside,15,0);
	.line	105
	pea	#<$0
	pea	#<$f
	lda	#<~~boxside
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pei	<L3+line_1
	pei	<L3+pos_1
	jsl	~~k_put_string
	sta	<L3+pos_1
;	pos = k_put_string(pos,line,"",15,0);
	.line	106
	pea	#<$0
	pea	#<$f
	pea	#^L1+36
	pea	#<L1+36
	pei	<L3+line_1
	pei	<L3+pos_1
	jsl	~~k_put_string
	sta	<L3+pos_1
;	pos = 70;
	.line	107
	lda	#$46
	sta	<L3+pos_1
;	pos = k_put_string(pos,line,boxside,15,0);
	.line	108
	pea	#<$0
	pea	#<$f
	lda	#<~~boxside
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pei	<L3+line_1
	pei	<L3+pos_1
	jsl	~~k_put_string
	sta	<L3+pos_1
;	line++;
	.line	109
	inc	<L3+line_1
;	pos = 1;
	.line	110
	lda	#$1
	sta	<L3+pos_1
;	pos = k_put_string(pos,line,boxside,15,0);
	.line	111
	pea	#<$0
	pea	#<$f
	lda	#<~~boxside
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pei	<L3+line_1
	pei	<L3+pos_1
	jsl	~~k_put_string
	sta	<L3+pos_1
;	pos = k_put_string(pos,line,_k_exec_message,15,0);
	.line	112
	pea	#<$0
	pea	#<$f
	lda	#<~~_k_exec_message
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pei	<L3+line_1
	pei	<L3+pos_1
	jsl	~~k_put_string
	sta	<L3+pos_1
;	pos = 70;
	.line	113
	lda	#$46
	sta	<L3+pos_1
;	pos = k_put_string(pos,line,boxside,15,0);
	.line	114
	pea	#<$0
	pea	#<$f
	lda	#<~~boxside
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pei	<L3+line_1
	pei	<L3+pos_1
	jsl	~~k_put_string
	sta	<L3+pos_1
;	line++;
	.line	115
	inc	<L3+line_1
;	pos = 1;
	.line	116
	lda	#$1
	sta	<L3+pos_1
;	pos = k_put_string(pos,line,boxside,15,0);
	.line	117
	pea	#<$0
	pea	#<$f
	lda	#<~~boxside
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pei	<L3+line_1
	pei	<L3+pos_1
	jsl	~~k_put_string
	sta	<L3+pos_1
;	pos = 70;
	.line	118
	lda	#$46
	sta	<L3+pos_1
;	pos = k_put_string(pos,line,boxside,15,0);
	.line	119
	pea	#<$0
	pea	#<$f
	lda	#<~~boxside
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pei	<L3+line_1
	pei	<L3+pos_1
	jsl	~~k_put_string
	sta	<L3+pos_1
;	line++;
	.line	120
	inc	<L3+line_1
;	pos = 1;
	.line	121
	lda	#$1
	sta	<L3+pos_1
;	pos = k_put_string(pos,line,boxbottom,15,0);
	.line	122
	pea	#<$0
	pea	#<$f
	lda	#<~~boxbottom
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pei	<L3+line_1
	pei	<L3+pos_1
	jsl	~~k_put_string
	sta	<L3+pos_1
;
;
;	while(TRUE)
	.line	125
L10001:
;	{
	.line	126
;		for(flames=255;flames>64;flames--)
	.line	127
	sep	#$20
	longa	off
	lda	#$ff
	sta	<L3+flames_1
	rep	#$20
	longa	on
	brl	L10006
L10005:
;		{
	.line	128
;			k_set_border_color(flames,0,0);
	.line	129
	pea	#<$0
	pea	#<$0
	pei	<L3+flames_1
	jsl	~~k_set_border_color
;			k_delay(25);
	.line	130
	pea	#<$19
	jsl	~~k_delay
;		}
	.line	131
L10003:
	sep	#$20
	longa	off
	dec	<L3+flames_1
	rep	#$20
	longa	on
L10006:
	sep	#$20
	longa	off
	lda	#$40
	cmp	<L3+flames_1
	rep	#$20
	longa	on
	bcs	L5
	brl	L10005
L5:
L10004:
;		for(flames=64;flames<255;flames++)
	.line	132
	sep	#$20
	longa	off
	lda	#$40
	sta	<L3+flames_1
	rep	#$20
	longa	on
	brl	L10010
L10009:
;		{
	.line	133
;			k_set_border_color(flames,0,0);
	.line	134
	pea	#<$0
	pea	#<$0
	pei	<L3+flames_1
	jsl	~~k_set_border_color
;			k_delay(25);
	.line	135
	pea	#<$19
	jsl	~~k_delay
;		}
	.line	136
L10007:
	sep	#$20
	longa	off
	inc	<L3+flames_1
	rep	#$20
	longa	on
L10010:
	sep	#$20
	longa	off
	lda	<L3+flames_1
	cmp	#<$ff
	rep	#$20
	longa	on
	bcs	L6
	brl	L10009
L6:
L10008:
;	}
	.line	137
	brl	L10001
;
;}
	.line	139
	.endblock	139
L2	equ	73
L3	equ	5
	ends
	efunc
	.endfunc	139,5,73
	.line	139
	data
L1:
	db	$42,$52,$4B,$20,$45,$78,$63,$65,$70,$74,$69,$6F,$6E,$2E,$2E
	db	$2E,$0D,$0A,$00,$46,$6F,$65,$6E,$69,$78,$20,$41,$73,$68,$65
	db	$73,$3A,$20,$00,$3A,$00,$00
	ends
;
;void COPHandler(void)
;{
	.line	141
	.line	142
	code
	xdef	~~COPHandler
	func
	.function	142
~~COPHandler:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L8
	tcs
	phd
	tcd
	.block	142
;	KERNELTRAPCALL fktCall = NULL;
;	//k_put_char(9,irqCOPPos,irqspinner[sccop++],15,0);
;	//if(sccop>3) sccop = 0;
;	////asm sei;
;	PFXZERPOPAGE zp = k_getZeroPage();
;
;	k_debug_integer("COPHandler:Id:",zp->kernelFunctionCallId);
fktCall_1	set	0
zp_1	set	4
	.sym	fktCall,0,641,1,32
	.sym	zp,4,138,1,32,59
	stz	<L9+fktCall_1
	stz	<L9+fktCall_1+2
	jsl	~~k_getZeroPage
	sta	<L9+zp_1
	stx	<L9+zp_1+2
	.line	149
	ldy	#$2c
	lda	[<L9+zp_1],Y
	pha
	pea	#^L7
	pea	#<L7
	jsl	~~k_debug_integer
;
;	fktCall = k_getKernelTrapTable()[zp->kernelFunctionCallId];
	.line	151
	jsl	~~k_getKernelTrapTable
	sta	<R0
	stx	<R0+2
	ldy	#$2c
	lda	[<L9+zp_1],Y
	sta	<R2
	stz	<R2+2
	pei	<R2+2
	pei	<R2
	lda	#$2
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R1
	stx	<R1+2
	clc
	lda	<R0
	adc	<R1
	sta	<R3
	lda	<R0+2
	adc	<R1+2
	sta	<R3+2
	lda	[<R3]
	sta	<L9+fktCall_1
	ldy	#$2
	lda	[<R3],Y
	sta	<L9+fktCall_1+2
;	if(fktCall)
	.line	152
;	{
	lda	<L9+fktCall_1
	ora	<L9+fktCall_1+2
	bne	L11
	brl	L10011
L11:
	.line	153
;		k_debug_pointer("COPHandler:BEFORE fktCall:",fktCall);
	.line	154
	pei	<L9+fktCall_1+2
	pei	<L9+fktCall_1
	pea	#^L7+15
	pea	#<L7+15
	jsl	~~k_debug_pointer
;
;		fktCall();
	.line	156
	ldx	<L9+fktCall_1+2
	lda	<L9+fktCall_1
	xref	~~~lcal
	jsl	~~~lcal
;
;		k_debug_pointer("COPHandler:AFTER fktCall:",fktCall);
	.line	158
	pei	<L9+fktCall_1+2
	pei	<L9+fktCall_1
	pea	#^L7+42
	pea	#<L7+42
	jsl	~~k_debug_pointer
;	}
	.line	159
;	else
	brl	L10012
L10011:
;	{
	.line	161
;		asm brk;
	.line	162
	asmstart
	brk
	asmend
;	}
	.line	163
L10012:
;}
	.line	164
L12:
	pld
	tsc
	clc
	adc	#L8
	tcs
	rtl
	.endblock	164
L8	equ	24
L9	equ	17
	ends
	efunc
	.endfunc	164,17,24
	.line	164
	data
L7:
	db	$43,$4F,$50,$48,$61,$6E,$64,$6C,$65,$72,$3A,$49,$64,$3A,$00
	db	$43,$4F,$50,$48,$61,$6E,$64,$6C,$65,$72,$3A,$42,$45,$46,$4F
	db	$52,$45,$20,$66,$6B,$74,$43,$61,$6C,$6C,$3A,$00,$43,$4F,$50
	db	$48,$61,$6E,$64,$6C,$65,$72,$3A,$41,$46,$54,$45,$52,$20,$66
	db	$6B,$74,$43,$61,$6C,$6C,$3A,$00
	ends
;
;void IRQHandler(void)
;{
	.line	166
	.line	167
	code
	xdef	~~IRQHandler
	func
	.function	167
~~IRQHandler:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L14
	tcs
	phd
	tcd
	.block	167
;	//char keyCode[16] = {0,0,0,0,0,0,0,0,
;	//					0,0,0,0,0,0,0,0};
;	IRQDATA data;
;		
;	//data.keycode = keyCode;
;	//data.line    = irqSpinnerPos;
;	
;	if(INT_PENDING_REG0[0]!=0)
data_1	set	0
	.sym	data,0,10,1,48,9
	.line	175
;	{
	lda	>320
	and	#$ff
	bne	L17
	brl	L10013
L17:
	.line	176
;		k_dispatch_reg0(&data);
	.line	177
	pea	#0
	clc
	tdc
	adc	#<L15+data_1
	pha
	jsl	~~k_dispatch_reg0
;	}
	.line	178
;	
;	if(INT_PENDING_REG1[0]!=0)
L10013:
	.line	180
;	{
	lda	>321
	and	#$ff
	bne	L18
	brl	L10014
L18:
	.line	181
;		k_dispatch_reg1(&data);	
	.line	182
	pea	#0
	clc
	tdc
	adc	#<L15+data_1
	pha
	jsl	~~k_dispatch_reg1
;	}
	.line	183
;	
;	if(INT_PENDING_REG2[0]!=0)
L10014:
	.line	185
;	{
	lda	>322
	and	#$ff
	bne	L19
	brl	L10015
L19:
	.line	186
;		k_dispatch_reg2(&data);
	.line	187
	pea	#0
	clc
	tdc
	adc	#<L15+data_1
	pha
	jsl	~~k_dispatch_reg2
;	}
	.line	188
;	
;	return;
L10015:
	.line	190
L20:
	pld
	tsc
	clc
	adc	#L14
	tcs
	rtl
;}
	.line	191
	.endblock	191
L14	equ	6
L15	equ	1
	ends
	efunc
	.endfunc	191,1,6
	.line	191
;
;void k_dispatch_reg0(PIRQDATA pIRQx)
;{
	.line	193
	.line	194
	code
	xdef	~~k_dispatch_reg0
	func
	.function	194
~~k_dispatch_reg0:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L21
	tcs
	phd
	tcd
pIRQx_0	set	4
	.block	194
;	int i = 0;
;	char spc = 0;
;	unsigned char mptr = 0;
;	unsigned char kbd = 0;
;	char irq0buffer[8];
;	//int line = pIRQ->line;
;	
;	//char FAR *keyCode = pIRQ->keycode;
;
;	//k_put_char(1,40,'A',15,0);
;	
;	//k_put_char(1,1,irqspinner[scirq0++],15,0);
;	//if(scirq0>3)scirq0 = 0;
;	
;	
;	if(INT_PENDING_REG0[0] & FNX0_INT00_SOF)
i_1	set	0
spc_1	set	2
mptr_1	set	3
kbd_1	set	4
irq0buffer_1	set	5
	.sym	i,0,5,1,16
	.sym	spc,2,14,1,8
	.sym	mptr,3,14,1,8
	.sym	kbd,4,14,1,8
	.sym	irq0buffer,5,110,1,0,8
	.sym	pIRQx,4,138,6,32,9
	stz	<L22+i_1
	sep	#$20
	longa	off
	stz	<L22+spc_1
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	stz	<L22+mptr_1
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	stz	<L22+kbd_1
	rep	#$20
	longa	on
	.line	210
;	{
	sep	#$20
	longa	off
	lda	>320
	and	#<$1
	rep	#$20
	longa	on
	bne	L24
	brl	L10016
L24:
	.line	211
;		//k_put_char(10,line,irqspinner[scirq00++],15,0);
;		//if(scirq00>3) scirq00 = 0;
;
;		INT_PENDING_REG0[0] &=  FNX0_INT00_SOF;
	.line	215
	sep	#$20
	longa	off
	lda	>320
	and	#<$1
	sta	>320
	rep	#$20
	longa	on
;	}
	.line	216
;	
;	if(INT_PENDING_REG0[0] & FNX0_INT01_SOL)
L10016:
	.line	218
;	{
	sep	#$20
	longa	off
	lda	>320
	and	#<$2
	rep	#$20
	longa	on
	bne	L25
	brl	L10017
L25:
	.line	219
;		//k_put_char(11,line,irqspinner[scirq01++],15,0);
;		//if(scirq01>3) scirq01 = 0;
;		//_system_timer++;
;		
;		if(_irq_ktick > 0)
	.line	224
;			_irq_ktick--;
	sec
	lda	#$0
	sbc	|~~_irq_ktick
	lda	#$0
	sbc	|~~_irq_ktick+2
	bvs	L26
	eor	#$8000
L26:
	bpl	L27
	brl	L10018
L27:
	.line	225
	lda	|~~_irq_ktick
	bne	L28
	dec	|~~_irq_ktick+2
L28:
	dec	|~~_irq_ktick
;
;		//k_tickManagement(&_irq_ktick);
;		k_signal_sol_event(&_irq_ktick);
L10018:
	.line	228
	lda	#<~~_irq_ktick
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~k_signal_sol_event
;		
;
;		INT_PENDING_REG0[0] &= FNX0_INT01_SOL;
	.line	231
	sep	#$20
	longa	off
	lda	>320
	and	#<$2
	sta	>320
	rep	#$20
	longa	on
;	}
	.line	232
;	if(INT_PENDING_REG0[0] & FNX0_INT02_TMR0)
L10017:
	.line	233
;	{
	sep	#$20
	longa	off
	lda	>320
	and	#<$4
	rep	#$20
	longa	on
	bne	L29
	brl	L10019
L29:
	.line	234
;		//k_put_char(3,0,'X',15,0);
;		//k_put_char(3,0,'2',15,0);
;
;		//k_put_char(12,line,irqspinner[scirq02++],15,0);
;		//if(scirq02>3) scirq02 = 0;
;
;		//k_put_string(10,27,k_bytetohex(STATUS_PORT[0],irq0buffer),15,0);
;		_pseudo_timer++;
	.line	242
	inc	|~~_pseudo_timer
	bne	L30
	inc	|~~_pseudo_timer+2
L30:
;
;		_irq_keyboardTimeout++;
	.line	244
	inc	|~~_irq_keyboardTimeout
;		if((STATUS_PORT[0] & 0x01) && (_irq_keyboardTimeout > KEYBOARD_TIMEOUT))
	.line	245
;		{
	sep	#$20
	longa	off
	lda	>11472996
	and	#<$1
	rep	#$20
	longa	on
	bne	L31
	brl	L10020
L31:
	sec
	lda	#$32
	sbc	|~~_irq_keyboardTimeout
	bvs	L32
	eor	#$8000
L32:
	bpl	L33
	brl	L10020
L33:
	.line	246
;			
;			//k_debug_hex("FNX0_INT02_TMR0::STATUS_PORT:",STATUS_PORT[0]);
;			//k_debug_hex("FNX0_INT02_TMR0::MOUSE_PTR:",MOUSE_PTR[0]);
;			//k_debug_hex("FNX0_INT02_TMR0::MOUSE_PTR_BYTE0:",MOUSE_PTR_BYTE0[0]);
;			//k_irq_device_event(IRQE_CTLR_RESET,STATUS_PORT[0],&_irq_ktick);
;			//k_irq_device_event(IRQE_CTLR_RESET,MOUSE_PTR[0],&_irq_ktick);
;
;			k_irq_device_event(IRQE_CTLR_RESET,mptr,&_irq_ktick);
	.line	254
	lda	#<~~_irq_ktick
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	lda	<L22+mptr_1
	and	#$ff
	sta	<R1
	stz	<R1+2
	pei	<R1+2
	pei	<R1
	pea	#<$9
	jsl	~~k_irq_device_event
;
;			/*
;			_irq_keyboardTimeout = 1000;
;			
;			while(STATUS_PORT[0] & 0x01)
;			{
;				_irq_keyboardTimeout--;
;
;				kbd  = KBD_INPT_BUF[0];
;				//k_irq_device_event(IRQE_CTLR_RESET,_irq_keyboardTimeout,&_irq_ktick);
;				//k_irq_device_event(IRQE_CTLR_RESET,STATUS_PORT[0],&_irq_ktick);
;				if(_irq_keyboardTimeout < 0)
;					break;
;			}
;			*/
;			MOUSE_PTR[0] = 0;
	.line	270
	sep	#$20
	longa	off
	lda	#$0
	sta	>224
	rep	#$20
	longa	on
;
;
;
;			/*
;			if(_irq_keyboardTimeout < 0)
;			{
;				k_irq_device_event(IRQE_CTLR_RESET,-1,&_irq_ktick);
;				k_init_keyboard();
;				if(STATUS_PORT[0] & 0x01)
;				{
;					k_init_keyboard();
;				}
;			}
;			*/
;			k_init_keyboard();
	.line	285
	jsl	~~k_init_keyboard
;			if(STATUS_PORT[0] & 0x01)
	.line	286
;			{
	sep	#$20
	longa	off
	lda	>11472996
	and	#<$1
	rep	#$20
	longa	on
	bne	L34
	brl	L10021
L34:
	.line	287
;				k_init_keyboard();
	.line	288
	jsl	~~k_init_keyboard
;			}
	.line	289
;
;			_irq_keyboardTimeout = 0;
L10021:
	.line	291
	stz	|~~_irq_keyboardTimeout
;
;			spc  = 0;
	.line	293
	sep	#$20
	longa	off
	stz	<L22+spc_1
	rep	#$20
	longa	on
;			mptr = 0;
	.line	294
	sep	#$20
	longa	off
	stz	<L22+mptr_1
	rep	#$20
	longa	on
;
;		}
	.line	296
;		else if(_irq_keyboardTimeout > KEYBOARD_TIMEOUT)
	brl	L10022
L10020:
	.line	297
;		{
	sec
	lda	#$32
	sbc	|~~_irq_keyboardTimeout
	bvs	L35
	eor	#$8000
L35:
	bpl	L36
	brl	L10023
L36:
	.line	298
;			_irq_keyboardTimeout = 0;
	.line	299
	stz	|~~_irq_keyboardTimeout
;		}
	.line	300
;
;		k_irq_device_event(IRQE_SOL_TIMER,_pseudo_timer,&_irq_ktick);
L10023:
L10022:
	.line	302
	lda	#<~~_irq_ktick
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	lda	|~~_pseudo_timer+2
	pha
	lda	|~~_pseudo_timer
	pha
	pea	#<$5
	jsl	~~k_irq_device_event
;		//k_put_string(0,26,k_inttodec(_irq_keyboardTimeout,irq0buffer),15,0);
;		
;		//floppy_timer();
;
;		INT_PENDING_REG0[0] &=  FNX0_INT02_TMR0;
	.line	307
	sep	#$20
	longa	off
	lda	>320
	and	#<$4
	sta	>320
	rep	#$20
	longa	on
;	}
	.line	308
;	if(INT_PENDING_REG0[0] & FNX0_INT03_TMR1)
L10019:
	.line	309
;	{
	sep	#$20
	longa	off
	lda	>320
	and	#<$8
	rep	#$20
	longa	on
	bne	L37
	brl	L10024
L37:
	.line	310
;		//k_put_char(13,line,irqspinner[scirq03++],15,0);
;		//if(scirq03>3) scirq03 = 0;
;
;		/*
;		_irq_keyboardTimeout++;
;		if(_irq_keyboardTimeout > 120)
;		{
;			_irq_keyboardTimeout = 0;
;			k_init_keyboard();
;		}
;
;		k_put_string(0,26,k_inttodec(_irq_keyboardTimeout,irq0buffer),15,0);
;		*/
;		INT_PENDING_REG0[0] &=  FNX0_INT03_TMR1;
	.line	324
	sep	#$20
	longa	off
	lda	>320
	and	#<$8
	sta	>320
	rep	#$20
	longa	on
;	}
	.line	325
;	if(INT_PENDING_REG0[0] & FNX0_INT04_TMR2)
L10024:
	.line	326
;	{
	sep	#$20
	longa	off
	lda	>320
	and	#<$10
	rep	#$20
	longa	on
	bne	L38
	brl	L10025
L38:
	.line	327
;		//k_put_char(14,line,irqspinner[scirq04++],15,0);
;		//if(scirq04>3) scirq04 = 0;
;
;
;		//k_put_char(5,0,'X',15,0);
;		//k_put_char(5,0,'4',15,0);
;		INT_PENDING_REG0[0] &=  FNX0_INT04_TMR2;
	.line	334
	sep	#$20
	longa	off
	lda	>320
	and	#<$10
	sta	>320
	rep	#$20
	longa	on
;	}
	.line	335
;	if(INT_PENDING_REG0[0] & FNX0_INT05_RTC)
L10025:
	.line	336
;	{
	sep	#$20
	longa	off
	lda	>320
	and	#<$20
	rep	#$20
	longa	on
	bne	L39
	brl	L10026
L39:
	.line	337
;		//k_put_char(15,line,irqspinner[scirq05++],15,0);
;		//if(scirq05>3) scirq05 = 0;
;
;
;		//k_put_char(6,0,'X',15,0);
;		//k_put_char(6,0,'5',15,0);
;		INT_PENDING_REG0[0]&=FNX0_INT05_RTC;
	.line	344
	sep	#$20
	longa	off
	lda	>320
	and	#<$20
	sta	>320
	rep	#$20
	longa	on
;	}
	.line	345
;	if(INT_PENDING_REG0[0] & FNX0_INT06_FDC)
L10026:
	.line	346
;	{
	sep	#$20
	longa	off
	lda	>320
	and	#<$40
	rep	#$20
	longa	on
	bne	L40
	brl	L10027
L40:
	.line	347
;		//k_put_char(16,line,irqspinner[scirq06++],15,0);
;		//if(scirq06>3) scirq06 = 0;
;
;		/*
;		floppybuffer[floppybufferIndex] = (((LPCHAR)0xaf13f5)[0]);
;		if(floppybufferIndex > 511)
;			floppybufferIndex = 0;
;
;		floppybufferIndex++;
;		*/
;		/*
;		for (i = 0; i < 512; i++)
;		{
;			floppybuffer[i] =  (((LPCHAR)0xAF13f5)[0]);
;		}
;		 */
;
;		k_irq_device_event(IRQE_FLOPPY,_pseudo_timer,floppybuffer);
	.line	365
	lda	#<~~floppybuffer
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	lda	|~~_pseudo_timer+2
	pha
	lda	|~~_pseudo_timer
	pha
	pea	#<$6
	jsl	~~k_irq_device_event
;
;
;		//irq_signaled = _FloppyDiskIRQ = TRUE;
;		//floppy_isr();
;
;		// REENABLE FOR FLOPPY
;		irq_signaled =  TRUE;
	.line	372
	sep	#$20
	longa	off
	lda	#$1
	sta	|~~irq_signaled
	rep	#$20
	longa	on
;
;		//k_irq_device_event(IRQE_FLOPPY,_pseudo_timer,floppyBuffer);
;
;		//k_put_char(7,0,'#',15,0);
;		//k_put_char(7,0,'6',15,0);
;		INT_PENDING_REG0[0]&=FNX0_INT06_FDC;
	.line	378
	sep	#$20
	longa	off
	lda	>320
	and	#<$40
	sta	>320
	rep	#$20
	longa	on
;	}
	.line	379
;	if(INT_PENDING_REG0[0] & FNX0_INT07_MOUSE)
L10027:
	.line	380
;	{
	sep	#$20
	longa	off
	lda	>320
	and	#<$80
	rep	#$20
	longa	on
	bne	L41
	brl	L10028
L41:
	.line	381
;		_irq_keyboardTimeout = 0;
	.line	382
	stz	|~~_irq_keyboardTimeout
;		
;		//k_put_char(17,line,irqspinner[scirq07++],15,0);
;		//if(scirq07>3) scirq07 = 0;
;
;		//k_put_char(11,41,KBD_INPT_BUF[0],15,0);
;		
;		//k_itoa(KBD_INPT_BUF[0],keyCode,10);
;		
;		//k_put_string(11,irqMousePos,"     ",15,0);
;		//k_put_string(11,irqMousePos,keyCode,15,0);
;		
;		//k_put_char(1,40,'B',15,0);
;		while((STATUS_PORT[0] & 0x01) && spc < 4)
	.line	395
L10029:
	sep	#$20
	longa	off
	lda	>11472996
	and	#<$1
	rep	#$20
	longa	on
	bne	L42
	brl	L10030
L42:
	sep	#$20
	longa	off
	lda	<L22+spc_1
	cmp	#<$4
	rep	#$20
	longa	on
	bcc	L43
	brl	L10030
L43:
;		//while((STATUS_PORT[0] & 0x01))
;		{
	.line	397
;			mptr = MOUSE_PTR[0];
	.line	398
	sep	#$20
	longa	off
	lda	>224
	sta	<L22+mptr_1
	rep	#$20
	longa	on
;			kbd  = KBD_INPT_BUF[0];
	.line	399
	sep	#$20
	longa	off
	lda	>11472992
	sta	<L22+kbd_1
	rep	#$20
	longa	on
;
;			MOUSE_PTR_BYTE0[mptr]   = kbd;			
	.line	401
	lda	<L22+mptr_1
	and	#$ff
	sta	<R0
	lda	#$706
	sta	<R1
	lda	#$af
	sta	<R1+2
	sep	#$20
	longa	off
	lda	<L22+kbd_1
	ldy	<R0
	sta	[<R1],Y
	rep	#$20
	longa	on
;			FXOS_MOUSE_BYTE[mptr]   = kbd;
	.line	402
	lda	<L22+mptr_1
	and	#$ff
	sta	<R0
	lda	#$1500
	sta	<R1
	lda	#$0
	sta	<R1+2
	sep	#$20
	longa	off
	lda	<L22+kbd_1
	ldy	<R0
	sta	[<R1],Y
	rep	#$20
	longa	on
;				
;			mptr++;	
	.line	404
	sep	#$20
	longa	off
	inc	<L22+mptr_1
	rep	#$20
	longa	on
;				
;			if(mptr >  2)
	.line	406
;			{
	sep	#$20
	longa	off
	lda	#$2
	cmp	<L22+mptr_1
	rep	#$20
	longa	on
	bcc	L44
	brl	L10031
L44:
	.line	407
;				MOUSE_PTR[0] = 0;
	.line	408
	sep	#$20
	longa	off
	lda	#$0
	sta	>224
	rep	#$20
	longa	on
;				
;				FXOS_MOUSE_BYTE_T   = MOUSE_PTR_BYTE0[0];
	.line	410
	sep	#$20
	longa	off
	lda	>11470598
	sta	>5379
	rep	#$20
	longa	on
;				FXOS_MOUSE_BYTE_X_L = MOUSE_PTR_X_POS_L[0];
	.line	411
	sep	#$20
	longa	off
	lda	>11470594
	sta	>5380
	rep	#$20
	longa	on
;				FXOS_MOUSE_BYTE_X_H = MOUSE_PTR_X_POS_H[0];
	.line	412
	sep	#$20
	longa	off
	lda	>11470595
	sta	>5381
	rep	#$20
	longa	on
;				FXOS_MOUSE_BYTE_Y_L = MOUSE_PTR_Y_POS_L[0];
	.line	413
	sep	#$20
	longa	off
	lda	>11470596
	sta	>5382
	rep	#$20
	longa	on
;				FXOS_MOUSE_BYTE_Y_H = MOUSE_PTR_Y_POS_H[0];
	.line	414
	sep	#$20
	longa	off
	lda	>11470597
	sta	>5383
	rep	#$20
	longa	on
;
;				//k_irq_device_event(IRQE_MOUSE,_pseudo_timer,&FXOS_MOUSE_BYTE_T);
;				k_irq_device_event(IRQE_MOUSE,_pseudo_timer,&FXOS_MOUSE_BYTE_T);
	.line	417
	pea	#^$1503
	pea	#<$1503
	lda	|~~_pseudo_timer+2
	pha
	lda	|~~_pseudo_timer
	pha
	pea	#<$2
	jsl	~~k_irq_device_event
;
;				spc  = 0;
	.line	419
	sep	#$20
	longa	off
	stz	<L22+spc_1
	rep	#$20
	longa	on
;				mptr = 0;
	.line	420
	sep	#$20
	longa	off
	stz	<L22+mptr_1
	rep	#$20
	longa	on
;			}
	.line	421
;			else
	brl	L10032
L10031:
;			{
	.line	423
;				MOUSE_PTR[0] = mptr;
	.line	424
	sep	#$20
	longa	off
	lda	<L22+mptr_1
	sta	>224
	rep	#$20
	longa	on
;			}
	.line	425
L10032:
;
;			spc++;
	.line	427
	sep	#$20
	longa	off
	inc	<L22+spc_1
	rep	#$20
	longa	on
;		}
	.line	428
	brl	L10029
L10030:
;		
;		while(STATUS_PORT[0] & 0x01);
	.line	430
L10033:
	sep	#$20
	longa	off
	lda	>11472996
	and	#<$1
	rep	#$20
	longa	on
	bne	L45
	brl	L10034
L45:
	.line	430
	brl	L10033
L10034:
;
;		//if(spc > 3)
;		//	k_put_char(1,40,'C',15,0);
;
;		INT_PENDING_REG0[0] &= FNX0_INT07_MOUSE;
	.line	435
	sep	#$20
	longa	off
	lda	>320
	and	#<$80
	sta	>320
	rep	#$20
	longa	on
;	}
	.line	436
;	//*INT_PENDING_REG0 = *INT_PENDING_REG0;
;	INT_PENDING_REG0[0] = 0xFF;
L10028:
	.line	438
	sep	#$20
	longa	off
	lda	#$ff
	sta	>320
	rep	#$20
	longa	on
;	INT_PENDING_REG0[0] = 0x00;
	.line	439
	sep	#$20
	longa	off
	lda	#$0
	sta	>320
	rep	#$20
	longa	on
;
;	//k_put_char(1,40,'Z',15,0);
;}
	.line	442
L46:
	lda	<L21+2
	sta	<L21+2+4
	lda	<L21+1
	sta	<L21+1+4
	pld
	tsc
	clc
	adc	#L21+4
	tcs
	rtl
	.endblock	442
L21	equ	21
L22	equ	9
	ends
	efunc
	.endfunc	442,9,21
	.line	442
;
;void k_dispatch_reg1(PIRQDATA pIRQx)
;{
	.line	444
	.line	445
	code
	xdef	~~k_dispatch_reg1
	func
	.function	445
~~k_dispatch_reg1:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L47
	tcs
	phd
	tcd
pIRQx_0	set	4
	.block	445
;	//int line = pIRQ->line;
;	
;	//char FAR *keyCode = pIRQ->keycode;
;	char none = 0;
;	unsigned char data = 0;
;	//char null = 0;
;	int dp = 20;
;	
;	//line++;
;	
;	//k_put_char(9,line,irqspinner[scirq1++],15,0);
;	//if(scirq1>3)scirq1 = 0;
;	
;	//if(irqKeyPos!=0)
;	//k_put_string(11,irqKeyPos,"    ",15,0);
;	
;	//k_put_char(2,40,'A',15,0);
;
;	//k_put_char(0,1,'1',15,0);
;	if(INT_PENDING_REG1[0] & FNX1_INT00_KBD)
none_1	set	0
data_1	set	1
dp_1	set	2
	.sym	none,0,14,1,8
	.sym	data,1,14,1,8
	.sym	dp,2,5,1,16
	.sym	pIRQx,4,138,6,32,9
	sep	#$20
	longa	off
	stz	<L48+none_1
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	stz	<L48+data_1
	rep	#$20
	longa	on
	lda	#$14
	sta	<L48+dp_1
	.line	465
;	{
	sep	#$20
	longa	off
	lda	>321
	and	#<$1
	rep	#$20
	longa	on
	bne	L50
	brl	L10035
L50:
	.line	466
;		_irq_keyboardTimeout = 0;
	.line	467
	stz	|~~_irq_keyboardTimeout
;		
;		//k_put_char(2,40,'B',15,0);
;
;		//k_put_char(10,line,irqspinner[scirq10++],15,0);
;		//if(scirq10>3)scirq10 = 0;
;
;		if(_irq_ktick < 1)
	.line	474
;		{
	lda	|~~_irq_ktick+2
	bmi	L51
	bne	L52
	lda	|~~_irq_ktick
	cmp	#1
	bcc	L51
L52:
	brl	L10036
L51:
	.line	475
;			//k_put_char(2,40,'C',15,0);
;
;			_irq_ktick = KTICK_MAX;
	.line	478
	lda	#$1
	sta	|~~_irq_ktick
	lda	#$0
	sta	|~~_irq_ktick+2
;
;			//if(KBD_INPT_BUF[0]!=_irq_currentKeyPress)
;			//	_irq_currentKeyPress = KBD_INPT_BUF[0];
;			_irq_currentKeyPress = KBD_INPT_BUF[0];
	.line	482
	sep	#$20
	longa	off
	lda	>11472992
	sta	|~~_irq_currentKeyPress
	rep	#$20
	longa	on
;			_k_last_scancode = _irq_currentKeyPress;
	.line	483
	sep	#$20
	longa	off
	lda	|~~_irq_currentKeyPress
	sta	|~~_k_last_scancode
	rep	#$20
	longa	on
;
;			FXOS_KEY_BYTE_0 =  0;
	.line	485
	sep	#$20
	longa	off
	lda	#$0
	sta	>5384
	rep	#$20
	longa	on
;			FXOS_KEY_BYTE_1 =  _irq_keyboardBufferIndex;
	.line	486
	sep	#$20
	longa	off
	lda	|~~_irq_keyboardBufferIndex
	sta	>5385
	rep	#$20
	longa	on
;			FXOS_KEY_BYTE_2 =  _irq_currentKeyPress;
	.line	487
	sep	#$20
	longa	off
	lda	|~~_irq_currentKeyPress
	sta	>5386
	rep	#$20
	longa	on
;
;			//_irq_keyboardBuffer[_irq_keyboardBufferIndex++] = _irq_currentKeyPress;
;			_irq_keyboardBuffer[_irq_keyboardBufferIndex] = _irq_currentKeyPress;
	.line	490
	lda	|~~_irq_keyboardBufferIndex
	and	#$ff
	sta	<R1
	lda	<R1
	asl	A
	sta	<R0
	lda	|~~_irq_currentKeyPress
	and	#$ff
	ldx	<R0
	sta	|~~_irq_keyboardBuffer,X
;
;			if(_irq_currentKeyPress == 0xE0)
	.line	492
;				_k_extendedKeyMode = TRUE;
	sep	#$20
	longa	off
	lda	|~~_irq_currentKeyPress
	cmp	#<$e0
	rep	#$20
	longa	on
	beq	L53
	brl	L10037
L53:
	.line	493
	sep	#$20
	longa	off
	lda	#$1
	sta	|~~_k_extendedKeyMode
	rep	#$20
	longa	on
;			else
	brl	L10038
L10037:
;				k_irq_device_event(IRQE_KEYBOARD,_pseudo_timer,&_irq_keyboardBuffer[_irq_keyboardBufferIndex]);
	.line	495
	lda	|~~_irq_keyboardBufferIndex
	and	#$ff
	sta	<R2
	lda	<R2
	asl	A
	sta	<R1
	clc
	lda	#<~~_irq_keyboardBuffer
	adc	<R1
	sta	<R2
	lda	<R2
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	lda	|~~_pseudo_timer+2
	pha
	lda	|~~_pseudo_timer
	pha
	pea	#<$1
	jsl	~~k_irq_device_event
L10038:
;
;			_irq_keyboardBufferIndex++;
	.line	497
	sep	#$20
	longa	off
	inc	|~~_irq_keyboardBufferIndex
	rep	#$20
	longa	on
;			if(_irq_keyboardBufferIndex > 19)
	.line	498
;				_irq_keyboardBufferIndex = 0;
	sep	#$20
	longa	off
	lda	#$13
	cmp	|~~_irq_keyboardBufferIndex
	rep	#$20
	longa	on
	bcc	L54
	brl	L10039
L54:
	.line	499
	sep	#$20
	longa	off
	stz	|~~_irq_keyboardBufferIndex
	rep	#$20
	longa	on
;
;			//k_put_char(11,42,_irq_currentKeyPress,15,0);
;
;			if(_irq_currentKeyPress == 0xE0)
L10039:
	.line	503
;				_k_extendedKeyMode = TRUE;
	sep	#$20
	longa	off
	lda	|~~_irq_currentKeyPress
	cmp	#<$e0
	rep	#$20
	longa	on
	beq	L55
	brl	L10040
L55:
	.line	504
	sep	#$20
	longa	off
	lda	#$1
	sta	|~~_k_extendedKeyMode
	rep	#$20
	longa	on
;
;			//k_itoa(KBD_INPT_BUF[0],keyCode,16);
;			//k_bytetohex(_irq_currentKeyPress,keyCode);
;			
;			//k_put_char(11,42,KBD_INPT_BUF[0],15,0);
;			//k_put_string(11,42,"    ",15,0);
;			//k_put_string(16,irqKeyPos,_irq_keyboardBuffer,15,0);
;			//k_put_string(11,irqKeyPos,keyCode,15,0);
;		}
L10040:
	.line	513
;		else if(_k_extendedKeyMode == TRUE)
	brl	L10041
L10036:
	.line	514
;		{
	sep	#$20
	longa	off
	lda	|~~_k_extendedKeyMode
	cmp	#<$1
	rep	#$20
	longa	on
	beq	L56
	brl	L10042
L56:
	.line	515
;			_k_extendedKeyMode = FALSE;
	.line	516
	sep	#$20
	longa	off
	stz	|~~_k_extendedKeyMode
	rep	#$20
	longa	on
;
;			_irq_currentKeyPress = KBD_INPT_BUF[0];
	.line	518
	sep	#$20
	longa	off
	lda	>11472992
	sta	|~~_irq_currentKeyPress
	rep	#$20
	longa	on
;			_k_last_scancode = _irq_currentKeyPress;
	.line	519
	sep	#$20
	longa	off
	lda	|~~_irq_currentKeyPress
	sta	|~~_k_last_scancode
	rep	#$20
	longa	on
;
;			FXOS_KEY_BYTE_0 =  0;
	.line	521
	sep	#$20
	longa	off
	lda	#$0
	sta	>5384
	rep	#$20
	longa	on
;			FXOS_KEY_BYTE_1 =  _irq_keyboardBufferIndex;
	.line	522
	sep	#$20
	longa	off
	lda	|~~_irq_keyboardBufferIndex
	sta	>5385
	rep	#$20
	longa	on
;			FXOS_KEY_BYTE_2 =  _irq_currentKeyPress;
	.line	523
	sep	#$20
	longa	off
	lda	|~~_irq_currentKeyPress
	sta	>5386
	rep	#$20
	longa	on
;
;			_irq_keyboardBuffer[_irq_keyboardBufferIndex] = (_irq_currentKeyPress | 0xE000);
	.line	525
	lda	|~~_irq_keyboardBufferIndex
	and	#$ff
	sta	<R1
	lda	<R1
	asl	A
	sta	<R0
	lda	|~~_irq_currentKeyPress
	and	#$ff
	ora	#<$e000
	ldx	<R0
	sta	|~~_irq_keyboardBuffer,X
;
;			k_irq_device_event(IRQE_KEYBOARD,_pseudo_timer,&_irq_keyboardBuffer[_irq_keyboardBufferIndex]);
	.line	527
	lda	|~~_irq_keyboardBufferIndex
	and	#$ff
	sta	<R2
	lda	<R2
	asl	A
	sta	<R1
	clc
	lda	#<~~_irq_keyboardBuffer
	adc	<R1
	sta	<R2
	lda	<R2
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	lda	|~~_pseudo_timer+2
	pha
	lda	|~~_pseudo_timer
	pha
	pea	#<$1
	jsl	~~k_irq_device_event
;
;			_irq_keyboardBufferIndex++;
	.line	529
	sep	#$20
	longa	off
	inc	|~~_irq_keyboardBufferIndex
	rep	#$20
	longa	on
;			if(_irq_keyboardBufferIndex > 19)
	.line	530
;				_irq_keyboardBufferIndex = 0;
	sep	#$20
	longa	off
	lda	#$13
	cmp	|~~_irq_keyboardBufferIndex
	rep	#$20
	longa	on
	bcc	L57
	brl	L10043
L57:
	.line	531
	sep	#$20
	longa	off
	stz	|~~_irq_keyboardBufferIndex
	rep	#$20
	longa	on
;
;			//k_put_char(11,42,_irq_currentKeyPress,15,0);
;
;		}
L10043:
	.line	535
;		else
	brl	L10044
L10042:
;		{
	.line	537
;			//k_put_char(2,40,'D',15,0);
;			//if(_k_last_scancode != _irq_currentKeyPress)
;				_irq_currentKeyPress = 0;
	.line	540
	sep	#$20
	longa	off
	stz	|~~_irq_currentKeyPress
	rep	#$20
	longa	on
;
;			none = KBD_INPT_BUF[0];
	.line	542
	sep	#$20
	longa	off
	lda	>11472992
	sta	<L48+none_1
	rep	#$20
	longa	on
;		}
	.line	543
L10044:
L10041:
;	
;		_irq_statusReg&=CHK_KEYMOUSE_CTL;
	.line	545
	sep	#$20
	longa	off
	lda	#$fd
	trb	|~~_irq_statusReg
	rep	#$20
	longa	on
;		
;		INT_PENDING_REG1[0] &= FNX1_INT00_KBD;
	.line	547
	sep	#$20
	longa	off
	lda	>321
	and	#<$1
	sta	>321
	rep	#$20
	longa	on
;	}
	.line	548
;	
;	if(INT_PENDING_REG1[0] & FNX1_INT01_SC0)
L10035:
	.line	550
;	{
	sep	#$20
	longa	off
	lda	>321
	and	#<$2
	rep	#$20
	longa	on
	bne	L58
	brl	L10045
L58:
	.line	551
;		//k_put_char(11,line,irqspinner[scirq11++],15,0);
;		//if(scirq11>3)scirq11 = 0;
;
;		//k_put_char(2,1,' ',15,0);
;		//k_put_char(2,1,'1',15,0);
;		INT_PENDING_REG1[0]&=FNX1_INT01_SC0;
	.line	557
	sep	#$20
	longa	off
	lda	>321
	and	#<$2
	sta	>321
	rep	#$20
	longa	on
;	}
	.line	558
;	if(INT_PENDING_REG1[0] & FNX1_INT02_SC1)
L10045:
	.line	559
;	{
	sep	#$20
	longa	off
	lda	>321
	and	#<$4
	rep	#$20
	longa	on
	bne	L59
	brl	L10046
L59:
	.line	560
;		//k_put_char(12,line,irqspinner[scirq12++],15,0);
;		//if(scirq12>3)scirq12 = 0;
;		
;		//k_put_char(3,1,' ',15,0);
;		//k_put_char(3,1,'2',15,0);
;		INT_PENDING_REG1[0]&=FNX1_INT02_SC1;
	.line	566
	sep	#$20
	longa	off
	lda	>321
	and	#<$4
	sta	>321
	rep	#$20
	longa	on
;	}
	.line	567
;	if(INT_PENDING_REG1[0] & FNX1_INT03_COM2)
L10046:
	.line	568
;	{
	sep	#$20
	longa	off
	lda	>321
	and	#<$8
	rep	#$20
	longa	on
	bne	L60
	brl	L10047
L60:
	.line	569
;		//k_put_char(13,line,irqspinner[scirq13++],15,0);
;		//if(scirq13>3)scirq13 = 0;
;		
;		//k_print_uart_status_com2(31);
;		data = UART2_BASE[0];
	.line	574
	sep	#$20
	longa	off
	lda	>11473656
	sta	<L48+data_1
	rep	#$20
	longa	on
;		//k_irq_device_event(IRQE_COM2,_pseudo_timer,&data);
;		//k_put_char(dp++,31,data,15,0);
;		//k_put_char(31,1,'*' ,15,0);
;		while(UART2_BASE[UART_LSR] & 0x01)
	.line	578
L10048:
	sep	#$20
	longa	off
	lda	>11473661
	and	#<$1
	rep	#$20
	longa	on
	bne	L61
	brl	L10049
L61:
;		{
	.line	579
;			data = UART2_BASE[0];
	.line	580
	sep	#$20
	longa	off
	lda	>11473656
	sta	<L48+data_1
	rep	#$20
	longa	on
;			//k_put_char(dp++,31,data,15,0);
;		}
	.line	582
	brl	L10048
L10049:
;		//k_print_uart_status_com2(32);
;		//k_put_char(30,1,'M' ,15,0);
;		
;		//k_put_char(20,31,data+64,15,0);
;		//k_put_char(4,1,' ',15,0);
;		//k_put_char(4,1,'3',15,0);
;		INT_PENDING_REG1[0]&=FNX1_INT03_COM2;
	.line	589
	sep	#$20
	longa	off
	lda	>321
	and	#<$8
	sta	>321
	rep	#$20
	longa	on
;	}
	.line	590
;	if(INT_PENDING_REG1[0] & FNX1_INT04_COM1)
L10047:
	.line	591
;	{
	sep	#$20
	longa	off
	lda	>321
	and	#<$10
	rep	#$20
	longa	on
	bne	L62
	brl	L10050
L62:
	.line	592
;
;		//k_put_char(14,line,irqspinner[scirq14++],15,0);
;		//if(scirq14>3)scirq14 = 0;
;		
;		//k_print_uart_status_com1(29);
;		data = UART1_BASE[0];
	.line	598
	sep	#$20
	longa	off
	lda	>11473912
	sta	<L48+data_1
	rep	#$20
	longa	on
;		k_irq_device_event(IRQE_COM1,_pseudo_timer,&data);
	.line	599
	pea	#0
	clc
	tdc
	adc	#<L48+data_1
	pha
	lda	|~~_pseudo_timer+2
	pha
	lda	|~~_pseudo_timer
	pha
	pea	#<$3
	jsl	~~k_irq_device_event
;		//k_put_char(30,1,'*' ,15,0);
;		//if(data)
;		//	k_put_char(30,2,data,15,0);
;		//k_put_char(31,1,'N' ,15,0);
;		//k_put_char(dp++,31,data+64,15,0);
;		while(UART1_BASE[UART_LSR] & 0x01)
	.line	605
L10051:
	sep	#$20
	longa	off
	lda	>11473917
	and	#<$1
	rep	#$20
	longa	on
	bne	L63
	brl	L10052
L63:
;		{
	.line	606
;			data = UART1_BASE[0];
	.line	607
	sep	#$20
	longa	off
	lda	>11473912
	sta	<L48+data_1
	rep	#$20
	longa	on
;		}
	.line	608
	brl	L10051
L10052:
;		//k_print_uart_status_com1(30);
;		//k_put_char(31,1,'*' ,15,0);
;		//k_put_char(30,3,'*' ,15,0);
;		
;		//k_put_char(5,1,' ',15,0);
;		//k_put_char(5,1,'4',15,0);
;		INT_PENDING_REG1[0]&=FNX1_INT04_COM1;
	.line	615
	sep	#$20
	longa	off
	lda	>321
	and	#<$10
	sta	>321
	rep	#$20
	longa	on
;	}
	.line	616
;	if(INT_PENDING_REG1[0] & FNX1_INT05_MPU401)
L10050:
	.line	617
;	{
	sep	#$20
	longa	off
	lda	>321
	and	#<$20
	rep	#$20
	longa	on
	bne	L64
	brl	L10053
L64:
	.line	618
;		//k_put_char(15,line,irqspinner[scirq15++],15,0);
;		//if(scirq15>3)scirq15 = 0;
;
;
;		//k_put_char(6,1,' ',15,0);
;		//k_put_char(6,1,'5',15,0);
;		INT_PENDING_REG1[0]&=FNX1_INT05_MPU401;
	.line	625
	sep	#$20
	longa	off
	lda	>321
	and	#<$20
	sta	>321
	rep	#$20
	longa	on
;	}
	.line	626
;	if(INT_PENDING_REG1[0] & FNX1_INT06_LPT)
L10053:
	.line	627
;	{
	sep	#$20
	longa	off
	lda	>321
	and	#<$40
	rep	#$20
	longa	on
	bne	L65
	brl	L10054
L65:
	.line	628
;		//k_put_char(16,line,irqspinner[scirq16++],15,0);
;		//if(scirq16>3)scirq16 = 0;
;
;		//k_put_char(6,1,' ',15,0);
;		//k_put_char(6,1,'6',15,0);
;		INT_PENDING_REG1[0]&=FNX1_INT06_LPT;
	.line	634
	sep	#$20
	longa	off
	lda	>321
	and	#<$40
	sta	>321
	rep	#$20
	longa	on
;	}
	.line	635
;	if(INT_PENDING_REG1[0] & FNX1_INT07_SDCARD)
L10054:
	.line	636
;	{
	sep	#$20
	longa	off
	lda	>321
	and	#<$80
	rep	#$20
	longa	on
	bne	L66
	brl	L10055
L66:
	.line	637
;		//k_put_char(17,line,irqspinner[scirq17++],15,0);
;		//if(scirq17>3)scirq17 = 0;
;
;		k_irq_device_event(IRQE_SDCARD,_pseudo_timer,NULL);
	.line	641
	pea	#^$0
	pea	#<$0
	lda	|~~_pseudo_timer+2
	pha
	lda	|~~_pseudo_timer
	pha
	pea	#<$7
	jsl	~~k_irq_device_event
;
;		//k_put_char(7,1,' ',15,0);
;		//k_put_char(7,1,'7',15,0);
;		INT_PENDING_REG1[0]&=FNX1_INT07_SDCARD;
	.line	645
	sep	#$20
	longa	off
	lda	>321
	and	#<$80
	sta	>321
	rep	#$20
	longa	on
;	}
	.line	646
;	//*INT_PENDING_REG1=*INT_PENDING_REG1;
;	INT_PENDING_REG1[0]=0xFF;
L10055:
	.line	648
	sep	#$20
	longa	off
	lda	#$ff
	sta	>321
	rep	#$20
	longa	on
;	INT_PENDING_REG1[0]=0x00;
	.line	649
	sep	#$20
	longa	off
	lda	#$0
	sta	>321
	rep	#$20
	longa	on
;	
;	//k_put_char(2,40,'Z',15,0);
;}
	.line	652
L67:
	lda	<L47+2
	sta	<L47+2+4
	lda	<L47+1
	sta	<L47+1+4
	pld
	tsc
	clc
	adc	#L47+4
	tcs
	rtl
	.endblock	652
L47	equ	16
L48	equ	13
	ends
	efunc
	.endfunc	652,13,16
	.line	652
;
;void k_dispatch_reg2(PIRQDATA pIRQx)
;{
	.line	654
	.line	655
	code
	xdef	~~k_dispatch_reg2
	func
	.function	655
~~k_dispatch_reg2:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L68
	tcs
	phd
	tcd
pIRQx_0	set	4
	.block	655
;	//int line = pIRQ->line;
;	
;	//char FAR *keyCode = pIRQ->keycode;
;	
;	//line++;
;	
;	//k_put_char(9,line,irqspinner[scirq2++],15,0);
;	//if(scirq2>3) scirq2 = 0;
;
;	//k_put_char(3,40,'A',15,0);
;
;	if(INT_PENDING_REG2[0] & FNX2_INT00_OPL2R)
	.sym	pIRQx,4,138,6,32,9
	.line	667
;	{
	sep	#$20
	longa	off
	lda	>322
	and	#<$1
	rep	#$20
	longa	on
	bne	L71
	brl	L10056
L71:
	.line	668
;		//k_put_char(10,line,irqspinner[scirq20++],15,0);
;		//if(scirq20>3) scirq20 = 0;
;		//k_put_char(2,2,' ',15,0);
;		//k_put_char(2,2,'0',15,0);
;		INT_PENDING_REG2[0]&=FNX2_INT00_OPL2R;
	.line	673
	sep	#$20
	longa	off
	lda	>322
	and	#<$1
	sta	>322
	rep	#$20
	longa	on
;	}
	.line	674
;	if(INT_PENDING_REG2[0] & FNX2_INT01_OPL2L)
L10056:
	.line	675
;	{
	sep	#$20
	longa	off
	lda	>322
	and	#<$2
	rep	#$20
	longa	on
	bne	L72
	brl	L10057
L72:
	.line	676
;		//k_put_char(11,line,irqspinner[scirq21++],15,0);
;		//if(scirq21>3) scirq21 = 0;
;		//k_put_char(3,2,' ',15,0);
;		//k_put_char(3,2,'1',15,0);
;		INT_PENDING_REG2[0]&=FNX2_INT01_OPL2L;
	.line	681
	sep	#$20
	longa	off
	lda	>322
	and	#<$2
	sta	>322
	rep	#$20
	longa	on
;	}
	.line	682
;	if(INT_PENDING_REG2[0] & FNX2_INT02_BTX_INT)
L10057:
	.line	683
;	{
	sep	#$20
	longa	off
	lda	>322
	and	#<$4
	rep	#$20
	longa	on
	bne	L73
	brl	L10058
L73:
	.line	684
;		//k_put_char(12,line,irqspinner[scirq22++],15,0);
;		//if(scirq22>3) scirq22 = 0;
;		//k_put_char(4,2,' ',15,0);
;		//k_put_char(4,2,'2',15,0);
;		INT_PENDING_REG2[0]&=FNX2_INT02_BTX_INT;
	.line	689
	sep	#$20
	longa	off
	lda	>322
	and	#<$4
	sta	>322
	rep	#$20
	longa	on
;	}
	.line	690
;	if(INT_PENDING_REG2[0] & FNX2_INT03_SDMA)
L10058:
	.line	691
;	{
	sep	#$20
	longa	off
	lda	>322
	and	#<$8
	rep	#$20
	longa	on
	bne	L74
	brl	L10059
L74:
	.line	692
;		//k_put_char(13,line,irqspinner[scirq23++],15,0);
;		//if(scirq23>3) scirq23 = 0;
;		//k_put_char(5,2,' ',15,0);
;		//k_put_char(5,2,'3',15,0);
;		INT_PENDING_REG2[0]&=FNX2_INT03_SDMA;
	.line	697
	sep	#$20
	longa	off
	lda	>322
	and	#<$8
	sta	>322
	rep	#$20
	longa	on
;	}
	.line	698
;	if(INT_PENDING_REG2[0] & FNX2_INT04_VDMA)
L10059:
	.line	699
;	{
	sep	#$20
	longa	off
	lda	>322
	and	#<$10
	rep	#$20
	longa	on
	bne	L75
	brl	L10060
L75:
	.line	700
;		//k_put_char(14,line,irqspinner[scirq24++],15,0);
;		//if(scirq24>3) scirq24 = 0;
;		//k_put_char(6,2,' ',15,0);
;		//k_put_char(6,2,'4',15,0);
;		INT_PENDING_REG2[0]&=FNX2_INT04_VDMA;
	.line	705
	sep	#$20
	longa	off
	lda	>322
	and	#<$10
	sta	>322
	rep	#$20
	longa	on
;	}
	.line	706
;	if(INT_PENDING_REG2[0] & FNX1_INT06_LPT)
L10060:
	.line	707
;	{
	sep	#$20
	longa	off
	lda	>322
	and	#<$40
	rep	#$20
	longa	on
	bne	L76
	brl	L10061
L76:
	.line	708
;		//k_put_char(16,line,irqspinner[scirq26++],15,0);
;		//if(scirq26>3) scirq26 = 0;
;		//k_put_char(7,2,' ',15,0);
;		//k_put_char(7,2,'6',15,0);
;		INT_PENDING_REG2[0]&=FNX1_INT06_LPT;
	.line	713
	sep	#$20
	longa	off
	lda	>322
	and	#<$40
	sta	>322
	rep	#$20
	longa	on
;	}
	.line	714
;	/*
;	if(INT_PENDING_REG2[0] & FNX2_INT07_SDCARD_INS)
;		{
;			//k_put_char(16,line,irqspinner[scirq26++],15,0);
;			//if(scirq26>3) scirq26 = 0;
;			//k_put_char(7,2,' ',15,0);
;			//k_put_char(7,2,'6',15,0);
;			INT_PENDING_REG2[0]&=FNX2_INT07_SDCARD_INS;
;		}
;	*/
;	/*
;	if(INT_PENDING_REG2[0] & FNX2_INT07_SDCARD)
;	{
;		//k_put_char(17,line,irqspinner[scirq17++],15,0);
;		//if(scirq17>3)scirq17 = 0;
;
;		k_irq_device_event(IRQE_SDCARD_INS,_pseudo_timer,NULL);
;
;		//k_put_char(7,1,' ',15,0);
;		//k_put_char(7,1,'7',15,0);
;		INT_PENDING_REG2[0]&=FNX2_INT07_SDCARD;
;	}
;	*/
;	INT_PENDING_REG2[0]=0xFF;
L10061:
	.line	738
	sep	#$20
	longa	off
	lda	#$ff
	sta	>322
	rep	#$20
	longa	on
;	INT_PENDING_REG2[0]=0x00;
	.line	739
	sep	#$20
	longa	off
	lda	#$0
	sta	>322
	rep	#$20
	longa	on
;
;	//k_put_char(3,40,'Z',15,0);
;}
	.line	742
L77:
	lda	<L68+2
	sta	<L68+2+4
	lda	<L68+1
	sta	<L68+1+4
	pld
	tsc
	clc
	adc	#L68+4
	tcs
	rtl
	.endblock	742
L68	equ	0
L69	equ	1
	ends
	efunc
	.endfunc	742,1,0
	.line	742
;
	.line	742
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxirq.c",654
	xref	~~k_init_keyboard
	xref	~~k_debug_integer
	xref	~~k_debug_pointer
	xref	~~k_debug_string
	xref	~~k_delay
	xref	~~k_getKernelTrapTable
	xref	~~k_getZeroPage
	xref	~~k_put_string
	xref	~~k_clear_screen
	xref	~~k_enable_text_cursor
	xref	~~k_set_border_color
	xref	~~k_enable_border
	xref	~~k_irq_device_event
	xref	~~k_signal_sol_event
	xref	~~k_enable_text_mode
	xref	~~k_longtodec
	xref	~~_k_exec_message
	xref	~~_k_exec_error
	xref	~~_k_exec_context
	xref	~~floppybuffer
	xref	~~irq_signaled
	.sym	~~k_init_keyboard,~~k_init_keyboard,69,18,0
	.sym	~~IRQHandler,~~IRQHandler,65,2,0
	.sym	~~COPHandler,~~COPHandler,65,2,0
	.sym	~~BRKHandler,~~BRKHandler,65,2,0
	.sym	~~k_dispatch_reg2,~~k_dispatch_reg2,65,2,0
	.sym	~~k_dispatch_reg1,~~k_dispatch_reg1,65,2,0
	.sym	~~k_dispatch_reg0,~~k_dispatch_reg0,65,2,0
	.sym	~~_system_timer,~~_system_timer,18,2,32
	.sym	~~_pseudo_timer,~~_pseudo_timer,18,2,32
	.sym	~~_k_exec_message,~~_k_exec_message,110,18,0,64
	.sym	~~_k_exec_error,~~_k_exec_error,18,18,32
	.sym	~~_k_exec_context,~~_k_exec_context,18,18,32
	.sym	~~_k_shiftKeyMode,~~_k_shiftKeyMode,14,3,8
	.sym	~~_k_extendedKeyMode,~~_k_extendedKeyMode,14,3,8
	.sym	~~boxside,~~boxside,110,2,0,2
	.sym	~~boxbottom,~~boxbottom,110,2,0,71
	.sym	~~boxtop,~~boxtop,110,2,0,71
	.sym	~~_k_last_scancode,~~_k_last_scancode,14,3,8
	.sym	~~_irq_ktick,~~_irq_ktick,7,3,32
	.sym	~~floppybuffer,~~floppybuffer,110,18,0,512
	.sym	~~_irq_statusReg,~~_irq_statusReg,14,3,8
	.sym	~~_irq_keyboardTimeout,~~_irq_keyboardTimeout,5,3,16
	.sym	~~_irq_currentKeyPress,~~_irq_currentKeyPress,14,3,8
	.sym	~~_irq_keyboardBufferIndex,~~_irq_keyboardBufferIndex,14,3,8
	.sym	~~_irq_keyboardBuffer,~~_irq_keyboardBuffer,101,3,0,21
	.sym	~~irq_signaled,~~irq_signaled,14,18,8
	.sym	DEVICEDRIVER_COMMAND,0,656,14,32
	.sym	DEVICEDRIVER_UNLOAD,0,654,14,32
	.sym	DEVICEDRIVER_WRITE,0,656,14,32
	.sym	DEVICEDRIVER_READ,0,656,14,32
	.sym	DEVICEDRIVER_LOAD,0,654,14,32
	.sym	PFX_BLOCK_DEVICE_DRIVER,0,138,14,32,63
	.sym	FX_BLOCK_DEVICE_DRIVER,0,10,14,1448,63
	.sym	PFX_DEVICE_DRIVER,0,138,14,32,62
	.sym	FX_DEVICE_DRIVER,0,10,14,1416,62
	.sym	~~k_debug_integer,~~k_debug_integer,65,18,0
	.sym	~~k_debug_pointer,~~k_debug_pointer,65,18,0
	.sym	~~k_debug_string,~~k_debug_string,65,18,0
	.sym	~~k_delay,~~k_delay,65,18,0
	.sym	~~k_getKernelTrapTable,~~k_getKernelTrapTable,42049,18,32
	.sym	~~k_getZeroPage,~~k_getZeroPage,1098,18,32,59
	.sym	PDEBUGBYTEBITS,0,138,14,32,61
	.sym	DEBUGBYTEBITS,0,10,14,8,61
	.sym	PFXENVIRONMENT,0,138,14,32,60
	.sym	FXENVIRONMENT,0,10,14,96,60
	.sym	PFXZERPOPAGE,0,138,14,32,59
	.sym	FXZERPOPAGE,0,10,14,448,59
	.sym	KERNELTRAPCALL,0,641,14,32
	.sym	~~k_put_string,~~k_put_string,69,18,0
	.sym	~~k_clear_screen,~~k_clear_screen,65,18,0
	.sym	~~k_enable_text_cursor,~~k_enable_text_cursor,65,18,0
	.sym	~~k_set_border_color,~~k_set_border_color,65,18,0
	.sym	~~k_enable_border,~~k_enable_border,65,18,0
	.sym	PCOMMANDARGS,0,138,14,32,58
	.sym	COMMANDARGS,0,10,14,64,58
	.sym	PTOKENIZESTATE,0,133,14,32
	.sym	TOKENIZESTATE,0,5,14,16
	.sym	PTOKEN,0,138,14,32,57
	.sym	TOKEN,0,10,14,64,57
	.sym	PTOKENTYPE,0,133,14,32
	.sym	TOKENTYPE,0,5,14,16
	.sym	FXCommandHandler,0,656,14,32
	.sym	PCONSOLECTX,0,138,14,32,56
	.sym	CONSOLECTX,0,10,14,1144,56
	.sym	PSPINNERCTX,0,138,14,32,55
	.sym	SPINNERCTX,0,10,14,48,55
	.sym	~~k_irq_device_event,~~k_irq_device_event,65,18,0
	.sym	~~k_signal_sol_event,~~k_signal_sol_event,65,18,0
	.sym	PMOUSE_MSG_STATE,0,138,14,32,54
	.sym	MOUSE_MSG_STATE,0,10,14,184,54
	.sym	PFXEVENTPROCESS,0,138,14,32,53
	.sym	FXEVENTPROCESS,0,10,14,64,53
	.sym	FXEventProc,0,641,14,32
	.sym	PMOUSEMSGDATA,0,138,14,32,52
	.sym	MOUSEMSGDATA,0,10,14,64,52
	.sym	MSGIRQ,0,5,14,16
	.sym	MAINLOOPARGS,0,10,14,16,51
	.sym	PEACHCHILD_MSG,0,138,14,32,50
	.sym	EACHCHILD_MSG,0,10,14,64,50
	.sym	~~k_enable_text_mode,~~k_enable_text_mode,65,18,0
	.sym	PCUR_PALETTE_MAP,0,138,14,32,49
	.sym	CUR_PALETTE_MAP,0,10,14,400,49
	.sym	PCLICKDETECTED,0,138,14,32,48
	.sym	CLICKDETECTED,0,10,14,64,48
	.sym	OBJECTCLICKED,0,641,14,32
	.sym	MemoryCallback,0,641,14,32
	.sym	PFXMEMORYMAP,0,138,14,32,47
	.sym	FXMEMORYMAP,0,10,14,2072,47
	.sym	UMM_HEAP_INFO,0,10,14,256,46
	.sym	FOREACHNODEUNTIL,0,654,14,32
	.sym	FOREACHNODE,0,641,14,32
	.sym	~~k_longtodec,~~k_longtodec,1102,18,32
	.sym	PFXSTRING,0,138,14,32,45
	.sym	FXSTRING,0,10,14,64,45
	.sym	Boolean_T,0,5,14,16
	.sym	ldiv_t,0,10,14,64,43
	.sym	div_t,0,10,14,32,42
	.sym	wctype_t,0,16,14,16
	.sym	wint_t,0,16,14,16
	.sym	wchar_t,0,14,14,8
	.sym	ptrdiff_t,0,7,14,32
	.sym	size_t,0,16,14,16
	.sym	PFXCOMBUFFER,0,138,14,32,41
	.sym	FXCOMBUFFER,0,10,14,2080,41
	.sym	PSUBMENULIST,0,138,14,32,40
	.sym	SUBMENULIST,0,10,14,40,40
	.sym	HSUBMENU,0,7,14,32
	.sym	PSUBMENU,0,138,14,32,39
	.sym	SUBMENU,0,10,14,64,39
	.sym	MenuAction,0,641,14,32
	.sym	PMENUANCHOR,0,138,14,32,38
	.sym	MENUANCHOR,0,10,14,144,38
	.sym	PTEXTBOX,0,138,14,32,37
	.sym	TEXTBOX,0,10,14,144,37
	.sym	PLISTBOX,0,138,14,32,36
	.sym	LISTBOX,0,10,14,240,36
	.sym	PSCROLLBAR,0,138,14,32,35
	.sym	SCROLLBAR,0,10,14,192,35
	.sym	PBUTTON,0,138,14,32,34
	.sym	BUTTON,0,10,14,80,34
	.sym	PMENUDROPDOWNDATA,0,138,14,32,33
	.sym	MENUDROPDOWNDATA,0,10,14,3568,33
	.sym	PMENUTAG,0,138,14,32,32
	.sym	MENUTAG,0,10,14,112,32
	.sym	PMENU,0,138,14,32,31
	.sym	MENU,0,10,14,248,31
	.sym	HMENURESOURCE,0,129,14,32
	.sym	HTEXTBOX,0,7,14,32
	.sym	PTEXTBOXX,0,138,14,32,30
	.sym	TEXTBOXX,0,10,14,112,30
	.sym	FONTMETRIC,0,10,14,32,29
	.sym	TITLE,0,142,14,32
	.sym	PHANDLE,0,1153,14,32
	.sym	HANDLE,0,129,14,32
	.sym	PWINDOWEX,0,138,14,32,28
	.sym	WINDOWEX,0,10,14,2704,28
	.sym	PWINDOW,0,138,14,32,27
	.sym	WINDOW,0,10,14,2808,27
	.sym	PDRAGDATA,0,138,14,32,26
	.sym	DRAGDATA,0,10,14,136,26
	.sym	PNCCLICKABLE,0,138,14,32,25
	.sym	NCCLICKABLE,0,10,14,88,25
	.sym	HCLICKABLE,0,7,14,32
	.sym	PCLICKABLE,0,138,14,32,24
	.sym	CLICKABLE,0,10,14,88,24
	.sym	PWNDCLASS,0,138,14,32,23
	.sym	WNDCLASS,0,10,14,256,23
	.sym	HBRUSH,0,129,14,32
	.sym	HCURSOR,0,129,14,32
	.sym	HICON,0,129,14,32
	.sym	HINSTANCE,0,129,14,32
	.sym	FXWndProc,0,654,14,32
	.sym	PRECT,0,138,14,32,22
	.sym	RECT,0,10,14,64,22
	.sym	PPOINT,0,138,14,32,21
	.sym	POINT,0,10,14,32,21
	.sym	PFXPROPERTY,0,138,14,32,19
	.sym	FXPROPERTY,0,10,14,384,19
	.sym	SCANCODE,0,14,14,8
	.sym	KEYCODE,0,14,14,8
	.sym	PFXPROCESSMESSAGE,0,138,14,32,18
	.sym	FXPROCESSMESSAGE,0,10,14,112,18
	.sym	PFXPROCESS,0,138,14,32,17
	.sym	FXPROCESS,0,10,14,800,17
	.sym	PDESKTOP_CONTROL,0,138,14,32,16
	.sym	DESKTOP_CONTROL,0,10,14,392,16
	.sym	PCONSOLE_CONTROL,0,138,14,32,15
	.sym	CONSOLE_CONTROL,0,10,14,448,15
	.sym	FXProcessProc,0,641,14,32
	.sym	PFXCMDMESSAGE,0,138,14,32,14
	.sym	FXCMDMESSAGE,0,10,14,304,14
	.sym	PFXOSMESSAGE,0,138,14,32,13
	.sym	FXOSMESSAGE,0,10,14,304,13
	.sym	PINT_REGS,0,138,14,32,12
	.sym	INT_REGS,0,10,14,104,12
	.sym	TASK_STACK,0,10,14,32,11
	.sym	TASK,0,10,14,48,10
	.sym	PIRQDATA,0,138,14,32,9
	.sym	IRQDATA,0,10,14,48,9
	.sym	HMENU,0,129,14,32
	.sym	HWND,0,129,14,32
	.sym	MSGDATA,0,14,14,8
	.sym	MSGDEST,0,18,14,32
	.sym	MSGSRC,0,18,14,32
	.sym	MSGTYPE,0,16,14,16
	.sym	PROCESS_RESOURCE_LIST,0,138,14,32,3
	.sym	PROCESS_TLS_LIST,0,138,14,32,3
	.sym	SEMAPHORE_LIST,0,138,14,32,3
	.sym	FILE_BLOCK_LIST,0,138,14,32,3
	.sym	FILE_PATH_LIST,0,138,14,32,3
	.sym	PROCEDURE_LIST,0,138,14,32,3
	.sym	FILE_HANDLE,0,138,14,32,8
	.sym	FILE_BLOCK,0,10,14,552,8
	.sym	SEMAPHORE,0,10,14,16,7
	.sym	PPROCESS_SIGNAL,0,138,14,32,6
	.sym	PROCESS_SIGNAL,0,10,14,16,6
	.sym	KRESULT,0,18,14,32
	.sym	PKERNEL_ERROR,0,138,14,32,5
	.sym	KERNEL_ERROR,0,10,14,32,5
	.sym	PROCESS_STATUS,0,16,14,16
	.sym	FILE_PATH_NAME,0,142,14,32
	.sym	PROCESS_RESOURCE,0,129,14,32
	.sym	PROCESS_TLS,0,129,14,32
	.sym	PROCESS_CTX,0,129,14,32
	.sym	USERID,0,16,14,16
	.sym	PROCESS_ID,0,18,14,32
	.sym	PROCESS_BANK,0,14,14,8
	.sym	PFXQUEUE,0,138,14,32,4
	.sym	FXQUEUE,0,10,14,80,4
	.sym	PFXNODELIST,0,138,14,32,3
	.sym	FXNODELIST,0,10,14,96,3
	.sym	NodeListDeallocator,0,641,14,32
	.sym	PFXNODE,0,138,14,32,2
	.sym	FXNODE,0,10,14,384,2
	.sym	PBYTEBITS,0,138,14,32,1
	.sym	BYTEBITS,0,10,14,8,1
	.sym	HCOLOR,0,129,14,32
	.sym	HFONT,0,129,14,32
	.sym	HDC,0,129,14,32
	.sym	HPOINTER,0,129,14,32
	.sym	uint32_t,0,18,14,32
	.sym	uint8_t,0,14,14,8
	.sym	PFAR,0,142,14,32
	.sym	LPBOOL,0,142,14,32
	.sym	BOOL,0,14,14,8
	.sym	DWORD,0,18,14,32
	.sym	ULONG,0,18,14,32
	.sym	LPLONG,0,135,14,32
	.sym	LONG,0,7,14,32
	.sym	PUINT,0,144,14,32
	.sym	USHORT,0,16,14,16
	.sym	UINT,0,16,14,16
	.sym	INT,0,5,14,16
	.sym	WORD,0,5,14,16
	.sym	PBYTE,0,142,14,32
	.sym	BYTE,0,14,14,8
	.sym	UCHAR,0,14,14,8
	.sym	LPWCSTR,0,142,14,32
	.sym	LPCSTR,0,142,14,32
	.sym	LPSTR,0,142,14,32
	.sym	LPCHAR,0,142,14,32
	.sym	CHAR,0,14,14,8
	.sym	LPVOID,0,129,14,32
	.sym	VOID,0,1,14,32
	end

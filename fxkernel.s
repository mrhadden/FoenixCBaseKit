;:ts=8
R0	equ	1
R1	equ	5
R2	equ	9
R3	equ	13
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxkernel.c",0
;
;#include "fxkernel.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxkernel.h",0
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos.h",0
	.file	"G:\devtools\WDCTools\wdc\Tools\include\stdlib.h",0
	.file	"G:\devtools\WDCTools\wdc\Tools\include\stddef.h",0
	.line	88
	.file	"G:\devtools\WDCTools\wdc\Tools\include\stdlib.h",43
	.stag	fake1_,32,1
	.member	quot,0,5,8,16
	.member	rem,16,5,8,16
	.eos
	.stag	fake2_,64,2
	.member	quot,0,7,8,32
	.member	rem,32,7,8,32
	.eos
	.stag	int_sqrt,32,3
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
	.stag	_fx_bytebits,8,4
	.member	b7,0,14,17,1
	.member	b6,1,14,17,1
	.member	b5,2,14,17,1
	.member	b4,3,14,17,1
	.member	b3,4,14,17,1
	.member	b2,5,14,17,1
	.member	b1,6,14,17,1
	.member	b0,7,14,17,1
	.eos
	.stag	_fx_node,384,5
	.member	type,0,14,8,8
	.member	Reserved0,8,14,8,8
	.member	data,16,129,8,32
	.member	last,48,138,8,32,5
	.member	next,80,138,8,32,5
	.member	name,112,110,8,0,32
	.member	Reserved1,368,16,8,16
	.eos
	.stag	_fx_nodelist,96,6
	.member	listhead,0,138,8,32,5
	.member	listData,32,129,8,32
	.member	deallocator,64,641,8,32
	.eos
	.stag	_fx_queue,80,7
	.member	count,0,5,8,16
	.member	front,16,138,8,32,5
	.member	rear,48,138,8,32,5
	.eos
	.stag	fake8_,32,8
	.member	subsystem,0,14,8,8
	.member	level,8,14,8,8
	.member	error,16,16,8,16
	.eos
	.stag	_fx_process_signal,16,9
	.member	cbSize,0,16,8,16
	.eos
	.stag	_fx_semaphore,16,10
	.member	reserved,0,5,8,16
	.eos
	.stag	_fx_fileBlock,552,11
	.member	openCount,0,16,8,16
	.member	lockCount,16,16,8,16
	.member	dirty,32,14,8,8
	.member	fileBuffer,40,110,8,0,64
	.eos
	.stag	_fx_irq_data,48,12
	.member	line,0,5,8,16
	.member	keycode,16,142,8,32
	.eos
	.stag	_task,48,13
	.member	SPL,0,14,8,8
	.member	SPH,8,14,8,8
	.member	pstack,16,142,8,32
	.eos
	.stag	_task_stack,32,14
	.member	SS,0,142,8,32
	.eos
	.stag	int_regs,104,15
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
	.stag	_fx_eventMessage,304,16
	.member	src,0,18,8,32
	.member	dest,32,18,8,32
	.member	type,64,16,8,16
	.member	hwnd,80,129,8,32
	.member	pheap,112,129,8,32
	.member	msgTime,144,18,8,32
	.member	data,176,110,8,0,16
	.eos
	.stag	_fx_cmdMessage,304,17
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
	.stag	_fx_console_ctl,448,18
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
	.stag	_fx_desktop_ctl,392,19
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
	.member	wndProc,360,138,8,32,6
	.eos
	.stag	_fx_process,800,20
	.member	cbSize,0,5,8,16
	.member	procId,16,18,8,32
	.member	parentId,48,18,8,32
	.member	ctx,80,129,8,32
	.member	userId,112,16,8,16
	.member	status,128,16,8,16
	.member	foregroundActive,144,14,8,8
	.member	tls,152,1121,8,32,8
	.member	commandLine,408,142,8,32
	.member	semaphores,440,138,8,32,6
	.member	fileHandles,472,138,8,32,6
	.member	pathList,504,138,8,32,6
	.member	resources,536,138,8,32,6
	.member	timerAware,568,14,8,8
	.member	timerTicks,576,112,8,0,2
	.member	timerTickCount,608,112,8,0,2
	.member	kernelError,640,10,8,32,8
	.member	consoleCtl,672,138,8,32,18
	.member	desktopCtl,704,138,8,32,19
	.member	execProc,736,641,8,32
	.member	startupArgs,768,129,8,32
	.eos
	.stag	_fxProcessMessage,112,21
	.member	src,0,18,8,32
	.member	dest,32,18,8,32
	.member	type,64,16,8,16
	.member	processInfo,80,138,8,32,20
	.eos
	.stag	_fx_property,384,22
	.member	name,0,110,8,0,16
	.member	value,128,110,8,0,32
	.eos
	.utag	_24bitPointer,32,23
	.member	address,0,142,11,32
	.member	bytes,0,110,11,0,4
	.eos
	.stag	_PointStruct,32,24
	.member	x,0,5,8,16
	.member	y,16,5,8,16
	.eos
	.stag	_RectStruct,64,25
	.member	x,0,5,8,16
	.member	y,16,5,8,16
	.member	width,32,5,8,16
	.member	height,48,5,8,16
	.eos
	.stag	_k_WindowClass,256,26
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
	.stag	_ClickableRect,88,27
	.member	area,0,10,8,64,25
	.member	z,64,5,8,16
	.member	enabled,80,14,8,8
	.eos
	.stag	_NCClickableRect,88,28
	.member	area,0,10,8,64,25
	.member	msgType,64,16,8,16
	.member	enabled,80,14,8,8
	.eos
	.stag	_DragData,136,29
	.member	area,0,10,8,64,25
	.member	xoffset,64,5,8,16
	.member	yoffset,80,5,8,16
	.member	msgType,96,16,8,16
	.member	isDrag,112,14,8,8
	.member	canDrag,120,14,8,8
	.member	canDrop,128,14,8,8
	.eos
	.stag	_k_WindowStruct,2808,30
	.member	cbSize,0,16,8,16
	.member	style,16,18,8,32
	.member	win_id,48,5,8,16
	.member	win_x,64,5,8,16
	.member	win_y,80,5,8,16
	.member	win_width,96,5,8,16
	.member	win_height,112,5,8,16
	.member	wndRect,128,10,8,64,25
	.member	clientRect,192,10,8,64,25
	.member	nonclientGadgets,256,106,8,0,28,16
	.member	clickable,1664,129,8,32
	.member	win_title,1696,110,8,0,32
	.member	Reserved0,1952,16,8,16
	.member	win_class,1968,110,8,0,16
	.member	win_class_name,2096,110,8,0,32
	.member	nBitmapLayer,2352,16,8,16
	.member	procid,2368,18,8,32
	.member	pWndClass,2400,138,8,32,26
	.member	pParentWindow,2432,129,8,32
	.member	hMenu,2464,129,8,32
	.member	pChildWindows,2496,138,8,32,6
	.member	pChildHitList,2528,138,8,32,6
	.member	isVisible,2560,14,8,8
	.member	windowData,2568,129,8,32
	.member	clientData,2600,1121,8,32,6
	.member	isClosed,2792,14,8,8
	.member	isClosing,2800,14,8,8
	.eos
	.stag	_k_WindowStructEx,2704,31
	.member	cbSize,0,16,8,16
	.member	style,16,18,8,32
	.member	win_id,48,5,8,16
	.member	win_x,64,5,8,16
	.member	win_y,80,5,8,16
	.member	win_width,96,5,8,16
	.member	win_height,112,5,8,16
	.member	wndRect,128,10,8,64,25
	.member	clientRect,192,10,8,64,25
	.member	nonclientGadgets,256,106,8,0,28,16
	.member	clickable,1664,129,8,32
	.member	win_title,1696,110,8,0,32
	.member	Reserved0,1952,16,8,16
	.member	win_class,1968,110,8,0,16
	.member	nBitmapLayer,2096,16,8,16
	.member	procid,2112,18,8,32
	.member	pWndClass,2144,138,8,32,26
	.member	pParentWindow,2176,129,8,32
	.member	hMenu,2208,129,8,32
	.member	pChildWindows,2240,138,8,32,6
	.member	pChildHitList,2272,138,8,32,6
	.member	isVisible,2304,14,8,8
	.member	windowData,2312,129,8,32
	.member	clientData,2344,1121,8,32,4
	.member	isClosed,2472,14,8,8
	.member	hWnd,2480,129,8,32
	.member	localRect,2512,10,8,64,25
	.member	globalRect,2576,10,8,64,25
	.member	clientOffsetRect,2640,10,8,64,25
	.eos
	.stag	_FontMetric,32,32
	.member	width,0,5,8,16
	.member	height,16,5,8,16
	.eos
	.stag	_ctl_Textbox,112,33
	.member	win_id,0,5,8,16
	.member	win_x,16,5,8,16
	.member	win_y,32,5,8,16
	.member	win_width,48,5,8,16
	.member	win_height,64,5,8,16
	.member	content,80,1166,8,32
	.eos
	.stag	_MenuStruct,248,34
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
	.member	subMenus,152,138,8,32,6
	.member	pBackground,184,129,8,32
	.member	hWndOwner,216,129,8,32
	.eos
	.stag	fake35_,112,35
	.member	menuId,0,16,8,16
	.member	caption,16,142,8,32
	.member	rect,48,10,8,64,25
	.eos
	.stag	fake36_,3568,36
	.member	pParent,0,138,8,32,30
	.member	rect,32,10,8,64,25
	.member	captions,96,1134,8,32,24
	.member	chrome,864,110,8,0,24
	.member	ids,1056,112,8,0,24
	.member	clickable,1440,106,8,0,27,24
	.member	selected,3552,16,8,16
	.eos
	.stag	_fx_button_t,80,37
	.member	pCaption,0,142,8,32
	.member	data,32,129,8,32
	.member	captionPixelWidth,64,16,8,16
	.eos
	.stag	_fx_scrollbar_t,192,38
	.member	min,0,16,8,16
	.member	max,16,16,8,16
	.member	increment,32,16,8,16
	.member	stopsize,48,16,8,16
	.member	location,64,5,8,16
	.member	state,80,5,8,16
	.member	rectThumb,96,10,8,64,25
	.member	data,160,129,8,32
	.eos
	.stag	_fx_listbox_t,240,39
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
	.stag	_fx_textbox_t,144,40
	.member	pos,0,5,8,16
	.member	selected,16,16,8,16
	.member	offsetX,32,5,8,16
	.member	offsetY,48,5,8,16
	.member	isShifted,64,14,8,8
	.member	cursorState,72,14,8,8
	.member	fontSet,80,142,8,32
	.member	data,112,129,8,32
	.eos
	.stag	_fx_menuAnchor_t,144,41
	.member	pCaption,0,142,8,32
	.member	renderLayoutX,32,16,8,16
	.member	renderLayoutY,48,16,8,16
	.member	captionPixelWidth,64,16,8,16
	.member	data,80,129,8,32
	.member	droppedWindow,112,138,8,32,30
	.eos
	.stag	_SubMenuStruct,64,42
	.member	caption,0,142,8,32
	.member	action,32,641,8,32
	.eos
	.stag	_SubMenuListStruct,40,43
	.member	cMenus,0,14,8,8
	.member	psubmenus,8,9354,8,32,42
	.eos
	.stag	_fx_ComBuffer,2080,44
	.member	cbSize,0,16,8,16
	.member	cbBuffer,16,16,8,16
	.member	buffer,32,110,8,0,256
	.eos
	.line	708
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos.h",8
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxstringtable.h",0
	.line	89
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos.h",9
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxc256fmx.h",0
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxtypes.h",0
	.line	708
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxc256fmx.h",5
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fmx_vicky.h",0
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxtypes.h",0
	.line	708
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fmx_vicky.h",11
	.line	72
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxc256fmx.h",6
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
	.member	window,0,138,8,32,30
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
	.member	process,0,138,8,32,20
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
	.member	tokens,32,138,8,32,5
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxkernel.c",2
;#include <stdarg.h>
	.file	"G:\devtools\WDCTools\wdc\Tools\include\stdarg.h",0
	.line	51
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxkernel.c",3
;
;//void *heap_start=(void FAR *)0x030000,*heap_end=(void FAR *)(0x04FFFF);
;
;static ULONG FXOSVERSION = 0x010000;
	data
~~FXOSVERSION:
	dl	$10000
	ends
;static PFAR  FXOSVERSIONSTRING = "FX/OS Version 0.9.0 Beta";
	data
~~FXOSVERSIONSTRING:
	dl	L1+0
	ends
	data
L1:
	db	$46,$58,$2F,$4F,$53,$20,$56,$65,$72,$73,$69,$6F,$6E,$20,$30
	db	$2E,$39,$2E,$30,$20,$42,$65,$74,$61,$00
	ends
;
;
;static char k16buffer[16];
;
;static KERNELTRAPCALL *KERNEL_FUNCTION_TABLE;
;
;void k_delay_nop(void)
;{
	.line	15
	.line	16
	code
	xdef	~~k_delay_nop
	func
	.function	16
~~k_delay_nop:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L3
	tcs
	phd
	tcd
	.block	16
;	asm NOP;
	.line	17
	asmstart
	NOP
	asmend
;	asm NOP;
	.line	18
	asmstart
	NOP
	asmend
;	asm NOP;
	.line	19
	asmstart
	NOP
	asmend
;	asm NOP;
	.line	20
	asmstart
	NOP
	asmend
;	asm NOP;
	.line	21
	asmstart
	NOP
	asmend
;	asm NOP;
	.line	22
	asmstart
	NOP
	asmend
;	asm NOP;
	.line	23
	asmstart
	NOP
	asmend
;	asm NOP;
	.line	24
	asmstart
	NOP
	asmend
;	asm NOP;
	.line	25
	asmstart
	NOP
	asmend
;	asm NOP;
	.line	26
	asmstart
	NOP
	asmend
;}
	.line	27
L6:
	pld
	tsc
	clc
	adc	#L3
	tcs
	rtl
	.endblock	27
L3	equ	0
L4	equ	1
	ends
	efunc
	.endfunc	27,1,0
	.line	27
;
;void k_delay_1(void)
;{
	.line	29
	.line	30
	code
	xdef	~~k_delay_1
	func
	.function	30
~~k_delay_1:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L7
	tcs
	phd
	tcd
	.block	30
;	int c = 0;
;
;	for(c=0;c<10;c++)
c_1	set	0
	.sym	c,0,5,1,16
	stz	<L8+c_1
	.line	33
	stz	<L8+c_1
L10003:
;	{
	.line	34
;		k_delay_nop();
	.line	35
	jsl	~~k_delay_nop
;	}
	.line	36
L10001:
	inc	<L8+c_1
	sec
	lda	<L8+c_1
	sbc	#<$a
	bvs	L10
	eor	#$8000
L10:
	bmi	L11
	brl	L10003
L11:
L10002:
;}
	.line	37
L12:
	pld
	tsc
	clc
	adc	#L7
	tcs
	rtl
	.endblock	37
L7	equ	2
L8	equ	1
	ends
	efunc
	.endfunc	37,1,2
	.line	37
;
;void k_delay_1ms(void)
;{
	.line	39
	.line	40
	code
	xdef	~~k_delay_1ms
	func
	.function	40
~~k_delay_1ms:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L13
	tcs
	phd
	tcd
	.block	40
;	k_delay_1();
	.line	41
	jsl	~~k_delay_1
;}
	.line	42
L16:
	pld
	tsc
	clc
	adc	#L13
	tcs
	rtl
	.endblock	42
L13	equ	0
L14	equ	1
	ends
	efunc
	.endfunc	42,1,0
	.line	42
;
;void sleep(int msec)
;{
	.line	44
	.line	45
	code
	xdef	~~sleep
	func
	.function	45
~~sleep:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L17
	tcs
	phd
	tcd
msec_0	set	4
	.block	45
;	int c = 0;
;	for(c=0;c<msec;c++)
c_1	set	0
	.sym	c,0,5,1,16
	.sym	msec,4,5,6,16
	stz	<L18+c_1
	.line	47
	stz	<L18+c_1
	brl	L10007
L10006:
;	{
	.line	48
;		k_delay_1ms();
	.line	49
	jsl	~~k_delay_1ms
;	}
	.line	50
L10004:
	inc	<L18+c_1
L10007:
	sec
	lda	<L18+c_1
	sbc	<L17+msec_0
	bvs	L20
	eor	#$8000
L20:
	bmi	L21
	brl	L10006
L21:
L10005:
;}
	.line	51
L22:
	lda	<L17+2
	sta	<L17+2+2
	lda	<L17+1
	sta	<L17+1+2
	pld
	tsc
	clc
	adc	#L17+2
	tcs
	rtl
	.endblock	51
L17	equ	2
L18	equ	1
	ends
	efunc
	.endfunc	51,1,2
	.line	51
;
;/*
; *
; *
; *
; *
; */
;PFAR k_getFXOSVersionName(void)
;{
	.line	59
	.line	60
	code
	xdef	~~k_getFXOSVersionName
	func
	.function	60
~~k_getFXOSVersionName:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L23
	tcs
	phd
	tcd
	.block	60
;	return FXOSVERSIONSTRING;
	.line	61
	ldx	|~~FXOSVERSIONSTRING+2
	lda	|~~FXOSVERSIONSTRING
L26:
	tay
	pld
	tsc
	clc
	adc	#L23
	tcs
	tya
	rtl
;}
	.line	62
	.endblock	62
L23	equ	0
L24	equ	1
	ends
	efunc
	.endfunc	62,1,0
	.line	62
;
;PFXZERPOPAGE k_getZeroPage(void)
;{
	.line	64
	.line	65
	code
	xdef	~~k_getZeroPage
	func
	.function	65
~~k_getZeroPage:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L27
	tcs
	phd
	tcd
	.block	65
;	return (PFXZERPOPAGE)ZEROPAGE;
	.line	66
	lda	#$0
	tax
	lda	#$1500
L30:
	tay
	pld
	tsc
	clc
	adc	#L27
	tcs
	tya
	rtl
;}
	.line	67
	.endblock	67
L27	equ	0
L28	equ	1
	ends
	efunc
	.endfunc	67,1,0
	.line	67
;
;KERNELTRAPCALL FAR *k_getKernelTrapTable(VOID)
;{
	.line	69
	.line	70
	code
	xdef	~~k_getKernelTrapTable
	func
	.function	70
~~k_getKernelTrapTable:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L31
	tcs
	phd
	tcd
	.block	70
;	return KERNEL_FUNCTION_TABLE;
	.line	71
	ldx	|~~KERNEL_FUNCTION_TABLE+2
	lda	|~~KERNEL_FUNCTION_TABLE
L34:
	tay
	pld
	tsc
	clc
	adc	#L31
	tcs
	tya
	rtl
;}
	.line	72
	.endblock	72
L31	equ	0
L32	equ	1
	ends
	efunc
	.endfunc	72,1,0
	.line	72
;
;VOID k_initializeZeroPage(VOID)
;{
	.line	74
	.line	75
	code
	xdef	~~k_initializeZeroPage
	func
	.function	75
~~k_initializeZeroPage:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L35
	tcs
	phd
	tcd
	.block	75
;	PFXZERPOPAGE zp =  k_getZeroPage();
;
;	zp->VersionMajor    = 0;
zp_1	set	0
	.sym	zp,0,138,1,32,59
	jsl	~~k_getZeroPage
	sta	<L36+zp_1
	stx	<L36+zp_1+2
	.line	78
	lda	#$0
	ldy	#$e
	sta	[<L36+zp_1],Y
;	zp->VersionMinor    = 5;
	.line	79
	lda	#$5
	ldy	#$10
	sta	[<L36+zp_1],Y
;	zp->VersionRelease = -1;
	.line	80
	lda	#$ffff
	ldy	#$12
	sta	[<L36+zp_1],Y
;
;	zp->topMemory 	 = MEM_USER_CEILING;
	.line	82
	lda	#$0
	ldy	#$14
	sta	[<L36+zp_1],Y
	lda	#$af
	ldy	#$16
	sta	[<L36+zp_1],Y
;	zp->bottomMemory = MEM_USER_FLOOR;
	.line	83
	lda	#$0
	ldy	#$18
	sta	[<L36+zp_1],Y
	lda	#$19
	ldy	#$1a
	sta	[<L36+zp_1],Y
;}
	.line	84
L38:
	pld
	tsc
	clc
	adc	#L35
	tcs
	rtl
	.endblock	84
L35	equ	4
L36	equ	1
	ends
	efunc
	.endfunc	84,1,4
	.line	84
;
;/*
; *
; *
; *
; *
; */
;int k_report_configuration(int offset,int line)
;{
	.line	92
	.line	93
	code
	xdef	~~k_report_configuration
	func
	.function	93
~~k_report_configuration:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L39
	tcs
	phd
	tcd
offset_0	set	4
line_0	set	6
	.block	93
;	char krcBuffer[16];
;	int pos = offset;
;
;
;	k_put_string(pos,line,CONST_COMPUTER_NAME,15,0);
krcBuffer_1	set	0
pos_1	set	16
	.sym	krcBuffer,0,110,1,0,16
	.sym	pos,16,5,1,16
	.sym	offset,4,5,6,16
	.sym	line,6,5,6,16
	lda	<L39+offset_0
	sta	<L40+pos_1
	.line	98
	pea	#<$0
	pea	#<$f
	pea	#^L2
	pea	#<L2
	pei	<L39+line_0
	pei	<L40+pos_1
	jsl	~~k_put_string
;	k_put_color (pos,line,CONST_COMPUTER_NAME_COLOR);
	.line	99
	pea	#^L2+44
	pea	#<L2+44
	pei	<L39+line_0
	pei	<L40+pos_1
	jsl	~~k_put_color
;	line++;
	.line	100
	inc	<L39+line_0
;
;	k_put_string(pos,line,CONST_COMPUTER_ACK_1,15,0);
	.line	102
	pea	#<$0
	pea	#<$f
	pea	#^L2+57
	pea	#<L2+57
	pei	<L39+line_0
	pei	<L40+pos_1
	jsl	~~k_put_string
;	k_put_color (pos,line,CONST_COMPUTER_ACK_1_COLOR);
	.line	103
	pea	#^L2+118
	pea	#<L2+118
	pei	<L39+line_0
	pei	<L40+pos_1
	jsl	~~k_put_color
;	line++;
	.line	104
	inc	<L39+line_0
;
;	pos = k_put_string(pos,line,CONST_COMPUTER_ACK_2,15,0);
	.line	106
	pea	#<$0
	pea	#<$f
	pea	#^L2+131
	pea	#<L2+131
	pei	<L39+line_0
	pei	<L40+pos_1
	jsl	~~k_put_string
	sta	<L40+pos_1
;	k_put_string(pos,line,k_getFXOSVersionName(),15,0);
	.line	107
	pea	#<$0
	pea	#<$f
	jsl	~~k_getFXOSVersionName
	sta	<R0
	stx	<R0+2
	phx
	pha
	pei	<L39+line_0
	pei	<L40+pos_1
	jsl	~~k_put_string
;
;	pos = offset;
	.line	109
	lda	<L39+offset_0
	sta	<L40+pos_1
;	k_put_color (pos,line,CONST_COMPUTER_ACK_2_COLOR);
	.line	110
	pea	#^L2+145
	pea	#<L2+145
	pei	<L39+line_0
	pei	<L40+pos_1
	jsl	~~k_put_color
;
;
;	line++;
	.line	113
	inc	<L39+line_0
;	line++;
	.line	114
	inc	<L39+line_0
;
;	pos = offset;
	.line	116
	lda	<L39+offset_0
	sta	<L40+pos_1
;	pos = k_put_string(pos,line,CONST_BOARD_REVISION,15,0);
	.line	117
	pea	#<$0
	pea	#<$f
	pea	#^L2+158
	pea	#<L2+158
	pei	<L39+line_0
	pei	<L40+pos_1
	jsl	~~k_put_string
	sta	<L40+pos_1
;	k_get_c256_major_version(krcBuffer);
	.line	118
	pea	#0
	clc
	tdc
	adc	#<L40+krcBuffer_1
	pha
	jsl	~~k_get_c256_major_version
;	pos = k_put_string(pos,line,krcBuffer,15,0);
	.line	119
	pea	#<$0
	pea	#<$f
	pea	#0
	clc
	tdc
	adc	#<L40+krcBuffer_1
	pha
	pei	<L39+line_0
	pei	<L40+pos_1
	jsl	~~k_put_string
	sta	<L40+pos_1
;	k_get_c256_minor_version(krcBuffer);
	.line	120
	pea	#0
	clc
	tdc
	adc	#<L40+krcBuffer_1
	pha
	jsl	~~k_get_c256_minor_version
;	pos = k_put_string(pos,line,krcBuffer,15,0);
	.line	121
	pea	#<$0
	pea	#<$f
	pea	#0
	clc
	tdc
	adc	#<L40+krcBuffer_1
	pha
	pei	<L39+line_0
	pei	<L40+pos_1
	jsl	~~k_put_string
	sta	<L40+pos_1
;
;	pos  = offset;
	.line	123
	lda	<L39+offset_0
	sta	<L40+pos_1
;	line++;
	.line	124
	inc	<L39+line_0
;
;	pos = k_put_string(pos,line,"FPGA Date :",15,0);
	.line	126
	pea	#<$0
	pea	#<$f
	pea	#^L2+179
	pea	#<L2+179
	pei	<L39+line_0
	pei	<L40+pos_1
	jsl	~~k_put_string
	sta	<L40+pos_1
;	k_get_fpga_date_month(krcBuffer);
	.line	127
	pea	#0
	clc
	tdc
	adc	#<L40+krcBuffer_1
	pha
	jsl	~~k_get_fpga_date_month
;	pos = k_put_string(pos,line,k_strip_padding(krcBuffer),15,0);
	.line	128
	pea	#<$0
	pea	#<$f
	pea	#0
	clc
	tdc
	adc	#<L40+krcBuffer_1
	pha
	jsl	~~k_strip_padding
	sta	<R0
	stx	<R0+2
	phx
	pha
	pei	<L39+line_0
	pei	<L40+pos_1
	jsl	~~k_put_string
	sta	<L40+pos_1
;	pos = k_put_string(pos,line,"/",15,0);
	.line	129
	pea	#<$0
	pea	#<$f
	pea	#^L2+191
	pea	#<L2+191
	pei	<L39+line_0
	pei	<L40+pos_1
	jsl	~~k_put_string
	sta	<L40+pos_1
;	k_get_fpga_date_day(krcBuffer);
	.line	130
	pea	#0
	clc
	tdc
	adc	#<L40+krcBuffer_1
	pha
	jsl	~~k_get_fpga_date_day
;	pos = k_put_string(pos,line,k_strip_padding(krcBuffer),15,0);
	.line	131
	pea	#<$0
	pea	#<$f
	pea	#0
	clc
	tdc
	adc	#<L40+krcBuffer_1
	pha
	jsl	~~k_strip_padding
	sta	<R0
	stx	<R0+2
	phx
	pha
	pei	<L39+line_0
	pei	<L40+pos_1
	jsl	~~k_put_string
	sta	<L40+pos_1
;	pos = k_put_string(pos,line,"/",15,0);
	.line	132
	pea	#<$0
	pea	#<$f
	pea	#^L2+193
	pea	#<L2+193
	pei	<L39+line_0
	pei	<L40+pos_1
	jsl	~~k_put_string
	sta	<L40+pos_1
;	k_get_fpga_date_year(krcBuffer);
	.line	133
	pea	#0
	clc
	tdc
	adc	#<L40+krcBuffer_1
	pha
	jsl	~~k_get_fpga_date_year
;	pos = k_put_string(pos,line,k_strip_padding(krcBuffer),15,0);
	.line	134
	pea	#<$0
	pea	#<$f
	pea	#0
	clc
	tdc
	adc	#<L40+krcBuffer_1
	pha
	jsl	~~k_strip_padding
	sta	<R0
	stx	<R0+2
	phx
	pha
	pei	<L39+line_0
	pei	<L40+pos_1
	jsl	~~k_put_string
	sta	<L40+pos_1
;
;
;	return line;
	.line	137
	lda	<L39+line_0
L42:
	tay
	lda	<L39+2
	sta	<L39+2+4
	lda	<L39+1
	sta	<L39+1+4
	pld
	tsc
	clc
	adc	#L39+4
	tcs
	tya
	rtl
;}
	.line	138
	.endblock	138
L39	equ	22
L40	equ	5
	ends
	efunc
	.endfunc	138,5,22
	.line	138
	data
L2:
	db	$20,$20,$0B,$0C,$0B,$0C,$0B,$0C,$0B,$0C,$0B,$0C,$20,$43,$32
	db	$35,$36,$20,$46,$6F,$65,$6E,$69,$78,$20,$44,$65,$76,$65,$6C
	db	$6F,$70,$6D,$65,$6E,$74,$20,$53,$79,$73,$74,$65,$6D,$00,$1D
	db	$1D,$1D,$1D,$FFFFFF8D,$FFFFFF8D,$4D,$4D,$2D,$2D,$5D,$5D,$00,$20,$0B,$0C
	db	$0B,$0C,$0B,$0C,$0B,$0C,$0B,$0C,$20,$20,$41,$20,$68,$61,$72
	db	$64,$77,$61,$72,$65,$20,$70,$6C,$61,$74,$66,$6F,$72,$6D,$20
	db	$63,$72,$61,$66,$74,$65,$64,$20,$62,$79,$3A,$20,$53,$74,$65
	db	$66,$61,$6E,$79,$20,$41,$6C,$6C,$61,$69,$72,$65,$00,$1D,$1D
	db	$1D,$FFFFFF8D,$FFFFFF8D,$4D,$4D,$2D,$2D,$5D,$5D,$5D,$00,$0B,$0C,$0B,$0C
	db	$0B,$0C,$0B,$0C,$0B,$0C,$20,$20,$20,$00,$1D,$1D,$FFFFFF8D,$FFFFFF8D,$4D
	db	$4D,$2D,$2D,$5D,$5D,$5D,$5D,$00,$43,$32,$35,$36,$20,$42,$6F
	db	$61,$72,$64,$20,$52,$65,$76,$69,$73,$69,$6F,$6E,$3A,$00,$46
	db	$50,$47,$41,$20,$44,$61,$74,$65,$20,$3A,$00,$2F,$00,$2F,$00
	ends
;/*
; *
; *
; *
; *
; */
;void k_delay(int millisecs)
;{
	.line	145
	.line	146
	code
	xdef	~~k_delay
	func
	.function	146
~~k_delay:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L44
	tcs
	phd
	tcd
millisecs_0	set	4
	.block	146
;	int y = 0;
;	int i = 0;
;
;	for(y=0;y<millisecs;y++)
y_1	set	0
i_1	set	2
	.sym	y,0,5,1,16
	.sym	i,2,5,1,16
	.sym	millisecs,4,5,6,16
	stz	<L45+y_1
	stz	<L45+i_1
	.line	150
	stz	<L45+y_1
	brl	L10011
L10010:
;	{
	.line	151
;		for(i=0;i<0xFF;i++)
	.line	152
	stz	<L45+i_1
L10014:
;		{
	.line	153
;			asm NOP;
	.line	154
	asmstart
	NOP
	asmend
;		}
	.line	155
L10012:
	inc	<L45+i_1
	sec
	lda	<L45+i_1
	sbc	#<$ff
	bvs	L47
	eor	#$8000
L47:
	bmi	L48
	brl	L10014
L48:
L10013:
;	}
	.line	156
L10008:
	inc	<L45+y_1
L10011:
	sec
	lda	<L45+y_1
	sbc	<L44+millisecs_0
	bvs	L49
	eor	#$8000
L49:
	bmi	L50
	brl	L10010
L50:
L10009:
;}
	.line	157
L51:
	lda	<L44+2
	sta	<L44+2+2
	lda	<L44+1
	sta	<L44+1+2
	pld
	tsc
	clc
	adc	#L44+2
	tcs
	rtl
	.endblock	157
L44	equ	4
L45	equ	1
	ends
	efunc
	.endfunc	157,1,4
	.line	157
;/*
; *
; *
; *
; *
; */
;void k_debug_string(char FAR* debugString)
;{
	.line	164
	.line	165
	code
	xdef	~~k_debug_string
	func
	.function	165
~~k_debug_string:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L52
	tcs
	phd
	tcd
debugString_0	set	4
	.block	165
;#ifdef USE_FX256_FMX
;	k_debug_string_com1(debugString);
	.sym	debugString,4,142,6,32
	.line	167
	pei	<L52+debugString_0+2
	pei	<L52+debugString_0
	jsl	~~k_debug_string_com1
;#else
;	//k_debug_string_com2(debugString);
;	k_debug_string_com1(debugString);
;#endif
;}
	.line	172
L55:
	lda	<L52+2
	sta	<L52+2+4
	lda	<L52+1
	sta	<L52+1+4
	pld
	tsc
	clc
	adc	#L52+4
	tcs
	rtl
	.endblock	172
L52	equ	0
L53	equ	1
	ends
	efunc
	.endfunc	172,1,0
	.line	172
;
;VOID k_DebugOutString(VOID)
;{
	.line	174
	.line	175
	code
	xdef	~~k_DebugOutString
	func
	.function	175
~~k_DebugOutString:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L56
	tcs
	phd
	tcd
	.block	175
;	//PFXZERPOPAGE zp = k_getZeroPage();
;
;	//k_debug_pointer("k_DebugOutString1:",zp->kernelFunctionCallParameter);
;
;
;	//k_debug_string(zp->kernelFunctionCallParameter);
;	k_debug_string("k_DebugOutString!!!!\r\n");
	.line	182
	pea	#^L43
	pea	#<L43
	jsl	~~k_debug_string
;
;}
	.line	184
L59:
	pld
	tsc
	clc
	adc	#L56
	tcs
	rtl
	.endblock	184
L56	equ	0
L57	equ	1
	ends
	efunc
	.endfunc	184,1,0
	.line	184
	data
L43:
	db	$6B,$5F,$44,$65,$62,$75,$67,$4F,$75,$74,$53,$74,$72,$69,$6E
	db	$67,$21,$21,$21,$21,$0D,$0A,$00
	ends
;
;void k_debug_nstring(char FAR* debugString,int nsize)
;{
	.line	186
	.line	187
	code
	xdef	~~k_debug_nstring
	func
	.function	187
~~k_debug_nstring:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L61
	tcs
	phd
	tcd
debugString_0	set	4
nsize_0	set	8
	.block	187
;	//k_debug_nstring_com2(debugString,nsize);
;	//k_debug_nstring_com1(debugString,nsize);
;#ifdef USE_FX256_FMX
;	k_debug_nstring_com1(debugString,nsize);
	.sym	debugString,4,142,6,32
	.sym	nsize,8,5,6,16
	.line	191
	pei	<L61+nsize_0
	pei	<L61+debugString_0+2
	pei	<L61+debugString_0
	jsl	~~k_debug_nstring_com1
;#else
;	//k_debug_nstring_com2(debugString,nsize);
;	k_debug_nstring_com1(debugString,nsize);
;#endif
;}
	.line	196
L64:
	lda	<L61+2
	sta	<L61+2+6
	lda	<L61+1
	sta	<L61+1+6
	pld
	tsc
	clc
	adc	#L61+6
	tcs
	rtl
	.endblock	196
L61	equ	0
L62	equ	1
	ends
	efunc
	.endfunc	196,1,0
	.line	196
;
;/*
; *
; *
; *
; *
; */
;void k_debug_string_com1(char FAR* debugString)
;{
	.line	204
	.line	205
	code
	xdef	~~k_debug_string_com1
	func
	.function	205
~~k_debug_string_com1:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L65
	tcs
	phd
	tcd
debugString_0	set	4
	.block	205
;	char FAR* ptr = debugString;
;	while(*ptr)
ptr_1	set	0
	.sym	ptr,0,142,1,32
	.sym	debugString,4,142,6,32
	lda	<L65+debugString_0
	sta	<L66+ptr_1
	lda	<L65+debugString_0+2
	sta	<L66+ptr_1+2
	.line	207
L10015:
	lda	[<L66+ptr_1]
	and	#$ff
	bne	L68
	brl	L10016
L68:
;	{
	.line	208
;		while(!(UART1_BASE[5] & 0x20))
	.line	209
L10017:
	sep	#$20
	longa	off
	lda	>11473917
	and	#<$20
	rep	#$20
	longa	on
	beq	L69
	brl	L10018
L69:
;		{
	.line	210
;		}
	.line	211
	brl	L10017
L10018:
;		UART1_BASE[0] = *ptr;
	.line	212
	sep	#$20
	longa	off
	lda	[<L66+ptr_1]
	sta	>11473912
	rep	#$20
	longa	on
;		ptr++;
	.line	213
	inc	<L66+ptr_1
	bne	L70
	inc	<L66+ptr_1+2
L70:
;	}
	.line	214
	brl	L10015
L10016:
;	return;
	.line	215
L71:
	lda	<L65+2
	sta	<L65+2+4
	lda	<L65+1
	sta	<L65+1+4
	pld
	tsc
	clc
	adc	#L65+4
	tcs
	rtl
;}
	.line	216
	.endblock	216
L65	equ	4
L66	equ	1
	ends
	efunc
	.endfunc	216,1,4
	.line	216
;/*
; *
; *
; *
; *
; */
;
;void k_debug_string_com2(char FAR* debugString)
;{
	.line	224
	.line	225
	code
	xdef	~~k_debug_string_com2
	func
	.function	225
~~k_debug_string_com2:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L72
	tcs
	phd
	tcd
debugString_0	set	4
	.block	225
;	char FAR* ptr = debugString;
;	while(*ptr)
ptr_1	set	0
	.sym	ptr,0,142,1,32
	.sym	debugString,4,142,6,32
	lda	<L72+debugString_0
	sta	<L73+ptr_1
	lda	<L72+debugString_0+2
	sta	<L73+ptr_1+2
	.line	227
L10019:
	lda	[<L73+ptr_1]
	and	#$ff
	bne	L75
	brl	L10020
L75:
;	{
	.line	228
;		while(!(UART2_BASE[5] & 0x20))
	.line	229
L10021:
	sep	#$20
	longa	off
	lda	>11473661
	and	#<$20
	rep	#$20
	longa	on
	beq	L76
	brl	L10022
L76:
;		{
	.line	230
;		}
	.line	231
	brl	L10021
L10022:
;		UART2_BASE[0] = *ptr;
	.line	232
	sep	#$20
	longa	off
	lda	[<L73+ptr_1]
	sta	>11473656
	rep	#$20
	longa	on
;		ptr++;
	.line	233
	inc	<L73+ptr_1
	bne	L77
	inc	<L73+ptr_1+2
L77:
;	}
	.line	234
	brl	L10019
L10020:
;	return;
	.line	235
L78:
	lda	<L72+2
	sta	<L72+2+4
	lda	<L72+1
	sta	<L72+1+4
	pld
	tsc
	clc
	adc	#L72+4
	tcs
	rtl
;}
	.line	236
	.endblock	236
L72	equ	4
L73	equ	1
	ends
	efunc
	.endfunc	236,1,4
	.line	236
;
;void k_debug_nstring_com1(char FAR* debugString,int nsize)
;{
	.line	238
	.line	239
	code
	xdef	~~k_debug_nstring_com1
	func
	.function	239
~~k_debug_nstring_com1:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L79
	tcs
	phd
	tcd
debugString_0	set	4
nsize_0	set	8
	.block	239
;	int i = 0;
;	char FAR* ptr = debugString;
;	for(i=0;i<nsize;i++)
i_1	set	0
ptr_1	set	2
	.sym	i,0,5,1,16
	.sym	ptr,2,142,1,32
	.sym	debugString,4,142,6,32
	.sym	nsize,8,5,6,16
	stz	<L80+i_1
	lda	<L79+debugString_0
	sta	<L80+ptr_1
	lda	<L79+debugString_0+2
	sta	<L80+ptr_1+2
	.line	242
	stz	<L80+i_1
	brl	L10026
L10025:
;	{
	.line	243
;		while(!(UART1_BASE[5] & 0x20))
	.line	244
L10027:
	sep	#$20
	longa	off
	lda	>11473917
	and	#<$20
	rep	#$20
	longa	on
	beq	L82
	brl	L10028
L82:
;		{
	.line	245
;		}
	.line	246
	brl	L10027
L10028:
;		//UART1_BASE[0] = *ptr;
;		//ptr++;
;		UART1_BASE[0] = debugString[i];
	.line	249
	sep	#$20
	longa	off
	ldy	<L80+i_1
	lda	[<L79+debugString_0],Y
	sta	>11473912
	rep	#$20
	longa	on
;	}
	.line	250
L10023:
	inc	<L80+i_1
L10026:
	sec
	lda	<L80+i_1
	sbc	<L79+nsize_0
	bvs	L83
	eor	#$8000
L83:
	bmi	L84
	brl	L10025
L84:
L10024:
;	return;
	.line	251
L85:
	lda	<L79+2
	sta	<L79+2+6
	lda	<L79+1
	sta	<L79+1+6
	pld
	tsc
	clc
	adc	#L79+6
	tcs
	rtl
;}
	.line	252
	.endblock	252
L79	equ	6
L80	equ	1
	ends
	efunc
	.endfunc	252,1,6
	.line	252
;
;void k_debug_nstring_com2(char FAR* debugString,int nsize)
;{
	.line	254
	.line	255
	code
	xdef	~~k_debug_nstring_com2
	func
	.function	255
~~k_debug_nstring_com2:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L86
	tcs
	phd
	tcd
debugString_0	set	4
nsize_0	set	8
	.block	255
;	int i = 0;
;	char FAR* ptr = debugString;
;	for(i=0;i<nsize;i++)
i_1	set	0
ptr_1	set	2
	.sym	i,0,5,1,16
	.sym	ptr,2,142,1,32
	.sym	debugString,4,142,6,32
	.sym	nsize,8,5,6,16
	stz	<L87+i_1
	lda	<L86+debugString_0
	sta	<L87+ptr_1
	lda	<L86+debugString_0+2
	sta	<L87+ptr_1+2
	.line	258
	stz	<L87+i_1
	brl	L10032
L10031:
;	{
	.line	259
;		while(!(UART2_BASE[5] & 0x20))
	.line	260
L10033:
	sep	#$20
	longa	off
	lda	>11473661
	and	#<$20
	rep	#$20
	longa	on
	beq	L89
	brl	L10034
L89:
;		{
	.line	261
;		}
	.line	262
	brl	L10033
L10034:
;		//UART2_BASE[0] = *ptr;
;		//ptr++;
;		UART2_BASE[0] = debugString[i];
	.line	265
	sep	#$20
	longa	off
	ldy	<L87+i_1
	lda	[<L86+debugString_0],Y
	sta	>11473656
	rep	#$20
	longa	on
;	}
	.line	266
L10029:
	inc	<L87+i_1
L10032:
	sec
	lda	<L87+i_1
	sbc	<L86+nsize_0
	bvs	L90
	eor	#$8000
L90:
	bmi	L91
	brl	L10031
L91:
L10030:
;	return;
	.line	267
L92:
	lda	<L86+2
	sta	<L86+2+6
	lda	<L86+1
	sta	<L86+1+6
	pld
	tsc
	clc
	adc	#L86+6
	tcs
	rtl
;}
	.line	268
	.endblock	268
L86	equ	6
L87	equ	1
	ends
	efunc
	.endfunc	268,1,6
	.line	268
;/*
; *
; *
; *
; *
; */
;
;void k_debug_pointer(char FAR* debugString, void FAR* p)
;{
	.line	276
	.line	277
	code
	xdef	~~k_debug_pointer
	func
	.function	277
~~k_debug_pointer:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L93
	tcs
	phd
	tcd
debugString_0	set	4
p_0	set	8
	.block	277
;	k_debug_string(debugString);
	.sym	debugString,4,142,6,32
	.sym	p,8,129,6,32
	.line	278
	pei	<L93+debugString_0+2
	pei	<L93+debugString_0
	jsl	~~k_debug_string
;
;	k_debug_string(k_bytetohex(H24BYTE(p),k16buffer));
	.line	280
	lda	#<~~k16buffer
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pei	<L93+p_0+2
	pei	<L93+p_0
	lda	#$10
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R1
	stx	<R1+2
	lda	<R1
	and	#<$ff
	sta	<R2
	stz	<R2+2
	pei	<R2
	jsl	~~k_bytetohex
	sta	<R1
	stx	<R1+2
	phx
	pha
	jsl	~~k_debug_string
;	k_debug_string(k_bytetohex(M24BYTE(p),k16buffer));
	.line	281
	lda	#<~~k16buffer
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pei	<L93+p_0+2
	pei	<L93+p_0
	lda	#$8
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R1
	stx	<R1+2
	lda	<R1
	and	#<$ff
	sta	<R2
	stz	<R2+2
	pei	<R2
	jsl	~~k_bytetohex
	sta	<R1
	stx	<R1+2
	phx
	pha
	jsl	~~k_debug_string
;	k_debug_string(k_bytetohex(L24BYTE(p),k16buffer));
	.line	282
	lda	#<~~k16buffer
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pei	<L93+p_0
	jsl	~~k_bytetohex
	sta	<R1
	stx	<R1+2
	phx
	pha
	jsl	~~k_debug_string
;
;	k_debug_string("\r\n");
	.line	284
	pea	#^L60
	pea	#<L60
	jsl	~~k_debug_string
;
;	return;
	.line	286
L96:
	lda	<L93+2
	sta	<L93+2+8
	lda	<L93+1
	sta	<L93+1+8
	pld
	tsc
	clc
	adc	#L93+8
	tcs
	rtl
;}
	.line	287
	.endblock	287
L93	equ	12
L94	equ	13
	ends
	efunc
	.endfunc	287,13,12
	.line	287
	data
L60:
	db	$0D,$0A,$00
	ends
;/*
; *
; *
; *
; *
; */
;void k_debug_char(char FAR* debugString, UCHAR n)
;{
	.line	294
	.line	295
	code
	xdef	~~k_debug_char
	func
	.function	295
~~k_debug_char:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L98
	tcs
	phd
	tcd
debugString_0	set	4
n_0	set	8
	.block	295
;	char b[2];
;
;	b[0] = n;
b_1	set	0
	.sym	b,0,110,1,0,2
	.sym	debugString,4,142,6,32
	.sym	n,8,14,6,8
	.line	298
	sep	#$20
	longa	off
	lda	<L98+n_0
	sta	<L99+b_1
	rep	#$20
	longa	on
;	b[1] = 0;
	.line	299
	sep	#$20
	longa	off
	stz	<L99+b_1+1
	rep	#$20
	longa	on
;
;	k_debug_string(debugString);
	.line	301
	pei	<L98+debugString_0+2
	pei	<L98+debugString_0
	jsl	~~k_debug_string
;
;	k_debug_string(b);
	.line	303
	pea	#0
	clc
	tdc
	adc	#<L99+b_1
	pha
	jsl	~~k_debug_string
;
;	k_debug_string("\r\n");
	.line	305
	pea	#^L97
	pea	#<L97
	jsl	~~k_debug_string
;
;	return;
	.line	307
L101:
	lda	<L98+2
	sta	<L98+2+6
	lda	<L98+1
	sta	<L98+1+6
	pld
	tsc
	clc
	adc	#L98+6
	tcs
	rtl
;}
	.line	308
	.endblock	308
L98	equ	2
L99	equ	1
	ends
	efunc
	.endfunc	308,1,2
	.line	308
	data
L97:
	db	$0D,$0A,$00
	ends
;/*
; *
; *
; *
; *
; */
;void k_debug_integer(char FAR* debugString, UINT n)
;{
	.line	315
	.line	316
	code
	xdef	~~k_debug_integer
	func
	.function	316
~~k_debug_integer:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L103
	tcs
	phd
	tcd
debugString_0	set	4
n_0	set	8
	.block	316
;	k_debug_string(debugString);
	.sym	debugString,4,142,6,32
	.sym	n,8,16,6,16
	.line	317
	pei	<L103+debugString_0+2
	pei	<L103+debugString_0
	jsl	~~k_debug_string
;
;	k_debug_string(k_inttodec(n,k16buffer));
	.line	319
	lda	#<~~k16buffer
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pei	<L103+n_0
	jsl	~~k_inttodec
	sta	<R1
	stx	<R1+2
	phx
	pha
	jsl	~~k_debug_string
;
;	k_debug_string("\r\n");
	.line	321
	pea	#^L102
	pea	#<L102
	jsl	~~k_debug_string
;
;	return;
	.line	323
L106:
	lda	<L103+2
	sta	<L103+2+6
	lda	<L103+1
	sta	<L103+1+6
	pld
	tsc
	clc
	adc	#L103+6
	tcs
	rtl
;}
	.line	324
	.endblock	324
L103	equ	8
L104	equ	9
	ends
	efunc
	.endfunc	324,9,8
	.line	324
	data
L102:
	db	$0D,$0A,$00
	ends
;
;void k_debug_integers(char FAR* format, int nHowMany, ...)
;{
	.line	326
	.line	327
	code
	xdef	~~k_debug_integers
	func
	.function	327
~~k_debug_integers:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L108
	tcs
	phd
	tcd
format_0	set	6
nHowMany_0	set	10
	.block	327
;	int i = 0;
;	int nSum = 0;
;
;	va_list intArgumentPointer;
;	va_start(intArgumentPointer, nHowMany);
i_1	set	0
nSum_1	set	2
intArgumentPointer_1	set	4
	.sym	i,0,5,1,16
	.sym	nSum,2,5,1,16
	.sym	intArgumentPointer,4,142,1,32
	.sym	format,6,142,6,32
	.sym	nHowMany,10,5,6,16
	stz	<L109+i_1
	stz	<L109+nSum_1
	.line	332
	clc
	tdc
	adc	#<L108+nHowMany_0+2
	sta	<L109+intArgumentPointer_1
	lda	#$0
	sta	<L109+intArgumentPointer_1+2
;
;
;	for (i = 0; i < nHowMany; i++)
	.line	335
	stz	<L109+i_1
	brl	L10038
L10037:
;		nSum += va_arg(intArgumentPointer, int);
	.line	336
	clc
	lda	#$2
	adc	<L109+intArgumentPointer_1
	sta	<L109+intArgumentPointer_1
	bcc	L111
	inc	<L109+intArgumentPointer_1+2
L111:
	clc
	lda	#$fffe
	adc	<L109+intArgumentPointer_1
	sta	<R0
	lda	#$ffff
	adc	<L109+intArgumentPointer_1+2
	sta	<R0+2
	clc
	lda	[<R0]
	adc	<L109+nSum_1
	sta	<L109+nSum_1
L10035:
	inc	<L109+i_1
L10038:
	sec
	lda	<L109+i_1
	sbc	<L108+nHowMany_0
	bvs	L112
	eor	#$8000
L112:
	bmi	L113
	brl	L10037
L113:
L10036:
;
;	va_end(intArgumentPointer);
	.line	338
;
;	k_debug_integer(format, nSum);
	.line	340
	pei	<L109+nSum_1
	pei	<L108+format_0+2
	pei	<L108+format_0
	jsl	~~k_debug_integer
;}
	.line	341
L114:
	phx
	ldx	<L108+4
	lda	<L108+2
	sta	<L108+2,X
	lda	<L108+1
	sta	<L108+1,X
	txa
	plx
	pld
	pha
	tsc
	clc
	adc	#L108+2
	adc	<1,s
	tcs
	rtl
	.endblock	341
L108	equ	12
L109	equ	5
	ends
	efunc
	.endfunc	341,5,12
	.line	341
;
;/*
; *
; *
; *
; *
; */
;void k_debug_integer_array(char FAR* debugString,UINT FAR *n,UINT size)
;{
	.line	349
	.line	350
	code
	xdef	~~k_debug_integer_array
	func
	.function	350
~~k_debug_integer_array:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L115
	tcs
	phd
	tcd
debugString_0	set	4
n_0	set	8
size_0	set	12
	.block	350
;	int i = 0;
;	k_debug_string(debugString);
i_1	set	0
	.sym	i,0,5,1,16
	.sym	debugString,4,142,6,32
	.sym	n,8,144,6,32
	.sym	size,12,16,6,16
	stz	<L116+i_1
	.line	352
	pei	<L115+debugString_0+2
	pei	<L115+debugString_0
	jsl	~~k_debug_string
;
;	for(i=0;i<size;i++)
	.line	354
	stz	<L116+i_1
	brl	L10042
L10041:
;	{
	.line	355
;		if(i!=0)
	.line	356
;			k_debug_string(",");
	lda	<L116+i_1
	bne	L118
	brl	L10043
L118:
	.line	357
	pea	#^L107
	pea	#<L107
	jsl	~~k_debug_string
;
;		k_debug_string(k_inttodec(n[i],k16buffer));
L10043:
	.line	359
	lda	#<~~k16buffer
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	lda	<L116+i_1
	bpl	L119
	dey
L119:
	sta	<R2
	sty	<R2+2
	pei	<R2+2
	pei	<R2
	lda	#$1
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R1
	stx	<R1+2
	clc
	lda	<L115+n_0
	adc	<R1
	sta	<R3
	lda	<L115+n_0+2
	adc	<R1+2
	sta	<R3+2
	lda	[<R3]
	pha
	jsl	~~k_inttodec
	sta	<R1
	stx	<R1+2
	phx
	pha
	jsl	~~k_debug_string
;	}
	.line	360
L10039:
	inc	<L116+i_1
L10042:
	lda	<L116+i_1
	cmp	<L115+size_0
	bcs	L120
	brl	L10041
L120:
L10040:
;
;	k_debug_string("\r\n");
	.line	362
	pea	#^L107+2
	pea	#<L107+2
	jsl	~~k_debug_string
;
;	return;
	.line	364
L121:
	lda	<L115+2
	sta	<L115+2+10
	lda	<L115+1
	sta	<L115+1+10
	pld
	tsc
	clc
	adc	#L115+10
	tcs
	rtl
;}
	.line	365
	.endblock	365
L115	equ	18
L116	equ	17
	ends
	efunc
	.endfunc	365,17,18
	.line	365
	data
L107:
	db	$2C,$00,$0D,$0A,$00
	ends
;
;/*
; *
; *
; *
; *
; */
;void k_debug_long(char FAR* debugString, ULONG n)
;{
	.line	373
	.line	374
	code
	xdef	~~k_debug_long
	func
	.function	374
~~k_debug_long:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L123
	tcs
	phd
	tcd
debugString_0	set	4
n_0	set	8
	.block	374
;	k_debug_string(debugString);
	.sym	debugString,4,142,6,32
	.sym	n,8,18,6,32
	.line	375
	pei	<L123+debugString_0+2
	pei	<L123+debugString_0
	jsl	~~k_debug_string
;
;	k_debug_string(k_longtodec(n,k16buffer));
	.line	377
	lda	#<~~k16buffer
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pei	<L123+n_0+2
	pei	<L123+n_0
	jsl	~~k_longtodec
	sta	<R1
	stx	<R1+2
	phx
	pha
	jsl	~~k_debug_string
;
;	k_debug_string("\r\n");
	.line	379
	pea	#^L122
	pea	#<L122
	jsl	~~k_debug_string
;
;	return;
	.line	381
L126:
	lda	<L123+2
	sta	<L123+2+8
	lda	<L123+1
	sta	<L123+1+8
	pld
	tsc
	clc
	adc	#L123+8
	tcs
	rtl
;}
	.line	382
	.endblock	382
L123	equ	8
L124	equ	9
	ends
	efunc
	.endfunc	382,9,8
	.line	382
	data
L122:
	db	$0D,$0A,$00
	ends
;/*
; *
; *
; *
; *
; */
;void k_debug_hex(PFAR debugString, UCHAR n)
;{
	.line	389
	.line	390
	code
	xdef	~~k_debug_hex
	func
	.function	390
~~k_debug_hex:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L128
	tcs
	phd
	tcd
debugString_0	set	4
n_0	set	8
	.block	390
;	k_debug_string(debugString);
	.sym	debugString,4,142,6,32
	.sym	n,8,14,6,8
	.line	391
	pei	<L128+debugString_0+2
	pei	<L128+debugString_0
	jsl	~~k_debug_string
;
;	k_debug_string(k_bytetohex(n,k16buffer));
	.line	393
	lda	#<~~k16buffer
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pei	<L128+n_0
	jsl	~~k_bytetohex
	sta	<R1
	stx	<R1+2
	phx
	pha
	jsl	~~k_debug_string
;
;	k_debug_string("\r\n");
	.line	395
	pea	#^L127
	pea	#<L127
	jsl	~~k_debug_string
;
;	return;
	.line	397
L131:
	lda	<L128+2
	sta	<L128+2+6
	lda	<L128+1
	sta	<L128+1+6
	pld
	tsc
	clc
	adc	#L128+6
	tcs
	rtl
;}
	.line	398
	.endblock	398
L128	equ	8
L129	equ	9
	ends
	efunc
	.endfunc	398,9,8
	.line	398
	data
L127:
	db	$0D,$0A,$00
	ends
;
;void k_debug_message(char FAR* debugString,char FAR *message)
;{
	.line	400
	.line	401
	code
	xdef	~~k_debug_message
	func
	.function	401
~~k_debug_message:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L133
	tcs
	phd
	tcd
debugString_0	set	4
message_0	set	8
	.block	401
;	k_debug_string(debugString);
	.sym	debugString,4,142,6,32
	.sym	message,8,142,6,32
	.line	402
	pei	<L133+debugString_0+2
	pei	<L133+debugString_0
	jsl	~~k_debug_string
;
;	k_debug_string(message);
	.line	404
	pei	<L133+message_0+2
	pei	<L133+message_0
	jsl	~~k_debug_string
;
;	k_debug_string("\r\n");
	.line	406
	pea	#^L132
	pea	#<L132
	jsl	~~k_debug_string
;
;	return;
	.line	408
L136:
	lda	<L133+2
	sta	<L133+2+8
	lda	<L133+1
	sta	<L133+1+8
	pld
	tsc
	clc
	adc	#L133+8
	tcs
	rtl
;}
	.line	409
	.endblock	409
L133	equ	0
L134	equ	1
	ends
	efunc
	.endfunc	409,1,0
	.line	409
	data
L132:
	db	$0D,$0A,$00
	ends
;
;void k_debug_strings(char FAR* debugString,char FAR *message)
;{
	.line	411
	.line	412
	code
	xdef	~~k_debug_strings
	func
	.function	412
~~k_debug_strings:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L138
	tcs
	phd
	tcd
debugString_0	set	4
message_0	set	8
	.block	412
;	k_debug_message(debugString,message);
	.sym	debugString,4,142,6,32
	.sym	message,8,142,6,32
	.line	413
	pei	<L138+message_0+2
	pei	<L138+message_0
	pei	<L138+debugString_0+2
	pei	<L138+debugString_0
	jsl	~~k_debug_message
;}
	.line	414
L141:
	lda	<L138+2
	sta	<L138+2+8
	lda	<L138+1
	sta	<L138+1+8
	pld
	tsc
	clc
	adc	#L138+8
	tcs
	rtl
	.endblock	414
L138	equ	0
L139	equ	1
	ends
	efunc
	.endfunc	414,1,0
	.line	414
;
;
;void k_debug_nmessage(char FAR* debugString,char FAR *message,UINT size)
;{
	.line	417
	.line	418
	code
	xdef	~~k_debug_nmessage
	func
	.function	418
~~k_debug_nmessage:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L142
	tcs
	phd
	tcd
debugString_0	set	4
message_0	set	8
size_0	set	12
	.block	418
;	k_debug_string(debugString);
	.sym	debugString,4,142,6,32
	.sym	message,8,142,6,32
	.sym	size,12,16,6,16
	.line	419
	pei	<L142+debugString_0+2
	pei	<L142+debugString_0
	jsl	~~k_debug_string
;	k_debug_string("[");
	.line	420
	pea	#^L137
	pea	#<L137
	jsl	~~k_debug_string
;	k_debug_nstring(message,size);
	.line	421
	pei	<L142+size_0
	pei	<L142+message_0+2
	pei	<L142+message_0
	jsl	~~k_debug_nstring
;	k_debug_string("]");
	.line	422
	pea	#^L137+2
	pea	#<L137+2
	jsl	~~k_debug_string
;	k_debug_string("\r\n");
	.line	423
	pea	#^L137+4
	pea	#<L137+4
	jsl	~~k_debug_string
;
;	return;
	.line	425
L145:
	lda	<L142+2
	sta	<L142+2+10
	lda	<L142+1
	sta	<L142+1+10
	pld
	tsc
	clc
	adc	#L142+10
	tcs
	rtl
;}
	.line	426
	.endblock	426
L142	equ	0
L143	equ	1
	ends
	efunc
	.endfunc	426,1,0
	.line	426
	data
L137:
	db	$5B,$00,$5D,$00,$0D,$0A,$00
	ends
;
;void k_debug_nstrings(char FAR* debugString,char FAR *message,UINT size)
;{
	.line	428
	.line	429
	code
	xdef	~~k_debug_nstrings
	func
	.function	429
~~k_debug_nstrings:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L147
	tcs
	phd
	tcd
debugString_0	set	4
message_0	set	8
size_0	set	12
	.block	429
;	k_debug_nmessage(debugString,message,size);
	.sym	debugString,4,142,6,32
	.sym	message,8,142,6,32
	.sym	size,12,16,6,16
	.line	430
	pei	<L147+size_0
	pei	<L147+message_0+2
	pei	<L147+message_0
	pei	<L147+debugString_0+2
	pei	<L147+debugString_0
	jsl	~~k_debug_nmessage
;}
	.line	431
L150:
	lda	<L147+2
	sta	<L147+2+10
	lda	<L147+1
	sta	<L147+1+10
	pld
	tsc
	clc
	adc	#L147+10
	tcs
	rtl
	.endblock	431
L147	equ	0
L148	equ	1
	ends
	efunc
	.endfunc	431,1,0
	.line	431
;
;/*
; *
; *
; *
; *
; */
;void k_debug_hexchar(PFAR debugString, UCHAR n)
;{
	.line	439
	.line	440
	code
	xdef	~~k_debug_hexchar
	func
	.function	440
~~k_debug_hexchar:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L151
	tcs
	phd
	tcd
debugString_0	set	4
n_0	set	8
	.block	440
;	char b[2];
;
;	b[0] = n;
b_1	set	0
	.sym	b,0,110,1,0,2
	.sym	debugString,4,142,6,32
	.sym	n,8,14,6,8
	.line	443
	sep	#$20
	longa	off
	lda	<L151+n_0
	sta	<L152+b_1
	rep	#$20
	longa	on
;	b[1] = 0;
	.line	444
	sep	#$20
	longa	off
	stz	<L152+b_1+1
	rep	#$20
	longa	on
;
;	k_debug_string(debugString);
	.line	446
	pei	<L151+debugString_0+2
	pei	<L151+debugString_0
	jsl	~~k_debug_string
;
;	k_debug_string(k_bytetohex(n,k16buffer));
	.line	448
	lda	#<~~k16buffer
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pei	<L151+n_0
	jsl	~~k_bytetohex
	sta	<R1
	stx	<R1+2
	phx
	pha
	jsl	~~k_debug_string
;	k_debug_string("(");
	.line	449
	pea	#^L146
	pea	#<L146
	jsl	~~k_debug_string
;	k_debug_string(b);
	.line	450
	pea	#0
	clc
	tdc
	adc	#<L152+b_1
	pha
	jsl	~~k_debug_string
;	k_debug_string(")");
	.line	451
	pea	#^L146+2
	pea	#<L146+2
	jsl	~~k_debug_string
;	k_debug_string("\r\n");
	.line	452
	pea	#^L146+4
	pea	#<L146+4
	jsl	~~k_debug_string
;
;	return;
	.line	454
L154:
	lda	<L151+2
	sta	<L151+2+6
	lda	<L151+1
	sta	<L151+1+6
	pld
	tsc
	clc
	adc	#L151+6
	tcs
	rtl
;}
	.line	455
	.endblock	455
L151	equ	10
L152	equ	9
	ends
	efunc
	.endfunc	455,9,10
	.line	455
	data
L146:
	db	$28,$00,$29,$00,$0D,$0A,$00
	ends
;
;void k_debug_on(UCHAR n)
;{
	.line	457
	.line	458
	code
	xdef	~~k_debug_on
	func
	.function	458
~~k_debug_on:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L156
	tcs
	phd
	tcd
n_0	set	4
	.block	458
;	if(n == 0)
	.sym	n,4,14,6,8
	.line	459
;	{
	lda	<L156+n_0
	and	#$ff
	beq	L159
	brl	L10044
L159:
	.line	460
;		k_debug_string("0");
	.line	461
	pea	#^L155
	pea	#<L155
	jsl	~~k_debug_string
;	}
	.line	462
;	else
	brl	L10045
L10044:
;	{
	.line	464
;		k_debug_string("1");
	.line	465
	pea	#^L155+2
	pea	#<L155+2
	jsl	~~k_debug_string
;	}
	.line	466
L10045:
;}
	.line	467
L160:
	lda	<L156+2
	sta	<L156+2+2
	lda	<L156+1
	sta	<L156+1+2
	pld
	tsc
	clc
	adc	#L156+2
	tcs
	rtl
	.endblock	467
L156	equ	0
L157	equ	1
	ends
	efunc
	.endfunc	467,1,0
	.line	467
	data
L155:
	db	$30,$00,$31,$00
	ends
;
;void k_debug_bits(PFAR debugString, UCHAR n)
;{
	.line	469
	.line	470
	code
	xdef	~~k_debug_bits
	func
	.function	470
~~k_debug_bits:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L162
	tcs
	phd
	tcd
debugString_0	set	4
n_0	set	8
	.block	470
;	PDEBUGBYTEBITS pbits = (PDEBUGBYTEBITS)&n;
;
;	k_debug_string(debugString);
pbits_1	set	0
	.sym	pbits,0,138,1,32,61
	.sym	debugString,4,142,6,32
	.sym	n,8,14,6,8
	clc
	tdc
	adc	#<L162+n_0
	sta	<L163+pbits_1
	lda	#$0
	sta	<L163+pbits_1+2
	.line	473
	pei	<L162+debugString_0+2
	pei	<L162+debugString_0
	jsl	~~k_debug_string
;
;
;	/*
;	k_debug_on(pbits->bit7);
;	k_debug_on(pbits->bit6);
;	k_debug_on(pbits->bit5);
;	k_debug_on(pbits->bit4);
;	k_debug_on(pbits->bit3);
;	k_debug_on(pbits->bit2);
;	k_debug_on(pbits->bit1);
;	k_debug_on(pbits->bit0);
;	*/
;
;	k_debug_on(pbits->bit0);
	.line	487
	sep	#$20
	longa	off
	lda	[<L163+pbits_1]
	sta	<R0
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	lsr	<R0
	lsr	<R0
	lsr	<R0
	lsr	<R0
	lsr	<R0
	lsr	<R0
	lsr	<R0
	rep	#$20
	longa	on
	pei	<R0
	jsl	~~k_debug_on
;	k_debug_on(pbits->bit1);
	.line	488
	sep	#$20
	longa	off
	lda	[<L163+pbits_1]
	sta	<R0
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	lsr	<R0
	lsr	<R0
	lsr	<R0
	lsr	<R0
	lsr	<R0
	lsr	<R0
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	lda	<R0
	and	#<$1
	sta	<R0
	rep	#$20
	longa	on
	pei	<R0
	jsl	~~k_debug_on
;	k_debug_on(pbits->bit2);
	.line	489
	sep	#$20
	longa	off
	lda	[<L163+pbits_1]
	sta	<R0
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	lsr	<R0
	lsr	<R0
	lsr	<R0
	lsr	<R0
	lsr	<R0
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	lda	<R0
	and	#<$1
	sta	<R0
	rep	#$20
	longa	on
	pei	<R0
	jsl	~~k_debug_on
;	k_debug_on(pbits->bit3);
	.line	490
	sep	#$20
	longa	off
	lda	[<L163+pbits_1]
	sta	<R0
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	lsr	<R0
	lsr	<R0
	lsr	<R0
	lsr	<R0
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	lda	<R0
	and	#<$1
	sta	<R0
	rep	#$20
	longa	on
	pei	<R0
	jsl	~~k_debug_on
;	k_debug_on(pbits->bit4);
	.line	491
	sep	#$20
	longa	off
	lda	[<L163+pbits_1]
	sta	<R0
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	lsr	<R0
	lsr	<R0
	lsr	<R0
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	lda	<R0
	and	#<$1
	sta	<R0
	rep	#$20
	longa	on
	pei	<R0
	jsl	~~k_debug_on
;	k_debug_on(pbits->bit5);
	.line	492
	sep	#$20
	longa	off
	lda	[<L163+pbits_1]
	sta	<R0
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	lsr	<R0
	lsr	<R0
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	lda	<R0
	and	#<$1
	sta	<R0
	rep	#$20
	longa	on
	pei	<R0
	jsl	~~k_debug_on
;	k_debug_on(pbits->bit6);
	.line	493
	sep	#$20
	longa	off
	lda	[<L163+pbits_1]
	sta	<R0
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	lsr	<R0
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	lda	<R0
	and	#<$1
	sta	<R0
	rep	#$20
	longa	on
	pei	<R0
	jsl	~~k_debug_on
;	k_debug_on(pbits->bit7);
	.line	494
	sep	#$20
	longa	off
	lda	[<L163+pbits_1]
	sta	<R0
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	lda	<R0
	and	#<$1
	sta	<R0
	rep	#$20
	longa	on
	pei	<R0
	jsl	~~k_debug_on
;
;
;	/*
;	k_debug_string(k_bytetohex(pbits->bit7,k16buffer));
;	k_debug_string(k_bytetohex(pbits->bit6,k16buffer));
;	k_debug_string(k_bytetohex(pbits->bit5,k16buffer));
;	k_debug_string(k_bytetohex(pbits->bit4,k16buffer));
;	k_debug_string(k_bytetohex(pbits->bit3,k16buffer));
;	k_debug_string(k_bytetohex(pbits->bit2,k16buffer));
;	k_debug_string(k_bytetohex(pbits->bit1,k16buffer));
;	k_debug_string(k_bytetohex(pbits->bit0,k16buffer));
;	*/
;
;	k_debug_string("\r\n");
	.line	508
	pea	#^L161
	pea	#<L161
	jsl	~~k_debug_string
;}
	.line	509
L165:
	lda	<L162+2
	sta	<L162+2+6
	lda	<L162+1
	sta	<L162+1+6
	pld
	tsc
	clc
	adc	#L162+6
	tcs
	rtl
	.endblock	509
L162	equ	8
L163	equ	5
	ends
	efunc
	.endfunc	509,5,8
	.line	509
	data
L161:
	db	$0D,$0A,$00
	ends
;
;void k_debug_byte_array(LPCHAR debugString,PBYTE n,ULONG size)
;{
	.line	511
	.line	512
	code
	xdef	~~k_debug_byte_array
	func
	.function	512
~~k_debug_byte_array:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L167
	tcs
	phd
	tcd
debugString_0	set	4
n_0	set	8
size_0	set	12
	.block	512
;	ULONG i = 0;
;	k_debug_string(debugString);
i_1	set	0
	.sym	i,0,18,1,32
	.sym	debugString,4,142,6,32
	.sym	n,8,142,6,32
	.sym	size,12,18,6,32
	stz	<L168+i_1
	stz	<L168+i_1+2
	.line	514
	pei	<L167+debugString_0+2
	pei	<L167+debugString_0
	jsl	~~k_debug_string
;
;	for(i=0;i<size;i++)
	.line	516
	stz	<L168+i_1
	stz	<L168+i_1+2
	brl	L10049
L10048:
;	{
	.line	517
;		if(i!=0)
	.line	518
;			k_debug_string(" ");
	lda	<L168+i_1
	ora	<L168+i_1+2
	bne	L170
	brl	L10050
L170:
	.line	519
	pea	#^L166
	pea	#<L166
	jsl	~~k_debug_string
;
;		k_debug_string(k_bytetohex(n[i],k16buffer));
L10050:
	.line	521
	lda	#<~~k16buffer
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	<L167+n_0
	adc	<L168+i_1
	sta	<R1
	lda	<L167+n_0+2
	adc	<L168+i_1+2
	sta	<R1+2
	lda	[<R1]
	pha
	jsl	~~k_bytetohex
	sta	<R1
	stx	<R1+2
	phx
	pha
	jsl	~~k_debug_string
;	}
	.line	522
L10046:
	inc	<L168+i_1
	bne	L171
	inc	<L168+i_1+2
L171:
L10049:
	lda	<L168+i_1
	cmp	<L167+size_0
	lda	<L168+i_1+2
	sbc	<L167+size_0+2
	bcs	L172
	brl	L10048
L172:
L10047:
;
;	k_debug_string("\r\n");
	.line	524
	pea	#^L166+2
	pea	#<L166+2
	jsl	~~k_debug_string
;
;	return;
	.line	526
L173:
	lda	<L167+2
	sta	<L167+2+12
	lda	<L167+1
	sta	<L167+1+12
	pld
	tsc
	clc
	adc	#L167+12
	tcs
	rtl
;}
	.line	527
	.endblock	527
L167	equ	12
L168	equ	9
	ends
	efunc
	.endfunc	527,9,12
	.line	527
	data
L166:
	db	$20,$00,$0D,$0A,$00
	ends
;
;
;/**
; *
; *
; */
;void k_debug_node(PFXNODE node)
;{
	.line	534
	.line	535
	code
	xdef	~~k_debug_node
	func
	.function	535
~~k_debug_node:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L175
	tcs
	phd
	tcd
node_0	set	4
	.block	535
;	k_debug_pointer("     NODE:",node);
	.sym	node,4,138,6,32,5
	.line	536
	pei	<L175+node_0+2
	pei	<L175+node_0
	pea	#^L174
	pea	#<L174
	jsl	~~k_debug_pointer
;	if(node && node->name)
	.line	537
;	{
	lda	<L175+node_0
	ora	<L175+node_0+2
	bne	L178
	brl	L10051
L178:
	clc
	lda	#$e
	adc	<L175+node_0
	sta	<R0
	lda	#$0
	adc	<L175+node_0+2
	sta	<R0+2
	lda	<R0
	ora	<R0+2
	bne	L179
	brl	L10051
L179:
	.line	538
;		node->name[31] = 0;
	.line	539
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$2d
	sta	[<L175+node_0],Y
	rep	#$20
	longa	on
;		k_debug_string("NODE NAME:");
	.line	540
	pea	#^L174+11
	pea	#<L174+11
	jsl	~~k_debug_string
;		k_debug_string(node->name);
	.line	541
	clc
	lda	#$e
	adc	<L175+node_0
	sta	<R0
	lda	#$0
	adc	<L175+node_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~k_debug_string
;		k_debug_string("\r\n");
	.line	542
	pea	#^L174+22
	pea	#<L174+22
	jsl	~~k_debug_string
;
;		k_debug_integer("     TYPE:",node->type);
	.line	544
	lda	[<L175+node_0]
	and	#$ff
	pha
	pea	#^L174+25
	pea	#<L174+25
	jsl	~~k_debug_integer
;		k_debug_pointer("  POINTER:",node->data);
	.line	545
	ldy	#$4
	lda	[<L175+node_0],Y
	pha
	ldy	#$2
	lda	[<L175+node_0],Y
	pha
	pea	#^L174+36
	pea	#<L174+36
	jsl	~~k_debug_pointer
;
;	}
	.line	547
;}
L10051:
	.line	548
L180:
	lda	<L175+2
	sta	<L175+2+4
	lda	<L175+1
	sta	<L175+1+4
	pld
	tsc
	clc
	adc	#L175+4
	tcs
	rtl
	.endblock	548
L175	equ	4
L176	equ	5
	ends
	efunc
	.endfunc	548,5,4
	.line	548
	data
L174:
	db	$20,$20,$20,$20,$20,$4E,$4F,$44,$45,$3A,$00,$4E,$4F,$44,$45
	db	$20,$4E,$41,$4D,$45,$3A,$00,$0D,$0A,$00,$20,$20,$20,$20,$20
	db	$54,$59,$50,$45,$3A,$00,$20,$20,$50,$4F,$49,$4E,$54,$45,$52
	db	$3A,$00
	ends
;/**
; *
; *
; */
;void k_debug_nodelist(PFXNODE head)
;{
	.line	553
	.line	554
	code
	xdef	~~k_debug_nodelist
	func
	.function	554
~~k_debug_nodelist:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L182
	tcs
	phd
	tcd
head_0	set	4
	.block	554
;	PFXNODE ptr = head;
;	while(ptr!=NULL)
ptr_1	set	0
	.sym	ptr,0,138,1,32,5
	.sym	head,4,138,6,32,5
	lda	<L182+head_0
	sta	<L183+ptr_1
	lda	<L182+head_0+2
	sta	<L183+ptr_1+2
	.line	556
L10052:
	lda	<L183+ptr_1
	ora	<L183+ptr_1+2
	bne	L185
	brl	L10053
L185:
;	{
	.line	557
;		k_debug_node(ptr);
	.line	558
	pei	<L183+ptr_1+2
	pei	<L183+ptr_1
	jsl	~~k_debug_node
;		ptr = ptr->next;
	.line	559
	ldy	#$a
	lda	[<L183+ptr_1],Y
	sta	<R0
	ldy	#$c
	lda	[<L183+ptr_1],Y
	sta	<R0+2
	lda	<R0
	sta	<L183+ptr_1
	lda	<R0+2
	sta	<L183+ptr_1+2
;	}
	.line	560
	brl	L10052
L10053:
;}
	.line	561
L186:
	lda	<L182+2
	sta	<L182+2+4
	lda	<L182+1
	sta	<L182+1+4
	pld
	tsc
	clc
	adc	#L182+4
	tcs
	rtl
	.endblock	561
L182	equ	8
L183	equ	5
	ends
	efunc
	.endfunc	561,5,8
	.line	561
;
;/**
; *
; *
; */
;void k_debug_nodelist_list(PFXNODELIST list,FOREACHNODE handler)
;{
	.line	567
	.line	568
	code
	xdef	~~k_debug_nodelist_list
	func
	.function	568
~~k_debug_nodelist_list:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L187
	tcs
	phd
	tcd
list_0	set	4
handler_0	set	8
	.block	568
;	PFXNODE ptr = list->listhead->next;
;
;	k_debug_strings("NODELIST:",(LPCHAR)list->listhead->data);
ptr_1	set	0
	.sym	ptr,0,138,1,32,5
	.sym	list,4,138,6,32,6
	.sym	handler,8,641,6,32
	lda	[<L187+list_0]
	sta	<R0
	ldy	#$2
	lda	[<L187+list_0],Y
	sta	<R0+2
	ldy	#$a
	lda	[<R0],Y
	sta	<L188+ptr_1
	ldy	#$c
	lda	[<R0],Y
	sta	<L188+ptr_1+2
	.line	571
	lda	[<L187+list_0]
	sta	<R0
	ldy	#$2
	lda	[<L187+list_0],Y
	sta	<R0+2
	ldy	#$4
	lda	[<R0],Y
	pha
	ldy	#$2
	lda	[<R0],Y
	pha
	pea	#^L181
	pea	#<L181
	jsl	~~k_debug_strings
;
;	k_debug_nodelist_with_data(list->listhead->next,handler);
	.line	573
	pei	<L187+handler_0+2
	pei	<L187+handler_0
	lda	[<L187+list_0]
	sta	<R0
	ldy	#$2
	lda	[<L187+list_0],Y
	sta	<R0+2
	ldy	#$c
	lda	[<R0],Y
	pha
	ldy	#$a
	lda	[<R0],Y
	pha
	jsl	~~k_debug_nodelist_with_data
;}
	.line	574
L190:
	lda	<L187+2
	sta	<L187+2+8
	lda	<L187+1
	sta	<L187+1+8
	pld
	tsc
	clc
	adc	#L187+8
	tcs
	rtl
	.endblock	574
L187	equ	8
L188	equ	5
	ends
	efunc
	.endfunc	574,5,8
	.line	574
	data
L181:
	db	$4E,$4F,$44,$45,$4C,$49,$53,$54,$3A,$00
	ends
;
;
;void k_debug_nodelist_with_data(PFXNODE head,FOREACHNODE handler)
;{
	.line	577
	.line	578
	code
	xdef	~~k_debug_nodelist_with_data
	func
	.function	578
~~k_debug_nodelist_with_data:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L192
	tcs
	phd
	tcd
head_0	set	4
handler_0	set	8
	.block	578
;	PFXNODE ptr = head;
;	while(ptr!=NULL)
ptr_1	set	0
	.sym	ptr,0,138,1,32,5
	.sym	head,4,138,6,32,5
	.sym	handler,8,641,6,32
	lda	<L192+head_0
	sta	<L193+ptr_1
	lda	<L192+head_0+2
	sta	<L193+ptr_1+2
	.line	580
L10054:
	lda	<L193+ptr_1
	ora	<L193+ptr_1+2
	bne	L195
	brl	L10055
L195:
;	{
	.line	581
;		k_debug_node(ptr);
	.line	582
	pei	<L193+ptr_1+2
	pei	<L193+ptr_1
	jsl	~~k_debug_node
;		if(handler)
	.line	583
;			handler(NULL,ptr->data);
	lda	<L192+handler_0
	ora	<L192+handler_0+2
	bne	L196
	brl	L10056
L196:
	.line	584
	ldy	#$4
	lda	[<L193+ptr_1],Y
	pha
	ldy	#$2
	lda	[<L193+ptr_1],Y
	pha
	pea	#^$0
	pea	#<$0
	ldx	<L192+handler_0+2
	lda	<L192+handler_0
	xref	~~~lcal
	jsl	~~~lcal
;		ptr = ptr->next;
L10056:
	.line	585
	ldy	#$a
	lda	[<L193+ptr_1],Y
	sta	<R0
	ldy	#$c
	lda	[<L193+ptr_1],Y
	sta	<R0+2
	lda	<R0
	sta	<L193+ptr_1
	lda	<R0+2
	sta	<L193+ptr_1+2
;	}
	.line	586
	brl	L10054
L10055:
;}
	.line	587
L197:
	lda	<L192+2
	sta	<L192+2+8
	lda	<L192+1
	sta	<L192+1+8
	pld
	tsc
	clc
	adc	#L192+8
	tcs
	rtl
	.endblock	587
L192	equ	8
L193	equ	5
	ends
	efunc
	.endfunc	587,5,8
	.line	587
;/*
; *
; *
; *
; */
;void k_debug_crlf(void)
;{
	.line	593
	.line	594
	code
	xdef	~~k_debug_crlf
	func
	.function	594
~~k_debug_crlf:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L198
	tcs
	phd
	tcd
	.block	594
;	k_debug_string("\r\n");
	.line	595
	pea	#^L191
	pea	#<L191
	jsl	~~k_debug_string
;}
	.line	596
L201:
	pld
	tsc
	clc
	adc	#L198
	tcs
	rtl
	.endblock	596
L198	equ	0
L199	equ	1
	ends
	efunc
	.endfunc	596,1,0
	.line	596
	data
L191:
	db	$0D,$0A,$00
	ends
;
;void k_debug_uart_status_com1(int lc)
;{
	.line	598
	.line	599
	code
	xdef	~~k_debug_uart_status_com1
	func
	.function	599
~~k_debug_uart_status_com1:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L203
	tcs
	phd
	tcd
lc_0	set	4
	.block	599
;	char uartbuffer[3];
;	int lcp = 0;
;
;	//lcp = k_put_string(lcp,lc,"XX",15,0);
;	//k_put_char(lcp,lc,'-',15,0);lcp++;
;	lcp = k_put_string(lcp,lc,k_bytetohex(UART1_BASE[UART_DLH],uartbuffer),15,0);
uartbuffer_1	set	0
lcp_1	set	3
	.sym	uartbuffer,0,110,1,0,3
	.sym	lcp,3,5,1,16
	.sym	lc,4,5,6,16
	stz	<L204+lcp_1
	.line	605
	pea	#<$0
	pea	#<$f
	pea	#0
	clc
	tdc
	adc	#<L204+uartbuffer_1
	pha
	lda	>11473913
	pha
	jsl	~~k_bytetohex
	sta	<R0
	stx	<R0+2
	phx
	pha
	pei	<L203+lc_0
	pei	<L204+lcp_1
	jsl	~~k_put_string
	sta	<L204+lcp_1
;
;	k_put_char(lcp,lc,'-',15,0);lcp++;
	.line	607
	pea	#<$0
	pea	#<$f
	pea	#<$2d
	pei	<L203+lc_0
	pei	<L204+lcp_1
	jsl	~~k_put_char
	.line	607
	inc	<L204+lcp_1
;
;	lcp = k_put_string(lcp,lc,k_bytetohex(UART1_BASE[UART_FCR],uartbuffer),15,0);
	.line	609
	pea	#<$0
	pea	#<$f
	pea	#0
	clc
	tdc
	adc	#<L204+uartbuffer_1
	pha
	lda	>11473914
	pha
	jsl	~~k_bytetohex
	sta	<R0
	stx	<R0+2
	phx
	pha
	pei	<L203+lc_0
	pei	<L204+lcp_1
	jsl	~~k_put_string
	sta	<L204+lcp_1
;
;	k_put_char(lcp,lc,'-',15,0);lcp++;
	.line	611
	pea	#<$0
	pea	#<$f
	pea	#<$2d
	pei	<L203+lc_0
	pei	<L204+lcp_1
	jsl	~~k_put_char
	.line	611
	inc	<L204+lcp_1
;
;	lcp = k_put_string(lcp,lc,k_bytetohex(UART1_BASE[UART_DLH],uartbuffer),15,0);
	.line	613
	pea	#<$0
	pea	#<$f
	pea	#0
	clc
	tdc
	adc	#<L204+uartbuffer_1
	pha
	lda	>11473913
	pha
	jsl	~~k_bytetohex
	sta	<R0
	stx	<R0+2
	phx
	pha
	pei	<L203+lc_0
	pei	<L204+lcp_1
	jsl	~~k_put_string
	sta	<L204+lcp_1
;
;	k_put_char(lcp,lc,'-',15,0);lcp++;
	.line	615
	pea	#<$0
	pea	#<$f
	pea	#<$2d
	pei	<L203+lc_0
	pei	<L204+lcp_1
	jsl	~~k_put_char
	.line	615
	inc	<L204+lcp_1
;
;	lcp = k_put_string(lcp,lc,k_bytetohex(UART1_BASE[UART_LCR],uartbuffer),15,0);
	.line	617
	pea	#<$0
	pea	#<$f
	pea	#0
	clc
	tdc
	adc	#<L204+uartbuffer_1
	pha
	lda	>11473915
	pha
	jsl	~~k_bytetohex
	sta	<R0
	stx	<R0+2
	phx
	pha
	pei	<L203+lc_0
	pei	<L204+lcp_1
	jsl	~~k_put_string
	sta	<L204+lcp_1
;
;	k_put_char(lcp,lc,'-',15,0);lcp++;
	.line	619
	pea	#<$0
	pea	#<$f
	pea	#<$2d
	pei	<L203+lc_0
	pei	<L204+lcp_1
	jsl	~~k_put_char
	.line	619
	inc	<L204+lcp_1
;
;	lcp = k_put_string(lcp,lc,k_bytetohex(UART1_BASE[UART_MCR],uartbuffer),15,0);
	.line	621
	pea	#<$0
	pea	#<$f
	pea	#0
	clc
	tdc
	adc	#<L204+uartbuffer_1
	pha
	lda	>11473916
	pha
	jsl	~~k_bytetohex
	sta	<R0
	stx	<R0+2
	phx
	pha
	pei	<L203+lc_0
	pei	<L204+lcp_1
	jsl	~~k_put_string
	sta	<L204+lcp_1
;
;	k_put_char(lcp,lc,'-',15,0);lcp++;
	.line	623
	pea	#<$0
	pea	#<$f
	pea	#<$2d
	pei	<L203+lc_0
	pei	<L204+lcp_1
	jsl	~~k_put_char
	.line	623
	inc	<L204+lcp_1
;
;	lcp = k_put_string(lcp,lc,k_bytetohex(UART1_BASE[UART_MSR],uartbuffer),15,0);
	.line	625
	pea	#<$0
	pea	#<$f
	pea	#0
	clc
	tdc
	adc	#<L204+uartbuffer_1
	pha
	lda	>11473918
	pha
	jsl	~~k_bytetohex
	sta	<R0
	stx	<R0+2
	phx
	pha
	pei	<L203+lc_0
	pei	<L204+lcp_1
	jsl	~~k_put_string
	sta	<L204+lcp_1
;}
	.line	626
L206:
	lda	<L203+2
	sta	<L203+2+2
	lda	<L203+1
	sta	<L203+1+2
	pld
	tsc
	clc
	adc	#L203+2
	tcs
	rtl
	.endblock	626
L203	equ	9
L204	equ	5
	ends
	efunc
	.endfunc	626,5,9
	.line	626
;
;void k_debug_uart_status_com2(int lc)
;{
	.line	628
	.line	629
	code
	xdef	~~k_debug_uart_status_com2
	func
	.function	629
~~k_debug_uart_status_com2:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L207
	tcs
	phd
	tcd
lc_0	set	4
	.block	629
;	char uartbuffer[3];
;	int lcp = 0;
;
;	//lcp = k_put_string(lcp,lc,"XX",15,0);
;	//k_put_char(lcp,lc,'-',15,0);lcp++;
;	lcp = k_put_string(lcp,lc,k_bytetohex(UART2_BASE[UART_DLH],uartbuffer),15,0);
uartbuffer_1	set	0
lcp_1	set	3
	.sym	uartbuffer,0,110,1,0,3
	.sym	lcp,3,5,1,16
	.sym	lc,4,5,6,16
	stz	<L208+lcp_1
	.line	635
	pea	#<$0
	pea	#<$f
	pea	#0
	clc
	tdc
	adc	#<L208+uartbuffer_1
	pha
	lda	>11473657
	pha
	jsl	~~k_bytetohex
	sta	<R0
	stx	<R0+2
	phx
	pha
	pei	<L207+lc_0
	pei	<L208+lcp_1
	jsl	~~k_put_string
	sta	<L208+lcp_1
;
;	k_put_char(lcp,lc,'-',15,0);lcp++;
	.line	637
	pea	#<$0
	pea	#<$f
	pea	#<$2d
	pei	<L207+lc_0
	pei	<L208+lcp_1
	jsl	~~k_put_char
	.line	637
	inc	<L208+lcp_1
;
;	lcp = k_put_string(lcp,lc,k_bytetohex(UART2_BASE[UART_FCR],uartbuffer),15,0);
	.line	639
	pea	#<$0
	pea	#<$f
	pea	#0
	clc
	tdc
	adc	#<L208+uartbuffer_1
	pha
	lda	>11473658
	pha
	jsl	~~k_bytetohex
	sta	<R0
	stx	<R0+2
	phx
	pha
	pei	<L207+lc_0
	pei	<L208+lcp_1
	jsl	~~k_put_string
	sta	<L208+lcp_1
;
;	k_put_char(lcp,lc,'-',15,0);lcp++;
	.line	641
	pea	#<$0
	pea	#<$f
	pea	#<$2d
	pei	<L207+lc_0
	pei	<L208+lcp_1
	jsl	~~k_put_char
	.line	641
	inc	<L208+lcp_1
;
;	lcp = k_put_string(lcp,lc,k_bytetohex(UART2_BASE[UART_DLH],uartbuffer),15,0);
	.line	643
	pea	#<$0
	pea	#<$f
	pea	#0
	clc
	tdc
	adc	#<L208+uartbuffer_1
	pha
	lda	>11473657
	pha
	jsl	~~k_bytetohex
	sta	<R0
	stx	<R0+2
	phx
	pha
	pei	<L207+lc_0
	pei	<L208+lcp_1
	jsl	~~k_put_string
	sta	<L208+lcp_1
;
;	k_put_char(lcp,lc,'-',15,0);lcp++;
	.line	645
	pea	#<$0
	pea	#<$f
	pea	#<$2d
	pei	<L207+lc_0
	pei	<L208+lcp_1
	jsl	~~k_put_char
	.line	645
	inc	<L208+lcp_1
;
;	lcp = k_put_string(lcp,lc,k_bytetohex(UART2_BASE[UART_LCR],uartbuffer),15,0);
	.line	647
	pea	#<$0
	pea	#<$f
	pea	#0
	clc
	tdc
	adc	#<L208+uartbuffer_1
	pha
	lda	>11473659
	pha
	jsl	~~k_bytetohex
	sta	<R0
	stx	<R0+2
	phx
	pha
	pei	<L207+lc_0
	pei	<L208+lcp_1
	jsl	~~k_put_string
	sta	<L208+lcp_1
;
;	k_put_char(lcp,lc,'-',15,0);lcp++;
	.line	649
	pea	#<$0
	pea	#<$f
	pea	#<$2d
	pei	<L207+lc_0
	pei	<L208+lcp_1
	jsl	~~k_put_char
	.line	649
	inc	<L208+lcp_1
;
;	lcp = k_put_string(lcp,lc,k_bytetohex(UART2_BASE[UART_MCR],uartbuffer),15,0);
	.line	651
	pea	#<$0
	pea	#<$f
	pea	#0
	clc
	tdc
	adc	#<L208+uartbuffer_1
	pha
	lda	>11473660
	pha
	jsl	~~k_bytetohex
	sta	<R0
	stx	<R0+2
	phx
	pha
	pei	<L207+lc_0
	pei	<L208+lcp_1
	jsl	~~k_put_string
	sta	<L208+lcp_1
;
;	k_put_char(lcp,lc,'-',15,0);lcp++;
	.line	653
	pea	#<$0
	pea	#<$f
	pea	#<$2d
	pei	<L207+lc_0
	pei	<L208+lcp_1
	jsl	~~k_put_char
	.line	653
	inc	<L208+lcp_1
;
;	lcp = k_put_string(lcp,lc,k_bytetohex(UART2_BASE[UART_MSR],uartbuffer),15,0);
	.line	655
	pea	#<$0
	pea	#<$f
	pea	#0
	clc
	tdc
	adc	#<L208+uartbuffer_1
	pha
	lda	>11473662
	pha
	jsl	~~k_bytetohex
	sta	<R0
	stx	<R0+2
	phx
	pha
	pei	<L207+lc_0
	pei	<L208+lcp_1
	jsl	~~k_put_string
	sta	<L208+lcp_1
;}
	.line	656
L210:
	lda	<L207+2
	sta	<L207+2+2
	lda	<L207+1
	sta	<L207+1+2
	pld
	tsc
	clc
	adc	#L207+2
	tcs
	rtl
	.endblock	656
L207	equ	9
L208	equ	5
	ends
	efunc
	.endfunc	656,5,9
	.line	656
;
;void k_debug_rect(LPCSTR message,PRECT prect)
;{
	.line	658
	.line	659
	code
	xdef	~~k_debug_rect
	func
	.function	659
~~k_debug_rect:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L211
	tcs
	phd
	tcd
message_0	set	4
prect_0	set	8
	.block	659
;	char buffer[16];
;
;	k_debug_string((LPCHAR)message);
buffer_1	set	0
	.sym	buffer,0,110,1,0,16
	.sym	message,4,142,6,32
	.sym	prect,8,138,6,32,25
	.line	662
	pei	<L211+message_0+2
	pei	<L211+message_0
	jsl	~~k_debug_string
;	k_debug_crlf();
	.line	663
	jsl	~~k_debug_crlf
;	k_debug_integer("    RECT X:",prect->x);
	.line	664
	lda	[<L211+prect_0]
	pha
	pea	#^L202
	pea	#<L202
	jsl	~~k_debug_integer
;	k_debug_integer("    RECT Y:",prect->y);
	.line	665
	ldy	#$2
	lda	[<L211+prect_0],Y
	pha
	pea	#^L202+12
	pea	#<L202+12
	jsl	~~k_debug_integer
;	k_debug_integer("    RECT W:",prect->width);
	.line	666
	ldy	#$4
	lda	[<L211+prect_0],Y
	pha
	pea	#^L202+24
	pea	#<L202+24
	jsl	~~k_debug_integer
;	k_debug_integer("    RECT H:",prect->height);
	.line	667
	ldy	#$6
	lda	[<L211+prect_0],Y
	pha
	pea	#^L202+36
	pea	#<L202+36
	jsl	~~k_debug_integer
;}
	.line	668
L214:
	lda	<L211+2
	sta	<L211+2+8
	lda	<L211+1
	sta	<L211+1+8
	pld
	tsc
	clc
	adc	#L211+8
	tcs
	rtl
	.endblock	668
L211	equ	16
L212	equ	1
	ends
	efunc
	.endfunc	668,1,16
	.line	668
	data
L202:
	db	$20,$20,$20,$20,$52,$45,$43,$54,$20,$58,$3A,$00,$20,$20,$20
	db	$20,$52,$45,$43,$54,$20,$59,$3A,$00,$20,$20,$20,$20,$52,$45
	db	$43,$54,$20,$57,$3A,$00,$20,$20,$20,$20,$52,$45,$43,$54,$20
	db	$48,$3A,$00
	ends
;
;UINT k_get_rtc_hour(void)
;{
	.line	670
	.line	671
	code
	xdef	~~k_get_rtc_hour
	func
	.function	671
~~k_get_rtc_hour:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L216
	tcs
	phd
	tcd
	.block	671
;	return (((RTC_HRS[0]&0x30)>>4) * 10)  + (RTC_HRS[0]&0x0F) ;
	.line	672
	lda	>11470852
	and	#<$f
	sta	<R0
	lda	>11470852
	and	#<$30
	ldx	#<$4
	xref	~~~asr
	jsl	~~~asr
	sta	<R1
	lda	<R1
	asl	A
	asl	A
	adc	<R1
	asl	A
	sta	<R1
	clc
	lda	<R1
	adc	<R0
L219:
	tay
	pld
	tsc
	clc
	adc	#L216
	tcs
	tya
	rtl
;}
	.line	673
	.endblock	673
L216	equ	8
L217	equ	9
	ends
	efunc
	.endfunc	673,9,8
	.line	673
;
;UINT k_get_rtc_minute(void)
;{
	.line	675
	.line	676
	code
	xdef	~~k_get_rtc_minute
	func
	.function	676
~~k_get_rtc_minute:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L220
	tcs
	phd
	tcd
	.block	676
;	return (((RTC_MIN[0]&0x70)>>4) * 10)  + (RTC_MIN[0]&0x0F);
	.line	677
	lda	>11470850
	and	#<$f
	sta	<R0
	lda	>11470850
	and	#<$70
	ldx	#<$4
	xref	~~~asr
	jsl	~~~asr
	sta	<R1
	lda	<R1
	asl	A
	asl	A
	adc	<R1
	asl	A
	sta	<R1
	clc
	lda	<R1
	adc	<R0
L223:
	tay
	pld
	tsc
	clc
	adc	#L220
	tcs
	tya
	rtl
;}
	.line	678
	.endblock	678
L220	equ	8
L221	equ	9
	ends
	efunc
	.endfunc	678,9,8
	.line	678
;
;UINT k_get_rtc_second(void)
;{
	.line	680
	.line	681
	code
	xdef	~~k_get_rtc_second
	func
	.function	681
~~k_get_rtc_second:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L224
	tcs
	phd
	tcd
	.block	681
;	return (((RTC_SEC[0]&0x70)>>4) * 10)  + (RTC_SEC[0]&0x0F);
	.line	682
	lda	>11470848
	and	#<$f
	sta	<R0
	lda	>11470848
	and	#<$70
	ldx	#<$4
	xref	~~~asr
	jsl	~~~asr
	sta	<R1
	lda	<R1
	asl	A
	asl	A
	adc	<R1
	asl	A
	sta	<R1
	clc
	lda	<R1
	adc	<R0
L227:
	tay
	pld
	tsc
	clc
	adc	#L224
	tcs
	tya
	rtl
;}
	.line	683
	.endblock	683
L224	equ	8
L225	equ	9
	ends
	efunc
	.endfunc	683,9,8
	.line	683
;
;UINT k_get_rtc_month(void)
;{
	.line	685
	.line	686
	code
	xdef	~~k_get_rtc_month
	func
	.function	686
~~k_get_rtc_month:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L228
	tcs
	phd
	tcd
	.block	686
;	return  (((RTC_MONTH[0]&0x10)>>4)  * 10)  + (RTC_MONTH[0]&0x0F) ;
	.line	687
	lda	>11470857
	and	#<$f
	sta	<R0
	lda	>11470857
	and	#<$10
	ldx	#<$4
	xref	~~~asr
	jsl	~~~asr
	sta	<R1
	lda	<R1
	asl	A
	asl	A
	adc	<R1
	asl	A
	sta	<R1
	clc
	lda	<R1
	adc	<R0
L231:
	tay
	pld
	tsc
	clc
	adc	#L228
	tcs
	tya
	rtl
;}
	.line	688
	.endblock	688
L228	equ	8
L229	equ	9
	ends
	efunc
	.endfunc	688,9,8
	.line	688
;
;UINT k_get_rtc_day(void)
;{
	.line	690
	.line	691
	code
	xdef	~~k_get_rtc_day
	func
	.function	691
~~k_get_rtc_day:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L232
	tcs
	phd
	tcd
	.block	691
;	return (((RTC_DAY[0]&0x10)>>4)    * 10)  + (RTC_DAY[0]&0x0F) ;
	.line	692
	lda	>11470854
	and	#<$f
	sta	<R0
	lda	>11470854
	and	#<$10
	ldx	#<$4
	xref	~~~asr
	jsl	~~~asr
	sta	<R1
	lda	<R1
	asl	A
	asl	A
	adc	<R1
	asl	A
	sta	<R1
	clc
	lda	<R1
	adc	<R0
L235:
	tay
	pld
	tsc
	clc
	adc	#L232
	tcs
	tya
	rtl
;}
	.line	693
	.endblock	693
L232	equ	8
L233	equ	9
	ends
	efunc
	.endfunc	693,9,8
	.line	693
;
;UINT k_get_rtc_year(void)
;{
	.line	695
	.line	696
	code
	xdef	~~k_get_rtc_year
	func
	.function	696
~~k_get_rtc_year:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L236
	tcs
	phd
	tcd
	.block	696
;	return  (((RTC_YEAR[0]&0xF0)>>4)   * 10)  + (RTC_YEAR[0]&0x0F);
	.line	697
	lda	>11470858
	and	#<$f
	sta	<R0
	lda	>11470858
	and	#<$f0
	ldx	#<$4
	xref	~~~asr
	jsl	~~~asr
	sta	<R1
	lda	<R1
	asl	A
	asl	A
	adc	<R1
	asl	A
	sta	<R1
	clc
	lda	<R1
	adc	<R0
L239:
	tay
	pld
	tsc
	clc
	adc	#L236
	tcs
	tya
	rtl
;}
	.line	698
	.endblock	698
L236	equ	8
L237	equ	9
	ends
	efunc
	.endfunc	698,9,8
	.line	698
;
;UINT k_get_rtc_century(void)
;{
	.line	700
	.line	701
	code
	xdef	~~k_get_rtc_century
	func
	.function	701
~~k_get_rtc_century:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L240
	tcs
	phd
	tcd
	.block	701
;	return (((RTC_CENTURY[0]&0xF0)>>4)* 10)  + (RTC_CENTURY[0]&0x0F);
	.line	702
	lda	>11470863
	and	#<$f
	sta	<R0
	lda	>11470863
	and	#<$f0
	ldx	#<$4
	xref	~~~asr
	jsl	~~~asr
	sta	<R1
	lda	<R1
	asl	A
	asl	A
	adc	<R1
	asl	A
	sta	<R1
	clc
	lda	<R1
	adc	<R0
L243:
	tay
	pld
	tsc
	clc
	adc	#L240
	tcs
	tya
	rtl
;}
	.line	703
	.endblock	703
L240	equ	8
L241	equ	9
	ends
	efunc
	.endfunc	703,9,8
	.line	703
;
;void k_get_fpga_date_day(char *buffer)
;{
	.line	705
	.line	706
	code
	xdef	~~k_get_fpga_date_day
	func
	.function	706
~~k_get_fpga_date_day:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L244
	tcs
	phd
	tcd
buffer_0	set	4
	.block	706
;	k_bytetodec(FPGA_DOR[0],buffer);
	.sym	buffer,4,142,6,32
	.line	707
	pei	<L244+buffer_0+2
	pei	<L244+buffer_0
	lda	>11470605
	pha
	jsl	~~k_bytetodec
;}
	.line	708
L247:
	lda	<L244+2
	sta	<L244+2+4
	lda	<L244+1
	sta	<L244+1+4
	pld
	tsc
	clc
	adc	#L244+4
	tcs
	rtl
	.endblock	708
L244	equ	0
L245	equ	1
	ends
	efunc
	.endfunc	708,1,0
	.line	708
;
;void k_get_fpga_date_month(char *buffer)
;{
	.line	710
	.line	711
	code
	xdef	~~k_get_fpga_date_month
	func
	.function	711
~~k_get_fpga_date_month:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L248
	tcs
	phd
	tcd
buffer_0	set	4
	.block	711
;	k_bytetodec(FPGA_MOR[0],buffer);
	.sym	buffer,4,142,6,32
	.line	712
	pei	<L248+buffer_0+2
	pei	<L248+buffer_0
	lda	>11470606
	pha
	jsl	~~k_bytetodec
;}
	.line	713
L251:
	lda	<L248+2
	sta	<L248+2+4
	lda	<L248+1
	sta	<L248+1+4
	pld
	tsc
	clc
	adc	#L248+4
	tcs
	rtl
	.endblock	713
L248	equ	0
L249	equ	1
	ends
	efunc
	.endfunc	713,1,0
	.line	713
;
;void k_get_fpga_date_year(char *buffer)
;{
	.line	715
	.line	716
	code
	xdef	~~k_get_fpga_date_year
	func
	.function	716
~~k_get_fpga_date_year:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L252
	tcs
	phd
	tcd
buffer_0	set	4
	.block	716
;	k_bytetodec(FPGA_YOR[0],buffer);
	.sym	buffer,4,142,6,32
	.line	717
	pei	<L252+buffer_0+2
	pei	<L252+buffer_0
	lda	>11470607
	pha
	jsl	~~k_bytetodec
;}
	.line	718
L255:
	lda	<L252+2
	sta	<L252+2+4
	lda	<L252+1
	sta	<L252+1+4
	pld
	tsc
	clc
	adc	#L252+4
	tcs
	rtl
	.endblock	718
L252	equ	0
L253	equ	1
	ends
	efunc
	.endfunc	718,1,0
	.line	718
;
;void k_get_c256_major_version(char *buffer)
;{
	.line	720
	.line	721
	code
	xdef	~~k_get_c256_major_version
	func
	.function	721
~~k_get_c256_major_version:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L256
	tcs
	phd
	tcd
buffer_0	set	4
	.block	721
;	buffer[0] = *C256F_MODEL_MAJOR;
	.sym	buffer,4,142,6,32
	.line	722
	sep	#$20
	longa	off
	lda	>11470603
	sta	[<L256+buffer_0]
	rep	#$20
	longa	on
;	buffer[1] = 0;
	.line	723
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$1
	sta	[<L256+buffer_0],Y
	rep	#$20
	longa	on
;}
	.line	724
L259:
	lda	<L256+2
	sta	<L256+2+4
	lda	<L256+1
	sta	<L256+1+4
	pld
	tsc
	clc
	adc	#L256+4
	tcs
	rtl
	.endblock	724
L256	equ	0
L257	equ	1
	ends
	efunc
	.endfunc	724,1,0
	.line	724
;
;void k_get_c256_minor_version(char *buffer)
;{
	.line	726
	.line	727
	code
	xdef	~~k_get_c256_minor_version
	func
	.function	727
~~k_get_c256_minor_version:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L260
	tcs
	phd
	tcd
buffer_0	set	4
	.block	727
;	buffer[0] = *C256F_MODEL_MINOR;
	.sym	buffer,4,142,6,32
	.line	728
	sep	#$20
	longa	off
	lda	>11470604
	sta	[<L260+buffer_0]
	rep	#$20
	longa	on
;	buffer[1] = 0;
	.line	729
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$1
	sta	[<L260+buffer_0],Y
	rep	#$20
	longa	on
;}
	.line	730
L263:
	lda	<L260+2
	sta	<L260+2+4
	lda	<L260+1
	sta	<L260+1+4
	pld
	tsc
	clc
	adc	#L260+4
	tcs
	rtl
	.endblock	730
L260	equ	0
L261	equ	1
	ends
	efunc
	.endfunc	730,1,0
	.line	730
;
	.line	730
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxkernel.c",726
	xref	~~k_put_color
	xref	~~k_put_string
	xref	~~k_put_char
	xref	~~k_longtodec
	xref	~~k_inttodec
	xref	~~k_bytetodec
	xref	~~k_bytetohex
	xref	~~k_strip_padding
	udata
~~KERNEL_FUNCTION_TABLE
	ds	4
	ends
	udata
~~k16buffer
	ds	16
	ends
	.sym	~~KERNEL_FUNCTION_TABLE,~~KERNEL_FUNCTION_TABLE,5249,3,32
	.sym	~~k16buffer,~~k16buffer,110,3,0,16
	.sym	~~FXOSVERSIONSTRING,~~FXOSVERSIONSTRING,142,3,32
	.sym	~~FXOSVERSION,~~FXOSVERSION,18,3,32
	.sym	va_list,0,142,14,32
	.sym	DEVICEDRIVER_COMMAND,0,656,14,32
	.sym	DEVICEDRIVER_UNLOAD,0,654,14,32
	.sym	DEVICEDRIVER_WRITE,0,656,14,32
	.sym	DEVICEDRIVER_READ,0,656,14,32
	.sym	DEVICEDRIVER_LOAD,0,654,14,32
	.sym	PFX_BLOCK_DEVICE_DRIVER,0,138,14,32,63
	.sym	FX_BLOCK_DEVICE_DRIVER,0,10,14,1448,63
	.sym	PFX_DEVICE_DRIVER,0,138,14,32,62
	.sym	FX_DEVICE_DRIVER,0,10,14,1416,62
	.sym	~~k_DebugOutString,~~k_DebugOutString,65,2,0
	.sym	~~k_get_c256_minor_version,~~k_get_c256_minor_version,65,2,0
	.sym	~~k_get_c256_major_version,~~k_get_c256_major_version,65,2,0
	.sym	~~k_get_fpga_date_year,~~k_get_fpga_date_year,65,2,0
	.sym	~~k_get_fpga_date_month,~~k_get_fpga_date_month,65,2,0
	.sym	~~k_get_fpga_date_day,~~k_get_fpga_date_day,65,2,0
	.sym	~~k_get_rtc_century,~~k_get_rtc_century,80,2,0
	.sym	~~k_get_rtc_year,~~k_get_rtc_year,80,2,0
	.sym	~~k_get_rtc_day,~~k_get_rtc_day,80,2,0
	.sym	~~k_get_rtc_month,~~k_get_rtc_month,80,2,0
	.sym	~~k_get_rtc_second,~~k_get_rtc_second,80,2,0
	.sym	~~k_get_rtc_minute,~~k_get_rtc_minute,80,2,0
	.sym	~~k_get_rtc_hour,~~k_get_rtc_hour,80,2,0
	.sym	~~k_debug_uart_status_com2,~~k_debug_uart_status_com2,65,2,0
	.sym	~~k_debug_uart_status_com1,~~k_debug_uart_status_com1,65,2,0
	.sym	~~k_debug_nodelist_with_data,~~k_debug_nodelist_with_data,65,2,0
	.sym	~~k_debug_nodelist_list,~~k_debug_nodelist_list,65,2,0
	.sym	~~k_debug_nodelist,~~k_debug_nodelist,65,2,0
	.sym	~~k_debug_node,~~k_debug_node,65,2,0
	.sym	~~k_debug_integers,~~k_debug_integers,65,2,0
	.sym	~~k_debug_crlf,~~k_debug_crlf,65,2,0
	.sym	~~k_debug_rect,~~k_debug_rect,65,2,0
	.sym	~~k_debug_nstrings,~~k_debug_nstrings,65,2,0
	.sym	~~k_debug_nmessage,~~k_debug_nmessage,65,2,0
	.sym	~~k_debug_strings,~~k_debug_strings,65,2,0
	.sym	~~k_debug_message,~~k_debug_message,65,2,0
	.sym	~~k_debug_byte_array,~~k_debug_byte_array,65,2,0
	.sym	~~k_debug_on,~~k_debug_on,65,2,0
	.sym	~~k_debug_bits,~~k_debug_bits,65,2,0
	.sym	~~k_debug_hexchar,~~k_debug_hexchar,65,2,0
	.sym	~~k_debug_hex,~~k_debug_hex,65,2,0
	.sym	~~k_debug_long,~~k_debug_long,65,2,0
	.sym	~~k_debug_integer_array,~~k_debug_integer_array,65,2,0
	.sym	~~k_debug_integer,~~k_debug_integer,65,2,0
	.sym	~~k_debug_pointer,~~k_debug_pointer,65,2,0
	.sym	~~k_debug_char,~~k_debug_char,65,2,0
	.sym	~~k_debug_nstring,~~k_debug_nstring,65,2,0
	.sym	~~k_debug_string,~~k_debug_string,65,2,0
	.sym	~~k_debug_nstring_com1,~~k_debug_nstring_com1,65,2,0
	.sym	~~k_debug_nstring_com2,~~k_debug_nstring_com2,65,2,0
	.sym	~~k_debug_string_com2,~~k_debug_string_com2,65,2,0
	.sym	~~k_debug_string_com1,~~k_debug_string_com1,65,2,0
	.sym	~~k_delay,~~k_delay,65,2,0
	.sym	~~k_report_configuration,~~k_report_configuration,69,2,0
	.sym	~~k_getFXOSVersionName,~~k_getFXOSVersionName,1102,2,32
	.sym	~~sleep,~~sleep,65,2,0
	.sym	~~k_delay_1ms,~~k_delay_1ms,65,2,0
	.sym	~~k_delay_1,~~k_delay_1,65,2,0
	.sym	~~k_delay_nop,~~k_delay_nop,65,2,0
	.sym	~~k_initializeZeroPage,~~k_initializeZeroPage,65,2,0
	.sym	~~k_getKernelTrapTable,~~k_getKernelTrapTable,42049,2,32
	.sym	~~k_getZeroPage,~~k_getZeroPage,1098,2,32,59
	.sym	PDEBUGBYTEBITS,0,138,14,32,61
	.sym	DEBUGBYTEBITS,0,10,14,8,61
	.sym	PFXENVIRONMENT,0,138,14,32,60
	.sym	FXENVIRONMENT,0,10,14,96,60
	.sym	PFXZERPOPAGE,0,138,14,32,59
	.sym	FXZERPOPAGE,0,10,14,448,59
	.sym	KERNELTRAPCALL,0,641,14,32
	.sym	~~k_put_color,~~k_put_color,69,18,0
	.sym	~~k_put_string,~~k_put_string,69,18,0
	.sym	~~k_put_char,~~k_put_char,65,18,0
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
	.sym	~~k_inttodec,~~k_inttodec,1102,18,32
	.sym	~~k_bytetodec,~~k_bytetodec,1102,18,32
	.sym	~~k_bytetohex,~~k_bytetohex,1102,18,32
	.sym	~~k_strip_padding,~~k_strip_padding,1102,18,32
	.sym	PFXSTRING,0,138,14,32,45
	.sym	FXSTRING,0,10,14,64,45
	.sym	PFXCOMBUFFER,0,138,14,32,44
	.sym	FXCOMBUFFER,0,10,14,2080,44
	.sym	PSUBMENULIST,0,138,14,32,43
	.sym	SUBMENULIST,0,10,14,40,43
	.sym	HSUBMENU,0,7,14,32
	.sym	PSUBMENU,0,138,14,32,42
	.sym	SUBMENU,0,10,14,64,42
	.sym	MenuAction,0,641,14,32
	.sym	PMENUANCHOR,0,138,14,32,41
	.sym	MENUANCHOR,0,10,14,144,41
	.sym	PTEXTBOX,0,138,14,32,40
	.sym	TEXTBOX,0,10,14,144,40
	.sym	PLISTBOX,0,138,14,32,39
	.sym	LISTBOX,0,10,14,240,39
	.sym	PSCROLLBAR,0,138,14,32,38
	.sym	SCROLLBAR,0,10,14,192,38
	.sym	PBUTTON,0,138,14,32,37
	.sym	BUTTON,0,10,14,80,37
	.sym	PMENUDROPDOWNDATA,0,138,14,32,36
	.sym	MENUDROPDOWNDATA,0,10,14,3568,36
	.sym	PMENUTAG,0,138,14,32,35
	.sym	MENUTAG,0,10,14,112,35
	.sym	PMENU,0,138,14,32,34
	.sym	MENU,0,10,14,248,34
	.sym	HMENURESOURCE,0,129,14,32
	.sym	HTEXTBOX,0,7,14,32
	.sym	PTEXTBOXX,0,138,14,32,33
	.sym	TEXTBOXX,0,10,14,112,33
	.sym	FONTMETRIC,0,10,14,32,32
	.sym	TITLE,0,142,14,32
	.sym	PHANDLE,0,1153,14,32
	.sym	HANDLE,0,129,14,32
	.sym	PWINDOWEX,0,138,14,32,31
	.sym	WINDOWEX,0,10,14,2704,31
	.sym	PWINDOW,0,138,14,32,30
	.sym	WINDOW,0,10,14,2808,30
	.sym	PDRAGDATA,0,138,14,32,29
	.sym	DRAGDATA,0,10,14,136,29
	.sym	PNCCLICKABLE,0,138,14,32,28
	.sym	NCCLICKABLE,0,10,14,88,28
	.sym	HCLICKABLE,0,7,14,32
	.sym	PCLICKABLE,0,138,14,32,27
	.sym	CLICKABLE,0,10,14,88,27
	.sym	PWNDCLASS,0,138,14,32,26
	.sym	WNDCLASS,0,10,14,256,26
	.sym	HBRUSH,0,129,14,32
	.sym	HCURSOR,0,129,14,32
	.sym	HICON,0,129,14,32
	.sym	HINSTANCE,0,129,14,32
	.sym	FXWndProc,0,654,14,32
	.sym	PRECT,0,138,14,32,25
	.sym	RECT,0,10,14,64,25
	.sym	PPOINT,0,138,14,32,24
	.sym	POINT,0,10,14,32,24
	.sym	PFXPROPERTY,0,138,14,32,22
	.sym	FXPROPERTY,0,10,14,384,22
	.sym	SCANCODE,0,14,14,8
	.sym	KEYCODE,0,14,14,8
	.sym	PFXPROCESSMESSAGE,0,138,14,32,21
	.sym	FXPROCESSMESSAGE,0,10,14,112,21
	.sym	PFXPROCESS,0,138,14,32,20
	.sym	FXPROCESS,0,10,14,800,20
	.sym	PDESKTOP_CONTROL,0,138,14,32,19
	.sym	DESKTOP_CONTROL,0,10,14,392,19
	.sym	PCONSOLE_CONTROL,0,138,14,32,18
	.sym	CONSOLE_CONTROL,0,10,14,448,18
	.sym	FXProcessProc,0,641,14,32
	.sym	PFXCMDMESSAGE,0,138,14,32,17
	.sym	FXCMDMESSAGE,0,10,14,304,17
	.sym	PFXOSMESSAGE,0,138,14,32,16
	.sym	FXOSMESSAGE,0,10,14,304,16
	.sym	PINT_REGS,0,138,14,32,15
	.sym	INT_REGS,0,10,14,104,15
	.sym	TASK_STACK,0,10,14,32,14
	.sym	TASK,0,10,14,48,13
	.sym	PIRQDATA,0,138,14,32,12
	.sym	IRQDATA,0,10,14,48,12
	.sym	HMENU,0,129,14,32
	.sym	HWND,0,129,14,32
	.sym	MSGDATA,0,14,14,8
	.sym	MSGDEST,0,18,14,32
	.sym	MSGSRC,0,18,14,32
	.sym	MSGTYPE,0,16,14,16
	.sym	PROCESS_RESOURCE_LIST,0,138,14,32,6
	.sym	PROCESS_TLS_LIST,0,138,14,32,6
	.sym	SEMAPHORE_LIST,0,138,14,32,6
	.sym	FILE_BLOCK_LIST,0,138,14,32,6
	.sym	FILE_PATH_LIST,0,138,14,32,6
	.sym	PROCEDURE_LIST,0,138,14,32,6
	.sym	FILE_HANDLE,0,138,14,32,11
	.sym	FILE_BLOCK,0,10,14,552,11
	.sym	SEMAPHORE,0,10,14,16,10
	.sym	PPROCESS_SIGNAL,0,138,14,32,9
	.sym	PROCESS_SIGNAL,0,10,14,16,9
	.sym	KRESULT,0,18,14,32
	.sym	PKERNEL_ERROR,0,138,14,32,8
	.sym	KERNEL_ERROR,0,10,14,32,8
	.sym	PROCESS_STATUS,0,16,14,16
	.sym	FILE_PATH_NAME,0,142,14,32
	.sym	PROCESS_RESOURCE,0,129,14,32
	.sym	PROCESS_TLS,0,129,14,32
	.sym	PROCESS_CTX,0,129,14,32
	.sym	USERID,0,16,14,16
	.sym	PROCESS_ID,0,18,14,32
	.sym	PROCESS_BANK,0,14,14,8
	.sym	PFXQUEUE,0,138,14,32,7
	.sym	FXQUEUE,0,10,14,80,7
	.sym	PFXNODELIST,0,138,14,32,6
	.sym	FXNODELIST,0,10,14,96,6
	.sym	NodeListDeallocator,0,641,14,32
	.sym	PFXNODE,0,138,14,32,5
	.sym	FXNODE,0,10,14,384,5
	.sym	PBYTEBITS,0,138,14,32,4
	.sym	BYTEBITS,0,10,14,8,4
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
	.sym	Boolean_T,0,5,14,16
	.sym	ldiv_t,0,10,14,64,2
	.sym	div_t,0,10,14,32,1
	.sym	wctype_t,0,16,14,16
	.sym	wint_t,0,16,14,16
	.sym	wchar_t,0,14,14,8
	.sym	ptrdiff_t,0,7,14,32
	.sym	size_t,0,16,14,16
	end

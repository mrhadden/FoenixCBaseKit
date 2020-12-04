;:ts=8
R0	equ	1
R1	equ	5
R2	equ	9
R3	equ	13
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxexec.c",0
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxexec.c",2
;#include "fxexec.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxexec.h",0
	.line	52
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxexec.c",3
;#include "fxmemorymanager.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxmemorymanager.h",0
	.line	39
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxexec.c",4
;#include "fxos_desktop_proc.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos_desktop_proc.h",0
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxtypes.h",0
	.line	708
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos_desktop_proc.h",5
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxc256fmx.h",0
	.line	1325
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos_desktop_proc.h",8
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxstring.h",0
	.line	71
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos_desktop_proc.h",13
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxeventmanager.h",0
	.line	743
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos_desktop_proc.h",14
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxgui.h",0
	.line	264
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos_desktop_proc.h",15
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxwindowmanager.h",0
	.line	362
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos_desktop_proc.h",16
	.line	62
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxexec.c",5
;
;//
;// SEH Variables
;//
;ULONG _k_exec_context 	= 0L;
	data
	xdef	~~_k_exec_context
~~_k_exec_context:
	dl	$0
	ends
;ULONG _k_exec_error		= 0L;
	data
	xdef	~~_k_exec_error
~~_k_exec_error:
	dl	$0
	ends
;UCHAR _k_exec_message[64];
;//
;//
;//
;static PFXPROCESS _k_processList[MAX_PROCESS];
;static PFXPROCESS _k_current_Process = NULL;
	data
~~_k_current_Process:
	dl	$0
	ends
;//
;//
;static PFXPROCESS  _exec_Process 				= NULL;
	data
~~_exec_Process:
	dl	$0
	ends
;static PFXNODELIST _k_execManager_ProcesssList 	= NULL;
	data
~~_k_execManager_ProcesssList:
	dl	$0
	ends
;//
;// SEH MODULE ID
;//
;static ULONG THIS_MODULE = 0x00000000;
	data
~~THIS_MODULE:
	dl	$0
	ends
;//
;//
;//
;
;void k_initalize_executive(void)
;{
	.line	30
	.line	31
	code
	xdef	~~k_initalize_executive
	func
	.function	31
~~k_initalize_executive:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L2
	tcs
	phd
	tcd
	.block	31
;	int index = 0;
;
;	_k_execManager_ProcesssList = k_nodelist_allocate_list("_process_task_list" ,k_deallocate_process_task);
index_1	set	0
	.sym	index,0,5,1,16
	stz	<L3+index_1
	.line	34
	pea	#^~~k_deallocate_process_task
	pea	#<~~k_deallocate_process_task
	pea	#^L1
	pea	#<L1
	jsl	~~k_nodelist_allocate_list
	sta	|~~_k_execManager_ProcesssList
	stx	|~~_k_execManager_ProcesssList+2
;
;	for(index=0;index<MAX_PROCESS;index++)
	.line	36
	stz	<L3+index_1
L10003:
;	{
	.line	37
;		_k_processList[index] = NULL;
	.line	38
	lda	<L3+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~_k_processList
	adc	<R0
	sta	<R1
	lda	#$0
	sta	(<R1)
	lda	#$0
	ldy	#$2
	sta	(<R1),Y
;	}
	.line	39
L10001:
	inc	<L3+index_1
	sec
	lda	<L3+index_1
	sbc	#<$20
	bvs	L5
	eor	#$8000
L5:
	bmi	L6
	brl	L10003
L6:
L10002:
;
;	_exec_Process = k_mem_allocate_heap(sizeof(FXPROCESS));
	.line	41
	pea	#<$64
	jsl	~~k_mem_allocate_heap
	sta	|~~_exec_Process
	stx	|~~_exec_Process+2
;	if(_exec_Process)
	.line	42
;	{
	lda	|~~_exec_Process
	ora	|~~_exec_Process+2
	bne	L7
	brl	L10004
L7:
	.line	43
;		memset(_exec_Process,0,sizeof(FXPROCESS));
	.line	44
	pea	#<$64
	pea	#<$0
	lda	|~~_exec_Process+2
	pha
	lda	|~~_exec_Process
	pha
	jsl	~~memset
;
;		_exec_Process->cbSize      = sizeof(FXPROCESS);
	.line	46
	lda	|~~_exec_Process
	sta	<R0
	lda	|~~_exec_Process+2
	sta	<R0+2
	lda	#$64
	sta	[<R0]
;		_exec_Process->procId      = 0xFFFF0000;
	.line	47
	lda	|~~_exec_Process
	sta	<R0
	lda	|~~_exec_Process+2
	sta	<R0+2
	lda	#$0
	ldy	#$2
	sta	[<R0],Y
	lda	#$ffff
	ldy	#$4
	sta	[<R0],Y
;		_exec_Process->parentId    = 0x00000000;
	.line	48
	lda	|~~_exec_Process
	sta	<R0
	lda	|~~_exec_Process+2
	sta	<R0+2
	lda	#$0
	ldy	#$6
	sta	[<R0],Y
	lda	#$0
	ldy	#$8
	sta	[<R0],Y
;		_exec_Process->commandLine = k_string_copy_string("@/executive");
	.line	49
	lda	|~~_exec_Process
	sta	<R0
	lda	|~~_exec_Process+2
	sta	<R0+2
	pea	#^L1+19
	pea	#<L1+19
	jsl	~~k_string_copy_string
	sta	<R1
	stx	<R1+2
	lda	<R1
	ldy	#$33
	sta	[<R0],Y
	lda	<R1+2
	ldy	#$35
	sta	[<R0],Y
;
;		k_nodelist_naddtolist(_k_execManager_ProcesssList,NL_TYPE_PROCESS,_exec_Process->procId,_exec_Process);
	.line	51
	lda	|~~_exec_Process+2
	pha
	lda	|~~_exec_Process
	pha
	lda	|~~_exec_Process
	sta	<R0
	lda	|~~_exec_Process+2
	sta	<R0+2
	ldy	#$4
	lda	[<R0],Y
	pha
	ldy	#$2
	lda	[<R0],Y
	pha
	pea	#<$fe
	lda	|~~_k_execManager_ProcesssList+2
	pha
	lda	|~~_k_execManager_ProcesssList
	pha
	jsl	~~k_nodelist_naddtolist
;	}
	.line	52
;}
L10004:
	.line	53
L8:
	pld
	tsc
	clc
	adc	#L2
	tcs
	rtl
	.endblock	53
L2	equ	10
L3	equ	9
	ends
	efunc
	.endfunc	53,9,10
	.line	53
	data
L1:
	db	$5F,$70,$72,$6F,$63,$65,$73,$73,$5F,$74,$61,$73,$6B,$5F,$6C
	db	$69,$73,$74,$00,$40,$2F,$65,$78,$65,$63,$75,$74,$69,$76,$65
	db	$00
	ends
;
;void k_deallocate_process_task(LPCSTR name,LPVOID pdata)
;{
	.line	55
	.line	56
	code
	xdef	~~k_deallocate_process_task
	func
	.function	56
~~k_deallocate_process_task:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L10
	tcs
	phd
	tcd
name_0	set	4
pdata_0	set	8
	.block	56
;
;}
	.sym	name,4,142,6,32
	.sym	pdata,8,129,6,32
	.line	58
L13:
	lda	<L10+2
	sta	<L10+2+8
	lda	<L10+1
	sta	<L10+1+8
	pld
	tsc
	clc
	adc	#L10+8
	tcs
	rtl
	.endblock	58
L10	equ	0
L11	equ	1
	ends
	efunc
	.endfunc	58,1,0
	.line	58
;
;void debug_process_node(LPVOID ctx,LPVOID data)
;{
	.line	60
	.line	61
	code
	xdef	~~debug_process_node
	func
	.function	61
~~debug_process_node:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L14
	tcs
	phd
	tcd
ctx_0	set	4
data_0	set	8
	.block	61
;	PFXPROCESS pproc = (PFXPROCESS)data;
;	if(pproc)
pproc_1	set	0
	.sym	pproc,0,138,1,32,20
	.sym	ctx,4,129,6,32
	.sym	data,8,129,6,32
	lda	<L14+data_0
	sta	<L15+pproc_1
	lda	<L14+data_0+2
	sta	<L15+pproc_1+2
	.line	63
;	{
	lda	<L15+pproc_1
	ora	<L15+pproc_1+2
	bne	L17
	brl	L10005
L17:
	.line	64
;		k_debug_strings("      PROCESS  CMDLN:",(LPCHAR)pproc->commandLine);
	.line	65
	ldy	#$35
	lda	[<L15+pproc_1],Y
	pha
	ldy	#$33
	lda	[<L15+pproc_1],Y
	pha
	pea	#^L9
	pea	#<L9
	jsl	~~k_debug_strings
;		k_debug_long   ("      PROCESS    PID:",pproc->procId);
	.line	66
	ldy	#$4
	lda	[<L15+pproc_1],Y
	pha
	ldy	#$2
	lda	[<L15+pproc_1],Y
	pha
	pea	#^L9+22
	pea	#<L9+22
	jsl	~~k_debug_long
;		k_debug_long   ("      PROCESS   PPID:",pproc->parentId);
	.line	67
	ldy	#$8
	lda	[<L15+pproc_1],Y
	pha
	ldy	#$6
	lda	[<L15+pproc_1],Y
	pha
	pea	#^L9+44
	pea	#<L9+44
	jsl	~~k_debug_long
;		k_debug_long   ("      PROCESS STATUS:",pproc->status);
	.line	68
	ldy	#$10
	lda	[<L15+pproc_1],Y
	sta	<R0
	stz	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L9+66
	pea	#<L9+66
	jsl	~~k_debug_long
;		k_debug_pointer("      PROCESS    PTR:",pproc);
	.line	69
	pei	<L15+pproc_1+2
	pei	<L15+pproc_1
	pea	#^L9+88
	pea	#<L9+88
	jsl	~~k_debug_pointer
;		k_debug_pointer("      PROCESS   PPTR:",pproc->execProc);
	.line	70
	ldy	#$5e
	lda	[<L15+pproc_1],Y
	pha
	ldy	#$5c
	lda	[<L15+pproc_1],Y
	pha
	pea	#^L9+110
	pea	#<L9+110
	jsl	~~k_debug_pointer
;	}
	.line	71
;}
L10005:
	.line	72
L18:
	lda	<L14+2
	sta	<L14+2+8
	lda	<L14+1
	sta	<L14+1+8
	pld
	tsc
	clc
	adc	#L14+8
	tcs
	rtl
	.endblock	72
L14	equ	8
L15	equ	5
	ends
	efunc
	.endfunc	72,5,8
	.line	72
	data
L9:
	db	$20,$20,$20,$20,$20,$20,$50,$52,$4F,$43,$45,$53,$53,$20,$20
	db	$43,$4D,$44,$4C,$4E,$3A,$00,$20,$20,$20,$20,$20,$20,$50,$52
	db	$4F,$43,$45,$53,$53,$20,$20,$20,$20,$50,$49,$44,$3A,$00,$20
	db	$20,$20,$20,$20,$20,$50,$52,$4F,$43,$45,$53,$53,$20,$20,$20
	db	$50,$50,$49,$44,$3A,$00,$20,$20,$20,$20,$20,$20,$50,$52,$4F
	db	$43,$45,$53,$53,$20,$53,$54,$41,$54,$55,$53,$3A,$00,$20,$20
	db	$20,$20,$20,$20,$50,$52,$4F,$43,$45,$53,$53,$20,$20,$20,$20
	db	$50,$54,$52,$3A,$00,$20,$20,$20,$20,$20,$20,$50,$52,$4F,$43
	db	$45,$53,$53,$20,$20,$20,$50,$50,$54,$52,$3A,$00
	ends
;
;PFXPROCESS FAR *k_exec_process_list(void)
;{
	.line	74
	.line	75
	code
	xdef	~~k_exec_process_list
	func
	.function	75
~~k_exec_process_list:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L20
	tcs
	phd
	tcd
	.block	75
;	return _k_processList;
	.line	76
	lda	#<~~_k_processList
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	ldx	<R0+2
	lda	<R0
L23:
	tay
	pld
	tsc
	clc
	adc	#L20
	tcs
	tya
	rtl
;}
	.line	77
	.endblock	77
L20	equ	4
L21	equ	5
	ends
	efunc
	.endfunc	77,5,4
	.line	77
;
;PROCESS_ID k_exec_nextprocess(PFXPROCESS process)
;{
	.line	79
	.line	80
	code
	xdef	~~k_exec_nextprocess
	func
	.function	80
~~k_exec_nextprocess:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L24
	tcs
	phd
	tcd
process_0	set	4
	.block	80
;	PROCESS_ID pid = INVALID_HANDLE;
;
;	int index = 0;
;
;	for(index=0;index<MAX_PROCESS;index++)
pid_1	set	0
index_1	set	4
	.sym	pid,0,18,1,32
	.sym	index,4,5,1,16
	.sym	process,4,138,6,32,20
	lda	#$ffff
	sta	<L25+pid_1
	lda	#$ffff
	sta	<L25+pid_1+2
	stz	<L25+index_1
	.line	85
	stz	<L25+index_1
L10008:
;	{
	.line	86
;		if(_k_processList[index] == NULL)
	.line	87
;		{
	lda	<L25+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~_k_processList
	adc	<R0
	sta	<R1
	lda	(<R1)
	ldy	#$2
	ora	(<R1),Y
	beq	L27
	brl	L10009
L27:
	.line	88
;			pid = (index | 0x0000A000);
	.line	89
	lda	<L25+index_1
	ora	#<$a000
	sta	<R0
	lda	<R0
	sta	<L25+pid_1
	stz	<L25+pid_1+2
;			_k_processList[index] = process;
	.line	90
	lda	<L25+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~_k_processList
	adc	<R0
	sta	<R1
	lda	<L24+process_0
	sta	(<R1)
	lda	<L24+process_0+2
	ldy	#$2
	sta	(<R1),Y
;			process->procId = pid;
	.line	91
	lda	<L25+pid_1
	ldy	#$2
	sta	[<L24+process_0],Y
	lda	<L25+pid_1+2
	ldy	#$4
	sta	[<L24+process_0],Y
;			process->status = PROCESS_STATUS_INIT;
	.line	92
	lda	#$0
	ldy	#$10
	sta	[<L24+process_0],Y
;			break;
	.line	93
	brl	L10007
;		}
	.line	94
;	}
L10009:
	.line	95
L10006:
	inc	<L25+index_1
	sec
	lda	<L25+index_1
	sbc	#<$20
	bvs	L28
	eor	#$8000
L28:
	bmi	L29
	brl	L10008
L29:
L10007:
;
;	return pid;
	.line	97
	ldx	<L25+pid_1+2
	lda	<L25+pid_1
L30:
	tay
	lda	<L24+2
	sta	<L24+2+4
	lda	<L24+1
	sta	<L24+1+4
	pld
	tsc
	clc
	adc	#L24+4
	tcs
	tya
	rtl
;}
	.line	98
	.endblock	98
L24	equ	14
L25	equ	9
	ends
	efunc
	.endfunc	98,9,14
	.line	98
;
;PFXPROCESS k_exec_get_process(PROCESS_ID procId)
;{
	.line	100
	.line	101
	code
	xdef	~~k_exec_get_process
	func
	.function	101
~~k_exec_get_process:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L31
	tcs
	phd
	tcd
procId_0	set	4
	.block	101
;	PFXPROCESS p = NULL;
;
;	int index = 0;
;
;	for(index=0;index<MAX_PROCESS;index++)
p_1	set	0
index_1	set	4
	.sym	p,0,138,1,32,20
	.sym	index,4,5,1,16
	.sym	procId,4,18,6,32
	stz	<L32+p_1
	stz	<L32+p_1+2
	stz	<L32+index_1
	.line	106
	stz	<L32+index_1
L10012:
;	{
	.line	107
;		if(_k_processList[index]->procId == procId)
	.line	108
;		{
	lda	<L32+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~_k_processList
	adc	<R0
	sta	<R1
	lda	(<R1)
	sta	<R0
	ldy	#$2
	lda	(<R1),Y
	sta	<R0+2
	ldy	#$2
	lda	[<R0],Y
	cmp	<L31+procId_0
	bne	L34
	ldy	#$4
	lda	[<R0],Y
	cmp	<L31+procId_0+2
L34:
	beq	L35
	brl	L10013
L35:
	.line	109
;			p = _k_processList[index];
	.line	110
	lda	<L32+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~_k_processList
	adc	<R0
	sta	<R1
	lda	(<R1)
	sta	<L32+p_1
	ldy	#$2
	lda	(<R1),Y
	sta	<L32+p_1+2
;			break;
	.line	111
	brl	L10011
;		}
	.line	112
;	}
L10013:
	.line	113
L10010:
	inc	<L32+index_1
	sec
	lda	<L32+index_1
	sbc	#<$20
	bvs	L36
	eor	#$8000
L36:
	bmi	L37
	brl	L10012
L37:
L10011:
;
;	return p;
	.line	115
	ldx	<L32+p_1+2
	lda	<L32+p_1
L38:
	tay
	lda	<L31+2
	sta	<L31+2+4
	lda	<L31+1
	sta	<L31+1+4
	pld
	tsc
	clc
	adc	#L31+4
	tcs
	tya
	rtl
;}
	.line	116
	.endblock	116
L31	equ	14
L32	equ	9
	ends
	efunc
	.endfunc	116,9,14
	.line	116
;
;
;PFXPROCESS k_exec_get_process_byname(LPCSTR processName)
;{
	.line	119
	.line	120
	code
	xdef	~~k_exec_get_process_byname
	func
	.function	120
~~k_exec_get_process_byname:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L39
	tcs
	phd
	tcd
processName_0	set	4
	.block	120
;	PFXPROCESS pproc = NULL;
;	PFXNODE node = NULL;
;
;	if(_k_execManager_ProcesssList)
pproc_1	set	0
node_1	set	4
	.sym	pproc,0,138,1,32,20
	.sym	node,4,138,1,32,5
	.sym	processName,4,142,6,32
	stz	<L40+pproc_1
	stz	<L40+pproc_1+2
	stz	<L40+node_1
	stz	<L40+node_1+2
	.line	124
;	{
	lda	|~~_k_execManager_ProcesssList
	ora	|~~_k_execManager_ProcesssList+2
	bne	L42
	brl	L10014
L42:
	.line	125
;		node = k_nodelist_getname(_k_execManager_ProcesssList->listhead->next,processName);
	.line	126
	pei	<L39+processName_0+2
	pei	<L39+processName_0
	lda	|~~_k_execManager_ProcesssList
	sta	<R0
	lda	|~~_k_execManager_ProcesssList+2
	sta	<R0+2
	lda	[<R0]
	sta	<R1
	ldy	#$2
	lda	[<R0],Y
	sta	<R1+2
	ldy	#$c
	lda	[<R1],Y
	pha
	ldy	#$a
	lda	[<R1],Y
	pha
	jsl	~~k_nodelist_getname
	sta	<L40+node_1
	stx	<L40+node_1+2
;		if(node)
	.line	127
;		{
	lda	<L40+node_1
	ora	<L40+node_1+2
	bne	L43
	brl	L10015
L43:
	.line	128
;			pproc = node->data;
	.line	129
	ldy	#$2
	lda	[<L40+node_1],Y
	sta	<L40+pproc_1
	ldy	#$4
	lda	[<L40+node_1],Y
	sta	<L40+pproc_1+2
;		}
	.line	130
;	}
L10015:
	.line	131
;
;	return pproc;
L10014:
	.line	133
	ldx	<L40+pproc_1+2
	lda	<L40+pproc_1
L44:
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
	.line	134
	.endblock	134
L39	equ	16
L40	equ	9
	ends
	efunc
	.endfunc	134,9,16
	.line	134
;
;
;void k_exec_set_process_foreground(PFXPROCESS process,BOOL fActive)
;{
	.line	137
	.line	138
	code
	xdef	~~k_exec_set_process_foreground
	func
	.function	138
~~k_exec_set_process_foreground:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L45
	tcs
	phd
	tcd
process_0	set	4
fActive_0	set	8
	.block	138
;	if(process!=NULL)
	.sym	process,4,138,6,32,20
	.sym	fActive,8,14,6,8
	.line	139
;	{
	lda	<L45+process_0
	ora	<L45+process_0+2
	bne	L48
	brl	L10016
L48:
	.line	140
;		process->foregroundActive = fActive;
	.line	141
	sep	#$20
	longa	off
	lda	<L45+fActive_0
	ldy	#$12
	sta	[<L45+process_0],Y
	rep	#$20
	longa	on
;	}
	.line	142
;}
L10016:
	.line	143
L49:
	lda	<L45+2
	sta	<L45+2+6
	lda	<L45+1
	sta	<L45+1+6
	pld
	tsc
	clc
	adc	#L45+6
	tcs
	rtl
	.endblock	143
L45	equ	0
L46	equ	1
	ends
	efunc
	.endfunc	143,1,0
	.line	143
;
;void k_exec_start_process(PROCESS_ID procId)
;{
	.line	145
	.line	146
	code
	xdef	~~k_exec_start_process
	func
	.function	146
~~k_exec_start_process:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L50
	tcs
	phd
	tcd
procId_0	set	4
	.block	146
;	PFXPROCESS p = NULL;
;
;	int index = 0;
;
;	for(index=0;index<MAX_PROCESS;index++)
p_1	set	0
index_1	set	4
	.sym	p,0,138,1,32,20
	.sym	index,4,5,1,16
	.sym	procId,4,18,6,32
	stz	<L51+p_1
	stz	<L51+p_1+2
	stz	<L51+index_1
	.line	151
	stz	<L51+index_1
L10019:
;	{
	.line	152
;		if(_k_processList[index]->procId == procId)
	.line	153
;		{
	lda	<L51+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~_k_processList
	adc	<R0
	sta	<R1
	lda	(<R1)
	sta	<R0
	ldy	#$2
	lda	(<R1),Y
	sta	<R0+2
	ldy	#$2
	lda	[<R0],Y
	cmp	<L50+procId_0
	bne	L53
	ldy	#$4
	lda	[<R0],Y
	cmp	<L50+procId_0+2
L53:
	beq	L54
	brl	L10020
L54:
	.line	154
;			p = _k_processList[index];
	.line	155
	lda	<L51+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~_k_processList
	adc	<R0
	sta	<R1
	lda	(<R1)
	sta	<L51+p_1
	ldy	#$2
	lda	(<R1),Y
	sta	<L51+p_1+2
;
;
;			break;
	.line	158
	brl	L10018
;		}
	.line	159
;	}
L10020:
	.line	160
L10017:
	inc	<L51+index_1
	sec
	lda	<L51+index_1
	sbc	#<$20
	bvs	L55
	eor	#$8000
L55:
	bmi	L56
	brl	L10019
L56:
L10018:
;
;}
	.line	162
L57:
	lda	<L50+2
	sta	<L50+2+4
	lda	<L50+1
	sta	<L50+1+4
	pld
	tsc
	clc
	adc	#L50+4
	tcs
	rtl
	.endblock	162
L50	equ	14
L51	equ	9
	ends
	efunc
	.endfunc	162,9,14
	.line	162
;
;PFXPROCESS k_exec_launchProcess(LPCHAR commandLine)
;{
	.line	164
	.line	165
	code
	xdef	~~k_exec_launchProcess
	func
	.function	165
~~k_exec_launchProcess:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L58
	tcs
	phd
	tcd
commandLine_0	set	4
	.block	165
;	PFXPROCESS process = NULL;
;	FXProcessProc processProc = NULL;
;
;	if(commandLine)
process_1	set	0
processProc_1	set	4
	.sym	process,0,138,1,32,20
	.sym	processProc,4,641,1,32
	.sym	commandLine,4,142,6,32
	stz	<L59+process_1
	stz	<L59+process_1+2
	stz	<L59+processProc_1
	stz	<L59+processProc_1+2
	.line	169
;	{
	lda	<L58+commandLine_0
	ora	<L58+commandLine_0+2
	bne	L61
	brl	L10021
L61:
	.line	170
;		k_debug_strings("k_exec_launchProcess:",commandLine);
	.line	171
	pei	<L58+commandLine_0+2
	pei	<L58+commandLine_0
	pea	#^L19
	pea	#<L19
	jsl	~~k_debug_strings
;
;		if(commandLine[0] == '@')
	.line	173
;		{
	sep	#$20
	longa	off
	lda	[<L58+commandLine_0]
	cmp	#<$40
	rep	#$20
	longa	on
	beq	L62
	brl	L10022
L62:
	.line	174
;			if(strcmp(commandLine,"@/console") == 0)
	.line	175
;			{
	pea	#^L19+22
	pea	#<L19+22
	pei	<L58+commandLine_0+2
	pei	<L58+commandLine_0
	jsl	~~strcmp
	tax
	beq	L63
	brl	L10023
L63:
	.line	176
;				processProc = DefConsoleProc;
	.line	177
	lda	#<~~DefConsoleProc
	sta	<L59+processProc_1
	lda	#^~~DefConsoleProc
	sta	<L59+processProc_1+2
;			}
	.line	178
;			else if(strcmp(commandLine,"@/desktop") == 0)
	brl	L10024
L10023:
	.line	179
;			{
	pea	#^L19+32
	pea	#<L19+32
	pei	<L58+commandLine_0+2
	pei	<L58+commandLine_0
	jsl	~~strcmp
	tax
	beq	L64
	brl	L10025
L64:
	.line	180
;				processProc = DesktopEnvironmentProc;
	.line	181
	lda	#<~~DesktopEnvironmentProc
	sta	<L59+processProc_1
	lda	#^~~DesktopEnvironmentProc
	sta	<L59+processProc_1+2
;			}
	.line	182
;			else if(strcmp(commandLine,"@/idle") == 0)
	brl	L10026
L10025:
	.line	183
;			{
	pea	#^L19+42
	pea	#<L19+42
	pei	<L58+commandLine_0+2
	pei	<L58+commandLine_0
	jsl	~~strcmp
	tax
	beq	L65
	brl	L10027
L65:
	.line	184
;				processProc = IdleProc;
	.line	185
	lda	#<~~IdleProc
	sta	<L59+processProc_1
	lda	#^~~IdleProc
	sta	<L59+processProc_1+2
;			}
	.line	186
;		}
L10027:
L10026:
L10024:
	.line	187
;
;		if(processProc)
L10022:
	.line	189
;			process = k_exec_createProcess(commandLine,processProc,NULL);
	lda	<L59+processProc_1
	ora	<L59+processProc_1+2
	bne	L66
	brl	L10028
L66:
	.line	190
	pea	#^$0
	pea	#<$0
	pei	<L59+processProc_1+2
	pei	<L59+processProc_1
	pei	<L58+commandLine_0+2
	pei	<L58+commandLine_0
	jsl	~~k_exec_createProcess
	sta	<L59+process_1
	stx	<L59+process_1+2
;	}
L10028:
	.line	191
;	else
	brl	L10029
L10021:
;	{
	.line	193
;
;	}
	.line	195
L10029:
;
;
;	return process;
	.line	198
	ldx	<L59+process_1+2
	lda	<L59+process_1
L67:
	tay
	lda	<L58+2
	sta	<L58+2+4
	lda	<L58+1
	sta	<L58+1+4
	pld
	tsc
	clc
	adc	#L58+4
	tcs
	tya
	rtl
;}
	.line	199
	.endblock	199
L58	equ	8
L59	equ	1
	ends
	efunc
	.endfunc	199,1,8
	.line	199
	data
L19:
	db	$6B,$5F,$65,$78,$65,$63,$5F,$6C,$61,$75,$6E,$63,$68,$50,$72
	db	$6F,$63,$65,$73,$73,$3A,$00,$40,$2F,$63,$6F,$6E,$73,$6F,$6C
	db	$65,$00,$40,$2F,$64,$65,$73,$6B,$74,$6F,$70,$00,$40,$2F,$69
	db	$64,$6C,$65,$00
	ends
;
;PFXPROCESS k_exec_createProcess(LPCHAR commandLine,FXProcessProc processProc,LPVOID startupArgs)
;{
	.line	201
	.line	202
	code
	xdef	~~k_exec_createProcess
	func
	.function	202
~~k_exec_createProcess:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L69
	tcs
	phd
	tcd
commandLine_0	set	4
processProc_0	set	8
startupArgs_0	set	12
	.block	202
;	PFXPROCESS process = NULL;
;	PROCESS_ID processId = INVALID_HANDLE;
;
;	if(!processProc)
process_1	set	0
processId_1	set	4
	.sym	process,0,138,1,32,20
	.sym	processId,4,18,1,32
	.sym	commandLine,4,142,6,32
	.sym	processProc,8,641,6,32
	.sym	startupArgs,12,129,6,32
	stz	<L70+process_1
	stz	<L70+process_1+2
	lda	#$ffff
	sta	<L70+processId_1
	lda	#$ffff
	sta	<L70+processId_1+2
	.line	206
;		return NULL;
	lda	<L69+processProc_0
	ora	<L69+processProc_0+2
	beq	L72
	brl	L10030
L72:
	.line	207
	lda	#$0
	tax
	lda	#$0
L73:
	tay
	lda	<L69+2
	sta	<L69+2+12
	lda	<L69+1
	sta	<L69+1+12
	pld
	tsc
	clc
	adc	#L69+12
	tcs
	tya
	rtl
;
;	k_debug_pointer("k_exec_createProcess::processProc:",processProc);
L10030:
	.line	209
	pei	<L69+processProc_0+2
	pei	<L69+processProc_0
	pea	#^L68
	pea	#<L68
	jsl	~~k_debug_pointer
;
;	process = (PFXPROCESS)k_mem_allocate_heap(sizeof(FXPROCESS));
	.line	211
	pea	#<$64
	jsl	~~k_mem_allocate_heap
	sta	<L70+process_1
	stx	<L70+process_1+2
;	if(process)
	.line	212
;	{
	lda	<L70+process_1
	ora	<L70+process_1+2
	bne	L74
	brl	L10031
L74:
	.line	213
;		memset(process,0,sizeof(FXPROCESS));
	.line	214
	pea	#<$64
	pea	#<$0
	pei	<L70+process_1+2
	pei	<L70+process_1
	jsl	~~memset
;		process->cbSize = sizeof(FXPROCESS);
	.line	215
	lda	#$64
	sta	[<L70+process_1]
;		if(commandLine!=NULL)
	.line	216
;		{
	lda	<L69+commandLine_0
	ora	<L69+commandLine_0+2
	bne	L75
	brl	L10032
L75:
	.line	217
;			process->commandLine = k_string_copy_string(commandLine);
	.line	218
	pei	<L69+commandLine_0+2
	pei	<L69+commandLine_0
	jsl	~~k_string_copy_string
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$33
	sta	[<L70+process_1],Y
	lda	<R0+2
	ldy	#$35
	sta	[<L70+process_1],Y
;		}
	.line	219
;		//processId = k_exec_nextprocess(process);
;		process->procId = k_exec_nextprocess(process);
L10032:
	.line	221
	pei	<L70+process_1+2
	pei	<L70+process_1
	jsl	~~k_exec_nextprocess
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$2
	sta	[<L70+process_1],Y
	lda	<R0+2
	ldy	#$4
	sta	[<L70+process_1],Y
;		if(process->procId == INVALID_HANDLE)
	.line	222
;		{
	ldy	#$2
	lda	[<L70+process_1],Y
	cmp	#<$ffffffff
	bne	L76
	ldy	#$4
	lda	[<L70+process_1],Y
	cmp	#^$ffffffff
L76:
	beq	L77
	brl	L10033
L77:
	.line	223
;			k_exec_throw_exception(THIS_MODULE,0x000A0000,"Kernel returned invalid process id.",-1);
	.line	224
	pea	#<$ffffffff
	pea	#^L68+35
	pea	#<L68+35
	pea	#^$a0000
	pea	#<$a0000
	lda	|~~THIS_MODULE+2
	pha
	lda	|~~THIS_MODULE
	pha
	jsl	~~k_exec_throw_exception
;		}
	.line	225
;		process->parentId = 0L;
L10033:
	.line	226
	lda	#$0
	ldy	#$6
	sta	[<L70+process_1],Y
	lda	#$0
	ldy	#$8
	sta	[<L70+process_1],Y
;		if(k_exec_get_current_process())
	.line	227
;		{
	jsl	~~k_exec_get_current_process
	sta	<R0
	stx	<R0+2
	lda	<R0
	ora	<R0+2
	bne	L78
	brl	L10034
L78:
	.line	228
;			k_debug_pointer("k_exec_createProcess::k_exec_get_current_process:",k_exec_get_current_process());
	.line	229
	jsl	~~k_exec_get_current_process
	sta	<R0
	stx	<R0+2
	phx
	pha
	pea	#^L68+71
	pea	#<L68+71
	jsl	~~k_debug_pointer
;			process->parentId = k_exec_get_current_process()->procId;
	.line	230
	jsl	~~k_exec_get_current_process
	sta	<R0
	stx	<R0+2
	ldy	#$2
	lda	[<R0],Y
	ldy	#$6
	sta	[<L70+process_1],Y
	ldy	#$4
	lda	[<R0],Y
	ldy	#$8
	sta	[<L70+process_1],Y
;		}
	.line	231
;		//process->execProc = k_nodelist_create(PFXNODE_PROCEDURE_TYPE,NULL,processProc,NULL,NULL);
;		process->execProc = processProc;
L10034:
	.line	233
	lda	<L69+processProc_0
	ldy	#$5c
	sta	[<L70+process_1],Y
	lda	<L69+processProc_0+2
	ldy	#$5e
	sta	[<L70+process_1],Y
;		process->status = PROCESS_STATUS_READY;
	.line	234
	lda	#$f0
	ldy	#$10
	sta	[<L70+process_1],Y
;		process->foregroundActive = FALSE;
	.line	235
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$12
	sta	[<L70+process_1],Y
	rep	#$20
	longa	on
;		process->startupArgs = startupArgs;
	.line	236
	lda	<L69+startupArgs_0
	ldy	#$60
	sta	[<L70+process_1],Y
	lda	<L69+startupArgs_0+2
	ldy	#$62
	sta	[<L70+process_1],Y
;		//k_nodelist_naddtolist(_k_execManager_ProcesssList,NL_TYPE_PROCESS,process->procId,process);
;
;		//k_debug_nodelist_list(_k_execManager_ProcesssList,debug_process_node);
;
;		//k_heap_integrity_check();
;
;	}
	.line	243
;	return process;
L10031:
	.line	244
	ldx	<L70+process_1+2
	lda	<L70+process_1
	brl	L73
;}
	.line	245
	.endblock	245
L69	equ	12
L70	equ	5
	ends
	efunc
	.endfunc	245,5,12
	.line	245
	data
L68:
	db	$6B,$5F,$65,$78,$65,$63,$5F,$63,$72,$65,$61,$74,$65,$50,$72
	db	$6F,$63,$65,$73,$73,$3A,$3A,$70,$72,$6F,$63,$65,$73,$73,$50
	db	$72,$6F,$63,$3A,$00,$4B,$65,$72,$6E,$65,$6C,$20,$72,$65,$74
	db	$75,$72,$6E,$65,$64,$20,$69,$6E,$76,$61,$6C,$69,$64,$20,$70
	db	$72,$6F,$63,$65,$73,$73,$20,$69,$64,$2E,$00,$6B,$5F,$65,$78
	db	$65,$63,$5F,$63,$72,$65,$61,$74,$65,$50,$72,$6F,$63,$65,$73
	db	$73,$3A,$3A,$6B,$5F,$65,$78,$65,$63,$5F,$67,$65,$74,$5F,$63
	db	$75,$72,$72,$65,$6E,$74,$5F,$70,$72,$6F,$63,$65,$73,$73,$3A
	db	$00
	ends
;
;PFXPROCESS k_exec_set_current_process(PFXPROCESS currentProcess)
;{
	.line	247
	.line	248
	code
	xdef	~~k_exec_set_current_process
	func
	.function	248
~~k_exec_set_current_process:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L80
	tcs
	phd
	tcd
currentProcess_0	set	4
	.block	248
;	PFXPROCESS previousProcess = _k_current_Process;
;
;	_k_current_Process = currentProcess;
previousProcess_1	set	0
	.sym	previousProcess,0,138,1,32,20
	.sym	currentProcess,4,138,6,32,20
	lda	|~~_k_current_Process
	sta	<L81+previousProcess_1
	lda	|~~_k_current_Process+2
	sta	<L81+previousProcess_1+2
	.line	251
	lda	<L80+currentProcess_0
	sta	|~~_k_current_Process
	lda	<L80+currentProcess_0+2
	sta	|~~_k_current_Process+2
;
;	return previousProcess;
	.line	253
	ldx	<L81+previousProcess_1+2
	lda	<L81+previousProcess_1
L83:
	tay
	lda	<L80+2
	sta	<L80+2+4
	lda	<L80+1
	sta	<L80+1+4
	pld
	tsc
	clc
	adc	#L80+4
	tcs
	tya
	rtl
;}
	.line	254
	.endblock	254
L80	equ	4
L81	equ	1
	ends
	efunc
	.endfunc	254,1,4
	.line	254
;
;PFXPROCESS k_exec_get_current_process(void)
;{
	.line	256
	.line	257
	code
	xdef	~~k_exec_get_current_process
	func
	.function	257
~~k_exec_get_current_process:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L84
	tcs
	phd
	tcd
	.block	257
;	return _k_current_Process;
	.line	258
	ldx	|~~_k_current_Process+2
	lda	|~~_k_current_Process
L87:
	tay
	pld
	tsc
	clc
	adc	#L84
	tcs
	tya
	rtl
;}
	.line	259
	.endblock	259
L84	equ	0
L85	equ	1
	ends
	efunc
	.endfunc	259,1,0
	.line	259
;
;PROCESS_CTX k_exec_setContext(PROCESS_ID processId,PROCESS_CTX data)
;{
	.line	261
	.line	262
	code
	xdef	~~k_exec_setContext
	func
	.function	262
~~k_exec_setContext:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L88
	tcs
	phd
	tcd
processId_0	set	4
data_0	set	8
	.block	262
;	return NULL;
	.sym	processId,4,18,6,32
	.sym	data,8,129,6,32
	.line	263
	lda	#$0
	tax
	lda	#$0
L91:
	tay
	lda	<L88+2
	sta	<L88+2+8
	lda	<L88+1
	sta	<L88+1+8
	pld
	tsc
	clc
	adc	#L88+8
	tcs
	tya
	rtl
;}
	.line	264
	.endblock	264
L88	equ	0
L89	equ	1
	ends
	efunc
	.endfunc	264,1,0
	.line	264
;
;PROCESS_CTX k_exec_getContext(PROCESS_ID processId)
;{
	.line	266
	.line	267
	code
	xdef	~~k_exec_getContext
	func
	.function	267
~~k_exec_getContext:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L92
	tcs
	phd
	tcd
processId_0	set	4
	.block	267
;	return NULL;
	.sym	processId,4,18,6,32
	.line	268
	lda	#$0
	tax
	lda	#$0
L95:
	tay
	lda	<L92+2
	sta	<L92+2+4
	lda	<L92+1
	sta	<L92+1+4
	pld
	tsc
	clc
	adc	#L92+4
	tcs
	tya
	rtl
;}
	.line	269
	.endblock	269
L92	equ	0
L93	equ	1
	ends
	efunc
	.endfunc	269,1,0
	.line	269
;//
;//
;//
;//
;BOOL k_exec_signal_sleep(PROCESS_ID processId)
;{
	.line	274
	.line	275
	code
	xdef	~~k_exec_signal_sleep
	func
	.function	275
~~k_exec_signal_sleep:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L96
	tcs
	phd
	tcd
processId_0	set	4
	.block	275
;	return k_exec_set_signal(processId,PROCESS_STATUS_SLEEPING);
	.sym	processId,4,18,6,32
	.line	276
	pea	#<$2
	pei	<L96+processId_0+2
	pei	<L96+processId_0
	jsl	~~k_exec_set_signal
	sep	#$20
	longa	off
	sta	<R0
	rep	#$20
	longa	on
	lda	<R0
	and	#$ff
L99:
	tay
	lda	<L96+2
	sta	<L96+2+4
	lda	<L96+1
	sta	<L96+1+4
	pld
	tsc
	clc
	adc	#L96+4
	tcs
	tya
	rtl
;}
	.line	277
	.endblock	277
L96	equ	4
L97	equ	5
	ends
	efunc
	.endfunc	277,5,4
	.line	277
;
;BOOL k_exec_signal_terminate(PROCESS_ID processId)
;{
	.line	279
	.line	280
	code
	xdef	~~k_exec_signal_terminate
	func
	.function	280
~~k_exec_signal_terminate:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L100
	tcs
	phd
	tcd
processId_0	set	4
	.block	280
;	return k_exec_set_signal(processId,PROCESS_STATUS_TERMINATED);
	.sym	processId,4,18,6,32
	.line	281
	pea	#<$3
	pei	<L100+processId_0+2
	pei	<L100+processId_0
	jsl	~~k_exec_set_signal
	sep	#$20
	longa	off
	sta	<R0
	rep	#$20
	longa	on
	lda	<R0
	and	#$ff
L103:
	tay
	lda	<L100+2
	sta	<L100+2+4
	lda	<L100+1
	sta	<L100+1+4
	pld
	tsc
	clc
	adc	#L100+4
	tcs
	tya
	rtl
;}
	.line	282
	.endblock	282
L100	equ	4
L101	equ	5
	ends
	efunc
	.endfunc	282,5,4
	.line	282
;
;BOOL k_exec_signal_start(PROCESS_ID processId)
;{
	.line	284
	.line	285
	code
	xdef	~~k_exec_signal_start
	func
	.function	285
~~k_exec_signal_start:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L104
	tcs
	phd
	tcd
processId_0	set	4
	.block	285
;	return k_exec_set_signal(processId,PROCESS_STATUS_RUNNING);
	.sym	processId,4,18,6,32
	.line	286
	pea	#<$1
	pei	<L104+processId_0+2
	pei	<L104+processId_0
	jsl	~~k_exec_set_signal
	sep	#$20
	longa	off
	sta	<R0
	rep	#$20
	longa	on
	lda	<R0
	and	#$ff
L107:
	tay
	lda	<L104+2
	sta	<L104+2+4
	lda	<L104+1
	sta	<L104+1+4
	pld
	tsc
	clc
	adc	#L104+4
	tcs
	tya
	rtl
;}
	.line	287
	.endblock	287
L104	equ	4
L105	equ	5
	ends
	efunc
	.endfunc	287,5,4
	.line	287
;
;BOOL k_exec_signal_wait(PROCESS_ID processId,PPROCESS_SIGNAL signal)
;{
	.line	289
	.line	290
	code
	xdef	~~k_exec_signal_wait
	func
	.function	290
~~k_exec_signal_wait:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L108
	tcs
	phd
	tcd
processId_0	set	4
signal_0	set	8
	.block	290
;	return k_exec_set_signal(processId,PROCESS_STATUS_WAITING);
	.sym	processId,4,18,6,32
	.sym	signal,8,138,6,32,9
	.line	291
	pea	#<$f1
	pei	<L108+processId_0+2
	pei	<L108+processId_0
	jsl	~~k_exec_set_signal
	sep	#$20
	longa	off
	sta	<R0
	rep	#$20
	longa	on
	lda	<R0
	and	#$ff
L111:
	tay
	lda	<L108+2
	sta	<L108+2+8
	lda	<L108+1
	sta	<L108+1+8
	pld
	tsc
	clc
	adc	#L108+8
	tcs
	tya
	rtl
;}
	.line	292
	.endblock	292
L108	equ	4
L109	equ	5
	ends
	efunc
	.endfunc	292,5,4
	.line	292
;
;BOOL k_exec_set_signal(PROCESS_ID processId,PROCESS_STATUS signal)
;{
	.line	294
	.line	295
	code
	xdef	~~k_exec_set_signal
	func
	.function	295
~~k_exec_set_signal:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L112
	tcs
	phd
	tcd
processId_0	set	4
signal_0	set	8
	.block	295
;	PFXPROCESS p = NULL;
;
;	int index = 0;
;
;	for(index=0;index<MAX_PROCESS;index++)
p_1	set	0
index_1	set	4
	.sym	p,0,138,1,32,20
	.sym	index,4,5,1,16
	.sym	processId,4,18,6,32
	.sym	signal,8,16,6,16
	stz	<L113+p_1
	stz	<L113+p_1+2
	stz	<L113+index_1
	.line	300
	stz	<L113+index_1
L10037:
;	{
	.line	301
;		if(_k_processList[index] && (_k_processList[index]->procId == processId))
	.line	302
;		{
	lda	<L113+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~_k_processList
	adc	<R0
	sta	<R1
	lda	(<R1)
	ldy	#$2
	ora	(<R1),Y
	bne	L115
	brl	L10038
L115:
	lda	<L113+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~_k_processList
	adc	<R0
	sta	<R1
	lda	(<R1)
	sta	<R0
	ldy	#$2
	lda	(<R1),Y
	sta	<R0+2
	ldy	#$2
	lda	[<R0],Y
	cmp	<L112+processId_0
	bne	L116
	ldy	#$4
	lda	[<R0],Y
	cmp	<L112+processId_0+2
L116:
	beq	L117
	brl	L10038
L117:
	.line	303
;			_k_processList[index]->status = signal;
	.line	304
	lda	<L113+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~_k_processList
	adc	<R0
	sta	<R1
	lda	(<R1)
	sta	<R0
	ldy	#$2
	lda	(<R1),Y
	sta	<R0+2
	lda	<L112+signal_0
	ldy	#$10
	sta	[<R0],Y
;			return TRUE;
	.line	305
	lda	#$1
L118:
	tay
	lda	<L112+2
	sta	<L112+2+6
	lda	<L112+1
	sta	<L112+1+6
	pld
	tsc
	clc
	adc	#L112+6
	tcs
	tya
	rtl
;		}
	.line	306
;	}
L10038:
	.line	307
L10035:
	inc	<L113+index_1
	sec
	lda	<L113+index_1
	sbc	#<$20
	bvs	L119
	eor	#$8000
L119:
	bmi	L120
	brl	L10037
L120:
L10036:
;
;	return FALSE;
	.line	309
	lda	#$0
	brl	L118
;}
	.line	310
	.endblock	310
L112	equ	14
L113	equ	9
	ends
	efunc
	.endfunc	310,9,14
	.line	310
;
;
;VOID k_exec_throw_exception(ULONG ctxId,ULONG errorId,LPVOID exceptionMessage,UINT exMsgSize)
;{
	.line	313
	.line	314
	code
	xdef	~~k_exec_throw_exception
	func
	.function	314
~~k_exec_throw_exception:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L121
	tcs
	phd
	tcd
ctxId_0	set	4
errorId_0	set	8
exceptionMessage_0	set	12
exMsgSize_0	set	16
	.block	314
;	UINT len = 0;
;
;	k_enable_text_mode();
len_1	set	0
	.sym	len,0,16,1,16
	.sym	ctxId,4,18,6,32
	.sym	errorId,8,18,6,32
	.sym	exceptionMessage,12,129,6,32
	.sym	exMsgSize,16,16,6,16
	stz	<L122+len_1
	.line	317
	jsl	~~k_enable_text_mode
;
;	if(exceptionMessage)
	.line	319
;		k_debug_strings("k_exec_throw_exception:",(LPSTR)exceptionMessage);
	lda	<L121+exceptionMessage_0
	ora	<L121+exceptionMessage_0+2
	bne	L124
	brl	L10039
L124:
	.line	320
	pei	<L121+exceptionMessage_0+2
	pei	<L121+exceptionMessage_0
	pea	#^L79
	pea	#<L79
	jsl	~~k_debug_strings
;
;	_k_exec_context 	= ctxId;
L10039:
	.line	322
	lda	<L121+ctxId_0
	sta	|~~_k_exec_context
	lda	<L121+ctxId_0+2
	sta	|~~_k_exec_context+2
;	_k_exec_error		= errorId;
	.line	323
	lda	<L121+errorId_0
	sta	|~~_k_exec_error
	lda	<L121+errorId_0+2
	sta	|~~_k_exec_error+2
;
;	if(exMsgSize == -1)
	.line	325
;	{
	lda	<L121+exMsgSize_0
	cmp	#<$ffffffff
	beq	L125
	brl	L10040
L125:
	.line	326
;		len = strlen(exceptionMessage);
	.line	327
	pei	<L121+exceptionMessage_0+2
	pei	<L121+exceptionMessage_0
	jsl	~~strlen
	sta	<L122+len_1
;		if(len < 64)
	.line	328
;			exMsgSize = len;
	lda	<L122+len_1
	cmp	#<$40
	bcc	L126
	brl	L10041
L126:
	.line	329
	lda	<L122+len_1
	sta	<L121+exMsgSize_0
;		else
	brl	L10042
L10041:
;			exMsgSize = 63;
	.line	331
	lda	#$3f
	sta	<L121+exMsgSize_0
L10042:
;	}
	.line	332
;
;	memcpy(_k_exec_message,exceptionMessage,exMsgSize);
L10040:
	.line	334
	pei	<L121+exMsgSize_0
	pei	<L121+exceptionMessage_0+2
	pei	<L121+exceptionMessage_0
	lda	#<~~_k_exec_message
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~memcpy
;
;	asm BRK;
	.line	336
	asmstart
	BRK
	asmend
;}
	.line	337
L127:
	lda	<L121+2
	sta	<L121+2+14
	lda	<L121+1
	sta	<L121+1+14
	pld
	tsc
	clc
	adc	#L121+14
	tcs
	rtl
	.endblock	337
L121	equ	6
L122	equ	5
	ends
	efunc
	.endfunc	337,5,6
	.line	337
	data
L79:
	db	$6B,$5F,$65,$78,$65,$63,$5F,$74,$68,$72,$6F,$77,$5F,$65,$78
	db	$63,$65,$70,$74,$69,$6F,$6E,$3A,$00
	ends
;
;KRESULT k_exec_enable_process_timer(UINT timerId,UINT increment)
;{
	.line	339
	.line	340
	code
	xdef	~~k_exec_enable_process_timer
	func
	.function	340
~~k_exec_enable_process_timer:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L129
	tcs
	phd
	tcd
timerId_0	set	4
increment_0	set	6
	.block	340
;	KRESULT kerr = KERR_FAIL;
;	PFXPROCESS p = NULL;
;
;
;	k_debug_integer("k_exec_enable_process_timer::increment:",increment);
kerr_1	set	0
p_1	set	4
	.sym	kerr,0,18,1,32
	.sym	p,4,138,1,32,20
	.sym	timerId,4,16,6,16
	.sym	increment,6,16,6,16
	lda	#$0
	sta	<L130+kerr_1
	lda	#$8000
	sta	<L130+kerr_1+2
	stz	<L130+p_1
	stz	<L130+p_1+2
	.line	345
	pei	<L129+increment_0
	pea	#^L128
	pea	#<L128
	jsl	~~k_debug_integer
;
;	if(timerId <= PROCESS_TIMER_1)
	.line	347
;	{
	lda	#$1
	cmp	<L129+timerId_0
	bcs	L132
	brl	L10043
L132:
	.line	348
;		p = k_exec_get_current_process();
	.line	349
	jsl	~~k_exec_get_current_process
	sta	<L130+p_1
	stx	<L130+p_1+2
;		if(p)
	.line	350
;		{
	lda	<L130+p_1
	ora	<L130+p_1+2
	bne	L133
	brl	L10044
L133:
	.line	351
;			k_debug_long("k_exec_enable_process_timer::process:",p->procId);
	.line	352
	ldy	#$4
	lda	[<L130+p_1],Y
	pha
	ldy	#$2
	lda	[<L130+p_1],Y
	pha
	pea	#^L128+40
	pea	#<L128+40
	jsl	~~k_debug_long
;
;			p->timerAware = TRUE;
	.line	354
	sep	#$20
	longa	off
	lda	#$1
	ldy	#$47
	sta	[<L130+p_1],Y
	rep	#$20
	longa	on
;			p->timerTicks[timerId] = increment;
	.line	355
	lda	<L129+timerId_0
	sta	<R1
	stz	<R1+2
	pei	<R1+2
	pei	<R1
	lda	#$1
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R0
	stx	<R0+2
	clc
	lda	#$48
	adc	<L130+p_1
	sta	<R2
	lda	#$0
	adc	<L130+p_1+2
	sta	<R2+2
	clc
	lda	<R2
	adc	<R0
	sta	<R3
	lda	<R2+2
	adc	<R0+2
	sta	<R3+2
	lda	<L129+increment_0
	sta	[<R3]
;			p->timerTickCount[timerId] = increment;
	.line	356
	lda	<L129+timerId_0
	sta	<R1
	stz	<R1+2
	pei	<R1+2
	pei	<R1
	lda	#$1
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R0
	stx	<R0+2
	clc
	lda	#$4c
	adc	<L130+p_1
	sta	<R2
	lda	#$0
	adc	<L130+p_1+2
	sta	<R2+2
	clc
	lda	<R2
	adc	<R0
	sta	<R3
	lda	<R2+2
	adc	<R0+2
	sta	<R3+2
	lda	<L129+increment_0
	sta	[<R3]
;
;			k_debug_long("k_exec_enable_process_timer::p->timerTicks[timerId]:",p->timerTicks[timerId]);
	.line	358
	lda	<L129+timerId_0
	sta	<R1
	stz	<R1+2
	pei	<R1+2
	pei	<R1
	lda	#$1
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R0
	stx	<R0+2
	clc
	lda	#$48
	adc	<L130+p_1
	sta	<R2
	lda	#$0
	adc	<L130+p_1+2
	sta	<R2+2
	clc
	lda	<R2
	adc	<R0
	sta	<R3
	lda	<R2+2
	adc	<R0+2
	sta	<R3+2
	lda	[<R3]
	sta	<R0
	stz	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L128+78
	pea	#<L128+78
	jsl	~~k_debug_long
;
;			kerr= KERR_SUCCESS;
	.line	360
	stz	<L130+kerr_1
	stz	<L130+kerr_1+2
;		}
	.line	361
;	}
L10044:
	.line	362
;	return 0;
L10043:
	.line	363
	lda	#$0
	tax
	lda	#$0
L134:
	tay
	lda	<L129+2
	sta	<L129+2+4
	lda	<L129+1
	sta	<L129+1+4
	pld
	tsc
	clc
	adc	#L129+4
	tcs
	tya
	rtl
;}
	.line	364
	.endblock	364
L129	equ	24
L130	equ	17
	ends
	efunc
	.endfunc	364,17,24
	.line	364
	data
L128:
	db	$6B,$5F,$65,$78,$65,$63,$5F,$65,$6E,$61,$62,$6C,$65,$5F,$70
	db	$72,$6F,$63,$65,$73,$73,$5F,$74,$69,$6D,$65,$72,$3A,$3A,$69
	db	$6E,$63,$72,$65,$6D,$65,$6E,$74,$3A,$00,$6B,$5F,$65,$78,$65
	db	$63,$5F,$65,$6E,$61,$62,$6C,$65,$5F,$70,$72,$6F,$63,$65,$73
	db	$73,$5F,$74,$69,$6D,$65,$72,$3A,$3A,$70,$72,$6F,$63,$65,$73
	db	$73,$3A,$00,$6B,$5F,$65,$78,$65,$63,$5F,$65,$6E,$61,$62,$6C
	db	$65,$5F,$70,$72,$6F,$63,$65,$73,$73,$5F,$74,$69,$6D,$65,$72
	db	$3A,$3A,$70,$2D,$3E,$74,$69,$6D,$65,$72,$54,$69,$63,$6B,$73
	db	$5B,$74,$69,$6D,$65,$72,$49,$64,$5D,$3A,$00
	ends
;
;
;
	.line	366
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxexec.c",339
	xref	~~DesktopEnvironmentProc
	xref	~~k_debug_strings
	xref	~~k_debug_long
	xref	~~k_debug_integer
	xref	~~k_debug_pointer
	xref	~~DefConsoleProc
	xref	~~IdleProc
	xref	~~k_enable_text_mode
	xref	~~k_mem_allocate_heap
	xref	~~k_nodelist_naddtolist
	xref	~~k_nodelist_allocate_list
	xref	~~k_nodelist_getname
	xref	~~k_string_copy_string
	xref	~~strlen
	xref	~~strcmp
	xref	~~memset
	xref	~~memcpy
	udata
~~_k_processList
	ds	128
	ends
	udata
	xdef	~~_k_exec_message
~~_k_exec_message
	ds	64
	ends
	.sym	~~k_exec_set_process_foreground,~~k_exec_set_process_foreground,65,2,0
	.sym	~~k_exec_nextprocess,~~k_exec_nextprocess,82,2,0
	.sym	~~THIS_MODULE,~~THIS_MODULE,18,3,32
	.sym	~~_k_execManager_ProcesssList,~~_k_execManager_ProcesssList,138,3,32,6
	.sym	~~_exec_Process,~~_exec_Process,138,3,32,20
	.sym	~~_k_current_Process,~~_k_current_Process,138,3,32,20
	.sym	~~_k_processList,~~_k_processList,1130,3,32,20,32
	.sym	~~_k_exec_message,~~_k_exec_message,110,2,0,64
	.sym	~~_k_exec_error,~~_k_exec_error,18,2,32
	.sym	~~_k_exec_context,~~_k_exec_context,18,2,32
	.sym	~~DesktopEnvironmentProc,~~DesktopEnvironmentProc,65,18,0
	.sym	DEVICEDRIVER_COMMAND,0,656,14,32
	.sym	DEVICEDRIVER_UNLOAD,0,654,14,32
	.sym	DEVICEDRIVER_WRITE,0,656,14,32
	.sym	DEVICEDRIVER_READ,0,656,14,32
	.sym	DEVICEDRIVER_LOAD,0,654,14,32
	.sym	PFX_BLOCK_DEVICE_DRIVER,0,138,14,32,63
	.sym	FX_BLOCK_DEVICE_DRIVER,0,10,14,1448,63
	.sym	PFX_DEVICE_DRIVER,0,138,14,32,62
	.sym	FX_DEVICE_DRIVER,0,10,14,1416,62
	.sym	~~k_debug_strings,~~k_debug_strings,65,18,0
	.sym	~~k_debug_long,~~k_debug_long,65,18,0
	.sym	~~k_debug_integer,~~k_debug_integer,65,18,0
	.sym	~~k_debug_pointer,~~k_debug_pointer,65,18,0
	.sym	PDEBUGBYTEBITS,0,138,14,32,61
	.sym	DEBUGBYTEBITS,0,10,14,8,61
	.sym	PFXENVIRONMENT,0,138,14,32,60
	.sym	FXENVIRONMENT,0,10,14,96,60
	.sym	PFXZERPOPAGE,0,138,14,32,59
	.sym	FXZERPOPAGE,0,10,14,448,59
	.sym	KERNELTRAPCALL,0,641,14,32
	.sym	~~DefConsoleProc,~~DefConsoleProc,65,18,0
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
	.sym	~~IdleProc,~~IdleProc,65,18,0
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
	.sym	~~k_mem_allocate_heap,~~k_mem_allocate_heap,1089,18,32
	.sym	MemoryCallback,0,641,14,32
	.sym	PFXMEMORYMAP,0,138,14,32,47
	.sym	FXMEMORYMAP,0,10,14,2072,47
	.sym	UMM_HEAP_INFO,0,10,14,256,46
	.sym	FOREACHNODEUNTIL,0,654,14,32
	.sym	FOREACHNODE,0,641,14,32
	.sym	~~k_nodelist_naddtolist,~~k_nodelist_naddtolist,1098,18,32,5
	.sym	~~k_nodelist_allocate_list,~~k_nodelist_allocate_list,1098,18,32,6
	.sym	~~k_nodelist_getname,~~k_nodelist_getname,1098,18,32,5
	.sym	~~debug_process_node,~~debug_process_node,65,2,0
	.sym	~~k_deallocate_process_task,~~k_deallocate_process_task,65,2,0
	.sym	~~k_exec_enable_process_timer,~~k_exec_enable_process_timer,82,2,0
	.sym	~~k_exec_set_signal,~~k_exec_set_signal,78,2,0
	.sym	~~k_exec_signal_wait,~~k_exec_signal_wait,78,2,0
	.sym	~~k_exec_signal_start,~~k_exec_signal_start,78,2,0
	.sym	~~k_exec_signal_terminate,~~k_exec_signal_terminate,78,2,0
	.sym	~~k_exec_signal_sleep,~~k_exec_signal_sleep,78,2,0
	.sym	~~k_exec_getContext,~~k_exec_getContext,1089,2,32
	.sym	~~k_exec_setContext,~~k_exec_setContext,1089,2,32
	.sym	~~k_exec_get_current_process,~~k_exec_get_current_process,1098,2,32,20
	.sym	~~k_exec_set_current_process,~~k_exec_set_current_process,1098,2,32,20
	.sym	~~k_exec_start_process,~~k_exec_start_process,65,2,0
	.sym	~~k_exec_createProcess,~~k_exec_createProcess,1098,2,32,20
	.sym	~~k_exec_launchProcess,~~k_exec_launchProcess,1098,2,32,20
	.sym	~~k_exec_process_list,~~k_exec_process_list,9290,2,32,20
	.sym	~~k_exec_get_process_byname,~~k_exec_get_process_byname,1098,2,32,20
	.sym	~~k_exec_get_process,~~k_exec_get_process,1098,2,32,20
	.sym	~~k_exec_throw_exception,~~k_exec_throw_exception,65,2,0
	.sym	~~k_initalize_executive,~~k_initalize_executive,65,2,0
	.sym	~~k_string_copy_string,~~k_string_copy_string,1102,18,32
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
	.sym	~~strlen,~~strlen,80,18,0
	.sym	~~strcmp,~~strcmp,69,18,0
	.sym	~~memset,~~memset,1089,18,32
	.sym	~~memcpy,~~memcpy,1089,18,32
	.sym	Boolean_T,0,5,14,16
	.sym	ldiv_t,0,10,14,64,2
	.sym	div_t,0,10,14,32,1
	.sym	wctype_t,0,16,14,16
	.sym	wint_t,0,16,14,16
	.sym	wchar_t,0,14,14,8
	.sym	ptrdiff_t,0,7,14,32
	.sym	size_t,0,16,14,16
	end

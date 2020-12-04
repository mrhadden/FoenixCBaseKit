;:ts=8
R0	equ	1
R1	equ	5
R2	equ	9
R3	equ	13
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxfloppy.c",0
;#include "fxtypes.h"
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxfloppy.c",1
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxfloppy.c",2
;#include "fxfloppy.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxfloppy.h",0
	.line	70
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxfloppy.c",3
;/* Floppy controller driver. Supports only 3.5" HD 1440 KiB disks */
;
;#define PORT 0xAF13F0
;
;#define SRA (0xAF13F0)   //Status register A
;#define SRB (0xAF13F1)   //Status register B
;
;#define FDC_DOR (0xAF13F2)   //Digital output register
;//#define FDC_TDR (PORT+3)   //Tape drive register
;#define FDC_MSR (0xAF13F4)   //Main state register
;#define FDC_DRS (0xAF13F4)   //Datarate select register
;#define FDC_DATA (0xAF13F5)  //Data FIFO
;
;#define FDC_DIR (0xAF13F7)   //Digital input register
;#define FDC_CCR (0xAF13F7)   //Configuration control register
;
;/* DOR flags */
;#define DOR_IRQ   0x08
;#define DOR_RESET 0x04
;
;/* MSR flags */
;#define MSR_RQM  0x80
;#define MSR_DIO  0x40
;#define MSR_NDMA 0x20
;#define MSR_CB   0x10
;
;#define MSR_ACTD 0x08
;#define MSR_ACTC 0x04
;#define MSR_ACTB 0x02
;#define MSR_ACTA 0x01
;
;//#define MSR_OK_READ (MSR_RQM | MSR_DIO | MSR_CB)
;#define MSR_OK_READ (MSR_RQM | MSR_DIO)
;
;/* DIR flags */
;#define DIR_DC 0x80
;
;#define SECTOR_SIZE 512
;#define SEC_PER_TRACK 18
;
;#define MS 1000
;
;#define FL_HLT (8*MS)
;#define FL_SPIN_UP (400*MS)
;#define FL_SPIN_DN (3000*MS)
;#define FL_SEL_D (20*MS)
;#define FL_INT_TMT (30000*MS)
;
;#define CMD_SPECIFY  0x03
;#define CMD_WRITE    0x45
;#define CMD_READ     0x46
;#define CMD_SENSEI   0x08
;#define CMD_READID   0x4A
;#define CMD_RECAL    0x07
;#define CMD_SEEK     0x0F
;#define CMD_VERSION  0x10
;#define CMD_CONF     0x13
;/* Bits of main status register */
;#define STATUS_BUSYMASK	0x0F		/* drive busy mask */
;#define STATUS_BUSY		0x10		/* FDC busy */
;#define STATUS_NON_DMA	0x20		/* 0- DMA mode */
;#define STATUS_DIR		0x40		/* 0- cpu->fdc */
;#define STATUS_READY	0x80		/* Data reg ready */
;
;/* Values for FD_COMMAND */
;#define FD_RECALIBRATE		0x07	/* move to track 0 */
;#define FD_SEEK			0x0F	/* seek track */
;#define FD_READ			0xA6	/* read with MT, SKip deleted */
;#define FD_WRITE		0xC5	/* write with MT, MFM */
;#define FD_SENSEI		0x08	/* Sense Interrupt Status */
;#define FD_SPECIFY		0x03	/* specify HUT etc */
;#define FD_FORMAT		0x4D	/* format one track */
;#define FD_VERSION		0x10	/* get version code */
;#define FD_CONFIGURE		0x13	/* configure FIFO operation */
;#define FD_PERPENDICULAR	0x12	/* perpendicular r/w mode */
;#define FD_GETSTATUS		0x04	/* read ST3 */
;#define FD_DUMPREGS		0x0E	/* dump the contents of the fdc regs */
;#define FD_READID		0xEA	/* prints the header of a sector */
;#define FD_UNLOCK		0x14	/* Fifo config unlock */
;#define FD_LOCK			0x94	/* Fifo config lock */
;#define FD_RSEEK_OUT		0x8f	/* seek out (i.e. to lower tracks) */
;#define FD_RSEEK_IN		0xcf	/* seek in (i.e. to higher tracks) */
;
;/* Parameters for a 1.44 3.5" disk */
;#define DISK_H1440_SIZE       2880
;#define DISK_H1440_SECT       18
;#define DISK_H1440_HEAD       2
;#define DISK_H1440_TRACK      80
;#define DISK_H1440_STRETCH    0
;#define DISK_H1440_GAP        0x1B
;#define DISK_H1440_RATE       0x00
;#define DISK_H1440_SPEC1      0xCF
;#define DISK_H1440_FMT_GAP    0x6C
;
;/* Parameters for a 1.44 3.5" drive */
;#define DRIVE_H1440_MAX_DTR          500
;#define DRIVE_H1440_HLT              16   /* ms */
;#define DRIVE_H1440_HUT              16   /* ms */
;#define DRIVE_H1440_SRT              4000 /* us */
;#define DRIVE_H1440_SPINUP           400  /* ms */
;#define DRIVE_H1440_SPINDOWN         3000 /* ms */
;#define DRIVE_H1440_SPINDOWN_OFFSET  10
;#define DRIVE_H1440_SELECT_DELAY     20  /* ms */
;#define DRIVE_H1440_RPS              5
;#define DRIVE_H1440_TRACKS           83
;#define DRIVE_H1440_TIMEOUT          3000 /* ms */
;#define DRIVE_H1440_INTERLEAVE_SECT  20
;
;/* Floppy drive configuration */
;#define FIFO_DEPTH            10
;#define USE_IMPLIED_SEEK      0
;#define USE_FIFO              1
;#define FIFO_THRESHOLD        10
;#define TRACK_PRECOMPENSATION 0
;
;#define SLOW_FLOPPY 0
;
;#define FD_RESET_DELAY 20 /* microseconds */
;
;
;#define WAIT_COND(c) while (!(c)) {}
;
;BOOL irq_signaled = FALSE;
	data
	xdef	~~irq_signaled
~~irq_signaled:
	db	$0
	ends
;
;typedef struct
;{
;	UINT track;
;	int motstate;
;	int dchg;
;} drive_state_t;
	.stag	fake64_,48,64
	.member	track,0,16,8,16
	.member	motstate,16,5,8,16
	.member	dchg,32,5,8,16
	.eos
;
;//static volatile int irq_signaled = 0;
;static UCHAR reg_dor, reg_sr0, reg_sr1, reg_sr2;
;
;static drive_state_t drives[4];
;static UCHAR cur_drive = 0;
	data
~~cur_drive:
	db	$0
	ends
;static int motoff_timer;
;
;static int status_sz;
;static UCHAR status[7];
;
;UINT  floppybufferIndex = 0;
	data
	xdef	~~floppybufferIndex
~~floppybufferIndex:
	dw	$0
	ends
;UCHAR floppybuffer[512];
;
;
;static void io_wait(void)
;{
	.line	149
	.line	150
	code
	func
	.function	150
~~io_wait:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L2
	tcs
	phd
	tcd
	.block	150
;	sleep(DRIVE_H1440_SPINUP);
	.line	151
	pea	#<$190
	jsl	~~sleep
;}
	.line	152
L5:
	pld
	tsc
	clc
	adc	#L2
	tcs
	rtl
	.endblock	152
L2	equ	0
L3	equ	1
	ends
	efunc
	.endfunc	152,1,0
	.line	152
;
;static void lba_2_chs(ULONG lba, UINT *track, UINT *head, UINT *sector)
;{
	.line	154
	.line	155
	code
	func
	.function	155
~~lba_2_chs:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L6
	tcs
	phd
	tcd
lba_0	set	4
track_0	set	8
head_0	set	12
sector_0	set	16
	.block	155
;	*head	 = ((lba % (2 * SEC_PER_TRACK)) / SEC_PER_TRACK);
	.sym	lba,4,18,6,32
	.sym	track,8,144,6,32
	.sym	head,12,144,6,32
	.sym	sector,16,144,6,32
	.line	156
	pea	#^$24
	pea	#<$24
	pei	<L6+lba_0+2
	pei	<L6+lba_0
	xref	~~~lumd
	jsl	~~~lumd
	sta	<R0
	stx	<R0+2
	pea	#^$12
	pea	#<$12
	pei	<R0+2
	pei	<R0
	xref	~~~ludv
	jsl	~~~ludv
	sta	<R0
	stx	<R0+2
	lda	<R0
	sta	[<L6+head_0]
;	*sector  = ((lba % (2 * SEC_PER_TRACK)) % SEC_PER_TRACK + 1);
	.line	157
	pea	#^$24
	pea	#<$24
	pei	<L6+lba_0+2
	pei	<L6+lba_0
	xref	~~~lumd
	jsl	~~~lumd
	sta	<R0
	stx	<R0+2
	pea	#^$12
	pea	#<$12
	pei	<R0+2
	pei	<R0
	xref	~~~lumd
	jsl	~~~lumd
	sta	<R0
	stx	<R0+2
	clc
	lda	#$1
	adc	<R0
	sta	<R1
	lda	#$0
	adc	<R0+2
	sta	<R1+2
	lda	<R1
	sta	[<L6+sector_0]
;	*track 	 = (lba / (2 * SEC_PER_TRACK));
	.line	158
	pea	#^$24
	pea	#<$24
	pei	<L6+lba_0+2
	pei	<L6+lba_0
	xref	~~~ludv
	jsl	~~~ludv
	sta	<R0
	stx	<R0+2
	lda	<R0
	sta	[<L6+track_0]
;}
	.line	159
L9:
	lda	<L6+2
	sta	<L6+2+16
	lda	<L6+1
	sta	<L6+1+16
	pld
	tsc
	clc
	adc	#L6+16
	tcs
	rtl
	.endblock	159
L6	equ	8
L7	equ	9
	ends
	efunc
	.endfunc	159,9,8
	.line	159
;
;int sendbyte(UCHAR d)
;{
	.line	161
	.line	162
	code
	xdef	~~sendbyte
	func
	.function	162
~~sendbyte:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L10
	tcs
	phd
	tcd
d_0	set	4
	.block	162
;	int i;
;
;	UCHAR msr;
;
;	for (i = 0; i < 0x0fff; i++)
i_1	set	0
msr_1	set	2
	.sym	i,0,5,1,16
	.sym	msr,2,14,1,8
	.sym	d,4,14,6,8
	.line	167
	stz	<L11+i_1
L10003:
;	{
	.line	168
;		msr = inportb(FDC_MSR);
	.line	169
	sep	#$20
	longa	off
	lda	>11473908
	sta	<L11+msr_1
	rep	#$20
	longa	on
;		//if ((msr & MSR_RQM) && !(msr & MSR_DIO))
;		k_debug_bits("sendbyte:",msr);
	.line	171
	pei	<L11+msr_1
	pea	#^L1
	pea	#<L1
	jsl	~~k_debug_bits
;		//if ((msr & (STATUS_READY|STATUS_DIR|STATUS_NON_DMA)))
;		if ((msr & MSR_RQM) && !(msr & MSR_DIO))
	.line	173
;		{
	sep	#$20
	longa	off
	lda	<L11+msr_1
	and	#<$80
	rep	#$20
	longa	on
	bne	L13
	brl	L10004
L13:
	sep	#$20
	longa	off
	lda	<L11+msr_1
	and	#<$40
	rep	#$20
	longa	on
	beq	L14
	brl	L10004
L14:
	.line	174
;			outportb(FDC_DATA, d);
	.line	175
	sep	#$20
	longa	off
	lda	<L10+d_0
	sta	>11473909
	rep	#$20
	longa	on
;			return 0;
	.line	176
	lda	#$0
L15:
	tay
	lda	<L10+2
	sta	<L10+2+2
	lda	<L10+1
	sta	<L10+1+2
	pld
	tsc
	clc
	adc	#L10+2
	tcs
	tya
	rtl
;		}
	.line	177
;		io_wait();
L10004:
	.line	178
	jsl	~~io_wait
;	}
	.line	179
L10001:
	inc	<L11+i_1
	sec
	lda	<L11+i_1
	sbc	#<$fff
	bvs	L16
	eor	#$8000
L16:
	bmi	L17
	brl	L10003
L17:
L10002:
;	k_debug_string("sendbyte::NOSEND\r\n");
	.line	180
	pea	#^L1+10
	pea	#<L1+10
	jsl	~~k_debug_string
;	return -1; /* timeout */
	.line	181
	lda	#$ffff
	brl	L15
;}
	.line	182
	.endblock	182
L10	equ	3
L11	equ	1
	ends
	efunc
	.endfunc	182,1,3
	.line	182
	data
L1:
	db	$73,$65,$6E,$64,$62,$79,$74,$65,$3A,$00,$73,$65,$6E,$64,$62
	db	$79,$74,$65,$3A,$3A,$4E,$4F,$53,$45,$4E,$44,$0D,$0A,$00
	ends
;
;int getbyte()
;{
	.line	184
	.line	185
	code
	xdef	~~getbyte
	func
	.function	185
~~getbyte:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L19
	tcs
	phd
	tcd
	.block	185
;	int i ;
;
;	UCHAR msr;
;
;	for (i = 0; i < 0x0FF; i++)
i_1	set	0
msr_1	set	2
	.sym	i,0,5,1,16
	.sym	msr,2,14,1,8
	.line	190
	stz	<L20+i_1
L10007:
;	{
	.line	191
;		msr = inportb(FDC_MSR);
	.line	192
	sep	#$20
	longa	off
	lda	>11473908
	sta	<L20+msr_1
	rep	#$20
	longa	on
;		if ((msr & MSR_OK_READ) == MSR_OK_READ)
	.line	193
;		{
	lda	<L20+msr_1
	and	#<$c0
	sta	<R0
	lda	<R0
	cmp	#<$c0
	beq	L22
	brl	L10008
L22:
	.line	194
;			return inportb(FDC_DATA);
	.line	195
	lda	>11473909
	and	#$ff
L23:
	tay
	pld
	tsc
	clc
	adc	#L19
	tcs
	tya
	rtl
;		}
	.line	196
;		io_wait();
L10008:
	.line	197
	jsl	~~io_wait
;	}
	.line	198
L10005:
	inc	<L20+i_1
	sec
	lda	<L20+i_1
	sbc	#<$ff
	bvs	L24
	eor	#$8000
L24:
	bmi	L25
	brl	L10007
L25:
L10006:
;	return -1; /* timeout */
	.line	199
	lda	#$ffff
	brl	L23
;}
	.line	200
	.endblock	200
L19	equ	7
L20	equ	5
	ends
	efunc
	.endfunc	200,5,7
	.line	200
;
;static int fdc_waitint()
;{
	.line	202
	.line	203
	code
	func
	.function	203
~~fdc_waitint:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L26
	tcs
	phd
	tcd
	.block	203
;	UINT tmout = 0x0FFF;
;
;	/*
;	clock_t s = clock();
;	int tmout;
;	WAIT_COND(!irq_signaled && (tmout = (clock() - s < FL_INT_TMT)));
;	if (!tmout)
;		return -1;
;		*/
;	//sleep(300);
;
;	k_debug_integer("*** fdc_waitint::irq_signaled:",irq_signaled);
tmout_1	set	0
	.sym	tmout,0,16,1,16
	lda	#$fff
	sta	<L27+tmout_1
	.line	215
	lda	|~~irq_signaled
	and	#$ff
	pha
	pea	#^L18
	pea	#<L18
	jsl	~~k_debug_integer
;	while(!irq_signaled)
	.line	216
L10009:
	lda	|~~irq_signaled
	and	#$ff
	beq	L29
	brl	L10010
L29:
;	{
	.line	217
;		//k_debug_integer("*** fdc_waitint::irq_signaled:",irq_signaled);
;		tmout--;
	.line	219
	dec	<L27+tmout_1
;		if(tmout < 1)
	.line	220
;			break;
	lda	<L27+tmout_1
	cmp	#<$1
	bcs	L30
	brl	L10010
L30:
;		//sleep(10);
;	}
	.line	223
	brl	L10009
L10010:
;	k_debug_integer("*** fdc_waitint::irq_signaled:",irq_signaled);
	.line	224
	lda	|~~irq_signaled
	and	#$ff
	pha
	pea	#^L18+31
	pea	#<L18+31
	jsl	~~k_debug_integer
;	irq_signaled = FALSE;
	.line	225
	sep	#$20
	longa	off
	stz	|~~irq_signaled
	rep	#$20
	longa	on
;	if (!tmout)
	.line	226
;	{
	lda	<L27+tmout_1
	beq	L31
	brl	L10011
L31:
	.line	227
;		k_debug_string("*** fdc_waitint::timeout\r\n");
	.line	228
	pea	#^L18+62
	pea	#<L18+62
	jsl	~~k_debug_string
;		return -1;
	.line	229
	lda	#$ffff
L32:
	tay
	pld
	tsc
	clc
	adc	#L26
	tcs
	tya
	rtl
;	}
	.line	230
;	return 0;
L10011:
	.line	231
	lda	#$0
	brl	L32
;}
	.line	232
	.endblock	232
L26	equ	2
L27	equ	1
	ends
	efunc
	.endfunc	232,1,2
	.line	232
	data
L18:
	db	$2A,$2A,$2A,$20,$66,$64,$63,$5F,$77,$61,$69,$74,$69,$6E,$74
	db	$3A,$3A,$69,$72,$71,$5F,$73,$69,$67,$6E,$61,$6C,$65,$64,$3A
	db	$00,$2A,$2A,$2A,$20,$66,$64,$63,$5F,$77,$61,$69,$74,$69,$6E
	db	$74,$3A,$3A,$69,$72,$71,$5F,$73,$69,$67,$6E,$61,$6C,$65,$64
	db	$3A,$00,$2A,$2A,$2A,$20,$66,$64,$63,$5F,$77,$61,$69,$74,$69
	db	$6E,$74,$3A,$3A,$74,$69,$6D,$65,$6F,$75,$74,$0D,$0A,$00
	ends
;
;static int fdc_wait(int sensei)
;{
	.line	234
	.line	235
	code
	func
	.function	235
~~fdc_wait:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L34
	tcs
	phd
	tcd
sensei_0	set	4
	.block	235
;	int tmout = fdc_waitint();
;
;	status_sz = 0;
tmout_1	set	0
	.sym	tmout,0,5,1,16
	.sym	sensei,4,5,6,16
	jsl	~~fdc_waitint
	sta	<L35+tmout_1
	.line	238
	stz	|~~status_sz
;	while (status_sz < 7 && (inportb(FDC_MSR) & MSR_CB))
	.line	239
L10012:
	sec
	lda	|~~status_sz
	sbc	#<$7
	bvs	L37
	eor	#$8000
L37:
	bpl	L38
	brl	L10013
L38:
	sep	#$20
	longa	off
	lda	>11473908
	and	#<$10
	rep	#$20
	longa	on
	bne	L39
	brl	L10013
L39:
;		status[status_sz++] = getbyte();
	.line	240
	lda	|~~status_sz
	sta	<R0
	inc	|~~status_sz
	jsl	~~getbyte
	sep	#$20
	longa	off
	ldx	<R0
	sta	|~~status,X
	rep	#$20
	longa	on
	brl	L10012
L10013:
;
;	if (sensei)
	.line	242
;	{
	lda	<L34+sensei_0
	bne	L40
	brl	L10014
L40:
	.line	243
;		sendbyte(CMD_SENSEI);
	.line	244
	pea	#<$8
	jsl	~~sendbyte
;		reg_sr0 = getbyte();
	.line	245
	jsl	~~getbyte
	sep	#$20
	longa	off
	sta	|~~reg_sr0
	rep	#$20
	longa	on
;		k_debug_hex("fdc_wait:reg_sr0:",reg_sr0);
	.line	246
	lda	|~~reg_sr0
	pha
	pea	#^L33
	pea	#<L33
	jsl	~~k_debug_hex
;		drives[cur_drive].track = getbyte();
	.line	247
	lda	|~~cur_drive
	and	#$ff
	sta	<R0
	lda	<R0
	asl	A
	adc	<R0
	asl	A
	sta	<R0
	jsl	~~getbyte
	ldx	<R0
	sta	|~~drives,X
;		k_debug_hex("fdc_wait:track:",drives[cur_drive].track);
	.line	248
	lda	|~~cur_drive
	and	#$ff
	sta	<R0
	lda	<R0
	asl	A
	adc	<R0
	asl	A
	sta	<R0
	ldx	<R0
	lda	|~~drives,X
	pha
	pea	#^L33+18
	pea	#<L33+18
	jsl	~~k_debug_hex
;	}
	.line	249
;
;	irq_signaled = 0;
L10014:
	.line	251
	sep	#$20
	longa	off
	stz	|~~irq_signaled
	rep	#$20
	longa	on
;	if (tmout)
	.line	252
;	{
	lda	<L35+tmout_1
	bne	L41
	brl	L10015
L41:
	.line	253
;		if (inportb(FDC_DIR) & DIR_DC)
	.line	254
;			drives[cur_drive].dchg = 1;
	sep	#$20
	longa	off
	lda	>11473911
	and	#<$80
	rep	#$20
	longa	on
	bne	L42
	brl	L10016
L42:
	.line	255
	lda	|~~cur_drive
	and	#$ff
	sta	<R0
	lda	<R0
	asl	A
	adc	<R0
	asl	A
	sta	<R0
	lda	#$1
	ldx	<R0
	sta	|~~drives+4,X
;		return 1;
L10016:
	.line	256
	lda	#$1
L43:
	tay
	lda	<L34+2
	sta	<L34+2+2
	lda	<L34+1
	sta	<L34+1+2
	pld
	tsc
	clc
	adc	#L34+2
	tcs
	tya
	rtl
;	}
	.line	257
;	else
L10015:
;		return 0;
	.line	259
	lda	#$0
	brl	L43
;}
	.line	260
	.endblock	260
L34	equ	6
L35	equ	5
	ends
	efunc
	.endfunc	260,5,6
	.line	260
	data
L33:
	db	$66,$64,$63,$5F,$77,$61,$69,$74,$3A,$72,$65,$67,$5F,$73,$72
	db	$30,$3A,$00,$66,$64,$63,$5F,$77,$61,$69,$74,$3A,$74,$72,$61
	db	$63,$6B,$3A,$00
	ends
;
;static void motor_on()
;{
	.line	262
	.line	263
	code
	func
	.function	263
~~motor_on:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L45
	tcs
	phd
	tcd
	.block	263
;	k_debug_string("motor_on\r\n");
	.line	264
	pea	#^L44
	pea	#<L44
	jsl	~~k_debug_string
;	motoff_timer = 0;
	.line	265
	stz	|~~motoff_timer
;	//if (drives[cur_drive].motstate == 0)
;	if(1)
	.line	267
;	{
	.line	268
;		reg_dor |= (1 << (cur_drive + 4));
	.line	269
	sep	#$20
	longa	off
	clc
	lda	#$4
	adc	|~~cur_drive
	rep	#$20
	longa	on
	pha
	lda	#$1
	plx
	xref	~~~casl
	jsl	~~~casl
	sep	#$20
	longa	off
	sta	<R0
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	lda	<R0
	tsb	|~~reg_dor
	rep	#$20
	longa	on
;		reg_dor |= cur_drive;
	.line	270
	sep	#$20
	longa	off
	lda	|~~cur_drive
	tsb	|~~reg_dor
	rep	#$20
	longa	on
;		outportb(FDC_DOR, reg_dor);
	.line	271
	sep	#$20
	longa	off
	lda	|~~reg_dor
	sta	>11473906
	rep	#$20
	longa	on
;		drives[cur_drive].motstate = 1;
	.line	272
	lda	|~~cur_drive
	and	#$ff
	sta	<R0
	lda	<R0
	asl	A
	adc	<R0
	asl	A
	sta	<R0
	lda	#$1
	ldx	<R0
	sta	|~~drives+2,X
;		//usleep(FL_SPIN_UP);
;		sleep(DRIVE_H1440_SPINUP);
	.line	274
	pea	#<$190
	jsl	~~sleep
;	}
	.line	275
;}
L10017:
	.line	276
L48:
	pld
	tsc
	clc
	adc	#L45
	tcs
	rtl
	.endblock	276
L45	equ	4
L46	equ	5
	ends
	efunc
	.endfunc	276,5,4
	.line	276
	data
L44:
	db	$6D,$6F,$74,$6F,$72,$5F,$6F,$6E,$0D,$0A,$00
	ends
;
;static void motor_off()
;{
	.line	278
	.line	279
	code
	func
	.function	279
~~motor_off:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L50
	tcs
	phd
	tcd
	.block	279
;	k_debug_string("motor_off\r\n");
	.line	280
	pea	#^L49
	pea	#<L49
	jsl	~~k_debug_string
;	if (drives[cur_drive].motstate)
	.line	281
;	{
	lda	|~~cur_drive
	and	#$ff
	sta	<R0
	lda	<R0
	asl	A
	adc	<R0
	asl	A
	sta	<R0
	ldx	<R0
	lda	|~~drives+2,X
	bne	L53
	brl	L10018
L53:
	.line	282
;		//motoff_timer = 2000;
;		motoff_timer = 200;
	.line	284
	lda	#$c8
	sta	|~~motoff_timer
;	}
	.line	285
;	// TODO
;	//motoff_timer = 1;
;	//floppy_timer();
;}
L10018:
	.line	289
L54:
	pld
	tsc
	clc
	adc	#L50
	tcs
	rtl
	.endblock	289
L50	equ	4
L51	equ	5
	ends
	efunc
	.endfunc	289,5,4
	.line	289
	data
L49:
	db	$6D,$6F,$74,$6F,$72,$5F,$6F,$66,$66,$0D,$0A,$00
	ends
;
;static void fdc_configure()
;{
	.line	291
	.line	292
	code
	func
	.function	292
~~fdc_configure:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L56
	tcs
	phd
	tcd
	.block	292
;	sendbyte(CMD_CONF);
	.line	293
	pea	#<$13
	jsl	~~sendbyte
;	sendbyte(0x00);
	.line	294
	pea	#<$0
	jsl	~~sendbyte
;	sendbyte(0x47); /* threshold = 8, FIFO on, polling on, implied seek on */
	.line	295
	pea	#<$47
	jsl	~~sendbyte
;	//sendbyte(0x4F); /* threshold = 16, FIFO off, polling on, implied seek on */
;	//sendbyte(0x7F); /* threshold = 16, FIFO on, polling on, implied seek on */
;	//sendbyte(0x7F);
;	//sendbyte(0x40);
;	sendbyte(0x00);
	.line	300
	pea	#<$0
	jsl	~~sendbyte
;	//sendbyte(0x2F);
;}
	.line	302
L59:
	pld
	tsc
	clc
	adc	#L56
	tcs
	rtl
	.endblock	302
L56	equ	0
L57	equ	1
	ends
	efunc
	.endfunc	302,1,0
	.line	302
;
;/**
;// Register Address
;#define FDD_STATUS_A           ((LPCHAR)0xAF13F0) // Read     use in with PS2 and PS2 mode 30 noly
;#define FDD_STATUS_B           ((LPCHAR)0xAF13F1) // Read
;#define FDD_DIGITAL_OUTPUT     ((LPCHAR)0xAF13F2) // Read/Write
;#define FDD_TAPE_DRIVER        ((LPCHAR)0xAF13F3) // Read/Write
;#define FDD_MAIN_STATUS        ((LPCHAR)0xAF13F4) // Read
;#define FDD_DATA_RATE_SELECT   ((LPCHAR)0xAF13F4) // Write
;#define FDD_FIFO               ((LPCHAR)0xAF13F5) // Read/Write
;//RESERVED_REG          0xAF13F6 // Reserved
;#define FDD_DIGITAL_INPUT      ((LPCHAR)0xAF13F7) // Read
;#define FDD_CONFIG_CTRL        ((LPCHAR)0xAF13F7) // Write
; */
;
;static void fdc_reset()
;{
	.line	318
	.line	319
	code
	func
	.function	319
~~fdc_reset:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L60
	tcs
	phd
	tcd
	.block	319
;	UCHAR st0, cyl;
;	int i;
;	/* Send reset */
;	outportb(FDD_DIGITAL_OUTPUT, 0x00);
st0_1	set	0
cyl_1	set	1
i_1	set	2
	.sym	st0,0,14,1,8
	.sym	cyl,1,14,1,8
	.sym	i,2,5,1,16
	.line	323
	sep	#$20
	longa	off
	lda	#$0
	sta	>11473906
	rep	#$20
	longa	on
;	io_wait();
	.line	324
	jsl	~~io_wait
;	io_wait();
	.line	325
	jsl	~~io_wait
;	io_wait();
	.line	326
	jsl	~~io_wait
;	io_wait();
	.line	327
	jsl	~~io_wait
;
;	//reg_dor = DOR_IRQ | DOR_RESET;
;	reg_dor = DOR_RESET;
	.line	330
	sep	#$20
	longa	off
	lda	#$4
	sta	|~~reg_dor
	rep	#$20
	longa	on
;	outportb(FDD_DIGITAL_OUTPUT, reg_dor);
	.line	331
	sep	#$20
	longa	off
	lda	|~~reg_dor
	sta	>11473906
	rep	#$20
	longa	on
;	io_wait();
	.line	332
	jsl	~~io_wait
;
;	outportb(FDD_DIGITAL_OUTPUT, reg_dor | 0x04);
	.line	334
	sep	#$20
	longa	off
	lda	|~~reg_dor
	ora	#<$4
	sta	>11473906
	rep	#$20
	longa	on
;	io_wait();
	.line	335
	jsl	~~io_wait
;
;	outportb(FDD_DATA_RATE_SELECT, 0x02);
	.line	337
	sep	#$20
	longa	off
	lda	#$2
	sta	>11473908
	rep	#$20
	longa	on
;	io_wait();
	.line	338
	jsl	~~io_wait
;
;	k_debug_string("fdc_reset\r\n");
	.line	340
	pea	#^L55
	pea	#<L55
	jsl	~~k_debug_string
;	/* Wait for IRQ or timeout */
;	/*
;	clock_t s = clock();
;	WAIT_COND(!irq_signaled && (clock() - s < FL_INT_TMT));
;	if (!irq_signaled)
;	{
;	}
;	*/
;
;	//sleep(1000);
;
;	//fdc_waitint();
;
;	//if (fdc_waitint())
;	//	return;
;	/* Hmph... Timeout */
;
;	for ( i = 0; i < 5; i++)
	.line	358
	stz	<L61+i_1
L10021:
;	{
	.line	359
;		sendbyte(CMD_SENSEI);
	.line	360
	pea	#<$8
	jsl	~~sendbyte
;		reg_sr0 = getbyte();
	.line	361
	jsl	~~getbyte
	sep	#$20
	longa	off
	sta	|~~reg_sr0
	rep	#$20
	longa	on
;		k_debug_bits("fdc_reset:reg_sr0:",reg_sr0);
	.line	362
	lda	|~~reg_sr0
	pha
	pea	#^L55+12
	pea	#<L55+12
	jsl	~~k_debug_bits
;		drives[i].track = getbyte();
	.line	363
	lda	<L61+i_1
	asl	A
	adc	<L61+i_1
	asl	A
	sta	<R0
	jsl	~~getbyte
	ldx	<R0
	sta	|~~drives,X
;		k_debug_bits("fdc_reset:track:",drives[i].track);
	.line	364
	lda	<L61+i_1
	asl	A
	adc	<L61+i_1
	asl	A
	sta	<R0
	ldx	<R0
	lda	|~~drives,X
	pha
	pea	#^L55+31
	pea	#<L55+31
	jsl	~~k_debug_bits
;		sleep(30);
	.line	365
	pea	#<$1e
	jsl	~~sleep
;	}
	.line	366
L10019:
	inc	<L61+i_1
	lda	<L61+i_1
	bmi	L63
	dea
	dea
	dea
	dea
	dea
	bpl	L64
L63:
	brl	L10021
L64:
L10020:
;
;	irq_signaled = 0;
	.line	368
	sep	#$20
	longa	off
	stz	|~~irq_signaled
	rep	#$20
	longa	on
;
;	fdc_configure();
	.line	370
	jsl	~~fdc_configure
;	//floppy_specify();
;
;	//motor_off();
;}
	.line	374
L65:
	pld
	tsc
	clc
	adc	#L60
	tcs
	rtl
	.endblock	374
L60	equ	8
L61	equ	5
	ends
	efunc
	.endfunc	374,5,8
	.line	374
	data
L55:
	db	$66,$64,$63,$5F,$72,$65,$73,$65,$74,$0D,$0A,$00,$66,$64,$63
	db	$5F,$72,$65,$73,$65,$74,$3A,$72,$65,$67,$5F,$73,$72,$30,$3A
	db	$00,$66,$64,$63,$5F,$72,$65,$73,$65,$74,$3A,$74,$72,$61,$63
	db	$6B,$3A,$00
	ends
;
;//! configure drive floppy__drive_data(3, 16, 240, FALSE);
;void floppy_drive_data(UINT stepr, UINT loadt, UINT unloadt,BOOL dma)
;{
	.line	377
	.line	378
	code
	xdef	~~floppy_drive_data
	func
	.function	378
~~floppy_drive_data:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L67
	tcs
	phd
	tcd
stepr_0	set	4
loadt_0	set	6
unloadt_0	set	8
dma_0	set	10
	.block	378
;
;	UINT data = 0;
;
;	k_debug_string("floppy_drive_data\r\n");
data_1	set	0
	.sym	data,0,16,1,16
	.sym	stepr,4,16,6,16
	.sym	loadt,6,16,6,16
	.sym	unloadt,8,16,6,16
	.sym	dma,10,14,6,8
	stz	<L68+data_1
	.line	382
	pea	#^L66
	pea	#<L66
	jsl	~~k_debug_string
;
;	//! send command
;	sendbyte(CMD_SPECIFY);
	.line	385
	pea	#<$3
	jsl	~~sendbyte
;//	data = ((stepr & 0xf) << 4) | (unloadt & 0xf);
;	data = 0x00;
	.line	387
	stz	<L68+data_1
;	sendbyte(data);
	.line	388
	pei	<L68+data_1
	jsl	~~sendbyte
;	//data = (((loadt) << 1) |  (1));
;//	data = ((0x05 << 1) | (1));
;	//data = 0x00; // enable DMA
;	data = 0x01; // disable DMA
	.line	392
	lda	#$1
	sta	<L68+data_1
;	sendbyte(data);
	.line	393
	pei	<L68+data_1
	jsl	~~sendbyte
;}
	.line	394
L70:
	lda	<L67+2
	sta	<L67+2+8
	lda	<L67+1
	sta	<L67+1+8
	pld
	tsc
	clc
	adc	#L67+8
	tcs
	rtl
	.endblock	394
L67	equ	2
L68	equ	1
	ends
	efunc
	.endfunc	394,1,2
	.line	394
	data
L66:
	db	$66,$6C,$6F,$70,$70,$79,$5F,$64,$72,$69,$76,$65,$5F,$64,$61
	db	$74,$61,$0D,$0A,$00
	ends
;
;
;static void floppy_specify()
;{
	.line	397
	.line	398
	code
	func
	.function	398
~~floppy_specify:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L72
	tcs
	phd
	tcd
	.block	398
;	sendbyte(CMD_SPECIFY);
	.line	399
	pea	#<$3
	jsl	~~sendbyte
;	sendbyte((0x08 << 4) | (0));
	.line	400
	pea	#<$80
	jsl	~~sendbyte
;	//sendbyte((0x05 << 1) | (1));
;	//sendbyte(0xDF);
;	sendbyte(0x01);
	.line	403
	pea	#<$1
	jsl	~~sendbyte
;}
	.line	404
L75:
	pld
	tsc
	clc
	adc	#L72
	tcs
	rtl
	.endblock	404
L72	equ	0
L73	equ	1
	ends
	efunc
	.endfunc	404,1,0
	.line	404
;
;static int floppy_select(int drive)
;{
	.line	406
	.line	407
	code
	func
	.function	407
~~floppy_select:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L76
	tcs
	phd
	tcd
drive_0	set	4
	.block	407
;	if (drive < 0 || drive > 3)
	.sym	drive,4,5,6,16
	.line	408
;	{
	lda	<L76+drive_0
	bpl	L80
	brl	L79
L80:
	sec
	lda	#$3
	sbc	<L76+drive_0
	bvs	L81
	eor	#$8000
L81:
	bpl	L82
	brl	L10022
L82:
L79:
	.line	409
;		return -1;
	.line	410
	lda	#$ffff
L83:
	tay
	lda	<L76+2
	sta	<L76+2+2
	lda	<L76+1
	sta	<L76+1+2
	pld
	tsc
	clc
	adc	#L76+2
	tcs
	tya
	rtl
;	}
	.line	411
;
;	outportb(FDC_CCR, 0x00);
L10022:
	.line	413
	sep	#$20
	longa	off
	lda	#$0
	sta	>11473911
	rep	#$20
	longa	on
;
;	cur_drive = (UCHAR) drive;
	.line	415
	sep	#$20
	longa	off
	lda	<L76+drive_0
	sta	|~~cur_drive
	rep	#$20
	longa	on
;	//reg_dor = (reg_dor & 0x0C) | cur_drive; /* stop all motors and select new drive */
;
;	reg_dor |= (1 << (drive + 4)); /* Spinup the selected drive */
	.line	418
	clc
	lda	#$4
	adc	<L76+drive_0
	pha
	lda	#$1
	plx
	xref	~~~asl
	jsl	~~~asl
	sta	<R0
	lda	|~~reg_dor
	and	#$ff
	sta	<R1
	lda	<R1
	ora	<R0
	sta	<R2
	sep	#$20
	longa	off
	lda	<R2
	sta	|~~reg_dor
	rep	#$20
	longa	on
;	reg_dor |= drive; /* Select the drive for commands as well */
	.line	419
	sep	#$20
	longa	off
	lda	<L76+drive_0
	tsb	|~~reg_dor
	rep	#$20
	longa	on
;
;	outportb(FDC_DOR, reg_dor);
	.line	421
	sep	#$20
	longa	off
	lda	|~~reg_dor
	sta	>11473906
	rep	#$20
	longa	on
;
;	sleep(DRIVE_H1440_SPINUP);
	.line	423
	pea	#<$190
	jsl	~~sleep
;
;	floppy_specify();
	.line	425
	jsl	~~floppy_specify
;	//floppy_drive_data(3, 16, 240, FALSE);
;
;	return 0;
	.line	428
	lda	#$0
	brl	L83
;}
	.line	429
	.endblock	429
L76	equ	12
L77	equ	13
	ends
	efunc
	.endfunc	429,13,12
	.line	429
;
;static void floppy_calibrate()
;{
	.line	431
	.line	432
	code
	func
	.function	432
~~floppy_calibrate:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L84
	tcs
	phd
	tcd
	.block	432
;	int i;
;	UCHAR  st0, cyl;
;	motor_on();
i_1	set	0
st0_1	set	2
cyl_1	set	3
	.sym	i,0,5,1,16
	.sym	st0,2,14,1,8
	.sym	cyl,3,14,1,8
	.line	435
	jsl	~~motor_on
;
;	//sendbyte(CMD_RECAL);
;	//sendbyte(cur_drive);
;
;	//fdc_wait(1);
;
;
;
;	for (i = 0; i < 100; i++)
	.line	444
	stz	<L85+i_1
L10025:
;	{
	.line	445
;
;		//! send command
;		sendbyte(CMD_RECAL);
	.line	448
	pea	#<$7
	jsl	~~sendbyte
;		sendbyte(cur_drive);
	.line	449
	lda	|~~cur_drive
	pha
	jsl	~~sendbyte
;		fdc_waitint();
	.line	450
	jsl	~~fdc_waitint
;		floppy_check_int(&st0, &cyl);
	.line	451
	pea	#0
	clc
	tdc
	adc	#<L85+cyl_1
	pha
	pea	#0
	clc
	tdc
	adc	#<L85+st0_1
	pha
	jsl	~~floppy_check_int
;
;		//! did we find cylinder 0? if so, we are done
;		if (!cyl)
	.line	454
;		{
	lda	<L85+cyl_1
	and	#$ff
	beq	L87
	brl	L10026
L87:
	.line	455
;			k_debug_hex("floppy_calibrate:cy:", cyl);
	.line	456
	pei	<L85+cyl_1
	pea	#^L71
	pea	#<L71
	jsl	~~k_debug_hex
;			//motor_off();
;			return ;
	.line	458
L88:
	pld
	tsc
	clc
	adc	#L84
	tcs
	rtl
;		}
	.line	459
;	}
L10026:
	.line	460
L10023:
	inc	<L85+i_1
	sec
	lda	<L85+i_1
	sbc	#<$64
	bvs	L89
	eor	#$8000
L89:
	bmi	L90
	brl	L10025
L90:
L10024:
;
;	motor_off();
	.line	462
	jsl	~~motor_off
;}
	.line	463
	brl	L88
	.endblock	463
L84	equ	4
L85	equ	1
	ends
	efunc
	.endfunc	463,1,4
	.line	463
	data
L71:
	db	$66,$6C,$6F,$70,$70,$79,$5F,$63,$61,$6C,$69,$62,$72,$61,$74
	db	$65,$3A,$63,$79,$3A,$00
	ends
;
;static int floppy_seek(UINT track)
;{
	.line	465
	.line	466
	code
	func
	.function	466
~~floppy_seek:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L92
	tcs
	phd
	tcd
track_0	set	4
	.block	466
;	UCHAR sts = 0;
;	int res = 0;
;
;	k_debug_hex("floppy_seek:cy:", track);
sts_1	set	0
res_1	set	1
	.sym	sts,0,14,1,8
	.sym	res,1,5,1,16
	.sym	track,4,16,6,16
	sep	#$20
	longa	off
	stz	<L93+sts_1
	rep	#$20
	longa	on
	stz	<L93+res_1
	.line	470
	pei	<L92+track_0
	pea	#^L91
	pea	#<L91
	jsl	~~k_debug_hex
;
;	//if (drives[cur_drive].track == track)
;	//	return 0;
;
;	motor_on();
	.line	475
	jsl	~~motor_on
;
;	sendbyte(CMD_SEEK);
	.line	477
	pea	#<$f
	jsl	~~sendbyte
;	sendbyte(cur_drive);
	.line	478
	lda	|~~cur_drive
	pha
	jsl	~~sendbyte
;	sendbyte((UCHAR) track);
	.line	479
	pei	<L92+track_0
	jsl	~~sendbyte
;
;
;	//if (fdc_wait(1))
;	//	res = 1;
;
;	do
	.line	485
L10029:
;	{
	.line	486
;		sts = FDD_MAIN_STATUS[0];
	.line	487
	sep	#$20
	longa	off
	lda	>11473908
	sta	<L93+sts_1
	rep	#$20
	longa	on
;		k_debug_bits("floppy_seek:sts:", sts);
	.line	488
	pei	<L93+sts_1
	pea	#^L91+16
	pea	#<L91+16
	jsl	~~k_debug_bits
;		if(sts & MSR_DIO)
	.line	489
;		{
	sep	#$20
	longa	off
	lda	<L93+sts_1
	and	#<$40
	rep	#$20
	longa	on
	bne	L95
	brl	L10030
L95:
	.line	490
;			k_debug_hex("floppy_seek:data:", inportb(FDC_DATA));
	.line	491
	lda	>11473909
	pha
	pea	#^L91+33
	pea	#<L91+33
	jsl	~~k_debug_hex
;		}
	.line	492
;	}while(sts & MSR_CB);
L10030:
	.line	493
L10027:
	sep	#$20
	longa	off
	lda	<L93+sts_1
	and	#<$10
	rep	#$20
	longa	on
	beq	L96
	brl	L10029
L96:
L10028:
;
;	//usleep(15 * MS);
;	sleep(15);
	.line	496
	pea	#<$f
	jsl	~~sleep
;
;	motor_off();
	.line	498
	jsl	~~motor_off
;
;	k_debug_bits("floppy_seek:stsA:", FDD_STATUS_A[0]);
	.line	500
	lda	>11473904
	pha
	pea	#^L91+51
	pea	#<L91+51
	jsl	~~k_debug_bits
;	k_debug_bits("floppy_seek:stsB:", FDD_STATUS_B[0]);
	.line	501
	lda	>11473905
	pha
	pea	#^L91+69
	pea	#<L91+69
	jsl	~~k_debug_bits
;
;
;
;	res = !(FDD_STATUS_A[0] & FDD_ST1_DATTA_ERROR);
	.line	505
	stz	<R0
	sep	#$20
	longa	off
	lda	>11473904
	and	#<$20
	rep	#$20
	longa	on
	beq	L98
	brl	L97
L98:
	inc	<R0
L97:
	lda	<R0
	sta	<L93+res_1
;
;
;	k_debug_integer("floppy_seek:res:", res);
	.line	508
	pei	<L93+res_1
	pea	#^L91+87
	pea	#<L91+87
	jsl	~~k_debug_integer
;
;	return res;
	.line	510
	lda	<L93+res_1
L99:
	tay
	lda	<L92+2
	sta	<L92+2+2
	lda	<L92+1
	sta	<L92+1+2
	pld
	tsc
	clc
	adc	#L92+2
	tcs
	tya
	rtl
;
;	//if (!(reg_sr0 & 0x20) || (drives[cur_drive].track != track))
;	//	return 1;
;	//else
;	//	return res;
;}
	.line	516
	.endblock	516
L92	equ	7
L93	equ	5
	ends
	efunc
	.endfunc	516,5,7
	.line	516
	data
L91:
	db	$66,$6C,$6F,$70,$70,$79,$5F,$73,$65,$65,$6B,$3A,$63,$79,$3A
	db	$00,$66,$6C,$6F,$70,$70,$79,$5F,$73,$65,$65,$6B,$3A,$73,$74
	db	$73,$3A,$00,$66,$6C,$6F,$70,$70,$79,$5F,$73,$65,$65,$6B,$3A
	db	$64,$61,$74,$61,$3A,$00,$66,$6C,$6F,$70,$70,$79,$5F,$73,$65
	db	$65,$6B,$3A,$73,$74,$73,$41,$3A,$00,$66,$6C,$6F,$70,$70,$79
	db	$5F,$73,$65,$65,$6B,$3A,$73,$74,$73,$42,$3A,$00,$66,$6C,$6F
	db	$70,$70,$79,$5F,$73,$65,$65,$6B,$3A,$72,$65,$73,$3A,$00
	ends
;
;int floppy_present()
;{
	.line	518
	.line	519
	code
	xdef	~~floppy_present
	func
	.function	519
~~floppy_present:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L101
	tcs
	phd
	tcd
	.block	519
;	int retCode = 0;
;	UCHAR dir = inportb(FDC_DIR);
;	if (dir & DIR_DC)
retCode_1	set	0
dir_1	set	2
	.sym	retCode,0,5,1,16
	.sym	dir,2,14,1,8
	stz	<L102+retCode_1
	sep	#$20
	longa	off
	lda	>11473911
	sta	<L102+dir_1
	rep	#$20
	longa	on
	.line	522
;	{
	sep	#$20
	longa	off
	lda	<L102+dir_1
	and	#<$80
	rep	#$20
	longa	on
	bne	L104
	brl	L10031
L104:
	.line	523
;		floppy_seek(79);
	.line	524
	pea	#<$4f
	jsl	~~floppy_seek
;		floppy_seek(0);
	.line	525
	pea	#<$0
	jsl	~~floppy_seek
;	}
	.line	526
;
;	retCode = !(inportb(FDC_DIR) & DIR_DC);
L10031:
	.line	528
	stz	<R0
	sep	#$20
	longa	off
	lda	>11473911
	and	#<$80
	rep	#$20
	longa	on
	beq	L106
	brl	L105
L106:
	inc	<R0
L105:
	lda	<R0
	sta	<L102+retCode_1
;
;	k_debug_bits("floppy_present:retCode:", (UCHAR)retCode);
	.line	530
	pei	<L102+retCode_1
	pea	#^L100
	pea	#<L100
	jsl	~~k_debug_bits
;
;	return retCode;
	.line	532
	lda	<L102+retCode_1
L107:
	tay
	pld
	tsc
	clc
	adc	#L101
	tcs
	tya
	rtl
;}
	.line	533
	.endblock	533
L101	equ	7
L102	equ	5
	ends
	efunc
	.endfunc	533,5,7
	.line	533
	data
L100:
	db	$66,$6C,$6F,$70,$70,$79,$5F,$70,$72,$65,$73,$65,$6E,$74,$3A
	db	$72,$65,$74,$43,$6F,$64,$65,$3A,$00
	ends
;
;static int floppy_transfer_try1(UCHAR* buf, int do_write, UINT c,UINT h, UINT s)
;{
	.line	535
	.line	536
	code
	func
	.function	536
~~floppy_transfer_try1:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L109
	tcs
	phd
	tcd
buf_0	set	4
do_write_0	set	8
c_0	set	10
h_0	set	12
s_0	set	14
	.block	536
;	int i = 0;
;	UCHAR msr = 0;
;	UCHAR cmd = do_write ? CMD_WRITE : CMD_READ;
;	//UCHAR cmd = do_write ? CMD_WRITE : 0xE6;
;	BOOL retCode = FALSE;
;
;	k_debug_integer("floppy_transfer_try:",cur_drive);
i_1	set	0
msr_1	set	2
cmd_1	set	3
retCode_1	set	4
	.sym	i,0,5,1,16
	.sym	msr,2,14,1,8
	.sym	cmd,3,14,1,8
	.sym	retCode,4,14,1,8
	.sym	buf,4,142,6,32
	.sym	do_write,8,5,6,16
	.sym	c,10,16,6,16
	.sym	h,12,16,6,16
	.sym	s,14,16,6,16
	stz	<L110+i_1
	sep	#$20
	longa	off
	stz	<L110+msr_1
	rep	#$20
	longa	on
	lda	<L109+do_write_0
	bne	L113
	brl	L112
L113:
	lda	#$45
	bra	L114
L112:
	lda	#$46
L114:
	sta	<R0
	sep	#$20
	longa	off
	lda	<R0
	sta	<L110+cmd_1
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	stz	<L110+retCode_1
	rep	#$20
	longa	on
	.line	543
	lda	|~~cur_drive
	and	#$ff
	pha
	pea	#^L108
	pea	#<L108
	jsl	~~k_debug_integer
;	k_debug_integer("floppy_transfer_try:track:",c);
	.line	544
	pei	<L109+c_0
	pea	#^L108+21
	pea	#<L108+21
	jsl	~~k_debug_integer
;	k_debug_integer("floppy_transfer_try:head:",h);
	.line	545
	pei	<L109+h_0
	pea	#^L108+48
	pea	#<L108+48
	jsl	~~k_debug_integer
;	k_debug_integer("floppy_transfer_try:sector:",s);
	.line	546
	pei	<L109+s_0
	pea	#^L108+74
	pea	#<L108+74
	jsl	~~k_debug_integer
;
;
;	//floppy_seek(c);
;
;
;	k_debug_string("floppy_transfer_try:READING NOW!\r\n");
	.line	552
	pea	#^L108+102
	pea	#<L108+102
	jsl	~~k_debug_string
;
;	sendbyte(cmd);
	.line	554
	pei	<L110+cmd_1
	jsl	~~sendbyte
;	sendbyte((UCHAR) ((h << 2) | cur_drive));
	.line	555
	lda	<L109+h_0
	asl	A
	asl	A
	sta	<R0
	lda	|~~cur_drive
	and	#$ff
	sta	<R1
	lda	<R1
	ora	<R0
	pha
	jsl	~~sendbyte
;	//sendbyte((UCHAR) 0x00);
;	sendbyte((UCHAR) c);
	.line	557
	pei	<L109+c_0
	jsl	~~sendbyte
;	sendbyte((UCHAR) h);
	.line	558
	pei	<L109+h_0
	jsl	~~sendbyte
;	sendbyte((UCHAR) s);
	.line	559
	pei	<L109+s_0
	jsl	~~sendbyte
;	sendbyte(0x2);
	.line	560
	pea	#<$2
	jsl	~~sendbyte
;	sendbyte((UCHAR) SEC_PER_TRACK);
	.line	561
	pea	#<$12
	jsl	~~sendbyte
;	sendbyte(0x1b);
	.line	562
	pea	#<$1b
	jsl	~~sendbyte
;	sendbyte(0xff);
	.line	563
	pea	#<$ff
	jsl	~~sendbyte
;
;	//if (fdc_waitint())
;//		return -1;
;	sleep(DRIVE_H1440_SPINUP);
	.line	567
	pea	#<$190
	jsl	~~sleep
;
;
;	//fdc_waitint();
;
;	/*
;	do
;	{
;		msr = inportb(FDC_MSR);
;		//k_debug_bits("floppy_transfer_try1:msr:",msr);
;		if(msr & (MSR_RQM |  MSR_DIO))
;			break;
;		//k_debug_integer("floppy_transfer_try:floppybufferIndex:",floppybufferIndex);
;		if(floppybufferIndex>0)
;			k_debug_hex("floppy_transfer_try:floppybufferIndex:data:",floppybuffer[floppybufferIndex - 1]);
;	}while(msr & MSR_CB);
;	*/
;	//for (i = 0; i < SECTOR_SIZE && (msr & MSR_NDMA); i++)
;
;	/*
;	for (i = 0; i < SECTOR_SIZE; i++)
;	{
;		if (do_write)
;			sendbyte(buf[i]);
;		else
;		{
;			buf[i] = getbyte();
;
;			if(buf[i]!=0xFF)
;				k_debug_hex("READ:", buf[i]);
;		}
;	}
;	*/
;
;	for (i = 0; i < SECTOR_SIZE; i++)
	.line	601
	stz	<L110+i_1
L10034:
;	{
	.line	602
;		msr = inportb(FDC_MSR);
	.line	603
	sep	#$20
	longa	off
	lda	>11473908
	sta	<L110+msr_1
	rep	#$20
	longa	on
;		//k_debug_bits("floppy_transfer_try1:msr:",msr);
;		if(msr & (MSR_RQM |  MSR_DIO))
	.line	605
;			break;
	sep	#$20
	longa	off
	lda	<L110+msr_1
	and	#<$c0
	rep	#$20
	longa	on
	beq	L115
	brl	L10033
L115:
;		//k_debug_integer("floppy_transfer_try:floppybufferIndex:",floppybufferIndex);
;		buf[i] = getbyte();
	.line	608
	jsl	~~getbyte
	sep	#$20
	longa	off
	ldy	<L110+i_1
	sta	[<L109+buf_0],Y
	rep	#$20
	longa	on
;
;	}
	.line	610
L10032:
	inc	<L110+i_1
	sec
	lda	<L110+i_1
	sbc	#<$200
	bvs	L116
	eor	#$8000
L116:
	bmi	L117
	brl	L10034
L117:
L10033:
;
;	k_debug_byte_array("DATA:\r\n",buf,512);
	.line	612
	pea	#^$200
	pea	#<$200
	pei	<L109+buf_0+2
	pei	<L109+buf_0
	pea	#^L108+137
	pea	#<L108+137
	jsl	~~k_debug_byte_array
;/*
;	for (i = 0; i < SECTOR_SIZE; i++)
;	{
;		buf[i] = inportb(FDC_DATA);
;		while(!(MSR_DIO & inportb(FDC_MSR)))
;			k_debug_bits("floppy_transfer_try1:read:msr:",msr);
;	}
;
;
;	/*
;	do
;	{
;		msr = inportb(FDC_MSR);
;		k_debug_bits("floppy_transfer_try1:msr:",msr);
;		buf[i] = inportb(FDC_DATA);
;		if(i < 511)
;			i++;
;	}while(msr & MSR_DIO);
;	*/
;
;
;	reg_sr0 = getbyte();
	.line	634
	jsl	~~getbyte
	sep	#$20
	longa	off
	sta	|~~reg_sr0
	rep	#$20
	longa	on
;	k_debug_bits("floppy_transfer_try1:reg_sr0:msr:",reg_sr0);
	.line	635
	lda	|~~reg_sr0
	pha
	pea	#^L108+145
	pea	#<L108+145
	jsl	~~k_debug_bits
;	reg_sr1 = getbyte();
	.line	636
	jsl	~~getbyte
	sep	#$20
	longa	off
	sta	|~~reg_sr1
	rep	#$20
	longa	on
;	k_debug_bits("floppy_transfer_try1:reg_sr1:msr:",reg_sr1);
	.line	637
	lda	|~~reg_sr1
	pha
	pea	#^L108+179
	pea	#<L108+179
	jsl	~~k_debug_bits
;	reg_sr2 = getbyte();
	.line	638
	jsl	~~getbyte
	sep	#$20
	longa	off
	sta	|~~reg_sr2
	rep	#$20
	longa	on
;	k_debug_bits("floppy_transfer_try1:reg_sr2:msr:",reg_sr2);
	.line	639
	lda	|~~reg_sr2
	pha
	pea	#^L108+213
	pea	#<L108+213
	jsl	~~k_debug_bits
;	drives[cur_drive].track = getbyte();
	.line	640
	lda	|~~cur_drive
	and	#$ff
	sta	<R0
	lda	<R0
	asl	A
	adc	<R0
	asl	A
	sta	<R0
	jsl	~~getbyte
	ldx	<R0
	sta	|~~drives,X
;
;	//k_debug_integer("floppy_transfer_try:drives[cur_drive].track:",drives[cur_drive].track);
;
;	i = getbyte();
	.line	644
	jsl	~~getbyte
	sta	<L110+i_1
;	k_debug_bits("floppy_transfer_try1:1:c:",i);
	.line	645
	pei	<L110+i_1
	pea	#^L108+247
	pea	#<L108+247
	jsl	~~k_debug_bits
;	//k_debug_integer("floppy_transfer_try:i1:",i);
;	i = getbyte();
	.line	647
	jsl	~~getbyte
	sta	<L110+i_1
;	k_debug_bits("floppy_transfer_try1:2:h:",i);
	.line	648
	pei	<L110+i_1
	pea	#^L108+273
	pea	#<L108+273
	jsl	~~k_debug_bits
;	//k_debug_integer("floppy_transfer_try:i2:",i);
;	i = getbyte();
	.line	650
	jsl	~~getbyte
	sta	<L110+i_1
;	k_debug_bits("floppy_transfer_try1:3:r:",i);
	.line	651
	pei	<L110+i_1
	pea	#^L108+299
	pea	#<L108+299
	jsl	~~k_debug_bits
;	//k_debug_integer("floppy_transfer_try:i3:",i);
;	i = getbyte();
	.line	653
	jsl	~~getbyte
	sta	<L110+i_1
;	k_debug_bits("floppy_transfer_try1:3:n:",i);
	.line	654
	pei	<L110+i_1
	pea	#^L108+325
	pea	#<L108+325
	jsl	~~k_debug_bits
;	//k_debug_integer("floppy_transfer_try:i3:",i);
;
;	k_debug_integer("floppy_transfer_try:floppybufferIndex:",floppybufferIndex);
	.line	657
	lda	|~~floppybufferIndex
	pha
	pea	#^L108+351
	pea	#<L108+351
	jsl	~~k_debug_integer
;	//return i != 2;
;
;	retCode = (i != 2);
	.line	660
	stz	<R0
	lda	<L110+i_1
	cmp	#<$2
	bne	L119
	brl	L118
L119:
	inc	<R0
L118:
	sep	#$20
	longa	off
	lda	<R0
	sta	<L110+retCode_1
	rep	#$20
	longa	on
;
;	return retCode;
	.line	662
	lda	<L110+retCode_1
	and	#$ff
L120:
	tay
	lda	<L109+2
	sta	<L109+2+12
	lda	<L109+1
	sta	<L109+1+12
	pld
	tsc
	clc
	adc	#L109+12
	tcs
	tya
	rtl
;}
	.line	663
	.endblock	663
L109	equ	13
L110	equ	9
	ends
	efunc
	.endfunc	663,9,13
	.line	663
	data
L108:
	db	$66,$6C,$6F,$70,$70,$79,$5F,$74,$72,$61,$6E,$73,$66,$65,$72
	db	$5F,$74,$72,$79,$3A,$00,$66,$6C,$6F,$70,$70,$79,$5F,$74,$72
	db	$61,$6E,$73,$66,$65,$72,$5F,$74,$72,$79,$3A,$74,$72,$61,$63
	db	$6B,$3A,$00,$66,$6C,$6F,$70,$70,$79,$5F,$74,$72,$61,$6E,$73
	db	$66,$65,$72,$5F,$74,$72,$79,$3A,$68,$65,$61,$64,$3A,$00,$66
	db	$6C,$6F,$70,$70,$79,$5F,$74,$72,$61,$6E,$73,$66,$65,$72,$5F
	db	$74,$72,$79,$3A,$73,$65,$63,$74,$6F,$72,$3A,$00,$66,$6C,$6F
	db	$70,$70,$79,$5F,$74,$72,$61,$6E,$73,$66,$65,$72,$5F,$74,$72
	db	$79,$3A,$52,$45,$41,$44,$49,$4E,$47,$20,$4E,$4F,$57,$21,$0D
	db	$0A,$00,$44,$41,$54,$41,$3A,$0D,$0A,$00,$66,$6C,$6F,$70,$70
	db	$79,$5F,$74,$72,$61,$6E,$73,$66,$65,$72,$5F,$74,$72,$79,$31
	db	$3A,$72,$65,$67,$5F,$73,$72,$30,$3A,$6D,$73,$72,$3A,$00,$66
	db	$6C,$6F,$70,$70,$79,$5F,$74,$72,$61,$6E,$73,$66,$65,$72,$5F
	db	$74,$72,$79,$31,$3A,$72,$65,$67,$5F,$73,$72,$31,$3A,$6D,$73
	db	$72,$3A,$00,$66,$6C,$6F,$70,$70,$79,$5F,$74,$72,$61,$6E,$73
	db	$66,$65,$72,$5F,$74,$72,$79,$31,$3A,$72,$65,$67,$5F,$73,$72
	db	$32,$3A,$6D,$73,$72,$3A,$00,$66,$6C,$6F,$70,$70,$79,$5F,$74
	db	$72,$61,$6E,$73,$66,$65,$72,$5F,$74,$72,$79,$31,$3A,$31,$3A
	db	$63,$3A,$00,$66,$6C,$6F,$70,$70,$79,$5F,$74,$72,$61,$6E,$73
	db	$66,$65,$72,$5F,$74,$72,$79,$31,$3A,$32,$3A,$68,$3A,$00,$66
	db	$6C,$6F,$70,$70,$79,$5F,$74,$72,$61,$6E,$73,$66,$65,$72,$5F
	db	$74,$72,$79,$31,$3A,$33,$3A,$72,$3A,$00,$66,$6C,$6F,$70,$70
	db	$79,$5F,$74,$72,$61,$6E,$73,$66,$65,$72,$5F,$74,$72,$79,$31
	db	$3A,$33,$3A,$6E,$3A,$00,$66,$6C,$6F,$70,$70,$79,$5F,$74,$72
	db	$61,$6E,$73,$66,$65,$72,$5F,$74,$72,$79,$3A,$66,$6C,$6F,$70
	db	$70,$79,$62,$75,$66,$66,$65,$72,$49,$6E,$64,$65,$78,$3A,$00
	ends
;
;void floppy_check_int(UCHAR* st0, UCHAR* cyl)
;{
	.line	665
	.line	666
	code
	xdef	~~floppy_check_int
	func
	.function	666
~~floppy_check_int:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L122
	tcs
	phd
	tcd
st0_0	set	4
cyl_0	set	8
	.block	666
;	k_debug_string("floppy_check_int\r\n");
	.sym	st0,4,142,6,32
	.sym	cyl,8,142,6,32
	.line	667
	pea	#^L121
	pea	#<L121
	jsl	~~k_debug_string
;
;	sendbyte(CMD_SENSEI);
	.line	669
	pea	#<$8
	jsl	~~sendbyte
;
;	*st0 = (UCHAR)getbyte();
	.line	671
	jsl	~~getbyte
	sep	#$20
	longa	off
	sta	[<L122+st0_0]
	rep	#$20
	longa	on
;	*cyl = (UCHAR)getbyte();
	.line	672
	jsl	~~getbyte
	sep	#$20
	longa	off
	sta	[<L122+cyl_0]
	rep	#$20
	longa	on
;
;	k_debug_hex("floppy_check_int:st0:", *st0);
	.line	674
	lda	[<L122+st0_0]
	pha
	pea	#^L121+19
	pea	#<L121+19
	jsl	~~k_debug_hex
;	k_debug_hex("floppy_check_int:cyl:", *cyl);
	.line	675
	lda	[<L122+cyl_0]
	pha
	pea	#^L121+41
	pea	#<L121+41
	jsl	~~k_debug_hex
;}
	.line	676
L125:
	lda	<L122+2
	sta	<L122+2+8
	lda	<L122+1
	sta	<L122+1+8
	pld
	tsc
	clc
	adc	#L122+8
	tcs
	rtl
	.endblock	676
L122	equ	0
L123	equ	1
	ends
	efunc
	.endfunc	676,1,0
	.line	676
	data
L121:
	db	$66,$6C,$6F,$70,$70,$79,$5F,$63,$68,$65,$63,$6B,$5F,$69,$6E
	db	$74,$0D,$0A,$00,$66,$6C,$6F,$70,$70,$79,$5F,$63,$68,$65,$63
	db	$6B,$5F,$69,$6E,$74,$3A,$73,$74,$30,$3A,$00,$66,$6C,$6F,$70
	db	$70,$79,$5F,$63,$68,$65,$63,$6B,$5F,$69,$6E,$74,$3A,$63,$79
	db	$6C,$3A,$00
	ends
;
;static int wait_til_ready(void)
;{
	.line	678
	.line	679
	code
	func
	.function	679
~~wait_til_ready:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L127
	tcs
	phd
	tcd
	.block	679
;	int counter, status;
;	for (counter = 0; counter < 10000; counter++)
counter_1	set	0
status_1	set	2
	.sym	counter,0,5,1,16
	.sym	status,2,5,1,16
	.line	681
	stz	<L128+counter_1
L10037:
;	{
	.line	682
;		status = getbyte();
	.line	683
	jsl	~~getbyte
	sta	<L128+status_1
;		if (status & STATUS_READY)
	.line	684
;		{
	lda	<L128+status_1
	and	#<$80
	bne	L130
	brl	L10038
L130:
	.line	685
;			return status;
	.line	686
	lda	<L128+status_1
L131:
	tay
	pld
	tsc
	clc
	adc	#L127
	tcs
	tya
	rtl
;		}
	.line	687
;	}
L10038:
	.line	688
L10035:
	inc	<L128+counter_1
	sec
	lda	<L128+counter_1
	sbc	#<$2710
	bvs	L132
	eor	#$8000
L132:
	bmi	L133
	brl	L10037
L133:
L10036:
;
;	return -3;
	.line	690
	lda	#$fffd
	brl	L131
;}
	.line	691
	.endblock	691
L127	equ	4
L128	equ	1
	ends
	efunc
	.endfunc	691,1,4
	.line	691
;
;static int floppy_transfer_try2(UCHAR* buf, int do_write, UINT c,UINT h, UINT s)
;{
	.line	693
	.line	694
	code
	func
	.function	694
~~floppy_transfer_try2:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L134
	tcs
	phd
	tcd
buf_0	set	4
do_write_0	set	8
c_0	set	10
h_0	set	12
s_0	set	14
	.block	694
;	UCHAR st, cyl;
;	int i = 0;
;	UINT max_bytes = 512;
;	UCHAR msr = 0;
;	UCHAR st0 = 0;
;	UCHAR cmd = do_write ? CMD_WRITE : CMD_READ;
;	unsigned char byte;
;	int status;
;	int bytes_read;
;	int result;
;
;	motor_on();
st_1	set	0
cyl_1	set	1
i_1	set	2
max_bytes_1	set	4
msr_1	set	6
st0_1	set	7
cmd_1	set	8
byte_1	set	9
status_1	set	10
bytes_read_1	set	12
result_1	set	14
	.sym	st,0,14,1,8
	.sym	cyl,1,14,1,8
	.sym	i,2,5,1,16
	.sym	max_bytes,4,16,1,16
	.sym	msr,6,14,1,8
	.sym	st0,7,14,1,8
	.sym	cmd,8,14,1,8
	.sym	byte,9,14,1,8
	.sym	status,10,5,1,16
	.sym	bytes_read,12,5,1,16
	.sym	result,14,5,1,16
	.sym	buf,4,142,6,32
	.sym	do_write,8,5,6,16
	.sym	c,10,16,6,16
	.sym	h,12,16,6,16
	.sym	s,14,16,6,16
	stz	<L135+i_1
	lda	#$200
	sta	<L135+max_bytes_1
	sep	#$20
	longa	off
	stz	<L135+msr_1
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	stz	<L135+st0_1
	rep	#$20
	longa	on
	lda	<L134+do_write_0
	bne	L138
	brl	L137
L138:
	lda	#$45
	bra	L139
L137:
	lda	#$46
L139:
	sta	<R0
	sep	#$20
	longa	off
	lda	<R0
	sta	<L135+cmd_1
	rep	#$20
	longa	on
	.line	706
	jsl	~~motor_on
;
;	k_debug_string("floppy_transfer_try2\r\n");
	.line	708
	pea	#^L126
	pea	#<L126
	jsl	~~k_debug_string
;
;	floppy_check_int(&st,&cyl);
	.line	710
	pea	#0
	clc
	tdc
	adc	#<L135+cyl_1
	pha
	pea	#0
	clc
	tdc
	adc	#<L135+st_1
	pha
	jsl	~~floppy_check_int
;
;	//sendbyte(CMD_READ);
;	sendbyte(FD_READ | (((DISK_H1440_HEAD ==2)?1:0) << 6));
	.line	713
	pea	#<$e6
	jsl	~~sendbyte
;	sendbyte((UCHAR) ((h << 2) | cur_drive));
	.line	714
	lda	<L134+h_0
	asl	A
	asl	A
	sta	<R0
	lda	|~~cur_drive
	and	#$ff
	sta	<R1
	lda	<R1
	ora	<R0
	pha
	jsl	~~sendbyte
;	sendbyte((UCHAR) c);
	.line	715
	pei	<L134+c_0
	jsl	~~sendbyte
;	sendbyte((UCHAR) h);
	.line	716
	pei	<L134+h_0
	jsl	~~sendbyte
;	sendbyte((UCHAR) s);
	.line	717
	pei	<L134+s_0
	jsl	~~sendbyte
;	sendbyte(0x2);
	.line	718
	pea	#<$2
	jsl	~~sendbyte
;	sendbyte(DISK_H1440_SECT);
	.line	719
	pea	#<$12
	jsl	~~sendbyte
;	sendbyte(DISK_H1440_GAP);
	.line	720
	pea	#<$1b
	jsl	~~sendbyte
;	sendbyte(0xff);
	.line	721
	pea	#<$ff
	jsl	~~sendbyte
;
;	k_debug_string("floppy_transfer_try2:check for RQM\r\n");
	.line	723
	pea	#^L126+23
	pea	#<L126+23
	jsl	~~k_debug_string
;	//sleep(10);
;
;	/*
;	i = 32000;
;	msr = 0;//inportb(FDC_MSR);
;	while(status != (STATUS_READY|STATUS_NON_DMA))
;	{
;		//k_debug_integer("floppy_transfer_try2:wait for RQM:",i);
;
;		//k_debug_hex("     RQM:",(msr & 0x80));
;		//k_debug_hex("     DIO:",(msr & 0x40));
;		//k_debug_hex("    NDMA:",(msr & 0x20));
;		//k_debug_hex("    CMDB:",(msr & 0x10));
;		i--;
;		if(i == 0)
;		{
;			//st0 =  inportb(SRA);
;
;			k_debug_integer("floppy_transfer_try2:wait for ready ABORT:",i);
;			k_debug_hex("     RQM:",(msr & 0x80));
;			k_debug_hex("     DIO:",(msr & 0x40));
;			k_debug_hex("    NDMA:",(msr & 0x20));
;			k_debug_hex("    CMDB:",(msr & 0x10));
;
;			k_debug_hex("     IRQ:",(st0 & 0x80));
;
;			return 1;
;		}
;		//sleep(30);
;		msr = inportb(FDC_MSR);
;	}
;	*/
;
;	do
	.line	757
L10041:
;	{
	.line	758
;		status =  inportb(FDC_MSR);
	.line	759
	lda	>11473908
	and	#$ff
	sta	<L135+status_1
;		status &= STATUS_READY | STATUS_NON_DMA;
	.line	760
	lda	#$ff5f
	trb	<L135+status_1
;	} while (status != (STATUS_READY | STATUS_NON_DMA));
	.line	761
L10039:
	lda	<L135+status_1
	cmp	#<$a0
	beq	L140
	brl	L10041
L140:
L10040:
;
;
;	//st0 =  inportb(SRA);
;	k_debug_string("floppy_transfer_try2:read start\r\n");
	.line	765
	pea	#^L126+60
	pea	#<L126+60
	jsl	~~k_debug_string
;	//k_debug_hex("     RQM:",(msr & 0x80));
;	//k_debug_hex("     DIO:",(msr & 0x40));
;	//k_debug_hex("    NDMA:",(msr & 0x20));
;	//k_debug_hex("    CMDB:",(msr & 0x10));
;	//k_debug_hex("     IRQ:",(st0 & 0x80));
;
;
;	for (i = 0; i < max_bytes; i++)
	.line	773
	stz	<L135+i_1
	brl	L10045
L10044:
;	{
	.line	774
;		if ((status = wait_til_ready()) < 0)
	.line	775
;		{
	jsl	~~wait_til_ready
	sta	<L135+status_1
	lda	<L135+status_1
	bmi	L141
	brl	L10046
L141:
	.line	776
;			break;
	.line	777
	brl	L10043
;		}
	.line	778
;		status &= STATUS_READY | STATUS_DIR | STATUS_NON_DMA;
L10046:
	.line	779
	lda	#$ff1f
	trb	<L135+status_1
;		if (status != (STATUS_READY | STATUS_DIR | STATUS_NON_DMA))
	.line	780
;		{
	lda	<L135+status_1
	cmp	#<$e0
	bne	L142
	brl	L10047
L142:
	.line	781
;			break;
	.line	782
	brl	L10043
;		}
	.line	783
;		byte = getbyte();
L10047:
	.line	784
	jsl	~~getbyte
	sep	#$20
	longa	off
	sta	<L135+byte_1
	rep	#$20
	longa	on
;		k_debug_hex("READ:",byte);
	.line	785
	pei	<L135+byte_1
	pea	#^L126+94
	pea	#<L126+94
	jsl	~~k_debug_hex
;		buf[i] = byte;
	.line	786
	sep	#$20
	longa	off
	lda	<L135+byte_1
	ldy	<L135+i_1
	sta	[<L134+buf_0],Y
	rep	#$20
	longa	on
;	}
	.line	787
L10042:
	inc	<L135+i_1
L10045:
	lda	<L135+i_1
	cmp	<L135+max_bytes_1
	bcs	L143
	brl	L10044
L143:
L10043:
;	bytes_read = i;
	.line	788
	lda	<L135+i_1
	sta	<L135+bytes_read_1
;
;	/* The result stage begins when STATUS_NON_DMA is cleared */
;	while ((status = inportb(FDC_MSR)) & STATUS_NON_DMA)
	.line	791
L10048:
	lda	>11473908
	and	#$ff
	sta	<L135+status_1
	lda	<L135+status_1
	and	#<$20
	bne	L144
	brl	L10049
L144:
;	{
	.line	792
;		/* We get extra bytes in the fifo  past
;		 * the end of the sector and drop them on the floor.
;		 * Otherwise the fifo is polluted.
;		 */
;		getbyte();
	.line	797
	jsl	~~getbyte
;	}
	.line	798
	brl	L10048
L10049:
;	/*
;	for (i = 0; i < SECTOR_SIZE ; i++)
;	{
;		msr = inportb(FDC_MSR);
;		if((msr & 0xC0) || (msr & 0x20))
;		{
;
;			buf[i] = inportb(FDC_DATA);
;
;			if(buf[i]!=0xFF)
;			{
;				//k_debug_integer("INDEX:", i);
;				k_debug_hex("READ:", buf[i]);
;			}
;
;			//sleep(20);
;		}
;		else
;		{
;			st0 =  inportb(SRA);
;			k_debug_integer("floppy_transfer_try2:read quit:",i);
;			k_debug_hex("     RQM:",(msr & 0x80));
;			k_debug_hex("     DIO:",(msr & 0x40));
;			k_debug_hex("    NDMA:",(msr & 0x20));
;			k_debug_hex("    CMDB:",(msr & 0x10));
;			k_debug_hex("     IRQ:",(st0 & 0x80));
;			break;
;		}
;		//msr = inportb(FDC_MSR);
;	}
;	*/
;
;	msr = inportb(FDC_MSR);
	.line	831
	sep	#$20
	longa	off
	lda	>11473908
	sta	<L135+msr_1
	rep	#$20
	longa	on
;
;	//st0 =  inportb(SRA);
;	k_debug_string("floppy_transfer_try2:read complete\r\n");
	.line	834
	pea	#^L126+100
	pea	#<L126+100
	jsl	~~k_debug_string
;	//k_debug_hex("     RQM:",(msr & 0x80));
;	//k_debug_hex("     DIO:",(msr & 0x40));
;	//k_debug_hex("    NDMA:",(msr & 0x20));
;	//k_debug_hex("    CMDB:",(msr & 0x10));
;	//k_debug_hex("     IRQ:",(st0 & 0x80));
;
;	/*
;	i = 0xFFF;
;	msr = inportb(FDC_MSR);
;	while(!(msr & 0x80))
;	{
;
;		//k_debug_integer("floppy_transfer_try2:wait for result:",i);
;
;		//k_debug_hex("     RQM:",(msr & 0x80));
;		//k_debug_hex("     DIO:",(msr & 0x40));
;		//k_debug_hex("    NDMA:",(msr & 0x20));
;		//k_debug_hex("    CMDB:",(msr & 0x10));
;		i--;
;		if(i == 0)
;		{
;			//st0 =  inportb(SRA);
;			k_debug_integer("floppy_transfer_try2:wait for result ABORT:",i);
;			k_debug_hex("     RQM:",(msr & 0x80));
;			k_debug_hex("     DIO:",(msr & 0x40));
;			k_debug_hex("    NDMA:",(msr & 0x20));
;			k_debug_hex("    CMDB:",(msr & 0x10));
;			k_debug_hex("     IRQ:",(st0 & 0x80));
;			//return 1;
;		}
;
;		msr = inportb(FDC_MSR);
;		//sleep(30);
;	}
;	*/
;
;	reg_sr0 = getbyte();
	.line	871
	jsl	~~getbyte
	sep	#$20
	longa	off
	sta	|~~reg_sr0
	rep	#$20
	longa	on
;	k_debug_integer("floppy_transfer_try2:reg_sr0:",reg_sr0);
	.line	872
	lda	|~~reg_sr0
	and	#$ff
	pha
	pea	#^L126+137
	pea	#<L126+137
	jsl	~~k_debug_integer
;	reg_sr1 = getbyte();
	.line	873
	jsl	~~getbyte
	sep	#$20
	longa	off
	sta	|~~reg_sr1
	rep	#$20
	longa	on
;	k_debug_integer("floppy_transfer_try2:reg_sr1:",reg_sr1);
	.line	874
	lda	|~~reg_sr1
	and	#$ff
	pha
	pea	#^L126+167
	pea	#<L126+167
	jsl	~~k_debug_integer
;	reg_sr2 = getbyte();
	.line	875
	jsl	~~getbyte
	sep	#$20
	longa	off
	sta	|~~reg_sr2
	rep	#$20
	longa	on
;	k_debug_integer("floppy_transfer_try2:reg_sr2:",reg_sr2);
	.line	876
	lda	|~~reg_sr2
	and	#$ff
	pha
	pea	#^L126+197
	pea	#<L126+197
	jsl	~~k_debug_integer
;	drives[cur_drive].track = getbyte();
	.line	877
	lda	|~~cur_drive
	and	#$ff
	sta	<R0
	lda	<R0
	asl	A
	adc	<R0
	asl	A
	sta	<R0
	jsl	~~getbyte
	ldx	<R0
	sta	|~~drives,X
;	k_debug_integer("floppy_transfer_try2:C:",drives[cur_drive].track);
	.line	878
	lda	|~~cur_drive
	and	#$ff
	sta	<R0
	lda	<R0
	asl	A
	adc	<R0
	asl	A
	sta	<R0
	ldx	<R0
	lda	|~~drives,X
	pha
	pea	#^L126+227
	pea	#<L126+227
	jsl	~~k_debug_integer
;
;	//k_debug_integer("floppy_transfer_try:drives[cur_drive].track:",drives[cur_drive].track);
;
;	i = getbyte();
	.line	882
	jsl	~~getbyte
	sta	<L135+i_1
;	k_debug_integer("floppy_transfer_try2:H:",i);
	.line	883
	pei	<L135+i_1
	pea	#^L126+251
	pea	#<L126+251
	jsl	~~k_debug_integer
;	i = getbyte();
	.line	884
	jsl	~~getbyte
	sta	<L135+i_1
;	k_debug_integer("floppy_transfer_try2:R:",i);
	.line	885
	pei	<L135+i_1
	pea	#^L126+275
	pea	#<L126+275
	jsl	~~k_debug_integer
;	i = getbyte();
	.line	886
	jsl	~~getbyte
	sta	<L135+i_1
;	k_debug_integer("floppy_transfer_try2:N:",i);
	.line	887
	pei	<L135+i_1
	pea	#^L126+299
	pea	#<L126+299
	jsl	~~k_debug_integer
;
;
;	floppy_check_int(&st, &cyl);
	.line	890
	pea	#0
	clc
	tdc
	adc	#<L135+cyl_1
	pha
	pea	#0
	clc
	tdc
	adc	#<L135+st_1
	pha
	jsl	~~floppy_check_int
;	//k_debug_hex("floppy_transfer_try2:st:",st);
;	//k_debug_hex("floppy_transfer_try2:cyl:",cyl);
;
;	result = (i != 2);
	.line	894
	stz	<R0
	lda	<L135+i_1
	cmp	#<$2
	bne	L146
	brl	L145
L146:
	inc	<R0
L145:
	lda	<R0
	sta	<L135+result_1
;
;
;	k_debug_string("floppy_transfer_try2:read exit\r\n");
	.line	897
	pea	#^L126+323
	pea	#<L126+323
	jsl	~~k_debug_string
;
;	return result;
	.line	899
	lda	<L135+result_1
L147:
	tay
	lda	<L134+2
	sta	<L134+2+12
	lda	<L134+1
	sta	<L134+1+12
	pld
	tsc
	clc
	adc	#L134+12
	tcs
	tya
	rtl
;
;}
	.line	901
	.endblock	901
L134	equ	24
L135	equ	9
	ends
	efunc
	.endfunc	901,9,24
	.line	901
	data
L126:
	db	$66,$6C,$6F,$70,$70,$79,$5F,$74,$72,$61,$6E,$73,$66,$65,$72
	db	$5F,$74,$72,$79,$32,$0D,$0A,$00,$66,$6C,$6F,$70,$70,$79,$5F
	db	$74,$72,$61,$6E,$73,$66,$65,$72,$5F,$74,$72,$79,$32,$3A,$63
	db	$68,$65,$63,$6B,$20,$66,$6F,$72,$20,$52,$51,$4D,$0D,$0A,$00
	db	$66,$6C,$6F,$70,$70,$79,$5F,$74,$72,$61,$6E,$73,$66,$65,$72
	db	$5F,$74,$72,$79,$32,$3A,$72,$65,$61,$64,$20,$73,$74,$61,$72
	db	$74,$0D,$0A,$00,$52,$45,$41,$44,$3A,$00,$66,$6C,$6F,$70,$70
	db	$79,$5F,$74,$72,$61,$6E,$73,$66,$65,$72,$5F,$74,$72,$79,$32
	db	$3A,$72,$65,$61,$64,$20,$63,$6F,$6D,$70,$6C,$65,$74,$65,$0D
	db	$0A,$00,$66,$6C,$6F,$70,$70,$79,$5F,$74,$72,$61,$6E,$73,$66
	db	$65,$72,$5F,$74,$72,$79,$32,$3A,$72,$65,$67,$5F,$73,$72,$30
	db	$3A,$00,$66,$6C,$6F,$70,$70,$79,$5F,$74,$72,$61,$6E,$73,$66
	db	$65,$72,$5F,$74,$72,$79,$32,$3A,$72,$65,$67,$5F,$73,$72,$31
	db	$3A,$00,$66,$6C,$6F,$70,$70,$79,$5F,$74,$72,$61,$6E,$73,$66
	db	$65,$72,$5F,$74,$72,$79,$32,$3A,$72,$65,$67,$5F,$73,$72,$32
	db	$3A,$00,$66,$6C,$6F,$70,$70,$79,$5F,$74,$72,$61,$6E,$73,$66
	db	$65,$72,$5F,$74,$72,$79,$32,$3A,$43,$3A,$00,$66,$6C,$6F,$70
	db	$70,$79,$5F,$74,$72,$61,$6E,$73,$66,$65,$72,$5F,$74,$72,$79
	db	$32,$3A,$48,$3A,$00,$66,$6C,$6F,$70,$70,$79,$5F,$74,$72,$61
	db	$6E,$73,$66,$65,$72,$5F,$74,$72,$79,$32,$3A,$52,$3A,$00,$66
	db	$6C,$6F,$70,$70,$79,$5F,$74,$72,$61,$6E,$73,$66,$65,$72,$5F
	db	$74,$72,$79,$32,$3A,$4E,$3A,$00,$66,$6C,$6F,$70,$70,$79,$5F
	db	$74,$72,$61,$6E,$73,$66,$65,$72,$5F,$74,$72,$79,$32,$3A,$72
	db	$65,$61,$64,$20,$65,$78,$69,$74,$0D,$0A,$00
	ends
;
;
;static int floppy_transfer(UCHAR *buf, int do_write, UINT c, UINT h,UINT s)
;{
	.line	904
	.line	905
	code
	func
	.function	905
~~floppy_transfer:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L149
	tcs
	phd
	tcd
buf_0	set	4
do_write_0	set	8
c_0	set	10
h_0	set	12
s_0	set	14
	.block	905
;	int i;
;	int res = 0 ;
;
;	i = floppy_seek(c);
i_1	set	0
res_1	set	2
	.sym	i,0,5,1,16
	.sym	res,2,5,1,16
	.sym	buf,4,142,6,32
	.sym	do_write,8,5,6,16
	.sym	c,10,16,6,16
	.sym	h,12,16,6,16
	.sym	s,14,16,6,16
	stz	<L150+res_1
	.line	909
	pei	<L149+c_0
	jsl	~~floppy_seek
	sta	<L150+i_1
;
;	k_debug_integer("floppy_transfer:i:", i);
	.line	911
	pei	<L150+i_1
	pea	#^L148
	pea	#<L148
	jsl	~~k_debug_integer
;	k_debug_integer("floppy_transfer:c:", c);
	.line	912
	pei	<L149+c_0
	pea	#^L148+19
	pea	#<L148+19
	jsl	~~k_debug_integer
;	k_debug_integer("floppy_transfer:h:", h);
	.line	913
	pei	<L149+h_0
	pea	#^L148+38
	pea	#<L148+38
	jsl	~~k_debug_integer
;	k_debug_integer("floppy_transfer:s:", s);
	.line	914
	pei	<L149+s_0
	pea	#^L148+57
	pea	#<L148+57
	jsl	~~k_debug_integer
;
;	/*
;	res = -1;
;	for (i = 0; i < 4; i++)
;	{
;		if(!floppy_transfer_try2(buf, do_write, c, h, s))
;		{
;			if (!(reg_sr0 & 0xC0))
;			{
;				res = 0;
;				break;
;			}
;			if (do_write && (reg_sr1 & 0x2))
;			{
;				res = 1;
;				break;
;			}
;		}
;	}
;	return res;
;	*/
;
;	//return floppy_transfer_try2(buf, do_write, c, h, s);
;	return floppy_transfer_try1(buf, do_write, c, h, s);
	.line	938
	pei	<L149+s_0
	pei	<L149+h_0
	pei	<L149+c_0
	pei	<L149+do_write_0
	pei	<L149+buf_0+2
	pei	<L149+buf_0
	jsl	~~floppy_transfer_try1
L152:
	tay
	lda	<L149+2
	sta	<L149+2+12
	lda	<L149+1
	sta	<L149+1+12
	pld
	tsc
	clc
	adc	#L149+12
	tcs
	tya
	rtl
;
;}
	.line	940
	.endblock	940
L149	equ	4
L150	equ	1
	ends
	efunc
	.endfunc	940,1,4
	.line	940
	data
L148:
	db	$66,$6C,$6F,$70,$70,$79,$5F,$74,$72,$61,$6E,$73,$66,$65,$72
	db	$3A,$69,$3A,$00,$66,$6C,$6F,$70,$70,$79,$5F,$74,$72,$61,$6E
	db	$73,$66,$65,$72,$3A,$63,$3A,$00,$66,$6C,$6F,$70,$70,$79,$5F
	db	$74,$72,$61,$6E,$73,$66,$65,$72,$3A,$68,$3A,$00,$66,$6C,$6F
	db	$70,$70,$79,$5F,$74,$72,$61,$6E,$73,$66,$65,$72,$3A,$73,$3A
	db	$00
	ends
;
;static int floppy_transfer_lba(UCHAR *buf, ULONG lba, UINT num,int do_write)
;{
	.line	942
	.line	943
	code
	func
	.function	943
~~floppy_transfer_lba:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L154
	tcs
	phd
	tcd
buf_0	set	4
lba_0	set	8
num_0	set	12
do_write_0	set	14
	.block	943
;	int i;
;	int res = 0;
;	UINT c, h, s;
;
;	motor_on();
i_1	set	0
res_1	set	2
c_1	set	4
h_1	set	6
s_1	set	8
	.sym	i,0,5,1,16
	.sym	res,2,5,1,16
	.sym	c,4,16,1,16
	.sym	h,6,16,1,16
	.sym	s,8,16,1,16
	.sym	buf,4,142,6,32
	.sym	lba,8,18,6,32
	.sym	num,12,16,6,16
	.sym	do_write,14,5,6,16
	stz	<L155+res_1
	.line	948
	jsl	~~motor_on
;
;	for (i = 0; i < num; i++)
	.line	950
	stz	<L155+i_1
	brl	L10053
L10052:
;	{
	.line	951
;		k_debug_long("floppy_transfer_lba:lba:", lba);
	.line	952
	pei	<L154+lba_0+2
	pei	<L154+lba_0
	pea	#^L153
	pea	#<L153
	jsl	~~k_debug_long
;		lba_2_chs(lba, &c, &h, &s);
	.line	953
	pea	#0
	clc
	tdc
	adc	#<L155+s_1
	pha
	pea	#0
	clc
	tdc
	adc	#<L155+h_1
	pha
	pea	#0
	clc
	tdc
	adc	#<L155+c_1
	pha
	pei	<L154+lba_0+2
	pei	<L154+lba_0
	jsl	~~lba_2_chs
;
;		res = floppy_transfer(buf, do_write, c, h, s);
	.line	955
	pei	<L155+s_1
	pei	<L155+h_1
	pei	<L155+c_1
	pei	<L154+do_write_0
	pei	<L154+buf_0+2
	pei	<L154+buf_0
	jsl	~~floppy_transfer
	sta	<L155+res_1
;		k_debug_integer("floppy_transfer_lba:res:", res);
	.line	956
	pei	<L155+res_1
	pea	#^L153+25
	pea	#<L153+25
	jsl	~~k_debug_integer
;		lba++;
	.line	957
	inc	<L154+lba_0
	bne	L157
	inc	<L154+lba_0+2
L157:
;	}
	.line	958
L10050:
	inc	<L155+i_1
L10053:
	lda	<L155+i_1
	cmp	<L154+num_0
	bcs	L158
	brl	L10052
L158:
L10051:
;
;	motor_off();
	.line	960
	jsl	~~motor_off
;
;	return res;
	.line	962
	lda	<L155+res_1
L159:
	tay
	lda	<L154+2
	sta	<L154+2+12
	lda	<L154+1
	sta	<L154+1+12
	pld
	tsc
	clc
	adc	#L154+12
	tcs
	tya
	rtl
;}
	.line	963
	.endblock	963
L154	equ	10
L155	equ	1
	ends
	efunc
	.endfunc	963,1,10
	.line	963
	data
L153:
	db	$66,$6C,$6F,$70,$70,$79,$5F,$74,$72,$61,$6E,$73,$66,$65,$72
	db	$5F,$6C,$62,$61,$3A,$6C,$62,$61,$3A,$00,$66,$6C,$6F,$70,$70
	db	$79,$5F,$74,$72,$61,$6E,$73,$66,$65,$72,$5F,$6C,$62,$61,$3A
	db	$72,$65,$73,$3A,$00
	ends
;
;int floppy_read(const UCHAR *buf, ULONG offset, ULONG num)
;{
	.line	965
	.line	966
	code
	xdef	~~floppy_read
	func
	.function	966
~~floppy_read:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L161
	tcs
	phd
	tcd
buf_0	set	4
offset_0	set	8
num_0	set	12
	.block	966
;	return floppy_transfer_lba((UCHAR*) buf, offset, (UINT) num, 0);
	.sym	buf,4,142,6,32
	.sym	offset,8,18,6,32
	.sym	num,12,18,6,32
	.line	967
	pea	#<$0
	pei	<L161+num_0
	pei	<L161+offset_0+2
	pei	<L161+offset_0
	pei	<L161+buf_0+2
	pei	<L161+buf_0
	jsl	~~floppy_transfer_lba
L164:
	tay
	lda	<L161+2
	sta	<L161+2+12
	lda	<L161+1
	sta	<L161+1+12
	pld
	tsc
	clc
	adc	#L161+12
	tcs
	tya
	rtl
;}
	.line	968
	.endblock	968
L161	equ	0
L162	equ	1
	ends
	efunc
	.endfunc	968,1,0
	.line	968
;
;int floppy_write(UCHAR *buf, ULONG offset, ULONG num)
;{
	.line	970
	.line	971
	code
	xdef	~~floppy_write
	func
	.function	971
~~floppy_write:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L165
	tcs
	phd
	tcd
buf_0	set	4
offset_0	set	8
num_0	set	12
	.block	971
;	return floppy_transfer_lba(buf, offset, (UINT) num, 1);
	.sym	buf,4,142,6,32
	.sym	offset,8,18,6,32
	.sym	num,12,18,6,32
	.line	972
	pea	#<$1
	pei	<L165+num_0
	pei	<L165+offset_0+2
	pei	<L165+offset_0
	pei	<L165+buf_0+2
	pei	<L165+buf_0
	jsl	~~floppy_transfer_lba
L168:
	tay
	lda	<L165+2
	sta	<L165+2+12
	lda	<L165+1
	sta	<L165+1+12
	pld
	tsc
	clc
	adc	#L165+12
	tcs
	tya
	rtl
;}
	.line	973
	.endblock	973
L165	equ	0
L166	equ	1
	ends
	efunc
	.endfunc	973,1,0
	.line	973
;
;void floppy_init()
;{
	.line	975
	.line	976
	code
	xdef	~~floppy_init
	func
	.function	976
~~floppy_init:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L169
	tcs
	phd
	tcd
	.block	976
;	int r = 0;
;	int pres = 0;
;
;	k_debug_string("floppy_init\r\n");
r_1	set	0
pres_1	set	2
	.sym	r,0,5,1,16
	.sym	pres,2,5,1,16
	stz	<L170+r_1
	stz	<L170+pres_1
	.line	980
	pea	#^L160
	pea	#<L160
	jsl	~~k_debug_string
;
;	fdc_reset();
	.line	982
	jsl	~~fdc_reset
;
;	sendbyte(CMD_VERSION);
	.line	984
	pea	#<$10
	jsl	~~sendbyte
;	r = getbyte();
	.line	985
	jsl	~~getbyte
	sta	<L170+r_1
;	k_debug_long("fdc ver:", r);
	.line	986
	ldy	#$0
	lda	<L170+r_1
	bpl	L172
	dey
L172:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L160+14
	pea	#<L160+14
	jsl	~~k_debug_long
;	if (r != 0x90)
	.line	987
;	{
	lda	<L170+r_1
	cmp	#<$90
	bne	L173
	brl	L10054
L173:
	.line	988
;		k_debug_string("floppy might not being working\r\n");
	.line	989
	pea	#^L160+23
	pea	#<L160+23
	jsl	~~k_debug_string
;	}
	.line	990
;
;	k_debug_string("select\r\n");
L10054:
	.line	992
	pea	#^L160+56
	pea	#<L160+56
	jsl	~~k_debug_string
;	floppy_select(0);
	.line	993
	pea	#<$0
	jsl	~~floppy_select
;	k_debug_string("calibrate\r\n");
	.line	994
	pea	#^L160+65
	pea	#<L160+65
	jsl	~~k_debug_string
;	floppy_calibrate();
	.line	995
	jsl	~~floppy_calibrate
;	k_debug_long("sr0:", reg_sr0);
	.line	996
	lda	|~~reg_sr0
	and	#$ff
	sta	<R0
	stz	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L160+77
	pea	#<L160+77
	jsl	~~k_debug_long
;
;	pres = floppy_present();
	.line	998
	jsl	~~floppy_present
	sta	<L170+pres_1
;	k_debug_long("floppy_present():", pres);
	.line	999
	ldy	#$0
	lda	<L170+pres_1
	bpl	L174
	dey
L174:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L160+82
	pea	#<L160+82
	jsl	~~k_debug_long
;
;	r = floppy_read(floppybuffer, 0, 1);
	.line	1001
	pea	#^$1
	pea	#<$1
	pea	#^$0
	pea	#<$0
	lda	#<~~floppybuffer
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~floppy_read
	sta	<L170+r_1
;
;	k_debug_integer("read(0) return:",r);
	.line	1003
	pei	<L170+r_1
	pea	#^L160+100
	pea	#<L160+100
	jsl	~~k_debug_integer
;	k_debug_byte_array("floppy_sector:\r\n",floppybuffer,512);
	.line	1004
	pea	#^$200
	pea	#<$200
	lda	#<~~floppybuffer
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L160+116
	pea	#<L160+116
	jsl	~~k_debug_byte_array
;
;/*
;	r = floppy_read(floppybuffer, 1, 1);
;
;		k_debug_integer("read(0):",r);
;
;		k_debug_byte_array("floppy_sector:\r\n",floppybuffer,512);
;*/
;	//k_debug_integer("read(0):", floppy_read(floppybuffer, 1,1));
;	//k_debug_integer("read(0):", floppy_read(floppybuffer, 19, 1));
;
;	//motor_off();
;}
	.line	1017
L175:
	pld
	tsc
	clc
	adc	#L169
	tcs
	rtl
	.endblock	1017
L169	equ	8
L170	equ	5
	ends
	efunc
	.endfunc	1017,5,8
	.line	1017
	data
L160:
	db	$66,$6C,$6F,$70,$70,$79,$5F,$69,$6E,$69,$74,$0D,$0A,$00,$66
	db	$64,$63,$20,$76,$65,$72,$3A,$00,$66,$6C,$6F,$70,$70,$79,$20
	db	$6D,$69,$67,$68,$74,$20,$6E,$6F,$74,$20,$62,$65,$69,$6E,$67
	db	$20,$77,$6F,$72,$6B,$69,$6E,$67,$0D,$0A,$00,$73,$65,$6C,$65
	db	$63,$74,$0D,$0A,$00,$63,$61,$6C,$69,$62,$72,$61,$74,$65,$0D
	db	$0A,$00,$73,$72,$30,$3A,$00,$66,$6C,$6F,$70,$70,$79,$5F,$70
	db	$72,$65,$73,$65,$6E,$74,$28,$29,$3A,$00,$72,$65,$61,$64,$28
	db	$30,$29,$20,$72,$65,$74,$75,$72,$6E,$3A,$00,$66,$6C,$6F,$70
	db	$70,$79,$5F,$73,$65,$63,$74,$6F,$72,$3A,$0D,$0A,$00
	ends
;
;/* this is IRQ6 handler */
;void floppy_isr()
;{
	.line	1020
	.line	1021
	code
	xdef	~~floppy_isr
	func
	.function	1021
~~floppy_isr:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L177
	tcs
	phd
	tcd
	.block	1021
;	irq_signaled = 1;
	.line	1022
	sep	#$20
	longa	off
	lda	#$1
	sta	|~~irq_signaled
	rep	#$20
	longa	on
;}
	.line	1023
L180:
	pld
	tsc
	clc
	adc	#L177
	tcs
	rtl
	.endblock	1023
L177	equ	0
L178	equ	1
	ends
	efunc
	.endfunc	1023,1,0
	.line	1023
;
;/* this's being called from timer isr (1000 Hz) */
;void floppy_timer()
;{
	.line	1026
	.line	1027
	code
	xdef	~~floppy_timer
	func
	.function	1027
~~floppy_timer:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L181
	tcs
	phd
	tcd
	.block	1027
;	if (motoff_timer > 0)
	.line	1028
;	{
	sec
	lda	#$0
	sbc	|~~motoff_timer
	bvs	L184
	eor	#$8000
L184:
	bpl	L185
	brl	L10055
L185:
	.line	1029
;		//k_debug_string("motoff_timer\r\n");
;		motoff_timer--;
	.line	1031
	dec	|~~motoff_timer
;		if (motoff_timer == 0)
	.line	1032
;		{
	lda	|~~motoff_timer
	beq	L186
	brl	L10056
L186:
	.line	1033
;			k_debug_hex("motoff_timer_off:",inportb(FDC_DOR));
	.line	1034
	lda	>11473906
	pha
	pea	#^L176
	pea	#<L176
	jsl	~~k_debug_hex
;			reg_dor &= ~(1 << (cur_drive + 4));
	.line	1035
	lda	|~~cur_drive
	and	#$ff
	sta	<R0
	clc
	lda	#$4
	adc	<R0
	pha
	lda	#$1
	plx
	xref	~~~asl
	jsl	~~~asl
	eor	#<$ffffffff
	sta	<R0
	lda	|~~reg_dor
	and	#$ff
	sta	<R1
	lda	<R1
	and	<R0
	sta	<R2
	sep	#$20
	longa	off
	lda	<R2
	sta	|~~reg_dor
	rep	#$20
	longa	on
;			k_debug_hex("motoff_timer_off:",reg_dor);
	.line	1036
	lda	|~~reg_dor
	pha
	pea	#^L176+18
	pea	#<L176+18
	jsl	~~k_debug_hex
;			outportb(FDC_DOR, reg_dor);
	.line	1037
	sep	#$20
	longa	off
	lda	|~~reg_dor
	sta	>11473906
	rep	#$20
	longa	on
;			drives[cur_drive].motstate = 0;
	.line	1038
	lda	|~~cur_drive
	and	#$ff
	sta	<R0
	lda	<R0
	asl	A
	adc	<R0
	asl	A
	sta	<R0
	lda	#$0
	ldx	<R0
	sta	|~~drives+2,X
;		}
	.line	1039
;	}
L10056:
	.line	1040
;}
L10055:
	.line	1041
L187:
	pld
	tsc
	clc
	adc	#L181
	tcs
	rtl
	.endblock	1041
L181	equ	12
L182	equ	13
	ends
	efunc
	.endfunc	1041,13,12
	.line	1041
	data
L176:
	db	$6D,$6F,$74,$6F,$66,$66,$5F,$74,$69,$6D,$65,$72,$5F,$6F,$66
	db	$66,$3A,$00,$6D,$6F,$74,$6F,$66,$66,$5F,$74,$69,$6D,$65,$72
	db	$5F,$6F,$66,$66,$3A,$00
	ends
;
;BOOL k_fd_reset(VOID)
;{
	.line	1043
	.line	1044
	code
	xdef	~~k_fd_reset
	func
	.function	1044
~~k_fd_reset:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L189
	tcs
	phd
	tcd
	.block	1044
;	inportb(FDC_DOR);
	.line	1045
;
;	return TRUE;
	.line	1047
	lda	#$1
L192:
	tay
	pld
	tsc
	clc
	adc	#L189
	tcs
	tya
	rtl
;}
	.line	1048
	.endblock	1048
L189	equ	0
L190	equ	1
	ends
	efunc
	.endfunc	1048,1,0
	.line	1048
;
;
;BOOL k_fd_init(VOID)
;{
	.line	1051
	.line	1052
	code
	xdef	~~k_fd_init
	func
	.function	1052
~~k_fd_init:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L193
	tcs
	phd
	tcd
	.block	1052
;	INT i = 0;
;	INT wait = 0;
;
;	inportb(FDC_DOR) = 0x04;
i_1	set	0
wait_1	set	2
	.sym	i,0,5,1,16
	.sym	wait,2,5,1,16
	stz	<L194+i_1
	stz	<L194+wait_1
	.line	1056
	sep	#$20
	longa	off
	lda	#$4
	sta	>11473906
	rep	#$20
	longa	on
;
;	sleep(1);
	.line	1058
	pea	#<$1
	jsl	~~sleep
;
;	inportb(FDC_DRS) = 0x02;
	.line	1060
	sep	#$20
	longa	off
	lda	#$2
	sta	>11473908
	rep	#$20
	longa	on
;
;	sleep(32768);
	.line	1062
	pea	#<$8000
	jsl	~~sleep
;
;	for ( i = 0; i < 5; i++)
	.line	1064
	stz	<L194+i_1
L10059:
;	{
	.line	1065
;		sendbyte(CMD_SENSEI);
	.line	1066
	pea	#<$8
	jsl	~~sendbyte
;		reg_sr0 = getbyte();
	.line	1067
	jsl	~~getbyte
	sep	#$20
	longa	off
	sta	|~~reg_sr0
	rep	#$20
	longa	on
;		k_debug_bits("fdc_reset:CMD_SENSEI:reg_sr0:",reg_sr0);
	.line	1068
	lda	|~~reg_sr0
	pha
	pea	#^L188
	pea	#<L188
	jsl	~~k_debug_bits
;		drives[i].track = getbyte();
	.line	1069
	lda	<L194+i_1
	asl	A
	adc	<L194+i_1
	asl	A
	sta	<R0
	jsl	~~getbyte
	ldx	<R0
	sta	|~~drives,X
;		k_debug_bits("fdc_reset:CMD_SENSEI:track:",drives[i].track);
	.line	1070
	lda	<L194+i_1
	asl	A
	adc	<L194+i_1
	asl	A
	sta	<R0
	ldx	<R0
	lda	|~~drives,X
	pha
	pea	#^L188+30
	pea	#<L188+30
	jsl	~~k_debug_bits
;		sleep(30);
	.line	1071
	pea	#<$1e
	jsl	~~sleep
;	}
	.line	1072
L10057:
	inc	<L194+i_1
	lda	<L194+i_1
	bmi	L196
	dea
	dea
	dea
	dea
	dea
	bpl	L197
L196:
	brl	L10059
L197:
L10058:
;
;
;	return TRUE;
	.line	1075
	lda	#$1
L198:
	tay
	pld
	tsc
	clc
	adc	#L193
	tcs
	tya
	rtl
;}
	.line	1076
	.endblock	1076
L193	equ	8
L194	equ	5
	ends
	efunc
	.endfunc	1076,5,8
	.line	1076
	data
L188:
	db	$66,$64,$63,$5F,$72,$65,$73,$65,$74,$3A,$43,$4D,$44,$5F,$53
	db	$45,$4E,$53,$45,$49,$3A,$72,$65,$67,$5F,$73,$72,$30,$3A,$00
	db	$66,$64,$63,$5F,$72,$65,$73,$65,$74,$3A,$43,$4D,$44,$5F,$53
	db	$45,$4E,$53,$45,$49,$3A,$74,$72,$61,$63,$6B,$3A,$00
	ends
;
;BOOL k_fd_isreadable(VOID)
;{
	.line	1078
	.line	1079
	code
	xdef	~~k_fd_isreadable
	func
	.function	1079
~~k_fd_isreadable:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L200
	tcs
	phd
	tcd
	.block	1079
;	int timeout = 0;
;	UCHAR sts = 0;
;
;	for (timeout = 0; timeout < 0x0FF; timeout++)
timeout_1	set	0
sts_1	set	2
	.sym	timeout,0,5,1,16
	.sym	sts,2,14,1,8
	stz	<L201+timeout_1
	sep	#$20
	longa	off
	stz	<L201+sts_1
	rep	#$20
	longa	on
	.line	1083
	stz	<L201+timeout_1
L10062:
;	{
	.line	1084
;		sts = inportb(FDC_MSR);
	.line	1085
	sep	#$20
	longa	off
	lda	>11473908
	sta	<L201+sts_1
	rep	#$20
	longa	on
;		if ((sts & MSR_DIO) == MSR_DIO)
	.line	1086
;			return TRUE;
	lda	<L201+sts_1
	and	#<$40
	sta	<R0
	lda	<R0
	cmp	#<$40
	beq	L203
	brl	L10063
L203:
	.line	1087
	lda	#$1
L204:
	tay
	pld
	tsc
	clc
	adc	#L200
	tcs
	tya
	rtl
;	}
L10063:
	.line	1088
L10060:
	inc	<L201+timeout_1
	sec
	lda	<L201+timeout_1
	sbc	#<$ff
	bvs	L205
	eor	#$8000
L205:
	bmi	L206
	brl	L10062
L206:
L10061:
;
;	return FALSE;
	.line	1090
	lda	#$0
	brl	L204
;}
	.line	1091
	.endblock	1091
L200	equ	7
L201	equ	5
	ends
	efunc
	.endfunc	1091,5,7
	.line	1091
;
;BOOL k_fd_isready(VOID)
;{
	.line	1093
	.line	1094
	code
	xdef	~~k_fd_isready
	func
	.function	1094
~~k_fd_isready:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L207
	tcs
	phd
	tcd
	.block	1094
;	int timeout = 0;
;	UCHAR sts = 0;
;
;	for (timeout = 0; timeout < 0x0FF; timeout++)
timeout_1	set	0
sts_1	set	2
	.sym	timeout,0,5,1,16
	.sym	sts,2,14,1,8
	stz	<L208+timeout_1
	sep	#$20
	longa	off
	stz	<L208+sts_1
	rep	#$20
	longa	on
	.line	1098
	stz	<L208+timeout_1
L10066:
;	{
	.line	1099
;		sts = inportb(FDC_MSR);
	.line	1100
	sep	#$20
	longa	off
	lda	>11473908
	sta	<L208+sts_1
	rep	#$20
	longa	on
;		if ((sts & MSR_RQM) == MSR_RQM)
	.line	1101
;			return TRUE;
	lda	<L208+sts_1
	and	#<$80
	sta	<R0
	lda	<R0
	cmp	#<$80
	beq	L210
	brl	L10067
L210:
	.line	1102
	lda	#$1
L211:
	tay
	pld
	tsc
	clc
	adc	#L207
	tcs
	tya
	rtl
;	}
L10067:
	.line	1103
L10064:
	inc	<L208+timeout_1
	sec
	lda	<L208+timeout_1
	sbc	#<$ff
	bvs	L212
	eor	#$8000
L212:
	bmi	L213
	brl	L10066
L213:
L10065:
;
;	return FALSE;
	.line	1105
	lda	#$0
	brl	L211
;}
	.line	1106
	.endblock	1106
L207	equ	7
L208	equ	5
	ends
	efunc
	.endfunc	1106,5,7
	.line	1106
;
;BOOL k_fd_isbusy(VOID)
;{
	.line	1108
	.line	1109
	code
	xdef	~~k_fd_isbusy
	func
	.function	1109
~~k_fd_isbusy:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L214
	tcs
	phd
	tcd
	.block	1109
;	int timeout = 0;
;	UCHAR sts = 0;
;
;	for (timeout = 0; timeout < 0x0FF; timeout++)
timeout_1	set	0
sts_1	set	2
	.sym	timeout,0,5,1,16
	.sym	sts,2,14,1,8
	stz	<L215+timeout_1
	sep	#$20
	longa	off
	stz	<L215+sts_1
	rep	#$20
	longa	on
	.line	1113
	stz	<L215+timeout_1
L10070:
;	{
	.line	1114
;		sts = inportb(FDC_MSR);
	.line	1115
	sep	#$20
	longa	off
	lda	>11473908
	sta	<L215+sts_1
	rep	#$20
	longa	on
;		if ((sts & MSR_CB) == 0)
	.line	1116
;			return TRUE;
	sep	#$20
	longa	off
	lda	<L215+sts_1
	and	#<$10
	rep	#$20
	longa	on
	beq	L217
	brl	L10071
L217:
	.line	1117
	lda	#$1
L218:
	tay
	pld
	tsc
	clc
	adc	#L214
	tcs
	tya
	rtl
;	}
L10071:
	.line	1118
L10068:
	inc	<L215+timeout_1
	sec
	lda	<L215+timeout_1
	sbc	#<$ff
	bvs	L219
	eor	#$8000
L219:
	bmi	L220
	brl	L10070
L220:
L10069:
;	return FALSE;
	.line	1119
	lda	#$0
	brl	L218
;}
	.line	1120
	.endblock	1120
L214	equ	3
L215	equ	1
	ends
	efunc
	.endfunc	1120,1,3
	.line	1120
;
;BOOL k_fd_isbusy_drive(UCHAR drive)
;{
	.line	1122
	.line	1123
	code
	xdef	~~k_fd_isbusy_drive
	func
	.function	1123
~~k_fd_isbusy_drive:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L221
	tcs
	phd
	tcd
drive_0	set	4
	.block	1123
;	int timeout = 0;
;	UCHAR sts = 0;
;
;	for (timeout = 0; timeout < 0x0FF; timeout++)
timeout_1	set	0
sts_1	set	2
	.sym	timeout,0,5,1,16
	.sym	sts,2,14,1,8
	.sym	drive,4,14,6,8
	stz	<L222+timeout_1
	sep	#$20
	longa	off
	stz	<L222+sts_1
	rep	#$20
	longa	on
	.line	1127
	stz	<L222+timeout_1
L10074:
;	{
	.line	1128
;		sts = inportb(FDC_MSR);
	.line	1129
	sep	#$20
	longa	off
	lda	>11473908
	sta	<L222+sts_1
	rep	#$20
	longa	on
;		if ((sts & drive) == 0)
	.line	1130
;			return TRUE;
	sep	#$20
	longa	off
	lda	<L221+drive_0
	and	<L222+sts_1
	rep	#$20
	longa	on
	beq	L224
	brl	L10075
L224:
	.line	1131
	lda	#$1
L225:
	tay
	lda	<L221+2
	sta	<L221+2+2
	lda	<L221+1
	sta	<L221+1+2
	pld
	tsc
	clc
	adc	#L221+2
	tcs
	tya
	rtl
;	}
L10075:
	.line	1132
L10072:
	inc	<L222+timeout_1
	sec
	lda	<L222+timeout_1
	sbc	#<$ff
	bvs	L226
	eor	#$8000
L226:
	bmi	L227
	brl	L10074
L227:
L10073:
;	return FALSE;
	.line	1133
	lda	#$0
	brl	L225
;}
	.line	1134
	.endblock	1134
L221	equ	3
L222	equ	1
	ends
	efunc
	.endfunc	1134,1,3
	.line	1134
;
;UINT k_fd_read_sector(UCHAR *buf, ULONG lba)
;{
	.line	1136
	.line	1137
	code
	xdef	~~k_fd_read_sector
	func
	.function	1137
~~k_fd_read_sector:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L228
	tcs
	phd
	tcd
buf_0	set	4
lba_0	set	8
	.block	1137
;	return k_fd_read_lba(buf, lba, 1, FALSE);
	.sym	buf,4,142,6,32
	.sym	lba,8,18,6,32
	.line	1138
	pea	#<$0
	pea	#<$1
	pei	<L228+lba_0+2
	pei	<L228+lba_0
	pei	<L228+buf_0+2
	pei	<L228+buf_0
	jsl	~~k_fd_read_lba
L231:
	tay
	lda	<L228+2
	sta	<L228+2+8
	lda	<L228+1
	sta	<L228+1+8
	pld
	tsc
	clc
	adc	#L228+8
	tcs
	tya
	rtl
;}
	.line	1139
	.endblock	1139
L228	equ	0
L229	equ	1
	ends
	efunc
	.endfunc	1139,1,0
	.line	1139
;
;static int k_fd_read_lba(UCHAR *buf, ULONG lba, UINT num,int do_write)
;{
	.line	1141
	.line	1142
	code
	func
	.function	1142
~~k_fd_read_lba:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L232
	tcs
	phd
	tcd
buf_0	set	4
lba_0	set	8
num_0	set	12
do_write_0	set	14
	.block	1142
;	int i;
;	int res = 0;
;	UINT c, h, s;
;
;	motor_on();
i_1	set	0
res_1	set	2
c_1	set	4
h_1	set	6
s_1	set	8
	.sym	i,0,5,1,16
	.sym	res,2,5,1,16
	.sym	c,4,16,1,16
	.sym	h,6,16,1,16
	.sym	s,8,16,1,16
	.sym	buf,4,142,6,32
	.sym	lba,8,18,6,32
	.sym	num,12,16,6,16
	.sym	do_write,14,5,6,16
	stz	<L233+res_1
	.line	1147
	jsl	~~motor_on
;
;	for (i = 0; i < num; i++)
	.line	1149
	stz	<L233+i_1
	brl	L10079
L10078:
;	{
	.line	1150
;		k_debug_long("k_fd_read_lba:lba:", lba);
	.line	1151
	pei	<L232+lba_0+2
	pei	<L232+lba_0
	pea	#^L199
	pea	#<L199
	jsl	~~k_debug_long
;		lba_2_chs(lba, &c, &h, &s);
	.line	1152
	pea	#0
	clc
	tdc
	adc	#<L233+s_1
	pha
	pea	#0
	clc
	tdc
	adc	#<L233+h_1
	pha
	pea	#0
	clc
	tdc
	adc	#<L233+c_1
	pha
	pei	<L232+lba_0+2
	pei	<L232+lba_0
	jsl	~~lba_2_chs
;
;		res = k_fd_rw_command(buf, do_write, c, h, s);
	.line	1154
	pei	<L233+s_1
	pei	<L233+h_1
	pei	<L233+c_1
	pei	<L232+do_write_0
	pei	<L232+buf_0+2
	pei	<L232+buf_0
	jsl	~~k_fd_rw_command
	sta	<L233+res_1
;		k_debug_integer("k_fd_read_lba:res:", res);
	.line	1155
	pei	<L233+res_1
	pea	#^L199+19
	pea	#<L199+19
	jsl	~~k_debug_integer
;		lba++;
	.line	1156
	inc	<L232+lba_0
	bne	L235
	inc	<L232+lba_0+2
L235:
;	}
	.line	1157
L10076:
	inc	<L233+i_1
L10079:
	lda	<L233+i_1
	cmp	<L232+num_0
	bcs	L236
	brl	L10078
L236:
L10077:
;
;	motor_off();
	.line	1159
	jsl	~~motor_off
;
;	return res;
	.line	1161
	lda	<L233+res_1
L237:
	tay
	lda	<L232+2
	sta	<L232+2+12
	lda	<L232+1
	sta	<L232+1+12
	pld
	tsc
	clc
	adc	#L232+12
	tcs
	tya
	rtl
;}
	.line	1162
	.endblock	1162
L232	equ	10
L233	equ	1
	ends
	efunc
	.endfunc	1162,1,10
	.line	1162
	data
L199:
	db	$6B,$5F,$66,$64,$5F,$72,$65,$61,$64,$5F,$6C,$62,$61,$3A,$6C
	db	$62,$61,$3A,$00,$6B,$5F,$66,$64,$5F,$72,$65,$61,$64,$5F,$6C
	db	$62,$61,$3A,$72,$65,$73,$3A,$00
	ends
;
;static int k_fd_rw_command(UCHAR* buf, int do_write, UINT c,UINT h, UINT s)
;{
	.line	1164
	.line	1165
	code
	func
	.function	1165
~~k_fd_rw_command:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L239
	tcs
	phd
	tcd
buf_0	set	4
do_write_0	set	8
c_0	set	10
h_0	set	12
s_0	set	14
	.block	1165
;	int i = 0;
;	UCHAR msr = 0;
;	UCHAR cmd = do_write ? CMD_WRITE : CMD_READ;
;	//UCHAR cmd = do_write ? CMD_WRITE : 0xE6;
;	BOOL retCode = FALSE;
;
;	k_debug_integer("k_fd_rw_command:",cur_drive);
i_1	set	0
msr_1	set	2
cmd_1	set	3
retCode_1	set	4
	.sym	i,0,5,1,16
	.sym	msr,2,14,1,8
	.sym	cmd,3,14,1,8
	.sym	retCode,4,14,1,8
	.sym	buf,4,142,6,32
	.sym	do_write,8,5,6,16
	.sym	c,10,16,6,16
	.sym	h,12,16,6,16
	.sym	s,14,16,6,16
	stz	<L240+i_1
	sep	#$20
	longa	off
	stz	<L240+msr_1
	rep	#$20
	longa	on
	lda	<L239+do_write_0
	bne	L243
	brl	L242
L243:
	lda	#$45
	bra	L244
L242:
	lda	#$46
L244:
	sta	<R0
	sep	#$20
	longa	off
	lda	<R0
	sta	<L240+cmd_1
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	stz	<L240+retCode_1
	rep	#$20
	longa	on
	.line	1172
	lda	|~~cur_drive
	and	#$ff
	pha
	pea	#^L238
	pea	#<L238
	jsl	~~k_debug_integer
;	k_debug_integer("k_fd_rw_command:track:",c);
	.line	1173
	pei	<L239+c_0
	pea	#^L238+17
	pea	#<L238+17
	jsl	~~k_debug_integer
;	k_debug_integer("k_fd_rw_command:head:",h);
	.line	1174
	pei	<L239+h_0
	pea	#^L238+40
	pea	#<L238+40
	jsl	~~k_debug_integer
;	k_debug_integer("k_fd_rw_command:sector:",s);
	.line	1175
	pei	<L239+s_0
	pea	#^L238+62
	pea	#<L238+62
	jsl	~~k_debug_integer
;
;
;	//floppy_seek(c);
;
;	//sleep(32768);
;	//sleep(DRIVE_H1440_SPINUP);
;
;	sendbyte(CMD_SENSEI);
	.line	1183
	pea	#<$8
	jsl	~~sendbyte
;	reg_sr0 = getbyte();
	.line	1184
	jsl	~~getbyte
	sep	#$20
	longa	off
	sta	|~~reg_sr0
	rep	#$20
	longa	on
;	k_debug_hex("k_fd_rw_command:CMD_SENSEI:reg_sr0:",reg_sr0);
	.line	1185
	lda	|~~reg_sr0
	pha
	pea	#^L238+86
	pea	#<L238+86
	jsl	~~k_debug_hex
;	drives[cur_drive].track = getbyte();
	.line	1186
	lda	|~~cur_drive
	and	#$ff
	sta	<R0
	lda	<R0
	asl	A
	adc	<R0
	asl	A
	sta	<R0
	jsl	~~getbyte
	ldx	<R0
	sta	|~~drives,X
;	k_debug_hex("k_fd_rw_command:CMD_SENSEI:track:",drives[cur_drive].track);
	.line	1187
	lda	|~~cur_drive
	and	#$ff
	sta	<R0
	lda	<R0
	asl	A
	adc	<R0
	asl	A
	sta	<R0
	ldx	<R0
	lda	|~~drives,X
	pha
	pea	#^L238+122
	pea	#<L238+122
	jsl	~~k_debug_hex
;
;	sleep(32768);
	.line	1189
	pea	#<$8000
	jsl	~~sleep
;
;	k_debug_string("k_fd_rw_command:READING NOW!\r\n");
	.line	1191
	pea	#^L238+156
	pea	#<L238+156
	jsl	~~k_debug_string
;
;	sendbyte(cmd);
	.line	1193
	pei	<L240+cmd_1
	jsl	~~sendbyte
;	sendbyte((UCHAR) ((h << 2) | cur_drive));
	.line	1194
	lda	<L239+h_0
	asl	A
	asl	A
	sta	<R0
	lda	|~~cur_drive
	and	#$ff
	sta	<R1
	lda	<R1
	ora	<R0
	pha
	jsl	~~sendbyte
;	//sendbyte((UCHAR) 0x00);
;	sendbyte((UCHAR) c);
	.line	1196
	pei	<L239+c_0
	jsl	~~sendbyte
;	sendbyte((UCHAR) h);
	.line	1197
	pei	<L239+h_0
	jsl	~~sendbyte
;	sendbyte((UCHAR) s);
	.line	1198
	pei	<L239+s_0
	jsl	~~sendbyte
;	sendbyte(0x2);
	.line	1199
	pea	#<$2
	jsl	~~sendbyte
;	sendbyte((UCHAR) SEC_PER_TRACK);
	.line	1200
	pea	#<$12
	jsl	~~sendbyte
;	sendbyte(0x1b);
	.line	1201
	pea	#<$1b
	jsl	~~sendbyte
;	sendbyte(0xff);
	.line	1202
	pea	#<$ff
	jsl	~~sendbyte
;
;	sleep(DRIVE_H1440_SPINUP);
	.line	1204
	pea	#<$190
	jsl	~~sleep
;	sleep(DRIVE_H1440_SPINUP);
	.line	1205
	pea	#<$190
	jsl	~~sleep
;
;	k_fd_isreadable();
	.line	1207
	jsl	~~k_fd_isreadable
;
;	for (i = 0; i < SECTOR_SIZE; i++)
	.line	1209
	stz	<L240+i_1
L10082:
;	{
	.line	1210
;		msr = inportb(FDC_MSR);
	.line	1211
	sep	#$20
	longa	off
	lda	>11473908
	sta	<L240+msr_1
	rep	#$20
	longa	on
;		//k_debug_bits("floppy_transfer_try1:msr:",msr);
;		if(msr & (MSR_RQM |  MSR_DIO))
	.line	1213
;			break;
	sep	#$20
	longa	off
	lda	<L240+msr_1
	and	#<$c0
	rep	#$20
	longa	on
	beq	L245
	brl	L10081
L245:
;		//k_debug_integer("floppy_transfer_try:floppybufferIndex:",floppybufferIndex);
;		buf[i] = getbyte();
	.line	1216
	jsl	~~getbyte
	sep	#$20
	longa	off
	ldy	<L240+i_1
	sta	[<L239+buf_0],Y
	rep	#$20
	longa	on
;
;	}
	.line	1218
L10080:
	inc	<L240+i_1
	sec
	lda	<L240+i_1
	sbc	#<$200
	bvs	L246
	eor	#$8000
L246:
	bmi	L247
	brl	L10082
L247:
L10081:
;
;	k_debug_byte_array("DATA:\r\n",buf,512);
	.line	1220
	pea	#^$200
	pea	#<$200
	pei	<L239+buf_0+2
	pei	<L239+buf_0
	pea	#^L238+187
	pea	#<L238+187
	jsl	~~k_debug_byte_array
;
;
;	reg_sr0 = getbyte();
	.line	1223
	jsl	~~getbyte
	sep	#$20
	longa	off
	sta	|~~reg_sr0
	rep	#$20
	longa	on
;	k_debug_bits("floppy_transfer_try1:reg_sr0:msr:",reg_sr0);
	.line	1224
	lda	|~~reg_sr0
	pha
	pea	#^L238+195
	pea	#<L238+195
	jsl	~~k_debug_bits
;	reg_sr1 = getbyte();
	.line	1225
	jsl	~~getbyte
	sep	#$20
	longa	off
	sta	|~~reg_sr1
	rep	#$20
	longa	on
;	k_debug_bits("floppy_transfer_try1:reg_sr1:msr:",reg_sr1);
	.line	1226
	lda	|~~reg_sr1
	pha
	pea	#^L238+229
	pea	#<L238+229
	jsl	~~k_debug_bits
;	reg_sr2 = getbyte();
	.line	1227
	jsl	~~getbyte
	sep	#$20
	longa	off
	sta	|~~reg_sr2
	rep	#$20
	longa	on
;	k_debug_bits("floppy_transfer_try1:reg_sr2:msr:",reg_sr2);
	.line	1228
	lda	|~~reg_sr2
	pha
	pea	#^L238+263
	pea	#<L238+263
	jsl	~~k_debug_bits
;	drives[cur_drive].track = getbyte();
	.line	1229
	lda	|~~cur_drive
	and	#$ff
	sta	<R0
	lda	<R0
	asl	A
	adc	<R0
	asl	A
	sta	<R0
	jsl	~~getbyte
	ldx	<R0
	sta	|~~drives,X
;
;	//k_debug_integer("floppy_transfer_try:drives[cur_drive].track:",drives[cur_drive].track);
;
;	i = getbyte();
	.line	1233
	jsl	~~getbyte
	sta	<L240+i_1
;	k_debug_bits("floppy_transfer_try1:1:c:",i);
	.line	1234
	pei	<L240+i_1
	pea	#^L238+297
	pea	#<L238+297
	jsl	~~k_debug_bits
;	//k_debug_integer("floppy_transfer_try:i1:",i);
;	i = getbyte();
	.line	1236
	jsl	~~getbyte
	sta	<L240+i_1
;	k_debug_bits("floppy_transfer_try1:2:h:",i);
	.line	1237
	pei	<L240+i_1
	pea	#^L238+323
	pea	#<L238+323
	jsl	~~k_debug_bits
;	//k_debug_integer("floppy_transfer_try:i2:",i);
;	i = getbyte();
	.line	1239
	jsl	~~getbyte
	sta	<L240+i_1
;	k_debug_bits("floppy_transfer_try1:3:r:",i);
	.line	1240
	pei	<L240+i_1
	pea	#^L238+349
	pea	#<L238+349
	jsl	~~k_debug_bits
;	//k_debug_integer("floppy_transfer_try:i3:",i);
;	i = getbyte();
	.line	1242
	jsl	~~getbyte
	sta	<L240+i_1
;	k_debug_bits("floppy_transfer_try1:3:n:",i);
	.line	1243
	pei	<L240+i_1
	pea	#^L238+375
	pea	#<L238+375
	jsl	~~k_debug_bits
;	//k_debug_integer("floppy_transfer_try:i3:",i);
;
;	k_debug_integer("floppy_transfer_try:floppybufferIndex:",floppybufferIndex);
	.line	1246
	lda	|~~floppybufferIndex
	pha
	pea	#^L238+401
	pea	#<L238+401
	jsl	~~k_debug_integer
;	//return i != 2;
;
;	retCode = (i != 2);
	.line	1249
	stz	<R0
	lda	<L240+i_1
	cmp	#<$2
	bne	L249
	brl	L248
L249:
	inc	<R0
L248:
	sep	#$20
	longa	off
	lda	<R0
	sta	<L240+retCode_1
	rep	#$20
	longa	on
;
;	return retCode;
	.line	1251
	lda	<L240+retCode_1
	and	#$ff
L250:
	tay
	lda	<L239+2
	sta	<L239+2+12
	lda	<L239+1
	sta	<L239+1+12
	pld
	tsc
	clc
	adc	#L239+12
	tcs
	tya
	rtl
;}
	.line	1252
	.endblock	1252
L239	equ	13
L240	equ	9
	ends
	efunc
	.endfunc	1252,9,13
	.line	1252
	data
L238:
	db	$6B,$5F,$66,$64,$5F,$72,$77,$5F,$63,$6F,$6D,$6D,$61,$6E,$64
	db	$3A,$00,$6B,$5F,$66,$64,$5F,$72,$77,$5F,$63,$6F,$6D,$6D,$61
	db	$6E,$64,$3A,$74,$72,$61,$63,$6B,$3A,$00,$6B,$5F,$66,$64,$5F
	db	$72,$77,$5F,$63,$6F,$6D,$6D,$61,$6E,$64,$3A,$68,$65,$61,$64
	db	$3A,$00,$6B,$5F,$66,$64,$5F,$72,$77,$5F,$63,$6F,$6D,$6D,$61
	db	$6E,$64,$3A,$73,$65,$63,$74,$6F,$72,$3A,$00,$6B,$5F,$66,$64
	db	$5F,$72,$77,$5F,$63,$6F,$6D,$6D,$61,$6E,$64,$3A,$43,$4D,$44
	db	$5F,$53,$45,$4E,$53,$45,$49,$3A,$72,$65,$67,$5F,$73,$72,$30
	db	$3A,$00,$6B,$5F,$66,$64,$5F,$72,$77,$5F,$63,$6F,$6D,$6D,$61
	db	$6E,$64,$3A,$43,$4D,$44,$5F,$53,$45,$4E,$53,$45,$49,$3A,$74
	db	$72,$61,$63,$6B,$3A,$00,$6B,$5F,$66,$64,$5F,$72,$77,$5F,$63
	db	$6F,$6D,$6D,$61,$6E,$64,$3A,$52,$45,$41,$44,$49,$4E,$47,$20
	db	$4E,$4F,$57,$21,$0D,$0A,$00,$44,$41,$54,$41,$3A,$0D,$0A,$00
	db	$66,$6C,$6F,$70,$70,$79,$5F,$74,$72,$61,$6E,$73,$66,$65,$72
	db	$5F,$74,$72,$79,$31,$3A,$72,$65,$67,$5F,$73,$72,$30,$3A,$6D
	db	$73,$72,$3A,$00,$66,$6C,$6F,$70,$70,$79,$5F,$74,$72,$61,$6E
	db	$73,$66,$65,$72,$5F,$74,$72,$79,$31,$3A,$72,$65,$67,$5F,$73
	db	$72,$31,$3A,$6D,$73,$72,$3A,$00,$66,$6C,$6F,$70,$70,$79,$5F
	db	$74,$72,$61,$6E,$73,$66,$65,$72,$5F,$74,$72,$79,$31,$3A,$72
	db	$65,$67,$5F,$73,$72,$32,$3A,$6D,$73,$72,$3A,$00,$66,$6C,$6F
	db	$70,$70,$79,$5F,$74,$72,$61,$6E,$73,$66,$65,$72,$5F,$74,$72
	db	$79,$31,$3A,$31,$3A,$63,$3A,$00,$66,$6C,$6F,$70,$70,$79,$5F
	db	$74,$72,$61,$6E,$73,$66,$65,$72,$5F,$74,$72,$79,$31,$3A,$32
	db	$3A,$68,$3A,$00,$66,$6C,$6F,$70,$70,$79,$5F,$74,$72,$61,$6E
	db	$73,$66,$65,$72,$5F,$74,$72,$79,$31,$3A,$33,$3A,$72,$3A,$00
	db	$66,$6C,$6F,$70,$70,$79,$5F,$74,$72,$61,$6E,$73,$66,$65,$72
	db	$5F,$74,$72,$79,$31,$3A,$33,$3A,$6E,$3A,$00,$66,$6C,$6F,$70
	db	$70,$79,$5F,$74,$72,$61,$6E,$73,$66,$65,$72,$5F,$74,$72,$79
	db	$3A,$66,$6C,$6F,$70,$70,$79,$62,$75,$66,$66,$65,$72,$49,$6E
	db	$64,$65,$78,$3A,$00
	ends
;
;
;
	.line	1254
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxfloppy.c",1164
	xref	~~k_debug_byte_array
	xref	~~k_debug_bits
	xref	~~k_debug_hex
	xref	~~k_debug_long
	xref	~~k_debug_integer
	xref	~~k_debug_string
	xref	~~sleep
	udata
	xdef	~~floppybuffer
~~floppybuffer
	ds	512
	ends
	udata
~~status
	ds	7
	ends
	udata
~~status_sz
	ds	2
	ends
	udata
~~motoff_timer
	ds	2
	ends
	udata
~~drives
	ds	24
	ends
	udata
~~reg_sr2
	ds	1
	ends
	udata
~~reg_sr1
	ds	1
	ends
	udata
~~reg_sr0
	ds	1
	ends
	udata
~~reg_dor
	ds	1
	ends
	.sym	~~wait_til_ready,~~wait_til_ready,69,3,0
	.sym	~~floppybuffer,~~floppybuffer,110,2,0,512
	.sym	~~floppybufferIndex,~~floppybufferIndex,16,2,16
	.sym	~~status,~~status,110,3,0,7
	.sym	~~status_sz,~~status_sz,5,3,16
	.sym	~~motoff_timer,~~motoff_timer,5,3,16
	.sym	~~cur_drive,~~cur_drive,14,3,8
	.sym	~~drives,~~drives,106,3,0,64,4
	.sym	~~reg_sr2,~~reg_sr2,14,3,8
	.sym	~~reg_sr1,~~reg_sr1,14,3,8
	.sym	~~reg_sr0,~~reg_sr0,14,3,8
	.sym	~~reg_dor,~~reg_dor,14,3,8
	.sym	drive_state_t,0,10,14,48,64
	.sym	~~k_fd_rw_command,~~k_fd_rw_command,69,3,0
	.sym	~~k_fd_read_lba,~~k_fd_read_lba,69,3,0
	.sym	~~k_fd_read_sector,~~k_fd_read_sector,80,2,0
	.sym	~~k_fd_isbusy_drive,~~k_fd_isbusy_drive,78,2,0
	.sym	~~k_fd_isbusy,~~k_fd_isbusy,78,2,0
	.sym	~~k_fd_isready,~~k_fd_isready,78,2,0
	.sym	~~k_fd_isreadable,~~k_fd_isreadable,78,2,0
	.sym	~~k_fd_init,~~k_fd_init,78,2,0
	.sym	~~k_fd_reset,~~k_fd_reset,78,2,0
	.sym	~~floppy_timer,~~floppy_timer,65,2,0
	.sym	~~floppy_isr,~~floppy_isr,65,2,0
	.sym	~~floppy_write,~~floppy_write,69,2,0
	.sym	~~floppy_read,~~floppy_read,69,2,0
	.sym	~~floppy_transfer_lba,~~floppy_transfer_lba,69,3,0
	.sym	~~floppy_transfer,~~floppy_transfer,69,3,0
	.sym	~~floppy_transfer_try2,~~floppy_transfer_try2,69,3,0
	.sym	~~floppy_transfer_try1,~~floppy_transfer_try1,69,3,0
	.sym	~~floppy_present,~~floppy_present,69,2,0
	.sym	~~floppy_seek,~~floppy_seek,69,3,0
	.sym	~~floppy_calibrate,~~floppy_calibrate,65,3,0
	.sym	~~floppy_drive_data,~~floppy_drive_data,65,2,0
	.sym	~~floppy_select,~~floppy_select,69,3,0
	.sym	~~floppy_specify,~~floppy_specify,65,3,0
	.sym	~~fdc_reset,~~fdc_reset,65,3,0
	.sym	~~fdc_configure,~~fdc_configure,65,3,0
	.sym	~~motor_off,~~motor_off,65,3,0
	.sym	~~motor_on,~~motor_on,65,3,0
	.sym	~~fdc_wait,~~fdc_wait,69,3,0
	.sym	~~fdc_waitint,~~fdc_waitint,69,3,0
	.sym	~~getbyte,~~getbyte,69,2,0
	.sym	~~sendbyte,~~sendbyte,69,2,0
	.sym	~~lba_2_chs,~~lba_2_chs,65,3,0
	.sym	~~io_wait,~~io_wait,65,3,0
	.sym	~~floppy_check_int,~~floppy_check_int,65,2,0
	.sym	~~floppy_init,~~floppy_init,65,2,0
	.sym	~~irq_signaled,~~irq_signaled,14,2,8
	.sym	DEVICEDRIVER_COMMAND,0,656,14,32
	.sym	DEVICEDRIVER_UNLOAD,0,654,14,32
	.sym	DEVICEDRIVER_WRITE,0,656,14,32
	.sym	DEVICEDRIVER_READ,0,656,14,32
	.sym	DEVICEDRIVER_LOAD,0,654,14,32
	.sym	PFX_BLOCK_DEVICE_DRIVER,0,138,14,32,63
	.sym	FX_BLOCK_DEVICE_DRIVER,0,10,14,1448,63
	.sym	PFX_DEVICE_DRIVER,0,138,14,32,62
	.sym	FX_DEVICE_DRIVER,0,10,14,1416,62
	.sym	~~k_debug_byte_array,~~k_debug_byte_array,65,18,0
	.sym	~~k_debug_bits,~~k_debug_bits,65,18,0
	.sym	~~k_debug_hex,~~k_debug_hex,65,18,0
	.sym	~~k_debug_long,~~k_debug_long,65,18,0
	.sym	~~k_debug_integer,~~k_debug_integer,65,18,0
	.sym	~~k_debug_string,~~k_debug_string,65,18,0
	.sym	~~sleep,~~sleep,65,18,0
	.sym	PDEBUGBYTEBITS,0,138,14,32,61
	.sym	DEBUGBYTEBITS,0,10,14,8,61
	.sym	PFXENVIRONMENT,0,138,14,32,60
	.sym	FXENVIRONMENT,0,10,14,96,60
	.sym	PFXZERPOPAGE,0,138,14,32,59
	.sym	FXZERPOPAGE,0,10,14,448,59
	.sym	KERNELTRAPCALL,0,641,14,32
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

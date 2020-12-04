;:ts=8
R0	equ	1
R1	equ	5
R2	equ	9
R3	equ	13
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxnode.c",0
;/*
; * fxnode.c
;
; *
; *  Created on: Aug 16, 2019
; *      Author: mtbush
; */
;//#include <stdlib.h>
;#include "fxnode.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxnode.h",0
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxnode.h",5
	.line	61
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxnode.c",9
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxnode.c",10
;#include "fxeventmanager.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxeventmanager.h",0
	.line	743
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxnode.c",11
;#include "fxmemorymanager.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxmemorymanager.h",0
	.line	39
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxnode.c",12
;
;static ULONG THIS_MODULE = 0xA000000A;
	data
~~THIS_MODULE:
	dl	$A000000A
	ends
;
;#define MSG_MAX (1024)
;
;#pragma section CODE=NODEMAN,offset $5:B000
NODEMAN	section	offset $5:B000
	ends
;
;void k_initialize(PFXQUEUE q)
;{
	.line	20
	.line	21
	NODEMAN
	xdef	~~k_initialize
	func
	.function	21
~~k_initialize:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L2
	tcs
	phd
	tcd
q_0	set	4
	.block	21
;    q->count = 0;
	.sym	q,4,138,6,32,4
	.line	22
	lda	#$0
	sta	[<L2+q_0]
;    q->front = NULL;
	.line	23
	lda	#$0
	ldy	#$2
	sta	[<L2+q_0],Y
	lda	#$0
	ldy	#$4
	sta	[<L2+q_0],Y
;    q->rear  = NULL;
	.line	24
	lda	#$0
	ldy	#$6
	sta	[<L2+q_0],Y
	lda	#$0
	ldy	#$8
	sta	[<L2+q_0],Y
;}
	.line	25
L5:
	lda	<L2+2
	sta	<L2+2+4
	lda	<L2+1
	sta	<L2+1+4
	pld
	tsc
	clc
	adc	#L2+4
	tcs
	rtl
	.endblock	25
L2	equ	0
L3	equ	1
	ends
	efunc
	.endfunc	25,1,0
	.line	25
;
;int k_isempty(PFXQUEUE q)
;{
	.line	27
	.line	28
	NODEMAN
	xdef	~~k_isempty
	func
	.function	28
~~k_isempty:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L6
	tcs
	phd
	tcd
q_0	set	4
	.block	28
;	if(q == NULL)
	.sym	q,4,138,6,32,4
	.line	29
;		k_exec_throw_exception(THIS_MODULE,0x00010001,"Kernel node list is NULL.",-1);
	lda	<L6+q_0
	ora	<L6+q_0+2
	beq	L9
	brl	L10001
L9:
	.line	30
	pea	#<$ffffffff
	pea	#^L1
	pea	#<L1
	pea	#^$10001
	pea	#<$10001
	lda	|~~THIS_MODULE+2
	pha
	lda	|~~THIS_MODULE
	pha
	jsl	~~k_exec_throw_exception
;
;    return (q->rear == NULL);
L10001:
	.line	32
	stz	<R0
	ldy	#$6
	lda	[<L6+q_0],Y
	ldy	#$8
	ora	[<L6+q_0],Y
	beq	L11
	brl	L10
L11:
	inc	<R0
L10:
	lda	<R0
L12:
	tay
	lda	<L6+2
	sta	<L6+2+4
	lda	<L6+1
	sta	<L6+1+4
	pld
	tsc
	clc
	adc	#L6+4
	tcs
	tya
	rtl
;}
	.line	33
	.endblock	33
L6	equ	4
L7	equ	5
	ends
	efunc
	.endfunc	33,5,4
	.line	33
	data
L1:
	db	$4B,$65,$72,$6E,$65,$6C,$20,$6E,$6F,$64,$65,$20,$6C,$69,$73
	db	$74,$20,$69,$73,$20,$4E,$55,$4C,$4C,$2E,$00
	ends
;
;void k_enqueue_with_lock(PFXQUEUE q, LPVOID value)
;{
	.line	35
	.line	36
	NODEMAN
	xdef	~~k_enqueue_with_lock
	func
	.function	36
~~k_enqueue_with_lock:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L14
	tcs
	phd
	tcd
q_0	set	4
value_0	set	8
	.block	36
;#ifdef FXOS_WITH_LOCK
;	asm sei;
;#endif
;
;	k_enqueue(q, value);
	.sym	q,4,138,6,32,4
	.sym	value,8,129,6,32
	.line	41
	pei	<L14+value_0+2
	pei	<L14+value_0
	pei	<L14+q_0+2
	pei	<L14+q_0
	jsl	~~k_enqueue
;
;#ifdef FXOS_WITH_LOCK
;	asm cli;
;#endif
;
;}
	.line	47
L17:
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
	.endblock	47
L14	equ	0
L15	equ	1
	ends
	efunc
	.endfunc	47,1,0
	.line	47
;
;LPVOID k_dequeue_with_lock(PFXQUEUE q)
;{
	.line	49
	.line	50
	NODEMAN
	xdef	~~k_dequeue_with_lock
	func
	.function	50
~~k_dequeue_with_lock:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L18
	tcs
	phd
	tcd
q_0	set	4
	.block	50
;	LPVOID data = NULL;
;
;#ifdef FXOS_WITH_LOCK
;	asm sei;
;#endif
;
;	data =  k_dequeue(q);
data_1	set	0
	.sym	data,0,129,1,32
	.sym	q,4,138,6,32,4
	stz	<L19+data_1
	stz	<L19+data_1+2
	.line	57
	pei	<L18+q_0+2
	pei	<L18+q_0
	jsl	~~k_dequeue
	sta	<L19+data_1
	stx	<L19+data_1+2
;
;#ifdef FXOS_WITH_LOCK
;	asm cli;
;#endif
;
;	return data;
	.line	63
	ldx	<L19+data_1+2
	lda	<L19+data_1
L21:
	tay
	lda	<L18+2
	sta	<L18+2+4
	lda	<L18+1
	sta	<L18+1+4
	pld
	tsc
	clc
	adc	#L18+4
	tcs
	tya
	rtl
;}
	.line	64
	.endblock	64
L18	equ	4
L19	equ	1
	ends
	efunc
	.endfunc	64,1,4
	.line	64
;
;
;void k_enqueue(PFXQUEUE q, LPVOID value)
;{
	.line	67
	.line	68
	NODEMAN
	xdef	~~k_enqueue
	func
	.function	68
~~k_enqueue:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L22
	tcs
	phd
	tcd
q_0	set	4
value_0	set	8
	.block	68
;	PFXNODE tmp = NULL;
;
;
;    //k_debug_pointer("k_enqueue::enter:",q);
;    //k_debug_integer("k_enqueue::malloc:",sizeof(FXNODE));
;
;    if(q)
tmp_1	set	0
	.sym	tmp,0,138,1,32,2
	.sym	q,4,138,6,32,4
	.sym	value,8,129,6,32
	stz	<L23+tmp_1
	stz	<L23+tmp_1+2
	.line	75
;    {
	lda	<L22+q_0
	ora	<L22+q_0+2
	bne	L25
	brl	L10002
L25:
	.line	76
;    	if(q->count>MSG_MAX)
	.line	77
;    	{
	sec
	lda	#$400
	sbc	[<L22+q_0]
	bvs	L26
	eor	#$8000
L26:
	bpl	L27
	brl	L10003
L27:
	.line	78
;    		if(value)
	.line	79
;    		{
	lda	<L22+value_0
	ora	<L22+value_0+2
	bne	L28
	brl	L10004
L28:
	.line	80
;    			k_debug_integer("k_enqueue::k_mem_deallocate_heap:",q->count);
	.line	81
	lda	[<L22+q_0]
	pha
	pea	#^L13
	pea	#<L13
	jsl	~~k_debug_integer
;    			k_mem_deallocate_heap(value);
	.line	82
	pei	<L22+value_0+2
	pei	<L22+value_0
	jsl	~~k_mem_deallocate_heap
;    		}
	.line	83
;    		return;
L10004:
	.line	84
L29:
	lda	<L22+2
	sta	<L22+2+8
	lda	<L22+1
	sta	<L22+1+8
	pld
	tsc
	clc
	adc	#L22+8
	tcs
	rtl
;    	}
	.line	85
;
;		tmp = (PFXNODE)k_mem_allocate_heap(sizeof(FXNODE));
L10003:
	.line	87
	pea	#<$30
	jsl	~~k_mem_allocate_heap
	sta	<L23+tmp_1
	stx	<L23+tmp_1+2
;		if(tmp!=NULL)
	.line	88
;		{
	lda	<L23+tmp_1
	ora	<L23+tmp_1+2
	bne	L30
	brl	L10005
L30:
	.line	89
;			//k_debug_integer("k_enqueue::malloc'ed:",sizeof(FXNODE));
;
;			tmp->data = value;
	.line	92
	lda	<L22+value_0
	ldy	#$2
	sta	[<L23+tmp_1],Y
	lda	<L22+value_0+2
	ldy	#$4
	sta	[<L23+tmp_1],Y
;			tmp->next = NULL;
	.line	93
	lda	#$0
	ldy	#$a
	sta	[<L23+tmp_1],Y
	lda	#$0
	ldy	#$c
	sta	[<L23+tmp_1],Y
;
;			if(!k_isempty(q))
	.line	95
;			{
	pei	<L22+q_0+2
	pei	<L22+q_0
	jsl	~~k_isempty
	tax
	beq	L31
	brl	L10006
L31:
	.line	96
;				//k_debug_string("k_enqueue::not empty\r\n");
;				q->rear->next = tmp;
	.line	98
	ldy	#$6
	lda	[<L22+q_0],Y
	sta	<R0
	ldy	#$8
	lda	[<L22+q_0],Y
	sta	<R0+2
	lda	<L23+tmp_1
	ldy	#$a
	sta	[<R0],Y
	lda	<L23+tmp_1+2
	ldy	#$c
	sta	[<R0],Y
;				q->rear = tmp;
	.line	99
	lda	<L23+tmp_1
	ldy	#$6
	sta	[<L22+q_0],Y
	lda	<L23+tmp_1+2
	ldy	#$8
	sta	[<L22+q_0],Y
;			}
	.line	100
;			else
	brl	L10007
L10006:
;			{
	.line	102
;				//k_debug_string("k_enqueue::empty\r\n");
;				q->front = q->rear = tmp;
	.line	104
	lda	<L23+tmp_1
	ldy	#$6
	sta	[<L22+q_0],Y
	lda	<L23+tmp_1+2
	ldy	#$8
	sta	[<L22+q_0],Y
	lda	<L23+tmp_1
	ldy	#$2
	sta	[<L22+q_0],Y
	lda	<L23+tmp_1+2
	ldy	#$4
	sta	[<L22+q_0],Y
;			}
	.line	105
L10007:
;			q->count++;
	.line	106
	lda	[<L22+q_0]
	ina
	sta	[<L22+q_0]
;			//k_debug_integer("k_enqueue::count:",q->count);
;		}
	.line	108
;		else
	brl	L10008
L10005:
;		{
	.line	110
;			k_debug_integer("k_enqueue::size:",q->count);
	.line	111
	lda	[<L22+q_0]
	pha
	pea	#^L13+34
	pea	#<L13+34
	jsl	~~k_debug_integer
;			k_exec_throw_exception(THIS_MODULE,0x00010000,"Cannot allocate a kernel node.",-1);
	.line	112
	pea	#<$ffffffff
	pea	#^L13+51
	pea	#<L13+51
	pea	#^$10000
	pea	#<$10000
	lda	|~~THIS_MODULE+2
	pha
	lda	|~~THIS_MODULE
	pha
	jsl	~~k_exec_throw_exception
;		}
	.line	113
L10008:
;    }
	.line	114
;    else
	brl	L10009
L10002:
;    {
	.line	116
;    	k_exec_throw_exception(THIS_MODULE,0x00010001,"Kernel node list is NULL.",-1);
	.line	117
	pea	#<$ffffffff
	pea	#^L13+82
	pea	#<L13+82
	pea	#^$10001
	pea	#<$10001
	lda	|~~THIS_MODULE+2
	pha
	lda	|~~THIS_MODULE
	pha
	jsl	~~k_exec_throw_exception
;    }
	.line	118
L10009:
;
;
;
;    //k_debug_string("k_enqueue::exit\r\n");
;    //k_debug_integer("k_enqueue data:",((PFXOSMESSAGE)tmp->data)->type);
;}
	.line	124
	brl	L29
	.endblock	124
L22	equ	8
L23	equ	5
	ends
	efunc
	.endfunc	124,5,8
	.line	124
	data
L13:
	db	$6B,$5F,$65,$6E,$71,$75,$65,$75,$65,$3A,$3A,$6B,$5F,$6D,$65
	db	$6D,$5F,$64,$65,$61,$6C,$6C,$6F,$63,$61,$74,$65,$5F,$68,$65
	db	$61,$70,$3A,$00,$6B,$5F,$65,$6E,$71,$75,$65,$75,$65,$3A,$3A
	db	$73,$69,$7A,$65,$3A,$00,$43,$61,$6E,$6E,$6F,$74,$20,$61,$6C
	db	$6C,$6F,$63,$61,$74,$65,$20,$61,$20,$6B,$65,$72,$6E,$65,$6C
	db	$20,$6E,$6F,$64,$65,$2E,$00,$4B,$65,$72,$6E,$65,$6C,$20,$6E
	db	$6F,$64,$65,$20,$6C,$69,$73,$74,$20,$69,$73,$20,$4E,$55,$4C
	db	$4C,$2E,$00
	ends
;
;LPVOID k_dequeue(PFXQUEUE q)
;{
	.line	126
	.line	127
	NODEMAN
	xdef	~~k_dequeue
	func
	.function	127
~~k_dequeue:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L33
	tcs
	phd
	tcd
q_0	set	4
	.block	127
;	FXNODE *tmp = NULL;
;	LPVOID n = NULL;
;
;	//k_debug_pointer("k_dequeue::q->front:",q->front);
;
;	if(q)
tmp_1	set	0
n_1	set	4
	.sym	tmp,0,138,1,32,2
	.sym	n,4,129,1,32
	.sym	q,4,138,6,32,4
	stz	<L34+tmp_1
	stz	<L34+tmp_1+2
	stz	<L34+n_1
	stz	<L34+n_1+2
	.line	133
;	{
	lda	<L33+q_0
	ora	<L33+q_0+2
	bne	L36
	brl	L10010
L36:
	.line	134
;		if(q->front == NULL)
	.line	135
;			return NULL;
	ldy	#$2
	lda	[<L33+q_0],Y
	ldy	#$4
	ora	[<L33+q_0],Y
	beq	L37
	brl	L10011
L37:
	.line	136
	lda	#$0
	tax
	lda	#$0
L38:
	tay
	lda	<L33+2
	sta	<L33+2+4
	lda	<L33+1
	sta	<L33+1+4
	pld
	tsc
	clc
	adc	#L33+4
	tcs
	tya
	rtl
;
;		tmp = q->front;
L10011:
	.line	138
	ldy	#$2
	lda	[<L33+q_0],Y
	sta	<L34+tmp_1
	ldy	#$4
	lda	[<L33+q_0],Y
	sta	<L34+tmp_1+2
;		if(tmp)
	.line	139
;		{
	lda	<L34+tmp_1
	ora	<L34+tmp_1+2
	bne	L39
	brl	L10012
L39:
	.line	140
;			n = tmp->data;
	.line	141
	ldy	#$2
	lda	[<L34+tmp_1],Y
	sta	<L34+n_1
	ldy	#$4
	lda	[<L34+tmp_1],Y
	sta	<L34+n_1+2
;
;			//k_debug_integer("n:",n);
;			//if(n!=NULL)
;			//	k_debug_integer("k_dequeue:",((PFXOSMESSAGE)n)->type);
;
;			//if(q->count < 1)
;			//	return NULL;
;
;			q->front = tmp->next;
	.line	150
	ldy	#$a
	lda	[<L34+tmp_1],Y
	ldy	#$2
	sta	[<L33+q_0],Y
	ldy	#$c
	lda	[<L34+tmp_1],Y
	ldy	#$4
	sta	[<L33+q_0],Y
;			if(!q->front)
	.line	151
;			{
	ldy	#$2
	lda	[<L33+q_0],Y
	ldy	#$4
	ora	[<L33+q_0],Y
	beq	L40
	brl	L10013
L40:
	.line	152
;				q->rear = NULL;
	.line	153
	lda	#$0
	ldy	#$6
	sta	[<L33+q_0],Y
	lda	#$0
	ldy	#$8
	sta	[<L33+q_0],Y
;			}
	.line	154
;
;			q->count--;
L10013:
	.line	156
	clc
	lda	#$ffff
	adc	[<L33+q_0]
	sta	[<L33+q_0]
;
;			k_mem_deallocate_heap(tmp);
	.line	158
	pei	<L34+tmp_1+2
	pei	<L34+tmp_1
	jsl	~~k_mem_deallocate_heap
;
;			//k_debug_integer("k_dequeue:",((PFXOSMESSAGE)n)->type);
;		}
	.line	161
;		else
	brl	L10014
L10012:
;		{
	.line	163
;			k_exec_throw_exception(THIS_MODULE,0x00010002,"Kernel node is NULL.",-1);
	.line	164
	pea	#<$ffffffff
	pea	#^L32
	pea	#<L32
	pea	#^$10002
	pea	#<$10002
	lda	|~~THIS_MODULE+2
	pha
	lda	|~~THIS_MODULE
	pha
	jsl	~~k_exec_throw_exception
;		}
	.line	165
L10014:
;	}
	.line	166
;    else
	brl	L10015
L10010:
;    {
	.line	168
;    	k_exec_throw_exception(THIS_MODULE,0x00010001,"Kernel node list is NULL.",-1);
	.line	169
	pea	#<$ffffffff
	pea	#^L32+21
	pea	#<L32+21
	pea	#^$10001
	pea	#<$10001
	lda	|~~THIS_MODULE+2
	pha
	lda	|~~THIS_MODULE
	pha
	jsl	~~k_exec_throw_exception
;    }
	.line	170
L10015:
;	return(n);
	.line	171
	ldx	<L34+n_1+2
	lda	<L34+n_1
	brl	L38
;}
	.line	172
	.endblock	172
L33	equ	8
L34	equ	1
	ends
	efunc
	.endfunc	172,1,8
	.line	172
	data
L32:
	db	$4B,$65,$72,$6E,$65,$6C,$20,$6E,$6F,$64,$65,$20,$69,$73,$20
	db	$4E,$55,$4C,$4C,$2E,$00,$4B,$65,$72,$6E,$65,$6C,$20,$6E,$6F
	db	$64,$65,$20,$6C,$69,$73,$74,$20,$69,$73,$20,$4E,$55,$4C,$4C
	db	$2E,$00
	ends
;
;void k_debug_queue(FXNODE FAR* head)
;{
	.line	174
	.line	175
	NODEMAN
	xdef	~~k_debug_queue
	func
	.function	175
~~k_debug_queue:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L42
	tcs
	phd
	tcd
head_0	set	4
	.block	175
;    if(head == NULL)
	.sym	head,4,138,6,32,2
	.line	176
;    {
	lda	<L42+head_0
	ora	<L42+head_0+2
	beq	L45
	brl	L10016
L45:
	.line	177
;    	k_debug_string("HEAD == NULL\r\n");
	.line	178
	pea	#^L41
	pea	#<L41
	jsl	~~k_debug_string
;    }
	.line	179
;    else
	brl	L10017
L10016:
;    {
	.line	181
;    	//k_debug_pointer("NODE:",head->data);
;        k_debug_queue(head->next);
	.line	183
	ldy	#$c
	lda	[<L42+head_0],Y
	pha
	ldy	#$a
	lda	[<L42+head_0],Y
	pha
	jsl	~~k_debug_queue
;    }
	.line	184
L10017:
;}
	.line	185
L46:
	lda	<L42+2
	sta	<L42+2+4
	lda	<L42+1
	sta	<L42+1+4
	pld
	tsc
	clc
	adc	#L42+4
	tcs
	rtl
	.endblock	185
L42	equ	0
L43	equ	1
	ends
	efunc
	.endfunc	185,1,0
	.line	185
	data
L41:
	db	$48,$45,$41,$44,$20,$3D,$3D,$20,$4E,$55,$4C,$4C,$0D,$0A,$00
	ends
;
;
;/**
; *
; *
; */
;PFXNODE k_nodelist_create(BYTE type,LPCSTR name,LPVOID data,PFXNODE last,PFXNODE next)
;{
	.line	192
	.line	193
	NODEMAN
	xdef	~~k_nodelist_create
	func
	.function	193
~~k_nodelist_create:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L48
	tcs
	phd
	tcd
type_0	set	4
name_0	set	6
data_0	set	10
last_0	set	14
next_0	set	18
	.block	193
;	PFXNODE node = (PFXNODE)k_mem_allocate_heap(sizeof(FXNODE));
;
;	memset(node,0,sizeof(FXNODE));
node_1	set	0
	.sym	node,0,138,1,32,2
	.sym	type,4,14,6,8
	.sym	name,6,142,6,32
	.sym	data,10,129,6,32
	.sym	last,14,138,6,32,2
	.sym	next,18,138,6,32,2
	pea	#<$30
	jsl	~~k_mem_allocate_heap
	sta	<L49+node_1
	stx	<L49+node_1+2
	.line	196
	pea	#<$30
	pea	#<$0
	pei	<L49+node_1+2
	pei	<L49+node_1
	jsl	~~memset
;
;	node->last = last;
	.line	198
	lda	<L48+last_0
	ldy	#$6
	sta	[<L49+node_1],Y
	lda	<L48+last_0+2
	ldy	#$8
	sta	[<L49+node_1],Y
;	node->next = next;
	.line	199
	lda	<L48+next_0
	ldy	#$a
	sta	[<L49+node_1],Y
	lda	<L48+next_0+2
	ldy	#$c
	sta	[<L49+node_1],Y
;	node->type = type;
	.line	200
	sep	#$20
	longa	off
	lda	<L48+type_0
	sta	[<L49+node_1]
	rep	#$20
	longa	on
;	node->data = data;
	.line	201
	lda	<L48+data_0
	ldy	#$2
	sta	[<L49+node_1],Y
	lda	<L48+data_0+2
	ldy	#$4
	sta	[<L49+node_1],Y
;	node->Reserved1 = 0;
	.line	202
	lda	#$0
	ldy	#$2e
	sta	[<L49+node_1],Y
;	node->name[0] = 0;
	.line	203
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$e
	sta	[<L49+node_1],Y
	rep	#$20
	longa	on
;	//k_debug_strings("k_nodelist_create::name:", (LPCHAR)name);
;	//k_debug_integer("k_nodelist_create::sizeof(node->name):", sizeof(node->name));
;
;	//if(name!=NULL && (strlen(name) < sizeof(node->name)))
;	//	strcpy(node->name,name);
;
;	if(name!=NULL)
	.line	210
;	{
	lda	<L48+name_0
	ora	<L48+name_0+2
	bne	L51
	brl	L10018
L51:
	.line	211
;		if(strlen(name) < sizeof(node->name))
	.line	212
;		{
	pei	<L48+name_0+2
	pei	<L48+name_0
	jsl	~~strlen
	sta	<R0
	lda	<R0
	cmp	#<$20
	bcc	L52
	brl	L10019
L52:
	.line	213
;			strcpy(node->name,name);
	.line	214
	pei	<L48+name_0+2
	pei	<L48+name_0
	clc
	lda	#$e
	adc	<L49+node_1
	sta	<R0
	lda	#$0
	adc	<L49+node_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~strcpy
;		}
	.line	215
;		else
	brl	L10020
L10019:
;		{
	.line	217
;			strncpy(node->name,name,sizeof(node->name)-1);
	.line	218
	pea	#<$1f
	pei	<L48+name_0+2
	pei	<L48+name_0
	clc
	lda	#$e
	adc	<L49+node_1
	sta	<R0
	lda	#$0
	adc	<L49+node_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~strncpy
;		}
	.line	219
L10020:
;		node->name[31] = 0;
	.line	220
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$2d
	sta	[<L49+node_1],Y
	rep	#$20
	longa	on
;
;		k_debug_strings("k_nodelist_create::node->name:", node->name);
	.line	222
	clc
	lda	#$e
	adc	<L49+node_1
	sta	<R0
	lda	#$0
	adc	<L49+node_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L47
	pea	#<L47
	jsl	~~k_debug_strings
;
;	}
	.line	224
;	//umm_integrity_check();
;
;	//k_debug_string("k_nodelist_create::exit\r\n");
;
;	return node;
L10018:
	.line	229
	ldx	<L49+node_1+2
	lda	<L49+node_1
L53:
	tay
	lda	<L48+2
	sta	<L48+2+18
	lda	<L48+1
	sta	<L48+1+18
	pld
	tsc
	clc
	adc	#L48+18
	tcs
	tya
	rtl
;}
	.line	230
	.endblock	230
L48	equ	8
L49	equ	5
	ends
	efunc
	.endfunc	230,5,8
	.line	230
	data
L47:
	db	$6B,$5F,$6E,$6F,$64,$65,$6C,$69,$73,$74,$5F,$63,$72,$65,$61
	db	$74,$65,$3A,$3A,$6E,$6F,$64,$65,$2D,$3E,$6E,$61,$6D,$65,$3A
	db	$00
	ends
;
;PFXNODE k_nodelist_ncreate(BYTE type,ULONG objId,LPVOID data,PFXNODE last,PFXNODE next)
;{
	.line	232
	.line	233
	NODEMAN
	xdef	~~k_nodelist_ncreate
	func
	.function	233
~~k_nodelist_ncreate:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L55
	tcs
	phd
	tcd
type_0	set	4
objId_0	set	6
data_0	set	10
last_0	set	14
next_0	set	18
	.block	233
;	UCHAR buffer[16];
;	LPCHAR name = NULL;
;	PFXNODE node = (PFXNODE)k_mem_allocate_heap(sizeof(FXNODE));
;
;	memset(node,0,sizeof(FXNODE));
buffer_1	set	0
name_1	set	16
node_1	set	20
	.sym	buffer,0,110,1,0,16
	.sym	name,16,142,1,32
	.sym	node,20,138,1,32,2
	.sym	type,4,14,6,8
	.sym	objId,6,18,6,32
	.sym	data,10,129,6,32
	.sym	last,14,138,6,32,2
	.sym	next,18,138,6,32,2
	stz	<L56+name_1
	stz	<L56+name_1+2
	pea	#<$30
	jsl	~~k_mem_allocate_heap
	sta	<L56+node_1
	stx	<L56+node_1+2
	.line	238
	pea	#<$30
	pea	#<$0
	pei	<L56+node_1+2
	pei	<L56+node_1
	jsl	~~memset
;
;	node->last = last;
	.line	240
	lda	<L55+last_0
	ldy	#$6
	sta	[<L56+node_1],Y
	lda	<L55+last_0+2
	ldy	#$8
	sta	[<L56+node_1],Y
;	node->next = next;
	.line	241
	lda	<L55+next_0
	ldy	#$a
	sta	[<L56+node_1],Y
	lda	<L55+next_0+2
	ldy	#$c
	sta	[<L56+node_1],Y
;	node->type = type;
	.line	242
	sep	#$20
	longa	off
	lda	<L55+type_0
	sta	[<L56+node_1]
	rep	#$20
	longa	on
;	node->data = data;
	.line	243
	lda	<L55+data_0
	ldy	#$2
	sta	[<L56+node_1],Y
	lda	<L55+data_0+2
	ldy	#$4
	sta	[<L56+node_1],Y
;	node->Reserved1 = 0;
	.line	244
	lda	#$0
	ldy	#$2e
	sta	[<L56+node_1],Y
;	node->name[0] = 0;
	.line	245
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$e
	sta	[<L56+node_1],Y
	rep	#$20
	longa	on
;	//k_debug_strings("k_nodelist_create::name:", (LPCHAR)name);
;	//k_debug_integer("k_nodelist_create::sizeof(node->name):", sizeof(node->name));
;
;	name = k_longtodec(objId,buffer);
	.line	249
	pea	#0
	clc
	tdc
	adc	#<L56+buffer_1
	pha
	pei	<L55+objId_0+2
	pei	<L55+objId_0
	jsl	~~k_longtodec
	sta	<L56+name_1
	stx	<L56+name_1+2
;
;	if(name!=NULL && (strlen(name) < sizeof(node->name)))
	.line	251
;		strcpy(node->name,name);
	lda	<L56+name_1
	ora	<L56+name_1+2
	bne	L58
	brl	L10021
L58:
	pei	<L56+name_1+2
	pei	<L56+name_1
	jsl	~~strlen
	sta	<R0
	lda	<R0
	cmp	#<$20
	bcc	L59
	brl	L10021
L59:
	.line	252
	pei	<L56+name_1+2
	pei	<L56+name_1
	clc
	lda	#$e
	adc	<L56+node_1
	sta	<R0
	lda	#$0
	adc	<L56+node_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~strcpy
;
;	node->name[31] = 0;
L10021:
	.line	254
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$2d
	sta	[<L56+node_1],Y
	rep	#$20
	longa	on
;	//umm_integrity_check();
;
;	//k_debug_string("k_nodelist_create::exit\r\n");
;
;	return node;
	.line	259
	ldx	<L56+node_1+2
	lda	<L56+node_1
L60:
	tay
	lda	<L55+2
	sta	<L55+2+18
	lda	<L55+1
	sta	<L55+1+18
	pld
	tsc
	clc
	adc	#L55+18
	tcs
	tya
	rtl
;}
	.line	260
	.endblock	260
L55	equ	28
L56	equ	5
	ends
	efunc
	.endfunc	260,5,28
	.line	260
;/**
; *
; *
; */
;PFXNODE k_nodelist_init(BYTE type,LPCSTR name,LPVOID data)
;{
	.line	265
	.line	266
	NODEMAN
	xdef	~~k_nodelist_init
	func
	.function	266
~~k_nodelist_init:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L61
	tcs
	phd
	tcd
type_0	set	4
name_0	set	6
data_0	set	10
	.block	266
;	PFXNODE node = (PFXNODE)k_mem_allocate_heap(sizeof(FXNODE));
;
;	memset(node,0,sizeof(FXNODE));
node_1	set	0
	.sym	node,0,138,1,32,2
	.sym	type,4,14,6,8
	.sym	name,6,142,6,32
	.sym	data,10,129,6,32
	pea	#<$30
	jsl	~~k_mem_allocate_heap
	sta	<L62+node_1
	stx	<L62+node_1+2
	.line	269
	pea	#<$30
	pea	#<$0
	pei	<L62+node_1+2
	pei	<L62+node_1
	jsl	~~memset
;
;	node->last = NULL;
	.line	271
	lda	#$0
	ldy	#$6
	sta	[<L62+node_1],Y
	lda	#$0
	ldy	#$8
	sta	[<L62+node_1],Y
;	node->next = NULL;
	.line	272
	lda	#$0
	ldy	#$a
	sta	[<L62+node_1],Y
	lda	#$0
	ldy	#$c
	sta	[<L62+node_1],Y
;	node->type = type;
	.line	273
	sep	#$20
	longa	off
	lda	<L61+type_0
	sta	[<L62+node_1]
	rep	#$20
	longa	on
;	node->data = data;
	.line	274
	lda	<L61+data_0
	ldy	#$2
	sta	[<L62+node_1],Y
	lda	<L61+data_0+2
	ldy	#$4
	sta	[<L62+node_1],Y
;	node->Reserved1 = 0;
	.line	275
	lda	#$0
	ldy	#$2e
	sta	[<L62+node_1],Y
;	if(name!=NULL)
	.line	276
;		strncpy(node->name,name,sizeof(node->name));
	lda	<L61+name_0
	ora	<L61+name_0+2
	bne	L64
	brl	L10022
L64:
	.line	277
	pea	#<$20
	pei	<L61+name_0+2
	pei	<L61+name_0
	clc
	lda	#$e
	adc	<L62+node_1
	sta	<R0
	lda	#$0
	adc	<L62+node_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~strncpy
;
;	node->name[31] = 0;
L10022:
	.line	279
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$2d
	sta	[<L62+node_1],Y
	rep	#$20
	longa	on
;
;	return node;
	.line	281
	ldx	<L62+node_1+2
	lda	<L62+node_1
L65:
	tay
	lda	<L61+2
	sta	<L61+2+10
	lda	<L61+1
	sta	<L61+1+10
	pld
	tsc
	clc
	adc	#L61+10
	tcs
	tya
	rtl
;}
	.line	282
	.endblock	282
L61	equ	8
L62	equ	5
	ends
	efunc
	.endfunc	282,5,8
	.line	282
;/**
; *
; *
; */
;PFXNODE k_nodelist_copy(PFXNODE node)
;{
	.line	287
	.line	288
	NODEMAN
	xdef	~~k_nodelist_copy
	func
	.function	288
~~k_nodelist_copy:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L66
	tcs
	phd
	tcd
node_0	set	4
	.block	288
;	PFXNODE newnode = k_nodelist_init(node->type,node->name,node->data);
;	if(newnode!=NULL)
newnode_1	set	0
	.sym	newnode,0,138,1,32,2
	.sym	node,4,138,6,32,2
	ldy	#$4
	lda	[<L66+node_0],Y
	pha
	ldy	#$2
	lda	[<L66+node_0],Y
	pha
	clc
	lda	#$e
	adc	<L66+node_0
	sta	<R0
	lda	#$0
	adc	<L66+node_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	lda	[<L66+node_0]
	pha
	jsl	~~k_nodelist_init
	sta	<L67+newnode_1
	stx	<L67+newnode_1+2
	.line	290
;	{
	lda	<L67+newnode_1
	ora	<L67+newnode_1+2
	bne	L69
	brl	L10023
L69:
	.line	291
;		newnode->last = node->last;
	.line	292
	ldy	#$6
	lda	[<L66+node_0],Y
	ldy	#$6
	sta	[<L67+newnode_1],Y
	ldy	#$8
	lda	[<L66+node_0],Y
	ldy	#$8
	sta	[<L67+newnode_1],Y
;		newnode->next = node->next;
	.line	293
	ldy	#$a
	lda	[<L66+node_0],Y
	ldy	#$a
	sta	[<L67+newnode_1],Y
	ldy	#$c
	lda	[<L66+node_0],Y
	ldy	#$c
	sta	[<L67+newnode_1],Y
;	}
	.line	294
;	return newnode;
L10023:
	.line	295
	ldx	<L67+newnode_1+2
	lda	<L67+newnode_1
L70:
	tay
	lda	<L66+2
	sta	<L66+2+4
	lda	<L66+1
	sta	<L66+1+4
	pld
	tsc
	clc
	adc	#L66+4
	tcs
	tya
	rtl
;}
	.line	296
	.endblock	296
L66	equ	8
L67	equ	5
	ends
	efunc
	.endfunc	296,5,8
	.line	296
;/**
; *
; *
; */
;VOID k_nodelist_add(PFXNODE head,PFXNODE new)
;{
	.line	301
	.line	302
	NODEMAN
	xdef	~~k_nodelist_add
	func
	.function	302
~~k_nodelist_add:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L71
	tcs
	phd
	tcd
head_0	set	4
new_0	set	8
	.block	302
;	PFXNODE lastNode = k_nodelist_last(head);
;	if(lastNode!=NULL)
lastNode_1	set	0
	.sym	lastNode,0,138,1,32,2
	.sym	head,4,138,6,32,2
	.sym	new,8,138,6,32,2
	pei	<L71+head_0+2
	pei	<L71+head_0
	jsl	~~k_nodelist_last
	sta	<L72+lastNode_1
	stx	<L72+lastNode_1+2
	.line	304
;	{
	lda	<L72+lastNode_1
	ora	<L72+lastNode_1+2
	bne	L74
	brl	L10024
L74:
	.line	305
;		new->last = lastNode;
	.line	306
	lda	<L72+lastNode_1
	ldy	#$6
	sta	[<L71+new_0],Y
	lda	<L72+lastNode_1+2
	ldy	#$8
	sta	[<L71+new_0],Y
;		new->next = NULL;
	.line	307
	lda	#$0
	ldy	#$a
	sta	[<L71+new_0],Y
	lda	#$0
	ldy	#$c
	sta	[<L71+new_0],Y
;		lastNode->next = new;
	.line	308
	lda	<L71+new_0
	ldy	#$a
	sta	[<L72+lastNode_1],Y
	lda	<L71+new_0+2
	ldy	#$c
	sta	[<L72+lastNode_1],Y
;	}
	.line	309
;	return;
L10024:
	.line	310
L75:
	lda	<L71+2
	sta	<L71+2+8
	lda	<L71+1
	sta	<L71+1+8
	pld
	tsc
	clc
	adc	#L71+8
	tcs
	rtl
;}
	.line	311
	.endblock	311
L71	equ	4
L72	equ	1
	ends
	efunc
	.endfunc	311,1,4
	.line	311
;
;VOID k_nodelist_addtohead(PFXNODE listhead,PFXNODE new)
;{
	.line	313
	.line	314
	NODEMAN
	xdef	~~k_nodelist_addtohead
	func
	.function	314
~~k_nodelist_addtohead:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L76
	tcs
	phd
	tcd
listhead_0	set	4
new_0	set	8
	.block	314
;	PFXNODE head = listhead->next;
;
;	if(head)
head_1	set	0
	.sym	head,0,138,1,32,2
	.sym	listhead,4,138,6,32,2
	.sym	new,8,138,6,32,2
	ldy	#$a
	lda	[<L76+listhead_0],Y
	sta	<L77+head_1
	ldy	#$c
	lda	[<L76+listhead_0],Y
	sta	<L77+head_1+2
	.line	317
;	{
	lda	<L77+head_1
	ora	<L77+head_1+2
	bne	L79
	brl	L10025
L79:
	.line	318
;		if(head!=NULL)
	.line	319
;		{
	lda	<L77+head_1
	ora	<L77+head_1+2
	bne	L80
	brl	L10026
L80:
	.line	320
;			new->last = head->last;
	.line	321
	ldy	#$6
	lda	[<L77+head_1],Y
	ldy	#$6
	sta	[<L76+new_0],Y
	ldy	#$8
	lda	[<L77+head_1],Y
	ldy	#$8
	sta	[<L76+new_0],Y
;			new->next = head;
	.line	322
	lda	<L77+head_1
	ldy	#$a
	sta	[<L76+new_0],Y
	lda	<L77+head_1+2
	ldy	#$c
	sta	[<L76+new_0],Y
;			head->last = new;
	.line	323
	lda	<L76+new_0
	ldy	#$6
	sta	[<L77+head_1],Y
	lda	<L76+new_0+2
	ldy	#$8
	sta	[<L77+head_1],Y
;
;			//new->last = head;
;			//new->next = head->next;
;			//head->next = new;
;		}
	.line	328
;	}
L10026:
	.line	329
;	else
	brl	L10027
L10025:
;	{
	.line	331
;		listhead->next = new;
	.line	332
	lda	<L76+new_0
	ldy	#$a
	sta	[<L76+listhead_0],Y
	lda	<L76+new_0+2
	ldy	#$c
	sta	[<L76+listhead_0],Y
;		new->last = listhead;
	.line	333
	lda	<L76+listhead_0
	ldy	#$6
	sta	[<L76+new_0],Y
	lda	<L76+listhead_0+2
	ldy	#$8
	sta	[<L76+new_0],Y
;		new->next = NULL;
	.line	334
	lda	#$0
	ldy	#$a
	sta	[<L76+new_0],Y
	lda	#$0
	ldy	#$c
	sta	[<L76+new_0],Y
;	}
	.line	335
L10027:
;	return;
	.line	336
L81:
	lda	<L76+2
	sta	<L76+2+8
	lda	<L76+1
	sta	<L76+1+8
	pld
	tsc
	clc
	adc	#L76+8
	tcs
	rtl
;}
	.line	337
	.endblock	337
L76	equ	4
L77	equ	1
	ends
	efunc
	.endfunc	337,1,4
	.line	337
;/**
; *
; *
; */
;PFXNODE k_nodelist_gettype(PFXNODE head,BYTE type)
;{
	.line	342
	.line	343
	NODEMAN
	xdef	~~k_nodelist_gettype
	func
	.function	343
~~k_nodelist_gettype:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L82
	tcs
	phd
	tcd
head_0	set	4
type_0	set	8
	.block	343
;	PFXNODE ptr = head;
;	while(ptr!=NULL)
ptr_1	set	0
	.sym	ptr,0,138,1,32,2
	.sym	head,4,138,6,32,2
	.sym	type,8,14,6,8
	lda	<L82+head_0
	sta	<L83+ptr_1
	lda	<L82+head_0+2
	sta	<L83+ptr_1+2
	.line	345
L10028:
	lda	<L83+ptr_1
	ora	<L83+ptr_1+2
	bne	L85
	brl	L10029
L85:
;	{
	.line	346
;		//k_debug_string("k_nodelist_gettype\r\n");
;		if(ptr->type == type)
	.line	348
;		{
	sep	#$20
	longa	off
	lda	[<L83+ptr_1]
	cmp	<L82+type_0
	rep	#$20
	longa	on
	beq	L86
	brl	L10030
L86:
	.line	349
;			break;
	.line	350
	brl	L10029
;		}
	.line	351
;		ptr = ptr->next;
L10030:
	.line	352
	ldy	#$a
	lda	[<L83+ptr_1],Y
	sta	<R0
	ldy	#$c
	lda	[<L83+ptr_1],Y
	sta	<R0+2
	lda	<R0
	sta	<L83+ptr_1
	lda	<R0+2
	sta	<L83+ptr_1+2
;	}
	.line	353
	brl	L10028
L10029:
;	return ptr;
	.line	354
	ldx	<L83+ptr_1+2
	lda	<L83+ptr_1
L87:
	tay
	lda	<L82+2
	sta	<L82+2+6
	lda	<L82+1
	sta	<L82+1+6
	pld
	tsc
	clc
	adc	#L82+6
	tcs
	tya
	rtl
;}
	.line	355
	.endblock	355
L82	equ	8
L83	equ	5
	ends
	efunc
	.endfunc	355,5,8
	.line	355
;/**
; *
; *
; */
;PFXNODE k_nodelist_getname(PFXNODE head,LPCSTR name)
;{
	.line	360
	.line	361
	NODEMAN
	xdef	~~k_nodelist_getname
	func
	.function	361
~~k_nodelist_getname:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L88
	tcs
	phd
	tcd
head_0	set	4
name_0	set	8
	.block	361
;	PFXNODE ptr = head;
;	while(ptr!=NULL)
ptr_1	set	0
	.sym	ptr,0,138,1,32,2
	.sym	head,4,138,6,32,2
	.sym	name,8,142,6,32
	lda	<L88+head_0
	sta	<L89+ptr_1
	lda	<L88+head_0+2
	sta	<L89+ptr_1+2
	.line	363
L10031:
	lda	<L89+ptr_1
	ora	<L89+ptr_1+2
	bne	L91
	brl	L10032
L91:
;	{
	.line	364
;		//k_debug_strings("k_nodelist_getname:",(LPSTR)name);
;		//k_debug_strings("             found:",ptr->name);
;		if(name && strcmp(ptr->name,name) == 0)
	.line	367
;		{
	lda	<L88+name_0
	ora	<L88+name_0+2
	bne	L92
	brl	L10033
L92:
	pei	<L88+name_0+2
	pei	<L88+name_0
	clc
	lda	#$e
	adc	<L89+ptr_1
	sta	<R0
	lda	#$0
	adc	<L89+ptr_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~strcmp
	tax
	beq	L93
	brl	L10033
L93:
	.line	368
;			//k_debug_strings("k_nodelist_getname:found:",(LPSTR)name);
;			//k_debug_strings("k_nodelist_getname:name:",(LPSTR)ptr->name);
;			//k_debug_pointer("k_nodelist_getname:name:",ptr);
;			break;
	.line	372
	brl	L10032
;		}
	.line	373
;		ptr = ptr->next;
L10033:
	.line	374
	ldy	#$a
	lda	[<L89+ptr_1],Y
	sta	<R0
	ldy	#$c
	lda	[<L89+ptr_1],Y
	sta	<R0+2
	lda	<R0
	sta	<L89+ptr_1
	lda	<R0+2
	sta	<L89+ptr_1+2
;	}
	.line	375
	brl	L10031
L10032:
;	return ptr;
	.line	376
	ldx	<L89+ptr_1+2
	lda	<L89+ptr_1
L94:
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
	.line	377
	.endblock	377
L88	equ	8
L89	equ	5
	ends
	efunc
	.endfunc	377,5,8
	.line	377
;
;
;PFXNODE k_nodelist_getname_and_type(PFXNODE head,LPCSTR name,BYTE type)
;{
	.line	380
	.line	381
	NODEMAN
	xdef	~~k_nodelist_getname_and_type
	func
	.function	381
~~k_nodelist_getname_and_type:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L95
	tcs
	phd
	tcd
head_0	set	4
name_0	set	8
type_0	set	12
	.block	381
;	PFXNODE node = NULL;
;
;	if(head && name)
node_1	set	0
	.sym	node,0,138,1,32,2
	.sym	head,4,138,6,32,2
	.sym	name,8,142,6,32
	.sym	type,12,14,6,8
	stz	<L96+node_1
	stz	<L96+node_1+2
	.line	384
;	{
	lda	<L95+head_0
	ora	<L95+head_0+2
	bne	L98
	brl	L10034
L98:
	lda	<L95+name_0
	ora	<L95+name_0+2
	bne	L99
	brl	L10034
L99:
	.line	385
;		node = k_nodelist_getname(head,(LPCHAR)name);
	.line	386
	pei	<L95+name_0+2
	pei	<L95+name_0
	pei	<L95+head_0+2
	pei	<L95+head_0
	jsl	~~k_nodelist_getname
	sta	<L96+node_1
	stx	<L96+node_1+2
;		if(node && node->type != type)
	.line	387
;		{
	lda	<L96+node_1
	ora	<L96+node_1+2
	bne	L100
	brl	L10035
L100:
	sep	#$20
	longa	off
	lda	[<L96+node_1]
	cmp	<L95+type_0
	rep	#$20
	longa	on
	bne	L101
	brl	L10035
L101:
	.line	388
;			//k_debug_strings("k_nodelist_getname_and_type:found:name:",node->name);
;			//k_debug_pointer("k_nodelist_getname_and_type:found:data:",node->data);
;			node = NULL;
	.line	391
	stz	<L96+node_1
	stz	<L96+node_1+2
;		}
	.line	392
;	}
L10035:
	.line	393
;	return node;
L10034:
	.line	394
	ldx	<L96+node_1+2
	lda	<L96+node_1
L102:
	tay
	lda	<L95+2
	sta	<L95+2+10
	lda	<L95+1
	sta	<L95+1+10
	pld
	tsc
	clc
	adc	#L95+10
	tcs
	tya
	rtl
;}
	.line	395
	.endblock	395
L95	equ	4
L96	equ	1
	ends
	efunc
	.endfunc	395,1,4
	.line	395
;
;PFXNODE k_nodelist_get(PFXNODE head,INT index)
;{
	.line	397
	.line	398
	NODEMAN
	xdef	~~k_nodelist_get
	func
	.function	398
~~k_nodelist_get:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L103
	tcs
	phd
	tcd
head_0	set	4
index_0	set	8
	.block	398
;	PFXNODE ptr = head;
;	while(ptr!=NULL)
ptr_1	set	0
	.sym	ptr,0,138,1,32,2
	.sym	head,4,138,6,32,2
	.sym	index,8,5,6,16
	lda	<L103+head_0
	sta	<L104+ptr_1
	lda	<L103+head_0+2
	sta	<L104+ptr_1+2
	.line	400
L10036:
	lda	<L104+ptr_1
	ora	<L104+ptr_1+2
	bne	L106
	brl	L10037
L106:
;	{
	.line	401
;		index--;
	.line	402
	dec	<L103+index_0
;
;		if(index == 0)
	.line	404
;			break;
	lda	<L103+index_0
	bne	L107
	brl	L10037
L107:
;
;		ptr = ptr->next;
	.line	407
	ldy	#$a
	lda	[<L104+ptr_1],Y
	sta	<R0
	ldy	#$c
	lda	[<L104+ptr_1],Y
	sta	<R0+2
	lda	<R0
	sta	<L104+ptr_1
	lda	<R0+2
	sta	<L104+ptr_1+2
;	}
	.line	408
	brl	L10036
L10037:
;
;	//k_debug_integer("k_nodelist_get type:",ptr->type);
;
;	return ptr;
	.line	412
	ldx	<L104+ptr_1+2
	lda	<L104+ptr_1
L108:
	tay
	lda	<L103+2
	sta	<L103+2+6
	lda	<L103+1
	sta	<L103+1+6
	pld
	tsc
	clc
	adc	#L103+6
	tcs
	tya
	rtl
;}
	.line	413
	.endblock	413
L103	equ	8
L104	equ	5
	ends
	efunc
	.endfunc	413,5,8
	.line	413
;
;/**
; *
; *
; */
;PFXNODE k_nodelist_remove(PFXNODE head,LPCSTR name)
;{
	.line	419
	.line	420
	NODEMAN
	xdef	~~k_nodelist_remove
	func
	.function	420
~~k_nodelist_remove:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L109
	tcs
	phd
	tcd
head_0	set	4
name_0	set	8
	.block	420
;	PFXNODE found = NULL;
;	PFXNODE ptr = head;
;	while(ptr!=NULL)
found_1	set	0
ptr_1	set	4
	.sym	found,0,138,1,32,2
	.sym	ptr,4,138,1,32,2
	.sym	head,4,138,6,32,2
	.sym	name,8,142,6,32
	stz	<L110+found_1
	stz	<L110+found_1+2
	lda	<L109+head_0
	sta	<L110+ptr_1
	lda	<L109+head_0+2
	sta	<L110+ptr_1+2
	.line	423
L10038:
	lda	<L110+ptr_1
	ora	<L110+ptr_1+2
	bne	L112
	brl	L10039
L112:
;	{
	.line	424
;		//k_debug_string("k_nodelist_remove\r\n");
;		if(strcmp(ptr->name,name) == 0)
	.line	426
;		{
	pei	<L109+name_0+2
	pei	<L109+name_0
	clc
	lda	#$e
	adc	<L110+ptr_1
	sta	<R0
	lda	#$0
	adc	<L110+ptr_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~strcmp
	tax
	beq	L113
	brl	L10040
L113:
	.line	427
;			found = ptr;
	.line	428
	lda	<L110+ptr_1
	sta	<L110+found_1
	lda	<L110+ptr_1+2
	sta	<L110+found_1+2
;			ptr->last->next = ptr->next;
	.line	429
	ldy	#$6
	lda	[<L110+ptr_1],Y
	sta	<R0
	ldy	#$8
	lda	[<L110+ptr_1],Y
	sta	<R0+2
	ldy	#$a
	lda	[<L110+ptr_1],Y
	ldy	#$a
	sta	[<R0],Y
	ldy	#$c
	lda	[<L110+ptr_1],Y
	ldy	#$c
	sta	[<R0],Y
;			ptr->next->last = ptr->last;
	.line	430
	ldy	#$a
	lda	[<L110+ptr_1],Y
	sta	<R0
	ldy	#$c
	lda	[<L110+ptr_1],Y
	sta	<R0+2
	ldy	#$6
	lda	[<L110+ptr_1],Y
	ldy	#$6
	sta	[<R0],Y
	ldy	#$8
	lda	[<L110+ptr_1],Y
	ldy	#$8
	sta	[<R0],Y
;			break;
	.line	431
	brl	L10039
;		}
	.line	432
;		ptr = ptr->next;
L10040:
	.line	433
	ldy	#$a
	lda	[<L110+ptr_1],Y
	sta	<R0
	ldy	#$c
	lda	[<L110+ptr_1],Y
	sta	<R0+2
	lda	<R0
	sta	<L110+ptr_1
	lda	<R0+2
	sta	<L110+ptr_1+2
;	}
	.line	434
	brl	L10038
L10039:
;	return found;
	.line	435
	ldx	<L110+found_1+2
	lda	<L110+found_1
L114:
	tay
	lda	<L109+2
	sta	<L109+2+8
	lda	<L109+1
	sta	<L109+1+8
	pld
	tsc
	clc
	adc	#L109+8
	tcs
	tya
	rtl
;}
	.line	436
	.endblock	436
L109	equ	12
L110	equ	5
	ends
	efunc
	.endfunc	436,5,12
	.line	436
;/**
; *
; *
; */
;LPVOID k_nodelist_data(PFXNODE head,LPCSTR name)
;{
	.line	441
	.line	442
	NODEMAN
	xdef	~~k_nodelist_data
	func
	.function	442
~~k_nodelist_data:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L115
	tcs
	phd
	tcd
head_0	set	4
name_0	set	8
	.block	442
;	LPVOID found = NULL;
;	PFXNODE ptr = head;
;	while(ptr!=NULL)
found_1	set	0
ptr_1	set	4
	.sym	found,0,129,1,32
	.sym	ptr,4,138,1,32,2
	.sym	head,4,138,6,32,2
	.sym	name,8,142,6,32
	stz	<L116+found_1
	stz	<L116+found_1+2
	lda	<L115+head_0
	sta	<L116+ptr_1
	lda	<L115+head_0+2
	sta	<L116+ptr_1+2
	.line	445
L10041:
	lda	<L116+ptr_1
	ora	<L116+ptr_1+2
	bne	L118
	brl	L10042
L118:
;	{
	.line	446
;		//k_debug_string("k_nodelist_data\r\n");
;		if(strcmp(ptr->name,name) == 0)
	.line	448
;		{
	pei	<L115+name_0+2
	pei	<L115+name_0
	clc
	lda	#$e
	adc	<L116+ptr_1
	sta	<R0
	lda	#$0
	adc	<L116+ptr_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~strcmp
	tax
	beq	L119
	brl	L10043
L119:
	.line	449
;			found = ptr->data;
	.line	450
	ldy	#$2
	lda	[<L116+ptr_1],Y
	sta	<L116+found_1
	ldy	#$4
	lda	[<L116+ptr_1],Y
	sta	<L116+found_1+2
;			break;
	.line	451
	brl	L10042
;		}
	.line	452
;		ptr = ptr->next;
L10043:
	.line	453
	ldy	#$a
	lda	[<L116+ptr_1],Y
	sta	<R0
	ldy	#$c
	lda	[<L116+ptr_1],Y
	sta	<R0+2
	lda	<R0
	sta	<L116+ptr_1
	lda	<R0+2
	sta	<L116+ptr_1+2
;	}
	.line	454
	brl	L10041
L10042:
;	return found;
	.line	455
	ldx	<L116+found_1+2
	lda	<L116+found_1
L120:
	tay
	lda	<L115+2
	sta	<L115+2+8
	lda	<L115+1
	sta	<L115+1+8
	pld
	tsc
	clc
	adc	#L115+8
	tcs
	tya
	rtl
;}
	.line	456
	.endblock	456
L115	equ	12
L116	equ	5
	ends
	efunc
	.endfunc	456,5,12
	.line	456
;
;/**
; *
; *
; */
;PFXNODE	k_nodelist_last(PFXNODE head)
;{
	.line	462
	.line	463
	NODEMAN
	xdef	~~k_nodelist_last
	func
	.function	463
~~k_nodelist_last:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L121
	tcs
	phd
	tcd
head_0	set	4
	.block	463
;	UINT abort = 0;
;	PFXNODE ptr = head;
;
;	//k_debug_pointer("k_nodelist_last:next:",ptr->next);
;	//k_debug_pointer("k_nodelist_last:last:",ptr->last);
;
;	while(ptr!=NULL)
abort_1	set	0
ptr_1	set	2
	.sym	abort,0,16,1,16
	.sym	ptr,2,138,1,32,2
	.sym	head,4,138,6,32,2
	stz	<L122+abort_1
	lda	<L121+head_0
	sta	<L122+ptr_1
	lda	<L121+head_0+2
	sta	<L122+ptr_1+2
	.line	470
L10044:
	lda	<L122+ptr_1
	ora	<L122+ptr_1+2
	bne	L124
	brl	L10045
L124:
;	{
	.line	471
;		//k_debug_string("k_nodelist_last\r\n");
;		if(ptr->next == NULL)
	.line	473
;		{
	ldy	#$a
	lda	[<L122+ptr_1],Y
	ldy	#$c
	ora	[<L122+ptr_1],Y
	beq	L125
	brl	L10046
L125:
	.line	474
;			break;
	.line	475
	brl	L10045
;		}
	.line	476
;		ptr = ptr->next;
L10046:
	.line	477
	ldy	#$a
	lda	[<L122+ptr_1],Y
	sta	<R0
	ldy	#$c
	lda	[<L122+ptr_1],Y
	sta	<R0+2
	lda	<R0
	sta	<L122+ptr_1
	lda	<R0+2
	sta	<L122+ptr_1+2
;		abort++;
	.line	478
	inc	<L122+abort_1
;		if(abort == -1)
	.line	479
;			k_exec_throw_exception(THIS_MODULE,0x00020001,"Infinite Node List Detected",-1);
	lda	<L122+abort_1
	cmp	#<$ffffffff
	beq	L126
	brl	L10047
L126:
	.line	480
	pea	#<$ffffffff
	pea	#^L54
	pea	#<L54
	pea	#^$20001
	pea	#<$20001
	lda	|~~THIS_MODULE+2
	pha
	lda	|~~THIS_MODULE
	pha
	jsl	~~k_exec_throw_exception
;	}
L10047:
	.line	481
	brl	L10044
L10045:
;	return ptr;
	.line	482
	ldx	<L122+ptr_1+2
	lda	<L122+ptr_1
L127:
	tay
	lda	<L121+2
	sta	<L121+2+4
	lda	<L121+1
	sta	<L121+1+4
	pld
	tsc
	clc
	adc	#L121+4
	tcs
	tya
	rtl
;}
	.line	483
	.endblock	483
L121	equ	10
L122	equ	5
	ends
	efunc
	.endfunc	483,5,10
	.line	483
	data
L54:
	db	$49,$6E,$66,$69,$6E,$69,$74,$65,$20,$4E,$6F,$64,$65,$20,$4C
	db	$69,$73,$74,$20,$44,$65,$74,$65,$63,$74,$65,$64,$00
	ends
;/**
; *
; *
; */
;VOID k_nodelist_foreach_data(PFXNODE head,LPVOID context,FOREACHNODE each)
;{
	.line	488
	.line	489
	NODEMAN
	xdef	~~k_nodelist_foreach_data
	func
	.function	489
~~k_nodelist_foreach_data:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L129
	tcs
	phd
	tcd
head_0	set	4
context_0	set	8
each_0	set	12
	.block	489
;	PFXNODE ptr = head;
;
;	//k_debug_pointer("k_nodelist_foreach_data:",context);
;
;	while(ptr!=NULL)
ptr_1	set	0
	.sym	ptr,0,138,1,32,2
	.sym	head,4,138,6,32,2
	.sym	context,8,129,6,32
	.sym	each,12,641,6,32
	lda	<L129+head_0
	sta	<L130+ptr_1
	lda	<L129+head_0+2
	sta	<L130+ptr_1+2
	.line	494
L10048:
	lda	<L130+ptr_1
	ora	<L130+ptr_1+2
	bne	L132
	brl	L10049
L132:
;	{
	.line	495
;		each(context,ptr->data);
	.line	496
	ldy	#$4
	lda	[<L130+ptr_1],Y
	pha
	ldy	#$2
	lda	[<L130+ptr_1],Y
	pha
	pei	<L129+context_0+2
	pei	<L129+context_0
	ldx	<L129+each_0+2
	lda	<L129+each_0
	xref	~~~lcal
	jsl	~~~lcal
;		ptr = ptr->next;
	.line	497
	ldy	#$a
	lda	[<L130+ptr_1],Y
	sta	<R0
	ldy	#$c
	lda	[<L130+ptr_1],Y
	sta	<R0+2
	lda	<R0
	sta	<L130+ptr_1
	lda	<R0+2
	sta	<L130+ptr_1+2
;	}
	.line	498
	brl	L10048
L10049:
;}
	.line	499
L133:
	lda	<L129+2
	sta	<L129+2+12
	lda	<L129+1
	sta	<L129+1+12
	pld
	tsc
	clc
	adc	#L129+12
	tcs
	rtl
	.endblock	499
L129	equ	8
L130	equ	5
	ends
	efunc
	.endfunc	499,5,8
	.line	499
;
;PFXNODE k_nodelist_foreach_until_data(PFXNODE head,LPVOID context,FOREACHNODEUNTIL each)
;{
	.line	501
	.line	502
	NODEMAN
	xdef	~~k_nodelist_foreach_until_data
	func
	.function	502
~~k_nodelist_foreach_until_data:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L134
	tcs
	phd
	tcd
head_0	set	4
context_0	set	8
each_0	set	12
	.block	502
;	BOOL bRet = FALSE;
;	PFXNODE ptr = head;
;
;	//k_debug_pointer("k_nodelist_foreach_data:",context);
;
;	while(ptr!=NULL)
bRet_1	set	0
ptr_1	set	1
	.sym	bRet,0,14,1,8
	.sym	ptr,1,138,1,32,2
	.sym	head,4,138,6,32,2
	.sym	context,8,129,6,32
	.sym	each,12,654,6,32
	sep	#$20
	longa	off
	stz	<L135+bRet_1
	rep	#$20
	longa	on
	lda	<L134+head_0
	sta	<L135+ptr_1
	lda	<L134+head_0+2
	sta	<L135+ptr_1+2
	.line	508
L10050:
	lda	<L135+ptr_1
	ora	<L135+ptr_1+2
	bne	L137
	brl	L10051
L137:
;	{
	.line	509
;		BOOL bRet = each(context,ptr->data);
;		//k_debug_integer("k_nodelist_foreach_data:bRet",bRet);
;		if(bRet)
	.block	512
bRet_2	set	5
	.sym	bRet,5,14,1,8
	ldy	#$4
	lda	[<L135+ptr_1],Y
	pha
	ldy	#$2
	lda	[<L135+ptr_1],Y
	pha
	pei	<L134+context_0+2
	pei	<L134+context_0
	ldx	<L134+each_0+2
	lda	<L134+each_0
	xref	~~~lcal
	jsl	~~~lcal
	sep	#$20
	longa	off
	sta	<L135+bRet_2
	rep	#$20
	longa	on
	.line	512
;		{
	lda	<L135+bRet_2
	and	#$ff
	bne	L139
	brl	L10052
L139:
	.line	513
;			//k_debug_pointer("k_nodelist_foreach_data:FOUND DATA MATCH:",ptr);
;			return ptr;
	.line	515
	ldx	<L135+ptr_1+2
	lda	<L135+ptr_1
L140:
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
;		}
	.line	516
;		ptr = ptr->next;
L10052:
	.line	517
	ldy	#$a
	lda	[<L135+ptr_1],Y
	sta	<R0
	ldy	#$c
	lda	[<L135+ptr_1],Y
	sta	<R0+2
	lda	<R0
	sta	<L135+ptr_1
	lda	<R0+2
	sta	<L135+ptr_1+2
;	}
	.endblock	518
	.line	518
	brl	L10050
L10051:
;
;	//k_debug_pointer("k_nodelist_foreach_data:RETURNING:",ptr);
;
;	return NULL;
	.line	522
	lda	#$0
	tax
	lda	#$0
	brl	L140
;}
	.line	523
	.endblock	523
L134	equ	10
L135	equ	5
	ends
	efunc
	.endfunc	523,5,10
	.line	523
;
;VOID k_nodelist_foreach_listdata(PFXNODELIST list,LPVOID context,FOREACHNODE each)
;{
	.line	525
	.line	526
	NODEMAN
	xdef	~~k_nodelist_foreach_listdata
	func
	.function	526
~~k_nodelist_foreach_listdata:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L141
	tcs
	phd
	tcd
list_0	set	4
context_0	set	8
each_0	set	12
	.block	526
;	PFXNODE ptr = NULL;
;	if(list && list->listhead)
ptr_1	set	0
	.sym	ptr,0,138,1,32,2
	.sym	list,4,138,6,32,3
	.sym	context,8,129,6,32
	.sym	each,12,641,6,32
	stz	<L142+ptr_1
	stz	<L142+ptr_1+2
	.line	528
;	{
	lda	<L141+list_0
	ora	<L141+list_0+2
	bne	L144
	brl	L10053
L144:
	lda	[<L141+list_0]
	ldy	#$2
	ora	[<L141+list_0],Y
	bne	L145
	brl	L10053
L145:
	.line	529
;		k_nodelist_foreach_data(list->listhead->next,context,each);
	.line	530
	pei	<L141+each_0+2
	pei	<L141+each_0
	pei	<L141+context_0+2
	pei	<L141+context_0
	lda	[<L141+list_0]
	sta	<R0
	ldy	#$2
	lda	[<L141+list_0],Y
	sta	<R0+2
	ldy	#$c
	lda	[<R0],Y
	pha
	ldy	#$a
	lda	[<R0],Y
	pha
	jsl	~~k_nodelist_foreach_data
;	}
	.line	531
;}
L10053:
	.line	532
L146:
	lda	<L141+2
	sta	<L141+2+12
	lda	<L141+1
	sta	<L141+1+12
	pld
	tsc
	clc
	adc	#L141+12
	tcs
	rtl
	.endblock	532
L141	equ	8
L142	equ	5
	ends
	efunc
	.endfunc	532,5,8
	.line	532
;
;VOID k_nodelist_foreach_listdata_remove(PFXNODELIST list,LPVOID context,FOREACHNODEUNTIL checkStatus)
;{
	.line	534
	.line	535
	NODEMAN
	xdef	~~k_nodelist_foreach_listdata_remove
	func
	.function	535
~~k_nodelist_foreach_listdata_remove:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L147
	tcs
	phd
	tcd
list_0	set	4
context_0	set	8
checkStatus_0	set	12
	.block	535
;	PFXNODE ptr   = NULL;
;	PFXNODE tmp   = NULL;
;
;	k_debug_pointer("k_nodelist_foreach_listdata_remove:",context);
ptr_1	set	0
tmp_1	set	4
	.sym	ptr,0,138,1,32,2
	.sym	tmp,4,138,1,32,2
	.sym	list,4,138,6,32,3
	.sym	context,8,129,6,32
	.sym	checkStatus,12,654,6,32
	stz	<L148+ptr_1
	stz	<L148+ptr_1+2
	stz	<L148+tmp_1
	stz	<L148+tmp_1+2
	.line	539
	pei	<L147+context_0+2
	pei	<L147+context_0
	pea	#^L128
	pea	#<L128
	jsl	~~k_debug_pointer
;
;	if(list && list->listhead)
	.line	541
;	{
	lda	<L147+list_0
	ora	<L147+list_0+2
	bne	L150
	brl	L10054
L150:
	lda	[<L147+list_0]
	ldy	#$2
	ora	[<L147+list_0],Y
	bne	L151
	brl	L10054
L151:
	.line	542
;		ptr = list->listhead->next;
	.line	543
	lda	[<L147+list_0]
	sta	<R0
	ldy	#$2
	lda	[<L147+list_0],Y
	sta	<R0+2
	ldy	#$a
	lda	[<R0],Y
	sta	<L148+ptr_1
	ldy	#$c
	lda	[<R0],Y
	sta	<L148+ptr_1+2
;		while(ptr!=NULL)
	.line	544
L10055:
	lda	<L148+ptr_1
	ora	<L148+ptr_1+2
	bne	L152
	brl	L10056
L152:
;		{
	.line	545
;			if(checkStatus(context,ptr->data))
	.line	546
;			{
	ldy	#$4
	lda	[<L148+ptr_1],Y
	pha
	ldy	#$2
	lda	[<L148+ptr_1],Y
	pha
	pei	<L147+context_0+2
	pei	<L147+context_0
	ldx	<L147+checkStatus_0+2
	lda	<L147+checkStatus_0
	xref	~~~lcal
	jsl	~~~lcal
	and	#$ff
	bne	L153
	brl	L10057
L153:
	.line	547
;				tmp = ptr->next;
	.line	548
	ldy	#$a
	lda	[<L148+ptr_1],Y
	sta	<L148+tmp_1
	ldy	#$c
	lda	[<L148+ptr_1],Y
	sta	<L148+tmp_1+2
;
;				if(ptr->last)
	.line	550
;					ptr->last->next = ptr->next;
	ldy	#$6
	lda	[<L148+ptr_1],Y
	ldy	#$8
	ora	[<L148+ptr_1],Y
	bne	L154
	brl	L10058
L154:
	.line	551
	ldy	#$6
	lda	[<L148+ptr_1],Y
	sta	<R0
	ldy	#$8
	lda	[<L148+ptr_1],Y
	sta	<R0+2
	ldy	#$a
	lda	[<L148+ptr_1],Y
	ldy	#$a
	sta	[<R0],Y
	ldy	#$c
	lda	[<L148+ptr_1],Y
	ldy	#$c
	sta	[<R0],Y
;				if(ptr->next)
L10058:
	.line	552
;					ptr->next->last = ptr->last;
	ldy	#$a
	lda	[<L148+ptr_1],Y
	ldy	#$c
	ora	[<L148+ptr_1],Y
	bne	L155
	brl	L10059
L155:
	.line	553
	ldy	#$a
	lda	[<L148+ptr_1],Y
	sta	<R0
	ldy	#$c
	lda	[<L148+ptr_1],Y
	sta	<R0+2
	ldy	#$6
	lda	[<L148+ptr_1],Y
	ldy	#$6
	sta	[<R0],Y
	ldy	#$8
	lda	[<L148+ptr_1],Y
	ldy	#$8
	sta	[<R0],Y
;
;				if(list->deallocator)
L10059:
	.line	555
;				{
	ldy	#$8
	lda	[<L147+list_0],Y
	ldy	#$a
	ora	[<L147+list_0],Y
	bne	L156
	brl	L10060
L156:
	.line	556
;					list->deallocator(ptr->name,ptr->data);
	.line	557
	ldy	#$4
	lda	[<L148+ptr_1],Y
	pha
	ldy	#$2
	lda	[<L148+ptr_1],Y
	pha
	clc
	lda	#$e
	adc	<L148+ptr_1
	sta	<R0
	lda	#$0
	adc	<L148+ptr_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$a
	lda	[<L147+list_0],Y
	tax
	ldy	#$8
	lda	[<L147+list_0],Y
	xref	~~~lcal
	jsl	~~~lcal
;
;					k_debug_strings("k_nodelist_foreach_listdata_remove:delete node:",ptr->name);
	.line	559
	clc
	lda	#$e
	adc	<L148+ptr_1
	sta	<R0
	lda	#$0
	adc	<L148+ptr_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L128+36
	pea	#<L128+36
	jsl	~~k_debug_strings
;
;					//memset(ptr,0,sizeof(PFXNODE));
;					k_mem_deallocate_heap(ptr);
	.line	562
	pei	<L148+ptr_1+2
	pei	<L148+ptr_1
	jsl	~~k_mem_deallocate_heap
;				}
	.line	563
;
;				ptr = tmp;
L10060:
	.line	565
	lda	<L148+tmp_1
	sta	<L148+ptr_1
	lda	<L148+tmp_1+2
	sta	<L148+ptr_1+2
;			}
	.line	566
;			else
	brl	L10061
L10057:
;			{
	.line	568
;				ptr = ptr->next;
	.line	569
	ldy	#$a
	lda	[<L148+ptr_1],Y
	sta	<R0
	ldy	#$c
	lda	[<L148+ptr_1],Y
	sta	<R0+2
	lda	<R0
	sta	<L148+ptr_1
	lda	<R0+2
	sta	<L148+ptr_1+2
;			}
	.line	570
L10061:
;		}
	.line	571
	brl	L10055
L10056:
;
;	}
	.line	573
;}
L10054:
	.line	574
L157:
	lda	<L147+2
	sta	<L147+2+12
	lda	<L147+1
	sta	<L147+1+12
	pld
	tsc
	clc
	adc	#L147+12
	tcs
	rtl
	.endblock	574
L147	equ	12
L148	equ	5
	ends
	efunc
	.endfunc	574,5,12
	.line	574
	data
L128:
	db	$6B,$5F,$6E,$6F,$64,$65,$6C,$69,$73,$74,$5F,$66,$6F,$72,$65
	db	$61,$63,$68,$5F,$6C,$69,$73,$74,$64,$61,$74,$61,$5F,$72,$65
	db	$6D,$6F,$76,$65,$3A,$00,$6B,$5F,$6E,$6F,$64,$65,$6C,$69,$73
	db	$74,$5F,$66,$6F,$72,$65,$61,$63,$68,$5F,$6C,$69,$73,$74,$64
	db	$61,$74,$61,$5F,$72,$65,$6D,$6F,$76,$65,$3A,$64,$65,$6C,$65
	db	$74,$65,$20,$6E,$6F,$64,$65,$3A,$00
	ends
;
;PFXNODE k_nodelist_foreach_until_listdata(PFXNODELIST list,LPVOID context,FOREACHNODEUNTIL each)
;{
	.line	576
	.line	577
	NODEMAN
	xdef	~~k_nodelist_foreach_until_listdata
	func
	.function	577
~~k_nodelist_foreach_until_listdata:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L159
	tcs
	phd
	tcd
list_0	set	4
context_0	set	8
each_0	set	12
	.block	577
;	PFXNODE ptr = NULL;
;	if(list && list->listhead)
ptr_1	set	0
	.sym	ptr,0,138,1,32,2
	.sym	list,4,138,6,32,3
	.sym	context,8,129,6,32
	.sym	each,12,654,6,32
	stz	<L160+ptr_1
	stz	<L160+ptr_1+2
	.line	579
;	{
	lda	<L159+list_0
	ora	<L159+list_0+2
	bne	L162
	brl	L10062
L162:
	lda	[<L159+list_0]
	ldy	#$2
	ora	[<L159+list_0],Y
	bne	L163
	brl	L10062
L163:
	.line	580
;		ptr = k_nodelist_foreach_until_data(list->listhead->next,context,each);
	.line	581
	pei	<L159+each_0+2
	pei	<L159+each_0
	pei	<L159+context_0+2
	pei	<L159+context_0
	lda	[<L159+list_0]
	sta	<R0
	ldy	#$2
	lda	[<L159+list_0],Y
	sta	<R0+2
	ldy	#$c
	lda	[<R0],Y
	pha
	ldy	#$a
	lda	[<R0],Y
	pha
	jsl	~~k_nodelist_foreach_until_data
	sta	<L160+ptr_1
	stx	<L160+ptr_1+2
;	}
	.line	582
;
;	return ptr;
L10062:
	.line	584
	ldx	<L160+ptr_1+2
	lda	<L160+ptr_1
L164:
	tay
	lda	<L159+2
	sta	<L159+2+12
	lda	<L159+1
	sta	<L159+1+12
	pld
	tsc
	clc
	adc	#L159+12
	tcs
	tya
	rtl
;}
	.line	585
	.endblock	585
L159	equ	8
L160	equ	5
	ends
	efunc
	.endfunc	585,5,8
	.line	585
;
;
;VOID k_nodelist_foreach_type(PFXNODELIST list,BYTE type,LPVOID context,FOREACHNODE each)
;{
	.line	588
	.line	589
	NODEMAN
	xdef	~~k_nodelist_foreach_type
	func
	.function	589
~~k_nodelist_foreach_type:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L165
	tcs
	phd
	tcd
list_0	set	4
type_0	set	8
context_0	set	10
each_0	set	14
	.block	589
;	PFXNODE ptr = NULL;
;	if(list && list->listhead)
ptr_1	set	0
	.sym	ptr,0,138,1,32,2
	.sym	list,4,138,6,32,3
	.sym	type,8,14,6,8
	.sym	context,10,129,6,32
	.sym	each,14,641,6,32
	stz	<L166+ptr_1
	stz	<L166+ptr_1+2
	.line	591
;	{
	lda	<L165+list_0
	ora	<L165+list_0+2
	bne	L168
	brl	L10063
L168:
	lda	[<L165+list_0]
	ldy	#$2
	ora	[<L165+list_0],Y
	bne	L169
	brl	L10063
L169:
	.line	592
;		ptr = list->listhead->next;
	.line	593
	lda	[<L165+list_0]
	sta	<R0
	ldy	#$2
	lda	[<L165+list_0],Y
	sta	<R0+2
	ldy	#$a
	lda	[<R0],Y
	sta	<L166+ptr_1
	ldy	#$c
	lda	[<R0],Y
	sta	<L166+ptr_1+2
;		while(ptr!=NULL)
	.line	594
L10064:
	lda	<L166+ptr_1
	ora	<L166+ptr_1+2
	bne	L170
	brl	L10065
L170:
;		{
	.line	595
;			if(ptr->type == type)
	.line	596
;				each(context,ptr->data);
	sep	#$20
	longa	off
	lda	[<L166+ptr_1]
	cmp	<L165+type_0
	rep	#$20
	longa	on
	beq	L171
	brl	L10066
L171:
	.line	597
	ldy	#$4
	lda	[<L166+ptr_1],Y
	pha
	ldy	#$2
	lda	[<L166+ptr_1],Y
	pha
	pei	<L165+context_0+2
	pei	<L165+context_0
	ldx	<L165+each_0+2
	lda	<L165+each_0
	xref	~~~lcal
	jsl	~~~lcal
;			ptr = ptr->next;
L10066:
	.line	598
	ldy	#$a
	lda	[<L166+ptr_1],Y
	sta	<R0
	ldy	#$c
	lda	[<L166+ptr_1],Y
	sta	<R0+2
	lda	<R0
	sta	<L166+ptr_1
	lda	<R0+2
	sta	<L166+ptr_1+2
;		}
	.line	599
	brl	L10064
L10065:
;	}
	.line	600
;}
L10063:
	.line	601
L172:
	lda	<L165+2
	sta	<L165+2+14
	lda	<L165+1
	sta	<L165+1+14
	pld
	tsc
	clc
	adc	#L165+14
	tcs
	rtl
	.endblock	601
L165	equ	8
L166	equ	5
	ends
	efunc
	.endfunc	601,5,8
	.line	601
;
;//
;// node list helper functions and types
;//
;PFXNODELIST k_nodelist_allocate_list(LPCSTR listName,NodeListDeallocator deallocator)
;{
	.line	606
	.line	607
	NODEMAN
	xdef	~~k_nodelist_allocate_list
	func
	.function	607
~~k_nodelist_allocate_list:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L173
	tcs
	phd
	tcd
listName_0	set	4
deallocator_0	set	8
	.block	607
;	LPCSTR safeName = NULL;
;	PFXNODELIST nodelist = NULL;
;
;	nodelist = (PFXNODELIST)k_mem_allocate_heap(sizeof(FXNODELIST));
safeName_1	set	0
nodelist_1	set	4
	.sym	safeName,0,142,1,32
	.sym	nodelist,4,138,1,32,3
	.sym	listName,4,142,6,32
	.sym	deallocator,8,641,6,32
	stz	<L174+safeName_1
	stz	<L174+safeName_1+2
	stz	<L174+nodelist_1
	stz	<L174+nodelist_1+2
	.line	611
	pea	#<$c
	jsl	~~k_mem_allocate_heap
	sta	<L174+nodelist_1
	stx	<L174+nodelist_1+2
;	if(nodelist)
	.line	612
;	{
	lda	<L174+nodelist_1
	ora	<L174+nodelist_1+2
	bne	L176
	brl	L10067
L176:
	.line	613
;		if(listName)
	.line	614
;			safeName = k_string_copy_string(listName);
	lda	<L173+listName_0
	ora	<L173+listName_0+2
	bne	L177
	brl	L10068
L177:
	.line	615
	pei	<L173+listName_0+2
	pei	<L173+listName_0
	jsl	~~k_string_copy_string
	sta	<L174+safeName_1
	stx	<L174+safeName_1+2
;
;		nodelist->listhead = k_nodelist_init(-1,"head",(LPVOID)safeName);
L10068:
	.line	617
	pei	<L174+safeName_1+2
	pei	<L174+safeName_1
	pea	#^L158
	pea	#<L158
	pea	#<$ffffffff
	jsl	~~k_nodelist_init
	sta	<R0
	stx	<R0+2
	lda	<R0
	sta	[<L174+nodelist_1]
	lda	<R0+2
	ldy	#$2
	sta	[<L174+nodelist_1],Y
;		nodelist->deallocator = deallocator;
	.line	618
	lda	<L173+deallocator_0
	ldy	#$8
	sta	[<L174+nodelist_1],Y
	lda	<L173+deallocator_0+2
	ldy	#$a
	sta	[<L174+nodelist_1],Y
;
;		//if(safeName)
;		//	k_mem_deallocate_heap((LPVOID)safeName);
;	}
	.line	622
;
;	return nodelist;
L10067:
	.line	624
	ldx	<L174+nodelist_1+2
	lda	<L174+nodelist_1
L178:
	tay
	lda	<L173+2
	sta	<L173+2+8
	lda	<L173+1
	sta	<L173+1+8
	pld
	tsc
	clc
	adc	#L173+8
	tcs
	tya
	rtl
;}
	.line	625
	.endblock	625
L173	equ	12
L174	equ	5
	ends
	efunc
	.endfunc	625,5,12
	.line	625
	data
L158:
	db	$68,$65,$61,$64,$00
	ends
;
;PFXNODE	k_nodelist_getfirstnode(PFXNODELIST list)
;{
	.line	627
	.line	628
	NODEMAN
	xdef	~~k_nodelist_getfirstnode
	func
	.function	628
~~k_nodelist_getfirstnode:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L180
	tcs
	phd
	tcd
list_0	set	4
	.block	628
;	PFXNODE node = NULL;
;
;	if(list && list->listhead)
node_1	set	0
	.sym	node,0,138,1,32,2
	.sym	list,4,138,6,32,3
	stz	<L181+node_1
	stz	<L181+node_1+2
	.line	631
;		node = list->listhead->next;
	lda	<L180+list_0
	ora	<L180+list_0+2
	bne	L183
	brl	L10069
L183:
	lda	[<L180+list_0]
	ldy	#$2
	ora	[<L180+list_0],Y
	bne	L184
	brl	L10069
L184:
	.line	632
	lda	[<L180+list_0]
	sta	<R0
	ldy	#$2
	lda	[<L180+list_0],Y
	sta	<R0+2
	ldy	#$a
	lda	[<R0],Y
	sta	<L181+node_1
	ldy	#$c
	lda	[<R0],Y
	sta	<L181+node_1+2
;
;	return node;
L10069:
	.line	634
	ldx	<L181+node_1+2
	lda	<L181+node_1
L185:
	tay
	lda	<L180+2
	sta	<L180+2+4
	lda	<L180+1
	sta	<L180+1+4
	pld
	tsc
	clc
	adc	#L180+4
	tcs
	tya
	rtl
;}
	.line	635
	.endblock	635
L180	equ	8
L181	equ	5
	ends
	efunc
	.endfunc	635,5,8
	.line	635
;
;VOID k_nodelist_deallocate_list(PFXNODELIST nodelist)
;{
	.line	637
	.line	638
	NODEMAN
	xdef	~~k_nodelist_deallocate_list
	func
	.function	638
~~k_nodelist_deallocate_list:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L186
	tcs
	phd
	tcd
nodelist_0	set	4
	.block	638
;	PFXNODE ptr  = NULL;
;	PFXNODE ptmp = NULL;
;
;	if(nodelist)
ptr_1	set	0
ptmp_1	set	4
	.sym	ptr,0,138,1,32,2
	.sym	ptmp,4,138,1,32,2
	.sym	nodelist,4,138,6,32,3
	stz	<L187+ptr_1
	stz	<L187+ptr_1+2
	stz	<L187+ptmp_1
	stz	<L187+ptmp_1+2
	.line	642
;	{
	lda	<L186+nodelist_0
	ora	<L186+nodelist_0+2
	bne	L189
	brl	L10070
L189:
	.line	643
;		ptr = nodelist->listhead;
	.line	644
	lda	[<L186+nodelist_0]
	sta	<L187+ptr_1
	ldy	#$2
	lda	[<L186+nodelist_0],Y
	sta	<L187+ptr_1+2
;		while(ptr)
	.line	645
L10071:
	lda	<L187+ptr_1
	ora	<L187+ptr_1+2
	bne	L190
	brl	L10072
L190:
;		{
	.line	646
;			ptmp = ptr->next;
	.line	647
	ldy	#$a
	lda	[<L187+ptr_1],Y
	sta	<L187+ptmp_1
	ldy	#$c
	lda	[<L187+ptr_1],Y
	sta	<L187+ptmp_1+2
;
;			if((ptr != nodelist->listhead) && nodelist->deallocator)
	.line	649
;				nodelist->deallocator(ptr->name,ptr->data);
	lda	<L187+ptr_1
	cmp	[<L186+nodelist_0]
	bne	L191
	lda	<L187+ptr_1+2
	ldy	#$2
	cmp	[<L186+nodelist_0],Y
L191:
	bne	L192
	brl	L10073
L192:
	ldy	#$8
	lda	[<L186+nodelist_0],Y
	ldy	#$a
	ora	[<L186+nodelist_0],Y
	bne	L193
	brl	L10073
L193:
	.line	650
	ldy	#$4
	lda	[<L187+ptr_1],Y
	pha
	ldy	#$2
	lda	[<L187+ptr_1],Y
	pha
	clc
	lda	#$e
	adc	<L187+ptr_1
	sta	<R0
	lda	#$0
	adc	<L187+ptr_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$a
	lda	[<L186+nodelist_0],Y
	tax
	ldy	#$8
	lda	[<L186+nodelist_0],Y
	xref	~~~lcal
	jsl	~~~lcal
;
;			if(ptr == nodelist->listhead)
L10073:
	.line	652
;			{
	lda	<L187+ptr_1
	cmp	[<L186+nodelist_0]
	bne	L194
	lda	<L187+ptr_1+2
	ldy	#$2
	cmp	[<L186+nodelist_0],Y
L194:
	beq	L195
	brl	L10074
L195:
	.line	653
;				if(nodelist->listhead->data)
	.line	654
;				{
	lda	[<L186+nodelist_0]
	sta	<R0
	ldy	#$2
	lda	[<L186+nodelist_0],Y
	sta	<R0+2
	ldy	#$2
	lda	[<R0],Y
	ldy	#$4
	ora	[<R0],Y
	bne	L196
	brl	L10075
L196:
	.line	655
;					k_debug_pointer("k_nodelist_deallocate_list:nodelist->listhead->data:",nodelist->listhead->data);
	.line	656
	lda	[<L186+nodelist_0]
	sta	<R0
	ldy	#$2
	lda	[<L186+nodelist_0],Y
	sta	<R0+2
	ldy	#$4
	lda	[<R0],Y
	pha
	ldy	#$2
	lda	[<R0],Y
	pha
	pea	#^L179
	pea	#<L179
	jsl	~~k_debug_pointer
;					k_mem_deallocate_heap(nodelist->listhead->data);
	.line	657
	lda	[<L186+nodelist_0]
	sta	<R0
	ldy	#$2
	lda	[<L186+nodelist_0],Y
	sta	<R0+2
	ldy	#$4
	lda	[<R0],Y
	pha
	ldy	#$2
	lda	[<R0],Y
	pha
	jsl	~~k_mem_deallocate_heap
;				}
	.line	658
;			}
L10075:
	.line	659
;
;			k_mem_deallocate_heap(ptr);
L10074:
	.line	661
	pei	<L187+ptr_1+2
	pei	<L187+ptr_1
	jsl	~~k_mem_deallocate_heap
;
;			ptr = ptmp;
	.line	663
	lda	<L187+ptmp_1
	sta	<L187+ptr_1
	lda	<L187+ptmp_1+2
	sta	<L187+ptr_1+2
;		}
	.line	664
	brl	L10071
L10072:
;		k_mem_deallocate_heap(nodelist);
	.line	665
	pei	<L186+nodelist_0+2
	pei	<L186+nodelist_0
	jsl	~~k_mem_deallocate_heap
;	}
	.line	666
;}
L10070:
	.line	667
L197:
	lda	<L186+2
	sta	<L186+2+4
	lda	<L186+1
	sta	<L186+1+4
	pld
	tsc
	clc
	adc	#L186+4
	tcs
	rtl
	.endblock	667
L186	equ	12
L187	equ	5
	ends
	efunc
	.endfunc	667,5,12
	.line	667
	data
L179:
	db	$6B,$5F,$6E,$6F,$64,$65,$6C,$69,$73,$74,$5F,$64,$65,$61,$6C
	db	$6C,$6F,$63,$61,$74,$65,$5F,$6C,$69,$73,$74,$3A,$6E,$6F,$64
	db	$65,$6C,$69,$73,$74,$2D,$3E,$6C,$69,$73,$74,$68,$65,$61,$64
	db	$2D,$3E,$64,$61,$74,$61,$3A,$00
	ends
;
;
;PFXNODELIST	k_nodelist_clear_list(PFXNODELIST nodelist)
;{
	.line	670
	.line	671
	NODEMAN
	xdef	~~k_nodelist_clear_list
	func
	.function	671
~~k_nodelist_clear_list:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L199
	tcs
	phd
	tcd
nodelist_0	set	4
	.block	671
;	PFXNODE ptr  = NULL;
;	PFXNODE ptmp = NULL;
;
;	if(nodelist)
ptr_1	set	0
ptmp_1	set	4
	.sym	ptr,0,138,1,32,2
	.sym	ptmp,4,138,1,32,2
	.sym	nodelist,4,138,6,32,3
	stz	<L200+ptr_1
	stz	<L200+ptr_1+2
	stz	<L200+ptmp_1
	stz	<L200+ptmp_1+2
	.line	675
;	{
	lda	<L199+nodelist_0
	ora	<L199+nodelist_0+2
	bne	L202
	brl	L10076
L202:
	.line	676
;		ptr = nodelist->listhead->next;
	.line	677
	lda	[<L199+nodelist_0]
	sta	<R0
	ldy	#$2
	lda	[<L199+nodelist_0],Y
	sta	<R0+2
	ldy	#$a
	lda	[<R0],Y
	sta	<L200+ptr_1
	ldy	#$c
	lda	[<R0],Y
	sta	<L200+ptr_1+2
;		while(ptr)
	.line	678
L10077:
	lda	<L200+ptr_1
	ora	<L200+ptr_1+2
	bne	L203
	brl	L10078
L203:
;		{
	.line	679
;			ptmp = ptr->next->next;
	.line	680
	ldy	#$a
	lda	[<L200+ptr_1],Y
	sta	<R0
	ldy	#$c
	lda	[<L200+ptr_1],Y
	sta	<R0+2
	ldy	#$a
	lda	[<R0],Y
	sta	<L200+ptmp_1
	ldy	#$c
	lda	[<R0],Y
	sta	<L200+ptmp_1+2
;
;			if(nodelist->deallocator)
	.line	682
;				nodelist->deallocator(ptr->name,ptr->data);
	ldy	#$8
	lda	[<L199+nodelist_0],Y
	ldy	#$a
	ora	[<L199+nodelist_0],Y
	bne	L204
	brl	L10079
L204:
	.line	683
	ldy	#$4
	lda	[<L200+ptr_1],Y
	pha
	ldy	#$2
	lda	[<L200+ptr_1],Y
	pha
	clc
	lda	#$e
	adc	<L200+ptr_1
	sta	<R0
	lda	#$0
	adc	<L200+ptr_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$a
	lda	[<L199+nodelist_0],Y
	tax
	ldy	#$8
	lda	[<L199+nodelist_0],Y
	xref	~~~lcal
	jsl	~~~lcal
;
;			k_mem_deallocate_heap(ptr);
L10079:
	.line	685
	pei	<L200+ptr_1+2
	pei	<L200+ptr_1
	jsl	~~k_mem_deallocate_heap
;
;			ptr = ptmp;
	.line	687
	lda	<L200+ptmp_1
	sta	<L200+ptr_1
	lda	<L200+ptmp_1+2
	sta	<L200+ptr_1+2
;		}
	.line	688
	brl	L10077
L10078:
;		nodelist->listhead->next = NULL;
	.line	689
	lda	[<L199+nodelist_0]
	sta	<R0
	ldy	#$2
	lda	[<L199+nodelist_0],Y
	sta	<R0+2
	lda	#$0
	ldy	#$a
	sta	[<R0],Y
	lda	#$0
	ldy	#$c
	sta	[<R0],Y
;		nodelist->listhead->last = NULL;
	.line	690
	lda	[<L199+nodelist_0]
	sta	<R0
	ldy	#$2
	lda	[<L199+nodelist_0],Y
	sta	<R0+2
	lda	#$0
	ldy	#$6
	sta	[<R0],Y
	lda	#$0
	ldy	#$8
	sta	[<R0],Y
;	}
	.line	691
;
;	return nodelist;
L10076:
	.line	693
	ldx	<L199+nodelist_0+2
	lda	<L199+nodelist_0
L205:
	tay
	lda	<L199+2
	sta	<L199+2+4
	lda	<L199+1
	sta	<L199+1+4
	pld
	tsc
	clc
	adc	#L199+4
	tcs
	tya
	rtl
;}
	.line	694
	.endblock	694
L199	equ	12
L200	equ	5
	ends
	efunc
	.endfunc	694,5,12
	.line	694
;
;PFXNODE k_nodelist_naddtolist_tohead(PFXNODELIST list,BYTE type,ULONG objId,LPVOID data)
;{
	.line	696
	.line	697
	NODEMAN
	xdef	~~k_nodelist_naddtolist_tohead
	func
	.function	697
~~k_nodelist_naddtolist_tohead:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L206
	tcs
	phd
	tcd
list_0	set	4
type_0	set	8
objId_0	set	10
data_0	set	14
	.block	697
;	UCHAR buffer[16];
;
;	return k_nodelist_addtolist_tohead(list,type,k_longtodec(objId,buffer),data);
buffer_1	set	0
	.sym	buffer,0,110,1,0,16
	.sym	list,4,138,6,32,3
	.sym	type,8,14,6,8
	.sym	objId,10,18,6,32
	.sym	data,14,129,6,32
	.line	700
	pei	<L206+data_0+2
	pei	<L206+data_0
	pea	#0
	clc
	tdc
	adc	#<L207+buffer_1
	pha
	pei	<L206+objId_0+2
	pei	<L206+objId_0
	jsl	~~k_longtodec
	sta	<R0
	stx	<R0+2
	phx
	pha
	pei	<L206+type_0
	pei	<L206+list_0+2
	pei	<L206+list_0
	jsl	~~k_nodelist_addtolist_tohead
	sta	<R1
	stx	<R1+2
	ldx	<R1+2
	lda	<R1
L209:
	tay
	lda	<L206+2
	sta	<L206+2+14
	lda	<L206+1
	sta	<L206+1+14
	pld
	tsc
	clc
	adc	#L206+14
	tcs
	tya
	rtl
;}
	.line	701
	.endblock	701
L206	equ	24
L207	equ	9
	ends
	efunc
	.endfunc	701,9,24
	.line	701
;
;PFXNODE k_nodelist_addtolist_tohead(PFXNODELIST list,BYTE type,LPCSTR name,LPVOID data)
;{
	.line	703
	.line	704
	NODEMAN
	xdef	~~k_nodelist_addtolist_tohead
	func
	.function	704
~~k_nodelist_addtolist_tohead:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L210
	tcs
	phd
	tcd
list_0	set	4
type_0	set	8
name_0	set	10
data_0	set	14
	.block	704
;	PFXNODE node = NULL;
;
;	/*
;	k_debug_pointer("k_nodelist_addtolist_tohead:enter:",list);
;	if(name)
;		k_debug_strings("k_nodelist_addtolist_tohead:name:",(LPSTR)name);
;	else
;		k_debug_strings("k_nodelist_addtolist_tohead:name:","NULL");
;	*/
;	if(list && list->listhead)
node_1	set	0
	.sym	node,0,138,1,32,2
	.sym	list,4,138,6,32,3
	.sym	type,8,14,6,8
	.sym	name,10,142,6,32
	.sym	data,14,129,6,32
	stz	<L211+node_1
	stz	<L211+node_1+2
	.line	714
;	{
	lda	<L210+list_0
	ora	<L210+list_0+2
	bne	L213
	brl	L10080
L213:
	lda	[<L210+list_0]
	ldy	#$2
	ora	[<L210+list_0],Y
	bne	L214
	brl	L10080
L214:
	.line	715
;		if(!k_nodelist_getname_and_type(list->listhead,name,type))
	.line	716
;		{
	pei	<L210+type_0
	pei	<L210+name_0+2
	pei	<L210+name_0
	ldy	#$2
	lda	[<L210+list_0],Y
	pha
	lda	[<L210+list_0]
	pha
	jsl	~~k_nodelist_getname_and_type
	sta	<R0
	stx	<R0+2
	lda	<R0
	ora	<R0+2
	beq	L215
	brl	L10081
L215:
	.line	717
;			node = k_nodelist_create(type,name,data,NULL,NULL);
	.line	718
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pei	<L210+data_0+2
	pei	<L210+data_0
	pei	<L210+name_0+2
	pei	<L210+name_0
	pei	<L210+type_0
	jsl	~~k_nodelist_create
	sta	<L211+node_1
	stx	<L211+node_1+2
;			if(node)
	.line	719
;			{
	lda	<L211+node_1
	ora	<L211+node_1+2
	bne	L216
	brl	L10082
L216:
	.line	720
;				k_nodelist_addtohead(list->listhead,node);
	.line	721
	pei	<L211+node_1+2
	pei	<L211+node_1
	ldy	#$2
	lda	[<L210+list_0],Y
	pha
	lda	[<L210+list_0]
	pha
	jsl	~~k_nodelist_addtohead
;			}
	.line	722
;		}
L10082:
	.line	723
;		else
	brl	L10083
L10081:
;		{
	.line	725
;			if(name!=NULL)
	.line	726
;				k_exec_throw_exception(THIS_MODULE,0x00020002,k_string_replace("Attempt to add node with duplicate name: %s1","%s1",name),-1);
	lda	<L210+name_0
	ora	<L210+name_0+2
	bne	L217
	brl	L10084
L217:
	.line	727
	pea	#<$ffffffff
	pei	<L210+name_0+2
	pei	<L210+name_0
	pea	#^L198+45
	pea	#<L198+45
	pea	#^L198
	pea	#<L198
	jsl	~~k_string_replace
	sta	<R0
	stx	<R0+2
	phx
	pha
	pea	#^$20002
	pea	#<$20002
	lda	|~~THIS_MODULE+2
	pha
	lda	|~~THIS_MODULE
	pha
	jsl	~~k_exec_throw_exception
;			else
	brl	L10085
L10084:
;				k_exec_throw_exception(THIS_MODULE,0x00020002,"Attempt to add node with duplicate name.",-1);
	.line	729
	pea	#<$ffffffff
	pea	#^L198+49
	pea	#<L198+49
	pea	#^$20002
	pea	#<$20002
	lda	|~~THIS_MODULE+2
	pha
	lda	|~~THIS_MODULE
	pha
	jsl	~~k_exec_throw_exception
L10085:
;		}
	.line	730
L10083:
;	}
	.line	731
;	//k_debug_string("check k_nodelist_addtolist\r\n");
;	//k_heap_integrity_check();
;
;	//k_debug_pointer("k_nodelist_addtolist:exit:",list);
;
;	return node;
L10080:
	.line	737
	ldx	<L211+node_1+2
	lda	<L211+node_1
L218:
	tay
	lda	<L210+2
	sta	<L210+2+14
	lda	<L210+1
	sta	<L210+1+14
	pld
	tsc
	clc
	adc	#L210+14
	tcs
	tya
	rtl
;}
	.line	738
	.endblock	738
L210	equ	8
L211	equ	5
	ends
	efunc
	.endfunc	738,5,8
	.line	738
	data
L198:
	db	$41,$74,$74,$65,$6D,$70,$74,$20,$74,$6F,$20,$61,$64,$64,$20
	db	$6E,$6F,$64,$65,$20,$77,$69,$74,$68,$20,$64,$75,$70,$6C,$69
	db	$63,$61,$74,$65,$20,$6E,$61,$6D,$65,$3A,$20,$25,$73,$31,$00
	db	$25,$73,$31,$00,$41,$74,$74,$65,$6D,$70,$74,$20,$74,$6F,$20
	db	$61,$64,$64,$20,$6E,$6F,$64,$65,$20,$77,$69,$74,$68,$20,$64
	db	$75,$70,$6C,$69,$63,$61,$74,$65,$20,$6E,$61,$6D,$65,$2E,$00
	ends
;
;PFXNODE k_nodelist_naddtolist(PFXNODELIST list,BYTE type,ULONG objId,LPVOID data)
;{
	.line	740
	.line	741
	NODEMAN
	xdef	~~k_nodelist_naddtolist
	func
	.function	741
~~k_nodelist_naddtolist:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L220
	tcs
	phd
	tcd
list_0	set	4
type_0	set	8
objId_0	set	10
data_0	set	14
	.block	741
;	UCHAR buffer[16];
;
;	return k_nodelist_addtolist(list,type,k_longtodec(objId,buffer),data);
buffer_1	set	0
	.sym	buffer,0,110,1,0,16
	.sym	list,4,138,6,32,3
	.sym	type,8,14,6,8
	.sym	objId,10,18,6,32
	.sym	data,14,129,6,32
	.line	744
	pei	<L220+data_0+2
	pei	<L220+data_0
	pea	#0
	clc
	tdc
	adc	#<L221+buffer_1
	pha
	pei	<L220+objId_0+2
	pei	<L220+objId_0
	jsl	~~k_longtodec
	sta	<R0
	stx	<R0+2
	phx
	pha
	pei	<L220+type_0
	pei	<L220+list_0+2
	pei	<L220+list_0
	jsl	~~k_nodelist_addtolist
	sta	<R1
	stx	<R1+2
	ldx	<R1+2
	lda	<R1
L223:
	tay
	lda	<L220+2
	sta	<L220+2+14
	lda	<L220+1
	sta	<L220+1+14
	pld
	tsc
	clc
	adc	#L220+14
	tcs
	tya
	rtl
;}
	.line	745
	.endblock	745
L220	equ	24
L221	equ	9
	ends
	efunc
	.endfunc	745,9,24
	.line	745
;
;PFXNODE k_nodelist_addtolist(PFXNODELIST list,BYTE type,LPCSTR name,LPVOID data)
;{
	.line	747
	.line	748
	NODEMAN
	xdef	~~k_nodelist_addtolist
	func
	.function	748
~~k_nodelist_addtolist:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L224
	tcs
	phd
	tcd
list_0	set	4
type_0	set	8
name_0	set	10
data_0	set	14
	.block	748
;	PFXNODE node = NULL;
;
;	//k_debug_pointer("k_nodelist_addtolist:enter:",list);
;	if(name)
node_1	set	0
	.sym	node,0,138,1,32,2
	.sym	list,4,138,6,32,3
	.sym	type,8,14,6,8
	.sym	name,10,142,6,32
	.sym	data,14,129,6,32
	stz	<L225+node_1
	stz	<L225+node_1+2
	.line	752
;		k_debug_strings("k_nodelist_addtolist:name:",(LPSTR)name);
	lda	<L224+name_0
	ora	<L224+name_0+2
	bne	L227
	brl	L10086
L227:
	.line	753
	pei	<L224+name_0+2
	pei	<L224+name_0
	pea	#^L219
	pea	#<L219
	jsl	~~k_debug_strings
;	else
	brl	L10087
L10086:
;		k_debug_strings("k_nodelist_addtolist:name:","NULL");
	.line	755
	pea	#^L219+54
	pea	#<L219+54
	pea	#^L219+27
	pea	#<L219+27
	jsl	~~k_debug_strings
L10087:
;
;	if(list && list->listhead)
	.line	757
;	{
	lda	<L224+list_0
	ora	<L224+list_0+2
	bne	L228
	brl	L10088
L228:
	lda	[<L224+list_0]
	ldy	#$2
	ora	[<L224+list_0],Y
	bne	L229
	brl	L10088
L229:
	.line	758
;		if(!k_nodelist_getname_and_type(list->listhead,name,type))
	.line	759
;		{
	pei	<L224+type_0
	pei	<L224+name_0+2
	pei	<L224+name_0
	ldy	#$2
	lda	[<L224+list_0],Y
	pha
	lda	[<L224+list_0]
	pha
	jsl	~~k_nodelist_getname_and_type
	sta	<R0
	stx	<R0+2
	lda	<R0
	ora	<R0+2
	beq	L230
	brl	L10089
L230:
	.line	760
;			node = k_nodelist_create(type,name,data,NULL,NULL);
	.line	761
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pei	<L224+data_0+2
	pei	<L224+data_0
	pei	<L224+name_0+2
	pei	<L224+name_0
	pei	<L224+type_0
	jsl	~~k_nodelist_create
	sta	<L225+node_1
	stx	<L225+node_1+2
;			if(node)
	.line	762
;			{
	lda	<L225+node_1
	ora	<L225+node_1+2
	bne	L231
	brl	L10090
L231:
	.line	763
;				k_nodelist_add(list->listhead,node);
	.line	764
	pei	<L225+node_1+2
	pei	<L225+node_1
	ldy	#$2
	lda	[<L224+list_0],Y
	pha
	lda	[<L224+list_0]
	pha
	jsl	~~k_nodelist_add
;			}
	.line	765
;		}
L10090:
	.line	766
;		else
	brl	L10091
L10089:
;		{
	.line	768
;			//k_exec_throw_exception(THIS_MODULE,0x00020002,k_string_replace("Attempt to add node with duplicate name: %s1","%s1",name),-1);
;
;			if(name!=NULL)
	.line	771
;				k_exec_throw_exception(THIS_MODULE,0x00020002,k_string_replace("Attempt to add node with duplicate name: %s1","%s1",name),-1);
	lda	<L224+name_0
	ora	<L224+name_0+2
	bne	L232
	brl	L10092
L232:
	.line	772
	pea	#<$ffffffff
	pei	<L224+name_0+2
	pei	<L224+name_0
	pea	#^L219+104
	pea	#<L219+104
	pea	#^L219+59
	pea	#<L219+59
	jsl	~~k_string_replace
	sta	<R0
	stx	<R0+2
	phx
	pha
	pea	#^$20002
	pea	#<$20002
	lda	|~~THIS_MODULE+2
	pha
	lda	|~~THIS_MODULE
	pha
	jsl	~~k_exec_throw_exception
;			else
	brl	L10093
L10092:
;				k_exec_throw_exception(THIS_MODULE,0x00020002,"Attempt to add node with duplicate name.",-1);
	.line	774
	pea	#<$ffffffff
	pea	#^L219+108
	pea	#<L219+108
	pea	#^$20002
	pea	#<$20002
	lda	|~~THIS_MODULE+2
	pha
	lda	|~~THIS_MODULE
	pha
	jsl	~~k_exec_throw_exception
L10093:
;
;		}
	.line	776
L10091:
;	}
	.line	777
;	//k_debug_string("check k_nodelist_addtolist\r\n");
;	//k_heap_integrity_check();
;
;	//k_debug_pointer("k_nodelist_addtolist:exit:",list);
;
;	return node;
L10088:
	.line	783
	ldx	<L225+node_1+2
	lda	<L225+node_1
L233:
	tay
	lda	<L224+2
	sta	<L224+2+14
	lda	<L224+1
	sta	<L224+1+14
	pld
	tsc
	clc
	adc	#L224+14
	tcs
	tya
	rtl
;}
	.line	784
	.endblock	784
L224	equ	8
L225	equ	5
	ends
	efunc
	.endfunc	784,5,8
	.line	784
	data
L219:
	db	$6B,$5F,$6E,$6F,$64,$65,$6C,$69,$73,$74,$5F,$61,$64,$64,$74
	db	$6F,$6C,$69,$73,$74,$3A,$6E,$61,$6D,$65,$3A,$00,$6B,$5F,$6E
	db	$6F,$64,$65,$6C,$69,$73,$74,$5F,$61,$64,$64,$74,$6F,$6C,$69
	db	$73,$74,$3A,$6E,$61,$6D,$65,$3A,$00,$4E,$55,$4C,$4C,$00,$41
	db	$74,$74,$65,$6D,$70,$74,$20,$74,$6F,$20,$61,$64,$64,$20,$6E
	db	$6F,$64,$65,$20,$77,$69,$74,$68,$20,$64,$75,$70,$6C,$69,$63
	db	$61,$74,$65,$20,$6E,$61,$6D,$65,$3A,$20,$25,$73,$31,$00,$25
	db	$73,$31,$00,$41,$74,$74,$65,$6D,$70,$74,$20,$74,$6F,$20,$61
	db	$64,$64,$20,$6E,$6F,$64,$65,$20,$77,$69,$74,$68,$20,$64,$75
	db	$70,$6C,$69,$63,$61,$74,$65,$20,$6E,$61,$6D,$65,$2E,$00
	ends
;
;PFXNODE k_nodelist_addnodetolist(PFXNODELIST list,PFXNODE new)
;{
	.line	786
	.line	787
	NODEMAN
	xdef	~~k_nodelist_addnodetolist
	func
	.function	787
~~k_nodelist_addnodetolist:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L235
	tcs
	phd
	tcd
list_0	set	4
new_0	set	8
	.block	787
;	PFXNODE node = NULL;
;
;	if(list && list->listhead)
node_1	set	0
	.sym	node,0,138,1,32,2
	.sym	list,4,138,6,32,3
	.sym	new,8,138,6,32,2
	stz	<L236+node_1
	stz	<L236+node_1+2
	.line	790
;	{
	lda	<L235+list_0
	ora	<L235+list_0+2
	bne	L238
	brl	L10094
L238:
	lda	[<L235+list_0]
	ldy	#$2
	ora	[<L235+list_0],Y
	bne	L239
	brl	L10094
L239:
	.line	791
;		if(!k_nodelist_getname_and_type(list->listhead,new->name,new->type))
	.line	792
;		{
	lda	[<L235+new_0]
	pha
	clc
	lda	#$e
	adc	<L235+new_0
	sta	<R0
	lda	#$0
	adc	<L235+new_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$2
	lda	[<L235+list_0],Y
	pha
	lda	[<L235+list_0]
	pha
	jsl	~~k_nodelist_getname_and_type
	sta	<R1
	stx	<R1+2
	lda	<R1
	ora	<R1+2
	beq	L240
	brl	L10095
L240:
	.line	793
;			k_nodelist_add(list->listhead,new);
	.line	794
	pei	<L235+new_0+2
	pei	<L235+new_0
	ldy	#$2
	lda	[<L235+list_0],Y
	pha
	lda	[<L235+list_0]
	pha
	jsl	~~k_nodelist_add
;		}
	.line	795
;		else
	brl	L10096
L10095:
;		{
	.line	797
;			k_exec_throw_exception(THIS_MODULE,0x00020003,k_string_replace("Attempt to add node with duplicate name: %s1","%s1",new->name),-1);
	.line	798
	pea	#<$ffffffff
	clc
	lda	#$e
	adc	<L235+new_0
	sta	<R0
	lda	#$0
	adc	<L235+new_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L234+45
	pea	#<L234+45
	pea	#^L234
	pea	#<L234
	jsl	~~k_string_replace
	sta	<R1
	stx	<R1+2
	phx
	pha
	pea	#^$20003
	pea	#<$20003
	lda	|~~THIS_MODULE+2
	pha
	lda	|~~THIS_MODULE
	pha
	jsl	~~k_exec_throw_exception
;		}
	.line	799
L10096:
;	}
	.line	800
;	return node;
L10094:
	.line	801
	ldx	<L236+node_1+2
	lda	<L236+node_1
L241:
	tay
	lda	<L235+2
	sta	<L235+2+8
	lda	<L235+1
	sta	<L235+1+8
	pld
	tsc
	clc
	adc	#L235+8
	tcs
	tya
	rtl
;}
	.line	802
	.endblock	802
L235	equ	12
L236	equ	9
	ends
	efunc
	.endfunc	802,9,12
	.line	802
	data
L234:
	db	$41,$74,$74,$65,$6D,$70,$74,$20,$74,$6F,$20,$61,$64,$64,$20
	db	$6E,$6F,$64,$65,$20,$77,$69,$74,$68,$20,$64,$75,$70,$6C,$69
	db	$63,$61,$74,$65,$20,$6E,$61,$6D,$65,$3A,$20,$25,$73,$31,$00
	db	$25,$73,$31,$00
	ends
;
;
;
;PFXNODE	k_nodelist_searchByName(PFXNODELIST list,LPCSTR name)
;{
	.line	806
	.line	807
	NODEMAN
	xdef	~~k_nodelist_searchByName
	func
	.function	807
~~k_nodelist_searchByName:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L243
	tcs
	phd
	tcd
list_0	set	4
name_0	set	8
	.block	807
;	PFXNODE node = NULL;
;
;	if(list && list->listhead)
node_1	set	0
	.sym	node,0,138,1,32,2
	.sym	list,4,138,6,32,3
	.sym	name,8,142,6,32
	stz	<L244+node_1
	stz	<L244+node_1+2
	.line	810
;		node = k_nodelist_getname(list->listhead->next,(LPCHAR)name);
	lda	<L243+list_0
	ora	<L243+list_0+2
	bne	L246
	brl	L10097
L246:
	lda	[<L243+list_0]
	ldy	#$2
	ora	[<L243+list_0],Y
	bne	L247
	brl	L10097
L247:
	.line	811
	pei	<L243+name_0+2
	pei	<L243+name_0
	lda	[<L243+list_0]
	sta	<R0
	ldy	#$2
	lda	[<L243+list_0],Y
	sta	<R0+2
	ldy	#$c
	lda	[<R0],Y
	pha
	ldy	#$a
	lda	[<R0],Y
	pha
	jsl	~~k_nodelist_getname
	sta	<L244+node_1
	stx	<L244+node_1+2
;
;	return node;
L10097:
	.line	813
	ldx	<L244+node_1+2
	lda	<L244+node_1
L248:
	tay
	lda	<L243+2
	sta	<L243+2+8
	lda	<L243+1
	sta	<L243+1+8
	pld
	tsc
	clc
	adc	#L243+8
	tcs
	tya
	rtl
;}
	.line	814
	.endblock	814
L243	equ	8
L244	equ	5
	ends
	efunc
	.endfunc	814,5,8
	.line	814
;
;
;PFXNODE	k_nodelist_searchByType(PFXNODELIST list,BYTE type)
;{
	.line	817
	.line	818
	NODEMAN
	xdef	~~k_nodelist_searchByType
	func
	.function	818
~~k_nodelist_searchByType:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L249
	tcs
	phd
	tcd
list_0	set	4
type_0	set	8
	.block	818
;	PFXNODE node = NULL;
;
;	if(list && list->listhead)
node_1	set	0
	.sym	node,0,138,1,32,2
	.sym	list,4,138,6,32,3
	.sym	type,8,14,6,8
	stz	<L250+node_1
	stz	<L250+node_1+2
	.line	821
;		node = k_nodelist_gettype(list->listhead->next,type);
	lda	<L249+list_0
	ora	<L249+list_0+2
	bne	L252
	brl	L10098
L252:
	lda	[<L249+list_0]
	ldy	#$2
	ora	[<L249+list_0],Y
	bne	L253
	brl	L10098
L253:
	.line	822
	pei	<L249+type_0
	lda	[<L249+list_0]
	sta	<R0
	ldy	#$2
	lda	[<L249+list_0],Y
	sta	<R0+2
	ldy	#$c
	lda	[<R0],Y
	pha
	ldy	#$a
	lda	[<R0],Y
	pha
	jsl	~~k_nodelist_gettype
	sta	<L250+node_1
	stx	<L250+node_1+2
;
;	return node;
L10098:
	.line	824
	ldx	<L250+node_1+2
	lda	<L250+node_1
L254:
	tay
	lda	<L249+2
	sta	<L249+2+6
	lda	<L249+1
	sta	<L249+1+6
	pld
	tsc
	clc
	adc	#L249+6
	tcs
	tya
	rtl
;}
	.line	825
	.endblock	825
L249	equ	8
L250	equ	5
	ends
	efunc
	.endfunc	825,5,8
	.line	825
;
;LPCSTR k_nodelist_getlistname(PFXNODELIST list)
;{
	.line	827
	.line	828
	NODEMAN
	xdef	~~k_nodelist_getlistname
	func
	.function	828
~~k_nodelist_getlistname:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L255
	tcs
	phd
	tcd
list_0	set	4
	.block	828
;	LPCSTR name = NULL;
;
;	if(list && list->listhead)
name_1	set	0
	.sym	name,0,142,1,32
	.sym	list,4,138,6,32,3
	stz	<L256+name_1
	stz	<L256+name_1+2
	.line	831
;		name = (LPCSTR)list->listhead->data;
	lda	<L255+list_0
	ora	<L255+list_0+2
	bne	L258
	brl	L10099
L258:
	lda	[<L255+list_0]
	ldy	#$2
	ora	[<L255+list_0],Y
	bne	L259
	brl	L10099
L259:
	.line	832
	lda	[<L255+list_0]
	sta	<R0
	ldy	#$2
	lda	[<L255+list_0],Y
	sta	<R0+2
	ldy	#$2
	lda	[<R0],Y
	sta	<L256+name_1
	ldy	#$4
	lda	[<R0],Y
	sta	<L256+name_1+2
;
;	return name;
L10099:
	.line	834
	ldx	<L256+name_1+2
	lda	<L256+name_1
L260:
	tay
	lda	<L255+2
	sta	<L255+2+4
	lda	<L255+1
	sta	<L255+1+4
	pld
	tsc
	clc
	adc	#L255+4
	tcs
	tya
	rtl
;}
	.line	835
	.endblock	835
L255	equ	8
L256	equ	5
	ends
	efunc
	.endfunc	835,5,8
	.line	835
;
;
;
	.line	837
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxnode.c",827
	xref	~~k_debug_strings
	xref	~~k_debug_integer
	xref	~~k_debug_pointer
	xref	~~k_debug_string
	xref	~~k_mem_deallocate_heap
	xref	~~k_mem_allocate_heap
	xref	~~k_exec_throw_exception
	xref	~~k_string_copy_string
	xref	~~k_string_replace
	xref	~~k_longtodec
	xref	~~strncpy
	xref	~~strlen
	xref	~~strcpy
	xref	~~strcmp
	xref	~~memset
	.sym	~~k_nodelist_data,~~k_nodelist_data,1089,2,32
	.sym	~~k_initialize,~~k_initialize,65,2,0
	.sym	~~THIS_MODULE,~~THIS_MODULE,18,3,32
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
	.sym	~~k_debug_integer,~~k_debug_integer,65,18,0
	.sym	~~k_debug_pointer,~~k_debug_pointer,65,18,0
	.sym	~~k_debug_string,~~k_debug_string,65,18,0
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
	.sym	~~k_mem_deallocate_heap,~~k_mem_deallocate_heap,65,18,0
	.sym	~~k_mem_allocate_heap,~~k_mem_allocate_heap,1089,18,32
	.sym	MemoryCallback,0,641,14,32
	.sym	PFXMEMORYMAP,0,138,14,32,47
	.sym	FXMEMORYMAP,0,10,14,2072,47
	.sym	UMM_HEAP_INFO,0,10,14,256,46
	.sym	~~k_exec_throw_exception,~~k_exec_throw_exception,65,18,0
	.sym	~~k_string_copy_string,~~k_string_copy_string,1102,18,32
	.sym	~~k_string_replace,~~k_string_replace,1102,18,32
	.sym	~~k_longtodec,~~k_longtodec,1102,18,32
	.sym	PFXSTRING,0,138,14,32,45
	.sym	FXSTRING,0,10,14,64,45
	.sym	~~strncpy,~~strncpy,1102,18,32
	.sym	~~strlen,~~strlen,80,18,0
	.sym	~~strcpy,~~strcpy,1102,18,32
	.sym	~~strcmp,~~strcmp,69,18,0
	.sym	~~memset,~~memset,1089,18,32
	.sym	Boolean_T,0,5,14,16
	.sym	ldiv_t,0,10,14,64,43
	.sym	div_t,0,10,14,32,42
	.sym	wctype_t,0,16,14,16
	.sym	wint_t,0,16,14,16
	.sym	wchar_t,0,14,14,8
	.sym	ptrdiff_t,0,7,14,32
	.sym	size_t,0,16,14,16
	.sym	~~k_nodelist_foreach_listdata_remove,~~k_nodelist_foreach_listdata_remove,65,2,0
	.sym	~~k_nodelist_foreach_until_listdata,~~k_nodelist_foreach_until_listdata,1098,2,32,2
	.sym	~~k_nodelist_foreach_listdata,~~k_nodelist_foreach_listdata,65,2,0
	.sym	~~k_nodelist_foreach_type,~~k_nodelist_foreach_type,65,2,0
	.sym	~~k_nodelist_foreach_until_data,~~k_nodelist_foreach_until_data,1098,2,32,2
	.sym	~~k_nodelist_foreach_data,~~k_nodelist_foreach_data,65,2,0
	.sym	FOREACHNODEUNTIL,0,654,14,32
	.sym	FOREACHNODE,0,641,14,32
	.sym	~~k_nodelist_getfirstnode,~~k_nodelist_getfirstnode,1098,2,32,2
	.sym	~~k_nodelist_getlistname,~~k_nodelist_getlistname,1102,2,32
	.sym	~~k_nodelist_searchByType,~~k_nodelist_searchByType,1098,2,32,2
	.sym	~~k_nodelist_searchByName,~~k_nodelist_searchByName,1098,2,32,2
	.sym	~~k_nodelist_clear_list,~~k_nodelist_clear_list,1098,2,32,3
	.sym	~~k_nodelist_addnodetolist,~~k_nodelist_addnodetolist,1098,2,32,2
	.sym	~~k_nodelist_naddtolist,~~k_nodelist_naddtolist,1098,2,32,2
	.sym	~~k_nodelist_addtolist_tohead,~~k_nodelist_addtolist_tohead,1098,2,32,2
	.sym	~~k_nodelist_naddtolist_tohead,~~k_nodelist_naddtolist_tohead,1098,2,32,2
	.sym	~~k_nodelist_addtolist,~~k_nodelist_addtolist,1098,2,32,2
	.sym	~~k_nodelist_deallocate_list,~~k_nodelist_deallocate_list,65,2,0
	.sym	~~k_nodelist_allocate_list,~~k_nodelist_allocate_list,1098,2,32,3
	.sym	~~k_nodelist_last,~~k_nodelist_last,1098,2,32,2
	.sym	~~k_nodelist_remove,~~k_nodelist_remove,1098,2,32,2
	.sym	~~k_nodelist_getname_and_type,~~k_nodelist_getname_and_type,1098,2,32,2
	.sym	~~k_nodelist_getname,~~k_nodelist_getname,1098,2,32,2
	.sym	~~k_nodelist_get,~~k_nodelist_get,1098,2,32,2
	.sym	~~k_nodelist_gettype,~~k_nodelist_gettype,1098,2,32,2
	.sym	~~k_nodelist_addtohead,~~k_nodelist_addtohead,65,2,0
	.sym	~~k_nodelist_add,~~k_nodelist_add,65,2,0
	.sym	~~k_nodelist_copy,~~k_nodelist_copy,1098,2,32,2
	.sym	~~k_nodelist_ncreate,~~k_nodelist_ncreate,1098,2,32,2
	.sym	~~k_nodelist_create,~~k_nodelist_create,1098,2,32,2
	.sym	~~k_nodelist_init,~~k_nodelist_init,1098,2,32,2
	.sym	~~k_debug_queue,~~k_debug_queue,65,2,0
	.sym	~~k_dequeue_with_lock,~~k_dequeue_with_lock,1089,2,32
	.sym	~~k_enqueue_with_lock,~~k_enqueue_with_lock,65,2,0
	.sym	~~k_dequeue,~~k_dequeue,1089,2,32
	.sym	~~k_enqueue,~~k_enqueue,65,2,0
	.sym	~~k_isempty,~~k_isempty,69,2,0
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

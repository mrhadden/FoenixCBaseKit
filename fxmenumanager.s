;:ts=8
R0	equ	1
R1	equ	5
R2	equ	9
R3	equ	13
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxmenumanager.c",0
;/*
; * fxmenumanager.c
; *
; *  Created on: Oct 1, 2019
; *      Author: mtbush
; */
;#include "fxos.h"
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos.h",0
	.line	25
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxkernel.h",5
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxnode.h",0
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxtypes.h",0
	.line	708
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxnode.h",5
	.line	61
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxkernel.h",6
	.stag	_fx_zero_page,448,45
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
	.stag	_fx_environment,96,46
	.member	variables,0,142,8,32
	.member	reserved1,32,5,8,16
	.member	reserved2,48,5,8,16
	.member	reserved3,64,5,8,16
	.member	reserved4,80,5,8,16
	.eos
	.stag	_debug_byte_bits,8,47
	.member	bit7,0,14,17,1
	.member	bit6,1,14,17,1
	.member	bit5,2,14,17,1
	.member	bit4,3,14,17,1
	.member	bit3,4,14,17,1
	.member	bit2,5,14,17,1
	.member	bit1,6,14,17,1
	.member	bit0,7,14,17,1
	.eos
	.stag	_fx_device_driver,1416,48
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
	.stag	_fx_block_device_driver,1448,49
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
	.stag	_fx_string,64,50
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
	.stag	UMM_HEAP_INFO_t,256,51
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
	.stag	_fx_memory_map,2072,52
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
	.stag	_click_detected,64,53
	.member	window,0,138,8,32,30
	.member	handler,32,641,8,32
	.eos
	.stag	_current_palette_map,400,54
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
	.stag	_childMessage_t,64,55
	.member	msgType,0,16,8,16
	.member	msgData,16,129,8,32
	.member	dataSize,48,16,8,16
	.eos
	.line	362
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxeventmanager.h",9
	.stag	_fx_main_loopvars,16,56
	.member	dummy,0,5,8,16
	.eos
	.stag	_fxMouseMessageData,64,57
	.member	button1,0,14,8,8
	.member	button2,8,14,8,8
	.member	button3,16,14,8,8
	.member	button4,24,14,8,8
	.member	x,32,16,8,16
	.member	y,48,16,8,16
	.eos
	.stag	_fx_eventProcess,64,58
	.member	process,0,138,8,32,20
	.member	eventProc,32,641,8,32
	.eos
	.stag	_mouse_msg_state,184,59
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
	.stag	_fx_spinner_ctx,48,60
	.member	index,0,5,8,16
	.member	spinner,16,142,8,32
	.eos
	.stag	_fx_console_ctx,1144,61
	.member	lineBufferIndex,0,5,8,16
	.member	lineBuffer,16,110,8,0,128
	.member	isShifted,1040,14,8,8
	.member	userData,1048,129,8,32
	.member	screenBuffer,1080,129,8,32
	.member	Reserved1,1112,129,8,32
	.eos
	.stag	_token,64,62
	.member	type,0,5,8,16
	.member	depth,16,16,8,16
	.member	text,32,142,8,32
	.eos
	.stag	_command_args,64,63
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxmenumanager.c",7
;#include "fxmenumanager.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxmenumanager.h",0
	.line	26
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxmenumanager.c",8
;#include "fxwindowmanager.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxwindowmanager.h",0
	.line	362
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxmenumanager.c",9
;
;BOOL k_initializeMenuManager(void)
;{
	.line	11
	.line	12
	code
	xdef	~~k_initializeMenuManager
	func
	.function	12
~~k_initializeMenuManager:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L2
	tcs
	phd
	tcd
	.block	12
;	k_debug_strings("k_initializeMenuManager:","Enter");
	.line	13
	pea	#^L1+25
	pea	#<L1+25
	pea	#^L1
	pea	#<L1
	jsl	~~k_debug_strings
;
;	k_user_CreateWindowClass("menuMainWindowClass",NULL,0,NULL,NULL,NULL,mainMenuWindowProc);
	.line	15
	pea	#^~~mainMenuWindowProc
	pea	#<~~mainMenuWindowProc
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#^L1+31
	pea	#<L1+31
	jsl	~~k_user_CreateWindowClass
;	//k_user_CreateWindowClass("menuAnchorWindowClass",NULL,0,NULL,NULL,NULL,menuAnchorWindowProc);
;	//k_user_CreateWindowClass("menuDropDownWindowClass",NULL,0,NULL,NULL,NULL,menuDropDownWindowProc);
;	//k_user_CreateWindowClass("menuItemWindowClass",NULL,0,NULL,NULL,NULL,menuItemWindowProc);
;
;
;	k_menu_CreateMenu(k_user_getDesktopWindow(),NULL,NULL);
	.line	21
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	jsl	~~k_user_getDesktopWindow
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_menu_CreateMenu
;
;
;	return TRUE;
	.line	24
	lda	#$1
L5:
	tay
	pld
	tsc
	clc
	adc	#L2
	tcs
	tya
	rtl
;}
	.line	25
	.endblock	25
L2	equ	4
L3	equ	5
	ends
	efunc
	.endfunc	25,5,4
	.line	25
	data
L1:
	db	$6B,$5F,$69,$6E,$69,$74,$69,$61,$6C,$69,$7A,$65,$4D,$65,$6E
	db	$75,$4D,$61,$6E,$61,$67,$65,$72,$3A,$00,$45,$6E,$74,$65,$72
	db	$00,$6D,$65,$6E,$75,$4D,$61,$69,$6E,$57,$69,$6E,$64,$6F,$77
	db	$43,$6C,$61,$73,$73,$00
	ends
;
;HMENURESOURCE k_menu_CreateMenuResource(LPCSTR resourceName)
;{
	.line	27
	.line	28
	code
	xdef	~~k_menu_CreateMenuResource
	func
	.function	28
~~k_menu_CreateMenuResource:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L7
	tcs
	phd
	tcd
resourceName_0	set	4
	.block	28
;	PMENU pMenu = NULL;
;
;	k_debug_strings("k_menu_CreateMenuResource:","Enter");
pMenu_1	set	0
	.sym	pMenu,0,138,1,32,34
	.sym	resourceName,4,142,6,32
	stz	<L8+pMenu_1
	stz	<L8+pMenu_1+2
	.line	31
	pea	#^L6+27
	pea	#<L6+27
	pea	#^L6
	pea	#<L6
	jsl	~~k_debug_strings
;
;	pMenu = k_mem_allocate_heap(sizeof(MENU));
	.line	33
	pea	#<$1f
	jsl	~~k_mem_allocate_heap
	sta	<L8+pMenu_1
	stx	<L8+pMenu_1+2
;	if(pMenu)
	.line	34
;	{
	lda	<L8+pMenu_1
	ora	<L8+pMenu_1+2
	bne	L10
	brl	L10001
L10:
	.line	35
;		memset(pMenu,0,sizeof(MENU));
	.line	36
	pea	#<$1f
	pea	#<$0
	pei	<L8+pMenu_1+2
	pei	<L8+pMenu_1
	jsl	~~memset
;
;		pMenu->pCaption = k_string_copy_string(resourceName);
	.line	38
	pei	<L7+resourceName_0+2
	pei	<L7+resourceName_0
	jsl	~~k_string_copy_string
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$f
	sta	[<L8+pMenu_1],Y
	lda	<R0+2
	ldy	#$11
	sta	[<L8+pMenu_1],Y
;		pMenu->width    = 0;
	.line	39
	lda	#$0
	ldy	#$4
	sta	[<L8+pMenu_1],Y
;		pMenu->height   = 0;
	.line	40
	lda	#$0
	ldy	#$6
	sta	[<L8+pMenu_1],Y
;		pMenu->subMenus = NULL;
	.line	41
	lda	#$0
	ldy	#$13
	sta	[<L8+pMenu_1],Y
	lda	#$0
	ldy	#$15
	sta	[<L8+pMenu_1],Y
;	}
	.line	42
;	k_debug_strings("k_user_CreateMenuResource:","Exit");
L10001:
	.line	43
	pea	#^L6+60
	pea	#<L6+60
	pea	#^L6+33
	pea	#<L6+33
	jsl	~~k_debug_strings
;
;	return (HMENURESOURCE)pMenu;
	.line	45
	ldx	<L8+pMenu_1+2
	lda	<L8+pMenu_1
L11:
	tay
	lda	<L7+2
	sta	<L7+2+4
	lda	<L7+1
	sta	<L7+1+4
	pld
	tsc
	clc
	adc	#L7+4
	tcs
	tya
	rtl
;}
	.line	46
	.endblock	46
L7	equ	8
L8	equ	5
	ends
	efunc
	.endfunc	46,5,8
	.line	46
	data
L6:
	db	$6B,$5F,$6D,$65,$6E,$75,$5F,$43,$72,$65,$61,$74,$65,$4D,$65
	db	$6E,$75,$52,$65,$73,$6F,$75,$72,$63,$65,$3A,$00,$45,$6E,$74
	db	$65,$72,$00,$6B,$5F,$75,$73,$65,$72,$5F,$43,$72,$65,$61,$74
	db	$65,$4D,$65,$6E,$75,$52,$65,$73,$6F,$75,$72,$63,$65,$3A,$00
	db	$45,$78,$69,$74,$00
	ends
;
;
;VOID k_menu_FreemMenuResource(HMENURESOURCE menuResource)
;{
	.line	49
	.line	50
	code
	xdef	~~k_menu_FreemMenuResource
	func
	.function	50
~~k_menu_FreemMenuResource:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L13
	tcs
	phd
	tcd
menuResource_0	set	4
	.block	50
;	PMENU pMenu = ((PMENU)menuResource);
;
;	k_debug_strings("k_menu_FreemMenuResource:","Enter");
pMenu_1	set	0
	.sym	pMenu,0,138,1,32,34
	.sym	menuResource,4,129,6,32
	lda	<L13+menuResource_0
	sta	<L14+pMenu_1
	lda	<L13+menuResource_0+2
	sta	<L14+pMenu_1+2
	.line	53
	pea	#^L12+26
	pea	#<L12+26
	pea	#^L12
	pea	#<L12
	jsl	~~k_debug_strings
;
;	if(pMenu)
	.line	55
;	{
	lda	<L14+pMenu_1
	ora	<L14+pMenu_1+2
	bne	L16
	brl	L10002
L16:
	.line	56
;		if(pMenu->pCaption)
	.line	57
;			k_mem_deallocate_heap((LPVOID)pMenu->pCaption);
	ldy	#$f
	lda	[<L14+pMenu_1],Y
	ldy	#$11
	ora	[<L14+pMenu_1],Y
	bne	L17
	brl	L10003
L17:
	.line	58
	ldy	#$11
	lda	[<L14+pMenu_1],Y
	pha
	ldy	#$f
	lda	[<L14+pMenu_1],Y
	pha
	jsl	~~k_mem_deallocate_heap
;
;		k_nodelist_deallocate_list(pMenu->subMenus);
L10003:
	.line	60
	ldy	#$15
	lda	[<L14+pMenu_1],Y
	pha
	ldy	#$13
	lda	[<L14+pMenu_1],Y
	pha
	jsl	~~k_nodelist_deallocate_list
;
;		k_mem_deallocate_heap(menuResource);
	.line	62
	pei	<L13+menuResource_0+2
	pei	<L13+menuResource_0
	jsl	~~k_mem_deallocate_heap
;	}
	.line	63
;	k_heap_integrity_check();
L10002:
	.line	64
	jsl	~~k_heap_integrity_check
;	k_debug_strings("k_menu_FreemMenuResource:","Exit");
	.line	65
	pea	#^L12+58
	pea	#<L12+58
	pea	#^L12+32
	pea	#<L12+32
	jsl	~~k_debug_strings
;}
	.line	66
L18:
	lda	<L13+2
	sta	<L13+2+4
	lda	<L13+1
	sta	<L13+1+4
	pld
	tsc
	clc
	adc	#L13+4
	tcs
	rtl
	.endblock	66
L13	equ	4
L14	equ	1
	ends
	efunc
	.endfunc	66,1,4
	.line	66
	data
L12:
	db	$6B,$5F,$6D,$65,$6E,$75,$5F,$46,$72,$65,$65,$6D,$4D,$65,$6E
	db	$75,$52,$65,$73,$6F,$75,$72,$63,$65,$3A,$00,$45,$6E,$74,$65
	db	$72,$00,$6B,$5F,$6D,$65,$6E,$75,$5F,$46,$72,$65,$65,$6D,$4D
	db	$65,$6E,$75,$52,$65,$73,$6F,$75,$72,$63,$65,$3A,$00,$45,$78
	db	$69,$74,$00
	ends
;
;PWINDOW	k_menu_CreateMenu(HWND      	hWndParent,
;						  HMENURESOURCE hMenuRes,
;						  HINSTANCE 	hInstance)
;{
	.line	68
	.line	71
	code
	xdef	~~k_menu_CreateMenu
	func
	.function	71
~~k_menu_CreateMenu:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L20
	tcs
	phd
	tcd
hWndParent_0	set	4
hMenuRes_0	set	8
hInstance_0	set	12
	.block	71
;
;	PWINDOW pWin = NULL;
;
;	k_debug_pointer("k_menu_CreateMenu:Parent hWnd:",hWndParent);
pWin_1	set	0
	.sym	pWin,0,138,1,32,30
	.sym	hWndParent,4,129,6,32
	.sym	hMenuRes,8,129,6,32
	.sym	hInstance,12,129,6,32
	stz	<L21+pWin_1
	stz	<L21+pWin_1+2
	.line	75
	pei	<L20+hWndParent_0+2
	pei	<L20+hWndParent_0
	pea	#^L19
	pea	#<L19
	jsl	~~k_debug_pointer
;	k_debug_pointer("k_menu_CreateMenu:DesktopWindow:",k_user_getDesktopWindow());
	.line	76
	jsl	~~k_user_getDesktopWindow
	sta	<R0
	stx	<R0+2
	phx
	pha
	pea	#^L19+31
	pea	#<L19+31
	jsl	~~k_debug_pointer
;
;	pWin = k_user_CreateWindow(0,
	.line	78
;							   "menuMainWindowClass",
;							    "mainmenu",
;								0,0,
;								k_user_getSystemMetric(SM_CXMENUSIZE),
;								k_user_getSystemMetric(SM_CYMENUSIZE),
;								hWndParent,
;								(HMENU)hMenuRes,
;								NULL);
	pea	#^$0
	pea	#<$0
	pei	<L20+hMenuRes_0+2
	pei	<L20+hMenuRes_0
	pei	<L20+hWndParent_0+2
	pei	<L20+hWndParent_0
	pea	#<$37
	jsl	~~k_user_getSystemMetric
	pha
	pea	#<$36
	jsl	~~k_user_getSystemMetric
	pha
	pea	#<$0
	pea	#<$0
	pea	#^L19+84
	pea	#<L19+84
	pea	#^L19+64
	pea	#<L19+64
	pea	#^$0
	pea	#<$0
	jsl	~~k_user_CreateWindow
	sta	<L21+pWin_1
	stx	<L21+pWin_1+2
;
;
;
;
;	return pWin;
	.line	91
	ldx	<L21+pWin_1+2
	lda	<L21+pWin_1
L23:
	tay
	lda	<L20+2
	sta	<L20+2+12
	lda	<L20+1
	sta	<L20+1+12
	pld
	tsc
	clc
	adc	#L20+12
	tcs
	tya
	rtl
;
;}
	.line	93
	.endblock	93
L20	equ	8
L21	equ	5
	ends
	efunc
	.endfunc	93,5,8
	.line	93
	data
L19:
	db	$6B,$5F,$6D,$65,$6E,$75,$5F,$43,$72,$65,$61,$74,$65,$4D,$65
	db	$6E,$75,$3A,$50,$61,$72,$65,$6E,$74,$20,$68,$57,$6E,$64,$3A
	db	$00,$6B,$5F,$6D,$65,$6E,$75,$5F,$43,$72,$65,$61,$74,$65,$4D
	db	$65,$6E,$75,$3A,$44,$65,$73,$6B,$74,$6F,$70,$57,$69,$6E,$64
	db	$6F,$77,$3A,$00,$6D,$65,$6E,$75,$4D,$61,$69,$6E,$57,$69,$6E
	db	$64,$6F,$77,$43,$6C,$61,$73,$73,$00,$6D,$61,$69,$6E,$6D,$65
	db	$6E,$75,$00
	ends
;
;
;BOOL mainMenuWindowProc(PFXOSMESSAGE pMsg)
;{
	.line	96
	.line	97
	code
	xdef	~~mainMenuWindowProc
	func
	.function	97
~~mainMenuWindowProc:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L25
	tcs
	phd
	tcd
pMsg_0	set	4
	.block	97
;	PWINDOW pWin = NULL;
;	PFXPROCESS p = NULL;
;	PFXSTRING  fxstr = NULL;
;	LPCHAR title = NULL;
;	UCHAR localBuffer[16];
;	PFXNODE node = NULL;
;
;	if(pMsg!=NULL)
pWin_1	set	0
p_1	set	4
fxstr_1	set	8
title_1	set	12
localBuffer_1	set	16
node_1	set	32
	.sym	pWin,0,138,1,32,30
	.sym	p,4,138,1,32,20
	.sym	fxstr,8,138,1,32,50
	.sym	title,12,142,1,32
	.sym	localBuffer,16,110,1,0,16
	.sym	node,32,138,1,32,5
	.sym	pMsg,4,138,6,32,16
	stz	<L26+pWin_1
	stz	<L26+pWin_1+2
	stz	<L26+p_1
	stz	<L26+p_1+2
	stz	<L26+fxstr_1
	stz	<L26+fxstr_1+2
	stz	<L26+title_1
	stz	<L26+title_1+2
	stz	<L26+node_1
	stz	<L26+node_1+2
	.line	105
;	{
	lda	<L25+pMsg_0
	ora	<L25+pMsg_0+2
	bne	L28
	brl	L10004
L28:
	.line	106
;		p = k_exec_get_current_process();
	.line	107
	jsl	~~k_exec_get_current_process
	sta	<L26+p_1
	stx	<L26+p_1+2
;
;		pWin = k_getWindowFromHandle(pMsg->hwnd);
	.line	109
	ldy	#$c
	lda	[<L25+pMsg_0],Y
	pha
	ldy	#$a
	lda	[<L25+pMsg_0],Y
	pha
	jsl	~~k_getWindowFromHandle
	sta	<L26+pWin_1
	stx	<L26+pWin_1+2
;
;		//k_debug_long("consoleWindowProc::ProcessId:",p->procId);
;
;		switch(pMsg->type)
	.line	113
	ldy	#$8
	lda	[<L25+pMsg_0],Y
	brl	L10005
;		{
	.line	114
;		case FX_CREATE_WINDOW:
	.line	115
L10007:
;			k_debug_string("mainMenuWindowProc::FX_CREATE_WINDOW\r\n");
	.line	116
	pea	#^L24
	pea	#<L24
	jsl	~~k_debug_string
;			//k_debug_long("menuWindowProc::heap:",umm_free_heap_size());
;			//k_debug_integer("menuWindowProc::MessageId:",pMsg->type);
;
;			pWin->windowData = k_mem_allocate_heap(sizeof(MENUANCHOR));
	.line	120
	pea	#<$12
	jsl	~~k_mem_allocate_heap
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$141
	sta	[<L26+pWin_1],Y
	lda	<R0+2
	ldy	#$143
	sta	[<L26+pWin_1],Y
;			((PMENUANCHOR)pWin->windowData)->renderLayoutX = 2 * FONTW;
	.line	121
	ldy	#$141
	lda	[<L26+pWin_1],Y
	sta	<R0
	ldy	#$143
	lda	[<L26+pWin_1],Y
	sta	<R0+2
	jsl	~~k_font_getFontWidth
	sta	<R1
	lda	<R1
	asl	A
	ldy	#$4
	sta	[<R0],Y
;			((PMENUANCHOR)pWin->windowData)->renderLayoutY = 2;
	.line	122
	ldy	#$141
	lda	[<L26+pWin_1],Y
	sta	<R0
	ldy	#$143
	lda	[<L26+pWin_1],Y
	sta	<R0+2
	lda	#$2
	ldy	#$6
	sta	[<R0],Y
;
;			/*
;			k_debug_pointer("mainMenuWindowProc::pWin->hMenu:",pWin->hMenu);
;			if(pWin->hMenu)
;			{
;
;					k_nodelist_foreach_type(((PMENU)pWin->hMenu)->subMenus,
;										NL_TYPE_WINDOW_MENU,
;										pMsg->hwnd,
;										k_iterate_menus);
;
;
;				if(((PMENU)pWin->hMenu)->subMenus)
;				{
;					k_vdraw_ui_menu(pWin->win_x,pWin->win_y,
;									pWin->win_width,
;									pWin->win_height,
;									"", //((PFXSTRING)((PMENU)pWin->hMenu)->subMenus->listData)->buffer,
;									4,3);
;
;					k_put_wingadget_point(WINICON_TITLE_BCLOSE,pWin->win_x + 2,pWin->win_y + 2 ,k_getUIGadgetColor());
;
;					if(pWin->hMenu && ((PMENU)pWin->hMenu)->subMenus)
;					{
;						//((PMENU)pWin->hMenu)->hWndOwner = pWin->pParentWindow; // temp for a test
;						//k_debug_strings("menuWindowProc::FX_MOUSE_ENTER:hWndOwner:title:", k_getWindowFromHandle(pWin->pParentWindow)->win_title );
;
;
;						_k_user_send_child_message(pWin,FX_SHOW_WINDOW,NULL,0);
;
;						//fxstr = k_fxstring_init(128);
;
;						//k_debug_strings("menuWindowProc::FX_CREATE_WINDOW:fxstr:",fxstr->buffer);
;						//((PMENU)pWin->hMenu)->subMenus->listData = fxstr;
;						//k_debug_strings("menuWindowProc::FX_CREATE_WINDOW:title:",title);
;					}
;
;
;				}
;
;
;
;				//k_draw_menu(pWin->hMenu,15,3);
;
;			}
;			*/
;			//k_debug_string("menuWindowProc::FX_CREATE_WINDOW:k_vdraw_ui_menu\r\n");
;			break;
	.line	170
	brl	L10006
;		case FX_DRAW_WINDOW:
	.line	171
L10008:
;			k_debug_string("mainMenuWindowProc::FX_REDRAW_WINDOW\r\n");
	.line	172
	pea	#^L24+39
	pea	#<L24+39
	jsl	~~k_debug_string
;
;
;			k_vdraw_ui_menu(pWin->win_x,
	.line	175
;							pWin->win_y,
;							pWin->win_width,
;							pWin->win_height,
;							NULL, //((PFXSTRING)((PMENU)pWin->hMenu)->subMenus->listData)->buffer,
;							4,3);
	pea	#<$3
	pea	#<$4
	pea	#^$0
	pea	#<$0
	ldy	#$e
	lda	[<L26+pWin_1],Y
	pha
	ldy	#$c
	lda	[<L26+pWin_1],Y
	pha
	ldy	#$a
	lda	[<L26+pWin_1],Y
	pha
	ldy	#$8
	lda	[<L26+pWin_1],Y
	pha
	jsl	~~k_vdraw_ui_menu
;
;
;			break;
	.line	183
	brl	L10006
;		case FX_LBUTTON_DOWN:
	.line	184
L10009:
;			if(pMsg->type!=FX_PROCESS)
	.line	185
;			{
	ldy	#$8
	lda	[<L25+pMsg_0],Y
	cmp	#<$ff00
	bne	L29
	brl	L10010
L29:
	.line	186
;				//k_debug_integer("consoleWindowProc::ProcessId:",p->procId);
;				k_debug_integer("mainMenuWindowProc::FX_LBUTTON_DOWN:X:", *((INT*)&pMsg->data[1])  );
	.line	188
	ldy	#$17
	lda	[<L25+pMsg_0],Y
	pha
	pea	#^L24+78
	pea	#<L24+78
	jsl	~~k_debug_integer
;				k_debug_integer("mainMenuWindowProc::FX_LBUTTON_DOWN:Y:", *((INT*)&pMsg->data[3])  );
	.line	189
	ldy	#$19
	lda	[<L25+pMsg_0],Y
	pha
	pea	#^L24+117
	pea	#<L24+117
	jsl	~~k_debug_integer
;
;				k_debug_pointer("mainMenuWindowProc::pChildHitList:",pWin->pChildHitList);
	.line	191
	ldy	#$13e
	lda	[<L26+pWin_1],Y
	pha
	ldy	#$13c
	lda	[<L26+pWin_1],Y
	pha
	pea	#^L24+156
	pea	#<L24+156
	jsl	~~k_debug_pointer
;
;				//if(pWin->pChildHitList)
;				//	k_debug_nodelist_with_data( pWin->pChildHitList->listhead, debug_window_node );
;
;
;				//k_shadow_bitblt(0,0, 640, 480, 1,1);
;
;			}
	.line	199
;			break;
L10010:
	.line	200
	brl	L10006
;
;		case FX_MOUSE_ENTER:
	.line	202
L10011:
;			k_debug_string("mainMenuWindowProc::FX_MOUSE_ENTER\r\n");
	.line	203
	pea	#^L24+191
	pea	#<L24+191
	jsl	~~k_debug_string
;
;			/*
;			if(((PMENU)pWin->hMenu)->subMenus)
;			{
;				k_vdraw_ui_menu(pWin->win_x,pWin->win_y,
;								pWin->win_width,
;								pWin->win_height,
;								"", //((PFXSTRING)((PMENU)pWin->hMenu)->subMenus->listData)->buffer,
;								4,3);
;
;
;				if(pWin->hMenu && ((PMENU)pWin->hMenu)->subMenus)
;				{
;					//((PMENU)pWin->hMenu)->hWndOwner = pWin->pParentWindow; // temp for a test
;					//k_debug_strings("menuWindowProc::FX_MOUSE_ENTER:hWndOwner:title:", k_getWindowFromHandle(pWin->pParentWindow)->win_title );
;
;
;					_k_user_send_child_message(pWin,FX_SHOW_WINDOW,NULL,0);
;
;					//fxstr = k_fxstring_init(128);
;
;					//k_debug_strings("menuWindowProc::FX_CREATE_WINDOW:fxstr:",fxstr->buffer);
;					//((PMENU)pWin->hMenu)->subMenus->listData = fxstr;
;					//k_debug_strings("menuWindowProc::FX_CREATE_WINDOW:title:",title);
;				}
;
;
;			}
;			*/
;			break;
	.line	233
	brl	L10006
;		case FX_MOUSE_EXIT:
	.line	234
L10012:
;			k_debug_string("mainMenuWindowProc::FX_MOUSE_EXIT\r\n");
	.line	235
	pea	#^L24+228
	pea	#<L24+228
	jsl	~~k_debug_string
;			/*
;			k_debug_strings("menuWindowProc::FX_MOUSE_EXIT:title:",(LPCHAR)((PMENU)pWin->hMenu)->pCaption);
;
;			((PMENUANCHOR)pWin->windowData)->renderLayoutX = 2 + FONTW;
;			((PMENUANCHOR)pWin->windowData)->renderLayoutY = 2 + FONTW;
;
;			if(((PMENU)pWin->hMenu)->pCaption)
;			{
;				_k_user_send_child_message(pWin,FX_HIDE_WINDOW,NULL,0);
;
;				k_mem_deallocate_heap((LPVOID)((PMENU)pWin->hMenu)->pCaption);
;
;				title = k_string_replace(CONST_WB_MENU_TITLE,"%s1", k_strip_padding(k_longtodec(k_getZeroPage()->availableHeapMemoryK,localBuffer)) );
;				((PMENU)pWin->hMenu)->pCaption = k_string_replace(title,"%s2", k_strip_padding(k_longtodec(k_getZeroPage()->availableHeapMemoryK,localBuffer)));
;
;
;				k_vdraw_ui_menu(pWin->win_x,pWin->win_y,
;								pWin->win_width,
;								pWin->win_height,
;								((PMENU)pWin->hMenu)->pCaption,
;								15,3);
;
;				k_mem_deallocate_heap(title);
;
;			}
;			*/
;			break;
	.line	262
	brl	L10006
;
;		default:
	.line	264
L10013:
;			break;
	.line	265
	brl	L10006
;		}
	.line	266
L10005:
	xref	~~~swt
	jsl	~~~swt
	dw	5
	dw	3841
	dw	L10011-1
	dw	3842
	dw	L10012-1
	dw	3844
	dw	L10009-1
	dw	64256
	dw	L10008-1
	dw	65283
	dw	L10007-1
	dw	L10013-1
L10006:
;	}
	.line	267
;
;	return TRUE;
L10004:
	.line	269
	lda	#$1
L30:
	tay
	lda	<L25+2
	sta	<L25+2+4
	lda	<L25+1
	sta	<L25+1+4
	pld
	tsc
	clc
	adc	#L25+4
	tcs
	tya
	rtl
;}
	.line	270
	.endblock	270
L25	equ	44
L26	equ	9
	ends
	efunc
	.endfunc	270,9,44
	.line	270
	data
L24:
	db	$6D,$61,$69,$6E,$4D,$65,$6E,$75,$57,$69,$6E,$64,$6F,$77,$50
	db	$72,$6F,$63,$3A,$3A,$46,$58,$5F,$43,$52,$45,$41,$54,$45,$5F
	db	$57,$49,$4E,$44,$4F,$57,$0D,$0A,$00,$6D,$61,$69,$6E,$4D,$65
	db	$6E,$75,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46
	db	$58,$5F,$52,$45,$44,$52,$41,$57,$5F,$57,$49,$4E,$44,$4F,$57
	db	$0D,$0A,$00,$6D,$61,$69,$6E,$4D,$65,$6E,$75,$57,$69,$6E,$64
	db	$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$4C,$42,$55,$54
	db	$54,$4F,$4E,$5F,$44,$4F,$57,$4E,$3A,$58,$3A,$00,$6D,$61,$69
	db	$6E,$4D,$65,$6E,$75,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63
	db	$3A,$3A,$46,$58,$5F,$4C,$42,$55,$54,$54,$4F,$4E,$5F,$44,$4F
	db	$57,$4E,$3A,$59,$3A,$00,$6D,$61,$69,$6E,$4D,$65,$6E,$75,$57
	db	$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$70,$43,$68,$69
	db	$6C,$64,$48,$69,$74,$4C,$69,$73,$74,$3A,$00,$6D,$61,$69,$6E
	db	$4D,$65,$6E,$75,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A
	db	$3A,$46,$58,$5F,$4D,$4F,$55,$53,$45,$5F,$45,$4E,$54,$45,$52
	db	$0D,$0A,$00,$6D,$61,$69,$6E,$4D,$65,$6E,$75,$57,$69,$6E,$64
	db	$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$4D,$4F,$55,$53
	db	$45,$5F,$45,$58,$49,$54,$0D,$0A,$00
	ends
;
;
;
	.line	272
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxmenumanager.c",96
	xref	~~k_user_CreateWindow
	xref	~~k_user_CreateWindowClass
	xref	~~k_user_getSystemMetric
	xref	~~k_user_getDesktopWindow
	xref	~~k_getWindowFromHandle
	xref	~~k_font_getFontWidth
	xref	~~k_vdraw_ui_menu
	xref	~~k_mem_deallocate_heap
	xref	~~k_mem_allocate_heap
	xref	~~k_heap_integrity_check
	xref	~~k_exec_get_current_process
	xref	~~k_string_copy_string
	xref	~~k_debug_strings
	xref	~~k_debug_integer
	xref	~~k_debug_pointer
	xref	~~k_debug_string
	xref	~~k_nodelist_deallocate_list
	xref	~~memset
	.sym	~~k_menu_FreemMenuResource,~~k_menu_FreemMenuResource,65,2,0
	.sym	~~mainMenuWindowProc,~~mainMenuWindowProc,78,2,0
	.sym	~~k_menu_CreateMenu,~~k_menu_CreateMenu,1098,2,32,30
	.sym	~~k_menu_CreateMenuResource,~~k_menu_CreateMenuResource,1089,2,32
	.sym	~~k_initializeMenuManager,~~k_initializeMenuManager,78,2,0
	.sym	PCOMMANDARGS,0,138,14,32,63
	.sym	COMMANDARGS,0,10,14,64,63
	.sym	PTOKENIZESTATE,0,133,14,32
	.sym	TOKENIZESTATE,0,5,14,16
	.sym	PTOKEN,0,138,14,32,62
	.sym	TOKEN,0,10,14,64,62
	.sym	PTOKENTYPE,0,133,14,32
	.sym	TOKENTYPE,0,5,14,16
	.sym	FXCommandHandler,0,656,14,32
	.sym	PCONSOLECTX,0,138,14,32,61
	.sym	CONSOLECTX,0,10,14,1144,61
	.sym	PSPINNERCTX,0,138,14,32,60
	.sym	SPINNERCTX,0,10,14,48,60
	.sym	PMOUSE_MSG_STATE,0,138,14,32,59
	.sym	MOUSE_MSG_STATE,0,10,14,184,59
	.sym	PFXEVENTPROCESS,0,138,14,32,58
	.sym	FXEVENTPROCESS,0,10,14,64,58
	.sym	FXEventProc,0,641,14,32
	.sym	PMOUSEMSGDATA,0,138,14,32,57
	.sym	MOUSEMSGDATA,0,10,14,64,57
	.sym	MSGIRQ,0,5,14,16
	.sym	MAINLOOPARGS,0,10,14,16,56
	.sym	PEACHCHILD_MSG,0,138,14,32,55
	.sym	EACHCHILD_MSG,0,10,14,64,55
	.sym	~~k_user_CreateWindow,~~k_user_CreateWindow,1098,18,32,30
	.sym	~~k_user_CreateWindowClass,~~k_user_CreateWindowClass,1098,18,32,26
	.sym	~~k_user_getSystemMetric,~~k_user_getSystemMetric,69,18,0
	.sym	~~k_user_getDesktopWindow,~~k_user_getDesktopWindow,1089,18,32
	.sym	~~k_getWindowFromHandle,~~k_getWindowFromHandle,1098,18,32,30
	.sym	~~k_font_getFontWidth,~~k_font_getFontWidth,80,18,0
	.sym	PCUR_PALETTE_MAP,0,138,14,32,54
	.sym	CUR_PALETTE_MAP,0,10,14,400,54
	.sym	~~k_vdraw_ui_menu,~~k_vdraw_ui_menu,1098,18,32,34
	.sym	PCLICKDETECTED,0,138,14,32,53
	.sym	CLICKDETECTED,0,10,14,64,53
	.sym	OBJECTCLICKED,0,641,14,32
	.sym	~~k_mem_deallocate_heap,~~k_mem_deallocate_heap,65,18,0
	.sym	~~k_mem_allocate_heap,~~k_mem_allocate_heap,1089,18,32
	.sym	~~k_heap_integrity_check,~~k_heap_integrity_check,82,18,0
	.sym	MemoryCallback,0,641,14,32
	.sym	PFXMEMORYMAP,0,138,14,32,52
	.sym	FXMEMORYMAP,0,10,14,2072,52
	.sym	UMM_HEAP_INFO,0,10,14,256,51
	.sym	~~k_exec_get_current_process,~~k_exec_get_current_process,1098,18,32,20
	.sym	~~k_string_copy_string,~~k_string_copy_string,1102,18,32
	.sym	PFXSTRING,0,138,14,32,50
	.sym	FXSTRING,0,10,14,64,50
	.sym	DEVICEDRIVER_COMMAND,0,656,14,32
	.sym	DEVICEDRIVER_UNLOAD,0,654,14,32
	.sym	DEVICEDRIVER_WRITE,0,656,14,32
	.sym	DEVICEDRIVER_READ,0,656,14,32
	.sym	DEVICEDRIVER_LOAD,0,654,14,32
	.sym	PFX_BLOCK_DEVICE_DRIVER,0,138,14,32,49
	.sym	FX_BLOCK_DEVICE_DRIVER,0,10,14,1448,49
	.sym	PFX_DEVICE_DRIVER,0,138,14,32,48
	.sym	FX_DEVICE_DRIVER,0,10,14,1416,48
	.sym	~~k_debug_strings,~~k_debug_strings,65,18,0
	.sym	~~k_debug_integer,~~k_debug_integer,65,18,0
	.sym	~~k_debug_pointer,~~k_debug_pointer,65,18,0
	.sym	~~k_debug_string,~~k_debug_string,65,18,0
	.sym	PDEBUGBYTEBITS,0,138,14,32,47
	.sym	DEBUGBYTEBITS,0,10,14,8,47
	.sym	PFXENVIRONMENT,0,138,14,32,46
	.sym	FXENVIRONMENT,0,10,14,96,46
	.sym	PFXZERPOPAGE,0,138,14,32,45
	.sym	FXZERPOPAGE,0,10,14,448,45
	.sym	KERNELTRAPCALL,0,641,14,32
	.sym	FOREACHNODEUNTIL,0,654,14,32
	.sym	FOREACHNODE,0,641,14,32
	.sym	~~k_nodelist_deallocate_list,~~k_nodelist_deallocate_list,65,18,0
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
	.sym	~~memset,~~memset,1089,18,32
	.sym	Boolean_T,0,5,14,16
	.sym	ldiv_t,0,10,14,64,2
	.sym	div_t,0,10,14,32,1
	.sym	wctype_t,0,16,14,16
	.sym	wint_t,0,16,14,16
	.sym	wchar_t,0,14,14,8
	.sym	ptrdiff_t,0,7,14,32
	.sym	size_t,0,16,14,16
	end

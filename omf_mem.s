;:ts=8
R0	equ	1
R1	equ	5
R2	equ	9
R3	equ	13
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\OMF_Dc_Memory.c",0
;/************************************************************************/
;/*                                                                      */
;/*  Dc_Memory.c : Module pour la bibliothèque de gestion mémoire.       */
;/*                                                                      */
;/************************************************************************/
;/*  Auteur : Olivier ZARDINI  *  Brutal Deluxe Software  *  Avril 2013  */
;/************************************************************************/
;
;#include <stdlib.h>
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\OMF_Dc_Memory.c",9
;
;#include "fxtypes.h"
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\OMF_Dc_Memory.c",11
;#include "fxmemorymanager.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxmemorymanager.h",0
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos.h",0
	.file	"G:\devtools\WDCTools\wdc\Tools\include\stdlib.h",0
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
	.stag	_click_detected,64,51
	.member	window,0,138,8,32,30
	.member	handler,32,641,8,32
	.eos
	.stag	_current_palette_map,400,52
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
	.stag	_childMessage_t,64,53
	.member	msgType,0,16,8,16
	.member	msgData,16,129,8,32
	.member	dataSize,48,16,8,16
	.eos
	.line	362
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxeventmanager.h",9
	.stag	_fx_main_loopvars,16,54
	.member	dummy,0,5,8,16
	.eos
	.stag	_fxMouseMessageData,64,55
	.member	button1,0,14,8,8
	.member	button2,8,14,8,8
	.member	button3,16,14,8,8
	.member	button4,24,14,8,8
	.member	x,32,16,8,16
	.member	y,48,16,8,16
	.eos
	.stag	_fx_eventProcess,64,56
	.member	process,0,138,8,32,20
	.member	eventProc,32,641,8,32
	.eos
	.stag	_mouse_msg_state,184,57
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
	.stag	_fx_spinner_ctx,48,58
	.member	index,0,5,8,16
	.member	spinner,16,142,8,32
	.eos
	.stag	_fx_console_ctx,1144,59
	.member	lineBufferIndex,0,5,8,16
	.member	lineBuffer,16,110,8,0,128
	.member	isShifted,1040,14,8,8
	.member	userData,1048,129,8,32
	.member	screenBuffer,1080,129,8,32
	.member	Reserved1,1112,129,8,32
	.eos
	.stag	_token,64,60
	.member	type,0,5,8,16
	.member	depth,16,16,8,16
	.member	text,32,142,8,32
	.eos
	.stag	_command_args,64,61
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxmemorymanager.h",5
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\umm_malloc_cfg.h",0
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos_build_parameters.h",0
	.line	32
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\umm_malloc_cfg.h",8
	.stag	UMM_HEAP_INFO_t,256,62
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
	.stag	_fx_memory_map,2072,63
	.member	availableMemory,0,18,8,32
	.member	valid_segments,32,110,8,0,255
	.eos
	.line	39
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\OMF_Dc_Memory.c",12
;#include "OMF_Dc_Shared.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\OMF_Dc_Shared.h",0
	.line	18
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\OMF_Dc_Memory.c",13
;#include "OMF_Record.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\OMF_Record.h",0
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxtypes.h",0
	.line	708
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\OMF_Record.h",8
	.stag	omf_body_record,168,64
	.member	FileOffset,0,18,8,32
	.member	SegmentOffset,32,18,8,32
	.member	operation_code,64,14,8,8
	.member	length,72,5,8,16
	.member	record_data,88,129,8,32
	.member	processed,120,5,8,16
	.member	next,136,138,8,32,64
	.eos
	.stag	subrecord_SuperReloc2,16520,65
	.member	FileOffset,0,18,8,32
	.member	SegmentOffset,32,18,8,32
	.member	Count,64,14,8,8
	.member	ByteCnt,72,14,8,8
	.member	BitShiftCnt,80,14,8,8
	.member	nb_address,88,5,8,16
	.member	OffsetPatch,104,114,8,0,256
	.member	OffsetReference,8296,114,8,0,256
	.member	next,16488,138,8,32,65
	.eos
	.stag	subrecord_SuperReloc3,16520,66
	.member	FileOffset,0,18,8,32
	.member	SegmentOffset,32,18,8,32
	.member	Count,64,14,8,8
	.member	ByteCnt,72,14,8,8
	.member	BitShiftCnt,80,14,8,8
	.member	nb_address,88,5,8,16
	.member	OffsetPatch,104,114,8,0,256
	.member	OffsetReference,8296,114,8,0,256
	.member	next,16488,138,8,32,66
	.eos
	.stag	subrecord_SuperInterseg1,20632,67
	.member	FileOffset,0,18,8,32
	.member	SegmentOffset,32,18,8,32
	.member	Count,64,14,8,8
	.member	ByteCnt,72,14,8,8
	.member	BitShiftCnt,80,14,8,8
	.member	FileNum,88,5,8,16
	.member	nb_address,104,5,8,16
	.member	OffsetPatch,120,114,8,0,256
	.member	OffsetReference,8312,114,8,0,256
	.member	SegNum,16504,101,8,0,256
	.member	next,20600,138,8,32,67
	.eos
	.stag	subrecord_SuperInterseg212,20632,68
	.member	FileOffset,0,18,8,32
	.member	SegmentOffset,32,18,8,32
	.member	Count,64,14,8,8
	.member	ByteCnt,72,14,8,8
	.member	BitShiftCnt,80,14,8,8
	.member	FileNum,88,5,8,16
	.member	nb_address,104,5,8,16
	.member	OffsetPatch,120,114,8,0,256
	.member	OffsetReference,8312,114,8,0,256
	.member	SegNum,16504,101,8,0,256
	.member	next,20600,138,8,32,68
	.eos
	.stag	subrecord_SuperInterseg1324,16544,69
	.member	FileOffset,0,18,8,32
	.member	SegmentOffset,32,18,8,32
	.member	Count,64,14,8,8
	.member	ByteCnt,72,14,8,8
	.member	BitShiftCnt,80,14,8,8
	.member	SegNum,88,14,8,8
	.member	FileNum,96,5,8,16
	.member	nb_address,112,5,8,16
	.member	OffsetPatch,128,114,8,0,256
	.member	OffsetReference,8320,114,8,0,256
	.member	next,16512,138,8,32,69
	.eos
	.stag	subrecord_SuperInterseg2536,16544,70
	.member	FileOffset,0,18,8,32
	.member	SegmentOffset,32,18,8,32
	.member	Count,64,14,8,8
	.member	ByteCnt,72,14,8,8
	.member	BitShiftCnt,80,14,8,8
	.member	SegNum,88,14,8,8
	.member	FileNum,96,5,8,16
	.member	nb_address,112,5,8,16
	.member	OffsetPatch,128,114,8,0,256
	.member	OffsetReference,8320,114,8,0,256
	.member	next,16512,138,8,32,70
	.eos
	.stag	record_END,72,71
	.member	FileOffset,0,18,8,32
	.member	SegmentOffset,32,18,8,32
	.member	operation_code,64,14,8,8
	.eos
	.stag	record_CONST,112,72
	.member	FileOffset,0,18,8,32
	.member	SegmentOffset,32,18,8,32
	.member	operation_code,64,14,8,8
	.member	ByteCnt,72,14,8,8
	.member	data,80,142,8,32
	.eos
	.stag	record_ALIGN,72,73
	.member	FileOffset,0,18,8,32
	.member	SegmentOffset,32,18,8,32
	.member	operation_code,64,14,8,8
	.eos
	.stag	record_ORG,72,74
	.member	FileOffset,0,18,8,32
	.member	SegmentOffset,32,18,8,32
	.member	operation_code,64,14,8,8
	.eos
	.stag	record_RELOC,152,75
	.member	FileOffset,0,18,8,32
	.member	SegmentOffset,32,18,8,32
	.member	operation_code,64,14,8,8
	.member	ByteCnt,72,14,8,8
	.member	BitShiftCnt,80,14,8,8
	.member	OffsetPatch,88,18,8,32
	.member	OffsetReference,120,18,8,32
	.eos
	.stag	record_INTERSEG,184,76
	.member	FileOffset,0,18,8,32
	.member	SegmentOffset,32,18,8,32
	.member	operation_code,64,14,8,8
	.member	ByteCnt,72,14,8,8
	.member	BitShiftCnt,80,14,8,8
	.member	OffsetPatch,88,18,8,32
	.member	FileNum,120,5,8,16
	.member	SegNum,136,5,8,16
	.member	OffsetReference,152,18,8,32
	.eos
	.stag	record_USING,72,77
	.member	FileOffset,0,18,8,32
	.member	SegmentOffset,32,18,8,32
	.member	operation_code,64,14,8,8
	.eos
	.stag	record_STRONG,72,78
	.member	FileOffset,0,18,8,32
	.member	SegmentOffset,32,18,8,32
	.member	operation_code,64,14,8,8
	.eos
	.stag	record_GLOBAL,72,79
	.member	FileOffset,0,18,8,32
	.member	SegmentOffset,32,18,8,32
	.member	operation_code,64,14,8,8
	.eos
	.stag	record_GEQU,72,80
	.member	FileOffset,0,18,8,32
	.member	SegmentOffset,32,18,8,32
	.member	operation_code,64,14,8,8
	.eos
	.stag	record_MEM,72,81
	.member	FileOffset,0,18,8,32
	.member	SegmentOffset,32,18,8,32
	.member	operation_code,64,14,8,8
	.eos
	.stag	record_EXPR,72,82
	.member	FileOffset,0,18,8,32
	.member	SegmentOffset,32,18,8,32
	.member	operation_code,64,14,8,8
	.eos
	.stag	record_ZEXPR,72,83
	.member	FileOffset,0,18,8,32
	.member	SegmentOffset,32,18,8,32
	.member	operation_code,64,14,8,8
	.eos
	.stag	record_BEXPR,72,84
	.member	FileOffset,0,18,8,32
	.member	SegmentOffset,32,18,8,32
	.member	operation_code,64,14,8,8
	.eos
	.stag	record_RELEXPR,72,85
	.member	FileOffset,0,18,8,32
	.member	SegmentOffset,32,18,8,32
	.member	operation_code,64,14,8,8
	.eos
	.stag	record_LOCAL,72,86
	.member	FileOffset,0,18,8,32
	.member	SegmentOffset,32,18,8,32
	.member	operation_code,64,14,8,8
	.eos
	.stag	record_EQU,72,87
	.member	FileOffset,0,18,8,32
	.member	SegmentOffset,32,18,8,32
	.member	operation_code,64,14,8,8
	.eos
	.stag	record_DS,104,88
	.member	FileOffset,0,18,8,32
	.member	SegmentOffset,32,18,8,32
	.member	operation_code,64,14,8,8
	.member	nb_zero_byte,72,18,8,32
	.eos
	.stag	record_LCONST,136,89
	.member	FileOffset,0,18,8,32
	.member	SegmentOffset,32,18,8,32
	.member	operation_code,64,14,8,8
	.member	ByteCnt,72,18,8,32
	.member	data,104,142,8,32
	.eos
	.stag	record_LEXPR,72,90
	.member	FileOffset,0,18,8,32
	.member	SegmentOffset,32,18,8,32
	.member	operation_code,64,14,8,8
	.eos
	.stag	record_ENTRY,72,91
	.member	FileOffset,0,18,8,32
	.member	SegmentOffset,32,18,8,32
	.member	operation_code,64,14,8,8
	.eos
	.stag	record_cRELOC,152,92
	.member	FileOffset,0,18,8,32
	.member	SegmentOffset,32,18,8,32
	.member	operation_code,64,14,8,8
	.member	ByteCnt,72,14,8,8
	.member	BitShiftCnt,80,14,8,8
	.member	OffsetPatch,88,18,8,32
	.member	OffsetReference,120,18,8,32
	.eos
	.stag	record_cINTERSEG,176,93
	.member	FileOffset,0,18,8,32
	.member	SegmentOffset,32,18,8,32
	.member	operation_code,64,14,8,8
	.member	ByteCnt,72,14,8,8
	.member	BitShiftCnt,80,14,8,8
	.member	OffsetPatch,88,18,8,32
	.member	FileNum,120,5,8,16
	.member	SegNum,136,14,8,8
	.member	OffsetReference,144,18,8,32
	.eos
	.stag	record_SUPER,592,94
	.member	FileOffset,0,18,8,32
	.member	SegmentOffset,32,18,8,32
	.member	operation_code,64,14,8,8
	.member	ByteCnt,72,18,8,32
	.member	RecordType,104,14,8,8
	.member	nb_SuperReloc2,112,5,8,16
	.member	first_SuperReloc2,128,138,8,32,65
	.member	last_SuperReloc2,160,138,8,32,65
	.member	nb_SuperReloc3,192,5,8,16
	.member	first_SuperReloc3,208,138,8,32,66
	.member	last_SuperReloc3,240,138,8,32,66
	.member	nb_SuperInterseg1,272,5,8,16
	.member	first_SuperInterseg1,288,138,8,32,67
	.member	last_SuperInterseg1,320,138,8,32,67
	.member	nb_SuperInterseg212,352,5,8,16
	.member	first_SuperInterseg212,368,138,8,32,68
	.member	last_SuperInterseg212,400,138,8,32,68
	.member	nb_SuperInterseg1324,432,5,8,16
	.member	first_SuperInterseg1324,448,138,8,32,69
	.member	last_SuperInterseg1324,480,138,8,32,69
	.member	nb_SuperInterseg2536,512,5,8,16
	.member	first_SuperInterseg2536,528,138,8,32,70
	.member	last_SuperInterseg2536,560,138,8,32,70
	.eos
	.stag	record_General,72,95
	.member	FileOffset,0,18,8,32
	.member	SegmentOffset,32,18,8,32
	.member	operation_code,64,14,8,8
	.eos
	.stag	record_Experimental,72,96
	.member	FileOffset,0,18,8,32
	.member	SegmentOffset,32,18,8,32
	.member	operation_code,64,14,8,8
	.eos
	.stag	omf_reloc,128,97
	.member	ByteCnt,0,14,8,8
	.member	BitShiftCnt,8,14,8,8
	.member	OffsetPatch,16,18,8,32
	.member	OffsetReference,48,18,8,32
	.member	origin,80,5,8,16
	.member	next,96,138,8,32,97
	.eos
	.stag	omf_interseg,160,98
	.member	ByteCnt,0,14,8,8
	.member	BitShiftCnt,8,14,8,8
	.member	OffsetPatch,16,18,8,32
	.member	OffsetReference,48,18,8,32
	.member	FileNum,80,5,8,16
	.member	SegNum,96,5,8,16
	.member	origin,112,5,8,16
	.member	next,128,138,8,32,98
	.eos
	.line	458
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\OMF_Dc_Memory.c",14
;#include "OMF_Dc_Memory.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\OMF_Dc_Memory.h",0
	.line	24
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\OMF_Dc_Memory.c",15
;
;int compare_reloc(const void *,const void *);
;int compare_interseg(const void *,const void *);
;
;#pragma section CODE=LOADER,offset $9:0000
LOADER	section	offset $9:0000
	ends
;
;/********************************************************************/
;/*  my_Memory() :  Bibliothèque de gestion des ressources mémoires. */
;/********************************************************************/
;void my_Memory(int code, void *data, void *value)
;{
	.line	25
	.line	26
	LOADER
	xdef	~~my_Memory
	func
	.function	26
~~my_Memory:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L2
	tcs
	phd
	tcd
code_0	set	4
data_0	set	6
value_0	set	10
	.block	26
;  int i;
;  static int nb_reloc;
	udata
L10001:
	ds	2
	ends
;  static struct omf_reloc *first_reloc;
	udata
L10002:
	ds	4
	ends
;  static struct omf_reloc *last_reloc;
	udata
L10003:
	ds	4
	ends
;  struct omf_reloc *current_reloc;
;  struct omf_reloc *next_reloc;
;  struct omf_reloc **tab_reloc;
;  static int nb_interseg;
	udata
L10004:
	ds	2
	ends
;  static struct omf_interseg *first_interseg;
	udata
L10005:
	ds	4
	ends
;  static struct omf_interseg *last_interseg;
	udata
L10006:
	ds	4
	ends
;  struct omf_interseg *current_interseg;
;  struct omf_interseg *next_interseg;
;  struct omf_interseg **tab_interseg;
;
;  switch(code)
i_1	set	0
current_reloc_1	set	2
next_reloc_1	set	6
tab_reloc_1	set	10
current_interseg_1	set	14
next_interseg_1	set	18
tab_interseg_1	set	22
	.sym	i,0,5,1,16
	.sym	nb_reloc,10001,5,19,16
	.sym	first_reloc,10002,138,19,32,97
	.sym	last_reloc,10003,138,19,32,97
	.sym	current_reloc,2,138,1,32,97
	.sym	next_reloc,6,138,1,32,97
	.sym	tab_reloc,10,1162,1,32,97
	.sym	nb_interseg,10004,5,19,16
	.sym	first_interseg,10005,138,19,32,98
	.sym	last_interseg,10006,138,19,32,98
	.sym	current_interseg,14,138,1,32,98
	.sym	next_interseg,18,138,1,32,98
	.sym	tab_interseg,22,1162,1,32,98
	.sym	code,4,5,6,16
	.sym	data,6,129,6,32
	.sym	value,10,129,6,32
	.line	41
	lda	<L2+code_0
	brl	L10007
;    {
	.line	42
;      /********************/
;      /*  Initialisation  */
;      /********************/
;      case MEMORY_INIT :
	.line	46
L10009:
;
;    	k_debug_string("my_Memory::MEMORY_INIT...\r\n");
	.line	48
	pea	#^L1
	pea	#<L1
	jsl	~~k_debug_string
;        nb_reloc = 0;
	.line	49
	stz	|L10001
;        first_reloc = NULL;
	.line	50
	stz	|L10002
	stz	|L10002+2
;        last_reloc = NULL;
	.line	51
	stz	|L10003
	stz	|L10003+2
;        nb_interseg = 0;
	.line	52
	stz	|L10004
;        first_interseg = NULL;
	.line	53
	stz	|L10005
	stz	|L10005+2
;        last_interseg = NULL;
	.line	54
	stz	|L10006
	stz	|L10006+2
;        break;
	.line	55
	brl	L10008
;
;      case MEMORY_FREE :
	.line	57
L10010:
;    	k_debug_string("my_Memory::MEMORY_FREE...\r\n");
	.line	58
	pea	#^L1+28
	pea	#<L1+28
	jsl	~~k_debug_string
;        my_Memory(MEMORY_FREE_RELOC,NULL,NULL);
	.line	59
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$d
	jsl	~~my_Memory
;        my_Memory(MEMORY_FREE_INTERSEG,NULL,NULL);
	.line	60
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$17
	jsl	~~my_Memory
;        break;
	.line	61
	brl	L10008
;
;      /***************************/
;      /*  Liste chaine de RELOC  */
;      /***************************/
;      case MEMORY_ADD_RELOC :
	.line	66
L10011:
;    	  k_debug_string("my_Memory::MEMORY_ADD_RELOC...\r\n");
	.line	67
	pea	#^L1+56
	pea	#<L1+56
	jsl	~~k_debug_string
;        current_reloc = (struct omf_reloc *) data;
	.line	68
	lda	<L2+data_0
	sta	<L3+current_reloc_1
	lda	<L2+data_0+2
	sta	<L3+current_reloc_1+2
;        if(current_reloc == NULL)
	.line	69
;          return;
	lda	<L3+current_reloc_1
	ora	<L3+current_reloc_1+2
	beq	L5
	brl	L10012
L5:
	.line	70
L6:
	lda	<L2+2
	sta	<L2+2+10
	lda	<L2+1
	sta	<L2+1+10
	pld
	tsc
	clc
	adc	#L2+10
	tcs
	rtl
;
;        /* Ajoute la structure */
;        if(first_reloc == NULL)
L10012:
	.line	73
;          first_reloc = current_reloc;
	lda	|L10002
	ora	|L10002+2
	beq	L7
	brl	L10013
L7:
	.line	74
	lda	<L3+current_reloc_1
	sta	|L10002
	lda	<L3+current_reloc_1+2
	sta	|L10002+2
;        else
	brl	L10014
L10013:
;          last_reloc->next = current_reloc;
	.line	76
	lda	|L10003
	sta	<R0
	lda	|L10003+2
	sta	<R0+2
	lda	<L3+current_reloc_1
	ldy	#$c
	sta	[<R0],Y
	lda	<L3+current_reloc_1+2
	ldy	#$e
	sta	[<R0],Y
L10014:
;        last_reloc = current_reloc;
	.line	77
	lda	<L3+current_reloc_1
	sta	|L10003
	lda	<L3+current_reloc_1+2
	sta	|L10003+2
;        nb_reloc++;
	.line	78
	inc	|L10001
;        break;
	.line	79
	brl	L10008
;
;      case MEMORY_GET_RELOC_NB :
	.line	81
L10015:
;    	  k_debug_string("my_Memory::MEMORY_GET_RELOC_NB...\r\n");
	.line	82
	pea	#^L1+89
	pea	#<L1+89
	jsl	~~k_debug_string
;        *((int *) data) = nb_reloc;
	.line	83
	lda	|L10001
	sta	[<L2+data_0]
;        break;
	.line	84
	brl	L10008
;
;      case MEMORY_SORT_RELOC :
	.line	86
L10016:
;    	  k_debug_string("my_Memory::MEMORY_SORT_RELOC...\r\n");
	.line	87
	pea	#^L1+125
	pea	#<L1+125
	jsl	~~k_debug_string
;        /* Allocatioon d'un Tableau trié */
;        if(nb_reloc == 0)
	.line	89
;          {
	lda	|L10001
	beq	L8
	brl	L10017
L8:
	.line	90
;            *((int *) data) = 0;
	.line	91
	lda	#$0
	sta	[<L2+data_0]
;            *((struct omf_reloc ***) value) = NULL;
	.line	92
	lda	#$0
	sta	[<L2+value_0]
	lda	#$0
	ldy	#$2
	sta	[<L2+value_0],Y
;            return;
	.line	93
	brl	L6
;          }
	.line	94
;
;        /* Allocation */
;        tab_reloc = (struct omf_reloc **) k_calloc(nb_reloc,sizeof(LPVOID));
L10017:
	.line	97
	pea	#<$4
	lda	|L10001
	pha
	jsl	~~k_calloc
	sta	<L3+tab_reloc_1
	stx	<L3+tab_reloc_1+2
;        if(tab_reloc == NULL)
	.line	98
;          ;
	lda	<L3+tab_reloc_1
	ora	<L3+tab_reloc_1+2
	beq	L9
	brl	L10018
L9:
	.line	99
;
;        /* Remplissage */
;        for(current_reloc=first_reloc, i=0; current_reloc; current_reloc=current_reloc->next, i++)
L10018:
	.line	102
	lda	|L10002
	sta	<L3+current_reloc_1
	lda	|L10002+2
	sta	<L3+current_reloc_1+2
	stz	<L3+i_1
	brl	L10022
L10021:
;          tab_reloc[i] = current_reloc;
	.line	103
	ldy	#$0
	lda	<L3+i_1
	bpl	L10
	dey
L10:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	lda	#$2
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R0
	stx	<R0+2
	clc
	lda	<L3+tab_reloc_1
	adc	<R0
	sta	<R2
	lda	<L3+tab_reloc_1+2
	adc	<R0+2
	sta	<R2+2
	lda	<L3+current_reloc_1
	sta	[<R2]
	lda	<L3+current_reloc_1+2
	ldy	#$2
	sta	[<R2],Y
L10019:
	ldy	#$c
	lda	[<L3+current_reloc_1],Y
	sta	<R0
	ldy	#$e
	lda	[<L3+current_reloc_1],Y
	sta	<R0+2
	lda	<R0
	sta	<L3+current_reloc_1
	lda	<R0+2
	sta	<L3+current_reloc_1+2
	inc	<L3+i_1
L10022:
	lda	<L3+current_reloc_1
	ora	<L3+current_reloc_1+2
	beq	L11
	brl	L10021
L11:
L10020:
;
;        /* Tri */
;        qsort(tab_reloc,nb_reloc,sizeof(LPVOID),compare_reloc);
	.line	106
	pea	#^~~compare_reloc
	pea	#<~~compare_reloc
	pea	#<$4
	lda	|L10001
	pha
	pei	<L3+tab_reloc_1+2
	pei	<L3+tab_reloc_1
	jsl	~~qsort
;
;        /* Renvoi les éléments */
;        *((int *) data) = nb_reloc;
	.line	109
	lda	|L10001
	sta	[<L2+data_0]
;        *((struct omf_reloc ***) value) = tab_reloc;
	.line	110
	lda	<L3+tab_reloc_1
	sta	[<L2+value_0]
	lda	<L3+tab_reloc_1+2
	ldy	#$2
	sta	[<L2+value_0],Y
;
;        /* Nettoyage */
;        nb_reloc = 0;
	.line	113
	stz	|L10001
;        first_reloc = NULL;
	.line	114
	stz	|L10002
	stz	|L10002+2
;        last_reloc = NULL;
	.line	115
	stz	|L10003
	stz	|L10003+2
;        break;
	.line	116
	brl	L10008
;
;      case MEMORY_FREE_RELOC :
	.line	118
L10023:
;    	  k_debug_string("my_Memory::MEMORY_FREE_RELOC...\r\n");
	.line	119
	pea	#^L1+159
	pea	#<L1+159
	jsl	~~k_debug_string
;        for(current_reloc = first_reloc; current_reloc; )
	.line	120
	lda	|L10002
	sta	<L3+current_reloc_1
	lda	|L10002+2
	sta	<L3+current_reloc_1+2
	brl	L10027
L10026:
;          {
	.line	121
;        	if(current_reloc)
	.line	122
;        	{
	lda	<L3+current_reloc_1
	ora	<L3+current_reloc_1+2
	bne	L12
	brl	L10028
L12:
	.line	123
;        		next_reloc = current_reloc->next;
	.line	124
	ldy	#$c
	lda	[<L3+current_reloc_1],Y
	sta	<L3+next_reloc_1
	ldy	#$e
	lda	[<L3+current_reloc_1],Y
	sta	<L3+next_reloc_1+2
;        		k_free(current_reloc);
	.line	125
	pei	<L3+current_reloc_1+2
	pei	<L3+current_reloc_1
	jsl	~~k_free
;        		current_reloc = next_reloc;
	.line	126
	lda	<L3+next_reloc_1
	sta	<L3+current_reloc_1
	lda	<L3+next_reloc_1+2
	sta	<L3+current_reloc_1+2
;        	}
	.line	127
;          }
L10028:
	.line	128
L10024:
L10027:
	lda	<L3+current_reloc_1
	ora	<L3+current_reloc_1+2
	beq	L13
	brl	L10026
L13:
L10025:
;        nb_reloc = 0;
	.line	129
	stz	|L10001
;        first_reloc = NULL;
	.line	130
	stz	|L10002
	stz	|L10002+2
;        last_reloc = NULL;
	.line	131
	stz	|L10003
	stz	|L10003+2
;        k_debug_string("my_Memory::MEMORY_FREE_RELOC DONE...\r\n");
	.line	132
	pea	#^L1+193
	pea	#<L1+193
	jsl	~~k_debug_string
;        break;
	.line	133
	brl	L10008
;
;      /******************************/
;      /*  Liste chaine de INTERSEG  */
;      /******************************/
;      case MEMORY_ADD_INTERSEG :
	.line	138
L10029:
;        current_interseg = (struct omf_interseg *) data;
	.line	139
	lda	<L2+data_0
	sta	<L3+current_interseg_1
	lda	<L2+data_0+2
	sta	<L3+current_interseg_1+2
;        if(current_interseg == NULL)
	.line	140
;          return;
	lda	<L3+current_interseg_1
	ora	<L3+current_interseg_1+2
	beq	L14
	brl	L10030
L14:
	.line	141
	brl	L6
;
;        /* Ajoute la structure */
;        if(first_interseg == NULL)
L10030:
	.line	144
;          first_interseg = current_interseg;
	lda	|L10005
	ora	|L10005+2
	beq	L15
	brl	L10031
L15:
	.line	145
	lda	<L3+current_interseg_1
	sta	|L10005
	lda	<L3+current_interseg_1+2
	sta	|L10005+2
;        else
	brl	L10032
L10031:
;          last_interseg->next = current_interseg;
	.line	147
	lda	|L10006
	sta	<R0
	lda	|L10006+2
	sta	<R0+2
	lda	<L3+current_interseg_1
	ldy	#$10
	sta	[<R0],Y
	lda	<L3+current_interseg_1+2
	ldy	#$12
	sta	[<R0],Y
L10032:
;        last_interseg = current_interseg;
	.line	148
	lda	<L3+current_interseg_1
	sta	|L10006
	lda	<L3+current_interseg_1+2
	sta	|L10006+2
;        nb_interseg++;
	.line	149
	inc	|L10004
;        break;
	.line	150
	brl	L10008
;
;      case MEMORY_GET_INTERSEG_NB :
	.line	152
L10033:
;        *((int *) data) = nb_interseg;
	.line	153
	lda	|L10004
	sta	[<L2+data_0]
;        break;
	.line	154
	brl	L10008
;
;      case MEMORY_SORT_INTERSEG :
	.line	156
L10034:
;        /* Allocatioon d'un Tableau trié */
;        if(nb_interseg == 0)
	.line	158
;          {
	lda	|L10004
	beq	L16
	brl	L10035
L16:
	.line	159
;            *((int *) data) = 0;
	.line	160
	lda	#$0
	sta	[<L2+data_0]
;            *((struct omf_interseg ***) value) = NULL;
	.line	161
	lda	#$0
	sta	[<L2+value_0]
	lda	#$0
	ldy	#$2
	sta	[<L2+value_0],Y
;            return;
	.line	162
	brl	L6
;          }
	.line	163
;
;        /* Allocation */
;        tab_interseg = (struct omf_interseg **) k_calloc(nb_interseg,sizeof(LPVOID));
L10035:
	.line	166
	pea	#<$4
	lda	|L10004
	pha
	jsl	~~k_calloc
	sta	<L3+tab_interseg_1
	stx	<L3+tab_interseg_1+2
;        if(tab_interseg == NULL)
	.line	167
;          ;
	lda	<L3+tab_interseg_1
	ora	<L3+tab_interseg_1+2
	beq	L17
	brl	L10036
L17:
	.line	168
;
;        /* Remplissage */
;        for(current_interseg=first_interseg, i=0; current_interseg; current_interseg=current_interseg->next, i++)
L10036:
	.line	171
	lda	|L10005
	sta	<L3+current_interseg_1
	lda	|L10005+2
	sta	<L3+current_interseg_1+2
	stz	<L3+i_1
	brl	L10040
L10039:
;          tab_interseg[i] = current_interseg;
	.line	172
	ldy	#$0
	lda	<L3+i_1
	bpl	L18
	dey
L18:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	lda	#$2
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R0
	stx	<R0+2
	clc
	lda	<L3+tab_interseg_1
	adc	<R0
	sta	<R2
	lda	<L3+tab_interseg_1+2
	adc	<R0+2
	sta	<R2+2
	lda	<L3+current_interseg_1
	sta	[<R2]
	lda	<L3+current_interseg_1+2
	ldy	#$2
	sta	[<R2],Y
L10037:
	ldy	#$10
	lda	[<L3+current_interseg_1],Y
	sta	<R0
	ldy	#$12
	lda	[<L3+current_interseg_1],Y
	sta	<R0+2
	lda	<R0
	sta	<L3+current_interseg_1
	lda	<R0+2
	sta	<L3+current_interseg_1+2
	inc	<L3+i_1
L10040:
	lda	<L3+current_interseg_1
	ora	<L3+current_interseg_1+2
	beq	L19
	brl	L10039
L19:
L10038:
;
;        /* Tri */
;        qsort(tab_interseg,nb_interseg,sizeof(LPVOID),compare_interseg);
	.line	175
	pea	#^~~compare_interseg
	pea	#<~~compare_interseg
	pea	#<$4
	lda	|L10004
	pha
	pei	<L3+tab_interseg_1+2
	pei	<L3+tab_interseg_1
	jsl	~~qsort
;
;        /* Renvoi les éléments */
;        *((int *) data) = nb_interseg;
	.line	178
	lda	|L10004
	sta	[<L2+data_0]
;        *((struct omf_interseg ***) value) = tab_interseg;
	.line	179
	lda	<L3+tab_interseg_1
	sta	[<L2+value_0]
	lda	<L3+tab_interseg_1+2
	ldy	#$2
	sta	[<L2+value_0],Y
;
;        /* Nettoyage */
;        nb_interseg = 0;
	.line	182
	stz	|L10004
;        first_interseg = NULL;
	.line	183
	stz	|L10005
	stz	|L10005+2
;        last_interseg = NULL;
	.line	184
	stz	|L10006
	stz	|L10006+2
;        break;
	.line	185
	brl	L10008
;
;      case MEMORY_FREE_INTERSEG :
	.line	187
L10041:
;        for(current_interseg = first_interseg; current_interseg; )
	.line	188
	lda	|L10005
	sta	<L3+current_interseg_1
	lda	|L10005+2
	sta	<L3+current_interseg_1+2
	brl	L10045
L10044:
;          {
	.line	189
;            next_interseg = current_interseg->next;
	.line	190
	ldy	#$10
	lda	[<L3+current_interseg_1],Y
	sta	<L3+next_interseg_1
	ldy	#$12
	lda	[<L3+current_interseg_1],Y
	sta	<L3+next_interseg_1+2
;            k_free(current_interseg);
	.line	191
	pei	<L3+current_interseg_1+2
	pei	<L3+current_interseg_1
	jsl	~~k_free
;            current_interseg = next_interseg;
	.line	192
	lda	<L3+next_interseg_1
	sta	<L3+current_interseg_1
	lda	<L3+next_interseg_1+2
	sta	<L3+current_interseg_1+2
;          }
	.line	193
L10042:
L10045:
	lda	<L3+current_interseg_1
	ora	<L3+current_interseg_1+2
	beq	L20
	brl	L10044
L20:
L10043:
;        nb_interseg = 0;
	.line	194
	stz	|L10004
;        first_interseg = NULL;
	.line	195
	stz	|L10005
	stz	|L10005+2
;        last_interseg = NULL;
	.line	196
	stz	|L10006
	stz	|L10006+2
;        break;
	.line	197
	brl	L10008
;
;      default :
	.line	199
L10046:
;        break;
	.line	200
	brl	L10008
;    }
	.line	201
L10007:
	xref	~~~fsw
	jsl	~~~fsw
	dw	1
	dw	23
	dw	L10046-1
	dw	L10009-1
	dw	L10010-1
	dw	L10046-1
	dw	L10046-1
	dw	L10046-1
	dw	L10046-1
	dw	L10046-1
	dw	L10046-1
	dw	L10046-1
	dw	L10011-1
	dw	L10015-1
	dw	L10016-1
	dw	L10023-1
	dw	L10046-1
	dw	L10046-1
	dw	L10046-1
	dw	L10046-1
	dw	L10046-1
	dw	L10046-1
	dw	L10029-1
	dw	L10033-1
	dw	L10034-1
	dw	L10041-1
L10008:
;}
	.line	202
	brl	L6
	.endblock	202
L2	equ	38
L3	equ	13
	ends
	efunc
	.endfunc	202,13,38
	.line	202
	data
L1:
	db	$6D,$79,$5F,$4D,$65,$6D,$6F,$72,$79,$3A,$3A,$4D,$45,$4D,$4F
	db	$52,$59,$5F,$49,$4E,$49,$54,$2E,$2E,$2E,$0D,$0A,$00,$6D,$79
	db	$5F,$4D,$65,$6D,$6F,$72,$79,$3A,$3A,$4D,$45,$4D,$4F,$52,$59
	db	$5F,$46,$52,$45,$45,$2E,$2E,$2E,$0D,$0A,$00,$6D,$79,$5F,$4D
	db	$65,$6D,$6F,$72,$79,$3A,$3A,$4D,$45,$4D,$4F,$52,$59,$5F,$41
	db	$44,$44,$5F,$52,$45,$4C,$4F,$43,$2E,$2E,$2E,$0D,$0A,$00,$6D
	db	$79,$5F,$4D,$65,$6D,$6F,$72,$79,$3A,$3A,$4D,$45,$4D,$4F,$52
	db	$59,$5F,$47,$45,$54,$5F,$52,$45,$4C,$4F,$43,$5F,$4E,$42,$2E
	db	$2E,$2E,$0D,$0A,$00,$6D,$79,$5F,$4D,$65,$6D,$6F,$72,$79,$3A
	db	$3A,$4D,$45,$4D,$4F,$52,$59,$5F,$53,$4F,$52,$54,$5F,$52,$45
	db	$4C,$4F,$43,$2E,$2E,$2E,$0D,$0A,$00,$6D,$79,$5F,$4D,$65,$6D
	db	$6F,$72,$79,$3A,$3A,$4D,$45,$4D,$4F,$52,$59,$5F,$46,$52,$45
	db	$45,$5F,$52,$45,$4C,$4F,$43,$2E,$2E,$2E,$0D,$0A,$00,$6D,$79
	db	$5F,$4D,$65,$6D,$6F,$72,$79,$3A,$3A,$4D,$45,$4D,$4F,$52,$59
	db	$5F,$46,$52,$45,$45,$5F,$52,$45,$4C,$4F,$43,$20,$44,$4F,$4E
	db	$45,$2E,$2E,$2E,$0D,$0A,$00
	ends
;
;
;/******************************************************************/
;/*  compare_reloc() : Fonction de comparaison pour le Quick Sort. */
;/******************************************************************/
;int compare_reloc(const void *data_1, const void *data_2)
;{
	.line	208
	.line	209
	LOADER
	xdef	~~compare_reloc
	func
	.function	209
~~compare_reloc:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L22
	tcs
	phd
	tcd
data_1_0	set	4
data_2_0	set	8
	.block	209
;  struct omf_reloc *reloc_1;
;  struct omf_reloc *reloc_2;
;
;  /* Récupération des paramètres */
;  reloc_1 = *((struct omf_reloc **) data_1);
reloc_1_1	set	0
reloc_2_1	set	4
	.sym	reloc_1,0,138,1,32,97
	.sym	reloc_2,4,138,1,32,97
	.sym	data_1,4,129,6,32
	.sym	data_2,8,129,6,32
	.line	214
	lda	[<L22+data_1_0]
	sta	<L23+reloc_1_1
	ldy	#$2
	lda	[<L22+data_1_0],Y
	sta	<L23+reloc_1_1+2
;  reloc_2 = *((struct omf_reloc **) data_2);
	.line	215
	lda	[<L22+data_2_0]
	sta	<L23+reloc_2_1
	ldy	#$2
	lda	[<L22+data_2_0],Y
	sta	<L23+reloc_2_1+2
;
;  /* Comparaison des adresses */
;  if(reloc_1->OffsetPatch < reloc_2->OffsetPatch)
	.line	218
;    return(-1);
	ldy	#$2
	lda	[<L23+reloc_1_1],Y
	ldy	#$2
	cmp	[<L23+reloc_2_1],Y
	ldy	#$4
	lda	[<L23+reloc_1_1],Y
	ldy	#$4
	sbc	[<L23+reloc_2_1],Y
	bcc	L25
	brl	L10047
L25:
	.line	219
	lda	#$ffff
L26:
	tay
	lda	<L22+2
	sta	<L22+2+8
	lda	<L22+1
	sta	<L22+1+8
	pld
	tsc
	clc
	adc	#L22+8
	tcs
	tya
	rtl
;  else if(reloc_1->OffsetPatch > reloc_2->OffsetPatch)
L10047:
	.line	220
;    return(1);
	ldy	#$2
	lda	[<L23+reloc_2_1],Y
	ldy	#$2
	cmp	[<L23+reloc_1_1],Y
	ldy	#$4
	lda	[<L23+reloc_2_1],Y
	ldy	#$4
	sbc	[<L23+reloc_1_1],Y
	bcc	L27
	brl	L10048
L27:
	.line	221
	lda	#$1
	brl	L26
;  else
L10048:
;    {
	.line	223
;      /* Si l'adresse est la même, on prévilégie le nb de byte */
;      if(reloc_1->ByteCnt < reloc_2->ByteCnt)
	.line	225
;        return(1);
	sep	#$20
	longa	off
	lda	[<L23+reloc_1_1]
	cmp	[<L23+reloc_2_1]
	rep	#$20
	longa	on
	bcc	L28
	brl	L10049
L28:
	.line	226
	lda	#$1
	brl	L26
;      else if(reloc_1->ByteCnt > reloc_2->ByteCnt)
L10049:
	.line	227
;        return(-1);
	sep	#$20
	longa	off
	lda	[<L23+reloc_2_1]
	cmp	[<L23+reloc_1_1]
	rep	#$20
	longa	on
	bcc	L29
	brl	L10050
L29:
	.line	228
	lda	#$ffff
	brl	L26
;      else
L10050:
;        return(0);
	.line	230
	lda	#$0
	brl	L26
;    }
	.line	231
;}
	.line	232
	.endblock	232
L22	equ	8
L23	equ	1
	ends
	efunc
	.endfunc	232,1,8
	.line	232
;
;
;/*********************************************************************/
;/*  compare_interseg() : Fonction de comparaison pour le Quick Sort. */
;/*********************************************************************/
;int compare_interseg(const void *data_1, const void *data_2)
;{
	.line	238
	.line	239
	LOADER
	xdef	~~compare_interseg
	func
	.function	239
~~compare_interseg:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L30
	tcs
	phd
	tcd
data_1_0	set	4
data_2_0	set	8
	.block	239
;  struct omf_interseg *interseg_1;
;  struct omf_interseg *interseg_2;
;
;  /* Récupération des paramètres */
;  interseg_1 = *((struct omf_interseg **) data_1);
interseg_1_1	set	0
interseg_2_1	set	4
	.sym	interseg_1,0,138,1,32,98
	.sym	interseg_2,4,138,1,32,98
	.sym	data_1,4,129,6,32
	.sym	data_2,8,129,6,32
	.line	244
	lda	[<L30+data_1_0]
	sta	<L31+interseg_1_1
	ldy	#$2
	lda	[<L30+data_1_0],Y
	sta	<L31+interseg_1_1+2
;  interseg_2 = *((struct omf_interseg **) data_2);
	.line	245
	lda	[<L30+data_2_0]
	sta	<L31+interseg_2_1
	ldy	#$2
	lda	[<L30+data_2_0],Y
	sta	<L31+interseg_2_1+2
;
;  /* Comparaison des adresses */
;  if(interseg_1->OffsetPatch < interseg_2->OffsetPatch)
	.line	248
;    return(-1);
	ldy	#$2
	lda	[<L31+interseg_1_1],Y
	ldy	#$2
	cmp	[<L31+interseg_2_1],Y
	ldy	#$4
	lda	[<L31+interseg_1_1],Y
	ldy	#$4
	sbc	[<L31+interseg_2_1],Y
	bcc	L33
	brl	L10051
L33:
	.line	249
	lda	#$ffff
L34:
	tay
	lda	<L30+2
	sta	<L30+2+8
	lda	<L30+1
	sta	<L30+1+8
	pld
	tsc
	clc
	adc	#L30+8
	tcs
	tya
	rtl
;  else if(interseg_1->OffsetPatch > interseg_2->OffsetPatch)
L10051:
	.line	250
;    return(1);
	ldy	#$2
	lda	[<L31+interseg_2_1],Y
	ldy	#$2
	cmp	[<L31+interseg_1_1],Y
	ldy	#$4
	lda	[<L31+interseg_2_1],Y
	ldy	#$4
	sbc	[<L31+interseg_1_1],Y
	bcc	L35
	brl	L10052
L35:
	.line	251
	lda	#$1
	brl	L34
;  else
L10052:
;    {
	.line	253
;      /* Si l'adresse est la même, on prévilégie le nb de byte */
;      if(interseg_1->ByteCnt < interseg_2->ByteCnt)
	.line	255
;        return(1);
	sep	#$20
	longa	off
	lda	[<L31+interseg_1_1]
	cmp	[<L31+interseg_2_1]
	rep	#$20
	longa	on
	bcc	L36
	brl	L10053
L36:
	.line	256
	lda	#$1
	brl	L34
;      else if(interseg_1->ByteCnt > interseg_2->ByteCnt)
L10053:
	.line	257
;        return(-1);
	sep	#$20
	longa	off
	lda	[<L31+interseg_2_1]
	cmp	[<L31+interseg_1_1]
	rep	#$20
	longa	on
	bcc	L37
	brl	L10054
L37:
	.line	258
	lda	#$ffff
	brl	L34
;      else
L10054:
;        return(0);
	.line	260
	lda	#$0
	brl	L34
;    }
	.line	261
;}
	.line	262
	.endblock	262
L30	equ	8
L31	equ	1
	ends
	efunc
	.endfunc	262,1,8
	.line	262
;
;/************************************************************************/
;
	.line	264
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\OMF_Dc_Memory.c",238
	xref	~~k_free
	xref	~~k_calloc
	xref	~~k_debug_string
	xref	~~qsort
	.sym	~~compare_interseg,~~compare_interseg,69,2,0
	.sym	~~compare_reloc,~~compare_reloc,69,2,0
	.sym	~~my_Memory,~~my_Memory,65,2,0
	.sym	~~k_free,~~k_free,65,18,0
	.sym	~~k_calloc,~~k_calloc,1089,18,32
	.sym	MemoryCallback,0,641,14,32
	.sym	PFXMEMORYMAP,0,138,14,32,63
	.sym	FXMEMORYMAP,0,10,14,2072,63
	.sym	UMM_HEAP_INFO,0,10,14,256,62
	.sym	PCOMMANDARGS,0,138,14,32,61
	.sym	COMMANDARGS,0,10,14,64,61
	.sym	PTOKENIZESTATE,0,133,14,32
	.sym	TOKENIZESTATE,0,5,14,16
	.sym	PTOKEN,0,138,14,32,60
	.sym	TOKEN,0,10,14,64,60
	.sym	PTOKENTYPE,0,133,14,32
	.sym	TOKENTYPE,0,5,14,16
	.sym	FXCommandHandler,0,656,14,32
	.sym	PCONSOLECTX,0,138,14,32,59
	.sym	CONSOLECTX,0,10,14,1144,59
	.sym	PSPINNERCTX,0,138,14,32,58
	.sym	SPINNERCTX,0,10,14,48,58
	.sym	PMOUSE_MSG_STATE,0,138,14,32,57
	.sym	MOUSE_MSG_STATE,0,10,14,184,57
	.sym	PFXEVENTPROCESS,0,138,14,32,56
	.sym	FXEVENTPROCESS,0,10,14,64,56
	.sym	FXEventProc,0,641,14,32
	.sym	PMOUSEMSGDATA,0,138,14,32,55
	.sym	MOUSEMSGDATA,0,10,14,64,55
	.sym	MSGIRQ,0,5,14,16
	.sym	MAINLOOPARGS,0,10,14,16,54
	.sym	PEACHCHILD_MSG,0,138,14,32,53
	.sym	EACHCHILD_MSG,0,10,14,64,53
	.sym	PCUR_PALETTE_MAP,0,138,14,32,52
	.sym	CUR_PALETTE_MAP,0,10,14,400,52
	.sym	PCLICKDETECTED,0,138,14,32,51
	.sym	CLICKDETECTED,0,10,14,64,51
	.sym	OBJECTCLICKED,0,641,14,32
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
	.sym	Boolean_T,0,5,14,16
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
	.sym	~~qsort,~~qsort,65,18,0
	.sym	ldiv_t,0,10,14,64,2
	.sym	div_t,0,10,14,32,1
	.sym	wctype_t,0,16,14,16
	.sym	wint_t,0,16,14,16
	.sym	wchar_t,0,14,14,8
	.sym	ptrdiff_t,0,7,14,32
	.sym	size_t,0,16,14,16
	end

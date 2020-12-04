;:ts=8
R0	equ	1
R1	equ	5
R2	equ	9
R3	equ	13
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\flpydsk.c",0
;//****************************************************************************
;//**
;//**    flpydsk.cpp
;//**		-Floppy Disk driver
;//**
;//****************************************************************************
;//============================================================================
;//    IMPLEMENTATION HEADERS
;//============================================================================
;
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\flpydsk.c",11
;#include "flpydsk.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\flpydsk.h",0
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxtypes.h",0
	.line	708
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\flpydsk.h",14
	.line	68
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\flpydsk.c",12
;
;void floppy_init();
;void flpydsk_send_command(uint8_t cmd);
;void flpydsk_reset();
;//============================================================================
;//    IMPLEMENTATION PRIVATE DEFINITIONS / ENUMERATIONS / SIMPLE TYPEDEFS
;//============================================================================
;
;/*
; **	Controller I/O Ports. Please see chapter for additional ports
; */
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
;#define MSR_OK_READ (MSR_RQM | MSR_DIO | MSR_CB)
;
;/* DIR flags */
;#define DIR_DC 0x80
;
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
;
;/**
; *	Bits 0-4 of command byte. Please see chapter for additional commands
; */
;
;enum FLPYDSK_CMD
;{
;
;	FDC_CMD_READ_TRACK = 2,
;	FDC_CMD_SPECIFY = 3,
;	FDC_CMD_CHECK_STAT = 4,
;	FDC_CMD_WRITE_SECT = 5,
;	FDC_CMD_READ_SECT = 6,
;	FDC_CMD_CALIBRATE = 7,
;	FDC_CMD_CHECK_INT = 8,
;	FDC_CMD_FORMAT_TRACK = 0xd,
;	FDC_CMD_SEEK = 0xf
;};
;
;/**
; *	Additional command masks. Can be masked with above commands
; */
;
;enum FLPYDSK_CMD_EXT
;{
;
;	FDC_CMD_EXT_SKIP = 0x20,	//00100000
;	FDC_CMD_EXT_DENSITY = 0x40,	//01000000
;	FDC_CMD_EXT_MULTITRACK = 0x80	//10000000
;};
;
;/*
; **	Digital Output Register
; */
;
;enum FLPYDSK_DOR_MASK
;{
;
;	FLPYDSK_DOR_MASK_DRIVE0 = 0,	//00000000	= here for completeness sake
;	FLPYDSK_DOR_MASK_DRIVE1 = 1,	//00000001
;	FLPYDSK_DOR_MASK_DRIVE2 = 2,	//00000010
;	FLPYDSK_DOR_MASK_DRIVE3 = 3,	//00000011
;	FLPYDSK_DOR_MASK_RESET = 4,	//00000100
;	FLPYDSK_DOR_MASK_DMA = 8,	//00001000
;	FLPYDSK_DOR_MASK_DRIVE0_MOTOR = 16,	//00010000
;	FLPYDSK_DOR_MASK_DRIVE1_MOTOR = 32,	//00100000
;	FLPYDSK_DOR_MASK_DRIVE2_MOTOR = 64,	//01000000
;	FLPYDSK_DOR_MASK_DRIVE3_MOTOR = 128	//10000000
;};
;
;/**
; *	Main Status Register
; */
;
;enum FLPYDSK_MSR_MASK
;{
;
;	FLPYDSK_MSR_MASK_DRIVE1_POS_MODE = 1,	//00000001
;	FLPYDSK_MSR_MASK_DRIVE2_POS_MODE = 2,	//00000010
;	FLPYDSK_MSR_MASK_DRIVE3_POS_MODE = 4,	//00000100
;	FLPYDSK_MSR_MASK_DRIVE4_POS_MODE = 8,	//00001000
;	FLPYDSK_MSR_MASK_BUSY = 16,	//00010000
;	FLPYDSK_MSR_MASK_DMA = 32,	//00100000
;	FLPYDSK_MSR_MASK_DATAIO = 64, //01000000
;	FLPYDSK_MSR_MASK_DATAREG = 128	//10000000
;};
;
;/**
; *	Controller Status Port 0
; */
;
;enum FLPYDSK_ST0_MASK
;{
;
;	FLPYDSK_ST0_MASK_DRIVE0 = 0,		//00000000	=	for completness sake
;	FLPYDSK_ST0_MASK_DRIVE1 = 1,		//00000001
;	FLPYDSK_ST0_MASK_DRIVE2 = 2,		//00000010
;	FLPYDSK_ST0_MASK_DRIVE3 = 3,		//00000011
;	FLPYDSK_ST0_MASK_HEADACTIVE = 4,		//00000100
;	FLPYDSK_ST0_MASK_NOTREADY = 8,		//00001000
;	FLPYDSK_ST0_MASK_UNITCHECK = 16,		//00010000
;	FLPYDSK_ST0_MASK_SEEKEND = 32,		//00100000
;	FLPYDSK_ST0_MASK_INTCODE = 64		//11000000
;};
;
;/*
; ** LPYDSK_ST0_MASK_INTCODE types
; */
;
;enum FLPYDSK_ST0_INTCODE_TYP
;{
;
;	FLPYDSK_ST0_TYP_NORMAL = 0,
;	FLPYDSK_ST0_TYP_ABNORMAL_ERR = 1,
;	FLPYDSK_ST0_TYP_INVALID_ERR = 2,
;	FLPYDSK_ST0_TYP_NOTREADY = 3
;};
;
;/**
; *	GAP 3 sizes
; */
;
;enum FLPYDSK_GAP3_LENGTH
;{
;
;	FLPYDSK_GAP3_LENGTH_STD = 42,
;	FLPYDSK_GAP3_LENGTH_5_14 = 32,
;	FLPYDSK_GAP3_LENGTH_3_5 = 27
;};
;
;/*
; **	Formula: 2^sector_number * 128, where ^ denotes "to the power of"
; */
;
;enum FLPYDSK_SECTOR_DTL
;{
;
;	FLPYDSK_SECTOR_DTL_128 = 0,
;	FLPYDSK_SECTOR_DTL_256 = 1,
;	FLPYDSK_SECTOR_DTL_512 = 2,
;	FLPYDSK_SECTOR_DTL_1024 = 4
;};
;
;/**
; *	Constants
; */
;
;//! floppy irq
;const int FLOPPY_IRQ = 6;
	data
	xdef	~~FLOPPY_IRQ
~~FLOPPY_IRQ:
	dw	$6
	ends
;
;//! sectors per track
;const int FLPY_SECTORS_PER_TRACK = 18;
	data
	xdef	~~FLPY_SECTORS_PER_TRACK
~~FLPY_SECTORS_PER_TRACK:
	dw	$12
	ends
;
;//! dma tranfer buffer starts here and ends at 0x1000+64k
;//! You can change this as needed. It must be below 16MB and in idenitity mapped memory!
;const LPCHAR DMA_BUFFER = (LPCHAR) 0x1E1000;
	data
	xdef	~~DMA_BUFFER
~~DMA_BUFFER:
	dl	$1E1000
	ends
;
;//============================================================================
;//    IMPLEMENTATION PRIVATE CLASS PROTOTYPES / EXTERNAL CLASS REFERENCES
;//============================================================================
;//============================================================================
;//    IMPLEMENTATION PRIVATE STRUCTURES / UTILITY CLASSES
;//============================================================================
;//============================================================================
;//    IMPLEMENTATION REQUIRED EXTERNAL REFERENCES (AVOID)
;//============================================================================
;
;//! used to wait in miliseconds
;extern void sleep(int);
;
;//============================================================================
;//    IMPLEMENTATION PRIVATE DATA
;//============================================================================
;
;//! current working drive. Defaults to 0 which should be fine on most systems
;static uint8_t _CurrentDrive = 0;
	data
~~_CurrentDrive:
	db	$0
	ends
;
;//! set when IRQ fires
;UCHAR _FloppyDiskIRQ = 0;
	data
	xdef	~~_FloppyDiskIRQ
~~_FloppyDiskIRQ:
	db	$0
	ends
;
;#pragma section CODE=FLPY,offset $5:7FFF
FLPY	section	offset $5:7FFF
	ends
;//============================================================================
;//    INTERFACE DATA
;//============================================================================
;//============================================================================
;//    IMPLEMENTATION PRIVATE FUNCTION PROTOTYPES
;//============================================================================
;//============================================================================
;//    IMPLEMENTATION PRIVATE FUNCTIONS
;//============================================================================
;
;/**
; *	DMA Routines.
; **	The DMA (Direct Memory Access) controller allows the FDC to send data to the DMA,
; **	which can put the data in memory. While the FDC can be programmed to not use DMA,
; **  it is not very well supported on emulators or virtual machines. Because of this, we
; **  will be using the DMA for data transfers. The DMA is a complex controller, because of
; **  this we will cover it in the next tutorial. For now, please do not worry about the DMA
; **  routines to much :)
; */
;/*
;void flpydsk_wait_irq(void)
;{
;
;	 int timeout = 0x7FFF;
;
;	 k_debug_hex("flpydsk_wait_irq:enter:",(inportb(FLPYDSK_MSR) & 0xC0));
;
;	 while(((inportb(FLPYDSK_MSR) & 0xC0) != 0x80) && timeout)
;	 {
;
;		 timeout--;
;	 }
;
;	 k_debug_hex("flpydsk_wait_irq:exit:",(inportb(FLPYDSK_MSR) & 0xC0));
;
;}
;*/
;
;//! initialize DMA to use phys addr 84k-128k
;void flpydsk_initialize_dma()
;{
	.line	261
	.line	262
	FLPY
	xdef	~~flpydsk_initialize_dma
	func
	.function	262
~~flpydsk_initialize_dma:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L2
	tcs
	phd
	tcd
	.block	262
;	/*
;	 outportb(0x0a, 0x06);	//mask dma channel 2
;	 outportb(0xd8, 0xff);	//reset master flip-flop
;	 outportb(0x04, 0);     //address=0x1000
;	 outportb(0x04, 0x10);
;	 outportb(0xd8, 0xff);  //reset master flip-flop
;	 outportb(0x05, 0xff); //count to 0x23ff (number of bytes in a 3.5" floppy disk track)
;	 outportb(0x05, 0x23);
;	 outportb(0x80, 0);     //external page register = 0
;	 outportb(0x0a, 0x02);  //unmask dma channel 2
;	 */
;}
	.line	274
L5:
	pld
	tsc
	clc
	adc	#L2
	tcs
	rtl
	.endblock	274
L2	equ	0
L3	equ	1
	ends
	efunc
	.endfunc	274,1,0
	.line	274
;
;//! prepare the DMA for read transfer
;void flpydsk_dma_read()
;{
	.line	277
	.line	278
	FLPY
	xdef	~~flpydsk_dma_read
	func
	.function	278
~~flpydsk_dma_read:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L6
	tcs
	phd
	tcd
	.block	278
;	/*
;	 outportb(0x0a, 0x06); //mask dma channel 2
;	 outportb(0x0b, 0x56); //single transfer, address increment, autoinit, read, channel 2
;	 outportb(0x0a, 0x02); //unmask dma channel 2
;	 */
;}
	.line	284
L9:
	pld
	tsc
	clc
	adc	#L6
	tcs
	rtl
	.endblock	284
L6	equ	0
L7	equ	1
	ends
	efunc
	.endfunc	284,1,0
	.line	284
;
;//! prepare the DMA for write transfer
;void flpydsk_dma_write()
;{
	.line	287
	.line	288
	FLPY
	xdef	~~flpydsk_dma_write
	func
	.function	288
~~flpydsk_dma_write:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L10
	tcs
	phd
	tcd
	.block	288
;	/*
;	 outportb(0x0a, 0x06); //mask dma channel 2
;	 outportb(0x0b, 0x5a); //single transfer, address increment, autoinit, write, channel 2
;	 outportb(0x0a, 0x02); //unmask dma channel 2
;	 */
;}
	.line	294
L13:
	pld
	tsc
	clc
	adc	#L10
	tcs
	rtl
	.endblock	294
L10	equ	0
L11	equ	1
	ends
	efunc
	.endfunc	294,1,0
	.line	294
;
;/**
; *	Basic Controller I/O Routines
; */
;
;//! return fdc status
;uint8_t flpydsk_read_status()
;{
	.line	301
	.line	302
	FLPY
	xdef	~~flpydsk_read_status
	func
	.function	302
~~flpydsk_read_status:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L14
	tcs
	phd
	tcd
	.block	302
;	uint8_t status = 0;
;
;	sleep(20);
status_1	set	0
	.sym	status,0,14,1,8
	sep	#$20
	longa	off
	stz	<L15+status_1
	rep	#$20
	longa	on
	.line	305
	pea	#<$14
	jsl	~~sleep
;	status = inportb(FLPYDSK_MSR);
	.line	306
	sep	#$20
	longa	off
	lda	>11473908
	sta	<L15+status_1
	rep	#$20
	longa	on
;	k_debug_hex("flpydsk_read_status:", status);
	.line	307
	pei	<L15+status_1
	pea	#^L1
	pea	#<L1
	jsl	~~k_debug_hex
;
;	return status;
	.line	309
	lda	<L15+status_1
	and	#$ff
L17:
	tay
	pld
	tsc
	clc
	adc	#L14
	tcs
	tya
	rtl
;}
	.line	310
	.endblock	310
L14	equ	1
L15	equ	1
	ends
	efunc
	.endfunc	310,1,1
	.line	310
	data
L1:
	db	$66,$6C,$70,$79,$64,$73,$6B,$5F,$72,$65,$61,$64,$5F,$73,$74
	db	$61,$74,$75,$73,$3A,$00
	ends
;
;//! write to the fdc dor
;void flpydsk_write_dor(uint8_t val)
;{
	.line	313
	.line	314
	FLPY
	xdef	~~flpydsk_write_dor
	func
	.function	314
~~flpydsk_write_dor:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L19
	tcs
	phd
	tcd
val_0	set	4
	.block	314
;	k_debug_hex("flpydsk_write_dor:", val);
	.sym	val,4,14,6,8
	.line	315
	pei	<L19+val_0
	pea	#^L18
	pea	#<L18
	jsl	~~k_debug_hex
;	//! write the digital output register
;	outportb(FLPYDSK_DOR, val);
	.line	317
	sep	#$20
	longa	off
	lda	<L19+val_0
	sta	>11473906
	rep	#$20
	longa	on
;
;	//sleep(20);
;}
	.line	320
L22:
	lda	<L19+2
	sta	<L19+2+2
	lda	<L19+1
	sta	<L19+1+2
	pld
	tsc
	clc
	adc	#L19+2
	tcs
	rtl
	.endblock	320
L19	equ	0
L20	equ	1
	ends
	efunc
	.endfunc	320,1,0
	.line	320
	data
L18:
	db	$66,$6C,$70,$79,$64,$73,$6B,$5F,$77,$72,$69,$74,$65,$5F,$64
	db	$6F,$72,$3A,$00
	ends
;
;//! send command byte to fdc
;void flpydsk_send_command(uint8_t cmd)
;{
	.line	323
	.line	324
	FLPY
	xdef	~~flpydsk_send_command
	func
	.function	324
~~flpydsk_send_command:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L24
	tcs
	phd
	tcd
cmd_0	set	4
	.block	324
;	int i;
;
;	k_debug_hex("flpydsk_send_command:", cmd);
i_1	set	0
	.sym	i,0,5,1,16
	.sym	cmd,4,14,6,8
	.line	327
	pei	<L24+cmd_0
	pea	#^L23
	pea	#<L23
	jsl	~~k_debug_hex
;
;	//! wait until data register is ready. We send commands to the data register
;	for (i = 0; i < 500; i++)
	.line	330
	stz	<L25+i_1
L10003:
;	{
	.line	331
;		if (flpydsk_read_status() & FLPYDSK_MSR_MASK_DATAREG)
	.line	332
;		{
	jsl	~~flpydsk_read_status
	sep	#$20
	longa	off
	and	#<$80
	rep	#$20
	longa	on
	bne	L27
	brl	L10004
L27:
	.line	333
;			outportb(FLPYDSK_FIFO, cmd);
	.line	334
	sep	#$20
	longa	off
	lda	<L24+cmd_0
	sta	>11473909
	rep	#$20
	longa	on
;			return;
	.line	335
L28:
	lda	<L24+2
	sta	<L24+2+2
	lda	<L24+1
	sta	<L24+1+2
	pld
	tsc
	clc
	adc	#L24+2
	tcs
	rtl
;		}
	.line	336
;	}
L10004:
	.line	337
L10001:
	inc	<L25+i_1
	sec
	lda	<L25+i_1
	sbc	#<$1f4
	bvs	L29
	eor	#$8000
L29:
	bmi	L30
	brl	L10003
L30:
L10002:
;}
	.line	338
	brl	L28
	.endblock	338
L24	equ	2
L25	equ	1
	ends
	efunc
	.endfunc	338,1,2
	.line	338
	data
L23:
	db	$66,$6C,$70,$79,$64,$73,$6B,$5F,$73,$65,$6E,$64,$5F,$63,$6F
	db	$6D,$6D,$61,$6E,$64,$3A,$00
	ends
;
;//! get data from fdc
;BOOL flpydsk_read_byte(uint8_t *pdata)
;{
	.line	341
	.line	342
	FLPY
	xdef	~~flpydsk_read_byte
	func
	.function	342
~~flpydsk_read_byte:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L32
	tcs
	phd
	tcd
pdata_0	set	4
	.block	342
;	int i;
;	k_debug_string("flpydsk_read_byte\r\n");
i_1	set	0
	.sym	i,0,5,1,16
	.sym	pdata,4,142,6,32
	.line	344
	pea	#^L31
	pea	#<L31
	jsl	~~k_debug_string
;	//! same as above function but returns data register for reading
;	for (i = 0; i < 500; i++)
	.line	346
	stz	<L33+i_1
L10007:
;	{
	.line	347
;		if (flpydsk_read_status() & 0xC0)
	.line	348
;		{
	jsl	~~flpydsk_read_status
	sep	#$20
	longa	off
	and	#<$c0
	rep	#$20
	longa	on
	bne	L35
	brl	L10008
L35:
	.line	349
;			*pdata = inportb(FLPYDSK_FIFO);
	.line	350
	sep	#$20
	longa	off
	lda	>11473909
	sta	[<L32+pdata_0]
	rep	#$20
	longa	on
;			k_debug_hex("flpydsk_read_byte:", *pdata);
	.line	351
	lda	[<L32+pdata_0]
	pha
	pea	#^L31+20
	pea	#<L31+20
	jsl	~~k_debug_hex
;			k_debug_char("flpydsk_read_char:", *pdata);
	.line	352
	lda	[<L32+pdata_0]
	pha
	pea	#^L31+39
	pea	#<L31+39
	jsl	~~k_debug_char
;			return TRUE;
	.line	353
	lda	#$1
L36:
	tay
	lda	<L32+2
	sta	<L32+2+4
	lda	<L32+1
	sta	<L32+1+4
	pld
	tsc
	clc
	adc	#L32+4
	tcs
	tya
	rtl
;		}
	.line	354
;	}
L10008:
	.line	355
L10005:
	inc	<L33+i_1
	sec
	lda	<L33+i_1
	sbc	#<$1f4
	bvs	L37
	eor	#$8000
L37:
	bmi	L38
	brl	L10007
L38:
L10006:
;	return FALSE;
	.line	356
	lda	#$0
	brl	L36
;}
	.line	357
	.endblock	357
L32	equ	2
L33	equ	1
	ends
	efunc
	.endfunc	357,1,2
	.line	357
	data
L31:
	db	$66,$6C,$70,$79,$64,$73,$6B,$5F,$72,$65,$61,$64,$5F,$62,$79
	db	$74,$65,$0D,$0A,$00,$66,$6C,$70,$79,$64,$73,$6B,$5F,$72,$65
	db	$61,$64,$5F,$62,$79,$74,$65,$3A,$00,$66,$6C,$70,$79,$64,$73
	db	$6B,$5F,$72,$65,$61,$64,$5F,$63,$68,$61,$72,$3A,$00
	ends
;
;uint8_t flpydsk_read_data()
;{
	.line	359
	.line	360
	FLPY
	xdef	~~flpydsk_read_data
	func
	.function	360
~~flpydsk_read_data:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L40
	tcs
	phd
	tcd
	.block	360
;	UCHAR d = 0;
;	int i;
;	k_debug_string("flpydsk_read_data\r\n");
d_1	set	0
i_1	set	1
	.sym	d,0,14,1,8
	.sym	i,1,5,1,16
	sep	#$20
	longa	off
	stz	<L41+d_1
	rep	#$20
	longa	on
	.line	363
	pea	#^L39
	pea	#<L39
	jsl	~~k_debug_string
;	//! same as above function but returns data register for reading
;	for (i = 0; i < 500; i++)
	.line	365
	stz	<L41+i_1
L10011:
;	{
	.line	366
;		if (flpydsk_read_status() & FLPYDSK_MSR_MASK_DATAREG)
	.line	367
;		{
	jsl	~~flpydsk_read_status
	sep	#$20
	longa	off
	and	#<$80
	rep	#$20
	longa	on
	bne	L43
	brl	L10012
L43:
	.line	368
;			d = inportb(FLPYDSK_FIFO);
	.line	369
	sep	#$20
	longa	off
	lda	>11473909
	sta	<L41+d_1
	rep	#$20
	longa	on
;			k_debug_hex("flpydsk_read_data:", d);
	.line	370
	pei	<L41+d_1
	pea	#^L39+20
	pea	#<L39+20
	jsl	~~k_debug_hex
;			return d;
	.line	371
	lda	<L41+d_1
	and	#$ff
L44:
	tay
	pld
	tsc
	clc
	adc	#L40
	tcs
	tya
	rtl
;		}
	.line	372
;	}
L10012:
	.line	373
L10009:
	inc	<L41+i_1
	sec
	lda	<L41+i_1
	sbc	#<$1f4
	bvs	L45
	eor	#$8000
L45:
	bmi	L46
	brl	L10011
L46:
L10010:
;	return 0;
	.line	374
	lda	#$0
	brl	L44
;}
	.line	375
	.endblock	375
L40	equ	3
L41	equ	1
	ends
	efunc
	.endfunc	375,1,3
	.line	375
	data
L39:
	db	$66,$6C,$70,$79,$64,$73,$6B,$5F,$72,$65,$61,$64,$5F,$64,$61
	db	$74,$61,$0D,$0A,$00,$66,$6C,$70,$79,$64,$73,$6B,$5F,$72,$65
	db	$61,$64,$5F,$64,$61,$74,$61,$3A,$00
	ends
;
;//! write to the configuation control register
;void flpydsk_write_ccr(uint8_t val)
;{
	.line	378
	.line	379
	FLPY
	xdef	~~flpydsk_write_ccr
	func
	.function	379
~~flpydsk_write_ccr:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L48
	tcs
	phd
	tcd
val_0	set	4
	.block	379
;	k_debug_string("flpydsk_write_ccr\r\n");
	.sym	val,4,14,6,8
	.line	380
	pea	#^L47
	pea	#<L47
	jsl	~~k_debug_string
;	//! write the configuation control
;	outportb(FLPYDSK_CTRL, val);
	.line	382
	sep	#$20
	longa	off
	lda	<L48+val_0
	sta	>11473911
	rep	#$20
	longa	on
;}
	.line	383
L51:
	lda	<L48+2
	sta	<L48+2+2
	lda	<L48+1
	sta	<L48+1+2
	pld
	tsc
	clc
	adc	#L48+2
	tcs
	rtl
	.endblock	383
L48	equ	0
L49	equ	1
	ends
	efunc
	.endfunc	383,1,0
	.line	383
	data
L47:
	db	$66,$6C,$70,$79,$64,$73,$6B,$5F,$77,$72,$69,$74,$65,$5F,$63
	db	$63,$72,$0D,$0A,$00
	ends
;
;/**
; *	Interrupt Handling Routines
; */
;
;//!	floppy disk irq handler
;void i816_flpy_irq()
;{
	.line	390
	.line	391
	FLPY
	xdef	~~i816_flpy_irq
	func
	.function	391
~~i816_flpy_irq:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L53
	tcs
	phd
	tcd
	.block	391
;	/*
;	 _asm add
;	 esp, 12
;	 _asm pushad
;	 _asm cli
;
;	 //! irq fired
;	 _FloppyDiskIRQ = 1;
;
;	 //! tell hal we are done
;	 interruptdone(FLOPPY_IRQ);
;
;	 _asm sti
;	 _asm popad
;	 _asm iretd
;	 */
;}
	.line	408
L56:
	pld
	tsc
	clc
	adc	#L53
	tcs
	rtl
	.endblock	408
L53	equ	0
L54	equ	1
	ends
	efunc
	.endfunc	408,1,0
	.line	408
;
;/**
; *	Controller Command Routines
; */
;
;//! check interrupt status command
;void flpydsk_check_int(uint32_t* st0, uint32_t* cyl)
;{
	.line	415
	.line	416
	FLPY
	xdef	~~flpydsk_check_int
	func
	.function	416
~~flpydsk_check_int:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L57
	tcs
	phd
	tcd
st0_0	set	4
cyl_0	set	8
	.block	416
;	k_debug_string("flpydsk_check_int\r\n");
	.sym	st0,4,146,6,32
	.sym	cyl,8,146,6,32
	.line	417
	pea	#^L52
	pea	#<L52
	jsl	~~k_debug_string
;
;	flpydsk_send_command(FDC_CMD_CHECK_INT);
	.line	419
	pea	#<$8
	jsl	~~flpydsk_send_command
;
;	*st0 = flpydsk_read_data();
	.line	421
	jsl	~~flpydsk_read_data
	sep	#$20
	longa	off
	sta	<R0
	rep	#$20
	longa	on
	lda	<R0
	and	#$ff
	sta	<R0
	stz	<R0+2
	lda	<R0
	sta	[<L57+st0_0]
	lda	<R0+2
	ldy	#$2
	sta	[<L57+st0_0],Y
;	*cyl = flpydsk_read_data();
	.line	422
	jsl	~~flpydsk_read_data
	sep	#$20
	longa	off
	sta	<R0
	rep	#$20
	longa	on
	lda	<R0
	and	#$ff
	sta	<R0
	stz	<R0+2
	lda	<R0
	sta	[<L57+cyl_0]
	lda	<R0+2
	ldy	#$2
	sta	[<L57+cyl_0],Y
;
;	k_debug_long("flpydsk_check_int:st0:", *st0);
	.line	424
	ldy	#$2
	lda	[<L57+st0_0],Y
	pha
	lda	[<L57+st0_0]
	pha
	pea	#^L52+20
	pea	#<L52+20
	jsl	~~k_debug_long
;	k_debug_long("flpydsk_check_int:cyl:", *cyl);
	.line	425
	ldy	#$2
	lda	[<L57+cyl_0],Y
	pha
	lda	[<L57+cyl_0]
	pha
	pea	#^L52+43
	pea	#<L52+43
	jsl	~~k_debug_long
;}
	.line	426
L60:
	lda	<L57+2
	sta	<L57+2+8
	lda	<L57+1
	sta	<L57+1+8
	pld
	tsc
	clc
	adc	#L57+8
	tcs
	rtl
	.endblock	426
L57	equ	4
L58	equ	5
	ends
	efunc
	.endfunc	426,5,4
	.line	426
	data
L52:
	db	$66,$6C,$70,$79,$64,$73,$6B,$5F,$63,$68,$65,$63,$6B,$5F,$69
	db	$6E,$74,$0D,$0A,$00,$66,$6C,$70,$79,$64,$73,$6B,$5F,$63,$68
	db	$65,$63,$6B,$5F,$69,$6E,$74,$3A,$73,$74,$30,$3A,$00,$66,$6C
	db	$70,$79,$64,$73,$6B,$5F,$63,$68,$65,$63,$6B,$5F,$69,$6E,$74
	db	$3A,$63,$79,$6C,$3A,$00
	ends
;
;//! turns the current floppy drives motor on/off
;void flpydsk_control_motor(BOOL b)
;{
	.line	429
	.line	430
	FLPY
	xdef	~~flpydsk_control_motor
	func
	.function	430
~~flpydsk_control_motor:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L62
	tcs
	phd
	tcd
b_0	set	4
	.block	430
;	uint32_t motor = 0;
;	//! sanity check: invalid drive
;	if (_CurrentDrive > 3)
motor_1	set	0
	.sym	motor,0,18,1,32
	.sym	b,4,14,6,8
	stz	<L63+motor_1
	stz	<L63+motor_1+2
	.line	433
;		return;
	sep	#$20
	longa	off
	lda	#$3
	cmp	|~~_CurrentDrive
	rep	#$20
	longa	on
	bcc	L65
	brl	L10013
L65:
	.line	434
L66:
	lda	<L62+2
	sta	<L62+2+2
	lda	<L62+1
	sta	<L62+1+2
	pld
	tsc
	clc
	adc	#L62+2
	tcs
	rtl
;
;	k_debug_string("flpydsk_control_motor\r\n");
L10013:
	.line	436
	pea	#^L61
	pea	#<L61
	jsl	~~k_debug_string
;
;	//! select the correct mask based on current drive
;	switch (_CurrentDrive)
	.line	439
	lda	|~~_CurrentDrive
	and	#$ff
	brl	L10014
;	{
	.line	440
;	case 0:
	.line	441
L10016:
;		motor = FLPYDSK_DOR_MASK_DRIVE0_MOTOR;
	.line	442
	lda	#$10
	sta	<L63+motor_1
	lda	#$0
	sta	<L63+motor_1+2
;		break;
	.line	443
	brl	L10015
;	case 1:
	.line	444
L10017:
;		motor = FLPYDSK_DOR_MASK_DRIVE1_MOTOR;
	.line	445
	lda	#$20
	sta	<L63+motor_1
	lda	#$0
	sta	<L63+motor_1+2
;		break;
	.line	446
	brl	L10015
;	case 2:
	.line	447
L10018:
;		motor = FLPYDSK_DOR_MASK_DRIVE2_MOTOR;
	.line	448
	lda	#$40
	sta	<L63+motor_1
	lda	#$0
	sta	<L63+motor_1+2
;		break;
	.line	449
	brl	L10015
;	case 3:
	.line	450
L10019:
;		motor = FLPYDSK_DOR_MASK_DRIVE3_MOTOR;
	.line	451
	lda	#$80
	sta	<L63+motor_1
	lda	#$0
	sta	<L63+motor_1+2
;		break;
	.line	452
	brl	L10015
;	}
	.line	453
L10014:
	xref	~~~fsw
	jsl	~~~fsw
	dw	0
	dw	4
	dw	L10015-1
	dw	L10016-1
	dw	L10017-1
	dw	L10018-1
	dw	L10019-1
L10015:
;
;	//! turn on or off the motor of that drive
;	if (b)
	.line	456
;		//flpydsk_write_dor(_CurrentDrive | motor | FLPYDSK_DOR_MASK_RESET | FLPYDSK_DOR_MASK_DMA);
;		flpydsk_write_dor(_CurrentDrive | motor | FLPYDSK_DOR_MASK_RESET);
	lda	<L62+b_0
	and	#$ff
	bne	L67
	brl	L10020
L67:
	.line	458
	lda	|~~_CurrentDrive
	and	#$ff
	sta	<R0
	stz	<R0+2
	lda	<L63+motor_1
	ora	<R0
	sta	<R1
	lda	<L63+motor_1+2
	ora	<R0+2
	sta	<R1+2
	lda	<R1
	ora	#<$4
	sta	<R0
	lda	<R1+2
	sta	<R0+2
	pei	<R0
	jsl	~~flpydsk_write_dor
;	else
	brl	L10021
L10020:
;		flpydsk_write_dor(FLPYDSK_DOR_MASK_RESET);
	.line	460
	pea	#<$4
	jsl	~~flpydsk_write_dor
L10021:
;
;	//! in all cases; wait a little bit for the motor to spin up/turn off
;	k_debug_string("flpydsk_control_motor sleeping\r\n");
	.line	463
	pea	#^L61+24
	pea	#<L61+24
	jsl	~~k_debug_string
;	sleep(20);
	.line	464
	pea	#<$14
	jsl	~~sleep
;}
	.line	465
	brl	L66
	.endblock	465
L62	equ	12
L63	equ	9
	ends
	efunc
	.endfunc	465,9,12
	.line	465
	data
L61:
	db	$66,$6C,$70,$79,$64,$73,$6B,$5F,$63,$6F,$6E,$74,$72,$6F,$6C
	db	$5F,$6D,$6F,$74,$6F,$72,$0D,$0A,$00,$66,$6C,$70,$79,$64,$73
	db	$6B,$5F,$63,$6F,$6E,$74,$72,$6F,$6C,$5F,$6D,$6F,$74,$6F,$72
	db	$20,$73,$6C,$65,$65,$70,$69,$6E,$67,$0D,$0A,$00
	ends
;
;//! configure drive flpydsk_drive_data(3, 16, 240, FALSE);
;void flpydsk_drive_data(uint32_t stepr, uint32_t loadt, uint32_t unloadt,BOOL dma)
;{
	.line	468
	.line	469
	FLPY
	xdef	~~flpydsk_drive_data
	func
	.function	469
~~flpydsk_drive_data:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L69
	tcs
	phd
	tcd
stepr_0	set	4
loadt_0	set	8
unloadt_0	set	12
dma_0	set	16
	.block	469
;
;	uint32_t data = 0;
;
;	k_debug_string("flpydsk_drive_data\r\n");
data_1	set	0
	.sym	data,0,18,1,32
	.sym	stepr,4,18,6,32
	.sym	loadt,8,18,6,32
	.sym	unloadt,12,18,6,32
	.sym	dma,16,14,6,8
	stz	<L70+data_1
	stz	<L70+data_1+2
	.line	473
	pea	#^L68
	pea	#<L68
	jsl	~~k_debug_string
;
;	//! send command
;	flpydsk_send_command(FDC_CMD_SPECIFY);
	.line	476
	pea	#<$3
	jsl	~~flpydsk_send_command
;	data = ((stepr & 0xf) << 4) | (unloadt & 0xf);
	.line	477
	lda	<L69+stepr_0
	and	#<$f
	sta	<R1
	stz	<R1+2
	pei	<R1+2
	pei	<R1
	lda	#$4
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R0
	stx	<R0+2
	lda	<L69+unloadt_0
	and	#<$f
	sta	<R2
	stz	<R2+2
	lda	<R2
	ora	<R0
	sta	<L70+data_1
	lda	<R2+2
	ora	<R0+2
	sta	<L70+data_1+2
;	flpydsk_send_command(data);
	.line	478
	pei	<L70+data_1
	jsl	~~flpydsk_send_command
;	data = (loadt) << 1 | (dma == FALSE) ? 0 : 1;
	.line	479
	lda	<L69+loadt_0
	sta	<R0
	lda	<L69+loadt_0+2
	sta	<R0+2
	asl	<R0
	rol	<R0+2
	stz	<R1
	lda	<L69+dma_0
	and	#$ff
	beq	L74
	brl	L73
L74:
	inc	<R1
L73:
	ldy	#$0
	lda	<R1
	bpl	L75
	dey
L75:
	sta	<R1
	sty	<R1+2
	lda	<R1
	ora	<R0
	sta	<R2
	lda	<R1+2
	ora	<R0+2
	sta	<R2+2
	lda	<R2
	ora	<R2+2
	bne	L76
	brl	L72
L76:
	lda	#$0
	bra	L77
L72:
	lda	#$1
L77:
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L78
	dey
L78:
	sta	<L70+data_1
	sty	<L70+data_1+2
;	flpydsk_send_command(data);
	.line	480
	pei	<L70+data_1
	jsl	~~flpydsk_send_command
;}
	.line	481
L79:
	lda	<L69+2
	sta	<L69+2+14
	lda	<L69+1
	sta	<L69+1+14
	pld
	tsc
	clc
	adc	#L69+14
	tcs
	rtl
	.endblock	481
L69	equ	16
L70	equ	13
	ends
	efunc
	.endfunc	481,13,16
	.line	481
	data
L68:
	db	$66,$6C,$70,$79,$64,$73,$6B,$5F,$64,$72,$69,$76,$65,$5F,$64
	db	$61,$74,$61,$0D,$0A,$00
	ends
;
;//! calibrates the drive
;int flpydsk_calibrate(uint32_t drive)
;{
	.line	484
	.line	485
	FLPY
	xdef	~~flpydsk_calibrate
	func
	.function	485
~~flpydsk_calibrate:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L81
	tcs
	phd
	tcd
drive_0	set	4
	.block	485
;	int i;
;	uint32_t st0, cyl;
;
;	k_debug_string("flpydsk_calibrate\r\n");
i_1	set	0
st0_1	set	2
cyl_1	set	6
	.sym	i,0,5,1,16
	.sym	st0,2,18,1,32
	.sym	cyl,6,18,1,32
	.sym	drive,4,18,6,32
	.line	489
	pea	#^L80
	pea	#<L80
	jsl	~~k_debug_string
;
;	if (drive >= 4)
	.line	491
;		return -2;
	lda	<L81+drive_0
	cmp	#<$4
	lda	<L81+drive_0+2
	sbc	#^$4
	bcs	L84
	brl	L10022
L84:
	.line	492
	lda	#$fffe
L85:
	tay
	lda	<L81+2
	sta	<L81+2+4
	lda	<L81+1
	sta	<L81+1+4
	pld
	tsc
	clc
	adc	#L81+4
	tcs
	tya
	rtl
;
;	//! turn on the motor
;	flpydsk_control_motor(TRUE);
L10022:
	.line	495
	pea	#<$1
	jsl	~~flpydsk_control_motor
;
;	for (i = 0; i < 100; i++)
	.line	497
	stz	<L82+i_1
L10025:
;	{
	.line	498
;
;		//! send command
;		flpydsk_send_command(FDC_CMD_CALIBRATE);
	.line	501
	pea	#<$7
	jsl	~~flpydsk_send_command
;		flpydsk_send_command(drive);
	.line	502
	pei	<L81+drive_0
	jsl	~~flpydsk_send_command
;		flpydsk_wait_irq();
	.line	503
L10026:
	lda	|~~_FloppyDiskIRQ
	and	#$ff
	beq	L86
	brl	L10027
L86:
	.line	503
	brl	L10026
L10027:
	.line	503
	sep	#$20
	longa	off
	stz	|~~_FloppyDiskIRQ
	rep	#$20
	longa	on
	.line	503
;		flpydsk_check_int(&st0, &cyl);
	.line	504
	pea	#0
	clc
	tdc
	adc	#<L82+cyl_1
	pha
	pea	#0
	clc
	tdc
	adc	#<L82+st0_1
	pha
	jsl	~~flpydsk_check_int
;
;		//! did we fine cylinder 0? if so, we are done
;		if (!cyl)
	.line	507
;		{
	lda	<L82+cyl_1
	ora	<L82+cyl_1+2
	beq	L87
	brl	L10028
L87:
	.line	508
;
;			k_debug_long("flpydsk_calibrate:cy:", cyl);
	.line	510
	pei	<L82+cyl_1+2
	pei	<L82+cyl_1
	pea	#^L80+20
	pea	#<L80+20
	jsl	~~k_debug_long
;			flpydsk_control_motor(FALSE);
	.line	511
	pea	#<$0
	jsl	~~flpydsk_control_motor
;			return 0;
	.line	512
	lda	#$0
	brl	L85
;		}
	.line	513
;	}
L10028:
	.line	514
L10023:
	inc	<L82+i_1
	sec
	lda	<L82+i_1
	sbc	#<$64
	bvs	L88
	eor	#$8000
L88:
	bmi	L89
	brl	L10025
L89:
L10024:
;
;	flpydsk_control_motor(FALSE);
	.line	516
	pea	#<$0
	jsl	~~flpydsk_control_motor
;	return -1;
	.line	517
	lda	#$ffff
	brl	L85
;}
	.line	518
	.endblock	518
L81	equ	10
L82	equ	1
	ends
	efunc
	.endfunc	518,1,10
	.line	518
	data
L80:
	db	$66,$6C,$70,$79,$64,$73,$6B,$5F,$63,$61,$6C,$69,$62,$72,$61
	db	$74,$65,$0D,$0A,$00,$66,$6C,$70,$79,$64,$73,$6B,$5F,$63,$61
	db	$6C,$69,$62,$72,$61,$74,$65,$3A,$63,$79,$3A,$00
	ends
;
;//! disable controller
;void flpydsk_disable_controller()
;{
	.line	521
	.line	522
	FLPY
	xdef	~~flpydsk_disable_controller
	func
	.function	522
~~flpydsk_disable_controller:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L91
	tcs
	phd
	tcd
	.block	522
;	k_debug_string("flpydsk_disable_controller\r\n");
	.line	523
	pea	#^L90
	pea	#<L90
	jsl	~~k_debug_string
;	flpydsk_write_dor(0);
	.line	524
	pea	#<$0
	jsl	~~flpydsk_write_dor
;}
	.line	525
L94:
	pld
	tsc
	clc
	adc	#L91
	tcs
	rtl
	.endblock	525
L91	equ	0
L92	equ	1
	ends
	efunc
	.endfunc	525,1,0
	.line	525
	data
L90:
	db	$66,$6C,$70,$79,$64,$73,$6B,$5F,$64,$69,$73,$61,$62,$6C,$65
	db	$5F,$63,$6F,$6E,$74,$72,$6F,$6C,$6C,$65,$72,$0D,$0A,$00
	ends
;
;//! enable controller
;void flpydsk_enable_controller()
;{
	.line	528
	.line	529
	FLPY
	xdef	~~flpydsk_enable_controller
	func
	.function	529
~~flpydsk_enable_controller:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L96
	tcs
	phd
	tcd
	.block	529
;	k_debug_string("flpydsk_enable_controller\r\n");
	.line	530
	pea	#^L95
	pea	#<L95
	jsl	~~k_debug_string
;	flpydsk_write_dor(FLPYDSK_DOR_MASK_RESET | FLPYDSK_DOR_MASK_DMA);
	.line	531
	pea	#<$c
	jsl	~~flpydsk_write_dor
;	//flpydsk_write_dor(FLPYDSK_DOR_MASK_RESET);
;}
	.line	533
L99:
	pld
	tsc
	clc
	adc	#L96
	tcs
	rtl
	.endblock	533
L96	equ	0
L97	equ	1
	ends
	efunc
	.endfunc	533,1,0
	.line	533
	data
L95:
	db	$66,$6C,$70,$79,$64,$73,$6B,$5F,$65,$6E,$61,$62,$6C,$65,$5F
	db	$63,$6F,$6E,$74,$72,$6F,$6C,$6C,$65,$72,$0D,$0A,$00
	ends
;
;//! reset controller
;void flpydsk_reset()
;{
	.line	536
	.line	537
	FLPY
	xdef	~~flpydsk_reset
	func
	.function	537
~~flpydsk_reset:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L101
	tcs
	phd
	tcd
	.block	537
;	int i;
;	uint32_t st0, cyl;
;
;	k_debug_string("flpydsk_reset\r\n");
i_1	set	0
st0_1	set	2
cyl_1	set	6
	.sym	i,0,5,1,16
	.sym	st0,2,18,1,32
	.sym	cyl,6,18,1,32
	.line	541
	pea	#^L100
	pea	#<L100
	jsl	~~k_debug_string
;
;	//! reset the controller
;	flpydsk_disable_controller();
	.line	544
	jsl	~~flpydsk_disable_controller
;	flpydsk_enable_controller();
	.line	545
	jsl	~~flpydsk_enable_controller
;	flpydsk_wait_irq();
	.line	546
L10029:
	lda	|~~_FloppyDiskIRQ
	and	#$ff
	beq	L104
	brl	L10030
L104:
	.line	546
	brl	L10029
L10030:
	.line	546
	sep	#$20
	longa	off
	stz	|~~_FloppyDiskIRQ
	rep	#$20
	longa	on
	.line	546
;
;	//! send CHECK_INT/SENSE INTERRUPT command to all drives
;	for (i = 0; i < 4; i++)
	.line	549
	stz	<L102+i_1
L10033:
;		flpydsk_check_int(&st0, &cyl);
	.line	550
	pea	#0
	clc
	tdc
	adc	#<L102+cyl_1
	pha
	pea	#0
	clc
	tdc
	adc	#<L102+st0_1
	pha
	jsl	~~flpydsk_check_int
L10031:
	inc	<L102+i_1
	lda	<L102+i_1
	bmi	L105
	dea
	dea
	dea
	dea
	bpl	L106
L105:
	brl	L10033
L106:
L10032:
;
;	//! transfer speed 500kb/s
;	flpydsk_write_ccr(0);
	.line	553
	pea	#<$0
	jsl	~~flpydsk_write_ccr
;
;	//! pass mechanical drive info. steprate=3ms, unload time=240ms, load time=16ms
;	flpydsk_drive_data(3, 16, 240, FALSE);
	.line	556
	pea	#<$0
	pea	#^$f0
	pea	#<$f0
	pea	#^$10
	pea	#<$10
	pea	#^$3
	pea	#<$3
	jsl	~~flpydsk_drive_data
;
;	//! calibrate the disk
;	i = flpydsk_calibrate(_CurrentDrive);
	.line	559
	lda	|~~_CurrentDrive
	and	#$ff
	sta	<R0
	stz	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~flpydsk_calibrate
	sta	<L102+i_1
;	k_debug_integer("flpydsk_calibrate:", i);
	.line	560
	pei	<L102+i_1
	pea	#^L100+16
	pea	#<L100+16
	jsl	~~k_debug_integer
;}
	.line	561
L107:
	pld
	tsc
	clc
	adc	#L101
	tcs
	rtl
	.endblock	561
L101	equ	14
L102	equ	5
	ends
	efunc
	.endfunc	561,5,14
	.line	561
	data
L100:
	db	$66,$6C,$70,$79,$64,$73,$6B,$5F,$72,$65,$73,$65,$74,$0D,$0A
	db	$00,$66,$6C,$70,$79,$64,$73,$6B,$5F,$63,$61,$6C,$69,$62,$72
	db	$61,$74,$65,$3A,$00
	ends
;
;//! read a sector
;void flpydsk_read_sector_imp(uint8_t head, uint8_t track, uint8_t sector)
;{
	.line	564
	.line	565
	FLPY
	xdef	~~flpydsk_read_sector_imp
	func
	.function	565
~~flpydsk_read_sector_imp:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L109
	tcs
	phd
	tcd
head_0	set	4
track_0	set	6
sector_0	set	8
	.block	565
;	int j;
;	uint32_t st0, cyl;
;
;	k_debug_integer("flpydsk_read_sector_imp:", sector);
j_1	set	0
st0_1	set	2
cyl_1	set	6
	.sym	j,0,5,1,16
	.sym	st0,2,18,1,32
	.sym	cyl,6,18,1,32
	.sym	head,4,14,6,8
	.sym	track,6,14,6,8
	.sym	sector,8,14,6,8
	.line	569
	lda	<L109+sector_0
	and	#$ff
	pha
	pea	#^L108
	pea	#<L108
	jsl	~~k_debug_integer
;
;	//! set the DMA for read transfer
;	flpydsk_dma_read();
	.line	572
	jsl	~~flpydsk_dma_read
;
;	//! read in a sector
;	flpydsk_send_command(
	.line	575
;			FDC_CMD_READ_SECT | FDC_CMD_EXT_MULTITRACK | FDC_CMD_EXT_SKIP
;					| FDC_CMD_EXT_DENSITY);
	pea	#<$e6
	jsl	~~flpydsk_send_command
;	flpydsk_send_command(head << 2 | _CurrentDrive);
	.line	578
	lda	<L109+head_0
	and	#$ff
	sta	<R1
	lda	<R1
	asl	A
	asl	A
	sta	<R0
	lda	|~~_CurrentDrive
	and	#$ff
	sta	<R1
	lda	<R1
	ora	<R0
	pha
	jsl	~~flpydsk_send_command
;	flpydsk_send_command(track);
	.line	579
	pei	<L109+track_0
	jsl	~~flpydsk_send_command
;	flpydsk_send_command(head);
	.line	580
	pei	<L109+head_0
	jsl	~~flpydsk_send_command
;	flpydsk_send_command(sector);
	.line	581
	pei	<L109+sector_0
	jsl	~~flpydsk_send_command
;	flpydsk_send_command(FLPYDSK_SECTOR_DTL_512);
	.line	582
	pea	#<$2
	jsl	~~flpydsk_send_command
;	flpydsk_send_command(((sector + 1) >= FLPY_SECTORS_PER_TRACK) ? FLPY_SECTORS_PER_TRACK : sector + 1);
	.line	583
	lda	<L109+sector_0
	and	#$ff
	sta	<R0
	lda	<R0
	ina
	sta	<R1
	sec
	lda	<R1
	sbc	#<$12
	bvs	L113
	eor	#$8000
L113:
	bmi	L114
	brl	L112
L114:
	lda	#$0
	tax
	lda	#$12
	bra	L115
L112:
	lda	<L109+sector_0
	and	#$ff
	sta	<R0
	lda	<R0
	ina
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L116
	dey
L116:
	sta	<R0
	sty	<R0+2
	ldx	<R0+2
	lda	<R0
L115:
	sta	<R0
	stx	<R0+2
	pei	<R0
	jsl	~~flpydsk_send_command
;	flpydsk_send_command(FLPYDSK_GAP3_LENGTH_3_5);
	.line	584
	pea	#<$1b
	jsl	~~flpydsk_send_command
;	flpydsk_send_command(0xff);
	.line	585
	pea	#<$ff
	jsl	~~flpydsk_send_command
;
;	//! wait for irq
;	flpydsk_wait_irq();
	.line	588
L10034:
	lda	|~~_FloppyDiskIRQ
	and	#$ff
	beq	L117
	brl	L10035
L117:
	.line	588
	brl	L10034
L10035:
	.line	588
	sep	#$20
	longa	off
	stz	|~~_FloppyDiskIRQ
	rep	#$20
	longa	on
	.line	588
;
;	//! read status info
;	for (j = 0; j < 7; j++)
	.line	591
	stz	<L110+j_1
L10038:
;		flpydsk_read_data();
	.line	592
	jsl	~~flpydsk_read_data
L10036:
	inc	<L110+j_1
	sec
	lda	<L110+j_1
	sbc	#<$7
	bvs	L118
	eor	#$8000
L118:
	bmi	L119
	brl	L10038
L119:
L10037:
;
;	//! let FDC know we handled interrupt
;	flpydsk_check_int(&st0, &cyl);
	.line	595
	pea	#0
	clc
	tdc
	adc	#<L110+cyl_1
	pha
	pea	#0
	clc
	tdc
	adc	#<L110+st0_1
	pha
	jsl	~~flpydsk_check_int
;}
	.line	596
L120:
	lda	<L109+2
	sta	<L109+2+6
	lda	<L109+1
	sta	<L109+1+6
	pld
	tsc
	clc
	adc	#L109+6
	tcs
	rtl
	.endblock	596
L109	equ	18
L110	equ	9
	ends
	efunc
	.endfunc	596,9,18
	.line	596
	data
L108:
	db	$66,$6C,$70,$79,$64,$73,$6B,$5F,$72,$65,$61,$64,$5F,$73,$65
	db	$63,$74,$6F,$72,$5F,$69,$6D,$70,$3A,$00
	ends
;
;//! read a sector
;void flpydsk_read_sector_imp2(uint8_t head, uint8_t track, uint8_t sector)
;{
	.line	599
	.line	600
	FLPY
	xdef	~~flpydsk_read_sector_imp2
	func
	.function	600
~~flpydsk_read_sector_imp2:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L122
	tcs
	phd
	tcd
head_0	set	4
track_0	set	6
sector_0	set	8
	.block	600
;	int j;
;	UCHAR data;
;	uint32_t st0, cyl;
;
;	k_debug_integer("flpydsk_read_sector_imp2:", sector);
j_1	set	0
data_1	set	2
st0_1	set	3
cyl_1	set	7
	.sym	j,0,5,1,16
	.sym	data,2,14,1,8
	.sym	st0,3,18,1,32
	.sym	cyl,7,18,1,32
	.sym	head,4,14,6,8
	.sym	track,6,14,6,8
	.sym	sector,8,14,6,8
	.line	605
	lda	<L122+sector_0
	and	#$ff
	pha
	pea	#^L121
	pea	#<L121
	jsl	~~k_debug_integer
;
;	//! set the DMA for read transfer
;	flpydsk_dma_read();
	.line	608
	jsl	~~flpydsk_dma_read
;
;	//! read in a sector
;	flpydsk_send_command(
	.line	611
;			FDC_CMD_READ_SECT | FDC_CMD_EXT_MULTITRACK | FDC_CMD_EXT_SKIP
;					| FDC_CMD_EXT_DENSITY);
	pea	#<$e6
	jsl	~~flpydsk_send_command
;	flpydsk_send_command(head << 2 | _CurrentDrive);
	.line	614
	lda	<L122+head_0
	and	#$ff
	sta	<R1
	lda	<R1
	asl	A
	asl	A
	sta	<R0
	lda	|~~_CurrentDrive
	and	#$ff
	sta	<R1
	lda	<R1
	ora	<R0
	pha
	jsl	~~flpydsk_send_command
;	flpydsk_send_command(track);
	.line	615
	pei	<L122+track_0
	jsl	~~flpydsk_send_command
;	flpydsk_send_command(head);
	.line	616
	pei	<L122+head_0
	jsl	~~flpydsk_send_command
;	flpydsk_send_command(sector);
	.line	617
	pei	<L122+sector_0
	jsl	~~flpydsk_send_command
;	flpydsk_send_command(FLPYDSK_SECTOR_DTL_512);
	.line	618
	pea	#<$2
	jsl	~~flpydsk_send_command
;	flpydsk_send_command(
	.line	619
;			((sector + 1) >= FLPY_SECTORS_PER_TRACK) ?
;					FLPY_SECTORS_PER_TRACK : sector + 1);
	lda	<L122+sector_0
	and	#$ff
	sta	<R0
	lda	<R0
	ina
	sta	<R1
	sec
	lda	<R1
	sbc	#<$12
	bvs	L126
	eor	#$8000
L126:
	bmi	L127
	brl	L125
L127:
	lda	#$0
	tax
	lda	#$12
	bra	L128
L125:
	lda	<L122+sector_0
	and	#$ff
	sta	<R0
	lda	<R0
	ina
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L129
	dey
L129:
	sta	<R0
	sty	<R0+2
	ldx	<R0+2
	lda	<R0
L128:
	sta	<R0
	stx	<R0+2
	pei	<R0
	jsl	~~flpydsk_send_command
;	flpydsk_send_command(FLPYDSK_GAP3_LENGTH_3_5);
	.line	622
	pea	#<$1b
	jsl	~~flpydsk_send_command
;	flpydsk_send_command(0xff);
	.line	623
	pea	#<$ff
	jsl	~~flpydsk_send_command
;
;	//! wait for irq
;	flpydsk_wait_irq();
	.line	626
L10039:
	lda	|~~_FloppyDiskIRQ
	and	#$ff
	beq	L130
	brl	L10040
L130:
	.line	626
	brl	L10039
L10040:
	.line	626
	sep	#$20
	longa	off
	stz	|~~_FloppyDiskIRQ
	rep	#$20
	longa	on
	.line	626
;
;	//! read status info
;	for (j = 0; j < 7; j++)
	.line	629
	stz	<L123+j_1
L10043:
;		flpydsk_read_data();
	.line	630
	jsl	~~flpydsk_read_data
L10041:
	inc	<L123+j_1
	sec
	lda	<L123+j_1
	sbc	#<$7
	bvs	L131
	eor	#$8000
L131:
	bmi	L132
	brl	L10043
L132:
L10042:
;
;	/*
;	while (flpydsk_read_byte(&data))
;	{
;		k_debug_hex("flpydsk_read_sector_imp2:data:", data);
;	}
;	*/
;	//! let FDC know we handled interrupt
;	flpydsk_check_int(&st0, &cyl);
	.line	639
	pea	#0
	clc
	tdc
	adc	#<L123+cyl_1
	pha
	pea	#0
	clc
	tdc
	adc	#<L123+st0_1
	pha
	jsl	~~flpydsk_check_int
;}
	.line	640
L133:
	lda	<L122+2
	sta	<L122+2+6
	lda	<L122+1
	sta	<L122+1+6
	pld
	tsc
	clc
	adc	#L122+6
	tcs
	rtl
	.endblock	640
L122	equ	19
L123	equ	9
	ends
	efunc
	.endfunc	640,9,19
	.line	640
	data
L121:
	db	$66,$6C,$70,$79,$64,$73,$6B,$5F,$72,$65,$61,$64,$5F,$73,$65
	db	$63,$74,$6F,$72,$5F,$69,$6D,$70,$32,$3A,$00
	ends
;
;//! seek to given track/cylinder
;int flpydsk_seek(uint32_t cyl, uint32_t head)
;{
	.line	643
	.line	644
	FLPY
	xdef	~~flpydsk_seek
	func
	.function	644
~~flpydsk_seek:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L135
	tcs
	phd
	tcd
cyl_0	set	4
head_0	set	8
	.block	644
;	int i;
;	uint32_t st0, cyl0;
;
;	k_debug_long("flpydsk_seek:cyl:", cyl);
i_1	set	0
st0_1	set	2
cyl0_1	set	6
	.sym	i,0,5,1,16
	.sym	st0,2,18,1,32
	.sym	cyl0,6,18,1,32
	.sym	cyl,4,18,6,32
	.sym	head,8,18,6,32
	.line	648
	pei	<L135+cyl_0+2
	pei	<L135+cyl_0
	pea	#^L134
	pea	#<L134
	jsl	~~k_debug_long
;	k_debug_long("flpydsk_seek:head:", head);
	.line	649
	pei	<L135+head_0+2
	pei	<L135+head_0
	pea	#^L134+18
	pea	#<L134+18
	jsl	~~k_debug_long
;
;	if (_CurrentDrive >= 4)
	.line	651
;		return -1;
	sep	#$20
	longa	off
	lda	|~~_CurrentDrive
	cmp	#<$4
	rep	#$20
	longa	on
	bcs	L138
	brl	L10044
L138:
	.line	652
	lda	#$ffff
L139:
	tay
	lda	<L135+2
	sta	<L135+2+8
	lda	<L135+1
	sta	<L135+1+8
	pld
	tsc
	clc
	adc	#L135+8
	tcs
	tya
	rtl
;
;	for (i = 0; i < 10; i++)
L10044:
	.line	654
	stz	<L136+i_1
L10047:
;	{
	.line	655
;
;		//! send the command
;		flpydsk_send_command(FDC_CMD_SEEK);
	.line	658
	pea	#<$f
	jsl	~~flpydsk_send_command
;		flpydsk_send_command((head) << 2 | _CurrentDrive);
	.line	659
	lda	<L135+head_0
	sta	<R0
	lda	<L135+head_0+2
	sta	<R0+2
	asl	<R0
	rol	<R0+2
	asl	<R0
	rol	<R0+2
	lda	|~~_CurrentDrive
	and	#$ff
	sta	<R1
	stz	<R1+2
	lda	<R1
	ora	<R0
	sta	<R2
	lda	<R1+2
	ora	<R0+2
	sta	<R2+2
	pei	<R2
	jsl	~~flpydsk_send_command
;		flpydsk_send_command(cyl);
	.line	660
	pei	<L135+cyl_0
	jsl	~~flpydsk_send_command
;
;		//! wait for the results phase IRQ
;		flpydsk_wait_irq();
	.line	663
L10048:
	lda	|~~_FloppyDiskIRQ
	and	#$ff
	beq	L140
	brl	L10049
L140:
	.line	663
	brl	L10048
L10049:
	.line	663
	sep	#$20
	longa	off
	stz	|~~_FloppyDiskIRQ
	rep	#$20
	longa	on
	.line	663
;		flpydsk_check_int(&st0, &cyl0);
	.line	664
	pea	#0
	clc
	tdc
	adc	#<L136+cyl0_1
	pha
	pea	#0
	clc
	tdc
	adc	#<L136+st0_1
	pha
	jsl	~~flpydsk_check_int
;
;		//! found the cylinder?
;		if (cyl0 == cyl)
	.line	667
;			return 0;
	lda	<L136+cyl0_1
	cmp	<L135+cyl_0
	bne	L141
	lda	<L136+cyl0_1+2
	cmp	<L135+cyl_0+2
L141:
	beq	L142
	brl	L10050
L142:
	.line	668
	lda	#$0
	brl	L139
;	}
L10050:
	.line	669
L10045:
	inc	<L136+i_1
	sec
	lda	<L136+i_1
	sbc	#<$a
	bvs	L143
	eor	#$8000
L143:
	bmi	L144
	brl	L10047
L144:
L10046:
;
;	return -1;
	.line	671
	lda	#$ffff
	brl	L139
;}
	.line	672
	.endblock	672
L135	equ	22
L136	equ	13
	ends
	efunc
	.endfunc	672,13,22
	.line	672
	data
L134:
	db	$66,$6C,$70,$79,$64,$73,$6B,$5F,$73,$65,$65,$6B,$3A,$63,$79
	db	$6C,$3A,$00,$66,$6C,$70,$79,$64,$73,$6B,$5F,$73,$65,$65,$6B
	db	$3A,$68,$65,$61,$64,$3A,$00
	ends
;
;//============================================================================
;//    INTERFACE FUNCTIONS
;//============================================================================
;
;//! convert LBA to CHS
;void flpydsk_lba_to_chs(int lba, int *head, int *track, int *sector)
;{
	.line	679
	.line	680
	FLPY
	xdef	~~flpydsk_lba_to_chs
	func
	.function	680
~~flpydsk_lba_to_chs:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L146
	tcs
	phd
	tcd
lba_0	set	4
head_0	set	6
track_0	set	10
sector_0	set	14
	.block	680
;
;	*head = (lba % (FLPY_SECTORS_PER_TRACK * 2)) / (FLPY_SECTORS_PER_TRACK);
	.sym	lba,4,5,6,16
	.sym	head,6,133,6,32
	.sym	track,10,133,6,32
	.sym	sector,14,133,6,32
	.line	682
	ldy	#$0
	lda	<L146+lba_0
	bpl	L149
	dey
L149:
	sta	<R0
	sty	<R0+2
	pea	#^$24
	pea	#<$24
	pei	<R0+2
	pei	<R0
	xref	~~~lmod
	jsl	~~~lmod
	sta	<R0
	stx	<R0+2
	pea	#^$12
	pea	#<$12
	pei	<R0+2
	pei	<R0
	xref	~~~ldiv
	jsl	~~~ldiv
	sta	<R0
	stx	<R0+2
	lda	<R0
	sta	[<L146+head_0]
;	*track = lba / (FLPY_SECTORS_PER_TRACK * 2);
	.line	683
	ldy	#$0
	lda	<L146+lba_0
	bpl	L150
	dey
L150:
	sta	<R0
	sty	<R0+2
	pea	#^$24
	pea	#<$24
	pei	<R0+2
	pei	<R0
	xref	~~~ldiv
	jsl	~~~ldiv
	sta	<R0
	stx	<R0+2
	lda	<R0
	sta	[<L146+track_0]
;	*sector = lba % FLPY_SECTORS_PER_TRACK + 1;
	.line	684
	lda	<L146+lba_0
	ldx	#<$12
	xref	~~~mod
	jsl	~~~mod
	sta	<R0
	lda	<R0
	ina
	sta	[<L146+sector_0]
;}
	.line	685
L151:
	lda	<L146+2
	sta	<L146+2+14
	lda	<L146+1
	sta	<L146+1+14
	pld
	tsc
	clc
	adc	#L146+14
	tcs
	rtl
	.endblock	685
L146	equ	4
L147	equ	5
	ends
	efunc
	.endfunc	685,5,4
	.line	685
;
;//! install floppy driver
;void flpydsk_install(int irq)
;{
	.line	688
	.line	689
	FLPY
	xdef	~~flpydsk_install
	func
	.function	689
~~flpydsk_install:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L152
	tcs
	phd
	tcd
irq_0	set	4
	.block	689
;
;	//! install irq handler
;	//setvect(irq, i816_flpy_irq);
;
;	//! initialize the DMA for FDC
;	flpydsk_initialize_dma();
	.sym	irq,4,5,6,16
	.line	695
	jsl	~~flpydsk_initialize_dma
;
;	//! reset the fdc
;	flpydsk_reset();
	.line	698
	jsl	~~flpydsk_reset
;
;	//flpydsk_control_motor(TRUE);
;
;	//! set drive information
;	flpydsk_drive_data(13, 1, 0xf, TRUE);
	.line	703
	pea	#<$1
	pea	#^$f
	pea	#<$f
	pea	#^$1
	pea	#<$1
	pea	#^$d
	pea	#<$d
	jsl	~~flpydsk_drive_data
;}
	.line	704
L155:
	lda	<L152+2
	sta	<L152+2+2
	lda	<L152+1
	sta	<L152+1+2
	pld
	tsc
	clc
	adc	#L152+2
	tcs
	rtl
	.endblock	704
L152	equ	0
L153	equ	1
	ends
	efunc
	.endfunc	704,1,0
	.line	704
;
;//! set current working drive
;void flpydsk_set_working_drive(uint8_t drive)
;{
	.line	707
	.line	708
	FLPY
	xdef	~~flpydsk_set_working_drive
	func
	.function	708
~~flpydsk_set_working_drive:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L156
	tcs
	phd
	tcd
drive_0	set	4
	.block	708
;	if (drive < 4)
	.sym	drive,4,14,6,8
	.line	709
;		_CurrentDrive = drive;
	sep	#$20
	longa	off
	lda	<L156+drive_0
	cmp	#<$4
	rep	#$20
	longa	on
	bcc	L159
	brl	L10051
L159:
	.line	710
	sep	#$20
	longa	off
	lda	<L156+drive_0
	sta	|~~_CurrentDrive
	rep	#$20
	longa	on
;}
L10051:
	.line	711
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
	.endblock	711
L156	equ	0
L157	equ	1
	ends
	efunc
	.endfunc	711,1,0
	.line	711
;
;//! get current working drive
;uint8_t flpydsk_get_working_drive()
;{
	.line	714
	.line	715
	FLPY
	xdef	~~flpydsk_get_working_drive
	func
	.function	715
~~flpydsk_get_working_drive:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L161
	tcs
	phd
	tcd
	.block	715
;
;	return _CurrentDrive;
	.line	717
	lda	|~~_CurrentDrive
	and	#$ff
L164:
	tay
	pld
	tsc
	clc
	adc	#L161
	tcs
	tya
	rtl
;}
	.line	718
	.endblock	718
L161	equ	0
L162	equ	1
	ends
	efunc
	.endfunc	718,1,0
	.line	718
;
;//! read a sector
;uint8_t* flpydsk_read_sector(int sectorLBA)
;{
	.line	721
	.line	722
	FLPY
	xdef	~~flpydsk_read_sector
	func
	.function	722
~~flpydsk_read_sector:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L165
	tcs
	phd
	tcd
sectorLBA_0	set	4
	.block	722
;	int head = 0, track = 0, sector = 1;
;
;	k_debug_long("flpydsk_read_sector:sectorLBA:", sectorLBA);
head_1	set	0
track_1	set	2
sector_1	set	4
	.sym	head,0,5,1,16
	.sym	track,2,5,1,16
	.sym	sector,4,5,1,16
	.sym	sectorLBA,4,5,6,16
	stz	<L166+head_1
	stz	<L166+track_1
	lda	#$1
	sta	<L166+sector_1
	.line	725
	ldy	#$0
	lda	<L165+sectorLBA_0
	bpl	L168
	dey
L168:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L145
	pea	#<L145
	jsl	~~k_debug_long
;
;	if (_CurrentDrive >= 4)
	.line	727
;		return 0;
	sep	#$20
	longa	off
	lda	|~~_CurrentDrive
	cmp	#<$4
	rep	#$20
	longa	on
	bcs	L169
	brl	L10052
L169:
	.line	728
	lda	#$0
	tax
	lda	#$0
L170:
	tay
	lda	<L165+2
	sta	<L165+2+2
	lda	<L165+1
	sta	<L165+1+2
	pld
	tsc
	clc
	adc	#L165+2
	tcs
	tya
	rtl
;
;	//! convert LBA sector to CHS
;
;	flpydsk_lba_to_chs(sectorLBA, &head, &track, &sector);
L10052:
	.line	732
	pea	#0
	clc
	tdc
	adc	#<L166+sector_1
	pha
	pea	#0
	clc
	tdc
	adc	#<L166+track_1
	pha
	pea	#0
	clc
	tdc
	adc	#<L166+head_1
	pha
	pei	<L165+sectorLBA_0
	jsl	~~flpydsk_lba_to_chs
;
;	//! turn motor on and seek to track
;	flpydsk_control_motor(TRUE);
	.line	735
	pea	#<$1
	jsl	~~flpydsk_control_motor
;	if (flpydsk_seek(track, head) != 0)
	.line	736
;	{
	ldy	#$0
	lda	<L166+head_1
	bpl	L171
	dey
L171:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	lda	<L166+track_1
	bpl	L172
	dey
L172:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~flpydsk_seek
	tax
	bne	L173
	brl	L10053
L173:
	.line	737
;		flpydsk_control_motor(FALSE);
	.line	738
	pea	#<$0
	jsl	~~flpydsk_control_motor
;		k_debug_long("flpydsk_read_sector:sectorLBA:exit:", 0);
	.line	739
	pea	#^$0
	pea	#<$0
	pea	#^L145+31
	pea	#<L145+31
	jsl	~~k_debug_long
;		return 0;
	.line	740
	lda	#$0
	tax
	lda	#$0
	brl	L170
;	}
	.line	741
;	//! read sector and turn motor off
;	flpydsk_read_sector_imp2(head, track, sector);
L10053:
	.line	743
	pei	<L166+sector_1
	pei	<L166+track_1
	pei	<L166+head_1
	jsl	~~flpydsk_read_sector_imp2
;	flpydsk_control_motor(FALSE);
	.line	744
	pea	#<$0
	jsl	~~flpydsk_control_motor
;
;	//! warning: this is a bit hackish
;	return (uint8_t*) DMA_BUFFER;
	.line	747
	ldx	|~~DMA_BUFFER+2
	lda	|~~DMA_BUFFER
	brl	L170
;}
	.line	748
	.endblock	748
L165	equ	14
L166	equ	9
	ends
	efunc
	.endfunc	748,9,14
	.line	748
	data
L145:
	db	$66,$6C,$70,$79,$64,$73,$6B,$5F,$72,$65,$61,$64,$5F,$73,$65
	db	$63,$74,$6F,$72,$3A,$73,$65,$63,$74,$6F,$72,$4C,$42,$41,$3A
	db	$00,$66,$6C,$70,$79,$64,$73,$6B,$5F,$72,$65,$61,$64,$5F,$73
	db	$65,$63,$74,$6F,$72,$3A,$73,$65,$63,$74,$6F,$72,$4C,$42,$41
	db	$3A,$65,$78,$69,$74,$3A,$00
	ends
;
;
;//============================================================================
;//    INTERFACE CLASS BODIES
;//============================================================================
;//****************************************************************************
;//**
;//**    END[flpydsk.cpp]
;//**
;//****************************************************************************
;
	.line	758
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\flpydsk.c",721
	xref	~~k_debug_hex
	xref	~~k_debug_long
	xref	~~k_debug_integer
	xref	~~k_debug_char
	xref	~~k_debug_string
	xref	~~sleep
	.sym	~~flpydsk_seek,~~flpydsk_seek,69,2,0
	.sym	~~flpydsk_read_sector_imp2,~~flpydsk_read_sector_imp2,65,2,0
	.sym	~~flpydsk_read_sector_imp,~~flpydsk_read_sector_imp,65,2,0
	.sym	~~flpydsk_enable_controller,~~flpydsk_enable_controller,65,2,0
	.sym	~~flpydsk_disable_controller,~~flpydsk_disable_controller,65,2,0
	.sym	~~flpydsk_calibrate,~~flpydsk_calibrate,69,2,0
	.sym	~~flpydsk_drive_data,~~flpydsk_drive_data,65,2,0
	.sym	~~flpydsk_control_motor,~~flpydsk_control_motor,65,2,0
	.sym	~~flpydsk_check_int,~~flpydsk_check_int,65,2,0
	.sym	~~i816_flpy_irq,~~i816_flpy_irq,65,2,0
	.sym	~~flpydsk_write_ccr,~~flpydsk_write_ccr,65,2,0
	.sym	~~flpydsk_read_data,~~flpydsk_read_data,78,2,0
	.sym	~~flpydsk_read_byte,~~flpydsk_read_byte,78,2,0
	.sym	~~flpydsk_write_dor,~~flpydsk_write_dor,65,2,0
	.sym	~~flpydsk_read_status,~~flpydsk_read_status,78,2,0
	.sym	~~flpydsk_dma_write,~~flpydsk_dma_write,65,2,0
	.sym	~~flpydsk_dma_read,~~flpydsk_dma_read,65,2,0
	.sym	~~flpydsk_initialize_dma,~~flpydsk_initialize_dma,65,2,0
	.sym	~~_CurrentDrive,~~_CurrentDrive,14,3,8
	.sym	~~DMA_BUFFER,~~DMA_BUFFER,142,2,32
	.sym	~~FLPY_SECTORS_PER_TRACK,~~FLPY_SECTORS_PER_TRACK,5,2,16
	.sym	~~FLOPPY_IRQ,~~FLOPPY_IRQ,5,2,16
	.sym	~~flpydsk_reset,~~flpydsk_reset,65,2,0
	.sym	~~flpydsk_send_command,~~flpydsk_send_command,65,2,0
	.sym	~~flpydsk_lba_to_chs,~~flpydsk_lba_to_chs,65,2,0
	.sym	~~flpydsk_read_sector,~~flpydsk_read_sector,1102,2,32
	.sym	~~flpydsk_get_working_drive,~~flpydsk_get_working_drive,78,2,0
	.sym	~~flpydsk_set_working_drive,~~flpydsk_set_working_drive,65,2,0
	.sym	~~flpydsk_install,~~flpydsk_install,65,2,0
	.sym	~~_FloppyDiskIRQ,~~_FloppyDiskIRQ,14,2,8
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
	.sym	PCUR_PALETTE_MAP,0,138,14,32,54
	.sym	CUR_PALETTE_MAP,0,10,14,400,54
	.sym	PCLICKDETECTED,0,138,14,32,53
	.sym	CLICKDETECTED,0,10,14,64,53
	.sym	OBJECTCLICKED,0,641,14,32
	.sym	MemoryCallback,0,641,14,32
	.sym	PFXMEMORYMAP,0,138,14,32,52
	.sym	FXMEMORYMAP,0,10,14,2072,52
	.sym	UMM_HEAP_INFO,0,10,14,256,51
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
	.sym	~~k_debug_hex,~~k_debug_hex,65,18,0
	.sym	~~k_debug_long,~~k_debug_long,65,18,0
	.sym	~~k_debug_integer,~~k_debug_integer,65,18,0
	.sym	~~k_debug_char,~~k_debug_char,65,18,0
	.sym	~~k_debug_string,~~k_debug_string,65,18,0
	.sym	~~sleep,~~sleep,65,18,0
	.sym	PDEBUGBYTEBITS,0,138,14,32,47
	.sym	DEBUGBYTEBITS,0,10,14,8,47
	.sym	PFXENVIRONMENT,0,138,14,32,46
	.sym	FXENVIRONMENT,0,10,14,96,46
	.sym	PFXZERPOPAGE,0,138,14,32,45
	.sym	FXZERPOPAGE,0,10,14,448,45
	.sym	KERNELTRAPCALL,0,641,14,32
	.sym	FOREACHNODEUNTIL,0,654,14,32
	.sym	FOREACHNODE,0,641,14,32
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

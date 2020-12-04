;:ts=8
R0	equ	1
R1	equ	5
R2	equ	9
R3	equ	13
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxmemorymanager.c",0
;
;#include "fxmemorymanager.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxmemorymanager.h",0
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxmemorymanager.c",2
;#include "fxos_build_parameters.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos_build_parameters.h",0
	.line	32
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxmemorymanager.c",3
;
;static ULONG THIS_MODULE = 0xB0000000;
	data
~~THIS_MODULE:
	dl	$B0000000
	ends
;
;//LPVOID heap_start = (LPVOID)(0x040000);
;//LPVOID heap_end   = (LPVOID)(0x03FFFF);
;
;LPVOID heap_start = (LPVOID)FXOS_BUILD_NEAR_HEAP_ADDR;
	data
	xdef	~~heap_start
~~heap_start:
	dl	$60000
	ends
;LPVOID heap_end   = (LPVOID)FXOS_BUILD_NEAR_HEAP_TOP;
	data
	xdef	~~heap_end
~~heap_end:
	dl	$6FFFF
	ends
;
;
;ULONG  k_heap_integrity_check(void)
;{
	.line	14
	.line	15
	code
	xdef	~~k_heap_integrity_check
	func
	.function	15
~~k_heap_integrity_check:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L2
	tcs
	phd
	tcd
	.block	15
;	UMM_HEAP_INFO *pheapInfo = NULL;
;
;	if(!umm_integrity_check())
pheapInfo_1	set	0
	.sym	pheapInfo,0,138,1,32,62
	stz	<L3+pheapInfo_1
	stz	<L3+pheapInfo_1+2
	.line	18
;		k_exec_throw_exception(THIS_MODULE,0xFFF0000,"Memory Fault: Heap corruption detected.",-1);
	jsl	~~umm_integrity_check
	tax
	beq	L5
	brl	L10001
L5:
	.line	19
	pea	#<$ffffffff
	pea	#^L1
	pea	#<L1
	pea	#^$fff0000
	pea	#<$fff0000
	lda	|~~THIS_MODULE+2
	pha
	lda	|~~THIS_MODULE
	pha
	jsl	~~k_exec_throw_exception
;
;	pheapInfo = umm_info(NULL,0);
L10001:
	.line	21
	pea	#<$0
	pea	#^$0
	pea	#<$0
	jsl	~~umm_info
	sta	<L3+pheapInfo_1
	stx	<L3+pheapInfo_1+2
;
;	/*
;	k_debug_integer("heap:blockSize:",pheapInfo->blockSize);
;	k_debug_integer("heap:freeBlocks:",pheapInfo->freeBlocks);
;	k_debug_integer("heap:maxFreeContiguousBlocks:",pheapInfo->freeEntries);
;	k_debug_integer("heap:totalBlocks:",pheapInfo->totalBlocks);
;	k_debug_integer("heap:usedBlocks:",pheapInfo->usedBlocks);
;	*/
;
;	k_getZeroPage()->availableHeapMemory = (pheapInfo->freeBlocks * pheapInfo->blockSize);
	.line	31
	jsl	~~k_getZeroPage
	sta	<R0
	stx	<R0+2
	ldy	#$1e
	lda	[<L3+pheapInfo_1],Y
	pha
	ldy	#$1c
	lda	[<L3+pheapInfo_1],Y
	pha
	ldy	#$16
	lda	[<L3+pheapInfo_1],Y
	pha
	ldy	#$14
	lda	[<L3+pheapInfo_1],Y
	pha
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R1
	stx	<R1+2
	lda	<R1
	ldy	#$24
	sta	[<R0],Y
	lda	<R1+2
	ldy	#$26
	sta	[<R0],Y
;	k_getZeroPage()->availableHeapMemoryK = k_getZeroPage()->availableHeapMemory/1024;
	.line	32
	jsl	~~k_getZeroPage
	sta	<R0
	stx	<R0+2
	jsl	~~k_getZeroPage
	sta	<R2
	stx	<R2+2
	ldy	#$26
	lda	[<R2],Y
	pha
	ldy	#$24
	lda	[<R2],Y
	pha
	lda	#$a
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R1
	stx	<R1+2
	lda	<R1
	ldy	#$28
	sta	[<R0],Y
	lda	<R1+2
	ldy	#$2a
	sta	[<R0],Y
;
;	//k_debug_long("heap:availableHeapMemory:", k_getZeroPage()->availableHeapMemory);
;
;	return (pheapInfo->freeBlocks * pheapInfo->blockSize);
	.line	36
	ldy	#$1e
	lda	[<L3+pheapInfo_1],Y
	pha
	ldy	#$1c
	lda	[<L3+pheapInfo_1],Y
	pha
	ldy	#$16
	lda	[<L3+pheapInfo_1],Y
	pha
	ldy	#$14
	lda	[<L3+pheapInfo_1],Y
	pha
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R0
	stx	<R0+2
	ldx	<R0+2
	lda	<R0
L6:
	tay
	pld
	tsc
	clc
	adc	#L2
	tcs
	tya
	rtl
;}
	.line	37
	.endblock	37
L2	equ	16
L3	equ	13
	ends
	efunc
	.endfunc	37,13,16
	.line	37
	data
L1:
	db	$4D,$65,$6D,$6F,$72,$79,$20,$46,$61,$75,$6C,$74,$3A,$20,$48
	db	$65,$61,$70,$20,$63,$6F,$72,$72,$75,$70,$74,$69,$6F,$6E,$20
	db	$64,$65,$74,$65,$63,$74,$65,$64,$2E,$00
	ends
;
;
;ULONG k_check_system_memory(MemoryCallback callback)
;{
	.line	40
	.line	41
	code
	xdef	~~k_check_system_memory
	func
	.function	41
~~k_check_system_memory:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L8
	tcs
	phd
	tcd
callback_0	set	4
	.block	41
;	ULONG size = MEM_SYSTEM_MIN; // first three segments that got us here
;	ULONG bank = 0;
;	ULONG offset  = 0;
;	ULONG block = 0;
;	
;	//umm_integrity_check();
;
;	for(bank = MEM_USER_FLOOR;bank < MEM_USER_CEILING;bank+=0x010000)
size_1	set	0
bank_1	set	4
offset_1	set	8
block_1	set	12
	.sym	size,0,18,1,32
	.sym	bank,4,18,1,32
	.sym	offset,8,18,1,32
	.sym	block,12,18,1,32
	.sym	callback,4,641,6,32
	lda	#$0
	sta	<L9+size_1
	lda	#$3
	sta	<L9+size_1+2
	stz	<L9+bank_1
	stz	<L9+bank_1+2
	stz	<L9+offset_1
	stz	<L9+offset_1+2
	stz	<L9+block_1
	stz	<L9+block_1+2
	.line	49
	lda	#$0
	sta	<L9+bank_1
	lda	#$19
	sta	<L9+bank_1+2
L10004:
;	{
	.line	50
;		block = 0;
	.line	51
	stz	<L9+block_1
	stz	<L9+block_1+2
;		//k_debug_hex("Checking Segment: 0x",(UCHAR)(segment >> 16));
;		for(offset = 0x0000;offset < 0xFFFF;offset++)
	.line	53
	stz	<L9+offset_1
	stz	<L9+offset_1+2
L10007:
;		{
	.line	54
;			*((unsigned char FAR*)(bank + offset)) = 0;
	.line	55
	clc
	lda	<L9+bank_1
	adc	<L9+offset_1
	sta	<R0
	lda	<L9+bank_1+2
	adc	<L9+offset_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$0
	sta	[<R0]
	rep	#$20
	longa	on
;			*((unsigned char FAR*)(bank + offset)) = 1;
	.line	56
	clc
	lda	<L9+bank_1
	adc	<L9+offset_1
	sta	<R0
	lda	<L9+bank_1+2
	adc	<L9+offset_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$1
	sta	[<R0]
	rep	#$20
	longa	on
;			if(*((unsigned char FAR*)(bank + offset)) == 1)
	.line	57
;			{
	clc
	lda	<L9+bank_1
	adc	<L9+offset_1
	sta	<R0
	lda	<L9+bank_1+2
	adc	<L9+offset_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	[<R0]
	cmp	#<$1
	rep	#$20
	longa	on
	beq	L11
	brl	L10008
L11:
	.line	58
;				//size++;
;				block++;
	.line	60
	inc	<L9+block_1
	bne	L12
	inc	<L9+block_1+2
L12:
;				*((unsigned char FAR*)(bank + offset)) = 0;
	.line	61
	clc
	lda	<L9+bank_1
	adc	<L9+offset_1
	sta	<R0
	lda	<L9+bank_1+2
	adc	<L9+offset_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$0
	sta	[<R0]
	rep	#$20
	longa	on
;			}
	.line	62
;		}
L10008:
	.line	63
L10005:
	inc	<L9+offset_1
	bne	L13
	inc	<L9+offset_1+2
L13:
	lda	<L9+offset_1
	cmp	#<$ffff
	lda	<L9+offset_1+2
	sbc	#^$ffff
	bcs	L14
	brl	L10007
L14:
L10006:
;		//k_debug_long("Block:",block);
;		size+=block;
	.line	65
	clc
	lda	<L9+size_1
	adc	<L9+block_1
	sta	<L9+size_1
	lda	<L9+size_1+2
	adc	<L9+block_1+2
	sta	<L9+size_1+2
;
;		if(callback!=NULL)
	.line	67
;		{
	lda	<L8+callback_0
	ora	<L8+callback_0+2
	bne	L15
	brl	L10009
L15:
	.line	68
;			callback((UCHAR)(bank >> 16),block,size);
	.line	69
	pei	<L9+size_1+2
	pei	<L9+size_1
	pei	<L9+block_1+2
	pei	<L9+block_1
	pei	<L9+bank_1+2
	pei	<L9+bank_1
	lda	#$10
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R0
	stx	<R0+2
	pei	<R0
	ldx	<L8+callback_0+2
	lda	<L8+callback_0
	xref	~~~lcal
	jsl	~~~lcal
;		}
	.line	70
;
;	}
L10009:
	.line	72
L10002:
	clc
	lda	#$0
	adc	<L9+bank_1
	sta	<L9+bank_1
	lda	#$1
	adc	<L9+bank_1+2
	sta	<L9+bank_1+2
	lda	<L9+bank_1
	cmp	#<$af0000
	lda	<L9+bank_1+2
	sbc	#^$af0000
	bcs	L16
	brl	L10004
L16:
L10003:
;
;	k_debug_long("Total Memory:",size);
	.line	74
	pei	<L9+size_1+2
	pei	<L9+size_1
	pea	#^L7
	pea	#<L7
	jsl	~~k_debug_long
;
;	return size;
	.line	76
	ldx	<L9+size_1+2
	lda	<L9+size_1
L17:
	tay
	lda	<L8+2
	sta	<L8+2+4
	lda	<L8+1
	sta	<L8+1+4
	pld
	tsc
	clc
	adc	#L8+4
	tcs
	tya
	rtl
;}
	.line	77
	.endblock	77
L8	equ	20
L9	equ	5
	ends
	efunc
	.endfunc	77,5,20
	.line	77
	data
L7:
	db	$54,$6F,$74,$61,$6C,$20,$4D,$65,$6D,$6F,$72,$79,$3A,$00
	ends
;
;ULONG k_fcheck_system_memory(MemoryCallback callback)
;{
	.line	79
	.line	80
	code
	xdef	~~k_fcheck_system_memory
	func
	.function	80
~~k_fcheck_system_memory:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L19
	tcs
	phd
	tcd
callback_0	set	4
	.block	80
;	ULONG size = MEM_SYSTEM_MIN; // first three segments that got us here
;	ULONG segment = 0;
;	ULONG offset  = 0;
;	ULONG block = 0;
;
;	//umm_integrity_check();
;
;	for(segment = MEM_USER_FLOOR;segment < MEM_USER_CEILING;segment+=0x010000)
size_1	set	0
segment_1	set	4
offset_1	set	8
block_1	set	12
	.sym	size,0,18,1,32
	.sym	segment,4,18,1,32
	.sym	offset,8,18,1,32
	.sym	block,12,18,1,32
	.sym	callback,4,641,6,32
	lda	#$0
	sta	<L20+size_1
	lda	#$3
	sta	<L20+size_1+2
	stz	<L20+segment_1
	stz	<L20+segment_1+2
	stz	<L20+offset_1
	stz	<L20+offset_1+2
	stz	<L20+block_1
	stz	<L20+block_1+2
	.line	88
	lda	#$0
	sta	<L20+segment_1
	lda	#$19
	sta	<L20+segment_1+2
L10012:
;	{
	.line	89
;		block = 0;
	.line	90
	stz	<L20+block_1
	stz	<L20+block_1+2
;		//k_debug_hex("Checking Segment: 0x",(UCHAR)(segment >> 16));
;		for(offset = 0x0000;offset < 0x01FF;offset++)
	.line	92
	stz	<L20+offset_1
	stz	<L20+offset_1+2
L10015:
;		{
	.line	93
;			*((unsigned char FAR*)(segment + offset)) = 0;
	.line	94
	clc
	lda	<L20+segment_1
	adc	<L20+offset_1
	sta	<R0
	lda	<L20+segment_1+2
	adc	<L20+offset_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$0
	sta	[<R0]
	rep	#$20
	longa	on
;			*((unsigned char FAR*)(segment + offset)) = 1;
	.line	95
	clc
	lda	<L20+segment_1
	adc	<L20+offset_1
	sta	<R0
	lda	<L20+segment_1+2
	adc	<L20+offset_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$1
	sta	[<R0]
	rep	#$20
	longa	on
;			if(*((unsigned char FAR*)(segment + offset)) == 1)
	.line	96
;			{
	clc
	lda	<L20+segment_1
	adc	<L20+offset_1
	sta	<R0
	lda	<L20+segment_1+2
	adc	<L20+offset_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	[<R0]
	cmp	#<$1
	rep	#$20
	longa	on
	beq	L22
	brl	L10016
L22:
	.line	97
;				block++;
	.line	98
	inc	<L20+block_1
	bne	L23
	inc	<L20+block_1+2
L23:
;				*((unsigned char FAR*)(segment + offset)) = 0;
	.line	99
	clc
	lda	<L20+segment_1
	adc	<L20+offset_1
	sta	<R0
	lda	<L20+segment_1+2
	adc	<L20+offset_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$0
	sta	[<R0]
	rep	#$20
	longa	on
;			}
	.line	100
;		}
L10016:
	.line	101
L10013:
	inc	<L20+offset_1
	bne	L24
	inc	<L20+offset_1+2
L24:
	lda	<L20+offset_1
	cmp	#<$1ff
	lda	<L20+offset_1+2
	sbc	#^$1ff
	bcs	L25
	brl	L10015
L25:
L10014:
;		if(block > 0)
	.line	102
;			block = 0xFFFF;
	lda	#$0
	cmp	<L20+block_1
	lda	#$0
	sbc	<L20+block_1+2
	bcc	L26
	brl	L10017
L26:
	.line	103
	lda	#$ffff
	sta	<L20+block_1
	lda	#$0
	sta	<L20+block_1+2
;
;		//k_debug_long("Block:",block);
;		size+=block;
L10017:
	.line	106
	clc
	lda	<L20+size_1
	adc	<L20+block_1
	sta	<L20+size_1
	lda	<L20+size_1+2
	adc	<L20+block_1+2
	sta	<L20+size_1+2
;
;		if(callback!=NULL)
	.line	108
;		{
	lda	<L19+callback_0
	ora	<L19+callback_0+2
	bne	L27
	brl	L10018
L27:
	.line	109
;			callback((UCHAR)(segment >> 16),block,size);
	.line	110
	pei	<L20+size_1+2
	pei	<L20+size_1
	pei	<L20+block_1+2
	pei	<L20+block_1
	pei	<L20+segment_1+2
	pei	<L20+segment_1
	lda	#$10
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R0
	stx	<R0+2
	pei	<R0
	ldx	<L19+callback_0+2
	lda	<L19+callback_0
	xref	~~~lcal
	jsl	~~~lcal
;		}
	.line	111
;
;	}
L10018:
	.line	113
L10010:
	clc
	lda	#$0
	adc	<L20+segment_1
	sta	<L20+segment_1
	lda	#$1
	adc	<L20+segment_1+2
	sta	<L20+segment_1+2
	lda	<L20+segment_1
	cmp	#<$af0000
	lda	<L20+segment_1+2
	sbc	#^$af0000
	bcs	L28
	brl	L10012
L28:
L10011:
;
;	k_debug_long("Total Memory:",size);
	.line	115
	pei	<L20+size_1+2
	pei	<L20+size_1
	pea	#^L18
	pea	#<L18
	jsl	~~k_debug_long
;
;	return size;
	.line	117
	ldx	<L20+size_1+2
	lda	<L20+size_1
L29:
	tay
	lda	<L19+2
	sta	<L19+2+4
	lda	<L19+1
	sta	<L19+1+4
	pld
	tsc
	clc
	adc	#L19+4
	tcs
	tya
	rtl
;}
	.line	118
	.endblock	118
L19	equ	20
L20	equ	5
	ends
	efunc
	.endfunc	118,5,20
	.line	118
	data
L18:
	db	$54,$6F,$74,$61,$6C,$20,$4D,$65,$6D,$6F,$72,$79,$3A,$00
	ends
;
;LPVOID k_mem_object_copy(LPVOID object,UINT size)
;{
	.line	120
	.line	121
	code
	xdef	~~k_mem_object_copy
	func
	.function	121
~~k_mem_object_copy:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L31
	tcs
	phd
	tcd
object_0	set	4
size_0	set	8
	.block	121
;	LPVOID pnew = k_mem_allocate_heap(size);
;
;	memcpy(pnew,object,size);
pnew_1	set	0
	.sym	pnew,0,129,1,32
	.sym	object,4,129,6,32
	.sym	size,8,16,6,16
	pei	<L31+size_0
	jsl	~~k_mem_allocate_heap
	sta	<L32+pnew_1
	stx	<L32+pnew_1+2
	.line	124
	pei	<L31+size_0
	pei	<L31+object_0+2
	pei	<L31+object_0
	pei	<L32+pnew_1+2
	pei	<L32+pnew_1
	jsl	~~memcpy
;
;	return pnew;
	.line	126
	ldx	<L32+pnew_1+2
	lda	<L32+pnew_1
L34:
	tay
	lda	<L31+2
	sta	<L31+2+6
	lda	<L31+1
	sta	<L31+1+6
	pld
	tsc
	clc
	adc	#L31+6
	tcs
	tya
	rtl
;}
	.line	127
	.endblock	127
L31	equ	4
L32	equ	1
	ends
	efunc
	.endfunc	127,1,4
	.line	127
;
;HANDLE k_mem_allocate_dynamic_heap(UINT size)
;{
	.line	129
	.line	130
	code
	xdef	~~k_mem_allocate_dynamic_heap
	func
	.function	130
~~k_mem_allocate_dynamic_heap:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L35
	tcs
	phd
	tcd
size_0	set	4
	.block	130
;	return NULL;
	.sym	size,4,16,6,16
	.line	131
	lda	#$0
	tax
	lda	#$0
L38:
	tay
	lda	<L35+2
	sta	<L35+2+2
	lda	<L35+1
	sta	<L35+1+2
	pld
	tsc
	clc
	adc	#L35+2
	tcs
	tya
	rtl
;}
	.line	132
	.endblock	132
L35	equ	0
L36	equ	1
	ends
	efunc
	.endfunc	132,1,0
	.line	132
;
;VOID k_mem_deallocate_dynamic_heap(HANDLE handle)
;{
	.line	134
	.line	135
	code
	xdef	~~k_mem_deallocate_dynamic_heap
	func
	.function	135
~~k_mem_deallocate_dynamic_heap:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L39
	tcs
	phd
	tcd
handle_0	set	4
	.block	135
;
;}
	.sym	handle,4,129,6,32
	.line	137
L42:
	lda	<L39+2
	sta	<L39+2+4
	lda	<L39+1
	sta	<L39+1+4
	pld
	tsc
	clc
	adc	#L39+4
	tcs
	rtl
	.endblock	137
L39	equ	0
L40	equ	1
	ends
	efunc
	.endfunc	137,1,0
	.line	137
;
;LPVOID k_mem_lock_handle(HANDLE handle)
;{
	.line	139
	.line	140
	code
	xdef	~~k_mem_lock_handle
	func
	.function	140
~~k_mem_lock_handle:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L43
	tcs
	phd
	tcd
handle_0	set	4
	.block	140
;	return NULL;
	.sym	handle,4,129,6,32
	.line	141
	lda	#$0
	tax
	lda	#$0
L46:
	tay
	lda	<L43+2
	sta	<L43+2+4
	lda	<L43+1
	sta	<L43+1+4
	pld
	tsc
	clc
	adc	#L43+4
	tcs
	tya
	rtl
;}
	.line	142
	.endblock	142
L43	equ	0
L44	equ	1
	ends
	efunc
	.endfunc	142,1,0
	.line	142
;
;VOID k_mem_unlock_handle(HANDLE handle)
;{
	.line	144
	.line	145
	code
	xdef	~~k_mem_unlock_handle
	func
	.function	145
~~k_mem_unlock_handle:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L47
	tcs
	phd
	tcd
handle_0	set	4
	.block	145
;
;}
	.sym	handle,4,129,6,32
	.line	147
L50:
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
	.endblock	147
L47	equ	0
L48	equ	1
	ends
	efunc
	.endfunc	147,1,0
	.line	147
;
;LPVOID k_mem_allocate_heap(UINT size)
;{
	.line	149
	.line	150
	code
	xdef	~~k_mem_allocate_heap
	func
	.function	150
~~k_mem_allocate_heap:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L51
	tcs
	phd
	tcd
size_0	set	4
	.block	150
;	int i = 0;
;	LPVOID p = NULL;
;
;	//k_debug_integer("k_mem_allocate_heap::enter:",size);
;	if(size)
i_1	set	0
p_1	set	2
	.sym	i,0,5,1,16
	.sym	p,2,129,1,32
	.sym	size,4,16,6,16
	stz	<L52+i_1
	stz	<L52+p_1
	stz	<L52+p_1+2
	.line	155
;	{
	lda	<L51+size_0
	bne	L54
	brl	L10019
L54:
	.line	156
;		if(size == 4)
	.line	157
;		{
	lda	<L51+size_0
	cmp	#<$4
	beq	L55
	brl	L10020
L55:
	.line	158
;			k_debug_integer("**** k_mem_allocate_heap::possible wrong size allocation ****",size);
	.line	159
	pei	<L51+size_0
	pea	#^L30
	pea	#<L30
	jsl	~~k_debug_integer
;		}
	.line	160
;		p = umm_malloc((size_t)size);
L10020:
	.line	161
	lda	<L51+size_0
	sta	<R0
	stz	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~umm_malloc
	sta	<L52+p_1
	stx	<L52+p_1+2
;		//p = umm_poison_malloc((size_t)size);
;	}
	.line	163
;	else
	brl	L10021
L10019:
;	{
	.line	165
;		k_heap_integrity_check();
	.line	166
	jsl	~~k_heap_integrity_check
;		k_exec_throw_exception(THIS_MODULE,0x00010002,"Memory allocation of size zero",-1);
	.line	167
	pea	#<$ffffffff
	pea	#^L30+62
	pea	#<L30+62
	pea	#^$10002
	pea	#<$10002
	lda	|~~THIS_MODULE+2
	pha
	lda	|~~THIS_MODULE
	pha
	jsl	~~k_exec_throw_exception
;	}
	.line	168
L10021:
;	if(!p)
	.line	169
;		k_debug_pointer("k_mem_allocate_heap::exit:",p);
	lda	<L52+p_1
	ora	<L52+p_1+2
	beq	L56
	brl	L10022
L56:
	.line	170
	pei	<L52+p_1+2
	pei	<L52+p_1
	pea	#^L30+93
	pea	#<L30+93
	jsl	~~k_debug_pointer
;
;	//umm_integrity_check();
;	/*
;	for(i=0;i<size;i++)
;	{
;		((LPCHAR)p)[i] = 0;
;	}
;	*/
;	return p;
L10022:
	.line	179
	ldx	<L52+p_1+2
	lda	<L52+p_1
L57:
	tay
	lda	<L51+2
	sta	<L51+2+2
	lda	<L51+1
	sta	<L51+1+2
	pld
	tsc
	clc
	adc	#L51+2
	tcs
	tya
	rtl
;}
	.line	180
	.endblock	180
L51	equ	10
L52	equ	5
	ends
	efunc
	.endfunc	180,5,10
	.line	180
	data
L30:
	db	$2A,$2A,$2A,$2A,$20,$6B,$5F,$6D,$65,$6D,$5F,$61,$6C,$6C,$6F
	db	$63,$61,$74,$65,$5F,$68,$65,$61,$70,$3A,$3A,$70,$6F,$73,$73
	db	$69,$62,$6C,$65,$20,$77,$72,$6F,$6E,$67,$20,$73,$69,$7A,$65
	db	$20,$61,$6C,$6C,$6F,$63,$61,$74,$69,$6F,$6E,$20,$2A,$2A,$2A
	db	$2A,$00,$4D,$65,$6D,$6F,$72,$79,$20,$61,$6C,$6C,$6F,$63,$61
	db	$74,$69,$6F,$6E,$20,$6F,$66,$20,$73,$69,$7A,$65,$20,$7A,$65
	db	$72,$6F,$00,$6B,$5F,$6D,$65,$6D,$5F,$61,$6C,$6C,$6F,$63,$61
	db	$74,$65,$5F,$68,$65,$61,$70,$3A,$3A,$65,$78,$69,$74,$3A,$00
	ends
;
;VOID k_mem_deallocate_heap(LPVOID lpBuffer)
;{
	.line	182
	.line	183
	code
	xdef	~~k_mem_deallocate_heap
	func
	.function	183
~~k_mem_deallocate_heap:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L59
	tcs
	phd
	tcd
lpBuffer_0	set	4
	.block	183
;	//k_debug_pointer("k_mem_deallocate_heap:",lpBuffer);
;	if(lpBuffer!=NULL)
	.sym	lpBuffer,4,129,6,32
	.line	185
;		umm_free(lpBuffer);
	lda	<L59+lpBuffer_0
	ora	<L59+lpBuffer_0+2
	bne	L62
	brl	L10023
L62:
	.line	186
	pei	<L59+lpBuffer_0+2
	pei	<L59+lpBuffer_0
	jsl	~~umm_free
;		//umm_poison_free(lpBuffer);
;	else
	brl	L10024
L10023:
;		k_exec_throw_exception(THIS_MODULE,0x00010001,"Memory deallocation of NULL reference",-1);
	.line	189
	pea	#<$ffffffff
	pea	#^L58
	pea	#<L58
	pea	#^$10001
	pea	#<$10001
	lda	|~~THIS_MODULE+2
	pha
	lda	|~~THIS_MODULE
	pha
	jsl	~~k_exec_throw_exception
L10024:
;}
	.line	190
L63:
	lda	<L59+2
	sta	<L59+2+4
	lda	<L59+1
	sta	<L59+1+4
	pld
	tsc
	clc
	adc	#L59+4
	tcs
	rtl
	.endblock	190
L59	equ	0
L60	equ	1
	ends
	efunc
	.endfunc	190,1,0
	.line	190
	data
L58:
	db	$4D,$65,$6D,$6F,$72,$79,$20,$64,$65,$61,$6C,$6C,$6F,$63,$61
	db	$74,$69,$6F,$6E,$20,$6F,$66,$20,$4E,$55,$4C,$4C,$20,$72,$65
	db	$66,$65,$72,$65,$6E,$63,$65,$00
	ends
;
;LPVOID k_calloc(UINT num,UINT bytes)
;{
	.line	192
	.line	193
	code
	xdef	~~k_calloc
	func
	.function	193
~~k_calloc:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L65
	tcs
	phd
	tcd
num_0	set	4
bytes_0	set	6
	.block	193
;	return k_mem_allocate_heap(num * bytes);
	.sym	num,4,16,6,16
	.sym	bytes,6,16,6,16
	.line	194
	lda	<L65+num_0
	ldx	<L65+bytes_0
	xref	~~~mul
	jsl	~~~mul
	pha
	jsl	~~k_mem_allocate_heap
	sta	<R0
	stx	<R0+2
	ldx	<R0+2
	lda	<R0
L68:
	tay
	lda	<L65+2
	sta	<L65+2+4
	lda	<L65+1
	sta	<L65+1+4
	pld
	tsc
	clc
	adc	#L65+4
	tcs
	tya
	rtl
;}
	.line	195
	.endblock	195
L65	equ	4
L66	equ	5
	ends
	efunc
	.endfunc	195,5,4
	.line	195
;
;VOID k_free(LPVOID ptr)
;{
	.line	197
	.line	198
	code
	xdef	~~k_free
	func
	.function	198
~~k_free:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L69
	tcs
	phd
	tcd
ptr_0	set	4
	.block	198
;	k_mem_deallocate_heap(ptr);
	.sym	ptr,4,129,6,32
	.line	199
	pei	<L69+ptr_0+2
	pei	<L69+ptr_0
	jsl	~~k_mem_deallocate_heap
;}
	.line	200
L72:
	lda	<L69+2
	sta	<L69+2+4
	lda	<L69+1
	sta	<L69+1+4
	pld
	tsc
	clc
	adc	#L69+4
	tcs
	rtl
	.endblock	200
L69	equ	0
L70	equ	1
	ends
	efunc
	.endfunc	200,1,0
	.line	200
;
;
;
	.line	202
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxmemorymanager.c",197
	xref	~~umm_free
	xref	~~umm_malloc
	xref	~~umm_integrity_check
	xref	~~umm_info
	xref	~~k_exec_throw_exception
	xref	~~k_debug_long
	xref	~~k_debug_integer
	xref	~~k_debug_pointer
	xref	~~k_getZeroPage
	xref	~~memcpy
	.sym	~~heap_end,~~heap_end,129,2,32
	.sym	~~heap_start,~~heap_start,129,2,32
	.sym	~~THIS_MODULE,~~THIS_MODULE,18,3,32
	.sym	~~k_free,~~k_free,65,2,0
	.sym	~~k_calloc,~~k_calloc,1089,2,32
	.sym	~~k_mem_deallocate_heap,~~k_mem_deallocate_heap,65,2,0
	.sym	~~k_mem_allocate_heap,~~k_mem_allocate_heap,1089,2,32
	.sym	~~k_mem_unlock_handle,~~k_mem_unlock_handle,65,2,0
	.sym	~~k_mem_lock_handle,~~k_mem_lock_handle,1089,2,32
	.sym	~~k_mem_deallocate_dynamic_heap,~~k_mem_deallocate_dynamic_heap,65,2,0
	.sym	~~k_mem_allocate_dynamic_heap,~~k_mem_allocate_dynamic_heap,1089,2,32
	.sym	~~k_fcheck_system_memory,~~k_fcheck_system_memory,82,2,0
	.sym	~~k_check_system_memory,~~k_check_system_memory,82,2,0
	.sym	~~k_mem_object_copy,~~k_mem_object_copy,1089,2,32
	.sym	~~k_heap_integrity_check,~~k_heap_integrity_check,82,2,0
	.sym	MemoryCallback,0,641,14,32
	.sym	PFXMEMORYMAP,0,138,14,32,63
	.sym	FXMEMORYMAP,0,10,14,2072,63
	.sym	~~umm_free,~~umm_free,65,18,0
	.sym	~~umm_malloc,~~umm_malloc,1089,18,32
	.sym	~~umm_integrity_check,~~umm_integrity_check,69,18,0
	.sym	~~umm_info,~~umm_info,1089,18,32
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
	.sym	~~k_exec_throw_exception,~~k_exec_throw_exception,65,18,0
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
	.sym	~~k_debug_long,~~k_debug_long,65,18,0
	.sym	~~k_debug_integer,~~k_debug_integer,65,18,0
	.sym	~~k_debug_pointer,~~k_debug_pointer,65,18,0
	.sym	~~k_getZeroPage,~~k_getZeroPage,1098,18,32,45
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

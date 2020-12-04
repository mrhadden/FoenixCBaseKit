;:ts=8
R0	equ	1
R1	equ	5
R2	equ	9
R3	equ	13
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\DRIVER_B2SDCard.c",0
;
;#include "DRIVER_B2SDCard.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\DRIVER_B2SDCard.h",0
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\DRIVER_B2SDCard.h",5
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxdos.h",0
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxtypes.h",0
	.line	708
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxdos.h",5
	.stag	_fx_sd_direntry,256,64
	.member	filename,0,110,8,0,11
	.member	type,88,14,8,8
	.member	attrs,96,110,8,0,20
	.eos
	.stag	_fx_info,416,65
	.member	stgName,0,110,8,0,32
	.member	Reserved1,256,14,8,8
	.member	stgType,264,16,8,16
	.member	Reserved2,280,14,8,8
	.member	stgReserved,288,110,8,0,16
	.eos
	.stag	_fx_fileinfo,136,66
	.member	type,0,14,8,8
	.member	pFilename,8,142,8,32
	.member	lSize,40,18,8,32
	.member	lcreateDate,72,18,8,32
	.member	lchangeDate,104,18,8,32
	.eos
	.stag	_FX_FAT_DIR_INFO,256,67
	.member	DIR_Name,0,110,8,0,11
	.member	DIR_Attr,88,14,8,8
	.member	DIR_NTRes,96,14,8,8
	.member	DIR_CrtTimeTenth,104,14,8,8
	.member	DIR_CrtTime,112,16,8,16
	.member	DIR_CrtDate,128,16,8,16
	.member	DIR_LstAccDate,144,16,8,16
	.member	DIR_FstClusHI,160,16,8,16
	.member	DIR_WrtTime,176,16,8,16
	.member	DIR_WrtDate,192,16,8,16
	.member	DIR_FstClusLO,208,16,8,16
	.member	DIR_FileSize,224,18,8,32
	.eos
	.stag	fat_extBS_32,416,68
	.member	table_size_32,0,18,8,32
	.member	extended_flags,32,16,8,16
	.member	fat_version,48,16,8,16
	.member	root_cluster,64,18,8,32
	.member	fat_info,96,16,8,16
	.member	backup_BS_sector,112,16,8,16
	.member	reserved_0,128,110,8,0,12
	.member	drive_number,224,14,8,8
	.member	reserved_1,232,14,8,8
	.member	boot_signature,240,14,8,8
	.member	volume_id,248,16,8,16
	.member	volume_label,264,110,8,0,11
	.member	fat_type_label,352,110,8,0,8
	.eos
	.stag	fat_extBS_16,192,69
	.member	bios_drive_num,0,14,8,8
	.member	reserved1,8,14,8,8
	.member	boot_signature,16,14,8,8
	.member	volume_id,24,16,8,16
	.member	volume_label,40,110,8,0,11
	.member	fat_type_label,128,110,8,0,8
	.eos
	.stag	fat_BS,688,70
	.member	bootjmp,0,110,8,0,3
	.member	oem_name,24,110,8,0,8
	.member	bytes_per_sector,88,16,8,16
	.member	sectors_per_cluster,104,14,8,8
	.member	reserved_sector_count,112,16,8,16
	.member	table_count,128,14,8,8
	.member	root_entry_count,136,16,8,16
	.member	total_sectors_16,152,16,8,16
	.member	media_type,168,14,8,8
	.member	table_size_16,176,16,8,16
	.member	sectors_per_track,192,16,8,16
	.member	head_side_count,208,16,8,16
	.member	hidden_sector_count,224,16,8,16
	.member	total_sectors_32,240,16,8,16
	.member	extended_section,256,110,8,0,54
	.eos
	.stag	__FATBootSector,928,71
	.member	bootjmp,0,110,8,0,3
	.member	oem_name,24,110,8,0,8
	.member	bytes_per_sector,88,16,8,16
	.member	sectors_per_cluster,104,14,8,8
	.member	reserved_sector_count,112,16,8,16
	.member	fat_table_count,128,14,8,8
	.member	root_entry_count,136,16,8,16
	.member	total_sectors_16,152,16,8,16
	.member	media_type,168,14,8,8
	.member	sectors_per_fat,176,16,8,16
	.member	sectors_per_track,192,16,8,16
	.member	head_side_count,208,16,8,16
	.member	hidden_sector_count,224,18,8,32
	.member	total_sectors_32,256,18,8,32
	.member	drive_number,288,14,8,8
	.member	reserved1,296,14,8,8
	.member	boot_sig,304,14,8,8
	.member	vol_id,312,18,8,32
	.member	vol_name,344,110,8,0,11
	.member	file_system_type,432,110,8,0,8
	.member	extended_section,496,110,8,0,54
	.eos
	.stag	__PARTITIONTABLE,128,72
	.member	first_byte,0,14,8,8
	.member	start_chs,8,110,8,0,3
	.member	partition_type,32,14,8,8
	.member	end_chs,40,110,8,0,3
	.member	start_sector,64,18,8,32
	.member	length_sectors,96,18,8,32
	.eos
	.stag	fake73_,4096,73
	.member	jmp,0,110,8,0,3
	.member	oem,24,110,8,0,8
	.member	sector_size,88,15,8,16
	.member	sectors_per_cluster,104,14,8,8
	.member	reserved_sectors,112,15,8,16
	.member	number_of_fats,128,14,8,8
	.member	root_dir_entries,136,15,8,16
	.member	total_sectors_short,152,15,8,16
	.member	media_descriptor,168,14,8,8
	.member	fat_size_sectors,176,15,8,16
	.member	sectors_per_track,192,15,8,16
	.member	number_of_heads,208,15,8,16
	.member	hidden_sectors,224,18,8,32
	.member	total_sectors_long,256,18,8,32
	.member	drive_number,288,14,8,8
	.member	current_head,296,14,8,8
	.member	boot_signature,304,14,8,8
	.member	volume_id,312,18,8,32
	.member	volume_label,344,110,8,0,11
	.member	fs_type,432,110,8,0,8
	.member	boot_code,496,110,8,0,448
	.member	boot_sector_signature,4080,15,8,16
	.eos
	.stag	__FAT16ENTRY,256,74
	.member	filename,0,110,8,0,8
	.member	ext,64,110,8,0,3
	.member	attributes,88,14,8,8
	.member	reserved,96,110,8,0,10
	.member	modify_time,176,16,8,16
	.member	modify_date,192,16,8,16
	.member	starting_cluster,208,16,8,16
	.member	file_size,224,18,8,32
	.eos
	.stag	__FAT16ENTRYLONG,288,75
	.member	filename,0,110,8,0,8
	.member	ext,64,110,8,0,3
	.member	attributes,88,14,8,8
	.member	reserved,96,110,8,0,10
	.member	modify_time,176,16,8,16
	.member	modify_date,192,16,8,16
	.member	starting_cluster,208,16,8,16
	.member	file_size,224,18,8,32
	.member	plongfileName,256,142,8,32
	.eos
	.stag	_LongFileName,256,76
	.member	sequenceNo,0,14,8,8
	.member	fileName_Part1,8,110,8,0,10
	.member	fileattribute,88,14,8,8
	.member	type,96,14,8,8
	.member	checksum,104,14,8,8
	.member	fileName_Part2,112,110,8,0,12
	.member	fstclusLO,208,5,8,16
	.member	fileName_Part3,224,110,8,0,4
	.eos
	.stag	_IDSECTOR,2048,77
	.member	wGenConfig,0,16,8,16
	.member	wNumCyls,16,16,8,16
	.member	wReserved,32,16,8,16
	.member	wNumHeads,48,16,8,16
	.member	wBytesPerTrack,64,16,8,16
	.member	wBytesPerSector,80,16,8,16
	.member	wSectorsPerTrack,96,16,8,16
	.member	wVendorUnique,112,112,8,0,3
	.member	sSerialNumber,160,110,8,0,20
	.member	wBufferType,320,16,8,16
	.member	wBufferSize,336,16,8,16
	.member	wECCSize,352,16,8,16
	.member	sFirmwareRev,368,110,8,0,8
	.member	sModelNumber,432,110,8,0,40
	.member	wMoreVendorUnique,752,16,8,16
	.member	wDoubleWordIO,768,16,8,16
	.member	wCapabilities,784,16,8,16
	.member	wReserved1,800,16,8,16
	.member	wPIOTiming,816,16,8,16
	.member	wDMATiming,832,16,8,16
	.member	wBS,848,16,8,16
	.member	wNumCurrentCyls,864,16,8,16
	.member	wNumCurrentHeads,880,16,8,16
	.member	wNumCurrentSectorsPerTrack,896,16,8,16
	.member	ulCurrentSectorCapacity,912,18,8,32
	.member	wMultSectorStuff,944,16,8,16
	.member	ulTotalAddressableSectors,960,18,8,32
	.member	wSingleWordDMA,992,16,8,16
	.member	wMultiWordDMA,1008,16,8,16
	.member	bReserved,1024,110,8,0,128
	.eos
	.stag	fake78_,16,78
	.member	Reserved1,0,16,17,1
	.member	Retired3,1,16,17,1
	.member	ResponseIncomplete,2,16,17,1
	.member	Retired2,3,16,17,3
	.member	FixedDevice,6,16,17,1
	.member	RemovableMedia,7,16,17,1
	.member	Retired1,8,16,17,7
	.member	DeviceType,15,16,17,1
	.eos
	.stag	fake79_,16,79
	.member	FeatureSupported,0,16,17,1
	.member	Reserved,1,16,17,15
	.eos
	.stag	fake80_,32,80
	.member	CurrentLongPhysicalSectorAlignment,0,14,17,2
	.member	ReservedByte49,2,14,17,6
	.member	DmaSupported,8,14,17,1
	.member	LbaSupported,9,14,17,1
	.member	IordyDisable,10,14,17,1
	.member	IordySupported,11,14,17,1
	.member	Reserved1,12,14,17,1
	.member	StandybyTimerSupport,13,14,17,1
	.member	Reserved2,14,14,17,2
	.member	ReservedWord50,16,16,8,16
	.eos
	.stag	fake81_,16,81
	.member	ZonedCapabilities,0,16,17,2
	.member	NonVolatileWriteCache,2,16,17,1
	.member	ExtendedUserAddressableSectorsSupported,3,16,17,1
	.member	DeviceEncryptsAllUserData,4,16,17,1
	.member	ReadZeroAfterTrimSupported,5,16,17,1
	.member	Optional28BitCommandsSupported,6,16,17,1
	.member	IEEE1667,7,16,17,1
	.member	DownloadMicrocodeDmaSupported,8,16,17,1
	.member	SetMaxSetPasswordUnlockDmaSupported,9,16,17,1
	.member	WriteBufferDmaSupported,10,16,17,1
	.member	ReadBufferDmaSupported,11,16,17,1
	.member	DeviceConfigIdentifySetDmaSupported,12,16,17,1
	.member	LPSAERCSupported,13,16,17,1
	.member	DeterministicReadAfterTrimSupported,14,16,17,1
	.member	CFastSpecSupported,15,16,17,1
	.eos
	.stag	fake82_,32,82
	.member	Reserved0,0,16,17,1
	.member	SataGen1,1,16,17,1
	.member	SataGen2,2,16,17,1
	.member	SataGen3,3,16,17,1
	.member	Reserved1,4,16,17,4
	.member	NCQ,8,16,17,1
	.member	HIPM,9,16,17,1
	.member	PhyEvents,10,16,17,1
	.member	NcqUnload,11,16,17,1
	.member	NcqPriority,12,16,17,1
	.member	HostAutoPS,13,16,17,1
	.member	DeviceAutoPS,14,16,17,1
	.member	ReadLogDMA,15,16,17,1
	.member	Reserved2,16,16,17,1
	.member	CurrentSpeed,17,16,17,3
	.member	NcqStreaming,20,16,17,1
	.member	NcqQueueMgmt,21,16,17,1
	.member	NcqReceiveSend,22,16,17,1
	.member	DEVSLPtoReducedPwrState,23,16,17,1
	.member	Reserved3,24,16,17,8
	.eos
	.stag	fake83_,16,83
	.member	Reserved0,0,16,17,1
	.member	NonZeroOffsets,1,16,17,1
	.member	DmaSetupAutoActivate,2,16,17,1
	.member	DIPM,3,16,17,1
	.member	InOrderData,4,16,17,1
	.member	HardwareFeatureControl,5,16,17,1
	.member	SoftwareSettingsPreservation,6,16,17,1
	.member	NCQAutosense,7,16,17,1
	.member	DEVSLP,8,16,17,1
	.member	HybridInformation,9,16,17,1
	.member	Reserved1,10,16,17,6
	.eos
	.stag	fake84_,16,84
	.member	Reserved0,0,16,17,1
	.member	NonZeroOffsets,1,16,17,1
	.member	DmaSetupAutoActivate,2,16,17,1
	.member	DIPM,3,16,17,1
	.member	InOrderData,4,16,17,1
	.member	HardwareFeatureControl,5,16,17,1
	.member	SoftwareSettingsPreservation,6,16,17,1
	.member	DeviceAutoPS,7,16,17,1
	.member	DEVSLP,8,16,17,1
	.member	HybridInformation,9,16,17,1
	.member	Reserved1,10,16,17,6
	.eos
	.stag	fake85_,48,85
	.member	SmartCommands,0,16,17,1
	.member	SecurityMode,1,16,17,1
	.member	RemovableMediaFeature,2,16,17,1
	.member	PowerManagement,3,16,17,1
	.member	Reserved1,4,16,17,1
	.member	WriteCache,5,16,17,1
	.member	LookAhead,6,16,17,1
	.member	ReleaseInterrupt,7,16,17,1
	.member	ServiceInterrupt,8,16,17,1
	.member	DeviceReset,9,16,17,1
	.member	HostProtectedArea,10,16,17,1
	.member	Obsolete1,11,16,17,1
	.member	WriteBuffer,12,16,17,1
	.member	ReadBuffer,13,16,17,1
	.member	Nop,14,16,17,1
	.member	Obsolete2,15,16,17,1
	.member	DownloadMicrocode,16,16,17,1
	.member	DmaQueued,17,16,17,1
	.member	Cfa,18,16,17,1
	.member	AdvancedPm,19,16,17,1
	.member	Msn,20,16,17,1
	.member	PowerUpInStandby,21,16,17,1
	.member	ManualPowerUp,22,16,17,1
	.member	Reserved2,23,16,17,1
	.member	SetMax,24,16,17,1
	.member	Acoustics,25,16,17,1
	.member	BigLba,26,16,17,1
	.member	DeviceConfigOverlay,27,16,17,1
	.member	FlushCache,28,16,17,1
	.member	FlushCacheExt,29,16,17,1
	.member	WordValid83,30,16,17,2
	.member	SmartErrorLog,32,16,17,1
	.member	SmartSelfTest,33,16,17,1
	.member	MediaSerialNumber,34,16,17,1
	.member	MediaCardPassThrough,35,16,17,1
	.member	StreamingFeature,36,16,17,1
	.member	GpLogging,37,16,17,1
	.member	WriteFua,38,16,17,1
	.member	WriteQueuedFua,39,16,17,1
	.member	WWN64Bit,40,16,17,1
	.member	URGReadStream,41,16,17,1
	.member	URGWriteStream,42,16,17,1
	.member	ReservedForTechReport,43,16,17,2
	.member	IdleWithUnloadFeature,45,16,17,1
	.member	WordValid,46,16,17,2
	.eos
	.stag	fake86_,48,86
	.member	SmartCommands,0,16,17,1
	.member	SecurityMode,1,16,17,1
	.member	RemovableMediaFeature,2,16,17,1
	.member	PowerManagement,3,16,17,1
	.member	Reserved1,4,16,17,1
	.member	WriteCache,5,16,17,1
	.member	LookAhead,6,16,17,1
	.member	ReleaseInterrupt,7,16,17,1
	.member	ServiceInterrupt,8,16,17,1
	.member	DeviceReset,9,16,17,1
	.member	HostProtectedArea,10,16,17,1
	.member	Obsolete1,11,16,17,1
	.member	WriteBuffer,12,16,17,1
	.member	ReadBuffer,13,16,17,1
	.member	Nop,14,16,17,1
	.member	Obsolete2,15,16,17,1
	.member	DownloadMicrocode,16,16,17,1
	.member	DmaQueued,17,16,17,1
	.member	Cfa,18,16,17,1
	.member	AdvancedPm,19,16,17,1
	.member	Msn,20,16,17,1
	.member	PowerUpInStandby,21,16,17,1
	.member	ManualPowerUp,22,16,17,1
	.member	Reserved2,23,16,17,1
	.member	SetMax,24,16,17,1
	.member	Acoustics,25,16,17,1
	.member	BigLba,26,16,17,1
	.member	DeviceConfigOverlay,27,16,17,1
	.member	FlushCache,28,16,17,1
	.member	FlushCacheExt,29,16,17,1
	.member	Resrved3,30,16,17,1
	.member	Words119_120Valid,31,16,17,1
	.member	SmartErrorLog,32,16,17,1
	.member	SmartSelfTest,33,16,17,1
	.member	MediaSerialNumber,34,16,17,1
	.member	MediaCardPassThrough,35,16,17,1
	.member	StreamingFeature,36,16,17,1
	.member	GpLogging,37,16,17,1
	.member	WriteFua,38,16,17,1
	.member	WriteQueuedFua,39,16,17,1
	.member	WWN64Bit,40,16,17,1
	.member	URGReadStream,41,16,17,1
	.member	URGWriteStream,42,16,17,1
	.member	ReservedForTechReport,43,16,17,2
	.member	IdleWithUnloadFeature,45,16,17,1
	.member	Reserved4,46,16,17,2
	.eos
	.stag	fake87_,16,87
	.member	TimeRequired,0,16,17,15
	.member	ExtendedTimeReported,15,16,17,1
	.eos
	.stag	fake88_,16,88
	.member	TimeRequired,0,16,17,15
	.member	ExtendedTimeReported,15,16,17,1
	.eos
	.stag	fake89_,16,89
	.member	LogicalSectorsPerPhysicalSector,0,16,17,4
	.member	Reserved0,4,16,17,8
	.member	LogicalSectorLongerThan256Words,12,16,17,1
	.member	MultipleLogicalSectorsPerPhysicalSector,13,16,17,1
	.member	Reserved1,14,16,17,2
	.eos
	.stag	fake90_,16,90
	.member	ReservedForDrqTechnicalReport,0,16,17,1
	.member	WriteReadVerify,1,16,17,1
	.member	WriteUncorrectableExt,2,16,17,1
	.member	ReadWriteLogDmaExt,3,16,17,1
	.member	DownloadMicrocodeMode3,4,16,17,1
	.member	FreefallControl,5,16,17,1
	.member	SenseDataReporting,6,16,17,1
	.member	ExtendedPowerConditions,7,16,17,1
	.member	Reserved0,8,16,17,6
	.member	WordValid,14,16,17,2
	.eos
	.stag	fake91_,16,91
	.member	ReservedForDrqTechnicalReport,0,16,17,1
	.member	WriteReadVerify,1,16,17,1
	.member	WriteUncorrectableExt,2,16,17,1
	.member	ReadWriteLogDmaExt,3,16,17,1
	.member	DownloadMicrocodeMode3,4,16,17,1
	.member	FreefallControl,5,16,17,1
	.member	SenseDataReporting,6,16,17,1
	.member	ExtendedPowerConditions,7,16,17,1
	.member	Reserved0,8,16,17,6
	.member	Reserved1,14,16,17,2
	.eos
	.stag	fake92_,16,92
	.member	SecuritySupported,0,16,17,1
	.member	SecurityEnabled,1,16,17,1
	.member	SecurityLocked,2,16,17,1
	.member	SecurityFrozen,3,16,17,1
	.member	SecurityCountExpired,4,16,17,1
	.member	EnhancedSecurityEraseSupported,5,16,17,1
	.member	Reserved0,6,16,17,2
	.member	SecurityLevel,8,16,17,1
	.member	Reserved1,9,16,17,7
	.eos
	.stag	fake93_,16,93
	.member	MaximumCurrentInMA,0,16,17,12
	.member	CfaPowerMode1Disabled,12,16,17,1
	.member	CfaPowerMode1Required,13,16,17,1
	.member	Reserved0,14,16,17,1
	.member	Word160Supported,15,16,17,1
	.eos
	.stag	fake94_,16,94
	.member	SupportsTrim,0,16,17,1
	.member	Reserved0,1,16,17,15
	.eos
	.stag	fake95_,16,95
	.member	Supported,0,16,17,1
	.member	Reserved0,1,16,17,1
	.member	WriteSameSuported,2,16,17,1
	.member	ErrorRecoveryControlSupported,3,16,17,1
	.member	FeatureControlSuported,4,16,17,1
	.member	DataTablesSuported,5,16,17,1
	.member	Reserved1,6,16,17,6
	.member	VendorSpecific,12,16,17,4
	.eos
	.stag	fake96_,16,96
	.member	AlignmentOfLogicalWithinPhysical,0,16,17,14
	.member	Word209Supported,14,16,17,1
	.member	Reserved0,15,16,17,1
	.eos
	.stag	fake97_,16,97
	.member	NVCachePowerModeEnabled,0,16,17,1
	.member	Reserved0,1,16,17,3
	.member	NVCacheFeatureSetEnabled,4,16,17,1
	.member	Reserved1,5,16,17,3
	.member	NVCachePowerModeVersion,8,16,17,4
	.member	NVCacheFeatureSetVersion,12,16,17,4
	.eos
	.stag	fake98_,16,98
	.member	NVCacheEstimatedTimeToSpinUpInSeconds,0,14,8,8
	.member	Reserved,8,14,8,8
	.eos
	.stag	fake99_,16,99
	.member	MajorVersion,0,16,17,12
	.member	TransportType,12,16,17,4
	.eos
	.stag	_IDENTIFY_DEVICE_DATA,4096,100
	.member	GeneralConfiguration,0,10,8,16,78
	.member	NumCylinders,16,16,8,16
	.member	SpecificConfiguration,32,16,8,16
	.member	NumHeads,48,16,8,16
	.member	Retired1Bytes,64,110,8,0,4
	.member	NumSectorsPerTrack,96,16,8,16
	.member	VendorUnique1Bytes,112,110,8,0,6
	.member	SerialNumber,160,110,8,0,20
	.member	Retired2,320,112,8,0,2
	.member	Obsolete1,352,16,8,16
	.member	FirmwareRevision,368,110,8,0,8
	.member	ModelNumber,432,110,8,0,40
	.member	MaximumBlockTransfer,752,14,8,8
	.member	VendorUnique2,760,14,8,8
	.member	TrustedComputing,768,10,8,16,79
	.member	Capabilities,784,10,8,32,80
	.member	ObsoleteWords51,816,112,8,0,2
	.member	TranslationFieldsValid,848,16,17,3
	.member	Reserved3,851,16,17,5
	.member	FreeFallControlSensitivity,856,16,17,8
	.member	NumberOfCurrentCylinders,864,16,8,16
	.member	NumberOfCurrentHeads,880,16,8,16
	.member	CurrentSectorsPerTrack,896,16,8,16
	.member	CurrentSectorCapacity,912,18,8,32
	.member	CurrentMultiSectorSetting,944,14,8,8
	.member	MultiSectorSettingValid,952,14,17,1
	.member	ReservedByte59,953,14,17,3
	.member	SanitizeFeatureSupported,956,14,17,1
	.member	CryptoScrambleExtCommandSupported,957,14,17,1
	.member	OverwriteExtCommandSupported,958,14,17,1
	.member	BlockEraseExtCommandSupported,959,14,17,1
	.member	UserAddressableSectors,960,18,8,32
	.member	ObsoleteWord62,992,16,8,16
	.member	MultiWordDMASupport,1008,16,17,8
	.member	MultiWordDMAActive,1016,16,17,8
	.member	AdvancedPIOModes,1024,16,17,8
	.member	ReservedByte64,1032,16,17,8
	.member	MinimumMWXferCycleTime,1040,16,8,16
	.member	RecommendedMWXferCycleTime,1056,16,8,16
	.member	MinimumPIOCycleTime,1072,16,8,16
	.member	MinimumPIOCycleTimeIORDY,1088,16,8,16
	.member	AdditionalSupported,1104,10,8,16,81
	.member	ReservedWords70,1120,112,8,0,5
	.member	QueueDepth,1200,16,17,5
	.member	ReservedWord75,1205,16,17,11
	.member	SerialAtaCapabilities,1216,10,8,32,82
	.member	SerialAtaFeaturesSupported,1248,10,8,16,83
	.member	SerialAtaFeaturesEnabled,1264,10,8,16,84
	.member	MajorRevision,1280,16,8,16
	.member	MinorRevision,1296,16,8,16
	.member	CommandSetSupport,1312,10,8,48,85
	.member	CommandSetActive,1360,10,8,48,86
	.member	UltraDMASupport,1408,16,17,8
	.member	UltraDMAActive,1416,16,17,8
	.member	NormalSecurityEraseUnit,1424,10,8,16,87
	.member	EnhancedSecurityEraseUnit,1440,10,8,16,88
	.member	CurrentAPMLevel,1456,16,17,8
	.member	ReservedWord91,1464,16,17,8
	.member	MasterPasswordID,1472,16,8,16
	.member	HardwareResetResult,1488,16,8,16
	.member	CurrentAcousticValue,1504,16,17,8
	.member	RecommendedAcousticValue,1512,16,17,8
	.member	StreamMinRequestSize,1520,16,8,16
	.member	StreamingTransferTimeDMA,1536,16,8,16
	.member	StreamingAccessLatencyDMAPIO,1552,16,8,16
	.member	StreamingPerfGranularity,1568,18,8,32
	.member	Max48BitLBA,1600,114,8,0,2
	.member	StreamingTransferTime,1664,16,8,16
	.member	DsmCap,1680,16,8,16
	.member	PhysicalLogicalSectorSize,1696,10,8,16,89
	.member	InterSeekDelay,1712,16,8,16
	.member	WorldWideName,1728,112,8,0,4
	.member	ReservedForWorldWideName128,1792,112,8,0,4
	.member	ReservedForTlcTechnicalReport,1856,16,8,16
	.member	WordsPerLogicalSector,1872,112,8,0,2
	.member	CommandSetSupportExt,1904,10,8,16,90
	.member	CommandSetActiveExt,1920,10,8,16,91
	.member	ReservedForExpandedSupportandActive,1936,112,8,0,6
	.member	MsnSupport,2032,16,17,2
	.member	ReservedWord127,2034,16,17,14
	.member	SecurityStatus,2048,10,8,16,92
	.member	ReservedWord129,2064,112,8,0,31
	.member	CfaPowerMode1,2560,10,8,16,93
	.member	ReservedForCfaWord161,2576,112,8,0,7
	.member	NominalFormFactor,2688,16,17,4
	.member	ReservedWord168,2692,16,17,12
	.member	DataSetManagementFeature,2704,10,8,16,94
	.member	AdditionalProductID,2720,112,8,0,4
	.member	ReservedForCfaWord174,2784,112,8,0,2
	.member	CurrentMediaSerialNumber,2816,112,8,0,30
	.member	SCTCommandTransport,3296,10,8,16,95
	.member	ReservedWord207,3312,112,8,0,2
	.member	BlockAlignment,3344,10,8,16,96
	.member	WriteReadVerifySectorCountMode3Only,3360,112,8,0,2
	.member	WriteReadVerifySectorCountMode2Only,3392,112,8,0,2
	.member	NVCacheCapabilities,3424,10,8,16,97
	.member	NVCacheSizeLSW,3440,16,8,16
	.member	NVCacheSizeMSW,3456,16,8,16
	.member	NominalMediaRotationRate,3472,16,8,16
	.member	ReservedWord218,3488,16,8,16
	.member	NVCacheOptions,3504,10,8,16,98
	.member	WriteReadVerifySectorCountMode,3520,16,17,8
	.member	ReservedWord220,3528,16,17,8
	.member	ReservedWord221,3536,16,8,16
	.member	TransportMajorVersion,3552,10,8,16,99
	.member	TransportMinorVersion,3568,16,8,16
	.member	ReservedWord224,3584,112,8,0,6
	.member	ExtendedNumberOfUserAddressableSectors,3680,114,8,0,2
	.member	MinBlocksPerDownloadMicrocodeMode03,3744,16,8,16
	.member	MaxBlocksPerDownloadMicrocodeMode03,3760,16,8,16
	.member	ReservedWord236,3776,112,8,0,19
	.member	Signature,4080,16,17,8
	.member	CheckSum,4088,16,17,8
	.eos
	.stag	_FXDosDevice,5648,101
	.member	type,0,14,8,8
	.member	initialized,8,14,8,8
	.member	devdata,16,129,8,32
	.member	devstatus,48,14,8,8
	.member	bootSector,56,10,8,928,71
	.member	partitionTable,984,10,8,128,72
	.member	fileAllocationTable,1112,110,8,0,512
	.member	bsOffset,5208,18,8,32
	.member	rootDirSectors,5240,18,8,32
	.member	root_entry_count,5272,5,8,16
	.member	rootEntriesPerPage,5288,5,8,16
	.member	sectors_per_cluster,5304,5,8,16
	.member	fatTableOffset,5320,18,8,32
	.member	volume_name,5352,110,8,0,12
	.member	root_volume_name,5448,110,8,0,12
	.member	errorCode,5544,14,8,8
	.member	pfInit,5552,641,8,32
	.member	pfReader,5584,654,8,32
	.member	pfWriter,5616,654,8,32
	.eos
	.line	705
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\DRIVER_B2SDCard.h",6
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxmemorymanager.h",0
	.line	39
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\DRIVER_B2SDCard.h",7
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\CH376INC.H",0
	.stag	_FAT_DIR_INFO,256,102
	.member	DIR_Name,0,110,8,0,11
	.member	DIR_Attr,88,14,8,8
	.member	DIR_NTRes,96,14,8,8
	.member	DIR_CrtTimeTenth,104,14,8,8
	.member	DIR_CrtTime,112,15,8,16
	.member	DIR_CrtDate,128,15,8,16
	.member	DIR_LstAccDate,144,15,8,16
	.member	DIR_FstClusHI,160,15,8,16
	.member	DIR_WrtTime,176,15,8,16
	.member	DIR_WrtDate,192,15,8,16
	.member	DIR_FstClusLO,208,15,8,16
	.member	DIR_FileSize,224,18,8,32
	.eos
	.stag	_BULK_ONLY_CBW,248,103
	.member	CBW_Sig,0,18,8,32
	.member	CBW_Tag,32,18,8,32
	.member	CBW_DataLen0,64,14,8,8
	.member	CBW_DataLen1,72,14,8,8
	.member	CBW_DataLen2,80,15,8,16
	.member	CBW_Flag,96,14,8,8
	.member	CBW_LUN,104,14,8,8
	.member	CBW_CB_Len,112,14,8,8
	.member	CBW_CB_Buf,120,110,8,0,16
	.eos
	.stag	_INQUIRY_DATA,288,104
	.member	DeviceType,0,14,8,8
	.member	RemovableMedia,8,14,8,8
	.member	Versions,16,14,8,8
	.member	DataFormatAndEtc,24,14,8,8
	.member	AdditionalLength,32,14,8,8
	.member	Reserved1,40,14,8,8
	.member	Reserved2,48,14,8,8
	.member	MiscFlag,56,14,8,8
	.member	VendorIdStr,64,110,8,0,8
	.member	ProductIdStr,128,110,8,0,16
	.member	ProductRevStr,256,110,8,0,4
	.eos
	.stag	_SENSE_DATA,144,105
	.member	ErrorCode,0,14,8,8
	.member	SegmentNumber,8,14,8,8
	.member	SenseKeyAndEtc,16,14,8,8
	.member	Information0,24,14,8,8
	.member	Information1,32,14,8,8
	.member	Information2,40,14,8,8
	.member	Information3,48,14,8,8
	.member	AdditSenseLen,56,14,8,8
	.member	CmdSpecInfo,64,110,8,0,4
	.member	AdditSenseCode,96,14,8,8
	.member	AddSenCodeQual,104,14,8,8
	.member	FieldReplaUnit,112,14,8,8
	.member	SenseKeySpec,120,110,8,0,3
	.eos
	.stag	fake106_,112,106
	.member	mBuffer,0,110,8,0,14
	.eos
	.stag	fake107_,8,107
	.member	mUpdateFileSz,0,14,8,8
	.eos
	.stag	fake108_,8,108
	.member	mDirInfoIndex,0,14,8,8
	.eos
	.utag	fake109_,32,109
	.member	mByteOffset,0,18,11,32
	.member	mSectorLba,0,18,11,32
	.eos
	.stag	fake110_,16,110
	.member	mByteCount,0,15,8,16
	.eos
	.stag	fake111_,16,111
	.member	mByteCount,0,15,8,16
	.eos
	.utag	fake112_,32,112
	.member	mSectorOffset,0,18,11,32
	.member	mSectorLba,0,18,11,32
	.eos
	.stag	fake113_,64,113
	.member	mSectorCount,0,14,8,8
	.member	mReserved1,8,14,8,8
	.member	mReserved2,16,14,8,8
	.member	mReserved3,24,14,8,8
	.member	mStartSector,32,18,8,32
	.eos
	.stag	fake114_,64,114
	.member	mSectorCount,0,14,8,8
	.member	mReserved1,8,14,8,8
	.member	mReserved2,16,14,8,8
	.member	mReserved3,24,14,8,8
	.member	mStartSector,32,18,8,32
	.eos
	.stag	fake115_,32,115
	.member	mDiskSizeSec,0,18,8,32
	.eos
	.stag	fake116_,72,116
	.member	mTotalSector,0,18,8,32
	.member	mFreeSector,32,18,8,32
	.member	mDiskFat,64,14,8,8
	.eos
	.stag	fake117_,8,117
	.member	mMaxLogicUnit,0,14,8,8
	.eos
	.stag	fake118_,32,118
	.member	mDiskSizeSec,0,18,8,32
	.eos
	.stag	fake119_,40,119
	.member	mStartSector,0,18,8,32
	.member	mSectorCount,32,14,8,8
	.eos
	.stag	fake120_,40,120
	.member	mStartSector,0,18,8,32
	.member	mSectorCount,32,14,8,8
	.eos
	.utag	_CH376_CMD_DATA,288,121
	.member	Default,0,10,11,112,106
	.member	DiskMountInq,0,10,11,288,104
	.member	OpenDirInfo,0,10,11,256,102
	.member	EnumDirInfo,0,10,11,256,102
	.member	FileCLose,0,10,11,8,107
	.member	DirInfoRead,0,10,11,8,108
	.member	ByteLocate,0,11,11,32,109
	.member	ByteRead,0,10,11,16,110
	.member	ByteWrite,0,10,11,16,111
	.member	SectorLocate,0,11,11,32,112
	.member	SectorRead,0,10,11,64,113
	.member	SectorWrite,0,10,11,64,114
	.member	DiskCapacity,0,10,11,32,115
	.member	DiskQuery,0,10,11,72,116
	.member	DiskBocCbw,0,10,11,248,103
	.member	DiskMaxLun,0,10,11,8,117
	.member	DiskInitInq,0,10,11,288,104
	.member	DiskInqData,0,10,11,288,104
	.member	ReqSenseData,0,10,11,144,105
	.member	DiskSize,0,10,11,32,118
	.member	DiskRead,0,10,11,40,119
	.member	DiskWrite,0,10,11,40,120
	.eos
	.line	586
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\DRIVER_B2SDCard.h",8
	.line	51
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\DRIVER_B2SDCard.c",2
;
;#pragma section CODE=B2SDCard,offset $08:A000
B2SDCard	section	offset $08:A000
	ends
;
;static CHAR sd_card_dir_string[] =
	data
~~sd_card_dir_string:
;{ 0x2F, 0x2A, 0x00 };
	db	$2F,$2A,$0
	ends
;static UINT8 buf[64];
;
;static UCHAR sectorBuffer[512];
;
;
;static BOOL _mount_lock = FALSE;
	data
~~_mount_lock:
	db	$0
	ends
;static DISKINFO lastdiskInfo;
;static PDISKINFO pdiskCache = NULL;
	data
~~pdiskCache:
	dl	$0
	ends
;
;#ifdef USE_FX256_FMX
;
;FX_DEVICE_DRIVER DRIVER_B2SDCard = {
	data
	xdef	~~DRIVER_B2SDCard
~~DRIVER_B2SDCard:
;										"DRIVER_B2SDCard\0",
	db	$44,$52,$49,$56,$45,$52,$5F,$42,$32,$53
	db	$44,$43,$61,$72,$64,$0,$0
	ds	47
;										"v1.0.0\0",
	db	$76,$31,$2E,$30,$2E,$30,$0,$0
	ds	56
;										"B\0",
	db	$42,$0,$0
	ds	13
;										"2\0",
	db	$32,$0,$0
	ds	13
;										DRIVER_TYPE_SDCARD,
	db	$5
;										NULL,
	dl	$0
;										NULL,
	dl	$0
;										NULL,
	dl	$0
;										NULL
;								   };
	dl	$0
	ends
;
;
;#else
;
;FX_DEVICE_DRIVER DRIVER_B2SDCard = {
;										"DRIVER_B2SDCard\0",
;										"v1.0.0\0",
;										"B\0",
;										"2\0",
;										DRIVER_TYPE_SDCARD,
;										k_sd_initialize,
;										NULL,
;										NULL,
;										NULL
;								   };
;
;
;BOOL k_pc_initialize(void)
;{
;	return FALSE;
;}
;
;
;BOOL k_sd_initialize(void)
;{
;	BOOL retCode = FALSE;
;	UCHAR data = 0;
;	UCHAR status = 0;
;	int abort = 0;
;	//k_sd_init();
;	//k_sd_ismounted();
;	k_debug_string("k_sd_initialize::reset...\r\n");
;
;	k_sd_mount();
;
;	SDCARD_PRSNT_MNT[0] = 0x00;
;
;	SDCARD_CMD[0] = 0x05;
;
;	for (abort = 0; abort < 35; abort++)
;		k_sd_cmd_delay();
;
;	k_debug_string("k_sd_initialize::init s1...\r\n");
;
;	SDCARD_CMD[0] = 0x06;
;	k_sd_cmd_delay();
;	SDCARD_DATA[0] = 0xA8;
;
;
;	k_debug_string("k_sd_initialize::init s1a...\r\n");
;
;	k_sd_dta_delay();
;	k_sd_dta_delay();
;	k_sd_dta_delay();
;
;	k_debug_string("k_sd_initialize::init s1b...\r\n");
;
;	data = SDCARD_DATA[0];
;
;	k_debug_string("k_sd_initialize::init s1c...\r\n");
;
;	k_sd_cmd_delay();
;
;	k_debug_string("k_sd_initialize::init s2...\r\n");
;
;	SDCARD_CMD[0] = CH_CMD_SET_MODE;
;	k_sd_cmd_delay();
;	k_sd_cmd_delay();
;	k_sd_cmd_delay();
;
;
;
;	SDCARD_DATA[0] = 0x03; // Mode 3 - SDCARD
;
;	k_debug_string("k_sd_initialize::read..\r\n");
;
;	retCode = TRUE;
;	data = 0;
;	while (data != 0x51)
;	{
;		abort++;
;		if (abort > 100)
;		{
;			retCode = FALSE;
;			break;
;		}
;		k_sd_dta_delay();
;
;		data = SDCARD_DATA[0];
;		k_debug_integer("k_sd_initialize::SDCARD_DATA:", data);
;	}
;
;
;	abort = k_read_disk_sector(sectorBuffer, 1, 1);
;	//SDCARD_CMD[0] = 0x01;
;	//k_sd_cmd_delay();
;	//k_debug_integer("k_sd_initialize::version:",SDCARD_DATA[0]);
;
;	//SDCARD_CMD[0] = CH_CMD_GET_STATUS;
;	//status = k_sd_waitforirq();
;	//k_debug_integer("k_sd_initialize::CH_CMD_GET_STATUS:",status);
;
;	k_debug_string("k_sd_initialize::exit...\r\n");
;
;	return retCode;
;}
;
;UINT8 k_sd_reset(VOID)
;{
;	UINT8	s;
;
;	k_debug_string("***k_sd_reset 1\r\n");
;
;	xWriteCH376Cmd( CMD_RESET_ALL );
;	s = xReadCH376Data( );
;	xEndCH376Cmd( );
;
;	k_debug_string("***k_sd_reset 2\r\n");
;
;	k_sd_cmd_delay();
;	k_sd_cmd_delay();
;	k_sd_cmd_delay();
;	k_sd_cmd_delay();
;	k_sd_cmd_delay();
;
;	k_sd_initialize();
;
;	return( s );
;}
;
;
;UINT8 k_sd_status(VOID)
;{
;	UINT8	s;
;
;	xWriteCH376Cmd( CMD01_GET_STATUS );
;	s = xReadCH376Data( );
;	xEndCH376Cmd( );
;	return( s );
;}
;
;BOOL k_sd_ispresent(void)
;{
;	UCHAR stat = 0;
;	BOOL retCode = FALSE;
;
;	stat = SDCARD_STAT[0]; //  BIT[0] = Cd, BIT[1] = WP
;	k_debug_integer("k_sd_initialize::SDCARD_STAT:", stat);
;
;	if (stat & 0x01)
;	{
;		retCode = FALSE;
;		SDCARD_PRSNT_MNT[0] = 0x00;
;	}
;	else
;	{
;		SDCARD_PRSNT_MNT[0] = 0x01;
;		retCode = TRUE;
;	}
;
;
;	if(!retCode)
;	{
;		pdiskCache = NULL;
;		k_sd_reset();
;	}
;
;
;	k_debug_integer("k_sd_ispresent:", retCode);
;
;	return retCode;
;}
;
;UCHAR k_sd_waitforirq(void)
;{
;	UINT abort = 0xFF;
;	UCHAR status = 0x80;
;
;	//asm SEI;
;
;	while (status == 0x80)
;	{
;		status = SDCARD_DATA[0];
;		//k_debug_integer("k_sd_waitforirq::wait:", status);
;
;		abort--;
;		if(abort < 1)
;		{
;			return 0x80;
;		}
;	}
;
;	k_sd_cmd_delay();
;	k_sd_cmd_delay();
;
;	SDCARD_CMD[0] = CH_CMD_GET_STATUS;
;
;	k_sd_cmd_delay();
;
;	status = SDCARD_DATA[0];
;
;	//k_debug_integer("k_sd_waitforirq::status:", status);
;
;	//asm cli;
;
;	return status;
;}
;
;BOOL k_sd_mount(void)
;{
;	int i = 0;
;	int abort = 0;
;	UCHAR status = 0x00;
;	UCHAR data[37];
;	BOOL retCode = FALSE;
;
;	if(_mount_lock)
;		return TRUE;
;
;	if(k_sd_ispresent())
;	{
;		k_debug_string("k_sd_mount::card detected\r\n");
;		//if(SDCARD_PRSNT_MNT[0] & 0x05 != 0x05)
;		if (SDCARD_PRSNT_MNT[0] == 0x01)
;		{
;			k_debug_string("k_sd_mount::card mounting..\r\n");
;
;			/// SDCARD_PRSNT_MNT[0] = 0x01;//      ; Bit[0] = Card Present
;
;			while (status != CH376S_STAT_SUCCESS) //TRY_MOUNT_AGAIN
;			{
;				SDCARD_CMD[0] = CH_CMD_DISK_MOUNT;
;				k_sd_cmd_delay();
;
;				k_sd_cmd_delay();
;				k_sd_cmd_delay();
;
;				status = k_sd_waitforirq();
;
;				if (status == CH376S_STAT_SUCCESS)
;				{
;
;					/*
;					 SDCARD_CMD[0] = CH_CMD_RD_DATA0;
;					 k_sd_cmd_delay();
;					 k_debug_hex("k_sd_read_dir::k_sd_mount-size:",SDCARD_DATA[0]);
;
;					 for(i=0;i<36;i++)
;					 {
;					 data[i] = SDCARD_DATA[0];
;					 k_sd_dta_delay();
;					 k_debug_hexchar("k_sd_read_dir::k_sd_mount:",data[i]);
;					 }
;					 data[36] = 0;
;
;					 k_debug_string("k_sd_mount::mount-name:");
;					 k_debug_string(data);
;					 k_debug_string("\r\n");
;					 */
;				}
;
;				//INY
;				//CPY #$00F0
;				//BNE TRY_MOUNT_AGAIN
;				//JMP SDCARD_ERROR_MOUNT
;				abort++;
;				if (abort > 0x03FF) // 0x03FF
;				{
;					k_debug_string("k_sd_mount::card mount failed\r\n");
;					k_debug_hex("k_sd_mount::status:",status);
;					return FALSE;
;				}
;			}
;
;			k_debug_integer("k_sd_mount::abort:",abort);
;		}
;
;		//;              LDA SDCARD_PRSNT_MNT        ; Load Presence Status
;		//;              AND #$05
;		//;              CMP #$05
;		//;              BEQ ISDOS_MOUNTED
;
;		SDCARD_PRSNT_MNT[0] &= SDCARD_PRSNT_MNTED;
;		k_debug_string("k_sd_mount::card mounted\r\n");
;		retCode = TRUE;
;	}
;	else
;	{
;		SDCARD_PRSNT_MNT[0] = SDCARD_PRSNT_NO_CARD;
;	}
;
;	return retCode;
;}
;
;BOOL k_sd_openfile(LPCHAR filename)
;{
;	UCHAR status = 0x00;
;	BOOL retCode = FALSE;
;
;	k_debug_string("k_sd_openfile::filename:");
;	k_debug_string(filename);
;	k_debug_string("\r\n");
;
;	k_sd_setfilename(filename);
;	k_sd_cmd_delay();
;	SDCARD_CMD[0] = CH_CMD_FILE_OPEN;
;
;	status = k_sd_waitforirq();
;
;	k_debug_integer("k_sd_openfile::result:", status);
;
;	//retCode = (status == 0x14);
;	retCode = (status !=USB_INT_DISK_ERR);
;
;
;	return retCode;
;}
;
;BOOL k_sd_setfilename(LPCHAR filename)
;{
;	int i = 0;
;	BOOL bRet = FALSE;
;	LPCHAR fptr = filename;
;
;	//k_debug_string("k_sd_setfilename::enter\r\n");
;
;	if (filename != NULL)
;	{
;		SDCARD_CMD[0] = CH_CMD_SET_FILENAME;
;		k_sd_cmd_delay();
;
;		//k_debug_string("k_sd_setfilename::send\r\n");
;
;		while (*fptr)
;		{
;			SDCARD_DATA[0] = *fptr;
;			k_sd_dta_delay();
;			fptr++;
;		}
;		SDCARD_DATA[0] = 0;
;		k_sd_dta_delay();
;
;		bRet = TRUE;
;	}
;
;	//k_debug_integer("k_sd_setfilename::result:", bRet);
;
;	return bRet;
;}
;
;/*
; 	nodelist = k_nodelist_init(1,"node1",NULL);
;
;	newnode = k_nodelist_create(2,"node2",NULL,NULL,NULL);
;	k_nodelist_add(nodelist,newnode);
;	newnode = k_nodelist_create(3,"node3",NULL,NULL,NULL);
;	k_nodelist_add(nodelist,newnode);
;	newnode = k_nodelist_create(34,"node4",NULL,NULL,NULL);
;	k_nodelist_add(nodelist,newnode);
;
;	k_debug_nodelist(nodelist);
;
;*/
;
;PFXNODE k_sd_read_dir(void)
;{
;	PFXNODE pnDirList = NULL;
;	PFXNODE node  = NULL;
;	PFILEINFO pfi = NULL;
;	UCHAR rsize = 0;
;	FX_FAT_DIR_INFO FAR *direntry = NULL;
;	//FAT_DIR_INFO direntry;
;	LPCHAR pdirentry = NULL;
;	UCHAR data = 0;
;	UCHAR status = 0x000;
;	int i = 0;
;
;	k_debug_integer("k_sd_read_dir::enter:sizeof(FAT_DIR_INFO):",sizeof(FAT_DIR_INFO));
;
;	k_sd_read_vol(NULL);
;
;	if(k_sd_ispresent() && k_sd_mount())
;	{
;		if(k_sd_openfile(sd_card_dir_string))
;		{
;			k_debug_string("k_sd_read_dir::k_sd_openfile:success\r\n");
;
;			direntry = k_mem_allocate_heap(sizeof(FAT_DIR_INFO));
;
;			status = CH376S_STAT_DSK_RD;
;			while (status == CH376S_STAT_DSK_RD || status == 0x51)
;			//while (status != ERR_MISS_FILE)
;			{
;				SDCARD_CMD[0] = CH_CMD_RD_DATA0;
;				k_sd_cmd_delay();
;
;				rsize = SDCARD_DATA[0];
;				k_debug_hex("k_sd_read_dir::k_sd_openfile:read:",data);
;
;				//k_sd_cmd_delay();
;
;				pdirentry = (LPCHAR) direntry;
;
;				for (i = 0; i < rsize; i++)
;				{
;					k_sd_dta_delay();
;					data = SDCARD_DATA[0];
;					//k_debug_char("k_sd_read_dir::entrydata:",data);
;					*pdirentry = data;
;					pdirentry++;
;				}
;
;				k_debug_string("k_sd_read_dir::FAT_DIR_INFO.NAME:");
;				k_debug_nstring(direntry->DIR_Name, 11);
;				k_debug_string("\r\n");
;
;				if(pnDirList == NULL)
;				{
;					k_debug_string("k_sd_read_dir::pnDirList\r\n");
;					pnDirList = k_nodelist_init(direntry->DIR_Attr,"dos",(LPVOID)_k_dos_alloc_fileinfo(direntry));
;				}
;				else
;				{
;					node = k_nodelist_create(direntry->DIR_Attr,"dos",(LPVOID)_k_dos_alloc_fileinfo(direntry),NULL,NULL);
;					k_debug_pointer("k_sd_read_dir::node:",node);
;					if(node!=NULL)
;						k_nodelist_add(pnDirList,node);
;				}
;
;				/*
;				if (direntry.DIR_Attr == ATTR_VOLUME_ID)
;				{
;					k_debug_string("** VOLUME **\r\n");
;				}
;				*/
;				//k_debug_integer("k_sd_read_dir::FAT_DIR_INFO.ATTR:",direntry.DIR_Attr);
;				//k_debug_integer("k_sd_read_dir::FAT_DIR_INFO.NTRES:",direntry.DIR_NTRes);
;				//k_debug_integer("k_sd_read_dir::FAT_DIR_INFO.SIZE:",direntry.DIR_FileSize);
;
;				k_sd_cmd_delay();
;
;				SDCARD_CMD[0] = CH_CMD_FILE_ENUM_GO;
;				k_sd_cmd_delay();
;				status = k_sd_waitforirq();
;				k_debug_hex("k_sd_read_dir::CH_CMD_FILE_ENUM_GO:status:",status);
;
;				if(status == 0)
;				{
;					SDCARD_CMD[0] = CH_CMD_FILE_ENUM_GO;
;					k_sd_cmd_delay();
;					status = k_sd_waitforirq();
;					k_debug_hex("k_sd_read_dir::CH_CMD_FILE_ENUM_GO:retry status:",status);
;				}
;
;			}
;
;			k_sd_close(0);
;		}
;	}
;
;	return pnDirList;
;}
;
;void k_sd_read_dir_OLD(void)
;{
;	PFXNODE nodesDirList = NULL;
;
;	FAT_DIR_INFO direntry;
;	LPCHAR pdirentry = NULL;
;	UCHAR data = 0;
;	UCHAR status = 0x000;
;	int i = 0;
;
;	//k_debug_string("k_sd_read_dir::enter\r\n");
;
;	if (k_sd_mount())
;	{
;		if (k_sd_openfile(sd_card_dir_string))
;		{
;			//k_debug_string("k_sd_read_dir::k_sd_openfile:success\r\n");
;			;
;			status = CH376S_STAT_DSK_RD;
;			while (status == CH376S_STAT_DSK_RD || status == 0x51)
;			{
;				SDCARD_CMD[0] = CH_CMD_RD_DATA0;
;				k_sd_cmd_delay();
;
;				data = SDCARD_DATA[0];
;				//k_debug_hex("k_sd_read_dir::k_sd_openfile:read:",data);
;
;				//k_sd_cmd_delay();
;
;				pdirentry = (LPCHAR) &direntry;
;
;				for (i = 0; i < sizeof(DIRENTRY); i++)
;				{
;					k_sd_dta_delay();
;					data = SDCARD_DATA[0];
;					//k_debug_char("k_sd_read_dir::entrydata:",data);
;					*pdirentry = data;
;					pdirentry++;
;				}
;
;				k_debug_string("k_sd_read_dir::FAT_DIR_INFO.NAME:");
;				k_debug_nstring(direntry.DIR_Name, 11);
;				//k_debug_string(pdirentry);
;				k_debug_string("\r\n");
;
;				if (direntry.DIR_Attr == ATTR_VOLUME_ID)
;				{
;					k_debug_string("** VOLUME **\r\n");
;				}
;
;				k_debug_integer("k_sd_read_dir::FAT_DIR_INFO.ATTR:",direntry.DIR_Attr);
;				//k_debug_integer("k_sd_read_dir::FAT_DIR_INFO.NTRES:",direntry.DIR_NTRes);
;				k_debug_integer("k_sd_read_dir::FAT_DIR_INFO.SIZE:",direntry.DIR_FileSize);
;
;				k_sd_cmd_delay();
;
;				SDCARD_CMD[0] = CH_CMD_FILE_ENUM_GO;
;				status = k_sd_waitforirq();
;				//k_debug_hex("k_sd_read_dir::CH_CMD_FILE_ENUM_GO:status:",status);
;			}
;
;			k_sd_close(0);
;		}
;	}
;}
;
;void k_sd_search_dir(LPCHAR searchString)
;{
;	FAT_DIR_INFO direntry;
;	LPCHAR pdirentry = NULL;
;	UCHAR data = 0;
;	UCHAR status = 0x000;
;	int i = 0;
;
;	//k_debug_string("k_sd_read_dir::enter\r\n");
;
;	if (k_sd_mount())
;	{
;		if (k_sd_openfile(searchString))
;		{
;			//k_debug_string("k_sd_read_dir::k_sd_openfile:success\r\n");
;			;
;			status = CH376S_STAT_DSK_RD;
;			while (status == CH376S_STAT_DSK_RD || status == 0x51)
;			{
;				SDCARD_CMD[0] = CH_CMD_RD_DATA0;
;				k_sd_cmd_delay();
;
;				data = SDCARD_DATA[0];
;				//k_debug_hex("k_sd_read_dir::k_sd_openfile:read:",data);
;
;				//k_sd_cmd_delay();
;
;				pdirentry = (LPCHAR) &direntry;
;
;				for (i = 0; i < sizeof(DIRENTRY); i++)
;				{
;					k_sd_dta_delay();
;					data = SDCARD_DATA[0];
;					//k_debug_char("k_sd_read_dir::entrydata:",data);
;					*pdirentry = data;
;					pdirentry++;
;				}
;
;				k_debug_string("k_sd_read_dir::FAT_DIR_INFO.NAME:");
;				k_debug_nstring(direntry.DIR_Name, 11);
;				//k_debug_string(pdirentry);
;				k_debug_string("\r\n");
;
;				if (direntry.DIR_Attr == ATTR_VOLUME_ID)
;				{
;					k_debug_string("** VOLUME **\r\n");
;				}
;
;				k_debug_integer("k_sd_read_dir::FAT_DIR_INFO.ATTR:",direntry.DIR_Attr);
;				//k_debug_integer("k_sd_read_dir::FAT_DIR_INFO.NTRES:",direntry.DIR_NTRes);
;				k_debug_integer("k_sd_read_dir::FAT_DIR_INFO.SIZE:",direntry.DIR_FileSize);
;
;				k_sd_cmd_delay();
;
;				SDCARD_CMD[0] = CH_CMD_FILE_ENUM_GO;
;				status = k_sd_waitforirq();
;				//k_debug_hex("k_sd_read_dir::CH_CMD_FILE_ENUM_GO:status:",status);
;			}
;
;			k_sd_close(0);
;		}
;	}
;}
;
;
;UINT16 k_read_disk_sector(LPCHAR buf, UINT32 iLbaStart, UINT8 iSectorCount)
;{
;	UINT16 size = 0;
;	UINT8  err;
;	UINT16 mBlockCount;
;
;	UINT8  s = USB_INT_DISK_READ;
;
;	k_debug_long("k_read_disk_sector::iLbaStart:",iLbaStart);
;
;	for (err = 0; err != 3; ++err)
;	{
;		xWriteCH376Cmd(CMD5H_DISK_READ);
;		k_sd_cmd_delay();
;		k_sd_cmd_delay();
;		xWriteCH376Data((UINT8) iLbaStart);
;		k_sd_dta_delay();
;		xWriteCH376Data((UINT8) ((UINT16) iLbaStart >> 8));
;		k_sd_dta_delay();
;		xWriteCH376Data((UINT8) (iLbaStart >> 16));
;		k_sd_dta_delay();
;		xWriteCH376Data((UINT8) (iLbaStart >> 24));
;		k_sd_dta_delay();
;		xWriteCH376Data(iSectorCount);
;		k_sd_dta_delay();
;		xEndCH376Cmd();
;
;		s = USB_INT_DISK_READ;
;
;		for (mBlockCount = iSectorCount * DEF_SECTOR_SIZE / CH376_DAT_BLOCK_LEN;mBlockCount != 0; --mBlockCount)
;		{
;			k_debug_integer("k_read_disk_sector::mBlockCount:",mBlockCount);
;
;			s = k_sd_waitforirq();
;
;			//s = USB_INT_DISK_READ;
;			if (s == USB_INT_DISK_READ)
;			{
;				s = k_sd_read_block(buf);
;				xWriteCH376Cmd( CMD0H_DISK_RD_GO);
;				xEndCH376Cmd();
;				buf += s;
;				size += s;
;				k_debug_integer("k_read_disk_sector::read:size:",size);
;			}
;			else
;			{
;				k_debug_integer("k_read_disk_sector::k_sd_waitforirq:",s);
;				break;
;			}
;			s = k_sd_waitforirq();
;		}
;
;		if (mBlockCount == 0)
;		{
;			s = k_sd_waitforirq();
;			if (s == USB_INT_SUCCESS)
;				return (size);
;		}
;		if (s == USB_INT_DISCONNECT)
;			return (size);
;		k_sd_disk_req_sense();
;	}
;	return (size);
;}
;
;UINT8 k_sd_cmd_and_irq( UINT8 mCmd )
;{
;	xWriteCH376Cmd( mCmd );
;	k_sd_cmd_delay();
;	xEndCH376Cmd( );
;	return( k_sd_waitforirq( ) );
;}
;
;UINT8 k_sd_disk_req_sense( void )
;{
;	UINT8	s;
;	mDelaymS( 5 );
;	s = k_sd_cmd_and_irq( CMD0H_DISK_R_SENSE );
;	mDelaymS( 5 );
;	return( s );
;}
;
;BOOL k_sd_read_vol(PDISKINFO pdiskInfo)
;{
;
;	BOOL bRet = FALSE;
;	//UINT size = 0;
;	UINT   index = 0;
;	BOOL   cmd = FALSE;
;	UINT16 read = 0;
;	//fat_BS_t direntry;
;	//LPCHAR pdirentry = (LPCHAR) &direntry;
;	UCHAR data = 0;
;	//UCHAR status = 0x000;
;	LPCHAR contents = NULL;
;	//LPCHAR test = "This is a test!\r\n";
;	int i = 0;
;
;	k_debug_string("k_sd_read_dir::enter\r\n");
;
;	//asm sei;
;
;	k_sd_reset();
;
;	//if(k_sd_ispresent() && k_sd_mount())
;	if(k_sd_mount())
;	{
;		_mount_lock = TRUE;
;
;		k_sd_openfile("\0");
;
;		if (k_sd_openfile(CONST_FXINFO_FILE))
;		{
;
;			k_debug_string("k_sd_read_vol::opened\r\n");
;
;			//k_sd_byte_locate(0L);
;
;			if(pdiskInfo!=NULL)
;			{
;				memset(pdiskInfo,0,sizeof(DISKINFO));
;
;
;				k_sd_byte_read((LPCHAR)pdiskInfo,sizeof(DISKINFO),&read);
;				if(read == 0)
;				{
;					strcpy(pdiskInfo->stgName,"NO NAME");
;				}
;				k_debug_integer("k_sd_read_vol::k_sd_byte_read:read:", read);
;				k_debug_string("VOLUME NAME:");
;				k_debug_nstring(pdiskInfo->stgName, 32 );
;				k_debug_string("\r\n");
;
;				memcpy(&lastdiskInfo,pdiskInfo,sizeof(DISKINFO));
;				pdiskCache = &lastdiskInfo;
;
;				bRet = TRUE;
;			}
;
;			k_sd_close(CLOSE_NOUPDATE);
;		}
;
;		k_debug_string("k_sd_read_vol::exit\r\n");
;
;		_mount_lock = FALSE;
;	}
;	else
;	{
;		pdiskCache = NULL;
;	}
;
;	//asm cli;
;
;	return bRet;
;}
;
;BOOL k_sd_write_file(LPCHAR fileName,LPVOID fileBuffer,UINT fileSize)
;{
;
;	BOOL bRet = FALSE;
;	UINT   index = 0;
;	BOOL   cmd = FALSE;
;	UINT16 wrote = 0;
;	int i = 0;
;
;	k_debug_integer("k_sd_write_file::enter:",fileSize);
;
;	//asm sei;
;
;	k_sd_reset();
;
;	if(fileName && k_sd_ispresent() && k_sd_mount())
;	{
;		k_sd_openfile("\0");
;
;		k_sd_delete(fileName);
;
;		k_sd_reset();
;
;		k_sd_openfile("\0");
;		if(k_sd_createfile(fileName))
;		{
;			if (k_sd_openfile(fileName))
;			{
;				k_sd_cmd_delay();
;				k_debug_string("k_sd_write_file::opened\r\n");
;				if(fileBuffer!=NULL)
;				{
;					k_sd_byte_write((LPCHAR)fileBuffer,fileSize,&wrote);
;					k_debug_integer("k_sd_write_file::k_sd_byte_write:wrote:", wrote);
;					bRet = (wrote == fileSize);
;				}
;				k_sd_close(TRUE);
;			}
;		}
;		k_debug_string("k_sd_write_file::exit\r\n");
;	}
;
;	//asm cli;
;
;	return bRet;
;}
;
;BOOL k_sd_read_file(LPCHAR fileName,LPVOID fileBuffer,UINT fileSize)
;{
;
;	BOOL bRet = FALSE;
;	UINT   index = 0;
;	BOOL   cmd = FALSE;
;	UINT16 read = 0;
;	UCHAR data = 0;
;	LPCHAR contents = NULL;
;	int i = 0;
;
;	k_debug_string("k_sd_read_file::enter\r\n");
;
;	//asm sei;
;
;	k_sd_reset();
;
;	if(k_sd_ispresent() && k_sd_mount())
;	{
;		if (k_sd_openfile(CONST_FXINFO_FILE))
;		{
;
;			k_debug_string("k_sd_read_file::opened\r\n");
;
;			//k_sd_byte_locate(0L);
;
;			if(fileBuffer!=NULL)
;			{
;				memset(fileBuffer,0,fileSize);
;				k_sd_byte_read((LPCHAR)fileBuffer,fileSize,&read);
;
;
;				k_debug_integer("k_sd_read_file::k_sd_byte_read:read:", read);
;
;				bRet = TRUE;
;			}
;
;			k_sd_close(CLOSE_NOUPDATE);
;		}
;
;		k_debug_string("k_sd_read_file::exit\r\n");
;	}
;
;	//asm cli;
;
;	return bRet;
;}
;
;BOOL k_sd_create_dir(LPCHAR dirName)
;{
;	UCHAR status = 0;
;	BOOL bRet = FALSE;
;
;	if (k_sd_setfilename(dirName))
;	{
;		k_sd_sendcmd( CMD0H_DIR_CREATE);
;		status = k_sd_waitforirq();
;		if (status == USB_INT_SUCCESS)
;		{
;			bRet = TRUE;
;		}
;	}
;
;	return bRet;
;}
;
;BOOL k_sd_getdirinfo(P_FAT_DIR_INFO pdirName)
;{
;	int i = 0;
;	UCHAR status = 0;
;	UCHAR data = 0;
;	BOOL bRet = FALSE;
;	LPCHAR ptr = (LPCHAR) pdirName;
;
;	if (k_sd_openfile("/NEWDIR"))
;	{
;		k_sd_sendcmd( CMD1H_DIR_INFO_READ);
;		k_sd_senddta(0xFF);
;		status = k_sd_waitforirq();
;		k_debug_hex("k_sd_getdirinfo::CMD1H_DIR_INFO_READ:read:", status);
;		if (status == USB_INT_SUCCESS)
;		{
;			k_sd_sendcmd( CH_CMD_RD_DATA0);
;
;			//data = SDCARD_DATA[0];
;			//k_debug_hex("k_sd_getdirinfo::read:",data);
;
;			//k_sd_cmd_delay();
;
;			for (i = 0; i < sizeof(FAT_DIR_INFO); i++)
;			{
;				k_sd_dta_delay();
;				data = SDCARD_DATA[0];
;				k_debug_char("k_sd_getdirinfo::entrydata:", data);
;				*ptr = data;
;				ptr++;
;			}
;
;			bRet = TRUE;
;		}
;
;		k_sd_close(FALSE);
;	}
;	return bRet;
;}
;
;BOOL k_sd_delete(LPCHAR dirOrFileName)
;{
;	UCHAR status = 0;
;	BOOL bRet = FALSE;
;
;	k_debug_string("k_sd_delete:enter\r\n");
;
;	if (k_sd_setfilename(dirOrFileName))
;	{
;		k_sd_sendcmd( CMD0H_FILE_ERASE);
;		status = k_sd_waitforirq();
;		if (status == USB_INT_SUCCESS)
;		{
;			bRet = TRUE;
;		}
;		//k_sd_close(TRUE);
;	}
;
;
;	k_debug_integer("k_sd_delete:exit:",bRet);
;
;	return bRet;
;}
;
;BOOL k_sd_close(UCHAR update)
;{
;	UCHAR status = 0;
;	BOOL bRet = FALSE;
;
;	k_debug_string("k_sd_close\r\n");
;
;	k_sd_sendcmd( CMD1H_FILE_CLOSE);
;	k_sd_senddta(update);
;
;	status = k_sd_waitforirq();
;	if (status == USB_INT_SUCCESS)
;	{
;		bRet = TRUE;
;	}
;
;	return bRet;
;}
;
;void k_sd_sendcmd(UCHAR command)
;{
;	SDCARD_CMD[0] = command;
;	k_sd_cmd_delay();
;}
;
;void k_sd_senddta(UCHAR data)
;{
;	SDCARD_DATA[0] = data;
;	k_sd_dta_delay();
;}
;
;void k_sd_cmd_delay(void)
;{
;#asm
;	NOP
;	NOP
;	NOP
;	NOP
;	NOP
;	NOP
;	NOP
;	NOP
;	NOP
;	NOP
;#endasm
;}
;
;void k_sd_dta_delay(void)
;{
;#asm
;	NOP
;	NOP
;	NOP
;	NOP
;	NOP
;#endasm
;}
;
;
;UINT8 k_sd_createfile( LPCHAR name )
;{
;	if(name)
;	{
;		k_debug_string("k_sd_createfile:name:");
;		k_debug_string(name);
;		k_debug_string("\r\n");
;
;		k_sd_setfilename( name );
;	}
;	return( k_sd_cmd_and_irq( CMD0H_FILE_CREATE ) );
;}
;
;UINT8	k_sd_read_block( PUINT8 buf )
;{
;	UINT8	s, l;
;	xWriteCH376Cmd( CMD01_RD_USB_DATA0 );
;	s = l = xReadCH376Data( );
;	if ( l ) {
;		do {
;			*buf = xReadCH376Data( );
;			buf ++;
;		} while ( -- l );
;	}
;	xEndCH376Cmd( );
;	return( s );
;}
;
;
;void k_sd_write_host_block( PUINT8 buf, UINT8 len )
;{
;	xWriteCH376Cmd( CMD10_WR_HOST_DATA );
;	xWriteCH376Data( len );
;	if ( len ) {
;		do {
;			xWriteCH376Data( *buf );
;			buf ++;
;		} while ( -- len );
;	}
;	xEndCH376Cmd( );
;}
;
;void k_sd_write_ofs_blocks( PUINT8 buf, UINT8 ofs, UINT8 len )
;{
;	xWriteCH376Cmd( CMD20_WR_OFS_DATA );
;	xWriteCH376Data( ofs );
;	xWriteCH376Data( len );
;	if ( len ) {
;		do {
;			xWriteCH376Data( *buf );
;			buf ++;
;		} while ( -- len );
;	}
;	xEndCH376Cmd( );
;}
;
;UINT8 k_sd_byte_locate( UINT32 offset )
;{
;	xWriteCH376Cmd( CMD4H_BYTE_LOCATE );
;	xWriteCH376Data( (UINT8)offset );
;	xWriteCH376Data( (UINT8)((UINT16)offset>>8) );
;	xWriteCH376Data( (UINT8)(offset>>16) );
;	xWriteCH376Data( (UINT8)(offset>>24) );
;	xEndCH376Cmd( );
;	return( Wait376Interrupt( ) );
;}
;
;/*
;UINT8 k_sd_byte_read( PUINT8 buf, UINT16 ReqCount, PUINT16 RealCount )
;{
;	UINT8	s;
;
;	k_debug_integer("k_sd_byte_read:",ReqCount);
;
;	xWriteCH376Cmd( CMD2H_BYTE_READ );
;	xWriteCH376Data( (UINT8)ReqCount );
;	xWriteCH376Data( (UINT8)(ReqCount>>8) );
;	xEndCH376Cmd( );
;	if ( RealCount ) *RealCount = 0;
;	while ( 1 )
;	{
;		s = k_sd_waitforirq( );
;		k_debug_integer("k_sd_byte_read:status:",s);
;		if ( s == USB_INT_DISK_READ || s == USB_INT_SUCCESS)
;		{
;			s = k_sd_read_block( buf );
;			xWriteCH376Cmd( CMD0H_BYTE_RD_GO );
;			xEndCH376Cmd( );
;			buf += s;
;			if ( RealCount )
;				*RealCount += s;
;
;			k_debug_integer("k_sd_byte_read:RealCount:",*RealCount);
;		}
;		//else if ( s == USB_INT_SUCCESS ) return( s );
;		else return( s );
;	}
;}
;*/
;UINT8 k_sd_byte_read( PUINT8 buf, UINT16 ReqCount, PUINT16 RealCount )
;{
;	UINT8	s;
;
;	k_debug_integer("k_sd_byte_read:ReqCount:",ReqCount);
;
;	k_debug_hex("k_sd_byte_read:ReqCount L:",(UINT8)ReqCount );
;	k_debug_hex("k_sd_byte_read:ReqCount H:",(UINT8)(ReqCount>>8));
;
;	xWriteCH376Cmd( CMD2H_BYTE_READ );
;	xWriteCH376Data( (UINT8)ReqCount );
;	xWriteCH376Data( (UINT8)(ReqCount>>8) );
;	xEndCH376Cmd( );
;	if ( RealCount )
;		*RealCount = 0;
;
;	s = k_sd_waitforirq( );
;	k_debug_integer("k_sd_byte_read:INITIAL:",s);
;	if(s == USB_INT_SUCCESS || s == USB_INT_DISK_READ)
;	{
;		k_debug_integer("k_sd_byte_read:STATUS:",s);
;
;		s = USB_INT_DISK_READ;
;		while(s == USB_INT_DISK_READ)
;		{
;			s = k_sd_read_block( buf );
;			buf += s;
;
;			if ( RealCount )
;			{
;				*RealCount += s;
;			}
;			k_debug_integer("k_sd_byte_read:READ:",s);
;
;			xWriteCH376Cmd( CMD0H_BYTE_RD_GO );
;			xEndCH376Cmd( );
;
;			s = k_sd_waitforirq();
;		}
;	}
;
;	return s;
;}
;
;/*
;UINT8 k_sd_byte_write( LPCHAR buf, UINT16 ReqCount, PUINT16 RealCount )
;{
;	UINT8	s;
;
;	k_debug_integer("k_sd_byte_write:",ReqCount);
;
;	xWriteCH376Cmd( CMD2H_BYTE_WRITE );
;	xWriteCH376Data( (UINT8)ReqCount );
;	xWriteCH376Data( (UINT8)(ReqCount>>8) );
;	xEndCH376Cmd( );
;	if ( RealCount ) *RealCount = 0;
;	while ( 1 )
;	{
;		s = k_sd_waitforirq( );
;		k_debug_integer("k_sd_byte_write:status1:",s);
;		//if ( s == USB_INT_DISK_WRITE )
;		if ( s == USB_INT_SUCCESS ||  s == USB_INT_DISK_WRITE)
;		{
;			s = k_sd_write_req_block( buf );
;
;			xWriteCH376Cmd( CMD0H_BYTE_WR_GO );
;			xEndCH376Cmd( );
;			buf += s;
;
;			if ( RealCount )
;			{
;				*RealCount += s;
;				if(*RealCount == ReqCount)
;					return s;
;			}
;			k_debug_integer("k_sd_byte_write:status2:",s);
;		}
;		//e-lse if ( s == USB_INT_SUCCESS ) return( s );
;		else return( s );
;	}
;}
;*/
;
;UINT8 k_sd_byte_write( LPCHAR buf, UINT16 ReqCount, PUINT16 RealCount )
;{
;	UINT8	s;
;
;	k_debug_integer("k_sd_byte_write:ReqCount:",ReqCount);
;
;	k_debug_hex("k_sd_byte_write:ReqCount L:",(UINT8)ReqCount );
;	k_debug_hex("k_sd_byte_write:ReqCount H:",(UINT8)(ReqCount>>8));
;
;	xWriteCH376Cmd( CMD2H_BYTE_WRITE );
;	xWriteCH376Data( (UINT8)ReqCount );
;	xWriteCH376Data( (UINT8)(ReqCount>>8) );
;	xEndCH376Cmd( );
;
;	if ( RealCount )
;		*RealCount = 0;
;
;	s = k_sd_waitforirq( );
;
;	k_debug_integer("k_sd_byte_write:INITIAL:",s);
;	if(s == USB_INT_SUCCESS || s == CMD_RET_SUCCESS  || s == USB_INT_DISK_WRITE)
;	{
;		k_debug_integer("k_sd_byte_write:STATUS:",s);
;		s = USB_INT_DISK_WRITE;
;		while(s == USB_INT_DISK_WRITE)
;		{
;			s = k_sd_write_req_block( buf );
;			buf += s;
;
;			if ( RealCount )
;			{
;				*RealCount += s;
;			}
;			k_debug_integer("k_sd_byte_write:WRITE:",s);
;
;			xWriteCH376Cmd( CMD0H_BYTE_WR_GO );
;			xEndCH376Cmd( );
;
;			s = k_sd_waitforirq();
;			k_debug_integer("k_sd_byte_write:CMD0H_BYTE_WR_GO:STATUS:",s);
;		}
;	}
;
;	return s;
;}
;
;UINT8 k_sd_write_req_block( PUINT8 buf )
;{
;	UINT8	s, l;
;
;	k_debug_string("k_sd_write_req_block::ENTER\r\n");
;
;	xWriteCH376Cmd( CMD01_WR_REQ_DATA );
;	s = l = xReadCH376Data( );
;	k_debug_integer("k_sd_write_req_block:SIZE:",l);
;
;	if ( l )
;	{
;		do
;		{
;			xWriteCH376Data( *buf );
;			buf ++;
;		} while ( -- l );
;	}
;	xEndCH376Cmd( );
;
;	k_debug_integer("k_sd_write_req_block::EXIT:",s);
;
;	return( s );
;}
;
;
;void k_sd_test_new(void)
;{
;	UINT8 s;
;	UINT16 j;
;
;	mDelaymS(100);
;
;	//mInitCH376Host();
;
;	if (k_sd_initialize())
;	{
;		k_debug_string("k_sd_test::initialized...\r\n");
;		if (k_sd_ispresent())
;		{
;			k_debug_string("k_sd_test::card present...\r\n");
;
;			if (k_sd_mount())
;			{
;				k_debug_string("k_sd_test::card mounted...\r\n");
;
;				k_debug_string("k_sd_test::k_sd_read_dir...\r\n");
;				s = CH376ReadBlock(buf);
;				if (s == sizeof(INQUIRY_DATA))
;				{
;					buf[s] = 0;
;					k_debug_string("UdiskInfo:");
;					k_debug_string(
;							(char FAR*) ((P_INQUIRY_DATA) buf)->VendorIdStr);
;					k_debug_string("\r\n");
;				}
;
;			}
;			else
;			{
;				k_debug_string("k_sd_test::card NOT mounted...\r\n");
;			}
;		}
;		else
;		{
;			k_debug_string("k_sd_test::card NOT present...\r\n");
;		}
;	}
;	else
;	{
;		k_debug_string("k_sd_test::NOT initialized...\r\n");
;	}
;
;}
;
;void k_sd_test(void)
;{
;
;	DISKINFO di;
;	FAT_DIR_INFO dirName;
;
;	if (k_sd_initialize())
;	{
;		k_debug_string("k_sd_test::initialized...\r\n");
;		if (k_sd_ispresent())
;		{
;			k_debug_string("k_sd_test::card present...\r\n");
;
;			if (k_sd_mount())
;			{
;				k_debug_string("k_sd_test::card mounted...\r\n");
;
;				k_debug_string("k_sd_test::k_sd_read_dir...\r\n");
;
;				//k_sd_read_vol(&di);
;				//k_sd_search_dir("*VOL");
;
;				//k_sd_read_dir();
;				/*
;				 k_sd_read_vol();
;
;				 if(k_sd_getdirinfo( &dirName ))
;				 {
;				 k_debug_string("k_sd_getdirinfo::ROOT:FAT_DIR_INFO.NAME:");
;				 k_debug_nstring(dirName.DIR_Name,11);
;				 k_debug_string("\r\n");
;				 }
;				 */
;
;				/*
;				 k_debug_string("k_sd_test::k_sd_delete...\r\n");
;				 if(k_sd_delete("/NEWDIR"))
;				 {
;				 k_debug_string("k_sd_test::k_sd_delete:DELETED\r\n");
;				 }
;				 else
;				 {
;				 k_debug_string("k_sd_test::k_sd_delete:NOT DELETED\r\n");
;				 }
;
;				 k_debug_string("k_sd_test::k_sd_create_dir...\r\n");
;				 if(k_sd_create_dir("/NEWDIR"))
;				 {
;				 k_debug_string("k_sd_test::ck_sd_create_dir CREATED...\r\n");
;				 }
;				 else
;				 {
;				 k_debug_string("k_sd_test::ck_sd_create_dir:NOT CREATED\r\n");
;				 }
;
;				 k_debug_string("k_sd_test::k_sd_read_dir...\r\n");
;				 k_sd_read_dir();
;				 */
;			}
;			else
;			{
;				k_debug_string("k_sd_test::card NOT mounted...\r\n");
;			}
;		}
;		else
;		{
;			k_debug_string("k_sd_test::card NOT present...\r\n");
;		}
;	}
;	else
;	{
;		k_debug_string("k_sd_test::NOT initialized...\r\n");
;	}
;}
;
;
;#endif
;
	.line	1396
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\DRIVER_B2SDCard.c",48
	udata
~~lastdiskInfo
	ds	52
	ends
	udata
~~sectorBuffer
	ds	512
	ends
	udata
~~buf
	ds	64
	ends
	.sym	~~DRIVER_B2SDCard,~~DRIVER_B2SDCard,10,2,1416,48
	.sym	~~pdiskCache,~~pdiskCache,138,3,32,65
	.sym	~~lastdiskInfo,~~lastdiskInfo,10,3,416,65
	.sym	~~_mount_lock,~~_mount_lock,14,3,8
	.sym	~~sectorBuffer,~~sectorBuffer,110,3,0,512
	.sym	~~buf,~~buf,110,3,0,64
	.sym	~~sd_card_dir_string,~~sd_card_dir_string,110,3,0,3
	.sym	P_CH376_CMD_DATA,0,139,14,32,121
	.sym	CH376_CMD_DATA,0,11,14,288,121
	.sym	P_SENSE_DATA,0,138,14,32,105
	.sym	SENSE_DATA,0,10,14,144,105
	.sym	P_INQUIRY_DATA,0,138,14,32,104
	.sym	INQUIRY_DATA,0,10,14,288,104
	.sym	P_BULK_ONLY_CBW,0,138,14,32,103
	.sym	BULK_ONLY_CBW,0,10,14,248,103
	.sym	P_FAT_DIR_INFO,0,138,14,32,102
	.sym	FAT_DIR_INFO,0,10,14,256,102
	.sym	PUINT8V,0,142,14,32
	.sym	UINT8V,0,14,14,8
	.sym	PUINT32,0,146,14,32
	.sym	PUINT16,0,143,14,32
	.sym	PUINT8,0,142,14,32
	.sym	UINT32,0,18,14,32
	.sym	UINT16,0,15,14,16
	.sym	UINT8,0,14,14,8
	.sym	PFXDOSDEVICE,0,138,14,32,101
	.sym	FXDOSDEVICE,0,10,14,5648,101
	.sym	DOSINITDEVICE,0,641,14,32
	.sym	DOSSECTORWRITER,0,654,14,32
	.sym	DOSSECTORREADER,0,654,14,32
	.sym	PIDENTIFY_DEVICE_DATA,0,138,14,32,100
	.sym	IDENTIFY_DEVICE_DATA,0,10,14,4096,100
	.sym	PIDSECTOR,0,138,14,32,77
	.sym	IDSECTOR,0,10,14,2048,77
	.sym	PLFN,0,138,14,32,76
	.sym	LFN,0,10,14,256,76
	.sym	PFAT16ENTRYLONG,0,138,14,32,75
	.sym	FAT16ENTRYLONG,0,10,14,288,75
	.sym	PFAT16ENTRY,0,138,14,32,74
	.sym	FAT16ENTRY,0,10,14,256,74
	.sym	Fat16BootSector,0,10,14,4096,73
	.sym	PPARTITIONTABLE,0,138,14,32,72
	.sym	PARTITIONTABLE,0,10,14,128,72
	.sym	PFATBOOTSECTOR,0,138,14,32,71
	.sym	FATBOOTSECTOR,0,10,14,928,71
	.sym	fat_BS_t,0,10,14,688,70
	.sym	fat_extBS_16_t,0,10,14,192,69
	.sym	PFAT32EXT,0,138,14,32,68
	.sym	fat_extBS_32_t,0,10,14,416,68
	.sym	P_FX_FAT_DIR_INFO,0,138,14,32,67
	.sym	FX_FAT_DIR_INFO,0,10,14,256,67
	.sym	PFILEINFO,0,138,14,32,66
	.sym	FILEINFO,0,10,14,136,66
	.sym	PDISKINFO,0,138,14,32,65
	.sym	DISKINFO,0,10,14,416,65
	.sym	PDIRENTRY,0,138,14,32,64
	.sym	DIRENTRY,0,10,14,256,64
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

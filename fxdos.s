;:ts=8
R0	equ	1
R1	equ	5
R2	equ	9
R3	equ	13
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxdos.c",0
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxdos.c",1
;#include "fxdos.h"
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxdos.c",2
;#include "fxmemorymanager.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxmemorymanager.h",0
	.line	39
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxdos.c",3
;#include "MINDRVR.H"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\MINDRVR.H",0
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos.h",0
	.line	25
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\MINDRVR.H",35
	.stag	REG_CMD_INFO,328,102
	.member	cmd,0,14,8,8
	.member	fr,8,16,8,16
	.member	sc,24,16,8,16
	.member	sn,40,16,8,16
	.member	cl,56,16,8,16
	.member	ch,72,16,8,16
	.member	dh,88,14,8,8
	.member	dc,96,14,8,8
	.member	ns,104,7,8,32
	.member	mc,136,5,8,16
	.member	lbaSize,152,14,8,8
	.member	lbaLow,160,18,8,32
	.member	lbaHigh,192,18,8,32
	.member	st,224,14,8,8
	.member	as,232,14,8,8
	.member	er,240,14,8,8
	.member	ec,248,14,8,8
	.member	to,256,14,8,8
	.member	totalBytesXfer,264,7,8,32
	.member	drqPackets,296,7,8,32
	.eos
	.line	475
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxdos.c",4
;#include "fxfloppy.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxfloppy.h",0
	.line	70
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxdos.c",5
;
;#pragma section CODE=FXDOS,offset $08:7FFF
FXDOS	section	offset $08:7FFF
	ends
;
;static UCHAR sectorBuffer[512];
;static CHAR	 longnamecount;
;static UCHAR longnameBuffer[255];
;
;FXDOSDEVICE fxdosDevice;
;
;static PFXNODELIST _k_dos_devicedrivers	= NULL;
	data
~~_k_dos_devicedrivers:
	dl	$0
	ends
;
;extern FX_DEVICE_DRIVER DRIVER_B2Console;
;extern FX_DEVICE_DRIVER DRIVER_B2SDCard;
;extern FX_DEVICE_DRIVER DRIVER_FMXSDCard;
;
;void k_dos_load_drivers(void)
;{
	.line	21
	.line	22
	FXDOS
	xdef	~~k_dos_load_drivers
	func
	.function	22
~~k_dos_load_drivers:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L2
	tcs
	phd
	tcd
	.block	22
;	CHAR major[16];
;	CHAR minor[16];
;
;	PFX_DEVICE_DRIVER driver = NULL;
;
;	_k_dos_devicedrivers 	= k_nodelist_allocate_list("_k_dos_devicedrivers" ,NULL);
major_1	set	0
minor_1	set	16
driver_1	set	32
	.sym	major,0,110,1,0,16
	.sym	minor,16,110,1,0,16
	.sym	driver,32,138,1,32,48
	stz	<L3+driver_1
	stz	<L3+driver_1+2
	.line	28
	pea	#^$0
	pea	#<$0
	pea	#^L1
	pea	#<L1
	jsl	~~k_nodelist_allocate_list
	sta	|~~_k_dos_devicedrivers
	stx	|~~_k_dos_devicedrivers+2
;
;	k_get_c256_major_version(major);
	.line	30
	pea	#0
	clc
	tdc
	adc	#<L3+major_1
	pha
	jsl	~~k_get_c256_major_version
;	k_debug_strings("k_dos_load_drivers VERSION MAJOR:",major);
	.line	31
	pea	#0
	clc
	tdc
	adc	#<L3+major_1
	pha
	pea	#^L1+21
	pea	#<L1+21
	jsl	~~k_debug_strings
;	k_get_c256_minor_version(minor);
	.line	32
	pea	#0
	clc
	tdc
	adc	#<L3+minor_1
	pha
	jsl	~~k_get_c256_minor_version
;	k_debug_strings("k_dos_load_drivers VERSION MINOR:",minor);
	.line	33
	pea	#0
	clc
	tdc
	adc	#<L3+minor_1
	pha
	pea	#^L1+55
	pea	#<L1+55
	jsl	~~k_debug_strings
;
;	driver = &DRIVER_B2Console;
	.line	35
	lda	#<~~DRIVER_B2Console
	sta	<L3+driver_1
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<L3+driver_1+2
;	k_nodelist_addtolist(_k_dos_devicedrivers,driver->type,driver->name,driver);
	.line	36
	pei	<L3+driver_1+2
	pei	<L3+driver_1
	pei	<L3+driver_1+2
	pei	<L3+driver_1
	ldy	#$a0
	lda	[<L3+driver_1],Y
	pha
	lda	|~~_k_dos_devicedrivers+2
	pha
	lda	|~~_k_dos_devicedrivers
	pha
	jsl	~~k_nodelist_addtolist
;
;	k_debug_strings("k_dos_load_drivers::driver->name:",driver->name);
	.line	38
	pei	<L3+driver_1+2
	pei	<L3+driver_1
	pea	#^L1+89
	pea	#<L1+89
	jsl	~~k_debug_strings
;	k_debug_strings("k_dos_load_drivers::driver->version:",driver->version);
	.line	39
	clc
	lda	#$40
	adc	<L3+driver_1
	sta	<R0
	lda	#$0
	adc	<L3+driver_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L1+123
	pea	#<L1+123
	jsl	~~k_debug_strings
;	k_debug_strings("k_dos_load_drivers::driver->major:",driver->hmajor);
	.line	40
	clc
	lda	#$80
	adc	<L3+driver_1
	sta	<R0
	lda	#$0
	adc	<L3+driver_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L1+160
	pea	#<L1+160
	jsl	~~k_debug_strings
;	k_debug_strings("k_dos_load_drivers::driver->minor:",driver->hminor);
	.line	41
	clc
	lda	#$90
	adc	<L3+driver_1
	sta	<R0
	lda	#$0
	adc	<L3+driver_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L1+195
	pea	#<L1+195
	jsl	~~k_debug_strings
;	k_debug_integer("k_dos_load_drivers::driver->type:",driver->type);
	.line	42
	ldy	#$a0
	lda	[<L3+driver_1],Y
	and	#$ff
	pha
	pea	#^L1+230
	pea	#<L1+230
	jsl	~~k_debug_integer
;	k_debug_pointer("k_dos_load_drivers::driver->f_driver_load:",driver->f_driver_load);
	.line	43
	ldy	#$a3
	lda	[<L3+driver_1],Y
	pha
	ldy	#$a1
	lda	[<L3+driver_1],Y
	pha
	pea	#^L1+264
	pea	#<L1+264
	jsl	~~k_debug_pointer
;
;	if((strcmp(driver->hmajor,major) == 0) && (strcmp(driver->hminor,minor) == 0))
	.line	45
;	{
	pea	#0
	clc
	tdc
	adc	#<L3+major_1
	pha
	clc
	lda	#$80
	adc	<L3+driver_1
	sta	<R0
	lda	#$0
	adc	<L3+driver_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~strcmp
	tax
	beq	L5
	brl	L10001
L5:
	pea	#0
	clc
	tdc
	adc	#<L3+minor_1
	pha
	clc
	lda	#$90
	adc	<L3+driver_1
	sta	<R1
	lda	#$0
	adc	<L3+driver_1+2
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~strcmp
	tax
	beq	L6
	brl	L10001
L6:
	.line	46
;		k_debug_strings("k_dos_load_drivers[HARWARE MATCH]:",driver->name);
	.line	47
	pei	<L3+driver_1+2
	pei	<L3+driver_1
	pea	#^L1+307
	pea	#<L1+307
	jsl	~~k_debug_strings
;		if(driver->f_driver_load)
	.line	48
;			((DEVICEDRIVER_LOAD)driver->f_driver_load)();
	ldy	#$a1
	lda	[<L3+driver_1],Y
	ldy	#$a3
	ora	[<L3+driver_1],Y
	bne	L7
	brl	L10002
L7:
	.line	49
	ldy	#$a3
	lda	[<L3+driver_1],Y
	tax
	ldy	#$a1
	lda	[<L3+driver_1],Y
	xref	~~~lcal
	jsl	~~~lcal
;	}
L10002:
	.line	50
;
;
;	driver = &DRIVER_B2SDCard;
L10001:
	.line	53
	lda	#<~~DRIVER_B2SDCard
	sta	<L3+driver_1
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<L3+driver_1+2
;
;	k_nodelist_addtolist(_k_dos_devicedrivers,driver->type,driver->name,driver);
	.line	55
	pei	<L3+driver_1+2
	pei	<L3+driver_1
	pei	<L3+driver_1+2
	pei	<L3+driver_1
	ldy	#$a0
	lda	[<L3+driver_1],Y
	pha
	lda	|~~_k_dos_devicedrivers+2
	pha
	lda	|~~_k_dos_devicedrivers
	pha
	jsl	~~k_nodelist_addtolist
;
;	k_debug_strings("k_dos_load_drivers::driver->name:",driver->name);
	.line	57
	pei	<L3+driver_1+2
	pei	<L3+driver_1
	pea	#^L1+342
	pea	#<L1+342
	jsl	~~k_debug_strings
;	k_debug_strings("k_dos_load_drivers::driver->version:",driver->version);
	.line	58
	clc
	lda	#$40
	adc	<L3+driver_1
	sta	<R0
	lda	#$0
	adc	<L3+driver_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L1+376
	pea	#<L1+376
	jsl	~~k_debug_strings
;	k_debug_strings("k_dos_load_drivers::driver->major:",driver->hmajor);
	.line	59
	clc
	lda	#$80
	adc	<L3+driver_1
	sta	<R0
	lda	#$0
	adc	<L3+driver_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L1+413
	pea	#<L1+413
	jsl	~~k_debug_strings
;	k_debug_strings("k_dos_load_drivers::driver->minor:",driver->hminor);
	.line	60
	clc
	lda	#$90
	adc	<L3+driver_1
	sta	<R0
	lda	#$0
	adc	<L3+driver_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L1+448
	pea	#<L1+448
	jsl	~~k_debug_strings
;	k_debug_integer("k_dos_load_drivers::driver->type:",driver->type);
	.line	61
	ldy	#$a0
	lda	[<L3+driver_1],Y
	and	#$ff
	pha
	pea	#^L1+483
	pea	#<L1+483
	jsl	~~k_debug_integer
;	k_debug_pointer("k_dos_load_drivers::driver->f_driver_load:",driver->f_driver_load);
	.line	62
	ldy	#$a3
	lda	[<L3+driver_1],Y
	pha
	ldy	#$a1
	lda	[<L3+driver_1],Y
	pha
	pea	#^L1+517
	pea	#<L1+517
	jsl	~~k_debug_pointer
;
;	if((strcmp(driver->hmajor,major) == 0) && (strcmp(driver->hminor,minor) == 0))
	.line	64
;	{
	pea	#0
	clc
	tdc
	adc	#<L3+major_1
	pha
	clc
	lda	#$80
	adc	<L3+driver_1
	sta	<R0
	lda	#$0
	adc	<L3+driver_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~strcmp
	tax
	beq	L8
	brl	L10003
L8:
	pea	#0
	clc
	tdc
	adc	#<L3+minor_1
	pha
	clc
	lda	#$90
	adc	<L3+driver_1
	sta	<R1
	lda	#$0
	adc	<L3+driver_1+2
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~strcmp
	tax
	beq	L9
	brl	L10003
L9:
	.line	65
;		k_debug_strings("k_dos_load_drivers[HARWARE MATCH]:",driver->name);
	.line	66
	pei	<L3+driver_1+2
	pei	<L3+driver_1
	pea	#^L1+560
	pea	#<L1+560
	jsl	~~k_debug_strings
;		if(driver->f_driver_load)
	.line	67
;			((DEVICEDRIVER_LOAD)driver->f_driver_load)();
	ldy	#$a1
	lda	[<L3+driver_1],Y
	ldy	#$a3
	ora	[<L3+driver_1],Y
	bne	L10
	brl	L10004
L10:
	.line	68
	ldy	#$a3
	lda	[<L3+driver_1],Y
	tax
	ldy	#$a1
	lda	[<L3+driver_1],Y
	xref	~~~lcal
	jsl	~~~lcal
;	}
L10004:
	.line	69
;
;	driver = &DRIVER_FMXSDCard;
L10003:
	.line	71
	lda	#<~~DRIVER_FMXSDCard
	sta	<L3+driver_1
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<L3+driver_1+2
;	k_nodelist_addtolist(_k_dos_devicedrivers,driver->type,driver->name,driver);
	.line	72
	pei	<L3+driver_1+2
	pei	<L3+driver_1
	pei	<L3+driver_1+2
	pei	<L3+driver_1
	ldy	#$a0
	lda	[<L3+driver_1],Y
	pha
	lda	|~~_k_dos_devicedrivers+2
	pha
	lda	|~~_k_dos_devicedrivers
	pha
	jsl	~~k_nodelist_addtolist
;	k_debug_strings("k_dos_load_drivers::driver->name:",driver->name);
	.line	73
	pei	<L3+driver_1+2
	pei	<L3+driver_1
	pea	#^L1+595
	pea	#<L1+595
	jsl	~~k_debug_strings
;	k_debug_strings("k_dos_load_drivers::driver->version:",driver->version);
	.line	74
	clc
	lda	#$40
	adc	<L3+driver_1
	sta	<R0
	lda	#$0
	adc	<L3+driver_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L1+629
	pea	#<L1+629
	jsl	~~k_debug_strings
;	k_debug_strings("k_dos_load_drivers::driver->major:",driver->hmajor);
	.line	75
	clc
	lda	#$80
	adc	<L3+driver_1
	sta	<R0
	lda	#$0
	adc	<L3+driver_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L1+666
	pea	#<L1+666
	jsl	~~k_debug_strings
;	k_debug_strings("k_dos_load_drivers::driver->minor:",driver->hminor);
	.line	76
	clc
	lda	#$90
	adc	<L3+driver_1
	sta	<R0
	lda	#$0
	adc	<L3+driver_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L1+701
	pea	#<L1+701
	jsl	~~k_debug_strings
;	k_debug_integer("k_dos_load_drivers::driver->type:",driver->type);
	.line	77
	ldy	#$a0
	lda	[<L3+driver_1],Y
	and	#$ff
	pha
	pea	#^L1+736
	pea	#<L1+736
	jsl	~~k_debug_integer
;	k_debug_pointer("k_dos_load_drivers::driver->f_driver_load:",driver->f_driver_load);
	.line	78
	ldy	#$a3
	lda	[<L3+driver_1],Y
	pha
	ldy	#$a1
	lda	[<L3+driver_1],Y
	pha
	pea	#^L1+770
	pea	#<L1+770
	jsl	~~k_debug_pointer
;
;	if((strcmp(driver->hmajor,major) == 0) && (strcmp(driver->hminor,minor) == 0))
	.line	80
;	{
	pea	#0
	clc
	tdc
	adc	#<L3+major_1
	pha
	clc
	lda	#$80
	adc	<L3+driver_1
	sta	<R0
	lda	#$0
	adc	<L3+driver_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~strcmp
	tax
	beq	L11
	brl	L10005
L11:
	pea	#0
	clc
	tdc
	adc	#<L3+minor_1
	pha
	clc
	lda	#$90
	adc	<L3+driver_1
	sta	<R1
	lda	#$0
	adc	<L3+driver_1+2
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~strcmp
	tax
	beq	L12
	brl	L10005
L12:
	.line	81
;		k_debug_strings("k_dos_load_drivers[HARWARE MATCH]:",driver->name);
	.line	82
	pei	<L3+driver_1+2
	pei	<L3+driver_1
	pea	#^L1+813
	pea	#<L1+813
	jsl	~~k_debug_strings
;	}
	.line	83
;
;}
L10005:
	.line	85
L13:
	pld
	tsc
	clc
	adc	#L2
	tcs
	rtl
	.endblock	85
L2	equ	44
L3	equ	9
	ends
	efunc
	.endfunc	85,9,44
	.line	85
	data
L1:
	db	$5F,$6B,$5F,$64,$6F,$73,$5F,$64,$65,$76,$69,$63,$65,$64,$72
	db	$69,$76,$65,$72,$73,$00,$6B,$5F,$64,$6F,$73,$5F,$6C,$6F,$61
	db	$64,$5F,$64,$72,$69,$76,$65,$72,$73,$20,$56,$45,$52,$53,$49
	db	$4F,$4E,$20,$4D,$41,$4A,$4F,$52,$3A,$00,$6B,$5F,$64,$6F,$73
	db	$5F,$6C,$6F,$61,$64,$5F,$64,$72,$69,$76,$65,$72,$73,$20,$56
	db	$45,$52,$53,$49,$4F,$4E,$20,$4D,$49,$4E,$4F,$52,$3A,$00,$6B
	db	$5F,$64,$6F,$73,$5F,$6C,$6F,$61,$64,$5F,$64,$72,$69,$76,$65
	db	$72,$73,$3A,$3A,$64,$72,$69,$76,$65,$72,$2D,$3E,$6E,$61,$6D
	db	$65,$3A,$00,$6B,$5F,$64,$6F,$73,$5F,$6C,$6F,$61,$64,$5F,$64
	db	$72,$69,$76,$65,$72,$73,$3A,$3A,$64,$72,$69,$76,$65,$72,$2D
	db	$3E,$76,$65,$72,$73,$69,$6F,$6E,$3A,$00,$6B,$5F,$64,$6F,$73
	db	$5F,$6C,$6F,$61,$64,$5F,$64,$72,$69,$76,$65,$72,$73,$3A,$3A
	db	$64,$72,$69,$76,$65,$72,$2D,$3E,$6D,$61,$6A,$6F,$72,$3A,$00
	db	$6B,$5F,$64,$6F,$73,$5F,$6C,$6F,$61,$64,$5F,$64,$72,$69,$76
	db	$65,$72,$73,$3A,$3A,$64,$72,$69,$76,$65,$72,$2D,$3E,$6D,$69
	db	$6E,$6F,$72,$3A,$00,$6B,$5F,$64,$6F,$73,$5F,$6C,$6F,$61,$64
	db	$5F,$64,$72,$69,$76,$65,$72,$73,$3A,$3A,$64,$72,$69,$76,$65
	db	$72,$2D,$3E,$74,$79,$70,$65,$3A,$00,$6B,$5F,$64,$6F,$73,$5F
	db	$6C,$6F,$61,$64,$5F,$64,$72,$69,$76,$65,$72,$73,$3A,$3A,$64
	db	$72,$69,$76,$65,$72,$2D,$3E,$66,$5F,$64,$72,$69,$76,$65,$72
	db	$5F,$6C,$6F,$61,$64,$3A,$00,$6B,$5F,$64,$6F,$73,$5F,$6C,$6F
	db	$61,$64,$5F,$64,$72,$69,$76,$65,$72,$73,$5B,$48,$41,$52,$57
	db	$41,$52,$45,$20,$4D,$41,$54,$43,$48,$5D,$3A,$00,$6B,$5F,$64
	db	$6F,$73,$5F,$6C,$6F,$61,$64,$5F,$64,$72,$69,$76,$65,$72,$73
	db	$3A,$3A,$64,$72,$69,$76,$65,$72,$2D,$3E,$6E,$61,$6D,$65,$3A
	db	$00,$6B,$5F,$64,$6F,$73,$5F,$6C,$6F,$61,$64,$5F,$64,$72,$69
	db	$76,$65,$72,$73,$3A,$3A,$64,$72,$69,$76,$65,$72,$2D,$3E,$76
	db	$65,$72,$73,$69,$6F,$6E,$3A,$00,$6B,$5F,$64,$6F,$73,$5F,$6C
	db	$6F,$61,$64,$5F,$64,$72,$69,$76,$65,$72,$73,$3A,$3A,$64,$72
	db	$69,$76,$65,$72,$2D,$3E,$6D,$61,$6A,$6F,$72,$3A,$00,$6B,$5F
	db	$64,$6F,$73,$5F,$6C,$6F,$61,$64,$5F,$64,$72,$69,$76,$65,$72
	db	$73,$3A,$3A,$64,$72,$69,$76,$65,$72,$2D,$3E,$6D,$69,$6E,$6F
	db	$72,$3A,$00,$6B,$5F,$64,$6F,$73,$5F,$6C,$6F,$61,$64,$5F,$64
	db	$72,$69,$76,$65,$72,$73,$3A,$3A,$64,$72,$69,$76,$65,$72,$2D
	db	$3E,$74,$79,$70,$65,$3A,$00,$6B,$5F,$64,$6F,$73,$5F,$6C,$6F
	db	$61,$64,$5F,$64,$72,$69,$76,$65,$72,$73,$3A,$3A,$64,$72,$69
	db	$76,$65,$72,$2D,$3E,$66,$5F,$64,$72,$69,$76,$65,$72,$5F,$6C
	db	$6F,$61,$64,$3A,$00,$6B,$5F,$64,$6F,$73,$5F,$6C,$6F,$61,$64
	db	$5F,$64,$72,$69,$76,$65,$72,$73,$5B,$48,$41,$52,$57,$41,$52
	db	$45,$20,$4D,$41,$54,$43,$48,$5D,$3A,$00,$6B,$5F,$64,$6F,$73
	db	$5F,$6C,$6F,$61,$64,$5F,$64,$72,$69,$76,$65,$72,$73,$3A,$3A
	db	$64,$72,$69,$76,$65,$72,$2D,$3E,$6E,$61,$6D,$65,$3A,$00,$6B
	db	$5F,$64,$6F,$73,$5F,$6C,$6F,$61,$64,$5F,$64,$72,$69,$76,$65
	db	$72,$73,$3A,$3A,$64,$72,$69,$76,$65,$72,$2D,$3E,$76,$65,$72
	db	$73,$69,$6F,$6E,$3A,$00,$6B,$5F,$64,$6F,$73,$5F,$6C,$6F,$61
	db	$64,$5F,$64,$72,$69,$76,$65,$72,$73,$3A,$3A,$64,$72,$69,$76
	db	$65,$72,$2D,$3E,$6D,$61,$6A,$6F,$72,$3A,$00,$6B,$5F,$64,$6F
	db	$73,$5F,$6C,$6F,$61,$64,$5F,$64,$72,$69,$76,$65,$72,$73,$3A
	db	$3A,$64,$72,$69,$76,$65,$72,$2D,$3E,$6D,$69,$6E,$6F,$72,$3A
	db	$00,$6B,$5F,$64,$6F,$73,$5F,$6C,$6F,$61,$64,$5F,$64,$72,$69
	db	$76,$65,$72,$73,$3A,$3A,$64,$72,$69,$76,$65,$72,$2D,$3E,$74
	db	$79,$70,$65,$3A,$00,$6B,$5F,$64,$6F,$73,$5F,$6C,$6F,$61,$64
	db	$5F,$64,$72,$69,$76,$65,$72,$73,$3A,$3A,$64,$72,$69,$76,$65
	db	$72,$2D,$3E,$66,$5F,$64,$72,$69,$76,$65,$72,$5F,$6C,$6F,$61
	db	$64,$3A,$00,$6B,$5F,$64,$6F,$73,$5F,$6C,$6F,$61,$64,$5F,$64
	db	$72,$69,$76,$65,$72,$73,$5B,$48,$41,$52,$57,$41,$52,$45,$20
	db	$4D,$41,$54,$43,$48,$5D,$3A,$00
	ends
;
;
;PFXDOSDEVICE k_create_dos_device(UINT type)
;{
	.line	88
	.line	89
	FXDOS
	xdef	~~k_create_dos_device
	func
	.function	89
~~k_create_dos_device:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L15
	tcs
	phd
	tcd
type_0	set	4
	.block	89
;	INT x = 0;
;
;	BYTE	errorCode;
;	CHAR	byte;
;
;	BYTE	s;
;
;	BOOL isFAT12 = FALSE;
;
;	PFATBOOTSECTOR  pBoot = NULL;
;	PPARTITIONTABLE pPartTable 		= NULL;
;	PFXDOSDEVICE 	pfxdosDevice 	= NULL;
;	PFAT32EXT		pfat32 			= NULL;
;	ULONG lba = 0L;
;
;	INT partitionId = 0x00;
;
;    k_debug_integer("k_create_dos_device:",type);
x_1	set	0
errorCode_1	set	2
byte_1	set	3
s_1	set	4
isFAT12_1	set	5
pBoot_1	set	6
pPartTable_1	set	10
pfxdosDevice_1	set	14
pfat32_1	set	18
lba_1	set	22
partitionId_1	set	26
	.sym	x,0,5,1,16
	.sym	errorCode,2,14,1,8
	.sym	byte,3,14,1,8
	.sym	s,4,14,1,8
	.sym	isFAT12,5,14,1,8
	.sym	pBoot,6,138,1,32,71
	.sym	pPartTable,10,138,1,32,72
	.sym	pfxdosDevice,14,138,1,32,101
	.sym	pfat32,18,138,1,32,68
	.sym	lba,22,18,1,32
	.sym	partitionId,26,5,1,16
	.sym	type,4,16,6,16
	stz	<L16+x_1
	sep	#$20
	longa	off
	stz	<L16+isFAT12_1
	rep	#$20
	longa	on
	stz	<L16+pBoot_1
	stz	<L16+pBoot_1+2
	stz	<L16+pPartTable_1
	stz	<L16+pPartTable_1+2
	stz	<L16+pfxdosDevice_1
	stz	<L16+pfxdosDevice_1+2
	stz	<L16+pfat32_1
	stz	<L16+pfat32_1+2
	stz	<L16+lba_1
	stz	<L16+lba_1+2
	stz	<L16+partitionId_1
	.line	107
	pei	<L15+type_0
	pea	#^L14
	pea	#<L14
	jsl	~~k_debug_integer
;
;
;    pfxdosDevice = k_mem_allocate_heap(sizeof(FXDOSDEVICE));
	.line	110
	pea	#<$2c2
	jsl	~~k_mem_allocate_heap
	sta	<L16+pfxdosDevice_1
	stx	<L16+pfxdosDevice_1+2
;    if(pfxdosDevice)
	.line	111
;    {
	lda	<L16+pfxdosDevice_1
	ora	<L16+pfxdosDevice_1+2
	bne	L18
	brl	L10006
L18:
	.line	112
;    	memset(pfxdosDevice,0,sizeof(FXDOSDEVICE));
	.line	113
	pea	#<$2c2
	pea	#<$0
	pei	<L16+pfxdosDevice_1+2
	pei	<L16+pfxdosDevice_1
	jsl	~~memset
;
;    	switch(type)
	.line	115
	lda	<L15+type_0
	brl	L10007
;		{
	.line	116
;    	case FXDOS_SDC:
	.line	117
L10009:
;
;    		//pfxdosDevice->pfInit   = (DOSINITDEVICE)k_sd_dos_init;
;    		//pfxdosDevice->pfReader = (DOSSECTORREADER)k_read_sd_sector;
;    		break;
	.line	121
	brl	L10008
;
;    	case FXDOS_HDD:
	.line	123
L10010:
;
;    		//pfxdosDevice->pfInit   = (DOSINITDEVICE)k_hd_dos_init;
;    		//pfxdosDevice->pfReader = (DOSSECTORREADER)k_read_hd_sector;
;    		lba = 0L;
	.line	127
	stz	<L16+lba_1
	stz	<L16+lba_1+2
;
;    		break;
	.line	129
	brl	L10008
;
;    	case FXDOS_FDD:
	.line	131
L10011:
;
;    		//pfxdosDevice->pfInit   = (DOSINITDEVICE)floppy_init;//k_fd_dos_init;
;    		//pfxdosDevice->pfReader = (DOSSECTORREADER)k_read_fd_sector;
;    		lba = 0L;
	.line	135
	stz	<L16+lba_1
	stz	<L16+lba_1+2
;
;    		break;
	.line	137
	brl	L10008
;
;		}
	.line	139
L10007:
	xref	~~~swt
	jsl	~~~swt
	dw	3
	dw	5
	dw	L10009-1
	dw	6
	dw	L10010-1
	dw	7
	dw	L10011-1
	dw	L10008-1
L10008:
;
;    	k_debug_integer("k_create_dos_device size:",sizeof(FXDOSDEVICE));
	.line	141
	pea	#<$2c2
	pea	#^L14+21
	pea	#<L14+21
	jsl	~~k_debug_integer
;
;    	if(!pfxdosDevice->initialized)
	.line	143
;    		pfxdosDevice->pfInit((LPVOID)pfxdosDevice);
	ldy	#$1
	lda	[<L16+pfxdosDevice_1],Y
	and	#$ff
	beq	L19
	brl	L10012
L19:
	.line	144
	pei	<L16+pfxdosDevice_1+2
	pei	<L16+pfxdosDevice_1
	ldy	#$2b8
	lda	[<L16+pfxdosDevice_1],Y
	tax
	ldy	#$2b6
	lda	[<L16+pfxdosDevice_1],Y
	xref	~~~lcal
	jsl	~~~lcal
;
;
;    	if(!pfxdosDevice->initialized)
L10012:
	.line	147
;    	{
	ldy	#$1
	lda	[<L16+pfxdosDevice_1],Y
	and	#$ff
	beq	L20
	brl	L10013
L20:
	.line	148
;    		k_mem_deallocate_heap(pfxdosDevice);
	.line	149
	pei	<L16+pfxdosDevice_1+2
	pei	<L16+pfxdosDevice_1
	jsl	~~k_mem_deallocate_heap
;    		return NULL;
	.line	150
	lda	#$0
	tax
	lda	#$0
L21:
	tay
	lda	<L15+2
	sta	<L15+2+2
	lda	<L15+1
	sta	<L15+1+2
	pld
	tsc
	clc
	adc	#L15+2
	tcs
	tya
	rtl
;    	}
	.line	151
;
;		//_MSTR_CTRL[0] |= GABE_CTRL_SDC_LED;
;
;		errorCode = pfxdosDevice->pfReader(lba,sectorBuffer);
L10013:
	.line	155
	lda	#<~~sectorBuffer
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pei	<L16+lba_1+2
	pei	<L16+lba_1
	ldy	#$2bc
	lda	[<L16+pfxdosDevice_1],Y
	tax
	ldy	#$2ba
	lda	[<L16+pfxdosDevice_1],Y
	xref	~~~lcal
	jsl	~~~lcal
	sep	#$20
	longa	off
	sta	<L16+errorCode_1
	rep	#$20
	longa	on
;		k_debug_byte_array("pfxdosDevice->pfReader:\r\n",sectorBuffer,512);
	.line	156
	pea	#^$200
	pea	#<$200
	lda	#<~~sectorBuffer
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L14+47
	pea	#<L14+47
	jsl	~~k_debug_byte_array
;
;		pBoot =  (PFATBOOTSECTOR)sectorBuffer;;
	.line	158
	lda	#<~~sectorBuffer
	sta	<L16+pBoot_1
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<L16+pBoot_1+2
	.line	158
;
;		k_debug_integer("pBoot->sectors_per_cluster:",pBoot->sectors_per_cluster);
	.line	160
	ldy	#$d
	lda	[<L16+pBoot_1],Y
	and	#$ff
	pha
	pea	#^L14+73
	pea	#<L14+73
	jsl	~~k_debug_integer
;		k_debug_integer("pBoot->root_entry_count:",pBoot->root_entry_count);
	.line	161
	ldy	#$11
	lda	[<L16+pBoot_1],Y
	pha
	pea	#^L14+101
	pea	#<L14+101
	jsl	~~k_debug_integer
;		k_debug_integer("pBoot->total_sectors_16:",pBoot->total_sectors_16);
	.line	162
	ldy	#$13
	lda	[<L16+pBoot_1],Y
	pha
	pea	#^L14+126
	pea	#<L14+126
	jsl	~~k_debug_integer
;		k_debug_integer("pBoot->sectors_per_fat:",pBoot->sectors_per_fat);
	.line	163
	ldy	#$16
	lda	[<L16+pBoot_1],Y
	pha
	pea	#^L14+151
	pea	#<L14+151
	jsl	~~k_debug_integer
;		k_debug_integer("pBoot->sectors_per_track:",pBoot->sectors_per_track);
	.line	164
	ldy	#$18
	lda	[<L16+pBoot_1],Y
	pha
	pea	#^L14+175
	pea	#<L14+175
	jsl	~~k_debug_integer
;		k_debug_nstrings("pBoot->vol_name:",pBoot->vol_name,11);
	.line	165
	pea	#<$b
	clc
	lda	#$2b
	adc	<L16+pBoot_1
	sta	<R0
	lda	#$0
	adc	<L16+pBoot_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L14+201
	pea	#<L14+201
	jsl	~~k_debug_nstrings
;		k_debug_integer("pBoot->bytes_per_sector:",pBoot->bytes_per_sector);
	.line	166
	ldy	#$b
	lda	[<L16+pBoot_1],Y
	pha
	pea	#^L14+218
	pea	#<L14+218
	jsl	~~k_debug_integer
;		k_debug_hex("pBoot->fat_table_count:",pBoot->fat_table_count);
	.line	167
	ldy	#$10
	lda	[<L16+pBoot_1],Y
	pha
	pea	#^L14+243
	pea	#<L14+243
	jsl	~~k_debug_hex
;		k_debug_integer("pBoot->bytes_per_sector:",pBoot->hidden_sector_count);
	.line	168
	ldy	#$1c
	lda	[<L16+pBoot_1],Y
	pha
	pea	#^L14+267
	pea	#<L14+267
	jsl	~~k_debug_integer
;
;
;		if(pBoot->total_sectors_16 == 2880)
	.line	171
;			isFAT12 = TRUE;
	ldy	#$13
	lda	[<L16+pBoot_1],Y
	cmp	#<$b40
	beq	L22
	brl	L10014
L22:
	.line	172
	sep	#$20
	longa	off
	lda	#$1
	sta	<L16+isFAT12_1
	rep	#$20
	longa	on
;
;
;		if(!isFAT12)
L10014:
	.line	175
;		{
	lda	<L16+isFAT12_1
	and	#$ff
	beq	L23
	brl	L10015
L23:
	.line	176
;			pfat32 =  (PFAT32EXT)(&sectorBuffer[36]);
	.line	177
	lda	#<~~sectorBuffer+36
	sta	<L16+pfat32_1
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<L16+pfat32_1+2
;
;			k_debug_long("pfat32->table_size_32:",pfat32->table_size_32);
	.line	179
	ldy	#$2
	lda	[<L16+pfat32_1],Y
	pha
	lda	[<L16+pfat32_1]
	pha
	pea	#^L14+292
	pea	#<L14+292
	jsl	~~k_debug_long
;			k_debug_nstrings("pfat32->volume_label:",pfat32->volume_label,11);
	.line	180
	pea	#<$b
	clc
	lda	#$21
	adc	<L16+pfat32_1
	sta	<R0
	lda	#$0
	adc	<L16+pfat32_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L14+315
	pea	#<L14+315
	jsl	~~k_debug_nstrings
;
;			for(x=0;x<4;x++)
	.line	182
	stz	<L16+x_1
L10018:
;			{
	.line	183
;				k_debug_integer("*** partition table:",x);
	.line	184
	pei	<L16+x_1
	pea	#^L14+337
	pea	#<L14+337
	jsl	~~k_debug_integer
;
;				pPartTable = (PPARTITIONTABLE)&sectorBuffer[FAT_PARTITION_TABLE_1 + (0x10 * x)];
	.line	186
	lda	<L16+x_1
	asl	A
	asl	A
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#$1be
	adc	<R0
	sta	<R1
	clc
	lda	#<~~sectorBuffer
	adc	<R1
	sta	<R0
	lda	<R0
	sta	<L16+pPartTable_1
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<L16+pPartTable_1+2
;
;				if(pPartTable->partition_type == FAT_PARTITION_TYPE_DOS30 ||
	.line	188
;				   pPartTable->partition_type == FAT_PARTITION_TYPE_DOS33 ||
;				   pPartTable->partition_type == FAT_PARTITION_TYPE_DOS70)
;				{
	sep	#$20
	longa	off
	ldy	#$4
	lda	[<L16+pPartTable_1],Y
	cmp	#<$4
	rep	#$20
	longa	on
	bne	L25
	brl	L24
L25:
	sep	#$20
	longa	off
	ldy	#$4
	lda	[<L16+pPartTable_1],Y
	cmp	#<$6
	rep	#$20
	longa	on
	bne	L26
	brl	L24
L26:
	sep	#$20
	longa	off
	ldy	#$4
	lda	[<L16+pPartTable_1],Y
	cmp	#<$e
	rep	#$20
	longa	on
	beq	L27
	brl	L10019
L27:
L24:
	.line	191
;					k_debug_hex("FAT16 filesystem found from partition:", pPartTable->partition_type);
	.line	192
	ldy	#$4
	lda	[<L16+pPartTable_1],Y
	pha
	pea	#^L14+358
	pea	#<L14+358
	jsl	~~k_debug_hex
;					partitionId = x;
	.line	193
	lda	<L16+x_1
	sta	<L16+partitionId_1
;					break;
	.line	194
	brl	L10017
;				}
	.line	195
;				else
L10019:
;				{
	.line	197
;					k_debug_hex("*** pPartTable->partition_type:",pPartTable->partition_type);
	.line	198
	ldy	#$4
	lda	[<L16+pPartTable_1],Y
	pha
	pea	#^L14+397
	pea	#<L14+397
	jsl	~~k_debug_hex
;				}
	.line	199
;			}
	.line	200
L10016:
	inc	<L16+x_1
	lda	<L16+x_1
	bmi	L28
	dea
	dea
	dea
	dea
	bpl	L29
L28:
	brl	L10018
L29:
L10017:
;
;
;			memcpy(&pfxdosDevice->partitionTable,&sectorBuffer[FAT_PARTITION_TABLE_1 + (0x10 * partitionId)],sizeof(PARTITIONTABLE));
	.line	203
	pea	#<$10
	lda	<L16+partitionId_1
	asl	A
	asl	A
	asl	A
	asl	A
	sta	<R1
	clc
	lda	#$1be
	adc	<R1
	sta	<R2
	clc
	lda	#<~~sectorBuffer
	adc	<R2
	sta	<R1
	lda	<R1
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	#$7b
	adc	<L16+pfxdosDevice_1
	sta	<R1
	lda	#$0
	adc	<L16+pfxdosDevice_1+2
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~memcpy
;			k_debug_hex ("***fxdosDevice first_byte:",pfxdosDevice->partitionTable.first_byte);
	.line	204
	ldy	#$7b
	lda	[<L16+pfxdosDevice_1],Y
	pha
	pea	#^L14+429
	pea	#<L14+429
	jsl	~~k_debug_hex
;			k_debug_hex ("***fxdosDevice start_chs0:",pfxdosDevice->partitionTable.start_chs[0]);
	.line	205
	ldy	#$7c
	lda	[<L16+pfxdosDevice_1],Y
	pha
	pea	#^L14+456
	pea	#<L14+456
	jsl	~~k_debug_hex
;			k_debug_hex ("***fxdosDevice start_chs1:",pfxdosDevice->partitionTable.start_chs[1]);
	.line	206
	ldy	#$7d
	lda	[<L16+pfxdosDevice_1],Y
	pha
	pea	#^L14+483
	pea	#<L14+483
	jsl	~~k_debug_hex
;			k_debug_hex ("***fxdosDevice start_chs2:",pfxdosDevice->partitionTable.start_chs[2]);
	.line	207
	ldy	#$7e
	lda	[<L16+pfxdosDevice_1],Y
	pha
	pea	#^L14+510
	pea	#<L14+510
	jsl	~~k_debug_hex
;			k_debug_hex ("***fxdosDevice partition_type:",(INT)pfxdosDevice->partitionTable.partition_type);
	.line	208
	ldy	#$7f
	lda	[<L16+pfxdosDevice_1],Y
	and	#$ff
	pha
	pea	#^L14+537
	pea	#<L14+537
	jsl	~~k_debug_hex
;			k_debug_hex ("***fxdosDevice end_chs0:",pfxdosDevice->partitionTable.end_chs[0]);
	.line	209
	ldy	#$80
	lda	[<L16+pfxdosDevice_1],Y
	pha
	pea	#^L14+568
	pea	#<L14+568
	jsl	~~k_debug_hex
;			k_debug_hex ("***fxdosDevice end_chs1:",pfxdosDevice->partitionTable.end_chs[1]);
	.line	210
	ldy	#$81
	lda	[<L16+pfxdosDevice_1],Y
	pha
	pea	#^L14+593
	pea	#<L14+593
	jsl	~~k_debug_hex
;			k_debug_hex ("***fxdosDevice end_chs2:",pfxdosDevice->partitionTable.end_chs[2]);
	.line	211
	ldy	#$82
	lda	[<L16+pfxdosDevice_1],Y
	pha
	pea	#^L14+618
	pea	#<L14+618
	jsl	~~k_debug_hex
;			k_debug_long("***fxdosDevice start_sector:",pfxdosDevice->partitionTable.start_sector);
	.line	212
	ldy	#$85
	lda	[<L16+pfxdosDevice_1],Y
	pha
	ldy	#$83
	lda	[<L16+pfxdosDevice_1],Y
	pha
	pea	#^L14+643
	pea	#<L14+643
	jsl	~~k_debug_long
;			k_debug_long("***fxdosDevice length_sectors:",pfxdosDevice->partitionTable.length_sectors);
	.line	213
	ldy	#$89
	lda	[<L16+pfxdosDevice_1],Y
	pha
	ldy	#$87
	lda	[<L16+pfxdosDevice_1],Y
	pha
	pea	#^L14+672
	pea	#<L14+672
	jsl	~~k_debug_long
;		}
	.line	214
;		else
	brl	L10020
L10015:
;		{
	.line	216
;			memset(&pfxdosDevice->partitionTable,0,sizeof(PARTITIONTABLE));
	.line	217
	pea	#<$10
	pea	#<$0
	clc
	lda	#$7b
	adc	<L16+pfxdosDevice_1
	sta	<R0
	lda	#$0
	adc	<L16+pfxdosDevice_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~memset
;			pPartTable->start_sector = 0;
	.line	218
	lda	#$0
	ldy	#$8
	sta	[<L16+pPartTable_1],Y
	lda	#$0
	ldy	#$a
	sta	[<L16+pPartTable_1],Y
;		}
	.line	219
L10020:
;
;		pfxdosDevice->bsOffset = (pPartTable->start_sector * FAT_PAGE_SIZE);
	.line	221
	ldy	#$a
	lda	[<L16+pPartTable_1],Y
	pha
	ldy	#$8
	lda	[<L16+pPartTable_1],Y
	pha
	lda	#$9
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$28b
	sta	[<L16+pfxdosDevice_1],Y
	lda	<R0+2
	ldy	#$28d
	sta	[<L16+pfxdosDevice_1],Y
;
;		pfxdosDevice->errorCode = pfxdosDevice->pfReader(pfxdosDevice->bsOffset,sectorBuffer);
	.line	223
	lda	#<~~sectorBuffer
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$28d
	lda	[<L16+pfxdosDevice_1],Y
	pha
	ldy	#$28b
	lda	[<L16+pfxdosDevice_1],Y
	pha
	ldy	#$2bc
	lda	[<L16+pfxdosDevice_1],Y
	tax
	ldy	#$2ba
	lda	[<L16+pfxdosDevice_1],Y
	xref	~~~lcal
	jsl	~~~lcal
	sep	#$20
	longa	off
	ldy	#$2b5
	sta	[<L16+pfxdosDevice_1],Y
	rep	#$20
	longa	on
;		if(!pfxdosDevice->errorCode)
	.line	224
;		{
	ldy	#$2b5
	lda	[<L16+pfxdosDevice_1],Y
	and	#$ff
	beq	L30
	brl	L10021
L30:
	.line	225
;			memcpy(&pfxdosDevice->bootSector,sectorBuffer,sizeof(FATBOOTSECTOR));
	.line	226
	pea	#<$74
	lda	#<~~sectorBuffer
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	#$7
	adc	<L16+pfxdosDevice_1
	sta	<R1
	lda	#$0
	adc	<L16+pfxdosDevice_1+2
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~memcpy
;
;			k_debug_integer("***fxdosDevice bytes_per_sector:",(INT)pfxdosDevice->bootSector.bytes_per_sector);
	.line	228
	ldy	#$12
	lda	[<L16+pfxdosDevice_1],Y
	pha
	pea	#^L14+703
	pea	#<L14+703
	jsl	~~k_debug_integer
;			k_debug_integer("***fxdosDevice sectors_per_cluster:",(INT)pfxdosDevice->bootSector.sectors_per_cluster);
	.line	229
	ldy	#$14
	lda	[<L16+pfxdosDevice_1],Y
	and	#$ff
	pha
	pea	#^L14+736
	pea	#<L14+736
	jsl	~~k_debug_integer
;			k_debug_integer("***fxdosDevice reserved_sector_count:",(INT)pfxdosDevice->bootSector.reserved_sector_count);
	.line	230
	ldy	#$15
	lda	[<L16+pfxdosDevice_1],Y
	pha
	pea	#^L14+772
	pea	#<L14+772
	jsl	~~k_debug_integer
;			k_debug_integer("***fxdosDevice table_count:",(INT)pfxdosDevice->bootSector.fat_table_count);
	.line	231
	ldy	#$17
	lda	[<L16+pfxdosDevice_1],Y
	and	#$ff
	pha
	pea	#^L14+810
	pea	#<L14+810
	jsl	~~k_debug_integer
;			k_debug_integer("***fxdosDevice root_entry_count:",(INT)pfxdosDevice->bootSector.root_entry_count);
	.line	232
	ldy	#$18
	lda	[<L16+pfxdosDevice_1],Y
	pha
	pea	#^L14+838
	pea	#<L14+838
	jsl	~~k_debug_integer
;			k_debug_integer("***fxdosDevice total_sectors_16:",(INT)pfxdosDevice->bootSector.total_sectors_16);
	.line	233
	ldy	#$1a
	lda	[<L16+pfxdosDevice_1],Y
	pha
	pea	#^L14+871
	pea	#<L14+871
	jsl	~~k_debug_integer
;			k_debug_integer("***fxdosDevice media_type:",(INT)pfxdosDevice->bootSector.media_type);
	.line	234
	ldy	#$1c
	lda	[<L16+pfxdosDevice_1],Y
	and	#$ff
	pha
	pea	#^L14+904
	pea	#<L14+904
	jsl	~~k_debug_integer
;			k_debug_integer("***fxdosDevice sectors_per_fat:",(INT)pfxdosDevice->bootSector.sectors_per_fat);
	.line	235
	ldy	#$1d
	lda	[<L16+pfxdosDevice_1],Y
	pha
	pea	#^L14+931
	pea	#<L14+931
	jsl	~~k_debug_integer
;			k_debug_integer("***fxdosDevice sectors_per_track:",(INT)pfxdosDevice->bootSector.sectors_per_track);
	.line	236
	ldy	#$1f
	lda	[<L16+pfxdosDevice_1],Y
	pha
	pea	#^L14+963
	pea	#<L14+963
	jsl	~~k_debug_integer
;			k_debug_integer("***fxdosDevice head_side_count:",(INT)pfxdosDevice->bootSector.head_side_count);
	.line	237
	ldy	#$21
	lda	[<L16+pfxdosDevice_1],Y
	pha
	pea	#^L14+997
	pea	#<L14+997
	jsl	~~k_debug_integer
;			k_debug_integer("***fxdosDevice hidden_sector_count:",(INT)pfxdosDevice->bootSector.hidden_sector_count);
	.line	238
	ldy	#$23
	lda	[<L16+pfxdosDevice_1],Y
	pha
	pea	#^L14+1029
	pea	#<L14+1029
	jsl	~~k_debug_integer
;			k_debug_integer("***fxdosDevice total_sectors_32:",(INT)pfxdosDevice->bootSector.total_sectors_32);
	.line	239
	ldy	#$27
	lda	[<L16+pfxdosDevice_1],Y
	pha
	pea	#^L14+1065
	pea	#<L14+1065
	jsl	~~k_debug_integer
;
;			strncpy(pfxdosDevice->volume_name,pfxdosDevice->bootSector.vol_name,11);
	.line	241
	pea	#<$b
	clc
	lda	#$32
	adc	<L16+pfxdosDevice_1
	sta	<R0
	lda	#$0
	adc	<L16+pfxdosDevice_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	#$29d
	adc	<L16+pfxdosDevice_1
	sta	<R1
	lda	#$0
	adc	<L16+pfxdosDevice_1+2
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~strncpy
;			//pfxdosDevice->volume_name[11] = 0;
;			k_debug_nstrings("***fxdosDevice Volume Name:",pfxdosDevice->volume_name,11);
	.line	243
	pea	#<$b
	clc
	lda	#$29d
	adc	<L16+pfxdosDevice_1
	sta	<R0
	lda	#$0
	adc	<L16+pfxdosDevice_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L14+1098
	pea	#<L14+1098
	jsl	~~k_debug_nstrings
;
;			pfxdosDevice->root_entry_count = pfxdosDevice->bootSector.root_entry_count;
	.line	245
	ldy	#$18
	lda	[<L16+pfxdosDevice_1],Y
	ldy	#$293
	sta	[<L16+pfxdosDevice_1],Y
;
;			pfxdosDevice->fatTableOffset = pfxdosDevice->bsOffset + (pfxdosDevice->bootSector.bytes_per_sector * pfxdosDevice->bootSector.reserved_sector_count);
	.line	247
	ldy	#$15
	lda	[<L16+pfxdosDevice_1],Y
	tax
	ldy	#$12
	lda	[<L16+pfxdosDevice_1],Y
	xref	~~~mul
	jsl	~~~mul
	sta	<R0
	lda	<R0
	sta	<R0
	stz	<R0+2
	clc
	lda	<R0
	ldy	#$28b
	adc	[<L16+pfxdosDevice_1],Y
	sta	<R1
	lda	<R0+2
	ldy	#$28d
	adc	[<L16+pfxdosDevice_1],Y
	sta	<R1+2
	lda	<R1
	ldy	#$299
	sta	[<L16+pfxdosDevice_1],Y
	lda	<R1+2
	ldy	#$29b
	sta	[<L16+pfxdosDevice_1],Y
;			pfxdosDevice->rootDirSectors = pfxdosDevice->bsOffset + (((ULONG)pfxdosDevice->bootSector.reserved_sector_count + ((ULONG)pfxdosDevice->bootSector.sectors_per_fat * (ULONG)pfxdosDevice->bootSector.fat_table_count)) * (ULONG)pfxdosDevice->bootSector.bytes_per_sector);
	.line	248
	ldy	#$12
	lda	[<L16+pfxdosDevice_1],Y
	sta	<R0
	stz	<R0+2
	ldy	#$15
	lda	[<L16+pfxdosDevice_1],Y
	sta	<R1
	stz	<R1+2
	ldy	#$17
	lda	[<L16+pfxdosDevice_1],Y
	and	#$ff
	sta	<R2
	stz	<R2+2
	ldy	#$1d
	lda	[<L16+pfxdosDevice_1],Y
	sta	<R3
	stz	<R3+2
	pei	<R2+2
	pei	<R2
	pei	<R3+2
	pei	<R3
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R2
	stx	<R2+2
	clc
	lda	<R2
	adc	<R1
	sta	<R3
	lda	<R2+2
	adc	<R1+2
	sta	<R3+2
	pei	<R0+2
	pei	<R0
	pei	<R3+2
	pei	<R3
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R0
	stx	<R0+2
	clc
	lda	<R0
	ldy	#$28b
	adc	[<L16+pfxdosDevice_1],Y
	sta	<R1
	lda	<R0+2
	ldy	#$28d
	adc	[<L16+pfxdosDevice_1],Y
	sta	<R1+2
	lda	<R1
	ldy	#$28f
	sta	[<L16+pfxdosDevice_1],Y
	lda	<R1+2
	ldy	#$291
	sta	[<L16+pfxdosDevice_1],Y
;			pfxdosDevice->sectors_per_cluster = (INT)pfxdosDevice->bootSector.sectors_per_cluster;
	.line	249
	ldy	#$14
	lda	[<L16+pfxdosDevice_1],Y
	and	#$ff
	ldy	#$297
	sta	[<L16+pfxdosDevice_1],Y
;
;			k_debug_long("***fxdosDevice fatTable:",pfxdosDevice->fatTableOffset);
	.line	251
	ldy	#$29b
	lda	[<L16+pfxdosDevice_1],Y
	pha
	ldy	#$299
	lda	[<L16+pfxdosDevice_1],Y
	pha
	pea	#^L14+1126
	pea	#<L14+1126
	jsl	~~k_debug_long
;
;
;
;			if(pfxdosDevice->pfReader(pfxdosDevice->fatTableOffset,sectorBuffer) == 0)
	.line	255
;			{
	lda	#<~~sectorBuffer
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$29b
	lda	[<L16+pfxdosDevice_1],Y
	pha
	ldy	#$299
	lda	[<L16+pfxdosDevice_1],Y
	pha
	ldy	#$2bc
	lda	[<L16+pfxdosDevice_1],Y
	tax
	ldy	#$2ba
	lda	[<L16+pfxdosDevice_1],Y
	xref	~~~lcal
	jsl	~~~lcal
	and	#$ff
	beq	L31
	brl	L10022
L31:
	.line	256
;				memcpy(&pfxdosDevice->fileAllocationTable,sectorBuffer,FAT_PAGE_SIZE);
	.line	257
	pea	#<$200
	lda	#<~~sectorBuffer
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	#$8b
	adc	<L16+pfxdosDevice_1
	sta	<R1
	lda	#$0
	adc	<L16+pfxdosDevice_1+2
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~memcpy
;			}
	.line	258
;
;			k_debug_long("***fxdosDevice root offset:",pfxdosDevice->rootDirSectors);
L10022:
	.line	260
	ldy	#$291
	lda	[<L16+pfxdosDevice_1],Y
	pha
	ldy	#$28f
	lda	[<L16+pfxdosDevice_1],Y
	pha
	pea	#^L14+1151
	pea	#<L14+1151
	jsl	~~k_debug_long
;			k_debug_long("***fxdosDevice root sizeof(FAT16ENTRY):",sizeof(FAT16ENTRY));
	.line	261
	pea	#^$20
	pea	#<$20
	pea	#^L14+1179
	pea	#<L14+1179
	jsl	~~k_debug_long
;			k_debug_long("***fxdosDevice root root_entry_count:",pfxdosDevice->root_entry_count);
	.line	262
	ldy	#$0
	phy
	ldy	#$293
	lda	[<L16+pfxdosDevice_1],Y
	ply
	rol	A
	ror	A
	bpl	L32
	dey
L32:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L14+1219
	pea	#<L14+1219
	jsl	~~k_debug_long
;			k_debug_long("***fxdosDevice root root_entry_count/sizeof(FAT16ENTRY):",pfxdosDevice->root_entry_count/sizeof(FAT16ENTRY));
	.line	263
	ldy	#$293
	lda	[<L16+pfxdosDevice_1],Y
	lsr	A
	lsr	A
	lsr	A
	lsr	A
	lsr	A
	sta	<R0
	lda	<R0
	sta	<R0
	stz	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L14+1257
	pea	#<L14+1257
	jsl	~~k_debug_long
;
;
;			pfxdosDevice->rootEntriesPerPage = pfxdosDevice->root_entry_count/sizeof(FAT16ENTRY);
	.line	266
	ldy	#$293
	lda	[<L16+pfxdosDevice_1],Y
	lsr	A
	lsr	A
	lsr	A
	lsr	A
	lsr	A
	ldy	#$295
	sta	[<L16+pfxdosDevice_1],Y
;
;			/*
;			if(pfxdosDevice->pfReader(pfxdosDevice->rootDirSectors,sectorBuffer) == 0)
;			{
;				k_read_volume_name((PFAT16ENTRY)&sectorBuffer[0],pfxdosDevice);
;				k_debug_strings("k_create_dos_device::ROOT VOLUME NAME:",pfxdosDevice->root_volume_name);
;			}
;			*/
;		}
	.line	275
;
;    }
L10021:
	.line	277
;
;    //GABE_MSTR_CTRL[0] = GABE_MSTR_CTRL[0] & (~GABE_CTRL_SDC_LED);
;
;	return pfxdosDevice;
L10006:
	.line	281
	ldx	<L16+pfxdosDevice_1+2
	lda	<L16+pfxdosDevice_1
	brl	L21
;}
	.line	282
	.endblock	282
L15	equ	44
L16	equ	17
	ends
	efunc
	.endfunc	282,17,44
	.line	282
	data
L14:
	db	$6B,$5F,$63,$72,$65,$61,$74,$65,$5F,$64,$6F,$73,$5F,$64,$65
	db	$76,$69,$63,$65,$3A,$00,$6B,$5F,$63,$72,$65,$61,$74,$65,$5F
	db	$64,$6F,$73,$5F,$64,$65,$76,$69,$63,$65,$20,$73,$69,$7A,$65
	db	$3A,$00,$70,$66,$78,$64,$6F,$73,$44,$65,$76,$69,$63,$65,$2D
	db	$3E,$70,$66,$52,$65,$61,$64,$65,$72,$3A,$0D,$0A,$00,$70,$42
	db	$6F,$6F,$74,$2D,$3E,$73,$65,$63,$74,$6F,$72,$73,$5F,$70,$65
	db	$72,$5F,$63,$6C,$75,$73,$74,$65,$72,$3A,$00,$70,$42,$6F,$6F
	db	$74,$2D,$3E,$72,$6F,$6F,$74,$5F,$65,$6E,$74,$72,$79,$5F,$63
	db	$6F,$75,$6E,$74,$3A,$00,$70,$42,$6F,$6F,$74,$2D,$3E,$74,$6F
	db	$74,$61,$6C,$5F,$73,$65,$63,$74,$6F,$72,$73,$5F,$31,$36,$3A
	db	$00,$70,$42,$6F,$6F,$74,$2D,$3E,$73,$65,$63,$74,$6F,$72,$73
	db	$5F,$70,$65,$72,$5F,$66,$61,$74,$3A,$00,$70,$42,$6F,$6F,$74
	db	$2D,$3E,$73,$65,$63,$74,$6F,$72,$73,$5F,$70,$65,$72,$5F,$74
	db	$72,$61,$63,$6B,$3A,$00,$70,$42,$6F,$6F,$74,$2D,$3E,$76,$6F
	db	$6C,$5F,$6E,$61,$6D,$65,$3A,$00,$70,$42,$6F,$6F,$74,$2D,$3E
	db	$62,$79,$74,$65,$73,$5F,$70,$65,$72,$5F,$73,$65,$63,$74,$6F
	db	$72,$3A,$00,$70,$42,$6F,$6F,$74,$2D,$3E,$66,$61,$74,$5F,$74
	db	$61,$62,$6C,$65,$5F,$63,$6F,$75,$6E,$74,$3A,$00,$70,$42,$6F
	db	$6F,$74,$2D,$3E,$62,$79,$74,$65,$73,$5F,$70,$65,$72,$5F,$73
	db	$65,$63,$74,$6F,$72,$3A,$00,$70,$66,$61,$74,$33,$32,$2D,$3E
	db	$74,$61,$62,$6C,$65,$5F,$73,$69,$7A,$65,$5F,$33,$32,$3A,$00
	db	$70,$66,$61,$74,$33,$32,$2D,$3E,$76,$6F,$6C,$75,$6D,$65,$5F
	db	$6C,$61,$62,$65,$6C,$3A,$00,$2A,$2A,$2A,$20,$70,$61,$72,$74
	db	$69,$74,$69,$6F,$6E,$20,$74,$61,$62,$6C,$65,$3A,$00,$46,$41
	db	$54,$31,$36,$20,$66,$69,$6C,$65,$73,$79,$73,$74,$65,$6D,$20
	db	$66,$6F,$75,$6E,$64,$20,$66,$72,$6F,$6D,$20,$70,$61,$72,$74
	db	$69,$74,$69,$6F,$6E,$3A,$00,$2A,$2A,$2A,$20,$70,$50,$61,$72
	db	$74,$54,$61,$62,$6C,$65,$2D,$3E,$70,$61,$72,$74,$69,$74,$69
	db	$6F,$6E,$5F,$74,$79,$70,$65,$3A,$00,$2A,$2A,$2A,$66,$78,$64
	db	$6F,$73,$44,$65,$76,$69,$63,$65,$20,$66,$69,$72,$73,$74,$5F
	db	$62,$79,$74,$65,$3A,$00,$2A,$2A,$2A,$66,$78,$64,$6F,$73,$44
	db	$65,$76,$69,$63,$65,$20,$73,$74,$61,$72,$74,$5F,$63,$68,$73
	db	$30,$3A,$00,$2A,$2A,$2A,$66,$78,$64,$6F,$73,$44,$65,$76,$69
	db	$63,$65,$20,$73,$74,$61,$72,$74,$5F,$63,$68,$73,$31,$3A,$00
	db	$2A,$2A,$2A,$66,$78,$64,$6F,$73,$44,$65,$76,$69,$63,$65,$20
	db	$73,$74,$61,$72,$74,$5F,$63,$68,$73,$32,$3A,$00,$2A,$2A,$2A
	db	$66,$78,$64,$6F,$73,$44,$65,$76,$69,$63,$65,$20,$70,$61,$72
	db	$74,$69,$74,$69,$6F,$6E,$5F,$74,$79,$70,$65,$3A,$00,$2A,$2A
	db	$2A,$66,$78,$64,$6F,$73,$44,$65,$76,$69,$63,$65,$20,$65,$6E
	db	$64,$5F,$63,$68,$73,$30,$3A,$00,$2A,$2A,$2A,$66,$78,$64,$6F
	db	$73,$44,$65,$76,$69,$63,$65,$20,$65,$6E,$64,$5F,$63,$68,$73
	db	$31,$3A,$00,$2A,$2A,$2A,$66,$78,$64,$6F,$73,$44,$65,$76,$69
	db	$63,$65,$20,$65,$6E,$64,$5F,$63,$68,$73,$32,$3A,$00,$2A,$2A
	db	$2A,$66,$78,$64,$6F,$73,$44,$65,$76,$69,$63,$65,$20,$73,$74
	db	$61,$72,$74,$5F,$73,$65,$63,$74,$6F,$72,$3A,$00,$2A,$2A,$2A
	db	$66,$78,$64,$6F,$73,$44,$65,$76,$69,$63,$65,$20,$6C,$65,$6E
	db	$67,$74,$68,$5F,$73,$65,$63,$74,$6F,$72,$73,$3A,$00,$2A,$2A
	db	$2A,$66,$78,$64,$6F,$73,$44,$65,$76,$69,$63,$65,$20,$62,$79
	db	$74,$65,$73,$5F,$70,$65,$72,$5F,$73,$65,$63,$74,$6F,$72,$3A
	db	$00,$2A,$2A,$2A,$66,$78,$64,$6F,$73,$44,$65,$76,$69,$63,$65
	db	$20,$73,$65,$63,$74,$6F,$72,$73,$5F,$70,$65,$72,$5F,$63,$6C
	db	$75,$73,$74,$65,$72,$3A,$00,$2A,$2A,$2A,$66,$78,$64,$6F,$73
	db	$44,$65,$76,$69,$63,$65,$20,$72,$65,$73,$65,$72,$76,$65,$64
	db	$5F,$73,$65,$63,$74,$6F,$72,$5F,$63,$6F,$75,$6E,$74,$3A,$00
	db	$2A,$2A,$2A,$66,$78,$64,$6F,$73,$44,$65,$76,$69,$63,$65,$20
	db	$74,$61,$62,$6C,$65,$5F,$63,$6F,$75,$6E,$74,$3A,$00,$2A,$2A
	db	$2A,$66,$78,$64,$6F,$73,$44,$65,$76,$69,$63,$65,$20,$72,$6F
	db	$6F,$74,$5F,$65,$6E,$74,$72,$79,$5F,$63,$6F,$75,$6E,$74,$3A
	db	$00,$2A,$2A,$2A,$66,$78,$64,$6F,$73,$44,$65,$76,$69,$63,$65
	db	$20,$74,$6F,$74,$61,$6C,$5F,$73,$65,$63,$74,$6F,$72,$73,$5F
	db	$31,$36,$3A,$00,$2A,$2A,$2A,$66,$78,$64,$6F,$73,$44,$65,$76
	db	$69,$63,$65,$20,$6D,$65,$64,$69,$61,$5F,$74,$79,$70,$65,$3A
	db	$00,$2A,$2A,$2A,$66,$78,$64,$6F,$73,$44,$65,$76,$69,$63,$65
	db	$20,$73,$65,$63,$74,$6F,$72,$73,$5F,$70,$65,$72,$5F,$66,$61
	db	$74,$3A,$00,$2A,$2A,$2A,$66,$78,$64,$6F,$73,$44,$65,$76,$69
	db	$63,$65,$20,$73,$65,$63,$74,$6F,$72,$73,$5F,$70,$65,$72,$5F
	db	$74,$72,$61,$63,$6B,$3A,$00,$2A,$2A,$2A,$66,$78,$64,$6F,$73
	db	$44,$65,$76,$69,$63,$65,$20,$68,$65,$61,$64,$5F,$73,$69,$64
	db	$65,$5F,$63,$6F,$75,$6E,$74,$3A,$00,$2A,$2A,$2A,$66,$78,$64
	db	$6F,$73,$44,$65,$76,$69,$63,$65,$20,$68,$69,$64,$64,$65,$6E
	db	$5F,$73,$65,$63,$74,$6F,$72,$5F,$63,$6F,$75,$6E,$74,$3A,$00
	db	$2A,$2A,$2A,$66,$78,$64,$6F,$73,$44,$65,$76,$69,$63,$65,$20
	db	$74,$6F,$74,$61,$6C,$5F,$73,$65,$63,$74,$6F,$72,$73,$5F,$33
	db	$32,$3A,$00,$2A,$2A,$2A,$66,$78,$64,$6F,$73,$44,$65,$76,$69
	db	$63,$65,$20,$56,$6F,$6C,$75,$6D,$65,$20,$4E,$61,$6D,$65,$3A
	db	$00,$2A,$2A,$2A,$66,$78,$64,$6F,$73,$44,$65,$76,$69,$63,$65
	db	$20,$66,$61,$74,$54,$61,$62,$6C,$65,$3A,$00,$2A,$2A,$2A,$66
	db	$78,$64,$6F,$73,$44,$65,$76,$69,$63,$65,$20,$72,$6F,$6F,$74
	db	$20,$6F,$66,$66,$73,$65,$74,$3A,$00,$2A,$2A,$2A,$66,$78,$64
	db	$6F,$73,$44,$65,$76,$69,$63,$65,$20,$72,$6F,$6F,$74,$20,$73
	db	$69,$7A,$65,$6F,$66,$28,$46,$41,$54,$31,$36,$45,$4E,$54,$52
	db	$59,$29,$3A,$00,$2A,$2A,$2A,$66,$78,$64,$6F,$73,$44,$65,$76
	db	$69,$63,$65,$20,$72,$6F,$6F,$74,$20,$72,$6F,$6F,$74,$5F,$65
	db	$6E,$74,$72,$79,$5F,$63,$6F,$75,$6E,$74,$3A,$00,$2A,$2A,$2A
	db	$66,$78,$64,$6F,$73,$44,$65,$76,$69,$63,$65,$20,$72,$6F,$6F
	db	$74,$20,$72,$6F,$6F,$74,$5F,$65,$6E,$74,$72,$79,$5F,$63,$6F
	db	$75,$6E,$74,$2F,$73,$69,$7A,$65,$6F,$66,$28,$46,$41,$54,$31
	db	$36,$45,$4E,$54,$52,$59,$29,$3A,$00
	ends
;
;
;
;LPCHAR _k_dos_alloc_filename(LPCHAR filename11)
;{
	.line	286
	.line	287
	FXDOS
	xdef	~~_k_dos_alloc_filename
	func
	.function	287
~~_k_dos_alloc_filename:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L34
	tcs
	phd
	tcd
filename11_0	set	4
	.block	287
;	UINT index = 0;
;	//UINT p = 0;
;	//UINT dot = 0;
;	LPCHAR lpName = NULL;
;	CHAR ftmp[4] = {0,0,0,0};
	data
L37:
	db	$0,$0,$0,$0
	ends
;
;	//k_debug_string("_k_dos_alloc_filename:enter\r\n");
;
;	lpName = (LPCHAR)k_mem_allocate_heap(16);
index_1	set	0
lpName_1	set	2
ftmp_1	set	6
	.sym	index,0,16,1,16
	.sym	lpName,2,142,1,32
	.sym	ftmp,6,110,1,0,4
	.sym	filename11,4,142,6,32
	stz	<L35+index_1
	stz	<L35+lpName_1
	stz	<L35+lpName_1+2
	pea	#^L37
	pea	#<L37
	clc
	tdc
	adc	#<L35+ftmp_1
	sta	<R0
	lda	#$0
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	lda	#$4
	xref	~~~fmov
	jsl	~~~fmov
	.line	296
	pea	#<$10
	jsl	~~k_mem_allocate_heap
	sta	<L35+lpName_1
	stx	<L35+lpName_1+2
;	if(lpName!=NULL)
	.line	297
;	{
	lda	<L35+lpName_1
	ora	<L35+lpName_1+2
	bne	L38
	brl	L10023
L38:
	.line	298
;		//k_debug_string("_k_dos_alloc_filename:copy\r\n");
;		//memset(lpName,0,16);
;		//memcpy(lpName,filename11,8);
;		for(index=0;index<16;index++)
	.line	302
	stz	<L35+index_1
L10026:
;					lpName[index] = 0;
	.line	303
	sep	#$20
	longa	off
	lda	#$0
	ldy	<L35+index_1
	sta	[<L35+lpName_1],Y
	rep	#$20
	longa	on
L10024:
	inc	<L35+index_1
	lda	<L35+index_1
	cmp	#<$10
	bcs	L39
	brl	L10026
L39:
L10025:
;
;		for(index=0;index<8;index++)
	.line	305
	stz	<L35+index_1
L10029:
;			lpName[index] = filename11[index];
	.line	306
	sep	#$20
	longa	off
	ldy	<L35+index_1
	lda	[<L34+filename11_0],Y
	ldy	<L35+index_1
	sta	[<L35+lpName_1],Y
	rep	#$20
	longa	on
L10027:
	inc	<L35+index_1
	lda	<L35+index_1
	cmp	#<$8
	bcs	L40
	brl	L10029
L40:
L10028:
;
;
;		lpName = k_string_rtrim(lpName);
	.line	309
	pei	<L35+lpName_1+2
	pei	<L35+lpName_1
	jsl	~~k_string_rtrim
	sta	<L35+lpName_1
	stx	<L35+lpName_1+2
;		if(filename11[8]!=' ')
	.line	310
;		{
	sep	#$20
	longa	off
	ldy	#$8
	lda	[<L34+filename11_0],Y
	cmp	#<$20
	rep	#$20
	longa	on
	bne	L41
	brl	L10030
L41:
	.line	311
;			strcat(lpName,".");
	.line	312
	pea	#^L33
	pea	#<L33
	pei	<L35+lpName_1+2
	pei	<L35+lpName_1
	jsl	~~strcat
;
;			for(index=0;index<3;index++)
	.line	314
	stz	<L35+index_1
L10033:
;				ftmp[index] = filename11[index + 8];
	.line	315
	clc
	lda	#$8
	adc	<L35+index_1
	sta	<R0
	sep	#$20
	longa	off
	ldy	<R0
	lda	[<L34+filename11_0],Y
	ldx	<L35+index_1
	sta	<L35+ftmp_1,X
	rep	#$20
	longa	on
L10031:
	inc	<L35+index_1
	lda	<L35+index_1
	cmp	#<$3
	bcs	L42
	brl	L10033
L42:
L10032:
;
;			strcat(lpName,ftmp);
	.line	317
	pea	#0
	clc
	tdc
	adc	#<L35+ftmp_1
	pha
	pei	<L35+lpName_1+2
	pei	<L35+lpName_1
	jsl	~~strcat
;		}
	.line	318
;
;		//k_debug_string("_k_ds_alloc_filename:");
;		//k_debug_string(lpName);
;		//k_debug_string("\r\n");
;	}
L10030:
	.line	323
;
;	return lpName;
L10023:
	.line	325
	ldx	<L35+lpName_1+2
	lda	<L35+lpName_1
L43:
	tay
	lda	<L34+2
	sta	<L34+2+4
	lda	<L34+1
	sta	<L34+1+4
	pld
	tsc
	clc
	adc	#L34+4
	tcs
	tya
	rtl
;}
	.line	326
	.endblock	326
L34	equ	14
L35	equ	5
	ends
	efunc
	.endfunc	326,5,14
	.line	326
	data
L33:
	db	$2E,$00
	ends
;
;
;
;VOID  k_dos_dealloc_filelist(PFXNODE plist)
;{
	.line	330
	.line	331
	FXDOS
	xdef	~~k_dos_dealloc_filelist
	func
	.function	331
~~k_dos_dealloc_filelist:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L45
	tcs
	phd
	tcd
plist_0	set	4
	.block	331
;	PFXNODE p   = plist;
;	PFXNODE tmp = NULL;
;
;	while(p)
p_1	set	0
tmp_1	set	4
	.sym	p,0,138,1,32,5
	.sym	tmp,4,138,1,32,5
	.sym	plist,4,138,6,32,5
	lda	<L45+plist_0
	sta	<L46+p_1
	lda	<L45+plist_0+2
	sta	<L46+p_1+2
	stz	<L46+tmp_1
	stz	<L46+tmp_1+2
	.line	335
L10034:
	lda	<L46+p_1
	ora	<L46+p_1+2
	bne	L48
	brl	L10035
L48:
;	{
	.line	336
;		tmp = p->next;
	.line	337
	ldy	#$a
	lda	[<L46+p_1],Y
	sta	<L46+tmp_1
	ldy	#$c
	lda	[<L46+p_1],Y
	sta	<L46+tmp_1+2
;
;		k_mem_deallocate_heap(((PFILEINFO)p->data)->pFilename);
	.line	339
	ldy	#$2
	lda	[<L46+p_1],Y
	sta	<R0
	ldy	#$4
	lda	[<L46+p_1],Y
	sta	<R0+2
	ldy	#$3
	lda	[<R0],Y
	pha
	ldy	#$1
	lda	[<R0],Y
	pha
	jsl	~~k_mem_deallocate_heap
;		k_mem_deallocate_heap(p->data);
	.line	340
	ldy	#$4
	lda	[<L46+p_1],Y
	pha
	ldy	#$2
	lda	[<L46+p_1],Y
	pha
	jsl	~~k_mem_deallocate_heap
;		k_mem_deallocate_heap(p);
	.line	341
	pei	<L46+p_1+2
	pei	<L46+p_1
	jsl	~~k_mem_deallocate_heap
;
;		p = tmp;
	.line	343
	lda	<L46+tmp_1
	sta	<L46+p_1
	lda	<L46+tmp_1+2
	sta	<L46+p_1+2
;	}
	.line	344
	brl	L10034
L10035:
;}
	.line	345
L49:
	lda	<L45+2
	sta	<L45+2+4
	lda	<L45+1
	sta	<L45+1+4
	pld
	tsc
	clc
	adc	#L45+4
	tcs
	rtl
	.endblock	345
L45	equ	12
L46	equ	5
	ends
	efunc
	.endfunc	345,5,12
	.line	345
;
;PFILEINFO _k_dos_alloc_fileinfo(FX_FAT_DIR_INFO FAR *direntry)
;{
	.line	347
	.line	348
	FXDOS
	xdef	~~_k_dos_alloc_fileinfo
	func
	.function	348
~~_k_dos_alloc_fileinfo:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L50
	tcs
	phd
	tcd
direntry_0	set	4
	.block	348
;	PFILEINFO pfi = NULL;
;
;	//k_debug_string("_k_dos_alloc_fileinfo:enter\r\n");
;
;	pfi = k_mem_allocate_heap(sizeof(FILEINFO));
pfi_1	set	0
	.sym	pfi,0,138,1,32,66
	.sym	direntry,4,138,6,32,67
	stz	<L51+pfi_1
	stz	<L51+pfi_1+2
	.line	353
	pea	#<$11
	jsl	~~k_mem_allocate_heap
	sta	<L51+pfi_1
	stx	<L51+pfi_1+2
;	if(pfi!=NULL)
	.line	354
;	{
	lda	<L51+pfi_1
	ora	<L51+pfi_1+2
	bne	L53
	brl	L10036
L53:
	.line	355
;		pfi->type  		 = direntry->DIR_Attr;
	.line	356
	sep	#$20
	longa	off
	ldy	#$b
	lda	[<L50+direntry_0],Y
	sta	[<L51+pfi_1]
	rep	#$20
	longa	on
;		pfi->lSize 		 = direntry->DIR_FileSize;
	.line	357
	ldy	#$1c
	lda	[<L50+direntry_0],Y
	ldy	#$5
	sta	[<L51+pfi_1],Y
	ldy	#$1e
	lda	[<L50+direntry_0],Y
	ldy	#$7
	sta	[<L51+pfi_1],Y
;		pfi->lchangeDate = direntry->DIR_LstAccDate;
	.line	358
	ldy	#$12
	lda	[<L50+direntry_0],Y
	sta	<R0
	stz	<R0+2
	lda	<R0
	ldy	#$d
	sta	[<L51+pfi_1],Y
	lda	<R0+2
	ldy	#$f
	sta	[<L51+pfi_1],Y
;		pfi->lcreateDate = direntry->DIR_CrtDate;
	.line	359
	ldy	#$10
	lda	[<L50+direntry_0],Y
	sta	<R0
	stz	<R0+2
	lda	<R0
	ldy	#$9
	sta	[<L51+pfi_1],Y
	lda	<R0+2
	ldy	#$b
	sta	[<L51+pfi_1],Y
;		pfi->pFilename   = _k_dos_alloc_filename(direntry->DIR_Name);
	.line	360
	pei	<L50+direntry_0+2
	pei	<L50+direntry_0
	jsl	~~_k_dos_alloc_filename
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$1
	sta	[<L51+pfi_1],Y
	lda	<R0+2
	ldy	#$3
	sta	[<L51+pfi_1],Y
;	}
	.line	361
;
;	return pfi;
L10036:
	.line	363
	ldx	<L51+pfi_1+2
	lda	<L51+pfi_1
L54:
	tay
	lda	<L50+2
	sta	<L50+2+4
	lda	<L50+1
	sta	<L50+1+4
	pld
	tsc
	clc
	adc	#L50+4
	tcs
	tya
	rtl
;}
	.line	364
	.endblock	364
L50	equ	8
L51	equ	5
	ends
	efunc
	.endfunc	364,5,8
	.line	364
;
;
;BOOL k_dos_foreach_file(LPVOID ctx,LPVOID pdata)
;{
	.line	367
	.line	368
	FXDOS
	xdef	~~k_dos_foreach_file
	func
	.function	368
~~k_dos_foreach_file:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L55
	tcs
	phd
	tcd
ctx_0	set	4
pdata_0	set	8
	.block	368
;	BOOL bBreak = FALSE;
;
;	PFAT16ENTRYLONG entry = (PFAT16ENTRYLONG)pdata;
;	if(pdata)
bBreak_1	set	0
entry_1	set	1
	.sym	bBreak,0,14,1,8
	.sym	entry,1,138,1,32,75
	.sym	ctx,4,129,6,32
	.sym	pdata,8,129,6,32
	sep	#$20
	longa	off
	stz	<L56+bBreak_1
	rep	#$20
	longa	on
	lda	<L55+pdata_0
	sta	<L56+entry_1
	lda	<L55+pdata_0+2
	sta	<L56+entry_1+2
	.line	372
;	{
	lda	<L55+pdata_0
	ora	<L55+pdata_0+2
	bne	L58
	brl	L10037
L58:
	.line	373
;		if(entry->plongfileName && ctx)
	.line	374
;		{
	ldy	#$20
	lda	[<L56+entry_1],Y
	ldy	#$22
	ora	[<L56+entry_1],Y
	bne	L59
	brl	L10038
L59:
	lda	<L55+ctx_0
	ora	<L55+ctx_0+2
	bne	L60
	brl	L10038
L60:
	.line	375
;			//k_debug_strings("k_dos_foreach_file:",entry->plongfileName);
;			//k_debug_strings("k_dos_foreach_file compare:",(LPSTR)ctx);
;
;			bBreak = (strcmp(ctx,entry->plongfileName) == 0);
	.line	379
	stz	<R0
	ldy	#$22
	lda	[<L56+entry_1],Y
	pha
	ldy	#$20
	lda	[<L56+entry_1],Y
	pha
	pei	<L55+ctx_0+2
	pei	<L55+ctx_0
	jsl	~~strcmp
	tax
	beq	L62
	brl	L61
L62:
	inc	<R0
L61:
	sep	#$20
	longa	off
	lda	<R0
	sta	<L56+bBreak_1
	rep	#$20
	longa	on
;
;			//k_debug_integer("k_dos_foreach_file compare:",bBreak);
;		}
	.line	382
;	}
L10038:
	.line	383
;
;	return bBreak;
L10037:
	.line	385
	lda	<L56+bBreak_1
	and	#$ff
L63:
	tay
	lda	<L55+2
	sta	<L55+2+8
	lda	<L55+1
	sta	<L55+1+8
	pld
	tsc
	clc
	adc	#L55+8
	tcs
	tya
	rtl
;}
	.line	386
	.endblock	386
L55	equ	9
L56	equ	5
	ends
	efunc
	.endfunc	386,5,9
	.line	386
;
;LPSTR k_dos_alloc_short_name(PFAT16ENTRYLONG entry)
;{
	.line	388
	.line	389
	FXDOS
	xdef	~~k_dos_alloc_short_name
	func
	.function	389
~~k_dos_alloc_short_name:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L64
	tcs
	phd
	tcd
entry_0	set	4
	.block	389
;	int i = 0;
;	// 01234567.901N
;	entry->plongfileName = k_mem_allocate_heap(14);
i_1	set	0
	.sym	i,0,5,1,16
	.sym	entry,4,138,6,32,75
	stz	<L65+i_1
	.line	392
	pea	#<$e
	jsl	~~k_mem_allocate_heap
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$20
	sta	[<L64+entry_0],Y
	lda	<R0+2
	ldy	#$22
	sta	[<L64+entry_0],Y
;	memset(entry->plongfileName,0,14);
	.line	393
	pea	#<$e
	pea	#<$0
	ldy	#$22
	lda	[<L64+entry_0],Y
	pha
	ldy	#$20
	lda	[<L64+entry_0],Y
	pha
	jsl	~~memset
;	/*
;	memcpy(entry->plongfileName,entry->filename,8);
;	memcpy(&(entry->plongfileName[9]),entry->ext,3);
;
;	entry->plongfileName[8] = '.';
;	entry->plongfileName[12] = 0;
;	*/
;
;	memcpy(entry->plongfileName,entry->filename,8);
	.line	402
	pea	#<$8
	pei	<L64+entry_0+2
	pei	<L64+entry_0
	ldy	#$22
	lda	[<L64+entry_0],Y
	pha
	ldy	#$20
	lda	[<L64+entry_0],Y
	pha
	jsl	~~memcpy
;	for(i=0;i<8;i++)
	.line	403
	stz	<L65+i_1
L10041:
;	{
	.line	404
;		if(entry->plongfileName[i] == ' ')
	.line	405
;			break;
	ldy	#$20
	lda	[<L64+entry_0],Y
	sta	<R0
	ldy	#$22
	lda	[<L64+entry_0],Y
	sta	<R0+2
	sep	#$20
	longa	off
	ldy	<L65+i_1
	lda	[<R0],Y
	cmp	#<$20
	rep	#$20
	longa	on
	bne	L67
	brl	L10040
L67:
;	}
	.line	407
L10039:
	inc	<L65+i_1
	sec
	lda	<L65+i_1
	sbc	#<$8
	bvs	L68
	eor	#$8000
L68:
	bmi	L69
	brl	L10041
L69:
L10040:
;	//k_debug_strings("k_dos_alloc_short_name:filename:",entry->plongfileName);
;	//k_debug_integer("k_dos_alloc_short_name:i:",i);
;
;	if(entry->ext[0]!=' ')
	.line	411
;	{
	sep	#$20
	longa	off
	ldy	#$8
	lda	[<L64+entry_0],Y
	cmp	#<$20
	rep	#$20
	longa	on
	bne	L70
	brl	L10042
L70:
	.line	412
;		entry->plongfileName[i] = '.';
	.line	413
	ldy	#$20
	lda	[<L64+entry_0],Y
	sta	<R0
	ldy	#$22
	lda	[<L64+entry_0],Y
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$2e
	ldy	<L65+i_1
	sta	[<R0],Y
	rep	#$20
	longa	on
;		memcpy(&(entry->plongfileName[i+1]),entry->ext,3);
	.line	414
	pea	#<$3
	clc
	lda	#$8
	adc	<L64+entry_0
	sta	<R0
	lda	#$0
	adc	<L64+entry_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	lda	<L65+i_1
	ina
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L71
	dey
L71:
	sta	<R1
	sty	<R1+2
	clc
	ldy	#$20
	lda	[<L64+entry_0],Y
	adc	<R1
	sta	<R2
	ldy	#$22
	lda	[<L64+entry_0],Y
	adc	<R1+2
	sta	<R2+2
	pei	<R2+2
	pei	<R2
	jsl	~~memcpy
;		for(i=0;i<14;i++)
	.line	415
	stz	<L65+i_1
L10045:
;		{
	.line	416
;			if(entry->plongfileName[i] == ' ')
	.line	417
;				entry->plongfileName[i] = 0;
	ldy	#$20
	lda	[<L64+entry_0],Y
	sta	<R0
	ldy	#$22
	lda	[<L64+entry_0],Y
	sta	<R0+2
	sep	#$20
	longa	off
	ldy	<L65+i_1
	lda	[<R0],Y
	cmp	#<$20
	rep	#$20
	longa	on
	beq	L72
	brl	L10046
L72:
	.line	418
	ldy	#$20
	lda	[<L64+entry_0],Y
	sta	<R0
	ldy	#$22
	lda	[<L64+entry_0],Y
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$0
	ldy	<L65+i_1
	sta	[<R0],Y
	rep	#$20
	longa	on
;		}
L10046:
	.line	419
L10043:
	inc	<L65+i_1
	sec
	lda	<L65+i_1
	sbc	#<$e
	bvs	L73
	eor	#$8000
L73:
	bmi	L74
	brl	L10045
L74:
L10044:
;	}
	.line	420
;	//entry->plongfileName[8] = '.';
;	//entry->plongfileName[12] = 0;
;
;	//k_debug_strings("k_dos_alloc_short_name:",entry->plongfileName);
;
;	return entry->plongfileName;
L10042:
	.line	426
	ldy	#$22
	lda	[<L64+entry_0],Y
	tax
	ldy	#$20
	lda	[<L64+entry_0],Y
L75:
	tay
	lda	<L64+2
	sta	<L64+2+4
	lda	<L64+1
	sta	<L64+1+4
	pld
	tsc
	clc
	adc	#L64+4
	tcs
	tya
	rtl
;}
	.line	427
	.endblock	427
L64	equ	14
L65	equ	13
	ends
	efunc
	.endfunc	427,13,14
	.line	427
;
;ULONG k_dos_get_name(PFAT16ENTRYLONG entry,LPCHAR pbuffer)
;{
	.line	429
	.line	430
	FXDOS
	xdef	~~k_dos_get_name
	func
	.function	430
~~k_dos_get_name:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L76
	tcs
	phd
	tcd
entry_0	set	4
pbuffer_0	set	8
	.block	430
;	ULONG fileOffset = 0L;
;
;	ULONG RootDirSectors;
;	ULONG Cluster2SectorNumber;
;	ULONG ClusterSectorNumber;
;	ULONG ClusterByteNumber = 0;
;
;
;	LFN* plfn = NULL;
;
;	CHAR mbsBuffer[15];
;
;
;	if(!pbuffer)
fileOffset_1	set	0
RootDirSectors_1	set	4
Cluster2SectorNumber_1	set	8
ClusterSectorNumber_1	set	12
ClusterByteNumber_1	set	16
plfn_1	set	20
mbsBuffer_1	set	24
	.sym	fileOffset,0,18,1,32
	.sym	RootDirSectors,4,18,1,32
	.sym	Cluster2SectorNumber,8,18,1,32
	.sym	ClusterSectorNumber,12,18,1,32
	.sym	ClusterByteNumber,16,18,1,32
	.sym	plfn,20,138,1,32,76
	.sym	mbsBuffer,24,110,1,0,15
	.sym	entry,4,138,6,32,75
	.sym	pbuffer,8,142,6,32
	stz	<L77+fileOffset_1
	stz	<L77+fileOffset_1+2
	stz	<L77+ClusterByteNumber_1
	stz	<L77+ClusterByteNumber_1+2
	stz	<L77+plfn_1
	stz	<L77+plfn_1+2
	.line	444
;		pbuffer = mbsBuffer;
	lda	<L76+pbuffer_0
	ora	<L76+pbuffer_0+2
	beq	L79
	brl	L10047
L79:
	.line	445
	clc
	tdc
	adc	#<L77+mbsBuffer_1
	sta	<L76+pbuffer_0
	lda	#$0
	sta	<L76+pbuffer_0+2
;
;    switch(entry->filename[0])
L10047:
	.line	447
	lda	[<L76+entry_0]
	and	#$ff
	brl	L10048
;	{
	.line	448
;    case 0x00:
	.line	449
L10050:
;    	//k_debug_string("Unused\r\n");
;        return 0; // unused entry
	.line	451
	lda	#$0
	tax
	lda	#$0
L80:
	tay
	lda	<L76+2
	sta	<L76+2+8
	lda	<L76+1
	sta	<L76+1+8
	pld
	tsc
	clc
	adc	#L76+8
	tcs
	tya
	rtl
;    case 0xE5:
	.line	452
L10051:
;    	/*
;    	k_debug_string("Deleted file:");
;    	k_debug_nstring(entry->filename+1,7);
;    	k_debug_nstring(entry->ext,3);
;    	k_debug_string("\r\n");
;        //printf("Deleted file: [?%.7s.%.3s]\n", entry->filename+1, entry->ext);
;
;         */
;        return 0;
	.line	461
	lda	#$0
	tax
	lda	#$0
	brl	L80
;    case 0x05:
	.line	462
L10052:
;    	//k_debug_string("File 0x05:");
;    	//k_debug_nstring(entry->filename+1,7);
;    	//k_debug_nstring(entry->ext,3);
;    	//k_debug_string("\r\n");
;        //printf("File starting with 0xE5: [%c%.7s.%.3s]\n", 0xE5, entry->filename+1, entry->ext);
;        break;
	.line	468
	brl	L10049
;    case 0x2E:
	.line	469
L10053:
;    	//k_debug_string("DIR:");
;    	//k_debug_nstring(entry->filename+1,8);
;    	//k_debug_nstring(entry->ext,3);
;    	//k_debug_string("\r\n");
;        //printf("Directory: [%.8s.%.3s]\n", entry->filename, entry->ext);
;    	k_dos_alloc_short_name(entry);
	.line	475
	pei	<L76+entry_0+2
	pei	<L76+entry_0
	jsl	~~k_dos_alloc_short_name
;        break;
	.line	476
	brl	L10049
;    default:
	.line	477
L10054:
;    	if(entry->attributes == 0x10)
	.line	478
;    	{
	sep	#$20
	longa	off
	ldy	#$b
	lda	[<L76+entry_0],Y
	cmp	#<$10
	rep	#$20
	longa	on
	beq	L81
	brl	L10055
L81:
	.line	479
;			//k_debug_string("DIRECTORY:");
;			//k_debug_nstring(entry->filename,8);
;			//k_debug_nstring(entry->ext,3);
;			//k_debug_string("\r\n");
;
;			k_dos_alloc_short_name(entry);
	.line	485
	pei	<L76+entry_0+2
	pei	<L76+entry_0
	jsl	~~k_dos_alloc_short_name
;
;			//k_debug_strings("plongfileName:",entry->plongfileName);
;
;    	}
	.line	489
;    	else if(entry->attributes == 0x08)
	brl	L10056
L10055:
	.line	490
;		{
	sep	#$20
	longa	off
	ldy	#$b
	lda	[<L76+entry_0],Y
	cmp	#<$8
	rep	#$20
	longa	on
	beq	L82
	brl	L10057
L82:
	.line	491
;			//k_debug_string("VOLUME NAME:");
;			//k_debug_nstring(entry->filename,8);
;			//k_debug_nstring(entry->ext,3);
;			//k_debug_string("\r\n");
;
;			k_dos_alloc_short_name(entry);
	.line	497
	pei	<L76+entry_0+2
	pei	<L76+entry_0
	jsl	~~k_dos_alloc_short_name
;
;			//k_debug_strings("plongfileName:",entry->plongfileName);
;
;		}
	.line	501
;    	else if(entry->attributes == 0x0F)
	brl	L10058
L10057:
	.line	502
;		{
	sep	#$20
	longa	off
	ldy	#$b
	lda	[<L76+entry_0],Y
	cmp	#<$f
	rep	#$20
	longa	on
	beq	L83
	brl	L10059
L83:
	.line	503
;			k_debug_string("LONG NAME:");
	.line	504
	pea	#^L44
	pea	#<L44
	jsl	~~k_debug_string
;			//k_debug_nstring(entry->filename,8);
;			//k_debug_nstring(entry->ext,3);
;
;			plfn = (LFN*)entry;
	.line	508
	lda	<L76+entry_0
	sta	<L77+plfn_1
	lda	<L76+entry_0+2
	sta	<L77+plfn_1+2
;
;			/*
;			k_debug_integer("SEQ:",plfn->sequenceNo);
;			k_debug_string("10:[");
;			k_debug_nstring(k_wcstombs(plfn->fileName_Part1,mbsBuffer,5),5);
;			k_debug_string("]\r\n");
;			k_debug_string("12:[");
;			k_debug_nstring(k_wcstombs(plfn->fileName_Part2,mbsBuffer,6),6);
;			k_debug_string("]\r\n");
;			k_debug_string("4:[");
;			k_debug_nstring(k_wcstombs(plfn->fileName_Part3,mbsBuffer,2),2);
;			k_debug_string("]\r\n");
;			*/
;			//k_debug_byte_array("LONG BYTES:",(BYTE FAR *)plfn,32);
;
;
;			if(plfn->sequenceNo & 0x40)
	.line	525
;			{
	sep	#$20
	longa	off
	lda	[<L77+plfn_1]
	and	#<$40
	rep	#$20
	longa	on
	bne	L84
	brl	L10060
L84:
	.line	526
;				entry->plongfileName = (LPVOID)0xffffffff;
	.line	527
	lda	#$ffff
	ldy	#$20
	sta	[<L76+entry_0],Y
	lda	#$ffff
	ldy	#$22
	sta	[<L76+entry_0],Y
;				longnamecount = (plfn->sequenceNo - 0x41);
	.line	528
	lda	[<L77+plfn_1]
	and	#$ff
	sta	<R0
	clc
	lda	#$ffbf
	adc	<R0
	sta	<R1
	sep	#$20
	longa	off
	lda	<R1
	sta	|~~longnamecount
	rep	#$20
	longa	on
;				//k_debug_integer("longnamecount:",longnamecount);
;				k_debug_string("SEQ:0x40");
	.line	530
	pea	#^L44+11
	pea	#<L44+11
	jsl	~~k_debug_string
;
;				memset(longnameBuffer,0,255);
	.line	532
	pea	#<$ff
	pea	#<$0
	lda	#<~~longnameBuffer
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~memset
;				memcpy(&longnameBuffer[longnamecount * 13]     ,k_wcstombs(plfn->fileName_Part1,mbsBuffer,5),5);
	.line	533
	pea	#<$5
	pea	#<$5
	pea	#0
	clc
	tdc
	adc	#<L77+mbsBuffer_1
	pha
	clc
	lda	#$1
	adc	<L77+plfn_1
	sta	<R0
	lda	#$0
	adc	<L77+plfn_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~k_wcstombs
	sta	<R1
	stx	<R1+2
	phx
	pha
	lda	|~~longnamecount
	and	#$ff
	sta	<R3
	lda	<R3
	ldx	#<$d
	xref	~~~mul
	jsl	~~~mul
	sta	<R3
	clc
	lda	#<~~longnameBuffer
	adc	<R3
	sta	<17
	lda	<17
	sta	<R2
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R2+2
	pei	<R2+2
	pei	<R2
	jsl	~~memcpy
;				memcpy(&longnameBuffer[longnamecount * 13 + 5] ,k_wcstombs(plfn->fileName_Part2,mbsBuffer,6),6);
	.line	534
	pea	#<$6
	pea	#<$6
	pea	#0
	clc
	tdc
	adc	#<L77+mbsBuffer_1
	pha
	clc
	lda	#$e
	adc	<L77+plfn_1
	sta	<R0
	lda	#$0
	adc	<L77+plfn_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~k_wcstombs
	sta	<R1
	stx	<R1+2
	phx
	pha
	lda	|~~longnamecount
	and	#$ff
	sta	<R3
	lda	<R3
	ldx	#<$d
	xref	~~~mul
	jsl	~~~mul
	sta	<R3
	clc
	lda	#$5
	adc	<R3
	sta	<17
	clc
	lda	#<~~longnameBuffer
	adc	<17
	sta	<R3
	lda	<R3
	sta	<R2
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R2+2
	pei	<R2+2
	pei	<R2
	jsl	~~memcpy
;				memcpy(&longnameBuffer[longnamecount * 13 + 11],k_wcstombs(plfn->fileName_Part3,mbsBuffer,2),2);
	.line	535
	pea	#<$2
	pea	#<$2
	pea	#0
	clc
	tdc
	adc	#<L77+mbsBuffer_1
	pha
	clc
	lda	#$1c
	adc	<L77+plfn_1
	sta	<R0
	lda	#$0
	adc	<L77+plfn_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~k_wcstombs
	sta	<R1
	stx	<R1+2
	phx
	pha
	lda	|~~longnamecount
	and	#$ff
	sta	<R3
	lda	<R3
	ldx	#<$d
	xref	~~~mul
	jsl	~~~mul
	sta	<R3
	clc
	lda	#$b
	adc	<R3
	sta	<17
	clc
	lda	#<~~longnameBuffer
	adc	<17
	sta	<R3
	lda	<R3
	sta	<R2
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R2+2
	pei	<R2+2
	pei	<R2
	jsl	~~memcpy
;			}
	.line	536
;			else
	brl	L10061
L10060:
;			{
	.line	538
;				longnamecount = plfn->sequenceNo - 1 ;
	.line	539
	lda	[<L77+plfn_1]
	and	#$ff
	sta	<R0
	clc
	lda	#$ffff
	adc	<R0
	sta	<R1
	sep	#$20
	longa	off
	lda	<R1
	sta	|~~longnamecount
	rep	#$20
	longa	on
;				//k_debug_integer("longnamecount:",longnamecount);
;				memcpy(&longnameBuffer[longnamecount * 13]     ,k_wcstombs(plfn->fileName_Part1,mbsBuffer,5),5);
	.line	541
	pea	#<$5
	pea	#<$5
	pea	#0
	clc
	tdc
	adc	#<L77+mbsBuffer_1
	pha
	clc
	lda	#$1
	adc	<L77+plfn_1
	sta	<R0
	lda	#$0
	adc	<L77+plfn_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~k_wcstombs
	sta	<R1
	stx	<R1+2
	phx
	pha
	lda	|~~longnamecount
	and	#$ff
	sta	<R3
	lda	<R3
	ldx	#<$d
	xref	~~~mul
	jsl	~~~mul
	sta	<R3
	clc
	lda	#<~~longnameBuffer
	adc	<R3
	sta	<17
	lda	<17
	sta	<R2
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R2+2
	pei	<R2+2
	pei	<R2
	jsl	~~memcpy
;				memcpy(&longnameBuffer[longnamecount * 13 + 5] ,k_wcstombs(plfn->fileName_Part2,mbsBuffer,6),6);
	.line	542
	pea	#<$6
	pea	#<$6
	pea	#0
	clc
	tdc
	adc	#<L77+mbsBuffer_1
	pha
	clc
	lda	#$e
	adc	<L77+plfn_1
	sta	<R0
	lda	#$0
	adc	<L77+plfn_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~k_wcstombs
	sta	<R1
	stx	<R1+2
	phx
	pha
	lda	|~~longnamecount
	and	#$ff
	sta	<R3
	lda	<R3
	ldx	#<$d
	xref	~~~mul
	jsl	~~~mul
	sta	<R3
	clc
	lda	#$5
	adc	<R3
	sta	<17
	clc
	lda	#<~~longnameBuffer
	adc	<17
	sta	<R3
	lda	<R3
	sta	<R2
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R2+2
	pei	<R2+2
	pei	<R2
	jsl	~~memcpy
;				memcpy(&longnameBuffer[longnamecount * 13 + 11],k_wcstombs(plfn->fileName_Part3,mbsBuffer,2),2);
	.line	543
	pea	#<$2
	pea	#<$2
	pea	#0
	clc
	tdc
	adc	#<L77+mbsBuffer_1
	pha
	clc
	lda	#$1c
	adc	<L77+plfn_1
	sta	<R0
	lda	#$0
	adc	<L77+plfn_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~k_wcstombs
	sta	<R1
	stx	<R1+2
	phx
	pha
	lda	|~~longnamecount
	and	#$ff
	sta	<R3
	lda	<R3
	ldx	#<$d
	xref	~~~mul
	jsl	~~~mul
	sta	<R3
	clc
	lda	#$b
	adc	<R3
	sta	<17
	clc
	lda	#<~~longnameBuffer
	adc	<17
	sta	<R3
	lda	<R3
	sta	<R2
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R2+2
	pei	<R2+2
	pei	<R2
	jsl	~~memcpy
;
;				if(plfn->sequenceNo == 1)
	.line	545
;				{
	sep	#$20
	longa	off
	lda	[<L77+plfn_1]
	cmp	#<$1
	rep	#$20
	longa	on
	beq	L85
	brl	L10062
L85:
	.line	546
;					//k_debug_string("Unicodename:");
;
;					entry->plongfileName = k_mem_allocate_heap(strlen(longnameBuffer) + 1);
	.line	549
	lda	#<~~longnameBuffer
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~strlen
	sta	<R1
	lda	<R1
	ina
	pha
	jsl	~~k_mem_allocate_heap
	sta	<R1
	stx	<R1+2
	lda	<R1
	ldy	#$20
	sta	[<L76+entry_0],Y
	lda	<R1+2
	ldy	#$22
	sta	[<L76+entry_0],Y
;					strcpy(entry->plongfileName,(LPCSTR)longnameBuffer);
	.line	550
	lda	#<~~longnameBuffer
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$22
	lda	[<L76+entry_0],Y
	pha
	ldy	#$20
	lda	[<L76+entry_0],Y
	pha
	jsl	~~strcpy
;
;					k_debug_string(entry->plongfileName);
	.line	552
	ldy	#$22
	lda	[<L76+entry_0],Y
	pha
	ldy	#$20
	lda	[<L76+entry_0],Y
	pha
	jsl	~~k_debug_string
;				}
	.line	553
;			}
L10062:
	.line	554
L10061:
;
;			k_debug_string("\r\n");
	.line	556
	pea	#^L44+20
	pea	#<L44+20
	jsl	~~k_debug_string
;		}
	.line	557
;    	else
	brl	L10063
L10059:
;    	{
	.line	559
;			//k_debug_string("SHORT NAME:");
;			//k_debug_nstring(entry->filename,8);
;			//k_debug_nstring(entry->ext,3);
;			//k_debug_long(" SIZE:",entry->file_size);
;			//k_debug_hex("\tAttributes:",entry->attributes);
;			//k_debug_integer("\tStart Cluster:",entry->starting_cluster);
;			k_dos_alloc_short_name(entry);
	.line	566
	pei	<L76+entry_0+2
	pei	<L76+entry_0
	jsl	~~k_dos_alloc_short_name
;
;			//k_debug_strings("plongfileName:",entry->plongfileName);
;
;			ClusterByteNumber = getClusterLocationByIndex(entry->starting_cluster);
	.line	570
	ldy	#$1a
	lda	[<L76+entry_0],Y
	sta	<R0
	stz	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~getClusterLocationByIndex
	sta	<L77+ClusterByteNumber_1
	stx	<L77+ClusterByteNumber_1+2
;    	}
	.line	571
L10063:
L10058:
L10056:
;    }
	.line	572
	brl	L10049
L10048:
	xref	~~~swt
	jsl	~~~swt
	dw	4
	dw	0
	dw	L10050-1
	dw	5
	dw	L10052-1
	dw	46
	dw	L10053-1
	dw	229
	dw	L10051-1
	dw	L10054-1
L10049:
;
;    return ClusterByteNumber;
	.line	574
	ldx	<L77+ClusterByteNumber_1+2
	lda	<L77+ClusterByteNumber_1
	brl	L80
;}
	.line	575
	.endblock	575
L76	equ	59
L77	equ	21
	ends
	efunc
	.endfunc	575,21,59
	.line	575
	data
L44:
	db	$4C,$4F,$4E,$47,$20,$4E,$41,$4D,$45,$3A,$00,$53,$45,$51,$3A
	db	$30,$78,$34,$30,$00,$0D,$0A,$00
	ends
;
;void k_dos_deallocate_long_entry(LPCSTR name,LPVOID pdata)
;{
	.line	577
	.line	578
	FXDOS
	xdef	~~k_dos_deallocate_long_entry
	func
	.function	578
~~k_dos_deallocate_long_entry:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L87
	tcs
	phd
	tcd
name_0	set	4
pdata_0	set	8
	.block	578
;	PFAT16ENTRYLONG entry = (PFAT16ENTRYLONG)pdata;
;
;	//k_debug_strings("k_dos_deallocate_long_entry name:",(LPSTR)name);
;
;	if(entry)
entry_1	set	0
	.sym	entry,0,138,1,32,75
	.sym	name,4,142,6,32
	.sym	pdata,8,129,6,32
	lda	<L87+pdata_0
	sta	<L88+entry_1
	lda	<L87+pdata_0+2
	sta	<L88+entry_1+2
	.line	583
;	{
	lda	<L88+entry_1
	ora	<L88+entry_1+2
	bne	L90
	brl	L10064
L90:
	.line	584
;		//k_debug_pointer("k_dos_deallocate_long_entry ptr:",(LPSTR)entry->plongfileName);
;		if(entry->plongfileName)
	.line	586
;			k_mem_deallocate_heap(entry->plongfileName);
	ldy	#$20
	lda	[<L88+entry_1],Y
	ldy	#$22
	ora	[<L88+entry_1],Y
	bne	L91
	brl	L10065
L91:
	.line	587
	ldy	#$22
	lda	[<L88+entry_1],Y
	pha
	ldy	#$20
	lda	[<L88+entry_1],Y
	pha
	jsl	~~k_mem_deallocate_heap
;
;		k_mem_deallocate_heap(entry);
L10065:
	.line	589
	pei	<L88+entry_1+2
	pei	<L88+entry_1
	jsl	~~k_mem_deallocate_heap
;	}
	.line	590
;
;	//k_debug_string("k_dos_deallocate_long_exit\r\n");
;}
L10064:
	.line	593
L92:
	lda	<L87+2
	sta	<L87+2+8
	lda	<L87+1
	sta	<L87+1+8
	pld
	tsc
	clc
	adc	#L87+8
	tcs
	rtl
	.endblock	593
L87	equ	4
L88	equ	1
	ends
	efunc
	.endfunc	593,1,4
	.line	593
;
;UINT k_dos_read_file(PFXDOSDEVICE pfxdosDevice,LPCSTR fileName)
;{
	.line	595
	.line	596
	FXDOS
	xdef	~~k_dos_read_file
	func
	.function	596
~~k_dos_read_file:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L93
	tcs
	phd
	tcd
pfxdosDevice_0	set	4
fileName_0	set	8
	.block	596
;	UINT fileSize = 0;
;	UINT next = 0;
;	UINT pageSize = 0;
;	PFXNODELIST fileList = NULL;
;	PFXNODE file = NULL;
;	PBYTE buffer = NULL;
;
;
;	fileList = k_read_dos_directory(pfxdosDevice);
fileSize_1	set	0
next_1	set	2
pageSize_1	set	4
fileList_1	set	6
file_1	set	10
buffer_1	set	14
	.sym	fileSize,0,16,1,16
	.sym	next,2,16,1,16
	.sym	pageSize,4,16,1,16
	.sym	fileList,6,138,1,32,6
	.sym	file,10,138,1,32,5
	.sym	buffer,14,142,1,32
	.sym	pfxdosDevice,4,138,6,32,101
	.sym	fileName,8,142,6,32
	stz	<L94+fileSize_1
	stz	<L94+next_1
	stz	<L94+pageSize_1
	stz	<L94+fileList_1
	stz	<L94+fileList_1+2
	stz	<L94+file_1
	stz	<L94+file_1+2
	stz	<L94+buffer_1
	stz	<L94+buffer_1+2
	.line	605
	pei	<L93+pfxdosDevice_0+2
	pei	<L93+pfxdosDevice_0
	jsl	~~k_read_dos_directory
	sta	<L94+fileList_1
	stx	<L94+fileList_1+2
;	if(fileList)
	.line	606
;	{
	lda	<L94+fileList_1
	ora	<L94+fileList_1+2
	bne	L96
	brl	L10066
L96:
	.line	607
;
;		file = k_nodelist_foreach_until_listdata(fileList,(LPVOID)fileName,k_dos_foreach_file);
	.line	609
	pea	#^~~k_dos_foreach_file
	pea	#<~~k_dos_foreach_file
	pei	<L93+fileName_0+2
	pei	<L93+fileName_0
	pei	<L94+fileList_1+2
	pei	<L94+fileList_1
	jsl	~~k_nodelist_foreach_until_listdata
	sta	<L94+file_1
	stx	<L94+file_1+2
;		if(file)
	.line	610
;		{
	lda	<L94+file_1
	ora	<L94+file_1+2
	bne	L97
	brl	L10067
L97:
	.line	611
;			PFAT16ENTRYLONG pentry = ((PFAT16ENTRYLONG)file->data);
;
;			k_debug_strings("k_dos_read_file MATCH:file:",pentry->plongfileName);
	.block	614
pentry_2	set	18
	.sym	pentry,18,138,1,32,75
	ldy	#$2
	lda	[<L94+file_1],Y
	sta	<L94+pentry_2
	ldy	#$4
	lda	[<L94+file_1],Y
	sta	<L94+pentry_2+2
	.line	614
	ldy	#$22
	lda	[<L94+pentry_2],Y
	pha
	ldy	#$20
	lda	[<L94+pentry_2],Y
	pha
	pea	#^L86
	pea	#<L86
	jsl	~~k_debug_strings
;			fileSize = pentry->file_size;
	.line	615
	ldy	#$1c
	lda	[<L94+pentry_2],Y
	sta	<L94+fileSize_1
;
;			pageSize = 512 * (fileSize/512 + 1);
	.line	617
	lda	<L94+fileSize_1
	ldx	#<$9
	xref	~~~lsr
	jsl	~~~lsr
	ldx	#<$9
	xref	~~~asl
	jsl	~~~asl
	sta	<R0
	clc
	lda	#$200
	adc	<R0
	sta	<L94+pageSize_1
;			buffer = k_mem_allocate_heap(pageSize);
	.line	618
	pei	<L94+pageSize_1
	jsl	~~k_mem_allocate_heap
	sta	<L94+buffer_1
	stx	<L94+buffer_1+2
;
;			k_debug_integer("pentry->starting_cluster:",pentry->starting_cluster);
	.line	620
	ldy	#$1a
	lda	[<L94+pentry_2],Y
	pha
	pea	#^L86+28
	pea	#<L86+28
	jsl	~~k_debug_integer
;
;			next = pentry->starting_cluster;
	.line	622
	ldy	#$1a
	lda	[<L94+pentry_2],Y
	sta	<L94+next_1
;			while(next!=65528L && next!=0L && next!=65535L)
	.line	623
L10068:
	lda	<L94+next_1
	sta	<R0
	stz	<R0+2
	lda	<R0
	cmp	#<$fff8
	bne	L99
	lda	<R0+2
	cmp	#^$fff8
L99:
	bne	L100
	brl	L10069
L100:
	lda	<L94+next_1
	bne	L101
	brl	L10069
L101:
	lda	<L94+next_1
	sta	<R0
	stz	<R0+2
	lda	<R0
	cmp	#<$ffff
	bne	L102
	lda	<R0+2
	cmp	#^$ffff
L102:
	bne	L103
	brl	L10069
L103:
;			{
	.line	624
;				k_debug_integer("k_dos_read_file:next1:",next);
	.line	625
	pei	<L94+next_1
	pea	#^L86+54
	pea	#<L86+54
	jsl	~~k_debug_integer
;
;				if(next!=65528L && next!=0L && next!=65535L)
	.line	627
;				{
	lda	<L94+next_1
	sta	<R0
	stz	<R0+2
	lda	<R0
	cmp	#<$fff8
	bne	L104
	lda	<R0+2
	cmp	#^$fff8
L104:
	bne	L105
	brl	L10070
L105:
	lda	<L94+next_1
	bne	L106
	brl	L10070
L106:
	lda	<L94+next_1
	sta	<R0
	stz	<R0+2
	lda	<R0
	cmp	#<$ffff
	bne	L107
	lda	<R0+2
	cmp	#^$ffff
L107:
	bne	L108
	brl	L10070
L108:
	.line	628
;
;
;
;					k_debug_integer("k_dos_read_file:pageSize:",pageSize);
	.line	632
	pei	<L94+pageSize_1
	pea	#^L86+77
	pea	#<L86+77
	jsl	~~k_debug_integer
;
;
;					//readClusterToMemory(getClusterLocationByIndex(next) + pfxdosDevice->bsOffset,pfxdosDevice->sectors_per_cluster,buffer,pentry->file_size);
;					//readSDSector(offset + (pfxdosDevice->sectors_per_cluster * 1) + read,buffer);
;
;					k_debug_long("k_dos_read_file:getClusterLocationByIndex:0x210000:",0x210000);
	.line	638
	pea	#^$210000
	pea	#<$210000
	pea	#^L86+103
	pea	#<L86+103
	jsl	~~k_debug_long
;
;
;					k_debug_long("k_dos_read_file:getDeviceClusterLocationByIndex:",getDeviceClusterLocationByIndex(pfxdosDevice,next));
	.line	641
	lda	<L94+next_1
	sta	<R0
	stz	<R0+2
	pei	<R0+2
	pei	<R0
	pei	<L93+pfxdosDevice_0+2
	pei	<L93+pfxdosDevice_0
	jsl	~~getDeviceClusterLocationByIndex
	sta	<R1
	stx	<R1+2
	phx
	pha
	pea	#^L86+155
	pea	#<L86+155
	jsl	~~k_debug_long
;					k_debug_long("k_dos_read_file:getDeviceClusterLocationByIndex:",getDeviceClusterLocationByIndex(pfxdosDevice,next) + pfxdosDevice->bsOffset);
	.line	642
	lda	<L94+next_1
	sta	<R0
	stz	<R0+2
	pei	<R0+2
	pei	<R0
	pei	<L93+pfxdosDevice_0+2
	pei	<L93+pfxdosDevice_0
	jsl	~~getDeviceClusterLocationByIndex
	sta	<R1
	stx	<R1+2
	clc
	lda	<R1
	ldy	#$28b
	adc	[<L93+pfxdosDevice_0],Y
	sta	<R2
	lda	<R1+2
	ldy	#$28d
	adc	[<L93+pfxdosDevice_0],Y
	sta	<R2+2
	pei	<R2+2
	pei	<R2
	pea	#^L86+204
	pea	#<L86+204
	jsl	~~k_debug_long
;
;					k_debug_long("k_dos_read_file:getClusterLocationByIndex:",getClusterLocationByIndex(next) + pfxdosDevice->bsOffset);
	.line	644
	lda	<L94+next_1
	sta	<R0
	stz	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~getClusterLocationByIndex
	sta	<R1
	stx	<R1+2
	clc
	lda	<R1
	ldy	#$28b
	adc	[<L93+pfxdosDevice_0],Y
	sta	<R2
	lda	<R1+2
	ldy	#$28d
	adc	[<L93+pfxdosDevice_0],Y
	sta	<R2+2
	pei	<R2+2
	pei	<R2
	pea	#^L86+253
	pea	#<L86+253
	jsl	~~k_debug_long
;
;
;					//pfxdosDevice->pfReader((getClusterLocationByIndex(next)+ pfxdosDevice->bsOffset) * 512,buffer);
;					pfxdosDevice->pfReader(0x210000,buffer);
	.line	648
	pei	<L94+buffer_1+2
	pei	<L94+buffer_1
	pea	#^$210000
	pea	#<$210000
	ldy	#$2bc
	lda	[<L93+pfxdosDevice_0],Y
	tax
	ldy	#$2ba
	lda	[<L93+pfxdosDevice_0],Y
	xref	~~~lcal
	jsl	~~~lcal
;
;					/*
;					buffer = readClusterToMemory(getClusterLocationByIndex(next) + pfxdosDevice->bsOffset,
;							                     pfxdosDevice->sectors_per_cluster,
;												 buffer,
;												 fileSize);*/
;					k_debug_byte_array("k_dos_read_file:buffer:\r\n",buffer,512);
	.line	655
	pea	#^$200
	pea	#<$200
	pei	<L94+buffer_1+2
	pei	<L94+buffer_1
	pea	#^L86+296
	pea	#<L86+296
	jsl	~~k_debug_byte_array
;
;					next = pfxdosDevice->fileAllocationTable[next];
	.line	657
	clc
	lda	#$8b
	adc	<L94+next_1
	sta	<R0
	ldy	<R0
	lda	[<L93+pfxdosDevice_0],Y
	and	#$ff
	sta	<L94+next_1
;
;					k_debug_integer("k_dos_read_file:next2:",next);
	.line	659
	pei	<L94+next_1
	pea	#^L86+322
	pea	#<L86+322
	jsl	~~k_debug_integer
;					k_debug_long("k_dos_read_file:next512:",next * 512);
	.line	660
	lda	<L94+next_1
	ldx	#<$9
	xref	~~~asl
	jsl	~~~asl
	sta	<R0
	lda	<R0
	sta	<R0
	stz	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L86+345
	pea	#<L86+345
	jsl	~~k_debug_long
;				}
	.line	661
;			}
L10070:
	.line	662
	brl	L10068
L10069:
;
;			k_mem_deallocate_heap(buffer);
	.line	664
	pei	<L94+buffer_1+2
	pei	<L94+buffer_1
	jsl	~~k_mem_deallocate_heap
;		}
	.endblock	665
	.line	665
;
;		k_nodelist_deallocate_list(fileList);
L10067:
	.line	667
	pei	<L94+fileList_1+2
	pei	<L94+fileList_1
	jsl	~~k_nodelist_deallocate_list
;	}
	.line	668
;
;
;	k_debug_integer("k_dos_read_file exit:fileSize:",fileSize);
L10066:
	.line	671
	pei	<L94+fileSize_1
	pea	#^L86+370
	pea	#<L86+370
	jsl	~~k_debug_integer
;
;	return fileSize;
	.line	673
	lda	<L94+fileSize_1
L109:
	tay
	lda	<L93+2
	sta	<L93+2+8
	lda	<L93+1
	sta	<L93+1+8
	pld
	tsc
	clc
	adc	#L93+8
	tcs
	tya
	rtl
;}
	.line	674
	.endblock	674
L93	equ	34
L94	equ	13
	ends
	efunc
	.endfunc	674,13,34
	.line	674
	data
L86:
	db	$6B,$5F,$64,$6F,$73,$5F,$72,$65,$61,$64,$5F,$66,$69,$6C,$65
	db	$20,$4D,$41,$54,$43,$48,$3A,$66,$69,$6C,$65,$3A,$00,$70,$65
	db	$6E,$74,$72,$79,$2D,$3E,$73,$74,$61,$72,$74,$69,$6E,$67,$5F
	db	$63,$6C,$75,$73,$74,$65,$72,$3A,$00,$6B,$5F,$64,$6F,$73,$5F
	db	$72,$65,$61,$64,$5F,$66,$69,$6C,$65,$3A,$6E,$65,$78,$74,$31
	db	$3A,$00,$6B,$5F,$64,$6F,$73,$5F,$72,$65,$61,$64,$5F,$66,$69
	db	$6C,$65,$3A,$70,$61,$67,$65,$53,$69,$7A,$65,$3A,$00,$6B,$5F
	db	$64,$6F,$73,$5F,$72,$65,$61,$64,$5F,$66,$69,$6C,$65,$3A,$67
	db	$65,$74,$43,$6C,$75,$73,$74,$65,$72,$4C,$6F,$63,$61,$74,$69
	db	$6F,$6E,$42,$79,$49,$6E,$64,$65,$78,$3A,$30,$78,$32,$31,$30
	db	$30,$30,$30,$3A,$00,$6B,$5F,$64,$6F,$73,$5F,$72,$65,$61,$64
	db	$5F,$66,$69,$6C,$65,$3A,$67,$65,$74,$44,$65,$76,$69,$63,$65
	db	$43,$6C,$75,$73,$74,$65,$72,$4C,$6F,$63,$61,$74,$69,$6F,$6E
	db	$42,$79,$49,$6E,$64,$65,$78,$3A,$00,$6B,$5F,$64,$6F,$73,$5F
	db	$72,$65,$61,$64,$5F,$66,$69,$6C,$65,$3A,$67,$65,$74,$44,$65
	db	$76,$69,$63,$65,$43,$6C,$75,$73,$74,$65,$72,$4C,$6F,$63,$61
	db	$74,$69,$6F,$6E,$42,$79,$49,$6E,$64,$65,$78,$3A,$00,$6B,$5F
	db	$64,$6F,$73,$5F,$72,$65,$61,$64,$5F,$66,$69,$6C,$65,$3A,$67
	db	$65,$74,$43,$6C,$75,$73,$74,$65,$72,$4C,$6F,$63,$61,$74,$69
	db	$6F,$6E,$42,$79,$49,$6E,$64,$65,$78,$3A,$00,$6B,$5F,$64,$6F
	db	$73,$5F,$72,$65,$61,$64,$5F,$66,$69,$6C,$65,$3A,$62,$75,$66
	db	$66,$65,$72,$3A,$0D,$0A,$00,$6B,$5F,$64,$6F,$73,$5F,$72,$65
	db	$61,$64,$5F,$66,$69,$6C,$65,$3A,$6E,$65,$78,$74,$32,$3A,$00
	db	$6B,$5F,$64,$6F,$73,$5F,$72,$65,$61,$64,$5F,$66,$69,$6C,$65
	db	$3A,$6E,$65,$78,$74,$35,$31,$32,$3A,$00,$6B,$5F,$64,$6F,$73
	db	$5F,$72,$65,$61,$64,$5F,$66,$69,$6C,$65,$20,$65,$78,$69,$74
	db	$3A,$66,$69,$6C,$65,$53,$69,$7A,$65,$3A,$00
	ends
;
;PFXNODELIST k_read_dos_directory(PFXDOSDEVICE pfxdosDevice)
;{
	.line	676
	.line	677
	FXDOS
	xdef	~~k_read_dos_directory
	func
	.function	677
~~k_read_dos_directory:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L111
	tcs
	phd
	tcd
pfxdosDevice_0	set	4
	.block	677
;	ULONG x = 0;
;	ULONG i = 0;
;	ULONG check = 0L;
;	ULONG fileOffset;
;	//PFAT16ENTRY     pentry     = NULL;
;	PFAT16ENTRYLONG  pentrylong = NULL;
;
;	PFXNODELIST plist   = NULL;
;
;	unsigned long rootDirSectors = pfxdosDevice->rootDirSectors;
;
;	k_debug_nstrings("k_read_dos_directory volume:",pfxdosDevice->root_volume_name,11);
x_1	set	0
i_1	set	4
check_1	set	8
fileOffset_1	set	12
pentrylong_1	set	16
plist_1	set	20
rootDirSectors_1	set	24
	.sym	x,0,18,1,32
	.sym	i,4,18,1,32
	.sym	check,8,18,1,32
	.sym	fileOffset,12,18,1,32
	.sym	pentrylong,16,138,1,32,75
	.sym	plist,20,138,1,32,6
	.sym	rootDirSectors,24,18,1,32
	.sym	pfxdosDevice,4,138,6,32,101
	stz	<L112+x_1
	stz	<L112+x_1+2
	stz	<L112+i_1
	stz	<L112+i_1+2
	stz	<L112+check_1
	stz	<L112+check_1+2
	stz	<L112+pentrylong_1
	stz	<L112+pentrylong_1+2
	stz	<L112+plist_1
	stz	<L112+plist_1+2
	ldy	#$28f
	lda	[<L111+pfxdosDevice_0],Y
	sta	<L112+rootDirSectors_1
	ldy	#$291
	lda	[<L111+pfxdosDevice_0],Y
	sta	<L112+rootDirSectors_1+2
	.line	689
	pea	#<$b
	clc
	lda	#$2a9
	adc	<L111+pfxdosDevice_0
	sta	<R0
	lda	#$0
	adc	<L111+pfxdosDevice_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L110
	pea	#<L110
	jsl	~~k_debug_nstrings
;
;	if(pfxdosDevice->initialized)
	.line	691
;	{
	ldy	#$1
	lda	[<L111+pfxdosDevice_0],Y
	and	#$ff
	bne	L114
	brl	L10071
L114:
	.line	692
;		plist = k_nodelist_allocate_list("currentDirectory",k_dos_deallocate_long_entry);
	.line	693
	pea	#^~~k_dos_deallocate_long_entry
	pea	#<~~k_dos_deallocate_long_entry
	pea	#^L110+29
	pea	#<L110+29
	jsl	~~k_nodelist_allocate_list
	sta	<L112+plist_1
	stx	<L112+plist_1+2
;		if(plist)
	.line	694
;		{
	lda	<L112+plist_1
	ora	<L112+plist_1+2
	bne	L115
	brl	L10072
L115:
	.line	695
;			for(i=0; i<pfxdosDevice->rootEntriesPerPage; i++)
	.line	696
	stz	<L112+i_1
	stz	<L112+i_1+2
	brl	L10076
L10075:
;			{
	.line	697
;				if(pfxdosDevice->pfReader(rootDirSectors,sectorBuffer) == 0)
	.line	698
;				{
	lda	#<~~sectorBuffer
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pei	<L112+rootDirSectors_1+2
	pei	<L112+rootDirSectors_1
	ldy	#$2bc
	lda	[<L111+pfxdosDevice_0],Y
	tax
	ldy	#$2ba
	lda	[<L111+pfxdosDevice_0],Y
	xref	~~~lcal
	jsl	~~~lcal
	and	#$ff
	beq	L116
	brl	L10077
L116:
	.line	699
;					for(x=0; x<pfxdosDevice->rootEntriesPerPage; x++)
	.line	700
	stz	<L112+x_1
	stz	<L112+x_1+2
	brl	L10081
L10080:
;					{
	.line	701
;						pentrylong = (PFAT16ENTRYLONG)k_mem_allocate_heap(sizeof(FAT16ENTRYLONG));
	.line	702
	pea	#<$24
	jsl	~~k_mem_allocate_heap
	sta	<L112+pentrylong_1
	stx	<L112+pentrylong_1+2
;						if(pentrylong)
	.line	703
;						{
	lda	<L112+pentrylong_1
	ora	<L112+pentrylong_1+2
	bne	L117
	brl	L10082
L117:
	.line	704
;							memset(pentrylong,0,sizeof(FAT16ENTRYLONG));
	.line	705
	pea	#<$24
	pea	#<$0
	pei	<L112+pentrylong_1+2
	pei	<L112+pentrylong_1
	jsl	~~memset
;							memcpy(pentrylong,(PFAT16ENTRY)&sectorBuffer[x * sizeof(FAT16ENTRY)],sizeof(FAT16ENTRY));
	.line	706
	pea	#<$20
	pei	<L112+x_1+2
	pei	<L112+x_1
	lda	#$5
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R1
	stx	<R1+2
	clc
	lda	#<~~sectorBuffer
	adc	<R1
	sta	<R2
	lda	<R2
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pei	<L112+pentrylong_1+2
	pei	<L112+pentrylong_1
	jsl	~~memcpy
;							pentrylong->plongfileName = NULL;
	.line	707
	lda	#$0
	ldy	#$20
	sta	[<L112+pentrylong_1],Y
	lda	#$0
	ldy	#$22
	sta	[<L112+pentrylong_1],Y
;
;							check = k_dos_get_name(pentrylong,NULL);
	.line	709
	pea	#^$0
	pea	#<$0
	pei	<L112+pentrylong_1+2
	pei	<L112+pentrylong_1
	jsl	~~k_dos_get_name
	sta	<L112+check_1
	stx	<L112+check_1+2
;
;							if(check > 0)
	.line	711
;							{
	lda	#$0
	cmp	<L112+check_1
	lda	#$0
	sbc	<L112+check_1+2
	bcc	L118
	brl	L10083
L118:
	.line	712
;								k_debug_long("k_dos_get_name check:",check);
	.line	713
	pei	<L112+check_1+2
	pei	<L112+check_1
	pea	#^L110+46
	pea	#<L110+46
	jsl	~~k_debug_long
;								//fileOffset = ((pentrylong->starting_cluster - 2) * 16) + (8 + (2 * 240)  + ( ((512 * 32) + (512 - 1)) / 512 ));
;								//k_debug_long("fileOffset:",fileOffset);
;							}
	.line	716
;							//print_file_info((PFAT16ENTRY)pentrylong);
;
;							if(pentrylong->plongfileName && pentrylong->plongfileName!=(LPSTR)0xffffffff)
L10083:
	.line	719
;							{
	ldy	#$20
	lda	[<L112+pentrylong_1],Y
	ldy	#$22
	ora	[<L112+pentrylong_1],Y
	bne	L119
	brl	L10084
L119:
	ldy	#$20
	lda	[<L112+pentrylong_1],Y
	cmp	#<$ffffffff
	bne	L120
	ldy	#$22
	lda	[<L112+pentrylong_1],Y
	cmp	#^$ffffffff
L120:
	bne	L121
	brl	L10084
L121:
	.line	720
;								k_nodelist_addtolist(plist,PFXNODE_FILE_PATH_TYPE,pentrylong->plongfileName,pentrylong);
	.line	721
	pei	<L112+pentrylong_1+2
	pei	<L112+pentrylong_1
	ldy	#$22
	lda	[<L112+pentrylong_1],Y
	pha
	ldy	#$20
	lda	[<L112+pentrylong_1],Y
	pha
	pea	#<$a1
	pei	<L112+plist_1+2
	pei	<L112+plist_1
	jsl	~~k_nodelist_addtolist
;								//k_debug_pointer("k_read_dos_directory dealloc pentrylong1:",pentrylong);
;								//k_mem_deallocate_heap(pentrylong->plongfileName);
;								//pentrylong->plongfileName = NULL;
;								//k_mem_deallocate_heap(pentrylong);
;							}
	.line	726
;							else
	brl	L10085
L10084:
;							{
	.line	728
;								//k_debug_pointer("k_read_dos_directory dealloc pentrylong2:",pentrylong);
;								k_mem_deallocate_heap(pentrylong);
	.line	730
	pei	<L112+pentrylong_1+2
	pei	<L112+pentrylong_1
	jsl	~~k_mem_deallocate_heap
;							}
	.line	731
L10085:
;						}
	.line	732
;					}
L10082:
	.line	733
L10078:
	inc	<L112+x_1
	bne	L122
	inc	<L112+x_1+2
L122:
L10081:
	ldy	#$0
	phy
	ldy	#$295
	lda	[<L111+pfxdosDevice_0],Y
	ply
	rol	A
	ror	A
	bpl	L123
	dey
L123:
	sta	<R0
	sty	<R0+2
	lda	<L112+x_1
	cmp	<R0
	lda	<L112+x_1+2
	sbc	<R0+2
	bcs	L124
	brl	L10080
L124:
L10079:
;				}
	.line	734
;				rootDirSectors+=512;
L10077:
	.line	735
	clc
	lda	#$200
	adc	<L112+rootDirSectors_1
	sta	<L112+rootDirSectors_1
	bcc	L125
	inc	<L112+rootDirSectors_1+2
L125:
;			}
	.line	736
L10073:
	inc	<L112+i_1
	bne	L126
	inc	<L112+i_1+2
L126:
L10076:
	ldy	#$0
	phy
	ldy	#$295
	lda	[<L111+pfxdosDevice_0],Y
	ply
	rol	A
	ror	A
	bpl	L127
	dey
L127:
	sta	<R0
	sty	<R0+2
	lda	<L112+i_1
	cmp	<R0
	lda	<L112+i_1+2
	sbc	<R0+2
	bcs	L128
	brl	L10075
L128:
L10074:
;		}
	.line	737
;	}
L10072:
	.line	738
;
;
;
;	return plist;
L10071:
	.line	742
	ldx	<L112+plist_1+2
	lda	<L112+plist_1
L129:
	tay
	lda	<L111+2
	sta	<L111+2+4
	lda	<L111+1
	sta	<L111+1+4
	pld
	tsc
	clc
	adc	#L111+4
	tcs
	tya
	rtl
;}
	.line	743
	.endblock	743
L111	equ	40
L112	equ	13
	ends
	efunc
	.endfunc	743,13,40
	.line	743
	data
L110:
	db	$6B,$5F,$72,$65,$61,$64,$5F,$64,$6F,$73,$5F,$64,$69,$72,$65
	db	$63,$74,$6F,$72,$79,$20,$76,$6F,$6C,$75,$6D,$65,$3A,$00,$63
	db	$75,$72,$72,$65,$6E,$74,$44,$69,$72,$65,$63,$74,$6F,$72,$79
	db	$00,$6B,$5F,$64,$6F,$73,$5F,$67,$65,$74,$5F,$6E,$61,$6D,$65
	db	$20,$63,$68,$65,$63,$6B,$3A,$00
	ends
;
;ULONG getDeviceClusterLocationByIndex(PFXDOSDEVICE pfxdosDevice,ULONG starting_cluster)
;{
	.line	745
	.line	746
	FXDOS
	xdef	~~getDeviceClusterLocationByIndex
	func
	.function	746
~~getDeviceClusterLocationByIndex:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L131
	tcs
	phd
	tcd
pfxdosDevice_0	set	4
starting_cluster_0	set	8
	.block	746
;	ULONG rootDirSectors = 0L;
;	ULONG cluster2SectorNumber = 0L;
;	ULONG clusterSectorNumber = 0L;
;	ULONG clusterByteNumber = 0L;
;
;	ULONG firstDataSector = 0L;
;
;	/*
;			k_debug_integer("***fxdosDevice bytes_per_sector:",(INT)pfxdosDevice->bootSector.bytes_per_sector);
;			k_debug_integer("***fxdosDevice sectors_per_cluster:",(INT)pfxdosDevice->bootSector.sectors_per_cluster);
;			k_debug_integer("***fxdosDevice reserved_sector_count:",(INT)pfxdosDevice->bootSector.reserved_sector_count);
;			k_debug_integer("***fxdosDevice table_count:",(INT)pfxdosDevice->bootSector.fat_table_count);
;			k_debug_integer("***fxdosDevice root_entry_count:",(INT)pfxdosDevice->bootSector.root_entry_count);
;			k_debug_integer("***fxdosDevice total_sectors_16:",(INT)pfxdosDevice->bootSector.total_sectors_16);
;			k_debug_integer("***fxdosDevice media_type:",(INT)pfxdosDevice->bootSector.media_type);
;			k_debug_integer("***fxdosDevice sectors_per_fat:",(INT)pfxdosDevice->bootSector.sectors_per_fat);
;			k_debug_integer("***fxdosDevice sectors_per_track:",(INT)pfxdosDevice->bootSector.sectors_per_track);
;			k_debug_integer("***fxdosDevice head_side_count:",(INT)pfxdosDevice->bootSector.head_side_count);
;			k_debug_integer("***fxdosDevice hidden_sector_count:",(INT)pfxdosDevice->bootSector.hidden_sector_count);
;			k_debug_integer("***fxdosDevice total_sectors_32:",(INT)pfxdosDevice->bootSector.total_sectors_32);
;	 */
;
;
;
;	firstDataSector = pfxdosDevice->bootSector.reserved_sector_count + (pfxdosDevice->bootSector.fat_table_count * 512) + pfxdosDevice->rootDirSectors;
rootDirSectors_1	set	0
cluster2SectorNumber_1	set	4
clusterSectorNumber_1	set	8
clusterByteNumber_1	set	12
firstDataSector_1	set	16
	.sym	rootDirSectors,0,18,1,32
	.sym	cluster2SectorNumber,4,18,1,32
	.sym	clusterSectorNumber,8,18,1,32
	.sym	clusterByteNumber,12,18,1,32
	.sym	firstDataSector,16,18,1,32
	.sym	pfxdosDevice,4,138,6,32,101
	.sym	starting_cluster,8,18,6,32
	stz	<L132+rootDirSectors_1
	stz	<L132+rootDirSectors_1+2
	stz	<L132+cluster2SectorNumber_1
	stz	<L132+cluster2SectorNumber_1+2
	stz	<L132+clusterSectorNumber_1
	stz	<L132+clusterSectorNumber_1+2
	stz	<L132+clusterByteNumber_1
	stz	<L132+clusterByteNumber_1+2
	stz	<L132+firstDataSector_1
	stz	<L132+firstDataSector_1+2
	.line	771
	ldy	#$17
	lda	[<L131+pfxdosDevice_0],Y
	and	#$ff
	ldx	#<$9
	xref	~~~asl
	jsl	~~~asl
	sta	<R0
	clc
	lda	<R0
	ldy	#$15
	adc	[<L131+pfxdosDevice_0],Y
	sta	<R1
	lda	<R1
	sta	<R0
	stz	<R0+2
	clc
	lda	<R0
	ldy	#$28f
	adc	[<L131+pfxdosDevice_0],Y
	sta	<L132+firstDataSector_1
	lda	<R0+2
	ldy	#$291
	adc	[<L131+pfxdosDevice_0],Y
	sta	<L132+firstDataSector_1+2
;
;	k_debug_long("firstDataSector:",firstDataSector);
	.line	773
	pei	<L132+firstDataSector_1+2
	pei	<L132+firstDataSector_1
	pea	#^L130
	pea	#<L130
	jsl	~~k_debug_long
;
;	clusterSectorNumber = ((starting_cluster - 2) * pfxdosDevice->sectors_per_cluster) + firstDataSector;
	.line	775
	ldy	#$0
	phy
	ldy	#$297
	lda	[<L131+pfxdosDevice_0],Y
	ply
	rol	A
	ror	A
	bpl	L134
	dey
L134:
	sta	<R0
	sty	<R0+2
	clc
	lda	#$fffe
	adc	<L131+starting_cluster_0
	sta	<R1
	lda	#$ffff
	adc	<L131+starting_cluster_0+2
	sta	<R1+2
	pei	<R0+2
	pei	<R0
	pei	<R1+2
	pei	<R1
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R0
	stx	<R0+2
	clc
	lda	<R0
	adc	<L132+firstDataSector_1
	sta	<L132+clusterSectorNumber_1
	lda	<R0+2
	adc	<L132+firstDataSector_1+2
	sta	<L132+clusterSectorNumber_1+2
;
;	k_debug_long("Cluster Offset Calculated:",clusterSectorNumber);
	.line	777
	pei	<L132+clusterSectorNumber_1+2
	pei	<L132+clusterSectorNumber_1
	pea	#^L130+17
	pea	#<L130+17
	jsl	~~k_debug_long
;
;	k_debug_long("FAT Entry:",((UINT*)(&pfxdosDevice->fileAllocationTable))[starting_cluster]);
	.line	779
	lda	<L131+starting_cluster_0
	sta	<R0
	lda	<L131+starting_cluster_0+2
	sta	<R0+2
	asl	<R0
	rol	<R0+2
	clc
	lda	#$8b
	adc	<L131+pfxdosDevice_0
	sta	<R1
	lda	#$0
	adc	<L131+pfxdosDevice_0+2
	sta	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<R2
	lda	<R1+2
	adc	<R0+2
	sta	<R2+2
	lda	[<R2]
	sta	<R0
	stz	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L130+44
	pea	#<L130+44
	jsl	~~k_debug_long
;
;	rootDirSectors = (pfxdosDevice->bootSector.reserved_sector_count * pfxdosDevice->root_entry_count)  / pfxdosDevice->bootSector.bytes_per_sector;
	.line	781
	ldy	#$293
	lda	[<L131+pfxdosDevice_0],Y
	tax
	ldy	#$15
	lda	[<L131+pfxdosDevice_0],Y
	xref	~~~mul
	jsl	~~~mul
	sta	<R0
	ldy	#$12
	lda	[<L131+pfxdosDevice_0],Y
	tax
	lda	<R0
	xref	~~~udv
	jsl	~~~udv
	sta	<R0
	lda	<R0
	sta	<L132+rootDirSectors_1
	stz	<L132+rootDirSectors_1+2
;
;
;	cluster2SectorNumber =  8 + (2 * 240) + rootDirSectors;
	.line	784
	clc
	lda	#$1e8
	adc	<L132+rootDirSectors_1
	sta	<L132+cluster2SectorNumber_1
	lda	#$0
	adc	<L132+rootDirSectors_1+2
	sta	<L132+cluster2SectorNumber_1+2
;	clusterSectorNumber =  ((starting_cluster - 2) * 16) + cluster2SectorNumber;
	.line	785
	lda	<L131+starting_cluster_0
	sta	<R0
	lda	<L131+starting_cluster_0+2
	sta	<R0+2
	asl	<R0
	rol	<R0+2
	asl	<R0
	rol	<R0+2
	asl	<R0
	rol	<R0+2
	asl	<R0
	rol	<R0+2
	clc
	lda	<R0
	adc	<L132+cluster2SectorNumber_1
	sta	<R1
	lda	<R0+2
	adc	<L132+cluster2SectorNumber_1+2
	sta	<R1+2
	clc
	lda	#$ffe0
	adc	<R1
	sta	<L132+clusterSectorNumber_1
	lda	#$ffff
	adc	<R1+2
	sta	<L132+clusterSectorNumber_1+2
;	k_debug_long("clusterSectorNumber:",clusterSectorNumber);
	.line	786
	pei	<L132+clusterSectorNumber_1+2
	pei	<L132+clusterSectorNumber_1
	pea	#^L130+55
	pea	#<L130+55
	jsl	~~k_debug_long
;
;	clusterByteNumber = clusterSectorNumber * 512;
	.line	788
	pei	<L132+clusterSectorNumber_1+2
	pei	<L132+clusterSectorNumber_1
	lda	#$9
	xref	~~~lasl
	jsl	~~~lasl
	sta	<L132+clusterByteNumber_1
	stx	<L132+clusterByteNumber_1+2
;
;	return clusterByteNumber;
	.line	790
	ldx	<L132+clusterByteNumber_1+2
	lda	<L132+clusterByteNumber_1
L135:
	tay
	lda	<L131+2
	sta	<L131+2+8
	lda	<L131+1
	sta	<L131+1+8
	pld
	tsc
	clc
	adc	#L131+8
	tcs
	tya
	rtl
;}
	.line	791
	.endblock	791
L131	equ	32
L132	equ	13
	ends
	efunc
	.endfunc	791,13,32
	.line	791
	data
L130:
	db	$66,$69,$72,$73,$74,$44,$61,$74,$61,$53,$65,$63,$74,$6F,$72
	db	$3A,$00,$43,$6C,$75,$73,$74,$65,$72,$20,$4F,$66,$66,$73,$65
	db	$74,$20,$43,$61,$6C,$63,$75,$6C,$61,$74,$65,$64,$3A,$00,$46
	db	$41,$54,$20,$45,$6E,$74,$72,$79,$3A,$00,$63,$6C,$75,$73,$74
	db	$65,$72,$53,$65,$63,$74,$6F,$72,$4E,$75,$6D,$62,$65,$72,$3A
	db	$00
	ends
;
;
;ULONG getClusterLocationByIndex(ULONG starting_cluster)
;{
	.line	794
	.line	795
	FXDOS
	xdef	~~getClusterLocationByIndex
	func
	.function	795
~~getClusterLocationByIndex:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L137
	tcs
	phd
	tcd
starting_cluster_0	set	4
	.block	795
;	ULONG rootDirSectors;
;	ULONG cluster2SectorNumber;
;	ULONG clusterSectorNumber;
;	ULONG clusterByteNumber = 0;
;
;	rootDirSectors = (32 * 512)  / 512;
rootDirSectors_1	set	0
cluster2SectorNumber_1	set	4
clusterSectorNumber_1	set	8
clusterByteNumber_1	set	12
	.sym	rootDirSectors,0,18,1,32
	.sym	cluster2SectorNumber,4,18,1,32
	.sym	clusterSectorNumber,8,18,1,32
	.sym	clusterByteNumber,12,18,1,32
	.sym	starting_cluster,4,18,6,32
	stz	<L138+clusterByteNumber_1
	stz	<L138+clusterByteNumber_1+2
	.line	801
	lda	#$20
	sta	<L138+rootDirSectors_1
	lda	#$0
	sta	<L138+rootDirSectors_1+2
;
;	cluster2SectorNumber = 8 + (2 * 240) + rootDirSectors;
	.line	803
	clc
	lda	#$1e8
	adc	<L138+rootDirSectors_1
	sta	<L138+cluster2SectorNumber_1
	lda	#$0
	adc	<L138+rootDirSectors_1+2
	sta	<L138+cluster2SectorNumber_1+2
;	clusterSectorNumber =  ((starting_cluster - 2) * 16) + cluster2SectorNumber;
	.line	804
	lda	<L137+starting_cluster_0
	sta	<R0
	lda	<L137+starting_cluster_0+2
	sta	<R0+2
	asl	<R0
	rol	<R0+2
	asl	<R0
	rol	<R0+2
	asl	<R0
	rol	<R0+2
	asl	<R0
	rol	<R0+2
	clc
	lda	<R0
	adc	<L138+cluster2SectorNumber_1
	sta	<R1
	lda	<R0+2
	adc	<L138+cluster2SectorNumber_1+2
	sta	<R1+2
	clc
	lda	#$ffe0
	adc	<R1
	sta	<L138+clusterSectorNumber_1
	lda	#$ffff
	adc	<R1+2
	sta	<L138+clusterSectorNumber_1+2
;	clusterByteNumber = clusterSectorNumber * 512;
	.line	805
	pei	<L138+clusterSectorNumber_1+2
	pei	<L138+clusterSectorNumber_1
	lda	#$9
	xref	~~~lasl
	jsl	~~~lasl
	sta	<L138+clusterByteNumber_1
	stx	<L138+clusterByteNumber_1+2
;
;	return clusterByteNumber;
	.line	807
	ldx	<L138+clusterByteNumber_1+2
	lda	<L138+clusterByteNumber_1
L140:
	tay
	lda	<L137+2
	sta	<L137+2+4
	lda	<L137+1
	sta	<L137+1+4
	pld
	tsc
	clc
	adc	#L137+4
	tcs
	tya
	rtl
;}
	.line	808
	.endblock	808
L137	equ	24
L138	equ	9
	ends
	efunc
	.endfunc	808,9,24
	.line	808
;
;
;VOID k_GetDirectory(VOID)
;{
	.line	811
	.line	812
	FXDOS
	xdef	~~k_GetDirectory
	func
	.function	812
~~k_GetDirectory:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L141
	tcs
	phd
	tcd
	.block	812
;	PFXZERPOPAGE zp = k_getZeroPage();
;
;	k_debug_integer("k_GetDirectory:Id:",zp->kernelFunctionCallId);
zp_1	set	0
	.sym	zp,0,138,1,32,45
	jsl	~~k_getZeroPage
	sta	<L142+zp_1
	stx	<L142+zp_1+2
	.line	815
	ldy	#$2c
	lda	[<L142+zp_1],Y
	pha
	pea	#^L136
	pea	#<L136
	jsl	~~k_debug_integer
;	k_debug_integer("k_GetDirectory:Index:",zp->kernelFunctionCallBank);
	.line	816
	ldy	#$2e
	lda	[<L142+zp_1],Y
	and	#$ff
	pha
	pea	#^L136+19
	pea	#<L136+19
	jsl	~~k_debug_integer
;	k_debug_strings("k_GetDirectory:Parameter:",(LPSTR)zp->kernelFunctionCallParameter);
	.line	817
	ldy	#$32
	lda	[<L142+zp_1],Y
	pha
	ldy	#$30
	lda	[<L142+zp_1],Y
	pha
	pea	#^L136+41
	pea	#<L136+41
	jsl	~~k_debug_strings
;
;	zp->kernelFunctionCallReturn = k_mem_allocate_heap(16);
	.line	819
	pea	#<$10
	jsl	~~k_mem_allocate_heap
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$34
	sta	[<L142+zp_1],Y
	lda	<R0+2
	ldy	#$36
	sta	[<L142+zp_1],Y
;
;	strcpy((LPSTR)zp->kernelFunctionCallReturn,"Hello!");
	.line	821
	pea	#^L136+67
	pea	#<L136+67
	ldy	#$36
	lda	[<L142+zp_1],Y
	pha
	ldy	#$34
	lda	[<L142+zp_1],Y
	pha
	jsl	~~strcpy
;}
	.line	822
L144:
	pld
	tsc
	clc
	adc	#L141
	tcs
	rtl
	.endblock	822
L141	equ	8
L142	equ	5
	ends
	efunc
	.endfunc	822,5,8
	.line	822
	data
L136:
	db	$6B,$5F,$47,$65,$74,$44,$69,$72,$65,$63,$74,$6F,$72,$79,$3A
	db	$49,$64,$3A,$00,$6B,$5F,$47,$65,$74,$44,$69,$72,$65,$63,$74
	db	$6F,$72,$79,$3A,$49,$6E,$64,$65,$78,$3A,$00,$6B,$5F,$47,$65
	db	$74,$44,$69,$72,$65,$63,$74,$6F,$72,$79,$3A,$50,$61,$72,$61
	db	$6D,$65,$74,$65,$72,$3A,$00,$48,$65,$6C,$6C,$6F,$21,$00
	ends
;
;
	.line	823
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxdos.c",811
	xref	~~k_mem_deallocate_heap
	xref	~~k_mem_allocate_heap
	xref	~~k_string_rtrim
	xref	~~k_wcstombs
	xref	~~k_get_c256_minor_version
	xref	~~k_get_c256_major_version
	xref	~~k_debug_nstrings
	xref	~~k_debug_strings
	xref	~~k_debug_byte_array
	xref	~~k_debug_hex
	xref	~~k_debug_long
	xref	~~k_debug_integer
	xref	~~k_debug_pointer
	xref	~~k_debug_string
	xref	~~k_getZeroPage
	xref	~~k_nodelist_foreach_until_listdata
	xref	~~k_nodelist_addtolist
	xref	~~k_nodelist_deallocate_list
	xref	~~k_nodelist_allocate_list
	xref	~~strncpy
	xref	~~strlen
	xref	~~strcpy
	xref	~~strcmp
	xref	~~strcat
	xref	~~memset
	xref	~~memcpy
	xref	~~DRIVER_FMXSDCard
	xref	~~DRIVER_B2SDCard
	xref	~~DRIVER_B2Console
	udata
	xdef	~~fxdosDevice
~~fxdosDevice
	ds	706
	ends
	udata
~~longnameBuffer
	ds	255
	ends
	udata
~~longnamecount
	ds	1
	ends
	udata
~~sectorBuffer
	ds	512
	ends
	.sym	~~k_GetDirectory,~~k_GetDirectory,65,2,0
	.sym	~~k_dos_deallocate_long_entry,~~k_dos_deallocate_long_entry,65,2,0
	.sym	~~k_dos_foreach_file,~~k_dos_foreach_file,78,2,0
	.sym	~~k_dos_load_drivers,~~k_dos_load_drivers,65,2,0
	.sym	~~DRIVER_FMXSDCard,~~DRIVER_FMXSDCard,10,18,1416,48
	.sym	~~DRIVER_B2SDCard,~~DRIVER_B2SDCard,10,18,1416,48
	.sym	~~DRIVER_B2Console,~~DRIVER_B2Console,10,18,1416,48
	.sym	~~_k_dos_devicedrivers,~~_k_dos_devicedrivers,138,3,32,6
	.sym	~~fxdosDevice,~~fxdosDevice,10,2,5648,101
	.sym	~~longnameBuffer,~~longnameBuffer,110,3,0,255
	.sym	~~longnamecount,~~longnamecount,14,3,8
	.sym	~~sectorBuffer,~~sectorBuffer,110,3,0,512
	.sym	~~getClusterLocationByIndex,~~getClusterLocationByIndex,82,2,0
	.sym	~~getDeviceClusterLocationByIndex,~~getDeviceClusterLocationByIndex,82,2,0
	.sym	~~k_dos_read_file,~~k_dos_read_file,80,2,0
	.sym	~~k_dos_get_name,~~k_dos_get_name,82,2,0
	.sym	~~k_dos_alloc_short_name,~~k_dos_alloc_short_name,1102,2,32
	.sym	~~k_read_dos_directory,~~k_read_dos_directory,1098,2,32,6
	.sym	~~k_create_dos_device,~~k_create_dos_device,1098,2,32,101
	.sym	PFXDOSDEVICE,0,138,14,32,101
	.sym	FXDOSDEVICE,0,10,14,5648,101
	.sym	DOSINITDEVICE,0,641,14,32
	.sym	DOSSECTORWRITER,0,654,14,32
	.sym	DOSSECTORREADER,0,654,14,32
	.sym	PIDENTIFY_DEVICE_DATA,0,138,14,32,100
	.sym	IDENTIFY_DEVICE_DATA,0,10,14,4096,100
	.sym	PIDSECTOR,0,138,14,32,77
	.sym	IDSECTOR,0,10,14,2048,77
	.sym	~~k_dos_dealloc_filelist,~~k_dos_dealloc_filelist,65,2,0
	.sym	~~_k_dos_alloc_filename,~~_k_dos_alloc_filename,1102,2,32
	.sym	~~_k_dos_alloc_fileinfo,~~_k_dos_alloc_fileinfo,1098,2,32,66
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
	.sym	~~k_mem_deallocate_heap,~~k_mem_deallocate_heap,65,18,0
	.sym	~~k_mem_allocate_heap,~~k_mem_allocate_heap,1089,18,32
	.sym	MemoryCallback,0,641,14,32
	.sym	PFXMEMORYMAP,0,138,14,32,52
	.sym	FXMEMORYMAP,0,10,14,2072,52
	.sym	UMM_HEAP_INFO,0,10,14,256,51
	.sym	~~k_string_rtrim,~~k_string_rtrim,1102,18,32
	.sym	~~k_wcstombs,~~k_wcstombs,1102,18,32
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
	.sym	~~k_get_c256_minor_version,~~k_get_c256_minor_version,65,18,0
	.sym	~~k_get_c256_major_version,~~k_get_c256_major_version,65,18,0
	.sym	~~k_debug_nstrings,~~k_debug_nstrings,65,18,0
	.sym	~~k_debug_strings,~~k_debug_strings,65,18,0
	.sym	~~k_debug_byte_array,~~k_debug_byte_array,65,18,0
	.sym	~~k_debug_hex,~~k_debug_hex,65,18,0
	.sym	~~k_debug_long,~~k_debug_long,65,18,0
	.sym	~~k_debug_integer,~~k_debug_integer,65,18,0
	.sym	~~k_debug_pointer,~~k_debug_pointer,65,18,0
	.sym	~~k_debug_string,~~k_debug_string,65,18,0
	.sym	~~k_getZeroPage,~~k_getZeroPage,1098,18,32,45
	.sym	PDEBUGBYTEBITS,0,138,14,32,47
	.sym	DEBUGBYTEBITS,0,10,14,8,47
	.sym	PFXENVIRONMENT,0,138,14,32,46
	.sym	FXENVIRONMENT,0,10,14,96,46
	.sym	PFXZERPOPAGE,0,138,14,32,45
	.sym	FXZERPOPAGE,0,10,14,448,45
	.sym	KERNELTRAPCALL,0,641,14,32
	.sym	~~k_nodelist_foreach_until_listdata,~~k_nodelist_foreach_until_listdata,1098,18,32,5
	.sym	FOREACHNODEUNTIL,0,654,14,32
	.sym	FOREACHNODE,0,641,14,32
	.sym	~~k_nodelist_addtolist,~~k_nodelist_addtolist,1098,18,32,5
	.sym	~~k_nodelist_deallocate_list,~~k_nodelist_deallocate_list,65,18,0
	.sym	~~k_nodelist_allocate_list,~~k_nodelist_allocate_list,1098,18,32,6
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
	.sym	~~strncpy,~~strncpy,1102,18,32
	.sym	~~strlen,~~strlen,80,18,0
	.sym	~~strcpy,~~strcpy,1102,18,32
	.sym	~~strcmp,~~strcmp,69,18,0
	.sym	~~strcat,~~strcat,1102,18,32
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

;:ts=8
R0	equ	1
R1	equ	5
R2	equ	9
R3	equ	13
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxeventmanager.c",0
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxeventmanager.c",2
;#include "fxexec.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxexec.h",0
	.line	52
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxeventmanager.c",3
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxeventmanager.c",4
;#include "fxmemorymanager.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxmemorymanager.h",0
	.line	39
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxeventmanager.c",5
;#include "fxeventmanager.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxeventmanager.h",0
	.line	743
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxeventmanager.c",6
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxeventmanager.c",7
;#include "fxconsole.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxconsole.h",0
	.line	171
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxeventmanager.c",8
;#include "ff.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\ff.h",0
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\ffconf.h",0
	.line	298
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\ff.h",29
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxtypes.h",0
	.line	708
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\ff.h",30
	.stag	fake102_,4472,102
	.member	fs_type,0,14,8,8
	.member	pdrv,8,14,8,8
	.member	n_fats,16,14,8,8
	.member	wflag,24,14,8,8
	.member	fsi_flag,32,14,8,8
	.member	id,40,5,8,16
	.member	n_rootdir,56,5,8,16
	.member	csize,72,5,8,16
	.member	last_clst,88,18,8,32
	.member	free_clst,120,18,8,32
	.member	n_fatent,152,18,8,32
	.member	fsize,184,18,8,32
	.member	volbase,216,18,8,32
	.member	fatbase,248,18,8,32
	.member	dirbase,280,18,8,32
	.member	database,312,18,8,32
	.member	winsect,344,18,8,32
	.member	win,376,110,8,0,512
	.eos
	.stag	fake103_,128,103
	.member	fs,0,138,8,32,102
	.member	id,32,5,8,16
	.member	attr,48,14,8,8
	.member	stat,56,14,8,8
	.member	sclust,64,18,8,32
	.member	objsize,96,18,8,32
	.eos
	.stag	fake104_,4400,104
	.member	obj,0,10,8,128,103
	.member	flag,128,14,8,8
	.member	err,136,14,8,8
	.member	fptr,144,18,8,32
	.member	clust,176,18,8,32
	.member	sect,208,18,8,32
	.member	dir_sect,240,18,8,32
	.member	dir_ptr,272,142,8,32
	.member	buf,304,110,8,0,512
	.eos
	.stag	fake105_,352,105
	.member	obj,0,10,8,128,103
	.member	dptr,128,18,8,32
	.member	clust,160,18,8,32
	.member	sect,192,18,8,32
	.member	dir,224,142,8,32
	.member	fn,256,110,8,0,12
	.eos
	.stag	fake106_,176,106
	.member	fsize,0,18,8,32
	.member	fdate,32,5,8,16
	.member	ftime,48,5,8,16
	.member	fattrib,64,14,8,8
	.member	fname,72,110,8,0,13
	.eos
	.stag	fake107_,80,107
	.member	fmt,0,14,8,8
	.member	n_fat,8,14,8,8
	.member	align,16,16,8,16
	.member	n_root,32,16,8,16
	.member	au_size,48,18,8,32
	.eos
	.line	429
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxeventmanager.c",9
;//#include "OMF_Load.h"
;//#include "OMF_Dc_Memory.h"
;//#include "basicfont.h"
;
;#define IDLE_PROC	(0)
;#define LOW_PROC    (1)
;#define TOP_PROC    (255)
;#define MAX_PROCS   (256)
;
;//static FIL fp;
;//static FRESULT fres;
;//static FATFS FatFs;
;
;static FXEventProc 		eventProcs[MAX_PROCS];
;static PFXEVENTPROCESS  eventProcess[MAX_PROCS];
;
;static ULONG _k_system_timer = 0;
	data
~~_k_system_timer:
	dl	$0
	ends
;static HWND	 _k_hLockedFocus 	= NULL;
	data
~~_k_hLockedFocus:
	dl	$0
	ends
;static BOOL	 _k_bNCLockedFocus  = FALSE;
	data
~~_k_bNCLockedFocus:
	db	$0
	ends
;//static int scpu = 0;
;//static char idlespinner[] = {'|','/','-','\\'};
;
;//static FXOSMESSAGE smsg;
;static FXQUEUE FAR *_k_eventQueue = NULL;
	data
~~_k_eventQueue:
	dl	$0
	ends
;static MOUSE_MSG_STATE _k_mouseState;
;
;static UINT _subTick = 0x0001;
	data
~~_subTick:
	dw	$1
	ends
;
;static ULONG THIS_MODULE = 0xB0000001;
	data
~~THIS_MODULE:
	dl	$B0000001
	ends
;
;#pragma section CODE=EVTMAN,offset $5:0000
EVTMAN	section	offset $5:0000
	ends
;
;BOOL initHD = FALSE;
	data
	xdef	~~initHD
~~initHD:
	db	$0
	ends
;
;void DoWndProcs(LPVOID ctx,LPVOID data);
;//int reg_config( void );
;//typedef void (*DllMain)(UINT argc,LPVOID *argv);
;typedef void (*DllMain)(LPCSTR segment);
;
;extern ULONG _system_timer;
;//static UCHAR floppybuffer[512];
;
;KEYCODE _k_keyCodesSet[] =
	data
	xdef	~~_k_keyCodesSet
~~_k_keyCodesSet:
;{
;		0,
	db	$0
;		27,
	db	$1B
;		'1',
	db	$31
;		'2',
	db	$32
;		'3',
	db	$33
;		'4',
	db	$34
;		'5',
	db	$35
;		'6',
	db	$36
;		'7',
	db	$37
;		'8',
	db	$38
;		'9',
	db	$39
;		'0',
	db	$30
;		'-',
	db	$2D
;		'=',
	db	$3D
;		 8,
	db	$8
;		 9,
	db	$9
;		'q',
	db	$71
;		'w',
	db	$77
;		'e',
	db	$65
;		'r',
	db	$72
;		't',
	db	$74
;		'y',
	db	$79
;		'u',
	db	$75
;		'i',
	db	$69
;		'o',
	db	$6F
;		'p',
	db	$70
;		'[',
	db	$5B
;		']',
	db	$5D
;		13,
	db	$D
;		0,//'left control'
	db	$0
;		'a',
	db	$61
;		's',
	db	$73
;		'd',
	db	$64
;		'f',
	db	$66
;		'g',
	db	$67
;		'h',
	db	$68
;		'j',
	db	$6A
;		'k',
	db	$6B
;		'l',
	db	$6C
;		';',
	db	$3B
;		'\'',
	db	$27
;		'`',
	db	$60
;		0,//'left shift',
	db	$0
;		'\\',
	db	$5C
;		'z',
	db	$7A
;		'x',
	db	$78
;		'c',
	db	$63
;		'v',
	db	$76
;		'b',
	db	$62
;		'n',
	db	$6E
;		'm',
	db	$6D
;		',',
	db	$2C
;		'.',
	db	$2E
;		'/',
	db	$2F
;		0,//'right shift',
	db	$0
;		'*',
	db	$2A
;		0,//'left alt',
	db	$0
;		32,
	db	$20
;		0,//'capslock',
	db	$0
;		0,//'f1',
	db	$0
;		0,//'f2',
	db	$0
;		0,//'f3',
	db	$0
;		0,//'f4',
	db	$0
;		0,//'f5',
	db	$0
;		0,//'f6',
	db	$0
;		0,//'f7',
	db	$0
;		0,//'f8',
	db	$0
;		0,//'f9',
	db	$0
;		0,//'f10',
	db	$0
;		0,//'numberlock',
	db	$0
;		0,//'scrolllock',
	db	$0
;		'7',
	db	$37
;		'8',
	db	$38
;		'9',
	db	$39
;		'-',
	db	$2D
;		'4',
	db	$34
;		'5',
	db	$35
;		'6',
	db	$36
;		'+',
	db	$2B
;		'1',
	db	$31
;		'2',
	db	$32
;		'3',
	db	$33
;		'0',
	db	$30
;		'.',
	db	$2E
;		 0,
	db	$0
;		 0,
	db	$0
;		 0,
	db	$0
;		 0,//'f11',
	db	$0
;		 0//'f12'
;};
	db	$0
	ends
;
;KEYCODE _k_keyCodesShiftSet[] =
	data
	xdef	~~_k_keyCodesShiftSet
~~_k_keyCodesShiftSet:
;{
;		0,
	db	$0
;		27,
	db	$1B
;		'!',
	db	$21
;		'@',
	db	$40
;		'#',
	db	$23
;		'$',
	db	$24
;		'%',
	db	$25
;		'^',
	db	$5E
;		'&',
	db	$26
;		'*',
	db	$2A
;		'(',
	db	$28
;		')',
	db	$29
;		'_',
	db	$5F
;		'+',
	db	$2B
;		 8,
	db	$8
;		 9,
	db	$9
;		'Q',
	db	$51
;		'W',
	db	$57
;		'E',
	db	$45
;		'R',
	db	$52
;		'T',
	db	$54
;		'Y',
	db	$59
;		'U',
	db	$55
;		'I',
	db	$49
;		'O',
	db	$4F
;		'P',
	db	$50
;		'{',
	db	$7B
;		'}',
	db	$7D
;		13,
	db	$D
;		0,//'left control'
	db	$0
;		'A',
	db	$41
;		'S',
	db	$53
;		'D',
	db	$44
;		'F',
	db	$46
;		'G',
	db	$47
;		'H',
	db	$48
;		'J',
	db	$4A
;		'K',
	db	$4B
;		'L',
	db	$4C
;		':',
	db	$3A
;		'"',
	db	$22
;		'~',
	db	$7E
;		0,//'left shift',
	db	$0
;		'|',
	db	$7C
;		'Z',
	db	$5A
;		'X',
	db	$58
;		'C',
	db	$43
;		'V',
	db	$56
;		'B',
	db	$42
;		'N',
	db	$4E
;		'M',
	db	$4D
;		'<',
	db	$3C
;		'>',
	db	$3E
;		'?',
	db	$3F
;		0,//'right shift',
	db	$0
;		'*',
	db	$2A
;		0,//'left alt',
	db	$0
;		32,
	db	$20
;		0,//'CapsLock',
	db	$0
;		0,//'F1',
	db	$0
;		0,//'F2',
	db	$0
;		0,//'F3',
	db	$0
;		0,//'F4',
	db	$0
;		0,//'F5',
	db	$0
;		0,//'F6',
	db	$0
;		0,//'F7',
	db	$0
;		0,//'F8',
	db	$0
;		0,//'F9',
	db	$0
;		0,//'F10',
	db	$0
;		0,//'NumberLock',
	db	$0
;		0,//'ScrollLock',
	db	$0
;		'7',
	db	$37
;		'8',
	db	$38
;		'9',
	db	$39
;		'-',
	db	$2D
;		'4',
	db	$34
;		'5',
	db	$35
;		'6',
	db	$36
;		'+',
	db	$2B
;		'1',
	db	$31
;		'2',
	db	$32
;		'3',
	db	$33
;		'0',
	db	$30
;		'.',
	db	$2E
;		 0,
	db	$0
;		 0,
	db	$0
;		 0,
	db	$0
;		 0,//'F11',
	db	$0
;		 0//'F12'
;};
	db	$0
	ends
;
;KEYCODE _k_keyCodesExtSet[] =
	data
	xdef	~~_k_keyCodesExtSet
~~_k_keyCodesExtSet:
;{
;		0
;};
	db	$0
	ends
;
;
;ULONG k_get_systemtimer(void)
;{
	.line	244
	.line	245
	EVTMAN
	xdef	~~k_get_systemtimer
	func
	.function	245
~~k_get_systemtimer:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L2
	tcs
	phd
	tcd
	.block	245
;	return _system_timer++;
	.line	246
	lda	|~~_system_timer
	sta	<R0
	lda	|~~_system_timer+2
	sta	<R0+2
	inc	|~~_system_timer
	bne	L5
	inc	|~~_system_timer+2
L5:
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
	.line	247
	.endblock	247
L2	equ	4
L3	equ	5
	ends
	efunc
	.endfunc	247,5,4
	.line	247
;
;VOID k_initalize_event_manager(void)
;{
	.line	249
	.line	250
	EVTMAN
	xdef	~~k_initalize_event_manager
	func
	.function	250
~~k_initalize_event_manager:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L7
	tcs
	phd
	tcd
	.block	250
;	memset(&_k_mouseState,0,sizeof(MOUSE_MSG_STATE));
	.line	251
	pea	#<$17
	pea	#<$0
	lda	#<~~_k_mouseState
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~memset
;
;	_k_eventQueue = k_mem_allocate_heap(sizeof(FXQUEUE));
	.line	253
	pea	#<$a
	jsl	~~k_mem_allocate_heap
	sta	|~~_k_eventQueue
	stx	|~~_k_eventQueue+2
;	if(_k_eventQueue!=NULL)
	.line	254
;	{
	lda	|~~_k_eventQueue
	ora	|~~_k_eventQueue+2
	bne	L10
	brl	L10001
L10:
	.line	255
;		k_initialize(_k_eventQueue);
	.line	256
	lda	|~~_k_eventQueue+2
	pha
	lda	|~~_k_eventQueue
	pha
	jsl	~~k_initialize
;	}
	.line	257
;}
L10001:
	.line	258
L11:
	pld
	tsc
	clc
	adc	#L7
	tcs
	rtl
	.endblock	258
L7	equ	4
L8	equ	5
	ends
	efunc
	.endfunc	258,5,4
	.line	258
;
;void k_signal_sol_event(long FAR *pktick)
;{
	.line	260
	.line	261
	EVTMAN
	xdef	~~k_signal_sol_event
	func
	.function	261
~~k_signal_sol_event:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L12
	tcs
	phd
	tcd
pktick_0	set	4
	.block	261
;	return;
	.sym	pktick,4,135,6,32
	.line	262
L15:
	lda	<L12+2
	sta	<L12+2+4
	lda	<L12+1
	sta	<L12+1+4
	pld
	tsc
	clc
	adc	#L12+4
	tcs
	rtl
;}
	.line	263
	.endblock	263
L12	equ	0
L13	equ	1
	ends
	efunc
	.endfunc	263,1,0
	.line	263
;
;BOOL k_event_lock_focus(HWND hWnd)
;{
	.line	265
	.line	266
	EVTMAN
	xdef	~~k_event_lock_focus
	func
	.function	266
~~k_event_lock_focus:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L16
	tcs
	phd
	tcd
hWnd_0	set	4
	.block	266
;	return k_event_lock_focus_ex(hWnd,FALSE);
	.sym	hWnd,4,129,6,32
	.line	267
	pea	#<$0
	pei	<L16+hWnd_0+2
	pei	<L16+hWnd_0
	jsl	~~k_event_lock_focus_ex
	sep	#$20
	longa	off
	sta	<R0
	rep	#$20
	longa	on
	lda	<R0
	and	#$ff
L19:
	tay
	lda	<L16+2
	sta	<L16+2+4
	lda	<L16+1
	sta	<L16+1+4
	pld
	tsc
	clc
	adc	#L16+4
	tcs
	tya
	rtl
;}
	.line	268
	.endblock	268
L16	equ	4
L17	equ	5
	ends
	efunc
	.endfunc	268,5,4
	.line	268
;
;BOOL k_event_lock_focus_ex(HWND hWnd,BOOL asNonclient)
;{
	.line	270
	.line	271
	EVTMAN
	xdef	~~k_event_lock_focus_ex
	func
	.function	271
~~k_event_lock_focus_ex:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L20
	tcs
	phd
	tcd
hWnd_0	set	4
asNonclient_0	set	8
	.block	271
;	BOOL bRet = FALSE;
;
;	if(_k_hLockedFocus == NULL)
bRet_1	set	0
	.sym	bRet,0,14,1,8
	.sym	hWnd,4,129,6,32
	.sym	asNonclient,8,14,6,8
	sep	#$20
	longa	off
	stz	<L21+bRet_1
	rep	#$20
	longa	on
	.line	274
;	{
	lda	|~~_k_hLockedFocus
	ora	|~~_k_hLockedFocus+2
	beq	L23
	brl	L10002
L23:
	.line	275
;		_k_hLockedFocus = hWnd;
	.line	276
	lda	<L20+hWnd_0
	sta	|~~_k_hLockedFocus
	lda	<L20+hWnd_0+2
	sta	|~~_k_hLockedFocus+2
;		bRet = TRUE;
	.line	277
	sep	#$20
	longa	off
	lda	#$1
	sta	<L21+bRet_1
	rep	#$20
	longa	on
;		_k_bNCLockedFocus = asNonclient;
	.line	278
	sep	#$20
	longa	off
	lda	<L20+asNonclient_0
	sta	|~~_k_bNCLockedFocus
	rep	#$20
	longa	on
;	}
	.line	279
;
;	return bRet;
L10002:
	.line	281
	lda	<L21+bRet_1
	and	#$ff
L24:
	tay
	lda	<L20+2
	sta	<L20+2+6
	lda	<L20+1
	sta	<L20+1+6
	pld
	tsc
	clc
	adc	#L20+6
	tcs
	tya
	rtl
;}
	.line	282
	.endblock	282
L20	equ	1
L21	equ	1
	ends
	efunc
	.endfunc	282,1,1
	.line	282
;
;HWND k_event_get_locked_focus(void)
;{
	.line	284
	.line	285
	EVTMAN
	xdef	~~k_event_get_locked_focus
	func
	.function	285
~~k_event_get_locked_focus:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L25
	tcs
	phd
	tcd
	.block	285
;	return _k_hLockedFocus;
	.line	286
	ldx	|~~_k_hLockedFocus+2
	lda	|~~_k_hLockedFocus
L28:
	tay
	pld
	tsc
	clc
	adc	#L25
	tcs
	tya
	rtl
;}
	.line	287
	.endblock	287
L25	equ	0
L26	equ	1
	ends
	efunc
	.endfunc	287,1,0
	.line	287
;
;HWND k_event_unlock_focus(void)
;{
	.line	289
	.line	290
	EVTMAN
	xdef	~~k_event_unlock_focus
	func
	.function	290
~~k_event_unlock_focus:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L29
	tcs
	phd
	tcd
	.block	290
;	HWND unlocked = NULL;
;
;	if(_k_hLockedFocus != NULL)
unlocked_1	set	0
	.sym	unlocked,0,129,1,32
	stz	<L30+unlocked_1
	stz	<L30+unlocked_1+2
	.line	293
;	{
	lda	|~~_k_hLockedFocus
	ora	|~~_k_hLockedFocus+2
	bne	L32
	brl	L10003
L32:
	.line	294
;		unlocked = _k_hLockedFocus;
	.line	295
	lda	|~~_k_hLockedFocus
	sta	<L30+unlocked_1
	lda	|~~_k_hLockedFocus+2
	sta	<L30+unlocked_1+2
;		k_debug_pointer("k_event_unlock_focus:pmsg->hwnd:", unlocked);
	.line	296
	pei	<L30+unlocked_1+2
	pei	<L30+unlocked_1
	pea	#^L1
	pea	#<L1
	jsl	~~k_debug_pointer
;		_k_hLockedFocus = NULL;
	.line	297
	stz	|~~_k_hLockedFocus
	stz	|~~_k_hLockedFocus+2
;		_k_bNCLockedFocus = FALSE;
	.line	298
	sep	#$20
	longa	off
	stz	|~~_k_bNCLockedFocus
	rep	#$20
	longa	on
;	}
	.line	299
;
;	return unlocked;
L10003:
	.line	301
	ldx	<L30+unlocked_1+2
	lda	<L30+unlocked_1
L33:
	tay
	pld
	tsc
	clc
	adc	#L29
	tcs
	tya
	rtl
;}
	.line	302
	.endblock	302
L29	equ	4
L30	equ	1
	ends
	efunc
	.endfunc	302,1,4
	.line	302
	data
L1:
	db	$6B,$5F,$65,$76,$65,$6E,$74,$5F,$75,$6E,$6C,$6F,$63,$6B,$5F
	db	$66,$6F,$63,$75,$73,$3A,$70,$6D,$73,$67,$2D,$3E,$68,$77,$6E
	db	$64,$3A,$00
	ends
;
;
;#ifdef FXOS_WITH_LOCK
;
;void k_event_loop(void)
;{
;	PFXOSMESSAGE pmsg = NULL;
;	PFXOSMESSAGE processMessage = NULL;
;
;	PFXPROCESS 	 pprocess = NULL;
;	PFXNODE 	 hitNodeParent = NULL;
;	PFXNODE 	 hitNode = NULL;
;	PFXNODE 	 hitChildNode = NULL;
;	PWINDOW 	 pWin = NULL;
;
;	HWND		 hWndFocus = NULL;
;
;	DISKINFO diskInfo;
;	BOOL volAvail = FALSE;
;
;	BOOL floppy = FALSE;
;	INT floppyLBA = 0;
;	INT	x = 0;
;	INT y = 0;
;
;	/*
;	int c = 0;
;	int cb = 0;
;	int mb = 0;
;	int mx = 0;
;	int my = 0;
;	int kb = 0;
;	*/
;
;	k_debug_string("k_initalize_executive\r\n");
;	k_initalize_executive();
;	k_heap_integrity_check();
;	k_debug_string("k_initalize_event_manager\r\n");
;	k_initalize_event_manager();
;	k_heap_integrity_check();
;	k_debug_string("k_initalize_window_manager before\r\n");
;	k_initializeWindowManager();
;	k_debug_string("k_initalize_window_manager after\r\n");
;	k_heap_integrity_check();
;
;	if(_k_eventQueue!=NULL)
;	{
;		processMessage = k_create_process_msg(NULL);
;		k_heap_integrity_check();
;
;#ifdef USE_FX256_FMX
;
;		/*
;		pprocess = k_exec_launchProcess("@/console");
;		if(pprocess!=NULL)
;		{
;			//k_attach_process_events((FXEventProc)pprocess->execProc-data,pprocess);
;			k_attach_process_events(pprocess->execProc,pprocess);
;			k_exec_set_process_foreground(pprocess,FALSE);
;		}
;		*/
;
;		pprocess = k_exec_launchProcess("@/desktop");
;		if(pprocess!=NULL)
;		{
;			//k_attach_process_events((FXEventProc)pprocess->execProc-data,pprocess);
;			k_attach_process_events(pprocess->execProc,pprocess);
;			k_exec_set_process_foreground(pprocess,TRUE);
;			k_heap_integrity_check();
;		}
;
;#else
;		pprocess = k_exec_launchProcess("@/console");
;		if(pprocess!=NULL)
;		{
;			//k_attach_process_events((FXEventProc)pprocess->execProc-data,pprocess);
;			k_attach_process_events(pprocess->execProc,pprocess);
;			k_exec_set_process_foreground(pprocess,TRUE);
;		}
;
;#endif
;
;		pprocess = k_exec_launchProcess("@/idle");
;		if(pprocess!=NULL)
;		{
;
;			//k_attach_process_events((FXEventProc)pprocess->execProc-data,pprocess);
;			k_attach_process_events(pprocess->execProc,pprocess);
;			k_exec_set_process_foreground(pprocess,FALSE);
;		}
;
;
;
;		while(1)
;		{
;			//asm sei;
;
;			pmsg = (PFXOSMESSAGE)k_dequeue_with_lock(_k_eventQueue);
;			while(pmsg!=NULL)
;			{
;				_k_system_timer = pmsg->msgTime;
;
;				if(FX_MENU_COMMAND == pmsg->type)
;					k_debug_pointer("k_event_loop event::FX_MENU_COMMAND:", pmsg->hwnd);
;
;				if(pmsg->type == FX_PROCESS_FLOPPY)
;				{
;					k_debug_string("k_event_loop data:FX_PROCESS_FLOPPY\r\n");
;
;					//k_debug_byte_array("k_event_loop data:FX_PROCESS_FLOPPY:", pmsg->pheap,512);
;				}
;				if(pmsg->type == FX_PROCESS_SDCARD)
;				{
;					k_debug_string("k_event_loop data:FX_PROCESS_SDCARD\r\n");
;
;					//k_debug_byte_array("k_event_loop data:FX_PROCESS_FLOPPY:", pmsg->pheap,512);
;				}
;
;				if((pmsg->type >= FX_MOUSE_MOVE) &&  (pmsg->type <= FX_MBUTTON_DBLCLICK))
;				{
;					//k_debug_pointer("k_event_loop MOUSE hwnd:", pmsg->hwnd);
;					//k_debug_integer("k_event_loop MOUSE event:", pmsg->type);
;
;					x = MAKEWORD(pmsg->data[1],pmsg->data[2]);
;					y = MAKEWORD(pmsg->data[3],pmsg->data[4]);
;
;
;					hitNode = k_point_hit_scan(x,y);
;					if(hitNode)
;					{
;						//k_debug_strings("SCAN-HIT PARENT:",HITTOWND(hitNode)->win_title);
;						if(HITTOWND(hitNode)->pChildHitList)
;						{
;							hitChildNode = k_point_in_any_nodeslist(HITTOWND(hitNode)->pChildHitList,x,y);
;							if(hitChildNode)
;							{
;								//k_debug_strings("SCAN-HIT CHILD:",HITTOWND(hitChildNode)->win_title);
;								hitNode = hitChildNode;
;							}
;						}
;
;						//k_debug_strings("SCAN-HIT:",HITTOWND(hitNode)->win_title);
;						if(hitNode)
;						{
;							pWin = HITTOWND(hitNode);
;							if(pWin)
;							{
;								((PCLICKDETECTED)hitNode->data)->handler(pWin);
;								pmsg->hwnd = k_getHandleFromWindow(pWin);
;
;								if((pmsg->type == FX_LBUTTON_DOWN) || (pmsg->type == FX_MBUTTON_DOWN) || (pmsg->type == FX_RBUTTON_DOWN))
;								{
;									if(pmsg->hwnd!=hWndFocus)
;									{
;										k_debug_pointer("*** k_event_loop::FX_FOCUS_WINDOW:",pmsg->hwnd);
;										k_enqueue_with_lock(_k_eventQueue,k_create_synthetic_window_msg(pmsg->hwnd,FX_FOCUS_WINDOW,&hWndFocus,sizeof(hWndFocus)));
;										hWndFocus =  pmsg->hwnd;
;									}
;								}
;
;								if(pmsg->type < 0xF000 &&  k_isNonClient(pWin,pmsg,x,y))
;								{
;									pmsg->type = (UINT)(pmsg->type | 0x008000);
;								}
;							}
;						}
;
;					}
;
;
;					if(!pmsg->hwnd)
;					{
;						if(k_user_getDesktopWindow())
;						{
;							pmsg->hwnd = k_user_getDesktopWindow();
;						}
;					}
;
;				}
;
;				//k_debug_pointer("k_event_loop hWndFocus pmsg->hwnd:", pmsg->hwnd);
;				if(hWndFocus && ((pmsg->type == FX_KEY_DOWN) || (pmsg->type == FX_KEY_UP)))
;				{
;					k_debug_string("*** k_event_loop::FX_KEY_*\r\n");
;					pmsg->hwnd = hWndFocus;
;				}
;
;				k_do_processes(pmsg);
;
;				k_destory_msg(pmsg);
;
;				pmsg = (PFXOSMESSAGE)k_dequeue_with_lock(_k_eventQueue);
;
;			}
;
;			k_do_processes(processMessage);
;
;			//asm cli;
;
;		}
;
;		if(processMessage)
;			k_mem_deallocate_heap(processMessage);
;	}
;	else
;	{
;		k_debug_string("Exception:fxeventmanager not initialized");
;		THROW_EXCEPTION(0xA000,0x0001,"");
;	}
;
;
;}
;
;#else
;
;void k_event_loop(void)
;{
	.line	518
	.line	519
	EVTMAN
	xdef	~~k_event_loop
	func
	.function	519
~~k_event_loop:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L35
	tcs
	phd
	tcd
	.block	519
;	PFXOSMESSAGE pmsg = NULL;
;	PFXOSMESSAGE processMessage = NULL;
;
;	PFXPROCESS 	 pprocess = NULL;
;	PFXNODE 	 hitNodeParent = NULL;
;	PFXNODE 	 hitNode = NULL;
;	PFXNODE 	 hitChildNode = NULL;
;	PWINDOW 	 pWin = NULL;
;
;	HWND		 hWndFocus = NULL;
;
;	DISKINFO diskInfo;
;	BOOL volAvail = FALSE;
;
;	BOOL floppy = FALSE;
;	INT floppyLBA = 0;
;	INT	x = 0;
;	INT y = 0;
;
;	/*
;	int c = 0;
;	int cb = 0;
;	int mb = 0;
;	int mx = 0;
;	int my = 0;
;	int kb = 0;
;	*/
;
;	k_debug_string("k_initalize_executive\r\n");
pmsg_1	set	0
processMessage_1	set	4
pprocess_1	set	8
hitNodeParent_1	set	12
hitNode_1	set	16
hitChildNode_1	set	20
pWin_1	set	24
hWndFocus_1	set	28
diskInfo_1	set	32
volAvail_1	set	84
floppy_1	set	85
floppyLBA_1	set	86
x_1	set	88
y_1	set	90
	.sym	pmsg,0,138,1,32,16
	.sym	processMessage,4,138,1,32,16
	.sym	pprocess,8,138,1,32,20
	.sym	hitNodeParent,12,138,1,32,5
	.sym	hitNode,16,138,1,32,5
	.sym	hitChildNode,20,138,1,32,5
	.sym	pWin,24,138,1,32,30
	.sym	hWndFocus,28,129,1,32
	.sym	diskInfo,32,10,1,416,65
	.sym	volAvail,84,14,1,8
	.sym	floppy,85,14,1,8
	.sym	floppyLBA,86,5,1,16
	.sym	x,88,5,1,16
	.sym	y,90,5,1,16
	stz	<L36+pmsg_1
	stz	<L36+pmsg_1+2
	stz	<L36+processMessage_1
	stz	<L36+processMessage_1+2
	stz	<L36+pprocess_1
	stz	<L36+pprocess_1+2
	stz	<L36+hitNodeParent_1
	stz	<L36+hitNodeParent_1+2
	stz	<L36+hitNode_1
	stz	<L36+hitNode_1+2
	stz	<L36+hitChildNode_1
	stz	<L36+hitChildNode_1+2
	stz	<L36+pWin_1
	stz	<L36+pWin_1+2
	stz	<L36+hWndFocus_1
	stz	<L36+hWndFocus_1+2
	sep	#$20
	longa	off
	stz	<L36+volAvail_1
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	stz	<L36+floppy_1
	rep	#$20
	longa	on
	stz	<L36+floppyLBA_1
	stz	<L36+x_1
	stz	<L36+y_1
	.line	548
	pea	#^L34
	pea	#<L34
	jsl	~~k_debug_string
;	k_initalize_executive();
	.line	549
	jsl	~~k_initalize_executive
;	k_heap_integrity_check();
	.line	550
	jsl	~~k_heap_integrity_check
;	k_debug_string("k_initalize_event_manager\r\n");
	.line	551
	pea	#^L34+24
	pea	#<L34+24
	jsl	~~k_debug_string
;	k_initalize_event_manager();
	.line	552
	jsl	~~k_initalize_event_manager
;	k_heap_integrity_check();
	.line	553
	jsl	~~k_heap_integrity_check
;	k_debug_string("k_initalize_window_manager before\r\n");
	.line	554
	pea	#^L34+52
	pea	#<L34+52
	jsl	~~k_debug_string
;	k_initializeWindowManager();
	.line	555
	jsl	~~k_initializeWindowManager
;	k_debug_string("k_initalize_window_manager after\r\n");
	.line	556
	pea	#^L34+88
	pea	#<L34+88
	jsl	~~k_debug_string
;	k_heap_integrity_check();
	.line	557
	jsl	~~k_heap_integrity_check
;
;	/*
;	//////
;	// TEST
;	/////
;
;	asm cli;
;
;	floppy_init();
;
;	//asm sei;
;
;	while(TRUE);
;	///////
;	*/
;
;	//asm cli;
;
;	//k_debug_string("cli after\r\n");
;
;	if(_k_eventQueue!=NULL)
	.line	578
;	{
	lda	|~~_k_eventQueue
	ora	|~~_k_eventQueue+2
	bne	L38
	brl	L10004
L38:
	.line	579
;		processMessage = k_create_process_msg(NULL);
	.line	580
	pea	#^$0
	pea	#<$0
	jsl	~~k_create_process_msg
	sta	<L36+processMessage_1
	stx	<L36+processMessage_1+2
;		k_heap_integrity_check();
	.line	581
	jsl	~~k_heap_integrity_check
;		//eventProcs[IDLE_PROC] = IdleProc;
;		//k_attach_process_events(IdleProc,NULL);
;
;		/*
;		pprocess = k_exec_launchProcess("@/idle");
;		if(pprocess!=NULL)
;		{
;			//k_attach_process_events((FXEventProc)pprocess->execProc-data,pprocess);
;			k_attach_process_events(pprocess->execProc,pprocess);
;			k_exec_set_process_foreground(pprocess,FALSE);
;		}
;		*/
;		//k_debug_string("check1\r\n");
;		//k_heap_integrity_check();
;
;		//pprocess =  k_exec_createProcess("console",DefConsoleProc);
;
;		//k_debug_string("check2\r\n");
;		//k_heap_integrity_check();
;		//pprocess =  k_exec_createProcess("desktop",DesktopEnvironmentProc);
;
;#ifdef USE_FX256_FMX
;
;
;		/*
;		pprocess = k_exec_launchProcess("@/console");
;		if(pprocess!=NULL)
;		{
;			//k_attach_process_events((FXEventProc)pprocess->execProc-data,pprocess);
;			k_attach_process_events(pprocess->execProc,pprocess);
;			k_exec_set_process_foreground(pprocess,FALSE);
;		}
;		*/
;
;
;		pprocess = k_exec_launchProcess("@/desktop");
	.line	617
	pea	#^L34+123
	pea	#<L34+123
	jsl	~~k_exec_launchProcess
	sta	<L36+pprocess_1
	stx	<L36+pprocess_1+2
;		if(pprocess!=NULL)
	.line	618
;		{
	lda	<L36+pprocess_1
	ora	<L36+pprocess_1+2
	bne	L39
	brl	L10005
L39:
	.line	619
;			//k_attach_process_events((FXEventProc)pprocess->execProc-data,pprocess);
;			k_attach_process_events(pprocess->execProc,pprocess);
	.line	621
	pei	<L36+pprocess_1+2
	pei	<L36+pprocess_1
	ldy	#$5e
	lda	[<L36+pprocess_1],Y
	pha
	ldy	#$5c
	lda	[<L36+pprocess_1],Y
	pha
	jsl	~~k_attach_process_events
;			k_exec_set_process_foreground(pprocess,TRUE);
	.line	622
	pea	#<$1
	pei	<L36+pprocess_1+2
	pei	<L36+pprocess_1
	jsl	~~k_exec_set_process_foreground
;			k_heap_integrity_check();
	.line	623
	jsl	~~k_heap_integrity_check
;		}
	.line	624
;
;#else
;		pprocess = k_exec_launchProcess("@/console");
;		if(pprocess!=NULL)
;		{
;			//k_attach_process_events((FXEventProc)pprocess->execProc-data,pprocess);
;			k_attach_process_events(pprocess->execProc,pprocess);
;			k_exec_set_process_foreground(pprocess,TRUE);
;		}
;
;#endif
;
;		pprocess = k_exec_launchProcess("@/idle");
L10005:
	.line	637
	pea	#^L34+133
	pea	#<L34+133
	jsl	~~k_exec_launchProcess
	sta	<L36+pprocess_1
	stx	<L36+pprocess_1+2
;		if(pprocess!=NULL)
	.line	638
;		{
	lda	<L36+pprocess_1
	ora	<L36+pprocess_1+2
	bne	L40
	brl	L10006
L40:
	.line	639
;
;			//k_attach_process_events((FXEventProc)pprocess->execProc-data,pprocess);
;			k_attach_process_events(pprocess->execProc,pprocess);
	.line	642
	pei	<L36+pprocess_1+2
	pei	<L36+pprocess_1
	ldy	#$5e
	lda	[<L36+pprocess_1],Y
	pha
	ldy	#$5c
	lda	[<L36+pprocess_1],Y
	pha
	jsl	~~k_attach_process_events
;			k_exec_set_process_foreground(pprocess,FALSE);
	.line	643
	pea	#<$0
	pei	<L36+pprocess_1+2
	pei	<L36+pprocess_1
	jsl	~~k_exec_set_process_foreground
;		}
	.line	644
;
;
;		//k_debug_string("check3\r\n");
;		//k_heap_integrity_check();
;
;
;		/*
;		pprocess =  k_exec_createProcess("console",DefConsoleProc2);
;		if(pprocess!=NULL)
;		{
;			//k_attach_events((FXEventProc)pprocess->execProc->data,pprocess);
;			k_attach_process_events((FXEventProc)pprocess->execProc->data,pprocess);
;		}
;		 */
;
;		while(1)
L10006:
	.line	660
L10007:
;		{
	.line	661
;			asm sei;
	.line	662
	asmstart
	sei
	asmend
;
;			//asm sei;
;			pmsg = (PFXOSMESSAGE)k_dequeue(_k_eventQueue);
	.line	665
	lda	|~~_k_eventQueue+2
	pha
	lda	|~~_k_eventQueue
	pha
	jsl	~~k_dequeue
	sta	<L36+pmsg_1
	stx	<L36+pmsg_1+2
;			//asm cli;
;
;			while(pmsg!=NULL)
	.line	668
L10009:
	lda	<L36+pmsg_1
	ora	<L36+pmsg_1+2
	bne	L41
	brl	L10010
L41:
;			{
	.line	669
;
;				/*
;				if(_k_hLockedFocus && (pmsg->hwnd != _k_hLockedFocus))
;				{
;					pmsg->hwnd = _k_hLockedFocus;
;					k_debug_integer("k_event_loop _k_hLockedFocus LOCKED pmsg->type:", pmsg->type);
;					k_debug_pointer("k_event_loop _k_hLockedFocus LOCKED pmsg->hwnd:", pmsg->hwnd);
;				}
;				*/
;
;				_k_system_timer = pmsg->msgTime;
	.line	680
	ldy	#$12
	lda	[<L36+pmsg_1],Y
	sta	|~~_k_system_timer
	ldy	#$14
	lda	[<L36+pmsg_1],Y
	sta	|~~_k_system_timer+2
;				//k_debug_integer("k_event_loop event:", pmsg->type);
;				//k_debug_byte_array("k_event_loop data:", pmsg->data,3);
;				//k_debug_char("k_event_loop char:", pmsg->data[2]);
;
;				//k_debug_string("check3\r\n");
;				//k_heap_integrity_check();
;				if(FX_MENU_COMMAND == pmsg->type)
	.line	687
;					k_debug_pointer("k_event_loop event::FX_MENU_COMMAND:", pmsg->hwnd);
	ldy	#$8
	lda	[<L36+pmsg_1],Y
	cmp	#<$fa01
	beq	L42
	brl	L10011
L42:
	.line	688
	ldy	#$c
	lda	[<L36+pmsg_1],Y
	pha
	ldy	#$a
	lda	[<L36+pmsg_1],Y
	pha
	pea	#^L34+140
	pea	#<L34+140
	jsl	~~k_debug_pointer
;
;				if(pmsg->type == FX_PROCESS_FLOPPY)
L10011:
	.line	690
;				{
	ldy	#$8
	lda	[<L36+pmsg_1],Y
	cmp	#<$fff2
	beq	L43
	brl	L10012
L43:
	.line	691
;					k_debug_string("k_event_loop data:FX_PROCESS_FLOPPY\r\n");
	.line	692
	pea	#^L34+177
	pea	#<L34+177
	jsl	~~k_debug_string
;
;					//k_debug_byte_array("k_event_loop data:FX_PROCESS_FLOPPY:", pmsg->pheap,512);
;				}
	.line	695
;				if(pmsg->type == FX_PROCESS_SDCARD)
L10012:
	.line	696
;				{
	ldy	#$8
	lda	[<L36+pmsg_1],Y
	cmp	#<$fff3
	beq	L44
	brl	L10013
L44:
	.line	697
;					k_debug_string("k_event_loop data:FX_PROCESS_SDCARD\r\n");
	.line	698
	pea	#^L34+215
	pea	#<L34+215
	jsl	~~k_debug_string
;
;					//k_debug_byte_array("k_event_loop data:FX_PROCESS_FLOPPY:", pmsg->pheap,512);
;				}
	.line	701
;
;				if((pmsg->type >= FX_MOUSE_MOVE) &&  (pmsg->type <= FX_MBUTTON_DBLCLICK))
L10013:
	.line	703
;				{
	ldy	#$8
	lda	[<L36+pmsg_1],Y
	cmp	#<$f03
	bcs	L45
	brl	L10014
L45:
	lda	#$f0f
	ldy	#$8
	cmp	[<L36+pmsg_1],Y
	bcs	L46
	brl	L10014
L46:
	.line	704
;					//k_debug_pointer("k_event_loop MOUSE hwnd:", pmsg->hwnd);
;					//k_debug_integer("k_event_loop MOUSE event:", pmsg->type);
;
;					x = MAKEWORD(pmsg->data[1],pmsg->data[2]);
	.line	708
	ldy	#$18
	lda	[<L36+pmsg_1],Y
	and	#$ff
	sta	<R1
	lda	<R1
	xba
	and	#$ff00
	sta	<R0
	ldy	#$17
	lda	[<L36+pmsg_1],Y
	and	#$ff
	sta	<R1
	lda	<R1
	ora	<R0
	sta	<L36+x_1
;					y = MAKEWORD(pmsg->data[3],pmsg->data[4]);
	.line	709
	ldy	#$1a
	lda	[<L36+pmsg_1],Y
	and	#$ff
	sta	<R1
	lda	<R1
	xba
	and	#$ff00
	sta	<R0
	ldy	#$19
	lda	[<L36+pmsg_1],Y
	and	#$ff
	sta	<R1
	lda	<R1
	ora	<R0
	sta	<L36+y_1
;
;
;					hitNode = k_point_hit_scan(x,y);
	.line	712
	pei	<L36+y_1
	pei	<L36+x_1
	jsl	~~k_point_hit_scan
	sta	<L36+hitNode_1
	stx	<L36+hitNode_1+2
;					if(hitNode)
	.line	713
;					{
	lda	<L36+hitNode_1
	ora	<L36+hitNode_1+2
	bne	L47
	brl	L10015
L47:
	.line	714
;						//k_debug_strings("SCAN-HIT PARENT:",HITTOWND(hitNode)->win_title);
;						if(HITTOWND(hitNode)->pChildHitList)
	.line	716
;						{
	ldy	#$2
	lda	[<L36+hitNode_1],Y
	sta	<R0
	ldy	#$4
	lda	[<L36+hitNode_1],Y
	sta	<R0+2
	lda	[<R0]
	sta	<R1
	ldy	#$2
	lda	[<R0],Y
	sta	<R1+2
	ldy	#$13c
	lda	[<R1],Y
	ldy	#$13e
	ora	[<R1],Y
	bne	L48
	brl	L10016
L48:
	.line	717
;							hitChildNode = k_point_in_any_nodeslist(HITTOWND(hitNode)->pChildHitList,x,y);
	.line	718
	pei	<L36+y_1
	pei	<L36+x_1
	ldy	#$2
	lda	[<L36+hitNode_1],Y
	sta	<R0
	ldy	#$4
	lda	[<L36+hitNode_1],Y
	sta	<R0+2
	lda	[<R0]
	sta	<R1
	ldy	#$2
	lda	[<R0],Y
	sta	<R1+2
	ldy	#$13e
	lda	[<R1],Y
	pha
	ldy	#$13c
	lda	[<R1],Y
	pha
	jsl	~~k_point_in_any_nodeslist
	sta	<L36+hitChildNode_1
	stx	<L36+hitChildNode_1+2
;							if(hitChildNode)
	.line	719
;							{
	lda	<L36+hitChildNode_1
	ora	<L36+hitChildNode_1+2
	bne	L49
	brl	L10017
L49:
	.line	720
;								//k_debug_strings("SCAN-HIT CHILD:",HITTOWND(hitChildNode)->win_title);
;								hitNode = hitChildNode;
	.line	722
	lda	<L36+hitChildNode_1
	sta	<L36+hitNode_1
	lda	<L36+hitChildNode_1+2
	sta	<L36+hitNode_1+2
;							}
	.line	723
;						}
L10017:
	.line	724
;
;						//k_debug_strings("SCAN-HIT:",HITTOWND(hitNode)->win_title);
;						if(hitNode)
L10016:
	.line	727
;						{
	lda	<L36+hitNode_1
	ora	<L36+hitNode_1+2
	bne	L50
	brl	L10018
L50:
	.line	728
;							pWin = HITTOWND(hitNode);
	.line	729
	ldy	#$2
	lda	[<L36+hitNode_1],Y
	sta	<R0
	ldy	#$4
	lda	[<L36+hitNode_1],Y
	sta	<R0+2
	lda	[<R0]
	sta	<L36+pWin_1
	ldy	#$2
	lda	[<R0],Y
	sta	<L36+pWin_1+2
;							if(pWin)
	.line	730
;							{
	lda	<L36+pWin_1
	ora	<L36+pWin_1+2
	bne	L51
	brl	L10019
L51:
	.line	731
;								((PCLICKDETECTED)hitNode->data)->handler(pWin);
	.line	732
	pei	<L36+pWin_1+2
	pei	<L36+pWin_1
	ldy	#$2
	lda	[<L36+hitNode_1],Y
	sta	<R0
	ldy	#$4
	lda	[<L36+hitNode_1],Y
	sta	<R0+2
	ldy	#$6
	lda	[<R0],Y
	tax
	ldy	#$4
	lda	[<R0],Y
	xref	~~~lcal
	jsl	~~~lcal
;								pmsg->hwnd = k_getHandleFromWindow(pWin);
	.line	733
	pei	<L36+pWin_1+2
	pei	<L36+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$a
	sta	[<L36+pmsg_1],Y
	lda	<R0+2
	ldy	#$c
	sta	[<L36+pmsg_1],Y
;
;								if((pmsg->type == FX_LBUTTON_DOWN) || (pmsg->type == FX_MBUTTON_DOWN) || (pmsg->type == FX_RBUTTON_DOWN))
	.line	735
;								{
	ldy	#$8
	lda	[<L36+pmsg_1],Y
	cmp	#<$f04
	bne	L53
	brl	L52
L53:
	ldy	#$8
	lda	[<L36+pmsg_1],Y
	cmp	#<$f0c
	bne	L54
	brl	L52
L54:
	ldy	#$8
	lda	[<L36+pmsg_1],Y
	cmp	#<$f08
	beq	L55
	brl	L10020
L55:
L52:
	.line	736
;									if(pmsg->hwnd!=hWndFocus)
	.line	737
;									{
	ldy	#$a
	lda	[<L36+pmsg_1],Y
	cmp	<L36+hWndFocus_1
	bne	L56
	ldy	#$c
	lda	[<L36+pmsg_1],Y
	cmp	<L36+hWndFocus_1+2
L56:
	bne	L57
	brl	L10021
L57:
	.line	738
;										k_debug_pointer("*** k_event_loop::FX_FOCUS_WINDOW:",pmsg->hwnd);
	.line	739
	ldy	#$c
	lda	[<L36+pmsg_1],Y
	pha
	ldy	#$a
	lda	[<L36+pmsg_1],Y
	pha
	pea	#^L34+253
	pea	#<L34+253
	jsl	~~k_debug_pointer
;										k_enqueue(_k_eventQueue,k_create_synthetic_window_msg(pmsg->hwnd,FX_FOCUS_WINDOW,&hWndFocus,sizeof(hWndFocus)));
	.line	740
	pea	#<$4
	pea	#0
	clc
	tdc
	adc	#<L36+hWndFocus_1
	pha
	pea	#<$f13
	ldy	#$c
	lda	[<L36+pmsg_1],Y
	pha
	ldy	#$a
	lda	[<L36+pmsg_1],Y
	pha
	jsl	~~k_create_synthetic_window_msg
	sta	<R0
	stx	<R0+2
	phx
	pha
	lda	|~~_k_eventQueue+2
	pha
	lda	|~~_k_eventQueue
	pha
	jsl	~~k_enqueue
;										hWndFocus =  pmsg->hwnd;
	.line	741
	ldy	#$a
	lda	[<L36+pmsg_1],Y
	sta	<L36+hWndFocus_1
	ldy	#$c
	lda	[<L36+pmsg_1],Y
	sta	<L36+hWndFocus_1+2
;									}
	.line	742
;								}
L10021:
	.line	743
;
;								if(pmsg->type < 0xF000 &&  k_isNonClient(pWin,pmsg,x,y))
L10020:
	.line	745
;								{
	ldy	#$8
	lda	[<L36+pmsg_1],Y
	cmp	#<$f000
	bcc	L58
	brl	L10022
L58:
	pei	<L36+y_1
	pei	<L36+x_1
	pei	<L36+pmsg_1+2
	pei	<L36+pmsg_1
	pei	<L36+pWin_1+2
	pei	<L36+pWin_1
	jsl	~~k_isNonClient
	and	#$ff
	bne	L59
	brl	L10022
L59:
	.line	746
;									//k_debug_string("*** k_event_loop::NON-CLIENT MOUSE EVENT\r\n");
;
;									//k_debug_pointer("*** k_event_loop::NON-CLIENT MOUSE EVENT BEFORE:",(LPVOID)(LONG)pmsg->type);
;									pmsg->type = (UINT)(pmsg->type | 0x008000);
	.line	750
	ldy	#$8
	lda	[<L36+pmsg_1],Y
	ora	#<$8000
	ldy	#$8
	sta	[<L36+pmsg_1],Y
;									//k_debug_pointer("*** k_event_loop::NON-CLIENT MOUSE EVENT AFTER :",(LPVOID)(LONG)pmsg->type);
;								}
	.line	752
;							}
L10022:
	.line	753
;						}
L10019:
	.line	754
;
;					}
L10018:
	.line	756
;
;
;					//hitNode = k_point_in_any_nodeslist(((PCLICKDETECTED)k_point_hit_scan(x,y)->data)->window->pChildHitList,x,y);
;
;					/*
;					hitNode = k_point_in_nodeslist(x,y);
;					if(hitNode)
;					{
;						hitNodeParent = hitNode;
;						//k_debug_message("Found hit:",hitNode->name);
;
;						pWin = ((PCLICKDETECTED)hitNode->data)->window;
;						//if(pWin && pWin->isVisible)
;						if(pWin)
;						{
;							//k_debug_string("k_do_processes::Window\r\n");
;							//k_debug_pointer("k_do_processes::pWin->pChildWindows:",pWin->pChildWindows);
;							//if(pWin->pChildHitList)
;							if(pWin->pChildHitList)
;							{
;								// check if children were clicked
;								hitChildNode = k_point_in_any_nodeslist(pWin->pChildHitList,x,y);
;								if(hitChildNode)
;								{
;									// switch hit to child
;									//k_debug_strings("k_do_processes::child-hit:",hitChildNode->name);
;									hitNode = hitChildNode;
;									pWin = ((PCLICKDETECTED)hitChildNode->data)->window;
;								}
;							}
;
;							((PCLICKDETECTED)hitNode->data)->handler(pWin);
;							pmsg->hwnd = k_getHandleFromWindow(pWin);
;
;							if((pmsg->type == FX_LBUTTON_DOWN) || (pmsg->type == FX_MBUTTON_DOWN) || (pmsg->type == FX_RBUTTON_DOWN))
;							{
;								if(pmsg->hwnd!=hWndFocus)
;								{
;									k_debug_pointer("*** k_event_loop::FX_FOCUS_WINDOW:",pmsg->hwnd);
;									k_enqueue(_k_eventQueue,k_create_synthetic_window_msg(pmsg->hwnd,FX_FOCUS_WINDOW,&hWndFocus,sizeof(hWndFocus)));
;									hWndFocus =  pmsg->hwnd;
;								}
;							}
;
;//							if(k_isNonClient(pWin,pmsg,x,y))
;//							{
;//								k_debug_string("*** k_event_loop::NON-CLIENT MOUSE EVENT\r\n");
;//							}
;
;
;						}
;
;					}
;					*/
;
;					/*
;					if(_k_hLockedFocus && (pmsg->hwnd != _k_hLockedFocus))
;					{
;						pmsg->hwnd = _k_hLockedFocus;
;						k_debug_pointer("k_event_loop _k_hLockedFocus LOCKED pmsg->hwnd:", pmsg->hwnd);
;					}
;					*/
;					if(!pmsg->hwnd)
L10015:
	.line	819
;					{
	ldy	#$a
	lda	[<L36+pmsg_1],Y
	ldy	#$c
	ora	[<L36+pmsg_1],Y
	beq	L60
	brl	L10023
L60:
	.line	820
;						if(k_user_getDesktopWindow())
	.line	821
;						{
	jsl	~~k_user_getDesktopWindow
	sta	<R0
	stx	<R0+2
	lda	<R0
	ora	<R0+2
	bne	L61
	brl	L10024
L61:
	.line	822
;							pmsg->hwnd = k_user_getDesktopWindow();
	.line	823
	jsl	~~k_user_getDesktopWindow
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$a
	sta	[<L36+pmsg_1],Y
	lda	<R0+2
	ldy	#$c
	sta	[<L36+pmsg_1],Y
;						}
	.line	824
;					}
L10024:
	.line	825
;
;
;					/*
;					if(_k_hLockedFocus)
;					{
;						pmsg->hwnd = _k_hLockedFocus;
;						//k_debug_integer("k_event_loop _k_hLockedFocus LOCKED pmsg->type:", pmsg->type);
;						//k_debug_pointer("k_event_loop _k_hLockedFocus LOCKED pmsg->hwnd:", pmsg->hwnd);
;					}
;					*/
;				}
L10023:
	.line	836
;
;				//k_debug_pointer("k_event_loop hWndFocus pmsg->hwnd:", pmsg->hwnd);
;				if(hWndFocus && ((pmsg->type == FX_KEY_DOWN) || (pmsg->type == FX_KEY_UP)))
L10014:
	.line	839
;				{
	lda	<L36+hWndFocus_1
	ora	<L36+hWndFocus_1+2
	bne	L62
	brl	L10025
L62:
	ldy	#$8
	lda	[<L36+pmsg_1],Y
	cmp	#<$f10
	bne	L64
	brl	L63
L64:
	ldy	#$8
	lda	[<L36+pmsg_1],Y
	cmp	#<$f12
	beq	L65
	brl	L10025
L65:
L63:
	.line	840
;					k_debug_string("*** k_event_loop::FX_KEY_*\r\n");
	.line	841
	pea	#^L34+288
	pea	#<L34+288
	jsl	~~k_debug_string
;					pmsg->hwnd = hWndFocus;
	.line	842
	lda	<L36+hWndFocus_1
	ldy	#$a
	sta	[<L36+pmsg_1],Y
	lda	<L36+hWndFocus_1+2
	ldy	#$c
	sta	[<L36+pmsg_1],Y
;				}
	.line	843
;				k_do_processes(pmsg);
L10025:
	.line	844
	pei	<L36+pmsg_1+2
	pei	<L36+pmsg_1
	jsl	~~k_do_processes
;
;
;				/*
;				if(pmsg->hwnd)
;				{
;					//k_debug_pointer("k_do_processes:DoWndProcs:k_getWindowList:",k_getWindowList());
;					k_nodelist_foreach_data(k_getWindowList(),pmsg,DoWndProcs);
;				}
;				*/
;
;				//
;				k_destory_msg(pmsg);
	.line	856
	pei	<L36+pmsg_1+2
	pei	<L36+pmsg_1
	jsl	~~k_destory_msg
;
;				//asm sei;
;				pmsg = (PFXOSMESSAGE)k_dequeue(_k_eventQueue);
	.line	859
	lda	|~~_k_eventQueue+2
	pha
	lda	|~~_k_eventQueue
	pha
	jsl	~~k_dequeue
	sta	<L36+pmsg_1
	stx	<L36+pmsg_1+2
;				//asm cli;
;			}
	.line	861
	brl	L10009
L10010:
;			//
;			//
;			//k_do_procs(processMessage);
;			k_do_processes(processMessage);
	.line	865
	pei	<L36+processMessage_1+2
	pei	<L36+processMessage_1
	jsl	~~k_do_processes
;
;			/*
;			volAvail = k_sd_read_vol(&diskInfo);
;			if(volAvail)
;			{
;				k_send_message(NULL,FX_DISK_INSERT,&diskInfo,sizeof(DISKINFO));
;			}
;			else
;			{
;				k_send_message(NULL,FX_DISK_REMOVE,NULL,0);
;			}
;		*/
;
;			asm cli;
	.line	879
	asmstart
	cli
	asmend
;
;
;			if(!floppy)
	.line	882
;			{
	lda	<L36+floppy_1
	and	#$ff
	beq	L66
	brl	L10026
L66:
	.line	883
;				//floppy_init();
;				//flpydsk_install(6);
;				//flpydsk_read_sector(1);
;				floppy = TRUE;
	.line	887
	sep	#$20
	longa	off
	lda	#$1
	sta	<L36+floppy_1
	rep	#$20
	longa	on
;			}
	.line	888
;
;			/*
;			if(floppy)
;				floppy_read(floppybuffer, floppyLBA++, 3);
;				*/
;		}
L10026:
	.line	894
	brl	L10007
;
;		if(processMessage)
	.line	896
;			k_mem_deallocate_heap(processMessage);
	lda	<L36+processMessage_1
	ora	<L36+processMessage_1+2
	bne	L67
	brl	L10027
L67:
	.line	897
	pei	<L36+processMessage_1+2
	pei	<L36+processMessage_1
	jsl	~~k_mem_deallocate_heap
;	}
L10027:
	.line	898
;	else
	brl	L10028
L10004:
;	{
	.line	900
;		k_debug_string("Exception:fxeventmanager not initialized");
	.line	901
	pea	#^L34+317
	pea	#<L34+317
	jsl	~~k_debug_string
;		THROW_EXCEPTION(0xA000,0x0001,"");
	.line	902
	.line	902
	asmstart
	BRK
	asmend
	.line	902
	.line	902
;	}
	.line	903
L10028:
;
;
;}
	.line	906
L68:
	pld
	tsc
	clc
	adc	#L35
	tcs
	rtl
	.endblock	906
L35	equ	100
L36	equ	9
	ends
	efunc
	.endfunc	906,9,100
	.line	906
	data
L34:
	db	$6B,$5F,$69,$6E,$69,$74,$61,$6C,$69,$7A,$65,$5F,$65,$78,$65
	db	$63,$75,$74,$69,$76,$65,$0D,$0A,$00,$6B,$5F,$69,$6E,$69,$74
	db	$61,$6C,$69,$7A,$65,$5F,$65,$76,$65,$6E,$74,$5F,$6D,$61,$6E
	db	$61,$67,$65,$72,$0D,$0A,$00,$6B,$5F,$69,$6E,$69,$74,$61,$6C
	db	$69,$7A,$65,$5F,$77,$69,$6E,$64,$6F,$77,$5F,$6D,$61,$6E,$61
	db	$67,$65,$72,$20,$62,$65,$66,$6F,$72,$65,$0D,$0A,$00,$6B,$5F
	db	$69,$6E,$69,$74,$61,$6C,$69,$7A,$65,$5F,$77,$69,$6E,$64,$6F
	db	$77,$5F,$6D,$61,$6E,$61,$67,$65,$72,$20,$61,$66,$74,$65,$72
	db	$0D,$0A,$00,$40,$2F,$64,$65,$73,$6B,$74,$6F,$70,$00,$40,$2F
	db	$69,$64,$6C,$65,$00,$6B,$5F,$65,$76,$65,$6E,$74,$5F,$6C,$6F
	db	$6F,$70,$20,$65,$76,$65,$6E,$74,$3A,$3A,$46,$58,$5F,$4D,$45
	db	$4E,$55,$5F,$43,$4F,$4D,$4D,$41,$4E,$44,$3A,$00,$6B,$5F,$65
	db	$76,$65,$6E,$74,$5F,$6C,$6F,$6F,$70,$20,$64,$61,$74,$61,$3A
	db	$46,$58,$5F,$50,$52,$4F,$43,$45,$53,$53,$5F,$46,$4C,$4F,$50
	db	$50,$59,$0D,$0A,$00,$6B,$5F,$65,$76,$65,$6E,$74,$5F,$6C,$6F
	db	$6F,$70,$20,$64,$61,$74,$61,$3A,$46,$58,$5F,$50,$52,$4F,$43
	db	$45,$53,$53,$5F,$53,$44,$43,$41,$52,$44,$0D,$0A,$00,$2A,$2A
	db	$2A,$20,$6B,$5F,$65,$76,$65,$6E,$74,$5F,$6C,$6F,$6F,$70,$3A
	db	$3A,$46,$58,$5F,$46,$4F,$43,$55,$53,$5F,$57,$49,$4E,$44,$4F
	db	$57,$3A,$00,$2A,$2A,$2A,$20,$6B,$5F,$65,$76,$65,$6E,$74,$5F
	db	$6C,$6F,$6F,$70,$3A,$3A,$46,$58,$5F,$4B,$45,$59,$5F,$2A,$0D
	db	$0A,$00,$45,$78,$63,$65,$70,$74,$69,$6F,$6E,$3A,$66,$78,$65
	db	$76,$65,$6E,$74,$6D,$61,$6E,$61,$67,$65,$72,$20,$6E,$6F,$74
	db	$20,$69,$6E,$69,$74,$69,$61,$6C,$69,$7A,$65,$64,$00
	ends
;
;#endif
;
;BOOL k_isNonClient(PWINDOW pWin,PFXOSMESSAGE pmsg,INT x,INT y)
;//BOOL k_isNonClient(HWND hWnd,PFXOSMESSAGE pmsg,INT x,INT y)
;{
	.line	910
	.line	912
	EVTMAN
	xdef	~~k_isNonClient
	func
	.function	912
~~k_isNonClient:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L70
	tcs
	phd
	tcd
pWin_0	set	4
pmsg_0	set	8
x_0	set	12
y_0	set	14
	.block	912
;	BOOL bRet = TRUE;
;	//PWINDOW pWin;
;	PRECT r = &pWin->clientRect;
;
;
;	//pWin = k_getWindowFromHandle(hWnd);
;	//k_debug_integer("X:",x);
;	//k_debug_integer("y:",y);
;	//k_debug_rect("NC CLIENT:",r);
;	//k_debug_rect("NC WINDOW:",(PRECT)&pWin->win_x);
;	if(pWin)
bRet_1	set	0
r_1	set	1
	.sym	bRet,0,14,1,8
	.sym	r,1,138,1,32,25
	.sym	pWin,4,138,6,32,30
	.sym	pmsg,8,138,6,32,16
	.sym	x,12,5,6,16
	.sym	y,14,5,6,16
	sep	#$20
	longa	off
	lda	#$1
	sta	<L71+bRet_1
	rep	#$20
	longa	on
	clc
	lda	#$18
	adc	<L70+pWin_0
	sta	<L71+r_1
	lda	#$0
	adc	<L70+pWin_0+2
	sta	<L71+r_1+2
	.line	923
;	{
	lda	<L70+pWin_0
	ora	<L70+pWin_0+2
	bne	L73
	brl	L10029
L73:
	.line	924
;		if((x > r->x) && (x < (r->x + r->width)))
	.line	925
;		{
	sec
	lda	[<L71+r_1]
	sbc	<L70+x_0
	bvs	L74
	eor	#$8000
L74:
	bpl	L75
	brl	L10030
L75:
	clc
	lda	[<L71+r_1]
	ldy	#$4
	adc	[<L71+r_1],Y
	sta	<R0
	sec
	lda	<L70+x_0
	sbc	<R0
	bvs	L76
	eor	#$8000
L76:
	bpl	L77
	brl	L10030
L77:
	.line	926
;			if((y > r->y) && (y < (r->y + r->height)))
	.line	927
;			{
	sec
	ldy	#$2
	lda	[<L71+r_1],Y
	sbc	<L70+y_0
	bvs	L78
	eor	#$8000
L78:
	bpl	L79
	brl	L10031
L79:
	clc
	ldy	#$2
	lda	[<L71+r_1],Y
	ldy	#$6
	adc	[<L71+r_1],Y
	sta	<R0
	sec
	lda	<L70+y_0
	sbc	<R0
	bvs	L80
	eor	#$8000
L80:
	bpl	L81
	brl	L10031
L81:
	.line	928
;				bRet = FALSE;
	.line	929
	sep	#$20
	longa	off
	stz	<L71+bRet_1
	rep	#$20
	longa	on
;			}
	.line	930
;		}
L10031:
	.line	931
;	}
L10030:
	.line	932
;	return bRet;
L10029:
	.line	933
	lda	<L71+bRet_1
	and	#$ff
L82:
	tay
	lda	<L70+2
	sta	<L70+2+12
	lda	<L70+1
	sta	<L70+1+12
	pld
	tsc
	clc
	adc	#L70+12
	tcs
	tya
	rtl
;}
	.line	934
	.endblock	934
L70	equ	9
L71	equ	5
	ends
	efunc
	.endfunc	934,5,9
	.line	934
;
;
;void IdleProc(PFXOSMESSAGE pMsg)
;{
	.line	937
	.line	938
	EVTMAN
	xdef	~~IdleProc
	func
	.function	938
~~IdleProc:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L83
	tcs
	phd
	tcd
pMsg_0	set	4
	.block	938
;	//FIL   fp;
;	LPVOID buff;
;	UINT br;
;
;	ULONG i = 0;
;	//DISKINFO diskInfo;
;	BOOL volAvail = FALSE;
;#ifdef USE_FX256_FMX
;	PFXDOSDEVICE psdcard;
;#endif
;	//struct omf_file *current_file;
;	//PFXDOSDEVICE phddcard;
;	//PFXDOSDEVICE pfddcard;
;	//UCHAR devRtrn;
;	//PIDENTIFY_DEVICE_DATA pinfo;
;	//PIDSECTOR pids = NULL;
;	//UINT *pintInfo = NULL;
;
;	//PFXNODELIST pdirlist = NULL;
;
;
;	//k_debug_string("IdleProc enter\r\n");
;	if(pMsg!=NULL)
buff_1	set	0
br_1	set	4
i_1	set	6
volAvail_1	set	10
psdcard_1	set	11
	.sym	buff,0,129,1,32
	.sym	br,4,16,1,16
	.sym	i,6,18,1,32
	.sym	volAvail,10,14,1,8
	.sym	psdcard,11,138,1,32,101
	.sym	pMsg,4,138,6,32,16
	stz	<L84+i_1
	stz	<L84+i_1+2
	sep	#$20
	longa	off
	stz	<L84+volAvail_1
	rep	#$20
	longa	on
	.line	961
;	{
	lda	<L83+pMsg_0
	ora	<L83+pMsg_0+2
	bne	L86
	brl	L10032
L86:
	.line	962
;		//k_put_char(0,40,idlespinner[scpu++],15,0);
;		//if(scpu>3) scpu = 0;
;
;		//k_put_char(9,11, (char)(((PMOUSEMSGDATA)pMsg)->button1)  ,15,0);
;
;
;
;		_subTick--;
	.line	970
	dec	|~~_subTick
;
;		if(_subTick == 0)
	.line	972
;		{
	lda	|~~_subTick
	beq	L87
	brl	L10033
L87:
	.line	973
;			_subTick = 0x7FFF;
	.line	974
	lda	#$7fff
	sta	|~~_subTick
;			//k_clean_closed_windows();
;			// check heap memory
;			k_heap_integrity_check();
	.line	977
	jsl	~~k_heap_integrity_check
;
;			/*
;			asm sei;
;			volAvail = k_sd_read_vol(&diskInfo);
;			asm cli;
;
;			if(volAvail)
;			{
;				k_send_message(NULL,FX_DISK_INSERT,&diskInfo,sizeof(DISKINFO));
;			}
;			else
;			{
;				k_send_message(NULL,FX_DISK_REMOVE,NULL,0);
;			}
;			*/
;
;
;			//reg_config();
;
;			//k_debug_hex("k_ide_init(initHD):",initHD);
;			if(initHD)
	.line	998
;			{
	lda	|~~initHD
	and	#$ff
	bne	L88
	brl	L10034
L88:
	.line	999
;
;				//GetDirectory("a:/");
;
;				/*
;				pfddcard = k_create_dos_device(FXDOS_FDD);
;				if(pfddcard)
;				{
;					k_read_dos_directory(pfddcard);
;					k_mem_deallocate_heap(pfddcard);
;				}
;				*/
;
;				/*
;				phddcard = k_create_dos_device(FXDOS_HDD);
;				if(phddcard)
;				{
;					k_read_dos_directory(phddcard);
;					k_mem_deallocate_heap(phddcard);
;				}
;
;				*/
;
;				//k_sd_full_test();
;
;				//psdcard = k_create_dos_device(FXDOS_SDC);
;#ifdef USE_FX256_FMX_DISABLED
;
;				psdcard = NULL;
;				if(psdcard)
;				{
;					k_dos_read_file(psdcard,"APGMLIB.LIB");
;					/*
;					pdirlist = k_read_dos_directory(psdcard);
;					if(pdirlist)
;					{
;
;						k_dos_read_file(psdcard,"APGM.BIN");
;
;						k_nodelist_deallocate_list(pdirlist);
;					}
;
;					k_mem_deallocate_heap(psdcard);
;					*/
;					k_mem_deallocate_heap(psdcard);
;					//k_fcheck_system_memory(NULL);
;				}
;
;#endif
;
;				k_debug_string("IdleProc:f_mount...\r\n");
	.line	1049
	pea	#^L69
	pea	#<L69
	jsl	~~k_debug_string
;				//f_mount(&FatFs, "0", 1);
;
;
;				k_debug_string("IdleProc:MEMORY_INIT...\r\n");
	.line	1053
	pea	#^L69+22
	pea	#<L69+22
	jsl	~~k_debug_string
;			    //my_Memory(MEMORY_INIT,NULL,NULL);
;
;			    k_debug_string("IdleProc:LoadOMFFile...\r\n");
	.line	1056
	pea	#^L69+48
	pea	#<L69+48
	jsl	~~k_debug_string
;
;				//current_file = LoadOMFFile("APGMLIB.LIB");
;				//if(current_file != NULL)
;				//{
;				//	CreateDumpFile(current_file,"a.out");
;				//	mem_free_omf(current_file);
;				//}
;
;				k_debug_string("IdleProc:MEMORY_FREE...\r\n");
	.line	1065
	pea	#^L69+74
	pea	#<L69+74
	jsl	~~k_debug_string
;				//my_Memory(MEMORY_FREE,NULL,NULL);
;
;				/*
;				k_debug_string("EVTMAN:f_open...\r\n");
;				fres = f_open (&fp,"APGM.BIN",FA_READ);
;				k_debug_integer("fres:",fres);
;				if(fres == 0)
;				{
;					k_debug_long("EVTMAN:objsize:",fp.obj.objsize);
;
;					buff = k_mem_allocate_heap(fp.obj.objsize);
;					if(buff)
;					{
;						//((LPCHAR)0x0E0000);
;
;						//f_read(&fp,buff,(UINT)fp.obj.objsize,&br);
;						f_read(&fp,((LPCHAR)0x0E0000),(UINT)fp.obj.objsize,&br);
;
;						k_debug_long("EVTMAN:f_read:",br);
;
;
;						k_debug_byte_array("APGM DATA:\r\n",((LPCHAR)0x0E0000),br);
;
;						k_debug_string("Calling DllMain\r\n");
;
;						((DllMain)((LPCSTR)0x0E0000))((LPCSTR)0x0E0000);
;
;						k_debug_string("Back from DllMain\r\n");
;
;
;
;						k_mem_deallocate_heap(buff);
;					}
;					f_close(&fp);
;				}
;				*/
;
;			}
	.line	1103
;			else
	brl	L10035
L10034:
;			{
	.line	1105
;				initHD = TRUE;
	.line	1106
	sep	#$20
	longa	off
	lda	#$1
	sta	|~~initHD
	rep	#$20
	longa	on
;				k_debug_string("IdleProc:initHD == TRUE\r\n");
	.line	1107
	pea	#^L69+100
	pea	#<L69+100
	jsl	~~k_debug_string
;				/*
;				k_debug_bits("0x07 00000111:", 0x07);
;				k_debug_bits("0xE0 11100000:", 0xE0);
;
;
;				k_delay(100);
;				k_ide_init();
;				k_debug_hex("k_ide_init():",0);
;				pinfo = (PIDENTIFY_DEVICE_DATA)k_ide_get_info();
;				if(pinfo)
;				{
;					initHD = TRUE;
;
;
;					k_debug_integer("Reserved1:",pinfo->GeneralConfiguration.Reserved1);
;					k_debug_integer("Retired3:",pinfo->GeneralConfiguration.Retired3);
;					k_debug_integer("ResponseIncomplete:",pinfo->GeneralConfiguration.ResponseIncomplete);
;					k_debug_integer("Retired2:",pinfo->GeneralConfiguration.Retired2);
;					//k_debug_integer("RemovableMedia:",pinfo->GeneralConfiguration.RemovableMedia);
;
;					k_debug_integer("DeviceType:",pinfo->GeneralConfiguration.DeviceType);
;					k_debug_integer("FixedDevice:",pinfo->GeneralConfiguration.FixedDevice);
;
;
;					//k_debug_byte_array("k_ide_get_info:SerialNumber:",(&((LPCHAR)pinfo)[0x10]),20);
;					//k_debug_byte_array("k_ide_get_info:FirmwareRevision:",(&((LPCHAR)pinfo)[0x2A]),8);
;					//k_debug_byte_array("k_ide_get_info:ModelNumber:",(&((LPCHAR)pinfo)[0x32]),40);
;
;					//k_debug_nstrings("k_ide_get_info:SerialNumber:",(&((LPCHAR)pinfo)[0x10]),20);
;					//k_debug_nstrings("k_ide_get_info:FirmwareRevision:",(&((LPCHAR)pinfo)[0x2A]),8);
;					//k_debug_nstrings("k_ide_get_info:ModelNumber:",(&((LPCHAR)pinfo)[0x32]),40);
;
;
;
;					k_debug_integer("NumCylinders:",pinfo->NumCylinders);
;					k_debug_integer("SpecificConfiguration:",pinfo->SpecificConfiguration);
;					k_debug_integer("NumHeads:",pinfo->NumHeads);
;					k_debug_integer("NumSectorsPerTrack:",pinfo->NumSectorsPerTrack);
;					//k_debug_nstrings("VendorUnique1:",pinfo->VendorUnique1,3);
;
;					k_debug_nstrings("SerialNumber:",pinfo->SerialNumber,20);
;
;
;					k_debug_integer("Retired2.0:",pinfo->Retired2[0]);
;					k_debug_integer("Retired2.1:",pinfo->Retired2[1]);
;					k_debug_integer("Obsolete1:",pinfo->Obsolete1);
;
;					k_debug_nstrings("FirmwareRevision:",pinfo->FirmwareRevision,8);
;
;
;					k_debug_nstrings("ModelNumber:",pinfo->ModelNumber,40);
;
;					k_debug_hex("MaximumBlockTransfer:",pinfo->MaximumBlockTransfer);
;					k_debug_integer("NumberOfCurrentCylinders:",pinfo->NumberOfCurrentCylinders);
;					k_debug_integer("NumberOfCurrentHeads:",pinfo->NumberOfCurrentHeads);
;					k_debug_integer("CurrentSectorsPerTrack:",pinfo->CurrentSectorsPerTrack);
;					k_debug_long("CurrentSectorCapacity:",pinfo->CurrentSectorCapacity);
;					k_debug_hex("MaximumBlockTransfer:",pinfo->CurrentMultiSectorSetting);
;
;
;					k_mem_deallocate_heap(pinfo);
;
;
;
;
;
;				}
;				*/
;
;				//k_debug_hex("k_ide_init():",0);
;				//initHD = TRUE;
;			}
	.line	1179
L10035:
;
;			/*
;			if(k_sd_ispresent())
;			{
;				k_debug_string("SDCARD FOUND!\r\n");
;				psdcard = k_sd_mount();
;				if(psdcard)
;				{
;					k_mem_deallocate_heap(psdcard);
;				}
;			}
;			else
;			{
;				k_debug_string("SDCARD NOT PRESENT!\r\n");
;			}
;			*/
;			/*
;			volAvail = k_sd_read_vol(&diskInfo);
;			if(volAvail)
;			{
;				k_send_window_message(k_user_getDesktopWindow(),FX_DISK_INSERT,&diskInfo,sizeof(DISKINFO));
;			}
;			else
;			{
;				k_send_window_message(k_user_getDesktopWindow(),FX_DISK_REMOVE,NULL,0);
;			}
;			*/
;		}
	.line	1207
;
;
;	}
L10033:
	.line	1210
;	//k_debug_string("IdleProc exit\r\n");
;}
L10032:
	.line	1212
L89:
	lda	<L83+2
	sta	<L83+2+4
	lda	<L83+1
	sta	<L83+1+4
	pld
	tsc
	clc
	adc	#L83+4
	tcs
	rtl
	.endblock	1212
L83	equ	15
L84	equ	1
	ends
	efunc
	.endfunc	1212,1,15
	.line	1212
	data
L69:
	db	$49,$64,$6C,$65,$50,$72,$6F,$63,$3A,$66,$5F,$6D,$6F,$75,$6E
	db	$74,$2E,$2E,$2E,$0D,$0A,$00,$49,$64,$6C,$65,$50,$72,$6F,$63
	db	$3A,$4D,$45,$4D,$4F,$52,$59,$5F,$49,$4E,$49,$54,$2E,$2E,$2E
	db	$0D,$0A,$00,$49,$64,$6C,$65,$50,$72,$6F,$63,$3A,$4C,$6F,$61
	db	$64,$4F,$4D,$46,$46,$69,$6C,$65,$2E,$2E,$2E,$0D,$0A,$00,$49
	db	$64,$6C,$65,$50,$72,$6F,$63,$3A,$4D,$45,$4D,$4F,$52,$59,$5F
	db	$46,$52,$45,$45,$2E,$2E,$2E,$0D,$0A,$00,$49,$64,$6C,$65,$50
	db	$72,$6F,$63,$3A,$69,$6E,$69,$74,$48,$44,$20,$3D,$3D,$20,$54
	db	$52,$55,$45,$0D,$0A,$00
	ends
;
;void k_do_procs(PFXOSMESSAGE pMsg)
;{
	.line	1214
	.line	1215
	EVTMAN
	xdef	~~k_do_procs
	func
	.function	1215
~~k_do_procs:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L91
	tcs
	phd
	tcd
pMsg_0	set	4
	.block	1215
;	int index = 0;
;
;	//k_debug_string("k_do_procs:Enter\r\n");
;	for(index = IDLE_PROC;index<MAX_PROCS;index++)
index_1	set	0
	.sym	index,0,5,1,16
	.sym	pMsg,4,138,6,32,16
	stz	<L92+index_1
	.line	1219
	stz	<L92+index_1
L10038:
;	{
	.line	1220
;		if(eventProcs[index] != NULL)
	.line	1221
;		{
	lda	<L92+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~eventProcs
	adc	<R0
	sta	<R1
	lda	(<R1)
	ldy	#$2
	ora	(<R1),Y
	bne	L94
	brl	L10039
L94:
	.line	1222
;			//if(index > IDLE_PROC)
;			//	k_debug_string("Calling bad proc index.\r\n");
;
;			eventProcs[index](pMsg);
	.line	1226
	pei	<L91+pMsg_0+2
	pei	<L91+pMsg_0
	lda	<L92+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~eventProcs
	adc	<R0
	sta	<R1
	ldy	#$2
	lda	(<R1),Y
	tax
	lda	(<R1)
	xref	~~~lcal
	jsl	~~~lcal
;		}
	.line	1227
;	}
L10039:
	.line	1228
L10036:
	inc	<L92+index_1
	sec
	lda	<L92+index_1
	sbc	#<$100
	bvs	L95
	eor	#$8000
L95:
	bmi	L96
	brl	L10038
L96:
L10037:
;}
	.line	1229
L97:
	lda	<L91+2
	sta	<L91+2+4
	lda	<L91+1
	sta	<L91+1+4
	pld
	tsc
	clc
	adc	#L91+4
	tcs
	rtl
	.endblock	1229
L91	equ	10
L92	equ	9
	ends
	efunc
	.endfunc	1229,9,10
	.line	1229
;
;void DoWndProcs(LPVOID ctx,LPVOID data)
;{
	.line	1231
	.line	1232
	EVTMAN
	xdef	~~DoWndProcs
	func
	.function	1232
~~DoWndProcs:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L98
	tcs
	phd
	tcd
ctx_0	set	4
data_0	set	8
	.block	1232
;	PFXOSMESSAGE pMsg  = (PFXOSMESSAGE)ctx;
;	PWINDOW 	 pWin  = (PWINDOW)data;
;	PFXPROCESS   pProc = k_exec_get_current_process();
;
;
;	if(pMsg && pWin && pWin->pWndClass && pWin->pWndClass->pWndProc)
pMsg_1	set	0
pWin_1	set	4
pProc_1	set	8
	.sym	pMsg,0,138,1,32,16
	.sym	pWin,4,138,1,32,30
	.sym	pProc,8,138,1,32,20
	.sym	ctx,4,129,6,32
	.sym	data,8,129,6,32
	lda	<L98+ctx_0
	sta	<L99+pMsg_1
	lda	<L98+ctx_0+2
	sta	<L99+pMsg_1+2
	lda	<L98+data_0
	sta	<L99+pWin_1
	lda	<L98+data_0+2
	sta	<L99+pWin_1+2
	jsl	~~k_exec_get_current_process
	sta	<L99+pProc_1
	stx	<L99+pProc_1+2
	.line	1238
;	{
	lda	<L99+pMsg_1
	ora	<L99+pMsg_1+2
	bne	L101
	brl	L10040
L101:
	lda	<L99+pWin_1
	ora	<L99+pWin_1+2
	bne	L102
	brl	L10040
L102:
	ldy	#$12c
	lda	[<L99+pWin_1],Y
	ldy	#$12e
	ora	[<L99+pWin_1],Y
	bne	L103
	brl	L10040
L103:
	ldy	#$12c
	lda	[<L99+pWin_1],Y
	sta	<R0
	ldy	#$12e
	lda	[<L99+pWin_1],Y
	sta	<R0+2
	ldy	#$4
	lda	[<R0],Y
	ldy	#$6
	ora	[<R0],Y
	bne	L104
	brl	L10040
L104:
	.line	1239
;		//k_debug_integer("DoWndProcs:type:",pMsg->type);
;
;		//k_debug_pointer("DoWndProcs:HWND:check:",((LPVOID)pMsg->hwnd));
;		//k_debug_pointer("DoWndProcs:pWin:check:",(LPVOID)pWin);
;		if(pWin->procid == pProc->procId)
	.line	1244
;		{
	ldy	#$128
	lda	[<L99+pWin_1],Y
	ldy	#$2
	cmp	[<L99+pProc_1],Y
	bne	L105
	ldy	#$12a
	lda	[<L99+pWin_1],Y
	ldy	#$4
	cmp	[<L99+pProc_1],Y
L105:
	beq	L106
	brl	L10041
L106:
	.line	1245
;			if(pMsg->hwnd && !pWin->isClosed  && ( ((LPVOID)pMsg->hwnd) == (LPVOID)pWin || ((LPVOID)pMsg->hwnd) == BROADCAST_HWND)   )
	.line	1246
;			{
	ldy	#$a
	lda	[<L99+pMsg_1],Y
	ldy	#$c
	ora	[<L99+pMsg_1],Y
	bne	L107
	brl	L10042
L107:
	ldy	#$15d
	lda	[<L99+pWin_1],Y
	and	#$ff
	beq	L108
	brl	L10042
L108:
	ldy	#$a
	lda	[<L99+pMsg_1],Y
	cmp	<L99+pWin_1
	bne	L110
	ldy	#$c
	lda	[<L99+pMsg_1],Y
	cmp	<L99+pWin_1+2
L110:
	bne	L111
	brl	L109
L111:
	ldy	#$a
	lda	[<L99+pMsg_1],Y
	cmp	#<$fffafffa
	bne	L112
	ldy	#$c
	lda	[<L99+pMsg_1],Y
	cmp	#^$fffafffa
L112:
	beq	L113
	brl	L10042
L113:
L109:
	.line	1247
;				//k_debug_pointer("DoWndProcs:CALLING:pMsg:",pMsg);
;				//k_debug_strings("DoWndProcs:CALLING:WindowTitle:",pWin->win_title);
;
;				if(FX_MENU_COMMAND == pMsg->type)
	.line	1251
;				{
	ldy	#$8
	lda	[<L99+pMsg_1],Y
	cmp	#<$fa01
	beq	L114
	brl	L10043
L114:
	.line	1252
;					k_debug_pointer("DoWndProcs::FX_MENU_COMMAND:", pMsg->hwnd);
	.line	1253
	ldy	#$c
	lda	[<L99+pMsg_1],Y
	pha
	ldy	#$a
	lda	[<L99+pMsg_1],Y
	pha
	pea	#^L90
	pea	#<L90
	jsl	~~k_debug_pointer
;					k_debug_pointer("DoWndProcs::FX_MENU_COMMAND:pWndProc:", pWin->pWndClass->pWndProc);
	.line	1254
	ldy	#$12c
	lda	[<L99+pWin_1],Y
	sta	<R0
	ldy	#$12e
	lda	[<L99+pWin_1],Y
	sta	<R0+2
	ldy	#$6
	lda	[<R0],Y
	pha
	ldy	#$4
	lda	[<R0],Y
	pha
	pea	#^L90+29
	pea	#<L90+29
	jsl	~~k_debug_pointer
;				}
	.line	1255
;
;				if(!pWin->pWndClass->pWndProc(pMsg))
L10043:
	.line	1257
;				{
	pei	<L99+pMsg_1+2
	pei	<L99+pMsg_1
	ldy	#$12c
	lda	[<L99+pWin_1],Y
	sta	<R0
	ldy	#$12e
	lda	[<L99+pWin_1],Y
	sta	<R0+2
	ldy	#$6
	lda	[<R0],Y
	tax
	ldy	#$4
	lda	[<R0],Y
	xref	~~~lcal
	jsl	~~~lcal
	and	#$ff
	beq	L115
	brl	L10044
L115:
	.line	1258
;					k_debug_strings("DoWndProcs:HWND:Closed:",pWin->win_title);
	.line	1259
	clc
	lda	#$d4
	adc	<L99+pWin_1
	sta	<R0
	lda	#$0
	adc	<L99+pWin_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L90+67
	pea	#<L90+67
	jsl	~~k_debug_strings
;
;					if(k_event_get_locked_focus() == pMsg->hwnd)
	.line	1261
;						k_event_unlock_focus();
	jsl	~~k_event_get_locked_focus
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$a
	cmp	[<L99+pMsg_1],Y
	bne	L116
	lda	<R0+2
	ldy	#$c
	cmp	[<L99+pMsg_1],Y
L116:
	beq	L117
	brl	L10045
L117:
	.line	1262
	jsl	~~k_event_unlock_focus
;
;					pWin->isClosed = TRUE;
L10045:
	.line	1264
	sep	#$20
	longa	off
	lda	#$1
	ldy	#$15d
	sta	[<L99+pWin_1],Y
	rep	#$20
	longa	on
;					strcpy(pWin->win_title,"##CLOSED");
	.line	1265
	pea	#^L90+91
	pea	#<L90+91
	clc
	lda	#$d4
	adc	<L99+pWin_1
	sta	<R0
	lda	#$0
	adc	<L99+pWin_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~strcpy
;				}
	.line	1266
;			}
L10044:
	.line	1267
;		}
L10042:
	.line	1268
;		else
	brl	L10046
L10041:
;		{
	.line	1270
;			//k_debug_long("DoWndProcs:WRONG PROCESS:",(ULONG)pProc->procId);
;		}
	.line	1272
L10046:
;	}
	.line	1273
;
;	return;
L10040:
	.line	1275
L118:
	lda	<L98+2
	sta	<L98+2+8
	lda	<L98+1
	sta	<L98+1+8
	pld
	tsc
	clc
	adc	#L98+8
	tcs
	rtl
;}
	.line	1276
	.endblock	1276
L98	equ	16
L99	equ	5
	ends
	efunc
	.endfunc	1276,5,16
	.line	1276
	data
L90:
	db	$44,$6F,$57,$6E,$64,$50,$72,$6F,$63,$73,$3A,$3A,$46,$58,$5F
	db	$4D,$45,$4E,$55,$5F,$43,$4F,$4D,$4D,$41,$4E,$44,$3A,$00,$44
	db	$6F,$57,$6E,$64,$50,$72,$6F,$63,$73,$3A,$3A,$46,$58,$5F,$4D
	db	$45,$4E,$55,$5F,$43,$4F,$4D,$4D,$41,$4E,$44,$3A,$70,$57,$6E
	db	$64,$50,$72,$6F,$63,$3A,$00,$44,$6F,$57,$6E,$64,$50,$72,$6F
	db	$63,$73,$3A,$48,$57,$4E,$44,$3A,$43,$6C,$6F,$73,$65,$64,$3A
	db	$00,$23,$23,$43,$4C,$4F,$53,$45,$44,$00
	ends
;
;void k_do_processes(PFXOSMESSAGE pMsg)
;{
	.line	1278
	.line	1279
	EVTMAN
	xdef	~~k_do_processes
	func
	.function	1279
~~k_do_processes:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L120
	tcs
	phd
	tcd
pMsg_0	set	4
	.block	1279
;	int index = 0;
;	int tc = 0;
;
;	PFXPROCESS pCurrent = NULL;
;
;	//k_debug_string("k_do_procs:Enter\r\n");
;	for(index = IDLE_PROC;index<MAX_PROCS;index++)
index_1	set	0
tc_1	set	2
pCurrent_1	set	4
	.sym	index,0,5,1,16
	.sym	tc,2,5,1,16
	.sym	pCurrent,4,138,1,32,20
	.sym	pMsg,4,138,6,32,16
	stz	<L121+index_1
	stz	<L121+tc_1
	stz	<L121+pCurrent_1
	stz	<L121+pCurrent_1+2
	.line	1286
	stz	<L121+index_1
L10049:
;	{
	.line	1287
;		if(eventProcess[index] != NULL)
	.line	1288
;		{
	lda	<L121+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~eventProcess
	adc	<R0
	sta	<R1
	lda	(<R1)
	ldy	#$2
	ora	(<R1),Y
	bne	L123
	brl	L10050
L123:
	.line	1289
;			/*
;			if(eventProcess[index]->process->status == PROCESS_STATUS_TERMINATED)
;			{
;				k_debug_long("k_do_processes::PROCESS TERMINATING:",eventProcess[index]->process->procId);
;				k_unattach_events(eventProcess[index]->eventProc,NULL);
;				eventProcess[index] = NULL;
;				continue;
;			}
;			*/
;
;
;			if(eventProcess[index]->process->status == PROCESS_STATUS_WAITING)
	.line	1301
;			{
	lda	<L121+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~eventProcess
	adc	<R0
	sta	<R1
	lda	(<R1)
	sta	<R0
	ldy	#$2
	lda	(<R1),Y
	sta	<R0+2
	lda	[<R0]
	sta	<R1
	ldy	#$2
	lda	[<R0],Y
	sta	<R1+2
	ldy	#$10
	lda	[<R1],Y
	cmp	#<$f1
	beq	L124
	brl	L10051
L124:
	.line	1302
;				k_debug_long("k_do_processes::PROCESS WAITING:",eventProcess[index]->process->procId);
	.line	1303
	lda	<L121+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~eventProcess
	adc	<R0
	sta	<R1
	lda	(<R1)
	sta	<R0
	ldy	#$2
	lda	(<R1),Y
	sta	<R0+2
	lda	[<R0]
	sta	<R1
	ldy	#$2
	lda	[<R0],Y
	sta	<R1+2
	ldy	#$4
	lda	[<R1],Y
	pha
	ldy	#$2
	lda	[<R1],Y
	pha
	pea	#^L119
	pea	#<L119
	jsl	~~k_debug_long
;				continue;
	.line	1304
	brl	L10047
;			}
	.line	1305
;
;			if(eventProcess[index]->process->status == PROCESS_STATUS_SLEEPING)
L10051:
	.line	1307
;			{
	lda	<L121+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~eventProcess
	adc	<R0
	sta	<R1
	lda	(<R1)
	sta	<R0
	ldy	#$2
	lda	(<R1),Y
	sta	<R0+2
	lda	[<R0]
	sta	<R1
	ldy	#$2
	lda	[<R0],Y
	sta	<R1+2
	ldy	#$10
	lda	[<R1],Y
	cmp	#<$2
	beq	L125
	brl	L10052
L125:
	.line	1308
;				//k_debug_long("k_do_processes::PROCESS SLEEPING:",eventProcess[index]->process->procId);
;				continue;
	.line	1310
	brl	L10047
;			}
	.line	1311
;			/*
;			if(eventProcess[index]->process &&
;			   (eventProcess[index]->process->status != PROCESS_STATUS_RUNNING) &&
;			   (eventProcess[index]->process->status != PROCESS_STATUS_INIT))
;			{
;				if(eventProcess[index]->process->status != PROCESS_STATUS_TERMINATED)
;				{
;					k_debug_long("k_do_processes::PROCESS TERMINATING:",eventProcess[index]->process->procId);
;					eventProcess[index] = NULL;
;				}
;				else if(eventProcess[index]->process->status != PROCESS_STATUS_WAITING)
;				{
;
;				}
;				else if(eventProcess[index]->process->status != PROCESS_STATUS_SLEEPING)
;				{
;
;				}
;				else if(eventProcess[index]->process->status != PROCESS_STATUS_SEMAPHORE)
;				{
;
;				}
;				continue;
;			}
;			*/
;			//if(index > IDLE_PROC)
;			//	k_debug_string("Calling bad proc index.\r\n");
;
;			//eventProcess[index](pMsg);
;			//k_debug_pointer("k_do_processes process:",eventProcess[index]->process);
;
;			if(eventProcess[index]->process!=NULL)
L10052:
	.line	1343
;				k_exec_set_current_process(eventProcess[index]->process);
	lda	<L121+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~eventProcess
	adc	<R0
	sta	<R1
	lda	(<R1)
	sta	<R0
	ldy	#$2
	lda	(<R1),Y
	sta	<R0+2
	lda	[<R0]
	ldy	#$2
	ora	[<R0],Y
	bne	L126
	brl	L10053
L126:
	.line	1344
	lda	<L121+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~eventProcess
	adc	<R0
	sta	<R1
	lda	(<R1)
	sta	<R0
	ldy	#$2
	lda	(<R1),Y
	sta	<R0+2
	ldy	#$2
	lda	[<R0],Y
	pha
	lda	[<R0]
	pha
	jsl	~~k_exec_set_current_process
;
;			if(eventProcess[index]->process->status == PROCESS_STATUS_TERMINATED)
L10053:
	.line	1346
;			{
	lda	<L121+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~eventProcess
	adc	<R0
	sta	<R1
	lda	(<R1)
	sta	<R0
	ldy	#$2
	lda	(<R1),Y
	sta	<R0+2
	lda	[<R0]
	sta	<R1
	ldy	#$2
	lda	[<R0],Y
	sta	<R1+2
	ldy	#$10
	lda	[<R1],Y
	cmp	#<$3
	beq	L127
	brl	L10054
L127:
	.line	1347
;				k_debug_long("k_do_processes::PROCESS TERMINATING:",eventProcess[index]->process->procId);
	.line	1348
	lda	<L121+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~eventProcess
	adc	<R0
	sta	<R1
	lda	(<R1)
	sta	<R0
	ldy	#$2
	lda	(<R1),Y
	sta	<R0+2
	lda	[<R0]
	sta	<R1
	ldy	#$2
	lda	[<R0],Y
	sta	<R1+2
	ldy	#$4
	lda	[<R1],Y
	pha
	ldy	#$2
	lda	[<R1],Y
	pha
	pea	#^L119+33
	pea	#<L119+33
	jsl	~~k_debug_long
;				k_unattach_events(eventProcess[index]->eventProc,NULL);
	.line	1349
	pea	#^$0
	pea	#<$0
	lda	<L121+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~eventProcess
	adc	<R0
	sta	<R1
	lda	(<R1)
	sta	<R0
	ldy	#$2
	lda	(<R1),Y
	sta	<R0+2
	ldy	#$6
	lda	[<R0],Y
	pha
	ldy	#$4
	lda	[<R0],Y
	pha
	jsl	~~k_unattach_events
;				eventProcess[index] = NULL;
	.line	1350
	lda	<L121+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~eventProcess
	adc	<R0
	sta	<R1
	lda	#$0
	sta	(<R1)
	lda	#$0
	ldy	#$2
	sta	(<R1),Y
;				continue;
	.line	1351
	brl	L10047
;			}
	.line	1352
;
;			pCurrent = eventProcess[index]->process;
L10054:
	.line	1354
	lda	<L121+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~eventProcess
	adc	<R0
	sta	<R1
	lda	(<R1)
	sta	<R0
	ldy	#$2
	lda	(<R1),Y
	sta	<R0+2
	lda	[<R0]
	sta	<L121+pCurrent_1
	ldy	#$2
	lda	[<R0],Y
	sta	<L121+pCurrent_1+2
;
;			if(eventProcess[index]->process->status == PROCESS_STATUS_INIT)
	.line	1356
;			{
	lda	<L121+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~eventProcess
	adc	<R0
	sta	<R1
	lda	(<R1)
	sta	<R0
	ldy	#$2
	lda	(<R1),Y
	sta	<R0+2
	lda	[<R0]
	sta	<R1
	ldy	#$2
	lda	[<R0],Y
	sta	<R1+2
	ldy	#$10
	lda	[<R1],Y
	beq	L128
	brl	L10055
L128:
	.line	1357
;				k_debug_long("k_do_processes::PROCESS TO RUNNING:",eventProcess[index]->process->procId);
	.line	1358
	lda	<L121+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~eventProcess
	adc	<R0
	sta	<R1
	lda	(<R1)
	sta	<R0
	ldy	#$2
	lda	(<R1),Y
	sta	<R0+2
	lda	[<R0]
	sta	<R1
	ldy	#$2
	lda	[<R0],Y
	sta	<R1+2
	ldy	#$4
	lda	[<R1],Y
	pha
	ldy	#$2
	lda	[<R1],Y
	pha
	pea	#^L119+70
	pea	#<L119+70
	jsl	~~k_debug_long
;				eventProcess[index]->process->status = PROCESS_STATUS_RUNNING;
	.line	1359
	lda	<L121+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~eventProcess
	adc	<R0
	sta	<R1
	lda	(<R1)
	sta	<R0
	ldy	#$2
	lda	(<R1),Y
	sta	<R0+2
	lda	[<R0]
	sta	<R1
	ldy	#$2
	lda	[<R0],Y
	sta	<R1+2
	lda	#$1
	ldy	#$10
	sta	[<R1],Y
;			}
	.line	1360
;
;			if(pMsg->dest!=FX_MSG_DEFAULT)
L10055:
	.line	1362
;			{
	ldy	#$4
	lda	[<L120+pMsg_0],Y
	cmp	#<$ffffffff
	bne	L129
	ldy	#$6
	lda	[<L120+pMsg_0],Y
	cmp	#^$ffffffff
L129:
	bne	L130
	brl	L10056
L130:
	.line	1363
;				if(eventProcess[index]->eventProc && eventProcess[index]->process->procId == pMsg->dest)
	.line	1364
;				{
	lda	<L121+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~eventProcess
	adc	<R0
	sta	<R1
	lda	(<R1)
	sta	<R0
	ldy	#$2
	lda	(<R1),Y
	sta	<R0+2
	ldy	#$4
	lda	[<R0],Y
	ldy	#$6
	ora	[<R0],Y
	bne	L131
	brl	L10057
L131:
	lda	<L121+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~eventProcess
	adc	<R0
	sta	<R1
	lda	(<R1)
	sta	<R0
	ldy	#$2
	lda	(<R1),Y
	sta	<R0+2
	lda	[<R0]
	sta	<R1
	ldy	#$2
	lda	[<R0],Y
	sta	<R1+2
	ldy	#$2
	lda	[<R1],Y
	ldy	#$4
	cmp	[<L120+pMsg_0],Y
	bne	L132
	ldy	#$4
	lda	[<R1],Y
	ldy	#$6
	cmp	[<L120+pMsg_0],Y
L132:
	beq	L133
	brl	L10057
L133:
	.line	1365
;					k_debug_long("**Process Specific Message:PROCID:",eventProcess[index]->process->procId);
	.line	1366
	lda	<L121+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~eventProcess
	adc	<R0
	sta	<R1
	lda	(<R1)
	sta	<R0
	ldy	#$2
	lda	(<R1),Y
	sta	<R0+2
	lda	[<R0]
	sta	<R1
	ldy	#$2
	lda	[<R0],Y
	sta	<R1+2
	ldy	#$4
	lda	[<R1],Y
	pha
	ldy	#$2
	lda	[<R1],Y
	pha
	pea	#^L119+106
	pea	#<L119+106
	jsl	~~k_debug_long
;					k_debug_long("**Process Specific Message:TYPE:",pMsg->type);
	.line	1367
	ldy	#$8
	lda	[<L120+pMsg_0],Y
	sta	<R0
	stz	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L119+141
	pea	#<L119+141
	jsl	~~k_debug_long
;					k_debug_integer("**Process Specific Message:index:",index);
	.line	1368
	pei	<L121+index_1
	pea	#^L119+174
	pea	#<L119+174
	jsl	~~k_debug_integer
;					if(eventProcess[index]->eventProc)
	.line	1369
;					{
	lda	<L121+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~eventProcess
	adc	<R0
	sta	<R1
	lda	(<R1)
	sta	<R0
	ldy	#$2
	lda	(<R1),Y
	sta	<R0+2
	ldy	#$4
	lda	[<R0],Y
	ldy	#$6
	ora	[<R0],Y
	bne	L134
	brl	L10058
L134:
	.line	1370
;						eventProcess[index]->eventProc(pMsg);
	.line	1371
	pei	<L120+pMsg_0+2
	pei	<L120+pMsg_0
	lda	<L121+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~eventProcess
	adc	<R0
	sta	<R1
	lda	(<R1)
	sta	<R0
	ldy	#$2
	lda	(<R1),Y
	sta	<R0+2
	ldy	#$6
	lda	[<R0],Y
	tax
	ldy	#$4
	lda	[<R0],Y
	xref	~~~lcal
	jsl	~~~lcal
;					}
	.line	1372
;					else
	brl	L10059
L10058:
;					{
	.line	1374
;						k_debug_integer("**Process Specific Message:BAD PROC:",index);
	.line	1375
	pei	<L121+index_1
	pea	#^L119+208
	pea	#<L119+208
	jsl	~~k_debug_integer
;					}
	.line	1376
L10059:
;				}
	.line	1377
;
;			}
L10057:
	.line	1379
;			else
	brl	L10060
L10056:
;			{
	.line	1381
;				if(pMsg->type == FX_PROCESS_TIMER)
	.line	1382
;				{
	ldy	#$8
	lda	[<L120+pMsg_0],Y
	cmp	#<$fff1
	beq	L135
	brl	L10061
L135:
	.line	1383
;					//k_debug_string("** FX_PROCESS_TIMER DETECTED\r\n");
;					if(pCurrent && pCurrent->timerAware )
	.line	1385
;					{
	lda	<L121+pCurrent_1
	ora	<L121+pCurrent_1+2
	bne	L136
	brl	L10062
L136:
	ldy	#$47
	lda	[<L121+pCurrent_1],Y
	and	#$ff
	bne	L137
	brl	L10062
L137:
	.line	1386
;						//k_debug_string("** FX_PROCESS_TIMER DETECTED\r\n");
;						for(tc=0;tc<2;tc++)
	.line	1388
	stz	<L121+tc_1
L10065:
;						{
	.line	1389
;							if(pCurrent->timerTicks[tc])
	.line	1390
;							{
	ldy	#$0
	lda	<L121+tc_1
	bpl	L138
	dey
L138:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	lda	#$1
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R0
	stx	<R0+2
	clc
	lda	#$48
	adc	<L121+pCurrent_1
	sta	<R2
	lda	#$0
	adc	<L121+pCurrent_1+2
	sta	<R2+2
	clc
	lda	<R2
	adc	<R0
	sta	<R3
	lda	<R2+2
	adc	<R0+2
	sta	<R3+2
	lda	[<R3]
	bne	L139
	brl	L10066
L139:
	.line	1391
;								//k_debug_long   ("** FX_PROCESS_TIMER DETECTED:",pCurrent->procId);
;								//k_debug_integer("                       INDEX:",tc);
;								//k_debug_long   ("                       COUNT:",pCurrent->timerTickCount[tc]);
;								pCurrent->timerTickCount[tc]--;
	.line	1395
	ldy	#$0
	lda	<L121+tc_1
	bpl	L140
	dey
L140:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	lda	#$1
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R0
	stx	<R0+2
	clc
	lda	#$4c
	adc	<L121+pCurrent_1
	sta	<R2
	lda	#$0
	adc	<L121+pCurrent_1+2
	sta	<R2+2
	clc
	lda	<R2
	adc	<R0
	sta	<R3
	lda	<R2+2
	adc	<R0+2
	sta	<R3+2
	clc
	lda	#$ffff
	adc	[<R3]
	sta	[<R3]
;								if(pCurrent->timerTickCount[tc] == 0)
	.line	1396
;								{
	ldy	#$0
	lda	<L121+tc_1
	bpl	L141
	dey
L141:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	lda	#$1
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R0
	stx	<R0+2
	clc
	lda	#$4c
	adc	<L121+pCurrent_1
	sta	<R2
	lda	#$0
	adc	<L121+pCurrent_1+2
	sta	<R2+2
	clc
	lda	<R2
	adc	<R0
	sta	<R3
	lda	<R2+2
	adc	<R0+2
	sta	<R3+2
	lda	[<R3]
	beq	L142
	brl	L10067
L142:
	.line	1397
;									//k_debug_long("** FX_PROCESS_TIMER SENT:",pCurrent->procId);
;									pCurrent->timerTickCount[tc] = pCurrent->timerTicks[tc];
	.line	1399
	ldy	#$0
	lda	<L121+tc_1
	bpl	L143
	dey
L143:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	lda	#$1
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R0
	stx	<R0+2
	clc
	lda	#$4c
	adc	<L121+pCurrent_1
	sta	<R2
	lda	#$0
	adc	<L121+pCurrent_1+2
	sta	<R2+2
	clc
	lda	<R2
	adc	<R0
	sta	<R3
	lda	<R2+2
	adc	<R0+2
	sta	<R3+2
	ldy	#$0
	lda	<L121+tc_1
	bpl	L144
	dey
L144:
	sta	<R2
	sty	<R2+2
	pei	<R2+2
	pei	<R2
	lda	#$1
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R0
	stx	<R0+2
	clc
	lda	#$48
	adc	<L121+pCurrent_1
	sta	<17
	lda	#$0
	adc	<L121+pCurrent_1+2
	sta	<17+2
	clc
	lda	<17
	adc	<R0
	sta	<21
	lda	<17+2
	adc	<R0+2
	sta	<21+2
	lda	[<21]
	sta	[<R3]
;									//pMsg->hwnd = BROADCAST_HWND;
;									pMsg->hwnd = k_user_getFocusWindow();
	.line	1401
	jsl	~~k_user_getFocusWindow
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$a
	sta	[<L120+pMsg_0],Y
	lda	<R0+2
	ldy	#$c
	sta	[<L120+pMsg_0],Y
;									if(!pMsg->hwnd)
	.line	1402
;										pMsg->hwnd = BROADCAST_HWND;
	ldy	#$a
	lda	[<L120+pMsg_0],Y
	ldy	#$c
	ora	[<L120+pMsg_0],Y
	beq	L145
	brl	L10068
L145:
	.line	1403
	lda	#$fffa
	ldy	#$a
	sta	[<L120+pMsg_0],Y
	lda	#$fffa
	ldy	#$c
	sta	[<L120+pMsg_0],Y
;								}
L10068:
	.line	1404
;							}
L10067:
	.line	1405
;						}
L10066:
	.line	1406
L10063:
	inc	<L121+tc_1
	lda	<L121+tc_1
	bmi	L146
	dea
	dea
	bpl	L147
L146:
	brl	L10065
L147:
L10064:
;					}
	.line	1407
;				}
L10062:
	.line	1408
;
;				if(pMsg->hwnd)
L10061:
	.line	1410
;				{
	ldy	#$a
	lda	[<L120+pMsg_0],Y
	ldy	#$c
	ora	[<L120+pMsg_0],Y
	bne	L148
	brl	L10069
L148:
	.line	1411
;					if(_k_hLockedFocus)
	.line	1412
;					{
	lda	|~~_k_hLockedFocus
	ora	|~~_k_hLockedFocus+2
	bne	L149
	brl	L10070
L149:
	.line	1413
;						pMsg->hwnd = _k_hLockedFocus;
	.line	1414
	lda	|~~_k_hLockedFocus
	ldy	#$a
	sta	[<L120+pMsg_0],Y
	lda	|~~_k_hLockedFocus+2
	ldy	#$c
	sta	[<L120+pMsg_0],Y
;
;						//k_debug_pointer("k_do_processes:DoWndProcs:_k_bNCLockedFocus:",_k_bNCLockedFocus);
;
;						if(_k_bNCLockedFocus)
	.line	1418
;						{
	lda	|~~_k_bNCLockedFocus
	and	#$ff
	bne	L150
	brl	L10071
L150:
	.line	1419
;							if(pMsg->type < 0xF000)
	.line	1420
;							{
	ldy	#$8
	lda	[<L120+pMsg_0],Y
	cmp	#<$f000
	bcc	L151
	brl	L10072
L151:
	.line	1421
;								//k_debug_integer("k_do_processes:DoWndProcs:pMsg->typeA:",pMsg->type);
;								pMsg->type = (UINT)((LONG)pMsg->type | 0x008000);
	.line	1423
	ldy	#$8
	lda	[<L120+pMsg_0],Y
	ora	#<$8000
	ldy	#$8
	sta	[<L120+pMsg_0],Y
;								//k_debug_integer("k_do_processes:DoWndProcs:pMsg->typeB:",pMsg->type);
;							}
	.line	1425
;						}
L10072:
	.line	1426
;						//k_debug_pointer("k_do_processes:DoWndProcs:k_getWindowList:",k_getWindowList());
;						k_nodelist_foreach_data(k_getWindowList(),pMsg,DoWndProcs);
L10071:
	.line	1428
	pea	#^~~DoWndProcs
	pea	#<~~DoWndProcs
	pei	<L120+pMsg_0+2
	pei	<L120+pMsg_0
	jsl	~~k_getWindowList
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_nodelist_foreach_data
;					}
	.line	1429
;					else
	brl	L10073
L10070:
;					{
	.line	1431
;						if(eventProcess[index]->process->foregroundActive)
	.line	1432
;						{
	lda	<L121+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~eventProcess
	adc	<R0
	sta	<R1
	lda	(<R1)
	sta	<R0
	ldy	#$2
	lda	(<R1),Y
	sta	<R0+2
	lda	[<R0]
	sta	<R1
	ldy	#$2
	lda	[<R0],Y
	sta	<R1+2
	ldy	#$12
	lda	[<R1],Y
	and	#$ff
	bne	L152
	brl	L10074
L152:
	.line	1433
;							//k_debug_pointer("k_do_processes:DoWndProcs:k_getWindowList:",k_getWindowList());
;							k_nodelist_foreach_data(k_getWindowList(),pMsg,DoWndProcs);
	.line	1435
	pea	#^~~DoWndProcs
	pea	#<~~DoWndProcs
	pei	<L120+pMsg_0+2
	pei	<L120+pMsg_0
	jsl	~~k_getWindowList
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_nodelist_foreach_data
;						}
	.line	1436
;					}
L10074:
	.line	1437
L10073:
;
;					/*
;					if(eventProcess[index]->process->foregroundActive)
;					{
;						//k_debug_pointer("k_do_processes:DoWndProcs:k_getWindowList:",k_getWindowList());
;						k_nodelist_foreach_data(k_getWindowList(),pMsg,DoWndProcs);
;					}
;					*/
;				}
	.line	1446
;				else
	brl	L10075
L10069:
;				{
	.line	1448
;					if(eventProcess[index]->eventProc)
	.line	1449
;						eventProcess[index]->eventProc(pMsg);
	lda	<L121+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~eventProcess
	adc	<R0
	sta	<R1
	lda	(<R1)
	sta	<R0
	ldy	#$2
	lda	(<R1),Y
	sta	<R0+2
	ldy	#$4
	lda	[<R0],Y
	ldy	#$6
	ora	[<R0],Y
	bne	L153
	brl	L10076
L153:
	.line	1450
	pei	<L120+pMsg_0+2
	pei	<L120+pMsg_0
	lda	<L121+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~eventProcess
	adc	<R0
	sta	<R1
	lda	(<R1)
	sta	<R0
	ldy	#$2
	lda	(<R1),Y
	sta	<R0+2
	ldy	#$6
	lda	[<R0],Y
	tax
	ldy	#$4
	lda	[<R0],Y
	xref	~~~lcal
	jsl	~~~lcal
;				}
L10076:
	.line	1451
L10075:
;
;			}
	.line	1453
L10060:
;
;			k_exec_set_current_process(NULL);
	.line	1455
	pea	#^$0
	pea	#<$0
	jsl	~~k_exec_set_current_process
;		}
	.line	1456
;	}
L10050:
	.line	1457
L10047:
	inc	<L121+index_1
	sec
	lda	<L121+index_1
	sbc	#<$100
	bvs	L154
	eor	#$8000
L154:
	bmi	L155
	brl	L10049
L155:
L10048:
;}
	.line	1458
L156:
	lda	<L120+2
	sta	<L120+2+4
	lda	<L120+1
	sta	<L120+1+4
	pld
	tsc
	clc
	adc	#L120+4
	tcs
	rtl
	.endblock	1458
L120	equ	32
L121	equ	25
	ends
	efunc
	.endfunc	1458,25,32
	.line	1458
	data
L119:
	db	$6B,$5F,$64,$6F,$5F,$70,$72,$6F,$63,$65,$73,$73,$65,$73,$3A
	db	$3A,$50,$52,$4F,$43,$45,$53,$53,$20,$57,$41,$49,$54,$49,$4E
	db	$47,$3A,$00,$6B,$5F,$64,$6F,$5F,$70,$72,$6F,$63,$65,$73,$73
	db	$65,$73,$3A,$3A,$50,$52,$4F,$43,$45,$53,$53,$20,$54,$45,$52
	db	$4D,$49,$4E,$41,$54,$49,$4E,$47,$3A,$00,$6B,$5F,$64,$6F,$5F
	db	$70,$72,$6F,$63,$65,$73,$73,$65,$73,$3A,$3A,$50,$52,$4F,$43
	db	$45,$53,$53,$20,$54,$4F,$20,$52,$55,$4E,$4E,$49,$4E,$47,$3A
	db	$00,$2A,$2A,$50,$72,$6F,$63,$65,$73,$73,$20,$53,$70,$65,$63
	db	$69,$66,$69,$63,$20,$4D,$65,$73,$73,$61,$67,$65,$3A,$50,$52
	db	$4F,$43,$49,$44,$3A,$00,$2A,$2A,$50,$72,$6F,$63,$65,$73,$73
	db	$20,$53,$70,$65,$63,$69,$66,$69,$63,$20,$4D,$65,$73,$73,$61
	db	$67,$65,$3A,$54,$59,$50,$45,$3A,$00,$2A,$2A,$50,$72,$6F,$63
	db	$65,$73,$73,$20,$53,$70,$65,$63,$69,$66,$69,$63,$20,$4D,$65
	db	$73,$73,$61,$67,$65,$3A,$69,$6E,$64,$65,$78,$3A,$00,$2A,$2A
	db	$50,$72,$6F,$63,$65,$73,$73,$20,$53,$70,$65,$63,$69,$66,$69
	db	$63,$20,$4D,$65,$73,$73,$61,$67,$65,$3A,$42,$41,$44,$20,$50
	db	$52,$4F,$43,$3A,$00
	ends
;
;/*
;void k_main_loop(PFXENVIRONMENT pEnv)
;{
;	int bExit = 0;
;	int mb = 0;
;	int mx = 0;
;
;	int my = 0;
;	int lk = 0;
;
;
;
;	FXOSMESSAGE msg;
;
;	k_debug_string("**********************************\r\n");
;	k_debug_string("******     k_main_loop  3  *******\r\n");
;	k_debug_string("**********************************\r\n");
;
;	//asm cli;
;
;	k_debug_string("k_main_loop:CLI\r\n");
;
;	eventProcs[IDLE_PROC] = IdleProc;
;
;	while(!bExit)
;	{
;		mb = 0;
;		//k_debug_string("k_main_loop:WAI\r\n");
;		//asm WAI;
;
;		//asm sei;
;		disable();
;		mb = (FXOS_MOUSE_BYTE_0 & 0x07);
;		mx = k_get_mouse_pos_X();
;		my = k_get_mouse_pos_Y();
;		//asm cli;
;		enable();
;		msg.type = FX_MOUSE_MOVE;
;
;		((PMOUSEMSGDATA)&msg.data)->button1 = (mb & 1);
;		((PMOUSEMSGDATA)&msg.data)->button2 = (mb & 2);
;		((PMOUSEMSGDATA)&msg.data)->button3 = (mb & 4);
;		((PMOUSEMSGDATA)&msg.data)->button4 = 0;
;
;		((PMOUSEMSGDATA)&msg.data)->x = mx;
;		((PMOUSEMSGDATA)&msg.data)->y = my;
;
;
;		k_do_procs(&msg);
;	}
;
;
;	return;
;}
;*/
;//int k_getevents(FXEventProc eventProcedure)
;int k_attach_events(FXEventProc eventProcedure,LPVOID processArgs)
;{
	.line	1516
	.line	1517
	EVTMAN
	xdef	~~k_attach_events
	func
	.function	1517
~~k_attach_events:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L158
	tcs
	phd
	tcd
eventProcedure_0	set	4
processArgs_0	set	8
	.block	1517
;	FXPROCESSMESSAGE msg;
;
;	int index = LOW_PROC;
;	
;	if(eventProcedure!=NULL)
msg_1	set	0
index_1	set	14
	.sym	msg,0,10,1,112,21
	.sym	index,14,5,1,16
	.sym	eventProcedure,4,641,6,32
	.sym	processArgs,8,129,6,32
	lda	#$1
	sta	<L159+index_1
	.line	1522
;	{
	lda	<L158+eventProcedure_0
	ora	<L158+eventProcedure_0+2
	bne	L161
	brl	L10077
L161:
	.line	1523
;		//k_debug_string("Enter k_getevents\r\n");
;		//k_debug_pointer("\tProcess:",processArgs);
;
;		//while(index < MAX_PROCS && eventProcs[index]!=NULL)
;		for(index=LOW_PROC;index<MAX_PROCS;index++)
	.line	1528
	lda	#$1
	sta	<L159+index_1
L10080:
;		{
	.line	1529
;			if(eventProcs[index] == NULL)
	.line	1530
;			{
	lda	<L159+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~eventProcs
	adc	<R0
	sta	<R1
	lda	(<R1)
	ldy	#$2
	ora	(<R1),Y
	beq	L162
	brl	L10081
L162:
	.line	1531
;				eventProcs[index] = eventProcedure;
	.line	1532
	lda	<L159+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~eventProcs
	adc	<R0
	sta	<R1
	lda	<L158+eventProcedure_0
	sta	(<R1)
	lda	<L158+eventProcedure_0+2
	ldy	#$2
	sta	(<R1),Y
;				k_debug_integer("k_getevents::@index:",index);
	.line	1533
	pei	<L159+index_1
	pea	#^L157
	pea	#<L157
	jsl	~~k_debug_integer
;				break;
	.line	1534
	brl	L10079
;			}
	.line	1535
;		}
L10081:
	.line	1536
L10078:
	inc	<L159+index_1
	sec
	lda	<L159+index_1
	sbc	#<$100
	bvs	L163
	eor	#$8000
L163:
	bmi	L164
	brl	L10080
L164:
L10079:
;
;		msg.type = FX_INIT_MESSAGE;
	.line	1538
	lda	#$ff01
	sta	<L159+msg_1+8
;		msg.src  = FX_MSG_DEFAULT;
	.line	1539
	lda	#$ffff
	sta	<L159+msg_1
	lda	#$ffff
	sta	<L159+msg_1+2
;		msg.dest = FX_MSG_DEFAULT;
	.line	1540
	lda	#$ffff
	sta	<L159+msg_1+4
	lda	#$ffff
	sta	<L159+msg_1+6
;		msg.processInfo = processArgs;
	.line	1541
	lda	<L158+processArgs_0
	sta	<L159+msg_1+10
	lda	<L158+processArgs_0+2
	sta	<L159+msg_1+12
;		eventProcedure((PFXOSMESSAGE)&msg);
	.line	1542
	pea	#0
	clc
	tdc
	adc	#<L159+msg_1
	pha
	ldx	<L158+eventProcedure_0+2
	lda	<L158+eventProcedure_0
	xref	~~~lcal
	jsl	~~~lcal
;	}
	.line	1543
;	return 0;
L10077:
	.line	1544
	lda	#$0
L165:
	tay
	lda	<L158+2
	sta	<L158+2+8
	lda	<L158+1
	sta	<L158+1+8
	pld
	tsc
	clc
	adc	#L158+8
	tcs
	tya
	rtl
;}
	.line	1545
	.endblock	1545
L158	equ	24
L159	equ	9
	ends
	efunc
	.endfunc	1545,9,24
	.line	1545
	data
L157:
	db	$6B,$5F,$67,$65,$74,$65,$76,$65,$6E,$74,$73,$3A,$3A,$40,$69
	db	$6E,$64,$65,$78,$3A,$00
	ends
;
;int k_unattach_events(FXEventProc eventProcedure,LPVOID processArgs)
;{
	.line	1547
	.line	1548
	EVTMAN
	xdef	~~k_unattach_events
	func
	.function	1548
~~k_unattach_events:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L167
	tcs
	phd
	tcd
eventProcedure_0	set	4
processArgs_0	set	8
	.block	1548
;	FXPROCESSMESSAGE msg;
;
;	int index = LOW_PROC;
;
;	if(eventProcedure!=NULL)
msg_1	set	0
index_1	set	14
	.sym	msg,0,10,1,112,21
	.sym	index,14,5,1,16
	.sym	eventProcedure,4,641,6,32
	.sym	processArgs,8,129,6,32
	lda	#$1
	sta	<L168+index_1
	.line	1553
;	{
	lda	<L167+eventProcedure_0
	ora	<L167+eventProcedure_0+2
	bne	L170
	brl	L10082
L170:
	.line	1554
;		k_debug_string("k_unattach_events\r\n");
	.line	1555
	pea	#^L166
	pea	#<L166
	jsl	~~k_debug_string
;		//k_debug_pointer("\tProcess:",processArgs);
;
;		//while(index < MAX_PROCS && eventProcs[index]!=NULL)
;		for(index=LOW_PROC;index<MAX_PROCS;index++)
	.line	1559
	lda	#$1
	sta	<L168+index_1
L10085:
;		{
	.line	1560
;			if(eventProcs[index] == NULL)
	.line	1561
;			{
	lda	<L168+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~eventProcs
	adc	<R0
	sta	<R1
	lda	(<R1)
	ldy	#$2
	ora	(<R1),Y
	beq	L171
	brl	L10086
L171:
	.line	1562
;				eventProcs[index] = eventProcedure;
	.line	1563
	lda	<L168+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~eventProcs
	adc	<R0
	sta	<R1
	lda	<L167+eventProcedure_0
	sta	(<R1)
	lda	<L167+eventProcedure_0+2
	ldy	#$2
	sta	(<R1),Y
;				k_debug_integer("k_getevents::@index:",index);
	.line	1564
	pei	<L168+index_1
	pea	#^L166+20
	pea	#<L166+20
	jsl	~~k_debug_integer
;				break;
	.line	1565
	brl	L10084
;			}
	.line	1566
;		}
L10086:
	.line	1567
L10083:
	inc	<L168+index_1
	sec
	lda	<L168+index_1
	sbc	#<$100
	bvs	L172
	eor	#$8000
L172:
	bmi	L173
	brl	L10085
L173:
L10084:
;
;		msg.type = FX_UNINIT_MESSAGE;
	.line	1569
	lda	#$ff02
	sta	<L168+msg_1+8
;		msg.src  = FX_MSG_DEFAULT;
	.line	1570
	lda	#$ffff
	sta	<L168+msg_1
	lda	#$ffff
	sta	<L168+msg_1+2
;		msg.dest = FX_MSG_DEFAULT;
	.line	1571
	lda	#$ffff
	sta	<L168+msg_1+4
	lda	#$ffff
	sta	<L168+msg_1+6
;		msg.processInfo = processArgs;
	.line	1572
	lda	<L167+processArgs_0
	sta	<L168+msg_1+10
	lda	<L167+processArgs_0+2
	sta	<L168+msg_1+12
;		eventProcedure((PFXOSMESSAGE)&msg);
	.line	1573
	pea	#0
	clc
	tdc
	adc	#<L168+msg_1
	pha
	ldx	<L167+eventProcedure_0+2
	lda	<L167+eventProcedure_0
	xref	~~~lcal
	jsl	~~~lcal
;	}
	.line	1574
;	return 0;
L10082:
	.line	1575
	lda	#$0
L174:
	tay
	lda	<L167+2
	sta	<L167+2+8
	lda	<L167+1
	sta	<L167+1+8
	pld
	tsc
	clc
	adc	#L167+8
	tcs
	tya
	rtl
;}
	.line	1576
	.endblock	1576
L167	equ	24
L168	equ	9
	ends
	efunc
	.endfunc	1576,9,24
	.line	1576
	data
L166:
	db	$6B,$5F,$75,$6E,$61,$74,$74,$61,$63,$68,$5F,$65,$76,$65,$6E
	db	$74,$73,$0D,$0A,$00,$6B,$5F,$67,$65,$74,$65,$76,$65,$6E,$74
	db	$73,$3A,$3A,$40,$69,$6E,$64,$65,$78,$3A,$00
	ends
;
;int k_attach_process_events(FXEventProc eventProcedure,LPVOID processArgs)
;{
	.line	1578
	.line	1579
	EVTMAN
	xdef	~~k_attach_process_events
	func
	.function	1579
~~k_attach_process_events:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L176
	tcs
	phd
	tcd
eventProcedure_0	set	4
processArgs_0	set	8
	.block	1579
;	FXEVENTPROCESS FAR *fxep = NULL;
;	FXPROCESSMESSAGE msg;
;
;	int index = 0;
;
;	if(eventProcedure!=NULL)
fxep_1	set	0
msg_1	set	4
index_1	set	18
	.sym	fxep,0,138,1,32,58
	.sym	msg,4,10,1,112,21
	.sym	index,18,5,1,16
	.sym	eventProcedure,4,641,6,32
	.sym	processArgs,8,129,6,32
	stz	<L177+fxep_1
	stz	<L177+fxep_1+2
	stz	<L177+index_1
	.line	1585
;	{
	lda	<L176+eventProcedure_0
	ora	<L176+eventProcedure_0+2
	bne	L179
	brl	L10087
L179:
	.line	1586
;		k_debug_string("Enter k_attach_process_events\r\n");
	.line	1587
	pea	#^L175
	pea	#<L175
	jsl	~~k_debug_string
;		k_debug_pointer("\eventProcedure:",eventProcedure);
	.line	1588
	pei	<L176+eventProcedure_0+2
	pei	<L176+eventProcedure_0
	pea	#^L175+32
	pea	#<L175+32
	jsl	~~k_debug_pointer
;		k_debug_pointer("\tProcess:",processArgs);
	.line	1589
	pei	<L176+processArgs_0+2
	pei	<L176+processArgs_0
	pea	#^L175+48
	pea	#<L175+48
	jsl	~~k_debug_pointer
;
;		for(index=IDLE_PROC;index<MAX_PROCS;index++)
	.line	1591
	stz	<L177+index_1
L10090:
;		{
	.line	1592
;			if(eventProcess[index] == NULL)
	.line	1593
;			{
	lda	<L177+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~eventProcess
	adc	<R0
	sta	<R1
	lda	(<R1)
	ldy	#$2
	ora	(<R1),Y
	beq	L180
	brl	L10091
L180:
	.line	1594
;				fxep = (FXEVENTPROCESS FAR *)k_mem_allocate_heap(sizeof(FXEVENTPROCESS));
	.line	1595
	pea	#<$8
	jsl	~~k_mem_allocate_heap
	sta	<L177+fxep_1
	stx	<L177+fxep_1+2
;				if(fxep!=NULL)
	.line	1596
;				{
	lda	<L177+fxep_1
	ora	<L177+fxep_1+2
	bne	L181
	brl	L10092
L181:
	.line	1597
;					eventProcess[index] = fxep;
	.line	1598
	lda	<L177+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~eventProcess
	adc	<R0
	sta	<R1
	lda	<L177+fxep_1
	sta	(<R1)
	lda	<L177+fxep_1+2
	ldy	#$2
	sta	(<R1),Y
;
;					fxep->process = (PFXPROCESS)processArgs;
	.line	1600
	lda	<L176+processArgs_0
	sta	[<L177+fxep_1]
	lda	<L176+processArgs_0+2
	ldy	#$2
	sta	[<L177+fxep_1],Y
;					fxep->eventProc = eventProcedure;
	.line	1601
	lda	<L176+eventProcedure_0
	ldy	#$4
	sta	[<L177+fxep_1],Y
	lda	<L176+eventProcedure_0+2
	ldy	#$6
	sta	[<L177+fxep_1],Y
;
;					k_debug_integer("k_attach_process_events::@index:",index);
	.line	1603
	pei	<L177+index_1
	pea	#^L175+58
	pea	#<L175+58
	jsl	~~k_debug_integer
;				}
	.line	1604
;				break;
L10092:
	.line	1605
	brl	L10089
;			}
	.line	1606
;		}
L10091:
	.line	1607
L10088:
	inc	<L177+index_1
	sec
	lda	<L177+index_1
	sbc	#<$100
	bvs	L182
	eor	#$8000
L182:
	bmi	L183
	brl	L10090
L183:
L10089:
;
;		if(index < MAX_PROCS)
	.line	1609
;		{
	sec
	lda	<L177+index_1
	sbc	#<$100
	bvs	L184
	eor	#$8000
L184:
	bpl	L185
	brl	L10093
L185:
	.line	1610
;			msg.type = FX_INIT_MESSAGE;
	.line	1611
	lda	#$ff01
	sta	<L177+msg_1+8
;			msg.processInfo = processArgs;
	.line	1612
	lda	<L176+processArgs_0
	sta	<L177+msg_1+10
	lda	<L176+processArgs_0+2
	sta	<L177+msg_1+12
;
;			k_debug_string("k_getevents @1\r\n");
	.line	1614
	pea	#^L175+91
	pea	#<L175+91
	jsl	~~k_debug_string
;
;			if(eventProcess[index]->process!=NULL)
	.line	1616
;				k_exec_set_current_process(eventProcess[index]->process);
	lda	<L177+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~eventProcess
	adc	<R0
	sta	<R1
	lda	(<R1)
	sta	<R0
	ldy	#$2
	lda	(<R1),Y
	sta	<R0+2
	lda	[<R0]
	ldy	#$2
	ora	[<R0],Y
	bne	L186
	brl	L10094
L186:
	.line	1617
	lda	<L177+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~eventProcess
	adc	<R0
	sta	<R1
	lda	(<R1)
	sta	<R0
	ldy	#$2
	lda	(<R1),Y
	sta	<R0+2
	ldy	#$2
	lda	[<R0],Y
	pha
	lda	[<R0]
	pha
	jsl	~~k_exec_set_current_process
;
;			//k_debug_integer("k_getevents @2:",index);
;			//k_debug_pointer("k_getevents @2:",eventProcess[index]->eventProc);
;
;			if(eventProcess[index]->eventProc)
L10094:
	.line	1622
;				eventProcess[index]->eventProc((PFXOSMESSAGE)&msg);
	lda	<L177+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~eventProcess
	adc	<R0
	sta	<R1
	lda	(<R1)
	sta	<R0
	ldy	#$2
	lda	(<R1),Y
	sta	<R0+2
	ldy	#$4
	lda	[<R0],Y
	ldy	#$6
	ora	[<R0],Y
	bne	L187
	brl	L10095
L187:
	.line	1623
	pea	#0
	clc
	tdc
	adc	#<L177+msg_1
	pha
	lda	<L177+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~eventProcess
	adc	<R0
	sta	<R1
	lda	(<R1)
	sta	<R0
	ldy	#$2
	lda	(<R1),Y
	sta	<R0+2
	ldy	#$6
	lda	[<R0],Y
	tax
	ldy	#$4
	lda	[<R0],Y
	xref	~~~lcal
	jsl	~~~lcal
;
;			//k_debug_string("k_getevents @3\r\n");
;
;			k_exec_set_current_process(NULL);
L10095:
	.line	1627
	pea	#^$0
	pea	#<$0
	jsl	~~k_exec_set_current_process
;		}
	.line	1628
;
;		k_debug_pointer("k_attach_process_events::k_exec_set_current_process:",k_exec_get_current_process());
L10093:
	.line	1630
	jsl	~~k_exec_get_current_process
	sta	<R0
	stx	<R0+2
	phx
	pha
	pea	#^L175+108
	pea	#<L175+108
	jsl	~~k_debug_pointer
;	}
	.line	1631
;	return 0;
L10087:
	.line	1632
	lda	#$0
L188:
	tay
	lda	<L176+2
	sta	<L176+2+8
	lda	<L176+1
	sta	<L176+1+8
	pld
	tsc
	clc
	adc	#L176+8
	tcs
	tya
	rtl
;}
	.line	1633
	.endblock	1633
L176	equ	28
L177	equ	9
	ends
	efunc
	.endfunc	1633,9,28
	.line	1633
	data
L175:
	db	$45,$6E,$74,$65,$72,$20,$6B,$5F,$61,$74,$74,$61,$63,$68,$5F
	db	$70,$72,$6F,$63,$65,$73,$73,$5F,$65,$76,$65,$6E,$74,$73,$0D
	db	$0A,$00,$65,$76,$65,$6E,$74,$50,$72,$6F,$63,$65,$64,$75,$72
	db	$65,$3A,$00,$09,$50,$72,$6F,$63,$65,$73,$73,$3A,$00,$6B,$5F
	db	$61,$74,$74,$61,$63,$68,$5F,$70,$72,$6F,$63,$65,$73,$73,$5F
	db	$65,$76,$65,$6E,$74,$73,$3A,$3A,$40,$69,$6E,$64,$65,$78,$3A
	db	$00,$6B,$5F,$67,$65,$74,$65,$76,$65,$6E,$74,$73,$20,$40,$31
	db	$0D,$0A,$00,$6B,$5F,$61,$74,$74,$61,$63,$68,$5F,$70,$72,$6F
	db	$63,$65,$73,$73,$5F,$65,$76,$65,$6E,$74,$73,$3A,$3A,$6B,$5F
	db	$65,$78,$65,$63,$5F,$73,$65,$74,$5F,$63,$75,$72,$72,$65,$6E
	db	$74,$5F,$70,$72,$6F,$63,$65,$73,$73,$3A,$00
	ends
;
;LPVOID k_alloc_message_arg(LPVOID data,UINT size)
;{
	.line	1635
	.line	1636
	EVTMAN
	xdef	~~k_alloc_message_arg
	func
	.function	1636
~~k_alloc_message_arg:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L190
	tcs
	phd
	tcd
data_0	set	4
size_0	set	8
	.block	1636
;	LPVOID ptr = NULL;
;
;	ptr = k_mem_allocate_heap(size);
ptr_1	set	0
	.sym	ptr,0,129,1,32
	.sym	data,4,129,6,32
	.sym	size,8,16,6,16
	stz	<L191+ptr_1
	stz	<L191+ptr_1+2
	.line	1639
	pei	<L190+size_0
	jsl	~~k_mem_allocate_heap
	sta	<L191+ptr_1
	stx	<L191+ptr_1+2
;	if(ptr!=NULL)
	.line	1640
;	{
	lda	<L191+ptr_1
	ora	<L191+ptr_1+2
	bne	L193
	brl	L10096
L193:
	.line	1641
;		memcpy(ptr,data,size);
	.line	1642
	pei	<L190+size_0
	pei	<L190+data_0+2
	pei	<L190+data_0
	pei	<L191+ptr_1+2
	pei	<L191+ptr_1
	jsl	~~memcpy
;	}
	.line	1643
;	return ptr;
L10096:
	.line	1644
	ldx	<L191+ptr_1+2
	lda	<L191+ptr_1
L194:
	tay
	lda	<L190+2
	sta	<L190+2+6
	lda	<L190+1
	sta	<L190+1+6
	pld
	tsc
	clc
	adc	#L190+6
	tcs
	tya
	rtl
;}
	.line	1645
	.endblock	1645
L190	equ	4
L191	equ	1
	ends
	efunc
	.endfunc	1645,1,4
	.line	1645
;
;VOID k_dealloc_message_arg(LPVOID data)
;{
	.line	1647
	.line	1648
	EVTMAN
	xdef	~~k_dealloc_message_arg
	func
	.function	1648
~~k_dealloc_message_arg:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L195
	tcs
	phd
	tcd
data_0	set	4
	.block	1648
;	if(data!=NULL)
	.sym	data,4,129,6,32
	.line	1649
;		k_mem_deallocate_heap(data);
	lda	<L195+data_0
	ora	<L195+data_0+2
	bne	L198
	brl	L10097
L198:
	.line	1650
	pei	<L195+data_0+2
	pei	<L195+data_0
	jsl	~~k_mem_deallocate_heap
;	else
	brl	L10098
L10097:
;		k_exec_throw_exception(THIS_MODULE,0x00010001,"Dealloc of NULL reference",-1);
	.line	1652
	pea	#<$ffffffff
	pea	#^L189
	pea	#<L189
	pea	#^$10001
	pea	#<$10001
	lda	|~~THIS_MODULE+2
	pha
	lda	|~~THIS_MODULE
	pha
	jsl	~~k_exec_throw_exception
L10098:
;}
	.line	1653
L199:
	lda	<L195+2
	sta	<L195+2+4
	lda	<L195+1
	sta	<L195+1+4
	pld
	tsc
	clc
	adc	#L195+4
	tcs
	rtl
	.endblock	1653
L195	equ	0
L196	equ	1
	ends
	efunc
	.endfunc	1653,1,0
	.line	1653
	data
L189:
	db	$44,$65,$61,$6C,$6C,$6F,$63,$20,$6F,$66,$20,$4E,$55,$4C,$4C
	db	$20,$72,$65,$66,$65,$72,$65,$6E,$63,$65,$00
	ends
;
;
;BOOL k_send_message(LPVOID queueName,MSGTYPE msgType,LPVOID pmsgData,UINT size)
;{
	.line	1656
	.line	1657
	EVTMAN
	xdef	~~k_send_message
	func
	.function	1657
~~k_send_message:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L201
	tcs
	phd
	tcd
queueName_0	set	4
msgType_0	set	8
pmsgData_0	set	10
size_0	set	14
	.block	1657
;	BOOL bRet = FALSE;
;	PFXOSMESSAGE pmsg = NULL;
;
;	//k_debug_integer("k_send_message::msgType:",msgType);
;
;	pmsg = (PFXOSMESSAGE)k_mem_allocate_heap(sizeof(FXOSMESSAGE));
bRet_1	set	0
pmsg_1	set	1
	.sym	bRet,0,14,1,8
	.sym	pmsg,1,138,1,32,16
	.sym	queueName,4,129,6,32
	.sym	msgType,8,16,6,16
	.sym	pmsgData,10,129,6,32
	.sym	size,14,16,6,16
	sep	#$20
	longa	off
	stz	<L202+bRet_1
	rep	#$20
	longa	on
	stz	<L202+pmsg_1
	stz	<L202+pmsg_1+2
	.line	1663
	pea	#<$26
	jsl	~~k_mem_allocate_heap
	sta	<L202+pmsg_1
	stx	<L202+pmsg_1+2
;	if(pmsg)
	.line	1664
;	{
	lda	<L202+pmsg_1
	ora	<L202+pmsg_1+2
	bne	L204
	brl	L10099
L204:
	.line	1665
;		pmsg->type = msgType;
	.line	1666
	lda	<L201+msgType_0
	ldy	#$8
	sta	[<L202+pmsg_1],Y
;		pmsg->pheap = NULL;
	.line	1667
	lda	#$0
	ldy	#$e
	sta	[<L202+pmsg_1],Y
	lda	#$0
	ldy	#$10
	sta	[<L202+pmsg_1],Y
;		pmsg->src  = k_exec_get_current_process()->procId;
	.line	1668
	jsl	~~k_exec_get_current_process
	sta	<R0
	stx	<R0+2
	ldy	#$2
	lda	[<R0],Y
	sta	[<L202+pmsg_1]
	ldy	#$4
	lda	[<R0],Y
	ldy	#$2
	sta	[<L202+pmsg_1],Y
;		pmsg->dest = FX_MSG_DEFAULT;
	.line	1669
	lda	#$ffff
	ldy	#$4
	sta	[<L202+pmsg_1],Y
	lda	#$ffff
	ldy	#$6
	sta	[<L202+pmsg_1],Y
;
;		if(queueName)
	.line	1671
;		{
	lda	<L201+queueName_0
	ora	<L201+queueName_0+2
	bne	L205
	brl	L10100
L205:
	.line	1672
;			pmsg->dest = ((PFXPROCESS)queueName)->procId;
	.line	1673
	ldy	#$2
	lda	[<L201+queueName_0],Y
	ldy	#$4
	sta	[<L202+pmsg_1],Y
	ldy	#$4
	lda	[<L201+queueName_0],Y
	ldy	#$6
	sta	[<L202+pmsg_1],Y
;			k_debug_integer("k_send_message::DESTINATION:",pmsg->dest);
	.line	1674
	ldy	#$4
	lda	[<L202+pmsg_1],Y
	pha
	pea	#^L200
	pea	#<L200
	jsl	~~k_debug_integer
;		}
	.line	1675
;
;		if(size == -1)
L10100:
	.line	1677
;		{
	lda	<L201+size_0
	cmp	#<$ffffffff
	beq	L206
	brl	L10101
L206:
	.line	1678
;			pmsg->pheap = pmsgData;
	.line	1679
	lda	<L201+pmsgData_0
	ldy	#$e
	sta	[<L202+pmsg_1],Y
	lda	<L201+pmsgData_0+2
	ldy	#$10
	sta	[<L202+pmsg_1],Y
;			k_debug_pointer("k_send_message::SPECIALDATA:",pmsg->pheap);
	.line	1680
	ldy	#$10
	lda	[<L202+pmsg_1],Y
	pha
	ldy	#$e
	lda	[<L202+pmsg_1],Y
	pha
	pea	#^L200+29
	pea	#<L200+29
	jsl	~~k_debug_pointer
;		}
	.line	1681
;		else
	brl	L10102
L10101:
;		{
	.line	1683
;			if(size > MAX_FXMSG_DATA)
	.line	1684
;				size = MAX_FXMSG_DATA;
	lda	#$10
	cmp	<L201+size_0
	bcc	L207
	brl	L10103
L207:
	.line	1685
	lda	#$10
	sta	<L201+size_0
;
;			if(pmsgData)
L10103:
	.line	1687
;				pmsg->pheap = k_alloc_message_arg(pmsgData,size);
	lda	<L201+pmsgData_0
	ora	<L201+pmsgData_0+2
	bne	L208
	brl	L10104
L208:
	.line	1688
	pei	<L201+size_0
	pei	<L201+pmsgData_0+2
	pei	<L201+pmsgData_0
	jsl	~~k_alloc_message_arg
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$e
	sta	[<L202+pmsg_1],Y
	lda	<R0+2
	ldy	#$10
	sta	[<L202+pmsg_1],Y
;			else
	brl	L10105
L10104:
;				pmsg->data[0] = 0;
	.line	1690
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$16
	sta	[<L202+pmsg_1],Y
	rep	#$20
	longa	on
L10105:
;		}
	.line	1691
L10102:
;
;		k_enqueue_with_lock(_k_eventQueue,pmsg);
	.line	1693
	pei	<L202+pmsg_1+2
	pei	<L202+pmsg_1
	lda	|~~_k_eventQueue+2
	pha
	lda	|~~_k_eventQueue
	pha
	jsl	~~k_enqueue_with_lock
;	}
	.line	1694
;
;
;	//k_debug_string("k_send_message::exit\r\n");
;
;	return bRet;
L10099:
	.line	1699
	lda	<L202+bRet_1
	and	#$ff
L209:
	tay
	lda	<L201+2
	sta	<L201+2+12
	lda	<L201+1
	sta	<L201+1+12
	pld
	tsc
	clc
	adc	#L201+12
	tcs
	tya
	rtl
;}
	.line	1700
	.endblock	1700
L201	equ	9
L202	equ	5
	ends
	efunc
	.endfunc	1700,5,9
	.line	1700
	data
L200:
	db	$6B,$5F,$73,$65,$6E,$64,$5F,$6D,$65,$73,$73,$61,$67,$65,$3A
	db	$3A,$44,$45,$53,$54,$49,$4E,$41,$54,$49,$4F,$4E,$3A,$00,$6B
	db	$5F,$73,$65,$6E,$64,$5F,$6D,$65,$73,$73,$61,$67,$65,$3A,$3A
	db	$53,$50,$45,$43,$49,$41,$4C,$44,$41,$54,$41,$3A,$00
	ends
;
;
;BOOL k_send_window_message(HWND hWnd,MSGTYPE msgType,LPVOID pmsgData,UINT size)
;{
	.line	1703
	.line	1704
	EVTMAN
	xdef	~~k_send_window_message
	func
	.function	1704
~~k_send_window_message:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L211
	tcs
	phd
	tcd
hWnd_0	set	4
msgType_0	set	8
pmsgData_0	set	10
size_0	set	14
	.block	1704
;	BOOL bRet = FALSE;
;	PFXOSMESSAGE pmsg = NULL;
;
;	//k_debug_pointer("k_send_window_message::hWnd:",hWnd);
;	//k_debug_integer("k_send_window_message::msgType:",msgType);
;
;	if(hWnd)
bRet_1	set	0
pmsg_1	set	1
	.sym	bRet,0,14,1,8
	.sym	pmsg,1,138,1,32,16
	.sym	hWnd,4,129,6,32
	.sym	msgType,8,16,6,16
	.sym	pmsgData,10,129,6,32
	.sym	size,14,16,6,16
	sep	#$20
	longa	off
	stz	<L212+bRet_1
	rep	#$20
	longa	on
	stz	<L212+pmsg_1
	stz	<L212+pmsg_1+2
	.line	1711
;	{
	lda	<L211+hWnd_0
	ora	<L211+hWnd_0+2
	bne	L214
	brl	L10106
L214:
	.line	1712
;		pmsg = (PFXOSMESSAGE)k_mem_allocate_heap(sizeof(FXOSMESSAGE));
	.line	1713
	pea	#<$26
	jsl	~~k_mem_allocate_heap
	sta	<L212+pmsg_1
	stx	<L212+pmsg_1+2
;		if(pmsg)
	.line	1714
;		{
	lda	<L212+pmsg_1
	ora	<L212+pmsg_1+2
	bne	L215
	brl	L10107
L215:
	.line	1715
;			pmsg->type = msgType;
	.line	1716
	lda	<L211+msgType_0
	ldy	#$8
	sta	[<L212+pmsg_1],Y
;			pmsg->pheap = NULL;
	.line	1717
	lda	#$0
	ldy	#$e
	sta	[<L212+pmsg_1],Y
	lda	#$0
	ldy	#$10
	sta	[<L212+pmsg_1],Y
;			pmsg->src  = k_exec_get_current_process()->procId;
	.line	1718
	jsl	~~k_exec_get_current_process
	sta	<R0
	stx	<R0+2
	ldy	#$2
	lda	[<R0],Y
	sta	[<L212+pmsg_1]
	ldy	#$4
	lda	[<R0],Y
	ldy	#$2
	sta	[<L212+pmsg_1],Y
;			pmsg->dest = FX_MSG_DEFAULT;
	.line	1719
	lda	#$ffff
	ldy	#$4
	sta	[<L212+pmsg_1],Y
	lda	#$ffff
	ldy	#$6
	sta	[<L212+pmsg_1],Y
;			pmsg->hwnd = hWnd;
	.line	1720
	lda	<L211+hWnd_0
	ldy	#$a
	sta	[<L212+pmsg_1],Y
	lda	<L211+hWnd_0+2
	ldy	#$c
	sta	[<L212+pmsg_1],Y
;
;			if(size == -1)
	.line	1722
;			{
	lda	<L211+size_0
	cmp	#<$ffffffff
	beq	L216
	brl	L10108
L216:
	.line	1723
;				pmsg->pheap = pmsgData;
	.line	1724
	lda	<L211+pmsgData_0
	ldy	#$e
	sta	[<L212+pmsg_1],Y
	lda	<L211+pmsgData_0+2
	ldy	#$10
	sta	[<L212+pmsg_1],Y
;				//k_debug_pointer("k_send_message::SPECIALDATA:",pmsg->pheap);
;			}
	.line	1726
;			else
	brl	L10109
L10108:
;			{
	.line	1728
;				if(size > MAX_FXMSG_DATA)
	.line	1729
;					size = MAX_FXMSG_DATA;
	lda	#$10
	cmp	<L211+size_0
	bcc	L217
	brl	L10110
L217:
	.line	1730
	lda	#$10
	sta	<L211+size_0
;
;				if(pmsgData)
L10110:
	.line	1732
;					pmsg->pheap = k_alloc_message_arg(pmsgData,size);
	lda	<L211+pmsgData_0
	ora	<L211+pmsgData_0+2
	bne	L218
	brl	L10111
L218:
	.line	1733
	pei	<L211+size_0
	pei	<L211+pmsgData_0+2
	pei	<L211+pmsgData_0
	jsl	~~k_alloc_message_arg
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$e
	sta	[<L212+pmsg_1],Y
	lda	<R0+2
	ldy	#$10
	sta	[<L212+pmsg_1],Y
;				else
	brl	L10112
L10111:
;					pmsg->data[0] = 0;
	.line	1735
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$16
	sta	[<L212+pmsg_1],Y
	rep	#$20
	longa	on
L10112:
;			}
	.line	1736
L10109:
;
;			k_enqueue_with_lock(_k_eventQueue,pmsg);
	.line	1738
	pei	<L212+pmsg_1+2
	pei	<L212+pmsg_1
	lda	|~~_k_eventQueue+2
	pha
	lda	|~~_k_eventQueue
	pha
	jsl	~~k_enqueue_with_lock
;		}
	.line	1739
;	}
L10107:
	.line	1740
;
;	//k_debug_string("k_send_message::exit\r\n");
;
;	return bRet;
L10106:
	.line	1744
	lda	<L212+bRet_1
	and	#$ff
L219:
	tay
	lda	<L211+2
	sta	<L211+2+12
	lda	<L211+1
	sta	<L211+1+12
	pld
	tsc
	clc
	adc	#L211+12
	tcs
	tya
	rtl
;}
	.line	1745
	.endblock	1745
L211	equ	9
L212	equ	5
	ends
	efunc
	.endfunc	1745,5,9
	.line	1745
;
;BOOL k_send_command_message(HWND hWnd,MSGTYPE msgType,UINT cmdCId,UINT cmdMId,ULONG pData1,ULONG pData2)
;{
	.line	1747
	.line	1748
	EVTMAN
	xdef	~~k_send_command_message
	func
	.function	1748
~~k_send_command_message:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L220
	tcs
	phd
	tcd
hWnd_0	set	4
msgType_0	set	8
cmdCId_0	set	10
cmdMId_0	set	12
pData1_0	set	14
pData2_0	set	18
	.block	1748
;	BOOL bRet = FALSE;
;	PFXCMDMESSAGE pmsg = NULL;
;
;	//k_debug_pointer("k_send_command_message::hWnd:",hWnd);
;	//k_debug_long("k_send_command_message::pData1:",pData1);
;	//k_debug_integer("k_send_window_message::msgType:",msgType);
;
;	if(hWnd)
bRet_1	set	0
pmsg_1	set	1
	.sym	bRet,0,14,1,8
	.sym	pmsg,1,138,1,32,17
	.sym	hWnd,4,129,6,32
	.sym	msgType,8,16,6,16
	.sym	cmdCId,10,16,6,16
	.sym	cmdMId,12,16,6,16
	.sym	pData1,14,18,6,32
	.sym	pData2,18,18,6,32
	sep	#$20
	longa	off
	stz	<L221+bRet_1
	rep	#$20
	longa	on
	stz	<L221+pmsg_1
	stz	<L221+pmsg_1+2
	.line	1756
;	{
	lda	<L220+hWnd_0
	ora	<L220+hWnd_0+2
	bne	L223
	brl	L10113
L223:
	.line	1757
;		pmsg = (PFXCMDMESSAGE)k_mem_allocate_heap(sizeof(FXCMDMESSAGE));
	.line	1758
	pea	#<$26
	jsl	~~k_mem_allocate_heap
	sta	<L221+pmsg_1
	stx	<L221+pmsg_1+2
;		if(pmsg)
	.line	1759
;		{
	lda	<L221+pmsg_1
	ora	<L221+pmsg_1+2
	bne	L224
	brl	L10114
L224:
	.line	1760
;			pmsg->type = msgType;
	.line	1761
	lda	<L220+msgType_0
	ldy	#$8
	sta	[<L221+pmsg_1],Y
;			pmsg->pheap = NULL;
	.line	1762
	lda	#$0
	ldy	#$e
	sta	[<L221+pmsg_1],Y
	lda	#$0
	ldy	#$10
	sta	[<L221+pmsg_1],Y
;			pmsg->src  = k_exec_get_current_process()->procId;
	.line	1763
	jsl	~~k_exec_get_current_process
	sta	<R0
	stx	<R0+2
	ldy	#$2
	lda	[<R0],Y
	sta	[<L221+pmsg_1]
	ldy	#$4
	lda	[<R0],Y
	ldy	#$2
	sta	[<L221+pmsg_1],Y
;			pmsg->dest = FX_MSG_DEFAULT;
	.line	1764
	lda	#$ffff
	ldy	#$4
	sta	[<L221+pmsg_1],Y
	lda	#$ffff
	ldy	#$6
	sta	[<L221+pmsg_1],Y
;			pmsg->hwnd = hWnd;
	.line	1765
	lda	<L220+hWnd_0
	ldy	#$a
	sta	[<L221+pmsg_1],Y
	lda	<L220+hWnd_0+2
	ldy	#$c
	sta	[<L221+pmsg_1],Y
;
;			pmsg->cmdCId = cmdCId;
	.line	1767
	lda	<L220+cmdCId_0
	ldy	#$16
	sta	[<L221+pmsg_1],Y
;			pmsg->cmdMId = cmdMId;
	.line	1768
	lda	<L220+cmdMId_0
	ldy	#$18
	sta	[<L221+pmsg_1],Y
;			pmsg->parameter1 = (ULONG)pData1;
	.line	1769
	lda	<L220+pData1_0
	ldy	#$1a
	sta	[<L221+pmsg_1],Y
	lda	<L220+pData1_0+2
	ldy	#$1c
	sta	[<L221+pmsg_1],Y
;			pmsg->parameter2 = (ULONG)pData2;
	.line	1770
	lda	<L220+pData2_0
	ldy	#$1e
	sta	[<L221+pmsg_1],Y
	lda	<L220+pData2_0+2
	ldy	#$20
	sta	[<L221+pmsg_1],Y
;
;			pmsg->parameter3 = 0L;
	.line	1772
	lda	#$0
	ldy	#$22
	sta	[<L221+pmsg_1],Y
	lda	#$0
	ldy	#$24
	sta	[<L221+pmsg_1],Y
;
;			k_enqueue_with_lock(_k_eventQueue,(PFXOSMESSAGE)pmsg);
	.line	1774
	pei	<L221+pmsg_1+2
	pei	<L221+pmsg_1
	lda	|~~_k_eventQueue+2
	pha
	lda	|~~_k_eventQueue
	pha
	jsl	~~k_enqueue_with_lock
;		}
	.line	1775
;	}
L10114:
	.line	1776
;
;	//k_debug_string("k_send_command_message::exit\r\n");
;
;	return bRet;
L10113:
	.line	1780
	lda	<L221+bRet_1
	and	#$ff
L225:
	tay
	lda	<L220+2
	sta	<L220+2+18
	lda	<L220+1
	sta	<L220+1+18
	pld
	tsc
	clc
	adc	#L220+18
	tcs
	tya
	rtl
;}
	.line	1781
	.endblock	1781
L220	equ	9
L221	equ	5
	ends
	efunc
	.endfunc	1781,5,9
	.line	1781
;
;BOOL k_send_process_command_message(PFXPROCESS process,MSGTYPE msgType,UINT cmdCId,UINT cmdMId,ULONG pData1,ULONG pData2)
;{
	.line	1783
	.line	1784
	EVTMAN
	xdef	~~k_send_process_command_message
	func
	.function	1784
~~k_send_process_command_message:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L226
	tcs
	phd
	tcd
process_0	set	4
msgType_0	set	8
cmdCId_0	set	10
cmdMId_0	set	12
pData1_0	set	14
pData2_0	set	18
	.block	1784
;	BOOL bRet = FALSE;
;	PFXCMDMESSAGE pmsg = NULL;
;
;	//k_debug_pointer("k_send_command_message::hWnd:",hWnd);
;	//k_debug_long("k_send_command_message::pData1:",pData1);
;	//k_debug_integer("k_send_window_message::msgType:",msgType);
;
;	if(process)
bRet_1	set	0
pmsg_1	set	1
	.sym	bRet,0,14,1,8
	.sym	pmsg,1,138,1,32,17
	.sym	process,4,138,6,32,20
	.sym	msgType,8,16,6,16
	.sym	cmdCId,10,16,6,16
	.sym	cmdMId,12,16,6,16
	.sym	pData1,14,18,6,32
	.sym	pData2,18,18,6,32
	sep	#$20
	longa	off
	stz	<L227+bRet_1
	rep	#$20
	longa	on
	stz	<L227+pmsg_1
	stz	<L227+pmsg_1+2
	.line	1792
;	{
	lda	<L226+process_0
	ora	<L226+process_0+2
	bne	L229
	brl	L10115
L229:
	.line	1793
;		pmsg = (PFXCMDMESSAGE)k_mem_allocate_heap(sizeof(FXCMDMESSAGE));
	.line	1794
	pea	#<$26
	jsl	~~k_mem_allocate_heap
	sta	<L227+pmsg_1
	stx	<L227+pmsg_1+2
;		if(pmsg)
	.line	1795
;		{
	lda	<L227+pmsg_1
	ora	<L227+pmsg_1+2
	bne	L230
	brl	L10116
L230:
	.line	1796
;			pmsg->type = msgType;
	.line	1797
	lda	<L226+msgType_0
	ldy	#$8
	sta	[<L227+pmsg_1],Y
;			pmsg->pheap = NULL;
	.line	1798
	lda	#$0
	ldy	#$e
	sta	[<L227+pmsg_1],Y
	lda	#$0
	ldy	#$10
	sta	[<L227+pmsg_1],Y
;			pmsg->src  = k_exec_get_current_process()->procId;
	.line	1799
	jsl	~~k_exec_get_current_process
	sta	<R0
	stx	<R0+2
	ldy	#$2
	lda	[<R0],Y
	sta	[<L227+pmsg_1]
	ldy	#$4
	lda	[<R0],Y
	ldy	#$2
	sta	[<L227+pmsg_1],Y
;			pmsg->dest = process->procId;
	.line	1800
	ldy	#$2
	lda	[<L226+process_0],Y
	ldy	#$4
	sta	[<L227+pmsg_1],Y
	ldy	#$4
	lda	[<L226+process_0],Y
	ldy	#$6
	sta	[<L227+pmsg_1],Y
;			pmsg->hwnd = NULL;
	.line	1801
	lda	#$0
	ldy	#$a
	sta	[<L227+pmsg_1],Y
	lda	#$0
	ldy	#$c
	sta	[<L227+pmsg_1],Y
;
;			pmsg->cmdCId = cmdCId;
	.line	1803
	lda	<L226+cmdCId_0
	ldy	#$16
	sta	[<L227+pmsg_1],Y
;			pmsg->cmdMId = cmdMId;
	.line	1804
	lda	<L226+cmdMId_0
	ldy	#$18
	sta	[<L227+pmsg_1],Y
;			pmsg->parameter1 = (ULONG)pData1;
	.line	1805
	lda	<L226+pData1_0
	ldy	#$1a
	sta	[<L227+pmsg_1],Y
	lda	<L226+pData1_0+2
	ldy	#$1c
	sta	[<L227+pmsg_1],Y
;			pmsg->parameter2 = (ULONG)pData2;
	.line	1806
	lda	<L226+pData2_0
	ldy	#$1e
	sta	[<L227+pmsg_1],Y
	lda	<L226+pData2_0+2
	ldy	#$20
	sta	[<L227+pmsg_1],Y
;
;			pmsg->parameter3 = 0L;
	.line	1808
	lda	#$0
	ldy	#$22
	sta	[<L227+pmsg_1],Y
	lda	#$0
	ldy	#$24
	sta	[<L227+pmsg_1],Y
;
;			k_enqueue_with_lock(_k_eventQueue,(PFXOSMESSAGE)pmsg);
	.line	1810
	pei	<L227+pmsg_1+2
	pei	<L227+pmsg_1
	lda	|~~_k_eventQueue+2
	pha
	lda	|~~_k_eventQueue
	pha
	jsl	~~k_enqueue_with_lock
;		}
	.line	1811
;	}
L10116:
	.line	1812
;
;	//k_debug_string("k_send_command_message::exit\r\n");
;
;	return bRet;
L10115:
	.line	1816
	lda	<L227+bRet_1
	and	#$ff
L231:
	tay
	lda	<L226+2
	sta	<L226+2+18
	lda	<L226+1
	sta	<L226+1+18
	pld
	tsc
	clc
	adc	#L226+18
	tcs
	tya
	rtl
;}
	.line	1817
	.endblock	1817
L226	equ	9
L227	equ	5
	ends
	efunc
	.endfunc	1817,5,9
	.line	1817
;
;void k_irq_device_event(MSGIRQ type,ULONG timer,void FAR *data)
;{
	.line	1819
	.line	1820
	EVTMAN
	xdef	~~k_irq_device_event
	func
	.function	1820
~~k_irq_device_event:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L232
	tcs
	phd
	tcd
type_0	set	4
timer_0	set	6
data_0	set	10
	.block	1820
;	PFXOSMESSAGE pmsg = k_create_msg(type,timer,data);
;	if(pmsg)
pmsg_1	set	0
	.sym	pmsg,0,138,1,32,16
	.sym	type,4,5,6,16
	.sym	timer,6,18,6,32
	.sym	data,10,129,6,32
	pei	<L232+data_0+2
	pei	<L232+data_0
	pei	<L232+timer_0+2
	pei	<L232+timer_0
	pei	<L232+type_0
	jsl	~~k_create_msg
	sta	<L233+pmsg_1
	stx	<L233+pmsg_1+2
	.line	1822
;	{
	lda	<L233+pmsg_1
	ora	<L233+pmsg_1+2
	bne	L235
	brl	L10117
L235:
	.line	1823
;		if(type == IRQE_MOUSE)
	.line	1824
;			pmsg = k_updateMouseState(pmsg,timer,data);
	lda	<L232+type_0
	cmp	#<$2
	beq	L236
	brl	L10118
L236:
	.line	1825
	pei	<L232+data_0+2
	pei	<L232+data_0
	pei	<L232+timer_0+2
	pei	<L232+timer_0
	pei	<L233+pmsg_1+2
	pei	<L233+pmsg_1
	jsl	~~k_updateMouseState
	sta	<L233+pmsg_1
	stx	<L233+pmsg_1+2
;		//else
;		//	k_debug_integer("k_irq_device_event:type:",type);
;
;		if(type == IRQE_CTLR_RESET)
L10118:
	.line	1829
;		{
	lda	<L232+type_0
	cmp	#<$9
	beq	L237
	brl	L10119
L237:
	.line	1830
;			k_debug_integer("k_irq_device_event:IRQE_CTLR_RESET:",timer);
	.line	1831
	pei	<L232+timer_0
	pea	#^L210
	pea	#<L210
	jsl	~~k_debug_integer
;			if(timer == -1)
	.line	1832
;			{
	lda	<L232+timer_0
	cmp	#<$ffffffff
	bne	L238
	lda	<L232+timer_0+2
	cmp	#^$ffffffff
L238:
	beq	L239
	brl	L10120
L239:
	.line	1833
;				_k_mouseState.buttonLeftDown   = FALSE;
	.line	1834
	sep	#$20
	longa	off
	stz	|~~_k_mouseState+4
	rep	#$20
	longa	on
;				_k_mouseState.buttonMiddleDown = FALSE;
	.line	1835
	sep	#$20
	longa	off
	stz	|~~_k_mouseState+14
	rep	#$20
	longa	on
;				_k_mouseState.buttonRightDown  = FALSE;
	.line	1836
	sep	#$20
	longa	off
	stz	|~~_k_mouseState+9
	rep	#$20
	longa	on
;				_k_mouseState.lastEvent = 0;
	.line	1837
	stz	|~~_k_mouseState
	stz	|~~_k_mouseState+2
;			}
	.line	1838
;		}
L10120:
	.line	1839
;		//if(type == IRQE_FLOPPY)
;		//	k_debug_integer("k_irq_device_event:IRQE_FLOPPY:",type);
;		//if(type != IRQE_SOL_TIMER && type != IRQE_COM1)
;		//	k_debug_integer("k_irq_device_event:",type);
;
;		k_enqueue(_k_eventQueue,pmsg);
L10119:
	.line	1845
	pei	<L233+pmsg_1+2
	pei	<L233+pmsg_1
	lda	|~~_k_eventQueue+2
	pha
	lda	|~~_k_eventQueue
	pha
	jsl	~~k_enqueue
;	}
	.line	1846
;}
L10117:
	.line	1847
L240:
	lda	<L232+2
	sta	<L232+2+10
	lda	<L232+1
	sta	<L232+1+10
	pld
	tsc
	clc
	adc	#L232+10
	tcs
	rtl
	.endblock	1847
L232	equ	4
L233	equ	1
	ends
	efunc
	.endfunc	1847,1,4
	.line	1847
	data
L210:
	db	$6B,$5F,$69,$72,$71,$5F,$64,$65,$76,$69,$63,$65,$5F,$65,$76
	db	$65,$6E,$74,$3A,$49,$52,$51,$45,$5F,$43,$54,$4C,$52,$5F,$52
	db	$45,$53,$45,$54,$3A,$00
	ends
;
;PFXOSMESSAGE k_updateMouseState(PFXOSMESSAGE pmsg,ULONG timer,void FAR *data)
;{
	.line	1849
	.line	1850
	EVTMAN
	xdef	~~k_updateMouseState
	func
	.function	1850
~~k_updateMouseState:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L242
	tcs
	phd
	tcd
pmsg_0	set	4
timer_0	set	8
data_0	set	12
	.block	1850
;	ULONG lastTimer = _k_mouseState.lastEvent;
;
;	INT statusLeft   = ((LPCHAR)data)[0] & 1;
;	INT statusRight  = ((LPCHAR)data)[0] & 2;
;	INT statusMiddle = ((LPCHAR)data)[0] & 4;
;
;	if(_k_mouseState.buttonLeftDown)
lastTimer_1	set	0
statusLeft_1	set	4
statusRight_1	set	6
statusMiddle_1	set	8
	.sym	lastTimer,0,18,1,32
	.sym	statusLeft,4,5,1,16
	.sym	statusRight,6,5,1,16
	.sym	statusMiddle,8,5,1,16
	.sym	pmsg,4,138,6,32,16
	.sym	timer,8,18,6,32
	.sym	data,12,129,6,32
	lda	|~~_k_mouseState
	sta	<L243+lastTimer_1
	lda	|~~_k_mouseState+2
	sta	<L243+lastTimer_1+2
	lda	[<L242+data_0]
	and	#<$1
	sta	<L243+statusLeft_1
	lda	[<L242+data_0]
	and	#<$2
	sta	<L243+statusRight_1
	lda	[<L242+data_0]
	and	#<$4
	sta	<L243+statusMiddle_1
	.line	1857
;	{
	lda	|~~_k_mouseState+4
	and	#$ff
	bne	L245
	brl	L10121
L245:
	.line	1858
;		if(statusLeft)
	.line	1859
;		{
	lda	<L243+statusLeft_1
	bne	L246
	brl	L10122
L246:
	.line	1860
;			_k_mouseState.buttonLeftDown = 1;
	.line	1861
	sep	#$20
	longa	off
	lda	#$1
	sta	|~~_k_mouseState+4
	rep	#$20
	longa	on
;			//_k_mouseState.lastLeftDown = timer;
;
;			if((timer - _k_mouseState.lastLeftDown) > 5)
	.line	1864
;			{
	sec
	lda	<L242+timer_0
	sbc	|~~_k_mouseState+5
	sta	<R0
	lda	<L242+timer_0+2
	sbc	|~~_k_mouseState+5+2
	sta	<R0+2
	lda	#$5
	cmp	<R0
	lda	#$0
	sbc	<R0+2
	bcc	L247
	brl	L10123
L247:
	.line	1865
;				//k_debug_string("k_updateMouseState:LeftMouseDRAG\r\n");
;				pmsg->type = FX_LBUTTON_DRAG;
	.line	1867
	lda	#$f05
	ldy	#$8
	sta	[<L242+pmsg_0],Y
;			}
	.line	1868
;		}
L10123:
	.line	1869
;		else
	brl	L10124
L10122:
;		{
	.line	1871
;			//k_debug_string("k_updateMouseState:LeftMouseUp\r\n");
;			pmsg->type = FX_LBUTTON_UP;
	.line	1873
	lda	#$f06
	ldy	#$8
	sta	[<L242+pmsg_0],Y
;			_k_mouseState.buttonLeftDown = 0;
	.line	1874
	sep	#$20
	longa	off
	stz	|~~_k_mouseState+4
	rep	#$20
	longa	on
;		}
	.line	1875
L10124:
;	}
	.line	1876
;	else
	brl	L10125
L10121:
;	{
	.line	1878
;		if(statusLeft)
	.line	1879
;		{
	lda	<L243+statusLeft_1
	bne	L248
	brl	L10126
L248:
	.line	1880
;			_k_mouseState.buttonLeftDown = 1;
	.line	1881
	sep	#$20
	longa	off
	lda	#$1
	sta	|~~_k_mouseState+4
	rep	#$20
	longa	on
;
;			if((timer - _k_mouseState.lastLeftDown) < 5)
	.line	1883
;			{
	sec
	lda	<L242+timer_0
	sbc	|~~_k_mouseState+5
	sta	<R0
	lda	<L242+timer_0+2
	sbc	|~~_k_mouseState+5+2
	sta	<R0+2
	lda	<R0
	cmp	#<$5
	lda	<R0+2
	sbc	#^$5
	bcc	L249
	brl	L10127
L249:
	.line	1884
;				//k_debug_integer("k_updateMouseState:LeftMouseDblClick:",timer - _k_mouseState.lastLeftDown);
;				pmsg->type = FX_LBUTTON_DBLCLICK;
	.line	1886
	lda	#$f07
	ldy	#$8
	sta	[<L242+pmsg_0],Y
;			}
	.line	1887
;			else
	brl	L10128
L10127:
;			{
	.line	1889
;				//k_debug_string("k_updateMouseState:LeftMouseDown\r\n");
;				pmsg->type = FX_LBUTTON_DOWN;
	.line	1891
	lda	#$f04
	ldy	#$8
	sta	[<L242+pmsg_0],Y
;			}
	.line	1892
L10128:
;			_k_mouseState.lastLeftDown = timer;
	.line	1893
	lda	<L242+timer_0
	sta	|~~_k_mouseState+5
	lda	<L242+timer_0+2
	sta	|~~_k_mouseState+5+2
;		}
	.line	1894
;		else
	brl	L10129
L10126:
;		{
	.line	1896
;
;			_k_mouseState.buttonLeftDown = 0;
	.line	1898
	sep	#$20
	longa	off
	stz	|~~_k_mouseState+4
	rep	#$20
	longa	on
;		}
	.line	1899
L10129:
;	}
	.line	1900
L10125:
;
;	if(_k_mouseState.buttonRightDown)
	.line	1902
;	{
	lda	|~~_k_mouseState+9
	and	#$ff
	bne	L250
	brl	L10130
L250:
	.line	1903
;		if(statusRight)
	.line	1904
;		{
	lda	<L243+statusRight_1
	bne	L251
	brl	L10131
L251:
	.line	1905
;			_k_mouseState.buttonRightDown = 1;
	.line	1906
	sep	#$20
	longa	off
	lda	#$1
	sta	|~~_k_mouseState+9
	rep	#$20
	longa	on
;			if((timer - _k_mouseState.lastRightDown) > 5)
	.line	1907
;			{
	sec
	lda	<L242+timer_0
	sbc	|~~_k_mouseState+10
	sta	<R0
	lda	<L242+timer_0+2
	sbc	|~~_k_mouseState+10+2
	sta	<R0+2
	lda	#$5
	cmp	<R0
	lda	#$0
	sbc	<R0+2
	bcc	L252
	brl	L10132
L252:
	.line	1908
;				//k_debug_string("k_updateMouseState:LeftMouseDRAG\r\n");
;				pmsg->type = FX_RBUTTON_DRAG;
	.line	1910
	lda	#$f09
	ldy	#$8
	sta	[<L242+pmsg_0],Y
;			}
	.line	1911
;		}
L10132:
	.line	1912
;		else
	brl	L10133
L10131:
;		{
	.line	1914
;			//k_debug_string("k_updateMouseState:RightMouseUp\r\n");
;			pmsg->type = FX_RBUTTON_UP;
	.line	1916
	lda	#$f0a
	ldy	#$8
	sta	[<L242+pmsg_0],Y
;			_k_mouseState.buttonRightDown = 0;
	.line	1917
	sep	#$20
	longa	off
	stz	|~~_k_mouseState+9
	rep	#$20
	longa	on
;		}
	.line	1918
L10133:
;	}
	.line	1919
;	else
	brl	L10134
L10130:
;	{
	.line	1921
;		if(statusRight)
	.line	1922
;		{
	lda	<L243+statusRight_1
	bne	L253
	brl	L10135
L253:
	.line	1923
;			_k_mouseState.buttonRightDown = 1;
	.line	1924
	sep	#$20
	longa	off
	lda	#$1
	sta	|~~_k_mouseState+9
	rep	#$20
	longa	on
;
;			if((timer - _k_mouseState.lastRightDown) < 5)
	.line	1926
;			{
	sec
	lda	<L242+timer_0
	sbc	|~~_k_mouseState+10
	sta	<R0
	lda	<L242+timer_0+2
	sbc	|~~_k_mouseState+10+2
	sta	<R0+2
	lda	<R0
	cmp	#<$5
	lda	<R0+2
	sbc	#^$5
	bcc	L254
	brl	L10136
L254:
	.line	1927
;				//k_debug_integer("k_updateMouseState:RightMouseDblClick:",timer - _k_mouseState.lastRightDown);
;				pmsg->type = FX_RBUTTON_DBLCLICK;
	.line	1929
	lda	#$f0b
	ldy	#$8
	sta	[<L242+pmsg_0],Y
;			}
	.line	1930
;			else
	brl	L10137
L10136:
;			{
	.line	1932
;				//k_debug_string("k_updateMouseState:RightMouseDown\r\n");
;				pmsg->type = FX_RBUTTON_DOWN;
	.line	1934
	lda	#$f08
	ldy	#$8
	sta	[<L242+pmsg_0],Y
;			}
	.line	1935
L10137:
;			_k_mouseState.lastRightDown = timer;
	.line	1936
	lda	<L242+timer_0
	sta	|~~_k_mouseState+10
	lda	<L242+timer_0+2
	sta	|~~_k_mouseState+10+2
;		}
	.line	1937
;		else
	brl	L10138
L10135:
;		{
	.line	1939
;
;			_k_mouseState.buttonRightDown = 0;
	.line	1941
	sep	#$20
	longa	off
	stz	|~~_k_mouseState+9
	rep	#$20
	longa	on
;		}
	.line	1942
L10138:
;	}
	.line	1943
L10134:
;
;	if(_k_mouseState.buttonMiddleDown)
	.line	1945
;	{
	lda	|~~_k_mouseState+14
	and	#$ff
	bne	L255
	brl	L10139
L255:
	.line	1946
;		if(statusMiddle)
	.line	1947
;		{
	lda	<L243+statusMiddle_1
	bne	L256
	brl	L10140
L256:
	.line	1948
;			_k_mouseState.buttonMiddleDown = 1;
	.line	1949
	sep	#$20
	longa	off
	lda	#$1
	sta	|~~_k_mouseState+14
	rep	#$20
	longa	on
;			if((timer - _k_mouseState.lastMiddleDown) > 5)
	.line	1950
;			{
	sec
	lda	<L242+timer_0
	sbc	|~~_k_mouseState+15
	sta	<R0
	lda	<L242+timer_0+2
	sbc	|~~_k_mouseState+15+2
	sta	<R0+2
	lda	#$5
	cmp	<R0
	lda	#$0
	sbc	<R0+2
	bcc	L257
	brl	L10141
L257:
	.line	1951
;				//k_debug_string("k_updateMouseState:MiddletMouseDRAG\r\n");
;				pmsg->type = FX_MBUTTON_DRAG;
	.line	1953
	lda	#$f0d
	ldy	#$8
	sta	[<L242+pmsg_0],Y
;			}
	.line	1954
;		}
L10141:
	.line	1955
;		else
	brl	L10142
L10140:
;		{
	.line	1957
;			//k_debug_string("k_updateMouseState:MiddleMouseUp\r\n");
;			pmsg->type = FX_MBUTTON_UP;
	.line	1959
	lda	#$f0e
	ldy	#$8
	sta	[<L242+pmsg_0],Y
;			_k_mouseState.buttonMiddleDown = 0;
	.line	1960
	sep	#$20
	longa	off
	stz	|~~_k_mouseState+14
	rep	#$20
	longa	on
;		}
	.line	1961
L10142:
;	}
	.line	1962
;	else
	brl	L10143
L10139:
;	{
	.line	1964
;		if(statusMiddle)
	.line	1965
;		{
	lda	<L243+statusMiddle_1
	bne	L258
	brl	L10144
L258:
	.line	1966
;			_k_mouseState.buttonMiddleDown = 1;
	.line	1967
	sep	#$20
	longa	off
	lda	#$1
	sta	|~~_k_mouseState+14
	rep	#$20
	longa	on
;
;			if((timer - _k_mouseState.lastMiddleDown) < 5)
	.line	1969
;			{
	sec
	lda	<L242+timer_0
	sbc	|~~_k_mouseState+15
	sta	<R0
	lda	<L242+timer_0+2
	sbc	|~~_k_mouseState+15+2
	sta	<R0+2
	lda	<R0
	cmp	#<$5
	lda	<R0+2
	sbc	#^$5
	bcc	L259
	brl	L10145
L259:
	.line	1970
;				//k_debug_integer("k_updateMouseState:MiddleMouseDblClick:",timer - _k_mouseState.lastMiddleDown);
;				pmsg->type = FX_MBUTTON_DBLCLICK;
	.line	1972
	lda	#$f0f
	ldy	#$8
	sta	[<L242+pmsg_0],Y
;			}
	.line	1973
;			else
	brl	L10146
L10145:
;			{
	.line	1975
;				//k_debug_string("k_updateMouseState:MiddleMouseDown\r\n");
;				pmsg->type = FX_MBUTTON_DOWN;
	.line	1977
	lda	#$f0c
	ldy	#$8
	sta	[<L242+pmsg_0],Y
;			}
	.line	1978
L10146:
;			_k_mouseState.lastMiddleDown = timer;
	.line	1979
	lda	<L242+timer_0
	sta	|~~_k_mouseState+15
	lda	<L242+timer_0+2
	sta	|~~_k_mouseState+15+2
;		}
	.line	1980
;		else
	brl	L10147
L10144:
;		{
	.line	1982
;
;			_k_mouseState.buttonMiddleDown = 0;
	.line	1984
	sep	#$20
	longa	off
	stz	|~~_k_mouseState+14
	rep	#$20
	longa	on
;		}
	.line	1985
L10147:
;	}
	.line	1986
L10143:
;
;	_k_mouseState.lastEvent = timer;
	.line	1988
	lda	<L242+timer_0
	sta	|~~_k_mouseState
	lda	<L242+timer_0+2
	sta	|~~_k_mouseState+2
;
;	return pmsg;
	.line	1990
	ldx	<L242+pmsg_0+2
	lda	<L242+pmsg_0
L260:
	tay
	lda	<L242+2
	sta	<L242+2+12
	lda	<L242+1
	sta	<L242+1+12
	pld
	tsc
	clc
	adc	#L242+12
	tcs
	tya
	rtl
;}
	.line	1991
	.endblock	1991
L242	equ	14
L243	equ	5
	ends
	efunc
	.endfunc	1991,5,14
	.line	1991
;
;PFXOSMESSAGE k_create_process_msg(void FAR *data)
;{
	.line	1993
	.line	1994
	EVTMAN
	xdef	~~k_create_process_msg
	func
	.function	1994
~~k_create_process_msg:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L261
	tcs
	phd
	tcd
data_0	set	4
	.block	1994
;	PFXOSMESSAGE pmsg = (PFXOSMESSAGE)k_mem_allocate_heap(sizeof(FXOSMESSAGE));
;	if(pmsg)
pmsg_1	set	0
	.sym	pmsg,0,138,1,32,16
	.sym	data,4,129,6,32
	pea	#<$26
	jsl	~~k_mem_allocate_heap
	sta	<L262+pmsg_1
	stx	<L262+pmsg_1+2
	.line	1996
;	{
	lda	<L262+pmsg_1
	ora	<L262+pmsg_1+2
	bne	L264
	brl	L10148
L264:
	.line	1997
;		memset(pmsg,0,sizeof(FXOSMESSAGE));
	.line	1998
	pea	#<$26
	pea	#<$0
	pei	<L262+pmsg_1+2
	pei	<L262+pmsg_1
	jsl	~~memset
;		pmsg->type = FX_PROCESS;
	.line	1999
	lda	#$ff00
	ldy	#$8
	sta	[<L262+pmsg_1],Y
;		pmsg->dest = FX_MSG_DEFAULT;
	.line	2000
	lda	#$ffff
	ldy	#$4
	sta	[<L262+pmsg_1],Y
	lda	#$ffff
	ldy	#$6
	sta	[<L262+pmsg_1],Y
;		pmsg->src  = FX_MSG_DEFAULT;
	.line	2001
	lda	#$ffff
	sta	[<L262+pmsg_1]
	lda	#$ffff
	ldy	#$2
	sta	[<L262+pmsg_1],Y
;		pmsg->data[0] = 0;
	.line	2002
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$16
	sta	[<L262+pmsg_1],Y
	rep	#$20
	longa	on
;	}
	.line	2003
;	return pmsg;
L10148:
	.line	2004
	ldx	<L262+pmsg_1+2
	lda	<L262+pmsg_1
L265:
	tay
	lda	<L261+2
	sta	<L261+2+4
	lda	<L261+1
	sta	<L261+1+4
	pld
	tsc
	clc
	adc	#L261+4
	tcs
	tya
	rtl
;}
	.line	2005
	.endblock	2005
L261	equ	4
L262	equ	1
	ends
	efunc
	.endfunc	2005,1,4
	.line	2005
;
;PFXOSMESSAGE k_create_synthetic_window_msg(HWND hWnd,MSGTYPE type,void FAR *data,UINT length)
;{
	.line	2007
	.line	2008
	EVTMAN
	xdef	~~k_create_synthetic_window_msg
	func
	.function	2008
~~k_create_synthetic_window_msg:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L266
	tcs
	phd
	tcd
hWnd_0	set	4
type_0	set	8
data_0	set	10
length_0	set	14
	.block	2008
;	PFXOSMESSAGE pmsg = (PFXOSMESSAGE)k_mem_allocate_heap(sizeof(FXOSMESSAGE));
;	if(pmsg)
pmsg_1	set	0
	.sym	pmsg,0,138,1,32,16
	.sym	hWnd,4,129,6,32
	.sym	type,8,16,6,16
	.sym	data,10,129,6,32
	.sym	length,14,16,6,16
	pea	#<$26
	jsl	~~k_mem_allocate_heap
	sta	<L267+pmsg_1
	stx	<L267+pmsg_1+2
	.line	2010
;	{
	lda	<L267+pmsg_1
	ora	<L267+pmsg_1+2
	bne	L269
	brl	L10149
L269:
	.line	2011
;		if(length < 16)
	.line	2012
;		{
	lda	<L266+length_0
	cmp	#<$10
	bcc	L270
	brl	L10150
L270:
	.line	2013
;			memset(pmsg,0,sizeof(FXOSMESSAGE));
	.line	2014
	pea	#<$26
	pea	#<$0
	pei	<L267+pmsg_1+2
	pei	<L267+pmsg_1
	jsl	~~memset
;			pmsg->type = FX_PROCESS;
	.line	2015
	lda	#$ff00
	ldy	#$8
	sta	[<L267+pmsg_1],Y
;			pmsg->hwnd = hWnd;
	.line	2016
	lda	<L266+hWnd_0
	ldy	#$a
	sta	[<L267+pmsg_1],Y
	lda	<L266+hWnd_0+2
	ldy	#$c
	sta	[<L267+pmsg_1],Y
;			pmsg->dest = FX_MSG_DEFAULT;
	.line	2017
	lda	#$ffff
	ldy	#$4
	sta	[<L267+pmsg_1],Y
	lda	#$ffff
	ldy	#$6
	sta	[<L267+pmsg_1],Y
;			pmsg->src  = FX_MSG_DEFAULT;
	.line	2018
	lda	#$ffff
	sta	[<L267+pmsg_1]
	lda	#$ffff
	ldy	#$2
	sta	[<L267+pmsg_1],Y
;			memcpy(pmsg->data,data,length);
	.line	2019
	pei	<L266+length_0
	pei	<L266+data_0+2
	pei	<L266+data_0
	clc
	lda	#$16
	adc	<L267+pmsg_1
	sta	<R0
	lda	#$0
	adc	<L267+pmsg_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~memcpy
;		}
	.line	2020
;	}
L10150:
	.line	2021
;	return pmsg;
L10149:
	.line	2022
	ldx	<L267+pmsg_1+2
	lda	<L267+pmsg_1
L271:
	tay
	lda	<L266+2
	sta	<L266+2+12
	lda	<L266+1
	sta	<L266+1+12
	pld
	tsc
	clc
	adc	#L266+12
	tcs
	tya
	rtl
;}
	.line	2023
	.endblock	2023
L266	equ	8
L267	equ	5
	ends
	efunc
	.endfunc	2023,5,8
	.line	2023
;
;
;PFXOSMESSAGE k_create_msg(MSGIRQ type,ULONG timer,void FAR *data)
;{
	.line	2026
	.line	2027
	EVTMAN
	xdef	~~k_create_msg
	func
	.function	2027
~~k_create_msg:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L272
	tcs
	phd
	tcd
type_0	set	4
timer_0	set	6
data_0	set	10
	.block	2027
;	PFXOSMESSAGE pmsg = (PFXOSMESSAGE)k_mem_allocate_heap(sizeof(FXOSMESSAGE));
;	//PFXOSMESSAGE pmsg = (PFXOSMESSAGE)malloc(sizeof(FXOSMESSAGE));
;	if(pmsg)
pmsg_1	set	0
	.sym	pmsg,0,138,1,32,16
	.sym	type,4,5,6,16
	.sym	timer,6,18,6,32
	.sym	data,10,129,6,32
	pea	#<$26
	jsl	~~k_mem_allocate_heap
	sta	<L273+pmsg_1
	stx	<L273+pmsg_1+2
	.line	2030
;	{
	lda	<L273+pmsg_1
	ora	<L273+pmsg_1+2
	bne	L275
	brl	L10151
L275:
	.line	2031
;		memset(pmsg,0,sizeof(FXOSMESSAGE));
	.line	2032
	pea	#<$26
	pea	#<$0
	pei	<L273+pmsg_1+2
	pei	<L273+pmsg_1
	jsl	~~memset
;		pmsg->pheap = (LPVOID)0xFFFFFF;
	.line	2033
	lda	#$ffff
	ldy	#$e
	sta	[<L273+pmsg_1],Y
	lda	#$ff
	ldy	#$10
	sta	[<L273+pmsg_1],Y
;		pmsg->dest = FX_MSG_DEFAULT;
	.line	2034
	lda	#$ffff
	ldy	#$4
	sta	[<L273+pmsg_1],Y
	lda	#$ffff
	ldy	#$6
	sta	[<L273+pmsg_1],Y
;		pmsg->src  = FX_MSG_DEFAULT;
	.line	2035
	lda	#$ffff
	sta	[<L273+pmsg_1]
	lda	#$ffff
	ldy	#$2
	sta	[<L273+pmsg_1],Y
;		//k_debug_integer("k_create_msg:",type);
;		switch(type)
	.line	2037
	lda	<L272+type_0
	brl	L10152
;		{
	.line	2038
;		case IRQE_KEYBOARD:
	.line	2039
L10154:
;			pmsg->type = FX_KEY_DOWN;
	.line	2040
	lda	#$f10
	ldy	#$8
	sta	[<L273+pmsg_1],Y
;			pmsg->data[0] = *((INT*)data) & 0x00FF; // keycode
	.line	2041
	lda	[<L272+data_0]
	and	#<$ff
	sep	#$20
	longa	off
	ldy	#$16
	sta	[<L273+pmsg_1],Y
	rep	#$20
	longa	on
;			pmsg->data[1] = (*((INT*)data) > 256); // exkeycode
	.line	2042
	stz	<R0
	sec
	lda	#$100
	sbc	[<L272+data_0]
	bvs	L277
	eor	#$8000
L277:
	bpl	L278
	brl	L276
L278:
	inc	<R0
L276:
	sep	#$20
	longa	off
	lda	<R0
	ldy	#$17
	sta	[<L273+pmsg_1],Y
	rep	#$20
	longa	on
;			pmsg->data[2] = k_getKeyboardChar(*((BYTE*)data),pmsg->data[1],pmsg->data[1]); // char
	.line	2043
	ldy	#$17
	lda	[<L273+pmsg_1],Y
	and	#$ff
	pha
	ldy	#$17
	lda	[<L273+pmsg_1],Y
	and	#$ff
	pha
	lda	[<L272+data_0]
	pha
	jsl	~~k_getKeyboardChar
	sep	#$20
	longa	off
	ldy	#$18
	sta	[<L273+pmsg_1],Y
	rep	#$20
	longa	on
;
;			if(pmsg->data[0] > 128)
	.line	2045
;			{
	sep	#$20
	longa	off
	lda	#$80
	ldy	#$16
	cmp	[<L273+pmsg_1],Y
	rep	#$20
	longa	on
	bcc	L279
	brl	L10155
L279:
	.line	2046
;				pmsg->type = FX_KEY_UP;
	.line	2047
	lda	#$f12
	ldy	#$8
	sta	[<L273+pmsg_1],Y
;			}
	.line	2048
;
;			break;
L10155:
	.line	2050
	brl	L10153
;		case IRQE_MOUSE:
	.line	2051
L10156:
;			pmsg->type = FX_MOUSE_MOVE;
	.line	2052
	lda	#$f03
	ldy	#$8
	sta	[<L273+pmsg_1],Y
;			pmsg->data[0] = *((BYTE*)data) & 7; // mouse byte 1
	.line	2053
	sep	#$20
	longa	off
	lda	[<L272+data_0]
	and	#<$7
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	ldy	#$16
	sta	[<L273+pmsg_1],Y
	rep	#$20
	longa	on
;			pmsg->data[1] = ((LPCHAR)data)[1];
	.line	2054
	sep	#$20
	longa	off
	ldy	#$1
	lda	[<L272+data_0],Y
	ldy	#$17
	sta	[<L273+pmsg_1],Y
	rep	#$20
	longa	on
;			pmsg->data[2] = ((LPCHAR)data)[2];
	.line	2055
	sep	#$20
	longa	off
	ldy	#$2
	lda	[<L272+data_0],Y
	ldy	#$18
	sta	[<L273+pmsg_1],Y
	rep	#$20
	longa	on
;			pmsg->data[3] = ((LPCHAR)data)[3];
	.line	2056
	sep	#$20
	longa	off
	ldy	#$3
	lda	[<L272+data_0],Y
	ldy	#$19
	sta	[<L273+pmsg_1],Y
	rep	#$20
	longa	on
;			pmsg->data[4] = ((LPCHAR)data)[4];
	.line	2057
	sep	#$20
	longa	off
	ldy	#$4
	lda	[<L272+data_0],Y
	ldy	#$1a
	sta	[<L273+pmsg_1],Y
	rep	#$20
	longa	on
;
;			break;
	.line	2059
	brl	L10153
;		case IRQE_COM1:
	.line	2060
L10157:
;			pmsg->type = FX_COM1_DATA;
	.line	2061
	lda	#$fc00
	ldy	#$8
	sta	[<L273+pmsg_1],Y
;			pmsg->data[0] = ((LPCHAR)data)[0];
	.line	2062
	sep	#$20
	longa	off
	lda	[<L272+data_0]
	ldy	#$16
	sta	[<L273+pmsg_1],Y
	rep	#$20
	longa	on
;			break;
	.line	2063
	brl	L10153
;		case IRQE_COM2:
	.line	2064
L10158:
;			pmsg->type = FX_COM2_DATA;
	.line	2065
	lda	#$fc01
	ldy	#$8
	sta	[<L273+pmsg_1],Y
;			pmsg->data[0] = ((LPCHAR)data)[0];
	.line	2066
	sep	#$20
	longa	off
	lda	[<L272+data_0]
	ldy	#$16
	sta	[<L273+pmsg_1],Y
	rep	#$20
	longa	on
;			break;
	.line	2067
	brl	L10153
;		case IRQE_SOL_TIMER:
	.line	2068
L10159:
;			pmsg->type = FX_PROCESS_TIMER;
	.line	2069
	lda	#$fff1
	ldy	#$8
	sta	[<L273+pmsg_1],Y
;			pmsg->data[0] = 0;
	.line	2070
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$16
	sta	[<L273+pmsg_1],Y
	rep	#$20
	longa	on
;			break;
	.line	2071
	brl	L10153
;		case IRQE_FLOPPY:
	.line	2072
L10160:
;			pmsg->type = FX_PROCESS_FLOPPY;
	.line	2073
	lda	#$fff2
	ldy	#$8
	sta	[<L273+pmsg_1],Y
;			pmsg->pheap = k_mem_allocate_heap(512);
	.line	2074
	pea	#<$200
	jsl	~~k_mem_allocate_heap
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$e
	sta	[<L273+pmsg_1],Y
	lda	<R0+2
	ldy	#$10
	sta	[<L273+pmsg_1],Y
;			memcpy(pmsg->pheap,data,512);
	.line	2075
	pea	#<$200
	pei	<L272+data_0+2
	pei	<L272+data_0
	ldy	#$10
	lda	[<L273+pmsg_1],Y
	pha
	ldy	#$e
	lda	[<L273+pmsg_1],Y
	pha
	jsl	~~memcpy
;			//k_debug_integer("IRQE_FLOPPY:",FX_PROCESS_FLOPPY);
;			break;
	.line	2077
	brl	L10153
;		case IRQE_SDCARD:
	.line	2078
L10161:
;			pmsg->type = FX_PROCESS_SDCARD;
	.line	2079
	lda	#$fff3
	ldy	#$8
	sta	[<L273+pmsg_1],Y
;			pmsg->data[0] = 0;
	.line	2080
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$16
	sta	[<L273+pmsg_1],Y
	rep	#$20
	longa	on
;			//pmsg->pheap = k_mem_allocate_heap(512);
;			//memcpy(pmsg->pheap,data,512);
;			break;
	.line	2083
	brl	L10153
;		case IRQE_SDCARD_INS:
	.line	2084
L10162:
;			pmsg->type = FX_PROCESS_SDCARD;
	.line	2085
	lda	#$fff3
	ldy	#$8
	sta	[<L273+pmsg_1],Y
;			pmsg->data[0] = 0;
	.line	2086
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$16
	sta	[<L273+pmsg_1],Y
	rep	#$20
	longa	on
;			//pmsg->pheap = k_mem_allocate_heap(512);
;			//memcpy(pmsg->pheap,data,512);
;			break;
	.line	2089
	brl	L10153
;		default:
	.line	2090
L10163:
;			pmsg->type = 99;//IRQE_UNKNOWN;
	.line	2091
	lda	#$63
	ldy	#$8
	sta	[<L273+pmsg_1],Y
;			break;
	.line	2092
	brl	L10153
;		}
	.line	2093
L10152:
	xref	~~~fsw
	jsl	~~~fsw
	dw	1
	dw	8
	dw	L10163-1
	dw	L10154-1
	dw	L10156-1
	dw	L10157-1
	dw	L10158-1
	dw	L10159-1
	dw	L10160-1
	dw	L10161-1
	dw	L10162-1
L10153:
;		//k_debug_integer("k_create_msg pmsg->type:",pmsg->type);
;	}
	.line	2095
;	return pmsg;
L10151:
	.line	2096
	ldx	<L273+pmsg_1+2
	lda	<L273+pmsg_1
L280:
	tay
	lda	<L272+2
	sta	<L272+2+10
	lda	<L272+1
	sta	<L272+1+10
	pld
	tsc
	clc
	adc	#L272+10
	tcs
	tya
	rtl
;}
	.line	2097
	.endblock	2097
L272	equ	8
L273	equ	5
	ends
	efunc
	.endfunc	2097,5,8
	.line	2097
;
;void k_destory_msg(PFXOSMESSAGE pmsg)
;{
	.line	2099
	.line	2100
	EVTMAN
	xdef	~~k_destory_msg
	func
	.function	2100
~~k_destory_msg:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L281
	tcs
	phd
	tcd
pmsg_0	set	4
	.block	2100
;	if(pmsg!=NULL)
	.sym	pmsg,4,138,6,32,16
	.line	2101
;	{
	lda	<L281+pmsg_0
	ora	<L281+pmsg_0+2
	bne	L284
	brl	L10164
L284:
	.line	2102
;		if(pmsg->pheap!=NULL && pmsg->pheap!=(LPVOID)0xFFFFFF)
	.line	2103
;			k_dealloc_message_arg(pmsg->pheap);
	ldy	#$e
	lda	[<L281+pmsg_0],Y
	ldy	#$10
	ora	[<L281+pmsg_0],Y
	bne	L285
	brl	L10165
L285:
	ldy	#$e
	lda	[<L281+pmsg_0],Y
	cmp	#<$ffffff
	bne	L286
	ldy	#$10
	lda	[<L281+pmsg_0],Y
	cmp	#^$ffffff
L286:
	bne	L287
	brl	L10165
L287:
	.line	2104
	ldy	#$10
	lda	[<L281+pmsg_0],Y
	pha
	ldy	#$e
	lda	[<L281+pmsg_0],Y
	pha
	jsl	~~k_dealloc_message_arg
;
;		/*
;		if(pmsg->pheap == (LPVOID)0xFFFFFF)
;		{
;			//k_debug_pointer("k_destory_msg:IRQ MSG:",pmsg);
;			free(pmsg);
;		}
;		else
;			k_mem_deallocate_heap(pmsg);
;		*/
;		k_mem_deallocate_heap(pmsg);
L10165:
	.line	2115
	pei	<L281+pmsg_0+2
	pei	<L281+pmsg_0
	jsl	~~k_mem_deallocate_heap
;	}
	.line	2116
;}
L10164:
	.line	2117
L288:
	lda	<L281+2
	sta	<L281+2+4
	lda	<L281+1
	sta	<L281+1+4
	pld
	tsc
	clc
	adc	#L281+4
	tcs
	rtl
	.endblock	2117
L281	equ	0
L282	equ	1
	ends
	efunc
	.endfunc	2117,1,0
	.line	2117
;
;
;KEYCODE k_getKeyboardChar(SCANCODE sc,int isExt,int isShift)
;{
	.line	2120
	.line	2121
	EVTMAN
	xdef	~~k_getKeyboardChar
	func
	.function	2121
~~k_getKeyboardChar:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L289
	tcs
	phd
	tcd
sc_0	set	4
isExt_0	set	6
isShift_0	set	8
	.block	2121
;	KEYCODE kc = 0;
;
;	if(isShift)
kc_1	set	0
	.sym	kc,0,14,1,8
	.sym	sc,4,14,6,8
	.sym	isExt,6,5,6,16
	.sym	isShift,8,5,6,16
	sep	#$20
	longa	off
	stz	<L290+kc_1
	rep	#$20
	longa	on
	.line	2124
;		kc =  _k_keyCodesShiftSet[sc];
	lda	<L289+isShift_0
	bne	L292
	brl	L10166
L292:
	.line	2125
	lda	<L289+sc_0
	and	#$ff
	sta	<R0
	sep	#$20
	longa	off
	ldx	<R0
	lda	|~~_k_keyCodesShiftSet,X
	sta	<L290+kc_1
	rep	#$20
	longa	on
;	else
	brl	L10167
L10166:
;		kc =  _k_keyCodesSet[sc];
	.line	2127
	lda	<L289+sc_0
	and	#$ff
	sta	<R0
	sep	#$20
	longa	off
	ldx	<R0
	lda	|~~_k_keyCodesSet,X
	sta	<L290+kc_1
	rep	#$20
	longa	on
L10167:
;
;	if(kc == 0)
	.line	2129
;	{
	lda	<L290+kc_1
	and	#$ff
	beq	L293
	brl	L10168
L293:
	.line	2130
;		k_debug_integer("UNMAPPED KEY:",sc);
	.line	2131
	lda	<L289+sc_0
	and	#$ff
	pha
	pea	#^L241
	pea	#<L241
	jsl	~~k_debug_integer
;		k_debug_integer("UNMAPPED isExt:",isExt);
	.line	2132
	pei	<L289+isExt_0
	pea	#^L241+14
	pea	#<L241+14
	jsl	~~k_debug_integer
;		k_debug_integer("UNMAPPED isShift:",isShift);
	.line	2133
	pei	<L289+isShift_0
	pea	#^L241+30
	pea	#<L241+30
	jsl	~~k_debug_integer
;	}
	.line	2134
;	return kc;
L10168:
	.line	2135
	lda	<L290+kc_1
	and	#$ff
L294:
	tay
	lda	<L289+2
	sta	<L289+2+6
	lda	<L289+1
	sta	<L289+1+6
	pld
	tsc
	clc
	adc	#L289+6
	tcs
	tya
	rtl
;}
	.line	2136
	.endblock	2136
L289	equ	5
L290	equ	5
	ends
	efunc
	.endfunc	2136,5,5
	.line	2136
	data
L241:
	db	$55,$4E,$4D,$41,$50,$50,$45,$44,$20,$4B,$45,$59,$3A,$00,$55
	db	$4E,$4D,$41,$50,$50,$45,$44,$20,$69,$73,$45,$78,$74,$3A,$00
	db	$55,$4E,$4D,$41,$50,$50,$45,$44,$20,$69,$73,$53,$68,$69,$66
	db	$74,$3A,$00
	ends
;
	.line	2136
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxeventmanager.c",2120
	xref	~~k_exec_set_process_foreground
	xref	~~k_initialize
	xref	~~k_point_hit_scan
	xref	~~k_point_in_any_nodeslist
	xref	~~k_user_getFocusWindow
	xref	~~k_user_getDesktopWindow
	xref	~~k_getHandleFromWindow
	xref	~~k_getWindowList
	xref	~~k_initializeWindowManager
	xref	~~k_mem_deallocate_heap
	xref	~~k_mem_allocate_heap
	xref	~~k_heap_integrity_check
	xref	~~k_exec_get_current_process
	xref	~~k_exec_set_current_process
	xref	~~k_exec_launchProcess
	xref	~~k_exec_throw_exception
	xref	~~k_initalize_executive
	xref	~~k_debug_strings
	xref	~~k_debug_long
	xref	~~k_debug_integer
	xref	~~k_debug_pointer
	xref	~~k_debug_string
	xref	~~k_nodelist_foreach_data
	xref	~~k_enqueue_with_lock
	xref	~~k_dequeue
	xref	~~k_enqueue
	xref	~~strcpy
	xref	~~memset
	xref	~~memcpy
	xref	~~_system_timer
	udata
~~_k_mouseState
	ds	23
	ends
	udata
~~eventProcess
	ds	1024
	ends
	udata
~~eventProcs
	ds	1024
	ends
	.sym	~~k_exec_set_process_foreground,~~k_exec_set_process_foreground,69,18,0
	.sym	~~k_attach_process_events,~~k_attach_process_events,69,2,0
	.sym	~~k_initialize,~~k_initialize,69,18,0
	.sym	~~_system_timer,~~_system_timer,18,18,32
	.sym	DllMain,0,641,14,32
	.sym	~~DoWndProcs,~~DoWndProcs,65,2,0
	.sym	~~initHD,~~initHD,14,2,8
	.sym	~~THIS_MODULE,~~THIS_MODULE,18,3,32
	.sym	~~_subTick,~~_subTick,16,3,16
	.sym	~~_k_mouseState,~~_k_mouseState,10,3,184,59
	.sym	~~_k_eventQueue,~~_k_eventQueue,138,3,32,7
	.sym	~~_k_bNCLockedFocus,~~_k_bNCLockedFocus,14,3,8
	.sym	~~_k_hLockedFocus,~~_k_hLockedFocus,129,3,32
	.sym	~~_k_system_timer,~~_k_system_timer,18,3,32
	.sym	~~eventProcess,~~eventProcess,1130,3,32,58,256
	.sym	~~eventProcs,~~eventProcs,5217,3,32,256
	.sym	FRESULT,0,5,14,16
	.sym	MKFS_PARM,0,10,14,80,107
	.sym	FILINFO,0,10,14,176,106
	.sym	DIR,0,10,14,352,105
	.sym	FIL,0,10,14,4400,104
	.sym	FFOBJID,0,10,14,128,103
	.sym	FATFS,0,10,14,4472,102
	.sym	LBA_t,0,18,14,32
	.sym	FSIZE_t,0,18,14,32
	.sym	TCHAR,0,14,14,8
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
	.sym	~~_k_keyCodesExtSet,~~_k_keyCodesExtSet,110,2,0,1
	.sym	~~_k_keyCodesShiftSet,~~_k_keyCodesShiftSet,110,2,0,89
	.sym	~~_k_keyCodesSet,~~_k_keyCodesSet,110,2,0,89
	.sym	~~k_send_process_command_message,~~k_send_process_command_message,78,2,0
	.sym	~~k_send_command_message,~~k_send_command_message,78,2,0
	.sym	~~k_send_window_message,~~k_send_window_message,78,2,0
	.sym	~~k_send_message,~~k_send_message,78,2,0
	.sym	~~k_dealloc_message_arg,~~k_dealloc_message_arg,65,2,0
	.sym	~~k_alloc_message_arg,~~k_alloc_message_arg,1089,2,32
	.sym	~~k_isNonClient,~~k_isNonClient,78,2,0
	.sym	~~k_destory_msg,~~k_destory_msg,65,2,0
	.sym	~~k_updateMouseState,~~k_updateMouseState,1098,2,32,16
	.sym	~~k_create_synthetic_window_msg,~~k_create_synthetic_window_msg,1098,2,32,16
	.sym	~~k_create_process_msg,~~k_create_process_msg,1098,2,32,16
	.sym	~~k_create_msg,~~k_create_msg,1098,2,32,16
	.sym	~~k_irq_device_event,~~k_irq_device_event,65,2,0
	.sym	~~k_unattach_events,~~k_unattach_events,69,2,0
	.sym	~~k_attach_events,~~k_attach_events,69,2,0
	.sym	~~k_event_unlock_focus,~~k_event_unlock_focus,1089,2,32
	.sym	~~k_event_get_locked_focus,~~k_event_get_locked_focus,1089,2,32
	.sym	~~k_event_lock_focus_ex,~~k_event_lock_focus_ex,78,2,0
	.sym	~~k_event_lock_focus,~~k_event_lock_focus,78,2,0
	.sym	~~k_signal_sol_event,~~k_signal_sol_event,65,2,0
	.sym	~~k_event_loop,~~k_event_loop,65,2,0
	.sym	~~k_do_processes,~~k_do_processes,65,2,0
	.sym	~~k_do_procs,~~k_do_procs,65,2,0
	.sym	~~IdleProc,~~IdleProc,65,2,0
	.sym	~~k_getKeyboardChar,~~k_getKeyboardChar,78,2,0
	.sym	~~k_initalize_event_manager,~~k_initalize_event_manager,65,2,0
	.sym	~~k_get_systemtimer,~~k_get_systemtimer,82,2,0
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
	.sym	~~k_point_hit_scan,~~k_point_hit_scan,1098,18,32,5
	.sym	~~k_point_in_any_nodeslist,~~k_point_in_any_nodeslist,1098,18,32,5
	.sym	~~k_user_getFocusWindow,~~k_user_getFocusWindow,1089,18,32
	.sym	~~k_user_getDesktopWindow,~~k_user_getDesktopWindow,1089,18,32
	.sym	~~k_getHandleFromWindow,~~k_getHandleFromWindow,1089,18,32
	.sym	~~k_getWindowList,~~k_getWindowList,1098,18,32,5
	.sym	~~k_initializeWindowManager,~~k_initializeWindowManager,78,18,0
	.sym	PCUR_PALETTE_MAP,0,138,14,32,54
	.sym	CUR_PALETTE_MAP,0,10,14,400,54
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
	.sym	~~k_exec_set_current_process,~~k_exec_set_current_process,1098,18,32,20
	.sym	~~k_exec_launchProcess,~~k_exec_launchProcess,1098,18,32,20
	.sym	~~k_exec_throw_exception,~~k_exec_throw_exception,65,18,0
	.sym	~~k_initalize_executive,~~k_initalize_executive,65,18,0
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
	.sym	~~k_debug_long,~~k_debug_long,65,18,0
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
	.sym	~~k_nodelist_foreach_data,~~k_nodelist_foreach_data,65,18,0
	.sym	FOREACHNODEUNTIL,0,654,14,32
	.sym	FOREACHNODE,0,641,14,32
	.sym	~~k_enqueue_with_lock,~~k_enqueue_with_lock,65,18,0
	.sym	~~k_dequeue,~~k_dequeue,1089,18,32
	.sym	~~k_enqueue,~~k_enqueue,65,18,0
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
	.sym	~~strcpy,~~strcpy,1102,18,32
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

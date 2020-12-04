;:ts=8
R0	equ	1
R1	equ	5
R2	equ	9
R3	equ	13
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxguiV2.c",0
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxguiV2.c",1
;#include "fxmemorymanager.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxmemorymanager.h",0
	.line	39
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxguiV2.c",2
;//#include "fxstartup.h"
;#include "fxfont.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxfont.h",0
	.line	64
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxguiV2.c",4
;#include "fxdrawing.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxdrawing.h",0
	.line	20
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxguiV2.c",5
;#include "fxgui.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxgui.h",0
	.line	264
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxguiV2.c",6
;
;
;//#include "fbtestfnt.h"
;//#pragma section CODE=FCODE,OFFSET $15:0000
;//extern char _END_UDATA;
;//void *heap_start=(void*)&_END_UDATA,*heap_end=(void*)(&_END_UDATA + 0x1000);
;
;#define BITMAP_SEG0   ((char FAR*)0xB00000)
;#define BITMAP_SEG1   ((char FAR*)0xB10000)
;#define BITMAP_SEG2   ((char FAR*)0xB20000)
;#define BITMAP_SEG3   ((char FAR*)0xB30000)
;#define BITMAP_SEG4   ((char FAR*)0xB40000)
;
;#define BITMAP0_SEG0   ((char FAR*)0xB00000)
;#define BITMAP0_SEG1   ((char FAR*)0xB10000)
;#define BITMAP0_SEG2   ((char FAR*)0xB20000)
;#define BITMAP0_SEG3   ((char FAR*)0xB30000)
;#define BITMAP0_SEG4   ((char FAR*)0xB40000)
;#define BITMAP1_SEG0   ((char FAR*)0xB00000)
;#define BITMAP1_SEG1   ((char FAR*)0xB10000)
;#define BITMAP1_SEG2   ((char FAR*)0xB20000)
;#define BITMAP1_SEG3   ((char FAR*)0xB30000)
;#define BITMAP1_SEG4   ((char FAR*)0xB40000)
;
;
;static CHAR FAR TEXT_FG_COLORS[] =
	data
~~TEXT_FG_COLORS:
;{
;	0x00,0x00,0x00,0xFF,
	db	$0,$0,$0,$FF
;	0x00,0x00,0x80,0xFF,
	db	$0,$0,$80,$FF
;	0x00,0x80,0x00,0xFF,
	db	$0,$80,$0,$FF
;	0x80,0x00,0x00,0xFF,
	db	$80,$0,$0,$FF
;	0x00,0x80,0x80,0xFF,
	db	$0,$80,$80,$FF
;	0x80,0x80,0x00,0xFF,
	db	$80,$80,$0,$FF
;	0x80,0x00,0x80,0xFF,
	db	$80,$0,$80,$FF
;	0x80,0x80,0x80,0xFF,
	db	$80,$80,$80,$FF
;	0x00,0x45,0xFF,0xFF,
	db	$0,$45,$FF,$FF
;	0x13,0x45,0x8B,0xFF,
	db	$13,$45,$8B,$FF
;	0x00,0x00,0x20,0xFF,
	db	$0,$0,$20,$FF
;	0x00,0x20,0x00,0xFF,
	db	$0,$20,$0,$FF
;	0x20,0x00,0x00,0xFF,
	db	$20,$0,$0,$FF
;	0x20,0x20,0x20,0xFF,
	db	$20,$20,$20,$FF
;	0x40,0x40,0x40,0xFF,
	db	$40,$40,$40,$FF
;	0xFF,0xFF,0xFF,0xFF,
	db	$FF,$FF,$FF,$FF
;
;};
	ends
;
;static CHAR FAR TEXT_BG_COLORS[] =
	data
~~TEXT_BG_COLORS:
;{
;
;	0x00,0x00,0x00,0xFF,
	db	$0,$0,$0,$FF
;	0x00,0x00,0x80,0xFF,
	db	$0,$0,$80,$FF
;	0x00,0x80,0x00,0xFF,
	db	$0,$80,$0,$FF
;	0x80,0x00,0x00,0xFF,
	db	$80,$0,$0,$FF
;	0x00,0x20,0x20,0xFF,
	db	$0,$20,$20,$FF
;	0x20,0x20,0x00,0xFF,
	db	$20,$20,$0,$FF
;	0x20,0x00,0x20,0xFF,
	db	$20,$0,$20,$FF
;	0x20,0x20,0x20,0xFF,
	db	$20,$20,$20,$FF
;	0x1E,0x69,0xD2,0xFF,
	db	$1E,$69,$D2,$FF
;	0x13,0x45,0x8B,0xFF,
	db	$13,$45,$8B,$FF
;	0x00,0x00,0x20,0xFF,
	db	$0,$0,$20,$FF
;	0x00,0x20,0x00,0xFF,
	db	$0,$20,$0,$FF
;	0x40,0x00,0x00,0xFF,
	db	$40,$0,$0,$FF
;	0x10,0x10,0x10,0xFF,
	db	$10,$10,$10,$FF
;	0x40,0x40,0x40,0xFF,
	db	$40,$40,$40,$FF
;	0xFF,0xFF,0xFF,0xFF,
	db	$FF,$FF,$FF,$FF
;};
	ends
;
;CHAR FAR MOUSE_POINTER_HELP[] =
	data
	xdef	~~MOUSE_POINTER_HELP
~~MOUSE_POINTER_HELP:
;{
;	0x00,0x00,0x00,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x00,0x00,0x00,0x00,
	db	$0,$0,$0,$1,$1,$1,$1,$1,$1,$1
	db	$1,$1,$0,$0,$0,$0
;	0x00,0x00,0x01,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x01,0x00,0x00,0x00,
	db	$0,$0,$1,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	db	$FF,$FF,$1,$0,$0,$0
;	0x00,0x01,0xFF,0xFF,0xFF,0x01,0x01,0x01,0x01,0x01,0xFF,0xFF,0xFF,0x01,0x00,0x00,
	db	$0,$1,$FF,$FF,$FF,$1,$1,$1,$1,$1
	db	$FF,$FF,$FF,$1,$0,$0
;	0x00,0x01,0xFF,0xFF,0x01,0x01,0x00,0x00,0x00,0x01,0xFF,0xFF,0xFF,0x01,0x00,0x00,
	db	$0,$1,$FF,$FF,$1,$1,$0,$0,$0,$1
	db	$FF,$FF,$FF,$1,$0,$0
;	0x00,0x01,0xFF,0xFF,0x01,0x00,0x00,0x00,0x00,0x01,0xFF,0xFF,0xFF,0x01,0x00,0x00,
	db	$0,$1,$FF,$FF,$1,$0,$0,$0,$0,$1
	db	$FF,$FF,$FF,$1,$0,$0
;	0x00,0x01,0xFF,0xFF,0x01,0x00,0x00,0x00,0x00,0x01,0xFF,0xFF,0xFF,0x01,0x00,0x00,
	db	$0,$1,$FF,$FF,$1,$0,$0,$0,$0,$1
	db	$FF,$FF,$FF,$1,$0,$0
;	0x00,0x01,0x01,0x01,0x01,0x00,0x00,0x00,0x00,0x01,0xFF,0xFF,0xFF,0x01,0x00,0x00,
	db	$0,$1,$1,$1,$1,$0,$0,$0,$0,$1
	db	$FF,$FF,$FF,$1,$0,$0
;	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x01,0xFF,0xFF,0xFF,0x01,0x00,0x00,0x00,
	db	$0,$0,$0,$0,$0,$0,$0,$1,$1,$FF
	db	$FF,$FF,$1,$0,$0,$0
;	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0xFF,0xFF,0xFF,0x01,0x00,0x00,0x00,0x00,
	db	$0,$0,$0,$0,$0,$0,$0,$1,$FF,$FF
	db	$FF,$1,$0,$0,$0,$0
;	0x00,0x00,0x00,0x00,0x00,0x01,0x01,0x01,0xFF,0xFF,0xFF,0x00,0x00,0x00,0x00,0x00,
	db	$0,$0,$0,$0,$0,$1,$1,$1,$FF,$FF
	db	$FF,$0,$0,$0,$0,$0
;	0x00,0x00,0x00,0x00,0x00,0x01,0xFF,0xFF,0xFF,0x01,0x01,0x00,0x00,0x00,0x00,0x00,
	db	$0,$0,$0,$0,$0,$1,$FF,$FF,$FF,$1
	db	$1,$0,$0,$0,$0,$0
;	0x00,0x00,0x00,0x00,0x00,0x01,0xFF,0xFF,0xFF,0x01,0x00,0x00,0x00,0x00,0x00,0x00,
	db	$0,$0,$0,$0,$0,$1,$FF,$FF,$FF,$1
	db	$0,$0,$0,$0,$0,$0
;	0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x01,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	db	$0,$0,$0,$0,$0,$0,$1,$1,$1,$0
	db	$0,$0,$0,$0,$0,$0
;	0x00,0x00,0x00,0x00,0x00,0x01,0xFF,0xFF,0xFF,0x01,0x00,0x00,0x00,0x00,0x00,0x00,
	db	$0,$0,$0,$0,$0,$1,$FF,$FF,$FF,$1
	db	$0,$0,$0,$0,$0,$0
;	0x00,0x00,0x00,0x00,0x00,0x01,0xFF,0xFF,0xFF,0x01,0x00,0x00,0x00,0x00,0x00,0x00,
	db	$0,$0,$0,$0,$0,$1,$FF,$FF,$FF,$1
	db	$0,$0,$0,$0,$0,$0
;	0x00,0x00,0x00,0x00,0x00,0x01,0x01,0x01,0x01,0x01,0x00,0x00,0x00,0x00,0x00,0x00
	db	$0,$0,$0,$0,$0,$1,$1,$1,$1,$1
	db	$0,$0,$0,$0,$0
;};
	db	$0
	ends
;
;CHAR FAR MOUSE_POINTER_HOURGLASS[] =
	data
	xdef	~~MOUSE_POINTER_HOURGLASS
~~MOUSE_POINTER_HOURGLASS:
;{
;		0x00,0x00,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x00,0x00,
	db	$0,$0,$1,$1,$1,$1,$1,$1,$1,$1
	db	$1,$1,$1,$1,$0,$0
;		0x00,0x00,0x01,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x01,0x00,0x00,
	db	$0,$0,$1,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	db	$FF,$FF,$FF,$1,$0,$0
;		0x00,0x00,0x01,0x01,0xFF,0x55,0x55,0x55,0x55,0x55,0x55,0xFF,0x01,0x00,0x00,0x00,
	db	$0,$0,$1,$1,$FF,$55,$55,$55,$55,$55
	db	$55,$FF,$1,$0,$0,$0
;		0x00,0x00,0x00,0x01,0xFF,0xFF,0x55,0x55,0x55,0x55,0xFF,0xFF,0x01,0x00,0x00,0x00,
	db	$0,$0,$0,$1,$FF,$FF,$55,$55,$55,$55
	db	$FF,$FF,$1,$0,$0,$0
;		0x00,0x00,0x00,0x00,0x01,0xFF,0xFF,0x55,0x55,0xFF,0xFF,0x01,0x00,0x00,0x00,0x00,
	db	$0,$0,$0,$0,$1,$FF,$FF,$55,$55,$FF
	db	$FF,$1,$0,$0,$0,$0
;		0x00,0x00,0x00,0x00,0x00,0x01,0xFF,0x55,0x55,0xFF,0x01,0x00,0x00,0x00,0x00,0x00,
	db	$0,$0,$0,$0,$0,$1,$FF,$55,$55,$FF
	db	$1,$0,$0,$0,$0,$0
;		0x00,0x00,0x00,0x00,0x00,0x00,0x01,0xFF,0x55,0x01,0x00,0x00,0x00,0x00,0x00,0x00,
	db	$0,$0,$0,$0,$0,$0,$1,$FF,$55,$1
	db	$0,$0,$0,$0,$0,$0
;		0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x55,0xFF,0x01,0x00,0x00,0x00,0x00,0x00,0x00,
	db	$0,$0,$0,$0,$0,$0,$1,$55,$FF,$1
	db	$0,$0,$0,$0,$0,$0
;		0x00,0x00,0x00,0x00,0x00,0x00,0x01,0xFF,0x55,0x01,0x00,0x00,0x00,0x00,0x00,0x00,
	db	$0,$0,$0,$0,$0,$0,$1,$FF,$55,$1
	db	$0,$0,$0,$0,$0,$0
;		0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x55,0xFF,0x01,0x00,0x00,0x00,0x00,0x00,0x00,
	db	$0,$0,$0,$0,$0,$0,$1,$55,$FF,$1
	db	$0,$0,$0,$0,$0,$0
;		0x00,0x00,0x00,0x00,0x00,0x00,0x01,0xFF,0x55,0x01,0x00,0x00,0x00,0x00,0x00,0x00,
	db	$0,$0,$0,$0,$0,$0,$1,$FF,$55,$1
	db	$0,$0,$0,$0,$0,$0
;		0x00,0x00,0x00,0x00,0x00,0x01,0xFF,0x55,0xFF,0xFF,0x01,0x00,0x00,0x00,0x00,0x00,
	db	$0,$0,$0,$0,$0,$1,$FF,$55,$FF,$FF
	db	$1,$0,$0,$0,$0,$0
;		0x00,0x00,0x00,0x00,0x01,0xFF,0x55,0x55,0x55,0x55,0xFF,0x01,0x00,0x00,0x00,0x00,
	db	$0,$0,$0,$0,$1,$FF,$55,$55,$55,$55
	db	$FF,$1,$0,$0,$0,$0
;		0x00,0x00,0x01,0x01,0xFF,0x55,0x55,0x55,0x55,0x55,0x55,0xFF,0x01,0x00,0x00,0x00,
	db	$0,$0,$1,$1,$FF,$55,$55,$55,$55,$55
	db	$55,$FF,$1,$0,$0,$0
;		0x00,0x00,0x01,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x01,0x00,0x00,
	db	$0,$0,$1,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	db	$FF,$FF,$FF,$1,$0,$0
;		0x00,0x00,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x00,0x00
	db	$0,$0,$1,$1,$1,$1,$1,$1,$1,$1
	db	$1,$1,$1,$1,$0
;};
	db	$0
	ends
;
;CHAR FAR MOUSE_POINTER_ARROW[] =
	data
	xdef	~~MOUSE_POINTER_ARROW
~~MOUSE_POINTER_ARROW:
;{
;	0xFF,0x55,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	db	$FF,$55,$0,$0,$0,$0,$0,$0,$0,$0
	db	$0,$0,$0,$0,$0,$0
;	0x01,0xFF,0x55,0x55,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	db	$1,$FF,$55,$55,$0,$0,$0,$0,$0,$0
	db	$0,$0,$0,$0,$0,$0
;	0x00,0x01,0xFF,0xFF,0x55,0x55,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	db	$0,$1,$FF,$FF,$55,$55,$0,$0,$0,$0
	db	$0,$0,$0,$0,$0,$0
;	0x00,0x01,0xFF,0xFF,0xFF,0xFF,0x55,0x55,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	db	$0,$1,$FF,$FF,$FF,$FF,$55,$55,$0,$0
	db	$0,$0,$0,$0,$0,$0
;	0x00,0x00,0x01,0xFF,0xFF,0xFF,0xFF,0xFF,0x55,0x55,0x00,0x00,0x00,0x00,0x00,0x00,
	db	$0,$0,$1,$FF,$FF,$FF,$FF,$FF,$55,$55
	db	$0,$0,$0,$0,$0,$0
;	0x00,0x00,0x01,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,
	db	$0,$0,$1,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	db	$0,$0,$0,$0,$0,$0
;	0x00,0x00,0x00,0x01,0xFF,0xFF,0xFF,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	db	$0,$0,$0,$1,$FF,$FF,$FF,$FF,$0,$0
	db	$0,$0,$0,$0,$0,$0
;	0x00,0x00,0x00,0x01,0xFF,0xFF,0xFF,0xFF,0x55,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	db	$0,$0,$0,$1,$FF,$FF,$FF,$FF,$55,$0
	db	$0,$0,$0,$0,$0,$0
;	0x00,0x00,0x00,0x00,0x01,0xFF,0x00,0x01,0xFF,0x55,0x00,0x00,0x00,0x00,0x00,0x00,
	db	$0,$0,$0,$0,$1,$FF,$0,$1,$FF,$55
	db	$0,$0,$0,$0,$0,$0
;	0x00,0x00,0x00,0x00,0x01,0xFF,0x00,0x00,0x01,0xFF,0x55,0x00,0x00,0x00,0x00,0x00,
	db	$0,$0,$0,$0,$1,$FF,$0,$0,$1,$FF
	db	$55,$0,$0,$0,$0,$0
;	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0xFF,0x55,0x00,0x00,0x00,0x00,
	db	$0,$0,$0,$0,$0,$0,$0,$0,$0,$1
	db	$FF,$55,$0,$0,$0,$0
;	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0xFF,0x00,0x00,0x00,0x00,
	db	$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
	db	$1,$FF,$0,$0,$0,$0
;	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	db	$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
	db	$0,$0,$0,$0,$0,$0
;	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	db	$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
	db	$0,$0,$0,$0,$0,$0
;	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	db	$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
	db	$0,$0,$0,$0,$0,$0
;	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	db	$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
	db	$0,$0,$0,$0,$0
;};
	db	$0
	ends
;
;CHAR FAR MOUSE_POINTER_BLOCK[] =
	data
	xdef	~~MOUSE_POINTER_BLOCK
~~MOUSE_POINTER_BLOCK:
;{
;	0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
	db	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	db	$FF,$FF,$FF,$FF,$FF,$FF
;	0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
	db	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	db	$FF,$FF,$FF,$FF,$FF,$FF
;	0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
	db	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	db	$FF,$FF,$FF,$FF,$FF,$FF
;	0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
	db	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	db	$FF,$FF,$FF,$FF,$FF,$FF
;	0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
	db	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	db	$FF,$FF,$FF,$FF,$FF,$FF
;	0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
	db	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	db	$FF,$FF,$FF,$FF,$FF,$FF
;	0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
	db	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	db	$FF,$FF,$FF,$FF,$FF,$FF
;	0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
	db	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	db	$FF,$FF,$FF,$FF,$FF,$FF
;	0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
	db	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	db	$FF,$FF,$FF,$FF,$FF,$FF
;	0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
	db	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	db	$FF,$FF,$FF,$FF,$FF,$FF
;	0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
	db	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	db	$FF,$FF,$FF,$FF,$FF,$FF
;	0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
	db	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	db	$FF,$FF,$FF,$FF,$FF,$FF
;	0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
	db	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	db	$FF,$FF,$FF,$FF,$FF,$FF
;	0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
	db	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	db	$FF,$FF,$FF,$FF,$FF,$FF
;	0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
	db	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	db	$FF,$FF,$FF,$FF,$FF,$FF
;	0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF
	db	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	db	$FF,$FF,$FF,$FF,$FF
;};
	db	$FF
	ends
;
;CHAR FAR MOUSE_POINTER_RESIZE[] =
	data
	xdef	~~MOUSE_POINTER_RESIZE
~~MOUSE_POINTER_RESIZE:
;{
;	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	db	$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
	db	$0,$0,$0,$0,$0,$0
;	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	db	$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
	db	$0,$0,$0,$0,$0,$0
;	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	db	$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
	db	$0,$0,$0,$0,$0,$0
;	0x00,0x00,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	db	$0,$0,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$0
	db	$0,$0,$0,$0,$0,$0
;	0x00,0x00,0xFF,0xFF,0x01,0x01,0x01,0x01,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	db	$0,$0,$FF,$FF,$1,$1,$1,$1,$1,$0
	db	$0,$0,$0,$0,$0,$0
;	0x00,0x00,0xFF,0x01,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	db	$0,$0,$FF,$1,$FF,$0,$0,$0,$0,$0
	db	$0,$0,$0,$0,$0,$0
;	0x00,0x00,0xFF,0x01,0x00,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	db	$0,$0,$FF,$1,$0,$FF,$0,$0,$0,$0
	db	$0,$0,$0,$0,$0,$0
;	0x00,0x00,0xFF,0x01,0x00,0x00,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	db	$0,$0,$FF,$1,$0,$0,$FF,$0,$0,$0
	db	$0,$0,$0,$0,$0,$0
;	0x00,0x00,0xFF,0x01,0x00,0x00,0x00,0xFF,0x00,0x00,0x00,0x00,0x00,0xFF,0x01,0x00,
	db	$0,$0,$FF,$1,$0,$0,$0,$FF,$0,$0
	db	$0,$0,$0,$FF,$1,$0
;	0x00,0x00,0xFF,0x01,0x00,0x00,0x00,0x00,0xFF,0x00,0x00,0x00,0x00,0xFF,0x01,0x00,
	db	$0,$0,$FF,$1,$0,$0,$0,$0,$FF,$0
	db	$0,$0,$0,$FF,$1,$0
;	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xFF,0x00,0x00,0x00,0xFF,0x01,0x00,
	db	$0,$0,$0,$0,$0,$0,$0,$0,$0,$FF
	db	$0,$0,$0,$FF,$1,$0
;	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xFF,0x00,0x00,0xFF,0x01,0x00,
	db	$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
	db	$FF,$0,$0,$FF,$1,$0
;	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xFF,0x00,0xFF,0x01,0x00,
	db	$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
	db	$0,$FF,$0,$FF,$1,$0
;	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xFF,0xFF,0x01,0x00,
	db	$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
	db	$0,$0,$FF,$FF,$1,$0
;	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x01,0x00,
	db	$0,$0,$0,$0,$0,$0,$0,$FF,$FF,$FF
	db	$FF,$FF,$FF,$FF,$1,$0
;	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x00,
	db	$0,$0,$0,$0,$0,$0,$0,$1,$1,$1
	db	$1,$1,$1,$1,$1,$0
;};
	ends
;
;CHAR FAR MOUSE_POINTER_EMPTY[] =
	data
	xdef	~~MOUSE_POINTER_EMPTY
~~MOUSE_POINTER_EMPTY:
;{
;	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	db	$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
	db	$0,$0,$0,$0,$0,$0
;	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	db	$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
	db	$0,$0,$0,$0,$0,$0
;	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	db	$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
	db	$0,$0,$0,$0,$0,$0
;	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	db	$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
	db	$0,$0,$0,$0,$0,$0
;	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	db	$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
	db	$0,$0,$0,$0,$0,$0
;	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	db	$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
	db	$0,$0,$0,$0,$0,$0
;	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	db	$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
	db	$0,$0,$0,$0,$0,$0
;	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	db	$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
	db	$0,$0,$0,$0,$0,$0
;	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	db	$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
	db	$0,$0,$0,$0,$0,$0
;	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	db	$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
	db	$0,$0,$0,$0,$0,$0
;	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	db	$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
	db	$0,$0,$0,$0,$0,$0
;	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	db	$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
	db	$0,$0,$0,$0,$0,$0
;	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	db	$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
	db	$0,$0,$0,$0,$0,$0
;	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	db	$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
	db	$0,$0,$0,$0,$0,$0
;	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	db	$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
	db	$0,$0,$0,$0,$0,$0
;	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	db	$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
	db	$0,$0,$0,$0,$0
;};
	db	$0
	ends
;
;static CHAR BG_FILL_LINE_ODD[] =
	data
~~BG_FILL_LINE_ODD:
;{
;0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,
	db	$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
;0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,
	db	$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
;0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,
	db	$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
;0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,
	db	$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
;0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,
	db	$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
;0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,
	db	$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
;0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,
	db	$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
;0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,
	db	$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
;0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,
	db	$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
;0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA
	db	$AA,$AA,$AA,$AA,$AA,$AA,$AA
;};
	db	$AA
	ends
;
;static CHAR BG_FILL_LINE_EVEN[] =
	data
~~BG_FILL_LINE_EVEN:
;{
;0x55,0x55,0x55,0x55,0x55,0x55,0x55,0x55,
	db	$55,$55,$55,$55,$55,$55,$55,$55
;0x55,0x55,0x55,0x55,0x55,0x55,0x55,0x55,
	db	$55,$55,$55,$55,$55,$55,$55,$55
;0x55,0x55,0x55,0x55,0x55,0x55,0x55,0x55,
	db	$55,$55,$55,$55,$55,$55,$55,$55
;0x55,0x55,0x55,0x55,0x55,0x55,0x55,0x55,
	db	$55,$55,$55,$55,$55,$55,$55,$55
;0x55,0x55,0x55,0x55,0x55,0x55,0x55,0x55,
	db	$55,$55,$55,$55,$55,$55,$55,$55
;0x55,0x55,0x55,0x55,0x55,0x55,0x55,0x55,
	db	$55,$55,$55,$55,$55,$55,$55,$55
;0x55,0x55,0x55,0x55,0x55,0x55,0x55,0x55,
	db	$55,$55,$55,$55,$55,$55,$55,$55
;0x55,0x55,0x55,0x55,0x55,0x55,0x55,0x55,
	db	$55,$55,$55,$55,$55,$55,$55,$55
;0x55,0x55,0x55,0x55,0x55,0x55,0x55,0x55,
	db	$55,$55,$55,$55,$55,$55,$55,$55
;0x55,0x55,0x55,0x55,0x55,0x55,0x55,0x55
	db	$55,$55,$55,$55,$55,$55,$55
;};
	db	$55
	ends
;
;
;static CUR_PALETTE_MAP _k_currentPalatte;
;
;char FAR buffer[32];
;char FAR strbuf[32];
;//char FAR spinner[] = {'\\','|','/','+'};
;
;char FAR *version_title;
;
;//int g_key_index = 0;
;
;//typedef void (*C256Task)(HANDLE console,void FAR* arg);
;
;//C256Task tasks[2];
;//HANDLE consoles[2];
;
;//#define GRPH_LUT0_PTR	((char FAR*)0xAF2000)
;
;
;
;#define GRP_LUT_BASE_ADDR GRPH_LUT0_PTR
;
;
;int 	FAR _k_window_index = 0;
	data
	xdef	~~_k_window_index
~~_k_window_index:
	dw	$0
	ends
;WINDOW 	FAR _k_window_list[10];
;
;
;CLICKABLE FAR clickList[CHKLIST_MAX];
;PCLICKABLE FAR hitList[CHKLIST_MAX];
;
;
;static PFXNODE _k_WindowObject_nodes = NULL;
	data
~~_k_WindowObject_nodes:
	dl	$0
	ends
;static PFXNODE _k_WindowHit_nodes 	 = NULL;
	data
~~_k_WindowHit_nodes:
	dl	$0
	ends
;
;
;int cop_index = 0;
	data
	xdef	~~cop_index
~~cop_index:
	dw	$0
	ends
;
;#pragma section CODE=GUI,offset $3:0000
GUI	section	offset $3:0000
	ends
;
;
;void k_set_rect(PRECT prect,int x,int y, int width,int height)
;{
	.line	262
	.line	263
	GUI
	xdef	~~k_set_rect
	func
	.function	263
~~k_set_rect:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L2
	tcs
	phd
	tcd
prect_0	set	4
x_0	set	8
y_0	set	10
width_0	set	12
height_0	set	14
	.block	263
;	if(prect)
	.sym	prect,4,138,6,32,25
	.sym	x,8,5,6,16
	.sym	y,10,5,6,16
	.sym	width,12,5,6,16
	.sym	height,14,5,6,16
	.line	264
;	{
	lda	<L2+prect_0
	ora	<L2+prect_0+2
	bne	L5
	brl	L10001
L5:
	.line	265
;		prect->x = x;
	.line	266
	lda	<L2+x_0
	sta	[<L2+prect_0]
;		prect->y = y;
	.line	267
	lda	<L2+y_0
	ldy	#$2
	sta	[<L2+prect_0],Y
;		prect->width = width;
	.line	268
	lda	<L2+width_0
	ldy	#$4
	sta	[<L2+prect_0],Y
;		prect->height = height;
	.line	269
	lda	<L2+height_0
	ldy	#$6
	sta	[<L2+prect_0],Y
;	}
	.line	270
;}
L10001:
	.line	271
L6:
	lda	<L2+2
	sta	<L2+2+12
	lda	<L2+1
	sta	<L2+1+12
	pld
	tsc
	clc
	adc	#L2+12
	tcs
	rtl
	.endblock	271
L2	equ	0
L3	equ	1
	ends
	efunc
	.endfunc	271,1,0
	.line	271
;
;BOOL k_is_inside_rect(PRECT prect,int dx,int dy)
;{
	.line	273
	.line	274
	GUI
	xdef	~~k_is_inside_rect
	func
	.function	274
~~k_is_inside_rect:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L7
	tcs
	phd
	tcd
prect_0	set	4
dx_0	set	8
dy_0	set	10
	.block	274
;	BOOL bRet = FALSE;
;
;	if((dx > prect->x) && (dx < (prect->x + prect->width)))
bRet_1	set	0
	.sym	bRet,0,14,1,8
	.sym	prect,4,138,6,32,25
	.sym	dx,8,5,6,16
	.sym	dy,10,5,6,16
	sep	#$20
	longa	off
	stz	<L8+bRet_1
	rep	#$20
	longa	on
	.line	277
;	{
	sec
	lda	[<L7+prect_0]
	sbc	<L7+dx_0
	bvs	L10
	eor	#$8000
L10:
	bpl	L11
	brl	L10002
L11:
	clc
	lda	[<L7+prect_0]
	ldy	#$4
	adc	[<L7+prect_0],Y
	sta	<R0
	sec
	lda	<L7+dx_0
	sbc	<R0
	bvs	L12
	eor	#$8000
L12:
	bpl	L13
	brl	L10002
L13:
	.line	278
;		if((dy > prect->y) && (dy < (prect->y + prect->height)))
	.line	279
;		{
	sec
	ldy	#$2
	lda	[<L7+prect_0],Y
	sbc	<L7+dy_0
	bvs	L14
	eor	#$8000
L14:
	bpl	L15
	brl	L10003
L15:
	clc
	ldy	#$2
	lda	[<L7+prect_0],Y
	ldy	#$6
	adc	[<L7+prect_0],Y
	sta	<R0
	sec
	lda	<L7+dy_0
	sbc	<R0
	bvs	L16
	eor	#$8000
L16:
	bpl	L17
	brl	L10003
L17:
	.line	280
;			bRet = TRUE;
	.line	281
	sep	#$20
	longa	off
	lda	#$1
	sta	<L8+bRet_1
	rep	#$20
	longa	on
;		}
	.line	282
;	}
L10003:
	.line	283
;
;	return bRet;
L10002:
	.line	285
	lda	<L8+bRet_1
	and	#$ff
L18:
	tay
	lda	<L7+2
	sta	<L7+2+8
	lda	<L7+1
	sta	<L7+1+8
	pld
	tsc
	clc
	adc	#L7+8
	tcs
	tya
	rtl
;}
	.line	286
	.endblock	286
L7	equ	5
L8	equ	5
	ends
	efunc
	.endfunc	286,5,5
	.line	286
;
;LONG k_gui_get_pixel_offset(int x,int y)
;{
	.line	288
	.line	289
	GUI
	xdef	~~k_gui_get_pixel_offset
	func
	.function	289
~~k_gui_get_pixel_offset:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L19
	tcs
	phd
	tcd
x_0	set	4
y_0	set	6
	.block	289
;	//return (LPVOID)(( ((long)y) * (640L)) + ((long)x) );
;	return k_gui_get_pixel_offset_width(x,y,640);
	.sym	x,4,5,6,16
	.sym	y,6,5,6,16
	.line	291
	pea	#<$280
	pei	<L19+y_0
	pei	<L19+x_0
	jsl	~~k_gui_get_pixel_offset_width
	sta	<R0
	stx	<R0+2
	ldx	<R0+2
	lda	<R0
L22:
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
	.line	292
	.endblock	292
L19	equ	4
L20	equ	5
	ends
	efunc
	.endfunc	292,5,4
	.line	292
;
;LONG k_gui_get_pixel_offset_width(int x,int y,int width)
;{
	.line	294
	.line	295
	GUI
	xdef	~~k_gui_get_pixel_offset_width
	func
	.function	295
~~k_gui_get_pixel_offset_width:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L23
	tcs
	phd
	tcd
x_0	set	4
y_0	set	6
width_0	set	8
	.block	295
;	return (LONG)(( ((long)y) * ((long)width)) + ((long)x) );
	.sym	x,4,5,6,16
	.sym	y,6,5,6,16
	.sym	width,8,5,6,16
	.line	296
	ldy	#$0
	lda	<L23+x_0
	bpl	L26
	dey
L26:
	sta	<R0
	sty	<R0+2
	ldy	#$0
	lda	<L23+width_0
	bpl	L27
	dey
L27:
	sta	<R1
	sty	<R1+2
	ldy	#$0
	lda	<L23+y_0
	bpl	L28
	dey
L28:
	sta	<R2
	sty	<R2+2
	pei	<R1+2
	pei	<R1
	pei	<R2+2
	pei	<R2
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R1
	stx	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<R2
	lda	<R1+2
	adc	<R0+2
	sta	<R2+2
	ldx	<R2+2
	lda	<R2
L29:
	tay
	lda	<L23+2
	sta	<L23+2+6
	lda	<L23+1
	sta	<L23+1+6
	pld
	tsc
	clc
	adc	#L23+6
	tcs
	tya
	rtl
;}
	.line	297
	.endblock	297
L23	equ	12
L24	equ	13
	ends
	efunc
	.endfunc	297,13,12
	.line	297
;
;void k_drawPixel(char fcolor,char fcolor2,char fcolor3)
;{
	.line	299
	.line	300
	GUI
	xdef	~~k_drawPixel
	func
	.function	300
~~k_drawPixel:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L30
	tcs
	phd
	tcd
fcolor_0	set	4
fcolor2_0	set	6
fcolor3_0	set	8
	.block	300
;	long vbuffer = 0xB00000;
;	long ki = 0;
;	long tt = 0;
;	char mask = 0x00;
;	/*
;	unsigned int pos = 0;
;	
;	pos = ((640L * ploty) + plotx);
;	buffer[pos] = 0x01;
;	return;
;	*/
;
;}
vbuffer_1	set	0
ki_1	set	4
tt_1	set	8
mask_1	set	12
	.sym	vbuffer,0,7,1,32
	.sym	ki,4,7,1,32
	.sym	tt,8,7,1,32
	.sym	mask,12,14,1,8
	.sym	fcolor,4,14,6,8
	.sym	fcolor2,6,14,6,8
	.sym	fcolor3,8,14,6,8
	lda	#$0
	sta	<L31+vbuffer_1
	lda	#$b0
	sta	<L31+vbuffer_1+2
	stz	<L31+ki_1
	stz	<L31+ki_1+2
	stz	<L31+tt_1
	stz	<L31+tt_1+2
	sep	#$20
	longa	off
	stz	<L31+mask_1
	rep	#$20
	longa	on
	.line	313
L33:
	lda	<L30+2
	sta	<L30+2+6
	lda	<L30+1
	sta	<L30+1+6
	pld
	tsc
	clc
	adc	#L30+6
	tcs
	rtl
	.endblock	313
L30	equ	13
L31	equ	1
	ends
	efunc
	.endfunc	313,1,13
	.line	313
;
;void k_set_foreground_palette(char paletteId)
;{
	.line	315
	.line	316
	GUI
	xdef	~~k_set_foreground_palette
	func
	.function	316
~~k_set_foreground_palette:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L34
	tcs
	phd
	tcd
paletteId_0	set	4
	.block	316
;	FG_CHAR_LUT_PTR[0] = paletteId;
	.sym	paletteId,4,14,6,8
	.line	317
	sep	#$20
	longa	off
	lda	<L34+paletteId_0
	sta	>11476800
	rep	#$20
	longa	on
;}
	.line	318
L37:
	lda	<L34+2
	sta	<L34+2+2
	lda	<L34+1
	sta	<L34+1+2
	pld
	tsc
	clc
	adc	#L34+2
	tcs
	rtl
	.endblock	318
L34	equ	0
L35	equ	1
	ends
	efunc
	.endfunc	318,1,0
	.line	318
;
;void k_set_text_gamma(char c)
;{
	.line	320
	.line	321
	GUI
	xdef	~~k_set_text_gamma
	func
	.function	321
~~k_set_text_gamma:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L38
	tcs
	phd
	tcd
c_0	set	4
	.block	321
;	GAMMA_B_LUT_PTR[0] = c;
	.sym	c,4,14,6,8
	.line	322
	sep	#$20
	longa	off
	lda	<L38+c_0
	sta	>11485184
	rep	#$20
	longa	on
;	GAMMA_G_LUT_PTR[0] = c;
	.line	323
	sep	#$20
	longa	off
	lda	<L38+c_0
	sta	>11485440
	rep	#$20
	longa	on
;	GAMMA_R_LUT_PTR[0] = c;
	.line	324
	sep	#$20
	longa	off
	lda	<L38+c_0
	sta	>11485696
	rep	#$20
	longa	on
;}
	.line	325
L41:
	lda	<L38+2
	sta	<L38+2+2
	lda	<L38+1
	sta	<L38+1+2
	pld
	tsc
	clc
	adc	#L38+2
	tcs
	rtl
	.endblock	325
L38	equ	0
L39	equ	1
	ends
	efunc
	.endfunc	325,1,0
	.line	325
;
;void k_set_text_color(char c)
;{
	.line	327
	.line	328
	GUI
	xdef	~~k_set_text_color
	func
	.function	328
~~k_set_text_color:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L42
	tcs
	phd
	tcd
c_0	set	4
	.block	328
;	CURCOLOR_L[0] = c;
	.sym	c,4,14,6,8
	.line	329
	sep	#$20
	longa	off
	lda	<L42+c_0
	sta	>30
	rep	#$20
	longa	on
;	CURCOLOR_H[0] = c;
	.line	330
	sep	#$20
	longa	off
	lda	<L42+c_0
	sta	>31
	rep	#$20
	longa	on
;}
	.line	331
L45:
	lda	<L42+2
	sta	<L42+2+2
	lda	<L42+1
	sta	<L42+1+2
	pld
	tsc
	clc
	adc	#L42+2
	tcs
	rtl
	.endblock	331
L42	equ	0
L43	equ	1
	ends
	efunc
	.endfunc	331,1,0
	.line	331
;
;
;
;
;
;//
;// 
;WINDOW FAR* k_get_window(HANDLE hWindow)
;{
	.line	339
	.line	340
	GUI
	xdef	~~k_get_window
	func
	.function	340
~~k_get_window:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L46
	tcs
	phd
	tcd
hWindow_0	set	4
	.block	340
;	return &_k_window_list[(ULONG)hWindow];
	.sym	hWindow,4,129,6,32
	.line	341
	pea	#^$15f
	pea	#<$15f
	pei	<L46+hWindow_0+2
	pei	<L46+hWindow_0
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R0
	stx	<R0+2
	clc
	lda	#<~~_k_window_list
	adc	<R0
	sta	<R1
	lda	#^~~_k_window_list
	adc	<R0+2
	sta	<R1+2
	ldx	<R1+2
	lda	<R1
L49:
	tay
	lda	<L46+2
	sta	<L46+2+4
	lda	<L46+1
	sta	<L46+1+4
	pld
	tsc
	clc
	adc	#L46+4
	tcs
	tya
	rtl
;}
	.line	342
	.endblock	342
L46	equ	8
L47	equ	9
	ends
	efunc
	.endfunc	342,9,8
	.line	342
; 
;
;void k_write_window_text(HANDLE hWin,int col,int row,char FAR * text,int fcolor,int bcolor)
;{
	.line	345
	.line	346
	GUI
	xdef	~~k_write_window_text
	func
	.function	346
~~k_write_window_text:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L50
	tcs
	phd
	tcd
hWin_0	set	4
col_0	set	8
row_0	set	10
text_0	set	12
fcolor_0	set	16
bcolor_0	set	18
	.block	346
;	
;}
	.sym	hWin,4,129,6,32
	.sym	col,8,5,6,16
	.sym	row,10,5,6,16
	.sym	text,12,142,6,32
	.sym	fcolor,16,5,6,16
	.sym	bcolor,18,5,6,16
	.line	348
L53:
	lda	<L50+2
	sta	<L50+2+16
	lda	<L50+1
	sta	<L50+1+16
	pld
	tsc
	clc
	adc	#L50+16
	tcs
	rtl
	.endblock	348
L50	equ	0
L51	equ	1
	ends
	efunc
	.endfunc	348,1,0
	.line	348
; 
;
;HANDLE k_create_window(int bx,int by,int bw,int bh,char FAR* title)
;{
	.line	351
	.line	352
	GUI
	xdef	~~k_create_window
	func
	.function	352
~~k_create_window:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L54
	tcs
	phd
	tcd
bx_0	set	4
by_0	set	6
bw_0	set	8
bh_0	set	10
title_0	set	12
	.block	352
;	int index = -1;
;	WINDOW FAR *pwin = NULL;
;
;	k_put_char(0,1,'a',5,0);
index_1	set	0
pwin_1	set	2
	.sym	index,0,5,1,16
	.sym	pwin,2,138,1,32,30
	.sym	bx,4,5,6,16
	.sym	by,6,5,6,16
	.sym	bw,8,5,6,16
	.sym	bh,10,5,6,16
	.sym	title,12,142,6,32
	lda	#$ffff
	sta	<L55+index_1
	stz	<L55+pwin_1
	stz	<L55+pwin_1+2
	.line	356
	pea	#<$0
	pea	#<$5
	pea	#<$61
	pea	#<$1
	pea	#<$0
	jsl	~~k_put_char
;	
;	index = _k_window_index++;
	.line	358
	lda	>~~_k_window_index
	sta	<L55+index_1
	lda	>~~_k_window_index
	ina
	sta	>~~_k_window_index
;	
;	k_put_char(0,1,'b',5,0);
	.line	360
	pea	#<$0
	pea	#<$5
	pea	#<$62
	pea	#<$1
	pea	#<$0
	jsl	~~k_put_char
;	
;	pwin = &_k_window_list[index];
	.line	362
	ldy	#$0
	lda	<L55+index_1
	bpl	L57
	dey
L57:
	sta	<R0
	sty	<R0+2
	pea	#^$15f
	pea	#<$15f
	pei	<R0+2
	pei	<R0
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R0
	stx	<R0+2
	clc
	lda	#<~~_k_window_list
	adc	<R0
	sta	<L55+pwin_1
	lda	#^~~_k_window_list
	adc	<R0+2
	sta	<L55+pwin_1+2
;	
;	pwin->win_x = bx;
	.line	364
	lda	<L54+bx_0
	ldy	#$8
	sta	[<L55+pwin_1],Y
;	pwin->win_y = by;
	.line	365
	lda	<L54+by_0
	ldy	#$a
	sta	[<L55+pwin_1],Y
;	pwin->win_width = bw;
	.line	366
	lda	<L54+bw_0
	ldy	#$c
	sta	[<L55+pwin_1],Y
;	pwin->win_height = bh;
	.line	367
	lda	<L54+bh_0
	ldy	#$e
	sta	[<L55+pwin_1],Y
;
;	k_put_char(0,1,'c',5,0);
	.line	369
	pea	#<$0
	pea	#<$5
	pea	#<$63
	pea	#<$1
	pea	#<$0
	jsl	~~k_put_char
;	
;	strcpy(pwin->win_title,title);
	.line	371
	pei	<L54+title_0+2
	pei	<L54+title_0
	clc
	lda	#$d4
	adc	<L55+pwin_1
	sta	<R0
	lda	#$0
	adc	<L55+pwin_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~strcpy
;	
;	k_put_char(0,1,'d',5,0);
	.line	373
	pea	#<$0
	pea	#<$5
	pea	#<$64
	pea	#<$1
	pea	#<$0
	jsl	~~k_put_char
;	
;	k_window_draw(pwin->win_x,pwin->win_y,pwin->win_width,pwin->win_height,pwin->win_title);
	.line	375
	clc
	lda	#$d4
	adc	<L55+pwin_1
	sta	<R0
	lda	#$0
	adc	<L55+pwin_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$e
	lda	[<L55+pwin_1],Y
	pha
	ldy	#$c
	lda	[<L55+pwin_1],Y
	pha
	ldy	#$a
	lda	[<L55+pwin_1],Y
	pha
	ldy	#$8
	lda	[<L55+pwin_1],Y
	pha
	jsl	~~k_window_draw
;	
;	k_put_char(0,1,'e',5,0);
	.line	377
	pea	#<$0
	pea	#<$5
	pea	#<$65
	pea	#<$1
	pea	#<$0
	jsl	~~k_put_char
;	
;	return (HANDLE)index;
	.line	379
	ldy	#$0
	lda	<L55+index_1
	bpl	L58
	dey
L58:
	sta	<R0
	sty	<R0+2
	ldx	<R0+2
	lda	<R0
L59:
	tay
	lda	<L54+2
	sta	<L54+2+12
	lda	<L54+1
	sta	<L54+1+12
	pld
	tsc
	clc
	adc	#L54+12
	tcs
	tya
	rtl
;}
	.line	380
	.endblock	380
L54	equ	10
L55	equ	5
	ends
	efunc
	.endfunc	380,5,10
	.line	380
;
;VOID k_set_text_colors(VOID)
;{
	.line	382
	.line	383
	GUI
	xdef	~~k_set_text_colors
	func
	.function	383
~~k_set_text_colors:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L60
	tcs
	phd
	tcd
	.block	383
;	k_debug_integer("k_set_text_colors::TEXT_FG_COLORS:",sizeof(TEXT_FG_COLORS));
	.line	384
	pea	#<$40
	pea	#^L1
	pea	#<L1
	jsl	~~k_debug_integer
;	k_debug_integer("k_set_text_colors::TEXT_BG_COLORS:",sizeof(TEXT_BG_COLORS));
	.line	385
	pea	#<$40
	pea	#^L1+35
	pea	#<L1+35
	jsl	~~k_debug_integer
;
;	memcpy(FG_CHAR_LUT_PTR,TEXT_FG_COLORS,sizeof(TEXT_FG_COLORS));
	.line	387
	pea	#<$40
	pea	#^~~TEXT_FG_COLORS
	pea	#<~~TEXT_FG_COLORS
	pea	#^$af1f40
	pea	#<$af1f40
	jsl	~~memcpy
;	memcpy(BG_CHAR_LUT_PTR,TEXT_BG_COLORS,sizeof(TEXT_BG_COLORS));
	.line	388
	pea	#<$40
	pea	#^~~TEXT_BG_COLORS
	pea	#<~~TEXT_BG_COLORS
	pea	#^$af1f80
	pea	#<$af1f80
	jsl	~~memcpy
;}
	.line	389
L63:
	pld
	tsc
	clc
	adc	#L60
	tcs
	rtl
	.endblock	389
L60	equ	0
L61	equ	1
	ends
	efunc
	.endfunc	389,1,0
	.line	389
	data
L1:
	db	$6B,$5F,$73,$65,$74,$5F,$74,$65,$78,$74,$5F,$63,$6F,$6C,$6F
	db	$72,$73,$3A,$3A,$54,$45,$58,$54,$5F,$46,$47,$5F,$43,$4F,$4C
	db	$4F,$52,$53,$3A,$00,$6B,$5F,$73,$65,$74,$5F,$74,$65,$78,$74
	db	$5F,$63,$6F,$6C,$6F,$72,$73,$3A,$3A,$54,$45,$58,$54,$5F,$42
	db	$47,$5F,$43,$4F,$4C,$4F,$52,$53,$3A,$00
	ends
;
;
;void setColors(void)
;{
	.line	392
	.line	393
	GUI
	xdef	~~setColors
	func
	.function	393
~~setColors:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L65
	tcs
	phd
	tcd
	.block	393
;	unsigned long colorIndex = 0;
;
;	//colorIndex = 0;
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0x00;
colorIndex_1	set	0
	.sym	colorIndex,0,18,1,32
	stz	<L66+colorIndex_1
	stz	<L66+colorIndex_1+2
	.line	397
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$0
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L68
	inc	<L66+colorIndex_1+2
L68:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0x00;
	.line	398
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$0
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L69
	inc	<L66+colorIndex_1+2
L69:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0x00;
	.line	399
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$0
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L70
	inc	<L66+colorIndex_1+2
L70:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0xFF;
	.line	400
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$ff
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L71
	inc	<L66+colorIndex_1+2
L71:
;
;	//colorIndex = 1 * 4;
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0x00;
	.line	403
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$0
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L72
	inc	<L66+colorIndex_1+2
L72:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0x00;
	.line	404
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$0
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L73
	inc	<L66+colorIndex_1+2
L73:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0x80;
	.line	405
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$80
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L74
	inc	<L66+colorIndex_1+2
L74:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0xFF;
	.line	406
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$ff
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L75
	inc	<L66+colorIndex_1+2
L75:
;
;	//colorIndex = 2 * 4;
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0x00;
	.line	409
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$0
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L76
	inc	<L66+colorIndex_1+2
L76:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0x80;
	.line	410
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$80
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L77
	inc	<L66+colorIndex_1+2
L77:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0x00;
	.line	411
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$0
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L78
	inc	<L66+colorIndex_1+2
L78:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0xFF;
	.line	412
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$ff
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L79
	inc	<L66+colorIndex_1+2
L79:
;
;
;	//colorIndex = 3 * 4;
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0x80;
	.line	416
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$80
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L80
	inc	<L66+colorIndex_1+2
L80:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0x00;
	.line	417
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$0
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L81
	inc	<L66+colorIndex_1+2
L81:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0x00;
	.line	418
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$0
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L82
	inc	<L66+colorIndex_1+2
L82:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0xFF;
	.line	419
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$ff
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L83
	inc	<L66+colorIndex_1+2
L83:
;
;	//colorIndex = 4 * 4;
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0x00;
	.line	422
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$0
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L84
	inc	<L66+colorIndex_1+2
L84:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0x80;
	.line	423
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$80
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L85
	inc	<L66+colorIndex_1+2
L85:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0x80;
	.line	424
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$80
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L86
	inc	<L66+colorIndex_1+2
L86:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0xFF;
	.line	425
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$ff
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L87
	inc	<L66+colorIndex_1+2
L87:
;
;	//colorIndex = 5 * 4;
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0x80;
	.line	428
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$80
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L88
	inc	<L66+colorIndex_1+2
L88:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0x80;
	.line	429
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$80
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L89
	inc	<L66+colorIndex_1+2
L89:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0x00;
	.line	430
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$0
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L90
	inc	<L66+colorIndex_1+2
L90:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0xFF;
	.line	431
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$ff
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L91
	inc	<L66+colorIndex_1+2
L91:
;
;	//colorIndex = 6 * 4;
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0x80;
	.line	434
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$80
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L92
	inc	<L66+colorIndex_1+2
L92:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0x00;
	.line	435
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$0
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L93
	inc	<L66+colorIndex_1+2
L93:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0x80;
	.line	436
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$80
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L94
	inc	<L66+colorIndex_1+2
L94:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0xFF;
	.line	437
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$ff
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L95
	inc	<L66+colorIndex_1+2
L95:
;
;	//colorIndex = 7 * 4;
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0x00;
	.line	440
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$0
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L96
	inc	<L66+colorIndex_1+2
L96:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0x45;
	.line	441
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$45
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L97
	inc	<L66+colorIndex_1+2
L97:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0xFF;
	.line	442
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$ff
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L98
	inc	<L66+colorIndex_1+2
L98:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0xFF;
	.line	443
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$ff
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L99
	inc	<L66+colorIndex_1+2
L99:
;
;	//colorIndex = 8 * 4;
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0x13;
	.line	446
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$13
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L100
	inc	<L66+colorIndex_1+2
L100:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0x45;
	.line	447
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$45
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L101
	inc	<L66+colorIndex_1+2
L101:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0x8B;
	.line	448
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$8b
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L102
	inc	<L66+colorIndex_1+2
L102:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0xFF;
	.line	449
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$ff
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L103
	inc	<L66+colorIndex_1+2
L103:
;
;	//colorIndex = 9 * 4;
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0x00;
	.line	452
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$0
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L104
	inc	<L66+colorIndex_1+2
L104:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0x00;
	.line	453
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$0
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L105
	inc	<L66+colorIndex_1+2
L105:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0x20;
	.line	454
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$20
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L106
	inc	<L66+colorIndex_1+2
L106:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0xFF;
	.line	455
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$ff
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L107
	inc	<L66+colorIndex_1+2
L107:
;
;	//colorIndex = 10 * 4;
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0x00;
	.line	458
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$0
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L108
	inc	<L66+colorIndex_1+2
L108:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0x20;
	.line	459
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$20
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L109
	inc	<L66+colorIndex_1+2
L109:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0x00;
	.line	460
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$0
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L110
	inc	<L66+colorIndex_1+2
L110:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0xFF;
	.line	461
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$ff
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L111
	inc	<L66+colorIndex_1+2
L111:
;
;	//colorIndex = 11 * 4;
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0x20;
	.line	464
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$20
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L112
	inc	<L66+colorIndex_1+2
L112:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0x00;
	.line	465
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$0
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L113
	inc	<L66+colorIndex_1+2
L113:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0x00;
	.line	466
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$0
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L114
	inc	<L66+colorIndex_1+2
L114:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0xFF;
	.line	467
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$ff
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L115
	inc	<L66+colorIndex_1+2
L115:
;
;	//colorIndex = 12 * 4;
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0x00;
	.line	470
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$0
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L116
	inc	<L66+colorIndex_1+2
L116:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0x00;
	.line	471
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$0
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L117
	inc	<L66+colorIndex_1+2
L117:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0x00;
	.line	472
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$0
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L118
	inc	<L66+colorIndex_1+2
L118:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0xFF;
	.line	473
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$ff
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L119
	inc	<L66+colorIndex_1+2
L119:
;
;	//colorIndex = 13 * 4;
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0x50;
	.line	476
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$50
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L120
	inc	<L66+colorIndex_1+2
L120:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0x50;
	.line	477
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$50
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L121
	inc	<L66+colorIndex_1+2
L121:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0x50;
	.line	478
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$50
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L122
	inc	<L66+colorIndex_1+2
L122:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0xFF;
	.line	479
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$ff
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L123
	inc	<L66+colorIndex_1+2
L123:
;
;	//colorIndex = 14 * 4;
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0x40;
	.line	482
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$40
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L124
	inc	<L66+colorIndex_1+2
L124:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0x40;
	.line	483
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$40
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L125
	inc	<L66+colorIndex_1+2
L125:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0x40;
	.line	484
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$40
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L126
	inc	<L66+colorIndex_1+2
L126:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0xFF;
	.line	485
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$ff
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L127
	inc	<L66+colorIndex_1+2
L127:
;
;	//colorIndex = 15 * 4;
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0xFF;
	.line	488
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$ff
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L128
	inc	<L66+colorIndex_1+2
L128:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0xFF;
	.line	489
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$ff
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L129
	inc	<L66+colorIndex_1+2
L129:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0xFF;
	.line	490
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$ff
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L130
	inc	<L66+colorIndex_1+2
L130:
;	GRP_LUT_BASE_ADDR[colorIndex++] = 0xFF;
	.line	491
	clc
	lda	#$2000
	adc	<L66+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L66+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$ff
	sta	[<R0]
	rep	#$20
	longa	on
	inc	<L66+colorIndex_1
	bne	L131
	inc	<L66+colorIndex_1+2
L131:
;
;
;	memset(&_k_currentPalatte,0,sizeof(CUR_PALETTE_MAP));
	.line	494
	pea	#<$32
	pea	#<$0
	lda	#<~~_k_currentPalatte
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~memset
;
;	_k_currentPalatte.CUR_WINDOWFRAME = 0;
	.line	496
	stz	|~~_k_currentPalatte+10
;	_k_currentPalatte.CUR_DESKTOP = 14;
	.line	497
	lda	#$e
	sta	|~~_k_currentPalatte
;	_k_currentPalatte.CUR_HIGHLIGHT_COLOR = 8;
	.line	498
	lda	#$8
	sta	|~~_k_currentPalatte+8
;	_k_currentPalatte.CUR_SELECTED_FONT = 11;
	.line	499
	lda	#$b
	sta	|~~_k_currentPalatte+6
;	_k_currentPalatte.CUR_GADGET = _k_currentPalatte.CUR_WINDOWSHADOW = 12;
	.line	500
	lda	#$c
	sta	|~~_k_currentPalatte+14
	lda	#$c
	sta	|~~_k_currentPalatte+18
;	_k_currentPalatte.CUR_BACKGROUND = 13;
	.line	501
	lda	#$d
	sta	|~~_k_currentPalatte+2
;	_k_currentPalatte.CUR_FONT = 14;
	.line	502
	lda	#$e
	sta	|~~_k_currentPalatte+4
;	_k_currentPalatte.CUR_WINDOWBORDER = _k_currentPalatte.CUR_MENU = 15;
	.line	503
	lda	#$f
	sta	|~~_k_currentPalatte+16
	lda	#$f
	sta	|~~_k_currentPalatte+12
;
;	for(colorIndex=0;colorIndex<15;colorIndex++)
	.line	505
	stz	<L66+colorIndex_1
	stz	<L66+colorIndex_1+2
L10006:
;	{
	.line	506
;		_k_currentPalatte.CUR_COLOR[colorIndex] = colorIndex;
	.line	507
	lda	<L66+colorIndex_1
	asl	A
	sta	<R0
	lda	<L66+colorIndex_1
	ldx	<R0
	sta	|~~_k_currentPalatte+20,X
;	}
	.line	508
L10004:
	inc	<L66+colorIndex_1
	bne	L132
	inc	<L66+colorIndex_1+2
L132:
	lda	<L66+colorIndex_1
	cmp	#<$f
	lda	<L66+colorIndex_1+2
	sbc	#^$f
	bcs	L133
	brl	L10006
L133:
L10005:
;
;
;}
	.line	511
L134:
	pld
	tsc
	clc
	adc	#L65
	tcs
	rtl
	.endblock	511
L65	equ	8
L66	equ	5
	ends
	efunc
	.endfunc	511,5,8
	.line	511
;
;void defineGrayPalette(void)
;{
	.line	513
	.line	514
	GUI
	xdef	~~defineGrayPalette
	func
	.function	514
~~defineGrayPalette:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L135
	tcs
	phd
	tcd
	.block	514
;	unsigned long colorIndex = 0;
;	int colorShade = 0;
;	char color[] = {0x00,0x11,0x22,0x33,0x44,0x55,0x66,0x77,0x88,0x99,0xAA,0xBB,0xCC,0xDD,0xFF};
	data
L138:
	db	$0,$11,$22,$33,$44,$55,$66,$77,$88,$99
	db	$AA,$BB,$CC,$DD,$FF
	ends
;	
;	for(colorIndex = 0;colorIndex<60;colorIndex+=4)
colorIndex_1	set	0
colorShade_1	set	4
color_1	set	6
	.sym	colorIndex,0,18,1,32
	.sym	colorShade,4,5,1,16
	.sym	color,6,110,1,0,15
	stz	<L136+colorIndex_1
	stz	<L136+colorIndex_1+2
	stz	<L136+colorShade_1
	pea	#^L138
	pea	#<L138
	clc
	tdc
	adc	#<L136+color_1
	sta	<R0
	lda	#$0
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	lda	#$f
	xref	~~~fmov
	jsl	~~~fmov
	.line	519
	stz	<L136+colorIndex_1
	stz	<L136+colorIndex_1+2
L10009:
;	{
	.line	520
;		GRP_LUT_BASE_ADDR[colorIndex+0] = color[colorShade];
	.line	521
	clc
	lda	#$2000
	adc	<L136+colorIndex_1
	sta	<R0
	lda	#$af
	adc	<L136+colorIndex_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	ldx	<L136+colorShade_1
	lda	<L136+color_1,X
	sta	[<R0]
	rep	#$20
	longa	on
;		GRP_LUT_BASE_ADDR[colorIndex+1] = color[colorShade];
	.line	522
	clc
	lda	#$1
	adc	#<$af2000
	sta	<R0
	lda	#$0
	adc	#^$af2000
	sta	<R0+2
	clc
	lda	<R0
	adc	<L136+colorIndex_1
	sta	<R1
	lda	<R0+2
	adc	<L136+colorIndex_1+2
	sta	<R1+2
	sep	#$20
	longa	off
	ldx	<L136+colorShade_1
	lda	<L136+color_1,X
	sta	[<R1]
	rep	#$20
	longa	on
;		GRP_LUT_BASE_ADDR[colorIndex+2] = color[colorShade];
	.line	523
	clc
	lda	#$2
	adc	#<$af2000
	sta	<R0
	lda	#$0
	adc	#^$af2000
	sta	<R0+2
	clc
	lda	<R0
	adc	<L136+colorIndex_1
	sta	<R1
	lda	<R0+2
	adc	<L136+colorIndex_1+2
	sta	<R1+2
	sep	#$20
	longa	off
	ldx	<L136+colorShade_1
	lda	<L136+color_1,X
	sta	[<R1]
	rep	#$20
	longa	on
;		GRP_LUT_BASE_ADDR[colorIndex+3] = 0xFF;
	.line	524
	clc
	lda	#$3
	adc	#<$af2000
	sta	<R0
	lda	#$0
	adc	#^$af2000
	sta	<R0+2
	clc
	lda	<R0
	adc	<L136+colorIndex_1
	sta	<R1
	lda	<R0+2
	adc	<L136+colorIndex_1+2
	sta	<R1+2
	sep	#$20
	longa	off
	lda	#$ff
	sta	[<R1]
	rep	#$20
	longa	on
;
;		colorShade++;
	.line	526
	inc	<L136+colorShade_1
;	}
	.line	527
L10007:
	clc
	lda	#$4
	adc	<L136+colorIndex_1
	sta	<L136+colorIndex_1
	bcc	L139
	inc	<L136+colorIndex_1+2
L139:
	lda	<L136+colorIndex_1
	cmp	#<$3c
	lda	<L136+colorIndex_1+2
	sbc	#^$3c
	bcs	L140
	brl	L10009
L140:
L10008:
;
;	memset(&_k_currentPalatte,0,sizeof(CUR_PALETTE_MAP));
	.line	529
	pea	#<$32
	pea	#<$0
	lda	#<~~_k_currentPalatte
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~memset
;
;	_k_currentPalatte.CUR_WINDOWFRAME = 0;
	.line	531
	stz	|~~_k_currentPalatte+10
;	_k_currentPalatte.CUR_DESKTOP = 3;
	.line	532
	lda	#$3
	sta	|~~_k_currentPalatte
;	_k_currentPalatte.CUR_HIGHLIGHT_COLOR = 8;
	.line	533
	lda	#$8
	sta	|~~_k_currentPalatte+8
;	_k_currentPalatte.CUR_SELECTED_FONT = 11;
	.line	534
	lda	#$b
	sta	|~~_k_currentPalatte+6
;	_k_currentPalatte.CUR_GADGET = _k_currentPalatte.CUR_WINDOWSHADOW = 12;
	.line	535
	lda	#$c
	sta	|~~_k_currentPalatte+14
	lda	#$c
	sta	|~~_k_currentPalatte+18
;	_k_currentPalatte.CUR_BACKGROUND = 13;
	.line	536
	lda	#$d
	sta	|~~_k_currentPalatte+2
;	_k_currentPalatte.CUR_FONT = 14;
	.line	537
	lda	#$e
	sta	|~~_k_currentPalatte+4
;	_k_currentPalatte.CUR_WINDOWBORDER = _k_currentPalatte.CUR_MENU = 15;
	.line	538
	lda	#$f
	sta	|~~_k_currentPalatte+16
	lda	#$f
	sta	|~~_k_currentPalatte+12
;
;	for(colorShade=0;colorShade<15;colorShade++)
	.line	540
	stz	<L136+colorShade_1
L10012:
;	{
	.line	541
;		_k_currentPalatte.CUR_COLOR[colorShade] = colorShade;
	.line	542
	lda	<L136+colorShade_1
	asl	A
	sta	<R0
	lda	<L136+colorShade_1
	ldx	<R0
	sta	|~~_k_currentPalatte+20,X
;	}
	.line	543
L10010:
	inc	<L136+colorShade_1
	sec
	lda	<L136+colorShade_1
	sbc	#<$f
	bvs	L141
	eor	#$8000
L141:
	bmi	L142
	brl	L10012
L142:
L10011:
;}
	.line	544
L143:
	pld
	tsc
	clc
	adc	#L135
	tcs
	rtl
	.endblock	544
L135	equ	29
L136	equ	9
	ends
	efunc
	.endfunc	544,9,29
	.line	544
;
;int k_getUIBackgroundColor()
;{
	.line	546
	.line	547
	GUI
	xdef	~~k_getUIBackgroundColor
	func
	.function	547
~~k_getUIBackgroundColor:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L144
	tcs
	phd
	tcd
	.block	547
;	return 	_k_currentPalatte.CUR_BACKGROUND;
	.line	548
	lda	|~~_k_currentPalatte+2
L147:
	tay
	pld
	tsc
	clc
	adc	#L144
	tcs
	tya
	rtl
;}
	.line	549
	.endblock	549
L144	equ	0
L145	equ	1
	ends
	efunc
	.endfunc	549,1,0
	.line	549
;
;int k_getUIDesktopColor()
;{
	.line	551
	.line	552
	GUI
	xdef	~~k_getUIDesktopColor
	func
	.function	552
~~k_getUIDesktopColor:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L148
	tcs
	phd
	tcd
	.block	552
;	return 	_k_currentPalatte.CUR_DESKTOP;
	.line	553
	lda	|~~_k_currentPalatte
L151:
	tay
	pld
	tsc
	clc
	adc	#L148
	tcs
	tya
	rtl
;}
	.line	554
	.endblock	554
L148	equ	0
L149	equ	1
	ends
	efunc
	.endfunc	554,1,0
	.line	554
;
;
;int k_getUIFontColor()
;{
	.line	557
	.line	558
	GUI
	xdef	~~k_getUIFontColor
	func
	.function	558
~~k_getUIFontColor:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L152
	tcs
	phd
	tcd
	.block	558
;	return 	_k_currentPalatte.CUR_FONT;
	.line	559
	lda	|~~_k_currentPalatte+4
L155:
	tay
	pld
	tsc
	clc
	adc	#L152
	tcs
	tya
	rtl
;}
	.line	560
	.endblock	560
L152	equ	0
L153	equ	1
	ends
	efunc
	.endfunc	560,1,0
	.line	560
;
;
;int k_getUIFontSelectedColor()
;{
	.line	563
	.line	564
	GUI
	xdef	~~k_getUIFontSelectedColor
	func
	.function	564
~~k_getUIFontSelectedColor:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L156
	tcs
	phd
	tcd
	.block	564
;	return 	_k_currentPalatte.CUR_SELECTED_FONT;
	.line	565
	lda	|~~_k_currentPalatte+6
L159:
	tay
	pld
	tsc
	clc
	adc	#L156
	tcs
	tya
	rtl
;}
	.line	566
	.endblock	566
L156	equ	0
L157	equ	1
	ends
	efunc
	.endfunc	566,1,0
	.line	566
;
;
;int k_getUIHighlightColor()
;{
	.line	569
	.line	570
	GUI
	xdef	~~k_getUIHighlightColor
	func
	.function	570
~~k_getUIHighlightColor:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L160
	tcs
	phd
	tcd
	.block	570
;	return 	_k_currentPalatte.CUR_HIGHLIGHT_COLOR;
	.line	571
	lda	|~~_k_currentPalatte+8
L163:
	tay
	pld
	tsc
	clc
	adc	#L160
	tcs
	tya
	rtl
;}
	.line	572
	.endblock	572
L160	equ	0
L161	equ	1
	ends
	efunc
	.endfunc	572,1,0
	.line	572
;
;
;int k_getUIWindowFrameColor()
;{
	.line	575
	.line	576
	GUI
	xdef	~~k_getUIWindowFrameColor
	func
	.function	576
~~k_getUIWindowFrameColor:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L164
	tcs
	phd
	tcd
	.block	576
;	return 	_k_currentPalatte.CUR_WINDOWFRAME;
	.line	577
	lda	|~~_k_currentPalatte+10
L167:
	tay
	pld
	tsc
	clc
	adc	#L164
	tcs
	tya
	rtl
;}
	.line	578
	.endblock	578
L164	equ	0
L165	equ	1
	ends
	efunc
	.endfunc	578,1,0
	.line	578
;
;
;int k_getUIWindowBorderColor()
;{
	.line	581
	.line	582
	GUI
	xdef	~~k_getUIWindowBorderColor
	func
	.function	582
~~k_getUIWindowBorderColor:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L168
	tcs
	phd
	tcd
	.block	582
;	return 	_k_currentPalatte.CUR_WINDOWBORDER;
	.line	583
	lda	|~~_k_currentPalatte+12
L171:
	tay
	pld
	tsc
	clc
	adc	#L168
	tcs
	tya
	rtl
;}
	.line	584
	.endblock	584
L168	equ	0
L169	equ	1
	ends
	efunc
	.endfunc	584,1,0
	.line	584
;
;
;int k_getUIWindowShadowColor()
;{
	.line	587
	.line	588
	GUI
	xdef	~~k_getUIWindowShadowColor
	func
	.function	588
~~k_getUIWindowShadowColor:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L172
	tcs
	phd
	tcd
	.block	588
;	return 	_k_currentPalatte.CUR_WINDOWSHADOW;
	.line	589
	lda	|~~_k_currentPalatte+14
L175:
	tay
	pld
	tsc
	clc
	adc	#L172
	tcs
	tya
	rtl
;}
	.line	590
	.endblock	590
L172	equ	0
L173	equ	1
	ends
	efunc
	.endfunc	590,1,0
	.line	590
;
;
;int k_getUIMenuColor()
;{
	.line	593
	.line	594
	GUI
	xdef	~~k_getUIMenuColor
	func
	.function	594
~~k_getUIMenuColor:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L176
	tcs
	phd
	tcd
	.block	594
;	return 	_k_currentPalatte.CUR_MENU;
	.line	595
	lda	|~~_k_currentPalatte+16
L179:
	tay
	pld
	tsc
	clc
	adc	#L176
	tcs
	tya
	rtl
;}
	.line	596
	.endblock	596
L176	equ	0
L177	equ	1
	ends
	efunc
	.endfunc	596,1,0
	.line	596
;
;
;int k_getUIGadgetColor()
;{
	.line	599
	.line	600
	GUI
	xdef	~~k_getUIGadgetColor
	func
	.function	600
~~k_getUIGadgetColor:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L180
	tcs
	phd
	tcd
	.block	600
;	return 	_k_currentPalatte.CUR_GADGET;
	.line	601
	lda	|~~_k_currentPalatte+18
L183:
	tay
	pld
	tsc
	clc
	adc	#L180
	tcs
	tya
	rtl
;}
	.line	602
	.endblock	602
L180	equ	0
L181	equ	1
	ends
	efunc
	.endfunc	602,1,0
	.line	602
;
;
;int k_getUIColor(int index)
;{
	.line	605
	.line	606
	GUI
	xdef	~~k_getUIColor
	func
	.function	606
~~k_getUIColor:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L184
	tcs
	phd
	tcd
index_0	set	4
	.block	606
;	if(index < 1)
	.sym	index,4,5,6,16
	.line	607
;		index = 1;
	lda	<L184+index_0
	bmi	L187
	dea
	bmi	L187
	brl	L10013
L187:
	.line	608
	lda	#$1
	sta	<L184+index_0
;	if(index > 15)
L10013:
	.line	609
;		index = 15;
	sec
	lda	#$f
	sbc	<L184+index_0
	bvs	L188
	eor	#$8000
L188:
	bpl	L189
	brl	L10014
L189:
	.line	610
	lda	#$f
	sta	<L184+index_0
;
;	return 	_k_currentPalatte.CUR_COLOR[index - 1];
L10014:
	.line	612
	lda	<L184+index_0
	asl	A
	sta	<R0
	ldx	<R0
	lda	|~~_k_currentPalatte+20-2,X
L190:
	tay
	lda	<L184+2
	sta	<L184+2+2
	lda	<L184+1
	sta	<L184+1+2
	pld
	tsc
	clc
	adc	#L184+2
	tcs
	tya
	rtl
;}
	.line	613
	.endblock	613
L184	equ	4
L185	equ	5
	ends
	efunc
	.endfunc	613,5,4
	.line	613
;
;
;
;void k_draw_pixel(long x,long y,char pcolor)
;{
	.line	617
	.line	618
	GUI
	xdef	~~k_draw_pixel
	func
	.function	618
~~k_draw_pixel:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L191
	tcs
	phd
	tcd
x_0	set	4
y_0	set	8
pcolor_0	set	12
	.block	618
;	long pixelLocation = (long)(((long)y * 640L) + (long)x);
;
;	((unsigned char FAR *)BITMAP_BANK_0)[pixelLocation] = (char)pcolor;
pixelLocation_1	set	0
	.sym	pixelLocation,0,7,1,32
	.sym	x,4,7,6,32
	.sym	y,8,7,6,32
	.sym	pcolor,12,14,6,8
	pea	#^$280
	pea	#<$280
	pei	<L191+y_0+2
	pei	<L191+y_0
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R0
	stx	<R0+2
	clc
	lda	<R0
	adc	<L191+x_0
	sta	<L192+pixelLocation_1
	lda	<R0+2
	adc	<L191+x_0+2
	sta	<L192+pixelLocation_1+2
	.line	621
	clc
	lda	#$0
	adc	<L192+pixelLocation_1
	sta	<R0
	lda	#$b0
	adc	<L192+pixelLocation_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	<L191+pcolor_0
	sta	[<R0]
	rep	#$20
	longa	on
;	//((unsigned char FAR *)SHADOW_BANK_0)[pixelLocation] = (char)pcolor;
;
;
;	//((unsigned char FAR *)BITMAP_BANK_0)[(long)(( ((long)y) * 640L) + ((long)x) )] = (char)pcolor;
;}
	.line	626
L194:
	lda	<L191+2
	sta	<L191+2+10
	lda	<L191+1
	sta	<L191+1+10
	pld
	tsc
	clc
	adc	#L191+10
	tcs
	rtl
	.endblock	626
L191	equ	8
L192	equ	5
	ends
	efunc
	.endfunc	626,5,8
	.line	626
;
;void k_draw_pixel_ex(long x,long y,char pcolor,UINT page)
;{
	.line	628
	.line	629
	GUI
	xdef	~~k_draw_pixel_ex
	func
	.function	629
~~k_draw_pixel_ex:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L195
	tcs
	phd
	tcd
x_0	set	4
y_0	set	8
pcolor_0	set	12
page_0	set	14
	.block	629
;	long pixelLocation = (long)(((long)y * 640L) + (long)x);
;
;	((unsigned char FAR *)BITMAP_BANK_0)[pixelLocation] = (char)pcolor;
pixelLocation_1	set	0
	.sym	pixelLocation,0,7,1,32
	.sym	x,4,7,6,32
	.sym	y,8,7,6,32
	.sym	pcolor,12,14,6,8
	.sym	page,14,16,6,16
	pea	#^$280
	pea	#<$280
	pei	<L195+y_0+2
	pei	<L195+y_0
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R0
	stx	<R0+2
	clc
	lda	<R0
	adc	<L195+x_0
	sta	<L196+pixelLocation_1
	lda	<R0+2
	adc	<L195+x_0+2
	sta	<L196+pixelLocation_1+2
	.line	632
	clc
	lda	#$0
	adc	<L196+pixelLocation_1
	sta	<R0
	lda	#$b0
	adc	<L196+pixelLocation_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	<L195+pcolor_0
	sta	[<R0]
	rep	#$20
	longa	on
;	//((unsigned char FAR *)SHADOW_BANK_0)[pixelLocation] = (char)pcolor;
;
;
;	//((unsigned char FAR *)BITMAP_BANK_0)[(long)(( ((long)y) * 640L) + ((long)x) )] = (char)pcolor;
;}
	.line	637
L198:
	lda	<L195+2
	sta	<L195+2+12
	lda	<L195+1
	sta	<L195+1+12
	pld
	tsc
	clc
	adc	#L195+12
	tcs
	rtl
	.endblock	637
L195	equ	8
L196	equ	5
	ends
	efunc
	.endfunc	637,5,8
	.line	637
;
;int k_get_pixel_color(int x,int y)
;{
	.line	639
	.line	640
	GUI
	xdef	~~k_get_pixel_color
	func
	.function	640
~~k_get_pixel_color:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L199
	tcs
	phd
	tcd
x_0	set	4
y_0	set	6
	.block	640
;	long pixelLocation;
;	int color = -1;
;	
;	pixelLocation = (( (y) * 640) + (x) );
pixelLocation_1	set	0
color_1	set	4
	.sym	pixelLocation,0,7,1,32
	.sym	color,4,5,1,16
	.sym	x,4,5,6,16
	.sym	y,6,5,6,16
	lda	#$ffff
	sta	<L200+color_1
	.line	644
	lda	<L199+y_0
	ldx	#<$280
	xref	~~~mul
	jsl	~~~mul
	sta	<R0
	clc
	lda	<R0
	adc	<L199+x_0
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L202
	dey
L202:
	sta	<L200+pixelLocation_1
	sty	<L200+pixelLocation_1+2
;
;	if(y < 51)
	.line	646
;	{
	sec
	lda	<L199+y_0
	sbc	#<$33
	bvs	L203
	eor	#$8000
L203:
	bpl	L204
	brl	L10015
L204:
	.line	647
;		color = ((unsigned char FAR *)BITMAP_BANK_0)[pixelLocation];
	.line	648
	clc
	lda	#$0
	adc	<L200+pixelLocation_1
	sta	<R0
	lda	#$b0
	adc	<L200+pixelLocation_1+2
	sta	<R0+2
	lda	[<R0]
	and	#$ff
	sta	<L200+color_1
;	}
	.line	649
;	else if(y > 51 && y < 153)
	brl	L10016
L10015:
	.line	650
;	{
	sec
	lda	#$33
	sbc	<L199+y_0
	bvs	L205
	eor	#$8000
L205:
	bpl	L206
	brl	L10017
L206:
	sec
	lda	<L199+y_0
	sbc	#<$99
	bvs	L207
	eor	#$8000
L207:
	bpl	L208
	brl	L10017
L208:
	.line	651
;		color = ((unsigned char FAR *)BITMAP_BANK_1)[pixelLocation];
	.line	652
	clc
	lda	#$0
	adc	<L200+pixelLocation_1
	sta	<R0
	lda	#$b1
	adc	<L200+pixelLocation_1+2
	sta	<R0+2
	lda	[<R0]
	and	#$ff
	sta	<L200+color_1
;	}
	.line	653
;	else if(y > 153 && y < 255)
	brl	L10018
L10017:
	.line	654
;	{
	sec
	lda	#$99
	sbc	<L199+y_0
	bvs	L209
	eor	#$8000
L209:
	bpl	L210
	brl	L10019
L210:
	sec
	lda	<L199+y_0
	sbc	#<$ff
	bvs	L211
	eor	#$8000
L211:
	bpl	L212
	brl	L10019
L212:
	.line	655
;		color = ((unsigned char FAR *)BITMAP_BANK_2)[pixelLocation];
	.line	656
	clc
	lda	#$0
	adc	<L200+pixelLocation_1
	sta	<R0
	lda	#$b2
	adc	<L200+pixelLocation_1+2
	sta	<R0+2
	lda	[<R0]
	and	#$ff
	sta	<L200+color_1
;	}
	.line	657
;	else if(y > 255 && y < 358)
	brl	L10020
L10019:
	.line	658
;	{
	sec
	lda	#$ff
	sbc	<L199+y_0
	bvs	L213
	eor	#$8000
L213:
	bpl	L214
	brl	L10021
L214:
	sec
	lda	<L199+y_0
	sbc	#<$166
	bvs	L215
	eor	#$8000
L215:
	bpl	L216
	brl	L10021
L216:
	.line	659
;		color = ((unsigned char FAR *)BITMAP_BANK_3)[pixelLocation];
	.line	660
	clc
	lda	#$0
	adc	<L200+pixelLocation_1
	sta	<R0
	lda	#$b3
	adc	<L200+pixelLocation_1+2
	sta	<R0+2
	lda	[<R0]
	and	#$ff
	sta	<L200+color_1
;	}
	.line	661
;	else if(y > 358 && y < 460)
	brl	L10022
L10021:
	.line	662
;	{
	sec
	lda	#$166
	sbc	<L199+y_0
	bvs	L217
	eor	#$8000
L217:
	bpl	L218
	brl	L10023
L218:
	sec
	lda	<L199+y_0
	sbc	#<$1cc
	bvs	L219
	eor	#$8000
L219:
	bpl	L220
	brl	L10023
L220:
	.line	663
;		color = ((unsigned char FAR *)BITMAP_BANK_4)[pixelLocation];
	.line	664
	clc
	lda	#$0
	adc	<L200+pixelLocation_1
	sta	<R0
	lda	#$b4
	adc	<L200+pixelLocation_1+2
	sta	<R0+2
	lda	[<R0]
	and	#$ff
	sta	<L200+color_1
;	}
	.line	665
;	else if(y > 460 && y < 479 )
	brl	L10024
L10023:
	.line	666
;	{
	sec
	lda	#$1cc
	sbc	<L199+y_0
	bvs	L221
	eor	#$8000
L221:
	bpl	L222
	brl	L10025
L222:
	sec
	lda	<L199+y_0
	sbc	#<$1df
	bvs	L223
	eor	#$8000
L223:
	bpl	L224
	brl	L10025
L224:
	.line	667
;		color = ((unsigned char FAR *)BITMAP_BANK_5)[pixelLocation];
	.line	668
	clc
	lda	#$0
	adc	<L200+pixelLocation_1
	sta	<R0
	lda	#$b5
	adc	<L200+pixelLocation_1+2
	sta	<R0+2
	lda	[<R0]
	and	#$ff
	sta	<L200+color_1
;	}
	.line	669
;	
;	return color;
L10025:
L10024:
L10022:
L10020:
L10018:
L10016:
	.line	671
	lda	<L200+color_1
L225:
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
	.line	672
	.endblock	672
L199	equ	14
L200	equ	9
	ends
	efunc
	.endfunc	672,9,14
	.line	672
;
;int k_get_pixel_bank(int x,int y)
;{
	.line	674
	.line	675
	GUI
	xdef	~~k_get_pixel_bank
	func
	.function	675
~~k_get_pixel_bank:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L226
	tcs
	phd
	tcd
x_0	set	4
y_0	set	6
	.block	675
;	long pixelLocation;
;
;	if(y < 51)
pixelLocation_1	set	0
	.sym	pixelLocation,0,7,1,32
	.sym	x,4,5,6,16
	.sym	y,6,5,6,16
	.line	678
;	{
	sec
	lda	<L226+y_0
	sbc	#<$33
	bvs	L229
	eor	#$8000
L229:
	bpl	L230
	brl	L10026
L230:
	.line	679
;		return 0;
	.line	680
	lda	#$0
L231:
	tay
	lda	<L226+2
	sta	<L226+2+4
	lda	<L226+1
	sta	<L226+1+4
	pld
	tsc
	clc
	adc	#L226+4
	tcs
	tya
	rtl
;	}
	.line	681
;	else if(y > 51 && y < 153)
L10026:
	.line	682
;	{
	sec
	lda	#$33
	sbc	<L226+y_0
	bvs	L232
	eor	#$8000
L232:
	bpl	L233
	brl	L10027
L233:
	sec
	lda	<L226+y_0
	sbc	#<$99
	bvs	L234
	eor	#$8000
L234:
	bpl	L235
	brl	L10027
L235:
	.line	683
;		return 1;
	.line	684
	lda	#$1
	brl	L231
;	}
	.line	685
;	else if(y > 153 && y < 255)
L10027:
	.line	686
;	{
	sec
	lda	#$99
	sbc	<L226+y_0
	bvs	L236
	eor	#$8000
L236:
	bpl	L237
	brl	L10028
L237:
	sec
	lda	<L226+y_0
	sbc	#<$ff
	bvs	L238
	eor	#$8000
L238:
	bpl	L239
	brl	L10028
L239:
	.line	687
;		return 2;
	.line	688
	lda	#$2
	brl	L231
;	}
	.line	689
;	else if(y > 255 && y < 358)
L10028:
	.line	690
;	{
	sec
	lda	#$ff
	sbc	<L226+y_0
	bvs	L240
	eor	#$8000
L240:
	bpl	L241
	brl	L10029
L241:
	sec
	lda	<L226+y_0
	sbc	#<$166
	bvs	L242
	eor	#$8000
L242:
	bpl	L243
	brl	L10029
L243:
	.line	691
;		return 3;
	.line	692
	lda	#$3
	brl	L231
;	}
	.line	693
;	else if(y > 358 && y < 460)
L10029:
	.line	694
;	{
	sec
	lda	#$166
	sbc	<L226+y_0
	bvs	L244
	eor	#$8000
L244:
	bpl	L245
	brl	L10030
L245:
	sec
	lda	<L226+y_0
	sbc	#<$1cc
	bvs	L246
	eor	#$8000
L246:
	bpl	L247
	brl	L10030
L247:
	.line	695
;		return 4;
	.line	696
	lda	#$4
	brl	L231
;	}
	.line	697
;	else if(y > 460 && y < 479 )
L10030:
	.line	698
;	{
	sec
	lda	#$1cc
	sbc	<L226+y_0
	bvs	L248
	eor	#$8000
L248:
	bpl	L249
	brl	L10031
L249:
	sec
	lda	<L226+y_0
	sbc	#<$1df
	bvs	L250
	eor	#$8000
L250:
	bpl	L251
	brl	L10031
L251:
	.line	699
;		return 5;
	.line	700
	lda	#$5
	brl	L231
;	}
	.line	701
;	
;	return 0;
L10031:
	.line	703
	lda	#$0
	brl	L231
;}
	.line	704
	.endblock	704
L226	equ	4
L227	equ	1
	ends
	efunc
	.endfunc	704,1,4
	.line	704
;
;
;void k_draw_segments(int xc, int yc, int x, int y,int color) 
;{ 
	.line	707
	.line	708
	GUI
	xdef	~~k_draw_segments
	func
	.function	708
~~k_draw_segments:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L252
	tcs
	phd
	tcd
xc_0	set	4
yc_0	set	6
x_0	set	8
y_0	set	10
color_0	set	12
	.block	708
;    k_draw_pixel(xc+x, yc+y, color); 
	.sym	xc,4,5,6,16
	.sym	yc,6,5,6,16
	.sym	x,8,5,6,16
	.sym	y,10,5,6,16
	.sym	color,12,5,6,16
	.line	709
	pei	<L252+color_0
	clc
	lda	<L252+yc_0
	adc	<L252+y_0
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L255
	dey
L255:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	<L252+xc_0
	adc	<L252+x_0
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L256
	dey
L256:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_draw_pixel
;    k_draw_pixel(xc-x, yc+y, color); 
	.line	710
	pei	<L252+color_0
	clc
	lda	<L252+yc_0
	adc	<L252+y_0
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L257
	dey
L257:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	sec
	lda	<L252+xc_0
	sbc	<L252+x_0
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L258
	dey
L258:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_draw_pixel
;    k_draw_pixel(xc+x, yc-y, color); 
	.line	711
	pei	<L252+color_0
	sec
	lda	<L252+yc_0
	sbc	<L252+y_0
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L259
	dey
L259:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	<L252+xc_0
	adc	<L252+x_0
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L260
	dey
L260:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_draw_pixel
;    k_draw_pixel(xc-x, yc-y, color); 
	.line	712
	pei	<L252+color_0
	sec
	lda	<L252+yc_0
	sbc	<L252+y_0
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L261
	dey
L261:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	sec
	lda	<L252+xc_0
	sbc	<L252+x_0
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L262
	dey
L262:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_draw_pixel
;    k_draw_pixel(xc+y, yc+x, color); 
	.line	713
	pei	<L252+color_0
	clc
	lda	<L252+yc_0
	adc	<L252+x_0
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L263
	dey
L263:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	<L252+xc_0
	adc	<L252+y_0
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L264
	dey
L264:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_draw_pixel
;    k_draw_pixel(xc-y, yc+x, color); 
	.line	714
	pei	<L252+color_0
	clc
	lda	<L252+yc_0
	adc	<L252+x_0
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L265
	dey
L265:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	sec
	lda	<L252+xc_0
	sbc	<L252+y_0
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L266
	dey
L266:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_draw_pixel
;    k_draw_pixel(xc+y, yc-x, color); 
	.line	715
	pei	<L252+color_0
	sec
	lda	<L252+yc_0
	sbc	<L252+x_0
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L267
	dey
L267:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	<L252+xc_0
	adc	<L252+y_0
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L268
	dey
L268:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_draw_pixel
;    k_draw_pixel(xc-y, yc-x, color); 
	.line	716
	pei	<L252+color_0
	sec
	lda	<L252+yc_0
	sbc	<L252+x_0
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L269
	dey
L269:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	sec
	lda	<L252+xc_0
	sbc	<L252+y_0
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L270
	dey
L270:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_draw_pixel
;} 
	.line	717
L271:
	lda	<L252+2
	sta	<L252+2+10
	lda	<L252+1
	sta	<L252+1+10
	pld
	tsc
	clc
	adc	#L252+10
	tcs
	rtl
	.endblock	717
L252	equ	8
L253	equ	9
	ends
	efunc
	.endfunc	717,9,8
	.line	717
;
;void k_draw_filled_segments(int xc, int yc, int x, int y,int color) 
;{ 
	.line	719
	.line	720
	GUI
	xdef	~~k_draw_filled_segments
	func
	.function	720
~~k_draw_filled_segments:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L272
	tcs
	phd
	tcd
xc_0	set	4
yc_0	set	6
x_0	set	8
y_0	set	10
color_0	set	12
	.block	720
;    k_draw_pixel(xc+x, yc+y, color); 	    
	.sym	xc,4,5,6,16
	.sym	yc,6,5,6,16
	.sym	x,8,5,6,16
	.sym	y,10,5,6,16
	.sym	color,12,5,6,16
	.line	721
	pei	<L272+color_0
	clc
	lda	<L272+yc_0
	adc	<L272+y_0
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L275
	dey
L275:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	<L272+xc_0
	adc	<L272+x_0
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L276
	dey
L276:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_draw_pixel
;	k_draw_pixel(xc-x, yc+y, color); 
	.line	722
	pei	<L272+color_0
	clc
	lda	<L272+yc_0
	adc	<L272+y_0
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L277
	dey
L277:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	sec
	lda	<L272+xc_0
	sbc	<L272+x_0
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L278
	dey
L278:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_draw_pixel
;    k_draw_line(xc+x, yc+y, xc-x, yc+y,color);
	.line	723
	pei	<L272+color_0
	clc
	lda	<L272+yc_0
	adc	<L272+y_0
	pha
	sec
	lda	<L272+xc_0
	sbc	<L272+x_0
	pha
	clc
	lda	<L272+yc_0
	adc	<L272+y_0
	pha
	clc
	lda	<L272+xc_0
	adc	<L272+x_0
	pha
	jsl	~~k_draw_line
;	
;	
;	k_draw_pixel(xc+x, yc-y, color);     	
	.line	726
	pei	<L272+color_0
	sec
	lda	<L272+yc_0
	sbc	<L272+y_0
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L279
	dey
L279:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	<L272+xc_0
	adc	<L272+x_0
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L280
	dey
L280:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_draw_pixel
;	k_draw_pixel(xc-x, yc-y, color); 
	.line	727
	pei	<L272+color_0
	sec
	lda	<L272+yc_0
	sbc	<L272+y_0
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L281
	dey
L281:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	sec
	lda	<L272+xc_0
	sbc	<L272+x_0
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L282
	dey
L282:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_draw_pixel
;	k_draw_line(xc+x, yc-y, xc-x, yc-y,color);
	.line	728
	pei	<L272+color_0
	sec
	lda	<L272+yc_0
	sbc	<L272+y_0
	pha
	sec
	lda	<L272+xc_0
	sbc	<L272+x_0
	pha
	sec
	lda	<L272+yc_0
	sbc	<L272+y_0
	pha
	clc
	lda	<L272+xc_0
	adc	<L272+x_0
	pha
	jsl	~~k_draw_line
;	
;    
;	k_draw_pixel(xc+y, yc+x, color);     
	.line	731
	pei	<L272+color_0
	clc
	lda	<L272+yc_0
	adc	<L272+x_0
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L283
	dey
L283:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	<L272+xc_0
	adc	<L272+y_0
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L284
	dey
L284:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_draw_pixel
;	k_draw_pixel(xc-y, yc+x, color); 
	.line	732
	pei	<L272+color_0
	clc
	lda	<L272+yc_0
	adc	<L272+x_0
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L285
	dey
L285:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	sec
	lda	<L272+xc_0
	sbc	<L272+y_0
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L286
	dey
L286:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_draw_pixel
;	k_draw_line(xc+y, yc+x, xc-y, yc+x,color);	
	.line	733
	pei	<L272+color_0
	clc
	lda	<L272+yc_0
	adc	<L272+x_0
	pha
	sec
	lda	<L272+xc_0
	sbc	<L272+y_0
	pha
	clc
	lda	<L272+yc_0
	adc	<L272+x_0
	pha
	clc
	lda	<L272+xc_0
	adc	<L272+y_0
	pha
	jsl	~~k_draw_line
;	
;	k_draw_pixel(xc+y, yc-x, color);  
	.line	735
	pei	<L272+color_0
	sec
	lda	<L272+yc_0
	sbc	<L272+x_0
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L287
	dey
L287:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	<L272+xc_0
	adc	<L272+y_0
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L288
	dey
L288:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_draw_pixel
;	k_draw_pixel(xc-y, yc-x, color); 
	.line	736
	pei	<L272+color_0
	sec
	lda	<L272+yc_0
	sbc	<L272+x_0
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L289
	dey
L289:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	sec
	lda	<L272+xc_0
	sbc	<L272+y_0
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L290
	dey
L290:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_draw_pixel
;	k_draw_line(xc+y, yc-x, xc-y, yc-x,color);
	.line	737
	pei	<L272+color_0
	sec
	lda	<L272+yc_0
	sbc	<L272+x_0
	pha
	sec
	lda	<L272+xc_0
	sbc	<L272+y_0
	pha
	sec
	lda	<L272+yc_0
	sbc	<L272+x_0
	pha
	clc
	lda	<L272+xc_0
	adc	<L272+y_0
	pha
	jsl	~~k_draw_line
;}
	.line	738
L291:
	lda	<L272+2
	sta	<L272+2+10
	lda	<L272+1
	sta	<L272+1+10
	pld
	tsc
	clc
	adc	#L272+10
	tcs
	rtl
	.endblock	738
L272	equ	8
L273	equ	9
	ends
	efunc
	.endfunc	738,9,8
	.line	738
;  
;// Function for circle-generation 
;// using Bresenham's algorithm 
;void k_draw_circle(int xc, int yc, int r, int color) 
;{ 
	.line	742
	.line	743
	GUI
	xdef	~~k_draw_circle
	func
	.function	743
~~k_draw_circle:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L292
	tcs
	phd
	tcd
xc_0	set	4
yc_0	set	6
r_0	set	8
color_0	set	10
	.block	743
;    int x = 0;
;	int y = r; 
;	
;    int d = 3 - 2 * r; 
;	
;    k_draw_segments(xc, yc, x, y, color); 
x_1	set	0
y_1	set	2
d_1	set	4
	.sym	x,0,5,1,16
	.sym	y,2,5,1,16
	.sym	d,4,5,1,16
	.sym	xc,4,5,6,16
	.sym	yc,6,5,6,16
	.sym	r,8,5,6,16
	.sym	color,10,5,6,16
	stz	<L293+x_1
	lda	<L292+r_0
	sta	<L293+y_1
	lda	<L292+r_0
	asl	A
	sta	<R0
	sec
	lda	#$3
	sbc	<R0
	sta	<L293+d_1
	.line	749
	pei	<L292+color_0
	pei	<L293+y_1
	pei	<L293+x_1
	pei	<L292+yc_0
	pei	<L292+xc_0
	jsl	~~k_draw_segments
;	
;    while (y >= x) 
	.line	751
L10032:
	sec
	lda	<L293+y_1
	sbc	<L293+x_1
	bvs	L295
	eor	#$8000
L295:
	bmi	L296
	brl	L10033
L296:
;    { 
	.line	752
;        // for each pixel we will 
;        // draw all eight pixels 
;          
;        x++; 
	.line	756
	inc	<L293+x_1
;  
;        // check for decision parameter 
;        // and correspondingly  
;        // update d, x, y 
;        if (d > 0) 
	.line	761
;        { 
	sec
	lda	#$0
	sbc	<L293+d_1
	bvs	L297
	eor	#$8000
L297:
	bpl	L298
	brl	L10034
L298:
	.line	762
;            y--;  
	.line	763
	dec	<L293+y_1
;            d = d + 4 * (x - y) + 10; 
	.line	764
	sec
	lda	<L293+x_1
	sbc	<L293+y_1
	sta	<R1
	lda	<R1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	<R0
	adc	<L293+d_1
	sta	<R1
	clc
	lda	#$a
	adc	<R1
	sta	<L293+d_1
;        } 
	.line	765
;        else
	brl	L10035
L10034:
;            d = d + 4 * x + 6; 
	.line	767
	lda	<L293+x_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	<R0
	adc	<L293+d_1
	sta	<R1
	clc
	lda	#$6
	adc	<R1
	sta	<L293+d_1
L10035:
;        k_draw_segments(xc, yc, x, y, color); 
	.line	768
	pei	<L292+color_0
	pei	<L293+y_1
	pei	<L293+x_1
	pei	<L292+yc_0
	pei	<L292+xc_0
	jsl	~~k_draw_segments
;       
;    } 
	.line	770
	brl	L10032
L10033:
;} 
	.line	771
L299:
	lda	<L292+2
	sta	<L292+2+8
	lda	<L292+1
	sta	<L292+1+8
	pld
	tsc
	clc
	adc	#L292+8
	tcs
	rtl
	.endblock	771
L292	equ	14
L293	equ	9
	ends
	efunc
	.endfunc	771,9,14
	.line	771
;
;void k_draw_filled_circle(int xc, int yc, int r, int color) 
;{ 
	.line	773
	.line	774
	GUI
	xdef	~~k_draw_filled_circle
	func
	.function	774
~~k_draw_filled_circle:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L300
	tcs
	phd
	tcd
xc_0	set	4
yc_0	set	6
r_0	set	8
color_0	set	10
	.block	774
;    int x = 0;
;	int y = r; 
;	
;    int d = 3 - 2 * r; 
;	
;    k_draw_filled_segments(xc, yc, x, y, color); 
x_1	set	0
y_1	set	2
d_1	set	4
	.sym	x,0,5,1,16
	.sym	y,2,5,1,16
	.sym	d,4,5,1,16
	.sym	xc,4,5,6,16
	.sym	yc,6,5,6,16
	.sym	r,8,5,6,16
	.sym	color,10,5,6,16
	stz	<L301+x_1
	lda	<L300+r_0
	sta	<L301+y_1
	lda	<L300+r_0
	asl	A
	sta	<R0
	sec
	lda	#$3
	sbc	<R0
	sta	<L301+d_1
	.line	780
	pei	<L300+color_0
	pei	<L301+y_1
	pei	<L301+x_1
	pei	<L300+yc_0
	pei	<L300+xc_0
	jsl	~~k_draw_filled_segments
;	
;    while (y >= x) 
	.line	782
L10036:
	sec
	lda	<L301+y_1
	sbc	<L301+x_1
	bvs	L303
	eor	#$8000
L303:
	bmi	L304
	brl	L10037
L304:
;    { 
	.line	783
;        // for each pixel we will 
;        // draw all eight pixels 
;          
;        x++; 
	.line	787
	inc	<L301+x_1
;  
;        // check for decision parameter 
;        // and correspondingly  
;        // update d, x, y 
;        if (d > 0) 
	.line	792
;        { 
	sec
	lda	#$0
	sbc	<L301+d_1
	bvs	L305
	eor	#$8000
L305:
	bpl	L306
	brl	L10038
L306:
	.line	793
;            y--;  
	.line	794
	dec	<L301+y_1
;            d = d + 4 * (x - y) + 10; 
	.line	795
	sec
	lda	<L301+x_1
	sbc	<L301+y_1
	sta	<R1
	lda	<R1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	<R0
	adc	<L301+d_1
	sta	<R1
	clc
	lda	#$a
	adc	<R1
	sta	<L301+d_1
;        } 
	.line	796
;        else
	brl	L10039
L10038:
;            d = d + 4 * x + 6; 
	.line	798
	lda	<L301+x_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	<R0
	adc	<L301+d_1
	sta	<R1
	clc
	lda	#$6
	adc	<R1
	sta	<L301+d_1
L10039:
;        k_draw_filled_segments(xc, yc, x, y, color); 
	.line	799
	pei	<L300+color_0
	pei	<L301+y_1
	pei	<L301+x_1
	pei	<L300+yc_0
	pei	<L300+xc_0
	jsl	~~k_draw_filled_segments
;       
;    } 
	.line	801
	brl	L10036
L10037:
;} 
	.line	802
L307:
	lda	<L300+2
	sta	<L300+2+8
	lda	<L300+1
	sta	<L300+1+8
	pld
	tsc
	clc
	adc	#L300+8
	tcs
	rtl
	.endblock	802
L300	equ	14
L301	equ	9
	ends
	efunc
	.endfunc	802,9,14
	.line	802
;void k_draw_line(int x0, int y0, int x1, int y1,int color)
;{
	.line	803
	.line	804
	GUI
	xdef	~~k_draw_line
	func
	.function	804
~~k_draw_line:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L308
	tcs
	phd
	tcd
x0_0	set	4
y0_0	set	6
x1_0	set	8
y1_0	set	10
color_0	set	12
	.block	804
;	k_draw_line_ex(x0, y0, x1, y1,color,BITMAP_FRONT);
	.sym	x0,4,5,6,16
	.sym	y0,6,5,6,16
	.sym	x1,8,5,6,16
	.sym	y1,10,5,6,16
	.sym	color,12,5,6,16
	.line	805
	pea	#<$0
	pei	<L308+color_0
	pei	<L308+y1_0
	pei	<L308+x1_0
	pei	<L308+y0_0
	pei	<L308+x0_0
	jsl	~~k_draw_line_ex
;}
	.line	806
L311:
	lda	<L308+2
	sta	<L308+2+10
	lda	<L308+1
	sta	<L308+1+10
	pld
	tsc
	clc
	adc	#L308+10
	tcs
	rtl
	.endblock	806
L308	equ	0
L309	equ	1
	ends
	efunc
	.endfunc	806,1,0
	.line	806
;
;void k_draw_line_ex(int x0, int y0, int x1, int y1,int color,UINT page)
;{
	.line	808
	.line	809
	GUI
	xdef	~~k_draw_line_ex
	func
	.function	809
~~k_draw_line_ex:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L312
	tcs
	phd
	tcd
x0_0	set	4
y0_0	set	6
x1_0	set	8
y1_0	set	10
color_0	set	12
page_0	set	14
	.block	809
; 	int dx = abs(x1-x0), sx = x0<x1 ? 1 : -1;
;	int dy = abs(y1-y0), sy = y0<y1 ? 1 : -1; 
;	int err = (dx>dy ? dx : -dy)/2, e2;
;
;	for(;;)
dx_1	set	0
sx_1	set	2
dy_1	set	4
sy_1	set	6
err_1	set	8
e2_1	set	10
	.sym	dx,0,5,1,16
	.sym	sx,2,5,1,16
	.sym	dy,4,5,1,16
	.sym	sy,6,5,1,16
	.sym	err,8,5,1,16
	.sym	e2,10,5,1,16
	.sym	x0,4,5,6,16
	.sym	y0,6,5,6,16
	.sym	x1,8,5,6,16
	.sym	y1,10,5,6,16
	.sym	color,12,5,6,16
	.sym	page,14,16,6,16
	sec
	lda	<L312+x1_0
	sbc	<L312+x0_0
	pha
	jsl	~~abs
	sta	<L313+dx_1
	sec
	lda	<L312+x0_0
	sbc	<L312+x1_0
	bvs	L316
	eor	#$8000
L316:
	bpl	L317
	brl	L315
L317:
	lda	#$1
	bra	L318
L315:
	lda	#$ffff
L318:
	sta	<L313+sx_1
	sec
	lda	<L312+y1_0
	sbc	<L312+y0_0
	pha
	jsl	~~abs
	sta	<L313+dy_1
	sec
	lda	<L312+y0_0
	sbc	<L312+y1_0
	bvs	L320
	eor	#$8000
L320:
	bpl	L321
	brl	L319
L321:
	lda	#$1
	bra	L322
L319:
	lda	#$ffff
L322:
	sta	<L313+sy_1
	sec
	lda	<L313+dy_1
	sbc	<L313+dx_1
	bvs	L324
	eor	#$8000
L324:
	bpl	L325
	brl	L323
L325:
	lda	<L313+dx_1
	bra	L326
L323:
	sec
	lda	#$0
	sbc	<L313+dy_1
	sta	<R0
	lda	<R0
L326:
	sta	<R0
	lda	<R0
	ldx	#<$2
	xref	~~~div
	jsl	~~~div
	sta	<L313+err_1
	.line	814
L10042:
;	{
	.line	815
;		k_draw_pixel_ex(x0,y0,color,page);
	.line	816
	pei	<L312+page_0
	pei	<L312+color_0
	ldy	#$0
	lda	<L312+y0_0
	bpl	L327
	dey
L327:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	lda	<L312+x0_0
	bpl	L328
	dey
L328:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_draw_pixel_ex
;		if (x0==x1 && y0==y1) break;
	.line	817
	lda	<L312+x0_0
	cmp	<L312+x1_0
	beq	L330
	brl	L329
L330:
	lda	<L312+y0_0
	cmp	<L312+y1_0
	bne	L331
	brl	L10041
L331:
L329:
;		e2 = err;
	.line	818
	lda	<L313+err_1
	sta	<L313+e2_1
;		if (e2 >-dx) { err -= dy; x0 += sx; }
	.line	819
	sec
	lda	#$0
	sbc	<L313+dx_1
	sta	<R0
	sec
	lda	<R0
	sbc	<L313+e2_1
	bvs	L332
	eor	#$8000
L332:
	bpl	L333
	brl	L10043
L333:
	.line	819
	.line	819
	sec
	lda	<L313+err_1
	sbc	<L313+dy_1
	sta	<L313+err_1
	.line	819
	clc
	lda	<L312+x0_0
	adc	<L313+sx_1
	sta	<L312+x0_0
	.line	819
;		if (e2 < dy) { err += dx; y0 += sy; }
L10043:
	.line	820
	sec
	lda	<L313+e2_1
	sbc	<L313+dy_1
	bvs	L334
	eor	#$8000
L334:
	bpl	L335
	brl	L10044
L335:
	.line	820
	.line	820
	clc
	lda	<L313+err_1
	adc	<L313+dx_1
	sta	<L313+err_1
	.line	820
	clc
	lda	<L312+y0_0
	adc	<L313+sy_1
	sta	<L312+y0_0
	.line	820
;	}
L10044:
	.line	821
L10040:
	brl	L10042
L10041:
;}
	.line	822
L336:
	lda	<L312+2
	sta	<L312+2+12
	lda	<L312+1
	sta	<L312+1+12
	pld
	tsc
	clc
	adc	#L312+12
	tcs
	rtl
	.endblock	822
L312	equ	20
L313	equ	9
	ends
	efunc
	.endfunc	822,9,20
	.line	822
;
;void k_draw_line_with_pattern(int x0, int y0, int x1, int y1,int color, UINT brush)
;{
	.line	824
	.line	825
	GUI
	xdef	~~k_draw_line_with_pattern
	func
	.function	825
~~k_draw_line_with_pattern:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L337
	tcs
	phd
	tcd
x0_0	set	4
y0_0	set	6
x1_0	set	8
y1_0	set	10
color_0	set	12
brush_0	set	14
	.block	825
; 	int dx = abs(x1-x0), sx = x0<x1 ? 1 : -1;
;	int dy = abs(y1-y0), sy = y0<y1 ? 1 : -1;
;	int err = (dx>dy ? dx : -dy)/2, e2;
;
;	for(;;)
dx_1	set	0
sx_1	set	2
dy_1	set	4
sy_1	set	6
err_1	set	8
e2_1	set	10
	.sym	dx,0,5,1,16
	.sym	sx,2,5,1,16
	.sym	dy,4,5,1,16
	.sym	sy,6,5,1,16
	.sym	err,8,5,1,16
	.sym	e2,10,5,1,16
	.sym	x0,4,5,6,16
	.sym	y0,6,5,6,16
	.sym	x1,8,5,6,16
	.sym	y1,10,5,6,16
	.sym	color,12,5,6,16
	.sym	brush,14,16,6,16
	sec
	lda	<L337+x1_0
	sbc	<L337+x0_0
	pha
	jsl	~~abs
	sta	<L338+dx_1
	sec
	lda	<L337+x0_0
	sbc	<L337+x1_0
	bvs	L341
	eor	#$8000
L341:
	bpl	L342
	brl	L340
L342:
	lda	#$1
	bra	L343
L340:
	lda	#$ffff
L343:
	sta	<L338+sx_1
	sec
	lda	<L337+y1_0
	sbc	<L337+y0_0
	pha
	jsl	~~abs
	sta	<L338+dy_1
	sec
	lda	<L337+y0_0
	sbc	<L337+y1_0
	bvs	L345
	eor	#$8000
L345:
	bpl	L346
	brl	L344
L346:
	lda	#$1
	bra	L347
L344:
	lda	#$ffff
L347:
	sta	<L338+sy_1
	sec
	lda	<L338+dy_1
	sbc	<L338+dx_1
	bvs	L349
	eor	#$8000
L349:
	bpl	L350
	brl	L348
L350:
	lda	<L338+dx_1
	bra	L351
L348:
	sec
	lda	#$0
	sbc	<L338+dy_1
	sta	<R0
	lda	<R0
L351:
	sta	<R0
	lda	<R0
	ldx	#<$2
	xref	~~~div
	jsl	~~~div
	sta	<L338+err_1
	.line	830
L10047:
;	{
	.line	831
;		if()
	.line	832
;		k_draw_pixel(x0,y0,color);
	.line	833
	pei	<L337+color_0
	ldy	#$0
	lda	<L337+y0_0
	bpl	L352
	dey
L352:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	lda	<L337+x0_0
	bpl	L353
	dey
L353:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_draw_pixel
;		if (x0==x1 && y0==y1) break;
L10048:
	.line	834
	lda	<L337+x0_0
	cmp	<L337+x1_0
	beq	L355
	brl	L354
L355:
	lda	<L337+y0_0
	cmp	<L337+y1_0
	bne	L356
	brl	L10046
L356:
L354:
;		e2 = err;
	.line	835
	lda	<L338+err_1
	sta	<L338+e2_1
;		if (e2 >-dx) { err -= dy; x0 += sx; }
	.line	836
	sec
	lda	#$0
	sbc	<L338+dx_1
	sta	<R0
	sec
	lda	<R0
	sbc	<L338+e2_1
	bvs	L357
	eor	#$8000
L357:
	bpl	L358
	brl	L10049
L358:
	.line	836
	.line	836
	sec
	lda	<L338+err_1
	sbc	<L338+dy_1
	sta	<L338+err_1
	.line	836
	clc
	lda	<L337+x0_0
	adc	<L338+sx_1
	sta	<L337+x0_0
	.line	836
;		if (e2 < dy) { err += dx; y0 += sy; }
L10049:
	.line	837
	sec
	lda	<L338+e2_1
	sbc	<L338+dy_1
	bvs	L359
	eor	#$8000
L359:
	bpl	L360
	brl	L10050
L360:
	.line	837
	.line	837
	clc
	lda	<L338+err_1
	adc	<L338+dx_1
	sta	<L338+err_1
	.line	837
	clc
	lda	<L337+y0_0
	adc	<L338+sy_1
	sta	<L337+y0_0
	.line	837
;	}
L10050:
	.line	838
L10045:
	brl	L10047
L10046:
;}
	.line	839
L361:
	lda	<L337+2
	sta	<L337+2+12
	lda	<L337+1
	sta	<L337+1+12
	pld
	tsc
	clc
	adc	#L337+12
	tcs
	rtl
	.endblock	839
L337	equ	20
L338	equ	9
	ends
	efunc
	.endfunc	839,9,20
	.line	839
;
;void k_draw_rect_slow(int left,int top, int right, int bottom, char color)
;{
	.line	841
	.line	842
	GUI
	xdef	~~k_draw_rect_slow
	func
	.function	842
~~k_draw_rect_slow:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L362
	tcs
	phd
	tcd
left_0	set	4
top_0	set	6
right_0	set	8
bottom_0	set	10
color_0	set	12
	.block	842
;	k_draw_line(left,top,right,top,color);
	.sym	left,4,5,6,16
	.sym	top,6,5,6,16
	.sym	right,8,5,6,16
	.sym	bottom,10,5,6,16
	.sym	color,12,14,6,8
	.line	843
	lda	<L362+color_0
	and	#$ff
	pha
	pei	<L362+top_0
	pei	<L362+right_0
	pei	<L362+top_0
	pei	<L362+left_0
	jsl	~~k_draw_line
;	k_draw_line(left,top,left,bottom,color);
	.line	844
	lda	<L362+color_0
	and	#$ff
	pha
	pei	<L362+bottom_0
	pei	<L362+left_0
	pei	<L362+top_0
	pei	<L362+left_0
	jsl	~~k_draw_line
;	k_draw_line(right,top,right,bottom,color);
	.line	845
	lda	<L362+color_0
	and	#$ff
	pha
	pei	<L362+bottom_0
	pei	<L362+right_0
	pei	<L362+top_0
	pei	<L362+right_0
	jsl	~~k_draw_line
;	k_draw_line(left,bottom,right,bottom,color);
	.line	846
	lda	<L362+color_0
	and	#$ff
	pha
	pei	<L362+bottom_0
	pei	<L362+right_0
	pei	<L362+bottom_0
	pei	<L362+left_0
	jsl	~~k_draw_line
;}
	.line	847
L365:
	lda	<L362+2
	sta	<L362+2+10
	lda	<L362+1
	sta	<L362+1+10
	pld
	tsc
	clc
	adc	#L362+10
	tcs
	rtl
	.endblock	847
L362	equ	0
L363	equ	1
	ends
	efunc
	.endfunc	847,1,0
	.line	847
;
;void k_draw_rect(int left,int top, int right, int bottom, char color,UINT brush,UINT page)
;{
	.line	849
	.line	850
	GUI
	xdef	~~k_draw_rect
	func
	.function	850
~~k_draw_rect:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L366
	tcs
	phd
	tcd
left_0	set	4
top_0	set	6
right_0	set	8
bottom_0	set	10
color_0	set	12
brush_0	set	14
page_0	set	16
	.block	850
;	k_draw_line_ex(left,top,right,top,color,page);
	.sym	left,4,5,6,16
	.sym	top,6,5,6,16
	.sym	right,8,5,6,16
	.sym	bottom,10,5,6,16
	.sym	color,12,14,6,8
	.sym	brush,14,16,6,16
	.sym	page,16,16,6,16
	.line	851
	pei	<L366+page_0
	lda	<L366+color_0
	and	#$ff
	pha
	pei	<L366+top_0
	pei	<L366+right_0
	pei	<L366+top_0
	pei	<L366+left_0
	jsl	~~k_draw_line_ex
;	k_draw_line_ex(left,top,left,bottom,color,page);
	.line	852
	pei	<L366+page_0
	lda	<L366+color_0
	and	#$ff
	pha
	pei	<L366+bottom_0
	pei	<L366+left_0
	pei	<L366+top_0
	pei	<L366+left_0
	jsl	~~k_draw_line_ex
;	k_draw_line_ex(right,top,right,bottom,color,page);
	.line	853
	pei	<L366+page_0
	lda	<L366+color_0
	and	#$ff
	pha
	pei	<L366+bottom_0
	pei	<L366+right_0
	pei	<L366+top_0
	pei	<L366+right_0
	jsl	~~k_draw_line_ex
;	k_draw_line_ex(left,bottom,right,bottom,color,page);
	.line	854
	pei	<L366+page_0
	lda	<L366+color_0
	and	#$ff
	pha
	pei	<L366+bottom_0
	pei	<L366+right_0
	pei	<L366+bottom_0
	pei	<L366+left_0
	jsl	~~k_draw_line_ex
;}
	.line	855
L369:
	lda	<L366+2
	sta	<L366+2+14
	lda	<L366+1
	sta	<L366+1+14
	pld
	tsc
	clc
	adc	#L366+14
	tcs
	rtl
	.endblock	855
L366	equ	0
L367	equ	1
	ends
	efunc
	.endfunc	855,1,0
	.line	855
;
;void k_draw_filled_rect_slow(int left,int top, int right, int bottom, char color)
;{
	.line	857
	.line	858
	GUI
	xdef	~~k_draw_filled_rect_slow
	func
	.function	858
~~k_draw_filled_rect_slow:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L370
	tcs
	phd
	tcd
left_0	set	4
top_0	set	6
right_0	set	8
bottom_0	set	10
color_0	set	12
	.block	858
;	
;}
	.sym	left,4,5,6,16
	.sym	top,6,5,6,16
	.sym	right,8,5,6,16
	.sym	bottom,10,5,6,16
	.sym	color,12,14,6,8
	.line	860
L373:
	lda	<L370+2
	sta	<L370+2+10
	lda	<L370+1
	sta	<L370+1+10
	pld
	tsc
	clc
	adc	#L370+10
	tcs
	rtl
	.endblock	860
L370	equ	0
L371	equ	1
	ends
	efunc
	.endfunc	860,1,0
	.line	860
;
;
;int k_put_draw_text(int col,int row,char FAR *text,char color,char bcolor)
;{
	.line	863
	.line	864
	GUI
	xdef	~~k_put_draw_text
	func
	.function	864
~~k_put_draw_text:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L374
	tcs
	phd
	tcd
col_0	set	4
row_0	set	6
text_0	set	8
color_0	set	12
bcolor_0	set	14
	.block	864
;	return k_draw_text(text, row, col, color);
	.sym	col,4,5,6,16
	.sym	row,6,5,6,16
	.sym	text,8,142,6,32
	.sym	color,12,14,6,8
	.sym	bcolor,14,14,6,8
	.line	865
	pei	<L374+color_0
	pei	<L374+col_0
	pei	<L374+row_0
	pei	<L374+text_0+2
	pei	<L374+text_0
	jsl	~~k_draw_text
L377:
	tay
	lda	<L374+2
	sta	<L374+2+12
	lda	<L374+1
	sta	<L374+1+12
	pld
	tsc
	clc
	adc	#L374+12
	tcs
	tya
	rtl
;}
	.line	866
	.endblock	866
L374	equ	0
L375	equ	1
	ends
	efunc
	.endfunc	866,1,0
	.line	866
;
;int k_draw_text(char FAR *text,int row,int col,char color)
;{
	.line	868
	.line	869
	GUI
	xdef	~~k_draw_text
	func
	.function	869
~~k_draw_text:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L378
	tcs
	phd
	tcd
text_0	set	4
row_0	set	8
col_0	set	10
color_0	set	12
	.block	869
;	char FAR * ptr = (text);
;	while(*ptr)
ptr_1	set	0
	.sym	ptr,0,142,1,32
	.sym	text,4,142,6,32
	.sym	row,8,5,6,16
	.sym	col,10,5,6,16
	.sym	color,12,14,6,8
	lda	<L378+text_0
	sta	<L379+ptr_1
	lda	<L378+text_0+2
	sta	<L379+ptr_1+2
	.line	871
L10051:
	lda	[<L379+ptr_1]
	and	#$ff
	bne	L381
	brl	L10052
L381:
;	{
	.line	872
;		k_put_font(*ptr,col,row,color);
	.line	873
	pei	<L378+color_0
	pei	<L378+row_0
	pei	<L378+col_0
	lda	[<L379+ptr_1]
	pha
	jsl	~~k_put_font
;		col++;
	.line	874
	inc	<L378+col_0
;		ptr++;
	.line	875
	inc	<L379+ptr_1
	bne	L382
	inc	<L379+ptr_1+2
L382:
;	}
	.line	876
	brl	L10051
L10052:
;	
;	return col;
	.line	878
	lda	<L378+col_0
L383:
	tay
	lda	<L378+2
	sta	<L378+2+10
	lda	<L378+1
	sta	<L378+1+10
	pld
	tsc
	clc
	adc	#L378+10
	tcs
	tya
	rtl
;}
	.line	879
	.endblock	879
L378	equ	4
L379	equ	1
	ends
	efunc
	.endfunc	879,1,4
	.line	879
;
;int k_draw_text_point_ex(LPCSTR text,int x,int y,char color,UINT page)
;{
	.line	881
	.line	882
	GUI
	xdef	~~k_draw_text_point_ex
	func
	.function	882
~~k_draw_text_point_ex:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L384
	tcs
	phd
	tcd
text_0	set	4
x_0	set	8
y_0	set	10
color_0	set	12
page_0	set	14
	.block	882
;	int col = 0;
;	int width = 0;
;	int height = 0;
;
;	LPCSTR ptr = (text);
;
;	width  = Bm437ToshibaLCD8x8[0];
col_1	set	0
width_1	set	2
height_1	set	4
ptr_1	set	6
	.sym	col,0,5,1,16
	.sym	width,2,5,1,16
	.sym	height,4,5,1,16
	.sym	ptr,6,142,1,32
	.sym	text,4,142,6,32
	.sym	x,8,5,6,16
	.sym	y,10,5,6,16
	.sym	color,12,14,6,8
	.sym	page,14,16,6,16
	stz	<L385+col_1
	stz	<L385+width_1
	stz	<L385+height_1
	lda	<L384+text_0
	sta	<L385+ptr_1
	lda	<L384+text_0+2
	sta	<L385+ptr_1+2
	.line	889
	lda	>~~Bm437ToshibaLCD8x8
	and	#$ff
	sta	<L385+width_1
;	height = Bm437ToshibaLCD8x8[1];
	.line	890
	lda	>~~Bm437ToshibaLCD8x8+1
	and	#$ff
	sta	<L385+height_1
;
;
;	ptr = (text);
	.line	893
	lda	<L384+text_0
	sta	<L385+ptr_1
	lda	<L384+text_0+2
	sta	<L385+ptr_1+2
;	while(*ptr)
	.line	894
L10053:
	lda	[<L385+ptr_1]
	and	#$ff
	bne	L387
	brl	L10054
L387:
;	{
	.line	895
;		x+=k_put_binary_variablefont_point_ex( (LPCHAR)&Bm437ToshibaLCD8x8[2] , *ptr,x,y,width,height,color,page);
	.line	896
	pei	<L384+page_0
	pei	<L384+color_0
	pei	<L385+height_1
	pei	<L385+width_1
	pei	<L384+y_0
	pei	<L384+x_0
	lda	[<L385+ptr_1]
	pha
	pea	#^~~Bm437ToshibaLCD8x8+2
	pea	#<~~Bm437ToshibaLCD8x8+2
	jsl	~~k_put_binary_variablefont_point_ex
	sta	<R0
	clc
	lda	<R0
	adc	<L384+x_0
	sta	<L384+x_0
;
;		ptr++;
	.line	898
	inc	<L385+ptr_1
	bne	L388
	inc	<L385+ptr_1+2
L388:
;		col+=FONTW;
	.line	899
	jsl	~~k_font_getFontWidth
	sta	<R0
	clc
	lda	<R0
	adc	<L385+col_1
	sta	<L385+col_1
;	}
	.line	900
	brl	L10053
L10054:
;
;	return col;
	.line	902
	lda	<L385+col_1
L389:
	tay
	lda	<L384+2
	sta	<L384+2+12
	lda	<L384+1
	sta	<L384+1+12
	pld
	tsc
	clc
	adc	#L384+12
	tcs
	tya
	rtl
;}
	.line	903
	.endblock	903
L384	equ	14
L385	equ	5
	ends
	efunc
	.endfunc	903,5,14
	.line	903
;
;int k_draw_text_point(LPCSTR text,int x,int y,char color)
;{
	.line	905
	.line	906
	GUI
	xdef	~~k_draw_text_point
	func
	.function	906
~~k_draw_text_point:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L390
	tcs
	phd
	tcd
text_0	set	4
x_0	set	8
y_0	set	10
color_0	set	12
	.block	906
;	int col = 0;
;	int width = 0;
;	int height = 0;
;
;	LPCSTR ptr = (text);
;	
;	width  = Bm437ToshibaLCD8x8[0];
col_1	set	0
width_1	set	2
height_1	set	4
ptr_1	set	6
	.sym	col,0,5,1,16
	.sym	width,2,5,1,16
	.sym	height,4,5,1,16
	.sym	ptr,6,142,1,32
	.sym	text,4,142,6,32
	.sym	x,8,5,6,16
	.sym	y,10,5,6,16
	.sym	color,12,14,6,8
	stz	<L391+col_1
	stz	<L391+width_1
	stz	<L391+height_1
	lda	<L390+text_0
	sta	<L391+ptr_1
	lda	<L390+text_0+2
	sta	<L391+ptr_1+2
	.line	913
	lda	>~~Bm437ToshibaLCD8x8
	and	#$ff
	sta	<L391+width_1
;	height = Bm437ToshibaLCD8x8[1];
	.line	914
	lda	>~~Bm437ToshibaLCD8x8+1
	and	#$ff
	sta	<L391+height_1
;
;
;	ptr = (text);
	.line	917
	lda	<L390+text_0
	sta	<L391+ptr_1
	lda	<L390+text_0+2
	sta	<L391+ptr_1+2
;	while(*ptr)
	.line	918
L10055:
	lda	[<L391+ptr_1]
	and	#$ff
	bne	L393
	brl	L10056
L393:
;	{
	.line	919
;		//x+=k_put_font_point(*ptr,x,y,color);
;
;		//x+=k_put_binary_font_point( Bm437ToshibaLCD8x8 , *ptr,x,y,color);
;		//x+=k_put_binary_font_point( Bm437AmstradPC1512_2y , *ptr,x,y,color);
;
;		x+=k_put_binary_variablefont_point( (LPCHAR)&Bm437ToshibaLCD8x8[2] , *ptr,x,y,width,height,color);
	.line	925
	pei	<L390+color_0
	pei	<L391+height_1
	pei	<L391+width_1
	pei	<L390+y_0
	pei	<L390+x_0
	lda	[<L391+ptr_1]
	pha
	pea	#^~~Bm437ToshibaLCD8x8+2
	pea	#<~~Bm437ToshibaLCD8x8+2
	jsl	~~k_put_binary_variablefont_point
	sta	<R0
	clc
	lda	<R0
	adc	<L390+x_0
	sta	<L390+x_0
;
;		ptr++;
	.line	927
	inc	<L391+ptr_1
	bne	L394
	inc	<L391+ptr_1+2
L394:
;		col+=FONTW;
	.line	928
	jsl	~~k_font_getFontWidth
	sta	<R0
	clc
	lda	<R0
	adc	<L391+col_1
	sta	<L391+col_1
;	}
	.line	929
	brl	L10055
L10056:
;	
;	return col;
	.line	931
	lda	<L391+col_1
L395:
	tay
	lda	<L390+2
	sta	<L390+2+10
	lda	<L390+1
	sta	<L390+1+10
	pld
	tsc
	clc
	adc	#L390+10
	tcs
	tya
	rtl
;}
	.line	932
	.endblock	932
L390	equ	14
L391	equ	5
	ends
	efunc
	.endfunc	932,5,14
	.line	932
;
;int k_draw_text_point_with_font_ex(LPCSTR text,LPCSTR charSet,int x,int y,char color,UINT page)
;{
	.line	934
	.line	935
	GUI
	xdef	~~k_draw_text_point_with_font_ex
	func
	.function	935
~~k_draw_text_point_with_font_ex:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L396
	tcs
	phd
	tcd
text_0	set	4
charSet_0	set	8
x_0	set	12
y_0	set	14
color_0	set	16
page_0	set	18
	.block	935
;	int col = 0;
;	int width = 0;
;	int height = 0;
;
;	LPCHAR ptr = NULL;
;
;	//k_debug_pointer("k_draw_text_point_with_font:font charSet:",(LPVOID)charSet);
;
;	width  = (INT)(((INT)charSet[0]) & 0x00FF);
col_1	set	0
width_1	set	2
height_1	set	4
ptr_1	set	6
	.sym	col,0,5,1,16
	.sym	width,2,5,1,16
	.sym	height,4,5,1,16
	.sym	ptr,6,142,1,32
	.sym	text,4,142,6,32
	.sym	charSet,8,142,6,32
	.sym	x,12,5,6,16
	.sym	y,14,5,6,16
	.sym	color,16,14,6,8
	.sym	page,18,16,6,16
	stz	<L397+col_1
	stz	<L397+width_1
	stz	<L397+height_1
	stz	<L397+ptr_1
	stz	<L397+ptr_1+2
	.line	944
	lda	[<L396+charSet_0]
	and	#<$ff
	sta	<L397+width_1
;	height = (INT)(((INT)charSet[1]) & 0x00FF);
	.line	945
	ldy	#$1
	lda	[<L396+charSet_0],Y
	and	#<$ff
	sta	<L397+height_1
;
;
;	k_debug_integer("k_draw_text_point_with_font:font x:",x);
	.line	948
	pei	<L396+x_0
	pea	#^L64
	pea	#<L64
	jsl	~~k_debug_integer
;	k_debug_integer("k_draw_text_point_with_font:font y:",y);
	.line	949
	pei	<L396+y_0
	pea	#^L64+36
	pea	#<L64+36
	jsl	~~k_debug_integer
;	k_debug_integer("k_draw_text_point_with_font:font width:",width);
	.line	950
	pei	<L397+width_1
	pea	#^L64+72
	pea	#<L64+72
	jsl	~~k_debug_integer
;	k_debug_integer("k_draw_text_point_with_font:font height:",height);
	.line	951
	pei	<L397+height_1
	pea	#^L64+112
	pea	#<L64+112
	jsl	~~k_debug_integer
;
;
;	ptr = (LPCHAR)(text);
	.line	954
	lda	<L396+text_0
	sta	<L397+ptr_1
	lda	<L396+text_0+2
	sta	<L397+ptr_1+2
;	while(*ptr)
	.line	955
L10057:
	lda	[<L397+ptr_1]
	and	#$ff
	bne	L399
	brl	L10058
L399:
;	{
	.line	956
;		//x+=k_put_font_point(*ptr,x,y,color);
;
;		x+=k_put_binary_variablefont_point_ex( (LPCHAR)&charSet[2] , *ptr,x,y,width,height,color,page);
	.line	959
	pei	<L396+page_0
	pei	<L396+color_0
	pei	<L397+height_1
	pei	<L397+width_1
	pei	<L396+y_0
	pei	<L396+x_0
	lda	[<L397+ptr_1]
	pha
	clc
	lda	#$2
	adc	<L396+charSet_0
	sta	<R0
	lda	#$0
	adc	<L396+charSet_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~k_put_binary_variablefont_point_ex
	sta	<R1
	clc
	lda	<R1
	adc	<L396+x_0
	sta	<L396+x_0
;		//x+=k_put_binary_font_point( Bm437AmstradPC1512_2y , *ptr,x,y,color);
;
;		ptr++;
	.line	962
	inc	<L397+ptr_1
	bne	L400
	inc	<L397+ptr_1+2
L400:
;		col+=8;
	.line	963
	clc
	lda	#$8
	adc	<L397+col_1
	sta	<L397+col_1
;	}
	.line	964
	brl	L10057
L10058:
;
;	return col;
	.line	966
	lda	<L397+col_1
L401:
	tay
	lda	<L396+2
	sta	<L396+2+16
	lda	<L396+1
	sta	<L396+1+16
	pld
	tsc
	clc
	adc	#L396+16
	tcs
	tya
	rtl
;}
	.line	967
	.endblock	967
L396	equ	18
L397	equ	9
	ends
	efunc
	.endfunc	967,9,18
	.line	967
	data
L64:
	db	$6B,$5F,$64,$72,$61,$77,$5F,$74,$65,$78,$74,$5F,$70,$6F,$69
	db	$6E,$74,$5F,$77,$69,$74,$68,$5F,$66,$6F,$6E,$74,$3A,$66,$6F
	db	$6E,$74,$20,$78,$3A,$00,$6B,$5F,$64,$72,$61,$77,$5F,$74,$65
	db	$78,$74,$5F,$70,$6F,$69,$6E,$74,$5F,$77,$69,$74,$68,$5F,$66
	db	$6F,$6E,$74,$3A,$66,$6F,$6E,$74,$20,$79,$3A,$00,$6B,$5F,$64
	db	$72,$61,$77,$5F,$74,$65,$78,$74,$5F,$70,$6F,$69,$6E,$74,$5F
	db	$77,$69,$74,$68,$5F,$66,$6F,$6E,$74,$3A,$66,$6F,$6E,$74,$20
	db	$77,$69,$64,$74,$68,$3A,$00,$6B,$5F,$64,$72,$61,$77,$5F,$74
	db	$65,$78,$74,$5F,$70,$6F,$69,$6E,$74,$5F,$77,$69,$74,$68,$5F
	db	$66,$6F,$6E,$74,$3A,$66,$6F,$6E,$74,$20,$68,$65,$69,$67,$68
	db	$74,$3A,$00
	ends
;
;int k_draw_text_point_with_font(LPCSTR text,LPCSTR charSet,int x,int y,char color)
;{
	.line	969
	.line	970
	GUI
	xdef	~~k_draw_text_point_with_font
	func
	.function	970
~~k_draw_text_point_with_font:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L403
	tcs
	phd
	tcd
text_0	set	4
charSet_0	set	8
x_0	set	12
y_0	set	14
color_0	set	16
	.block	970
;	int col = 0;
;	int width = 0;
;	int height = 0;
;
;	LPCHAR ptr = NULL;
;
;	//k_debug_pointer("k_draw_text_point_with_font:font charSet:",(LPVOID)charSet);
;
;	width  = charSet[0];
col_1	set	0
width_1	set	2
height_1	set	4
ptr_1	set	6
	.sym	col,0,5,1,16
	.sym	width,2,5,1,16
	.sym	height,4,5,1,16
	.sym	ptr,6,142,1,32
	.sym	text,4,142,6,32
	.sym	charSet,8,142,6,32
	.sym	x,12,5,6,16
	.sym	y,14,5,6,16
	.sym	color,16,14,6,8
	stz	<L404+col_1
	stz	<L404+width_1
	stz	<L404+height_1
	stz	<L404+ptr_1
	stz	<L404+ptr_1+2
	.line	979
	lda	[<L403+charSet_0]
	and	#$ff
	sta	<L404+width_1
;	height = charSet[1];
	.line	980
	ldy	#$1
	lda	[<L403+charSet_0],Y
	and	#$ff
	sta	<L404+height_1
;
;
;	//k_debug_integer("k_draw_text_point_with_font:font width:",width);
;	//k_debug_integer("k_draw_text_point_with_font:font height:",height);
;
;
;	ptr = (LPCHAR)(text);
	.line	987
	lda	<L403+text_0
	sta	<L404+ptr_1
	lda	<L403+text_0+2
	sta	<L404+ptr_1+2
;	while(*ptr)
	.line	988
L10059:
	lda	[<L404+ptr_1]
	and	#$ff
	bne	L406
	brl	L10060
L406:
;	{
	.line	989
;		//x+=k_put_font_point(*ptr,x,y,color);
;
;		x+=k_put_binary_variablefont_point( (LPCHAR)&charSet[2] , *ptr,x,y,width,height,color);
	.line	992
	pei	<L403+color_0
	pei	<L404+height_1
	pei	<L404+width_1
	pei	<L403+y_0
	pei	<L403+x_0
	lda	[<L404+ptr_1]
	pha
	clc
	lda	#$2
	adc	<L403+charSet_0
	sta	<R0
	lda	#$0
	adc	<L403+charSet_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~k_put_binary_variablefont_point
	sta	<R1
	clc
	lda	<R1
	adc	<L403+x_0
	sta	<L403+x_0
;		//x+=k_put_binary_font_point( Bm437AmstradPC1512_2y , *ptr,x,y,color);
;
;		ptr++;
	.line	995
	inc	<L404+ptr_1
	bne	L407
	inc	<L404+ptr_1+2
L407:
;		col+=8;
	.line	996
	clc
	lda	#$8
	adc	<L404+col_1
	sta	<L404+col_1
;	}
	.line	997
	brl	L10059
L10060:
;
;	return col;
	.line	999
	lda	<L404+col_1
L408:
	tay
	lda	<L403+2
	sta	<L403+2+14
	lda	<L403+1
	sta	<L403+1+14
	pld
	tsc
	clc
	adc	#L403+14
	tcs
	tya
	rtl
;}
	.line	1000
	.endblock	1000
L403	equ	18
L404	equ	9
	ends
	efunc
	.endfunc	1000,9,18
	.line	1000
;
;
;int k_draw_text_scaled(char FAR *text,int row,int col,char color,int scale)
;{
	.line	1003
	.line	1004
	GUI
	xdef	~~k_draw_text_scaled
	func
	.function	1004
~~k_draw_text_scaled:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L409
	tcs
	phd
	tcd
text_0	set	4
row_0	set	8
col_0	set	10
color_0	set	12
scale_0	set	14
	.block	1004
;	char FAR * ptr = (text);
;	while(*ptr)
ptr_1	set	0
	.sym	ptr,0,142,1,32
	.sym	text,4,142,6,32
	.sym	row,8,5,6,16
	.sym	col,10,5,6,16
	.sym	color,12,14,6,8
	.sym	scale,14,5,6,16
	lda	<L409+text_0
	sta	<L410+ptr_1
	lda	<L409+text_0+2
	sta	<L410+ptr_1+2
	.line	1006
L10061:
	lda	[<L410+ptr_1]
	and	#$ff
	bne	L412
	brl	L10062
L412:
;	{
	.line	1007
;		k_put_font_scaled(*ptr,col,row,color,scale);
	.line	1008
	pei	<L409+scale_0
	pei	<L409+color_0
	pei	<L409+row_0
	pei	<L409+col_0
	lda	[<L410+ptr_1]
	pha
	jsl	~~k_put_font_scaled
;		col++;
	.line	1009
	inc	<L409+col_0
;		ptr++;
	.line	1010
	inc	<L410+ptr_1
	bne	L413
	inc	<L410+ptr_1+2
L413:
;	}
	.line	1011
	brl	L10061
L10062:
;	
;	return col;
	.line	1013
	lda	<L409+col_0
L414:
	tay
	lda	<L409+2
	sta	<L409+2+12
	lda	<L409+1
	sta	<L409+1+12
	pld
	tsc
	clc
	adc	#L409+12
	tcs
	tya
	rtl
;}
	.line	1014
	.endblock	1014
L409	equ	4
L410	equ	1
	ends
	efunc
	.endfunc	1014,1,4
	.line	1014
;
;int k_get_font_metrics(FONTMETRIC FAR *metric)
;{
	.line	1016
	.line	1017
	GUI
	xdef	~~k_get_font_metrics
	func
	.function	1017
~~k_get_font_metrics:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L415
	tcs
	phd
	tcd
metric_0	set	4
	.block	1017
;	metric->width  = FONTW;
	.sym	metric,4,138,6,32,32
	.line	1018
	jsl	~~k_font_getFontWidth
	sta	[<L415+metric_0]
;	metric->height = FONTH;
	.line	1019
	jsl	~~k_font_getFontHeight
	ldy	#$2
	sta	[<L415+metric_0],Y
;	
;	return sizeof(FONTMETRIC);
	.line	1021
	lda	#$4
L418:
	tay
	lda	<L415+2
	sta	<L415+2+4
	lda	<L415+1
	sta	<L415+1+4
	pld
	tsc
	clc
	adc	#L415+4
	tcs
	tya
	rtl
;}
	.line	1022
	.endblock	1022
L415	equ	0
L416	equ	1
	ends
	efunc
	.endfunc	1022,1,0
	.line	1022
;
;int k_put_font_point(char outChar,int cx,int cy,char color)
;{
	.line	1024
	.line	1025
	GUI
	xdef	~~k_put_font_point
	func
	.function	1025
~~k_put_font_point:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L419
	tcs
	phd
	tcd
outChar_0	set	4
cx_0	set	6
cy_0	set	8
color_0	set	10
	.block	1025
;	int x = 0;
;	int y = 0;
;	int textX = cx;
;	int textY = cy;
;
;	char FAR* img = NULL;//fontImg[ix];
;
;	outChar = toupper(outChar); // fix this so we can to lower case
x_1	set	0
y_1	set	2
textX_1	set	4
textY_1	set	6
img_1	set	8
	.sym	x,0,5,1,16
	.sym	y,2,5,1,16
	.sym	textX,4,5,1,16
	.sym	textY,6,5,1,16
	.sym	img,8,142,1,32
	.sym	outChar,4,14,6,8
	.sym	cx,6,5,6,16
	.sym	cy,8,5,6,16
	.sym	color,10,14,6,8
	stz	<L420+x_1
	stz	<L420+y_1
	lda	<L419+cx_0
	sta	<L420+textX_1
	lda	<L419+cy_0
	sta	<L420+textY_1
	stz	<L420+img_1
	stz	<L420+img_1+2
	.line	1033
	lda	<L419+outChar_0
	and	#$ff
	pha
	jsl	~~toupper
	sep	#$20
	longa	off
	sta	<L419+outChar_0
	rep	#$20
	longa	on
;
;    if(outChar == 32)
	.line	1035
;	{
	sep	#$20
	longa	off
	lda	<L419+outChar_0
	cmp	#<$20
	rep	#$20
	longa	on
	beq	L422
	brl	L10063
L422:
	.line	1036
;	   img = NULL;//fontSpace;
	.line	1037
	stz	<L420+img_1
	stz	<L420+img_1+2
;    }
	.line	1038
;    else
	brl	L10064
L10063:
;	{
	.line	1040
;	    img = fontImg[(int)characterROMMapping[(int)(outChar & 0xFF)]];
	.line	1041
	lda	<L419+outChar_0
	and	#<$ff
	sta	<R2
	ldy	#$0
	lda	<R2
	bpl	L423
	dey
L423:
	sta	<R2
	sty	<R2+2
	pei	<R2+2
	pei	<R2
	lda	#$1
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R1
	stx	<R1+2
	clc
	lda	#<~~characterROMMapping
	adc	<R1
	sta	<R3
	lda	#^~~characterROMMapping
	adc	<R1+2
	sta	<R3+2
	ldy	#$0
	lda	[<R3]
	bpl	L424
	dey
L424:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	lda	#$6
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R0
	stx	<R0+2
	clc
	lda	#<~~fontImg
	adc	<R0
	sta	<L420+img_1
	lda	#^~~fontImg
	adc	<R0+2
	sta	<L420+img_1+2
;	}
	.line	1042
L10064:
;	//printf("putFont:%d\n",characterROMMapping[outChar]);
;
;	// get the font 'image'
;        //char *img = fontImg[ix]; 
;        // loop through pixel rows
;	if(img!=NULL)
	.line	1048
;	{
	lda	<L420+img_1
	ora	<L420+img_1+2
	bne	L425
	brl	L10065
L425:
	.line	1049
;		for (y = 0; y < FONTH; y++) 
	.line	1050
	stz	<L420+y_1
	brl	L10069
L10068:
;		{
	.line	1051
;			// loop through pixel columns
;			for (x = 0; x < FONTW; x++) 
	.line	1053
	stz	<L420+x_1
	brl	L10073
L10072:
;			{
	.line	1054
;				// get the pixel value
;				char b = img[y * FONTW + x];
;				if (b > 0) 
	.block	1057
b_2	set	12
	.sym	b,12,14,1,8
	jsl	~~k_font_getFontWidth
	sta	<R0
	lda	<R0
	ldx	<L420+y_1
	xref	~~~mul
	jsl	~~~mul
	sta	<R0
	clc
	lda	<R0
	adc	<L420+x_1
	sta	<R1
	sep	#$20
	longa	off
	ldy	<R1
	lda	[<L420+img_1],Y
	sta	<L420+b_2
	rep	#$20
	longa	on
	.line	1057
;				{ // plot the pixel
	sep	#$20
	longa	off
	lda	#$0
	cmp	<L420+b_2
	rep	#$20
	longa	on
	bcc	L427
	brl	L10074
L427:
	.line	1058
;					k_draw_pixel(textX + x, textY + y, color);
	.line	1059
	pei	<L419+color_0
	clc
	lda	<L420+textY_1
	adc	<L420+y_1
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L428
	dey
L428:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	<L420+textX_1
	adc	<L420+x_1
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L429
	dey
L429:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_draw_pixel
;				}
	.line	1060
;				else 
	brl	L10075
L10074:
;				{ 
	.line	1062
;					// leave empty (or maybe plot 'text backgr color')
;				}
	.line	1064
L10075:
;			} // end "for x"
	.endblock	1065
	.line	1065
L10070:
	inc	<L420+x_1
L10073:
	jsl	~~k_font_getFontWidth
	sta	<R0
	lda	<L420+x_1
	cmp	<R0
	bcs	L430
	brl	L10072
L430:
L10071:
;		} // end "for y"
	.line	1066
L10066:
	inc	<L420+y_1
L10069:
	jsl	~~k_font_getFontHeight
	sta	<R0
	lda	<L420+y_1
	cmp	<R0
	bcs	L431
	brl	L10068
L431:
L10067:
;	}
	.line	1067
;	return FONTW;
L10065:
	.line	1068
	jsl	~~k_font_getFontWidth
L432:
	tay
	lda	<L419+2
	sta	<L419+2+8
	lda	<L419+1
	sta	<L419+1+8
	pld
	tsc
	clc
	adc	#L419+8
	tcs
	tya
	rtl
;}
	.line	1069
	.endblock	1069
L419	equ	29
L420	equ	17
	ends
	efunc
	.endfunc	1069,17,29
	.line	1069
;
;int k_put_binary_font_point(LPCHAR fontSet, char outChar,int cx,int cy,char color)
;{
	.line	1071
	.line	1072
	GUI
	xdef	~~k_put_binary_font_point
	func
	.function	1072
~~k_put_binary_font_point:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L433
	tcs
	phd
	tcd
fontSet_0	set	4
outChar_0	set	8
cx_0	set	10
cy_0	set	12
color_0	set	14
	.block	1072
;	int x = 0;
;	int y = 0;
;	int textX = cx;
;	int textY = cy;
;
;	unsigned char FAR* img = NULL;//fontImg[ix];
;
;    if(outChar == 32)
x_1	set	0
y_1	set	2
textX_1	set	4
textY_1	set	6
img_1	set	8
	.sym	x,0,5,1,16
	.sym	y,2,5,1,16
	.sym	textX,4,5,1,16
	.sym	textY,6,5,1,16
	.sym	img,8,142,1,32
	.sym	fontSet,4,142,6,32
	.sym	outChar,8,14,6,8
	.sym	cx,10,5,6,16
	.sym	cy,12,5,6,16
	.sym	color,14,14,6,8
	stz	<L434+x_1
	stz	<L434+y_1
	lda	<L433+cx_0
	sta	<L434+textX_1
	lda	<L433+cy_0
	sta	<L434+textY_1
	stz	<L434+img_1
	stz	<L434+img_1+2
	.line	1080
;	{
	sep	#$20
	longa	off
	lda	<L433+outChar_0
	cmp	#<$20
	rep	#$20
	longa	on
	beq	L436
	brl	L10076
L436:
	.line	1081
;	   img = NULL;//fontSpace;
	.line	1082
	stz	<L434+img_1
	stz	<L434+img_1+2
;    }
	.line	1083
;    else
	brl	L10077
L10076:
;	{
	.line	1085
;	    //img = &(fontSet[characterROMMapping[outChar]]);
;    	img = fontSet+=(8*outChar);
	.line	1087
	lda	<L433+outChar_0
	and	#$ff
	sta	<R1
	lda	<R1
	asl	A
	asl	A
	asl	A
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L437
	dey
L437:
	sta	<R0
	sty	<R0+2
	clc
	lda	<L433+fontSet_0
	adc	<R0
	sta	<L433+fontSet_0
	lda	<L433+fontSet_0+2
	adc	<R0+2
	sta	<L433+fontSet_0+2
	lda	<L433+fontSet_0
	sta	<L434+img_1
	lda	<L433+fontSet_0+2
	sta	<L434+img_1+2
;    	//img = "\xc3\xc3\xc3\xc3\xc3\xc3\xc3\xc3";//&(fontSet[outChar]);
;	}
	.line	1089
L10077:
;	//printf("putFont:%d\n",characterROMMapping[outChar]);
;
;	// get the font 'image'
;        //char *img = fontImg[ix];
;        // loop through pixel rows
;	if(img!=NULL)
	.line	1095
;	{
	lda	<L434+img_1
	ora	<L434+img_1+2
	bne	L438
	brl	L10078
L438:
	.line	1096
;		for (y = 0; y < FONTH; y++)
	.line	1097
	stz	<L434+y_1
	brl	L10082
L10081:
;		{
	.line	1098
;			// get the pixel value
;			PBYTEBITS b = (PBYTEBITS)&(img[y]); //img[y * FONTW + x];
;			if (b->b7 > 0)
	.block	1101
b_2	set	12
	.sym	b,12,138,1,32,4
	ldy	#$0
	lda	<L434+y_1
	bpl	L440
	dey
L440:
	sta	<R0
	sty	<R0+2
	clc
	lda	<L434+img_1
	adc	<R0
	sta	<L434+b_2
	lda	<L434+img_1+2
	adc	<R0+2
	sta	<L434+b_2+2
	.line	1101
;				k_draw_pixel(textX + 7, textY + y, color);
	sep	#$20
	longa	off
	lda	[<L434+b_2]
	sta	<R0
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	lda	<R0
	and	#<$1
	sta	<R0
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	lda	#$0
	cmp	<R0
	rep	#$20
	longa	on
	bcc	L441
	brl	L10083
L441:
	.line	1102
	pei	<L433+color_0
	clc
	lda	<L434+textY_1
	adc	<L434+y_1
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L442
	dey
L442:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	#$7
	adc	<L434+textX_1
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L443
	dey
L443:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_draw_pixel
;			if (b->b6 > 0)
L10083:
	.line	1103
;				k_draw_pixel(textX + 6, textY + y, color);
	sep	#$20
	longa	off
	lda	[<L434+b_2]
	sta	<R0
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	lsr	<R0
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	lda	<R0
	and	#<$1
	sta	<R0
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	lda	#$0
	cmp	<R0
	rep	#$20
	longa	on
	bcc	L444
	brl	L10084
L444:
	.line	1104
	pei	<L433+color_0
	clc
	lda	<L434+textY_1
	adc	<L434+y_1
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L445
	dey
L445:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	#$6
	adc	<L434+textX_1
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L446
	dey
L446:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_draw_pixel
;			if (b->b5 > 0)
L10084:
	.line	1105
;				k_draw_pixel(textX + 5, textY + y, color);
	sep	#$20
	longa	off
	lda	[<L434+b_2]
	sta	<R0
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	lsr	<R0
	lsr	<R0
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	lda	<R0
	and	#<$1
	sta	<R0
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	lda	#$0
	cmp	<R0
	rep	#$20
	longa	on
	bcc	L447
	brl	L10085
L447:
	.line	1106
	pei	<L433+color_0
	clc
	lda	<L434+textY_1
	adc	<L434+y_1
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L448
	dey
L448:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	#$5
	adc	<L434+textX_1
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L449
	dey
L449:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_draw_pixel
;			if (b->b4 > 0)
L10085:
	.line	1107
;				k_draw_pixel(textX + 4, textY + y, color);
	sep	#$20
	longa	off
	lda	[<L434+b_2]
	sta	<R0
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	lsr	<R0
	lsr	<R0
	lsr	<R0
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	lda	<R0
	and	#<$1
	sta	<R0
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	lda	#$0
	cmp	<R0
	rep	#$20
	longa	on
	bcc	L450
	brl	L10086
L450:
	.line	1108
	pei	<L433+color_0
	clc
	lda	<L434+textY_1
	adc	<L434+y_1
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L451
	dey
L451:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	#$4
	adc	<L434+textX_1
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L452
	dey
L452:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_draw_pixel
;			if (b->b3 > 0)
L10086:
	.line	1109
;				k_draw_pixel(textX + 3, textY + y, color);
	sep	#$20
	longa	off
	lda	[<L434+b_2]
	sta	<R0
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	lsr	<R0
	lsr	<R0
	lsr	<R0
	lsr	<R0
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	lda	<R0
	and	#<$1
	sta	<R0
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	lda	#$0
	cmp	<R0
	rep	#$20
	longa	on
	bcc	L453
	brl	L10087
L453:
	.line	1110
	pei	<L433+color_0
	clc
	lda	<L434+textY_1
	adc	<L434+y_1
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L454
	dey
L454:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	#$3
	adc	<L434+textX_1
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L455
	dey
L455:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_draw_pixel
;			if (b->b2 > 0)
L10087:
	.line	1111
;				k_draw_pixel(textX + 2, textY + y, color);
	sep	#$20
	longa	off
	lda	[<L434+b_2]
	sta	<R0
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	lsr	<R0
	lsr	<R0
	lsr	<R0
	lsr	<R0
	lsr	<R0
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	lda	<R0
	and	#<$1
	sta	<R0
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	lda	#$0
	cmp	<R0
	rep	#$20
	longa	on
	bcc	L456
	brl	L10088
L456:
	.line	1112
	pei	<L433+color_0
	clc
	lda	<L434+textY_1
	adc	<L434+y_1
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L457
	dey
L457:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	#$2
	adc	<L434+textX_1
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L458
	dey
L458:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_draw_pixel
;			if (b->b1 > 0)
L10088:
	.line	1113
;				k_draw_pixel(textX + 1, textY + y, color);
	sep	#$20
	longa	off
	lda	[<L434+b_2]
	sta	<R0
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	lsr	<R0
	lsr	<R0
	lsr	<R0
	lsr	<R0
	lsr	<R0
	lsr	<R0
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	lda	<R0
	and	#<$1
	sta	<R0
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	lda	#$0
	cmp	<R0
	rep	#$20
	longa	on
	bcc	L459
	brl	L10089
L459:
	.line	1114
	pei	<L433+color_0
	clc
	lda	<L434+textY_1
	adc	<L434+y_1
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L460
	dey
L460:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	lda	<L434+textX_1
	ina
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L461
	dey
L461:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_draw_pixel
;			if (b->b0 > 0)
L10089:
	.line	1115
;				k_draw_pixel(textX + 0, textY + y, color);
	sep	#$20
	longa	off
	lda	[<L434+b_2]
	sta	<R0
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	lsr	<R0
	lsr	<R0
	lsr	<R0
	lsr	<R0
	lsr	<R0
	lsr	<R0
	lsr	<R0
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	lda	#$0
	cmp	<R0
	rep	#$20
	longa	on
	bcc	L462
	brl	L10090
L462:
	.line	1116
	pei	<L433+color_0
	clc
	lda	<L434+textY_1
	adc	<L434+y_1
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L463
	dey
L463:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	lda	<L434+textX_1
	bpl	L464
	dey
L464:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_draw_pixel
;
;		} // end "for y"
L10090:
	.endblock	1118
	.line	1118
L10079:
	inc	<L434+y_1
L10082:
	jsl	~~k_font_getFontHeight
	sta	<R0
	lda	<L434+y_1
	cmp	<R0
	bcs	L465
	brl	L10081
L465:
L10080:
;	}
	.line	1119
;	return FONTW;
L10078:
	.line	1120
	jsl	~~k_font_getFontWidth
L466:
	tay
	lda	<L433+2
	sta	<L433+2+12
	lda	<L433+1
	sta	<L433+1+12
	pld
	tsc
	clc
	adc	#L433+12
	tcs
	tya
	rtl
;}
	.line	1121
	.endblock	1121
L433	equ	24
L434	equ	9
	ends
	efunc
	.endfunc	1121,9,24
	.line	1121
;
;/*
;int k_put_binary_variablefont_point(LPCHAR fontSet, char outChar,int cx,int cy,int width,int height,char color)
;{
;	int x = 0;
;	int y = 0;
;	int textX = cx;
;	int textY = cy;
;
;	unsigned char FAR* img = NULL;//fontImg[ix];
;
;    if(outChar == 32)
;	{
;	   img = NULL;//fontSpace;
;    }
;    else
;	{
;	    //img = &(fontSet[characterROMMapping[outChar]]);
;    	img = fontSet+=(height*outChar);
;    	//img = "\xc3\xc3\xc3\xc3\xc3\xc3\xc3\xc3";//&(fontSet[outChar]);
;	}
;	//printf("putFont:%d\n",characterROMMapping[outChar]);
;
;	// get the font 'image'
;        //char *img = fontImg[ix];
;        // loop through pixel rows
;	if(img!=NULL)
;	{
;		for (y = 0; y < height; y++)
;		{
;			// get the pixel value
;			PBYTEBITS b = (PBYTEBITS)&(img[y]); //img[y * FONTW + x];
;			if (b->b7 > 0)
;				k_draw_pixel(textX + 7, textY + y, color);
;			if (b->b6 > 0)
;				k_draw_pixel(textX + 6, textY + y, color);
;			if (b->b5 > 0)
;				k_draw_pixel(textX + 5, textY + y, color);
;			if (b->b4 > 0)
;				k_draw_pixel(textX + 4, textY + y, color);
;			if (b->b3 > 0)
;				k_draw_pixel(textX + 3, textY + y, color);
;			if (b->b2 > 0)
;				k_draw_pixel(textX + 2, textY + y, color);
;			if (b->b1 > 0)
;				k_draw_pixel(textX + 1, textY + y, color);
;			if (b->b0 > 0)
;				k_draw_pixel(textX + 0, textY + y, color);
;
;		} // end "for y"
;	}
;	return FONTW;
;}
;*/
;int k_put_binary_variablefont_point(LPCHAR fontSet, char outChar,int cx,int cy,int width,int height,char color)
;{
	.line	1176
	.line	1177
	GUI
	xdef	~~k_put_binary_variablefont_point
	func
	.function	1177
~~k_put_binary_variablefont_point:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L467
	tcs
	phd
	tcd
fontSet_0	set	4
outChar_0	set	8
cx_0	set	10
cy_0	set	12
width_0	set	14
height_0	set	16
color_0	set	18
	.block	1177
;	int x = 0;
;	int y = 0;
;	int textX = cx;
;	int textY = cy;
;	char tmp;
;
;	unsigned char FAR* img = NULL;//fontImg[ix];
;
;    if(outChar == 32)
x_1	set	0
y_1	set	2
textX_1	set	4
textY_1	set	6
tmp_1	set	8
img_1	set	9
	.sym	x,0,5,1,16
	.sym	y,2,5,1,16
	.sym	textX,4,5,1,16
	.sym	textY,6,5,1,16
	.sym	tmp,8,14,1,8
	.sym	img,9,142,1,32
	.sym	fontSet,4,142,6,32
	.sym	outChar,8,14,6,8
	.sym	cx,10,5,6,16
	.sym	cy,12,5,6,16
	.sym	width,14,5,6,16
	.sym	height,16,5,6,16
	.sym	color,18,14,6,8
	stz	<L468+x_1
	stz	<L468+y_1
	lda	<L467+cx_0
	sta	<L468+textX_1
	lda	<L467+cy_0
	sta	<L468+textY_1
	stz	<L468+img_1
	stz	<L468+img_1+2
	.line	1186
;	{
	sep	#$20
	longa	off
	lda	<L467+outChar_0
	cmp	#<$20
	rep	#$20
	longa	on
	beq	L470
	brl	L10091
L470:
	.line	1187
;	   img = NULL;//fontSpace;
	.line	1188
	stz	<L468+img_1
	stz	<L468+img_1+2
;    }
	.line	1189
;    else
	brl	L10092
L10091:
;	{
	.line	1191
;	    //img = &(fontSet[characterROMMapping[outChar]]);
;    	img = fontSet+=(height*outChar);
	.line	1193
	lda	<L467+outChar_0
	and	#$ff
	sta	<R0
	lda	<R0
	ldx	<L467+height_0
	xref	~~~mul
	jsl	~~~mul
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L471
	dey
L471:
	sta	<R0
	sty	<R0+2
	clc
	lda	<L467+fontSet_0
	adc	<R0
	sta	<L467+fontSet_0
	lda	<L467+fontSet_0+2
	adc	<R0+2
	sta	<L467+fontSet_0+2
	lda	<L467+fontSet_0
	sta	<L468+img_1
	lda	<L467+fontSet_0+2
	sta	<L468+img_1+2
;    	//img = "\xc3\xc3\xc3\xc3\xc3\xc3\xc3\xc3";//&(fontSet[outChar]);
;	}
	.line	1195
L10092:
;	//printf("putFont:%d\n",characterROMMapping[outChar]);
;
;	// get the font 'image'
;        //char *img = fontImg[ix];
;        // loop through pixel rows
;	if(img!=NULL)
	.line	1201
;	{
	lda	<L468+img_1
	ora	<L468+img_1+2
	bne	L472
	brl	L10093
L472:
	.line	1202
;		for (y = 0; y < height; y++)
	.line	1203
	stz	<L468+y_1
	brl	L10097
L10096:
;		{
	.line	1204
;			tmp = img[y];
	.line	1205
	sep	#$20
	longa	off
	ldy	<L468+y_1
	lda	[<L468+img_1],Y
	sta	<L468+tmp_1
	rep	#$20
	longa	on
;
;			for (x = 0; x < width; x++)
	.line	1207
	stz	<L468+x_1
	brl	L10101
L10100:
;			{
	.line	1208
;				if(tmp & 0x80 )
	.line	1209
;					k_draw_pixel(textX + x, textY + y, color);
	sep	#$20
	longa	off
	lda	<L468+tmp_1
	and	#<$80
	rep	#$20
	longa	on
	bne	L473
	brl	L10102
L473:
	.line	1210
	pei	<L467+color_0
	clc
	lda	<L468+textY_1
	adc	<L468+y_1
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L474
	dey
L474:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	<L468+textX_1
	adc	<L468+x_1
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L475
	dey
L475:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_draw_pixel
;
;				tmp = tmp << 1;
L10102:
	.line	1212
	sep	#$20
	longa	off
	asl	<L468+tmp_1
	rep	#$20
	longa	on
;			}
	.line	1213
L10098:
	inc	<L468+x_1
L10101:
	sec
	lda	<L468+x_1
	sbc	<L467+width_0
	bvs	L476
	eor	#$8000
L476:
	bmi	L477
	brl	L10100
L477:
L10099:
;			// get the pixel value
;			/*
;			PBYTEBITS b = (PBYTEBITS)&(img[y]); //img[y * FONTW + x];
;			if (b->b7 > 0)
;				k_draw_pixel(textX + 7, textY + y, color);
;			if (b->b6 > 0)
;				k_draw_pixel(textX + 6, textY + y, color);
;			if (b->b5 > 0)
;				k_draw_pixel(textX + 5, textY + y, color);
;			if (b->b4 > 0)
;				k_draw_pixel(textX + 4, textY + y, color);
;			if (b->b3 > 0)
;				k_draw_pixel(textX + 3, textY + y, color);
;			if (b->b2 > 0)
;				k_draw_pixel(textX + 2, textY + y, color);
;			if (b->b1 > 0)
;				k_draw_pixel(textX + 1, textY + y, color);
;			if (b->b0 > 0)
;				k_draw_pixel(textX + 0, textY + y, color);
;			*/
;		} // end "for y"
	.line	1234
L10094:
	inc	<L468+y_1
L10097:
	sec
	lda	<L468+y_1
	sbc	<L467+height_0
	bvs	L478
	eor	#$8000
L478:
	bmi	L479
	brl	L10096
L479:
L10095:
;	}
	.line	1235
;	return FONTW;
L10093:
	.line	1236
	jsl	~~k_font_getFontWidth
L480:
	tay
	lda	<L467+2
	sta	<L467+2+16
	lda	<L467+1
	sta	<L467+1+16
	pld
	tsc
	clc
	adc	#L467+16
	tcs
	tya
	rtl
;}
	.line	1237
	.endblock	1237
L467	equ	21
L468	equ	9
	ends
	efunc
	.endfunc	1237,9,21
	.line	1237
;
;int k_put_binary_variablefont_point_ex(LPCHAR fontSet, char outChar,int cx,int cy,int width,int height,char color,UINT page)
;{
	.line	1239
	.line	1240
	GUI
	xdef	~~k_put_binary_variablefont_point_ex
	func
	.function	1240
~~k_put_binary_variablefont_point_ex:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L481
	tcs
	phd
	tcd
fontSet_0	set	4
outChar_0	set	8
cx_0	set	10
cy_0	set	12
width_0	set	14
height_0	set	16
color_0	set	18
page_0	set	20
	.block	1240
;	int x = 0;
;	int y = 0;
;	int textX = cx;
;	int textY = cy;
;	char tmp;
;
;	unsigned char FAR* img = NULL;//fontImg[ix];
;
;    if(outChar == 32)
x_1	set	0
y_1	set	2
textX_1	set	4
textY_1	set	6
tmp_1	set	8
img_1	set	9
	.sym	x,0,5,1,16
	.sym	y,2,5,1,16
	.sym	textX,4,5,1,16
	.sym	textY,6,5,1,16
	.sym	tmp,8,14,1,8
	.sym	img,9,142,1,32
	.sym	fontSet,4,142,6,32
	.sym	outChar,8,14,6,8
	.sym	cx,10,5,6,16
	.sym	cy,12,5,6,16
	.sym	width,14,5,6,16
	.sym	height,16,5,6,16
	.sym	color,18,14,6,8
	.sym	page,20,16,6,16
	stz	<L482+x_1
	stz	<L482+y_1
	lda	<L481+cx_0
	sta	<L482+textX_1
	lda	<L481+cy_0
	sta	<L482+textY_1
	stz	<L482+img_1
	stz	<L482+img_1+2
	.line	1249
;	{
	sep	#$20
	longa	off
	lda	<L481+outChar_0
	cmp	#<$20
	rep	#$20
	longa	on
	beq	L484
	brl	L10103
L484:
	.line	1250
;	   img = NULL;//fontSpace;
	.line	1251
	stz	<L482+img_1
	stz	<L482+img_1+2
;    }
	.line	1252
;    else
	brl	L10104
L10103:
;	{
	.line	1254
;    	img = fontSet+=(height*outChar);
	.line	1255
	lda	<L481+outChar_0
	and	#$ff
	sta	<R0
	lda	<R0
	ldx	<L481+height_0
	xref	~~~mul
	jsl	~~~mul
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L485
	dey
L485:
	sta	<R0
	sty	<R0+2
	clc
	lda	<L481+fontSet_0
	adc	<R0
	sta	<L481+fontSet_0
	lda	<L481+fontSet_0+2
	adc	<R0+2
	sta	<L481+fontSet_0+2
	lda	<L481+fontSet_0
	sta	<L482+img_1
	lda	<L481+fontSet_0+2
	sta	<L482+img_1+2
;	}
	.line	1256
L10104:
;
;    if(img!=NULL)
	.line	1258
;	{
	lda	<L482+img_1
	ora	<L482+img_1+2
	bne	L486
	brl	L10105
L486:
	.line	1259
;		for (y = 0; y < height; y++)
	.line	1260
	stz	<L482+y_1
	brl	L10109
L10108:
;		{
	.line	1261
;			tmp = img[y];
	.line	1262
	sep	#$20
	longa	off
	ldy	<L482+y_1
	lda	[<L482+img_1],Y
	sta	<L482+tmp_1
	rep	#$20
	longa	on
;
;			for (x = 0; x < width; x++)
	.line	1264
	stz	<L482+x_1
	brl	L10113
L10112:
;			{
	.line	1265
;				if(tmp & 0x80 )
	.line	1266
;					k_draw_pixel_ex(textX + x, textY + y, color, page);
	sep	#$20
	longa	off
	lda	<L482+tmp_1
	and	#<$80
	rep	#$20
	longa	on
	bne	L487
	brl	L10114
L487:
	.line	1267
	pei	<L481+page_0
	pei	<L481+color_0
	clc
	lda	<L482+textY_1
	adc	<L482+y_1
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L488
	dey
L488:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	<L482+textX_1
	adc	<L482+x_1
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L489
	dey
L489:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_draw_pixel_ex
;
;				tmp = tmp << 1;
L10114:
	.line	1269
	sep	#$20
	longa	off
	asl	<L482+tmp_1
	rep	#$20
	longa	on
;			}
	.line	1270
L10110:
	inc	<L482+x_1
L10113:
	sec
	lda	<L482+x_1
	sbc	<L481+width_0
	bvs	L490
	eor	#$8000
L490:
	bmi	L491
	brl	L10112
L491:
L10111:
;		} // end "for y"
	.line	1271
L10106:
	inc	<L482+y_1
L10109:
	sec
	lda	<L482+y_1
	sbc	<L481+height_0
	bvs	L492
	eor	#$8000
L492:
	bmi	L493
	brl	L10108
L493:
L10107:
;	}
	.line	1272
;	return FONTW;
L10105:
	.line	1273
	jsl	~~k_font_getFontWidth
L494:
	tay
	lda	<L481+2
	sta	<L481+2+18
	lda	<L481+1
	sta	<L481+1+18
	pld
	tsc
	clc
	adc	#L481+18
	tcs
	tya
	rtl
;}
	.line	1274
	.endblock	1274
L481	equ	21
L482	equ	9
	ends
	efunc
	.endfunc	1274,9,21
	.line	1274
;
;
;int k_render_wingadget(char gadgetCode,int cx,int cy,char color,OBJECTCLICKED callback)
;{
	.line	1277
	.line	1278
	GUI
	xdef	~~k_render_wingadget
	func
	.function	1278
~~k_render_wingadget:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L495
	tcs
	phd
	tcd
gadgetCode_0	set	4
cx_0	set	6
cy_0	set	8
color_0	set	10
callback_0	set	12
	.block	1278
;	PCLICKDETECTED pcd = NULL;
;
;	int retCode = 0;
;
;	k_put_wingadget_point(gadgetCode,cx,cy,color);
pcd_1	set	0
retCode_1	set	4
	.sym	pcd,0,138,1,32,53
	.sym	retCode,4,5,1,16
	.sym	gadgetCode,4,14,6,8
	.sym	cx,6,5,6,16
	.sym	cy,8,5,6,16
	.sym	color,10,14,6,8
	.sym	callback,12,641,6,32
	stz	<L496+pcd_1
	stz	<L496+pcd_1+2
	stz	<L496+retCode_1
	.line	1283
	pei	<L495+color_0
	pei	<L495+cy_0
	pei	<L495+cx_0
	pei	<L495+gadgetCode_0
	jsl	~~k_put_wingadget_point
;
;	pcd = k_mem_allocate_heap(sizeof(CLICKDETECTED));
	.line	1285
	pea	#<$8
	jsl	~~k_mem_allocate_heap
	sta	<L496+pcd_1
	stx	<L496+pcd_1+2
;	if(pcd)
	.line	1286
;	{
	lda	<L496+pcd_1
	ora	<L496+pcd_1+2
	bne	L498
	brl	L10115
L498:
	.line	1287
;		pcd->window  = k_create_ui_window_class(cx,cy,FONTH,FONTW,"disk","gadget",NULL);
	.line	1288
	pea	#^$0
	pea	#<$0
	pea	#^L402+5
	pea	#<L402+5
	pea	#^L402
	pea	#<L402
	jsl	~~k_font_getFontWidth
	pha
	jsl	~~k_font_getFontHeight
	pha
	pei	<L495+cy_0
	pei	<L495+cx_0
	jsl	~~k_create_ui_window_class
	sta	<R0
	stx	<R0+2
	lda	<R0
	sta	[<L496+pcd_1]
	lda	<R0+2
	ldy	#$2
	sta	[<L496+pcd_1],Y
;		pcd->handler = callback;
	.line	1289
	lda	<L495+callback_0
	ldy	#$4
	sta	[<L496+pcd_1],Y
	lda	<L495+callback_0+2
	ldy	#$6
	sta	[<L496+pcd_1],Y
;		k_add_window_hit_node(pcd);
	.line	1290
	pei	<L496+pcd_1+2
	pei	<L496+pcd_1
	jsl	~~k_add_window_hit_node
;	}
	.line	1291
;
;	return retCode;
L10115:
	.line	1293
	lda	<L496+retCode_1
L499:
	tay
	lda	<L495+2
	sta	<L495+2+12
	lda	<L495+1
	sta	<L495+1+12
	pld
	tsc
	clc
	adc	#L495+12
	tcs
	tya
	rtl
;}
	.line	1294
	.endblock	1294
L495	equ	10
L496	equ	5
	ends
	efunc
	.endfunc	1294,5,10
	.line	1294
	data
L402:
	db	$64,$69,$73,$6B,$00,$67,$61,$64,$67,$65,$74,$00
	ends
;
;
;
;int k_put_wingadget_point(char gadgetCode,int cx,int cy,char color)
;{
	.line	1298
	.line	1299
	GUI
	xdef	~~k_put_wingadget_point
	func
	.function	1299
~~k_put_wingadget_point:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L501
	tcs
	phd
	tcd
gadgetCode_0	set	4
cx_0	set	6
cy_0	set	8
color_0	set	10
	.block	1299
;	int x = 0;
;	int y = 0;
;	int textX = cx;
;	int textY = cy;
;
;	char FAR* img = NULL;//fontImg[ix];
;
;
;    img = windowChromeImg[(int)(gadgetCode & 0xFF)];
x_1	set	0
y_1	set	2
textX_1	set	4
textY_1	set	6
img_1	set	8
	.sym	x,0,5,1,16
	.sym	y,2,5,1,16
	.sym	textX,4,5,1,16
	.sym	textY,6,5,1,16
	.sym	img,8,142,1,32
	.sym	gadgetCode,4,14,6,8
	.sym	cx,6,5,6,16
	.sym	cy,8,5,6,16
	.sym	color,10,14,6,8
	stz	<L502+x_1
	stz	<L502+y_1
	lda	<L501+cx_0
	sta	<L502+textX_1
	lda	<L501+cy_0
	sta	<L502+textY_1
	stz	<L502+img_1
	stz	<L502+img_1+2
	.line	1308
	lda	<L501+gadgetCode_0
	and	#<$ff
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L504
	dey
L504:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	lda	#$6
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R0
	stx	<R0+2
	clc
	lda	#<~~windowChromeImg
	adc	<R0
	sta	<L502+img_1
	lda	#^~~windowChromeImg
	adc	<R0+2
	sta	<L502+img_1+2
;	if(img!=NULL)
	.line	1309
;	{
	lda	<L502+img_1
	ora	<L502+img_1+2
	bne	L505
	brl	L10116
L505:
	.line	1310
;		for (y = 0; y < FONTH; y++) 
	.line	1311
	stz	<L502+y_1
	brl	L10120
L10119:
;		{
	.line	1312
;			// loop through pixel columns
;			for (x = 0; x < FONTW; x++) 
	.line	1314
	stz	<L502+x_1
	brl	L10124
L10123:
;			{
	.line	1315
;				// get the pixel value
;				char b = img[y * FONTW + x];
;				if (b > 0) 
	.block	1318
b_2	set	12
	.sym	b,12,14,1,8
	jsl	~~k_font_getFontWidth
	sta	<R0
	lda	<R0
	ldx	<L502+y_1
	xref	~~~mul
	jsl	~~~mul
	sta	<R0
	clc
	lda	<R0
	adc	<L502+x_1
	sta	<R1
	sep	#$20
	longa	off
	ldy	<R1
	lda	[<L502+img_1],Y
	sta	<L502+b_2
	rep	#$20
	longa	on
	.line	1318
;				{ // plot the pixel
	sep	#$20
	longa	off
	lda	#$0
	cmp	<L502+b_2
	rep	#$20
	longa	on
	bcc	L507
	brl	L10125
L507:
	.line	1319
;					k_draw_pixel(textX + x, textY + y, color);
	.line	1320
	pei	<L501+color_0
	clc
	lda	<L502+textY_1
	adc	<L502+y_1
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L508
	dey
L508:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	<L502+textX_1
	adc	<L502+x_1
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L509
	dey
L509:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_draw_pixel
;				}
	.line	1321
;				else 
	brl	L10126
L10125:
;				{ 
	.line	1323
;					// leave empty (or maybe plot 'text backgr color')
;				}
	.line	1325
L10126:
;			} // end "for x"
	.endblock	1326
	.line	1326
L10121:
	inc	<L502+x_1
L10124:
	jsl	~~k_font_getFontWidth
	sta	<R0
	lda	<L502+x_1
	cmp	<R0
	bcs	L510
	brl	L10123
L510:
L10122:
;		} // end "for y"
	.line	1327
L10117:
	inc	<L502+y_1
L10120:
	jsl	~~k_font_getFontHeight
	sta	<R0
	lda	<L502+y_1
	cmp	<R0
	bcs	L511
	brl	L10119
L511:
L10118:
;	}
	.line	1328
;	return FONTW;
L10116:
	.line	1329
	jsl	~~k_font_getFontWidth
L512:
	tay
	lda	<L501+2
	sta	<L501+2+8
	lda	<L501+1
	sta	<L501+1+8
	pld
	tsc
	clc
	adc	#L501+8
	tcs
	tya
	rtl
;}
	.line	1330
	.endblock	1330
L501	equ	21
L502	equ	9
	ends
	efunc
	.endfunc	1330,9,21
	.line	1330
;
;int k_put_wingadget_point_ex(char gadgetCode,int cx,int cy,char color,UINT page)
;{
	.line	1332
	.line	1333
	GUI
	xdef	~~k_put_wingadget_point_ex
	func
	.function	1333
~~k_put_wingadget_point_ex:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L513
	tcs
	phd
	tcd
gadgetCode_0	set	4
cx_0	set	6
cy_0	set	8
color_0	set	10
page_0	set	12
	.block	1333
;	int x = 0;
;	int y = 0;
;	int textX = cx;
;	int textY = cy;
;
;	char FAR* img = NULL;//fontImg[ix];
;
;
;    img = windowChromeImg[(int)(gadgetCode & 0xFF)];
x_1	set	0
y_1	set	2
textX_1	set	4
textY_1	set	6
img_1	set	8
	.sym	x,0,5,1,16
	.sym	y,2,5,1,16
	.sym	textX,4,5,1,16
	.sym	textY,6,5,1,16
	.sym	img,8,142,1,32
	.sym	gadgetCode,4,14,6,8
	.sym	cx,6,5,6,16
	.sym	cy,8,5,6,16
	.sym	color,10,14,6,8
	.sym	page,12,16,6,16
	stz	<L514+x_1
	stz	<L514+y_1
	lda	<L513+cx_0
	sta	<L514+textX_1
	lda	<L513+cy_0
	sta	<L514+textY_1
	stz	<L514+img_1
	stz	<L514+img_1+2
	.line	1342
	lda	<L513+gadgetCode_0
	and	#<$ff
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L516
	dey
L516:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	lda	#$6
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R0
	stx	<R0+2
	clc
	lda	#<~~windowChromeImg
	adc	<R0
	sta	<L514+img_1
	lda	#^~~windowChromeImg
	adc	<R0+2
	sta	<L514+img_1+2
;	if(img!=NULL)
	.line	1343
;	{
	lda	<L514+img_1
	ora	<L514+img_1+2
	bne	L517
	brl	L10127
L517:
	.line	1344
;		for (y = 0; y < FONTH; y++)
	.line	1345
	stz	<L514+y_1
	brl	L10131
L10130:
;		{
	.line	1346
;			// loop through pixel columns
;			for (x = 0; x < FONTW; x++)
	.line	1348
	stz	<L514+x_1
	brl	L10135
L10134:
;			{
	.line	1349
;				// get the pixel value
;				char b = img[y * FONTW + x];
;				if (b > 0)
	.block	1352
b_2	set	12
	.sym	b,12,14,1,8
	jsl	~~k_font_getFontWidth
	sta	<R0
	lda	<R0
	ldx	<L514+y_1
	xref	~~~mul
	jsl	~~~mul
	sta	<R0
	clc
	lda	<R0
	adc	<L514+x_1
	sta	<R1
	sep	#$20
	longa	off
	ldy	<R1
	lda	[<L514+img_1],Y
	sta	<L514+b_2
	rep	#$20
	longa	on
	.line	1352
;				{ // plot the pixel
	sep	#$20
	longa	off
	lda	#$0
	cmp	<L514+b_2
	rep	#$20
	longa	on
	bcc	L519
	brl	L10136
L519:
	.line	1353
;					k_draw_pixel_ex(textX + x, textY + y, color,page);
	.line	1354
	pei	<L513+page_0
	pei	<L513+color_0
	clc
	lda	<L514+textY_1
	adc	<L514+y_1
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L520
	dey
L520:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	<L514+textX_1
	adc	<L514+x_1
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L521
	dey
L521:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_draw_pixel_ex
;				}
	.line	1355
;				else
	brl	L10137
L10136:
;				{
	.line	1357
;					// leave empty (or maybe plot 'text backgr color')
;				}
	.line	1359
L10137:
;			} // end "for x"
	.endblock	1360
	.line	1360
L10132:
	inc	<L514+x_1
L10135:
	jsl	~~k_font_getFontWidth
	sta	<R0
	lda	<L514+x_1
	cmp	<R0
	bcs	L522
	brl	L10134
L522:
L10133:
;		} // end "for y"
	.line	1361
L10128:
	inc	<L514+y_1
L10131:
	jsl	~~k_font_getFontHeight
	sta	<R0
	lda	<L514+y_1
	cmp	<R0
	bcs	L523
	brl	L10130
L523:
L10129:
;	}
	.line	1362
;	return FONTW;
L10127:
	.line	1363
	jsl	~~k_font_getFontWidth
L524:
	tay
	lda	<L513+2
	sta	<L513+2+10
	lda	<L513+1
	sta	<L513+1+10
	pld
	tsc
	clc
	adc	#L513+10
	tcs
	tya
	rtl
;}
	.line	1364
	.endblock	1364
L513	equ	21
L514	equ	9
	ends
	efunc
	.endfunc	1364,9,21
	.line	1364
;
;int k_put_winicon_point(char iconCode,int cx,int cy,int paletteId,int mode)
;{
	.line	1366
	.line	1367
	GUI
	xdef	~~k_put_winicon_point
	func
	.function	1367
~~k_put_winicon_point:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L525
	tcs
	phd
	tcd
iconCode_0	set	4
cx_0	set	6
cy_0	set	8
paletteId_0	set	10
mode_0	set	12
	.block	1367
;	int x = 0;
;	int y = 0;
;	int textX = cx;
;	int textY = cy;
;
;	char FAR* img = NULL;
;	
;    img = windowIconImg[(int)(iconCode & 0xFF)];
x_1	set	0
y_1	set	2
textX_1	set	4
textY_1	set	6
img_1	set	8
	.sym	x,0,5,1,16
	.sym	y,2,5,1,16
	.sym	textX,4,5,1,16
	.sym	textY,6,5,1,16
	.sym	img,8,142,1,32
	.sym	iconCode,4,14,6,8
	.sym	cx,6,5,6,16
	.sym	cy,8,5,6,16
	.sym	paletteId,10,5,6,16
	.sym	mode,12,5,6,16
	stz	<L526+x_1
	stz	<L526+y_1
	lda	<L525+cx_0
	sta	<L526+textX_1
	lda	<L525+cy_0
	sta	<L526+textY_1
	stz	<L526+img_1
	stz	<L526+img_1+2
	.line	1375
	lda	<L525+iconCode_0
	and	#<$ff
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L528
	dey
L528:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	lda	#$8
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R0
	stx	<R0+2
	clc
	lda	#<~~windowIconImg
	adc	<R0
	sta	<L526+img_1
	lda	#^~~windowIconImg
	adc	<R0+2
	sta	<L526+img_1+2
;	if(img!=NULL)
	.line	1376
;	{
	lda	<L526+img_1
	ora	<L526+img_1+2
	bne	L529
	brl	L10138
L529:
	.line	1377
;		for (y = 0; y < ICONH; y++) 
	.line	1378
	stz	<L526+y_1
L10141:
;		{
	.line	1379
;			for (x = 0; x < ICONW; x++) 
	.line	1380
	stz	<L526+x_1
L10144:
;			{
	.line	1381
;				char b = img[y * ICONW + x];
;				if (b > 0) 
	.block	1383
b_2	set	12
	.sym	b,12,14,1,8
	lda	<L526+y_1
	asl	A
	asl	A
	asl	A
	asl	A
	sta	<R0
	clc
	lda	<R0
	adc	<L526+x_1
	sta	<R1
	sep	#$20
	longa	off
	ldy	<R1
	lda	[<L526+img_1],Y
	sta	<L526+b_2
	rep	#$20
	longa	on
	.line	1383
;				{
	sep	#$20
	longa	off
	lda	#$0
	cmp	<L526+b_2
	rep	#$20
	longa	on
	bcc	L531
	brl	L10145
L531:
	.line	1384
;					if(mode == PAINTMODE_BACKGROUND)
	.line	1385
;						b = paletteId;
	lda	<L525+mode_0
	cmp	#<$f0
	beq	L532
	brl	L10146
L532:
	.line	1386
	sep	#$20
	longa	off
	lda	<L525+paletteId_0
	sta	<L526+b_2
	rep	#$20
	longa	on
;
;					if(mode == PAINTMODE_HIGHLIGHT && b == 15)
L10146:
	.line	1388
;						b = paletteId;
	lda	<L525+mode_0
	cmp	#<$f1
	beq	L533
	brl	L10147
L533:
	sep	#$20
	longa	off
	lda	<L526+b_2
	cmp	#<$f
	rep	#$20
	longa	on
	beq	L534
	brl	L10147
L534:
	.line	1389
	sep	#$20
	longa	off
	lda	<L525+paletteId_0
	sta	<L526+b_2
	rep	#$20
	longa	on
;
;					k_draw_pixel(textX + x, textY + y, b);
L10147:
	.line	1391
	pei	<L526+b_2
	clc
	lda	<L526+textY_1
	adc	<L526+y_1
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L535
	dey
L535:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	<L526+textX_1
	adc	<L526+x_1
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L536
	dey
L536:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_draw_pixel
;				}
	.line	1392
;				else 
	brl	L10148
L10145:
;				{ 
	.line	1394
;					if(mode!=PAINTMODE_DEFAULT)
	.line	1395
;					{
	lda	<L525+mode_0
	bne	L537
	brl	L10149
L537:
	.line	1396
;					
;					}
	.line	1398
;				}
L10149:
	.line	1399
L10148:
;			}
	.endblock	1400
	.line	1400
L10142:
	inc	<L526+x_1
	sec
	lda	<L526+x_1
	sbc	#<$10
	bvs	L538
	eor	#$8000
L538:
	bmi	L539
	brl	L10144
L539:
L10143:
;		}
	.line	1401
L10139:
	inc	<L526+y_1
	sec
	lda	<L526+y_1
	sbc	#<$10
	bvs	L540
	eor	#$8000
L540:
	bmi	L541
	brl	L10141
L541:
L10140:
;	}
	.line	1402
;	return FONTW;
L10138:
	.line	1403
	jsl	~~k_font_getFontWidth
L542:
	tay
	lda	<L525+2
	sta	<L525+2+10
	lda	<L525+1
	sta	<L525+1+10
	pld
	tsc
	clc
	adc	#L525+10
	tcs
	tya
	rtl
;}
	.line	1404
	.endblock	1404
L525	equ	21
L526	equ	9
	ends
	efunc
	.endfunc	1404,9,21
	.line	1404
;
;
;/*
; 		//PFXNODE k_point_in_nodes(int x,int y);
;		//void k_add_window_hit_node(PCLICKDETECTED pcd);
;
;		PWINDOW k_create_ui_window_class(cx,cy,ICONW,ICONH,LPCHAR title,LPCHAR className,int color, int bgcolor);
;
;		k_add_window_hit_node();
;
;
; */
;
;
;void k_put_winicon_scaled(char iconCode,int cx,int cy,char paletteId,int mode,int scale)
;{
	.line	1419
	.line	1420
	GUI
	xdef	~~k_put_winicon_scaled
	func
	.function	1420
~~k_put_winicon_scaled:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L543
	tcs
	phd
	tcd
iconCode_0	set	4
cx_0	set	6
cy_0	set	8
paletteId_0	set	10
mode_0	set	12
scale_0	set	14
	.block	1420
;	int x = 0;
;	int y = 0;
;
;	int height = ICONH * scale;
;	int width  = ICONW * scale;
;	
;	int textX = cx ;
;	int textY = cy ;
;
;	int px   = 0;
;	int py   = 0;
;	int offx = 0;
;	int offy = 0;
;	int sx   = 0;
;	int sy   = 0;
;
;	char b   = 0;
;
;	char FAR* img = NULL;
;
;	img = windowIconImg[(int)(iconCode & 0xFF)];	//printf("putFont:%d\n",characterROMMapping[outChar]);
x_1	set	0
y_1	set	2
height_1	set	4
width_1	set	6
textX_1	set	8
textY_1	set	10
px_1	set	12
py_1	set	14
offx_1	set	16
offy_1	set	18
sx_1	set	20
sy_1	set	22
b_1	set	24
img_1	set	25
	.sym	x,0,5,1,16
	.sym	y,2,5,1,16
	.sym	height,4,5,1,16
	.sym	width,6,5,1,16
	.sym	textX,8,5,1,16
	.sym	textY,10,5,1,16
	.sym	px,12,5,1,16
	.sym	py,14,5,1,16
	.sym	offx,16,5,1,16
	.sym	offy,18,5,1,16
	.sym	sx,20,5,1,16
	.sym	sy,22,5,1,16
	.sym	b,24,14,1,8
	.sym	img,25,142,1,32
	.sym	iconCode,4,14,6,8
	.sym	cx,6,5,6,16
	.sym	cy,8,5,6,16
	.sym	paletteId,10,14,6,8
	.sym	mode,12,5,6,16
	.sym	scale,14,5,6,16
	stz	<L544+x_1
	stz	<L544+y_1
	lda	<L543+scale_0
	asl	A
	asl	A
	asl	A
	asl	A
	sta	<L544+height_1
	lda	<L543+scale_0
	asl	A
	asl	A
	asl	A
	asl	A
	sta	<L544+width_1
	lda	<L543+cx_0
	sta	<L544+textX_1
	lda	<L543+cy_0
	sta	<L544+textY_1
	stz	<L544+px_1
	stz	<L544+py_1
	stz	<L544+offx_1
	stz	<L544+offy_1
	stz	<L544+sx_1
	stz	<L544+sy_1
	sep	#$20
	longa	off
	stz	<L544+b_1
	rep	#$20
	longa	on
	stz	<L544+img_1
	stz	<L544+img_1+2
	.line	1441
	lda	<L543+iconCode_0
	and	#<$ff
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L546
	dey
L546:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	lda	#$8
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R0
	stx	<R0+2
	clc
	lda	#<~~windowIconImg
	adc	<R0
	sta	<L544+img_1
	lda	#^~~windowIconImg
	adc	<R0+2
	sta	<L544+img_1+2
;	if(img!=NULL)
	.line	1442
;	{
	lda	<L544+img_1
	ora	<L544+img_1+2
	bne	L547
	brl	L10150
L547:
	.line	1443
;		py = 0;
	.line	1444
	stz	<L544+py_1
;		for (y = 0; y < height; y+=scale) 
	.line	1445
	stz	<L544+y_1
	brl	L10154
L10153:
;		{
	.line	1446
;			offy = y;
	.line	1447
	lda	<L544+y_1
	sta	<L544+offy_1
;			px   = 0;
	.line	1448
	stz	<L544+px_1
;			for (x = 0; x < width; x+=scale) 
	.line	1449
	stz	<L544+x_1
	brl	L10158
L10157:
;			{
	.line	1450
;				// get the pixel value
;				offx = x;
	.line	1452
	lda	<L544+x_1
	sta	<L544+offx_1
;				b = img[py * ICONW + px];
	.line	1453
	lda	<L544+py_1
	asl	A
	asl	A
	asl	A
	asl	A
	sta	<R0
	clc
	lda	<R0
	adc	<L544+px_1
	sta	<R1
	sep	#$20
	longa	off
	ldy	<R1
	lda	[<L544+img_1],Y
	sta	<L544+b_1
	rep	#$20
	longa	on
;				if (b > -1) 
	.line	1454
;				{ // plot the pixel					
	lda	<L544+b_1
	and	#$ff
	sta	<R0
	sec
	lda	#$ffff
	sbc	<R0
	bvs	L548
	eor	#$8000
L548:
	bpl	L549
	brl	L10159
L549:
	.line	1455
;					offy = y;
	.line	1456
	lda	<L544+y_1
	sta	<L544+offy_1
;					for(sy=0;sy<scale;sy++)
	.line	1457
	stz	<L544+sy_1
	brl	L10163
L10162:
;					{
	.line	1458
;						offx = x;
	.line	1459
	lda	<L544+x_1
	sta	<L544+offx_1
;						for(sx=0;sx<scale;sx++)
	.line	1460
	stz	<L544+sx_1
	brl	L10167
L10166:
;						{
	.line	1461
;							k_draw_pixel(textX + offx, textY + offy, b);
	.line	1462
	pei	<L544+b_1
	clc
	lda	<L544+textY_1
	adc	<L544+offy_1
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L550
	dey
L550:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	<L544+textX_1
	adc	<L544+offx_1
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L551
	dey
L551:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_draw_pixel
;							offx++;
	.line	1463
	inc	<L544+offx_1
;						}
	.line	1464
L10164:
	inc	<L544+sx_1
L10167:
	sec
	lda	<L544+sx_1
	sbc	<L543+scale_0
	bvs	L552
	eor	#$8000
L552:
	bmi	L553
	brl	L10166
L553:
L10165:
;						offy++;
	.line	1465
	inc	<L544+offy_1
;					}
	.line	1466
L10160:
	inc	<L544+sy_1
L10163:
	sec
	lda	<L544+sy_1
	sbc	<L543+scale_0
	bvs	L554
	eor	#$8000
L554:
	bmi	L555
	brl	L10162
L555:
L10161:
;				}
	.line	1467
;				px++;
L10159:
	.line	1468
	inc	<L544+px_1
;			} // end "for x"
	.line	1469
L10155:
	clc
	lda	<L544+x_1
	adc	<L543+scale_0
	sta	<L544+x_1
L10158:
	sec
	lda	<L544+x_1
	sbc	<L544+width_1
	bvs	L556
	eor	#$8000
L556:
	bmi	L557
	brl	L10157
L557:
L10156:
;			py++;
	.line	1470
	inc	<L544+py_1
;		} // end "for y"
	.line	1471
L10151:
	clc
	lda	<L544+y_1
	adc	<L543+scale_0
	sta	<L544+y_1
L10154:
	sec
	lda	<L544+y_1
	sbc	<L544+height_1
	bvs	L558
	eor	#$8000
L558:
	bmi	L559
	brl	L10153
L559:
L10152:
;	}
	.line	1472
;}
L10150:
	.line	1473
L560:
	lda	<L543+2
	sta	<L543+2+12
	lda	<L543+1
	sta	<L543+1+12
	pld
	tsc
	clc
	adc	#L543+12
	tcs
	rtl
	.endblock	1473
L543	equ	37
L544	equ	9
	ends
	efunc
	.endfunc	1473,9,37
	.line	1473
;
;
;void k_put_font(char outChar,int row,int column,char color)
;{
	.line	1476
	.line	1477
	GUI
	xdef	~~k_put_font
	func
	.function	1477
~~k_put_font:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L561
	tcs
	phd
	tcd
outChar_0	set	4
row_0	set	6
column_0	set	8
color_0	set	10
	.block	1477
;	int x = 0;
;	int y = 0;
;	int textX = row * FONTW;
;	int textY = column * FONTH;
;
;	char FAR* img = NULL;//fontImg[ix];
;
;    if(outChar == 32)
x_1	set	0
y_1	set	2
textX_1	set	4
textY_1	set	6
img_1	set	8
	.sym	x,0,5,1,16
	.sym	y,2,5,1,16
	.sym	textX,4,5,1,16
	.sym	textY,6,5,1,16
	.sym	img,8,142,1,32
	.sym	outChar,4,14,6,8
	.sym	row,6,5,6,16
	.sym	column,8,5,6,16
	.sym	color,10,14,6,8
	stz	<L562+x_1
	stz	<L562+y_1
	jsl	~~k_font_getFontWidth
	sta	<R0
	lda	<R0
	ldx	<L561+row_0
	xref	~~~mul
	jsl	~~~mul
	sta	<L562+textX_1
	jsl	~~k_font_getFontHeight
	sta	<R0
	lda	<R0
	ldx	<L561+column_0
	xref	~~~mul
	jsl	~~~mul
	sta	<L562+textY_1
	stz	<L562+img_1
	stz	<L562+img_1+2
	.line	1485
;	{
	sep	#$20
	longa	off
	lda	<L561+outChar_0
	cmp	#<$20
	rep	#$20
	longa	on
	beq	L564
	brl	L10168
L564:
	.line	1486
;	   img = NULL;
	.line	1487
	stz	<L562+img_1
	stz	<L562+img_1+2
;    }
	.line	1488
;    else
	brl	L10169
L10168:
;	{
	.line	1490
;	    img = fontImg[(int)characterROMMapping[(int)(outChar & 0xFF)]];
	.line	1491
	lda	<L561+outChar_0
	and	#<$ff
	sta	<R2
	ldy	#$0
	lda	<R2
	bpl	L565
	dey
L565:
	sta	<R2
	sty	<R2+2
	pei	<R2+2
	pei	<R2
	lda	#$1
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R1
	stx	<R1+2
	clc
	lda	#<~~characterROMMapping
	adc	<R1
	sta	<R3
	lda	#^~~characterROMMapping
	adc	<R1+2
	sta	<R3+2
	ldy	#$0
	lda	[<R3]
	bpl	L566
	dey
L566:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	lda	#$6
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R0
	stx	<R0+2
	clc
	lda	#<~~fontImg
	adc	<R0
	sta	<L562+img_1
	lda	#^~~fontImg
	adc	<R0+2
	sta	<L562+img_1+2
;		//img = fontImg[0x02];
;	}
	.line	1493
L10169:
;	//printf("putFont:%d\n",characterROMMapping[outChar]);
;
;	// get the font 'image'
;        //char *img = fontImg[ix]; 
;        // loop through pixel rows
;	if(img!=NULL)
	.line	1499
;	{
	lda	<L562+img_1
	ora	<L562+img_1+2
	bne	L567
	brl	L10170
L567:
	.line	1500
;		for (y = 0; y < FONTH; y++) 
	.line	1501
	stz	<L562+y_1
	brl	L10174
L10173:
;		{
	.line	1502
;			// loop through pixel columns
;			for (x = 0; x < FONTW; x++) 
	.line	1504
	stz	<L562+x_1
	brl	L10178
L10177:
;			{
	.line	1505
;				// get the pixel value
;				char b = img[y * FONTW + x];
;				if (b > 0) 
	.block	1508
b_2	set	12
	.sym	b,12,14,1,8
	jsl	~~k_font_getFontWidth
	sta	<R0
	lda	<R0
	ldx	<L562+y_1
	xref	~~~mul
	jsl	~~~mul
	sta	<R0
	clc
	lda	<R0
	adc	<L562+x_1
	sta	<R1
	sep	#$20
	longa	off
	ldy	<R1
	lda	[<L562+img_1],Y
	sta	<L562+b_2
	rep	#$20
	longa	on
	.line	1508
;				{ // plot the pixel
	sep	#$20
	longa	off
	lda	#$0
	cmp	<L562+b_2
	rep	#$20
	longa	on
	bcc	L569
	brl	L10179
L569:
	.line	1509
;					//k_draw_pixel(textX + x, textY + y, color);
;					
;					((unsigned char FAR *)BITMAP_BANK_0)[(long)(( ((long)textY + y) * 640L) + ((long)textX + x) )] = (char)color;
	.line	1512
	ldy	#$0
	lda	<L562+textX_1
	bpl	L570
	dey
L570:
	sta	<R0
	sty	<R0+2
	ldy	#$0
	lda	<L562+x_1
	bpl	L571
	dey
L571:
	sta	<R1
	sty	<R1+2
	ldy	#$0
	lda	<L562+y_1
	bpl	L572
	dey
L572:
	sta	<R2
	sty	<R2+2
	ldy	#$0
	lda	<L562+textY_1
	bpl	L573
	dey
L573:
	sta	<R3
	sty	<R3+2
	clc
	lda	<R3
	adc	<R2
	sta	<17
	lda	<R3+2
	adc	<R2+2
	sta	<17+2
	pea	#^$280
	pea	#<$280
	pei	<17+2
	pei	<17
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
	clc
	lda	<R3
	adc	<R0
	sta	<R1
	lda	<R3+2
	adc	<R0+2
	sta	<R1+2
	clc
	lda	#$0
	adc	<R1
	sta	<R0
	lda	#$b0
	adc	<R1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	<L561+color_0
	sta	[<R0]
	rep	#$20
	longa	on
;				}
	.line	1513
;				else 
	brl	L10180
L10179:
;				{ 
	.line	1515
;					// leave empty (or maybe plot 'text backgr color')
;				}
	.line	1517
L10180:
;			} // end "for x"
	.endblock	1518
	.line	1518
L10175:
	inc	<L562+x_1
L10178:
	jsl	~~k_font_getFontWidth
	sta	<R0
	lda	<L562+x_1
	cmp	<R0
	bcs	L574
	brl	L10177
L574:
L10176:
;		} // end "for y"
	.line	1519
L10171:
	inc	<L562+y_1
L10174:
	jsl	~~k_font_getFontHeight
	sta	<R0
	lda	<L562+y_1
	cmp	<R0
	bcs	L575
	brl	L10173
L575:
L10172:
;	}
	.line	1520
;}
L10170:
	.line	1521
L576:
	lda	<L561+2
	sta	<L561+2+8
	lda	<L561+1
	sta	<L561+1+8
	pld
	tsc
	clc
	adc	#L561+8
	tcs
	rtl
	.endblock	1521
L561	equ	33
L562	equ	21
	ends
	efunc
	.endfunc	1521,21,33
	.line	1521
;
;void k_put_font_scaled(char outChar,int row,int column,char color,int scale)
;{
	.line	1523
	.line	1524
	GUI
	xdef	~~k_put_font_scaled
	func
	.function	1524
~~k_put_font_scaled:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L577
	tcs
	phd
	tcd
outChar_0	set	4
row_0	set	6
column_0	set	8
color_0	set	10
scale_0	set	12
	.block	1524
;	int x = 0;
;	int y = 0;
;
;	int height = FONTH * scale;
;	int width  = FONTW * scale;
;	
;	int textX = row    * height;
;	int textY = column * width;
;
;	int px   = 0;
;	int py   = 0;
;	int offx = 0;
;	int offy = 0;
;	int sx   = 0;
;	int sy   = 0;
;
;	char b   = 0;
;
;	char FAR* img = NULL;//fontImg[ix];
;
;    if(outChar == 32)
x_1	set	0
y_1	set	2
height_1	set	4
width_1	set	6
textX_1	set	8
textY_1	set	10
px_1	set	12
py_1	set	14
offx_1	set	16
offy_1	set	18
sx_1	set	20
sy_1	set	22
b_1	set	24
img_1	set	25
	.sym	x,0,5,1,16
	.sym	y,2,5,1,16
	.sym	height,4,5,1,16
	.sym	width,6,5,1,16
	.sym	textX,8,5,1,16
	.sym	textY,10,5,1,16
	.sym	px,12,5,1,16
	.sym	py,14,5,1,16
	.sym	offx,16,5,1,16
	.sym	offy,18,5,1,16
	.sym	sx,20,5,1,16
	.sym	sy,22,5,1,16
	.sym	b,24,14,1,8
	.sym	img,25,142,1,32
	.sym	outChar,4,14,6,8
	.sym	row,6,5,6,16
	.sym	column,8,5,6,16
	.sym	color,10,14,6,8
	.sym	scale,12,5,6,16
	stz	<L578+x_1
	stz	<L578+y_1
	jsl	~~k_font_getFontHeight
	sta	<R0
	lda	<R0
	ldx	<L577+scale_0
	xref	~~~mul
	jsl	~~~mul
	sta	<L578+height_1
	jsl	~~k_font_getFontWidth
	sta	<R0
	lda	<R0
	ldx	<L577+scale_0
	xref	~~~mul
	jsl	~~~mul
	sta	<L578+width_1
	lda	<L577+row_0
	ldx	<L578+height_1
	xref	~~~mul
	jsl	~~~mul
	sta	<L578+textX_1
	lda	<L577+column_0
	ldx	<L578+width_1
	xref	~~~mul
	jsl	~~~mul
	sta	<L578+textY_1
	stz	<L578+px_1
	stz	<L578+py_1
	stz	<L578+offx_1
	stz	<L578+offy_1
	stz	<L578+sx_1
	stz	<L578+sy_1
	sep	#$20
	longa	off
	stz	<L578+b_1
	rep	#$20
	longa	on
	stz	<L578+img_1
	stz	<L578+img_1+2
	.line	1545
;	{
	sep	#$20
	longa	off
	lda	<L577+outChar_0
	cmp	#<$20
	rep	#$20
	longa	on
	beq	L580
	brl	L10181
L580:
	.line	1546
;	   img = NULL;//fontSpace;
	.line	1547
	stz	<L578+img_1
	stz	<L578+img_1+2
;    }
	.line	1548
;    else
	brl	L10182
L10181:
;	{
	.line	1550
;	    img = fontImg[(int)characterROMMapping[(int)(outChar & 0xFF)]];
	.line	1551
	lda	<L577+outChar_0
	and	#<$ff
	sta	<R2
	ldy	#$0
	lda	<R2
	bpl	L581
	dey
L581:
	sta	<R2
	sty	<R2+2
	pei	<R2+2
	pei	<R2
	lda	#$1
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R1
	stx	<R1+2
	clc
	lda	#<~~characterROMMapping
	adc	<R1
	sta	<R3
	lda	#^~~characterROMMapping
	adc	<R1+2
	sta	<R3+2
	ldy	#$0
	lda	[<R3]
	bpl	L582
	dey
L582:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	lda	#$6
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R0
	stx	<R0+2
	clc
	lda	#<~~fontImg
	adc	<R0
	sta	<L578+img_1
	lda	#^~~fontImg
	adc	<R0+2
	sta	<L578+img_1+2
;		//img = fontImg[0x01];
;	}
	.line	1553
L10182:
;	//printf("putFont:%d\n",characterROMMapping[outChar]);
;
;	// get the font 'image'
;        //char *img = fontImg[ix]; 
;        // loop through pixel rows
;	if(img!=NULL)
	.line	1559
;	{
	lda	<L578+img_1
	ora	<L578+img_1+2
	bne	L583
	brl	L10183
L583:
	.line	1560
;		py = 0;
	.line	1561
	stz	<L578+py_1
;		for (y = 0; y < height; y+=scale) 
	.line	1562
	stz	<L578+y_1
	brl	L10187
L10186:
;		{
	.line	1563
;			offy = y;
	.line	1564
	lda	<L578+y_1
	sta	<L578+offy_1
;			px = 0;
	.line	1565
	stz	<L578+px_1
;			for (x = 0; x < width; x+=scale) 
	.line	1566
	stz	<L578+x_1
	brl	L10191
L10190:
;			{
	.line	1567
;				// get the pixel value
;				offx = x;
	.line	1569
	lda	<L578+x_1
	sta	<L578+offx_1
;				b = img[py * FONTW + px];
	.line	1570
	jsl	~~k_font_getFontWidth
	sta	<R0
	lda	<R0
	ldx	<L578+py_1
	xref	~~~mul
	jsl	~~~mul
	sta	<R0
	clc
	lda	<R0
	adc	<L578+px_1
	sta	<R1
	sep	#$20
	longa	off
	ldy	<R1
	lda	[<L578+img_1],Y
	sta	<L578+b_1
	rep	#$20
	longa	on
;				if (b > 0) 
	.line	1571
;				{ // plot the pixel					
	sep	#$20
	longa	off
	lda	#$0
	cmp	<L578+b_1
	rep	#$20
	longa	on
	bcc	L584
	brl	L10192
L584:
	.line	1572
;					offy = y;
	.line	1573
	lda	<L578+y_1
	sta	<L578+offy_1
;					for(sy=0;sy<scale;sy++)
	.line	1574
	stz	<L578+sy_1
	brl	L10196
L10195:
;					{
	.line	1575
;						offx = x;
	.line	1576
	lda	<L578+x_1
	sta	<L578+offx_1
;						for(sx=0;sx<scale;sx++)
	.line	1577
	stz	<L578+sx_1
	brl	L10200
L10199:
;						{
	.line	1578
;							k_draw_pixel(textX + offx, textY + offy, color);
	.line	1579
	pei	<L577+color_0
	clc
	lda	<L578+textY_1
	adc	<L578+offy_1
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L585
	dey
L585:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	<L578+textX_1
	adc	<L578+offx_1
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L586
	dey
L586:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_draw_pixel
;							offx++;
	.line	1580
	inc	<L578+offx_1
;						}
	.line	1581
L10197:
	inc	<L578+sx_1
L10200:
	sec
	lda	<L578+sx_1
	sbc	<L577+scale_0
	bvs	L587
	eor	#$8000
L587:
	bmi	L588
	brl	L10199
L588:
L10198:
;						offy++;
	.line	1582
	inc	<L578+offy_1
;					}
	.line	1583
L10193:
	inc	<L578+sy_1
L10196:
	sec
	lda	<L578+sy_1
	sbc	<L577+scale_0
	bvs	L589
	eor	#$8000
L589:
	bmi	L590
	brl	L10195
L590:
L10194:
;					
;					//k_draw_pixel(textX + x, textY + y, color);
;				}
	.line	1586
;				else 
	brl	L10201
L10192:
;				{ 
	.line	1588
;					// leave empty (or maybe plot 'text backgr color')
;				}
	.line	1590
L10201:
;				px++;
	.line	1591
	inc	<L578+px_1
;			} // end "for x"
	.line	1592
L10188:
	clc
	lda	<L578+x_1
	adc	<L577+scale_0
	sta	<L578+x_1
L10191:
	sec
	lda	<L578+x_1
	sbc	<L578+width_1
	bvs	L591
	eor	#$8000
L591:
	bmi	L592
	brl	L10190
L592:
L10189:
;			py++;
	.line	1593
	inc	<L578+py_1
;		} // end "for y"
	.line	1594
L10184:
	clc
	lda	<L578+y_1
	adc	<L577+scale_0
	sta	<L578+y_1
L10187:
	sec
	lda	<L578+y_1
	sbc	<L578+height_1
	bvs	L593
	eor	#$8000
L593:
	bmi	L594
	brl	L10186
L594:
L10185:
;	}
	.line	1595
;}
L10183:
	.line	1596
L595:
	lda	<L577+2
	sta	<L577+2+10
	lda	<L577+1
	sta	<L577+1+10
	pld
	tsc
	clc
	adc	#L577+10
	tcs
	rtl
	.endblock	1596
L577	equ	45
L578	equ	17
	ends
	efunc
	.endfunc	1596,17,45
	.line	1596
;
;void k_draw_char(char charCode,int row,int column,char color)
;{
	.line	1598
	.line	1599
	GUI
	xdef	~~k_draw_char
	func
	.function	1599
~~k_draw_char:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L596
	tcs
	phd
	tcd
charCode_0	set	4
row_0	set	6
column_0	set	8
color_0	set	10
	.block	1599
;	int x = 0;
;	int y = 0;
;
;	int textX = row * FONTH;
;	int textY = column * FONTW;
;	char b = 0;
;
;	char FAR* img = NULL;//fontImg[ix];
;
;    if(charCode == 32)
x_1	set	0
y_1	set	2
textX_1	set	4
textY_1	set	6
b_1	set	8
img_1	set	9
	.sym	x,0,5,1,16
	.sym	y,2,5,1,16
	.sym	textX,4,5,1,16
	.sym	textY,6,5,1,16
	.sym	b,8,14,1,8
	.sym	img,9,142,1,32
	.sym	charCode,4,14,6,8
	.sym	row,6,5,6,16
	.sym	column,8,5,6,16
	.sym	color,10,14,6,8
	stz	<L597+x_1
	stz	<L597+y_1
	jsl	~~k_font_getFontHeight
	sta	<R0
	lda	<R0
	ldx	<L596+row_0
	xref	~~~mul
	jsl	~~~mul
	sta	<L597+textX_1
	jsl	~~k_font_getFontWidth
	sta	<R0
	lda	<R0
	ldx	<L596+column_0
	xref	~~~mul
	jsl	~~~mul
	sta	<L597+textY_1
	sep	#$20
	longa	off
	stz	<L597+b_1
	rep	#$20
	longa	on
	stz	<L597+img_1
	stz	<L597+img_1+2
	.line	1609
;	{
	sep	#$20
	longa	off
	lda	<L596+charCode_0
	cmp	#<$20
	rep	#$20
	longa	on
	beq	L599
	brl	L10202
L599:
	.line	1610
;	   img = NULL;//fontSpace;
	.line	1611
	stz	<L597+img_1
	stz	<L597+img_1+2
;    }
	.line	1612
;    else
	brl	L10203
L10202:
;	{
	.line	1614
;	    img = fontImg[charCode & 0xFF];
	.line	1615
	lda	<L596+charCode_0
	and	#<$ff
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L600
	dey
L600:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	lda	#$6
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R0
	stx	<R0+2
	clc
	lda	#<~~fontImg
	adc	<R0
	sta	<L597+img_1
	lda	#^~~fontImg
	adc	<R0+2
	sta	<L597+img_1+2
;	}
	.line	1616
L10203:
;	//printf("putFont:%d\n",characterROMMapping[outChar]);
;
;	// get the font 'image'
;        //char *img = fontImg[ix]; 
;        // loop through pixel rows
;	if(img!=NULL)
	.line	1622
;	{
	lda	<L597+img_1
	ora	<L597+img_1+2
	bne	L601
	brl	L10204
L601:
	.line	1623
;		for (y = 0; y < FONTH; y++) 
	.line	1624
	stz	<L597+y_1
	brl	L10208
L10207:
;		{
	.line	1625
;			// loop through pixel columns
;			for (x = 0; x < FONTW; x++) 
	.line	1627
	stz	<L597+x_1
	brl	L10212
L10211:
;			{
	.line	1628
;				// get the pixel value
;				b = img[y * FONTW + x];
	.line	1630
	jsl	~~k_font_getFontWidth
	sta	<R0
	lda	<R0
	ldx	<L597+y_1
	xref	~~~mul
	jsl	~~~mul
	sta	<R0
	clc
	lda	<R0
	adc	<L597+x_1
	sta	<R1
	sep	#$20
	longa	off
	ldy	<R1
	lda	[<L597+img_1],Y
	sta	<L597+b_1
	rep	#$20
	longa	on
;				if (b > 0) 
	.line	1631
;				{ // plot the pixel
	sep	#$20
	longa	off
	lda	#$0
	cmp	<L597+b_1
	rep	#$20
	longa	on
	bcc	L602
	brl	L10213
L602:
	.line	1632
;					k_draw_pixel(textX + x, textY + y, color);
	.line	1633
	pei	<L596+color_0
	clc
	lda	<L597+textY_1
	adc	<L597+y_1
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L603
	dey
L603:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	<L597+textX_1
	adc	<L597+x_1
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L604
	dey
L604:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_draw_pixel
;				}
	.line	1634
;				else 
	brl	L10214
L10213:
;				{ 
	.line	1636
;					// leave empty (or maybe plot 'text backgr color')
;				}
	.line	1638
L10214:
;			} // end "for x"
	.line	1639
L10209:
	inc	<L597+x_1
L10212:
	jsl	~~k_font_getFontWidth
	sta	<R0
	lda	<L597+x_1
	cmp	<R0
	bcs	L605
	brl	L10211
L605:
L10210:
;		} // end "for y"
	.line	1640
L10205:
	inc	<L597+y_1
L10208:
	jsl	~~k_font_getFontHeight
	sta	<R0
	lda	<L597+y_1
	cmp	<R0
	bcs	L606
	brl	L10207
L606:
L10206:
;	}
	.line	1641
;}
L10204:
	.line	1642
L607:
	lda	<L596+2
	sta	<L596+2+8
	lda	<L596+1
	sta	<L596+1+8
	pld
	tsc
	clc
	adc	#L596+8
	tcs
	rtl
	.endblock	1642
L596	equ	21
L597	equ	9
	ends
	efunc
	.endfunc	1642,9,21
	.line	1642
;
;void k_draw_char_scaled(char charCode,int row,int column,char color,int scale)
;{
	.line	1644
	.line	1645
	GUI
	xdef	~~k_draw_char_scaled
	func
	.function	1645
~~k_draw_char_scaled:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L608
	tcs
	phd
	tcd
charCode_0	set	4
row_0	set	6
column_0	set	8
color_0	set	10
scale_0	set	12
	.block	1645
;	int x = 0;
;	int y = 0;
;
;	int height = FONTH * scale;
;	int width  = FONTW * scale;
;	
;	int textX = row    * height;
;	int textY = column * width;
;
;	int px   = 0;
;	int py   = 0;
;	int offx = 0;
;	int offy = 0;
;	int sx   = 0;
;	int sy   = 0;
;
;	char b   = 0;
;
;	char FAR* img = NULL;
;
;    if(charCode == 32)
x_1	set	0
y_1	set	2
height_1	set	4
width_1	set	6
textX_1	set	8
textY_1	set	10
px_1	set	12
py_1	set	14
offx_1	set	16
offy_1	set	18
sx_1	set	20
sy_1	set	22
b_1	set	24
img_1	set	25
	.sym	x,0,5,1,16
	.sym	y,2,5,1,16
	.sym	height,4,5,1,16
	.sym	width,6,5,1,16
	.sym	textX,8,5,1,16
	.sym	textY,10,5,1,16
	.sym	px,12,5,1,16
	.sym	py,14,5,1,16
	.sym	offx,16,5,1,16
	.sym	offy,18,5,1,16
	.sym	sx,20,5,1,16
	.sym	sy,22,5,1,16
	.sym	b,24,14,1,8
	.sym	img,25,142,1,32
	.sym	charCode,4,14,6,8
	.sym	row,6,5,6,16
	.sym	column,8,5,6,16
	.sym	color,10,14,6,8
	.sym	scale,12,5,6,16
	stz	<L609+x_1
	stz	<L609+y_1
	jsl	~~k_font_getFontHeight
	sta	<R0
	lda	<R0
	ldx	<L608+scale_0
	xref	~~~mul
	jsl	~~~mul
	sta	<L609+height_1
	jsl	~~k_font_getFontWidth
	sta	<R0
	lda	<R0
	ldx	<L608+scale_0
	xref	~~~mul
	jsl	~~~mul
	sta	<L609+width_1
	lda	<L608+row_0
	ldx	<L609+height_1
	xref	~~~mul
	jsl	~~~mul
	sta	<L609+textX_1
	lda	<L608+column_0
	ldx	<L609+width_1
	xref	~~~mul
	jsl	~~~mul
	sta	<L609+textY_1
	stz	<L609+px_1
	stz	<L609+py_1
	stz	<L609+offx_1
	stz	<L609+offy_1
	stz	<L609+sx_1
	stz	<L609+sy_1
	sep	#$20
	longa	off
	stz	<L609+b_1
	rep	#$20
	longa	on
	stz	<L609+img_1
	stz	<L609+img_1+2
	.line	1666
;	{
	sep	#$20
	longa	off
	lda	<L608+charCode_0
	cmp	#<$20
	rep	#$20
	longa	on
	beq	L611
	brl	L10215
L611:
	.line	1667
;	   img = NULL;
	.line	1668
	stz	<L609+img_1
	stz	<L609+img_1+2
;    }
	.line	1669
;    else
	brl	L10216
L10215:
;	{
	.line	1671
;	    img = fontImg[charCode & 0xFF];
	.line	1672
	lda	<L608+charCode_0
	and	#<$ff
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L612
	dey
L612:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	lda	#$6
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R0
	stx	<R0+2
	clc
	lda	#<~~fontImg
	adc	<R0
	sta	<L609+img_1
	lda	#^~~fontImg
	adc	<R0+2
	sta	<L609+img_1+2
;	}
	.line	1673
L10216:
;
;	if(img!=NULL)
	.line	1675
;	{
	lda	<L609+img_1
	ora	<L609+img_1+2
	bne	L613
	brl	L10217
L613:
	.line	1676
;		py = 0;
	.line	1677
	stz	<L609+py_1
;		for (y = 0; y < height; y+=scale) 
	.line	1678
	stz	<L609+y_1
	brl	L10221
L10220:
;		{
	.line	1679
;			offy = y;
	.line	1680
	lda	<L609+y_1
	sta	<L609+offy_1
;			px = 0;
	.line	1681
	stz	<L609+px_1
;			for (x = 0; x < width; x+=scale) 
	.line	1682
	stz	<L609+x_1
	brl	L10225
L10224:
;			{
	.line	1683
;				// get the pixel value
;				offx = x;
	.line	1685
	lda	<L609+x_1
	sta	<L609+offx_1
;				b = img[py * FONTW + px];
	.line	1686
	jsl	~~k_font_getFontWidth
	sta	<R0
	lda	<R0
	ldx	<L609+py_1
	xref	~~~mul
	jsl	~~~mul
	sta	<R0
	clc
	lda	<R0
	adc	<L609+px_1
	sta	<R1
	sep	#$20
	longa	off
	ldy	<R1
	lda	[<L609+img_1],Y
	sta	<L609+b_1
	rep	#$20
	longa	on
;				if (b > 0) 
	.line	1687
;				{ // plot the pixel					
	sep	#$20
	longa	off
	lda	#$0
	cmp	<L609+b_1
	rep	#$20
	longa	on
	bcc	L614
	brl	L10226
L614:
	.line	1688
;					offy = y;
	.line	1689
	lda	<L609+y_1
	sta	<L609+offy_1
;					for(sy=0;sy<scale;sy++)
	.line	1690
	stz	<L609+sy_1
	brl	L10230
L10229:
;					{
	.line	1691
;						offx = x;
	.line	1692
	lda	<L609+x_1
	sta	<L609+offx_1
;						for(sx=0;sx<scale;sx++)
	.line	1693
	stz	<L609+sx_1
	brl	L10234
L10233:
;						{
	.line	1694
;							k_draw_pixel(textX + offx, textY + offy, color);
	.line	1695
	pei	<L608+color_0
	clc
	lda	<L609+textY_1
	adc	<L609+offy_1
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L615
	dey
L615:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	<L609+textX_1
	adc	<L609+offx_1
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L616
	dey
L616:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_draw_pixel
;							offx++;
	.line	1696
	inc	<L609+offx_1
;						}
	.line	1697
L10231:
	inc	<L609+sx_1
L10234:
	sec
	lda	<L609+sx_1
	sbc	<L608+scale_0
	bvs	L617
	eor	#$8000
L617:
	bmi	L618
	brl	L10233
L618:
L10232:
;						offy++;
	.line	1698
	inc	<L609+offy_1
;					}
	.line	1699
L10227:
	inc	<L609+sy_1
L10230:
	sec
	lda	<L609+sy_1
	sbc	<L608+scale_0
	bvs	L619
	eor	#$8000
L619:
	bmi	L620
	brl	L10229
L620:
L10228:
;					
;					//k_draw_pixel(textX + x, textY + y, color);
;				}
	.line	1702
;				else 
	brl	L10235
L10226:
;				{ 
	.line	1704
;					// leave empty (or maybe plot 'text backgr color')
;				}
	.line	1706
L10235:
;				px++;
	.line	1707
	inc	<L609+px_1
;			} // end "for x"
	.line	1708
L10222:
	clc
	lda	<L609+x_1
	adc	<L608+scale_0
	sta	<L609+x_1
L10225:
	sec
	lda	<L609+x_1
	sbc	<L609+width_1
	bvs	L621
	eor	#$8000
L621:
	bmi	L622
	brl	L10224
L622:
L10223:
;			py++;
	.line	1709
	inc	<L609+py_1
;		} // end "for y"
	.line	1710
L10218:
	clc
	lda	<L609+y_1
	adc	<L608+scale_0
	sta	<L609+y_1
L10221:
	sec
	lda	<L609+y_1
	sbc	<L609+height_1
	bvs	L623
	eor	#$8000
L623:
	bmi	L624
	brl	L10220
L624:
L10219:
;	}
	.line	1711
;}
L10217:
	.line	1712
L625:
	lda	<L608+2
	sta	<L608+2+10
	lda	<L608+1
	sta	<L608+1+10
	pld
	tsc
	clc
	adc	#L608+10
	tcs
	rtl
	.endblock	1712
L608	equ	37
L609	equ	9
	ends
	efunc
	.endfunc	1712,9,37
	.line	1712
;
;
;void k_draw_char_scaled_point(char charCode,int locX,int locY,char color,int scale)
;{
	.line	1715
	.line	1716
	GUI
	xdef	~~k_draw_char_scaled_point
	func
	.function	1716
~~k_draw_char_scaled_point:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L626
	tcs
	phd
	tcd
charCode_0	set	4
locX_0	set	6
locY_0	set	8
color_0	set	10
scale_0	set	12
	.block	1716
;	int x = 0;
;	int y = 0;
;
;	int height = FONTH * scale;
;	int width  = FONTW * scale;
;	
;	int textX = locX;
;	int textY = locY;
;
;	int px   = 0;
;	int py   = 0;
;	int offx = 0;
;	int offy = 0;
;	int sx   = 0;
;	int sy   = 0;
;
;	char b   = 0;
;
;	char FAR* img = NULL;
;
;    if(charCode == 32)
x_1	set	0
y_1	set	2
height_1	set	4
width_1	set	6
textX_1	set	8
textY_1	set	10
px_1	set	12
py_1	set	14
offx_1	set	16
offy_1	set	18
sx_1	set	20
sy_1	set	22
b_1	set	24
img_1	set	25
	.sym	x,0,5,1,16
	.sym	y,2,5,1,16
	.sym	height,4,5,1,16
	.sym	width,6,5,1,16
	.sym	textX,8,5,1,16
	.sym	textY,10,5,1,16
	.sym	px,12,5,1,16
	.sym	py,14,5,1,16
	.sym	offx,16,5,1,16
	.sym	offy,18,5,1,16
	.sym	sx,20,5,1,16
	.sym	sy,22,5,1,16
	.sym	b,24,14,1,8
	.sym	img,25,142,1,32
	.sym	charCode,4,14,6,8
	.sym	locX,6,5,6,16
	.sym	locY,8,5,6,16
	.sym	color,10,14,6,8
	.sym	scale,12,5,6,16
	stz	<L627+x_1
	stz	<L627+y_1
	jsl	~~k_font_getFontHeight
	sta	<R0
	lda	<R0
	ldx	<L626+scale_0
	xref	~~~mul
	jsl	~~~mul
	sta	<L627+height_1
	jsl	~~k_font_getFontWidth
	sta	<R0
	lda	<R0
	ldx	<L626+scale_0
	xref	~~~mul
	jsl	~~~mul
	sta	<L627+width_1
	lda	<L626+locX_0
	sta	<L627+textX_1
	lda	<L626+locY_0
	sta	<L627+textY_1
	stz	<L627+px_1
	stz	<L627+py_1
	stz	<L627+offx_1
	stz	<L627+offy_1
	stz	<L627+sx_1
	stz	<L627+sy_1
	sep	#$20
	longa	off
	stz	<L627+b_1
	rep	#$20
	longa	on
	stz	<L627+img_1
	stz	<L627+img_1+2
	.line	1737
;	{
	sep	#$20
	longa	off
	lda	<L626+charCode_0
	cmp	#<$20
	rep	#$20
	longa	on
	beq	L629
	brl	L10236
L629:
	.line	1738
;	   img = NULL;
	.line	1739
	stz	<L627+img_1
	stz	<L627+img_1+2
;    }
	.line	1740
;    else
	brl	L10237
L10236:
;	{
	.line	1742
;	    img = fontImg[charCode & 0xFF];
	.line	1743
	lda	<L626+charCode_0
	and	#<$ff
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L630
	dey
L630:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	lda	#$6
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R0
	stx	<R0+2
	clc
	lda	#<~~fontImg
	adc	<R0
	sta	<L627+img_1
	lda	#^~~fontImg
	adc	<R0+2
	sta	<L627+img_1+2
;	}
	.line	1744
L10237:
;
;	if(img!=NULL)
	.line	1746
;	{
	lda	<L627+img_1
	ora	<L627+img_1+2
	bne	L631
	brl	L10238
L631:
	.line	1747
;		py = 0;
	.line	1748
	stz	<L627+py_1
;		for (y = 0; y < height; y+=scale) 
	.line	1749
	stz	<L627+y_1
	brl	L10242
L10241:
;		{
	.line	1750
;			offy = y;
	.line	1751
	lda	<L627+y_1
	sta	<L627+offy_1
;			px = 0;
	.line	1752
	stz	<L627+px_1
;			for (x = 0; x < width; x+=scale) 
	.line	1753
	stz	<L627+x_1
	brl	L10246
L10245:
;			{
	.line	1754
;				// get the pixel value
;				offx = x;
	.line	1756
	lda	<L627+x_1
	sta	<L627+offx_1
;				b = img[py * FONTW + px];
	.line	1757
	jsl	~~k_font_getFontWidth
	sta	<R0
	lda	<R0
	ldx	<L627+py_1
	xref	~~~mul
	jsl	~~~mul
	sta	<R0
	clc
	lda	<R0
	adc	<L627+px_1
	sta	<R1
	sep	#$20
	longa	off
	ldy	<R1
	lda	[<L627+img_1],Y
	sta	<L627+b_1
	rep	#$20
	longa	on
;				if (b > 0) 
	.line	1758
;				{ // plot the pixel					
	sep	#$20
	longa	off
	lda	#$0
	cmp	<L627+b_1
	rep	#$20
	longa	on
	bcc	L632
	brl	L10247
L632:
	.line	1759
;					offy = y;
	.line	1760
	lda	<L627+y_1
	sta	<L627+offy_1
;					for(sy=0;sy<scale;sy++)
	.line	1761
	stz	<L627+sy_1
	brl	L10251
L10250:
;					{
	.line	1762
;						offx = x;
	.line	1763
	lda	<L627+x_1
	sta	<L627+offx_1
;						for(sx=0;sx<scale;sx++)
	.line	1764
	stz	<L627+sx_1
	brl	L10255
L10254:
;						{
	.line	1765
;							k_draw_pixel(textX + offx, textY + offy, color);
	.line	1766
	pei	<L626+color_0
	clc
	lda	<L627+textY_1
	adc	<L627+offy_1
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L633
	dey
L633:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	<L627+textX_1
	adc	<L627+offx_1
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L634
	dey
L634:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_draw_pixel
;							offx++;
	.line	1767
	inc	<L627+offx_1
;						}
	.line	1768
L10252:
	inc	<L627+sx_1
L10255:
	sec
	lda	<L627+sx_1
	sbc	<L626+scale_0
	bvs	L635
	eor	#$8000
L635:
	bmi	L636
	brl	L10254
L636:
L10253:
;						offy++;
	.line	1769
	inc	<L627+offy_1
;					}
	.line	1770
L10248:
	inc	<L627+sy_1
L10251:
	sec
	lda	<L627+sy_1
	sbc	<L626+scale_0
	bvs	L637
	eor	#$8000
L637:
	bmi	L638
	brl	L10250
L638:
L10249:
;					
;					//k_draw_pixel(textX + x, textY + y, color);
;				}
	.line	1773
;				else 
	brl	L10256
L10247:
;				{ 
	.line	1775
;					// leave empty (or maybe plot 'text backgr color')
;				}
	.line	1777
L10256:
;				px++;
	.line	1778
	inc	<L627+px_1
;			} // end "for x"
	.line	1779
L10243:
	clc
	lda	<L627+x_1
	adc	<L626+scale_0
	sta	<L627+x_1
L10246:
	sec
	lda	<L627+x_1
	sbc	<L627+width_1
	bvs	L639
	eor	#$8000
L639:
	bmi	L640
	brl	L10245
L640:
L10244:
;			py++;
	.line	1780
	inc	<L627+py_1
;		} // end "for y"
	.line	1781
L10239:
	clc
	lda	<L627+y_1
	adc	<L626+scale_0
	sta	<L627+y_1
L10242:
	sec
	lda	<L627+y_1
	sbc	<L627+height_1
	bvs	L641
	eor	#$8000
L641:
	bmi	L642
	brl	L10241
L642:
L10240:
;	}
	.line	1782
;}
L10238:
	.line	1783
L643:
	lda	<L626+2
	sta	<L626+2+10
	lda	<L626+1
	sta	<L626+1+10
	pld
	tsc
	clc
	adc	#L626+10
	tcs
	rtl
	.endblock	1783
L626	equ	37
L627	equ	9
	ends
	efunc
	.endfunc	1783,9,37
	.line	1783
;
;
;void k_render_bitmap_info(int fcolor)
;{
	.line	1786
	.line	1787
	GUI
	xdef	~~k_render_bitmap_info
	func
	.function	1787
~~k_render_bitmap_info:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L644
	tcs
	phd
	tcd
fcolor_0	set	4
	.block	1787
;	int x;
;	int y;
;	int pos = 0;
;	int i = 0;
;	int k = 0;
;	int cv = 0;
;	int cl = 0;
;	int lv = 0;
;	int lm = 0;
;	int bx = 0;
;	int by = 0;
;	int mx = -1;
;	int my = -1;
;	int mb = -1;
;	int bw = 0;
;	int bh = 0;
;	char kbchar = 0;
;
;	version_title = "Version 1.0.0\0";
x_1	set	0
y_1	set	2
pos_1	set	4
i_1	set	6
k_1	set	8
cv_1	set	10
cl_1	set	12
lv_1	set	14
lm_1	set	16
bx_1	set	18
by_1	set	20
mx_1	set	22
my_1	set	24
mb_1	set	26
bw_1	set	28
bh_1	set	30
kbchar_1	set	32
	.sym	x,0,5,1,16
	.sym	y,2,5,1,16
	.sym	pos,4,5,1,16
	.sym	i,6,5,1,16
	.sym	k,8,5,1,16
	.sym	cv,10,5,1,16
	.sym	cl,12,5,1,16
	.sym	lv,14,5,1,16
	.sym	lm,16,5,1,16
	.sym	bx,18,5,1,16
	.sym	by,20,5,1,16
	.sym	mx,22,5,1,16
	.sym	my,24,5,1,16
	.sym	mb,26,5,1,16
	.sym	bw,28,5,1,16
	.sym	bh,30,5,1,16
	.sym	kbchar,32,14,1,8
	.sym	fcolor,4,5,6,16
	stz	<L645+pos_1
	stz	<L645+i_1
	stz	<L645+k_1
	stz	<L645+cv_1
	stz	<L645+cl_1
	stz	<L645+lv_1
	stz	<L645+lm_1
	stz	<L645+bx_1
	stz	<L645+by_1
	lda	#$ffff
	sta	<L645+mx_1
	lda	#$ffff
	sta	<L645+my_1
	lda	#$ffff
	sta	<L645+mb_1
	stz	<L645+bw_1
	stz	<L645+bh_1
	sep	#$20
	longa	off
	stz	<L645+kbchar_1
	rep	#$20
	longa	on
	.line	1806
	lda	#<L500
	sta	|~~version_title
	lda	#^L500
	sta	|~~version_title+2
;
;
;	pos=2;
	.line	1809
	lda	#$2
	sta	<L645+pos_1
;	pos=k_put_draw_text(pos,35,"FOENIX C256 VERSION:",fcolor,0);
	.line	1810
	pea	#<$0
	pei	<L644+fcolor_0
	pea	#^L500+15
	pea	#<L500+15
	pea	#<$23
	pei	<L645+pos_1
	jsl	~~k_put_draw_text
	sta	<L645+pos_1
;	k_get_c256_major_version(buffer);
	.line	1811
	pea	#^~~buffer
	pea	#<~~buffer
	jsl	~~k_get_c256_major_version
;	pos=k_put_draw_text(pos,35,buffer,fcolor,0);
	.line	1812
	pea	#<$0
	pei	<L644+fcolor_0
	pea	#^~~buffer
	pea	#<~~buffer
	pea	#<$23
	pei	<L645+pos_1
	jsl	~~k_put_draw_text
	sta	<L645+pos_1
;	k_get_c256_minor_version(buffer);
	.line	1813
	pea	#^~~buffer
	pea	#<~~buffer
	jsl	~~k_get_c256_minor_version
;	pos=k_put_draw_text(pos,35,buffer,fcolor,0);
	.line	1814
	pea	#<$0
	pei	<L644+fcolor_0
	pea	#^~~buffer
	pea	#<~~buffer
	pea	#<$23
	pei	<L645+pos_1
	jsl	~~k_put_draw_text
	sta	<L645+pos_1
;	
;	pos=2;
	.line	1816
	lda	#$2
	sta	<L645+pos_1
;	pos=k_put_draw_text(pos,37,"FPGA VERSION:",fcolor,0);
	.line	1817
	pea	#<$0
	pei	<L644+fcolor_0
	pea	#^L500+36
	pea	#<L500+36
	pea	#<$25
	pei	<L645+pos_1
	jsl	~~k_put_draw_text
	sta	<L645+pos_1
;	k_get_fpga_date_month(buffer);
	.line	1818
	pea	#^~~buffer
	pea	#<~~buffer
	jsl	~~k_get_fpga_date_month
;	pos=k_put_draw_text(pos,37,k_pad_string(strbuf,buffer,'0',2),fcolor,0);
	.line	1819
	pea	#<$0
	pei	<L644+fcolor_0
	pea	#<$2
	pea	#<$30
	pea	#^~~buffer
	pea	#<~~buffer
	pea	#^~~strbuf
	pea	#<~~strbuf
	jsl	~~k_pad_string
	sta	<R0
	stx	<R0+2
	phx
	pha
	pea	#<$25
	pei	<L645+pos_1
	jsl	~~k_put_draw_text
	sta	<L645+pos_1
;	pos=k_put_draw_text(pos,37,"/",fcolor,0);
	.line	1820
	pea	#<$0
	pei	<L644+fcolor_0
	pea	#^L500+50
	pea	#<L500+50
	pea	#<$25
	pei	<L645+pos_1
	jsl	~~k_put_draw_text
	sta	<L645+pos_1
;	k_get_fpga_date_day(buffer);
	.line	1821
	pea	#^~~buffer
	pea	#<~~buffer
	jsl	~~k_get_fpga_date_day
;	pos=k_put_draw_text(pos,37,k_pad_string(strbuf,buffer,'0',2),fcolor,0);
	.line	1822
	pea	#<$0
	pei	<L644+fcolor_0
	pea	#<$2
	pea	#<$30
	pea	#^~~buffer
	pea	#<~~buffer
	pea	#^~~strbuf
	pea	#<~~strbuf
	jsl	~~k_pad_string
	sta	<R0
	stx	<R0+2
	phx
	pha
	pea	#<$25
	pei	<L645+pos_1
	jsl	~~k_put_draw_text
	sta	<L645+pos_1
;	pos=k_put_draw_text(pos,37,"/",fcolor,0);
	.line	1823
	pea	#<$0
	pei	<L644+fcolor_0
	pea	#^L500+52
	pea	#<L500+52
	pea	#<$25
	pei	<L645+pos_1
	jsl	~~k_put_draw_text
	sta	<L645+pos_1
;	k_get_fpga_date_year(buffer);
	.line	1824
	pea	#^~~buffer
	pea	#<~~buffer
	jsl	~~k_get_fpga_date_year
;	pos=k_put_draw_text(pos,37,k_pad_string(strbuf,buffer,'0',2),fcolor,0);
	.line	1825
	pea	#<$0
	pei	<L644+fcolor_0
	pea	#<$2
	pea	#<$30
	pea	#^~~buffer
	pea	#<~~buffer
	pea	#^~~strbuf
	pea	#<~~strbuf
	jsl	~~k_pad_string
	sta	<R0
	stx	<R0+2
	phx
	pha
	pea	#<$25
	pei	<L645+pos_1
	jsl	~~k_put_draw_text
	sta	<L645+pos_1
;
;
;	pos = 2;
	.line	1828
	lda	#$2
	sta	<L645+pos_1
;	pos=k_put_draw_text(pos,2,"CURRENT COLOR:",15,0);
	.line	1829
	pea	#<$0
	pea	#<$f
	pea	#^L500+54
	pea	#<L500+54
	pea	#<$2
	pei	<L645+pos_1
	jsl	~~k_put_draw_text
	sta	<L645+pos_1
;	k_itoa(fcolor,buffer,10);
	.line	1830
	pea	#<$a
	pea	#^~~buffer
	pea	#<~~buffer
	pei	<L644+fcolor_0
	jsl	~~k_itoa
;	pos=k_put_draw_text(pos,2,buffer,15,0);
	.line	1831
	pea	#<$0
	pea	#<$f
	pea	#^~~buffer
	pea	#<~~buffer
	pea	#<$2
	pei	<L645+pos_1
	jsl	~~k_put_draw_text
	sta	<L645+pos_1
;
;	pos = 2;
	.line	1833
	lda	#$2
	sta	<L645+pos_1
;	k_draw_pixel(0,0,fcolor);
	.line	1834
	pei	<L644+fcolor_0
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	jsl	~~k_draw_pixel
;	pos=k_put_draw_text(pos,3,"READ COLOR AT 0,0 :",15,0);
	.line	1835
	pea	#<$0
	pea	#<$f
	pea	#^L500+69
	pea	#<L500+69
	pea	#<$3
	pei	<L645+pos_1
	jsl	~~k_put_draw_text
	sta	<L645+pos_1
;	k_itoa(k_get_pixel_color(0,0),buffer,10);
	.line	1836
	pea	#<$a
	pea	#^~~buffer
	pea	#<~~buffer
	pea	#<$0
	pea	#<$0
	jsl	~~k_get_pixel_color
	pha
	jsl	~~k_itoa
;	pos=k_put_draw_text(pos,3,buffer,15,0);
	.line	1837
	pea	#<$0
	pea	#<$f
	pea	#^~~buffer
	pea	#<~~buffer
	pea	#<$3
	pei	<L645+pos_1
	jsl	~~k_put_draw_text
	sta	<L645+pos_1
;
;
;
;	pos = 2;
	.line	1841
	lda	#$2
	sta	<L645+pos_1
;	pos=k_put_draw_text(pos,41,"SIZEOF CHAR:",fcolor,0);
	.line	1842
	pea	#<$0
	pei	<L644+fcolor_0
	pea	#^L500+89
	pea	#<L500+89
	pea	#<$29
	pei	<L645+pos_1
	jsl	~~k_put_draw_text
	sta	<L645+pos_1
;	k_itoa(sizeof(char),buffer,10);
	.line	1843
	pea	#<$a
	pea	#^~~buffer
	pea	#<~~buffer
	pea	#<$1
	jsl	~~k_itoa
;	pos=k_put_draw_text(pos,41,buffer,fcolor,0);
	.line	1844
	pea	#<$0
	pei	<L644+fcolor_0
	pea	#^~~buffer
	pea	#<~~buffer
	pea	#<$29
	pei	<L645+pos_1
	jsl	~~k_put_draw_text
	sta	<L645+pos_1
;
;	pos = 2;
	.line	1846
	lda	#$2
	sta	<L645+pos_1
;	pos=k_put_draw_text(pos,42,"SIZEOF INT:",fcolor,0);
	.line	1847
	pea	#<$0
	pei	<L644+fcolor_0
	pea	#^L500+102
	pea	#<L500+102
	pea	#<$2a
	pei	<L645+pos_1
	jsl	~~k_put_draw_text
	sta	<L645+pos_1
;	k_itoa(sizeof(int),buffer,10);
	.line	1848
	pea	#<$a
	pea	#^~~buffer
	pea	#<~~buffer
	pea	#<$2
	jsl	~~k_itoa
;	pos=k_put_draw_text(pos,42,buffer,fcolor,0);
	.line	1849
	pea	#<$0
	pei	<L644+fcolor_0
	pea	#^~~buffer
	pea	#<~~buffer
	pea	#<$2a
	pei	<L645+pos_1
	jsl	~~k_put_draw_text
	sta	<L645+pos_1
;
;	pos = 2;
	.line	1851
	lda	#$2
	sta	<L645+pos_1
;	pos=k_put_draw_text(pos,43,"SIZEOF LONG:",fcolor,0);
	.line	1852
	pea	#<$0
	pei	<L644+fcolor_0
	pea	#^L500+114
	pea	#<L500+114
	pea	#<$2b
	pei	<L645+pos_1
	jsl	~~k_put_draw_text
	sta	<L645+pos_1
;	k_itoa(sizeof(long),buffer,10);
	.line	1853
	pea	#<$a
	pea	#^~~buffer
	pea	#<~~buffer
	pea	#<$4
	jsl	~~k_itoa
;	pos=k_put_draw_text(pos,43,buffer,fcolor,0);
	.line	1854
	pea	#<$0
	pei	<L644+fcolor_0
	pea	#^~~buffer
	pea	#<~~buffer
	pea	#<$2b
	pei	<L645+pos_1
	jsl	~~k_put_draw_text
	sta	<L645+pos_1
;
;	pos = 2;
	.line	1856
	lda	#$2
	sta	<L645+pos_1
;	pos=k_put_draw_text(pos,44,"SIZEOF CHAR*:",fcolor,0);
	.line	1857
	pea	#<$0
	pei	<L644+fcolor_0
	pea	#^L500+127
	pea	#<L500+127
	pea	#<$2c
	pei	<L645+pos_1
	jsl	~~k_put_draw_text
	sta	<L645+pos_1
;	k_itoa(sizeof(char*),buffer,10);
	.line	1858
	pea	#<$a
	pea	#^~~buffer
	pea	#<~~buffer
	pea	#<$4
	jsl	~~k_itoa
;	pos=k_put_draw_text(pos,44,buffer,fcolor,0);
	.line	1859
	pea	#<$0
	pei	<L644+fcolor_0
	pea	#^~~buffer
	pea	#<~~buffer
	pea	#<$2c
	pei	<L645+pos_1
	jsl	~~k_put_draw_text
	sta	<L645+pos_1
;
;	pos = 2;
	.line	1861
	lda	#$2
	sta	<L645+pos_1
;	pos=k_put_draw_text(pos,45,"SIZEOF CHAR FAR*:",fcolor,0);
	.line	1862
	pea	#<$0
	pei	<L644+fcolor_0
	pea	#^L500+141
	pea	#<L500+141
	pea	#<$2d
	pei	<L645+pos_1
	jsl	~~k_put_draw_text
	sta	<L645+pos_1
;	k_itoa(sizeof(char FAR*),buffer,10);
	.line	1863
	pea	#<$a
	pea	#^~~buffer
	pea	#<~~buffer
	pea	#<$4
	jsl	~~k_itoa
;	pos=k_put_draw_text(pos,45,buffer,fcolor,0);
	.line	1864
	pea	#<$0
	pei	<L644+fcolor_0
	pea	#^~~buffer
	pea	#<~~buffer
	pea	#<$2d
	pei	<L645+pos_1
	jsl	~~k_put_draw_text
	sta	<L645+pos_1
;
;
;	pos = 2;
	.line	1867
	lda	#$2
	sta	<L645+pos_1
;	pos=k_put_draw_text(pos,46,"SIZEOF UINT:",fcolor,0);
	.line	1868
	pea	#<$0
	pei	<L644+fcolor_0
	pea	#^L500+159
	pea	#<L500+159
	pea	#<$2e
	pei	<L645+pos_1
	jsl	~~k_put_draw_text
	sta	<L645+pos_1
;	k_itoa(sizeof(unsigned int),buffer,10);
	.line	1869
	pea	#<$a
	pea	#^~~buffer
	pea	#<~~buffer
	pea	#<$2
	jsl	~~k_itoa
;	pos=k_put_draw_text(pos,46,buffer,fcolor,0);
	.line	1870
	pea	#<$0
	pei	<L644+fcolor_0
	pea	#^~~buffer
	pea	#<~~buffer
	pea	#<$2e
	pei	<L645+pos_1
	jsl	~~k_put_draw_text
	sta	<L645+pos_1
;
;	pos = 2;
	.line	1872
	lda	#$2
	sta	<L645+pos_1
;	pos=k_put_draw_text(pos,47,"SIZEOF ULONG:",fcolor,0);
	.line	1873
	pea	#<$0
	pei	<L644+fcolor_0
	pea	#^L500+172
	pea	#<L500+172
	pea	#<$2f
	pei	<L645+pos_1
	jsl	~~k_put_draw_text
	sta	<L645+pos_1
;	k_itoa(sizeof(unsigned long),buffer,10);
	.line	1874
	pea	#<$a
	pea	#^~~buffer
	pea	#<~~buffer
	pea	#<$4
	jsl	~~k_itoa
;	pos=k_put_draw_text(pos,47,buffer,fcolor,0);
	.line	1875
	pea	#<$0
	pei	<L644+fcolor_0
	pea	#^~~buffer
	pea	#<~~buffer
	pea	#<$2f
	pei	<L645+pos_1
	jsl	~~k_put_draw_text
	sta	<L645+pos_1
;
;
;				
;	/*
;	pos = 2;
;	pos=k_put_draw_text(pos,49,"MOUSE X:",fcolor,0);
;	k_itoa(mx,buffer,10);
;	pos=k_put_draw_text(pos,49,buffer,fcolor,0);
;	pos = 2;
;	pos=k_put_draw_text(pos,50,"MOUSE Y:",fcolor,0);
;	k_itoa(my,buffer,10);
;	pos=k_put_draw_text(pos,50,buffer,fcolor,0);
;	pos = 2;
;	pos=k_put_draw_text(pos,51,"MOUSE LEFT:",fcolor,0);
;	k_itoa(mb & 0x0001,buffer,10);
;	pos=k_put_draw_text(pos,51,buffer,fcolor,0);	
;	pos=k_put_draw_text(pos,51," MOUSE MIDDLE:",fcolor,0);
;	k_itoa(mb & 0x0004,buffer,10);
;	pos=k_put_draw_text(pos,51,buffer,fcolor,0);
;	pos=k_put_draw_text(pos,51," MOUSE RIGHT:",fcolor,0);
;	k_itoa(mb & 0x0002,buffer,10);
;	pos=k_put_draw_text(pos,51,buffer,fcolor,0);
;
;	pos = 2;
;	pos=k_put_draw_text(pos,52," KEY INDEX:",fcolor,0);
;	k_itoa(k_get_key_handler(),buffer,10);
;	pos=k_put_draw_text(pos,52,buffer,fcolor,0);
;
;	*/
;}
	.line	1905
L647:
	lda	<L644+2
	sta	<L644+2+2
	lda	<L644+1
	sta	<L644+1+2
	pld
	tsc
	clc
	adc	#L644+2
	tcs
	rtl
	.endblock	1905
L644	equ	37
L645	equ	5
	ends
	efunc
	.endfunc	1905,5,37
	.line	1905
	data
L500:
	db	$56,$65,$72,$73,$69,$6F,$6E,$20,$31,$2E,$30,$2E,$30,$00,$00
	db	$46,$4F,$45,$4E,$49,$58,$20,$43,$32,$35,$36,$20,$56,$45,$52
	db	$53,$49,$4F,$4E,$3A,$00,$46,$50,$47,$41,$20,$56,$45,$52,$53
	db	$49,$4F,$4E,$3A,$00,$2F,$00,$2F,$00,$43,$55,$52,$52,$45,$4E
	db	$54,$20,$43,$4F,$4C,$4F,$52,$3A,$00,$52,$45,$41,$44,$20,$43
	db	$4F,$4C,$4F,$52,$20,$41,$54,$20,$30,$2C,$30,$20,$3A,$00,$53
	db	$49,$5A,$45,$4F,$46,$20,$43,$48,$41,$52,$3A,$00,$53,$49,$5A
	db	$45,$4F,$46,$20,$49,$4E,$54,$3A,$00,$53,$49,$5A,$45,$4F,$46
	db	$20,$4C,$4F,$4E,$47,$3A,$00,$53,$49,$5A,$45,$4F,$46,$20,$43
	db	$48,$41,$52,$2A,$3A,$00,$53,$49,$5A,$45,$4F,$46,$20,$43,$48
	db	$41,$52,$20,$46,$41,$52,$2A,$3A,$00,$53,$49,$5A,$45,$4F,$46
	db	$20,$55,$49,$4E,$54,$3A,$00,$53,$49,$5A,$45,$4F,$46,$20,$55
	db	$4C,$4F,$4E,$47,$3A,$00
	ends
;
;void k_draw_lines(void)
;{
	.line	1907
	.line	1908
	GUI
	xdef	~~k_draw_lines
	func
	.function	1908
~~k_draw_lines:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L649
	tcs
	phd
	tcd
	.block	1908
;	int dx = 0;
;	int dy = 0;
;	int bc = 1;	
;	int dx0 = 0;
;	int dy0 = 0;
;	
;	for(dy=0;dy<480;dy+=5)
dx_1	set	0
dy_1	set	2
bc_1	set	4
dx0_1	set	6
dy0_1	set	8
	.sym	dx,0,5,1,16
	.sym	dy,2,5,1,16
	.sym	bc,4,5,1,16
	.sym	dx0,6,5,1,16
	.sym	dy0,8,5,1,16
	stz	<L650+dx_1
	stz	<L650+dy_1
	lda	#$1
	sta	<L650+bc_1
	stz	<L650+dx0_1
	stz	<L650+dy0_1
	.line	1915
	stz	<L650+dy_1
L10259:
;	{
	.line	1916
;		//if(dx0!=0 && dy0!=0)
;		//	k_draw_line(0,dy0,dx0,479,0);
;		
;		k_draw_line(0,dy,dx,479,bc);
	.line	1920
	pei	<L650+bc_1
	pea	#<$1df
	pei	<L650+dx_1
	pei	<L650+dy_1
	pea	#<$0
	jsl	~~k_draw_line
;
;		dx0 = dx;
	.line	1922
	lda	<L650+dx_1
	sta	<L650+dx0_1
;		dy0 = dy;
	.line	1923
	lda	<L650+dy_1
	sta	<L650+dy0_1
;		
;		dx+=5;
	.line	1925
	clc
	lda	#$5
	adc	<L650+dx_1
	sta	<L650+dx_1
;		bc++;
	.line	1926
	inc	<L650+bc_1
;		if(bc > 15)
	.line	1927
;			bc = 1;
	sec
	lda	#$f
	sbc	<L650+bc_1
	bvs	L652
	eor	#$8000
L652:
	bpl	L653
	brl	L10260
L653:
	.line	1928
	lda	#$1
	sta	<L650+bc_1
;		
;		
;	}
L10260:
	.line	1931
L10257:
	clc
	lda	#$5
	adc	<L650+dy_1
	sta	<L650+dy_1
	sec
	lda	<L650+dy_1
	sbc	#<$1e0
	bvs	L654
	eor	#$8000
L654:
	bmi	L655
	brl	L10259
L655:
L10258:
;
;
;	dx=479;
	.line	1934
	lda	#$1df
	sta	<L650+dx_1
;	bc = 1;
	.line	1935
	lda	#$1
	sta	<L650+bc_1
;	for(dy=479;dy>=0;dy-=5)
	.line	1936
	lda	#$1df
	sta	<L650+dy_1
L10263:
;	{
	.line	1937
;		
;		//if(dx!=480 && dy!=480)
;		//	k_draw_line(640,dy,dx,0,15);
;		
;		k_draw_line(639,dy,dx,0,bc);
	.line	1942
	pei	<L650+bc_1
	pea	#<$0
	pei	<L650+dx_1
	pei	<L650+dy_1
	pea	#<$27f
	jsl	~~k_draw_line
;		
;		dx-=5;
	.line	1944
	clc
	lda	#$fffb
	adc	<L650+dx_1
	sta	<L650+dx_1
;		bc++;
	.line	1945
	inc	<L650+bc_1
;		if(bc > 15)
	.line	1946
;			bc = 1;
	sec
	lda	#$f
	sbc	<L650+bc_1
	bvs	L656
	eor	#$8000
L656:
	bpl	L657
	brl	L10264
L657:
	.line	1947
	lda	#$1
	sta	<L650+bc_1
;	}
L10264:
	.line	1948
L10261:
	clc
	lda	#$fffb
	adc	<L650+dy_1
	sta	<L650+dy_1
	lda	<L650+dy_1
	bmi	L658
	brl	L10263
L658:
L10262:
;	
;	/*
;	for(x=0;x<640;x+=10)
;	{
;		
;		for(y=0;y<480;y+=10)
;		{
;			if(x!=0 && y!=0)
;				k_draw_line(x,y,640 - x,480 - y,0);
;			k_draw_line(x,y,640 - x,480 - y,15);
;		}
;		
;	}
;	*/
;}
	.line	1963
L659:
	pld
	tsc
	clc
	adc	#L649
	tcs
	rtl
	.endblock	1963
L649	equ	10
L650	equ	1
	ends
	efunc
	.endfunc	1963,1,10
	.line	1963
;
;void k_draw_fontset(void)
;{
	.line	1965
	.line	1966
	GUI
	xdef	~~k_draw_fontset
	func
	.function	1966
~~k_draw_fontset:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L660
	tcs
	phd
	tcd
	.block	1966
;	int bx = 0;
;	int by = 29; 
;	int bc = 15;
;	char bf = 1;
;	
;	for(bf=0;bf<64;bf++)
bx_1	set	0
by_1	set	2
bc_1	set	4
bf_1	set	6
	.sym	bx,0,5,1,16
	.sym	by,2,5,1,16
	.sym	bc,4,5,1,16
	.sym	bf,6,14,1,8
	stz	<L661+bx_1
	lda	#$1d
	sta	<L661+by_1
	lda	#$f
	sta	<L661+bc_1
	sep	#$20
	longa	off
	lda	#$1
	sta	<L661+bf_1
	rep	#$20
	longa	on
	.line	1972
	sep	#$20
	longa	off
	stz	<L661+bf_1
	rep	#$20
	longa	on
	brl	L10268
L10267:
;	{
	.line	1973
;		k_draw_char((char)bf*1,bx,by,bc);
	.line	1974
	pei	<L661+bc_1
	pei	<L661+by_1
	pei	<L661+bx_1
	lda	<L661+bf_1
	and	#$ff
	pha
	jsl	~~k_draw_char
;		k_draw_char((char)bf+64,bx,by + 1,bc);
	.line	1975
	pei	<L661+bc_1
	lda	<L661+by_1
	ina
	pha
	pei	<L661+bx_1
	lda	<L661+bf_1
	and	#$ff
	sta	<R0
	clc
	lda	#$40
	adc	<R0
	pha
	jsl	~~k_draw_char
;		k_draw_char((char)bf+128,bx,by + 2,bc);
	.line	1976
	pei	<L661+bc_1
	clc
	lda	#$2
	adc	<L661+by_1
	pha
	pei	<L661+bx_1
	lda	<L661+bf_1
	and	#$ff
	sta	<R0
	clc
	lda	#$80
	adc	<R0
	pha
	jsl	~~k_draw_char
;		k_draw_char((char)bf+192,bx,by + 3,bc);
	.line	1977
	pei	<L661+bc_1
	clc
	lda	#$3
	adc	<L661+by_1
	pha
	pei	<L661+bx_1
	lda	<L661+bf_1
	and	#$ff
	sta	<R0
	clc
	lda	#$c0
	adc	<R0
	pha
	jsl	~~k_draw_char
;
;
;		if(bc > 15)
	.line	1980
;			bc = 1;
	sec
	lda	#$f
	sbc	<L661+bc_1
	bvs	L663
	eor	#$8000
L663:
	bpl	L664
	brl	L10269
L664:
	.line	1981
	lda	#$1
	sta	<L661+bc_1
;		
;		bx++;
L10269:
	.line	1983
	inc	<L661+bx_1
;	}
	.line	1984
L10265:
	sep	#$20
	longa	off
	inc	<L661+bf_1
	rep	#$20
	longa	on
L10268:
	sep	#$20
	longa	off
	lda	<L661+bf_1
	cmp	#<$40
	rep	#$20
	longa	on
	bcs	L665
	brl	L10267
L665:
L10266:
;
;}
	.line	1986
L666:
	pld
	tsc
	clc
	adc	#L660
	tcs
	rtl
	.endblock	1986
L660	equ	11
L661	equ	5
	ends
	efunc
	.endfunc	1986,5,11
	.line	1986
;
;
;void k_fill_bank(int bankId,char fcolor)
;{
	.line	1989
	.line	1990
	GUI
	xdef	~~k_fill_bank
	func
	.function	1990
~~k_fill_bank:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L667
	tcs
	phd
	tcd
bankId_0	set	4
fcolor_0	set	6
	.block	1990
;	long fill = 0xffffL;
;	
;	if(bankId == 0)
fill_1	set	0
	.sym	fill,0,7,1,32
	.sym	bankId,4,5,6,16
	.sym	fcolor,6,14,6,8
	lda	#$ffff
	sta	<L668+fill_1
	lda	#$0
	sta	<L668+fill_1+2
	.line	1993
;	{
	lda	<L667+bankId_0
	beq	L670
	brl	L10270
L670:
	.line	1994
;		memset((unsigned char FAR *)BITMAP_BANK_0,fcolor + 0,fill);
	.line	1995
	pei	<L668+fill_1
	lda	<L667+fcolor_0
	and	#$ff
	pha
	pea	#^$b00000
	pea	#<$b00000
	jsl	~~memset
;		((unsigned char FAR *)BITMAP_BANK_0)[fill] = fcolor;
	.line	1996
	clc
	lda	#$0
	adc	<L668+fill_1
	sta	<R0
	lda	#$b0
	adc	<L668+fill_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	<L667+fcolor_0
	sta	[<R0]
	rep	#$20
	longa	on
;	}
	.line	1997
;	else if(bankId == 1)
	brl	L10271
L10270:
	.line	1998
;	{
	lda	<L667+bankId_0
	cmp	#<$1
	beq	L671
	brl	L10272
L671:
	.line	1999
;		memset((unsigned char FAR *)BITMAP_BANK_1,fcolor + 0,fill);
	.line	2000
	pei	<L668+fill_1
	lda	<L667+fcolor_0
	and	#$ff
	pha
	pea	#^$b10000
	pea	#<$b10000
	jsl	~~memset
;		((unsigned char FAR *)BITMAP_BANK_1)[fill] = fcolor;
	.line	2001
	clc
	lda	#$0
	adc	<L668+fill_1
	sta	<R0
	lda	#$b1
	adc	<L668+fill_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	<L667+fcolor_0
	sta	[<R0]
	rep	#$20
	longa	on
;	}
	.line	2002
;	else if(bankId == 2)
	brl	L10273
L10272:
	.line	2003
;	{
	lda	<L667+bankId_0
	cmp	#<$2
	beq	L672
	brl	L10274
L672:
	.line	2004
;		memset((unsigned char FAR *)BITMAP_BANK_2,fcolor + 0,fill);
	.line	2005
	pei	<L668+fill_1
	lda	<L667+fcolor_0
	and	#$ff
	pha
	pea	#^$b20000
	pea	#<$b20000
	jsl	~~memset
;		((unsigned char FAR *)BITMAP_BANK_2)[fill] = fcolor;
	.line	2006
	clc
	lda	#$0
	adc	<L668+fill_1
	sta	<R0
	lda	#$b2
	adc	<L668+fill_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	<L667+fcolor_0
	sta	[<R0]
	rep	#$20
	longa	on
;	}
	.line	2007
;	else if(bankId == 3)
	brl	L10275
L10274:
	.line	2008
;	{
	lda	<L667+bankId_0
	cmp	#<$3
	beq	L673
	brl	L10276
L673:
	.line	2009
;		memset((unsigned char FAR *)BITMAP_BANK_3,fcolor + 0,fill);
	.line	2010
	pei	<L668+fill_1
	lda	<L667+fcolor_0
	and	#$ff
	pha
	pea	#^$b30000
	pea	#<$b30000
	jsl	~~memset
;		((unsigned char FAR *)BITMAP_BANK_3)[fill] = fcolor;
	.line	2011
	clc
	lda	#$0
	adc	<L668+fill_1
	sta	<R0
	lda	#$b3
	adc	<L668+fill_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	<L667+fcolor_0
	sta	[<R0]
	rep	#$20
	longa	on
;	}
	.line	2012
;	else if(bankId == 4)
	brl	L10277
L10276:
	.line	2013
;	{
	lda	<L667+bankId_0
	cmp	#<$4
	beq	L674
	brl	L10278
L674:
	.line	2014
;		memset((unsigned char FAR *)BITMAP_BANK_4,fcolor + 0,fill);
	.line	2015
	pei	<L668+fill_1
	lda	<L667+fcolor_0
	and	#$ff
	pha
	pea	#^$b40000
	pea	#<$b40000
	jsl	~~memset
;		((unsigned char FAR *)BITMAP_BANK_4)[fill] = fcolor;
	.line	2016
	clc
	lda	#$0
	adc	<L668+fill_1
	sta	<R0
	lda	#$b4
	adc	<L668+fill_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	<L667+fcolor_0
	sta	[<R0]
	rep	#$20
	longa	on
;	}
	.line	2017
;	else if(bankId == 5)
	brl	L10279
L10278:
	.line	2018
;	{
	lda	<L667+bankId_0
	cmp	#<$5
	beq	L675
	brl	L10280
L675:
	.line	2019
;		memset((unsigned char FAR *)BITMAP_BANK_5,fcolor + 0,fill);
	.line	2020
	pei	<L668+fill_1
	lda	<L667+fcolor_0
	and	#$ff
	pha
	pea	#^$b50000
	pea	#<$b50000
	jsl	~~memset
;		((unsigned char FAR *)BITMAP_BANK_5)[fill] = fcolor;
	.line	2021
	clc
	lda	#$0
	adc	<L668+fill_1
	sta	<R0
	lda	#$b5
	adc	<L668+fill_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	<L667+fcolor_0
	sta	[<R0]
	rep	#$20
	longa	on
;	}
	.line	2022
;
;}
L10280:
L10279:
L10277:
L10275:
L10273:
L10271:
	.line	2024
L676:
	lda	<L667+2
	sta	<L667+2+4
	lda	<L667+1
	sta	<L667+1+4
	pld
	tsc
	clc
	adc	#L667+4
	tcs
	rtl
	.endblock	2024
L667	equ	8
L668	equ	5
	ends
	efunc
	.endfunc	2024,5,8
	.line	2024
;
;
;
;
;void k_fill_line(int cx,int cy,int width,int color)
;{
	.line	2029
	.line	2030
	GUI
	xdef	~~k_fill_line
	func
	.function	2030
~~k_fill_line:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L677
	tcs
	phd
	tcd
cx_0	set	4
cy_0	set	6
width_0	set	8
color_0	set	10
	.block	2030
;
;	long locStart = (long)(( ((long)cy) * 640L) + ((long)cx) );
;	memset(&(((unsigned char FAR *)BITMAP_BANK_0)[locStart]),color,width);
locStart_1	set	0
	.sym	locStart,0,7,1,32
	.sym	cx,4,5,6,16
	.sym	cy,6,5,6,16
	.sym	width,8,5,6,16
	.sym	color,10,5,6,16
	ldy	#$0
	lda	<L677+cx_0
	bpl	L680
	dey
L680:
	sta	<R0
	sty	<R0+2
	ldy	#$0
	lda	<L677+cy_0
	bpl	L681
	dey
L681:
	sta	<R1
	sty	<R1+2
	pea	#^$280
	pea	#<$280
	pei	<R1+2
	pei	<R1
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R1
	stx	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<L678+locStart_1
	lda	<R1+2
	adc	<R0+2
	sta	<L678+locStart_1+2
	.line	2033
	pei	<L677+width_0
	pei	<L677+color_0
	clc
	lda	#$0
	adc	<L678+locStart_1
	sta	<R0
	lda	#$b0
	adc	<L678+locStart_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~memset
;}
	.line	2034
L682:
	lda	<L677+2
	sta	<L677+2+8
	lda	<L677+1
	sta	<L677+1+8
	pld
	tsc
	clc
	adc	#L677+8
	tcs
	rtl
	.endblock	2034
L677	equ	12
L678	equ	9
	ends
	efunc
	.endfunc	2034,9,12
	.line	2034
;
;void k_vdraw_filled_rect(int cx,int cy,int height,int width,int color)
;{
	.line	2036
	.line	2037
	GUI
	xdef	~~k_vdraw_filled_rect
	func
	.function	2037
~~k_vdraw_filled_rect:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L683
	tcs
	phd
	tcd
cx_0	set	4
cy_0	set	6
height_0	set	8
width_0	set	10
color_0	set	12
	.block	2037
;	int x = 0;
;	int y = 0;
;	int dx = cx + width;
;	int dy = cy + height;
;	
;	if(dx > 639)
x_1	set	0
y_1	set	2
dx_1	set	4
dy_1	set	6
	.sym	x,0,5,1,16
	.sym	y,2,5,1,16
	.sym	dx,4,5,1,16
	.sym	dy,6,5,1,16
	.sym	cx,4,5,6,16
	.sym	cy,6,5,6,16
	.sym	height,8,5,6,16
	.sym	width,10,5,6,16
	.sym	color,12,5,6,16
	stz	<L684+x_1
	stz	<L684+y_1
	clc
	lda	<L683+cx_0
	adc	<L683+width_0
	sta	<L684+dx_1
	clc
	lda	<L683+cy_0
	adc	<L683+height_0
	sta	<L684+dy_1
	.line	2043
;		dx = 639;
	sec
	lda	#$27f
	sbc	<L684+dx_1
	bvs	L686
	eor	#$8000
L686:
	bpl	L687
	brl	L10281
L687:
	.line	2044
	lda	#$27f
	sta	<L684+dx_1
;	if(dy > 479)
L10281:
	.line	2045
;		dy = 479;
	sec
	lda	#$1df
	sbc	<L684+dy_1
	bvs	L688
	eor	#$8000
L688:
	bpl	L689
	brl	L10282
L689:
	.line	2046
	lda	#$1df
	sta	<L684+dy_1
;	
;	for(y=cy;y<dy;y++)
L10282:
	.line	2048
	lda	<L683+cy_0
	sta	<L684+y_1
	brl	L10286
L10285:
;	{
	.line	2049
;		long locStart = (long)(( ((long)y) * 640L) + ((long)cx) );
;		//memset(&(((unsigned char FAR *)SHADOW_BANK_0)[locStart]),color,dx - cx);
;	}
	.block	2052
locStart_2	set	8
	.sym	locStart,8,7,1,32
	ldy	#$0
	lda	<L683+cx_0
	bpl	L691
	dey
L691:
	sta	<R0
	sty	<R0+2
	ldy	#$0
	lda	<L684+y_1
	bpl	L692
	dey
L692:
	sta	<R1
	sty	<R1+2
	pea	#^$280
	pea	#<$280
	pei	<R1+2
	pei	<R1
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R1
	stx	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<L684+locStart_2
	lda	<R1+2
	adc	<R0+2
	sta	<L684+locStart_2+2
	.endblock	2052
	.line	2052
L10283:
	inc	<L684+y_1
L10286:
	sec
	lda	<L684+y_1
	sbc	<L684+dy_1
	bvs	L693
	eor	#$8000
L693:
	bmi	L694
	brl	L10285
L694:
L10284:
;}
	.line	2053
L695:
	lda	<L683+2
	sta	<L683+2+10
	lda	<L683+1
	sta	<L683+1+10
	pld
	tsc
	clc
	adc	#L683+10
	tcs
	rtl
	.endblock	2053
L683	equ	20
L684	equ	9
	ends
	efunc
	.endfunc	2053,9,20
	.line	2053
;
;void k_draw_filled_rect(int cx,int cy,int height,int width,int color)
;{
	.line	2055
	.line	2056
	GUI
	xdef	~~k_draw_filled_rect
	func
	.function	2056
~~k_draw_filled_rect:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L696
	tcs
	phd
	tcd
cx_0	set	4
cy_0	set	6
height_0	set	8
width_0	set	10
color_0	set	12
	.block	2056
;	int x = 0;
;	int y = 0;
;	int dx = cx + width;
;	int dy = cy + height;
;	
;	if(dx > 639)
x_1	set	0
y_1	set	2
dx_1	set	4
dy_1	set	6
	.sym	x,0,5,1,16
	.sym	y,2,5,1,16
	.sym	dx,4,5,1,16
	.sym	dy,6,5,1,16
	.sym	cx,4,5,6,16
	.sym	cy,6,5,6,16
	.sym	height,8,5,6,16
	.sym	width,10,5,6,16
	.sym	color,12,5,6,16
	stz	<L697+x_1
	stz	<L697+y_1
	clc
	lda	<L696+cx_0
	adc	<L696+width_0
	sta	<L697+dx_1
	clc
	lda	<L696+cy_0
	adc	<L696+height_0
	sta	<L697+dy_1
	.line	2062
;		dx = 639;
	sec
	lda	#$27f
	sbc	<L697+dx_1
	bvs	L699
	eor	#$8000
L699:
	bpl	L700
	brl	L10287
L700:
	.line	2063
	lda	#$27f
	sta	<L697+dx_1
;	if(dy > 479)
L10287:
	.line	2064
;		dy = 479;
	sec
	lda	#$1df
	sbc	<L697+dy_1
	bvs	L701
	eor	#$8000
L701:
	bpl	L702
	brl	L10288
L702:
	.line	2065
	lda	#$1df
	sta	<L697+dy_1
;	
;	for(y=cy;y<dy;y++)
L10288:
	.line	2067
	lda	<L696+cy_0
	sta	<L697+y_1
	brl	L10292
L10291:
;	{
	.line	2068
;		long locStart = (long)(( ((long)y) * 640L) + ((long)cx) );
;		//memset(&(((unsigned char FAR *)BITMAP_BANK_0)[locStart]),color,dx - cx);
;	}
	.block	2071
locStart_2	set	8
	.sym	locStart,8,7,1,32
	ldy	#$0
	lda	<L696+cx_0
	bpl	L704
	dey
L704:
	sta	<R0
	sty	<R0+2
	ldy	#$0
	lda	<L697+y_1
	bpl	L705
	dey
L705:
	sta	<R1
	sty	<R1+2
	pea	#^$280
	pea	#<$280
	pei	<R1+2
	pei	<R1
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R1
	stx	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<L697+locStart_2
	lda	<R1+2
	adc	<R0+2
	sta	<L697+locStart_2+2
	.endblock	2071
	.line	2071
L10289:
	inc	<L697+y_1
L10292:
	sec
	lda	<L697+y_1
	sbc	<L697+dy_1
	bvs	L706
	eor	#$8000
L706:
	bmi	L707
	brl	L10291
L707:
L10290:
;}
	.line	2072
L708:
	lda	<L696+2
	sta	<L696+2+10
	lda	<L696+1
	sta	<L696+1+10
	pld
	tsc
	clc
	adc	#L696+10
	tcs
	rtl
	.endblock	2072
L696	equ	20
L697	equ	9
	ends
	efunc
	.endfunc	2072,9,20
	.line	2072
;
;
;PWINDOW k_create_ui_window_class(int cx,int cy,int height,int width,LPCHAR title,LPCHAR className,FXWndProc wndProc)
;{
	.line	2075
	.line	2076
	GUI
	xdef	~~k_create_ui_window_class
	func
	.function	2076
~~k_create_ui_window_class:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L709
	tcs
	phd
	tcd
cx_0	set	4
cy_0	set	6
height_0	set	8
width_0	set	10
title_0	set	12
className_0	set	16
wndProc_0	set	20
	.block	2076
;	PWINDOW pWin = NULL;
;
;	if(className && title)
pWin_1	set	0
	.sym	pWin,0,138,1,32,30
	.sym	cx,4,5,6,16
	.sym	cy,6,5,6,16
	.sym	height,8,5,6,16
	.sym	width,10,5,6,16
	.sym	title,12,142,6,32
	.sym	className,16,142,6,32
	.sym	wndProc,20,654,6,32
	stz	<L710+pWin_1
	stz	<L710+pWin_1+2
	.line	2079
;	{
	lda	<L709+className_0
	ora	<L709+className_0+2
	bne	L712
	brl	L10293
L712:
	lda	<L709+title_0
	ora	<L709+title_0+2
	bne	L713
	brl	L10293
L713:
	.line	2080
;		pWin = (PWINDOW)k_mem_allocate_heap(sizeof(WINDOW));
	.line	2081
	pea	#<$15f
	jsl	~~k_mem_allocate_heap
	sta	<L710+pWin_1
	stx	<L710+pWin_1+2
;		if(pWin)
	.line	2082
;		{
	lda	<L710+pWin_1
	ora	<L710+pWin_1+2
	bne	L714
	brl	L10294
L714:
	.line	2083
;			memset(pWin,0,sizeof(WINDOW));
	.line	2084
	pea	#<$15f
	pea	#<$0
	pei	<L710+pWin_1+2
	pei	<L710+pWin_1
	jsl	~~memset
;
;			strcpy(pWin->win_title,title);
	.line	2086
	pei	<L709+title_0+2
	pei	<L709+title_0
	clc
	lda	#$d4
	adc	<L710+pWin_1
	sta	<R0
	lda	#$0
	adc	<L710+pWin_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~strcpy
;			strcpy(pWin->win_class,className);
	.line	2087
	pei	<L709+className_0+2
	pei	<L709+className_0
	clc
	lda	#$f6
	adc	<L710+pWin_1
	sta	<R0
	lda	#$0
	adc	<L710+pWin_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~strcpy
;			pWin->win_x = cx;
	.line	2088
	lda	<L709+cx_0
	ldy	#$8
	sta	[<L710+pWin_1],Y
;			pWin->win_y = cy;
	.line	2089
	lda	<L709+cy_0
	ldy	#$a
	sta	[<L710+pWin_1],Y
;			pWin->win_width  = width;
	.line	2090
	lda	<L709+width_0
	ldy	#$c
	sta	[<L710+pWin_1],Y
;			pWin->win_height = height;
	.line	2091
	lda	<L709+height_0
	ldy	#$e
	sta	[<L710+pWin_1],Y
;			pWin->clickable = k_mem_allocate_heap(sizeof(CLICKABLE));
	.line	2092
	pea	#<$b
	jsl	~~k_mem_allocate_heap
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$d0
	sta	[<L710+pWin_1],Y
	lda	<R0+2
	ldy	#$d2
	sta	[<L710+pWin_1],Y
;			if(pWin->clickable)
	.line	2093
;			{
	ldy	#$d0
	lda	[<L710+pWin_1],Y
	ldy	#$d2
	ora	[<L710+pWin_1],Y
	bne	L715
	brl	L10295
L715:
	.line	2094
;				((PCLICKABLE)pWin->clickable)->area.x = cx;
	.line	2095
	ldy	#$d0
	lda	[<L710+pWin_1],Y
	sta	<R0
	ldy	#$d2
	lda	[<L710+pWin_1],Y
	sta	<R0+2
	lda	<L709+cx_0
	sta	[<R0]
;				((PCLICKABLE)pWin->clickable)->area.y = cy;
	.line	2096
	ldy	#$d0
	lda	[<L710+pWin_1],Y
	sta	<R0
	ldy	#$d2
	lda	[<L710+pWin_1],Y
	sta	<R0+2
	lda	<L709+cy_0
	ldy	#$2
	sta	[<R0],Y
;				((PCLICKABLE)pWin->clickable)->area.height = height;
	.line	2097
	ldy	#$d0
	lda	[<L710+pWin_1],Y
	sta	<R0
	ldy	#$d2
	lda	[<L710+pWin_1],Y
	sta	<R0+2
	lda	<L709+height_0
	ldy	#$6
	sta	[<R0],Y
;				((PCLICKABLE)pWin->clickable)->area.width = width;
	.line	2098
	ldy	#$d0
	lda	[<L710+pWin_1],Y
	sta	<R0
	ldy	#$d2
	lda	[<L710+pWin_1],Y
	sta	<R0+2
	lda	<L709+width_0
	ldy	#$4
	sta	[<R0],Y
;			}
	.line	2099
;			//pWin->WndProc = wndProc;
;		}
L10295:
	.line	2101
;	}
L10294:
	.line	2102
;
;	return pWin;
L10293:
	.line	2104
	ldx	<L710+pWin_1+2
	lda	<L710+pWin_1
L716:
	tay
	lda	<L709+2
	sta	<L709+2+20
	lda	<L709+1
	sta	<L709+1+20
	pld
	tsc
	clc
	adc	#L709+20
	tcs
	tya
	rtl
;}
	.line	2105
	.endblock	2105
L709	equ	8
L710	equ	5
	ends
	efunc
	.endfunc	2105,5,8
	.line	2105
;
;
;void k_draw_nonclient_area(PRECT wndRect,PRECT clientRect,UINT style,LPCSTR title,int color,int bgcolor)
;{
	.line	2108
	.line	2109
	GUI
	xdef	~~k_draw_nonclient_area
	func
	.function	2109
~~k_draw_nonclient_area:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L717
	tcs
	phd
	tcd
wndRect_0	set	4
clientRect_0	set	8
style_0	set	12
title_0	set	14
color_0	set	18
bgcolor_0	set	20
	.block	2109
;	//PWINDOW pWin,ULONG style,
;
;	int cx = wndRect->x;
;	int cy = wndRect->x;
;	int height = wndRect->height;
;	int width = wndRect->width;
;
;	FONTMETRIC metric;
;
;	int i = 0;
;	int odd = 1;
;	int borderColor = 0;
;	int borderTitle = 0;
;	int borderWidth = 0;
;
;	int titleOffsetX = 0;
;	int titleOffsetY = 0;
;	int titleScaler = 0;
;
;	int clientOffsetX = 0;
;	int clientOffsetY = 0;
;
;	int currX = 0;
;	int currY = 0;
;
;	int endX = 0;
;
;	int maxminPos = 0;
;
;
;	int fillOffset = 2;  // correct the fill coordinates so the borders are the same size
;
;
;	k_debug_integer("k_vdraw_ui_window:cx:",cx);
cx_1	set	0
cy_1	set	2
height_1	set	4
width_1	set	6
metric_1	set	8
i_1	set	12
odd_1	set	14
borderColor_1	set	16
borderTitle_1	set	18
borderWidth_1	set	20
titleOffsetX_1	set	22
titleOffsetY_1	set	24
titleScaler_1	set	26
clientOffsetX_1	set	28
clientOffsetY_1	set	30
currX_1	set	32
currY_1	set	34
endX_1	set	36
maxminPos_1	set	38
fillOffset_1	set	40
	.sym	cx,0,5,1,16
	.sym	cy,2,5,1,16
	.sym	height,4,5,1,16
	.sym	width,6,5,1,16
	.sym	metric,8,10,1,32,32
	.sym	i,12,5,1,16
	.sym	odd,14,5,1,16
	.sym	borderColor,16,5,1,16
	.sym	borderTitle,18,5,1,16
	.sym	borderWidth,20,5,1,16
	.sym	titleOffsetX,22,5,1,16
	.sym	titleOffsetY,24,5,1,16
	.sym	titleScaler,26,5,1,16
	.sym	clientOffsetX,28,5,1,16
	.sym	clientOffsetY,30,5,1,16
	.sym	currX,32,5,1,16
	.sym	currY,34,5,1,16
	.sym	endX,36,5,1,16
	.sym	maxminPos,38,5,1,16
	.sym	fillOffset,40,5,1,16
	.sym	wndRect,4,138,6,32,25
	.sym	clientRect,8,138,6,32,25
	.sym	style,12,16,6,16
	.sym	title,14,142,6,32
	.sym	color,18,5,6,16
	.sym	bgcolor,20,5,6,16
	lda	[<L717+wndRect_0]
	sta	<L718+cx_1
	lda	[<L717+wndRect_0]
	sta	<L718+cy_1
	ldy	#$6
	lda	[<L717+wndRect_0],Y
	sta	<L718+height_1
	ldy	#$4
	lda	[<L717+wndRect_0],Y
	sta	<L718+width_1
	stz	<L718+i_1
	lda	#$1
	sta	<L718+odd_1
	stz	<L718+borderColor_1
	stz	<L718+borderTitle_1
	stz	<L718+borderWidth_1
	stz	<L718+titleOffsetX_1
	stz	<L718+titleOffsetY_1
	stz	<L718+titleScaler_1
	stz	<L718+clientOffsetX_1
	stz	<L718+clientOffsetY_1
	stz	<L718+currX_1
	stz	<L718+currY_1
	stz	<L718+endX_1
	stz	<L718+maxminPos_1
	lda	#$2
	sta	<L718+fillOffset_1
	.line	2143
	pei	<L718+cx_1
	pea	#^L648
	pea	#<L648
	jsl	~~k_debug_integer
;	k_debug_integer("k_vdraw_ui_window:cy:",cy);
	.line	2144
	pei	<L718+cy_1
	pea	#^L648+22
	pea	#<L648+22
	jsl	~~k_debug_integer
;	k_debug_integer("k_vdraw_ui_window:width:",width);
	.line	2145
	pei	<L718+width_1
	pea	#^L648+44
	pea	#<L648+44
	jsl	~~k_debug_integer
;	k_debug_integer("k_vdraw_ui_window:height:",height);
	.line	2146
	pei	<L718+height_1
	pea	#^L648+69
	pea	#<L648+69
	jsl	~~k_debug_integer
;
;	titleOffsetX = cx+2;
	.line	2148
	clc
	lda	#$2
	adc	<L718+cx_1
	sta	<L718+titleOffsetX_1
;	titleOffsetY = cy+1;
	.line	2149
	lda	<L718+cy_1
	ina
	sta	<L718+titleOffsetY_1
;
;	//k_debug_strings("k_vdraw_ui_window:","enter");
;
;	if(style & FXWS_VISIBLE != FXWS_VISIBLE)
	.line	2153
;	{
	brl	L10296
	.line	2154
;		k_debug_strings("k_vdraw_ui_window::NOT RENDERING:",(LPCHAR)title);
	.line	2155
	pei	<L717+title_0+2
	pei	<L717+title_0
	pea	#^L648+95
	pea	#<L648+95
	jsl	~~k_debug_strings
;		return;
	.line	2156
L720:
	lda	<L717+2
	sta	<L717+2+18
	lda	<L717+1
	sta	<L717+1+18
	pld
	tsc
	clc
	adc	#L717+18
	tcs
	rtl
;	}
	.line	2157
;
;	//k_debug_strings("k_vdraw_ui_window::RENDERING:",title);
;
;	if(style & FXWS_THICKFRAME)
L10296:
	.line	2161
;	{
	lda	<L717+style_0
	sta	<R0
	stz	<R0+2
	lda	<R0+2
	and	#^$20000
	bne	L721
	brl	L10297
L721:
	.line	2162
;		borderWidth = 2;
	.line	2163
	lda	#$2
	sta	<L718+borderWidth_1
;	}
	.line	2164
;	else if(style & FXWS_BORDER)
	brl	L10298
L10297:
	.line	2165
;	{
	lda	<L717+style_0
	sta	<R0
	stz	<R0+2
	lda	<R0+2
	and	#^$10000
	bne	L722
	brl	L10299
L722:
	.line	2166
;		borderWidth = 1;
	.line	2167
	lda	#$1
	sta	<L718+borderWidth_1
;	}
	.line	2168
;	else if(style & FXWS_DLGFRAME)
	brl	L10300
L10299:
	.line	2169
;	{
	lda	<L717+style_0
	sta	<R0
	stz	<R0+2
	lda	<R0+2
	and	#^$40000
	bne	L723
	brl	L10301
L723:
	.line	2170
;		borderWidth = 4;
	.line	2171
	lda	#$4
	sta	<L718+borderWidth_1
;	}
	.line	2172
;
;	if( ((style & FXWS_CAPTION) == FXWS_CAPTION) || (style & FXWS_SYSMENU) || (style & FXWS_MINIMIZEBOX) || (style & FXWS_MAXIMIZEBOX))
L10301:
L10300:
L10298:
	.line	2174
;	{
	lda	<L717+style_0
	and	#<$4
	sta	<R0
	lda	<R0
	cmp	#<$4
	bne	L725
	brl	L724
L725:
	lda	<L717+style_0
	and	#<$8
	beq	L726
	brl	L724
L726:
	lda	<L717+style_0
	and	#<$20
	beq	L727
	brl	L724
L727:
	lda	<L717+style_0
	and	#<$10
	bne	L728
	brl	L10302
L728:
L724:
	.line	2175
;		borderTitle = 10;
	.line	2176
	lda	#$a
	sta	<L718+borderTitle_1
;	}
	.line	2177
;
;	clientOffsetX = cx + borderWidth;
L10302:
	.line	2179
	clc
	lda	<L718+cx_1
	adc	<L718+borderWidth_1
	sta	<L718+clientOffsetX_1
;
;	if(borderTitle)
	.line	2181
;		clientOffsetY = cy + borderTitle;
	lda	<L718+borderTitle_1
	bne	L729
	brl	L10303
L729:
	.line	2182
	clc
	lda	<L718+cy_1
	adc	<L718+borderTitle_1
	sta	<L718+clientOffsetY_1
;	else
	brl	L10304
L10303:
;		clientOffsetY = cy + borderWidth;
	.line	2184
	clc
	lda	<L718+cy_1
	adc	<L718+borderWidth_1
	sta	<L718+clientOffsetY_1
L10304:
;
;	currX = clientOffsetX;
	.line	2186
	lda	<L718+clientOffsetX_1
	sta	<L718+currX_1
;	currY = clientOffsetY;
	.line	2187
	lda	<L718+clientOffsetY_1
	sta	<L718+currY_1
;
;	endX = width + cx - borderWidth;
	.line	2189
	clc
	lda	<L718+width_1
	adc	<L718+cx_1
	sta	<R0
	sec
	lda	<R0
	sbc	<L718+borderWidth_1
	sta	<L718+endX_1
;	maxminPos = 0;
	.line	2190
	stz	<L718+maxminPos_1
;
;
;	/*
;	k_vdma_fill_rect(cx,cy,width,height,color);
;	//k_delay(50);
;
;	k_vdma_fill_rect(cx + borderWidth,
;			         cy + (borderTitle + borderWidth),
;					 //width - borderWidth - borderWidth + 1,
;					 //height - borderTitle - borderWidth + 1,
;					 width  - (borderWidth + fillOffset),
;					 height - (borderTitle + borderWidth + fillOffset),
;					 bgcolor);
;	*/
;
;	//k_debug_integer("k_vdraw_ui_window:cx:",cx);
;	//k_debug_integer("k_vdraw_ui_window:cy:",cy);
;	//k_debug_integer("k_vdraw_ui_window:width:",width);
;	//k_debug_integer("k_vdraw_ui_window:height:",height);
;
;	k_vdma_fill_rect(cx,cy,width,height,bgcolor);
	.line	2211
	pei	<L717+bgcolor_0
	pei	<L718+height_1
	pei	<L718+width_1
	ldy	#$0
	lda	<L718+cy_1
	bpl	L730
	dey
L730:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	lda	<L718+cx_1
	bpl	L731
	dey
L731:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect
;	borderColor = color;
	.line	2212
	lda	<L717+color_0
	sta	<L718+borderColor_1
;	for(i=0;i<borderWidth;i++)
	.line	2213
	stz	<L718+i_1
	brl	L10308
L10307:
;	{
	.line	2214
;		if(borderWidth > 2)
	.line	2215
;		{
	sec
	lda	#$2
	sbc	<L718+borderWidth_1
	bvs	L732
	eor	#$8000
L732:
	bpl	L733
	brl	L10309
L733:
	.line	2216
;			borderColor = color;
	.line	2217
	lda	<L717+color_0
	sta	<L718+borderColor_1
;			odd=!odd;
	.line	2218
	stz	<R0
	lda	<L718+odd_1
	beq	L735
	brl	L734
L735:
	inc	<R0
L734:
	lda	<R0
	sta	<L718+odd_1
;			if(odd)
	.line	2219
;			{
	lda	<L718+odd_1
	bne	L736
	brl	L10310
L736:
	.line	2220
;				borderColor = 0;
	.line	2221
	stz	<L718+borderColor_1
;			}
	.line	2222
;		}
L10310:
	.line	2223
;
;		k_draw_rect_slow(cx + i + 0,
L10309:
	.line	2225
;						 cy + i + 0,
;						 cx + width  - 0 - i,
;						 cy + height - 0 - i,
;						 borderColor);
	pei	<L718+borderColor_1
	clc
	lda	<L718+cy_1
	adc	<L718+height_1
	sta	<R0
	sec
	lda	<R0
	sbc	<L718+i_1
	pha
	clc
	lda	<L718+cx_1
	adc	<L718+width_1
	sta	<R0
	sec
	lda	<R0
	sbc	<L718+i_1
	pha
	clc
	lda	<L718+cy_1
	adc	<L718+i_1
	pha
	clc
	lda	<L718+cx_1
	adc	<L718+i_1
	pha
	jsl	~~k_draw_rect_slow
;
;	}
	.line	2231
L10305:
	inc	<L718+i_1
L10308:
	sec
	lda	<L718+i_1
	sbc	<L718+borderWidth_1
	bvs	L737
	eor	#$8000
L737:
	bmi	L738
	brl	L10307
L738:
L10306:
;
;
;
;	if(borderTitle)
	.line	2235
;	{
	lda	<L718+borderTitle_1
	bne	L739
	brl	L10311
L739:
	.line	2236
;		k_vdma_fill_rect(cx,cy,width,borderTitle,color);
	.line	2237
	pei	<L717+color_0
	pei	<L718+borderTitle_1
	pei	<L718+width_1
	ldy	#$0
	lda	<L718+cy_1
	bpl	L740
	dey
L740:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	lda	<L718+cx_1
	bpl	L741
	dey
L741:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect
;	}
	.line	2238
;
;	k_get_font_metrics(&metric);
L10311:
	.line	2240
	pea	#0
	clc
	tdc
	adc	#<L718+metric_1
	pha
	jsl	~~k_get_font_metrics
;
;
;	//title = strupr(title);
;
;	//FXWS_OVERLAPPED | FXWS_CAPTION | FXWS_SYSMENU | FXWS_THICKFRAME | FXWS_MINIMIZEBOX | FXWS_MAXIMIZEBOX
;
;	if(style & FXWS_SYSMENU)
	.line	2247
;	{
	lda	<L717+style_0
	and	#<$8
	bne	L742
	brl	L10312
L742:
	.line	2248
;		//k_debug_strings("k_vdraw_ui_window:","FXWS_SYSMENU");
;		titleOffsetX+=k_put_wingadget_point(WINICON_TITLE_BCLOSE,titleOffsetX,titleOffsetY,k_getUIGadgetColor());
	.line	2250
	jsl	~~k_getUIGadgetColor
	pha
	pei	<L718+titleOffsetY_1
	pei	<L718+titleOffsetX_1
	pea	#<$6
	jsl	~~k_put_wingadget_point
	sta	<R0
	clc
	lda	<R0
	adc	<L718+titleOffsetX_1
	sta	<L718+titleOffsetX_1
;	}
	.line	2251
;
;	if((style & FXWS_CAPTION) == FXWS_CAPTION)
L10312:
	.line	2253
;	{
	lda	<L717+style_0
	and	#<$4
	sta	<R0
	lda	<R0
	cmp	#<$4
	beq	L743
	brl	L10313
L743:
	.line	2254
;		//k_debug_strings("k_vdraw_ui_window:","FXWS_CAPTION");
;		//titleScaler = (int)(width / metric.width - 3);
;		titleScaler = (int)(width / metric.width -1 );
	.line	2257
	lda	<L718+width_1
	ldx	<L718+metric_1
	xref	~~~div
	jsl	~~~div
	sta	<R0
	clc
	lda	#$ffff
	adc	<R0
	sta	<L718+titleScaler_1
;		for(i=0;i<titleScaler;i++)
	.line	2258
	stz	<L718+i_1
	brl	L10317
L10316:
;		{
	.line	2259
;			titleOffsetX+=k_put_wingadget_point(WINICON_TITLE_LINES,titleOffsetX,titleOffsetY,k_getUIGadgetColor());
	.line	2260
	jsl	~~k_getUIGadgetColor
	pha
	pei	<L718+titleOffsetY_1
	pei	<L718+titleOffsetX_1
	pea	#<$1
	jsl	~~k_put_wingadget_point
	sta	<R0
	clc
	lda	<R0
	adc	<L718+titleOffsetX_1
	sta	<L718+titleOffsetX_1
;		}
	.line	2261
L10314:
	inc	<L718+i_1
L10317:
	sec
	lda	<L718+i_1
	sbc	<L718+titleScaler_1
	bvs	L744
	eor	#$8000
L744:
	bmi	L745
	brl	L10316
L745:
L10315:
;	}
	.line	2262
;	//titleOffsetX+=k_put_wingadget_point(WINICON_TITLE_BACK,titleOffsetX,titleOffsetY,14);
;	//titleOffsetX+=2;
;	//titleOffsetX+=k_put_wingadget_point(WINICON_TITLE_FRONT,titleOffsetX,titleOffsetY,14);
;
;	if(style & FXWS_MAXIMIZEBOX)
L10313:
	.line	2267
;	{
	lda	<L717+style_0
	and	#<$10
	bne	L746
	brl	L10318
L746:
	.line	2268
;		//k_debug_strings("k_vdraw_ui_window:","FXWS_MAXIMIZEBOX");
;		maxminPos+=metric.width;
	.line	2270
	clc
	lda	<L718+maxminPos_1
	adc	<L718+metric_1
	sta	<L718+maxminPos_1
;		//k_put_wingadget_point(WINICON_BLOCK,endX - (metric.width),titleOffsetY,k_getUIWindowBorderColor());
;		//k_put_wingadget_point(WINICON_TITLE_FRONT,endX - (metric.width),titleOffsetY,k_getUIGadgetColor());
;
;		k_put_wingadget_point(WINICON_BLOCK,endX - maxminPos,titleOffsetY,k_getUIWindowBorderColor());
	.line	2274
	jsl	~~k_getUIWindowBorderColor
	pha
	pei	<L718+titleOffsetY_1
	sec
	lda	<L718+endX_1
	sbc	<L718+maxminPos_1
	pha
	pea	#<$0
	jsl	~~k_put_wingadget_point
;		k_put_wingadget_point(WINICON_TITLE_FRONT,endX - maxminPos,titleOffsetY,k_getUIGadgetColor());
	.line	2275
	jsl	~~k_getUIGadgetColor
	pha
	pei	<L718+titleOffsetY_1
	sec
	lda	<L718+endX_1
	sbc	<L718+maxminPos_1
	pha
	pea	#<$3
	jsl	~~k_put_wingadget_point
;
;		maxminPos+=2;
	.line	2277
	inc	<L718+maxminPos_1
	inc	<L718+maxminPos_1
;	}
	.line	2278
;
;	if(style & FXWS_MINIMIZEBOX)
L10318:
	.line	2280
;	{
	lda	<L717+style_0
	and	#<$20
	bne	L747
	brl	L10319
L747:
	.line	2281
;		//k_debug_strings("k_vdraw_ui_window:","FXWS_MINIMIZEBOX");
;		maxminPos+=metric.width;
	.line	2283
	clc
	lda	<L718+maxminPos_1
	adc	<L718+metric_1
	sta	<L718+maxminPos_1
;		//k_put_wingadget_point(WINICON_BLOCK,endX - (metric.width*2 + 2),titleOffsetY,k_getUIWindowBorderColor());
;		//k_put_wingadget_point(WINICON_TITLE_BACK,endX - (metric.width*2 + 2),titleOffsetY,k_getUIGadgetColor());
;
;		k_put_wingadget_point(WINICON_BLOCK,endX - maxminPos,titleOffsetY,k_getUIWindowBorderColor());
	.line	2287
	jsl	~~k_getUIWindowBorderColor
	pha
	pei	<L718+titleOffsetY_1
	sec
	lda	<L718+endX_1
	sbc	<L718+maxminPos_1
	pha
	pea	#<$0
	jsl	~~k_put_wingadget_point
;		k_put_wingadget_point(WINICON_TITLE_BACK,endX - maxminPos,titleOffsetY,k_getUIGadgetColor());
	.line	2288
	jsl	~~k_getUIGadgetColor
	pha
	pei	<L718+titleOffsetY_1
	sec
	lda	<L718+endX_1
	sbc	<L718+maxminPos_1
	pha
	pea	#<$4
	jsl	~~k_put_wingadget_point
;
;		maxminPos+=2;
	.line	2290
	inc	<L718+maxminPos_1
	inc	<L718+maxminPos_1
;	}
	.line	2291
;
;	if((style & FXWS_CAPTION) == FXWS_CAPTION)
L10319:
	.line	2293
;	{
	lda	<L717+style_0
	and	#<$4
	sta	<R0
	lda	<R0
	cmp	#<$4
	beq	L748
	brl	L10320
L748:
	.line	2294
;
;		for(i=0;i<=strlen(title);i++)
	.line	2296
	stz	<L718+i_1
	brl	L10324
L10323:
;		{
	.line	2297
;			k_put_wingadget_point(WINICON_BLOCK,cx+borderWidth+metric.width+(metric.width*i),titleOffsetY,15);
	.line	2298
	pea	#<$f
	pei	<L718+titleOffsetY_1
	lda	<L718+metric_1
	ldx	<L718+i_1
	xref	~~~mul
	jsl	~~~mul
	sta	<R0
	clc
	lda	<R0
	adc	<L718+cx_1
	sta	<R1
	clc
	lda	<R1
	adc	<L718+borderWidth_1
	sta	<R0
	clc
	lda	<R0
	adc	<L718+metric_1
	pha
	pea	#<$0
	jsl	~~k_put_wingadget_point
;		}
	.line	2299
L10321:
	inc	<L718+i_1
L10324:
	pei	<L717+title_0+2
	pei	<L717+title_0
	jsl	~~strlen
	sta	<R0
	lda	<R0
	cmp	<L718+i_1
	bcc	L749
	brl	L10323
L749:
L10322:
;		k_draw_text_point(title,cx+(borderWidth + 3)+metric.width,titleOffsetY,k_getUIGadgetColor());
	.line	2300
	jsl	~~k_getUIGadgetColor
	pha
	pei	<L718+titleOffsetY_1
	clc
	lda	<L718+cx_1
	adc	<L718+borderWidth_1
	sta	<R0
	clc
	lda	<R0
	adc	<L718+metric_1
	sta	<R1
	clc
	lda	#$3
	adc	<R1
	pha
	pei	<L717+title_0+2
	pei	<L717+title_0
	jsl	~~k_draw_text_point
;	}
	.line	2301
;
;	clientRect->x = clientOffsetX;
L10320:
	.line	2303
	lda	<L718+clientOffsetX_1
	sta	[<L717+clientRect_0]
;	clientRect->y = clientOffsetY;
	.line	2304
	lda	<L718+clientOffsetY_1
	ldy	#$2
	sta	[<L717+clientRect_0],Y
;	clientRect->width = (0 - (2*borderWidth));
	.line	2305
	lda	<L718+borderWidth_1
	asl	A
	sta	<R0
	sec
	lda	#$0
	sbc	<R0
	ldy	#$4
	sta	[<L717+clientRect_0],Y
;	clientRect->height = (0 - clientOffsetY - borderWidth); ;
	.line	2306
	sec
	lda	#$0
	sbc	<L718+clientOffsetY_1
	sta	<R0
	sec
	lda	<R0
	sbc	<L718+borderWidth_1
	ldy	#$6
	sta	[<L717+clientRect_0],Y
	.line	2306
;
;	k_debug_rect("RELATIVE CLIENT",clientRect);
	.line	2308
	pei	<L717+clientRect_0+2
	pei	<L717+clientRect_0
	pea	#^L648+129
	pea	#<L648+129
	jsl	~~k_debug_rect
;
;
;	//k_debug_strings("k_vdraw_ui_window:","exit");
;}
	.line	2312
	brl	L720
	.endblock	2312
L717	equ	50
L718	equ	9
	ends
	efunc
	.endfunc	2312,9,50
	.line	2312
	data
L648:
	db	$6B,$5F,$76,$64,$72,$61,$77,$5F,$75,$69,$5F,$77,$69,$6E,$64
	db	$6F,$77,$3A,$63,$78,$3A,$00,$6B,$5F,$76,$64,$72,$61,$77,$5F
	db	$75,$69,$5F,$77,$69,$6E,$64,$6F,$77,$3A,$63,$79,$3A,$00,$6B
	db	$5F,$76,$64,$72,$61,$77,$5F,$75,$69,$5F,$77,$69,$6E,$64,$6F
	db	$77,$3A,$77,$69,$64,$74,$68,$3A,$00,$6B,$5F,$76,$64,$72,$61
	db	$77,$5F,$75,$69,$5F,$77,$69,$6E,$64,$6F,$77,$3A,$68,$65,$69
	db	$67,$68,$74,$3A,$00,$6B,$5F,$76,$64,$72,$61,$77,$5F,$75,$69
	db	$5F,$77,$69,$6E,$64,$6F,$77,$3A,$3A,$4E,$4F,$54,$20,$52,$45
	db	$4E,$44,$45,$52,$49,$4E,$47,$3A,$00,$52,$45,$4C,$41,$54,$49
	db	$56,$45,$20,$43,$4C,$49,$45,$4E,$54,$00
	ends
;
;
;void k_vdraw_ui_window(PWINDOW pWin,ULONG style,int cx,int cy,int height,int width,char FAR *title,int color, int bgcolor)
;{
	.line	2315
	.line	2316
	GUI
	xdef	~~k_vdraw_ui_window
	func
	.function	2316
~~k_vdraw_ui_window:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L751
	tcs
	phd
	tcd
pWin_0	set	4
style_0	set	8
cx_0	set	12
cy_0	set	14
height_0	set	16
width_0	set	18
title_0	set	20
color_0	set	24
bgcolor_0	set	26
	.block	2316
;	k_vdraw_ui_window_ex(pWin,style,cx,cy,height,width,title,color, bgcolor,BITMAP_FRONT);
	.sym	pWin,4,138,6,32,30
	.sym	style,8,18,6,32
	.sym	cx,12,5,6,16
	.sym	cy,14,5,6,16
	.sym	height,16,5,6,16
	.sym	width,18,5,6,16
	.sym	title,20,142,6,32
	.sym	color,24,5,6,16
	.sym	bgcolor,26,5,6,16
	.line	2317
	pea	#<$0
	pei	<L751+bgcolor_0
	pei	<L751+color_0
	pei	<L751+title_0+2
	pei	<L751+title_0
	pei	<L751+width_0
	pei	<L751+height_0
	pei	<L751+cy_0
	pei	<L751+cx_0
	pei	<L751+style_0+2
	pei	<L751+style_0
	pei	<L751+pWin_0+2
	pei	<L751+pWin_0
	jsl	~~k_vdraw_ui_window_ex
;}
	.line	2318
L754:
	lda	<L751+2
	sta	<L751+2+24
	lda	<L751+1
	sta	<L751+1+24
	pld
	tsc
	clc
	adc	#L751+24
	tcs
	rtl
	.endblock	2318
L751	equ	0
L752	equ	1
	ends
	efunc
	.endfunc	2318,1,0
	.line	2318
;
;void k_vdraw_ui_window_ex(PWINDOW pWin,ULONG style,int cx,int cy,int height,int width,char FAR *title,int color, int bgcolor,UINT page)
;{
	.line	2320
	.line	2321
	GUI
	xdef	~~k_vdraw_ui_window_ex
	func
	.function	2321
~~k_vdraw_ui_window_ex:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L755
	tcs
	phd
	tcd
pWin_0	set	4
style_0	set	8
cx_0	set	12
cy_0	set	14
height_0	set	16
width_0	set	18
title_0	set	20
color_0	set	24
bgcolor_0	set	26
page_0	set	28
	.block	2321
;	FONTMETRIC metric;
;	
;	int i = 0;
;	int odd = 1;
;	int borderColor = 0;
;	int borderTitle = 0;
;	int borderWidth = 0;
;
;	int titleOffsetX = 0;
;	int titleOffsetY = 0;
;	int titleScaler = 0;
;	
;	int clientOffsetX = 0;
;	int clientOffsetY = 0;
;	
;	int currX = 0;
;	int currY = 0;
;	
;	int endX = 0;
;	
;	int maxminPos = 0;
;
;	int ncc = 0;
;	int gx,gy,bx,by;
;
;	int fillOffset = 2;  // correct the fill coordinates so the borders are the same size
;
;	/*
;	if(pWin->pParentWindow)
;	{
;		cx = k_getWindowFromHandle(pWin->pParentWindow)->clientRect.x + cx;
;		cy = k_getWindowFromHandle(pWin->pParentWindow)->clientRect.y + cy;
;		k_debug_strings("k_vdraw_ui_window::IS CHILD:",title);
;		k_debug_integer("k_vdraw_ui_window:cx:",cx);
;		k_debug_integer("k_vdraw_ui_window:cy:",cy);
;		k_debug_integer("k_vdraw_ui_window:width:",width);
;		k_debug_integer("k_vdraw_ui_window:height:",height);
;	}
;	*/
;	k_debug_strings("k_vdraw_ui_window::IS CHILD:",title);
metric_1	set	0
i_1	set	4
odd_1	set	6
borderColor_1	set	8
borderTitle_1	set	10
borderWidth_1	set	12
titleOffsetX_1	set	14
titleOffsetY_1	set	16
titleScaler_1	set	18
clientOffsetX_1	set	20
clientOffsetY_1	set	22
currX_1	set	24
currY_1	set	26
endX_1	set	28
maxminPos_1	set	30
ncc_1	set	32
gx_1	set	34
gy_1	set	36
bx_1	set	38
by_1	set	40
fillOffset_1	set	42
	.sym	metric,0,10,1,32,32
	.sym	i,4,5,1,16
	.sym	odd,6,5,1,16
	.sym	borderColor,8,5,1,16
	.sym	borderTitle,10,5,1,16
	.sym	borderWidth,12,5,1,16
	.sym	titleOffsetX,14,5,1,16
	.sym	titleOffsetY,16,5,1,16
	.sym	titleScaler,18,5,1,16
	.sym	clientOffsetX,20,5,1,16
	.sym	clientOffsetY,22,5,1,16
	.sym	currX,24,5,1,16
	.sym	currY,26,5,1,16
	.sym	endX,28,5,1,16
	.sym	maxminPos,30,5,1,16
	.sym	ncc,32,5,1,16
	.sym	gx,34,5,1,16
	.sym	gy,36,5,1,16
	.sym	bx,38,5,1,16
	.sym	by,40,5,1,16
	.sym	fillOffset,42,5,1,16
	.sym	pWin,4,138,6,32,30
	.sym	style,8,18,6,32
	.sym	cx,12,5,6,16
	.sym	cy,14,5,6,16
	.sym	height,16,5,6,16
	.sym	width,18,5,6,16
	.sym	title,20,142,6,32
	.sym	color,24,5,6,16
	.sym	bgcolor,26,5,6,16
	.sym	page,28,16,6,16
	stz	<L756+i_1
	lda	#$1
	sta	<L756+odd_1
	stz	<L756+borderColor_1
	stz	<L756+borderTitle_1
	stz	<L756+borderWidth_1
	stz	<L756+titleOffsetX_1
	stz	<L756+titleOffsetY_1
	stz	<L756+titleScaler_1
	stz	<L756+clientOffsetX_1
	stz	<L756+clientOffsetY_1
	stz	<L756+currX_1
	stz	<L756+currY_1
	stz	<L756+endX_1
	stz	<L756+maxminPos_1
	stz	<L756+ncc_1
	lda	#$2
	sta	<L756+fillOffset_1
	.line	2361
	pei	<L755+title_0+2
	pei	<L755+title_0
	pea	#^L750
	pea	#<L750
	jsl	~~k_debug_strings
;	k_debug_integer("k_vdraw_ui_window:cx:",cx);
	.line	2362
	pei	<L755+cx_0
	pea	#^L750+29
	pea	#<L750+29
	jsl	~~k_debug_integer
;	k_debug_integer("k_vdraw_ui_window:cy:",cy);
	.line	2363
	pei	<L755+cy_0
	pea	#^L750+51
	pea	#<L750+51
	jsl	~~k_debug_integer
;	k_debug_integer("k_vdraw_ui_window:width:",width);
	.line	2364
	pei	<L755+width_0
	pea	#^L750+73
	pea	#<L750+73
	jsl	~~k_debug_integer
;	k_debug_integer("k_vdraw_ui_window:height:",height);
	.line	2365
	pei	<L755+height_0
	pea	#^L750+98
	pea	#<L750+98
	jsl	~~k_debug_integer
;
;	k_debug_rect("k_vdraw_ui_window:client:",&pWin->clientRect);
	.line	2367
	clc
	lda	#$18
	adc	<L755+pWin_0
	sta	<R0
	lda	#$0
	adc	<L755+pWin_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L750+124
	pea	#<L750+124
	jsl	~~k_debug_rect
;
;	gx = k_user_getSystemMetric(SM_CXGADGET);
	.line	2369
	pea	#<$18
	jsl	~~k_user_getSystemMetric
	sta	<L756+gx_1
;	gy = k_user_getSystemMetric(SM_CYGADGET);
	.line	2370
	pea	#<$19
	jsl	~~k_user_getSystemMetric
	sta	<L756+gy_1
;	bx = k_user_getSystemMetric(SM_CXBORDER);
	.line	2371
	pea	#<$5
	jsl	~~k_user_getSystemMetric
	sta	<L756+bx_1
;	by = k_user_getSystemMetric(SM_CYBORDER);
	.line	2372
	pea	#<$6
	jsl	~~k_user_getSystemMetric
	sta	<L756+by_1
;
;	titleOffsetX = cx+2;
	.line	2374
	clc
	lda	#$2
	adc	<L755+cx_0
	sta	<L756+titleOffsetX_1
;	titleOffsetY = cy+1;
	.line	2375
	lda	<L755+cy_0
	ina
	sta	<L756+titleOffsetY_1
;
;	//k_debug_strings("k_vdraw_ui_window:","enter");
;
;	if(style & FXWS_VISIBLE != FXWS_VISIBLE)
	.line	2379
;	{
	brl	L10325
	.line	2380
;		k_debug_strings("k_vdraw_ui_window::NOT RENDERING:",title);
	.line	2381
	pei	<L755+title_0+2
	pei	<L755+title_0
	pea	#^L750+150
	pea	#<L750+150
	jsl	~~k_debug_strings
;		return;
	.line	2382
L758:
	lda	<L755+2
	sta	<L755+2+26
	lda	<L755+1
	sta	<L755+1+26
	pld
	tsc
	clc
	adc	#L755+26
	tcs
	rtl
;	}
	.line	2383
;
;	//k_debug_strings("k_vdraw_ui_window::RENDERING:",title);
;
;	if(style & FXWS_THICKFRAME)
L10325:
	.line	2387
;	{
	lda	<L755+style_0+2
	and	#^$20000
	bne	L759
	brl	L10326
L759:
	.line	2388
;		borderWidth = 2;
	.line	2389
	lda	#$2
	sta	<L756+borderWidth_1
;	}
	.line	2390
;	else if(style & FXWS_BORDER)
	brl	L10327
L10326:
	.line	2391
;	{
	lda	<L755+style_0+2
	and	#^$10000
	bne	L760
	brl	L10328
L760:
	.line	2392
;		borderWidth = 1;
	.line	2393
	lda	#$1
	sta	<L756+borderWidth_1
;	}
	.line	2394
;	else if(style & FXWS_DLGFRAME)
	brl	L10329
L10328:
	.line	2395
;	{
	lda	<L755+style_0+2
	and	#^$40000
	bne	L761
	brl	L10330
L761:
	.line	2396
;		borderWidth = 4;
	.line	2397
	lda	#$4
	sta	<L756+borderWidth_1
;	}
	.line	2398
;
;	if( ((style & FXWS_CAPTION) == FXWS_CAPTION) || (style & FXWS_SYSMENU) || (style & FXWS_MINIMIZEBOX) || (style & FXWS_MAXIMIZEBOX))
L10330:
L10329:
L10327:
	.line	2400
;	{
	lda	<L755+style_0
	and	#<$4
	sta	<R0
	stz	<R0+2
	lda	<R0
	cmp	#<$4
	bne	L763
	lda	<R0+2
	cmp	#^$4
L763:
	bne	L764
	brl	L762
L764:
	lda	<L755+style_0
	and	#<$8
	beq	L765
	brl	L762
L765:
	lda	<L755+style_0
	and	#<$20
	beq	L766
	brl	L762
L766:
	lda	<L755+style_0
	and	#<$10
	bne	L767
	brl	L10331
L767:
L762:
	.line	2401
;		borderTitle = 10;
	.line	2402
	lda	#$a
	sta	<L756+borderTitle_1
;	}
	.line	2403
;
;	clientOffsetX = cx + borderWidth;
L10331:
	.line	2405
	clc
	lda	<L755+cx_0
	adc	<L756+borderWidth_1
	sta	<L756+clientOffsetX_1
;
;	if(borderTitle)
	.line	2407
;		clientOffsetY = cy + borderTitle;
	lda	<L756+borderTitle_1
	bne	L768
	brl	L10332
L768:
	.line	2408
	clc
	lda	<L755+cy_0
	adc	<L756+borderTitle_1
	sta	<L756+clientOffsetY_1
;	else
	brl	L10333
L10332:
;		clientOffsetY = cy + borderWidth;
	.line	2410
	clc
	lda	<L755+cy_0
	adc	<L756+borderWidth_1
	sta	<L756+clientOffsetY_1
L10333:
;
;	currX = clientOffsetX;
	.line	2412
	lda	<L756+clientOffsetX_1
	sta	<L756+currX_1
;	currY = clientOffsetY;
	.line	2413
	lda	<L756+clientOffsetY_1
	sta	<L756+currY_1
;
;	endX = width + cx - borderWidth;
	.line	2415
	clc
	lda	<L755+width_0
	adc	<L755+cx_0
	sta	<R0
	sec
	lda	<R0
	sbc	<L756+borderWidth_1
	sta	<L756+endX_1
;	maxminPos = 0;
	.line	2416
	stz	<L756+maxminPos_1
;
;
;	/*
;	k_vdma_fill_rect(cx,cy,width,height,color);
;	//k_delay(50);
;
;	k_vdma_fill_rect(cx + borderWidth,
;			         cy + (borderTitle + borderWidth),
;					 //width - borderWidth - borderWidth + 1,
;					 //height - borderTitle - borderWidth + 1,
;					 width  - (borderWidth + fillOffset),
;					 height - (borderTitle + borderWidth + fillOffset),
;					 bgcolor);
;	*/
;
;	//k_debug_integer("k_vdraw_ui_window:cx:",cx);
;	//k_debug_integer("k_vdraw_ui_window:cy:",cy);
;	//k_debug_integer("k_vdraw_ui_window:width:",width);
;	//k_debug_integer("k_vdraw_ui_window:height:",height);
;
;	k_vdma_fill_rect_ex(cx,cy,width,height,bgcolor,page);
	.line	2437
	pei	<L755+page_0
	pei	<L755+bgcolor_0
	pei	<L755+height_0
	pei	<L755+width_0
	ldy	#$0
	lda	<L755+cy_0
	bpl	L769
	dey
L769:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	lda	<L755+cx_0
	bpl	L770
	dey
L770:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect_ex
;	borderColor = color;
	.line	2438
	lda	<L755+color_0
	sta	<L756+borderColor_1
;	for(i=0;i<borderWidth;i++)
	.line	2439
	stz	<L756+i_1
	brl	L10337
L10336:
;	{
	.line	2440
;		if(borderWidth > 2)
	.line	2441
;		{
	sec
	lda	#$2
	sbc	<L756+borderWidth_1
	bvs	L771
	eor	#$8000
L771:
	bpl	L772
	brl	L10338
L772:
	.line	2442
;			borderColor = color;
	.line	2443
	lda	<L755+color_0
	sta	<L756+borderColor_1
;			odd=!odd;
	.line	2444
	stz	<R0
	lda	<L756+odd_1
	beq	L774
	brl	L773
L774:
	inc	<R0
L773:
	lda	<R0
	sta	<L756+odd_1
;			if(odd)
	.line	2445
;			{
	lda	<L756+odd_1
	bne	L775
	brl	L10339
L775:
	.line	2446
;				borderColor = 0;
	.line	2447
	stz	<L756+borderColor_1
;			}
	.line	2448
;		}
L10339:
	.line	2449
;
;		k_draw_rect(cx + i + 0,
L10338:
	.line	2451
;					cy + i + 0,
;					cx + width  - 1 - i,
;					cy + height - 1 - i,
;					borderColor,
;					0,
;					page);
	pei	<L755+page_0
	pea	#<$0
	pei	<L756+borderColor_1
	clc
	lda	<L755+cy_0
	adc	<L755+height_0
	sta	<R0
	clc
	lda	#$ffff
	adc	<R0
	sta	<R1
	sec
	lda	<R1
	sbc	<L756+i_1
	pha
	clc
	lda	<L755+cx_0
	adc	<L755+width_0
	sta	<R0
	clc
	lda	#$ffff
	adc	<R0
	sta	<R1
	sec
	lda	<R1
	sbc	<L756+i_1
	pha
	clc
	lda	<L755+cy_0
	adc	<L756+i_1
	pha
	clc
	lda	<L755+cx_0
	adc	<L756+i_1
	pha
	jsl	~~k_draw_rect
;
;	}
	.line	2459
L10334:
	inc	<L756+i_1
L10337:
	sec
	lda	<L756+i_1
	sbc	<L756+borderWidth_1
	bvs	L776
	eor	#$8000
L776:
	bmi	L777
	brl	L10336
L777:
L10335:
;
;
;
;	if(borderTitle)
	.line	2463
;	{
	lda	<L756+borderTitle_1
	bne	L778
	brl	L10340
L778:
	.line	2464
;		k_vdma_fill_rect_ex(cx,cy,width,borderTitle,color,page);
	.line	2465
	pei	<L755+page_0
	pei	<L755+color_0
	pei	<L756+borderTitle_1
	pei	<L755+width_0
	ldy	#$0
	lda	<L755+cy_0
	bpl	L779
	dey
L779:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	lda	<L755+cx_0
	bpl	L780
	dey
L780:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect_ex
;	}
	.line	2466
;
;	k_get_font_metrics(&metric);
L10340:
	.line	2468
	pea	#0
	clc
	tdc
	adc	#<L756+metric_1
	pha
	jsl	~~k_get_font_metrics
;	
;	
;	//title = strupr(title);
;	
;	//FXWS_OVERLAPPED | FXWS_CAPTION | FXWS_SYSMENU | FXWS_THICKFRAME | FXWS_MINIMIZEBOX | FXWS_MAXIMIZEBOX
;
;	if(style & FXWS_SYSMENU)
	.line	2475
;	{
	lda	<L755+style_0
	and	#<$8
	bne	L781
	brl	L10341
L781:
	.line	2476
;		k_set_rect(&(pWin->nonclientGadgets[ncc].area),titleOffsetX,titleOffsetY,gx,gx);
	.line	2477
	pei	<L756+gx_1
	pei	<L756+gx_1
	pei	<L756+titleOffsetY_1
	pei	<L756+titleOffsetX_1
	ldy	#$0
	lda	<L756+ncc_1
	bpl	L782
	dey
L782:
	sta	<R0
	sty	<R0+2
	pea	#^$b
	pea	#<$b
	pei	<R0+2
	pei	<R0
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R0
	stx	<R0+2
	clc
	lda	#$20
	adc	<R0
	sta	<R1
	lda	#$0
	adc	<R0+2
	sta	<R1+2
	clc
	lda	<L755+pWin_0
	adc	<R1
	sta	<R0
	lda	<L755+pWin_0+2
	adc	<R1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~k_set_rect
;		pWin->nonclientGadgets[ncc++].msgType = FX_WINDOW_CLOSE;
	.line	2478
	ldy	#$0
	lda	<L756+ncc_1
	bpl	L783
	dey
L783:
	sta	<R0
	sty	<R0+2
	pea	#^$b
	pea	#<$b
	pei	<R0+2
	pei	<R0
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R0
	stx	<R0+2
	clc
	lda	#$28
	adc	<L755+pWin_0
	sta	<R1
	lda	#$0
	adc	<L755+pWin_0+2
	sta	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<R2
	lda	<R1+2
	adc	<R0+2
	sta	<R2+2
	lda	#$fbff
	sta	[<R2]
	inc	<L756+ncc_1
;
;		//k_debug_strings("k_vdraw_ui_window:","FXWS_SYSMENU");
;		titleOffsetX+=k_put_wingadget_point_ex(WINICON_TITLE_BCLOSE,titleOffsetX,titleOffsetY,k_getUIGadgetColor(),page);
	.line	2481
	pei	<L755+page_0
	jsl	~~k_getUIGadgetColor
	pha
	pei	<L756+titleOffsetY_1
	pei	<L756+titleOffsetX_1
	pea	#<$6
	jsl	~~k_put_wingadget_point_ex
	sta	<R0
	clc
	lda	<R0
	adc	<L756+titleOffsetX_1
	sta	<L756+titleOffsetX_1
;
;	}
	.line	2483
;	
;	if((style & FXWS_CAPTION) == FXWS_CAPTION)
L10341:
	.line	2485
;	{
	lda	<L755+style_0
	and	#<$4
	sta	<R0
	stz	<R0+2
	lda	<R0
	cmp	#<$4
	bne	L784
	lda	<R0+2
	cmp	#^$4
L784:
	beq	L785
	brl	L10342
L785:
	.line	2486
;		//k_debug_strings("k_vdraw_ui_window:","FXWS_CAPTION");
;		//titleScaler = (int)(width / metric.width - 3);
;		titleScaler = (int)(width / metric.width -1 );
	.line	2489
	lda	<L755+width_0
	ldx	<L756+metric_1
	xref	~~~div
	jsl	~~~div
	sta	<R0
	clc
	lda	#$ffff
	adc	<R0
	sta	<L756+titleScaler_1
;		for(i=0;i<titleScaler;i++)
	.line	2490
	stz	<L756+i_1
	brl	L10346
L10345:
;		{
	.line	2491
;			titleOffsetX+=k_put_wingadget_point_ex(WINICON_TITLE_LINES,titleOffsetX,titleOffsetY,k_getUIGadgetColor(),page);
	.line	2492
	pei	<L755+page_0
	jsl	~~k_getUIGadgetColor
	pha
	pei	<L756+titleOffsetY_1
	pei	<L756+titleOffsetX_1
	pea	#<$1
	jsl	~~k_put_wingadget_point_ex
	sta	<R0
	clc
	lda	<R0
	adc	<L756+titleOffsetX_1
	sta	<L756+titleOffsetX_1
;		}
	.line	2493
L10343:
	inc	<L756+i_1
L10346:
	sec
	lda	<L756+i_1
	sbc	<L756+titleScaler_1
	bvs	L786
	eor	#$8000
L786:
	bmi	L787
	brl	L10345
L787:
L10344:
;	}
	.line	2494
;	//titleOffsetX+=k_put_wingadget_point(WINICON_TITLE_BACK,titleOffsetX,titleOffsetY,14);
;	//titleOffsetX+=2;
;	//titleOffsetX+=k_put_wingadget_point(WINICON_TITLE_FRONT,titleOffsetX,titleOffsetY,14);
;	
;	if(style & FXWS_MAXIMIZEBOX)
L10342:
	.line	2499
;	{
	lda	<L755+style_0
	and	#<$10
	bne	L788
	brl	L10347
L788:
	.line	2500
;		//k_debug_strings("k_vdraw_ui_window:","FXWS_MAXIMIZEBOX");
;		maxminPos+=metric.width;
	.line	2502
	clc
	lda	<L756+maxminPos_1
	adc	<L756+metric_1
	sta	<L756+maxminPos_1
;		//k_put_wingadget_point(WINICON_BLOCK,endX - (metric.width),titleOffsetY,k_getUIWindowBorderColor());
;		//k_put_wingadget_point(WINICON_TITLE_FRONT,endX - (metric.width),titleOffsetY,k_getUIGadgetColor());
;
;		k_put_wingadget_point_ex(WINICON_BLOCK,endX - maxminPos,titleOffsetY,k_getUIWindowBorderColor(),page);
	.line	2506
	pei	<L755+page_0
	jsl	~~k_getUIWindowBorderColor
	pha
	pei	<L756+titleOffsetY_1
	sec
	lda	<L756+endX_1
	sbc	<L756+maxminPos_1
	pha
	pea	#<$0
	jsl	~~k_put_wingadget_point_ex
;		k_put_wingadget_point_ex(WINICON_TITLE_FRONT,endX - maxminPos,titleOffsetY,k_getUIGadgetColor(),page);
	.line	2507
	pei	<L755+page_0
	jsl	~~k_getUIGadgetColor
	pha
	pei	<L756+titleOffsetY_1
	sec
	lda	<L756+endX_1
	sbc	<L756+maxminPos_1
	pha
	pea	#<$3
	jsl	~~k_put_wingadget_point_ex
;
;		k_set_rect(&(pWin->nonclientGadgets[ncc].area),endX - maxminPos,titleOffsetY,gx,gx);
	.line	2509
	pei	<L756+gx_1
	pei	<L756+gx_1
	pei	<L756+titleOffsetY_1
	sec
	lda	<L756+endX_1
	sbc	<L756+maxminPos_1
	pha
	ldy	#$0
	lda	<L756+ncc_1
	bpl	L789
	dey
L789:
	sta	<R0
	sty	<R0+2
	pea	#^$b
	pea	#<$b
	pei	<R0+2
	pei	<R0
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R0
	stx	<R0+2
	clc
	lda	#$20
	adc	<R0
	sta	<R1
	lda	#$0
	adc	<R0+2
	sta	<R1+2
	clc
	lda	<L755+pWin_0
	adc	<R1
	sta	<R0
	lda	<L755+pWin_0+2
	adc	<R1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~k_set_rect
;		pWin->nonclientGadgets[ncc++].msgType = FX_MAX_WINDOW;
	.line	2510
	ldy	#$0
	lda	<L756+ncc_1
	bpl	L790
	dey
L790:
	sta	<R0
	sty	<R0+2
	pea	#^$b
	pea	#<$b
	pei	<R0+2
	pei	<R0
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R0
	stx	<R0+2
	clc
	lda	#$28
	adc	<L755+pWin_0
	sta	<R1
	lda	#$0
	adc	<L755+pWin_0+2
	sta	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<R2
	lda	<R1+2
	adc	<R0+2
	sta	<R2+2
	lda	#$fb0a
	sta	[<R2]
	inc	<L756+ncc_1
;
;		maxminPos+=2;
	.line	2512
	inc	<L756+maxminPos_1
	inc	<L756+maxminPos_1
;	}
	.line	2513
;
;	if(style & FXWS_MINIMIZEBOX)
L10347:
	.line	2515
;	{
	lda	<L755+style_0
	and	#<$20
	bne	L791
	brl	L10348
L791:
	.line	2516
;		//k_debug_strings("k_vdraw_ui_window:","FXWS_MINIMIZEBOX");
;		maxminPos+=metric.width;
	.line	2518
	clc
	lda	<L756+maxminPos_1
	adc	<L756+metric_1
	sta	<L756+maxminPos_1
;		//k_put_wingadget_point(WINICON_BLOCK,endX - (metric.width*2 + 2),titleOffsetY,k_getUIWindowBorderColor());
;		//k_put_wingadget_point(WINICON_TITLE_BACK,endX - (metric.width*2 + 2),titleOffsetY,k_getUIGadgetColor());
;
;		k_put_wingadget_point_ex(WINICON_BLOCK,endX - maxminPos,titleOffsetY,k_getUIWindowBorderColor(),page);
	.line	2522
	pei	<L755+page_0
	jsl	~~k_getUIWindowBorderColor
	pha
	pei	<L756+titleOffsetY_1
	sec
	lda	<L756+endX_1
	sbc	<L756+maxminPos_1
	pha
	pea	#<$0
	jsl	~~k_put_wingadget_point_ex
;		k_put_wingadget_point_ex(WINICON_TITLE_BACK,endX - maxminPos,titleOffsetY,k_getUIGadgetColor(),page);
	.line	2523
	pei	<L755+page_0
	jsl	~~k_getUIGadgetColor
	pha
	pei	<L756+titleOffsetY_1
	sec
	lda	<L756+endX_1
	sbc	<L756+maxminPos_1
	pha
	pea	#<$4
	jsl	~~k_put_wingadget_point_ex
;
;
;		k_set_rect(&(pWin->nonclientGadgets[ncc].area),endX - maxminPos,titleOffsetY,gx,gx);
	.line	2526
	pei	<L756+gx_1
	pei	<L756+gx_1
	pei	<L756+titleOffsetY_1
	sec
	lda	<L756+endX_1
	sbc	<L756+maxminPos_1
	pha
	ldy	#$0
	lda	<L756+ncc_1
	bpl	L792
	dey
L792:
	sta	<R0
	sty	<R0+2
	pea	#^$b
	pea	#<$b
	pei	<R0+2
	pei	<R0
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R0
	stx	<R0+2
	clc
	lda	#$20
	adc	<R0
	sta	<R1
	lda	#$0
	adc	<R0+2
	sta	<R1+2
	clc
	lda	<L755+pWin_0
	adc	<R1
	sta	<R0
	lda	<L755+pWin_0+2
	adc	<R1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~k_set_rect
;		pWin->nonclientGadgets[ncc++].msgType = FX_MIN_WINDOW;
	.line	2527
	ldy	#$0
	lda	<L756+ncc_1
	bpl	L793
	dey
L793:
	sta	<R0
	sty	<R0+2
	pea	#^$b
	pea	#<$b
	pei	<R0+2
	pei	<R0
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R0
	stx	<R0+2
	clc
	lda	#$28
	adc	<L755+pWin_0
	sta	<R1
	lda	#$0
	adc	<L755+pWin_0+2
	sta	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<R2
	lda	<R1+2
	adc	<R0+2
	sta	<R2+2
	lda	#$fb09
	sta	[<R2]
	inc	<L756+ncc_1
;
;		maxminPos+=2;
	.line	2529
	inc	<L756+maxminPos_1
	inc	<L756+maxminPos_1
;	}
	.line	2530
;
;	if((style & FXWS_CAPTION) == FXWS_CAPTION)
L10348:
	.line	2532
;	{
	lda	<L755+style_0
	and	#<$4
	sta	<R0
	stz	<R0+2
	lda	<R0
	cmp	#<$4
	bne	L794
	lda	<R0+2
	cmp	#^$4
L794:
	beq	L795
	brl	L10349
L795:
	.line	2533
;		for(i=0;i<=strlen(title);i++)
	.line	2534
	stz	<L756+i_1
	brl	L10353
L10352:
;		{
	.line	2535
;			k_put_wingadget_point_ex(WINICON_BLOCK,cx+borderWidth+metric.width+(metric.width*i),titleOffsetY,15,page);
	.line	2536
	pei	<L755+page_0
	pea	#<$f
	pei	<L756+titleOffsetY_1
	lda	<L756+metric_1
	ldx	<L756+i_1
	xref	~~~mul
	jsl	~~~mul
	sta	<R0
	clc
	lda	<R0
	adc	<L755+cx_0
	sta	<R1
	clc
	lda	<R1
	adc	<L756+borderWidth_1
	sta	<R0
	clc
	lda	<R0
	adc	<L756+metric_1
	pha
	pea	#<$0
	jsl	~~k_put_wingadget_point_ex
;		}
	.line	2537
L10350:
	inc	<L756+i_1
L10353:
	pei	<L755+title_0+2
	pei	<L755+title_0
	jsl	~~strlen
	sta	<R0
	lda	<R0
	cmp	<L756+i_1
	bcc	L796
	brl	L10352
L796:
L10351:
;		k_draw_text_point_ex(title,cx+(borderWidth + 3)+metric.width,titleOffsetY,k_getUIGadgetColor(),page);
	.line	2538
	pei	<L755+page_0
	jsl	~~k_getUIGadgetColor
	pha
	pei	<L756+titleOffsetY_1
	clc
	lda	<L755+cx_0
	adc	<L756+borderWidth_1
	sta	<R0
	clc
	lda	<R0
	adc	<L756+metric_1
	sta	<R1
	clc
	lda	#$3
	adc	<R1
	pha
	pei	<L755+title_0+2
	pei	<L755+title_0
	jsl	~~k_draw_text_point_ex
;
;		k_set_rect(&(pWin->nonclientGadgets[ncc].area),
	.line	2540
;				   pWin->win_x + gx,
;				   pWin->win_y,
;				   pWin->win_width - gx,
;				   borderTitle);
	pei	<L756+borderTitle_1
	sec
	ldy	#$c
	lda	[<L755+pWin_0],Y
	sbc	<L756+gx_1
	pha
	ldy	#$a
	lda	[<L755+pWin_0],Y
	pha
	clc
	ldy	#$8
	lda	[<L755+pWin_0],Y
	adc	<L756+gx_1
	pha
	ldy	#$0
	lda	<L756+ncc_1
	bpl	L797
	dey
L797:
	sta	<R0
	sty	<R0+2
	pea	#^$b
	pea	#<$b
	pei	<R0+2
	pei	<R0
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R0
	stx	<R0+2
	clc
	lda	#$20
	adc	<R0
	sta	<R1
	lda	#$0
	adc	<R0+2
	sta	<R1+2
	clc
	lda	<L755+pWin_0
	adc	<R1
	sta	<R0
	lda	<L755+pWin_0+2
	adc	<R1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~k_set_rect
;		pWin->nonclientGadgets[ncc++].msgType = FX_DRAG_WINDOW;
	.line	2545
	ldy	#$0
	lda	<L756+ncc_1
	bpl	L798
	dey
L798:
	sta	<R0
	sty	<R0+2
	pea	#^$b
	pea	#<$b
	pei	<R0+2
	pei	<R0
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R0
	stx	<R0+2
	clc
	lda	#$28
	adc	<L755+pWin_0
	sta	<R1
	lda	#$0
	adc	<L755+pWin_0+2
	sta	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<R2
	lda	<R1+2
	adc	<R0+2
	sta	<R2+2
	lda	#$fb10
	sta	[<R2]
	inc	<L756+ncc_1
;
;	}
	.line	2547
;	else
	brl	L10354
L10349:
;	{
	.line	2549
;		k_set_rect(&(pWin->nonclientGadgets[ncc].area),
	.line	2550
;				   pWin->win_x + gx,
;				   pWin->win_y,
;				   pWin->win_width - gx,
;				   borderWidth);
	pei	<L756+borderWidth_1
	sec
	ldy	#$c
	lda	[<L755+pWin_0],Y
	sbc	<L756+gx_1
	pha
	ldy	#$a
	lda	[<L755+pWin_0],Y
	pha
	clc
	ldy	#$8
	lda	[<L755+pWin_0],Y
	adc	<L756+gx_1
	pha
	ldy	#$0
	lda	<L756+ncc_1
	bpl	L799
	dey
L799:
	sta	<R0
	sty	<R0+2
	pea	#^$b
	pea	#<$b
	pei	<R0+2
	pei	<R0
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R0
	stx	<R0+2
	clc
	lda	#$20
	adc	<R0
	sta	<R1
	lda	#$0
	adc	<R0+2
	sta	<R1+2
	clc
	lda	<L755+pWin_0
	adc	<R1
	sta	<R0
	lda	<L755+pWin_0+2
	adc	<R1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~k_set_rect
;		pWin->nonclientGadgets[ncc++].msgType = FX_DRAG_WINDOW;
	.line	2555
	ldy	#$0
	lda	<L756+ncc_1
	bpl	L800
	dey
L800:
	sta	<R0
	sty	<R0+2
	pea	#^$b
	pea	#<$b
	pei	<R0+2
	pei	<R0
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R0
	stx	<R0+2
	clc
	lda	#$28
	adc	<L755+pWin_0
	sta	<R1
	lda	#$0
	adc	<L755+pWin_0+2
	sta	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<R2
	lda	<R1+2
	adc	<R0+2
	sta	<R2+2
	lda	#$fb10
	sta	[<R2]
	inc	<L756+ncc_1
;	}
	.line	2556
L10354:
;
;	k_debug_integer("k_vdraw_ui_window::(clientOffsetY - height):",(clientOffsetY - pWin->clientRect.y));
	.line	2558
	sec
	lda	<L756+clientOffsetY_1
	ldy	#$1a
	sbc	[<L755+pWin_0],Y
	pha
	pea	#^L750+184
	pea	#<L750+184
	jsl	~~k_debug_integer
;	k_debug_integer("k_vdraw_ui_window::((clientOffsetY - height) + borderWidth):",((clientOffsetY - pWin->clientRect.y) + borderWidth));
	.line	2559
	sec
	lda	<L756+clientOffsetY_1
	ldy	#$1a
	sbc	[<L755+pWin_0],Y
	sta	<R0
	clc
	lda	<R0
	adc	<L756+borderWidth_1
	pha
	pea	#^L750+229
	pea	#<L750+229
	jsl	~~k_debug_integer
;
;	pWin->clientRect.width  = (width - (2*borderWidth));
	.line	2561
	lda	<L756+borderWidth_1
	asl	A
	sta	<R0
	sec
	lda	<L755+width_0
	sbc	<R0
	ldy	#$1c
	sta	[<L755+pWin_0],Y
;	pWin->clientRect.height = height - ((clientOffsetY - pWin->clientRect.y) + borderWidth);
	.line	2562
	sec
	lda	<L756+clientOffsetY_1
	ldy	#$1a
	sbc	[<L755+pWin_0],Y
	sta	<R0
	clc
	lda	<R0
	adc	<L756+borderWidth_1
	sta	<R1
	sec
	lda	<L755+height_0
	sbc	<R1
	ldy	#$1e
	sta	[<L755+pWin_0],Y
;
;	pWin->clientRect.x      = clientOffsetX;
	.line	2564
	lda	<L756+clientOffsetX_1
	ldy	#$18
	sta	[<L755+pWin_0],Y
;	pWin->clientRect.y      = clientOffsetY;
	.line	2565
	lda	<L756+clientOffsetY_1
	ldy	#$1a
	sta	[<L755+pWin_0],Y
;
;	k_set_rect(&(pWin->nonclientGadgets[ncc].area),
	.line	2567
;			   pWin->win_x + pWin->win_width  - 4,
;			   pWin->win_y + pWin->win_height - 4,
;			   4,
;			   4);
	pea	#<$4
	pea	#<$4
	clc
	ldy	#$a
	lda	[<L755+pWin_0],Y
	ldy	#$e
	adc	[<L755+pWin_0],Y
	sta	<R0
	clc
	lda	#$fffc
	adc	<R0
	pha
	clc
	ldy	#$8
	lda	[<L755+pWin_0],Y
	ldy	#$c
	adc	[<L755+pWin_0],Y
	sta	<R0
	clc
	lda	#$fffc
	adc	<R0
	pha
	ldy	#$0
	lda	<L756+ncc_1
	bpl	L801
	dey
L801:
	sta	<R0
	sty	<R0+2
	pea	#^$b
	pea	#<$b
	pei	<R0+2
	pei	<R0
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R0
	stx	<R0+2
	clc
	lda	#$20
	adc	<R0
	sta	<R1
	lda	#$0
	adc	<R0+2
	sta	<R1+2
	clc
	lda	<L755+pWin_0
	adc	<R1
	sta	<R0
	lda	<L755+pWin_0+2
	adc	<R1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~k_set_rect
;	pWin->nonclientGadgets[ncc++].msgType = FX_RESIZE_WINDOW;
	.line	2572
	ldy	#$0
	lda	<L756+ncc_1
	bpl	L802
	dey
L802:
	sta	<R0
	sty	<R0+2
	pea	#^$b
	pea	#<$b
	pei	<R0+2
	pei	<R0
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R0
	stx	<R0+2
	clc
	lda	#$28
	adc	<L755+pWin_0
	sta	<R1
	lda	#$0
	adc	<L755+pWin_0+2
	sta	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<R2
	lda	<R1+2
	adc	<R0+2
	sta	<R2+2
	lda	#$fb0f
	sta	[<R2]
	inc	<L756+ncc_1
;
;
;	k_debug_rect("k_vdraw_ui_window:client[resized]:",&pWin->clientRect);
	.line	2575
	clc
	lda	#$18
	adc	<L755+pWin_0
	sta	<R0
	lda	#$0
	adc	<L755+pWin_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L750+290
	pea	#<L750+290
	jsl	~~k_debug_rect
;
;	k_set_rect(&(pWin->nonclientGadgets[ncc].area),-1,-1,-1,-1);
	.line	2577
	pea	#<$ffffffff
	pea	#<$ffffffff
	pea	#<$ffffffff
	pea	#<$ffffffff
	ldy	#$0
	lda	<L756+ncc_1
	bpl	L803
	dey
L803:
	sta	<R0
	sty	<R0+2
	pea	#^$b
	pea	#<$b
	pei	<R0+2
	pei	<R0
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R0
	stx	<R0+2
	clc
	lda	#$20
	adc	<R0
	sta	<R1
	lda	#$0
	adc	<R0+2
	sta	<R1+2
	clc
	lda	<L755+pWin_0
	adc	<R1
	sta	<R0
	lda	<L755+pWin_0+2
	adc	<R1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~k_set_rect
;
;
;	//k_debug_strings("k_vdraw_ui_window:","exit");
;}
	.line	2581
	brl	L758
	.endblock	2581
L755	equ	56
L756	equ	13
	ends
	efunc
	.endfunc	2581,13,56
	.line	2581
	data
L750:
	db	$6B,$5F,$76,$64,$72,$61,$77,$5F,$75,$69,$5F,$77,$69,$6E,$64
	db	$6F,$77,$3A,$3A,$49,$53,$20,$43,$48,$49,$4C,$44,$3A,$00,$6B
	db	$5F,$76,$64,$72,$61,$77,$5F,$75,$69,$5F,$77,$69,$6E,$64,$6F
	db	$77,$3A,$63,$78,$3A,$00,$6B,$5F,$76,$64,$72,$61,$77,$5F,$75
	db	$69,$5F,$77,$69,$6E,$64,$6F,$77,$3A,$63,$79,$3A,$00,$6B,$5F
	db	$76,$64,$72,$61,$77,$5F,$75,$69,$5F,$77,$69,$6E,$64,$6F,$77
	db	$3A,$77,$69,$64,$74,$68,$3A,$00,$6B,$5F,$76,$64,$72,$61,$77
	db	$5F,$75,$69,$5F,$77,$69,$6E,$64,$6F,$77,$3A,$68,$65,$69,$67
	db	$68,$74,$3A,$00,$6B,$5F,$76,$64,$72,$61,$77,$5F,$75,$69,$5F
	db	$77,$69,$6E,$64,$6F,$77,$3A,$63,$6C,$69,$65,$6E,$74,$3A,$00
	db	$6B,$5F,$76,$64,$72,$61,$77,$5F,$75,$69,$5F,$77,$69,$6E,$64
	db	$6F,$77,$3A,$3A,$4E,$4F,$54,$20,$52,$45,$4E,$44,$45,$52,$49
	db	$4E,$47,$3A,$00,$6B,$5F,$76,$64,$72,$61,$77,$5F,$75,$69,$5F
	db	$77,$69,$6E,$64,$6F,$77,$3A,$3A,$28,$63,$6C,$69,$65,$6E,$74
	db	$4F,$66,$66,$73,$65,$74,$59,$20,$2D,$20,$68,$65,$69,$67,$68
	db	$74,$29,$3A,$00,$6B,$5F,$76,$64,$72,$61,$77,$5F,$75,$69,$5F
	db	$77,$69,$6E,$64,$6F,$77,$3A,$3A,$28,$28,$63,$6C,$69,$65,$6E
	db	$74,$4F,$66,$66,$73,$65,$74,$59,$20,$2D,$20,$68,$65,$69,$67
	db	$68,$74,$29,$20,$2B,$20,$62,$6F,$72,$64,$65,$72,$57,$69,$64
	db	$74,$68,$29,$3A,$00,$6B,$5F,$76,$64,$72,$61,$77,$5F,$75,$69
	db	$5F,$77,$69,$6E,$64,$6F,$77,$3A,$63,$6C,$69,$65,$6E,$74,$5B
	db	$72,$65,$73,$69,$7A,$65,$64,$5D,$3A,$00
	ends
;
;PMENU k_draw_menu(HMENU hMenu,int color, int bgcolor)
;{
	.line	2583
	.line	2584
	GUI
	xdef	~~k_draw_menu
	func
	.function	2584
~~k_draw_menu:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L805
	tcs
	phd
	tcd
hMenu_0	set	4
color_0	set	8
bgcolor_0	set	10
	.block	2584
;	FONTMETRIC metric;
;
;	int i = 0;
;
;	int borderTitle = 10;
;	int borderWidth = 3;
;
;	int titleOffsetX = ((PMENU)hMenu)->cx+2;
;	int titleOffsetY = ((PMENU)hMenu)->cy+2;
;	int titleScaler = 0;
;
;	int clientOffsetX = ((PMENU)hMenu)->cx+borderWidth+2;
;	int clientOffsetY = ((PMENU)hMenu)->cy+borderTitle+1;
;
;	int endX = ((PMENU)hMenu)->width + ((PMENU)hMenu)->cx - borderWidth;
;
;
;	k_get_font_metrics(&metric);
metric_1	set	0
i_1	set	4
borderTitle_1	set	6
borderWidth_1	set	8
titleOffsetX_1	set	10
titleOffsetY_1	set	12
titleScaler_1	set	14
clientOffsetX_1	set	16
clientOffsetY_1	set	18
endX_1	set	20
	.sym	metric,0,10,1,32,32
	.sym	i,4,5,1,16
	.sym	borderTitle,6,5,1,16
	.sym	borderWidth,8,5,1,16
	.sym	titleOffsetX,10,5,1,16
	.sym	titleOffsetY,12,5,1,16
	.sym	titleScaler,14,5,1,16
	.sym	clientOffsetX,16,5,1,16
	.sym	clientOffsetY,18,5,1,16
	.sym	endX,20,5,1,16
	.sym	hMenu,4,129,6,32
	.sym	color,8,5,6,16
	.sym	bgcolor,10,5,6,16
	stz	<L806+i_1
	lda	#$a
	sta	<L806+borderTitle_1
	lda	#$3
	sta	<L806+borderWidth_1
	clc
	lda	#$2
	adc	[<L805+hMenu_0]
	sta	<L806+titleOffsetX_1
	clc
	lda	#$2
	ldy	#$2
	adc	[<L805+hMenu_0],Y
	sta	<L806+titleOffsetY_1
	stz	<L806+titleScaler_1
	clc
	lda	[<L805+hMenu_0]
	adc	<L806+borderWidth_1
	sta	<R0
	clc
	lda	#$2
	adc	<R0
	sta	<L806+clientOffsetX_1
	clc
	ldy	#$2
	lda	[<L805+hMenu_0],Y
	adc	<L806+borderTitle_1
	sta	<R0
	lda	<R0
	ina
	sta	<L806+clientOffsetY_1
	clc
	ldy	#$4
	lda	[<L805+hMenu_0],Y
	adc	[<L805+hMenu_0]
	sta	<R0
	sec
	lda	<R0
	sbc	<L806+borderWidth_1
	sta	<L806+endX_1
	.line	2602
	pea	#0
	clc
	tdc
	adc	#<L806+metric_1
	pha
	jsl	~~k_get_font_metrics
;
;
;	//int height = 0;
;	/*
;	PMENU menu = (PMENU)k_mem_allocate_heap(sizeof(MENU));
;	memset(menu,0,sizeof(MENU));
;
;	menu->cx = cx;
;	menu->cy = cy;
;	menu->fcolor = color;
;	menu->bcolor = bgcolor;
;	menu->pCaption = k_string_copy_string(strupr(title));
;
;	k_get_font_metrics(&metric);
;
;	//height = metric.height + (int)(metric.width/4);
;
;	menu->height = height;
;	menu->width  = width;
;
;
;	k_debug_integer("k_vdraw_ui_menu:menu->cx:",menu->cx);
;	k_debug_integer("k_vdraw_ui_menu:menu->cy:",menu->cy);
;	k_debug_integer("k_vdraw_ui_menu:menu->height:",menu->height);
;	k_debug_integer("k_vdraw_ui_menu:menu->width:",menu->width);
;	*/
;
;	//k_vdma_fill_rect(cx,cy,width,height,color);
;
;	//k_vdma_fill_rect(cx,cy,width,height,bgcolor); // +1 on width and height for VDMA
;	k_vdma_fill_rect(((PMENU)hMenu)->cx,((PMENU)hMenu)->cy,((PMENU)hMenu)->width,((PMENU)hMenu)->height,color);
	.line	2633
	pei	<L805+color_0
	ldy	#$6
	lda	[<L805+hMenu_0],Y
	pha
	ldy	#$4
	lda	[<L805+hMenu_0],Y
	pha
	ldy	#$0
	phy
	ldy	#$2
	lda	[<L805+hMenu_0],Y
	ply
	rol	A
	ror	A
	bpl	L808
	dey
L808:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	lda	[<L805+hMenu_0]
	bpl	L809
	dey
L809:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect
;
;	//k_delay(15);
;
;	//title = strupr(title);
;
;	//titleOffsetX+=k_put_wingadget_point(WINICON_TITLE_ACLOSE,titleOffsetX,titleOffsetY,14);
;	/*
;	titleScaler = (int)(width / metric.width - 4);
;	for(i=0;i<titleScaler;i++)
;	{
;		titleOffsetX+=k_put_wingadget_point(WINICON_TITLE_LINES,titleOffsetX,titleOffsetY,14);
;	}*/
;
;	k_put_wingadget_point(WINICON_TITLE_BACK,endX - (metric.width*2 + 2),titleOffsetY,14);
	.line	2647
	pea	#<$e
	pei	<L806+titleOffsetY_1
	lda	<L806+metric_1
	asl	A
	sta	<R0
	clc
	lda	#$2
	adc	<R0
	sta	<R1
	sec
	lda	<L806+endX_1
	sbc	<R1
	pha
	pea	#<$4
	jsl	~~k_put_wingadget_point
;	k_put_wingadget_point(WINICON_TITLE_FRONT,endX - (metric.width),titleOffsetY,14);
	.line	2648
	pea	#<$e
	pei	<L806+titleOffsetY_1
	sec
	lda	<L806+endX_1
	sbc	<L806+metric_1
	pha
	pea	#<$3
	jsl	~~k_put_wingadget_point
;
;	//k_render_wingadget(WINICON_TITLE_BACK,endX - (metric.width*2 + 2),titleOffsetY,14,k_gadget_title_back_callback);
;	//k_render_wingadget(WINICON_TITLE_FRONT,endX - (metric.width),titleOffsetY,14,k_gadget_title_front_callback);
;
;	i = k_draw_text_point(((PMENU)hMenu)->pCaption,((PMENU)hMenu)->cx+2+metric.width,titleOffsetY,bgcolor);
	.line	2653
	pei	<L805+bgcolor_0
	pei	<L806+titleOffsetY_1
	clc
	lda	[<L805+hMenu_0]
	adc	<L806+metric_1
	sta	<R0
	clc
	lda	#$2
	adc	<R0
	pha
	ldy	#$11
	lda	[<L805+hMenu_0],Y
	pha
	ldy	#$f
	lda	[<L805+hMenu_0],Y
	pha
	jsl	~~k_draw_text_point
	sta	<L806+i_1
;	//k_render_text(title,cx+2+metric.width,titleOffsetY,bgcolor,k_text_callback);
;
;
;	return NULL;
	.line	2657
	lda	#$0
	tax
	lda	#$0
L810:
	tay
	lda	<L805+2
	sta	<L805+2+8
	lda	<L805+1
	sta	<L805+1+8
	pld
	tsc
	clc
	adc	#L805+8
	tcs
	tya
	rtl
;}
	.line	2658
	.endblock	2658
L805	equ	30
L806	equ	9
	ends
	efunc
	.endfunc	2658,9,30
	.line	2658
;
;PMENU k_vdraw_ui_menu(int cx,int cy,int width,int height,LPCSTR title,int color, int bgcolor)
;{
	.line	2660
	.line	2661
	GUI
	xdef	~~k_vdraw_ui_menu
	func
	.function	2661
~~k_vdraw_ui_menu:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L811
	tcs
	phd
	tcd
cx_0	set	4
cy_0	set	6
width_0	set	8
height_0	set	10
title_0	set	12
color_0	set	16
bgcolor_0	set	18
	.block	2661
;	return k_vdraw_ui_menu_ex(cx,cy,width,height,title,color,bgcolor,BITMAP_BACK);
	.sym	cx,4,5,6,16
	.sym	cy,6,5,6,16
	.sym	width,8,5,6,16
	.sym	height,10,5,6,16
	.sym	title,12,142,6,32
	.sym	color,16,5,6,16
	.sym	bgcolor,18,5,6,16
	.line	2662
	pea	#<$10
	pei	<L811+bgcolor_0
	pei	<L811+color_0
	pei	<L811+title_0+2
	pei	<L811+title_0
	pei	<L811+height_0
	pei	<L811+width_0
	pei	<L811+cy_0
	pei	<L811+cx_0
	jsl	~~k_vdraw_ui_menu_ex
	sta	<R0
	stx	<R0+2
	ldx	<R0+2
	lda	<R0
L814:
	tay
	lda	<L811+2
	sta	<L811+2+16
	lda	<L811+1
	sta	<L811+1+16
	pld
	tsc
	clc
	adc	#L811+16
	tcs
	tya
	rtl
;}
	.line	2663
	.endblock	2663
L811	equ	4
L812	equ	5
	ends
	efunc
	.endfunc	2663,5,4
	.line	2663
;
;PMENU k_vdraw_ui_menu_ex(int cx,int cy,int width,int height,LPCSTR title,int color, int bgcolor,UINT page)
;{
	.line	2665
	.line	2666
	GUI
	xdef	~~k_vdraw_ui_menu_ex
	func
	.function	2666
~~k_vdraw_ui_menu_ex:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L815
	tcs
	phd
	tcd
cx_0	set	4
cy_0	set	6
width_0	set	8
height_0	set	10
title_0	set	12
color_0	set	16
bgcolor_0	set	18
page_0	set	20
	.block	2666
;	FONTMETRIC metric;
;	
;	int i = 0;
;	
;	int borderTitle = 10;
;	int borderWidth = 3;
;
;	int titleOffsetX = cx+2;
;	int titleOffsetY = cy+2;
;	int titleScaler = 0;
;	
;	int clientOffsetX = cx+borderWidth+2;
;	int clientOffsetY = cy+borderTitle+1;
;	
;	int endX = width + cx - borderWidth;
;	
;
;	k_get_font_metrics(&metric);
metric_1	set	0
i_1	set	4
borderTitle_1	set	6
borderWidth_1	set	8
titleOffsetX_1	set	10
titleOffsetY_1	set	12
titleScaler_1	set	14
clientOffsetX_1	set	16
clientOffsetY_1	set	18
endX_1	set	20
	.sym	metric,0,10,1,32,32
	.sym	i,4,5,1,16
	.sym	borderTitle,6,5,1,16
	.sym	borderWidth,8,5,1,16
	.sym	titleOffsetX,10,5,1,16
	.sym	titleOffsetY,12,5,1,16
	.sym	titleScaler,14,5,1,16
	.sym	clientOffsetX,16,5,1,16
	.sym	clientOffsetY,18,5,1,16
	.sym	endX,20,5,1,16
	.sym	cx,4,5,6,16
	.sym	cy,6,5,6,16
	.sym	width,8,5,6,16
	.sym	height,10,5,6,16
	.sym	title,12,142,6,32
	.sym	color,16,5,6,16
	.sym	bgcolor,18,5,6,16
	.sym	page,20,16,6,16
	stz	<L816+i_1
	lda	#$a
	sta	<L816+borderTitle_1
	lda	#$3
	sta	<L816+borderWidth_1
	clc
	lda	#$2
	adc	<L815+cx_0
	sta	<L816+titleOffsetX_1
	clc
	lda	#$2
	adc	<L815+cy_0
	sta	<L816+titleOffsetY_1
	stz	<L816+titleScaler_1
	clc
	lda	<L815+cx_0
	adc	<L816+borderWidth_1
	sta	<R0
	clc
	lda	#$2
	adc	<R0
	sta	<L816+clientOffsetX_1
	clc
	lda	<L815+cy_0
	adc	<L816+borderTitle_1
	sta	<R0
	lda	<R0
	ina
	sta	<L816+clientOffsetY_1
	clc
	lda	<L815+width_0
	adc	<L815+cx_0
	sta	<R0
	sec
	lda	<R0
	sbc	<L816+borderWidth_1
	sta	<L816+endX_1
	.line	2684
	pea	#0
	clc
	tdc
	adc	#<L816+metric_1
	pha
	jsl	~~k_get_font_metrics
;
;	//k_debug_integer("k_vdraw_ui_menu::width:",width);
;	//k_debug_integer("k_vdraw_ui_menu::height:",height);
;	//k_debug_strings("k_vdraw_ui_menu::title:",(LPSTR)title);
;	//k_debug_integer("k_vdraw_ui_menu::bgcolor:",bgcolor);
;
;	//int height = 0;
;	/*
;	PMENU menu = (PMENU)k_mem_allocate_heap(sizeof(MENU));
;	memset(menu,0,sizeof(MENU));
;
;	menu->cx = cx;
;	menu->cy = cy;
;	menu->fcolor = color;
;	menu->bcolor = bgcolor;
;	menu->pCaption = k_string_copy_string(strupr(title));
;
;	k_get_font_metrics(&metric);
;	
;	//height = metric.height + (int)(metric.width/4);
;
;	menu->height = height;
;	menu->width  = width;
;
;
;	k_debug_integer("k_vdraw_ui_menu:menu->cx:",menu->cx);
;	k_debug_integer("k_vdraw_ui_menu:menu->cy:",menu->cy);
;	k_debug_integer("k_vdraw_ui_menu:menu->height:",menu->height);
;	k_debug_integer("k_vdraw_ui_menu:menu->width:",menu->width);
;	*/
;
;	//k_vdma_fill_rect(cx,cy,width,height,color);
;
;	//k_vdma_fill_rect(cx,cy,width,height,bgcolor); // +1 on width and height for VDMA
;	k_vdma_fill_rect_ex(cx,cy,width ,height,0,BITMAP_FRONT);//k_getUIMenuColor());
	.line	2719
	pea	#<$0
	pea	#<$0
	pei	<L815+height_0
	pei	<L815+width_0
	ldy	#$0
	lda	<L815+cy_0
	bpl	L818
	dey
L818:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	lda	<L815+cx_0
	bpl	L819
	dey
L819:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect_ex
;	k_vdma_fill_rect_ex(cx,cy,width ,height,bgcolor,BITMAP_BACK);
	.line	2720
	pea	#<$10
	pei	<L815+bgcolor_0
	pei	<L815+height_0
	pei	<L815+width_0
	ldy	#$0
	lda	<L815+cy_0
	bpl	L820
	dey
L820:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	lda	<L815+cx_0
	bpl	L821
	dey
L821:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect_ex
;	//k_delay(15);
;	
;	//title = strupr(title);
;	
;	//titleOffsetX+=k_put_wingadget_point(WINICON_TITLE_ACLOSE,titleOffsetX,titleOffsetY,14);	
;	/*
;	titleScaler = (int)(width / metric.width - 4);
;	for(i=0;i<titleScaler;i++)
;	{
;		titleOffsetX+=k_put_wingadget_point(WINICON_TITLE_LINES,titleOffsetX,titleOffsetY,14);	
;	}*/
;
;	k_put_wingadget_point(WINICON_TITLE_BACK,endX - (metric.width*2 + 2),titleOffsetY,color);//k_getUIGadgetColor());
	.line	2733
	pei	<L815+color_0
	pei	<L816+titleOffsetY_1
	lda	<L816+metric_1
	asl	A
	sta	<R0
	clc
	lda	#$2
	adc	<R0
	sta	<R1
	sec
	lda	<L816+endX_1
	sbc	<R1
	pha
	pea	#<$4
	jsl	~~k_put_wingadget_point
;	k_put_wingadget_point(WINICON_TITLE_FRONT,endX - (metric.width),titleOffsetY,color);//k_getUIGadgetColor());
	.line	2734
	pei	<L815+color_0
	pei	<L816+titleOffsetY_1
	sec
	lda	<L816+endX_1
	sbc	<L816+metric_1
	pha
	pea	#<$3
	jsl	~~k_put_wingadget_point
;
;	//k_render_wingadget(WINICON_TITLE_BACK,endX - (metric.width*2 + 2),titleOffsetY,14,k_gadget_title_back_callback);
;	//k_render_wingadget(WINICON_TITLE_FRONT,endX - (metric.width),titleOffsetY,14,k_gadget_title_front_callback);
;
;	if(title)
	.line	2739
;		i = k_draw_text_point(title,cx+2+metric.width,titleOffsetY,color);//k_getUIGadgetColor());
	lda	<L815+title_0
	ora	<L815+title_0+2
	bne	L822
	brl	L10355
L822:
	.line	2740
	pei	<L815+color_0
	pei	<L816+titleOffsetY_1
	clc
	lda	<L815+cx_0
	adc	<L816+metric_1
	sta	<R0
	clc
	lda	#$2
	adc	<R0
	pha
	pei	<L815+title_0+2
	pei	<L815+title_0
	jsl	~~k_draw_text_point
	sta	<L816+i_1
;	//k_render_text(title,cx+2+metric.width,titleOffsetY,bgcolor,k_text_callback);
;
;	
;	return NULL;
L10355:
	.line	2744
	lda	#$0
	tax
	lda	#$0
L823:
	tay
	lda	<L815+2
	sta	<L815+2+18
	lda	<L815+1
	sta	<L815+1+18
	pld
	tsc
	clc
	adc	#L815+18
	tcs
	tya
	rtl
;}
	.line	2745
	.endblock	2745
L815	equ	30
L816	equ	9
	ends
	efunc
	.endfunc	2745,9,30
	.line	2745
;
;
;PMENU k_vdraw_ui_menu_with_rect(int cx,int cy,int width,int height,LPCSTR title,int color, int bgcolor,LPVOID *prects)
;{
	.line	2748
	.line	2749
	GUI
	xdef	~~k_vdraw_ui_menu_with_rect
	func
	.function	2749
~~k_vdraw_ui_menu_with_rect:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L824
	tcs
	phd
	tcd
cx_0	set	4
cy_0	set	6
width_0	set	8
height_0	set	10
title_0	set	12
color_0	set	16
bgcolor_0	set	18
prects_0	set	20
	.block	2749
;	FONTMETRIC metric;
;
;	int i = 0;
;
;	int borderTitle = 10;
;	int borderWidth = 3;
;
;	int titleOffsetX = cx+2;
;	int titleOffsetY = cy+2;
;	int titleScaler = 0;
;
;	int clientOffsetX = cx+borderWidth+2;
;	int clientOffsetY = cy+borderTitle+1;
;
;	int endX = width + cx - borderWidth;
;
;
;	k_get_font_metrics(&metric);
metric_1	set	0
i_1	set	4
borderTitle_1	set	6
borderWidth_1	set	8
titleOffsetX_1	set	10
titleOffsetY_1	set	12
titleScaler_1	set	14
clientOffsetX_1	set	16
clientOffsetY_1	set	18
endX_1	set	20
	.sym	metric,0,10,1,32,32
	.sym	i,4,5,1,16
	.sym	borderTitle,6,5,1,16
	.sym	borderWidth,8,5,1,16
	.sym	titleOffsetX,10,5,1,16
	.sym	titleOffsetY,12,5,1,16
	.sym	titleScaler,14,5,1,16
	.sym	clientOffsetX,16,5,1,16
	.sym	clientOffsetY,18,5,1,16
	.sym	endX,20,5,1,16
	.sym	cx,4,5,6,16
	.sym	cy,6,5,6,16
	.sym	width,8,5,6,16
	.sym	height,10,5,6,16
	.sym	title,12,142,6,32
	.sym	color,16,5,6,16
	.sym	bgcolor,18,5,6,16
	.sym	prects,20,1153,6,32
	stz	<L825+i_1
	lda	#$a
	sta	<L825+borderTitle_1
	lda	#$3
	sta	<L825+borderWidth_1
	clc
	lda	#$2
	adc	<L824+cx_0
	sta	<L825+titleOffsetX_1
	clc
	lda	#$2
	adc	<L824+cy_0
	sta	<L825+titleOffsetY_1
	stz	<L825+titleScaler_1
	clc
	lda	<L824+cx_0
	adc	<L825+borderWidth_1
	sta	<R0
	clc
	lda	#$2
	adc	<R0
	sta	<L825+clientOffsetX_1
	clc
	lda	<L824+cy_0
	adc	<L825+borderTitle_1
	sta	<R0
	lda	<R0
	ina
	sta	<L825+clientOffsetY_1
	clc
	lda	<L824+width_0
	adc	<L824+cx_0
	sta	<R0
	sec
	lda	<R0
	sbc	<L825+borderWidth_1
	sta	<L825+endX_1
	.line	2767
	pea	#0
	clc
	tdc
	adc	#<L825+metric_1
	pha
	jsl	~~k_get_font_metrics
;
;
;	//int height = 0;
;	/*
;	PMENU menu = (PMENU)k_mem_allocate_heap(sizeof(MENU));
;	memset(menu,0,sizeof(MENU));
;
;	menu->cx = cx;
;	menu->cy = cy;
;	menu->fcolor = color;
;	menu->bcolor = bgcolor;
;	menu->pCaption = k_string_copy_string(strupr(title));
;
;	k_get_font_metrics(&metric);
;
;	//height = metric.height + (int)(metric.width/4);
;
;	menu->height = height;
;	menu->width  = width;
;
;
;	k_debug_integer("k_vdraw_ui_menu:menu->cx:",menu->cx);
;	k_debug_integer("k_vdraw_ui_menu:menu->cy:",menu->cy);
;	k_debug_integer("k_vdraw_ui_menu:menu->height:",menu->height);
;	k_debug_integer("k_vdraw_ui_menu:menu->width:",menu->width);
;	*/
;
;	//k_vdma_fill_rect(cx,cy,width,height,color);
;
;	//k_vdma_fill_rect(cx,cy,width,height,bgcolor); // +1 on width and height for VDMA
;	k_vdma_fill_rect(cx,cy,width,height,color);
	.line	2798
	pei	<L824+color_0
	pei	<L824+height_0
	pei	<L824+width_0
	ldy	#$0
	lda	<L824+cy_0
	bpl	L827
	dey
L827:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	lda	<L824+cx_0
	bpl	L828
	dey
L828:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect
;
;	//k_delay(15);
;
;	//title = strupr(title);
;
;	//titleOffsetX+=k_put_wingadget_point(WINICON_TITLE_ACLOSE,titleOffsetX,titleOffsetY,14);
;	/*
;	titleScaler = (int)(width / metric.width - 4);
;	for(i=0;i<titleScaler;i++)
;	{
;		titleOffsetX+=k_put_wingadget_point(WINICON_TITLE_LINES,titleOffsetX,titleOffsetY,14);
;	}*/
;
;	k_put_wingadget_point(WINICON_TITLE_BACK,endX - (metric.width*2 + 2),titleOffsetY,14);
	.line	2812
	pea	#<$e
	pei	<L825+titleOffsetY_1
	lda	<L825+metric_1
	asl	A
	sta	<R0
	clc
	lda	#$2
	adc	<R0
	sta	<R1
	sec
	lda	<L825+endX_1
	sbc	<R1
	pha
	pea	#<$4
	jsl	~~k_put_wingadget_point
;	k_put_wingadget_point(WINICON_TITLE_FRONT,endX - (metric.width),titleOffsetY,14);
	.line	2813
	pea	#<$e
	pei	<L825+titleOffsetY_1
	sec
	lda	<L825+endX_1
	sbc	<L825+metric_1
	pha
	pea	#<$3
	jsl	~~k_put_wingadget_point
;
;	//k_render_wingadget(WINICON_TITLE_BACK,endX - (metric.width*2 + 2),titleOffsetY,14,k_gadget_title_back_callback);
;	//k_render_wingadget(WINICON_TITLE_FRONT,endX - (metric.width),titleOffsetY,14,k_gadget_title_front_callback);
;
;	//i = k_draw_text_point(title,cx+2+metric.width,titleOffsetY,bgcolor);
;	//k_render_text(title,cx+2+metric.width,titleOffsetY,bgcolor,k_text_callback);
;
;
;	return NULL;
	.line	2822
	lda	#$0
	tax
	lda	#$0
L829:
	tay
	lda	<L824+2
	sta	<L824+2+20
	lda	<L824+1
	sta	<L824+1+20
	pld
	tsc
	clc
	adc	#L824+20
	tcs
	tya
	rtl
;}
	.line	2823
	.endblock	2823
L824	equ	30
L825	equ	9
	ends
	efunc
	.endfunc	2823,9,30
	.line	2823
;
;
;
;void k_gadget_title_front_callback(PWINDOW gadgetWindow)
;{
	.line	2827
	.line	2828
	GUI
	xdef	~~k_gadget_title_front_callback
	func
	.function	2828
~~k_gadget_title_front_callback:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L830
	tcs
	phd
	tcd
gadgetWindow_0	set	4
	.block	2828
;	k_debug_message("k_gadget_title_front_callback:clicked:",gadgetWindow->win_class);
	.sym	gadgetWindow,4,138,6,32,30
	.line	2829
	clc
	lda	#$f6
	adc	<L830+gadgetWindow_0
	sta	<R0
	lda	#$0
	adc	<L830+gadgetWindow_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L804
	pea	#<L804
	jsl	~~k_debug_message
;	k_send_message(NULL,FX_WINDOW_TOFRONT,NULL,0);
	.line	2830
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$f30
	pea	#^$0
	pea	#<$0
	jsl	~~k_send_message
;	return;
	.line	2831
L833:
	lda	<L830+2
	sta	<L830+2+4
	lda	<L830+1
	sta	<L830+1+4
	pld
	tsc
	clc
	adc	#L830+4
	tcs
	rtl
;}
	.line	2832
	.endblock	2832
L830	equ	4
L831	equ	5
	ends
	efunc
	.endfunc	2832,5,4
	.line	2832
	data
L804:
	db	$6B,$5F,$67,$61,$64,$67,$65,$74,$5F,$74,$69,$74,$6C,$65,$5F
	db	$66,$72,$6F,$6E,$74,$5F,$63,$61,$6C,$6C,$62,$61,$63,$6B,$3A
	db	$63,$6C,$69,$63,$6B,$65,$64,$3A,$00
	ends
;
;void k_gadget_title_back_callback(PWINDOW gadgetWindow)
;{
	.line	2834
	.line	2835
	GUI
	xdef	~~k_gadget_title_back_callback
	func
	.function	2835
~~k_gadget_title_back_callback:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L835
	tcs
	phd
	tcd
gadgetWindow_0	set	4
	.block	2835
;	k_debug_message("k_gadget_title_back_callback:clicked:",gadgetWindow->win_class);
	.sym	gadgetWindow,4,138,6,32,30
	.line	2836
	clc
	lda	#$f6
	adc	<L835+gadgetWindow_0
	sta	<R0
	lda	#$0
	adc	<L835+gadgetWindow_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L834
	pea	#<L834
	jsl	~~k_debug_message
;	k_send_message(NULL,FX_WINDOW_TOBACK,NULL,0);
	.line	2837
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$f31
	pea	#^$0
	pea	#<$0
	jsl	~~k_send_message
;	return;
	.line	2838
L838:
	lda	<L835+2
	sta	<L835+2+4
	lda	<L835+1
	sta	<L835+1+4
	pld
	tsc
	clc
	adc	#L835+4
	tcs
	rtl
;}
	.line	2839
	.endblock	2839
L835	equ	4
L836	equ	5
	ends
	efunc
	.endfunc	2839,5,4
	.line	2839
	data
L834:
	db	$6B,$5F,$67,$61,$64,$67,$65,$74,$5F,$74,$69,$74,$6C,$65,$5F
	db	$62,$61,$63,$6B,$5F,$63,$61,$6C,$6C,$62,$61,$63,$6B,$3A,$63
	db	$6C,$69,$63,$6B,$65,$64,$3A,$00
	ends
;
;
;
;PMENU k_render_menu(PMENU menu)
;{
	.line	2843
	.line	2844
	GUI
	xdef	~~k_render_menu
	func
	.function	2844
~~k_render_menu:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L840
	tcs
	phd
	tcd
menu_0	set	4
	.block	2844
;	FONTMETRIC metric;
;
;	int i = 0;
;
;	int cx = menu->cx;
;	int cy = menu->cy;
;
;	int borderTitle = 10;
;	int borderWidth = 3;
;
;	int titleOffsetX = cx+2;
;	int titleOffsetY = cy+2;
;	int titleScaler = 0;
;
;	int clientOffsetX = cx+borderWidth+2;
;	int clientOffsetY = cy+borderTitle+1;
;
;	int endX = menu->width + cx - borderWidth;
;
;	k_get_font_metrics(&metric);
metric_1	set	0
i_1	set	4
cx_1	set	6
cy_1	set	8
borderTitle_1	set	10
borderWidth_1	set	12
titleOffsetX_1	set	14
titleOffsetY_1	set	16
titleScaler_1	set	18
clientOffsetX_1	set	20
clientOffsetY_1	set	22
endX_1	set	24
	.sym	metric,0,10,1,32,32
	.sym	i,4,5,1,16
	.sym	cx,6,5,1,16
	.sym	cy,8,5,1,16
	.sym	borderTitle,10,5,1,16
	.sym	borderWidth,12,5,1,16
	.sym	titleOffsetX,14,5,1,16
	.sym	titleOffsetY,16,5,1,16
	.sym	titleScaler,18,5,1,16
	.sym	clientOffsetX,20,5,1,16
	.sym	clientOffsetY,22,5,1,16
	.sym	endX,24,5,1,16
	.sym	menu,4,138,6,32,34
	stz	<L841+i_1
	lda	[<L840+menu_0]
	sta	<L841+cx_1
	ldy	#$2
	lda	[<L840+menu_0],Y
	sta	<L841+cy_1
	lda	#$a
	sta	<L841+borderTitle_1
	lda	#$3
	sta	<L841+borderWidth_1
	clc
	lda	#$2
	adc	<L841+cx_1
	sta	<L841+titleOffsetX_1
	clc
	lda	#$2
	adc	<L841+cy_1
	sta	<L841+titleOffsetY_1
	stz	<L841+titleScaler_1
	clc
	lda	<L841+cx_1
	adc	<L841+borderWidth_1
	sta	<R0
	clc
	lda	#$2
	adc	<R0
	sta	<L841+clientOffsetX_1
	clc
	lda	<L841+cy_1
	adc	<L841+borderTitle_1
	sta	<R0
	lda	<R0
	ina
	sta	<L841+clientOffsetY_1
	clc
	ldy	#$4
	lda	[<L840+menu_0],Y
	adc	<L841+cx_1
	sta	<R0
	sec
	lda	<R0
	sbc	<L841+borderWidth_1
	sta	<L841+endX_1
	.line	2864
	pea	#0
	clc
	tdc
	adc	#<L841+metric_1
	pha
	jsl	~~k_get_font_metrics
;
;
;	k_debug_integer("k_render_menu:menu->cx:",menu->cx);
	.line	2867
	lda	[<L840+menu_0]
	pha
	pea	#^L839
	pea	#<L839
	jsl	~~k_debug_integer
;	k_debug_integer("k_render_menu:menu->cy:",menu->cy);
	.line	2868
	ldy	#$2
	lda	[<L840+menu_0],Y
	pha
	pea	#^L839+24
	pea	#<L839+24
	jsl	~~k_debug_integer
;	k_debug_integer("k_render_menu:menu->height:",menu->height);
	.line	2869
	ldy	#$6
	lda	[<L840+menu_0],Y
	pha
	pea	#^L839+48
	pea	#<L839+48
	jsl	~~k_debug_integer
;	k_debug_integer("k_render_menu:menu->width:",menu->width);
	.line	2870
	ldy	#$4
	lda	[<L840+menu_0],Y
	pha
	pea	#^L839+76
	pea	#<L839+76
	jsl	~~k_debug_integer
;
;
;	k_vdma_fill_rect(cx-1,cy,menu->width+1,menu->height+1,0);
	.line	2873
	pea	#<$0
	ldy	#$6
	lda	[<L840+menu_0],Y
	ina
	pha
	ldy	#$4
	lda	[<L840+menu_0],Y
	ina
	pha
	ldy	#$0
	lda	<L841+cy_1
	bpl	L843
	dey
L843:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	#$ffff
	adc	<L841+cx_1
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L844
	dey
L844:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect
;	k_vdma_fill_rect(cx,cy,menu->width,menu->height,menu->fcolor);
	.line	2874
	ldy	#$8
	lda	[<L840+menu_0],Y
	pha
	ldy	#$6
	lda	[<L840+menu_0],Y
	pha
	ldy	#$4
	lda	[<L840+menu_0],Y
	pha
	ldy	#$0
	lda	<L841+cy_1
	bpl	L845
	dey
L845:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	lda	<L841+cx_1
	bpl	L846
	dey
L846:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect
;
;	//k_vdma_fill_rect(cx,cy,menu->width,menu->height,menu->fcolor);
;
;
;	k_put_wingadget_point(WINICON_TITLE_BACK,endX - (metric.width*2 + 2),titleOffsetY,14);
	.line	2879
	pea	#<$e
	pei	<L841+titleOffsetY_1
	lda	<L841+metric_1
	asl	A
	sta	<R0
	clc
	lda	#$2
	adc	<R0
	sta	<R1
	sec
	lda	<L841+endX_1
	sbc	<R1
	pha
	pea	#<$4
	jsl	~~k_put_wingadget_point
;	k_put_wingadget_point(WINICON_TITLE_FRONT,endX - (metric.width),titleOffsetY,14);
	.line	2880
	pea	#<$e
	pei	<L841+titleOffsetY_1
	sec
	lda	<L841+endX_1
	sbc	<L841+metric_1
	pha
	pea	#<$3
	jsl	~~k_put_wingadget_point
;
;	k_draw_text_point((LPCHAR)menu->pCaption,cx+2+metric.width,titleOffsetY,0);
	.line	2882
	pea	#<$0
	pei	<L841+titleOffsetY_1
	clc
	lda	<L841+cx_1
	adc	<L841+metric_1
	sta	<R0
	clc
	lda	#$2
	adc	<R0
	pha
	ldy	#$11
	lda	[<L840+menu_0],Y
	pha
	ldy	#$f
	lda	[<L840+menu_0],Y
	pha
	jsl	~~k_draw_text_point
;
;	return menu;
	.line	2884
	ldx	<L840+menu_0+2
	lda	<L840+menu_0
L847:
	tay
	lda	<L840+2
	sta	<L840+2+4
	lda	<L840+1
	sta	<L840+1+4
	pld
	tsc
	clc
	adc	#L840+4
	tcs
	tya
	rtl
;}
	.line	2885
	.endblock	2885
L840	equ	34
L841	equ	9
	ends
	efunc
	.endfunc	2885,9,34
	.line	2885
	data
L839:
	db	$6B,$5F,$72,$65,$6E,$64,$65,$72,$5F,$6D,$65,$6E,$75,$3A,$6D
	db	$65,$6E,$75,$2D,$3E,$63,$78,$3A,$00,$6B,$5F,$72,$65,$6E,$64
	db	$65,$72,$5F,$6D,$65,$6E,$75,$3A,$6D,$65,$6E,$75,$2D,$3E,$63
	db	$79,$3A,$00,$6B,$5F,$72,$65,$6E,$64,$65,$72,$5F,$6D,$65,$6E
	db	$75,$3A,$6D,$65,$6E,$75,$2D,$3E,$68,$65,$69,$67,$68,$74,$3A
	db	$00,$6B,$5F,$72,$65,$6E,$64,$65,$72,$5F,$6D,$65,$6E,$75,$3A
	db	$6D,$65,$6E,$75,$2D,$3E,$77,$69,$64,$74,$68,$3A,$00
	ends
;
;void k_draw_ui_window(int cx,int cy,int height,int width,char FAR *title,int color, int bgcolor)
;{
	.line	2887
	.line	2888
	GUI
	xdef	~~k_draw_ui_window
	func
	.function	2888
~~k_draw_ui_window:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L849
	tcs
	phd
	tcd
cx_0	set	4
cy_0	set	6
height_0	set	8
width_0	set	10
title_0	set	12
color_0	set	16
bgcolor_0	set	18
	.block	2888
;	FONTMETRIC metric;
;	
;	int i = 0;
;	
;	int borderTitle = 10;
;	int borderWidth = 2;
;
;	int titleOffsetX = cx+2;
;	int titleOffsetY = cy+2;
;	int titleScaler = 0;
;	
;	int clientOffsetX = cx+borderWidth+2;
;	int clientOffsetY = cy+borderTitle+1;
;	
;	int currX = clientOffsetX;
;	int currY = clientOffsetY;
;	
;	int endX = width + cx - borderWidth;
;	
;	k_draw_filled_rect(cx,cy,height,width,color);	
metric_1	set	0
i_1	set	4
borderTitle_1	set	6
borderWidth_1	set	8
titleOffsetX_1	set	10
titleOffsetY_1	set	12
titleScaler_1	set	14
clientOffsetX_1	set	16
clientOffsetY_1	set	18
currX_1	set	20
currY_1	set	22
endX_1	set	24
	.sym	metric,0,10,1,32,32
	.sym	i,4,5,1,16
	.sym	borderTitle,6,5,1,16
	.sym	borderWidth,8,5,1,16
	.sym	titleOffsetX,10,5,1,16
	.sym	titleOffsetY,12,5,1,16
	.sym	titleScaler,14,5,1,16
	.sym	clientOffsetX,16,5,1,16
	.sym	clientOffsetY,18,5,1,16
	.sym	currX,20,5,1,16
	.sym	currY,22,5,1,16
	.sym	endX,24,5,1,16
	.sym	cx,4,5,6,16
	.sym	cy,6,5,6,16
	.sym	height,8,5,6,16
	.sym	width,10,5,6,16
	.sym	title,12,142,6,32
	.sym	color,16,5,6,16
	.sym	bgcolor,18,5,6,16
	stz	<L850+i_1
	lda	#$a
	sta	<L850+borderTitle_1
	lda	#$2
	sta	<L850+borderWidth_1
	clc
	lda	#$2
	adc	<L849+cx_0
	sta	<L850+titleOffsetX_1
	clc
	lda	#$2
	adc	<L849+cy_0
	sta	<L850+titleOffsetY_1
	stz	<L850+titleScaler_1
	clc
	lda	<L849+cx_0
	adc	<L850+borderWidth_1
	sta	<R0
	clc
	lda	#$2
	adc	<R0
	sta	<L850+clientOffsetX_1
	clc
	lda	<L849+cy_0
	adc	<L850+borderTitle_1
	sta	<R0
	lda	<R0
	ina
	sta	<L850+clientOffsetY_1
	lda	<L850+clientOffsetX_1
	sta	<L850+currX_1
	lda	<L850+clientOffsetY_1
	sta	<L850+currY_1
	clc
	lda	<L849+width_0
	adc	<L849+cx_0
	sta	<R0
	sec
	lda	<R0
	sbc	<L850+borderWidth_1
	sta	<L850+endX_1
	.line	2908
	pei	<L849+color_0
	pei	<L849+width_0
	pei	<L849+height_0
	pei	<L849+cy_0
	pei	<L849+cx_0
	jsl	~~k_draw_filled_rect
;	k_draw_filled_rect(cx+borderWidth,cy+borderTitle,
	.line	2909
;	                   height - borderTitle - borderWidth,
;					   width - borderWidth - borderWidth,
;					   bgcolor);
	pei	<L849+bgcolor_0
	sec
	lda	<L849+width_0
	sbc	<L850+borderWidth_1
	sta	<R0
	sec
	lda	<R0
	sbc	<L850+borderWidth_1
	pha
	sec
	lda	<L849+height_0
	sbc	<L850+borderTitle_1
	sta	<R0
	sec
	lda	<R0
	sbc	<L850+borderWidth_1
	pha
	clc
	lda	<L849+cy_0
	adc	<L850+borderTitle_1
	pha
	clc
	lda	<L849+cx_0
	adc	<L850+borderWidth_1
	pha
	jsl	~~k_draw_filled_rect
;	
;	k_get_font_metrics(&metric);
	.line	2914
	pea	#0
	clc
	tdc
	adc	#<L850+metric_1
	pha
	jsl	~~k_get_font_metrics
;	
;	
;	title = strupr(title);
	.line	2917
	pei	<L849+title_0+2
	pei	<L849+title_0
	jsl	~~strupr
	sta	<L849+title_0
	stx	<L849+title_0+2
;	
;	titleOffsetX+=k_put_wingadget_point(WINICON_TITLE_ACLOSE,titleOffsetX,titleOffsetY,14);	
	.line	2919
	pea	#<$e
	pei	<L850+titleOffsetY_1
	pei	<L850+titleOffsetX_1
	pea	#<$5
	jsl	~~k_put_wingadget_point
	sta	<R0
	clc
	lda	<R0
	adc	<L850+titleOffsetX_1
	sta	<L850+titleOffsetX_1
;	
;	titleScaler = (int)(width / metric.width - 4);
	.line	2921
	lda	<L849+width_0
	ldx	<L850+metric_1
	xref	~~~div
	jsl	~~~div
	sta	<R0
	clc
	lda	#$fffc
	adc	<R0
	sta	<L850+titleScaler_1
;	for(i=0;i<titleScaler;i++)
	.line	2922
	stz	<L850+i_1
	brl	L10359
L10358:
;	{
	.line	2923
;		titleOffsetX+=k_put_wingadget_point(WINICON_TITLE_LINES,titleOffsetX,titleOffsetY,14);	
	.line	2924
	pea	#<$e
	pei	<L850+titleOffsetY_1
	pei	<L850+titleOffsetX_1
	pea	#<$1
	jsl	~~k_put_wingadget_point
	sta	<R0
	clc
	lda	<R0
	adc	<L850+titleOffsetX_1
	sta	<L850+titleOffsetX_1
;	}
	.line	2925
L10356:
	inc	<L850+i_1
L10359:
	sec
	lda	<L850+i_1
	sbc	<L850+titleScaler_1
	bvs	L852
	eor	#$8000
L852:
	bmi	L853
	brl	L10358
L853:
L10357:
;	/*
;	titleOffsetX+=k_put_wingadget_point(WINICON_TITLE_BACK,titleOffsetX,titleOffsetY,14);
;	titleOffsetX+=2;
;	titleOffsetX+=k_put_wingadget_point(WINICON_TITLE_FRONT,titleOffsetX,titleOffsetY,14);
;	*/
;	
;	k_put_wingadget_point(WINICON_TITLE_BACK,endX - (metric.width*2 + 2),titleOffsetY,14);
	.line	2932
	pea	#<$e
	pei	<L850+titleOffsetY_1
	lda	<L850+metric_1
	asl	A
	sta	<R0
	clc
	lda	#$2
	adc	<R0
	sta	<R1
	sec
	lda	<L850+endX_1
	sbc	<R1
	pha
	pea	#<$4
	jsl	~~k_put_wingadget_point
;	k_put_wingadget_point(WINICON_TITLE_FRONT,endX - (metric.width),titleOffsetY,14);
	.line	2933
	pea	#<$e
	pei	<L850+titleOffsetY_1
	sec
	lda	<L850+endX_1
	sbc	<L850+metric_1
	pha
	pea	#<$3
	jsl	~~k_put_wingadget_point
;	
;	
;	for(i=0;i<=strlen(title);i++)
	.line	2936
	stz	<L850+i_1
	brl	L10363
L10362:
;	{
	.line	2937
;		k_put_wingadget_point(WINICON_BLOCK,cx+2+metric.width+(metric.width*i),titleOffsetY,15);	
	.line	2938
	pea	#<$f
	pei	<L850+titleOffsetY_1
	lda	<L850+metric_1
	ldx	<L850+i_1
	xref	~~~mul
	jsl	~~~mul
	sta	<R0
	clc
	lda	<R0
	adc	<L849+cx_0
	sta	<R1
	clc
	lda	<R1
	adc	<L850+metric_1
	sta	<R0
	clc
	lda	#$2
	adc	<R0
	pha
	pea	#<$0
	jsl	~~k_put_wingadget_point
;	}
	.line	2939
L10360:
	inc	<L850+i_1
L10363:
	pei	<L849+title_0+2
	pei	<L849+title_0
	jsl	~~strlen
	sta	<R0
	lda	<R0
	cmp	<L850+i_1
	bcc	L854
	brl	L10362
L854:
L10361:
;	k_draw_text_point(title,cx+2+metric.width,titleOffsetY,0);
	.line	2940
	pea	#<$0
	pei	<L850+titleOffsetY_1
	clc
	lda	<L849+cx_0
	adc	<L850+metric_1
	sta	<R0
	clc
	lda	#$2
	adc	<R0
	pha
	pei	<L849+title_0+2
	pei	<L849+title_0
	jsl	~~k_draw_text_point
;	
;	/*
;	k_put_wingadget_point(0x01,titleOffsetX,titleOffsetY,14);	
;	titleOffsetX+=metric.width;
;	
;	titleOffsetX+=k_draw_text_point(title,titleOffsetX,titleOffsetY,0);
;	titleOffsetX+=metric.width;
;	k_put_wingadget_point(0x00,titleOffsetX,titleOffsetY,14);	
;	titleOffsetX+=metric.width;
;	k_put_wingadget_point(0x00,titleOffsetX,titleOffsetY,14);	
;	titleOffsetX+=metric.width;
;	k_put_wingadget_point(0x00,titleOffsetX,titleOffsetY,14);	
;	*/
;	
;	k_draw_text_point("READY.",currX,currY,15);
	.line	2955
	pea	#<$f
	pei	<L850+currY_1
	pei	<L850+currX_1
	pea	#^L848
	pea	#<L848
	jsl	~~k_draw_text_point
;	currY+=metric.height;	
	.line	2956
	clc
	lda	<L850+currY_1
	adc	<L850+metric_1+2
	sta	<L850+currY_1
;	k_draw_text_point("10 PRINT \"HELLO WORLD!\"",currX,currY,15);
	.line	2957
	pea	#<$f
	pei	<L850+currY_1
	pei	<L850+currX_1
	pea	#^L848+7
	pea	#<L848+7
	jsl	~~k_draw_text_point
;	currY+=metric.height;
	.line	2958
	clc
	lda	<L850+currY_1
	adc	<L850+metric_1+2
	sta	<L850+currY_1
;	k_draw_text_point("RUN",currX,currY,15);
	.line	2959
	pea	#<$f
	pei	<L850+currY_1
	pei	<L850+currX_1
	pea	#^L848+31
	pea	#<L848+31
	jsl	~~k_draw_text_point
;	currY+=metric.height;
	.line	2960
	clc
	lda	<L850+currY_1
	adc	<L850+metric_1+2
	sta	<L850+currY_1
;	k_draw_text_point("HELLO WORLD!",currX,currY,15);
	.line	2961
	pea	#<$f
	pei	<L850+currY_1
	pei	<L850+currX_1
	pea	#^L848+35
	pea	#<L848+35
	jsl	~~k_draw_text_point
;}
	.line	2962
L855:
	lda	<L849+2
	sta	<L849+2+16
	lda	<L849+1
	sta	<L849+1+16
	pld
	tsc
	clc
	adc	#L849+16
	tcs
	rtl
	.endblock	2962
L849	equ	34
L850	equ	9
	ends
	efunc
	.endfunc	2962,9,34
	.line	2962
	data
L848:
	db	$52,$45,$41,$44,$59,$2E,$00,$31,$30,$20,$50,$52,$49,$4E,$54
	db	$20,$22,$48,$45,$4C,$4C,$4F,$20,$57,$4F,$52,$4C,$44,$21,$22
	db	$00,$52,$55,$4E,$00,$48,$45,$4C,$4C,$4F,$20,$57,$4F,$52,$4C
	db	$44,$21,$00
	ends
;
;
;void k_paint_brush_rect(long x,long y,int width,int height,BYTE pattern)
;{
	.line	2965
	.line	2966
	GUI
	xdef	~~k_paint_brush_rect
	func
	.function	2966
~~k_paint_brush_rect:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L857
	tcs
	phd
	tcd
x_0	set	4
y_0	set	8
width_0	set	12
height_0	set	14
pattern_0	set	16
	.block	2966
;	ULONG pos = 0L;
;	BOOL odd = FALSE;
;	long startLocation = (long)(( ((long)y) * 640L) + ((long)x) );
;	long endLocation   = (long)(( ((long)479) * 640L) + ((long)639) );
;
;	///k_paint_brush_at_address((char FAR * )pixelLocation, width, height,pattern);
;
;	for(pos=0;pos<479;pos++)
pos_1	set	0
odd_1	set	4
startLocation_1	set	5
endLocation_1	set	9
	.sym	pos,0,18,1,32
	.sym	odd,4,14,1,8
	.sym	startLocation,5,7,1,32
	.sym	endLocation,9,7,1,32
	.sym	x,4,7,6,32
	.sym	y,8,7,6,32
	.sym	width,12,5,6,16
	.sym	height,14,5,6,16
	.sym	pattern,16,14,6,8
	stz	<L858+pos_1
	stz	<L858+pos_1+2
	sep	#$20
	longa	off
	stz	<L858+odd_1
	rep	#$20
	longa	on
	pea	#^$280
	pea	#<$280
	pei	<L857+y_0+2
	pei	<L857+y_0
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R0
	stx	<R0+2
	clc
	lda	<R0
	adc	<L857+x_0
	sta	<L858+startLocation_1
	lda	<R0+2
	adc	<L857+x_0+2
	sta	<L858+startLocation_1+2
	lda	#$afff
	sta	<L858+endLocation_1
	lda	#$4
	sta	<L858+endLocation_1+2
	.line	2974
	stz	<L858+pos_1
	stz	<L858+pos_1+2
L10366:
;	{
	.line	2975
;		if(odd)
	.line	2976
;		{
	lda	<L858+odd_1
	and	#$ff
	bne	L860
	brl	L10367
L860:
	.line	2977
;			memcpy( (LPCHAR)(0xB00000 + ((long)pos) * 640L)   ,BG_FILL_LINE_ODD,80);
	.line	2978
	pea	#<$50
	lda	#<~~BG_FILL_LINE_ODD
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^$280
	pea	#<$280
	pei	<L858+pos_1+2
	pei	<L858+pos_1
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R1
	stx	<R1+2
	clc
	lda	#$0
	adc	<R1
	sta	<R2
	lda	#$b0
	adc	<R1+2
	sta	<R2+2
	pei	<R2+2
	pei	<R2
	jsl	~~memcpy
;		}
	.line	2979
;		else
	brl	L10368
L10367:
;		{
	.line	2981
;			memcpy( (LPCHAR)(0xB00000 + ((long)pos) * 640L) ,BG_FILL_LINE_EVEN,80);
	.line	2982
	pea	#<$50
	lda	#<~~BG_FILL_LINE_EVEN
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^$280
	pea	#<$280
	pei	<L858+pos_1+2
	pei	<L858+pos_1
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R1
	stx	<R1+2
	clc
	lda	#$0
	adc	<R1
	sta	<R2
	lda	#$b0
	adc	<R1+2
	sta	<R2+2
	pei	<R2+2
	pei	<R2
	jsl	~~memcpy
;
;		}
	.line	2984
L10368:
;		odd=!odd;
	.line	2985
	stz	<R0
	lda	<L858+odd_1
	and	#$ff
	beq	L862
	brl	L861
L862:
	inc	<R0
L861:
	sep	#$20
	longa	off
	lda	<R0
	sta	<L858+odd_1
	rep	#$20
	longa	on
;	}
	.line	2986
L10364:
	inc	<L858+pos_1
	bne	L863
	inc	<L858+pos_1+2
L863:
	lda	<L858+pos_1
	cmp	#<$1df
	lda	<L858+pos_1+2
	sbc	#^$1df
	bcs	L864
	brl	L10366
L864:
L10365:
;
;
;
;	return;
	.line	2990
L865:
	lda	<L857+2
	sta	<L857+2+14
	lda	<L857+1
	sta	<L857+1+14
	pld
	tsc
	clc
	adc	#L857+14
	tcs
	rtl
;}
	.line	2991
	.endblock	2991
L857	equ	25
L858	equ	13
	ends
	efunc
	.endfunc	2991,13,25
	.line	2991
;
;void k_paint_brush_at_address(char FAR * pdst,int width,int height,BYTE pattern)
;{
	.line	2993
	.line	2994
	GUI
	xdef	~~k_paint_brush_at_address
	func
	.function	2994
~~k_paint_brush_at_address:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L866
	tcs
	phd
	tcd
pdst_0	set	4
width_0	set	8
height_0	set	10
pattern_0	set	12
	.block	2994
;	int pos = 0;
;	int spinLock = 0;
;	char status = VDMA_STAT_VDMA_IPS;
;
;
;	while(status == VDMA_STAT_VDMA_IPS)
pos_1	set	0
spinLock_1	set	2
status_1	set	4
	.sym	pos,0,5,1,16
	.sym	spinLock,2,5,1,16
	.sym	status,4,14,1,8
	.sym	pdst,4,142,6,32
	.sym	width,8,5,6,16
	.sym	height,10,5,6,16
	.sym	pattern,12,14,6,8
	stz	<L867+pos_1
	stz	<L867+spinLock_1
	sep	#$20
	longa	off
	lda	#$80
	sta	<L867+status_1
	rep	#$20
	longa	on
	.line	3000
L10369:
	sep	#$20
	longa	off
	lda	<L867+status_1
	cmp	#<$80
	rep	#$20
	longa	on
	beq	L869
	brl	L10370
L869:
;	{
	.line	3001
;		status = (VDMA_STATUS_REG[0] & VDMA_STAT_VDMA_IPS);
	.line	3002
	sep	#$20
	longa	off
	lda	>11469825
	and	#<$80
	sta	<L867+status_1
	rep	#$20
	longa	on
;	}
	.line	3003
	brl	L10369
L10370:
;
;	VDMA_CONTROL_REG[0] = VDMA_CTRL_ENABLE | VDMA_CTRL_TRF_FILL;
	.line	3005
	sep	#$20
	longa	off
	lda	#$5
	sta	>11469824
	rep	#$20
	longa	on
;
;	*BM_START_ADDY_L = 0x00;
	.line	3007
	sep	#$20
	longa	off
	lda	#$0
	sta	>11469121
	rep	#$20
	longa	on
;	*BM_START_ADDY_M = 0x00;
	.line	3008
	sep	#$20
	longa	off
	lda	#$0
	sta	>11469122
	rep	#$20
	longa	on
;	*BM_START_ADDY_H = 0x00;
	.line	3009
	sep	#$20
	longa	off
	lda	#$0
	sta	>11469123
	rep	#$20
	longa	on
;	*((char FAR*)0xAF1F80) = 0x02;
	.line	3010
	sep	#$20
	longa	off
	lda	#$2
	sta	>11476864
	rep	#$20
	longa	on
;
;	*BM_X_SIZE_L = 0x80;
	.line	3012
	sep	#$20
	longa	off
	lda	#$80
	sta	>11469124
	rep	#$20
	longa	on
;	*BM_X_SIZE_H = 0x02;
	.line	3013
	sep	#$20
	longa	off
	lda	#$2
	sta	>11469125
	rep	#$20
	longa	on
;	*BM_Y_SIZE_L = 0xE0;
	.line	3014
	sep	#$20
	longa	off
	lda	#$e0
	sta	>11469126
	rep	#$20
	longa	on
;	*BM_Y_SIZE_H = 0x01;
	.line	3015
	sep	#$20
	longa	off
	lda	#$1
	sta	>11469127
	rep	#$20
	longa	on
;
;	*VDMA_X_SIZE_L = LOBYTE(width);
	.line	3017
	sep	#$20
	longa	off
	lda	<L866+width_0
	sta	>11469832
	rep	#$20
	longa	on
;	*VDMA_X_SIZE_H = HIBYTE(width);
	.line	3018
	lda	<L866+width_0
	ldx	#<$8
	xref	~~~asr
	jsl	~~~asr
	and	#<$ff
	sta	<R0
	sep	#$20
	longa	off
	lda	<R0
	sta	>11469833
	rep	#$20
	longa	on
;
;	*VDMA_Y_SIZE_L = LOBYTE(height);
	.line	3020
	sep	#$20
	longa	off
	lda	<L866+height_0
	sta	>11469834
	rep	#$20
	longa	on
;	*VDMA_Y_SIZE_H = HIBYTE(height);
	.line	3021
	lda	<L866+height_0
	ldx	#<$8
	xref	~~~asr
	jsl	~~~asr
	and	#<$ff
	sta	<R0
	sep	#$20
	longa	off
	lda	<R0
	sta	>11469835
	rep	#$20
	longa	on
;
;	*VDMA_DST_STRIDE_L = 0x80;
	.line	3023
	sep	#$20
	longa	off
	lda	#$80
	sta	>11469838
	rep	#$20
	longa	on
;	*VDMA_DST_STRIDE_H	= 0x02;
	.line	3024
	sep	#$20
	longa	off
	lda	#$2
	sta	>11469839
	rep	#$20
	longa	on
;
;
;	VDMA_DST_ADDY_L[0] = L24BYTE((long)pdst);
	.line	3027
	sep	#$20
	longa	off
	lda	<L866+pdst_0
	sta	>11469829
	rep	#$20
	longa	on
;	VDMA_DST_ADDY_M[0] = M24BYTE((long)pdst);
	.line	3028
	pei	<L866+pdst_0+2
	pei	<L866+pdst_0
	lda	#$8
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R0
	stx	<R0+2
	lda	<R0
	and	#<$ff
	sta	<R1
	stz	<R1+2
	sep	#$20
	longa	off
	lda	<R1
	sta	>11469830
	rep	#$20
	longa	on
;	VDMA_DST_ADDY_H[0] = H24BYTE((long)pdst);
	.line	3029
	pei	<L866+pdst_0+2
	pei	<L866+pdst_0
	lda	#$10
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R0
	stx	<R0+2
	lda	<R0
	and	#<$ff
	sta	<R1
	stz	<R1+2
	sep	#$20
	longa	off
	lda	<R1
	sta	>11469831
	rep	#$20
	longa	on
;
;	VDMA_BYTE_2_WRITE[0] = pattern;
	.line	3031
	sep	#$20
	longa	off
	lda	<L866+pattern_0
	sta	>11469825
	rep	#$20
	longa	on
;
;	VDMA_CONTROL_REG[0]  = (VDMA_CTRL_ENABLE | VDMA_CTRL_TRF_FILL | VDMA_CTRL_START_TRF);
	.line	3033
	sep	#$20
	longa	off
	lda	#$85
	sta	>11469824
	rep	#$20
	longa	on
;
;
;   return ;
	.line	3036
L870:
	lda	<L866+2
	sta	<L866+2+10
	lda	<L866+1
	sta	<L866+1+10
	pld
	tsc
	clc
	adc	#L866+10
	tcs
	rtl
;}
	.line	3037
	.endblock	3037
L866	equ	13
L867	equ	9
	ends
	efunc
	.endfunc	3037,9,13
	.line	3037
;
;void k_vdma_move_rect(long x,long y,int width,int height,int dx,int dy,unsigned char pcolor,UINT page)
;{
	.line	3039
	.line	3040
	GUI
	xdef	~~k_vdma_move_rect
	func
	.function	3040
~~k_vdma_move_rect:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L871
	tcs
	phd
	tcd
x_0	set	4
y_0	set	8
width_0	set	12
height_0	set	14
dx_0	set	16
dy_0	set	18
pcolor_0	set	20
page_0	set	22
	.block	3040
;	int slice = 0;
;
;
;
;
;	if(dx > 0)
slice_1	set	0
	.sym	slice,0,5,1,16
	.sym	x,4,7,6,32
	.sym	y,8,7,6,32
	.sym	width,12,5,6,16
	.sym	height,14,5,6,16
	.sym	dx,16,5,6,16
	.sym	dy,18,5,6,16
	.sym	pcolor,20,14,6,8
	.sym	page,22,16,6,16
	stz	<L872+slice_1
	.line	3046
;	{
	sec
	lda	#$0
	sbc	<L871+dx_0
	bvs	L874
	eor	#$8000
L874:
	bpl	L875
	brl	L10371
L875:
	.line	3047
;		slice = dx;
	.line	3048
	lda	<L871+dx_0
	sta	<L872+slice_1
;		k_vdma_fill_rect_ex(x+width,y,slice,height,pcolor,page);
	.line	3049
	pei	<L871+page_0
	pei	<L871+pcolor_0
	pei	<L871+height_0
	pei	<L872+slice_1
	pei	<L871+y_0+2
	pei	<L871+y_0
	ldy	#$0
	lda	<L871+width_0
	bpl	L876
	dey
L876:
	sta	<R0
	sty	<R0+2
	clc
	lda	<R0
	adc	<L871+x_0
	sta	<R1
	lda	<R0+2
	adc	<L871+x_0+2
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect_ex
;		k_vdma_fill_rect_ex(x-dx,y,slice,height,FILLCOLOR_TRANSPARENT,page);
	.line	3050
	pei	<L871+page_0
	pea	#<$0
	pei	<L871+height_0
	pei	<L872+slice_1
	pei	<L871+y_0+2
	pei	<L871+y_0
	ldy	#$0
	lda	<L871+dx_0
	bpl	L877
	dey
L877:
	sta	<R0
	sty	<R0+2
	sec
	lda	<L871+x_0
	sbc	<R0
	sta	<R1
	lda	<L871+x_0+2
	sbc	<R0+2
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect_ex
;	}
	.line	3051
;	else if (dx < 0)
	brl	L10372
L10371:
	.line	3052
;	{
	lda	<L871+dx_0
	bmi	L878
	brl	L10373
L878:
	.line	3053
;		slice = (-1*dx);
	.line	3054
	sec
	lda	#$0
	sbc	<L871+dx_0
	sta	<L872+slice_1
;		k_vdma_fill_rect_ex(x+dx,y,slice,height,pcolor,page);
	.line	3055
	pei	<L871+page_0
	pei	<L871+pcolor_0
	pei	<L871+height_0
	pei	<L872+slice_1
	pei	<L871+y_0+2
	pei	<L871+y_0
	ldy	#$0
	lda	<L871+dx_0
	bpl	L879
	dey
L879:
	sta	<R0
	sty	<R0+2
	clc
	lda	<R0
	adc	<L871+x_0
	sta	<R1
	lda	<R0+2
	adc	<L871+x_0+2
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect_ex
;		k_vdma_fill_rect_ex(x+width-slice,y,slice,height,FILLCOLOR_TRANSPARENT,page);
	.line	3056
	pei	<L871+page_0
	pea	#<$0
	pei	<L871+height_0
	pei	<L872+slice_1
	pei	<L871+y_0+2
	pei	<L871+y_0
	ldy	#$0
	lda	<L872+slice_1
	bpl	L880
	dey
L880:
	sta	<R0
	sty	<R0+2
	ldy	#$0
	lda	<L871+width_0
	bpl	L881
	dey
L881:
	sta	<R1
	sty	<R1+2
	clc
	lda	<R1
	adc	<L871+x_0
	sta	<R2
	lda	<R1+2
	adc	<L871+x_0+2
	sta	<R2+2
	sec
	lda	<R2
	sbc	<R0
	sta	<R1
	lda	<R2+2
	sbc	<R0+2
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect_ex
;	}
	.line	3057
;}
L10373:
L10372:
	.line	3058
L882:
	lda	<L871+2
	sta	<L871+2+20
	lda	<L871+1
	sta	<L871+1+20
	pld
	tsc
	clc
	adc	#L871+20
	tcs
	rtl
	.endblock	3058
L871	equ	14
L872	equ	13
	ends
	efunc
	.endfunc	3058,13,14
	.line	3058
;
;void k_vdma_fill_rect_ex(long x,long y,int width,int height,unsigned char pcolor,UINT page)
;{
	.line	3060
	.line	3061
	GUI
	xdef	~~k_vdma_fill_rect_ex
	func
	.function	3061
~~k_vdma_fill_rect_ex:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L883
	tcs
	phd
	tcd
x_0	set	4
y_0	set	8
width_0	set	12
height_0	set	14
pcolor_0	set	16
page_0	set	18
	.block	3061
;	long pixelLocation = (long)(( ((long)y) * (640L)) + ((long)x) );
;
;	k_debug_integer("k_vdma_fill_rect:",page);
pixelLocation_1	set	0
	.sym	pixelLocation,0,7,1,32
	.sym	x,4,7,6,32
	.sym	y,8,7,6,32
	.sym	width,12,5,6,16
	.sym	height,14,5,6,16
	.sym	pcolor,16,14,6,8
	.sym	page,18,16,6,16
	pea	#^$280
	pea	#<$280
	pei	<L883+y_0+2
	pei	<L883+y_0
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R0
	stx	<R0+2
	clc
	lda	<R0
	adc	<L883+x_0
	sta	<L884+pixelLocation_1
	lda	<R0+2
	adc	<L883+x_0+2
	sta	<L884+pixelLocation_1+2
	.line	3064
	pei	<L883+page_0
	pea	#^L856
	pea	#<L856
	jsl	~~k_debug_integer
;
;	k_vdma_fill_address_ex((char FAR * )pixelLocation, width, height,pcolor,page);
	.line	3066
	pei	<L883+page_0
	pei	<L883+pcolor_0
	pei	<L883+height_0
	pei	<L883+width_0
	pei	<L884+pixelLocation_1+2
	pei	<L884+pixelLocation_1
	jsl	~~k_vdma_fill_address_ex
;
;	return;
	.line	3068
L886:
	lda	<L883+2
	sta	<L883+2+16
	lda	<L883+1
	sta	<L883+1+16
	pld
	tsc
	clc
	adc	#L883+16
	tcs
	rtl
;}
	.line	3069
	.endblock	3069
L883	equ	8
L884	equ	5
	ends
	efunc
	.endfunc	3069,5,8
	.line	3069
	data
L856:
	db	$6B,$5F,$76,$64,$6D,$61,$5F,$66,$69,$6C,$6C,$5F,$72,$65,$63
	db	$74,$3A,$00
	ends
;
;void k_vdma_fill_rect(long x,long y,int width,int height,unsigned char pcolor)
;{
	.line	3071
	.line	3072
	GUI
	xdef	~~k_vdma_fill_rect
	func
	.function	3072
~~k_vdma_fill_rect:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L888
	tcs
	phd
	tcd
x_0	set	4
y_0	set	8
width_0	set	12
height_0	set	14
pcolor_0	set	16
	.block	3072
;	long pixelLocation = (long)(( ((long)y) * (640L)) + ((long)x) );
;
;	//k_debug_string("k_vdma_fill_rect V2\r\n");
;
;	//k_vdma_fill_address((char FAR * )pixelLocation, width - 2, height - 1,pcolor);
;	k_vdma_fill_address((char FAR * )pixelLocation, width, height,pcolor);
pixelLocation_1	set	0
	.sym	pixelLocation,0,7,1,32
	.sym	x,4,7,6,32
	.sym	y,8,7,6,32
	.sym	width,12,5,6,16
	.sym	height,14,5,6,16
	.sym	pcolor,16,14,6,8
	pea	#^$280
	pea	#<$280
	pei	<L888+y_0+2
	pei	<L888+y_0
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R0
	stx	<R0+2
	clc
	lda	<R0
	adc	<L888+x_0
	sta	<L889+pixelLocation_1
	lda	<R0+2
	adc	<L888+x_0+2
	sta	<L889+pixelLocation_1+2
	.line	3078
	pei	<L888+pcolor_0
	pei	<L888+height_0
	pei	<L888+width_0
	pei	<L889+pixelLocation_1+2
	pei	<L889+pixelLocation_1
	jsl	~~k_vdma_fill_address
;#ifdef FX_C256_USESHADOW
;	k_shadow_fill_rect(x,y, width, height, pcolor);
;#endif
;	//k_shadow_bitblt(x,y,width,height,x,y);
;
;	return;
	.line	3084
L891:
	lda	<L888+2
	sta	<L888+2+14
	lda	<L888+1
	sta	<L888+1+14
	pld
	tsc
	clc
	adc	#L888+14
	tcs
	rtl
;}
	.line	3085
	.endblock	3085
L888	equ	8
L889	equ	5
	ends
	efunc
	.endfunc	3085,5,8
	.line	3085
;
;void k_vdma_fill_address_old(char FAR * pdst,int width,int height,unsigned char data)
;{
	.line	3087
	.line	3088
	GUI
	xdef	~~k_vdma_fill_address_old
	func
	.function	3088
~~k_vdma_fill_address_old:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L892
	tcs
	phd
	tcd
pdst_0	set	4
width_0	set	8
height_0	set	10
data_0	set	12
	.block	3088
;	int pos = 0;
;	UINT spinLock = 0;
;	char status = VDMA_STAT_VDMA_IPS;
;
;	/*
;	while(status == VDMA_STAT_VDMA_IPS)
;	{
;		status = ( *VDMA_STATUS_REG & VDMA_STAT_VDMA_IPS);
;		spinLock++;
;
;		if(spinLock > 32000)
;		{
;			break;
;		}
;	}
;	k_debug_integer("k_vdma_fill_address1::spinLock:",spinLock);
;	*/
;	VDMA_CONTROL_REG[0] = VDMA_CTRL_ENABLE | VDMA_CTRL_1D_2D | VDMA_CTRL_TRF_FILL;
pos_1	set	0
spinLock_1	set	2
status_1	set	4
	.sym	pos,0,5,1,16
	.sym	spinLock,2,16,1,16
	.sym	status,4,14,1,8
	.sym	pdst,4,142,6,32
	.sym	width,8,5,6,16
	.sym	height,10,5,6,16
	.sym	data,12,14,6,8
	stz	<L893+pos_1
	stz	<L893+spinLock_1
	sep	#$20
	longa	off
	lda	#$80
	sta	<L893+status_1
	rep	#$20
	longa	on
	.line	3106
	sep	#$20
	longa	off
	lda	#$7
	sta	>11469824
	rep	#$20
	longa	on
;
;	VDMA_DST_ADDY_L[0] = L24BYTE((long)pdst);
	.line	3108
	sep	#$20
	longa	off
	lda	<L892+pdst_0
	sta	>11469829
	rep	#$20
	longa	on
;	VDMA_DST_ADDY_M[0] = M24BYTE((long)pdst);
	.line	3109
	pei	<L892+pdst_0+2
	pei	<L892+pdst_0
	lda	#$8
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R0
	stx	<R0+2
	lda	<R0
	and	#<$ff
	sta	<R1
	stz	<R1+2
	sep	#$20
	longa	off
	lda	<R1
	sta	>11469830
	rep	#$20
	longa	on
;	VDMA_DST_ADDY_H[0] = H24BYTE((long)pdst);
	.line	3110
	pei	<L892+pdst_0+2
	pei	<L892+pdst_0
	lda	#$10
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R0
	stx	<R0+2
	lda	<R0
	and	#<$ff
	sta	<R1
	stz	<R1+2
	sep	#$20
	longa	off
	lda	<R1
	sta	>11469831
	rep	#$20
	longa	on
;
;	*BM_START_ADDY_L = 0x00;
	.line	3112
	sep	#$20
	longa	off
	lda	#$0
	sta	>11469121
	rep	#$20
	longa	on
;	*BM_START_ADDY_M = 0x00;
	.line	3113
	sep	#$20
	longa	off
	lda	#$0
	sta	>11469122
	rep	#$20
	longa	on
;	*BM_START_ADDY_H = 0x00;
	.line	3114
	sep	#$20
	longa	off
	lda	#$0
	sta	>11469123
	rep	#$20
	longa	on
;	*((char FAR*)0xAF1F80) = 0x02;
	.line	3115
	sep	#$20
	longa	off
	lda	#$2
	sta	>11476864
	rep	#$20
	longa	on
;	
;	*BM_X_SIZE_L = 0x80;
	.line	3117
	sep	#$20
	longa	off
	lda	#$80
	sta	>11469124
	rep	#$20
	longa	on
;	*BM_X_SIZE_H = 0x02;	
	.line	3118
	sep	#$20
	longa	off
	lda	#$2
	sta	>11469125
	rep	#$20
	longa	on
;	*BM_Y_SIZE_L = 0xE0;
	.line	3119
	sep	#$20
	longa	off
	lda	#$e0
	sta	>11469126
	rep	#$20
	longa	on
;	*BM_Y_SIZE_H = 0x01;
	.line	3120
	sep	#$20
	longa	off
	lda	#$1
	sta	>11469127
	rep	#$20
	longa	on
;
;	width+=(width & 0x0001);
	.line	3122
	lda	<L892+width_0
	and	#<$1
	sta	<R0
	clc
	lda	<L892+width_0
	adc	<R0
	sta	<L892+width_0
;
;	*VDMA_X_SIZE_L = LOBYTE(width);
	.line	3124
	sep	#$20
	longa	off
	lda	<L892+width_0
	sta	>11469832
	rep	#$20
	longa	on
;	*VDMA_X_SIZE_H = HIBYTE(width);
	.line	3125
	lda	<L892+width_0
	ldx	#<$8
	xref	~~~asr
	jsl	~~~asr
	and	#<$ff
	sta	<R0
	sep	#$20
	longa	off
	lda	<R0
	sta	>11469833
	rep	#$20
	longa	on
;
;	*VDMA_Y_SIZE_L = LOBYTE(height);
	.line	3127
	sep	#$20
	longa	off
	lda	<L892+height_0
	sta	>11469834
	rep	#$20
	longa	on
;	*VDMA_Y_SIZE_H = HIBYTE(height);
	.line	3128
	lda	<L892+height_0
	ldx	#<$8
	xref	~~~asr
	jsl	~~~asr
	and	#<$ff
	sta	<R0
	sep	#$20
	longa	off
	lda	<R0
	sta	>11469835
	rep	#$20
	longa	on
;
;	*VDMA_DST_STRIDE_L  = 0x80;
	.line	3130
	sep	#$20
	longa	off
	lda	#$80
	sta	>11469838
	rep	#$20
	longa	on
;	*VDMA_DST_STRIDE_H	= 0x02;
	.line	3131
	sep	#$20
	longa	off
	lda	#$2
	sta	>11469839
	rep	#$20
	longa	on
;	
;
;	VDMA_DST_ADDY_L[0] = L24BYTE((long)pdst);
	.line	3134
	sep	#$20
	longa	off
	lda	<L892+pdst_0
	sta	>11469829
	rep	#$20
	longa	on
;	VDMA_DST_ADDY_M[0] = M24BYTE((long)pdst);
	.line	3135
	pei	<L892+pdst_0+2
	pei	<L892+pdst_0
	lda	#$8
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R0
	stx	<R0+2
	lda	<R0
	and	#<$ff
	sta	<R1
	stz	<R1+2
	sep	#$20
	longa	off
	lda	<R1
	sta	>11469830
	rep	#$20
	longa	on
;	VDMA_DST_ADDY_H[0] = H24BYTE((long)pdst);
	.line	3136
	pei	<L892+pdst_0+2
	pei	<L892+pdst_0
	lda	#$10
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R0
	stx	<R0+2
	lda	<R0
	and	#<$ff
	sta	<R1
	stz	<R1+2
	sep	#$20
	longa	off
	lda	<R1
	sta	>11469831
	rep	#$20
	longa	on
;
;	VDMA_BYTE_2_WRITE[0] = (char)data;
	.line	3138
	sep	#$20
	longa	off
	lda	<L892+data_0
	sta	>11469825
	rep	#$20
	longa	on
;	
;	VDMA_CONTROL_REG[0]  = (VDMA_CTRL_ENABLE | VDMA_CTRL_1D_2D | VDMA_CTRL_TRF_FILL | VDMA_CTRL_START_TRF);//0x87;
	.line	3140
	sep	#$20
	longa	off
	lda	#$87
	sta	>11469824
	rep	#$20
	longa	on
;
;
;	status = VDMA_STAT_VDMA_IPS;
	.line	3143
	sep	#$20
	longa	off
	lda	#$80
	sta	<L893+status_1
	rep	#$20
	longa	on
;	while(status == VDMA_STAT_VDMA_IPS)
	.line	3144
L10374:
	sep	#$20
	longa	off
	lda	<L893+status_1
	cmp	#<$80
	rep	#$20
	longa	on
	beq	L895
	brl	L10375
L895:
;	{
	.line	3145
;		status = ( *VDMA_STATUS_REG & VDMA_STAT_VDMA_IPS);
	.line	3146
	sep	#$20
	longa	off
	lda	>11469825
	and	#<$80
	sta	<L893+status_1
	rep	#$20
	longa	on
;		spinLock++;
	.line	3147
	inc	<L893+spinLock_1
;
;		if(spinLock > 32000)
	.line	3149
;		{
	lda	#$7d00
	cmp	<L893+spinLock_1
	bcc	L896
	brl	L10376
L896:
	.line	3150
;			break;
	.line	3151
	brl	L10375
;		}
	.line	3152
;	}
L10376:
	.line	3153
	brl	L10374
L10375:
;	k_debug_integer("k_vdma_fill_address2::spinLock:",spinLock);
	.line	3154
	pei	<L893+spinLock_1
	pea	#^L887
	pea	#<L887
	jsl	~~k_debug_integer
;
;
;
;	/*
;	while(status == VDMA_STAT_VDMA_IPS)
;	{
;		status = ( *((unsigned char *)0xAF0401) & VDMA_STAT_VDMA_IPS);
;	}
;	
;	
;	while(status == VDMA_STAT_VDMA_IPS)
;	{
;		#asm
;		PHA 
;        LDA $AF0401
;        AND #$80
;        CMP #$80
;        STA %%status
;		PLA
;		#endasm
;	}
;	*/
;	
;   //return *VDMA_STATUS_REG;
;   //return VDMA_STATUS_REG[0];
;   //VDMA_CONTROL_REG[0] = (char)0x00;
;   
;   return ;
	.line	3182
L897:
	lda	<L892+2
	sta	<L892+2+10
	lda	<L892+1
	sta	<L892+1+10
	pld
	tsc
	clc
	adc	#L892+10
	tcs
	rtl
;}
	.line	3183
	.endblock	3183
L892	equ	13
L893	equ	9
	ends
	efunc
	.endfunc	3183,9,13
	.line	3183
	data
L887:
	db	$6B,$5F,$76,$64,$6D,$61,$5F,$66,$69,$6C,$6C,$5F,$61,$64,$64
	db	$72,$65,$73,$73,$32,$3A,$3A,$73,$70,$69,$6E,$4C,$6F,$63,$6B
	db	$3A,$00
	ends
;
;void k_vdma_fill_address(char FAR * pdst,int width,int height,unsigned char data)
;{
	.line	3185
	.line	3186
	GUI
	xdef	~~k_vdma_fill_address
	func
	.function	3186
~~k_vdma_fill_address:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L899
	tcs
	phd
	tcd
pdst_0	set	4
width_0	set	8
height_0	set	10
data_0	set	12
	.block	3186
;	int pos = 0;
;	UINT spinLock = 0;
;	char status = VDMA_STAT_VDMA_IPS;
;
;	VDMA_CONTROL_REG[0] = ( VDMA_CTRL_ENABLE | VDMA_CTRL_TRF_FILL | VDMA_CTRL_1D_2D );
pos_1	set	0
spinLock_1	set	2
status_1	set	4
	.sym	pos,0,5,1,16
	.sym	spinLock,2,16,1,16
	.sym	status,4,14,1,8
	.sym	pdst,4,142,6,32
	.sym	width,8,5,6,16
	.sym	height,10,5,6,16
	.sym	data,12,14,6,8
	stz	<L900+pos_1
	stz	<L900+spinLock_1
	sep	#$20
	longa	off
	lda	#$80
	sta	<L900+status_1
	rep	#$20
	longa	on
	.line	3191
	sep	#$20
	longa	off
	lda	#$7
	sta	>11469824
	rep	#$20
	longa	on
;
;	VDMA_BYTE_2_WRITE[0] = (UCHAR)data;
	.line	3193
	sep	#$20
	longa	off
	lda	<L899+data_0
	sta	>11469825
	rep	#$20
	longa	on
;
;	VDMA_DST_ADDY_L[0] = L24BYTE((long)pdst);
	.line	3195
	sep	#$20
	longa	off
	lda	<L899+pdst_0
	sta	>11469829
	rep	#$20
	longa	on
;	VDMA_DST_ADDY_M[0] = M24BYTE((long)pdst);
	.line	3196
	pei	<L899+pdst_0+2
	pei	<L899+pdst_0
	lda	#$8
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R0
	stx	<R0+2
	lda	<R0
	and	#<$ff
	sta	<R1
	stz	<R1+2
	sep	#$20
	longa	off
	lda	<R1
	sta	>11469830
	rep	#$20
	longa	on
;	VDMA_DST_ADDY_H[0] = H24BYTE((long)pdst);
	.line	3197
	pei	<L899+pdst_0+2
	pei	<L899+pdst_0
	lda	#$10
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R0
	stx	<R0+2
	lda	<R0
	and	#<$ff
	sta	<R1
	stz	<R1+2
	sep	#$20
	longa	off
	lda	<R1
	sta	>11469831
	rep	#$20
	longa	on
;
;	VDMA_X_SIZE_L[0] = LOBYTE(width + 1);
	.line	3199
	lda	<L899+width_0
	ina
	sta	<R0
	sep	#$20
	longa	off
	lda	<R0
	sta	>11469832
	rep	#$20
	longa	on
;	VDMA_X_SIZE_H[0] = HIBYTE(width + 1);
	.line	3200
	lda	<L899+width_0
	ina
	ldx	#<$8
	xref	~~~asr
	jsl	~~~asr
	and	#<$ff
	sta	<R0
	sep	#$20
	longa	off
	lda	<R0
	sta	>11469833
	rep	#$20
	longa	on
;
;	VDMA_Y_SIZE_L[0] = LOBYTE(height + 1);
	.line	3202
	lda	<L899+height_0
	ina
	sta	<R0
	sep	#$20
	longa	off
	lda	<R0
	sta	>11469834
	rep	#$20
	longa	on
;	VDMA_Y_SIZE_H[0] = HIBYTE(height + 1);
	.line	3203
	lda	<L899+height_0
	ina
	ldx	#<$8
	xref	~~~asr
	jsl	~~~asr
	and	#<$ff
	sta	<R0
	sep	#$20
	longa	off
	lda	<R0
	sta	>11469835
	rep	#$20
	longa	on
;	VDMA_Y_SIZE_H[1] = 0x00;
	.line	3204
	sep	#$20
	longa	off
	lda	#$0
	sta	>11469836
	rep	#$20
	longa	on
;
;	*VDMA_SRC_STRIDE_L = 0x00;
	.line	3206
	sep	#$20
	longa	off
	lda	#$0
	sta	>11469836
	rep	#$20
	longa	on
;	*VDMA_SRC_STRIDE_H = 0x00;
	.line	3207
	sep	#$20
	longa	off
	lda	#$0
	sta	>11469837
	rep	#$20
	longa	on
;
;	*VDMA_DST_STRIDE_L  = 0x80;
	.line	3209
	sep	#$20
	longa	off
	lda	#$80
	sta	>11469838
	rep	#$20
	longa	on
;	*VDMA_DST_STRIDE_H	= 0x02;
	.line	3210
	sep	#$20
	longa	off
	lda	#$2
	sta	>11469839
	rep	#$20
	longa	on
;
;    VDMA_CONTROL_REG[0]  = (VDMA_CTRL_ENABLE | VDMA_CTRL_1D_2D | VDMA_CTRL_TRF_FILL | VDMA_CTRL_START_TRF);
	.line	3212
	sep	#$20
	longa	off
	lda	#$87
	sta	>11469824
	rep	#$20
	longa	on
;
;    asm NOP;
	.line	3214
	asmstart
	NOP
	asmend
;    asm NOP;
	.line	3215
	asmstart
	NOP
	asmend
;    asm NOP;
	.line	3216
	asmstart
	NOP
	asmend
;
;	while(status == VDMA_STAT_VDMA_IPS)
	.line	3218
L10377:
	sep	#$20
	longa	off
	lda	<L900+status_1
	cmp	#<$80
	rep	#$20
	longa	on
	beq	L902
	brl	L10378
L902:
;	{
	.line	3219
;		status = ( *VDMA_STATUS_REG & VDMA_STAT_VDMA_IPS);
	.line	3220
	sep	#$20
	longa	off
	lda	>11469825
	and	#<$80
	sta	<L900+status_1
	rep	#$20
	longa	on
;		spinLock++;
	.line	3221
	inc	<L900+spinLock_1
;
;		if(spinLock > 32000)
	.line	3223
;		{
	lda	#$7d00
	cmp	<L900+spinLock_1
	bcc	L903
	brl	L10379
L903:
	.line	3224
;			break;
	.line	3225
	brl	L10378
;		}
	.line	3226
;	}
L10379:
	.line	3227
	brl	L10377
L10378:
;
;#ifdef USE_MAX_DEBUG
;	k_debug_integer("k_vdma_fill_address1::spinLock:",spinLock);
;#endif
;
;	asm NOP;
	.line	3233
	asmstart
	NOP
	asmend
;
;	VDMA_CONTROL_REG[0] = 0;
	.line	3235
	sep	#$20
	longa	off
	lda	#$0
	sta	>11469824
	rep	#$20
	longa	on
;
;   return ;
	.line	3237
L904:
	lda	<L899+2
	sta	<L899+2+10
	lda	<L899+1
	sta	<L899+1+10
	pld
	tsc
	clc
	adc	#L899+10
	tcs
	rtl
;}
	.line	3238
	.endblock	3238
L899	equ	13
L900	equ	9
	ends
	efunc
	.endfunc	3238,9,13
	.line	3238
;
;void k_vdma_fill_address_ex(char FAR * pdst,int width,int height,unsigned char data,UINT page)
;{
	.line	3240
	.line	3241
	GUI
	xdef	~~k_vdma_fill_address_ex
	func
	.function	3241
~~k_vdma_fill_address_ex:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L905
	tcs
	phd
	tcd
pdst_0	set	4
width_0	set	8
height_0	set	10
data_0	set	12
page_0	set	14
	.block	3241
;	int pos = 0;
;	UINT spinLock = 0;
;	char status = VDMA_STAT_VDMA_IPS;
;
;	VDMA_CONTROL_REG[0] = ( VDMA_CTRL_ENABLE | VDMA_CTRL_TRF_FILL | VDMA_CTRL_1D_2D );
pos_1	set	0
spinLock_1	set	2
status_1	set	4
	.sym	pos,0,5,1,16
	.sym	spinLock,2,16,1,16
	.sym	status,4,14,1,8
	.sym	pdst,4,142,6,32
	.sym	width,8,5,6,16
	.sym	height,10,5,6,16
	.sym	data,12,14,6,8
	.sym	page,14,16,6,16
	stz	<L906+pos_1
	stz	<L906+spinLock_1
	sep	#$20
	longa	off
	lda	#$80
	sta	<L906+status_1
	rep	#$20
	longa	on
	.line	3246
	sep	#$20
	longa	off
	lda	#$7
	sta	>11469824
	rep	#$20
	longa	on
;
;	VDMA_BYTE_2_WRITE[0] = (UCHAR)data;
	.line	3248
	sep	#$20
	longa	off
	lda	<L905+data_0
	sta	>11469825
	rep	#$20
	longa	on
;
;	VDMA_DST_ADDY_L[0] = L24BYTE((long)pdst);
	.line	3250
	sep	#$20
	longa	off
	lda	<L905+pdst_0
	sta	>11469829
	rep	#$20
	longa	on
;	VDMA_DST_ADDY_M[0] = M24BYTE((long)pdst);
	.line	3251
	pei	<L905+pdst_0+2
	pei	<L905+pdst_0
	lda	#$8
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R0
	stx	<R0+2
	lda	<R0
	and	#<$ff
	sta	<R1
	stz	<R1+2
	sep	#$20
	longa	off
	lda	<R1
	sta	>11469830
	rep	#$20
	longa	on
;	VDMA_DST_ADDY_H[0] = H24BYTE((long)pdst)|page;
	.line	3252
	pei	<L905+pdst_0+2
	pei	<L905+pdst_0
	lda	#$10
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R0
	stx	<R0+2
	lda	<R0
	and	#<$ff
	sta	<R1
	stz	<R1+2
	sep	#$20
	longa	off
	lda	<L905+page_0
	ora	<R1
	sta	>11469831
	rep	#$20
	longa	on
;
;	/*
;	VDMA_X_SIZE_L[0] = LOBYTE(width + 1);
;	VDMA_X_SIZE_H[0] = HIBYTE(width + 1);
;
;	VDMA_Y_SIZE_L[0] = LOBYTE(height + 1);
;	VDMA_Y_SIZE_H[0] = HIBYTE(height + 1);
;	VDMA_Y_SIZE_H[1] = 0x00;
;	*/
;	VDMA_X_SIZE_L[0] = LOBYTE(width);
	.line	3262
	sep	#$20
	longa	off
	lda	<L905+width_0
	sta	>11469832
	rep	#$20
	longa	on
;	VDMA_X_SIZE_H[0] = HIBYTE(width);
	.line	3263
	lda	<L905+width_0
	ldx	#<$8
	xref	~~~asr
	jsl	~~~asr
	and	#<$ff
	sta	<R0
	sep	#$20
	longa	off
	lda	<R0
	sta	>11469833
	rep	#$20
	longa	on
;
;	VDMA_Y_SIZE_L[0] = LOBYTE(height);
	.line	3265
	sep	#$20
	longa	off
	lda	<L905+height_0
	sta	>11469834
	rep	#$20
	longa	on
;	VDMA_Y_SIZE_H[0] = HIBYTE(height);
	.line	3266
	lda	<L905+height_0
	ldx	#<$8
	xref	~~~asr
	jsl	~~~asr
	and	#<$ff
	sta	<R0
	sep	#$20
	longa	off
	lda	<R0
	sta	>11469835
	rep	#$20
	longa	on
;	VDMA_Y_SIZE_H[1] = 0x00;
	.line	3267
	sep	#$20
	longa	off
	lda	#$0
	sta	>11469836
	rep	#$20
	longa	on
;
;
;	*VDMA_SRC_STRIDE_L = 0x00;
	.line	3270
	sep	#$20
	longa	off
	lda	#$0
	sta	>11469836
	rep	#$20
	longa	on
;	*VDMA_SRC_STRIDE_H = 0x00;
	.line	3271
	sep	#$20
	longa	off
	lda	#$0
	sta	>11469837
	rep	#$20
	longa	on
;
;	*VDMA_DST_STRIDE_L  = 0x80;
	.line	3273
	sep	#$20
	longa	off
	lda	#$80
	sta	>11469838
	rep	#$20
	longa	on
;	*VDMA_DST_STRIDE_H	= 0x02;
	.line	3274
	sep	#$20
	longa	off
	lda	#$2
	sta	>11469839
	rep	#$20
	longa	on
;
;    VDMA_CONTROL_REG[0]  = (VDMA_CTRL_ENABLE | VDMA_CTRL_1D_2D | VDMA_CTRL_TRF_FILL | VDMA_CTRL_START_TRF);
	.line	3276
	sep	#$20
	longa	off
	lda	#$87
	sta	>11469824
	rep	#$20
	longa	on
;
;    asm NOP;
	.line	3278
	asmstart
	NOP
	asmend
;    asm NOP;
	.line	3279
	asmstart
	NOP
	asmend
;    asm NOP;
	.line	3280
	asmstart
	NOP
	asmend
;
;	while(status == VDMA_STAT_VDMA_IPS)
	.line	3282
L10380:
	sep	#$20
	longa	off
	lda	<L906+status_1
	cmp	#<$80
	rep	#$20
	longa	on
	beq	L908
	brl	L10381
L908:
;	{
	.line	3283
;		status = ( *VDMA_STATUS_REG & VDMA_STAT_VDMA_IPS);
	.line	3284
	sep	#$20
	longa	off
	lda	>11469825
	and	#<$80
	sta	<L906+status_1
	rep	#$20
	longa	on
;		spinLock++;
	.line	3285
	inc	<L906+spinLock_1
;
;		if(spinLock > 32000)
	.line	3287
;		{
	lda	#$7d00
	cmp	<L906+spinLock_1
	bcc	L909
	brl	L10382
L909:
	.line	3288
;			break;
	.line	3289
	brl	L10381
;		}
	.line	3290
;	}
L10382:
	.line	3291
	brl	L10380
L10381:
;
;#ifdef USE_MAX_DEBUG
;	k_debug_integer("k_vdma_fill_address1::spinLock:",spinLock);
;#endif
;
;	asm NOP;
	.line	3297
	asmstart
	NOP
	asmend
;
;	VDMA_CONTROL_REG[0] = 0;
	.line	3299
	sep	#$20
	longa	off
	lda	#$0
	sta	>11469824
	rep	#$20
	longa	on
;
;   return ;
	.line	3301
L910:
	lda	<L905+2
	sta	<L905+2+12
	lda	<L905+1
	sta	<L905+1+12
	pld
	tsc
	clc
	adc	#L905+12
	tcs
	rtl
;}
	.line	3302
	.endblock	3302
L905	equ	13
L906	equ	9
	ends
	efunc
	.endfunc	3302,9,13
	.line	3302
;
;
;
;
;void k_vdma_fill(char FAR * pdst,long size,unsigned char data)
;{
	.line	3307
	.line	3308
	GUI
	xdef	~~k_vdma_fill
	func
	.function	3308
~~k_vdma_fill:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L911
	tcs
	phd
	tcd
pdst_0	set	4
size_0	set	8
data_0	set	12
	.block	3308
;	int pos = 0;
;	int spinLock = 0;
;	char status = VDMA_STAT_VDMA_IPS;
;	/*
;	char size_low = L24BYTE(size);
;	char size_mid = M24BYTE(size);
;	char size_hi  = H24BYTE(size);
;
;	char addr_low = L24BYTE((long)pdst);
;	char addr_mid = M24BYTE((long)pdst);
;	char addr_hi  = H24BYTE((long)pdst);
;
;	
;	pos=2;
;	k_itoa(size_low,buffer,16);
;	pos=k_put_draw_text(pos,2,buffer,15,0);
;	pos=k_put_draw_text(pos,2,"L:",15,0);
;	k_itoa(size_mid,buffer,16);
;	pos=k_put_draw_text(pos,2,buffer,15,0);
;	pos=k_put_draw_text(pos,2,"M:",15,0);
;	k_itoa(size_hi,buffer,16);
;	pos=k_put_draw_text(pos,2,buffer,15,0);
;	pos=k_put_draw_text(pos,2,"H",15,0);
;	
;	pos=2;
;	k_itoa(addr_low,buffer,16);
;	pos=k_put_draw_text(pos,3,buffer,15,0);
;	pos=k_put_draw_text(pos,3,"L:",15,0);
;	k_itoa(addr_mid,buffer,16);
;	pos=k_put_draw_text(pos,3,buffer,15,0);
;	pos=k_put_draw_text(pos,3,"M:",15,0);
;	k_itoa(addr_hi,buffer,16);
;	pos=k_put_draw_text(pos,3,buffer,15,0);
;	pos=k_put_draw_text(pos,3,"H",15,0);
;	*/
;	/*
;	if(VDMA_CONTROL_REG[0] > 0)
;	{
;		while(status == VDMA_STAT_VDMA_IPS || spinLock > 1000)
;		{
;			status = ( *((unsigned char *)0xAF0401) & (unsigned char)VDMA_STAT_VDMA_IPS);
;			spinLock++;
;		}
;	}
;	*/
;	VDMA_CONTROL_REG[0] = VDMA_CTRL_ENABLE;
pos_1	set	0
spinLock_1	set	2
status_1	set	4
	.sym	pos,0,5,1,16
	.sym	spinLock,2,5,1,16
	.sym	status,4,14,1,8
	.sym	pdst,4,142,6,32
	.sym	size,8,7,6,32
	.sym	data,12,14,6,8
	stz	<L912+pos_1
	stz	<L912+spinLock_1
	sep	#$20
	longa	off
	lda	#$80
	sta	<L912+status_1
	rep	#$20
	longa	on
	.line	3354
	sep	#$20
	longa	off
	lda	#$1
	sta	>11469824
	rep	#$20
	longa	on
;
;	*BM_START_ADDY_L = 0x00;
	.line	3356
	sep	#$20
	longa	off
	lda	#$0
	sta	>11469121
	rep	#$20
	longa	on
;	*BM_START_ADDY_M = 0x00;
	.line	3357
	sep	#$20
	longa	off
	lda	#$0
	sta	>11469122
	rep	#$20
	longa	on
;	*BM_START_ADDY_H = 0x00;
	.line	3358
	sep	#$20
	longa	off
	lda	#$0
	sta	>11469123
	rep	#$20
	longa	on
;	*((char FAR*)0xAF1F80) = 0x02;
	.line	3359
	sep	#$20
	longa	off
	lda	#$2
	sta	>11476864
	rep	#$20
	longa	on
;	
;	*BM_X_SIZE_L = 0x80;
	.line	3361
	sep	#$20
	longa	off
	lda	#$80
	sta	>11469124
	rep	#$20
	longa	on
;	*BM_X_SIZE_H = 0x02;	
	.line	3362
	sep	#$20
	longa	off
	lda	#$2
	sta	>11469125
	rep	#$20
	longa	on
;	*BM_Y_SIZE_L = 0xE0;
	.line	3363
	sep	#$20
	longa	off
	lda	#$e0
	sta	>11469126
	rep	#$20
	longa	on
;	*BM_Y_SIZE_H = 0x01;
	.line	3364
	sep	#$20
	longa	off
	lda	#$1
	sta	>11469127
	rep	#$20
	longa	on
;	
;	VDMA_SIZE_L[0] = L24BYTE(size);
	.line	3366
	sep	#$20
	longa	off
	lda	<L911+size_0
	sta	>11469832
	rep	#$20
	longa	on
;	VDMA_SIZE_M[0] = M24BYTE(size);
	.line	3367
	pei	<L911+size_0+2
	pei	<L911+size_0
	lda	#$8
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R0
	stx	<R0+2
	lda	<R0
	and	#<$ff
	sta	<R1
	stz	<R1+2
	sep	#$20
	longa	off
	lda	<R1
	sta	>11469833
	rep	#$20
	longa	on
;	VDMA_SIZE_H[0] = H24BYTE(size);
	.line	3368
	pei	<L911+size_0+2
	pei	<L911+size_0
	lda	#$10
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R0
	stx	<R0+2
	lda	<R0
	and	#<$ff
	sta	<R1
	stz	<R1+2
	sep	#$20
	longa	off
	lda	<R1
	sta	>11469834
	rep	#$20
	longa	on
;	
;	
;	*VDMA_X_SIZE_L = 0x80;
	.line	3371
	sep	#$20
	longa	off
	lda	#$80
	sta	>11469832
	rep	#$20
	longa	on
;	*VDMA_X_SIZE_H = 0x20;
	.line	3372
	sep	#$20
	longa	off
	lda	#$20
	sta	>11469833
	rep	#$20
	longa	on
;
;	*VDMA_Y_SIZE_L = 0xE0;
	.line	3374
	sep	#$20
	longa	off
	lda	#$e0
	sta	>11469834
	rep	#$20
	longa	on
;	*VDMA_Y_SIZE_H = 0x01;
	.line	3375
	sep	#$20
	longa	off
	lda	#$1
	sta	>11469835
	rep	#$20
	longa	on
;
;	*VDMA_DST_STRIDE_L = 0x80;
	.line	3377
	sep	#$20
	longa	off
	lda	#$80
	sta	>11469838
	rep	#$20
	longa	on
;	*VDMA_DST_STRIDE_H	= 0x02;
	.line	3378
	sep	#$20
	longa	off
	lda	#$2
	sta	>11469839
	rep	#$20
	longa	on
;	
;	/*
;        LDA #200
;        STA @lVDMA_X_SIZE_L
;        LDA #00
;        STA @lVDMA_X_SIZE_H
;
;        LDA #64
;        STA @lVDMA_Y_SIZE_L
;        LDA #00
;        STA @lVDMA_Y_SIZE_H
;
;        LDA #$60
;        STA @lVDMA_DST_ADDY_L
;        LDA #$90
;        STA @lVDMA_DST_ADDY_M
;        LDA #$01
;        STA @lVDMA_DST_ADDY_H
;
;        LDA #$80
;        STA @lVDMA_DST_STRIDE_L
;        LDA #$02
;        STA @lVDMA_DST_STRIDE_H
;	*/
;
;	VDMA_DST_ADDY_L[0] = L24BYTE((long)pdst);
	.line	3404
	sep	#$20
	longa	off
	lda	<L911+pdst_0
	sta	>11469829
	rep	#$20
	longa	on
;	VDMA_DST_ADDY_M[0] = M24BYTE((long)pdst);
	.line	3405
	pei	<L911+pdst_0+2
	pei	<L911+pdst_0
	lda	#$8
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R0
	stx	<R0+2
	lda	<R0
	and	#<$ff
	sta	<R1
	stz	<R1+2
	sep	#$20
	longa	off
	lda	<R1
	sta	>11469830
	rep	#$20
	longa	on
;	VDMA_DST_ADDY_H[0] = H24BYTE((long)pdst);
	.line	3406
	pei	<L911+pdst_0+2
	pei	<L911+pdst_0
	lda	#$10
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R0
	stx	<R0+2
	lda	<R0
	and	#<$ff
	sta	<R1
	stz	<R1+2
	sep	#$20
	longa	off
	lda	<R1
	sta	>11469831
	rep	#$20
	longa	on
;
;	VDMA_BYTE_2_WRITE[0] = (char)data;
	.line	3408
	sep	#$20
	longa	off
	lda	<L911+data_0
	sta	>11469825
	rep	#$20
	longa	on
;	
;	VDMA_CONTROL_REG[0]  = (VDMA_CTRL_ENABLE | VDMA_CTRL_TRF_FILL | VDMA_CTRL_START_TRF);//0x85;
	.line	3410
	sep	#$20
	longa	off
	lda	#$85
	sta	>11469824
	rep	#$20
	longa	on
;   
;	/*
;	while(status == VDMA_STAT_VDMA_IPS)
;	{
;		status = ( *((unsigned char *)0xAF0401) & VDMA_STAT_VDMA_IPS);
;	}
;	
;	
;	while(status == VDMA_STAT_VDMA_IPS)
;	{
;		#asm
;		PHA 
;        LDA $AF0401
;        AND #$80
;        CMP #$80
;        STA %%status
;		PLA
;		#endasm
;	}
;	*/
;	
;   //return *VDMA_STATUS_REG;
;   //return VDMA_STATUS_REG[0];
;   //VDMA_CONTROL_REG[0] = (char)0x00;
;   
;   return ;
	.line	3436
L914:
	lda	<L911+2
	sta	<L911+2+10
	lda	<L911+1
	sta	<L911+1+10
	pld
	tsc
	clc
	adc	#L911+10
	tcs
	rtl
;}
	.line	3437
	.endblock	3437
L911	equ	13
L912	equ	9
	ends
	efunc
	.endfunc	3437,9,13
	.line	3437
;
;
;void k_enable_bitmap_mode(void)
;{
	.line	3440
	.line	3441
	GUI
	xdef	~~k_enable_bitmap_mode
	func
	.function	3441
~~k_enable_bitmap_mode:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L915
	tcs
	phd
	tcd
	.block	3441
;	int i = 30000;
;	int j = 30000;
;
;
;
;	if(MASTER_CTRL_REG_H[0])
i_1	set	0
j_1	set	2
	.sym	i,0,5,1,16
	.sym	j,2,5,1,16
	lda	#$7530
	sta	<L916+i_1
	lda	#$7530
	sta	<L916+j_1
	.line	3447
;	{
	lda	>11468801
	and	#$ff
	bne	L918
	brl	L10383
L918:
	.line	3448
;		k_debug_string("k_enable_bitmap_mode to 800x600...\r\n");
	.line	3449
	pea	#^L898
	pea	#<L898
	jsl	~~k_debug_string
;
;		MASTER_CTRL_REG_H[0] = MSTR_CTRL_VIDEO_MODE0;
	.line	3451
	sep	#$20
	longa	off
	lda	#$1
	sta	>11468801
	rep	#$20
	longa	on
;		MASTER_CTRL_REG_L[0] = MSTR_CTRL_GRAPH_MODE_EN;
	.line	3452
	sep	#$20
	longa	off
	lda	#$4
	sta	>11468800
	rep	#$20
	longa	on
;
;		for(i=3200;i>0;i--)
	.line	3454
	lda	#$c80
	sta	<L916+i_1
L10386:
;		{
	.line	3455
;			for(j=0;j<256;j++)
	.line	3456
	stz	<L916+j_1
L10389:
;			{
	.line	3457
;				asm NOP;
	.line	3458
	asmstart
	NOP
	asmend
;			}
	.line	3459
L10387:
	inc	<L916+j_1
	sec
	lda	<L916+j_1
	sbc	#<$100
	bvs	L919
	eor	#$8000
L919:
	bmi	L920
	brl	L10389
L920:
L10388:
;		}
	.line	3460
L10384:
	dec	<L916+i_1
	sec
	lda	#$0
	sbc	<L916+i_1
	bvs	L921
	eor	#$8000
L921:
	bmi	L922
	brl	L10386
L922:
L10385:
;	}
	.line	3461
;	k_get_video_mode();
L10383:
	.line	3462
	jsl	~~k_get_video_mode
;
;	/*
;	k_debug_string("k_enable_bitmap_mode RESET 1b...\r\n");
;
;	MASTER_CTRL_REG_H[0] = MSTR_CTRL_VIDEO_MODE0;
;	MASTER_CTRL_REG_L[0] = MSTR_CTRL_GRAPH_MODE_EN;
;
;	for(i=3200;i>0;i--)
;	{
;		for(j=0;j<256;j++)
;		{
;			asm NOP;
;		}
;	}
;
;	k_debug_string("k_enable_bitmap_mode RESET 1c...\r\n");
;
;	MASTER_CTRL_REG_H[0] = MSTR_CTRL_VIDEO_MODE0;
;	MASTER_CTRL_REG_L[0] = MSTR_CTRL_GRAPH_MODE_EN;
;
;	for(i=3200;i>0;i--)
;	{
;		for(j=0;j<256;j++)
;		{
;			asm NOP;
;		}
;	}
;	 */
;	//k_debug_string("k_enable_bitmap_mode disable 800x600...\r\n");
;	//k_get_video_mode();
;
;	MASTER_CTRL_REG_H[0] = 0x00;
	.line	3494
	sep	#$20
	longa	off
	lda	#$0
	sta	>11468801
	rep	#$20
	longa	on
;	//MASTER_CTRL_REG_L[0] = MSTR_CTRL_GRAPH_MODE_EN;
;	for(i=3200;i>0;i--)
	.line	3496
	lda	#$c80
	sta	<L916+i_1
L10392:
;	{
	.line	3497
;		for(j=0;j<256;j++)
	.line	3498
	stz	<L916+j_1
L10395:
;		{
	.line	3499
;			asm NOP;
	.line	3500
	asmstart
	NOP
	asmend
;		}
	.line	3501
L10393:
	inc	<L916+j_1
	sec
	lda	<L916+j_1
	sbc	#<$100
	bvs	L923
	eor	#$8000
L923:
	bmi	L924
	brl	L10395
L924:
L10394:
;	}
	.line	3502
L10390:
	dec	<L916+i_1
	sec
	lda	#$0
	sbc	<L916+i_1
	bvs	L925
	eor	#$8000
L925:
	bmi	L926
	brl	L10392
L926:
L10391:
;
;
;	*BM1_CONTROL_REG = 0x01;
	.line	3505
	sep	#$20
	longa	off
	lda	#$1
	sta	>11469064
	rep	#$20
	longa	on
;	*BM1_START_ADDY_L = 0;
	.line	3506
	sep	#$20
	longa	off
	lda	#$0
	sta	>11469065
	rep	#$20
	longa	on
;	*BM1_START_ADDY_M = 0;
	.line	3507
	sep	#$20
	longa	off
	lda	#$0
	sta	>11469066
	rep	#$20
	longa	on
;	*BM1_START_ADDY_H = 0x10;
	.line	3508
	sep	#$20
	longa	off
	lda	#$10
	sta	>11469067
	rep	#$20
	longa	on
;
;	*BM0_CONTROL_REG = 0x01;
	.line	3510
	sep	#$20
	longa	off
	lda	#$1
	sta	>11469056
	rep	#$20
	longa	on
;	*BM0_START_ADDY_L = 0;
	.line	3511
	sep	#$20
	longa	off
	lda	#$0
	sta	>11469057
	rep	#$20
	longa	on
;	*BM0_START_ADDY_M = 0;
	.line	3512
	sep	#$20
	longa	off
	lda	#$0
	sta	>11469058
	rep	#$20
	longa	on
;	*BM0_START_ADDY_H = 0;
	.line	3513
	sep	#$20
	longa	off
	lda	#$0
	sta	>11469059
	rep	#$20
	longa	on
;
;	*BM1_CONTROL_REG = ( BM_ENABLE | BM_LUT0 );
	.line	3515
	sep	#$20
	longa	off
	lda	#$1
	sta	>11469064
	rep	#$20
	longa	on
;	*BM0_CONTROL_REG = ( BM_ENABLE | BM_LUT0 );
	.line	3516
	sep	#$20
	longa	off
	lda	#$1
	sta	>11469056
	rep	#$20
	longa	on
;
;	k_debug_string("k_enable_bitmap_mode 640x480...\r\n");
	.line	3518
	pea	#^L898+37
	pea	#<L898+37
	jsl	~~k_debug_string
;	*MASTER_CTRL_REG_L 	= (MSTR_CTRL_GRAPH_MODE_EN | MSTR_CTRL_BITMAP_EN);
	.line	3519
	sep	#$20
	longa	off
	lda	#$c
	sta	>11468800
	rep	#$20
	longa	on
;
;	k_vdma_fill_rect_ex(0,0,640,480,0,0x10);
	.line	3521
	pea	#<$10
	pea	#<$0
	pea	#<$1e0
	pea	#<$280
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	jsl	~~k_vdma_fill_rect_ex
;	k_vdma_fill_rect_ex(0,0,640,480,0,0x00);
	.line	3522
	pea	#<$0
	pea	#<$0
	pea	#<$1e0
	pea	#<$280
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	jsl	~~k_vdma_fill_rect_ex
;
;	for(i=3200;i>0;i--)
	.line	3524
	lda	#$c80
	sta	<L916+i_1
L10398:
;	{
	.line	3525
;		for(j=0;j<256;j++)
	.line	3526
	stz	<L916+j_1
L10401:
;		{
	.line	3527
;			asm NOP;
	.line	3528
	asmstart
	NOP
	asmend
;		}
	.line	3529
L10399:
	inc	<L916+j_1
	sec
	lda	<L916+j_1
	sbc	#<$100
	bvs	L927
	eor	#$8000
L927:
	bmi	L928
	brl	L10401
L928:
L10400:
;	}
	.line	3530
L10396:
	dec	<L916+i_1
	sec
	lda	#$0
	sbc	<L916+i_1
	bvs	L929
	eor	#$8000
L929:
	bmi	L930
	brl	L10398
L930:
L10397:
;
;	k_get_video_mode();
	.line	3532
	jsl	~~k_get_video_mode
;	return;
	.line	3533
L931:
	pld
	tsc
	clc
	adc	#L915
	tcs
	rtl
;}
	.line	3534
	.endblock	3534
L915	equ	4
L916	equ	1
	ends
	efunc
	.endfunc	3534,1,4
	.line	3534
	data
L898:
	db	$6B,$5F,$65,$6E,$61,$62,$6C,$65,$5F,$62,$69,$74,$6D,$61,$70
	db	$5F,$6D,$6F,$64,$65,$20,$74,$6F,$20,$38,$30,$30,$78,$36,$30
	db	$30,$2E,$2E,$2E,$0D,$0A,$00,$6B,$5F,$65,$6E,$61,$62,$6C,$65
	db	$5F,$62,$69,$74,$6D,$61,$70,$5F,$6D,$6F,$64,$65,$20,$36,$34
	db	$30,$78,$34,$38,$30,$2E,$2E,$2E,$0D,$0A,$00
	ends
;
;
;UINT k_get_video_mode(void)
;{
	.line	3537
	.line	3538
	GUI
	xdef	~~k_get_video_mode
	func
	.function	3538
~~k_get_video_mode:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L933
	tcs
	phd
	tcd
	.block	3538
;	//Mstr_Ctrl_Video_Mode0   = $01       ; 0 - 640x480 (Clock @ 25.175Mhz), 1 - 800x600 (Clock @ 40Mhz)
;	//Mstr_Ctrl_Video_Mode1   = $02       ; 0 - No Pixel Doubling, 1- Pixel Doubling (Reduce the Pixel Resolution by 2)
;
;	if(MASTER_CTRL_REG_H[0] & 0x01)
	.line	3542
;	{
	sep	#$20
	longa	off
	lda	>11468801
	and	#<$1
	rep	#$20
	longa	on
	bne	L936
	brl	L10402
L936:
	.line	3543
;		if(MASTER_CTRL_REG_H[0] & 0x02)
	.line	3544
;		{
	sep	#$20
	longa	off
	lda	>11468801
	and	#<$2
	rep	#$20
	longa	on
	bne	L937
	brl	L10403
L937:
	.line	3545
;			k_debug_string("k_get_video_mode:VIDEO_MODE_800X600D...\r\n");
	.line	3546
	pea	#^L932
	pea	#<L932
	jsl	~~k_debug_string
;			return VIDEO_MODE_800X600D;
	.line	3547
	lda	#$8
L938:
	tay
	pld
	tsc
	clc
	adc	#L933
	tcs
	tya
	rtl
;		}
	.line	3548
;
;		k_debug_string("k_get_video_mode:VIDEO_MODE_800X600...\r\n");
L10403:
	.line	3550
	pea	#^L932+42
	pea	#<L932+42
	jsl	~~k_debug_string
;		return VIDEO_MODE_800X600;
	.line	3551
	lda	#$4
	brl	L938
;	}
	.line	3552
;	else
L10402:
;	{
	.line	3554
;		if(MASTER_CTRL_REG_H[0] & 0x02)
	.line	3555
;		{
	sep	#$20
	longa	off
	lda	>11468801
	and	#<$2
	rep	#$20
	longa	on
	bne	L939
	brl	L10404
L939:
	.line	3556
;			k_debug_string("k_get_video_mode:VIDEO_MODE_640X480D...\r\n");
	.line	3557
	pea	#^L932+83
	pea	#<L932+83
	jsl	~~k_debug_string
;			return VIDEO_MODE_640X480D;
	.line	3558
	lda	#$2
	brl	L938
;		}
	.line	3559
;
;		k_debug_string("k_get_video_mode:VIDEO_MODE_640X480...\r\n");
L10404:
	.line	3561
	pea	#^L932+125
	pea	#<L932+125
	jsl	~~k_debug_string
;		return VIDEO_MODE_640X480;
	.line	3562
	lda	#$1
	brl	L938
;	}
	.line	3563
;
;
;	return VIDEO_MODE_UNKNOWN;
	.line	3566
	lda	#$ff
	brl	L938
;}
	.line	3567
	.endblock	3567
L933	equ	0
L934	equ	1
	ends
	efunc
	.endfunc	3567,1,0
	.line	3567
	data
L932:
	db	$6B,$5F,$67,$65,$74,$5F,$76,$69,$64,$65,$6F,$5F,$6D,$6F,$64
	db	$65,$3A,$56,$49,$44,$45,$4F,$5F,$4D,$4F,$44,$45,$5F,$38,$30
	db	$30,$58,$36,$30,$30,$44,$2E,$2E,$2E,$0D,$0A,$00,$6B,$5F,$67
	db	$65,$74,$5F,$76,$69,$64,$65,$6F,$5F,$6D,$6F,$64,$65,$3A,$56
	db	$49,$44,$45,$4F,$5F,$4D,$4F,$44,$45,$5F,$38,$30,$30,$58,$36
	db	$30,$30,$2E,$2E,$2E,$0D,$0A,$00,$6B,$5F,$67,$65,$74,$5F,$76
	db	$69,$64,$65,$6F,$5F,$6D,$6F,$64,$65,$3A,$56,$49,$44,$45,$4F
	db	$5F,$4D,$4F,$44,$45,$5F,$36,$34,$30,$58,$34,$38,$30,$44,$2E
	db	$2E,$2E,$0D,$0A,$00,$6B,$5F,$67,$65,$74,$5F,$76,$69,$64,$65
	db	$6F,$5F,$6D,$6F,$64,$65,$3A,$56,$49,$44,$45,$4F,$5F,$4D,$4F
	db	$44,$45,$5F,$36,$34,$30,$58,$34,$38,$30,$2E,$2E,$2E,$0D,$0A
	db	$00
	ends
;
;
;void k_init_desktop(PFXPROCESS process)
;{
	.line	3570
	.line	3571
	GUI
	xdef	~~k_init_desktop
	func
	.function	3571
~~k_init_desktop:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L941
	tcs
	phd
	tcd
process_0	set	4
	.block	3571
;
;	int i = 0;
;	int x = 0;
;	int y = 200;
;
;
;	PFXSTRING fxtitle = NULL;
;	PFXSTRING fxstring = NULL;
;
;	ULONG availableMem = 0L;
;
;
;	k_clear_screen(0);
i_1	set	0
x_1	set	2
y_1	set	4
fxtitle_1	set	6
fxstring_1	set	10
availableMem_1	set	14
	.sym	i,0,5,1,16
	.sym	x,2,5,1,16
	.sym	y,4,5,1,16
	.sym	fxtitle,6,138,1,32,50
	.sym	fxstring,10,138,1,32,50
	.sym	availableMem,14,18,1,32
	.sym	process,4,138,6,32,20
	stz	<L942+i_1
	stz	<L942+x_1
	lda	#$c8
	sta	<L942+y_1
	stz	<L942+fxtitle_1
	stz	<L942+fxtitle_1+2
	stz	<L942+fxstring_1
	stz	<L942+fxstring_1+2
	stz	<L942+availableMem_1
	stz	<L942+availableMem_1+2
	.line	3584
	pea	#<$0
	jsl	~~k_clear_screen
;	setColors();
	.line	3585
	jsl	~~setColors
;
;
;#ifdef USE_FX256_FMX
;
;	/*
;	*BM1_CONTROL_REG = 0x01;
;	*BM1_START_ADDY_L = 0;
;	*BM1_START_ADDY_M = 0;
;	*BM1_START_ADDY_H = 0;
;
;	*MASTER_CTRL_REG_H 	= 0x00;
;	*MASTER_CTRL_REG_L 	= (MSTR_CTRL_GRAPH_MODE_EN | MSTR_CTRL_BITMAP_EN);
;
;	*MASTER_CTRL_REG_H 	= 0x01;
;	*MASTER_CTRL_REG_L 	= (MSTR_CTRL_GRAPH_MODE_EN | MSTR_CTRL_BITMAP_EN);
;
;	*BM1_CONTROL_REG = ( BM_ENABLE | BM_LUT0 );
;
;	*MASTER_CTRL_REG_H 	= 0x00;
;	*MASTER_CTRL_REG_L 	= (MSTR_CTRL_GRAPH_MODE_EN | MSTR_CTRL_BITMAP_EN);
;	*/
;
;	k_enable_bitmap_mode();
	.line	3608
	jsl	~~k_enable_bitmap_mode
;
;#else
;
;	VDMA_CONTROL_REG[0] = VDMA_CTRL_ENABLE;
;
;	*BM_START_ADDY_L = 0x00;
;	*BM_START_ADDY_M = 0x00;
;	*BM_START_ADDY_H = 0x00;
;	*BG_CHAR_LUT_PTR = 0x02;
;
;	*BM_X_SIZE_L = 0x80;
;	*BM_X_SIZE_H = 0x02;
;	*BM_Y_SIZE_L = 0xE0;
;	*BM_Y_SIZE_H = 0x01;
;
;	//*FG_CHAR_LUT_PTR    = 0x00;
;	//*BG_CHAR_LUT_PTR    = 0x00;
;	*BM_CONTROL_REG 	= 0x08;
;
;	*MASTER_CTRL_REG_H 	= 0x00;
;	*MASTER_CTRL_REG_L 	= (MSTR_CTRL_GRAPH_MODE_EN | MSTR_CTRL_BITMAP_EN);
;
;#endif
;
;	k_disable_border();
	.line	3633
	jsl	~~k_disable_border
;
;	//setColors();
;	//defineGrayPalette();
;
;
;
;	if(!_k_WindowObject_nodes)
	.line	3640
;		_k_WindowObject_nodes = k_nodelist_init(0xF0,"master",NULL);
	lda	|~~_k_WindowObject_nodes
	ora	|~~_k_WindowObject_nodes+2
	beq	L944
	brl	L10405
L944:
	.line	3641
	pea	#^$0
	pea	#<$0
	pea	#^L940
	pea	#<L940
	pea	#<$f0
	jsl	~~k_nodelist_init
	sta	|~~_k_WindowObject_nodes
	stx	|~~_k_WindowObject_nodes+2
;	if(!_k_WindowHit_nodes)
L10405:
	.line	3642
;		_k_WindowHit_nodes    = k_nodelist_init(0xF0,"master",NULL);
	lda	|~~_k_WindowHit_nodes
	ora	|~~_k_WindowHit_nodes+2
	beq	L945
	brl	L10406
L945:
	.line	3643
	pea	#^$0
	pea	#<$0
	pea	#^L940+7
	pea	#<L940+7
	pea	#<$f0
	jsl	~~k_nodelist_init
	sta	|~~_k_WindowHit_nodes
	stx	|~~_k_WindowHit_nodes+2
;
;	if(process->desktopCtl == NULL)
L10406:
	.line	3645
;	{
	ldy	#$58
	lda	[<L941+process_0],Y
	ldy	#$5a
	ora	[<L941+process_0],Y
	beq	L946
	brl	L10407
L946:
	.line	3646
;		process->desktopCtl = k_mem_allocate_heap(sizeof(DESKTOP_CONTROL));
	.line	3647
	pea	#<$31
	jsl	~~k_mem_allocate_heap
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$58
	sta	[<L941+process_0],Y
	lda	<R0+2
	ldy	#$5a
	sta	[<L941+process_0],Y
;		memset(process->desktopCtl,0,sizeof(DESKTOP_CONTROL));
	.line	3648
	pea	#<$31
	pea	#<$0
	ldy	#$5a
	lda	[<L941+process_0],Y
	pha
	ldy	#$58
	lda	[<L941+process_0],Y
	pha
	jsl	~~memset
;	}
	.line	3649
;	process->desktopCtl->backgroundColor = k_getUIDesktopColor() ;//14;
L10407:
	.line	3650
	ldy	#$58
	lda	[<L941+process_0],Y
	sta	<R0
	ldy	#$5a
	lda	[<L941+process_0],Y
	sta	<R0+2
	jsl	~~k_getUIDesktopColor
	ldy	#$5
	sta	[<R0],Y
;	process->desktopCtl->currentDiskName = NULL;
	.line	3651
	ldy	#$58
	lda	[<L941+process_0],Y
	sta	<R0
	ldy	#$5a
	lda	[<L941+process_0],Y
	sta	<R0+2
	lda	#$0
	ldy	#$11
	sta	[<R0],Y
	lda	#$0
	ldy	#$13
	sta	[<R0],Y
;
;	// clear screen the old way
;
;	/*
;	for(y=0;y<480;y++)
;	{
;		k_fill_line(0,y,639,k_getUIDesktopColor());
;	}
;	*/
;	k_vdma_fill_rect_ex(0,0,640,480,k_getUIBackgroundColor(),0x10);
	.line	3661
	pea	#<$10
	jsl	~~k_getUIBackgroundColor
	pha
	pea	#<$1e0
	pea	#<$280
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	jsl	~~k_vdma_fill_rect_ex
;
;
;	//k_paint_brush_rect(0,0,640,480,0x55);
;
;
;	/*
;	fxtitle  = k_fxstring_new(CONST_WB_MENU_TITLE,96);
;	fxstring = k_fxstring_from_long(k_getZeroPage()->availableMemoryK);
;
;	//k_debug_message("fxtitle:",fxtitle->buffer);
;	//k_debug_message("fxstring:",k_strip_padding(fxstring->buffer));
;
;	//process->desktopCtl->titleNodes = k_vdraw_ui_menu(0,0,639,"C256 Foenix Workbench - Free Mem: 1792K Video Mem: 4096K",15,3);
;	process->desktopCtl->titleNodes = k_vdraw_ui_menu(0,0,639,
;   													  k_string_replace(fxtitle->buffer, "%d", k_strip_padding(fxstring->buffer)),
;													  k_getUIMenuColor(),
;													  k_getUIWindowFrameColor());
;
;	if(fxstring)
;		k_fxstring_free(fxstring);
;	*/
;
;	//k_vdraw_ui_menu(0,0,639,"C256 Foenix Workbench - Free Memory: 1792K Video Memory: 4096K",15,3);
;
;	/*
;	//FX-Basic
;	k_put_winicon_point(ICON_DISK,640 - 40,20,0,PAINTMODE_DEFAULT);
;	k_draw_text_point("FX-BASIC",640 - 35 - (8*4),40,0);
;
;	//Projects
;	k_put_winicon_point(ICON_CABINET,640 - 40,55,2,PAINTMODE_DEFAULT);
;	k_draw_text_point("PROJECTS",640 - 35 - (8*4),75,0);
;	*/
;
;	//Shredder
;	//k_put_winicon_point(ICON_TRASH,640 - 40,450,1,PAINTMODE_DEFAULT);
;	//k_draw_text_point("SHREDDER",640 - 35 - (8*4),470,0);
;
;
;
;	return;
	.line	3702
L947:
	lda	<L941+2
	sta	<L941+2+4
	lda	<L941+1
	sta	<L941+1+4
	pld
	tsc
	clc
	adc	#L941+4
	tcs
	rtl
;}
	.line	3703
	.endblock	3703
L941	equ	22
L942	equ	5
	ends
	efunc
	.endfunc	3703,5,22
	.line	3703
	data
L940:
	db	$6D,$61,$73,$74,$65,$72,$00,$6D,$61,$73,$74,$65,$72,$00
	ends
;
;
;
;void k_add_window_hit_node(PCLICKDETECTED pcd)
;{
	.line	3707
	.line	3708
	GUI
	xdef	~~k_add_window_hit_node
	func
	.function	3708
~~k_add_window_hit_node:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L949
	tcs
	phd
	tcd
pcd_0	set	4
	.block	3708
;	k_debug_pointer("k_add_window_hit_node:",pcd);
	.sym	pcd,4,138,6,32,53
	.line	3709
	pei	<L949+pcd_0+2
	pei	<L949+pcd_0
	pea	#^L948
	pea	#<L948
	jsl	~~k_debug_pointer
;	k_nodelist_add(_k_WindowHit_nodes,k_nodelist_create(1,"window",pcd,NULL,NULL));
	.line	3710
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pei	<L949+pcd_0+2
	pei	<L949+pcd_0
	pea	#^L948+23
	pea	#<L948+23
	pea	#<$1
	jsl	~~k_nodelist_create
	sta	<R0
	stx	<R0+2
	phx
	pha
	lda	|~~_k_WindowHit_nodes+2
	pha
	lda	|~~_k_WindowHit_nodes
	pha
	jsl	~~k_nodelist_add
;}
	.line	3711
L952:
	lda	<L949+2
	sta	<L949+2+4
	lda	<L949+1
	sta	<L949+1+4
	pld
	tsc
	clc
	adc	#L949+4
	tcs
	rtl
	.endblock	3711
L949	equ	4
L950	equ	5
	ends
	efunc
	.endfunc	3711,5,4
	.line	3711
	data
L948:
	db	$6B,$5F,$61,$64,$64,$5F,$77,$69,$6E,$64,$6F,$77,$5F,$68,$69
	db	$74,$5F,$6E,$6F,$64,$65,$3A,$00,$77,$69,$6E,$64,$6F,$77,$00
	ends
;
;/*
;int k_point_in_list_depth(int x,int y,PCLICKABLE clickableList,int cSize)
;{
;	int i = 0;
;	int index = -1;
;	int found = 0;
;	PCLICKABLE top = NULL;
;	RECT r;
;
;	for(i=0;i<cSize;i++)
;	{
;		hitList[i] = NULL;
;		r = clickableList[i].area;
;		if(x >=r.x && x<(r.x+r.width))
;		{
;			if(y >=r.y && y<(r.y+r.height))
;			{
;				index = i;
;				//clickableList[i].depth = 1;
;				hitList[i] = &clickableList[i];
;				found++;
;			}
;		}
;	}
;
;	if(found > 0)
;	{
;		top = hitList[0];
;		for(i=0;i<cSize;i++)
;		{
;			if(hitList[i]!=NULL && hitList[i]->depth < top->depth)
;			{
;				top->depth = 1;
;				top = hitList[i];
;				top->depth = 0;
;				index = i;
;			}
;		}
;	}
;	else
;	{
;		clickableList[index].depth = 0;
;	}
;
;	return index;
;}
;*/
;PFXNODE k_point_in_nodes(int x,int y)
;{
	.line	3760
	.line	3761
	GUI
	xdef	~~k_point_in_nodes
	func
	.function	3761
~~k_point_in_nodes:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L954
	tcs
	phd
	tcd
x_0	set	4
y_0	set	6
	.block	3761
;	PFXNODE found = NULL;
;	LPCHAR ctx = "";
;	PFXNODE ptr = NULL;
;
;	RECT r;
;	int i = 0;
;	int index = -1;
;
;	//k_debug_string("k_point_in_nodes\r\n");
;
;	if(_k_WindowHit_nodes!=NULL)
found_1	set	0
ctx_1	set	4
ptr_1	set	8
r_1	set	12
i_1	set	20
index_1	set	22
	.sym	found,0,138,1,32,5
	.sym	ctx,4,142,1,32
	.sym	ptr,8,138,1,32,5
	.sym	r,12,10,1,64,25
	.sym	i,20,5,1,16
	.sym	index,22,5,1,16
	.sym	x,4,5,6,16
	.sym	y,6,5,6,16
	stz	<L955+found_1
	stz	<L955+found_1+2
	lda	#<L953
	sta	<L955+ctx_1
	lda	#^L953
	sta	<L955+ctx_1+2
	stz	<L955+ptr_1
	stz	<L955+ptr_1+2
	stz	<L955+i_1
	lda	#$ffff
	sta	<L955+index_1
	.line	3772
;	{
	lda	|~~_k_WindowHit_nodes
	ora	|~~_k_WindowHit_nodes+2
	bne	L957
	brl	L10408
L957:
	.line	3773
;		ptr = _k_WindowHit_nodes->next;
	.line	3774
	lda	|~~_k_WindowHit_nodes
	sta	<R0
	lda	|~~_k_WindowHit_nodes+2
	sta	<R0+2
	ldy	#$a
	lda	[<R0],Y
	sta	<L955+ptr_1
	ldy	#$c
	lda	[<R0],Y
	sta	<L955+ptr_1+2
;		while(ptr!=NULL)
	.line	3775
L10409:
	lda	<L955+ptr_1
	ora	<L955+ptr_1+2
	bne	L958
	brl	L10410
L958:
;		{
	.line	3776
;			//k_debug_pointer("FOUND HIT ITEM:",ptr);
;			r = ((PCLICKABLE)((PCLICKDETECTED)ptr->data)->window->clickable)->area;
	.line	3778
	ldy	#$2
	lda	[<L955+ptr_1],Y
	sta	<R0
	ldy	#$4
	lda	[<L955+ptr_1],Y
	sta	<R0+2
	lda	[<R0]
	sta	<R1
	ldy	#$2
	lda	[<R0],Y
	sta	<R1+2
	ldy	#$d2
	lda	[<R1],Y
	pha
	ldy	#$d0
	lda	[<R1],Y
	pha
	clc
	tdc
	adc	#<L955+r_1
	sta	<R0
	lda	#$0
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	lda	#$8
	xref	~~~fmov
	jsl	~~~fmov
;			if(x >=r.x && x<(r.x+r.width))
	.line	3779
;			{
	sec
	lda	<L954+x_0
	sbc	<L955+r_1
	bvs	L959
	eor	#$8000
L959:
	bmi	L960
	brl	L10411
L960:
	clc
	lda	<L955+r_1
	adc	<L955+r_1+4
	sta	<R0
	sec
	lda	<L954+x_0
	sbc	<R0
	bvs	L961
	eor	#$8000
L961:
	bpl	L962
	brl	L10411
L962:
	.line	3780
;				if(y >=r.y && y<(r.y+r.height))
	.line	3781
;				{
	sec
	lda	<L954+y_0
	sbc	<L955+r_1+2
	bvs	L963
	eor	#$8000
L963:
	bmi	L964
	brl	L10412
L964:
	clc
	lda	<L955+r_1+2
	adc	<L955+r_1+6
	sta	<R0
	sec
	lda	<L954+y_0
	sbc	<R0
	bvs	L965
	eor	#$8000
L965:
	bpl	L966
	brl	L10412
L966:
	.line	3782
;					found = ptr;
	.line	3783
	lda	<L955+ptr_1
	sta	<L955+found_1
	lda	<L955+ptr_1+2
	sta	<L955+found_1+2
;					break;
	.line	3784
	brl	L10410
;				}
	.line	3785
;			}
L10412:
	.line	3786
;			ptr = ptr->next;
L10411:
	.line	3787
	ldy	#$a
	lda	[<L955+ptr_1],Y
	sta	<R0
	ldy	#$c
	lda	[<L955+ptr_1],Y
	sta	<R0+2
	lda	<R0
	sta	<L955+ptr_1
	lda	<R0+2
	sta	<L955+ptr_1+2
;		}
	.line	3788
	brl	L10409
L10410:
;	}
	.line	3789
;
;	return found;
L10408:
	.line	3791
	ldx	<L955+found_1+2
	lda	<L955+found_1
L967:
	tay
	lda	<L954+2
	sta	<L954+2+4
	lda	<L954+1
	sta	<L954+1+4
	pld
	tsc
	clc
	adc	#L954+4
	tcs
	tya
	rtl
;}
	.line	3792
	.endblock	3792
L954	equ	32
L955	equ	9
	ends
	efunc
	.endfunc	3792,9,32
	.line	3792
	data
L953:
	db	$00
	ends
;
;int k_point_in_list(int x,int y,PCLICKABLE clickableList,int cSize)
;{
	.line	3794
	.line	3795
	GUI
	xdef	~~k_point_in_list
	func
	.function	3795
~~k_point_in_list:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L969
	tcs
	phd
	tcd
x_0	set	4
y_0	set	6
clickableList_0	set	8
cSize_0	set	12
	.block	3795
;	RECT r;
;	int i = 0;
;	int index = -1;
;
;	for(i=0;i<cSize;i++)
r_1	set	0
i_1	set	8
index_1	set	10
	.sym	r,0,10,1,64,25
	.sym	i,8,5,1,16
	.sym	index,10,5,1,16
	.sym	x,4,5,6,16
	.sym	y,6,5,6,16
	.sym	clickableList,8,138,6,32,27
	.sym	cSize,12,5,6,16
	stz	<L970+i_1
	lda	#$ffff
	sta	<L970+index_1
	.line	3800
	stz	<L970+i_1
	brl	L10416
L10415:
;	{
	.line	3801
;		r = clickableList[i].area;
	.line	3802
	ldy	#$0
	lda	<L970+i_1
	bpl	L972
	dey
L972:
	sta	<R0
	sty	<R0+2
	pea	#^$b
	pea	#<$b
	pei	<R0+2
	pei	<R0
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R0
	stx	<R0+2
	clc
	lda	<L969+clickableList_0
	adc	<R0
	sta	<R1
	lda	<L969+clickableList_0+2
	adc	<R0+2
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	clc
	tdc
	adc	#<L970+r_1
	sta	<R0
	lda	#$0
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	lda	#$8
	xref	~~~fmov
	jsl	~~~fmov
;		if(x >=r.x && x<(r.x+r.width))
	.line	3803
;		{
	sec
	lda	<L969+x_0
	sbc	<L970+r_1
	bvs	L973
	eor	#$8000
L973:
	bmi	L974
	brl	L10417
L974:
	clc
	lda	<L970+r_1
	adc	<L970+r_1+4
	sta	<R0
	sec
	lda	<L969+x_0
	sbc	<R0
	bvs	L975
	eor	#$8000
L975:
	bpl	L976
	brl	L10417
L976:
	.line	3804
;			if(y >=r.y && y<(r.y+r.height))
	.line	3805
;			{
	sec
	lda	<L969+y_0
	sbc	<L970+r_1+2
	bvs	L977
	eor	#$8000
L977:
	bmi	L978
	brl	L10418
L978:
	clc
	lda	<L970+r_1+2
	adc	<L970+r_1+6
	sta	<R0
	sec
	lda	<L969+y_0
	sbc	<R0
	bvs	L979
	eor	#$8000
L979:
	bpl	L980
	brl	L10418
L980:
	.line	3806
;				index = i;
	.line	3807
	lda	<L970+i_1
	sta	<L970+index_1
;				//clickableList[i].depth = 1;
;				break;
	.line	3809
	brl	L10414
;			}
	.line	3810
;		}
L10418:
	.line	3811
;	}
L10417:
	.line	3812
L10413:
	inc	<L970+i_1
L10416:
	sec
	lda	<L970+i_1
	sbc	<L969+cSize_0
	bvs	L981
	eor	#$8000
L981:
	bmi	L982
	brl	L10415
L982:
L10414:
;
;	return index;
	.line	3814
	lda	<L970+index_1
L983:
	tay
	lda	<L969+2
	sta	<L969+2+10
	lda	<L969+1
	sta	<L969+1+10
	pld
	tsc
	clc
	adc	#L969+10
	tcs
	tya
	rtl
;}
	.line	3815
	.endblock	3815
L969	equ	20
L970	equ	9
	ends
	efunc
	.endfunc	3815,9,20
	.line	3815
;
;PMENU k_create_context_menus(PWINDOW pWin,int cx,int cy,int width,int height,PMENUDROPDOWNDATA menus,int color, int bgcolor)
;{
	.line	3817
	.line	3818
	GUI
	xdef	~~k_create_context_menus
	func
	.function	3818
~~k_create_context_menus:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L984
	tcs
	phd
	tcd
pWin_0	set	4
cx_0	set	8
cy_0	set	10
width_0	set	12
height_0	set	14
menus_0	set	16
color_0	set	20
bgcolor_0	set	22
	.block	3818
;	FONTMETRIC metric;
;
;	int i = 0;
;	int hy = 0;
;	LPCSTR caption = NULL;
;
;	int borderTitle = 10;
;	int borderWidth = 3;
;
;	int titleOffsetX = cx+4;
;	int titleOffsetY = cy+2;
;	int titleScaler = 0;
;
;	int clientOffsetX = cx+borderWidth+2;
;	int clientOffsetY = cy+borderTitle+1;
;
;	int endX = width + cx - borderWidth;
;
;
;	k_debug_string("k_create_context_menu:fill\r\n");
metric_1	set	0
i_1	set	4
hy_1	set	6
caption_1	set	8
borderTitle_1	set	12
borderWidth_1	set	14
titleOffsetX_1	set	16
titleOffsetY_1	set	18
titleScaler_1	set	20
clientOffsetX_1	set	22
clientOffsetY_1	set	24
endX_1	set	26
	.sym	metric,0,10,1,32,32
	.sym	i,4,5,1,16
	.sym	hy,6,5,1,16
	.sym	caption,8,142,1,32
	.sym	borderTitle,12,5,1,16
	.sym	borderWidth,14,5,1,16
	.sym	titleOffsetX,16,5,1,16
	.sym	titleOffsetY,18,5,1,16
	.sym	titleScaler,20,5,1,16
	.sym	clientOffsetX,22,5,1,16
	.sym	clientOffsetY,24,5,1,16
	.sym	endX,26,5,1,16
	.sym	pWin,4,138,6,32,30
	.sym	cx,8,5,6,16
	.sym	cy,10,5,6,16
	.sym	width,12,5,6,16
	.sym	height,14,5,6,16
	.sym	menus,16,138,6,32,36
	.sym	color,20,5,6,16
	.sym	bgcolor,22,5,6,16
	stz	<L985+i_1
	stz	<L985+hy_1
	stz	<L985+caption_1
	stz	<L985+caption_1+2
	lda	#$a
	sta	<L985+borderTitle_1
	lda	#$3
	sta	<L985+borderWidth_1
	clc
	lda	#$4
	adc	<L984+cx_0
	sta	<L985+titleOffsetX_1
	clc
	lda	#$2
	adc	<L984+cy_0
	sta	<L985+titleOffsetY_1
	stz	<L985+titleScaler_1
	clc
	lda	<L984+cx_0
	adc	<L985+borderWidth_1
	sta	<R0
	clc
	lda	#$2
	adc	<R0
	sta	<L985+clientOffsetX_1
	clc
	lda	<L984+cy_0
	adc	<L985+borderTitle_1
	sta	<R0
	lda	<R0
	ina
	sta	<L985+clientOffsetY_1
	clc
	lda	<L984+width_0
	adc	<L984+cx_0
	sta	<R0
	sec
	lda	<R0
	sbc	<L985+borderWidth_1
	sta	<L985+endX_1
	.line	3838
	pea	#^L968
	pea	#<L968
	jsl	~~k_debug_string
;
;	k_scratch_save_bitblt(cx,cy, width, height, 0, 0);
	.line	3840
	pea	#<$0
	pea	#<$0
	pei	<L984+height_0
	pei	<L984+width_0
	pei	<L984+cy_0
	pei	<L984+cx_0
	jsl	~~k_scratch_save_bitblt
;
;	//k_vdma_fill_rect(cx,cy,width,height,0);
;	//k_vdma_fill_rect(cx+2,cy,width-2,height-2,bgcolor);
;	//k_vdma_fill_rect(cx+1,cy+1,width -1 ,height - 1,bgcolor);
;	k_vdma_fill_rect(cx,cy,width,height,bgcolor);
	.line	3845
	pei	<L984+bgcolor_0
	pei	<L984+height_0
	pei	<L984+width_0
	ldy	#$0
	lda	<L984+cy_0
	bpl	L987
	dey
L987:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	lda	<L984+cx_0
	bpl	L988
	dey
L988:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect
;
;	//k_put_wingadget_point(WINICON_TITLE_BACK,endX - (metric.width*2 + 2),titleOffsetY,14);
;	//k_put_wingadget_point(WINICON_TITLE_FRONT,endX - (metric.width),titleOffsetY,14);
;	i = 0;
	.line	3849
	stz	<L985+i_1
;	caption = menus->captions[i];
	.line	3850
	ldy	#$0
	lda	<L985+i_1
	bpl	L989
	dey
L989:
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
	lda	#$c
	adc	<L984+menus_0
	sta	<R2
	lda	#$0
	adc	<L984+menus_0+2
	sta	<R2+2
	clc
	lda	<R2
	adc	<R0
	sta	<R3
	lda	<R2+2
	adc	<R0+2
	sta	<R3+2
	lda	[<R3]
	sta	<L985+caption_1
	ldy	#$2
	lda	[<R3],Y
	sta	<L985+caption_1+2
;	while(caption!=NULL)
	.line	3851
L10419:
	lda	<L985+caption_1
	ora	<L985+caption_1+2
	bne	L990
	brl	L10420
L990:
;	{
	.line	3852
;		k_debug_strings("k_create_context_menu:caption:",(LPCHAR)caption);
	.line	3853
	pei	<L985+caption_1+2
	pei	<L985+caption_1
	pea	#^L968+29
	pea	#<L968+29
	jsl	~~k_debug_strings
;
;		//caption = strupr(caption);
;		hy = k_draw_text_point(caption,titleOffsetX,titleOffsetY,color);
	.line	3856
	pei	<L984+color_0
	pei	<L985+titleOffsetY_1
	pei	<L985+titleOffsetX_1
	pei	<L985+caption_1+2
	pei	<L985+caption_1
	jsl	~~k_draw_text_point
	sta	<L985+hy_1
;		titleOffsetY+=(FONTH + 2);
	.line	3857
	jsl	~~k_font_getFontHeight
	sta	<R0
	clc
	lda	<R0
	adc	<L985+titleOffsetY_1
	sta	<R1
	clc
	lda	#$2
	adc	<R1
	sta	<L985+titleOffsetY_1
;		i++;
	.line	3858
	inc	<L985+i_1
;		caption = menus->captions[i];
	.line	3859
	ldy	#$0
	lda	<L985+i_1
	bpl	L991
	dey
L991:
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
	lda	#$c
	adc	<L984+menus_0
	sta	<R2
	lda	#$0
	adc	<L984+menus_0+2
	sta	<R2+2
	clc
	lda	<R2
	adc	<R0
	sta	<R3
	lda	<R2+2
	adc	<R0+2
	sta	<R3+2
	lda	[<R3]
	sta	<L985+caption_1
	ldy	#$2
	lda	[<R3],Y
	sta	<L985+caption_1+2
;	}
	.line	3860
	brl	L10419
L10420:
;
;	return NULL;
	.line	3862
	lda	#$0
	tax
	lda	#$0
L992:
	tay
	lda	<L984+2
	sta	<L984+2+20
	lda	<L984+1
	sta	<L984+1+20
	pld
	tsc
	clc
	adc	#L984+20
	tcs
	tya
	rtl
;}
	.line	3863
	.endblock	3863
L984	equ	44
L985	equ	17
	ends
	efunc
	.endfunc	3863,17,44
	.line	3863
	data
L968:
	db	$6B,$5F,$63,$72,$65,$61,$74,$65,$5F,$63,$6F,$6E,$74,$65,$78
	db	$74,$5F,$6D,$65,$6E,$75,$3A,$66,$69,$6C,$6C,$0D,$0A,$00,$6B
	db	$5F,$63,$72,$65,$61,$74,$65,$5F,$63,$6F,$6E,$74,$65,$78,$74
	db	$5F,$6D,$65,$6E,$75,$3A,$63,$61,$70,$74,$69,$6F,$6E,$3A,$00
	ends
;
;PMENU k_create_context_menu(int cx,int cy,int width,int height,char FAR **captions,int color, int bgcolor)
;{
	.line	3865
	.line	3866
	GUI
	xdef	~~k_create_context_menu
	func
	.function	3866
~~k_create_context_menu:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L994
	tcs
	phd
	tcd
cx_0	set	4
cy_0	set	6
width_0	set	8
height_0	set	10
captions_0	set	12
color_0	set	16
bgcolor_0	set	18
	.block	3866
;	FONTMETRIC metric;
;
;	int i = 0;
;	int hy = 0;
;	char FAR *caption = NULL;
;
;	int borderTitle = 10;
;	int borderWidth = 3;
;
;	int titleOffsetX = cx+4;
;	int titleOffsetY = cy+2;
;	int titleScaler = 0;
;
;	int clientOffsetX = cx+borderWidth+2;
;	int clientOffsetY = cy+borderTitle+1;
;
;	int endX = width + cx - borderWidth;
;
;
;	k_debug_string("k_create_context_menu:fill\r\n");
metric_1	set	0
i_1	set	4
hy_1	set	6
caption_1	set	8
borderTitle_1	set	12
borderWidth_1	set	14
titleOffsetX_1	set	16
titleOffsetY_1	set	18
titleScaler_1	set	20
clientOffsetX_1	set	22
clientOffsetY_1	set	24
endX_1	set	26
	.sym	metric,0,10,1,32,32
	.sym	i,4,5,1,16
	.sym	hy,6,5,1,16
	.sym	caption,8,142,1,32
	.sym	borderTitle,12,5,1,16
	.sym	borderWidth,14,5,1,16
	.sym	titleOffsetX,16,5,1,16
	.sym	titleOffsetY,18,5,1,16
	.sym	titleScaler,20,5,1,16
	.sym	clientOffsetX,22,5,1,16
	.sym	clientOffsetY,24,5,1,16
	.sym	endX,26,5,1,16
	.sym	cx,4,5,6,16
	.sym	cy,6,5,6,16
	.sym	width,8,5,6,16
	.sym	height,10,5,6,16
	.sym	captions,12,1166,6,32
	.sym	color,16,5,6,16
	.sym	bgcolor,18,5,6,16
	stz	<L995+i_1
	stz	<L995+hy_1
	stz	<L995+caption_1
	stz	<L995+caption_1+2
	lda	#$a
	sta	<L995+borderTitle_1
	lda	#$3
	sta	<L995+borderWidth_1
	clc
	lda	#$4
	adc	<L994+cx_0
	sta	<L995+titleOffsetX_1
	clc
	lda	#$2
	adc	<L994+cy_0
	sta	<L995+titleOffsetY_1
	stz	<L995+titleScaler_1
	clc
	lda	<L994+cx_0
	adc	<L995+borderWidth_1
	sta	<R0
	clc
	lda	#$2
	adc	<R0
	sta	<L995+clientOffsetX_1
	clc
	lda	<L994+cy_0
	adc	<L995+borderTitle_1
	sta	<R0
	lda	<R0
	ina
	sta	<L995+clientOffsetY_1
	clc
	lda	<L994+width_0
	adc	<L994+cx_0
	sta	<R0
	sec
	lda	<R0
	sbc	<L995+borderWidth_1
	sta	<L995+endX_1
	.line	3886
	pea	#^L993
	pea	#<L993
	jsl	~~k_debug_string
;
;	k_scratch_save_bitblt(cx,cy, width, height, 0, 0);
	.line	3888
	pea	#<$0
	pea	#<$0
	pei	<L994+height_0
	pei	<L994+width_0
	pei	<L994+cy_0
	pei	<L994+cx_0
	jsl	~~k_scratch_save_bitblt
;
;	//k_vdma_fill_rect(cx,cy,width,height,0);
;	//k_vdma_fill_rect(cx+2,cy,width-2,height-2,bgcolor);
;	//k_vdma_fill_rect(cx+1,cy+1,width -1 ,height - 1,bgcolor);
;	k_vdma_fill_rect(cx,cy,width,height,bgcolor);
	.line	3893
	pei	<L994+bgcolor_0
	pei	<L994+height_0
	pei	<L994+width_0
	ldy	#$0
	lda	<L994+cy_0
	bpl	L997
	dey
L997:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	lda	<L994+cx_0
	bpl	L998
	dey
L998:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect
;
;	//k_put_wingadget_point(WINICON_TITLE_BACK,endX - (metric.width*2 + 2),titleOffsetY,14);
;	//k_put_wingadget_point(WINICON_TITLE_FRONT,endX - (metric.width),titleOffsetY,14);
;	i = 0;
	.line	3897
	stz	<L995+i_1
;	caption = captions[i];
	.line	3898
	ldy	#$0
	lda	<L995+i_1
	bpl	L999
	dey
L999:
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
	lda	<L994+captions_0
	adc	<R0
	sta	<R2
	lda	<L994+captions_0+2
	adc	<R0+2
	sta	<R2+2
	lda	[<R2]
	sta	<L995+caption_1
	ldy	#$2
	lda	[<R2],Y
	sta	<L995+caption_1+2
;	while(caption!=NULL)
	.line	3899
L10421:
	lda	<L995+caption_1
	ora	<L995+caption_1+2
	bne	L1000
	brl	L10422
L1000:
;	{
	.line	3900
;		k_debug_strings("k_create_context_menu:caption:",caption);
	.line	3901
	pei	<L995+caption_1+2
	pei	<L995+caption_1
	pea	#^L993+29
	pea	#<L993+29
	jsl	~~k_debug_strings
;
;		//caption = strupr(caption);
;		hy = k_draw_text_point(caption,titleOffsetX,titleOffsetY,color);
	.line	3904
	pei	<L994+color_0
	pei	<L995+titleOffsetY_1
	pei	<L995+titleOffsetX_1
	pei	<L995+caption_1+2
	pei	<L995+caption_1
	jsl	~~k_draw_text_point
	sta	<L995+hy_1
;
;		titleOffsetY+=(FONTH + 2);
	.line	3906
	jsl	~~k_font_getFontHeight
	sta	<R0
	clc
	lda	<R0
	adc	<L995+titleOffsetY_1
	sta	<R1
	clc
	lda	#$2
	adc	<R1
	sta	<L995+titleOffsetY_1
;		i++;
	.line	3907
	inc	<L995+i_1
;		caption = captions[i];
	.line	3908
	ldy	#$0
	lda	<L995+i_1
	bpl	L1001
	dey
L1001:
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
	lda	<L994+captions_0
	adc	<R0
	sta	<R2
	lda	<L994+captions_0+2
	adc	<R0+2
	sta	<R2+2
	lda	[<R2]
	sta	<L995+caption_1
	ldy	#$2
	lda	[<R2],Y
	sta	<L995+caption_1+2
;	}
	.line	3909
	brl	L10421
L10422:
;
;	return NULL;
	.line	3911
	lda	#$0
	tax
	lda	#$0
L1002:
	tay
	lda	<L994+2
	sta	<L994+2+16
	lda	<L994+1
	sta	<L994+1+16
	pld
	tsc
	clc
	adc	#L994+16
	tcs
	tya
	rtl
;
;}
	.line	3913
	.endblock	3913
L994	equ	40
L995	equ	13
	ends
	efunc
	.endfunc	3913,13,40
	.line	3913
	data
L993:
	db	$6B,$5F,$63,$72,$65,$61,$74,$65,$5F,$63,$6F,$6E,$74,$65,$78
	db	$74,$5F,$6D,$65,$6E,$75,$3A,$66,$69,$6C,$6C,$0D,$0A,$00,$6B
	db	$5F,$63,$72,$65,$61,$74,$65,$5F,$63,$6F,$6E,$74,$65,$78,$74
	db	$5F,$6D,$65,$6E,$75,$3A,$63,$61,$70,$74,$69,$6F,$6E,$3A,$00
	ends
;
;PMENU k_create_context_menu_in_window_ex(PWINDOW pWin,UINT selected,UINT unselected,int cx,int cy,int width,int height,char FAR **captions,char FAR *chrome,int color, int bgcolor)
;{
	.line	3915
	.line	3916
	GUI
	xdef	~~k_create_context_menu_in_window_ex
	func
	.function	3916
~~k_create_context_menu_in_window_ex:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L1004
	tcs
	phd
	tcd
pWin_0	set	4
selected_0	set	8
unselected_0	set	10
cx_0	set	12
cy_0	set	14
width_0	set	16
height_0	set	18
captions_0	set	20
chrome_0	set	24
color_0	set	28
bgcolor_0	set	30
	.block	3916
;	FONTMETRIC metric;
;
;	int i = 0;
;	int dx = 0;
;	char FAR *caption = NULL;
;
;	int borderTitle = 10;
;	int borderWidth = 3;
;
;	int titleOffsetX = cx+4;
;	int titleOffsetY = cy+2;
;	int titleScaler = 0;
;
;	int clientOffsetX = cx+borderWidth+2;
;	int clientOffsetY = cy+borderTitle+1;
;
;	int endX = width + cx - borderWidth;
;
;
;	if(selected == -1 && unselected == -1)
metric_1	set	0
i_1	set	4
dx_1	set	6
caption_1	set	8
borderTitle_1	set	12
borderWidth_1	set	14
titleOffsetX_1	set	16
titleOffsetY_1	set	18
titleScaler_1	set	20
clientOffsetX_1	set	22
clientOffsetY_1	set	24
endX_1	set	26
	.sym	metric,0,10,1,32,32
	.sym	i,4,5,1,16
	.sym	dx,6,5,1,16
	.sym	caption,8,142,1,32
	.sym	borderTitle,12,5,1,16
	.sym	borderWidth,14,5,1,16
	.sym	titleOffsetX,16,5,1,16
	.sym	titleOffsetY,18,5,1,16
	.sym	titleScaler,20,5,1,16
	.sym	clientOffsetX,22,5,1,16
	.sym	clientOffsetY,24,5,1,16
	.sym	endX,26,5,1,16
	.sym	pWin,4,138,6,32,30
	.sym	selected,8,16,6,16
	.sym	unselected,10,16,6,16
	.sym	cx,12,5,6,16
	.sym	cy,14,5,6,16
	.sym	width,16,5,6,16
	.sym	height,18,5,6,16
	.sym	captions,20,1166,6,32
	.sym	chrome,24,142,6,32
	.sym	color,28,5,6,16
	.sym	bgcolor,30,5,6,16
	stz	<L1005+i_1
	stz	<L1005+dx_1
	stz	<L1005+caption_1
	stz	<L1005+caption_1+2
	lda	#$a
	sta	<L1005+borderTitle_1
	lda	#$3
	sta	<L1005+borderWidth_1
	clc
	lda	#$4
	adc	<L1004+cx_0
	sta	<L1005+titleOffsetX_1
	clc
	lda	#$2
	adc	<L1004+cy_0
	sta	<L1005+titleOffsetY_1
	stz	<L1005+titleScaler_1
	clc
	lda	<L1004+cx_0
	adc	<L1005+borderWidth_1
	sta	<R0
	clc
	lda	#$2
	adc	<R0
	sta	<L1005+clientOffsetX_1
	clc
	lda	<L1004+cy_0
	adc	<L1005+borderTitle_1
	sta	<R0
	lda	<R0
	ina
	sta	<L1005+clientOffsetY_1
	clc
	lda	<L1004+width_0
	adc	<L1004+cx_0
	sta	<R0
	sec
	lda	<R0
	sbc	<L1005+borderWidth_1
	sta	<L1005+endX_1
	.line	3936
;		k_vdma_fill_rect_ex(cx,cy,width,height,bgcolor,BITMAP_FRONT);
	lda	<L1004+selected_0
	cmp	#<$ffffffff
	beq	L1007
	brl	L10423
L1007:
	lda	<L1004+unselected_0
	cmp	#<$ffffffff
	beq	L1008
	brl	L10423
L1008:
	.line	3937
	pea	#<$0
	pei	<L1004+bgcolor_0
	pei	<L1004+height_0
	pei	<L1004+width_0
	ldy	#$0
	lda	<L1004+cy_0
	bpl	L1009
	dey
L1009:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	lda	<L1004+cx_0
	bpl	L1010
	dey
L1010:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect_ex
;
;	//k_put_wingadget_point(WINICON_TITLE_BACK,endX - (metric.width*2 + 2),titleOffsetY,14);
;	//k_put_wingadget_point(WINICON_TITLE_FRONT,endX - (metric.width),titleOffsetY,14);
;	i = 0;
L10423:
	.line	3941
	stz	<L1005+i_1
;	caption = captions[i];
	.line	3942
	ldy	#$0
	lda	<L1005+i_1
	bpl	L1011
	dey
L1011:
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
	lda	<L1004+captions_0
	adc	<R0
	sta	<R2
	lda	<L1004+captions_0+2
	adc	<R0+2
	sta	<R2+2
	lda	[<R2]
	sta	<L1005+caption_1
	ldy	#$2
	lda	[<R2],Y
	sta	<L1005+caption_1+2
;	while(caption!=NULL)
	.line	3943
L10424:
	lda	<L1005+caption_1
	ora	<L1005+caption_1+2
	bne	L1012
	brl	L10425
L1012:
;	{
	.line	3944
;		char chromeByte = chrome[i];
;		//if(chromeByte)
;		//	k_debug_strings("#### k_create_context_menu_in_window_ex:chrome:CHECKED:",caption);
;		//k_debug_strings("k_create_context_menu:caption:",caption);
;
;		//caption = strupr(caption);
;
;		if(selected!=-1 && unselected!=-1)
	.block	3952
chromeByte_2	set	28
	.sym	chromeByte,28,14,1,8
	sep	#$20
	longa	off
	ldy	<L1005+i_1
	lda	[<L1004+chrome_0],Y
	sta	<L1005+chromeByte_2
	rep	#$20
	longa	on
	.line	3952
;		{
	lda	<L1004+selected_0
	cmp	#<$ffffffff
	bne	L1014
	brl	L10426
L1014:
	lda	<L1004+unselected_0
	cmp	#<$ffffffff
	bne	L1015
	brl	L10426
L1015:
	.line	3953
;			if( i == selected && caption[0] != '_')
	.line	3954
;			{
	lda	<L1005+i_1
	cmp	<L1004+selected_0
	beq	L1016
	brl	L10427
L1016:
	sep	#$20
	longa	off
	lda	[<L1005+caption_1]
	cmp	#<$5f
	rep	#$20
	longa	on
	bne	L1017
	brl	L10427
L1017:
	.line	3955
;				k_vdma_fill_rect_ex(pWin->win_x,titleOffsetY,pWin->win_width,FONTH,color,BITMAP_FRONT);
	.line	3956
	pea	#<$0
	pei	<L1004+color_0
	jsl	~~k_font_getFontHeight
	pha
	ldy	#$c
	lda	[<L1004+pWin_0],Y
	pha
	ldy	#$0
	lda	<L1005+titleOffsetY_1
	bpl	L1018
	dey
L1018:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	phy
	ldy	#$8
	lda	[<L1004+pWin_0],Y
	ply
	rol	A
	ror	A
	bpl	L1019
	dey
L1019:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect_ex
;				dx = k_draw_text_point_ex(caption,titleOffsetX,titleOffsetY,bgcolor,BITMAP_FRONT);
	.line	3957
	pea	#<$0
	pei	<L1004+bgcolor_0
	pei	<L1005+titleOffsetY_1
	pei	<L1005+titleOffsetX_1
	pei	<L1005+caption_1+2
	pei	<L1005+caption_1
	jsl	~~k_draw_text_point_ex
	sta	<L1005+dx_1
;				if(chromeByte)
	.line	3958
;				{
	lda	<L1005+chromeByte_2
	and	#$ff
	bne	L1020
	brl	L10428
L1020:
	.line	3959
;					dx = k_draw_text_point_ex("*",titleOffsetX + dx,titleOffsetY,bgcolor,BITMAP_FRONT);
	.line	3960
	pea	#<$0
	pei	<L1004+bgcolor_0
	pei	<L1005+titleOffsetY_1
	clc
	lda	<L1005+titleOffsetX_1
	adc	<L1005+dx_1
	pha
	pea	#^L1003
	pea	#<L1003
	jsl	~~k_draw_text_point_ex
	sta	<L1005+dx_1
;				}
	.line	3961
;			}
L10428:
	.line	3962
;			else if( i == unselected && caption[0] != '_')
	brl	L10429
L10427:
	.line	3963
;			{
	lda	<L1005+i_1
	cmp	<L1004+unselected_0
	beq	L1021
	brl	L10430
L1021:
	sep	#$20
	longa	off
	lda	[<L1005+caption_1]
	cmp	#<$5f
	rep	#$20
	longa	on
	bne	L1022
	brl	L10430
L1022:
	.line	3964
;				k_vdma_fill_rect_ex(pWin->win_x,titleOffsetY,pWin->win_width,FONTH,bgcolor,BITMAP_FRONT);
	.line	3965
	pea	#<$0
	pei	<L1004+bgcolor_0
	jsl	~~k_font_getFontHeight
	pha
	ldy	#$c
	lda	[<L1004+pWin_0],Y
	pha
	ldy	#$0
	lda	<L1005+titleOffsetY_1
	bpl	L1023
	dey
L1023:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	phy
	ldy	#$8
	lda	[<L1004+pWin_0],Y
	ply
	rol	A
	ror	A
	bpl	L1024
	dey
L1024:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect_ex
;				dx = k_draw_text_point_ex(caption,titleOffsetX,titleOffsetY,color,BITMAP_FRONT);
	.line	3966
	pea	#<$0
	pei	<L1004+color_0
	pei	<L1005+titleOffsetY_1
	pei	<L1005+titleOffsetX_1
	pei	<L1005+caption_1+2
	pei	<L1005+caption_1
	jsl	~~k_draw_text_point_ex
	sta	<L1005+dx_1
;				if(chromeByte)
	.line	3967
;				{
	lda	<L1005+chromeByte_2
	and	#$ff
	bne	L1025
	brl	L10431
L1025:
	.line	3968
;					dx = k_draw_text_point_ex("*",titleOffsetX + dx,titleOffsetY,color,BITMAP_FRONT);
	.line	3969
	pea	#<$0
	pei	<L1004+color_0
	pei	<L1005+titleOffsetY_1
	clc
	lda	<L1005+titleOffsetX_1
	adc	<L1005+dx_1
	pha
	pea	#^L1003+2
	pea	#<L1003+2
	jsl	~~k_draw_text_point_ex
	sta	<L1005+dx_1
;				}
	.line	3970
;			}
L10431:
	.line	3971
;
;		}
L10430:
L10429:
	.line	3973
;		else
	brl	L10432
L10426:
;		{
	.line	3975
;			if( i == selected && caption[0] != '_')
	.line	3976
;			{
	lda	<L1005+i_1
	cmp	<L1004+selected_0
	beq	L1026
	brl	L10433
L1026:
	sep	#$20
	longa	off
	lda	[<L1005+caption_1]
	cmp	#<$5f
	rep	#$20
	longa	on
	bne	L1027
	brl	L10433
L1027:
	.line	3977
;				k_vdma_fill_rect_ex(pWin->win_x,titleOffsetY,pWin->win_width,FONTH,color,BITMAP_FRONT);
	.line	3978
	pea	#<$0
	pei	<L1004+color_0
	jsl	~~k_font_getFontHeight
	pha
	ldy	#$c
	lda	[<L1004+pWin_0],Y
	pha
	ldy	#$0
	lda	<L1005+titleOffsetY_1
	bpl	L1028
	dey
L1028:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	phy
	ldy	#$8
	lda	[<L1004+pWin_0],Y
	ply
	rol	A
	ror	A
	bpl	L1029
	dey
L1029:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect_ex
;				dx = k_draw_text_point_ex(caption,titleOffsetX,titleOffsetY,bgcolor,BITMAP_FRONT);
	.line	3979
	pea	#<$0
	pei	<L1004+bgcolor_0
	pei	<L1005+titleOffsetY_1
	pei	<L1005+titleOffsetX_1
	pei	<L1005+caption_1+2
	pei	<L1005+caption_1
	jsl	~~k_draw_text_point_ex
	sta	<L1005+dx_1
;				if(chromeByte)
	.line	3980
;				{
	lda	<L1005+chromeByte_2
	and	#$ff
	bne	L1030
	brl	L10434
L1030:
	.line	3981
;					dx = k_draw_text_point_ex("*",titleOffsetX + dx,titleOffsetY,bgcolor,BITMAP_FRONT);
	.line	3982
	pea	#<$0
	pei	<L1004+bgcolor_0
	pei	<L1005+titleOffsetY_1
	clc
	lda	<L1005+titleOffsetX_1
	adc	<L1005+dx_1
	pha
	pea	#^L1003+4
	pea	#<L1003+4
	jsl	~~k_draw_text_point_ex
	sta	<L1005+dx_1
;				}
	.line	3983
;			}
L10434:
	.line	3984
;			else
	brl	L10435
L10433:
;			{
	.line	3986
;				dx = k_draw_text_point_ex(caption,titleOffsetX,titleOffsetY,color,BITMAP_FRONT);
	.line	3987
	pea	#<$0
	pei	<L1004+color_0
	pei	<L1005+titleOffsetY_1
	pei	<L1005+titleOffsetX_1
	pei	<L1005+caption_1+2
	pei	<L1005+caption_1
	jsl	~~k_draw_text_point_ex
	sta	<L1005+dx_1
;				if(chromeByte)
	.line	3988
;				{
	lda	<L1005+chromeByte_2
	and	#$ff
	bne	L1031
	brl	L10436
L1031:
	.line	3989
;					dx = k_draw_text_point_ex("*",titleOffsetX + dx,titleOffsetY,color,BITMAP_FRONT);
	.line	3990
	pea	#<$0
	pei	<L1004+color_0
	pei	<L1005+titleOffsetY_1
	clc
	lda	<L1005+titleOffsetX_1
	adc	<L1005+dx_1
	pha
	pea	#^L1003+6
	pea	#<L1003+6
	jsl	~~k_draw_text_point_ex
	sta	<L1005+dx_1
;				}
	.line	3991
;
;			}
L10436:
	.line	3993
L10435:
;		}
	.line	3994
L10432:
;		titleOffsetY+=(FONTH + 2);
	.line	3995
	jsl	~~k_font_getFontHeight
	sta	<R0
	clc
	lda	<R0
	adc	<L1005+titleOffsetY_1
	sta	<R1
	clc
	lda	#$2
	adc	<R1
	sta	<L1005+titleOffsetY_1
;		i++;
	.line	3996
	inc	<L1005+i_1
;		caption = captions[i];
	.line	3997
	ldy	#$0
	lda	<L1005+i_1
	bpl	L1032
	dey
L1032:
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
	lda	<L1004+captions_0
	adc	<R0
	sta	<R2
	lda	<L1004+captions_0+2
	adc	<R0+2
	sta	<R2+2
	lda	[<R2]
	sta	<L1005+caption_1
	ldy	#$2
	lda	[<R2],Y
	sta	<L1005+caption_1+2
;	}
	.endblock	3998
	.line	3998
	brl	L10424
L10425:
;
;	return NULL;
	.line	4000
	lda	#$0
	tax
	lda	#$0
L1033:
	tay
	lda	<L1004+2
	sta	<L1004+2+28
	lda	<L1004+1
	sta	<L1004+1+28
	pld
	tsc
	clc
	adc	#L1004+28
	tcs
	tya
	rtl
;
;}
	.line	4002
	.endblock	4002
L1004	equ	41
L1005	equ	13
	ends
	efunc
	.endfunc	4002,13,41
	.line	4002
	data
L1003:
	db	$2A,$00,$2A,$00,$2A,$00,$2A,$00
	ends
;
;PMENU k_create_context_menu_in_window(PWINDOW pWin,UINT selected,UINT unselected,
;		                              int cx,int cy,int width,int height,
;									  char FAR **captions,int color, int bgcolor)
;{
	.line	4004
	.line	4007
	GUI
	xdef	~~k_create_context_menu_in_window
	func
	.function	4007
~~k_create_context_menu_in_window:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L1035
	tcs
	phd
	tcd
pWin_0	set	4
selected_0	set	8
unselected_0	set	10
cx_0	set	12
cy_0	set	14
width_0	set	16
height_0	set	18
captions_0	set	20
color_0	set	24
bgcolor_0	set	26
	.block	4007
;	FONTMETRIC metric;
;
;	int i = 0;
;	int hy = 0;
;	char FAR *caption = NULL;
;
;	int borderTitle = 10;
;	int borderWidth = 3;
;
;	int titleOffsetX = cx+4;
;	int titleOffsetY = cy+2;
;	int titleScaler = 0;
;
;	int clientOffsetX = cx+borderWidth+2;
;	int clientOffsetY = cy+borderTitle+1;
;
;	int endX = width + cx - borderWidth;
;
;
;	if(selected == -1 && unselected == -1)
metric_1	set	0
i_1	set	4
hy_1	set	6
caption_1	set	8
borderTitle_1	set	12
borderWidth_1	set	14
titleOffsetX_1	set	16
titleOffsetY_1	set	18
titleScaler_1	set	20
clientOffsetX_1	set	22
clientOffsetY_1	set	24
endX_1	set	26
	.sym	metric,0,10,1,32,32
	.sym	i,4,5,1,16
	.sym	hy,6,5,1,16
	.sym	caption,8,142,1,32
	.sym	borderTitle,12,5,1,16
	.sym	borderWidth,14,5,1,16
	.sym	titleOffsetX,16,5,1,16
	.sym	titleOffsetY,18,5,1,16
	.sym	titleScaler,20,5,1,16
	.sym	clientOffsetX,22,5,1,16
	.sym	clientOffsetY,24,5,1,16
	.sym	endX,26,5,1,16
	.sym	pWin,4,138,6,32,30
	.sym	selected,8,16,6,16
	.sym	unselected,10,16,6,16
	.sym	cx,12,5,6,16
	.sym	cy,14,5,6,16
	.sym	width,16,5,6,16
	.sym	height,18,5,6,16
	.sym	captions,20,1166,6,32
	.sym	color,24,5,6,16
	.sym	bgcolor,26,5,6,16
	stz	<L1036+i_1
	stz	<L1036+hy_1
	stz	<L1036+caption_1
	stz	<L1036+caption_1+2
	lda	#$a
	sta	<L1036+borderTitle_1
	lda	#$3
	sta	<L1036+borderWidth_1
	clc
	lda	#$4
	adc	<L1035+cx_0
	sta	<L1036+titleOffsetX_1
	clc
	lda	#$2
	adc	<L1035+cy_0
	sta	<L1036+titleOffsetY_1
	stz	<L1036+titleScaler_1
	clc
	lda	<L1035+cx_0
	adc	<L1036+borderWidth_1
	sta	<R0
	clc
	lda	#$2
	adc	<R0
	sta	<L1036+clientOffsetX_1
	clc
	lda	<L1035+cy_0
	adc	<L1036+borderTitle_1
	sta	<R0
	lda	<R0
	ina
	sta	<L1036+clientOffsetY_1
	clc
	lda	<L1035+width_0
	adc	<L1035+cx_0
	sta	<R0
	sec
	lda	<R0
	sbc	<L1036+borderWidth_1
	sta	<L1036+endX_1
	.line	4027
;		k_vdma_fill_rect_ex(cx,cy,width,height,bgcolor,BITMAP_FRONT);
	lda	<L1035+selected_0
	cmp	#<$ffffffff
	beq	L1038
	brl	L10437
L1038:
	lda	<L1035+unselected_0
	cmp	#<$ffffffff
	beq	L1039
	brl	L10437
L1039:
	.line	4028
	pea	#<$0
	pei	<L1035+bgcolor_0
	pei	<L1035+height_0
	pei	<L1035+width_0
	ldy	#$0
	lda	<L1035+cy_0
	bpl	L1040
	dey
L1040:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	lda	<L1035+cx_0
	bpl	L1041
	dey
L1041:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect_ex
;
;	//k_put_wingadget_point(WINICON_TITLE_BACK,endX - (metric.width*2 + 2),titleOffsetY,14);
;	//k_put_wingadget_point(WINICON_TITLE_FRONT,endX - (metric.width),titleOffsetY,14);
;	i = 0;
L10437:
	.line	4032
	stz	<L1036+i_1
;	caption = captions[i];
	.line	4033
	ldy	#$0
	lda	<L1036+i_1
	bpl	L1042
	dey
L1042:
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
	lda	<L1035+captions_0
	adc	<R0
	sta	<R2
	lda	<L1035+captions_0+2
	adc	<R0+2
	sta	<R2+2
	lda	[<R2]
	sta	<L1036+caption_1
	ldy	#$2
	lda	[<R2],Y
	sta	<L1036+caption_1+2
;	while(caption!=NULL)
	.line	4034
L10438:
	lda	<L1036+caption_1
	ora	<L1036+caption_1+2
	bne	L1043
	brl	L10439
L1043:
;	{
	.line	4035
;		//k_debug_strings("k_create_context_menu:caption:",caption);
;
;		//caption = strupr(caption);
;
;		if(selected!=-1 && unselected!=-1)
	.line	4040
;		{
	lda	<L1035+selected_0
	cmp	#<$ffffffff
	bne	L1044
	brl	L10440
L1044:
	lda	<L1035+unselected_0
	cmp	#<$ffffffff
	bne	L1045
	brl	L10440
L1045:
	.line	4041
;			if( i == selected && caption[0] != '_')
	.line	4042
;			{
	lda	<L1036+i_1
	cmp	<L1035+selected_0
	beq	L1046
	brl	L10441
L1046:
	sep	#$20
	longa	off
	lda	[<L1036+caption_1]
	cmp	#<$5f
	rep	#$20
	longa	on
	bne	L1047
	brl	L10441
L1047:
	.line	4043
;				k_vdma_fill_rect_ex(pWin->win_x,titleOffsetY,pWin->win_width,FONTH,color,BITMAP_FRONT);
	.line	4044
	pea	#<$0
	pei	<L1035+color_0
	jsl	~~k_font_getFontHeight
	pha
	ldy	#$c
	lda	[<L1035+pWin_0],Y
	pha
	ldy	#$0
	lda	<L1036+titleOffsetY_1
	bpl	L1048
	dey
L1048:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	phy
	ldy	#$8
	lda	[<L1035+pWin_0],Y
	ply
	rol	A
	ror	A
	bpl	L1049
	dey
L1049:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect_ex
;				hy = k_draw_text_point_ex(caption,titleOffsetX,titleOffsetY,bgcolor,BITMAP_FRONT);
	.line	4045
	pea	#<$0
	pei	<L1035+bgcolor_0
	pei	<L1036+titleOffsetY_1
	pei	<L1036+titleOffsetX_1
	pei	<L1036+caption_1+2
	pei	<L1036+caption_1
	jsl	~~k_draw_text_point_ex
	sta	<L1036+hy_1
;			}
	.line	4046
;			else if( i == unselected && caption[0] != '_')
	brl	L10442
L10441:
	.line	4047
;			{
	lda	<L1036+i_1
	cmp	<L1035+unselected_0
	beq	L1050
	brl	L10443
L1050:
	sep	#$20
	longa	off
	lda	[<L1036+caption_1]
	cmp	#<$5f
	rep	#$20
	longa	on
	bne	L1051
	brl	L10443
L1051:
	.line	4048
;				k_vdma_fill_rect_ex(pWin->win_x,titleOffsetY,pWin->win_width,FONTH,bgcolor,BITMAP_FRONT);
	.line	4049
	pea	#<$0
	pei	<L1035+bgcolor_0
	jsl	~~k_font_getFontHeight
	pha
	ldy	#$c
	lda	[<L1035+pWin_0],Y
	pha
	ldy	#$0
	lda	<L1036+titleOffsetY_1
	bpl	L1052
	dey
L1052:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	phy
	ldy	#$8
	lda	[<L1035+pWin_0],Y
	ply
	rol	A
	ror	A
	bpl	L1053
	dey
L1053:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect_ex
;				hy = k_draw_text_point_ex(caption,titleOffsetX,titleOffsetY,color,BITMAP_FRONT);
	.line	4050
	pea	#<$0
	pei	<L1035+color_0
	pei	<L1036+titleOffsetY_1
	pei	<L1036+titleOffsetX_1
	pei	<L1036+caption_1+2
	pei	<L1036+caption_1
	jsl	~~k_draw_text_point_ex
	sta	<L1036+hy_1
;			}
	.line	4051
;
;		}
L10443:
L10442:
	.line	4053
;		else
	brl	L10444
L10440:
;		{
	.line	4055
;			if( i == selected && caption[0] != '_')
	.line	4056
;			{
	lda	<L1036+i_1
	cmp	<L1035+selected_0
	beq	L1054
	brl	L10445
L1054:
	sep	#$20
	longa	off
	lda	[<L1036+caption_1]
	cmp	#<$5f
	rep	#$20
	longa	on
	bne	L1055
	brl	L10445
L1055:
	.line	4057
;				k_vdma_fill_rect_ex(pWin->win_x,titleOffsetY,pWin->win_width,FONTH,color,BITMAP_FRONT);
	.line	4058
	pea	#<$0
	pei	<L1035+color_0
	jsl	~~k_font_getFontHeight
	pha
	ldy	#$c
	lda	[<L1035+pWin_0],Y
	pha
	ldy	#$0
	lda	<L1036+titleOffsetY_1
	bpl	L1056
	dey
L1056:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	phy
	ldy	#$8
	lda	[<L1035+pWin_0],Y
	ply
	rol	A
	ror	A
	bpl	L1057
	dey
L1057:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect_ex
;				hy = k_draw_text_point_ex(caption,titleOffsetX,titleOffsetY,bgcolor,BITMAP_FRONT);
	.line	4059
	pea	#<$0
	pei	<L1035+bgcolor_0
	pei	<L1036+titleOffsetY_1
	pei	<L1036+titleOffsetX_1
	pei	<L1036+caption_1+2
	pei	<L1036+caption_1
	jsl	~~k_draw_text_point_ex
	sta	<L1036+hy_1
;			}
	.line	4060
;			else
	brl	L10446
L10445:
;			{
	.line	4062
;				hy = k_draw_text_point_ex(caption,titleOffsetX,titleOffsetY,color,BITMAP_FRONT);
	.line	4063
	pea	#<$0
	pei	<L1035+color_0
	pei	<L1036+titleOffsetY_1
	pei	<L1036+titleOffsetX_1
	pei	<L1036+caption_1+2
	pei	<L1036+caption_1
	jsl	~~k_draw_text_point_ex
	sta	<L1036+hy_1
;			}
	.line	4064
L10446:
;		}
	.line	4065
L10444:
;		titleOffsetY+=(FONTH + 2);
	.line	4066
	jsl	~~k_font_getFontHeight
	sta	<R0
	clc
	lda	<R0
	adc	<L1036+titleOffsetY_1
	sta	<R1
	clc
	lda	#$2
	adc	<R1
	sta	<L1036+titleOffsetY_1
;		i++;
	.line	4067
	inc	<L1036+i_1
;		caption = captions[i];
	.line	4068
	ldy	#$0
	lda	<L1036+i_1
	bpl	L1058
	dey
L1058:
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
	lda	<L1035+captions_0
	adc	<R0
	sta	<R2
	lda	<L1035+captions_0+2
	adc	<R0+2
	sta	<R2+2
	lda	[<R2]
	sta	<L1036+caption_1
	ldy	#$2
	lda	[<R2],Y
	sta	<L1036+caption_1+2
;	}
	.line	4069
	brl	L10438
L10439:
;
;	return NULL;
	.line	4071
	lda	#$0
	tax
	lda	#$0
L1059:
	tay
	lda	<L1035+2
	sta	<L1035+2+24
	lda	<L1035+1
	sta	<L1035+1+24
	pld
	tsc
	clc
	adc	#L1035+24
	tcs
	tya
	rtl
;
;}
	.line	4073
	.endblock	4073
L1035	equ	40
L1036	equ	13
	ends
	efunc
	.endfunc	4073,13,40
	.line	4073
;
;
;PMENU k_render_context_menu(PMENU menu)
;{
	.line	4076
	.line	4077
	GUI
	xdef	~~k_render_context_menu
	func
	.function	4077
~~k_render_context_menu:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L1060
	tcs
	phd
	tcd
menu_0	set	4
	.block	4077
;	FONTMETRIC metric;
;
;	int i = 0;
;
;	int cx = menu->cx;
;	int cy = menu->cy;
;
;	char FAR *caption = NULL;
;
;	int borderTitle = 10;
;	int borderWidth = 3;
;
;	int titleOffsetX = cx+2;
;	int titleOffsetY = cy+2;
;	int titleScaler = 0;
;
;	int clientOffsetX = cx+borderWidth+2;
;	int clientOffsetY = cy+borderTitle+1;
;
;	int endX = menu->width + cx - borderWidth;
;
;
;/*
;	k_get_font_metrics(&metric);
;
;	height += metric.height + (int)(metric.width/4);
;
;	menu->cx = cx;
;	menu->cy = cy;
;	menu->height = height;
;	menu->width = width;
;
;	*/
;
;	k_vdma_fill_rect(cx-1,cy,menu->width+1,menu->height+1,0);
metric_1	set	0
i_1	set	4
cx_1	set	6
cy_1	set	8
caption_1	set	10
borderTitle_1	set	14
borderWidth_1	set	16
titleOffsetX_1	set	18
titleOffsetY_1	set	20
titleScaler_1	set	22
clientOffsetX_1	set	24
clientOffsetY_1	set	26
endX_1	set	28
	.sym	metric,0,10,1,32,32
	.sym	i,4,5,1,16
	.sym	cx,6,5,1,16
	.sym	cy,8,5,1,16
	.sym	caption,10,142,1,32
	.sym	borderTitle,14,5,1,16
	.sym	borderWidth,16,5,1,16
	.sym	titleOffsetX,18,5,1,16
	.sym	titleOffsetY,20,5,1,16
	.sym	titleScaler,22,5,1,16
	.sym	clientOffsetX,24,5,1,16
	.sym	clientOffsetY,26,5,1,16
	.sym	endX,28,5,1,16
	.sym	menu,4,138,6,32,34
	stz	<L1061+i_1
	lda	[<L1060+menu_0]
	sta	<L1061+cx_1
	ldy	#$2
	lda	[<L1060+menu_0],Y
	sta	<L1061+cy_1
	stz	<L1061+caption_1
	stz	<L1061+caption_1+2
	lda	#$a
	sta	<L1061+borderTitle_1
	lda	#$3
	sta	<L1061+borderWidth_1
	clc
	lda	#$2
	adc	<L1061+cx_1
	sta	<L1061+titleOffsetX_1
	clc
	lda	#$2
	adc	<L1061+cy_1
	sta	<L1061+titleOffsetY_1
	stz	<L1061+titleScaler_1
	clc
	lda	<L1061+cx_1
	adc	<L1061+borderWidth_1
	sta	<R0
	clc
	lda	#$2
	adc	<R0
	sta	<L1061+clientOffsetX_1
	clc
	lda	<L1061+cy_1
	adc	<L1061+borderTitle_1
	sta	<R0
	lda	<R0
	ina
	sta	<L1061+clientOffsetY_1
	clc
	ldy	#$4
	lda	[<L1060+menu_0],Y
	adc	<L1061+cx_1
	sta	<R0
	sec
	lda	<R0
	sbc	<L1061+borderWidth_1
	sta	<L1061+endX_1
	.line	4112
	pea	#<$0
	ldy	#$6
	lda	[<L1060+menu_0],Y
	ina
	pha
	ldy	#$4
	lda	[<L1060+menu_0],Y
	ina
	pha
	ldy	#$0
	lda	<L1061+cy_1
	bpl	L1063
	dey
L1063:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	#$ffff
	adc	<L1061+cx_1
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L1064
	dey
L1064:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect
;	k_vdma_fill_rect(cx,cy,menu->width,menu->height,menu->fcolor);
	.line	4113
	ldy	#$8
	lda	[<L1060+menu_0],Y
	pha
	ldy	#$6
	lda	[<L1060+menu_0],Y
	pha
	ldy	#$4
	lda	[<L1060+menu_0],Y
	pha
	ldy	#$0
	lda	<L1061+cy_1
	bpl	L1065
	dey
L1065:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	lda	<L1061+cx_1
	bpl	L1066
	dey
L1066:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect
;
;	//k_delay(15);
;
;
;
;	//k_put_wingadget_point(WINICON_TITLE_BACK,endX - (metric.width*2 + 2),titleOffsetY,14);
;	//k_put_wingadget_point(WINICON_TITLE_FRONT,endX - (metric.width),titleOffsetY,14);
;	i = 0;
	.line	4121
	stz	<L1061+i_1
;	caption = ((LPCHAR*)menu->pCaption)[0];
	.line	4122
	ldy	#$f
	lda	[<L1060+menu_0],Y
	sta	<R0
	ldy	#$11
	lda	[<L1060+menu_0],Y
	sta	<R0+2
	lda	[<R0]
	sta	<L1061+caption_1
	ldy	#$2
	lda	[<R0],Y
	sta	<L1061+caption_1+2
;	while(caption!=NULL)
	.line	4123
L10447:
	lda	<L1061+caption_1
	ora	<L1061+caption_1+2
	bne	L1067
	brl	L10448
L1067:
;	{
	.line	4124
;		//caption = strupr(caption);
;		k_draw_text_point(caption,titleOffsetX,titleOffsetY,0);
	.line	4126
	pea	#<$0
	pei	<L1061+titleOffsetY_1
	pei	<L1061+titleOffsetX_1
	pei	<L1061+caption_1+2
	pei	<L1061+caption_1
	jsl	~~k_draw_text_point
;		titleOffsetY+=(FONTH + 2);
	.line	4127
	jsl	~~k_font_getFontHeight
	sta	<R0
	clc
	lda	<R0
	adc	<L1061+titleOffsetY_1
	sta	<R1
	clc
	lda	#$2
	adc	<R1
	sta	<L1061+titleOffsetY_1
;		i++;
	.line	4128
	inc	<L1061+i_1
;		caption = ((LPCHAR*)menu->pCaption)[i];
	.line	4129
	ldy	#$0
	lda	<L1061+i_1
	bpl	L1068
	dey
L1068:
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
	ldy	#$f
	lda	[<L1060+menu_0],Y
	adc	<R0
	sta	<R2
	ldy	#$11
	lda	[<L1060+menu_0],Y
	adc	<R0+2
	sta	<R2+2
	lda	[<R2]
	sta	<L1061+caption_1
	ldy	#$2
	lda	[<R2],Y
	sta	<L1061+caption_1+2
;	}
	.line	4130
	brl	L10447
L10448:
;
;	return menu;
	.line	4132
	ldx	<L1060+menu_0+2
	lda	<L1060+menu_0
L1069:
	tay
	lda	<L1060+2
	sta	<L1060+2+4
	lda	<L1060+1
	sta	<L1060+1+4
	pld
	tsc
	clc
	adc	#L1060+4
	tcs
	tya
	rtl
;
;}
	.line	4134
	.endblock	4134
L1060	equ	42
L1061	equ	13
	ends
	efunc
	.endfunc	4134,13,42
	.line	4134
;
;void k_free_context_menu(PMENU pmenu,char fcolor,char bcolor)
;{
	.line	4136
	.line	4137
	GUI
	xdef	~~k_free_context_menu
	func
	.function	4137
~~k_free_context_menu:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L1070
	tcs
	phd
	tcd
pmenu_0	set	4
fcolor_0	set	8
bcolor_0	set	10
	.block	4137
;	if(pmenu)
	.sym	pmenu,4,138,6,32,34
	.sym	fcolor,8,14,6,8
	.sym	bcolor,10,14,6,8
	.line	4138
;	{
	lda	<L1070+pmenu_0
	ora	<L1070+pmenu_0+2
	bne	L1073
	brl	L10449
L1073:
	.line	4139
;		k_vdma_fill_rect(pmenu->cx-1,pmenu->cy,pmenu->width+1,pmenu->height+1,bcolor);
	.line	4140
	pei	<L1070+bcolor_0
	ldy	#$6
	lda	[<L1070+pmenu_0],Y
	ina
	pha
	ldy	#$4
	lda	[<L1070+pmenu_0],Y
	ina
	pha
	ldy	#$0
	phy
	ldy	#$2
	lda	[<L1070+pmenu_0],Y
	ply
	rol	A
	ror	A
	bpl	L1074
	dey
L1074:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	#$ffff
	adc	[<L1070+pmenu_0]
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L1075
	dey
L1075:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect
;		//k_vdma_fill_rect(pmenu->cx,pmenu->cy,pmenu->width,pmenu->height,bcolor);
;		k_mem_deallocate_heap(pmenu);
	.line	4142
	pei	<L1070+pmenu_0+2
	pei	<L1070+pmenu_0
	jsl	~~k_mem_deallocate_heap
;	}
	.line	4143
;}
L10449:
	.line	4144
L1076:
	lda	<L1070+2
	sta	<L1070+2+8
	lda	<L1070+1
	sta	<L1070+1+8
	pld
	tsc
	clc
	adc	#L1070+8
	tcs
	rtl
	.endblock	4144
L1070	equ	8
L1071	equ	9
	ends
	efunc
	.endfunc	4144,9,8
	.line	4144
;
;void k_bitblt(int x0, int y0, int width, int height, int x1, int y1)
;{
	.line	4146
	.line	4147
	GUI
	xdef	~~k_bitblt
	func
	.function	4147
~~k_bitblt:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L1077
	tcs
	phd
	tcd
x0_0	set	4
y0_0	set	6
width_0	set	8
height_0	set	10
x1_0	set	12
y1_0	set	14
	.block	4147
;	long dy = 0L;
;	long dd = y1;
;	long pixelLocation0 = (long)(((long)y0 * 640L) + (long)x0);
;	long pixelLocation1 = (long)(((long)y0 * 640L) + (long)(x0 + width ));
;	long pixelLocationD = (long)(((long)y1 * 640L) + (long)(x1));
;
;	long difference = pixelLocation1 - pixelLocation0;
;
;	k_debug_long("pixelLocation0:",pixelLocation0);
dy_1	set	0
dd_1	set	4
pixelLocation0_1	set	8
pixelLocation1_1	set	12
pixelLocationD_1	set	16
difference_1	set	20
	.sym	dy,0,7,1,32
	.sym	dd,4,7,1,32
	.sym	pixelLocation0,8,7,1,32
	.sym	pixelLocation1,12,7,1,32
	.sym	pixelLocationD,16,7,1,32
	.sym	difference,20,7,1,32
	.sym	x0,4,5,6,16
	.sym	y0,6,5,6,16
	.sym	width,8,5,6,16
	.sym	height,10,5,6,16
	.sym	x1,12,5,6,16
	.sym	y1,14,5,6,16
	stz	<L1078+dy_1
	stz	<L1078+dy_1+2
	ldy	#$0
	lda	<L1077+y1_0
	bpl	L1080
	dey
L1080:
	sta	<L1078+dd_1
	sty	<L1078+dd_1+2
	ldy	#$0
	lda	<L1077+x0_0
	bpl	L1081
	dey
L1081:
	sta	<R0
	sty	<R0+2
	ldy	#$0
	lda	<L1077+y0_0
	bpl	L1082
	dey
L1082:
	sta	<R1
	sty	<R1+2
	pea	#^$280
	pea	#<$280
	pei	<R1+2
	pei	<R1
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R1
	stx	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<L1078+pixelLocation0_1
	lda	<R1+2
	adc	<R0+2
	sta	<L1078+pixelLocation0_1+2
	clc
	lda	<L1077+x0_0
	adc	<L1077+width_0
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L1083
	dey
L1083:
	sta	<R0
	sty	<R0+2
	ldy	#$0
	lda	<L1077+y0_0
	bpl	L1084
	dey
L1084:
	sta	<R1
	sty	<R1+2
	pea	#^$280
	pea	#<$280
	pei	<R1+2
	pei	<R1
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R1
	stx	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<L1078+pixelLocation1_1
	lda	<R1+2
	adc	<R0+2
	sta	<L1078+pixelLocation1_1+2
	ldy	#$0
	lda	<L1077+x1_0
	bpl	L1085
	dey
L1085:
	sta	<R0
	sty	<R0+2
	ldy	#$0
	lda	<L1077+y1_0
	bpl	L1086
	dey
L1086:
	sta	<R1
	sty	<R1+2
	pea	#^$280
	pea	#<$280
	pei	<R1+2
	pei	<R1
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R1
	stx	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<L1078+pixelLocationD_1
	lda	<R1+2
	adc	<R0+2
	sta	<L1078+pixelLocationD_1+2
	sec
	lda	<L1078+pixelLocation1_1
	sbc	<L1078+pixelLocation0_1
	sta	<L1078+difference_1
	lda	<L1078+pixelLocation1_1+2
	sbc	<L1078+pixelLocation0_1+2
	sta	<L1078+difference_1+2
	.line	4156
	pei	<L1078+pixelLocation0_1+2
	pei	<L1078+pixelLocation0_1
	pea	#^L1034
	pea	#<L1034
	jsl	~~k_debug_long
;	k_debug_long("pixelLocation1:",pixelLocation1);
	.line	4157
	pei	<L1078+pixelLocation1_1+2
	pei	<L1078+pixelLocation1_1
	pea	#^L1034+16
	pea	#<L1034+16
	jsl	~~k_debug_long
;	k_debug_long("pixelLocationD:",pixelLocationD);
	.line	4158
	pei	<L1078+pixelLocationD_1+2
	pei	<L1078+pixelLocationD_1
	pea	#^L1034+32
	pea	#<L1034+32
	jsl	~~k_debug_long
;	k_debug_long("difference:",difference);
	.line	4159
	pei	<L1078+difference_1+2
	pei	<L1078+difference_1
	pea	#^L1034+48
	pea	#<L1034+48
	jsl	~~k_debug_long
;
;
;
;	for(dy = y0;dy<(y0 + height);dy++)
	.line	4163
	ldy	#$0
	lda	<L1077+y0_0
	bpl	L1087
	dey
L1087:
	sta	<L1078+dy_1
	sty	<L1078+dy_1+2
	brl	L10453
L10452:
;	{
	.line	4164
;		pixelLocation0 = (long)(((long)dy * 640L) + (long)x0);
	.line	4165
	ldy	#$0
	lda	<L1077+x0_0
	bpl	L1088
	dey
L1088:
	sta	<R0
	sty	<R0+2
	pea	#^$280
	pea	#<$280
	pei	<L1078+dy_1+2
	pei	<L1078+dy_1
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R1
	stx	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<L1078+pixelLocation0_1
	lda	<R1+2
	adc	<R0+2
	sta	<L1078+pixelLocation0_1+2
;		pixelLocationD = (long)(((long)dd * 640L) + (long)(x1));
	.line	4166
	ldy	#$0
	lda	<L1077+x1_0
	bpl	L1089
	dey
L1089:
	sta	<R0
	sty	<R0+2
	pea	#^$280
	pea	#<$280
	pei	<L1078+dd_1+2
	pei	<L1078+dd_1
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R1
	stx	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<L1078+pixelLocationD_1
	lda	<R1+2
	adc	<R0+2
	sta	<L1078+pixelLocationD_1+2
;		memcpy(   &(((unsigned char FAR *)BITMAP_BANK_0)[pixelLocationD])  , &(((unsigned char FAR *)BITMAP_BANK_0)[pixelLocation0]), difference) ;
	.line	4167
	pei	<L1078+difference_1
	clc
	lda	#$0
	adc	<L1078+pixelLocation0_1
	sta	<R0
	lda	#$b0
	adc	<L1078+pixelLocation0_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	#$0
	adc	<L1078+pixelLocationD_1
	sta	<R1
	lda	#$b0
	adc	<L1078+pixelLocationD_1+2
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~memcpy
;
;		dd++;
	.line	4169
	inc	<L1078+dd_1
	bne	L1090
	inc	<L1078+dd_1+2
L1090:
;	}
	.line	4170
L10450:
	inc	<L1078+dy_1
	bne	L1091
	inc	<L1078+dy_1+2
L1091:
L10453:
	clc
	lda	<L1077+y0_0
	adc	<L1077+height_0
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L1092
	dey
L1092:
	sta	<R0
	sty	<R0+2
	sec
	lda	<L1078+dy_1
	sbc	<R0
	lda	<L1078+dy_1+2
	sbc	<R0+2
	bvs	L1093
	eor	#$8000
L1093:
	bmi	L1094
	brl	L10452
L1094:
L10451:
;
;}
	.line	4172
L1095:
	lda	<L1077+2
	sta	<L1077+2+12
	lda	<L1077+1
	sta	<L1077+1+12
	pld
	tsc
	clc
	adc	#L1077+12
	tcs
	rtl
	.endblock	4172
L1077	equ	32
L1078	equ	9
	ends
	efunc
	.endfunc	4172,9,32
	.line	4172
	data
L1034:
	db	$70,$69,$78,$65,$6C,$4C,$6F,$63,$61,$74,$69,$6F,$6E,$30,$3A
	db	$00,$70,$69,$78,$65,$6C,$4C,$6F,$63,$61,$74,$69,$6F,$6E,$31
	db	$3A,$00,$70,$69,$78,$65,$6C,$4C,$6F,$63,$61,$74,$69,$6F,$6E
	db	$44,$3A,$00,$64,$69,$66,$66,$65,$72,$65,$6E,$63,$65,$3A,$00
	ends
;
;void k_memory_bitblt(LPCHAR srcBank,int x0, int y0, int width, int height,LPCHAR destBank, int x1, int y1, int direction)
;{
	.line	4174
	.line	4175
	GUI
	xdef	~~k_memory_bitblt
	func
	.function	4175
~~k_memory_bitblt:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L1097
	tcs
	phd
	tcd
srcBank_0	set	4
x0_0	set	8
y0_0	set	10
width_0	set	12
height_0	set	14
destBank_0	set	16
x1_0	set	20
y1_0	set	22
direction_0	set	24
	.block	4175
;	long dy = 0L;
;	long dd = y1;
;	long pixelLocation0 = (long)(((long)y0 * 640L) + (long)x0);
;	long pixelLocation1 = (long)(((long)y0 * 640L) + (long)(x0 + width ));
;	long pixelLocationD = (long)(((long)y1 * 640L) + (long)(x1));
;
;	long difference = pixelLocation1 - pixelLocation0;
;
;	k_debug_long("pixelLocation0:",pixelLocation0);
dy_1	set	0
dd_1	set	4
pixelLocation0_1	set	8
pixelLocation1_1	set	12
pixelLocationD_1	set	16
difference_1	set	20
	.sym	dy,0,7,1,32
	.sym	dd,4,7,1,32
	.sym	pixelLocation0,8,7,1,32
	.sym	pixelLocation1,12,7,1,32
	.sym	pixelLocationD,16,7,1,32
	.sym	difference,20,7,1,32
	.sym	srcBank,4,142,6,32
	.sym	x0,8,5,6,16
	.sym	y0,10,5,6,16
	.sym	width,12,5,6,16
	.sym	height,14,5,6,16
	.sym	destBank,16,142,6,32
	.sym	x1,20,5,6,16
	.sym	y1,22,5,6,16
	.sym	direction,24,5,6,16
	stz	<L1098+dy_1
	stz	<L1098+dy_1+2
	ldy	#$0
	lda	<L1097+y1_0
	bpl	L1100
	dey
L1100:
	sta	<L1098+dd_1
	sty	<L1098+dd_1+2
	ldy	#$0
	lda	<L1097+x0_0
	bpl	L1101
	dey
L1101:
	sta	<R0
	sty	<R0+2
	ldy	#$0
	lda	<L1097+y0_0
	bpl	L1102
	dey
L1102:
	sta	<R1
	sty	<R1+2
	pea	#^$280
	pea	#<$280
	pei	<R1+2
	pei	<R1
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R1
	stx	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<L1098+pixelLocation0_1
	lda	<R1+2
	adc	<R0+2
	sta	<L1098+pixelLocation0_1+2
	clc
	lda	<L1097+x0_0
	adc	<L1097+width_0
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L1103
	dey
L1103:
	sta	<R0
	sty	<R0+2
	ldy	#$0
	lda	<L1097+y0_0
	bpl	L1104
	dey
L1104:
	sta	<R1
	sty	<R1+2
	pea	#^$280
	pea	#<$280
	pei	<R1+2
	pei	<R1
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R1
	stx	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<L1098+pixelLocation1_1
	lda	<R1+2
	adc	<R0+2
	sta	<L1098+pixelLocation1_1+2
	ldy	#$0
	lda	<L1097+x1_0
	bpl	L1105
	dey
L1105:
	sta	<R0
	sty	<R0+2
	ldy	#$0
	lda	<L1097+y1_0
	bpl	L1106
	dey
L1106:
	sta	<R1
	sty	<R1+2
	pea	#^$280
	pea	#<$280
	pei	<R1+2
	pei	<R1
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R1
	stx	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<L1098+pixelLocationD_1
	lda	<R1+2
	adc	<R0+2
	sta	<L1098+pixelLocationD_1+2
	sec
	lda	<L1098+pixelLocation1_1
	sbc	<L1098+pixelLocation0_1
	sta	<L1098+difference_1
	lda	<L1098+pixelLocation1_1+2
	sbc	<L1098+pixelLocation0_1+2
	sta	<L1098+difference_1+2
	.line	4184
	pei	<L1098+pixelLocation0_1+2
	pei	<L1098+pixelLocation0_1
	pea	#^L1096
	pea	#<L1096
	jsl	~~k_debug_long
;	k_debug_long("pixelLocation1:",pixelLocation1);
	.line	4185
	pei	<L1098+pixelLocation1_1+2
	pei	<L1098+pixelLocation1_1
	pea	#^L1096+16
	pea	#<L1096+16
	jsl	~~k_debug_long
;	k_debug_long("pixelLocationD:",pixelLocationD);
	.line	4186
	pei	<L1098+pixelLocationD_1+2
	pei	<L1098+pixelLocationD_1
	pea	#^L1096+32
	pea	#<L1096+32
	jsl	~~k_debug_long
;	k_debug_long("difference:",difference);
	.line	4187
	pei	<L1098+difference_1+2
	pei	<L1098+difference_1
	pea	#^L1096+48
	pea	#<L1096+48
	jsl	~~k_debug_long
;
;	if(direction == BLT_DIR_TOPDOWN)
	.line	4189
;	{
	lda	<L1097+direction_0
	cmp	#<$1
	beq	L1107
	brl	L10454
L1107:
	.line	4190
;		for(dy = y0;dy<(y0 + height);dy++)
	.line	4191
	ldy	#$0
	lda	<L1097+y0_0
	bpl	L1108
	dey
L1108:
	sta	<L1098+dy_1
	sty	<L1098+dy_1+2
	brl	L10458
L10457:
;		{
	.line	4192
;			pixelLocation0 = (long)(((long)dy * 640L) + (long)x0);
	.line	4193
	ldy	#$0
	lda	<L1097+x0_0
	bpl	L1109
	dey
L1109:
	sta	<R0
	sty	<R0+2
	pea	#^$280
	pea	#<$280
	pei	<L1098+dy_1+2
	pei	<L1098+dy_1
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R1
	stx	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<L1098+pixelLocation0_1
	lda	<R1+2
	adc	<R0+2
	sta	<L1098+pixelLocation0_1+2
;			pixelLocationD = (long)(((long)dd * 640L) + (long)(x1));
	.line	4194
	ldy	#$0
	lda	<L1097+x1_0
	bpl	L1110
	dey
L1110:
	sta	<R0
	sty	<R0+2
	pea	#^$280
	pea	#<$280
	pei	<L1098+dd_1+2
	pei	<L1098+dd_1
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R1
	stx	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<L1098+pixelLocationD_1
	lda	<R1+2
	adc	<R0+2
	sta	<L1098+pixelLocationD_1+2
;			memcpy(   &(((unsigned char FAR *)destBank)[pixelLocationD])  , &(((unsigned char FAR *)srcBank)[pixelLocation0]), difference) ;
	.line	4195
	pei	<L1098+difference_1
	clc
	lda	<L1097+srcBank_0
	adc	<L1098+pixelLocation0_1
	sta	<R0
	lda	<L1097+srcBank_0+2
	adc	<L1098+pixelLocation0_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	<L1097+destBank_0
	adc	<L1098+pixelLocationD_1
	sta	<R1
	lda	<L1097+destBank_0+2
	adc	<L1098+pixelLocationD_1+2
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~memcpy
;
;			dd++;
	.line	4197
	inc	<L1098+dd_1
	bne	L1111
	inc	<L1098+dd_1+2
L1111:
;		}
	.line	4198
L10455:
	inc	<L1098+dy_1
	bne	L1112
	inc	<L1098+dy_1+2
L1112:
L10458:
	clc
	lda	<L1097+y0_0
	adc	<L1097+height_0
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L1113
	dey
L1113:
	sta	<R0
	sty	<R0+2
	sec
	lda	<L1098+dy_1
	sbc	<R0
	lda	<L1098+dy_1+2
	sbc	<R0+2
	bvs	L1114
	eor	#$8000
L1114:
	bmi	L1115
	brl	L10457
L1115:
L10456:
;	}
	.line	4199
;	else
	brl	L10459
L10454:
;	{
	.line	4201
;		dd = y1 + height;
	.line	4202
	clc
	lda	<L1097+y1_0
	adc	<L1097+height_0
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L1116
	dey
L1116:
	sta	<L1098+dd_1
	sty	<L1098+dd_1+2
;		//for(dy = y0;dy<(y0 + height);dy++)
;		for(dy = (y0 + height);dy>y0;dy--)
	.line	4204
	clc
	lda	<L1097+y0_0
	adc	<L1097+height_0
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L1117
	dey
L1117:
	sta	<L1098+dy_1
	sty	<L1098+dy_1+2
	brl	L10463
L10462:
;		{
	.line	4205
;			pixelLocation0 = (long)(((long)dy * 640L) + (long)x0);
	.line	4206
	ldy	#$0
	lda	<L1097+x0_0
	bpl	L1118
	dey
L1118:
	sta	<R0
	sty	<R0+2
	pea	#^$280
	pea	#<$280
	pei	<L1098+dy_1+2
	pei	<L1098+dy_1
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R1
	stx	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<L1098+pixelLocation0_1
	lda	<R1+2
	adc	<R0+2
	sta	<L1098+pixelLocation0_1+2
;			pixelLocationD = (long)(((long)dd * 640L) + (long)(x1));
	.line	4207
	ldy	#$0
	lda	<L1097+x1_0
	bpl	L1119
	dey
L1119:
	sta	<R0
	sty	<R0+2
	pea	#^$280
	pea	#<$280
	pei	<L1098+dd_1+2
	pei	<L1098+dd_1
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R1
	stx	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<L1098+pixelLocationD_1
	lda	<R1+2
	adc	<R0+2
	sta	<L1098+pixelLocationD_1+2
;			memcpy(   &(((unsigned char FAR *)destBank)[pixelLocationD])  , &(((unsigned char FAR *)srcBank)[pixelLocation0]), difference) ;
	.line	4208
	pei	<L1098+difference_1
	clc
	lda	<L1097+srcBank_0
	adc	<L1098+pixelLocation0_1
	sta	<R0
	lda	<L1097+srcBank_0+2
	adc	<L1098+pixelLocation0_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	<L1097+destBank_0
	adc	<L1098+pixelLocationD_1
	sta	<R1
	lda	<L1097+destBank_0+2
	adc	<L1098+pixelLocationD_1+2
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~memcpy
;
;			dd--;
	.line	4210
	lda	<L1098+dd_1
	bne	L1120
	dec	<L1098+dd_1+2
L1120:
	dec	<L1098+dd_1
;		}
	.line	4211
L10460:
	lda	<L1098+dy_1
	bne	L1121
	dec	<L1098+dy_1+2
L1121:
	dec	<L1098+dy_1
L10463:
	ldy	#$0
	lda	<L1097+y0_0
	bpl	L1122
	dey
L1122:
	sta	<R0
	sty	<R0+2
	sec
	lda	<R0
	sbc	<L1098+dy_1
	lda	<R0+2
	sbc	<L1098+dy_1+2
	bvs	L1123
	eor	#$8000
L1123:
	bmi	L1124
	brl	L10462
L1124:
L10461:
;
;	}
	.line	4213
L10459:
;
;}
	.line	4215
L1125:
	lda	<L1097+2
	sta	<L1097+2+22
	lda	<L1097+1
	sta	<L1097+1+22
	pld
	tsc
	clc
	adc	#L1097+22
	tcs
	rtl
	.endblock	4215
L1097	equ	32
L1098	equ	9
	ends
	efunc
	.endfunc	4215,9,32
	.line	4215
	data
L1096:
	db	$70,$69,$78,$65,$6C,$4C,$6F,$63,$61,$74,$69,$6F,$6E,$30,$3A
	db	$00,$70,$69,$78,$65,$6C,$4C,$6F,$63,$61,$74,$69,$6F,$6E,$31
	db	$3A,$00,$70,$69,$78,$65,$6C,$4C,$6F,$63,$61,$74,$69,$6F,$6E
	db	$44,$3A,$00,$64,$69,$66,$66,$65,$72,$65,$6E,$63,$65,$3A,$00
	ends
;
;
;void k_shadow_fill_rect_address(LPCHAR bank,int x0, int y0, int width, int height, UCHAR color)
;{
	.line	4218
	.line	4219
	GUI
	xdef	~~k_shadow_fill_rect_address
	func
	.function	4219
~~k_shadow_fill_rect_address:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L1127
	tcs
	phd
	tcd
bank_0	set	4
x0_0	set	8
y0_0	set	10
width_0	set	12
height_0	set	14
color_0	set	16
	.block	4219
;	LPCHAR ptr = NULL;
;	ULONG dx = 0L;
;	long dy = 0L;
;	long pixelLocation0 = 0L;
;	long pixelLocation1 = 0L;
;	long difference     = 0L;
;	long fIndex = 0;
;	long offset = 0L;
;
;	if(width > 640)
ptr_1	set	0
dx_1	set	4
dy_1	set	8
pixelLocation0_1	set	12
pixelLocation1_1	set	16
difference_1	set	20
fIndex_1	set	24
offset_1	set	28
	.sym	ptr,0,142,1,32
	.sym	dx,4,18,1,32
	.sym	dy,8,7,1,32
	.sym	pixelLocation0,12,7,1,32
	.sym	pixelLocation1,16,7,1,32
	.sym	difference,20,7,1,32
	.sym	fIndex,24,7,1,32
	.sym	offset,28,7,1,32
	.sym	bank,4,142,6,32
	.sym	x0,8,5,6,16
	.sym	y0,10,5,6,16
	.sym	width,12,5,6,16
	.sym	height,14,5,6,16
	.sym	color,16,14,6,8
	stz	<L1128+ptr_1
	stz	<L1128+ptr_1+2
	stz	<L1128+dx_1
	stz	<L1128+dx_1+2
	stz	<L1128+dy_1
	stz	<L1128+dy_1+2
	stz	<L1128+pixelLocation0_1
	stz	<L1128+pixelLocation0_1+2
	stz	<L1128+pixelLocation1_1
	stz	<L1128+pixelLocation1_1+2
	stz	<L1128+difference_1
	stz	<L1128+difference_1+2
	stz	<L1128+fIndex_1
	stz	<L1128+fIndex_1+2
	stz	<L1128+offset_1
	stz	<L1128+offset_1+2
	.line	4229
;		width = 640;
	sec
	lda	#$280
	sbc	<L1127+width_0
	bvs	L1130
	eor	#$8000
L1130:
	bpl	L1131
	brl	L10464
L1131:
	.line	4230
	lda	#$280
	sta	<L1127+width_0
;	if(height > 480)
L10464:
	.line	4231
;		height = 480;
	sec
	lda	#$1e0
	sbc	<L1127+height_0
	bvs	L1132
	eor	#$8000
L1132:
	bpl	L1133
	brl	L10465
L1133:
	.line	4232
	lda	#$1e0
	sta	<L1127+height_0
;
;	if(width < 0)
L10465:
	.line	4234
;		width = 0;
	lda	<L1127+width_0
	bmi	L1134
	brl	L10466
L1134:
	.line	4235
	stz	<L1127+width_0
;	if(height < 0)
L10466:
	.line	4236
;		height = 0;
	lda	<L1127+height_0
	bmi	L1135
	brl	L10467
L1135:
	.line	4237
	stz	<L1127+height_0
;
;
;	offset = ((long)y0 + (long)height);
L10467:
	.line	4240
	ldy	#$0
	lda	<L1127+height_0
	bpl	L1136
	dey
L1136:
	sta	<R0
	sty	<R0+2
	ldy	#$0
	lda	<L1127+y0_0
	bpl	L1137
	dey
L1137:
	sta	<R1
	sty	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<L1128+offset_1
	lda	<R1+2
	adc	<R0+2
	sta	<L1128+offset_1+2
;
;	//pixelLocation0 = (ULONG)(((ULONG)y0 * 640L) + (ULONG)x0);
;	//pixelLocation1 = (ULONG)(((ULONG)y0 * 640L) + (ULONG)(x0 + width ));
;	//difference     = pixelLocation1 - pixelLocation0;
;	difference     = width;
	.line	4245
	ldy	#$0
	lda	<L1127+width_0
	bpl	L1138
	dey
L1138:
	sta	<L1128+difference_1
	sty	<L1128+difference_1+2
;
;	//difference = (long)(x0 + width);
;
;	/*
;	k_debug_long("k_shadow_fill_rect::width:",width);
;	k_debug_long("k_shadow_fill_rect::height:",height);
;	k_debug_long("k_shadow_fill_rect::difference:",difference);
;	k_debug_long("k_shadow_fill_rect::offset:",offset);
;	*/
;
;	for(dy = (long)y0;dy<offset;dy++)
	.line	4256
	ldy	#$0
	lda	<L1127+y0_0
	bpl	L1139
	dey
L1139:
	sta	<L1128+dy_1
	sty	<L1128+dy_1+2
	brl	L10471
L10470:
;	{
	.line	4257
;		//k_debug_long("k_shadow_fill_rect::dy:",dy);
;		//for(dx=(long)x0;dx<difference;dx++)
;		//	SHADOW_BANK_0[(dy * 640L) + dx] = color;
;		//k_debug_long("k_shadow_fill_rect::dx:",dx);
;
;		ptr = &( bank[(dy * 640L) + (long)x0] ) ;
	.line	4263
	ldy	#$0
	lda	<L1127+x0_0
	bpl	L1140
	dey
L1140:
	sta	<R0
	sty	<R0+2
	pea	#^$280
	pea	#<$280
	pei	<L1128+dy_1+2
	pei	<L1128+dy_1
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R1
	stx	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<R2
	lda	<R1+2
	adc	<R0+2
	sta	<R2+2
	clc
	lda	<L1127+bank_0
	adc	<R2
	sta	<L1128+ptr_1
	lda	<L1127+bank_0+2
	adc	<R2+2
	sta	<L1128+ptr_1+2
;
;		//k_debug_pointer("k_shadow_fill_rect::ptr:",ptr);
;		//pixelLocation0 = (ULONG)(((ULONG)dy * 640L) + (ULONG)x0);
;		//k_debug_long("k_shadow_fill_rect::pixelLocation0:",pixelLocation0);
;		memset( ptr, color , difference ) ;
	.line	4268
	pei	<L1128+difference_1
	lda	<L1127+color_0
	and	#$ff
	pha
	pei	<L1128+ptr_1+2
	pei	<L1128+ptr_1
	jsl	~~memset
;		//for(fIndex=0;fIndex<difference;fIndex++)
;		//	ptr[fIndex] = color;
;	}
	.line	4271
L10468:
	inc	<L1128+dy_1
	bne	L1141
	inc	<L1128+dy_1+2
L1141:
L10471:
	sec
	lda	<L1128+dy_1
	sbc	<L1128+offset_1
	lda	<L1128+dy_1+2
	sbc	<L1128+offset_1+2
	bvs	L1142
	eor	#$8000
L1142:
	bmi	L1143
	brl	L10470
L1143:
L10469:
;
;}
	.line	4273
L1144:
	lda	<L1127+2
	sta	<L1127+2+14
	lda	<L1127+1
	sta	<L1127+1+14
	pld
	tsc
	clc
	adc	#L1127+14
	tcs
	rtl
	.endblock	4273
L1127	equ	44
L1128	equ	13
	ends
	efunc
	.endfunc	4273,13,44
	.line	4273
;
;void k_shadow_fill_rect(int x0, int y0, int width, int height, UCHAR color)
;{
	.line	4275
	.line	4276
	GUI
	xdef	~~k_shadow_fill_rect
	func
	.function	4276
~~k_shadow_fill_rect:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L1145
	tcs
	phd
	tcd
x0_0	set	4
y0_0	set	6
width_0	set	8
height_0	set	10
color_0	set	12
	.block	4276
;	k_shadow_fill_rect_address(SHADOW_BANK_0,x0, y0, width, height, color);
	.sym	x0,4,5,6,16
	.sym	y0,6,5,6,16
	.sym	width,8,5,6,16
	.sym	height,10,5,6,16
	.sym	color,12,14,6,8
	.line	4277
	pei	<L1145+color_0
	pei	<L1145+height_0
	pei	<L1145+width_0
	pei	<L1145+y0_0
	pei	<L1145+x0_0
	pea	#^$a0000
	pea	#<$a0000
	jsl	~~k_shadow_fill_rect_address
;}
	.line	4278
L1148:
	lda	<L1145+2
	sta	<L1145+2+10
	lda	<L1145+1
	sta	<L1145+1+10
	pld
	tsc
	clc
	adc	#L1145+10
	tcs
	rtl
	.endblock	4278
L1145	equ	0
L1146	equ	1
	ends
	efunc
	.endfunc	4278,1,0
	.line	4278
;
;/*
;void k_shadow_fill_rect(int x0, int y0, int width, int height, UCHAR color)
;{
;	LPCHAR ptr = NULL;
;	ULONG dx = 0L;
;	long dy = 0L;
;	long pixelLocation0 = 0L;
;	long pixelLocation1 = 0L;
;	long difference     = 0L;
;	long fIndex = 0;
;	long offset = 0L;
;
;	if(width > 640)
;		width = 640;
;	if(height > 480)
;		height = 480;
;
;	if(width < 0)
;		width = 0;
;	if(height < 0)
;		height = 0;
;
;
;	offset = ((long)y0 + (long)height);
;
;	//pixelLocation0 = (ULONG)(((ULONG)y0 * 640L) + (ULONG)x0);
;	//pixelLocation1 = (ULONG)(((ULONG)y0 * 640L) + (ULONG)(x0 + width ));
;	//difference     = pixelLocation1 - pixelLocation0;
;	difference     = width;
;
;	//difference = (long)(x0 + width);
;
;	//k_debug_long("k_shadow_fill_rect::width:",width);
;	//k_debug_long("k_shadow_fill_rect::height:",height);
;	//k_debug_long("k_shadow_fill_rect::difference:",difference);
;	//k_debug_long("k_shadow_fill_rect::offset:",offset);
;
;
;	for(dy = (long)y0;dy<offset;dy++)
;	{
;		//k_debug_long("k_shadow_fill_rect::dy:",dy);
;		//for(dx=(long)x0;dx<difference;dx++)
;		//	SHADOW_BANK_0[(dy * 640L) + dx] = color;
;		//k_debug_long("k_shadow_fill_rect::dx:",dx);
;		ptr = &( SHADOW_BANK_0[(dy * 640L) + (long)x0] ) ;
;		//k_debug_pointer("k_shadow_fill_rect::ptr:",ptr);
;		//pixelLocation0 = (ULONG)(((ULONG)dy * 640L) + (ULONG)x0);
;		//k_debug_long("k_shadow_fill_rect::pixelLocation0:",pixelLocation0);
;		memset( ptr, color , difference ) ;
;		//for(fIndex=0;fIndex<difference;fIndex++)
;		//	ptr[fIndex] = color;
;	}
;
;}
;*/
;void k_shadow_bitblt(int x0, int y0, int width, int height, int x1, int y1)
;{
	.line	4335
	.line	4336
	GUI
	xdef	~~k_shadow_bitblt
	func
	.function	4336
~~k_shadow_bitblt:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L1149
	tcs
	phd
	tcd
x0_0	set	4
y0_0	set	6
width_0	set	8
height_0	set	10
x1_0	set	12
y1_0	set	14
	.block	4336
;	long dy = 0L;
;	long dd = y1;
;
;	long pixelLocation0 = 0L;
;	long pixelLocation1 = 0L;
;	long pixelLocationD = 0L;
;	long difference     = 0L;
;
;	pixelLocation0 = (long)(((long)y0 * 640L) + (long)x0);
dy_1	set	0
dd_1	set	4
pixelLocation0_1	set	8
pixelLocation1_1	set	12
pixelLocationD_1	set	16
difference_1	set	20
	.sym	dy,0,7,1,32
	.sym	dd,4,7,1,32
	.sym	pixelLocation0,8,7,1,32
	.sym	pixelLocation1,12,7,1,32
	.sym	pixelLocationD,16,7,1,32
	.sym	difference,20,7,1,32
	.sym	x0,4,5,6,16
	.sym	y0,6,5,6,16
	.sym	width,8,5,6,16
	.sym	height,10,5,6,16
	.sym	x1,12,5,6,16
	.sym	y1,14,5,6,16
	stz	<L1150+dy_1
	stz	<L1150+dy_1+2
	ldy	#$0
	lda	<L1149+y1_0
	bpl	L1152
	dey
L1152:
	sta	<L1150+dd_1
	sty	<L1150+dd_1+2
	stz	<L1150+pixelLocation0_1
	stz	<L1150+pixelLocation0_1+2
	stz	<L1150+pixelLocation1_1
	stz	<L1150+pixelLocation1_1+2
	stz	<L1150+pixelLocationD_1
	stz	<L1150+pixelLocationD_1+2
	stz	<L1150+difference_1
	stz	<L1150+difference_1+2
	.line	4345
	ldy	#$0
	lda	<L1149+x0_0
	bpl	L1153
	dey
L1153:
	sta	<R0
	sty	<R0+2
	ldy	#$0
	lda	<L1149+y0_0
	bpl	L1154
	dey
L1154:
	sta	<R1
	sty	<R1+2
	pea	#^$280
	pea	#<$280
	pei	<R1+2
	pei	<R1
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R1
	stx	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<L1150+pixelLocation0_1
	lda	<R1+2
	adc	<R0+2
	sta	<L1150+pixelLocation0_1+2
;	//pixelLocation1 = (long)(((long)y0 * 640L) + (long)(x0 + width ));
;	pixelLocationD = (long)(((long)y1 * 640L) + (long)(x1));
	.line	4347
	ldy	#$0
	lda	<L1149+x1_0
	bpl	L1155
	dey
L1155:
	sta	<R0
	sty	<R0+2
	ldy	#$0
	lda	<L1149+y1_0
	bpl	L1156
	dey
L1156:
	sta	<R1
	sty	<R1+2
	pea	#^$280
	pea	#<$280
	pei	<R1+2
	pei	<R1
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R1
	stx	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<L1150+pixelLocationD_1
	lda	<R1+2
	adc	<R0+2
	sta	<L1150+pixelLocationD_1+2
;
;	difference = pixelLocation1 - pixelLocation0;
	.line	4349
	sec
	lda	<L1150+pixelLocation1_1
	sbc	<L1150+pixelLocation0_1
	sta	<L1150+difference_1
	lda	<L1150+pixelLocation1_1+2
	sbc	<L1150+pixelLocation0_1+2
	sta	<L1150+difference_1+2
;
;	//k_debug_long("pixelLocation0:",pixelLocation0);
;	//k_debug_long("pixelLocation1:",pixelLocation1);
;	//k_debug_long("pixelLocationD:",pixelLocationD);
;	//k_debug_long("difference:",difference);
;
;	y0++;
	.line	4356
	inc	<L1149+y0_0
;	x0++;
	.line	4357
	inc	<L1149+x0_0
;
;	for(dy = y0;dy<(y0 + height);dy++)
	.line	4359
	ldy	#$0
	lda	<L1149+y0_0
	bpl	L1157
	dey
L1157:
	sta	<L1150+dy_1
	sty	<L1150+dy_1+2
	brl	L10475
L10474:
;	{
	.line	4360
;		pixelLocation0 = (long)(((long)dy * 640L) + (long)x0);
	.line	4361
	ldy	#$0
	lda	<L1149+x0_0
	bpl	L1158
	dey
L1158:
	sta	<R0
	sty	<R0+2
	pea	#^$280
	pea	#<$280
	pei	<L1150+dy_1+2
	pei	<L1150+dy_1
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R1
	stx	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<L1150+pixelLocation0_1
	lda	<R1+2
	adc	<R0+2
	sta	<L1150+pixelLocation0_1+2
;		pixelLocationD = (long)(((long)dd * 640L) + (long)x1);
	.line	4362
	ldy	#$0
	lda	<L1149+x1_0
	bpl	L1159
	dey
L1159:
	sta	<R0
	sty	<R0+2
	pea	#^$280
	pea	#<$280
	pei	<L1150+dd_1+2
	pei	<L1150+dd_1
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R1
	stx	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<L1150+pixelLocationD_1
	lda	<R1+2
	adc	<R0+2
	sta	<L1150+pixelLocationD_1+2
;		memcpy(   &((BITMAP_BANK_0)[pixelLocationD])  , &((SHADOW_BANK_0)[pixelLocation0]), difference) ;
	.line	4363
	pei	<L1150+difference_1
	clc
	lda	#$0
	adc	<L1150+pixelLocation0_1
	sta	<R0
	lda	#$a
	adc	<L1150+pixelLocation0_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	#$0
	adc	<L1150+pixelLocationD_1
	sta	<R1
	lda	#$b0
	adc	<L1150+pixelLocationD_1+2
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~memcpy
;
;		dd++;
	.line	4365
	inc	<L1150+dd_1
	bne	L1160
	inc	<L1150+dd_1+2
L1160:
;	}
	.line	4366
L10472:
	inc	<L1150+dy_1
	bne	L1161
	inc	<L1150+dy_1+2
L1161:
L10475:
	clc
	lda	<L1149+y0_0
	adc	<L1149+height_0
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L1162
	dey
L1162:
	sta	<R0
	sty	<R0+2
	sec
	lda	<L1150+dy_1
	sbc	<R0
	lda	<L1150+dy_1+2
	sbc	<R0+2
	bvs	L1163
	eor	#$8000
L1163:
	bmi	L1164
	brl	L10474
L1164:
L10473:
;
;}
	.line	4368
L1165:
	lda	<L1149+2
	sta	<L1149+2+12
	lda	<L1149+1
	sta	<L1149+1+12
	pld
	tsc
	clc
	adc	#L1149+12
	tcs
	rtl
	.endblock	4368
L1149	equ	32
L1150	equ	9
	ends
	efunc
	.endfunc	4368,9,32
	.line	4368
;
;void k_scratch_save_bitblt(int x0, int y0, int width, int height, int x1, int y1)
;{
	.line	4370
	.line	4371
	GUI
	xdef	~~k_scratch_save_bitblt
	func
	.function	4371
~~k_scratch_save_bitblt:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L1166
	tcs
	phd
	tcd
x0_0	set	4
y0_0	set	6
width_0	set	8
height_0	set	10
x1_0	set	12
y1_0	set	14
	.block	4371
;	long dy = 0L;
;	long dd = y1;
;	long pixelLocation0 = (long)(((long)y0 * 640L) + (long)x0);
;	long pixelLocation1 = (long)(((long)y0 * 640L) + (long)(x0 + width ));
;	long pixelLocationD = (long)(((long)y1 * 640L) + (long)(x1));
;
;	long difference = width;//pixelLocation1 - pixelLocation0 + 1;
;
;	//k_debug_long("pixelLocation0:",pixelLocation0);
;	//k_debug_long("pixelLocation1:",pixelLocation1);
;	//k_debug_long("pixelLocationD:",pixelLocationD);
;	//k_debug_long("difference:",difference);
;
;
;
;	for(dy = y0;dy<(y0 + height);dy++)
dy_1	set	0
dd_1	set	4
pixelLocation0_1	set	8
pixelLocation1_1	set	12
pixelLocationD_1	set	16
difference_1	set	20
	.sym	dy,0,7,1,32
	.sym	dd,4,7,1,32
	.sym	pixelLocation0,8,7,1,32
	.sym	pixelLocation1,12,7,1,32
	.sym	pixelLocationD,16,7,1,32
	.sym	difference,20,7,1,32
	.sym	x0,4,5,6,16
	.sym	y0,6,5,6,16
	.sym	width,8,5,6,16
	.sym	height,10,5,6,16
	.sym	x1,12,5,6,16
	.sym	y1,14,5,6,16
	stz	<L1167+dy_1
	stz	<L1167+dy_1+2
	ldy	#$0
	lda	<L1166+y1_0
	bpl	L1169
	dey
L1169:
	sta	<L1167+dd_1
	sty	<L1167+dd_1+2
	ldy	#$0
	lda	<L1166+x0_0
	bpl	L1170
	dey
L1170:
	sta	<R0
	sty	<R0+2
	ldy	#$0
	lda	<L1166+y0_0
	bpl	L1171
	dey
L1171:
	sta	<R1
	sty	<R1+2
	pea	#^$280
	pea	#<$280
	pei	<R1+2
	pei	<R1
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R1
	stx	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<L1167+pixelLocation0_1
	lda	<R1+2
	adc	<R0+2
	sta	<L1167+pixelLocation0_1+2
	clc
	lda	<L1166+x0_0
	adc	<L1166+width_0
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L1172
	dey
L1172:
	sta	<R0
	sty	<R0+2
	ldy	#$0
	lda	<L1166+y0_0
	bpl	L1173
	dey
L1173:
	sta	<R1
	sty	<R1+2
	pea	#^$280
	pea	#<$280
	pei	<R1+2
	pei	<R1
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R1
	stx	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<L1167+pixelLocation1_1
	lda	<R1+2
	adc	<R0+2
	sta	<L1167+pixelLocation1_1+2
	ldy	#$0
	lda	<L1166+x1_0
	bpl	L1174
	dey
L1174:
	sta	<R0
	sty	<R0+2
	ldy	#$0
	lda	<L1166+y1_0
	bpl	L1175
	dey
L1175:
	sta	<R1
	sty	<R1+2
	pea	#^$280
	pea	#<$280
	pei	<R1+2
	pei	<R1
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R1
	stx	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<L1167+pixelLocationD_1
	lda	<R1+2
	adc	<R0+2
	sta	<L1167+pixelLocationD_1+2
	ldy	#$0
	lda	<L1166+width_0
	bpl	L1176
	dey
L1176:
	sta	<L1167+difference_1
	sty	<L1167+difference_1+2
	.line	4387
	ldy	#$0
	lda	<L1166+y0_0
	bpl	L1177
	dey
L1177:
	sta	<L1167+dy_1
	sty	<L1167+dy_1+2
	brl	L10479
L10478:
;	{
	.line	4388
;		pixelLocation0 = (long)(((long)dy * 640L) + (long)x0);
	.line	4389
	ldy	#$0
	lda	<L1166+x0_0
	bpl	L1178
	dey
L1178:
	sta	<R0
	sty	<R0+2
	pea	#^$280
	pea	#<$280
	pei	<L1167+dy_1+2
	pei	<L1167+dy_1
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R1
	stx	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<L1167+pixelLocation0_1
	lda	<R1+2
	adc	<R0+2
	sta	<L1167+pixelLocation0_1+2
;		pixelLocationD = (long)(((long)dd * 640L) + (long)x1);
	.line	4390
	ldy	#$0
	lda	<L1166+x1_0
	bpl	L1179
	dey
L1179:
	sta	<R0
	sty	<R0+2
	pea	#^$280
	pea	#<$280
	pei	<L1167+dd_1+2
	pei	<L1167+dd_1
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R1
	stx	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<L1167+pixelLocationD_1
	lda	<R1+2
	adc	<R0+2
	sta	<L1167+pixelLocationD_1+2
;		memcpy(   &((SHADOW_BANK_5)[pixelLocationD])  , &((SHADOW_BANK_0)[pixelLocation0]), difference) ;
	.line	4391
	pei	<L1167+difference_1
	clc
	lda	#$0
	adc	<L1167+pixelLocation0_1
	sta	<R0
	lda	#$a
	adc	<L1167+pixelLocation0_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	#$0
	adc	<L1167+pixelLocationD_1
	sta	<R1
	lda	#$f
	adc	<L1167+pixelLocationD_1+2
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~memcpy
;
;		dd++;
	.line	4393
	inc	<L1167+dd_1
	bne	L1180
	inc	<L1167+dd_1+2
L1180:
;	}
	.line	4394
L10476:
	inc	<L1167+dy_1
	bne	L1181
	inc	<L1167+dy_1+2
L1181:
L10479:
	clc
	lda	<L1166+y0_0
	adc	<L1166+height_0
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L1182
	dey
L1182:
	sta	<R0
	sty	<R0+2
	sec
	lda	<L1167+dy_1
	sbc	<R0
	lda	<L1167+dy_1+2
	sbc	<R0+2
	bvs	L1183
	eor	#$8000
L1183:
	bmi	L1184
	brl	L10478
L1184:
L10477:
;
;}
	.line	4396
L1185:
	lda	<L1166+2
	sta	<L1166+2+12
	lda	<L1166+1
	sta	<L1166+1+12
	pld
	tsc
	clc
	adc	#L1166+12
	tcs
	rtl
	.endblock	4396
L1166	equ	32
L1167	equ	9
	ends
	efunc
	.endfunc	4396,9,32
	.line	4396
;
;void k_scratch_restore_bitblt(int x0, int y0, int width, int height, int x1, int y1)
;{
	.line	4398
	.line	4399
	GUI
	xdef	~~k_scratch_restore_bitblt
	func
	.function	4399
~~k_scratch_restore_bitblt:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L1186
	tcs
	phd
	tcd
x0_0	set	4
y0_0	set	6
width_0	set	8
height_0	set	10
x1_0	set	12
y1_0	set	14
	.block	4399
;	long dy = 0L;
;	long dd = y1;
;	long pixelLocation0 = (long)(((long)y0 * 640L) + (long)x0);
;	long pixelLocation1 = (long)(((long)y0 * 640L) + (long)(x0 + width ));
;	long pixelLocationD = (long)(((long)y1 * 640L) + (long)(x1));
;
;	long difference = width;//pixelLocation1 - pixelLocation0 + 1;
;
;	//k_debug_long("pixelLocation0:",pixelLocation0);
;	//k_debug_long("pixelLocation1:",pixelLocation1);
;	//k_debug_long("pixelLocationD:",pixelLocationD);
;	//k_debug_long("difference:",difference);
;
;
;
;	for(dy = y0;dy<(y0 + height);dy++)
dy_1	set	0
dd_1	set	4
pixelLocation0_1	set	8
pixelLocation1_1	set	12
pixelLocationD_1	set	16
difference_1	set	20
	.sym	dy,0,7,1,32
	.sym	dd,4,7,1,32
	.sym	pixelLocation0,8,7,1,32
	.sym	pixelLocation1,12,7,1,32
	.sym	pixelLocationD,16,7,1,32
	.sym	difference,20,7,1,32
	.sym	x0,4,5,6,16
	.sym	y0,6,5,6,16
	.sym	width,8,5,6,16
	.sym	height,10,5,6,16
	.sym	x1,12,5,6,16
	.sym	y1,14,5,6,16
	stz	<L1187+dy_1
	stz	<L1187+dy_1+2
	ldy	#$0
	lda	<L1186+y1_0
	bpl	L1189
	dey
L1189:
	sta	<L1187+dd_1
	sty	<L1187+dd_1+2
	ldy	#$0
	lda	<L1186+x0_0
	bpl	L1190
	dey
L1190:
	sta	<R0
	sty	<R0+2
	ldy	#$0
	lda	<L1186+y0_0
	bpl	L1191
	dey
L1191:
	sta	<R1
	sty	<R1+2
	pea	#^$280
	pea	#<$280
	pei	<R1+2
	pei	<R1
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R1
	stx	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<L1187+pixelLocation0_1
	lda	<R1+2
	adc	<R0+2
	sta	<L1187+pixelLocation0_1+2
	clc
	lda	<L1186+x0_0
	adc	<L1186+width_0
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L1192
	dey
L1192:
	sta	<R0
	sty	<R0+2
	ldy	#$0
	lda	<L1186+y0_0
	bpl	L1193
	dey
L1193:
	sta	<R1
	sty	<R1+2
	pea	#^$280
	pea	#<$280
	pei	<R1+2
	pei	<R1
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R1
	stx	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<L1187+pixelLocation1_1
	lda	<R1+2
	adc	<R0+2
	sta	<L1187+pixelLocation1_1+2
	ldy	#$0
	lda	<L1186+x1_0
	bpl	L1194
	dey
L1194:
	sta	<R0
	sty	<R0+2
	ldy	#$0
	lda	<L1186+y1_0
	bpl	L1195
	dey
L1195:
	sta	<R1
	sty	<R1+2
	pea	#^$280
	pea	#<$280
	pei	<R1+2
	pei	<R1
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R1
	stx	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<L1187+pixelLocationD_1
	lda	<R1+2
	adc	<R0+2
	sta	<L1187+pixelLocationD_1+2
	ldy	#$0
	lda	<L1186+width_0
	bpl	L1196
	dey
L1196:
	sta	<L1187+difference_1
	sty	<L1187+difference_1+2
	.line	4415
	ldy	#$0
	lda	<L1186+y0_0
	bpl	L1197
	dey
L1197:
	sta	<L1187+dy_1
	sty	<L1187+dy_1+2
	brl	L10483
L10482:
;	{
	.line	4416
;		pixelLocation0 = (long)(((long)dy * 640L) + (long)x0);
	.line	4417
	ldy	#$0
	lda	<L1186+x0_0
	bpl	L1198
	dey
L1198:
	sta	<R0
	sty	<R0+2
	pea	#^$280
	pea	#<$280
	pei	<L1187+dy_1+2
	pei	<L1187+dy_1
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R1
	stx	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<L1187+pixelLocation0_1
	lda	<R1+2
	adc	<R0+2
	sta	<L1187+pixelLocation0_1+2
;		pixelLocationD = (long)(((long)dd * 640L) + (long)x1);
	.line	4418
	ldy	#$0
	lda	<L1186+x1_0
	bpl	L1199
	dey
L1199:
	sta	<R0
	sty	<R0+2
	pea	#^$280
	pea	#<$280
	pei	<L1187+dd_1+2
	pei	<L1187+dd_1
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R1
	stx	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<L1187+pixelLocationD_1
	lda	<R1+2
	adc	<R0+2
	sta	<L1187+pixelLocationD_1+2
;		memcpy(   &((BITMAP_BANK_0)[pixelLocationD])  , &((SHADOW_BANK_5)[pixelLocation0]), difference) ;
	.line	4419
	pei	<L1187+difference_1
	clc
	lda	#$0
	adc	<L1187+pixelLocation0_1
	sta	<R0
	lda	#$f
	adc	<L1187+pixelLocation0_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	#$0
	adc	<L1187+pixelLocationD_1
	sta	<R1
	lda	#$b0
	adc	<L1187+pixelLocationD_1+2
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~memcpy
;		memcpy(   &((SHADOW_BANK_0)[pixelLocationD])  , &((SHADOW_BANK_5)[pixelLocation0]), difference) ;
	.line	4420
	pei	<L1187+difference_1
	clc
	lda	#$0
	adc	<L1187+pixelLocation0_1
	sta	<R0
	lda	#$f
	adc	<L1187+pixelLocation0_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	#$0
	adc	<L1187+pixelLocationD_1
	sta	<R1
	lda	#$a
	adc	<L1187+pixelLocationD_1+2
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~memcpy
;
;		dd++;
	.line	4422
	inc	<L1187+dd_1
	bne	L1200
	inc	<L1187+dd_1+2
L1200:
;	}
	.line	4423
L10480:
	inc	<L1187+dy_1
	bne	L1201
	inc	<L1187+dy_1+2
L1201:
L10483:
	clc
	lda	<L1186+y0_0
	adc	<L1186+height_0
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L1202
	dey
L1202:
	sta	<R0
	sty	<R0+2
	sec
	lda	<L1187+dy_1
	sbc	<R0
	lda	<L1187+dy_1+2
	sbc	<R0+2
	bvs	L1203
	eor	#$8000
L1203:
	bmi	L1204
	brl	L10482
L1204:
L10481:
;
;}
	.line	4425
L1205:
	lda	<L1186+2
	sta	<L1186+2+12
	lda	<L1186+1
	sta	<L1186+1+12
	pld
	tsc
	clc
	adc	#L1186+12
	tcs
	rtl
	.endblock	4425
L1186	equ	32
L1187	equ	9
	ends
	efunc
	.endfunc	4425,9,32
	.line	4425
;
;
;UINT k_font_getFontHeight(void)
;{
	.line	4428
	.line	4429
	GUI
	xdef	~~k_font_getFontHeight
	func
	.function	4429
~~k_font_getFontHeight:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L1206
	tcs
	phd
	tcd
	.block	4429
;	return 8;
	.line	4430
	lda	#$8
L1209:
	tay
	pld
	tsc
	clc
	adc	#L1206
	tcs
	tya
	rtl
;}
	.line	4431
	.endblock	4431
L1206	equ	0
L1207	equ	1
	ends
	efunc
	.endfunc	4431,1,0
	.line	4431
;
;UINT k_font_getFontWidth(void)
;{
	.line	4433
	.line	4434
	GUI
	xdef	~~k_font_getFontWidth
	func
	.function	4434
~~k_font_getFontWidth:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L1210
	tcs
	phd
	tcd
	.block	4434
;	return 8;
	.line	4435
	lda	#$8
L1213:
	tay
	pld
	tsc
	clc
	adc	#L1210
	tcs
	tya
	rtl
;}
	.line	4436
	.endblock	4436
L1210	equ	0
L1211	equ	1
	ends
	efunc
	.endfunc	4436,1,0
	.line	4436
;
;VOID k_gui_set_mousepointer(UINT index,LPVOID pointerData)
;{
	.line	4438
	.line	4439
	GUI
	xdef	~~k_gui_set_mousepointer
	func
	.function	4439
~~k_gui_set_mousepointer:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L1214
	tcs
	phd
	tcd
index_0	set	4
pointerData_0	set	6
	.block	4439
;	LPVOID pData = NULL;
;
;	if(index == 0 || index == 1)
pData_1	set	0
	.sym	pData,0,129,1,32
	.sym	index,4,16,6,16
	.sym	pointerData,6,129,6,32
	stz	<L1215+pData_1
	stz	<L1215+pData_1+2
	.line	4442
;	{
	lda	<L1214+index_0
	bne	L1218
	brl	L1217
L1218:
	lda	<L1214+index_0
	cmp	#<$1
	beq	L1219
	brl	L10484
L1219:
L1217:
	.line	4443
;		//*MOUSE_PTR_CTRL_REG_H = 0x00;
;		//*MOUSE_PTR_CTRL_REG_L = index;
;
;		memcpy( MOUSE_PTR_GRAP0_START,pointerData,sizeof(MOUSE_POINTER_ARROW));
	.line	4447
	pea	#<$100
	pei	<L1214+pointerData_0+2
	pei	<L1214+pointerData_0
	pea	#^$af0500
	pea	#<$af0500
	jsl	~~memcpy
;		memcpy( MOUSE_PTR_GRAP1_START,MOUSE_POINTER_HOURGLASS,sizeof(MOUSE_POINTER_ARROW));
	.line	4448
	pea	#<$100
	pea	#^~~MOUSE_POINTER_HOURGLASS
	pea	#<~~MOUSE_POINTER_HOURGLASS
	pea	#^$af0600
	pea	#<$af0600
	jsl	~~memcpy
;
;		*MOUSE_PTR_CTRL_REG_H = 0x00;
	.line	4450
	sep	#$20
	longa	off
	lda	#$0
	sta	>11470593
	rep	#$20
	longa	on
;		*MOUSE_PTR_CTRL_REG_L = 0x01;
	.line	4451
	sep	#$20
	longa	off
	lda	#$1
	sta	>11470592
	rep	#$20
	longa	on
;	}
	.line	4452
;}
L10484:
	.line	4453
L1220:
	lda	<L1214+2
	sta	<L1214+2+6
	lda	<L1214+1
	sta	<L1214+1+6
	pld
	tsc
	clc
	adc	#L1214+6
	tcs
	rtl
	.endblock	4453
L1214	equ	4
L1215	equ	1
	ends
	efunc
	.endfunc	4453,1,4
	.line	4453
;
;VOID k_gui_init_mousepointer(BOOL enable)
;{
	.line	4455
	.line	4456
	GUI
	xdef	~~k_gui_init_mousepointer
	func
	.function	4456
~~k_gui_init_mousepointer:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L1221
	tcs
	phd
	tcd
enable_0	set	4
	.block	4456
;	if(enable)
	.sym	enable,4,14,6,8
	.line	4457
;	{
	lda	<L1221+enable_0
	and	#$ff
	bne	L1224
	brl	L10485
L1224:
	.line	4458
;		//MOUSE_POINTER_HELP
;		//memcpy(MOUSE_PTR_GRAP0_START,MOUSE_POINTER_PTR_V2,sizeof(MOUSE_POINTER_PTR_V2));
;		//memcpy(MOUSE_PTR_GRAP0_START,MOUSE_POINTER_PTR_V2,sizeof(MOUSE_POINTER_PTR_V2));
;
;		memcpy(MOUSE_PTR_GRAP0_START,MOUSE_POINTER_ARROW,sizeof(MOUSE_POINTER_ARROW));
	.line	4463
	pea	#<$100
	pea	#^~~MOUSE_POINTER_ARROW
	pea	#<~~MOUSE_POINTER_ARROW
	pea	#^$af0500
	pea	#<$af0500
	jsl	~~memcpy
;		memcpy(MOUSE_PTR_GRAP1_START,MOUSE_POINTER_HOURGLASS,sizeof(MOUSE_POINTER_HOURGLASS));
	.line	4464
	pea	#<$100
	pea	#^~~MOUSE_POINTER_HOURGLASS
	pea	#<~~MOUSE_POINTER_HOURGLASS
	pea	#^$af0600
	pea	#<$af0600
	jsl	~~memcpy
;
;		*MOUSE_PTR_CTRL_REG_H = 0x00;
	.line	4466
	sep	#$20
	longa	off
	lda	#$0
	sta	>11470593
	rep	#$20
	longa	on
;		*MOUSE_PTR_CTRL_REG_L = 0x01;
	.line	4467
	sep	#$20
	longa	off
	lda	#$1
	sta	>11470592
	rep	#$20
	longa	on
;	}
	.line	4468
;	else
	brl	L10486
L10485:
;	{
	.line	4470
;		memcpy(MOUSE_PTR_GRAP0_START,MOUSE_POINTER_ARROW,sizeof(MOUSE_POINTER_ARROW));
	.line	4471
	pea	#<$100
	pea	#^~~MOUSE_POINTER_ARROW
	pea	#<~~MOUSE_POINTER_ARROW
	pea	#^$af0500
	pea	#<$af0500
	jsl	~~memcpy
;		memcpy(MOUSE_PTR_GRAP1_START,MOUSE_POINTER_ARROW,sizeof(MOUSE_POINTER_ARROW));
	.line	4472
	pea	#<$100
	pea	#^~~MOUSE_POINTER_ARROW
	pea	#<~~MOUSE_POINTER_ARROW
	pea	#^$af0600
	pea	#<$af0600
	jsl	~~memcpy
;		*MOUSE_PTR_CTRL_REG_H = 0x00;
	.line	4473
	sep	#$20
	longa	off
	lda	#$0
	sta	>11470593
	rep	#$20
	longa	on
;		*MOUSE_PTR_CTRL_REG_L = 0x00;
	.line	4474
	sep	#$20
	longa	off
	lda	#$0
	sta	>11470592
	rep	#$20
	longa	on
;	}
	.line	4475
L10486:
;}
	.line	4476
L1225:
	lda	<L1221+2
	sta	<L1221+2+2
	lda	<L1221+1
	sta	<L1221+1+2
	pld
	tsc
	clc
	adc	#L1221+2
	tcs
	rtl
	.endblock	4476
L1221	equ	0
L1222	equ	1
	ends
	efunc
	.endfunc	4476,1,0
	.line	4476
;
;void k_vdma_copy_address_ex(char FAR * pdst,char FAR * psrc,int width,int height)
;{
	.line	4478
	.line	4479
	GUI
	xdef	~~k_vdma_copy_address_ex
	func
	.function	4479
~~k_vdma_copy_address_ex:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L1226
	tcs
	phd
	tcd
pdst_0	set	4
psrc_0	set	8
width_0	set	12
height_0	set	14
	.block	4479
;	int pos = 0;
;	UINT spinLock = 0;
;	char status = VDMA_STAT_VDMA_IPS;
;
;
;	k_debug_pointer("k_vdma_copy_address_ex::src  offset:",psrc);
pos_1	set	0
spinLock_1	set	2
status_1	set	4
	.sym	pos,0,5,1,16
	.sym	spinLock,2,16,1,16
	.sym	status,4,14,1,8
	.sym	pdst,4,142,6,32
	.sym	psrc,8,142,6,32
	.sym	width,12,5,6,16
	.sym	height,14,5,6,16
	stz	<L1227+pos_1
	stz	<L1227+spinLock_1
	sep	#$20
	longa	off
	lda	#$80
	sta	<L1227+status_1
	rep	#$20
	longa	on
	.line	4485
	pei	<L1226+psrc_0+2
	pei	<L1226+psrc_0
	pea	#^L1126
	pea	#<L1126
	jsl	~~k_debug_pointer
;	k_debug_pointer("k_vdma_copy_address_ex::dest offset:",pdst);
	.line	4486
	pei	<L1226+pdst_0+2
	pei	<L1226+pdst_0
	pea	#^L1126+37
	pea	#<L1126+37
	jsl	~~k_debug_pointer
;
;	k_debug_integer("k_vdma_copy_address_ex::width:",width);
	.line	4488
	pei	<L1226+width_0
	pea	#^L1126+74
	pea	#<L1126+74
	jsl	~~k_debug_integer
;	k_debug_integer("k_vdma_copy_address_ex::height:",height);
	.line	4489
	pei	<L1226+height_0
	pea	#^L1126+105
	pea	#<L1126+105
	jsl	~~k_debug_integer
;
;
;
;	VDMA_CONTROL_REG[0] = ( VDMA_CTRL_ENABLE | VDMA_CTRL_1D_2D );
	.line	4493
	sep	#$20
	longa	off
	lda	#$3
	sta	>11469824
	rep	#$20
	longa	on
;
;	VDMA_SRC_ADDY_L[0] = L24BYTE((long)psrc);
	.line	4495
	sep	#$20
	longa	off
	lda	<L1226+psrc_0
	sta	>11469826
	rep	#$20
	longa	on
;	VDMA_SRC_ADDY_M[0] = M24BYTE((long)psrc);
	.line	4496
	pei	<L1226+psrc_0+2
	pei	<L1226+psrc_0
	lda	#$8
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R0
	stx	<R0+2
	lda	<R0
	and	#<$ff
	sta	<R1
	stz	<R1+2
	sep	#$20
	longa	off
	lda	<R1
	sta	>11469827
	rep	#$20
	longa	on
;	VDMA_SRC_ADDY_H[0] = H24BYTE((long)psrc);
	.line	4497
	pei	<L1226+psrc_0+2
	pei	<L1226+psrc_0
	lda	#$10
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R0
	stx	<R0+2
	lda	<R0
	and	#<$ff
	sta	<R1
	stz	<R1+2
	sep	#$20
	longa	off
	lda	<R1
	sta	>11469828
	rep	#$20
	longa	on
;
;	VDMA_DST_ADDY_L[0] = L24BYTE((long)pdst);
	.line	4499
	sep	#$20
	longa	off
	lda	<L1226+pdst_0
	sta	>11469829
	rep	#$20
	longa	on
;	VDMA_DST_ADDY_M[0] = M24BYTE((long)pdst);
	.line	4500
	pei	<L1226+pdst_0+2
	pei	<L1226+pdst_0
	lda	#$8
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R0
	stx	<R0+2
	lda	<R0
	and	#<$ff
	sta	<R1
	stz	<R1+2
	sep	#$20
	longa	off
	lda	<R1
	sta	>11469830
	rep	#$20
	longa	on
;	VDMA_DST_ADDY_H[0] = H24BYTE((long)pdst);
	.line	4501
	pei	<L1226+pdst_0+2
	pei	<L1226+pdst_0
	lda	#$10
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R0
	stx	<R0+2
	lda	<R0
	and	#<$ff
	sta	<R1
	stz	<R1+2
	sep	#$20
	longa	off
	lda	<R1
	sta	>11469831
	rep	#$20
	longa	on
;
;	VDMA_X_SIZE_L[0] = LOBYTE(width);
	.line	4503
	sep	#$20
	longa	off
	lda	<L1226+width_0
	sta	>11469832
	rep	#$20
	longa	on
;	VDMA_X_SIZE_H[0] = HIBYTE(width);
	.line	4504
	lda	<L1226+width_0
	ldx	#<$8
	xref	~~~asr
	jsl	~~~asr
	and	#<$ff
	sta	<R0
	sep	#$20
	longa	off
	lda	<R0
	sta	>11469833
	rep	#$20
	longa	on
;
;	VDMA_Y_SIZE_L[0] = LOBYTE(height);
	.line	4506
	sep	#$20
	longa	off
	lda	<L1226+height_0
	sta	>11469834
	rep	#$20
	longa	on
;	VDMA_Y_SIZE_H[0] = HIBYTE(height);
	.line	4507
	lda	<L1226+height_0
	ldx	#<$8
	xref	~~~asr
	jsl	~~~asr
	and	#<$ff
	sta	<R0
	sep	#$20
	longa	off
	lda	<R0
	sta	>11469835
	rep	#$20
	longa	on
;	VDMA_Y_SIZE_H[1] = 0x00;
	.line	4508
	sep	#$20
	longa	off
	lda	#$0
	sta	>11469836
	rep	#$20
	longa	on
;
;
;	*VDMA_SRC_STRIDE_L  = 0x80;
	.line	4511
	sep	#$20
	longa	off
	lda	#$80
	sta	>11469836
	rep	#$20
	longa	on
;	*VDMA_SRC_STRIDE_H  = 0x02;
	.line	4512
	sep	#$20
	longa	off
	lda	#$2
	sta	>11469837
	rep	#$20
	longa	on
;
;	*VDMA_DST_STRIDE_L  = 0x80;
	.line	4514
	sep	#$20
	longa	off
	lda	#$80
	sta	>11469838
	rep	#$20
	longa	on
;	*VDMA_DST_STRIDE_H	= 0x02;
	.line	4515
	sep	#$20
	longa	off
	lda	#$2
	sta	>11469839
	rep	#$20
	longa	on
;
;    VDMA_CONTROL_REG[0]  = (VDMA_CTRL_ENABLE | VDMA_CTRL_1D_2D | VDMA_CTRL_START_TRF);
	.line	4517
	sep	#$20
	longa	off
	lda	#$83
	sta	>11469824
	rep	#$20
	longa	on
;
;    asm NOP;
	.line	4519
	asmstart
	NOP
	asmend
;    asm NOP;
	.line	4520
	asmstart
	NOP
	asmend
;    asm NOP;
	.line	4521
	asmstart
	NOP
	asmend
;
;	while(status == VDMA_STAT_VDMA_IPS)
	.line	4523
L10487:
	sep	#$20
	longa	off
	lda	<L1227+status_1
	cmp	#<$80
	rep	#$20
	longa	on
	beq	L1229
	brl	L10488
L1229:
;	{
	.line	4524
;		status = ( *VDMA_STATUS_REG & VDMA_STAT_VDMA_IPS);
	.line	4525
	sep	#$20
	longa	off
	lda	>11469825
	and	#<$80
	sta	<L1227+status_1
	rep	#$20
	longa	on
;		spinLock++;
	.line	4526
	inc	<L1227+spinLock_1
;
;		if(spinLock > 32000)
	.line	4528
;		{
	lda	#$7d00
	cmp	<L1227+spinLock_1
	bcc	L1230
	brl	L10489
L1230:
	.line	4529
;			break;
	.line	4530
	brl	L10488
;		}
	.line	4531
;	}
L10489:
	.line	4532
	brl	L10487
L10488:
;
;#ifdef USE_MAX_DEBUG
;	k_debug_integer("k_vdma_copy_address_ex::spinLock:",spinLock);
;#endif
;
;	asm NOP;
	.line	4538
	asmstart
	NOP
	asmend
;
;	VDMA_CONTROL_REG[0] = 0;
	.line	4540
	sep	#$20
	longa	off
	lda	#$0
	sta	>11469824
	rep	#$20
	longa	on
;
;   return ;
	.line	4542
L1231:
	lda	<L1226+2
	sta	<L1226+2+12
	lda	<L1226+1
	sta	<L1226+1+12
	pld
	tsc
	clc
	adc	#L1226+12
	tcs
	rtl
;}
	.line	4543
	.endblock	4543
L1226	equ	13
L1227	equ	9
	ends
	efunc
	.endfunc	4543,9,13
	.line	4543
	data
L1126:
	db	$6B,$5F,$76,$64,$6D,$61,$5F,$63,$6F,$70,$79,$5F,$61,$64,$64
	db	$72,$65,$73,$73,$5F,$65,$78,$3A,$3A,$73,$72,$63,$20,$20,$6F
	db	$66,$66,$73,$65,$74,$3A,$00,$6B,$5F,$76,$64,$6D,$61,$5F,$63
	db	$6F,$70,$79,$5F,$61,$64,$64,$72,$65,$73,$73,$5F,$65,$78,$3A
	db	$3A,$64,$65,$73,$74,$20,$6F,$66,$66,$73,$65,$74,$3A,$00,$6B
	db	$5F,$76,$64,$6D,$61,$5F,$63,$6F,$70,$79,$5F,$61,$64,$64,$72
	db	$65,$73,$73,$5F,$65,$78,$3A,$3A,$77,$69,$64,$74,$68,$3A,$00
	db	$6B,$5F,$76,$64,$6D,$61,$5F,$63,$6F,$70,$79,$5F,$61,$64,$64
	db	$72,$65,$73,$73,$5F,$65,$78,$3A,$3A,$68,$65,$69,$67,$68,$74
	db	$3A,$00
	ends
;
;
;/*
;
;
;
;
; */
;
	.line	4551
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxguiV2.c",4478
	xref	~~k_window_draw
	xref	~~k_put_char
	xref	~~k_clear_screen
	xref	~~k_disable_border
	xref	~~k_send_message
	xref	~~k_user_getSystemMetric
	xref	~~k_mem_deallocate_heap
	xref	~~k_mem_allocate_heap
	xref	~~k_pad_string
	xref	~~k_itoa
	xref	~~k_get_c256_minor_version
	xref	~~k_get_c256_major_version
	xref	~~k_get_fpga_date_year
	xref	~~k_get_fpga_date_month
	xref	~~k_get_fpga_date_day
	xref	~~k_debug_rect
	xref	~~k_debug_strings
	xref	~~k_debug_message
	xref	~~k_debug_long
	xref	~~k_debug_integer
	xref	~~k_debug_pointer
	xref	~~k_debug_string
	xref	~~k_nodelist_add
	xref	~~k_nodelist_create
	xref	~~k_nodelist_init
	xref	~~toupper
	xref	~~strupr
	xref	~~strlen
	xref	~~strcpy
	xref	~~memset
	xref	~~memcpy
	xref	~~abs
	udata
	xdef	~~_k_window_list
~~_k_window_list
	ds	3510
	ends
	udata
~~_k_currentPalatte
	ds	50
	ends
	udata
	xdef	~~version_title
~~version_title
	ds	4
	ends
	udata
	xdef	~~strbuf
~~strbuf
	ds	32
	ends
	udata
	xdef	~~buffer
~~buffer
	ds	32
	ends
	udata
	xdef	~~hitList
~~hitList
	ds	24
	ends
	udata
	xdef	~~clickList
~~clickList
	ds	66
	ends
	xref	~~Bm437ToshibaLCD8x8
	xref	~~windowIconImg
	xref	~~windowChromeImg
	xref	~~fontImg
	xref	~~characterROMMapping
	.sym	~~k_init_desktop,~~k_init_desktop,65,2,0
	.sym	~~k_vdma_fill_address_old,~~k_vdma_fill_address_old,65,2,0
	.sym	~~k_put_wingadget_point_ex,~~k_put_wingadget_point_ex,69,2,0
	.sym	~~k_draw_filled_rect_slow,~~k_draw_filled_rect_slow,65,2,0
	.sym	~~k_draw_rect,~~k_draw_rect,65,2,0
	.sym	~~k_draw_line_with_pattern,~~k_draw_line_with_pattern,65,2,0
	.sym	~~k_draw_filled_segments,~~k_draw_filled_segments,65,2,0
	.sym	~~k_get_pixel_bank,~~k_get_pixel_bank,69,2,0
	.sym	~~k_get_pixel_color,~~k_get_pixel_color,69,2,0
	.sym	~~k_write_window_text,~~k_write_window_text,65,2,0
	.sym	~~k_get_window,~~k_get_window,1098,2,32,30
	.sym	~~k_set_text_color,~~k_set_text_color,65,2,0
	.sym	~~k_set_text_gamma,~~k_set_text_gamma,65,2,0
	.sym	~~k_set_foreground_palette,~~k_set_foreground_palette,65,2,0
	.sym	~~k_is_inside_rect,~~k_is_inside_rect,78,2,0
	.sym	~~cop_index,~~cop_index,5,2,16
	.sym	~~_k_WindowHit_nodes,~~_k_WindowHit_nodes,138,3,32,5
	.sym	~~_k_WindowObject_nodes,~~_k_WindowObject_nodes,138,3,32,5
	.sym	~~_k_window_list,~~_k_window_list,106,2,0,30,10
	.sym	~~_k_window_index,~~_k_window_index,5,2,16
	.sym	~~_k_currentPalatte,~~_k_currentPalatte,10,3,400,54
	.sym	~~BG_FILL_LINE_EVEN,~~BG_FILL_LINE_EVEN,110,3,0,80
	.sym	~~BG_FILL_LINE_ODD,~~BG_FILL_LINE_ODD,110,3,0,80
	.sym	~~MOUSE_POINTER_EMPTY,~~MOUSE_POINTER_EMPTY,110,2,0,256
	.sym	~~MOUSE_POINTER_BLOCK,~~MOUSE_POINTER_BLOCK,110,2,0,256
	.sym	~~TEXT_BG_COLORS,~~TEXT_BG_COLORS,110,3,0,64
	.sym	~~TEXT_FG_COLORS,~~TEXT_FG_COLORS,110,3,0,64
	.sym	~~k_window_draw,~~k_window_draw,65,18,0
	.sym	~~k_put_char,~~k_put_char,65,18,0
	.sym	~~k_clear_screen,~~k_clear_screen,65,18,0
	.sym	~~k_disable_border,~~k_disable_border,65,18,0
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
	.sym	~~k_send_message,~~k_send_message,78,18,0
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
	.sym	~~k_user_getSystemMetric,~~k_user_getSystemMetric,69,18,0
	.sym	~~version_title,~~version_title,142,2,32
	.sym	~~strbuf,~~strbuf,110,2,0,32
	.sym	~~buffer,~~buffer,110,2,0,32
	.sym	~~hitList,~~hitList,1130,2,32,27,6
	.sym	~~clickList,~~clickList,106,2,0,27,6
	.sym	~~k_set_text_colors,~~k_set_text_colors,65,2,0
	.sym	~~k_gui_set_mousepointer,~~k_gui_set_mousepointer,65,2,0
	.sym	~~k_gui_init_mousepointer,~~k_gui_init_mousepointer,65,2,0
	.sym	~~k_font_getFontWidth,~~k_font_getFontWidth,80,2,0
	.sym	~~k_font_getFontHeight,~~k_font_getFontHeight,80,2,0
	.sym	~~k_gadget_title_back_callback,~~k_gadget_title_back_callback,65,2,0
	.sym	~~k_gadget_title_front_callback,~~k_gadget_title_front_callback,65,2,0
	.sym	~~k_render_wingadget,~~k_render_wingadget,69,2,0
	.sym	~~k_create_ui_window_class,~~k_create_ui_window_class,1098,2,32,30
	.sym	~~k_add_window_hit_node,~~k_add_window_hit_node,65,2,0
	.sym	~~k_point_in_nodes,~~k_point_in_nodes,1098,2,32,5
	.sym	~~k_free_context_menu,~~k_free_context_menu,65,2,0
	.sym	~~k_render_context_menu,~~k_render_context_menu,1098,2,32,34
	.sym	~~k_create_context_menus,~~k_create_context_menus,1098,2,32,34
	.sym	~~k_create_context_menu_in_window_ex,~~k_create_context_menu_in_window_ex,1098,2,32,34
	.sym	~~k_create_context_menu_in_window,~~k_create_context_menu_in_window,1098,2,32,34
	.sym	~~k_create_context_menu,~~k_create_context_menu,1098,2,32,34
	.sym	~~k_point_in_list,~~k_point_in_list,69,2,0
	.sym	~~k_vdma_copy_address_ex,~~k_vdma_copy_address_ex,65,2,0
	.sym	~~k_vdma_fill_address_ex,~~k_vdma_fill_address_ex,65,2,0
	.sym	~~k_vdma_fill_rect_ex,~~k_vdma_fill_rect_ex,65,2,0
	.sym	~~k_vdma_fill_rect,~~k_vdma_fill_rect,65,2,0
	.sym	~~k_vdma_fill_address,~~k_vdma_fill_address,65,2,0
	.sym	~~k_vdma_fill,~~k_vdma_fill,65,2,0
	.sym	~~k_vdma_move_rect,~~k_vdma_move_rect,65,2,0
	.sym	~~k_vdraw_ui_window_ex,~~k_vdraw_ui_window_ex,65,2,0
	.sym	~~k_vdraw_ui_window,~~k_vdraw_ui_window,65,2,0
	.sym	~~k_draw_ui_window,~~k_draw_ui_window,65,2,0
	.sym	~~k_put_winicon_scaled,~~k_put_winicon_scaled,65,2,0
	.sym	~~k_put_winicon_point,~~k_put_winicon_point,69,2,0
	.sym	~~k_put_wingadget_point,~~k_put_wingadget_point,69,2,0
	.sym	~~k_create_window,~~k_create_window,1089,2,32
	.sym	~~k_render_bitmap_info,~~k_render_bitmap_info,65,2,0
	.sym	~~k_draw_char_scaled,~~k_draw_char_scaled,65,2,0
	.sym	~~k_get_font_metrics,~~k_get_font_metrics,69,2,0
	.sym	~~k_draw_fontset,~~k_draw_fontset,65,2,0
	.sym	~~k_draw_char,~~k_draw_char,65,2,0
	.sym	~~k_put_draw_text,~~k_put_draw_text,69,2,0
	.sym	~~k_draw_char_scaled_point,~~k_draw_char_scaled_point,65,2,0
	.sym	~~k_draw_text_point_with_font_ex,~~k_draw_text_point_with_font_ex,69,2,0
	.sym	~~k_draw_text_point_with_font,~~k_draw_text_point_with_font,69,2,0
	.sym	~~k_draw_text_point_ex,~~k_draw_text_point_ex,69,2,0
	.sym	~~k_draw_text_point,~~k_draw_text_point,69,2,0
	.sym	~~k_put_font_point,~~k_put_font_point,69,2,0
	.sym	~~k_draw_text_scaled,~~k_draw_text_scaled,69,2,0
	.sym	~~k_draw_text,~~k_draw_text,69,2,0
	.sym	~~k_put_binary_variablefont_point_ex,~~k_put_binary_variablefont_point_ex,69,2,0
	.sym	~~k_put_binary_variablefont_point,~~k_put_binary_variablefont_point,69,2,0
	.sym	~~k_put_binary_font_point,~~k_put_binary_font_point,69,2,0
	.sym	~~k_put_font_scaled,~~k_put_font_scaled,65,2,0
	.sym	~~k_put_font,~~k_put_font,65,2,0
	.sym	~~k_fill_bank,~~k_fill_bank,65,2,0
	.sym	~~k_fill_line,~~k_fill_line,65,2,0
	.sym	~~k_paint_brush_at_address,~~k_paint_brush_at_address,65,2,0
	.sym	~~k_paint_brush_rect,~~k_paint_brush_rect,65,2,0
	.sym	~~k_vdraw_filled_rect,~~k_vdraw_filled_rect,65,2,0
	.sym	~~k_draw_filled_rect,~~k_draw_filled_rect,65,2,0
	.sym	~~k_draw_rect_slow,~~k_draw_rect_slow,65,2,0
	.sym	~~k_draw_line_ex,~~k_draw_line_ex,65,2,0
	.sym	~~k_draw_line,~~k_draw_line,65,2,0
	.sym	~~k_draw_filled_circle,~~k_draw_filled_circle,65,2,0
	.sym	~~k_draw_circle,~~k_draw_circle,65,2,0
	.sym	~~k_draw_segments,~~k_draw_segments,65,2,0
	.sym	~~k_draw_pixel_ex,~~k_draw_pixel_ex,65,2,0
	.sym	~~k_draw_pixel,~~k_draw_pixel,65,2,0
	.sym	~~k_draw_lines,~~k_draw_lines,65,2,0
	.sym	~~k_memory_bitblt,~~k_memory_bitblt,65,2,0
	.sym	~~k_bitblt,~~k_bitblt,65,2,0
	.sym	~~k_scratch_restore_bitblt,~~k_scratch_restore_bitblt,65,2,0
	.sym	~~k_scratch_save_bitblt,~~k_scratch_save_bitblt,65,2,0
	.sym	~~k_shadow_fill_rect_address,~~k_shadow_fill_rect_address,65,2,0
	.sym	~~k_shadow_fill_rect,~~k_shadow_fill_rect,65,2,0
	.sym	~~k_shadow_bitblt,~~k_shadow_bitblt,65,2,0
	.sym	~~k_set_rect,~~k_set_rect,65,2,0
	.sym	~~defineGrayPalette,~~defineGrayPalette,65,2,0
	.sym	~~setColors,~~setColors,65,2,0
	.sym	~~k_gui_get_pixel_offset_width,~~k_gui_get_pixel_offset_width,71,2,0
	.sym	~~k_gui_get_pixel_offset,~~k_gui_get_pixel_offset,71,2,0
	.sym	~~k_get_video_mode,~~k_get_video_mode,80,2,0
	.sym	~~k_enable_bitmap_mode,~~k_enable_bitmap_mode,65,2,0
	.sym	~~k_drawPixel,~~k_drawPixel,65,2,0
	.sym	~~k_draw_nonclient_area,~~k_draw_nonclient_area,65,2,0
	.sym	~~k_getUIColor,~~k_getUIColor,69,2,0
	.sym	~~k_getUIGadgetColor,~~k_getUIGadgetColor,69,2,0
	.sym	~~k_getUIMenuColor,~~k_getUIMenuColor,69,2,0
	.sym	~~k_getUIWindowShadowColor,~~k_getUIWindowShadowColor,69,2,0
	.sym	~~k_getUIWindowBorderColor,~~k_getUIWindowBorderColor,69,2,0
	.sym	~~k_getUIWindowFrameColor,~~k_getUIWindowFrameColor,69,2,0
	.sym	~~k_getUIHighlightColor,~~k_getUIHighlightColor,69,2,0
	.sym	~~k_getUIFontSelectedColor,~~k_getUIFontSelectedColor,69,2,0
	.sym	~~k_getUIFontColor,~~k_getUIFontColor,69,2,0
	.sym	~~k_getUIDesktopColor,~~k_getUIDesktopColor,69,2,0
	.sym	~~k_getUIBackgroundColor,~~k_getUIBackgroundColor,69,2,0
	.sym	PCUR_PALETTE_MAP,0,138,14,32,54
	.sym	CUR_PALETTE_MAP,0,10,14,400,54
	.sym	~~k_render_menu,~~k_render_menu,1098,2,32,34
	.sym	~~k_vdraw_ui_menu_with_rect,~~k_vdraw_ui_menu_with_rect,1098,2,32,34
	.sym	~~k_vdraw_ui_menu_ex,~~k_vdraw_ui_menu_ex,1098,2,32,34
	.sym	~~k_vdraw_ui_menu,~~k_vdraw_ui_menu,1098,2,32,34
	.sym	~~k_draw_menu,~~k_draw_menu,1098,2,32,34
	.sym	PCLICKDETECTED,0,138,14,32,53
	.sym	CLICKDETECTED,0,10,14,64,53
	.sym	OBJECTCLICKED,0,641,14,32
	.sym	~~MOUSE_POINTER_RESIZE,~~MOUSE_POINTER_RESIZE,110,2,0,256
	.sym	~~MOUSE_POINTER_HOURGLASS,~~MOUSE_POINTER_HOURGLASS,110,2,0,256
	.sym	~~MOUSE_POINTER_HELP,~~MOUSE_POINTER_HELP,110,2,0,256
	.sym	~~MOUSE_POINTER_ARROW,~~MOUSE_POINTER_ARROW,110,2,0,256
	.sym	~~Bm437ToshibaLCD8x8,~~Bm437ToshibaLCD8x8,110,18,0,0
	.sym	~~windowIconImg,~~windowIconImg,878,18,0,0,256
	.sym	~~windowChromeImg,~~windowChromeImg,878,18,0,0,64
	.sym	~~fontImg,~~fontImg,878,18,0,0,64
	.sym	~~characterROMMapping,~~characterROMMapping,101,18,0,0
	.sym	~~k_mem_deallocate_heap,~~k_mem_deallocate_heap,65,18,0
	.sym	~~k_mem_allocate_heap,~~k_mem_allocate_heap,1089,18,32
	.sym	MemoryCallback,0,641,14,32
	.sym	PFXMEMORYMAP,0,138,14,32,52
	.sym	FXMEMORYMAP,0,10,14,2072,52
	.sym	UMM_HEAP_INFO,0,10,14,256,51
	.sym	~~k_pad_string,~~k_pad_string,1102,18,32
	.sym	~~k_itoa,~~k_itoa,1102,18,32
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
	.sym	~~k_get_fpga_date_year,~~k_get_fpga_date_year,65,18,0
	.sym	~~k_get_fpga_date_month,~~k_get_fpga_date_month,65,18,0
	.sym	~~k_get_fpga_date_day,~~k_get_fpga_date_day,65,18,0
	.sym	~~k_debug_rect,~~k_debug_rect,65,18,0
	.sym	~~k_debug_strings,~~k_debug_strings,65,18,0
	.sym	~~k_debug_message,~~k_debug_message,65,18,0
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
	.sym	FOREACHNODEUNTIL,0,654,14,32
	.sym	FOREACHNODE,0,641,14,32
	.sym	~~k_nodelist_add,~~k_nodelist_add,65,18,0
	.sym	~~k_nodelist_create,~~k_nodelist_create,1098,18,32,5
	.sym	~~k_nodelist_init,~~k_nodelist_init,1098,18,32,5
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
	.sym	~~toupper,~~toupper,69,18,0
	.sym	~~strupr,~~strupr,1102,18,32
	.sym	~~strlen,~~strlen,80,18,0
	.sym	~~strcpy,~~strcpy,1102,18,32
	.sym	~~memset,~~memset,1089,18,32
	.sym	~~memcpy,~~memcpy,1089,18,32
	.sym	Boolean_T,0,5,14,16
	.sym	~~abs,~~abs,69,18,0
	.sym	ldiv_t,0,10,14,64,2
	.sym	div_t,0,10,14,32,1
	.sym	wctype_t,0,16,14,16
	.sym	wint_t,0,16,14,16
	.sym	wchar_t,0,14,14,8
	.sym	ptrdiff_t,0,7,14,32
	.sym	size_t,0,16,14,16
	end

;:ts=8
R0	equ	1
R1	equ	5
R2	equ	9
R3	equ	13
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxwindowmanagerV2.c",0
;#include "fxwindowmanager.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxwindowmanager.h",0
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxwindowmanager.h",5
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxwindowmanager.h",6
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxmemorymanager.h",0
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos.h",0
	.line	25
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxmemorymanager.h",5
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\umm_malloc_cfg.h",0
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos_build_parameters.h",0
	.line	32
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\umm_malloc_cfg.h",8
	.stag	UMM_HEAP_INFO_t,256,59
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
	.stag	_fx_memory_map,2072,60
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
	.stag	_click_detected,64,61
	.member	window,0,138,8,32,27
	.member	handler,32,641,8,32
	.eos
	.stag	_current_palette_map,400,62
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
	.stag	_childMessage_t,64,63
	.member	msgType,0,16,8,16
	.member	msgData,16,129,8,32
	.member	dataSize,48,16,8,16
	.eos
	.line	362
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxwindowmanagerV2.c",1
;#include "fxfont.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxfont.h",0
	.line	64
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxwindowmanagerV2.c",2
;
;
;static PFXNODELIST _k_windowManager_WindowClassList 	= NULL;
	data
~~_k_windowManager_WindowClassList:
	dl	$0
	ends
;static PFXNODELIST _k_windowManager_WindowObjectList	= NULL;
	data
~~_k_windowManager_WindowObjectList:
	dl	$0
	ends
;static PFXNODELIST _k_windowManager_ObjectHitList		= NULL;
	data
~~_k_windowManager_ObjectHitList:
	dl	$0
	ends
;static PFXNODELIST _k_windowManager_WindowMenuList 		= NULL;
	data
~~_k_windowManager_WindowMenuList:
	dl	$0
	ends
;static PFXNODELIST _k_windowManager_IconList 			= NULL;
	data
~~_k_windowManager_IconList:
	dl	$0
	ends
;static PFXNODELIST _k_windowManager_FontList 			= NULL;
	data
~~_k_windowManager_FontList:
	dl	$0
	ends
;static PFXNODELIST _k_windowManager_CursorList 			= NULL;
	data
~~_k_windowManager_CursorList:
	dl	$0
	ends
;
;#pragma section CODE=WINMAN,offset $4:0000
WINMAN	section	offset $4:0000
	ends
;
;
;VOID k_deallocate_window_class(LPCSTR name,LPVOID data)
;{
	.line	16
	.line	17
	WINMAN
	xdef	~~k_deallocate_window_class
	func
	.function	17
~~k_deallocate_window_class:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L2
	tcs
	phd
	tcd
name_0	set	4
data_0	set	8
	.block	17
;}
	.sym	name,4,142,6,32
	.sym	data,8,129,6,32
	.line	18
L5:
	lda	<L2+2
	sta	<L2+2+8
	lda	<L2+1
	sta	<L2+1+8
	pld
	tsc
	clc
	adc	#L2+8
	tcs
	rtl
	.endblock	18
L2	equ	0
L3	equ	1
	ends
	efunc
	.endfunc	18,1,0
	.line	18
;
;VOID k_deallocate_window_object(LPCSTR name,LPVOID data)
;{
	.line	20
	.line	21
	WINMAN
	xdef	~~k_deallocate_window_object
	func
	.function	21
~~k_deallocate_window_object:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L6
	tcs
	phd
	tcd
name_0	set	4
data_0	set	8
	.block	21
;	PWINDOW pWin = NULL;
;	k_debug_strings("k_deallocate_window_object name:",(LPSTR)name);
pWin_1	set	0
	.sym	pWin,0,138,1,32,27
	.sym	name,4,142,6,32
	.sym	data,8,129,6,32
	stz	<L7+pWin_1
	stz	<L7+pWin_1+2
	.line	23
	pei	<L6+name_0+2
	pei	<L6+name_0
	pea	#^L1
	pea	#<L1
	jsl	~~k_debug_strings
;	k_debug_pointer("                            ptr:",data);
	.line	24
	pei	<L6+data_0+2
	pei	<L6+data_0
	pea	#^L1+33
	pea	#<L1+33
	jsl	~~k_debug_pointer
;
;	if(data)
	.line	26
;	{
	lda	<L6+data_0
	ora	<L6+data_0+2
	bne	L9
	brl	L10001
L9:
	.line	27
;		pWin = (PWINDOW)data;
	.line	28
	lda	<L6+data_0
	sta	<L7+pWin_1
	lda	<L6+data_0+2
	sta	<L7+pWin_1+2
;		k_debug_strings("                        caption:",(LPSTR)pWin->win_title);
	.line	29
	clc
	lda	#$d4
	adc	<L7+pWin_1
	sta	<R0
	lda	#$0
	adc	<L7+pWin_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L1+66
	pea	#<L1+66
	jsl	~~k_debug_strings
;
;
;		if(pWin->pChildHitList)
	.line	32
;		{
	ldy	#$13c
	lda	[<L7+pWin_1],Y
	ldy	#$13e
	ora	[<L7+pWin_1],Y
	bne	L10
	brl	L10002
L10:
	.line	33
;			k_nodelist_deallocate_list(pWin->pChildHitList);
	.line	34
	ldy	#$13e
	lda	[<L7+pWin_1],Y
	pha
	ldy	#$13c
	lda	[<L7+pWin_1],Y
	pha
	jsl	~~k_nodelist_deallocate_list
;		}
	.line	35
;		if(pWin->pChildWindows)
L10002:
	.line	36
;		{
	ldy	#$138
	lda	[<L7+pWin_1],Y
	ldy	#$13a
	ora	[<L7+pWin_1],Y
	bne	L11
	brl	L10003
L11:
	.line	37
;			k_nodelist_deallocate_list(pWin->pChildWindows);
	.line	38
	ldy	#$13a
	lda	[<L7+pWin_1],Y
	pha
	ldy	#$138
	lda	[<L7+pWin_1],Y
	pha
	jsl	~~k_nodelist_deallocate_list
;		}
	.line	39
;		if(pWin->windowData)
L10003:
	.line	40
;			k_mem_deallocate_heap(pWin->windowData);
	ldy	#$141
	lda	[<L7+pWin_1],Y
	ldy	#$143
	ora	[<L7+pWin_1],Y
	bne	L12
	brl	L10004
L12:
	.line	41
	ldy	#$143
	lda	[<L7+pWin_1],Y
	pha
	ldy	#$141
	lda	[<L7+pWin_1],Y
	pha
	jsl	~~k_mem_deallocate_heap
;
;
;		k_mem_deallocate_heap(pWin);
L10004:
	.line	44
	pei	<L7+pWin_1+2
	pei	<L7+pWin_1
	jsl	~~k_mem_deallocate_heap
;	}
	.line	45
;
;}
L10001:
	.line	47
L13:
	lda	<L6+2
	sta	<L6+2+8
	lda	<L6+1
	sta	<L6+1+8
	pld
	tsc
	clc
	adc	#L6+8
	tcs
	rtl
	.endblock	47
L6	equ	8
L7	equ	5
	ends
	efunc
	.endfunc	47,5,8
	.line	47
	data
L1:
	db	$6B,$5F,$64,$65,$61,$6C,$6C,$6F,$63,$61,$74,$65,$5F,$77,$69
	db	$6E,$64,$6F,$77,$5F,$6F,$62,$6A,$65,$63,$74,$20,$6E,$61,$6D
	db	$65,$3A,$00,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
	db	$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
	db	$20,$70,$74,$72,$3A,$00,$20,$20,$20,$20,$20,$20,$20,$20,$20
	db	$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
	db	$63,$61,$70,$74,$69,$6F,$6E,$3A,$00
	ends
;
;VOID k_deallocate_menu_object(LPCSTR name,LPVOID data)
;{
	.line	49
	.line	50
	WINMAN
	xdef	~~k_deallocate_menu_object
	func
	.function	50
~~k_deallocate_menu_object:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L15
	tcs
	phd
	tcd
name_0	set	4
data_0	set	8
	.block	50
;}
	.sym	name,4,142,6,32
	.sym	data,8,129,6,32
	.line	51
L18:
	lda	<L15+2
	sta	<L15+2+8
	lda	<L15+1
	sta	<L15+1+8
	pld
	tsc
	clc
	adc	#L15+8
	tcs
	rtl
	.endblock	51
L15	equ	0
L16	equ	1
	ends
	efunc
	.endfunc	51,1,0
	.line	51
;
;VOID k_deallocate_icon_object(LPCSTR name,LPVOID data)
;{
	.line	53
	.line	54
	WINMAN
	xdef	~~k_deallocate_icon_object
	func
	.function	54
~~k_deallocate_icon_object:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L19
	tcs
	phd
	tcd
name_0	set	4
data_0	set	8
	.block	54
;}
	.sym	name,4,142,6,32
	.sym	data,8,129,6,32
	.line	55
L22:
	lda	<L19+2
	sta	<L19+2+8
	lda	<L19+1
	sta	<L19+1+8
	pld
	tsc
	clc
	adc	#L19+8
	tcs
	rtl
	.endblock	55
L19	equ	0
L20	equ	1
	ends
	efunc
	.endfunc	55,1,0
	.line	55
;
;VOID k_deallocate_hit_class(LPCSTR name,LPVOID data)
;{
	.line	57
	.line	58
	WINMAN
	xdef	~~k_deallocate_hit_class
	func
	.function	58
~~k_deallocate_hit_class:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L23
	tcs
	phd
	tcd
name_0	set	4
data_0	set	8
	.block	58
;	PCLICKDETECTED pcd = data;
;
;	if(pcd)
pcd_1	set	0
	.sym	pcd,0,138,1,32,61
	.sym	name,4,142,6,32
	.sym	data,8,129,6,32
	lda	<L23+data_0
	sta	<L24+pcd_1
	lda	<L23+data_0+2
	sta	<L24+pcd_1+2
	.line	61
;	{
	lda	<L24+pcd_1
	ora	<L24+pcd_1+2
	bne	L26
	brl	L10005
L26:
	.line	62
;		k_mem_deallocate_heap(pcd);
	.line	63
	pei	<L24+pcd_1+2
	pei	<L24+pcd_1
	jsl	~~k_mem_deallocate_heap
;	}
	.line	64
;}
L10005:
	.line	65
L27:
	lda	<L23+2
	sta	<L23+2+8
	lda	<L23+1
	sta	<L23+1+8
	pld
	tsc
	clc
	adc	#L23+8
	tcs
	rtl
	.endblock	65
L23	equ	4
L24	equ	1
	ends
	efunc
	.endfunc	65,1,4
	.line	65
;
;VOID k_deallocate_menu_resource(LPCSTR name,LPVOID data)
;{
	.line	67
	.line	68
	WINMAN
	xdef	~~k_deallocate_menu_resource
	func
	.function	68
~~k_deallocate_menu_resource:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L28
	tcs
	phd
	tcd
name_0	set	4
data_0	set	8
	.block	68
;
;}
	.sym	name,4,142,6,32
	.sym	data,8,129,6,32
	.line	70
L31:
	lda	<L28+2
	sta	<L28+2+8
	lda	<L28+1
	sta	<L28+1+8
	pld
	tsc
	clc
	adc	#L28+8
	tcs
	rtl
	.endblock	70
L28	equ	0
L29	equ	1
	ends
	efunc
	.endfunc	70,1,0
	.line	70
;
;VOID k_deallocate_font_object(LPCSTR name,LPVOID data)
;{
	.line	72
	.line	73
	WINMAN
	xdef	~~k_deallocate_font_object
	func
	.function	73
~~k_deallocate_font_object:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L32
	tcs
	phd
	tcd
name_0	set	4
data_0	set	8
	.block	73
;
;}
	.sym	name,4,142,6,32
	.sym	data,8,129,6,32
	.line	75
L35:
	lda	<L32+2
	sta	<L32+2+8
	lda	<L32+1
	sta	<L32+1+8
	pld
	tsc
	clc
	adc	#L32+8
	tcs
	rtl
	.endblock	75
L32	equ	0
L33	equ	1
	ends
	efunc
	.endfunc	75,1,0
	.line	75
;
;VOID k_deallocate_cursor_object(LPCSTR name,LPVOID data)
;{
	.line	77
	.line	78
	WINMAN
	xdef	~~k_deallocate_cursor_object
	func
	.function	78
~~k_deallocate_cursor_object:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L36
	tcs
	phd
	tcd
name_0	set	4
data_0	set	8
	.block	78
;
;}
	.sym	name,4,142,6,32
	.sym	data,8,129,6,32
	.line	80
L39:
	lda	<L36+2
	sta	<L36+2+8
	lda	<L36+1
	sta	<L36+1+8
	pld
	tsc
	clc
	adc	#L36+8
	tcs
	rtl
	.endblock	80
L36	equ	0
L37	equ	1
	ends
	efunc
	.endfunc	80,1,0
	.line	80
;
;
;BOOL k_is_window_closed(LPVOID name,LPVOID data)
;{
	.line	83
	.line	84
	WINMAN
	xdef	~~k_is_window_closed
	func
	.function	84
~~k_is_window_closed:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L40
	tcs
	phd
	tcd
name_0	set	4
data_0	set	8
	.block	84
;	if(data)
	.sym	name,4,129,6,32
	.sym	data,8,129,6,32
	.line	85
;	{
	lda	<L40+data_0
	ora	<L40+data_0+2
	bne	L43
	brl	L10006
L43:
	.line	86
;		return ((PWINDOW)data)->isClosed;
	.line	87
	ldy	#$15d
	lda	[<L40+data_0],Y
	and	#$ff
L44:
	tay
	lda	<L40+2
	sta	<L40+2+8
	lda	<L40+1
	sta	<L40+1+8
	pld
	tsc
	clc
	adc	#L40+8
	tcs
	tya
	rtl
;	}
	.line	88
;
;	return FALSE;
L10006:
	.line	90
	lda	#$0
	brl	L44
;}
	.line	91
	.endblock	91
L40	equ	0
L41	equ	1
	ends
	efunc
	.endfunc	91,1,0
	.line	91
;
;VOID k_clean_closed_windows(void)
;{
	.line	93
	.line	94
	WINMAN
	xdef	~~k_clean_closed_windows
	func
	.function	94
~~k_clean_closed_windows:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L45
	tcs
	phd
	tcd
	.block	94
;	k_debug_string("k_clean_closed_windows\r\n");
	.line	95
	pea	#^L14
	pea	#<L14
	jsl	~~k_debug_string
;	if(_k_windowManager_WindowObjectList)
	.line	96
;	{
	lda	|~~_k_windowManager_WindowObjectList
	ora	|~~_k_windowManager_WindowObjectList+2
	bne	L48
	brl	L10007
L48:
	.line	97
;		k_nodelist_foreach_listdata_remove(_k_windowManager_WindowObjectList,(LPVOID)NULL,k_is_window_closed);
	.line	98
	pea	#^~~k_is_window_closed
	pea	#<~~k_is_window_closed
	pea	#^$0
	pea	#<$0
	lda	|~~_k_windowManager_WindowObjectList+2
	pha
	lda	|~~_k_windowManager_WindowObjectList
	pha
	jsl	~~k_nodelist_foreach_listdata_remove
;		k_debug_nodelist(_k_windowManager_WindowObjectList->listhead->next);
	.line	99
	lda	|~~_k_windowManager_WindowObjectList
	sta	<R0
	lda	|~~_k_windowManager_WindowObjectList+2
	sta	<R0+2
	lda	[<R0]
	sta	<R1
	ldy	#$2
	lda	[<R0],Y
	sta	<R1+2
	ldy	#$c
	lda	[<R1],Y
	pha
	ldy	#$a
	lda	[<R1],Y
	pha
	jsl	~~k_debug_nodelist
;	}
	.line	100
;}
L10007:
	.line	101
L49:
	pld
	tsc
	clc
	adc	#L45
	tcs
	rtl
	.endblock	101
L45	equ	8
L46	equ	9
	ends
	efunc
	.endfunc	101,9,8
	.line	101
	data
L14:
	db	$6B,$5F,$63,$6C,$65,$61,$6E,$5F,$63,$6C,$6F,$73,$65,$64,$5F
	db	$77,$69,$6E,$64,$6F,$77,$73,$0D,$0A,$00
	ends
;
;
;BOOL k_initializeWindowManager(void)
;{
	.line	104
	.line	105
	WINMAN
	xdef	~~k_initializeWindowManager
	func
	.function	105
~~k_initializeWindowManager:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L51
	tcs
	phd
	tcd
	.block	105
;	k_debug_string("k_initializeWindowManager\r\n");
	.line	106
	pea	#^L50
	pea	#<L50
	jsl	~~k_debug_string
;
;	_k_windowManager_WindowClassList 	= k_nodelist_allocate_list("_window_class_list" ,k_deallocate_window_class);
	.line	108
	pea	#^~~k_deallocate_window_class
	pea	#<~~k_deallocate_window_class
	pea	#^L50+28
	pea	#<L50+28
	jsl	~~k_nodelist_allocate_list
	sta	|~~_k_windowManager_WindowClassList
	stx	|~~_k_windowManager_WindowClassList+2
;	_k_windowManager_WindowObjectList   = k_nodelist_allocate_list("_window_object_list",k_deallocate_window_object);
	.line	109
	pea	#^~~k_deallocate_window_object
	pea	#<~~k_deallocate_window_object
	pea	#^L50+47
	pea	#<L50+47
	jsl	~~k_nodelist_allocate_list
	sta	|~~_k_windowManager_WindowObjectList
	stx	|~~_k_windowManager_WindowObjectList+2
;	_k_windowManager_WindowMenuList 	= k_nodelist_allocate_list("_window_menu_list"  ,k_deallocate_menu_object);
	.line	110
	pea	#^~~k_deallocate_menu_object
	pea	#<~~k_deallocate_menu_object
	pea	#^L50+67
	pea	#<L50+67
	jsl	~~k_nodelist_allocate_list
	sta	|~~_k_windowManager_WindowMenuList
	stx	|~~_k_windowManager_WindowMenuList+2
;	_k_windowManager_IconList  		 	= k_nodelist_allocate_list("_window_icon_list"  ,k_deallocate_icon_object);
	.line	111
	pea	#^~~k_deallocate_icon_object
	pea	#<~~k_deallocate_icon_object
	pea	#^L50+85
	pea	#<L50+85
	jsl	~~k_nodelist_allocate_list
	sta	|~~_k_windowManager_IconList
	stx	|~~_k_windowManager_IconList+2
;	_k_windowManager_ObjectHitList		= k_nodelist_allocate_list("_object_hit_list"  ,k_deallocate_hit_class);
	.line	112
	pea	#^~~k_deallocate_hit_class
	pea	#<~~k_deallocate_hit_class
	pea	#^L50+103
	pea	#<L50+103
	jsl	~~k_nodelist_allocate_list
	sta	|~~_k_windowManager_ObjectHitList
	stx	|~~_k_windowManager_ObjectHitList+2
;	_k_windowManager_FontList			= k_nodelist_allocate_list("_available_font_list"  ,k_deallocate_font_object);
	.line	113
	pea	#^~~k_deallocate_font_object
	pea	#<~~k_deallocate_font_object
	pea	#^L50+120
	pea	#<L50+120
	jsl	~~k_nodelist_allocate_list
	sta	|~~_k_windowManager_FontList
	stx	|~~_k_windowManager_FontList+2
;	_k_windowManager_CursorList			= k_nodelist_allocate_list("_available_cursor_list"  ,k_deallocate_cursor_object);
	.line	114
	pea	#^~~k_deallocate_cursor_object
	pea	#<~~k_deallocate_cursor_object
	pea	#^L50+141
	pea	#<L50+141
	jsl	~~k_nodelist_allocate_list
	sta	|~~_k_windowManager_CursorList
	stx	|~~_k_windowManager_CursorList+2
;
;	k_user_CreateWindowClass("gadgetWindowClass",NULL,0,NULL,NULL,NULL,gadgetWindowProc);
	.line	116
	pea	#^~~gadgetWindowProc
	pea	#<~~gadgetWindowProc
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#^L50+164
	pea	#<L50+164
	jsl	~~k_user_CreateWindowClass
;	k_user_CreateWindowClass("buttonWindowClass",NULL,0,NULL,NULL,NULL,buttonWindowProc);
	.line	117
	pea	#^~~buttonWindowProc
	pea	#<~~buttonWindowProc
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#^L50+182
	pea	#<L50+182
	jsl	~~k_user_CreateWindowClass
;	k_user_CreateWindowClass("menuWindowClass",NULL,0,NULL,NULL,NULL,menuWindowProc);
	.line	118
	pea	#^~~menuWindowProc
	pea	#<~~menuWindowProc
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#^L50+200
	pea	#<L50+200
	jsl	~~k_user_CreateWindowClass
;	k_user_CreateWindowClass("menuAnchorWindowClass",NULL,0,NULL,NULL,NULL,menuAnchorWindowProc);
	.line	119
	pea	#^~~menuAnchorWindowProc
	pea	#<~~menuAnchorWindowProc
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#^L50+216
	pea	#<L50+216
	jsl	~~k_user_CreateWindowClass
;	k_user_CreateWindowClass("menuDropDownWindowClass",NULL,0,NULL,NULL,NULL,menuDropDownWindowProc);
	.line	120
	pea	#^~~menuDropDownWindowProc
	pea	#<~~menuDropDownWindowProc
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#^L50+238
	pea	#<L50+238
	jsl	~~k_user_CreateWindowClass
;	k_user_CreateWindowClass("dialogWindowClass",NULL,0,NULL,NULL,NULL,DlgWindowProc);
	.line	121
	pea	#^~~DlgWindowProc
	pea	#<~~DlgWindowProc
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#^L50+262
	pea	#<L50+262
	jsl	~~k_user_CreateWindowClass
;	k_user_CreateWindowClass("aboutDialogWindowClass",NULL,0,NULL,NULL,NULL,DlgAboutWindowProc);
	.line	122
	pea	#^~~DlgAboutWindowProc
	pea	#<~~DlgAboutWindowProc
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#^L50+280
	pea	#<L50+280
	jsl	~~k_user_CreateWindowClass
;	k_user_CreateWindowClass("hscrollWindowClass",NULL,0,NULL,NULL,NULL,hscrollbarWindowProc);
	.line	123
	pea	#^~~hscrollbarWindowProc
	pea	#<~~hscrollbarWindowProc
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#^L50+303
	pea	#<L50+303
	jsl	~~k_user_CreateWindowClass
;	k_user_CreateWindowClass("vscrollWindowClass",NULL,0,NULL,NULL,NULL,vscrollbarWindowProc);
	.line	124
	pea	#^~~vscrollbarWindowProc
	pea	#<~~vscrollbarWindowProc
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#^L50+322
	pea	#<L50+322
	jsl	~~k_user_CreateWindowClass
;
;	k_user_RegisterFontClass("ATI6x8",Bm437ATI6x8);
	.line	126
	pea	#^~~Bm437ATI6x8
	pea	#<~~Bm437ATI6x8
	pea	#^L50+341
	pea	#<L50+341
	jsl	~~k_user_RegisterFontClass
;	k_user_RegisterFontClass("ATI8x16",Bm437ATI8x16);
	.line	127
	pea	#^~~Bm437ATI8x16
	pea	#<~~Bm437ATI8x16
	pea	#^L50+348
	pea	#<L50+348
	jsl	~~k_user_RegisterFontClass
;	k_user_RegisterFontClass("ToshibaLCD8x8",Bm437ToshibaLCD8x8);
	.line	128
	pea	#^~~Bm437ToshibaLCD8x8
	pea	#<~~Bm437ToshibaLCD8x8
	pea	#^L50+356
	pea	#<L50+356
	jsl	~~k_user_RegisterFontClass
;	k_user_RegisterFontClass("TINYTYPE8x8",BM437TINYTYPE8x8);
	.line	129
	pea	#^~~BM437TINYTYPE8x8
	pea	#<~~BM437TINYTYPE8x8
	pea	#^L50+370
	pea	#<L50+370
	jsl	~~k_user_RegisterFontClass
;	k_user_RegisterFontClass("FANTASY8x8",BM437FANTASY);
	.line	130
	pea	#^~~BM437FANTASY
	pea	#<~~BM437FANTASY
	pea	#^L50+382
	pea	#<L50+382
	jsl	~~k_user_RegisterFontClass
;	k_user_RegisterFontClass("AMIGO8x8",BM437AMIGO8x8);
	.line	131
	pea	#^~~BM437AMIGO8x8
	pea	#<~~BM437AMIGO8x8
	pea	#^L50+393
	pea	#<L50+393
	jsl	~~k_user_RegisterFontClass
;	k_user_RegisterFontClass("Italics8x8",BM4378X8ITAL);
	.line	132
	pea	#^~~BM4378X8ITAL
	pea	#<~~BM4378X8ITAL
	pea	#^L50+402
	pea	#<L50+402
	jsl	~~k_user_RegisterFontClass
;	k_user_RegisterFontClass("FXOS8x8",BM437FXOS8x8);
	.line	133
	pea	#^~~BM437FXOS8x8
	pea	#<~~BM437FXOS8x8
	pea	#^L50+413
	pea	#<L50+413
	jsl	~~k_user_RegisterFontClass
;
;	k_user_RegisterMousePointerClass("ARROW",MOUSE_POINTER_ARROW);
	.line	135
	pea	#^~~MOUSE_POINTER_ARROW
	pea	#<~~MOUSE_POINTER_ARROW
	pea	#^L50+421
	pea	#<L50+421
	jsl	~~k_user_RegisterMousePointerClass
;	k_user_RegisterMousePointerClass("HOURGLASS",MOUSE_POINTER_HOURGLASS);
	.line	136
	pea	#^~~MOUSE_POINTER_HOURGLASS
	pea	#<~~MOUSE_POINTER_HOURGLASS
	pea	#^L50+427
	pea	#<L50+427
	jsl	~~k_user_RegisterMousePointerClass
;	k_user_RegisterMousePointerClass("HELP",MOUSE_POINTER_HELP);
	.line	137
	pea	#^~~MOUSE_POINTER_HELP
	pea	#<~~MOUSE_POINTER_HELP
	pea	#^L50+437
	pea	#<L50+437
	jsl	~~k_user_RegisterMousePointerClass
;	k_user_RegisterMousePointerClass("RESIZE",MOUSE_POINTER_RESIZE);
	.line	138
	pea	#^~~MOUSE_POINTER_RESIZE
	pea	#<~~MOUSE_POINTER_RESIZE
	pea	#^L50+442
	pea	#<L50+442
	jsl	~~k_user_RegisterMousePointerClass
;
;	return TRUE;
	.line	140
	lda	#$1
L54:
	tay
	pld
	tsc
	clc
	adc	#L51
	tcs
	tya
	rtl
;}
	.line	141
	.endblock	141
L51	equ	0
L52	equ	1
	ends
	efunc
	.endfunc	141,1,0
	.line	141
	data
L50:
	db	$6B,$5F,$69,$6E,$69,$74,$69,$61,$6C,$69,$7A,$65,$57,$69,$6E
	db	$64,$6F,$77,$4D,$61,$6E,$61,$67,$65,$72,$0D,$0A,$00,$5F,$77
	db	$69,$6E,$64,$6F,$77,$5F,$63,$6C,$61,$73,$73,$5F,$6C,$69,$73
	db	$74,$00,$5F,$77,$69,$6E,$64,$6F,$77,$5F,$6F,$62,$6A,$65,$63
	db	$74,$5F,$6C,$69,$73,$74,$00,$5F,$77,$69,$6E,$64,$6F,$77,$5F
	db	$6D,$65,$6E,$75,$5F,$6C,$69,$73,$74,$00,$5F,$77,$69,$6E,$64
	db	$6F,$77,$5F,$69,$63,$6F,$6E,$5F,$6C,$69,$73,$74,$00,$5F,$6F
	db	$62,$6A,$65,$63,$74,$5F,$68,$69,$74,$5F,$6C,$69,$73,$74,$00
	db	$5F,$61,$76,$61,$69,$6C,$61,$62,$6C,$65,$5F,$66,$6F,$6E,$74
	db	$5F,$6C,$69,$73,$74,$00,$5F,$61,$76,$61,$69,$6C,$61,$62,$6C
	db	$65,$5F,$63,$75,$72,$73,$6F,$72,$5F,$6C,$69,$73,$74,$00,$67
	db	$61,$64,$67,$65,$74,$57,$69,$6E,$64,$6F,$77,$43,$6C,$61,$73
	db	$73,$00,$62,$75,$74,$74,$6F,$6E,$57,$69,$6E,$64,$6F,$77,$43
	db	$6C,$61,$73,$73,$00,$6D,$65,$6E,$75,$57,$69,$6E,$64,$6F,$77
	db	$43,$6C,$61,$73,$73,$00,$6D,$65,$6E,$75,$41,$6E,$63,$68,$6F
	db	$72,$57,$69,$6E,$64,$6F,$77,$43,$6C,$61,$73,$73,$00,$6D,$65
	db	$6E,$75,$44,$72,$6F,$70,$44,$6F,$77,$6E,$57,$69,$6E,$64,$6F
	db	$77,$43,$6C,$61,$73,$73,$00,$64,$69,$61,$6C,$6F,$67,$57,$69
	db	$6E,$64,$6F,$77,$43,$6C,$61,$73,$73,$00,$61,$62,$6F,$75,$74
	db	$44,$69,$61,$6C,$6F,$67,$57,$69,$6E,$64,$6F,$77,$43,$6C,$61
	db	$73,$73,$00,$68,$73,$63,$72,$6F,$6C,$6C,$57,$69,$6E,$64,$6F
	db	$77,$43,$6C,$61,$73,$73,$00,$76,$73,$63,$72,$6F,$6C,$6C,$57
	db	$69,$6E,$64,$6F,$77,$43,$6C,$61,$73,$73,$00,$41,$54,$49,$36
	db	$78,$38,$00,$41,$54,$49,$38,$78,$31,$36,$00,$54,$6F,$73,$68
	db	$69,$62,$61,$4C,$43,$44,$38,$78,$38,$00,$54,$49,$4E,$59,$54
	db	$59,$50,$45,$38,$78,$38,$00,$46,$41,$4E,$54,$41,$53,$59,$38
	db	$78,$38,$00,$41,$4D,$49,$47,$4F,$38,$78,$38,$00,$49,$74,$61
	db	$6C,$69,$63,$73,$38,$78,$38,$00,$46,$58,$4F,$53,$38,$78,$38
	db	$00,$41,$52,$52,$4F,$57,$00,$48,$4F,$55,$52,$47,$4C,$41,$53
	db	$53,$00,$48,$45,$4C,$50,$00,$52,$45,$53,$49,$5A,$45,$00
	ends
;
;BOOL find_window_caption(LPVOID ctx,LPVOID data)
;{
	.line	143
	.line	144
	WINMAN
	xdef	~~find_window_caption
	func
	.function	144
~~find_window_caption:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L56
	tcs
	phd
	tcd
ctx_0	set	4
data_0	set	8
	.block	144
;	BOOL bRet = FALSE;
;
;	if(ctx && data)
bRet_1	set	0
	.sym	bRet,0,14,1,8
	.sym	ctx,4,129,6,32
	.sym	data,8,129,6,32
	sep	#$20
	longa	off
	stz	<L57+bRet_1
	rep	#$20
	longa	on
	.line	147
;	{
	lda	<L56+ctx_0
	ora	<L56+ctx_0+2
	bne	L59
	brl	L10008
L59:
	lda	<L56+data_0
	ora	<L56+data_0+2
	bne	L60
	brl	L10008
L60:
	.line	148
;		/*
;		k_debug_string("find_window_caption:found  :[");
;		k_debug_string(((PWINDOW)data)->win_title);
;		k_debug_string("]\r\n");
;
;		k_debug_string("find_window_caption:compare:[");
;		k_debug_string((LPCHAR)ctx);
;		k_debug_string("]\r\n");
;		*/
;		// cannot return the result of the compare, compiler gets confused
;        // return (strcmp((LPCHAR)ctx,((PWINDOW)data)->win_title) == 0);
;		if(strcmp((LPCHAR)ctx,((PWINDOW)data)->win_title) == 0)
	.line	160
;			bRet = TRUE;
	clc
	lda	#$d4
	adc	<L56+data_0
	sta	<R0
	lda	#$0
	adc	<L56+data_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pei	<L56+ctx_0+2
	pei	<L56+ctx_0
	jsl	~~strcmp
	tax
	beq	L61
	brl	L10009
L61:
	.line	161
	sep	#$20
	longa	off
	lda	#$1
	sta	<L57+bRet_1
	rep	#$20
	longa	on
;
;		//k_debug_integer("COMPARE:",bRet );
;	}
L10009:
	.line	164
;
;	return bRet;
L10008:
	.line	166
	lda	<L57+bRet_1
	and	#$ff
L62:
	tay
	lda	<L56+2
	sta	<L56+2+8
	lda	<L56+1
	sta	<L56+1+8
	pld
	tsc
	clc
	adc	#L56+8
	tcs
	tya
	rtl
;}
	.line	167
	.endblock	167
L56	equ	5
L57	equ	5
	ends
	efunc
	.endfunc	167,5,5
	.line	167
;
;HWND k_user_findWindow(LPCSTR winTitle)
;{
	.line	169
	.line	170
	WINMAN
	xdef	~~k_user_findWindow
	func
	.function	170
~~k_user_findWindow:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L63
	tcs
	phd
	tcd
winTitle_0	set	4
	.block	170
;	PFXNODE node = NULL;
;	HWND hWnd = NULL;
;
;	node = k_nodelist_foreach_until_listdata(_k_windowManager_WindowObjectList,(LPVOID)winTitle,find_window_caption);
node_1	set	0
hWnd_1	set	4
	.sym	node,0,138,1,32,2
	.sym	hWnd,4,129,1,32
	.sym	winTitle,4,142,6,32
	stz	<L64+node_1
	stz	<L64+node_1+2
	stz	<L64+hWnd_1
	stz	<L64+hWnd_1+2
	.line	174
	pea	#^~~find_window_caption
	pea	#<~~find_window_caption
	pei	<L63+winTitle_0+2
	pei	<L63+winTitle_0
	lda	|~~_k_windowManager_WindowObjectList+2
	pha
	lda	|~~_k_windowManager_WindowObjectList
	pha
	jsl	~~k_nodelist_foreach_until_listdata
	sta	<L64+node_1
	stx	<L64+node_1+2
;	if(node)
	.line	175
;	{
	lda	<L64+node_1
	ora	<L64+node_1+2
	bne	L66
	brl	L10010
L66:
	.line	176
;		hWnd = k_getHandleFromWindow((PWINDOW)node->data);
	.line	177
	ldy	#$4
	lda	[<L64+node_1],Y
	pha
	ldy	#$2
	lda	[<L64+node_1],Y
	pha
	jsl	~~k_getHandleFromWindow
	sta	<L64+hWnd_1
	stx	<L64+hWnd_1+2
;	}
	.line	178
;	return hWnd;
L10010:
	.line	179
	ldx	<L64+hWnd_1+2
	lda	<L64+hWnd_1
L67:
	tay
	lda	<L63+2
	sta	<L63+2+4
	lda	<L63+1
	sta	<L63+1+4
	pld
	tsc
	clc
	adc	#L63+4
	tcs
	tya
	rtl
;
;}
	.line	181
	.endblock	181
L63	equ	8
L64	equ	1
	ends
	efunc
	.endfunc	181,1,8
	.line	181
;
;HWND k_user_getDesktopWindow(void)
;{
	.line	183
	.line	184
	WINMAN
	xdef	~~k_user_getDesktopWindow
	func
	.function	184
~~k_user_getDesktopWindow:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L68
	tcs
	phd
	tcd
	.block	184
;	return k_user_findWindow("DesktopWindow");
	.line	185
	pea	#^L55
	pea	#<L55
	jsl	~~k_user_findWindow
	sta	<R0
	stx	<R0+2
	ldx	<R0+2
	lda	<R0
L71:
	tay
	pld
	tsc
	clc
	adc	#L68
	tcs
	tya
	rtl
;}
	.line	186
	.endblock	186
L68	equ	4
L69	equ	5
	ends
	efunc
	.endfunc	186,5,4
	.line	186
	data
L55:
	db	$44,$65,$73,$6B,$74,$6F,$70,$57,$69,$6E,$64,$6F,$77,$00
	ends
;
;void k_user_CenterWindow(HWND hWnd)
;{
	.line	188
	.line	189
	WINMAN
	xdef	~~k_user_CenterWindow
	func
	.function	189
~~k_user_CenterWindow:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L73
	tcs
	phd
	tcd
hWnd_0	set	4
	.block	189
;	PWINDOW pWin 	= NULL;
;	PWINDOW pParent = NULL;
;	int offX;
;	int offY;
;	if(hWnd!=NULL)
pWin_1	set	0
pParent_1	set	4
offX_1	set	8
offY_1	set	10
	.sym	pWin,0,138,1,32,27
	.sym	pParent,4,138,1,32,27
	.sym	offX,8,5,1,16
	.sym	offY,10,5,1,16
	.sym	hWnd,4,129,6,32
	stz	<L74+pWin_1
	stz	<L74+pWin_1+2
	stz	<L74+pParent_1
	stz	<L74+pParent_1+2
	.line	194
;	{
	lda	<L73+hWnd_0
	ora	<L73+hWnd_0+2
	bne	L76
	brl	L10011
L76:
	.line	195
;		pWin 	= k_getWindowFromHandle(hWnd);
	.line	196
	pei	<L73+hWnd_0+2
	pei	<L73+hWnd_0
	jsl	~~k_getWindowFromHandle
	sta	<L74+pWin_1
	stx	<L74+pWin_1+2
;
;		if(pWin->pParentWindow)
	.line	198
;		{
	ldy	#$130
	lda	[<L74+pWin_1],Y
	ldy	#$132
	ora	[<L74+pWin_1],Y
	bne	L77
	brl	L10012
L77:
	.line	199
;			pParent = k_getWindowFromHandle(pWin->pParentWindow);
	.line	200
	ldy	#$132
	lda	[<L74+pWin_1],Y
	pha
	ldy	#$130
	lda	[<L74+pWin_1],Y
	pha
	jsl	~~k_getWindowFromHandle
	sta	<L74+pParent_1
	stx	<L74+pParent_1+2
;
;			offX = pParent->clientRect.width/2;
	.line	202
	ldy	#$1c
	lda	[<L74+pParent_1],Y
	ldx	#<$2
	xref	~~~div
	jsl	~~~div
	sta	<L74+offX_1
;			offY = pParent->clientRect.height/2;
	.line	203
	ldy	#$1e
	lda	[<L74+pParent_1],Y
	ldx	#<$2
	xref	~~~div
	jsl	~~~div
	sta	<L74+offY_1
;		}
	.line	204
;		else
	brl	L10013
L10012:
;		{
	.line	206
;			offX = k_user_getSystemMetric(SM_CXFULLSCREEN)/2;
	.line	207
	pea	#<$10
	jsl	~~k_user_getSystemMetric
	sta	<R0
	lda	<R0
	ldx	#<$2
	xref	~~~div
	jsl	~~~div
	sta	<L74+offX_1
;			offY = k_user_getSystemMetric(SM_CYFULLSCREEN)/2;
	.line	208
	pea	#<$11
	jsl	~~k_user_getSystemMetric
	sta	<R0
	lda	<R0
	ldx	#<$2
	xref	~~~div
	jsl	~~~div
	sta	<L74+offY_1
;
;		}
	.line	210
L10013:
;
;
;		k_user_MoveWindow(hWnd,
	.line	213
;						  offX - pWin->win_width/2,
;						  offY - pWin->win_height/2);
	ldy	#$e
	lda	[<L74+pWin_1],Y
	ldx	#<$2
	xref	~~~div
	jsl	~~~div
	sta	<R0
	sec
	lda	<L74+offY_1
	sbc	<R0
	pha
	ldy	#$c
	lda	[<L74+pWin_1],Y
	ldx	#<$2
	xref	~~~div
	jsl	~~~div
	sta	<R0
	sec
	lda	<L74+offX_1
	sbc	<R0
	pha
	pei	<L73+hWnd_0+2
	pei	<L73+hWnd_0
	jsl	~~k_user_MoveWindow
;
;	}
	.line	217
;
;
;
;}
L10011:
	.line	221
L78:
	lda	<L73+2
	sta	<L73+2+4
	lda	<L73+1
	sta	<L73+1+4
	pld
	tsc
	clc
	adc	#L73+4
	tcs
	rtl
	.endblock	221
L73	equ	16
L74	equ	5
	ends
	efunc
	.endfunc	221,5,16
	.line	221
;
;void k_user_CenterBottomWindow(HWND hWnd)
;{
	.line	223
	.line	224
	WINMAN
	xdef	~~k_user_CenterBottomWindow
	func
	.function	224
~~k_user_CenterBottomWindow:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L79
	tcs
	phd
	tcd
hWnd_0	set	4
	.block	224
;	/*
;	PWINDOW pWin = NULL;
;
;	if(hWnd!=NULL)
;	{
;		pWin = k_getWindowFromHandle(hWnd);
;
;		k_user_MoveWindow(hWnd,
;				          k_user_getSystemMetric(SM_CXFULLSCREEN)/2 - pWin->win_width/2,
;						  k_user_getSystemMetric(SM_CYFULLSCREEN) - (pWin->win_height + 4));
;	}
;	*/
;
;	PWINDOW pWin 	= NULL;
;	PWINDOW pParent = NULL;
;	int bottomBorder;
;	int offX;
;	int offY;
;	if(hWnd!=NULL)
pWin_1	set	0
pParent_1	set	4
bottomBorder_1	set	8
offX_1	set	10
offY_1	set	12
	.sym	pWin,0,138,1,32,27
	.sym	pParent,4,138,1,32,27
	.sym	bottomBorder,8,5,1,16
	.sym	offX,10,5,1,16
	.sym	offY,12,5,1,16
	.sym	hWnd,4,129,6,32
	stz	<L80+pWin_1
	stz	<L80+pWin_1+2
	stz	<L80+pParent_1
	stz	<L80+pParent_1+2
	.line	243
;	{
	lda	<L79+hWnd_0
	ora	<L79+hWnd_0+2
	bne	L82
	brl	L10014
L82:
	.line	244
;		pWin 	= k_getWindowFromHandle(hWnd);
	.line	245
	pei	<L79+hWnd_0+2
	pei	<L79+hWnd_0
	jsl	~~k_getWindowFromHandle
	sta	<L80+pWin_1
	stx	<L80+pWin_1+2
;
;		if(pWin->pParentWindow)
	.line	247
;		{
	ldy	#$130
	lda	[<L80+pWin_1],Y
	ldy	#$132
	ora	[<L80+pWin_1],Y
	bne	L83
	brl	L10015
L83:
	.line	248
;			pParent = k_getWindowFromHandle(pWin->pParentWindow);
	.line	249
	ldy	#$132
	lda	[<L80+pWin_1],Y
	pha
	ldy	#$130
	lda	[<L80+pWin_1],Y
	pha
	jsl	~~k_getWindowFromHandle
	sta	<L80+pParent_1
	stx	<L80+pParent_1+2
;
;			offX = pParent->clientRect.width/2;
	.line	251
	ldy	#$1c
	lda	[<L80+pParent_1],Y
	ldx	#<$2
	xref	~~~div
	jsl	~~~div
	sta	<L80+offX_1
;			offY = pParent->clientRect.height;
	.line	252
	ldy	#$1e
	lda	[<L80+pParent_1],Y
	sta	<L80+offY_1
;		}
	.line	253
;		else
	brl	L10016
L10015:
;		{
	.line	255
;			offX = k_user_getSystemMetric(SM_CXFULLSCREEN)/2;
	.line	256
	pea	#<$10
	jsl	~~k_user_getSystemMetric
	sta	<R0
	lda	<R0
	ldx	#<$2
	xref	~~~div
	jsl	~~~div
	sta	<L80+offX_1
;			offY = k_user_getSystemMetric(SM_CYFULLSCREEN);
	.line	257
	pea	#<$11
	jsl	~~k_user_getSystemMetric
	sta	<L80+offY_1
;
;		}
	.line	259
L10016:
;
;		if(pParent && (pParent->style & FXWS_DLGFRAME))
	.line	261
;			bottomBorder = k_user_getSystemMetric(SM_CYDLGFRAME);
	lda	<L80+pParent_1
	ora	<L80+pParent_1+2
	bne	L84
	brl	L10017
L84:
	ldy	#$4
	lda	[<L80+pParent_1],Y
	and	#^$40000
	bne	L85
	brl	L10017
L85:
	.line	262
	pea	#<$8
	jsl	~~k_user_getSystemMetric
	sta	<L80+bottomBorder_1
;		else
	brl	L10018
L10017:
;			bottomBorder = k_user_getSystemMetric(SM_CYBORDER);
	.line	264
	pea	#<$6
	jsl	~~k_user_getSystemMetric
	sta	<L80+bottomBorder_1
L10018:
;
;		k_debug_integer("k_user_CenterBottomWindow:bottomBorder:",bottomBorder);
	.line	266
	pei	<L80+bottomBorder_1
	pea	#^L72
	pea	#<L72
	jsl	~~k_debug_integer
;
;		k_user_MoveWindow(hWnd,
	.line	268
;						  offX - pWin->win_width/2,
;						  offY - (pWin->win_height + bottomBorder + 2));
	clc
	ldy	#$e
	lda	[<L80+pWin_1],Y
	adc	<L80+bottomBorder_1
	sta	<R0
	clc
	lda	#$2
	adc	<R0
	sta	<R1
	sec
	lda	<L80+offY_1
	sbc	<R1
	pha
	ldy	#$c
	lda	[<L80+pWin_1],Y
	ldx	#<$2
	xref	~~~div
	jsl	~~~div
	sta	<R0
	sec
	lda	<L80+offX_1
	sbc	<R0
	pha
	pei	<L79+hWnd_0+2
	pei	<L79+hWnd_0
	jsl	~~k_user_MoveWindow
;
;	}
	.line	272
;}
L10014:
	.line	273
L86:
	lda	<L79+2
	sta	<L79+2+4
	lda	<L79+1
	sta	<L79+1+4
	pld
	tsc
	clc
	adc	#L79+4
	tcs
	rtl
	.endblock	273
L79	equ	22
L80	equ	9
	ends
	efunc
	.endfunc	273,9,22
	.line	273
	data
L72:
	db	$6B,$5F,$75,$73,$65,$72,$5F,$43,$65,$6E,$74,$65,$72,$42,$6F
	db	$74,$74,$6F,$6D,$57,$69,$6E,$64,$6F,$77,$3A,$62,$6F,$74,$74
	db	$6F,$6D,$42,$6F,$72,$64,$65,$72,$3A,$00
	ends
;
;
;void k_user_MoveWindow(HWND hWnd, int x,int y)
;{
	.line	276
	.line	277
	WINMAN
	xdef	~~k_user_MoveWindow
	func
	.function	277
~~k_user_MoveWindow:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L88
	tcs
	phd
	tcd
hWnd_0	set	4
x_0	set	8
y_0	set	10
	.block	277
;	PWINDOW pWin 	= NULL;
;	PWINDOW pParent = NULL;
;
;	if(hWnd!=NULL)
pWin_1	set	0
pParent_1	set	4
	.sym	pWin,0,138,1,32,27
	.sym	pParent,4,138,1,32,27
	.sym	hWnd,4,129,6,32
	.sym	x,8,5,6,16
	.sym	y,10,5,6,16
	stz	<L89+pWin_1
	stz	<L89+pWin_1+2
	stz	<L89+pParent_1
	stz	<L89+pParent_1+2
	.line	281
;	{
	lda	<L88+hWnd_0
	ora	<L88+hWnd_0+2
	bne	L91
	brl	L10019
L91:
	.line	282
;		pWin 	= k_getWindowFromHandle(hWnd);
	.line	283
	pei	<L88+hWnd_0+2
	pei	<L88+hWnd_0
	jsl	~~k_getWindowFromHandle
	sta	<L89+pWin_1
	stx	<L89+pWin_1+2
;		pParent = pWin->pParentWindow;
	.line	284
	ldy	#$130
	lda	[<L89+pWin_1],Y
	sta	<L89+pParent_1
	ldy	#$132
	lda	[<L89+pWin_1],Y
	sta	<L89+pParent_1+2
;
;
;		k_debug_pointer("k_user_MoveWindow:pParent:",pParent);
	.line	287
	pei	<L89+pParent_1+2
	pei	<L89+pParent_1
	pea	#^L87
	pea	#<L87
	jsl	~~k_debug_pointer
;		k_debug_integer("k_user_MoveWindow:pWin->win_x:",pWin->win_x);
	.line	288
	ldy	#$8
	lda	[<L89+pWin_1],Y
	pha
	pea	#^L87+27
	pea	#<L87+27
	jsl	~~k_debug_integer
;		k_debug_integer("k_user_MoveWindow:pWin->win_y:",pWin->win_y);
	.line	289
	ldy	#$a
	lda	[<L89+pWin_1],Y
	pha
	pea	#^L87+58
	pea	#<L87+58
	jsl	~~k_debug_integer
;		k_debug_integer("k_user_MoveWindow:x:",x);
	.line	290
	pei	<L88+x_0
	pea	#^L87+89
	pea	#<L87+89
	jsl	~~k_debug_integer
;		k_debug_integer("k_user_MoveWindow:y:",y);
	.line	291
	pei	<L88+y_0
	pea	#^L87+110
	pea	#<L87+110
	jsl	~~k_debug_integer
;
;		k_debug_rect(pWin->win_title,&pWin->clientRect);
	.line	293
	clc
	lda	#$18
	adc	<L89+pWin_1
	sta	<R0
	lda	#$0
	adc	<L89+pWin_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	#$d4
	adc	<L89+pWin_1
	sta	<R1
	lda	#$0
	adc	<L89+pWin_1+2
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_debug_rect
;
;		if(pParent && (k_getHandleFromWindow(pParent)!=k_user_getDesktopWindow()))
	.line	295
;		{
	lda	<L89+pParent_1
	ora	<L89+pParent_1+2
	bne	L92
	brl	L10020
L92:
	jsl	~~k_user_getDesktopWindow
	sta	<R0
	stx	<R0+2
	pei	<L89+pParent_1+2
	pei	<L89+pParent_1
	jsl	~~k_getHandleFromWindow
	sta	<R1
	stx	<R1+2
	lda	<R1
	cmp	<R0
	bne	L93
	lda	<R1+2
	cmp	<R0+2
L93:
	bne	L94
	brl	L10020
L94:
	.line	296
;			k_vdma_fill_rect_ex(pWin->win_x,pWin->win_y,pWin->win_width,pWin->win_height,0,0x01);
	.line	297
	pea	#<$1
	pea	#<$0
	ldy	#$e
	lda	[<L89+pWin_1],Y
	pha
	ldy	#$c
	lda	[<L89+pWin_1],Y
	pha
	ldy	#$0
	phy
	ldy	#$a
	lda	[<L89+pWin_1],Y
	ply
	rol	A
	ror	A
	bpl	L95
	dey
L95:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	phy
	ldy	#$8
	lda	[<L89+pWin_1],Y
	ply
	rol	A
	ror	A
	bpl	L96
	dey
L96:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect_ex
;
;			pWin->win_x = pParent->clientRect.x + x;
	.line	299
	clc
	ldy	#$18
	lda	[<L89+pParent_1],Y
	adc	<L88+x_0
	ldy	#$8
	sta	[<L89+pWin_1],Y
;			pWin->win_y = pParent->clientRect.y + y;
	.line	300
	clc
	ldy	#$1a
	lda	[<L89+pParent_1],Y
	adc	<L88+y_0
	ldy	#$a
	sta	[<L89+pWin_1],Y
;			pWin->clientRect.x 		= pWin->clientRect.x + x;
	.line	301
	clc
	ldy	#$18
	lda	[<L89+pWin_1],Y
	adc	<L88+x_0
	ldy	#$18
	sta	[<L89+pWin_1],Y
;			pWin->clientRect.y 		= pWin->clientRect.y + y;
	.line	302
	clc
	ldy	#$1a
	lda	[<L89+pWin_1],Y
	adc	<L88+y_0
	ldy	#$1a
	sta	[<L89+pWin_1],Y
;
;		}
	.line	304
;		else
	brl	L10021
L10020:
;		{
	.line	306
;			k_vdma_fill_rect_ex(pWin->win_x,pWin->win_y,pWin->win_width,pWin->win_height,0,0x01);
	.line	307
	pea	#<$1
	pea	#<$0
	ldy	#$e
	lda	[<L89+pWin_1],Y
	pha
	ldy	#$c
	lda	[<L89+pWin_1],Y
	pha
	ldy	#$0
	phy
	ldy	#$a
	lda	[<L89+pWin_1],Y
	ply
	rol	A
	ror	A
	bpl	L97
	dey
L97:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	phy
	ldy	#$8
	lda	[<L89+pWin_1],Y
	ply
	rol	A
	ror	A
	bpl	L98
	dey
L98:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect_ex
;
;			pWin->win_x = x;
	.line	309
	lda	<L88+x_0
	ldy	#$8
	sta	[<L89+pWin_1],Y
;			pWin->win_y = y;
	.line	310
	lda	<L88+y_0
	ldy	#$a
	sta	[<L89+pWin_1],Y
;			pWin->clientRect.x 	= pWin->win_x;
	.line	311
	ldy	#$8
	lda	[<L89+pWin_1],Y
	ldy	#$18
	sta	[<L89+pWin_1],Y
;			pWin->clientRect.y 	= pWin->win_y;
	.line	312
	ldy	#$a
	lda	[<L89+pWin_1],Y
	ldy	#$1a
	sta	[<L89+pWin_1],Y
;		}
	.line	313
L10021:
;
;		((PCLICKABLE)pWin->clickable)->area.x 		= pWin->win_x;
	.line	315
	ldy	#$d0
	lda	[<L89+pWin_1],Y
	sta	<R0
	ldy	#$d2
	lda	[<L89+pWin_1],Y
	sta	<R0+2
	ldy	#$8
	lda	[<L89+pWin_1],Y
	sta	[<R0]
;		((PCLICKABLE)pWin->clickable)->area.y 		= pWin->win_y;
	.line	316
	ldy	#$d0
	lda	[<L89+pWin_1],Y
	sta	<R0
	ldy	#$d2
	lda	[<L89+pWin_1],Y
	sta	<R0+2
	ldy	#$a
	lda	[<L89+pWin_1],Y
	ldy	#$2
	sta	[<R0],Y
;
;		k_send_window_message(hWnd,FX_DRAW_NONCLIENT,NULL,0);
	.line	318
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$fb01
	pei	<L88+hWnd_0+2
	pei	<L88+hWnd_0
	jsl	~~k_send_window_message
;		k_send_window_message(hWnd,FX_DRAW_WINDOW,NULL,0);
	.line	319
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$fb00
	pei	<L88+hWnd_0+2
	pei	<L88+hWnd_0
	jsl	~~k_send_window_message
;	}
	.line	320
;
;}
L10019:
	.line	322
L99:
	lda	<L88+2
	sta	<L88+2+8
	lda	<L88+1
	sta	<L88+1+8
	pld
	tsc
	clc
	adc	#L88+8
	tcs
	rtl
	.endblock	322
L88	equ	16
L89	equ	9
	ends
	efunc
	.endfunc	322,9,16
	.line	322
	data
L87:
	db	$6B,$5F,$75,$73,$65,$72,$5F,$4D,$6F,$76,$65,$57,$69,$6E,$64
	db	$6F,$77,$3A,$70,$50,$61,$72,$65,$6E,$74,$3A,$00,$6B,$5F,$75
	db	$73,$65,$72,$5F,$4D,$6F,$76,$65,$57,$69,$6E,$64,$6F,$77,$3A
	db	$70,$57,$69,$6E,$2D,$3E,$77,$69,$6E,$5F,$78,$3A,$00,$6B,$5F
	db	$75,$73,$65,$72,$5F,$4D,$6F,$76,$65,$57,$69,$6E,$64,$6F,$77
	db	$3A,$70,$57,$69,$6E,$2D,$3E,$77,$69,$6E,$5F,$79,$3A,$00,$6B
	db	$5F,$75,$73,$65,$72,$5F,$4D,$6F,$76,$65,$57,$69,$6E,$64,$6F
	db	$77,$3A,$78,$3A,$00,$6B,$5F,$75,$73,$65,$72,$5F,$4D,$6F,$76
	db	$65,$57,$69,$6E,$64,$6F,$77,$3A,$79,$3A,$00
	ends
;
;void k_user_MoveWindow_ex(HWND hWnd, int x,int y)
;{
	.line	324
	.line	325
	WINMAN
	xdef	~~k_user_MoveWindow_ex
	func
	.function	325
~~k_user_MoveWindow_ex:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L101
	tcs
	phd
	tcd
hWnd_0	set	4
x_0	set	8
y_0	set	10
	.block	325
;	PWINDOW pWin 	= NULL;
;	PWINDOW pParent = NULL;
;
;	if(hWnd!=NULL)
pWin_1	set	0
pParent_1	set	4
	.sym	pWin,0,138,1,32,27
	.sym	pParent,4,138,1,32,27
	.sym	hWnd,4,129,6,32
	.sym	x,8,5,6,16
	.sym	y,10,5,6,16
	stz	<L102+pWin_1
	stz	<L102+pWin_1+2
	stz	<L102+pParent_1
	stz	<L102+pParent_1+2
	.line	329
;	{
	lda	<L101+hWnd_0
	ora	<L101+hWnd_0+2
	bne	L104
	brl	L10022
L104:
	.line	330
;		pWin 	= k_getWindowFromHandle(hWnd);
	.line	331
	pei	<L101+hWnd_0+2
	pei	<L101+hWnd_0
	jsl	~~k_getWindowFromHandle
	sta	<L102+pWin_1
	stx	<L102+pWin_1+2
;		pParent = pWin->pParentWindow;
	.line	332
	ldy	#$130
	lda	[<L102+pWin_1],Y
	sta	<L102+pParent_1
	ldy	#$132
	lda	[<L102+pWin_1],Y
	sta	<L102+pParent_1+2
;
;		k_debug_pointer("k_user_MoveWindow_ex:pParent:",pParent);
	.line	334
	pei	<L102+pParent_1+2
	pei	<L102+pParent_1
	pea	#^L100
	pea	#<L100
	jsl	~~k_debug_pointer
;		k_debug_integer("k_user_MoveWindow_ex:pWin->win_x:",pWin->win_x);
	.line	335
	ldy	#$8
	lda	[<L102+pWin_1],Y
	pha
	pea	#^L100+30
	pea	#<L100+30
	jsl	~~k_debug_integer
;		k_debug_integer("k_user_MoveWindow_ex:pWin->win_y:",pWin->win_y);
	.line	336
	ldy	#$a
	lda	[<L102+pWin_1],Y
	pha
	pea	#^L100+64
	pea	#<L100+64
	jsl	~~k_debug_integer
;		k_debug_integer("k_user_MoveWindow_ex:x:",x);
	.line	337
	pei	<L101+x_0
	pea	#^L100+98
	pea	#<L100+98
	jsl	~~k_debug_integer
;		k_debug_integer("k_user_MoveWindow_ex:y:",y);
	.line	338
	pei	<L101+y_0
	pea	#^L100+122
	pea	#<L100+122
	jsl	~~k_debug_integer
;
;		k_debug_rect(pWin->win_title,&pWin->clientRect);
	.line	340
	clc
	lda	#$18
	adc	<L102+pWin_1
	sta	<R0
	lda	#$0
	adc	<L102+pWin_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	#$d4
	adc	<L102+pWin_1
	sta	<R1
	lda	#$0
	adc	<L102+pWin_1+2
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_debug_rect
;
;		if(pParent && (k_getHandleFromWindow(pParent)!=k_user_getDesktopWindow()))
	.line	342
;		{
	lda	<L102+pParent_1
	ora	<L102+pParent_1+2
	bne	L105
	brl	L10023
L105:
	jsl	~~k_user_getDesktopWindow
	sta	<R0
	stx	<R0+2
	pei	<L102+pParent_1+2
	pei	<L102+pParent_1
	jsl	~~k_getHandleFromWindow
	sta	<R1
	stx	<R1+2
	lda	<R1
	cmp	<R0
	bne	L106
	lda	<R1+2
	cmp	<R0+2
L106:
	bne	L107
	brl	L10023
L107:
	.line	343
;			k_vdma_fill_rect_ex(pWin->win_x,pWin->win_y,pWin->win_width,pWin->win_height,0,0x01);
	.line	344
	pea	#<$1
	pea	#<$0
	ldy	#$e
	lda	[<L102+pWin_1],Y
	pha
	ldy	#$c
	lda	[<L102+pWin_1],Y
	pha
	ldy	#$0
	phy
	ldy	#$a
	lda	[<L102+pWin_1],Y
	ply
	rol	A
	ror	A
	bpl	L108
	dey
L108:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	phy
	ldy	#$8
	lda	[<L102+pWin_1],Y
	ply
	rol	A
	ror	A
	bpl	L109
	dey
L109:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect_ex
;
;			pWin->win_x = pParent->clientRect.x + x;
	.line	346
	clc
	ldy	#$18
	lda	[<L102+pParent_1],Y
	adc	<L101+x_0
	ldy	#$8
	sta	[<L102+pWin_1],Y
;			pWin->win_y = pParent->clientRect.y + y;
	.line	347
	clc
	ldy	#$1a
	lda	[<L102+pParent_1],Y
	adc	<L101+y_0
	ldy	#$a
	sta	[<L102+pWin_1],Y
;			pWin->clientRect.x 		= pWin->clientRect.x + x;
	.line	348
	clc
	ldy	#$18
	lda	[<L102+pWin_1],Y
	adc	<L101+x_0
	ldy	#$18
	sta	[<L102+pWin_1],Y
;			pWin->clientRect.y 		= pWin->clientRect.y + y;
	.line	349
	clc
	ldy	#$1a
	lda	[<L102+pWin_1],Y
	adc	<L101+y_0
	ldy	#$1a
	sta	[<L102+pWin_1],Y
;
;		}
	.line	351
;		else
	brl	L10024
L10023:
;		{
	.line	353
;
;			k_vdma_fill_rect_ex(pWin->win_x,pWin->win_y,pWin->win_width,pWin->win_height,FILLCOLOR_TRANSPARENT,BITMAP_FRONT);
	.line	355
	pea	#<$0
	pea	#<$0
	ldy	#$e
	lda	[<L102+pWin_1],Y
	pha
	ldy	#$c
	lda	[<L102+pWin_1],Y
	pha
	ldy	#$0
	phy
	ldy	#$a
	lda	[<L102+pWin_1],Y
	ply
	rol	A
	ror	A
	bpl	L110
	dey
L110:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	phy
	ldy	#$8
	lda	[<L102+pWin_1],Y
	ply
	rol	A
	ror	A
	bpl	L111
	dey
L111:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect_ex
;			k_vdma_fill_rect_ex(pWin->win_x,pWin->win_y,pWin->win_width,pWin->win_height,k_getUIBackgroundColor(),BITMAP_BACK);
	.line	356
	pea	#<$10
	jsl	~~k_getUIBackgroundColor
	pha
	ldy	#$e
	lda	[<L102+pWin_1],Y
	pha
	ldy	#$c
	lda	[<L102+pWin_1],Y
	pha
	ldy	#$0
	phy
	ldy	#$a
	lda	[<L102+pWin_1],Y
	ply
	rol	A
	ror	A
	bpl	L112
	dey
L112:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	phy
	ldy	#$8
	lda	[<L102+pWin_1],Y
	ply
	rol	A
	ror	A
	bpl	L113
	dey
L113:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect_ex
;
;			pWin->win_x = x;
	.line	358
	lda	<L101+x_0
	ldy	#$8
	sta	[<L102+pWin_1],Y
;			pWin->win_y = y;
	.line	359
	lda	<L101+y_0
	ldy	#$a
	sta	[<L102+pWin_1],Y
;			pWin->clientRect.x 	= pWin->win_x;
	.line	360
	ldy	#$8
	lda	[<L102+pWin_1],Y
	ldy	#$18
	sta	[<L102+pWin_1],Y
;			pWin->clientRect.y 	= pWin->win_y;
	.line	361
	ldy	#$a
	lda	[<L102+pWin_1],Y
	ldy	#$1a
	sta	[<L102+pWin_1],Y
;
;		}
	.line	363
L10024:
;
;		((PCLICKABLE)pWin->clickable)->area.x 		= pWin->win_x;
	.line	365
	ldy	#$d0
	lda	[<L102+pWin_1],Y
	sta	<R0
	ldy	#$d2
	lda	[<L102+pWin_1],Y
	sta	<R0+2
	ldy	#$8
	lda	[<L102+pWin_1],Y
	sta	[<R0]
;		((PCLICKABLE)pWin->clickable)->area.y 		= pWin->win_y;
	.line	366
	ldy	#$d0
	lda	[<L102+pWin_1],Y
	sta	<R0
	ldy	#$d2
	lda	[<L102+pWin_1],Y
	sta	<R0+2
	ldy	#$a
	lda	[<L102+pWin_1],Y
	ldy	#$2
	sta	[<R0],Y
;
;		k_send_window_message(hWnd,FX_DRAW_NONCLIENT,NULL,0);
	.line	368
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$fb01
	pei	<L101+hWnd_0+2
	pei	<L101+hWnd_0
	jsl	~~k_send_window_message
;		k_send_window_message(hWnd,FX_DRAW_WINDOW,NULL,0);
	.line	369
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$fb00
	pei	<L101+hWnd_0+2
	pei	<L101+hWnd_0
	jsl	~~k_send_window_message
;	}
	.line	370
;
;}
L10022:
	.line	372
L114:
	lda	<L101+2
	sta	<L101+2+8
	lda	<L101+1
	sta	<L101+1+8
	pld
	tsc
	clc
	adc	#L101+8
	tcs
	rtl
	.endblock	372
L101	equ	16
L102	equ	9
	ends
	efunc
	.endfunc	372,9,16
	.line	372
	data
L100:
	db	$6B,$5F,$75,$73,$65,$72,$5F,$4D,$6F,$76,$65,$57,$69,$6E,$64
	db	$6F,$77,$5F,$65,$78,$3A,$70,$50,$61,$72,$65,$6E,$74,$3A,$00
	db	$6B,$5F,$75,$73,$65,$72,$5F,$4D,$6F,$76,$65,$57,$69,$6E,$64
	db	$6F,$77,$5F,$65,$78,$3A,$70,$57,$69,$6E,$2D,$3E,$77,$69,$6E
	db	$5F,$78,$3A,$00,$6B,$5F,$75,$73,$65,$72,$5F,$4D,$6F,$76,$65
	db	$57,$69,$6E,$64,$6F,$77,$5F,$65,$78,$3A,$70,$57,$69,$6E,$2D
	db	$3E,$77,$69,$6E,$5F,$79,$3A,$00,$6B,$5F,$75,$73,$65,$72,$5F
	db	$4D,$6F,$76,$65,$57,$69,$6E,$64,$6F,$77,$5F,$65,$78,$3A,$78
	db	$3A,$00,$6B,$5F,$75,$73,$65,$72,$5F,$4D,$6F,$76,$65,$57,$69
	db	$6E,$64,$6F,$77,$5F,$65,$78,$3A,$79,$3A,$00
	ends
;
;
;PFXNODELIST k_getWindowManagerList(void)
;{
	.line	375
	.line	376
	WINMAN
	xdef	~~k_getWindowManagerList
	func
	.function	376
~~k_getWindowManagerList:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L116
	tcs
	phd
	tcd
	.block	376
;	return _k_windowManager_WindowObjectList;
	.line	377
	ldx	|~~_k_windowManager_WindowObjectList+2
	lda	|~~_k_windowManager_WindowObjectList
L119:
	tay
	pld
	tsc
	clc
	adc	#L116
	tcs
	tya
	rtl
;}
	.line	378
	.endblock	378
L116	equ	0
L117	equ	1
	ends
	efunc
	.endfunc	378,1,0
	.line	378
;
;PFXNODELIST	k_getWindowManagerClassList(void)
;{
	.line	380
	.line	381
	WINMAN
	xdef	~~k_getWindowManagerClassList
	func
	.function	381
~~k_getWindowManagerClassList:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L120
	tcs
	phd
	tcd
	.block	381
;	return _k_windowManager_WindowClassList;
	.line	382
	ldx	|~~_k_windowManager_WindowClassList+2
	lda	|~~_k_windowManager_WindowClassList
L123:
	tay
	pld
	tsc
	clc
	adc	#L120
	tcs
	tya
	rtl
;}
	.line	383
	.endblock	383
L120	equ	0
L121	equ	1
	ends
	efunc
	.endfunc	383,1,0
	.line	383
;
;PFXNODELIST	k_getWindowManagerHitList(void)
;{
	.line	385
	.line	386
	WINMAN
	xdef	~~k_getWindowManagerHitList
	func
	.function	386
~~k_getWindowManagerHitList:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L124
	tcs
	phd
	tcd
	.block	386
;	return _k_windowManager_ObjectHitList;
	.line	387
	ldx	|~~_k_windowManager_ObjectHitList+2
	lda	|~~_k_windowManager_ObjectHitList
L127:
	tay
	pld
	tsc
	clc
	adc	#L124
	tcs
	tya
	rtl
;}
	.line	388
	.endblock	388
L124	equ	0
L125	equ	1
	ends
	efunc
	.endfunc	388,1,0
	.line	388
;
;PFXNODE k_getWindowList(void)
;{
	.line	390
	.line	391
	WINMAN
	xdef	~~k_getWindowList
	func
	.function	391
~~k_getWindowList:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L128
	tcs
	phd
	tcd
	.block	391
;	return k_nodelist_getfirstnode(_k_windowManager_WindowObjectList);
	.line	392
	lda	|~~_k_windowManager_WindowObjectList+2
	pha
	lda	|~~_k_windowManager_WindowObjectList
	pha
	jsl	~~k_nodelist_getfirstnode
	sta	<R0
	stx	<R0+2
	ldx	<R0+2
	lda	<R0
L131:
	tay
	pld
	tsc
	clc
	adc	#L128
	tcs
	tya
	rtl
;}
	.line	393
	.endblock	393
L128	equ	4
L129	equ	5
	ends
	efunc
	.endfunc	393,5,4
	.line	393
;
;PFXNODE	k_getWindowClassList(void)
;{
	.line	395
	.line	396
	WINMAN
	xdef	~~k_getWindowClassList
	func
	.function	396
~~k_getWindowClassList:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L132
	tcs
	phd
	tcd
	.block	396
;	return  k_nodelist_getfirstnode(_k_windowManager_WindowClassList);
	.line	397
	lda	|~~_k_windowManager_WindowClassList+2
	pha
	lda	|~~_k_windowManager_WindowClassList
	pha
	jsl	~~k_nodelist_getfirstnode
	sta	<R0
	stx	<R0+2
	ldx	<R0+2
	lda	<R0
L135:
	tay
	pld
	tsc
	clc
	adc	#L132
	tcs
	tya
	rtl
;}
	.line	398
	.endblock	398
L132	equ	4
L133	equ	5
	ends
	efunc
	.endfunc	398,5,4
	.line	398
;
;PFXNODE	k_getWindowHitList(void)
;{
	.line	400
	.line	401
	WINMAN
	xdef	~~k_getWindowHitList
	func
	.function	401
~~k_getWindowHitList:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L136
	tcs
	phd
	tcd
	.block	401
;	return  k_nodelist_getfirstnode(_k_windowManager_ObjectHitList);
	.line	402
	lda	|~~_k_windowManager_ObjectHitList+2
	pha
	lda	|~~_k_windowManager_ObjectHitList
	pha
	jsl	~~k_nodelist_getfirstnode
	sta	<R0
	stx	<R0+2
	ldx	<R0+2
	lda	<R0
L139:
	tay
	pld
	tsc
	clc
	adc	#L136
	tcs
	tya
	rtl
;}
	.line	403
	.endblock	403
L136	equ	4
L137	equ	5
	ends
	efunc
	.endfunc	403,5,4
	.line	403
;
;
;HWND k_getHandleFromWindow(PWINDOW pWin)
;{
	.line	406
	.line	407
	WINMAN
	xdef	~~k_getHandleFromWindow
	func
	.function	407
~~k_getHandleFromWindow:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L140
	tcs
	phd
	tcd
pWin_0	set	4
	.block	407
;	return (HWND)pWin;
	.sym	pWin,4,138,6,32,27
	.line	408
	ldx	<L140+pWin_0+2
	lda	<L140+pWin_0
L143:
	tay
	lda	<L140+2
	sta	<L140+2+4
	lda	<L140+1
	sta	<L140+1+4
	pld
	tsc
	clc
	adc	#L140+4
	tcs
	tya
	rtl
;}
	.line	409
	.endblock	409
L140	equ	0
L141	equ	1
	ends
	efunc
	.endfunc	409,1,0
	.line	409
;
;
;PWINDOW k_getWindowFromHandle(HWND hWnd)
;{
	.line	412
	.line	413
	WINMAN
	xdef	~~k_getWindowFromHandle
	func
	.function	413
~~k_getWindowFromHandle:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L144
	tcs
	phd
	tcd
hWnd_0	set	4
	.block	413
;	return (PWINDOW)hWnd;
	.sym	hWnd,4,129,6,32
	.line	414
	ldx	<L144+hWnd_0+2
	lda	<L144+hWnd_0
L147:
	tay
	lda	<L144+2
	sta	<L144+2+4
	lda	<L144+1
	sta	<L144+1+4
	pld
	tsc
	clc
	adc	#L144+4
	tcs
	tya
	rtl
;}
	.line	415
	.endblock	415
L144	equ	0
L145	equ	1
	ends
	efunc
	.endfunc	415,1,0
	.line	415
;
;UINT k_getWindowRect(HWND hWnd,PRECT prect)
;{
	.line	417
	.line	418
	WINMAN
	xdef	~~k_getWindowRect
	func
	.function	418
~~k_getWindowRect:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L148
	tcs
	phd
	tcd
hWnd_0	set	4
prect_0	set	8
	.block	418
;	prect->x      = ((PWINDOW)hWnd)->win_x;
	.sym	hWnd,4,129,6,32
	.sym	prect,8,138,6,32,22
	.line	419
	ldy	#$8
	lda	[<L148+hWnd_0],Y
	sta	[<L148+prect_0]
;	prect->y      = ((PWINDOW)hWnd)->win_y;
	.line	420
	ldy	#$a
	lda	[<L148+hWnd_0],Y
	ldy	#$2
	sta	[<L148+prect_0],Y
;	prect->height = ((PWINDOW)hWnd)->win_height;
	.line	421
	ldy	#$e
	lda	[<L148+hWnd_0],Y
	ldy	#$6
	sta	[<L148+prect_0],Y
;	prect->width  = ((PWINDOW)hWnd)->win_width;
	.line	422
	ldy	#$c
	lda	[<L148+hWnd_0],Y
	ldy	#$4
	sta	[<L148+prect_0],Y
;
;	return sizeof(RECT);
	.line	424
	lda	#$8
L151:
	tay
	lda	<L148+2
	sta	<L148+2+8
	lda	<L148+1
	sta	<L148+1+8
	pld
	tsc
	clc
	adc	#L148+8
	tcs
	tya
	rtl
;}
	.line	425
	.endblock	425
L148	equ	0
L149	equ	1
	ends
	efunc
	.endfunc	425,1,0
	.line	425
;
;HPOINTER k_user_RegisterMousePointerClass(LPCSTR pCursorName,LPCSTR pCursorData)
;{
	.line	427
	.line	428
	WINMAN
	xdef	~~k_user_RegisterMousePointerClass
	func
	.function	428
~~k_user_RegisterMousePointerClass:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L152
	tcs
	phd
	tcd
pCursorName_0	set	4
pCursorData_0	set	8
	.block	428
;	k_nodelist_addtolist(_k_windowManager_CursorList,NL_TYPE_WINDOW_CURSOR,pCursorName,(LPVOID)pCursorData);
	.sym	pCursorName,4,142,6,32
	.sym	pCursorData,8,142,6,32
	.line	429
	pei	<L152+pCursorData_0+2
	pei	<L152+pCursorData_0
	pei	<L152+pCursorName_0+2
	pei	<L152+pCursorName_0
	pea	#<$a
	lda	|~~_k_windowManager_CursorList+2
	pha
	lda	|~~_k_windowManager_CursorList
	pha
	jsl	~~k_nodelist_addtolist
;
;	k_debug_pointer("k_user_MousePointerClass:data:", (LPVOID)pCursorData);
	.line	431
	pei	<L152+pCursorData_0+2
	pei	<L152+pCursorData_0
	pea	#^L115
	pea	#<L115
	jsl	~~k_debug_pointer
;
;	return (HPOINTER)pCursorData;
	.line	433
	ldx	<L152+pCursorData_0+2
	lda	<L152+pCursorData_0
L155:
	tay
	lda	<L152+2
	sta	<L152+2+8
	lda	<L152+1
	sta	<L152+1+8
	pld
	tsc
	clc
	adc	#L152+8
	tcs
	tya
	rtl
;}
	.line	434
	.endblock	434
L152	equ	0
L153	equ	1
	ends
	efunc
	.endfunc	434,1,0
	.line	434
	data
L115:
	db	$6B,$5F,$75,$73,$65,$72,$5F,$4D,$6F,$75,$73,$65,$50,$6F,$69
	db	$6E,$74,$65,$72,$43,$6C,$61,$73,$73,$3A,$64,$61,$74,$61,$3A
	db	$00
	ends
;
;HFONT k_user_RegisterFontClass(LPCSTR pFontName,LPCSTR pFontData)
;{
	.line	436
	.line	437
	WINMAN
	xdef	~~k_user_RegisterFontClass
	func
	.function	437
~~k_user_RegisterFontClass:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L157
	tcs
	phd
	tcd
pFontName_0	set	4
pFontData_0	set	8
	.block	437
;	k_nodelist_addtolist(_k_windowManager_FontList,NL_TYPE_WINDOW_FONT,pFontName,(LPVOID)pFontData);
	.sym	pFontName,4,142,6,32
	.sym	pFontData,8,142,6,32
	.line	438
	pei	<L157+pFontData_0+2
	pei	<L157+pFontData_0
	pei	<L157+pFontName_0+2
	pei	<L157+pFontName_0
	pea	#<$6
	lda	|~~_k_windowManager_FontList+2
	pha
	lda	|~~_k_windowManager_FontList
	pha
	jsl	~~k_nodelist_addtolist
;
;	//k_debug_pointer("k_user_RegisterFontClass:data:", (LPVOID)pFontData);
;	//k_debug_integer("k_user_RegisterFontClass:width:", pFontData[0]);
;	//k_debug_integer("k_user_RegisterFontClass:height:", pFontData[1]);
;
;
;	return (HFONT)pFontData;
	.line	445
	ldx	<L157+pFontData_0+2
	lda	<L157+pFontData_0
L160:
	tay
	lda	<L157+2
	sta	<L157+2+8
	lda	<L157+1
	sta	<L157+1+8
	pld
	tsc
	clc
	adc	#L157+8
	tcs
	tya
	rtl
;}
	.line	446
	.endblock	446
L157	equ	0
L158	equ	1
	ends
	efunc
	.endfunc	446,1,0
	.line	446
;
;HFONT k_user_getFontClass(LPCSTR pFontName)
;{
	.line	448
	.line	449
	WINMAN
	xdef	~~k_user_getFontClass
	func
	.function	449
~~k_user_getFontClass:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L161
	tcs
	phd
	tcd
pFontName_0	set	4
	.block	449
;	PFXNODE found = NULL;
;	HFONT hFont = NULL;
;
;	//k_debug_strings("k_user_getFontClass:name:", (LPSTR)pFontName);
;
;	found = k_nodelist_searchByName(_k_windowManager_FontList,pFontName);
found_1	set	0
hFont_1	set	4
	.sym	found,0,138,1,32,2
	.sym	hFont,4,129,1,32
	.sym	pFontName,4,142,6,32
	stz	<L162+found_1
	stz	<L162+found_1+2
	stz	<L162+hFont_1
	stz	<L162+hFont_1+2
	.line	455
	pei	<L161+pFontName_0+2
	pei	<L161+pFontName_0
	lda	|~~_k_windowManager_FontList+2
	pha
	lda	|~~_k_windowManager_FontList
	pha
	jsl	~~k_nodelist_searchByName
	sta	<L162+found_1
	stx	<L162+found_1+2
;	if(found && found->data)
	.line	456
;	{
	lda	<L162+found_1
	ora	<L162+found_1+2
	bne	L164
	brl	L10025
L164:
	ldy	#$2
	lda	[<L162+found_1],Y
	ldy	#$4
	ora	[<L162+found_1],Y
	bne	L165
	brl	L10025
L165:
	.line	457
;		//k_debug_strings("k_user_getFontClass:name:", (LPSTR)pFontName);
;
;		hFont = (HFONT)found->data;
	.line	460
	ldy	#$2
	lda	[<L162+found_1],Y
	sta	<L162+hFont_1
	ldy	#$4
	lda	[<L162+found_1],Y
	sta	<L162+hFont_1+2
;
;		//k_debug_pointer("k_user_getFontClass:data:", found->data);
;		//k_debug_integer("k_user_getFontClass:width:", ((LPCSTR)found->data)[0]);
;		//k_debug_integer("k_user_getFontClass:height:", ((LPCSTR)found->data)[1]);
;
;	}
	.line	466
;
;	return hFont;
L10025:
	.line	468
	ldx	<L162+hFont_1+2
	lda	<L162+hFont_1
L166:
	tay
	lda	<L161+2
	sta	<L161+2+4
	lda	<L161+1
	sta	<L161+1+4
	pld
	tsc
	clc
	adc	#L161+4
	tcs
	tya
	rtl
;}
	.line	469
	.endblock	469
L161	equ	8
L162	equ	1
	ends
	efunc
	.endfunc	469,1,8
	.line	469
;
;HPOINTER k_user_getMousePointerClass(LPCSTR pPointerName)
;{
	.line	471
	.line	472
	WINMAN
	xdef	~~k_user_getMousePointerClass
	func
	.function	472
~~k_user_getMousePointerClass:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L167
	tcs
	phd
	tcd
pPointerName_0	set	4
	.block	472
;	PFXNODE found = NULL;
;	HPOINTER hPointer = NULL;
;
;	k_debug_strings("k_user_getMousePointerClass:", (LPSTR)pPointerName);
found_1	set	0
hPointer_1	set	4
	.sym	found,0,138,1,32,2
	.sym	hPointer,4,129,1,32
	.sym	pPointerName,4,142,6,32
	stz	<L168+found_1
	stz	<L168+found_1+2
	stz	<L168+hPointer_1
	stz	<L168+hPointer_1+2
	.line	476
	pei	<L167+pPointerName_0+2
	pei	<L167+pPointerName_0
	pea	#^L156
	pea	#<L156
	jsl	~~k_debug_strings
;
;	found = k_nodelist_searchByName(_k_windowManager_CursorList,pPointerName);
	.line	478
	pei	<L167+pPointerName_0+2
	pei	<L167+pPointerName_0
	lda	|~~_k_windowManager_CursorList+2
	pha
	lda	|~~_k_windowManager_CursorList
	pha
	jsl	~~k_nodelist_searchByName
	sta	<L168+found_1
	stx	<L168+found_1+2
;	if(found && found->data)
	.line	479
;	{
	lda	<L168+found_1
	ora	<L168+found_1+2
	bne	L170
	brl	L10026
L170:
	ldy	#$2
	lda	[<L168+found_1],Y
	ldy	#$4
	ora	[<L168+found_1],Y
	bne	L171
	brl	L10026
L171:
	.line	480
;		//k_debug_strings("k_user_getMousePointerClass:", (LPSTR)pPointerName);
;
;		hPointer = (HPOINTER)found->data;
	.line	483
	ldy	#$2
	lda	[<L168+found_1],Y
	sta	<L168+hPointer_1
	ldy	#$4
	lda	[<L168+found_1],Y
	sta	<L168+hPointer_1+2
;
;		k_debug_pointer("k_user_getMousePointerClass:data:", found->data);
	.line	485
	ldy	#$4
	lda	[<L168+found_1],Y
	pha
	ldy	#$2
	lda	[<L168+found_1],Y
	pha
	pea	#^L156+29
	pea	#<L156+29
	jsl	~~k_debug_pointer
;	}
	.line	486
;
;	return hPointer;
L10026:
	.line	488
	ldx	<L168+hPointer_1+2
	lda	<L168+hPointer_1
L172:
	tay
	lda	<L167+2
	sta	<L167+2+4
	lda	<L167+1
	sta	<L167+1+4
	pld
	tsc
	clc
	adc	#L167+4
	tcs
	tya
	rtl
;}
	.line	489
	.endblock	489
L167	equ	8
L168	equ	1
	ends
	efunc
	.endfunc	489,1,8
	.line	489
	data
L156:
	db	$6B,$5F,$75,$73,$65,$72,$5F,$67,$65,$74,$4D,$6F,$75,$73,$65
	db	$50,$6F,$69,$6E,$74,$65,$72,$43,$6C,$61,$73,$73,$3A,$00,$6B
	db	$5F,$75,$73,$65,$72,$5F,$67,$65,$74,$4D,$6F,$75,$73,$65,$50
	db	$6F,$69,$6E,$74,$65,$72,$43,$6C,$61,$73,$73,$3A,$64,$61,$74
	db	$61,$3A,$00
	ends
;
;HPOINTER k_user_setMousePointer(LPCSTR pPointerName)
;{
	.line	491
	.line	492
	WINMAN
	xdef	~~k_user_setMousePointer
	func
	.function	492
~~k_user_setMousePointer:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L174
	tcs
	phd
	tcd
pPointerName_0	set	4
	.block	492
;	HPOINTER hPointer = NULL;
;
;
;	hPointer =  k_user_getMousePointerClass(pPointerName);
hPointer_1	set	0
	.sym	hPointer,0,129,1,32
	.sym	pPointerName,4,142,6,32
	stz	<L175+hPointer_1
	stz	<L175+hPointer_1+2
	.line	496
	pei	<L174+pPointerName_0+2
	pei	<L174+pPointerName_0
	jsl	~~k_user_getMousePointerClass
	sta	<L175+hPointer_1
	stx	<L175+hPointer_1+2
;	if(hPointer)
	.line	497
;	{
	lda	<L175+hPointer_1
	ora	<L175+hPointer_1+2
	bne	L177
	brl	L10027
L177:
	.line	498
;		k_debug_pointer("k_user_setMousePointer:hPointer:", hPointer);
	.line	499
	pei	<L175+hPointer_1+2
	pei	<L175+hPointer_1
	pea	#^L173
	pea	#<L173
	jsl	~~k_debug_pointer
;		k_gui_set_mousepointer(0,(LPVOID)hPointer);
	.line	500
	pei	<L175+hPointer_1+2
	pei	<L175+hPointer_1
	pea	#<$0
	jsl	~~k_gui_set_mousepointer
;	}
	.line	501
;
;	return hPointer;
L10027:
	.line	503
	ldx	<L175+hPointer_1+2
	lda	<L175+hPointer_1
L178:
	tay
	lda	<L174+2
	sta	<L174+2+4
	lda	<L174+1
	sta	<L174+1+4
	pld
	tsc
	clc
	adc	#L174+4
	tcs
	tya
	rtl
;}
	.line	504
	.endblock	504
L174	equ	4
L175	equ	1
	ends
	efunc
	.endfunc	504,1,4
	.line	504
	data
L173:
	db	$6B,$5F,$75,$73,$65,$72,$5F,$73,$65,$74,$4D,$6F,$75,$73,$65
	db	$50,$6F,$69,$6E,$74,$65,$72,$3A,$68,$50,$6F,$69,$6E,$74,$65
	db	$72,$3A,$00
	ends
;
;
;PWNDCLASS k_user_CreateWindowClass(LPCSTR pClassName,LPCSTR pMenuName,UINT style,HICON icon,HCURSOR cursor,HBRUSH brush,FXWndProc pWndProc)
;{
	.line	507
	.line	508
	WINMAN
	xdef	~~k_user_CreateWindowClass
	func
	.function	508
~~k_user_CreateWindowClass:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L180
	tcs
	phd
	tcd
pClassName_0	set	4
pMenuName_0	set	8
style_0	set	12
icon_0	set	14
cursor_0	set	18
brush_0	set	22
pWndProc_0	set	26
	.block	508
;	PWNDCLASS wndClass = NULL;
;
;	//k_debug_strings("k_user_CreateWindowClass:",(LPVOID)pClassName);
;
;
;	if(pClassName)
wndClass_1	set	0
	.sym	wndClass,0,138,1,32,23
	.sym	pClassName,4,142,6,32
	.sym	pMenuName,8,142,6,32
	.sym	style,12,16,6,16
	.sym	icon,14,129,6,32
	.sym	cursor,18,129,6,32
	.sym	brush,22,129,6,32
	.sym	pWndProc,26,654,6,32
	stz	<L181+wndClass_1
	stz	<L181+wndClass_1+2
	.line	514
;	{
	lda	<L180+pClassName_0
	ora	<L180+pClassName_0+2
	bne	L183
	brl	L10028
L183:
	.line	515
;		wndClass = k_mem_allocate_heap(sizeof(WNDCLASS));
	.line	516
	pea	#<$20
	jsl	~~k_mem_allocate_heap
	sta	<L181+wndClass_1
	stx	<L181+wndClass_1+2
;		if(wndClass)
	.line	517
;		{
	lda	<L181+wndClass_1
	ora	<L181+wndClass_1+2
	bne	L184
	brl	L10029
L184:
	.line	518
;			memset(wndClass,0,sizeof(WNDCLASS));
	.line	519
	pea	#<$20
	pea	#<$0
	pei	<L181+wndClass_1+2
	pei	<L181+wndClass_1
	jsl	~~memset
;			wndClass->cbSize = sizeof(WNDCLASS);
	.line	520
	lda	#$20
	sta	[<L181+wndClass_1]
;			wndClass->lpszClassName = k_string_copy_string(pClassName);
	.line	521
	pei	<L180+pClassName_0+2
	pei	<L180+pClassName_0
	jsl	~~k_string_copy_string
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$1c
	sta	[<L181+wndClass_1],Y
	lda	<R0+2
	ldy	#$1e
	sta	[<L181+wndClass_1],Y
;			wndClass->pWndProc = pWndProc;
	.line	522
	lda	<L180+pWndProc_0
	ldy	#$4
	sta	[<L181+wndClass_1],Y
	lda	<L180+pWndProc_0+2
	ldy	#$6
	sta	[<L181+wndClass_1],Y
;			wndClass->style = style;
	.line	523
	lda	<L180+style_0
	ldy	#$2
	sta	[<L181+wndClass_1],Y
;			wndClass->hIcon = icon;
	.line	524
	lda	<L180+icon_0
	ldy	#$c
	sta	[<L181+wndClass_1],Y
	lda	<L180+icon_0+2
	ldy	#$e
	sta	[<L181+wndClass_1],Y
;			wndClass->hCursor = cursor;
	.line	525
	lda	<L180+cursor_0
	ldy	#$10
	sta	[<L181+wndClass_1],Y
	lda	<L180+cursor_0+2
	ldy	#$12
	sta	[<L181+wndClass_1],Y
;			wndClass->hbrBackground = brush;
	.line	526
	lda	<L180+brush_0
	ldy	#$14
	sta	[<L181+wndClass_1],Y
	lda	<L180+brush_0+2
	ldy	#$16
	sta	[<L181+wndClass_1],Y
;
;			k_nodelist_addtolist(_k_windowManager_WindowClassList,NL_TYPE_WINDOW_CLS,pClassName,wndClass);
	.line	528
	pei	<L181+wndClass_1+2
	pei	<L181+wndClass_1
	pei	<L180+pClassName_0+2
	pei	<L180+pClassName_0
	pea	#<$1
	lda	|~~_k_windowManager_WindowClassList+2
	pha
	lda	|~~_k_windowManager_WindowClassList
	pha
	jsl	~~k_nodelist_addtolist
;			//k_debug_nodelist(k_nodelist_getfirstnode(_k_windowManager_WindowClassList));
;		}
	.line	530
;
;		//k_debug_strings("k_user_CreateWindowClass:","exit");
;	}
L10029:
	.line	533
;	return wndClass;
L10028:
	.line	534
	ldx	<L181+wndClass_1+2
	lda	<L181+wndClass_1
L185:
	tay
	lda	<L180+2
	sta	<L180+2+26
	lda	<L180+1
	sta	<L180+1+26
	pld
	tsc
	clc
	adc	#L180+26
	tcs
	tya
	rtl
;}
	.line	535
	.endblock	535
L180	equ	8
L181	equ	5
	ends
	efunc
	.endfunc	535,5,8
	.line	535
;
;PWNDCLASS k_user_getWindowClass(LPCSTR pClassName)
;{
	.line	537
	.line	538
	WINMAN
	xdef	~~k_user_getWindowClass
	func
	.function	538
~~k_user_getWindowClass:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L186
	tcs
	phd
	tcd
pClassName_0	set	4
	.block	538
;	PWNDCLASS wndClass = NULL;
;
;	PFXNODE found = k_nodelist_searchByName(_k_windowManager_WindowClassList,pClassName);
;	if(found && found->data)
wndClass_1	set	0
found_1	set	4
	.sym	wndClass,0,138,1,32,23
	.sym	found,4,138,1,32,2
	.sym	pClassName,4,142,6,32
	stz	<L187+wndClass_1
	stz	<L187+wndClass_1+2
	pei	<L186+pClassName_0+2
	pei	<L186+pClassName_0
	lda	|~~_k_windowManager_WindowClassList+2
	pha
	lda	|~~_k_windowManager_WindowClassList
	pha
	jsl	~~k_nodelist_searchByName
	sta	<L187+found_1
	stx	<L187+found_1+2
	.line	542
;	{
	lda	<L187+found_1
	ora	<L187+found_1+2
	bne	L189
	brl	L10030
L189:
	ldy	#$2
	lda	[<L187+found_1],Y
	ldy	#$4
	ora	[<L187+found_1],Y
	bne	L190
	brl	L10030
L190:
	.line	543
;		wndClass = (PWNDCLASS)found->data;
	.line	544
	ldy	#$2
	lda	[<L187+found_1],Y
	sta	<L187+wndClass_1
	ldy	#$4
	lda	[<L187+found_1],Y
	sta	<L187+wndClass_1+2
;	}
	.line	545
;
;	return wndClass;
L10030:
	.line	547
	ldx	<L187+wndClass_1+2
	lda	<L187+wndClass_1
L191:
	tay
	lda	<L186+2
	sta	<L186+2+4
	lda	<L186+1
	sta	<L186+1+4
	pld
	tsc
	clc
	adc	#L186+4
	tcs
	tya
	rtl
;}
	.line	548
	.endblock	548
L186	equ	8
L187	equ	1
	ends
	efunc
	.endfunc	548,1,8
	.line	548
;
;
;HFONT k_user_GetFont(LPCSTR pFontName)
;{
	.line	551
	.line	552
	WINMAN
	xdef	~~k_user_GetFont
	func
	.function	552
~~k_user_GetFont:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L192
	tcs
	phd
	tcd
pFontName_0	set	4
	.block	552
;	HFONT hFont = NULL;
;	PFXNODE node;
;
;	node = k_nodelist_searchByName(_k_windowManager_FontList,pFontName);
hFont_1	set	0
node_1	set	4
	.sym	hFont,0,129,1,32
	.sym	node,4,138,1,32,2
	.sym	pFontName,4,142,6,32
	stz	<L193+hFont_1
	stz	<L193+hFont_1+2
	.line	556
	pei	<L192+pFontName_0+2
	pei	<L192+pFontName_0
	lda	|~~_k_windowManager_FontList+2
	pha
	lda	|~~_k_windowManager_FontList
	pha
	jsl	~~k_nodelist_searchByName
	sta	<L193+node_1
	stx	<L193+node_1+2
;	if(node)
	.line	557
;	{
	lda	<L193+node_1
	ora	<L193+node_1+2
	bne	L195
	brl	L10031
L195:
	.line	558
;		hFont = (HFONT)node->data;
	.line	559
	ldy	#$2
	lda	[<L193+node_1],Y
	sta	<L193+hFont_1
	ldy	#$4
	lda	[<L193+node_1],Y
	sta	<L193+hFont_1+2
;	}
	.line	560
;
;	return hFont;
L10031:
	.line	562
	ldx	<L193+hFont_1+2
	lda	<L193+hFont_1
L196:
	tay
	lda	<L192+2
	sta	<L192+2+4
	lda	<L192+1
	sta	<L192+1+4
	pld
	tsc
	clc
	adc	#L192+4
	tcs
	tya
	rtl
;}
	.line	563
	.endblock	563
L192	equ	8
L193	equ	1
	ends
	efunc
	.endfunc	563,1,8
	.line	563
;
;HDC k_user_GetWindowDrawingContext(HWND hWnd)
;{
	.line	565
	.line	566
	WINMAN
	xdef	~~k_user_GetWindowDrawingContext
	func
	.function	566
~~k_user_GetWindowDrawingContext:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L197
	tcs
	phd
	tcd
hWnd_0	set	4
	.block	566
;	return NULL;
	.sym	hWnd,4,129,6,32
	.line	567
	lda	#$0
	tax
	lda	#$0
L200:
	tay
	lda	<L197+2
	sta	<L197+2+4
	lda	<L197+1
	sta	<L197+1+4
	pld
	tsc
	clc
	adc	#L197+4
	tcs
	tya
	rtl
;}
	.line	568
	.endblock	568
L197	equ	0
L198	equ	1
	ends
	efunc
	.endfunc	568,1,0
	.line	568
;
;VOID k_user_ReleaseWindowDrawingContext(HDC hDC)
;{
	.line	570
	.line	571
	WINMAN
	xdef	~~k_user_ReleaseWindowDrawingContext
	func
	.function	571
~~k_user_ReleaseWindowDrawingContext:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L201
	tcs
	phd
	tcd
hDC_0	set	4
	.block	571
;
;}
	.sym	hDC,4,129,6,32
	.line	573
L204:
	lda	<L201+2
	sta	<L201+2+4
	lda	<L201+1
	sta	<L201+1+4
	pld
	tsc
	clc
	adc	#L201+4
	tcs
	rtl
	.endblock	573
L201	equ	0
L202	equ	1
	ends
	efunc
	.endfunc	573,1,0
	.line	573
;
;
;VOID k_user_SelectFontIntoContext(HDC hDC,HFONT hFont)
;{
	.line	576
	.line	577
	WINMAN
	xdef	~~k_user_SelectFontIntoContext
	func
	.function	577
~~k_user_SelectFontIntoContext:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L205
	tcs
	phd
	tcd
hDC_0	set	4
hFont_0	set	8
	.block	577
;
;}
	.sym	hDC,4,129,6,32
	.sym	hFont,8,129,6,32
	.line	579
L208:
	lda	<L205+2
	sta	<L205+2+8
	lda	<L205+1
	sta	<L205+1+8
	pld
	tsc
	clc
	adc	#L205+8
	tcs
	rtl
	.endblock	579
L205	equ	0
L206	equ	1
	ends
	efunc
	.endfunc	579,1,0
	.line	579
;
;VOID k_user_SelectColorIntoContext(HDC hDC,HCOLOR hFont)
;{
	.line	581
	.line	582
	WINMAN
	xdef	~~k_user_SelectColorIntoContext
	func
	.function	582
~~k_user_SelectColorIntoContext:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L209
	tcs
	phd
	tcd
hDC_0	set	4
hFont_0	set	8
	.block	582
;
;}
	.sym	hDC,4,129,6,32
	.sym	hFont,8,129,6,32
	.line	584
L212:
	lda	<L209+2
	sta	<L209+2+8
	lda	<L209+1
	sta	<L209+1+8
	pld
	tsc
	clc
	adc	#L209+8
	tcs
	rtl
	.endblock	584
L209	equ	0
L210	equ	1
	ends
	efunc
	.endfunc	584,1,0
	.line	584
;
;UINT k_user_DrawText(HDC hDC,LPCSTR text,PRECT locInOUt)
;{
	.line	586
	.line	587
	WINMAN
	xdef	~~k_user_DrawText
	func
	.function	587
~~k_user_DrawText:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L213
	tcs
	phd
	tcd
hDC_0	set	4
text_0	set	8
locInOUt_0	set	12
	.block	587
;	return 0;
	.sym	hDC,4,129,6,32
	.sym	text,8,142,6,32
	.sym	locInOUt,12,138,6,32,22
	.line	588
	lda	#$0
L216:
	tay
	lda	<L213+2
	sta	<L213+2+12
	lda	<L213+1
	sta	<L213+1+12
	pld
	tsc
	clc
	adc	#L213+12
	tcs
	tya
	rtl
;}
	.line	589
	.endblock	589
L213	equ	0
L214	equ	1
	ends
	efunc
	.endfunc	589,1,0
	.line	589
;
;UINT k_user_DrawWindowTextToPoint(HWND hWnd,LPCSTR text,UINT color,PRECT rectInOUt)
;{
	.line	591
	.line	592
	WINMAN
	xdef	~~k_user_DrawWindowTextToPoint
	func
	.function	592
~~k_user_DrawWindowTextToPoint:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L217
	tcs
	phd
	tcd
hWnd_0	set	4
text_0	set	8
color_0	set	12
rectInOUt_0	set	14
	.block	592
;	PWINDOW pWin = k_getWindowFromHandle(hWnd);
;
;	if(pWin)
pWin_1	set	0
	.sym	pWin,0,138,1,32,27
	.sym	hWnd,4,129,6,32
	.sym	text,8,142,6,32
	.sym	color,12,16,6,16
	.sym	rectInOUt,14,138,6,32,22
	pei	<L217+hWnd_0+2
	pei	<L217+hWnd_0
	jsl	~~k_getWindowFromHandle
	sta	<L218+pWin_1
	stx	<L218+pWin_1+2
	.line	595
;	{
	lda	<L218+pWin_1
	ora	<L218+pWin_1+2
	bne	L220
	brl	L10032
L220:
	.line	596
;		k_draw_text_point_with_font(text,Bm437ATI8x16,pWin->clientRect.x + rectInOUt->x,pWin->clientRect.y + rectInOUt->y,color);
	.line	597
	pei	<L217+color_0
	clc
	ldy	#$1a
	lda	[<L218+pWin_1],Y
	ldy	#$2
	adc	[<L217+rectInOUt_0],Y
	pha
	clc
	ldy	#$18
	lda	[<L218+pWin_1],Y
	adc	[<L217+rectInOUt_0]
	pha
	pea	#^~~Bm437ATI8x16
	pea	#<~~Bm437ATI8x16
	pei	<L217+text_0+2
	pei	<L217+text_0
	jsl	~~k_draw_text_point_with_font
;	}
	.line	598
;
;	return 0;
L10032:
	.line	600
	lda	#$0
L221:
	tay
	lda	<L217+2
	sta	<L217+2+14
	lda	<L217+1
	sta	<L217+1+14
	pld
	tsc
	clc
	adc	#L217+14
	tcs
	tya
	rtl
;}
	.line	601
	.endblock	601
L217	equ	4
L218	equ	1
	ends
	efunc
	.endfunc	601,1,4
	.line	601
;
;UINT k_user_DrawWindowTextToPointWithFont(HWND hWnd,LPCSTR text,UINT color,PRECT rectInOUt,LPCSTR charSet)
;{
	.line	603
	.line	604
	WINMAN
	xdef	~~k_user_DrawWindowTextToPointWithFont
	func
	.function	604
~~k_user_DrawWindowTextToPointWithFont:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L222
	tcs
	phd
	tcd
hWnd_0	set	4
text_0	set	8
color_0	set	12
rectInOUt_0	set	14
charSet_0	set	18
	.block	604
;	UINT x = 0;
;	PWINDOW pWin = k_getWindowFromHandle(hWnd);
;
;	if(pWin)
x_1	set	0
pWin_1	set	2
	.sym	x,0,16,1,16
	.sym	pWin,2,138,1,32,27
	.sym	hWnd,4,129,6,32
	.sym	text,8,142,6,32
	.sym	color,12,16,6,16
	.sym	rectInOUt,14,138,6,32,22
	.sym	charSet,18,142,6,32
	stz	<L223+x_1
	pei	<L222+hWnd_0+2
	pei	<L222+hWnd_0
	jsl	~~k_getWindowFromHandle
	sta	<L223+pWin_1
	stx	<L223+pWin_1+2
	.line	608
;	{
	lda	<L223+pWin_1
	ora	<L223+pWin_1+2
	bne	L225
	brl	L10033
L225:
	.line	609
;		//if(pWin->clientRect.y + rectInOUt->y > pWin->win_height)
;		//	return 0;
;
;		x = k_draw_text_point_with_font(text,charSet,pWin->clientRect.x + rectInOUt->x,pWin->clientRect.y + rectInOUt->y,color);
	.line	613
	pei	<L222+color_0
	clc
	ldy	#$1a
	lda	[<L223+pWin_1],Y
	ldy	#$2
	adc	[<L222+rectInOUt_0],Y
	pha
	clc
	ldy	#$18
	lda	[<L223+pWin_1],Y
	adc	[<L222+rectInOUt_0]
	pha
	pei	<L222+charSet_0+2
	pei	<L222+charSet_0
	pei	<L222+text_0+2
	pei	<L222+text_0
	jsl	~~k_draw_text_point_with_font
	sta	<L223+x_1
;	}
	.line	614
;
;	return x;
L10033:
	.line	616
	lda	<L223+x_1
L226:
	tay
	lda	<L222+2
	sta	<L222+2+18
	lda	<L222+1
	sta	<L222+1+18
	pld
	tsc
	clc
	adc	#L222+18
	tcs
	tya
	rtl
;}
	.line	617
	.endblock	617
L222	equ	6
L223	equ	1
	ends
	efunc
	.endfunc	617,1,6
	.line	617
;
;
;PRECT k_user_FillClientRect(HWND hWnd,UINT color)
;{
	.line	620
	.line	621
	WINMAN
	xdef	~~k_user_FillClientRect
	func
	.function	621
~~k_user_FillClientRect:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L227
	tcs
	phd
	tcd
hWnd_0	set	4
color_0	set	8
	.block	621
;	PRECT prect = NULL;
;
;	if(hWnd)
prect_1	set	0
	.sym	prect,0,138,1,32,22
	.sym	hWnd,4,129,6,32
	.sym	color,8,16,6,16
	stz	<L228+prect_1
	stz	<L228+prect_1+2
	.line	624
;	{
	lda	<L227+hWnd_0
	ora	<L227+hWnd_0+2
	bne	L230
	brl	L10034
L230:
	.line	625
;		prect = &(k_getWindowFromHandle(hWnd)->clientRect);
	.line	626
	pei	<L227+hWnd_0+2
	pei	<L227+hWnd_0
	jsl	~~k_getWindowFromHandle
	sta	<R0
	stx	<R0+2
	clc
	lda	#$18
	adc	<R0
	sta	<L228+prect_1
	lda	#$0
	adc	<R0+2
	sta	<L228+prect_1+2
;		k_vdma_fill_rect(prect->x,prect->y,
	.line	627
;						 prect->width,prect->height,
;						 color);
	pei	<L227+color_0
	ldy	#$6
	lda	[<L228+prect_1],Y
	pha
	ldy	#$4
	lda	[<L228+prect_1],Y
	pha
	ldy	#$0
	phy
	ldy	#$2
	lda	[<L228+prect_1],Y
	ply
	rol	A
	ror	A
	bpl	L231
	dey
L231:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	lda	[<L228+prect_1]
	bpl	L232
	dey
L232:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect
;	}
	.line	630
;
;
;	return prect;
L10034:
	.line	633
	ldx	<L228+prect_1+2
	lda	<L228+prect_1
L233:
	tay
	lda	<L227+2
	sta	<L227+2+6
	lda	<L227+1
	sta	<L227+1+6
	pld
	tsc
	clc
	adc	#L227+6
	tcs
	tya
	rtl
;}
	.line	634
	.endblock	634
L227	equ	12
L228	equ	9
	ends
	efunc
	.endfunc	634,9,12
	.line	634
;
;HANDLE k_user_RegisterWindowClass(PWNDCLASS pTemplate)
;{
	.line	636
	.line	637
	WINMAN
	xdef	~~k_user_RegisterWindowClass
	func
	.function	637
~~k_user_RegisterWindowClass:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L234
	tcs
	phd
	tcd
pTemplate_0	set	4
	.block	637
;	return NULL;
	.sym	pTemplate,4,138,6,32,23
	.line	638
	lda	#$0
	tax
	lda	#$0
L237:
	tay
	lda	<L234+2
	sta	<L234+2+4
	lda	<L234+1
	sta	<L234+1+4
	pld
	tsc
	clc
	adc	#L234+4
	tcs
	tya
	rtl
;}
	.line	639
	.endblock	639
L234	equ	0
L235	equ	1
	ends
	efunc
	.endfunc	639,1,0
	.line	639
;
;
;PWINDOW	k_user_LoadDialog(LPCSTR    pWindowName,
;						  LPCSTR	pDlgClassName,
;   						  INT       x,
;						  INT       y,
;						  INT       nWidth,
;						  INT       nHeight,
;						  HWND      hWndParent)
;{
	.line	642
	.line	649
	WINMAN
	xdef	~~k_user_LoadDialog
	func
	.function	649
~~k_user_LoadDialog:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L238
	tcs
	phd
	tcd
pWindowName_0	set	4
pDlgClassName_0	set	8
x_0	set	12
y_0	set	14
nWidth_0	set	16
nHeight_0	set	18
hWndParent_0	set	20
	.block	649
;	return k_user_CreateWindow(FXWS_DLGFRAME | FXWS_VISIBLE,
	.sym	pWindowName,4,142,6,32
	.sym	pDlgClassName,8,142,6,32
	.sym	x,12,5,6,16
	.sym	y,14,5,6,16
	.sym	nWidth,16,5,6,16
	.sym	nHeight,18,5,6,16
	.sym	hWndParent,20,129,6,32
	.line	650
;							   pDlgClassName,
;							   pWindowName,
;							   x,y,
;							   nWidth,nHeight,
;							   hWndParent,
;							   NULL,
;							   NULL);
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pei	<L238+hWndParent_0+2
	pei	<L238+hWndParent_0
	pei	<L238+nHeight_0
	pei	<L238+nWidth_0
	pei	<L238+y_0
	pei	<L238+x_0
	pei	<L238+pWindowName_0+2
	pei	<L238+pWindowName_0
	pei	<L238+pDlgClassName_0+2
	pei	<L238+pDlgClassName_0
	pea	#^$40001
	pea	#<$40001
	jsl	~~k_user_CreateWindow
	sta	<R0
	stx	<R0+2
	ldx	<R0+2
	lda	<R0
L241:
	tay
	lda	<L238+2
	sta	<L238+2+20
	lda	<L238+1
	sta	<L238+1+20
	pld
	tsc
	clc
	adc	#L238+20
	tcs
	tya
	rtl
;
;}
	.line	659
	.endblock	659
L238	equ	4
L239	equ	5
	ends
	efunc
	.endfunc	659,5,4
	.line	659
;
;BOOL k_user_CloseWindow(HWND hWnd)
;{
	.line	661
	.line	662
	WINMAN
	xdef	~~k_user_CloseWindow
	func
	.function	662
~~k_user_CloseWindow:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L242
	tcs
	phd
	tcd
hWnd_0	set	4
	.block	662
;	PWINDOW pWin = k_getWindowFromHandle(hWnd);
;
;	if(pWin)
pWin_1	set	0
	.sym	pWin,0,138,1,32,27
	.sym	hWnd,4,129,6,32
	pei	<L242+hWnd_0+2
	pei	<L242+hWnd_0
	jsl	~~k_getWindowFromHandle
	sta	<L243+pWin_1
	stx	<L243+pWin_1+2
	.line	665
;	{
	lda	<L243+pWin_1
	ora	<L243+pWin_1+2
	bne	L245
	brl	L10035
L245:
	.line	666
;		if(!pWin->isClosed)
	.line	667
;		{
	ldy	#$15d
	lda	[<L243+pWin_1],Y
	and	#$ff
	beq	L246
	brl	L10036
L246:
	.line	668
;			k_send_window_message(hWnd,FX_WINDOW_CLOSE,NULL,0);
	.line	669
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$fbff
	pei	<L242+hWnd_0+2
	pei	<L242+hWnd_0
	jsl	~~k_send_window_message
;		}
	.line	670
;		return TRUE;
L10036:
	.line	671
	lda	#$1
L247:
	tay
	lda	<L242+2
	sta	<L242+2+4
	lda	<L242+1
	sta	<L242+1+4
	pld
	tsc
	clc
	adc	#L242+4
	tcs
	tya
	rtl
;	}
	.line	672
;
;	return FALSE;
L10035:
	.line	674
	lda	#$0
	brl	L247
;}
	.line	675
	.endblock	675
L242	equ	4
L243	equ	1
	ends
	efunc
	.endfunc	675,1,4
	.line	675
;
;BOOL k_user_DestroyWindow(HWND hWnd)
;{
	.line	677
	.line	678
	WINMAN
	xdef	~~k_user_DestroyWindow
	func
	.function	678
~~k_user_DestroyWindow:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L248
	tcs
	phd
	tcd
hWnd_0	set	4
	.block	678
;	BOOL bRet = FALSE;
;
;	PWINDOW pWin = k_getWindowFromHandle(hWnd);
;
;	if(pWin && !pWin->isClosed && !pWin->isClosing)
bRet_1	set	0
pWin_1	set	1
	.sym	bRet,0,14,1,8
	.sym	pWin,1,138,1,32,27
	.sym	hWnd,4,129,6,32
	sep	#$20
	longa	off
	stz	<L249+bRet_1
	rep	#$20
	longa	on
	pei	<L248+hWnd_0+2
	pei	<L248+hWnd_0
	jsl	~~k_getWindowFromHandle
	sta	<L249+pWin_1
	stx	<L249+pWin_1+2
	.line	683
;	{
	lda	<L249+pWin_1
	ora	<L249+pWin_1+2
	bne	L251
	brl	L10037
L251:
	ldy	#$15d
	lda	[<L249+pWin_1],Y
	and	#$ff
	beq	L252
	brl	L10037
L252:
	ldy	#$15e
	lda	[<L249+pWin_1],Y
	and	#$ff
	beq	L253
	brl	L10037
L253:
	.line	684
;		if(pWin->pChildWindows)
	.line	685
;		{
	ldy	#$138
	lda	[<L249+pWin_1],Y
	ldy	#$13a
	ora	[<L249+pWin_1],Y
	bne	L254
	brl	L10038
L254:
	.line	686
;			_k_user_send_child_message(hWnd,FX_WINDOW_CLOSE,NULL,0);
	.line	687
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$fbff
	pei	<L248+hWnd_0+2
	pei	<L248+hWnd_0
	jsl	~~_k_user_send_child_message
;		}
	.line	688
;		k_vdma_fill_rect_ex(pWin->win_x,pWin->win_y, pWin->win_width, pWin->win_height,
L10038:
	.line	689
;							FILLCOLOR_TRANSPARENT,BITMAP_FRONT);
	pea	#<$0
	pea	#<$0
	ldy	#$e
	lda	[<L249+pWin_1],Y
	pha
	ldy	#$c
	lda	[<L249+pWin_1],Y
	pha
	ldy	#$0
	phy
	ldy	#$a
	lda	[<L249+pWin_1],Y
	ply
	rol	A
	ror	A
	bpl	L255
	dey
L255:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	phy
	ldy	#$8
	lda	[<L249+pWin_1],Y
	ply
	rol	A
	ror	A
	bpl	L256
	dey
L256:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect_ex
;		k_vdma_fill_rect_ex(pWin->win_x,pWin->win_y, pWin->win_width, pWin->win_height,
	.line	691
;							k_getUIBackgroundColor(),BITMAP_BACK);
	pea	#<$10
	jsl	~~k_getUIBackgroundColor
	pha
	ldy	#$e
	lda	[<L249+pWin_1],Y
	pha
	ldy	#$c
	lda	[<L249+pWin_1],Y
	pha
	ldy	#$0
	phy
	ldy	#$a
	lda	[<L249+pWin_1],Y
	ply
	rol	A
	ror	A
	bpl	L257
	dey
L257:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	phy
	ldy	#$8
	lda	[<L249+pWin_1],Y
	ply
	rol	A
	ror	A
	bpl	L258
	dey
L258:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect_ex
;
;		pWin->isClosing = TRUE;
	.line	694
	sep	#$20
	longa	off
	lda	#$1
	ldy	#$15e
	sta	[<L249+pWin_1],Y
	rep	#$20
	longa	on
;	}
	.line	695
;
;	return bRet;
L10037:
	.line	697
	lda	<L249+bRet_1
	and	#$ff
L259:
	tay
	lda	<L248+2
	sta	<L248+2+4
	lda	<L248+1
	sta	<L248+1+4
	pld
	tsc
	clc
	adc	#L248+4
	tcs
	tya
	rtl
;}
	.line	698
	.endblock	698
L248	equ	13
L249	equ	9
	ends
	efunc
	.endfunc	698,9,13
	.line	698
;
;PWINDOW	k_user_CreateWindow(ULONG     style,
;						    LPCSTR    pClassName,
;							LPCSTR    pWindowName,
;							INT       x,
;							INT       y,
;							INT       nWidth,
;							INT       nHeight,
;							HWND      hWndParent,
;							HMENU     hMenu,
;							HINSTANCE hInstance)
;{
	.line	700
	.line	710
	WINMAN
	xdef	~~k_user_CreateWindow
	func
	.function	710
~~k_user_CreateWindow:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L260
	tcs
	phd
	tcd
style_0	set	4
pClassName_0	set	8
pWindowName_0	set	12
x_0	set	16
y_0	set	18
nWidth_0	set	20
nHeight_0	set	22
hWndParent_0	set	24
hMenu_0	set	28
hInstance_0	set	32
	.block	710
;
;	PFXNODE   found = NULL;
;	PWINDOW   pWin = NULL;
;	PWINDOW   pParent = NULL;
;	PWNDCLASS wndClass = NULL;
;
;	UCHAR localBuffer[16];
;
;	PFXPROCESS p = k_exec_get_current_process();
;
;	k_debug_strings("k_user_CreateWindow:",(LPCHAR)pWindowName);
found_1	set	0
pWin_1	set	4
pParent_1	set	8
wndClass_1	set	12
localBuffer_1	set	16
p_1	set	32
	.sym	found,0,138,1,32,2
	.sym	pWin,4,138,1,32,27
	.sym	pParent,8,138,1,32,27
	.sym	wndClass,12,138,1,32,23
	.sym	localBuffer,16,110,1,0,16
	.sym	p,32,138,1,32,17
	.sym	style,4,18,6,32
	.sym	pClassName,8,142,6,32
	.sym	pWindowName,12,142,6,32
	.sym	x,16,5,6,16
	.sym	y,18,5,6,16
	.sym	nWidth,20,5,6,16
	.sym	nHeight,22,5,6,16
	.sym	hWndParent,24,129,6,32
	.sym	hMenu,28,129,6,32
	.sym	hInstance,32,129,6,32
	stz	<L261+found_1
	stz	<L261+found_1+2
	stz	<L261+pWin_1
	stz	<L261+pWin_1+2
	stz	<L261+pParent_1
	stz	<L261+pParent_1+2
	stz	<L261+wndClass_1
	stz	<L261+wndClass_1+2
	jsl	~~k_exec_get_current_process
	sta	<L261+p_1
	stx	<L261+p_1+2
	.line	721
	pei	<L260+pWindowName_0+2
	pei	<L260+pWindowName_0
	pea	#^L179
	pea	#<L179
	jsl	~~k_debug_strings
;
;	if(pClassName && pWindowName)
	.line	723
;	{
	lda	<L260+pClassName_0
	ora	<L260+pClassName_0+2
	bne	L263
	brl	L10039
L263:
	lda	<L260+pWindowName_0
	ora	<L260+pWindowName_0+2
	bne	L264
	brl	L10039
L264:
	.line	724
;		//pWindowName = strupr((LPCHAR)pWindowName); // temp fix for font def issue
;
;		found = k_nodelist_searchByName(_k_windowManager_WindowClassList,pClassName);
	.line	727
	pei	<L260+pClassName_0+2
	pei	<L260+pClassName_0
	lda	|~~_k_windowManager_WindowClassList+2
	pha
	lda	|~~_k_windowManager_WindowClassList
	pha
	jsl	~~k_nodelist_searchByName
	sta	<L261+found_1
	stx	<L261+found_1+2
;		if(found && found->data)
	.line	728
;		{
	lda	<L261+found_1
	ora	<L261+found_1+2
	bne	L265
	brl	L10040
L265:
	ldy	#$2
	lda	[<L261+found_1],Y
	ldy	#$4
	ora	[<L261+found_1],Y
	bne	L266
	brl	L10040
L266:
	.line	729
;			wndClass = (PWNDCLASS)found->data;
	.line	730
	ldy	#$2
	lda	[<L261+found_1],Y
	sta	<L261+wndClass_1
	ldy	#$4
	lda	[<L261+found_1],Y
	sta	<L261+wndClass_1+2
;
;			//k_debug_strings("k_user_CreateWindow:Found WndClass:",(LPVOID)wndClass->lpszClassName);
;
;			pWin = k_mem_allocate_heap(sizeof(WINDOW));
	.line	734
	pea	#<$15f
	jsl	~~k_mem_allocate_heap
	sta	<L261+pWin_1
	stx	<L261+pWin_1+2
;			if(pWin)
	.line	735
;			{
	lda	<L261+pWin_1
	ora	<L261+pWin_1+2
	bne	L267
	brl	L10041
L267:
	.line	736
;				memset(pWin,0,sizeof(WINDOW));
	.line	737
	pea	#<$15f
	pea	#<$0
	pei	<L261+pWin_1+2
	pei	<L261+pWin_1
	jsl	~~memset
;				pWin->cbSize = sizeof(WINDOW);
	.line	738
	lda	#$15f
	sta	[<L261+pWin_1]
;
;				if(p)
	.line	740
;				{
	lda	<L261+p_1
	ora	<L261+p_1+2
	bne	L268
	brl	L10042
L268:
	.line	741
;					pWin->procid = p->procId;
	.line	742
	ldy	#$2
	lda	[<L261+p_1],Y
	ldy	#$128
	sta	[<L261+pWin_1],Y
	ldy	#$4
	lda	[<L261+p_1],Y
	ldy	#$12a
	sta	[<L261+pWin_1],Y
;				}
	.line	743
;				else
	brl	L10043
L10042:
;				{
	.line	745
;					if(hWndParent)
	.line	746
;					{
	lda	<L260+hWndParent_0
	ora	<L260+hWndParent_0+2
	bne	L269
	brl	L10044
L269:
	.line	747
;						pWin->procid = k_getWindowFromHandle(hWndParent)->procid;
	.line	748
	pei	<L260+hWndParent_0+2
	pei	<L260+hWndParent_0
	jsl	~~k_getWindowFromHandle
	sta	<R0
	stx	<R0+2
	ldy	#$128
	lda	[<R0],Y
	ldy	#$128
	sta	[<L261+pWin_1],Y
	ldy	#$12a
	lda	[<R0],Y
	ldy	#$12a
	sta	[<L261+pWin_1],Y
;					}
	.line	749
;				}
L10044:
	.line	750
L10043:
;
;				k_debug_strings("k_user_CreateWindow:",(LPCHAR)pWindowName);
	.line	752
	pei	<L260+pWindowName_0+2
	pei	<L260+pWindowName_0
	pea	#^L179+21
	pea	#<L179+21
	jsl	~~k_debug_strings
;				k_debug_long("Process Id:",(ULONG)pWin->procid);
	.line	753
	ldy	#$12a
	lda	[<L261+pWin_1],Y
	pha
	ldy	#$128
	lda	[<L261+pWin_1],Y
	pha
	pea	#^L179+42
	pea	#<L179+42
	jsl	~~k_debug_long
;
;				pWin->style = style;
	.line	755
	lda	<L260+style_0
	ldy	#$2
	sta	[<L261+pWin_1],Y
	lda	<L260+style_0+2
	ldy	#$4
	sta	[<L261+pWin_1],Y
;				pWin->pParentWindow = hWndParent;
	.line	756
	lda	<L260+hWndParent_0
	ldy	#$130
	sta	[<L261+pWin_1],Y
	lda	<L260+hWndParent_0+2
	ldy	#$132
	sta	[<L261+pWin_1],Y
;				pWin->pWndClass = wndClass;
	.line	757
	lda	<L261+wndClass_1
	ldy	#$12c
	sta	[<L261+pWin_1],Y
	lda	<L261+wndClass_1+2
	ldy	#$12e
	sta	[<L261+pWin_1],Y
;				strcpy(pWin->win_title,pWindowName);
	.line	758
	pei	<L260+pWindowName_0+2
	pei	<L260+pWindowName_0
	clc
	lda	#$d4
	adc	<L261+pWin_1
	sta	<R0
	lda	#$0
	adc	<L261+pWin_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~strcpy
;				strcpy(pWin->win_class_name,pClassName);
	.line	759
	pei	<L260+pClassName_0+2
	pei	<L260+pClassName_0
	clc
	lda	#$106
	adc	<L261+pWin_1
	sta	<R0
	lda	#$0
	adc	<L261+pWin_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~strcpy
;
;
;				pWin->win_x 		= x;
	.line	762
	lda	<L260+x_0
	ldy	#$8
	sta	[<L261+pWin_1],Y
;				pWin->win_y 		= y;
	.line	763
	lda	<L260+y_0
	ldy	#$a
	sta	[<L261+pWin_1],Y
;				pWin->win_width 	= nWidth;
	.line	764
	lda	<L260+nWidth_0
	ldy	#$c
	sta	[<L261+pWin_1],Y
;				pWin->win_height	= nHeight;
	.line	765
	lda	<L260+nHeight_0
	ldy	#$e
	sta	[<L261+pWin_1],Y
;
;				if(hWndParent)
	.line	767
;				{
	lda	<L260+hWndParent_0
	ora	<L260+hWndParent_0+2
	bne	L270
	brl	L10045
L270:
	.line	768
;					PWINDOW pParent = k_getWindowFromHandle(hWndParent);
;					pWin->win_x += pParent->win_x;
	.block	770
pParent_2	set	36
	.sym	pParent,36,138,1,32,27
	pei	<L260+hWndParent_0+2
	pei	<L260+hWndParent_0
	jsl	~~k_getWindowFromHandle
	sta	<L261+pParent_2
	stx	<L261+pParent_2+2
	.line	770
	clc
	lda	#$8
	adc	<L261+pWin_1
	sta	<R0
	lda	#$0
	adc	<L261+pWin_1+2
	sta	<R0+2
	clc
	lda	[<R0]
	ldy	#$8
	adc	[<L261+pParent_2],Y
	sta	[<R0]
;					pWin->win_y += pParent->win_y;
	.line	771
	clc
	lda	#$a
	adc	<L261+pWin_1
	sta	<R0
	lda	#$0
	adc	<L261+pWin_1+2
	sta	<R0+2
	clc
	lda	[<R0]
	ldy	#$a
	adc	[<L261+pParent_2],Y
	sta	[<R0]
;				}
	.endblock	772
	.line	772
;
;				pWin->hMenu = hMenu;
L10045:
	.line	774
	lda	<L260+hMenu_0
	ldy	#$134
	sta	[<L261+pWin_1],Y
	lda	<L260+hMenu_0+2
	ldy	#$136
	sta	[<L261+pWin_1],Y
;				pWin->pChildWindows = NULL;
	.line	775
	lda	#$0
	ldy	#$138
	sta	[<L261+pWin_1],Y
	lda	#$0
	ldy	#$13a
	sta	[<L261+pWin_1],Y
;				pWin->pChildHitList = NULL;
	.line	776
	lda	#$0
	ldy	#$13c
	sta	[<L261+pWin_1],Y
	lda	#$0
	ldy	#$13e
	sta	[<L261+pWin_1],Y
;				pWin->isVisible 	= ((style & FXWS_VISIBLE) == FXWS_VISIBLE);
	.line	777
	stz	<R0
	lda	<L260+style_0
	and	#<$1
	sta	<R1
	stz	<R1+2
	lda	<R1
	cmp	#<$1
	bne	L273
	lda	<R1+2
	cmp	#^$1
L273:
	beq	L274
	brl	L272
L274:
	inc	<R0
L272:
	sep	#$20
	longa	off
	lda	<R0
	ldy	#$140
	sta	[<L261+pWin_1],Y
	rep	#$20
	longa	on
;
;				//k_debug_long("k_user_CreateWindow:sytle:",style);
;				//k_debug_long("k_user_CreateWindow:FXWS_VISIBLE:", FXWS_VISIBLE);
;				//k_debug_long("k_user_CreateWindow:style & FXWS_VISIBLE:",style & FXWS_VISIBLE);
;				//k_debug_integer("k_user_CreateWindow:isVisible:",pWin->isVisible);
;
;
;				pWin->clickable = k_mem_allocate_heap(sizeof(CLICKABLE));
	.line	785
	pea	#<$b
	jsl	~~k_mem_allocate_heap
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$d0
	sta	[<L261+pWin_1],Y
	lda	<R0+2
	ldy	#$d2
	sta	[<L261+pWin_1],Y
;				if(pWin->clickable)
	.line	786
;				{
	ldy	#$d0
	lda	[<L261+pWin_1],Y
	ldy	#$d2
	ora	[<L261+pWin_1],Y
	bne	L275
	brl	L10046
L275:
	.line	787
;					((PCLICKABLE)pWin->clickable)->area.x 		= pWin->win_x;
	.line	788
	ldy	#$d0
	lda	[<L261+pWin_1],Y
	sta	<R0
	ldy	#$d2
	lda	[<L261+pWin_1],Y
	sta	<R0+2
	ldy	#$8
	lda	[<L261+pWin_1],Y
	sta	[<R0]
;					((PCLICKABLE)pWin->clickable)->area.y 		= pWin->win_y;
	.line	789
	ldy	#$d0
	lda	[<L261+pWin_1],Y
	sta	<R0
	ldy	#$d2
	lda	[<L261+pWin_1],Y
	sta	<R0+2
	ldy	#$a
	lda	[<L261+pWin_1],Y
	ldy	#$2
	sta	[<R0],Y
;					((PCLICKABLE)pWin->clickable)->area.height 	= pWin->win_height;
	.line	790
	ldy	#$d0
	lda	[<L261+pWin_1],Y
	sta	<R0
	ldy	#$d2
	lda	[<L261+pWin_1],Y
	sta	<R0+2
	ldy	#$e
	lda	[<L261+pWin_1],Y
	ldy	#$6
	sta	[<R0],Y
;					((PCLICKABLE)pWin->clickable)->area.width 	= pWin->win_width;
	.line	791
	ldy	#$d0
	lda	[<L261+pWin_1],Y
	sta	<R0
	ldy	#$d2
	lda	[<L261+pWin_1],Y
	sta	<R0+2
	ldy	#$c
	lda	[<L261+pWin_1],Y
	ldy	#$4
	sta	[<R0],Y
;					((PCLICKABLE)pWin->clickable)->z 			= 10;
	.line	792
	ldy	#$d0
	lda	[<L261+pWin_1],Y
	sta	<R0
	ldy	#$d2
	lda	[<L261+pWin_1],Y
	sta	<R0+2
	lda	#$a
	ldy	#$8
	sta	[<R0],Y
;				}
	.line	793
;
;				pWin->clientRect.x 		= pWin->wndRect.x		= pWin->win_x;
L10046:
	.line	795
	ldy	#$8
	lda	[<L261+pWin_1],Y
	ldy	#$10
	sta	[<L261+pWin_1],Y
	ldy	#$8
	lda	[<L261+pWin_1],Y
	ldy	#$18
	sta	[<L261+pWin_1],Y
;				pWin->clientRect.y 		= pWin->wndRect.y		= pWin->win_y;
	.line	796
	ldy	#$a
	lda	[<L261+pWin_1],Y
	ldy	#$12
	sta	[<L261+pWin_1],Y
	ldy	#$a
	lda	[<L261+pWin_1],Y
	ldy	#$1a
	sta	[<L261+pWin_1],Y
;				pWin->clientRect.width 	= pWin->wndRect.width	= pWin->win_width;
	.line	797
	ldy	#$c
	lda	[<L261+pWin_1],Y
	ldy	#$14
	sta	[<L261+pWin_1],Y
	ldy	#$c
	lda	[<L261+pWin_1],Y
	ldy	#$1c
	sta	[<L261+pWin_1],Y
;				pWin->clientRect.height = pWin->wndRect.height 	= pWin->win_height;
	.line	798
	ldy	#$e
	lda	[<L261+pWin_1],Y
	ldy	#$16
	sta	[<L261+pWin_1],Y
	ldy	#$e
	lda	[<L261+pWin_1],Y
	ldy	#$1e
	sta	[<L261+pWin_1],Y
;
;				//k_user_CopyRect((PRECT)&pWin->win_x,&(((PCLICKABLE)pWin->clickable)->area));
;				//k_user_CopyRect((PRECT)&pWin->win_x,&(pWin->clientRect));
;				/*
;				k_debug_rect("WndRect:",&pWin->wndRect);
;				k_debug_rect("ClientRect:",&pWin->clientRect);
;				k_debug_rect("ClassicRect:",(PRECT)&pWin->win_x);
;				*/
;				//strcpy(pWin->win_title,(LPCSTR)k_longtodec((ULONG)pWin,localBuffer));
;
;				//k_nodelist_addtolist(_k_windowManager_WindowObjectList,NL_TYPE_WINDOW_OBJ,(LPCSTR)k_longtodec((ULONG)pWin,localBuffer),pWin);
;
;				//if(hWndParent == k_user_getDesktopWindow())
;				//	k_nodelist_naddtolist_tohead(_k_windowManager_WindowObjectList,NL_TYPE_WINDOW_OBJ,(ULONG)pWin,pWin);
;				//else
;					k_nodelist_naddtolist(_k_windowManager_WindowObjectList,NL_TYPE_WINDOW_OBJ,(ULONG)pWin,pWin);
	.line	814
	pei	<L261+pWin_1+2
	pei	<L261+pWin_1
	pei	<L261+pWin_1+2
	pei	<L261+pWin_1
	pea	#<$2
	lda	|~~_k_windowManager_WindowObjectList+2
	pha
	lda	|~~_k_windowManager_WindowObjectList
	pha
	jsl	~~k_nodelist_naddtolist
;
;				//k_debug_nodelist(_k_windowManager_WindowObjectList->listhead->next);
;
;				/*
;				if(pWin->isVisible)
;					k_vdraw_ui_window(style,
;									  pWin->win_x ,pWin->win_y,
;									  pWin->win_height,pWin->win_width,
;									  pWin->win_title,
;									  k_getUIGadgetColor(), k_getUIMenuColor());
;				*/
;
;				if(hWndParent)
	.line	827
;				{
	lda	<L260+hWndParent_0
	ora	<L260+hWndParent_0+2
	bne	L276
	brl	L10047
L276:
	.line	828
;					//k_debug_long("k_user_CreateWindow:k_add_child_window:hWndParent:",(ULONG)hWndParent);
;					k_add_child_window(k_getWindowFromHandle(hWndParent),pWin,k_update_hover_location);
	.line	830
	pea	#^~~k_update_hover_location
	pea	#<~~k_update_hover_location
	pei	<L261+pWin_1+2
	pei	<L261+pWin_1
	pei	<L260+hWndParent_0+2
	pei	<L260+hWndParent_0
	jsl	~~k_getWindowFromHandle
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_add_child_window
;
;					if(hWndParent == k_user_getDesktopWindow())
	.line	832
;					{
	jsl	~~k_user_getDesktopWindow
	sta	<R0
	stx	<R0+2
	lda	<R0
	cmp	<L260+hWndParent_0
	bne	L277
	lda	<R0+2
	cmp	<L260+hWndParent_0+2
L277:
	beq	L278
	brl	L10048
L278:
	.line	833
;						//k_point_hit_resetdepth_nodeslist(_k_windowManager_ObjectHitList,0);
;						k_point_hit_resetdepth_nodeslist(k_getWindowFromHandle(hWndParent)->pChildHitList,0);
	.line	835
	pea	#<$0
	pei	<L260+hWndParent_0+2
	pei	<L260+hWndParent_0
	jsl	~~k_getWindowFromHandle
	sta	<R0
	stx	<R0+2
	ldy	#$13e
	lda	[<R0],Y
	pha
	ldy	#$13c
	lda	[<R0],Y
	pha
	jsl	~~k_point_hit_resetdepth_nodeslist
;						((PCLICKABLE)pWin->clickable)->z = 10;
	.line	836
	ldy	#$d0
	lda	[<L261+pWin_1],Y
	sta	<R0
	ldy	#$d2
	lda	[<L261+pWin_1],Y
	sta	<R0+2
	lda	#$a
	ldy	#$8
	sta	[<R0],Y
;						k_attach_mouse_detection(pWin,k_update_hover_location);
	.line	837
	pea	#^~~k_update_hover_location
	pea	#<~~k_update_hover_location
	pei	<L261+pWin_1+2
	pei	<L261+pWin_1
	jsl	~~k_attach_mouse_detection
;					}
	.line	838
;
;				}
L10048:
	.line	840
;				else
	brl	L10049
L10047:
;				{
	.line	842
;					k_attach_mouse_detection(pWin,k_update_hover_location);
	.line	843
	pea	#^~~k_update_hover_location
	pea	#<~~k_update_hover_location
	pei	<L261+pWin_1+2
	pei	<L261+pWin_1
	jsl	~~k_attach_mouse_detection
;				}
	.line	844
L10049:
;
;				/*
;				if(hWndParent)
;				{
;					//k_debug_long("k_user_CreateWindow:k_add_child_window:hWndParent:",(ULONG)hWndParent);
;					k_add_child_window(k_getWindowFromHandle(hWndParent),pWin,k_update_hover_location);
;				}
;
;				k_attach_mouse_detection(pWin,k_update_hover_location);
;				*/
;
;				k_send_window_message(k_getHandleFromWindow(pWin),FX_CREATE_WINDOW,NULL,0);
	.line	856
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$ff03
	pei	<L261+pWin_1+2
	pei	<L261+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_send_window_message
;				k_send_window_message(k_getHandleFromWindow(pWin),FX_DRAW_NONCLIENT,NULL,0);
	.line	857
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$fb01
	pei	<L261+pWin_1+2
	pei	<L261+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_send_window_message
;				k_send_window_message(k_getHandleFromWindow(pWin),FX_DRAW_WINDOW,NULL,0);
	.line	858
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$fb00
	pei	<L261+pWin_1+2
	pei	<L261+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_send_window_message
;
;
;			}
	.line	861
;		}
L10041:
	.line	862
;	}
L10040:
	.line	863
;	return pWin;
L10039:
	.line	864
	ldx	<L261+pWin_1+2
	lda	<L261+pWin_1
L279:
	tay
	lda	<L260+2
	sta	<L260+2+32
	lda	<L260+1
	sta	<L260+1+32
	pld
	tsc
	clc
	adc	#L260+32
	tcs
	tya
	rtl
;}
	.line	865
	.endblock	865
L260	equ	48
L261	equ	9
	ends
	efunc
	.endfunc	865,9,48
	.line	865
	data
L179:
	db	$6B,$5F,$75,$73,$65,$72,$5F,$43,$72,$65,$61,$74,$65,$57,$69
	db	$6E,$64,$6F,$77,$3A,$00,$6B,$5F,$75,$73,$65,$72,$5F,$43,$72
	db	$65,$61,$74,$65,$57,$69,$6E,$64,$6F,$77,$3A,$00,$50,$72,$6F
	db	$63,$65,$73,$73,$20,$49,$64,$3A,$00
	ends
;
;
;PWINDOWEX k_user_CreateWindowEx(ULONG     style,
;						        LPCSTR    pClassName,
;						 	    LPCSTR    pWindowName,
;							    INT       x,
;							    INT       y,
;						 	    INT       nWidth,
;							    INT       nHeight,
;							    HWND      hWndParent,
;							    HMENU     hMenu,
;							    HINSTANCE hInstance)
;{
	.line	868
	.line	878
	WINMAN
	xdef	~~k_user_CreateWindowEx
	func
	.function	878
~~k_user_CreateWindowEx:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L281
	tcs
	phd
	tcd
style_0	set	4
pClassName_0	set	8
pWindowName_0	set	12
x_0	set	16
y_0	set	18
nWidth_0	set	20
nHeight_0	set	22
hWndParent_0	set	24
hMenu_0	set	28
hInstance_0	set	32
	.block	878
;
;	PFXNODE   	found = NULL;
;	PWINDOWEX   pWin = NULL;
;	PWINDOWEX   pParent = NULL;
;	PWNDCLASS 	wndClass = NULL;
;
;	k_debug_strings("k_user_CreateWindowEx:",(LPCHAR)pWindowName);
found_1	set	0
pWin_1	set	4
pParent_1	set	8
wndClass_1	set	12
	.sym	found,0,138,1,32,2
	.sym	pWin,4,138,1,32,28
	.sym	pParent,8,138,1,32,28
	.sym	wndClass,12,138,1,32,23
	.sym	style,4,18,6,32
	.sym	pClassName,8,142,6,32
	.sym	pWindowName,12,142,6,32
	.sym	x,16,5,6,16
	.sym	y,18,5,6,16
	.sym	nWidth,20,5,6,16
	.sym	nHeight,22,5,6,16
	.sym	hWndParent,24,129,6,32
	.sym	hMenu,28,129,6,32
	.sym	hInstance,32,129,6,32
	stz	<L282+found_1
	stz	<L282+found_1+2
	stz	<L282+pWin_1
	stz	<L282+pWin_1+2
	stz	<L282+pParent_1
	stz	<L282+pParent_1+2
	stz	<L282+wndClass_1
	stz	<L282+wndClass_1+2
	.line	885
	pei	<L281+pWindowName_0+2
	pei	<L281+pWindowName_0
	pea	#^L280
	pea	#<L280
	jsl	~~k_debug_strings
;
;	if(pClassName && pWindowName)
	.line	887
;	{
	lda	<L281+pClassName_0
	ora	<L281+pClassName_0+2
	bne	L284
	brl	L10050
L284:
	lda	<L281+pWindowName_0
	ora	<L281+pWindowName_0+2
	bne	L285
	brl	L10050
L285:
	.line	888
;		//pWindowName = strupr((LPCHAR)pWindowName); // temp fix for font def issue
;
;		found = k_nodelist_searchByName(_k_windowManager_WindowClassList,pClassName);
	.line	891
	pei	<L281+pClassName_0+2
	pei	<L281+pClassName_0
	lda	|~~_k_windowManager_WindowClassList+2
	pha
	lda	|~~_k_windowManager_WindowClassList
	pha
	jsl	~~k_nodelist_searchByName
	sta	<L282+found_1
	stx	<L282+found_1+2
;		if(found && found->data)
	.line	892
;		{
	lda	<L282+found_1
	ora	<L282+found_1+2
	bne	L286
	brl	L10051
L286:
	ldy	#$2
	lda	[<L282+found_1],Y
	ldy	#$4
	ora	[<L282+found_1],Y
	bne	L287
	brl	L10051
L287:
	.line	893
;			wndClass = (PWNDCLASS)found->data;
	.line	894
	ldy	#$2
	lda	[<L282+found_1],Y
	sta	<L282+wndClass_1
	ldy	#$4
	lda	[<L282+found_1],Y
	sta	<L282+wndClass_1+2
;
;			//k_debug_strings("k_user_CreateWindow:Found WndClass:",(LPVOID)wndClass->lpszClassName);
;
;			pWin = k_mem_allocate_heap(sizeof(WINDOW));
	.line	898
	pea	#<$15f
	jsl	~~k_mem_allocate_heap
	sta	<L282+pWin_1
	stx	<L282+pWin_1+2
;			if(pWin)
	.line	899
;			{
	lda	<L282+pWin_1
	ora	<L282+pWin_1+2
	bne	L288
	brl	L10052
L288:
	.line	900
;				memset(pWin,0,sizeof(WINDOWEX));
	.line	901
	pea	#<$152
	pea	#<$0
	pei	<L282+pWin_1+2
	pei	<L282+pWin_1
	jsl	~~memset
;				pWin->cbSize = sizeof(WINDOWEX);
	.line	902
	lda	#$152
	sta	[<L282+pWin_1]
;				pWin->style = style;
	.line	903
	lda	<L281+style_0
	ldy	#$2
	sta	[<L282+pWin_1],Y
	lda	<L281+style_0+2
	ldy	#$4
	sta	[<L282+pWin_1],Y
;				pWin->pParentWindow = hWndParent;
	.line	904
	lda	<L281+hWndParent_0
	ldy	#$110
	sta	[<L282+pWin_1],Y
	lda	<L281+hWndParent_0+2
	ldy	#$112
	sta	[<L282+pWin_1],Y
;				pWin->pWndClass = wndClass;
	.line	905
	lda	<L282+wndClass_1
	ldy	#$10c
	sta	[<L282+pWin_1],Y
	lda	<L282+wndClass_1+2
	ldy	#$10e
	sta	[<L282+pWin_1],Y
;				/*
;				strcpy(pWin->win_title,pWindowName);
;
;				pWin->win_x 		= x;
;				pWin->win_y 		= y;
;				pWin->win_width 	= nWidth;
;				pWin->win_height	= nHeight;
;
;				pWin->hMenu = hMenu;
;				pWin->pChildWindows = NULL;
;				pWin->pChildHitList = NULL;
;				pWin->isVisible 	= ((style & FXWS_VISIBLE) == FXWS_VISIBLE);
;
;				//k_debug_long("k_user_CreateWindow:sytle:",style);
;				//k_debug_long("k_user_CreateWindow:FXWS_VISIBLE:", FXWS_VISIBLE);
;				//k_debug_long("k_user_CreateWindow:style & FXWS_VISIBLE:",style & FXWS_VISIBLE);
;				//k_debug_integer("k_user_CreateWindow:isVisible:",pWin->isVisible);
;
;
;				pWin->clickable = k_mem_allocate_heap(sizeof(CLICKABLE));
;				if(pWin->clickable)
;				{
;					((PCLICKABLE)pWin->clickable)->area.x 		= pWin->win_x;
;					((PCLICKABLE)pWin->clickable)->area.y 		= pWin->win_y;
;					((PCLICKABLE)pWin->clickable)->area.height 	= pWin->win_height;
;					((PCLICKABLE)pWin->clickable)->area.width 	= pWin->win_width;
;				}
;
;				pWin->clientRect.x 		= pWin->wndRect.x		= pWin->win_x;
;				pWin->clientRect.y 		= pWin->wndRect.y		= pWin->win_y;
;				pWin->clientRect.width 	= pWin->wndRect.width	= pWin->win_width;
;				pWin->clientRect.height = pWin->wndRect.height 	= pWin->win_height;
;
;				//k_user_CopyRect((PRECT)&pWin->win_x,&(((PCLICKABLE)pWin->clickable)->area));
;				//k_user_CopyRect((PRECT)&pWin->win_x,&(pWin->clientRect));
;
;				k_debug_rect("WndRect:",&pWin->wndRect);
;				k_debug_rect("ClientRect:",&pWin->clientRect);
;				k_debug_rect("ClassicRect:",(PRECT)&pWin->win_x);
;
;				//strcpy(pWin->win_title,(LPCSTR)k_longtodec((ULONG)pWin,localBuffer));
;
;				//k_nodelist_addtolist(_k_windowManager_WindowObjectList,NL_TYPE_WINDOW_OBJ,(LPCSTR)k_longtodec((ULONG)pWin,localBuffer),pWin);
;				k_nodelist_naddtolist(_k_windowManager_WindowObjectList,NL_TYPE_WINDOW_OBJ,(ULONG)pWin,pWin);
;				//k_debug_nodelist(_k_windowManager_WindowObjectList->listhead->next);
;				*/
;
;
;				if(hWndParent)
	.line	954
;				{
	lda	<L281+hWndParent_0
	ora	<L281+hWndParent_0+2
	bne	L289
	brl	L10053
L289:
	.line	955
;					//k_debug_long("k_user_CreateWindow:k_add_child_window:hWndParent:",(ULONG)hWndParent);
;					k_add_child_window(k_getWindowFromHandle(hWndParent),(PWINDOW)pWin,k_update_hover_location);
	.line	957
	pea	#^~~k_update_hover_location
	pea	#<~~k_update_hover_location
	pei	<L282+pWin_1+2
	pei	<L282+pWin_1
	pei	<L281+hWndParent_0+2
	pei	<L281+hWndParent_0
	jsl	~~k_getWindowFromHandle
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_add_child_window
;				}
	.line	958
;
;				k_attach_mouse_detection((PWINDOW)pWin,k_update_hover_location);
L10053:
	.line	960
	pea	#^~~k_update_hover_location
	pea	#<~~k_update_hover_location
	pei	<L282+pWin_1+2
	pei	<L282+pWin_1
	jsl	~~k_attach_mouse_detection
;
;				k_send_window_message(k_getHandleFromWindow((PWINDOW)pWin),FX_CREATE_WINDOW,NULL,0);
	.line	962
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$ff03
	pei	<L282+pWin_1+2
	pei	<L282+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_send_window_message
;				k_send_window_message(k_getHandleFromWindow((PWINDOW)pWin),FX_DRAW_NONCLIENT,NULL,0);
	.line	963
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$fb01
	pei	<L282+pWin_1+2
	pei	<L282+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_send_window_message
;				k_send_window_message(k_getHandleFromWindow((PWINDOW)pWin),FX_DRAW_WINDOW,NULL,0);
	.line	964
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$fb00
	pei	<L282+pWin_1+2
	pei	<L282+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_send_window_message
;
;
;			}
	.line	967
;		}
L10052:
	.line	968
;	}
L10051:
	.line	969
;	return pWin;
L10050:
	.line	970
	ldx	<L282+pWin_1+2
	lda	<L282+pWin_1
L290:
	tay
	lda	<L281+2
	sta	<L281+2+32
	lda	<L281+1
	sta	<L281+1+32
	pld
	tsc
	clc
	adc	#L281+32
	tcs
	tya
	rtl
;}
	.line	971
	.endblock	971
L281	equ	20
L282	equ	5
	ends
	efunc
	.endfunc	971,5,20
	.line	971
	data
L280:
	db	$6B,$5F,$75,$73,$65,$72,$5F,$43,$72,$65,$61,$74,$65,$57,$69
	db	$6E,$64,$6F,$77,$45,$78,$3A,$00
	ends
;
;
;LPVOID	k_user_SetWindowData(HWND hWnd,UINT index,LPVOID data)
;{
	.line	974
	.line	975
	WINMAN
	xdef	~~k_user_SetWindowData
	func
	.function	975
~~k_user_SetWindowData:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L292
	tcs
	phd
	tcd
hWnd_0	set	4
index_0	set	8
data_0	set	10
	.block	975
;	LPVOID old = NULL;
;
;	if(hWnd)
old_1	set	0
	.sym	old,0,129,1,32
	.sym	hWnd,4,129,6,32
	.sym	index,8,16,6,16
	.sym	data,10,129,6,32
	stz	<L293+old_1
	stz	<L293+old_1+2
	.line	978
;	{
	lda	<L292+hWnd_0
	ora	<L292+hWnd_0+2
	bne	L295
	brl	L10054
L295:
	.line	979
;		if(index >= 0 && index < 4)
	.line	980
;		{
	lda	<L292+index_0
	cmp	#<$0
	bcs	L296
	brl	L10055
L296:
	lda	<L292+index_0
	cmp	#<$4
	bcc	L297
	brl	L10055
L297:
	.line	981
;			old = k_user_GetWindowData(hWnd,index);
	.line	982
	pei	<L292+index_0
	pei	<L292+hWnd_0+2
	pei	<L292+hWnd_0
	jsl	~~k_user_GetWindowData
	sta	<L293+old_1
	stx	<L293+old_1+2
;			k_getWindowFromHandle(hWnd)->clientData[index] = data;
	.line	983
	pei	<L292+hWnd_0+2
	pei	<L292+hWnd_0
	jsl	~~k_getWindowFromHandle
	sta	<R0
	stx	<R0+2
	lda	<L292+index_0
	sta	<R2
	stz	<R2+2
	pei	<R2+2
	pei	<R2
	lda	#$2
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R1
	stx	<R1+2
	clc
	lda	#$145
	adc	<R0
	sta	<R3
	lda	#$0
	adc	<R0+2
	sta	<R3+2
	clc
	lda	<R3
	adc	<R1
	sta	<R0
	lda	<R3+2
	adc	<R1+2
	sta	<R0+2
	lda	<L292+data_0
	sta	[<R0]
	lda	<L292+data_0+2
	ldy	#$2
	sta	[<R0],Y
;		}
	.line	984
;	}
L10055:
	.line	985
;	return old;
L10054:
	.line	986
	ldx	<L293+old_1+2
	lda	<L293+old_1
L298:
	tay
	lda	<L292+2
	sta	<L292+2+10
	lda	<L292+1
	sta	<L292+1+10
	pld
	tsc
	clc
	adc	#L292+10
	tcs
	tya
	rtl
;}
	.line	987
	.endblock	987
L292	equ	20
L293	equ	17
	ends
	efunc
	.endfunc	987,17,20
	.line	987
;
;LPVOID	k_user_GetWindowData(HWND hWnd,UINT index)
;{
	.line	989
	.line	990
	WINMAN
	xdef	~~k_user_GetWindowData
	func
	.function	990
~~k_user_GetWindowData:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L299
	tcs
	phd
	tcd
hWnd_0	set	4
index_0	set	8
	.block	990
;	LPVOID data = NULL;
;
;	if(hWnd)
data_1	set	0
	.sym	data,0,129,1,32
	.sym	hWnd,4,129,6,32
	.sym	index,8,16,6,16
	stz	<L300+data_1
	stz	<L300+data_1+2
	.line	993
;	{
	lda	<L299+hWnd_0
	ora	<L299+hWnd_0+2
	bne	L302
	brl	L10056
L302:
	.line	994
;		if(index >= 0 && index < 4)
	.line	995
;		{
	lda	<L299+index_0
	cmp	#<$0
	bcs	L303
	brl	L10057
L303:
	lda	<L299+index_0
	cmp	#<$4
	bcc	L304
	brl	L10057
L304:
	.line	996
;			data = k_getWindowFromHandle(hWnd)->clientData[index];
	.line	997
	pei	<L299+hWnd_0+2
	pei	<L299+hWnd_0
	jsl	~~k_getWindowFromHandle
	sta	<R0
	stx	<R0+2
	lda	<L299+index_0
	sta	<R2
	stz	<R2+2
	pei	<R2+2
	pei	<R2
	lda	#$2
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R1
	stx	<R1+2
	clc
	lda	#$145
	adc	<R0
	sta	<R3
	lda	#$0
	adc	<R0+2
	sta	<R3+2
	clc
	lda	<R3
	adc	<R1
	sta	<R0
	lda	<R3+2
	adc	<R1+2
	sta	<R0+2
	lda	[<R0]
	sta	<L300+data_1
	ldy	#$2
	lda	[<R0],Y
	sta	<L300+data_1+2
;		}
	.line	998
;	}
L10057:
	.line	999
;
;	return data;
L10056:
	.line	1001
	ldx	<L300+data_1+2
	lda	<L300+data_1
L305:
	tay
	lda	<L299+2
	sta	<L299+2+6
	lda	<L299+1
	sta	<L299+1+6
	pld
	tsc
	clc
	adc	#L299+6
	tcs
	tya
	rtl
;}
	.line	1002
	.endblock	1002
L299	equ	20
L300	equ	17
	ends
	efunc
	.endfunc	1002,17,20
	.line	1002
;
;void k_user_SetRect(PRECT prect,int x,int y,int width,int height)
;{
	.line	1004
	.line	1005
	WINMAN
	xdef	~~k_user_SetRect
	func
	.function	1005
~~k_user_SetRect:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L306
	tcs
	phd
	tcd
prect_0	set	4
x_0	set	8
y_0	set	10
width_0	set	12
height_0	set	14
	.block	1005
;	if(prect)
	.sym	prect,4,138,6,32,22
	.sym	x,8,5,6,16
	.sym	y,10,5,6,16
	.sym	width,12,5,6,16
	.sym	height,14,5,6,16
	.line	1006
;	{
	lda	<L306+prect_0
	ora	<L306+prect_0+2
	bne	L309
	brl	L10058
L309:
	.line	1007
;		prect->x = x;
	.line	1008
	lda	<L306+x_0
	sta	[<L306+prect_0]
;		prect->y = y;
	.line	1009
	lda	<L306+y_0
	ldy	#$2
	sta	[<L306+prect_0],Y
;		prect->width = width;
	.line	1010
	lda	<L306+width_0
	ldy	#$4
	sta	[<L306+prect_0],Y
;		prect->height = height;
	.line	1011
	lda	<L306+height_0
	ldy	#$6
	sta	[<L306+prect_0],Y
;	}
	.line	1012
;}
L10058:
	.line	1013
L310:
	lda	<L306+2
	sta	<L306+2+12
	lda	<L306+1
	sta	<L306+1+12
	pld
	tsc
	clc
	adc	#L306+12
	tcs
	rtl
	.endblock	1013
L306	equ	0
L307	equ	1
	ends
	efunc
	.endfunc	1013,1,0
	.line	1013
;
;void k_user_ClearRect(PRECT prect)
;{
	.line	1015
	.line	1016
	WINMAN
	xdef	~~k_user_ClearRect
	func
	.function	1016
~~k_user_ClearRect:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L311
	tcs
	phd
	tcd
prect_0	set	4
	.block	1016
;	if(prect)
	.sym	prect,4,138,6,32,22
	.line	1017
;	{
	lda	<L311+prect_0
	ora	<L311+prect_0+2
	bne	L314
	brl	L10059
L314:
	.line	1018
;		prect->x 	  = 0;
	.line	1019
	lda	#$0
	sta	[<L311+prect_0]
;		prect->y 	  = 0;
	.line	1020
	lda	#$0
	ldy	#$2
	sta	[<L311+prect_0],Y
;		prect->width  = 0;
	.line	1021
	lda	#$0
	ldy	#$4
	sta	[<L311+prect_0],Y
;		prect->height = 0;
	.line	1022
	lda	#$0
	ldy	#$6
	sta	[<L311+prect_0],Y
;	}
	.line	1023
;}
L10059:
	.line	1024
L315:
	lda	<L311+2
	sta	<L311+2+4
	lda	<L311+1
	sta	<L311+1+4
	pld
	tsc
	clc
	adc	#L311+4
	tcs
	rtl
	.endblock	1024
L311	equ	0
L312	equ	1
	ends
	efunc
	.endfunc	1024,1,0
	.line	1024
;
;
;void k_user_CopyRect(PRECT prectSrc,PRECT prectDest)
;{
	.line	1027
	.line	1028
	WINMAN
	xdef	~~k_user_CopyRect
	func
	.function	1028
~~k_user_CopyRect:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L316
	tcs
	phd
	tcd
prectSrc_0	set	4
prectDest_0	set	8
	.block	1028
;	if(prectSrc && prectDest)
	.sym	prectSrc,4,138,6,32,22
	.sym	prectDest,8,138,6,32,22
	.line	1029
;	{
	lda	<L316+prectSrc_0
	ora	<L316+prectSrc_0+2
	bne	L319
	brl	L10060
L319:
	lda	<L316+prectDest_0
	ora	<L316+prectDest_0+2
	bne	L320
	brl	L10060
L320:
	.line	1030
;		prectSrc->x 	= prectDest->x;
	.line	1031
	lda	[<L316+prectDest_0]
	sta	[<L316+prectSrc_0]
;		prectSrc->y 	= prectDest->y;
	.line	1032
	ldy	#$2
	lda	[<L316+prectDest_0],Y
	ldy	#$2
	sta	[<L316+prectSrc_0],Y
;		prectSrc->width = prectDest->width;
	.line	1033
	ldy	#$4
	lda	[<L316+prectDest_0],Y
	ldy	#$4
	sta	[<L316+prectSrc_0],Y
;		prectSrc->height= prectDest->height;
	.line	1034
	ldy	#$6
	lda	[<L316+prectDest_0],Y
	ldy	#$6
	sta	[<L316+prectSrc_0],Y
;	}
	.line	1035
;}
L10060:
	.line	1036
L321:
	lda	<L316+2
	sta	<L316+2+8
	lda	<L316+1
	sta	<L316+1+8
	pld
	tsc
	clc
	adc	#L316+8
	tcs
	rtl
	.endblock	1036
L316	equ	0
L317	equ	1
	ends
	efunc
	.endfunc	1036,1,0
	.line	1036
;
;
;HMENU k_user_CreateMenuResource()
;{
	.line	1039
	.line	1040
	WINMAN
	xdef	~~k_user_CreateMenuResource
	func
	.function	1040
~~k_user_CreateMenuResource:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L322
	tcs
	phd
	tcd
	.block	1040
;	PMENU pMenu = NULL;
;
;	//k_debug_strings("k_user_CreateMenuResource:","Enter");
;
;	pMenu = k_mem_allocate_heap(sizeof(MENU));
pMenu_1	set	0
	.sym	pMenu,0,138,1,32,31
	stz	<L323+pMenu_1
	stz	<L323+pMenu_1+2
	.line	1045
	pea	#<$1f
	jsl	~~k_mem_allocate_heap
	sta	<L323+pMenu_1
	stx	<L323+pMenu_1+2
;	memset(pMenu,0,sizeof(MENU));
	.line	1046
	pea	#<$1f
	pea	#<$0
	pei	<L323+pMenu_1+2
	pei	<L323+pMenu_1
	jsl	~~memset
;
;	pMenu->pCaption = NULL;//k_string_copy_string("@root");
	.line	1048
	lda	#$0
	ldy	#$f
	sta	[<L323+pMenu_1],Y
	lda	#$0
	ldy	#$11
	sta	[<L323+pMenu_1],Y
;	pMenu->width    = 0;
	.line	1049
	lda	#$0
	ldy	#$4
	sta	[<L323+pMenu_1],Y
;	pMenu->height   = 0;
	.line	1050
	lda	#$0
	ldy	#$6
	sta	[<L323+pMenu_1],Y
;	pMenu->subMenus = NULL;
	.line	1051
	lda	#$0
	ldy	#$13
	sta	[<L323+pMenu_1],Y
	lda	#$0
	ldy	#$15
	sta	[<L323+pMenu_1],Y
;
;	//k_debug_strings("k_user_CreateMenuResource:","Exit");
;
;	return (HMENU)pMenu;
	.line	1055
	ldx	<L323+pMenu_1+2
	lda	<L323+pMenu_1
L325:
	tay
	pld
	tsc
	clc
	adc	#L322
	tcs
	tya
	rtl
;}
	.line	1056
	.endblock	1056
L322	equ	4
L323	equ	1
	ends
	efunc
	.endfunc	1056,1,4
	.line	1056
;
;HMENU k_user_AddMenuItem(HMENU hMenu,LPCSTR menuCaption,UINT menuId)
;{
	.line	1058
	.line	1059
	WINMAN
	xdef	~~k_user_AddMenuItem
	func
	.function	1059
~~k_user_AddMenuItem:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L326
	tcs
	phd
	tcd
hMenu_0	set	4
menuCaption_0	set	8
menuId_0	set	12
	.block	1059
;	PMENU pMenu = NULL;
;	PMENU pRoot = (PMENU)hMenu;
;
;	//k_debug_strings("k_user_AddMenuItem:","Enter");
;
;	if(pRoot)
pMenu_1	set	0
pRoot_1	set	4
	.sym	pMenu,0,138,1,32,31
	.sym	pRoot,4,138,1,32,31
	.sym	hMenu,4,129,6,32
	.sym	menuCaption,8,142,6,32
	.sym	menuId,12,16,6,16
	stz	<L327+pMenu_1
	stz	<L327+pMenu_1+2
	lda	<L326+hMenu_0
	sta	<L327+pRoot_1
	lda	<L326+hMenu_0+2
	sta	<L327+pRoot_1+2
	.line	1065
;	{
	lda	<L327+pRoot_1
	ora	<L327+pRoot_1+2
	bne	L329
	brl	L10061
L329:
	.line	1066
;
;		pMenu = k_mem_allocate_heap(sizeof(MENU));
	.line	1068
	pea	#<$1f
	jsl	~~k_mem_allocate_heap
	sta	<L327+pMenu_1
	stx	<L327+pMenu_1+2
;		memset(pMenu,0,sizeof(MENU));
	.line	1069
	pea	#<$1f
	pea	#<$0
	pei	<L327+pMenu_1+2
	pei	<L327+pMenu_1
	jsl	~~memset
;		pMenu->itemId = menuId;
	.line	1070
	lda	<L326+menuId_0
	ldy	#$d
	sta	[<L327+pMenu_1],Y
;		pMenu->pCaption = k_string_copy_string(menuCaption);
	.line	1071
	pei	<L326+menuCaption_0+2
	pei	<L326+menuCaption_0
	jsl	~~k_string_copy_string
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$f
	sta	[<L327+pMenu_1],Y
	lda	<R0+2
	ldy	#$11
	sta	[<L327+pMenu_1],Y
;		pMenu->cx 	  = 0;
	.line	1072
	lda	#$0
	sta	[<L327+pMenu_1]
;		pMenu->cy	  = 0;
	.line	1073
	lda	#$0
	ldy	#$2
	sta	[<L327+pMenu_1],Y
;		pMenu->width  = 0;
	.line	1074
	lda	#$0
	ldy	#$4
	sta	[<L327+pMenu_1],Y
;		pMenu->height = 0;
	.line	1075
	lda	#$0
	ldy	#$6
	sta	[<L327+pMenu_1],Y
;
;		if(!pRoot->subMenus)
	.line	1077
;		{
	ldy	#$13
	lda	[<L327+pRoot_1],Y
	ldy	#$15
	ora	[<L327+pRoot_1],Y
	beq	L330
	brl	L10062
L330:
	.line	1078
;			pRoot->subMenus = k_nodelist_allocate_list("_menu_sub_item_list" ,k_deallocate_menu_resource);
	.line	1079
	pea	#^~~k_deallocate_menu_resource
	pea	#<~~k_deallocate_menu_resource
	pea	#^L291
	pea	#<L291
	jsl	~~k_nodelist_allocate_list
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$13
	sta	[<L327+pRoot_1],Y
	lda	<R0+2
	ldy	#$15
	sta	[<L327+pRoot_1],Y
;		}
	.line	1080
;
;		if(pRoot->subMenus)
L10062:
	.line	1082
;		{
	ldy	#$13
	lda	[<L327+pRoot_1],Y
	ldy	#$15
	ora	[<L327+pRoot_1],Y
	bne	L331
	brl	L10063
L331:
	.line	1083
;			k_nodelist_addtolist(pRoot->subMenus,NL_TYPE_WINDOW_MENU,pMenu->pCaption,pMenu);
	.line	1084
	pei	<L327+pMenu_1+2
	pei	<L327+pMenu_1
	ldy	#$11
	lda	[<L327+pMenu_1],Y
	pha
	ldy	#$f
	lda	[<L327+pMenu_1],Y
	pha
	pea	#<$3
	ldy	#$15
	lda	[<L327+pRoot_1],Y
	pha
	ldy	#$13
	lda	[<L327+pRoot_1],Y
	pha
	jsl	~~k_nodelist_addtolist
;		}
	.line	1085
;
;	}
L10063:
	.line	1087
;
;	//k_debug_strings("k_user_AddMenuItem:","Exit");
;
;	return pMenu;
L10061:
	.line	1091
	ldx	<L327+pMenu_1+2
	lda	<L327+pMenu_1
L332:
	tay
	lda	<L326+2
	sta	<L326+2+10
	lda	<L326+1
	sta	<L326+1+10
	pld
	tsc
	clc
	adc	#L326+10
	tcs
	tya
	rtl
;}
	.line	1092
	.endblock	1092
L326	equ	12
L327	equ	5
	ends
	efunc
	.endfunc	1092,5,12
	.line	1092
	data
L291:
	db	$5F,$6D,$65,$6E,$75,$5F,$73,$75,$62,$5F,$69,$74,$65,$6D,$5F
	db	$6C,$69,$73,$74,$00
	ends
;
;PWINDOW	k_user_CreateMenu(HWND      hWndParent,
;						  HMENU     hMenu,
;						  HINSTANCE hInstance)
;{
	.line	1094
	.line	1097
	WINMAN
	xdef	~~k_user_CreateMenu
	func
	.function	1097
~~k_user_CreateMenu:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L334
	tcs
	phd
	tcd
hWndParent_0	set	4
hMenu_0	set	8
hInstance_0	set	12
	.block	1097
;
;	PFXNODE   found = NULL;
;	PFXNODE   new = NULL;
;	PWINDOW   pWin = NULL;
;	PWNDCLASS wndClass = NULL;
;	PWINDOW   pParent = NULL;
;	CHAR localBuffer[32];
;
;	//k_debug_pointer("k_user_CreateMenu:Parent hWnd:",hWndParent);
;	//k_debug_pointer("k_user_CreateMenu:DesktopWindow:",k_user_getDesktopWindow());
;
;
;
;
;	found = k_nodelist_searchByName(_k_windowManager_WindowClassList,"menuWindowClass");
found_1	set	0
new_1	set	4
pWin_1	set	8
wndClass_1	set	12
pParent_1	set	16
localBuffer_1	set	20
	.sym	found,0,138,1,32,2
	.sym	new,4,138,1,32,2
	.sym	pWin,8,138,1,32,27
	.sym	wndClass,12,138,1,32,23
	.sym	pParent,16,138,1,32,27
	.sym	localBuffer,20,110,1,0,32
	.sym	hWndParent,4,129,6,32
	.sym	hMenu,8,129,6,32
	.sym	hInstance,12,129,6,32
	stz	<L335+found_1
	stz	<L335+found_1+2
	stz	<L335+new_1
	stz	<L335+new_1+2
	stz	<L335+pWin_1
	stz	<L335+pWin_1+2
	stz	<L335+wndClass_1
	stz	<L335+wndClass_1+2
	stz	<L335+pParent_1
	stz	<L335+pParent_1+2
	.line	1112
	pea	#^L333
	pea	#<L333
	lda	|~~_k_windowManager_WindowClassList+2
	pha
	lda	|~~_k_windowManager_WindowClassList
	pha
	jsl	~~k_nodelist_searchByName
	sta	<L335+found_1
	stx	<L335+found_1+2
;	if(found && found->data)
	.line	1113
;	{
	lda	<L335+found_1
	ora	<L335+found_1+2
	bne	L337
	brl	L10064
L337:
	ldy	#$2
	lda	[<L335+found_1],Y
	ldy	#$4
	ora	[<L335+found_1],Y
	bne	L338
	brl	L10064
L338:
	.line	1114
;		wndClass = (PWNDCLASS)found->data;
	.line	1115
	ldy	#$2
	lda	[<L335+found_1],Y
	sta	<L335+wndClass_1
	ldy	#$4
	lda	[<L335+found_1],Y
	sta	<L335+wndClass_1+2
;
;		//k_debug_strings("k_user_CreateMenu:Found WndClass:",(LPVOID)wndClass->lpszClassName);
;
;		pWin = k_mem_allocate_heap(sizeof(WINDOW));
	.line	1119
	pea	#<$15f
	jsl	~~k_mem_allocate_heap
	sta	<L335+pWin_1
	stx	<L335+pWin_1+2
;		if(pWin)
	.line	1120
;		{
	lda	<L335+pWin_1
	ora	<L335+pWin_1+2
	bne	L339
	brl	L10065
L339:
	.line	1121
;			pParent = k_getWindowFromHandle(hWndParent);
	.line	1122
	pei	<L334+hWndParent_0+2
	pei	<L334+hWndParent_0
	jsl	~~k_getWindowFromHandle
	sta	<L335+pParent_1
	stx	<L335+pParent_1+2
;
;			memset(pWin,0,sizeof(WINDOW));
	.line	1124
	pea	#<$15f
	pea	#<$0
	pei	<L335+pWin_1+2
	pei	<L335+pWin_1
	jsl	~~memset
;			pWin->cbSize = sizeof(WINDOW);
	.line	1125
	lda	#$15f
	sta	[<L335+pWin_1]
;
;			if(k_exec_get_current_process())
	.line	1127
;			{
	jsl	~~k_exec_get_current_process
	sta	<R0
	stx	<R0+2
	lda	<R0
	ora	<R0+2
	bne	L340
	brl	L10066
L340:
	.line	1128
;				pWin->procid = k_exec_get_current_process()->procId;
	.line	1129
	jsl	~~k_exec_get_current_process
	sta	<R0
	stx	<R0+2
	ldy	#$2
	lda	[<R0],Y
	ldy	#$128
	sta	[<L335+pWin_1],Y
	ldy	#$4
	lda	[<R0],Y
	ldy	#$12a
	sta	[<L335+pWin_1],Y
;			}
	.line	1130
;			else
	brl	L10067
L10066:
;			{
	.line	1132
;				if(hWndParent)
	.line	1133
;					pWin->procid = k_getWindowFromHandle(hWndParent)->procid;
	lda	<L334+hWndParent_0
	ora	<L334+hWndParent_0+2
	bne	L341
	brl	L10068
L341:
	.line	1134
	pei	<L334+hWndParent_0+2
	pei	<L334+hWndParent_0
	jsl	~~k_getWindowFromHandle
	sta	<R0
	stx	<R0+2
	ldy	#$128
	lda	[<R0],Y
	ldy	#$128
	sta	[<L335+pWin_1],Y
	ldy	#$12a
	lda	[<R0],Y
	ldy	#$12a
	sta	[<L335+pWin_1],Y
;			}
L10068:
	.line	1135
L10067:
;
;			k_debug_string("k_user_CreateMenu\r\n");
	.line	1137
	pea	#^L333+16
	pea	#<L333+16
	jsl	~~k_debug_string
;			k_debug_long("Process Id:",(ULONG)pWin->procid);
	.line	1138
	ldy	#$12a
	lda	[<L335+pWin_1],Y
	pha
	ldy	#$128
	lda	[<L335+pWin_1],Y
	pha
	pea	#^L333+36
	pea	#<L333+36
	jsl	~~k_debug_long
;
;			pWin->pParentWindow = hWndParent;
	.line	1140
	lda	<L334+hWndParent_0
	ldy	#$130
	sta	[<L335+pWin_1],Y
	lda	<L334+hWndParent_0+2
	ldy	#$132
	sta	[<L335+pWin_1],Y
;			pWin->pWndClass 	= wndClass;
	.line	1141
	lda	<L335+wndClass_1
	ldy	#$12c
	sta	[<L335+pWin_1],Y
	lda	<L335+wndClass_1+2
	ldy	#$12e
	sta	[<L335+pWin_1],Y
;			//strcpy(pWin->win_title,(LPCSTR)k_longtodec((ULONG)pWin,localBuffer));
;			strcpy(pWin->win_title,"#menubar");
	.line	1143
	pea	#^L333+48
	pea	#<L333+48
	clc
	lda	#$d4
	adc	<L335+pWin_1
	sta	<R0
	lda	#$0
	adc	<L335+pWin_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~strcpy
;			pWin->win_x		 = 0;
	.line	1144
	lda	#$0
	ldy	#$8
	sta	[<L335+pWin_1],Y
;			pWin->win_y 	 = 0;
	.line	1145
	lda	#$0
	ldy	#$a
	sta	[<L335+pWin_1],Y
;			pWin->win_width  = k_user_getSystemMetric(SM_CXMENUSIZE);
	.line	1146
	pea	#<$36
	jsl	~~k_user_getSystemMetric
	ldy	#$c
	sta	[<L335+pWin_1],Y
;			pWin->win_height = k_user_getSystemMetric(SM_CYMENUSIZE);
	.line	1147
	pea	#<$37
	jsl	~~k_user_getSystemMetric
	ldy	#$e
	sta	[<L335+pWin_1],Y
;			pWin->hMenu 	 = hMenu;
	.line	1148
	lda	<L334+hMenu_0
	ldy	#$134
	sta	[<L335+pWin_1],Y
	lda	<L334+hMenu_0+2
	ldy	#$136
	sta	[<L335+pWin_1],Y
;			pWin->clickable  = k_mem_allocate_heap(sizeof(CLICKABLE));
	.line	1149
	pea	#<$b
	jsl	~~k_mem_allocate_heap
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$d0
	sta	[<L335+pWin_1],Y
	lda	<R0+2
	ldy	#$d2
	sta	[<L335+pWin_1],Y
;			if(pWin->clickable)
	.line	1150
;			{
	ldy	#$d0
	lda	[<L335+pWin_1],Y
	ldy	#$d2
	ora	[<L335+pWin_1],Y
	bne	L342
	brl	L10069
L342:
	.line	1151
;				((PCLICKABLE)pWin->clickable)->area.x 		= pWin->win_x;
	.line	1152
	ldy	#$d0
	lda	[<L335+pWin_1],Y
	sta	<R0
	ldy	#$d2
	lda	[<L335+pWin_1],Y
	sta	<R0+2
	ldy	#$8
	lda	[<L335+pWin_1],Y
	sta	[<R0]
;				((PCLICKABLE)pWin->clickable)->area.y 		= pWin->win_y;
	.line	1153
	ldy	#$d0
	lda	[<L335+pWin_1],Y
	sta	<R0
	ldy	#$d2
	lda	[<L335+pWin_1],Y
	sta	<R0+2
	ldy	#$a
	lda	[<L335+pWin_1],Y
	ldy	#$2
	sta	[<R0],Y
;				((PCLICKABLE)pWin->clickable)->area.height 	= pWin->win_height;
	.line	1154
	ldy	#$d0
	lda	[<L335+pWin_1],Y
	sta	<R0
	ldy	#$d2
	lda	[<L335+pWin_1],Y
	sta	<R0+2
	ldy	#$e
	lda	[<L335+pWin_1],Y
	ldy	#$6
	sta	[<R0],Y
;				((PCLICKABLE)pWin->clickable)->area.width 	= pWin->win_width;
	.line	1155
	ldy	#$d0
	lda	[<L335+pWin_1],Y
	sta	<R0
	ldy	#$d2
	lda	[<L335+pWin_1],Y
	sta	<R0+2
	ldy	#$c
	lda	[<L335+pWin_1],Y
	ldy	#$4
	sta	[<R0],Y
;			}
	.line	1156
;
;			k_debug_strings("k_user_CreateMenu:F","After clickable");
L10069:
	.line	1158
	pea	#^L333+77
	pea	#<L333+77
	pea	#^L333+57
	pea	#<L333+57
	jsl	~~k_debug_strings
;
;			((PMENU)hMenu)->cx 		= pWin->win_x;
	.line	1160
	ldy	#$8
	lda	[<L335+pWin_1],Y
	sta	[<L334+hMenu_0]
;			((PMENU)hMenu)->cy 		= pWin->win_y;
	.line	1161
	ldy	#$a
	lda	[<L335+pWin_1],Y
	ldy	#$2
	sta	[<L334+hMenu_0],Y
;			((PMENU)hMenu)->height 	= pWin->win_height;
	.line	1162
	ldy	#$e
	lda	[<L335+pWin_1],Y
	ldy	#$6
	sta	[<L334+hMenu_0],Y
;			((PMENU)hMenu)->width 	= pWin->win_width;
	.line	1163
	ldy	#$c
	lda	[<L335+pWin_1],Y
	ldy	#$4
	sta	[<L334+hMenu_0],Y
;
;
;			if(pParent)
	.line	1166
;				pWin->isVisible = pParent->isVisible;
	lda	<L335+pParent_1
	ora	<L335+pParent_1+2
	bne	L343
	brl	L10070
L343:
	.line	1167
	sep	#$20
	longa	off
	ldy	#$140
	lda	[<L335+pParent_1],Y
	ldy	#$140
	sta	[<L335+pWin_1],Y
	rep	#$20
	longa	on
;
;
;			k_add_child_window(pParent,pWin,k_update_hover_location);//k_menuHitDetected);
L10070:
	.line	1170
	pea	#^~~k_update_hover_location
	pea	#<~~k_update_hover_location
	pei	<L335+pWin_1+2
	pei	<L335+pWin_1
	pei	<L335+pParent_1+2
	pei	<L335+pParent_1
	jsl	~~k_add_child_window
;
;			//k_debug_strings("k_user_CreateMenu:F","After k_add_child_window");
;
;			k_nodelist_naddtolist(_k_windowManager_WindowObjectList,NL_TYPE_WINDOW_OBJ,(ULONG)k_getHandleFromWindow(pWin),pWin);
	.line	1174
	pei	<L335+pWin_1+2
	pei	<L335+pWin_1
	pei	<L335+pWin_1+2
	pei	<L335+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R0
	stx	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#<$2
	lda	|~~_k_windowManager_WindowObjectList+2
	pha
	lda	|~~_k_windowManager_WindowObjectList
	pha
	jsl	~~k_nodelist_naddtolist
;
;			//k_debug_strings("k_user_CreateMenu:F","After k_nodelist_addtolist");
;
;			k_send_window_message(k_getHandleFromWindow(pWin),FX_CREATE_WINDOW,NULL,0);
	.line	1178
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$ff03
	pei	<L335+pWin_1+2
	pei	<L335+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_send_window_message
;
;			//k_debug_strings("k_user_CreateMenu:F","After k_send_window_message");
;		}
	.line	1181
;	}
L10065:
	.line	1182
;	return pWin;
L10064:
	.line	1183
	ldx	<L335+pWin_1+2
	lda	<L335+pWin_1
L344:
	tay
	lda	<L334+2
	sta	<L334+2+12
	lda	<L334+1
	sta	<L334+1+12
	pld
	tsc
	clc
	adc	#L334+12
	tcs
	tya
	rtl
;}
	.line	1184
	.endblock	1184
L334	equ	56
L335	equ	5
	ends
	efunc
	.endfunc	1184,5,56
	.line	1184
	data
L333:
	db	$6D,$65,$6E,$75,$57,$69,$6E,$64,$6F,$77,$43,$6C,$61,$73,$73
	db	$00,$6B,$5F,$75,$73,$65,$72,$5F,$43,$72,$65,$61,$74,$65,$4D
	db	$65,$6E,$75,$0D,$0A,$00,$50,$72,$6F,$63,$65,$73,$73,$20,$49
	db	$64,$3A,$00,$23,$6D,$65,$6E,$75,$62,$61,$72,$00,$6B,$5F,$75
	db	$73,$65,$72,$5F,$43,$72,$65,$61,$74,$65,$4D,$65,$6E,$75,$3A
	db	$46,$00,$41,$66,$74,$65,$72,$20,$63,$6C,$69,$63,$6B,$61,$62
	db	$6C,$65,$00
	ends
;
;BOOL menuWindowProc(PFXOSMESSAGE pMsg)
;{
	.line	1186
	.line	1187
	WINMAN
	xdef	~~menuWindowProc
	func
	.function	1187
~~menuWindowProc:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L346
	tcs
	phd
	tcd
pMsg_0	set	4
	.block	1187
;	HWND hWnd = NULL;
;	PWINDOW pWin = NULL;
;	PFXPROCESS p = NULL;
;	PFXSTRING  fxstr = NULL;
;	LPCHAR title = NULL;
;	UCHAR localBuffer[16];
;	PFXNODE node = NULL;
;	RECT rect;
;	if(pMsg!=NULL)
hWnd_1	set	0
pWin_1	set	4
p_1	set	8
fxstr_1	set	12
title_1	set	16
localBuffer_1	set	20
node_1	set	36
rect_1	set	40
	.sym	hWnd,0,129,1,32
	.sym	pWin,4,138,1,32,27
	.sym	p,8,138,1,32,17
	.sym	fxstr,12,138,1,32,50
	.sym	title,16,142,1,32
	.sym	localBuffer,20,110,1,0,16
	.sym	node,36,138,1,32,2
	.sym	rect,40,10,1,64,22
	.sym	pMsg,4,138,6,32,13
	stz	<L347+hWnd_1
	stz	<L347+hWnd_1+2
	stz	<L347+pWin_1
	stz	<L347+pWin_1+2
	stz	<L347+p_1
	stz	<L347+p_1+2
	stz	<L347+fxstr_1
	stz	<L347+fxstr_1+2
	stz	<L347+title_1
	stz	<L347+title_1+2
	stz	<L347+node_1
	stz	<L347+node_1+2
	.line	1196
;	{
	lda	<L346+pMsg_0
	ora	<L346+pMsg_0+2
	bne	L349
	brl	L10071
L349:
	.line	1197
;		p = k_exec_get_current_process();
	.line	1198
	jsl	~~k_exec_get_current_process
	sta	<L347+p_1
	stx	<L347+p_1+2
;
;		pWin = k_getWindowFromHandle(pMsg->hwnd);
	.line	1200
	ldy	#$c
	lda	[<L346+pMsg_0],Y
	pha
	ldy	#$a
	lda	[<L346+pMsg_0],Y
	pha
	jsl	~~k_getWindowFromHandle
	sta	<L347+pWin_1
	stx	<L347+pWin_1+2
;
;		//k_debug_long("consoleWindowProc::ProcessId:",p->procId);
;
;		switch(pMsg->type)
	.line	1204
	ldy	#$8
	lda	[<L346+pMsg_0],Y
	brl	L10072
;		{
	.line	1205
;		case FX_CREATE_WINDOW:
	.line	1206
L10074:
;			k_debug_string("menuWindowProc::FX_CREATE_WINDOW\r\n");
	.line	1207
	pea	#^L345
	pea	#<L345
	jsl	~~k_debug_string
;			//k_debug_long("menuWindowProc::heap:",umm_free_heap_size());
;			//k_debug_integer("menuWindowProc::MessageId:",pMsg->type);
;
;			pWin->windowData = k_mem_allocate_heap(sizeof(MENUANCHOR));
	.line	1211
	pea	#<$12
	jsl	~~k_mem_allocate_heap
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$141
	sta	[<L347+pWin_1],Y
	lda	<R0+2
	ldy	#$143
	sta	[<L347+pWin_1],Y
;			((PMENUANCHOR)pWin->windowData)->renderLayoutX = 3 * FONTW;
	.line	1212
	ldy	#$141
	lda	[<L347+pWin_1],Y
	sta	<R0
	ldy	#$143
	lda	[<L347+pWin_1],Y
	sta	<R0+2
	jsl	~~k_font_getFontWidth
	sta	<R1
	lda	<R1
	asl	A
	adc	<R1
	ldy	#$4
	sta	[<R0],Y
;			((PMENUANCHOR)pWin->windowData)->renderLayoutY = 2;
	.line	1213
	ldy	#$141
	lda	[<L347+pWin_1],Y
	sta	<R0
	ldy	#$143
	lda	[<L347+pWin_1],Y
	sta	<R0+2
	lda	#$2
	ldy	#$6
	sta	[<R0],Y
;
;			//k_debug_pointer("menuWindowProc::pWin->hMenu:",pWin->hMenu);
;			if(pWin->hMenu)
	.line	1216
;			{
	ldy	#$134
	lda	[<L347+pWin_1],Y
	ldy	#$136
	ora	[<L347+pWin_1],Y
	bne	L350
	brl	L10075
L350:
	.line	1217
;
;				k_nodelist_foreach_type(((PMENU)pWin->hMenu)->subMenus,
	.line	1219
;										NL_TYPE_WINDOW_MENU,
;										pMsg->hwnd,
;										k_iterate_menus);
	pea	#^~~k_iterate_menus
	pea	#<~~k_iterate_menus
	ldy	#$c
	lda	[<L346+pMsg_0],Y
	pha
	ldy	#$a
	lda	[<L346+pMsg_0],Y
	pha
	pea	#<$3
	ldy	#$134
	lda	[<L347+pWin_1],Y
	sta	<R0
	ldy	#$136
	lda	[<L347+pWin_1],Y
	sta	<R0+2
	ldy	#$15
	lda	[<R0],Y
	pha
	ldy	#$13
	lda	[<R0],Y
	pha
	jsl	~~k_nodelist_foreach_type
;
;
;				if(((PMENU)pWin->hMenu)->subMenus)
	.line	1225
;				{
	ldy	#$134
	lda	[<L347+pWin_1],Y
	sta	<R0
	ldy	#$136
	lda	[<L347+pWin_1],Y
	sta	<R0+2
	ldy	#$13
	lda	[<R0],Y
	ldy	#$15
	ora	[<R0],Y
	bne	L351
	brl	L10076
L351:
	.line	1226
;					k_vdraw_ui_menu_ex( pWin->win_x,
	.line	1227
;										pWin->win_y,
;										pWin->win_width,
;										pWin->win_height,
;										NULL, //"", //((PFXSTRING)((PMENU)pWin->hMenu)->subMenus->listData)->buffer,
;										k_getUIGadgetColor(),
;										k_getUIMenuColor(),
;										BITMAP_BACK);
	pea	#<$10
	jsl	~~k_getUIMenuColor
	pha
	jsl	~~k_getUIGadgetColor
	pha
	pea	#^$0
	pea	#<$0
	ldy	#$e
	lda	[<L347+pWin_1],Y
	pha
	ldy	#$c
	lda	[<L347+pWin_1],Y
	pha
	ldy	#$a
	lda	[<L347+pWin_1],Y
	pha
	ldy	#$8
	lda	[<L347+pWin_1],Y
	pha
	jsl	~~k_vdraw_ui_menu_ex
;
;					//k_put_wingadget_point(WINICON_TITLE_BCLOSE,pWin->win_x + 2,pWin->win_y + 2 ,k_getUIGadgetColor());
;
;					k_draw_text_point_with_font_ex("\x80\x81",(LPCSTR)k_user_getFontClass("AMIGO8x8"),pWin->win_x + 2,pWin->win_y + 2,k_getUIGadgetColor(),BITMAP_BACK);
	.line	1238
	pea	#<$10
	jsl	~~k_getUIGadgetColor
	pha
	clc
	lda	#$2
	ldy	#$a
	adc	[<L347+pWin_1],Y
	pha
	clc
	lda	#$2
	ldy	#$8
	adc	[<L347+pWin_1],Y
	pha
	pea	#^L345+38
	pea	#<L345+38
	jsl	~~k_user_getFontClass
	sta	<R0
	stx	<R0+2
	phx
	pha
	pea	#^L345+35
	pea	#<L345+35
	jsl	~~k_draw_text_point_with_font_ex
;					//k_draw_text_point_with_font_ex("\x80\x81",BM437AMIGO8x8,pWin->win_x + 2,pWin->win_y + 2,k_getUIGadgetColor(),BITMAP_BACK);
;
;					if(pWin->hMenu && ((PMENU)pWin->hMenu)->subMenus)
	.line	1241
;					{
	ldy	#$134
	lda	[<L347+pWin_1],Y
	ldy	#$136
	ora	[<L347+pWin_1],Y
	bne	L352
	brl	L10077
L352:
	ldy	#$134
	lda	[<L347+pWin_1],Y
	sta	<R0
	ldy	#$136
	lda	[<L347+pWin_1],Y
	sta	<R0+2
	ldy	#$13
	lda	[<R0],Y
	ldy	#$15
	ora	[<R0],Y
	bne	L353
	brl	L10077
L353:
	.line	1242
;						//((PMENU)pWin->hMenu)->hWndOwner = pWin->pParentWindow; // temp for a test
;						//k_debug_strings("menuWindowProc::FX_MOUSE_ENTER:hWndOwner:title:", k_getWindowFromHandle(pWin->pParentWindow)->win_title );
;
;
;						_k_user_send_child_message(pWin,FX_SHOW_WINDOW,NULL,0);
	.line	1247
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$fb05
	pei	<L347+pWin_1+2
	pei	<L347+pWin_1
	jsl	~~_k_user_send_child_message
;
;						//fxstr = k_fxstring_init(128);
;
;						//k_debug_strings("menuWindowProc::FX_CREATE_WINDOW:fxstr:",fxstr->buffer);
;						//((PMENU)pWin->hMenu)->subMenus->listData = fxstr;
;						//k_debug_strings("menuWindowProc::FX_CREATE_WINDOW:title:",title);
;					}
	.line	1254
;
;
;				}
L10077:
	.line	1257
;
;
;
;				//k_draw_menu(pWin->hMenu,15,3);
;
;			}
L10076:
	.line	1263
;			//k_debug_string("menuWindowProc::FX_CREATE_WINDOW:k_vdraw_ui_menu\r\n");
;			break;
L10075:
	.line	1265
	brl	L10073
;		case FX_REDRAW_WINDOW:
	.line	1266
L10078:
;			k_debug_string("menuWindowProc::FX_REDRAW_WINDOW\r\n");
	.line	1267
	pea	#^L345+47
	pea	#<L345+47
	jsl	~~k_debug_string
;			break;
	.line	1268
	brl	L10073
;		case FX_PROCESS_TIMER:
	.line	1269
L10079:
;			//k_debug_string("menuWindowProc::FX_PROCESS_TIMER\r\n");
;
;			hWnd = k_user_findWindow("#menubar");
	.line	1272
	pea	#^L345+82
	pea	#<L345+82
	jsl	~~k_user_findWindow
	sta	<L347+hWnd_1
	stx	<L347+hWnd_1+2
;			rect.x = k_getWindowFromHandle(hWnd)->win_width - (15 * FONTW);
	.line	1273
	jsl	~~k_font_getFontWidth
	sta	<R0
	lda	<R0
	ldx	#<$f
	xref	~~~mul
	jsl	~~~mul
	sta	<R0
	pei	<L347+hWnd_1+2
	pei	<L347+hWnd_1
	jsl	~~k_getWindowFromHandle
	sta	<R1
	stx	<R1+2
	sec
	ldy	#$c
	lda	[<R1],Y
	sbc	<R0
	sta	<L347+rect_1
;			rect.y = 2;
	.line	1274
	lda	#$2
	sta	<L347+rect_1+2
;			k_user_DrawWindowTextToPointWithFont(hWnd,"\xAF\xAF\xAF\xAF\xAF\xAF\xAF\xAF",k_getUIMenuColor(),&rect,(LPCSTR)k_user_getFontClass("FXOS8x8"));
	.line	1275
	pea	#^L345+100
	pea	#<L345+100
	jsl	~~k_user_getFontClass
	sta	<R0
	stx	<R0+2
	phx
	pha
	pea	#0
	clc
	tdc
	adc	#<L347+rect_1
	pha
	jsl	~~k_getUIMenuColor
	pha
	pea	#^L345+91
	pea	#<L345+91
	pei	<L347+hWnd_1+2
	pei	<L347+hWnd_1
	jsl	~~k_user_DrawWindowTextToPointWithFont
;
;			rect.x = k_getWindowFromHandle(hWnd)->win_width - (15 * FONTW);
	.line	1277
	jsl	~~k_font_getFontWidth
	sta	<R0
	lda	<R0
	ldx	#<$f
	xref	~~~mul
	jsl	~~~mul
	sta	<R0
	pei	<L347+hWnd_1+2
	pei	<L347+hWnd_1
	jsl	~~k_getWindowFromHandle
	sta	<R1
	stx	<R1+2
	sec
	ldy	#$c
	lda	[<R1],Y
	sbc	<R0
	sta	<L347+rect_1
;			rect.y = 2;
	.line	1278
	lda	#$2
	sta	<L347+rect_1+2
;			k_user_DrawWindowTextToPointWithFont(hWnd,k_get_localtime_string(localBuffer),k_getUIGadgetColor(),&rect,(LPCSTR)k_user_getFontClass("TINYTYPE8x8"));
	.line	1279
	pea	#^L345+108
	pea	#<L345+108
	jsl	~~k_user_getFontClass
	sta	<R0
	stx	<R0+2
	phx
	pha
	pea	#0
	clc
	tdc
	adc	#<L347+rect_1
	pha
	jsl	~~k_getUIGadgetColor
	pha
	pea	#0
	clc
	tdc
	adc	#<L347+localBuffer_1
	pha
	jsl	~~k_get_localtime_string
	sta	<R1
	stx	<R1+2
	phx
	pha
	pei	<L347+hWnd_1+2
	pei	<L347+hWnd_1
	jsl	~~k_user_DrawWindowTextToPointWithFont
;
;
;			break;
	.line	1282
	brl	L10073
;		case FX_LBUTTON_DOWN:
	.line	1283
L10080:
;			if(pMsg->type!=FX_PROCESS)
	.line	1284
;			{
	ldy	#$8
	lda	[<L346+pMsg_0],Y
	cmp	#<$ff00
	bne	L354
	brl	L10081
L354:
	.line	1285
;				//k_debug_integer("consoleWindowProc::ProcessId:",p->procId);
;				//k_debug_integer("menuWindowProc::FX_LBUTTON_DOWN:X:", *((INT*)&pMsg->data[1])  );
;				//k_debug_integer("menuWindowProc::FX_LBUTTON_DOWN:Y:", *((INT*)&pMsg->data[3])  );
;
;				//k_debug_pointer("menuWindowProc::pChildHitList:",pWin->pChildHitList);
;
;				//if(pWin->pChildHitList)
;				//	k_debug_nodelist_with_data( pWin->pChildHitList->listhead, debug_window_node );
;
;
;				//k_shadow_bitblt(0,0, 640, 480, 1,1);
;
;			}
	.line	1298
;			break;
L10081:
	.line	1299
	brl	L10073
;
;		case FX_MOUSE_ENTER:
	.line	1301
L10082:
;			k_debug_string("menuWindowProc::FX_MOUSE_ENTER\r\n");
	.line	1302
	pea	#^L345+120
	pea	#<L345+120
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
	.line	1332
	brl	L10073
;		case FX_MOUSE_EXIT:
	.line	1333
L10083:
;			k_debug_string("menuWindowProc::FX_MOUSE_EXIT\r\n");
	.line	1334
	pea	#^L345+153
	pea	#<L345+153
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
	.line	1361
	brl	L10073
;
;		default:
	.line	1363
L10084:
;			break;
	.line	1364
	brl	L10073
;		}
	.line	1365
L10072:
	xref	~~~swt
	jsl	~~~swt
	dw	6
	dw	3841
	dw	L10082-1
	dw	3842
	dw	L10083-1
	dw	3844
	dw	L10080-1
	dw	64263
	dw	L10078-1
	dw	65283
	dw	L10074-1
	dw	65521
	dw	L10079-1
	dw	L10084-1
L10073:
;	}
	.line	1366
;
;	return TRUE;
L10071:
	.line	1368
	lda	#$1
L355:
	tay
	lda	<L346+2
	sta	<L346+2+4
	lda	<L346+1
	sta	<L346+1+4
	pld
	tsc
	clc
	adc	#L346+4
	tcs
	tya
	rtl
;}
	.line	1369
	.endblock	1369
L346	equ	56
L347	equ	9
	ends
	efunc
	.endfunc	1369,9,56
	.line	1369
	data
L345:
	db	$6D,$65,$6E,$75,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A
	db	$3A,$46,$58,$5F,$43,$52,$45,$41,$54,$45,$5F,$57,$49,$4E,$44
	db	$4F,$57,$0D,$0A,$00,$FFFFFF80,$FFFFFF81,$00,$41,$4D,$49,$47,$4F,$38,$78
	db	$38,$00,$6D,$65,$6E,$75,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F
	db	$63,$3A,$3A,$46,$58,$5F,$52,$45,$44,$52,$41,$57,$5F,$57,$49
	db	$4E,$44,$4F,$57,$0D,$0A,$00,$23,$6D,$65,$6E,$75,$62,$61,$72
	db	$00,$FFFFFFAF,$FFFFFFAF,$FFFFFFAF,$FFFFFFAF,$FFFFFFAF,$FFFFFFAF,$FFFFFFAF,$FFFFFFAF,$00,$46,$58,$4F,$53,$38
	db	$78,$38,$00,$54,$49,$4E,$59,$54,$59,$50,$45,$38,$78,$38,$00
	db	$6D,$65,$6E,$75,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A
	db	$3A,$46,$58,$5F,$4D,$4F,$55,$53,$45,$5F,$45,$4E,$54,$45,$52
	db	$0D,$0A,$00,$6D,$65,$6E,$75,$57,$69,$6E,$64,$6F,$77,$50,$72
	db	$6F,$63,$3A,$3A,$46,$58,$5F,$4D,$4F,$55,$53,$45,$5F,$45,$58
	db	$49,$54,$0D,$0A,$00
	ends
;
;void k_iterate_menus(LPVOID ctx,LPVOID data)
;{
	.line	1371
	.line	1372
	WINMAN
	xdef	~~k_iterate_menus
	func
	.function	1372
~~k_iterate_menus:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L357
	tcs
	phd
	tcd
ctx_0	set	4
data_0	set	8
	.block	1372
;	PWINDOW     pWin = NULL;
;	PMENUANCHOR pMenuAnchor = NULL;
;	PFXSTRING   fxstr = NULL;
;	if(data)
pWin_1	set	0
pMenuAnchor_1	set	4
fxstr_1	set	8
	.sym	pWin,0,138,1,32,27
	.sym	pMenuAnchor,4,138,1,32,38
	.sym	fxstr,8,138,1,32,50
	.sym	ctx,4,129,6,32
	.sym	data,8,129,6,32
	stz	<L358+pWin_1
	stz	<L358+pWin_1+2
	stz	<L358+pMenuAnchor_1
	stz	<L358+pMenuAnchor_1+2
	stz	<L358+fxstr_1
	stz	<L358+fxstr_1+2
	.line	1376
;	{
	lda	<L357+data_0
	ora	<L357+data_0+2
	bne	L360
	brl	L10085
L360:
	.line	1377
;		k_debug_strings("k_iterate_menus:",(LPCHAR)((PMENU)data)->pCaption) ;
	.line	1378
	ldy	#$11
	lda	[<L357+data_0],Y
	pha
	ldy	#$f
	lda	[<L357+data_0],Y
	pha
	pea	#^L356
	pea	#<L356
	jsl	~~k_debug_strings
;
;		if(ctx)
	.line	1380
;		{
	lda	<L357+ctx_0
	ora	<L357+ctx_0+2
	bne	L361
	brl	L10086
L361:
	.line	1381
;			//fxstr = (PFXSTRING)ctx;
;			//k_fxstring_add(fxstr,(LPCHAR)((PMENU)data)->pCaption);
;			//k_fxstring_add(fxstr,"  ");
;			pWin = (PWINDOW)ctx;
	.line	1385
	lda	<L357+ctx_0
	sta	<L358+pWin_1
	lda	<L357+ctx_0+2
	sta	<L358+pWin_1+2
;			pMenuAnchor = (PMENUANCHOR)pWin->windowData;
	.line	1386
	ldy	#$141
	lda	[<L358+pWin_1],Y
	sta	<L358+pMenuAnchor_1
	ldy	#$143
	lda	[<L358+pWin_1],Y
	sta	<L358+pMenuAnchor_1+2
;
;
;			pWin = k_user_CreateMenuAnchor(k_getHandleFromWindow(pWin),
	.line	1389
;					                ((PMENU)data)->pCaption,
;									(PMENU)data,
;									pMenuAnchor->renderLayoutX,
;									pMenuAnchor->renderLayoutY,
;									(strlen(((PMENU)data)->pCaption)*FONTW) + (FONTW/2),
;									FONTH + (FONTW/4));
	jsl	~~k_font_getFontWidth
	sta	<R1
	lda	<R1
	lsr	A
	lsr	A
	sta	<R0
	jsl	~~k_font_getFontHeight
	sta	<R1
	clc
	lda	<R1
	adc	<R0
	pha
	jsl	~~k_font_getFontWidth
	sta	<R1
	lda	<R1
	lsr	A
	sta	<R0
	jsl	~~k_font_getFontWidth
	sta	<R1
	ldy	#$11
	lda	[<L357+data_0],Y
	pha
	ldy	#$f
	lda	[<L357+data_0],Y
	pha
	jsl	~~strlen
	sta	<R2
	lda	<R2
	ldx	<R1
	xref	~~~mul
	jsl	~~~mul
	sta	<R1
	clc
	lda	<R1
	adc	<R0
	pha
	ldy	#$6
	lda	[<L358+pMenuAnchor_1],Y
	pha
	ldy	#$4
	lda	[<L358+pMenuAnchor_1],Y
	pha
	pei	<L357+data_0+2
	pei	<L357+data_0
	ldy	#$11
	lda	[<L357+data_0],Y
	pha
	ldy	#$f
	lda	[<L357+data_0],Y
	pha
	pei	<L358+pWin_1+2
	pei	<L358+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_user_CreateMenuAnchor
	sta	<L358+pWin_1
	stx	<L358+pWin_1+2
;
;			//pMenuAnchor->renderLayoutX+=(strlen(((PMENU)data)->pCaption)*FONTW + (FONTW/2));
;			pMenuAnchor->renderLayoutX+=pWin->win_width;
	.line	1398
	clc
	lda	#$4
	adc	<L358+pMenuAnchor_1
	sta	<R0
	lda	#$0
	adc	<L358+pMenuAnchor_1+2
	sta	<R0+2
	clc
	lda	[<R0]
	ldy	#$c
	adc	[<L358+pWin_1],Y
	sta	[<R0]
;			pMenuAnchor->renderLayoutX+=(1*FONTW);
	.line	1399
	clc
	lda	#$4
	adc	<L358+pMenuAnchor_1
	sta	<R0
	lda	#$0
	adc	<L358+pMenuAnchor_1+2
	sta	<R0+2
	jsl	~~k_font_getFontWidth
	sta	<R1
	clc
	lda	<R1
	adc	[<R0]
	sta	[<R0]
;
;
;
;		}
	.line	1403
;
;	}
L10086:
	.line	1405
;}
L10085:
	.line	1406
L362:
	lda	<L357+2
	sta	<L357+2+8
	lda	<L357+1
	sta	<L357+1+8
	pld
	tsc
	clc
	adc	#L357+8
	tcs
	rtl
	.endblock	1406
L357	equ	24
L358	equ	13
	ends
	efunc
	.endfunc	1406,13,24
	.line	1406
	data
L356:
	db	$6B,$5F,$69,$74,$65,$72,$61,$74,$65,$5F,$6D,$65,$6E,$75,$73
	db	$3A,$00
	ends
;
;void k_iterate_set_menu_state(LPVOID ctx,LPVOID data)
;{
	.line	1408
	.line	1409
	WINMAN
	xdef	~~k_iterate_set_menu_state
	func
	.function	1409
~~k_iterate_set_menu_state:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L364
	tcs
	phd
	tcd
ctx_0	set	4
data_0	set	8
	.block	1409
;	PWINDOW     pWin = NULL;
;	PMENUANCHOR pMenuAnchor = NULL;
;	PFXSTRING   fxstr = NULL;
;	if(data)
pWin_1	set	0
pMenuAnchor_1	set	4
fxstr_1	set	8
	.sym	pWin,0,138,1,32,27
	.sym	pMenuAnchor,4,138,1,32,38
	.sym	fxstr,8,138,1,32,50
	.sym	ctx,4,129,6,32
	.sym	data,8,129,6,32
	stz	<L365+pWin_1
	stz	<L365+pWin_1+2
	stz	<L365+pMenuAnchor_1
	stz	<L365+pMenuAnchor_1+2
	stz	<L365+fxstr_1
	stz	<L365+fxstr_1+2
	.line	1413
;	{
	lda	<L364+data_0
	ora	<L364+data_0+2
	bne	L367
	brl	L10087
L367:
	.line	1414
;		k_debug_strings("k_iterate_set_menu_state:caption:",(LPCHAR)((PMENU)data)->pCaption) ;
	.line	1415
	ldy	#$11
	lda	[<L364+data_0],Y
	pha
	ldy	#$f
	lda	[<L364+data_0],Y
	pha
	pea	#^L363
	pea	#<L363
	jsl	~~k_debug_strings
;		k_debug_integer("k_iterate_set_menu_state:itemid:",((PMENU)data)->itemId) ;
	.line	1416
	ldy	#$d
	lda	[<L364+data_0],Y
	pha
	pea	#^L363+34
	pea	#<L363+34
	jsl	~~k_debug_integer
;
;		if(ctx)
	.line	1418
;		{
	lda	<L364+ctx_0
	ora	<L364+ctx_0+2
	bne	L368
	brl	L10088
L368:
	.line	1419
;			k_debug_pointer("k_iterate_set_menu_state:ctx:",ctx) ;
	.line	1420
	pei	<L364+ctx_0+2
	pei	<L364+ctx_0
	pea	#^L363+67
	pea	#<L363+67
	jsl	~~k_debug_pointer
;
;			k_debug_integer("k_iterate_set_menu_state:ctx:id:",HIWORD((DWORD)ctx));
	.line	1422
	pei	<L364+ctx_0+2
	pei	<L364+ctx_0
	lda	#$10
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R0
	stx	<R0+2
	lda	<R0
	sta	<R1
	stz	<R1+2
	pei	<R1
	pea	#^L363+97
	pea	#<L363+97
	jsl	~~k_debug_integer
;			k_debug_integer("k_iterate_set_menu_state:ctx:state:" ,LOWORD((DWORD)ctx));
	.line	1423
	pei	<L364+ctx_0
	pea	#^L363+130
	pea	#<L363+130
	jsl	~~k_debug_integer
;			if(((PMENU)data)->itemId == HIWORD((DWORD)ctx))
	.line	1424
;			{
	pei	<L364+ctx_0+2
	pei	<L364+ctx_0
	lda	#$10
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R0
	stx	<R0+2
	lda	<R0
	sta	<R1
	stz	<R1+2
	lda	<R1
	ldy	#$d
	cmp	[<L364+data_0],Y
	beq	L369
	brl	L10089
L369:
	.line	1425
;				((PMENU)data)->chromeLeft = LOWORD((DWORD)ctx);
	.line	1426
	sep	#$20
	longa	off
	lda	<L364+ctx_0
	ldy	#$a
	sta	[<L364+data_0],Y
	rep	#$20
	longa	on
;			}
	.line	1427
;		}
L10089:
	.line	1428
;
;	}
L10088:
	.line	1430
;}
L10087:
	.line	1431
L370:
	lda	<L364+2
	sta	<L364+2+8
	lda	<L364+1
	sta	<L364+1+8
	pld
	tsc
	clc
	adc	#L364+8
	tcs
	rtl
	.endblock	1431
L364	equ	20
L365	equ	9
	ends
	efunc
	.endfunc	1431,9,20
	.line	1431
	data
L363:
	db	$6B,$5F,$69,$74,$65,$72,$61,$74,$65,$5F,$73,$65,$74,$5F,$6D
	db	$65,$6E,$75,$5F,$73,$74,$61,$74,$65,$3A,$63,$61,$70,$74,$69
	db	$6F,$6E,$3A,$00,$6B,$5F,$69,$74,$65,$72,$61,$74,$65,$5F,$73
	db	$65,$74,$5F,$6D,$65,$6E,$75,$5F,$73,$74,$61,$74,$65,$3A,$69
	db	$74,$65,$6D,$69,$64,$3A,$00,$6B,$5F,$69,$74,$65,$72,$61,$74
	db	$65,$5F,$73,$65,$74,$5F,$6D,$65,$6E,$75,$5F,$73,$74,$61,$74
	db	$65,$3A,$63,$74,$78,$3A,$00,$6B,$5F,$69,$74,$65,$72,$61,$74
	db	$65,$5F,$73,$65,$74,$5F,$6D,$65,$6E,$75,$5F,$73,$74,$61,$74
	db	$65,$3A,$63,$74,$78,$3A,$69,$64,$3A,$00,$6B,$5F,$69,$74,$65
	db	$72,$61,$74,$65,$5F,$73,$65,$74,$5F,$6D,$65,$6E,$75,$5F,$73
	db	$74,$61,$74,$65,$3A,$63,$74,$78,$3A,$73,$74,$61,$74,$65,$3A
	db	$00
	ends
;
;void k_iterate_dropdown_menu_captions(LPVOID ctx,LPVOID data)
;{
	.line	1433
	.line	1434
	WINMAN
	xdef	~~k_iterate_dropdown_menu_captions
	func
	.function	1434
~~k_iterate_dropdown_menu_captions:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L372
	tcs
	phd
	tcd
ctx_0	set	4
data_0	set	8
	.block	1434
;	PWINDOW     pWin = NULL;
;	PWINDOW     pItem = NULL;
;	PMENUANCHOR pMenuAnchor = NULL;
;	LPCSTR FAR*	captions;
;	LPCSTR 		caption;
;	UINT		i = 0;
;
;	if(data)
pWin_1	set	0
pItem_1	set	4
pMenuAnchor_1	set	8
captions_1	set	12
caption_1	set	16
i_1	set	20
	.sym	pWin,0,138,1,32,27
	.sym	pItem,4,138,1,32,27
	.sym	pMenuAnchor,8,138,1,32,38
	.sym	captions,12,1166,1,32
	.sym	caption,16,142,1,32
	.sym	i,20,16,1,16
	.sym	ctx,4,129,6,32
	.sym	data,8,129,6,32
	stz	<L373+pWin_1
	stz	<L373+pWin_1+2
	stz	<L373+pItem_1
	stz	<L373+pItem_1+2
	stz	<L373+pMenuAnchor_1
	stz	<L373+pMenuAnchor_1+2
	stz	<L373+i_1
	.line	1442
;	{
	lda	<L372+data_0
	ora	<L372+data_0+2
	bne	L375
	brl	L10090
L375:
	.line	1443
;		k_debug_strings("k_iterate_dropdown_menus:",(LPCHAR)((PMENU)data)->pCaption) ;
	.line	1444
	ldy	#$11
	lda	[<L372+data_0],Y
	pha
	ldy	#$f
	lda	[<L372+data_0],Y
	pha
	pea	#^L371
	pea	#<L371
	jsl	~~k_debug_strings
;
;		if(ctx)
	.line	1446
;		{
	lda	<L372+ctx_0
	ora	<L372+ctx_0+2
	bne	L376
	brl	L10091
L376:
	.line	1447
;			captions = (LPCSTR FAR*)ctx;
	.line	1448
	lda	<L372+ctx_0
	sta	<L373+captions_1
	lda	<L372+ctx_0+2
	sta	<L373+captions_1+2
;
;			while(captions[i])
	.line	1450
L10092:
	lda	<L373+i_1
	sta	<R1
	stz	<R1+2
	pei	<R1+2
	pei	<R1
	lda	#$2
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R0
	stx	<R0+2
	clc
	lda	<L373+captions_1
	adc	<R0
	sta	<R2
	lda	<L373+captions_1+2
	adc	<R0+2
	sta	<R2+2
	lda	[<R2]
	ldy	#$2
	ora	[<R2],Y
	bne	L377
	brl	L10093
L377:
;			{
	.line	1451
;				i++;
	.line	1452
	inc	<L373+i_1
;			}
	.line	1453
	brl	L10092
L10093:
;
;			captions[i] = (LPCSTR)((PMENU)data)->pCaption;
	.line	1455
	lda	<L373+i_1
	sta	<R1
	stz	<R1+2
	pei	<R1+2
	pei	<R1
	lda	#$2
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R0
	stx	<R0+2
	clc
	lda	<L373+captions_1
	adc	<R0
	sta	<R2
	lda	<L373+captions_1+2
	adc	<R0+2
	sta	<R2+2
	ldy	#$f
	lda	[<L372+data_0],Y
	sta	[<R2]
	ldy	#$11
	lda	[<L372+data_0],Y
	ldy	#$2
	sta	[<R2],Y
;			captions[i+1] = NULL;
	.line	1456
	lda	<L373+i_1
	ina
	sta	<R1
	lda	<R1
	sta	<R1
	stz	<R1+2
	pei	<R1+2
	pei	<R1
	lda	#$2
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R0
	stx	<R0+2
	clc
	lda	<L373+captions_1
	adc	<R0
	sta	<R2
	lda	<L373+captions_1+2
	adc	<R0+2
	sta	<R2+2
	lda	#$0
	sta	[<R2]
	lda	#$0
	ldy	#$2
	sta	[<R2],Y
;		}
	.line	1457
;
;	}
L10091:
	.line	1459
;}
L10090:
	.line	1460
L378:
	lda	<L372+2
	sta	<L372+2+8
	lda	<L372+1
	sta	<L372+1+8
	pld
	tsc
	clc
	adc	#L372+8
	tcs
	rtl
	.endblock	1460
L372	equ	34
L373	equ	13
	ends
	efunc
	.endfunc	1460,13,34
	.line	1460
	data
L371:
	db	$6B,$5F,$69,$74,$65,$72,$61,$74,$65,$5F,$64,$72,$6F,$70,$64
	db	$6F,$77,$6E,$5F,$6D,$65,$6E,$75,$73,$3A,$00
	ends
;
;
;PWINDOW	k_user_CreateMenuAnchor(HWND hWndParent,LPCSTR caption,HMENU hMenu,int x,int y,int width,int height)
;{
	.line	1463
	.line	1464
	WINMAN
	xdef	~~k_user_CreateMenuAnchor
	func
	.function	1464
~~k_user_CreateMenuAnchor:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L380
	tcs
	phd
	tcd
hWndParent_0	set	4
caption_0	set	8
hMenu_0	set	12
x_0	set	16
y_0	set	18
width_0	set	20
height_0	set	22
	.block	1464
;	PWINDOW pWin = NULL;
;
;	//k_debug_strings("k_user_CreateMenuAnchor:","Enter");
;
;	pWin = k_user_CreateWindow(FXWS_VISIBLE,
pWin_1	set	0
	.sym	pWin,0,138,1,32,27
	.sym	hWndParent,4,129,6,32
	.sym	caption,8,142,6,32
	.sym	hMenu,12,129,6,32
	.sym	x,16,5,6,16
	.sym	y,18,5,6,16
	.sym	width,20,5,6,16
	.sym	height,22,5,6,16
	stz	<L381+pWin_1
	stz	<L381+pWin_1+2
	.line	1469
;							   "menuAnchorWindowClass",
;							    caption,
;								x,y,
;								width,height,
;								hWndParent,
;								hMenu,
;								NULL);
	pea	#^$0
	pea	#<$0
	pei	<L380+hMenu_0+2
	pei	<L380+hMenu_0
	pei	<L380+hWndParent_0+2
	pei	<L380+hWndParent_0
	pei	<L380+height_0
	pei	<L380+width_0
	pei	<L380+y_0
	pei	<L380+x_0
	pei	<L380+caption_0+2
	pei	<L380+caption_0
	pea	#^L379
	pea	#<L379
	pea	#^$1
	pea	#<$1
	jsl	~~k_user_CreateWindow
	sta	<L381+pWin_1
	stx	<L381+pWin_1+2
;	if(pWin)
	.line	1477
;	{
	lda	<L381+pWin_1
	ora	<L381+pWin_1+2
	bne	L383
	brl	L10094
L383:
	.line	1478
;
;		//k_add_child_window(k_getWindowFromHandle(hWndParent),pWin,k_update_hover_location);
;
;		//k_debug_strings("k_user_CreateButton:","k_send_window_message");
;		k_send_window_message(k_getHandleFromWindow(pWin),FX_CREATE_WINDOW,NULL,0);
	.line	1483
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$ff03
	pei	<L381+pWin_1+2
	pei	<L381+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_send_window_message
;		//k_debug_strings("k_user_CreateButton:","k_send_command_message");
;		k_send_command_message(k_getHandleFromWindow(pWin),FX_CONTROL_COMMAND,CTL_CMD_CAPTION,0,(ULONG)k_string_copy_string(caption),0L);
	.line	1485
	pea	#^$0
	pea	#<$0
	pei	<L380+caption_0+2
	pei	<L380+caption_0
	jsl	~~k_string_copy_string
	sta	<R0
	stx	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#<$0
	pea	#<$1
	pea	#<$fa00
	pei	<L381+pWin_1+2
	pei	<L381+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R1
	stx	<R1+2
	phx
	pha
	jsl	~~k_send_command_message
;
;	}
	.line	1487
;
;	//k_debug_strings("k_user_CreateMenuAnchor:","Exit");
;
;	return pWin;
L10094:
	.line	1491
	ldx	<L381+pWin_1+2
	lda	<L381+pWin_1
L384:
	tay
	lda	<L380+2
	sta	<L380+2+20
	lda	<L380+1
	sta	<L380+1+20
	pld
	tsc
	clc
	adc	#L380+20
	tcs
	tya
	rtl
;}
	.line	1492
	.endblock	1492
L380	equ	12
L381	equ	9
	ends
	efunc
	.endfunc	1492,9,12
	.line	1492
	data
L379:
	db	$6D,$65,$6E,$75,$41,$6E,$63,$68,$6F,$72,$57,$69,$6E,$64,$6F
	db	$77,$43,$6C,$61,$73,$73,$00
	ends
;
;BOOL menuAnchorWindowProc(PFXOSMESSAGE pMsg)
;{
	.line	1494
	.line	1495
	WINMAN
	xdef	~~menuAnchorWindowProc
	func
	.function	1495
~~menuAnchorWindowProc:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L386
	tcs
	phd
	tcd
pMsg_0	set	4
	.block	1495
;	PFXPROCESS p = NULL;
;	PWINDOW	   pWin = NULL;
;	PMENUANCHOR	   pMenuAnchor = NULL;
;
;	UINT	   size = 0;
;
;	if(pMsg!=NULL)
p_1	set	0
pWin_1	set	4
pMenuAnchor_1	set	8
size_1	set	12
	.sym	p,0,138,1,32,17
	.sym	pWin,4,138,1,32,27
	.sym	pMenuAnchor,8,138,1,32,38
	.sym	size,12,16,1,16
	.sym	pMsg,4,138,6,32,13
	stz	<L387+p_1
	stz	<L387+p_1+2
	stz	<L387+pWin_1
	stz	<L387+pWin_1+2
	stz	<L387+pMenuAnchor_1
	stz	<L387+pMenuAnchor_1+2
	stz	<L387+size_1
	.line	1502
;	{
	lda	<L386+pMsg_0
	ora	<L386+pMsg_0+2
	bne	L389
	brl	L10095
L389:
	.line	1503
;		p = k_exec_get_current_process();
	.line	1504
	jsl	~~k_exec_get_current_process
	sta	<L387+p_1
	stx	<L387+p_1+2
;		pWin = k_getWindowFromHandle(pMsg->hwnd);
	.line	1505
	ldy	#$c
	lda	[<L386+pMsg_0],Y
	pha
	ldy	#$a
	lda	[<L386+pMsg_0],Y
	pha
	jsl	~~k_getWindowFromHandle
	sta	<L387+pWin_1
	stx	<L387+pWin_1+2
;		pMenuAnchor = (PMENUANCHOR)pWin->windowData;
	.line	1506
	ldy	#$141
	lda	[<L387+pWin_1],Y
	sta	<L387+pMenuAnchor_1
	ldy	#$143
	lda	[<L387+pWin_1],Y
	sta	<L387+pMenuAnchor_1+2
;		//pButton = ((PBUTTON)pWin->windowData);
;		//k_debug_long("consoleWindowProc::ProcessId:",p->procId);
;
;		switch(pMsg->type)
	.line	1510
	ldy	#$8
	lda	[<L386+pMsg_0],Y
	brl	L10096
;		{
	.line	1511
;		case FX_CREATE_WINDOW:
	.line	1512
L10098:
;			//k_debug_long("menuAnchorWindowProc::ProcessId:",p->procId);
;			k_debug_string("menuAnchorWindowProc::FX_CREATE_WINDOW\r\n");
	.line	1514
	pea	#^L385
	pea	#<L385
	jsl	~~k_debug_string
;
;			//pWin->windowData = k_mem_allocate_heap(sizeof(BUTTON));
;			pWin->windowData = k_mem_allocate_heap(sizeof(MENUANCHOR));
	.line	1517
	pea	#<$12
	jsl	~~k_mem_allocate_heap
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$141
	sta	[<L387+pWin_1],Y
	lda	<R0+2
	ldy	#$143
	sta	[<L387+pWin_1],Y
;			(pMenuAnchor)->renderLayoutX = pWin->win_x + FONTW;
	.line	1518
	jsl	~~k_font_getFontWidth
	sta	<R0
	clc
	lda	<R0
	ldy	#$8
	adc	[<L387+pWin_1],Y
	ldy	#$4
	sta	[<L387+pMenuAnchor_1],Y
;			(pMenuAnchor)->renderLayoutY = pWin->win_y + FONTH;
	.line	1519
	jsl	~~k_font_getFontHeight
	sta	<R0
	clc
	lda	<R0
	ldy	#$a
	adc	[<L387+pWin_1],Y
	ldy	#$6
	sta	[<L387+pMenuAnchor_1],Y
;
;			break;
	.line	1521
	brl	L10097
;		case FX_REDRAW_WINDOW:
	.line	1522
L10099:
;			k_debug_string("menuAnchorWindowProc::FX_REDRAW_WINDOW\r\n");
	.line	1523
	pea	#^L385+41
	pea	#<L385+41
	jsl	~~k_debug_string
;			break;
	.line	1524
	brl	L10097
;
;		case FX_HIDE_WINDOW:
	.line	1526
L10100:
;			k_debug_string("menuAnchorWindowProc::FX_HIDE_WINDOW\r\n");
	.line	1527
	pea	#^L385+82
	pea	#<L385+82
	jsl	~~k_debug_string
;
;			pWin->isVisible = FALSE;
	.line	1529
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$140
	sta	[<L387+pWin_1],Y
	rep	#$20
	longa	on
;
;			break;
	.line	1531
	brl	L10097
;		case FX_SHOW_WINDOW:
	.line	1532
L10101:
;			k_debug_string("menuAnchorWindowProc::FX_SHOW_WINDOW\r\n");
	.line	1533
	pea	#^L385+121
	pea	#<L385+121
	jsl	~~k_debug_string
;
;			pWin->isVisible = TRUE;
	.line	1535
	sep	#$20
	longa	off
	lda	#$1
	ldy	#$140
	sta	[<L387+pWin_1],Y
	rep	#$20
	longa	on
;			k_func_drawAnchorText(pWin,k_getUIGadgetColor(),k_getUIMenuColor());
	.line	1536
	jsl	~~k_getUIMenuColor
	pha
	jsl	~~k_getUIGadgetColor
	pha
	pei	<L387+pWin_1+2
	pei	<L387+pWin_1
	jsl	~~k_func_drawAnchorText
;
;			break;
	.line	1538
	brl	L10097
;		case FX_DRAW_WINDOW:
	.line	1539
L10102:
;			k_debug_string("menuAnchorWindowProc::FX_DRAW_WINDOW\r\n");
	.line	1540
	pea	#^L385+160
	pea	#<L385+160
	jsl	~~k_debug_string
;			if(pWin->isVisible)
	.line	1541
;			{
	ldy	#$140
	lda	[<L387+pWin_1],Y
	and	#$ff
	bne	L390
	brl	L10103
L390:
	.line	1542
;				k_func_drawAnchorText(pWin,k_getUIGadgetColor(),k_getUIMenuColor());
	.line	1543
	jsl	~~k_getUIMenuColor
	pha
	jsl	~~k_getUIGadgetColor
	pha
	pei	<L387+pWin_1+2
	pei	<L387+pWin_1
	jsl	~~k_func_drawAnchorText
;			}
	.line	1544
;
;			break;
L10103:
	.line	1546
	brl	L10097
;		case FX_LBUTTON_DOWN:
	.line	1547
L10104:
;			k_debug_string("menuAnchorWindowProc::FX_LBUTTON_DOWN\r\n");
	.line	1548
	pea	#^L385+199
	pea	#<L385+199
	jsl	~~k_debug_string
;
;
;			if(pMenuAnchor->droppedWindow && !pMenuAnchor->droppedWindow->isClosed)
	.line	1551
;			{
	ldy	#$e
	lda	[<L387+pMenuAnchor_1],Y
	ldy	#$10
	ora	[<L387+pMenuAnchor_1],Y
	bne	L391
	brl	L10105
L391:
	ldy	#$e
	lda	[<L387+pMenuAnchor_1],Y
	sta	<R0
	ldy	#$10
	lda	[<L387+pMenuAnchor_1],Y
	sta	<R0+2
	ldy	#$15d
	lda	[<R0],Y
	and	#$ff
	beq	L392
	brl	L10105
L392:
	.line	1552
;
;				k_debug_string("menuAnchorWindowProc::WINDOW STILL DROPPED\r\n");
	.line	1554
	pea	#^L385+239
	pea	#<L385+239
	jsl	~~k_debug_string
;			}
	.line	1555
;			else
	brl	L10106
L10105:
;			{
	.line	1557
;				pMenuAnchor->droppedWindow =
	.line	1558
;				k_user_CreateMenuDropDown(k_user_getDesktopWindow(),
;										  ((PMENU)pWin->hMenu)->pCaption,
;										  (PMENU)pWin->hMenu,
;										  pWin->win_x,
;										  pWin->win_y + pWin->win_height + 1,
;										  -1,-1);
	pea	#<$ffffffff
	pea	#<$ffffffff
	clc
	ldy	#$a
	lda	[<L387+pWin_1],Y
	ldy	#$e
	adc	[<L387+pWin_1],Y
	sta	<R0
	lda	<R0
	ina
	pha
	ldy	#$8
	lda	[<L387+pWin_1],Y
	pha
	ldy	#$136
	lda	[<L387+pWin_1],Y
	pha
	ldy	#$134
	lda	[<L387+pWin_1],Y
	pha
	ldy	#$134
	lda	[<L387+pWin_1],Y
	sta	<R0
	ldy	#$136
	lda	[<L387+pWin_1],Y
	sta	<R0+2
	ldy	#$11
	lda	[<R0],Y
	pha
	ldy	#$f
	lda	[<R0],Y
	pha
	jsl	~~k_user_getDesktopWindow
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_user_CreateMenuDropDown
	sta	<R1
	stx	<R1+2
	lda	<R1
	ldy	#$e
	sta	[<L387+pMenuAnchor_1],Y
	lda	<R1+2
	ldy	#$10
	sta	[<L387+pMenuAnchor_1],Y
;			}
	.line	1565
L10106:
;			break;
	.line	1566
	brl	L10097
;		case FX_LBUTTON_UP:
	.line	1567
L10107:
;			k_debug_string("menuAnchorWindowProc::FX_LBUTTON_UP\r\n");
	.line	1568
	pea	#^L385+284
	pea	#<L385+284
	jsl	~~k_debug_string
;			break;
	.line	1569
	brl	L10097
;		case FX_MOUSE_ENTER:
	.line	1570
L10108:
;			k_debug_string("menuAnchorWindowProc::FX_MOUSE_ENTER\r\n");
	.line	1571
	pea	#^L385+322
	pea	#<L385+322
	jsl	~~k_debug_string
;			k_func_drawAnchorText(pWin,k_getUIMenuColor(),k_getUIGadgetColor());
	.line	1572
	jsl	~~k_getUIGadgetColor
	pha
	jsl	~~k_getUIMenuColor
	pha
	pei	<L387+pWin_1+2
	pei	<L387+pWin_1
	jsl	~~k_func_drawAnchorText
;
;			break;
	.line	1574
	brl	L10097
;		case FX_MOUSE_EXIT:
	.line	1575
L10109:
;			k_debug_string("menuAnchorWindowProc::FX_MOUSE_EXIT\r\n");
	.line	1576
	pea	#^L385+361
	pea	#<L385+361
	jsl	~~k_debug_string
;			k_func_drawAnchorText(pWin,k_getUIGadgetColor(),k_getUIMenuColor());
	.line	1577
	jsl	~~k_getUIMenuColor
	pha
	jsl	~~k_getUIGadgetColor
	pha
	pei	<L387+pWin_1+2
	pei	<L387+pWin_1
	jsl	~~k_func_drawAnchorText
;			break;
	.line	1578
	brl	L10097
;		case FX_CONTROL_COMMAND:
	.line	1579
L10110:
;			k_debug_string("menuAnchorWindowProc::FX_CONTROL_COMMAND\r\n");
	.line	1580
	pea	#^L385+399
	pea	#<L385+399
	jsl	~~k_debug_string
;
;			if( ((PFXCMDMESSAGE)pMsg)->cmdCId == CTL_CMD_CAPTION )
	.line	1582
;			{
	ldy	#$16
	lda	[<L386+pMsg_0],Y
	cmp	#<$1
	beq	L393
	brl	L10111
L393:
	.line	1583
;				pMenuAnchor->pCaption = (LPCHAR)((PFXCMDMESSAGE)pMsg)->parameter1;
	.line	1584
	ldy	#$1a
	lda	[<L386+pMsg_0],Y
	sta	[<L387+pMenuAnchor_1]
	ldy	#$1c
	lda	[<L386+pMsg_0],Y
	ldy	#$2
	sta	[<L387+pMenuAnchor_1],Y
;
;				if(pMenuAnchor->pCaption && pWin->isVisible)
	.line	1586
;				{
	lda	[<L387+pMenuAnchor_1]
	ldy	#$2
	ora	[<L387+pMenuAnchor_1],Y
	bne	L394
	brl	L10112
L394:
	ldy	#$140
	lda	[<L387+pWin_1],Y
	and	#$ff
	bne	L395
	brl	L10112
L395:
	.line	1587
;					k_debug_strings("menuAnchorWindowProc::CTL_CMD_CAPTION:", (LPCHAR)pMenuAnchor->pCaption );
	.line	1588
	ldy	#$2
	lda	[<L387+pMenuAnchor_1],Y
	pha
	lda	[<L387+pMenuAnchor_1]
	pha
	pea	#^L385+442
	pea	#<L385+442
	jsl	~~k_debug_strings
;					k_func_drawAnchorText(pWin,k_getUIGadgetColor(),k_getUIMenuColor());
	.line	1589
	jsl	~~k_getUIMenuColor
	pha
	jsl	~~k_getUIGadgetColor
	pha
	pei	<L387+pWin_1+2
	pei	<L387+pWin_1
	jsl	~~k_func_drawAnchorText
;				}
	.line	1590
;			}
L10112:
	.line	1591
;
;			break;
L10111:
	.line	1593
	brl	L10097
;		default:
	.line	1594
L10113:
;			break;
	.line	1595
	brl	L10097
;		}
	.line	1596
L10096:
	xref	~~~swt
	jsl	~~~swt
	dw	10
	dw	3841
	dw	L10108-1
	dw	3842
	dw	L10109-1
	dw	3844
	dw	L10104-1
	dw	3846
	dw	L10107-1
	dw	64000
	dw	L10110-1
	dw	64256
	dw	L10102-1
	dw	64261
	dw	L10101-1
	dw	64262
	dw	L10100-1
	dw	64263
	dw	L10099-1
	dw	65283
	dw	L10098-1
	dw	L10113-1
L10097:
;	}
	.line	1597
;
;	return TRUE;
L10095:
	.line	1599
	lda	#$1
L396:
	tay
	lda	<L386+2
	sta	<L386+2+4
	lda	<L386+1
	sta	<L386+1+4
	pld
	tsc
	clc
	adc	#L386+4
	tcs
	tya
	rtl
;
;}
	.line	1601
	.endblock	1601
L386	equ	22
L387	equ	9
	ends
	efunc
	.endfunc	1601,9,22
	.line	1601
	data
L385:
	db	$6D,$65,$6E,$75,$41,$6E,$63,$68,$6F,$72,$57,$69,$6E,$64,$6F
	db	$77,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$43,$52,$45,$41,$54
	db	$45,$5F,$57,$49,$4E,$44,$4F,$57,$0D,$0A,$00,$6D,$65,$6E,$75
	db	$41,$6E,$63,$68,$6F,$72,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F
	db	$63,$3A,$3A,$46,$58,$5F,$52,$45,$44,$52,$41,$57,$5F,$57,$49
	db	$4E,$44,$4F,$57,$0D,$0A,$00,$6D,$65,$6E,$75,$41,$6E,$63,$68
	db	$6F,$72,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46
	db	$58,$5F,$48,$49,$44,$45,$5F,$57,$49,$4E,$44,$4F,$57,$0D,$0A
	db	$00,$6D,$65,$6E,$75,$41,$6E,$63,$68,$6F,$72,$57,$69,$6E,$64
	db	$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$53,$48,$4F,$57
	db	$5F,$57,$49,$4E,$44,$4F,$57,$0D,$0A,$00,$6D,$65,$6E,$75,$41
	db	$6E,$63,$68,$6F,$72,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63
	db	$3A,$3A,$46,$58,$5F,$44,$52,$41,$57,$5F,$57,$49,$4E,$44,$4F
	db	$57,$0D,$0A,$00,$6D,$65,$6E,$75,$41,$6E,$63,$68,$6F,$72,$57
	db	$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$4C
	db	$42,$55,$54,$54,$4F,$4E,$5F,$44,$4F,$57,$4E,$0D,$0A,$00,$6D
	db	$65,$6E,$75,$41,$6E,$63,$68,$6F,$72,$57,$69,$6E,$64,$6F,$77
	db	$50,$72,$6F,$63,$3A,$3A,$57,$49,$4E,$44,$4F,$57,$20,$53,$54
	db	$49,$4C,$4C,$20,$44,$52,$4F,$50,$50,$45,$44,$0D,$0A,$00,$6D
	db	$65,$6E,$75,$41,$6E,$63,$68,$6F,$72,$57,$69,$6E,$64,$6F,$77
	db	$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$4C,$42,$55,$54,$54,$4F
	db	$4E,$5F,$55,$50,$0D,$0A,$00,$6D,$65,$6E,$75,$41,$6E,$63,$68
	db	$6F,$72,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46
	db	$58,$5F,$4D,$4F,$55,$53,$45,$5F,$45,$4E,$54,$45,$52,$0D,$0A
	db	$00,$6D,$65,$6E,$75,$41,$6E,$63,$68,$6F,$72,$57,$69,$6E,$64
	db	$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$4D,$4F,$55,$53
	db	$45,$5F,$45,$58,$49,$54,$0D,$0A,$00,$6D,$65,$6E,$75,$41,$6E
	db	$63,$68,$6F,$72,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A
	db	$3A,$46,$58,$5F,$43,$4F,$4E,$54,$52,$4F,$4C,$5F,$43,$4F,$4D
	db	$4D,$41,$4E,$44,$0D,$0A,$00,$6D,$65,$6E,$75,$41,$6E,$63,$68
	db	$6F,$72,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$43
	db	$54,$4C,$5F,$43,$4D,$44,$5F,$43,$41,$50,$54,$49,$4F,$4E,$3A
	db	$00
	ends
;
;void k_func_drawAnchorText(PWINDOW pWin,UINT fontColor,UINT menuColor)
;{
	.line	1603
	.line	1604
	WINMAN
	xdef	~~k_func_drawAnchorText
	func
	.function	1604
~~k_func_drawAnchorText:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L398
	tcs
	phd
	tcd
pWin_0	set	4
fontColor_0	set	8
menuColor_0	set	10
	.block	1604
;	k_vdma_fill_rect(pWin->win_x ,
	.sym	pWin,4,138,6,32,27
	.sym	fontColor,8,16,6,16
	.sym	menuColor,10,16,6,16
	.line	1605
;					 pWin->win_y,
;					 pWin->win_width,
;					 pWin->win_height,
;					 menuColor);
	pei	<L398+menuColor_0
	ldy	#$e
	lda	[<L398+pWin_0],Y
	pha
	ldy	#$c
	lda	[<L398+pWin_0],Y
	pha
	ldy	#$0
	phy
	ldy	#$a
	lda	[<L398+pWin_0],Y
	ply
	rol	A
	ror	A
	bpl	L401
	dey
L401:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	phy
	ldy	#$8
	lda	[<L398+pWin_0],Y
	ply
	rol	A
	ror	A
	bpl	L402
	dey
L402:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect
;
;	k_draw_text_point(((PMENUANCHOR)pWin->windowData)->pCaption,
	.line	1611
;	          	  	  //pWin->win_x + (pWin->win_width/2)  - (((PMENUANCHOR)pWin->windowData)->captionPixelWidth/2) - 2,
;					  //Win->win_y + (pWin->win_height/2) - (FONTH/2)     ,
;					  pWin->win_x + (pWin->win_width/2) - (strlen(((PMENUANCHOR)pWin->windowData)->pCaption) * FONTW/2)  ,
;					  pWin->win_y + (pWin->win_height/2) - (FONTH/2),
;					  fontColor) ;
	pei	<L398+fontColor_0
	jsl	~~k_font_getFontHeight
	sta	<R1
	lda	<R1
	lsr	A
	sta	<R0
	ldy	#$e
	lda	[<L398+pWin_0],Y
	ldx	#<$2
	xref	~~~div
	jsl	~~~div
	sta	<R1
	clc
	lda	<R1
	ldy	#$a
	adc	[<L398+pWin_0],Y
	sta	<R2
	sec
	lda	<R2
	sbc	<R0
	pha
	jsl	~~k_font_getFontWidth
	sta	<R1
	ldy	#$141
	lda	[<L398+pWin_0],Y
	sta	<R2
	ldy	#$143
	lda	[<L398+pWin_0],Y
	sta	<R2+2
	ldy	#$2
	lda	[<R2],Y
	pha
	lda	[<R2]
	pha
	jsl	~~strlen
	sta	<R2
	lda	<R2
	ldx	<R1
	xref	~~~mul
	jsl	~~~mul
	sta	<R1
	lda	<R1
	lsr	A
	sta	<R0
	ldy	#$c
	lda	[<L398+pWin_0],Y
	ldx	#<$2
	xref	~~~div
	jsl	~~~div
	sta	<R1
	clc
	lda	<R1
	ldy	#$8
	adc	[<L398+pWin_0],Y
	sta	<R2
	sec
	lda	<R2
	sbc	<R0
	pha
	ldy	#$141
	lda	[<L398+pWin_0],Y
	sta	<R0
	ldy	#$143
	lda	[<L398+pWin_0],Y
	sta	<R0+2
	ldy	#$2
	lda	[<R0],Y
	pha
	lda	[<R0]
	pha
	jsl	~~k_draw_text_point
;
;}
	.line	1618
L403:
	lda	<L398+2
	sta	<L398+2+8
	lda	<L398+1
	sta	<L398+1+8
	pld
	tsc
	clc
	adc	#L398+8
	tcs
	rtl
	.endblock	1618
L398	equ	12
L399	equ	13
	ends
	efunc
	.endfunc	1618,13,12
	.line	1618
;
;
;void k_size_dropdown_menus(LPVOID ctx,LPVOID data)
;{
	.line	1621
	.line	1622
	WINMAN
	xdef	~~k_size_dropdown_menus
	func
	.function	1622
~~k_size_dropdown_menus:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L404
	tcs
	phd
	tcd
ctx_0	set	4
data_0	set	8
	.block	1622
;	int i = 0;
;	//PRECT prect = ctx;
;	PWINDOW pMenuItem = NULL;
;	PMENUDROPDOWNDATA pmdd = (PMENUDROPDOWNDATA)ctx;
;	PMENU pMenu = (PMENU)data;
;	UINT  size = 0;
;
;	//k_debug_strings("k_size_dropdown_menus:","Enter");
;
;	if(pMenu->pCaption)
i_1	set	0
pMenuItem_1	set	2
pmdd_1	set	6
pMenu_1	set	10
size_1	set	14
	.sym	i,0,5,1,16
	.sym	pMenuItem,2,138,1,32,27
	.sym	pmdd,6,138,1,32,33
	.sym	pMenu,10,138,1,32,31
	.sym	size,14,16,1,16
	.sym	ctx,4,129,6,32
	.sym	data,8,129,6,32
	stz	<L405+i_1
	stz	<L405+pMenuItem_1
	stz	<L405+pMenuItem_1+2
	lda	<L404+ctx_0
	sta	<L405+pmdd_1
	lda	<L404+ctx_0+2
	sta	<L405+pmdd_1+2
	lda	<L404+data_0
	sta	<L405+pMenu_1
	lda	<L404+data_0+2
	sta	<L405+pMenu_1+2
	stz	<L405+size_1
	.line	1632
;	{
	ldy	#$f
	lda	[<L405+pMenu_1],Y
	ldy	#$11
	ora	[<L405+pMenu_1],Y
	bne	L407
	brl	L10114
L407:
	.line	1633
;		//k_debug_integer("k_size_dropdown_menus:height:",pmdd->rect.height);
;		//k_debug_strings("k_size_dropdown_menus:",(LPCHAR)pMenu->pCaption);
;
;		while(pmdd->captions[i])
	.line	1637
L10115:
	ldy	#$0
	lda	<L405+i_1
	bpl	L408
	dey
L408:
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
	adc	<L405+pmdd_1
	sta	<R2
	lda	#$0
	adc	<L405+pmdd_1+2
	sta	<R2+2
	clc
	lda	<R2
	adc	<R0
	sta	<R3
	lda	<R2+2
	adc	<R0+2
	sta	<R3+2
	lda	[<R3]
	ldy	#$2
	ora	[<R3],Y
	bne	L409
	brl	L10116
L409:
;		{
	.line	1638
;			i++;
	.line	1639
	inc	<L405+i_1
;		}
	.line	1640
	brl	L10115
L10116:
;		pmdd->ids[i] = pMenu->itemId;
	.line	1641
	ldy	#$0
	lda	<L405+i_1
	bpl	L410
	dey
L410:
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
	lda	#$84
	adc	<L405+pmdd_1
	sta	<R2
	lda	#$0
	adc	<L405+pmdd_1+2
	sta	<R2+2
	clc
	lda	<R2
	adc	<R0
	sta	<R3
	lda	<R2+2
	adc	<R0+2
	sta	<R3+2
	ldy	#$d
	lda	[<L405+pMenu_1],Y
	sta	[<R3]
;		//k_debug_integer("k_size_dropdown_menus:id:",pmdd->ids[i]);
;
;		pmdd->captions[i] = (LPCSTR)((PMENU)data)->pCaption;
	.line	1644
	ldy	#$0
	lda	<L405+i_1
	bpl	L411
	dey
L411:
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
	adc	<L405+pmdd_1
	sta	<R2
	lda	#$0
	adc	<L405+pmdd_1+2
	sta	<R2+2
	clc
	lda	<R2
	adc	<R0
	sta	<R3
	lda	<R2+2
	adc	<R0+2
	sta	<R3+2
	ldy	#$f
	lda	[<L404+data_0],Y
	sta	[<R3]
	ldy	#$11
	lda	[<L404+data_0],Y
	ldy	#$2
	sta	[<R3],Y
;		//k_debug_strings("k_size_dropdown_menus:",(LPCHAR)pmdd->captions[i]);
;		pmdd->chrome[i] = 0;
	.line	1646
	clc
	lda	#$6c
	adc	<L405+i_1
	sta	<R0
	sep	#$20
	longa	off
	lda	#$0
	ldy	<R0
	sta	[<L405+pmdd_1],Y
	rep	#$20
	longa	on
;		if(pMenu->chromeLeft != 0)
	.line	1647
;		{
	ldy	#$a
	lda	[<L405+pMenu_1],Y
	and	#$ff
	bne	L412
	brl	L10117
L412:
	.line	1648
;			pmdd->chrome[i] = pMenu->chromeLeft;
	.line	1649
	clc
	lda	#$6c
	adc	<L405+i_1
	sta	<R0
	sep	#$20
	longa	off
	ldy	#$a
	lda	[<L405+pMenu_1],Y
	ldy	<R0
	sta	[<L405+pmdd_1],Y
	rep	#$20
	longa	on
;			//k_debug_integer("k_size_dropdown_menus **CHECKED**:",pmdd->chrome[i]);
;		}
	.line	1651
;
;		pmdd->captions[i+1] = NULL;
L10117:
	.line	1653
	lda	<L405+i_1
	ina
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L413
	dey
L413:
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
	adc	<L405+pmdd_1
	sta	<R2
	lda	#$0
	adc	<L405+pmdd_1+2
	sta	<R2+2
	clc
	lda	<R2
	adc	<R0
	sta	<R3
	lda	<R2+2
	adc	<R0+2
	sta	<R3+2
	lda	#$0
	sta	[<R3]
	lda	#$0
	ldy	#$2
	sta	[<R3],Y
;
;
;		size = (strlen(pMenu->pCaption) + 2)* FONTW;
	.line	1656
	jsl	~~k_font_getFontWidth
	sta	<R0
	ldy	#$11
	lda	[<L405+pMenu_1],Y
	pha
	ldy	#$f
	lda	[<L405+pMenu_1],Y
	pha
	jsl	~~strlen
	sta	<R1
	clc
	lda	#$2
	adc	<R1
	sta	<R2
	lda	<R2
	ldx	<R0
	xref	~~~mul
	jsl	~~~mul
	sta	<L405+size_1
;		//k_debug_integer("k_size_dropdown_menus:size:",size);
;
;
;
;		if(size > pmdd->rect.width)
	.line	1661
;			pmdd->rect.width = size;
	ldy	#$8
	lda	[<L405+pmdd_1],Y
	cmp	<L405+size_1
	bcc	L414
	brl	L10118
L414:
	.line	1662
	lda	<L405+size_1
	ldy	#$8
	sta	[<L405+pmdd_1],Y
;		pmdd->rect.height+=(FONTH + FONTH/2);
L10118:
	.line	1663
	clc
	lda	#$a
	adc	<L405+pmdd_1
	sta	<R0
	lda	#$0
	adc	<L405+pmdd_1+2
	sta	<R0+2
	jsl	~~k_font_getFontHeight
	sta	<R1
	jsl	~~k_font_getFontHeight
	sta	<R3
	lda	<R3
	lsr	A
	sta	<R2
	clc
	lda	<R2
	adc	<R1
	sta	<R3
	clc
	lda	<R3
	adc	[<R0]
	sta	[<R0]
;	}
	.line	1664
;}
L10114:
	.line	1665
L415:
	lda	<L404+2
	sta	<L404+2+8
	lda	<L404+1
	sta	<L404+1+8
	pld
	tsc
	clc
	adc	#L404+8
	tcs
	rtl
	.endblock	1665
L404	equ	32
L405	equ	17
	ends
	efunc
	.endfunc	1665,17,32
	.line	1665
;
;
;
;
;PWINDOW	k_user_CreateMenuDropDown(HWND hWndParent,LPCSTR caption,HMENU hMenu,int x,int y,int width,int height)
;{
	.line	1670
	.line	1671
	WINMAN
	xdef	~~k_user_CreateMenuDropDown
	func
	.function	1671
~~k_user_CreateMenuDropDown:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L416
	tcs
	phd
	tcd
hWndParent_0	set	4
caption_0	set	8
hMenu_0	set	12
x_0	set	16
y_0	set	18
width_0	set	20
height_0	set	22
	.block	1671
;	PWINDOW pWin  = NULL;
;	PMENU   pMenu = NULL;
;	PMENUDROPDOWNDATA pddmData = NULL;
;	RECT rect;
;	int i;
;	k_debug_strings("k_user_CreateMenuDropDown:","Enter");
pWin_1	set	0
pMenu_1	set	4
pddmData_1	set	8
rect_1	set	12
i_1	set	20
	.sym	pWin,0,138,1,32,27
	.sym	pMenu,4,138,1,32,31
	.sym	pddmData,8,138,1,32,33
	.sym	rect,12,10,1,64,22
	.sym	i,20,5,1,16
	.sym	hWndParent,4,129,6,32
	.sym	caption,8,142,6,32
	.sym	hMenu,12,129,6,32
	.sym	x,16,5,6,16
	.sym	y,18,5,6,16
	.sym	width,20,5,6,16
	.sym	height,22,5,6,16
	stz	<L417+pWin_1
	stz	<L417+pWin_1+2
	stz	<L417+pMenu_1
	stz	<L417+pMenu_1+2
	stz	<L417+pddmData_1
	stz	<L417+pddmData_1+2
	.line	1677
	pea	#^L397+27
	pea	#<L397+27
	pea	#^L397
	pea	#<L397
	jsl	~~k_debug_strings
;
;
;	if(hMenu)
	.line	1680
;	{
	lda	<L416+hMenu_0
	ora	<L416+hMenu_0+2
	bne	L419
	brl	L10119
L419:
	.line	1681
;		rect.x = 0;
	.line	1682
	stz	<L417+rect_1
;		rect.y = 0;
	.line	1683
	stz	<L417+rect_1+2
;		rect.height = 0;
	.line	1684
	stz	<L417+rect_1+6
;		rect.width = 0;
	.line	1685
	stz	<L417+rect_1+4
;		pMenu = (PMENU)hMenu;
	.line	1686
	lda	<L416+hMenu_0
	sta	<L417+pMenu_1
	lda	<L416+hMenu_0+2
	sta	<L417+pMenu_1+2
;
;		pddmData = (PMENUDROPDOWNDATA)k_mem_allocate_heap(sizeof(MENUDROPDOWNDATA));
	.line	1688
	pea	#<$1be
	jsl	~~k_mem_allocate_heap
	sta	<L417+pddmData_1
	stx	<L417+pddmData_1+2
;
;		if(pddmData)
	.line	1690
;		{
	lda	<L417+pddmData_1
	ora	<L417+pddmData_1+2
	bne	L420
	brl	L10120
L420:
	.line	1691
;			memset(pddmData,0,sizeof(MENUDROPDOWNDATA));
	.line	1692
	pea	#<$1be
	pea	#<$0
	pei	<L417+pddmData_1+2
	pei	<L417+pddmData_1
	jsl	~~memset
;
;			k_debug_pointer("k_user_CreateMenuDropDown:pMenu:",pMenu);
	.line	1694
	pei	<L417+pMenu_1+2
	pei	<L417+pMenu_1
	pea	#^L397+33
	pea	#<L397+33
	jsl	~~k_debug_pointer
;
;			k_nodelist_foreach_type(pMenu->subMenus,
	.line	1696
;									NL_TYPE_WINDOW_MENU,
;									pddmData,
;									k_size_dropdown_menus);
	pea	#^~~k_size_dropdown_menus
	pea	#<~~k_size_dropdown_menus
	pei	<L417+pddmData_1+2
	pei	<L417+pddmData_1
	pea	#<$3
	ldy	#$15
	lda	[<L417+pMenu_1],Y
	pha
	ldy	#$13
	lda	[<L417+pMenu_1],Y
	pha
	jsl	~~k_nodelist_foreach_type
;
;
;			pWin = k_user_CreateWindow(FXWS_VISIBLE | FXWS_BORDER,
	.line	1702
;									   "menuDropDownWindowClass",
;										caption,
;										x,y,
;										pddmData->rect.width,
;										pddmData->rect.height,
;										hWndParent,//k_user_getDesktopWindow(),
;										(HMENU)hMenu,
;										NULL);
	pea	#^$0
	pea	#<$0
	pei	<L416+hMenu_0+2
	pei	<L416+hMenu_0
	pei	<L416+hWndParent_0+2
	pei	<L416+hWndParent_0
	ldy	#$a
	lda	[<L417+pddmData_1],Y
	pha
	ldy	#$8
	lda	[<L417+pddmData_1],Y
	pha
	pei	<L416+y_0
	pei	<L416+x_0
	pei	<L416+caption_0+2
	pei	<L416+caption_0
	pea	#^L397+66
	pea	#<L397+66
	pea	#^$10001
	pea	#<$10001
	jsl	~~k_user_CreateWindow
	sta	<L417+pWin_1
	stx	<L417+pWin_1+2
;
;			//k_debug_pointer("k_user_CreateMenuDropDown:pWin:",pWin);
;			if(pWin)
	.line	1713
;			{
	lda	<L417+pWin_1
	ora	<L417+pWin_1+2
	bne	L421
	brl	L10121
L421:
	.line	1714
;				pWin->windowData = pddmData;
	.line	1715
	lda	<L417+pddmData_1
	ldy	#$141
	sta	[<L417+pWin_1],Y
	lda	<L417+pddmData_1+2
	ldy	#$143
	sta	[<L417+pWin_1],Y
;
;				pddmData->pParent = pWin;
	.line	1717
	lda	<L417+pWin_1
	sta	[<L417+pddmData_1]
	lda	<L417+pWin_1+2
	ldy	#$2
	sta	[<L417+pddmData_1],Y
;				pddmData->selected = -1;
	.line	1718
	lda	#$ffff
	ldy	#$1bc
	sta	[<L417+pddmData_1],Y
;
;				/*
;
;				k_debug_integer("k_user_CreateMenuDropDown::win_x:", pWin->win_x);
;				k_debug_integer("k_user_CreateMenuDropDown::win_y:", pWin->win_y);
;				k_debug_integer("k_user_CreateMenuDropDown::rect.width:", pddmData->rect.width);
;				k_debug_integer("k_user_CreateMenuDropDown::rect.height:", pddmData->rect.height);
;
;
;				k_debug_pointer("k_user_CreateMenuDropDown:pWin:",pWin);
;				k_debug_pointer("k_user_CreateMenuDropDown:ParentWin:",k_getWindowFromHandle(hWndParent));
;				*/
;				for(i=0;i<24;i++)
	.line	1731
	stz	<L417+i_1
L10124:
;				{
	.line	1732
;					if(pddmData->captions[i])
	.line	1733
;						k_debug_strings("k_user_CreateMenuDropDown[pddmData]::caption:", (LPSTR)pddmData->captions[i]);
	ldy	#$0
	lda	<L417+i_1
	bpl	L422
	dey
L422:
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
	adc	<L417+pddmData_1
	sta	<R2
	lda	#$0
	adc	<L417+pddmData_1+2
	sta	<R2+2
	clc
	lda	<R2
	adc	<R0
	sta	<R3
	lda	<R2+2
	adc	<R0+2
	sta	<R3+2
	lda	[<R3]
	ldy	#$2
	ora	[<R3],Y
	bne	L423
	brl	L10125
L423:
	.line	1734
	ldy	#$0
	lda	<L417+i_1
	bpl	L424
	dey
L424:
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
	adc	<L417+pddmData_1
	sta	<R2
	lda	#$0
	adc	<L417+pddmData_1+2
	sta	<R2+2
	clc
	lda	<R2
	adc	<R0
	sta	<R3
	lda	<R2+2
	adc	<R0+2
	sta	<R3+2
	ldy	#$2
	lda	[<R3],Y
	pha
	lda	[<R3]
	pha
	pea	#^L397+90
	pea	#<L397+90
	jsl	~~k_debug_strings
;				}
L10125:
	.line	1735
L10122:
	inc	<L417+i_1
	sec
	lda	<L417+i_1
	sbc	#<$18
	bvs	L425
	eor	#$8000
L425:
	bmi	L426
	brl	L10124
L426:
L10123:
;			}
	.line	1736
;		}
L10121:
	.line	1737
;	}
L10120:
	.line	1738
;
;	k_debug_strings("k_user_CreateMenuDropDown:","Exit");
L10119:
	.line	1740
	pea	#^L397+163
	pea	#<L397+163
	pea	#^L397+136
	pea	#<L397+136
	jsl	~~k_debug_strings
;
;	return pWin;
	.line	1742
	ldx	<L417+pWin_1+2
	lda	<L417+pWin_1
L427:
	tay
	lda	<L416+2
	sta	<L416+2+20
	lda	<L416+1
	sta	<L416+1+20
	pld
	tsc
	clc
	adc	#L416+20
	tcs
	tya
	rtl
;}
	.line	1743
	.endblock	1743
L416	equ	38
L417	equ	17
	ends
	efunc
	.endfunc	1743,17,38
	.line	1743
	data
L397:
	db	$6B,$5F,$75,$73,$65,$72,$5F,$43,$72,$65,$61,$74,$65,$4D,$65
	db	$6E,$75,$44,$72,$6F,$70,$44,$6F,$77,$6E,$3A,$00,$45,$6E,$74
	db	$65,$72,$00,$6B,$5F,$75,$73,$65,$72,$5F,$43,$72,$65,$61,$74
	db	$65,$4D,$65,$6E,$75,$44,$72,$6F,$70,$44,$6F,$77,$6E,$3A,$70
	db	$4D,$65,$6E,$75,$3A,$00,$6D,$65,$6E,$75,$44,$72,$6F,$70,$44
	db	$6F,$77,$6E,$57,$69,$6E,$64,$6F,$77,$43,$6C,$61,$73,$73,$00
	db	$6B,$5F,$75,$73,$65,$72,$5F,$43,$72,$65,$61,$74,$65,$4D,$65
	db	$6E,$75,$44,$72,$6F,$70,$44,$6F,$77,$6E,$5B,$70,$64,$64,$6D
	db	$44,$61,$74,$61,$5D,$3A,$3A,$63,$61,$70,$74,$69,$6F,$6E,$3A
	db	$00,$6B,$5F,$75,$73,$65,$72,$5F,$43,$72,$65,$61,$74,$65,$4D
	db	$65,$6E,$75,$44,$72,$6F,$70,$44,$6F,$77,$6E,$3A,$00,$45,$78
	db	$69,$74,$00
	ends
;
;
;BOOL menuDropDownWindowProc(PFXOSMESSAGE pMsg)
;{
	.line	1746
	.line	1747
	WINMAN
	xdef	~~menuDropDownWindowProc
	func
	.function	1747
~~menuDropDownWindowProc:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L429
	tcs
	phd
	tcd
pMsg_0	set	4
	.block	1747
;	PFXPROCESS p = NULL;
;	PWINDOW	   pWin = NULL;
;	PBUTTON	   pButton = NULL;
;	//LPCSTR	   captions[] = {"About FX/OS...",NULL};
;	LPCSTR	   captions[25];
;	UINT	   size = 0;
;	UINT	   cy = 0;
;	PMENU	   pMenu = NULL;
;	PMENUDROPDOWNDATA pddmData = NULL;
;	int i;
;
;	if(pMsg!=NULL)
p_1	set	0
pWin_1	set	4
pButton_1	set	8
captions_1	set	12
size_1	set	112
cy_1	set	114
pMenu_1	set	116
pddmData_1	set	120
i_1	set	124
	.sym	p,0,138,1,32,17
	.sym	pWin,4,138,1,32,27
	.sym	pButton,8,138,1,32,34
	.sym	captions,12,1134,1,32,25
	.sym	size,112,16,1,16
	.sym	cy,114,16,1,16
	.sym	pMenu,116,138,1,32,31
	.sym	pddmData,120,138,1,32,33
	.sym	i,124,5,1,16
	.sym	pMsg,4,138,6,32,13
	stz	<L430+p_1
	stz	<L430+p_1+2
	stz	<L430+pWin_1
	stz	<L430+pWin_1+2
	stz	<L430+pButton_1
	stz	<L430+pButton_1+2
	stz	<L430+size_1
	stz	<L430+cy_1
	stz	<L430+pMenu_1
	stz	<L430+pMenu_1+2
	stz	<L430+pddmData_1
	stz	<L430+pddmData_1+2
	.line	1759
;	{
	lda	<L429+pMsg_0
	ora	<L429+pMsg_0+2
	bne	L432
	brl	L10126
L432:
	.line	1760
;		p = k_exec_get_current_process();
	.line	1761
	jsl	~~k_exec_get_current_process
	sta	<L430+p_1
	stx	<L430+p_1+2
;		pWin = k_getWindowFromHandle(pMsg->hwnd);
	.line	1762
	ldy	#$c
	lda	[<L429+pMsg_0],Y
	pha
	ldy	#$a
	lda	[<L429+pMsg_0],Y
	pha
	jsl	~~k_getWindowFromHandle
	sta	<L430+pWin_1
	stx	<L430+pWin_1+2
;		//pButton = ((PBUTTON)pWin->windowData);
;
;		switch(pMsg->type)
	.line	1765
	ldy	#$8
	lda	[<L429+pMsg_0],Y
	brl	L10127
;		{
	.line	1766
;		case FX_CREATE_WINDOW:
	.line	1767
L10129:
;			//k_debug_long("menuDropDownWindowProc::ProcessId:",p->procId);
;			k_debug_string("menuDropDownWindowProc::FX_CREATE_WINDOW\r\n");
	.line	1769
	pea	#^L428
	pea	#<L428
	jsl	~~k_debug_string
;
;			pWin->isVisible = TRUE;
	.line	1771
	sep	#$20
	longa	off
	lda	#$1
	ldy	#$140
	sta	[<L430+pWin_1],Y
	rep	#$20
	longa	on
;
;			/*
;			k_scratch_save_bitblt(pWin->win_x,
;								  pWin->win_y,
;								  pWin->win_width,
;								  pWin->win_height, 0, 0);
;			*/
;			pddmData = (PMENUDROPDOWNDATA)pWin->windowData;
	.line	1779
	ldy	#$141
	lda	[<L430+pWin_1],Y
	sta	<L430+pddmData_1
	ldy	#$143
	lda	[<L430+pWin_1],Y
	sta	<L430+pddmData_1+2
;			/*
;			for(i=0;i<24;i++)
;			{
;				if(pddmData->captions[i])
;					k_debug_strings("menuDropDownWindowProc[pddmData]::caption:", (LPSTR)pddmData->captions[i]);
;			}
;			*/
;			break;
	.line	1787
	brl	L10128
;		case FX_DRAW_WINDOW:
	.line	1788
L10130:
;			k_debug_string("menuDropDownWindowProc::FX_DRAW_WINDOW\r\n");
	.line	1789
	pea	#^L428+43
	pea	#<L428+43
	jsl	~~k_debug_string
;
;			pddmData = (PMENUDROPDOWNDATA)pWin->windowData;
	.line	1791
	ldy	#$141
	lda	[<L430+pWin_1],Y
	sta	<L430+pddmData_1
	ldy	#$143
	lda	[<L430+pWin_1],Y
	sta	<L430+pddmData_1+2
;			if(pddmData)
	.line	1792
;			{
	lda	<L430+pddmData_1
	ora	<L430+pddmData_1+2
	bne	L433
	brl	L10131
L433:
	.line	1793
;				k_create_context_menu_in_window_ex(pWin,
	.line	1794
;						                        -1,
;											    -1,
;						                        pWin->win_x,
;											    pWin->win_y,
;											    pWin->win_width,
;											    pWin->win_height,
;											    pddmData->captions,
;												pddmData->chrome,
;											    k_getUIGadgetColor(),
;											    k_getUIMenuColor());
	jsl	~~k_getUIMenuColor
	pha
	jsl	~~k_getUIGadgetColor
	pha
	clc
	lda	#$6c
	adc	<L430+pddmData_1
	sta	<R0
	lda	#$0
	adc	<L430+pddmData_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	#$c
	adc	<L430+pddmData_1
	sta	<R1
	lda	#$0
	adc	<L430+pddmData_1+2
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	ldy	#$e
	lda	[<L430+pWin_1],Y
	pha
	ldy	#$c
	lda	[<L430+pWin_1],Y
	pha
	ldy	#$a
	lda	[<L430+pWin_1],Y
	pha
	ldy	#$8
	lda	[<L430+pWin_1],Y
	pha
	pea	#<$ffffffff
	pea	#<$ffffffff
	pei	<L430+pWin_1+2
	pei	<L430+pWin_1
	jsl	~~k_create_context_menu_in_window_ex
;
;			}
	.line	1806
;
;			break;
L10131:
	.line	1808
	brl	L10128
;		case FX_LBUTTON_DOWN:
	.line	1809
L10132:
;			k_debug_string("menuDropDownWindowProc::FX_LBUTTON_DOWN\r\n");
	.line	1810
	pea	#^L428+84
	pea	#<L428+84
	jsl	~~k_debug_string
;
;			pddmData = (PMENUDROPDOWNDATA)pWin->windowData;
	.line	1812
	ldy	#$141
	lda	[<L430+pWin_1],Y
	sta	<L430+pddmData_1
	ldy	#$143
	lda	[<L430+pWin_1],Y
	sta	<L430+pddmData_1+2
;			if(pddmData->selected!=-1)
	.line	1813
;			{
	ldy	#$1bc
	lda	[<L430+pddmData_1],Y
	cmp	#<$ffffffff
	bne	L434
	brl	L10133
L434:
	.line	1814
;				/*
;				k_scratch_restore_bitblt(0,0,
;										 pWin->win_width,
;										 pWin->win_height,
;										 pWin->win_x,
;										 pWin->win_y);
;				*/
;				k_vdma_fill_rect_ex(pWin->win_x,
	.line	1822
;									pWin->win_y,
;									pWin->win_width,
;									pWin->win_height,
;									0,
;									0x00);
	pea	#<$0
	pea	#<$0
	ldy	#$e
	lda	[<L430+pWin_1],Y
	pha
	ldy	#$c
	lda	[<L430+pWin_1],Y
	pha
	ldy	#$0
	phy
	ldy	#$a
	lda	[<L430+pWin_1],Y
	ply
	rol	A
	ror	A
	bpl	L435
	dey
L435:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	phy
	ldy	#$8
	lda	[<L430+pWin_1],Y
	ply
	rol	A
	ror	A
	bpl	L436
	dey
L436:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect_ex
;
;				pWin->isVisible = FALSE;
	.line	1829
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$140
	sta	[<L430+pWin_1],Y
	rep	#$20
	longa	on
;
;				k_debug_pointer("k_size_dropdown_menus:hwnd:",pMsg->hwnd);
	.line	1831
	ldy	#$c
	lda	[<L429+pMsg_0],Y
	pha
	ldy	#$a
	lda	[<L429+pMsg_0],Y
	pha
	pea	#^L428+126
	pea	#<L428+126
	jsl	~~k_debug_pointer
;				k_debug_integer("k_size_dropdown_menus:id:",pddmData->selected);
	.line	1832
	ldy	#$1bc
	lda	[<L430+pddmData_1],Y
	pha
	pea	#^L428+154
	pea	#<L428+154
	jsl	~~k_debug_integer
;				k_debug_integer("k_size_dropdown_menus:id:",pddmData->ids[pddmData->selected]);
	.line	1833
	ldy	#$1bc
	lda	[<L430+pddmData_1],Y
	sta	<R1
	stz	<R1+2
	pei	<R1+2
	pei	<R1
	lda	#$1
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R0
	stx	<R0+2
	clc
	lda	#$84
	adc	<L430+pddmData_1
	sta	<R2
	lda	#$0
	adc	<L430+pddmData_1+2
	sta	<R2+2
	clc
	lda	<R2
	adc	<R0
	sta	<R3
	lda	<R2+2
	adc	<R0+2
	sta	<R3+2
	lda	[<R3]
	pha
	pea	#^L428+180
	pea	#<L428+180
	jsl	~~k_debug_integer
;
;
;
;
;				k_send_command_message(pWin->pParentWindow,
	.line	1838
;						 	 	 	   FX_MENU_COMMAND,
;									   CTL_MENU_SELECTED,
;									   pddmData->ids[pddmData->selected],
;									   pddmData->selected,
;									   (ULONG)pWin->hMenu);
	ldy	#$136
	lda	[<L430+pWin_1],Y
	pha
	ldy	#$134
	lda	[<L430+pWin_1],Y
	pha
	ldy	#$1bc
	lda	[<L430+pddmData_1],Y
	sta	<R0
	stz	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$1bc
	lda	[<L430+pddmData_1],Y
	sta	<R2
	stz	<R2+2
	pei	<R2+2
	pei	<R2
	lda	#$1
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R1
	stx	<R1+2
	clc
	lda	#$84
	adc	<L430+pddmData_1
	sta	<R3
	lda	#$0
	adc	<L430+pddmData_1+2
	sta	<R3+2
	clc
	lda	<R3
	adc	<R1
	sta	<17
	lda	<R3+2
	adc	<R1+2
	sta	<17+2
	lda	[<17]
	pha
	pea	#<$1
	pea	#<$fa01
	ldy	#$132
	lda	[<L430+pWin_1],Y
	pha
	ldy	#$130
	lda	[<L430+pWin_1],Y
	pha
	jsl	~~k_send_command_message
;
;				return FALSE;
	.line	1845
	lda	#$0
L437:
	tay
	lda	<L429+2
	sta	<L429+2+4
	lda	<L429+1
	sta	<L429+1+4
	pld
	tsc
	clc
	adc	#L429+4
	tcs
	tya
	rtl
;			}
	.line	1846
;
;			break;
L10133:
	.line	1848
	brl	L10128
;
;		case FX_LBUTTON_UP:
	.line	1850
L10134:
;			k_debug_string("menuDropDownWindowProc::FX_LBUTTON_UP\r\n");
	.line	1851
	pea	#^L428+206
	pea	#<L428+206
	jsl	~~k_debug_string
;			break;
	.line	1852
	brl	L10128
;		case FX_MOUSE_ENTER:
	.line	1853
L10135:
;			k_debug_string("menuDropDownWindowProc::FX_MOUSE_ENTER\r\n");
	.line	1854
	pea	#^L428+246
	pea	#<L428+246
	jsl	~~k_debug_string
;
;			break;
	.line	1856
	brl	L10128
;		case FX_MOUSE_MOVE:
	.line	1857
L10136:
;
;			cy = *((INT*)&pMsg->data[3]) - pWin->win_y;
	.line	1859
	sec
	ldy	#$19
	lda	[<L429+pMsg_0],Y
	ldy	#$a
	sbc	[<L430+pWin_1],Y
	sta	<L430+cy_1
;
;			if(cy > 4 &&  cy < (pWin->win_y+pWin->win_height))
	.line	1861
;			{
	lda	#$4
	cmp	<L430+cy_1
	bcc	L438
	brl	L10137
L438:
	clc
	ldy	#$a
	lda	[<L430+pWin_1],Y
	ldy	#$e
	adc	[<L430+pWin_1],Y
	sta	<R0
	lda	<L430+cy_1
	cmp	<R0
	bcc	L439
	brl	L10137
L439:
	.line	1862
;				size = (INT)((cy - 4)/10);
	.line	1863
	clc
	lda	#$fffc
	adc	<L430+cy_1
	sta	<R0
	lda	<R0
	ldx	#<$a
	xref	~~~udv
	jsl	~~~udv
	sta	<L430+size_1
;
;				pddmData = (PMENUDROPDOWNDATA)pWin->windowData;
	.line	1865
	ldy	#$141
	lda	[<L430+pWin_1],Y
	sta	<L430+pddmData_1
	ldy	#$143
	lda	[<L430+pWin_1],Y
	sta	<L430+pddmData_1+2
;				if(pddmData)
	.line	1866
;				{
	lda	<L430+pddmData_1
	ora	<L430+pddmData_1+2
	bne	L440
	brl	L10138
L440:
	.line	1867
;					if(pddmData->selected!=size)
	.line	1868
;					{
	ldy	#$1bc
	lda	[<L430+pddmData_1],Y
	cmp	<L430+size_1
	bne	L441
	brl	L10139
L441:
	.line	1869
;						k_create_context_menu_in_window_ex(pWin,
	.line	1870
;													    size,
;														pddmData->selected,
;													    pWin->win_x,
;													    pWin->win_y,
;													    pWin->win_width,
;													    pWin->win_height,
;													    pddmData->captions,
;														pddmData->chrome,
;													    k_getUIGadgetColor(),
;													    k_getUIMenuColor());
	jsl	~~k_getUIMenuColor
	pha
	jsl	~~k_getUIGadgetColor
	pha
	clc
	lda	#$6c
	adc	<L430+pddmData_1
	sta	<R0
	lda	#$0
	adc	<L430+pddmData_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	#$c
	adc	<L430+pddmData_1
	sta	<R1
	lda	#$0
	adc	<L430+pddmData_1+2
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	ldy	#$e
	lda	[<L430+pWin_1],Y
	pha
	ldy	#$c
	lda	[<L430+pWin_1],Y
	pha
	ldy	#$a
	lda	[<L430+pWin_1],Y
	pha
	ldy	#$8
	lda	[<L430+pWin_1],Y
	pha
	ldy	#$1bc
	lda	[<L430+pddmData_1],Y
	pha
	pei	<L430+size_1
	pei	<L430+pWin_1+2
	pei	<L430+pWin_1
	jsl	~~k_create_context_menu_in_window_ex
;						pddmData->selected = size;
	.line	1881
	lda	<L430+size_1
	ldy	#$1bc
	sta	[<L430+pddmData_1],Y
;					}
	.line	1882
;				}
L10139:
	.line	1883
;			}
L10138:
	.line	1884
;
;
;			break;
L10137:
	.line	1887
	brl	L10128
;
;		case FX_MOUSE_EXIT:
	.line	1889
L10140:
;			k_debug_string("menuDropDownWindowProc::FX_MOUSE_EXIT\r\n");
	.line	1890
	pea	#^L428+287
	pea	#<L428+287
	jsl	~~k_debug_string
;			/*
;			k_scratch_restore_bitblt(0,0,
;									 pWin->win_width,
;									 pWin->win_height,
;									 pWin->win_x,
;									 pWin->win_y);
;
;			*/
;			k_vdma_fill_rect_ex(pWin->win_x,
	.line	1899
;					 	 	 	 pWin->win_y,
;								 pWin->win_width,
;								 pWin->win_height,
;								 0,
;								 0x00);
	pea	#<$0
	pea	#<$0
	ldy	#$e
	lda	[<L430+pWin_1],Y
	pha
	ldy	#$c
	lda	[<L430+pWin_1],Y
	pha
	ldy	#$0
	phy
	ldy	#$a
	lda	[<L430+pWin_1],Y
	ply
	rol	A
	ror	A
	bpl	L442
	dey
L442:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	phy
	ldy	#$8
	lda	[<L430+pWin_1],Y
	ply
	rol	A
	ror	A
	bpl	L443
	dey
L443:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect_ex
;
;			pWin->isVisible = FALSE;
	.line	1906
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$140
	sta	[<L430+pWin_1],Y
	rep	#$20
	longa	on
;
;			return FALSE;
	.line	1908
	lda	#$0
	brl	L437
;
;			break;
	.line	1910
;		case FX_CONTROL_COMMAND:
	.line	1911
L10141:
;		case FX_MENU_COMMAND:
	.line	1912
L10142:
;			k_debug_integer("menuDropDownWindowProc::FX_MENU_COMMAND:",pMsg->type);
	.line	1913
	ldy	#$8
	lda	[<L429+pMsg_0],Y
	pha
	pea	#^L428+327
	pea	#<L428+327
	jsl	~~k_debug_integer
;			break;
	.line	1914
	brl	L10128
;		default:
	.line	1915
L10143:
;			//DefWindowProc(pMsg);
;			break;
	.line	1917
	brl	L10128
;		}
	.line	1918
L10127:
	xref	~~~swt
	jsl	~~~swt
	dw	9
	dw	3841
	dw	L10135-1
	dw	3842
	dw	L10140-1
	dw	3843
	dw	L10136-1
	dw	3844
	dw	L10132-1
	dw	3846
	dw	L10134-1
	dw	64000
	dw	L10141-1
	dw	64001
	dw	L10142-1
	dw	64256
	dw	L10130-1
	dw	65283
	dw	L10129-1
	dw	L10143-1
L10128:
;	}
	.line	1919
;
;	return TRUE;
L10126:
	.line	1921
	lda	#$1
	brl	L437
;
;}
	.line	1923
	.endblock	1923
L429	equ	146
L430	equ	21
	ends
	efunc
	.endfunc	1923,21,146
	.line	1923
	data
L428:
	db	$6D,$65,$6E,$75,$44,$72,$6F,$70,$44,$6F,$77,$6E,$57,$69,$6E
	db	$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$43,$52,$45
	db	$41,$54,$45,$5F,$57,$49,$4E,$44,$4F,$57,$0D,$0A,$00,$6D,$65
	db	$6E,$75,$44,$72,$6F,$70,$44,$6F,$77,$6E,$57,$69,$6E,$64,$6F
	db	$77,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$44,$52,$41,$57,$5F
	db	$57,$49,$4E,$44,$4F,$57,$0D,$0A,$00,$6D,$65,$6E,$75,$44,$72
	db	$6F,$70,$44,$6F,$77,$6E,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F
	db	$63,$3A,$3A,$46,$58,$5F,$4C,$42,$55,$54,$54,$4F,$4E,$5F,$44
	db	$4F,$57,$4E,$0D,$0A,$00,$6B,$5F,$73,$69,$7A,$65,$5F,$64,$72
	db	$6F,$70,$64,$6F,$77,$6E,$5F,$6D,$65,$6E,$75,$73,$3A,$68,$77
	db	$6E,$64,$3A,$00,$6B,$5F,$73,$69,$7A,$65,$5F,$64,$72,$6F,$70
	db	$64,$6F,$77,$6E,$5F,$6D,$65,$6E,$75,$73,$3A,$69,$64,$3A,$00
	db	$6B,$5F,$73,$69,$7A,$65,$5F,$64,$72,$6F,$70,$64,$6F,$77,$6E
	db	$5F,$6D,$65,$6E,$75,$73,$3A,$69,$64,$3A,$00,$6D,$65,$6E,$75
	db	$44,$72,$6F,$70,$44,$6F,$77,$6E,$57,$69,$6E,$64,$6F,$77,$50
	db	$72,$6F,$63,$3A,$3A,$46,$58,$5F,$4C,$42,$55,$54,$54,$4F,$4E
	db	$5F,$55,$50,$0D,$0A,$00,$6D,$65,$6E,$75,$44,$72,$6F,$70,$44
	db	$6F,$77,$6E,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A
	db	$46,$58,$5F,$4D,$4F,$55,$53,$45,$5F,$45,$4E,$54,$45,$52,$0D
	db	$0A,$00,$6D,$65,$6E,$75,$44,$72,$6F,$70,$44,$6F,$77,$6E,$57
	db	$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$4D
	db	$4F,$55,$53,$45,$5F,$45,$58,$49,$54,$0D,$0A,$00,$6D,$65,$6E
	db	$75,$44,$72,$6F,$70,$44,$6F,$77,$6E,$57,$69,$6E,$64,$6F,$77
	db	$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$4D,$45,$4E,$55,$5F,$43
	db	$4F,$4D,$4D,$41,$4E,$44,$3A,$00
	ends
;
;/*
;PWINDOW	k_user_CreateMenuDropItem(HWND hWndParent,LPCSTR caption,HMENU hMenu,int x,int y,int width,int height)
;{
;	PWINDOW pWin = NULL;
;
;	k_debug_strings("k_user_CreateMenuDropItem:","Enter");
;
;	pWin = k_user_CreateWindow(0,
;							   "menuItemWindowClass",
;							    caption,
;								x,y,
;								width,height,
;								hWndParent,
;								hMenu,
;								NULL);
;	if(pWin)
;	{
;		//k_add_child_window(k_getWindowFromHandle(hWndParent),pWin,k_update_hover_location);
;		//k_debug_strings("k_user_CreateButton:","k_send_window_message");
;		k_send_window_message(k_getHandleFromWindow(pWin),FX_CREATE_WINDOW,NULL,0);
;		//k_send_command_message(k_getHandleFromWindow(pWin),FX_CONTROL_COMMAND,CTL_CMD_CAPTION,0,(ULONG)k_string_copy_string(caption),0L);
;	}
;
;	//k_debug_strings("k_user_CreateMenuAnchor:","Exit");
;
;	return pWin;
;}
;
;BOOL menuItemWindowProc(PFXOSMESSAGE pMsg)
;{
;	PFXPROCESS p = NULL;
;	PWINDOW	   pWin = NULL;
;	PBUTTON	   pButton = NULL;
;	//LPCSTR	   captions[] = {"About FX/OS...",NULL};
;	LPCSTR	   captions[25];
;	UINT	   size = 0;
;	PMENU	   pMenu = NULL;
;	PMENUDROPDOWNDATA pddmData = NULL;
;
;	if(pMsg!=NULL)
;	{
;		p = k_exec_get_current_process();
;		pWin = k_getWindowFromHandle(pMsg->hwnd);
;		//pButton = ((PBUTTON)pWin->windowData);
;		//k_debug_long("consoleWindowProc::ProcessId:",p->procId);
;
;		switch(pMsg->type)
;		{
;		case FX_CREATE_WINDOW:
;			//k_debug_long("menuDropDownWindowProc::ProcessId:",p->procId);
;			k_debug_strings("menuItemWindowProc::FX_CREATE_WINDOW:",pWin->win_title);
;			break;
;		case FX_MOUSE_ENTER:
;			//k_debug_long("menuDropDownWindowProc::ProcessId:",p->procId);
;			k_debug_strings("menuItemWindowProc::FX_MOUSE_ENTER:",pWin->win_title);
;
;			//k_vdma_fill_rect(pWin->win_x,pWin->win_y,pWin->win_width,pWin->win_height,k_getUIGadgetColor());
;			//k_draw_text_point(pWin->win_title,pWin->win_x,pWin->win_y,k_getUIMenuColor());
;
;
;			break;
;		case FX_MOUSE_EXIT:
;			//k_debug_long("menuDropDownWindowProc::ProcessId:",p->procId);
;			k_debug_strings("menuItemWindowProc::FX_MOUSE_EXIT:",pWin->win_title);
;
;			//k_vdma_fill_rect(pWin->win_x,pWin->win_y,pWin->win_width,pWin->win_height,k_getUIMenuColor());
;			//k_draw_text_point(pWin->win_title,pWin->win_x,pWin->win_y,k_getUIGadgetColor());
;			break;
;		case FX_DRAW_WINDOW:
;
;			break;
;		case FX_CONTROL_COMMAND:
;			break;
;
;		default:
;			break;
;		}
;	}
;	return TRUE;
;}
;*/
;
;
;PWINDOW	k_user_CreateButton(HWND hWndParent,LPCSTR caption,UINT buttonId,int x,int y,int width,int height)
;{
	.line	2008
	.line	2009
	WINMAN
	xdef	~~k_user_CreateButton
	func
	.function	2009
~~k_user_CreateButton:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L445
	tcs
	phd
	tcd
hWndParent_0	set	4
caption_0	set	8
buttonId_0	set	12
x_0	set	14
y_0	set	16
width_0	set	18
height_0	set	20
	.block	2009
;	PWINDOW pWin = NULL;
;	PWINDOW pParent = NULL;
;
;	//k_debug_strings("k_user_CreateButton:","Enter");
;
;	if(width < 0)
pWin_1	set	0
pParent_1	set	4
	.sym	pWin,0,138,1,32,27
	.sym	pParent,4,138,1,32,27
	.sym	hWndParent,4,129,6,32
	.sym	caption,8,142,6,32
	.sym	buttonId,12,16,6,16
	.sym	x,14,5,6,16
	.sym	y,16,5,6,16
	.sym	width,18,5,6,16
	.sym	height,20,5,6,16
	stz	<L446+pWin_1
	stz	<L446+pWin_1+2
	stz	<L446+pParent_1
	stz	<L446+pParent_1+2
	.line	2015
;		width = (FONTW * strlen(caption)) + (2 * FONTW);
	lda	<L445+width_0
	bmi	L448
	brl	L10144
L448:
	.line	2016
	jsl	~~k_font_getFontWidth
	sta	<R1
	lda	<R1
	asl	A
	sta	<R0
	pei	<L445+caption_0+2
	pei	<L445+caption_0
	jsl	~~strlen
	sta	<R1
	jsl	~~k_font_getFontWidth
	sta	<R2
	lda	<R2
	ldx	<R1
	xref	~~~mul
	jsl	~~~mul
	sta	<R1
	clc
	lda	<R1
	adc	<R0
	sta	<L445+width_0
;	if(height < 0)
L10144:
	.line	2017
;		height = FONTH * 3;
	lda	<L445+height_0
	bmi	L449
	brl	L10145
L449:
	.line	2018
	jsl	~~k_font_getFontHeight
	sta	<R0
	lda	<R0
	asl	A
	adc	<R0
	sta	<L445+height_0
;
;
;	k_debug_integer("k_user_CreateButton:cx:",x);
L10145:
	.line	2021
	pei	<L445+x_0
	pea	#^L444
	pea	#<L444
	jsl	~~k_debug_integer
;	k_debug_integer("k_user_CreateButton:cy:",y);
	.line	2022
	pei	<L445+y_0
	pea	#^L444+24
	pea	#<L444+24
	jsl	~~k_debug_integer
;	k_debug_integer("k_user_CreateButton:width:",width);
	.line	2023
	pei	<L445+width_0
	pea	#^L444+48
	pea	#<L444+48
	jsl	~~k_debug_integer
;	k_debug_integer("k_user_CreateButton:height:",height);
	.line	2024
	pei	<L445+height_0
	pea	#^L444+75
	pea	#<L444+75
	jsl	~~k_debug_integer
;
;	pWin = k_user_CreateWindow(FXWS_BORDER | FXWS_VISIBLE,
	.line	2026
;							   "buttonWindowClass",
;								caption,
;								x,y,
;								width,height,
;								hWndParent,
;								(HMENU)buttonId,
;								NULL);
	pea	#^$0
	pea	#<$0
	ldy	#$0
	lda	<L445+buttonId_0
	bpl	L450
	dey
L450:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	pei	<L445+hWndParent_0+2
	pei	<L445+hWndParent_0
	pei	<L445+height_0
	pei	<L445+width_0
	pei	<L445+y_0
	pei	<L445+x_0
	pei	<L445+caption_0+2
	pei	<L445+caption_0
	pea	#^L444+103
	pea	#<L444+103
	pea	#^$10001
	pea	#<$10001
	jsl	~~k_user_CreateWindow
	sta	<L446+pWin_1
	stx	<L446+pWin_1+2
;
;	k_debug_integer("k_user_CreateButtonA:cx:",pWin->win_x);
	.line	2035
	ldy	#$8
	lda	[<L446+pWin_1],Y
	pha
	pea	#^L444+121
	pea	#<L444+121
	jsl	~~k_debug_integer
;	k_debug_integer("k_user_CreateButtonA:cy:",pWin->win_y);
	.line	2036
	ldy	#$a
	lda	[<L446+pWin_1],Y
	pha
	pea	#^L444+146
	pea	#<L444+146
	jsl	~~k_debug_integer
;	k_debug_integer("k_user_CreateButtonA:width:",pWin->win_width);
	.line	2037
	ldy	#$c
	lda	[<L446+pWin_1],Y
	pha
	pea	#^L444+171
	pea	#<L444+171
	jsl	~~k_debug_integer
;	k_debug_integer("k_user_CreateButtonA:height:",pWin->win_height);
	.line	2038
	ldy	#$e
	lda	[<L446+pWin_1],Y
	pha
	pea	#^L444+199
	pea	#<L444+199
	jsl	~~k_debug_integer
;
;
;	if(pWin)
	.line	2041
;	{
	lda	<L446+pWin_1
	ora	<L446+pWin_1+2
	bne	L451
	brl	L10146
L451:
	.line	2042
;		//k_add_child_window(k_getWindowFromHandle(hWndParent),pWin,k_update_hover_location);//k_buttonHitDetected);
;
;		//k_debug_strings("k_user_CreateButton:","k_send_window_message");
;		k_send_window_message(k_getHandleFromWindow(pWin),FX_CREATE_WINDOW,NULL,0);
	.line	2046
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$ff03
	pei	<L446+pWin_1+2
	pei	<L446+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_send_window_message
;		//k_debug_strings("k_user_CreateButton:","k_send_command_message");
;		k_send_command_message(k_getHandleFromWindow(pWin),FX_CONTROL_COMMAND,CTL_CMD_CAPTION,0,(ULONG)k_string_copy_string(caption),0L);
	.line	2048
	pea	#^$0
	pea	#<$0
	pei	<L445+caption_0+2
	pei	<L445+caption_0
	jsl	~~k_string_copy_string
	sta	<R0
	stx	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#<$0
	pea	#<$1
	pea	#<$fa00
	pei	<L446+pWin_1+2
	pei	<L446+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R1
	stx	<R1+2
	phx
	pha
	jsl	~~k_send_command_message
;
;	}
	.line	2050
;
;	//k_debug_strings("k_user_CreateButton:","Exit");
;
;	return pWin;
L10146:
	.line	2054
	ldx	<L446+pWin_1+2
	lda	<L446+pWin_1
L452:
	tay
	lda	<L445+2
	sta	<L445+2+18
	lda	<L445+1
	sta	<L445+1+18
	pld
	tsc
	clc
	adc	#L445+18
	tcs
	tya
	rtl
;}
	.line	2055
	.endblock	2055
L445	equ	20
L446	equ	13
	ends
	efunc
	.endfunc	2055,13,20
	.line	2055
	data
L444:
	db	$6B,$5F,$75,$73,$65,$72,$5F,$43,$72,$65,$61,$74,$65,$42,$75
	db	$74,$74,$6F,$6E,$3A,$63,$78,$3A,$00,$6B,$5F,$75,$73,$65,$72
	db	$5F,$43,$72,$65,$61,$74,$65,$42,$75,$74,$74,$6F,$6E,$3A,$63
	db	$79,$3A,$00,$6B,$5F,$75,$73,$65,$72,$5F,$43,$72,$65,$61,$74
	db	$65,$42,$75,$74,$74,$6F,$6E,$3A,$77,$69,$64,$74,$68,$3A,$00
	db	$6B,$5F,$75,$73,$65,$72,$5F,$43,$72,$65,$61,$74,$65,$42,$75
	db	$74,$74,$6F,$6E,$3A,$68,$65,$69,$67,$68,$74,$3A,$00,$62,$75
	db	$74,$74,$6F,$6E,$57,$69,$6E,$64,$6F,$77,$43,$6C,$61,$73,$73
	db	$00,$6B,$5F,$75,$73,$65,$72,$5F,$43,$72,$65,$61,$74,$65,$42
	db	$75,$74,$74,$6F,$6E,$41,$3A,$63,$78,$3A,$00,$6B,$5F,$75,$73
	db	$65,$72,$5F,$43,$72,$65,$61,$74,$65,$42,$75,$74,$74,$6F,$6E
	db	$41,$3A,$63,$79,$3A,$00,$6B,$5F,$75,$73,$65,$72,$5F,$43,$72
	db	$65,$61,$74,$65,$42,$75,$74,$74,$6F,$6E,$41,$3A,$77,$69,$64
	db	$74,$68,$3A,$00,$6B,$5F,$75,$73,$65,$72,$5F,$43,$72,$65,$61
	db	$74,$65,$42,$75,$74,$74,$6F,$6E,$41,$3A,$68,$65,$69,$67,$68
	db	$74,$3A,$00
	ends
;
;BOOL buttonWindowProc(PFXOSMESSAGE pMsg)
;{
	.line	2057
	.line	2058
	WINMAN
	xdef	~~buttonWindowProc
	func
	.function	2058
~~buttonWindowProc:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L454
	tcs
	phd
	tcd
pMsg_0	set	4
	.block	2058
;	PFXPROCESS p = NULL;
;	PWINDOW	   pWin = NULL;
;	PBUTTON	   pButton = NULL;
;	UINT	   size = 0;
;
;	if(pMsg!=NULL)
p_1	set	0
pWin_1	set	4
pButton_1	set	8
size_1	set	12
	.sym	p,0,138,1,32,17
	.sym	pWin,4,138,1,32,27
	.sym	pButton,8,138,1,32,34
	.sym	size,12,16,1,16
	.sym	pMsg,4,138,6,32,13
	stz	<L455+p_1
	stz	<L455+p_1+2
	stz	<L455+pWin_1
	stz	<L455+pWin_1+2
	stz	<L455+pButton_1
	stz	<L455+pButton_1+2
	stz	<L455+size_1
	.line	2064
;	{
	lda	<L454+pMsg_0
	ora	<L454+pMsg_0+2
	bne	L457
	brl	L10147
L457:
	.line	2065
;		p = k_exec_get_current_process();
	.line	2066
	jsl	~~k_exec_get_current_process
	sta	<L455+p_1
	stx	<L455+p_1+2
;		pWin = k_getWindowFromHandle(pMsg->hwnd);
	.line	2067
	ldy	#$c
	lda	[<L454+pMsg_0],Y
	pha
	ldy	#$a
	lda	[<L454+pMsg_0],Y
	pha
	jsl	~~k_getWindowFromHandle
	sta	<L455+pWin_1
	stx	<L455+pWin_1+2
;		pButton = ((PBUTTON)pWin->windowData);
	.line	2068
	ldy	#$141
	lda	[<L455+pWin_1],Y
	sta	<L455+pButton_1
	ldy	#$143
	lda	[<L455+pWin_1],Y
	sta	<L455+pButton_1+2
;		//k_debug_long("consoleWindowProc::ProcessId:",p->procId);
;
;		switch(pMsg->type)
	.line	2071
	ldy	#$8
	lda	[<L454+pMsg_0],Y
	brl	L10148
;		{
	.line	2072
;		case FX_CREATE_WINDOW:
	.line	2073
L10150:
;			//k_debug_long("buttonWindowProc::ProcessId:",p->procId);
;			//k_debug_string("buttonWindowProc::FX_CREATE_WINDOW\r\n");
;
;			pWin->windowData = k_mem_allocate_heap(sizeof(BUTTON));
	.line	2077
	pea	#<$a
	jsl	~~k_mem_allocate_heap
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$141
	sta	[<L455+pWin_1],Y
	lda	<R0+2
	ldy	#$143
	sta	[<L455+pWin_1],Y
;
;
;			k_vdraw_ui_window(pWin,
	.line	2080
;							  FXWS_BORDER | FXWS_VISIBLE,
;							  pWin->win_x ,pWin->win_y,
;							  pWin->win_height,pWin->win_width,
;							  pWin->win_title,
;							  k_getUIGadgetColor(), k_getUIMenuColor());
	jsl	~~k_getUIMenuColor
	pha
	jsl	~~k_getUIGadgetColor
	pha
	clc
	lda	#$d4
	adc	<L455+pWin_1
	sta	<R0
	lda	#$0
	adc	<L455+pWin_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$c
	lda	[<L455+pWin_1],Y
	pha
	ldy	#$e
	lda	[<L455+pWin_1],Y
	pha
	ldy	#$a
	lda	[<L455+pWin_1],Y
	pha
	ldy	#$8
	lda	[<L455+pWin_1],Y
	pha
	pea	#^$10001
	pea	#<$10001
	pei	<L455+pWin_1+2
	pei	<L455+pWin_1
	jsl	~~k_vdraw_ui_window
;
;
;			break;
	.line	2088
	brl	L10149
;		case FX_DRAW_WINDOW:
	.line	2089
L10151:
;			k_debug_pointer("buttonWindowProc::FX_DRAW_WINDOW:",pButton);
	.line	2090
	pei	<L455+pButton_1+2
	pei	<L455+pButton_1
	pea	#^L453
	pea	#<L453
	jsl	~~k_debug_pointer
;			if(pButton)
	.line	2091
;			{
	lda	<L455+pButton_1
	ora	<L455+pButton_1+2
	bne	L458
	brl	L10152
L458:
	.line	2092
;				k_vdraw_ui_window(pWin,FXWS_BORDER | FXWS_VISIBLE,
	.line	2093
;								  pWin->win_x ,pWin->win_y,
;								  pWin->win_height,pWin->win_width,
;								  pWin->win_title,
;								  k_getUIGadgetColor(), k_getUIMenuColor());
	jsl	~~k_getUIMenuColor
	pha
	jsl	~~k_getUIGadgetColor
	pha
	clc
	lda	#$d4
	adc	<L455+pWin_1
	sta	<R0
	lda	#$0
	adc	<L455+pWin_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$c
	lda	[<L455+pWin_1],Y
	pha
	ldy	#$e
	lda	[<L455+pWin_1],Y
	pha
	ldy	#$a
	lda	[<L455+pWin_1],Y
	pha
	ldy	#$8
	lda	[<L455+pWin_1],Y
	pha
	pea	#^$10001
	pea	#<$10001
	pei	<L455+pWin_1+2
	pei	<L455+pWin_1
	jsl	~~k_vdraw_ui_window
;
;				size = strlen(pButton->pCaption) * FONTW;
	.line	2099
	jsl	~~k_font_getFontWidth
	sta	<R0
	ldy	#$2
	lda	[<L455+pButton_1],Y
	pha
	lda	[<L455+pButton_1]
	pha
	jsl	~~strlen
	sta	<R1
	lda	<R1
	ldx	<R0
	xref	~~~mul
	jsl	~~~mul
	sta	<L455+size_1
;				k_draw_text_point(pButton->pCaption,
	.line	2100
;								  pWin->win_x + (pWin->win_width/2)  - (size/2),
;								  pWin->win_y + (pWin->win_height/2) - (4),k_getUIGadgetColor());
	jsl	~~k_getUIGadgetColor
	pha
	ldy	#$e
	lda	[<L455+pWin_1],Y
	ldx	#<$2
	xref	~~~div
	jsl	~~~div
	sta	<R0
	clc
	lda	<R0
	ldy	#$a
	adc	[<L455+pWin_1],Y
	sta	<R1
	clc
	lda	#$fffc
	adc	<R1
	pha
	lda	<L455+size_1
	lsr	A
	sta	<R0
	ldy	#$c
	lda	[<L455+pWin_1],Y
	ldx	#<$2
	xref	~~~div
	jsl	~~~div
	sta	<R1
	clc
	lda	<R1
	ldy	#$8
	adc	[<L455+pWin_1],Y
	sta	<R2
	sec
	lda	<R2
	sbc	<R0
	pha
	ldy	#$2
	lda	[<L455+pButton_1],Y
	pha
	lda	[<L455+pButton_1]
	pha
	jsl	~~k_draw_text_point
;			}
	.line	2103
;			break;
L10152:
	.line	2104
	brl	L10149
;		case FX_REDRAW_WINDOW:
	.line	2105
L10153:
;			k_debug_string("buttonWindowProc::FX_REDRAW_WINDOW\r\n");
	.line	2106
	pea	#^L453+34
	pea	#<L453+34
	jsl	~~k_debug_string
;			break;
	.line	2107
	brl	L10149
;
;		case FX_LBUTTON_DOWN:
	.line	2109
L10154:
;			k_debug_string("buttonWindowProc::FX_LBUTTON_DOWN\r\n");
	.line	2110
	pea	#^L453+71
	pea	#<L453+71
	jsl	~~k_debug_string
;
;
;			if(pButton->pCaption)
	.line	2113
;			{
	lda	[<L455+pButton_1]
	ldy	#$2
	ora	[<L455+pButton_1],Y
	bne	L459
	brl	L10155
L459:
	.line	2114
;				//k_debug_strings("buttonWindowProc::CTL_CMD_CAPTION:", (LPCHAR)pButton->pCaption );
;
;				k_vdraw_ui_window(pWin,FXWS_BORDER | FXWS_VISIBLE,
	.line	2117
;								  pWin->win_x ,pWin->win_y,
;								  pWin->win_height,pWin->win_width,
;								  pWin->win_title,
;								  k_getUIGadgetColor(), k_getUIMenuColor());
	jsl	~~k_getUIMenuColor
	pha
	jsl	~~k_getUIGadgetColor
	pha
	clc
	lda	#$d4
	adc	<L455+pWin_1
	sta	<R0
	lda	#$0
	adc	<L455+pWin_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$c
	lda	[<L455+pWin_1],Y
	pha
	ldy	#$e
	lda	[<L455+pWin_1],Y
	pha
	ldy	#$a
	lda	[<L455+pWin_1],Y
	pha
	ldy	#$8
	lda	[<L455+pWin_1],Y
	pha
	pea	#^$10001
	pea	#<$10001
	pei	<L455+pWin_1+2
	pei	<L455+pWin_1
	jsl	~~k_vdraw_ui_window
;
;				/*
;				k_draw_line(pWin->win_x + 1 ,pWin->win_y + 1,
;						    pWin->win_x + 1,
;							pWin->win_y + pWin->win_height - 1 , 0);
;
;				k_draw_line(pWin->win_x + 1 ,pWin->win_y + pWin->win_height - 1,
;						    pWin->win_x + pWin->win_width - 1,pWin->win_y + pWin->win_height - 1 , 0);
;
;				*/
;
;				k_draw_line(pWin->win_x + 1 ,
	.line	2133
;							pWin->win_y + 1,
;						    pWin->win_x + pWin->win_width - 1,
;							pWin->win_y + 1,
;							0);
	pea	#<$0
	ldy	#$a
	lda	[<L455+pWin_1],Y
	ina
	pha
	clc
	ldy	#$8
	lda	[<L455+pWin_1],Y
	ldy	#$c
	adc	[<L455+pWin_1],Y
	sta	<R0
	clc
	lda	#$ffff
	adc	<R0
	pha
	ldy	#$a
	lda	[<L455+pWin_1],Y
	ina
	pha
	ldy	#$8
	lda	[<L455+pWin_1],Y
	ina
	pha
	jsl	~~k_draw_line
;
;				k_draw_line(pWin->win_x + 1 ,
	.line	2139
;							pWin->win_y + 2,
;						    pWin->win_x + pWin->win_width - 1,
;							pWin->win_y + 2,
;							0);
	pea	#<$0
	clc
	lda	#$2
	ldy	#$a
	adc	[<L455+pWin_1],Y
	pha
	clc
	ldy	#$8
	lda	[<L455+pWin_1],Y
	ldy	#$c
	adc	[<L455+pWin_1],Y
	sta	<R0
	clc
	lda	#$ffff
	adc	<R0
	pha
	clc
	lda	#$2
	ldy	#$a
	adc	[<L455+pWin_1],Y
	pha
	ldy	#$8
	lda	[<L455+pWin_1],Y
	ina
	pha
	jsl	~~k_draw_line
;
;
;				k_draw_line(pWin->win_x + pWin->win_width  - 1,
	.line	2146
;							pWin->win_y + 1 ,
;						    pWin->win_x + pWin->win_width  - 1,
;							pWin->win_y + pWin->win_height - 1,
;							0);
	pea	#<$0
	clc
	ldy	#$a
	lda	[<L455+pWin_1],Y
	ldy	#$e
	adc	[<L455+pWin_1],Y
	sta	<R0
	clc
	lda	#$ffff
	adc	<R0
	pha
	clc
	ldy	#$8
	lda	[<L455+pWin_1],Y
	ldy	#$c
	adc	[<L455+pWin_1],Y
	sta	<R0
	clc
	lda	#$ffff
	adc	<R0
	pha
	ldy	#$a
	lda	[<L455+pWin_1],Y
	ina
	pha
	clc
	ldy	#$8
	lda	[<L455+pWin_1],Y
	ldy	#$c
	adc	[<L455+pWin_1],Y
	sta	<R0
	clc
	lda	#$ffff
	adc	<R0
	pha
	jsl	~~k_draw_line
;
;				k_draw_line(pWin->win_x + pWin->win_width  - 2,
	.line	2152
;							pWin->win_y + 1,
;						    pWin->win_x + pWin->win_width  - 2,
;							pWin->win_y + pWin->win_height - 1,
;							0);
	pea	#<$0
	clc
	ldy	#$a
	lda	[<L455+pWin_1],Y
	ldy	#$e
	adc	[<L455+pWin_1],Y
	sta	<R0
	clc
	lda	#$ffff
	adc	<R0
	pha
	clc
	ldy	#$8
	lda	[<L455+pWin_1],Y
	ldy	#$c
	adc	[<L455+pWin_1],Y
	sta	<R0
	clc
	lda	#$fffe
	adc	<R0
	pha
	ldy	#$a
	lda	[<L455+pWin_1],Y
	ina
	pha
	clc
	ldy	#$8
	lda	[<L455+pWin_1],Y
	ldy	#$c
	adc	[<L455+pWin_1],Y
	sta	<R0
	clc
	lda	#$fffe
	adc	<R0
	pha
	jsl	~~k_draw_line
;
;
;
;				size = strlen(pButton->pCaption) * FONTW;
	.line	2160
	jsl	~~k_font_getFontWidth
	sta	<R0
	ldy	#$2
	lda	[<L455+pButton_1],Y
	pha
	lda	[<L455+pButton_1]
	pha
	jsl	~~strlen
	sta	<R1
	lda	<R1
	ldx	<R0
	xref	~~~mul
	jsl	~~~mul
	sta	<L455+size_1
;				k_draw_text_point(pButton->pCaption,
	.line	2161
;						          pWin->win_x + (pWin->win_width/2)  - (size/2) - 2,
;								  pWin->win_y + (pWin->win_height/2) - (4) + 2     , k_getUIGadgetColor()) ;
	jsl	~~k_getUIGadgetColor
	pha
	ldy	#$e
	lda	[<L455+pWin_1],Y
	ldx	#<$2
	xref	~~~div
	jsl	~~~div
	sta	<R0
	clc
	lda	<R0
	ldy	#$a
	adc	[<L455+pWin_1],Y
	sta	<R1
	clc
	lda	#$fffe
	adc	<R1
	pha
	lda	<L455+size_1
	lsr	A
	sta	<R0
	ldy	#$c
	lda	[<L455+pWin_1],Y
	ldx	#<$2
	xref	~~~div
	jsl	~~~div
	sta	<R1
	clc
	lda	<R1
	ldy	#$8
	adc	[<L455+pWin_1],Y
	sta	<R2
	sec
	lda	<R2
	sbc	<R0
	sta	<R1
	clc
	lda	#$fffe
	adc	<R1
	pha
	ldy	#$2
	lda	[<L455+pButton_1],Y
	pha
	lda	[<L455+pButton_1]
	pha
	jsl	~~k_draw_text_point
;			}
	.line	2164
;
;
;			break;
L10155:
	.line	2167
	brl	L10149
;
;		case FX_LBUTTON_UP:
	.line	2169
L10156:
;			k_debug_string("buttonWindowProc::FX_LBUTTON_UP\r\n");
	.line	2170
	pea	#^L453+107
	pea	#<L453+107
	jsl	~~k_debug_string
;			if(pButton->pCaption)
	.line	2171
;			{
	lda	[<L455+pButton_1]
	ldy	#$2
	ora	[<L455+pButton_1],Y
	bne	L460
	brl	L10157
L460:
	.line	2172
;				//k_debug_strings("buttonWindowProc::CTL_CMD_CAPTION:", (LPCHAR)pButton->pCaption );
;
;				k_vdraw_ui_window(pWin,FXWS_BORDER | FXWS_VISIBLE,
	.line	2175
;								  pWin->win_x ,pWin->win_y,
;								  pWin->win_height,pWin->win_width,
;								  pWin->win_title,
;								  k_getUIGadgetColor(), k_getUIMenuColor());
	jsl	~~k_getUIMenuColor
	pha
	jsl	~~k_getUIGadgetColor
	pha
	clc
	lda	#$d4
	adc	<L455+pWin_1
	sta	<R0
	lda	#$0
	adc	<L455+pWin_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$c
	lda	[<L455+pWin_1],Y
	pha
	ldy	#$e
	lda	[<L455+pWin_1],Y
	pha
	ldy	#$a
	lda	[<L455+pWin_1],Y
	pha
	ldy	#$8
	lda	[<L455+pWin_1],Y
	pha
	pea	#^$10001
	pea	#<$10001
	pei	<L455+pWin_1+2
	pei	<L455+pWin_1
	jsl	~~k_vdraw_ui_window
;
;				size = strlen(pButton->pCaption) * FONTW;
	.line	2181
	jsl	~~k_font_getFontWidth
	sta	<R0
	ldy	#$2
	lda	[<L455+pButton_1],Y
	pha
	lda	[<L455+pButton_1]
	pha
	jsl	~~strlen
	sta	<R1
	lda	<R1
	ldx	<R0
	xref	~~~mul
	jsl	~~~mul
	sta	<L455+size_1
;				k_draw_text_point(pButton->pCaption,
	.line	2182
;						          pWin->win_x + (pWin->win_width/2)  - (size/2),
;								  pWin->win_y + (pWin->win_height/2) - (4),k_getUIGadgetColor());
	jsl	~~k_getUIGadgetColor
	pha
	ldy	#$e
	lda	[<L455+pWin_1],Y
	ldx	#<$2
	xref	~~~div
	jsl	~~~div
	sta	<R0
	clc
	lda	<R0
	ldy	#$a
	adc	[<L455+pWin_1],Y
	sta	<R1
	clc
	lda	#$fffc
	adc	<R1
	pha
	lda	<L455+size_1
	lsr	A
	sta	<R0
	ldy	#$c
	lda	[<L455+pWin_1],Y
	ldx	#<$2
	xref	~~~div
	jsl	~~~div
	sta	<R1
	clc
	lda	<R1
	ldy	#$8
	adc	[<L455+pWin_1],Y
	sta	<R2
	sec
	lda	<R2
	sbc	<R0
	pha
	ldy	#$2
	lda	[<L455+pButton_1],Y
	pha
	lda	[<L455+pButton_1]
	pha
	jsl	~~k_draw_text_point
;			}
	.line	2185
;
;			//k_send_command_message(pWin->pParentWindow,FX_CONTROL_COMMAND,LOWORD((ULONG)pWin->hMenu),0,0L,0L);
;
;			k_send_command_message(pWin->pParentWindow,FX_CONTROL_COMMAND,CTL_BUTTON_SELECTED,LOWORD((ULONG)pWin->hMenu),0L,0L);
L10157:
	.line	2189
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	ldy	#$134
	lda	[<L455+pWin_1],Y
	pha
	pea	#<$2
	pea	#<$fa00
	ldy	#$132
	lda	[<L455+pWin_1],Y
	pha
	ldy	#$130
	lda	[<L455+pWin_1],Y
	pha
	jsl	~~k_send_command_message
;
;			break;
	.line	2191
	brl	L10149
;		case FX_MOUSE_ENTER:
	.line	2192
L10158:
;			k_debug_string("buttonWindowProc::FX_MOUSE_ENTER\r\n");
	.line	2193
	pea	#^L453+141
	pea	#<L453+141
	jsl	~~k_debug_string
;
;			break;
	.line	2195
	brl	L10149
;		case FX_MOUSE_EXIT:
	.line	2196
L10159:
;			k_debug_string("buttonWindowProc::FX_MOUSE_EXIT\r\n");
	.line	2197
	pea	#^L453+176
	pea	#<L453+176
	jsl	~~k_debug_string
;
;			break;
	.line	2199
	brl	L10149
;
;		case FX_CONTROL_COMMAND:
	.line	2201
L10160:
;			//k_debug_string("buttonWindowProc::FX_CONTROL_COMMAND\r\n");
;
;
;
;			if( ((PFXCMDMESSAGE)pMsg)->cmdCId == CTL_CMD_CAPTION )
	.line	2206
;			{
	ldy	#$16
	lda	[<L454+pMsg_0],Y
	cmp	#<$1
	beq	L461
	brl	L10161
L461:
	.line	2207
;				pButton->pCaption = (LPCHAR)((PFXCMDMESSAGE)pMsg)->parameter1;
	.line	2208
	ldy	#$1a
	lda	[<L454+pMsg_0],Y
	sta	[<L455+pButton_1]
	ldy	#$1c
	lda	[<L454+pMsg_0],Y
	ldy	#$2
	sta	[<L455+pButton_1],Y
;
;				if(pButton->pCaption)
	.line	2210
;				{
	lda	[<L455+pButton_1]
	ldy	#$2
	ora	[<L455+pButton_1],Y
	bne	L462
	brl	L10162
L462:
	.line	2211
;					//k_debug_strings("buttonWindowProc::CTL_CMD_CAPTION:", (LPCHAR)pButton->pCaption );
;
;					size = strlen(pButton->pCaption) * FONTW;
	.line	2214
	jsl	~~k_font_getFontWidth
	sta	<R0
	ldy	#$2
	lda	[<L455+pButton_1],Y
	pha
	lda	[<L455+pButton_1]
	pha
	jsl	~~strlen
	sta	<R1
	lda	<R1
	ldx	<R0
	xref	~~~mul
	jsl	~~~mul
	sta	<L455+size_1
;					k_draw_text_point(pButton->pCaption,
	.line	2215
;							          pWin->win_x + (pWin->win_width/2)  - (size/2),
;									  pWin->win_y + (pWin->win_height/2) - (4),k_getUIGadgetColor());
	jsl	~~k_getUIGadgetColor
	pha
	ldy	#$e
	lda	[<L455+pWin_1],Y
	ldx	#<$2
	xref	~~~div
	jsl	~~~div
	sta	<R0
	clc
	lda	<R0
	ldy	#$a
	adc	[<L455+pWin_1],Y
	sta	<R1
	clc
	lda	#$fffc
	adc	<R1
	pha
	lda	<L455+size_1
	lsr	A
	sta	<R0
	ldy	#$c
	lda	[<L455+pWin_1],Y
	ldx	#<$2
	xref	~~~div
	jsl	~~~div
	sta	<R1
	clc
	lda	<R1
	ldy	#$8
	adc	[<L455+pWin_1],Y
	sta	<R2
	sec
	lda	<R2
	sbc	<R0
	pha
	ldy	#$2
	lda	[<L455+pButton_1],Y
	pha
	lda	[<L455+pButton_1]
	pha
	jsl	~~k_draw_text_point
;				}
	.line	2218
;			}
L10162:
	.line	2219
;
;			break;
L10161:
	.line	2221
	brl	L10149
;		default:
	.line	2222
L10163:
;			break;
	.line	2223
	brl	L10149
;		}
	.line	2224
L10148:
	xref	~~~swt
	jsl	~~~swt
	dw	8
	dw	3841
	dw	L10158-1
	dw	3842
	dw	L10159-1
	dw	3844
	dw	L10154-1
	dw	3846
	dw	L10156-1
	dw	64000
	dw	L10160-1
	dw	64256
	dw	L10151-1
	dw	64263
	dw	L10153-1
	dw	65283
	dw	L10150-1
	dw	L10163-1
L10149:
;	}
	.line	2225
;
;	return TRUE;
L10147:
	.line	2227
	lda	#$1
L463:
	tay
	lda	<L454+2
	sta	<L454+2+4
	lda	<L454+1
	sta	<L454+1+4
	pld
	tsc
	clc
	adc	#L454+4
	tcs
	tya
	rtl
;
;}
	.line	2229
	.endblock	2229
L454	equ	26
L455	equ	13
	ends
	efunc
	.endfunc	2229,13,26
	.line	2229
	data
L453:
	db	$62,$75,$74,$74,$6F,$6E,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F
	db	$63,$3A,$3A,$46,$58,$5F,$44,$52,$41,$57,$5F,$57,$49,$4E,$44
	db	$4F,$57,$3A,$00,$62,$75,$74,$74,$6F,$6E,$57,$69,$6E,$64,$6F
	db	$77,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$52,$45,$44,$52,$41
	db	$57,$5F,$57,$49,$4E,$44,$4F,$57,$0D,$0A,$00,$62,$75,$74,$74
	db	$6F,$6E,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46
	db	$58,$5F,$4C,$42,$55,$54,$54,$4F,$4E,$5F,$44,$4F,$57,$4E,$0D
	db	$0A,$00,$62,$75,$74,$74,$6F,$6E,$57,$69,$6E,$64,$6F,$77,$50
	db	$72,$6F,$63,$3A,$3A,$46,$58,$5F,$4C,$42,$55,$54,$54,$4F,$4E
	db	$5F,$55,$50,$0D,$0A,$00,$62,$75,$74,$74,$6F,$6E,$57,$69,$6E
	db	$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$4D,$4F,$55
	db	$53,$45,$5F,$45,$4E,$54,$45,$52,$0D,$0A,$00,$62,$75,$74,$74
	db	$6F,$6E,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46
	db	$58,$5F,$4D,$4F,$55,$53,$45,$5F,$45,$58,$49,$54,$0D,$0A,$00
	ends
;
;
;
;
;BOOL k_add_child_window(PWINDOW pParent,PWINDOW pChild,OBJECTCLICKED objclickCallback)
;{
	.line	2234
	.line	2235
	WINMAN
	xdef	~~k_add_child_window
	func
	.function	2235
~~k_add_child_window:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L465
	tcs
	phd
	tcd
pParent_0	set	4
pChild_0	set	8
objclickCallback_0	set	12
	.block	2235
;	BOOL bRet = FALSE;
;
;	PFXNODE new = NULL;
;
;	if(pParent && pChild)
bRet_1	set	0
new_1	set	1
	.sym	bRet,0,14,1,8
	.sym	new,1,138,1,32,2
	.sym	pParent,4,138,6,32,27
	.sym	pChild,8,138,6,32,27
	.sym	objclickCallback,12,641,6,32
	sep	#$20
	longa	off
	stz	<L466+bRet_1
	rep	#$20
	longa	on
	stz	<L466+new_1
	stz	<L466+new_1+2
	.line	2240
;	{
	lda	<L465+pParent_0
	ora	<L465+pParent_0+2
	bne	L468
	brl	L10164
L468:
	lda	<L465+pChild_0
	ora	<L465+pChild_0+2
	bne	L469
	brl	L10164
L469:
	.line	2241
;		new = k_nodelist_ncreate(NL_TYPE_WINDOW_OBJ,(ULONG)k_getHandleFromWindow(pChild),pChild,NULL,NULL);
	.line	2242
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pei	<L465+pChild_0+2
	pei	<L465+pChild_0
	pei	<L465+pChild_0+2
	pei	<L465+pChild_0
	jsl	~~k_getHandleFromWindow
	sta	<R0
	stx	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#<$2
	jsl	~~k_nodelist_ncreate
	sta	<L466+new_1
	stx	<L466+new_1+2
;		//k_debug_strings("Created Child node:",pChild->win_title);
;
;		if(!pParent->pChildWindows)
	.line	2245
;		{
	ldy	#$138
	lda	[<L465+pParent_0],Y
	ldy	#$13a
	ora	[<L465+pParent_0],Y
	beq	L470
	brl	L10165
L470:
	.line	2246
;			pParent->pChildWindows = k_nodelist_allocate_list("_child_window_class_list" ,k_deallocate_window_object);
	.line	2247
	pea	#^~~k_deallocate_window_object
	pea	#<~~k_deallocate_window_object
	pea	#^L464
	pea	#<L464
	jsl	~~k_nodelist_allocate_list
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$138
	sta	[<L465+pParent_0],Y
	lda	<R0+2
	ldy	#$13a
	sta	[<L465+pParent_0],Y
;			//k_debug_pointer("k_add_child_window:pChildWindows created:",pParent->pChildWindows);
;		}
	.line	2249
;
;		if(!pParent->pChildHitList)
L10165:
	.line	2251
;		{
	ldy	#$13c
	lda	[<L465+pParent_0],Y
	ldy	#$13e
	ora	[<L465+pParent_0],Y
	beq	L471
	brl	L10166
L471:
	.line	2252
;			pParent->pChildHitList = k_nodelist_allocate_list("_child_hit_list" ,k_deallocate_hit_class);
	.line	2253
	pea	#^~~k_deallocate_hit_class
	pea	#<~~k_deallocate_hit_class
	pea	#^L464+25
	pea	#<L464+25
	jsl	~~k_nodelist_allocate_list
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$13c
	sta	[<L465+pParent_0],Y
	lda	<R0+2
	ldy	#$13e
	sta	[<L465+pParent_0],Y
;			//k_debug_pointer("k_add_child_window:pChildHitList created:",pParent->pChildHitList);
;		}
	.line	2255
;
;		//k_debug_pointer("k_add_child_window:pChildWindows:",pParent->pChildWindows);
;		//k_debug_pointer("k_add_child_window:pChildHitList:",pParent->pChildHitList);
;
;		k_nodelist_addnodetolist(pParent->pChildWindows,new);
L10166:
	.line	2260
	pei	<L466+new_1+2
	pei	<L466+new_1
	ldy	#$13a
	lda	[<L465+pParent_0],Y
	pha
	ldy	#$138
	lda	[<L465+pParent_0],Y
	pha
	jsl	~~k_nodelist_addnodetolist
;
;		//k_debug_strings("Node List for:",pParent->win_title);
;		//k_debug_nodelist(pParent->pChildWindows->listhead->next);
;		k_attach_mouse_detection_local(pParent->pChildHitList,pChild,objclickCallback);
	.line	2264
	pei	<L465+objclickCallback_0+2
	pei	<L465+objclickCallback_0
	pei	<L465+pChild_0+2
	pei	<L465+pChild_0
	ldy	#$13e
	lda	[<L465+pParent_0],Y
	pha
	ldy	#$13c
	lda	[<L465+pParent_0],Y
	pha
	jsl	~~k_attach_mouse_detection_local
;
;		bRet = TRUE;
	.line	2266
	sep	#$20
	longa	off
	lda	#$1
	sta	<L466+bRet_1
	rep	#$20
	longa	on
;	}
	.line	2267
;
;	return bRet;
L10164:
	.line	2269
	lda	<L466+bRet_1
	and	#$ff
L472:
	tay
	lda	<L465+2
	sta	<L465+2+12
	lda	<L465+1
	sta	<L465+1+12
	pld
	tsc
	clc
	adc	#L465+12
	tcs
	tya
	rtl
;}
	.line	2270
	.endblock	2270
L465	equ	9
L466	equ	5
	ends
	efunc
	.endfunc	2270,5,9
	.line	2270
	data
L464:
	db	$5F,$63,$68,$69,$6C,$64,$5F,$77,$69,$6E,$64,$6F,$77,$5F,$63
	db	$6C,$61,$73,$73,$5F,$6C,$69,$73,$74,$00,$5F,$63,$68,$69,$6C
	db	$64,$5F,$68,$69,$74,$5F,$6C,$69,$73,$74,$00
	ends
;
;void k_update_hover_location(PWINDOW pWin)
;{
	.line	2272
	.line	2273
	WINMAN
	xdef	~~k_update_hover_location
	func
	.function	2273
~~k_update_hover_location:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L474
	tcs
	phd
	tcd
pWin_0	set	4
	.block	2273
;	PWINDOW pOld = NULL;
;
;	//k_debug_strings("k_update_hover_location::pWin:",pWin->win_title);
;
;	//k_debug_strings("k_menuHitDetected::pWin:",pWin->win_title);
;
;	if(_k_windowManager_WindowObjectList->listData!=pWin)
pOld_1	set	0
	.sym	pOld,0,138,1,32,27
	.sym	pWin,4,138,6,32,27
	stz	<L475+pOld_1
	stz	<L475+pOld_1+2
	.line	2280
;	{
	lda	|~~_k_windowManager_WindowObjectList
	sta	<R0
	lda	|~~_k_windowManager_WindowObjectList+2
	sta	<R0+2
	ldy	#$4
	lda	[<R0],Y
	cmp	<L474+pWin_0
	bne	L477
	ldy	#$6
	lda	[<R0],Y
	cmp	<L474+pWin_0+2
L477:
	bne	L478
	brl	L10167
L478:
	.line	2281
;		if(_k_windowManager_WindowObjectList->listData != NULL)
	.line	2282
;		{
	lda	|~~_k_windowManager_WindowObjectList
	sta	<R0
	lda	|~~_k_windowManager_WindowObjectList+2
	sta	<R0+2
	ldy	#$4
	lda	[<R0],Y
	ldy	#$6
	ora	[<R0],Y
	bne	L479
	brl	L10168
L479:
	.line	2283
;			pOld = _k_windowManager_WindowObjectList->listData;
	.line	2284
	lda	|~~_k_windowManager_WindowObjectList
	sta	<R0
	lda	|~~_k_windowManager_WindowObjectList+2
	sta	<R0+2
	ldy	#$4
	lda	[<R0],Y
	sta	<L475+pOld_1
	ldy	#$6
	lda	[<R0],Y
	sta	<L475+pOld_1+2
;			//k_debug_strings("k_Detected::pOld:",pOld->win_title);
;			/*
;			k_vdraw_ui_window(FXWS_OVERLAPPED,
;							  pWin->win_x ,pWin->win_y,
;							  pWin->win_height,pWin->win_width,
;							  (LPCHAR)pWin->win_title,
;							  15, 3);*/
;		}
	.line	2292
;		_k_windowManager_WindowObjectList->listData=pWin;
L10168:
	.line	2293
	lda	|~~_k_windowManager_WindowObjectList
	sta	<R0
	lda	|~~_k_windowManager_WindowObjectList+2
	sta	<R0+2
	lda	<L474+pWin_0
	ldy	#$4
	sta	[<R0],Y
	lda	<L474+pWin_0+2
	ldy	#$6
	sta	[<R0],Y
;
;		k_send_window_message(k_getHandleFromWindow(pWin),FX_MOUSE_ENTER,NULL,0);
	.line	2295
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$f01
	pei	<L474+pWin_0+2
	pei	<L474+pWin_0
	jsl	~~k_getHandleFromWindow
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_send_window_message
;		if(pOld)
	.line	2296
;		{
	lda	<L475+pOld_1
	ora	<L475+pOld_1+2
	bne	L480
	brl	L10169
L480:
	.line	2297
;			k_send_window_message(k_getHandleFromWindow(pOld),FX_MOUSE_EXIT,NULL,0);
	.line	2298
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$f02
	pei	<L475+pOld_1+2
	pei	<L475+pOld_1
	jsl	~~k_getHandleFromWindow
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_send_window_message
;		}
	.line	2299
;		//k_send_window_message(k_getHandleFromWindow(pWin),FX_MOUSE_ENTER,NULL,0);
;	}
L10169:
	.line	2301
;
;}
L10167:
	.line	2303
L481:
	lda	<L474+2
	sta	<L474+2+4
	lda	<L474+1
	sta	<L474+1+4
	pld
	tsc
	clc
	adc	#L474+4
	tcs
	rtl
	.endblock	2303
L474	equ	8
L475	equ	5
	ends
	efunc
	.endfunc	2303,5,8
	.line	2303
;
;HWND k_user_getFocusWindow()
;{
	.line	2305
	.line	2306
	WINMAN
	xdef	~~k_user_getFocusWindow
	func
	.function	2306
~~k_user_getFocusWindow:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L482
	tcs
	phd
	tcd
	.block	2306
;	return k_getHandleFromWindow((PWINDOW) _k_windowManager_WindowObjectList->listData);
	.line	2307
	lda	|~~_k_windowManager_WindowObjectList
	sta	<R0
	lda	|~~_k_windowManager_WindowObjectList+2
	sta	<R0+2
	ldy	#$6
	lda	[<R0],Y
	pha
	ldy	#$4
	lda	[<R0],Y
	pha
	jsl	~~k_getHandleFromWindow
	sta	<R0
	stx	<R0+2
	ldx	<R0+2
	lda	<R0
L485:
	tay
	pld
	tsc
	clc
	adc	#L482
	tcs
	tya
	rtl
;}
	.line	2308
	.endblock	2308
L482	equ	4
L483	equ	5
	ends
	efunc
	.endfunc	2308,5,4
	.line	2308
;
;BOOL find_child_window(LPVOID ctx,LPVOID data)
;{
	.line	2310
	.line	2311
	WINMAN
	xdef	~~find_child_window
	func
	.function	2311
~~find_child_window:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L486
	tcs
	phd
	tcd
ctx_0	set	4
data_0	set	8
	.block	2311
;	PWINDOW pChild = (PWINDOW)ctx;
;
;	if(ctx && data)
pChild_1	set	0
	.sym	pChild,0,138,1,32,27
	.sym	ctx,4,129,6,32
	.sym	data,8,129,6,32
	lda	<L486+ctx_0
	sta	<L487+pChild_1
	lda	<L486+ctx_0+2
	sta	<L487+pChild_1+2
	.line	2314
;	{
	lda	<L486+ctx_0
	ora	<L486+ctx_0+2
	bne	L489
	brl	L10170
L489:
	lda	<L486+data_0
	ora	<L486+data_0+2
	bne	L490
	brl	L10170
L490:
	.line	2315
;		return (pChild == data);
	.line	2316
	stz	<R0
	lda	<L487+pChild_1
	cmp	<L486+data_0
	bne	L492
	lda	<L487+pChild_1+2
	cmp	<L486+data_0+2
L492:
	beq	L493
	brl	L491
L493:
	inc	<R0
L491:
	lda	<R0
	and	#$ff
L494:
	tay
	lda	<L486+2
	sta	<L486+2+8
	lda	<L486+1
	sta	<L486+1+8
	pld
	tsc
	clc
	adc	#L486+8
	tcs
	tya
	rtl
;	}
	.line	2317
;
;	return FALSE;
L10170:
	.line	2319
	lda	#$0
	brl	L494
;}
	.line	2320
	.endblock	2320
L486	equ	8
L487	equ	5
	ends
	efunc
	.endfunc	2320,5,8
	.line	2320
;
;BOOL k_user_IsChildWindow(HWND hWndParent,HWND hWndChild)
;{
	.line	2322
	.line	2323
	WINMAN
	xdef	~~k_user_IsChildWindow
	func
	.function	2323
~~k_user_IsChildWindow:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L495
	tcs
	phd
	tcd
hWndParent_0	set	4
hWndChild_0	set	8
	.block	2323
;	BOOL bRet = FALSE;
;
;	PWINDOW pWin = NULL;
;
;	if(hWndParent && hWndChild)
bRet_1	set	0
pWin_1	set	1
	.sym	bRet,0,14,1,8
	.sym	pWin,1,138,1,32,27
	.sym	hWndParent,4,129,6,32
	.sym	hWndChild,8,129,6,32
	sep	#$20
	longa	off
	stz	<L496+bRet_1
	rep	#$20
	longa	on
	stz	<L496+pWin_1
	stz	<L496+pWin_1+2
	.line	2328
;	{
	lda	<L495+hWndParent_0
	ora	<L495+hWndParent_0+2
	bne	L498
	brl	L10171
L498:
	lda	<L495+hWndChild_0
	ora	<L495+hWndChild_0+2
	bne	L499
	brl	L10171
L499:
	.line	2329
;		pWin = k_getWindowFromHandle(hWndParent);
	.line	2330
	pei	<L495+hWndParent_0+2
	pei	<L495+hWndParent_0
	jsl	~~k_getWindowFromHandle
	sta	<L496+pWin_1
	stx	<L496+pWin_1+2
;		if(pWin && pWin->pChildWindows)
	.line	2331
;		{
	lda	<L496+pWin_1
	ora	<L496+pWin_1+2
	bne	L500
	brl	L10172
L500:
	ldy	#$138
	lda	[<L496+pWin_1],Y
	ldy	#$13a
	ora	[<L496+pWin_1],Y
	bne	L501
	brl	L10172
L501:
	.line	2332
;			k_nodelist_foreach_until_listdata(pWin->pChildWindows,k_getWindowFromHandle(hWndChild),find_child_window);
	.line	2333
	pea	#^~~find_child_window
	pea	#<~~find_child_window
	pei	<L495+hWndChild_0+2
	pei	<L495+hWndChild_0
	jsl	~~k_getWindowFromHandle
	sta	<R0
	stx	<R0+2
	phx
	pha
	ldy	#$13a
	lda	[<L496+pWin_1],Y
	pha
	ldy	#$138
	lda	[<L496+pWin_1],Y
	pha
	jsl	~~k_nodelist_foreach_until_listdata
;		}
	.line	2334
;	}
L10172:
	.line	2335
;
;	return bRet;
L10171:
	.line	2337
	lda	<L496+bRet_1
	and	#$ff
L502:
	tay
	lda	<L495+2
	sta	<L495+2+8
	lda	<L495+1
	sta	<L495+1+8
	pld
	tsc
	clc
	adc	#L495+8
	tcs
	tya
	rtl
;}
	.line	2338
	.endblock	2338
L495	equ	9
L496	equ	5
	ends
	efunc
	.endfunc	2338,5,9
	.line	2338
;
;/*
;void k_buttonHitDetected(PWINDOW pWin)
;{
;	k_update_hover_location(pWin);
;}
;
;void k_menuHitDetected(PWINDOW pWin)
;{
;	k_update_hover_location(pWin);
;}
;
;
;void k_windowHitDetected(PWINDOW pWin)
;{
;	k_update_hover_location(pWin);
;}
;*/
;int k_attach_mouse_detection(PWINDOW pWin,OBJECTCLICKED objclickCallback)
;{
	.line	2357
	.line	2358
	WINMAN
	xdef	~~k_attach_mouse_detection
	func
	.function	2358
~~k_attach_mouse_detection:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L503
	tcs
	phd
	tcd
pWin_0	set	4
objclickCallback_0	set	8
	.block	2358
;	PCLICKDETECTED pcd = NULL;
;
;	int retCode = 0;
;
;	if(pWin)
pcd_1	set	0
retCode_1	set	4
	.sym	pcd,0,138,1,32,61
	.sym	retCode,4,5,1,16
	.sym	pWin,4,138,6,32,27
	.sym	objclickCallback,8,641,6,32
	stz	<L504+pcd_1
	stz	<L504+pcd_1+2
	stz	<L504+retCode_1
	.line	2363
;	{
	lda	<L503+pWin_0
	ora	<L503+pWin_0+2
	bne	L506
	brl	L10173
L506:
	.line	2364
;		pcd = k_mem_allocate_heap(sizeof(CLICKDETECTED));
	.line	2365
	pea	#<$8
	jsl	~~k_mem_allocate_heap
	sta	<L504+pcd_1
	stx	<L504+pcd_1+2
;		if(pcd)
	.line	2366
;		{
	lda	<L504+pcd_1
	ora	<L504+pcd_1+2
	bne	L507
	brl	L10174
L507:
	.line	2367
;			pcd->window  = pWin;
	.line	2368
	lda	<L503+pWin_0
	sta	[<L504+pcd_1]
	lda	<L503+pWin_0+2
	ldy	#$2
	sta	[<L504+pcd_1],Y
;			pcd->handler = objclickCallback;
	.line	2369
	lda	<L503+objclickCallback_0
	ldy	#$4
	sta	[<L504+pcd_1],Y
	lda	<L503+objclickCallback_0+2
	ldy	#$6
	sta	[<L504+pcd_1],Y
;			k_add_object_hit_node(pcd);
	.line	2370
	pei	<L504+pcd_1+2
	pei	<L504+pcd_1
	jsl	~~k_add_object_hit_node
;		}
	.line	2371
;	}
L10174:
	.line	2372
;
;	return retCode;
L10173:
	.line	2374
	lda	<L504+retCode_1
L508:
	tay
	lda	<L503+2
	sta	<L503+2+8
	lda	<L503+1
	sta	<L503+1+8
	pld
	tsc
	clc
	adc	#L503+8
	tcs
	tya
	rtl
;}
	.line	2375
	.endblock	2375
L503	equ	6
L504	equ	1
	ends
	efunc
	.endfunc	2375,1,6
	.line	2375
;
;void k_add_object_hit_node(PCLICKDETECTED pcd)
;{
	.line	2377
	.line	2378
	WINMAN
	xdef	~~k_add_object_hit_node
	func
	.function	2378
~~k_add_object_hit_node:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L509
	tcs
	phd
	tcd
pcd_0	set	4
	.block	2378
;	PFXNODE new = NULL;
;	//k_debug_pointer("k_add_object_hit_node:",pcd);
;
;	new = k_nodelist_naddtolist_tohead(_k_windowManager_ObjectHitList,1,(ULONG)k_getHandleFromWindow(pcd->window),pcd);
new_1	set	0
	.sym	new,0,138,1,32,2
	.sym	pcd,4,138,6,32,61
	stz	<L510+new_1
	stz	<L510+new_1+2
	.line	2382
	pei	<L509+pcd_0+2
	pei	<L509+pcd_0
	ldy	#$2
	lda	[<L509+pcd_0],Y
	pha
	lda	[<L509+pcd_0]
	pha
	jsl	~~k_getHandleFromWindow
	sta	<R0
	stx	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#<$1
	lda	|~~_k_windowManager_ObjectHitList+2
	pha
	lda	|~~_k_windowManager_ObjectHitList
	pha
	jsl	~~k_nodelist_naddtolist_tohead
	sta	<L510+new_1
	stx	<L510+new_1+2
;	/*
;	if(pcd->window->pParentWindow == k_user_getDesktopWindow())
;	{
;
;		k_debug_strings("*** k_add_object_hit_node to HEAD:",pcd->window->win_title);
;		k_debug_pointer("***                        WINDOW:",pcd->window);
;
;		k_debug_nodelist(_k_windowManager_ObjectHitList->listhead->next);
;		k_debug_nodelist(((PWINDOW)pcd->window->pParentWindow)->pChildHitList->listhead->next);
;
;
;		_k_windowManager_ObjectHitList->listData = new;
;
;	}
;	*/
;
;}
	.line	2399
L512:
	lda	<L509+2
	sta	<L509+2+4
	lda	<L509+1
	sta	<L509+1+4
	pld
	tsc
	clc
	adc	#L509+4
	tcs
	rtl
	.endblock	2399
L509	equ	8
L510	equ	5
	ends
	efunc
	.endfunc	2399,5,8
	.line	2399
;
;int k_attach_mouse_detection_local(PFXNODELIST list,PWINDOW pWin,OBJECTCLICKED objclickCallback)
;{
	.line	2401
	.line	2402
	WINMAN
	xdef	~~k_attach_mouse_detection_local
	func
	.function	2402
~~k_attach_mouse_detection_local:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L513
	tcs
	phd
	tcd
list_0	set	4
pWin_0	set	8
objclickCallback_0	set	12
	.block	2402
;	PCLICKDETECTED pcd = NULL;
;
;	int retCode = 0;
;
;	//k_debug_pointer("k_attach_mouse_detection_local:",pWin);
;
;	if(pWin)
pcd_1	set	0
retCode_1	set	4
	.sym	pcd,0,138,1,32,61
	.sym	retCode,4,5,1,16
	.sym	list,4,138,6,32,3
	.sym	pWin,8,138,6,32,27
	.sym	objclickCallback,12,641,6,32
	stz	<L514+pcd_1
	stz	<L514+pcd_1+2
	stz	<L514+retCode_1
	.line	2409
;	{
	lda	<L513+pWin_0
	ora	<L513+pWin_0+2
	bne	L516
	brl	L10175
L516:
	.line	2410
;		pcd = k_mem_allocate_heap(sizeof(CLICKDETECTED));
	.line	2411
	pea	#<$8
	jsl	~~k_mem_allocate_heap
	sta	<L514+pcd_1
	stx	<L514+pcd_1+2
;		if(pcd)
	.line	2412
;		{
	lda	<L514+pcd_1
	ora	<L514+pcd_1+2
	bne	L517
	brl	L10176
L517:
	.line	2413
;			pcd->window  = pWin;
	.line	2414
	lda	<L513+pWin_0
	sta	[<L514+pcd_1]
	lda	<L513+pWin_0+2
	ldy	#$2
	sta	[<L514+pcd_1],Y
;			pcd->handler = objclickCallback;
	.line	2415
	lda	<L513+objclickCallback_0
	ldy	#$4
	sta	[<L514+pcd_1],Y
	lda	<L513+objclickCallback_0+2
	ldy	#$6
	sta	[<L514+pcd_1],Y
;			k_add_object_hit_node_local(list,pcd);
	.line	2416
	pei	<L514+pcd_1+2
	pei	<L514+pcd_1
	pei	<L513+list_0+2
	pei	<L513+list_0
	jsl	~~k_add_object_hit_node_local
;		}
	.line	2417
;	}
L10176:
	.line	2418
;
;	return retCode;
L10175:
	.line	2420
	lda	<L514+retCode_1
L518:
	tay
	lda	<L513+2
	sta	<L513+2+12
	lda	<L513+1
	sta	<L513+1+12
	pld
	tsc
	clc
	adc	#L513+12
	tcs
	tya
	rtl
;}
	.line	2421
	.endblock	2421
L513	equ	6
L514	equ	1
	ends
	efunc
	.endfunc	2421,1,6
	.line	2421
;
;
;void k_add_object_hit_node_local(PFXNODELIST list,PCLICKDETECTED pcd)
;{
	.line	2424
	.line	2425
	WINMAN
	xdef	~~k_add_object_hit_node_local
	func
	.function	2425
~~k_add_object_hit_node_local:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L519
	tcs
	phd
	tcd
list_0	set	4
pcd_0	set	8
	.block	2425
;	//k_debug_pointer("k_add_object_hit_node_local:",pcd);
;	//k_nodelist_naddtolist(list,1,pcd->window->win_title,pcd);
;
;	//if(pcd->window->pParentWindow == k_user_getDesktopWindow())
;	//	k_nodelist_naddtolist_tohead(list,1,(ULONG)k_getHandleFromWindow(pcd->window),pcd);
;	//else
;		k_nodelist_naddtolist(list,1,(ULONG)k_getHandleFromWindow(pcd->window),pcd);
	.sym	list,4,138,6,32,3
	.sym	pcd,8,138,6,32,61
	.line	2432
	pei	<L519+pcd_0+2
	pei	<L519+pcd_0
	ldy	#$2
	lda	[<L519+pcd_0],Y
	pha
	lda	[<L519+pcd_0]
	pha
	jsl	~~k_getHandleFromWindow
	sta	<R0
	stx	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#<$1
	pei	<L519+list_0+2
	pei	<L519+list_0
	jsl	~~k_nodelist_naddtolist
;
;
;}
	.line	2435
L522:
	lda	<L519+2
	sta	<L519+2+8
	lda	<L519+1
	sta	<L519+1+8
	pld
	tsc
	clc
	adc	#L519+8
	tcs
	rtl
	.endblock	2435
L519	equ	4
L520	equ	5
	ends
	efunc
	.endfunc	2435,5,4
	.line	2435
;
;/*
;PFXNODE k_point_in_nodeslist(int x,int y)
;{
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
;	if(_k_windowManager_ObjectHitList!=NULL)
;	{
;		r = ((PCLICKABLE)((PCLICKDETECTED)((PFXNODE)_k_windowManager_ObjectHitList->listData)->data)->window->clickable)->area;
;		if(x >=r.x && x<(r.x+r.width))
;		{
;			if(y >=r.y && y<(r.y+r.height))
;			{
;				//k_debug_pointer("CURRENT ACTIVE OBJECT:",_k_windowManager_ObjectHitList->listData);
;				return (PFXNODE)_k_windowManager_ObjectHitList->listData;
;			}
;		}
;
;
;		ptr = k_nodelist_getfirstnode(_k_windowManager_ObjectHitList);
;		while(ptr!=NULL)
;		{
;			//k_debug_pointer("FOUND HIT ITEM:",ptr);
;			r = ((PCLICKABLE)((PCLICKDETECTED)ptr->data)->window->clickable)->area;
;			if(x >=r.x && x<(r.x+r.width))
;			{
;				if(y >=r.y && y<(r.y+r.height))
;				{
;					found = ptr;
;					_k_windowManager_ObjectHitList->listData = found;
;					break;
;				}
;			}
;			ptr = ptr->next;
;		}
;	}
;
;	return found;
;}
;*/
;PFXNODE k_point_in_nodeslist(int x,int y)
;{
	.line	2484
	.line	2485
	WINMAN
	xdef	~~k_point_in_nodeslist
	func
	.function	2485
~~k_point_in_nodeslist:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L523
	tcs
	phd
	tcd
x_0	set	4
y_0	set	6
	.block	2485
;	return k_point_in_any_nodeslist(_k_windowManager_ObjectHitList,x,y);
	.sym	x,4,5,6,16
	.sym	y,6,5,6,16
	.line	2486
	pei	<L523+y_0
	pei	<L523+x_0
	lda	|~~_k_windowManager_ObjectHitList+2
	pha
	lda	|~~_k_windowManager_ObjectHitList
	pha
	jsl	~~k_point_in_any_nodeslist
	sta	<R0
	stx	<R0+2
	ldx	<R0+2
	lda	<R0
L526:
	tay
	lda	<L523+2
	sta	<L523+2+4
	lda	<L523+1
	sta	<L523+1+4
	pld
	tsc
	clc
	adc	#L523+4
	tcs
	tya
	rtl
;}
	.line	2487
	.endblock	2487
L523	equ	4
L524	equ	5
	ends
	efunc
	.endfunc	2487,5,4
	.line	2487
;
;PFXNODE k_point_in_any_nodeslist(PFXNODELIST hitList,int x,int y)
;{
	.line	2489
	.line	2490
	WINMAN
	xdef	~~k_point_in_any_nodeslist
	func
	.function	2490
~~k_point_in_any_nodeslist:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L527
	tcs
	phd
	tcd
hitList_0	set	4
x_0	set	8
y_0	set	10
	.block	2490
;	PFXNODE found = NULL;
;	LPCHAR ctx = "";
;	PFXNODE ptr = NULL;
;
;	RECT r;
;	int i = 0;
;	int index = -1;
;
;	//k_debug_pointer("k_point_in_any_nodeslist:",hitList);
;
;	if(hitList!=NULL)
found_1	set	0
ctx_1	set	4
ptr_1	set	8
r_1	set	12
i_1	set	20
index_1	set	22
	.sym	found,0,138,1,32,2
	.sym	ctx,4,142,1,32
	.sym	ptr,8,138,1,32,2
	.sym	r,12,10,1,64,22
	.sym	i,20,5,1,16
	.sym	index,22,5,1,16
	.sym	hitList,4,138,6,32,3
	.sym	x,8,5,6,16
	.sym	y,10,5,6,16
	stz	<L528+found_1
	stz	<L528+found_1+2
	lda	#<L473
	sta	<L528+ctx_1
	lda	#^L473
	sta	<L528+ctx_1+2
	stz	<L528+ptr_1
	stz	<L528+ptr_1+2
	stz	<L528+i_1
	lda	#$ffff
	sta	<L528+index_1
	.line	2501
;	{
	lda	<L527+hitList_0
	ora	<L527+hitList_0+2
	bne	L530
	brl	L10177
L530:
	.line	2502
;		//k_debug_pointer("k_point_in_any_nodeslist:data:",((PFXNODE)hitList->listData)->data);
;		//k_debug_pointer("k_point_in_any_nodeslist:window:",((PCLICKDETECTED)((PFXNODE)hitList->listData)->data)->window);
;		//k_debug_pointer("k_point_in_any_nodeslist:clickable:",((PCLICKDETECTED)((PFXNODE)hitList->listData)->data)->window->clickable);
;
;		if(hitList->listData && ((PFXNODE)hitList->listData)->data && ((PCLICKDETECTED)((PFXNODE)hitList->listData)->data)->window && ((PCLICKDETECTED)((PFXNODE)hitList->listData)->data)->window->clickable)
	.line	2507
;		{
	ldy	#$4
	lda	[<L527+hitList_0],Y
	ldy	#$6
	ora	[<L527+hitList_0],Y
	bne	L531
	brl	L10178
L531:
	ldy	#$4
	lda	[<L527+hitList_0],Y
	sta	<R0
	ldy	#$6
	lda	[<L527+hitList_0],Y
	sta	<R0+2
	ldy	#$2
	lda	[<R0],Y
	ldy	#$4
	ora	[<R0],Y
	bne	L532
	brl	L10178
L532:
	ldy	#$4
	lda	[<L527+hitList_0],Y
	sta	<R0
	ldy	#$6
	lda	[<L527+hitList_0],Y
	sta	<R0+2
	ldy	#$2
	lda	[<R0],Y
	sta	<R1
	ldy	#$4
	lda	[<R0],Y
	sta	<R1+2
	lda	[<R1]
	ldy	#$2
	ora	[<R1],Y
	bne	L533
	brl	L10178
L533:
	ldy	#$4
	lda	[<L527+hitList_0],Y
	sta	<R0
	ldy	#$6
	lda	[<L527+hitList_0],Y
	sta	<R0+2
	ldy	#$2
	lda	[<R0],Y
	sta	<R1
	ldy	#$4
	lda	[<R0],Y
	sta	<R1+2
	lda	[<R1]
	sta	<R0
	ldy	#$2
	lda	[<R1],Y
	sta	<R0+2
	ldy	#$d0
	lda	[<R0],Y
	ldy	#$d2
	ora	[<R0],Y
	bne	L534
	brl	L10178
L534:
	.line	2508
;			r = ((PCLICKABLE)((PCLICKDETECTED)((PFXNODE)hitList->listData)->data)->window->clickable)->area;
	.line	2509
	ldy	#$4
	lda	[<L527+hitList_0],Y
	sta	<R0
	ldy	#$6
	lda	[<L527+hitList_0],Y
	sta	<R0+2
	ldy	#$2
	lda	[<R0],Y
	sta	<R1
	ldy	#$4
	lda	[<R0],Y
	sta	<R1+2
	lda	[<R1]
	sta	<R0
	ldy	#$2
	lda	[<R1],Y
	sta	<R0+2
	ldy	#$d2
	lda	[<R0],Y
	pha
	ldy	#$d0
	lda	[<R0],Y
	pha
	clc
	tdc
	adc	#<L528+r_1
	sta	<R0
	lda	#$0
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	lda	#$8
	xref	~~~fmov
	jsl	~~~fmov
;			if(x >=r.x && x<(r.x+r.width))
	.line	2510
;			{
	sec
	lda	<L527+x_0
	sbc	<L528+r_1
	bvs	L535
	eor	#$8000
L535:
	bmi	L536
	brl	L10179
L536:
	clc
	lda	<L528+r_1
	adc	<L528+r_1+4
	sta	<R0
	sec
	lda	<L527+x_0
	sbc	<R0
	bvs	L537
	eor	#$8000
L537:
	bpl	L538
	brl	L10179
L538:
	.line	2511
;				if(y >=r.y && y<(r.y+r.height))
	.line	2512
;				{
	sec
	lda	<L527+y_0
	sbc	<L528+r_1+2
	bvs	L539
	eor	#$8000
L539:
	bmi	L540
	brl	L10180
L540:
	clc
	lda	<L528+r_1+2
	adc	<L528+r_1+6
	sta	<R0
	sec
	lda	<L527+y_0
	sbc	<R0
	bvs	L541
	eor	#$8000
L541:
	bpl	L542
	brl	L10180
L542:
	.line	2513
;					//k_debug_pointer("CURRENT ACTIVE OBJECT:",_k_windowManager_ObjectHitList->listData);
;					found = k_point_in_any_nodeslist(  ((PCLICKDETECTED)((PFXNODE)hitList->listData)->data)->window->pChildHitList,x,y);
	.line	2515
	pei	<L527+y_0
	pei	<L527+x_0
	ldy	#$4
	lda	[<L527+hitList_0],Y
	sta	<R0
	ldy	#$6
	lda	[<L527+hitList_0],Y
	sta	<R0+2
	ldy	#$2
	lda	[<R0],Y
	sta	<R1
	ldy	#$4
	lda	[<R0],Y
	sta	<R1+2
	lda	[<R1]
	sta	<R0
	ldy	#$2
	lda	[<R1],Y
	sta	<R0+2
	ldy	#$13e
	lda	[<R0],Y
	pha
	ldy	#$13c
	lda	[<R0],Y
	pha
	jsl	~~k_point_in_any_nodeslist
	sta	<L528+found_1
	stx	<L528+found_1+2
;					if(found)
	.line	2516
;						return found;
	lda	<L528+found_1
	ora	<L528+found_1+2
	bne	L543
	brl	L10181
L543:
	.line	2517
	ldx	<L528+found_1+2
	lda	<L528+found_1
L544:
	tay
	lda	<L527+2
	sta	<L527+2+8
	lda	<L527+1
	sta	<L527+1+8
	pld
	tsc
	clc
	adc	#L527+8
	tcs
	tya
	rtl
;
;					return (PFXNODE)hitList->listData;
L10181:
	.line	2519
	ldy	#$6
	lda	[<L527+hitList_0],Y
	tax
	ldy	#$4
	lda	[<L527+hitList_0],Y
	brl	L544
;				}
	.line	2520
;			}
L10180:
	.line	2521
;		}
L10179:
	.line	2522
;
;		ptr = k_nodelist_getfirstnode(hitList);
L10178:
	.line	2524
	pei	<L527+hitList_0+2
	pei	<L527+hitList_0
	jsl	~~k_nodelist_getfirstnode
	sta	<L528+ptr_1
	stx	<L528+ptr_1+2
;		while(ptr!=NULL)
	.line	2525
L10182:
	lda	<L528+ptr_1
	ora	<L528+ptr_1+2
	bne	L545
	brl	L10183
L545:
;		{
	.line	2526
;			//k_debug_pointer("FOUND HIT CHECK ITEM:",ptr);
;			found = k_point_in_any_nodeslist(NULL,x,y); //k_point_in_any_nodeslist(((PCLICKDETECTED)ptr->data)->window->pChildHitList,x,y);
	.line	2528
	pei	<L527+y_0
	pei	<L527+x_0
	pea	#^$0
	pea	#<$0
	jsl	~~k_point_in_any_nodeslist
	sta	<L528+found_1
	stx	<L528+found_1+2
;			if(!found)
	.line	2529
;			{
	lda	<L528+found_1
	ora	<L528+found_1+2
	beq	L546
	brl	L10184
L546:
	.line	2530
;				r = ((PCLICKABLE)((PCLICKDETECTED)ptr->data)->window->clickable)->area;
	.line	2531
	ldy	#$2
	lda	[<L528+ptr_1],Y
	sta	<R0
	ldy	#$4
	lda	[<L528+ptr_1],Y
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
	adc	#<L528+r_1
	sta	<R0
	lda	#$0
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	lda	#$8
	xref	~~~fmov
	jsl	~~~fmov
;				if(x >=r.x && x<(r.x+r.width))
	.line	2532
;				{
	sec
	lda	<L527+x_0
	sbc	<L528+r_1
	bvs	L547
	eor	#$8000
L547:
	bmi	L548
	brl	L10185
L548:
	clc
	lda	<L528+r_1
	adc	<L528+r_1+4
	sta	<R0
	sec
	lda	<L527+x_0
	sbc	<R0
	bvs	L549
	eor	#$8000
L549:
	bpl	L550
	brl	L10185
L550:
	.line	2533
;					if(y >=r.y && y<(r.y+r.height))
	.line	2534
;					{
	sec
	lda	<L527+y_0
	sbc	<L528+r_1+2
	bvs	L551
	eor	#$8000
L551:
	bmi	L552
	brl	L10186
L552:
	clc
	lda	<L528+r_1+2
	adc	<L528+r_1+6
	sta	<R0
	sec
	lda	<L527+y_0
	sbc	<R0
	bvs	L553
	eor	#$8000
L553:
	bpl	L554
	brl	L10186
L554:
	.line	2535
;						//found = ptr;
;
;						found =  k_point_in_any_nodeslist( ((PCLICKDETECTED)ptr->data)->window->pChildHitList   ,x,y); // k_point_in_any_nodeslist(((PCLICKDETECTED)ptr->data)->window->pChildHitList,x,y);
	.line	2538
	pei	<L527+y_0
	pei	<L527+x_0
	ldy	#$2
	lda	[<L528+ptr_1],Y
	sta	<R0
	ldy	#$4
	lda	[<L528+ptr_1],Y
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
	sta	<L528+found_1
	stx	<L528+found_1+2
;						if(!found)
	.line	2539
;						{
	lda	<L528+found_1
	ora	<L528+found_1+2
	beq	L555
	brl	L10187
L555:
	.line	2540
;							found = ptr;
	.line	2541
	lda	<L528+ptr_1
	sta	<L528+found_1
	lda	<L528+ptr_1+2
	sta	<L528+found_1+2
;						}
	.line	2542
;
;						hitList->listData = found;
L10187:
	.line	2544
	lda	<L528+found_1
	ldy	#$4
	sta	[<L527+hitList_0],Y
	lda	<L528+found_1+2
	ldy	#$6
	sta	[<L527+hitList_0],Y
;						break;
	.line	2545
	brl	L10183
;					}
	.line	2546
;				}
L10186:
	.line	2547
;				ptr = ptr->next;
L10185:
	.line	2548
	ldy	#$a
	lda	[<L528+ptr_1],Y
	sta	<R0
	ldy	#$c
	lda	[<L528+ptr_1],Y
	sta	<R0+2
	lda	<R0
	sta	<L528+ptr_1
	lda	<R0+2
	sta	<L528+ptr_1+2
;
;				if(ptr)
	.line	2550
;				{
	lda	<L528+ptr_1
	ora	<L528+ptr_1+2
	bne	L556
	brl	L10188
L556:
	.line	2551
;					if(((PCLICKDETECTED)ptr->data)->window && ((PCLICKDETECTED)ptr->data)->window->isClosed)
	.line	2552
;					{
	ldy	#$2
	lda	[<L528+ptr_1],Y
	sta	<R0
	ldy	#$4
	lda	[<L528+ptr_1],Y
	sta	<R0+2
	lda	[<R0]
	ldy	#$2
	ora	[<R0],Y
	bne	L557
	brl	L10189
L557:
	ldy	#$2
	lda	[<L528+ptr_1],Y
	sta	<R0
	ldy	#$4
	lda	[<L528+ptr_1],Y
	sta	<R0+2
	lda	[<R0]
	sta	<R1
	ldy	#$2
	lda	[<R0],Y
	sta	<R1+2
	ldy	#$15d
	lda	[<R1],Y
	and	#$ff
	bne	L558
	brl	L10189
L558:
	.line	2553
;						((PCLICKDETECTED)ptr->data)->window->win_title[31] = 0;
	.line	2554
	ldy	#$2
	lda	[<L528+ptr_1],Y
	sta	<R0
	ldy	#$4
	lda	[<L528+ptr_1],Y
	sta	<R0+2
	lda	[<R0]
	sta	<R1
	ldy	#$2
	lda	[<R0],Y
	sta	<R1+2
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$f3
	sta	[<R1],Y
	rep	#$20
	longa	on
;
;						if(((PCLICKDETECTED)ptr->data)->window->win_title)
	.line	2556
;							k_debug_strings("k_point_in_any_nodeslist::removing closed window:",((PCLICKDETECTED)ptr->data)->window->win_title);
	ldy	#$2
	lda	[<L528+ptr_1],Y
	sta	<R0
	ldy	#$4
	lda	[<L528+ptr_1],Y
	sta	<R0+2
	clc
	lda	#$d4
	adc	[<R0]
	sta	<R1
	lda	#$0
	ldy	#$2
	adc	[<R0],Y
	sta	<R1+2
	lda	<R1
	ora	<R1+2
	bne	L559
	brl	L10190
L559:
	.line	2557
	ldy	#$2
	lda	[<L528+ptr_1],Y
	sta	<R0
	ldy	#$4
	lda	[<L528+ptr_1],Y
	sta	<R0+2
	clc
	lda	#$d4
	adc	[<R0]
	sta	<R1
	lda	#$0
	ldy	#$2
	adc	[<R0],Y
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	pea	#^L473+1
	pea	#<L473+1
	jsl	~~k_debug_strings
;						else
	brl	L10191
L10190:
;							k_debug_strings("k_point_in_any_nodeslist::removing closed window:","NO NAME");
	.line	2559
	pea	#^L473+101
	pea	#<L473+101
	pea	#^L473+51
	pea	#<L473+51
	jsl	~~k_debug_strings
L10191:
;
;						found = ptr->next;
	.line	2561
	ldy	#$a
	lda	[<L528+ptr_1],Y
	sta	<L528+found_1
	ldy	#$c
	lda	[<L528+ptr_1],Y
	sta	<L528+found_1+2
;
;						if(ptr->last)
	.line	2563
;							ptr->last->next = ptr->next;
	ldy	#$6
	lda	[<L528+ptr_1],Y
	ldy	#$8
	ora	[<L528+ptr_1],Y
	bne	L560
	brl	L10192
L560:
	.line	2564
	ldy	#$6
	lda	[<L528+ptr_1],Y
	sta	<R0
	ldy	#$8
	lda	[<L528+ptr_1],Y
	sta	<R0+2
	ldy	#$a
	lda	[<L528+ptr_1],Y
	ldy	#$a
	sta	[<R0],Y
	ldy	#$c
	lda	[<L528+ptr_1],Y
	ldy	#$c
	sta	[<R0],Y
;						if(ptr->next)
L10192:
	.line	2565
;							ptr->next->last = ptr->last;
	ldy	#$a
	lda	[<L528+ptr_1],Y
	ldy	#$c
	ora	[<L528+ptr_1],Y
	bne	L561
	brl	L10193
L561:
	.line	2566
	ldy	#$a
	lda	[<L528+ptr_1],Y
	sta	<R0
	ldy	#$c
	lda	[<L528+ptr_1],Y
	sta	<R0+2
	ldy	#$6
	lda	[<L528+ptr_1],Y
	ldy	#$6
	sta	[<R0],Y
	ldy	#$8
	lda	[<L528+ptr_1],Y
	ldy	#$8
	sta	[<R0],Y
;
;						//k_mem_deallocate_heap(ptr->data);
;						k_mem_deallocate_heap(ptr);
L10193:
	.line	2569
	pei	<L528+ptr_1+2
	pei	<L528+ptr_1
	jsl	~~k_mem_deallocate_heap
;
;						ptr = found;
	.line	2571
	lda	<L528+found_1
	sta	<L528+ptr_1
	lda	<L528+found_1+2
	sta	<L528+ptr_1+2
;						found = NULL;
	.line	2572
	stz	<L528+found_1
	stz	<L528+found_1+2
;					}
	.line	2573
;				}
L10189:
	.line	2574
;			}
L10188:
	.line	2575
;		}
L10184:
	.line	2576
	brl	L10182
L10183:
;	}
	.line	2577
;
;	//k_debug_pointer("k_point_in_any_nodeslist:",found);
;
;	return found;
L10177:
	.line	2581
	ldx	<L528+found_1+2
	lda	<L528+found_1
	brl	L544
;}
	.line	2582
	.endblock	2582
L527	equ	32
L528	equ	9
	ends
	efunc
	.endfunc	2582,9,32
	.line	2582
	data
L473:
	db	$00,$6B,$5F,$70,$6F,$69,$6E,$74,$5F,$69,$6E,$5F,$61,$6E,$79
	db	$5F,$6E,$6F,$64,$65,$73,$6C,$69,$73,$74,$3A,$3A,$72,$65,$6D
	db	$6F,$76,$69,$6E,$67,$20,$63,$6C,$6F,$73,$65,$64,$20,$77,$69
	db	$6E,$64,$6F,$77,$3A,$00,$6B,$5F,$70,$6F,$69,$6E,$74,$5F,$69
	db	$6E,$5F,$61,$6E,$79,$5F,$6E,$6F,$64,$65,$73,$6C,$69,$73,$74
	db	$3A,$3A,$72,$65,$6D,$6F,$76,$69,$6E,$67,$20,$63,$6C,$6F,$73
	db	$65,$64,$20,$77,$69,$6E,$64,$6F,$77,$3A,$00,$4E,$4F,$20,$4E
	db	$41,$4D,$45,$00
	ends
;
;
;PFXNODE k_point_in_depth_nodeslist(PFXNODELIST hitList,int x,int y)
;{
	.line	2585
	.line	2586
	WINMAN
	xdef	~~k_point_in_depth_nodeslist
	func
	.function	2586
~~k_point_in_depth_nodeslist:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L563
	tcs
	phd
	tcd
hitList_0	set	4
x_0	set	8
y_0	set	10
	.block	2586
;	PFXNODE found = NULL;
;	LPCHAR ctx = "";
;	PFXNODE ptr = NULL;
;
;	RECT r;
;	int i = 0;
;	int index = -1;
;
;	//k_debug_pointer("k_point_in_any_nodeslist:",hitList);
;
;	if(hitList!=NULL)
found_1	set	0
ctx_1	set	4
ptr_1	set	8
r_1	set	12
i_1	set	20
index_1	set	22
	.sym	found,0,138,1,32,2
	.sym	ctx,4,142,1,32
	.sym	ptr,8,138,1,32,2
	.sym	r,12,10,1,64,22
	.sym	i,20,5,1,16
	.sym	index,22,5,1,16
	.sym	hitList,4,138,6,32,3
	.sym	x,8,5,6,16
	.sym	y,10,5,6,16
	stz	<L564+found_1
	stz	<L564+found_1+2
	lda	#<L562
	sta	<L564+ctx_1
	lda	#^L562
	sta	<L564+ctx_1+2
	stz	<L564+ptr_1
	stz	<L564+ptr_1+2
	stz	<L564+i_1
	lda	#$ffff
	sta	<L564+index_1
	.line	2597
;	{
	lda	<L563+hitList_0
	ora	<L563+hitList_0+2
	bne	L566
	brl	L10194
L566:
	.line	2598
;		//k_debug_pointer("k_point_in_any_nodeslist:data:",((PFXNODE)hitList->listData)->data);
;		//k_debug_pointer("k_point_in_any_nodeslist:window:",((PCLICKDETECTED)((PFXNODE)hitList->listData)->data)->window);
;		//k_debug_pointer("k_point_in_any_nodeslist:clickable:",((PCLICKDETECTED)((PFXNODE)hitList->listData)->data)->window->clickable);
;
;		if(hitList->listData && ((PFXNODE)hitList->listData)->data && ((PCLICKDETECTED)((PFXNODE)hitList->listData)->data)->window && ((PCLICKDETECTED)((PFXNODE)hitList->listData)->data)->window->clickable)
	.line	2603
;		{
	ldy	#$4
	lda	[<L563+hitList_0],Y
	ldy	#$6
	ora	[<L563+hitList_0],Y
	bne	L567
	brl	L10195
L567:
	ldy	#$4
	lda	[<L563+hitList_0],Y
	sta	<R0
	ldy	#$6
	lda	[<L563+hitList_0],Y
	sta	<R0+2
	ldy	#$2
	lda	[<R0],Y
	ldy	#$4
	ora	[<R0],Y
	bne	L568
	brl	L10195
L568:
	ldy	#$4
	lda	[<L563+hitList_0],Y
	sta	<R0
	ldy	#$6
	lda	[<L563+hitList_0],Y
	sta	<R0+2
	ldy	#$2
	lda	[<R0],Y
	sta	<R1
	ldy	#$4
	lda	[<R0],Y
	sta	<R1+2
	lda	[<R1]
	ldy	#$2
	ora	[<R1],Y
	bne	L569
	brl	L10195
L569:
	ldy	#$4
	lda	[<L563+hitList_0],Y
	sta	<R0
	ldy	#$6
	lda	[<L563+hitList_0],Y
	sta	<R0+2
	ldy	#$2
	lda	[<R0],Y
	sta	<R1
	ldy	#$4
	lda	[<R0],Y
	sta	<R1+2
	lda	[<R1]
	sta	<R0
	ldy	#$2
	lda	[<R1],Y
	sta	<R0+2
	ldy	#$d0
	lda	[<R0],Y
	ldy	#$d2
	ora	[<R0],Y
	bne	L570
	brl	L10195
L570:
	.line	2604
;			r = ((PCLICKABLE)((PCLICKDETECTED)((PFXNODE)hitList->listData)->data)->window->clickable)->area;
	.line	2605
	ldy	#$4
	lda	[<L563+hitList_0],Y
	sta	<R0
	ldy	#$6
	lda	[<L563+hitList_0],Y
	sta	<R0+2
	ldy	#$2
	lda	[<R0],Y
	sta	<R1
	ldy	#$4
	lda	[<R0],Y
	sta	<R1+2
	lda	[<R1]
	sta	<R0
	ldy	#$2
	lda	[<R1],Y
	sta	<R0+2
	ldy	#$d2
	lda	[<R0],Y
	pha
	ldy	#$d0
	lda	[<R0],Y
	pha
	clc
	tdc
	adc	#<L564+r_1
	sta	<R0
	lda	#$0
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	lda	#$8
	xref	~~~fmov
	jsl	~~~fmov
;			if(x >=r.x && x<(r.x+r.width))
	.line	2606
;			{
	sec
	lda	<L563+x_0
	sbc	<L564+r_1
	bvs	L571
	eor	#$8000
L571:
	bmi	L572
	brl	L10196
L572:
	clc
	lda	<L564+r_1
	adc	<L564+r_1+4
	sta	<R0
	sec
	lda	<L563+x_0
	sbc	<R0
	bvs	L573
	eor	#$8000
L573:
	bpl	L574
	brl	L10196
L574:
	.line	2607
;				if(y >=r.y && y<(r.y+r.height))
	.line	2608
;				{
	sec
	lda	<L563+y_0
	sbc	<L564+r_1+2
	bvs	L575
	eor	#$8000
L575:
	bmi	L576
	brl	L10197
L576:
	clc
	lda	<L564+r_1+2
	adc	<L564+r_1+6
	sta	<R0
	sec
	lda	<L563+y_0
	sbc	<R0
	bvs	L577
	eor	#$8000
L577:
	bpl	L578
	brl	L10197
L578:
	.line	2609
;					//k_debug_pointer("CURRENT ACTIVE OBJECT:",_k_windowManager_ObjectHitList->listData);
;					found = k_point_in_depth_nodeslist(  ((PCLICKDETECTED)((PFXNODE)hitList->listData)->data)->window->pChildHitList,x,y);
	.line	2611
	pei	<L563+y_0
	pei	<L563+x_0
	ldy	#$4
	lda	[<L563+hitList_0],Y
	sta	<R0
	ldy	#$6
	lda	[<L563+hitList_0],Y
	sta	<R0+2
	ldy	#$2
	lda	[<R0],Y
	sta	<R1
	ldy	#$4
	lda	[<R0],Y
	sta	<R1+2
	lda	[<R1]
	sta	<R0
	ldy	#$2
	lda	[<R1],Y
	sta	<R0+2
	ldy	#$13e
	lda	[<R0],Y
	pha
	ldy	#$13c
	lda	[<R0],Y
	pha
	jsl	~~k_point_in_depth_nodeslist
	sta	<L564+found_1
	stx	<L564+found_1+2
;					if(!found)
	.line	2612
;						found = (PFXNODE)hitList->listData;
	lda	<L564+found_1
	ora	<L564+found_1+2
	beq	L579
	brl	L10198
L579:
	.line	2613
	ldy	#$4
	lda	[<L563+hitList_0],Y
	sta	<L564+found_1
	ldy	#$6
	lda	[<L563+hitList_0],Y
	sta	<L564+found_1+2
;				}
L10198:
	.line	2614
;			}
L10197:
	.line	2615
;		}
L10196:
	.line	2616
;
;		if(found)
L10195:
	.line	2618
;			return found;
	lda	<L564+found_1
	ora	<L564+found_1+2
	bne	L580
	brl	L10199
L580:
	.line	2619
	ldx	<L564+found_1+2
	lda	<L564+found_1
L581:
	tay
	lda	<L563+2
	sta	<L563+2+8
	lda	<L563+1
	sta	<L563+1+8
	pld
	tsc
	clc
	adc	#L563+8
	tcs
	tya
	rtl
;
;		ptr = k_nodelist_getfirstnode(hitList);
L10199:
	.line	2621
	pei	<L563+hitList_0+2
	pei	<L563+hitList_0
	jsl	~~k_nodelist_getfirstnode
	sta	<L564+ptr_1
	stx	<L564+ptr_1+2
;		while(ptr!=NULL)
	.line	2622
L10200:
	lda	<L564+ptr_1
	ora	<L564+ptr_1+2
	bne	L582
	brl	L10201
L582:
;		{
	.line	2623
;			//k_debug_pointer("FOUND HIT CHECK ITEM:",ptr);
;			found = k_point_in_any_nodeslist(NULL,x,y); //k_point_in_any_nodeslist(((PCLICKDETECTED)ptr->data)->window->pChildHitList,x,y);
	.line	2625
	pei	<L563+y_0
	pei	<L563+x_0
	pea	#^$0
	pea	#<$0
	jsl	~~k_point_in_any_nodeslist
	sta	<L564+found_1
	stx	<L564+found_1+2
;			if(!found)
	.line	2626
;			{
	lda	<L564+found_1
	ora	<L564+found_1+2
	beq	L583
	brl	L10202
L583:
	.line	2627
;				r = ((PCLICKABLE)((PCLICKDETECTED)ptr->data)->window->clickable)->area;
	.line	2628
	ldy	#$2
	lda	[<L564+ptr_1],Y
	sta	<R0
	ldy	#$4
	lda	[<L564+ptr_1],Y
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
	adc	#<L564+r_1
	sta	<R0
	lda	#$0
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	lda	#$8
	xref	~~~fmov
	jsl	~~~fmov
;				if(x >=r.x && x<(r.x+r.width))
	.line	2629
;				{
	sec
	lda	<L563+x_0
	sbc	<L564+r_1
	bvs	L584
	eor	#$8000
L584:
	bmi	L585
	brl	L10203
L585:
	clc
	lda	<L564+r_1
	adc	<L564+r_1+4
	sta	<R0
	sec
	lda	<L563+x_0
	sbc	<R0
	bvs	L586
	eor	#$8000
L586:
	bpl	L587
	brl	L10203
L587:
	.line	2630
;					if(y >=r.y && y<(r.y+r.height))
	.line	2631
;					{
	sec
	lda	<L563+y_0
	sbc	<L564+r_1+2
	bvs	L588
	eor	#$8000
L588:
	bmi	L589
	brl	L10204
L589:
	clc
	lda	<L564+r_1+2
	adc	<L564+r_1+6
	sta	<R0
	sec
	lda	<L563+y_0
	sbc	<R0
	bvs	L590
	eor	#$8000
L590:
	bpl	L591
	brl	L10204
L591:
	.line	2632
;						//found = ptr;
;
;						found =  k_point_in_depth_nodeslist( ((PCLICKDETECTED)ptr->data)->window->pChildHitList   ,x,y); // k_point_in_any_nodeslist(((PCLICKDETECTED)ptr->data)->window->pChildHitList,x,y);
	.line	2635
	pei	<L563+y_0
	pei	<L563+x_0
	ldy	#$2
	lda	[<L564+ptr_1],Y
	sta	<R0
	ldy	#$4
	lda	[<L564+ptr_1],Y
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
	jsl	~~k_point_in_depth_nodeslist
	sta	<L564+found_1
	stx	<L564+found_1+2
;						if(!found)
	.line	2636
;						{
	lda	<L564+found_1
	ora	<L564+found_1+2
	beq	L592
	brl	L10205
L592:
	.line	2637
;							found = ptr;
	.line	2638
	lda	<L564+ptr_1
	sta	<L564+found_1
	lda	<L564+ptr_1+2
	sta	<L564+found_1+2
;						}
	.line	2639
;
;						hitList->listData = found;
L10205:
	.line	2641
	lda	<L564+found_1
	ldy	#$4
	sta	[<L563+hitList_0],Y
	lda	<L564+found_1+2
	ldy	#$6
	sta	[<L563+hitList_0],Y
;						break;
	.line	2642
	brl	L10201
;					}
	.line	2643
;				}
L10204:
	.line	2644
;
;				// CLEANUP CLOSED CLOSED WINDOWS
;				ptr = ptr->next;
L10203:
	.line	2647
	ldy	#$a
	lda	[<L564+ptr_1],Y
	sta	<R0
	ldy	#$c
	lda	[<L564+ptr_1],Y
	sta	<R0+2
	lda	<R0
	sta	<L564+ptr_1
	lda	<R0+2
	sta	<L564+ptr_1+2
;
;				k_remove_closed_windows_from_list(ptr);
	.line	2649
	pei	<L564+ptr_1+2
	pei	<L564+ptr_1
	jsl	~~k_remove_closed_windows_from_list
;				/*
;				if(((PCLICKDETECTED)ptr->data)->window->isClosed)
;				{
;					((PCLICKDETECTED)ptr->data)->window->win_title[31] = 0;
;					k_debug_strings("k_point_in_any_nodeslist::removing closed window:",((PCLICKDETECTED)ptr->data)->window->win_title);
;
;					found = ptr->next;
;
;					if(ptr->last)
;						ptr->last->next = ptr->next;
;					if(ptr->next)
;						ptr->next->last = ptr->last;
;
;					//k_mem_deallocate_heap(ptr->data);
;					k_mem_deallocate_heap(ptr);
;
;					ptr = found;
;					found = NULL;
;				}
;				*/
;			}
	.line	2670
;		}
L10202:
	.line	2671
	brl	L10200
L10201:
;	}
	.line	2672
;
;	//k_debug_pointer("k_point_in_any_nodeslist:",found);
;
;	return found;
L10194:
	.line	2676
	ldx	<L564+found_1+2
	lda	<L564+found_1
	brl	L581
;}
	.line	2677
	.endblock	2677
L563	equ	32
L564	equ	9
	ends
	efunc
	.endfunc	2677,9,32
	.line	2677
	data
L562:
	db	$00
	ends
;
;VOID k_point_hit_resetdepth_nodeslist(PFXNODELIST hitList,int depth)
;{
	.line	2679
	.line	2680
	WINMAN
	xdef	~~k_point_hit_resetdepth_nodeslist
	func
	.function	2680
~~k_point_hit_resetdepth_nodeslist:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L594
	tcs
	phd
	tcd
hitList_0	set	4
depth_0	set	8
	.block	2680
;	PCLICKABLE c 	 = NULL;
;	PFXNODE    ptr   = NULL;
;
;	ptr = k_nodelist_getfirstnode(hitList);
c_1	set	0
ptr_1	set	4
	.sym	c,0,138,1,32,24
	.sym	ptr,4,138,1,32,2
	.sym	hitList,4,138,6,32,3
	.sym	depth,8,5,6,16
	stz	<L595+c_1
	stz	<L595+c_1+2
	stz	<L595+ptr_1
	stz	<L595+ptr_1+2
	.line	2684
	pei	<L594+hitList_0+2
	pei	<L594+hitList_0
	jsl	~~k_nodelist_getfirstnode
	sta	<L595+ptr_1
	stx	<L595+ptr_1+2
;	while(ptr!=NULL)
	.line	2685
L10206:
	lda	<L595+ptr_1
	ora	<L595+ptr_1+2
	bne	L597
	brl	L10207
L597:
;	{
	.line	2686
;		((PCLICKABLE)((PCLICKDETECTED)ptr->data)->window->clickable)->z = depth;
	.line	2687
	ldy	#$2
	lda	[<L595+ptr_1],Y
	sta	<R0
	ldy	#$4
	lda	[<L595+ptr_1],Y
	sta	<R0+2
	lda	[<R0]
	sta	<R1
	ldy	#$2
	lda	[<R0],Y
	sta	<R1+2
	ldy	#$d0
	lda	[<R1],Y
	sta	<R0
	ldy	#$d2
	lda	[<R1],Y
	sta	<R0+2
	lda	<L594+depth_0
	ldy	#$8
	sta	[<R0],Y
;		ptr = ptr->next;
	.line	2688
	ldy	#$a
	lda	[<L595+ptr_1],Y
	sta	<R0
	ldy	#$c
	lda	[<L595+ptr_1],Y
	sta	<R0+2
	lda	<R0
	sta	<L595+ptr_1
	lda	<R0+2
	sta	<L595+ptr_1+2
;	}
	.line	2689
	brl	L10206
L10207:
;}
	.line	2690
L598:
	lda	<L594+2
	sta	<L594+2+6
	lda	<L594+1
	sta	<L594+1+6
	pld
	tsc
	clc
	adc	#L594+6
	tcs
	rtl
	.endblock	2690
L594	equ	16
L595	equ	9
	ends
	efunc
	.endfunc	2690,9,16
	.line	2690
;
;PFXNODE k_point_hit_scan(int x,int y)
;{
	.line	2692
	.line	2693
	WINMAN
	xdef	~~k_point_hit_scan
	func
	.function	2693
~~k_point_hit_scan:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L599
	tcs
	phd
	tcd
x_0	set	4
y_0	set	6
	.block	2693
;	//return k_point_hit_scan_nodeslist(_k_windowManager_ObjectHitList,x,y);
;	return k_point_hit_scan_nodeslist(((PWINDOW)k_user_getDesktopWindow())->pChildHitList,x,y);
	.sym	x,4,5,6,16
	.sym	y,6,5,6,16
	.line	2695
	pei	<L599+y_0
	pei	<L599+x_0
	jsl	~~k_user_getDesktopWindow
	sta	<R0
	stx	<R0+2
	ldy	#$13e
	lda	[<R0],Y
	pha
	ldy	#$13c
	lda	[<R0],Y
	pha
	jsl	~~k_point_hit_scan_nodeslist
	sta	<R0
	stx	<R0+2
	ldx	<R0+2
	lda	<R0
L602:
	tay
	lda	<L599+2
	sta	<L599+2+4
	lda	<L599+1
	sta	<L599+1+4
	pld
	tsc
	clc
	adc	#L599+4
	tcs
	tya
	rtl
;
;}
	.line	2697
	.endblock	2697
L599	equ	4
L600	equ	5
	ends
	efunc
	.endfunc	2697,5,4
	.line	2697
;
;PFXNODE k_point_hit_scan_nodeslist(PFXNODELIST hitList,int x,int y)
;{
	.line	2699
	.line	2700
	WINMAN
	xdef	~~k_point_hit_scan_nodeslist
	func
	.function	2700
~~k_point_hit_scan_nodeslist:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L603
	tcs
	phd
	tcd
hitList_0	set	4
x_0	set	8
y_0	set	10
	.block	2700
;	RECT r;
;	PCLICKABLE c 	 = NULL;
;	PFXNODE    ptr   = NULL;
;	PCLICKABLE found = NULL;
;	PFXNODE    nodeFound = NULL;
;
;
;	ptr = k_nodelist_getfirstnode(hitList);
r_1	set	0
c_1	set	8
ptr_1	set	12
found_1	set	16
nodeFound_1	set	20
	.sym	r,0,10,1,64,22
	.sym	c,8,138,1,32,24
	.sym	ptr,12,138,1,32,2
	.sym	found,16,138,1,32,24
	.sym	nodeFound,20,138,1,32,2
	.sym	hitList,4,138,6,32,3
	.sym	x,8,5,6,16
	.sym	y,10,5,6,16
	stz	<L604+c_1
	stz	<L604+c_1+2
	stz	<L604+ptr_1
	stz	<L604+ptr_1+2
	stz	<L604+found_1
	stz	<L604+found_1+2
	stz	<L604+nodeFound_1
	stz	<L604+nodeFound_1+2
	.line	2708
	pei	<L603+hitList_0+2
	pei	<L603+hitList_0
	jsl	~~k_nodelist_getfirstnode
	sta	<L604+ptr_1
	stx	<L604+ptr_1+2
;	while(ptr!=NULL)
	.line	2709
L10208:
	lda	<L604+ptr_1
	ora	<L604+ptr_1+2
	bne	L606
	brl	L10209
L606:
;	{
	.line	2710
;		//ptr = k_remove_closed_windows_from_list(ptr);
;		if(!HITTOWND(ptr)->isClosed)
	.line	2712
;		{
	ldy	#$2
	lda	[<L604+ptr_1],Y
	sta	<R0
	ldy	#$4
	lda	[<L604+ptr_1],Y
	sta	<R0+2
	lda	[<R0]
	sta	<R1
	ldy	#$2
	lda	[<R0],Y
	sta	<R1+2
	ldy	#$15d
	lda	[<R1],Y
	and	#$ff
	beq	L607
	brl	L10210
L607:
	.line	2713
;			c = ((PCLICKABLE)((PCLICKDETECTED)ptr->data)->window->clickable);
	.line	2714
	ldy	#$2
	lda	[<L604+ptr_1],Y
	sta	<R0
	ldy	#$4
	lda	[<L604+ptr_1],Y
	sta	<R0+2
	lda	[<R0]
	sta	<R1
	ldy	#$2
	lda	[<R0],Y
	sta	<R1+2
	ldy	#$d0
	lda	[<R1],Y
	sta	<L604+c_1
	ldy	#$d2
	lda	[<R1],Y
	sta	<L604+c_1+2
;
;			r = c->area;
	.line	2716
	pei	<L604+c_1+2
	pei	<L604+c_1
	clc
	tdc
	adc	#<L604+r_1
	sta	<R0
	lda	#$0
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	lda	#$8
	xref	~~~fmov
	jsl	~~~fmov
;			if(x >=r.x && x<(r.x+r.width))
	.line	2717
;			{
	sec
	lda	<L603+x_0
	sbc	<L604+r_1
	bvs	L608
	eor	#$8000
L608:
	bmi	L609
	brl	L10211
L609:
	clc
	lda	<L604+r_1
	adc	<L604+r_1+4
	sta	<R0
	sec
	lda	<L603+x_0
	sbc	<R0
	bvs	L610
	eor	#$8000
L610:
	bpl	L611
	brl	L10211
L611:
	.line	2718
;				if(y >=r.y && y<(r.y+r.height))
	.line	2719
;				{
	sec
	lda	<L603+y_0
	sbc	<L604+r_1+2
	bvs	L612
	eor	#$8000
L612:
	bmi	L613
	brl	L10212
L613:
	clc
	lda	<L604+r_1+2
	adc	<L604+r_1+6
	sta	<R0
	sec
	lda	<L603+y_0
	sbc	<R0
	bvs	L614
	eor	#$8000
L614:
	bpl	L615
	brl	L10212
L615:
	.line	2720
;					if(!found)
	.line	2721
;					{
	lda	<L604+found_1
	ora	<L604+found_1+2
	beq	L616
	brl	L10213
L616:
	.line	2722
;						found = c;
	.line	2723
	lda	<L604+c_1
	sta	<L604+found_1
	lda	<L604+c_1+2
	sta	<L604+found_1+2
;						nodeFound = ptr;
	.line	2724
	lda	<L604+ptr_1
	sta	<L604+nodeFound_1
	lda	<L604+ptr_1+2
	sta	<L604+nodeFound_1+2
;					}
	.line	2725
;					else
	brl	L10214
L10213:
;					{
	.line	2727
;						if(c->z > found->z)
	.line	2728
;						{
	sec
	ldy	#$8
	lda	[<L604+found_1],Y
	ldy	#$8
	sbc	[<L604+c_1],Y
	bvs	L617
	eor	#$8000
L617:
	bpl	L618
	brl	L10215
L618:
	.line	2729
;							found = c;
	.line	2730
	lda	<L604+c_1
	sta	<L604+found_1
	lda	<L604+c_1+2
	sta	<L604+found_1+2
;							nodeFound = ptr;
	.line	2731
	lda	<L604+ptr_1
	sta	<L604+nodeFound_1
	lda	<L604+ptr_1+2
	sta	<L604+nodeFound_1+2
;							//k_debug_strings("k_point_hit_scan_nodeslist:","Found Higher");
;							//debug_window_node(NULL,((PCLICKDETECTED)nodeFound->data)->window);
;						}
	.line	2734
;					}
L10215:
	.line	2735
L10214:
;				}
	.line	2736
;			}
L10212:
	.line	2737
;		}
L10211:
	.line	2738
;		// CLEANUP CLOSED CLOSED WINDOWS
;		ptr = ptr->next;
L10210:
	.line	2740
	ldy	#$a
	lda	[<L604+ptr_1],Y
	sta	<R0
	ldy	#$c
	lda	[<L604+ptr_1],Y
	sta	<R0+2
	lda	<R0
	sta	<L604+ptr_1
	lda	<R0+2
	sta	<L604+ptr_1+2
;	}
	.line	2741
	brl	L10208
L10209:
;
;	//k_debug_pointer("k_point_hit_scan_nodeslist:",nodeFound);
;	if(nodeFound)
	.line	2744
;	{
	lda	<L604+nodeFound_1
	ora	<L604+nodeFound_1+2
	bne	L619
	brl	L10216
L619:
	.line	2745
;		//k_debug_pointer("k_point_hit_scan_nodeslist:window:",((PCLICKDETECTED)nodeFound->data)->window);
;		//k_debug_pointer("k_point_hit_scan_nodeslist:inside:",((PCLICKDETECTED)nodeFound->data)->window->win_title);
;
;		//debug_window_node(NULL,((PCLICKDETECTED)nodeFound->data)->window);
;	}
	.line	2750
;
;	return nodeFound;
L10216:
	.line	2752
	ldx	<L604+nodeFound_1+2
	lda	<L604+nodeFound_1
L620:
	tay
	lda	<L603+2
	sta	<L603+2+8
	lda	<L603+1
	sta	<L603+1+8
	pld
	tsc
	clc
	adc	#L603+8
	tcs
	tya
	rtl
;}
	.line	2753
	.endblock	2753
L603	equ	32
L604	equ	9
	ends
	efunc
	.endfunc	2753,9,32
	.line	2753
;
;
;
;PFXNODE k_remove_closed_windows_from_list(PFXNODE ptr)
;{
	.line	2757
	.line	2758
	WINMAN
	xdef	~~k_remove_closed_windows_from_list
	func
	.function	2758
~~k_remove_closed_windows_from_list:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L621
	tcs
	phd
	tcd
ptr_0	set	4
	.block	2758
;	PFXNODE tmp = ptr;
;
;	if(((PCLICKDETECTED)ptr->data)->window && ((PCLICKDETECTED)ptr->data)->window->isClosed)
tmp_1	set	0
	.sym	tmp,0,138,1,32,2
	.sym	ptr,4,138,6,32,2
	lda	<L621+ptr_0
	sta	<L622+tmp_1
	lda	<L621+ptr_0+2
	sta	<L622+tmp_1+2
	.line	2761
;	{
	ldy	#$2
	lda	[<L621+ptr_0],Y
	sta	<R0
	ldy	#$4
	lda	[<L621+ptr_0],Y
	sta	<R0+2
	lda	[<R0]
	ldy	#$2
	ora	[<R0],Y
	bne	L624
	brl	L10217
L624:
	ldy	#$2
	lda	[<L621+ptr_0],Y
	sta	<R0
	ldy	#$4
	lda	[<L621+ptr_0],Y
	sta	<R0+2
	lda	[<R0]
	sta	<R1
	ldy	#$2
	lda	[<R0],Y
	sta	<R1+2
	ldy	#$15d
	lda	[<R1],Y
	and	#$ff
	bne	L625
	brl	L10217
L625:
	.line	2762
;		((PCLICKDETECTED)ptr->data)->window->win_title[31] = 0;
	.line	2763
	ldy	#$2
	lda	[<L621+ptr_0],Y
	sta	<R0
	ldy	#$4
	lda	[<L621+ptr_0],Y
	sta	<R0+2
	lda	[<R0]
	sta	<R1
	ldy	#$2
	lda	[<R0],Y
	sta	<R1+2
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$f3
	sta	[<R1],Y
	rep	#$20
	longa	on
;
;
;		//k_debug_strings("k_point_in_any_nodeslist::removing closed window:",((PCLICKDETECTED)ptr->data)->window->win_title);
;		if(((PCLICKDETECTED)ptr->data)->window->win_title)
	.line	2767
;			k_debug_strings("k_remove_closed_windows_from_list::removing closed window:",((PCLICKDETECTED)ptr->data)->window->win_title);
	ldy	#$2
	lda	[<L621+ptr_0],Y
	sta	<R0
	ldy	#$4
	lda	[<L621+ptr_0],Y
	sta	<R0+2
	clc
	lda	#$d4
	adc	[<R0]
	sta	<R1
	lda	#$0
	ldy	#$2
	adc	[<R0],Y
	sta	<R1+2
	lda	<R1
	ora	<R1+2
	bne	L626
	brl	L10218
L626:
	.line	2768
	ldy	#$2
	lda	[<L621+ptr_0],Y
	sta	<R0
	ldy	#$4
	lda	[<L621+ptr_0],Y
	sta	<R0+2
	clc
	lda	#$d4
	adc	[<R0]
	sta	<R1
	lda	#$0
	ldy	#$2
	adc	[<R0],Y
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	pea	#^L593
	pea	#<L593
	jsl	~~k_debug_strings
;		else
	brl	L10219
L10218:
;			k_debug_strings("k_remove_closed_windows_from_list::removing closed window:","NO NAME");
	.line	2770
	pea	#^L593+118
	pea	#<L593+118
	pea	#^L593+59
	pea	#<L593+59
	jsl	~~k_debug_strings
L10219:
;
;
;
;		tmp = ptr->next;
	.line	2774
	ldy	#$a
	lda	[<L621+ptr_0],Y
	sta	<L622+tmp_1
	ldy	#$c
	lda	[<L621+ptr_0],Y
	sta	<L622+tmp_1+2
;
;		if(ptr->last)
	.line	2776
;			ptr->last->next = ptr->next;
	ldy	#$6
	lda	[<L621+ptr_0],Y
	ldy	#$8
	ora	[<L621+ptr_0],Y
	bne	L627
	brl	L10220
L627:
	.line	2777
	ldy	#$6
	lda	[<L621+ptr_0],Y
	sta	<R0
	ldy	#$8
	lda	[<L621+ptr_0],Y
	sta	<R0+2
	ldy	#$a
	lda	[<L621+ptr_0],Y
	ldy	#$a
	sta	[<R0],Y
	ldy	#$c
	lda	[<L621+ptr_0],Y
	ldy	#$c
	sta	[<R0],Y
;		if(ptr->next)
L10220:
	.line	2778
;			ptr->next->last = ptr->last;
	ldy	#$a
	lda	[<L621+ptr_0],Y
	ldy	#$c
	ora	[<L621+ptr_0],Y
	bne	L628
	brl	L10221
L628:
	.line	2779
	ldy	#$a
	lda	[<L621+ptr_0],Y
	sta	<R0
	ldy	#$c
	lda	[<L621+ptr_0],Y
	sta	<R0+2
	ldy	#$6
	lda	[<L621+ptr_0],Y
	ldy	#$6
	sta	[<R0],Y
	ldy	#$8
	lda	[<L621+ptr_0],Y
	ldy	#$8
	sta	[<R0],Y
;
;		//k_mem_deallocate_heap(ptr->data);
;		k_mem_deallocate_heap(ptr);
L10221:
	.line	2782
	pei	<L621+ptr_0+2
	pei	<L621+ptr_0
	jsl	~~k_mem_deallocate_heap
;
;		ptr = tmp;
	.line	2784
	lda	<L622+tmp_1
	sta	<L621+ptr_0
	lda	<L622+tmp_1+2
	sta	<L621+ptr_0+2
;		tmp = NULL;
	.line	2785
	stz	<L622+tmp_1
	stz	<L622+tmp_1+2
;	}
	.line	2786
;
;	return ptr;
L10217:
	.line	2788
	ldx	<L621+ptr_0+2
	lda	<L621+ptr_0
L629:
	tay
	lda	<L621+2
	sta	<L621+2+4
	lda	<L621+1
	sta	<L621+1+4
	pld
	tsc
	clc
	adc	#L621+4
	tcs
	tya
	rtl
;}
	.line	2789
	.endblock	2789
L621	equ	12
L622	equ	9
	ends
	efunc
	.endfunc	2789,9,12
	.line	2789
	data
L593:
	db	$6B,$5F,$72,$65,$6D,$6F,$76,$65,$5F,$63,$6C,$6F,$73,$65,$64
	db	$5F,$77,$69,$6E,$64,$6F,$77,$73,$5F,$66,$72,$6F,$6D,$5F,$6C
	db	$69,$73,$74,$3A,$3A,$72,$65,$6D,$6F,$76,$69,$6E,$67,$20,$63
	db	$6C,$6F,$73,$65,$64,$20,$77,$69,$6E,$64,$6F,$77,$3A,$00,$6B
	db	$5F,$72,$65,$6D,$6F,$76,$65,$5F,$63,$6C,$6F,$73,$65,$64,$5F
	db	$77,$69,$6E,$64,$6F,$77,$73,$5F,$66,$72,$6F,$6D,$5F,$6C,$69
	db	$73,$74,$3A,$3A,$72,$65,$6D,$6F,$76,$69,$6E,$67,$20,$63,$6C
	db	$6F,$73,$65,$64,$20,$77,$69,$6E,$64,$6F,$77,$3A,$00,$4E,$4F
	db	$20,$4E,$41,$4D,$45,$00
	ends
;
;
;BOOL k_user_ShowWindow(HWND hWnd,UINT showFlag)
;{
	.line	2792
	.line	2793
	WINMAN
	xdef	~~k_user_ShowWindow
	func
	.function	2793
~~k_user_ShowWindow:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L631
	tcs
	phd
	tcd
hWnd_0	set	4
showFlag_0	set	8
	.block	2793
;	return FALSE;
	.sym	hWnd,4,129,6,32
	.sym	showFlag,8,16,6,16
	.line	2794
	lda	#$0
L634:
	tay
	lda	<L631+2
	sta	<L631+2+6
	lda	<L631+1
	sta	<L631+1+6
	pld
	tsc
	clc
	adc	#L631+6
	tcs
	tya
	rtl
;}
	.line	2795
	.endblock	2795
L631	equ	0
L632	equ	1
	ends
	efunc
	.endfunc	2795,1,0
	.line	2795
;
;
;PPOINT k_user_ClientToGlobalCoordinates(HWND hWnd,PPOINT point)
;{
	.line	2798
	.line	2799
	WINMAN
	xdef	~~k_user_ClientToGlobalCoordinates
	func
	.function	2799
~~k_user_ClientToGlobalCoordinates:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L635
	tcs
	phd
	tcd
hWnd_0	set	4
point_0	set	8
	.block	2799
;	PWINDOW pWin	 = k_getWindowFromHandle(hWnd);
;	PWINDOW pParent  = NULL;
;
;	if(pWin)
pWin_1	set	0
pParent_1	set	4
	.sym	pWin,0,138,1,32,27
	.sym	pParent,4,138,1,32,27
	.sym	hWnd,4,129,6,32
	.sym	point,8,138,6,32,21
	pei	<L635+hWnd_0+2
	pei	<L635+hWnd_0
	jsl	~~k_getWindowFromHandle
	sta	<L636+pWin_1
	stx	<L636+pWin_1+2
	stz	<L636+pParent_1
	stz	<L636+pParent_1+2
	.line	2803
;	{
	lda	<L636+pWin_1
	ora	<L636+pWin_1+2
	bne	L638
	brl	L10222
L638:
	.line	2804
;		pParent = k_getWindowFromHandle(pWin->pParentWindow);
	.line	2805
	ldy	#$132
	lda	[<L636+pWin_1],Y
	pha
	ldy	#$130
	lda	[<L636+pWin_1],Y
	pha
	jsl	~~k_getWindowFromHandle
	sta	<L636+pParent_1
	stx	<L636+pParent_1+2
;		if(pParent)
	.line	2806
;		{
	lda	<L636+pParent_1
	ora	<L636+pParent_1+2
	bne	L639
	brl	L10223
L639:
	.line	2807
;		}
	.line	2808
;		else
	brl	L10224
L10223:
;		{
	.line	2810
;
;		}
	.line	2812
L10224:
;	}
	.line	2813
;
;
;	return point;
L10222:
	.line	2816
	ldx	<L635+point_0+2
	lda	<L635+point_0
L640:
	tay
	lda	<L635+2
	sta	<L635+2+8
	lda	<L635+1
	sta	<L635+1+8
	pld
	tsc
	clc
	adc	#L635+8
	tcs
	tya
	rtl
;}
	.line	2817
	.endblock	2817
L635	equ	8
L636	equ	1
	ends
	efunc
	.endfunc	2817,1,8
	.line	2817
;
;
;PPOINT k_user_GlobalToClientCoordinates(HWND hWnd,PPOINT point)
;{
	.line	2820
	.line	2821
	WINMAN
	xdef	~~k_user_GlobalToClientCoordinates
	func
	.function	2821
~~k_user_GlobalToClientCoordinates:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L641
	tcs
	phd
	tcd
hWnd_0	set	4
point_0	set	8
	.block	2821
;	PWINDOW pWin	 = k_getWindowFromHandle(hWnd);
;	PWINDOW pParent  = NULL;
;
;	if(pWin)
pWin_1	set	0
pParent_1	set	4
	.sym	pWin,0,138,1,32,27
	.sym	pParent,4,138,1,32,27
	.sym	hWnd,4,129,6,32
	.sym	point,8,138,6,32,21
	pei	<L641+hWnd_0+2
	pei	<L641+hWnd_0
	jsl	~~k_getWindowFromHandle
	sta	<L642+pWin_1
	stx	<L642+pWin_1+2
	stz	<L642+pParent_1
	stz	<L642+pParent_1+2
	.line	2825
;	{
	lda	<L642+pWin_1
	ora	<L642+pWin_1+2
	bne	L644
	brl	L10225
L644:
	.line	2826
;		pParent = k_getWindowFromHandle(pWin->pParentWindow);
	.line	2827
	ldy	#$132
	lda	[<L642+pWin_1],Y
	pha
	ldy	#$130
	lda	[<L642+pWin_1],Y
	pha
	jsl	~~k_getWindowFromHandle
	sta	<L642+pParent_1
	stx	<L642+pParent_1+2
;		if(pParent)
	.line	2828
;		{
	lda	<L642+pParent_1
	ora	<L642+pParent_1+2
	bne	L645
	brl	L10226
L645:
	.line	2829
;
;		}
	.line	2831
;		else
	brl	L10227
L10226:
;		{
	.line	2833
;
;		}
	.line	2835
L10227:
;	}
	.line	2836
;
;	return point;
L10225:
	.line	2838
	ldx	<L641+point_0+2
	lda	<L641+point_0
L646:
	tay
	lda	<L641+2
	sta	<L641+2+8
	lda	<L641+1
	sta	<L641+1+8
	pld
	tsc
	clc
	adc	#L641+8
	tcs
	tya
	rtl
;}
	.line	2839
	.endblock	2839
L641	equ	8
L642	equ	1
	ends
	efunc
	.endfunc	2839,1,8
	.line	2839
;
;
;BOOL gadgetWindowProc(PFXOSMESSAGE pMsg)
;{
	.line	2842
	.line	2843
	WINMAN
	xdef	~~gadgetWindowProc
	func
	.function	2843
~~gadgetWindowProc:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L647
	tcs
	phd
	tcd
pMsg_0	set	4
	.block	2843
;	PFXPROCESS p = NULL;
;
;	if(pMsg!=NULL)
p_1	set	0
	.sym	p,0,138,1,32,17
	.sym	pMsg,4,138,6,32,13
	stz	<L648+p_1
	stz	<L648+p_1+2
	.line	2846
;	{
	lda	<L647+pMsg_0
	ora	<L647+pMsg_0+2
	bne	L650
	brl	L10228
L650:
	.line	2847
;		p = k_exec_get_current_process();
	.line	2848
	jsl	~~k_exec_get_current_process
	sta	<L648+p_1
	stx	<L648+p_1+2
;
;		//k_debug_long("consoleWindowProc::ProcessId:",p->procId);
;
;		switch(pMsg->type)
	.line	2852
	ldy	#$8
	lda	[<L647+pMsg_0],Y
	brl	L10229
;		{
	.line	2853
;		case FX_CREATE_WINDOW:
	.line	2854
L10231:
;			k_debug_long("gadgetWindowProc::ProcessId:",p->procId);
	.line	2855
	ldy	#$4
	lda	[<L648+p_1],Y
	pha
	ldy	#$2
	lda	[<L648+p_1],Y
	pha
	pea	#^L630
	pea	#<L630
	jsl	~~k_debug_long
;			k_debug_integer("gadgetWindowProc::MessageId:",pMsg->type);
	.line	2856
	ldy	#$8
	lda	[<L647+pMsg_0],Y
	pha
	pea	#^L630+29
	pea	#<L630+29
	jsl	~~k_debug_integer
;			break;
	.line	2857
	brl	L10230
;		case FX_LBUTTON_DOWN:
	.line	2858
L10232:
;			if(pMsg->type!=FX_PROCESS)
	.line	2859
;			{
	ldy	#$8
	lda	[<L647+pMsg_0],Y
	cmp	#<$ff00
	bne	L651
	brl	L10233
L651:
	.line	2860
;				//k_debug_integer("consoleWindowProc::ProcessId:",p->procId);
;				k_debug_string("gadgetWindowProc::FX_MBUTTON_DOWN\r\n");
	.line	2862
	pea	#^L630+58
	pea	#<L630+58
	jsl	~~k_debug_string
;			}
	.line	2863
;
;			break;
L10233:
	.line	2865
	brl	L10230
;		default:
	.line	2866
L10234:
;			break;
	.line	2867
	brl	L10230
;		}
	.line	2868
L10229:
	xref	~~~swt
	jsl	~~~swt
	dw	2
	dw	3844
	dw	L10232-1
	dw	65283
	dw	L10231-1
	dw	L10234-1
L10230:
;	}
	.line	2869
;
;	return TRUE;
L10228:
	.line	2871
	lda	#$1
L652:
	tay
	lda	<L647+2
	sta	<L647+2+4
	lda	<L647+1
	sta	<L647+1+4
	pld
	tsc
	clc
	adc	#L647+4
	tcs
	tya
	rtl
;}
	.line	2872
	.endblock	2872
L647	equ	4
L648	equ	1
	ends
	efunc
	.endfunc	2872,1,4
	.line	2872
	data
L630:
	db	$67,$61,$64,$67,$65,$74,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F
	db	$63,$3A,$3A,$50,$72,$6F,$63,$65,$73,$73,$49,$64,$3A,$00,$67
	db	$61,$64,$67,$65,$74,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63
	db	$3A,$3A,$4D,$65,$73,$73,$61,$67,$65,$49,$64,$3A,$00,$67,$61
	db	$64,$67,$65,$74,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A
	db	$3A,$46,$58,$5F,$4D,$42,$55,$54,$54,$4F,$4E,$5F,$44,$4F,$57
	db	$4E,$0D,$0A,$00
	ends
;
;int k_user_getSystemMetric(UINT flag)
;{
	.line	2874
	.line	2875
	WINMAN
	xdef	~~k_user_getSystemMetric
	func
	.function	2875
~~k_user_getSystemMetric:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L654
	tcs
	phd
	tcd
flag_0	set	4
	.block	2875
;	FONTMETRIC fm;
;
;	int metric = -1;
;
;
;	switch(flag)
fm_1	set	0
metric_1	set	4
	.sym	fm,0,10,1,32,29
	.sym	metric,4,5,1,16
	.sym	flag,4,16,6,16
	lda	#$ffff
	sta	<L655+metric_1
	.line	2881
	lda	<L654+flag_0
	brl	L10235
;	{
	.line	2882
;	case SM_CYMENUSIZE:
	.line	2883
L10237:
;		k_get_font_metrics(&fm);
	.line	2884
	pea	#0
	clc
	tdc
	adc	#<L655+fm_1
	pha
	jsl	~~k_get_font_metrics
;
;		metric = fm.height + (int)(fm.width/2) + 1;
	.line	2886
	lda	<L655+fm_1
	ldx	#<$2
	xref	~~~div
	jsl	~~~div
	sta	<R0
	clc
	lda	<R0
	adc	<L655+fm_1+2
	sta	<R1
	lda	<R1
	ina
	sta	<L655+metric_1
;
;		break;
	.line	2888
	brl	L10236
;	case SM_CXMENUSIZE:
	.line	2889
L10238:
;		metric = 640;
	.line	2890
	lda	#$280
	sta	<L655+metric_1
;		break;
	.line	2891
	brl	L10236
;	case SM_CXFULLSCREEN:
	.line	2892
L10239:
;		if(k_get_video_mode() > 2)
	.line	2893
;			metric = 800;
	jsl	~~k_get_video_mode
	sta	<R0
	lda	#$2
	cmp	<R0
	bcc	L657
	brl	L10240
L657:
	.line	2894
	lda	#$320
	sta	<L655+metric_1
;		else
	brl	L10241
L10240:
;			metric = 640;
	.line	2896
	lda	#$280
	sta	<L655+metric_1
L10241:
;		break;
	.line	2897
	brl	L10236
;	case SM_CYFULLSCREEN:
	.line	2898
L10242:
;		if(k_get_video_mode() > 2)
	.line	2899
;			metric = 600;
	jsl	~~k_get_video_mode
	sta	<R0
	lda	#$2
	cmp	<R0
	bcc	L658
	brl	L10243
L658:
	.line	2900
	lda	#$258
	sta	<L655+metric_1
;		else
	brl	L10244
L10243:
;			metric = 480;
	.line	2902
	lda	#$1e0
	sta	<L655+metric_1
L10244:
;		break;
	.line	2903
	brl	L10236
;	case SM_CXFRAME:
	.line	2904
L10245:
;		metric = 2;
	.line	2905
	lda	#$2
	sta	<L655+metric_1
;		break;
	.line	2906
	brl	L10236
;	case SM_CYFRAME:
	.line	2907
L10246:
;		metric = 2;
	.line	2908
	lda	#$2
	sta	<L655+metric_1
;		break;
	.line	2909
	brl	L10236
;	case SM_CXBORDER:
	.line	2910
L10247:
;		metric = 1;
	.line	2911
	lda	#$1
	sta	<L655+metric_1
;		break;
	.line	2912
	brl	L10236
;	case SM_CYBORDER:
	.line	2913
L10248:
;		metric = 1;
	.line	2914
	lda	#$1
	sta	<L655+metric_1
;		break;
	.line	2915
	brl	L10236
;	case SM_CXVSCROLL:
	.line	2916
L10249:
;		metric = FONTH + 1;
	.line	2917
	jsl	~~k_font_getFontHeight
	sta	<R0
	lda	<R0
	ina
	sta	<L655+metric_1
;		break;
	.line	2918
	brl	L10236
;	case SM_CYHSCROLL:
	.line	2919
L10250:
;		metric = FONTW + 1;
	.line	2920
	jsl	~~k_font_getFontWidth
	sta	<R0
	lda	<R0
	ina
	sta	<L655+metric_1
;		break;
	.line	2921
	brl	L10236
;	case SM_CYSMCAPTION:
	.line	2922
L10251:
;		metric = 10;
	.line	2923
	lda	#$a
	sta	<L655+metric_1
;		break;
	.line	2924
	brl	L10236
;	case SM_CXICON:
	.line	2925
L10252:
;	case SM_CYICON:
	.line	2926
L10253:
;		metric = 16;
	.line	2927
	lda	#$10
	sta	<L655+metric_1
;		break;
	.line	2928
	brl	L10236
;	case SM_CXDLGFRAME: // or SM_CXFIXEDFRAME
	.line	2929
L10254:
;	case SM_CYDLGFRAME: // or SM_CYFIXEDFRAME
	.line	2930
L10255:
;		metric = 4;
	.line	2931
	lda	#$4
	sta	<L655+metric_1
;		break;
	.line	2932
	brl	L10236
;	case SM_CYCAPTION:
	.line	2933
L10256:
;		metric = 2;
	.line	2934
	lda	#$2
	sta	<L655+metric_1
;		break;
	.line	2935
	brl	L10236
;
;	case SM_CXGADGET:
	.line	2937
L10257:
;	case SM_CYGADGET:
	.line	2938
L10258:
;		metric = 8;
	.line	2939
	lda	#$8
	sta	<L655+metric_1
;		break;
	.line	2940
	brl	L10236
;
;	}
	.line	2942
L10235:
	xref	~~~swt
	jsl	~~~swt
	dw	18
	dw	2
	dw	L10249-1
	dw	3
	dw	L10250-1
	dw	4
	dw	L10256-1
	dw	5
	dw	L10247-1
	dw	6
	dw	L10248-1
	dw	7
	dw	L10254-1
	dw	8
	dw	L10255-1
	dw	11
	dw	L10252-1
	dw	12
	dw	L10253-1
	dw	16
	dw	L10239-1
	dw	17
	dw	L10242-1
	dw	24
	dw	L10257-1
	dw	25
	dw	L10258-1
	dw	32
	dw	L10245-1
	dw	33
	dw	L10246-1
	dw	51
	dw	L10251-1
	dw	54
	dw	L10238-1
	dw	55
	dw	L10237-1
	dw	L10236-1
L10236:
;
;	return metric;
	.line	2944
	lda	<L655+metric_1
L659:
	tay
	lda	<L654+2
	sta	<L654+2+2
	lda	<L654+1
	sta	<L654+1+2
	pld
	tsc
	clc
	adc	#L654+2
	tcs
	tya
	rtl
;}
	.line	2945
	.endblock	2945
L654	equ	14
L655	equ	9
	ends
	efunc
	.endfunc	2945,9,14
	.line	2945
;
;void k_text_callback(PWINDOW textWindow)
;{
	.line	2947
	.line	2948
	WINMAN
	xdef	~~k_text_callback
	func
	.function	2948
~~k_text_callback:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L660
	tcs
	phd
	tcd
textWindow_0	set	4
	.block	2948
;	k_debug_message("k_text_callback:clicked:",textWindow->win_class);
	.sym	textWindow,4,138,6,32,27
	.line	2949
	clc
	lda	#$f6
	adc	<L660+textWindow_0
	sta	<R0
	lda	#$0
	adc	<L660+textWindow_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L653
	pea	#<L653
	jsl	~~k_debug_message
;	//k_send_message(NULL,FX_WINDOW_TOFRONT,NULL,0);
;	return;
	.line	2951
L663:
	lda	<L660+2
	sta	<L660+2+4
	lda	<L660+1
	sta	<L660+1+4
	pld
	tsc
	clc
	adc	#L660+4
	tcs
	rtl
;}
	.line	2952
	.endblock	2952
L660	equ	4
L661	equ	5
	ends
	efunc
	.endfunc	2952,5,4
	.line	2952
	data
L653:
	db	$6B,$5F,$74,$65,$78,$74,$5F,$63,$61,$6C,$6C,$62,$61,$63,$6B
	db	$3A,$63,$6C,$69,$63,$6B,$65,$64,$3A,$00
	ends
;
;
;int k_render_text(HWND pParent,LPCSTR clickableText,int cx,int cy,char color,OBJECTCLICKED callback)
;{
	.line	2955
	.line	2956
	WINMAN
	xdef	~~k_render_text
	func
	.function	2956
~~k_render_text:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L665
	tcs
	phd
	tcd
pParent_0	set	4
clickableText_0	set	8
cx_0	set	12
cy_0	set	14
color_0	set	16
callback_0	set	18
	.block	2956
;	PCLICKDETECTED pcd = NULL;
;	int pos = 0;
;	int retCode = 0;
;
;	pos = k_draw_text_point(clickableText,cx,cy,color);
pcd_1	set	0
pos_1	set	4
retCode_1	set	6
	.sym	pcd,0,138,1,32,61
	.sym	pos,4,5,1,16
	.sym	retCode,6,5,1,16
	.sym	pParent,4,129,6,32
	.sym	clickableText,8,142,6,32
	.sym	cx,12,5,6,16
	.sym	cy,14,5,6,16
	.sym	color,16,14,6,8
	.sym	callback,18,641,6,32
	stz	<L666+pcd_1
	stz	<L666+pcd_1+2
	stz	<L666+pos_1
	stz	<L666+retCode_1
	.line	2961
	pei	<L665+color_0
	pei	<L665+cy_0
	pei	<L665+cx_0
	pei	<L665+clickableText_0+2
	pei	<L665+clickableText_0
	jsl	~~k_draw_text_point
	sta	<L666+pos_1
;
;	pcd = k_mem_allocate_heap(sizeof(CLICKDETECTED));
	.line	2963
	pea	#<$8
	jsl	~~k_mem_allocate_heap
	sta	<L666+pcd_1
	stx	<L666+pcd_1+2
;	if(pcd)
	.line	2964
;	{
	lda	<L666+pcd_1
	ora	<L666+pcd_1+2
	bne	L668
	brl	L10259
L668:
	.line	2965
;		pcd->window  = k_create_ui_window_class(cx,cy,FONTH,pos - cx,"text","text",NULL);
	.line	2966
	pea	#^$0
	pea	#<$0
	pea	#^L664+5
	pea	#<L664+5
	pea	#^L664
	pea	#<L664
	sec
	lda	<L666+pos_1
	sbc	<L665+cx_0
	pha
	jsl	~~k_font_getFontHeight
	pha
	pei	<L665+cy_0
	pei	<L665+cx_0
	jsl	~~k_create_ui_window_class
	sta	<R0
	stx	<R0+2
	lda	<R0
	sta	[<L666+pcd_1]
	lda	<R0+2
	ldy	#$2
	sta	[<L666+pcd_1],Y
;		pcd->handler = callback;
	.line	2967
	lda	<L665+callback_0
	ldy	#$4
	sta	[<L666+pcd_1],Y
	lda	<L665+callback_0+2
	ldy	#$6
	sta	[<L666+pcd_1],Y
;		//k_add_window_hit_node(pcd);
;
;		if(pParent)
	.line	2970
;			k_attach_mouse_detection_local(k_getWindowFromHandle(pParent)->pChildHitList,pcd->window ,k_update_hover_location);
	lda	<L665+pParent_0
	ora	<L665+pParent_0+2
	bne	L669
	brl	L10260
L669:
	.line	2971
	pea	#^~~k_update_hover_location
	pea	#<~~k_update_hover_location
	ldy	#$2
	lda	[<L666+pcd_1],Y
	pha
	lda	[<L666+pcd_1]
	pha
	pei	<L665+pParent_0+2
	pei	<L665+pParent_0
	jsl	~~k_getWindowFromHandle
	sta	<R0
	stx	<R0+2
	ldy	#$13e
	lda	[<R0],Y
	pha
	ldy	#$13c
	lda	[<R0],Y
	pha
	jsl	~~k_attach_mouse_detection_local
;		else
	brl	L10261
L10260:
;			k_attach_mouse_detection(pcd->window,k_update_hover_location);
	.line	2973
	pea	#^~~k_update_hover_location
	pea	#<~~k_update_hover_location
	ldy	#$2
	lda	[<L666+pcd_1],Y
	pha
	lda	[<L666+pcd_1]
	pha
	jsl	~~k_attach_mouse_detection
L10261:
;	}
	.line	2974
;
;	return retCode;
L10259:
	.line	2976
	lda	<L666+retCode_1
L670:
	tay
	lda	<L665+2
	sta	<L665+2+18
	lda	<L665+1
	sta	<L665+1+18
	pld
	tsc
	clc
	adc	#L665+18
	tcs
	tya
	rtl
;}
	.line	2977
	.endblock	2977
L665	equ	12
L666	equ	5
	ends
	efunc
	.endfunc	2977,5,12
	.line	2977
	data
L664:
	db	$74,$65,$78,$74,$00,$74,$65,$78,$74,$00
	ends
;
;BOOL _k_user_send_child_message(HWND hParentWindow,MSGTYPE type,LPVOID data,UINT size)
;{
	.line	2979
	.line	2980
	WINMAN
	xdef	~~_k_user_send_child_message
	func
	.function	2980
~~_k_user_send_child_message:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L672
	tcs
	phd
	tcd
hParentWindow_0	set	4
type_0	set	8
data_0	set	10
size_0	set	14
	.block	2980
;
;	EACHCHILD_MSG 	msgData;
;	PWINDOW pWin = k_getWindowFromHandle(hParentWindow);
;
;	if(pWin && pWin->pChildWindows)
msgData_1	set	0
pWin_1	set	8
	.sym	msgData,0,10,1,64,63
	.sym	pWin,8,138,1,32,27
	.sym	hParentWindow,4,129,6,32
	.sym	type,8,16,6,16
	.sym	data,10,129,6,32
	.sym	size,14,16,6,16
	pei	<L672+hParentWindow_0+2
	pei	<L672+hParentWindow_0
	jsl	~~k_getWindowFromHandle
	sta	<L673+pWin_1
	stx	<L673+pWin_1+2
	.line	2985
;	{
	lda	<L673+pWin_1
	ora	<L673+pWin_1+2
	bne	L675
	brl	L10262
L675:
	ldy	#$138
	lda	[<L673+pWin_1],Y
	ldy	#$13a
	ora	[<L673+pWin_1],Y
	bne	L676
	brl	L10262
L676:
	.line	2986
;		msgData.msgType 	= type;
	.line	2987
	lda	<L672+type_0
	sta	<L673+msgData_1
;		msgData.msgData 	= data;
	.line	2988
	lda	<L672+data_0
	sta	<L673+msgData_1+2
	lda	<L672+data_0+2
	sta	<L673+msgData_1+4
;		msgData.dataSize 	= size;
	.line	2989
	lda	<L672+size_0
	sta	<L673+msgData_1+6
;
;		k_nodelist_foreach_listdata(pWin->pChildWindows,
	.line	2991
;									(LPVOID)&msgData,
;									k_iterate_children);
	pea	#^~~k_iterate_children
	pea	#<~~k_iterate_children
	pea	#0
	clc
	tdc
	adc	#<L673+msgData_1
	pha
	ldy	#$13a
	lda	[<L673+pWin_1],Y
	pha
	ldy	#$138
	lda	[<L673+pWin_1],Y
	pha
	jsl	~~k_nodelist_foreach_listdata
;	}
	.line	2994
;
;	return TRUE;
L10262:
	.line	2996
	lda	#$1
L677:
	tay
	lda	<L672+2
	sta	<L672+2+12
	lda	<L672+1
	sta	<L672+1+12
	pld
	tsc
	clc
	adc	#L672+12
	tcs
	tya
	rtl
;}
	.line	2997
	.endblock	2997
L672	equ	12
L673	equ	1
	ends
	efunc
	.endfunc	2997,1,12
	.line	2997
;
;
;void k_iterate_children(LPVOID ctx,LPVOID data)
;{
	.line	3000
	.line	3001
	WINMAN
	xdef	~~k_iterate_children
	func
	.function	3001
~~k_iterate_children:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L678
	tcs
	phd
	tcd
ctx_0	set	4
data_0	set	8
	.block	3001
;	PWINDOW 		pWin   = ((PWINDOW)data);
;	PEACHCHILD_MSG 	pChildMsg = (PEACHCHILD_MSG)ctx;
;
;	if(pWin && pChildMsg)
pWin_1	set	0
pChildMsg_1	set	4
	.sym	pWin,0,138,1,32,27
	.sym	pChildMsg,4,138,1,32,63
	.sym	ctx,4,129,6,32
	.sym	data,8,129,6,32
	lda	<L678+data_0
	sta	<L679+pWin_1
	lda	<L678+data_0+2
	sta	<L679+pWin_1+2
	lda	<L678+ctx_0
	sta	<L679+pChildMsg_1
	lda	<L678+ctx_0+2
	sta	<L679+pChildMsg_1+2
	.line	3005
;	{
	lda	<L679+pWin_1
	ora	<L679+pWin_1+2
	bne	L681
	brl	L10263
L681:
	lda	<L679+pChildMsg_1
	ora	<L679+pChildMsg_1+2
	bne	L682
	brl	L10263
L682:
	.line	3006
;		if(!pWin->isClosed && !pWin->isClosing)
	.line	3007
;			k_send_window_message(k_getHandleFromWindow(pWin),pChildMsg->msgType,pChildMsg->msgData,pChildMsg->dataSize);
	ldy	#$15d
	lda	[<L679+pWin_1],Y
	and	#$ff
	beq	L683
	brl	L10264
L683:
	ldy	#$15e
	lda	[<L679+pWin_1],Y
	and	#$ff
	beq	L684
	brl	L10264
L684:
	.line	3008
	ldy	#$6
	lda	[<L679+pChildMsg_1],Y
	pha
	ldy	#$4
	lda	[<L679+pChildMsg_1],Y
	pha
	ldy	#$2
	lda	[<L679+pChildMsg_1],Y
	pha
	lda	[<L679+pChildMsg_1]
	pha
	pei	<L679+pWin_1+2
	pei	<L679+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_send_window_message
;	}
L10264:
	.line	3009
;}
L10263:
	.line	3010
L685:
	lda	<L678+2
	sta	<L678+2+8
	lda	<L678+1
	sta	<L678+1+8
	pld
	tsc
	clc
	adc	#L678+8
	tcs
	rtl
	.endblock	3010
L678	equ	12
L679	equ	5
	ends
	efunc
	.endfunc	3010,5,12
	.line	3010
;
;
;void debug_window_node(LPVOID ctx,LPVOID data)
;{
	.line	3013
	.line	3014
	WINMAN
	xdef	~~debug_window_node
	func
	.function	3014
~~debug_window_node:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L686
	tcs
	phd
	tcd
ctx_0	set	4
data_0	set	8
	.block	3014
;	PWINDOW pWin = (PWINDOW)data;
;	if(pWin)
pWin_1	set	0
	.sym	pWin,0,138,1,32,27
	.sym	ctx,4,129,6,32
	.sym	data,8,129,6,32
	lda	<L686+data_0
	sta	<L687+pWin_1
	lda	<L686+data_0+2
	sta	<L687+pWin_1+2
	.line	3016
;	{
	lda	<L687+pWin_1
	ora	<L687+pWin_1+2
	bne	L689
	brl	L10265
L689:
	.line	3017
;		pWin->win_title[31] = 0;
	.line	3018
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$f3
	sta	[<L687+pWin_1],Y
	rep	#$20
	longa	on
;		pWin->win_class[15] = 0;
	.line	3019
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$105
	sta	[<L687+pWin_1],Y
	rep	#$20
	longa	on
;		k_debug_strings("      WINDOW TITLE:",pWin->win_title);
	.line	3020
	clc
	lda	#$d4
	adc	<L687+pWin_1
	sta	<R0
	lda	#$0
	adc	<L687+pWin_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L671
	pea	#<L671
	jsl	~~k_debug_strings
;		k_debug_pointer("      WINDOW CLASS:",pWin->win_class);
	.line	3021
	clc
	lda	#$f6
	adc	<L687+pWin_1
	sta	<R0
	lda	#$0
	adc	<L687+pWin_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L671+20
	pea	#<L671+20
	jsl	~~k_debug_pointer
;		k_debug_long   ("      WINDOW   PID:",pWin->procid);
	.line	3022
	ldy	#$12a
	lda	[<L687+pWin_1],Y
	pha
	ldy	#$128
	lda	[<L687+pWin_1],Y
	pha
	pea	#^L671+40
	pea	#<L671+40
	jsl	~~k_debug_long
;		k_debug_pointer("      WINDOW   PTR:",pWin);
	.line	3023
	pei	<L687+pWin_1+2
	pei	<L687+pWin_1
	pea	#^L671+60
	pea	#<L671+60
	jsl	~~k_debug_pointer
;		k_debug_pointer("      WINDOW  PPTR:",pWin->pParentWindow);
	.line	3024
	ldy	#$132
	lda	[<L687+pWin_1],Y
	pha
	ldy	#$130
	lda	[<L687+pWin_1],Y
	pha
	pea	#^L671+80
	pea	#<L671+80
	jsl	~~k_debug_pointer
;		k_debug_pointer("      WINDOW  CPTR:",pWin->pChildWindows);
	.line	3025
	ldy	#$13a
	lda	[<L687+pWin_1],Y
	pha
	ldy	#$138
	lda	[<L687+pWin_1],Y
	pha
	pea	#^L671+100
	pea	#<L671+100
	jsl	~~k_debug_pointer
;		k_debug_pointer("      WINDOW  HPTR:",pWin->pChildHitList);
	.line	3026
	ldy	#$13e
	lda	[<L687+pWin_1],Y
	pha
	ldy	#$13c
	lda	[<L687+pWin_1],Y
	pha
	pea	#^L671+120
	pea	#<L671+120
	jsl	~~k_debug_pointer
;		k_debug_integer("      WINDOW     X:",pWin->win_x);
	.line	3027
	ldy	#$8
	lda	[<L687+pWin_1],Y
	pha
	pea	#^L671+140
	pea	#<L671+140
	jsl	~~k_debug_integer
;		k_debug_integer("      WINDOW     Y:",pWin->win_y);
	.line	3028
	ldy	#$a
	lda	[<L687+pWin_1],Y
	pha
	pea	#^L671+160
	pea	#<L671+160
	jsl	~~k_debug_integer
;
;		k_debug_integer("      WINDOW     Z:",((PCLICKABLE)pWin->clickable)->z);
	.line	3030
	ldy	#$d0
	lda	[<L687+pWin_1],Y
	sta	<R0
	ldy	#$d2
	lda	[<L687+pWin_1],Y
	sta	<R0+2
	ldy	#$8
	lda	[<R0],Y
	pha
	pea	#^L671+180
	pea	#<L671+180
	jsl	~~k_debug_integer
;	}
	.line	3031
;}
L10265:
	.line	3032
L690:
	lda	<L686+2
	sta	<L686+2+8
	lda	<L686+1
	sta	<L686+1+8
	pld
	tsc
	clc
	adc	#L686+8
	tcs
	rtl
	.endblock	3032
L686	equ	8
L687	equ	5
	ends
	efunc
	.endfunc	3032,5,8
	.line	3032
	data
L671:
	db	$20,$20,$20,$20,$20,$20,$57,$49,$4E,$44,$4F,$57,$20,$54,$49
	db	$54,$4C,$45,$3A,$00,$20,$20,$20,$20,$20,$20,$57,$49,$4E,$44
	db	$4F,$57,$20,$43,$4C,$41,$53,$53,$3A,$00,$20,$20,$20,$20,$20
	db	$20,$57,$49,$4E,$44,$4F,$57,$20,$20,$20,$50,$49,$44,$3A,$00
	db	$20,$20,$20,$20,$20,$20,$57,$49,$4E,$44,$4F,$57,$20,$20,$20
	db	$50,$54,$52,$3A,$00,$20,$20,$20,$20,$20,$20,$57,$49,$4E,$44
	db	$4F,$57,$20,$20,$50,$50,$54,$52,$3A,$00,$20,$20,$20,$20,$20
	db	$20,$57,$49,$4E,$44,$4F,$57,$20,$20,$43,$50,$54,$52,$3A,$00
	db	$20,$20,$20,$20,$20,$20,$57,$49,$4E,$44,$4F,$57,$20,$20,$48
	db	$50,$54,$52,$3A,$00,$20,$20,$20,$20,$20,$20,$57,$49,$4E,$44
	db	$4F,$57,$20,$20,$20,$20,$20,$58,$3A,$00,$20,$20,$20,$20,$20
	db	$20,$57,$49,$4E,$44,$4F,$57,$20,$20,$20,$20,$20,$59,$3A,$00
	db	$20,$20,$20,$20,$20,$20,$57,$49,$4E,$44,$4F,$57,$20,$20,$20
	db	$20,$20,$5A,$3A,$00
	ends
;
;void debug_clickable_node(LPVOID ctx,LPVOID data)
;{
	.line	3034
	.line	3035
	WINMAN
	xdef	~~debug_clickable_node
	func
	.function	3035
~~debug_clickable_node:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L692
	tcs
	phd
	tcd
ctx_0	set	4
data_0	set	8
	.block	3035
;	PCLICKDETECTED pclickable = ((PCLICKDETECTED)data);
;	if(pclickable)
pclickable_1	set	0
	.sym	pclickable,0,138,1,32,61
	.sym	ctx,4,129,6,32
	.sym	data,8,129,6,32
	lda	<L692+data_0
	sta	<L693+pclickable_1
	lda	<L692+data_0+2
	sta	<L693+pclickable_1+2
	.line	3037
;	{
	lda	<L693+pclickable_1
	ora	<L693+pclickable_1+2
	bne	L695
	brl	L10266
L695:
	.line	3038
;		PWINDOW pWin = pclickable->window;
;		if(pWin)
	.block	3040
pWin_2	set	4
	.sym	pWin,4,138,1,32,27
	lda	[<L693+pclickable_1]
	sta	<L693+pWin_2
	ldy	#$2
	lda	[<L693+pclickable_1],Y
	sta	<L693+pWin_2+2
	.line	3040
;		{
	lda	<L693+pWin_2
	ora	<L693+pWin_2+2
	bne	L697
	brl	L10267
L697:
	.line	3041
;			pWin->win_title[31] = 0;
	.line	3042
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$f3
	sta	[<L693+pWin_2],Y
	rep	#$20
	longa	on
;			pWin->win_class[15] = 0;
	.line	3043
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$105
	sta	[<L693+pWin_2],Y
	rep	#$20
	longa	on
;			k_debug_strings("      WINDOW TITLE:",pWin->win_title);
	.line	3044
	clc
	lda	#$d4
	adc	<L693+pWin_2
	sta	<R0
	lda	#$0
	adc	<L693+pWin_2+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L691
	pea	#<L691
	jsl	~~k_debug_strings
;			k_debug_pointer("      WINDOW CLASS:",pWin->win_class);
	.line	3045
	clc
	lda	#$f6
	adc	<L693+pWin_2
	sta	<R0
	lda	#$0
	adc	<L693+pWin_2+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L691+20
	pea	#<L691+20
	jsl	~~k_debug_pointer
;			k_debug_long   ("      WINDOW   PID:",pWin->procid);
	.line	3046
	ldy	#$12a
	lda	[<L693+pWin_2],Y
	pha
	ldy	#$128
	lda	[<L693+pWin_2],Y
	pha
	pea	#^L691+40
	pea	#<L691+40
	jsl	~~k_debug_long
;			k_debug_pointer("      WINDOW   PTR:",pWin);
	.line	3047
	pei	<L693+pWin_2+2
	pei	<L693+pWin_2
	pea	#^L691+60
	pea	#<L691+60
	jsl	~~k_debug_pointer
;			k_debug_pointer("      WINDOW  PPTR:",pWin->pParentWindow);
	.line	3048
	ldy	#$132
	lda	[<L693+pWin_2],Y
	pha
	ldy	#$130
	lda	[<L693+pWin_2],Y
	pha
	pea	#^L691+80
	pea	#<L691+80
	jsl	~~k_debug_pointer
;			k_debug_pointer("      WINDOW  CPTR:",pWin->pChildWindows);
	.line	3049
	ldy	#$13a
	lda	[<L693+pWin_2],Y
	pha
	ldy	#$138
	lda	[<L693+pWin_2],Y
	pha
	pea	#^L691+100
	pea	#<L691+100
	jsl	~~k_debug_pointer
;			k_debug_pointer("      WINDOW  HPTR:",pWin->pChildHitList);
	.line	3050
	ldy	#$13e
	lda	[<L693+pWin_2],Y
	pha
	ldy	#$13c
	lda	[<L693+pWin_2],Y
	pha
	pea	#^L691+120
	pea	#<L691+120
	jsl	~~k_debug_pointer
;			k_debug_integer("      WINDOW     X:",pWin->win_x);
	.line	3051
	ldy	#$8
	lda	[<L693+pWin_2],Y
	pha
	pea	#^L691+140
	pea	#<L691+140
	jsl	~~k_debug_integer
;			k_debug_integer("      WINDOW     Y:",pWin->win_y);
	.line	3052
	ldy	#$a
	lda	[<L693+pWin_2],Y
	pha
	pea	#^L691+160
	pea	#<L691+160
	jsl	~~k_debug_integer
;			k_debug_integer("      WINDOW     Z:",((PCLICKABLE)pWin->clickable)->z);
	.line	3053
	ldy	#$d0
	lda	[<L693+pWin_2],Y
	sta	<R0
	ldy	#$d2
	lda	[<L693+pWin_2],Y
	sta	<R0+2
	ldy	#$8
	lda	[<R0],Y
	pha
	pea	#^L691+180
	pea	#<L691+180
	jsl	~~k_debug_integer
;		}
	.line	3054
;	}
L10267:
	.endblock	3055
	.line	3055
;}
L10266:
	.line	3056
L698:
	lda	<L692+2
	sta	<L692+2+8
	lda	<L692+1
	sta	<L692+1+8
	pld
	tsc
	clc
	adc	#L692+8
	tcs
	rtl
	.endblock	3056
L692	equ	12
L693	equ	5
	ends
	efunc
	.endfunc	3056,5,12
	.line	3056
	data
L691:
	db	$20,$20,$20,$20,$20,$20,$57,$49,$4E,$44,$4F,$57,$20,$54,$49
	db	$54,$4C,$45,$3A,$00,$20,$20,$20,$20,$20,$20,$57,$49,$4E,$44
	db	$4F,$57,$20,$43,$4C,$41,$53,$53,$3A,$00,$20,$20,$20,$20,$20
	db	$20,$57,$49,$4E,$44,$4F,$57,$20,$20,$20,$50,$49,$44,$3A,$00
	db	$20,$20,$20,$20,$20,$20,$57,$49,$4E,$44,$4F,$57,$20,$20,$20
	db	$50,$54,$52,$3A,$00,$20,$20,$20,$20,$20,$20,$57,$49,$4E,$44
	db	$4F,$57,$20,$20,$50,$50,$54,$52,$3A,$00,$20,$20,$20,$20,$20
	db	$20,$57,$49,$4E,$44,$4F,$57,$20,$20,$43,$50,$54,$52,$3A,$00
	db	$20,$20,$20,$20,$20,$20,$57,$49,$4E,$44,$4F,$57,$20,$20,$48
	db	$50,$54,$52,$3A,$00,$20,$20,$20,$20,$20,$20,$57,$49,$4E,$44
	db	$4F,$57,$20,$20,$20,$20,$20,$58,$3A,$00,$20,$20,$20,$20,$20
	db	$20,$57,$49,$4E,$44,$4F,$57,$20,$20,$20,$20,$20,$59,$3A,$00
	db	$20,$20,$20,$20,$20,$20,$57,$49,$4E,$44,$4F,$57,$20,$20,$20
	db	$20,$20,$5A,$3A,$00
	ends
;
;BOOL DefWindowProc(PFXOSMESSAGE pMsg)
;{
	.line	3058
	.line	3059
	WINMAN
	xdef	~~DefWindowProc
	func
	.function	3059
~~DefWindowProc:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L700
	tcs
	phd
	tcd
pMsg_0	set	4
	.block	3059
;	PFXPROCESS p = NULL;
;	PWINDOW	   pWin = NULL;
;	PPOINT 	   ppoint = NULL;
;	RECT 	   clientRect;
;	INT 	   cx,cy,dx,dy,bx,by,gx,gy,index;
;
;	PDRAGDATA defPrcData = NULL;
;
;	BOOL bRet = TRUE;
;
;	if(pMsg)
p_1	set	0
pWin_1	set	4
ppoint_1	set	8
clientRect_1	set	12
cx_1	set	20
cy_1	set	22
dx_1	set	24
dy_1	set	26
bx_1	set	28
by_1	set	30
gx_1	set	32
gy_1	set	34
index_1	set	36
defPrcData_1	set	38
bRet_1	set	42
	.sym	p,0,138,1,32,17
	.sym	pWin,4,138,1,32,27
	.sym	ppoint,8,138,1,32,21
	.sym	clientRect,12,10,1,64,22
	.sym	cx,20,5,1,16
	.sym	cy,22,5,1,16
	.sym	dx,24,5,1,16
	.sym	dy,26,5,1,16
	.sym	bx,28,5,1,16
	.sym	by,30,5,1,16
	.sym	gx,32,5,1,16
	.sym	gy,34,5,1,16
	.sym	index,36,5,1,16
	.sym	defPrcData,38,138,1,32,26
	.sym	bRet,42,14,1,8
	.sym	pMsg,4,138,6,32,13
	stz	<L701+p_1
	stz	<L701+p_1+2
	stz	<L701+pWin_1
	stz	<L701+pWin_1+2
	stz	<L701+ppoint_1
	stz	<L701+ppoint_1+2
	stz	<L701+defPrcData_1
	stz	<L701+defPrcData_1+2
	sep	#$20
	longa	off
	lda	#$1
	sta	<L701+bRet_1
	rep	#$20
	longa	on
	.line	3070
;	{
	lda	<L700+pMsg_0
	ora	<L700+pMsg_0+2
	bne	L703
	brl	L10268
L703:
	.line	3071
;		pWin = k_getWindowFromHandle(pMsg->hwnd);
	.line	3072
	ldy	#$c
	lda	[<L700+pMsg_0],Y
	pha
	ldy	#$a
	lda	[<L700+pMsg_0],Y
	pha
	jsl	~~k_getWindowFromHandle
	sta	<L701+pWin_1
	stx	<L701+pWin_1+2
;
;		defPrcData = (PDRAGDATA)k_user_GetWindowData(pMsg->hwnd,CLIENTDATA_DEFAULT);
	.line	3074
	pea	#<$0
	ldy	#$c
	lda	[<L700+pMsg_0],Y
	pha
	ldy	#$a
	lda	[<L700+pMsg_0],Y
	pha
	jsl	~~k_user_GetWindowData
	sta	<L701+defPrcData_1
	stx	<L701+defPrcData_1+2
;		if(defPrcData == NULL)
	.line	3075
;		{
	lda	<L701+defPrcData_1
	ora	<L701+defPrcData_1+2
	beq	L704
	brl	L10269
L704:
	.line	3076
;			k_debug_pointer("DefWndProc::defPrcData[create]:pMsg->hwnd:",pMsg->hwnd);
	.line	3077
	ldy	#$c
	lda	[<L700+pMsg_0],Y
	pha
	ldy	#$a
	lda	[<L700+pMsg_0],Y
	pha
	pea	#^L699
	pea	#<L699
	jsl	~~k_debug_pointer
;			defPrcData = (PDRAGDATA)k_mem_allocate_heap(sizeof(DRAGDATA));
	.line	3078
	pea	#<$11
	jsl	~~k_mem_allocate_heap
	sta	<L701+defPrcData_1
	stx	<L701+defPrcData_1+2
;			k_user_SetWindowData(pMsg->hwnd,CLIENTDATA_DEFAULT,(LPVOID)defPrcData);
	.line	3079
	pei	<L701+defPrcData_1+2
	pei	<L701+defPrcData_1
	pea	#<$0
	ldy	#$c
	lda	[<L700+pMsg_0],Y
	pha
	ldy	#$a
	lda	[<L700+pMsg_0],Y
	pha
	jsl	~~k_user_SetWindowData
;			memset(defPrcData,0,sizeof(DRAGDATA));
	.line	3080
	pea	#<$11
	pea	#<$0
	pei	<L701+defPrcData_1+2
	pei	<L701+defPrcData_1
	jsl	~~memset
;		}
	.line	3081
;
;		//k_debug_pointer("DefWndProc::defPrcData:",defPrcData);
;
;		//k_debug_integer(" *** DefWndProc::Type:",pMsg->type);
;		if(pMsg!=NULL)
L10269:
	.line	3086
;		{
	lda	<L700+pMsg_0
	ora	<L700+pMsg_0+2
	bne	L705
	brl	L10270
L705:
	.line	3087
;			p = k_exec_get_current_process();
	.line	3088
	jsl	~~k_exec_get_current_process
	sta	<L701+p_1
	stx	<L701+p_1+2
;			switch(pMsg->type)
	.line	3089
	ldy	#$8
	lda	[<L700+pMsg_0],Y
	brl	L10271
;			{
	.line	3090
;
;			case FX_RESIZE_WINDOW_START:
	.line	3092
L10273:
;				k_debug_strings("DefWindowProc::FX_RESIZE_WINDOW_START:",pWin->win_title);
	.line	3093
	clc
	lda	#$d4
	adc	<L701+pWin_1
	sta	<R0
	lda	#$0
	adc	<L701+pWin_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L699+43
	pea	#<L699+43
	jsl	~~k_debug_strings
;				break;
	.line	3094
	brl	L10272
;			case FX_RESIZE_WINDOW_END:
	.line	3095
L10274:
;				k_debug_strings("DefWindowProc::FX_RESIZE_WINDOW_END:",pWin->win_title);
	.line	3096
	clc
	lda	#$d4
	adc	<L701+pWin_1
	sta	<R0
	lda	#$0
	adc	<L701+pWin_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L699+82
	pea	#<L699+82
	jsl	~~k_debug_strings
;				break;
	.line	3097
	brl	L10272
;			case FX_DRAG_WINDOW_START:
	.line	3098
L10275:
;				k_debug_strings("DefWindowProc::FX_DRAG_WINDOW_START:",pWin->win_title);
	.line	3099
	clc
	lda	#$d4
	adc	<L701+pWin_1
	sta	<R0
	lda	#$0
	adc	<L701+pWin_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L699+119
	pea	#<L699+119
	jsl	~~k_debug_strings
;				k_user_StartWindowForDrag(pMsg->hwnd,cx,cy);
	.line	3100
	pei	<L701+cy_1
	pei	<L701+cx_1
	ldy	#$c
	lda	[<L700+pMsg_0],Y
	pha
	ldy	#$a
	lda	[<L700+pMsg_0],Y
	pha
	jsl	~~k_user_StartWindowForDrag
;				break;
	.line	3101
	brl	L10272
;			case FX_DRAG_WINDOW_END:
	.line	3102
L10276:
;				k_debug_strings("DefWindowProc::FX_DRAG_WINDOW_END:",pWin->win_title);
	.line	3103
	clc
	lda	#$d4
	adc	<L701+pWin_1
	sta	<R0
	lda	#$0
	adc	<L701+pWin_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L699+156
	pea	#<L699+156
	jsl	~~k_debug_strings
;				k_user_EndWindowForDrag(pMsg->hwnd,defPrcData->area.x,defPrcData->area.y);
	.line	3104
	ldy	#$2
	lda	[<L701+defPrcData_1],Y
	pha
	lda	[<L701+defPrcData_1]
	pha
	ldy	#$c
	lda	[<L700+pMsg_0],Y
	pha
	ldy	#$a
	lda	[<L700+pMsg_0],Y
	pha
	jsl	~~k_user_EndWindowForDrag
;				break;
	.line	3105
	brl	L10272
;			case FX_WINDOW_CLOSE:
	.line	3106
L10277:
;				k_debug_strings("DefWindowProc::FX_WINDOW_CLOSE:",pWin->win_title);
	.line	3107
	clc
	lda	#$d4
	adc	<L701+pWin_1
	sta	<R0
	lda	#$0
	adc	<L701+pWin_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L699+191
	pea	#<L699+191
	jsl	~~k_debug_strings
;				bRet = k_user_DestroyWindow(pMsg->hwnd);
	.line	3108
	ldy	#$c
	lda	[<L700+pMsg_0],Y
	pha
	ldy	#$a
	lda	[<L700+pMsg_0],Y
	pha
	jsl	~~k_user_DestroyWindow
	sep	#$20
	longa	off
	sta	<L701+bRet_1
	rep	#$20
	longa	on
;				break;
	.line	3109
	brl	L10272
;			case FX_RESIZE_WINDOW:
	.line	3110
L10278:
;				k_debug_strings("DefWindowProc::FX_RESIZE_WINDOW:",pWin->win_title);
	.line	3111
	clc
	lda	#$d4
	adc	<L701+pWin_1
	sta	<R0
	lda	#$0
	adc	<L701+pWin_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L699+223
	pea	#<L699+223
	jsl	~~k_debug_strings
;				break;
	.line	3112
	brl	L10272
;			case FX_LBUTTON_DOWN:
	.line	3113
L10279:
;				k_debug_strings("DefWindowProc::FX_LBUTTON_DOWN:",pWin->win_title);
	.line	3114
	clc
	lda	#$d4
	adc	<L701+pWin_1
	sta	<R0
	lda	#$0
	adc	<L701+pWin_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L699+256
	pea	#<L699+256
	jsl	~~k_debug_strings
;				break;
	.line	3115
	brl	L10272
;			case FX_DRAW_NONCLIENT:
	.line	3116
L10280:
;
;				k_debug_string("DefWindowProc::FX_DRAW_NONCLIENT\r\n");
	.line	3118
	pea	#^L699+288
	pea	#<L699+288
	jsl	~~k_debug_string
;				/*
;				k_draw_nonclient_area((PRECT)&pWin->win_x,
;							          &clientRect,
;									  pWin->style,
;									  pWin->win_title,
;									  k_getUIMenuColor(),
;									  k_getUIBackgroundColor());*/
;				k_vdraw_ui_window(pWin,
	.line	3126
;								  pWin->style,
;								  pWin->win_x,
;								  pWin->win_y,
;								  pWin->win_height,
;								  pWin->win_width,
;								  pWin->win_title,
;								  k_getUIMenuColor(),
;								  k_getUIBackgroundColor());
	jsl	~~k_getUIBackgroundColor
	pha
	jsl	~~k_getUIMenuColor
	pha
	clc
	lda	#$d4
	adc	<L701+pWin_1
	sta	<R0
	lda	#$0
	adc	<L701+pWin_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$c
	lda	[<L701+pWin_1],Y
	pha
	ldy	#$e
	lda	[<L701+pWin_1],Y
	pha
	ldy	#$a
	lda	[<L701+pWin_1],Y
	pha
	ldy	#$8
	lda	[<L701+pWin_1],Y
	pha
	ldy	#$4
	lda	[<L701+pWin_1],Y
	pha
	ldy	#$2
	lda	[<L701+pWin_1],Y
	pha
	pei	<L701+pWin_1+2
	pei	<L701+pWin_1
	jsl	~~k_vdraw_ui_window
;				break;
	.line	3135
	brl	L10272
;			case FX_MOVE_WINDOW:
	.line	3136
L10281:
;				k_user_MoveWindow(pMsg->hwnd,((PPOINT)pMsg->pheap)->x,((PPOINT)pMsg->pheap)->y);
	.line	3137
	ldy	#$e
	lda	[<L700+pMsg_0],Y
	sta	<R0
	ldy	#$10
	lda	[<L700+pMsg_0],Y
	sta	<R0+2
	ldy	#$2
	lda	[<R0],Y
	pha
	ldy	#$e
	lda	[<L700+pMsg_0],Y
	sta	<R0
	ldy	#$10
	lda	[<L700+pMsg_0],Y
	sta	<R0+2
	lda	[<R0]
	pha
	ldy	#$c
	lda	[<L700+pMsg_0],Y
	pha
	ldy	#$a
	lda	[<L700+pMsg_0],Y
	pha
	jsl	~~k_user_MoveWindow
;
;
;				break;
	.line	3140
	brl	L10272
;			case FX_NC_MOUSE_MOVE:
	.line	3141
L10282:
;				k_debug_string("DefWindowProc::FX_NC_MOUSE_MOVE\r\n");
	.line	3142
	pea	#^L699+323
	pea	#<L699+323
	jsl	~~k_debug_string
;
;
;				cx = MSG_GETMOUSE_X(pMsg);
	.line	3145
	ldy	#$17
	lda	[<L700+pMsg_0],Y
	sta	<L701+cx_1
;				cy = MSG_GETMOUSE_Y(pMsg);
	.line	3146
	ldy	#$19
	lda	[<L700+pMsg_0],Y
	sta	<L701+cy_1
;				dx = (cx - pWin->win_x);
	.line	3147
	sec
	lda	<L701+cx_1
	ldy	#$8
	sbc	[<L701+pWin_1],Y
	sta	<L701+dx_1
;				dy = (cy - pWin->win_y);
	.line	3148
	sec
	lda	<L701+cy_1
	ldy	#$a
	sbc	[<L701+pWin_1],Y
	sta	<L701+dy_1
;
;				k_user_setMousePointer("ARROW");
	.line	3150
	pea	#^L699+357
	pea	#<L699+357
	jsl	~~k_user_setMousePointer
;				for(index = 0;index<8;index++)
	.line	3151
	stz	<L701+index_1
L10285:
;				{
	.line	3152
;					if(k_is_inside_rect(&pWin->nonclientGadgets[index].area,cx,cy))
	.line	3153
;					{
	pei	<L701+cy_1
	pei	<L701+cx_1
	ldy	#$0
	lda	<L701+index_1
	bpl	L706
	dey
L706:
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
	lda	<L701+pWin_1
	adc	<R1
	sta	<R0
	lda	<L701+pWin_1+2
	adc	<R1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~k_is_inside_rect
	tax
	bne	L707
	brl	L10286
L707:
	.line	3154
;						k_debug_integer("DefWindowProc::nonclientGadgets:rect:hit:",pWin->nonclientGadgets[index].msgType);
	.line	3155
	ldy	#$0
	lda	<L701+index_1
	bpl	L708
	dey
L708:
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
	adc	<L701+pWin_1
	sta	<R1
	lda	#$0
	adc	<L701+pWin_1+2
	sta	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<R2
	lda	<R1+2
	adc	<R0+2
	sta	<R2+2
	lda	[<R2]
	pha
	pea	#^L699+363
	pea	#<L699+363
	jsl	~~k_debug_integer
;
;						if(pWin->nonclientGadgets[index].msgType == FX_RESIZE_WINDOW)
	.line	3157
;							k_user_setMousePointer("RESIZE");
	ldy	#$0
	lda	<L701+index_1
	bpl	L709
	dey
L709:
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
	adc	<L701+pWin_1
	sta	<R1
	lda	#$0
	adc	<L701+pWin_1+2
	sta	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<R2
	lda	<R1+2
	adc	<R0+2
	sta	<R2+2
	lda	[<R2]
	cmp	#<$fb0f
	beq	L710
	brl	L10287
L710:
	.line	3158
	pea	#^L699+405
	pea	#<L699+405
	jsl	~~k_user_setMousePointer
;
;						break;
L10287:
	.line	3160
	brl	L10284
;					}
	.line	3161
;				}
L10286:
	.line	3162
L10283:
	inc	<L701+index_1
	sec
	lda	<L701+index_1
	sbc	#<$8
	bvs	L711
	eor	#$8000
L711:
	bmi	L712
	brl	L10285
L712:
L10284:
;				/*
;				if(pWin->style & FXWS_SYSMENU)
;				{
;					gx = k_user_getSystemMetric(SM_CXGADGET);
;					gy = k_user_getSystemMetric(SM_CYGADGET);
;					bx = k_user_getSystemMetric(SM_CXBORDER);
;					by = k_user_getSystemMetric(SM_CYBORDER);
;
;					if((dx > bx) && (dx < (bx + gx)))
;					{
;						if((dy > by) && (dy < (by + gy)))
;						{
;							k_debug_string("DefWindowProc::FX_NC_MOUSE_MOVE:CLOSEBOX\r\n");
;						}
;					}
;				}
;				*/
;
;
;				k_debug_integer("DefWindowProc::FX_NC_MOUSE_MOVE:cx:",cx);
	.line	3182
	pei	<L701+cx_1
	pea	#^L699+412
	pea	#<L699+412
	jsl	~~k_debug_integer
;				k_debug_integer("DefWindowProc::FX_NC_MOUSE_MOVE:cy:",cy);
	.line	3183
	pei	<L701+cy_1
	pea	#^L699+448
	pea	#<L699+448
	jsl	~~k_debug_integer
;				//k_debug_integer("DefWindowProc::FX_NC_MOUSE_MOVE:dx:",dx);
;				//k_debug_integer("DefWindowProc::FX_NC_MOUSE_MOVE:dy:",dy);
;
;				break;
	.line	3187
	brl	L10272
;			case FX_NC_LBUTTON_DOWN:
	.line	3188
L10288:
;				k_debug_pointer("DefWindowProc::FX_NC_LBUTTON_DOWN:",pMsg->hwnd);
	.line	3189
	ldy	#$c
	lda	[<L700+pMsg_0],Y
	pha
	ldy	#$a
	lda	[<L700+pMsg_0],Y
	pha
	pea	#^L699+484
	pea	#<L699+484
	jsl	~~k_debug_pointer
;
;				cx = MSG_GETMOUSE_X(pMsg);
	.line	3191
	ldy	#$17
	lda	[<L700+pMsg_0],Y
	sta	<L701+cx_1
;				cy = MSG_GETMOUSE_Y(pMsg);
	.line	3192
	ldy	#$19
	lda	[<L700+pMsg_0],Y
	sta	<L701+cy_1
;
;				for(index = 0;index<8;index++)
	.line	3194
	stz	<L701+index_1
L10291:
;				{
	.line	3195
;					//k_debug_rect("testWindowProc::nonclientGadgets:rect:",&pWin->nonclientGadgets[index].area);
;					if(k_is_inside_rect(&pWin->nonclientGadgets[index].area,cx,cy))
	.line	3197
;					{
	pei	<L701+cy_1
	pei	<L701+cx_1
	ldy	#$0
	lda	<L701+index_1
	bpl	L713
	dey
L713:
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
	lda	<L701+pWin_1
	adc	<R1
	sta	<R0
	lda	<L701+pWin_1+2
	adc	<R1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~k_is_inside_rect
	tax
	bne	L714
	brl	L10292
L714:
	.line	3198
;						k_debug_integer("DefWindowProc::nonclientGadgets:rect:hit:",pWin->nonclientGadgets[index].msgType);
	.line	3199
	ldy	#$0
	lda	<L701+index_1
	bpl	L715
	dey
L715:
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
	adc	<L701+pWin_1
	sta	<R1
	lda	#$0
	adc	<L701+pWin_1+2
	sta	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<R2
	lda	<R1+2
	adc	<R0+2
	sta	<R2+2
	lda	[<R2]
	pha
	pea	#^L699+519
	pea	#<L699+519
	jsl	~~k_debug_integer
;
;						switch(pWin->nonclientGadgets[index].msgType)
	.line	3201
	ldy	#$0
	lda	<L701+index_1
	bpl	L716
	dey
L716:
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
	adc	<L701+pWin_1
	sta	<R1
	lda	#$0
	adc	<L701+pWin_1+2
	sta	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<R2
	lda	<R1+2
	adc	<R0+2
	sta	<R2+2
	lda	[<R2]
	brl	L10293
;						{
	.line	3202
;						case FX_DRAG_WINDOW:
	.line	3203
L10295:
;							//k_user_StartWindowForDrag(pMsg->hwnd,cx,cy);
;							k_send_window_message(pMsg->hwnd,FX_DRAG_WINDOW_START,NULL,0);
	.line	3205
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$fb0d
	ldy	#$c
	lda	[<L700+pMsg_0],Y
	pha
	ldy	#$a
	lda	[<L700+pMsg_0],Y
	pha
	jsl	~~k_send_window_message
;							break;
	.line	3206
	brl	L10294
;						case FX_RESIZE_WINDOW:
	.line	3207
L10296:
;							k_debug_strings("DefWindowProc::FX_NC_LBUTTON_DOWN:","FX_RESIZE_WINDOW");
	.line	3208
	pea	#^L699+596
	pea	#<L699+596
	pea	#^L699+561
	pea	#<L699+561
	jsl	~~k_debug_strings
;							break;
	.line	3209
	brl	L10294
;						default:
	.line	3210
L10297:
;							k_send_window_message(pMsg->hwnd,pWin->nonclientGadgets[index].msgType,NULL,0);
	.line	3211
	pea	#<$0
	pea	#^$0
	pea	#<$0
	ldy	#$0
	lda	<L701+index_1
	bpl	L717
	dey
L717:
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
	adc	<L701+pWin_1
	sta	<R1
	lda	#$0
	adc	<L701+pWin_1+2
	sta	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<R2
	lda	<R1+2
	adc	<R0+2
	sta	<R2+2
	lda	[<R2]
	pha
	ldy	#$c
	lda	[<L700+pMsg_0],Y
	pha
	ldy	#$a
	lda	[<L700+pMsg_0],Y
	pha
	jsl	~~k_send_window_message
;							break;
	.line	3212
	brl	L10294
;						}
	.line	3213
L10293:
	xref	~~~swt
	jsl	~~~swt
	dw	2
	dw	64271
	dw	L10296-1
	dw	64272
	dw	L10295-1
	dw	L10297-1
L10294:
;						/*
;						if(pWin->nonclientGadgets[index].msgType == FX_DRAG_WINDOW)
;						{
;							k_debug_strings("DefWindowProc::nonclientGadgets:rect:hit:","FX_NC_LBUTTON_DOWN:FX_DRAG_WINDOW");
;							k_user_StartWindowForDrag(pMsg->hwnd,cx,cy);
;						}
;						else
;							k_send_window_message(pMsg->hwnd,pWin->nonclientGadgets[index].msgType,NULL,0);
;						*/
;						break;
	.line	3223
	brl	L10290
;					}
	.line	3224
;				}
L10292:
	.line	3225
L10289:
	inc	<L701+index_1
	sec
	lda	<L701+index_1
	sbc	#<$8
	bvs	L718
	eor	#$8000
L718:
	bmi	L719
	brl	L10291
L719:
L10290:
;
;				//k_event_lock_focus_ex(pMsg->hwnd,TRUE);
;
;				//k_user_StartWindowForDrag(pMsg->hwnd,cx,cy);
;
;				/*
;				if(defPrcData)
;				{
;					defPrcData->canDrag = FALSE;
;				}
;				cx = MSG_GETMOUSE_X(pMsg);
;				cy = MSG_GETMOUSE_Y(pMsg);
;				dx = (cx - pWin->win_x);
;				dy = (cy - pWin->win_y);
;
;
;				k_debug_integer("DefWindowProc::nonclientGadgets:rect:cx:",cx);
;				k_debug_integer("DefWindowProc::nonclientGadgets:rect:cy:",cy);
;
;
;				for(index = 0;index<8;index++)
;				{
;					//k_debug_rect("testWindowProc::nonclientGadgets:rect:",&pWin->nonclientGadgets[index].area);
;
;					if(k_is_inside_rect(&pWin->nonclientGadgets[index].area,cx,cy))
;					{
;						k_debug_integer("DefWindowProc::nonclientGadgets:rect:hit:",pWin->nonclientGadgets[index].msgType);
;						k_send_window_message(pMsg->hwnd,pWin->nonclientGadgets[index].msgType,NULL,0);
;						break;
;					}
;				}
;
;				// push window to background before frame drag
;				k_switch_window_page(pMsg->hwnd,BITMAP_BACK,BITMAP_FRONT,TRUE);
;
;				if(defPrcData)
;				{
;					defPrcData->area.x = cx;
;					defPrcData->area.y = cy;
;
;					defPrcData->xoffset = cx - pWin->win_x;
;					defPrcData->yoffset = cy - pWin->win_y;
;
;					k_debug_integer("DefWindowProc::FX_NC_LBUTTON_DRAG:rect:defPrcData->xoffset:",defPrcData->xoffset);
;					k_debug_integer("DefWindowProc::FX_NC_LBUTTON_DRAG:rect:defPrcData->yoffset:",defPrcData->yoffset);
;
;				}
;
;
;
;				k_draw_rect(pWin->win_x,
;							pWin->win_y,
;							pWin->win_x + pWin->win_width,
;							pWin->win_y + pWin->win_height,
;							DEFAULT_WIN_HIGHLIGHT_COLOR,
;							BITMAP_NOBRUSH,
;							BITMAP_FRONT);
;				*/
;
;				/*
;				if(pWin->style & FXWS_SYSMENU)
;				{
;					gx = k_user_getSystemMetric(SM_CXGADGET);
;					gy = k_user_getSystemMetric(SM_CYGADGET);
;					bx = k_user_getSystemMetric(SM_CXBORDER);
;					by = k_user_getSystemMetric(SM_CYBORDER);
;
;					if((dx > bx) && (dx < (bx + gx)))
;					{
;						if((dy > by) && (dy < (by + gy)))
;						{
;							k_debug_string("DefWindowProc::FX_NC_LBUTTON_DOWN:CLOSEBOX\r\n");
;						}
;					}
;				}
;
;				k_debug_integer("DefWindowProc::FX_NC_LBUTTON_DOWN:cx:",cx);
;				k_debug_integer("DefWindowProc::FX_NC_LBUTTON_DOWN:cy:",cy);
;				k_debug_integer("DefWindowProc::FX_NC_LBUTTON_DOWN:dx:",dx);
;				k_debug_integer("DefWindowProc::FX_NC_LBUTTON_DOWN:dy:",dy);
;				*/
;				break;
	.line	3307
	brl	L10272
;
;			case FX_NC_LBUTTON_DRAG:
	.line	3309
L10298:
;				k_debug_string("DefWindowProc::FX_NC_LBUTTON_DRAG\r\n");
	.line	3310
	pea	#^L699+613
	pea	#<L699+613
	jsl	~~k_debug_string
;
;				cx = MSG_GETMOUSE_X(pMsg);
	.line	3312
	ldy	#$17
	lda	[<L700+pMsg_0],Y
	sta	<L701+cx_1
;				cy = MSG_GETMOUSE_Y(pMsg);
	.line	3313
	ldy	#$19
	lda	[<L700+pMsg_0],Y
	sta	<L701+cy_1
;				dx = (cx - pWin->win_x);
	.line	3314
	sec
	lda	<L701+cx_1
	ldy	#$8
	sbc	[<L701+pWin_1],Y
	sta	<L701+dx_1
;				dy = (cy - pWin->win_y);
	.line	3315
	sec
	lda	<L701+cy_1
	ldy	#$a
	sbc	[<L701+pWin_1],Y
	sta	<L701+dy_1
;
;
;				if(defPrcData)
	.line	3318
;				{
	lda	<L701+defPrcData_1
	ora	<L701+defPrcData_1+2
	bne	L720
	brl	L10299
L720:
	.line	3319
;					defPrcData->isDrag = TRUE;
	.line	3320
	sep	#$20
	longa	off
	lda	#$1
	ldy	#$e
	sta	[<L701+defPrcData_1],Y
	rep	#$20
	longa	on
;
;					//k_debug_integer("DefWindowProc::FX_NC_LBUTTON_DRAG:rect:defPrcData->area.x:",defPrcData->area.x);
;					//k_debug_integer("DefWindowProc::FX_NC_LBUTTON_DRAG:rect:defPrcData->area.y:",defPrcData->area.y);
;
;					k_draw_rect(defPrcData->area.x,
	.line	3325
;							    defPrcData->area.y,
;								defPrcData->area.x + pWin->win_width - 1,
;								defPrcData->area.y + pWin->win_height - 1,
;								FILLCOLOR_TRANSPARENT,
;								BITMAP_NOBRUSH,
;								BITMAP_FRONT);
	pea	#<$0
	pea	#<$0
	pea	#<$0
	clc
	ldy	#$2
	lda	[<L701+defPrcData_1],Y
	ldy	#$e
	adc	[<L701+pWin_1],Y
	sta	<R0
	clc
	lda	#$ffff
	adc	<R0
	pha
	clc
	lda	[<L701+defPrcData_1]
	ldy	#$c
	adc	[<L701+pWin_1],Y
	sta	<R0
	clc
	lda	#$ffff
	adc	<R0
	pha
	ldy	#$2
	lda	[<L701+defPrcData_1],Y
	pha
	lda	[<L701+defPrcData_1]
	pha
	jsl	~~k_draw_rect
;
;					defPrcData->area.x = cx - defPrcData->xoffset + 1;
	.line	3333
	sec
	lda	<L701+cx_1
	ldy	#$8
	sbc	[<L701+defPrcData_1],Y
	sta	<R0
	lda	<R0
	ina
	sta	[<L701+defPrcData_1]
;					defPrcData->area.y = cy - defPrcData->yoffset + 1;
	.line	3334
	sec
	lda	<L701+cy_1
	ldy	#$a
	sbc	[<L701+defPrcData_1],Y
	sta	<R0
	lda	<R0
	ina
	ldy	#$2
	sta	[<L701+defPrcData_1],Y
;
;					k_draw_rect(defPrcData->area.x,
	.line	3336
;						        defPrcData->area.y,
;								defPrcData->area.x + pWin->win_width - 1,
;								defPrcData->area.y + pWin->win_height - 1,
;								DEFAULT_WIN_HIGHLIGHT_COLOR,
;								BITMAP_NOBRUSH,
;								BITMAP_FRONT);
	pea	#<$0
	pea	#<$0
	pea	#<$3
	clc
	ldy	#$2
	lda	[<L701+defPrcData_1],Y
	ldy	#$e
	adc	[<L701+pWin_1],Y
	sta	<R0
	clc
	lda	#$ffff
	adc	<R0
	pha
	clc
	lda	[<L701+defPrcData_1]
	ldy	#$c
	adc	[<L701+pWin_1],Y
	sta	<R0
	clc
	lda	#$ffff
	adc	<R0
	pha
	ldy	#$2
	lda	[<L701+defPrcData_1],Y
	pha
	lda	[<L701+defPrcData_1]
	pha
	jsl	~~k_draw_rect
;
;				}
	.line	3344
;
;				k_debug_integer("DefWindowProc::FX_NC_LBUTTON_DRAG:rect:defPrcData->area.x:",defPrcData->area.x);
L10299:
	.line	3346
	lda	[<L701+defPrcData_1]
	pha
	pea	#^L699+649
	pea	#<L699+649
	jsl	~~k_debug_integer
;				k_debug_integer("DefWindowProc::FX_NC_LBUTTON_DRAG:rect:defPrcData->area.y:",defPrcData->area.y);
	.line	3347
	ldy	#$2
	lda	[<L701+defPrcData_1],Y
	pha
	pea	#^L699+708
	pea	#<L699+708
	jsl	~~k_debug_integer
;
;				//k_debug_integer("DefWindowProc::FX_NC_LBUTTON_DRAG:rect:cx:",cx);
;				//k_debug_integer("DefWindowProc::FX_NC_LBUTTON_DRAG:rect:cy:",cy);
;
;				break;
	.line	3352
	brl	L10272
;			case FX_NC_LBUTTON_UP:
	.line	3353
L10300:
;				k_debug_pointer("DefWindowProc::FX_NC_LBUTTON_UP:",pMsg->hwnd);
	.line	3354
	ldy	#$c
	lda	[<L700+pMsg_0],Y
	pha
	ldy	#$a
	lda	[<L700+pMsg_0],Y
	pha
	pea	#^L699+767
	pea	#<L699+767
	jsl	~~k_debug_pointer
;
;				k_debug_integer("DefWindowProc::FX_NC_LBUTTON_UP:rect:defPrcData->area.x:",defPrcData->area.x);
	.line	3356
	lda	[<L701+defPrcData_1]
	pha
	pea	#^L699+800
	pea	#<L699+800
	jsl	~~k_debug_integer
;				k_debug_integer("DefWindowProc::FX_NC_LBUTTON_UP:rect:defPrcData->area.y:",defPrcData->area.y);
	.line	3357
	ldy	#$2
	lda	[<L701+defPrcData_1],Y
	pha
	pea	#^L699+857
	pea	#<L699+857
	jsl	~~k_debug_integer
;
;				/*
;				k_draw_rect(defPrcData->area.x,
;					    	defPrcData->area.y,
;							defPrcData->area.x + pWin->win_width,
;							defPrcData->area.y + pWin->win_height,
;						    FILLCOLOR_TRANSPARENT,
;							BITMAP_NOBRUSH,
;							BITMAP_FRONT);
;
;				k_user_MoveWindow_ex(pMsg->hwnd,defPrcData->area.x,defPrcData->area.y);
;
;				// pull window to foreground after frame drag
;				//k_switch_window_page(pMsg->hwnd,BITMAP_FRONT,BITMAP_BACK,FALSE);
;				*/
;
;				/*
;				if(k_is_inside_rect(&pWin->nonclientGadgets[index].area,cx,cy))
;				{
;					k_debug_integer("DefWindowProc::nonclientGadgets:rect:hit:",pWin->nonclientGadgets[index].msgType);
;					k_send_window_message(pMsg->hwnd,pWin->nonclientGadgets[index].msgType,NULL,0);
;
;					break;
;				}
;				*/
;
;				if(defPrcData->isDrag)
	.line	3384
;				{
	ldy	#$e
	lda	[<L701+defPrcData_1],Y
	and	#$ff
	bne	L721
	brl	L10301
L721:
	.line	3385
;					k_send_window_message(pMsg->hwnd,FX_DRAG_WINDOW_END,NULL,0);
	.line	3386
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$fb0e
	ldy	#$c
	lda	[<L700+pMsg_0],Y
	pha
	ldy	#$a
	lda	[<L700+pMsg_0],Y
	pha
	jsl	~~k_send_window_message
;				}
	.line	3387
;
;				switch(pWin->nonclientGadgets[index].msgType)
L10301:
	.line	3389
	ldy	#$0
	lda	<L701+index_1
	bpl	L722
	dey
L722:
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
	adc	<L701+pWin_1
	sta	<R1
	lda	#$0
	adc	<L701+pWin_1+2
	sta	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<R2
	lda	<R1+2
	adc	<R0+2
	sta	<R2+2
	lda	[<R2]
	brl	L10302
;				{
	.line	3390
;				default:
	.line	3391
L10304:
;					k_send_window_message(pMsg->hwnd,pWin->nonclientGadgets[index].msgType,NULL,0);
	.line	3392
	pea	#<$0
	pea	#^$0
	pea	#<$0
	ldy	#$0
	lda	<L701+index_1
	bpl	L723
	dey
L723:
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
	adc	<L701+pWin_1
	sta	<R1
	lda	#$0
	adc	<L701+pWin_1+2
	sta	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<R2
	lda	<R1+2
	adc	<R0+2
	sta	<R2+2
	lda	[<R2]
	pha
	ldy	#$c
	lda	[<L700+pMsg_0],Y
	pha
	ldy	#$a
	lda	[<L700+pMsg_0],Y
	pha
	jsl	~~k_send_window_message
;					break;
	.line	3393
	brl	L10303
;				}
	.line	3394
L10302:
	xref	~~~swt
	jsl	~~~swt
	dw	0
	dw	L10304-1
L10303:
;
;
;				//k_user_EndWindowForDrag(pMsg->hwnd,defPrcData->area.x,defPrcData->area.y);
;
;				//k_event_unlock_focus();
;
;				if(defPrcData)
	.line	3401
;					defPrcData->canDrag = FALSE;
	lda	<L701+defPrcData_1
	ora	<L701+defPrcData_1+2
	bne	L724
	brl	L10305
L724:
	.line	3402
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$f
	sta	[<L701+defPrcData_1],Y
	rep	#$20
	longa	on
;
;				break;
L10305:
	.line	3404
	brl	L10272
;			case FX_NC_RBUTTON_DOWN:
	.line	3405
L10306:
;				k_debug_string("DefWindowProc::FX_NC_RBUTTON_DOWN\r\n");
	.line	3406
	pea	#^L699+914
	pea	#<L699+914
	jsl	~~k_debug_string
;
;				cx = MSG_GETMOUSE_X(pMsg);
	.line	3408
	ldy	#$17
	lda	[<L700+pMsg_0],Y
	sta	<L701+cx_1
;				cy = MSG_GETMOUSE_Y(pMsg);
	.line	3409
	ldy	#$19
	lda	[<L700+pMsg_0],Y
	sta	<L701+cy_1
;
;				dx = (cx - pWin->win_x);
	.line	3411
	sec
	lda	<L701+cx_1
	ldy	#$8
	sbc	[<L701+pWin_1],Y
	sta	<L701+dx_1
;				dy = (cy - pWin->win_y);
	.line	3412
	sec
	lda	<L701+cy_1
	ldy	#$a
	sbc	[<L701+pWin_1],Y
	sta	<L701+dy_1
;
;
;				for(index = 0;index<8;index++)
	.line	3415
	stz	<L701+index_1
L10309:
;				{
	.line	3416
;					//k_debug_rect("testWindowProc::nonclientGadgets:rect:",&pWin->nonclientGadgets[index].area);
;
;					if(k_is_inside_rect(&pWin->nonclientGadgets[index].area,cx,cy))
	.line	3419
;					{
	pei	<L701+cy_1
	pei	<L701+cx_1
	ldy	#$0
	lda	<L701+index_1
	bpl	L725
	dey
L725:
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
	lda	<L701+pWin_1
	adc	<R1
	sta	<R0
	lda	<L701+pWin_1+2
	adc	<R1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~k_is_inside_rect
	tax
	bne	L726
	brl	L10310
L726:
	.line	3420
;						k_debug_integer("testWindowProc::nonclientGadgets:rect:hit:",pWin->nonclientGadgets[index].msgType);
	.line	3421
	ldy	#$0
	lda	<L701+index_1
	bpl	L727
	dey
L727:
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
	adc	<L701+pWin_1
	sta	<R1
	lda	#$0
	adc	<L701+pWin_1+2
	sta	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<R2
	lda	<R1+2
	adc	<R0+2
	sta	<R2+2
	lda	[<R2]
	pha
	pea	#^L699+950
	pea	#<L699+950
	jsl	~~k_debug_integer
;						break;
	.line	3422
	brl	L10308
;					}
	.line	3423
;				}
L10310:
	.line	3424
L10307:
	inc	<L701+index_1
	sec
	lda	<L701+index_1
	sbc	#<$8
	bvs	L728
	eor	#$8000
L728:
	bmi	L729
	brl	L10309
L729:
L10308:
;
;
;
;
;				/*
;				if(pWin->style & FXWS_SYSMENU)
;				{
;					gx = k_user_getSystemMetric(SM_CXGADGET);
;					gy = k_user_getSystemMetric(SM_CYGADGET);
;					bx = k_user_getSystemMetric(SM_CXBORDER);
;					by = k_user_getSystemMetric(SM_CYBORDER);
;
;					if((dx > bx) && (dx < (bx + gx)))
;					{
;						if((dy > by) && (dy < (by + gy)))
;						{
;							k_debug_string("DefWindowProc::FX_NC_RBUTTON_DOWN:CLOSEBOX\r\n");
;						}
;					}
;				}
;
;				k_debug_integer("DefWindowProc::FX_NC_RBUTTON_DOWN:cx:",cx);
;				k_debug_integer("DefWindowProc::FX_NC_RBUTTON_DOWN:cy:",cy);
;				k_debug_integer("DefWindowProc::FX_NC_RBUTTON_DOWN:dx:",dx);
;				k_debug_integer("DefWindowProc::FX_NC_RBUTTON_DOWN:dy:",dy);
;				*/
;				break;
	.line	3451
	brl	L10272
;			default:
	.line	3452
L10311:
;				break;
	.line	3453
	brl	L10272
;			}
	.line	3454
L10271:
	xref	~~~swt
	jsl	~~~swt
	dw	14
	dw	3844
	dw	L10279-1
	dw	36611
	dw	L10282-1
	dw	36612
	dw	L10288-1
	dw	36613
	dw	L10298-1
	dw	36614
	dw	L10300-1
	dw	36616
	dw	L10306-1
	dw	64257
	dw	L10280-1
	dw	64264
	dw	L10281-1
	dw	64267
	dw	L10273-1
	dw	64268
	dw	L10274-1
	dw	64269
	dw	L10275-1
	dw	64270
	dw	L10276-1
	dw	64271
	dw	L10278-1
	dw	64511
	dw	L10277-1
	dw	L10311-1
L10272:
;		}
	.line	3455
;	}
L10270:
	.line	3456
;	return bRet;
L10268:
	.line	3457
	lda	<L701+bRet_1
	and	#$ff
L730:
	tay
	lda	<L700+2
	sta	<L700+2+4
	lda	<L700+1
	sta	<L700+1+4
	pld
	tsc
	clc
	adc	#L700+4
	tcs
	tya
	rtl
;}
	.line	3458
	.endblock	3458
L700	equ	55
L701	equ	13
	ends
	efunc
	.endfunc	3458,13,55
	.line	3458
	data
L699:
	db	$44,$65,$66,$57,$6E,$64,$50,$72,$6F,$63,$3A,$3A,$64,$65,$66
	db	$50,$72,$63,$44,$61,$74,$61,$5B,$63,$72,$65,$61,$74,$65,$5D
	db	$3A,$70,$4D,$73,$67,$2D,$3E,$68,$77,$6E,$64,$3A,$00,$44,$65
	db	$66,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46,$58
	db	$5F,$52,$45,$53,$49,$5A,$45,$5F,$57,$49,$4E,$44,$4F,$57,$5F
	db	$53,$54,$41,$52,$54,$3A,$00,$44,$65,$66,$57,$69,$6E,$64,$6F
	db	$77,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$52,$45,$53,$49,$5A
	db	$45,$5F,$57,$49,$4E,$44,$4F,$57,$5F,$45,$4E,$44,$3A,$00,$44
	db	$65,$66,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46
	db	$58,$5F,$44,$52,$41,$47,$5F,$57,$49,$4E,$44,$4F,$57,$5F,$53
	db	$54,$41,$52,$54,$3A,$00,$44,$65,$66,$57,$69,$6E,$64,$6F,$77
	db	$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$44,$52,$41,$47,$5F,$57
	db	$49,$4E,$44,$4F,$57,$5F,$45,$4E,$44,$3A,$00,$44,$65,$66,$57
	db	$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$57
	db	$49,$4E,$44,$4F,$57,$5F,$43,$4C,$4F,$53,$45,$3A,$00,$44,$65
	db	$66,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46,$58
	db	$5F,$52,$45,$53,$49,$5A,$45,$5F,$57,$49,$4E,$44,$4F,$57,$3A
	db	$00,$44,$65,$66,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A
	db	$3A,$46,$58,$5F,$4C,$42,$55,$54,$54,$4F,$4E,$5F,$44,$4F,$57
	db	$4E,$3A,$00,$44,$65,$66,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F
	db	$63,$3A,$3A,$46,$58,$5F,$44,$52,$41,$57,$5F,$4E,$4F,$4E,$43
	db	$4C,$49,$45,$4E,$54,$0D,$0A,$00,$44,$65,$66,$57,$69,$6E,$64
	db	$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$4E,$43,$5F,$4D
	db	$4F,$55,$53,$45,$5F,$4D,$4F,$56,$45,$0D,$0A,$00,$41,$52,$52
	db	$4F,$57,$00,$44,$65,$66,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F
	db	$63,$3A,$3A,$6E,$6F,$6E,$63,$6C,$69,$65,$6E,$74,$47,$61,$64
	db	$67,$65,$74,$73,$3A,$72,$65,$63,$74,$3A,$68,$69,$74,$3A,$00
	db	$52,$45,$53,$49,$5A,$45,$00,$44,$65,$66,$57,$69,$6E,$64,$6F
	db	$77,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$4E,$43,$5F,$4D,$4F
	db	$55,$53,$45,$5F,$4D,$4F,$56,$45,$3A,$63,$78,$3A,$00,$44,$65
	db	$66,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46,$58
	db	$5F,$4E,$43,$5F,$4D,$4F,$55,$53,$45,$5F,$4D,$4F,$56,$45,$3A
	db	$63,$79,$3A,$00,$44,$65,$66,$57,$69,$6E,$64,$6F,$77,$50,$72
	db	$6F,$63,$3A,$3A,$46,$58,$5F,$4E,$43,$5F,$4C,$42,$55,$54,$54
	db	$4F,$4E,$5F,$44,$4F,$57,$4E,$3A,$00,$44,$65,$66,$57,$69,$6E
	db	$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$6E,$6F,$6E,$63,$6C,$69
	db	$65,$6E,$74,$47,$61,$64,$67,$65,$74,$73,$3A,$72,$65,$63,$74
	db	$3A,$68,$69,$74,$3A,$00,$44,$65,$66,$57,$69,$6E,$64,$6F,$77
	db	$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$4E,$43,$5F,$4C,$42,$55
	db	$54,$54,$4F,$4E,$5F,$44,$4F,$57,$4E,$3A,$00,$46,$58,$5F,$52
	db	$45,$53,$49,$5A,$45,$5F,$57,$49,$4E,$44,$4F,$57,$00,$44,$65
	db	$66,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46,$58
	db	$5F,$4E,$43,$5F,$4C,$42,$55,$54,$54,$4F,$4E,$5F,$44,$52,$41
	db	$47,$0D,$0A,$00,$44,$65,$66,$57,$69,$6E,$64,$6F,$77,$50,$72
	db	$6F,$63,$3A,$3A,$46,$58,$5F,$4E,$43,$5F,$4C,$42,$55,$54,$54
	db	$4F,$4E,$5F,$44,$52,$41,$47,$3A,$72,$65,$63,$74,$3A,$64,$65
	db	$66,$50,$72,$63,$44,$61,$74,$61,$2D,$3E,$61,$72,$65,$61,$2E
	db	$78,$3A,$00,$44,$65,$66,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F
	db	$63,$3A,$3A,$46,$58,$5F,$4E,$43,$5F,$4C,$42,$55,$54,$54,$4F
	db	$4E,$5F,$44,$52,$41,$47,$3A,$72,$65,$63,$74,$3A,$64,$65,$66
	db	$50,$72,$63,$44,$61,$74,$61,$2D,$3E,$61,$72,$65,$61,$2E,$79
	db	$3A,$00,$44,$65,$66,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63
	db	$3A,$3A,$46,$58,$5F,$4E,$43,$5F,$4C,$42,$55,$54,$54,$4F,$4E
	db	$5F,$55,$50,$3A,$00,$44,$65,$66,$57,$69,$6E,$64,$6F,$77,$50
	db	$72,$6F,$63,$3A,$3A,$46,$58,$5F,$4E,$43,$5F,$4C,$42,$55,$54
	db	$54,$4F,$4E,$5F,$55,$50,$3A,$72,$65,$63,$74,$3A,$64,$65,$66
	db	$50,$72,$63,$44,$61,$74,$61,$2D,$3E,$61,$72,$65,$61,$2E,$78
	db	$3A,$00,$44,$65,$66,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63
	db	$3A,$3A,$46,$58,$5F,$4E,$43,$5F,$4C,$42,$55,$54,$54,$4F,$4E
	db	$5F,$55,$50,$3A,$72,$65,$63,$74,$3A,$64,$65,$66,$50,$72,$63
	db	$44,$61,$74,$61,$2D,$3E,$61,$72,$65,$61,$2E,$79,$3A,$00,$44
	db	$65,$66,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46
	db	$58,$5F,$4E,$43,$5F,$52,$42,$55,$54,$54,$4F,$4E,$5F,$44,$4F
	db	$57,$4E,$0D,$0A,$00,$74,$65,$73,$74,$57,$69,$6E,$64,$6F,$77
	db	$50,$72,$6F,$63,$3A,$3A,$6E,$6F,$6E,$63,$6C,$69,$65,$6E,$74
	db	$47,$61,$64,$67,$65,$74,$73,$3A,$72,$65,$63,$74,$3A,$68,$69
	db	$74,$3A,$00
	ends
;
;void k_user_EndWindowForDrag(HWND hWnd,int cx,int cy)
;{
	.line	3460
	.line	3461
	WINMAN
	xdef	~~k_user_EndWindowForDrag
	func
	.function	3461
~~k_user_EndWindowForDrag:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L732
	tcs
	phd
	tcd
hWnd_0	set	4
cx_0	set	8
cy_0	set	10
	.block	3461
;	PWINDOW   pWin = NULL;
;	PDRAGDATA defPrcData = NULL;
;
;	if(hWnd)
pWin_1	set	0
defPrcData_1	set	4
	.sym	pWin,0,138,1,32,27
	.sym	defPrcData,4,138,1,32,26
	.sym	hWnd,4,129,6,32
	.sym	cx,8,5,6,16
	.sym	cy,10,5,6,16
	stz	<L733+pWin_1
	stz	<L733+pWin_1+2
	stz	<L733+defPrcData_1
	stz	<L733+defPrcData_1+2
	.line	3465
;	{
	lda	<L732+hWnd_0
	ora	<L732+hWnd_0+2
	bne	L735
	brl	L10312
L735:
	.line	3466
;		pWin = k_getWindowFromHandle(hWnd);
	.line	3467
	pei	<L732+hWnd_0+2
	pei	<L732+hWnd_0
	jsl	~~k_getWindowFromHandle
	sta	<L733+pWin_1
	stx	<L733+pWin_1+2
;
;		if(pWin)
	.line	3469
;		{
	lda	<L733+pWin_1
	ora	<L733+pWin_1+2
	bne	L736
	brl	L10313
L736:
	.line	3470
;			defPrcData = (PDRAGDATA)k_user_GetWindowData(hWnd,CLIENTDATA_DEFAULT);
	.line	3471
	pea	#<$0
	pei	<L732+hWnd_0+2
	pei	<L732+hWnd_0
	jsl	~~k_user_GetWindowData
	sta	<L733+defPrcData_1
	stx	<L733+defPrcData_1+2
;			if(defPrcData != NULL)
	.line	3472
;			{
	lda	<L733+defPrcData_1
	ora	<L733+defPrcData_1+2
	bne	L737
	brl	L10314
L737:
	.line	3473
;				k_draw_rect(defPrcData->area.x,
	.line	3474
;							defPrcData->area.y,
;							defPrcData->area.x + pWin->win_width  - 1,
;							defPrcData->area.y + pWin->win_height - 1,
;							FILLCOLOR_TRANSPARENT,
;							BITMAP_NOBRUSH,
;							BITMAP_FRONT);
	pea	#<$0
	pea	#<$0
	pea	#<$0
	clc
	ldy	#$2
	lda	[<L733+defPrcData_1],Y
	ldy	#$e
	adc	[<L733+pWin_1],Y
	sta	<R0
	clc
	lda	#$ffff
	adc	<R0
	pha
	clc
	lda	[<L733+defPrcData_1]
	ldy	#$c
	adc	[<L733+pWin_1],Y
	sta	<R0
	clc
	lda	#$ffff
	adc	<R0
	pha
	ldy	#$2
	lda	[<L733+defPrcData_1],Y
	pha
	lda	[<L733+defPrcData_1]
	pha
	jsl	~~k_draw_rect
;				if(defPrcData->isDrag)
	.line	3481
;				{
	ldy	#$e
	lda	[<L733+defPrcData_1],Y
	and	#$ff
	bne	L738
	brl	L10315
L738:
	.line	3482
;					k_user_MoveWindow_ex(hWnd,defPrcData->area.x,defPrcData->area.y);
	.line	3483
	ldy	#$2
	lda	[<L733+defPrcData_1],Y
	pha
	lda	[<L733+defPrcData_1]
	pha
	pei	<L732+hWnd_0+2
	pei	<L732+hWnd_0
	jsl	~~k_user_MoveWindow_ex
;				}
	.line	3484
;				k_switch_window_page(hWnd,BITMAP_FRONT,BITMAP_BACK,FALSE);
L10315:
	.line	3485
	pea	#<$0
	pea	#<$10
	pea	#<$0
	pei	<L732+hWnd_0+2
	pei	<L732+hWnd_0
	jsl	~~k_switch_window_page
;
;				memset(defPrcData,0,sizeof(DRAGDATA));
	.line	3487
	pea	#<$11
	pea	#<$0
	pei	<L733+defPrcData_1+2
	pei	<L733+defPrcData_1
	jsl	~~memset
;			}
	.line	3488
;		}
L10314:
	.line	3489
;		k_event_unlock_focus();
L10313:
	.line	3490
	jsl	~~k_event_unlock_focus
;	}
	.line	3491
;}
L10312:
	.line	3492
L739:
	lda	<L732+2
	sta	<L732+2+8
	lda	<L732+1
	sta	<L732+1+8
	pld
	tsc
	clc
	adc	#L732+8
	tcs
	rtl
	.endblock	3492
L732	equ	12
L733	equ	5
	ends
	efunc
	.endfunc	3492,5,12
	.line	3492
;
;void k_user_StartWindowForDrag(HWND hWnd,int cx,int cy)
;{
	.line	3494
	.line	3495
	WINMAN
	xdef	~~k_user_StartWindowForDrag
	func
	.function	3495
~~k_user_StartWindowForDrag:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L740
	tcs
	phd
	tcd
hWnd_0	set	4
cx_0	set	8
cy_0	set	10
	.block	3495
;	PWINDOW   pWin = NULL;
;	PDRAGDATA defPrcData = NULL;
;
;	if(hWnd)
pWin_1	set	0
defPrcData_1	set	4
	.sym	pWin,0,138,1,32,27
	.sym	defPrcData,4,138,1,32,26
	.sym	hWnd,4,129,6,32
	.sym	cx,8,5,6,16
	.sym	cy,10,5,6,16
	stz	<L741+pWin_1
	stz	<L741+pWin_1+2
	stz	<L741+defPrcData_1
	stz	<L741+defPrcData_1+2
	.line	3499
;	{
	lda	<L740+hWnd_0
	ora	<L740+hWnd_0+2
	bne	L743
	brl	L10316
L743:
	.line	3500
;		k_event_lock_focus_ex(hWnd,TRUE);
	.line	3501
	pea	#<$1
	pei	<L740+hWnd_0+2
	pei	<L740+hWnd_0
	jsl	~~k_event_lock_focus_ex
;
;		pWin = k_getWindowFromHandle(hWnd);
	.line	3503
	pei	<L740+hWnd_0+2
	pei	<L740+hWnd_0
	jsl	~~k_getWindowFromHandle
	sta	<L741+pWin_1
	stx	<L741+pWin_1+2
;
;		if(pWin)
	.line	3505
;		{
	lda	<L741+pWin_1
	ora	<L741+pWin_1+2
	bne	L744
	brl	L10317
L744:
	.line	3506
;			defPrcData = (PDRAGDATA)k_user_GetWindowData(hWnd,CLIENTDATA_DEFAULT);
	.line	3507
	pea	#<$0
	pei	<L740+hWnd_0+2
	pei	<L740+hWnd_0
	jsl	~~k_user_GetWindowData
	sta	<L741+defPrcData_1
	stx	<L741+defPrcData_1+2
;			if(defPrcData != NULL)
	.line	3508
;			{
	lda	<L741+defPrcData_1
	ora	<L741+defPrcData_1+2
	bne	L745
	brl	L10318
L745:
	.line	3509
;				k_switch_window_page(hWnd,BITMAP_BACK,BITMAP_FRONT,TRUE);
	.line	3510
	pea	#<$1
	pea	#<$0
	pea	#<$10
	pei	<L740+hWnd_0+2
	pei	<L740+hWnd_0
	jsl	~~k_switch_window_page
;
;				k_debug_integer("k_user_StartWindowForDrag:cx:",cx);
	.line	3512
	pei	<L740+cx_0
	pea	#^L731
	pea	#<L731
	jsl	~~k_debug_integer
;				k_debug_integer("k_user_StartWindowForDrag:cy:",cy);
	.line	3513
	pei	<L740+cy_0
	pea	#^L731+30
	pea	#<L731+30
	jsl	~~k_debug_integer
;
;
;				defPrcData->area.x = cx;
	.line	3516
	lda	<L740+cx_0
	sta	[<L741+defPrcData_1]
;				defPrcData->area.y = cy;
	.line	3517
	lda	<L740+cy_0
	ldy	#$2
	sta	[<L741+defPrcData_1],Y
;
;				defPrcData->xoffset = cx - pWin->win_x;
	.line	3519
	sec
	lda	<L740+cx_0
	ldy	#$8
	sbc	[<L741+pWin_1],Y
	ldy	#$8
	sta	[<L741+defPrcData_1],Y
;				defPrcData->yoffset = cy - pWin->win_y;
	.line	3520
	sec
	lda	<L740+cy_0
	ldy	#$a
	sbc	[<L741+pWin_1],Y
	ldy	#$a
	sta	[<L741+defPrcData_1],Y
;
;				k_debug_integer("k_user_StartWindowForDrag:defPrcData->xoffset:",defPrcData->xoffset);
	.line	3522
	ldy	#$8
	lda	[<L741+defPrcData_1],Y
	pha
	pea	#^L731+60
	pea	#<L731+60
	jsl	~~k_debug_integer
;				k_debug_integer("k_user_StartWindowForDrag:defPrcData->yoffset:",defPrcData->yoffset);
	.line	3523
	ldy	#$a
	lda	[<L741+defPrcData_1],Y
	pha
	pea	#^L731+107
	pea	#<L731+107
	jsl	~~k_debug_integer
;
;
;				k_draw_rect(pWin->win_x,
	.line	3526
;							pWin->win_y,
;							pWin->win_x + pWin->win_width  - 1,
;							pWin->win_y + pWin->win_height - 1,
;							DEFAULT_WIN_HIGHLIGHT_COLOR,
;							BITMAP_NOBRUSH,
;							BITMAP_FRONT);
	pea	#<$0
	pea	#<$0
	pea	#<$3
	clc
	ldy	#$a
	lda	[<L741+pWin_1],Y
	ldy	#$e
	adc	[<L741+pWin_1],Y
	sta	<R0
	clc
	lda	#$ffff
	adc	<R0
	pha
	clc
	ldy	#$8
	lda	[<L741+pWin_1],Y
	ldy	#$c
	adc	[<L741+pWin_1],Y
	sta	<R0
	clc
	lda	#$ffff
	adc	<R0
	pha
	ldy	#$a
	lda	[<L741+pWin_1],Y
	pha
	ldy	#$8
	lda	[<L741+pWin_1],Y
	pha
	jsl	~~k_draw_rect
;
;
;				defPrcData->isDrag = TRUE;
	.line	3535
	sep	#$20
	longa	off
	lda	#$1
	ldy	#$e
	sta	[<L741+defPrcData_1],Y
	rep	#$20
	longa	on
;			}
	.line	3536
;		}
L10318:
	.line	3537
;	}
L10317:
	.line	3538
;
;}
L10316:
	.line	3540
L746:
	lda	<L740+2
	sta	<L740+2+8
	lda	<L740+1
	sta	<L740+1+8
	pld
	tsc
	clc
	adc	#L740+8
	tcs
	rtl
	.endblock	3540
L740	equ	12
L741	equ	5
	ends
	efunc
	.endfunc	3540,5,12
	.line	3540
	data
L731:
	db	$6B,$5F,$75,$73,$65,$72,$5F,$53,$74,$61,$72,$74,$57,$69,$6E
	db	$64,$6F,$77,$46,$6F,$72,$44,$72,$61,$67,$3A,$63,$78,$3A,$00
	db	$6B,$5F,$75,$73,$65,$72,$5F,$53,$74,$61,$72,$74,$57,$69,$6E
	db	$64,$6F,$77,$46,$6F,$72,$44,$72,$61,$67,$3A,$63,$79,$3A,$00
	db	$6B,$5F,$75,$73,$65,$72,$5F,$53,$74,$61,$72,$74,$57,$69,$6E
	db	$64,$6F,$77,$46,$6F,$72,$44,$72,$61,$67,$3A,$64,$65,$66,$50
	db	$72,$63,$44,$61,$74,$61,$2D,$3E,$78,$6F,$66,$66,$73,$65,$74
	db	$3A,$00,$6B,$5F,$75,$73,$65,$72,$5F,$53,$74,$61,$72,$74,$57
	db	$69,$6E,$64,$6F,$77,$46,$6F,$72,$44,$72,$61,$67,$3A,$64,$65
	db	$66,$50,$72,$63,$44,$61,$74,$61,$2D,$3E,$79,$6F,$66,$66,$73
	db	$65,$74,$3A,$00
	ends
;
;BOOL DlgWindowProc(PFXOSMESSAGE pMsg)
;{
	.line	3542
	.line	3543
	WINMAN
	xdef	~~DlgWindowProc
	func
	.function	3543
~~DlgWindowProc:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L748
	tcs
	phd
	tcd
pMsg_0	set	4
	.block	3543
;	PFXPROCESS p = NULL;
;	PWINDOW	   pWin = NULL;
;
;
;	if(pMsg)
p_1	set	0
pWin_1	set	4
	.sym	p,0,138,1,32,17
	.sym	pWin,4,138,1,32,27
	.sym	pMsg,4,138,6,32,13
	stz	<L749+p_1
	stz	<L749+p_1+2
	stz	<L749+pWin_1
	stz	<L749+pWin_1+2
	.line	3548
;	{
	lda	<L748+pMsg_0
	ora	<L748+pMsg_0+2
	bne	L751
	brl	L10319
L751:
	.line	3549
;		pWin = k_getWindowFromHandle(pMsg->hwnd);
	.line	3550
	ldy	#$c
	lda	[<L748+pMsg_0],Y
	pha
	ldy	#$a
	lda	[<L748+pMsg_0],Y
	pha
	jsl	~~k_getWindowFromHandle
	sta	<L749+pWin_1
	stx	<L749+pWin_1+2
;		if(pMsg!=NULL)
	.line	3551
;		{
	lda	<L748+pMsg_0
	ora	<L748+pMsg_0+2
	bne	L752
	brl	L10320
L752:
	.line	3552
;			p = k_exec_get_current_process();
	.line	3553
	jsl	~~k_exec_get_current_process
	sta	<L749+p_1
	stx	<L749+p_1+2
;			switch(pMsg->type)
	.line	3554
	ldy	#$8
	lda	[<L748+pMsg_0],Y
	brl	L10321
;			{
	.line	3555
;			case FX_DRAW_NONCLIENT:
	.line	3556
L10323:
;				k_vdraw_ui_window(pWin,
	.line	3557
;						          pWin->style,
;								  pWin->win_x,
;								  pWin->win_y,
;								  pWin->win_height,
;								  pWin->win_width,
;								  pWin->win_title,
;								  15,
;								  15);
	pea	#<$f
	pea	#<$f
	clc
	lda	#$d4
	adc	<L749+pWin_1
	sta	<R0
	lda	#$0
	adc	<L749+pWin_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$c
	lda	[<L749+pWin_1],Y
	pha
	ldy	#$e
	lda	[<L749+pWin_1],Y
	pha
	ldy	#$a
	lda	[<L749+pWin_1],Y
	pha
	ldy	#$8
	lda	[<L749+pWin_1],Y
	pha
	ldy	#$4
	lda	[<L749+pWin_1],Y
	pha
	ldy	#$2
	lda	[<L749+pWin_1],Y
	pha
	pei	<L749+pWin_1+2
	pei	<L749+pWin_1
	jsl	~~k_vdraw_ui_window
;				break;
	.line	3566
	brl	L10322
;
;			case FX_MOUSE_ENTER:
	.line	3568
L10324:
;				k_debug_strings("DlgWindowProc::FX_MOUSE_ENTER",pWin->win_title);
	.line	3569
	clc
	lda	#$d4
	adc	<L749+pWin_1
	sta	<R0
	lda	#$0
	adc	<L749+pWin_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L747
	pea	#<L747
	jsl	~~k_debug_strings
;				break;
	.line	3570
	brl	L10322
;			case FX_MOUSE_EXIT:
	.line	3571
L10325:
;				k_debug_strings("DlgWindowProc::FX_MOUSE_EXIT",pWin->win_title);
	.line	3572
	clc
	lda	#$d4
	adc	<L749+pWin_1
	sta	<R0
	lda	#$0
	adc	<L749+pWin_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L747+30
	pea	#<L747+30
	jsl	~~k_debug_strings
;				break;
	.line	3573
	brl	L10322
;			default:
	.line	3574
L10326:
;				break;
	.line	3575
	brl	L10322
;			}
	.line	3576
L10321:
	xref	~~~swt
	jsl	~~~swt
	dw	3
	dw	3841
	dw	L10324-1
	dw	3842
	dw	L10325-1
	dw	64257
	dw	L10323-1
	dw	L10326-1
L10322:
;		}
	.line	3577
;	}
L10320:
	.line	3578
;	return TRUE;
L10319:
	.line	3579
	lda	#$1
L753:
	tay
	lda	<L748+2
	sta	<L748+2+4
	lda	<L748+1
	sta	<L748+1+4
	pld
	tsc
	clc
	adc	#L748+4
	tcs
	tya
	rtl
;}
	.line	3580
	.endblock	3580
L748	equ	12
L749	equ	5
	ends
	efunc
	.endfunc	3580,5,12
	.line	3580
	data
L747:
	db	$44,$6C,$67,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A
	db	$46,$58,$5F,$4D,$4F,$55,$53,$45,$5F,$45,$4E,$54,$45,$52,$00
	db	$44,$6C,$67,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A
	db	$46,$58,$5F,$4D,$4F,$55,$53,$45,$5F,$45,$58,$49,$54,$00
	ends
;
;BOOL DlgAboutWindowProc(PFXOSMESSAGE pMsg)
;{
	.line	3582
	.line	3583
	WINMAN
	xdef	~~DlgAboutWindowProc
	func
	.function	3583
~~DlgAboutWindowProc:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L755
	tcs
	phd
	tcd
pMsg_0	set	4
	.block	3583
;	PFXPROCESS p = NULL;
;	PWINDOW	   pWin = NULL;
;	PWINDOW	   pButton = NULL;
;	RECT	   rect;
;	PPOINT 	   ppoint = NULL;
;	int 	   row = 0;
;
;	if(pMsg)
p_1	set	0
pWin_1	set	4
pButton_1	set	8
rect_1	set	12
ppoint_1	set	20
row_1	set	24
	.sym	p,0,138,1,32,17
	.sym	pWin,4,138,1,32,27
	.sym	pButton,8,138,1,32,27
	.sym	rect,12,10,1,64,22
	.sym	ppoint,20,138,1,32,21
	.sym	row,24,5,1,16
	.sym	pMsg,4,138,6,32,13
	stz	<L756+p_1
	stz	<L756+p_1+2
	stz	<L756+pWin_1
	stz	<L756+pWin_1+2
	stz	<L756+pButton_1
	stz	<L756+pButton_1+2
	stz	<L756+ppoint_1
	stz	<L756+ppoint_1+2
	stz	<L756+row_1
	.line	3591
;	{
	lda	<L755+pMsg_0
	ora	<L755+pMsg_0+2
	bne	L758
	brl	L10327
L758:
	.line	3592
;		pWin = k_getWindowFromHandle(pMsg->hwnd);
	.line	3593
	ldy	#$c
	lda	[<L755+pMsg_0],Y
	pha
	ldy	#$a
	lda	[<L755+pMsg_0],Y
	pha
	jsl	~~k_getWindowFromHandle
	sta	<L756+pWin_1
	stx	<L756+pWin_1+2
;		if(pMsg!=NULL)
	.line	3594
;		{
	lda	<L755+pMsg_0
	ora	<L755+pMsg_0+2
	bne	L759
	brl	L10328
L759:
	.line	3595
;			k_debug_integer(" *** DlgAboutWindowProc:WndProc::Type:",pMsg->type);
	.line	3596
	ldy	#$8
	lda	[<L755+pMsg_0],Y
	pha
	pea	#^L754
	pea	#<L754
	jsl	~~k_debug_integer
;
;			p = k_exec_get_current_process();
	.line	3598
	jsl	~~k_exec_get_current_process
	sta	<L756+p_1
	stx	<L756+p_1+2
;			switch(pMsg->type)
	.line	3599
	ldy	#$8
	lda	[<L755+pMsg_0],Y
	brl	L10329
;			{
	.line	3600
;			case FX_CREATE_WINDOW:
	.line	3601
L10331:
;				//k_user_CreateButton(pMsg->hwnd,"Ok",0x8801,0,0,-1,-1);
;				pButton = k_user_CreateButton(pMsg->hwnd,"Ok",0x8801,140,130,-1,-1);
	.line	3603
	pea	#<$ffffffff
	pea	#<$ffffffff
	pea	#<$82
	pea	#<$8c
	pea	#<$8801
	pea	#^L754+39
	pea	#<L754+39
	ldy	#$c
	lda	[<L755+pMsg_0],Y
	pha
	ldy	#$a
	lda	[<L755+pMsg_0],Y
	pha
	jsl	~~k_user_CreateButton
	sta	<L756+pButton_1
	stx	<L756+pButton_1+2
;				//pButton = k_user_CreateButton(k_user_getDesktopWindow(),"Ok",0x8801,10,10,-1,-1);
;				k_user_CenterBottomWindow(pButton);
	.line	3605
	pei	<L756+pButton_1+2
	pei	<L756+pButton_1
	jsl	~~k_user_CenterBottomWindow
;				break;
	.line	3606
	brl	L10330
;			case FX_DRAW_NONCLIENT:
	.line	3607
L10332:
;				/*
;				k_scratch_save_bitblt(pWin->win_x,
;									  pWin->win_y,
;									  pWin->win_width + 1,
;									  pWin->win_height + 1, 0, 0);
;				*/
;
;				k_vdraw_ui_window(pWin,pWin->style,
	.line	3615
;								  pWin->win_x,
;								  pWin->win_y,
;								  pWin->win_height,
;								  pWin->win_width,
;								  pWin->win_title,
;								  15,
;								  15);
	pea	#<$f
	pea	#<$f
	clc
	lda	#$d4
	adc	<L756+pWin_1
	sta	<R0
	lda	#$0
	adc	<L756+pWin_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$c
	lda	[<L756+pWin_1],Y
	pha
	ldy	#$e
	lda	[<L756+pWin_1],Y
	pha
	ldy	#$a
	lda	[<L756+pWin_1],Y
	pha
	ldy	#$8
	lda	[<L756+pWin_1],Y
	pha
	ldy	#$4
	lda	[<L756+pWin_1],Y
	pha
	ldy	#$2
	lda	[<L756+pWin_1],Y
	pha
	pei	<L756+pWin_1+2
	pei	<L756+pWin_1
	jsl	~~k_vdraw_ui_window
;
;				//k_draw_text_point(pWin->win_title);
;
;				//k_draw_text_point_with_font("About FX/OS...",Bm437ATI8x16,100,100,0);
;				//k_draw_text_point_with_font("About FX/OS...",Bm437ATI6x8,100,120,0);
;				//k_draw_text_point_with_font("About FX/OS...",Bm437ToshibaLCD8x8,100,130,0);
;				//k_draw_text_point_with_font("About FX/OS...",(LPCSTR)k_user_getFontClass("TINYTYPE8x8"),100,130,0);
;				//k_draw_text_point_with_font("About FX/OS...",(LPCSTR)k_user_getFontClass("FANTASY8x8"),100,140,0);
;				//k_draw_text_point_with_font("About FX/OS...",(LPCSTR)k_user_getFontClass("Italics8x8"),100,150,0);
;
;				//k_draw_text_point_with_font("\x80\x81",(LPCSTR)k_user_getFontClass("AMIGO8x8"),100,160,0);
;
;
;				//k_draw_text_point_with_font("\x80\x81\x82\x83\x84\x85\x86\x87\x88\x89\x8A\x8B\x8C\x8D\x8E\x8F",(LPCSTR)k_user_getFontClass("FXOS8x8"),50,100,15);
;				//k_draw_text_point_with_font("\x90\x91\x92\x93\x94\x95\x96\x97\x98\x99\x9A\x9B\x9C\x9D\x9E\x9F",(LPCSTR)k_user_getFontClass("FXOS8x8"),50,110,15);
;				//k_draw_text_point_with_font("\xA0\xA1\xA2\xA3\xA4\xA5\xA6\xA7\xA8\xA9\xAA\xAB\xAC\xAD\xAE\xAF",(LPCSTR)k_user_getFontClass("FXOS8x8"),50,120,15);
;
;
;				//k_draw_text_point("About FX/OS...",100,180,0);
;
;				break;
	.line	3643
	brl	L10330
;			case FX_DRAW_WINDOW:
	.line	3644
L10333:
;				k_debug_strings("DlgAboutWindowProc::FX_DRAW_WINDOW","");
	.line	3645
	pea	#^L754+77
	pea	#<L754+77
	pea	#^L754+42
	pea	#<L754+42
	jsl	~~k_debug_strings
;
;				row = 10;
	.line	3647
	lda	#$a
	sta	<L756+row_1
;				rect.x = 10;
	.line	3648
	lda	#$a
	sta	<L756+rect_1
;				rect.y = row;
	.line	3649
	lda	<L756+row_1
	sta	<L756+rect_1+2
;				k_user_DrawWindowTextToPoint(k_getHandleFromWindow(pWin),"FX/OS Foenix Workspace",0,&rect);
	.line	3650
	pea	#0
	clc
	tdc
	adc	#<L756+rect_1
	pha
	pea	#<$0
	pea	#^L754+78
	pea	#<L754+78
	pei	<L756+pWin_1+2
	pei	<L756+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_user_DrawWindowTextToPoint
;				row+=30;
	.line	3651
	clc
	lda	#$1e
	adc	<L756+row_1
	sta	<L756+row_1
;
;				rect.x = 10;
	.line	3653
	lda	#$a
	sta	<L756+rect_1
;				rect.y = row;
	.line	3654
	lda	<L756+row_1
	sta	<L756+rect_1+2
;				k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),
	.line	3655
;													 "Prerelease 1.0.0 Beta",
;						                             0,&rect,(LPCSTR)k_user_getFontClass("TINYTYPE8x8"));
	pea	#^L754+123
	pea	#<L754+123
	jsl	~~k_user_getFontClass
	sta	<R0
	stx	<R0+2
	phx
	pha
	pea	#0
	clc
	tdc
	adc	#<L756+rect_1
	pha
	pea	#<$0
	pea	#^L754+101
	pea	#<L754+101
	pei	<L756+pWin_1+2
	pei	<L756+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R1
	stx	<R1+2
	phx
	pha
	jsl	~~k_user_DrawWindowTextToPointWithFont
;				row+=10;
	.line	3658
	clc
	lda	#$a
	adc	<L756+row_1
	sta	<L756+row_1
;				rect.x = 10;
	.line	3659
	lda	#$a
	sta	<L756+rect_1
;				rect.y = row;
	.line	3660
	lda	<L756+row_1
	sta	<L756+rect_1+2
;				k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),
	.line	3661
;													 "October 1, 2019",
;						                             0,&rect,(LPCSTR)k_user_getFontClass("TINYTYPE8x8"));
	pea	#^L754+151
	pea	#<L754+151
	jsl	~~k_user_getFontClass
	sta	<R0
	stx	<R0+2
	phx
	pha
	pea	#0
	clc
	tdc
	adc	#<L756+rect_1
	pha
	pea	#<$0
	pea	#^L754+135
	pea	#<L754+135
	pei	<L756+pWin_1+2
	pei	<L756+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R1
	stx	<R1+2
	phx
	pha
	jsl	~~k_user_DrawWindowTextToPointWithFont
;				row+=10;
	.line	3664
	clc
	lda	#$a
	adc	<L756+row_1
	sta	<L756+row_1
;
;				rect.x = 10;
	.line	3666
	lda	#$a
	sta	<L756+rect_1
;				rect.y = row;
	.line	3667
	lda	<L756+row_1
	sta	<L756+rect_1+2
;				k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),
	.line	3668
;													 "Copyright (c) 2019, Mike Bush",
;						                             0,&rect,(LPCSTR)k_user_getFontClass("TINYTYPE8x8"));
	pea	#^L754+193
	pea	#<L754+193
	jsl	~~k_user_getFontClass
	sta	<R0
	stx	<R0+2
	phx
	pha
	pea	#0
	clc
	tdc
	adc	#<L756+rect_1
	pha
	pea	#<$0
	pea	#^L754+163
	pea	#<L754+163
	pei	<L756+pWin_1+2
	pei	<L756+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R1
	stx	<R1+2
	phx
	pha
	jsl	~~k_user_DrawWindowTextToPointWithFont
;				row+=15;
	.line	3671
	clc
	lda	#$f
	adc	<L756+row_1
	sta	<L756+row_1
;
;				rect.x = 20;
	.line	3673
	lda	#$14
	sta	<L756+rect_1
;				rect.y = row;
	.line	3674
	lda	<L756+row_1
	sta	<L756+rect_1+2
;				k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),
	.line	3675
;													 "Author: Mike Bush",
;						                             0,&rect,(LPCSTR)k_user_getFontClass("TINYTYPE8x8"));
	pea	#^L754+223
	pea	#<L754+223
	jsl	~~k_user_getFontClass
	sta	<R0
	stx	<R0+2
	phx
	pha
	pea	#0
	clc
	tdc
	adc	#<L756+rect_1
	pha
	pea	#<$0
	pea	#^L754+205
	pea	#<L754+205
	pei	<L756+pWin_1+2
	pei	<L756+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R1
	stx	<R1+2
	phx
	pha
	jsl	~~k_user_DrawWindowTextToPointWithFont
;				row+=15;
	.line	3678
	clc
	lda	#$f
	adc	<L756+row_1
	sta	<L756+row_1
;
;				rect.x = 20;
	.line	3680
	lda	#$14
	sta	<L756+rect_1
;				rect.y = row;
	.line	3681
	lda	<L756+row_1
	sta	<L756+rect_1+2
;				k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),
	.line	3682
;													 "Special Thanks: Stefany Allaire",
;						                             0,&rect,(LPCSTR)k_user_getFontClass("TINYTYPE8x8"));
	pea	#^L754+267
	pea	#<L754+267
	jsl	~~k_user_getFontClass
	sta	<R0
	stx	<R0+2
	phx
	pha
	pea	#0
	clc
	tdc
	adc	#<L756+rect_1
	pha
	pea	#<$0
	pea	#^L754+235
	pea	#<L754+235
	pei	<L756+pWin_1+2
	pei	<L756+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R1
	stx	<R1+2
	phx
	pha
	jsl	~~k_user_DrawWindowTextToPointWithFont
;
;				ppoint = (PPOINT)k_mem_allocate_heap(sizeof(POINT));
	.line	3686
	pea	#<$4
	jsl	~~k_mem_allocate_heap
	sta	<L756+ppoint_1
	stx	<L756+ppoint_1+2
;				ppoint->x = 0;
	.line	3687
	lda	#$0
	sta	[<L756+ppoint_1]
;				ppoint->y = 0;
	.line	3688
	lda	#$0
	ldy	#$2
	sta	[<L756+ppoint_1],Y
;
;				//_k_user_send_child_message(pWin,FX_MOVE_WINDOW,ppoint,sizeof(POINT));
;				_k_user_send_child_message(pWin,FX_DRAW_WINDOW,NULL,0);
	.line	3691
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$fb00
	pei	<L756+pWin_1+2
	pei	<L756+pWin_1
	jsl	~~_k_user_send_child_message
;
;				break;
	.line	3693
	brl	L10330
;			case FX_CONTROL_COMMAND:
	.line	3694
L10334:
;				k_debug_string("DlgAboutWindowProc::FX_CONTROL_COMMAND\r\n");
	.line	3695
	pea	#^L754+279
	pea	#<L754+279
	jsl	~~k_debug_string
;				k_debug_integer("DlgAboutWindowProc::ID:",((PFXCMDMESSAGE)pMsg)->cmdMId);
	.line	3696
	ldy	#$18
	lda	[<L755+pMsg_0],Y
	pha
	pea	#^L754+320
	pea	#<L754+320
	jsl	~~k_debug_integer
;				if( ((PFXCMDMESSAGE)pMsg)->cmdCId == CTL_BUTTON_SELECTED)
	.line	3697
;				{
	ldy	#$16
	lda	[<L755+pMsg_0],Y
	cmp	#<$2
	beq	L760
	brl	L10335
L760:
	.line	3698
;					/*
;					k_scratch_restore_bitblt(0,0,
;											 pWin->win_width + 1,
;											 pWin->win_height + 1,
;											 pWin->win_x,
;											 pWin->win_y);
;
;					*/
;					pWin->isVisible = FALSE;
	.line	3707
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$140
	sta	[<L756+pWin_1],Y
	rep	#$20
	longa	on
;					if(((PFXCMDMESSAGE)pMsg)->cmdMId == 0x8801)
	.line	3708
;						k_user_CloseWindow(k_getHandleFromWindow(pWin));
	ldy	#$18
	lda	[<L755+pMsg_0],Y
	cmp	#<$8801
	beq	L761
	brl	L10336
L761:
	.line	3709
	pei	<L756+pWin_1+2
	pei	<L756+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_user_CloseWindow
;						//return FALSE;
;				}
L10336:
	.line	3711
;				break;
L10335:
	.line	3712
	brl	L10330
;			case FX_MOUSE_ENTER:
	.line	3713
L10337:
;				k_debug_strings("DlgAboutWindowProc::FX_MOUSE_ENTER:",pWin->win_title);
	.line	3714
	clc
	lda	#$d4
	adc	<L756+pWin_1
	sta	<R0
	lda	#$0
	adc	<L756+pWin_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L754+344
	pea	#<L754+344
	jsl	~~k_debug_strings
;				break;
	.line	3715
	brl	L10330
;			case FX_MOUSE_EXIT:
	.line	3716
L10338:
;				k_debug_strings("DlgAboutWindowProc::FX_MOUSE_EXIT:",pWin->win_title);
	.line	3717
	clc
	lda	#$d4
	adc	<L756+pWin_1
	sta	<R0
	lda	#$0
	adc	<L756+pWin_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L754+380
	pea	#<L754+380
	jsl	~~k_debug_strings
;				break;
	.line	3718
	brl	L10330
;			case FX_WINDOW_CLOSE:
	.line	3719
L10339:
;				k_debug_strings("DlgAboutWindowProc::FX_WINDOW_CLOSE:",pWin->win_title);
	.line	3720
	clc
	lda	#$d4
	adc	<L756+pWin_1
	sta	<R0
	lda	#$0
	adc	<L756+pWin_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L754+415
	pea	#<L754+415
	jsl	~~k_debug_strings
;				return FALSE;
	.line	3721
	lda	#$0
L762:
	tay
	lda	<L755+2
	sta	<L755+2+4
	lda	<L755+1
	sta	<L755+1+4
	pld
	tsc
	clc
	adc	#L755+4
	tcs
	tya
	rtl
;			default:
	.line	3722
L10340:
;				DlgWindowProc(pMsg);
	.line	3723
	pei	<L755+pMsg_0+2
	pei	<L755+pMsg_0
	jsl	~~DlgWindowProc
;				break;
	.line	3724
	brl	L10330
;			}
	.line	3725
L10329:
	xref	~~~swt
	jsl	~~~swt
	dw	7
	dw	3841
	dw	L10337-1
	dw	3842
	dw	L10338-1
	dw	64000
	dw	L10334-1
	dw	64256
	dw	L10333-1
	dw	64257
	dw	L10332-1
	dw	64511
	dw	L10339-1
	dw	65283
	dw	L10331-1
	dw	L10340-1
L10330:
;		}
	.line	3726
;	}
L10328:
	.line	3727
;	return TRUE;
L10327:
	.line	3728
	lda	#$1
	brl	L762
;}
	.line	3729
	.endblock	3729
L755	equ	34
L756	equ	9
	ends
	efunc
	.endfunc	3729,9,34
	.line	3729
	data
L754:
	db	$20,$2A,$2A,$2A,$20,$44,$6C,$67,$41,$62,$6F,$75,$74,$57,$69
	db	$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$57,$6E,$64,$50,$72,$6F
	db	$63,$3A,$3A,$54,$79,$70,$65,$3A,$00,$4F,$6B,$00,$44,$6C,$67
	db	$41,$62,$6F,$75,$74,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63
	db	$3A,$3A,$46,$58,$5F,$44,$52,$41,$57,$5F,$57,$49,$4E,$44,$4F
	db	$57,$00,$00,$46,$58,$2F,$4F,$53,$20,$46,$6F,$65,$6E,$69,$78
	db	$20,$57,$6F,$72,$6B,$73,$70,$61,$63,$65,$00,$50,$72,$65,$72
	db	$65,$6C,$65,$61,$73,$65,$20,$31,$2E,$30,$2E,$30,$20,$42,$65
	db	$74,$61,$00,$54,$49,$4E,$59,$54,$59,$50,$45,$38,$78,$38,$00
	db	$4F,$63,$74,$6F,$62,$65,$72,$20,$31,$2C,$20,$32,$30,$31,$39
	db	$00,$54,$49,$4E,$59,$54,$59,$50,$45,$38,$78,$38,$00,$43,$6F
	db	$70,$79,$72,$69,$67,$68,$74,$20,$28,$63,$29,$20,$32,$30,$31
	db	$39,$2C,$20,$4D,$69,$6B,$65,$20,$42,$75,$73,$68,$00,$54,$49
	db	$4E,$59,$54,$59,$50,$45,$38,$78,$38,$00,$41,$75,$74,$68,$6F
	db	$72,$3A,$20,$4D,$69,$6B,$65,$20,$42,$75,$73,$68,$00,$54,$49
	db	$4E,$59,$54,$59,$50,$45,$38,$78,$38,$00,$53,$70,$65,$63,$69
	db	$61,$6C,$20,$54,$68,$61,$6E,$6B,$73,$3A,$20,$53,$74,$65,$66
	db	$61,$6E,$79,$20,$41,$6C,$6C,$61,$69,$72,$65,$00,$54,$49,$4E
	db	$59,$54,$59,$50,$45,$38,$78,$38,$00,$44,$6C,$67,$41,$62,$6F
	db	$75,$74,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46
	db	$58,$5F,$43,$4F,$4E,$54,$52,$4F,$4C,$5F,$43,$4F,$4D,$4D,$41
	db	$4E,$44,$0D,$0A,$00,$44,$6C,$67,$41,$62,$6F,$75,$74,$57,$69
	db	$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$49,$44,$3A,$00,$44
	db	$6C,$67,$41,$62,$6F,$75,$74,$57,$69,$6E,$64,$6F,$77,$50,$72
	db	$6F,$63,$3A,$3A,$46,$58,$5F,$4D,$4F,$55,$53,$45,$5F,$45,$4E
	db	$54,$45,$52,$3A,$00,$44,$6C,$67,$41,$62,$6F,$75,$74,$57,$69
	db	$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$4D,$4F
	db	$55,$53,$45,$5F,$45,$58,$49,$54,$3A,$00,$44,$6C,$67,$41,$62
	db	$6F,$75,$74,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A
	db	$46,$58,$5F,$57,$49,$4E,$44,$4F,$57,$5F,$43,$4C,$4F,$53,$45
	db	$3A,$00
	ends
;
;BOOL k_user_SetMenuState(HMENU hMenu,UINT cmdId,UINT state)
;{
	.line	3731
	.line	3732
	WINMAN
	xdef	~~k_user_SetMenuState
	func
	.function	3732
~~k_user_SetMenuState:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L764
	tcs
	phd
	tcd
hMenu_0	set	4
cmdId_0	set	8
state_0	set	10
	.block	3732
;	PMENU pMenu = (PMENU)hMenu;
;
;	if(pMenu)
pMenu_1	set	0
	.sym	pMenu,0,138,1,32,31
	.sym	hMenu,4,129,6,32
	.sym	cmdId,8,16,6,16
	.sym	state,10,16,6,16
	lda	<L764+hMenu_0
	sta	<L765+pMenu_1
	lda	<L764+hMenu_0+2
	sta	<L765+pMenu_1+2
	.line	3735
;	{
	lda	<L765+pMenu_1
	ora	<L765+pMenu_1+2
	bne	L767
	brl	L10341
L767:
	.line	3736
;		PFXNODELIST menus = pMenu->subMenus;
;		k_nodelist_foreach_type(menus,
	.block	3738
menus_2	set	4
	.sym	menus,4,138,1,32,3
	ldy	#$13
	lda	[<L765+pMenu_1],Y
	sta	<L765+menus_2
	ldy	#$15
	lda	[<L765+pMenu_1],Y
	sta	<L765+menus_2+2
	.line	3738
;								NL_TYPE_WINDOW_MENU,
;								(LPVOID)MAKELONG(state,cmdId),
;								k_iterate_set_menu_state);
	pea	#^~~k_iterate_set_menu_state
	pea	#<~~k_iterate_set_menu_state
	lda	<L764+cmdId_0
	sta	<R1
	stz	<R1+2
	pei	<R1+2
	pei	<R1
	lda	#$10
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R0
	stx	<R0+2
	ldy	#$0
	lda	<L764+state_0
	bpl	L769
	dey
L769:
	sta	<R2
	sty	<R2+2
	lda	<R2
	ora	<R0
	sta	<R3
	lda	<R2+2
	ora	<R0+2
	sta	<R3+2
	pei	<R3+2
	pei	<R3
	pea	#<$3
	pei	<L765+menus_2+2
	pei	<L765+menus_2
	jsl	~~k_nodelist_foreach_type
;	}
	.endblock	3742
	.line	3742
;
;	return TRUE;
L10341:
	.line	3744
	lda	#$1
L770:
	tay
	lda	<L764+2
	sta	<L764+2+8
	lda	<L764+1
	sta	<L764+1+8
	pld
	tsc
	clc
	adc	#L764+8
	tcs
	tya
	rtl
;}
	.line	3745
	.endblock	3745
L764	equ	24
L765	equ	17
	ends
	efunc
	.endfunc	3745,17,24
	.line	3745
;
;VOID k_switch_window_page(HWND hWnd,UINT toPage,UINT fromPage,BOOL bFillSrc)
;{
	.line	3747
	.line	3748
	WINMAN
	xdef	~~k_switch_window_page
	func
	.function	3748
~~k_switch_window_page:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L771
	tcs
	phd
	tcd
hWnd_0	set	4
toPage_0	set	8
fromPage_0	set	10
bFillSrc_0	set	12
	.block	3748
;	RECT winRect;
;	LONG offset  = 0L;
;	LPVOID pSrc  = (LPVOID)(((LONG)fromPage << 16) & 0xFF0000);
;	LPVOID pDest = (LPVOID)(((LONG)toPage   << 16) & 0xFF0000);
;
;	//k_debug_pointer("k_switch_window_page:toPage:"  ,pDest);
;	//k_debug_pointer("k_switch_window_page:fromPage:",pSrc);
;
;	k_getWindowRect(hWnd,&winRect);
winRect_1	set	0
offset_1	set	8
pSrc_1	set	12
pDest_1	set	16
	.sym	winRect,0,10,1,64,22
	.sym	offset,8,7,1,32
	.sym	pSrc,12,129,1,32
	.sym	pDest,16,129,1,32
	.sym	hWnd,4,129,6,32
	.sym	toPage,8,16,6,16
	.sym	fromPage,10,16,6,16
	.sym	bFillSrc,12,14,6,8
	stz	<L772+offset_1
	stz	<L772+offset_1+2
	lda	<L771+fromPage_0
	sta	<R1
	stz	<R1+2
	pei	<R1+2
	pei	<R1
	lda	#$10
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R0
	stx	<R0+2
	stz	<R2
	lda	<R0+2
	and	#^$ff0000
	sta	<R2+2
	lda	<R2
	sta	<L772+pSrc_1
	lda	<R2+2
	sta	<L772+pSrc_1+2
	lda	<L771+toPage_0
	sta	<R2
	stz	<R2+2
	pei	<R2+2
	pei	<R2
	lda	#$10
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R0
	stx	<R0+2
	stz	<R3
	lda	<R0+2
	and	#^$ff0000
	sta	<R3+2
	lda	<R3
	sta	<L772+pDest_1
	lda	<R3+2
	sta	<L772+pDest_1+2
	.line	3757
	pea	#0
	clc
	tdc
	adc	#<L772+winRect_1
	pha
	pei	<L771+hWnd_0+2
	pei	<L771+hWnd_0
	jsl	~~k_getWindowRect
;	offset = k_gui_get_pixel_offset(winRect.x,winRect.y);
	.line	3758
	pei	<L772+winRect_1+2
	pei	<L772+winRect_1
	jsl	~~k_gui_get_pixel_offset
	sta	<L772+offset_1
	stx	<L772+offset_1+2
;
;	pDest = (LPVOID)( (LONG)pDest | offset);
	.line	3760
	lda	<L772+offset_1
	ora	<L772+pDest_1
	sta	<R0
	lda	<L772+offset_1+2
	ora	<L772+pDest_1+2
	sta	<R0+2
	lda	<R0
	sta	<L772+pDest_1
	lda	<R0+2
	sta	<L772+pDest_1+2
;	pSrc  = (LPVOID)( (LONG)pSrc  | offset);
	.line	3761
	lda	<L772+offset_1
	ora	<L772+pSrc_1
	sta	<R0
	lda	<L772+offset_1+2
	ora	<L772+pSrc_1+2
	sta	<R0+2
	lda	<R0
	sta	<L772+pSrc_1
	lda	<R0+2
	sta	<L772+pSrc_1+2
;
;	//k_debug_pointer("k_switch_window_page:toPage:"  ,pDest);
;	//k_debug_pointer("k_switch_window_page:fromPage:",pSrc);
;
;
;	k_vdma_copy_address_ex(pDest,pSrc,winRect.width,winRect.height);
	.line	3767
	pei	<L772+winRect_1+6
	pei	<L772+winRect_1+4
	pei	<L772+pSrc_1+2
	pei	<L772+pSrc_1
	pei	<L772+pDest_1+2
	pei	<L772+pDest_1
	jsl	~~k_vdma_copy_address_ex
;	if(bFillSrc)
	.line	3768
;		k_vdma_fill_rect_ex(winRect.x,winRect.y,winRect.width,winRect.height,FILLCOLOR_TRANSPARENT,fromPage);
	lda	<L771+bFillSrc_0
	and	#$ff
	bne	L774
	brl	L10342
L774:
	.line	3769
	pei	<L771+fromPage_0
	pea	#<$0
	pei	<L772+winRect_1+6
	pei	<L772+winRect_1+4
	ldy	#$0
	lda	<L772+winRect_1+2
	bpl	L775
	dey
L775:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	lda	<L772+winRect_1
	bpl	L776
	dey
L776:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect_ex
;}
L10342:
	.line	3770
L777:
	lda	<L771+2
	sta	<L771+2+10
	lda	<L771+1
	sta	<L771+1+10
	pld
	tsc
	clc
	adc	#L771+10
	tcs
	rtl
	.endblock	3770
L771	equ	36
L772	equ	17
	ends
	efunc
	.endfunc	3770,17,36
	.line	3770
;
	.line	3770
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxwindowmanagerV2.c",3747
	xref	~~k_draw_rect
	xref	~~k_is_inside_rect
	xref	~~hscrollbarWindowProc
	xref	~~vscrollbarWindowProc
	xref	~~k_gui_set_mousepointer
	xref	~~k_font_getFontWidth
	xref	~~k_font_getFontHeight
	xref	~~k_create_ui_window_class
	xref	~~k_create_context_menu_in_window_ex
	xref	~~k_vdma_copy_address_ex
	xref	~~k_vdma_fill_rect_ex
	xref	~~k_vdma_fill_rect
	xref	~~k_vdraw_ui_window
	xref	~~k_get_font_metrics
	xref	~~k_draw_text_point_with_font_ex
	xref	~~k_draw_text_point_with_font
	xref	~~k_draw_text_point
	xref	~~k_draw_line
	xref	~~k_gui_get_pixel_offset
	xref	~~k_get_video_mode
	xref	~~k_getUIGadgetColor
	xref	~~k_getUIMenuColor
	xref	~~k_getUIBackgroundColor
	xref	~~k_vdraw_ui_menu_ex
	xref	~~k_mem_deallocate_heap
	xref	~~k_mem_allocate_heap
	xref	~~k_send_command_message
	xref	~~k_send_window_message
	xref	~~k_event_unlock_focus
	xref	~~k_event_lock_focus_ex
	xref	~~k_exec_get_current_process
	xref	~~k_get_localtime_string
	xref	~~k_string_copy_string
	xref	~~k_debug_nodelist
	xref	~~k_debug_rect
	xref	~~k_debug_strings
	xref	~~k_debug_message
	xref	~~k_debug_long
	xref	~~k_debug_integer
	xref	~~k_debug_pointer
	xref	~~k_debug_string
	xref	~~k_nodelist_foreach_listdata_remove
	xref	~~k_nodelist_foreach_until_listdata
	xref	~~k_nodelist_foreach_listdata
	xref	~~k_nodelist_foreach_type
	xref	~~k_nodelist_getfirstnode
	xref	~~k_nodelist_searchByName
	xref	~~k_nodelist_addnodetolist
	xref	~~k_nodelist_naddtolist
	xref	~~k_nodelist_naddtolist_tohead
	xref	~~k_nodelist_addtolist
	xref	~~k_nodelist_deallocate_list
	xref	~~k_nodelist_allocate_list
	xref	~~k_nodelist_ncreate
	xref	~~strlen
	xref	~~strcpy
	xref	~~strcmp
	xref	~~memset
	xref	~~MOUSE_POINTER_RESIZE
	xref	~~MOUSE_POINTER_HOURGLASS
	xref	~~MOUSE_POINTER_HELP
	xref	~~MOUSE_POINTER_ARROW
	xref	~~BM437FXOS8x8
	xref	~~BM4378X8ITAL
	xref	~~BM437AMIGO8x8
	xref	~~BM437FANTASY
	xref	~~BM437TINYTYPE8x8
	xref	~~Bm437ATI6x8
	xref	~~Bm437ATI8x16
	xref	~~Bm437ToshibaLCD8x8
	.sym	~~k_draw_rect,~~k_draw_rect,69,18,0
	.sym	~~k_is_inside_rect,~~k_is_inside_rect,69,18,0
	.sym	~~k_point_in_depth_nodeslist,~~k_point_in_depth_nodeslist,1098,2,32,2
	.sym	~~k_user_CreateWindowEx,~~k_user_CreateWindowEx,1098,2,32,28
	.sym	~~k_user_SelectColorIntoContext,~~k_user_SelectColorIntoContext,65,2,0
	.sym	~~k_user_SelectFontIntoContext,~~k_user_SelectFontIntoContext,65,2,0
	.sym	~~k_user_ReleaseWindowDrawingContext,~~k_user_ReleaseWindowDrawingContext,65,2,0
	.sym	~~k_user_GetWindowDrawingContext,~~k_user_GetWindowDrawingContext,1089,2,32
	.sym	~~k_user_GetFont,~~k_user_GetFont,1089,2,32
	.sym	~~k_user_getWindowClass,~~k_user_getWindowClass,1098,2,32,23
	.sym	~~k_deallocate_menu_resource,~~k_deallocate_menu_resource,65,2,0
	.sym	~~k_deallocate_icon_object,~~k_deallocate_icon_object,65,2,0
	.sym	~~_k_windowManager_CursorList,~~_k_windowManager_CursorList,138,3,32,3
	.sym	~~_k_windowManager_FontList,~~_k_windowManager_FontList,138,3,32,3
	.sym	~~_k_windowManager_IconList,~~_k_windowManager_IconList,138,3,32,3
	.sym	~~_k_windowManager_WindowMenuList,~~_k_windowManager_WindowMenuList,138,3,32,3
	.sym	~~_k_windowManager_ObjectHitList,~~_k_windowManager_ObjectHitList,138,3,32,3
	.sym	~~_k_windowManager_WindowObjectList,~~_k_windowManager_WindowObjectList,138,3,32,3
	.sym	~~_k_windowManager_WindowClassList,~~_k_windowManager_WindowClassList,138,3,32,3
	.sym	~~debug_clickable_node,~~debug_clickable_node,65,2,0
	.sym	~~debug_window_node,~~debug_window_node,65,2,0
	.sym	~~k_is_window_closed,~~k_is_window_closed,78,2,0
	.sym	~~k_size_dropdown_menus,~~k_size_dropdown_menus,65,2,0
	.sym	~~find_window_caption,~~find_window_caption,78,2,0
	.sym	~~find_child_window,~~find_child_window,78,2,0
	.sym	~~k_iterate_children,~~k_iterate_children,65,2,0
	.sym	~~k_iterate_dropdown_menu_captions,~~k_iterate_dropdown_menu_captions,65,2,0
	.sym	~~k_iterate_set_menu_state,~~k_iterate_set_menu_state,65,2,0
	.sym	~~k_iterate_menus,~~k_iterate_menus,65,2,0
	.sym	~~_k_user_send_child_message,~~_k_user_send_child_message,78,2,0
	.sym	PEACHCHILD_MSG,0,138,14,32,63
	.sym	EACHCHILD_MSG,0,10,14,64,63
	.sym	~~k_switch_window_page,~~k_switch_window_page,65,2,0
	.sym	~~menuDropDownWindowProc,~~menuDropDownWindowProc,78,2,0
	.sym	~~menuAnchorWindowProc,~~menuAnchorWindowProc,78,2,0
	.sym	~~gadgetWindowProc,~~gadgetWindowProc,78,2,0
	.sym	~~menuWindowProc,~~menuWindowProc,78,2,0
	.sym	~~hscrollbarWindowProc,~~hscrollbarWindowProc,78,18,0
	.sym	~~vscrollbarWindowProc,~~vscrollbarWindowProc,78,18,0
	.sym	~~buttonWindowProc,~~buttonWindowProc,78,2,0
	.sym	~~DlgAboutWindowProc,~~DlgAboutWindowProc,78,2,0
	.sym	~~DlgWindowProc,~~DlgWindowProc,78,2,0
	.sym	~~DefWindowProc,~~DefWindowProc,78,2,0
	.sym	~~k_clean_closed_windows,~~k_clean_closed_windows,65,2,0
	.sym	~~k_deallocate_cursor_object,~~k_deallocate_cursor_object,65,2,0
	.sym	~~k_deallocate_font_object,~~k_deallocate_font_object,65,2,0
	.sym	~~k_deallocate_hit_class,~~k_deallocate_hit_class,65,2,0
	.sym	~~k_deallocate_menu_object,~~k_deallocate_menu_object,65,2,0
	.sym	~~k_deallocate_window_object,~~k_deallocate_window_object,65,2,0
	.sym	~~k_deallocate_window_class,~~k_deallocate_window_class,65,2,0
	.sym	~~k_func_drawAnchorText,~~k_func_drawAnchorText,65,2,0
	.sym	~~k_render_text,~~k_render_text,69,2,0
	.sym	~~k_text_callback,~~k_text_callback,65,2,0
	.sym	~~k_point_hit_scan_nodeslist,~~k_point_hit_scan_nodeslist,1098,2,32,2
	.sym	~~k_point_hit_resetdepth_nodeslist,~~k_point_hit_resetdepth_nodeslist,65,2,0
	.sym	~~k_point_hit_scan,~~k_point_hit_scan,1098,2,32,2
	.sym	~~k_remove_closed_windows_from_list,~~k_remove_closed_windows_from_list,1098,2,32,2
	.sym	~~k_update_hover_location,~~k_update_hover_location,65,2,0
	.sym	~~k_add_object_hit_node_local,~~k_add_object_hit_node_local,65,2,0
	.sym	~~k_attach_mouse_detection_local,~~k_attach_mouse_detection_local,69,2,0
	.sym	~~k_point_in_any_nodeslist,~~k_point_in_any_nodeslist,1098,2,32,2
	.sym	~~k_point_in_nodeslist,~~k_point_in_nodeslist,1098,2,32,2
	.sym	~~k_add_object_hit_node,~~k_add_object_hit_node,65,2,0
	.sym	~~k_attach_mouse_detection,~~k_attach_mouse_detection,69,2,0
	.sym	~~k_add_child_window,~~k_add_child_window,78,2,0
	.sym	~~k_user_FillClientRect,~~k_user_FillClientRect,1098,2,32,22
	.sym	~~k_user_DrawWindowTextToPointWithFont,~~k_user_DrawWindowTextToPointWithFont,80,2,0
	.sym	~~k_user_DrawWindowTextToPoint,~~k_user_DrawWindowTextToPoint,80,2,0
	.sym	~~k_user_DrawText,~~k_user_DrawText,80,2,0
	.sym	~~k_user_EndWindowForDrag,~~k_user_EndWindowForDrag,65,2,0
	.sym	~~k_user_StartWindowForDrag,~~k_user_StartWindowForDrag,65,2,0
	.sym	~~k_user_CopyRect,~~k_user_CopyRect,65,2,0
	.sym	~~k_user_ClearRect,~~k_user_ClearRect,65,2,0
	.sym	~~k_user_SetRect,~~k_user_SetRect,65,2,0
	.sym	~~k_user_IsChildWindow,~~k_user_IsChildWindow,78,2,0
	.sym	~~k_user_getFocusWindow,~~k_user_getFocusWindow,1089,2,32
	.sym	~~k_user_MoveWindow_ex,~~k_user_MoveWindow_ex,65,2,0
	.sym	~~k_user_MoveWindow,~~k_user_MoveWindow,65,2,0
	.sym	~~k_user_CenterBottomWindow,~~k_user_CenterBottomWindow,65,2,0
	.sym	~~k_user_CenterWindow,~~k_user_CenterWindow,65,2,0
	.sym	~~k_user_CreateButton,~~k_user_CreateButton,1098,2,32,27
	.sym	~~k_user_SetMenuState,~~k_user_SetMenuState,78,2,0
	.sym	~~k_user_CreateMenuDropDown,~~k_user_CreateMenuDropDown,1098,2,32,27
	.sym	~~k_user_CreateMenuAnchor,~~k_user_CreateMenuAnchor,1098,2,32,27
	.sym	~~k_user_AddMenuItem,~~k_user_AddMenuItem,1089,2,32
	.sym	~~k_user_CreateMenuResource,~~k_user_CreateMenuResource,1089,2,32
	.sym	~~k_user_CreateMenu,~~k_user_CreateMenu,1098,2,32,27
	.sym	~~k_user_GlobalToClientCoordinates,~~k_user_GlobalToClientCoordinates,1098,2,32,21
	.sym	~~k_user_ClientToGlobalCoordinates,~~k_user_ClientToGlobalCoordinates,1098,2,32,21
	.sym	~~k_user_ShowWindow,~~k_user_ShowWindow,78,2,0
	.sym	~~k_user_setMousePointer,~~k_user_setMousePointer,1089,2,32
	.sym	~~k_user_getMousePointerClass,~~k_user_getMousePointerClass,1089,2,32
	.sym	~~k_user_getFontClass,~~k_user_getFontClass,1089,2,32
	.sym	~~k_user_RegisterFontClass,~~k_user_RegisterFontClass,1089,2,32
	.sym	~~k_user_RegisterMousePointerClass,~~k_user_RegisterMousePointerClass,1089,2,32
	.sym	~~k_user_DestroyWindow,~~k_user_DestroyWindow,78,2,0
	.sym	~~k_user_CloseWindow,~~k_user_CloseWindow,78,2,0
	.sym	~~k_user_LoadDialog,~~k_user_LoadDialog,1098,2,32,27
	.sym	~~k_user_GetWindowData,~~k_user_GetWindowData,1089,2,32
	.sym	~~k_user_SetWindowData,~~k_user_SetWindowData,1089,2,32
	.sym	~~k_user_CreateWindow,~~k_user_CreateWindow,1098,2,32,27
	.sym	~~k_user_RegisterWindowClass,~~k_user_RegisterWindowClass,1089,2,32
	.sym	~~k_user_CreateWindowClass,~~k_user_CreateWindowClass,1098,2,32,23
	.sym	~~k_user_getSystemMetric,~~k_user_getSystemMetric,69,2,0
	.sym	~~k_user_findWindow,~~k_user_findWindow,1089,2,32
	.sym	~~k_user_getDesktopWindow,~~k_user_getDesktopWindow,1089,2,32
	.sym	~~k_getWindowRect,~~k_getWindowRect,80,2,0
	.sym	~~k_getHandleFromWindow,~~k_getHandleFromWindow,1089,2,32
	.sym	~~k_getWindowFromHandle,~~k_getWindowFromHandle,1098,2,32,27
	.sym	~~k_getWindowClassList,~~k_getWindowClassList,1098,2,32,2
	.sym	~~k_getWindowList,~~k_getWindowList,1098,2,32,2
	.sym	~~k_getWindowHitList,~~k_getWindowHitList,1098,2,32,2
	.sym	~~k_getWindowManagerHitList,~~k_getWindowManagerHitList,1098,2,32,3
	.sym	~~k_getWindowManagerClassList,~~k_getWindowManagerClassList,1098,2,32,3
	.sym	~~k_getWindowManagerList,~~k_getWindowManagerList,1098,2,32,3
	.sym	~~k_initializeWindowManager,~~k_initializeWindowManager,78,2,0
	.sym	~~k_gui_set_mousepointer,~~k_gui_set_mousepointer,65,18,0
	.sym	~~k_font_getFontWidth,~~k_font_getFontWidth,80,18,0
	.sym	~~k_font_getFontHeight,~~k_font_getFontHeight,80,18,0
	.sym	~~k_create_ui_window_class,~~k_create_ui_window_class,1098,18,32,27
	.sym	~~k_create_context_menu_in_window_ex,~~k_create_context_menu_in_window_ex,1098,18,32,31
	.sym	~~k_vdma_copy_address_ex,~~k_vdma_copy_address_ex,65,18,0
	.sym	~~k_vdma_fill_rect_ex,~~k_vdma_fill_rect_ex,65,18,0
	.sym	~~k_vdma_fill_rect,~~k_vdma_fill_rect,65,18,0
	.sym	~~k_vdraw_ui_window,~~k_vdraw_ui_window,65,18,0
	.sym	~~k_get_font_metrics,~~k_get_font_metrics,69,18,0
	.sym	~~k_draw_text_point_with_font_ex,~~k_draw_text_point_with_font_ex,69,18,0
	.sym	~~k_draw_text_point_with_font,~~k_draw_text_point_with_font,69,18,0
	.sym	~~k_draw_text_point,~~k_draw_text_point,69,18,0
	.sym	~~k_draw_line,~~k_draw_line,65,18,0
	.sym	~~k_gui_get_pixel_offset,~~k_gui_get_pixel_offset,71,18,0
	.sym	~~k_get_video_mode,~~k_get_video_mode,80,18,0
	.sym	~~k_getUIGadgetColor,~~k_getUIGadgetColor,69,18,0
	.sym	~~k_getUIMenuColor,~~k_getUIMenuColor,69,18,0
	.sym	~~k_getUIBackgroundColor,~~k_getUIBackgroundColor,69,18,0
	.sym	PCUR_PALETTE_MAP,0,138,14,32,62
	.sym	CUR_PALETTE_MAP,0,10,14,400,62
	.sym	~~k_vdraw_ui_menu_ex,~~k_vdraw_ui_menu_ex,1098,18,32,31
	.sym	PCLICKDETECTED,0,138,14,32,61
	.sym	CLICKDETECTED,0,10,14,64,61
	.sym	OBJECTCLICKED,0,641,14,32
	.sym	~~MOUSE_POINTER_RESIZE,~~MOUSE_POINTER_RESIZE,110,18,0,0
	.sym	~~MOUSE_POINTER_HOURGLASS,~~MOUSE_POINTER_HOURGLASS,110,18,0,0
	.sym	~~MOUSE_POINTER_HELP,~~MOUSE_POINTER_HELP,110,18,0,0
	.sym	~~MOUSE_POINTER_ARROW,~~MOUSE_POINTER_ARROW,110,18,0,0
	.sym	~~BM437FXOS8x8,~~BM437FXOS8x8,110,18,0,0
	.sym	~~BM4378X8ITAL,~~BM4378X8ITAL,110,18,0,0
	.sym	~~BM437AMIGO8x8,~~BM437AMIGO8x8,110,18,0,0
	.sym	~~BM437FANTASY,~~BM437FANTASY,110,18,0,0
	.sym	~~BM437TINYTYPE8x8,~~BM437TINYTYPE8x8,110,18,0,0
	.sym	~~Bm437ATI6x8,~~Bm437ATI6x8,110,18,0,0
	.sym	~~Bm437ATI8x16,~~Bm437ATI8x16,110,18,0,0
	.sym	~~Bm437ToshibaLCD8x8,~~Bm437ToshibaLCD8x8,110,18,0,0
	.sym	~~k_mem_deallocate_heap,~~k_mem_deallocate_heap,65,18,0
	.sym	~~k_mem_allocate_heap,~~k_mem_allocate_heap,1089,18,32
	.sym	MemoryCallback,0,641,14,32
	.sym	PFXMEMORYMAP,0,138,14,32,60
	.sym	FXMEMORYMAP,0,10,14,2072,60
	.sym	UMM_HEAP_INFO,0,10,14,256,59
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
	.sym	~~k_send_command_message,~~k_send_command_message,78,18,0
	.sym	~~k_send_window_message,~~k_send_window_message,78,18,0
	.sym	~~k_event_unlock_focus,~~k_event_unlock_focus,1089,18,32
	.sym	~~k_event_lock_focus_ex,~~k_event_lock_focus_ex,78,18,0
	.sym	PMOUSE_MSG_STATE,0,138,14,32,54
	.sym	MOUSE_MSG_STATE,0,10,14,184,54
	.sym	PFXEVENTPROCESS,0,138,14,32,53
	.sym	FXEVENTPROCESS,0,10,14,64,53
	.sym	FXEventProc,0,641,14,32
	.sym	PMOUSEMSGDATA,0,138,14,32,52
	.sym	MOUSEMSGDATA,0,10,14,64,52
	.sym	MSGIRQ,0,5,14,16
	.sym	MAINLOOPARGS,0,10,14,16,51
	.sym	~~k_exec_get_current_process,~~k_exec_get_current_process,1098,18,32,17
	.sym	~~k_get_localtime_string,~~k_get_localtime_string,1102,18,32
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
	.sym	~~k_debug_nodelist,~~k_debug_nodelist,65,18,0
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
	.sym	~~k_nodelist_foreach_listdata_remove,~~k_nodelist_foreach_listdata_remove,65,18,0
	.sym	~~k_nodelist_foreach_until_listdata,~~k_nodelist_foreach_until_listdata,1098,18,32,2
	.sym	~~k_nodelist_foreach_listdata,~~k_nodelist_foreach_listdata,65,18,0
	.sym	~~k_nodelist_foreach_type,~~k_nodelist_foreach_type,65,18,0
	.sym	FOREACHNODEUNTIL,0,654,14,32
	.sym	FOREACHNODE,0,641,14,32
	.sym	~~k_nodelist_getfirstnode,~~k_nodelist_getfirstnode,1098,18,32,2
	.sym	~~k_nodelist_searchByName,~~k_nodelist_searchByName,1098,18,32,2
	.sym	~~k_nodelist_addnodetolist,~~k_nodelist_addnodetolist,1098,18,32,2
	.sym	~~k_nodelist_naddtolist,~~k_nodelist_naddtolist,1098,18,32,2
	.sym	~~k_nodelist_naddtolist_tohead,~~k_nodelist_naddtolist_tohead,1098,18,32,2
	.sym	~~k_nodelist_addtolist,~~k_nodelist_addtolist,1098,18,32,2
	.sym	~~k_nodelist_deallocate_list,~~k_nodelist_deallocate_list,65,18,0
	.sym	~~k_nodelist_allocate_list,~~k_nodelist_allocate_list,1098,18,32,3
	.sym	~~k_nodelist_ncreate,~~k_nodelist_ncreate,1098,18,32,2
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

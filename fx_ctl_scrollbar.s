;:ts=8
R0	equ	1
R1	equ	5
R2	equ	9
R3	equ	13
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fx_ctl_scrollbar.c",0
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fx_ctl_scrollbar.c",1
;#include "fxfont.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxfont.h",0
	.line	64
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fx_ctl_scrollbar.c",2
;
;VOID processSBCommand(PWINDOW pWin, UINT cmdCId,UINT cmdMId,ULONG parameter1);
;
;
;PWINDOW	k_user_CreateVerticalScrollBar(HWND hWndParent,LPCSTR caption,UINT buttonId)
;{
	.line	7
	.line	8
	code
	xdef	~~k_user_CreateVerticalScrollBar
	func
	.function	8
~~k_user_CreateVerticalScrollBar:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L2
	tcs
	phd
	tcd
hWndParent_0	set	4
caption_0	set	8
buttonId_0	set	12
	.block	8
;	PWINDOW pWin = NULL;
;	PWINDOW pParent = NULL;
;
;	int x;
;	int y;
;	int width;
;	int height;
;
;
;
;	pParent = k_getWindowFromHandle(hWndParent);
pWin_1	set	0
pParent_1	set	4
x_1	set	8
y_1	set	10
width_1	set	12
height_1	set	14
	.sym	pWin,0,138,1,32,27
	.sym	pParent,4,138,1,32,27
	.sym	x,8,5,1,16
	.sym	y,10,5,1,16
	.sym	width,12,5,1,16
	.sym	height,14,5,1,16
	.sym	hWndParent,4,129,6,32
	.sym	caption,8,142,6,32
	.sym	buttonId,12,16,6,16
	stz	<L3+pWin_1
	stz	<L3+pWin_1+2
	stz	<L3+pParent_1
	stz	<L3+pParent_1+2
	.line	19
	pei	<L2+hWndParent_0+2
	pei	<L2+hWndParent_0
	jsl	~~k_getWindowFromHandle
	sta	<L3+pParent_1
	stx	<L3+pParent_1+2
;
;	width = k_user_getSystemMetric(SM_CXVSCROLL);
	.line	21
	pea	#<$2
	jsl	~~k_user_getSystemMetric
	sta	<L3+width_1
;
;	if(pParent->style & FXWS_THICKFRAME)
	.line	23
;	{
	ldy	#$4
	lda	[<L3+pParent_1],Y
	and	#^$20000
	bne	L5
	brl	L10001
L5:
	.line	24
;		//k_debug_integer("k_user_CreateVertScrollBar:SM_CXFRAME:" , k_user_getSystemMetric(SM_CXFRAME) );
;		x = pParent->win_width - width - k_user_getSystemMetric(SM_CXFRAME) ;// + 2;
	.line	26
	pea	#<$20
	jsl	~~k_user_getSystemMetric
	sta	<R0
	sec
	ldy	#$c
	lda	[<L3+pParent_1],Y
	sbc	<L3+width_1
	sta	<R1
	sec
	lda	<R1
	sbc	<R0
	sta	<L3+x_1
;	}
	.line	27
;	else if(pParent->style & FXWS_BORDER)
	brl	L10002
L10001:
	.line	28
;	{
	ldy	#$4
	lda	[<L3+pParent_1],Y
	and	#^$10000
	bne	L6
	brl	L10003
L6:
	.line	29
;		//k_debug_integer("k_user_CreateVertScrollBar:FXWS_BORDER:" , k_user_getSystemMetric(SM_CXBORDER) );
;		x = pParent->win_width - width - k_user_getSystemMetric(SM_CXBORDER);// + 2;
	.line	31
	pea	#<$5
	jsl	~~k_user_getSystemMetric
	sta	<R0
	sec
	ldy	#$c
	lda	[<L3+pParent_1],Y
	sbc	<L3+width_1
	sta	<R1
	sec
	lda	<R1
	sbc	<R0
	sta	<L3+x_1
;	}
	.line	32
;	else
	brl	L10004
L10003:
;	{
	.line	34
;		//k_debug_integer("k_user_CreateVertScrollBar:SM_CXBORDER:" , k_user_getSystemMetric(SM_CXBORDER) );
;		x = pParent->win_width - width -  k_user_getSystemMetric(SM_CXBORDER) ;
	.line	36
	pea	#<$5
	jsl	~~k_user_getSystemMetric
	sta	<R0
	sec
	ldy	#$c
	lda	[<L3+pParent_1],Y
	sbc	<L3+width_1
	sta	<R1
	sec
	lda	<R1
	sbc	<R0
	sta	<L3+x_1
;	}
	.line	37
L10004:
L10002:
;
;	if(pParent->style & FXWS_THICKFRAME)
	.line	39
;		y = k_user_getSystemMetric(SM_CYFRAME);// + 2;
	ldy	#$4
	lda	[<L3+pParent_1],Y
	and	#^$20000
	bne	L7
	brl	L10005
L7:
	.line	40
	pea	#<$21
	jsl	~~k_user_getSystemMetric
	sta	<L3+y_1
;	else if(pParent->style & FXWS_BORDER)
	brl	L10006
L10005:
	.line	41
;		y = k_user_getSystemMetric(SM_CYBORDER);// + 2;
	ldy	#$4
	lda	[<L3+pParent_1],Y
	and	#^$10000
	bne	L8
	brl	L10007
L8:
	.line	42
	pea	#<$6
	jsl	~~k_user_getSystemMetric
	sta	<L3+y_1
;	else
	brl	L10008
L10007:
;		y = FONTH + 2;
	.line	44
	jsl	~~k_font_getFontHeight
	sta	<R0
	clc
	lda	#$2
	adc	<R0
	sta	<L3+y_1
L10008:
L10006:
;
;	if(pParent->style & FXWS_CAPTION)
	.line	46
;		y = k_user_getSystemMetric(SM_CYSMCAPTION);
	ldy	#$2
	lda	[<L3+pParent_1],Y
	and	#<$4
	bne	L9
	brl	L10009
L9:
	.line	47
	pea	#<$33
	jsl	~~k_user_getSystemMetric
	sta	<L3+y_1
;
;
;	height = pParent->win_height - y;
L10009:
	.line	50
	sec
	ldy	#$e
	lda	[<L3+pParent_1],Y
	sbc	<L3+y_1
	sta	<L3+height_1
;
;	if(pParent->style & FXWS_THICKFRAME)
	.line	52
;		height -=  k_user_getSystemMetric(SM_CXFRAME);// + 2;
	ldy	#$4
	lda	[<L3+pParent_1],Y
	and	#^$20000
	bne	L10
	brl	L10010
L10:
	.line	53
	pea	#<$20
	jsl	~~k_user_getSystemMetric
	sta	<R0
	sec
	lda	<L3+height_1
	sbc	<R0
	sta	<L3+height_1
;	else if(pParent->style & FXWS_BORDER)
	brl	L10011
L10010:
	.line	54
;		height -= k_user_getSystemMetric(SM_CYBORDER);// + 2;
	ldy	#$4
	lda	[<L3+pParent_1],Y
	and	#^$10000
	bne	L11
	brl	L10012
L11:
	.line	55
	pea	#<$6
	jsl	~~k_user_getSystemMetric
	sta	<R0
	sec
	lda	<L3+height_1
	sbc	<R0
	sta	<L3+height_1
;	else
	brl	L10013
L10012:
;		height -= k_user_getSystemMetric(SM_CYBORDER);
	.line	57
	pea	#<$6
	jsl	~~k_user_getSystemMetric
	sta	<R0
	sec
	lda	<L3+height_1
	sbc	<R0
	sta	<L3+height_1
L10013:
L10011:
;
;
;	/*
;	//y = FONTH + 2;
;	height = pParent->win_height - FONTH - k_user_getSystemMetric(SM_CYBORDER)*2 - 1;
;	//height = pParent->win_height;
;	*/
;
;	k_debug_integer("k_user_CreateVertScrollBar:cx:",x);
	.line	66
	pei	<L3+x_1
	pea	#^L1
	pea	#<L1
	jsl	~~k_debug_integer
;	k_debug_integer("k_user_CreateVertScrollBar:cy:",y);
	.line	67
	pei	<L3+y_1
	pea	#^L1+31
	pea	#<L1+31
	jsl	~~k_debug_integer
;	k_debug_integer("k_user_CreateVertScrollBar:width:",width);
	.line	68
	pei	<L3+width_1
	pea	#^L1+62
	pea	#<L1+62
	jsl	~~k_debug_integer
;	k_debug_integer("k_user_CreateVertScrollBar:height:",height);
	.line	69
	pei	<L3+height_1
	pea	#^L1+96
	pea	#<L1+96
	jsl	~~k_debug_integer
;
;	k_debug_integer("k_user_CreateVertScrollBar:k_user_getSystemMetric(SM_CXVSCROLL):",k_user_getSystemMetric(SM_CXVSCROLL));
	.line	71
	pea	#<$2
	jsl	~~k_user_getSystemMetric
	pha
	pea	#^L1+131
	pea	#<L1+131
	jsl	~~k_debug_integer
;
;
;	pWin = k_user_CreateWindow(FXWS_BORDER | FXWS_VISIBLE | FXWS_PARENT_HEIGHT,
	.line	74
;							   "vscrollWindowClass",
;								caption,
;								x,y,
;								width,height,
;								hWndParent,
;								(HMENU)buttonId,
;								NULL);
	pea	#^$0
	pea	#<$0
	ldy	#$0
	lda	<L2+buttonId_0
	bpl	L12
	dey
L12:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	pei	<L2+hWndParent_0+2
	pei	<L2+hWndParent_0
	pei	<L3+height_1
	pei	<L3+width_1
	pei	<L3+y_1
	pei	<L3+x_1
	pei	<L2+caption_0+2
	pei	<L2+caption_0
	pea	#^L1+196
	pea	#<L1+196
	pea	#^$4010001
	pea	#<$4010001
	jsl	~~k_user_CreateWindow
	sta	<L3+pWin_1
	stx	<L3+pWin_1+2
;
;	if(pWin)
	.line	83
;	{
	lda	<L3+pWin_1
	ora	<L3+pWin_1+2
	bne	L13
	brl	L10014
L13:
	.line	84
;		k_send_window_message(k_getHandleFromWindow(pWin),FX_CREATE_WINDOW,NULL,0);
	.line	85
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$ff03
	pei	<L3+pWin_1+2
	pei	<L3+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_send_window_message
;	}
	.line	86
;
;	return pWin;
L10014:
	.line	88
	ldx	<L3+pWin_1+2
	lda	<L3+pWin_1
L14:
	tay
	lda	<L2+2
	sta	<L2+2+10
	lda	<L2+1
	sta	<L2+1+10
	pld
	tsc
	clc
	adc	#L2+10
	tcs
	tya
	rtl
;}
	.line	89
	.endblock	89
L2	equ	24
L3	equ	9
	ends
	efunc
	.endfunc	89,9,24
	.line	89
	data
L1:
	db	$6B,$5F,$75,$73,$65,$72,$5F,$43,$72,$65,$61,$74,$65,$56,$65
	db	$72,$74,$53,$63,$72,$6F,$6C,$6C,$42,$61,$72,$3A,$63,$78,$3A
	db	$00,$6B,$5F,$75,$73,$65,$72,$5F,$43,$72,$65,$61,$74,$65,$56
	db	$65,$72,$74,$53,$63,$72,$6F,$6C,$6C,$42,$61,$72,$3A,$63,$79
	db	$3A,$00,$6B,$5F,$75,$73,$65,$72,$5F,$43,$72,$65,$61,$74,$65
	db	$56,$65,$72,$74,$53,$63,$72,$6F,$6C,$6C,$42,$61,$72,$3A,$77
	db	$69,$64,$74,$68,$3A,$00,$6B,$5F,$75,$73,$65,$72,$5F,$43,$72
	db	$65,$61,$74,$65,$56,$65,$72,$74,$53,$63,$72,$6F,$6C,$6C,$42
	db	$61,$72,$3A,$68,$65,$69,$67,$68,$74,$3A,$00,$6B,$5F,$75,$73
	db	$65,$72,$5F,$43,$72,$65,$61,$74,$65,$56,$65,$72,$74,$53,$63
	db	$72,$6F,$6C,$6C,$42,$61,$72,$3A,$6B,$5F,$75,$73,$65,$72,$5F
	db	$67,$65,$74,$53,$79,$73,$74,$65,$6D,$4D,$65,$74,$72,$69,$63
	db	$28,$53,$4D,$5F,$43,$58,$56,$53,$43,$52,$4F,$4C,$4C,$29,$3A
	db	$00,$76,$73,$63,$72,$6F,$6C,$6C,$57,$69,$6E,$64,$6F,$77,$43
	db	$6C,$61,$73,$73,$00
	ends
;
;BOOL vscrollbarWindowProc(PFXOSMESSAGE pMsg)
;{
	.line	91
	.line	92
	code
	xdef	~~vscrollbarWindowProc
	func
	.function	92
~~vscrollbarWindowProc:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L16
	tcs
	phd
	tcd
pMsg_0	set	4
	.block	92
;	HWND hWnd = NULL;
;	PFXPROCESS p = NULL;
;	PWINDOW	   pWin = NULL;
;	PSCROLLBAR	   scrollbar = NULL;
;	UINT	   size = 0;
;	RECT rect;
;	INT cx,cy;
;
;	ULONG direction = 0L;
;
;	INT cMenu;
;	INT cGadget;
;
;	LPCSTR pFont = (LPCSTR)k_user_getFontClass("FXOS8x8");
;
;	if(pMsg!=NULL)
hWnd_1	set	0
p_1	set	4
pWin_1	set	8
scrollbar_1	set	12
size_1	set	16
rect_1	set	18
cx_1	set	26
cy_1	set	28
direction_1	set	30
cMenu_1	set	34
cGadget_1	set	36
pFont_1	set	38
	.sym	hWnd,0,129,1,32
	.sym	p,4,138,1,32,17
	.sym	pWin,8,138,1,32,27
	.sym	scrollbar,12,138,1,32,35
	.sym	size,16,16,1,16
	.sym	rect,18,10,1,64,22
	.sym	cx,26,5,1,16
	.sym	cy,28,5,1,16
	.sym	direction,30,18,1,32
	.sym	cMenu,34,5,1,16
	.sym	cGadget,36,5,1,16
	.sym	pFont,38,142,1,32
	.sym	pMsg,4,138,6,32,13
	stz	<L17+hWnd_1
	stz	<L17+hWnd_1+2
	stz	<L17+p_1
	stz	<L17+p_1+2
	stz	<L17+pWin_1
	stz	<L17+pWin_1+2
	stz	<L17+scrollbar_1
	stz	<L17+scrollbar_1+2
	stz	<L17+size_1
	stz	<L17+direction_1
	stz	<L17+direction_1+2
	pea	#^L15
	pea	#<L15
	jsl	~~k_user_getFontClass
	sta	<L17+pFont_1
	stx	<L17+pFont_1+2
	.line	108
;	{
	lda	<L16+pMsg_0
	ora	<L16+pMsg_0+2
	bne	L19
	brl	L10015
L19:
	.line	109
;		p         = k_exec_get_current_process();
	.line	110
	jsl	~~k_exec_get_current_process
	sta	<L17+p_1
	stx	<L17+p_1+2
;		pWin      = k_getWindowFromHandle(pMsg->hwnd);
	.line	111
	ldy	#$c
	lda	[<L16+pMsg_0],Y
	pha
	ldy	#$a
	lda	[<L16+pMsg_0],Y
	pha
	jsl	~~k_getWindowFromHandle
	sta	<L17+pWin_1
	stx	<L17+pWin_1+2
;		scrollbar = ((PSCROLLBAR)pWin->windowData);
	.line	112
	ldy	#$141
	lda	[<L17+pWin_1],Y
	sta	<L17+scrollbar_1
	ldy	#$143
	lda	[<L17+pWin_1],Y
	sta	<L17+scrollbar_1+2
;		hWnd  	  = k_getHandleFromWindow(pWin);
	.line	113
	pei	<L17+pWin_1+2
	pei	<L17+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<L17+hWnd_1
	stx	<L17+hWnd_1+2
;		//k_debug_long("consoleWindowProc::ProcessId:",p->procId);
;		cMenu     = k_getUIMenuColor();
	.line	115
	jsl	~~k_getUIMenuColor
	sta	<L17+cMenu_1
;		cGadget   = k_getUIGadgetColor();
	.line	116
	jsl	~~k_getUIGadgetColor
	sta	<L17+cGadget_1
;
;		switch(pMsg->type)
	.line	118
	ldy	#$8
	lda	[<L16+pMsg_0],Y
	brl	L10016
;		{
	.line	119
;		case FX_CREATE_WINDOW:
	.line	120
L10018:
;			//k_debug_long("buttonWindowProc::ProcessId:",p->procId);
;			//k_debug_string("buttonWindowProc::FX_CREATE_WINDOW\r\n");
;
;			scrollbar = pWin->windowData = k_mem_allocate_heap(sizeof(SCROLLBAR));
	.line	124
	pea	#<$18
	jsl	~~k_mem_allocate_heap
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$141
	sta	[<L17+pWin_1],Y
	lda	<R0+2
	ldy	#$143
	sta	[<L17+pWin_1],Y
	lda	<R0
	sta	<L17+scrollbar_1
	lda	<R0+2
	sta	<L17+scrollbar_1+2
;
;
;			((PSCROLLBAR)pWin->windowData)->max = 100;
	.line	127
	ldy	#$141
	lda	[<L17+pWin_1],Y
	sta	<R0
	ldy	#$143
	lda	[<L17+pWin_1],Y
	sta	<R0+2
	lda	#$64
	ldy	#$2
	sta	[<R0],Y
;			((PSCROLLBAR)pWin->windowData)->min = 0;
	.line	128
	ldy	#$141
	lda	[<L17+pWin_1],Y
	sta	<R0
	ldy	#$143
	lda	[<L17+pWin_1],Y
	sta	<R0+2
	lda	#$0
	sta	[<R0]
;			((PSCROLLBAR)pWin->windowData)->increment = 10;
	.line	129
	ldy	#$141
	lda	[<L17+pWin_1],Y
	sta	<R0
	ldy	#$143
	lda	[<L17+pWin_1],Y
	sta	<R0+2
	lda	#$a
	ldy	#$4
	sta	[<R0],Y
;			((PSCROLLBAR)pWin->windowData)->location = 0;
	.line	130
	ldy	#$141
	lda	[<L17+pWin_1],Y
	sta	<R0
	ldy	#$143
	lda	[<L17+pWin_1],Y
	sta	<R0+2
	lda	#$0
	ldy	#$8
	sta	[<R0],Y
;
;			((PSCROLLBAR)pWin->windowData)->rectThumb.x = 0;
	.line	132
	ldy	#$141
	lda	[<L17+pWin_1],Y
	sta	<R0
	ldy	#$143
	lda	[<L17+pWin_1],Y
	sta	<R0+2
	lda	#$0
	ldy	#$c
	sta	[<R0],Y
;			((PSCROLLBAR)pWin->windowData)->rectThumb.y = 0;
	.line	133
	ldy	#$141
	lda	[<L17+pWin_1],Y
	sta	<R0
	ldy	#$143
	lda	[<L17+pWin_1],Y
	sta	<R0+2
	lda	#$0
	ldy	#$e
	sta	[<R0],Y
;			((PSCROLLBAR)pWin->windowData)->rectThumb.width = 0;
	.line	134
	ldy	#$141
	lda	[<L17+pWin_1],Y
	sta	<R0
	ldy	#$143
	lda	[<L17+pWin_1],Y
	sta	<R0+2
	lda	#$0
	ldy	#$10
	sta	[<R0],Y
;			((PSCROLLBAR)pWin->windowData)->rectThumb.height = 0;
	.line	135
	ldy	#$141
	lda	[<L17+pWin_1],Y
	sta	<R0
	ldy	#$143
	lda	[<L17+pWin_1],Y
	sta	<R0+2
	lda	#$0
	ldy	#$12
	sta	[<R0],Y
;
;
;			((PSCROLLBAR)pWin->windowData)->stopsize = (pWin->win_height - 2*FONTW) / (((PSCROLLBAR)pWin->windowData)->max / ((PSCROLLBAR)pWin->windowData)->increment);
	.line	138
	ldy	#$141
	lda	[<L17+pWin_1],Y
	sta	<R0
	ldy	#$143
	lda	[<L17+pWin_1],Y
	sta	<R0+2
	ldy	#$141
	lda	[<L17+pWin_1],Y
	sta	<R1
	ldy	#$143
	lda	[<L17+pWin_1],Y
	sta	<R1+2
	ldy	#$141
	lda	[<L17+pWin_1],Y
	sta	<R2
	ldy	#$143
	lda	[<L17+pWin_1],Y
	sta	<R2+2
	ldy	#$4
	lda	[<R1],Y
	tax
	ldy	#$2
	lda	[<R2],Y
	xref	~~~udv
	jsl	~~~udv
	sta	<R1
	jsl	~~k_font_getFontWidth
	sta	<R3
	lda	<R3
	asl	A
	sta	<R2
	sec
	ldy	#$e
	lda	[<L17+pWin_1],Y
	sbc	<R2
	sta	<R3
	lda	<R3
	ldx	<R1
	xref	~~~udv
	jsl	~~~udv
	ldy	#$6
	sta	[<R0],Y
;
;			//
;			scrollbar->rectThumb.y =  (scrollbar->stopsize * scrollbar->location) + FONTW;
	.line	141
	ldy	#$8
	lda	[<L17+scrollbar_1],Y
	tax
	ldy	#$6
	lda	[<L17+scrollbar_1],Y
	xref	~~~mul
	jsl	~~~mul
	sta	<R0
	jsl	~~k_font_getFontWidth
	sta	<R1
	clc
	lda	<R1
	adc	<R0
	ldy	#$e
	sta	[<L17+scrollbar_1],Y
;
;			if(scrollbar->rectThumb.y > (pWin->win_height - (2*FONTW) -1 ))
	.line	143
;				scrollbar->rectThumb.y = (pWin->win_height - (2*FONTW) -1 );
	jsl	~~k_font_getFontWidth
	sta	<R1
	lda	<R1
	asl	A
	sta	<R0
	sec
	ldy	#$e
	lda	[<L17+pWin_1],Y
	sbc	<R0
	sta	<R1
	clc
	lda	#$ffff
	adc	<R1
	sta	<R0
	lda	<R0
	ldy	#$e
	cmp	[<L17+scrollbar_1],Y
	bcc	L20
	brl	L10019
L20:
	.line	144
	jsl	~~k_font_getFontWidth
	sta	<R1
	lda	<R1
	asl	A
	sta	<R0
	sec
	ldy	#$e
	lda	[<L17+pWin_1],Y
	sbc	<R0
	sta	<R1
	clc
	lda	#$ffff
	adc	<R1
	ldy	#$e
	sta	[<L17+scrollbar_1],Y
;
;
;			if(scrollbar->rectThumb.y < FONTW)
L10019:
	.line	147
;				scrollbar->rectThumb.y = FONTW;
	jsl	~~k_font_getFontWidth
	sta	<R0
	ldy	#$e
	lda	[<L17+scrollbar_1],Y
	cmp	<R0
	bcc	L21
	brl	L10020
L21:
	.line	148
	jsl	~~k_font_getFontWidth
	ldy	#$e
	sta	[<L17+scrollbar_1],Y
;
;			scrollbar->rectThumb.x = 0;
L10020:
	.line	150
	lda	#$0
	ldy	#$c
	sta	[<L17+scrollbar_1],Y
;
;			//
;
;			k_debug_integer("vscrollbarWindowProc::stopsize:",((PSCROLLBAR)pWin->windowData)->stopsize);
	.line	154
	ldy	#$141
	lda	[<L17+pWin_1],Y
	sta	<R0
	ldy	#$143
	lda	[<L17+pWin_1],Y
	sta	<R0+2
	ldy	#$6
	lda	[<R0],Y
	pha
	pea	#^L15+8
	pea	#<L15+8
	jsl	~~k_debug_integer
;			/*
;			k_vdraw_ui_window(pWin,
;							  pWin->style,
;							  pWin->win_x ,pWin->win_y,
;							  pWin->win_height,pWin->win_width,
;							  pWin->win_title,
;							  k_getUIGadgetColor(), k_getUIMenuColor());
;
;			*/
;			break;
	.line	164
	brl	L10017
;		case FX_DRAW_WINDOW:
	.line	165
L10021:
;			k_debug_pointer("vscrollbarWindowProc::FX_DRAW_WINDOW:",scrollbar);
	.line	166
	pei	<L17+scrollbar_1+2
	pei	<L17+scrollbar_1
	pea	#^L15+40
	pea	#<L15+40
	jsl	~~k_debug_pointer
;			if(scrollbar)
	.line	167
;			{
	lda	<L17+scrollbar_1
	ora	<L17+scrollbar_1+2
	bne	L22
	brl	L10022
L22:
	.line	168
;				k_vdraw_ui_window(pWin,pWin->style,
	.line	169
;								  pWin->win_x ,pWin->win_y,
;								  pWin->win_height,pWin->win_width,
;								  pWin->win_title,
;								  cGadget,
;								  cMenu);
	pei	<L17+cMenu_1
	pei	<L17+cGadget_1
	clc
	lda	#$d4
	adc	<L17+pWin_1
	sta	<R0
	lda	#$0
	adc	<L17+pWin_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$c
	lda	[<L17+pWin_1],Y
	pha
	ldy	#$e
	lda	[<L17+pWin_1],Y
	pha
	ldy	#$a
	lda	[<L17+pWin_1],Y
	pha
	ldy	#$8
	lda	[<L17+pWin_1],Y
	pha
	ldy	#$4
	lda	[<L17+pWin_1],Y
	pha
	ldy	#$2
	lda	[<L17+pWin_1],Y
	pha
	pei	<L17+pWin_1+2
	pei	<L17+pWin_1
	jsl	~~k_vdraw_ui_window
;
;
;				rect.x = 0;
	.line	177
	stz	<L17+rect_1
;				rect.y = 0;
	.line	178
	stz	<L17+rect_1+2
;				k_user_DrawWindowTextToPointWithFont(hWnd,"\xAF",cMenu,&rect,pFont);
	.line	179
	pei	<L17+pFont_1+2
	pei	<L17+pFont_1
	pea	#0
	clc
	tdc
	adc	#<L17+rect_1
	pha
	pei	<L17+cMenu_1
	pea	#^L15+78
	pea	#<L15+78
	pei	<L17+hWnd_1+2
	pei	<L17+hWnd_1
	jsl	~~k_user_DrawWindowTextToPointWithFont
;				k_user_DrawWindowTextToPointWithFont(hWnd,"\x9D",cGadget,&rect,pFont);
	.line	180
	pei	<L17+pFont_1+2
	pei	<L17+pFont_1
	pea	#0
	clc
	tdc
	adc	#<L17+rect_1
	pha
	pei	<L17+cGadget_1
	pea	#^L15+80
	pea	#<L15+80
	pei	<L17+hWnd_1+2
	pei	<L17+hWnd_1
	jsl	~~k_user_DrawWindowTextToPointWithFont
;
;				rect.x = 0;
	.line	182
	stz	<L17+rect_1
;				rect.y = pWin->win_height - FONTW - 1;
	.line	183
	jsl	~~k_font_getFontWidth
	sta	<R0
	sec
	ldy	#$e
	lda	[<L17+pWin_1],Y
	sbc	<R0
	sta	<R1
	clc
	lda	#$ffff
	adc	<R1
	sta	<L17+rect_1+2
;				k_user_DrawWindowTextToPointWithFont(hWnd,"\xAF",cMenu,&rect,pFont);
	.line	184
	pei	<L17+pFont_1+2
	pei	<L17+pFont_1
	pea	#0
	clc
	tdc
	adc	#<L17+rect_1
	pha
	pei	<L17+cMenu_1
	pea	#^L15+82
	pea	#<L15+82
	pei	<L17+hWnd_1+2
	pei	<L17+hWnd_1
	jsl	~~k_user_DrawWindowTextToPointWithFont
;				k_user_DrawWindowTextToPointWithFont(hWnd,"\x9E",cGadget,&rect,pFont);
	.line	185
	pei	<L17+pFont_1+2
	pei	<L17+pFont_1
	pea	#0
	clc
	tdc
	adc	#<L17+rect_1
	pha
	pei	<L17+cGadget_1
	pea	#^L15+84
	pea	#<L15+84
	pei	<L17+hWnd_1+2
	pei	<L17+hWnd_1
	jsl	~~k_user_DrawWindowTextToPointWithFont
;
;				//rect.x = (pWin->win_width/2) - (FONTW/2);
;				//k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\xAF",k_getUIMenuColor(),&scrollbar->rectThumb,(LPCSTR)k_user_getFontClass("FXOS8x8"));
;
;				scrollbar->rectThumb.x = 0;
	.line	190
	lda	#$0
	ldy	#$c
	sta	[<L17+scrollbar_1],Y
;				scrollbar->rectThumb.y = (scrollbar->stopsize * scrollbar->location) + FONTW;
	.line	191
	ldy	#$8
	lda	[<L17+scrollbar_1],Y
	tax
	ldy	#$6
	lda	[<L17+scrollbar_1],Y
	xref	~~~mul
	jsl	~~~mul
	sta	<R0
	jsl	~~k_font_getFontWidth
	sta	<R1
	clc
	lda	<R1
	adc	<R0
	ldy	#$e
	sta	[<L17+scrollbar_1],Y
;
;				k_user_DrawWindowTextToPointWithFont(hWnd,"\xBD",cGadget,&scrollbar->rectThumb,pFont);
	.line	193
	pei	<L17+pFont_1+2
	pei	<L17+pFont_1
	clc
	lda	#$c
	adc	<L17+scrollbar_1
	sta	<R0
	lda	#$0
	adc	<L17+scrollbar_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pei	<L17+cGadget_1
	pea	#^L15+86
	pea	#<L15+86
	pei	<L17+hWnd_1+2
	pei	<L17+hWnd_1
	jsl	~~k_user_DrawWindowTextToPointWithFont
;
;			}
	.line	195
;			break;
L10022:
	.line	196
	brl	L10017
;		case FX_REDRAW_WINDOW:
	.line	197
L10023:
;			k_debug_string("vscrollbarWindowProc::FX_REDRAW_WINDOW\r\n");
	.line	198
	pea	#^L15+88
	pea	#<L15+88
	jsl	~~k_debug_string
;			break;
	.line	199
	brl	L10017
;
;		case FX_LBUTTON_DOWN:
	.line	201
L10024:
;			k_debug_string("vscrollbarWindowProc::FX_LBUTTON_DOWN\r\n");
	.line	202
	pea	#^L15+129
	pea	#<L15+129
	jsl	~~k_debug_string
;
;
;			cy = *((INT*)&pMsg->data[3]) - pWin->win_y;
	.line	205
	sec
	ldy	#$19
	lda	[<L16+pMsg_0],Y
	ldy	#$a
	sbc	[<L17+pWin_1],Y
	sta	<L17+cy_1
;
;			if(cy > 0 &&  cy < FONTW)
	.line	207
;			{
	sec
	lda	#$0
	sbc	<L17+cy_1
	bvs	L23
	eor	#$8000
L23:
	bpl	L24
	brl	L10025
L24:
	jsl	~~k_font_getFontWidth
	sta	<R0
	lda	<L17+cy_1
	cmp	<R0
	bcc	L25
	brl	L10025
L25:
	.line	208
;				k_debug_integer("vscrollbarWindowProc::LEFT ARROW:",cx);
	.line	209
	pei	<L17+cx_1
	pea	#^L15+169
	pea	#<L15+169
	jsl	~~k_debug_integer
;				rect.x = 0;
	.line	210
	stz	<L17+rect_1
;				rect.y = 0;
	.line	211
	stz	<L17+rect_1+2
;				k_user_DrawWindowTextToPointWithFont(hWnd,"\xAF",cMenu,&rect,pFont);
	.line	212
	pei	<L17+pFont_1+2
	pei	<L17+pFont_1
	pea	#0
	clc
	tdc
	adc	#<L17+rect_1
	pha
	pei	<L17+cMenu_1
	pea	#^L15+203
	pea	#<L15+203
	pei	<L17+hWnd_1+2
	pei	<L17+hWnd_1
	jsl	~~k_user_DrawWindowTextToPointWithFont
;				k_user_DrawWindowTextToPointWithFont(hWnd,"\xB2",cGadget,&rect,pFont);
	.line	213
	pei	<L17+pFont_1+2
	pei	<L17+pFont_1
	pea	#0
	clc
	tdc
	adc	#<L17+rect_1
	pha
	pei	<L17+cGadget_1
	pea	#^L15+205
	pea	#<L15+205
	pei	<L17+hWnd_1+2
	pei	<L17+hWnd_1
	jsl	~~k_user_DrawWindowTextToPointWithFont
;				scrollbar->location--;
	.line	214
	clc
	lda	#$ffff
	ldy	#$8
	adc	[<L17+scrollbar_1],Y
	ldy	#$8
	sta	[<L17+scrollbar_1],Y
;				if(scrollbar->location < 0)
	.line	215
;					scrollbar->location = 0;
	ldy	#$8
	lda	[<L17+scrollbar_1],Y
	bmi	L26
	brl	L10026
L26:
	.line	216
	lda	#$0
	ldy	#$8
	sta	[<L17+scrollbar_1],Y
;
;				direction = 0L;
L10026:
	.line	218
	stz	<L17+direction_1
	stz	<L17+direction_1+2
;			}
	.line	219
;			else if(cy > (pWin->win_height - FONTW) &&  cy < (pWin->win_height))
	brl	L10027
L10025:
	.line	220
;			{
	jsl	~~k_font_getFontWidth
	sta	<R0
	sec
	ldy	#$e
	lda	[<L17+pWin_1],Y
	sbc	<R0
	sta	<R1
	lda	<R1
	cmp	<L17+cy_1
	bcc	L27
	brl	L10028
L27:
	sec
	lda	<L17+cy_1
	ldy	#$e
	sbc	[<L17+pWin_1],Y
	bvs	L28
	eor	#$8000
L28:
	bpl	L29
	brl	L10028
L29:
	.line	221
;				k_debug_integer("vscrollbarWindowProc::RIGHT ARROW:",cx);
	.line	222
	pei	<L17+cx_1
	pea	#^L15+207
	pea	#<L15+207
	jsl	~~k_debug_integer
;				rect.x = 0;
	.line	223
	stz	<L17+rect_1
;				rect.y = pWin->win_height - FONTW - 1;
	.line	224
	jsl	~~k_font_getFontWidth
	sta	<R0
	sec
	ldy	#$e
	lda	[<L17+pWin_1],Y
	sbc	<R0
	sta	<R1
	clc
	lda	#$ffff
	adc	<R1
	sta	<L17+rect_1+2
;				k_user_DrawWindowTextToPointWithFont(hWnd,"\xAF",cMenu,&rect,pFont);
	.line	225
	pei	<L17+pFont_1+2
	pei	<L17+pFont_1
	pea	#0
	clc
	tdc
	adc	#<L17+rect_1
	pha
	pei	<L17+cMenu_1
	pea	#^L15+242
	pea	#<L15+242
	pei	<L17+hWnd_1+2
	pei	<L17+hWnd_1
	jsl	~~k_user_DrawWindowTextToPointWithFont
;				k_user_DrawWindowTextToPointWithFont(hWnd,"\xB3",cGadget,&rect,pFont);
	.line	226
	pei	<L17+pFont_1+2
	pei	<L17+pFont_1
	pea	#0
	clc
	tdc
	adc	#<L17+rect_1
	pha
	pei	<L17+cGadget_1
	pea	#^L15+244
	pea	#<L15+244
	pei	<L17+hWnd_1+2
	pei	<L17+hWnd_1
	jsl	~~k_user_DrawWindowTextToPointWithFont
;				scrollbar->location++;
	.line	227
	ldy	#$8
	lda	[<L17+scrollbar_1],Y
	ina
	ldy	#$8
	sta	[<L17+scrollbar_1],Y
;				if(scrollbar->location > (scrollbar->increment ))
	.line	228
;					scrollbar->location =  scrollbar->increment;
	ldy	#$4
	lda	[<L17+scrollbar_1],Y
	ldy	#$8
	cmp	[<L17+scrollbar_1],Y
	bcc	L30
	brl	L10029
L30:
	.line	229
	ldy	#$4
	lda	[<L17+scrollbar_1],Y
	ldy	#$8
	sta	[<L17+scrollbar_1],Y
;
;				direction = 1L;
L10029:
	.line	231
	lda	#$1
	sta	<L17+direction_1
	lda	#$0
	sta	<L17+direction_1+2
;			}
	.line	232
;
;			k_user_DrawWindowTextToPointWithFont(hWnd,"\xAF",cMenu,&scrollbar->rectThumb,pFont);
L10028:
L10027:
	.line	234
	pei	<L17+pFont_1+2
	pei	<L17+pFont_1
	clc
	lda	#$c
	adc	<L17+scrollbar_1
	sta	<R0
	lda	#$0
	adc	<L17+scrollbar_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pei	<L17+cMenu_1
	pea	#^L15+246
	pea	#<L15+246
	pei	<L17+hWnd_1+2
	pei	<L17+hWnd_1
	jsl	~~k_user_DrawWindowTextToPointWithFont
;
;			scrollbar->rectThumb.y =  (scrollbar->stopsize * scrollbar->location) + FONTW;
	.line	236
	ldy	#$8
	lda	[<L17+scrollbar_1],Y
	tax
	ldy	#$6
	lda	[<L17+scrollbar_1],Y
	xref	~~~mul
	jsl	~~~mul
	sta	<R0
	jsl	~~k_font_getFontWidth
	sta	<R1
	clc
	lda	<R1
	adc	<R0
	ldy	#$e
	sta	[<L17+scrollbar_1],Y
;
;			if(scrollbar->rectThumb.y > (pWin->win_height - (2*FONTW) -1 ))
	.line	238
;				scrollbar->rectThumb.y = (pWin->win_height - (2*FONTW) -1 );
	jsl	~~k_font_getFontWidth
	sta	<R1
	lda	<R1
	asl	A
	sta	<R0
	sec
	ldy	#$e
	lda	[<L17+pWin_1],Y
	sbc	<R0
	sta	<R1
	clc
	lda	#$ffff
	adc	<R1
	sta	<R0
	lda	<R0
	ldy	#$e
	cmp	[<L17+scrollbar_1],Y
	bcc	L31
	brl	L10030
L31:
	.line	239
	jsl	~~k_font_getFontWidth
	sta	<R1
	lda	<R1
	asl	A
	sta	<R0
	sec
	ldy	#$e
	lda	[<L17+pWin_1],Y
	sbc	<R0
	sta	<R1
	clc
	lda	#$ffff
	adc	<R1
	ldy	#$e
	sta	[<L17+scrollbar_1],Y
;
;
;			if(scrollbar->rectThumb.y < FONTW)
L10030:
	.line	242
;				scrollbar->rectThumb.y = FONTW;
	jsl	~~k_font_getFontWidth
	sta	<R0
	ldy	#$e
	lda	[<L17+scrollbar_1],Y
	cmp	<R0
	bcc	L32
	brl	L10031
L32:
	.line	243
	jsl	~~k_font_getFontWidth
	ldy	#$e
	sta	[<L17+scrollbar_1],Y
;
;			scrollbar->rectThumb.x = 0;
L10031:
	.line	245
	lda	#$0
	ldy	#$c
	sta	[<L17+scrollbar_1],Y
;
;
;			k_debug_integer("vscrollbarWindowProc::pWin->win_height:",pWin->win_height);
	.line	248
	ldy	#$e
	lda	[<L17+pWin_1],Y
	pha
	pea	#^L15+248
	pea	#<L15+248
	jsl	~~k_debug_integer
;			k_debug_integer("vscrollbarWindowProc::scrollbar->rectThumb.x:",scrollbar->rectThumb.x);
	.line	249
	ldy	#$c
	lda	[<L17+scrollbar_1],Y
	pha
	pea	#^L15+288
	pea	#<L15+288
	jsl	~~k_debug_integer
;			k_debug_integer("vscrollbarWindowProc::location:",scrollbar->location);
	.line	250
	ldy	#$8
	lda	[<L17+scrollbar_1],Y
	pha
	pea	#^L15+334
	pea	#<L15+334
	jsl	~~k_debug_integer
;			k_debug_integer("vscrollbarWindowProc::increment:",scrollbar->increment);
	.line	251
	ldy	#$4
	lda	[<L17+scrollbar_1],Y
	pha
	pea	#^L15+366
	pea	#<L15+366
	jsl	~~k_debug_integer
;			k_debug_integer("vscrollbarWindowProc::offset:",scrollbar->rectThumb.x);
	.line	252
	ldy	#$c
	lda	[<L17+scrollbar_1],Y
	pha
	pea	#^L15+399
	pea	#<L15+399
	jsl	~~k_debug_integer
;
;			k_user_DrawWindowTextToPointWithFont(hWnd,"\xBD",cGadget,&scrollbar->rectThumb,pFont);
	.line	254
	pei	<L17+pFont_1+2
	pei	<L17+pFont_1
	clc
	lda	#$c
	adc	<L17+scrollbar_1
	sta	<R0
	lda	#$0
	adc	<L17+scrollbar_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pei	<L17+cGadget_1
	pea	#^L15+429
	pea	#<L15+429
	pei	<L17+hWnd_1+2
	pei	<L17+hWnd_1
	jsl	~~k_user_DrawWindowTextToPointWithFont
;
;
;			//k_debug_strings("hscrollbarWindowProc::send parent:",k_getWindowFromHandle(pWin->pParentWindow)->win_title);
;			k_send_command_message(pWin->pParentWindow,FX_SCROLLBAR_COMMAND,CTL_VERT_SCROLL,scrollbar->location,scrollbar->location*scrollbar->increment,direction);
	.line	258
	pei	<L17+direction_1+2
	pei	<L17+direction_1
	ldy	#$4
	lda	[<L17+scrollbar_1],Y
	tax
	ldy	#$8
	lda	[<L17+scrollbar_1],Y
	xref	~~~mul
	jsl	~~~mul
	sta	<R0
	lda	<R0
	sta	<R0
	stz	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$8
	lda	[<L17+scrollbar_1],Y
	pha
	pea	#<$1
	pea	#<$fa02
	ldy	#$132
	lda	[<L17+pWin_1],Y
	pha
	ldy	#$130
	lda	[<L17+pWin_1],Y
	pha
	jsl	~~k_send_command_message
;
;
;			break;
	.line	261
	brl	L10017
;
;		case FX_LBUTTON_UP:
	.line	263
L10032:
;			k_debug_string("vscrollbarWindowProc::FX_LBUTTON_UP\r\n");
	.line	264
	pea	#^L15+431
	pea	#<L15+431
	jsl	~~k_debug_string
;
;			rect.x = 0;
	.line	266
	stz	<L17+rect_1
;			rect.y = 0;
	.line	267
	stz	<L17+rect_1+2
;			k_user_DrawWindowTextToPointWithFont(hWnd,"\xAF",cMenu,&rect,pFont);
	.line	268
	pei	<L17+pFont_1+2
	pei	<L17+pFont_1
	pea	#0
	clc
	tdc
	adc	#<L17+rect_1
	pha
	pei	<L17+cMenu_1
	pea	#^L15+469
	pea	#<L15+469
	pei	<L17+hWnd_1+2
	pei	<L17+hWnd_1
	jsl	~~k_user_DrawWindowTextToPointWithFont
;			k_user_DrawWindowTextToPointWithFont(hWnd,"\x9D",cGadget,&rect,pFont);
	.line	269
	pei	<L17+pFont_1+2
	pei	<L17+pFont_1
	pea	#0
	clc
	tdc
	adc	#<L17+rect_1
	pha
	pei	<L17+cGadget_1
	pea	#^L15+471
	pea	#<L15+471
	pei	<L17+hWnd_1+2
	pei	<L17+hWnd_1
	jsl	~~k_user_DrawWindowTextToPointWithFont
;
;			rect.x = 0;
	.line	271
	stz	<L17+rect_1
;			rect.y = pWin->win_height - FONTW - 1;
	.line	272
	jsl	~~k_font_getFontWidth
	sta	<R0
	sec
	ldy	#$e
	lda	[<L17+pWin_1],Y
	sbc	<R0
	sta	<R1
	clc
	lda	#$ffff
	adc	<R1
	sta	<L17+rect_1+2
;			k_user_DrawWindowTextToPointWithFont(hWnd,"\xAF",cMenu,&rect,pFont);
	.line	273
	pei	<L17+pFont_1+2
	pei	<L17+pFont_1
	pea	#0
	clc
	tdc
	adc	#<L17+rect_1
	pha
	pei	<L17+cMenu_1
	pea	#^L15+473
	pea	#<L15+473
	pei	<L17+hWnd_1+2
	pei	<L17+hWnd_1
	jsl	~~k_user_DrawWindowTextToPointWithFont
;			k_user_DrawWindowTextToPointWithFont(hWnd,"\x9E",cGadget,&rect,pFont);
	.line	274
	pei	<L17+pFont_1+2
	pei	<L17+pFont_1
	pea	#0
	clc
	tdc
	adc	#<L17+rect_1
	pha
	pei	<L17+cGadget_1
	pea	#^L15+475
	pea	#<L15+475
	pei	<L17+hWnd_1+2
	pei	<L17+hWnd_1
	jsl	~~k_user_DrawWindowTextToPointWithFont
;
;			k_send_command_message(pWin->pParentWindow,FX_CONTROL_COMMAND,CTL_BUTTON_SELECTED,LOWORD((ULONG)pWin->hMenu),0L,0L);
	.line	276
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	ldy	#$134
	lda	[<L17+pWin_1],Y
	pha
	pea	#<$2
	pea	#<$fa00
	ldy	#$132
	lda	[<L17+pWin_1],Y
	pha
	ldy	#$130
	lda	[<L17+pWin_1],Y
	pha
	jsl	~~k_send_command_message
;
;			break;
	.line	278
	brl	L10017
;		case FX_MOUSE_ENTER:
	.line	279
L10033:
;			k_debug_string("vscrollbarWindowProc::FX_MOUSE_ENTER\r\n");
	.line	280
	pea	#^L15+477
	pea	#<L15+477
	jsl	~~k_debug_string
;
;			break;
	.line	282
	brl	L10017
;		case FX_MOUSE_EXIT:
	.line	283
L10034:
;			k_debug_string("vscrollbarWindowProc::FX_MOUSE_EXIT\r\n");
	.line	284
	pea	#^L15+516
	pea	#<L15+516
	jsl	~~k_debug_string
;
;			/*
;			rect.x = 0;
;			rect.y = 0;
;			k_user_DrawWindowTextToPointWithFont(hWnd,"\xAF",cMenu,&rect,pFont);
;			k_user_DrawWindowTextToPointWithFont(hWnd,"\x9D",cGadget,&rect,pFont);
;
;			rect.x = 0;
;			rect.y = pWin->win_height - FONTW - 1;
;			k_user_DrawWindowTextToPointWithFont(hWnd,"\xAF",cMenu,&rect,pFont);
;			k_user_DrawWindowTextToPointWithFont(hWnd,"\x9E",cGadget,&rect,pFont);
;
;			*/
;
;			break;
	.line	299
	brl	L10017
;		case FX_MOUSE_MOVE:
	.line	300
L10035:
;			break;
	.line	301
	brl	L10017
;		case FX_CONTROL_COMMAND:
	.line	302
L10036:
;			break;
	.line	303
	brl	L10017
;
;		case FX_SCROLLBAR_COMMAND:
	.line	305
L10037:
;			k_debug_string("vscrollbarWindowProc::FX_CONTROL_COMMAND\r\n");
	.line	306
	pea	#^L15+554
	pea	#<L15+554
	jsl	~~k_debug_string
;
;			processSBCommand(pWin,((PFXCMDMESSAGE)pMsg)->cmdCId,((PFXCMDMESSAGE)pMsg)->cmdMId,((PFXCMDMESSAGE)pMsg)->parameter1);
	.line	308
	ldy	#$1c
	lda	[<L16+pMsg_0],Y
	pha
	ldy	#$1a
	lda	[<L16+pMsg_0],Y
	pha
	ldy	#$18
	lda	[<L16+pMsg_0],Y
	pha
	ldy	#$16
	lda	[<L16+pMsg_0],Y
	pha
	pei	<L17+pWin_1+2
	pei	<L17+pWin_1
	jsl	~~processSBCommand
;
;			break;
	.line	310
	brl	L10017
;		default:
	.line	311
L10038:
;			DefWindowProc(pMsg);
	.line	312
	pei	<L16+pMsg_0+2
	pei	<L16+pMsg_0
	jsl	~~DefWindowProc
;			break;
	.line	313
	brl	L10017
;		}
	.line	314
L10016:
	xref	~~~swt
	jsl	~~~swt
	dw	10
	dw	3841
	dw	L10033-1
	dw	3842
	dw	L10034-1
	dw	3843
	dw	L10035-1
	dw	3844
	dw	L10024-1
	dw	3846
	dw	L10032-1
	dw	64000
	dw	L10036-1
	dw	64002
	dw	L10037-1
	dw	64256
	dw	L10021-1
	dw	64263
	dw	L10023-1
	dw	65283
	dw	L10018-1
	dw	L10038-1
L10017:
;	}
	.line	315
;
;	return TRUE;
L10015:
	.line	317
	lda	#$1
L33:
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
	.line	318
	.endblock	318
L16	equ	58
L17	equ	17
	ends
	efunc
	.endfunc	318,17,58
	.line	318
	data
L15:
	db	$46,$58,$4F,$53,$38,$78,$38,$00,$76,$73,$63,$72,$6F,$6C,$6C
	db	$62,$61,$72,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A
	db	$73,$74,$6F,$70,$73,$69,$7A,$65,$3A,$00,$76,$73,$63,$72,$6F
	db	$6C,$6C,$62,$61,$72,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63
	db	$3A,$3A,$46,$58,$5F,$44,$52,$41,$57,$5F,$57,$49,$4E,$44,$4F
	db	$57,$3A,$00,$FFFFFFAF,$00,$FFFFFF9D,$00,$FFFFFFAF,$00,$FFFFFF9E,$00,$FFFFFFBD,$00,$76,$73
	db	$63,$72,$6F,$6C,$6C,$62,$61,$72,$57,$69,$6E,$64,$6F,$77,$50
	db	$72,$6F,$63,$3A,$3A,$46,$58,$5F,$52,$45,$44,$52,$41,$57,$5F
	db	$57,$49,$4E,$44,$4F,$57,$0D,$0A,$00,$76,$73,$63,$72,$6F,$6C
	db	$6C,$62,$61,$72,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A
	db	$3A,$46,$58,$5F,$4C,$42,$55,$54,$54,$4F,$4E,$5F,$44,$4F,$57
	db	$4E,$0D,$0A,$00,$76,$73,$63,$72,$6F,$6C,$6C,$62,$61,$72,$57
	db	$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$4C,$45,$46,$54
	db	$20,$41,$52,$52,$4F,$57,$3A,$00,$FFFFFFAF,$00,$FFFFFFB2,$00,$76,$73,$63
	db	$72,$6F,$6C,$6C,$62,$61,$72,$57,$69,$6E,$64,$6F,$77,$50,$72
	db	$6F,$63,$3A,$3A,$52,$49,$47,$48,$54,$20,$41,$52,$52,$4F,$57
	db	$3A,$00,$FFFFFFAF,$00,$FFFFFFB3,$00,$FFFFFFAF,$00,$76,$73,$63,$72,$6F,$6C,$6C
	db	$62,$61,$72,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A
	db	$70,$57,$69,$6E,$2D,$3E,$77,$69,$6E,$5F,$68,$65,$69,$67,$68
	db	$74,$3A,$00,$76,$73,$63,$72,$6F,$6C,$6C,$62,$61,$72,$57,$69
	db	$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$73,$63,$72,$6F,$6C
	db	$6C,$62,$61,$72,$2D,$3E,$72,$65,$63,$74,$54,$68,$75,$6D,$62
	db	$2E,$78,$3A,$00,$76,$73,$63,$72,$6F,$6C,$6C,$62,$61,$72,$57
	db	$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$6C,$6F,$63,$61
	db	$74,$69,$6F,$6E,$3A,$00,$76,$73,$63,$72,$6F,$6C,$6C,$62,$61
	db	$72,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$69,$6E
	db	$63,$72,$65,$6D,$65,$6E,$74,$3A,$00,$76,$73,$63,$72,$6F,$6C
	db	$6C,$62,$61,$72,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A
	db	$3A,$6F,$66,$66,$73,$65,$74,$3A,$00,$FFFFFFBD,$00,$76,$73,$63,$72
	db	$6F,$6C,$6C,$62,$61,$72,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F
	db	$63,$3A,$3A,$46,$58,$5F,$4C,$42,$55,$54,$54,$4F,$4E,$5F,$55
	db	$50,$0D,$0A,$00,$FFFFFFAF,$00,$FFFFFF9D,$00,$FFFFFFAF,$00,$FFFFFF9E,$00,$76,$73,$63
	db	$72,$6F,$6C,$6C,$62,$61,$72,$57,$69,$6E,$64,$6F,$77,$50,$72
	db	$6F,$63,$3A,$3A,$46,$58,$5F,$4D,$4F,$55,$53,$45,$5F,$45,$4E
	db	$54,$45,$52,$0D,$0A,$00,$76,$73,$63,$72,$6F,$6C,$6C,$62,$61
	db	$72,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46,$58
	db	$5F,$4D,$4F,$55,$53,$45,$5F,$45,$58,$49,$54,$0D,$0A,$00,$76
	db	$73,$63,$72,$6F,$6C,$6C,$62,$61,$72,$57,$69,$6E,$64,$6F,$77
	db	$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$43,$4F,$4E,$54,$52,$4F
	db	$4C,$5F,$43,$4F,$4D,$4D,$41,$4E,$44,$0D,$0A,$00
	ends
;
;PWINDOW	k_user_CreateHorizontalScrollbar(HWND hWndParent,LPCSTR caption,UINT buttonId)
;{
	.line	320
	.line	321
	code
	xdef	~~k_user_CreateHorizontalScrollbar
	func
	.function	321
~~k_user_CreateHorizontalScrollbar:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L35
	tcs
	phd
	tcd
hWndParent_0	set	4
caption_0	set	8
buttonId_0	set	12
	.block	321
;	PWINDOW pWin = NULL;
;	PWINDOW pParent = NULL;
;
;	int x;
;	int y;
;	int width;
;	int height;
;
;	pParent = k_getWindowFromHandle(hWndParent);
pWin_1	set	0
pParent_1	set	4
x_1	set	8
y_1	set	10
width_1	set	12
height_1	set	14
	.sym	pWin,0,138,1,32,27
	.sym	pParent,4,138,1,32,27
	.sym	x,8,5,1,16
	.sym	y,10,5,1,16
	.sym	width,12,5,1,16
	.sym	height,14,5,1,16
	.sym	hWndParent,4,129,6,32
	.sym	caption,8,142,6,32
	.sym	buttonId,12,16,6,16
	stz	<L36+pWin_1
	stz	<L36+pWin_1+2
	stz	<L36+pParent_1
	stz	<L36+pParent_1+2
	.line	330
	pei	<L35+hWndParent_0+2
	pei	<L35+hWndParent_0
	jsl	~~k_getWindowFromHandle
	sta	<L36+pParent_1
	stx	<L36+pParent_1+2
;
;
;	x = 0;
	.line	333
	stz	<L36+x_1
;	width = pParent->win_width;
	.line	334
	ldy	#$c
	lda	[<L36+pParent_1],Y
	sta	<L36+width_1
;
;
;	height = k_user_getSystemMetric(SM_CYHSCROLL);
	.line	337
	pea	#<$3
	jsl	~~k_user_getSystemMetric
	sta	<L36+height_1
;	y = pParent->win_height - height;
	.line	338
	sec
	ldy	#$e
	lda	[<L36+pParent_1],Y
	sbc	<L36+height_1
	sta	<L36+y_1
;
;
;
;
;	k_debug_integer("k_user_CreateHorizontalScrollbar:cx:",x);
	.line	343
	pei	<L36+x_1
	pea	#^L34
	pea	#<L34
	jsl	~~k_debug_integer
;	k_debug_integer("k_user_CreateHorizontalScrollbar:cy:",y);
	.line	344
	pei	<L36+y_1
	pea	#^L34+37
	pea	#<L34+37
	jsl	~~k_debug_integer
;	k_debug_integer("k_user_CreateHorizontalScrollbar:width:",width);
	.line	345
	pei	<L36+width_1
	pea	#^L34+74
	pea	#<L34+74
	jsl	~~k_debug_integer
;	k_debug_integer("k_user_CreateHorizontalScrollbar:height:",height);
	.line	346
	pei	<L36+height_1
	pea	#^L34+114
	pea	#<L34+114
	jsl	~~k_debug_integer
;
;	pWin = k_user_CreateWindow(FXWS_VISIBLE,
	.line	348
;							   "hscrollWindowClass",
;								caption,
;								x,y,
;								width,height,
;								hWndParent,
;								(HMENU)buttonId,
;								NULL);
	pea	#^$0
	pea	#<$0
	ldy	#$0
	lda	<L35+buttonId_0
	bpl	L38
	dey
L38:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	pei	<L35+hWndParent_0+2
	pei	<L35+hWndParent_0
	pei	<L36+height_1
	pei	<L36+width_1
	pei	<L36+y_1
	pei	<L36+x_1
	pei	<L35+caption_0+2
	pei	<L35+caption_0
	pea	#^L34+155
	pea	#<L34+155
	pea	#^$1
	pea	#<$1
	jsl	~~k_user_CreateWindow
	sta	<L36+pWin_1
	stx	<L36+pWin_1+2
;
;	if(pWin)
	.line	357
;	{
	lda	<L36+pWin_1
	ora	<L36+pWin_1+2
	bne	L39
	brl	L10039
L39:
	.line	358
;		//k_add_child_window(k_getWindowFromHandle(hWndParent),pWin,k_update_hover_location);//k_buttonHitDetected);
;
;		//k_debug_strings("k_user_CreateButton:","k_send_window_message");
;		k_send_window_message(k_getHandleFromWindow(pWin),FX_CREATE_WINDOW,NULL,0);
	.line	362
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$ff03
	pei	<L36+pWin_1+2
	pei	<L36+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_send_window_message
;		//k_debug_strings("k_user_CreateButton:","k_send_command_message");
;		//k_send_command_message(k_getHandleFromWindow(pWin),FX_CONTROL_COMMAND,CTL_CMD_CAPTION,0,(ULONG)k_string_copy_string(caption),0L);
;
;	}
	.line	366
;
;	//k_debug_strings("k_user_CreateButton:","Exit");
;
;	return pWin;
L10039:
	.line	370
	ldx	<L36+pWin_1+2
	lda	<L36+pWin_1
L40:
	tay
	lda	<L35+2
	sta	<L35+2+10
	lda	<L35+1
	sta	<L35+1+10
	pld
	tsc
	clc
	adc	#L35+10
	tcs
	tya
	rtl
;}
	.line	371
	.endblock	371
L35	equ	20
L36	equ	5
	ends
	efunc
	.endfunc	371,5,20
	.line	371
	data
L34:
	db	$6B,$5F,$75,$73,$65,$72,$5F,$43,$72,$65,$61,$74,$65,$48,$6F
	db	$72,$69,$7A,$6F,$6E,$74,$61,$6C,$53,$63,$72,$6F,$6C,$6C,$62
	db	$61,$72,$3A,$63,$78,$3A,$00,$6B,$5F,$75,$73,$65,$72,$5F,$43
	db	$72,$65,$61,$74,$65,$48,$6F,$72,$69,$7A,$6F,$6E,$74,$61,$6C
	db	$53,$63,$72,$6F,$6C,$6C,$62,$61,$72,$3A,$63,$79,$3A,$00,$6B
	db	$5F,$75,$73,$65,$72,$5F,$43,$72,$65,$61,$74,$65,$48,$6F,$72
	db	$69,$7A,$6F,$6E,$74,$61,$6C,$53,$63,$72,$6F,$6C,$6C,$62,$61
	db	$72,$3A,$77,$69,$64,$74,$68,$3A,$00,$6B,$5F,$75,$73,$65,$72
	db	$5F,$43,$72,$65,$61,$74,$65,$48,$6F,$72,$69,$7A,$6F,$6E,$74
	db	$61,$6C,$53,$63,$72,$6F,$6C,$6C,$62,$61,$72,$3A,$68,$65,$69
	db	$67,$68,$74,$3A,$00,$68,$73,$63,$72,$6F,$6C,$6C,$57,$69,$6E
	db	$64,$6F,$77,$43,$6C,$61,$73,$73,$00
	ends
;
;BOOL hscrollbarWindowProc(PFXOSMESSAGE pMsg)
;{
	.line	373
	.line	374
	code
	xdef	~~hscrollbarWindowProc
	func
	.function	374
~~hscrollbarWindowProc:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L42
	tcs
	phd
	tcd
pMsg_0	set	4
	.block	374
;	PFXPROCESS p = NULL;
;	PWINDOW	   pWin = NULL;
;	PSCROLLBAR	   scrollbar = NULL;
;	UINT	   size = 0;
;	RECT rect;
;	INT cx,cy;
;
;	if(pMsg!=NULL)
p_1	set	0
pWin_1	set	4
scrollbar_1	set	8
size_1	set	12
rect_1	set	14
cx_1	set	22
cy_1	set	24
	.sym	p,0,138,1,32,17
	.sym	pWin,4,138,1,32,27
	.sym	scrollbar,8,138,1,32,35
	.sym	size,12,16,1,16
	.sym	rect,14,10,1,64,22
	.sym	cx,22,5,1,16
	.sym	cy,24,5,1,16
	.sym	pMsg,4,138,6,32,13
	stz	<L43+p_1
	stz	<L43+p_1+2
	stz	<L43+pWin_1
	stz	<L43+pWin_1+2
	stz	<L43+scrollbar_1
	stz	<L43+scrollbar_1+2
	stz	<L43+size_1
	.line	382
;	{
	lda	<L42+pMsg_0
	ora	<L42+pMsg_0+2
	bne	L45
	brl	L10040
L45:
	.line	383
;		p = k_exec_get_current_process();
	.line	384
	jsl	~~k_exec_get_current_process
	sta	<L43+p_1
	stx	<L43+p_1+2
;		pWin = k_getWindowFromHandle(pMsg->hwnd);
	.line	385
	ldy	#$c
	lda	[<L42+pMsg_0],Y
	pha
	ldy	#$a
	lda	[<L42+pMsg_0],Y
	pha
	jsl	~~k_getWindowFromHandle
	sta	<L43+pWin_1
	stx	<L43+pWin_1+2
;		scrollbar = ((PSCROLLBAR)pWin->windowData);
	.line	386
	ldy	#$141
	lda	[<L43+pWin_1],Y
	sta	<L43+scrollbar_1
	ldy	#$143
	lda	[<L43+pWin_1],Y
	sta	<L43+scrollbar_1+2
;		//k_debug_long("consoleWindowProc::ProcessId:",p->procId);
;
;		switch(pMsg->type)
	.line	389
	ldy	#$8
	lda	[<L42+pMsg_0],Y
	brl	L10041
;		{
	.line	390
;		case FX_CREATE_WINDOW:
	.line	391
L10043:
;			//k_debug_long("buttonWindowProc::ProcessId:",p->procId);
;			//k_debug_string("buttonWindowProc::FX_CREATE_WINDOW\r\n");
;
;			pWin->windowData = k_mem_allocate_heap(sizeof(SCROLLBAR));
	.line	395
	pea	#<$18
	jsl	~~k_mem_allocate_heap
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$141
	sta	[<L43+pWin_1],Y
	lda	<R0+2
	ldy	#$143
	sta	[<L43+pWin_1],Y
;
;
;			((PSCROLLBAR)pWin->windowData)->max = 100;
	.line	398
	ldy	#$141
	lda	[<L43+pWin_1],Y
	sta	<R0
	ldy	#$143
	lda	[<L43+pWin_1],Y
	sta	<R0+2
	lda	#$64
	ldy	#$2
	sta	[<R0],Y
;			((PSCROLLBAR)pWin->windowData)->min = 0;
	.line	399
	ldy	#$141
	lda	[<L43+pWin_1],Y
	sta	<R0
	ldy	#$143
	lda	[<L43+pWin_1],Y
	sta	<R0+2
	lda	#$0
	sta	[<R0]
;			((PSCROLLBAR)pWin->windowData)->increment = 10;
	.line	400
	ldy	#$141
	lda	[<L43+pWin_1],Y
	sta	<R0
	ldy	#$143
	lda	[<L43+pWin_1],Y
	sta	<R0+2
	lda	#$a
	ldy	#$4
	sta	[<R0],Y
;			((PSCROLLBAR)pWin->windowData)->location = 0;
	.line	401
	ldy	#$141
	lda	[<L43+pWin_1],Y
	sta	<R0
	ldy	#$143
	lda	[<L43+pWin_1],Y
	sta	<R0+2
	lda	#$0
	ldy	#$8
	sta	[<R0],Y
;
;
;			((PSCROLLBAR)pWin->windowData)->rectThumb.x = 0;
	.line	404
	ldy	#$141
	lda	[<L43+pWin_1],Y
	sta	<R0
	ldy	#$143
	lda	[<L43+pWin_1],Y
	sta	<R0+2
	lda	#$0
	ldy	#$c
	sta	[<R0],Y
;			((PSCROLLBAR)pWin->windowData)->rectThumb.y = 0;
	.line	405
	ldy	#$141
	lda	[<L43+pWin_1],Y
	sta	<R0
	ldy	#$143
	lda	[<L43+pWin_1],Y
	sta	<R0+2
	lda	#$0
	ldy	#$e
	sta	[<R0],Y
;			((PSCROLLBAR)pWin->windowData)->rectThumb.width = 0;
	.line	406
	ldy	#$141
	lda	[<L43+pWin_1],Y
	sta	<R0
	ldy	#$143
	lda	[<L43+pWin_1],Y
	sta	<R0+2
	lda	#$0
	ldy	#$10
	sta	[<R0],Y
;			((PSCROLLBAR)pWin->windowData)->rectThumb.height = 0;
	.line	407
	ldy	#$141
	lda	[<L43+pWin_1],Y
	sta	<R0
	ldy	#$143
	lda	[<L43+pWin_1],Y
	sta	<R0+2
	lda	#$0
	ldy	#$12
	sta	[<R0],Y
;
;
;			((PSCROLLBAR)pWin->windowData)->stopsize = (pWin->win_width - 2*FONTW) / (((PSCROLLBAR)pWin->windowData)->max / ((PSCROLLBAR)pWin->windowData)->increment);
	.line	410
	ldy	#$141
	lda	[<L43+pWin_1],Y
	sta	<R0
	ldy	#$143
	lda	[<L43+pWin_1],Y
	sta	<R0+2
	ldy	#$141
	lda	[<L43+pWin_1],Y
	sta	<R1
	ldy	#$143
	lda	[<L43+pWin_1],Y
	sta	<R1+2
	ldy	#$141
	lda	[<L43+pWin_1],Y
	sta	<R2
	ldy	#$143
	lda	[<L43+pWin_1],Y
	sta	<R2+2
	ldy	#$4
	lda	[<R1],Y
	tax
	ldy	#$2
	lda	[<R2],Y
	xref	~~~udv
	jsl	~~~udv
	sta	<R1
	jsl	~~k_font_getFontWidth
	sta	<R3
	lda	<R3
	asl	A
	sta	<R2
	sec
	ldy	#$c
	lda	[<L43+pWin_1],Y
	sbc	<R2
	sta	<R3
	lda	<R3
	ldx	<R1
	xref	~~~udv
	jsl	~~~udv
	ldy	#$6
	sta	[<R0],Y
;
;			k_debug_integer("hscrollbarWindowProc::stopsize:",((PSCROLLBAR)pWin->windowData)->stopsize);
	.line	412
	ldy	#$141
	lda	[<L43+pWin_1],Y
	sta	<R0
	ldy	#$143
	lda	[<L43+pWin_1],Y
	sta	<R0+2
	ldy	#$6
	lda	[<R0],Y
	pha
	pea	#^L41
	pea	#<L41
	jsl	~~k_debug_integer
;			/*
;			k_vdraw_ui_window(pWin,
;							  pWin->style,
;							  pWin->win_x ,pWin->win_y,
;							  pWin->win_height,pWin->win_width,
;							  pWin->win_title,
;							  k_getUIGadgetColor(), k_getUIMenuColor());
;
;			*/
;			break;
	.line	422
	brl	L10042
;		case FX_DRAW_WINDOW:
	.line	423
L10044:
;			k_debug_pointer("hscrollbarWindowProc::FX_DRAW_WINDOW:",scrollbar);
	.line	424
	pei	<L43+scrollbar_1+2
	pei	<L43+scrollbar_1
	pea	#^L41+32
	pea	#<L41+32
	jsl	~~k_debug_pointer
;			if(scrollbar)
	.line	425
;			{
	lda	<L43+scrollbar_1
	ora	<L43+scrollbar_1+2
	bne	L46
	brl	L10045
L46:
	.line	426
;				k_vdraw_ui_window(pWin,pWin->style,
	.line	427
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
	adc	<L43+pWin_1
	sta	<R0
	lda	#$0
	adc	<L43+pWin_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$c
	lda	[<L43+pWin_1],Y
	pha
	ldy	#$e
	lda	[<L43+pWin_1],Y
	pha
	ldy	#$a
	lda	[<L43+pWin_1],Y
	pha
	ldy	#$8
	lda	[<L43+pWin_1],Y
	pha
	ldy	#$4
	lda	[<L43+pWin_1],Y
	pha
	ldy	#$2
	lda	[<L43+pWin_1],Y
	pha
	pei	<L43+pWin_1+2
	pei	<L43+pWin_1
	jsl	~~k_vdraw_ui_window
;
;
;				rect.x = 0;
	.line	434
	stz	<L43+rect_1
;				rect.y = 1;
	.line	435
	lda	#$1
	sta	<L43+rect_1+2
;				k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\xAF",k_getUIMenuColor(),&rect,(LPCSTR)k_user_getFontClass("FXOS8x8"));
	.line	436
	pea	#^L41+72
	pea	#<L41+72
	jsl	~~k_user_getFontClass
	sta	<R0
	stx	<R0+2
	phx
	pha
	pea	#0
	clc
	tdc
	adc	#<L43+rect_1
	pha
	jsl	~~k_getUIMenuColor
	pha
	pea	#^L41+70
	pea	#<L41+70
	pei	<L43+pWin_1+2
	pei	<L43+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R1
	stx	<R1+2
	phx
	pha
	jsl	~~k_user_DrawWindowTextToPointWithFont
;				k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\x9B",k_getUIGadgetColor(),&rect,(LPCSTR)k_user_getFontClass("FXOS8x8"));
	.line	437
	pea	#^L41+82
	pea	#<L41+82
	jsl	~~k_user_getFontClass
	sta	<R0
	stx	<R0+2
	phx
	pha
	pea	#0
	clc
	tdc
	adc	#<L43+rect_1
	pha
	jsl	~~k_getUIGadgetColor
	pha
	pea	#^L41+80
	pea	#<L41+80
	pei	<L43+pWin_1+2
	pei	<L43+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R1
	stx	<R1+2
	phx
	pha
	jsl	~~k_user_DrawWindowTextToPointWithFont
;
;				rect.x = pWin->win_width - FONTW - 1;
	.line	439
	jsl	~~k_font_getFontWidth
	sta	<R0
	sec
	ldy	#$c
	lda	[<L43+pWin_1],Y
	sbc	<R0
	sta	<R1
	clc
	lda	#$ffff
	adc	<R1
	sta	<L43+rect_1
;				rect.y = 1;
	.line	440
	lda	#$1
	sta	<L43+rect_1+2
;				k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\xAF",k_getUIMenuColor(),&rect,(LPCSTR)k_user_getFontClass("FXOS8x8"));
	.line	441
	pea	#^L41+92
	pea	#<L41+92
	jsl	~~k_user_getFontClass
	sta	<R0
	stx	<R0+2
	phx
	pha
	pea	#0
	clc
	tdc
	adc	#<L43+rect_1
	pha
	jsl	~~k_getUIMenuColor
	pha
	pea	#^L41+90
	pea	#<L41+90
	pei	<L43+pWin_1+2
	pei	<L43+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R1
	stx	<R1+2
	phx
	pha
	jsl	~~k_user_DrawWindowTextToPointWithFont
;				k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\x9C",k_getUIGadgetColor(),&rect,(LPCSTR)k_user_getFontClass("FXOS8x8"));
	.line	442
	pea	#^L41+102
	pea	#<L41+102
	jsl	~~k_user_getFontClass
	sta	<R0
	stx	<R0+2
	phx
	pha
	pea	#0
	clc
	tdc
	adc	#<L43+rect_1
	pha
	jsl	~~k_getUIGadgetColor
	pha
	pea	#^L41+100
	pea	#<L41+100
	pei	<L43+pWin_1+2
	pei	<L43+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R1
	stx	<R1+2
	phx
	pha
	jsl	~~k_user_DrawWindowTextToPointWithFont
;
;				//rect.x = (pWin->win_width/2) - (FONTW/2);
;				//k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\xAF",k_getUIMenuColor(),&scrollbar->rectThumb,(LPCSTR)k_user_getFontClass("FXOS8x8"));
;
;				scrollbar->rectThumb.x =  (scrollbar->stopsize * scrollbar->location) + FONTW;
	.line	447
	ldy	#$8
	lda	[<L43+scrollbar_1],Y
	tax
	ldy	#$6
	lda	[<L43+scrollbar_1],Y
	xref	~~~mul
	jsl	~~~mul
	sta	<R0
	jsl	~~k_font_getFontWidth
	sta	<R1
	clc
	lda	<R1
	adc	<R0
	ldy	#$c
	sta	[<L43+scrollbar_1],Y
;				scrollbar->rectThumb.y = 1;
	.line	448
	lda	#$1
	ldy	#$e
	sta	[<L43+scrollbar_1],Y
;
;				k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\xBD",k_getUIGadgetColor(),&scrollbar->rectThumb,(LPCSTR)k_user_getFontClass("FXOS8x8"));
	.line	450
	pea	#^L41+112
	pea	#<L41+112
	jsl	~~k_user_getFontClass
	sta	<R0
	stx	<R0+2
	phx
	pha
	clc
	lda	#$c
	adc	<L43+scrollbar_1
	sta	<R1
	lda	#$0
	adc	<L43+scrollbar_1+2
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_getUIGadgetColor
	pha
	pea	#^L41+110
	pea	#<L41+110
	pei	<L43+pWin_1+2
	pei	<L43+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R2
	stx	<R2+2
	phx
	pha
	jsl	~~k_user_DrawWindowTextToPointWithFont
;
;
;			}
	.line	453
;			break;
L10045:
	.line	454
	brl	L10042
;		case FX_REDRAW_WINDOW:
	.line	455
L10046:
;			k_debug_string("hscrollbarWindowProc::FX_REDRAW_WINDOW\r\n");
	.line	456
	pea	#^L41+120
	pea	#<L41+120
	jsl	~~k_debug_string
;			break;
	.line	457
	brl	L10042
;
;		case FX_LBUTTON_DOWN:
	.line	459
L10047:
;			k_debug_string("hscrollbarWindowProc::FX_LBUTTON_DOWN\r\n");
	.line	460
	pea	#^L41+161
	pea	#<L41+161
	jsl	~~k_debug_string
;
;
;			cx = *((INT*)&pMsg->data[1]) - pWin->win_x;
	.line	463
	sec
	ldy	#$17
	lda	[<L42+pMsg_0],Y
	ldy	#$8
	sbc	[<L43+pWin_1],Y
	sta	<L43+cx_1
;
;			if(cx > 0 &&  cx < FONTW)
	.line	465
;			{
	sec
	lda	#$0
	sbc	<L43+cx_1
	bvs	L47
	eor	#$8000
L47:
	bpl	L48
	brl	L10048
L48:
	jsl	~~k_font_getFontWidth
	sta	<R0
	lda	<L43+cx_1
	cmp	<R0
	bcc	L49
	brl	L10048
L49:
	.line	466
;				k_debug_integer("hscrollbarWindowProc::LEFT ARROW:",cx);
	.line	467
	pei	<L43+cx_1
	pea	#^L41+201
	pea	#<L41+201
	jsl	~~k_debug_integer
;				rect.x = 0;
	.line	468
	stz	<L43+rect_1
;				rect.y = 1;
	.line	469
	lda	#$1
	sta	<L43+rect_1+2
;				k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\xAF",k_getUIMenuColor(),&rect,(LPCSTR)k_user_getFontClass("FXOS8x8"));
	.line	470
	pea	#^L41+237
	pea	#<L41+237
	jsl	~~k_user_getFontClass
	sta	<R0
	stx	<R0+2
	phx
	pha
	pea	#0
	clc
	tdc
	adc	#<L43+rect_1
	pha
	jsl	~~k_getUIMenuColor
	pha
	pea	#^L41+235
	pea	#<L41+235
	pei	<L43+pWin_1+2
	pei	<L43+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R1
	stx	<R1+2
	phx
	pha
	jsl	~~k_user_DrawWindowTextToPointWithFont
;				k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\xB0",k_getUIGadgetColor(),&rect,(LPCSTR)k_user_getFontClass("FXOS8x8"));
	.line	471
	pea	#^L41+247
	pea	#<L41+247
	jsl	~~k_user_getFontClass
	sta	<R0
	stx	<R0+2
	phx
	pha
	pea	#0
	clc
	tdc
	adc	#<L43+rect_1
	pha
	jsl	~~k_getUIGadgetColor
	pha
	pea	#^L41+245
	pea	#<L41+245
	pei	<L43+pWin_1+2
	pei	<L43+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R1
	stx	<R1+2
	phx
	pha
	jsl	~~k_user_DrawWindowTextToPointWithFont
;				scrollbar->location--;
	.line	472
	clc
	lda	#$ffff
	ldy	#$8
	adc	[<L43+scrollbar_1],Y
	ldy	#$8
	sta	[<L43+scrollbar_1],Y
;				if(scrollbar->location < 0)
	.line	473
;					scrollbar->location = 0;
	ldy	#$8
	lda	[<L43+scrollbar_1],Y
	bmi	L50
	brl	L10049
L50:
	.line	474
	lda	#$0
	ldy	#$8
	sta	[<L43+scrollbar_1],Y
;
;			}
L10049:
	.line	476
;			else if(cx > (pWin->win_width - FONTW) &&  cx < (pWin->win_width))
	brl	L10050
L10048:
	.line	477
;			{
	jsl	~~k_font_getFontWidth
	sta	<R0
	sec
	ldy	#$c
	lda	[<L43+pWin_1],Y
	sbc	<R0
	sta	<R1
	lda	<R1
	cmp	<L43+cx_1
	bcc	L51
	brl	L10051
L51:
	sec
	lda	<L43+cx_1
	ldy	#$c
	sbc	[<L43+pWin_1],Y
	bvs	L52
	eor	#$8000
L52:
	bpl	L53
	brl	L10051
L53:
	.line	478
;				k_debug_integer("hscrollbarWindowProc::RIGHT ARROW:",cx);
	.line	479
	pei	<L43+cx_1
	pea	#^L41+255
	pea	#<L41+255
	jsl	~~k_debug_integer
;				rect.x = pWin->win_width - FONTW - 1;
	.line	480
	jsl	~~k_font_getFontWidth
	sta	<R0
	sec
	ldy	#$c
	lda	[<L43+pWin_1],Y
	sbc	<R0
	sta	<R1
	clc
	lda	#$ffff
	adc	<R1
	sta	<L43+rect_1
;				rect.y = 1;
	.line	481
	lda	#$1
	sta	<L43+rect_1+2
;				k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\xAF",k_getUIMenuColor(),&rect,(LPCSTR)k_user_getFontClass("FXOS8x8"));
	.line	482
	pea	#^L41+292
	pea	#<L41+292
	jsl	~~k_user_getFontClass
	sta	<R0
	stx	<R0+2
	phx
	pha
	pea	#0
	clc
	tdc
	adc	#<L43+rect_1
	pha
	jsl	~~k_getUIMenuColor
	pha
	pea	#^L41+290
	pea	#<L41+290
	pei	<L43+pWin_1+2
	pei	<L43+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R1
	stx	<R1+2
	phx
	pha
	jsl	~~k_user_DrawWindowTextToPointWithFont
;				k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\xB1",k_getUIGadgetColor(),&rect,(LPCSTR)k_user_getFontClass("FXOS8x8"));
	.line	483
	pea	#^L41+302
	pea	#<L41+302
	jsl	~~k_user_getFontClass
	sta	<R0
	stx	<R0+2
	phx
	pha
	pea	#0
	clc
	tdc
	adc	#<L43+rect_1
	pha
	jsl	~~k_getUIGadgetColor
	pha
	pea	#^L41+300
	pea	#<L41+300
	pei	<L43+pWin_1+2
	pei	<L43+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R1
	stx	<R1+2
	phx
	pha
	jsl	~~k_user_DrawWindowTextToPointWithFont
;				scrollbar->location++;
	.line	484
	ldy	#$8
	lda	[<L43+scrollbar_1],Y
	ina
	ldy	#$8
	sta	[<L43+scrollbar_1],Y
;				if(scrollbar->location > (scrollbar->increment ))
	.line	485
;					scrollbar->location =  scrollbar->increment;
	ldy	#$4
	lda	[<L43+scrollbar_1],Y
	ldy	#$8
	cmp	[<L43+scrollbar_1],Y
	bcc	L54
	brl	L10052
L54:
	.line	486
	ldy	#$4
	lda	[<L43+scrollbar_1],Y
	ldy	#$8
	sta	[<L43+scrollbar_1],Y
;			}
L10052:
	.line	487
;
;			k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\xAF",k_getUIMenuColor(),&scrollbar->rectThumb,(LPCSTR)k_user_getFontClass("FXOS8x8"));
L10051:
L10050:
	.line	489
	pea	#^L41+312
	pea	#<L41+312
	jsl	~~k_user_getFontClass
	sta	<R0
	stx	<R0+2
	phx
	pha
	clc
	lda	#$c
	adc	<L43+scrollbar_1
	sta	<R1
	lda	#$0
	adc	<L43+scrollbar_1+2
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_getUIMenuColor
	pha
	pea	#^L41+310
	pea	#<L41+310
	pei	<L43+pWin_1+2
	pei	<L43+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R2
	stx	<R2+2
	phx
	pha
	jsl	~~k_user_DrawWindowTextToPointWithFont
;
;			scrollbar->rectThumb.x =  (scrollbar->stopsize * scrollbar->location) + FONTW;
	.line	491
	ldy	#$8
	lda	[<L43+scrollbar_1],Y
	tax
	ldy	#$6
	lda	[<L43+scrollbar_1],Y
	xref	~~~mul
	jsl	~~~mul
	sta	<R0
	jsl	~~k_font_getFontWidth
	sta	<R1
	clc
	lda	<R1
	adc	<R0
	ldy	#$c
	sta	[<L43+scrollbar_1],Y
;
;			if(scrollbar->rectThumb.x > (pWin->win_width - (2*FONTW) -1 ))
	.line	493
;				scrollbar->rectThumb.x = (pWin->win_width - (2*FONTW) -1 );
	jsl	~~k_font_getFontWidth
	sta	<R1
	lda	<R1
	asl	A
	sta	<R0
	sec
	ldy	#$c
	lda	[<L43+pWin_1],Y
	sbc	<R0
	sta	<R1
	clc
	lda	#$ffff
	adc	<R1
	sta	<R0
	lda	<R0
	ldy	#$c
	cmp	[<L43+scrollbar_1],Y
	bcc	L55
	brl	L10053
L55:
	.line	494
	jsl	~~k_font_getFontWidth
	sta	<R1
	lda	<R1
	asl	A
	sta	<R0
	sec
	ldy	#$c
	lda	[<L43+pWin_1],Y
	sbc	<R0
	sta	<R1
	clc
	lda	#$ffff
	adc	<R1
	ldy	#$c
	sta	[<L43+scrollbar_1],Y
;
;
;			if(scrollbar->rectThumb.x < FONTW)
L10053:
	.line	497
;				scrollbar->rectThumb.x = FONTW;
	jsl	~~k_font_getFontWidth
	sta	<R0
	ldy	#$c
	lda	[<L43+scrollbar_1],Y
	cmp	<R0
	bcc	L56
	brl	L10054
L56:
	.line	498
	jsl	~~k_font_getFontWidth
	ldy	#$c
	sta	[<L43+scrollbar_1],Y
;
;			scrollbar->rectThumb.y = 1;
L10054:
	.line	500
	lda	#$1
	ldy	#$e
	sta	[<L43+scrollbar_1],Y
;
;
;			k_debug_integer("hscrollbarWindowProc::pWin->win_width:",pWin->win_width);
	.line	503
	ldy	#$c
	lda	[<L43+pWin_1],Y
	pha
	pea	#^L41+320
	pea	#<L41+320
	jsl	~~k_debug_integer
;			k_debug_integer("hscrollbarWindowProc::scrollbar->rectThumb.x:",scrollbar->rectThumb.x);
	.line	504
	ldy	#$c
	lda	[<L43+scrollbar_1],Y
	pha
	pea	#^L41+359
	pea	#<L41+359
	jsl	~~k_debug_integer
;			k_debug_integer("hscrollbarWindowProc::location:",scrollbar->location);
	.line	505
	ldy	#$8
	lda	[<L43+scrollbar_1],Y
	pha
	pea	#^L41+405
	pea	#<L41+405
	jsl	~~k_debug_integer
;			k_debug_integer("hscrollbarWindowProc::increment:",scrollbar->increment);
	.line	506
	ldy	#$4
	lda	[<L43+scrollbar_1],Y
	pha
	pea	#^L41+437
	pea	#<L41+437
	jsl	~~k_debug_integer
;			k_debug_integer("hscrollbarWindowProc::offset:",scrollbar->rectThumb.x);
	.line	507
	ldy	#$c
	lda	[<L43+scrollbar_1],Y
	pha
	pea	#^L41+470
	pea	#<L41+470
	jsl	~~k_debug_integer
;
;			k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\xBD",k_getUIGadgetColor(),&scrollbar->rectThumb,(LPCSTR)k_user_getFontClass("FXOS8x8"));
	.line	509
	pea	#^L41+502
	pea	#<L41+502
	jsl	~~k_user_getFontClass
	sta	<R0
	stx	<R0+2
	phx
	pha
	clc
	lda	#$c
	adc	<L43+scrollbar_1
	sta	<R1
	lda	#$0
	adc	<L43+scrollbar_1+2
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_getUIGadgetColor
	pha
	pea	#^L41+500
	pea	#<L41+500
	pei	<L43+pWin_1+2
	pei	<L43+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R2
	stx	<R2+2
	phx
	pha
	jsl	~~k_user_DrawWindowTextToPointWithFont
;
;
;			//k_debug_strings("hscrollbarWindowProc::send parent:",k_getWindowFromHandle(pWin->pParentWindow)->win_title);
;			k_send_command_message(pWin->pParentWindow,FX_SCROLLBAR_COMMAND,CTL_HORZ_SCROLL,scrollbar->location,scrollbar->location*scrollbar->increment,0L);
	.line	513
	pea	#^$0
	pea	#<$0
	ldy	#$4
	lda	[<L43+scrollbar_1],Y
	tax
	ldy	#$8
	lda	[<L43+scrollbar_1],Y
	xref	~~~mul
	jsl	~~~mul
	sta	<R0
	lda	<R0
	sta	<R0
	stz	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$8
	lda	[<L43+scrollbar_1],Y
	pha
	pea	#<$2
	pea	#<$fa02
	ldy	#$132
	lda	[<L43+pWin_1],Y
	pha
	ldy	#$130
	lda	[<L43+pWin_1],Y
	pha
	jsl	~~k_send_command_message
;
;
;			if(scrollbar)
	.line	516
;			{
	lda	<L43+scrollbar_1
	ora	<L43+scrollbar_1+2
	bne	L57
	brl	L10055
L57:
	.line	517
;
;				//k_debug_strings("buttonWindowProc::CTL_CMD_CAPTION:", (LPCHAR)pButton->pCaption );
;
;				/*
;				k_vdraw_ui_window(pWin,pWin->style,
;								  pWin->win_x ,pWin->win_y,
;								  pWin->win_height,pWin->win_width,
;								  pWin->win_title,
;								  k_getUIGadgetColor(), k_getUIMenuColor());
;
;				*/
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
;				/*
;				k_draw_line(pWin->win_x + 1 ,
;							pWin->win_y + 1,
;						    pWin->win_x + pWin->win_width - 1,
;							pWin->win_y + 1,
;							0);
;
;				k_draw_line(pWin->win_x + 1 ,
;							pWin->win_y + 2,
;						    pWin->win_x + pWin->win_width - 1,
;							pWin->win_y + 2,
;							0);
;
;
;				k_draw_line(pWin->win_x + pWin->win_width  - 1,
;							pWin->win_y + 1 ,
;						    pWin->win_x + pWin->win_width  - 1,
;							pWin->win_y + pWin->win_height - 1,
;							0);
;
;				k_draw_line(pWin->win_x + pWin->win_width  - 2,
;							pWin->win_y + 1,
;						    pWin->win_x + pWin->win_width  - 2,
;							pWin->win_y + pWin->win_height - 1,
;							0);
;
;
;
;				size = strlen(pButton->pCaption) * FONTW;
;				k_draw_text_point(pButton->pCaption,
;						          pWin->win_x + (pWin->win_width/2)  - (size/2) - 2,
;								  pWin->win_y + (pWin->win_height/2) - (4) + 2     , k_getUIGadgetColor()) ;
;								  */
;
;
;				//k_draw_text_point("\x9B",0,0,k_getUIGadgetColor()) ;
;				//k_draw_text_point("\x9C",pWin->win_x + (pWin->win_width) - FONTW,0,k_getUIGadgetColor()) ;
;			}
	.line	576
;
;
;			break;
L10055:
	.line	579
	brl	L10042
;
;		case FX_LBUTTON_UP:
	.line	581
L10056:
;			k_debug_string("hscrollbarWindowProc::FX_LBUTTON_UP\r\n");
	.line	582
	pea	#^L41+510
	pea	#<L41+510
	jsl	~~k_debug_string
;
;			rect.x = 0;
	.line	584
	stz	<L43+rect_1
;			rect.y = 1;
	.line	585
	lda	#$1
	sta	<L43+rect_1+2
;			k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\xAF",k_getUIMenuColor(),&rect,(LPCSTR)k_user_getFontClass("FXOS8x8"));
	.line	586
	pea	#^L41+550
	pea	#<L41+550
	jsl	~~k_user_getFontClass
	sta	<R0
	stx	<R0+2
	phx
	pha
	pea	#0
	clc
	tdc
	adc	#<L43+rect_1
	pha
	jsl	~~k_getUIMenuColor
	pha
	pea	#^L41+548
	pea	#<L41+548
	pei	<L43+pWin_1+2
	pei	<L43+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R1
	stx	<R1+2
	phx
	pha
	jsl	~~k_user_DrawWindowTextToPointWithFont
;			k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\x9B",k_getUIGadgetColor(),&rect,(LPCSTR)k_user_getFontClass("FXOS8x8"));
	.line	587
	pea	#^L41+560
	pea	#<L41+560
	jsl	~~k_user_getFontClass
	sta	<R0
	stx	<R0+2
	phx
	pha
	pea	#0
	clc
	tdc
	adc	#<L43+rect_1
	pha
	jsl	~~k_getUIGadgetColor
	pha
	pea	#^L41+558
	pea	#<L41+558
	pei	<L43+pWin_1+2
	pei	<L43+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R1
	stx	<R1+2
	phx
	pha
	jsl	~~k_user_DrawWindowTextToPointWithFont
;
;			rect.x = pWin->win_width - FONTW - 1;
	.line	589
	jsl	~~k_font_getFontWidth
	sta	<R0
	sec
	ldy	#$c
	lda	[<L43+pWin_1],Y
	sbc	<R0
	sta	<R1
	clc
	lda	#$ffff
	adc	<R1
	sta	<L43+rect_1
;			rect.y = 1;
	.line	590
	lda	#$1
	sta	<L43+rect_1+2
;			k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\xAF",k_getUIMenuColor(),&rect,(LPCSTR)k_user_getFontClass("FXOS8x8"));
	.line	591
	pea	#^L41+570
	pea	#<L41+570
	jsl	~~k_user_getFontClass
	sta	<R0
	stx	<R0+2
	phx
	pha
	pea	#0
	clc
	tdc
	adc	#<L43+rect_1
	pha
	jsl	~~k_getUIMenuColor
	pha
	pea	#^L41+568
	pea	#<L41+568
	pei	<L43+pWin_1+2
	pei	<L43+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R1
	stx	<R1+2
	phx
	pha
	jsl	~~k_user_DrawWindowTextToPointWithFont
;			k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\x9C",k_getUIGadgetColor(),&rect,(LPCSTR)k_user_getFontClass("FXOS8x8"));
	.line	592
	pea	#^L41+580
	pea	#<L41+580
	jsl	~~k_user_getFontClass
	sta	<R0
	stx	<R0+2
	phx
	pha
	pea	#0
	clc
	tdc
	adc	#<L43+rect_1
	pha
	jsl	~~k_getUIGadgetColor
	pha
	pea	#^L41+578
	pea	#<L41+578
	pei	<L43+pWin_1+2
	pei	<L43+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R1
	stx	<R1+2
	phx
	pha
	jsl	~~k_user_DrawWindowTextToPointWithFont
;
;
;			/*
;			rect.x = (pWin->win_width/2) - (FONTW/2);
;			rect.y = 1;
;			k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\xAF",k_getUIMenuColor(),&rect,(LPCSTR)k_user_getFontClass("FXOS8x8"));
;			k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\xBD",k_getUIGadgetColor(),&rect,(LPCSTR)k_user_getFontClass("FXOS8x8"));
;			*/
;			/*
;			if(pButton->pCaption)
;			{
;				//k_debug_strings("buttonWindowProc::CTL_CMD_CAPTION:", (LPCHAR)pButton->pCaption );
;
;				k_vdraw_ui_window(pWin,FXWS_BORDER | FXWS_VISIBLE,
;								  pWin->win_x ,pWin->win_y,
;								  pWin->win_height,pWin->win_width,
;								  pWin->win_title,
;								  k_getUIGadgetColor(), k_getUIMenuColor());
;
;				size = strlen(pButton->pCaption) * FONTW;
;				k_draw_text_point(pButton->pCaption,
;						          pWin->win_x + (pWin->win_width/2)  - (size/2),
;								  pWin->win_y + (pWin->win_height/2) - (4),k_getUIGadgetColor());
;			}
;			*/
;			//k_send_command_message(pWin->pParentWindow,FX_CONTROL_COMMAND,LOWORD((ULONG)pWin->hMenu),0,0L,0L);
;
;			k_send_command_message(pWin->pParentWindow,FX_CONTROL_COMMAND,CTL_BUTTON_SELECTED,LOWORD((ULONG)pWin->hMenu),0L,0L);
	.line	620
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	ldy	#$134
	lda	[<L43+pWin_1],Y
	pha
	pea	#<$2
	pea	#<$fa00
	ldy	#$132
	lda	[<L43+pWin_1],Y
	pha
	ldy	#$130
	lda	[<L43+pWin_1],Y
	pha
	jsl	~~k_send_command_message
;
;			break;
	.line	622
	brl	L10042
;		case FX_MOUSE_ENTER:
	.line	623
L10057:
;			k_debug_string("hscrollbarWindowProc::FX_MOUSE_ENTER\r\n");
	.line	624
	pea	#^L41+588
	pea	#<L41+588
	jsl	~~k_debug_string
;
;			break;
	.line	626
	brl	L10042
;		case FX_MOUSE_EXIT:
	.line	627
L10058:
;			k_debug_string("hscrollbarWindowProc::FX_MOUSE_EXIT\r\n");
	.line	628
	pea	#^L41+627
	pea	#<L41+627
	jsl	~~k_debug_string
;
;			rect.x = 0;
	.line	630
	stz	<L43+rect_1
;			rect.y = 1;
	.line	631
	lda	#$1
	sta	<L43+rect_1+2
;			k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\xAF",k_getUIMenuColor(),&rect,(LPCSTR)k_user_getFontClass("FXOS8x8"));
	.line	632
	pea	#^L41+667
	pea	#<L41+667
	jsl	~~k_user_getFontClass
	sta	<R0
	stx	<R0+2
	phx
	pha
	pea	#0
	clc
	tdc
	adc	#<L43+rect_1
	pha
	jsl	~~k_getUIMenuColor
	pha
	pea	#^L41+665
	pea	#<L41+665
	pei	<L43+pWin_1+2
	pei	<L43+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R1
	stx	<R1+2
	phx
	pha
	jsl	~~k_user_DrawWindowTextToPointWithFont
;			k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\x9B",k_getUIGadgetColor(),&rect,(LPCSTR)k_user_getFontClass("FXOS8x8"));
	.line	633
	pea	#^L41+677
	pea	#<L41+677
	jsl	~~k_user_getFontClass
	sta	<R0
	stx	<R0+2
	phx
	pha
	pea	#0
	clc
	tdc
	adc	#<L43+rect_1
	pha
	jsl	~~k_getUIGadgetColor
	pha
	pea	#^L41+675
	pea	#<L41+675
	pei	<L43+pWin_1+2
	pei	<L43+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R1
	stx	<R1+2
	phx
	pha
	jsl	~~k_user_DrawWindowTextToPointWithFont
;
;			rect.x = pWin->win_width - FONTW - 1;
	.line	635
	jsl	~~k_font_getFontWidth
	sta	<R0
	sec
	ldy	#$c
	lda	[<L43+pWin_1],Y
	sbc	<R0
	sta	<R1
	clc
	lda	#$ffff
	adc	<R1
	sta	<L43+rect_1
;			rect.y = 1;
	.line	636
	lda	#$1
	sta	<L43+rect_1+2
;			k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\xAF",k_getUIMenuColor(),&rect,(LPCSTR)k_user_getFontClass("FXOS8x8"));
	.line	637
	pea	#^L41+687
	pea	#<L41+687
	jsl	~~k_user_getFontClass
	sta	<R0
	stx	<R0+2
	phx
	pha
	pea	#0
	clc
	tdc
	adc	#<L43+rect_1
	pha
	jsl	~~k_getUIMenuColor
	pha
	pea	#^L41+685
	pea	#<L41+685
	pei	<L43+pWin_1+2
	pei	<L43+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R1
	stx	<R1+2
	phx
	pha
	jsl	~~k_user_DrawWindowTextToPointWithFont
;			k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\x9C",k_getUIGadgetColor(),&rect,(LPCSTR)k_user_getFontClass("FXOS8x8"));
	.line	638
	pea	#^L41+697
	pea	#<L41+697
	jsl	~~k_user_getFontClass
	sta	<R0
	stx	<R0+2
	phx
	pha
	pea	#0
	clc
	tdc
	adc	#<L43+rect_1
	pha
	jsl	~~k_getUIGadgetColor
	pha
	pea	#^L41+695
	pea	#<L41+695
	pei	<L43+pWin_1+2
	pei	<L43+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R1
	stx	<R1+2
	phx
	pha
	jsl	~~k_user_DrawWindowTextToPointWithFont
;
;
;
;			break;
	.line	642
	brl	L10042
;		case FX_MOUSE_MOVE:
	.line	643
L10059:
;
;			/*
;		    cy = *((INT*)&pMsg->data[3]) - pWin->win_y;
;			cx = *((INT*)&pMsg->data[1]) - pWin->win_x;
;
;			if(cx > 0 &&  cx < FONTW)
;			{
;				k_debug_integer("hscrollbarWindowProc::LEFT ARROW:",cx);
;			}
;			if(cx > (pWin->win_width - FONTW) &&  cx < (pWin->win_width))
;			{
;				k_debug_integer("hscrollbarWindowProc::RIGHT ARROW:",cx);
;			}
;			*/
;
;			break;
	.line	659
	brl	L10042
;		case FX_CONTROL_COMMAND:
	.line	660
L10060:
;			//k_debug_string("buttonWindowProc::FX_CONTROL_COMMAND\r\n");
;
;
;			/*
;			if( ((PFXCMDMESSAGE)pMsg)->cmdCId == CTL_CMD_CAPTION )
;			{
;				pButton->pCaption = (LPCHAR)((PFXCMDMESSAGE)pMsg)->parameter1;
;
;				if(pButton->pCaption)
;				{
;					//k_debug_strings("buttonWindowProc::CTL_CMD_CAPTION:", (LPCHAR)pButton->pCaption );
;
;					size = strlen(pButton->pCaption) * FONTW;
;					k_draw_text_point(pButton->pCaption,
;							          pWin->win_x + (pWin->win_width/2)  - (size/2),
;									  pWin->win_y + (pWin->win_height/2) - (4),k_getUIGadgetColor());
;				}
;			}
;			*/
;			break;
	.line	680
	brl	L10042
;		default:
	.line	681
L10061:
;			break;
	.line	682
	brl	L10042
;		}
	.line	683
L10041:
	xref	~~~swt
	jsl	~~~swt
	dw	9
	dw	3841
	dw	L10057-1
	dw	3842
	dw	L10058-1
	dw	3843
	dw	L10059-1
	dw	3844
	dw	L10047-1
	dw	3846
	dw	L10056-1
	dw	64000
	dw	L10060-1
	dw	64256
	dw	L10044-1
	dw	64263
	dw	L10046-1
	dw	65283
	dw	L10043-1
	dw	L10061-1
L10042:
;	}
	.line	684
;
;	return TRUE;
L10040:
	.line	686
	lda	#$1
L58:
	tay
	lda	<L42+2
	sta	<L42+2+4
	lda	<L42+1
	sta	<L42+1+4
	pld
	tsc
	clc
	adc	#L42+4
	tcs
	tya
	rtl
;
;}
	.line	688
	.endblock	688
L42	equ	42
L43	equ	17
	ends
	efunc
	.endfunc	688,17,42
	.line	688
	data
L41:
	db	$68,$73,$63,$72,$6F,$6C,$6C,$62,$61,$72,$57,$69,$6E,$64,$6F
	db	$77,$50,$72,$6F,$63,$3A,$3A,$73,$74,$6F,$70,$73,$69,$7A,$65
	db	$3A,$00,$68,$73,$63,$72,$6F,$6C,$6C,$62,$61,$72,$57,$69,$6E
	db	$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$44,$52,$41
	db	$57,$5F,$57,$49,$4E,$44,$4F,$57,$3A,$00,$FFFFFFAF,$00,$46,$58,$4F
	db	$53,$38,$78,$38,$00,$FFFFFF9B,$00,$46,$58,$4F,$53,$38,$78,$38,$00
	db	$AF,$00,$46,$58,$4F,$53,$38,$78,$38,$00,$FFFFFF9C,$00,$46,$58,$4F
	db	$53,$38,$78,$38,$00,$FFFFFFBD,$00,$46,$58,$4F,$53,$38,$78,$38,$00
	db	$68,$73,$63,$72,$6F,$6C,$6C,$62,$61,$72,$57,$69,$6E,$64,$6F
	db	$77,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$52,$45,$44,$52,$41
	db	$57,$5F,$57,$49,$4E,$44,$4F,$57,$0D,$0A,$00,$68,$73,$63,$72
	db	$6F,$6C,$6C,$62,$61,$72,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F
	db	$63,$3A,$3A,$46,$58,$5F,$4C,$42,$55,$54,$54,$4F,$4E,$5F,$44
	db	$4F,$57,$4E,$0D,$0A,$00,$68,$73,$63,$72,$6F,$6C,$6C,$62,$61
	db	$72,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$4C,$45
	db	$46,$54,$20,$41,$52,$52,$4F,$57,$3A,$00,$FFFFFFAF,$00,$46,$58,$4F
	db	$53,$38,$78,$38,$00,$FFFFFFB0,$00,$46,$58,$4F,$53,$38,$78,$38,$00
	db	$68,$73,$63,$72,$6F,$6C,$6C,$62,$61,$72,$57,$69,$6E,$64,$6F
	db	$77,$50,$72,$6F,$63,$3A,$3A,$52,$49,$47,$48,$54,$20,$41,$52
	db	$52,$4F,$57,$3A,$00,$FFFFFFAF,$00,$46,$58,$4F,$53,$38,$78,$38,$00
	db	$B1,$00,$46,$58,$4F,$53,$38,$78,$38,$00,$FFFFFFAF,$00,$46,$58,$4F
	db	$53,$38,$78,$38,$00,$68,$73,$63,$72,$6F,$6C,$6C,$62,$61,$72
	db	$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$70,$57,$69
	db	$6E,$2D,$3E,$77,$69,$6E,$5F,$77,$69,$64,$74,$68,$3A,$00,$68
	db	$73,$63,$72,$6F,$6C,$6C,$62,$61,$72,$57,$69,$6E,$64,$6F,$77
	db	$50,$72,$6F,$63,$3A,$3A,$73,$63,$72,$6F,$6C,$6C,$62,$61,$72
	db	$2D,$3E,$72,$65,$63,$74,$54,$68,$75,$6D,$62,$2E,$78,$3A,$00
	db	$68,$73,$63,$72,$6F,$6C,$6C,$62,$61,$72,$57,$69,$6E,$64,$6F
	db	$77,$50,$72,$6F,$63,$3A,$3A,$6C,$6F,$63,$61,$74,$69,$6F,$6E
	db	$3A,$00,$68,$73,$63,$72,$6F,$6C,$6C,$62,$61,$72,$57,$69,$6E
	db	$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$69,$6E,$63,$72,$65,$6D
	db	$65,$6E,$74,$3A,$00,$68,$73,$63,$72,$6F,$6C,$6C,$62,$61,$72
	db	$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$6F,$66,$66
	db	$73,$65,$74,$3A,$00,$FFFFFFBD,$00,$46,$58,$4F,$53,$38,$78,$38,$00
	db	$68,$73,$63,$72,$6F,$6C,$6C,$62,$61,$72,$57,$69,$6E,$64,$6F
	db	$77,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$4C,$42,$55,$54,$54
	db	$4F,$4E,$5F,$55,$50,$0D,$0A,$00,$FFFFFFAF,$00,$46,$58,$4F,$53,$38
	db	$78,$38,$00,$FFFFFF9B,$00,$46,$58,$4F,$53,$38,$78,$38,$00,$FFFFFFAF,$00
	db	$46,$58,$4F,$53,$38,$78,$38,$00,$FFFFFF9C,$00,$46,$58,$4F,$53,$38
	db	$78,$38,$00,$68,$73,$63,$72,$6F,$6C,$6C,$62,$61,$72,$57,$69
	db	$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$4D,$4F
	db	$55,$53,$45,$5F,$45,$4E,$54,$45,$52,$0D,$0A,$00,$68,$73,$63
	db	$72,$6F,$6C,$6C,$62,$61,$72,$57,$69,$6E,$64,$6F,$77,$50,$72
	db	$6F,$63,$3A,$3A,$46,$58,$5F,$4D,$4F,$55,$53,$45,$5F,$45,$58
	db	$49,$54,$0D,$0A,$00,$FFFFFFAF,$00,$46,$58,$4F,$53,$38,$78,$38,$00
	db	$9B,$00,$46,$58,$4F,$53,$38,$78,$38,$00,$FFFFFFAF,$00,$46,$58,$4F
	db	$53,$38,$78,$38,$00,$FFFFFF9C,$00,$46,$58,$4F,$53,$38,$78,$38,$00
	ends
;
;VOID processSBCommand(PWINDOW pWin, UINT cmdCId,UINT cmdMId,ULONG parameter1)
;{
	.line	690
	.line	691
	code
	xdef	~~processSBCommand
	func
	.function	691
~~processSBCommand:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L60
	tcs
	phd
	tcd
pWin_0	set	4
cmdCId_0	set	8
cmdMId_0	set	10
parameter1_0	set	12
	.block	691
;	switch(cmdCId)
	.sym	pWin,4,138,6,32,27
	.sym	cmdCId,8,16,6,16
	.sym	cmdMId,10,16,6,16
	.sym	parameter1,12,18,6,32
	.line	692
	lda	<L60+cmdCId_0
	brl	L10062
;	{
	.line	693
;	case CTL_SB_ADD_ITEM:
	.line	694
L10064:
;		k_debug_string("processSBCommand::CTL_SB_ADD_ITEM\r\n");
	.line	695
	pea	#^L59
	pea	#<L59
	jsl	~~k_debug_string
;		break;
	.line	696
	brl	L10063
;	case CTL_SB_ADD_ITEMS:
	.line	697
L10065:
;		k_debug_string("processSBCommand::CTL_SB_ADD_ITEMS\r\n");
	.line	698
	pea	#^L59+36
	pea	#<L59+36
	jsl	~~k_debug_string
;		break;
	.line	699
	brl	L10063
;	case CTL_SB_REMOVE_ITEM:
	.line	700
L10066:
;		k_debug_string("processSBCommand::CTL_SB_REMOVE_ITEM\r\n");
	.line	701
	pea	#^L59+73
	pea	#<L59+73
	jsl	~~k_debug_string
;		break;
	.line	702
	brl	L10063
;	case CTL_SB_CLEAR_ITEMS:
	.line	703
L10067:
;		k_debug_string("processSBCommand::CTL_SB_CLEAR_ITEMS\r\n");
	.line	704
	pea	#^L59+112
	pea	#<L59+112
	jsl	~~k_debug_string
;		break;
	.line	705
	brl	L10063
;	case CTL_SB_SET_MIN:
	.line	706
L10068:
;		k_debug_string("processSBCommand::CTL_SB_SET_MIN\r\n");
	.line	707
	pea	#^L59+151
	pea	#<L59+151
	jsl	~~k_debug_string
;		break;
	.line	708
	brl	L10063
;	case CTL_SB_SET_MAX:
	.line	709
L10069:
;		k_debug_string("processSBCommand::CTL_SB_SET_MAX\r\n");
	.line	710
	pea	#^L59+186
	pea	#<L59+186
	jsl	~~k_debug_string
;		break;
	.line	711
	brl	L10063
;	case CTL_SB_SET_INCREMENT:
	.line	712
L10070:
;		k_debug_string("processSBCommand::CTL_SB_SET_INCREMENT\r\n");
	.line	713
	pea	#^L59+221
	pea	#<L59+221
	jsl	~~k_debug_string
;		break;
	.line	714
	brl	L10063
;	default:
	.line	715
L10071:
;		break;
	.line	716
	brl	L10063
;	}
	.line	717
L10062:
	xref	~~~fsw
	jsl	~~~fsw
	dw	3
	dw	7
	dw	L10071-1
	dw	L10064-1
	dw	L10065-1
	dw	L10066-1
	dw	L10067-1
	dw	L10068-1
	dw	L10069-1
	dw	L10070-1
L10063:
;
;	return;
	.line	719
L63:
	lda	<L60+2
	sta	<L60+2+12
	lda	<L60+1
	sta	<L60+1+12
	pld
	tsc
	clc
	adc	#L60+12
	tcs
	rtl
;}
	.line	720
	.endblock	720
L60	equ	0
L61	equ	1
	ends
	efunc
	.endfunc	720,1,0
	.line	720
	data
L59:
	db	$70,$72,$6F,$63,$65,$73,$73,$53,$42,$43,$6F,$6D,$6D,$61,$6E
	db	$64,$3A,$3A,$43,$54,$4C,$5F,$53,$42,$5F,$41,$44,$44,$5F,$49
	db	$54,$45,$4D,$0D,$0A,$00,$70,$72,$6F,$63,$65,$73,$73,$53,$42
	db	$43,$6F,$6D,$6D,$61,$6E,$64,$3A,$3A,$43,$54,$4C,$5F,$53,$42
	db	$5F,$41,$44,$44,$5F,$49,$54,$45,$4D,$53,$0D,$0A,$00,$70,$72
	db	$6F,$63,$65,$73,$73,$53,$42,$43,$6F,$6D,$6D,$61,$6E,$64,$3A
	db	$3A,$43,$54,$4C,$5F,$53,$42,$5F,$52,$45,$4D,$4F,$56,$45,$5F
	db	$49,$54,$45,$4D,$0D,$0A,$00,$70,$72,$6F,$63,$65,$73,$73,$53
	db	$42,$43,$6F,$6D,$6D,$61,$6E,$64,$3A,$3A,$43,$54,$4C,$5F,$53
	db	$42,$5F,$43,$4C,$45,$41,$52,$5F,$49,$54,$45,$4D,$53,$0D,$0A
	db	$00,$70,$72,$6F,$63,$65,$73,$73,$53,$42,$43,$6F,$6D,$6D,$61
	db	$6E,$64,$3A,$3A,$43,$54,$4C,$5F,$53,$42,$5F,$53,$45,$54,$5F
	db	$4D,$49,$4E,$0D,$0A,$00,$70,$72,$6F,$63,$65,$73,$73,$53,$42
	db	$43,$6F,$6D,$6D,$61,$6E,$64,$3A,$3A,$43,$54,$4C,$5F,$53,$42
	db	$5F,$53,$45,$54,$5F,$4D,$41,$58,$0D,$0A,$00,$70,$72,$6F,$63
	db	$65,$73,$73,$53,$42,$43,$6F,$6D,$6D,$61,$6E,$64,$3A,$3A,$43
	db	$54,$4C,$5F,$53,$42,$5F,$53,$45,$54,$5F,$49,$4E,$43,$52,$45
	db	$4D,$45,$4E,$54,$0D,$0A,$00
	ends
;
	.line	720
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fx_ctl_scrollbar.c",690
	xref	~~DefWindowProc
	xref	~~k_user_DrawWindowTextToPointWithFont
	xref	~~k_user_getFontClass
	xref	~~k_user_CreateWindow
	xref	~~k_user_getSystemMetric
	xref	~~k_getHandleFromWindow
	xref	~~k_getWindowFromHandle
	xref	~~k_font_getFontWidth
	xref	~~k_font_getFontHeight
	xref	~~k_vdraw_ui_window
	xref	~~k_getUIGadgetColor
	xref	~~k_getUIMenuColor
	xref	~~k_mem_allocate_heap
	xref	~~k_send_command_message
	xref	~~k_send_window_message
	xref	~~k_exec_get_current_process
	xref	~~k_debug_integer
	xref	~~k_debug_pointer
	xref	~~k_debug_string
	.sym	~~k_user_CreateHorizontalScrollbar,~~k_user_CreateHorizontalScrollbar,1098,2,32,27
	.sym	~~processSBCommand,~~processSBCommand,65,2,0
	.sym	PEACHCHILD_MSG,0,138,14,32,63
	.sym	EACHCHILD_MSG,0,10,14,64,63
	.sym	~~hscrollbarWindowProc,~~hscrollbarWindowProc,78,2,0
	.sym	~~vscrollbarWindowProc,~~vscrollbarWindowProc,78,2,0
	.sym	~~DefWindowProc,~~DefWindowProc,78,18,0
	.sym	~~k_user_DrawWindowTextToPointWithFont,~~k_user_DrawWindowTextToPointWithFont,80,18,0
	.sym	~~k_user_CreateVerticalScrollBar,~~k_user_CreateVerticalScrollBar,1098,2,32,27
	.sym	~~k_user_getFontClass,~~k_user_getFontClass,1089,18,32
	.sym	~~k_user_CreateWindow,~~k_user_CreateWindow,1098,18,32,27
	.sym	~~k_user_getSystemMetric,~~k_user_getSystemMetric,69,18,0
	.sym	~~k_getHandleFromWindow,~~k_getHandleFromWindow,1089,18,32
	.sym	~~k_getWindowFromHandle,~~k_getWindowFromHandle,1098,18,32,27
	.sym	~~k_font_getFontWidth,~~k_font_getFontWidth,80,18,0
	.sym	~~k_font_getFontHeight,~~k_font_getFontHeight,80,18,0
	.sym	~~k_vdraw_ui_window,~~k_vdraw_ui_window,65,18,0
	.sym	~~k_getUIGadgetColor,~~k_getUIGadgetColor,69,18,0
	.sym	~~k_getUIMenuColor,~~k_getUIMenuColor,69,18,0
	.sym	PCUR_PALETTE_MAP,0,138,14,32,62
	.sym	CUR_PALETTE_MAP,0,10,14,400,62
	.sym	PCLICKDETECTED,0,138,14,32,61
	.sym	CLICKDETECTED,0,10,14,64,61
	.sym	OBJECTCLICKED,0,641,14,32
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

;:ts=8
R0	equ	1
R1	equ	5
R2	equ	9
R3	equ	13
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fx_ctl_listbox.c",0
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fx_ctl_listbox.c",1
;#include "fxfont.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxfont.h",0
	.line	64
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fx_ctl_listbox.c",2
;
;LPCHAR listtext[] =
	data
	xdef	~~listtext
~~listtext:
;{
;"List Item 1",
	dl	L1+0
;"List Item 2",
	dl	L1+12
;"List Item 3",
	dl	L1+24
;"List Item 4",
	dl	L1+36
;"List Item 5",
	dl	L1+48
;"List Item 6",
	dl	L1+60
;"List Item 7",
	dl	L1+72
;"List Item 8",
	dl	L1+84
;"List Item 9",
	dl	L1+96
;"List Item 10",
	dl	L1+108
;"List Item 11",
	dl	L1+121
;"List Item 12",
	dl	L1+134
;"List Item 13",
	dl	L1+147
;"List Item 14",
	dl	L1+160
;"List Item 15",
	dl	L1+173
;"List Item 16",
	dl	L1+186
;"List Item 17",
	dl	L1+199
;"List Item 18",
	dl	L1+212
;"List Item 19",
	dl	L1+225
;"List Item 20",
	dl	L1+238
;"List Item 21",
	dl	L1+251
;"List Item 22",
	dl	L1+264
;"List Item 23",
	dl	L1+277
;"List Item 24",
	dl	L1+290
;"List Item 25",
	dl	L1+303
;"List Item 26",
	dl	L1+316
;"List Item 27",
	dl	L1+329
;"List Item 28",
	dl	L1+342
;"List Item 29",
	dl	L1+355
;"List Item 30",
	dl	L1+368
;NULL,
	dl	$0
;};
	ends
	data
L1:
	db	$4C,$69,$73,$74,$20,$49,$74,$65,$6D,$20,$31,$00,$4C,$69,$73
	db	$74,$20,$49,$74,$65,$6D,$20,$32,$00,$4C,$69,$73,$74,$20,$49
	db	$74,$65,$6D,$20,$33,$00,$4C,$69,$73,$74,$20,$49,$74,$65,$6D
	db	$20,$34,$00,$4C,$69,$73,$74,$20,$49,$74,$65,$6D,$20,$35,$00
	db	$4C,$69,$73,$74,$20,$49,$74,$65,$6D,$20,$36,$00,$4C,$69,$73
	db	$74,$20,$49,$74,$65,$6D,$20,$37,$00,$4C,$69,$73,$74,$20,$49
	db	$74,$65,$6D,$20,$38,$00,$4C,$69,$73,$74,$20,$49,$74,$65,$6D
	db	$20,$39,$00,$4C,$69,$73,$74,$20,$49,$74,$65,$6D,$20,$31,$30
	db	$00,$4C,$69,$73,$74,$20,$49,$74,$65,$6D,$20,$31,$31,$00,$4C
	db	$69,$73,$74,$20,$49,$74,$65,$6D,$20,$31,$32,$00,$4C,$69,$73
	db	$74,$20,$49,$74,$65,$6D,$20,$31,$33,$00,$4C,$69,$73,$74,$20
	db	$49,$74,$65,$6D,$20,$31,$34,$00,$4C,$69,$73,$74,$20,$49,$74
	db	$65,$6D,$20,$31,$35,$00,$4C,$69,$73,$74,$20,$49,$74,$65,$6D
	db	$20,$31,$36,$00,$4C,$69,$73,$74,$20,$49,$74,$65,$6D,$20,$31
	db	$37,$00,$4C,$69,$73,$74,$20,$49,$74,$65,$6D,$20,$31,$38,$00
	db	$4C,$69,$73,$74,$20,$49,$74,$65,$6D,$20,$31,$39,$00,$4C,$69
	db	$73,$74,$20,$49,$74,$65,$6D,$20,$32,$30,$00,$4C,$69,$73,$74
	db	$20,$49,$74,$65,$6D,$20,$32,$31,$00,$4C,$69,$73,$74,$20,$49
	db	$74,$65,$6D,$20,$32,$32,$00,$4C,$69,$73,$74,$20,$49,$74,$65
	db	$6D,$20,$32,$33,$00,$4C,$69,$73,$74,$20,$49,$74,$65,$6D,$20
	db	$32,$34,$00,$4C,$69,$73,$74,$20,$49,$74,$65,$6D,$20,$32,$35
	db	$00,$4C,$69,$73,$74,$20,$49,$74,$65,$6D,$20,$32,$36,$00,$4C
	db	$69,$73,$74,$20,$49,$74,$65,$6D,$20,$32,$37,$00,$4C,$69,$73
	db	$74,$20,$49,$74,$65,$6D,$20,$32,$38,$00,$4C,$69,$73,$74,$20
	db	$49,$74,$65,$6D,$20,$32,$39,$00,$4C,$69,$73,$74,$20,$49,$74
	db	$65,$6D,$20,$33,$30,$00
	ends
;
;
;
;BOOL listboxWindowProc(PFXOSMESSAGE pMsg)
;{
	.line	41
	.line	42
	code
	xdef	~~listboxWindowProc
	func
	.function	42
~~listboxWindowProc:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L3
	tcs
	phd
	tcd
pMsg_0	set	4
	.block	42
;	UINT i;
;	RECT r;
;	PFXPROCESS p = NULL;
;	PWINDOW pWin = NULL;
;	UCHAR buffer[16];
;	LPCHAR listItem;
;	PLISTBOX listbox = NULL;
;	HWND hWnd;
;	INT cMenu;
;	LPCSTR pFont;
;
;	if(pMsg!=NULL)
i_1	set	0
r_1	set	2
p_1	set	10
pWin_1	set	14
buffer_1	set	18
listItem_1	set	34
listbox_1	set	38
hWnd_1	set	42
cMenu_1	set	46
pFont_1	set	48
	.sym	i,0,16,1,16
	.sym	r,2,10,1,64,22
	.sym	p,10,138,1,32,17
	.sym	pWin,14,138,1,32,27
	.sym	buffer,18,110,1,0,16
	.sym	listItem,34,142,1,32
	.sym	listbox,38,138,1,32,36
	.sym	hWnd,42,129,1,32
	.sym	cMenu,46,5,1,16
	.sym	pFont,48,142,1,32
	.sym	pMsg,4,138,6,32,13
	stz	<L4+p_1
	stz	<L4+p_1+2
	stz	<L4+pWin_1
	stz	<L4+pWin_1+2
	stz	<L4+listbox_1
	stz	<L4+listbox_1+2
	.line	54
;	{
	lda	<L3+pMsg_0
	ora	<L3+pMsg_0+2
	bne	L6
	brl	L10001
L6:
	.line	55
;		p = k_exec_get_current_process();
	.line	56
	jsl	~~k_exec_get_current_process
	sta	<L4+p_1
	stx	<L4+p_1+2
;		pWin = k_getWindowFromHandle(pMsg->hwnd);
	.line	57
	ldy	#$c
	lda	[<L3+pMsg_0],Y
	pha
	ldy	#$a
	lda	[<L3+pMsg_0],Y
	pha
	jsl	~~k_getWindowFromHandle
	sta	<L4+pWin_1
	stx	<L4+pWin_1+2
;		hWnd = k_getHandleFromWindow(pWin);
	.line	58
	pei	<L4+pWin_1+2
	pei	<L4+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<L4+hWnd_1
	stx	<L4+hWnd_1+2
;		listbox = pWin->windowData;
	.line	59
	ldy	#$141
	lda	[<L4+pWin_1],Y
	sta	<L4+listbox_1
	ldy	#$143
	lda	[<L4+pWin_1],Y
	sta	<L4+listbox_1+2
;		cMenu = k_getUIMenuColor();
	.line	60
	jsl	~~k_getUIMenuColor
	sta	<L4+cMenu_1
;
;
;		switch(pMsg->type)
	.line	63
	ldy	#$8
	lda	[<L3+pMsg_0],Y
	brl	L10002
;		{
	.line	64
;		case FX_CREATE_WINDOW:
	.line	65
L10004:
;			if(p)
	.line	66
;			{
	lda	<L4+p_1
	ora	<L4+p_1+2
	bne	L7
	brl	L10005
L7:
	.line	67
;				k_debug_long("listboxWindowProc::FX_CREATE_WINDOW:",p->procId);
	.line	68
	ldy	#$4
	lda	[<L4+p_1],Y
	pha
	ldy	#$2
	lda	[<L4+p_1],Y
	pha
	pea	#^L2
	pea	#<L2
	jsl	~~k_debug_long
;				listbox = pWin->windowData = k_mem_allocate_heap(sizeof(LISTBOX));
	.line	69
	pea	#<$1e
	jsl	~~k_mem_allocate_heap
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$141
	sta	[<L4+pWin_1],Y
	lda	<R0+2
	ldy	#$143
	sta	[<L4+pWin_1],Y
	lda	<R0
	sta	<L4+listbox_1
	lda	<R0+2
	sta	<L4+listbox_1+2
;				memset(listbox,0,sizeof(LISTBOX));
	.line	70
	pea	#<$1e
	pea	#<$0
	pei	<L4+listbox_1+2
	pei	<L4+listbox_1
	jsl	~~memset
;
;				listbox->data = listtext;
	.line	72
	lda	#<~~listtext
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	lda	<R0
	ldy	#$1a
	sta	[<L4+listbox_1],Y
	lda	<R0+2
	ldy	#$1c
	sta	[<L4+listbox_1],Y
;				listbox->fontSet = (LPCHAR)k_user_getFontClass("ToshibaLCD8x8");
	.line	73
	pea	#^L2+37
	pea	#<L2+37
	jsl	~~k_user_getFontClass
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$16
	sta	[<L4+listbox_1],Y
	lda	<R0+2
	ldy	#$18
	sta	[<L4+listbox_1],Y
;				listbox->offsetY = 0;
	.line	74
	lda	#$0
	ldy	#$6
	sta	[<L4+listbox_1],Y
;
;				listbox->maxItems = 30;
	.line	76
	lda	#$1e
	ldy	#$14
	sta	[<L4+listbox_1],Y
;
;
;				listbox->indexTop 	 = 0;
	.line	79
	lda	#$0
	ldy	#$10
	sta	[<L4+listbox_1],Y
;				listbox->indexBottom = 19;
	.line	80
	lda	#$13
	ldy	#$12
	sta	[<L4+listbox_1],Y
;
;				/*
;	int			pos;
;	UINT		selected;
;	int 		offsetX;
;	int 		offsetY;
;	int 		inc;
;	int 		direction;
;	int 		top;
;	int 		bottom;
;	int			indexTop;
;	int			indexBottom;
;	LPVOID  	data;
;
;				 */
;
;				k_user_CreateVerticalScrollBar(pWin,"",1);
	.line	97
	pea	#<$1
	pea	#^L2+51
	pea	#<L2+51
	pei	<L4+pWin_1+2
	pei	<L4+pWin_1
	jsl	~~k_user_CreateVerticalScrollBar
;				//k_debug_integer("testWindowProc::MessageId:",pMsg->type);
;			}
	.line	99
;			break;
L10005:
	.line	100
	brl	L10003
;		case FX_DRAW_WINDOW:
	.line	101
L10006:
;			k_debug_string("listboxWindowProc::FX_DRAW_WINDOW\r\n");
	.line	102
	pea	#^L2+52
	pea	#<L2+52
	jsl	~~k_debug_string
;
;			//pFont = (LPCSTR)k_user_getFontClass("ToshibaLCD8x8");
;
;			r.x = 1;
	.line	106
	lda	#$1
	sta	<L4+r_1
;			r.y = 1;
	.line	107
	lda	#$1
	sta	<L4+r_1+2
;
;			k_vdma_fill_rect(pWin->win_x + 2,
	.line	109
;					         pWin->win_y + 1,
;							 pWin->win_width - k_user_getSystemMetric(SM_CXVSCROLL) -  (k_user_getSystemMetric(SM_CXBORDER) * 2) - 2,
;							 pWin->win_height - 1,
;							 k_getUIBackgroundColor()
;							 //3
;							 );
	jsl	~~k_getUIBackgroundColor
	pha
	clc
	lda	#$ffff
	ldy	#$e
	adc	[<L4+pWin_1],Y
	pha
	pea	#<$5
	jsl	~~k_user_getSystemMetric
	sta	<R1
	lda	<R1
	asl	A
	sta	<R0
	pea	#<$2
	jsl	~~k_user_getSystemMetric
	sta	<R1
	sec
	ldy	#$c
	lda	[<L4+pWin_1],Y
	sbc	<R1
	sta	<R2
	sec
	lda	<R2
	sbc	<R0
	sta	<R1
	clc
	lda	#$fffe
	adc	<R1
	pha
	ldy	#$a
	lda	[<L4+pWin_1],Y
	ina
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L8
	dey
L8:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	#$2
	ldy	#$8
	adc	[<L4+pWin_1],Y
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L9
	dey
L9:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect
;
;			for(i=listbox->pos;i<listbox->maxItems;i++)
	.line	117
	lda	[<L4+listbox_1]
	sta	<L4+i_1
	brl	L10010
L10009:
;			{
	.line	118
;				listItem = ((LPCHAR*)listbox->data)[i];//k_string_append_integer("List Item #", i);
	.line	119
	lda	<L4+i_1
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
	ldy	#$1a
	lda	[<L4+listbox_1],Y
	adc	<R0
	sta	<R2
	ldy	#$1c
	lda	[<L4+listbox_1],Y
	adc	<R0+2
	sta	<R2+2
	lda	[<R2]
	sta	<L4+listItem_1
	ldy	#$2
	lda	[<R2],Y
	sta	<L4+listItem_1+2
;
;				if(listItem)
	.line	121
;				{
	lda	<L4+listItem_1
	ora	<L4+listItem_1+2
	bne	L10
	brl	L10011
L10:
	.line	122
;					k_user_DrawWindowTextToPointWithFont(hWnd,
	.line	123
;														 listItem,
;														 cMenu,
;														 &r,
;														 listbox->fontSet);
	ldy	#$18
	lda	[<L4+listbox_1],Y
	pha
	ldy	#$16
	lda	[<L4+listbox_1],Y
	pha
	pea	#0
	clc
	tdc
	adc	#<L4+r_1
	pha
	pei	<L4+cMenu_1
	pei	<L4+listItem_1+2
	pei	<L4+listItem_1
	pei	<L4+hWnd_1+2
	pei	<L4+hWnd_1
	jsl	~~k_user_DrawWindowTextToPointWithFont
;					//k_debug_integer("listboxWindowProc:x:",r.x);
;				//	k_debug_integer("listboxWindowProc:y:",r.y);
;					//k_debug_integer("listboxWindowProc:w:",r.width);
;					//k_debug_integer("listboxWindowProc:h:",r.height);
;					r.y += 10;
	.line	132
	clc
	lda	#$a
	adc	<L4+r_1+2
	sta	<L4+r_1+2
;
;					if(r.y > pWin->win_height)
	.line	134
;						break;
	sec
	ldy	#$e
	lda	[<L4+pWin_1],Y
	sbc	<L4+r_1+2
	bvs	L11
	eor	#$8000
L11:
	bmi	L12
	brl	L10008
L12:
;					//k_mem_deallocate_heap(listItem);
;				}
	.line	137
;			}
L10011:
	.line	138
L10007:
	inc	<L4+i_1
L10010:
	lda	<L4+i_1
	ldy	#$14
	cmp	[<L4+listbox_1],Y
	bcs	L13
	brl	L10009
L13:
L10008:
;
;
;			//k_vdma_fill_rect(100,100,100,50,4);
;			break;
	.line	142
	brl	L10003
;		case FX_SCROLLBAR_COMMAND:
	.line	143
L10012:
;			//k_debug_integer("listboxWindowProc::FX_SCROLLBAR_COMMAND:", ((PFXCMDMESSAGE)pMsg)->cmdCId );
;			if(((PFXCMDMESSAGE)pMsg)->cmdCId == CTL_VERT_SCROLL )
	.line	145
;			{
	ldy	#$16
	lda	[<L3+pMsg_0],Y
	cmp	#<$1
	beq	L14
	brl	L10013
L14:
	.line	146
;				//k_debug_integer("listboxWindowProc::FX_SCROLLBAR_COMMAND:LOCATION:", ((PFXCMDMESSAGE)pMsg)->cmdMId );
;				//k_debug_integer("listboxWindowProc::FX_SCROLLBAR_COMMAND:VALUE:", ((PFXCMDMESSAGE)pMsg)->parameter1);
;				//k_debug_integer("listboxWindowProc::FX_SCROLLBAR_COMMAND:DIRECTION:", ((PFXCMDMESSAGE)pMsg)->parameter2);
;
;				if(((PFXCMDMESSAGE)pMsg)->parameter2)
	.line	151
;				{
	ldy	#$1e
	lda	[<L3+pMsg_0],Y
	ldy	#$20
	ora	[<L3+pMsg_0],Y
	bne	L15
	brl	L10014
L15:
	.line	152
;					listbox->offsetY+=10;
	.line	153
	clc
	lda	#$6
	adc	<L4+listbox_1
	sta	<R0
	lda	#$0
	adc	<L4+listbox_1+2
	sta	<R0+2
	clc
	lda	#$a
	adc	[<R0]
	sta	[<R0]
;					listbox->indexTop++;
	.line	154
	ldy	#$10
	lda	[<L4+listbox_1],Y
	ina
	ldy	#$10
	sta	[<L4+listbox_1],Y
;					listbox->indexBottom++;
	.line	155
	ldy	#$12
	lda	[<L4+listbox_1],Y
	ina
	ldy	#$12
	sta	[<L4+listbox_1],Y
;
;					if(listbox->indexBottom > listbox->maxItems - 1)
	.line	157
;					{
	clc
	lda	#$ffff
	ldy	#$14
	adc	[<L4+listbox_1],Y
	sta	<R0
	lda	<R0
	ldy	#$12
	cmp	[<L4+listbox_1],Y
	bcc	L16
	brl	L10015
L16:
	.line	158
;						listbox->indexBottom = (listbox->maxItems - 1);
	.line	159
	clc
	lda	#$ffff
	ldy	#$14
	adc	[<L4+listbox_1],Y
	ldy	#$12
	sta	[<L4+listbox_1],Y
;						k_debug_integer("listboxWindowProc::FX_SCROLLBAR_COMMAND:BOUND listbox->indexBottom:", listbox->indexBottom);
	.line	160
	ldy	#$12
	lda	[<L4+listbox_1],Y
	pha
	pea	#^L2+88
	pea	#<L2+88
	jsl	~~k_debug_integer
;						break;
	.line	161
	brl	L10003
;					}
	.line	162
;
;					k_memory_bitblt(SHADOW_BANK_0,
L10015:
	.line	164
;							        pWin->win_x + 2,
;							        //pWin->win_y + listbox->offsetY,
;									pWin->win_y + 11,
;									//pWin->win_width - k_user_getSystemMetric(SM_CXVSCROLL),
;									pWin->win_width - k_user_getSystemMetric(SM_CXVSCROLL) -  (k_user_getSystemMetric(SM_CXBORDER) * 2) - 2,
;									pWin->win_height - 11 - 2,
;							        BITMAP_BANK_0,
;									pWin->win_x + 2,
;									pWin->win_y + 1, BLT_DIR_TOPDOWN);
	pea	#<$1
	ldy	#$a
	lda	[<L4+pWin_1],Y
	ina
	pha
	clc
	lda	#$2
	ldy	#$8
	adc	[<L4+pWin_1],Y
	pha
	pea	#^$b00000
	pea	#<$b00000
	clc
	lda	#$fff3
	ldy	#$e
	adc	[<L4+pWin_1],Y
	pha
	pea	#<$5
	jsl	~~k_user_getSystemMetric
	sta	<R1
	lda	<R1
	asl	A
	sta	<R0
	pea	#<$2
	jsl	~~k_user_getSystemMetric
	sta	<R1
	sec
	ldy	#$c
	lda	[<L4+pWin_1],Y
	sbc	<R1
	sta	<R2
	sec
	lda	<R2
	sbc	<R0
	sta	<R1
	clc
	lda	#$fffe
	adc	<R1
	pha
	clc
	lda	#$b
	ldy	#$a
	adc	[<L4+pWin_1],Y
	pha
	clc
	lda	#$2
	ldy	#$8
	adc	[<L4+pWin_1],Y
	pha
	pea	#^$a0000
	pea	#<$a0000
	jsl	~~k_memory_bitblt
;
;
;					k_memory_bitblt(SHADOW_BANK_0,
	.line	176
;									pWin->win_x + 2,
;									//pWin->win_y + listbox->offsetY,
;									pWin->win_y + 11,
;									//pWin->win_width - k_user_getSystemMetric(SM_CXVSCROLL),
;									pWin->win_width - k_user_getSystemMetric(SM_CXVSCROLL) -  (k_user_getSystemMetric(SM_CXBORDER) * 2) - 2,
;									pWin->win_height - 11 - 2,
;									SHADOW_BANK_0,
;									pWin->win_x + 2,
;									pWin->win_y + 1, BLT_DIR_TOPDOWN);
	pea	#<$1
	ldy	#$a
	lda	[<L4+pWin_1],Y
	ina
	pha
	clc
	lda	#$2
	ldy	#$8
	adc	[<L4+pWin_1],Y
	pha
	pea	#^$a0000
	pea	#<$a0000
	clc
	lda	#$fff3
	ldy	#$e
	adc	[<L4+pWin_1],Y
	pha
	pea	#<$5
	jsl	~~k_user_getSystemMetric
	sta	<R1
	lda	<R1
	asl	A
	sta	<R0
	pea	#<$2
	jsl	~~k_user_getSystemMetric
	sta	<R1
	sec
	ldy	#$c
	lda	[<L4+pWin_1],Y
	sbc	<R1
	sta	<R2
	sec
	lda	<R2
	sbc	<R0
	sta	<R1
	clc
	lda	#$fffe
	adc	<R1
	pha
	clc
	lda	#$b
	ldy	#$a
	adc	[<L4+pWin_1],Y
	pha
	clc
	lda	#$2
	ldy	#$8
	adc	[<L4+pWin_1],Y
	pha
	pea	#^$a0000
	pea	#<$a0000
	jsl	~~k_memory_bitblt
;
;				}
	.line	187
;				else
	brl	L10016
L10014:
;				{
	.line	189
;
;					listbox->offsetY-=10;
	.line	191
	clc
	lda	#$6
	adc	<L4+listbox_1
	sta	<R0
	lda	#$0
	adc	<L4+listbox_1+2
	sta	<R0+2
	clc
	lda	#$fff6
	adc	[<R0]
	sta	[<R0]
;					if(listbox->offsetY < 0)
	.line	192
;						listbox->offsetY = 0;
	ldy	#$6
	lda	[<L4+listbox_1],Y
	bmi	L17
	brl	L10017
L17:
	.line	193
	lda	#$0
	ldy	#$6
	sta	[<L4+listbox_1],Y
;
;					listbox->indexTop--;
L10017:
	.line	195
	clc
	lda	#$ffff
	ldy	#$10
	adc	[<L4+listbox_1],Y
	ldy	#$10
	sta	[<L4+listbox_1],Y
;					listbox->indexBottom--;
	.line	196
	clc
	lda	#$ffff
	ldy	#$12
	adc	[<L4+listbox_1],Y
	ldy	#$12
	sta	[<L4+listbox_1],Y
;
;					if(listbox->indexTop < 0)
	.line	198
;					{
	ldy	#$10
	lda	[<L4+listbox_1],Y
	bmi	L18
	brl	L10018
L18:
	.line	199
;						listbox->indexTop = 0;
	.line	200
	lda	#$0
	ldy	#$10
	sta	[<L4+listbox_1],Y
;						k_debug_integer("listboxWindowProc::FX_SCROLLBAR_COMMAND:BOUND listbox->indexTop:", listbox->indexTop);
	.line	201
	ldy	#$10
	lda	[<L4+listbox_1],Y
	pha
	pea	#^L2+156
	pea	#<L2+156
	jsl	~~k_debug_integer
;						break;
	.line	202
	brl	L10003
;					}
	.line	203
;
;					k_memory_bitblt(SHADOW_BANK_0,
L10018:
	.line	205
;							        pWin->win_x + 2,
;									pWin->win_y + 1,
;									//pWin->win_width - k_user_getSystemMetric(SM_CXVSCROLL),
;									pWin->win_width - k_user_getSystemMetric(SM_CXVSCROLL) -  (k_user_getSystemMetric(SM_CXBORDER) * 2) - 2,
;									//pWin->win_height - 10 - 1,
;									pWin->win_height - 11 - 2,
;							        BITMAP_BANK_0,
;									pWin->win_x + 2,
;									pWin->win_y + 11,
;									BLT_DIR_TOPDOWN);
	pea	#<$1
	clc
	lda	#$b
	ldy	#$a
	adc	[<L4+pWin_1],Y
	pha
	clc
	lda	#$2
	ldy	#$8
	adc	[<L4+pWin_1],Y
	pha
	pea	#^$b00000
	pea	#<$b00000
	clc
	lda	#$fff3
	ldy	#$e
	adc	[<L4+pWin_1],Y
	pha
	pea	#<$5
	jsl	~~k_user_getSystemMetric
	sta	<R1
	lda	<R1
	asl	A
	sta	<R0
	pea	#<$2
	jsl	~~k_user_getSystemMetric
	sta	<R1
	sec
	ldy	#$c
	lda	[<L4+pWin_1],Y
	sbc	<R1
	sta	<R2
	sec
	lda	<R2
	sbc	<R0
	sta	<R1
	clc
	lda	#$fffe
	adc	<R1
	pha
	ldy	#$a
	lda	[<L4+pWin_1],Y
	ina
	pha
	clc
	lda	#$2
	ldy	#$8
	adc	[<L4+pWin_1],Y
	pha
	pea	#^$a0000
	pea	#<$a0000
	jsl	~~k_memory_bitblt
;
;
;					k_memory_bitblt(SHADOW_BANK_0,
	.line	218
;									pWin->win_x + 2,
;									pWin->win_y + 1,
;									//pWin->win_width - k_user_getSystemMetric(SM_CXVSCROLL),
;									pWin->win_width - k_user_getSystemMetric(SM_CXVSCROLL) -  (k_user_getSystemMetric(SM_CXBORDER) * 2) - 2,
;									//pWin->win_height - 10 - 2,
;									pWin->win_height - 11 - 2,
;									SHADOW_BANK_0,
;									pWin->win_x + 2,
;									pWin->win_y + 11,
;									BLT_DIR_BOTTOMUP);
	pea	#<$ffffffff
	clc
	lda	#$b
	ldy	#$a
	adc	[<L4+pWin_1],Y
	pha
	clc
	lda	#$2
	ldy	#$8
	adc	[<L4+pWin_1],Y
	pha
	pea	#^$a0000
	pea	#<$a0000
	clc
	lda	#$fff3
	ldy	#$e
	adc	[<L4+pWin_1],Y
	pha
	pea	#<$5
	jsl	~~k_user_getSystemMetric
	sta	<R1
	lda	<R1
	asl	A
	sta	<R0
	pea	#<$2
	jsl	~~k_user_getSystemMetric
	sta	<R1
	sec
	ldy	#$c
	lda	[<L4+pWin_1],Y
	sbc	<R1
	sta	<R2
	sec
	lda	<R2
	sbc	<R0
	sta	<R1
	clc
	lda	#$fffe
	adc	<R1
	pha
	ldy	#$a
	lda	[<L4+pWin_1],Y
	ina
	pha
	clc
	lda	#$2
	ldy	#$8
	adc	[<L4+pWin_1],Y
	pha
	pea	#^$a0000
	pea	#<$a0000
	jsl	~~k_memory_bitblt
;
;				}
	.line	230
L10016:
;
;
;
;				if(((PFXCMDMESSAGE)pMsg)->parameter2)
	.line	234
;				{
	ldy	#$1e
	lda	[<L3+pMsg_0],Y
	ldy	#$20
	ora	[<L3+pMsg_0],Y
	bne	L19
	brl	L10019
L19:
	.line	235
;					r.x = 1;
	.line	236
	lda	#$1
	sta	<L4+r_1
;					r.y = (19 * 10) + 1;
	.line	237
	lda	#$bf
	sta	<L4+r_1+2
;
;					k_user_DrawWindowTextToPointWithFont(hWnd,
	.line	239
;														 "\xDB\xDB\xDB\xDB\xDB\xDB\xDB\xDB\xDB\xDB\xDB\xDB\xDB\xDB\xDB",
;														 k_getUIBackgroundColor(),
;														 &r,
;														 (LPCSTR)k_user_getFontClass("TINYTYPE8x8"));
	pea	#^L2+237
	pea	#<L2+237
	jsl	~~k_user_getFontClass
	sta	<R0
	stx	<R0+2
	phx
	pha
	pea	#0
	clc
	tdc
	adc	#<L4+r_1
	pha
	jsl	~~k_getUIBackgroundColor
	pha
	pea	#^L2+221
	pea	#<L2+221
	pei	<L4+hWnd_1+2
	pei	<L4+hWnd_1
	jsl	~~k_user_DrawWindowTextToPointWithFont
;					r.x = 1;
	.line	244
	lda	#$1
	sta	<L4+r_1
;					r.y = (19 * 10) + 1;
	.line	245
	lda	#$bf
	sta	<L4+r_1+2
;
;					k_user_DrawWindowTextToPointWithFont(hWnd,
	.line	247
;														 ((LPCHAR*)listbox->data)[listbox->indexBottom],
;														 cMenu,
;														 &r,
;														 listbox->fontSet);
	ldy	#$18
	lda	[<L4+listbox_1],Y
	pha
	ldy	#$16
	lda	[<L4+listbox_1],Y
	pha
	pea	#0
	clc
	tdc
	adc	#<L4+r_1
	pha
	pei	<L4+cMenu_1
	ldy	#$0
	phy
	ldy	#$12
	lda	[<L4+listbox_1],Y
	ply
	rol	A
	ror	A
	bpl	L20
	dey
L20:
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
	ldy	#$1a
	lda	[<L4+listbox_1],Y
	adc	<R0
	sta	<R2
	ldy	#$1c
	lda	[<L4+listbox_1],Y
	adc	<R0+2
	sta	<R2+2
	ldy	#$2
	lda	[<R2],Y
	pha
	lda	[<R2]
	pha
	pei	<L4+hWnd_1+2
	pei	<L4+hWnd_1
	jsl	~~k_user_DrawWindowTextToPointWithFont
;
;				}
	.line	253
;				else
	brl	L10020
L10019:
;				{
	.line	255
;
;					r.x = 1;
	.line	257
	lda	#$1
	sta	<L4+r_1
;					r.y = 1;
	.line	258
	lda	#$1
	sta	<L4+r_1+2
;
;					k_user_DrawWindowTextToPointWithFont(hWnd,
	.line	260
;														 "\xDB\xDB\xDB\xDB\xDB\xDB\xDB\xDB\xDB\xDB\xDB\xDB\xDB\xDB\xDB",
;														 k_getUIBackgroundColor(),
;														 &r,
;														 (LPCSTR)k_user_getFontClass("TINYTYPE8x8"));
	pea	#^L2+265
	pea	#<L2+265
	jsl	~~k_user_getFontClass
	sta	<R0
	stx	<R0+2
	phx
	pha
	pea	#0
	clc
	tdc
	adc	#<L4+r_1
	pha
	jsl	~~k_getUIBackgroundColor
	pha
	pea	#^L2+249
	pea	#<L2+249
	pei	<L4+hWnd_1+2
	pei	<L4+hWnd_1
	jsl	~~k_user_DrawWindowTextToPointWithFont
;
;					r.x = 1;
	.line	266
	lda	#$1
	sta	<L4+r_1
;					r.y = 1;
	.line	267
	lda	#$1
	sta	<L4+r_1+2
;					k_user_DrawWindowTextToPointWithFont(hWnd,
	.line	268
;														 listItem = ((LPCHAR*)listbox->data)[listbox->indexTop],
;														 cMenu,
;														 &r,
;														 listbox->fontSet);
	ldy	#$18
	lda	[<L4+listbox_1],Y
	pha
	ldy	#$16
	lda	[<L4+listbox_1],Y
	pha
	pea	#0
	clc
	tdc
	adc	#<L4+r_1
	pha
	pei	<L4+cMenu_1
	ldy	#$0
	phy
	ldy	#$10
	lda	[<L4+listbox_1],Y
	ply
	rol	A
	ror	A
	bpl	L21
	dey
L21:
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
	ldy	#$1a
	lda	[<L4+listbox_1],Y
	adc	<R0
	sta	<R2
	ldy	#$1c
	lda	[<L4+listbox_1],Y
	adc	<R0+2
	sta	<R2+2
	lda	[<R2]
	sta	<L4+listItem_1
	ldy	#$2
	lda	[<R2],Y
	sta	<L4+listItem_1+2
	pei	<L4+listItem_1+2
	pei	<L4+listItem_1
	pei	<L4+hWnd_1+2
	pei	<L4+hWnd_1
	jsl	~~k_user_DrawWindowTextToPointWithFont
;
;				}
	.line	274
L10020:
;
;				/*
;				k_vdma_fill_rect(400,50,pWin->win_width,pWin->win_height,k_getUIBackgroundColor());
;				k_memory_bitblt(SHADOW_BANK_0,
;						        pWin->win_x + 2,
;						        //pWin->win_y + listbox->offsetY,
;								pWin->win_y + 1,
;								pWin->win_width - 10 ,
;								pWin->win_height,
;						        BITMAP_BANK_0,
;								400,50,BLT_DIR_TOPDOWN);
;				*/
;
;			}
	.line	288
;			break;
L10013:
	.line	289
	brl	L10003
;
;		case FX_KEY_DOWN:
	.line	291
L10021:
;			if(pMsg->data[0] == 80)
	.line	292
;			{
	sep	#$20
	longa	off
	ldy	#$16
	lda	[<L3+pMsg_0],Y
	cmp	#<$50
	rep	#$20
	longa	on
	beq	L22
	brl	L10022
L22:
	.line	293
;				k_debug_integer("listboxWindowProc::FX_KEY_DOWN:ARROWUP:",pMsg->data[0]);
	.line	294
	ldy	#$16
	lda	[<L3+pMsg_0],Y
	and	#$ff
	pha
	pea	#^L2+277
	pea	#<L2+277
	jsl	~~k_debug_integer
;				listbox->pos++;
	.line	295
	lda	[<L4+listbox_1]
	ina
	sta	[<L4+listbox_1]
;				if(listbox->pos > 29)
	.line	296
;					listbox->pos = 29;
	sec
	lda	#$1d
	sbc	[<L4+listbox_1]
	bvs	L23
	eor	#$8000
L23:
	bpl	L24
	brl	L10023
L24:
	.line	297
	lda	#$1d
	sta	[<L4+listbox_1]
;				k_send_window_message(k_getHandleFromWindow(pWin),FX_DRAW_WINDOW,0,0);
L10023:
	.line	298
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$fb00
	pei	<L4+pWin_1+2
	pei	<L4+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_send_window_message
;			}
	.line	299
;			else if(pMsg->data[0] == 72)
	brl	L10024
L10022:
	.line	300
;			{
	sep	#$20
	longa	off
	ldy	#$16
	lda	[<L3+pMsg_0],Y
	cmp	#<$48
	rep	#$20
	longa	on
	beq	L25
	brl	L10025
L25:
	.line	301
;				k_debug_integer("listboxWindowProc::FX_KEY_DOWN:ARROWDOWN:",pMsg->data[0]);
	.line	302
	ldy	#$16
	lda	[<L3+pMsg_0],Y
	and	#$ff
	pha
	pea	#^L2+317
	pea	#<L2+317
	jsl	~~k_debug_integer
;				listbox->pos--;
	.line	303
	clc
	lda	#$ffff
	adc	[<L4+listbox_1]
	sta	[<L4+listbox_1]
;				if(listbox->pos < 0)
	.line	304
;					listbox->pos = 0;
	lda	[<L4+listbox_1]
	bmi	L26
	brl	L10026
L26:
	.line	305
	lda	#$0
	sta	[<L4+listbox_1]
;				k_send_window_message(k_getHandleFromWindow(pWin),FX_DRAW_WINDOW,0,0);
L10026:
	.line	306
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$fb00
	pei	<L4+pWin_1+2
	pei	<L4+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_send_window_message
;			}
	.line	307
;			break;
L10025:
L10024:
	.line	308
	brl	L10003
;		case FX_MBUTTON_DOWN:
	.line	309
L10027:
;			if(pMsg->type!=FX_PROCESS)
	.line	310
;			{
	ldy	#$8
	lda	[<L3+pMsg_0],Y
	cmp	#<$ff00
	bne	L27
	brl	L10028
L27:
	.line	311
;				//k_debug_integer("consoleWindowProc::ProcessId:",p->procId);
;				k_debug_string("testWindowProc::FX_MBUTTON_DOWN\r\n");
	.line	313
	pea	#^L2+359
	pea	#<L2+359
	jsl	~~k_debug_string
;			}
	.line	314
;
;			break;
L10028:
	.line	316
	brl	L10003
;		default:
	.line	317
L10029:
;			DefWindowProc(pMsg);
	.line	318
	pei	<L3+pMsg_0+2
	pei	<L3+pMsg_0
	jsl	~~DefWindowProc
;			break;
	.line	319
	brl	L10003
;		}
	.line	320
L10002:
	xref	~~~swt
	jsl	~~~swt
	dw	5
	dw	3852
	dw	L10027-1
	dw	3856
	dw	L10021-1
	dw	64002
	dw	L10012-1
	dw	64256
	dw	L10006-1
	dw	65283
	dw	L10004-1
	dw	L10029-1
L10003:
;	}
	.line	321
;
;	return TRUE;
L10001:
	.line	323
	lda	#$1
L28:
	tay
	lda	<L3+2
	sta	<L3+2+4
	lda	<L3+1
	sta	<L3+1+4
	pld
	tsc
	clc
	adc	#L3+4
	tcs
	tya
	rtl
;}
	.line	324
	.endblock	324
L3	equ	64
L4	equ	13
	ends
	efunc
	.endfunc	324,13,64
	.line	324
	data
L2:
	db	$6C,$69,$73,$74,$62,$6F,$78,$57,$69,$6E,$64,$6F,$77,$50,$72
	db	$6F,$63,$3A,$3A,$46,$58,$5F,$43,$52,$45,$41,$54,$45,$5F,$57
	db	$49,$4E,$44,$4F,$57,$3A,$00,$54,$6F,$73,$68,$69,$62,$61,$4C
	db	$43,$44,$38,$78,$38,$00,$00,$6C,$69,$73,$74,$62,$6F,$78,$57
	db	$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$44
	db	$52,$41,$57,$5F,$57,$49,$4E,$44,$4F,$57,$0D,$0A,$00,$6C,$69
	db	$73,$74,$62,$6F,$78,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63
	db	$3A,$3A,$46,$58,$5F,$53,$43,$52,$4F,$4C,$4C,$42,$41,$52,$5F
	db	$43,$4F,$4D,$4D,$41,$4E,$44,$3A,$42,$4F,$55,$4E,$44,$20,$6C
	db	$69,$73,$74,$62,$6F,$78,$2D,$3E,$69,$6E,$64,$65,$78,$42,$6F
	db	$74,$74,$6F,$6D,$3A,$00,$6C,$69,$73,$74,$62,$6F,$78,$57,$69
	db	$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$53,$43
	db	$52,$4F,$4C,$4C,$42,$41,$52,$5F,$43,$4F,$4D,$4D,$41,$4E,$44
	db	$3A,$42,$4F,$55,$4E,$44,$20,$6C,$69,$73,$74,$62,$6F,$78,$2D
	db	$3E,$69,$6E,$64,$65,$78,$54,$6F,$70,$3A,$00,$FFFFFFDB,$FFFFFFDB,$FFFFFFDB,$FFFFFFDB
	db	$DB,$FFFFFFDB,$FFFFFFDB,$FFFFFFDB,$FFFFFFDB,$FFFFFFDB,$FFFFFFDB,$FFFFFFDB,$FFFFFFDB,$FFFFFFDB,$FFFFFFDB,$00,$54,$49,$4E
	db	$59,$54,$59,$50,$45,$38,$78,$38,$00,$FFFFFFDB,$FFFFFFDB,$FFFFFFDB,$FFFFFFDB,$FFFFFFDB,$FFFFFFDB
	db	$DB,$FFFFFFDB,$FFFFFFDB,$FFFFFFDB,$FFFFFFDB,$FFFFFFDB,$FFFFFFDB,$FFFFFFDB,$FFFFFFDB,$00,$54,$49,$4E,$59,$54
	db	$59,$50,$45,$38,$78,$38,$00,$6C,$69,$73,$74,$62,$6F,$78,$57
	db	$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$4B
	db	$45,$59,$5F,$44,$4F,$57,$4E,$3A,$41,$52,$52,$4F,$57,$55,$50
	db	$3A,$00,$6C,$69,$73,$74,$62,$6F,$78,$57,$69,$6E,$64,$6F,$77
	db	$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$4B,$45,$59,$5F,$44,$4F
	db	$57,$4E,$3A,$41,$52,$52,$4F,$57,$44,$4F,$57,$4E,$3A,$00,$74
	db	$65,$73,$74,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A
	db	$46,$58,$5F,$4D,$42,$55,$54,$54,$4F,$4E,$5F,$44,$4F,$57,$4E
	db	$0D,$0A,$00
	ends
;
	.line	324
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fx_ctl_listbox.c",41
	xref	~~DefWindowProc
	xref	~~k_user_DrawWindowTextToPointWithFont
	xref	~~k_user_CreateVerticalScrollBar
	xref	~~k_user_getFontClass
	xref	~~k_user_getSystemMetric
	xref	~~k_getHandleFromWindow
	xref	~~k_getWindowFromHandle
	xref	~~k_vdma_fill_rect
	xref	~~k_memory_bitblt
	xref	~~k_getUIMenuColor
	xref	~~k_getUIBackgroundColor
	xref	~~k_mem_allocate_heap
	xref	~~k_send_window_message
	xref	~~k_exec_get_current_process
	xref	~~k_debug_long
	xref	~~k_debug_integer
	xref	~~k_debug_string
	xref	~~memset
	.sym	~~listtext,~~listtext,1134,2,32,31
	.sym	PEACHCHILD_MSG,0,138,14,32,63
	.sym	EACHCHILD_MSG,0,10,14,64,63
	.sym	~~listboxWindowProc,~~listboxWindowProc,78,2,0
	.sym	~~DefWindowProc,~~DefWindowProc,78,18,0
	.sym	~~k_user_DrawWindowTextToPointWithFont,~~k_user_DrawWindowTextToPointWithFont,80,18,0
	.sym	~~k_user_CreateVerticalScrollBar,~~k_user_CreateVerticalScrollBar,1098,18,32,27
	.sym	~~k_user_getFontClass,~~k_user_getFontClass,1089,18,32
	.sym	~~k_user_getSystemMetric,~~k_user_getSystemMetric,69,18,0
	.sym	~~k_getHandleFromWindow,~~k_getHandleFromWindow,1089,18,32
	.sym	~~k_getWindowFromHandle,~~k_getWindowFromHandle,1098,18,32,27
	.sym	~~k_vdma_fill_rect,~~k_vdma_fill_rect,65,18,0
	.sym	~~k_memory_bitblt,~~k_memory_bitblt,65,18,0
	.sym	~~k_getUIMenuColor,~~k_getUIMenuColor,69,18,0
	.sym	~~k_getUIBackgroundColor,~~k_getUIBackgroundColor,69,18,0
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
	.sym	~~k_debug_long,~~k_debug_long,65,18,0
	.sym	~~k_debug_integer,~~k_debug_integer,65,18,0
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

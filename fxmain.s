;:ts=8
R0	equ	1
R1	equ	5
R2	equ	9
R3	equ	13
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxmain.c",0
;
;//#include "fxstartup.h"
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxmain.c",3
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxmain.c",4
;
;#include "DllMainBin.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\DllMainBin.h",0
	.line	43
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxmain.c",6
;
;#pragma section CODE=entry,offset $4:F000
entry	section	offset $4:F000
	ends
;
;int line = 2;
	data
	xdef	~~line
~~line:
	dw	$2
	ends
;
;static int  msp = 0;
	data
~~msp:
	dw	$0
	ends
;static char mainspinner[] = {'|','/','-','\\'};
	data
~~mainspinner:
	db	$7C,$2F,$2D,$5C
	ends
;static ULONG THIS_MODULE = 0x00000000;
	data
~~THIS_MODULE:
	dl	$0
	ends
;
;LPVOID	pAPGMPTR = NULL;
	data
	xdef	~~pAPGMPTR
~~pAPGMPTR:
	dl	$0
	ends
;typedef void (*DllMain)(UINT argc,LPVOID *argv);
;
;void k_level_test(VOID);
;void DeallocateNodeListString(LPCSTR name,LPVOID data);
;
;void ReportMemory(UCHAR segment,ULONG block,ULONG size)
;{
	.line	22
	.line	23
	entry
	xdef	~~ReportMemory
	func
	.function	23
~~ReportMemory:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L2
	tcs
	phd
	tcd
segment_0	set	4
block_0	set	6
size_0	set	10
	.block	23
;	char rmbuffer[16];
;	int pos  = 2;
;
;	pos = k_put_string(pos,line,"Memory Test Bank:",15,0);
rmbuffer_1	set	0
pos_1	set	16
	.sym	rmbuffer,0,110,1,0,16
	.sym	pos,16,5,1,16
	.sym	segment,4,14,6,8
	.sym	block,6,18,6,32
	.sym	size,10,18,6,32
	lda	#$2
	sta	<L3+pos_1
	.line	27
	pea	#<$0
	pea	#<$f
	pea	#^L1
	pea	#<L1
	lda	|~~line
	pha
	pei	<L3+pos_1
	jsl	~~k_put_string
	sta	<L3+pos_1
;	pos = k_put_string(pos,line,k_bytetohex(segment,rmbuffer),15,0);
	.line	28
	pea	#<$0
	pea	#<$f
	pea	#0
	clc
	tdc
	adc	#<L3+rmbuffer_1
	pha
	pei	<L2+segment_0
	jsl	~~k_bytetohex
	sta	<R0
	stx	<R0+2
	phx
	pha
	lda	|~~line
	pha
	pei	<L3+pos_1
	jsl	~~k_put_string
	sta	<L3+pos_1
;	pos = k_put_string(pos,line," Found ",15,0);
	.line	29
	pea	#<$0
	pea	#<$f
	pea	#^L1+18
	pea	#<L1+18
	lda	|~~line
	pha
	pei	<L3+pos_1
	jsl	~~k_put_string
	sta	<L3+pos_1
;	pos = k_put_string(pos,line,k_strip_padding(k_longtodec(size,rmbuffer)),15,0);
	.line	30
	pea	#<$0
	pea	#<$f
	pea	#0
	clc
	tdc
	adc	#<L3+rmbuffer_1
	pha
	pei	<L2+size_0+2
	pei	<L2+size_0
	jsl	~~k_longtodec
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_strip_padding
	sta	<R1
	stx	<R1+2
	phx
	pha
	lda	|~~line
	pha
	pei	<L3+pos_1
	jsl	~~k_put_string
	sta	<L3+pos_1
;	pos = k_put_string(pos,line," Bytes    ",15,0);
	.line	31
	pea	#<$0
	pea	#<$f
	pea	#^L1+26
	pea	#<L1+26
	lda	|~~line
	pha
	pei	<L3+pos_1
	jsl	~~k_put_string
	sta	<L3+pos_1
;}
	.line	32
L5:
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
	.endblock	32
L2	equ	26
L3	equ	9
	ends
	efunc
	.endfunc	32,9,26
	.line	32
	data
L1:
	db	$4D,$65,$6D,$6F,$72,$79,$20,$54,$65,$73,$74,$20,$42,$61,$6E
	db	$6B,$3A,$00,$20,$46,$6F,$75,$6E,$64,$20,$00,$20,$42,$79,$74
	db	$65,$73,$20,$20,$20,$20,$00
	ends
;
;void SpinMemory(UCHAR segment,ULONG block,ULONG size)
;{
	.line	34
	.line	35
	entry
	xdef	~~SpinMemory
	func
	.function	35
~~SpinMemory:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L7
	tcs
	phd
	tcd
segment_0	set	4
block_0	set	6
size_0	set	10
	.block	35
;	int pos = 0;
;	pos = k_put_string(pos,line,"System Memory Check:",15,0);
pos_1	set	0
	.sym	pos,0,5,1,16
	.sym	segment,4,14,6,8
	.sym	block,6,18,6,32
	.sym	size,10,18,6,32
	stz	<L8+pos_1
	.line	37
	pea	#<$0
	pea	#<$f
	pea	#^L6
	pea	#<L6
	lda	|~~line
	pha
	pei	<L8+pos_1
	jsl	~~k_put_string
	sta	<L8+pos_1
;	k_put_char(pos,line,mainspinner[msp++],15,0);
	.line	38
	pea	#<$0
	pea	#<$f
	lda	|~~msp
	sta	<R0
	inc	|~~msp
	ldx	<R0
	lda	|~~mainspinner,X
	pha
	lda	|~~line
	pha
	pei	<L8+pos_1
	jsl	~~k_put_char
;	if(msp>3) msp = 0;
	.line	39
	sec
	lda	#$3
	sbc	|~~msp
	bvs	L10
	eor	#$8000
L10:
	bpl	L11
	brl	L10001
L11:
	.line	39
	stz	|~~msp
;}
L10001:
	.line	40
L12:
	lda	<L7+2
	sta	<L7+2+10
	lda	<L7+1
	sta	<L7+1+10
	pld
	tsc
	clc
	adc	#L7+10
	tcs
	rtl
	.endblock	40
L7	equ	6
L8	equ	5
	ends
	efunc
	.endfunc	40,5,6
	.line	40
	data
L6:
	db	$53,$79,$73,$74,$65,$6D,$20,$4D,$65,$6D,$6F,$72,$79,$20,$43
	db	$68,$65,$63,$6B,$3A,$00
	ends
;
;void DeallocateNodeListString(LPCSTR name,LPVOID data)
;{
	.line	42
	.line	43
	entry
	xdef	~~DeallocateNodeListString
	func
	.function	43
~~DeallocateNodeListString:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L14
	tcs
	phd
	tcd
name_0	set	4
data_0	set	8
	.block	43
;	if(name)
	.sym	name,4,142,6,32
	.sym	data,8,129,6,32
	.line	44
;		k_debug_strings("DeallocateNodeListString:name:",(LPCHAR)name);
	lda	<L14+name_0
	ora	<L14+name_0+2
	bne	L17
	brl	L10002
L17:
	.line	45
	pei	<L14+name_0+2
	pei	<L14+name_0
	pea	#^L13
	pea	#<L13
	jsl	~~k_debug_strings
;
;	k_debug_pointer("DeallocateNodeListString:",data);
L10002:
	.line	47
	pei	<L14+data_0+2
	pei	<L14+data_0
	pea	#^L13+31
	pea	#<L13+31
	jsl	~~k_debug_pointer
;	if(data)
	.line	48
;	{
	lda	<L14+data_0
	ora	<L14+data_0+2
	bne	L18
	brl	L10003
L18:
	.line	49
;		k_mem_deallocate_heap(data);
	.line	50
	pei	<L14+data_0+2
	pei	<L14+data_0
	jsl	~~k_mem_deallocate_heap
;	}
	.line	51
;}
L10003:
	.line	52
L19:
	lda	<L14+2
	sta	<L14+2+8
	lda	<L14+1
	sta	<L14+1+8
	pld
	tsc
	clc
	adc	#L14+8
	tcs
	rtl
	.endblock	52
L14	equ	0
L15	equ	1
	ends
	efunc
	.endfunc	52,1,0
	.line	52
	data
L13:
	db	$44,$65,$61,$6C,$6C,$6F,$63,$61,$74,$65,$4E,$6F,$64,$65,$4C
	db	$69,$73,$74,$53,$74,$72,$69,$6E,$67,$3A,$6E,$61,$6D,$65,$3A
	db	$00,$44,$65,$61,$6C,$6C,$6F,$63,$61,$74,$65,$4E,$6F,$64,$65
	db	$4C,$69,$73,$74,$53,$74,$72,$69,$6E,$67,$3A,$00
	ends
;/*
;void k_delay_nop(void)
;{
;	asm NOP;
;	asm NOP;
;	asm NOP;
;	asm NOP;
;	asm NOP;
;	asm NOP;
;	asm NOP;
;	asm NOP;
;	asm NOP;
;	asm NOP;
;}
;
;void k_delay_1(void)
;{
;	int c = 0;
;
;	for(c=0;c<10;c++)
;	{
;		k_delay_nop();
;	}
;}
;
;void k_delay_1ms(void)
;{
;	k_delay_1();
;}
;
;void sleep(int msec)
;{
;	int c = 0;
;	for(c=0;c<msec;c++)
;	{
;		k_delay_1ms();
;	}
;}
;*/
;void main(void)
;{
	.line	92
	.line	93
	entry
	xdef	~~main
	func
	.function	93
~~main:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L21
	tcs
	phd
	tcd
	.block	93
;	UMM_HEAP_INFO *pheapInfo = NULL;
;	LPVOID ptrMemTest = NULL;
;	ULONG byteCount = 0;
;	//LPCHAR test1 = "   spaces to the left!";
;	//LPCHAR test2 = "spaces to the right!        ";
;	//LPCHAR test3 = "  spaces on both        ";
;	//LPCHAR test4 = "  spaces on both        ";
;	//LPCHAR test5 = "  spaces on both        ";
;	ULONG heapSize = 0;
;	//PFXSTRING fxtest = NULL;
;	PFXNODE tokens = NULL;
;	PFXNODE t = NULL;
;
;	PFXNODELIST nodelist = NULL;
;
;	//PFXNODE nodelist = NULL;
;	//PFXNODE newnode  = NULL;
;	//FXQUEUE *q = NULL;
;	char rmbuffer[16];
;	int i = 0;
;	int j = 0;
;	int pos = 0;
;	ULONG availableMem = 0;
;	KRESULT kerr = KERR_SUCCESS;
;
;	k_initializeZeroPage();
pheapInfo_1	set	0
ptrMemTest_1	set	4
byteCount_1	set	8
heapSize_1	set	12
tokens_1	set	16
t_1	set	20
nodelist_1	set	24
rmbuffer_1	set	28
i_1	set	44
j_1	set	46
pos_1	set	48
availableMem_1	set	50
kerr_1	set	54
	.sym	pheapInfo,0,138,1,32,51
	.sym	ptrMemTest,4,129,1,32
	.sym	byteCount,8,18,1,32
	.sym	heapSize,12,18,1,32
	.sym	tokens,16,138,1,32,5
	.sym	t,20,138,1,32,5
	.sym	nodelist,24,138,1,32,6
	.sym	rmbuffer,28,110,1,0,16
	.sym	i,44,5,1,16
	.sym	j,46,5,1,16
	.sym	pos,48,5,1,16
	.sym	availableMem,50,18,1,32
	.sym	kerr,54,18,1,32
	stz	<L22+pheapInfo_1
	stz	<L22+pheapInfo_1+2
	stz	<L22+ptrMemTest_1
	stz	<L22+ptrMemTest_1+2
	stz	<L22+byteCount_1
	stz	<L22+byteCount_1+2
	stz	<L22+heapSize_1
	stz	<L22+heapSize_1+2
	stz	<L22+tokens_1
	stz	<L22+tokens_1+2
	stz	<L22+t_1
	stz	<L22+t_1+2
	stz	<L22+nodelist_1
	stz	<L22+nodelist_1+2
	stz	<L22+i_1
	stz	<L22+j_1
	stz	<L22+pos_1
	stz	<L22+availableMem_1
	stz	<L22+availableMem_1+2
	stz	<L22+kerr_1
	stz	<L22+kerr_1+2
	.line	119
	jsl	~~k_initializeZeroPage
;
;	k_init_keyboard();
	.line	121
	jsl	~~k_init_keyboard
;	k_uart_enableirq_ports();
	.line	122
	jsl	~~k_uart_enableirq_ports
;
;	k_debug_crlf();
	.line	124
	jsl	~~k_debug_crlf
;	k_debug_string("**********************************\r\n");
	.line	125
	pea	#^L20
	pea	#<L20
	jsl	~~k_debug_string
;	k_debug_string("******  Welcome to FX/OS   *******\r\n");
	.line	126
	pea	#^L20+37
	pea	#<L20+37
	jsl	~~k_debug_string
;	k_debug_string("******       Booting       *******\r\n");
	.line	127
	pea	#^L20+74
	pea	#<L20+74
	jsl	~~k_debug_string
;	k_debug_string("**********************************\r\n");
	.line	128
	pea	#^L20+111
	pea	#<L20+111
	jsl	~~k_debug_string
;
;	k_debug_string_com1("%OSBOOTING COM1%\r\n");
	.line	130
	pea	#^L20+148
	pea	#<L20+148
	jsl	~~k_debug_string_com1
;	k_debug_string_com2("%OSBOOTING COM2%\r\n");
	.line	131
	pea	#^L20+167
	pea	#<L20+167
	jsl	~~k_debug_string_com2
;
;	k_gui_init_mousepointer(TRUE);
	.line	133
	pea	#<$1
	jsl	~~k_gui_init_mousepointer
;	k_set_text_colors();
	.line	134
	jsl	~~k_set_text_colors
;
;	k_initialize_text_fonts(0);
	.line	136
	pea	#<$0
	jsl	~~k_initialize_text_fonts
;	k_initialize_text();
	.line	137
	jsl	~~k_initialize_text
;	k_enable_text_cursor(0);
	.line	138
	pea	#<$0
	jsl	~~k_enable_text_cursor
;
;	k_enable_text_mode();
	.line	140
	jsl	~~k_enable_text_mode
;	k_set_border_color(0x00,0x00,0x00);
	.line	141
	pea	#<$0
	pea	#<$0
	pea	#<$0
	jsl	~~k_set_border_color
;	k_enable_border();
	.line	142
	jsl	~~k_enable_border
;
;	k_debug_string("k_clear_screen\r\n");
	.line	144
	pea	#^L20+186
	pea	#<L20+186
	jsl	~~k_debug_string
;
;	k_clear_screen(0);
	.line	146
	pea	#<$0
	jsl	~~k_clear_screen
;
;	for(i=3200;i>0;i--)
	.line	148
	lda	#$c80
	sta	<L22+i_1
L10006:
;	{
	.line	149
;		for(j=0;j<256;j++)
	.line	150
	stz	<L22+j_1
L10009:
;		{
	.line	151
;			asm NOP;
	.line	152
	asmstart
	NOP
	asmend
;		}
	.line	153
L10007:
	inc	<L22+j_1
	sec
	lda	<L22+j_1
	sbc	#<$100
	bvs	L24
	eor	#$8000
L24:
	bmi	L25
	brl	L10009
L25:
L10008:
;	}
	.line	154
L10004:
	dec	<L22+i_1
	sec
	lda	#$0
	sbc	<L22+i_1
	bvs	L26
	eor	#$8000
L26:
	bmi	L27
	brl	L10006
L27:
L10005:
;	/*
;	k_debug_string("waiting...\r\n");
;	for(i=16000;i>0;i--)
;	{
;		for(j=0;j<256;j++)
;		{
;			asm NOP;
;		}
;	}
;	*/
;	//*BORDER_X_SIZE = 5;
;	//*BORDER_Y_SIZE = 5;
;
;	k_debug_string("k_text_mode_dialog\r\n");
	.line	168
	pea	#^L20+203
	pea	#<L20+203
	jsl	~~k_debug_string
;	k_text_mode_dialog(1,0,73,15,NULL);
	.line	169
	pea	#^$0
	pea	#<$0
	pea	#<$f
	pea	#<$49
	pea	#<$0
	pea	#<$1
	jsl	~~k_text_mode_dialog
;
;	k_get_c256_major_version(rmbuffer);
	.line	171
	pea	#0
	clc
	tdc
	adc	#<L22+rmbuffer_1
	pha
	jsl	~~k_get_c256_major_version
;	k_debug_strings("C256 VERSION MAJOR:",rmbuffer);
	.line	172
	pea	#0
	clc
	tdc
	adc	#<L22+rmbuffer_1
	pha
	pea	#^L20+224
	pea	#<L20+224
	jsl	~~k_debug_strings
;	k_get_c256_minor_version(rmbuffer);
	.line	173
	pea	#0
	clc
	tdc
	adc	#<L22+rmbuffer_1
	pha
	jsl	~~k_get_c256_minor_version
;	k_debug_strings("C256 VERSION MINOR:",rmbuffer);
	.line	174
	pea	#0
	clc
	tdc
	adc	#<L22+rmbuffer_1
	pha
	pea	#^L20+244
	pea	#<L20+244
	jsl	~~k_debug_strings
;
;	k_debug_pointer("BUILD SYSTEM HEAP:",(LPVOID)FXOS_BUILD_FAR_HEAP_ADDR);
	.line	176
	pea	#^$100000
	pea	#<$100000
	pea	#^L20+264
	pea	#<L20+264
	jsl	~~k_debug_pointer
;	k_debug_pointer("             SIZE:",(LPVOID)FXOS_BUILD_FAR_HEAP_SIZE);
	.line	177
	pea	#^$50000
	pea	#<$50000
	pea	#^L20+283
	pea	#<L20+283
	jsl	~~k_debug_pointer
;
;
;	k_debug_string("k_report_configuration\r\n");
	.line	180
	pea	#^L20+302
	pea	#<L20+302
	jsl	~~k_debug_string
;	line = k_report_configuration(2,line);
	.line	181
	lda	|~~line
	pha
	pea	#<$2
	jsl	~~k_report_configuration
	sta	|~~line
;	//k_run_loop();
;
;
;
;	k_debug_string("k_fcheck_system_memory\r\n");
	.line	186
	pea	#^L20+327
	pea	#<L20+327
	jsl	~~k_debug_string
;	availableMem = k_fcheck_system_memory(ReportMemory);
	.line	187
	pea	#^~~ReportMemory
	pea	#<~~ReportMemory
	jsl	~~k_fcheck_system_memory
	sta	<L22+availableMem_1
	stx	<L22+availableMem_1+2
;
;	k_getZeroPage()->availableMemory 	= availableMem;
	.line	189
	jsl	~~k_getZeroPage
	sta	<R0
	stx	<R0+2
	lda	<L22+availableMem_1
	ldy	#$1c
	sta	[<R0],Y
	lda	<L22+availableMem_1+2
	ldy	#$1e
	sta	[<R0],Y
;	k_getZeroPage()->availableMemoryK	= availableMem/1024+1;
	.line	190
	jsl	~~k_getZeroPage
	sta	<R0
	stx	<R0+2
	pei	<L22+availableMem_1+2
	pei	<L22+availableMem_1
	lda	#$a
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R1
	stx	<R1+2
	clc
	lda	#$1
	adc	<R1
	sta	<R2
	lda	#$0
	adc	<R1+2
	sta	<R2+2
	lda	<R2
	ldy	#$20
	sta	[<R0],Y
	lda	<R2+2
	ldy	#$22
	sta	[<R0],Y
;
;	heapSize = k_heap_integrity_check();
	.line	192
	jsl	~~k_heap_integrity_check
	sta	<L22+heapSize_1
	stx	<L22+heapSize_1+2
;	k_debug_long("k_heap_integrity_check::heapsize:",heapSize);
	.line	193
	pei	<L22+heapSize_1+2
	pei	<L22+heapSize_1
	pea	#^L20+352
	pea	#<L20+352
	jsl	~~k_debug_long
;	//pheapInfo = umm_info(NULL,0);
;
;	k_debug_integer("sizeof(unsigned short int):",sizeof(unsigned short int));
	.line	196
	pea	#<$2
	pea	#^L20+386
	pea	#<L20+386
	jsl	~~k_debug_integer
;	k_debug_integer("sizeof(size_t):",sizeof(size_t));
	.line	197
	pea	#<$2
	pea	#^L20+414
	pea	#<L20+414
	jsl	~~k_debug_integer
;
;	k_debug_strings("DATE:",(LPSTR)k_get_date_string(rmbuffer));
	.line	199
	pea	#0
	clc
	tdc
	adc	#<L22+rmbuffer_1
	pha
	jsl	~~k_get_date_string
	sta	<R0
	stx	<R0+2
	phx
	pha
	pea	#^L20+430
	pea	#<L20+430
	jsl	~~k_debug_strings
;	k_debug_strings("TIME:",(LPSTR)k_get_localtime_string(rmbuffer));
	.line	200
	pea	#0
	clc
	tdc
	adc	#<L22+rmbuffer_1
	pha
	jsl	~~k_get_localtime_string
	sta	<R0
	stx	<R0+2
	phx
	pha
	pea	#^L20+436
	pea	#<L20+436
	jsl	~~k_debug_strings
;
;	//RTC_HRS[0]     = (0 << 4) + (8);
;	//RTC_MIN[0]     = (5 << 4) + (8);
;	//RTC_SEC[0]     = 0;
;
;	//k_debug_strings("Initialize:","flpydsk_install");
;	//asm cli;
;	//flpydsk_install(6);
;	//asm sei;
;
;	//floppy_init();
;	//asm sei;
;
;	//flpydsk_read_sector(1);
;	//flpydsk_read_sector(2);
;
;
;/*
;	RTC_HRS[0]     = (1 << 4) + (2);
;	RTC_DAY[0]     = (1 << 4) + (0);
;	RTC_MONTH[0]   = (1 << 4) + (0);
;	RTC_CENTURY[0] = (2 << 4) + (0);
;	RTC_YEAR[0]    = (1 << 4) + (9);
;
;	while(1)
;	{
;		k_debug_integer("TIME:H:", (((RTC_HRS[0]&0x30)>>4) * 10)  + (RTC_HRS[0]&0x0F) );
;		k_debug_integer("    :M:", (((RTC_MIN[0]&0x70)>>4) * 10)  + (RTC_MIN[0]&0x0F) );
;		k_debug_integer("    :S:", (((RTC_SEC[0]&0x70)>>4) * 10)  + (RTC_SEC[0]&0x0F) );
;
;
;		k_debug_integer("    :M:",  (((RTC_MONTH[0]&0x10)>>4)  * 10)  + (RTC_MONTH[0]&0x0F)   );
;		k_debug_integer("    :D:",  (((RTC_DAY[0]&0x10)>>4)    * 10)  + (RTC_DAY[0]&0x0F)     );
;		k_debug_integer("    :Y:",  (((RTC_YEAR[0]&0xF0)>>4)   * 10)  + (RTC_YEAR[0]&0x0F)    );
;		k_debug_integer("    :C:",  (((RTC_CENTURY[0]&0xF0)>>4)* 10)  + (RTC_CENTURY[0]&0x0F) );
;
;		k_debug_integer("    :RY:",  RTC_YEAR[0]);
;		for(pos=0;pos<0xFFFF;pos++)
;		{
;			asm NOP;
;			asm NOP;
;			asm NOP;
;			asm NOP;
;			asm NOP;
;			asm NOP;
;			asm NOP;
;			asm NOP;
;			asm NOP;
;			asm NOP;
;			asm NOP;
;			asm NOP;
;			asm NOP;
;		}
;	}
;
;*/
;	/*
;	kerr = KERR_SUCCESS;
;	if(SUCCESS(kerr))
;		k_debug_string("KERR_SUCCESS WORKED\r\n");
;
;	kerr = KERR_FAIL;
;	if(SUCCESS(kerr))
;		k_debug_string("KERR_FAIL TEST FAILED\r\n");
;	else
;		k_debug_string("FAIL WORKED\r\n");
;
;	kerr += 1024;
;	if(SUCCESS(kerr))
;		k_debug_string("KERR_FAIL TEST FAILED\r\n");
;	else
;		k_debug_string("FAIL WORKED\r\n");
;
;	if(FAILED(kerr))
;		k_debug_string("FAIL WORKED\r\n");
;	else
;		k_debug_string("KERR_FAIL TEST FAILED\r\n");
;	*/
;	//availableMem = k_fcheck_system_memory(SpinMemory);
;	line++;
	.line	280
	inc	|~~line
;	line++;
	.line	281
	inc	|~~line
;	pos = 2;
	.line	282
	lda	#$2
	sta	<L22+pos_1
;	pos = k_put_string(pos,line,k_strip_padding(k_longtodec(k_getZeroPage()->availableMemoryK,rmbuffer)),15,0);
	.line	283
	pea	#<$0
	pea	#<$f
	pea	#0
	clc
	tdc
	adc	#<L22+rmbuffer_1
	pha
	jsl	~~k_getZeroPage
	sta	<R0
	stx	<R0+2
	ldy	#$22
	lda	[<R0],Y
	pha
	ldy	#$20
	lda	[<R0],Y
	pha
	jsl	~~k_longtodec
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_strip_padding
	sta	<R1
	stx	<R1+2
	phx
	pha
	lda	|~~line
	pha
	pei	<L22+pos_1
	jsl	~~k_put_string
	sta	<L22+pos_1
;	pos = k_put_string(pos,line,"K RAM Available",15,0);
	.line	284
	pea	#<$0
	pea	#<$f
	pea	#^L20+442
	pea	#<L20+442
	lda	|~~line
	pha
	pei	<L22+pos_1
	jsl	~~k_put_string
	sta	<L22+pos_1
;
;	k_debug_long("AVAIL MEM:", availableMem);
	.line	286
	pei	<L22+availableMem_1+2
	pei	<L22+availableMem_1
	pea	#^L20+458
	pea	#<L20+458
	jsl	~~k_debug_long
;
;	line++;
	.line	288
	inc	|~~line
;	pos = 2;
	.line	289
	lda	#$2
	sta	<L22+pos_1
;	pos = k_put_string(pos,line,k_strip_padding(k_longtodec(heapSize/1024 ,rmbuffer)),15,0);
	.line	290
	pea	#<$0
	pea	#<$f
	pea	#0
	clc
	tdc
	adc	#<L22+rmbuffer_1
	pha
	pei	<L22+heapSize_1+2
	pei	<L22+heapSize_1
	lda	#$a
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R0
	stx	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~k_longtodec
	sta	<R1
	stx	<R1+2
	phx
	pha
	jsl	~~k_strip_padding
	sta	<R2
	stx	<R2+2
	phx
	pha
	lda	|~~line
	pha
	pei	<L22+pos_1
	jsl	~~k_put_string
	sta	<L22+pos_1
;	pos = k_put_string(pos,line,"K HEAP RAM Available",15,0);
	.line	291
	pea	#<$0
	pea	#<$f
	pea	#^L20+469
	pea	#<L20+469
	lda	|~~line
	pha
	pei	<L22+pos_1
	jsl	~~k_put_string
	sta	<L22+pos_1
;
;
;	//pos = 2;
;	//line+=2;
;	//pos = k_put_string(pos,line,"Initializing SD",5,0);
;	//k_sd_initialize();
;
;
;	k_debug_integer("sizeof(unsigned short int):",sizeof(unsigned short int));
	.line	300
	pea	#<$2
	pea	#^L20+490
	pea	#<L20+490
	jsl	~~k_debug_integer
;	k_debug_integer("sizeof(FXOSMESSAGE):",sizeof(FXOSMESSAGE));
	.line	301
	pea	#<$26
	pea	#^L20+518
	pea	#<L20+518
	jsl	~~k_debug_integer
;	k_debug_integer("sizeof(FXCMDMESSAGE):",sizeof(FXCMDMESSAGE));
	.line	302
	pea	#<$26
	pea	#^L20+539
	pea	#<L20+539
	jsl	~~k_debug_integer
;	// version testing
;	if(sizeof(FXOSMESSAGE)!=sizeof(FXCMDMESSAGE))
	.line	304
;		k_exec_throw_exception(THIS_MODULE,0x10000001,"VERSION ERROR: FXOSMESSAGE size mismatch",-1);
	brl	L10010
	.line	305
	pea	#<$ffffffff
	pea	#^L20+561
	pea	#<L20+561
	pea	#^$10000001
	pea	#<$10000001
	lda	|~~THIS_MODULE+2
	pha
	lda	|~~THIS_MODULE
	pha
	jsl	~~k_exec_throw_exception
;	//
;	k_debug_integer("k_get_cols_visible:",k_get_cols_visible());
L10010:
	.line	307
	jsl	~~k_get_cols_visible
	pha
	pea	#^L20+602
	pea	#<L20+602
	jsl	~~k_debug_integer
;	k_debug_integer("k_get_cols_per_line:",k_get_cols_per_line());
	.line	308
	jsl	~~k_get_cols_per_line
	pha
	pea	#^L20+622
	pea	#<L20+622
	jsl	~~k_debug_integer
;	k_debug_integer("k_get_lines_visible",k_get_lines_visible());
	.line	309
	jsl	~~k_get_lines_visible
	pha
	pea	#^L20+643
	pea	#<L20+643
	jsl	~~k_debug_integer
;	k_debug_integer("k_get_lines_max:",k_get_lines_max());
	.line	310
	jsl	~~k_get_lines_max
	pha
	pea	#^L20+663
	pea	#<L20+663
	jsl	~~k_debug_integer
;
;
;	k_dos_load_drivers();
	.line	313
	jsl	~~k_dos_load_drivers
;	//k_create_dos_device(FXDOS_SDC);
;
;	/*
;	k_debug_string("****");
;	k_debug_string(test1);
;	k_debug_string("****\r\n");
;
;	k_debug_string("****");
;	k_debug_string(test2);
;	k_debug_string("****\r\n");
;
;	k_debug_string("****");
;	k_debug_string(test3);
;	k_debug_string("****\r\n");
;
;
;	k_debug_string("****");
;	k_debug_string(k_string_ltrim(test1));
;	k_debug_string("****\r\n");
;
;
;	k_debug_string("****");
;	k_debug_string(k_string_rtrim(test2));
;	k_debug_string("****\r\n");
;
;	k_debug_string("****");
;	k_debug_string(k_string_ltrim(test3));
;	k_debug_string("****\r\n");
;	k_debug_string("****");
;	k_debug_string(k_string_rtrim(test4));
;	k_debug_string("****\r\n");
;	k_debug_string("****");
;	k_debug_string(k_string_trim(test5));
;	k_debug_string("****\r\n");
;	*/
;
;	/*
;	nodelist = k_nodelist_allocate_list("testlist",DeallocateNodeListString);
;	if(nodelist)
;	{
;		k_nodelist_addtolist(nodelist,1,"node1",k_mem_allocate_heap(8));
;		k_nodelist_addtolist(nodelist,2,"node2",NULL);
;		k_nodelist_addtolist(nodelist,3,"node3",k_mem_allocate_heap(8));
;		k_nodelist_addtolist(nodelist,1,"node4",k_mem_allocate_heap(8));
;		k_nodelist_addtolist(nodelist,2,"node5",k_mem_allocate_heap(8));
;
;		//k_nodelist_addtolist(nodelist,2,"node5",k_mem_allocate_heap(8));
;
;		k_debug_strings("NodeList Name:",(LPCHAR)k_nodelist_getlistname(nodelist));
;
;		k_debug_nodelist(k_nodelist_getfirstnode(nodelist));
;
;		k_debug_pointer("NODELIST:",nodelist);
;		k_debug_pointer("NODELIST->HEAD:",nodelist->listhead);
;		k_nodelist_deallocate_list(nodelist);
;	}
;	*/
;
;	/*
;		nodelist = k_nodelist_init(1,"node1",NULL);
;		newnode = k_nodelist_create(2,"node2",NULL,NULL,NULL);
;		k_nodelist_add(nodelist,newnode);
;		newnode = k_nodelist_create(3,"node3",NULL,NULL,NULL);
;		k_nodelist_add(nodelist,newnode);
;		newnode = k_nodelist_create(34,"node4",NULL,NULL,NULL);
;		k_nodelist_add(nodelist,newnode);
;
;		k_debug_nodelist(nodelist);
;	 */
;
;	/*
;    q = malloc(sizeof(FXQUEUE));
;    k_debug_pointer("QUEUE:", q);
;    k_initialize(q);
;    k_enqueue(q,10);
;    k_enqueue(q,20);
;    k_enqueue(q,30);
;    k_debug_string("Queue before dequeue\r\n");
;    k_debug_queue(q->front);
;    k_dequeue(q);
;    k_debug_string("Queue after dequeue\r\n");
;    k_debug_queue(q->front);
;
;	free(q);
;	*/
;
;	/*
;	k_debug_string("**********************************\r\n");
;	fxtest = k_fxstring_new("This is a test",64);
;	k_debug_message("fxstring:text:" ,k_fxstring_as(fxtest));
;	k_debug_integer("fxstring:size:" ,k_fxstring_size(fxtest));
;	k_debug_integer("fxstring:length:" ,k_fxstring_length(fxtest));
;	k_debug_integer("fxstring:pos:" ,k_fxstring_position(fxtest));
;	k_debug_string("**********************************\r\n");
;	k_debug_message("fxstring:text:" ,k_fxstring_addchar(fxtest,'*'));
;	k_debug_integer("fxstring:length:" ,k_fxstring_length(fxtest));
;	k_debug_integer("fxstring:pos:" ,k_fxstring_position(fxtest));
;	k_debug_string("**********************************\r\n");
;	k_debug_message("fxstring:text:" ,k_fxstring_addchar(fxtest,'#'));
;	k_debug_integer("fxstring:length:" ,k_fxstring_length(fxtest));
;	k_debug_integer("fxstring:pos:" ,k_fxstring_position(fxtest));
;	k_debug_string("**********************************\r\n");
;	k_debug_message("fxstring:text:" ,k_fxstring_add(fxtest,"at the end!"));
;	k_debug_integer("fxstring:length:" ,k_fxstring_length(fxtest));
;	k_debug_integer("fxstring:pos:" ,k_fxstring_position(fxtest));
;	k_debug_string("**********************************\r\n");
;	*/
;
;	//k_debug_string(k_string_replace(k_string_replace("This is a %s1 of the replacement %s2 systems.", "%s1", "TEST1"), "%s2", "TEST2"));
;	//k_debug_crlf();
;	//k_debug_integers("k_debug_integers:%d1 %d2 %d3",2,4,5);
;
;	//
;	/*
;	asm cli;
;	while(1)
;	{
;		asm WAI;
;	}
;	*/
;	//
;
;	////k_main_loop(NULL);
;
;	////
;	// init trap table - temp location
;	///
;
;#ifdef USE_FX256_FMX
;	/*
;	memset(k_getKernelTrapTable(),0,512);
;	k_getKernelTrapTable()[KT_DOS_GETDIRECTORY] = k_GetDirectory;
;	k_getKernelTrapTable()[KT_DBG_STRING] = k_DebugOutString;
;	*/
;#endif
;	/*
;	k_debug_integer("APGM sizeof:",sizeof(APGMBIN));
;
;	pAPGMPTR = ((LPCHAR)0x0E0000);//k_mem_allocate_heap(sizeof(APGMBIN));
;	memcpy(pAPGMPTR,APGMBIN,sizeof(APGMBIN));
;
;	k_debug_byte_array("APGM DATA:\r\n",pAPGMPTR,sizeof(APGMBIN));
;
;	k_debug_string("Calling DllMain\r\n");
;
;	//((DllMain)pAPGMPTR)(0,NULL);
;
;	k_debug_string("Back from DllMain\r\n");
;	*/
;
;	//k_level_test();
;	//while(1);
;
;
;	k_event_loop();
	.line	468
	jsl	~~k_event_loop
;
;}
	.line	470
L28:
	pld
	tsc
	clc
	adc	#L21
	tcs
	rtl
	.endblock	470
L21	equ	70
L22	equ	13
	ends
	efunc
	.endfunc	470,13,70
	.line	470
	data
L20:
	db	$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A
	db	$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A
	db	$2A,$2A,$2A,$2A,$0D,$0A,$00,$2A,$2A,$2A,$2A,$2A,$2A,$20,$20
	db	$57,$65,$6C,$63,$6F,$6D,$65,$20,$74,$6F,$20,$46,$58,$2F,$4F
	db	$53,$20,$20,$20,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$0D,$0A,$00,$2A
	db	$2A,$2A,$2A,$2A,$2A,$20,$20,$20,$20,$20,$20,$20,$42,$6F,$6F
	db	$74,$69,$6E,$67,$20,$20,$20,$20,$20,$20,$20,$2A,$2A,$2A,$2A
	db	$2A,$2A,$2A,$0D,$0A,$00,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A
	db	$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A
	db	$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$0D,$0A,$00,$25,$4F
	db	$53,$42,$4F,$4F,$54,$49,$4E,$47,$20,$43,$4F,$4D,$31,$25,$0D
	db	$0A,$00,$25,$4F,$53,$42,$4F,$4F,$54,$49,$4E,$47,$20,$43,$4F
	db	$4D,$32,$25,$0D,$0A,$00,$6B,$5F,$63,$6C,$65,$61,$72,$5F,$73
	db	$63,$72,$65,$65,$6E,$0D,$0A,$00,$6B,$5F,$74,$65,$78,$74,$5F
	db	$6D,$6F,$64,$65,$5F,$64,$69,$61,$6C,$6F,$67,$0D,$0A,$00,$43
	db	$32,$35,$36,$20,$56,$45,$52,$53,$49,$4F,$4E,$20,$4D,$41,$4A
	db	$4F,$52,$3A,$00,$43,$32,$35,$36,$20,$56,$45,$52,$53,$49,$4F
	db	$4E,$20,$4D,$49,$4E,$4F,$52,$3A,$00,$42,$55,$49,$4C,$44,$20
	db	$53,$59,$53,$54,$45,$4D,$20,$48,$45,$41,$50,$3A,$00,$20,$20
	db	$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$53,$49,$5A,$45
	db	$3A,$00,$6B,$5F,$72,$65,$70,$6F,$72,$74,$5F,$63,$6F,$6E,$66
	db	$69,$67,$75,$72,$61,$74,$69,$6F,$6E,$0D,$0A,$00,$6B,$5F,$66
	db	$63,$68,$65,$63,$6B,$5F,$73,$79,$73,$74,$65,$6D,$5F,$6D,$65
	db	$6D,$6F,$72,$79,$0D,$0A,$00,$6B,$5F,$68,$65,$61,$70,$5F,$69
	db	$6E,$74,$65,$67,$72,$69,$74,$79,$5F,$63,$68,$65,$63,$6B,$3A
	db	$3A,$68,$65,$61,$70,$73,$69,$7A,$65,$3A,$00,$73,$69,$7A,$65
	db	$6F,$66,$28,$75,$6E,$73,$69,$67,$6E,$65,$64,$20,$73,$68,$6F
	db	$72,$74,$20,$69,$6E,$74,$29,$3A,$00,$73,$69,$7A,$65,$6F,$66
	db	$28,$73,$69,$7A,$65,$5F,$74,$29,$3A,$00,$44,$41,$54,$45,$3A
	db	$00,$54,$49,$4D,$45,$3A,$00,$4B,$20,$52,$41,$4D,$20,$41,$76
	db	$61,$69,$6C,$61,$62,$6C,$65,$00,$41,$56,$41,$49,$4C,$20,$4D
	db	$45,$4D,$3A,$00,$4B,$20,$48,$45,$41,$50,$20,$52,$41,$4D,$20
	db	$41,$76,$61,$69,$6C,$61,$62,$6C,$65,$00,$73,$69,$7A,$65,$6F
	db	$66,$28,$75,$6E,$73,$69,$67,$6E,$65,$64,$20,$73,$68,$6F,$72
	db	$74,$20,$69,$6E,$74,$29,$3A,$00,$73,$69,$7A,$65,$6F,$66,$28
	db	$46,$58,$4F,$53,$4D,$45,$53,$53,$41,$47,$45,$29,$3A,$00,$73
	db	$69,$7A,$65,$6F,$66,$28,$46,$58,$43,$4D,$44,$4D,$45,$53,$53
	db	$41,$47,$45,$29,$3A,$00,$56,$45,$52,$53,$49,$4F,$4E,$20,$45
	db	$52,$52,$4F,$52,$3A,$20,$46,$58,$4F,$53,$4D,$45,$53,$53,$41
	db	$47,$45,$20,$73,$69,$7A,$65,$20,$6D,$69,$73,$6D,$61,$74,$63
	db	$68,$00,$6B,$5F,$67,$65,$74,$5F,$63,$6F,$6C,$73,$5F,$76,$69
	db	$73,$69,$62,$6C,$65,$3A,$00,$6B,$5F,$67,$65,$74,$5F,$63,$6F
	db	$6C,$73,$5F,$70,$65,$72,$5F,$6C,$69,$6E,$65,$3A,$00,$6B,$5F
	db	$67,$65,$74,$5F,$6C,$69,$6E,$65,$73,$5F,$76,$69,$73,$69,$62
	db	$6C,$65,$00,$6B,$5F,$67,$65,$74,$5F,$6C,$69,$6E,$65,$73,$5F
	db	$6D,$61,$78,$3A,$00
	ends
;
;
;void k_level_test(VOID)
;{
	.line	473
	.line	474
	entry
	xdef	~~k_level_test
	func
	.function	474
~~k_level_test:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L30
	tcs
	phd
	tcd
	.block	474
;
;	int i = 30000;
;	int j = 30000;
;	int x = 0;
;	int y = 200;
;
;	int boxx = 200;
;	int boxy = 200;
;	int incx = 1;
;	int incy = 1;
;	int size = 5;
;
;	incx = size;
i_1	set	0
j_1	set	2
x_1	set	4
y_1	set	6
boxx_1	set	8
boxy_1	set	10
incx_1	set	12
incy_1	set	14
size_1	set	16
	.sym	i,0,5,1,16
	.sym	j,2,5,1,16
	.sym	x,4,5,1,16
	.sym	y,6,5,1,16
	.sym	boxx,8,5,1,16
	.sym	boxy,10,5,1,16
	.sym	incx,12,5,1,16
	.sym	incy,14,5,1,16
	.sym	size,16,5,1,16
	lda	#$7530
	sta	<L31+i_1
	lda	#$7530
	sta	<L31+j_1
	stz	<L31+x_1
	lda	#$c8
	sta	<L31+y_1
	lda	#$c8
	sta	<L31+boxx_1
	lda	#$c8
	sta	<L31+boxy_1
	lda	#$1
	sta	<L31+incx_1
	lda	#$1
	sta	<L31+incy_1
	lda	#$5
	sta	<L31+size_1
	.line	487
	lda	<L31+size_1
	sta	<L31+incx_1
;	incy = size;
	.line	488
	lda	<L31+size_1
	sta	<L31+incy_1
;
;	setColors();
	.line	490
	jsl	~~setColors
;
;	for(i=3200;i>0;i--)
	.line	492
	lda	#$c80
	sta	<L31+i_1
L10013:
;	{
	.line	493
;		for(j=0;j<256;j++)
	.line	494
	stz	<L31+j_1
L10016:
;		{
	.line	495
;			asm NOP;
	.line	496
	asmstart
	NOP
	asmend
;		}
	.line	497
L10014:
	inc	<L31+j_1
	sec
	lda	<L31+j_1
	sbc	#<$100
	bvs	L33
	eor	#$8000
L33:
	bmi	L34
	brl	L10016
L34:
L10015:
;	}
	.line	498
L10011:
	dec	<L31+i_1
	sec
	lda	#$0
	sbc	<L31+i_1
	bvs	L35
	eor	#$8000
L35:
	bmi	L36
	brl	L10013
L36:
L10012:
;
;	/*
;	*BM1_CONTROL_REG = 0x01;
;	*BM1_START_ADDY_L = 0;
;	*BM1_START_ADDY_M = 0;
;	*BM1_START_ADDY_H = 0x10;
;
;	*BM0_CONTROL_REG = 0x01;
;	*BM0_START_ADDY_L = 0;
;	*BM0_START_ADDY_M = 0;
;	*BM0_START_ADDY_H = 0;
;
;
;	k_debug_string("k_enable_bitmap_mode RESET 1a...\r\n");
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
;	k_debug_string("k_enable_bitmap_mode RESET 1b...\r\n");
;
;	MASTER_CTRL_REG_H[0] = 0x00;
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
;	MASTER_CTRL_REG_H[0] = 0x00;
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
;	k_debug_string("k_enable_bitmap_mode RESET 2...\r\n");
;
;	MASTER_CTRL_REG_H[0] = 0x00;
;	MASTER_CTRL_REG_L[0] = MSTR_CTRL_GRAPH_MODE_EN;
;	for(i=3200;i>0;i--)
;	{
;		for(j=0;j<256;j++)
;		{
;			asm NOP;
;		}
;	}
;
;
;	*BM1_CONTROL_REG = ( BM_ENABLE | BM_LUT0 );
;	*BM0_CONTROL_REG = ( BM_ENABLE | BM_LUT0 );
;
;	k_debug_string("k_enable_bitmap_mode RESET 3...\r\n");
;	*MASTER_CTRL_REG_L 	= (MSTR_CTRL_GRAPH_MODE_EN | MSTR_CTRL_BITMAP_EN);
;
;	for(i=3200;i>0;i--)
;	{
;		for(j=0;j<256;j++)
;		{
;			asm NOP;
;		}
;	}
;	*/
;
;	k_enable_bitmap_mode();
	.line	579
	jsl	~~k_enable_bitmap_mode
;
;	k_gui_init_mousepointer(TRUE);
	.line	581
	pea	#<$1
	jsl	~~k_gui_init_mousepointer
;
;	k_disable_border();
	.line	583
	jsl	~~k_disable_border
;
;	k_debug_string("CLEAR\r\n");
	.line	585
	pea	#^L29
	pea	#<L29
	jsl	~~k_debug_string
;
;	k_vdma_fill_rect_ex(0,0,640,480,0,0x00);
	.line	587
	pea	#<$0
	pea	#<$0
	pea	#<$1e0
	pea	#<$280
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	jsl	~~k_vdma_fill_rect_ex
;	k_vdma_fill_rect_ex(0,0,640,480,0,0x10);
	.line	588
	pea	#<$10
	pea	#<$0
	pea	#<$1e0
	pea	#<$280
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	jsl	~~k_vdma_fill_rect_ex
;
;	k_debug_string("FILL 0x00\r\n");
	.line	590
	pea	#^L29+8
	pea	#<L29+8
	jsl	~~k_debug_string
;
;	k_vdma_fill_rect_ex(200,200,100,100,15,0x00);
	.line	592
	pea	#<$0
	pea	#<$f
	pea	#<$64
	pea	#<$64
	pea	#^$c8
	pea	#<$c8
	pea	#^$c8
	pea	#<$c8
	jsl	~~k_vdma_fill_rect_ex
;	k_vdma_fill_rect_ex(200,50,100,100,15,0x00);
	.line	593
	pea	#<$0
	pea	#<$f
	pea	#<$64
	pea	#<$64
	pea	#^$32
	pea	#<$32
	pea	#^$c8
	pea	#<$c8
	jsl	~~k_vdma_fill_rect_ex
;
;	k_vdma_fill_rect_ex(0,0,640,480,0,0x10);
	.line	595
	pea	#<$10
	pea	#<$0
	pea	#<$1e0
	pea	#<$280
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	jsl	~~k_vdma_fill_rect_ex
;
;	x = 1;
	.line	597
	lda	#$1
	sta	<L31+x_1
;	while(1)
	.line	598
L10017:
;	{
	.line	599
;		k_vdma_fill_rect_ex(0,0,400,400,x,0x10);
	.line	600
	pea	#<$10
	pei	<L31+x_1
	pea	#<$190
	pea	#<$190
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	jsl	~~k_vdma_fill_rect_ex
;		k_vdma_fill_rect_ex(400,400,200,80,15-x,0x10);
	.line	601
	pea	#<$10
	sec
	lda	#$f
	sbc	<L31+x_1
	pha
	pea	#<$50
	pea	#<$c8
	pea	#^$190
	pea	#<$190
	pea	#^$190
	pea	#<$190
	jsl	~~k_vdma_fill_rect_ex
;
;		/*
;		i = 32000;
;		for(y=0;y<30;y++)
;		{
;			k_debug_string("WAIT\r\n");
;			while(i > 0)
;			{
;				i--;
;				asm NOP;
;				asm NOP;
;				asm NOP;
;				asm NOP;
;				asm NOP;
;				asm NOP;
;			}
;		}
;		*/
;
;
;
;		k_vdma_move_rect(boxx,boxy,100,100,incx,0,15,0x00);
	.line	623
	pea	#<$0
	pea	#<$f
	pea	#<$0
	pei	<L31+incx_1
	pea	#<$64
	pea	#<$64
	ldy	#$0
	lda	<L31+boxy_1
	bpl	L37
	dey
L37:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	lda	<L31+boxx_1
	bpl	L38
	dey
L38:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_move_rect
;		k_vdma_fill_rect_ex(boxx,boxy - 150,100,100,0,0x00);
	.line	624
	pea	#<$0
	pea	#<$0
	pea	#<$64
	pea	#<$64
	clc
	lda	#$ff6a
	adc	<L31+boxy_1
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L39
	dey
L39:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	lda	<L31+boxx_1
	bpl	L40
	dey
L40:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect_ex
;		//k_draw_rect_slow(boxx,boxy, boxx+100, boxy+100, 0);
;
;		//k_draw_circle(boxx,boxy,100,0);
;
;
;		boxx+=incx;
	.line	630
	clc
	lda	<L31+boxx_1
	adc	<L31+incx_1
	sta	<L31+boxx_1
;		if(incx > 0 && ((boxx + size + 100) > 640))
	.line	631
;			incx = (-1 * size);
	sec
	lda	#$0
	sbc	<L31+incx_1
	bvs	L41
	eor	#$8000
L41:
	bpl	L42
	brl	L10019
L42:
	clc
	lda	<L31+boxx_1
	adc	<L31+size_1
	sta	<R0
	clc
	lda	#$64
	adc	<R0
	sta	<R1
	sec
	lda	#$280
	sbc	<R1
	bvs	L43
	eor	#$8000
L43:
	bpl	L44
	brl	L10019
L44:
	.line	632
	sec
	lda	#$0
	sbc	<L31+size_1
	sta	<L31+incx_1
;		if(incx < 0 && ((boxx - size) < 0))
L10019:
	.line	633
;			incx = size;
	lda	<L31+incx_1
	bmi	L45
	brl	L10020
L45:
	sec
	lda	<L31+boxx_1
	sbc	<L31+size_1
	sta	<R0
	lda	<R0
	bmi	L46
	brl	L10020
L46:
	.line	634
	lda	<L31+size_1
	sta	<L31+incx_1
;
;		/*
;		boxy+=incy;
;		if(incy > 0 && ((boxy+100)>480))
;			incy = (-1 * size);
;		if(incy < 0 && (boxy < 0))
;			incy = size;
;		*/
;		k_vdma_fill_rect_ex(boxx,boxy - 150,100,100,15,0x00);
L10020:
	.line	643
	pea	#<$0
	pea	#<$f
	pea	#<$64
	pea	#<$64
	clc
	lda	#$ff6a
	adc	<L31+boxy_1
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L47
	dey
L47:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	lda	<L31+boxx_1
	bpl	L48
	dey
L48:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect_ex
;		//k_draw_circle(boxx,boxy,100,15);
;		//k_draw_rect_slow(boxx,boxy, boxx+100, boxy+100, 15);
;
;
;		//k_debug_string("SECOND\r\n");
;
;		x++;
	.line	650
	inc	<L31+x_1
;		if(x > 14)
	.line	651
;			x = 0;
	sec
	lda	#$e
	sbc	<L31+x_1
	bvs	L49
	eor	#$8000
L49:
	bpl	L50
	brl	L10021
L50:
	.line	652
	stz	<L31+x_1
;	}
L10021:
	.line	653
	brl	L10017
;	//k_vdma_fill_rect(10,10,100,100,5);
;
;
;	return;
	.line	657
L51:
	pld
	tsc
	clc
	adc	#L30
	tcs
	rtl
;}
	.line	658
	.endblock	658
L30	equ	26
L31	equ	9
	ends
	efunc
	.endfunc	658,9,26
	.line	658
	data
L29:
	db	$43,$4C,$45,$41,$52,$0D,$0A,$00,$46,$49,$4C,$4C,$20,$30,$78
	db	$30,$30,$0D,$0A,$00
	ends
;
;
;
	.line	660
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxmain.c",473
	xref	~~k_dos_load_drivers
	xref	~~k_uart_enableirq_ports
	xref	~~k_init_keyboard
	xref	~~k_text_mode_dialog
	xref	~~k_put_string
	xref	~~k_put_char
	xref	~~k_clear_screen
	xref	~~k_enable_text_cursor
	xref	~~k_set_border_color
	xref	~~k_disable_border
	xref	~~k_enable_border
	xref	~~k_initialize_text_fonts
	xref	~~k_initialize_text
	xref	~~k_event_loop
	xref	~~k_set_text_colors
	xref	~~k_gui_init_mousepointer
	xref	~~k_vdma_fill_rect_ex
	xref	~~k_vdma_move_rect
	xref	~~setColors
	xref	~~k_get_lines_max
	xref	~~k_get_lines_visible
	xref	~~k_get_cols_per_line
	xref	~~k_get_cols_visible
	xref	~~k_enable_bitmap_mode
	xref	~~k_enable_text_mode
	xref	~~k_mem_deallocate_heap
	xref	~~k_fcheck_system_memory
	xref	~~k_heap_integrity_check
	xref	~~k_exec_throw_exception
	xref	~~k_get_localtime_string
	xref	~~k_get_date_string
	xref	~~k_longtodec
	xref	~~k_bytetohex
	xref	~~k_strip_padding
	xref	~~k_get_c256_minor_version
	xref	~~k_get_c256_major_version
	xref	~~k_debug_crlf
	xref	~~k_debug_strings
	xref	~~k_debug_long
	xref	~~k_debug_integer
	xref	~~k_debug_pointer
	xref	~~k_debug_string
	xref	~~k_debug_string_com2
	xref	~~k_debug_string_com1
	xref	~~k_report_configuration
	xref	~~k_initializeZeroPage
	xref	~~k_getZeroPage
	.sym	~~k_dos_load_drivers,~~k_dos_load_drivers,69,18,0
	.sym	~~k_uart_enableirq_ports,~~k_uart_enableirq_ports,69,18,0
	.sym	~~k_init_keyboard,~~k_init_keyboard,69,18,0
	.sym	~~main,~~main,65,2,0
	.sym	~~SpinMemory,~~SpinMemory,65,2,0
	.sym	~~ReportMemory,~~ReportMemory,65,2,0
	.sym	~~DeallocateNodeListString,~~DeallocateNodeListString,65,2,0
	.sym	~~k_level_test,~~k_level_test,65,2,0
	.sym	DllMain,0,641,14,32
	.sym	~~pAPGMPTR,~~pAPGMPTR,129,2,32
	.sym	~~THIS_MODULE,~~THIS_MODULE,18,3,32
	.sym	~~mainspinner,~~mainspinner,110,3,0,4
	.sym	~~msp,~~msp,5,3,16
	.sym	~~line,~~line,5,2,16
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
	.sym	~~k_text_mode_dialog,~~k_text_mode_dialog,65,18,0
	.sym	~~k_put_string,~~k_put_string,69,18,0
	.sym	~~k_put_char,~~k_put_char,65,18,0
	.sym	~~k_clear_screen,~~k_clear_screen,65,18,0
	.sym	~~k_enable_text_cursor,~~k_enable_text_cursor,65,18,0
	.sym	~~k_set_border_color,~~k_set_border_color,65,18,0
	.sym	~~k_disable_border,~~k_disable_border,65,18,0
	.sym	~~k_enable_border,~~k_enable_border,65,18,0
	.sym	~~k_initialize_text_fonts,~~k_initialize_text_fonts,69,18,0
	.sym	~~k_initialize_text,~~k_initialize_text,65,18,0
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
	.sym	~~k_event_loop,~~k_event_loop,65,18,0
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
	.sym	~~k_set_text_colors,~~k_set_text_colors,65,18,0
	.sym	~~k_gui_init_mousepointer,~~k_gui_init_mousepointer,65,18,0
	.sym	~~k_vdma_fill_rect_ex,~~k_vdma_fill_rect_ex,65,18,0
	.sym	~~k_vdma_move_rect,~~k_vdma_move_rect,65,18,0
	.sym	~~setColors,~~setColors,65,18,0
	.sym	~~k_get_lines_max,~~k_get_lines_max,69,18,0
	.sym	~~k_get_lines_visible,~~k_get_lines_visible,69,18,0
	.sym	~~k_get_cols_per_line,~~k_get_cols_per_line,69,18,0
	.sym	~~k_get_cols_visible,~~k_get_cols_visible,69,18,0
	.sym	~~k_enable_bitmap_mode,~~k_enable_bitmap_mode,65,18,0
	.sym	~~k_enable_text_mode,~~k_enable_text_mode,65,18,0
	.sym	PCUR_PALETTE_MAP,0,138,14,32,54
	.sym	CUR_PALETTE_MAP,0,10,14,400,54
	.sym	PCLICKDETECTED,0,138,14,32,53
	.sym	CLICKDETECTED,0,10,14,64,53
	.sym	OBJECTCLICKED,0,641,14,32
	.sym	~~k_mem_deallocate_heap,~~k_mem_deallocate_heap,65,18,0
	.sym	~~k_fcheck_system_memory,~~k_fcheck_system_memory,82,18,0
	.sym	~~k_heap_integrity_check,~~k_heap_integrity_check,82,18,0
	.sym	MemoryCallback,0,641,14,32
	.sym	PFXMEMORYMAP,0,138,14,32,52
	.sym	FXMEMORYMAP,0,10,14,2072,52
	.sym	UMM_HEAP_INFO,0,10,14,256,51
	.sym	~~k_exec_throw_exception,~~k_exec_throw_exception,65,18,0
	.sym	~~k_get_localtime_string,~~k_get_localtime_string,1102,18,32
	.sym	~~k_get_date_string,~~k_get_date_string,1102,18,32
	.sym	~~k_longtodec,~~k_longtodec,1102,18,32
	.sym	~~k_bytetohex,~~k_bytetohex,1102,18,32
	.sym	~~k_strip_padding,~~k_strip_padding,1102,18,32
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
	.sym	~~k_debug_crlf,~~k_debug_crlf,65,18,0
	.sym	~~k_debug_strings,~~k_debug_strings,65,18,0
	.sym	~~k_debug_long,~~k_debug_long,65,18,0
	.sym	~~k_debug_integer,~~k_debug_integer,65,18,0
	.sym	~~k_debug_pointer,~~k_debug_pointer,65,18,0
	.sym	~~k_debug_string,~~k_debug_string,65,18,0
	.sym	~~k_debug_string_com2,~~k_debug_string_com2,65,18,0
	.sym	~~k_debug_string_com1,~~k_debug_string_com1,65,18,0
	.sym	~~k_report_configuration,~~k_report_configuration,69,18,0
	.sym	~~k_initializeZeroPage,~~k_initializeZeroPage,65,18,0
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
	.sym	Boolean_T,0,5,14,16
	.sym	ldiv_t,0,10,14,64,2
	.sym	div_t,0,10,14,32,1
	.sym	wctype_t,0,16,14,16
	.sym	wint_t,0,16,14,16
	.sym	wchar_t,0,14,14,8
	.sym	ptrdiff_t,0,7,14,32
	.sym	size_t,0,16,14,16
	end

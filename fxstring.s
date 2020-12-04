;:ts=8
R0	equ	1
R1	equ	5
R2	equ	9
R3	equ	13
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxstring.c",0
;
;#include "fxstring.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxstring.h",0
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxstring.h",5
	.file	"G:\devtools\WDCTools\wdc\Tools\include\string.h",0
	.line	134
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxstring.h",6
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxstring.h",7
	.stag	_fx_string,64,45
	.member	size,0,16,8,16
	.member	pos,16,5,8,16
	.member	buffer,32,142,8,32
	.eos
	.line	71
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxstring.c",2
;#include "fxmemorymanager.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxmemorymanager.h",0
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos.h",0
	.file	"G:\devtools\WDCTools\wdc\Tools\include\stdlib.h",0
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
	.stag	_fx_zero_page,448,46
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
	.stag	_fx_environment,96,47
	.member	variables,0,142,8,32
	.member	reserved1,32,5,8,16
	.member	reserved2,48,5,8,16
	.member	reserved3,64,5,8,16
	.member	reserved4,80,5,8,16
	.eos
	.stag	_debug_byte_bits,8,48
	.member	bit7,0,14,17,1
	.member	bit6,1,14,17,1
	.member	bit5,2,14,17,1
	.member	bit4,3,14,17,1
	.member	bit3,4,14,17,1
	.member	bit2,5,14,17,1
	.member	bit1,6,14,17,1
	.member	bit0,7,14,17,1
	.eos
	.stag	_fx_device_driver,1416,49
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
	.stag	_fx_block_device_driver,1448,50
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxstring.c",3
;#include <stdlib.h>
	.file	"G:\devtools\WDCTools\wdc\Tools\include\stdlib.h",0
	.line	205
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxstring.c",4
;
;static char bytetohex[] = {'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'};
	data
~~bytetohex:
	db	$30,$31,$32,$33,$34,$35,$36,$37,$38,$39
	db	$41,$42,$43,$44,$45,$46
	ends
;static char bytetodec[] = {'0','1','2','3','4','5','6','7','8','9'};
	data
~~bytetodec:
	db	$30,$31,$32,$33,$34,$35,$36,$37,$38,$39
	ends
;
;//
;// STRING LIB
;//
;char *strupr(char *s)
;{
	.line	12
	.line	13
	code
	xdef	~~strupr
	func
	.function	13
~~strupr:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L2
	tcs
	phd
	tcd
s_0	set	4
	.block	13
;  char	*p;
;
;  for (p = s; *p; ++p)
p_1	set	0
	.sym	p,0,142,1,32
	.sym	s,4,142,6,32
	.line	16
	lda	<L2+s_0
	sta	<L3+p_1
	lda	<L2+s_0+2
	sta	<L3+p_1+2
	brl	L10004
L10003:
;    *p = toupper(*p);
	.line	17
	lda	[<L3+p_1]
	and	#$ff
	pha
	jsl	~~toupper
	sep	#$20
	longa	off
	sta	[<L3+p_1]
	rep	#$20
	longa	on
L10001:
	inc	<L3+p_1
	bne	L5
	inc	<L3+p_1+2
L5:
L10004:
	lda	[<L3+p_1]
	and	#$ff
	beq	L6
	brl	L10003
L6:
L10002:
;
;  return(s);
	.line	19
	ldx	<L2+s_0+2
	lda	<L2+s_0
L7:
	tay
	lda	<L2+2
	sta	<L2+2+4
	lda	<L2+1
	sta	<L2+1+4
	pld
	tsc
	clc
	adc	#L2+4
	tcs
	tya
	rtl
;
;}
	.line	21
	.endblock	21
L2	equ	4
L3	equ	1
	ends
	efunc
	.endfunc	21,1,4
	.line	21
;
;/* -------------------------------------------------------------------- */
;char * strlower(char * s)
;{
	.line	24
	.line	25
	code
	xdef	~~strlower
	func
	.function	25
~~strlower:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L8
	tcs
	phd
	tcd
s_0	set	4
	.block	25
;  char	*p;
;
;  for (p = s; *p; ++p)
p_1	set	0
	.sym	p,0,142,1,32
	.sym	s,4,142,6,32
	.line	28
	lda	<L8+s_0
	sta	<L9+p_1
	lda	<L8+s_0+2
	sta	<L9+p_1+2
	brl	L10008
L10007:
;    *p = tolower(*p);
	.line	29
	lda	[<L9+p_1]
	and	#$ff
	pha
	jsl	~~tolower
	sep	#$20
	longa	off
	sta	[<L9+p_1]
	rep	#$20
	longa	on
L10005:
	inc	<L9+p_1
	bne	L11
	inc	<L9+p_1+2
L11:
L10008:
	lda	[<L9+p_1]
	and	#$ff
	beq	L12
	brl	L10007
L12:
L10006:
;
;  return(s);
	.line	31
	ldx	<L8+s_0+2
	lda	<L8+s_0
L13:
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
;
;}
	.line	33
	.endblock	33
L8	equ	4
L9	equ	1
	ends
	efunc
	.endfunc	33,1,4
	.line	33
;
;char FAR * k_pad_string(char FAR * dest,char FAR * src,char filler,int width)
;{
	.line	35
	.line	36
	code
	xdef	~~k_pad_string
	func
	.function	36
~~k_pad_string:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L14
	tcs
	phd
	tcd
dest_0	set	4
src_0	set	8
filler_0	set	12
width_0	set	14
	.block	36
;	int len = 0;
;
;	memset(dest,0,width + 1);
len_1	set	0
	.sym	len,0,5,1,16
	.sym	dest,4,142,6,32
	.sym	src,8,142,6,32
	.sym	filler,12,14,6,8
	.sym	width,14,5,6,16
	stz	<L15+len_1
	.line	39
	lda	<L14+width_0
	ina
	pha
	pea	#<$0
	pei	<L14+dest_0+2
	pei	<L14+dest_0
	jsl	~~memset
;	memset(dest,filler,width);
	.line	40
	pei	<L14+width_0
	lda	<L14+filler_0
	and	#$ff
	pha
	pei	<L14+dest_0+2
	pei	<L14+dest_0
	jsl	~~memset
;
;	len = strlen(src);
	.line	42
	pei	<L14+src_0+2
	pei	<L14+src_0
	jsl	~~strlen
	sta	<L15+len_1
;
;	if(len > width)
	.line	44
;		len = width;
	sec
	lda	<L14+width_0
	sbc	<L15+len_1
	bvs	L17
	eor	#$8000
L17:
	bpl	L18
	brl	L10009
L18:
	.line	45
	lda	<L14+width_0
	sta	<L15+len_1
;
;	memcpy(&dest[width - len],src,len);
L10009:
	.line	47
	pei	<L15+len_1
	pei	<L14+src_0+2
	pei	<L14+src_0
	sec
	lda	<L14+width_0
	sbc	<L15+len_1
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L19
	dey
L19:
	sta	<R0
	sty	<R0+2
	clc
	lda	<L14+dest_0
	adc	<R0
	sta	<R1
	lda	<L14+dest_0+2
	adc	<R0+2
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~memcpy
;
;	return dest;
	.line	49
	ldx	<L14+dest_0+2
	lda	<L14+dest_0
L20:
	tay
	lda	<L14+2
	sta	<L14+2+12
	lda	<L14+1
	sta	<L14+1+12
	pld
	tsc
	clc
	adc	#L14+12
	tcs
	tya
	rtl
;}
	.line	50
	.endblock	50
L14	equ	10
L15	equ	9
	ends
	efunc
	.endfunc	50,9,10
	.line	50
;
;LPSTR k_strcat(LPSTR dest,LPCSTR src)
;{
	.line	52
	.line	53
	code
	xdef	~~k_strcat
	func
	.function	53
~~k_strcat:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L21
	tcs
	phd
	tcd
dest_0	set	4
src_0	set	8
	.block	53
;	return dest;
	.sym	dest,4,142,6,32
	.sym	src,8,142,6,32
	.line	54
	ldx	<L21+dest_0+2
	lda	<L21+dest_0
L24:
	tay
	lda	<L21+2
	sta	<L21+2+8
	lda	<L21+1
	sta	<L21+1+8
	pld
	tsc
	clc
	adc	#L21+8
	tcs
	tya
	rtl
;}
	.line	55
	.endblock	55
L21	equ	0
L22	equ	1
	ends
	efunc
	.endfunc	55,1,0
	.line	55
;
;LPSTR k_strcpy(LPSTR dest,LPCSTR src)
;{
	.line	57
	.line	58
	code
	xdef	~~k_strcpy
	func
	.function	58
~~k_strcpy:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L25
	tcs
	phd
	tcd
dest_0	set	4
src_0	set	8
	.block	58
;	return dest;
	.sym	dest,4,142,6,32
	.sym	src,8,142,6,32
	.line	59
	ldx	<L25+dest_0+2
	lda	<L25+dest_0
L28:
	tay
	lda	<L25+2
	sta	<L25+2+8
	lda	<L25+1
	sta	<L25+1+8
	pld
	tsc
	clc
	adc	#L25+8
	tcs
	tya
	rtl
;}
	.line	60
	.endblock	60
L25	equ	0
L26	equ	1
	ends
	efunc
	.endfunc	60,1,0
	.line	60
;
;/*
; *
; *
; *
; *
; */
;PFAR k_inttodec(UINT b,char FAR *bhbuffer)
;{
	.line	68
	.line	69
	code
	xdef	~~k_inttodec
	func
	.function	69
~~k_inttodec:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L29
	tcs
	phd
	tcd
b_0	set	4
bhbuffer_0	set	6
	.block	69
;	int tthou = 0;
;	int thou  = 0;
;	int hund  = 0;
;	int tens  = 0;
;	int ones  = 0;
;
;	bhbuffer[0] = '0';
tthou_1	set	0
thou_1	set	2
hund_1	set	4
tens_1	set	6
ones_1	set	8
	.sym	tthou,0,5,1,16
	.sym	thou,2,5,1,16
	.sym	hund,4,5,1,16
	.sym	tens,6,5,1,16
	.sym	ones,8,5,1,16
	.sym	b,4,16,6,16
	.sym	bhbuffer,6,142,6,32
	stz	<L30+tthou_1
	stz	<L30+thou_1
	stz	<L30+hund_1
	stz	<L30+tens_1
	stz	<L30+ones_1
	.line	76
	sep	#$20
	longa	off
	lda	#$30
	sta	[<L29+bhbuffer_0]
	rep	#$20
	longa	on
;	bhbuffer[1] = '0';
	.line	77
	sep	#$20
	longa	off
	lda	#$30
	ldy	#$1
	sta	[<L29+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[2] = '0';
	.line	78
	sep	#$20
	longa	off
	lda	#$30
	ldy	#$2
	sta	[<L29+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[3] = '0';
	.line	79
	sep	#$20
	longa	off
	lda	#$30
	ldy	#$3
	sta	[<L29+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[4] = '0';
	.line	80
	sep	#$20
	longa	off
	lda	#$30
	ldy	#$4
	sta	[<L29+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[5] = 0;
	.line	81
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$5
	sta	[<L29+bhbuffer_0],Y
	rep	#$20
	longa	on
;
;	tthou = (int)((b / 10000));
	.line	83
	lda	<L29+b_0
	ldx	#<$2710
	xref	~~~udv
	jsl	~~~udv
	sta	<L30+tthou_1
;	b = (b - 10000*tthou);
	.line	84
	lda	<L30+tthou_1
	ldx	#<$2710
	xref	~~~mul
	jsl	~~~mul
	sta	<R0
	sec
	lda	<L29+b_0
	sbc	<R0
	sta	<L29+b_0
;	thou = (int)((b / 1000));
	.line	85
	lda	<L29+b_0
	ldx	#<$3e8
	xref	~~~udv
	jsl	~~~udv
	sta	<L30+thou_1
;	b = (b - 1000*thou);
	.line	86
	lda	<L30+thou_1
	ldx	#<$3e8
	xref	~~~mul
	jsl	~~~mul
	sta	<R0
	sec
	lda	<L29+b_0
	sbc	<R0
	sta	<L29+b_0
;	hund = (int)((b / 100));
	.line	87
	lda	<L29+b_0
	ldx	#<$64
	xref	~~~udv
	jsl	~~~udv
	sta	<L30+hund_1
;	b = (b - 100*hund);
	.line	88
	lda	<L30+hund_1
	ldx	#<$64
	xref	~~~mul
	jsl	~~~mul
	sta	<R0
	sec
	lda	<L29+b_0
	sbc	<R0
	sta	<L29+b_0
;	tens = (int)((b / 10));
	.line	89
	lda	<L29+b_0
	ldx	#<$a
	xref	~~~udv
	jsl	~~~udv
	sta	<L30+tens_1
;	b = (b - 10*tens);
	.line	90
	lda	<L30+tens_1
	asl	A
	asl	A
	adc	<L30+tens_1
	asl	A
	sta	<R0
	sec
	lda	<L29+b_0
	sbc	<R0
	sta	<L29+b_0
;	ones = (int)b;
	.line	91
	lda	<L29+b_0
	sta	<L30+ones_1
;
;	bhbuffer[0] = bytetodec[tthou];
	.line	93
	sep	#$20
	longa	off
	ldx	<L30+tthou_1
	lda	|~~bytetodec,X
	sta	[<L29+bhbuffer_0]
	rep	#$20
	longa	on
;	bhbuffer[1] = bytetodec[thou];
	.line	94
	sep	#$20
	longa	off
	ldx	<L30+thou_1
	lda	|~~bytetodec,X
	ldy	#$1
	sta	[<L29+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[2] = bytetodec[hund];
	.line	95
	sep	#$20
	longa	off
	ldx	<L30+hund_1
	lda	|~~bytetodec,X
	ldy	#$2
	sta	[<L29+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[3] = bytetodec[tens];
	.line	96
	sep	#$20
	longa	off
	ldx	<L30+tens_1
	lda	|~~bytetodec,X
	ldy	#$3
	sta	[<L29+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[4] = bytetodec[ones];
	.line	97
	sep	#$20
	longa	off
	ldx	<L30+ones_1
	lda	|~~bytetodec,X
	ldy	#$4
	sta	[<L29+bhbuffer_0],Y
	rep	#$20
	longa	on
;
;	return bhbuffer;
	.line	99
	ldx	<L29+bhbuffer_0+2
	lda	<L29+bhbuffer_0
L32:
	tay
	lda	<L29+2
	sta	<L29+2+6
	lda	<L29+1
	sta	<L29+1+6
	pld
	tsc
	clc
	adc	#L29+6
	tcs
	tya
	rtl
;}
	.line	100
	.endblock	100
L29	equ	14
L30	equ	5
	ends
	efunc
	.endfunc	100,5,14
	.line	100
;/*
; *
; *
; *
; *
; */
;PFAR k_longtodec(ULONG b,char FAR *bhbuffer)
;{
	.line	107
	.line	108
	code
	xdef	~~k_longtodec
	func
	.function	108
~~k_longtodec:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L33
	tcs
	phd
	tcd
b_0	set	4
bhbuffer_0	set	8
	.block	108
;	int bill  = 0;
;	int hmill = 0;
;	int tmill = 0;
;	int mill  = 0;
;	int hthou = 0;
;	int tthou = 0;
;	int thou  = 0;
;	int hund  = 0;
;	int tens  = 0;
;	int ones  = 0;
;
;	// 4000000000
;	bhbuffer[0] = '0';
bill_1	set	0
hmill_1	set	2
tmill_1	set	4
mill_1	set	6
hthou_1	set	8
tthou_1	set	10
thou_1	set	12
hund_1	set	14
tens_1	set	16
ones_1	set	18
	.sym	bill,0,5,1,16
	.sym	hmill,2,5,1,16
	.sym	tmill,4,5,1,16
	.sym	mill,6,5,1,16
	.sym	hthou,8,5,1,16
	.sym	tthou,10,5,1,16
	.sym	thou,12,5,1,16
	.sym	hund,14,5,1,16
	.sym	tens,16,5,1,16
	.sym	ones,18,5,1,16
	.sym	b,4,18,6,32
	.sym	bhbuffer,8,142,6,32
	stz	<L34+bill_1
	stz	<L34+hmill_1
	stz	<L34+tmill_1
	stz	<L34+mill_1
	stz	<L34+hthou_1
	stz	<L34+tthou_1
	stz	<L34+thou_1
	stz	<L34+hund_1
	stz	<L34+tens_1
	stz	<L34+ones_1
	.line	121
	sep	#$20
	longa	off
	lda	#$30
	sta	[<L33+bhbuffer_0]
	rep	#$20
	longa	on
;	bhbuffer[1] = '0';
	.line	122
	sep	#$20
	longa	off
	lda	#$30
	ldy	#$1
	sta	[<L33+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[2] = '0';
	.line	123
	sep	#$20
	longa	off
	lda	#$30
	ldy	#$2
	sta	[<L33+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[3] = '0';
	.line	124
	sep	#$20
	longa	off
	lda	#$30
	ldy	#$3
	sta	[<L33+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[4] = '0';
	.line	125
	sep	#$20
	longa	off
	lda	#$30
	ldy	#$4
	sta	[<L33+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[5] = '0';
	.line	126
	sep	#$20
	longa	off
	lda	#$30
	ldy	#$5
	sta	[<L33+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[6] = '0';
	.line	127
	sep	#$20
	longa	off
	lda	#$30
	ldy	#$6
	sta	[<L33+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[7] = '0';
	.line	128
	sep	#$20
	longa	off
	lda	#$30
	ldy	#$7
	sta	[<L33+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[8] = '0';
	.line	129
	sep	#$20
	longa	off
	lda	#$30
	ldy	#$8
	sta	[<L33+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[9] = '0';
	.line	130
	sep	#$20
	longa	off
	lda	#$30
	ldy	#$9
	sta	[<L33+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[10] = 0;
	.line	131
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$a
	sta	[<L33+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[11] = 0;
	.line	132
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$b
	sta	[<L33+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[12] = 0;
	.line	133
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$c
	sta	[<L33+bhbuffer_0],Y
	rep	#$20
	longa	on
;
;	bill = (int)((b / 1000000000L));
	.line	135
	pea	#^$3b9aca00
	pea	#<$3b9aca00
	pei	<L33+b_0+2
	pei	<L33+b_0
	xref	~~~ludv
	jsl	~~~ludv
	sta	<R0
	stx	<R0+2
	lda	<R0
	sta	<L34+bill_1
;	b = (b - 1000000000L*bill);
	.line	136
	ldy	#$0
	lda	<L34+bill_1
	bpl	L36
	dey
L36:
	sta	<R0
	sty	<R0+2
	pea	#^$3b9aca00
	pea	#<$3b9aca00
	pei	<R0+2
	pei	<R0
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R0
	stx	<R0+2
	sec
	lda	<L33+b_0
	sbc	<R0
	sta	<L33+b_0
	lda	<L33+b_0+2
	sbc	<R0+2
	sta	<L33+b_0+2
;
;	hmill = (int)((b / 100000000L));
	.line	138
	pea	#^$5f5e100
	pea	#<$5f5e100
	pei	<L33+b_0+2
	pei	<L33+b_0
	xref	~~~ludv
	jsl	~~~ludv
	sta	<R0
	stx	<R0+2
	lda	<R0
	sta	<L34+hmill_1
;	b = (b - 100000000L*hmill);
	.line	139
	ldy	#$0
	lda	<L34+hmill_1
	bpl	L37
	dey
L37:
	sta	<R0
	sty	<R0+2
	pea	#^$5f5e100
	pea	#<$5f5e100
	pei	<R0+2
	pei	<R0
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R0
	stx	<R0+2
	sec
	lda	<L33+b_0
	sbc	<R0
	sta	<L33+b_0
	lda	<L33+b_0+2
	sbc	<R0+2
	sta	<L33+b_0+2
;
;	tmill = (int)((b / 10000000L));
	.line	141
	pea	#^$989680
	pea	#<$989680
	pei	<L33+b_0+2
	pei	<L33+b_0
	xref	~~~ludv
	jsl	~~~ludv
	sta	<R0
	stx	<R0+2
	lda	<R0
	sta	<L34+tmill_1
;	b = (b - 10000000L*tmill);
	.line	142
	ldy	#$0
	lda	<L34+tmill_1
	bpl	L38
	dey
L38:
	sta	<R0
	sty	<R0+2
	pea	#^$989680
	pea	#<$989680
	pei	<R0+2
	pei	<R0
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R0
	stx	<R0+2
	sec
	lda	<L33+b_0
	sbc	<R0
	sta	<L33+b_0
	lda	<L33+b_0+2
	sbc	<R0+2
	sta	<L33+b_0+2
;
;	mill = (int)((b / 1000000L));
	.line	144
	pea	#^$f4240
	pea	#<$f4240
	pei	<L33+b_0+2
	pei	<L33+b_0
	xref	~~~ludv
	jsl	~~~ludv
	sta	<R0
	stx	<R0+2
	lda	<R0
	sta	<L34+mill_1
;	b = (b - 1000000L*mill);
	.line	145
	ldy	#$0
	lda	<L34+mill_1
	bpl	L39
	dey
L39:
	sta	<R0
	sty	<R0+2
	pea	#^$f4240
	pea	#<$f4240
	pei	<R0+2
	pei	<R0
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R0
	stx	<R0+2
	sec
	lda	<L33+b_0
	sbc	<R0
	sta	<L33+b_0
	lda	<L33+b_0+2
	sbc	<R0+2
	sta	<L33+b_0+2
;
;	hthou = (int)((b / 100000L));
	.line	147
	pea	#^$186a0
	pea	#<$186a0
	pei	<L33+b_0+2
	pei	<L33+b_0
	xref	~~~ludv
	jsl	~~~ludv
	sta	<R0
	stx	<R0+2
	lda	<R0
	sta	<L34+hthou_1
;	b = (b - 100000L*hthou);
	.line	148
	ldy	#$0
	lda	<L34+hthou_1
	bpl	L40
	dey
L40:
	sta	<R0
	sty	<R0+2
	pea	#^$186a0
	pea	#<$186a0
	pei	<R0+2
	pei	<R0
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R0
	stx	<R0+2
	sec
	lda	<L33+b_0
	sbc	<R0
	sta	<L33+b_0
	lda	<L33+b_0+2
	sbc	<R0+2
	sta	<L33+b_0+2
;
;
;	tthou = (int)((b / 10000L));
	.line	151
	pea	#^$2710
	pea	#<$2710
	pei	<L33+b_0+2
	pei	<L33+b_0
	xref	~~~ludv
	jsl	~~~ludv
	sta	<R0
	stx	<R0+2
	lda	<R0
	sta	<L34+tthou_1
;	b = (b - 10000L*tthou);
	.line	152
	ldy	#$0
	lda	<L34+tthou_1
	bpl	L41
	dey
L41:
	sta	<R0
	sty	<R0+2
	pea	#^$2710
	pea	#<$2710
	pei	<R0+2
	pei	<R0
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R0
	stx	<R0+2
	sec
	lda	<L33+b_0
	sbc	<R0
	sta	<L33+b_0
	lda	<L33+b_0+2
	sbc	<R0+2
	sta	<L33+b_0+2
;	thou = (int)((b / 1000L));
	.line	153
	pea	#^$3e8
	pea	#<$3e8
	pei	<L33+b_0+2
	pei	<L33+b_0
	xref	~~~ludv
	jsl	~~~ludv
	sta	<R0
	stx	<R0+2
	lda	<R0
	sta	<L34+thou_1
;	b = (b - 1000L*thou);
	.line	154
	ldy	#$0
	lda	<L34+thou_1
	bpl	L42
	dey
L42:
	sta	<R0
	sty	<R0+2
	pea	#^$3e8
	pea	#<$3e8
	pei	<R0+2
	pei	<R0
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R0
	stx	<R0+2
	sec
	lda	<L33+b_0
	sbc	<R0
	sta	<L33+b_0
	lda	<L33+b_0+2
	sbc	<R0+2
	sta	<L33+b_0+2
;	hund = (int)((b / 100L));
	.line	155
	pea	#^$64
	pea	#<$64
	pei	<L33+b_0+2
	pei	<L33+b_0
	xref	~~~ludv
	jsl	~~~ludv
	sta	<R0
	stx	<R0+2
	lda	<R0
	sta	<L34+hund_1
;	b = (b - 100L*hund);
	.line	156
	ldy	#$0
	lda	<L34+hund_1
	bpl	L43
	dey
L43:
	sta	<R0
	sty	<R0+2
	pea	#^$64
	pea	#<$64
	pei	<R0+2
	pei	<R0
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R0
	stx	<R0+2
	sec
	lda	<L33+b_0
	sbc	<R0
	sta	<L33+b_0
	lda	<L33+b_0+2
	sbc	<R0+2
	sta	<L33+b_0+2
;	tens = (int)((b / 10L));
	.line	157
	pea	#^$a
	pea	#<$a
	pei	<L33+b_0+2
	pei	<L33+b_0
	xref	~~~ludv
	jsl	~~~ludv
	sta	<R0
	stx	<R0+2
	lda	<R0
	sta	<L34+tens_1
;	b = (b - 10L*tens);
	.line	158
	ldy	#$0
	lda	<L34+tens_1
	bpl	L44
	dey
L44:
	sta	<R0
	sty	<R0+2
	pea	#^$a
	pea	#<$a
	pei	<R0+2
	pei	<R0
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R0
	stx	<R0+2
	sec
	lda	<L33+b_0
	sbc	<R0
	sta	<L33+b_0
	lda	<L33+b_0+2
	sbc	<R0+2
	sta	<L33+b_0+2
;	ones = (int)b;
	.line	159
	lda	<L33+b_0
	sta	<L34+ones_1
;
;	bhbuffer[0] = bytetodec[bill];
	.line	161
	sep	#$20
	longa	off
	ldx	<L34+bill_1
	lda	|~~bytetodec,X
	sta	[<L33+bhbuffer_0]
	rep	#$20
	longa	on
;	bhbuffer[1] = bytetodec[hmill];
	.line	162
	sep	#$20
	longa	off
	ldx	<L34+hmill_1
	lda	|~~bytetodec,X
	ldy	#$1
	sta	[<L33+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[2] = bytetodec[tmill];
	.line	163
	sep	#$20
	longa	off
	ldx	<L34+tmill_1
	lda	|~~bytetodec,X
	ldy	#$2
	sta	[<L33+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[3] = bytetodec[mill];
	.line	164
	sep	#$20
	longa	off
	ldx	<L34+mill_1
	lda	|~~bytetodec,X
	ldy	#$3
	sta	[<L33+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[4] = bytetodec[hthou];
	.line	165
	sep	#$20
	longa	off
	ldx	<L34+hthou_1
	lda	|~~bytetodec,X
	ldy	#$4
	sta	[<L33+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[5] = bytetodec[tthou];
	.line	166
	sep	#$20
	longa	off
	ldx	<L34+tthou_1
	lda	|~~bytetodec,X
	ldy	#$5
	sta	[<L33+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[6] = bytetodec[thou];
	.line	167
	sep	#$20
	longa	off
	ldx	<L34+thou_1
	lda	|~~bytetodec,X
	ldy	#$6
	sta	[<L33+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[7] = bytetodec[hund];
	.line	168
	sep	#$20
	longa	off
	ldx	<L34+hund_1
	lda	|~~bytetodec,X
	ldy	#$7
	sta	[<L33+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[8] = bytetodec[tens];
	.line	169
	sep	#$20
	longa	off
	ldx	<L34+tens_1
	lda	|~~bytetodec,X
	ldy	#$8
	sta	[<L33+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[9] = bytetodec[ones];
	.line	170
	sep	#$20
	longa	off
	ldx	<L34+ones_1
	lda	|~~bytetodec,X
	ldy	#$9
	sta	[<L33+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[10] = 0;
	.line	171
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$a
	sta	[<L33+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[11] = 0;
	.line	172
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$b
	sta	[<L33+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[12] = 0;
	.line	173
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$c
	sta	[<L33+bhbuffer_0],Y
	rep	#$20
	longa	on
;
;	return bhbuffer;
	.line	175
	ldx	<L33+bhbuffer_0+2
	lda	<L33+bhbuffer_0
L45:
	tay
	lda	<L33+2
	sta	<L33+2+8
	lda	<L33+1
	sta	<L33+1+8
	pld
	tsc
	clc
	adc	#L33+8
	tcs
	tya
	rtl
;}
	.line	176
	.endblock	176
L33	equ	24
L34	equ	5
	ends
	efunc
	.endfunc	176,5,24
	.line	176
;/*
; *
; *
; *
; *
; */
;PFAR k_bytetodec(UCHAR b,char FAR *bhbuffer)
;{
	.line	183
	.line	184
	code
	xdef	~~k_bytetodec
	func
	.function	184
~~k_bytetodec:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L46
	tcs
	phd
	tcd
b_0	set	4
bhbuffer_0	set	6
	.block	184
;	int hund = 0;
;	int tens = 0;
;	int ones = 0;
;
;	bhbuffer[0] = '0';
hund_1	set	0
tens_1	set	2
ones_1	set	4
	.sym	hund,0,5,1,16
	.sym	tens,2,5,1,16
	.sym	ones,4,5,1,16
	.sym	b,4,14,6,8
	.sym	bhbuffer,6,142,6,32
	stz	<L47+hund_1
	stz	<L47+tens_1
	stz	<L47+ones_1
	.line	189
	sep	#$20
	longa	off
	lda	#$30
	sta	[<L46+bhbuffer_0]
	rep	#$20
	longa	on
;	bhbuffer[1] = '0';
	.line	190
	sep	#$20
	longa	off
	lda	#$30
	ldy	#$1
	sta	[<L46+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[2] = '0';
	.line	191
	sep	#$20
	longa	off
	lda	#$30
	ldy	#$2
	sta	[<L46+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[3] = 0;
	.line	192
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$3
	sta	[<L46+bhbuffer_0],Y
	rep	#$20
	longa	on
;
;	hund = (int)((b / 100));
	.line	194
	lda	<L46+b_0
	and	#$ff
	sta	<R0
	lda	<R0
	ldx	#<$64
	xref	~~~div
	jsl	~~~div
	sta	<L47+hund_1
;	b = (b - 100*hund);
	.line	195
	lda	<L47+hund_1
	ldx	#<$64
	xref	~~~mul
	jsl	~~~mul
	sta	<R0
	lda	<L46+b_0
	and	#$ff
	sta	<R1
	sec
	lda	<R1
	sbc	<R0
	sta	<R2
	sep	#$20
	longa	off
	lda	<R2
	sta	<L46+b_0
	rep	#$20
	longa	on
;	tens = (int)((b / 10));
	.line	196
	lda	<L46+b_0
	and	#$ff
	sta	<R0
	lda	<R0
	ldx	#<$a
	xref	~~~div
	jsl	~~~div
	sta	<L47+tens_1
;	b = (b - 10*tens);
	.line	197
	lda	<L47+tens_1
	asl	A
	asl	A
	adc	<L47+tens_1
	asl	A
	sta	<R0
	lda	<L46+b_0
	and	#$ff
	sta	<R1
	sec
	lda	<R1
	sbc	<R0
	sta	<R2
	sep	#$20
	longa	off
	lda	<R2
	sta	<L46+b_0
	rep	#$20
	longa	on
;	ones = (int)b;
	.line	198
	lda	<L46+b_0
	and	#$ff
	sta	<L47+ones_1
;
;	bhbuffer[0] = bytetodec[hund];
	.line	200
	sep	#$20
	longa	off
	ldx	<L47+hund_1
	lda	|~~bytetodec,X
	sta	[<L46+bhbuffer_0]
	rep	#$20
	longa	on
;	bhbuffer[1] = bytetodec[tens];
	.line	201
	sep	#$20
	longa	off
	ldx	<L47+tens_1
	lda	|~~bytetodec,X
	ldy	#$1
	sta	[<L46+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[2] = bytetodec[ones];
	.line	202
	sep	#$20
	longa	off
	ldx	<L47+ones_1
	lda	|~~bytetodec,X
	ldy	#$2
	sta	[<L46+bhbuffer_0],Y
	rep	#$20
	longa	on
;
;	return bhbuffer;
	.line	204
	ldx	<L46+bhbuffer_0+2
	lda	<L46+bhbuffer_0
L49:
	tay
	lda	<L46+2
	sta	<L46+2+6
	lda	<L46+1
	sta	<L46+1+6
	pld
	tsc
	clc
	adc	#L46+6
	tcs
	tya
	rtl
;}
	.line	205
	.endblock	205
L46	equ	18
L47	equ	13
	ends
	efunc
	.endfunc	205,13,18
	.line	205
;/*
; *
; *
; *
; *
; */
;PFAR k_bytetohex(UCHAR b,char FAR *bhbuffer)
;{
	.line	212
	.line	213
	code
	xdef	~~k_bytetohex
	func
	.function	213
~~k_bytetohex:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L50
	tcs
	phd
	tcd
b_0	set	4
bhbuffer_0	set	6
	.block	213
;	bhbuffer[0] = '0';
	.sym	b,4,14,6,8
	.sym	bhbuffer,6,142,6,32
	.line	214
	sep	#$20
	longa	off
	lda	#$30
	sta	[<L50+bhbuffer_0]
	rep	#$20
	longa	on
;	bhbuffer[1] = '0';
	.line	215
	sep	#$20
	longa	off
	lda	#$30
	ldy	#$1
	sta	[<L50+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[2] = 0;
	.line	216
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$2
	sta	[<L50+bhbuffer_0],Y
	rep	#$20
	longa	on
;
;
;	bhbuffer[0] = bytetohex[(unsigned)((b & 0xF0) >> 4)];
	.line	219
	lda	<L50+b_0
	and	#<$f0
	ldx	#<$4
	xref	~~~asr
	jsl	~~~asr
	sta	<R0
	sep	#$20
	longa	off
	ldx	<R0
	lda	|~~bytetohex,X
	sta	[<L50+bhbuffer_0]
	rep	#$20
	longa	on
;	bhbuffer[1] = bytetohex[(unsigned)(b & 0x0F)];
	.line	220
	lda	<L50+b_0
	and	#<$f
	sta	<R0
	sep	#$20
	longa	off
	ldx	<R0
	lda	|~~bytetohex,X
	ldy	#$1
	sta	[<L50+bhbuffer_0],Y
	rep	#$20
	longa	on
;
;	return bhbuffer;
	.line	222
	ldx	<L50+bhbuffer_0+2
	lda	<L50+bhbuffer_0
L53:
	tay
	lda	<L50+2
	sta	<L50+2+6
	lda	<L50+1
	sta	<L50+1+6
	pld
	tsc
	clc
	adc	#L50+6
	tcs
	tya
	rtl
;}
	.line	223
	.endblock	223
L50	equ	4
L51	equ	5
	ends
	efunc
	.endfunc	223,5,4
	.line	223
;
;/*
; *
; *
; *
; *
; */
;PFAR k_strip_padding(PFAR orgText)
;{
	.line	231
	.line	232
	code
	xdef	~~k_strip_padding
	func
	.function	232
~~k_strip_padding:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L54
	tcs
	phd
	tcd
orgText_0	set	4
	.block	232
;	PFAR p = orgText;
;	while(*p)
p_1	set	0
	.sym	p,0,142,1,32
	.sym	orgText,4,142,6,32
	lda	<L54+orgText_0
	sta	<L55+p_1
	lda	<L54+orgText_0+2
	sta	<L55+p_1+2
	.line	234
L10010:
	lda	[<L55+p_1]
	and	#$ff
	bne	L57
	brl	L10011
L57:
;	{
	.line	235
;		if(*p != '0')
	.line	236
;		{
	sep	#$20
	longa	off
	lda	[<L55+p_1]
	cmp	#<$30
	rep	#$20
	longa	on
	bne	L58
	brl	L10012
L58:
	.line	237
;			break;
	.line	238
	brl	L10011
;		}
	.line	239
;		p++;
L10012:
	.line	240
	inc	<L55+p_1
	bne	L59
	inc	<L55+p_1+2
L59:
;	}
	.line	241
	brl	L10010
L10011:
;
;	return p;
	.line	243
	ldx	<L55+p_1+2
	lda	<L55+p_1
L60:
	tay
	lda	<L54+2
	sta	<L54+2+4
	lda	<L54+1
	sta	<L54+1+4
	pld
	tsc
	clc
	adc	#L54+4
	tcs
	tya
	rtl
;}
	.line	244
	.endblock	244
L54	equ	4
L55	equ	1
	ends
	efunc
	.endfunc	244,1,4
	.line	244
;/*
; *
; *
; *
; *
; */
;PFAR k_replace_padding(PFAR orgText,CHAR replacement)
;{
	.line	251
	.line	252
	code
	xdef	~~k_replace_padding
	func
	.function	252
~~k_replace_padding:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L61
	tcs
	phd
	tcd
orgText_0	set	4
replacement_0	set	8
	.block	252
;	PFAR p = orgText;
;	while(*p)
p_1	set	0
	.sym	p,0,142,1,32
	.sym	orgText,4,142,6,32
	.sym	replacement,8,14,6,8
	lda	<L61+orgText_0
	sta	<L62+p_1
	lda	<L61+orgText_0+2
	sta	<L62+p_1+2
	.line	254
L10013:
	lda	[<L62+p_1]
	and	#$ff
	bne	L64
	brl	L10014
L64:
;	{
	.line	255
;		if(*p == '0')
	.line	256
;		{
	sep	#$20
	longa	off
	lda	[<L62+p_1]
	cmp	#<$30
	rep	#$20
	longa	on
	beq	L65
	brl	L10015
L65:
	.line	257
;			*p = replacement;
	.line	258
	sep	#$20
	longa	off
	lda	<L61+replacement_0
	sta	[<L62+p_1]
	rep	#$20
	longa	on
;		}
	.line	259
;		p++;
L10015:
	.line	260
	inc	<L62+p_1
	bne	L66
	inc	<L62+p_1+2
L66:
;	}
	.line	261
	brl	L10013
L10014:
;
;	return orgText;
	.line	263
	ldx	<L61+orgText_0+2
	lda	<L61+orgText_0
L67:
	tay
	lda	<L61+2
	sta	<L61+2+6
	lda	<L61+1
	sta	<L61+1+6
	pld
	tsc
	clc
	adc	#L61+6
	tcs
	tya
	rtl
;}
	.line	264
	.endblock	264
L61	equ	4
L62	equ	1
	ends
	efunc
	.endfunc	264,1,4
	.line	264
;
;/*
; *
; *
; *
; *
; */
;LPCHAR k_to_uppercase(LPCHAR orgText)
;{
	.line	272
	.line	273
	code
	xdef	~~k_to_uppercase
	func
	.function	273
~~k_to_uppercase:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L68
	tcs
	phd
	tcd
orgText_0	set	4
	.block	273
;	LPCHAR p = orgText;
;	while(*p)
p_1	set	0
	.sym	p,0,142,1,32
	.sym	orgText,4,142,6,32
	lda	<L68+orgText_0
	sta	<L69+p_1
	lda	<L68+orgText_0+2
	sta	<L69+p_1+2
	.line	275
L10016:
	lda	[<L69+p_1]
	and	#$ff
	bne	L71
	brl	L10017
L71:
;	{
	.line	276
;		*p = toupper(*p);
	.line	277
	lda	[<L69+p_1]
	and	#$ff
	pha
	jsl	~~toupper
	sep	#$20
	longa	off
	sta	[<L69+p_1]
	rep	#$20
	longa	on
;		p++;
	.line	278
	inc	<L69+p_1
	bne	L72
	inc	<L69+p_1+2
L72:
;	}
	.line	279
	brl	L10016
L10017:
;
;	return orgText;
	.line	281
	ldx	<L68+orgText_0+2
	lda	<L68+orgText_0
L73:
	tay
	lda	<L68+2
	sta	<L68+2+4
	lda	<L68+1
	sta	<L68+1+4
	pld
	tsc
	clc
	adc	#L68+4
	tcs
	tya
	rtl
;}
	.line	282
	.endblock	282
L68	equ	4
L69	equ	1
	ends
	efunc
	.endfunc	282,1,4
	.line	282
;
;/*
; *
; *
; *
; *
; */
;LPCHAR k_to_lowercase(LPCHAR orgText)
;{
	.line	290
	.line	291
	code
	xdef	~~k_to_lowercase
	func
	.function	291
~~k_to_lowercase:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L74
	tcs
	phd
	tcd
orgText_0	set	4
	.block	291
;	LPCHAR p = orgText;
;	while(*p)
p_1	set	0
	.sym	p,0,142,1,32
	.sym	orgText,4,142,6,32
	lda	<L74+orgText_0
	sta	<L75+p_1
	lda	<L74+orgText_0+2
	sta	<L75+p_1+2
	.line	293
L10018:
	lda	[<L75+p_1]
	and	#$ff
	bne	L77
	brl	L10019
L77:
;	{
	.line	294
;		*p = tolower(*p);
	.line	295
	lda	[<L75+p_1]
	and	#$ff
	pha
	jsl	~~tolower
	sep	#$20
	longa	off
	sta	[<L75+p_1]
	rep	#$20
	longa	on
;		p++;
	.line	296
	inc	<L75+p_1
	bne	L78
	inc	<L75+p_1+2
L78:
;	}
	.line	297
	brl	L10018
L10019:
;
;	return orgText;
	.line	299
	ldx	<L74+orgText_0+2
	lda	<L74+orgText_0
L79:
	tay
	lda	<L74+2
	sta	<L74+2+4
	lda	<L74+1
	sta	<L74+1+4
	pld
	tsc
	clc
	adc	#L74+4
	tcs
	tya
	rtl
;}
	.line	300
	.endblock	300
L74	equ	4
L75	equ	1
	ends
	efunc
	.endfunc	300,1,4
	.line	300
;
;/*
; *
; *
; *
; *
; */
;char FAR* k_itoa(unsigned int value, char FAR*result, int base)
;{
	.line	308
	.line	309
	code
	xdef	~~k_itoa
	func
	.function	309
~~k_itoa:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L80
	tcs
	phd
	tcd
value_0	set	4
result_0	set	6
base_0	set	10
	.block	309
;	result[0] = 0;
	.sym	value,4,16,6,16
	.sym	result,6,142,6,32
	.sym	base,10,5,6,16
	.line	310
	sep	#$20
	longa	off
	lda	#$0
	sta	[<L80+result_0]
	rep	#$20
	longa	on
;
;	if(base!=10)
	.line	312
;		return result;
	lda	<L80+base_0
	cmp	#<$a
	bne	L83
	brl	L10020
L83:
	.line	313
	ldx	<L80+result_0+2
	lda	<L80+result_0
L84:
	tay
	lda	<L80+2
	sta	<L80+2+8
	lda	<L80+1
	sta	<L80+1+8
	pld
	tsc
	clc
	adc	#L80+8
	tcs
	tya
	rtl
;
;	return k_inttodec(value,result);
L10020:
	.line	315
	pei	<L80+result_0+2
	pei	<L80+result_0
	pei	<L80+value_0
	jsl	~~k_inttodec
	sta	<R0
	stx	<R0+2
	ldx	<R0+2
	lda	<R0
	brl	L84
;}
	.line	316
	.endblock	316
L80	equ	4
L81	equ	5
	ends
	efunc
	.endfunc	316,5,4
	.line	316
;//
;/// A utility function to reverse a string
;//
;void k_reverse(char FAR str[], int length)
;{
	.line	320
	.line	321
	code
	xdef	~~k_reverse
	func
	.function	321
~~k_reverse:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L85
	tcs
	phd
	tcd
str_0	set	4
length_0	set	8
	.block	321
;	char t = 0;
;    long start = 0;
;    long end = length -1;
;
;    while (start < end)
t_1	set	0
start_1	set	1
end_1	set	5
	.sym	t,0,14,1,8
	.sym	start,1,7,1,32
	.sym	end,5,7,1,32
	.sym	str,4,142,6,32
	.sym	length,8,5,6,16
	sep	#$20
	longa	off
	stz	<L86+t_1
	rep	#$20
	longa	on
	stz	<L86+start_1
	stz	<L86+start_1+2
	clc
	lda	#$ffff
	adc	<L85+length_0
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L88
	dey
L88:
	sta	<L86+end_1
	sty	<L86+end_1+2
	.line	326
L10021:
	sec
	lda	<L86+start_1
	sbc	<L86+end_1
	lda	<L86+start_1+2
	sbc	<L86+end_1+2
	bvs	L89
	eor	#$8000
L89:
	bpl	L90
	brl	L10022
L90:
;    {
	.line	327
;		t = *(str+start);
	.line	328
	clc
	lda	<L85+str_0
	adc	<L86+start_1
	sta	<R0
	lda	<L85+str_0+2
	adc	<L86+start_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	[<R0]
	sta	<L86+t_1
	rep	#$20
	longa	on
;	    *(str+start) = *(str+end);
	.line	329
	clc
	lda	<L85+str_0
	adc	<L86+start_1
	sta	<R0
	lda	<L85+str_0+2
	adc	<L86+start_1+2
	sta	<R0+2
	clc
	lda	<L85+str_0
	adc	<L86+end_1
	sta	<R1
	lda	<L85+str_0+2
	adc	<L86+end_1+2
	sta	<R1+2
	sep	#$20
	longa	off
	lda	[<R1]
	sta	[<R0]
	rep	#$20
	longa	on
;		*(str+end) = t;
	.line	330
	clc
	lda	<L85+str_0
	adc	<L86+end_1
	sta	<R0
	lda	<L85+str_0+2
	adc	<L86+end_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	<L86+t_1
	sta	[<R0]
	rep	#$20
	longa	on
;
;        //swap(*(str+start), *(str+end));
;        start++;
	.line	333
	inc	<L86+start_1
	bne	L91
	inc	<L86+start_1+2
L91:
;        end--;
	.line	334
	lda	<L86+end_1
	bne	L92
	dec	<L86+end_1+2
L92:
	dec	<L86+end_1
;    }
	.line	335
	brl	L10021
L10022:
;}
	.line	336
L93:
	lda	<L85+2
	sta	<L85+2+6
	lda	<L85+1
	sta	<L85+1+6
	pld
	tsc
	clc
	adc	#L85+6
	tcs
	rtl
	.endblock	336
L85	equ	17
L86	equ	9
	ends
	efunc
	.endfunc	336,9,17
	.line	336
;
;LPCHAR k_string_trim(LPCHAR lpText)
;{
	.line	338
	.line	339
	code
	xdef	~~k_string_trim
	func
	.function	339
~~k_string_trim:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L94
	tcs
	phd
	tcd
lpText_0	set	4
	.block	339
;	return k_string_rtrim(k_string_ltrim(lpText));
	.sym	lpText,4,142,6,32
	.line	340
	pei	<L94+lpText_0+2
	pei	<L94+lpText_0
	jsl	~~k_string_ltrim
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_string_rtrim
	sta	<R1
	stx	<R1+2
	ldx	<R1+2
	lda	<R1
L97:
	tay
	lda	<L94+2
	sta	<L94+2+4
	lda	<L94+1
	sta	<L94+1+4
	pld
	tsc
	clc
	adc	#L94+4
	tcs
	tya
	rtl
;}
	.line	341
	.endblock	341
L94	equ	8
L95	equ	9
	ends
	efunc
	.endfunc	341,9,8
	.line	341
;
;LPCHAR k_string_rtrim(LPCHAR lpText)
;{
	.line	343
	.line	344
	code
	xdef	~~k_string_rtrim
	func
	.function	344
~~k_string_rtrim:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L98
	tcs
	phd
	tcd
lpText_0	set	4
	.block	344
;	UINT index  = 0;
;	UINT length = 0;
;	if(lpText)
index_1	set	0
length_1	set	2
	.sym	index,0,16,1,16
	.sym	length,2,16,1,16
	.sym	lpText,4,142,6,32
	stz	<L99+index_1
	stz	<L99+length_1
	.line	347
;	{
	lda	<L98+lpText_0
	ora	<L98+lpText_0+2
	bne	L101
	brl	L10023
L101:
	.line	348
;		length = strlen(lpText) - 1;
	.line	349
	pei	<L98+lpText_0+2
	pei	<L98+lpText_0
	jsl	~~strlen
	sta	<R0
	clc
	lda	#$ffff
	adc	<R0
	sta	<L99+length_1
;		for(index = length;index >= 0;index--)
	.line	350
	lda	<L99+length_1
	sta	<L99+index_1
	brl	L10027
L10026:
;		{
	.line	351
;			if(lpText[index] == ' ')
	.line	352
;			{
	sep	#$20
	longa	off
	ldy	<L99+index_1
	lda	[<L98+lpText_0],Y
	cmp	#<$20
	rep	#$20
	longa	on
	beq	L102
	brl	L10028
L102:
	.line	353
;				lpText[index] = 0;
	.line	354
	sep	#$20
	longa	off
	lda	#$0
	ldy	<L99+index_1
	sta	[<L98+lpText_0],Y
	rep	#$20
	longa	on
;			}
	.line	355
;			else
	brl	L10029
L10028:
;			{
	.line	357
;				break;
	.line	358
	brl	L10025
;			}
	.line	359
L10029:
;		}
	.line	360
L10024:
	dec	<L99+index_1
L10027:
	lda	<L99+index_1
	cmp	#<$0
	bcc	L103
	brl	L10026
L103:
L10025:
;	}
	.line	361
;	return lpText;
L10023:
	.line	362
	ldx	<L98+lpText_0+2
	lda	<L98+lpText_0
L104:
	tay
	lda	<L98+2
	sta	<L98+2+4
	lda	<L98+1
	sta	<L98+1+4
	pld
	tsc
	clc
	adc	#L98+4
	tcs
	tya
	rtl
;}
	.line	363
	.endblock	363
L98	equ	8
L99	equ	5
	ends
	efunc
	.endfunc	363,5,8
	.line	363
;
;LPCHAR k_string_ltrim(LPCHAR lpText)
;{
	.line	365
	.line	366
	code
	xdef	~~k_string_ltrim
	func
	.function	366
~~k_string_ltrim:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L105
	tcs
	phd
	tcd
lpText_0	set	4
	.block	366
;	UINT 	index  = 0;
;	UINT    c      = 0;
;	UINT 	length = 0;
;	LPCHAR  tmp    = NULL;
;	if(lpText)
index_1	set	0
c_1	set	2
length_1	set	4
tmp_1	set	6
	.sym	index,0,16,1,16
	.sym	c,2,16,1,16
	.sym	length,4,16,1,16
	.sym	tmp,6,142,1,32
	.sym	lpText,4,142,6,32
	stz	<L106+index_1
	stz	<L106+c_1
	stz	<L106+length_1
	stz	<L106+tmp_1
	stz	<L106+tmp_1+2
	.line	371
;	{
	lda	<L105+lpText_0
	ora	<L105+lpText_0+2
	bne	L108
	brl	L10030
L108:
	.line	372
;		length = strlen(lpText);
	.line	373
	pei	<L105+lpText_0+2
	pei	<L105+lpText_0
	jsl	~~strlen
	sta	<L106+length_1
;		tmp = k_mem_allocate_heap(length+1);
	.line	374
	lda	<L106+length_1
	ina
	pha
	jsl	~~k_mem_allocate_heap
	sta	<L106+tmp_1
	stx	<L106+tmp_1+2
;		if(tmp)
	.line	375
;		{
	lda	<L106+tmp_1
	ora	<L106+tmp_1+2
	bne	L109
	brl	L10031
L109:
	.line	376
;			memset(tmp,0,length+1);
	.line	377
	lda	<L106+length_1
	ina
	pha
	pea	#<$0
	pei	<L106+tmp_1+2
	pei	<L106+tmp_1
	jsl	~~memset
;			for(index = 0;index < length;index++)
	.line	378
	stz	<L106+index_1
	brl	L10035
L10034:
;			{
	.line	379
;				if(lpText[index] == ' ' && c == 0)
	.line	380
;				{
	sep	#$20
	longa	off
	ldy	<L106+index_1
	lda	[<L105+lpText_0],Y
	cmp	#<$20
	rep	#$20
	longa	on
	beq	L110
	brl	L10036
L110:
	lda	<L106+c_1
	beq	L111
	brl	L10036
L111:
	.line	381
;					// skip spaces until we find another char first
;				}
	.line	383
;				else
	brl	L10037
L10036:
;				{
	.line	385
;					tmp[c] = lpText[index];
	.line	386
	sep	#$20
	longa	off
	ldy	<L106+index_1
	lda	[<L105+lpText_0],Y
	ldy	<L106+c_1
	sta	[<L106+tmp_1],Y
	rep	#$20
	longa	on
;					c++;
	.line	387
	inc	<L106+c_1
;				}
	.line	388
L10037:
;
;				if(lpText[0]  == 0)
	.line	390
;					break;
	lda	[<L105+lpText_0]
	and	#$ff
	bne	L112
	brl	L10033
L112:
;			}
	.line	392
L10032:
	inc	<L106+index_1
L10035:
	lda	<L106+index_1
	cmp	<L106+length_1
	bcs	L113
	brl	L10034
L113:
L10033:
;			strcpy(lpText,tmp);
	.line	393
	pei	<L106+tmp_1+2
	pei	<L106+tmp_1
	pei	<L105+lpText_0+2
	pei	<L105+lpText_0
	jsl	~~strcpy
;			k_mem_deallocate_heap(tmp);
	.line	394
	pei	<L106+tmp_1+2
	pei	<L106+tmp_1
	jsl	~~k_mem_deallocate_heap
;		}
	.line	395
;	}
L10031:
	.line	396
;	return lpText;
L10030:
	.line	397
	ldx	<L105+lpText_0+2
	lda	<L105+lpText_0
L114:
	tay
	lda	<L105+2
	sta	<L105+2+4
	lda	<L105+1
	sta	<L105+1+4
	pld
	tsc
	clc
	adc	#L105+4
	tcs
	tya
	rtl
;}
	.line	398
	.endblock	398
L105	equ	10
L106	equ	1
	ends
	efunc
	.endfunc	398,1,10
	.line	398
;
;INT k_string_indexOf(LPCHAR chars,CHAR c)
;{
	.line	400
	.line	401
	code
	xdef	~~k_string_indexOf
	func
	.function	401
~~k_string_indexOf:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L115
	tcs
	phd
	tcd
chars_0	set	4
c_0	set	8
	.block	401
;	LPCHAR ptr = chars;
;	INT pos = 0;
;
;	k_debug_char("k_string_indexOf:char:",c);
ptr_1	set	0
pos_1	set	4
	.sym	ptr,0,142,1,32
	.sym	pos,4,5,1,16
	.sym	chars,4,142,6,32
	.sym	c,8,14,6,8
	lda	<L115+chars_0
	sta	<L116+ptr_1
	lda	<L115+chars_0+2
	sta	<L116+ptr_1+2
	stz	<L116+pos_1
	.line	405
	pei	<L115+c_0
	pea	#^L1
	pea	#<L1
	jsl	~~k_debug_char
;
;	while(*ptr!=0)
	.line	407
L10038:
	lda	[<L116+ptr_1]
	and	#$ff
	bne	L118
	brl	L10039
L118:
;	{
	.line	408
;		if(*ptr == c)
	.line	409
;		{
	sep	#$20
	longa	off
	lda	[<L116+ptr_1]
	cmp	<L115+c_0
	rep	#$20
	longa	on
	beq	L119
	brl	L10040
L119:
	.line	410
;			k_debug_integer("k_string_indexOf:pos:",pos);
	.line	411
	pei	<L116+pos_1
	pea	#^L1+23
	pea	#<L1+23
	jsl	~~k_debug_integer
;			return pos;
	.line	412
	lda	<L116+pos_1
L120:
	tay
	lda	<L115+2
	sta	<L115+2+6
	lda	<L115+1
	sta	<L115+1+6
	pld
	tsc
	clc
	adc	#L115+6
	tcs
	tya
	rtl
;		}
	.line	413
;		pos++;
L10040:
	.line	414
	inc	<L116+pos_1
;		ptr++;
	.line	415
	inc	<L116+ptr_1
	bne	L121
	inc	<L116+ptr_1+2
L121:
;	};
	.line	416
	brl	L10038
L10039:
	.line	416
;
;	return -1;
	.line	418
	lda	#$ffff
	brl	L120
;}
	.line	419
	.endblock	419
L115	equ	6
L116	equ	1
	ends
	efunc
	.endfunc	419,1,6
	.line	419
	data
L1:
	db	$6B,$5F,$73,$74,$72,$69,$6E,$67,$5F,$69,$6E,$64,$65,$78,$4F
	db	$66,$3A,$63,$68,$61,$72,$3A,$00,$6B,$5F,$73,$74,$72,$69,$6E
	db	$67,$5F,$69,$6E,$64,$65,$78,$4F,$66,$3A,$70,$6F,$73,$3A,$00
	ends
;
;LPCHAR k_string_toString(CHAR c,LPCHAR toBuffer)
;{
	.line	421
	.line	422
	code
	xdef	~~k_string_toString
	func
	.function	422
~~k_string_toString:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L123
	tcs
	phd
	tcd
c_0	set	4
toBuffer_0	set	6
	.block	422
;	toBuffer[0] = c;
	.sym	c,4,14,6,8
	.sym	toBuffer,6,142,6,32
	.line	423
	sep	#$20
	longa	off
	lda	<L123+c_0
	sta	[<L123+toBuffer_0]
	rep	#$20
	longa	on
;	toBuffer[1] = 0;
	.line	424
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$1
	sta	[<L123+toBuffer_0],Y
	rep	#$20
	longa	on
;	return toBuffer;
	.line	425
	ldx	<L123+toBuffer_0+2
	lda	<L123+toBuffer_0
L126:
	tay
	lda	<L123+2
	sta	<L123+2+6
	lda	<L123+1
	sta	<L123+1+6
	pld
	tsc
	clc
	adc	#L123+6
	tcs
	tya
	rtl
;}
	.line	426
	.endblock	426
L123	equ	0
L124	equ	1
	ends
	efunc
	.endfunc	426,1,0
	.line	426
;
;LPCHAR k_string_copy_string(LPCSTR src)
;{
	.line	428
	.line	429
	code
	xdef	~~k_string_copy_string
	func
	.function	429
~~k_string_copy_string:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L127
	tcs
	phd
	tcd
src_0	set	4
	.block	429
;	UINT size = 0;
;	LPCHAR copy = NULL;
;	LPCHAR ptr = NULL;
;
;	//k_debug_strings("k_string_copy_string:","Enter");
;
;	if(src!=NULL)
size_1	set	0
copy_1	set	2
ptr_1	set	6
	.sym	size,0,16,1,16
	.sym	copy,2,142,1,32
	.sym	ptr,6,142,1,32
	.sym	src,4,142,6,32
	stz	<L128+size_1
	stz	<L128+copy_1
	stz	<L128+copy_1+2
	stz	<L128+ptr_1
	stz	<L128+ptr_1+2
	.line	436
;	{
	lda	<L127+src_0
	ora	<L127+src_0+2
	bne	L130
	brl	L10041
L130:
	.line	437
;		size = strlen(src);
	.line	438
	pei	<L127+src_0+2
	pei	<L127+src_0
	jsl	~~strlen
	sta	<L128+size_1
;
;		//k_debug_integer("k_string_copy_string:size:",size);
;
;		if(size > 0)
	.line	442
;		{
	lda	#$0
	cmp	<L128+size_1
	bcc	L131
	brl	L10042
L131:
	.line	443
;			copy = k_mem_allocate_heap(size+1);
	.line	444
	lda	<L128+size_1
	ina
	pha
	jsl	~~k_mem_allocate_heap
	sta	<L128+copy_1
	stx	<L128+copy_1+2
;			//strcpy(copy,src);
;			ptr = copy;
	.line	446
	lda	<L128+copy_1
	sta	<L128+ptr_1
	lda	<L128+copy_1+2
	sta	<L128+ptr_1+2
;			while(*src)
	.line	447
L10043:
	lda	[<L127+src_0]
	and	#$ff
	bne	L132
	brl	L10044
L132:
;			{
	.line	448
;				*ptr = *src;
	.line	449
	sep	#$20
	longa	off
	lda	[<L127+src_0]
	sta	[<L128+ptr_1]
	rep	#$20
	longa	on
;				ptr++;
	.line	450
	inc	<L128+ptr_1
	bne	L133
	inc	<L128+ptr_1+2
L133:
;				src++;
	.line	451
	inc	<L127+src_0
	bne	L134
	inc	<L127+src_0+2
L134:
;			}
	.line	452
	brl	L10043
L10044:
;			*ptr = 0;
	.line	453
	sep	#$20
	longa	off
	lda	#$0
	sta	[<L128+ptr_1]
	rep	#$20
	longa	on
;			//k_debug_strings("k_string_copy_string:size:",copy);
;		}
	.line	455
;	}
L10042:
	.line	456
;
;	//k_debug_strings("k_string_copy_string:",copy);
;
;	return copy;
L10041:
	.line	460
	ldx	<L128+copy_1+2
	lda	<L128+copy_1
L135:
	tay
	lda	<L127+2
	sta	<L127+2+4
	lda	<L127+1
	sta	<L127+1+4
	pld
	tsc
	clc
	adc	#L127+4
	tcs
	tya
	rtl
;}
	.line	461
	.endblock	461
L127	equ	10
L128	equ	1
	ends
	efunc
	.endfunc	461,1,10
	.line	461
;
;PFXSTRING k_fxstring_init(UINT size)
;{
	.line	463
	.line	464
	code
	xdef	~~k_fxstring_init
	func
	.function	464
~~k_fxstring_init:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L136
	tcs
	phd
	tcd
size_0	set	4
	.block	464
;	PFXSTRING fxstring = NULL;
;
;	if(size > 0)
fxstring_1	set	0
	.sym	fxstring,0,138,1,32,45
	.sym	size,4,16,6,16
	stz	<L137+fxstring_1
	stz	<L137+fxstring_1+2
	.line	467
;	{
	lda	#$0
	cmp	<L136+size_0
	bcc	L139
	brl	L10045
L139:
	.line	468
;		k_debug_integer("k_fxstring_new:",size);
	.line	469
	pei	<L136+size_0
	pea	#^L122
	pea	#<L122
	jsl	~~k_debug_integer
;
;		fxstring = k_mem_allocate_heap(sizeof(FXSTRING));
	.line	471
	pea	#<$8
	jsl	~~k_mem_allocate_heap
	sta	<L137+fxstring_1
	stx	<L137+fxstring_1+2
;		fxstring->pos = 0;
	.line	472
	lda	#$0
	ldy	#$2
	sta	[<L137+fxstring_1],Y
;		fxstring->size = size;
	.line	473
	lda	<L136+size_0
	sta	[<L137+fxstring_1]
;		fxstring->buffer = k_mem_allocate_heap(fxstring->size);
	.line	474
	lda	[<L137+fxstring_1]
	pha
	jsl	~~k_mem_allocate_heap
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$4
	sta	[<L137+fxstring_1],Y
	lda	<R0+2
	ldy	#$6
	sta	[<L137+fxstring_1],Y
;		if(fxstring->buffer)
	.line	475
;			memset(fxstring->buffer,0,fxstring->size);
	ldy	#$4
	lda	[<L137+fxstring_1],Y
	ldy	#$6
	ora	[<L137+fxstring_1],Y
	bne	L140
	brl	L10046
L140:
	.line	476
	lda	[<L137+fxstring_1]
	pha
	pea	#<$0
	ldy	#$6
	lda	[<L137+fxstring_1],Y
	pha
	ldy	#$4
	lda	[<L137+fxstring_1],Y
	pha
	jsl	~~memset
;
;		k_debug_integer("k_fxstring_new:",fxstring->size);
L10046:
	.line	478
	lda	[<L137+fxstring_1]
	pha
	pea	#^L122+16
	pea	#<L122+16
	jsl	~~k_debug_integer
;	}
	.line	479
;	return fxstring;
L10045:
	.line	480
	ldx	<L137+fxstring_1+2
	lda	<L137+fxstring_1
L141:
	tay
	lda	<L136+2
	sta	<L136+2+2
	lda	<L136+1
	sta	<L136+1+2
	pld
	tsc
	clc
	adc	#L136+2
	tcs
	tya
	rtl
;}
	.line	481
	.endblock	481
L136	equ	8
L137	equ	5
	ends
	efunc
	.endfunc	481,5,8
	.line	481
	data
L122:
	db	$6B,$5F,$66,$78,$73,$74,$72,$69,$6E,$67,$5F,$6E,$65,$77,$3A
	db	$00,$6B,$5F,$66,$78,$73,$74,$72,$69,$6E,$67,$5F,$6E,$65,$77
	db	$3A,$00
	ends
;
;
;PFXSTRING k_fxstring_reinit(PFXSTRING fxstring)
;{
	.line	484
	.line	485
	code
	xdef	~~k_fxstring_reinit
	func
	.function	485
~~k_fxstring_reinit:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L143
	tcs
	phd
	tcd
fxstring_0	set	4
	.block	485
;	if(fxstring)
	.sym	fxstring,4,138,6,32,45
	.line	486
;	{
	lda	<L143+fxstring_0
	ora	<L143+fxstring_0+2
	bne	L146
	brl	L10047
L146:
	.line	487
;		fxstring->pos = 0;
	.line	488
	lda	#$0
	ldy	#$2
	sta	[<L143+fxstring_0],Y
;		if(fxstring->buffer)
	.line	489
;			memset(fxstring->buffer,0,fxstring->size);
	ldy	#$4
	lda	[<L143+fxstring_0],Y
	ldy	#$6
	ora	[<L143+fxstring_0],Y
	bne	L147
	brl	L10048
L147:
	.line	490
	lda	[<L143+fxstring_0]
	pha
	pea	#<$0
	ldy	#$6
	lda	[<L143+fxstring_0],Y
	pha
	ldy	#$4
	lda	[<L143+fxstring_0],Y
	pha
	jsl	~~memset
;	}
L10048:
	.line	491
;	return fxstring;
L10047:
	.line	492
	ldx	<L143+fxstring_0+2
	lda	<L143+fxstring_0
L148:
	tay
	lda	<L143+2
	sta	<L143+2+4
	lda	<L143+1
	sta	<L143+1+4
	pld
	tsc
	clc
	adc	#L143+4
	tcs
	tya
	rtl
;}
	.line	493
	.endblock	493
L143	equ	0
L144	equ	1
	ends
	efunc
	.endfunc	493,1,0
	.line	493
;
;
;
;PFXSTRING k_fxstring_new(LPCHAR initial,UINT size)
;{
	.line	497
	.line	498
	code
	xdef	~~k_fxstring_new
	func
	.function	498
~~k_fxstring_new:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L149
	tcs
	phd
	tcd
initial_0	set	4
size_0	set	8
	.block	498
;	PFXSTRING fxstring = k_fxstring_init(size);
;
;	if(fxstring->buffer == NULL)
fxstring_1	set	0
	.sym	fxstring,0,138,1,32,45
	.sym	initial,4,142,6,32
	.sym	size,8,16,6,16
	pei	<L149+size_0
	jsl	~~k_fxstring_init
	sta	<L150+fxstring_1
	stx	<L150+fxstring_1+2
	.line	501
;	{
	ldy	#$4
	lda	[<L150+fxstring_1],Y
	ldy	#$6
	ora	[<L150+fxstring_1],Y
	beq	L152
	brl	L10049
L152:
	.line	502
;		fxstring->buffer = k_mem_allocate_heap(fxstring->size);
	.line	503
	lda	[<L150+fxstring_1]
	pha
	jsl	~~k_mem_allocate_heap
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$4
	sta	[<L150+fxstring_1],Y
	lda	<R0+2
	ldy	#$6
	sta	[<L150+fxstring_1],Y
;		memset(fxstring->buffer,0,fxstring->size);
	.line	504
	lda	[<L150+fxstring_1]
	pha
	pea	#<$0
	ldy	#$6
	lda	[<L150+fxstring_1],Y
	pha
	ldy	#$4
	lda	[<L150+fxstring_1],Y
	pha
	jsl	~~memset
;	}
	.line	505
;
;	strcpy(fxstring->buffer,initial);
L10049:
	.line	507
	pei	<L149+initial_0+2
	pei	<L149+initial_0
	ldy	#$6
	lda	[<L150+fxstring_1],Y
	pha
	ldy	#$4
	lda	[<L150+fxstring_1],Y
	pha
	jsl	~~strcpy
;	fxstring->pos = strlen(fxstring->buffer);
	.line	508
	ldy	#$6
	lda	[<L150+fxstring_1],Y
	pha
	ldy	#$4
	lda	[<L150+fxstring_1],Y
	pha
	jsl	~~strlen
	ldy	#$2
	sta	[<L150+fxstring_1],Y
;
;	k_debug_message("k_fxstring_new:",fxstring->buffer);
	.line	510
	ldy	#$6
	lda	[<L150+fxstring_1],Y
	pha
	ldy	#$4
	lda	[<L150+fxstring_1],Y
	pha
	pea	#^L142
	pea	#<L142
	jsl	~~k_debug_message
;
;	return fxstring;
	.line	512
	ldx	<L150+fxstring_1+2
	lda	<L150+fxstring_1
L153:
	tay
	lda	<L149+2
	sta	<L149+2+6
	lda	<L149+1
	sta	<L149+1+6
	pld
	tsc
	clc
	adc	#L149+6
	tcs
	tya
	rtl
;}
	.line	513
	.endblock	513
L149	equ	8
L150	equ	5
	ends
	efunc
	.endfunc	513,5,8
	.line	513
	data
L142:
	db	$6B,$5F,$66,$78,$73,$74,$72,$69,$6E,$67,$5F,$6E,$65,$77,$3A
	db	$00
	ends
;
;VOID k_fxstring_free(PFXSTRING string)
;{
	.line	515
	.line	516
	code
	xdef	~~k_fxstring_free
	func
	.function	516
~~k_fxstring_free:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L155
	tcs
	phd
	tcd
string_0	set	4
	.block	516
;	if(string)
	.sym	string,4,138,6,32,45
	.line	517
;	{
	lda	<L155+string_0
	ora	<L155+string_0+2
	bne	L158
	brl	L10050
L158:
	.line	518
;		if(string->buffer)
	.line	519
;			k_mem_deallocate_heap(string->buffer);
	ldy	#$4
	lda	[<L155+string_0],Y
	ldy	#$6
	ora	[<L155+string_0],Y
	bne	L159
	brl	L10051
L159:
	.line	520
	ldy	#$6
	lda	[<L155+string_0],Y
	pha
	ldy	#$4
	lda	[<L155+string_0],Y
	pha
	jsl	~~k_mem_deallocate_heap
;
;		string->size = 0;
L10051:
	.line	522
	lda	#$0
	sta	[<L155+string_0]
;		string->pos  = 0;
	.line	523
	lda	#$0
	ldy	#$2
	sta	[<L155+string_0],Y
;		string->buffer = NULL;
	.line	524
	lda	#$0
	ldy	#$4
	sta	[<L155+string_0],Y
	lda	#$0
	ldy	#$6
	sta	[<L155+string_0],Y
;
;		k_mem_deallocate_heap(string);
	.line	526
	pei	<L155+string_0+2
	pei	<L155+string_0
	jsl	~~k_mem_deallocate_heap
;	}
	.line	527
;	return;
L10050:
	.line	528
L160:
	lda	<L155+2
	sta	<L155+2+4
	lda	<L155+1
	sta	<L155+1+4
	pld
	tsc
	clc
	adc	#L155+4
	tcs
	rtl
;}
	.line	529
	.endblock	529
L155	equ	0
L156	equ	1
	ends
	efunc
	.endfunc	529,1,0
	.line	529
;
;UINT k_fxstring_size(PFXSTRING string)
;{
	.line	531
	.line	532
	code
	xdef	~~k_fxstring_size
	func
	.function	532
~~k_fxstring_size:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L161
	tcs
	phd
	tcd
string_0	set	4
	.block	532
;	if(string)
	.sym	string,4,138,6,32,45
	.line	533
;	{
	lda	<L161+string_0
	ora	<L161+string_0+2
	bne	L164
	brl	L10052
L164:
	.line	534
;		return string->size;
	.line	535
	lda	[<L161+string_0]
L165:
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
;	}
	.line	536
;	return -1;
L10052:
	.line	537
	lda	#$ffff
	brl	L165
;}
	.line	538
	.endblock	538
L161	equ	0
L162	equ	1
	ends
	efunc
	.endfunc	538,1,0
	.line	538
;
;UINT k_fxstring_length(PFXSTRING string)
;{
	.line	540
	.line	541
	code
	xdef	~~k_fxstring_length
	func
	.function	541
~~k_fxstring_length:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L166
	tcs
	phd
	tcd
string_0	set	4
	.block	541
;	if(string)
	.sym	string,4,138,6,32,45
	.line	542
;	{
	lda	<L166+string_0
	ora	<L166+string_0+2
	bne	L169
	brl	L10053
L169:
	.line	543
;		return strlen(string->buffer);
	.line	544
	ldy	#$6
	lda	[<L166+string_0],Y
	pha
	ldy	#$4
	lda	[<L166+string_0],Y
	pha
	jsl	~~strlen
L170:
	tay
	lda	<L166+2
	sta	<L166+2+4
	lda	<L166+1
	sta	<L166+1+4
	pld
	tsc
	clc
	adc	#L166+4
	tcs
	tya
	rtl
;	}
	.line	545
;	return -1;
L10053:
	.line	546
	lda	#$ffff
	brl	L170
;}
	.line	547
	.endblock	547
L166	equ	0
L167	equ	1
	ends
	efunc
	.endfunc	547,1,0
	.line	547
;
;UINT k_fxstring_position(PFXSTRING string)
;{
	.line	549
	.line	550
	code
	xdef	~~k_fxstring_position
	func
	.function	550
~~k_fxstring_position:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L171
	tcs
	phd
	tcd
string_0	set	4
	.block	550
;	if(string)
	.sym	string,4,138,6,32,45
	.line	551
;	{
	lda	<L171+string_0
	ora	<L171+string_0+2
	bne	L174
	brl	L10054
L174:
	.line	552
;		return string->pos;
	.line	553
	ldy	#$2
	lda	[<L171+string_0],Y
L175:
	tay
	lda	<L171+2
	sta	<L171+2+4
	lda	<L171+1
	sta	<L171+1+4
	pld
	tsc
	clc
	adc	#L171+4
	tcs
	tya
	rtl
;	}
	.line	554
;	return -1;
L10054:
	.line	555
	lda	#$ffff
	brl	L175
;}
	.line	556
	.endblock	556
L171	equ	0
L172	equ	1
	ends
	efunc
	.endfunc	556,1,0
	.line	556
;
;LPCHAR k_fxstring_addchar(PFXSTRING string,CHAR c)
;{
	.line	558
	.line	559
	code
	xdef	~~k_fxstring_addchar
	func
	.function	559
~~k_fxstring_addchar:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L176
	tcs
	phd
	tcd
string_0	set	4
c_0	set	8
	.block	559
;	if(string)
	.sym	string,4,138,6,32,45
	.sym	c,8,14,6,8
	.line	560
;	{
	lda	<L176+string_0
	ora	<L176+string_0+2
	bne	L179
	brl	L10055
L179:
	.line	561
;		string->buffer[string->pos] = c;
	.line	562
	ldy	#$2
	lda	[<L176+string_0],Y
	sta	<R0
	ldy	#$4
	lda	[<L176+string_0],Y
	sta	<R1
	ldy	#$6
	lda	[<L176+string_0],Y
	sta	<R1+2
	sep	#$20
	longa	off
	lda	<L176+c_0
	ldy	<R0
	sta	[<R1],Y
	rep	#$20
	longa	on
;		string->pos++;
	.line	563
	ldy	#$2
	lda	[<L176+string_0],Y
	ina
	ldy	#$2
	sta	[<L176+string_0],Y
;		//k_debug_message("k_fxstring_addchar:",string->buffer);
;		return string->buffer;
	.line	565
	ldy	#$6
	lda	[<L176+string_0],Y
	tax
	ldy	#$4
	lda	[<L176+string_0],Y
L180:
	tay
	lda	<L176+2
	sta	<L176+2+6
	lda	<L176+1
	sta	<L176+1+6
	pld
	tsc
	clc
	adc	#L176+6
	tcs
	tya
	rtl
;	}
	.line	566
;	return NULL;
L10055:
	.line	567
	lda	#$0
	tax
	lda	#$0
	brl	L180
;}
	.line	568
	.endblock	568
L176	equ	8
L177	equ	9
	ends
	efunc
	.endfunc	568,9,8
	.line	568
;
;CHAR k_fxstring_removechar(PFXSTRING string)
;{
	.line	570
	.line	571
	code
	xdef	~~k_fxstring_removechar
	func
	.function	571
~~k_fxstring_removechar:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L181
	tcs
	phd
	tcd
string_0	set	4
	.block	571
;	CHAR old = 0;
;
;	if(string)
old_1	set	0
	.sym	old,0,14,1,8
	.sym	string,4,138,6,32,45
	sep	#$20
	longa	off
	stz	<L182+old_1
	rep	#$20
	longa	on
	.line	574
;	{
	lda	<L181+string_0
	ora	<L181+string_0+2
	bne	L184
	brl	L10056
L184:
	.line	575
;		string->pos--;
	.line	576
	clc
	lda	#$ffff
	ldy	#$2
	adc	[<L181+string_0],Y
	ldy	#$2
	sta	[<L181+string_0],Y
;		if(string->pos < 0)
	.line	577
;			string->pos = 0;
	ldy	#$2
	lda	[<L181+string_0],Y
	bmi	L185
	brl	L10057
L185:
	.line	578
	lda	#$0
	ldy	#$2
	sta	[<L181+string_0],Y
;
;		old = string->buffer[string->pos];
L10057:
	.line	580
	ldy	#$2
	lda	[<L181+string_0],Y
	sta	<R0
	ldy	#$4
	lda	[<L181+string_0],Y
	sta	<R1
	ldy	#$6
	lda	[<L181+string_0],Y
	sta	<R1+2
	sep	#$20
	longa	off
	ldy	<R0
	lda	[<R1],Y
	sta	<L182+old_1
	rep	#$20
	longa	on
;		string->buffer[string->pos] = 0;
	.line	581
	ldy	#$2
	lda	[<L181+string_0],Y
	sta	<R0
	ldy	#$4
	lda	[<L181+string_0],Y
	sta	<R1
	ldy	#$6
	lda	[<L181+string_0],Y
	sta	<R1+2
	sep	#$20
	longa	off
	lda	#$0
	ldy	<R0
	sta	[<R1],Y
	rep	#$20
	longa	on
;	}
	.line	582
;	return old;
L10056:
	.line	583
	lda	<L182+old_1
	and	#$ff
L186:
	tay
	lda	<L181+2
	sta	<L181+2+4
	lda	<L181+1
	sta	<L181+1+4
	pld
	tsc
	clc
	adc	#L181+4
	tcs
	tya
	rtl
;}
	.line	584
	.endblock	584
L181	equ	9
L182	equ	9
	ends
	efunc
	.endfunc	584,9,9
	.line	584
;
;LPCHAR k_fxstring_add(PFXSTRING string,LPCHAR text)
;{
	.line	586
	.line	587
	code
	xdef	~~k_fxstring_add
	func
	.function	587
~~k_fxstring_add:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L187
	tcs
	phd
	tcd
string_0	set	4
text_0	set	8
	.block	587
;	if(string && text)
	.sym	string,4,138,6,32,45
	.sym	text,8,142,6,32
	.line	588
;	{
	lda	<L187+string_0
	ora	<L187+string_0+2
	bne	L190
	brl	L10058
L190:
	lda	<L187+text_0
	ora	<L187+text_0+2
	bne	L191
	brl	L10058
L191:
	.line	589
;		strcat(string->buffer,text);
	.line	590
	pei	<L187+text_0+2
	pei	<L187+text_0
	ldy	#$6
	lda	[<L187+string_0],Y
	pha
	ldy	#$4
	lda	[<L187+string_0],Y
	pha
	jsl	~~strcat
;		string->pos = strlen(string->buffer);
	.line	591
	ldy	#$6
	lda	[<L187+string_0],Y
	pha
	ldy	#$4
	lda	[<L187+string_0],Y
	pha
	jsl	~~strlen
	ldy	#$2
	sta	[<L187+string_0],Y
;		//k_debug_integer("k_fxstring_add:",string->pos);
;		return string->buffer;
	.line	593
	ldy	#$6
	lda	[<L187+string_0],Y
	tax
	ldy	#$4
	lda	[<L187+string_0],Y
L192:
	tay
	lda	<L187+2
	sta	<L187+2+8
	lda	<L187+1
	sta	<L187+1+8
	pld
	tsc
	clc
	adc	#L187+8
	tcs
	tya
	rtl
;	}
	.line	594
;	return string->buffer;
L10058:
	.line	595
	ldy	#$6
	lda	[<L187+string_0],Y
	tax
	ldy	#$4
	lda	[<L187+string_0],Y
	brl	L192
;}
	.line	596
	.endblock	596
L187	equ	0
L188	equ	1
	ends
	efunc
	.endfunc	596,1,0
	.line	596
;
;UINT k_fxstring_fxadd(PFXSTRING string,PFXSTRING text)
;{
	.line	598
	.line	599
	code
	xdef	~~k_fxstring_fxadd
	func
	.function	599
~~k_fxstring_fxadd:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L193
	tcs
	phd
	tcd
string_0	set	4
text_0	set	8
	.block	599
;	return  -1;
	.sym	string,4,138,6,32,45
	.sym	text,8,138,6,32,45
	.line	600
	lda	#$ffff
L196:
	tay
	lda	<L193+2
	sta	<L193+2+8
	lda	<L193+1
	sta	<L193+1+8
	pld
	tsc
	clc
	adc	#L193+8
	tcs
	tya
	rtl
;}
	.line	601
	.endblock	601
L193	equ	0
L194	equ	1
	ends
	efunc
	.endfunc	601,1,0
	.line	601
;
;LPCHAR k_fxstring_as(PFXSTRING string)
;{
	.line	603
	.line	604
	code
	xdef	~~k_fxstring_as
	func
	.function	604
~~k_fxstring_as:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L197
	tcs
	phd
	tcd
string_0	set	4
	.block	604
;	if(string)
	.sym	string,4,138,6,32,45
	.line	605
;	{
	lda	<L197+string_0
	ora	<L197+string_0+2
	bne	L200
	brl	L10059
L200:
	.line	606
;		return string->buffer;
	.line	607
	ldy	#$6
	lda	[<L197+string_0],Y
	tax
	ldy	#$4
	lda	[<L197+string_0],Y
L201:
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
;	}
	.line	608
;	return NULL;
L10059:
	.line	609
	lda	#$0
	tax
	lda	#$0
	brl	L201
;}
	.line	610
	.endblock	610
L197	equ	0
L198	equ	1
	ends
	efunc
	.endfunc	610,1,0
	.line	610
;
;CHAR k_fxstring_at(PFXSTRING string,UINT index)
;{
	.line	612
	.line	613
	code
	xdef	~~k_fxstring_at
	func
	.function	613
~~k_fxstring_at:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L202
	tcs
	phd
	tcd
string_0	set	4
index_0	set	8
	.block	613
;	return 0;
	.sym	string,4,138,6,32,45
	.sym	index,8,16,6,16
	.line	614
	lda	#$0
L205:
	tay
	lda	<L202+2
	sta	<L202+2+6
	lda	<L202+1
	sta	<L202+1+6
	pld
	tsc
	clc
	adc	#L202+6
	tcs
	tya
	rtl
;}
	.line	615
	.endblock	615
L202	equ	0
L203	equ	1
	ends
	efunc
	.endfunc	615,1,0
	.line	615
;
;BOOL k_fxstring_equals(PFXSTRING string,LPCHAR match)
;{
	.line	617
	.line	618
	code
	xdef	~~k_fxstring_equals
	func
	.function	618
~~k_fxstring_equals:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L206
	tcs
	phd
	tcd
string_0	set	4
match_0	set	8
	.block	618
;	BOOL bRet = FALSE;
;
;	bRet = (strcmp(string->buffer,match) == 0);
bRet_1	set	0
	.sym	bRet,0,14,1,8
	.sym	string,4,138,6,32,45
	.sym	match,8,142,6,32
	sep	#$20
	longa	off
	stz	<L207+bRet_1
	rep	#$20
	longa	on
	.line	621
	stz	<R0
	pei	<L206+match_0+2
	pei	<L206+match_0
	ldy	#$6
	lda	[<L206+string_0],Y
	pha
	ldy	#$4
	lda	[<L206+string_0],Y
	pha
	jsl	~~strcmp
	tax
	beq	L210
	brl	L209
L210:
	inc	<R0
L209:
	sep	#$20
	longa	off
	lda	<R0
	sta	<L207+bRet_1
	rep	#$20
	longa	on
;
;	return bRet;
	.line	623
	lda	<L207+bRet_1
	and	#$ff
L211:
	tay
	lda	<L206+2
	sta	<L206+2+8
	lda	<L206+1
	sta	<L206+1+8
	pld
	tsc
	clc
	adc	#L206+8
	tcs
	tya
	rtl
;}
	.line	624
	.endblock	624
L206	equ	5
L207	equ	5
	ends
	efunc
	.endfunc	624,5,5
	.line	624
;
;LPCHAR k_fxstring_copy_string(PFXSTRING string)
;{
	.line	626
	.line	627
	code
	xdef	~~k_fxstring_copy_string
	func
	.function	627
~~k_fxstring_copy_string:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L212
	tcs
	phd
	tcd
string_0	set	4
	.block	627
;	if(string)
	.sym	string,4,138,6,32,45
	.line	628
;	{
	lda	<L212+string_0
	ora	<L212+string_0+2
	bne	L215
	brl	L10060
L215:
	.line	629
;		return k_string_copy_string(string->buffer);
	.line	630
	ldy	#$6
	lda	[<L212+string_0],Y
	pha
	ldy	#$4
	lda	[<L212+string_0],Y
	pha
	jsl	~~k_string_copy_string
	sta	<R0
	stx	<R0+2
	ldx	<R0+2
	lda	<R0
L216:
	tay
	lda	<L212+2
	sta	<L212+2+4
	lda	<L212+1
	sta	<L212+1+4
	pld
	tsc
	clc
	adc	#L212+4
	tcs
	tya
	rtl
;	}
	.line	631
;	return NULL;
L10060:
	.line	632
	lda	#$0
	tax
	lda	#$0
	brl	L216
;}
	.line	633
	.endblock	633
L212	equ	4
L213	equ	5
	ends
	efunc
	.endfunc	633,5,4
	.line	633
;
;PFXSTRING k_fxstring_from_long(ULONG nLong)
;{
	.line	635
	.line	636
	code
	xdef	~~k_fxstring_from_long
	func
	.function	636
~~k_fxstring_from_long:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L217
	tcs
	phd
	tcd
nLong_0	set	4
	.block	636
;	PFXSTRING newString = NULL;
;
;	newString = k_fxstring_init(16);
newString_1	set	0
	.sym	newString,0,138,1,32,45
	.sym	nLong,4,18,6,32
	stz	<L218+newString_1
	stz	<L218+newString_1+2
	.line	639
	pea	#<$10
	jsl	~~k_fxstring_init
	sta	<L218+newString_1
	stx	<L218+newString_1+2
;	if(newString!=NULL)
	.line	640
;	{
	lda	<L218+newString_1
	ora	<L218+newString_1+2
	bne	L220
	brl	L10061
L220:
	.line	641
;		k_longtodec(nLong,newString->buffer);
	.line	642
	ldy	#$6
	lda	[<L218+newString_1],Y
	pha
	ldy	#$4
	lda	[<L218+newString_1],Y
	pha
	pei	<L217+nLong_0+2
	pei	<L217+nLong_0
	jsl	~~k_longtodec
;	}
	.line	643
;
;	return newString;
L10061:
	.line	645
	ldx	<L218+newString_1+2
	lda	<L218+newString_1
L221:
	tay
	lda	<L217+2
	sta	<L217+2+4
	lda	<L217+1
	sta	<L217+1+4
	pld
	tsc
	clc
	adc	#L217+4
	tcs
	tya
	rtl
;}
	.line	646
	.endblock	646
L217	equ	4
L218	equ	1
	ends
	efunc
	.endfunc	646,1,4
	.line	646
;
;
;LPCHAR k_string_append_integer(LPCHAR baseText,UINT integer)
;{
	.line	649
	.line	650
	code
	xdef	~~k_string_append_integer
	func
	.function	650
~~k_string_append_integer:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L222
	tcs
	phd
	tcd
baseText_0	set	4
integer_0	set	8
	.block	650
;	LPCHAR newString = NULL;
;	UCHAR buffer[16];
;
;
;	newString = k_mem_allocate_heap(strlen(baseText) + 16 + 1);
newString_1	set	0
buffer_1	set	4
	.sym	newString,0,142,1,32
	.sym	buffer,4,110,1,0,16
	.sym	baseText,4,142,6,32
	.sym	integer,8,16,6,16
	stz	<L223+newString_1
	stz	<L223+newString_1+2
	.line	655
	pei	<L222+baseText_0+2
	pei	<L222+baseText_0
	jsl	~~strlen
	sta	<R0
	clc
	lda	#$11
	adc	<R0
	pha
	jsl	~~k_mem_allocate_heap
	sta	<L223+newString_1
	stx	<L223+newString_1+2
;	newString[0] = 0;
	.line	656
	sep	#$20
	longa	off
	lda	#$0
	sta	[<L223+newString_1]
	rep	#$20
	longa	on
;	strcat(newString,baseText);
	.line	657
	pei	<L222+baseText_0+2
	pei	<L222+baseText_0
	pei	<L223+newString_1+2
	pei	<L223+newString_1
	jsl	~~strcat
;	strcat(newString,k_inttodec(integer,buffer));
	.line	658
	pea	#0
	clc
	tdc
	adc	#<L223+buffer_1
	pha
	pei	<L222+integer_0
	jsl	~~k_inttodec
	sta	<R0
	stx	<R0+2
	phx
	pha
	pei	<L223+newString_1+2
	pei	<L223+newString_1
	jsl	~~strcat
;
;	return newString;
	.line	660
	ldx	<L223+newString_1+2
	lda	<L223+newString_1
L225:
	tay
	lda	<L222+2
	sta	<L222+2+6
	lda	<L222+1
	sta	<L222+1+6
	pld
	tsc
	clc
	adc	#L222+6
	tcs
	tya
	rtl
;}
	.line	661
	.endblock	661
L222	equ	24
L223	equ	5
	ends
	efunc
	.endfunc	661,5,24
	.line	661
;
;
;LPCHAR k_string_replace(LPCSTR template, LPCSTR marker, LPCSTR replacement)
;{
	.line	664
	.line	665
	code
	xdef	~~k_string_replace
	func
	.function	665
~~k_string_replace:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L226
	tcs
	phd
	tcd
template_0	set	4
marker_0	set	8
replacement_0	set	12
	.block	665
;	LPCHAR buffer = NULL;
;	LPCHAR tc     = NULL;
;	LPCHAR p 	  = NULL;
;
;	UINT   mlen = 0;
;	UINT   rlen = 0;
;
;	k_debug_strings("k_string_replace:template:",(LPSTR)template);
buffer_1	set	0
tc_1	set	4
p_1	set	8
mlen_1	set	12
rlen_1	set	14
	.sym	buffer,0,142,1,32
	.sym	tc,4,142,1,32
	.sym	p,8,142,1,32
	.sym	mlen,12,16,1,16
	.sym	rlen,14,16,1,16
	.sym	template,4,142,6,32
	.sym	marker,8,142,6,32
	.sym	replacement,12,142,6,32
	stz	<L227+buffer_1
	stz	<L227+buffer_1+2
	stz	<L227+tc_1
	stz	<L227+tc_1+2
	stz	<L227+p_1
	stz	<L227+p_1+2
	stz	<L227+mlen_1
	stz	<L227+rlen_1
	.line	673
	pei	<L226+template_0+2
	pei	<L226+template_0
	pea	#^L154
	pea	#<L154
	jsl	~~k_debug_strings
;	k_debug_strings("k_string_replace:marker:",(LPSTR)marker);
	.line	674
	pei	<L226+marker_0+2
	pei	<L226+marker_0
	pea	#^L154+27
	pea	#<L154+27
	jsl	~~k_debug_strings
;	k_debug_strings("k_string_replace:replacement:",(LPSTR)replacement);
	.line	675
	pei	<L226+replacement_0+2
	pei	<L226+replacement_0
	pea	#^L154+52
	pea	#<L154+52
	jsl	~~k_debug_strings
;
;	if(template && marker && replacement)
	.line	677
;	{
	lda	<L226+template_0
	ora	<L226+template_0+2
	bne	L229
	brl	L10062
L229:
	lda	<L226+marker_0
	ora	<L226+marker_0+2
	bne	L230
	brl	L10062
L230:
	lda	<L226+replacement_0
	ora	<L226+replacement_0+2
	bne	L231
	brl	L10062
L231:
	.line	678
;		tc = k_string_copy_string(template);
	.line	679
	pei	<L226+template_0+2
	pei	<L226+template_0
	jsl	~~k_string_copy_string
	sta	<L227+tc_1
	stx	<L227+tc_1+2
;		if(tc)
	.line	680
;		{
	lda	<L227+tc_1
	ora	<L227+tc_1+2
	bne	L232
	brl	L10063
L232:
	.line	681
;			mlen = strlen(marker);
	.line	682
	pei	<L226+marker_0+2
	pei	<L226+marker_0
	jsl	~~strlen
	sta	<L227+mlen_1
;			rlen = strlen(replacement);
	.line	683
	pei	<L226+replacement_0+2
	pei	<L226+replacement_0
	jsl	~~strlen
	sta	<L227+rlen_1
;			if(mlen && rlen)
	.line	684
;			{
	lda	<L227+mlen_1
	bne	L233
	brl	L10064
L233:
	lda	<L227+rlen_1
	bne	L234
	brl	L10064
L234:
	.line	685
;				buffer = k_mem_allocate_heap(256);
	.line	686
	pea	#<$100
	jsl	~~k_mem_allocate_heap
	sta	<L227+buffer_1
	stx	<L227+buffer_1+2
;				if(buffer)
	.line	687
;				{
	lda	<L227+buffer_1
	ora	<L227+buffer_1+2
	bne	L235
	brl	L10065
L235:
	.line	688
;					memset(buffer,0,256);
	.line	689
	pea	#<$100
	pea	#<$0
	pei	<L227+buffer_1+2
	pei	<L227+buffer_1
	jsl	~~memset
;					p = strstr(tc,marker);
	.line	690
	pei	<L226+marker_0+2
	pei	<L226+marker_0
	pei	<L227+tc_1+2
	pei	<L227+tc_1
	jsl	~~strstr
	sta	<L227+p_1
	stx	<L227+p_1+2
;					while(p)
	.line	691
L10066:
	lda	<L227+p_1
	ora	<L227+p_1+2
	bne	L236
	brl	L10067
L236:
;					{
	.line	692
;						p[0] = 0;
	.line	693
	sep	#$20
	longa	off
	lda	#$0
	sta	[<L227+p_1]
	rep	#$20
	longa	on
;						strcat(buffer,tc);
	.line	694
	pei	<L227+tc_1+2
	pei	<L227+tc_1
	pei	<L227+buffer_1+2
	pei	<L227+buffer_1
	jsl	~~strcat
;						strcat(buffer,replacement);
	.line	695
	pei	<L226+replacement_0+2
	pei	<L226+replacement_0
	pei	<L227+buffer_1+2
	pei	<L227+buffer_1
	jsl	~~strcat
;						p+=mlen;
	.line	696
	lda	<L227+mlen_1
	sta	<R0
	stz	<R0+2
	clc
	lda	<L227+p_1
	adc	<R0
	sta	<L227+p_1
	lda	<L227+p_1+2
	adc	<R0+2
	sta	<L227+p_1+2
;						tc = p;
	.line	697
	lda	<L227+p_1
	sta	<L227+tc_1
	lda	<L227+p_1+2
	sta	<L227+tc_1+2
;						p = strstr(tc,marker);
	.line	698
	pei	<L226+marker_0+2
	pei	<L226+marker_0
	pei	<L227+tc_1+2
	pei	<L227+tc_1
	jsl	~~strstr
	sta	<L227+p_1
	stx	<L227+p_1+2
;
;						//k_debug_string(tc);
;						//k_debug_crlf();
;						//k_debug_string(buffer);
;						//k_debug_crlf();
;					}
	.line	704
	brl	L10066
L10067:
;					strcat(buffer,tc);
	.line	705
	pei	<L227+tc_1+2
	pei	<L227+tc_1
	pei	<L227+buffer_1+2
	pei	<L227+buffer_1
	jsl	~~strcat
;				}
	.line	706
;			}
L10065:
	.line	707
;			k_mem_deallocate_heap(tc);
L10064:
	.line	708
	pei	<L227+tc_1+2
	pei	<L227+tc_1
	jsl	~~k_mem_deallocate_heap
;		}
	.line	709
;	}
L10063:
	.line	710
;
;	k_debug_strings("k_string_replace:buffer:",buffer);
L10062:
	.line	712
	pei	<L227+buffer_1+2
	pei	<L227+buffer_1
	pea	#^L154+82
	pea	#<L154+82
	jsl	~~k_debug_strings
;
;	return buffer;
	.line	714
	ldx	<L227+buffer_1+2
	lda	<L227+buffer_1
L237:
	tay
	lda	<L226+2
	sta	<L226+2+12
	lda	<L226+1
	sta	<L226+1+12
	pld
	tsc
	clc
	adc	#L226+12
	tcs
	tya
	rtl
;}
	.line	715
	.endblock	715
L226	equ	20
L227	equ	5
	ends
	efunc
	.endfunc	715,5,20
	.line	715
	data
L154:
	db	$6B,$5F,$73,$74,$72,$69,$6E,$67,$5F,$72,$65,$70,$6C,$61,$63
	db	$65,$3A,$74,$65,$6D,$70,$6C,$61,$74,$65,$3A,$00,$6B,$5F,$73
	db	$74,$72,$69,$6E,$67,$5F,$72,$65,$70,$6C,$61,$63,$65,$3A,$6D
	db	$61,$72,$6B,$65,$72,$3A,$00,$6B,$5F,$73,$74,$72,$69,$6E,$67
	db	$5F,$72,$65,$70,$6C,$61,$63,$65,$3A,$72,$65,$70,$6C,$61,$63
	db	$65,$6D,$65,$6E,$74,$3A,$00,$6B,$5F,$73,$74,$72,$69,$6E,$67
	db	$5F,$72,$65,$70,$6C,$61,$63,$65,$3A,$62,$75,$66,$66,$65,$72
	db	$3A,$00
	ends
;
;LPCSTR k_get_date_string(LPCHAR buffer)
;{
	.line	717
	.line	718
	code
	xdef	~~k_get_date_string
	func
	.function	718
~~k_get_date_string:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L239
	tcs
	phd
	tcd
buffer_0	set	4
	.block	718
;	UCHAR tmp[16];
;
;	buffer[0] = 0;
tmp_1	set	0
	.sym	tmp,0,110,1,0,16
	.sym	buffer,4,142,6,32
	.line	721
	sep	#$20
	longa	off
	lda	#$0
	sta	[<L239+buffer_0]
	rep	#$20
	longa	on
;
;	strcat(buffer,k_strip_padding(k_inttodec(k_get_rtc_month(),tmp)));
	.line	723
	pea	#0
	clc
	tdc
	adc	#<L240+tmp_1
	pha
	jsl	~~k_get_rtc_month
	pha
	jsl	~~k_inttodec
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_strip_padding
	sta	<R1
	stx	<R1+2
	phx
	pha
	pei	<L239+buffer_0+2
	pei	<L239+buffer_0
	jsl	~~strcat
;	strcat(buffer,"/");
	.line	724
	pea	#^L238
	pea	#<L238
	pei	<L239+buffer_0+2
	pei	<L239+buffer_0
	jsl	~~strcat
;	strcat(buffer,k_strip_padding(k_inttodec(k_get_rtc_day(),tmp)));
	.line	725
	pea	#0
	clc
	tdc
	adc	#<L240+tmp_1
	pha
	jsl	~~k_get_rtc_day
	pha
	jsl	~~k_inttodec
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_strip_padding
	sta	<R1
	stx	<R1+2
	phx
	pha
	pei	<L239+buffer_0+2
	pei	<L239+buffer_0
	jsl	~~strcat
;	strcat(buffer,"/");
	.line	726
	pea	#^L238+2
	pea	#<L238+2
	pei	<L239+buffer_0+2
	pei	<L239+buffer_0
	jsl	~~strcat
;	strcat(buffer,k_strip_padding(k_inttodec(k_get_rtc_century(),tmp)));
	.line	727
	pea	#0
	clc
	tdc
	adc	#<L240+tmp_1
	pha
	jsl	~~k_get_rtc_century
	pha
	jsl	~~k_inttodec
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_strip_padding
	sta	<R1
	stx	<R1+2
	phx
	pha
	pei	<L239+buffer_0+2
	pei	<L239+buffer_0
	jsl	~~strcat
;	strcat(buffer,k_strip_padding(k_inttodec(k_get_rtc_year(),tmp)));
	.line	728
	pea	#0
	clc
	tdc
	adc	#<L240+tmp_1
	pha
	jsl	~~k_get_rtc_year
	pha
	jsl	~~k_inttodec
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_strip_padding
	sta	<R1
	stx	<R1+2
	phx
	pha
	pei	<L239+buffer_0+2
	pei	<L239+buffer_0
	jsl	~~strcat
;
;
;	return buffer;
	.line	731
	ldx	<L239+buffer_0+2
	lda	<L239+buffer_0
L242:
	tay
	lda	<L239+2
	sta	<L239+2+4
	lda	<L239+1
	sta	<L239+1+4
	pld
	tsc
	clc
	adc	#L239+4
	tcs
	tya
	rtl
;}
	.line	732
	.endblock	732
L239	equ	24
L240	equ	9
	ends
	efunc
	.endfunc	732,9,24
	.line	732
	data
L238:
	db	$2F,$00,$2F,$00
	ends
;
;LPCSTR k_get_localtime_string(LPCHAR buffer)
;{
	.line	734
	.line	735
	code
	xdef	~~k_get_localtime_string
	func
	.function	735
~~k_get_localtime_string:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L244
	tcs
	phd
	tcd
buffer_0	set	4
	.block	735
;	UCHAR tmp[16];
;	UCHAR digits[16];
;
;	buffer[0] = 0;
tmp_1	set	0
digits_1	set	16
	.sym	tmp,0,110,1,0,16
	.sym	digits,16,110,1,0,16
	.sym	buffer,4,142,6,32
	.line	739
	sep	#$20
	longa	off
	lda	#$0
	sta	[<L244+buffer_0]
	rep	#$20
	longa	on
;
;
;	k_pad_string(digits,k_strip_padding(k_inttodec(k_get_rtc_hour(),tmp)),'0',2);
	.line	742
	pea	#<$2
	pea	#<$30
	pea	#0
	clc
	tdc
	adc	#<L245+tmp_1
	pha
	jsl	~~k_get_rtc_hour
	pha
	jsl	~~k_inttodec
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_strip_padding
	sta	<R1
	stx	<R1+2
	phx
	pha
	pea	#0
	clc
	tdc
	adc	#<L245+digits_1
	pha
	jsl	~~k_pad_string
;	strcat(buffer, digits );
	.line	743
	pea	#0
	clc
	tdc
	adc	#<L245+digits_1
	pha
	pei	<L244+buffer_0+2
	pei	<L244+buffer_0
	jsl	~~strcat
;
;	strcat(buffer,":");
	.line	745
	pea	#^L243
	pea	#<L243
	pei	<L244+buffer_0+2
	pei	<L244+buffer_0
	jsl	~~strcat
;
;	k_pad_string(digits,k_strip_padding(k_inttodec(k_get_rtc_minute(),tmp)),'0',2);
	.line	747
	pea	#<$2
	pea	#<$30
	pea	#0
	clc
	tdc
	adc	#<L245+tmp_1
	pha
	jsl	~~k_get_rtc_minute
	pha
	jsl	~~k_inttodec
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_strip_padding
	sta	<R1
	stx	<R1+2
	phx
	pha
	pea	#0
	clc
	tdc
	adc	#<L245+digits_1
	pha
	jsl	~~k_pad_string
;	strcat(buffer, digits );
	.line	748
	pea	#0
	clc
	tdc
	adc	#<L245+digits_1
	pha
	pei	<L244+buffer_0+2
	pei	<L244+buffer_0
	jsl	~~strcat
;
;	strcat(buffer,":");
	.line	750
	pea	#^L243+2
	pea	#<L243+2
	pei	<L244+buffer_0+2
	pei	<L244+buffer_0
	jsl	~~strcat
;
;	k_pad_string(digits,k_strip_padding(k_inttodec(k_get_rtc_second(),tmp)),'0',2);
	.line	752
	pea	#<$2
	pea	#<$30
	pea	#0
	clc
	tdc
	adc	#<L245+tmp_1
	pha
	jsl	~~k_get_rtc_second
	pha
	jsl	~~k_inttodec
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_strip_padding
	sta	<R1
	stx	<R1+2
	phx
	pha
	pea	#0
	clc
	tdc
	adc	#<L245+digits_1
	pha
	jsl	~~k_pad_string
;	strcat(buffer,digits);
	.line	753
	pea	#0
	clc
	tdc
	adc	#<L245+digits_1
	pha
	pei	<L244+buffer_0+2
	pei	<L244+buffer_0
	jsl	~~strcat
;
;
;	return buffer;
	.line	756
	ldx	<L244+buffer_0+2
	lda	<L244+buffer_0
L247:
	tay
	lda	<L244+2
	sta	<L244+2+4
	lda	<L244+1
	sta	<L244+1+4
	pld
	tsc
	clc
	adc	#L244+4
	tcs
	tya
	rtl
;}
	.line	757
	.endblock	757
L244	equ	40
L245	equ	9
	ends
	efunc
	.endfunc	757,9,40
	.line	757
	data
L243:
	db	$3A,$00,$3A,$00
	ends
;
;LPSTR k_wcstombs(LPWCSTR wcsBuffer,LPSTR mbsBuffer,UINT charCount)
;{
	.line	759
	.line	760
	code
	xdef	~~k_wcstombs
	func
	.function	760
~~k_wcstombs:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L249
	tcs
	phd
	tcd
wcsBuffer_0	set	4
mbsBuffer_0	set	8
charCount_0	set	12
	.block	760
;	INT c = 0;
;	INT mc = 0;
;
;	memset(mbsBuffer,0,charCount+1);
c_1	set	0
mc_1	set	2
	.sym	c,0,5,1,16
	.sym	mc,2,5,1,16
	.sym	wcsBuffer,4,142,6,32
	.sym	mbsBuffer,8,142,6,32
	.sym	charCount,12,16,6,16
	stz	<L250+c_1
	stz	<L250+mc_1
	.line	764
	lda	<L249+charCount_0
	ina
	pha
	pea	#<$0
	pei	<L249+mbsBuffer_0+2
	pei	<L249+mbsBuffer_0
	jsl	~~memset
;	for(c=0;c<(2*charCount);c+=2)
	.line	765
	stz	<L250+c_1
	brl	L10071
L10070:
;	{
	.line	766
;		mbsBuffer[mc++] = wcsBuffer[c];
	.line	767
	sep	#$20
	longa	off
	ldy	<L250+c_1
	lda	[<L249+wcsBuffer_0],Y
	ldy	<L250+mc_1
	sta	[<L249+mbsBuffer_0],Y
	rep	#$20
	longa	on
	inc	<L250+mc_1
;	}
	.line	768
L10068:
	inc	<L250+c_1
	inc	<L250+c_1
L10071:
	lda	<L249+charCount_0
	asl	A
	sta	<R0
	lda	<L250+c_1
	cmp	<R0
	bcs	L252
	brl	L10070
L252:
L10069:
;
;	return mbsBuffer;
	.line	770
	ldx	<L249+mbsBuffer_0+2
	lda	<L249+mbsBuffer_0
L253:
	tay
	lda	<L249+2
	sta	<L249+2+10
	lda	<L249+1
	sta	<L249+1+10
	pld
	tsc
	clc
	adc	#L249+10
	tcs
	tya
	rtl
;}
	.line	771
	.endblock	771
L249	equ	8
L250	equ	5
	ends
	efunc
	.endfunc	771,5,8
	.line	771
;
	.line	771
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxstring.c",759
	xref	~~k_mem_deallocate_heap
	xref	~~k_mem_allocate_heap
	xref	~~k_get_rtc_century
	xref	~~k_get_rtc_year
	xref	~~k_get_rtc_day
	xref	~~k_get_rtc_month
	xref	~~k_get_rtc_second
	xref	~~k_get_rtc_minute
	xref	~~k_get_rtc_hour
	xref	~~k_debug_strings
	xref	~~k_debug_message
	xref	~~k_debug_integer
	xref	~~k_debug_char
	xref	~~toupper
	xref	~~tolower
	xref	~~strstr
	xref	~~strlen
	xref	~~strcpy
	xref	~~strcmp
	xref	~~strcat
	xref	~~memset
	xref	~~memcpy
	.sym	~~bytetodec,~~bytetodec,110,3,0,10
	.sym	~~bytetohex,~~bytetohex,110,3,0,16
	.sym	~~k_mem_deallocate_heap,~~k_mem_deallocate_heap,65,18,0
	.sym	~~k_mem_allocate_heap,~~k_mem_allocate_heap,1089,18,32
	.sym	MemoryCallback,0,641,14,32
	.sym	PFXMEMORYMAP,0,138,14,32,63
	.sym	FXMEMORYMAP,0,10,14,2072,63
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
	.sym	DEVICEDRIVER_COMMAND,0,656,14,32
	.sym	DEVICEDRIVER_UNLOAD,0,654,14,32
	.sym	DEVICEDRIVER_WRITE,0,656,14,32
	.sym	DEVICEDRIVER_READ,0,656,14,32
	.sym	DEVICEDRIVER_LOAD,0,654,14,32
	.sym	PFX_BLOCK_DEVICE_DRIVER,0,138,14,32,50
	.sym	FX_BLOCK_DEVICE_DRIVER,0,10,14,1448,50
	.sym	PFX_DEVICE_DRIVER,0,138,14,32,49
	.sym	FX_DEVICE_DRIVER,0,10,14,1416,49
	.sym	~~k_get_rtc_century,~~k_get_rtc_century,80,18,0
	.sym	~~k_get_rtc_year,~~k_get_rtc_year,80,18,0
	.sym	~~k_get_rtc_day,~~k_get_rtc_day,80,18,0
	.sym	~~k_get_rtc_month,~~k_get_rtc_month,80,18,0
	.sym	~~k_get_rtc_second,~~k_get_rtc_second,80,18,0
	.sym	~~k_get_rtc_minute,~~k_get_rtc_minute,80,18,0
	.sym	~~k_get_rtc_hour,~~k_get_rtc_hour,80,18,0
	.sym	~~k_debug_strings,~~k_debug_strings,65,18,0
	.sym	~~k_debug_message,~~k_debug_message,65,18,0
	.sym	~~k_debug_integer,~~k_debug_integer,65,18,0
	.sym	~~k_debug_char,~~k_debug_char,65,18,0
	.sym	PDEBUGBYTEBITS,0,138,14,32,48
	.sym	DEBUGBYTEBITS,0,10,14,8,48
	.sym	PFXENVIRONMENT,0,138,14,32,47
	.sym	FXENVIRONMENT,0,10,14,96,47
	.sym	PFXZERPOPAGE,0,138,14,32,46
	.sym	FXZERPOPAGE,0,10,14,448,46
	.sym	KERNELTRAPCALL,0,641,14,32
	.sym	FOREACHNODEUNTIL,0,654,14,32
	.sym	FOREACHNODE,0,641,14,32
	.sym	~~toupper,~~toupper,69,18,0
	.sym	~~tolower,~~tolower,69,18,0
	.sym	~~k_get_localtime_string,~~k_get_localtime_string,1102,2,32
	.sym	~~k_get_date_string,~~k_get_date_string,1102,2,32
	.sym	~~k_to_lowercase,~~k_to_lowercase,1102,2,32
	.sym	~~k_to_uppercase,~~k_to_uppercase,1102,2,32
	.sym	~~k_string_copy_string,~~k_string_copy_string,1102,2,32
	.sym	~~k_string_toString,~~k_string_toString,1102,2,32
	.sym	~~k_string_indexOf,~~k_string_indexOf,69,2,0
	.sym	~~k_string_replace,~~k_string_replace,1102,2,32
	.sym	~~k_string_trim,~~k_string_trim,1102,2,32
	.sym	~~k_string_ltrim,~~k_string_ltrim,1102,2,32
	.sym	~~k_string_rtrim,~~k_string_rtrim,1102,2,32
	.sym	~~k_strcpy,~~k_strcpy,1102,2,32
	.sym	~~k_strcat,~~k_strcat,1102,2,32
	.sym	~~strlower,~~strlower,1102,2,32
	.sym	~~k_reverse,~~k_reverse,65,2,0
	.sym	~~k_pad_string,~~k_pad_string,1102,2,32
	.sym	~~k_itoa,~~k_itoa,1102,2,32
	.sym	~~k_string_append_integer,~~k_string_append_integer,1102,2,32
	.sym	~~k_longtodec,~~k_longtodec,1102,2,32
	.sym	~~k_inttodec,~~k_inttodec,1102,2,32
	.sym	~~k_bytetodec,~~k_bytetodec,1102,2,32
	.sym	~~k_bytetohex,~~k_bytetohex,1102,2,32
	.sym	~~k_replace_padding,~~k_replace_padding,1102,2,32
	.sym	~~k_strip_padding,~~k_strip_padding,1102,2,32
	.sym	~~k_wcstombs,~~k_wcstombs,1102,2,32
	.sym	~~k_fxstring_equals,~~k_fxstring_equals,78,2,0
	.sym	~~k_fxstring_from_long,~~k_fxstring_from_long,1098,2,32,45
	.sym	~~k_fxstring_copy_string,~~k_fxstring_copy_string,1102,2,32
	.sym	~~k_fxstring_at,~~k_fxstring_at,78,2,0
	.sym	~~k_fxstring_as,~~k_fxstring_as,1102,2,32
	.sym	~~k_fxstring_fxadd,~~k_fxstring_fxadd,80,2,0
	.sym	~~k_fxstring_add,~~k_fxstring_add,1102,2,32
	.sym	~~k_fxstring_removechar,~~k_fxstring_removechar,78,2,0
	.sym	~~k_fxstring_addchar,~~k_fxstring_addchar,1102,2,32
	.sym	~~k_fxstring_position,~~k_fxstring_position,80,2,0
	.sym	~~k_fxstring_size,~~k_fxstring_size,80,2,0
	.sym	~~k_fxstring_length,~~k_fxstring_length,80,2,0
	.sym	~~k_fxstring_free,~~k_fxstring_free,65,2,0
	.sym	~~k_fxstring_reinit,~~k_fxstring_reinit,1098,2,32,45
	.sym	~~k_fxstring_new,~~k_fxstring_new,1098,2,32,45
	.sym	~~k_fxstring_init,~~k_fxstring_init,1098,2,32,45
	.sym	PFXSTRING,0,138,14,32,45
	.sym	FXSTRING,0,10,14,64,45
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
	.sym	~~strupr,~~strupr,1102,2,32
	.sym	~~strstr,~~strstr,1102,18,32
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

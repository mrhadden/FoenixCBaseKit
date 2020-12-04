;:ts=8
R0	equ	1
R1	equ	5
R2	equ	9
R3	equ	13
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxconsole.c",0
;
;#include "fxconsole.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxconsole.h",0
	.file	"G:\devtools\WDCTools\wdc\Tools\include\string.h",0
	.line	134
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxconsole.h",5
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxconsole.h",6
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxconsole.h",7
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
	.stag	_fx_string,64,45
	.member	size,0,16,8,16
	.member	pos,16,5,8,16
	.member	buffer,32,142,8,32
	.eos
	.line	71
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxconsole.h",15
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxeventmanager.h",0
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
	.line	171
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos.h",20
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxstring.h",0
	.line	71
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos.h",21
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxnode.h",0
	.line	61
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos.h",22
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxconsole.c",2
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxconsole.c",3
;#include "fxnode.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxnode.h",0
	.line	61
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxconsole.c",4
;#include "fxmemorymanager.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxmemorymanager.h",0
	.line	39
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxconsole.c",5
;#include "fxgui.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxgui.h",0
	.line	264
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxconsole.c",6
;
;static int 	_k_window_index = 0;
	data
~~_k_window_index:
	dw	$0
	ends
;static WINDOW _k_window_list[10];
;
;static LPCHAR console_commands[] = {"cls","vol","dir","tsd","desktop","fcolor","bcolor","init","newdir","tasks","front","back",
	data
~~console_commands:
	dl	L1+0
	dl	L1+4
	dl	L1+8
	dl	L1+12
	dl	L1+16
	dl	L1+24
	dl	L1+31
	dl	L1+38
	dl	L1+43
	dl	L1+50
	dl	L1+56
	dl	L1+62
;							 	 	"chdir","display","window","send","start",
	dl	L1+67
	dl	L1+73
	dl	L1+81
	dl	L1+88
	dl	L1+93
;									"time","exit","pause","resume","lineup",
	dl	L1+99
	dl	L1+104
	dl	L1+109
	dl	L1+115
	dl	L1+122
;									NULL};
	dl	$0
	ends
	data
L1:
	db	$63,$6C,$73,$00,$76,$6F,$6C,$00,$64,$69,$72,$00,$74,$73,$64
	db	$00,$64,$65,$73,$6B,$74,$6F,$70,$00,$66,$63,$6F,$6C,$6F,$72
	db	$00,$62,$63,$6F,$6C,$6F,$72,$00,$69,$6E,$69,$74,$00,$6E,$65
	db	$77,$64,$69,$72,$00,$74,$61,$73,$6B,$73,$00,$66,$72,$6F,$6E
	db	$74,$00,$62,$61,$63,$6B,$00,$63,$68,$64,$69,$72,$00,$64,$69
	db	$73,$70,$6C,$61,$79,$00,$77,$69,$6E,$64,$6F,$77,$00,$73,$65
	db	$6E,$64,$00,$73,$74,$61,$72,$74,$00,$74,$69,$6D,$65,$00,$65
	db	$78,$69,$74,$00,$70,$61,$75,$73,$65,$00,$72,$65,$73,$75,$6D
	db	$65,$00,$6C,$69,$6E,$65,$75,$70,$00
	ends
;static FXCommandHandler console_command_proc[] = {cmd_CLEAR,cmd_VOL,cmd_DIR,cmd_TESTSD,cmd_WORKBENCH,
	data
~~console_command_proc:
	dl	~~cmd_CLEAR
	dl	~~cmd_VOL
	dl	~~cmd_DIR
	dl	~~cmd_TESTSD
	dl	~~cmd_WORKBENCH
;		                                          cmd_FCOLOR,cmd_BCOLOR,cmd_INIT,cmd_NEWDIR,cmd_TASKS,
	dl	~~cmd_FCOLOR
	dl	~~cmd_BCOLOR
	dl	~~cmd_INIT
	dl	~~cmd_NEWDIR
	dl	~~cmd_TASKS
;												  cmd_FRONT,cmd_BACK,cmd_CHRDIR,cmd_DISPLAY,
	dl	~~cmd_FRONT
	dl	~~cmd_BACK
	dl	~~cmd_CHRDIR
	dl	~~cmd_DISPLAY
;												  cmd_Window,
	dl	~~cmd_Window
;												  cmd_SEND,
	dl	~~cmd_SEND
;												  cmd_START,
	dl	~~cmd_START
;												  cmd_TIME,
	dl	~~cmd_TIME
;												  cmd_EXIT,cmd_PAUSE,cmd_RESUME,
	dl	~~cmd_EXIT
	dl	~~cmd_PAUSE
	dl	~~cmd_RESUME
;												  cmd_LINEUP,
	dl	~~cmd_LINEUP
;												  NULL};
	dl	$0
	ends
;
;static char consolespinner[] = {'|','/','-','\\'};
	data
~~consolespinner:
	db	$7C,$2F,$2D,$5C
	ends
;
;static SPINNERCTX consolespinctx;
;
;static UINT cursorFlashInterval  = 0;
	data
~~cursorFlashInterval:
	dw	$0
	ends
;static UINT cursorCurrentColor   = 15;
	data
~~cursorCurrentColor:
	dw	$F
	ends
;
;static LPCHAR tokentypeNames[] = { "WORD",
	data
~~tokentypeNames:
	dl	L2+0
;"NUMBER","STRING","LABEL","LINE","EQUALS",
	dl	L2+5
	dl	L2+12
	dl	L2+19
	dl	L2+25
	dl	L2+30
;"OPERATOR","LEFT_PAREN", "RIGHT_PAREN", "EOF", "COMMA", "LEFT_BLOCK",
	dl	L2+37
	dl	L2+46
	dl	L2+57
	dl	L2+69
	dl	L2+73
	dl	L2+79
;"RIGHT_BLOCK", "BANG", "NOTEQUAL", "ANNOTATION",
	dl	L2+90
	dl	L2+102
	dl	L2+107
	dl	L2+116
;"GTE", "LTE", "GT", "LT", "PERIOD", "POINTER", "NOOP",
	dl	L2+127
	dl	L2+131
	dl	L2+135
	dl	L2+138
	dl	L2+141
	dl	L2+148
	dl	L2+156
;"START_BLOCK", "END_BLOCK","AND","OR","VARIADIC", "DOLLAR"};
	dl	L2+161
	dl	L2+173
	dl	L2+183
	dl	L2+187
	dl	L2+190
	dl	L2+199
	ends
	data
L2:
	db	$57,$4F,$52,$44,$00,$4E,$55,$4D,$42,$45,$52,$00,$53,$54,$52
	db	$49,$4E,$47,$00,$4C,$41,$42,$45,$4C,$00,$4C,$49,$4E,$45,$00
	db	$45,$51,$55,$41,$4C,$53,$00,$4F,$50,$45,$52,$41,$54,$4F,$52
	db	$00,$4C,$45,$46,$54,$5F,$50,$41,$52,$45,$4E,$00,$52,$49,$47
	db	$48,$54,$5F,$50,$41,$52,$45,$4E,$00,$45,$4F,$46,$00,$43,$4F
	db	$4D,$4D,$41,$00,$4C,$45,$46,$54,$5F,$42,$4C,$4F,$43,$4B,$00
	db	$52,$49,$47,$48,$54,$5F,$42,$4C,$4F,$43,$4B,$00,$42,$41,$4E
	db	$47,$00,$4E,$4F,$54,$45,$51,$55,$41,$4C,$00,$41,$4E,$4E,$4F
	db	$54,$41,$54,$49,$4F,$4E,$00,$47,$54,$45,$00,$4C,$54,$45,$00
	db	$47,$54,$00,$4C,$54,$00,$50,$45,$52,$49,$4F,$44,$00,$50,$4F
	db	$49,$4E,$54,$45,$52,$00,$4E,$4F,$4F,$50,$00,$53,$54,$41,$52
	db	$54,$5F,$42,$4C,$4F,$43,$4B,$00,$45,$4E,$44,$5F,$42,$4C,$4F
	db	$43,$4B,$00,$41,$4E,$44,$00,$4F,$52,$00,$56,$41,$52,$49,$41
	db	$44,$49,$43,$00,$44,$4F,$4C,$4C,$41,$52,$00
	ends
;
;static consoleBuffer[56][72];
;static consoleBufferTemp[56][72];
;//#pragma section CODE=CONSOLE,offset $07:0000
;
;VOID k_initialize_text(VOID)
;{
	.line	44
	.line	45
	code
	xdef	~~k_initialize_text
	func
	.function	45
~~k_initialize_text:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L4
	tcs
	phd
	tcd
	.block	45
;	k_debug_string("k_initialize_text\r\n");
	.line	46
	pea	#^L3
	pea	#<L3
	jsl	~~k_debug_string
;	*((int FAR *)COLS_VISIBLE)  =  72;
	.line	47
	lda	#$48
	sta	>15
;	*((int FAR *)LINES_VISIBLE) =  56;
	.line	48
	lda	#$38
	sta	>19
;	*((int FAR *)COLS_PER_LINE) = 128;
	.line	49
	lda	#$80
	sta	>17
;	*((int FAR *)LINES_MAX) 	=  64;
	.line	50
	lda	#$40
	sta	>21
;}
	.line	51
L7:
	pld
	tsc
	clc
	adc	#L4
	tcs
	rtl
	.endblock	51
L4	equ	0
L5	equ	1
	ends
	efunc
	.endfunc	51,1,0
	.line	51
	data
L3:
	db	$6B,$5F,$69,$6E,$69,$74,$69,$61,$6C,$69,$7A,$65,$5F,$74,$65
	db	$78,$74,$0D,$0A,$00
	ends
;
;void k_init_spinner(PSPINNERCTX ctx)
;{
	.line	53
	.line	54
	code
	xdef	~~k_init_spinner
	func
	.function	54
~~k_init_spinner:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L9
	tcs
	phd
	tcd
ctx_0	set	4
	.block	54
;	ctx->spinner = consolespinner;
	.sym	ctx,4,138,6,32,60
	.line	55
	lda	#<~~consolespinner
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	lda	<R0
	ldy	#$2
	sta	[<L9+ctx_0],Y
	lda	<R0+2
	ldy	#$4
	sta	[<L9+ctx_0],Y
;	ctx->index = 0;
	.line	56
	lda	#$0
	sta	[<L9+ctx_0]
;}
	.line	57
L12:
	lda	<L9+2
	sta	<L9+2+4
	lda	<L9+1
	sta	<L9+1+4
	pld
	tsc
	clc
	adc	#L9+4
	tcs
	rtl
	.endblock	57
L9	equ	4
L10	equ	5
	ends
	efunc
	.endfunc	57,5,4
	.line	57
;
;void k_updatespinner(int pos,int line,PSPINNERCTX ctx)
;{
	.line	59
	.line	60
	code
	xdef	~~k_updatespinner
	func
	.function	60
~~k_updatespinner:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L13
	tcs
	phd
	tcd
pos_0	set	4
line_0	set	6
ctx_0	set	8
	.block	60
;	k_put_char(pos,line,consolespinner[ctx->index++],15,0);
	.sym	pos,4,5,6,16
	.sym	line,6,5,6,16
	.sym	ctx,8,138,6,32,60
	.line	61
	pea	#<$0
	pea	#<$f
	lda	[<L13+ctx_0]
	sta	<R0
	lda	[<L13+ctx_0]
	ina
	sta	[<L13+ctx_0]
	ldx	<R0
	lda	|~~consolespinner,X
	pha
	pei	<L13+line_0
	pei	<L13+pos_0
	jsl	~~k_put_char
;	if(ctx->index>3) ctx->index = 0;
	.line	62
	sec
	lda	#$3
	sbc	[<L13+ctx_0]
	bvs	L16
	eor	#$8000
L16:
	bpl	L17
	brl	L10001
L17:
	.line	62
	lda	#$0
	sta	[<L13+ctx_0]
;}
L10001:
	.line	63
L18:
	lda	<L13+2
	sta	<L13+2+8
	lda	<L13+1
	sta	<L13+1+8
	pld
	tsc
	clc
	adc	#L13+8
	tcs
	rtl
	.endblock	63
L13	equ	4
L14	equ	5
	ends
	efunc
	.endfunc	63,5,4
	.line	63
;
;int k_initialize_text_fonts(UINT flag)
;{
	.line	65
	.line	66
	code
	xdef	~~k_initialize_text_fonts
	func
	.function	66
~~k_initialize_text_fonts:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L19
	tcs
	phd
	tcd
flag_0	set	4
	.block	66
;
;	int i = 0;
;
;	LPSTR font = EGAFONT;
;	//LPSTR font = BM437_ATI_8X8_Font_Set;
;
;	for(i=0;i<0x800;i++)
i_1	set	0
font_1	set	2
	.sym	i,0,5,1,16
	.sym	font,2,142,1,32
	.sym	flag,4,16,6,16
	stz	<L20+i_1
	lda	#<~~EGAFONT
	sta	<L20+font_1
	lda	#^~~EGAFONT
	sta	<L20+font_1+2
	.line	73
	stz	<L20+i_1
L10004:
;	{
	.line	74
;		//FONT_MEMORY_BANK0[i] = FONT_4_BANK0[i];
;		FONT_MEMORY_BANK0[i] = font[i];
	.line	76
	lda	#$0
	sta	<R0
	lda	#$af
	sta	<R0+2
	sep	#$20
	longa	off
	ldy	<L20+i_1
	lda	[<L20+font_1],Y
	ldy	<L20+i_1
	sta	[<R0],Y
	rep	#$20
	longa	on
;		//FONT_MEMORY_BANK1[i] = BM437_ATI_8X8_Font_Set[i];
;		FONT_MEMORY_BANK1[i] = font[i];
	.line	78
	lda	#$8800
	sta	<R0
	lda	#$af
	sta	<R0+2
	sep	#$20
	longa	off
	ldy	<L20+i_1
	lda	[<L20+font_1],Y
	ldy	<L20+i_1
	sta	[<R0],Y
	rep	#$20
	longa	on
;	}
	.line	79
L10002:
	inc	<L20+i_1
	sec
	lda	<L20+i_1
	sbc	#<$800
	bvs	L22
	eor	#$8000
L22:
	bmi	L23
	brl	L10004
L23:
L10003:
;
;	return 0;
	.line	81
	lda	#$0
L24:
	tay
	lda	<L19+2
	sta	<L19+2+2
	lda	<L19+1
	sta	<L19+1+2
	pld
	tsc
	clc
	adc	#L19+2
	tcs
	tya
	rtl
;}
	.line	82
	.endblock	82
L19	equ	10
L20	equ	5
	ends
	efunc
	.endfunc	82,5,10
	.line	82
;
;void k_scroll_screen(PFXPROCESS p)
;{
	.line	84
	.line	85
	code
	xdef	~~k_scroll_screen
	func
	.function	85
~~k_scroll_screen:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L25
	tcs
	phd
	tcd
p_0	set	4
	.block	85
;	int i = 0;
;	int j = 0;
;
;	for(i=0;i<(p->consoleCtl->maxCols - 1);i++)
i_1	set	0
j_1	set	2
	.sym	i,0,5,1,16
	.sym	j,2,5,1,16
	.sym	p,4,138,6,32,20
	stz	<L26+i_1
	stz	<L26+j_1
	.line	89
	stz	<L26+i_1
	brl	L10008
L10007:
;	{
	.line	90
;		for(j=0;j<p->consoleCtl->maxRows;j++)
	.line	91
	stz	<L26+j_1
	brl	L10012
L10011:
;		{
	.line	92
;			consoleBuffer[i][j] = consoleBuffer[i+1][j];
	.line	93
	lda	<L26+j_1
	asl	A
	sta	<R0
	lda	<L26+i_1
	ldx	#<$90
	xref	~~~mul
	jsl	~~~mul
	sta	<R1
	clc
	lda	<R1
	adc	<R0
	sta	<R2
	lda	<L26+j_1
	asl	A
	sta	<R0
	lda	<L26+i_1
	ldx	#<$90
	xref	~~~mul
	jsl	~~~mul
	sta	<R1
	clc
	lda	<R1
	adc	<R0
	sta	<R3
	ldx	<R3
	lda	|~~consoleBuffer+144,X
	ldx	<R2
	sta	|~~consoleBuffer,X
;		}
	.line	94
L10009:
	inc	<L26+j_1
L10012:
	ldy	#$54
	lda	[<L25+p_0],Y
	sta	<R0
	ldy	#$56
	lda	[<L25+p_0],Y
	sta	<R0+2
	sec
	lda	<L26+j_1
	ldy	#$2
	sbc	[<R0],Y
	bvs	L28
	eor	#$8000
L28:
	bmi	L29
	brl	L10011
L29:
L10010:
;	}
	.line	95
L10005:
	inc	<L26+i_1
L10008:
	ldy	#$54
	lda	[<L25+p_0],Y
	sta	<R0
	ldy	#$56
	lda	[<L25+p_0],Y
	sta	<R0+2
	clc
	lda	#$ffff
	adc	[<R0]
	sta	<R1
	sec
	lda	<L26+i_1
	sbc	<R1
	bvs	L30
	eor	#$8000
L30:
	bmi	L31
	brl	L10007
L31:
L10006:
;
;	for(i=0;i<p->consoleCtl->maxCols;i++)
	.line	97
	stz	<L26+i_1
	brl	L10016
L10015:
;	{
	.line	98
;		for(j=0;j<p->consoleCtl->maxRows;j++)
	.line	99
	stz	<L26+j_1
	brl	L10020
L10019:
;		{
	.line	100
;			k_put_char(j,i,consoleBuffer[i][j],15,0);
	.line	101
	pea	#<$0
	pea	#<$f
	lda	<L26+j_1
	asl	A
	sta	<R0
	lda	<L26+i_1
	ldx	#<$90
	xref	~~~mul
	jsl	~~~mul
	sta	<R1
	clc
	lda	<R1
	adc	<R0
	sta	<R2
	ldx	<R2
	lda	|~~consoleBuffer,X
	pha
	pei	<L26+i_1
	pei	<L26+j_1
	jsl	~~k_put_char
;		}
	.line	102
L10017:
	inc	<L26+j_1
L10020:
	ldy	#$54
	lda	[<L25+p_0],Y
	sta	<R0
	ldy	#$56
	lda	[<L25+p_0],Y
	sta	<R0+2
	sec
	lda	<L26+j_1
	ldy	#$2
	sbc	[<R0],Y
	bvs	L32
	eor	#$8000
L32:
	bmi	L33
	brl	L10019
L33:
L10018:
;	}
	.line	103
L10013:
	inc	<L26+i_1
L10016:
	ldy	#$54
	lda	[<L25+p_0],Y
	sta	<R0
	ldy	#$56
	lda	[<L25+p_0],Y
	sta	<R0+2
	sec
	lda	<L26+i_1
	sbc	[<R0]
	bvs	L34
	eor	#$8000
L34:
	bmi	L35
	brl	L10015
L35:
L10014:
;
;	p->consoleCtl->curX = 0;
	.line	105
	ldy	#$54
	lda	[<L25+p_0],Y
	sta	<R0
	ldy	#$56
	lda	[<L25+p_0],Y
	sta	<R0+2
	lda	#$0
	ldy	#$4
	sta	[<R0],Y
;	p->consoleCtl->curY--;
	.line	106
	ldy	#$54
	lda	[<L25+p_0],Y
	sta	<R0
	ldy	#$56
	lda	[<L25+p_0],Y
	sta	<R0+2
	clc
	lda	#$ffff
	ldy	#$6
	adc	[<R0],Y
	ldy	#$6
	sta	[<R0],Y
;}
	.line	107
L36:
	lda	<L25+2
	sta	<L25+2+4
	lda	<L25+1
	sta	<L25+1+4
	pld
	tsc
	clc
	adc	#L25+4
	tcs
	rtl
	.endblock	107
L25	equ	20
L26	equ	17
	ends
	efunc
	.endfunc	107,17,20
	.line	107
;
;int k_get_cols_visible(void)
;{
	.line	109
	.line	110
	code
	xdef	~~k_get_cols_visible
	func
	.function	110
~~k_get_cols_visible:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L37
	tcs
	phd
	tcd
	.block	110
;	//return *((int*)(&((COLS_VISIBLE)[0]))); //2 Bytes Columns visible per screen line. A virtual line can be longer than displayed, up to COLS_PER_LINE long. Default  80
;	return *((int FAR *)COLS_VISIBLE);
	.line	112
	lda	>15
L40:
	tay
	pld
	tsc
	clc
	adc	#L37
	tcs
	tya
	rtl
;}
	.line	113
	.endblock	113
L37	equ	0
L38	equ	1
	ends
	efunc
	.endfunc	113,1,0
	.line	113
;
;int k_get_cols_per_line(void)
;{
	.line	115
	.line	116
	code
	xdef	~~k_get_cols_per_line
	func
	.function	116
~~k_get_cols_per_line:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L41
	tcs
	phd
	tcd
	.block	116
;	return *((int*)COLS_PER_LINE); //2 Bytes Columns visible per screen line. A virtual line can be longer than displayed, up to COLS_PER_LINE long. Default  80
	.line	117
	lda	>17
L44:
	tay
	pld
	tsc
	clc
	adc	#L41
	tcs
	tya
	rtl
;}
	.line	118
	.endblock	118
L41	equ	0
L42	equ	1
	ends
	efunc
	.endfunc	118,1,0
	.line	118
;
;int k_get_lines_visible(void)
;{
	.line	120
	.line	121
	code
	xdef	~~k_get_lines_visible
	func
	.function	121
~~k_get_lines_visible:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L45
	tcs
	phd
	tcd
	.block	121
;	return *((int*)LINES_VISIBLE); //2 Bytes Columns visible per screen line. A virtual line can be longer than displayed, up to COLS_PER_LINE long. Default  80
	.line	122
	lda	>19
L48:
	tay
	pld
	tsc
	clc
	adc	#L45
	tcs
	tya
	rtl
;}
	.line	123
	.endblock	123
L45	equ	0
L46	equ	1
	ends
	efunc
	.endfunc	123,1,0
	.line	123
;
;int k_get_lines_max(void)
;{
	.line	125
	.line	126
	code
	xdef	~~k_get_lines_max
	func
	.function	126
~~k_get_lines_max:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L49
	tcs
	phd
	tcd
	.block	126
;	return *((int*)LINES_MAX); //2 Bytes Columns visible per screen line. A virtual line can be longer than displayed, up to COLS_PER_LINE long. Default  80
	.line	127
	lda	>21
L52:
	tay
	pld
	tsc
	clc
	adc	#L49
	tcs
	tya
	rtl
;}
	.line	128
	.endblock	128
L49	equ	0
L50	equ	1
	ends
	efunc
	.endfunc	128,1,0
	.line	128
;
;void k_enable_text_mode(void)
;{
	.line	130
	.line	131
	code
	xdef	~~k_enable_text_mode
	func
	.function	131
~~k_enable_text_mode:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L53
	tcs
	phd
	tcd
	.block	131
;	int i = 0;
;	int j = 0;
;
;	k_debug_string("k_enable_bitmap_mode RESET 1a...\r\n");
i_1	set	0
j_1	set	2
	.sym	i,0,5,1,16
	.sym	j,2,5,1,16
	stz	<L54+i_1
	stz	<L54+j_1
	.line	135
	pea	#^L8
	pea	#<L8
	jsl	~~k_debug_string
;
;	MASTER_CTRL_REG_H[0] = MSTR_CTRL_VIDEO_MODE0;
	.line	137
	sep	#$20
	longa	off
	lda	#$1
	sta	>11468801
	rep	#$20
	longa	on
;	MASTER_CTRL_REG_L[0] = MSTR_CTRL_TEXT_MODE_EN;
	.line	138
	sep	#$20
	longa	off
	lda	#$1
	sta	>11468800
	rep	#$20
	longa	on
;
;	for(i=3200;i>0;i--)
	.line	140
	lda	#$c80
	sta	<L54+i_1
L10023:
;	{
	.line	141
;		for(j=0;j<256;j++)
	.line	142
	stz	<L54+j_1
L10026:
;		{
	.line	143
;			asm NOP;
	.line	144
	asmstart
	NOP
	asmend
;		}
	.line	145
L10024:
	inc	<L54+j_1
	sec
	lda	<L54+j_1
	sbc	#<$100
	bvs	L56
	eor	#$8000
L56:
	bmi	L57
	brl	L10026
L57:
L10025:
;	}
	.line	146
L10021:
	dec	<L54+i_1
	sec
	lda	#$0
	sbc	<L54+i_1
	bvs	L58
	eor	#$8000
L58:
	bmi	L59
	brl	L10023
L59:
L10022:
;
;	k_debug_string("k_enable_bitmap_mode RESET 1b...\r\n");
	.line	148
	pea	#^L8+35
	pea	#<L8+35
	jsl	~~k_debug_string
;
;	MASTER_CTRL_REG_H[0] = MSTR_CTRL_VIDEO_MODE0;
	.line	150
	sep	#$20
	longa	off
	lda	#$1
	sta	>11468801
	rep	#$20
	longa	on
;	MASTER_CTRL_REG_L[0] = MSTR_CTRL_TEXT_MODE_EN;
	.line	151
	sep	#$20
	longa	off
	lda	#$1
	sta	>11468800
	rep	#$20
	longa	on
;
;	for(i=3200;i>0;i--)
	.line	153
	lda	#$c80
	sta	<L54+i_1
L10029:
;	{
	.line	154
;		for(j=0;j<256;j++)
	.line	155
	stz	<L54+j_1
L10032:
;		{
	.line	156
;			asm NOP;
	.line	157
	asmstart
	NOP
	asmend
;		}
	.line	158
L10030:
	inc	<L54+j_1
	sec
	lda	<L54+j_1
	sbc	#<$100
	bvs	L60
	eor	#$8000
L60:
	bmi	L61
	brl	L10032
L61:
L10031:
;	}
	.line	159
L10027:
	dec	<L54+i_1
	sec
	lda	#$0
	sbc	<L54+i_1
	bvs	L62
	eor	#$8000
L62:
	bmi	L63
	brl	L10029
L63:
L10028:
;
;	k_debug_string("k_enable_bitmap_mode RESET 1c...\r\n");
	.line	161
	pea	#^L8+70
	pea	#<L8+70
	jsl	~~k_debug_string
;
;	MASTER_CTRL_REG_H[0] = MSTR_CTRL_VIDEO_MODE0;
	.line	163
	sep	#$20
	longa	off
	lda	#$1
	sta	>11468801
	rep	#$20
	longa	on
;	MASTER_CTRL_REG_L[0] = MSTR_CTRL_TEXT_MODE_EN;
	.line	164
	sep	#$20
	longa	off
	lda	#$1
	sta	>11468800
	rep	#$20
	longa	on
;
;	for(i=3200;i>0;i--)
	.line	166
	lda	#$c80
	sta	<L54+i_1
L10035:
;	{
	.line	167
;		for(j=0;j<256;j++)
	.line	168
	stz	<L54+j_1
L10038:
;		{
	.line	169
;			asm NOP;
	.line	170
	asmstart
	NOP
	asmend
;		}
	.line	171
L10036:
	inc	<L54+j_1
	sec
	lda	<L54+j_1
	sbc	#<$100
	bvs	L64
	eor	#$8000
L64:
	bmi	L65
	brl	L10038
L65:
L10037:
;	}
	.line	172
L10033:
	dec	<L54+i_1
	sec
	lda	#$0
	sbc	<L54+i_1
	bvs	L66
	eor	#$8000
L66:
	bmi	L67
	brl	L10035
L67:
L10034:
;
;
;	k_debug_string("k_enable_text_mode RESET 1...\r\n");
	.line	175
	pea	#^L8+105
	pea	#<L8+105
	jsl	~~k_debug_string
;
;	MASTER_CTRL_REG_H[0] = 0x00;
	.line	177
	sep	#$20
	longa	off
	lda	#$0
	sta	>11468801
	rep	#$20
	longa	on
;	MASTER_CTRL_REG_L[0] = MSTR_CTRL_TEXT_MODE_EN;
	.line	178
	sep	#$20
	longa	off
	lda	#$1
	sta	>11468800
	rep	#$20
	longa	on
;
;	for(i=32;i>0;i--)
	.line	180
	lda	#$20
	sta	<L54+i_1
L10041:
;	{
	.line	181
;		for(j=0;j<256;j++)
	.line	182
	stz	<L54+j_1
L10044:
;		{
	.line	183
;			asm NOP;
	.line	184
	asmstart
	NOP
	asmend
;		}
	.line	185
L10042:
	inc	<L54+j_1
	sec
	lda	<L54+j_1
	sbc	#<$100
	bvs	L68
	eor	#$8000
L68:
	bmi	L69
	brl	L10044
L69:
L10043:
;	}
	.line	186
L10039:
	dec	<L54+i_1
	sec
	lda	#$0
	sbc	<L54+i_1
	bvs	L70
	eor	#$8000
L70:
	bmi	L71
	brl	L10041
L71:
L10040:
;
;	k_debug_string("k_enable_text_mode RESET 2...\r\n");
	.line	188
	pea	#^L8+137
	pea	#<L8+137
	jsl	~~k_debug_string
;	MASTER_CTRL_REG_H[0] = 0x00;
	.line	189
	sep	#$20
	longa	off
	lda	#$0
	sta	>11468801
	rep	#$20
	longa	on
;	MASTER_CTRL_REG_L[0] = MSTR_CTRL_TEXT_MODE_EN;
	.line	190
	sep	#$20
	longa	off
	lda	#$1
	sta	>11468800
	rep	#$20
	longa	on
;
;	for(i=32;i>0;i--)
	.line	192
	lda	#$20
	sta	<L54+i_1
L10047:
;	{
	.line	193
;		for(j=0;j<256;j++)
	.line	194
	stz	<L54+j_1
L10050:
;		{
	.line	195
;			asm NOP;
	.line	196
	asmstart
	NOP
	asmend
;		}
	.line	197
L10048:
	inc	<L54+j_1
	sec
	lda	<L54+j_1
	sbc	#<$100
	bvs	L72
	eor	#$8000
L72:
	bmi	L73
	brl	L10050
L73:
L10049:
;	}
	.line	198
L10045:
	dec	<L54+i_1
	sec
	lda	#$0
	sbc	<L54+i_1
	bvs	L74
	eor	#$8000
L74:
	bmi	L75
	brl	L10047
L75:
L10046:
;
;	k_debug_string("k_enable_text_mode RESET 3...\r\n");
	.line	200
	pea	#^L8+169
	pea	#<L8+169
	jsl	~~k_debug_string
;	MASTER_CTRL_REG_H[0] = 0x00;
	.line	201
	sep	#$20
	longa	off
	lda	#$0
	sta	>11468801
	rep	#$20
	longa	on
;	MASTER_CTRL_REG_L[0] = MSTR_CTRL_TEXT_MODE_EN;
	.line	202
	sep	#$20
	longa	off
	lda	#$1
	sta	>11468800
	rep	#$20
	longa	on
;
;	for(i=32;i>0;i--)
	.line	204
	lda	#$20
	sta	<L54+i_1
L10053:
;	{
	.line	205
;		for(j=0;j<256;j++)
	.line	206
	stz	<L54+j_1
L10056:
;		{
	.line	207
;			asm NOP;
	.line	208
	asmstart
	NOP
	asmend
;		}
	.line	209
L10054:
	inc	<L54+j_1
	sec
	lda	<L54+j_1
	sbc	#<$100
	bvs	L76
	eor	#$8000
L76:
	bmi	L77
	brl	L10056
L77:
L10055:
;	}
	.line	210
L10051:
	dec	<L54+i_1
	sec
	lda	#$0
	sbc	<L54+i_1
	bvs	L78
	eor	#$8000
L78:
	bmi	L79
	brl	L10053
L79:
L10052:
;#asm
	.line	211
;	NOP
;	NOP
;	NOP
;	NOP
;	NOP
;	NOP
;	NOP
;	NOP
;#endasm
	asmstart
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	asmend
;
;	//MASTER_CTRL_REG_L[0] = MSTR_CTRL_DISABLE_VID;
;
;#asm
	.line	224
;	NOP
;	NOP
;	NOP
;	NOP
;	NOP
;	NOP
;	NOP
;	NOP
;#endasm
	asmstart
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	asmend
;
;	//MASTER_CTRL_REG_H[0] = 0;
;	MASTER_CTRL_REG_L[0] = MSTR_CTRL_TEXT_MODE_EN;
	.line	236
	sep	#$20
	longa	off
	lda	#$1
	sta	>11468800
	rep	#$20
	longa	on
;
;}
	.line	238
L80:
	pld
	tsc
	clc
	adc	#L53
	tcs
	rtl
	.endblock	238
L53	equ	4
L54	equ	1
	ends
	efunc
	.endfunc	238,1,4
	.line	238
	data
L8:
	db	$6B,$5F,$65,$6E,$61,$62,$6C,$65,$5F,$62,$69,$74,$6D,$61,$70
	db	$5F,$6D,$6F,$64,$65,$20,$52,$45,$53,$45,$54,$20,$31,$61,$2E
	db	$2E,$2E,$0D,$0A,$00,$6B,$5F,$65,$6E,$61,$62,$6C,$65,$5F,$62
	db	$69,$74,$6D,$61,$70,$5F,$6D,$6F,$64,$65,$20,$52,$45,$53,$45
	db	$54,$20,$31,$62,$2E,$2E,$2E,$0D,$0A,$00,$6B,$5F,$65,$6E,$61
	db	$62,$6C,$65,$5F,$62,$69,$74,$6D,$61,$70,$5F,$6D,$6F,$64,$65
	db	$20,$52,$45,$53,$45,$54,$20,$31,$63,$2E,$2E,$2E,$0D,$0A,$00
	db	$6B,$5F,$65,$6E,$61,$62,$6C,$65,$5F,$74,$65,$78,$74,$5F,$6D
	db	$6F,$64,$65,$20,$52,$45,$53,$45,$54,$20,$31,$2E,$2E,$2E,$0D
	db	$0A,$00,$6B,$5F,$65,$6E,$61,$62,$6C,$65,$5F,$74,$65,$78,$74
	db	$5F,$6D,$6F,$64,$65,$20,$52,$45,$53,$45,$54,$20,$32,$2E,$2E
	db	$2E,$0D,$0A,$00,$6B,$5F,$65,$6E,$61,$62,$6C,$65,$5F,$74,$65
	db	$78,$74,$5F,$6D,$6F,$64,$65,$20,$52,$45,$53,$45,$54,$20,$33
	db	$2E,$2E,$2E,$0D,$0A,$00
	ends
;
;void k_enable_border(void)
;{
	.line	240
	.line	241
	code
	xdef	~~k_enable_border
	func
	.function	241
~~k_enable_border:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L82
	tcs
	phd
	tcd
	.block	241
;	BORDER_CTRL_REG[0] = BORDER_CTRL_ENABLE;
	.line	242
	sep	#$20
	longa	off
	lda	#$1
	sta	>11468804
	rep	#$20
	longa	on
;}
	.line	243
L85:
	pld
	tsc
	clc
	adc	#L82
	tcs
	rtl
	.endblock	243
L82	equ	0
L83	equ	1
	ends
	efunc
	.endfunc	243,1,0
	.line	243
;
;void k_disable_border(void)
;{
	.line	245
	.line	246
	code
	xdef	~~k_disable_border
	func
	.function	246
~~k_disable_border:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L86
	tcs
	phd
	tcd
	.block	246
;	BORDER_CTRL_REG[0] = 0x00 ;
	.line	247
	sep	#$20
	longa	off
	lda	#$0
	sta	>11468804
	rep	#$20
	longa	on
;}
	.line	248
L89:
	pld
	tsc
	clc
	adc	#L86
	tcs
	rtl
	.endblock	248
L86	equ	0
L87	equ	1
	ends
	efunc
	.endfunc	248,1,0
	.line	248
;
;void k_set_border_color(char r,char g,char b)
;{
	.line	250
	.line	251
	code
	xdef	~~k_set_border_color
	func
	.function	251
~~k_set_border_color:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L90
	tcs
	phd
	tcd
r_0	set	4
g_0	set	6
b_0	set	8
	.block	251
;	BORDER_COLOR_B[0] = b;
	.sym	r,4,14,6,8
	.sym	g,6,14,6,8
	.sym	b,8,14,6,8
	.line	252
	sep	#$20
	longa	off
	lda	<L90+b_0
	sta	>11468805
	rep	#$20
	longa	on
;	BORDER_COLOR_G[0] = g;
	.line	253
	sep	#$20
	longa	off
	lda	<L90+g_0
	sta	>11468806
	rep	#$20
	longa	on
;	BORDER_COLOR_R[0] = r;
	.line	254
	sep	#$20
	longa	off
	lda	<L90+r_0
	sta	>11468807
	rep	#$20
	longa	on
;
;    *BORDER_X_SIZE = 5;
	.line	256
	sep	#$20
	longa	off
	lda	#$5
	sta	>11468808
	rep	#$20
	longa	on
;    *BORDER_Y_SIZE = 5;
	.line	257
	sep	#$20
	longa	off
	lda	#$5
	sta	>11468809
	rep	#$20
	longa	on
;
;}
	.line	259
L93:
	lda	<L90+2
	sta	<L90+2+6
	lda	<L90+1
	sta	<L90+1+6
	pld
	tsc
	clc
	adc	#L90+6
	tcs
	rtl
	.endblock	259
L90	equ	0
L91	equ	1
	ends
	efunc
	.endfunc	259,1,0
	.line	259
;
;void k_clear_screen(int bcolor)
;{
	.line	261
	.line	262
	code
	xdef	~~k_clear_screen
	func
	.function	262
~~k_clear_screen:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L94
	tcs
	phd
	tcd
bcolor_0	set	4
	.block	262
;	memset((unsigned char FAR *)0xAFA000,0,0xAFA000 + 0xC000);
	.sym	bcolor,4,5,6,16
	.line	263
	pea	#<$b06000
	pea	#<$0
	pea	#^$afa000
	pea	#<$afa000
	jsl	~~memset
;	memset((unsigned char FAR *)0xAFC000,bcolor,0xAFA000 + 0xC000);
	.line	264
	pea	#<$b06000
	pei	<L94+bcolor_0
	pea	#^$afc000
	pea	#<$afc000
	jsl	~~memset
;}
	.line	265
L97:
	lda	<L94+2
	sta	<L94+2+2
	lda	<L94+1
	sta	<L94+1+2
	pld
	tsc
	clc
	adc	#L94+2
	tcs
	rtl
	.endblock	265
L94	equ	0
L95	equ	1
	ends
	efunc
	.endfunc	265,1,0
	.line	265
;
;int k_put_string(int col,int row,char * text,int fcolor,int bcolor)
;{
	.line	267
	.line	268
	code
	xdef	~~k_put_string
	func
	.function	268
~~k_put_string:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L98
	tcs
	phd
	tcd
col_0	set	4
row_0	set	6
text_0	set	8
fcolor_0	set	12
bcolor_0	set	14
	.block	268
;	char * ptr = text;
;	while(*ptr)
ptr_1	set	0
	.sym	ptr,0,142,1,32
	.sym	col,4,5,6,16
	.sym	row,6,5,6,16
	.sym	text,8,142,6,32
	.sym	fcolor,12,5,6,16
	.sym	bcolor,14,5,6,16
	lda	<L98+text_0
	sta	<L99+ptr_1
	lda	<L98+text_0+2
	sta	<L99+ptr_1+2
	.line	270
L10057:
	lda	[<L99+ptr_1]
	and	#$ff
	bne	L101
	brl	L10058
L101:
;	{
	.line	271
;		k_put_char(col,row,*ptr,fcolor,bcolor);
	.line	272
	pei	<L98+bcolor_0
	pei	<L98+fcolor_0
	lda	[<L99+ptr_1]
	pha
	pei	<L98+row_0
	pei	<L98+col_0
	jsl	~~k_put_char
;		col++;
	.line	273
	inc	<L98+col_0
;		ptr++;
	.line	274
	inc	<L99+ptr_1
	bne	L102
	inc	<L99+ptr_1+2
L102:
;	}
	.line	275
	brl	L10057
L10058:
;
;	return col;
	.line	277
	lda	<L98+col_0
L103:
	tay
	lda	<L98+2
	sta	<L98+2+12
	lda	<L98+1
	sta	<L98+1+12
	pld
	tsc
	clc
	adc	#L98+12
	tcs
	tya
	rtl
;}
	.line	278
	.endblock	278
L98	equ	4
L99	equ	1
	ends
	efunc
	.endfunc	278,1,4
	.line	278
;
;int k_put_string_buffer(int col,int row,char * text,LPVOID buffer)
;{
	.line	280
	.line	281
	code
	xdef	~~k_put_string_buffer
	func
	.function	281
~~k_put_string_buffer:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L104
	tcs
	phd
	tcd
col_0	set	4
row_0	set	6
text_0	set	8
buffer_0	set	12
	.block	281
;	char * ptr = text;
;	while(*ptr)
ptr_1	set	0
	.sym	ptr,0,142,1,32
	.sym	col,4,5,6,16
	.sym	row,6,5,6,16
	.sym	text,8,142,6,32
	.sym	buffer,12,129,6,32
	lda	<L104+text_0
	sta	<L105+ptr_1
	lda	<L104+text_0+2
	sta	<L105+ptr_1+2
	.line	283
L10059:
	lda	[<L105+ptr_1]
	and	#$ff
	bne	L107
	brl	L10060
L107:
;	{
	.line	284
;		//((LPSTR)buffer)[col][row];
;		col++;
	.line	286
	inc	<L104+col_0
;		ptr++;
	.line	287
	inc	<L105+ptr_1
	bne	L108
	inc	<L105+ptr_1+2
L108:
;	}
	.line	288
	brl	L10059
L10060:
;
;	return col;
	.line	290
	lda	<L104+col_0
L109:
	tay
	lda	<L104+2
	sta	<L104+2+12
	lda	<L104+1
	sta	<L104+1+12
	pld
	tsc
	clc
	adc	#L104+12
	tcs
	tya
	rtl
;}
	.line	291
	.endblock	291
L104	equ	4
L105	equ	1
	ends
	efunc
	.endfunc	291,1,4
	.line	291
;
;int k_put_color(int col,int row,char * textColor)
;{
	.line	293
	.line	294
	code
	xdef	~~k_put_color
	func
	.function	294
~~k_put_color:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L110
	tcs
	phd
	tcd
col_0	set	4
row_0	set	6
textColor_0	set	8
	.block	294
;	char * ptr = textColor;
;	col++;
ptr_1	set	0
	.sym	ptr,0,142,1,32
	.sym	col,4,5,6,16
	.sym	row,6,5,6,16
	.sym	textColor,8,142,6,32
	lda	<L110+textColor_0
	sta	<L111+ptr_1
	lda	<L110+textColor_0+2
	sta	<L111+ptr_1+2
	.line	296
	inc	<L110+col_0
;	while(*ptr)
	.line	297
L10061:
	lda	[<L111+ptr_1]
	and	#$ff
	bne	L113
	brl	L10062
L113:
;	{
	.line	298
;		//CS_COLOR_MEM_PTR[128 * row + col] = *ptr;
;		CS_COLOR_MEM_PTR[80 * row + col] = *ptr;
	.line	300
	lda	<L110+row_0
	ldx	#<$50
	xref	~~~mul
	jsl	~~~mul
	sta	<R0
	clc
	lda	<R0
	adc	<L110+col_0
	sta	<R1
	lda	#$c000
	sta	<R0
	lda	#$af
	sta	<R0+2
	sep	#$20
	longa	off
	lda	[<L111+ptr_1]
	ldy	<R1
	sta	[<R0],Y
	rep	#$20
	longa	on
;		col++;
	.line	301
	inc	<L110+col_0
;		ptr++;
	.line	302
	inc	<L111+ptr_1
	bne	L114
	inc	<L111+ptr_1+2
L114:
;	}
	.line	303
	brl	L10061
L10062:
;
;	return col;
	.line	305
	lda	<L110+col_0
L115:
	tay
	lda	<L110+2
	sta	<L110+2+8
	lda	<L110+1
	sta	<L110+1+8
	pld
	tsc
	clc
	adc	#L110+8
	tcs
	tya
	rtl
;}
	.line	306
	.endblock	306
L110	equ	12
L111	equ	9
	ends
	efunc
	.endfunc	306,9,12
	.line	306
;
;/*
;int k_put_string(int col,int row,char * text,int fcolor,int bcolor)
;{
;	int tcolor = 0;
;	char * ptr = text;
;	while(*ptr)
;	{
;		if(*ptr == '\\')
;		{
;			ptr++;
;			tcolor = *ptr;
;			k_debug_hex("tcolor:",(UCHAR)tcolor);
;			ptr+=2;
;			k_debug_char("char:",*ptr);
;			k_put_char(col,row,*ptr,tcolor,bcolor);
;		}
;		else
;		{
;			k_put_char(col,row,*ptr,fcolor,bcolor);
;		}
;		col++;
;		ptr++;
;	}
;
;	return col;
;}
;*/
;
;void k_put_char(int col,int row,char c,int fcolor,int bcolor)
;{
	.line	336
	.line	337
	code
	xdef	~~k_put_char
	func
	.function	337
~~k_put_char:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L116
	tcs
	phd
	tcd
col_0	set	4
row_0	set	6
c_0	set	8
fcolor_0	set	10
bcolor_0	set	12
	.block	337
;#ifdef USE_FX256_FMX
;	col++;
	.sym	col,4,5,6,16
	.sym	row,6,5,6,16
	.sym	c,8,14,6,8
	.sym	fcolor,10,5,6,16
	.sym	bcolor,12,5,6,16
	.line	339
	inc	<L116+col_0
;	CS_TEXT_MEM_PTR[80 * row + col ] = c;
	.line	340
	lda	<L116+row_0
	ldx	#<$50
	xref	~~~mul
	jsl	~~~mul
	sta	<R0
	clc
	lda	<R0
	adc	<L116+col_0
	sta	<R1
	lda	#$a000
	sta	<R0
	lda	#$af
	sta	<R0+2
	sep	#$20
	longa	off
	lda	<L116+c_0
	ldy	<R1
	sta	[<R0],Y
	rep	#$20
	longa	on
;	//CS_COLOR_MEM_PTR[80 * row + col] = ((fcolor & 0x0F) << 4 + (bcolor & 0x0F));
;	//CS_COLOR_MEM_PTR[80 * row + col] = ((fcolor & 0x00FF) << 8 + (bcolor & 0x00FF));
;	CS_COLOR_MEM_PTR[80 * row + col] = ((fcolor & 0x0F) << 4 + (bcolor & 0x0F));
	.line	343
	lda	<L116+row_0
	ldx	#<$50
	xref	~~~mul
	jsl	~~~mul
	sta	<R0
	clc
	lda	<R0
	adc	<L116+col_0
	sta	<R1
	lda	#$c000
	sta	<R0
	lda	#$af
	sta	<R0+2
	lda	<L116+bcolor_0
	and	#<$f
	sta	<R2
	clc
	lda	#$4
	adc	<R2
	pha
	lda	<L116+fcolor_0
	and	#<$f
	plx
	xref	~~~asl
	jsl	~~~asl
	sep	#$20
	longa	off
	ldy	<R1
	sta	[<R0],Y
	rep	#$20
	longa	on
;#else
;	CS_TEXT_MEM_PTR[128 * row + col] = c;
;	CS_COLOR_MEM_PTR[128 * row + col] = ((fcolor & 0x0F) << 4 + (bcolor & 0x0F));
;#endif
;}
	.line	348
L119:
	lda	<L116+2
	sta	<L116+2+10
	lda	<L116+1
	sta	<L116+1+10
	pld
	tsc
	clc
	adc	#L116+10
	tcs
	rtl
	.endblock	348
L116	equ	12
L117	equ	13
	ends
	efunc
	.endfunc	348,13,12
	.line	348
;
;void k_set_background(int col,int row,int bcolor)
;{
	.line	350
	.line	351
	code
	xdef	~~k_set_background
	func
	.function	351
~~k_set_background:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L120
	tcs
	phd
	tcd
col_0	set	4
row_0	set	6
bcolor_0	set	8
	.block	351
;	((unsigned char FAR *)(0xAFC000 + (128 * row) + col))[0] =  bcolor;
	.sym	col,4,5,6,16
	.sym	row,6,5,6,16
	.sym	bcolor,8,5,6,16
	.line	352
	ldy	#$0
	lda	<L120+col_0
	bpl	L123
	dey
L123:
	sta	<R0
	sty	<R0+2
	lda	<L120+row_0
	ldx	#<$7
	xref	~~~asl
	jsl	~~~asl
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L124
	dey
L124:
	sta	<R1
	sty	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<R2
	lda	<R1+2
	adc	<R0+2
	sta	<R2+2
	clc
	lda	#$c000
	adc	<R2
	sta	<R0
	lda	#$af
	adc	<R2+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	<L120+bcolor_0
	sta	[<R0]
	rep	#$20
	longa	on
;}
	.line	353
L125:
	lda	<L120+2
	sta	<L120+2+6
	lda	<L120+1
	sta	<L120+1+6
	pld
	tsc
	clc
	adc	#L120+6
	tcs
	rtl
	.endblock	353
L120	equ	12
L121	equ	13
	ends
	efunc
	.endfunc	353,13,12
	.line	353
;
;void k_set_text_font_page(UINT page)
;{
	.line	355
	.line	356
	code
	xdef	~~k_set_text_font_page
	func
	.function	356
~~k_set_text_font_page:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L126
	tcs
	phd
	tcd
page_0	set	4
	.block	356
;	/*
;	if(page)
;		VKY_TXT_CURSOR_CTRL_REG[0] = 0x13;
;	else
;		VKY_TXT_CURSOR_CTRL_REG[0] = 0x0B;
;	*/
;}
	.sym	page,4,16,6,16
	.line	363
L129:
	lda	<L126+2
	sta	<L126+2+2
	lda	<L126+1
	sta	<L126+1+2
	pld
	tsc
	clc
	adc	#L126+2
	tcs
	rtl
	.endblock	363
L126	equ	0
L127	equ	1
	ends
	efunc
	.endfunc	363,1,0
	.line	363
;
;void k_enable_text_cursor(UINT page)
;{
	.line	365
	.line	366
	code
	xdef	~~k_enable_text_cursor
	func
	.function	366
~~k_enable_text_cursor:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L130
	tcs
	phd
	tcd
page_0	set	4
	.block	366
;	CURCOLOR[0] = 15;
	.sym	page,4,16,6,16
	.line	367
	sep	#$20
	longa	off
	lda	#$f
	sta	>30
	rep	#$20
	longa	on
;	VKY_TXT_CURSOR_CTRL_REG[0] = 0;
	.line	368
	sep	#$20
	longa	off
	lda	#$0
	sta	>11468816
	rep	#$20
	longa	on
;	//VKY_TXT_CURSOR_CHAR_REG[0] = 0x00;  // FULL BLOCK
;	VKY_TXT_CURSOR_CHAR_REG[0] = 0xA0;  // FULL BLOCK
	.line	370
	sep	#$20
	longa	off
	lda	#$a0
	sta	>11468818
	rep	#$20
	longa	on
;	//VKY_TXT_CURSOR_CTRL_REG[0] = 0x03;  // ENABLE, FLASH RATE 0
;	//VKY_TXT_CURSOR_CTRL_REG[0] = 0x0B;  // ENABLE, FLASH RATE 0
;	//VKY_TXT_CURSOR_CTRL_REG[0] = 0x13;
;
;	//k_set_text_font_page(page);
;
;	//VKY_TXT_CURSOR_COLR_REG[0] = 0xF0;
;	VKY_TXT_CURSOR_COLR_REG[0] = 0x00;
	.line	378
	sep	#$20
	longa	off
	lda	#$0
	sta	>11468819
	rep	#$20
	longa	on
;	VKY_TXT_CURSOR_Y_REG_L[0]  = (UCHAR)0;
	.line	379
	sep	#$20
	longa	off
	lda	#$0
	sta	>11468822
	rep	#$20
	longa	on
;	VKY_TXT_CURSOR_X_REG_L[0]  = (UCHAR)0;
	.line	380
	sep	#$20
	longa	off
	lda	#$0
	sta	>11468820
	rep	#$20
	longa	on
;	VKY_TXT_CURSOR_Y_REG_H[0]  = (UCHAR)0;
	.line	381
	sep	#$20
	longa	off
	lda	#$0
	sta	>11468823
	rep	#$20
	longa	on
;	VKY_TXT_CURSOR_X_REG_H[0]  = (UCHAR)0;
	.line	382
	sep	#$20
	longa	off
	lda	#$0
	sta	>11468821
	rep	#$20
	longa	on
;}
	.line	383
L133:
	lda	<L130+2
	sta	<L130+2+2
	lda	<L130+1
	sta	<L130+1+2
	pld
	tsc
	clc
	adc	#L130+2
	tcs
	rtl
	.endblock	383
L130	equ	0
L131	equ	1
	ends
	efunc
	.endfunc	383,1,0
	.line	383
;
;void k_set_cursor_position(int x,int y)
;{
	.line	385
	.line	386
	code
	xdef	~~k_set_cursor_position
	func
	.function	386
~~k_set_cursor_position:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L134
	tcs
	phd
	tcd
x_0	set	4
y_0	set	6
	.block	386
;	VKY_TXT_CURSOR_Y_REG_L[0] = (UCHAR)y;
	.sym	x,4,5,6,16
	.sym	y,6,5,6,16
	.line	387
	sep	#$20
	longa	off
	lda	<L134+y_0
	sta	>11468822
	rep	#$20
	longa	on
;	VKY_TXT_CURSOR_X_REG_L[0] = (UCHAR)x;
	.line	388
	sep	#$20
	longa	off
	lda	<L134+x_0
	sta	>11468820
	rep	#$20
	longa	on
;	VKY_TXT_CURSOR_Y_REG_H[0] = (UCHAR)0;
	.line	389
	sep	#$20
	longa	off
	lda	#$0
	sta	>11468823
	rep	#$20
	longa	on
;	VKY_TXT_CURSOR_X_REG_H[0] = (UCHAR)0;
	.line	390
	sep	#$20
	longa	off
	lda	#$0
	sta	>11468821
	rep	#$20
	longa	on
;}
	.line	391
L137:
	lda	<L134+2
	sta	<L134+2+4
	lda	<L134+1
	sta	<L134+1+4
	pld
	tsc
	clc
	adc	#L134+4
	tcs
	rtl
	.endblock	391
L134	equ	0
L135	equ	1
	ends
	efunc
	.endfunc	391,1,0
	.line	391
;
;void k_create_text_window(PRECT prect,TITLE title,PHANDLE phandle)
;{
	.line	393
	.line	394
	code
	xdef	~~k_create_text_window
	func
	.function	394
~~k_create_text_window:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L138
	tcs
	phd
	tcd
prect_0	set	4
title_0	set	8
phandle_0	set	12
	.block	394
;	int index = -1;
;	PWINDOW pwin = NULL;
;
;	//k_put_char(0,1,'a',5,0);
;
;	index = _k_window_index++;
index_1	set	0
pwin_1	set	2
	.sym	index,0,5,1,16
	.sym	pwin,2,138,1,32,30
	.sym	prect,4,138,6,32,25
	.sym	title,8,142,6,32
	.sym	phandle,12,1153,6,32
	lda	#$ffff
	sta	<L139+index_1
	stz	<L139+pwin_1
	stz	<L139+pwin_1+2
	.line	400
	lda	|~~_k_window_index
	sta	<L139+index_1
	inc	|~~_k_window_index
;
;	//k_put_char(0,1,'b',5,0);
;
;	pwin = &_k_window_list[index];
	.line	404
	lda	<L139+index_1
	ldx	#<$15f
	xref	~~~mul
	jsl	~~~mul
	sta	<R0
	clc
	lda	#<~~_k_window_list
	adc	<R0
	sta	<R1
	lda	<R1
	sta	<L139+pwin_1
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<L139+pwin_1+2
;
;	pwin->win_x = prect->x;
	.line	406
	lda	[<L138+prect_0]
	ldy	#$8
	sta	[<L139+pwin_1],Y
;	pwin->win_y = prect->y;
	.line	407
	ldy	#$2
	lda	[<L138+prect_0],Y
	ldy	#$a
	sta	[<L139+pwin_1],Y
;	pwin->win_width = prect->width;
	.line	408
	ldy	#$4
	lda	[<L138+prect_0],Y
	ldy	#$c
	sta	[<L139+pwin_1],Y
;	pwin->win_height = prect->height;
	.line	409
	ldy	#$6
	lda	[<L138+prect_0],Y
	ldy	#$e
	sta	[<L139+pwin_1],Y
;
;	//k_put_char(0,1,'c',5,0);
;
;	strcpy(pwin->win_title,title);
	.line	413
	pei	<L138+title_0+2
	pei	<L138+title_0
	clc
	lda	#$d4
	adc	<L139+pwin_1
	sta	<R0
	lda	#$0
	adc	<L139+pwin_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~strcpy
;
;	//k_put_char(0,1,'d',5,0);
;
;	k_window_draw(pwin->win_x,pwin->win_y,pwin->win_width,pwin->win_height,pwin->win_title);
	.line	417
	clc
	lda	#$d4
	adc	<L139+pwin_1
	sta	<R0
	lda	#$0
	adc	<L139+pwin_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$e
	lda	[<L139+pwin_1],Y
	pha
	ldy	#$c
	lda	[<L139+pwin_1],Y
	pha
	ldy	#$a
	lda	[<L139+pwin_1],Y
	pha
	ldy	#$8
	lda	[<L139+pwin_1],Y
	pha
	jsl	~~k_window_draw
;
;	//k_put_char(0,1,'e',5,0);
;
;	*phandle = (LPVOID)index;
	.line	421
	ldy	#$0
	lda	<L139+index_1
	bpl	L141
	dey
L141:
	sta	<R0
	sty	<R0+2
	lda	<R0
	sta	[<L138+phandle_0]
	lda	<R0+2
	ldy	#$2
	sta	[<L138+phandle_0],Y
;
;	return;
	.line	423
L142:
	lda	<L138+2
	sta	<L138+2+12
	lda	<L138+1
	sta	<L138+1+12
	pld
	tsc
	clc
	adc	#L138+12
	tcs
	rtl
;}
	.line	424
	.endblock	424
L138	equ	14
L139	equ	9
	ends
	efunc
	.endfunc	424,9,14
	.line	424
;
;void k_text_mode_dialog(int x,int y,int width,int height,LPCSTR message)
;{
	.line	426
	.line	427
	code
	xdef	~~k_text_mode_dialog
	func
	.function	427
~~k_text_mode_dialog:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L143
	tcs
	phd
	tcd
x_0	set	4
y_0	set	6
width_0	set	8
height_0	set	10
message_0	set	12
	.block	427
;	int pos  = x;
;	int line = y;
;
;	pos = k_put_string(pos,line,CONST_TBOX_TL_STR,15,0);
pos_1	set	0
line_1	set	2
	.sym	pos,0,5,1,16
	.sym	line,2,5,1,16
	.sym	x,4,5,6,16
	.sym	y,6,5,6,16
	.sym	width,8,5,6,16
	.sym	height,10,5,6,16
	.sym	message,12,142,6,32
	lda	<L143+x_0
	sta	<L144+pos_1
	lda	<L143+y_0
	sta	<L144+line_1
	.line	431
	pea	#<$0
	pea	#<$f
	pea	#^L81
	pea	#<L81
	pei	<L144+line_1
	pei	<L144+pos_1
	jsl	~~k_put_string
	sta	<L144+pos_1
;	while(pos < x + width)
	.line	432
L10063:
	clc
	lda	<L143+x_0
	adc	<L143+width_0
	sta	<R0
	sec
	lda	<L144+pos_1
	sbc	<R0
	bvs	L146
	eor	#$8000
L146:
	bpl	L147
	brl	L10064
L147:
;	{
	.line	433
;		pos = k_put_string(pos,line,CONST_TBOX_TOP_STR,15,0);
	.line	434
	pea	#<$0
	pea	#<$f
	pea	#^L81+2
	pea	#<L81+2
	pei	<L144+line_1
	pei	<L144+pos_1
	jsl	~~k_put_string
	sta	<L144+pos_1
;	}
	.line	435
	brl	L10063
L10064:
;	k_put_string(pos,line,CONST_TBOX_TR_STR,15,0);
	.line	436
	pea	#<$0
	pea	#<$f
	pea	#^L81+4
	pea	#<L81+4
	pei	<L144+line_1
	pei	<L144+pos_1
	jsl	~~k_put_string
;	line++;
	.line	437
	inc	<L144+line_1
;
;	while(line < y + height)
	.line	439
L10065:
	clc
	lda	<L143+y_0
	adc	<L143+height_0
	sta	<R0
	sec
	lda	<L144+line_1
	sbc	<R0
	bvs	L148
	eor	#$8000
L148:
	bpl	L149
	brl	L10066
L149:
;	{
	.line	440
;		k_put_string(x,line,CONST_TBOX_LEFT_STR,15,0);
	.line	441
	pea	#<$0
	pea	#<$f
	pea	#^L81+6
	pea	#<L81+6
	pei	<L144+line_1
	pei	<L143+x_0
	jsl	~~k_put_string
;		k_put_string(pos,line,CONST_TBOX_RIGHT_STR,15,0);
	.line	442
	pea	#<$0
	pea	#<$f
	pea	#^L81+8
	pea	#<L81+8
	pei	<L144+line_1
	pei	<L144+pos_1
	jsl	~~k_put_string
;		line++;
	.line	443
	inc	<L144+line_1
;	}
	.line	444
	brl	L10065
L10066:
;	pos = x;
	.line	445
	lda	<L143+x_0
	sta	<L144+pos_1
;	pos = k_put_string(pos,line,CONST_TBOX_BL_STR,15,0);
	.line	446
	pea	#<$0
	pea	#<$f
	pea	#^L81+10
	pea	#<L81+10
	pei	<L144+line_1
	pei	<L144+pos_1
	jsl	~~k_put_string
	sta	<L144+pos_1
;	while(pos < x + width)
	.line	447
L10067:
	clc
	lda	<L143+x_0
	adc	<L143+width_0
	sta	<R0
	sec
	lda	<L144+pos_1
	sbc	<R0
	bvs	L150
	eor	#$8000
L150:
	bpl	L151
	brl	L10068
L151:
;	{
	.line	448
;		pos = k_put_string(pos,line,CONST_TBOX_BOTTOM_STR,15,0);
	.line	449
	pea	#<$0
	pea	#<$f
	pea	#^L81+12
	pea	#<L81+12
	pei	<L144+line_1
	pei	<L144+pos_1
	jsl	~~k_put_string
	sta	<L144+pos_1
;	}
	.line	450
	brl	L10067
L10068:
;	pos = k_put_string(pos,line,CONST_TBOX_BR_STR,15,0);
	.line	451
	pea	#<$0
	pea	#<$f
	pea	#^L81+14
	pea	#<L81+14
	pei	<L144+line_1
	pei	<L144+pos_1
	jsl	~~k_put_string
	sta	<L144+pos_1
;
;	/*
;	pos = 1;
;	pos = k_put_string(pos,line,boxside,15,0);
;	pos = 70;
;	pos = k_put_string(pos,line,boxside,15,0);
;	line++;
;	pos = 1;
;	pos = k_put_string(pos,line,boxside,15,0);
;	pos = k_put_string(pos,line,CONST_EXCEPTION_TITLE,15,0);
;	//pos = k_put_string(pos,line,k_longtodec(_k_exec_context,_brk_Buffer),15,0);
;	pos = k_put_string(pos,line,k_longtodec(_k_exec_context,_brk_Buffer),15,0);
;	//pos = k_put_string(pos,line,k_longtodec(_k_exec_context,_brk_Buffer),15,0);
;	//pos++;
;	//pos = k_put_string(pos,line,k_longtodec(   ,_brk_Buffer),15,0);
;
;	pos = k_put_string(pos,line,":",15,0);
;	pos = k_put_string(pos,line,k_longtodec(_k_exec_error,_brk_Buffer),15,0);
;	pos = 70;
;	pos = k_put_string(pos,line,boxside,15,0);
;	line++;
;	pos = 1;
;	pos = k_put_string(pos,line,boxside,15,0);
;	pos = k_put_string(pos,line,"",15,0);
;	pos = 70;
;	pos = k_put_string(pos,line,boxside,15,0);
;	line++;
;	pos = 1;
;	pos = k_put_string(pos,line,boxside,15,0);
;	pos = k_put_string(pos,line,_k_exec_message,15,0);
;	pos = 70;
;	pos = k_put_string(pos,line,boxside,15,0);
;	line++;
;	pos = 1;
;	pos = k_put_string(pos,line,boxside,15,0);
;	pos = 70;
;	pos = k_put_string(pos,line,boxside,15,0);
;	line++;
;	pos = 1;
;	pos = k_put_string(pos,line,boxbottom,15,0);
;	*/
;
;}
	.line	494
L152:
	lda	<L143+2
	sta	<L143+2+12
	lda	<L143+1
	sta	<L143+1+12
	pld
	tsc
	clc
	adc	#L143+12
	tcs
	rtl
	.endblock	494
L143	equ	8
L144	equ	5
	ends
	efunc
	.endfunc	494,5,8
	.line	494
	data
L81:
	db	$D6,$00,$FFFFFFC4,$00,$FFFFFFB7,$00,$FFFFFFBA,$00,$FFFFFFBA,$00,$FFFFFFD3,$00,$FFFFFFC4,$00,$FFFFFFBD
	db	$00
	ends
;
;void k_window_draw(int bx,int by,int bw,int bh,char FAR* title)
;{
	.line	496
	.line	497
	code
	xdef	~~k_window_draw
	func
	.function	497
~~k_window_draw:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L154
	tcs
	phd
	tcd
bx_0	set	4
by_0	set	6
bw_0	set	8
bh_0	set	10
title_0	set	12
	.block	497
;	int i = 0;
;	int k = 0;
;
;	k_put_char(0,1,'z',5,0);
i_1	set	0
k_1	set	2
	.sym	i,0,5,1,16
	.sym	k,2,5,1,16
	.sym	bx,4,5,6,16
	.sym	by,6,5,6,16
	.sym	bw,8,5,6,16
	.sym	bh,10,5,6,16
	.sym	title,12,142,6,32
	stz	<L155+i_1
	stz	<L155+k_1
	.line	501
	pea	#<$0
	pea	#<$5
	pea	#<$7a
	pea	#<$1
	pea	#<$0
	jsl	~~k_put_char
;
;	k_window_draw_background(bx,by,bw,bh,(char)8);
	.line	503
	pea	#<$8
	pei	<L154+bh_0
	pei	<L154+bw_0
	pei	<L154+by_0
	pei	<L154+bx_0
	jsl	~~k_window_draw_background
;
;	k_put_char(0,1,'y',5,0);
	.line	505
	pea	#<$0
	pea	#<$5
	pea	#<$79
	pea	#<$1
	pea	#<$0
	jsl	~~k_put_char
;
;	for(k=by;k<(by+bh);k++)
	.line	507
	lda	<L154+by_0
	sta	<L155+k_1
	brl	L10072
L10071:
;	{
	.line	508
;		if(k == by ||  k == (by + 2))
	.line	509
;		{
	lda	<L155+k_1
	cmp	<L154+by_0
	bne	L158
	brl	L157
L158:
	clc
	lda	#$2
	adc	<L154+by_0
	sta	<R0
	lda	<R0
	cmp	<L155+k_1
	beq	L159
	brl	L10073
L159:
L157:
	.line	510
;			k_put_char(bx     ,k,WIN_BORDER_CHAR_CORNER_TLEFT,15,0);
	.line	511
	pea	#<$0
	pea	#<$f
	pea	#<$d6
	pei	<L155+k_1
	pei	<L154+bx_0
	jsl	~~k_put_char
;			k_put_char(bx+bw-1,k,WIN_BORDER_CHAR_CORNER_TRIGHT,15,0);
	.line	512
	pea	#<$0
	pea	#<$f
	pea	#<$b7
	pei	<L155+k_1
	clc
	lda	<L154+bx_0
	adc	<L154+bw_0
	sta	<R0
	clc
	lda	#$ffff
	adc	<R0
	pha
	jsl	~~k_put_char
;			for(i=bx+1;i<(bx+bw-1);i++)
	.line	513
	lda	<L154+bx_0
	ina
	sta	<L155+i_1
	brl	L10077
L10076:
;			{
	.line	514
;				k_put_char(i,k,WIN_BORDER_CHAR_TOP,15,0);
	.line	515
	pea	#<$0
	pea	#<$f
	pea	#<$c4
	pei	<L155+k_1
	pei	<L155+i_1
	jsl	~~k_put_char
;			}
	.line	516
L10074:
	inc	<L155+i_1
L10077:
	clc
	lda	<L154+bx_0
	adc	<L154+bw_0
	sta	<R0
	clc
	lda	#$ffff
	adc	<R0
	sta	<R1
	sec
	lda	<L155+i_1
	sbc	<R1
	bvs	L160
	eor	#$8000
L160:
	bmi	L161
	brl	L10076
L161:
L10075:
;			k_put_string(bx+2,by+1,title,15,0);
	.line	517
	pea	#<$0
	pea	#<$f
	pei	<L154+title_0+2
	pei	<L154+title_0
	lda	<L154+by_0
	ina
	pha
	clc
	lda	#$2
	adc	<L154+bx_0
	pha
	jsl	~~k_put_string
;			//k_put_char(bx     ,k,WIN_BORDER_CHAR_CORNER_EDGE,15,0);
;			//k_put_char(bx+bw-1,k,WIN_BORDER_CHAR_CORNER_EDGE,15,0);
;
;		}
	.line	521
;		/*
;		else if(k == (by + 1))
;		{
;			k_put_char(bx     ,k,WIN_BORDER_CHAR_CORNER_EDGE,15,0);
;			k_put_char(bx+bw-1,k,WIN_BORDER_CHAR_CORNER_EDGE,15,0);
;			for(i=bx+1;i<(bx+bw-1);i++)
;			{
;				k_put_char(i,k,'=',15,0);
;			}
;		}
;		*/
;		else if(k == (by + bh - 1))
	brl	L10078
L10073:
	.line	533
;		{
	clc
	lda	<L154+by_0
	adc	<L154+bh_0
	sta	<R0
	clc
	lda	#$ffff
	adc	<R0
	sta	<R1
	lda	<R1
	cmp	<L155+k_1
	beq	L162
	brl	L10079
L162:
	.line	534
;			for(i=bx;i<(bx+bw-1);i++)
	.line	535
	lda	<L154+bx_0
	sta	<L155+i_1
	brl	L10083
L10082:
;			{
	.line	536
;				k_put_char(i,k,WIN_BORDER_CHAR_BOTTOM,15,0);
	.line	537
	pea	#<$0
	pea	#<$f
	pea	#<$c4
	pei	<L155+k_1
	pei	<L155+i_1
	jsl	~~k_put_char
;			}
	.line	538
L10080:
	inc	<L155+i_1
L10083:
	clc
	lda	<L154+bx_0
	adc	<L154+bw_0
	sta	<R0
	clc
	lda	#$ffff
	adc	<R0
	sta	<R1
	sec
	lda	<L155+i_1
	sbc	<R1
	bvs	L163
	eor	#$8000
L163:
	bmi	L164
	brl	L10082
L164:
L10081:
;			k_put_char(bx     ,k,WIN_BORDER_CHAR_CORNER_BLEFT,15,0);
	.line	539
	pea	#<$0
	pea	#<$f
	pea	#<$d3
	pei	<L155+k_1
	pei	<L154+bx_0
	jsl	~~k_put_char
;			k_put_char(bx+bw-1,k,WIN_BORDER_CHAR_CORNER_BRIGHT,15,0);
	.line	540
	pea	#<$0
	pea	#<$f
	pea	#<$d3
	pei	<L155+k_1
	clc
	lda	<L154+bx_0
	adc	<L154+bw_0
	sta	<R0
	clc
	lda	#$ffff
	adc	<R0
	pha
	jsl	~~k_put_char
;		}
	.line	541
;		else
	brl	L10084
L10079:
;		{
	.line	543
;			k_put_char(bx     ,k,WIN_BORDER_CHAR_EDGE,15,0);
	.line	544
	pea	#<$0
	pea	#<$f
	pea	#<$ba
	pei	<L155+k_1
	pei	<L154+bx_0
	jsl	~~k_put_char
;			k_put_char(bx+bw-1,k,WIN_BORDER_CHAR_EDGE,15,0);
	.line	545
	pea	#<$0
	pea	#<$f
	pea	#<$ba
	pei	<L155+k_1
	clc
	lda	<L154+bx_0
	adc	<L154+bw_0
	sta	<R0
	clc
	lda	#$ffff
	adc	<R0
	pha
	jsl	~~k_put_char
;		}
	.line	546
L10084:
L10078:
;	}
	.line	547
L10069:
	inc	<L155+k_1
L10072:
	clc
	lda	<L154+by_0
	adc	<L154+bh_0
	sta	<R0
	sec
	lda	<L155+k_1
	sbc	<R0
	bvs	L165
	eor	#$8000
L165:
	bmi	L166
	brl	L10071
L166:
L10070:
;
;	k_put_char(0,1,'x',5,0);
	.line	549
	pea	#<$0
	pea	#<$5
	pea	#<$78
	pea	#<$1
	pea	#<$0
	jsl	~~k_put_char
;
;}
	.line	551
L167:
	lda	<L154+2
	sta	<L154+2+12
	lda	<L154+1
	sta	<L154+1+12
	pld
	tsc
	clc
	adc	#L154+12
	tcs
	rtl
	.endblock	551
L154	equ	12
L155	equ	9
	ends
	efunc
	.endfunc	551,9,12
	.line	551
;
;void k_window_draw_background(int bx,int by, int bw,int bh,char bcolor)
;{
	.line	553
	.line	554
	code
	xdef	~~k_window_draw_background
	func
	.function	554
~~k_window_draw_background:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L168
	tcs
	phd
	tcd
bx_0	set	4
by_0	set	6
bw_0	set	8
bh_0	set	10
bcolor_0	set	12
	.block	554
;	int i = 0;
;	int k = 0;
;
;	k_put_char(0,1,'w',5,0);
i_1	set	0
k_1	set	2
	.sym	i,0,5,1,16
	.sym	k,2,5,1,16
	.sym	bx,4,5,6,16
	.sym	by,6,5,6,16
	.sym	bw,8,5,6,16
	.sym	bh,10,5,6,16
	.sym	bcolor,12,14,6,8
	stz	<L169+i_1
	stz	<L169+k_1
	.line	558
	pea	#<$0
	pea	#<$5
	pea	#<$77
	pea	#<$1
	pea	#<$0
	jsl	~~k_put_char
;
;	for(k=by;k<(by + bh);k++)
	.line	560
	lda	<L168+by_0
	sta	<L169+k_1
	brl	L10088
L10087:
;	{
	.line	561
;		k_put_char(0,1,'u',5,0);
	.line	562
	pea	#<$0
	pea	#<$5
	pea	#<$75
	pea	#<$1
	pea	#<$0
	jsl	~~k_put_char
;		for(i=bx;i<(bx+bw);i++)
	.line	563
	lda	<L168+bx_0
	sta	<L169+i_1
	brl	L10092
L10091:
;		{
	.line	564
;			//k_set_background(i,k,bcolor);
;			k_put_char(i,k,' ',0,15);
	.line	566
	pea	#<$f
	pea	#<$0
	pea	#<$20
	pei	<L169+k_1
	pei	<L169+i_1
	jsl	~~k_put_char
;			k_put_char(0,1,'t',5,0);
	.line	567
	pea	#<$0
	pea	#<$5
	pea	#<$74
	pea	#<$1
	pea	#<$0
	jsl	~~k_put_char
;		}
	.line	568
L10089:
	inc	<L169+i_1
L10092:
	clc
	lda	<L168+bx_0
	adc	<L168+bw_0
	sta	<R0
	sec
	lda	<L169+i_1
	sbc	<R0
	bvs	L171
	eor	#$8000
L171:
	bmi	L172
	brl	L10091
L172:
L10090:
;	}
	.line	569
L10085:
	inc	<L169+k_1
L10088:
	clc
	lda	<L168+by_0
	adc	<L168+bh_0
	sta	<R0
	sec
	lda	<L169+k_1
	sbc	<R0
	bvs	L173
	eor	#$8000
L173:
	bmi	L174
	brl	L10087
L174:
L10086:
;
;	k_put_char(0,1,'v',5,0);
	.line	571
	pea	#<$0
	pea	#<$5
	pea	#<$76
	pea	#<$1
	pea	#<$0
	jsl	~~k_put_char
;}
	.line	572
L175:
	lda	<L168+2
	sta	<L168+2+10
	lda	<L168+1
	sta	<L168+1+10
	pld
	tsc
	clc
	adc	#L168+10
	tcs
	rtl
	.endblock	572
L168	equ	8
L169	equ	5
	ends
	efunc
	.endfunc	572,5,8
	.line	572
;
;BOOL consoleWindowProc(PFXOSMESSAGE pMsg)
;{
	.line	574
	.line	575
	code
	xdef	~~consoleWindowProc
	func
	.function	575
~~consoleWindowProc:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L176
	tcs
	phd
	tcd
pMsg_0	set	4
	.block	575
;	PFXPROCESS p = NULL;
;
;	if(pMsg!=NULL)
p_1	set	0
	.sym	p,0,138,1,32,20
	.sym	pMsg,4,138,6,32,16
	stz	<L177+p_1
	stz	<L177+p_1+2
	.line	578
;	{
	lda	<L176+pMsg_0
	ora	<L176+pMsg_0+2
	bne	L179
	brl	L10093
L179:
	.line	579
;		p = k_exec_get_current_process();
	.line	580
	jsl	~~k_exec_get_current_process
	sta	<L177+p_1
	stx	<L177+p_1+2
;
;		//k_debug_long("consoleWindowProc::ProcessId:",p->procId);
;
;		switch(pMsg->type)
	.line	584
	ldy	#$8
	lda	[<L176+pMsg_0],Y
	brl	L10094
;		{
	.line	585
;		case FX_CREATE_WINDOW:
	.line	586
L10096:
;			k_debug_long("consoleWindowProc::ProcessId:",p->procId);
	.line	587
	ldy	#$4
	lda	[<L177+p_1],Y
	pha
	ldy	#$2
	lda	[<L177+p_1],Y
	pha
	pea	#^L153
	pea	#<L153
	jsl	~~k_debug_long
;			k_debug_integer("consoleWindowProc::MessageId:",pMsg->type);
	.line	588
	ldy	#$8
	lda	[<L176+pMsg_0],Y
	pha
	pea	#^L153+30
	pea	#<L153+30
	jsl	~~k_debug_integer
;			break;
	.line	589
	brl	L10095
;		case FX_MBUTTON_DOWN:
	.line	590
L10097:
;			if(pMsg->type!=FX_PROCESS)
	.line	591
;			{
	ldy	#$8
	lda	[<L176+pMsg_0],Y
	cmp	#<$ff00
	bne	L180
	brl	L10098
L180:
	.line	592
;				//k_debug_integer("consoleWindowProc::ProcessId:",p->procId);
;				k_debug_string("consoleWindowProc::FX_MBUTTON_DOWN\r\n");
	.line	594
	pea	#^L153+60
	pea	#<L153+60
	jsl	~~k_debug_string
;			}
	.line	595
;
;			break;
L10098:
	.line	597
	brl	L10095
;		default:
	.line	598
L10099:
;			break;
	.line	599
	brl	L10095
;		}
	.line	600
L10094:
	xref	~~~swt
	jsl	~~~swt
	dw	2
	dw	3852
	dw	L10097-1
	dw	65283
	dw	L10096-1
	dw	L10099-1
L10095:
;	}
	.line	601
;
;	return TRUE;
L10093:
	.line	603
	lda	#$1
L181:
	tay
	lda	<L176+2
	sta	<L176+2+4
	lda	<L176+1
	sta	<L176+1+4
	pld
	tsc
	clc
	adc	#L176+4
	tcs
	tya
	rtl
;}
	.line	604
	.endblock	604
L176	equ	4
L177	equ	1
	ends
	efunc
	.endfunc	604,1,4
	.line	604
	data
L153:
	db	$63,$6F,$6E,$73,$6F,$6C,$65,$57,$69,$6E,$64,$6F,$77,$50,$72
	db	$6F,$63,$3A,$3A,$50,$72,$6F,$63,$65,$73,$73,$49,$64,$3A,$00
	db	$63,$6F,$6E,$73,$6F,$6C,$65,$57,$69,$6E,$64,$6F,$77,$50,$72
	db	$6F,$63,$3A,$3A,$4D,$65,$73,$73,$61,$67,$65,$49,$64,$3A,$00
	db	$63,$6F,$6E,$73,$6F,$6C,$65,$57,$69,$6E,$64,$6F,$77,$50,$72
	db	$6F,$63,$3A,$3A,$46,$58,$5F,$4D,$42,$55,$54,$54,$4F,$4E,$5F
	db	$44,$4F,$57,$4E,$0D,$0A,$00
	ends
;
;
;void DefConsoleProc(PFXOSMESSAGE pMsg)
;{
	.line	607
	.line	608
	code
	xdef	~~DefConsoleProc
	func
	.function	608
~~DefConsoleProc:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L183
	tcs
	phd
	tcd
pMsg_0	set	4
	.block	608
;	LPCHAR ptr = NULL;
;	PFXPROCESS p = NULL;
;	PCONSOLECTX pctx = NULL;
;	BYTE decodedKey = 0;
;	int i = 0;
;	int j = 0;
;	int temp1;
;	int temp2;
;	UINT temp3;
;	BYTE serial;
;	PCLICKDETECTED pcd;
;	LPSTR captionText = NULL;
;	PFXNODE  clickNode = NULL;
;
;	//k_debug_string("DefConsoleProc enter\r\n");
;	if(pMsg!=NULL)
ptr_1	set	0
p_1	set	4
pctx_1	set	8
decodedKey_1	set	12
i_1	set	13
j_1	set	15
temp1_1	set	17
temp2_1	set	19
temp3_1	set	21
serial_1	set	23
pcd_1	set	24
captionText_1	set	28
clickNode_1	set	32
	.sym	ptr,0,142,1,32
	.sym	p,4,138,1,32,20
	.sym	pctx,8,138,1,32,61
	.sym	decodedKey,12,14,1,8
	.sym	i,13,5,1,16
	.sym	j,15,5,1,16
	.sym	temp1,17,5,1,16
	.sym	temp2,19,5,1,16
	.sym	temp3,21,16,1,16
	.sym	serial,23,14,1,8
	.sym	pcd,24,138,1,32,53
	.sym	captionText,28,142,1,32
	.sym	clickNode,32,138,1,32,5
	.sym	pMsg,4,138,6,32,16
	stz	<L184+ptr_1
	stz	<L184+ptr_1+2
	stz	<L184+p_1
	stz	<L184+p_1+2
	stz	<L184+pctx_1
	stz	<L184+pctx_1+2
	sep	#$20
	longa	off
	stz	<L184+decodedKey_1
	rep	#$20
	longa	on
	stz	<L184+i_1
	stz	<L184+j_1
	stz	<L184+captionText_1
	stz	<L184+captionText_1+2
	stz	<L184+clickNode_1
	stz	<L184+clickNode_1+2
	.line	624
;	{
	lda	<L183+pMsg_0
	ora	<L183+pMsg_0+2
	bne	L186
	brl	L10100
L186:
	.line	625
;		p = k_exec_get_current_process();
	.line	626
	jsl	~~k_exec_get_current_process
	sta	<L184+p_1
	stx	<L184+p_1+2
;
;		if(p)
	.line	628
;		{
	lda	<L184+p_1
	ora	<L184+p_1+2
	bne	L187
	brl	L10101
L187:
	.line	629
;			pctx = (PCONSOLECTX)p->ctx;
	.line	630
	ldy	#$a
	lda	[<L184+p_1],Y
	sta	<L184+pctx_1
	ldy	#$c
	lda	[<L184+p_1],Y
	sta	<L184+pctx_1+2
;			//k_debug_pointer("DefConsoleProc::pctx:",pctx);
;			//k_debug_pointer("DefConsoleProc::pctx->userData:",pctx->userData);
;		}
	.line	633
;
;		switch(pMsg->type)
L10101:
	.line	635
	ldy	#$8
	lda	[<L183+pMsg_0],Y
	brl	L10102
;		{
	.line	636
;		case FX_INIT_MESSAGE:
	.line	637
L10104:
;			if(p!=NULL)
	.line	638
;			{
	lda	<L184+p_1
	ora	<L184+p_1+2
	bne	L188
	brl	L10105
L188:
	.line	639
;				k_debug_long("DefConsoleProc::ProcessId:",p->procId);
	.line	640
	ldy	#$4
	lda	[<L184+p_1],Y
	pha
	ldy	#$2
	lda	[<L184+p_1],Y
	pha
	pea	#^L182
	pea	#<L182
	jsl	~~k_debug_long
;
;				k_clear_screen(0);
	.line	642
	pea	#<$0
	jsl	~~k_clear_screen
;
;				p->consoleCtl = (PCONSOLE_CONTROL)k_mem_allocate_heap(sizeof(CONSOLE_CONTROL));
	.line	644
	pea	#<$38
	jsl	~~k_mem_allocate_heap
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$54
	sta	[<L184+p_1],Y
	lda	<R0+2
	ldy	#$56
	sta	[<L184+p_1],Y
;				if(p->consoleCtl!=NULL)
	.line	645
;				{
	ldy	#$54
	lda	[<L184+p_1],Y
	ldy	#$56
	ora	[<L184+p_1],Y
	bne	L189
	brl	L10106
L189:
	.line	646
;					p->consoleCtl->bgColor = 0;
	.line	647
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	lda	#$0
	ldy	#$a
	sta	[<R0],Y
;					p->consoleCtl->curX    = 0;
	.line	648
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	lda	#$0
	ldy	#$4
	sta	[<R0],Y
;					p->consoleCtl->curY    = 0;
	.line	649
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	lda	#$0
	ldy	#$6
	sta	[<R0],Y
;					p->consoleCtl->fgColor = 15;
	.line	650
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	lda	#$f
	ldy	#$8
	sta	[<R0],Y
;					p->consoleCtl->maxCols = k_get_cols_visible();
	.line	651
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	jsl	~~k_get_cols_visible
	sta	[<R0]
;					p->consoleCtl->maxRows = k_get_lines_visible();
	.line	652
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	jsl	~~k_get_lines_visible
	ldy	#$2
	sta	[<R0],Y
;					p->consoleCtl->desktopMode = FALSE;
	.line	653
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$31
	sta	[<R0],Y
	rep	#$20
	longa	on
;
;					k_set_cursor_position(p->consoleCtl->curX,p->consoleCtl->curY);
	.line	655
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$6
	lda	[<R0],Y
	pha
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$4
	lda	[<R0],Y
	pha
	jsl	~~k_set_cursor_position
;
;					k_debug_integer("maxCols:",p->consoleCtl->maxCols);
	.line	657
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	lda	[<R0]
	pha
	pea	#^L182+27
	pea	#<L182+27
	jsl	~~k_debug_integer
;					k_debug_integer("maxRows:",p->consoleCtl->maxRows);
	.line	658
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$2
	lda	[<R0],Y
	pha
	pea	#^L182+36
	pea	#<L182+36
	jsl	~~k_debug_integer
;
;					for(i=0;i<56;i++)
	.line	660
	stz	<L184+i_1
L10109:
;						for(j=0;j<72;j++)
	.line	661
	stz	<L184+j_1
L10112:
;							consoleBuffer[i][j] = 0;
	.line	662
	lda	<L184+j_1
	asl	A
	sta	<R0
	lda	<L184+i_1
	ldx	#<$90
	xref	~~~mul
	jsl	~~~mul
	sta	<R1
	clc
	lda	<R1
	adc	<R0
	sta	<R2
	lda	#$0
	ldx	<R2
	sta	|~~consoleBuffer,X
L10110:
	inc	<L184+j_1
	sec
	lda	<L184+j_1
	sbc	#<$48
	bvs	L190
	eor	#$8000
L190:
	bmi	L191
	brl	L10112
L191:
L10111:
L10107:
	inc	<L184+i_1
	sec
	lda	<L184+i_1
	sbc	#<$38
	bvs	L192
	eor	#$8000
L192:
	bmi	L193
	brl	L10109
L193:
L10108:
;
;					p->ctx = k_mem_allocate_heap(sizeof(CONSOLECTX));
	.line	664
	pea	#<$8f
	jsl	~~k_mem_allocate_heap
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$a
	sta	[<L184+p_1],Y
	lda	<R0+2
	ldy	#$c
	sta	[<L184+p_1],Y
;					if(p->ctx!=NULL)
	.line	665
;					{
	ldy	#$a
	lda	[<L184+p_1],Y
	ldy	#$c
	ora	[<L184+p_1],Y
	bne	L194
	brl	L10113
L194:
	.line	666
;						k_debug_pointer("DefConsoleProc::pctx:",p->ctx);
	.line	667
	ldy	#$c
	lda	[<L184+p_1],Y
	pha
	ldy	#$a
	lda	[<L184+p_1],Y
	pha
	pea	#^L182+45
	pea	#<L182+45
	jsl	~~k_debug_pointer
;
;						pctx = (PCONSOLECTX)p->ctx;
	.line	669
	ldy	#$a
	lda	[<L184+p_1],Y
	sta	<L184+pctx_1
	ldy	#$c
	lda	[<L184+p_1],Y
	sta	<L184+pctx_1+2
;						memset(pctx->lineBuffer,0,128);
	.line	670
	pea	#<$80
	pea	#<$0
	clc
	lda	#$2
	adc	<L184+pctx_1
	sta	<R0
	lda	#$0
	adc	<L184+pctx_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~memset
;						pctx->lineBufferIndex = 0;
	.line	671
	lda	#$0
	sta	[<L184+pctx_1]
;
;						pctx->userData = k_mem_allocate_heap(sizeof(FXCOMBUFFER));
	.line	673
	pea	#<$104
	jsl	~~k_mem_allocate_heap
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$83
	sta	[<L184+pctx_1],Y
	lda	<R0+2
	ldy	#$85
	sta	[<L184+pctx_1],Y
;						k_debug_pointer("DefConsoleProc::pctx->userData:",pctx->userData);
	.line	674
	ldy	#$85
	lda	[<L184+pctx_1],Y
	pha
	ldy	#$83
	lda	[<L184+pctx_1],Y
	pha
	pea	#^L182+67
	pea	#<L182+67
	jsl	~~k_debug_pointer
;
;						if(pctx->userData)
	.line	676
;							memset(pctx->userData ,0,sizeof(FXCOMBUFFER));
	ldy	#$83
	lda	[<L184+pctx_1],Y
	ldy	#$85
	ora	[<L184+pctx_1],Y
	bne	L195
	brl	L10114
L195:
	.line	677
	pea	#<$104
	pea	#<$0
	ldy	#$85
	lda	[<L184+pctx_1],Y
	pha
	ldy	#$83
	lda	[<L184+pctx_1],Y
	pha
	jsl	~~memset
;
;						((PFXCOMBUFFER)(pctx->userData))->cbSize = sizeof(FXCOMBUFFER);
L10114:
	.line	679
	ldy	#$83
	lda	[<L184+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L184+pctx_1],Y
	sta	<R0+2
	lda	#$104
	sta	[<R0]
;						((PFXCOMBUFFER)(pctx->userData))->cbBuffer = 0;
	.line	680
	ldy	#$83
	lda	[<L184+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L184+pctx_1],Y
	sta	<R0+2
	lda	#$0
	ldy	#$2
	sta	[<R0],Y
;						k_debug_long("DefConsoleProc::ProcessId:",p->procId);
	.line	681
	ldy	#$4
	lda	[<L184+p_1],Y
	pha
	ldy	#$2
	lda	[<L184+p_1],Y
	pha
	pea	#^L182+99
	pea	#<L182+99
	jsl	~~k_debug_long
;						k_debug_integer("DefConsoleProc::FX_PROCESS:COM1-COUNT:",((PFXCOMBUFFER)(pctx->userData))->cbBuffer);
	.line	682
	ldy	#$83
	lda	[<L184+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L184+pctx_1],Y
	sta	<R0+2
	ldy	#$2
	lda	[<R0],Y
	pha
	pea	#^L182+126
	pea	#<L182+126
	jsl	~~k_debug_integer
;
;					}
	.line	684
;
;					k_initialize_text_fonts(0);
L10113:
	.line	686
	pea	#<$0
	jsl	~~k_initialize_text_fonts
;
;					k_enable_text_mode();
	.line	688
	jsl	~~k_enable_text_mode
;					setColors();
	.line	689
	jsl	~~setColors
;
;					//k_enable_text_cursor(1);
;					k_enable_text_cursor(0);
	.line	692
	pea	#<$0
	jsl	~~k_enable_text_cursor
;
;
;					//k_set_cursor_position(p->consoleCtl->curX,
;					//		              p->consoleCtl->curY);
;					//k_set_cursor_position(20,20);
;
;
;					k_debug_integer("DefConsoleProc::Initial-lineBufferIndex:",pctx->lineBufferIndex);
	.line	700
	lda	[<L184+pctx_1]
	pha
	pea	#^L182+165
	pea	#<L182+165
	jsl	~~k_debug_integer
;
;
;					//k_user_CreateWindowClass("consoleWindowClass",NULL,0,NULL,NULL,NULL,consoleWindowProc);
;
;					//UART1_BASE[1] = 0x01;
;
;				}
	.line	707
;			}
L10106:
	.line	708
;			else
	brl	L10115
L10105:
;				k_debug_string("DefConsoleProc::FX_INIT_MESSAGE\r\n");
	.line	710
	pea	#^L182+206
	pea	#<L182+206
	jsl	~~k_debug_string
L10115:
;			k_init_spinner(&consolespinctx);
	.line	711
	lda	#<~~consolespinctx
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~k_init_spinner
;			break;
	.line	712
	brl	L10103
;		case FX_UNINIT_MESSAGE:
	.line	713
L10116:
;			break;
	.line	714
	brl	L10103
;		case FX_KEY_UP:
	.line	715
L10117:
;			//k_debug_integer("DefConsoleProc::FX_KEY_UP0:",pMsg->data[0]);
;			//k_debug_integer("DefConsoleProc::FX_KEY_UP1:",pMsg->data[1]);
;			//k_debug_integer("DefConsoleProc::FX_KEY_UP2:",pMsg->data[2]);
;			//k_debug_integer("DefConsoleProc::isShifted:",pctx->isShifted);
;			if(pMsg->data[0] == 182 || pMsg->data[0] == 170)
	.line	720
;			{
	sep	#$20
	longa	off
	ldy	#$16
	lda	[<L183+pMsg_0],Y
	cmp	#<$b6
	rep	#$20
	longa	on
	bne	L197
	brl	L196
L197:
	sep	#$20
	longa	off
	ldy	#$16
	lda	[<L183+pMsg_0],Y
	cmp	#<$aa
	rep	#$20
	longa	on
	beq	L198
	brl	L10118
L198:
L196:
	.line	721
;				pctx->isShifted = FALSE;
	.line	722
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$82
	sta	[<L184+pctx_1],Y
	rep	#$20
	longa	on
;			}
	.line	723
;			else
	brl	L10119
L10118:
;			{
	.line	725
;
;			}
	.line	727
L10119:
;			break;
	.line	728
	brl	L10103
;		case FX_KEY_DOWN:
	.line	729
L10120:
;			//if(p!=NULL)
;			//	k_debug_integer("DefConsoleProc::ProcessId:",p->procId);
;			//k_debug_integer("DefConsoleProc::FX_KEY_DOWN0:",pMsg->data[0]);
;			//k_debug_integer("DefConsoleProc::FX_KEY_DOWN1:",pMsg->data[1]);
;			//k_debug_integer("DefConsoleProc::FX_KEY_DOWN2:",pMsg->data[2]);
;			//k_debug_integer("DefConsoleProc::isShifted:",pctx->isShifted);
;
;			//k_debug_integer("DefConsoleProc::curX:",p->consoleCtl->curX);
;			//k_debug_integer("DefConsoleProc::curY:",p->consoleCtl->curY);
;
;			if(pMsg->data[0] == 54 || pMsg->data[0] == 42)
	.line	740
;			{
	sep	#$20
	longa	off
	ldy	#$16
	lda	[<L183+pMsg_0],Y
	cmp	#<$36
	rep	#$20
	longa	on
	bne	L200
	brl	L199
L200:
	sep	#$20
	longa	off
	ldy	#$16
	lda	[<L183+pMsg_0],Y
	cmp	#<$2a
	rep	#$20
	longa	on
	beq	L201
	brl	L10121
L201:
L199:
	.line	741
;				pctx->isShifted = TRUE;
	.line	742
	sep	#$20
	longa	off
	lda	#$1
	ldy	#$82
	sta	[<L184+pctx_1],Y
	rep	#$20
	longa	on
;			}
	.line	743
;			else
	brl	L10122
L10121:
;			{
	.line	745
;				if(pMsg->data[2] == 13)
	.line	746
;				{
	sep	#$20
	longa	off
	ldy	#$18
	lda	[<L183+pMsg_0],Y
	cmp	#<$d
	rep	#$20
	longa	on
	beq	L202
	brl	L10123
L202:
	.line	747
;					k_put_char(p->consoleCtl->curX,
	.line	748
;										   p->consoleCtl->curY,
;										   95,
;										   0,0);
	pea	#<$0
	pea	#<$0
	pea	#<$5f
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$6
	lda	[<R0],Y
	pha
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$4
	lda	[<R0],Y
	pha
	jsl	~~k_put_char
;
;					p->consoleCtl->curX = 0;
	.line	753
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	lda	#$0
	ldy	#$4
	sta	[<R0],Y
;					p->consoleCtl->curY++;
	.line	754
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$6
	lda	[<R0],Y
	ina
	ldy	#$6
	sta	[<R0],Y
;
;					if(pctx->lineBuffer!=NULL && pctx->lineBufferIndex > 0)
	.line	756
;					{
	clc
	lda	#$2
	adc	<L184+pctx_1
	sta	<R0
	lda	#$0
	adc	<L184+pctx_1+2
	sta	<R0+2
	lda	<R0
	ora	<R0+2
	bne	L203
	brl	L10124
L203:
	sec
	lda	#$0
	sbc	[<L184+pctx_1]
	bvs	L204
	eor	#$8000
L204:
	bpl	L205
	brl	L10124
L205:
	.line	757
;						k_console_process_command(pctx->lineBuffer,p);
	.line	758
	pei	<L184+p_1+2
	pei	<L184+p_1
	clc
	lda	#$2
	adc	<L184+pctx_1
	sta	<R0
	lda	#$0
	adc	<L184+pctx_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~k_console_process_command
;						//k_debug_string("DefConsoleProc::FX_KEY_DOWN:k_console_process_command\r\n");
;					}
	.line	760
;					pctx->lineBufferIndex = 0;
L10124:
	.line	761
	lda	#$0
	sta	[<L184+pctx_1]
;
;				}
	.line	763
;				else if(pMsg->data[2] == 8)
	brl	L10125
L10123:
	.line	764
;				{
	sep	#$20
	longa	off
	ldy	#$18
	lda	[<L183+pMsg_0],Y
	cmp	#<$8
	rep	#$20
	longa	on
	beq	L206
	brl	L10126
L206:
	.line	765
;					k_put_char(p->consoleCtl->curX,
	.line	766
;										   p->consoleCtl->curY,
;										   95,
;										   0,0);
	pea	#<$0
	pea	#<$0
	pea	#<$5f
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$6
	lda	[<R0],Y
	pha
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$4
	lda	[<R0],Y
	pha
	jsl	~~k_put_char
;
;					p->consoleCtl->curX--;
	.line	771
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	clc
	lda	#$ffff
	ldy	#$4
	adc	[<R0],Y
	ldy	#$4
	sta	[<R0],Y
;					if(p->consoleCtl->curX < 0)
	.line	772
;					{
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$4
	lda	[<R0],Y
	bmi	L207
	brl	L10127
L207:
	.line	773
;						p->consoleCtl->curX = p->consoleCtl->maxCols;
	.line	774
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R1
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R1+2
	lda	[<R1]
	ldy	#$4
	sta	[<R0],Y
;						p->consoleCtl->curY--;
	.line	775
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	clc
	lda	#$ffff
	ldy	#$6
	adc	[<R0],Y
	ldy	#$6
	sta	[<R0],Y
;					}
	.line	776
;
;					pctx->lineBuffer[pctx->lineBufferIndex] = 0;
L10127:
	.line	778
	lda	[<L184+pctx_1]
	sta	<R0
	clc
	lda	#$2
	adc	<R0
	sta	<R1
	sep	#$20
	longa	off
	lda	#$0
	ldy	<R1
	sta	[<L184+pctx_1],Y
	rep	#$20
	longa	on
;					pctx->lineBufferIndex = pctx->lineBufferIndex - 1;
	.line	779
	clc
	lda	#$ffff
	adc	[<L184+pctx_1]
	sta	[<L184+pctx_1]
;					if(pctx->lineBufferIndex < 0)
	.line	780
;						pctx->lineBufferIndex = 0;
	lda	[<L184+pctx_1]
	bmi	L208
	brl	L10128
L208:
	.line	781
	lda	#$0
	sta	[<L184+pctx_1]
;
;					pctx->lineBuffer[pctx->lineBufferIndex] = 0;
L10128:
	.line	783
	lda	[<L184+pctx_1]
	sta	<R0
	clc
	lda	#$2
	adc	<R0
	sta	<R1
	sep	#$20
	longa	off
	lda	#$0
	ldy	<R1
	sta	[<L184+pctx_1],Y
	rep	#$20
	longa	on
;
;					if(p->consoleCtl->curY < 0)
	.line	785
;						p->consoleCtl->curY = 0;
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$6
	lda	[<R0],Y
	bmi	L209
	brl	L10129
L209:
	.line	786
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	lda	#$0
	ldy	#$6
	sta	[<R0],Y
;					if(p->consoleCtl->curX < 0)
L10129:
	.line	787
;						p->consoleCtl->curX = 0;
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$4
	lda	[<R0],Y
	bmi	L210
	brl	L10130
L210:
	.line	788
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	lda	#$0
	ldy	#$4
	sta	[<R0],Y
;				}
L10130:
	.line	789
;				else
	brl	L10131
L10126:
;				{
	.line	791
;					k_debug_integer("DefConsoleProc::lineBufferIndexA:",pctx->lineBufferIndex);
	.line	792
	lda	[<L184+pctx_1]
	pha
	pea	#^L182+240
	pea	#<L182+240
	jsl	~~k_debug_integer
;
;					if(pctx->isShifted)
	.line	794
;						decodedKey = k_getKeyboardChar(pMsg->data[0],pMsg->data[1],pctx->isShifted);
	ldy	#$82
	lda	[<L184+pctx_1],Y
	and	#$ff
	bne	L211
	brl	L10132
L211:
	.line	795
	ldy	#$82
	lda	[<L184+pctx_1],Y
	and	#$ff
	pha
	ldy	#$17
	lda	[<L183+pMsg_0],Y
	and	#$ff
	pha
	ldy	#$16
	lda	[<L183+pMsg_0],Y
	pha
	jsl	~~k_getKeyboardChar
	sep	#$20
	longa	off
	sta	<L184+decodedKey_1
	rep	#$20
	longa	on
;					else
	brl	L10133
L10132:
;						decodedKey = pMsg->data[2];
	.line	797
	sep	#$20
	longa	off
	ldy	#$18
	lda	[<L183+pMsg_0],Y
	sta	<L184+decodedKey_1
	rep	#$20
	longa	on
L10133:
;
;					pctx->lineBuffer[pctx->lineBufferIndex] = decodedKey;
	.line	799
	lda	[<L184+pctx_1]
	sta	<R0
	clc
	lda	#$2
	adc	<R0
	sta	<R1
	sep	#$20
	longa	off
	lda	<L184+decodedKey_1
	ldy	<R1
	sta	[<L184+pctx_1],Y
	rep	#$20
	longa	on
;
;					//k_debug_char("KEY:",decodedKey);
;
;
;					if(p->consoleCtl->desktopMode)
	.line	804
;					{
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$31
	lda	[<R0],Y
	and	#$ff
	bne	L212
	brl	L10134
L212:
	.line	805
;
;						k_put_font(decodedKey,p->consoleCtl->curX,p->consoleCtl->curY,p->consoleCtl->fgColor);
	.line	807
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$8
	lda	[<R0],Y
	pha
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R1
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R1+2
	ldy	#$6
	lda	[<R1],Y
	pha
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R1
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R1+2
	ldy	#$4
	lda	[<R1],Y
	pha
	pei	<L184+decodedKey_1
	jsl	~~k_put_font
;
;					}
	.line	809
;					else
	brl	L10135
L10134:
;					{
	.line	811
;
;						k_put_char(p->consoleCtl->curX,
	.line	813
;								   p->consoleCtl->curY,
;								   decodedKey,
;								   p->consoleCtl->fgColor,0);
	pea	#<$0
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$8
	lda	[<R0],Y
	pha
	pei	<L184+decodedKey_1
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$6
	lda	[<R0],Y
	pha
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$4
	lda	[<R0],Y
	pha
	jsl	~~k_put_char
;						consoleBuffer[p->consoleCtl->curY][p->consoleCtl->curX] = decodedKey;
	.line	817
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R1
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R1+2
	ldy	#$4
	lda	[<R1],Y
	asl	A
	sta	<R0
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R1
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R1+2
	ldy	#$6
	lda	[<R1],Y
	ldx	#<$90
	xref	~~~mul
	jsl	~~~mul
	sta	<R1
	clc
	lda	<R1
	adc	<R0
	sta	<R2
	lda	<L184+decodedKey_1
	and	#$ff
	ldx	<R2
	sta	|~~consoleBuffer,X
;					}
	.line	818
L10135:
;
;					pctx->lineBufferIndex = pctx->lineBufferIndex+1;
	.line	820
	lda	[<L184+pctx_1]
	ina
	sta	[<L184+pctx_1]
;					pctx->lineBuffer[pctx->lineBufferIndex] = 0;
	.line	821
	lda	[<L184+pctx_1]
	sta	<R0
	clc
	lda	#$2
	adc	<R0
	sta	<R1
	sep	#$20
	longa	off
	lda	#$0
	ldy	<R1
	sta	[<L184+pctx_1],Y
	rep	#$20
	longa	on
;
;					if(pctx->lineBufferIndex > 127)
	.line	823
;					{
	sec
	lda	#$7f
	sbc	[<L184+pctx_1]
	bvs	L213
	eor	#$8000
L213:
	bpl	L214
	brl	L10136
L214:
	.line	824
;						k_exec_throw_exception(0,0,"lineBufferIndex too large",-1);
	.line	825
	pea	#<$ffffffff
	pea	#^L182+274
	pea	#<L182+274
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	jsl	~~k_exec_throw_exception
;					}
	.line	826
;					//k_debug_integer("DefConsoleProc::lineBufferIndexB:",pctx->lineBufferIndex);
;					//k_debug_string("DefConsoleProc::lineBuffer:");
;					//k_debug_string(pctx->lineBuffer);
;					//k_debug_string("\r\n");
;
;					p->consoleCtl->curX++;
L10136:
	.line	832
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$4
	lda	[<R0],Y
	ina
	ldy	#$4
	sta	[<R0],Y
;					if(p->consoleCtl->curX >= p->consoleCtl->maxCols)
	.line	833
;					{
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R1
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R1+2
	sec
	ldy	#$4
	lda	[<R1],Y
	sbc	[<R0]
	bvs	L215
	eor	#$8000
L215:
	bmi	L216
	brl	L10137
L216:
	.line	834
;						p->consoleCtl->curX = 0;
	.line	835
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	lda	#$0
	ldy	#$4
	sta	[<R0],Y
;						p->consoleCtl->curY++;
	.line	836
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$6
	lda	[<R0],Y
	ina
	ldy	#$6
	sta	[<R0],Y
;					}
	.line	837
;				}
L10137:
	.line	838
L10131:
L10125:
;
;				if(p->consoleCtl->curY > 50)
	.line	840
;				{
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	sec
	lda	#$32
	ldy	#$6
	sbc	[<R0],Y
	bvs	L217
	eor	#$8000
L217:
	bpl	L218
	brl	L10138
L218:
	.line	841
;					k_send_process_command_message(p,FX_SCROLLBAR_COMMAND,CTL_VERT_SCROLL,0,1L,0L);
	.line	842
	pea	#^$0
	pea	#<$0
	pea	#^$1
	pea	#<$1
	pea	#<$0
	pea	#<$1
	pea	#<$fa02
	pei	<L184+p_1+2
	pei	<L184+p_1
	jsl	~~k_send_process_command_message
;				}
	.line	843
;			}
L10138:
	.line	844
L10122:
;
;			//k_enable_text_cursor();
;			//k_set_cursor_position(p->consoleCtl->curX+1,p->consoleCtl->curY);
;			//k_set_cursor_position(20,20);
;
;			break;
	.line	850
	brl	L10103
;		case FX_DISK_INSERT:
	.line	851
L10139:
;
;			k_debug_string("DefConsoleProc::DISK-INSERT:");
	.line	853
	pea	#^L182+300
	pea	#<L182+300
	jsl	~~k_debug_string
;			if(((PDISKINFO)pMsg->pheap)->stgName)
	.line	854
;			{
	ldy	#$e
	lda	[<L183+pMsg_0],Y
	ldy	#$10
	ora	[<L183+pMsg_0],Y
	bne	L219
	brl	L10140
L219:
	.line	855
;				k_debug_string(((PDISKINFO)pMsg->pheap)->stgName);
	.line	856
	ldy	#$10
	lda	[<L183+pMsg_0],Y
	pha
	ldy	#$e
	lda	[<L183+pMsg_0],Y
	pha
	jsl	~~k_debug_string
;			}
	.line	857
;			else
	brl	L10141
L10140:
;			{
	.line	859
;				k_debug_string("NULL");
	.line	860
	pea	#^L182+329
	pea	#<L182+329
	jsl	~~k_debug_string
;			}
	.line	861
L10141:
;			k_debug_string("\r\n");
	.line	862
	pea	#^L182+334
	pea	#<L182+334
	jsl	~~k_debug_string
;
;			((PDISKINFO)pMsg->pheap)->stgName[31] = 0;
	.line	864
	ldy	#$e
	lda	[<L183+pMsg_0],Y
	sta	<R0
	ldy	#$10
	lda	[<L183+pMsg_0],Y
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$1f
	sta	[<R0],Y
	rep	#$20
	longa	on
;
;			if(p->consoleCtl->desktopMode)
	.line	866
;			{
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$31
	lda	[<R0],Y
	and	#$ff
	bne	L220
	brl	L10142
L220:
	.line	867
;				if(p->desktopCtl->currentDiskName && strcmp( k_to_uppercase(  ((PDISKINFO)pMsg->pheap)->stgName),p->desktopCtl->currentDiskName) == 0)
	.line	868
;				{
	ldy	#$58
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$5a
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$11
	lda	[<R0],Y
	ldy	#$13
	ora	[<R0],Y
	bne	L221
	brl	L10143
L221:
	ldy	#$58
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$5a
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$13
	lda	[<R0],Y
	pha
	ldy	#$11
	lda	[<R0],Y
	pha
	ldy	#$10
	lda	[<L183+pMsg_0],Y
	pha
	ldy	#$e
	lda	[<L183+pMsg_0],Y
	pha
	jsl	~~k_to_uppercase
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~strcmp
	tax
	beq	L222
	brl	L10143
L222:
	.line	869
;					k_debug_string("DefConsoleProc::DISK-INSERT:NO-CHANGE\r\n");
	.line	870
	pea	#^L182+337
	pea	#<L182+337
	jsl	~~k_debug_string
;				}
	.line	871
;				else
	brl	L10144
L10143:
;				{
	.line	873
;
;
;					if(p->desktopCtl->currentDiskName)
	.line	876
;					{
	ldy	#$58
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$5a
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$11
	lda	[<R0],Y
	ldy	#$13
	ora	[<R0],Y
	bne	L223
	brl	L10145
L223:
	.line	877
;						temp1 = strlen(p->desktopCtl->currentDiskName);
	.line	878
	ldy	#$58
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$5a
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$13
	lda	[<R0],Y
	pha
	ldy	#$11
	lda	[<R0],Y
	pha
	jsl	~~strlen
	sta	<L184+temp1_1
;						temp2 = (temp1*4);
	.line	879
	lda	<L184+temp1_1
	asl	A
	asl	A
	sta	<L184+temp2_1
;						k_put_winicon_point(ICON_DISK,640 - (40 + temp2/2),20,p->desktopCtl->backgroundColor,PAINTMODE_BACKGROUND);
	.line	880
	pea	#<$f0
	ldy	#$58
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$5a
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$5
	lda	[<R0],Y
	pha
	pea	#<$14
	lda	<L184+temp2_1
	ldx	#<$2
	xref	~~~div
	jsl	~~~div
	sta	<R0
	clc
	lda	#$28
	adc	<R0
	sta	<R1
	sec
	lda	#$280
	sbc	<R1
	pha
	pea	#<$3
	jsl	~~k_put_winicon_point
;						k_draw_text_point(p->desktopCtl->currentDiskName,640 - (35 + temp2/2) - (temp2),40,p->desktopCtl->backgroundColor);
	.line	881
	ldy	#$58
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$5a
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$5
	lda	[<R0],Y
	pha
	pea	#<$28
	lda	<L184+temp2_1
	ldx	#<$2
	xref	~~~div
	jsl	~~~div
	sta	<R1
	clc
	lda	#$23
	adc	<R1
	sta	<R2
	sec
	lda	#$280
	sbc	<R2
	sta	<R1
	sec
	lda	<R1
	sbc	<L184+temp2_1
	pha
	ldy	#$58
	lda	[<L184+p_1],Y
	sta	<R1
	ldy	#$5a
	lda	[<L184+p_1],Y
	sta	<R1+2
	ldy	#$13
	lda	[<R1],Y
	pha
	ldy	#$11
	lda	[<R1],Y
	pha
	jsl	~~k_draw_text_point
;					}
	.line	882
;
;					temp1 = strlen(((PDISKINFO)pMsg->pheap)->stgName);
L10145:
	.line	884
	ldy	#$10
	lda	[<L183+pMsg_0],Y
	pha
	ldy	#$e
	lda	[<L183+pMsg_0],Y
	pha
	jsl	~~strlen
	sta	<L184+temp1_1
;					temp2 = (temp1*4);
	.line	885
	lda	<L184+temp1_1
	asl	A
	asl	A
	sta	<L184+temp2_1
;
;					k_put_winicon_point(ICON_DISK,640 - (40 + temp2/2),20,0,PAINTMODE_DEFAULT);
	.line	887
	pea	#<$0
	pea	#<$0
	pea	#<$14
	lda	<L184+temp2_1
	ldx	#<$2
	xref	~~~div
	jsl	~~~div
	sta	<R0
	clc
	lda	#$28
	adc	<R0
	sta	<R1
	sec
	lda	#$280
	sbc	<R1
	pha
	pea	#<$3
	jsl	~~k_put_winicon_point
;					k_draw_text_point(k_to_uppercase(((PDISKINFO)pMsg->pheap)->stgName),640 - (35 + temp2/2) - (temp2),40,0);
	.line	888
	pea	#<$0
	pea	#<$28
	lda	<L184+temp2_1
	ldx	#<$2
	xref	~~~div
	jsl	~~~div
	sta	<R0
	clc
	lda	#$23
	adc	<R0
	sta	<R1
	sec
	lda	#$280
	sbc	<R1
	sta	<R0
	sec
	lda	<R0
	sbc	<L184+temp2_1
	pha
	ldy	#$10
	lda	[<L183+pMsg_0],Y
	pha
	ldy	#$e
	lda	[<L183+pMsg_0],Y
	pha
	jsl	~~k_to_uppercase
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_draw_text_point
;
;					if(p->desktopCtl->currentDiskName!=NULL)
	.line	890
;						k_mem_deallocate_heap(p->desktopCtl->currentDiskName);
	ldy	#$58
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$5a
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$11
	lda	[<R0],Y
	ldy	#$13
	ora	[<R0],Y
	bne	L224
	brl	L10146
L224:
	.line	891
	ldy	#$58
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$5a
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$13
	lda	[<R0],Y
	pha
	ldy	#$11
	lda	[<R0],Y
	pha
	jsl	~~k_mem_deallocate_heap
;
;					p->desktopCtl->currentDiskName = k_string_copy_string(((PDISKINFO)pMsg->pheap)->stgName);
L10146:
	.line	893
	ldy	#$58
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$5a
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$10
	lda	[<L183+pMsg_0],Y
	pha
	ldy	#$e
	lda	[<L183+pMsg_0],Y
	pha
	jsl	~~k_string_copy_string
	sta	<R1
	stx	<R1+2
	lda	<R1
	ldy	#$11
	sta	[<R0],Y
	lda	<R1+2
	ldy	#$13
	sta	[<R0],Y
;
;					pcd = k_mem_allocate_heap(sizeof(CLICKDETECTED));
	.line	895
	pea	#<$8
	jsl	~~k_mem_allocate_heap
	sta	<L184+pcd_1
	stx	<L184+pcd_1+2
;					if(pcd)
	.line	896
;					{
	lda	<L184+pcd_1
	ora	<L184+pcd_1+2
	bne	L225
	brl	L10147
L225:
	.line	897
;						pcd->window  = k_create_ui_window_class(640 - (40 + temp2/2),20,ICONH,ICONW,"disk","icon",NULL);
	.line	898
	pea	#^$0
	pea	#<$0
	pea	#^L182+382
	pea	#<L182+382
	pea	#^L182+377
	pea	#<L182+377
	pea	#<$10
	pea	#<$10
	pea	#<$14
	lda	<L184+temp2_1
	ldx	#<$2
	xref	~~~div
	jsl	~~~div
	sta	<R0
	clc
	lda	#$28
	adc	<R0
	sta	<R1
	sec
	lda	#$280
	sbc	<R1
	pha
	jsl	~~k_create_ui_window_class
	sta	<R0
	stx	<R0+2
	lda	<R0
	sta	[<L184+pcd_1]
	lda	<R0+2
	ldy	#$2
	sta	[<L184+pcd_1],Y
;						pcd->handler = ObjectClicked;
	.line	899
	lda	#<~~ObjectClicked
	ldy	#$4
	sta	[<L184+pcd_1],Y
	lda	#^~~ObjectClicked
	ldy	#$6
	sta	[<L184+pcd_1],Y
;						k_add_window_hit_node(pcd);
	.line	900
	pei	<L184+pcd_1+2
	pei	<L184+pcd_1
	jsl	~~k_add_window_hit_node
;					}
	.line	901
;
;					k_debug_message("DefConsoleProc::DISK-INSERT:DISK:",p->desktopCtl->currentDiskName);
L10147:
	.line	903
	ldy	#$58
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$5a
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$13
	lda	[<R0],Y
	pha
	ldy	#$11
	lda	[<R0],Y
	pha
	pea	#^L182+387
	pea	#<L182+387
	jsl	~~k_debug_message
;				}
	.line	904
L10144:
;			}
	.line	905
;			else
	brl	L10148
L10142:
;			{
	.line	907
;				if(pMsg && pMsg->pheap)
	.line	908
;					k_put_string(0,51,((PDISKINFO)pMsg->pheap)->stgName,15,0);
	lda	<L183+pMsg_0
	ora	<L183+pMsg_0+2
	bne	L226
	brl	L10149
L226:
	ldy	#$e
	lda	[<L183+pMsg_0],Y
	ldy	#$10
	ora	[<L183+pMsg_0],Y
	bne	L227
	brl	L10149
L227:
	.line	909
	pea	#<$0
	pea	#<$f
	ldy	#$10
	lda	[<L183+pMsg_0],Y
	pha
	ldy	#$e
	lda	[<L183+pMsg_0],Y
	pha
	pea	#<$33
	pea	#<$0
	jsl	~~k_put_string
;			}
L10149:
	.line	910
L10148:
;
;			break;
	.line	912
	brl	L10103
;		case FX_DISK_REMOVE:
	.line	913
L10150:
;
;			k_debug_string("DefConsoleProc::DISK-REMOVE\r\n");
	.line	915
	pea	#^L182+421
	pea	#<L182+421
	jsl	~~k_debug_string
;
;			if(p->consoleCtl->desktopMode )
	.line	917
;			{
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$31
	lda	[<R0],Y
	and	#$ff
	bne	L228
	brl	L10151
L228:
	.line	918
;				if(p->desktopCtl->currentDiskName)
	.line	919
;				{
	ldy	#$58
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$5a
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$11
	lda	[<R0],Y
	ldy	#$13
	ora	[<R0],Y
	bne	L229
	brl	L10152
L229:
	.line	920
;					k_debug_message("DefConsoleProc::DISK-REMOVE:DISK:",p->desktopCtl->currentDiskName);
	.line	921
	ldy	#$58
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$5a
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$13
	lda	[<R0],Y
	pha
	ldy	#$11
	lda	[<R0],Y
	pha
	pea	#^L182+451
	pea	#<L182+451
	jsl	~~k_debug_message
;					k_debug_integer("DefConsoleProc::DISK-REMOVE:backgroundColor:",p->desktopCtl->backgroundColor);
	.line	922
	ldy	#$58
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$5a
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$5
	lda	[<R0],Y
	pha
	pea	#^L182+485
	pea	#<L182+485
	jsl	~~k_debug_integer
;
;					temp1 = strlen(p->desktopCtl->currentDiskName);
	.line	924
	ldy	#$58
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$5a
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$13
	lda	[<R0],Y
	pha
	ldy	#$11
	lda	[<R0],Y
	pha
	jsl	~~strlen
	sta	<L184+temp1_1
;					temp2 = (temp1*4);
	.line	925
	lda	<L184+temp1_1
	asl	A
	asl	A
	sta	<L184+temp2_1
;
;					k_put_winicon_point(ICON_DISK,640 - (40 + temp2/2),20,p->desktopCtl->backgroundColor,PAINTMODE_BACKGROUND);
	.line	927
	pea	#<$f0
	ldy	#$58
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$5a
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$5
	lda	[<R0],Y
	pha
	pea	#<$14
	lda	<L184+temp2_1
	ldx	#<$2
	xref	~~~div
	jsl	~~~div
	sta	<R0
	clc
	lda	#$28
	adc	<R0
	sta	<R1
	sec
	lda	#$280
	sbc	<R1
	pha
	pea	#<$3
	jsl	~~k_put_winicon_point
;					k_draw_text_point(p->desktopCtl->currentDiskName,640 - (35 + temp2/2) - (temp2),40,p->desktopCtl->backgroundColor);
	.line	928
	ldy	#$58
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$5a
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$5
	lda	[<R0],Y
	pha
	pea	#<$28
	lda	<L184+temp2_1
	ldx	#<$2
	xref	~~~div
	jsl	~~~div
	sta	<R1
	clc
	lda	#$23
	adc	<R1
	sta	<R2
	sec
	lda	#$280
	sbc	<R2
	sta	<R1
	sec
	lda	<R1
	sbc	<L184+temp2_1
	pha
	ldy	#$58
	lda	[<L184+p_1],Y
	sta	<R1
	ldy	#$5a
	lda	[<L184+p_1],Y
	sta	<R1+2
	ldy	#$13
	lda	[<R1],Y
	pha
	ldy	#$11
	lda	[<R1],Y
	pha
	jsl	~~k_draw_text_point
;
;					if(p->desktopCtl->currentDiskName!=NULL)
	.line	930
;						k_mem_deallocate_heap(p->desktopCtl->currentDiskName);
	ldy	#$58
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$5a
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$11
	lda	[<R0],Y
	ldy	#$13
	ora	[<R0],Y
	bne	L230
	brl	L10153
L230:
	.line	931
	ldy	#$58
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$5a
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$13
	lda	[<R0],Y
	pha
	ldy	#$11
	lda	[<R0],Y
	pha
	jsl	~~k_mem_deallocate_heap
;
;					p->desktopCtl->currentDiskName = NULL;
L10153:
	.line	933
	ldy	#$58
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$5a
	lda	[<L184+p_1],Y
	sta	<R0+2
	lda	#$0
	ldy	#$11
	sta	[<R0],Y
	lda	#$0
	ldy	#$13
	sta	[<R0],Y
;				}
	.line	934
;			}
L10152:
	.line	935
;			else
	brl	L10154
L10151:
;				k_put_string(0,51,"No Disk Detected                               ",15,0);
	.line	937
	pea	#<$0
	pea	#<$f
	pea	#^L182+530
	pea	#<L182+530
	pea	#<$33
	pea	#<$0
	jsl	~~k_put_string
L10154:
;
;			break;
	.line	939
	brl	L10103
;		case FX_APP_MESSAGE:
	.line	940
L10155:
;			k_debug_string("DefConsoleProc::FX_APP_MESSAGE\r\n");
	.line	941
	pea	#^L182+578
	pea	#<L182+578
	jsl	~~k_debug_string
;			if(pMsg->pheap)
	.line	942
;			{
	ldy	#$e
	lda	[<L183+pMsg_0],Y
	ldy	#$10
	ora	[<L183+pMsg_0],Y
	bne	L231
	brl	L10156
L231:
	.line	943
;				if(((PCOMMANDARGS)pMsg->pheap)->proc)
	.line	944
;				{
	ldy	#$e
	lda	[<L183+pMsg_0],Y
	sta	<R0
	ldy	#$10
	lda	[<L183+pMsg_0],Y
	sta	<R0+2
	lda	[<R0]
	ldy	#$2
	ora	[<R0],Y
	bne	L232
	brl	L10157
L232:
	.line	945
;					((PCOMMANDARGS)pMsg->pheap)->proc(p,((PCOMMANDARGS)pMsg->pheap)->tokens);
	.line	946
	ldy	#$e
	lda	[<L183+pMsg_0],Y
	sta	<R0
	ldy	#$10
	lda	[<L183+pMsg_0],Y
	sta	<R0+2
	ldy	#$6
	lda	[<R0],Y
	pha
	ldy	#$4
	lda	[<R0],Y
	pha
	pei	<L184+p_1+2
	pei	<L184+p_1
	ldy	#$e
	lda	[<L183+pMsg_0],Y
	sta	<R0
	ldy	#$10
	lda	[<L183+pMsg_0],Y
	sta	<R0+2
	ldy	#$2
	lda	[<R0],Y
	tax
	lda	[<R0]
	xref	~~~lcal
	jsl	~~~lcal
;					//((FXCommandHandler)pMsg->pheap)(p);
;				}
	.line	948
;				else
	brl	L10158
L10157:
;				{
	.line	950
;					k_debug_string("DefConsoleProc::FX_APP_MESSAGE BAD PROC\r\n");
	.line	951
	pea	#^L182+611
	pea	#<L182+611
	jsl	~~k_debug_string
;				}
	.line	952
L10158:
;
;				k_mem_deallocate_heap(pMsg->pheap);
	.line	954
	ldy	#$10
	lda	[<L183+pMsg_0],Y
	pha
	ldy	#$e
	lda	[<L183+pMsg_0],Y
	pha
	jsl	~~k_mem_deallocate_heap
;				pMsg->pheap = NULL;
	.line	955
	lda	#$0
	ldy	#$e
	sta	[<L183+pMsg_0],Y
	lda	#$0
	ldy	#$10
	sta	[<L183+pMsg_0],Y
;			}
	.line	956
;			k_debug_string("DefConsoleProc::FX_APP_MESSAGE exit\r\n");
L10156:
	.line	957
	pea	#^L182+653
	pea	#<L182+653
	jsl	~~k_debug_string
;			break;
	.line	958
	brl	L10103
;		case FX_MOUSE_MOVE:
	.line	959
L10159:
;			//if(p->consoleCtl->desktopMode )
;			//	OnMouse(p,pMsg->data[0],MAKEWORD(pMsg->data[1],pMsg->data[2]),MAKEWORD(pMsg->data[3],pMsg->data[4]));
;			break;
	.line	962
	brl	L10103
;
;		case FX_RBUTTON_DOWN:
	.line	964
L10160:
;			k_debug_string("DefConsoleProc::FX_RBUTTON_DOWN\r\n");
	.line	965
	pea	#^L182+691
	pea	#<L182+691
	jsl	~~k_debug_string
;			//k_exec_throw_exception(0xFF000000,1,"Test Exception Mode Messages",-1);
;			break;
	.line	967
	brl	L10103
;
;		case FX_LBUTTON_DOWN:
	.line	969
L10161:
;			k_debug_string("DefConsoleProc::FX_LBUTTON_DOWN\r\n");
	.line	970
	pea	#^L182+725
	pea	#<L182+725
	jsl	~~k_debug_string
;
;
;			break;
	.line	973
	brl	L10103
;		case FX_LBUTTON_UP:
	.line	974
L10162:
;			k_debug_string("DefConsoleProc::FX_LBUTTON_UP\r\n");
	.line	975
	pea	#^L182+759
	pea	#<L182+759
	jsl	~~k_debug_string
;			break;
	.line	976
	brl	L10103
;		case FX_LBUTTON_DRAG:
	.line	977
L10163:
;			k_debug_string("DefConsoleProc::FX_LBUTTON_DRAG\r\n");
	.line	978
	pea	#^L182+791
	pea	#<L182+791
	jsl	~~k_debug_string
;			break;
	.line	979
	brl	L10103
;		case FX_LBUTTON_DBLCLICK:
	.line	980
L10164:
;			k_debug_string("DefConsoleProc::FX_LBUTTON_DBLCLICK\r\n");
	.line	981
	pea	#^L182+825
	pea	#<L182+825
	jsl	~~k_debug_string
;			break;
	.line	982
	brl	L10103
;
;		case FX_WINDOW_TOFRONT:
	.line	984
L10165:
;			k_debug_string("DefConsoleProc::FX_WINDOW_TOFRONT\r\n");
	.line	985
	pea	#^L182+863
	pea	#<L182+863
	jsl	~~k_debug_string
;
;			k_vdraw_ui_window(NULL,FXWS_OVERLAPPED,25,25,200,300,"Clicked FRONT",15,3);
	.line	987
	pea	#<$3
	pea	#<$f
	pea	#^L182+899
	pea	#<L182+899
	pea	#<$12c
	pea	#<$c8
	pea	#<$19
	pea	#<$19
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	jsl	~~k_vdraw_ui_window
;
;			break;
	.line	989
	brl	L10103
;		case FX_WINDOW_TOBACK:
	.line	990
L10166:
;			k_debug_string("DefConsoleProc::FX_WINDOW_TOBACK\r\n");
	.line	991
	pea	#^L182+913
	pea	#<L182+913
	jsl	~~k_debug_string
;
;			k_vdraw_ui_window(NULL,FXWS_OVERLAPPED,250,250,150,200,"Clicked BACK",15,3);
	.line	993
	pea	#<$3
	pea	#<$f
	pea	#^L182+948
	pea	#<L182+948
	pea	#<$c8
	pea	#<$96
	pea	#<$fa
	pea	#<$fa
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	jsl	~~k_vdraw_ui_window
;
;			break;
	.line	995
	brl	L10103
;		case FX_COM1_DATA:
	.line	996
L10167:
;			//if(pMsg->data[0]>64)
;			//	k_debug_char("DefConsoleProc::FX_COM1_DATA:",(CHAR)pMsg->data[0]);
;			break;
	.line	999
	brl	L10103
;		case FX_COM2_DATA:
	.line	1000
L10168:
;			//k_debug_string("DefConsoleProc::FX_COM2_DATA\r\n");
;			break;
	.line	1002
	brl	L10103
;		case FX_PROCESS:
	.line	1003
L10169:
;			//k_debug_string("DefConsoleProc::FX_PROCESS\r\n");
;
;			pctx = (PCONSOLECTX)p->ctx;
	.line	1006
	ldy	#$a
	lda	[<L184+p_1],Y
	sta	<L184+pctx_1
	ldy	#$c
	lda	[<L184+p_1],Y
	sta	<L184+pctx_1+2
;
;
;			//k_updatespinner(3,40,&consolespinctx);
;			/*
;			for(i=0;i<100;i++)
;			{
;				asm NOP;
;			}
;			*/
;
;			if(((PFXCOMBUFFER)(pctx->userData))->cbBuffer == -1)
	.line	1017
;			{
	ldy	#$83
	lda	[<L184+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L184+pctx_1],Y
	sta	<R0+2
	ldy	#$2
	lda	[<R0],Y
	cmp	#<$ffffffff
	beq	L233
	brl	L10170
L233:
	.line	1018
;				ptr = strtok(((PFXCOMBUFFER)(pctx->userData))->buffer, "\n");
	.line	1019
	pea	#^L182+961
	pea	#<L182+961
	clc
	lda	#$4
	ldy	#$83
	adc	[<L184+pctx_1],Y
	sta	<R0
	lda	#$0
	ldy	#$85
	adc	[<L184+pctx_1],Y
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~strtok
	sta	<L184+ptr_1
	stx	<L184+ptr_1+2
;
;				while( ptr != NULL )
	.line	1021
L10171:
	lda	<L184+ptr_1
	ora	<L184+ptr_1+2
	bne	L234
	brl	L10172
L234:
;				{
	.line	1022
;					if(*ptr!='%')
	.line	1023
;					{
	sep	#$20
	longa	off
	lda	[<L184+ptr_1]
	cmp	#<$25
	rep	#$20
	longa	on
	bne	L235
	brl	L10173
L235:
	.line	1024
;						k_put_string(p->consoleCtl->curX,p->consoleCtl->curY,ptr,15,0);
	.line	1025
	pea	#<$0
	pea	#<$f
	pei	<L184+ptr_1+2
	pei	<L184+ptr_1
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$6
	lda	[<R0],Y
	pha
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$4
	lda	[<R0],Y
	pha
	jsl	~~k_put_string
;						p->consoleCtl->curX = 0;
	.line	1026
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	lda	#$0
	ldy	#$4
	sta	[<R0],Y
;						p->consoleCtl->curY++;
	.line	1027
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$6
	lda	[<R0],Y
	ina
	ldy	#$6
	sta	[<R0],Y
;					}
	.line	1028
;					ptr = strtok(NULL, "\n");
L10173:
	.line	1029
	pea	#^L182+963
	pea	#<L182+963
	pea	#^$0
	pea	#<$0
	jsl	~~strtok
	sta	<L184+ptr_1
	stx	<L184+ptr_1+2
;				}
	.line	1030
	brl	L10171
L10172:
;
;				((PFXCOMBUFFER)(pctx->userData))->cbBuffer = 0;
	.line	1032
	ldy	#$83
	lda	[<L184+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L184+pctx_1],Y
	sta	<R0+2
	lda	#$0
	ldy	#$2
	sta	[<R0],Y
;				memset(((PFXCOMBUFFER)(pctx->userData))->buffer,0,256);
	.line	1033
	pea	#<$100
	pea	#<$0
	clc
	lda	#$4
	ldy	#$83
	adc	[<L184+pctx_1],Y
	sta	<R0
	lda	#$0
	ldy	#$85
	adc	[<L184+pctx_1],Y
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~memset
;			}
	.line	1034
;
;			//k_debug_integer("DefConsoleProc::FX_PROCESS:COM1 DATA:",serial);
;			while(UART1_BASE[UART_LSR] & 0x01)
L10170:
	.line	1037
L10174:
	sep	#$20
	longa	off
	lda	>11473917
	and	#<$1
	rep	#$20
	longa	on
	bne	L236
	brl	L10175
L236:
;			{
	.line	1038
;				serial = UART1_BASE[0];
	.line	1039
	sep	#$20
	longa	off
	lda	>11473912
	sta	<L184+serial_1
	rep	#$20
	longa	on
;
;				//k_debug_long("DefConsoleProc::ProcessId:",p->procId);
;				//k_debug_pointer("DefConsoleProc::p->ctx:",p->ctx);
;				//k_debug_pointer("DefConsoleProc::pctx->userData:",pctx->userData);
;				//k_debug_hex("DefConsoleProc::FX_PROCESS:COM1 DATA:",serial);
;
;				temp3 = ((PFXCOMBUFFER)(pctx->userData))->cbBuffer;
	.line	1046
	ldy	#$83
	lda	[<L184+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L184+pctx_1],Y
	sta	<R0+2
	ldy	#$2
	lda	[<R0],Y
	sta	<L184+temp3_1
;
;				//k_debug_integer("DefConsoleProc::FX_PROCESS:COM1-COUNT:",temp3);
;
;				((PFXCOMBUFFER)(pctx->userData))->buffer[temp3] = (UCHAR)serial;
	.line	1050
	ldy	#$83
	lda	[<L184+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L184+pctx_1],Y
	sta	<R0+2
	clc
	lda	#$4
	adc	<L184+temp3_1
	sta	<R1
	sep	#$20
	longa	off
	lda	<L184+serial_1
	ldy	<R1
	sta	[<R0],Y
	rep	#$20
	longa	on
;				((PFXCOMBUFFER)(pctx->userData))->cbBuffer++;
	.line	1051
	ldy	#$83
	lda	[<L184+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L184+pctx_1],Y
	sta	<R0+2
	ldy	#$2
	lda	[<R0],Y
	ina
	ldy	#$2
	sta	[<R0],Y
;
;				//if(serial == 13)
;				if(((PFXCOMBUFFER)(pctx->userData))->cbBuffer > 255 || serial == '\n')
	.line	1054
;				{
	ldy	#$83
	lda	[<L184+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L184+pctx_1],Y
	sta	<R0+2
	lda	#$ff
	ldy	#$2
	cmp	[<R0],Y
	bcs	L238
	brl	L237
L238:
	sep	#$20
	longa	off
	lda	<L184+serial_1
	cmp	#<$a
	rep	#$20
	longa	on
	beq	L239
	brl	L10176
L239:
L237:
	.line	1055
;					//k_debug_strings("DefConsoleProc::FX_PROCESS:COM1-BUFFER:",((PFXCOMBUFFER)(pctx->userData))->buffer);
;					k_debug_string(((PFXCOMBUFFER)(pctx->userData))->buffer);
	.line	1057
	clc
	lda	#$4
	ldy	#$83
	adc	[<L184+pctx_1],Y
	sta	<R0
	lda	#$0
	ldy	#$85
	adc	[<L184+pctx_1],Y
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~k_debug_string
;					//k_debug_hex("DefConsoleProc::FX_PROCESS:COM1 DATA:",serial);
;					//k_debug_integer("DefConsoleProc::FX_PROCESS:COM1-COUNT:",temp3);
;					((PFXCOMBUFFER)(pctx->userData))->cbBuffer = -1;
	.line	1060
	ldy	#$83
	lda	[<L184+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L184+pctx_1],Y
	sta	<R0+2
	lda	#$ffff
	ldy	#$2
	sta	[<R0],Y
;					//memset(((PFXCOMBUFFER)(pctx->userData))->buffer,0,32);
;					break;
	.line	1062
	brl	L10175
;				}
	.line	1063
;			}
L10176:
	.line	1064
	brl	L10174
L10175:
;
;			//k_debug_integer("DefConsoleProc::FX_PROCESS:lineBufferIndex:",pctx->lineBufferIndex);
;			break;
	.line	1067
	brl	L10103
;		case FX_CONTROL_COMMAND:
	.line	1068
L10177:
;			k_debug_string("DefConsoleProc::FX_CONTROL_COMMAND\r\n");
	.line	1069
	pea	#^L182+965
	pea	#<L182+965
	jsl	~~k_debug_string
;			if( MSGCMDID(pMsg) == CTL_CMD_CAPTION )
	.line	1070
;			{
	ldy	#$16
	lda	[<L183+pMsg_0],Y
	cmp	#<$1
	beq	L240
	brl	L10178
L240:
	.line	1071
;				captionText = (LPCHAR)MSGCMDPARM1(pMsg);
	.line	1072
	ldy	#$1a
	lda	[<L183+pMsg_0],Y
	sta	<L184+captionText_1
	ldy	#$1c
	lda	[<L183+pMsg_0],Y
	sta	<L184+captionText_1+2
;				if(captionText)
	.line	1073
;				{
	lda	<L184+captionText_1
	ora	<L184+captionText_1+2
	bne	L241
	brl	L10179
L241:
	.line	1074
;					k_debug_strings("DefConsoleProc::CTL_CMD_CAPTION:",captionText);
	.line	1075
	pei	<L184+captionText_1+2
	pei	<L184+captionText_1
	pea	#^L182+1002
	pea	#<L182+1002
	jsl	~~k_debug_strings
;
;					p->consoleCtl->curX = 0;
	.line	1077
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	lda	#$0
	ldy	#$4
	sta	[<R0],Y
;					//p->consoleCtl->curY++;
;
;					k_put_string(p->consoleCtl->curX,p->consoleCtl->curY,captionText,15,0);
	.line	1080
	pea	#<$0
	pea	#<$f
	pei	<L184+captionText_1+2
	pei	<L184+captionText_1
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$6
	lda	[<R0],Y
	pha
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$4
	lda	[<R0],Y
	pha
	jsl	~~k_put_string
;
;					i=p->consoleCtl->curX;
	.line	1082
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$4
	lda	[<R0],Y
	sta	<L184+i_1
;					ptr = captionText;
	.line	1083
	lda	<L184+captionText_1
	sta	<L184+ptr_1
	lda	<L184+captionText_1+2
	sta	<L184+ptr_1+2
;					while(*ptr)
	.line	1084
L10180:
	lda	[<L184+ptr_1]
	and	#$ff
	bne	L242
	brl	L10181
L242:
;					{
	.line	1085
;						consoleBuffer[p->consoleCtl->curY][i] = *ptr;
	.line	1086
	lda	<L184+i_1
	asl	A
	sta	<R0
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R1
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R1+2
	ldy	#$6
	lda	[<R1],Y
	ldx	#<$90
	xref	~~~mul
	jsl	~~~mul
	sta	<R1
	clc
	lda	<R1
	adc	<R0
	sta	<R2
	lda	[<L184+ptr_1]
	and	#$ff
	ldx	<R2
	sta	|~~consoleBuffer,X
;						i++;
	.line	1087
	inc	<L184+i_1
;						ptr++;
	.line	1088
	inc	<L184+ptr_1
	bne	L243
	inc	<L184+ptr_1+2
L243:
;					}
	.line	1089
	brl	L10180
L10181:
;
;					p->consoleCtl->curX = 0;
	.line	1091
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	lda	#$0
	ldy	#$4
	sta	[<R0],Y
;					p->consoleCtl->curY++;
	.line	1092
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$6
	lda	[<R0],Y
	ina
	ldy	#$6
	sta	[<R0],Y
;
;					k_debug_integer("DefConsoleProc::curY:",p->consoleCtl->curY);
	.line	1094
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$6
	lda	[<R0],Y
	pha
	pea	#^L182+1035
	pea	#<L182+1035
	jsl	~~k_debug_integer
;
;					if(p->consoleCtl->curY > 50)
	.line	1096
;					{
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	sec
	lda	#$32
	ldy	#$6
	sbc	[<R0],Y
	bvs	L244
	eor	#$8000
L244:
	bpl	L245
	brl	L10182
L245:
	.line	1097
;						k_scroll_screen(p);
	.line	1098
	pei	<L184+p_1+2
	pei	<L184+p_1
	jsl	~~k_scroll_screen
;					}
	.line	1099
;
;					pctx->lineBufferIndex = 0;
L10182:
	.line	1101
	lda	#$0
	sta	[<L184+pctx_1]
;				}
	.line	1102
;			}
L10179:
	.line	1103
;			break;
L10178:
	.line	1104
	brl	L10103
;		case FX_SCROLLBAR_COMMAND:
	.line	1105
L10183:
;			 if( MSGCMDID(pMsg) == CTL_VERT_SCROLL )
	.line	1106
;			{
	ldy	#$16
	lda	[<L183+pMsg_0],Y
	cmp	#<$1
	beq	L246
	brl	L10184
L246:
	.line	1107
;				captionText = (LPCHAR)MSGCMDPARM1(pMsg);
	.line	1108
	ldy	#$1a
	lda	[<L183+pMsg_0],Y
	sta	<L184+captionText_1
	ldy	#$1c
	lda	[<L183+pMsg_0],Y
	sta	<L184+captionText_1+2
;				if(captionText)
	.line	1109
;				{
	lda	<L184+captionText_1
	ora	<L184+captionText_1+2
	bne	L247
	brl	L10185
L247:
	.line	1110
;					k_debug_string("DefConsoleProc::CTL_VERT_SCROLL\r\n");
	.line	1111
	pea	#^L182+1057
	pea	#<L182+1057
	jsl	~~k_debug_string
;
;					/*
;					for(i=0;i<55;i++)
;					{
;						for(j=0;j<72;j++)
;						{
;							consoleBuffer[i][j] = consoleBuffer[i+1][j];
;						}
;					}
;
;					for(i=0;i<56;i++)
;					{
;						for(j=0;j<72;j++)
;						{
;							k_put_char(j,i,consoleBuffer[i][j],15,0);
;						}
;					}
;
;					p->consoleCtl->curX = 0;
;					p->consoleCtl->curY--;
;					*/
;					k_scroll_screen(p);
	.line	1133
	pei	<L184+p_1+2
	pei	<L184+p_1
	jsl	~~k_scroll_screen
;
;					pctx->lineBufferIndex = 0;
	.line	1135
	lda	#$0
	sta	[<L184+pctx_1]
;				}
	.line	1136
;			}
L10185:
	.line	1137
;
;			break;
L10184:
	.line	1139
	brl	L10103
;
;		default:
	.line	1141
L10186:
;			//k_updatespinner(2,40,&consolespinctx);
;
;			cursorFlashInterval++;
	.line	1144
	inc	|~~cursorFlashInterval
;
;			if(cursorFlashInterval > 10)
	.line	1146
;			{
	lda	#$a
	cmp	|~~cursorFlashInterval
	bcc	L248
	brl	L10187
L248:
	.line	1147
;				if(cursorCurrentColor == 0)
	.line	1148
;					cursorCurrentColor = p->consoleCtl->fgColor;
	lda	|~~cursorCurrentColor
	beq	L249
	brl	L10188
L249:
	.line	1149
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$8
	lda	[<R0],Y
	sta	|~~cursorCurrentColor
;				else
	brl	L10189
L10188:
;					cursorCurrentColor = 0;
	.line	1151
	stz	|~~cursorCurrentColor
L10189:
;
;				cursorFlashInterval = 0;
	.line	1153
	stz	|~~cursorFlashInterval
;			}
	.line	1154
;
;			k_put_char(p->consoleCtl->curX,
L10187:
	.line	1156
;					   p->consoleCtl->curY,
;					   95,
;					   cursorCurrentColor,0);
	pea	#<$0
	lda	|~~cursorCurrentColor
	pha
	pea	#<$5f
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$6
	lda	[<R0],Y
	pha
	ldy	#$54
	lda	[<L184+p_1],Y
	sta	<R0
	ldy	#$56
	lda	[<L184+p_1],Y
	sta	<R0+2
	ldy	#$4
	lda	[<R0],Y
	pha
	jsl	~~k_put_char
;
;
;			break;
	.line	1162
	brl	L10103
;		}
	.line	1163
L10102:
	xref	~~~swt
	jsl	~~~swt
	dw	20
	dw	3843
	dw	L10159-1
	dw	3844
	dw	L10161-1
	dw	3845
	dw	L10163-1
	dw	3846
	dw	L10162-1
	dw	3847
	dw	L10164-1
	dw	3848
	dw	L10160-1
	dw	3856
	dw	L10120-1
	dw	3858
	dw	L10117-1
	dw	3872
	dw	L10139-1
	dw	3874
	dw	L10150-1
	dw	3888
	dw	L10165-1
	dw	3889
	dw	L10166-1
	dw	64000
	dw	L10177-1
	dw	64002
	dw	L10183-1
	dw	64512
	dw	L10167-1
	dw	64513
	dw	L10168-1
	dw	65280
	dw	L10169-1
	dw	65281
	dw	L10104-1
	dw	65282
	dw	L10116-1
	dw	65520
	dw	L10155-1
	dw	L10186-1
L10103:
;	}
	.line	1164
;	//k_debug_string("DefConsoleProc exit\r\n");
;}
L10100:
	.line	1166
L250:
	lda	<L183+2
	sta	<L183+2+4
	lda	<L183+1
	sta	<L183+1+4
	pld
	tsc
	clc
	adc	#L183+4
	tcs
	rtl
	.endblock	1166
L183	equ	48
L184	equ	13
	ends
	efunc
	.endfunc	1166,13,48
	.line	1166
	data
L182:
	db	$44,$65,$66,$43,$6F,$6E,$73,$6F,$6C,$65,$50,$72,$6F,$63,$3A
	db	$3A,$50,$72,$6F,$63,$65,$73,$73,$49,$64,$3A,$00,$6D,$61,$78
	db	$43,$6F,$6C,$73,$3A,$00,$6D,$61,$78,$52,$6F,$77,$73,$3A,$00
	db	$44,$65,$66,$43,$6F,$6E,$73,$6F,$6C,$65,$50,$72,$6F,$63,$3A
	db	$3A,$70,$63,$74,$78,$3A,$00,$44,$65,$66,$43,$6F,$6E,$73,$6F
	db	$6C,$65,$50,$72,$6F,$63,$3A,$3A,$70,$63,$74,$78,$2D,$3E,$75
	db	$73,$65,$72,$44,$61,$74,$61,$3A,$00,$44,$65,$66,$43,$6F,$6E
	db	$73,$6F,$6C,$65,$50,$72,$6F,$63,$3A,$3A,$50,$72,$6F,$63,$65
	db	$73,$73,$49,$64,$3A,$00,$44,$65,$66,$43,$6F,$6E,$73,$6F,$6C
	db	$65,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$50,$52,$4F,$43,$45
	db	$53,$53,$3A,$43,$4F,$4D,$31,$2D,$43,$4F,$55,$4E,$54,$3A,$00
	db	$44,$65,$66,$43,$6F,$6E,$73,$6F,$6C,$65,$50,$72,$6F,$63,$3A
	db	$3A,$49,$6E,$69,$74,$69,$61,$6C,$2D,$6C,$69,$6E,$65,$42,$75
	db	$66,$66,$65,$72,$49,$6E,$64,$65,$78,$3A,$00,$44,$65,$66,$43
	db	$6F,$6E,$73,$6F,$6C,$65,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F
	db	$49,$4E,$49,$54,$5F,$4D,$45,$53,$53,$41,$47,$45,$0D,$0A,$00
	db	$44,$65,$66,$43,$6F,$6E,$73,$6F,$6C,$65,$50,$72,$6F,$63,$3A
	db	$3A,$6C,$69,$6E,$65,$42,$75,$66,$66,$65,$72,$49,$6E,$64,$65
	db	$78,$41,$3A,$00,$6C,$69,$6E,$65,$42,$75,$66,$66,$65,$72,$49
	db	$6E,$64,$65,$78,$20,$74,$6F,$6F,$20,$6C,$61,$72,$67,$65,$00
	db	$44,$65,$66,$43,$6F,$6E,$73,$6F,$6C,$65,$50,$72,$6F,$63,$3A
	db	$3A,$44,$49,$53,$4B,$2D,$49,$4E,$53,$45,$52,$54,$3A,$00,$4E
	db	$55,$4C,$4C,$00,$0D,$0A,$00,$44,$65,$66,$43,$6F,$6E,$73,$6F
	db	$6C,$65,$50,$72,$6F,$63,$3A,$3A,$44,$49,$53,$4B,$2D,$49,$4E
	db	$53,$45,$52,$54,$3A,$4E,$4F,$2D,$43,$48,$41,$4E,$47,$45,$0D
	db	$0A,$00,$64,$69,$73,$6B,$00,$69,$63,$6F,$6E,$00,$44,$65,$66
	db	$43,$6F,$6E,$73,$6F,$6C,$65,$50,$72,$6F,$63,$3A,$3A,$44,$49
	db	$53,$4B,$2D,$49,$4E,$53,$45,$52,$54,$3A,$44,$49,$53,$4B,$3A
	db	$00,$44,$65,$66,$43,$6F,$6E,$73,$6F,$6C,$65,$50,$72,$6F,$63
	db	$3A,$3A,$44,$49,$53,$4B,$2D,$52,$45,$4D,$4F,$56,$45,$0D,$0A
	db	$00,$44,$65,$66,$43,$6F,$6E,$73,$6F,$6C,$65,$50,$72,$6F,$63
	db	$3A,$3A,$44,$49,$53,$4B,$2D,$52,$45,$4D,$4F,$56,$45,$3A,$44
	db	$49,$53,$4B,$3A,$00,$44,$65,$66,$43,$6F,$6E,$73,$6F,$6C,$65
	db	$50,$72,$6F,$63,$3A,$3A,$44,$49,$53,$4B,$2D,$52,$45,$4D,$4F
	db	$56,$45,$3A,$62,$61,$63,$6B,$67,$72,$6F,$75,$6E,$64,$43,$6F
	db	$6C,$6F,$72,$3A,$00,$4E,$6F,$20,$44,$69,$73,$6B,$20,$44,$65
	db	$74,$65,$63,$74,$65,$64,$20,$20,$20,$20,$20,$20,$20,$20,$20
	db	$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
	db	$20,$20,$20,$20,$20,$20,$20,$00,$44,$65,$66,$43,$6F,$6E,$73
	db	$6F,$6C,$65,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$41,$50,$50
	db	$5F,$4D,$45,$53,$53,$41,$47,$45,$0D,$0A,$00,$44,$65,$66,$43
	db	$6F,$6E,$73,$6F,$6C,$65,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F
	db	$41,$50,$50,$5F,$4D,$45,$53,$53,$41,$47,$45,$20,$42,$41,$44
	db	$20,$50,$52,$4F,$43,$0D,$0A,$00,$44,$65,$66,$43,$6F,$6E,$73
	db	$6F,$6C,$65,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$41,$50,$50
	db	$5F,$4D,$45,$53,$53,$41,$47,$45,$20,$65,$78,$69,$74,$0D,$0A
	db	$00,$44,$65,$66,$43,$6F,$6E,$73,$6F,$6C,$65,$50,$72,$6F,$63
	db	$3A,$3A,$46,$58,$5F,$52,$42,$55,$54,$54,$4F,$4E,$5F,$44,$4F
	db	$57,$4E,$0D,$0A,$00,$44,$65,$66,$43,$6F,$6E,$73,$6F,$6C,$65
	db	$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$4C,$42,$55,$54,$54,$4F
	db	$4E,$5F,$44,$4F,$57,$4E,$0D,$0A,$00,$44,$65,$66,$43,$6F,$6E
	db	$73,$6F,$6C,$65,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$4C,$42
	db	$55,$54,$54,$4F,$4E,$5F,$55,$50,$0D,$0A,$00,$44,$65,$66,$43
	db	$6F,$6E,$73,$6F,$6C,$65,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F
	db	$4C,$42,$55,$54,$54,$4F,$4E,$5F,$44,$52,$41,$47,$0D,$0A,$00
	db	$44,$65,$66,$43,$6F,$6E,$73,$6F,$6C,$65,$50,$72,$6F,$63,$3A
	db	$3A,$46,$58,$5F,$4C,$42,$55,$54,$54,$4F,$4E,$5F,$44,$42,$4C
	db	$43,$4C,$49,$43,$4B,$0D,$0A,$00,$44,$65,$66,$43,$6F,$6E,$73
	db	$6F,$6C,$65,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$57,$49,$4E
	db	$44,$4F,$57,$5F,$54,$4F,$46,$52,$4F,$4E,$54,$0D,$0A,$00,$43
	db	$6C,$69,$63,$6B,$65,$64,$20,$46,$52,$4F,$4E,$54,$00,$44,$65
	db	$66,$43,$6F,$6E,$73,$6F,$6C,$65,$50,$72,$6F,$63,$3A,$3A,$46
	db	$58,$5F,$57,$49,$4E,$44,$4F,$57,$5F,$54,$4F,$42,$41,$43,$4B
	db	$0D,$0A,$00,$43,$6C,$69,$63,$6B,$65,$64,$20,$42,$41,$43,$4B
	db	$00,$0A,$00,$0A,$00,$44,$65,$66,$43,$6F,$6E,$73,$6F,$6C,$65
	db	$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$43,$4F,$4E,$54,$52,$4F
	db	$4C,$5F,$43,$4F,$4D,$4D,$41,$4E,$44,$0D,$0A,$00,$44,$65,$66
	db	$43,$6F,$6E,$73,$6F,$6C,$65,$50,$72,$6F,$63,$3A,$3A,$43,$54
	db	$4C,$5F,$43,$4D,$44,$5F,$43,$41,$50,$54,$49,$4F,$4E,$3A,$00
	db	$44,$65,$66,$43,$6F,$6E,$73,$6F,$6C,$65,$50,$72,$6F,$63,$3A
	db	$3A,$63,$75,$72,$59,$3A,$00,$44,$65,$66,$43,$6F,$6E,$73,$6F
	db	$6C,$65,$50,$72,$6F,$63,$3A,$3A,$43,$54,$4C,$5F,$56,$45,$52
	db	$54,$5F,$53,$43,$52,$4F,$4C,$4C,$0D,$0A,$00
	ends
;
;void ObjectClicked(PWINDOW console)
;{
	.line	1168
	.line	1169
	code
	xdef	~~ObjectClicked
	func
	.function	1169
~~ObjectClicked:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L252
	tcs
	phd
	tcd
console_0	set	4
	.block	1169
;	int temp1 = 0;
;	int temp2 = 0;
;	PFXPROCESS p = k_exec_get_current_process();
;
;	k_debug_string("ObjectClicked!!\r\n");
temp1_1	set	0
temp2_1	set	2
p_1	set	4
	.sym	temp1,0,5,1,16
	.sym	temp2,2,5,1,16
	.sym	p,4,138,1,32,20
	.sym	console,4,138,6,32,30
	stz	<L253+temp1_1
	stz	<L253+temp2_1
	jsl	~~k_exec_get_current_process
	sta	<L253+p_1
	stx	<L253+p_1+2
	.line	1174
	pea	#^L251
	pea	#<L251
	jsl	~~k_debug_string
;	if(p->desktopCtl->currentDiskName)
	.line	1175
;	{
	ldy	#$58
	lda	[<L253+p_1],Y
	sta	<R0
	ldy	#$5a
	lda	[<L253+p_1],Y
	sta	<R0+2
	ldy	#$11
	lda	[<R0],Y
	ldy	#$13
	ora	[<R0],Y
	bne	L255
	brl	L10190
L255:
	.line	1176
;		temp1 = strlen(p->desktopCtl->currentDiskName);
	.line	1177
	ldy	#$58
	lda	[<L253+p_1],Y
	sta	<R0
	ldy	#$5a
	lda	[<L253+p_1],Y
	sta	<R0+2
	ldy	#$13
	lda	[<R0],Y
	pha
	ldy	#$11
	lda	[<R0],Y
	pha
	jsl	~~strlen
	sta	<L253+temp1_1
;		temp2 = (temp1*4);
	.line	1178
	lda	<L253+temp1_1
	asl	A
	asl	A
	sta	<L253+temp2_1
;		k_put_winicon_point(ICON_DISK,640 - (40 + temp2/2),20,6,PAINTMODE_HIGHLIGHT);
	.line	1179
	pea	#<$f1
	pea	#<$6
	pea	#<$14
	lda	<L253+temp2_1
	ldx	#<$2
	xref	~~~div
	jsl	~~~div
	sta	<R0
	clc
	lda	#$28
	adc	<R0
	sta	<R1
	sec
	lda	#$280
	sbc	<R1
	pha
	pea	#<$3
	jsl	~~k_put_winicon_point
;		k_draw_text_point(k_to_uppercase(p->desktopCtl->currentDiskName),640 - (35 + temp2/2) - (temp2),40,0);
	.line	1180
	pea	#<$0
	pea	#<$28
	lda	<L253+temp2_1
	ldx	#<$2
	xref	~~~div
	jsl	~~~div
	sta	<R0
	clc
	lda	#$23
	adc	<R0
	sta	<R1
	sec
	lda	#$280
	sbc	<R1
	sta	<R0
	sec
	lda	<R0
	sbc	<L253+temp2_1
	pha
	ldy	#$58
	lda	[<L253+p_1],Y
	sta	<R0
	ldy	#$5a
	lda	[<L253+p_1],Y
	sta	<R0+2
	ldy	#$13
	lda	[<R0],Y
	pha
	ldy	#$11
	lda	[<R0],Y
	pha
	jsl	~~k_to_uppercase
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_draw_text_point
;	}
	.line	1181
;}
L10190:
	.line	1182
L256:
	lda	<L252+2
	sta	<L252+2+4
	lda	<L252+1
	sta	<L252+1+4
	pld
	tsc
	clc
	adc	#L252+4
	tcs
	rtl
	.endblock	1182
L252	equ	16
L253	equ	9
	ends
	efunc
	.endfunc	1182,9,16
	.line	1182
	data
L251:
	db	$4F,$62,$6A,$65,$63,$74,$43,$6C,$69,$63,$6B,$65,$64,$21,$21
	db	$0D,$0A,$00
	ends
;
;
;
;void DefConsoleProc2(PFXOSMESSAGE pMsg)
;{
	.line	1186
	.line	1187
	code
	xdef	~~DefConsoleProc2
	func
	.function	1187
~~DefConsoleProc2:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L258
	tcs
	phd
	tcd
pMsg_0	set	4
	.block	1187
;
;	PSPINNERCTX pconsolespinctx = NULL;
;	PFXPROCESS p = NULL;
;	int i = 0;
;
;	//k_debug_string("DefConsoleProc enter\r\n");
;	if(pMsg!=NULL)
pconsolespinctx_1	set	0
p_1	set	4
i_1	set	8
	.sym	pconsolespinctx,0,138,1,32,60
	.sym	p,4,138,1,32,20
	.sym	i,8,5,1,16
	.sym	pMsg,4,138,6,32,16
	stz	<L259+pconsolespinctx_1
	stz	<L259+pconsolespinctx_1+2
	stz	<L259+p_1
	stz	<L259+p_1+2
	stz	<L259+i_1
	.line	1194
;	{
	lda	<L258+pMsg_0
	ora	<L258+pMsg_0+2
	bne	L261
	brl	L10191
L261:
	.line	1195
;		p = k_exec_get_current_process();
	.line	1196
	jsl	~~k_exec_get_current_process
	sta	<L259+p_1
	stx	<L259+p_1+2
;
;		switch(pMsg->type)
	.line	1198
	ldy	#$8
	lda	[<L258+pMsg_0],Y
	brl	L10192
;		{
	.line	1199
;		case FX_INIT_MESSAGE:
	.line	1200
L10194:
;
;
;			pconsolespinctx = (PSPINNERCTX)k_mem_allocate_heap(sizeof(SPINNERCTX));
	.line	1203
	pea	#<$6
	jsl	~~k_mem_allocate_heap
	sta	<L259+pconsolespinctx_1
	stx	<L259+pconsolespinctx_1+2
;			pconsolespinctx->spinner = consolespinner;
	.line	1204
	lda	#<~~consolespinner
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	lda	<R0
	ldy	#$2
	sta	[<L259+pconsolespinctx_1],Y
	lda	<R0+2
	ldy	#$4
	sta	[<L259+pconsolespinctx_1],Y
;			p->tls[0] = (LPVOID)pconsolespinctx;
	.line	1205
	lda	<L259+pconsolespinctx_1
	ldy	#$13
	sta	[<L259+p_1],Y
	lda	<L259+pconsolespinctx_1+2
	ldy	#$15
	sta	[<L259+p_1],Y
;			p->tls[1] = (PRECT)k_mem_allocate_heap(sizeof(RECT));
	.line	1206
	pea	#<$8
	jsl	~~k_mem_allocate_heap
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$17
	sta	[<L259+p_1],Y
	lda	<R0+2
	ldy	#$19
	sta	[<L259+p_1],Y
;
;
;			i = (int)((long)(p->startupArgs));
	.line	1209
	ldy	#$60
	lda	[<L259+p_1],Y
	sta	<L259+i_1
;			k_debug_integer("DefConsoleProc2::FX_PROCESS:",i);
	.line	1210
	pei	<L259+i_1
	pea	#^L257
	pea	#<L257
	jsl	~~k_debug_integer
;
;
;			if(p!=NULL)
	.line	1213
;				k_debug_long("DefConsoleProc2::ProcessId:",p->procId);
	lda	<L259+p_1
	ora	<L259+p_1+2
	bne	L262
	brl	L10195
L262:
	.line	1214
	ldy	#$4
	lda	[<L259+p_1],Y
	pha
	ldy	#$2
	lda	[<L259+p_1],Y
	pha
	pea	#^L257+29
	pea	#<L257+29
	jsl	~~k_debug_long
;			else
	brl	L10196
L10195:
;				k_debug_string("DefConsoleProc2::FX_INIT_MESSAGE\r\n");
	.line	1216
	pea	#^L257+57
	pea	#<L257+57
	jsl	~~k_debug_string
L10196:
;
;
;
;			k_init_spinner(pconsolespinctx);
	.line	1220
	pei	<L259+pconsolespinctx_1+2
	pei	<L259+pconsolespinctx_1
	jsl	~~k_init_spinner
;
;
;
;
;			//k_sd_test();
;			break;
	.line	1226
	brl	L10193
;		case FX_UNINIT_MESSAGE:
	.line	1227
L10197:
;			k_debug_string("DefConsoleProc2::FX_UNINIT_MESSAGE\r\n");
	.line	1228
	pea	#^L257+92
	pea	#<L257+92
	jsl	~~k_debug_string
;			if(p->tls[1])
	.line	1229
;				k_mem_deallocate_heap(p->tls[1]);
	ldy	#$17
	lda	[<L259+p_1],Y
	ldy	#$19
	ora	[<L259+p_1],Y
	bne	L263
	brl	L10198
L263:
	.line	1230
	ldy	#$19
	lda	[<L259+p_1],Y
	pha
	ldy	#$17
	lda	[<L259+p_1],Y
	pha
	jsl	~~k_mem_deallocate_heap
;			break;
L10198:
	.line	1231
	brl	L10193
;		case FX_KEY_DOWN:
	.line	1232
L10199:
;			if(p!=NULL && p->foregroundActive)
	.line	1233
;			{
	lda	<L259+p_1
	ora	<L259+p_1+2
	bne	L264
	brl	L10200
L264:
	ldy	#$12
	lda	[<L259+p_1],Y
	and	#$ff
	bne	L265
	brl	L10200
L265:
	.line	1234
;				//if(p!=NULL)
;				//	k_debug_integer("DefConso-leProc::ProcessId:",p->procId);
;				k_put_char(3 ,46,pMsg->data[2],15,0);
	.line	1237
	pea	#<$0
	pea	#<$f
	ldy	#$18
	lda	[<L258+pMsg_0],Y
	pha
	pea	#<$2e
	pea	#<$3
	jsl	~~k_put_char
;			}
	.line	1238
;			break;
L10200:
	.line	1239
	brl	L10193
;		case FX_PROCESS:
	.line	1240
L10201:
;
;			pconsolespinctx = (PSPINNERCTX)p->tls[0];
	.line	1242
	ldy	#$13
	lda	[<L259+p_1],Y
	sta	<L259+pconsolespinctx_1
	ldy	#$15
	lda	[<L259+p_1],Y
	sta	<L259+pconsolespinctx_1+2
;
;			//k_debug_string("DefConsoleProc::FX_PROCESS\r\n");
;			i = (int)((long)(p->startupArgs));
	.line	1245
	ldy	#$60
	lda	[<L259+p_1],Y
	sta	<L259+i_1
;			k_updatespinner(3 + i,39,pconsolespinctx);
	.line	1246
	pei	<L259+pconsolespinctx_1+2
	pei	<L259+pconsolespinctx_1
	pea	#<$27
	clc
	lda	#$3
	adc	<L259+i_1
	pha
	jsl	~~k_updatespinner
;			//k_debug_integer("DefConsoleProc2::FX_PROCESS:",i);
;
;			if(p->tls[1])
	.line	1249
;			{
	ldy	#$17
	lda	[<L259+p_1],Y
	ldy	#$19
	ora	[<L259+p_1],Y
	bne	L266
	brl	L10202
L266:
	.line	1250
;				((PRECT)(p->tls[1]))->x = 0;
	.line	1251
	ldy	#$17
	lda	[<L259+p_1],Y
	sta	<R0
	ldy	#$19
	lda	[<L259+p_1],Y
	sta	<R0+2
	lda	#$0
	sta	[<R0]
;				((PRECT)(p->tls[1]))->y = 0;
	.line	1252
	ldy	#$17
	lda	[<L259+p_1],Y
	sta	<R0
	ldy	#$19
	lda	[<L259+p_1],Y
	sta	<R0+2
	lda	#$0
	ldy	#$2
	sta	[<R0],Y
;			}
	.line	1253
;			/*
;			for(i=0;i<1000;i++)
;			{
;				asm NOP;
;			}
;			*/
;			//k_debug_integer("DefConsoleProc2::FX_PROCESS:",i++);
;			break;
L10202:
	.line	1261
	brl	L10193
;		default:
	.line	1262
L10203:
;			//k_updatespinner(3,40,&consolespinctx);
;			break;
	.line	1264
	brl	L10193
;		}
	.line	1265
L10192:
	xref	~~~swt
	jsl	~~~swt
	dw	4
	dw	3856
	dw	L10199-1
	dw	65280
	dw	L10201-1
	dw	65281
	dw	L10194-1
	dw	65282
	dw	L10197-1
	dw	L10203-1
L10193:
;	}
	.line	1266
;	//k_debug_string("DefConsoleProc exit\r\n");
;}
L10191:
	.line	1268
L267:
	lda	<L258+2
	sta	<L258+2+4
	lda	<L258+1
	sta	<L258+1+4
	pld
	tsc
	clc
	adc	#L258+4
	tcs
	rtl
	.endblock	1268
L258	equ	14
L259	equ	5
	ends
	efunc
	.endfunc	1268,5,14
	.line	1268
	data
L257:
	db	$44,$65,$66,$43,$6F,$6E,$73,$6F,$6C,$65,$50,$72,$6F,$63,$32
	db	$3A,$3A,$46,$58,$5F,$50,$52,$4F,$43,$45,$53,$53,$3A,$00,$44
	db	$65,$66,$43,$6F,$6E,$73,$6F,$6C,$65,$50,$72,$6F,$63,$32,$3A
	db	$3A,$50,$72,$6F,$63,$65,$73,$73,$49,$64,$3A,$00,$44,$65,$66
	db	$43,$6F,$6E,$73,$6F,$6C,$65,$50,$72,$6F,$63,$32,$3A,$3A,$46
	db	$58,$5F,$49,$4E,$49,$54,$5F,$4D,$45,$53,$53,$41,$47,$45,$0D
	db	$0A,$00,$44,$65,$66,$43,$6F,$6E,$73,$6F,$6C,$65,$50,$72,$6F
	db	$63,$32,$3A,$3A,$46,$58,$5F,$55,$4E,$49,$4E,$49,$54,$5F,$4D
	db	$45,$53,$53,$41,$47,$45,$0D,$0A,$00
	ends
;
;void DefConsoleProc3(PFXOSMESSAGE pMsg)
;{
	.line	1270
	.line	1271
	code
	xdef	~~DefConsoleProc3
	func
	.function	1271
~~DefConsoleProc3:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L269
	tcs
	phd
	tcd
pMsg_0	set	4
	.block	1271
;	PSPINNERCTX pconsolespinctx = NULL;
;	PFXPROCESS p = NULL;
;	int i = 0;
;
;	//k_debug_string("DefConsoleProc enter\r\n");
;	if(pMsg!=NULL)
pconsolespinctx_1	set	0
p_1	set	4
i_1	set	8
	.sym	pconsolespinctx,0,138,1,32,60
	.sym	p,4,138,1,32,20
	.sym	i,8,5,1,16
	.sym	pMsg,4,138,6,32,16
	stz	<L270+pconsolespinctx_1
	stz	<L270+pconsolespinctx_1+2
	stz	<L270+p_1
	stz	<L270+p_1+2
	stz	<L270+i_1
	.line	1277
;	{
	lda	<L269+pMsg_0
	ora	<L269+pMsg_0+2
	bne	L272
	brl	L10204
L272:
	.line	1278
;		p = k_exec_get_current_process();
	.line	1279
	jsl	~~k_exec_get_current_process
	sta	<L270+p_1
	stx	<L270+p_1+2
;
;		switch(pMsg->type)
	.line	1281
	ldy	#$8
	lda	[<L269+pMsg_0],Y
	brl	L10205
;		{
	.line	1282
;		case FX_INIT_MESSAGE:
	.line	1283
L10207:
;
;			pconsolespinctx = (PSPINNERCTX)k_mem_allocate_heap(sizeof(SPINNERCTX));
	.line	1285
	pea	#<$6
	jsl	~~k_mem_allocate_heap
	sta	<L270+pconsolespinctx_1
	stx	<L270+pconsolespinctx_1+2
;			pconsolespinctx->spinner = consolespinner;
	.line	1286
	lda	#<~~consolespinner
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	lda	<R0
	ldy	#$2
	sta	[<L270+pconsolespinctx_1],Y
	lda	<R0+2
	ldy	#$4
	sta	[<L270+pconsolespinctx_1],Y
;			p->tls[0] = (LPVOID)pconsolespinctx;
	.line	1287
	lda	<L270+pconsolespinctx_1
	ldy	#$13
	sta	[<L270+p_1],Y
	lda	<L270+pconsolespinctx_1+2
	ldy	#$15
	sta	[<L270+p_1],Y
;
;			i = (int)(long)((PFXPROCESSMESSAGE)pMsg)->processInfo->startupArgs;
	.line	1289
	ldy	#$a
	lda	[<L269+pMsg_0],Y
	sta	<R0
	ldy	#$c
	lda	[<L269+pMsg_0],Y
	sta	<R0+2
	ldy	#$60
	lda	[<R0],Y
	sta	<L270+i_1
;			k_debug_integer("DefConsoleProc3::FX_PROCESS:",i);
	.line	1290
	pei	<L270+i_1
	pea	#^L268
	pea	#<L268
	jsl	~~k_debug_integer
;
;			if(p!=NULL)
	.line	1292
;				k_debug_long("DefConsoleProc3::ProcessId:",p->procId);
	lda	<L270+p_1
	ora	<L270+p_1+2
	bne	L273
	brl	L10208
L273:
	.line	1293
	ldy	#$4
	lda	[<L270+p_1],Y
	pha
	ldy	#$2
	lda	[<L270+p_1],Y
	pha
	pea	#^L268+29
	pea	#<L268+29
	jsl	~~k_debug_long
;			else
	brl	L10209
L10208:
;				k_debug_string("DefConsoleProc3::FX_INIT_MESSAGE\r\n");
	.line	1295
	pea	#^L268+57
	pea	#<L268+57
	jsl	~~k_debug_string
L10209:
;			k_init_spinner(pconsolespinctx);
	.line	1296
	pei	<L270+pconsolespinctx_1+2
	pei	<L270+pconsolespinctx_1
	jsl	~~k_init_spinner
;
;			//k_sd_test();
;			break;
	.line	1299
	brl	L10206
;		case FX_KEY_DOWN:
	.line	1300
L10210:
;			if(p!=NULL && p->foregroundActive)
	.line	1301
;			{
	lda	<L270+p_1
	ora	<L270+p_1+2
	bne	L274
	brl	L10211
L274:
	ldy	#$12
	lda	[<L270+p_1],Y
	and	#$ff
	bne	L275
	brl	L10211
L275:
	.line	1302
;				//if(p!=NULL)
;				//	k_debug_integer("DefConso-leProc::ProcessId:",p->procId);
;
;				k_put_char(1,46,pMsg->data[2],15,0);
	.line	1306
	pea	#<$0
	pea	#<$f
	ldy	#$18
	lda	[<L269+pMsg_0],Y
	pha
	pea	#<$2e
	pea	#<$1
	jsl	~~k_put_char
;			}
	.line	1307
;			break;
L10211:
	.line	1308
	brl	L10206
;		case FX_PROCESS:
	.line	1309
L10212:
;			pconsolespinctx = (PSPINNERCTX)p->tls[0];
	.line	1310
	ldy	#$13
	lda	[<L270+p_1],Y
	sta	<L270+pconsolespinctx_1
	ldy	#$15
	lda	[<L270+p_1],Y
	sta	<L270+pconsolespinctx_1+2
;			//k_debug_string("DefConsoleProc::FX_PROCESS\r\n");
;			k_updatespinner(3,41,pconsolespinctx);
	.line	1312
	pei	<L270+pconsolespinctx_1+2
	pei	<L270+pconsolespinctx_1
	pea	#<$29
	pea	#<$3
	jsl	~~k_updatespinner
;			//k_debug_integer("DefConsoleProc3::FX_PROCESS:",i++);
;			break;
	.line	1314
	brl	L10206
;		default:
	.line	1315
L10213:
;			//k_updatespinner(3,40,&consolespinctx);
;			break;
	.line	1317
	brl	L10206
;		}
	.line	1318
L10205:
	xref	~~~swt
	jsl	~~~swt
	dw	3
	dw	3856
	dw	L10210-1
	dw	65280
	dw	L10212-1
	dw	65281
	dw	L10207-1
	dw	L10213-1
L10206:
;	}
	.line	1319
;	//k_debug_string("DefConsoleProc exit\r\n");
;}
L10204:
	.line	1321
L276:
	lda	<L269+2
	sta	<L269+2+4
	lda	<L269+1
	sta	<L269+1+4
	pld
	tsc
	clc
	adc	#L269+4
	tcs
	rtl
	.endblock	1321
L269	equ	14
L270	equ	5
	ends
	efunc
	.endfunc	1321,5,14
	.line	1321
	data
L268:
	db	$44,$65,$66,$43,$6F,$6E,$73,$6F,$6C,$65,$50,$72,$6F,$63,$33
	db	$3A,$3A,$46,$58,$5F,$50,$52,$4F,$43,$45,$53,$53,$3A,$00,$44
	db	$65,$66,$43,$6F,$6E,$73,$6F,$6C,$65,$50,$72,$6F,$63,$33,$3A
	db	$3A,$50,$72,$6F,$63,$65,$73,$73,$49,$64,$3A,$00,$44,$65,$66
	db	$43,$6F,$6E,$73,$6F,$6C,$65,$50,$72,$6F,$63,$33,$3A,$3A,$46
	db	$58,$5F,$49,$4E,$49,$54,$5F,$4D,$45,$53,$53,$41,$47,$45,$0D
	db	$0A,$00
	ends
;
;
;VOID k_console_process_command(LPCHAR commandLine,PFXPROCESS process)
;{
	.line	1324
	.line	1325
	code
	xdef	~~k_console_process_command
	func
	.function	1325
~~k_console_process_command:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L278
	tcs
	phd
	tcd
commandLine_0	set	4
process_0	set	8
	.block	1325
;	int index = 0;
;	int pos = 0;
;	LPCHAR cptr  = console_commands[0];
;	LPCHAR match = NULL;
;
;	PCOMMANDARGS args = NULL;
;
;	PFXNODE tokens = NULL;
;	PFXNODE t = NULL;
;
;	FXCommandHandler handler = NULL;
;
;	k_debug_string("k_console_process_command::enter:");
index_1	set	0
pos_1	set	2
cptr_1	set	4
match_1	set	8
args_1	set	12
tokens_1	set	16
t_1	set	20
handler_1	set	24
	.sym	index,0,5,1,16
	.sym	pos,2,5,1,16
	.sym	cptr,4,142,1,32
	.sym	match,8,142,1,32
	.sym	args,12,138,1,32,63
	.sym	tokens,16,138,1,32,5
	.sym	t,20,138,1,32,5
	.sym	handler,24,656,1,32
	.sym	commandLine,4,142,6,32
	.sym	process,8,138,6,32,20
	stz	<L279+index_1
	stz	<L279+pos_1
	lda	|~~console_commands
	sta	<L279+cptr_1
	lda	|~~console_commands+2
	sta	<L279+cptr_1+2
	stz	<L279+match_1
	stz	<L279+match_1+2
	stz	<L279+args_1
	stz	<L279+args_1+2
	stz	<L279+tokens_1
	stz	<L279+tokens_1+2
	stz	<L279+t_1
	stz	<L279+t_1+2
	stz	<L279+handler_1
	stz	<L279+handler_1+2
	.line	1338
	pea	#^L277
	pea	#<L277
	jsl	~~k_debug_string
;	k_debug_string(commandLine);
	.line	1339
	pei	<L278+commandLine_0+2
	pei	<L278+commandLine_0
	jsl	~~k_debug_string
;	k_debug_string("\r\n");
	.line	1340
	pea	#^L277+34
	pea	#<L277+34
	jsl	~~k_debug_string
;
;
;	while(cptr)
	.line	1343
L10214:
	lda	<L279+cptr_1
	ora	<L279+cptr_1+2
	bne	L281
	brl	L10215
L281:
;	{
	.line	1344
;		//k_debug_string(cptr);
;		//k_debug_string("\r\n");
;		match = strstr(commandLine,cptr);
	.line	1347
	pei	<L279+cptr_1+2
	pei	<L279+cptr_1
	pei	<L278+commandLine_0+2
	pei	<L278+commandLine_0
	jsl	~~strstr
	sta	<L279+match_1
	stx	<L279+match_1+2
;		if(match == commandLine)
	.line	1348
;		{
	lda	<L279+match_1
	cmp	<L278+commandLine_0
	bne	L282
	lda	<L279+match_1+2
	cmp	<L278+commandLine_0+2
L282:
	beq	L283
	brl	L10216
L283:
	.line	1349
;			k_put_string(0,49,"                                                                        ",15,0);
	.line	1350
	pea	#<$0
	pea	#<$f
	pea	#^L277+37
	pea	#<L277+37
	pea	#<$31
	pea	#<$0
	jsl	~~k_put_string
;			k_put_string(0,50,"                                                                        ",15,0);
	.line	1351
	pea	#<$0
	pea	#<$f
	pea	#^L277+110
	pea	#<L277+110
	pea	#<$32
	pea	#<$0
	jsl	~~k_put_string
;
;			tokens = tokenize(commandLine);
	.line	1353
	pei	<L278+commandLine_0+2
	pei	<L278+commandLine_0
	jsl	~~tokenize
	sta	<L279+tokens_1
	stx	<L279+tokens_1+2
;			if(tokens)
	.line	1354
;			{
	lda	<L279+tokens_1
	ora	<L279+tokens_1+2
	bne	L284
	brl	L10217
L284:
	.line	1355
;				t = tokens;
	.line	1356
	lda	<L279+tokens_1
	sta	<L279+t_1
	lda	<L279+tokens_1+2
	sta	<L279+t_1+2
;				/*
;				while(t)
;				{
;					if(t)
;					{
;						k_debug_string("TOKEN:");
;						if( ((PTOKEN)t->data)->text)
;						{
;							k_debug_string(((PTOKEN)t->data)->text );
;						}
;						else
;							k_debug_string("NO NAME");
;
;						k_debug_string("(");
;						k_debug_string( token_to_string ( ((PTOKEN)t->data)->type  ));
;						k_debug_string(")");
;						k_debug_string("\r\n");
;						t = t->next;
;					}
;				}
;				*/
;			}
	.line	1378
;
;			//pos = k_put_string(pos,49,"FOUND COMMAND:",15,0);
;			//k_put_string(pos,49,cptr,15,0);
;
;			k_debug_strings("k_console_process_command::found:",cptr);
L10217:
	.line	1383
	pei	<L279+cptr_1+2
	pei	<L279+cptr_1
	pea	#^L277+183
	pea	#<L277+183
	jsl	~~k_debug_strings
;
;			// execute command handler
;			if(console_command_proc[index]!=NULL)
	.line	1386
;			{
	lda	<L279+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~console_command_proc
	adc	<R0
	sta	<R1
	lda	(<R1)
	ldy	#$2
	ora	(<R1),Y
	bne	L285
	brl	L10218
L285:
	.line	1387
;				//console_command_proc[index](process);
;
;				//handler = console_command_proc[index];
;
;				args = k_mem_allocate_heap(sizeof(COMMANDARGS));
	.line	1392
	pea	#<$8
	jsl	~~k_mem_allocate_heap
	sta	<L279+args_1
	stx	<L279+args_1+2
;				args->proc = console_command_proc[index];
	.line	1393
	lda	<L279+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~console_command_proc
	adc	<R0
	sta	<R1
	lda	(<R1)
	sta	[<L279+args_1]
	ldy	#$2
	lda	(<R1),Y
	ldy	#$2
	sta	[<L279+args_1],Y
;				args->tokens = tokens;
	.line	1394
	lda	<L279+tokens_1
	ldy	#$4
	sta	[<L279+args_1],Y
	lda	<L279+tokens_1+2
	ldy	#$6
	sta	[<L279+args_1],Y
;
;				//k_debug_integer("k_console_process_command::presend:",index);
;				//k_send_message(process,FX_APP_MESSAGE,handler,-1);
;				k_send_message(process,FX_APP_MESSAGE,args,-1);
	.line	1398
	pea	#<$ffffffff
	pei	<L279+args_1+2
	pei	<L279+args_1
	pea	#<$fff0
	pei	<L278+process_0+2
	pei	<L278+process_0
	jsl	~~k_send_message
;				//k_debug_pointer("k_console_process_command::postsend:",handler);
;
;			}
	.line	1401
;			break;
L10218:
	.line	1402
	brl	L10215
;		}
	.line	1403
;		cptr = console_commands[++index];
L10216:
	.line	1404
	inc	<L279+index_1
	lda	<L279+index_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~console_commands
	adc	<R0
	sta	<R1
	lda	(<R1)
	sta	<L279+cptr_1
	ldy	#$2
	lda	(<R1),Y
	sta	<L279+cptr_1+2
;	}
	.line	1405
	brl	L10214
L10215:
;
;
;	//if(commandLine!=NULL)
;	//	k_put_string(0,50,commandLine,15,0);
;
;	k_debug_string("k_console_process_command::exit\r\n");
	.line	1411
	pea	#^L277+217
	pea	#<L277+217
	jsl	~~k_debug_string
;
;	return;
	.line	1413
L286:
	lda	<L278+2
	sta	<L278+2+8
	lda	<L278+1
	sta	<L278+1+8
	pld
	tsc
	clc
	adc	#L278+8
	tcs
	rtl
;}
	.line	1414
	.endblock	1414
L278	equ	36
L279	equ	9
	ends
	efunc
	.endfunc	1414,9,36
	.line	1414
	data
L277:
	db	$6B,$5F,$63,$6F,$6E,$73,$6F,$6C,$65,$5F,$70,$72,$6F,$63,$65
	db	$73,$73,$5F,$63,$6F,$6D,$6D,$61,$6E,$64,$3A,$3A,$65,$6E,$74
	db	$65,$72,$3A,$00,$0D,$0A,$00,$20,$20,$20,$20,$20,$20,$20,$20
	db	$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
	db	$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
	db	$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
	db	$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
	db	$20,$20,$20,$20,$00,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
	db	$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
	db	$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
	db	$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
	db	$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
	db	$20,$20,$00,$6B,$5F,$63,$6F,$6E,$73,$6F,$6C,$65,$5F,$70,$72
	db	$6F,$63,$65,$73,$73,$5F,$63,$6F,$6D,$6D,$61,$6E,$64,$3A,$3A
	db	$66,$6F,$75,$6E,$64,$3A,$00,$6B,$5F,$63,$6F,$6E,$73,$6F,$6C
	db	$65,$5F,$70,$72,$6F,$63,$65,$73,$73,$5F,$63,$6F,$6D,$6D,$61
	db	$6E,$64,$3A,$3A,$65,$78,$69,$74,$0D,$0A,$00
	ends
;/*
;VOID foreach_file_entry(LPVOID ctx,LPVOID data)
;{
;	CHAR buffer[16];
;	int pos = 0;
;	PFXPROCESS process = (PFXPROCESS)ctx;
;
;	pos = k_put_string(0,process->consoleCtl->curY,((PFILEINFO)data)->pFilename,15,0);
;	pos = k_put_string(20,process->consoleCtl->curY,k_replace_padding( k_longtodec(  ((PFILEINFO)data)->lSize,buffer ),' '),15,0);
;	pos++;
;	if(((PFILEINFO)data)->type == ATTR_DIRECTORY)
;		pos = k_put_string(pos,process->consoleCtl->curY,"directory",15,0);
;	else
;		pos = k_put_string(pos,process->consoleCtl->curY,"bytes",15,0);
;
;	process->consoleCtl->curY++;
;}
;*/
;
;LPCHAR token_to_string(TOKENTYPE tt)
;{
	.line	1434
	.line	1435
	code
	xdef	~~token_to_string
	func
	.function	1435
~~token_to_string:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L288
	tcs
	phd
	tcd
tt_0	set	4
	.block	1435
;	return tokentypeNames[tt];
	.sym	tt,4,5,6,16
	.line	1436
	lda	<L288+tt_0
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~tokentypeNames
	adc	<R0
	sta	<R1
	ldy	#$2
	lda	(<R1),Y
	tax
	lda	(<R1)
L291:
	tay
	lda	<L288+2
	sta	<L288+2+2
	lda	<L288+1
	sta	<L288+1+2
	pld
	tsc
	clc
	adc	#L288+2
	tcs
	tya
	rtl
;}
	.line	1437
	.endblock	1437
L288	equ	8
L289	equ	9
	ends
	efunc
	.endfunc	1437,9,8
	.line	1437
;
;PTOKEN newToken(PFXSTRING name,TOKENTYPE type)
;{
	.line	1439
	.line	1440
	code
	xdef	~~newToken
	func
	.function	1440
~~newToken:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L292
	tcs
	phd
	tcd
name_0	set	4
type_0	set	8
	.block	1440
;	PTOKEN t = (PTOKEN)k_mem_allocate_heap(sizeof(TOKEN));
;	if(t)
t_1	set	0
	.sym	t,0,138,1,32,62
	.sym	name,4,138,6,32,45
	.sym	type,8,5,6,16
	pea	#<$8
	jsl	~~k_mem_allocate_heap
	sta	<L293+t_1
	stx	<L293+t_1+2
	.line	1442
;	{
	lda	<L293+t_1
	ora	<L293+t_1+2
	bne	L295
	brl	L10219
L295:
	.line	1443
;		t->type = type;
	.line	1444
	lda	<L292+type_0
	sta	[<L293+t_1]
;		t->depth = 0;
	.line	1445
	lda	#$0
	ldy	#$2
	sta	[<L293+t_1],Y
;		t->text = k_fxstring_copy_string(name);
	.line	1446
	pei	<L292+name_0+2
	pei	<L292+name_0
	jsl	~~k_fxstring_copy_string
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$4
	sta	[<L293+t_1],Y
	lda	<R0+2
	ldy	#$6
	sta	[<L293+t_1],Y
;	}
	.line	1447
;	return t;
L10219:
	.line	1448
	ldx	<L293+t_1+2
	lda	<L293+t_1
L296:
	tay
	lda	<L292+2
	sta	<L292+2+6
	lda	<L292+1
	sta	<L292+1+6
	pld
	tsc
	clc
	adc	#L292+6
	tcs
	tya
	rtl
;}
	.line	1449
	.endblock	1449
L292	equ	8
L293	equ	5
	ends
	efunc
	.endfunc	1449,5,8
	.line	1449
;/*
;void sig_walk(LPVOID signature,LPVOID pdata)
;{
;	PTOKEN t = ((PTOKEN)pdata);
;
;	((LPCHAR)signature)[0]++;
;	((LPCHAR)signature)[((LPCHAR)signature)[0]] = (t->type + 65);
;
;	//k_debug_integer("sig count:",((LPCHAR)signature)[0]);
;	k_debug_integer("sig id:",((LPCHAR)signature)[0]);
;	//k_debug_integer("sig type:",((LPCHAR)signature)[((LPCHAR)signature)[0]]);
;	k_debug_char("sig type:",((LPCHAR)signature)[((LPCHAR)signature)[0]] );
;}
;
;VOID getTokenSig(PFXNODE tokens,LPVOID signature)
;{
;	memset(signature,0xFF,8);
;	((LPCHAR)signature)[0] = 0;
;
;	k_nodelist_foreach_data(tokens->next,signature,sig_walk);
;
;	((LPCHAR)signature)[((LPCHAR)signature)[0] + 1] = 0;
;	((LPCHAR)signature)[0] ='#';
;
;	k_debug_strings("string-sig:",((LPCHAR)signature));
;}
;*/
;void sig_walk(LPVOID signature,LPVOID pdata)
;{
	.line	1477
	.line	1478
	code
	xdef	~~sig_walk
	func
	.function	1478
~~sig_walk:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L297
	tcs
	phd
	tcd
signature_0	set	4
pdata_0	set	8
	.block	1478
;	CHAR end[2];
;	PTOKEN t = ((PTOKEN)pdata);
;
;	if(t)
end_1	set	0
t_1	set	2
	.sym	end,0,110,1,0,2
	.sym	t,2,138,1,32,62
	.sym	signature,4,129,6,32
	.sym	pdata,8,129,6,32
	lda	<L297+pdata_0
	sta	<L298+t_1
	lda	<L297+pdata_0+2
	sta	<L298+t_1+2
	.line	1482
;	{
	lda	<L298+t_1
	ora	<L298+t_1+2
	bne	L300
	brl	L10220
L300:
	.line	1483
;		if(t->type == 0xFF)
	.line	1484
;			end[0] = '#';
	lda	[<L298+t_1]
	cmp	#<$ff
	beq	L301
	brl	L10221
L301:
	.line	1485
	sep	#$20
	longa	off
	lda	#$23
	sta	<L298+end_1
	rep	#$20
	longa	on
;		else
	brl	L10222
L10221:
;			end[0] = (t->type + 65);
	.line	1487
	clc
	lda	#$41
	adc	[<L298+t_1]
	sta	<R0
	sep	#$20
	longa	off
	lda	<R0
	sta	<L298+end_1
	rep	#$20
	longa	on
L10222:
;		end[1] = 0;
	.line	1488
	sep	#$20
	longa	off
	stz	<L298+end_1+1
	rep	#$20
	longa	on
;
;		strcat((LPCHAR)signature,end);
	.line	1490
	pea	#0
	clc
	tdc
	adc	#<L298+end_1
	pha
	pei	<L297+signature_0+2
	pei	<L297+signature_0
	jsl	~~strcat
;
;		//k_debug_integer("sig count:",((LPCHAR)signature)[0]);
;		//k_debug_integer("sig id:",((LPCHAR)signature)[0]);
;		//k_debug_integer("sig type:",((LPCHAR)signature)[((LPCHAR)signature)[0]]);
;		k_debug_char("sig type:",(t->type + 65));
	.line	1495
	clc
	lda	#$41
	adc	[<L298+t_1]
	pha
	pea	#^L287
	pea	#<L287
	jsl	~~k_debug_char
;	}
	.line	1496
;	else
	brl	L10223
L10220:
;	{
	.line	1498
;		strcat((LPCHAR)signature,"#");
	.line	1499
	pea	#^L287+10
	pea	#<L287+10
	pei	<L297+signature_0+2
	pei	<L297+signature_0
	jsl	~~strcat
;		k_debug_string("sig_walk:NO DATA");
	.line	1500
	pea	#^L287+12
	pea	#<L287+12
	jsl	~~k_debug_string
;	}
	.line	1501
L10223:
;}
	.line	1502
L302:
	lda	<L297+2
	sta	<L297+2+8
	lda	<L297+1
	sta	<L297+1+8
	pld
	tsc
	clc
	adc	#L297+8
	tcs
	rtl
	.endblock	1502
L297	equ	10
L298	equ	5
	ends
	efunc
	.endfunc	1502,5,10
	.line	1502
	data
L287:
	db	$73,$69,$67,$20,$74,$79,$70,$65,$3A,$00,$23,$00,$73,$69,$67
	db	$5F,$77,$61,$6C,$6B,$3A,$4E,$4F,$20,$44,$41,$54,$41,$00
	ends
;
;VOID getTokenSig(PFXNODE tokens,LPVOID signature)
;{
	.line	1504
	.line	1505
	code
	xdef	~~getTokenSig
	func
	.function	1505
~~getTokenSig:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L304
	tcs
	phd
	tcd
tokens_0	set	4
signature_0	set	8
	.block	1505
;	memset(signature,0,8);
	.sym	tokens,4,138,6,32,5
	.sym	signature,8,129,6,32
	.line	1506
	pea	#<$8
	pea	#<$0
	pei	<L304+signature_0+2
	pei	<L304+signature_0
	jsl	~~memset
;	//((LPCHAR)signature)[0] = 0;
;
;	k_nodelist_foreach_data(tokens,signature,sig_walk);
	.line	1509
	pea	#^~~sig_walk
	pea	#<~~sig_walk
	pei	<L304+signature_0+2
	pei	<L304+signature_0
	pei	<L304+tokens_0+2
	pei	<L304+tokens_0
	jsl	~~k_nodelist_foreach_data
;
;	//((LPCHAR)signature)[((LPCHAR)signature)[0] + 1] = 0;
;	//((LPCHAR)signature)[0] ='#';
;
;	k_debug_strings("string-sig:",((LPCHAR)signature));
	.line	1514
	pei	<L304+signature_0+2
	pei	<L304+signature_0
	pea	#^L303
	pea	#<L303
	jsl	~~k_debug_strings
;}
	.line	1515
L307:
	lda	<L304+2
	sta	<L304+2+8
	lda	<L304+1
	sta	<L304+1+8
	pld
	tsc
	clc
	adc	#L304+8
	tcs
	rtl
	.endblock	1515
L304	equ	0
L305	equ	1
	ends
	efunc
	.endfunc	1515,1,0
	.line	1515
	data
L303:
	db	$73,$74,$72,$69,$6E,$67,$2D,$73,$69,$67,$3A,$00
	ends
;
;
;
;PFXNODE tokenize(LPCHAR source)
;{
	.line	1519
	.line	1520
	code
	xdef	~~tokenize
	func
	.function	1520
~~tokenize:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L309
	tcs
	phd
	tcd
source_0	set	4
	.block	1520
;
;	INT 	  i = 0;
;	CHAR 	  c = 0;
;	CHAR      toString[2];
;	INT 	  nestedIf = 0;
;	UINT sourceLength = 0;
;	LPCHAR	  charTokens = "\n=+-/<*>(),";
;	//PFXSTRING charTokens = NULL;
;	PFXSTRING token    = NULL;
;	PFXNODE   tokens   = NULL;
;	PTOKEN    tok	   = NULL;
;	TOKENIZESTATE state = STATE_DEFAULT;
;	TOKENTYPE tokenTypes[] = {
	data
L312:
;								TTYPE_LINE, TTYPE_EQUALS, TTYPE_OPERATOR,
	dw	$4,$5,$6
;								TTYPE_OPERATOR, TTYPE_OPERATOR,TTYPE_OPERATOR,
	dw	$6,$6,$6
;								TTYPE_OPERATOR, TTYPE_OPERATOR,
	dw	$6,$6
;								TTYPE_LEFT_PAREN, TTYPE_RIGHT_PAREN, TTYPE_COMMA
	dw	$7,$8
;							  };
	dw	$A
	ends
;
;
;	source = k_fxstring_add(k_fxstring_new(source,strlen(source) + 2)," ");
i_1	set	0
c_1	set	2
toString_1	set	3
nestedIf_1	set	5
sourceLength_1	set	7
charTokens_1	set	9
token_1	set	13
tokens_1	set	17
tok_1	set	21
state_1	set	25
tokenTypes_1	set	27
	.sym	i,0,5,1,16
	.sym	c,2,14,1,8
	.sym	toString,3,110,1,0,2
	.sym	nestedIf,5,5,1,16
	.sym	sourceLength,7,16,1,16
	.sym	charTokens,9,142,1,32
	.sym	token,13,138,1,32,45
	.sym	tokens,17,138,1,32,5
	.sym	tok,21,138,1,32,62
	.sym	state,25,5,1,16
	.sym	tokenTypes,27,101,1,0,11
	.sym	source,4,142,6,32
	stz	<L310+i_1
	sep	#$20
	longa	off
	stz	<L310+c_1
	rep	#$20
	longa	on
	stz	<L310+nestedIf_1
	stz	<L310+sourceLength_1
	lda	#<L308
	sta	<L310+charTokens_1
	lda	#^L308
	sta	<L310+charTokens_1+2
	stz	<L310+token_1
	stz	<L310+token_1+2
	stz	<L310+tokens_1
	stz	<L310+tokens_1+2
	stz	<L310+tok_1
	stz	<L310+tok_1+2
	stz	<L310+state_1
	pea	#^L312
	pea	#<L312
	clc
	tdc
	adc	#<L310+tokenTypes_1
	sta	<R0
	lda	#$0
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	lda	#$16
	xref	~~~fmov
	jsl	~~~fmov
	.line	1541
	pea	#^L308+12
	pea	#<L308+12
	pei	<L309+source_0+2
	pei	<L309+source_0
	jsl	~~strlen
	sta	<R0
	clc
	lda	#$2
	adc	<R0
	pha
	pei	<L309+source_0+2
	pei	<L309+source_0
	jsl	~~k_fxstring_new
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_fxstring_add
	sta	<L309+source_0
	stx	<L309+source_0+2
;
;
;	k_debug_message("SOURCE LINE:",source);
	.line	1544
	pei	<L309+source_0+2
	pei	<L309+source_0
	pea	#^L308+14
	pea	#<L308+14
	jsl	~~k_debug_message
;
;	sourceLength = strlen(source);
	.line	1546
	pei	<L309+source_0+2
	pei	<L309+source_0
	jsl	~~strlen
	sta	<L310+sourceLength_1
;
;	k_debug_integer("SOURCE sourceLength:",sourceLength);
	.line	1548
	pei	<L310+sourceLength_1
	pea	#^L308+27
	pea	#<L308+27
	jsl	~~k_debug_integer
;
;	//tokens = k_nodelist_init(26,"signature", newToken( k_fxstring_new("#",2),0xFF));
;	tokens = k_nodelist_init(26,"signature", NULL);
	.line	1551
	pea	#^$0
	pea	#<$0
	pea	#^L308+48
	pea	#<L308+48
	pea	#<$1a
	jsl	~~k_nodelist_init
	sta	<L310+tokens_1
	stx	<L310+tokens_1+2
;
;	token = k_fxstring_init(256);
	.line	1553
	pea	#<$100
	jsl	~~k_fxstring_init
	sta	<L310+token_1
	stx	<L310+token_1+2
;	//charTokens = k_fxstring_new("\n=+-/<*>(),",16);
;	// Scan through the code one character at a time, building up the list
;	// of tokens.
;	for (i = 0; i < sourceLength; i++)
	.line	1557
	stz	<L310+i_1
	brl	L10227
L10226:
;	{
	.line	1558
;		c = source[i];
	.line	1559
	sep	#$20
	longa	off
	ldy	<L310+i_1
	lda	[<L309+source_0],Y
	sta	<L310+c_1
	rep	#$20
	longa	on
;
;		//k_debug_char("SOURCE CHAR:",c);
;		//k_debug_hex("SOURCE HEX:",c);
;
;		switch (state)
	.line	1564
	lda	<L310+state_1
	brl	L10228
;		{
	.line	1565
;		case STATE_DEFAULT:
	.line	1566
L10230:
;			if (k_string_indexOf(charTokens,c) != -1)
	.line	1567
;			{
	pei	<L310+c_1
	pei	<L310+charTokens_1+2
	pei	<L310+charTokens_1
	jsl	~~k_string_indexOf
	sta	<R0
	lda	<R0
	cmp	#<$ffffffff
	bne	L313
	brl	L10231
L313:
	.line	1568
;				//k_debug_integer("TOKEN TYPE:",tokenTypes[k_string_indexOf(charTokens,c)]);
;
;				k_nodelist_add(tokens,k_nodelist_create(tokenTypes[k_string_indexOf(charTokens,c)],"token",
	.line	1571
;						                                newToken( k_fxstring_new(k_string_toString(c,toString),2) ,
;						                                		  tokenTypes[k_string_indexOf(charTokens,c)]),NULL,NULL)
;						                                );
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pei	<L310+c_1
	pei	<L310+charTokens_1+2
	pei	<L310+charTokens_1
	jsl	~~k_string_indexOf
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L314
	dey
L314:
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
	tdc
	adc	#<L310+tokenTypes_1
	sta	<R2
	lda	#$0
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
	pea	#<$2
	pea	#0
	clc
	tdc
	adc	#<L310+toString_1
	pha
	pei	<L310+c_1
	jsl	~~k_string_toString
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_fxstring_new
	sta	<R2
	stx	<R2+2
	phx
	pha
	jsl	~~newToken
	sta	<R3
	stx	<R3+2
	phx
	pha
	pea	#^L308+58
	pea	#<L308+58
	pei	<L310+c_1
	pei	<L310+charTokens_1+2
	pei	<L310+charTokens_1
	jsl	~~k_string_indexOf
	sta	<21
	ldy	#$0
	lda	<21
	bpl	L315
	dey
L315:
	sta	<21
	sty	<21+2
	pei	<21+2
	pei	<21
	lda	#$1
	xref	~~~lasl
	jsl	~~~lasl
	sta	<17
	stx	<17+2
	clc
	tdc
	adc	#<L310+tokenTypes_1
	sta	<25
	lda	#$0
	sta	<25+2
	clc
	lda	<25
	adc	<17
	sta	<29
	lda	<25+2
	adc	<17+2
	sta	<29+2
	lda	[<29]
	pha
	jsl	~~k_nodelist_create
	sta	<17
	stx	<17+2
	phx
	pha
	pei	<L310+tokens_1+2
	pei	<L310+tokens_1
	jsl	~~k_nodelist_add
;				//tokens.add(new Token(Character.toString(c), tokenTypes[charTokens.indexOf(c)]));
;			}
	.line	1576
;			else if (isalpha(c))
	brl	L10232
L10231:
	.line	1577
;			{
	lda	<L310+c_1
	and	#$ff
	sta	<R0
	sep	#$20
	longa	off
	ldx	<R0
	lda	|~~_ctype+1,X
	and	#<$3
	rep	#$20
	longa	on
	bne	L316
	brl	L10233
L316:
	.line	1578
;				k_fxstring_addchar(token,c);
	.line	1579
	pei	<L310+c_1
	pei	<L310+token_1+2
	pei	<L310+token_1
	jsl	~~k_fxstring_addchar
;				state = STATE_WORD;
	.line	1580
	lda	#$1
	sta	<L310+state_1
;			}
	.line	1581
;			else if (isdigit(c))
	brl	L10234
L10233:
	.line	1582
;			{
	lda	<L310+c_1
	and	#$ff
	sta	<R0
	sep	#$20
	longa	off
	ldx	<R0
	lda	|~~_ctype+1,X
	and	#<$4
	rep	#$20
	longa	on
	bne	L317
	brl	L10235
L317:
	.line	1583
;				k_fxstring_addchar(token,c);
	.line	1584
	pei	<L310+c_1
	pei	<L310+token_1+2
	pei	<L310+token_1
	jsl	~~k_fxstring_addchar
;				state = STATE_NUMBER;
	.line	1585
	lda	#$2
	sta	<L310+state_1
;			}
	.line	1586
;			else if (c == '"')
	brl	L10236
L10235:
	.line	1587
;			{
	sep	#$20
	longa	off
	lda	<L310+c_1
	cmp	#<$22
	rep	#$20
	longa	on
	beq	L318
	brl	L10237
L318:
	.line	1588
;				state = STATE_STRING;
	.line	1589
	lda	#$3
	sta	<L310+state_1
;			}
	.line	1590
;			else if (c == '\'')
	brl	L10238
L10237:
	.line	1591
;			{
	sep	#$20
	longa	off
	lda	<L310+c_1
	cmp	#<$27
	rep	#$20
	longa	on
	beq	L319
	brl	L10239
L319:
	.line	1592
;				state = STATE_COMMENT;
	.line	1593
	lda	#$4
	sta	<L310+state_1
;			}
	.line	1594
;
;			break;
L10239:
L10238:
L10236:
L10234:
L10232:
	.line	1596
	brl	L10229
;
;		case STATE_WORD:
	.line	1598
L10240:
;			if (isalpha(c) || isdigit(c))
	.line	1599
;			{
	lda	<L310+c_1
	and	#$ff
	sta	<R0
	sep	#$20
	longa	off
	ldx	<R0
	lda	|~~_ctype+1,X
	and	#<$3
	rep	#$20
	longa	on
	beq	L321
	brl	L320
L321:
	lda	<L310+c_1
	and	#$ff
	sta	<R1
	sep	#$20
	longa	off
	ldx	<R1
	lda	|~~_ctype+1,X
	and	#<$4
	rep	#$20
	longa	on
	bne	L322
	brl	L10241
L322:
L320:
	.line	1600
;				k_fxstring_addchar(token,c);
	.line	1601
	pei	<L310+c_1
	pei	<L310+token_1+2
	pei	<L310+token_1
	jsl	~~k_fxstring_addchar
;			}
	.line	1602
;			else if (c == '.')
	brl	L10242
L10241:
	.line	1603
;			{
	sep	#$20
	longa	off
	lda	<L310+c_1
	cmp	#<$2e
	rep	#$20
	longa	on
	beq	L323
	brl	L10243
L323:
	.line	1604
;				k_fxstring_addchar(token,c);
	.line	1605
	pei	<L310+c_1
	pei	<L310+token_1+2
	pei	<L310+token_1
	jsl	~~k_fxstring_addchar
;			}
	.line	1606
;			else if (c == '_')
	brl	L10244
L10243:
	.line	1607
;			{
	sep	#$20
	longa	off
	lda	<L310+c_1
	cmp	#<$5f
	rep	#$20
	longa	on
	beq	L324
	brl	L10245
L324:
	.line	1608
;				k_fxstring_addchar(token,c);
	.line	1609
	pei	<L310+c_1
	pei	<L310+token_1+2
	pei	<L310+token_1
	jsl	~~k_fxstring_addchar
;			}
	.line	1610
;			else if (c == '[')
	brl	L10246
L10245:
	.line	1611
;			{
	sep	#$20
	longa	off
	lda	<L310+c_1
	cmp	#<$5b
	rep	#$20
	longa	on
	beq	L325
	brl	L10247
L325:
	.line	1612
;				k_fxstring_addchar(token,c);
	.line	1613
	pei	<L310+c_1
	pei	<L310+token_1+2
	pei	<L310+token_1
	jsl	~~k_fxstring_addchar
;			}
	.line	1614
;			else if (c == ']')
	brl	L10248
L10247:
	.line	1615
;			{
	sep	#$20
	longa	off
	lda	<L310+c_1
	cmp	#<$5d
	rep	#$20
	longa	on
	beq	L326
	brl	L10249
L326:
	.line	1616
;				k_fxstring_addchar(token,c);
	.line	1617
	pei	<L310+c_1
	pei	<L310+token_1+2
	pei	<L310+token_1
	jsl	~~k_fxstring_addchar
;			}
	.line	1618
;			/*
;			else if (c == ':')
;			{
;				k_nodelist_add(tokens,k_nodelist_create(TTYPE_LABEL,"token",newToken(token, TTYPE_LABEL),NULL,NULL));
;
;				k_fxstring_reinit(token);
;				state = STATE_DEFAULT;
;			}
;			*/
;			else
	brl	L10250
L10249:
;			{
	.line	1629
;				tok = newToken(token, TTYPE_WORD);
	.line	1630
	pea	#<$0
	pei	<L310+token_1+2
	pei	<L310+token_1
	jsl	~~newToken
	sta	<L310+tok_1
	stx	<L310+tok_1+2
;
;				if (k_fxstring_equals(token,"if"))
	.line	1632
;				{
	pea	#^L308+64
	pea	#<L308+64
	pei	<L310+token_1+2
	pei	<L310+token_1
	jsl	~~k_fxstring_equals
	and	#$ff
	bne	L327
	brl	L10251
L327:
	.line	1633
;					tok->depth = nestedIf;
	.line	1634
	lda	<L310+nestedIf_1
	ldy	#$2
	sta	[<L310+tok_1],Y
;					nestedIf++;
	.line	1635
	inc	<L310+nestedIf_1
;				}
	.line	1636
;				else if (k_fxstring_equals(token,"endif"))
	brl	L10252
L10251:
	.line	1637
;				{
	pea	#^L308+67
	pea	#<L308+67
	pei	<L310+token_1+2
	pei	<L310+token_1
	jsl	~~k_fxstring_equals
	and	#$ff
	bne	L328
	brl	L10253
L328:
	.line	1638
;					nestedIf--;
	.line	1639
	dec	<L310+nestedIf_1
;					tok->depth = nestedIf;
	.line	1640
	lda	<L310+nestedIf_1
	ldy	#$2
	sta	[<L310+tok_1],Y
;				}
	.line	1641
;
;				k_nodelist_add(tokens,k_nodelist_create(tok->type,"token",tok,NULL,NULL));
L10253:
L10252:
	.line	1643
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pei	<L310+tok_1+2
	pei	<L310+tok_1
	pea	#^L308+73
	pea	#<L308+73
	lda	[<L310+tok_1]
	pha
	jsl	~~k_nodelist_create
	sta	<R0
	stx	<R0+2
	phx
	pha
	pei	<L310+tokens_1+2
	pei	<L310+tokens_1
	jsl	~~k_nodelist_add
;				k_fxstring_reinit(token);
	.line	1644
	pei	<L310+token_1+2
	pei	<L310+token_1
	jsl	~~k_fxstring_reinit
;				state = STATE_DEFAULT;
	.line	1645
	stz	<L310+state_1
;				i--; // Reprocess this character in the default state.
	.line	1646
	dec	<L310+i_1
;			}
	.line	1647
L10250:
L10248:
L10246:
L10244:
L10242:
;			break;
	.line	1648
	brl	L10229
;
;		case STATE_NUMBER:
	.line	1650
L10254:
;			// HACK: Negative numbers and floating points aren't supported.
;			// To get a negative number, just do 0 - <your number>.
;			// To get a floating point, divide.
;			if (isdigit(c))
	.line	1654
;			{
	lda	<L310+c_1
	and	#$ff
	sta	<R0
	sep	#$20
	longa	off
	ldx	<R0
	lda	|~~_ctype+1,X
	and	#<$4
	rep	#$20
	longa	on
	bne	L329
	brl	L10255
L329:
	.line	1655
;				k_fxstring_addchar(token,c);
	.line	1656
	pei	<L310+c_1
	pei	<L310+token_1+2
	pei	<L310+token_1
	jsl	~~k_fxstring_addchar
;			}
	.line	1657
;			else if (c == '.')
	brl	L10256
L10255:
	.line	1658
;			{
	sep	#$20
	longa	off
	lda	<L310+c_1
	cmp	#<$2e
	rep	#$20
	longa	on
	beq	L330
	brl	L10257
L330:
	.line	1659
;				k_fxstring_addchar(token,c);
	.line	1660
	pei	<L310+c_1
	pei	<L310+token_1+2
	pei	<L310+token_1
	jsl	~~k_fxstring_addchar
;			}
	.line	1661
;			else
	brl	L10258
L10257:
;			{
	.line	1663
;				k_nodelist_add(tokens,k_nodelist_create(TTYPE_NUMBER,"token",newToken(token, TTYPE_NUMBER),NULL,NULL));
	.line	1664
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$1
	pei	<L310+token_1+2
	pei	<L310+token_1
	jsl	~~newToken
	sta	<R0
	stx	<R0+2
	phx
	pha
	pea	#^L308+79
	pea	#<L308+79
	pea	#<$1
	jsl	~~k_nodelist_create
	sta	<R1
	stx	<R1+2
	phx
	pha
	pei	<L310+tokens_1+2
	pei	<L310+tokens_1
	jsl	~~k_nodelist_add
;				k_fxstring_reinit(token);
	.line	1665
	pei	<L310+token_1+2
	pei	<L310+token_1
	jsl	~~k_fxstring_reinit
;				state = STATE_DEFAULT;
	.line	1666
	stz	<L310+state_1
;				i--; // Reprocess this character in the default state.
	.line	1667
	dec	<L310+i_1
;			}
	.line	1668
L10258:
L10256:
;			break;
	.line	1669
	brl	L10229
;
;		case STATE_STRING:
	.line	1671
L10259:
;			if (c == '"' || c == '\n')
	.line	1672
;			{
	sep	#$20
	longa	off
	lda	<L310+c_1
	cmp	#<$22
	rep	#$20
	longa	on
	bne	L332
	brl	L331
L332:
	sep	#$20
	longa	off
	lda	<L310+c_1
	cmp	#<$a
	rep	#$20
	longa	on
	beq	L333
	brl	L10260
L333:
L331:
	.line	1673
;				k_nodelist_add(tokens,k_nodelist_create(TTYPE_STRING,"token",newToken(token, TTYPE_STRING),NULL,NULL));
	.line	1674
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$2
	pei	<L310+token_1+2
	pei	<L310+token_1
	jsl	~~newToken
	sta	<R0
	stx	<R0+2
	phx
	pha
	pea	#^L308+85
	pea	#<L308+85
	pea	#<$2
	jsl	~~k_nodelist_create
	sta	<R1
	stx	<R1+2
	phx
	pha
	pei	<L310+tokens_1+2
	pei	<L310+tokens_1
	jsl	~~k_nodelist_add
;
;				k_fxstring_reinit(token);
	.line	1676
	pei	<L310+token_1+2
	pei	<L310+token_1
	jsl	~~k_fxstring_reinit
;				state = STATE_DEFAULT;
	.line	1677
	stz	<L310+state_1
;			}
	.line	1678
;			else
	brl	L10261
L10260:
;			{
	.line	1680
;				k_fxstring_addchar(token,c);
	.line	1681
	pei	<L310+c_1
	pei	<L310+token_1+2
	pei	<L310+token_1
	jsl	~~k_fxstring_addchar
;			}
	.line	1682
L10261:
;			break;
	.line	1683
	brl	L10229
;
;		case STATE_COMMENT:
	.line	1685
L10262:
;			if (c == '\n')
	.line	1686
;			{
	sep	#$20
	longa	off
	lda	<L310+c_1
	cmp	#<$a
	rep	#$20
	longa	on
	beq	L334
	brl	L10263
L334:
	.line	1687
;				state = STATE_DEFAULT;
	.line	1688
	stz	<L310+state_1
;			}
	.line	1689
;			break;
L10263:
	.line	1690
	brl	L10229
;		}
	.line	1691
L10228:
	xref	~~~fsw
	jsl	~~~fsw
	dw	0
	dw	5
	dw	L10229-1
	dw	L10230-1
	dw	L10240-1
	dw	L10254-1
	dw	L10259-1
	dw	L10262-1
L10229:
;	}
	.line	1692
L10224:
	inc	<L310+i_1
L10227:
	lda	<L310+i_1
	cmp	<L310+sourceLength_1
	bcs	L335
	brl	L10226
L335:
L10225:
;
;	return tokens;
	.line	1694
	ldx	<L310+tokens_1+2
	lda	<L310+tokens_1
L336:
	tay
	lda	<L309+2
	sta	<L309+2+4
	lda	<L309+1
	sta	<L309+1+4
	pld
	tsc
	clc
	adc	#L309+4
	tcs
	tya
	rtl
;
;	//return NULL;
;}
	.line	1697
	.endblock	1697
L309	equ	81
L310	equ	33
	ends
	efunc
	.endfunc	1697,33,81
	.line	1697
	data
L308:
	db	$0A,$3D,$2B,$2D,$2F,$3C,$2A,$3E,$28,$29,$2C,$00,$20,$00,$53
	db	$4F,$55,$52,$43,$45,$20,$4C,$49,$4E,$45,$3A,$00,$53,$4F,$55
	db	$52,$43,$45,$20,$73,$6F,$75,$72,$63,$65,$4C,$65,$6E,$67,$74
	db	$68,$3A,$00,$73,$69,$67,$6E,$61,$74,$75,$72,$65,$00,$74,$6F
	db	$6B,$65,$6E,$00,$69,$66,$00,$65,$6E,$64,$69,$66,$00,$74,$6F
	db	$6B,$65,$6E,$00,$74,$6F,$6B,$65,$6E,$00,$74,$6F,$6B,$65,$6E
	db	$00
	ends
;
;
	.line	1698
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxconsole.c",1519
	xref	~~cmd_LINEUP
	xref	~~cmd_RESUME
	xref	~~cmd_PAUSE
	xref	~~cmd_TIME
	xref	~~cmd_EXIT
	xref	~~cmd_START
	xref	~~cmd_Window
	xref	~~cmd_SEND
	xref	~~cmd_DISPLAY
	xref	~~cmd_CHRDIR
	xref	~~cmd_TASKS
	xref	~~cmd_BACK
	xref	~~cmd_FRONT
	xref	~~cmd_NEWDIR
	xref	~~cmd_INIT
	xref	~~cmd_BCOLOR
	xref	~~cmd_FCOLOR
	xref	~~cmd_VOL
	xref	~~cmd_DIR
	xref	~~cmd_TESTSD
	xref	~~cmd_WORKBENCH
	xref	~~cmd_CLEAR
	xref	~~k_send_process_command_message
	xref	~~k_send_message
	xref	~~k_getKeyboardChar
	xref	~~k_create_ui_window_class
	xref	~~k_add_window_hit_node
	xref	~~k_vdraw_ui_window
	xref	~~k_put_winicon_point
	xref	~~k_draw_text_point
	xref	~~k_put_font
	xref	~~setColors
	xref	~~k_mem_deallocate_heap
	xref	~~k_mem_allocate_heap
	xref	~~k_exec_get_current_process
	xref	~~k_exec_throw_exception
	xref	~~k_debug_strings
	xref	~~k_debug_message
	xref	~~k_debug_long
	xref	~~k_debug_integer
	xref	~~k_debug_pointer
	xref	~~k_debug_char
	xref	~~k_debug_string
	xref	~~k_nodelist_foreach_data
	xref	~~k_nodelist_add
	xref	~~k_nodelist_create
	xref	~~k_nodelist_init
	xref	~~k_to_uppercase
	xref	~~k_string_copy_string
	xref	~~k_string_toString
	xref	~~k_string_indexOf
	xref	~~k_fxstring_equals
	xref	~~k_fxstring_copy_string
	xref	~~k_fxstring_add
	xref	~~k_fxstring_addchar
	xref	~~k_fxstring_reinit
	xref	~~k_fxstring_new
	xref	~~k_fxstring_init
	xref	~~strtok
	xref	~~strstr
	xref	~~strlen
	xref	~~strcpy
	xref	~~strcmp
	xref	~~strcat
	xref	~~memset
	udata
~~consoleBufferTemp
	ds	8064
	ends
	udata
~~consoleBuffer
	ds	8064
	ends
	udata
~~consolespinctx
	ds	6
	ends
	udata
~~_k_window_list
	ds	3510
	ends
	xref	~~EGAFONT
	xref	~~_ctype
	.sym	~~consoleWindowProc,~~consoleWindowProc,78,2,0
	.sym	~~k_set_background,~~k_set_background,65,2,0
	.sym	~~k_scroll_screen,~~k_scroll_screen,65,2,0
	.sym	~~consoleBufferTemp,~~consoleBufferTemp,869,3,0,56,72
	.sym	~~consoleBuffer,~~consoleBuffer,869,3,0,56,72
	.sym	~~tokentypeNames,~~tokentypeNames,1134,3,32,29
	.sym	~~cursorCurrentColor,~~cursorCurrentColor,16,3,16
	.sym	~~cursorFlashInterval,~~cursorFlashInterval,16,3,16
	.sym	~~consolespinctx,~~consolespinctx,10,3,48,60
	.sym	~~consolespinner,~~consolespinner,110,3,0,4
	.sym	~~console_command_proc,~~console_command_proc,5232,3,32,23
	.sym	~~console_commands,~~console_commands,1134,3,32,23
	.sym	~~_k_window_list,~~_k_window_list,106,3,0,30,10
	.sym	~~_k_window_index,~~_k_window_index,5,3,16
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
	.sym	~~cmd_LINEUP,~~cmd_LINEUP,80,18,0
	.sym	~~cmd_RESUME,~~cmd_RESUME,80,18,0
	.sym	~~cmd_PAUSE,~~cmd_PAUSE,80,18,0
	.sym	~~cmd_TIME,~~cmd_TIME,80,18,0
	.sym	~~cmd_EXIT,~~cmd_EXIT,80,18,0
	.sym	~~cmd_START,~~cmd_START,80,18,0
	.sym	~~cmd_Window,~~cmd_Window,80,18,0
	.sym	~~cmd_SEND,~~cmd_SEND,80,18,0
	.sym	~~cmd_DISPLAY,~~cmd_DISPLAY,80,18,0
	.sym	~~cmd_CHRDIR,~~cmd_CHRDIR,80,18,0
	.sym	~~cmd_TASKS,~~cmd_TASKS,80,18,0
	.sym	~~cmd_BACK,~~cmd_BACK,80,18,0
	.sym	~~cmd_FRONT,~~cmd_FRONT,80,18,0
	.sym	~~cmd_NEWDIR,~~cmd_NEWDIR,80,18,0
	.sym	~~cmd_INIT,~~cmd_INIT,80,18,0
	.sym	~~cmd_BCOLOR,~~cmd_BCOLOR,80,18,0
	.sym	~~cmd_FCOLOR,~~cmd_FCOLOR,80,18,0
	.sym	~~cmd_VOL,~~cmd_VOL,80,18,0
	.sym	~~cmd_DIR,~~cmd_DIR,80,18,0
	.sym	~~cmd_TESTSD,~~cmd_TESTSD,80,18,0
	.sym	~~cmd_WORKBENCH,~~cmd_WORKBENCH,80,18,0
	.sym	~~cmd_CLEAR,~~cmd_CLEAR,80,18,0
	.sym	~~getTokenSig,~~getTokenSig,65,2,0
	.sym	~~sig_walk,~~sig_walk,65,2,0
	.sym	~~newToken,~~newToken,1098,2,32,62
	.sym	~~token_to_string,~~token_to_string,1102,2,32
	.sym	~~tokenize,~~tokenize,1098,2,32,5
	.sym	~~DefConsoleProc3,~~DefConsoleProc3,65,2,0
	.sym	~~DefConsoleProc2,~~DefConsoleProc2,65,2,0
	.sym	~~ObjectClicked,~~ObjectClicked,65,2,0
	.sym	~~DefConsoleProc,~~DefConsoleProc,65,2,0
	.sym	~~k_console_process_command,~~k_console_process_command,65,2,0
	.sym	~~k_create_text_window,~~k_create_text_window,65,2,0
	.sym	~~k_window_draw,~~k_window_draw,65,2,0
	.sym	~~k_text_mode_dialog,~~k_text_mode_dialog,65,2,0
	.sym	~~k_put_color,~~k_put_color,69,2,0
	.sym	~~k_put_string_buffer,~~k_put_string_buffer,69,2,0
	.sym	~~k_put_string,~~k_put_string,69,2,0
	.sym	~~k_put_char,~~k_put_char,65,2,0
	.sym	~~k_clear_screen,~~k_clear_screen,65,2,0
	.sym	~~k_set_cursor_position,~~k_set_cursor_position,65,2,0
	.sym	~~k_enable_text_cursor,~~k_enable_text_cursor,65,2,0
	.sym	~~k_set_text_font_page,~~k_set_text_font_page,65,2,0
	.sym	~~k_set_border_color,~~k_set_border_color,65,2,0
	.sym	~~k_disable_border,~~k_disable_border,65,2,0
	.sym	~~k_enable_border,~~k_enable_border,65,2,0
	.sym	~~k_initialize_text_fonts,~~k_initialize_text_fonts,69,2,0
	.sym	~~k_initialize_text,~~k_initialize_text,65,2,0
	.sym	~~k_updatespinner,~~k_updatespinner,65,2,0
	.sym	~~k_init_spinner,~~k_init_spinner,65,2,0
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
	.sym	~~k_send_process_command_message,~~k_send_process_command_message,78,18,0
	.sym	~~k_send_message,~~k_send_message,78,18,0
	.sym	~~k_getKeyboardChar,~~k_getKeyboardChar,78,18,0
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
	.sym	~~k_create_ui_window_class,~~k_create_ui_window_class,1098,18,32,30
	.sym	~~k_add_window_hit_node,~~k_add_window_hit_node,65,18,0
	.sym	~~k_vdraw_ui_window,~~k_vdraw_ui_window,65,18,0
	.sym	~~k_put_winicon_point,~~k_put_winicon_point,69,18,0
	.sym	~~k_window_draw_background,~~k_window_draw_background,65,2,0
	.sym	~~k_draw_text_point,~~k_draw_text_point,69,18,0
	.sym	~~k_put_font,~~k_put_font,65,18,0
	.sym	~~setColors,~~setColors,65,18,0
	.sym	~~k_get_lines_max,~~k_get_lines_max,69,2,0
	.sym	~~k_get_lines_visible,~~k_get_lines_visible,69,2,0
	.sym	~~k_get_cols_per_line,~~k_get_cols_per_line,69,2,0
	.sym	~~k_get_cols_visible,~~k_get_cols_visible,69,2,0
	.sym	~~k_enable_text_mode,~~k_enable_text_mode,65,2,0
	.sym	PCUR_PALETTE_MAP,0,138,14,32,54
	.sym	CUR_PALETTE_MAP,0,10,14,400,54
	.sym	PCLICKDETECTED,0,138,14,32,53
	.sym	CLICKDETECTED,0,10,14,64,53
	.sym	OBJECTCLICKED,0,641,14,32
	.sym	~~EGAFONT,~~EGAFONT,110,18,0,0
	.sym	~~k_mem_deallocate_heap,~~k_mem_deallocate_heap,65,18,0
	.sym	~~k_mem_allocate_heap,~~k_mem_allocate_heap,1089,18,32
	.sym	MemoryCallback,0,641,14,32
	.sym	PFXMEMORYMAP,0,138,14,32,52
	.sym	FXMEMORYMAP,0,10,14,2072,52
	.sym	UMM_HEAP_INFO,0,10,14,256,51
	.sym	~~k_exec_get_current_process,~~k_exec_get_current_process,1098,18,32,20
	.sym	~~k_exec_throw_exception,~~k_exec_throw_exception,65,18,0
	.sym	DEVICEDRIVER_COMMAND,0,656,14,32
	.sym	DEVICEDRIVER_UNLOAD,0,654,14,32
	.sym	DEVICEDRIVER_WRITE,0,656,14,32
	.sym	DEVICEDRIVER_READ,0,656,14,32
	.sym	DEVICEDRIVER_LOAD,0,654,14,32
	.sym	PFX_BLOCK_DEVICE_DRIVER,0,138,14,32,50
	.sym	FX_BLOCK_DEVICE_DRIVER,0,10,14,1448,50
	.sym	PFX_DEVICE_DRIVER,0,138,14,32,49
	.sym	FX_DEVICE_DRIVER,0,10,14,1416,49
	.sym	~~k_debug_strings,~~k_debug_strings,65,18,0
	.sym	~~k_debug_message,~~k_debug_message,65,18,0
	.sym	~~k_debug_long,~~k_debug_long,65,18,0
	.sym	~~k_debug_integer,~~k_debug_integer,65,18,0
	.sym	~~k_debug_pointer,~~k_debug_pointer,65,18,0
	.sym	~~k_debug_char,~~k_debug_char,65,18,0
	.sym	~~k_debug_string,~~k_debug_string,65,18,0
	.sym	PDEBUGBYTEBITS,0,138,14,32,48
	.sym	DEBUGBYTEBITS,0,10,14,8,48
	.sym	PFXENVIRONMENT,0,138,14,32,47
	.sym	FXENVIRONMENT,0,10,14,96,47
	.sym	PFXZERPOPAGE,0,138,14,32,46
	.sym	FXZERPOPAGE,0,10,14,448,46
	.sym	KERNELTRAPCALL,0,641,14,32
	.sym	~~k_nodelist_foreach_data,~~k_nodelist_foreach_data,65,18,0
	.sym	FOREACHNODEUNTIL,0,654,14,32
	.sym	FOREACHNODE,0,641,14,32
	.sym	~~k_nodelist_add,~~k_nodelist_add,65,18,0
	.sym	~~k_nodelist_create,~~k_nodelist_create,1098,18,32,5
	.sym	~~k_nodelist_init,~~k_nodelist_init,1098,18,32,5
	.sym	~~_ctype,~~_ctype,110,18,0,0
	.sym	~~k_to_uppercase,~~k_to_uppercase,1102,18,32
	.sym	~~k_string_copy_string,~~k_string_copy_string,1102,18,32
	.sym	~~k_string_toString,~~k_string_toString,1102,18,32
	.sym	~~k_string_indexOf,~~k_string_indexOf,69,18,0
	.sym	~~k_fxstring_equals,~~k_fxstring_equals,78,18,0
	.sym	~~k_fxstring_copy_string,~~k_fxstring_copy_string,1102,18,32
	.sym	~~k_fxstring_add,~~k_fxstring_add,1102,18,32
	.sym	~~k_fxstring_addchar,~~k_fxstring_addchar,1102,18,32
	.sym	~~k_fxstring_reinit,~~k_fxstring_reinit,1098,18,32,45
	.sym	~~k_fxstring_new,~~k_fxstring_new,1098,18,32,45
	.sym	~~k_fxstring_init,~~k_fxstring_init,1098,18,32,45
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
	.sym	ldiv_t,0,10,14,64,2
	.sym	div_t,0,10,14,32,1
	.sym	wctype_t,0,16,14,16
	.sym	wint_t,0,16,14,16
	.sym	wchar_t,0,14,14,8
	.sym	ptrdiff_t,0,7,14,32
	.sym	~~strtok,~~strtok,1102,18,32
	.sym	~~strstr,~~strstr,1102,18,32
	.sym	~~strlen,~~strlen,80,18,0
	.sym	~~strcpy,~~strcpy,1102,18,32
	.sym	~~strcmp,~~strcmp,69,18,0
	.sym	~~strcat,~~strcat,1102,18,32
	.sym	~~memset,~~memset,1089,18,32
	.sym	Boolean_T,0,5,14,16
	.sym	size_t,0,16,14,16
	end

;:ts=8
R0	equ	1
R1	equ	5
R2	equ	9
R3	equ	13
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos_desktop_proc.c",0
;
;#include "fxos_desktop_proc.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos_desktop_proc.h",0
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos_desktop_proc.h",5
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos_desktop_proc.h",8
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxstring.h",0
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos_desktop_proc.h",13
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
	.line	743
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxconsole.h",16
	.stag	_fx_spinner_ctx,48,51
	.member	index,0,5,8,16
	.member	spinner,16,142,8,32
	.eos
	.stag	_fx_console_ctx,1144,52
	.member	lineBufferIndex,0,5,8,16
	.member	lineBuffer,16,110,8,0,128
	.member	isShifted,1040,14,8,8
	.member	userData,1048,129,8,32
	.member	screenBuffer,1080,129,8,32
	.member	Reserved1,1112,129,8,32
	.eos
	.stag	_token,64,53
	.member	type,0,5,8,16
	.member	depth,16,16,8,16
	.member	text,32,142,8,32
	.eos
	.stag	_command_args,64,54
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
	.stag	UMM_HEAP_INFO_t,256,55
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
	.stag	_fx_memory_map,2072,56
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
	.stag	_click_detected,64,57
	.member	window,0,138,8,32,27
	.member	handler,32,641,8,32
	.eos
	.stag	_current_palette_map,400,58
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
	.stag	_childMessage_t,64,59
	.member	msgType,0,16,8,16
	.member	msgData,16,129,8,32
	.member	dataSize,48,16,8,16
	.eos
	.line	362
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxeventmanager.h",9
	.stag	_fx_main_loopvars,16,60
	.member	dummy,0,5,8,16
	.eos
	.stag	_fxMouseMessageData,64,61
	.member	button1,0,14,8,8
	.member	button2,8,14,8,8
	.member	button3,16,14,8,8
	.member	button4,24,14,8,8
	.member	x,32,16,8,16
	.member	y,48,16,8,16
	.eos
	.stag	_fx_eventProcess,64,62
	.member	process,0,138,8,32,17
	.member	eventProc,32,641,8,32
	.eos
	.stag	_mouse_msg_state,184,63
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos_desktop_proc.h",14
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxgui.h",0
	.line	264
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos_desktop_proc.h",15
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxwindowmanager.h",0
	.line	362
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos_desktop_proc.h",16
	.line	62
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos_desktop_proc.c",2
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos_desktop_proc.c",3
;#include "fxnode.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxnode.h",0
	.line	61
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos_desktop_proc.c",4
;#include "fxmemorymanager.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxmemorymanager.h",0
	.line	39
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos_desktop_proc.c",5
;#include "fxgui.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxgui.h",0
	.line	264
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos_desktop_proc.c",6
;#include "fxmenumanager.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxmenumanager.h",0
	.line	26
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos_desktop_proc.c",7
;
;int tempX = 0;
	data
	xdef	~~tempX
~~tempX:
	dw	$0
	ends
;int tempY = 0;
	data
	xdef	~~tempY
~~tempY:
	dw	$0
	ends
;
;LPCHAR textData = "Test String.";
	data
	xdef	~~textData
~~textData:
	dl	L1+0
	ends
	data
L1:
	db	$54,$65,$73,$74,$20,$53,$74,$72,$69,$6E,$67,$2E,$00
	ends
;
;static int xscale,yscale,xoffset,yoffset,p[4];
;static float a[4],b[4],c[4],d[4],e[4],f[4];
;
;void drawImage(int color);
;void drawMandelbrot(void);
;
;
;#define DEBUG_MOUSE_ENABLE 		0
;#define DEBUG_MOUSE_CX 	   		1
;#define DEBUG_MOUSE_CY 	   		2
;#define DEBUG_MOUSE_BOXING 		3
;#define DEBUG_MOUSE_BOX_TOP 	4
;#define DEBUG_MOUSE_BOX_LEFT 	5
;#define DEBUG_MOUSE_BOX_ENABLE 	6
;
;#pragma section CODE=DTOP,offset $07:7FFF
DTOP	section	offset $07:7FFF
	ends
;
;VOID DesktopEnvironmentProc(PFXOSMESSAGE pMsg)
;{
	.line	31
	.line	32
	DTOP
	xdef	~~DesktopEnvironmentProc
	func
	.function	32
~~DesktopEnvironmentProc:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L3
	tcs
	phd
	tcd
pMsg_0	set	4
	.block	32
;	PFXPROCESS p = NULL;
;
;	//k_debug_string("DesktopEnvironmentProc enter\r\n");
;
;	if(pMsg!=NULL)
p_1	set	0
	.sym	p,0,138,1,32,17
	.sym	pMsg,4,138,6,32,13
	stz	<L4+p_1
	stz	<L4+p_1+2
	.line	37
;	{
	lda	<L3+pMsg_0
	ora	<L3+pMsg_0+2
	bne	L6
	brl	L10001
L6:
	.line	38
;		p = k_exec_get_current_process();
	.line	39
	jsl	~~k_exec_get_current_process
	sta	<L4+p_1
	stx	<L4+p_1+2
;
;		switch(pMsg->type)
	.line	41
	ldy	#$8
	lda	[<L3+pMsg_0],Y
	brl	L10002
;		{
	.line	42
;		case FX_INIT_MESSAGE:
	.line	43
L10004:
;			if(p!=NULL)
	.line	44
;			{
	lda	<L4+p_1
	ora	<L4+p_1+2
	bne	L7
	brl	L10005
L7:
	.line	45
;				k_debug_long("DesktopEnvironmentProc::ProcessId:",p->procId);
	.line	46
	ldy	#$4
	lda	[<L4+p_1],Y
	pha
	ldy	#$2
	lda	[<L4+p_1],Y
	pha
	pea	#^L2
	pea	#<L2
	jsl	~~k_debug_long
;
;
;				k_exec_enable_process_timer(PROCESS_TIMER_0,20);
	.line	49
	pea	#<$14
	pea	#<$0
	jsl	~~k_exec_enable_process_timer
;
;
;				p->desktopCtl = k_mem_allocate_heap(sizeof(DESKTOP_CONTROL));
	.line	52
	pea	#<$31
	jsl	~~k_mem_allocate_heap
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$58
	sta	[<L4+p_1],Y
	lda	<R0+2
	ldy	#$5a
	sta	[<L4+p_1],Y
;				if(p->desktopCtl)
	.line	53
;				{
	ldy	#$58
	lda	[<L4+p_1],Y
	ldy	#$5a
	ora	[<L4+p_1],Y
	bne	L8
	brl	L10006
L8:
	.line	54
;					memset(p->desktopCtl,0,sizeof(DESKTOP_CONTROL));
	.line	55
	pea	#<$31
	pea	#<$0
	ldy	#$5a
	lda	[<L4+p_1],Y
	pha
	ldy	#$58
	lda	[<L4+p_1],Y
	pha
	jsl	~~memset
;				}
	.line	56
;
;				k_gui_init_mousepointer(TRUE);
L10006:
	.line	58
	pea	#<$1
	jsl	~~k_gui_init_mousepointer
;				k_init_desktop(p);
	.line	59
	pei	<L4+p_1+2
	pei	<L4+p_1
	jsl	~~k_init_desktop
;
;				k_user_CreateWindowClass("desktopWindowClass",NULL,0,NULL,NULL,NULL,DesktopWindowProc);
	.line	61
	pea	#^~~DesktopWindowProc
	pea	#<~~DesktopWindowProc
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#^L2+35
	pea	#<L2+35
	jsl	~~k_user_CreateWindowClass
;				k_user_CreateWindow(FXWS_VISIBLE,
	.line	62
;									"desktopWindowClass",
;									"DesktopWindow",
;									0,0,
;									640,480,
;									NULL,
;									NULL,
;									NULL);
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$1e0
	pea	#<$280
	pea	#<$0
	pea	#<$0
	pea	#^L2+73
	pea	#<L2+73
	pea	#^L2+54
	pea	#<L2+54
	pea	#^$1
	pea	#<$1
	jsl	~~k_user_CreateWindow
;
;
;
;			}
	.line	73
;			break;
L10005:
	.line	74
	brl	L10003
;		case FX_PROCESS:
	.line	75
L10007:
;			/*
;			//k_debug_string("DesktopWindowProc::FX_PROCESS\r\n");
;
;			for(i=0;i<1000;i++)
;			{
;				asm NOP;
;			}
;
;			*/
;			break;
	.line	85
	brl	L10003
;		default:
	.line	86
L10008:
;			break;
	.line	87
	brl	L10003
;		}
	.line	88
L10002:
	xref	~~~swt
	jsl	~~~swt
	dw	2
	dw	65280
	dw	L10007-1
	dw	65281
	dw	L10004-1
	dw	L10008-1
L10003:
;	}
	.line	89
;
;	return;
L10001:
	.line	91
L9:
	lda	<L3+2
	sta	<L3+2+4
	lda	<L3+1
	sta	<L3+1+4
	pld
	tsc
	clc
	adc	#L3+4
	tcs
	rtl
;}
	.line	92
	.endblock	92
L3	equ	8
L4	equ	5
	ends
	efunc
	.endfunc	92,5,8
	.line	92
	data
L2:
	db	$44,$65,$73,$6B,$74,$6F,$70,$45,$6E,$76,$69,$72,$6F,$6E,$6D
	db	$65,$6E,$74,$50,$72,$6F,$63,$3A,$3A,$50,$72,$6F,$63,$65,$73
	db	$73,$49,$64,$3A,$00,$64,$65,$73,$6B,$74,$6F,$70,$57,$69,$6E
	db	$64,$6F,$77,$43,$6C,$61,$73,$73,$00,$64,$65,$73,$6B,$74,$6F
	db	$70,$57,$69,$6E,$64,$6F,$77,$43,$6C,$61,$73,$73,$00,$44,$65
	db	$73,$6B,$74,$6F,$70,$57,$69,$6E,$64,$6F,$77,$00
	ends
;
;BOOL DesktopWindowProc(PFXOSMESSAGE pMsg)
;{
	.line	94
	.line	95
	DTOP
	xdef	~~DesktopWindowProc
	func
	.function	95
~~DesktopWindowProc:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L11
	tcs
	phd
	tcd
pMsg_0	set	4
	.block	95
;	LPCHAR ptr = NULL;
;	PWINDOW pWin = NULL;
;	PWINDOW dlgWnd = NULL;
;	PFXPROCESS p = NULL;
;	PCONSOLECTX pctx = NULL;
;	BYTE decodedKey = 0;
;	int i = 0;
;	int temp1;
;	int temp2;
;	int cx,cy,px,py;
;	UINT temp3;
;	BYTE serial;
;	PCLICKDETECTED pcd;
;
;	LPVOID pixelLocation = NULL;
;
;	PFXNODE  clickNode = NULL;
;
;	HMENU desktopMenu = NULL;
;	HMENU subMenu     = NULL;
;
;	LPCHAR	digits[] = {"0","1","2","3","4","5","6","7","8","9"};
	data
L14:
	dl	L10+0
	dl	L10+2
	dl	L10+4
	dl	L10+6
	dl	L10+8
	dl	L10+10
	dl	L10+12
	dl	L10+14
	dl	L10+16
	dl	L10+18
	ends
;
;	//k_debug_string("DesktopWindowProc enter\r\n");
;	if(pMsg!=NULL)
ptr_1	set	0
pWin_1	set	4
dlgWnd_1	set	8
p_1	set	12
pctx_1	set	16
decodedKey_1	set	20
i_1	set	21
temp1_1	set	23
temp2_1	set	25
cx_1	set	27
cy_1	set	29
px_1	set	31
py_1	set	33
temp3_1	set	35
serial_1	set	37
pcd_1	set	38
pixelLocation_1	set	42
clickNode_1	set	46
desktopMenu_1	set	50
subMenu_1	set	54
digits_1	set	58
	.sym	ptr,0,142,1,32
	.sym	pWin,4,138,1,32,27
	.sym	dlgWnd,8,138,1,32,27
	.sym	p,12,138,1,32,17
	.sym	pctx,16,138,1,32,52
	.sym	decodedKey,20,14,1,8
	.sym	i,21,5,1,16
	.sym	temp1,23,5,1,16
	.sym	temp2,25,5,1,16
	.sym	cx,27,5,1,16
	.sym	cy,29,5,1,16
	.sym	px,31,5,1,16
	.sym	py,33,5,1,16
	.sym	temp3,35,16,1,16
	.sym	serial,37,14,1,8
	.sym	pcd,38,138,1,32,57
	.sym	pixelLocation,42,129,1,32
	.sym	clickNode,46,138,1,32,2
	.sym	desktopMenu,50,129,1,32
	.sym	subMenu,54,129,1,32
	.sym	digits,58,1134,1,32,10
	.sym	pMsg,4,138,6,32,13
	stz	<L12+ptr_1
	stz	<L12+ptr_1+2
	stz	<L12+pWin_1
	stz	<L12+pWin_1+2
	stz	<L12+dlgWnd_1
	stz	<L12+dlgWnd_1+2
	stz	<L12+p_1
	stz	<L12+p_1+2
	stz	<L12+pctx_1
	stz	<L12+pctx_1+2
	sep	#$20
	longa	off
	stz	<L12+decodedKey_1
	rep	#$20
	longa	on
	stz	<L12+i_1
	stz	<L12+pixelLocation_1
	stz	<L12+pixelLocation_1+2
	stz	<L12+clickNode_1
	stz	<L12+clickNode_1+2
	stz	<L12+desktopMenu_1
	stz	<L12+desktopMenu_1+2
	stz	<L12+subMenu_1
	stz	<L12+subMenu_1+2
	pea	#^L14
	pea	#<L14
	clc
	tdc
	adc	#<L12+digits_1
	sta	<R0
	lda	#$0
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	lda	#$28
	xref	~~~fmov
	jsl	~~~fmov
	.line	120
;	{
	lda	<L11+pMsg_0
	ora	<L11+pMsg_0+2
	bne	L15
	brl	L10009
L15:
	.line	121
;		p = k_exec_get_current_process();
	.line	122
	jsl	~~k_exec_get_current_process
	sta	<L12+p_1
	stx	<L12+p_1+2
;
;		if(p)
	.line	124
;		{
	lda	<L12+p_1
	ora	<L12+p_1+2
	bne	L16
	brl	L10010
L16:
	.line	125
;			pctx = (PCONSOLECTX)p->ctx;
	.line	126
	ldy	#$a
	lda	[<L12+p_1],Y
	sta	<L12+pctx_1
	ldy	#$c
	lda	[<L12+p_1],Y
	sta	<L12+pctx_1+2
;			//k_debug_pointer("DesktopWindowProc::pctx:",pctx);
;			//k_debug_pointer("DesktopWindowProc::pctx->userData:",pctx->userData);
;		}
	.line	129
;
;		switch(pMsg->type)
L10010:
	.line	131
	ldy	#$8
	lda	[<L11+pMsg_0],Y
	brl	L10011
;		{
	.line	132
;		case FX_CREATE_WINDOW:
	.line	133
L10013:
;			k_debug_string("DesktopWindowProc::FX_CREATE_WINDOW\r\n");
	.line	134
	pea	#^L10+20
	pea	#<L10+20
	jsl	~~k_debug_string
;
;			p->ctx = k_mem_allocate_heap(sizeof(CONSOLECTX));
	.line	136
	pea	#<$8f
	jsl	~~k_mem_allocate_heap
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$a
	sta	[<L12+p_1],Y
	lda	<R0+2
	ldy	#$c
	sta	[<L12+p_1],Y
;			if(p->ctx)
	.line	137
;			{
	ldy	#$a
	lda	[<L12+p_1],Y
	ldy	#$c
	ora	[<L12+p_1],Y
	bne	L17
	brl	L10014
L17:
	.line	138
;				pctx = (PCONSOLECTX)p->ctx;
	.line	139
	ldy	#$a
	lda	[<L12+p_1],Y
	sta	<L12+pctx_1
	ldy	#$c
	lda	[<L12+p_1],Y
	sta	<L12+pctx_1+2
;				k_debug_pointer("DesktopWindowProc::pctx:",pctx);
	.line	140
	pei	<L12+pctx_1+2
	pei	<L12+pctx_1
	pea	#^L10+58
	pea	#<L10+58
	jsl	~~k_debug_pointer
;				pctx->userData  = (LPVOID)k_mem_allocate_heap(8*sizeof(UINT));
	.line	141
	pea	#<$10
	jsl	~~k_mem_allocate_heap
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$83
	sta	[<L12+pctx_1],Y
	lda	<R0+2
	ldy	#$85
	sta	[<L12+pctx_1],Y
;
;				k_debug_pointer("DesktopWindowProc::pctx->userData:",pctx->userData);
	.line	143
	ldy	#$85
	lda	[<L12+pctx_1],Y
	pha
	ldy	#$83
	lda	[<L12+pctx_1],Y
	pha
	pea	#^L10+83
	pea	#<L10+83
	jsl	~~k_debug_pointer
;
;
;				((INT*)pctx->userData)[DEBUG_MOUSE_ENABLE] 	= FALSE;
	.line	146
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	lda	#$0
	sta	[<R0]
;				((INT*)pctx->userData)[DEBUG_MOUSE_CX] 		= -1;
	.line	147
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	lda	#$ffff
	ldy	#$2
	sta	[<R0],Y
;				((INT*)pctx->userData)[DEBUG_MOUSE_CY] 		= -1;
	.line	148
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	lda	#$ffff
	ldy	#$4
	sta	[<R0],Y
;				((INT*)pctx->userData)[DEBUG_MOUSE_BOXING] 	= FALSE;
	.line	149
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	lda	#$0
	ldy	#$6
	sta	[<R0],Y
;				((INT*)pctx->userData)[DEBUG_MOUSE_BOX_TOP] = -1;
	.line	150
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	lda	#$ffff
	ldy	#$8
	sta	[<R0],Y
;				((INT*)pctx->userData)[DEBUG_MOUSE_BOX_LEFT]= -1;
	.line	151
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	lda	#$ffff
	ldy	#$a
	sta	[<R0],Y
;				((INT*)pctx->userData)[DEBUG_MOUSE_BOX_ENABLE]= FALSE;
	.line	152
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	lda	#$0
	ldy	#$c
	sta	[<R0],Y
;
;			}
	.line	154
;			//k_initializeMenuManager();
;
;			//k_vdma_fill_rect(100,100,100,50,15);
;			//k_shadow_fill_rect_address(BITMAP_BANK_0,100, 151, 100, 50, 15);
;			/*
;			k_scratch_save_bitblt(100,100, 100,50, 0,0);
;			k_scratch_restore_bitblt(0,0, 100,50, 100,151);
;
;			//k_shadow_fill_rect_address(BITMAP_BANK_0,201, 100, 100, 50, 15);
;			k_shadow_fill_rect_address(SHADOW_BANK_0,201, 100, 100, 50, 15);
;			k_scratch_save_bitblt(201,100, 100,50, 0,0);
;			k_scratch_restore_bitblt(0,0, 100,50, 201,151);
;			*/
;
;
;			k_user_CreateWindowClass("preferencesWindowClass",NULL,0,NULL,NULL,NULL,preferencesWindowProc);
L10014:
	.line	170
	pea	#^~~preferencesWindowProc
	pea	#<~~preferencesWindowProc
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#^L10+118
	pea	#<L10+118
	jsl	~~k_user_CreateWindowClass
;			k_user_CreateWindowClass("testWindowClass",NULL,0,NULL,NULL,NULL,testWindowProc);
	.line	171
	pea	#^~~testWindowProc
	pea	#<~~testWindowProc
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#^L10+141
	pea	#<L10+141
	jsl	~~k_user_CreateWindowClass
;
;			k_user_CreateWindowClass("listboxWindowClass",NULL,0,NULL,NULL,NULL,listboxWindowProc);
	.line	173
	pea	#^~~listboxWindowProc
	pea	#<~~listboxWindowProc
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#^L10+157
	pea	#<L10+157
	jsl	~~k_user_CreateWindowClass
;			k_user_CreateWindowClass("textboxWindowClass",NULL,0,NULL,NULL,NULL,textboxWindowProc);
	.line	174
	pea	#^~~textboxWindowProc
	pea	#<~~textboxWindowProc
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#^L10+176
	pea	#<L10+176
	jsl	~~k_user_CreateWindowClass
;
;
;
;
;//			k_user_CreateWindow(FXWS_OVERLAPPED | FXWS_CAPTION | FXWS_SYSMENU | FXWS_THICKFRAME | FXWS_MINIMIZEBOX | FXWS_MAXIMIZEBOX | FXWS_VISIBLE,
;
;
;			//k_shadow_fill_rect_address(BITMAP_BANK_0,100, 151, 100, 50, 15);
;			//k_shadow_fill_rect_address(BITMAP_BANK_0,201, 151, 100, 50, 15);
;
;
;			desktopMenu = k_user_CreateMenuResource();
	.line	186
	jsl	~~k_user_CreateMenuResource
	sta	<L12+desktopMenu_1
	stx	<L12+desktopMenu_1+2
;			if(desktopMenu)
	.line	187
;			{
	lda	<L12+desktopMenu_1
	ora	<L12+desktopMenu_1+2
	bne	L18
	brl	L10015
L18:
	.line	188
;
;				subMenu = k_user_AddMenuItem(desktopMenu,"File" ,20);
	.line	190
	pea	#<$14
	pea	#^L10+195
	pea	#<L10+195
	pei	<L12+desktopMenu_1+2
	pei	<L12+desktopMenu_1
	jsl	~~k_user_AddMenuItem
	sta	<L12+subMenu_1
	stx	<L12+subMenu_1+2
;							k_user_AddMenuItem(subMenu,"Volume Info",21);
	.line	191
	pea	#<$15
	pea	#^L10+200
	pea	#<L10+200
	pei	<L12+subMenu_1+2
	pei	<L12+subMenu_1
	jsl	~~k_user_AddMenuItem
;							k_user_AddMenuItem(subMenu,"Rename",22);
	.line	192
	pea	#<$16
	pea	#^L10+212
	pea	#<L10+212
	pei	<L12+subMenu_1+2
	pei	<L12+subMenu_1
	jsl	~~k_user_AddMenuItem
;							k_user_AddMenuItem(subMenu,"Copy",23);
	.line	193
	pea	#<$17
	pea	#^L10+219
	pea	#<L10+219
	pei	<L12+subMenu_1+2
	pei	<L12+subMenu_1
	jsl	~~k_user_AddMenuItem
;							k_user_AddMenuItem(subMenu,"Mount",24);
	.line	194
	pea	#<$18
	pea	#^L10+224
	pea	#<L10+224
	pei	<L12+subMenu_1+2
	pei	<L12+subMenu_1
	jsl	~~k_user_AddMenuItem
;							k_user_AddMenuItem(subMenu,"Eject",25);
	.line	195
	pea	#<$19
	pea	#^L10+230
	pea	#<L10+230
	pei	<L12+subMenu_1+2
	pei	<L12+subMenu_1
	jsl	~~k_user_AddMenuItem
;							k_user_AddMenuItem(subMenu,"Run...",26);
	.line	196
	pea	#<$1a
	pea	#^L10+236
	pea	#<L10+236
	pei	<L12+subMenu_1+2
	pei	<L12+subMenu_1
	jsl	~~k_user_AddMenuItem
;							k_user_AddMenuItem(subMenu,"__________________",0);
	.line	197
	pea	#<$0
	pea	#^L10+243
	pea	#<L10+243
	pei	<L12+subMenu_1+2
	pei	<L12+subMenu_1
	jsl	~~k_user_AddMenuItem
;							k_user_AddMenuItem(subMenu,"Processes",27);
	.line	198
	pea	#<$1b
	pea	#^L10+262
	pea	#<L10+262
	pei	<L12+subMenu_1+2
	pei	<L12+subMenu_1
	jsl	~~k_user_AddMenuItem
;							k_user_AddMenuItem(subMenu,"Refresh Desktop",28);
	.line	199
	pea	#<$1c
	pea	#^L10+272
	pea	#<L10+272
	pei	<L12+subMenu_1+2
	pei	<L12+subMenu_1
	jsl	~~k_user_AddMenuItem
;							k_user_AddMenuItem(subMenu,"Quit to CLI",29);
	.line	200
	pea	#<$1d
	pea	#^L10+288
	pea	#<L10+288
	pei	<L12+subMenu_1+2
	pei	<L12+subMenu_1
	jsl	~~k_user_AddMenuItem
;
;				subMenu = k_user_AddMenuItem(desktopMenu,"Edit" ,30);
	.line	202
	pea	#<$1e
	pea	#^L10+300
	pea	#<L10+300
	pei	<L12+desktopMenu_1+2
	pei	<L12+desktopMenu_1
	jsl	~~k_user_AddMenuItem
	sta	<L12+subMenu_1
	stx	<L12+subMenu_1+2
;							k_user_AddMenuItem(subMenu,"Copy",31);
	.line	203
	pea	#<$1f
	pea	#^L10+305
	pea	#<L10+305
	pei	<L12+subMenu_1+2
	pei	<L12+subMenu_1
	jsl	~~k_user_AddMenuItem
;							k_user_AddMenuItem(subMenu,"Cut",32);
	.line	204
	pea	#<$20
	pea	#^L10+310
	pea	#<L10+310
	pei	<L12+subMenu_1+2
	pei	<L12+subMenu_1
	jsl	~~k_user_AddMenuItem
;							k_user_AddMenuItem(subMenu,"Paste",33);
	.line	205
	pea	#<$21
	pea	#^L10+314
	pea	#<L10+314
	pei	<L12+subMenu_1+2
	pei	<L12+subMenu_1
	jsl	~~k_user_AddMenuItem
;							k_user_AddMenuItem(subMenu,"______________",0);
	.line	206
	pea	#<$0
	pea	#^L10+320
	pea	#<L10+320
	pei	<L12+subMenu_1+2
	pei	<L12+subMenu_1
	jsl	~~k_user_AddMenuItem
;							k_user_AddMenuItem(subMenu,"Preferences",34);
	.line	207
	pea	#<$22
	pea	#^L10+335
	pea	#<L10+335
	pei	<L12+subMenu_1+2
	pei	<L12+subMenu_1
	jsl	~~k_user_AddMenuItem
;
;				subMenu = k_user_AddMenuItem(desktopMenu,"Debug",50);
	.line	209
	pea	#<$32
	pea	#^L10+347
	pea	#<L10+347
	pei	<L12+desktopMenu_1+2
	pei	<L12+desktopMenu_1
	jsl	~~k_user_AddMenuItem
	sta	<L12+subMenu_1
	stx	<L12+subMenu_1+2
;							 k_user_AddMenuItem(subMenu,"Debug Fonts",51);
	.line	210
	pea	#<$33
	pea	#^L10+353
	pea	#<L10+353
	pei	<L12+subMenu_1+2
	pei	<L12+subMenu_1
	jsl	~~k_user_AddMenuItem
;				             k_user_AddMenuItem(subMenu,"Debug Window",52);
	.line	211
	pea	#<$34
	pea	#^L10+365
	pea	#<L10+365
	pei	<L12+subMenu_1+2
	pei	<L12+subMenu_1
	jsl	~~k_user_AddMenuItem
;				             k_user_AddMenuItem(subMenu,"Debug Selection",53);
	.line	212
	pea	#<$35
	pea	#^L10+378
	pea	#<L10+378
	pei	<L12+subMenu_1+2
	pei	<L12+subMenu_1
	jsl	~~k_user_AddMenuItem
;							 k_user_AddMenuItem(subMenu,"Debug Drag",54);
	.line	213
	pea	#<$36
	pea	#^L10+394
	pea	#<L10+394
	pei	<L12+subMenu_1+2
	pei	<L12+subMenu_1
	jsl	~~k_user_AddMenuItem
;							 k_user_AddMenuItem(subMenu,"Debug Rubberband",55);
	.line	214
	pea	#<$37
	pea	#^L10+405
	pea	#<L10+405
	pei	<L12+subMenu_1+2
	pei	<L12+subMenu_1
	jsl	~~k_user_AddMenuItem
;
;							 k_user_AddMenuItem(subMenu,"Debug Pointer Hourglass",56);
	.line	216
	pea	#<$38
	pea	#^L10+422
	pea	#<L10+422
	pei	<L12+subMenu_1+2
	pei	<L12+subMenu_1
	jsl	~~k_user_AddMenuItem
;							 k_user_AddMenuItem(subMenu,"Debug Pointer Help",57);
	.line	217
	pea	#<$39
	pea	#^L10+446
	pea	#<L10+446
	pei	<L12+subMenu_1+2
	pei	<L12+subMenu_1
	jsl	~~k_user_AddMenuItem
;							 k_user_AddMenuItem(subMenu,"Debug Pointer Arrow",58);
	.line	218
	pea	#<$3a
	pea	#^L10+465
	pea	#<L10+465
	pei	<L12+subMenu_1+2
	pei	<L12+subMenu_1
	jsl	~~k_user_AddMenuItem
;							 k_user_AddMenuItem(subMenu,"Debug Pointer Resize",DESK_MENU_DBG_RESIZE);
	.line	219
	pea	#<$3b
	pea	#^L10+485
	pea	#<L10+485
	pei	<L12+subMenu_1+2
	pei	<L12+subMenu_1
	jsl	~~k_user_AddMenuItem
;
;
;
;
;				subMenu = k_user_AddMenuItem(desktopMenu,"About",40);
	.line	224
	pea	#<$28
	pea	#^L10+506
	pea	#<L10+506
	pei	<L12+desktopMenu_1+2
	pei	<L12+desktopMenu_1
	jsl	~~k_user_AddMenuItem
	sta	<L12+subMenu_1
	stx	<L12+subMenu_1+2
;						  	 k_user_AddMenuItem(subMenu,"About FX/OS...",41);
	.line	225
	pea	#<$29
	pea	#^L10+512
	pea	#<L10+512
	pei	<L12+subMenu_1+2
	pei	<L12+subMenu_1
	jsl	~~k_user_AddMenuItem
; 							 k_user_AddMenuItem(subMenu,"_________________",0);
	.line	226
	pea	#<$0
	pea	#^L10+527
	pea	#<L10+527
	pei	<L12+subMenu_1+2
	pei	<L12+subMenu_1
	jsl	~~k_user_AddMenuItem
;						  	 //k_user_AddMenuItem(subMenu,"Developer Options",42);
; 							 //k_user_AddMenuItem(subMenu,"Debug Kernel",43);
;						  	 k_user_AddMenuItem(subMenu,"Textbox Test",42);
	.line	229
	pea	#<$2a
	pea	#^L10+545
	pea	#<L10+545
	pei	<L12+subMenu_1+2
	pei	<L12+subMenu_1
	jsl	~~k_user_AddMenuItem
; 							 k_user_AddMenuItem(subMenu,"Listbox Test",43);
	.line	230
	pea	#<$2b
	pea	#^L10+558
	pea	#<L10+558
	pei	<L12+subMenu_1+2
	pei	<L12+subMenu_1
	jsl	~~k_user_AddMenuItem
;			}
	.line	231
;			k_user_CreateMenu(pMsg->hwnd,desktopMenu,NULL);
L10015:
	.line	232
	pea	#^$0
	pea	#<$0
	pei	<L12+desktopMenu_1+2
	pei	<L12+desktopMenu_1
	ldy	#$c
	lda	[<L11+pMsg_0],Y
	pha
	ldy	#$a
	lda	[<L11+pMsg_0],Y
	pha
	jsl	~~k_user_CreateMenu
;
;			break;
	.line	234
	brl	L10012
;		case FX_PROCESS_TIMER:
	.line	235
L10016:
;			//k_debug_string("DesktopWindowProc::FX_PROCESS_TIMER\r\n");
;			break;
	.line	237
	brl	L10012
;		case FX_DRAW_WINDOW:
	.line	238
L10017:
;			k_debug_string("DesktopWindowProc::FX_DRAW_WINDOW\r\n");
	.line	239
	pea	#^L10+571
	pea	#<L10+571
	jsl	~~k_debug_string
;
;			/*
;			k_user_CreateButton(pMsg->hwnd,"Ok",0x8801,100,250,-1,-1);
;
;			k_user_CreateButton(pMsg->hwnd,"Cancel",0x8802,150,250,-1,-1);
;
;			for(i=0;i<10;i++)
;				k_user_CreateButton(pMsg->hwnd,digits[i],0x080+i,10 + (32 * i),400,-1,-1);
;
;			*/
;
;			//k_vdma_fill_rect(0,0,640,480,k_getUIBackgroundColor());
;
;			//_k_user_send_child_message(pMsg->hwnd,FX_REDRAW_WINDOW,NULL,0);
;
;			i = 100;
	.line	255
	lda	#$64
	sta	<L12+i_1
;			/*
;			k_user_CreateWindow(FXWS_THICKFRAME | FXWS_CAPTION | FXWS_VISIBLE | FXWS_SYSMENU | FXWS_MINIMIZEBOX | FXWS_MAXIMIZEBOX,
;								"testWindowClass",
;								"Test Window 1",
;								i,i,
;								300,200,
;								pMsg->hwnd,
;								NULL,
;								NULL);
;			i+=20;
;
;
;			k_user_CreateWindow(FXWS_THICKFRAME | FXWS_CAPTION | FXWS_VISIBLE | FXWS_SYSMENU | FXWS_MINIMIZEBOX,
;								"testWindowClass",
;								"Test Window 2",
;								i,i,
;								300,200,
;								pMsg->hwnd,
;								NULL,
;								NULL);
;			i+=20;
;
;			k_user_CreateWindow(FXWS_THICKFRAME | FXWS_CAPTION | FXWS_VISIBLE | FXWS_SYSMENU,
;								"testWindowClass",
;								"Test Window 3",
;								i,i,
;								300,200,
;								pMsg->hwnd,
;								NULL,
;								NULL);
;			i+=20;
;
;			k_user_CreateWindow(FXWS_THICKFRAME | FXWS_CAPTION | FXWS_VISIBLE,
;								"testWindowClass",
;								"Test Window 4",
;								i,i,
;								300,200,
;								pMsg->hwnd,
;								NULL,
;								NULL);
;			i+=20;
;
;			k_user_CreateWindow(FXWS_THICKFRAME | FXWS_VISIBLE,
;								"testWindowClass",
;								"Test Window 5",
;								i,i,
;								300,200,
;								pMsg->hwnd,
;								NULL,
;								NULL);
;			i+=20;
;
;			k_user_CreateWindow(FXWS_BORDER | FXWS_VISIBLE,
;								"testWindowClass",
;								"Test Window 5",
;								i,i,
;								300,200,
;								pMsg->hwnd,
;								NULL,
;								NULL);
;			i+=20;
;
;
;			dlgWnd = k_user_CreateWindow(FXWS_DLGFRAME | FXWS_VISIBLE,
;								"dialogWindowClass",
;								"Dialog Window",
;								i,i,
;								300,200,
;								pMsg->hwnd,
;								NULL,
;								NULL);
;
;			k_user_CenterWindow((HWND)dlgWnd);
;
;			i+=20;
;			*/
;
;			break;
	.line	333
	brl	L10012
;		case FX_CONTROL_COMMAND:
	.line	334
L10018:
;			k_debug_integer("DesktopWindowProc::FX_CONTROL_COMMAND:", ((PFXCMDMESSAGE)pMsg)->cmdCId );
	.line	335
	ldy	#$16
	lda	[<L11+pMsg_0],Y
	pha
	pea	#^L10+607
	pea	#<L10+607
	jsl	~~k_debug_integer
;
;			break;
	.line	337
	brl	L10012
;
;		case FX_SCROLLBAR_COMMAND:
	.line	339
L10019:
;			k_debug_integer("DesktopWindowProc::FX_SCROLLBAR_COMMAND:", ((PFXCMDMESSAGE)pMsg)->cmdCId );
	.line	340
	ldy	#$16
	lda	[<L11+pMsg_0],Y
	pha
	pea	#^L10+646
	pea	#<L10+646
	jsl	~~k_debug_integer
;			if(((PFXCMDMESSAGE)pMsg)->cmdCId == CTL_HORZ_SCROLL )
	.line	341
;			{
	ldy	#$16
	lda	[<L11+pMsg_0],Y
	cmp	#<$2
	beq	L19
	brl	L10020
L19:
	.line	342
;				k_debug_integer("DesktopWindowProc::FX_SCROLLBAR_COMMAND:LOCATION:", ((PFXCMDMESSAGE)pMsg)->cmdMId );
	.line	343
	ldy	#$18
	lda	[<L11+pMsg_0],Y
	pha
	pea	#^L10+687
	pea	#<L10+687
	jsl	~~k_debug_integer
;				k_debug_integer("DesktopWindowProc::FX_SCROLLBAR_COMMAND:VALUE:", ((PFXCMDMESSAGE)pMsg)->parameter1);
	.line	344
	ldy	#$1a
	lda	[<L11+pMsg_0],Y
	pha
	pea	#^L10+737
	pea	#<L10+737
	jsl	~~k_debug_integer
;			}
	.line	345
;			break;
L10020:
	.line	346
	brl	L10012
;		case FX_MENU_COMMAND:
	.line	347
L10021:
;			//k_debug_integer("DesktopWindowProc::FX_MENU_COMMAND:", ((PFXCMDMESSAGE)pMsg)->cmdCId );
;			//k_debug_integer("DesktopWindowProc::MENUCTL:", ((PFXCMDMESSAGE)pMsg)->cmdMId );
;			//k_debug_long("DesktopWindowProc::FX_MENU_COMMAND:DATA:", ((PFXCMDMESSAGE)pMsg)->parameter1 );
;
;			if(((PFXCMDMESSAGE)pMsg)->cmdCId == CTL_MENU_SELECTED )
	.line	352
;			{
	ldy	#$16
	lda	[<L11+pMsg_0],Y
	cmp	#<$1
	beq	L20
	brl	L10022
L20:
	.line	353
;				switch(((PFXCMDMESSAGE)pMsg)->cmdMId)
	.line	354
	ldy	#$18
	lda	[<L11+pMsg_0],Y
	brl	L10023
;				{
	.line	355
;				case DESK_MENU_DEVOPS:
	.line	356
L10025:
;					dlgWnd = k_getWindowFromHandle(k_user_findWindow("TEXTBOX1"));
	.line	357
	pea	#^L10+784
	pea	#<L10+784
	jsl	~~k_user_findWindow
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_getWindowFromHandle
	sta	<L12+dlgWnd_1
	stx	<L12+dlgWnd_1+2
;					if(!dlgWnd || (dlgWnd && dlgWnd->isClosed))
	.line	358
;					{
	lda	<L12+dlgWnd_1
	ora	<L12+dlgWnd_1+2
	bne	L22
	brl	L21
L22:
	lda	<L12+dlgWnd_1
	ora	<L12+dlgWnd_1+2
	bne	L23
	brl	L10026
L23:
	ldy	#$15d
	lda	[<L12+dlgWnd_1],Y
	and	#$ff
	bne	L24
	brl	L10026
L24:
L21:
	.line	359
;						dlgWnd = k_user_CreateWindow(FXWS_BORDER | FXWS_VISIBLE,
	.line	360
;											"textboxWindowClass",
;											"TEXTBOX1",
;											400,20,
;											200,FONTH + 4,
;											pMsg->hwnd,
;											NULL,
;											NULL);
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	ldy	#$c
	lda	[<L11+pMsg_0],Y
	pha
	ldy	#$a
	lda	[<L11+pMsg_0],Y
	pha
	jsl	~~k_font_getFontHeight
	sta	<R0
	clc
	lda	#$4
	adc	<R0
	pha
	pea	#<$c8
	pea	#<$14
	pea	#<$190
	pea	#^L10+812
	pea	#<L10+812
	pea	#^L10+793
	pea	#<L10+793
	pea	#^$10001
	pea	#<$10001
	jsl	~~k_user_CreateWindow
	sta	<L12+dlgWnd_1
	stx	<L12+dlgWnd_1+2
;
;					}
	.line	369
;					else
	brl	L10027
L10026:
;					{
	.line	371
;						k_debug_string("TEXTBOX1 Already Open\r\n");
	.line	372
	pea	#^L10+821
	pea	#<L10+821
	jsl	~~k_debug_string
;					}
	.line	373
L10027:
;
;					dlgWnd = k_getWindowFromHandle(k_user_findWindow("TEXTBOX2"));
	.line	375
	pea	#^L10+845
	pea	#<L10+845
	jsl	~~k_user_findWindow
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_getWindowFromHandle
	sta	<L12+dlgWnd_1
	stx	<L12+dlgWnd_1+2
;					if(!dlgWnd || (dlgWnd && dlgWnd->isClosed))
	.line	376
;					{
	lda	<L12+dlgWnd_1
	ora	<L12+dlgWnd_1+2
	bne	L26
	brl	L25
L26:
	lda	<L12+dlgWnd_1
	ora	<L12+dlgWnd_1+2
	bne	L27
	brl	L10028
L27:
	ldy	#$15d
	lda	[<L12+dlgWnd_1],Y
	and	#$ff
	bne	L28
	brl	L10028
L28:
L25:
	.line	377
;						dlgWnd = k_user_CreateWindow(FXWS_BORDER | FXWS_VISIBLE,
	.line	378
;											"textboxWindowClass",
;											"TEXTBOX2",
;											400,50,
;											200,FONTH + 4,
;											pMsg->hwnd,
;											NULL,
;											NULL);
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	ldy	#$c
	lda	[<L11+pMsg_0],Y
	pha
	ldy	#$a
	lda	[<L11+pMsg_0],Y
	pha
	jsl	~~k_font_getFontHeight
	sta	<R0
	clc
	lda	#$4
	adc	<R0
	pha
	pea	#<$c8
	pea	#<$32
	pea	#<$190
	pea	#^L10+873
	pea	#<L10+873
	pea	#^L10+854
	pea	#<L10+854
	pea	#^$10001
	pea	#<$10001
	jsl	~~k_user_CreateWindow
	sta	<L12+dlgWnd_1
	stx	<L12+dlgWnd_1+2
;
;					}
	.line	387
;					else
	brl	L10029
L10028:
;					{
	.line	389
;						k_debug_string("TEXTBOX2 Already Open\r\n");
	.line	390
	pea	#^L10+882
	pea	#<L10+882
	jsl	~~k_debug_string
;					}
	.line	391
L10029:
;
;
;					break;
	.line	394
	brl	L10024
;				case DESK_MENU_DEBUG:
	.line	395
L10030:
;
;					dlgWnd = k_getWindowFromHandle(k_user_findWindow("LISTBOX"));
	.line	397
	pea	#^L10+906
	pea	#<L10+906
	jsl	~~k_user_findWindow
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_getWindowFromHandle
	sta	<L12+dlgWnd_1
	stx	<L12+dlgWnd_1+2
;					if(!dlgWnd || (dlgWnd && dlgWnd->isClosed))
	.line	398
;					{
	lda	<L12+dlgWnd_1
	ora	<L12+dlgWnd_1+2
	bne	L30
	brl	L29
L30:
	lda	<L12+dlgWnd_1
	ora	<L12+dlgWnd_1+2
	bne	L31
	brl	L10031
L31:
	ldy	#$15d
	lda	[<L12+dlgWnd_1],Y
	and	#$ff
	bne	L32
	brl	L10031
L32:
L29:
	.line	399
;						dlgWnd = k_user_CreateWindow(FXWS_BORDER | FXWS_VISIBLE,
	.line	400
;											"listboxWindowClass",
;											"LISTBOX",
;											20,20,
;											200,200,
;											pMsg->hwnd,
;											NULL,
;											NULL);
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	ldy	#$c
	lda	[<L11+pMsg_0],Y
	pha
	ldy	#$a
	lda	[<L11+pMsg_0],Y
	pha
	pea	#<$c8
	pea	#<$c8
	pea	#<$14
	pea	#<$14
	pea	#^L10+933
	pea	#<L10+933
	pea	#^L10+914
	pea	#<L10+914
	pea	#^$10001
	pea	#<$10001
	jsl	~~k_user_CreateWindow
	sta	<L12+dlgWnd_1
	stx	<L12+dlgWnd_1+2
;
;					}
	.line	409
;					else
	brl	L10032
L10031:
;					{
	.line	411
;						k_debug_string("Listbox Already Open\r\n");
	.line	412
	pea	#^L10+941
	pea	#<L10+941
	jsl	~~k_debug_string
;					}
	.line	413
L10032:
;					break;
	.line	414
	brl	L10024
;				case DESK_MENU_ABOUTOS:
	.line	415
L10033:
;					dlgWnd = k_getWindowFromHandle(k_user_findWindow("About FX/OS"));
	.line	416
	pea	#^L10+964
	pea	#<L10+964
	jsl	~~k_user_findWindow
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_getWindowFromHandle
	sta	<L12+dlgWnd_1
	stx	<L12+dlgWnd_1+2
;					if(!dlgWnd || (dlgWnd && dlgWnd->isClosed))
	.line	417
;					{
	lda	<L12+dlgWnd_1
	ora	<L12+dlgWnd_1+2
	bne	L34
	brl	L33
L34:
	lda	<L12+dlgWnd_1
	ora	<L12+dlgWnd_1+2
	bne	L35
	brl	L10034
L35:
	ldy	#$15d
	lda	[<L12+dlgWnd_1],Y
	and	#$ff
	bne	L36
	brl	L10034
L36:
L33:
	.line	418
;						dlgWnd = k_user_CreateWindow(FXWS_DLGFRAME | FXWS_VISIBLE,
	.line	419
;											"aboutDialogWindowClass",
;											"About FX/OS",
;											150,150,
;											300,150,
;											pMsg->hwnd,
;											NULL,
;											NULL);
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	ldy	#$c
	lda	[<L11+pMsg_0],Y
	pha
	ldy	#$a
	lda	[<L11+pMsg_0],Y
	pha
	pea	#<$96
	pea	#<$12c
	pea	#<$96
	pea	#<$96
	pea	#^L10+999
	pea	#<L10+999
	pea	#^L10+976
	pea	#<L10+976
	pea	#^$40001
	pea	#<$40001
	jsl	~~k_user_CreateWindow
	sta	<L12+dlgWnd_1
	stx	<L12+dlgWnd_1+2
;
;					}
	.line	428
;					else
	brl	L10035
L10034:
;					{
	.line	430
;						k_debug_string("Dialog Already Open\r\n");
	.line	431
	pea	#^L10+1011
	pea	#<L10+1011
	jsl	~~k_debug_string
;					}
	.line	432
L10035:
;					break;
	.line	433
	brl	L10024
;
;				case DESK_MENU_PREFS:
	.line	435
L10036:
;
;					dlgWnd = k_getWindowFromHandle(k_user_findWindow("Preferences"));
	.line	437
	pea	#^L10+1033
	pea	#<L10+1033
	jsl	~~k_user_findWindow
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_getWindowFromHandle
	sta	<L12+dlgWnd_1
	stx	<L12+dlgWnd_1+2
;					if(!dlgWnd || (dlgWnd && dlgWnd->isClosed))
	.line	438
;					{
	lda	<L12+dlgWnd_1
	ora	<L12+dlgWnd_1+2
	bne	L38
	brl	L37
L38:
	lda	<L12+dlgWnd_1
	ora	<L12+dlgWnd_1+2
	bne	L39
	brl	L10037
L39:
	ldy	#$15d
	lda	[<L12+dlgWnd_1],Y
	and	#$ff
	bne	L40
	brl	L10037
L40:
L37:
	.line	439
;						dlgWnd = k_user_CreateWindow(FXWS_THICKFRAME | FXWS_CAPTION | FXWS_VISIBLE | FXWS_SYSMENU,
	.line	440
;											"preferencesWindowClass",
;											"Preferences",
;											150,150,
;											350,250,
;											pMsg->hwnd,
;											NULL,
;											NULL);
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	ldy	#$c
	lda	[<L11+pMsg_0],Y
	pha
	ldy	#$a
	lda	[<L11+pMsg_0],Y
	pha
	pea	#<$fa
	pea	#<$15e
	pea	#<$96
	pea	#<$96
	pea	#^L10+1068
	pea	#<L10+1068
	pea	#^L10+1045
	pea	#<L10+1045
	pea	#^$2000d
	pea	#<$2000d
	jsl	~~k_user_CreateWindow
	sta	<L12+dlgWnd_1
	stx	<L12+dlgWnd_1+2
;
;						dlgWnd = k_user_CreateWindow(FXWS_THICKFRAME | FXWS_CAPTION | FXWS_VISIBLE | FXWS_SYSMENU,
	.line	449
;											"preferencesWindowClass",
;											"Child1",
;											20,20,
;											150,120,
;											k_getHandleFromWindow(dlgWnd),
;											NULL,
;											NULL);
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pei	<L12+dlgWnd_1+2
	pei	<L12+dlgWnd_1
	jsl	~~k_getHandleFromWindow
	sta	<R0
	stx	<R0+2
	phx
	pha
	pea	#<$78
	pea	#<$96
	pea	#<$14
	pea	#<$14
	pea	#^L10+1103
	pea	#<L10+1103
	pea	#^L10+1080
	pea	#<L10+1080
	pea	#^$2000d
	pea	#<$2000d
	jsl	~~k_user_CreateWindow
	sta	<L12+dlgWnd_1
	stx	<L12+dlgWnd_1+2
;
;						dlgWnd = k_user_CreateWindow(FXWS_THICKFRAME | FXWS_CAPTION | FXWS_VISIBLE | FXWS_SYSMENU,
	.line	458
;											"preferencesWindowClass",
;											"C2",
;											20,20,
;											100,75,
;											k_getHandleFromWindow(dlgWnd),
;											NULL,
;											NULL);
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pei	<L12+dlgWnd_1+2
	pei	<L12+dlgWnd_1
	jsl	~~k_getHandleFromWindow
	sta	<R0
	stx	<R0+2
	phx
	pha
	pea	#<$4b
	pea	#<$64
	pea	#<$14
	pea	#<$14
	pea	#^L10+1133
	pea	#<L10+1133
	pea	#^L10+1110
	pea	#<L10+1110
	pea	#^$2000d
	pea	#<$2000d
	jsl	~~k_user_CreateWindow
	sta	<L12+dlgWnd_1
	stx	<L12+dlgWnd_1+2
;					}
	.line	466
;					else
	brl	L10038
L10037:
;					{
	.line	468
;						k_debug_string("Dialog Already Open\r\n");
	.line	469
	pea	#^L10+1136
	pea	#<L10+1136
	jsl	~~k_debug_string
;					}
	.line	470
L10038:
;
;					break;
	.line	472
	brl	L10024
;				case DESK_MENU_DBG_FONTS:
	.line	473
L10039:
;					k_debug_string("DESK_MENU_DBG_FONTS\r\n");
	.line	474
	pea	#^L10+1158
	pea	#<L10+1158
	jsl	~~k_debug_string
;					break;
	.line	475
	brl	L10024
;				case DESK_MENU_DBG_WINDOW:
	.line	476
L10040:
;					k_debug_string("DESK_MENU_DBG_WINDOW\r\n");
	.line	477
	pea	#^L10+1180
	pea	#<L10+1180
	jsl	~~k_debug_string
;
;					dlgWnd = k_getWindowFromHandle(k_user_findWindow("Debug Window"));
	.line	479
	pea	#^L10+1203
	pea	#<L10+1203
	jsl	~~k_user_findWindow
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_getWindowFromHandle
	sta	<L12+dlgWnd_1
	stx	<L12+dlgWnd_1+2
;					if(dlgWnd == NULL)
	.line	480
;					{
	lda	<L12+dlgWnd_1
	ora	<L12+dlgWnd_1+2
	beq	L41
	brl	L10041
L41:
	.line	481
;						k_user_CreateWindow(FXWS_THICKFRAME | FXWS_CAPTION | FXWS_VISIBLE | FXWS_SYSMENU | FXWS_MINIMIZEBOX | FXWS_MAXIMIZEBOX,
	.line	482
;											"testWindowClass",
;											"Debug Window",
;											100,100,
;											300,200,
;											pMsg->hwnd,
;											NULL,
;											NULL);
	pea	#^$0
	pea	#<$0
	pea	#^$0
	pea	#<$0
	ldy	#$c
	lda	[<L11+pMsg_0],Y
	pha
	ldy	#$a
	lda	[<L11+pMsg_0],Y
	pha
	pea	#<$c8
	pea	#<$12c
	pea	#<$64
	pea	#<$64
	pea	#^L10+1232
	pea	#<L10+1232
	pea	#^L10+1216
	pea	#<L10+1216
	pea	#^$2003d
	pea	#<$2003d
	jsl	~~k_user_CreateWindow
;					}
	.line	490
;					else
	brl	L10042
L10041:
;					{
	.line	492
;						k_debug_string("Debug Window Already Open\r\n");
	.line	493
	pea	#^L10+1245
	pea	#<L10+1245
	jsl	~~k_debug_string
;					}
	.line	494
L10042:
;
;					break;
	.line	496
	brl	L10024
;				case DESK_MENU_DBG_SELECT:
	.line	497
L10043:
;					k_debug_string("DESK_MENU_DBG_SELECT\r\n");
	.line	498
	pea	#^L10+1273
	pea	#<L10+1273
	jsl	~~k_debug_string
;					break;
	.line	499
	brl	L10024
;				case DESK_MENU_DBG_DRAG:
	.line	500
L10044:
;					//pctx->Reserved1 = (LPVOID)(!((LONG)pctx->Reserved1));
;
;					((INT*)pctx->userData)[DEBUG_MOUSE_ENABLE] = !((INT*)pctx->userData)[DEBUG_MOUSE_ENABLE];
	.line	503
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	stz	<R1
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R2
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R2+2
	lda	[<R2]
	beq	L43
	brl	L42
L43:
	inc	<R1
L42:
	lda	<R1
	sta	[<R0]
;
;					if(!((INT*)pctx->userData)[DEBUG_MOUSE_ENABLE])
	.line	505
;					{
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	lda	[<R0]
	beq	L44
	brl	L10045
L44:
	.line	506
;						px = ((INT*)pctx->userData)[1];
	.line	507
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	ldy	#$2
	lda	[<R0],Y
	sta	<L12+px_1
;						py = ((INT*)pctx->userData)[2];
	.line	508
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	ldy	#$4
	lda	[<R0],Y
	sta	<L12+py_1
;
;						if(px > -1)
	.line	510
;						{
	sec
	lda	#$ffff
	sbc	<L12+px_1
	bvs	L45
	eor	#$8000
L45:
	bpl	L46
	brl	L10046
L46:
	.line	511
;							//k_draw_rect_slow(px,py, px+100, py+100, 0);
;							k_vdma_fill_rect_ex(px,py, 200, 200, FILLCOLOR_TRANSPARENT,BITMAP_FRONT);
	.line	513
	pea	#<$0
	pea	#<$0
	pea	#<$c8
	pea	#<$c8
	ldy	#$0
	lda	<L12+py_1
	bpl	L47
	dey
L47:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	lda	<L12+px_1
	bpl	L48
	dey
L48:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect_ex
;						}
	.line	514
;					}
L10046:
	.line	515
;
;
;					//k_debug_integer("DesktopWindowProc::DEBUG MENU DRAG:",((INT*)pctx->userData)[DEBUG_MOUSE_ENABLE]);
;					//k_debug_pointer("DesktopWindowProc::DEBUG MENU CONTROL HMENU:",(HMENU)((PFXCMDMESSAGE)pMsg)->parameter2);
;					//k_debug_strings("DesktopWindowProc::DEBUG MENU CONTROL caption:",(LPSTR)((PMENU)((PFXCMDMESSAGE)pMsg)->parameter2)->pCaption);
;					//k_debug_pointer("DesktopWindowProc::DEBUG MENU CONTROL subMenus:",((PMENU)((PFXCMDMESSAGE)pMsg)->parameter2)->subMenus);
;
;					k_user_SetMenuState((HMENU)((PFXCMDMESSAGE)pMsg)->parameter2,((PFXCMDMESSAGE)pMsg)->cmdMId,((INT*)pctx->userData)[DEBUG_MOUSE_ENABLE]);
L10045:
	.line	523
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	lda	[<R0]
	pha
	ldy	#$18
	lda	[<L11+pMsg_0],Y
	pha
	ldy	#$20
	lda	[<L11+pMsg_0],Y
	pha
	ldy	#$1e
	lda	[<L11+pMsg_0],Y
	pha
	jsl	~~k_user_SetMenuState
;
;
;					//k_send_command_message((HWND)((PFXCMDMESSAGE)pMsg)->parameter2,FX_CONTROL_COMMAND,CTL_MENU_CHECKED,((PFXCMDMESSAGE)pMsg)->cmdMId,((INT*)pctx->userData)[0],0);
;
;
;					break;
	.line	529
	brl	L10024
;				case DESK_MENU_DBG_RUBBERBAND:
	.line	530
L10047:
;
;
;					((INT*)pctx->userData)[DEBUG_MOUSE_BOX_ENABLE] = !((INT*)pctx->userData)[DEBUG_MOUSE_BOX_ENABLE];
	.line	533
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	stz	<R1
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R2
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R2+2
	ldy	#$c
	lda	[<R2],Y
	beq	L50
	brl	L49
L50:
	inc	<R1
L49:
	lda	<R1
	ldy	#$c
	sta	[<R0],Y
;
;					if(!((INT*)pctx->userData)[DEBUG_MOUSE_BOX_ENABLE])
	.line	535
;					{
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	ldy	#$c
	lda	[<R0],Y
	beq	L51
	brl	L10048
L51:
	.line	536
;
;						((INT*)pctx->userData)[DEBUG_MOUSE_BOXING] = FALSE;
	.line	538
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	lda	#$0
	ldy	#$6
	sta	[<R0],Y
;						((INT*)pctx->userData)[DEBUG_MOUSE_BOX_TOP] = -1;
	.line	539
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	lda	#$ffff
	ldy	#$8
	sta	[<R0],Y
;						((INT*)pctx->userData)[DEBUG_MOUSE_BOX_LEFT] = -1;
	.line	540
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	lda	#$ffff
	ldy	#$a
	sta	[<R0],Y
;
;					}
	.line	542
;
;
;					//k_debug_integer("DesktopWindowProc::DEBUG MENU RUBBERBAND:",((INT*)pctx->userData)[DEBUG_MOUSE_BOX_ENABLE]);
;					//k_debug_pointer("DesktopWindowProc::DEBUG MENU CONTROL HMENU:",(HMENU)((PFXCMDMESSAGE)pMsg)->parameter2);
;					//k_debug_strings("DesktopWindowProc::DEBUG MENU CONTROL caption:",(LPSTR)((PMENU)((PFXCMDMESSAGE)pMsg)->parameter2)->pCaption);
;					//k_debug_pointer("DesktopWindowProc::DEBUG MENU CONTROL subMenus:",((PMENU)((PFXCMDMESSAGE)pMsg)->parameter2)->subMenus);
;
;
;					k_user_SetMenuState((HMENU)((PFXCMDMESSAGE)pMsg)->parameter2,((PFXCMDMESSAGE)pMsg)->cmdMId,((INT*)pctx->userData)[DEBUG_MOUSE_BOX_ENABLE]);
L10048:
	.line	551
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	ldy	#$c
	lda	[<R0],Y
	pha
	ldy	#$18
	lda	[<L11+pMsg_0],Y
	pha
	ldy	#$20
	lda	[<L11+pMsg_0],Y
	pha
	ldy	#$1e
	lda	[<L11+pMsg_0],Y
	pha
	jsl	~~k_user_SetMenuState
;					//k_send_command_message((HWND)((PFXCMDMESSAGE)pMsg)->parameter2,FX_MENU_COMMAND,CTL_MENU_CHECKED,((PFXCMDMESSAGE)pMsg)->cmdMId,((INT*)pctx->userData)[0],0);
;
;					break;
	.line	554
	brl	L10024
;
;				case DESK_MENU_DBG_HOURGLASS:
	.line	556
L10049:
;					k_user_setMousePointer("HOURGLASS");
	.line	557
	pea	#^L10+1296
	pea	#<L10+1296
	jsl	~~k_user_setMousePointer
;					break;
	.line	558
	brl	L10024
;				case DESK_MENU_DBG_HELP:
	.line	559
L10050:
;					k_user_setMousePointer("HELP");
	.line	560
	pea	#^L10+1306
	pea	#<L10+1306
	jsl	~~k_user_setMousePointer
;					break;
	.line	561
	brl	L10024
;				case DESK_MENU_DBG_ARROW:
	.line	562
L10051:
;					k_user_setMousePointer("ARROW");
	.line	563
	pea	#^L10+1311
	pea	#<L10+1311
	jsl	~~k_user_setMousePointer
;					break;
	.line	564
	brl	L10024
;				case DESK_MENU_DBG_RESIZE:
	.line	565
L10052:
;					k_user_setMousePointer("RESIZE");
	.line	566
	pea	#^L10+1317
	pea	#<L10+1317
	jsl	~~k_user_setMousePointer
;					break;
	.line	567
	brl	L10024
;				default:
	.line	568
L10053:
;					break;
	.line	569
	brl	L10024
;				}
	.line	570
L10023:
	xref	~~~fsw
	jsl	~~~fsw
	dw	34
	dw	26
	dw	L10053-1
	dw	L10036-1
	dw	L10053-1
	dw	L10053-1
	dw	L10053-1
	dw	L10053-1
	dw	L10053-1
	dw	L10053-1
	dw	L10033-1
	dw	L10025-1
	dw	L10053-1
	dw	L10053-1
	dw	L10053-1
	dw	L10053-1
	dw	L10053-1
	dw	L10053-1
	dw	L10053-1
	dw	L10030-1
	dw	L10039-1
	dw	L10040-1
	dw	L10043-1
	dw	L10044-1
	dw	L10047-1
	dw	L10049-1
	dw	L10050-1
	dw	L10051-1
	dw	L10052-1
L10024:
;			}
	.line	571
;
;			break;
L10022:
	.line	573
	brl	L10012
;		case FX_KEY_UP:
	.line	574
L10054:
;			//k_debug_integer("DesktopWindowProc::FX_KEY_UP0:",pMsg->data[0]);
;			//k_debug_integer("DesktopWindowProc::FX_KEY_UP1:",pMsg->data[1]);
;			//k_debug_integer("DesktopWindowProc::FX_KEY_UP2:",pMsg->data[2]);
;			//k_debug_integer("DesktopWindowProc::isShifted:",pctx->isShifted);
;			k_debug_string("DesktopWindowProc::FX_KEY_UP\r\n");
	.line	579
	pea	#^L10+1324
	pea	#<L10+1324
	jsl	~~k_debug_string
;			break;
	.line	580
	brl	L10012
;		case FX_KEY_DOWN:
	.line	581
L10055:
;			//if(p!=NULL)
;			//	k_debug_integer("DesktopWindowProc::ProcessId:",p->procId);
;			//k_debug_integer("DesktopWindowProc::FX_KEY_DOWN0:",pMsg->data[0]);
;			//k_debug_integer("DesktopWindowProc::FX_KEY_DOWN1:",pMsg->data[1]);
;			//k_debug_integer("DesktopWindowProc::FX_KEY_DOWN2:",pMsg->data[2]);
;			//k_debug_integer("DesktopWindowProc::isShifted:",pctx->isShifted);
;
;			//k_debug_integer("DesktopWindowProc::curX:",p->consoleCtl->curX);
;			//k_debug_integer("DesktopWindowProc::curY:",p->consoleCtl->curY);
;
;			k_debug_string("DesktopWindowProc::FX_KEY_DOWN\r\n");
	.line	592
	pea	#^L10+1355
	pea	#<L10+1355
	jsl	~~k_debug_string
;
;			break;
	.line	594
	brl	L10012
;		case FX_DISK_INSERT:
	.line	595
L10056:
;
;			k_debug_string("DesktopWindowProc::DISK-INSERT:");
	.line	597
	pea	#^L10+1388
	pea	#<L10+1388
	jsl	~~k_debug_string
;			if(((PDISKINFO)pMsg->pheap)->stgName)
	.line	598
;			{
	ldy	#$e
	lda	[<L11+pMsg_0],Y
	ldy	#$10
	ora	[<L11+pMsg_0],Y
	bne	L52
	brl	L10057
L52:
	.line	599
;				k_debug_string(((PDISKINFO)pMsg->pheap)->stgName);
	.line	600
	ldy	#$10
	lda	[<L11+pMsg_0],Y
	pha
	ldy	#$e
	lda	[<L11+pMsg_0],Y
	pha
	jsl	~~k_debug_string
;			}
	.line	601
;			else
	brl	L10058
L10057:
;			{
	.line	603
;				k_debug_string("NULL");
	.line	604
	pea	#^L10+1420
	pea	#<L10+1420
	jsl	~~k_debug_string
;			}
	.line	605
L10058:
;			k_debug_string("\r\n");
	.line	606
	pea	#^L10+1425
	pea	#<L10+1425
	jsl	~~k_debug_string
;
;			((PDISKINFO)pMsg->pheap)->stgName[31] = 0;
	.line	608
	ldy	#$e
	lda	[<L11+pMsg_0],Y
	sta	<R0
	ldy	#$10
	lda	[<L11+pMsg_0],Y
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$1f
	sta	[<R0],Y
	rep	#$20
	longa	on
;
;			if(p->desktopCtl->currentDiskName && strcmp( k_to_uppercase(  ((PDISKINFO)pMsg->pheap)->stgName),p->desktopCtl->currentDiskName) == 0)
	.line	610
;			{
	ldy	#$58
	lda	[<L12+p_1],Y
	sta	<R0
	ldy	#$5a
	lda	[<L12+p_1],Y
	sta	<R0+2
	ldy	#$11
	lda	[<R0],Y
	ldy	#$13
	ora	[<R0],Y
	bne	L53
	brl	L10059
L53:
	ldy	#$58
	lda	[<L12+p_1],Y
	sta	<R0
	ldy	#$5a
	lda	[<L12+p_1],Y
	sta	<R0+2
	ldy	#$13
	lda	[<R0],Y
	pha
	ldy	#$11
	lda	[<R0],Y
	pha
	ldy	#$10
	lda	[<L11+pMsg_0],Y
	pha
	ldy	#$e
	lda	[<L11+pMsg_0],Y
	pha
	jsl	~~k_to_uppercase
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~strcmp
	tax
	beq	L54
	brl	L10059
L54:
	.line	611
;				k_debug_string("DesktopWindowProc::DISK-INSERT:NO-CHANGE\r\n");
	.line	612
	pea	#^L10+1428
	pea	#<L10+1428
	jsl	~~k_debug_string
;			}
	.line	613
;			else
	brl	L10060
L10059:
;			{
	.line	615
;				if(p->desktopCtl->currentDiskName)
	.line	616
;				{
	ldy	#$58
	lda	[<L12+p_1],Y
	sta	<R0
	ldy	#$5a
	lda	[<L12+p_1],Y
	sta	<R0+2
	ldy	#$11
	lda	[<R0],Y
	ldy	#$13
	ora	[<R0],Y
	bne	L55
	brl	L10061
L55:
	.line	617
;					temp1 = strlen(p->desktopCtl->currentDiskName);
	.line	618
	ldy	#$58
	lda	[<L12+p_1],Y
	sta	<R0
	ldy	#$5a
	lda	[<L12+p_1],Y
	sta	<R0+2
	ldy	#$13
	lda	[<R0],Y
	pha
	ldy	#$11
	lda	[<R0],Y
	pha
	jsl	~~strlen
	sta	<L12+temp1_1
;					temp2 = (temp1*4);
	.line	619
	lda	<L12+temp1_1
	asl	A
	asl	A
	sta	<L12+temp2_1
;					k_put_winicon_point(ICON_DISK,640 - (40 + temp2/2),20,p->desktopCtl->backgroundColor,PAINTMODE_BACKGROUND);
	.line	620
	pea	#<$f0
	ldy	#$58
	lda	[<L12+p_1],Y
	sta	<R0
	ldy	#$5a
	lda	[<L12+p_1],Y
	sta	<R0+2
	ldy	#$5
	lda	[<R0],Y
	pha
	pea	#<$14
	lda	<L12+temp2_1
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
	.line	621
	ldy	#$58
	lda	[<L12+p_1],Y
	sta	<R0
	ldy	#$5a
	lda	[<L12+p_1],Y
	sta	<R0+2
	ldy	#$5
	lda	[<R0],Y
	pha
	pea	#<$28
	lda	<L12+temp2_1
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
	sbc	<L12+temp2_1
	pha
	ldy	#$58
	lda	[<L12+p_1],Y
	sta	<R1
	ldy	#$5a
	lda	[<L12+p_1],Y
	sta	<R1+2
	ldy	#$13
	lda	[<R1],Y
	pha
	ldy	#$11
	lda	[<R1],Y
	pha
	jsl	~~k_draw_text_point
;				}
	.line	622
;
;				temp1 = strlen(((PDISKINFO)pMsg->pheap)->stgName);
L10061:
	.line	624
	ldy	#$10
	lda	[<L11+pMsg_0],Y
	pha
	ldy	#$e
	lda	[<L11+pMsg_0],Y
	pha
	jsl	~~strlen
	sta	<L12+temp1_1
;				temp2 = (temp1*4);
	.line	625
	lda	<L12+temp1_1
	asl	A
	asl	A
	sta	<L12+temp2_1
;
;				k_put_winicon_point(ICON_DISK,640 - (40 + temp2/2),20,0,PAINTMODE_DEFAULT);
	.line	627
	pea	#<$0
	pea	#<$0
	pea	#<$14
	lda	<L12+temp2_1
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
;				k_draw_text_point(k_to_uppercase(((PDISKINFO)pMsg->pheap)->stgName),640 - (35 + temp2/2) - (temp2),40,0);
	.line	628
	pea	#<$0
	pea	#<$28
	lda	<L12+temp2_1
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
	sbc	<L12+temp2_1
	pha
	ldy	#$10
	lda	[<L11+pMsg_0],Y
	pha
	ldy	#$e
	lda	[<L11+pMsg_0],Y
	pha
	jsl	~~k_to_uppercase
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_draw_text_point
;
;				if(p->desktopCtl->currentDiskName!=NULL)
	.line	630
;					k_mem_deallocate_heap(p->desktopCtl->currentDiskName);
	ldy	#$58
	lda	[<L12+p_1],Y
	sta	<R0
	ldy	#$5a
	lda	[<L12+p_1],Y
	sta	<R0+2
	ldy	#$11
	lda	[<R0],Y
	ldy	#$13
	ora	[<R0],Y
	bne	L56
	brl	L10062
L56:
	.line	631
	ldy	#$58
	lda	[<L12+p_1],Y
	sta	<R0
	ldy	#$5a
	lda	[<L12+p_1],Y
	sta	<R0+2
	ldy	#$13
	lda	[<R0],Y
	pha
	ldy	#$11
	lda	[<R0],Y
	pha
	jsl	~~k_mem_deallocate_heap
;
;				p->desktopCtl->currentDiskName = k_string_copy_string(((PDISKINFO)pMsg->pheap)->stgName);
L10062:
	.line	633
	ldy	#$58
	lda	[<L12+p_1],Y
	sta	<R0
	ldy	#$5a
	lda	[<L12+p_1],Y
	sta	<R0+2
	ldy	#$10
	lda	[<L11+pMsg_0],Y
	pha
	ldy	#$e
	lda	[<L11+pMsg_0],Y
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
;				pcd = k_mem_allocate_heap(sizeof(CLICKDETECTED));
	.line	635
	pea	#<$8
	jsl	~~k_mem_allocate_heap
	sta	<L12+pcd_1
	stx	<L12+pcd_1+2
;				if(pcd)
	.line	636
;				{
	lda	<L12+pcd_1
	ora	<L12+pcd_1+2
	bne	L57
	brl	L10063
L57:
	.line	637
;					pcd->window  = k_create_ui_window_class(640 - (40 + temp2/2),20,ICONH,ICONW,"disk","icon",NULL);
	.line	638
	pea	#^$0
	pea	#<$0
	pea	#^L10+1476
	pea	#<L10+1476
	pea	#^L10+1471
	pea	#<L10+1471
	pea	#<$10
	pea	#<$10
	pea	#<$14
	lda	<L12+temp2_1
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
	sta	[<L12+pcd_1]
	lda	<R0+2
	ldy	#$2
	sta	[<L12+pcd_1],Y
;					pcd->handler = ObjectClicked;
	.line	639
	lda	#<~~ObjectClicked
	ldy	#$4
	sta	[<L12+pcd_1],Y
	lda	#^~~ObjectClicked
	ldy	#$6
	sta	[<L12+pcd_1],Y
;					k_add_window_hit_node(pcd);
	.line	640
	pei	<L12+pcd_1+2
	pei	<L12+pcd_1
	jsl	~~k_add_window_hit_node
;				}
	.line	641
;
;				k_debug_message("DesktopWindowProc::DISK-INSERT:DISK:",p->desktopCtl->currentDiskName);
L10063:
	.line	643
	ldy	#$58
	lda	[<L12+p_1],Y
	sta	<R0
	ldy	#$5a
	lda	[<L12+p_1],Y
	sta	<R0+2
	ldy	#$13
	lda	[<R0],Y
	pha
	ldy	#$11
	lda	[<R0],Y
	pha
	pea	#^L10+1481
	pea	#<L10+1481
	jsl	~~k_debug_message
;			}
	.line	644
L10060:
;			break;
	.line	645
	brl	L10012
;		case FX_DISK_REMOVE:
	.line	646
L10064:
;
;			k_debug_string("DesktopWindowProc::DISK-REMOVE\r\n");
	.line	648
	pea	#^L10+1518
	pea	#<L10+1518
	jsl	~~k_debug_string
;
;			if(p->desktopCtl->currentDiskName)
	.line	650
;			{
	ldy	#$58
	lda	[<L12+p_1],Y
	sta	<R0
	ldy	#$5a
	lda	[<L12+p_1],Y
	sta	<R0+2
	ldy	#$11
	lda	[<R0],Y
	ldy	#$13
	ora	[<R0],Y
	bne	L58
	brl	L10065
L58:
	.line	651
;				k_debug_message("DesktopWindowProc::DISK-REMOVE:DISK:",p->desktopCtl->currentDiskName);
	.line	652
	ldy	#$58
	lda	[<L12+p_1],Y
	sta	<R0
	ldy	#$5a
	lda	[<L12+p_1],Y
	sta	<R0+2
	ldy	#$13
	lda	[<R0],Y
	pha
	ldy	#$11
	lda	[<R0],Y
	pha
	pea	#^L10+1551
	pea	#<L10+1551
	jsl	~~k_debug_message
;				k_debug_integer("DesktopWindowProc::DISK-REMOVE:backgroundColor:",p->desktopCtl->backgroundColor);
	.line	653
	ldy	#$58
	lda	[<L12+p_1],Y
	sta	<R0
	ldy	#$5a
	lda	[<L12+p_1],Y
	sta	<R0+2
	ldy	#$5
	lda	[<R0],Y
	pha
	pea	#^L10+1588
	pea	#<L10+1588
	jsl	~~k_debug_integer
;
;				temp1 = strlen(p->desktopCtl->currentDiskName);
	.line	655
	ldy	#$58
	lda	[<L12+p_1],Y
	sta	<R0
	ldy	#$5a
	lda	[<L12+p_1],Y
	sta	<R0+2
	ldy	#$13
	lda	[<R0],Y
	pha
	ldy	#$11
	lda	[<R0],Y
	pha
	jsl	~~strlen
	sta	<L12+temp1_1
;				temp2 = (temp1*4);
	.line	656
	lda	<L12+temp1_1
	asl	A
	asl	A
	sta	<L12+temp2_1
;
;				k_put_winicon_point(ICON_DISK,640 - (40 + temp2/2),20,p->desktopCtl->backgroundColor,PAINTMODE_BACKGROUND);
	.line	658
	pea	#<$f0
	ldy	#$58
	lda	[<L12+p_1],Y
	sta	<R0
	ldy	#$5a
	lda	[<L12+p_1],Y
	sta	<R0+2
	ldy	#$5
	lda	[<R0],Y
	pha
	pea	#<$14
	lda	<L12+temp2_1
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
;				k_draw_text_point(p->desktopCtl->currentDiskName,640 - (35 + temp2/2) - (temp2),40,p->desktopCtl->backgroundColor);
	.line	659
	ldy	#$58
	lda	[<L12+p_1],Y
	sta	<R0
	ldy	#$5a
	lda	[<L12+p_1],Y
	sta	<R0+2
	ldy	#$5
	lda	[<R0],Y
	pha
	pea	#<$28
	lda	<L12+temp2_1
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
	sbc	<L12+temp2_1
	pha
	ldy	#$58
	lda	[<L12+p_1],Y
	sta	<R1
	ldy	#$5a
	lda	[<L12+p_1],Y
	sta	<R1+2
	ldy	#$13
	lda	[<R1],Y
	pha
	ldy	#$11
	lda	[<R1],Y
	pha
	jsl	~~k_draw_text_point
;
;				if(p->desktopCtl->currentDiskName!=NULL)
	.line	661
;					k_mem_deallocate_heap(p->desktopCtl->currentDiskName);
	ldy	#$58
	lda	[<L12+p_1],Y
	sta	<R0
	ldy	#$5a
	lda	[<L12+p_1],Y
	sta	<R0+2
	ldy	#$11
	lda	[<R0],Y
	ldy	#$13
	ora	[<R0],Y
	bne	L59
	brl	L10066
L59:
	.line	662
	ldy	#$58
	lda	[<L12+p_1],Y
	sta	<R0
	ldy	#$5a
	lda	[<L12+p_1],Y
	sta	<R0+2
	ldy	#$13
	lda	[<R0],Y
	pha
	ldy	#$11
	lda	[<R0],Y
	pha
	jsl	~~k_mem_deallocate_heap
;
;				p->desktopCtl->currentDiskName = NULL;
L10066:
	.line	664
	ldy	#$58
	lda	[<L12+p_1],Y
	sta	<R0
	ldy	#$5a
	lda	[<L12+p_1],Y
	sta	<R0+2
	lda	#$0
	ldy	#$11
	sta	[<R0],Y
	lda	#$0
	ldy	#$13
	sta	[<R0],Y
;			}
	.line	665
;
;			break;
L10065:
	.line	667
	brl	L10012
;		case FX_APP_MESSAGE:
	.line	668
L10067:
;			k_debug_string("DesktopWindowProc::FX_APP_MESSAGE\r\n");
	.line	669
	pea	#^L10+1636
	pea	#<L10+1636
	jsl	~~k_debug_string
;			break;
	.line	670
	brl	L10012
;		case FX_MOUSE_MOVE:
	.line	671
L10068:
;			if(((INT*)pctx->userData)[DEBUG_MOUSE_ENABLE] && !((INT*)pctx->userData)[DEBUG_MOUSE_BOXING])
	.line	672
;			{
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	lda	[<R0]
	bne	L60
	brl	L10069
L60:
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	ldy	#$6
	lda	[<R0],Y
	beq	L61
	brl	L10069
L61:
	.line	673
;
;				cx = *((INT*)&pMsg->data[1]) - pWin->win_x;
	.line	675
	sec
	ldy	#$17
	lda	[<L11+pMsg_0],Y
	ldy	#$8
	sbc	[<L12+pWin_1],Y
	sta	<L12+cx_1
;				cy = *((INT*)&pMsg->data[3]) - pWin->win_y;
	.line	676
	sec
	ldy	#$19
	lda	[<L11+pMsg_0],Y
	ldy	#$a
	sbc	[<L12+pWin_1],Y
	sta	<L12+cy_1
;
;
;				px = ((INT*)pctx->userData)[DEBUG_MOUSE_CX];
	.line	679
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	ldy	#$2
	lda	[<R0],Y
	sta	<L12+px_1
;				py = ((INT*)pctx->userData)[DEBUG_MOUSE_CY];
	.line	680
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	ldy	#$4
	lda	[<R0],Y
	sta	<L12+py_1
;
;				if(px > -1)
	.line	682
;				{
	sec
	lda	#$ffff
	sbc	<L12+px_1
	bvs	L62
	eor	#$8000
L62:
	bpl	L63
	brl	L10070
L63:
	.line	683
;					//k_draw_rect_slow(px,py, px+100, py+100, 0);
;					k_vdma_fill_rect_ex(px,py, 200, 200, FILLCOLOR_TRANSPARENT,BITMAP_FRONT);
	.line	685
	pea	#<$0
	pea	#<$0
	pea	#<$c8
	pea	#<$c8
	ldy	#$0
	lda	<L12+py_1
	bpl	L64
	dey
L64:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	lda	<L12+px_1
	bpl	L65
	dey
L65:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect_ex
;				}
	.line	686
;
;				//k_draw_rect_slow(cx,cy, cx+100, cy+100, 15);
;				k_vdma_fill_rect_ex(cx,cy, 200, 100, 15,BITMAP_FRONT);
L10070:
	.line	689
	pea	#<$0
	pea	#<$f
	pea	#<$64
	pea	#<$c8
	ldy	#$0
	lda	<L12+cy_1
	bpl	L66
	dey
L66:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	lda	<L12+cx_1
	bpl	L67
	dey
L67:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect_ex
;
;				((INT*)pctx->userData)[DEBUG_MOUSE_CX] = cx;
	.line	691
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	lda	<L12+cx_1
	ldy	#$2
	sta	[<R0],Y
;				((INT*)pctx->userData)[DEBUG_MOUSE_CY] = cy;
	.line	692
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	lda	<L12+cy_1
	ldy	#$4
	sta	[<R0],Y
;
;			}
	.line	694
;
;			break;
L10069:
	.line	696
	brl	L10012
;
;		case FX_MOUSE_ENTER:
	.line	698
L10071:
;			k_debug_strings("DesktopWindowProc::FX_MOUSE_ENTER:",pWin->win_title);
	.line	699
	clc
	lda	#$d4
	adc	<L12+pWin_1
	sta	<R0
	lda	#$0
	adc	<L12+pWin_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L10+1672
	pea	#<L10+1672
	jsl	~~k_debug_strings
;			break;
	.line	700
	brl	L10012
;		case FX_MOUSE_EXIT:
	.line	701
L10072:
;			k_debug_strings("DesktopWindowProc::FX_MOUSE_EXIT:",pWin->win_title);
	.line	702
	clc
	lda	#$d4
	adc	<L12+pWin_1
	sta	<R0
	lda	#$0
	adc	<L12+pWin_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L10+1707
	pea	#<L10+1707
	jsl	~~k_debug_strings
;			break;
	.line	703
	brl	L10012
;
;		case FX_RBUTTON_DOWN:
	.line	705
L10073:
;			k_debug_string("DesktopWindowProc::FX_RBUTTON_DOWN\r\n");
	.line	706
	pea	#^L10+1741
	pea	#<L10+1741
	jsl	~~k_debug_string
;			//k_exec_throw_exception(0xFF000000,1,"Test Exception Mode Messages",-1);
;			//drawMandelbrot();
;
;			break;
	.line	710
	brl	L10012
;
;		case FX_LBUTTON_DOWN:
	.line	712
L10074:
;			k_debug_string("DesktopWindowProc::FX_LBUTTON_DOWN\r\n");
	.line	713
	pea	#^L10+1778
	pea	#<L10+1778
	jsl	~~k_debug_string
;			//k_debug_integer("DesktopWindowProc::DEBUG_MOUSE_BOX_ENABLE:",((INT*)pctx->userData)[DEBUG_MOUSE_BOX_ENABLE]);
;			//k_debug_integer("DesktopWindowProc::DEBUG_MOUSE_BOXING:",((INT*)pctx->userData)[DEBUG_MOUSE_BOXING]);
;
;			if(((INT*)pctx->userData)[DEBUG_MOUSE_BOX_ENABLE] && !((INT*)pctx->userData)[DEBUG_MOUSE_BOXING])
	.line	717
;			{
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	ldy	#$c
	lda	[<R0],Y
	bne	L68
	brl	L10075
L68:
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	ldy	#$6
	lda	[<R0],Y
	beq	L69
	brl	L10075
L69:
	.line	718
;
;				((INT*)pctx->userData)[DEBUG_MOUSE_BOXING] = TRUE;
	.line	720
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	lda	#$1
	ldy	#$6
	sta	[<R0],Y
;
;				cy = *((INT*)&pMsg->data[3]) - pWin->win_y;
	.line	722
	sec
	ldy	#$19
	lda	[<L11+pMsg_0],Y
	ldy	#$a
	sbc	[<L12+pWin_1],Y
	sta	<L12+cy_1
;				cx = *((INT*)&pMsg->data[1]) - pWin->win_x;
	.line	723
	sec
	ldy	#$17
	lda	[<L11+pMsg_0],Y
	ldy	#$8
	sbc	[<L12+pWin_1],Y
	sta	<L12+cx_1
;
;				((INT*)pctx->userData)[DEBUG_MOUSE_BOX_LEFT] = cx;
	.line	725
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	lda	<L12+cx_1
	ldy	#$a
	sta	[<R0],Y
;				((INT*)pctx->userData)[DEBUG_MOUSE_BOX_TOP]  = cy;
	.line	726
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	lda	<L12+cy_1
	ldy	#$8
	sta	[<R0],Y
;
;				((INT*)pctx->userData)[DEBUG_MOUSE_CX] = cx;
	.line	728
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	lda	<L12+cx_1
	ldy	#$2
	sta	[<R0],Y
;				((INT*)pctx->userData)[DEBUG_MOUSE_CY] = cy;
	.line	729
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	lda	<L12+cy_1
	ldy	#$4
	sta	[<R0],Y
;			}
	.line	730
;
;
;			break;
L10075:
	.line	733
	brl	L10012
;		case FX_LBUTTON_UP:
	.line	734
L10076:
;			k_debug_string("DesktopWindowProc::FX_LBUTTON_UP\r\n");
	.line	735
	pea	#^L10+1815
	pea	#<L10+1815
	jsl	~~k_debug_string
;			/*
;			//pixelLocation =  &(((unsigned char FAR *)BITMAP_BANK_0)[(long)(( ((long)200) * 640L) + ((long)200) )]);
;			pixelLocation =  (LPVOID)((long)(( ((long)200) * 640L) + ((long)200) ));
;
;			k_debug_pointer("DesktopWindowProc::pixelLocation:",pixelLocation);
;
;
;			while(temp1 == VDMA_STAT_VDMA_IPS)
;			{
;				temp1 = ( VDMA_STATUS_REG[0] & VDMA_STAT_VDMA_IPS);
;			}
;
;			//VDMA_CONTROL_REG[0] = 1 + 2;
;			VDMA_CONTROL_REG[0]  = (VDMA_CTRL_ENABLE | VDMA_CTRL_1D_2D );
;
;			k_debug_pointer("DesktopWindowProc::pixelLocation:",pixelLocation);
;
;			VDMA_SRC_ADDY_L[0]  = 0x00;//$AF0402 ;// Pointer to the Source of the Data to be stransfered
;			VDMA_SRC_ADDY_M[0]  = 0x00; //$AF0403 ;// This needs to be within Vicky's Range ($00_0000 - $3F_0000)
;			VDMA_SRC_ADDY_H[0]  = 0x00;
;
;
;			VDMA_DST_ADDY_L[0] = L24BYTE(pixelLocation);
;			VDMA_DST_ADDY_M[0] = M24BYTE(pixelLocation);
;			VDMA_DST_ADDY_H[0] = H24BYTE(pixelLocation);
;
;
;			VDMA_X_SIZE_L[0]  = 200;
;			VDMA_X_SIZE_H[0]  = 0;
;			VDMA_Y_SIZE_L[0]  = 200;
;			VDMA_Y_SIZE_H[0]  = 0;
;
;			//VDMA_SRC_STRIDE_L[0]  = 200;
;			//VDMA_SRC_STRIDE_H[0]  = 0;
;			//VDMA_DST_STRIDE_L[0]  = 200;
;			//VDMA_DST_STRIDE_H[0]  = 0;
;
;
;			k_debug_pointer("DesktopWindowProc::start-vdma:",pixelLocation);
;
;			VDMA_CONTROL_REG[0]  = (VDMA_CTRL_ENABLE | VDMA_CTRL_1D_2D | VDMA_CTRL_START_TRF);
;			*/
;
;			if(pctx->userData && ((INT*)pctx->userData)[DEBUG_MOUSE_BOXING])
	.line	779
;			{
	ldy	#$83
	lda	[<L12+pctx_1],Y
	ldy	#$85
	ora	[<L12+pctx_1],Y
	bne	L70
	brl	L10077
L70:
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	ldy	#$6
	lda	[<R0],Y
	bne	L71
	brl	L10077
L71:
	.line	780
;				px = ((INT*)pctx->userData)[DEBUG_MOUSE_CX];
	.line	781
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	ldy	#$2
	lda	[<R0],Y
	sta	<L12+px_1
;				py = ((INT*)pctx->userData)[DEBUG_MOUSE_CY];
	.line	782
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	ldy	#$4
	lda	[<R0],Y
	sta	<L12+py_1
;
;				if(px > -1)
	.line	784
;				{
	sec
	lda	#$ffff
	sbc	<L12+px_1
	bvs	L72
	eor	#$8000
L72:
	bpl	L73
	brl	L10078
L73:
	.line	785
;					k_draw_rect_slow(((INT*)pctx->userData)[DEBUG_MOUSE_BOX_LEFT],
	.line	786
;							         ((INT*)pctx->userData)[DEBUG_MOUSE_BOX_TOP],
;									 px, py,
;									 FILLCOLOR_TRANSPARENT);
	pea	#<$0
	pei	<L12+py_1
	pei	<L12+px_1
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	ldy	#$8
	lda	[<R0],Y
	pha
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	ldy	#$a
	lda	[<R0],Y
	pha
	jsl	~~k_draw_rect_slow
;				}
	.line	790
;
;				((INT*)pctx->userData)[DEBUG_MOUSE_CX] 		= -1;
L10078:
	.line	792
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	lda	#$ffff
	ldy	#$2
	sta	[<R0],Y
;				((INT*)pctx->userData)[DEBUG_MOUSE_CY] 		= -1;
	.line	793
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	lda	#$ffff
	ldy	#$4
	sta	[<R0],Y
;				((INT*)pctx->userData)[DEBUG_MOUSE_BOXING] 	= FALSE;
	.line	794
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	lda	#$0
	ldy	#$6
	sta	[<R0],Y
;				((INT*)pctx->userData)[DEBUG_MOUSE_BOX_TOP] = -1;
	.line	795
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	lda	#$ffff
	ldy	#$8
	sta	[<R0],Y
;				((INT*)pctx->userData)[DEBUG_MOUSE_BOX_LEFT]= -1;
	.line	796
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	lda	#$ffff
	ldy	#$a
	sta	[<R0],Y
;
;				k_debug_integer("DesktopWindowProc::DEBUG_MOUSE_BOXING:",((INT*)pctx->userData)[DEBUG_MOUSE_BOXING]);
	.line	798
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	ldy	#$6
	lda	[<R0],Y
	pha
	pea	#^L10+1850
	pea	#<L10+1850
	jsl	~~k_debug_integer
;			}
	.line	799
;
;
;
;			break;
L10077:
	.line	803
	brl	L10012
;		case FX_LBUTTON_DRAG:
	.line	804
L10079:
;			k_debug_string("DesktopWindowProc::FX_LBUTTON_DRAG\r\n");
	.line	805
	pea	#^L10+1889
	pea	#<L10+1889
	jsl	~~k_debug_string
;
;
;			if(((INT*)pctx->userData)[DEBUG_MOUSE_BOX_ENABLE] && ((INT*)pctx->userData)[DEBUG_MOUSE_BOXING])
	.line	808
;			{
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	ldy	#$c
	lda	[<R0],Y
	bne	L74
	brl	L10080
L74:
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	ldy	#$6
	lda	[<R0],Y
	bne	L75
	brl	L10080
L75:
	.line	809
;
;				cy = *((INT*)&pMsg->data[3]) - pWin->win_y;
	.line	811
	sec
	ldy	#$19
	lda	[<L11+pMsg_0],Y
	ldy	#$a
	sbc	[<L12+pWin_1],Y
	sta	<L12+cy_1
;				cx = *((INT*)&pMsg->data[1]) - pWin->win_x;
	.line	812
	sec
	ldy	#$17
	lda	[<L11+pMsg_0],Y
	ldy	#$8
	sbc	[<L12+pWin_1],Y
	sta	<L12+cx_1
;
;				px = ((INT*)pctx->userData)[DEBUG_MOUSE_CX];
	.line	814
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	ldy	#$2
	lda	[<R0],Y
	sta	<L12+px_1
;				py = ((INT*)pctx->userData)[DEBUG_MOUSE_CY];
	.line	815
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	ldy	#$4
	lda	[<R0],Y
	sta	<L12+py_1
;
;				if(px > -1)
	.line	817
;				{
	sec
	lda	#$ffff
	sbc	<L12+px_1
	bvs	L76
	eor	#$8000
L76:
	bpl	L77
	brl	L10081
L77:
	.line	818
;					k_draw_rect_slow(((INT*)pctx->userData)[DEBUG_MOUSE_BOX_LEFT],
	.line	819
;							         ((INT*)pctx->userData)[DEBUG_MOUSE_BOX_TOP],
;									 px, py,
;									 FILLCOLOR_TRANSPARENT);
	pea	#<$0
	pei	<L12+py_1
	pei	<L12+px_1
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	ldy	#$8
	lda	[<R0],Y
	pha
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	ldy	#$a
	lda	[<R0],Y
	pha
	jsl	~~k_draw_rect_slow
;				}
	.line	823
;
;				k_draw_rect_slow(((INT*)pctx->userData)[DEBUG_MOUSE_BOX_LEFT],
L10081:
	.line	825
;								 ((INT*)pctx->userData)[DEBUG_MOUSE_BOX_TOP],
;								 cx,cy,
;								 15);
	pea	#<$f
	pei	<L12+cy_1
	pei	<L12+cx_1
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	ldy	#$8
	lda	[<R0],Y
	pha
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	ldy	#$a
	lda	[<R0],Y
	pha
	jsl	~~k_draw_rect_slow
;
;				((INT*)pctx->userData)[DEBUG_MOUSE_CX] = cx;
	.line	830
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	lda	<L12+cx_1
	ldy	#$2
	sta	[<R0],Y
;				((INT*)pctx->userData)[DEBUG_MOUSE_CY] = cy;
	.line	831
	ldy	#$83
	lda	[<L12+pctx_1],Y
	sta	<R0
	ldy	#$85
	lda	[<L12+pctx_1],Y
	sta	<R0+2
	lda	<L12+cy_1
	ldy	#$4
	sta	[<R0],Y
;			}
	.line	832
;
;			break;
L10080:
	.line	834
	brl	L10012
;		case FX_LBUTTON_DBLCLICK:
	.line	835
L10082:
;			k_debug_string("DesktopWindowProc::FX_LBUTTON_DBLCLICK\r\n");
	.line	836
	pea	#^L10+1926
	pea	#<L10+1926
	jsl	~~k_debug_string
;
;
;
;			if(k_user_getDesktopWindow())
	.line	840
;			{
	jsl	~~k_user_getDesktopWindow
	sta	<R0
	stx	<R0+2
	lda	<R0
	ora	<R0+2
	bne	L78
	brl	L10083
L78:
	.line	841
;				k_debug_string("DesktopWindowProc::DESKTOP HITLISTK\r\n");
	.line	842
	pea	#^L10+1967
	pea	#<L10+1967
	jsl	~~k_debug_string
;				k_debug_nodelist_with_data( k_getWindowFromHandle(k_user_getDesktopWindow())->pChildHitList->listhead->next, debug_clickable_node );
	.line	843
	pea	#^~~debug_clickable_node
	pea	#<~~debug_clickable_node
	jsl	~~k_user_getDesktopWindow
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_getWindowFromHandle
	sta	<R1
	stx	<R1+2
	ldy	#$13c
	lda	[<R1],Y
	sta	<R2
	ldy	#$13e
	lda	[<R1],Y
	sta	<R2+2
	lda	[<R2]
	sta	<R1
	ldy	#$2
	lda	[<R2],Y
	sta	<R1+2
	ldy	#$c
	lda	[<R1],Y
	pha
	ldy	#$a
	lda	[<R1],Y
	pha
	jsl	~~k_debug_nodelist_with_data
;				k_debug_string("DesktopWindowProc::GLOBAL HITLISTK\r\n");
	.line	844
	pea	#^L10+2005
	pea	#<L10+2005
	jsl	~~k_debug_string
;				k_debug_nodelist_with_data( k_getWindowHitList(), debug_clickable_node );
	.line	845
	pea	#^~~debug_clickable_node
	pea	#<~~debug_clickable_node
	jsl	~~k_getWindowHitList
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_debug_nodelist_with_data
;			}
	.line	846
;
;
;			break;
L10083:
	.line	849
	brl	L10012
;		case FX_WINDOW_TOFRONT:
	.line	850
L10084:
;			k_debug_string("DesktopWindowProc::FX_WINDOW_TOFRONT\r\n");
	.line	851
	pea	#^L10+2042
	pea	#<L10+2042
	jsl	~~k_debug_string
;
;			//k_vdraw_ui_window(25,25,200,300,"Clicked FRONT",15,3);
;
;			break;
	.line	855
	brl	L10012
;		case FX_WINDOW_TOBACK:
	.line	856
L10085:
;			k_debug_string("DesktopWindowProc::FX_WINDOW_TOBACK\r\n");
	.line	857
	pea	#^L10+2081
	pea	#<L10+2081
	jsl	~~k_debug_string
;
;			//k_vdraw_ui_window(250,250,150,200,"Clicked BACK",15,3);
;
;			break;
	.line	861
	brl	L10012
;		case FX_COM1_DATA:
	.line	862
L10086:
;			//k_debug_string("DesktopWindowProc::FX_COM1_DATA\r\n");
;			break;
	.line	864
	brl	L10012
;		case FX_COM2_DATA:
	.line	865
L10087:
;			//k_debug_string("DesktopWindowProc::FX_COM2_DATA\r\n");
;			break;
	.line	867
	brl	L10012
;
;		default:
	.line	869
L10088:
;			//k_updatespinner(2,40,&consolespinctx);
;			return DefWindowProc(pMsg);
	.line	871
	pei	<L11+pMsg_0+2
	pei	<L11+pMsg_0
	jsl	~~DefWindowProc
	sep	#$20
	longa	off
	sta	<R0
	rep	#$20
	longa	on
	lda	<R0
	and	#$ff
L79:
	tay
	lda	<L11+2
	sta	<L11+2+4
	lda	<L11+1
	sta	<L11+1+4
	pld
	tsc
	clc
	adc	#L11+4
	tcs
	tya
	rtl
;			break;
	.line	872
;		}
	.line	873
L10011:
	xref	~~~swt
	jsl	~~~swt
	dw	23
	dw	3841
	dw	L10071-1
	dw	3842
	dw	L10072-1
	dw	3843
	dw	L10068-1
	dw	3844
	dw	L10074-1
	dw	3845
	dw	L10079-1
	dw	3846
	dw	L10076-1
	dw	3847
	dw	L10082-1
	dw	3848
	dw	L10073-1
	dw	3856
	dw	L10055-1
	dw	3858
	dw	L10054-1
	dw	3872
	dw	L10056-1
	dw	3874
	dw	L10064-1
	dw	3888
	dw	L10084-1
	dw	3889
	dw	L10085-1
	dw	64000
	dw	L10018-1
	dw	64001
	dw	L10021-1
	dw	64002
	dw	L10019-1
	dw	64256
	dw	L10017-1
	dw	64512
	dw	L10086-1
	dw	64513
	dw	L10087-1
	dw	65283
	dw	L10013-1
	dw	65520
	dw	L10067-1
	dw	65521
	dw	L10016-1
	dw	L10088-1
L10012:
;	}
	.line	874
;	//k_debug_string("DesktopWindowProc exit\r\n");
;
;	return TRUE;
L10009:
	.line	877
	lda	#$1
	brl	L79
;}
	.line	878
	.endblock	878
L11	equ	110
L12	equ	13
	ends
	efunc
	.endfunc	878,13,110
	.line	878
	data
L10:
	db	$30,$00,$31,$00,$32,$00,$33,$00,$34,$00,$35,$00,$36,$00,$37
	db	$00,$38,$00,$39,$00,$44,$65,$73,$6B,$74,$6F,$70,$57,$69,$6E
	db	$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$43,$52,$45
	db	$41,$54,$45,$5F,$57,$49,$4E,$44,$4F,$57,$0D,$0A,$00,$44,$65
	db	$73,$6B,$74,$6F,$70,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63
	db	$3A,$3A,$70,$63,$74,$78,$3A,$00,$44,$65,$73,$6B,$74,$6F,$70
	db	$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$70,$63,$74
	db	$78,$2D,$3E,$75,$73,$65,$72,$44,$61,$74,$61,$3A,$00,$70,$72
	db	$65,$66,$65,$72,$65,$6E,$63,$65,$73,$57,$69,$6E,$64,$6F,$77
	db	$43,$6C,$61,$73,$73,$00,$74,$65,$73,$74,$57,$69,$6E,$64,$6F
	db	$77,$43,$6C,$61,$73,$73,$00,$6C,$69,$73,$74,$62,$6F,$78,$57
	db	$69,$6E,$64,$6F,$77,$43,$6C,$61,$73,$73,$00,$74,$65,$78,$74
	db	$62,$6F,$78,$57,$69,$6E,$64,$6F,$77,$43,$6C,$61,$73,$73,$00
	db	$46,$69,$6C,$65,$00,$56,$6F,$6C,$75,$6D,$65,$20,$49,$6E,$66
	db	$6F,$00,$52,$65,$6E,$61,$6D,$65,$00,$43,$6F,$70,$79,$00,$4D
	db	$6F,$75,$6E,$74,$00,$45,$6A,$65,$63,$74,$00,$52,$75,$6E,$2E
	db	$2E,$2E,$00,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F
	db	$5F,$5F,$5F,$5F,$5F,$5F,$00,$50,$72,$6F,$63,$65,$73,$73,$65
	db	$73,$00,$52,$65,$66,$72,$65,$73,$68,$20,$44,$65,$73,$6B,$74
	db	$6F,$70,$00,$51,$75,$69,$74,$20,$74,$6F,$20,$43,$4C,$49,$00
	db	$45,$64,$69,$74,$00,$43,$6F,$70,$79,$00,$43,$75,$74,$00,$50
	db	$61,$73,$74,$65,$00,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F
	db	$5F,$5F,$5F,$5F,$00,$50,$72,$65,$66,$65,$72,$65,$6E,$63,$65
	db	$73,$00,$44,$65,$62,$75,$67,$00,$44,$65,$62,$75,$67,$20,$46
	db	$6F,$6E,$74,$73,$00,$44,$65,$62,$75,$67,$20,$57,$69,$6E,$64
	db	$6F,$77,$00,$44,$65,$62,$75,$67,$20,$53,$65,$6C,$65,$63,$74
	db	$69,$6F,$6E,$00,$44,$65,$62,$75,$67,$20,$44,$72,$61,$67,$00
	db	$44,$65,$62,$75,$67,$20,$52,$75,$62,$62,$65,$72,$62,$61,$6E
	db	$64,$00,$44,$65,$62,$75,$67,$20,$50,$6F,$69,$6E,$74,$65,$72
	db	$20,$48,$6F,$75,$72,$67,$6C,$61,$73,$73,$00,$44,$65,$62,$75
	db	$67,$20,$50,$6F,$69,$6E,$74,$65,$72,$20,$48,$65,$6C,$70,$00
	db	$44,$65,$62,$75,$67,$20,$50,$6F,$69,$6E,$74,$65,$72,$20,$41
	db	$72,$72,$6F,$77,$00,$44,$65,$62,$75,$67,$20,$50,$6F,$69,$6E
	db	$74,$65,$72,$20,$52,$65,$73,$69,$7A,$65,$00,$41,$62,$6F,$75
	db	$74,$00,$41,$62,$6F,$75,$74,$20,$46,$58,$2F,$4F,$53,$2E,$2E
	db	$2E,$00,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F
	db	$5F,$5F,$5F,$5F,$00,$54,$65,$78,$74,$62,$6F,$78,$20,$54,$65
	db	$73,$74,$00,$4C,$69,$73,$74,$62,$6F,$78,$20,$54,$65,$73,$74
	db	$00,$44,$65,$73,$6B,$74,$6F,$70,$57,$69,$6E,$64,$6F,$77,$50
	db	$72,$6F,$63,$3A,$3A,$46,$58,$5F,$44,$52,$41,$57,$5F,$57,$49
	db	$4E,$44,$4F,$57,$0D,$0A,$00,$44,$65,$73,$6B,$74,$6F,$70,$57
	db	$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$43
	db	$4F,$4E,$54,$52,$4F,$4C,$5F,$43,$4F,$4D,$4D,$41,$4E,$44,$3A
	db	$00,$44,$65,$73,$6B,$74,$6F,$70,$57,$69,$6E,$64,$6F,$77,$50
	db	$72,$6F,$63,$3A,$3A,$46,$58,$5F,$53,$43,$52,$4F,$4C,$4C,$42
	db	$41,$52,$5F,$43,$4F,$4D,$4D,$41,$4E,$44,$3A,$00,$44,$65,$73
	db	$6B,$74,$6F,$70,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A
	db	$3A,$46,$58,$5F,$53,$43,$52,$4F,$4C,$4C,$42,$41,$52,$5F,$43
	db	$4F,$4D,$4D,$41,$4E,$44,$3A,$4C,$4F,$43,$41,$54,$49,$4F,$4E
	db	$3A,$00,$44,$65,$73,$6B,$74,$6F,$70,$57,$69,$6E,$64,$6F,$77
	db	$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$53,$43,$52,$4F,$4C,$4C
	db	$42,$41,$52,$5F,$43,$4F,$4D,$4D,$41,$4E,$44,$3A,$56,$41,$4C
	db	$55,$45,$3A,$00,$54,$45,$58,$54,$42,$4F,$58,$31,$00,$74,$65
	db	$78,$74,$62,$6F,$78,$57,$69,$6E,$64,$6F,$77,$43,$6C,$61,$73
	db	$73,$00,$54,$45,$58,$54,$42,$4F,$58,$31,$00,$54,$45,$58,$54
	db	$42,$4F,$58,$31,$20,$41,$6C,$72,$65,$61,$64,$79,$20,$4F,$70
	db	$65,$6E,$0D,$0A,$00,$54,$45,$58,$54,$42,$4F,$58,$32,$00,$74
	db	$65,$78,$74,$62,$6F,$78,$57,$69,$6E,$64,$6F,$77,$43,$6C,$61
	db	$73,$73,$00,$54,$45,$58,$54,$42,$4F,$58,$32,$00,$54,$45,$58
	db	$54,$42,$4F,$58,$32,$20,$41,$6C,$72,$65,$61,$64,$79,$20,$4F
	db	$70,$65,$6E,$0D,$0A,$00,$4C,$49,$53,$54,$42,$4F,$58,$00,$6C
	db	$69,$73,$74,$62,$6F,$78,$57,$69,$6E,$64,$6F,$77,$43,$6C,$61
	db	$73,$73,$00,$4C,$49,$53,$54,$42,$4F,$58,$00,$4C,$69,$73,$74
	db	$62,$6F,$78,$20,$41,$6C,$72,$65,$61,$64,$79,$20,$4F,$70,$65
	db	$6E,$0D,$0A,$00,$41,$62,$6F,$75,$74,$20,$46,$58,$2F,$4F,$53
	db	$00,$61,$62,$6F,$75,$74,$44,$69,$61,$6C,$6F,$67,$57,$69,$6E
	db	$64,$6F,$77,$43,$6C,$61,$73,$73,$00,$41,$62,$6F,$75,$74,$20
	db	$46,$58,$2F,$4F,$53,$00,$44,$69,$61,$6C,$6F,$67,$20,$41,$6C
	db	$72,$65,$61,$64,$79,$20,$4F,$70,$65,$6E,$0D,$0A,$00,$50,$72
	db	$65,$66,$65,$72,$65,$6E,$63,$65,$73,$00,$70,$72,$65,$66,$65
	db	$72,$65,$6E,$63,$65,$73,$57,$69,$6E,$64,$6F,$77,$43,$6C,$61
	db	$73,$73,$00,$50,$72,$65,$66,$65,$72,$65,$6E,$63,$65,$73,$00
	db	$70,$72,$65,$66,$65,$72,$65,$6E,$63,$65,$73,$57,$69,$6E,$64
	db	$6F,$77,$43,$6C,$61,$73,$73,$00,$43,$68,$69,$6C,$64,$31,$00
	db	$70,$72,$65,$66,$65,$72,$65,$6E,$63,$65,$73,$57,$69,$6E,$64
	db	$6F,$77,$43,$6C,$61,$73,$73,$00,$43,$32,$00,$44,$69,$61,$6C
	db	$6F,$67,$20,$41,$6C,$72,$65,$61,$64,$79,$20,$4F,$70,$65,$6E
	db	$0D,$0A,$00,$44,$45,$53,$4B,$5F,$4D,$45,$4E,$55,$5F,$44,$42
	db	$47,$5F,$46,$4F,$4E,$54,$53,$0D,$0A,$00,$44,$45,$53,$4B,$5F
	db	$4D,$45,$4E,$55,$5F,$44,$42,$47,$5F,$57,$49,$4E,$44,$4F,$57
	db	$0D,$0A,$00,$44,$65,$62,$75,$67,$20,$57,$69,$6E,$64,$6F,$77
	db	$00,$74,$65,$73,$74,$57,$69,$6E,$64,$6F,$77,$43,$6C,$61,$73
	db	$73,$00,$44,$65,$62,$75,$67,$20,$57,$69,$6E,$64,$6F,$77,$00
	db	$44,$65,$62,$75,$67,$20,$57,$69,$6E,$64,$6F,$77,$20,$41,$6C
	db	$72,$65,$61,$64,$79,$20,$4F,$70,$65,$6E,$0D,$0A,$00,$44,$45
	db	$53,$4B,$5F,$4D,$45,$4E,$55,$5F,$44,$42,$47,$5F,$53,$45,$4C
	db	$45,$43,$54,$0D,$0A,$00,$48,$4F,$55,$52,$47,$4C,$41,$53,$53
	db	$00,$48,$45,$4C,$50,$00,$41,$52,$52,$4F,$57,$00,$52,$45,$53
	db	$49,$5A,$45,$00,$44,$65,$73,$6B,$74,$6F,$70,$57,$69,$6E,$64
	db	$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$4B,$45,$59,$5F
	db	$55,$50,$0D,$0A,$00,$44,$65,$73,$6B,$74,$6F,$70,$57,$69,$6E
	db	$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$4B,$45,$59
	db	$5F,$44,$4F,$57,$4E,$0D,$0A,$00,$44,$65,$73,$6B,$74,$6F,$70
	db	$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$44,$49,$53
	db	$4B,$2D,$49,$4E,$53,$45,$52,$54,$3A,$00,$4E,$55,$4C,$4C,$00
	db	$0D,$0A,$00,$44,$65,$73,$6B,$74,$6F,$70,$57,$69,$6E,$64,$6F
	db	$77,$50,$72,$6F,$63,$3A,$3A,$44,$49,$53,$4B,$2D,$49,$4E,$53
	db	$45,$52,$54,$3A,$4E,$4F,$2D,$43,$48,$41,$4E,$47,$45,$0D,$0A
	db	$00,$64,$69,$73,$6B,$00,$69,$63,$6F,$6E,$00,$44,$65,$73,$6B
	db	$74,$6F,$70,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A
	db	$44,$49,$53,$4B,$2D,$49,$4E,$53,$45,$52,$54,$3A,$44,$49,$53
	db	$4B,$3A,$00,$44,$65,$73,$6B,$74,$6F,$70,$57,$69,$6E,$64,$6F
	db	$77,$50,$72,$6F,$63,$3A,$3A,$44,$49,$53,$4B,$2D,$52,$45,$4D
	db	$4F,$56,$45,$0D,$0A,$00,$44,$65,$73,$6B,$74,$6F,$70,$57,$69
	db	$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$44,$49,$53,$4B,$2D
	db	$52,$45,$4D,$4F,$56,$45,$3A,$44,$49,$53,$4B,$3A,$00,$44,$65
	db	$73,$6B,$74,$6F,$70,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63
	db	$3A,$3A,$44,$49,$53,$4B,$2D,$52,$45,$4D,$4F,$56,$45,$3A,$62
	db	$61,$63,$6B,$67,$72,$6F,$75,$6E,$64,$43,$6F,$6C,$6F,$72,$3A
	db	$00,$44,$65,$73,$6B,$74,$6F,$70,$57,$69,$6E,$64,$6F,$77,$50
	db	$72,$6F,$63,$3A,$3A,$46,$58,$5F,$41,$50,$50,$5F,$4D,$45,$53
	db	$53,$41,$47,$45,$0D,$0A,$00,$44,$65,$73,$6B,$74,$6F,$70,$57
	db	$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$4D
	db	$4F,$55,$53,$45,$5F,$45,$4E,$54,$45,$52,$3A,$00,$44,$65,$73
	db	$6B,$74,$6F,$70,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A
	db	$3A,$46,$58,$5F,$4D,$4F,$55,$53,$45,$5F,$45,$58,$49,$54,$3A
	db	$00,$44,$65,$73,$6B,$74,$6F,$70,$57,$69,$6E,$64,$6F,$77,$50
	db	$72,$6F,$63,$3A,$3A,$46,$58,$5F,$52,$42,$55,$54,$54,$4F,$4E
	db	$5F,$44,$4F,$57,$4E,$0D,$0A,$00,$44,$65,$73,$6B,$74,$6F,$70
	db	$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F
	db	$4C,$42,$55,$54,$54,$4F,$4E,$5F,$44,$4F,$57,$4E,$0D,$0A,$00
	db	$44,$65,$73,$6B,$74,$6F,$70,$57,$69,$6E,$64,$6F,$77,$50,$72
	db	$6F,$63,$3A,$3A,$46,$58,$5F,$4C,$42,$55,$54,$54,$4F,$4E,$5F
	db	$55,$50,$0D,$0A,$00,$44,$65,$73,$6B,$74,$6F,$70,$57,$69,$6E
	db	$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$44,$45,$42,$55,$47,$5F
	db	$4D,$4F,$55,$53,$45,$5F,$42,$4F,$58,$49,$4E,$47,$3A,$00,$44
	db	$65,$73,$6B,$74,$6F,$70,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F
	db	$63,$3A,$3A,$46,$58,$5F,$4C,$42,$55,$54,$54,$4F,$4E,$5F,$44
	db	$52,$41,$47,$0D,$0A,$00,$44,$65,$73,$6B,$74,$6F,$70,$57,$69
	db	$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$4C,$42
	db	$55,$54,$54,$4F,$4E,$5F,$44,$42,$4C,$43,$4C,$49,$43,$4B,$0D
	db	$0A,$00,$44,$65,$73,$6B,$74,$6F,$70,$57,$69,$6E,$64,$6F,$77
	db	$50,$72,$6F,$63,$3A,$3A,$44,$45,$53,$4B,$54,$4F,$50,$20,$48
	db	$49,$54,$4C,$49,$53,$54,$4B,$0D,$0A,$00,$44,$65,$73,$6B,$74
	db	$6F,$70,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$47
	db	$4C,$4F,$42,$41,$4C,$20,$48,$49,$54,$4C,$49,$53,$54,$4B,$0D
	db	$0A,$00,$44,$65,$73,$6B,$74,$6F,$70,$57,$69,$6E,$64,$6F,$77
	db	$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$57,$49,$4E,$44,$4F,$57
	db	$5F,$54,$4F,$46,$52,$4F,$4E,$54,$0D,$0A,$00,$44,$65,$73,$6B
	db	$74,$6F,$70,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A
	db	$46,$58,$5F,$57,$49,$4E,$44,$4F,$57,$5F,$54,$4F,$42,$41,$43
	db	$4B,$0D,$0A,$00
	ends
;
;BOOL testWindowProc(PFXOSMESSAGE pMsg)
;{
	.line	880
	.line	881
	DTOP
	xdef	~~testWindowProc
	func
	.function	881
~~testWindowProc:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L81
	tcs
	phd
	tcd
pMsg_0	set	4
	.block	881
;	PFXPROCESS p = NULL;
;	PWINDOW pWin = NULL;
;	INT index = 0;
;	RECT winRect;
;
;	if(pMsg!=NULL)
p_1	set	0
pWin_1	set	4
index_1	set	8
winRect_1	set	10
	.sym	p,0,138,1,32,17
	.sym	pWin,4,138,1,32,27
	.sym	index,8,5,1,16
	.sym	winRect,10,10,1,64,22
	.sym	pMsg,4,138,6,32,13
	stz	<L82+p_1
	stz	<L82+p_1+2
	stz	<L82+pWin_1
	stz	<L82+pWin_1+2
	stz	<L82+index_1
	.line	887
;	{
	lda	<L81+pMsg_0
	ora	<L81+pMsg_0+2
	bne	L84
	brl	L10089
L84:
	.line	888
;		p = k_exec_get_current_process();
	.line	889
	jsl	~~k_exec_get_current_process
	sta	<L82+p_1
	stx	<L82+p_1+2
;
;		//k_debug_long("consoleWindowProc::ProcessId:",p->procId);
;
;		switch(pMsg->type)
	.line	893
	ldy	#$8
	lda	[<L81+pMsg_0],Y
	brl	L10090
;		{
	.line	894
;		case FX_CREATE_WINDOW:
	.line	895
L10092:
;			if(p)
	.line	896
;			{
	lda	<L82+p_1
	ora	<L82+p_1+2
	bne	L85
	brl	L10093
L85:
	.line	897
;				k_debug_long("testWindowProc::FX_CREATE_WINDOW:",p->procId);
	.line	898
	ldy	#$4
	lda	[<L82+p_1],Y
	pha
	ldy	#$2
	lda	[<L82+p_1],Y
	pha
	pea	#^L80
	pea	#<L80
	jsl	~~k_debug_long
;				//k_debug_integer("testWindowProc::MessageId:",pMsg->type);
;			}
	.line	900
;			break;
L10093:
	.line	901
	brl	L10091
;		case FX_DRAW_WINDOW:
	.line	902
L10094:
;			k_debug_string("testWindowProc::FX_DRAW_WINDOW\r\n");
	.line	903
	pea	#^L80+34
	pea	#<L80+34
	jsl	~~k_debug_string
;			//k_vdma_fill_rect(100,100,100,50,4);
;			break;
	.line	905
	brl	L10091
;		case FX_MOUSE_MOVE:
	.line	906
L10095:
;			k_debug_string("testWindowProc::FX_MOUSE_MOVE\r\n");
	.line	907
	pea	#^L80+67
	pea	#<L80+67
	jsl	~~k_debug_string
;			break;
	.line	908
	brl	L10091
;		//case FX_NC_MOUSE_MOVE:
;		//	k_debug_string("testWindowProc::FX_NC_MOUSE_MOVE\r\n");
;		//	break;
;
;		case FX_LBUTTON_DRAG:
	.line	913
L10096:
;			k_debug_string("testWindowProc::FX_LBUTTON_DRAG\r\n");
	.line	914
	pea	#^L80+99
	pea	#<L80+99
	jsl	~~k_debug_string
;			break;
	.line	915
	brl	L10091
;
;
;		case FX_LBUTTON_DBLCLICK:
	.line	918
L10097:
;
;			//k_getWindowRect(pMsg->hwnd,&winRect);
;			//k_vdma_copy_address_ex((LPVOID)(0x100000 | k_gui_get_pixel_offset(20,20)),(LPVOID)(k_gui_get_pixel_offset(winRect.x,winRect.y)),winRect.width,winRect.height);
;
;			//k_switch_window_page(pMsg->hwnd,BITMAP_BACK,BITMAP_FRONT,TRUE);
;			//k_switch_window_page(pMsg->hwnd,BITMAP_BACK,BITMAP_FRONT,FALSE);
;
;			pWin = k_getWindowFromHandle(pMsg->hwnd);
	.line	926
	ldy	#$c
	lda	[<L81+pMsg_0],Y
	pha
	ldy	#$a
	lda	[<L81+pMsg_0],Y
	pha
	jsl	~~k_getWindowFromHandle
	sta	<L82+pWin_1
	stx	<L82+pWin_1+2
;
;			for(index = 0;index<8;index++)
	.line	928
	stz	<L82+index_1
L10100:
;			{
	.line	929
;				k_debug_rect("testWindowProc::nonclientGadgets:rect:",&pWin->nonclientGadgets[index].area);
	.line	930
	ldy	#$0
	lda	<L82+index_1
	bpl	L86
	dey
L86:
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
	lda	<L82+pWin_1
	adc	<R1
	sta	<R0
	lda	<L82+pWin_1+2
	adc	<R1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L80+133
	pea	#<L80+133
	jsl	~~k_debug_rect
;			}
	.line	931
L10098:
	inc	<L82+index_1
	sec
	lda	<L82+index_1
	sbc	#<$8
	bvs	L87
	eor	#$8000
L87:
	bmi	L88
	brl	L10100
L88:
L10099:
;
;
;			break;
	.line	934
	brl	L10091
;		case FX_MBUTTON_DOWN:
	.line	935
L10101:
;			if(pMsg->type!=FX_PROCESS)
	.line	936
;			{
	ldy	#$8
	lda	[<L81+pMsg_0],Y
	cmp	#<$ff00
	bne	L89
	brl	L10102
L89:
	.line	937
;				//k_debug_integer("consoleWindowProc::ProcessId:",p->procId);
;				k_debug_string("testWindowProc::FX_MBUTTON_DOWN\r\n");
	.line	939
	pea	#^L80+172
	pea	#<L80+172
	jsl	~~k_debug_string
;			}
	.line	940
;
;			break;
L10102:
	.line	942
	brl	L10091
;		case FX_LBUTTON_DOWN:
	.line	943
L10103:
;			k_debug_string("testWindowProc::FX_LBUTTON_DOWN\r\n");
	.line	944
	pea	#^L80+206
	pea	#<L80+206
	jsl	~~k_debug_string
;			break;
	.line	945
	brl	L10091
;
;		case FX_LBUTTON_UP:
	.line	947
L10104:
;			k_debug_string("testWindowProc::FX_LBUTTON_UP\r\n");
	.line	948
	pea	#^L80+240
	pea	#<L80+240
	jsl	~~k_debug_string
;			break;
	.line	949
	brl	L10091
;			//case FX_NC_LBUTTON_DOWN:
;		//	k_debug_string("testWindowProc::FX_NC_LBUTTON_DOWN\r\n");
;		//	k_event_lock_focus(pMsg->hwnd);
;		//	break;
;		//case FX_RBUTTON_DOWN:
;		//case FX_NC_RBUTTON_DOWN:
;		//	k_debug_string("testWindowProc::FX_RBUTTON_DOWN or FX_NC_RBUTTON_DOWN\r\n");
;		//	k_event_unlock_focus();
;		//	break;
;		case FX_MIN_WINDOW:
	.line	959
L10105:
;			k_switch_window_page(pMsg->hwnd,BITMAP_BACK,BITMAP_FRONT,TRUE);
	.line	960
	pea	#<$1
	pea	#<$0
	pea	#<$10
	ldy	#$c
	lda	[<L81+pMsg_0],Y
	pha
	ldy	#$a
	lda	[<L81+pMsg_0],Y
	pha
	jsl	~~k_switch_window_page
;			break;
	.line	961
	brl	L10091
;		case FX_MAX_WINDOW:
	.line	962
L10106:
;			k_switch_window_page(pMsg->hwnd,BITMAP_FRONT,BITMAP_BACK,FALSE);
	.line	963
	pea	#<$0
	pea	#<$10
	pea	#<$0
	ldy	#$c
	lda	[<L81+pMsg_0],Y
	pha
	ldy	#$a
	lda	[<L81+pMsg_0],Y
	pha
	jsl	~~k_switch_window_page
;			break;
	.line	964
	brl	L10091
;		case FX_WINDOW_CLOSE:
	.line	965
L10107:
;			pWin = k_getWindowFromHandle(pMsg->hwnd);
	.line	966
	ldy	#$c
	lda	[<L81+pMsg_0],Y
	pha
	ldy	#$a
	lda	[<L81+pMsg_0],Y
	pha
	jsl	~~k_getWindowFromHandle
	sta	<L82+pWin_1
	stx	<L82+pWin_1+2
;			k_vdma_fill_rect_ex(pWin->win_x,pWin->win_y, pWin->win_width, pWin->win_height,
	.line	967
;					            FILLCOLOR_TRANSPARENT,BITMAP_FRONT);
	pea	#<$0
	pea	#<$0
	ldy	#$e
	lda	[<L82+pWin_1],Y
	pha
	ldy	#$c
	lda	[<L82+pWin_1],Y
	pha
	ldy	#$0
	phy
	ldy	#$a
	lda	[<L82+pWin_1],Y
	ply
	rol	A
	ror	A
	bpl	L90
	dey
L90:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	phy
	ldy	#$8
	lda	[<L82+pWin_1],Y
	ply
	rol	A
	ror	A
	bpl	L91
	dey
L91:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect_ex
;			k_vdma_fill_rect_ex(pWin->win_x,pWin->win_y, pWin->win_width, pWin->win_height,
	.line	969
;								k_getUIBackgroundColor(),BITMAP_BACK);
	pea	#<$10
	jsl	~~k_getUIBackgroundColor
	pha
	ldy	#$e
	lda	[<L82+pWin_1],Y
	pha
	ldy	#$c
	lda	[<L82+pWin_1],Y
	pha
	ldy	#$0
	phy
	ldy	#$a
	lda	[<L82+pWin_1],Y
	ply
	rol	A
	ror	A
	bpl	L92
	dey
L92:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	phy
	ldy	#$8
	lda	[<L82+pWin_1],Y
	ply
	rol	A
	ror	A
	bpl	L93
	dey
L93:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect_ex
;			return FALSE;
	.line	971
	lda	#$0
L94:
	tay
	lda	<L81+2
	sta	<L81+2+4
	lda	<L81+1
	sta	<L81+1+4
	pld
	tsc
	clc
	adc	#L81+4
	tcs
	tya
	rtl
;		default:
	.line	972
L10108:
;			return DefWindowProc(pMsg);
	.line	973
	pei	<L81+pMsg_0+2
	pei	<L81+pMsg_0
	jsl	~~DefWindowProc
	sep	#$20
	longa	off
	sta	<R0
	rep	#$20
	longa	on
	lda	<R0
	and	#$ff
	brl	L94
;			break;
	.line	974
;		}
	.line	975
L10090:
	xref	~~~swt
	jsl	~~~swt
	dw	11
	dw	3843
	dw	L10095-1
	dw	3844
	dw	L10103-1
	dw	3845
	dw	L10096-1
	dw	3846
	dw	L10104-1
	dw	3847
	dw	L10097-1
	dw	3852
	dw	L10101-1
	dw	64256
	dw	L10094-1
	dw	64265
	dw	L10105-1
	dw	64266
	dw	L10106-1
	dw	64511
	dw	L10107-1
	dw	65283
	dw	L10092-1
	dw	L10108-1
L10091:
;	}
	.line	976
;
;	return TRUE;
L10089:
	.line	978
	lda	#$1
	brl	L94
;}
	.line	979
	.endblock	979
L81	equ	26
L82	equ	9
	ends
	efunc
	.endfunc	979,9,26
	.line	979
	data
L80:
	db	$74,$65,$73,$74,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A
	db	$3A,$46,$58,$5F,$43,$52,$45,$41,$54,$45,$5F,$57,$49,$4E,$44
	db	$4F,$57,$3A,$00,$74,$65,$73,$74,$57,$69,$6E,$64,$6F,$77,$50
	db	$72,$6F,$63,$3A,$3A,$46,$58,$5F,$44,$52,$41,$57,$5F,$57,$49
	db	$4E,$44,$4F,$57,$0D,$0A,$00,$74,$65,$73,$74,$57,$69,$6E,$64
	db	$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$4D,$4F,$55,$53
	db	$45,$5F,$4D,$4F,$56,$45,$0D,$0A,$00,$74,$65,$73,$74,$57,$69
	db	$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$4C,$42
	db	$55,$54,$54,$4F,$4E,$5F,$44,$52,$41,$47,$0D,$0A,$00,$74,$65
	db	$73,$74,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$6E
	db	$6F,$6E,$63,$6C,$69,$65,$6E,$74,$47,$61,$64,$67,$65,$74,$73
	db	$3A,$72,$65,$63,$74,$3A,$00,$74,$65,$73,$74,$57,$69,$6E,$64
	db	$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$4D,$42,$55,$54
	db	$54,$4F,$4E,$5F,$44,$4F,$57,$4E,$0D,$0A,$00,$74,$65,$73,$74
	db	$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F
	db	$4C,$42,$55,$54,$54,$4F,$4E,$5F,$44,$4F,$57,$4E,$0D,$0A,$00
	db	$74,$65,$73,$74,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A
	db	$3A,$46,$58,$5F,$4C,$42,$55,$54,$54,$4F,$4E,$5F,$55,$50,$0D
	db	$0A,$00
	ends
;
;
;BOOL textboxWindowProc(PFXOSMESSAGE pMsg)
;{
	.line	982
	.line	983
	DTOP
	xdef	~~textboxWindowProc
	func
	.function	983
~~textboxWindowProc:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L96
	tcs
	phd
	tcd
pMsg_0	set	4
	.block	983
;	UINT i;
;	RECT r;
;	CHAR c;
;	PFXPROCESS p = NULL;
;	PWINDOW pWin = NULL;
;	UCHAR buffer[16];
;	LPCHAR listItem;
;	PTEXTBOX textbox = NULL;
;	HWND hWnd;
;	INT cMenu;
;	LPCSTR pFont;
;
;	if(pMsg!=NULL)
i_1	set	0
r_1	set	2
c_1	set	10
p_1	set	11
pWin_1	set	15
buffer_1	set	19
listItem_1	set	35
textbox_1	set	39
hWnd_1	set	43
cMenu_1	set	47
pFont_1	set	49
	.sym	i,0,16,1,16
	.sym	r,2,10,1,64,22
	.sym	c,10,14,1,8
	.sym	p,11,138,1,32,17
	.sym	pWin,15,138,1,32,27
	.sym	buffer,19,110,1,0,16
	.sym	listItem,35,142,1,32
	.sym	textbox,39,138,1,32,37
	.sym	hWnd,43,129,1,32
	.sym	cMenu,47,5,1,16
	.sym	pFont,49,142,1,32
	.sym	pMsg,4,138,6,32,13
	stz	<L97+p_1
	stz	<L97+p_1+2
	stz	<L97+pWin_1
	stz	<L97+pWin_1+2
	stz	<L97+textbox_1
	stz	<L97+textbox_1+2
	.line	996
;	{
	lda	<L96+pMsg_0
	ora	<L96+pMsg_0+2
	bne	L99
	brl	L10109
L99:
	.line	997
;		p = k_exec_get_current_process();
	.line	998
	jsl	~~k_exec_get_current_process
	sta	<L97+p_1
	stx	<L97+p_1+2
;		pWin = k_getWindowFromHandle(pMsg->hwnd);
	.line	999
	ldy	#$c
	lda	[<L96+pMsg_0],Y
	pha
	ldy	#$a
	lda	[<L96+pMsg_0],Y
	pha
	jsl	~~k_getWindowFromHandle
	sta	<L97+pWin_1
	stx	<L97+pWin_1+2
;		hWnd = k_getHandleFromWindow(pWin);
	.line	1000
	pei	<L97+pWin_1+2
	pei	<L97+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<L97+hWnd_1
	stx	<L97+hWnd_1+2
;		textbox = pWin->windowData;
	.line	1001
	ldy	#$141
	lda	[<L97+pWin_1],Y
	sta	<L97+textbox_1
	ldy	#$143
	lda	[<L97+pWin_1],Y
	sta	<L97+textbox_1+2
;		cMenu = k_getUIMenuColor();
	.line	1002
	jsl	~~k_getUIMenuColor
	sta	<L97+cMenu_1
;
;
;		switch(pMsg->type)
	.line	1005
	ldy	#$8
	lda	[<L96+pMsg_0],Y
	brl	L10110
;		{
	.line	1006
;		case FX_CREATE_WINDOW:
	.line	1007
L10112:
;			if(p)
	.line	1008
;			{
	lda	<L97+p_1
	ora	<L97+p_1+2
	bne	L100
	brl	L10113
L100:
	.line	1009
;				k_debug_long("textboxWindowProc::FX_CREATE_WINDOW:",p->procId);
	.line	1010
	ldy	#$4
	lda	[<L97+p_1],Y
	pha
	ldy	#$2
	lda	[<L97+p_1],Y
	pha
	pea	#^L95
	pea	#<L95
	jsl	~~k_debug_long
;				textbox = pWin->windowData = k_mem_allocate_heap(sizeof(TEXTBOX));
	.line	1011
	pea	#<$12
	jsl	~~k_mem_allocate_heap
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$141
	sta	[<L97+pWin_1],Y
	lda	<R0+2
	ldy	#$143
	sta	[<L97+pWin_1],Y
	lda	<R0
	sta	<L97+textbox_1
	lda	<R0+2
	sta	<L97+textbox_1+2
;				memset(textbox,0,sizeof(TEXTBOX));
	.line	1012
	pea	#<$12
	pea	#<$0
	pei	<L97+textbox_1+2
	pei	<L97+textbox_1
	jsl	~~memset
;
;				//textbox->data = textData;
;
;				textbox->data = k_fxstring_new(textData,128);
	.line	1016
	pea	#<$80
	lda	|~~textData+2
	pha
	lda	|~~textData
	pha
	jsl	~~k_fxstring_new
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$e
	sta	[<L97+textbox_1],Y
	lda	<R0+2
	ldy	#$10
	sta	[<L97+textbox_1],Y
;
;				textbox->fontSet = (LPCHAR)k_user_getFontClass("ToshibaLCD8x8");
	.line	1018
	pea	#^L95+37
	pea	#<L95+37
	jsl	~~k_user_getFontClass
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$a
	sta	[<L97+textbox_1],Y
	lda	<R0+2
	ldy	#$c
	sta	[<L97+textbox_1],Y
;				textbox->offsetY = 0;
	.line	1019
	lda	#$0
	ldy	#$6
	sta	[<L97+textbox_1],Y
;				textbox->cursorState = FALSE;
	.line	1020
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$9
	sta	[<L97+textbox_1],Y
	rep	#$20
	longa	on
;				//k_debug_integer("testWindowProc::MessageId:",pMsg->type);
;			}
	.line	1022
;			break;
L10113:
	.line	1023
	brl	L10111
;		case FX_DRAW_WINDOW:
	.line	1024
L10114:
;			k_debug_string("textboxWindowProc::FX_DRAW_WINDOW\r\n");
	.line	1025
	pea	#^L95+51
	pea	#<L95+51
	jsl	~~k_debug_string
;
;			//pFont = (LPCSTR)k_user_getFontClass("ToshibaLCD8x8");
;
;			r.x = 1;
	.line	1029
	lda	#$1
	sta	<L97+r_1
;			r.y = 2;
	.line	1030
	lda	#$2
	sta	<L97+r_1+2
;
;			k_vdma_fill_rect(pWin->win_x + 2,
	.line	1032
;					         pWin->win_y + 1,
;							 pWin->win_width - (k_user_getSystemMetric(SM_CXBORDER) * 2) - 1,
;							 pWin->win_height - 1,
;							 k_getUIBackgroundColor()
;							 //3
;							 );
	jsl	~~k_getUIBackgroundColor
	pha
	clc
	lda	#$ffff
	ldy	#$e
	adc	[<L97+pWin_1],Y
	pha
	pea	#<$5
	jsl	~~k_user_getSystemMetric
	sta	<R1
	lda	<R1
	asl	A
	sta	<R0
	sec
	ldy	#$c
	lda	[<L97+pWin_1],Y
	sbc	<R0
	sta	<R1
	clc
	lda	#$ffff
	adc	<R1
	pha
	ldy	#$a
	lda	[<L97+pWin_1],Y
	ina
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L101
	dey
L101:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	#$2
	ldy	#$8
	adc	[<L97+pWin_1],Y
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L102
	dey
L102:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_vdma_fill_rect
;
;			if(textbox)
	.line	1040
;			{
	lda	<L97+textbox_1
	ora	<L97+textbox_1+2
	bne	L103
	brl	L10115
L103:
	.line	1041
;				textbox->offsetX = k_user_DrawWindowTextToPointWithFont(hWnd,
	.line	1042
;												     ((PFXSTRING)textbox->data)->buffer,
;													 cMenu,
;													 &r,
;													 textbox->fontSet);
	ldy	#$c
	lda	[<L97+textbox_1],Y
	pha
	ldy	#$a
	lda	[<L97+textbox_1],Y
	pha
	pea	#0
	clc
	tdc
	adc	#<L97+r_1
	pha
	pei	<L97+cMenu_1
	ldy	#$e
	lda	[<L97+textbox_1],Y
	sta	<R0
	ldy	#$10
	lda	[<L97+textbox_1],Y
	sta	<R0+2
	ldy	#$6
	lda	[<R0],Y
	pha
	ldy	#$4
	lda	[<R0],Y
	pha
	pei	<L97+hWnd_1+2
	pei	<L97+hWnd_1
	jsl	~~k_user_DrawWindowTextToPointWithFont
	ldy	#$4
	sta	[<L97+textbox_1],Y
;
;				if(textbox->offsetX == 0)
	.line	1048
;					textbox->offsetX = 1;
	ldy	#$4
	lda	[<L97+textbox_1],Y
	beq	L104
	brl	L10116
L104:
	.line	1049
	lda	#$1
	ldy	#$4
	sta	[<L97+textbox_1],Y
;
;				k_debug_integer("textboxWindowProc:x:",textbox->offsetX);
L10116:
	.line	1051
	ldy	#$4
	lda	[<L97+textbox_1],Y
	pha
	pea	#^L95+87
	pea	#<L95+87
	jsl	~~k_debug_integer
;			//	k_debug_integer("listboxWindowProc:y:",r.y);
;				//k_debug_integer("listboxWindowProc:w:",r.width);
;				//k_debug_integer("listboxWindowProc:h:",r.height);
;				//r.y += 10;
;
;				//if(r.y > pWin->win_height)
;				//	break;
;				//k_mem_deallocate_heap(listItem);
;			}
	.line	1060
;
;			//k_vdma_fill_rect(100,100,100,50,4);
;			break;
L10115:
	.line	1063
	brl	L10111
;		case FX_PROCESS_TIMER:
	.line	1064
L10117:
;			//k_debug_string("preferencesWindowProc::FX_PROCESS_TIMER\r\n");
;
;			hWnd = k_user_getFocusWindow();
	.line	1067
	jsl	~~k_user_getFocusWindow
	sta	<L97+hWnd_1
	stx	<L97+hWnd_1+2
;			if(hWnd)
	.line	1068
;			{
	lda	<L97+hWnd_1
	ora	<L97+hWnd_1+2
	bne	L105
	brl	L10118
L105:
	.line	1069
;				pWin = k_getWindowFromHandle(hWnd);
	.line	1070
	pei	<L97+hWnd_1+2
	pei	<L97+hWnd_1
	jsl	~~k_getWindowFromHandle
	sta	<L97+pWin_1
	stx	<L97+pWin_1+2
;				//k_debug_strings("textboxWindowProc:FX_PROCESS_TIMER:pWin->win_class:",(LPSTR)pWin->win_class_name);
;				if(pWin && (strcmp("textboxWindowClass",pWin->win_class_name) == 0))
	.line	1072
;				{
	lda	<L97+pWin_1
	ora	<L97+pWin_1+2
	bne	L106
	brl	L10119
L106:
	clc
	lda	#$106
	adc	<L97+pWin_1
	sta	<R0
	lda	#$0
	adc	<L97+pWin_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L95+108
	pea	#<L95+108
	jsl	~~strcmp
	tax
	beq	L107
	brl	L10119
L107:
	.line	1073
;					textbox = ASTEXTBOX(pWin);
	.line	1074
	ldy	#$141
	lda	[<L97+pWin_1],Y
	sta	<L97+textbox_1
	ldy	#$143
	lda	[<L97+pWin_1],Y
	sta	<L97+textbox_1+2
;
;					textbox->cursorState=!textbox->cursorState;
	.line	1076
	stz	<R0
	ldy	#$9
	lda	[<L97+textbox_1],Y
	and	#$ff
	beq	L109
	brl	L108
L109:
	inc	<R0
L108:
	sep	#$20
	longa	off
	lda	<R0
	ldy	#$9
	sta	[<L97+textbox_1],Y
	rep	#$20
	longa	on
;
;					r.x = textbox->offsetX;
	.line	1078
	ldy	#$4
	lda	[<L97+textbox_1],Y
	sta	<L97+r_1
;					r.y = 1;
	.line	1079
	lda	#$1
	sta	<L97+r_1+2
;
;					//k_debug_integer("textboxWindowProc:FX_PROCESS_TIMER:name:",pWin->win_title);
;					//k_debug_integer("textboxWindowProc:FX_PROCESS_TIMER:offsetX:",r.x);
;					//k_debug_integer("textboxWindowProc:FX_PROCESS_TIMER:cursorState:",textbox->cursorState);
;
;					if(textbox->cursorState)
	.line	1085
;						k_user_DrawWindowTextToPointWithFont(hWnd,"\xAF",k_getUIBackgroundColor(),&r,(LPCSTR)k_user_getFontClass("FXOS8x8"));
	ldy	#$9
	lda	[<L97+textbox_1],Y
	and	#$ff
	bne	L110
	brl	L10120
L110:
	.line	1086
	pea	#^L95+129
	pea	#<L95+129
	jsl	~~k_user_getFontClass
	sta	<R0
	stx	<R0+2
	phx
	pha
	pea	#0
	clc
	tdc
	adc	#<L97+r_1
	pha
	jsl	~~k_getUIBackgroundColor
	pha
	pea	#^L95+127
	pea	#<L95+127
	pei	<L97+hWnd_1+2
	pei	<L97+hWnd_1
	jsl	~~k_user_DrawWindowTextToPointWithFont
;					else
	brl	L10121
L10120:
;						k_user_DrawWindowTextToPointWithFont(hWnd,"\xAE",k_getUIMenuColor(),&r,(LPCSTR)k_user_getFontClass("FXOS8x8"));
	.line	1088
	pea	#^L95+139
	pea	#<L95+139
	jsl	~~k_user_getFontClass
	sta	<R0
	stx	<R0+2
	phx
	pha
	pea	#0
	clc
	tdc
	adc	#<L97+r_1
	pha
	jsl	~~k_getUIMenuColor
	pha
	pea	#^L95+137
	pea	#<L95+137
	pei	<L97+hWnd_1+2
	pei	<L97+hWnd_1
	jsl	~~k_user_DrawWindowTextToPointWithFont
L10121:
;
;				}
	.line	1090
;			}
L10119:
	.line	1091
;
;			break;
L10118:
	.line	1093
	brl	L10111
;
;
;		case FX_KEY_UP:
	.line	1096
L10122:
;
;			if(pMsg->data[0] == 182 || pMsg->data[0] == 170)
	.line	1098
;			{
	sep	#$20
	longa	off
	ldy	#$16
	lda	[<L96+pMsg_0],Y
	cmp	#<$b6
	rep	#$20
	longa	on
	bne	L112
	brl	L111
L112:
	sep	#$20
	longa	off
	ldy	#$16
	lda	[<L96+pMsg_0],Y
	cmp	#<$aa
	rep	#$20
	longa	on
	beq	L113
	brl	L10123
L113:
L111:
	.line	1099
;				textbox->isShifted = FALSE;
	.line	1100
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$8
	sta	[<L97+textbox_1],Y
	rep	#$20
	longa	on
;				k_debug_integer("textboxWindowProc::FX_KEY_DOWN:isShifted",textbox->isShifted);
	.line	1101
	ldy	#$8
	lda	[<L97+textbox_1],Y
	and	#$ff
	pha
	pea	#^L95+147
	pea	#<L95+147
	jsl	~~k_debug_integer
;			}
	.line	1102
;
;			break;
L10123:
	.line	1104
	brl	L10111
;		case FX_KEY_DOWN:
	.line	1105
L10124:
;
;			k_debug_integer("textboxWindowProc::FX_KEY_DOWN:",pMsg->data[0]);
	.line	1107
	ldy	#$16
	lda	[<L96+pMsg_0],Y
	and	#$ff
	pha
	pea	#^L95+188
	pea	#<L95+188
	jsl	~~k_debug_integer
;
;			if(pMsg->data[0] == 54 || pMsg->data[0] == 42)
	.line	1109
;			{
	sep	#$20
	longa	off
	ldy	#$16
	lda	[<L96+pMsg_0],Y
	cmp	#<$36
	rep	#$20
	longa	on
	bne	L115
	brl	L114
L115:
	sep	#$20
	longa	off
	ldy	#$16
	lda	[<L96+pMsg_0],Y
	cmp	#<$2a
	rep	#$20
	longa	on
	beq	L116
	brl	L10125
L116:
L114:
	.line	1110
;				textbox->isShifted = TRUE;
	.line	1111
	sep	#$20
	longa	off
	lda	#$1
	ldy	#$8
	sta	[<L97+textbox_1],Y
	rep	#$20
	longa	on
;				k_debug_integer("textboxWindowProc::FX_KEY_DOWN:isShifted",textbox->isShifted);
	.line	1112
	ldy	#$8
	lda	[<L97+textbox_1],Y
	and	#$ff
	pha
	pea	#^L95+220
	pea	#<L95+220
	jsl	~~k_debug_integer
;			}
	.line	1113
;			else if(pMsg->data[0] == 80)
	brl	L10126
L10125:
	.line	1114
;			{
	sep	#$20
	longa	off
	ldy	#$16
	lda	[<L96+pMsg_0],Y
	cmp	#<$50
	rep	#$20
	longa	on
	beq	L117
	brl	L10127
L117:
	.line	1115
;				textbox->pos++;
	.line	1116
	lda	[<L97+textbox_1]
	ina
	sta	[<L97+textbox_1]
;				if(textbox->pos > 29)
	.line	1117
;					textbox->pos = 29;
	sec
	lda	#$1d
	sbc	[<L97+textbox_1]
	bvs	L118
	eor	#$8000
L118:
	bpl	L119
	brl	L10128
L119:
	.line	1118
	lda	#$1d
	sta	[<L97+textbox_1]
;				k_send_window_message(k_getHandleFromWindow(pWin),FX_DRAW_WINDOW,0,0);
L10128:
	.line	1119
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$fb00
	pei	<L97+pWin_1+2
	pei	<L97+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_send_window_message
;			}
	.line	1120
;			else if(pMsg->data[0] == 72)
	brl	L10129
L10127:
	.line	1121
;			{
	sep	#$20
	longa	off
	ldy	#$16
	lda	[<L96+pMsg_0],Y
	cmp	#<$48
	rep	#$20
	longa	on
	beq	L120
	brl	L10130
L120:
	.line	1122
;				textbox->pos--;
	.line	1123
	clc
	lda	#$ffff
	adc	[<L97+textbox_1]
	sta	[<L97+textbox_1]
;				if(textbox->pos < 0)
	.line	1124
;					textbox->pos = 0;
	lda	[<L97+textbox_1]
	bmi	L121
	brl	L10131
L121:
	.line	1125
	lda	#$0
	sta	[<L97+textbox_1]
;				k_send_window_message(k_getHandleFromWindow(pWin),FX_DRAW_WINDOW,0,0);
L10131:
	.line	1126
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$fb00
	pei	<L97+pWin_1+2
	pei	<L97+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_send_window_message
;			}
	.line	1127
;			else if(pMsg->data[0] == 14)
	brl	L10132
L10130:
	.line	1128
;			{
	sep	#$20
	longa	off
	ldy	#$16
	lda	[<L96+pMsg_0],Y
	cmp	#<$e
	rep	#$20
	longa	on
	beq	L122
	brl	L10133
L122:
	.line	1129
;				c = k_fxstring_removechar(textbox->data);
	.line	1130
	ldy	#$10
	lda	[<L97+textbox_1],Y
	pha
	ldy	#$e
	lda	[<L97+textbox_1],Y
	pha
	jsl	~~k_fxstring_removechar
	sep	#$20
	longa	off
	sta	<L97+c_1
	rep	#$20
	longa	on
;
;				k_debug_integer("textboxWindowProc::FX_KEY_DOWN:BACKSPACE:",c);
	.line	1132
	lda	<L97+c_1
	and	#$ff
	pha
	pea	#^L95+261
	pea	#<L95+261
	jsl	~~k_debug_integer
;
;				k_send_window_message(k_getHandleFromWindow(pWin),FX_DRAW_WINDOW,0,0);
	.line	1134
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$fb00
	pei	<L97+pWin_1+2
	pei	<L97+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_send_window_message
;			}
	.line	1135
;			else
	brl	L10134
L10133:
;			{
	.line	1137
;				c = k_getKeyboardChar(pMsg->data[0],pMsg->data[1],textbox->isShifted);
	.line	1138
	ldy	#$8
	lda	[<L97+textbox_1],Y
	and	#$ff
	pha
	ldy	#$17
	lda	[<L96+pMsg_0],Y
	and	#$ff
	pha
	ldy	#$16
	lda	[<L96+pMsg_0],Y
	pha
	jsl	~~k_getKeyboardChar
	sep	#$20
	longa	off
	sta	<L97+c_1
	rep	#$20
	longa	on
;
;				k_debug_char("textboxWindowProc::FX_KEY_DOWN:",pMsg->data[2]);
	.line	1140
	ldy	#$18
	lda	[<L96+pMsg_0],Y
	pha
	pea	#^L95+303
	pea	#<L95+303
	jsl	~~k_debug_char
;				k_debug_char("textboxWindowProc::FX_KEY_DOWN:KEYCODE:",c);
	.line	1141
	pei	<L97+c_1
	pea	#^L95+335
	pea	#<L95+335
	jsl	~~k_debug_char
;
;
;
;				//k_fxstring_addchar(textbox->data, pMsg->data[2]);
;				if(c)
	.line	1146
;					k_fxstring_addchar(textbox->data,c);
	lda	<L97+c_1
	and	#$ff
	bne	L123
	brl	L10135
L123:
	.line	1147
	pei	<L97+c_1
	ldy	#$10
	lda	[<L97+textbox_1],Y
	pha
	ldy	#$e
	lda	[<L97+textbox_1],Y
	pha
	jsl	~~k_fxstring_addchar
;
;				k_send_window_message(k_getHandleFromWindow(pWin),FX_DRAW_WINDOW,0,0);
L10135:
	.line	1149
	pea	#<$0
	pea	#^$0
	pea	#<$0
	pea	#<$fb00
	pei	<L97+pWin_1+2
	pei	<L97+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R0
	stx	<R0+2
	phx
	pha
	jsl	~~k_send_window_message
;
;
;			}
	.line	1152
L10134:
L10132:
L10129:
L10126:
;			break;
	.line	1153
	brl	L10111
;		case FX_LBUTTON_DOWN:
	.line	1154
L10136:
;			if(pMsg->type!=FX_PROCESS)
	.line	1155
;			{
	ldy	#$8
	lda	[<L96+pMsg_0],Y
	cmp	#<$ff00
	bne	L124
	brl	L10137
L124:
	.line	1156
;				//k_debug_integer("consoleWindowProc::ProcessId:",p->procId);
;				k_debug_string("textboxWindowProc::FX_LBUTTON_DOWN\r\n");
	.line	1158
	pea	#^L95+375
	pea	#<L95+375
	jsl	~~k_debug_string
;			}
	.line	1159
;
;			break;
L10137:
	.line	1161
	brl	L10111
;		default:
	.line	1162
L10138:
;			return DefWindowProc(pMsg);
	.line	1163
	pei	<L96+pMsg_0+2
	pei	<L96+pMsg_0
	jsl	~~DefWindowProc
	sep	#$20
	longa	off
	sta	<R0
	rep	#$20
	longa	on
	lda	<R0
	and	#$ff
L125:
	tay
	lda	<L96+2
	sta	<L96+2+4
	lda	<L96+1
	sta	<L96+1+4
	pld
	tsc
	clc
	adc	#L96+4
	tcs
	tya
	rtl
;			break;
	.line	1164
;		}
	.line	1165
L10110:
	xref	~~~swt
	jsl	~~~swt
	dw	6
	dw	3844
	dw	L10136-1
	dw	3856
	dw	L10124-1
	dw	3858
	dw	L10122-1
	dw	64256
	dw	L10114-1
	dw	65283
	dw	L10112-1
	dw	65521
	dw	L10117-1
	dw	L10138-1
L10111:
;	}
	.line	1166
;
;	return TRUE;
L10109:
	.line	1168
	lda	#$1
	brl	L125
;
;}
	.line	1170
	.endblock	1170
L96	equ	61
L97	equ	9
	ends
	efunc
	.endfunc	1170,9,61
	.line	1170
	data
L95:
	db	$74,$65,$78,$74,$62,$6F,$78,$57,$69,$6E,$64,$6F,$77,$50,$72
	db	$6F,$63,$3A,$3A,$46,$58,$5F,$43,$52,$45,$41,$54,$45,$5F,$57
	db	$49,$4E,$44,$4F,$57,$3A,$00,$54,$6F,$73,$68,$69,$62,$61,$4C
	db	$43,$44,$38,$78,$38,$00,$74,$65,$78,$74,$62,$6F,$78,$57,$69
	db	$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$44,$52
	db	$41,$57,$5F,$57,$49,$4E,$44,$4F,$57,$0D,$0A,$00,$74,$65,$78
	db	$74,$62,$6F,$78,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A
	db	$78,$3A,$00,$74,$65,$78,$74,$62,$6F,$78,$57,$69,$6E,$64,$6F
	db	$77,$43,$6C,$61,$73,$73,$00,$FFFFFFAF,$00,$46,$58,$4F,$53,$38,$78
	db	$38,$00,$FFFFFFAE,$00,$46,$58,$4F,$53,$38,$78,$38,$00,$74,$65,$78
	db	$74,$62,$6F,$78,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A
	db	$3A,$46,$58,$5F,$4B,$45,$59,$5F,$44,$4F,$57,$4E,$3A,$69,$73
	db	$53,$68,$69,$66,$74,$65,$64,$00,$74,$65,$78,$74,$62,$6F,$78
	db	$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F
	db	$4B,$45,$59,$5F,$44,$4F,$57,$4E,$3A,$00,$74,$65,$78,$74,$62
	db	$6F,$78,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46
	db	$58,$5F,$4B,$45,$59,$5F,$44,$4F,$57,$4E,$3A,$69,$73,$53,$68
	db	$69,$66,$74,$65,$64,$00,$74,$65,$78,$74,$62,$6F,$78,$57,$69
	db	$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$4B,$45
	db	$59,$5F,$44,$4F,$57,$4E,$3A,$42,$41,$43,$4B,$53,$50,$41,$43
	db	$45,$3A,$00,$74,$65,$78,$74,$62,$6F,$78,$57,$69,$6E,$64,$6F
	db	$77,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$4B,$45,$59,$5F,$44
	db	$4F,$57,$4E,$3A,$00,$74,$65,$78,$74,$62,$6F,$78,$57,$69,$6E
	db	$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$4B,$45,$59
	db	$5F,$44,$4F,$57,$4E,$3A,$4B,$45,$59,$43,$4F,$44,$45,$3A,$00
	db	$74,$65,$78,$74,$62,$6F,$78,$57,$69,$6E,$64,$6F,$77,$50,$72
	db	$6F,$63,$3A,$3A,$46,$58,$5F,$4C,$42,$55,$54,$54,$4F,$4E,$5F
	db	$44,$4F,$57,$4E,$0D,$0A,$00
	ends
;
;
;
;
;BOOL preferencesWindowProc(PFXOSMESSAGE pMsg)
;{
	.line	1175
	.line	1176
	DTOP
	xdef	~~preferencesWindowProc
	func
	.function	1176
~~preferencesWindowProc:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L127
	tcs
	phd
	tcd
pMsg_0	set	4
	.block	1176
;	PFXPROCESS p = NULL;
;	PPOINT ppoint;
;	PWINDOW pWin = NULL;
;	RECT r;
;	UCHAR buffer[16];
;
;	if(pMsg!=NULL)
p_1	set	0
ppoint_1	set	4
pWin_1	set	8
r_1	set	12
buffer_1	set	20
	.sym	p,0,138,1,32,17
	.sym	ppoint,4,138,1,32,21
	.sym	pWin,8,138,1,32,27
	.sym	r,12,10,1,64,22
	.sym	buffer,20,110,1,0,16
	.sym	pMsg,4,138,6,32,13
	stz	<L128+p_1
	stz	<L128+p_1+2
	stz	<L128+pWin_1
	stz	<L128+pWin_1+2
	.line	1183
;	{
	lda	<L127+pMsg_0
	ora	<L127+pMsg_0+2
	bne	L130
	brl	L10139
L130:
	.line	1184
;		p = k_exec_get_current_process();
	.line	1185
	jsl	~~k_exec_get_current_process
	sta	<L128+p_1
	stx	<L128+p_1+2
;		pWin =  k_getWindowFromHandle(pMsg->hwnd);
	.line	1186
	ldy	#$c
	lda	[<L127+pMsg_0],Y
	pha
	ldy	#$a
	lda	[<L127+pMsg_0],Y
	pha
	jsl	~~k_getWindowFromHandle
	sta	<L128+pWin_1
	stx	<L128+pWin_1+2
;		//k_debug_long("consoleWindowProc::ProcessId:",p->procId);
;
;		switch(pMsg->type)
	.line	1189
	ldy	#$8
	lda	[<L127+pMsg_0],Y
	brl	L10140
;		{
	.line	1190
;		case FX_CREATE_WINDOW:
	.line	1191
L10142:
;			if(p)
	.line	1192
;			{
	lda	<L128+p_1
	ora	<L128+p_1+2
	bne	L131
	brl	L10143
L131:
	.line	1193
;				k_debug_long("preferencesWindowProc::FX_CREATE_WINDOW:",p->procId);
	.line	1194
	ldy	#$4
	lda	[<L128+p_1],Y
	pha
	ldy	#$2
	lda	[<L128+p_1],Y
	pha
	pea	#^L126
	pea	#<L126
	jsl	~~k_debug_long
;				//k_user_SetWindowData(pMsg->hwnd,0,k_user_CreateButton(pMsg->hwnd,"Test",0x8801,10,10,20,10));
;				//k_debug_integer("testWindowProc::MessageId:",pMsg->type);
;
;
;				//k_user_CreateHorizontalScrollbar(pWin,"",1);
;				k_user_CreateVerticalScrollBar(pWin,"",1);
	.line	1200
	pea	#<$1
	pea	#^L126+41
	pea	#<L126+41
	pei	<L128+pWin_1+2
	pei	<L128+pWin_1
	jsl	~~k_user_CreateVerticalScrollBar
;
;			}
	.line	1202
;			break;
L10143:
	.line	1203
	brl	L10141
;
;		case FX_PROCESS_TIMER:
	.line	1205
L10144:
;			//k_debug_string("preferencesWindowProc::FX_PROCESS_TIMER\r\n");
;
;			/*
;			p->desktopCtl->cursorState=!p->desktopCtl->cursorState;
;
;			r.x = 0;
;			r.y = 20;
;
;			if(p->desktopCtl->cursorState)
;				k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(k_user_getFocusWindow()),"\xAF",k_getUIBackgroundColor(),&r,(LPCSTR)k_user_getFontClass("FXOS8x8"));
;			else
;				k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(k_user_getFocusWindow()),"\xAE",k_getUIMenuColor(),&r,(LPCSTR)k_user_getFontClass("FXOS8x8"));
;
;			*/
;
;
;			break;
	.line	1222
	brl	L10141
;		case FX_DRAW_WINDOW:
	.line	1223
L10145:
;			k_debug_string("preferencesWindowProc::FX_DRAW_WINDOW\r\n");
	.line	1224
	pea	#^L126+42
	pea	#<L126+42
	jsl	~~k_debug_string
;
;			ppoint = ((PEACHCHILD_MSG)pMsg)->msgData;
	.line	1226
	ldy	#$2
	lda	[<L127+pMsg_0],Y
	sta	<L128+ppoint_1
	ldy	#$4
	lda	[<L127+pMsg_0],Y
	sta	<L128+ppoint_1+2
;
;			/*
;			k_vdma_fill_rect(pWin->clientRect.x + ppoint->x,
;							 pWin->clientRect.y + ppoint->y,
;							 pWin->win_width,pWin->win_height,
;							 128);
;			*/
;			//k_user_FillClientRect(pMsg->hwnd,128);
;
;			ppoint = (PPOINT)k_mem_allocate_heap(sizeof(POINT));
	.line	1236
	pea	#<$4
	jsl	~~k_mem_allocate_heap
	sta	<L128+ppoint_1
	stx	<L128+ppoint_1+2
;			ppoint->x = pWin->win_x + ppoint->x;
	.line	1237
	clc
	ldy	#$8
	lda	[<L128+pWin_1],Y
	adc	[<L128+ppoint_1]
	sta	[<L128+ppoint_1]
;			ppoint->y = pWin->win_y + ppoint->y;
	.line	1238
	clc
	ldy	#$a
	lda	[<L128+pWin_1],Y
	ldy	#$2
	adc	[<L128+ppoint_1],Y
	ldy	#$2
	sta	[<L128+ppoint_1],Y
;
;
;			_k_user_send_child_message(pMsg->hwnd,FX_DRAW_WINDOW,ppoint,sizeof(POINT));
	.line	1241
	pea	#<$4
	pei	<L128+ppoint_1+2
	pei	<L128+ppoint_1
	pea	#<$fb00
	ldy	#$c
	lda	[<L127+pMsg_0],Y
	pha
	ldy	#$a
	lda	[<L127+pMsg_0],Y
	pha
	jsl	~~_k_user_send_child_message
;			break;
	.line	1242
	brl	L10141
;		case FX_MBUTTON_DOWN:
	.line	1243
L10146:
;			if(pMsg->type!=FX_PROCESS)
	.line	1244
;			{
	ldy	#$8
	lda	[<L127+pMsg_0],Y
	cmp	#<$ff00
	bne	L132
	brl	L10147
L132:
	.line	1245
;				//k_debug_integer("consoleWindowProc::ProcessId:",p->procId);
;				k_debug_string("preferencesWindowProc::FX_MBUTTON_DOWN\r\n");
	.line	1247
	pea	#^L126+82
	pea	#<L126+82
	jsl	~~k_debug_string
;			}
	.line	1248
;			break;
L10147:
	.line	1249
	brl	L10141
;		case FX_LBUTTON_DOWN:
	.line	1250
L10148:
;			if(pMsg->type!=FX_PROCESS)
	.line	1251
;			{
	ldy	#$8
	lda	[<L127+pMsg_0],Y
	cmp	#<$ff00
	bne	L133
	brl	L10149
L133:
	.line	1252
;				//k_debug_integer("consoleWindowProc::ProcessId:",p->procId);
;				k_debug_string("preferencesWindowProc::FX_LBUTTON_DOWN\r\n");
	.line	1254
	pea	#^L126+123
	pea	#<L126+123
	jsl	~~k_debug_string
;			}
	.line	1255
;
;			break;
L10149:
	.line	1257
	brl	L10141
;		case FX_MOUSE_ENTER:
	.line	1258
L10150:
;			k_debug_strings("preferencesWindowProc::FX_MOUSE_ENTER:",pWin->win_title);
	.line	1259
	clc
	lda	#$d4
	adc	<L128+pWin_1
	sta	<R0
	lda	#$0
	adc	<L128+pWin_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L126+164
	pea	#<L126+164
	jsl	~~k_debug_strings
;			break;
	.line	1260
	brl	L10141
;		case FX_MOUSE_EXIT:
	.line	1261
L10151:
;			k_debug_strings("preferencesWindowProc::FX_MOUSE_EXIT:",pWin->win_title);
	.line	1262
	clc
	lda	#$d4
	adc	<L128+pWin_1
	sta	<R0
	lda	#$0
	adc	<L128+pWin_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L126+203
	pea	#<L126+203
	jsl	~~k_debug_strings
;			break;
	.line	1263
	brl	L10141
;		case FX_SCROLLBAR_COMMAND:
	.line	1264
L10152:
;			k_debug_integer("preferencesWindowProc::FX_SCROLLBAR_COMMAND:", ((PFXCMDMESSAGE)pMsg)->cmdCId );
	.line	1265
	ldy	#$16
	lda	[<L127+pMsg_0],Y
	pha
	pea	#^L126+241
	pea	#<L126+241
	jsl	~~k_debug_integer
;			if(((PFXCMDMESSAGE)pMsg)->cmdCId == CTL_HORZ_SCROLL )
	.line	1266
;			{
	ldy	#$16
	lda	[<L127+pMsg_0],Y
	cmp	#<$2
	beq	L134
	brl	L10153
L134:
	.line	1267
;				k_debug_integer("preferencesWindowProc::FX_SCROLLBAR_COMMAND:LOCATION:", ((PFXCMDMESSAGE)pMsg)->cmdMId );
	.line	1268
	ldy	#$18
	lda	[<L127+pMsg_0],Y
	pha
	pea	#^L126+286
	pea	#<L126+286
	jsl	~~k_debug_integer
;				k_debug_integer("preferencesWindowProc::FX_SCROLLBAR_COMMAND:VALUE:", ((PFXCMDMESSAGE)pMsg)->parameter1);
	.line	1269
	ldy	#$1a
	lda	[<L127+pMsg_0],Y
	pha
	pea	#^L126+340
	pea	#<L126+340
	jsl	~~k_debug_integer
;
;				r.x = 0;
	.line	1271
	stz	<L128+r_1
;				r.y = 0;
	.line	1272
	stz	<L128+r_1+2
;
;				k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),
	.line	1274
;													 "\xDB\xDB\xDB\xDB\xDB\xDB\xDB\xDB\xDB\xDB",
;						                             k_getUIBackgroundColor(),
;													 &r,
;													 (LPCSTR)k_user_getFontClass("TINYTYPE8x8"));
	pea	#^L126+402
	pea	#<L126+402
	jsl	~~k_user_getFontClass
	sta	<R0
	stx	<R0+2
	phx
	pha
	pea	#0
	clc
	tdc
	adc	#<L128+r_1
	pha
	jsl	~~k_getUIBackgroundColor
	pha
	pea	#^L126+391
	pea	#<L126+391
	pei	<L128+pWin_1+2
	pei	<L128+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R1
	stx	<R1+2
	phx
	pha
	jsl	~~k_user_DrawWindowTextToPointWithFont
;
;				k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),
	.line	1280
;													 k_longtodec(((PFXCMDMESSAGE)pMsg)->parameter1,buffer),
;						                             k_getUIMenuColor(),
;													 &r,
;													 (LPCSTR)k_user_getFontClass("TINYTYPE8x8"));
	pea	#^L126+414
	pea	#<L126+414
	jsl	~~k_user_getFontClass
	sta	<R0
	stx	<R0+2
	phx
	pha
	pea	#0
	clc
	tdc
	adc	#<L128+r_1
	pha
	jsl	~~k_getUIMenuColor
	pha
	pea	#0
	clc
	tdc
	adc	#<L128+buffer_1
	pha
	ldy	#$1c
	lda	[<L127+pMsg_0],Y
	pha
	ldy	#$1a
	lda	[<L127+pMsg_0],Y
	pha
	jsl	~~k_longtodec
	sta	<R1
	stx	<R1+2
	phx
	pha
	pei	<L128+pWin_1+2
	pei	<L128+pWin_1
	jsl	~~k_getHandleFromWindow
	sta	<R2
	stx	<R2+2
	phx
	pha
	jsl	~~k_user_DrawWindowTextToPointWithFont
;
;			}
	.line	1286
;			break;
L10153:
	.line	1287
	brl	L10141
;
;		default:
	.line	1289
L10154:
;			return DefWindowProc(pMsg);
	.line	1290
	pei	<L127+pMsg_0+2
	pei	<L127+pMsg_0
	jsl	~~DefWindowProc
	sep	#$20
	longa	off
	sta	<R0
	rep	#$20
	longa	on
	lda	<R0
	and	#$ff
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
;			break;
	.line	1291
;		}
	.line	1292
L10140:
	xref	~~~swt
	jsl	~~~swt
	dw	8
	dw	3841
	dw	L10150-1
	dw	3842
	dw	L10151-1
	dw	3844
	dw	L10148-1
	dw	3852
	dw	L10146-1
	dw	64002
	dw	L10152-1
	dw	64256
	dw	L10145-1
	dw	65283
	dw	L10142-1
	dw	65521
	dw	L10144-1
	dw	L10154-1
L10141:
;	}
	.line	1293
;
;	return TRUE;
L10139:
	.line	1295
	lda	#$1
	brl	L135
;}
	.line	1296
	.endblock	1296
L127	equ	48
L128	equ	13
	ends
	efunc
	.endfunc	1296,13,48
	.line	1296
	data
L126:
	db	$70,$72,$65,$66,$65,$72,$65,$6E,$63,$65,$73,$57,$69,$6E,$64
	db	$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$43,$52,$45,$41
	db	$54,$45,$5F,$57,$49,$4E,$44,$4F,$57,$3A,$00,$00,$70,$72,$65
	db	$66,$65,$72,$65,$6E,$63,$65,$73,$57,$69,$6E,$64,$6F,$77,$50
	db	$72,$6F,$63,$3A,$3A,$46,$58,$5F,$44,$52,$41,$57,$5F,$57,$49
	db	$4E,$44,$4F,$57,$0D,$0A,$00,$70,$72,$65,$66,$65,$72,$65,$6E
	db	$63,$65,$73,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A
	db	$46,$58,$5F,$4D,$42,$55,$54,$54,$4F,$4E,$5F,$44,$4F,$57,$4E
	db	$0D,$0A,$00,$70,$72,$65,$66,$65,$72,$65,$6E,$63,$65,$73,$57
	db	$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$4C
	db	$42,$55,$54,$54,$4F,$4E,$5F,$44,$4F,$57,$4E,$0D,$0A,$00,$70
	db	$72,$65,$66,$65,$72,$65,$6E,$63,$65,$73,$57,$69,$6E,$64,$6F
	db	$77,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$4D,$4F,$55,$53,$45
	db	$5F,$45,$4E,$54,$45,$52,$3A,$00,$70,$72,$65,$66,$65,$72,$65
	db	$6E,$63,$65,$73,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F,$63,$3A
	db	$3A,$46,$58,$5F,$4D,$4F,$55,$53,$45,$5F,$45,$58,$49,$54,$3A
	db	$00,$70,$72,$65,$66,$65,$72,$65,$6E,$63,$65,$73,$57,$69,$6E
	db	$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$53,$43,$52
	db	$4F,$4C,$4C,$42,$41,$52,$5F,$43,$4F,$4D,$4D,$41,$4E,$44,$3A
	db	$00,$70,$72,$65,$66,$65,$72,$65,$6E,$63,$65,$73,$57,$69,$6E
	db	$64,$6F,$77,$50,$72,$6F,$63,$3A,$3A,$46,$58,$5F,$53,$43,$52
	db	$4F,$4C,$4C,$42,$41,$52,$5F,$43,$4F,$4D,$4D,$41,$4E,$44,$3A
	db	$4C,$4F,$43,$41,$54,$49,$4F,$4E,$3A,$00,$70,$72,$65,$66,$65
	db	$72,$65,$6E,$63,$65,$73,$57,$69,$6E,$64,$6F,$77,$50,$72,$6F
	db	$63,$3A,$3A,$46,$58,$5F,$53,$43,$52,$4F,$4C,$4C,$42,$41,$52
	db	$5F,$43,$4F,$4D,$4D,$41,$4E,$44,$3A,$56,$41,$4C,$55,$45,$3A
	db	$00,$FFFFFFDB,$FFFFFFDB,$FFFFFFDB,$FFFFFFDB,$FFFFFFDB,$FFFFFFDB,$FFFFFFDB,$FFFFFFDB,$FFFFFFDB,$FFFFFFDB,$00,$54,$49,$4E
	db	$59,$54,$59,$50,$45,$38,$78,$38,$00,$54,$49,$4E,$59,$54,$59
	db	$50,$45,$38,$78,$38,$00
	ends
;
;void drawImage(int color)
;{
	.line	1298
	.line	1299
	DTOP
	xdef	~~drawImage
	func
	.function	1299
~~drawImage:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L137
	tcs
	phd
	tcd
color_0	set	4
	.block	1299
;	int px,py,i,j,k,x,y;
;	float newx = 0.0;
;	UINT seed;
;
;	x = 0;
px_1	set	0
py_1	set	2
i_1	set	4
j_1	set	6
k_1	set	8
x_1	set	10
y_1	set	12
newx_1	set	14
seed_1	set	18
	.sym	px,0,5,1,16
	.sym	py,2,5,1,16
	.sym	i,4,5,1,16
	.sym	j,6,5,1,16
	.sym	k,8,5,1,16
	.sym	x,10,5,1,16
	.sym	y,12,5,1,16
	.sym	newx,14,8,1,32
	.sym	seed,18,16,1,16
	.sym	color,4,5,6,16
	lda	#$0
	sta	<L138+newx_1
	lda	#$0
	sta	<L138+newx_1+2
	.line	1304
	stz	<L138+x_1
;	y = 0;
	.line	1305
	stz	<L138+y_1
;
;	seed = k_get_rtc_second();
	.line	1307
	jsl	~~k_get_rtc_second
	sta	<L138+seed_1
;	srand(seed);
	.line	1308
	pei	<L138+seed_1
	jsl	~~srand
;
;	k_debug_integer("drawImage::seed:", seed );
	.line	1310
	pei	<L138+seed_1
	pea	#^L136
	pea	#<L136
	jsl	~~k_debug_integer
;
;	for(i=1;i<30000;i++)
	.line	1312
	lda	#$1
	sta	<L138+i_1
L10157:
;	{
	.line	1313
;		j = rand();
	.line	1314
	jsl	~~rand
	sta	<L138+j_1
;		k = (j<p[0]) ? 0 : ( (j<p[1]) ? 1 : ((j<p[2]) ? 2 : 3));
	.line	1315
	sec
	lda	<L138+j_1
	sbc	|~~p
	bvs	L141
	eor	#$8000
L141:
	bpl	L142
	brl	L140
L142:
	lda	#$0
	bra	L143
L140:
	sec
	lda	<L138+j_1
	sbc	|~~p+2
	bvs	L145
	eor	#$8000
L145:
	bpl	L146
	brl	L144
L146:
	lda	#$1
	bra	L147
L144:
	sec
	lda	<L138+j_1
	sbc	|~~p+4
	bvs	L149
	eor	#$8000
L149:
	bpl	L150
	brl	L148
L150:
	lda	#$2
	bra	L151
L148:
	lda	#$3
L151:
L147:
L143:
	sta	<L138+k_1
;
;		newx = (a[k] * x + b[k] * y + e[k]);
	.line	1317
	lda	<L138+k_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~e
	adc	<R0
	sta	<R1
	ldy	#$2
	lda	(<R1),Y
	pha
	lda	(<R1)
	pha
	ldy	#$0
	lda	<L138+y_1
	bpl	L152
	dey
L152:
	phy
	pha
	xref	~~~fflt
	jsl	~~~fflt
	lda	<L138+k_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~b
	adc	<R0
	sta	<R2
	ldy	#$2
	lda	(<R2),Y
	pha
	lda	(<R2)
	pha
	xref	~~~fmul
	jsl	~~~fmul
	ldy	#$0
	lda	<L138+x_1
	bpl	L153
	dey
L153:
	phy
	pha
	xref	~~~fflt
	jsl	~~~fflt
	lda	<L138+k_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~a
	adc	<R0
	sta	<R3
	ldy	#$2
	lda	(<R3),Y
	pha
	lda	(<R3)
	pha
	xref	~~~fmul
	jsl	~~~fmul
	xref	~~~fadc
	jsl	~~~fadc
	xref	~~~fadc
	jsl	~~~fadc
	pla
	sta	<L138+newx_1
	pla
	sta	<L138+newx_1+2
;		y    = (c[k] * x + d[k] * y + f[k]);
	.line	1318
	lda	<L138+k_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~f
	adc	<R0
	sta	<R1
	ldy	#$2
	lda	(<R1),Y
	pha
	lda	(<R1)
	pha
	ldy	#$0
	lda	<L138+y_1
	bpl	L154
	dey
L154:
	phy
	pha
	xref	~~~fflt
	jsl	~~~fflt
	lda	<L138+k_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~d
	adc	<R0
	sta	<R2
	ldy	#$2
	lda	(<R2),Y
	pha
	lda	(<R2)
	pha
	xref	~~~fmul
	jsl	~~~fmul
	ldy	#$0
	lda	<L138+x_1
	bpl	L155
	dey
L155:
	phy
	pha
	xref	~~~fflt
	jsl	~~~fflt
	lda	<L138+k_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~c
	adc	<R0
	sta	<R3
	ldy	#$2
	lda	(<R3),Y
	pha
	lda	(<R3)
	pha
	xref	~~~fmul
	jsl	~~~fmul
	xref	~~~fadc
	jsl	~~~fadc
	xref	~~~fadc
	jsl	~~~fadc
	xref	~~~ffix
	jsl	~~~ffix
	pla
	sta	<R0
	pla
	sta	<R0+2
	lda	<R0
	sta	<L138+y_1
;		x    = (int)newx;
	.line	1319
	pei	<L138+newx_1+2
	pei	<L138+newx_1
	xref	~~~ffix
	jsl	~~~ffix
	pla
	sta	<R0
	pla
	sta	<R0+2
	lda	<R0
	sta	<L138+x_1
;		px   = x*xscale + xoffset;
	.line	1320
	lda	<L138+x_1
	ldx	|~~xscale
	xref	~~~mul
	jsl	~~~mul
	sta	<R0
	clc
	lda	<R0
	adc	|~~xoffset
	sta	<L138+px_1
;		//py   = (350 - y*yscale + yoffset);
;		py   = (350 - y*yscale + yoffset);
	.line	1322
	lda	<L138+y_1
	ldx	|~~yscale
	xref	~~~mul
	jsl	~~~mul
	sta	<R0
	sec
	lda	#$15e
	sbc	<R0
	sta	<R1
	clc
	lda	<R1
	adc	|~~yoffset
	sta	<L138+py_1
;
;		//k_debug_integer("drawImage::px:", px );
;		//k_debug_integer("drawImage::py:", py );
;
;		if((px>=0) && (px<640) && (py>=0) && (py<480))
	.line	1327
;		{
	lda	<L138+px_1
	bpl	L156
	brl	L10158
L156:
	sec
	lda	<L138+px_1
	sbc	#<$280
	bvs	L157
	eor	#$8000
L157:
	bpl	L158
	brl	L10158
L158:
	lda	<L138+py_1
	bpl	L159
	brl	L10158
L159:
	sec
	lda	<L138+py_1
	sbc	#<$1e0
	bvs	L160
	eor	#$8000
L160:
	bpl	L161
	brl	L10158
L161:
	.line	1328
;			//k_debug_integer("drawImage::px:", px );
;			//k_debug_integer("drawImage::py:", py );
;			k_draw_pixel(px,py,color);
	.line	1331
	pei	<L137+color_0
	ldy	#$0
	lda	<L138+py_1
	bpl	L162
	dey
L162:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$0
	lda	<L138+px_1
	bpl	L163
	dey
L163:
	sta	<R1
	sty	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~k_draw_pixel
;		}
	.line	1332
;	}
L10158:
	.line	1333
L10155:
	inc	<L138+i_1
	sec
	lda	<L138+i_1
	sbc	#<$7530
	bvs	L164
	eor	#$8000
L164:
	bmi	L165
	brl	L10157
L165:
L10156:
;}
	.line	1334
L166:
	lda	<L137+2
	sta	<L137+2+2
	lda	<L137+1
	sta	<L137+1+2
	pld
	tsc
	clc
	adc	#L137+2
	tcs
	rtl
	.endblock	1334
L137	equ	36
L138	equ	17
	ends
	efunc
	.endfunc	1334,17,36
	.line	1334
	data
L136:
	db	$64,$72,$61,$77,$49,$6D,$61,$67,$65,$3A,$3A,$73,$65,$65,$64
	db	$3A,$00
	ends
;
;void drawMandelbrot(void)
;{
	.line	1336
	.line	1337
	DTOP
	xdef	~~drawMandelbrot
	func
	.function	1337
~~drawMandelbrot:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L168
	tcs
	phd
	tcd
	.block	1337
;
;	// fern
;	/*
;	a[0]=0    ;a[1]=.20 ;a[2]=-.15;a[3]=.85;
;	b[0]=0    ;b[1]=-.26;b[2]=.28 ;b[3]=.04;
;	c[0]=0    ;c[1]=.23 ;c[2]=.26 ;c[3]=-.04;
;	d[0]=1.6  ;d[1]=.22 ;d[2]=.24 ;d[3]=.85;
;	e[0]=0    ;e[1]=0   ;e[2]=0   ;e[3]=0;
;	f[0]=0    ;f[1]=1.60;f[2]=.44 ;f[3]=1.6;
;	p[0]=328  ;p[1]=2621;p[2]=4915;p[3]=32767;
;	*/
;
;	// triangle
;	a[0]=0.5    ;a[1]=0.5 ;a[2]=0.5;a[3]=0;
	.line	1351
	lda	#$0
	sta	|~~a
	lda	#$3f00
	sta	|~~a+2
	.line	1351
	lda	#$0
	sta	|~~a+4
	lda	#$3f00
	sta	|~~a+4+2
	.line	1351
	lda	#$0
	sta	|~~a+8
	lda	#$3f00
	sta	|~~a+8+2
	.line	1351
	lda	#$0
	sta	|~~a+12
	lda	#$0
	sta	|~~a+12+2
;	b[0]=0    ;b[1]=0;b[2]=0;b[3]=0;
	.line	1352
	lda	#$0
	sta	|~~b
	lda	#$0
	sta	|~~b+2
	.line	1352
	lda	#$0
	sta	|~~b+4
	lda	#$0
	sta	|~~b+4+2
	.line	1352
	lda	#$0
	sta	|~~b+8
	lda	#$0
	sta	|~~b+8+2
	.line	1352
	lda	#$0
	sta	|~~b+12
	lda	#$0
	sta	|~~b+12+2
;	c[0]=0    ;c[1]=0 ;c[2]=0 ;c[3]=0;
	.line	1353
	lda	#$0
	sta	|~~c
	lda	#$0
	sta	|~~c+2
	.line	1353
	lda	#$0
	sta	|~~c+4
	lda	#$0
	sta	|~~c+4+2
	.line	1353
	lda	#$0
	sta	|~~c+8
	lda	#$0
	sta	|~~c+8+2
	.line	1353
	lda	#$0
	sta	|~~c+12
	lda	#$0
	sta	|~~c+12+2
;	d[0]=0.5  ;d[1]=0.5 ;d[2]=0.5 ;d[3]=0;
	.line	1354
	lda	#$0
	sta	|~~d
	lda	#$3f00
	sta	|~~d+2
	.line	1354
	lda	#$0
	sta	|~~d+4
	lda	#$3f00
	sta	|~~d+4+2
	.line	1354
	lda	#$0
	sta	|~~d+8
	lda	#$3f00
	sta	|~~d+8+2
	.line	1354
	lda	#$0
	sta	|~~d+12
	lda	#$0
	sta	|~~d+12+2
;	e[0]=0    ;e[1]=1.0   ;e[2]=0.5   ;e[3]=0;
	.line	1355
	lda	#$0
	sta	|~~e
	lda	#$0
	sta	|~~e+2
	.line	1355
	lda	#$0
	sta	|~~e+4
	lda	#$3f80
	sta	|~~e+4+2
	.line	1355
	lda	#$0
	sta	|~~e+8
	lda	#$3f00
	sta	|~~e+8+2
	.line	1355
	lda	#$0
	sta	|~~e+12
	lda	#$0
	sta	|~~e+12+2
;	f[0]=0    ;f[1]=0;f[2]=0.5 ;f[3]=0;
	.line	1356
	lda	#$0
	sta	|~~f
	lda	#$0
	sta	|~~f+2
	.line	1356
	lda	#$0
	sta	|~~f+4
	lda	#$0
	sta	|~~f+4+2
	.line	1356
	lda	#$0
	sta	|~~f+8
	lda	#$3f00
	sta	|~~f+8+2
	.line	1356
	lda	#$0
	sta	|~~f+12
	lda	#$0
	sta	|~~f+12+2
;	p[0]=10813  ;p[1]=21626;p[2]=32767;p[3]=32767;
	.line	1357
	lda	#$2a3d
	sta	|~~p
	.line	1357
	lda	#$547a
	sta	|~~p+2
	.line	1357
	lda	#$7fff
	sta	|~~p+4
	.line	1357
	lda	#$7fff
	sta	|~~p+6
;
;
;	xscale  = 10;
	.line	1360
	lda	#$a
	sta	|~~xscale
;	yscale  = 10;
	.line	1361
	lda	#$a
	sta	|~~yscale
;	xoffset = 320;
	.line	1362
	lda	#$140
	sta	|~~xoffset
;	yoffset = 0;
	.line	1363
	stz	|~~yoffset
;
;	k_debug_integer("drawMandelbrot:", xoffset );
	.line	1365
	lda	|~~xoffset
	pha
	pea	#^L167
	pea	#<L167
	jsl	~~k_debug_integer
;
;	drawImage(15);
	.line	1367
	pea	#<$f
	jsl	~~drawImage
;
;}
	.line	1369
L171:
	pld
	tsc
	clc
	adc	#L168
	tcs
	rtl
	.endblock	1369
L168	equ	0
L169	equ	1
	ends
	efunc
	.endfunc	1369,1,0
	.line	1369
	data
L167:
	db	$64,$72,$61,$77,$4D,$61,$6E,$64,$65,$6C,$62,$72,$6F,$74,$3A
	db	$00
	ends
;
	.line	1369
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxos_desktop_proc.c",1336
	xref	~~k_init_desktop
	xref	~~k_send_window_message
	xref	~~k_getKeyboardChar
	xref	~~debug_clickable_node
	xref	~~_k_user_send_child_message
	xref	~~k_switch_window_page
	xref	~~listboxWindowProc
	xref	~~DefWindowProc
	xref	~~k_user_DrawWindowTextToPointWithFont
	xref	~~k_user_getFocusWindow
	xref	~~k_user_CreateVerticalScrollBar
	xref	~~k_user_SetMenuState
	xref	~~k_user_AddMenuItem
	xref	~~k_user_CreateMenuResource
	xref	~~k_user_CreateMenu
	xref	~~k_user_setMousePointer
	xref	~~k_user_getFontClass
	xref	~~k_user_CreateWindow
	xref	~~k_user_CreateWindowClass
	xref	~~k_user_getSystemMetric
	xref	~~k_user_findWindow
	xref	~~k_user_getDesktopWindow
	xref	~~k_getHandleFromWindow
	xref	~~k_getWindowFromHandle
	xref	~~k_getWindowHitList
	xref	~~k_gui_init_mousepointer
	xref	~~k_font_getFontHeight
	xref	~~k_create_ui_window_class
	xref	~~k_add_window_hit_node
	xref	~~k_vdma_fill_rect_ex
	xref	~~k_vdma_fill_rect
	xref	~~k_put_winicon_point
	xref	~~k_draw_text_point
	xref	~~k_draw_rect_slow
	xref	~~k_draw_pixel
	xref	~~k_getUIMenuColor
	xref	~~k_getUIBackgroundColor
	xref	~~k_mem_deallocate_heap
	xref	~~k_mem_allocate_heap
	xref	~~k_exec_enable_process_timer
	xref	~~k_exec_get_current_process
	xref	~~ObjectClicked
	xref	~~k_get_rtc_second
	xref	~~k_debug_nodelist_with_data
	xref	~~k_debug_rect
	xref	~~k_debug_strings
	xref	~~k_debug_message
	xref	~~k_debug_long
	xref	~~k_debug_integer
	xref	~~k_debug_pointer
	xref	~~k_debug_char
	xref	~~k_debug_string
	xref	~~k_to_uppercase
	xref	~~k_string_copy_string
	xref	~~k_longtodec
	xref	~~k_fxstring_removechar
	xref	~~k_fxstring_addchar
	xref	~~k_fxstring_new
	xref	~~strlen
	xref	~~strcmp
	xref	~~memset
	xref	~~srand
	xref	~~rand
	udata
~~f
	ds	16
	ends
	udata
~~e
	ds	16
	ends
	udata
~~d
	ds	16
	ends
	udata
~~c
	ds	16
	ends
	udata
~~b
	ds	16
	ends
	udata
~~a
	ds	16
	ends
	udata
~~p
	ds	8
	ends
	udata
~~yoffset
	ds	2
	ends
	udata
~~xoffset
	ds	2
	ends
	udata
~~yscale
	ds	2
	ends
	udata
~~xscale
	ds	2
	ends
	.sym	~~k_init_desktop,~~k_init_desktop,69,18,0
	.sym	~~drawMandelbrot,~~drawMandelbrot,65,2,0
	.sym	~~drawImage,~~drawImage,65,2,0
	.sym	~~f,~~f,104,3,0,4
	.sym	~~e,~~e,104,3,0,4
	.sym	~~d,~~d,104,3,0,4
	.sym	~~c,~~c,104,3,0,4
	.sym	~~b,~~b,104,3,0,4
	.sym	~~a,~~a,104,3,0,4
	.sym	~~p,~~p,101,3,0,4
	.sym	~~yoffset,~~yoffset,5,3,16
	.sym	~~xoffset,~~xoffset,5,3,16
	.sym	~~yscale,~~yscale,5,3,16
	.sym	~~xscale,~~xscale,5,3,16
	.sym	~~textData,~~textData,142,2,32
	.sym	~~tempY,~~tempY,5,2,16
	.sym	~~tempX,~~tempX,5,2,16
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
	.sym	~~textboxWindowProc,~~textboxWindowProc,78,2,0
	.sym	~~preferencesWindowProc,~~preferencesWindowProc,78,2,0
	.sym	~~testWindowProc,~~testWindowProc,78,2,0
	.sym	~~DesktopWindowProc,~~DesktopWindowProc,78,2,0
	.sym	~~DesktopEnvironmentProc,~~DesktopEnvironmentProc,65,2,0
	.sym	~~k_send_window_message,~~k_send_window_message,78,18,0
	.sym	~~k_getKeyboardChar,~~k_getKeyboardChar,78,18,0
	.sym	PMOUSE_MSG_STATE,0,138,14,32,63
	.sym	MOUSE_MSG_STATE,0,10,14,184,63
	.sym	PFXEVENTPROCESS,0,138,14,32,62
	.sym	FXEVENTPROCESS,0,10,14,64,62
	.sym	FXEventProc,0,641,14,32
	.sym	PMOUSEMSGDATA,0,138,14,32,61
	.sym	MOUSEMSGDATA,0,10,14,64,61
	.sym	MSGIRQ,0,5,14,16
	.sym	MAINLOOPARGS,0,10,14,16,60
	.sym	~~debug_clickable_node,~~debug_clickable_node,65,18,0
	.sym	~~_k_user_send_child_message,~~_k_user_send_child_message,78,18,0
	.sym	PEACHCHILD_MSG,0,138,14,32,59
	.sym	EACHCHILD_MSG,0,10,14,64,59
	.sym	~~k_switch_window_page,~~k_switch_window_page,65,18,0
	.sym	~~listboxWindowProc,~~listboxWindowProc,78,18,0
	.sym	~~DefWindowProc,~~DefWindowProc,78,18,0
	.sym	~~k_user_DrawWindowTextToPointWithFont,~~k_user_DrawWindowTextToPointWithFont,80,18,0
	.sym	~~k_user_getFocusWindow,~~k_user_getFocusWindow,1089,18,32
	.sym	~~k_user_CreateVerticalScrollBar,~~k_user_CreateVerticalScrollBar,1098,18,32,27
	.sym	~~k_user_SetMenuState,~~k_user_SetMenuState,78,18,0
	.sym	~~k_user_AddMenuItem,~~k_user_AddMenuItem,1089,18,32
	.sym	~~k_user_CreateMenuResource,~~k_user_CreateMenuResource,1089,18,32
	.sym	~~k_user_CreateMenu,~~k_user_CreateMenu,1098,18,32,27
	.sym	~~k_user_setMousePointer,~~k_user_setMousePointer,1089,18,32
	.sym	~~k_user_getFontClass,~~k_user_getFontClass,1089,18,32
	.sym	~~k_user_CreateWindow,~~k_user_CreateWindow,1098,18,32,27
	.sym	~~k_user_CreateWindowClass,~~k_user_CreateWindowClass,1098,18,32,23
	.sym	~~k_user_getSystemMetric,~~k_user_getSystemMetric,69,18,0
	.sym	~~k_user_findWindow,~~k_user_findWindow,1089,18,32
	.sym	~~k_user_getDesktopWindow,~~k_user_getDesktopWindow,1089,18,32
	.sym	~~k_getHandleFromWindow,~~k_getHandleFromWindow,1089,18,32
	.sym	~~k_getWindowFromHandle,~~k_getWindowFromHandle,1098,18,32,27
	.sym	~~k_getWindowHitList,~~k_getWindowHitList,1098,18,32,2
	.sym	~~k_gui_init_mousepointer,~~k_gui_init_mousepointer,65,18,0
	.sym	~~k_font_getFontHeight,~~k_font_getFontHeight,80,18,0
	.sym	~~k_create_ui_window_class,~~k_create_ui_window_class,1098,18,32,27
	.sym	~~k_add_window_hit_node,~~k_add_window_hit_node,65,18,0
	.sym	~~k_vdma_fill_rect_ex,~~k_vdma_fill_rect_ex,65,18,0
	.sym	~~k_vdma_fill_rect,~~k_vdma_fill_rect,65,18,0
	.sym	~~k_put_winicon_point,~~k_put_winicon_point,69,18,0
	.sym	~~k_draw_text_point,~~k_draw_text_point,69,18,0
	.sym	~~k_draw_rect_slow,~~k_draw_rect_slow,65,18,0
	.sym	~~k_draw_pixel,~~k_draw_pixel,65,18,0
	.sym	~~k_getUIMenuColor,~~k_getUIMenuColor,69,18,0
	.sym	~~k_getUIBackgroundColor,~~k_getUIBackgroundColor,69,18,0
	.sym	PCUR_PALETTE_MAP,0,138,14,32,58
	.sym	CUR_PALETTE_MAP,0,10,14,400,58
	.sym	PCLICKDETECTED,0,138,14,32,57
	.sym	CLICKDETECTED,0,10,14,64,57
	.sym	OBJECTCLICKED,0,641,14,32
	.sym	~~k_mem_deallocate_heap,~~k_mem_deallocate_heap,65,18,0
	.sym	~~k_mem_allocate_heap,~~k_mem_allocate_heap,1089,18,32
	.sym	MemoryCallback,0,641,14,32
	.sym	PFXMEMORYMAP,0,138,14,32,56
	.sym	FXMEMORYMAP,0,10,14,2072,56
	.sym	UMM_HEAP_INFO,0,10,14,256,55
	.sym	~~k_exec_enable_process_timer,~~k_exec_enable_process_timer,82,18,0
	.sym	~~k_exec_get_current_process,~~k_exec_get_current_process,1098,18,32,17
	.sym	~~ObjectClicked,~~ObjectClicked,65,18,0
	.sym	PCOMMANDARGS,0,138,14,32,54
	.sym	COMMANDARGS,0,10,14,64,54
	.sym	PTOKENIZESTATE,0,133,14,32
	.sym	TOKENIZESTATE,0,5,14,16
	.sym	PTOKEN,0,138,14,32,53
	.sym	TOKEN,0,10,14,64,53
	.sym	PTOKENTYPE,0,133,14,32
	.sym	TOKENTYPE,0,5,14,16
	.sym	FXCommandHandler,0,656,14,32
	.sym	PCONSOLECTX,0,138,14,32,52
	.sym	CONSOLECTX,0,10,14,1144,52
	.sym	PSPINNERCTX,0,138,14,32,51
	.sym	SPINNERCTX,0,10,14,48,51
	.sym	DEVICEDRIVER_COMMAND,0,656,14,32
	.sym	DEVICEDRIVER_UNLOAD,0,654,14,32
	.sym	DEVICEDRIVER_WRITE,0,656,14,32
	.sym	DEVICEDRIVER_READ,0,656,14,32
	.sym	DEVICEDRIVER_LOAD,0,654,14,32
	.sym	PFX_BLOCK_DEVICE_DRIVER,0,138,14,32,50
	.sym	FX_BLOCK_DEVICE_DRIVER,0,10,14,1448,50
	.sym	PFX_DEVICE_DRIVER,0,138,14,32,49
	.sym	FX_DEVICE_DRIVER,0,10,14,1416,49
	.sym	~~k_get_rtc_second,~~k_get_rtc_second,80,18,0
	.sym	~~k_debug_nodelist_with_data,~~k_debug_nodelist_with_data,65,18,0
	.sym	~~k_debug_rect,~~k_debug_rect,65,18,0
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
	.sym	FOREACHNODEUNTIL,0,654,14,32
	.sym	FOREACHNODE,0,641,14,32
	.sym	~~k_to_uppercase,~~k_to_uppercase,1102,18,32
	.sym	~~k_string_copy_string,~~k_string_copy_string,1102,18,32
	.sym	~~k_longtodec,~~k_longtodec,1102,18,32
	.sym	~~k_fxstring_removechar,~~k_fxstring_removechar,78,18,0
	.sym	~~k_fxstring_addchar,~~k_fxstring_addchar,1102,18,32
	.sym	~~k_fxstring_new,~~k_fxstring_new,1098,18,32,45
	.sym	PFXSTRING,0,138,14,32,45
	.sym	FXSTRING,0,10,14,64,45
	.sym	~~strlen,~~strlen,80,18,0
	.sym	~~strcmp,~~strcmp,69,18,0
	.sym	~~memset,~~memset,1089,18,32
	.sym	Boolean_T,0,5,14,16
	.sym	~~srand,~~srand,65,18,0
	.sym	~~rand,~~rand,69,18,0
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

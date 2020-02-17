;:ts=8
R0	equ	1
R1	equ	5
R2	equ	9
R3	equ	13
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxmain.c",0
;#include "fxos.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxos.h",0
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxos.h",4
	.file	"G:\devtools\WDCTools\wdc\Tools\include\string.h",0
	.line	134
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxos.h",5
	.file	"G:\devtools\WDCTools\wdc\Tools\include\ctype.h",0
	.line	103
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxos.h",6
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxtypes.h",0
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
	.stag	_fx_process,768,20
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
	.stag	_k_WindowStruct,1328,27
	.member	cbSize,0,16,8,16
	.member	style,16,18,8,32
	.member	win_id,48,5,8,16
	.member	win_x,64,5,8,16
	.member	win_y,80,5,8,16
	.member	win_width,96,5,8,16
	.member	win_height,112,5,8,16
	.member	wndRect,128,10,8,64,25
	.member	clientRect,192,10,8,64,25
	.member	clickable,256,129,8,32
	.member	win_title,288,110,8,0,32
	.member	Reserved0,544,16,8,16
	.member	win_class,560,110,8,0,16
	.member	win_class_name,688,110,8,0,32
	.member	Reserved2,944,16,8,16
	.member	procid,960,18,8,32
	.member	pWndClass,992,138,8,32,26
	.member	pParentWindow,1024,129,8,32
	.member	hMenu,1056,129,8,32
	.member	pChildWindows,1088,138,8,32,6
	.member	pChildHitList,1120,138,8,32,6
	.member	isVisible,1152,14,8,8
	.member	windowData,1160,129,8,32
	.member	clientData,1192,1121,8,32,4
	.member	isClosed,1320,14,8,8
	.eos
	.stag	_k_WindowStructEx,1296,28
	.member	cbSize,0,16,8,16
	.member	style,16,18,8,32
	.member	win_id,48,5,8,16
	.member	win_x,64,5,8,16
	.member	win_y,80,5,8,16
	.member	win_width,96,5,8,16
	.member	win_height,112,5,8,16
	.member	wndRect,128,10,8,64,25
	.member	clientRect,192,10,8,64,25
	.member	clickable,256,129,8,32
	.member	win_title,288,110,8,0,32
	.member	Reserved0,544,16,8,16
	.member	win_class,560,110,8,0,16
	.member	Reserved2,688,16,8,16
	.member	procid,704,18,8,32
	.member	pWndClass,736,138,8,32,26
	.member	pParentWindow,768,129,8,32
	.member	hMenu,800,129,8,32
	.member	pChildWindows,832,138,8,32,6
	.member	pChildHitList,864,138,8,32,6
	.member	isVisible,896,14,8,8
	.member	windowData,904,129,8,32
	.member	clientData,936,1121,8,32,4
	.member	isClosed,1064,14,8,8
	.member	hWnd,1072,129,8,32
	.member	localRect,1104,10,8,64,25
	.member	globalRect,1168,10,8,64,25
	.member	clientOffsetRect,1232,10,8,64,25
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
	.stag	_ClickableRect,88,31
	.member	area,0,10,8,64,25
	.member	z,64,5,8,16
	.member	enabled,80,14,8,8
	.eos
	.stag	_MenuStruct,248,32
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
	.stag	fake33_,112,33
	.member	menuId,0,16,8,16
	.member	caption,16,142,8,32
	.member	rect,48,10,8,64,25
	.eos
	.stag	fake34_,3376,34
	.member	pParent,0,138,8,32,27
	.member	rect,32,10,8,64,25
	.member	captions,96,1134,8,32,24
	.member	ids,864,112,8,0,24
	.member	clickable,1248,106,8,0,31,24
	.member	selected,3360,16,8,16
	.eos
	.stag	_fx_button_t,80,35
	.member	pCaption,0,142,8,32
	.member	data,32,129,8,32
	.member	captionPixelWidth,64,16,8,16
	.eos
	.stag	_fx_scrollbar_t,192,36
	.member	min,0,16,8,16
	.member	max,16,16,8,16
	.member	increment,32,16,8,16
	.member	stopsize,48,16,8,16
	.member	location,64,5,8,16
	.member	state,80,5,8,16
	.member	rectThumb,96,10,8,64,25
	.member	data,160,129,8,32
	.eos
	.stag	_fx_listbox_t,240,37
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
	.stag	_fx_textbox_t,144,38
	.member	pos,0,5,8,16
	.member	selected,16,16,8,16
	.member	offsetX,32,5,8,16
	.member	offsetY,48,5,8,16
	.member	isShifted,64,14,8,8
	.member	cursorState,72,14,8,8
	.member	fontSet,80,142,8,32
	.member	data,112,129,8,32
	.eos
	.stag	_fx_menuAnchor_t,144,39
	.member	pCaption,0,142,8,32
	.member	renderLayoutX,32,16,8,16
	.member	renderLayoutY,48,16,8,16
	.member	captionPixelWidth,64,16,8,16
	.member	data,80,129,8,32
	.member	droppedWindow,112,138,8,32,27
	.eos
	.stag	_SubMenuStruct,64,40
	.member	caption,0,142,8,32
	.member	action,32,641,8,32
	.eos
	.stag	_SubMenuListStruct,40,41
	.member	cMenus,0,14,8,8
	.member	psubmenus,8,9354,8,32,40
	.eos
	.stag	_fx_ComBuffer,2080,42
	.member	cbSize,0,16,8,16
	.member	cbBuffer,16,16,8,16
	.member	buffer,32,110,8,0,256
	.eos
	.line	669
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxos.h",8
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxstringtable.h",0
	.line	63
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxos.h",9
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxc256fmx.h",0
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxtypes.h",0
	.line	669
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxc256fmx.h",5
	.line	1286
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxos.h",12
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxkernel.h",0
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxos.h",0
	.line	22
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxkernel.h",5
	.stag	_fx_zero_page,352,43
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
	.eos
	.stag	_fx_environment,96,44
	.member	variables,0,142,8,32
	.member	reserved1,32,5,8,16
	.member	reserved2,48,5,8,16
	.member	reserved3,64,5,8,16
	.member	reserved4,80,5,8,16
	.eos
	.line	177
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxos.h",17
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxconsole.h",0
	.file	"G:\devtools\WDCTools\wdc\Tools\include\string.h",0
	.line	134
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxconsole.h",5
	.file	"G:\devtools\WDCTools\wdc\Tools\include\stdlib.h",0
	.line	205
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxconsole.h",6
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxtypes.h",0
	.line	669
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxconsole.h",7
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxc256fmx.h",0
	.line	1286
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxconsole.h",10
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxstring.h",0
	.file	"G:\devtools\WDCTools\wdc\Tools\include\stdlib.h",0
	.line	205
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxstring.h",5
	.file	"G:\devtools\WDCTools\wdc\Tools\include\string.h",0
	.line	134
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxstring.h",6
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxtypes.h",0
	.line	669
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxstring.h",7
	.stag	_fx_string,64,45
	.member	size,0,16,8,16
	.member	pos,16,5,8,16
	.member	buffer,32,142,8,32
	.eos
	.line	69
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxconsole.h",15
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxstringtable.h",0
	.line	63
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxconsole.h",16
	.stag	_fx_spinner_ctx,48,46
	.member	index,0,5,8,16
	.member	spinner,16,142,8,32
	.eos
	.stag	_fx_console_ctx,1144,47
	.member	lineBufferIndex,0,5,8,16
	.member	lineBuffer,16,110,8,0,128
	.member	isShifted,1040,14,8,8
	.member	userData,1048,129,8,32
	.member	screenBuffer,1080,129,8,32
	.member	Reserved1,1112,129,8,32
	.eos
	.stag	_token,64,48
	.member	type,0,5,8,16
	.member	depth,16,16,8,16
	.member	text,32,142,8,32
	.eos
	.stag	_command_args,64,49
	.member	proc,0,656,8,32
	.member	tokens,32,138,8,32,5
	.eos
	.line	158
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxos.h",18
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxstring.h",0
	.line	69
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxos.h",19
	.line	22
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxmain.c",1
;#include "fxos_build_parameters.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxos_build_parameters.h",0
	.line	13
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxmain.c",2
;
;LPVOID heap_start = (LPVOID)FXOS_BUILD_NEAR_HEAP_ADDR;
	data
	xdef	~~heap_start
~~heap_start:
	dl	$60000
	ends
;LPVOID heap_end   = (LPVOID)FXOS_BUILD_NEAR_HEAP_TOP;
	data
	xdef	~~heap_end
~~heap_end:
	dl	$6FFFF
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
;void main(void)
;{
	.line	13
	.line	14
	code
	xdef	~~main
	func
	.function	14
~~main:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L2
	tcs
	phd
	tcd
	.block	14
;	char rmbuffer[16];
;	int pos = 0;
;	ULONG availableMem = 0;
;	KRESULT kerr = KERR_SUCCESS;
;
;	k_initializeZeroPage();
rmbuffer_1	set	0
pos_1	set	16
availableMem_1	set	18
kerr_1	set	22
	.sym	rmbuffer,0,110,1,0,16
	.sym	pos,16,5,1,16
	.sym	availableMem,18,18,1,32
	.sym	kerr,22,18,1,32
	stz	<L3+pos_1
	stz	<L3+availableMem_1
	stz	<L3+availableMem_1+2
	stz	<L3+kerr_1
	stz	<L3+kerr_1+2
	.line	20
	jsl	~~k_initializeZeroPage
;
;	k_init_keyboard();
	.line	22
	jsl	~~k_init_keyboard
;	k_uart_enableirq_ports();
	.line	23
	jsl	~~k_uart_enableirq_ports
;
;	k_debug_crlf();
	.line	25
	jsl	~~k_debug_crlf
;	k_debug_string("**********************************\r\n");
	.line	26
	pea	#^L1
	pea	#<L1
	jsl	~~k_debug_string
;	k_debug_string("******  Welcome to FX/OS   *******\r\n");
	.line	27
	pea	#^L1+37
	pea	#<L1+37
	jsl	~~k_debug_string
;	k_debug_string("******       Booting       *******\r\n");
	.line	28
	pea	#^L1+74
	pea	#<L1+74
	jsl	~~k_debug_string
;	k_debug_string("**********************************\r\n");
	.line	29
	pea	#^L1+111
	pea	#<L1+111
	jsl	~~k_debug_string
;
;	k_debug_string_com1("DBG:MSG:%OSBOOTING COM1%");
	.line	31
	pea	#^L1+148
	pea	#<L1+148
	jsl	~~k_debug_string_com1
;	k_debug_string_com2("DBG:MSG:%OSBOOTING COM2%");
	.line	32
	pea	#^L1+173
	pea	#<L1+173
	jsl	~~k_debug_string_com2
;
;	k_initialize_text_fonts(0);
	.line	34
	pea	#<$0
	jsl	~~k_initialize_text_fonts
;	k_initialize_text();
	.line	35
	jsl	~~k_initialize_text
;
;	k_enable_text_mode();
	.line	37
	jsl	~~k_enable_text_mode
;	k_enable_text_cursor(1);
	.line	38
	pea	#<$1
	jsl	~~k_enable_text_cursor
;
;	k_debug_string("k_clear_screen\r\n");
	.line	40
	pea	#^L1+198
	pea	#<L1+198
	jsl	~~k_debug_string
;	k_clear_screen(0);
	.line	41
	pea	#<$0
	jsl	~~k_clear_screen
;
;	k_text_mode_dialog(0,0,71,15,NULL);
	.line	43
	pea	#^$0
	pea	#<$0
	pea	#<$f
	pea	#<$47
	pea	#<$0
	pea	#<$0
	jsl	~~k_text_mode_dialog
;
;	line = k_report_configuration(2,line);
	.line	45
	lda	|~~line
	pha
	pea	#<$2
	jsl	~~k_report_configuration
	sta	|~~line
;
;	k_debug_integer("sizeof(unsigned short int):",sizeof(unsigned short int));
	.line	47
	pea	#<$2
	pea	#^L1+215
	pea	#<L1+215
	jsl	~~k_debug_integer
;	k_debug_integer("sizeof(size_t):",sizeof(size_t));
	.line	48
	pea	#<$2
	pea	#^L1+243
	pea	#<L1+243
	jsl	~~k_debug_integer
;	k_debug_integer("sizeof(unsigned short int):",sizeof(unsigned short int));
	.line	49
	pea	#<$2
	pea	#^L1+259
	pea	#<L1+259
	jsl	~~k_debug_integer
;	k_debug_integer("sizeof(unsigned long):",sizeof(unsigned long));
	.line	50
	pea	#<$4
	pea	#^L1+287
	pea	#<L1+287
	jsl	~~k_debug_integer
;
;	k_debug_integer("k_get_cols_visible:",k_get_cols_visible());
	.line	52
	jsl	~~k_get_cols_visible
	pha
	pea	#^L1+310
	pea	#<L1+310
	jsl	~~k_debug_integer
;	k_debug_integer("k_get_cols_per_line:",k_get_cols_per_line());
	.line	53
	jsl	~~k_get_cols_per_line
	pha
	pea	#^L1+330
	pea	#<L1+330
	jsl	~~k_debug_integer
;	k_debug_integer("k_get_lines_visible",k_get_lines_visible());
	.line	54
	jsl	~~k_get_lines_visible
	pha
	pea	#^L1+351
	pea	#<L1+351
	jsl	~~k_debug_integer
;	k_debug_integer("k_get_lines_max:",k_get_lines_max());
	.line	55
	jsl	~~k_get_lines_max
	pha
	pea	#^L1+371
	pea	#<L1+371
	jsl	~~k_debug_integer
;
;
;
;
;	while(1)
	.line	60
L10001:
;	{
	.line	61
;		asm sei;
	.line	62
	asmstart
	sei
	asmend
;		asm NOP;
	.line	63
	asmstart
	NOP
	asmend
;		asm cli;
	.line	64
	asmstart
	cli
	asmend
;	};
	.line	65
	brl	L10001
	.line	65
;}
	.line	66
	.endblock	66
L2	equ	26
L3	equ	1
	ends
	efunc
	.endfunc	66,1,26
	.line	66
	data
L1:
	db	$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A
	db	$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A
	db	$2A,$2A,$2A,$2A,$0D,$0A,$00,$2A,$2A,$2A,$2A,$2A,$2A,$20,$20
	db	$57,$65,$6C,$63,$6F,$6D,$65,$20,$74,$6F,$20,$46,$58,$2F,$4F
	db	$53,$20,$20,$20,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$0D,$0A,$00,$2A
	db	$2A,$2A,$2A,$2A,$2A,$20,$20,$20,$20,$20,$20,$20,$42,$6F,$6F
	db	$74,$69,$6E,$67,$20,$20,$20,$20,$20,$20,$20,$2A,$2A,$2A,$2A
	db	$2A,$2A,$2A,$0D,$0A,$00,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A
	db	$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A
	db	$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$0D,$0A,$00,$44,$42
	db	$47,$3A,$4D,$53,$47,$3A,$25,$4F,$53,$42,$4F,$4F,$54,$49,$4E
	db	$47,$20,$43,$4F,$4D,$31,$25,$00,$44,$42,$47,$3A,$4D,$53,$47
	db	$3A,$25,$4F,$53,$42,$4F,$4F,$54,$49,$4E,$47,$20,$43,$4F,$4D
	db	$32,$25,$00,$6B,$5F,$63,$6C,$65,$61,$72,$5F,$73,$63,$72,$65
	db	$65,$6E,$0D,$0A,$00,$73,$69,$7A,$65,$6F,$66,$28,$75,$6E,$73
	db	$69,$67,$6E,$65,$64,$20,$73,$68,$6F,$72,$74,$20,$69,$6E,$74
	db	$29,$3A,$00,$73,$69,$7A,$65,$6F,$66,$28,$73,$69,$7A,$65,$5F
	db	$74,$29,$3A,$00,$73,$69,$7A,$65,$6F,$66,$28,$75,$6E,$73,$69
	db	$67,$6E,$65,$64,$20,$73,$68,$6F,$72,$74,$20,$69,$6E,$74,$29
	db	$3A,$00,$73,$69,$7A,$65,$6F,$66,$28,$75,$6E,$73,$69,$67,$6E
	db	$65,$64,$20,$6C,$6F,$6E,$67,$29,$3A,$00,$6B,$5F,$67,$65,$74
	db	$5F,$63,$6F,$6C,$73,$5F,$76,$69,$73,$69,$62,$6C,$65,$3A,$00
	db	$6B,$5F,$67,$65,$74,$5F,$63,$6F,$6C,$73,$5F,$70,$65,$72,$5F
	db	$6C,$69,$6E,$65,$3A,$00,$6B,$5F,$67,$65,$74,$5F,$6C,$69,$6E
	db	$65,$73,$5F,$76,$69,$73,$69,$62,$6C,$65,$00,$6B,$5F,$67,$65
	db	$74,$5F,$6C,$69,$6E,$65,$73,$5F,$6D,$61,$78,$3A,$00
	ends
;
	.line	66
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxmain.c",13
	xref	~~k_uart_enableirq_ports
	xref	~~k_init_keyboard
	xref	~~k_text_mode_dialog
	xref	~~k_clear_screen
	xref	~~k_enable_text_cursor
	xref	~~k_get_lines_max
	xref	~~k_get_lines_visible
	xref	~~k_get_cols_per_line
	xref	~~k_get_cols_visible
	xref	~~k_initialize_text_fonts
	xref	~~k_enable_text_mode
	xref	~~k_initialize_text
	xref	~~k_debug_crlf
	xref	~~k_debug_integer
	xref	~~k_debug_string
	xref	~~k_debug_string_com2
	xref	~~k_debug_string_com1
	xref	~~k_report_configuration
	xref	~~k_initializeZeroPage
	.sym	~~k_uart_enableirq_ports,~~k_uart_enableirq_ports,69,18,0
	.sym	~~k_init_keyboard,~~k_init_keyboard,69,18,0
	.sym	~~main,~~main,65,2,0
	.sym	~~THIS_MODULE,~~THIS_MODULE,18,3,32
	.sym	~~mainspinner,~~mainspinner,110,3,0,4
	.sym	~~msp,~~msp,5,3,16
	.sym	~~line,~~line,5,2,16
	.sym	~~heap_end,~~heap_end,129,2,32
	.sym	~~heap_start,~~heap_start,129,2,32
	.sym	~~k_text_mode_dialog,~~k_text_mode_dialog,65,18,0
	.sym	~~k_clear_screen,~~k_clear_screen,65,18,0
	.sym	~~k_enable_text_cursor,~~k_enable_text_cursor,65,18,0
	.sym	~~k_get_lines_max,~~k_get_lines_max,69,18,0
	.sym	~~k_get_lines_visible,~~k_get_lines_visible,69,18,0
	.sym	~~k_get_cols_per_line,~~k_get_cols_per_line,69,18,0
	.sym	~~k_get_cols_visible,~~k_get_cols_visible,69,18,0
	.sym	~~k_initialize_text_fonts,~~k_initialize_text_fonts,69,18,0
	.sym	~~k_enable_text_mode,~~k_enable_text_mode,65,18,0
	.sym	~~k_initialize_text,~~k_initialize_text,65,18,0
	.sym	PCOMMANDARGS,0,138,14,32,49
	.sym	COMMANDARGS,0,10,14,64,49
	.sym	PTOKENIZESTATE,0,133,14,32
	.sym	TOKENIZESTATE,0,5,14,16
	.sym	PTOKEN,0,138,14,32,48
	.sym	TOKEN,0,10,14,64,48
	.sym	PTOKENTYPE,0,133,14,32
	.sym	TOKENTYPE,0,5,14,16
	.sym	FXCommandHandler,0,656,14,32
	.sym	PCONSOLECTX,0,138,14,32,47
	.sym	CONSOLECTX,0,10,14,1144,47
	.sym	PSPINNERCTX,0,138,14,32,46
	.sym	SPINNERCTX,0,10,14,48,46
	.sym	PFXSTRING,0,138,14,32,45
	.sym	FXSTRING,0,10,14,64,45
	.sym	~~k_debug_crlf,~~k_debug_crlf,65,18,0
	.sym	~~k_debug_integer,~~k_debug_integer,65,18,0
	.sym	~~k_debug_string,~~k_debug_string,65,18,0
	.sym	~~k_debug_string_com2,~~k_debug_string_com2,65,18,0
	.sym	~~k_debug_string_com1,~~k_debug_string_com1,65,18,0
	.sym	~~k_report_configuration,~~k_report_configuration,69,18,0
	.sym	~~k_initializeZeroPage,~~k_initializeZeroPage,65,18,0
	.sym	PFXENVIRONMENT,0,138,14,32,44
	.sym	FXENVIRONMENT,0,10,14,96,44
	.sym	PFXZERPOPAGE,0,138,14,32,43
	.sym	FXZERPOPAGE,0,10,14,352,43
	.sym	PFXCOMBUFFER,0,138,14,32,42
	.sym	FXCOMBUFFER,0,10,14,2080,42
	.sym	PSUBMENULIST,0,138,14,32,41
	.sym	SUBMENULIST,0,10,14,40,41
	.sym	HSUBMENU,0,7,14,32
	.sym	PSUBMENU,0,138,14,32,40
	.sym	SUBMENU,0,10,14,64,40
	.sym	MenuAction,0,641,14,32
	.sym	PMENUANCHOR,0,138,14,32,39
	.sym	MENUANCHOR,0,10,14,144,39
	.sym	PTEXTBOX,0,138,14,32,38
	.sym	TEXTBOX,0,10,14,144,38
	.sym	PLISTBOX,0,138,14,32,37
	.sym	LISTBOX,0,10,14,240,37
	.sym	PSCROLLBAR,0,138,14,32,36
	.sym	SCROLLBAR,0,10,14,192,36
	.sym	PBUTTON,0,138,14,32,35
	.sym	BUTTON,0,10,14,80,35
	.sym	PMENUDROPDOWNDATA,0,138,14,32,34
	.sym	MENUDROPDOWNDATA,0,10,14,3376,34
	.sym	PMENUTAG,0,138,14,32,33
	.sym	MENUTAG,0,10,14,112,33
	.sym	PMENU,0,138,14,32,32
	.sym	MENU,0,10,14,248,32
	.sym	HMENURESOURCE,0,129,14,32
	.sym	HCLICKABLE,0,7,14,32
	.sym	PCLICKABLE,0,138,14,32,31
	.sym	CLICKABLE,0,10,14,88,31
	.sym	HTEXTBOX,0,7,14,32
	.sym	PTEXTBOXX,0,138,14,32,30
	.sym	TEXTBOXX,0,10,14,112,30
	.sym	FONTMETRIC,0,10,14,32,29
	.sym	TITLE,0,142,14,32
	.sym	PHANDLE,0,1153,14,32
	.sym	HANDLE,0,129,14,32
	.sym	PWINDOWEX,0,138,14,32,28
	.sym	WINDOWEX,0,10,14,1296,28
	.sym	WindowEx,0,10,14,1296,28
	.sym	PWINDOW,0,138,14,32,27
	.sym	WINDOW,0,10,14,1328,27
	.sym	Window,0,10,14,1328,27
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
	.sym	FXPROCESS,0,10,14,768,20
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
	.sym	UINT,0,16,14,16
	.sym	INT,0,5,14,16
	.sym	WORD,0,5,14,16
	.sym	UCHAR,0,14,14,8
	.sym	LPWCSTR,0,142,14,32
	.sym	LPCSTR,0,142,14,32
	.sym	LPSTR,0,142,14,32
	.sym	LPCHAR,0,142,14,32
	.sym	CHAR,0,14,14,8
	.sym	BYTE,0,14,14,8
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

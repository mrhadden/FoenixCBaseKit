;:ts=8
R0	equ	1
R1	equ	5
R2	equ	9
R3	equ	13
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxconsole.c",0
;
;#include "fxconsole.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxconsole.h",0
	.file	"G:\devtools\WDCTools\wdc\Tools\include\string.h",0
	.line	134
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxconsole.h",5
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxconsole.h",6
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxconsole.h",7
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxc256fmx.h",0
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxtypes.h",0
	.line	669
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxc256fmx.h",5
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
	.stag	_fx_string,64,43
	.member	size,0,16,8,16
	.member	pos,16,5,8,16
	.member	buffer,32,142,8,32
	.eos
	.line	69
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxconsole.h",15
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxstringtable.h",0
	.line	63
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxconsole.h",16
	.stag	_fx_spinner_ctx,48,44
	.member	index,0,5,8,16
	.member	spinner,16,142,8,32
	.eos
	.stag	_fx_console_ctx,1144,45
	.member	lineBufferIndex,0,5,8,16
	.member	lineBuffer,16,110,8,0,128
	.member	isShifted,1040,14,8,8
	.member	userData,1048,129,8,32
	.member	screenBuffer,1080,129,8,32
	.member	Reserved1,1112,129,8,32
	.eos
	.stag	_token,64,46
	.member	type,0,5,8,16
	.member	depth,16,16,8,16
	.member	text,32,142,8,32
	.eos
	.stag	_command_args,64,47
	.member	proc,0,656,8,32
	.member	tokens,32,138,8,32,5
	.eos
	.line	158
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxconsole.c",2
;
;
;static int 	_k_window_index = 0;
	data
~~_k_window_index:
	dw	$0
	ends
;static Window _k_window_list[10];
;
;static SPINNERCTX consolespinctx;
;static char consolespinner[] = {'|','/','-','\\'};
	data
~~consolespinner:
	db	$7C,$2F,$2D,$5C
	ends
;
;/*
;// NOT IN BASEKIT
;static LPCHAR console_commands[] = {"cls","vol","dir","tsd","desktop","fcolor","bcolor","init","newdir","tasks","front","back","chdir","display","send",NULL};
;static FXCommandHandler console_command_proc[] = {cmd_CLEAR,cmd_VOL,cmd_DIR,cmd_TESTSD,cmd_WORKBENCH,
;		                                          cmd_FCOLOR,cmd_BCOLOR,cmd_INIT,cmd_NEWDIR,cmd_TASKS,
;												  cmd_FRONT,cmd_BACK,cmd_CHRDIR,cmd_DISPLAY,cmd_SEND,NULL};
;
;static LPCHAR tokentypeNames[] = { "WORD",
;"NUMBER","STRING","LABEL","LINE","EQUALS",
;"OPERATOR","LEFT_PAREN", "RIGHT_PAREN", "EOF", "COMMA", "LEFT_BLOCK",
;"RIGHT_BLOCK", "BANG", "NOTEQUAL", "ANNOTATION",
;"GTE", "LTE", "GT", "LT", "PERIOD", "POINTER", "NOOP",
;"START_BLOCK", "END_BLOCK","AND","OR","VARIADIC", "DOLLAR"};
;*/
;//#pragma section CODE=CONSOLE,offset $07:0000
;
;VOID k_initialize_text(VOID)
;{
	.line	27
	.line	28
	code
	xdef	~~k_initialize_text
	func
	.function	28
~~k_initialize_text:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L2
	tcs
	phd
	tcd
	.block	28
;	k_debug_string("k_initialize_text\r\n");
	.line	29
	pea	#^L1
	pea	#<L1
	jsl	~~k_debug_string
;	*((int FAR *)COLS_VISIBLE)  =  72;
	.line	30
	lda	#$48
	sta	>15
;	*((int FAR *)LINES_VISIBLE) =  56;
	.line	31
	lda	#$38
	sta	>19
;	*((int FAR *)COLS_PER_LINE) = 128;
	.line	32
	lda	#$80
	sta	>17
;	*((int FAR *)LINES_MAX) 	=  64;
	.line	33
	lda	#$40
	sta	>21
;}
	.line	34
L5:
	pld
	tsc
	clc
	adc	#L2
	tcs
	rtl
	.endblock	34
L2	equ	0
L3	equ	1
	ends
	efunc
	.endfunc	34,1,0
	.line	34
	data
L1:
	db	$6B,$5F,$69,$6E,$69,$74,$69,$61,$6C,$69,$7A,$65,$5F,$74,$65
	db	$78,$74,$0D,$0A,$00
	ends
;
;void k_init_spinner(PSPINNERCTX ctx)
;{
	.line	36
	.line	37
	code
	xdef	~~k_init_spinner
	func
	.function	37
~~k_init_spinner:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L7
	tcs
	phd
	tcd
ctx_0	set	4
	.block	37
;	ctx->spinner = consolespinner;
	.sym	ctx,4,138,6,32,44
	.line	38
	lda	#<~~consolespinner
	sta	<R0
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<R0+2
	lda	<R0
	ldy	#$2
	sta	[<L7+ctx_0],Y
	lda	<R0+2
	ldy	#$4
	sta	[<L7+ctx_0],Y
;	ctx->index = 0;
	.line	39
	lda	#$0
	sta	[<L7+ctx_0]
;}
	.line	40
L10:
	lda	<L7+2
	sta	<L7+2+4
	lda	<L7+1
	sta	<L7+1+4
	pld
	tsc
	clc
	adc	#L7+4
	tcs
	rtl
	.endblock	40
L7	equ	4
L8	equ	5
	ends
	efunc
	.endfunc	40,5,4
	.line	40
;
;void k_updatespinner(int pos,int line,PSPINNERCTX ctx)
;{
	.line	42
	.line	43
	code
	xdef	~~k_updatespinner
	func
	.function	43
~~k_updatespinner:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L11
	tcs
	phd
	tcd
pos_0	set	4
line_0	set	6
ctx_0	set	8
	.block	43
;	k_put_char(pos,line,consolespinner[ctx->index++],15,0);
	.sym	pos,4,5,6,16
	.sym	line,6,5,6,16
	.sym	ctx,8,138,6,32,44
	.line	44
	pea	#<$0
	pea	#<$f
	lda	[<L11+ctx_0]
	sta	<R0
	lda	[<L11+ctx_0]
	ina
	sta	[<L11+ctx_0]
	ldx	<R0
	lda	|~~consolespinner,X
	pha
	pei	<L11+line_0
	pei	<L11+pos_0
	jsl	~~k_put_char
;	if(ctx->index>3) ctx->index = 0;
	.line	45
	sec
	lda	#$3
	sbc	[<L11+ctx_0]
	bvs	L14
	eor	#$8000
L14:
	bpl	L15
	brl	L10001
L15:
	.line	45
	lda	#$0
	sta	[<L11+ctx_0]
;}
L10001:
	.line	46
L16:
	lda	<L11+2
	sta	<L11+2+8
	lda	<L11+1
	sta	<L11+1+8
	pld
	tsc
	clc
	adc	#L11+8
	tcs
	rtl
	.endblock	46
L11	equ	4
L12	equ	5
	ends
	efunc
	.endfunc	46,5,4
	.line	46
;
;int k_initialize_text_fonts(UINT flag)
;{
	.line	48
	.line	49
	code
	xdef	~~k_initialize_text_fonts
	func
	.function	49
~~k_initialize_text_fonts:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L17
	tcs
	phd
	tcd
flag_0	set	4
	.block	49
;	int i = 0;
;	for(i=0;i<0x800;i++)
i_1	set	0
	.sym	i,0,5,1,16
	.sym	flag,4,16,6,16
	stz	<L18+i_1
	.line	51
	stz	<L18+i_1
L10004:
;	{
	.line	52
;		FONT_MEMORY_BANK0[i] = FONT_4_BANK0[i];
	.line	53
	lda	#$8000
	sta	<R0
	lda	#$af
	sta	<R0+2
	lda	#$f000
	sta	<R1
	lda	#$3f
	sta	<R1+2
	sep	#$20
	longa	off
	ldy	<L18+i_1
	lda	[<R1],Y
	ldy	<L18+i_1
	sta	[<R0],Y
	rep	#$20
	longa	on
;		FONT_MEMORY_BANK1[i] = BM437_ATI_8X8_Font_Set[i];
	.line	54
	lda	#$8800
	sta	<R0
	lda	#$af
	sta	<R0+2
	lda	#$f800
	sta	<R1
	lda	#$3f
	sta	<R1+2
	sep	#$20
	longa	off
	ldy	<L18+i_1
	lda	[<R1],Y
	ldy	<L18+i_1
	sta	[<R0],Y
	rep	#$20
	longa	on
;	}
	.line	55
L10002:
	inc	<L18+i_1
	sec
	lda	<L18+i_1
	sbc	#<$800
	bvs	L20
	eor	#$8000
L20:
	bmi	L21
	brl	L10004
L21:
L10003:
;
;	return 0;
	.line	57
	lda	#$0
L22:
	tay
	lda	<L17+2
	sta	<L17+2+2
	lda	<L17+1
	sta	<L17+1+2
	pld
	tsc
	clc
	adc	#L17+2
	tcs
	tya
	rtl
;}
	.line	58
	.endblock	58
L17	equ	10
L18	equ	9
	ends
	efunc
	.endfunc	58,9,10
	.line	58
;
;int k_get_cols_visible(void)
;{
	.line	60
	.line	61
	code
	xdef	~~k_get_cols_visible
	func
	.function	61
~~k_get_cols_visible:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L23
	tcs
	phd
	tcd
	.block	61
;	//return *((int*)(&((COLS_VISIBLE)[0]))); //2 Bytes Columns visible per screen line. A virtual line can be longer than displayed, up to COLS_PER_LINE long. Default  80
;	return *((int FAR *)COLS_VISIBLE);
	.line	63
	lda	>15
L26:
	tay
	pld
	tsc
	clc
	adc	#L23
	tcs
	tya
	rtl
;}
	.line	64
	.endblock	64
L23	equ	0
L24	equ	1
	ends
	efunc
	.endfunc	64,1,0
	.line	64
;
;int k_get_cols_per_line(void)
;{
	.line	66
	.line	67
	code
	xdef	~~k_get_cols_per_line
	func
	.function	67
~~k_get_cols_per_line:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L27
	tcs
	phd
	tcd
	.block	67
;	return *((int*)COLS_PER_LINE); //2 Bytes Columns visible per screen line. A virtual line can be longer than displayed, up to COLS_PER_LINE long. Default  80
	.line	68
	lda	>17
L30:
	tay
	pld
	tsc
	clc
	adc	#L27
	tcs
	tya
	rtl
;}
	.line	69
	.endblock	69
L27	equ	0
L28	equ	1
	ends
	efunc
	.endfunc	69,1,0
	.line	69
;
;int k_get_lines_visible(void)
;{
	.line	71
	.line	72
	code
	xdef	~~k_get_lines_visible
	func
	.function	72
~~k_get_lines_visible:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L31
	tcs
	phd
	tcd
	.block	72
;	return *((int*)LINES_VISIBLE); //2 Bytes Columns visible per screen line. A virtual line can be longer than displayed, up to COLS_PER_LINE long. Default  80
	.line	73
	lda	>19
L34:
	tay
	pld
	tsc
	clc
	adc	#L31
	tcs
	tya
	rtl
;}
	.line	74
	.endblock	74
L31	equ	0
L32	equ	1
	ends
	efunc
	.endfunc	74,1,0
	.line	74
;
;int k_get_lines_max(void)
;{
	.line	76
	.line	77
	code
	xdef	~~k_get_lines_max
	func
	.function	77
~~k_get_lines_max:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L35
	tcs
	phd
	tcd
	.block	77
;	return *((int*)LINES_MAX); //2 Bytes Columns visible per screen line. A virtual line can be longer than displayed, up to COLS_PER_LINE long. Default  80
	.line	78
	lda	>21
L38:
	tay
	pld
	tsc
	clc
	adc	#L35
	tcs
	tya
	rtl
;}
	.line	79
	.endblock	79
L35	equ	0
L36	equ	1
	ends
	efunc
	.endfunc	79,1,0
	.line	79
;
;void k_enable_text_mode(void)
;{
	.line	81
	.line	82
	code
	xdef	~~k_enable_text_mode
	func
	.function	82
~~k_enable_text_mode:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L39
	tcs
	phd
	tcd
	.block	82
;	MASTER_CTRL_REG_L[0] = MSTR_CTRL_TEXT_MODE_EN;
	.line	83
	sep	#$20
	longa	off
	lda	#$1
	sta	>11468800
	rep	#$20
	longa	on
;}
	.line	84
L42:
	pld
	tsc
	clc
	adc	#L39
	tcs
	rtl
	.endblock	84
L39	equ	0
L40	equ	1
	ends
	efunc
	.endfunc	84,1,0
	.line	84
;
;void k_enable_border(void)
;{
	.line	86
	.line	87
	code
	xdef	~~k_enable_border
	func
	.function	87
~~k_enable_border:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L43
	tcs
	phd
	tcd
	.block	87
;	BORDER_CTRL_REG[0] = BORDER_CTRL_ENABLE;
	.line	88
	sep	#$20
	longa	off
	lda	#$1
	sta	>11468804
	rep	#$20
	longa	on
;}
	.line	89
L46:
	pld
	tsc
	clc
	adc	#L43
	tcs
	rtl
	.endblock	89
L43	equ	0
L44	equ	1
	ends
	efunc
	.endfunc	89,1,0
	.line	89
;
;void k_disable_border(void)
;{
	.line	91
	.line	92
	code
	xdef	~~k_disable_border
	func
	.function	92
~~k_disable_border:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L47
	tcs
	phd
	tcd
	.block	92
;	BORDER_CTRL_REG[0] = 0x00 ;
	.line	93
	sep	#$20
	longa	off
	lda	#$0
	sta	>11468804
	rep	#$20
	longa	on
;}
	.line	94
L50:
	pld
	tsc
	clc
	adc	#L47
	tcs
	rtl
	.endblock	94
L47	equ	0
L48	equ	1
	ends
	efunc
	.endfunc	94,1,0
	.line	94
;
;void k_set_border_color(char r,char g,char b)
;{
	.line	96
	.line	97
	code
	xdef	~~k_set_border_color
	func
	.function	97
~~k_set_border_color:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L51
	tcs
	phd
	tcd
r_0	set	4
g_0	set	6
b_0	set	8
	.block	97
;	BORDER_COLOR_B[0] = b;
	.sym	r,4,14,6,8
	.sym	g,6,14,6,8
	.sym	b,8,14,6,8
	.line	98
	sep	#$20
	longa	off
	lda	<L51+b_0
	sta	>11468805
	rep	#$20
	longa	on
;	BORDER_COLOR_G[0] = g;
	.line	99
	sep	#$20
	longa	off
	lda	<L51+g_0
	sta	>11468806
	rep	#$20
	longa	on
;	BORDER_COLOR_R[0] = r;
	.line	100
	sep	#$20
	longa	off
	lda	<L51+r_0
	sta	>11468807
	rep	#$20
	longa	on
;}
	.line	101
L54:
	lda	<L51+2
	sta	<L51+2+6
	lda	<L51+1
	sta	<L51+1+6
	pld
	tsc
	clc
	adc	#L51+6
	tcs
	rtl
	.endblock	101
L51	equ	0
L52	equ	1
	ends
	efunc
	.endfunc	101,1,0
	.line	101
;
;void k_clear_screen(int bcolor)
;{
	.line	103
	.line	104
	code
	xdef	~~k_clear_screen
	func
	.function	104
~~k_clear_screen:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L55
	tcs
	phd
	tcd
bcolor_0	set	4
	.block	104
;	memset((unsigned char FAR *)0xAFA000,0,0xAFA000 + 0xC000);
	.sym	bcolor,4,5,6,16
	.line	105
	pea	#<$b06000
	pea	#<$0
	pea	#^$afa000
	pea	#<$afa000
	jsl	~~memset
;	memset((unsigned char FAR *)0xAFC000,bcolor,0xAFA000 + 0xC000);
	.line	106
	pea	#<$b06000
	pei	<L55+bcolor_0
	pea	#^$afc000
	pea	#<$afc000
	jsl	~~memset
;}
	.line	107
L58:
	lda	<L55+2
	sta	<L55+2+2
	lda	<L55+1
	sta	<L55+1+2
	pld
	tsc
	clc
	adc	#L55+2
	tcs
	rtl
	.endblock	107
L55	equ	0
L56	equ	1
	ends
	efunc
	.endfunc	107,1,0
	.line	107
;
;int k_put_string(int col,int row,char * text,int fcolor,int bcolor)
;{
	.line	109
	.line	110
	code
	xdef	~~k_put_string
	func
	.function	110
~~k_put_string:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L59
	tcs
	phd
	tcd
col_0	set	4
row_0	set	6
text_0	set	8
fcolor_0	set	12
bcolor_0	set	14
	.block	110
;	char * ptr = text;
;	while(*ptr)
ptr_1	set	0
	.sym	ptr,0,142,1,32
	.sym	col,4,5,6,16
	.sym	row,6,5,6,16
	.sym	text,8,142,6,32
	.sym	fcolor,12,5,6,16
	.sym	bcolor,14,5,6,16
	lda	<L59+text_0
	sta	<L60+ptr_1
	lda	<L59+text_0+2
	sta	<L60+ptr_1+2
	.line	112
L10005:
	lda	[<L60+ptr_1]
	and	#$ff
	bne	L62
	brl	L10006
L62:
;	{
	.line	113
;		k_put_char(col,row,*ptr,fcolor,bcolor);
	.line	114
	pei	<L59+bcolor_0
	pei	<L59+fcolor_0
	lda	[<L60+ptr_1]
	pha
	pei	<L59+row_0
	pei	<L59+col_0
	jsl	~~k_put_char
;		col++;
	.line	115
	inc	<L59+col_0
;		ptr++;
	.line	116
	inc	<L60+ptr_1
	bne	L63
	inc	<L60+ptr_1+2
L63:
;	}
	.line	117
	brl	L10005
L10006:
;
;	return col;
	.line	119
	lda	<L59+col_0
L64:
	tay
	lda	<L59+2
	sta	<L59+2+12
	lda	<L59+1
	sta	<L59+1+12
	pld
	tsc
	clc
	adc	#L59+12
	tcs
	tya
	rtl
;}
	.line	120
	.endblock	120
L59	equ	4
L60	equ	1
	ends
	efunc
	.endfunc	120,1,4
	.line	120
;
;int k_put_color(int col,int row,char * textColor)
;{
	.line	122
	.line	123
	code
	xdef	~~k_put_color
	func
	.function	123
~~k_put_color:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L65
	tcs
	phd
	tcd
col_0	set	4
row_0	set	6
textColor_0	set	8
	.block	123
;	char * ptr = textColor;
;	while(*ptr)
ptr_1	set	0
	.sym	ptr,0,142,1,32
	.sym	col,4,5,6,16
	.sym	row,6,5,6,16
	.sym	textColor,8,142,6,32
	lda	<L65+textColor_0
	sta	<L66+ptr_1
	lda	<L65+textColor_0+2
	sta	<L66+ptr_1+2
	.line	125
L10007:
	lda	[<L66+ptr_1]
	and	#$ff
	bne	L68
	brl	L10008
L68:
;	{
	.line	126
;		CS_COLOR_MEM_PTR[128 * row + col] = *ptr;
	.line	127
	lda	<L65+row_0
	ldx	#<$7
	xref	~~~asl
	jsl	~~~asl
	sta	<R0
	clc
	lda	<R0
	adc	<L65+col_0
	sta	<R1
	lda	#$c000
	sta	<R0
	lda	#$af
	sta	<R0+2
	sep	#$20
	longa	off
	lda	[<L66+ptr_1]
	ldy	<R1
	sta	[<R0],Y
	rep	#$20
	longa	on
;		col++;
	.line	128
	inc	<L65+col_0
;		ptr++;
	.line	129
	inc	<L66+ptr_1
	bne	L69
	inc	<L66+ptr_1+2
L69:
;	}
	.line	130
	brl	L10007
L10008:
;
;	return col;
	.line	132
	lda	<L65+col_0
L70:
	tay
	lda	<L65+2
	sta	<L65+2+8
	lda	<L65+1
	sta	<L65+1+8
	pld
	tsc
	clc
	adc	#L65+8
	tcs
	tya
	rtl
;}
	.line	133
	.endblock	133
L65	equ	12
L66	equ	9
	ends
	efunc
	.endfunc	133,9,12
	.line	133
;
;
;void k_put_char(int col,int row,char c,int fcolor,int bcolor)
;{
	.line	136
	.line	137
	code
	xdef	~~k_put_char
	func
	.function	137
~~k_put_char:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L71
	tcs
	phd
	tcd
col_0	set	4
row_0	set	6
c_0	set	8
fcolor_0	set	10
bcolor_0	set	12
	.block	137
;	CS_TEXT_MEM_PTR[128 * row + col] = c;
	.sym	col,4,5,6,16
	.sym	row,6,5,6,16
	.sym	c,8,14,6,8
	.sym	fcolor,10,5,6,16
	.sym	bcolor,12,5,6,16
	.line	138
	lda	<L71+row_0
	ldx	#<$7
	xref	~~~asl
	jsl	~~~asl
	sta	<R0
	clc
	lda	<R0
	adc	<L71+col_0
	sta	<R1
	lda	#$a000
	sta	<R0
	lda	#$af
	sta	<R0+2
	sep	#$20
	longa	off
	lda	<L71+c_0
	ldy	<R1
	sta	[<R0],Y
	rep	#$20
	longa	on
;	CS_COLOR_MEM_PTR[128 * row + col] = ((fcolor & 0x0F) << 4 + (bcolor & 0x0F));
	.line	139
	lda	<L71+row_0
	ldx	#<$7
	xref	~~~asl
	jsl	~~~asl
	sta	<R0
	clc
	lda	<R0
	adc	<L71+col_0
	sta	<R1
	lda	#$c000
	sta	<R0
	lda	#$af
	sta	<R0+2
	lda	<L71+bcolor_0
	and	#<$f
	sta	<R2
	clc
	lda	#$4
	adc	<R2
	pha
	lda	<L71+fcolor_0
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
;}
	.line	140
L74:
	lda	<L71+2
	sta	<L71+2+10
	lda	<L71+1
	sta	<L71+1+10
	pld
	tsc
	clc
	adc	#L71+10
	tcs
	rtl
	.endblock	140
L71	equ	12
L72	equ	13
	ends
	efunc
	.endfunc	140,13,12
	.line	140
;
;void k_set_background(int col,int row,int bcolor)
;{
	.line	142
	.line	143
	code
	xdef	~~k_set_background
	func
	.function	143
~~k_set_background:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L75
	tcs
	phd
	tcd
col_0	set	4
row_0	set	6
bcolor_0	set	8
	.block	143
;	((unsigned char FAR *)(0xAFC000 + (128 * row) + col))[0] =  bcolor;
	.sym	col,4,5,6,16
	.sym	row,6,5,6,16
	.sym	bcolor,8,5,6,16
	.line	144
	ldy	#$0
	lda	<L75+col_0
	bpl	L78
	dey
L78:
	sta	<R0
	sty	<R0+2
	lda	<L75+row_0
	ldx	#<$7
	xref	~~~asl
	jsl	~~~asl
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L79
	dey
L79:
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
	lda	<L75+bcolor_0
	sta	[<R0]
	rep	#$20
	longa	on
;}
	.line	145
L80:
	lda	<L75+2
	sta	<L75+2+6
	lda	<L75+1
	sta	<L75+1+6
	pld
	tsc
	clc
	adc	#L75+6
	tcs
	rtl
	.endblock	145
L75	equ	12
L76	equ	13
	ends
	efunc
	.endfunc	145,13,12
	.line	145
;
;void k_set_text_font_page(UINT page)
;{
	.line	147
	.line	148
	code
	xdef	~~k_set_text_font_page
	func
	.function	148
~~k_set_text_font_page:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L81
	tcs
	phd
	tcd
page_0	set	4
	.block	148
;	if(page)
	.sym	page,4,16,6,16
	.line	149
;		VKY_TXT_CURSOR_CTRL_REG[0] = 0x13;
	lda	<L81+page_0
	bne	L84
	brl	L10009
L84:
	.line	150
	sep	#$20
	longa	off
	lda	#$13
	sta	>11468816
	rep	#$20
	longa	on
;	else
	brl	L10010
L10009:
;		VKY_TXT_CURSOR_CTRL_REG[0] = 0x0B;
	.line	152
	sep	#$20
	longa	off
	lda	#$b
	sta	>11468816
	rep	#$20
	longa	on
L10010:
;
;}
	.line	154
L85:
	lda	<L81+2
	sta	<L81+2+2
	lda	<L81+1
	sta	<L81+1+2
	pld
	tsc
	clc
	adc	#L81+2
	tcs
	rtl
	.endblock	154
L81	equ	0
L82	equ	1
	ends
	efunc
	.endfunc	154,1,0
	.line	154
;
;void k_enable_text_cursor(UINT page)
;{
	.line	156
	.line	157
	code
	xdef	~~k_enable_text_cursor
	func
	.function	157
~~k_enable_text_cursor:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L86
	tcs
	phd
	tcd
page_0	set	4
	.block	157
;	/*
;	 *
;	 *
;	 */
;
;	CURCOLOR[0] = 15;
	.sym	page,4,16,6,16
	.line	163
	sep	#$20
	longa	off
	lda	#$f
	sta	>30
	rep	#$20
	longa	on
;	VKY_TXT_CURSOR_CHAR_REG[0] = 0xA0;  // FULL BLOCK
	.line	164
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
;	k_set_text_font_page(page);
	.line	169
	pei	<L86+page_0
	jsl	~~k_set_text_font_page
;
;	VKY_TXT_CURSOR_COLR_REG[0] = 0xF0;
	.line	171
	sep	#$20
	longa	off
	lda	#$f0
	sta	>11468819
	rep	#$20
	longa	on
;	VKY_TXT_CURSOR_Y_REG_L[0]  = (UCHAR)0;
	.line	172
	sep	#$20
	longa	off
	lda	#$0
	sta	>11468822
	rep	#$20
	longa	on
;	VKY_TXT_CURSOR_X_REG_L[0]  = (UCHAR)0;
	.line	173
	sep	#$20
	longa	off
	lda	#$0
	sta	>11468820
	rep	#$20
	longa	on
;	VKY_TXT_CURSOR_Y_REG_H[0]  = (UCHAR)0;
	.line	174
	sep	#$20
	longa	off
	lda	#$0
	sta	>11468823
	rep	#$20
	longa	on
;	VKY_TXT_CURSOR_X_REG_H[0]  = (UCHAR)0;
	.line	175
	sep	#$20
	longa	off
	lda	#$0
	sta	>11468821
	rep	#$20
	longa	on
;
;
;/*
;VKY_TXT_CURSOR_CTRL_REG  EQU  $AF0010   ;[0]  Enable Text Mode
;Vky_Cursor_Enable        EQU  $01
;Vky_Cursor_Flash_Rate0   EQU  $02
;Vky_Cursor_Flash_Rate1   EQU  $04
;Vky_Cursor_FONT_Page0    EQU  $08       ; Pick Font Page 0 or Font Page 1
;Vky_Cursor_FONT_Page1    EQU  $10       ; Pick Font Page 0 or Font Page 1
;VKY_TXT_RESERVED         EQU  $AF0011   ;Not in Use
;VKY_TXT_CURSOR_CHAR_REG  EQU  $AF0012
;
;VKY_TXT_CURSOR_COLR_REG  EQU  $AF0013
;VKY_TXT_CURSOR_X_REG_L   EQU  $AF0014
;VKY_TXT_CURSOR_X_REG_H   EQU  $AF0015
;VKY_TXT_CURSOR_Y_REG_L   EQU  $AF0016
;VKY_TXT_CURSOR_Y_REG_H   EQU  $AF0017 */
;
;}
	.line	194
L89:
	lda	<L86+2
	sta	<L86+2+2
	lda	<L86+1
	sta	<L86+1+2
	pld
	tsc
	clc
	adc	#L86+2
	tcs
	rtl
	.endblock	194
L86	equ	0
L87	equ	1
	ends
	efunc
	.endfunc	194,1,0
	.line	194
;
;void k_set_cursor_position(int x,int y)
;{
	.line	196
	.line	197
	code
	xdef	~~k_set_cursor_position
	func
	.function	197
~~k_set_cursor_position:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L90
	tcs
	phd
	tcd
x_0	set	4
y_0	set	6
	.block	197
;	VKY_TXT_CURSOR_Y_REG_L[0] = (UCHAR)y;
	.sym	x,4,5,6,16
	.sym	y,6,5,6,16
	.line	198
	sep	#$20
	longa	off
	lda	<L90+y_0
	sta	>11468822
	rep	#$20
	longa	on
;	VKY_TXT_CURSOR_X_REG_L[0] = (UCHAR)x;
	.line	199
	sep	#$20
	longa	off
	lda	<L90+x_0
	sta	>11468820
	rep	#$20
	longa	on
;	VKY_TXT_CURSOR_Y_REG_H[0] = (UCHAR)0;
	.line	200
	sep	#$20
	longa	off
	lda	#$0
	sta	>11468823
	rep	#$20
	longa	on
;	VKY_TXT_CURSOR_X_REG_H[0] = (UCHAR)0;
	.line	201
	sep	#$20
	longa	off
	lda	#$0
	sta	>11468821
	rep	#$20
	longa	on
;}
	.line	202
L93:
	lda	<L90+2
	sta	<L90+2+4
	lda	<L90+1
	sta	<L90+1+4
	pld
	tsc
	clc
	adc	#L90+4
	tcs
	rtl
	.endblock	202
L90	equ	0
L91	equ	1
	ends
	efunc
	.endfunc	202,1,0
	.line	202
;
;void k_create_text_window(PRECT prect,TITLE title,PHANDLE phandle)
;{
	.line	204
	.line	205
	code
	xdef	~~k_create_text_window
	func
	.function	205
~~k_create_text_window:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L94
	tcs
	phd
	tcd
prect_0	set	4
title_0	set	8
phandle_0	set	12
	.block	205
;	int index = -1;
;	Window FAR *pwin = NULL;
;
;	//k_put_char(0,1,'a',5,0);
;
;	index = _k_window_index++;
index_1	set	0
pwin_1	set	2
	.sym	index,0,5,1,16
	.sym	pwin,2,138,1,32,27
	.sym	prect,4,138,6,32,25
	.sym	title,8,142,6,32
	.sym	phandle,12,1153,6,32
	lda	#$ffff
	sta	<L95+index_1
	stz	<L95+pwin_1
	stz	<L95+pwin_1+2
	.line	211
	lda	|~~_k_window_index
	sta	<L95+index_1
	inc	|~~_k_window_index
;
;	//k_put_char(0,1,'b',5,0);
;
;	pwin = &_k_window_list[index];
	.line	215
	lda	<L95+index_1
	ldx	#<$a6
	xref	~~~mul
	jsl	~~~mul
	sta	<R0
	clc
	lda	#<~~_k_window_list
	adc	<R0
	sta	<R1
	lda	<R1
	sta	<L95+pwin_1
	xref	_BEG_DATA
	lda	#_BEG_DATA>>16
	sta	<L95+pwin_1+2
;
;	pwin->win_x = prect->x;
	.line	217
	lda	[<L94+prect_0]
	ldy	#$8
	sta	[<L95+pwin_1],Y
;	pwin->win_y = prect->y;
	.line	218
	ldy	#$2
	lda	[<L94+prect_0],Y
	ldy	#$a
	sta	[<L95+pwin_1],Y
;	pwin->win_width = prect->width;
	.line	219
	ldy	#$4
	lda	[<L94+prect_0],Y
	ldy	#$c
	sta	[<L95+pwin_1],Y
;	pwin->win_height = prect->height;
	.line	220
	ldy	#$6
	lda	[<L94+prect_0],Y
	ldy	#$e
	sta	[<L95+pwin_1],Y
;
;	//k_put_char(0,1,'c',5,0);
;
;	strcpy(pwin->win_title,title);
	.line	224
	pei	<L94+title_0+2
	pei	<L94+title_0
	clc
	lda	#$24
	adc	<L95+pwin_1
	sta	<R0
	lda	#$0
	adc	<L95+pwin_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~strcpy
;
;	//k_put_char(0,1,'d',5,0);
;
;	k_window_draw(pwin->win_x,pwin->win_y,pwin->win_width,pwin->win_height,pwin->win_title);
	.line	228
	clc
	lda	#$24
	adc	<L95+pwin_1
	sta	<R0
	lda	#$0
	adc	<L95+pwin_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$e
	lda	[<L95+pwin_1],Y
	pha
	ldy	#$c
	lda	[<L95+pwin_1],Y
	pha
	ldy	#$a
	lda	[<L95+pwin_1],Y
	pha
	ldy	#$8
	lda	[<L95+pwin_1],Y
	pha
	jsl	~~k_window_draw
;
;	//k_put_char(0,1,'e',5,0);
;
;	*phandle = (LPVOID)index;
	.line	232
	ldy	#$0
	lda	<L95+index_1
	bpl	L97
	dey
L97:
	sta	<R0
	sty	<R0+2
	lda	<R0
	sta	[<L94+phandle_0]
	lda	<R0+2
	ldy	#$2
	sta	[<L94+phandle_0],Y
;
;	return;
	.line	234
L98:
	lda	<L94+2
	sta	<L94+2+12
	lda	<L94+1
	sta	<L94+1+12
	pld
	tsc
	clc
	adc	#L94+12
	tcs
	rtl
;}
	.line	235
	.endblock	235
L94	equ	14
L95	equ	9
	ends
	efunc
	.endfunc	235,9,14
	.line	235
;
;void k_text_mode_dialog(int x,int y,int width,int height,LPCSTR message)
;{
	.line	237
	.line	238
	code
	xdef	~~k_text_mode_dialog
	func
	.function	238
~~k_text_mode_dialog:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L99
	tcs
	phd
	tcd
x_0	set	4
y_0	set	6
width_0	set	8
height_0	set	10
message_0	set	12
	.block	238
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
	lda	<L99+x_0
	sta	<L100+pos_1
	lda	<L99+y_0
	sta	<L100+line_1
	.line	242
	pea	#<$0
	pea	#<$f
	pea	#^L6
	pea	#<L6
	pei	<L100+line_1
	pei	<L100+pos_1
	jsl	~~k_put_string
	sta	<L100+pos_1
;	while(pos < x + width)
	.line	243
L10011:
	clc
	lda	<L99+x_0
	adc	<L99+width_0
	sta	<R0
	sec
	lda	<L100+pos_1
	sbc	<R0
	bvs	L102
	eor	#$8000
L102:
	bpl	L103
	brl	L10012
L103:
;	{
	.line	244
;		pos = k_put_string(pos,line,CONST_TBOX_TOP_STR,15,0);
	.line	245
	pea	#<$0
	pea	#<$f
	pea	#^L6+2
	pea	#<L6+2
	pei	<L100+line_1
	pei	<L100+pos_1
	jsl	~~k_put_string
	sta	<L100+pos_1
;	}
	.line	246
	brl	L10011
L10012:
;	k_put_string(pos,line,CONST_TBOX_TR_STR,15,0);
	.line	247
	pea	#<$0
	pea	#<$f
	pea	#^L6+4
	pea	#<L6+4
	pei	<L100+line_1
	pei	<L100+pos_1
	jsl	~~k_put_string
;	line++;
	.line	248
	inc	<L100+line_1
;
;	while(line < y + height)
	.line	250
L10013:
	clc
	lda	<L99+y_0
	adc	<L99+height_0
	sta	<R0
	sec
	lda	<L100+line_1
	sbc	<R0
	bvs	L104
	eor	#$8000
L104:
	bpl	L105
	brl	L10014
L105:
;	{
	.line	251
;		k_put_string(x,line,CONST_TBOX_LEFT_STR,15,0);
	.line	252
	pea	#<$0
	pea	#<$f
	pea	#^L6+6
	pea	#<L6+6
	pei	<L100+line_1
	pei	<L99+x_0
	jsl	~~k_put_string
;		k_put_string(pos,line,CONST_TBOX_RIGHT_STR,15,0);
	.line	253
	pea	#<$0
	pea	#<$f
	pea	#^L6+8
	pea	#<L6+8
	pei	<L100+line_1
	pei	<L100+pos_1
	jsl	~~k_put_string
;		line++;
	.line	254
	inc	<L100+line_1
;	}
	.line	255
	brl	L10013
L10014:
;	pos = x;
	.line	256
	lda	<L99+x_0
	sta	<L100+pos_1
;	pos = k_put_string(pos,line,CONST_TBOX_BL_STR,15,0);
	.line	257
	pea	#<$0
	pea	#<$f
	pea	#^L6+10
	pea	#<L6+10
	pei	<L100+line_1
	pei	<L100+pos_1
	jsl	~~k_put_string
	sta	<L100+pos_1
;	while(pos < x + width)
	.line	258
L10015:
	clc
	lda	<L99+x_0
	adc	<L99+width_0
	sta	<R0
	sec
	lda	<L100+pos_1
	sbc	<R0
	bvs	L106
	eor	#$8000
L106:
	bpl	L107
	brl	L10016
L107:
;	{
	.line	259
;		pos = k_put_string(pos,line,CONST_TBOX_BOTTOM_STR,15,0);
	.line	260
	pea	#<$0
	pea	#<$f
	pea	#^L6+12
	pea	#<L6+12
	pei	<L100+line_1
	pei	<L100+pos_1
	jsl	~~k_put_string
	sta	<L100+pos_1
;	}
	.line	261
	brl	L10015
L10016:
;	pos = k_put_string(pos,line,CONST_TBOX_BR_STR,15,0);
	.line	262
	pea	#<$0
	pea	#<$f
	pea	#^L6+14
	pea	#<L6+14
	pei	<L100+line_1
	pei	<L100+pos_1
	jsl	~~k_put_string
	sta	<L100+pos_1
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
	.line	305
L108:
	lda	<L99+2
	sta	<L99+2+12
	lda	<L99+1
	sta	<L99+1+12
	pld
	tsc
	clc
	adc	#L99+12
	tcs
	rtl
	.endblock	305
L99	equ	8
L100	equ	5
	ends
	efunc
	.endfunc	305,5,8
	.line	305
	data
L6:
	db	$D6,$00,$FFFFFFC4,$00,$FFFFFFB7,$00,$FFFFFFBA,$00,$FFFFFFBA,$00,$FFFFFFD3,$00,$FFFFFFC4,$00,$FFFFFFBD
	db	$00
	ends
;
;void k_window_draw(int bx,int by,int bw,int bh,char FAR* title)
;{
	.line	307
	.line	308
	code
	xdef	~~k_window_draw
	func
	.function	308
~~k_window_draw:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L110
	tcs
	phd
	tcd
bx_0	set	4
by_0	set	6
bw_0	set	8
bh_0	set	10
title_0	set	12
	.block	308
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
	stz	<L111+i_1
	stz	<L111+k_1
	.line	312
	pea	#<$0
	pea	#<$5
	pea	#<$7a
	pea	#<$1
	pea	#<$0
	jsl	~~k_put_char
;
;	k_window_draw_background(bx,by,bw,bh,(char)8);
	.line	314
	pea	#<$8
	pei	<L110+bh_0
	pei	<L110+bw_0
	pei	<L110+by_0
	pei	<L110+bx_0
	jsl	~~k_window_draw_background
;
;	k_put_char(0,1,'y',5,0);
	.line	316
	pea	#<$0
	pea	#<$5
	pea	#<$79
	pea	#<$1
	pea	#<$0
	jsl	~~k_put_char
;
;	for(k=by;k<(by+bh);k++)
	.line	318
	lda	<L110+by_0
	sta	<L111+k_1
	brl	L10020
L10019:
;	{
	.line	319
;		if(k == by ||  k == (by + 2))
	.line	320
;		{
	lda	<L111+k_1
	cmp	<L110+by_0
	bne	L114
	brl	L113
L114:
	clc
	lda	#$2
	adc	<L110+by_0
	sta	<R0
	lda	<R0
	cmp	<L111+k_1
	beq	L115
	brl	L10021
L115:
L113:
	.line	321
;			k_put_char(bx     ,k,WIN_BORDER_CHAR_CORNER_TLEFT,15,0);
	.line	322
	pea	#<$0
	pea	#<$f
	pea	#<$d6
	pei	<L111+k_1
	pei	<L110+bx_0
	jsl	~~k_put_char
;			k_put_char(bx+bw-1,k,WIN_BORDER_CHAR_CORNER_TRIGHT,15,0);
	.line	323
	pea	#<$0
	pea	#<$f
	pea	#<$b7
	pei	<L111+k_1
	clc
	lda	<L110+bx_0
	adc	<L110+bw_0
	sta	<R0
	clc
	lda	#$ffff
	adc	<R0
	pha
	jsl	~~k_put_char
;			for(i=bx+1;i<(bx+bw-1);i++)
	.line	324
	lda	<L110+bx_0
	ina
	sta	<L111+i_1
	brl	L10025
L10024:
;			{
	.line	325
;				k_put_char(i,k,WIN_BORDER_CHAR_TOP,15,0);
	.line	326
	pea	#<$0
	pea	#<$f
	pea	#<$c4
	pei	<L111+k_1
	pei	<L111+i_1
	jsl	~~k_put_char
;			}
	.line	327
L10022:
	inc	<L111+i_1
L10025:
	clc
	lda	<L110+bx_0
	adc	<L110+bw_0
	sta	<R0
	clc
	lda	#$ffff
	adc	<R0
	sta	<R1
	sec
	lda	<L111+i_1
	sbc	<R1
	bvs	L116
	eor	#$8000
L116:
	bmi	L117
	brl	L10024
L117:
L10023:
;			k_put_string(bx+2,by+1,title,15,0);
	.line	328
	pea	#<$0
	pea	#<$f
	pei	<L110+title_0+2
	pei	<L110+title_0
	lda	<L110+by_0
	ina
	pha
	clc
	lda	#$2
	adc	<L110+bx_0
	pha
	jsl	~~k_put_string
;			//k_put_char(bx     ,k,WIN_BORDER_CHAR_CORNER_EDGE,15,0);
;			//k_put_char(bx+bw-1,k,WIN_BORDER_CHAR_CORNER_EDGE,15,0);
;
;		}
	.line	332
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
	brl	L10026
L10021:
	.line	344
;		{
	clc
	lda	<L110+by_0
	adc	<L110+bh_0
	sta	<R0
	clc
	lda	#$ffff
	adc	<R0
	sta	<R1
	lda	<R1
	cmp	<L111+k_1
	beq	L118
	brl	L10027
L118:
	.line	345
;			for(i=bx;i<(bx+bw-1);i++)
	.line	346
	lda	<L110+bx_0
	sta	<L111+i_1
	brl	L10031
L10030:
;			{
	.line	347
;				k_put_char(i,k,WIN_BORDER_CHAR_BOTTOM,15,0);
	.line	348
	pea	#<$0
	pea	#<$f
	pea	#<$c4
	pei	<L111+k_1
	pei	<L111+i_1
	jsl	~~k_put_char
;			}
	.line	349
L10028:
	inc	<L111+i_1
L10031:
	clc
	lda	<L110+bx_0
	adc	<L110+bw_0
	sta	<R0
	clc
	lda	#$ffff
	adc	<R0
	sta	<R1
	sec
	lda	<L111+i_1
	sbc	<R1
	bvs	L119
	eor	#$8000
L119:
	bmi	L120
	brl	L10030
L120:
L10029:
;			k_put_char(bx     ,k,WIN_BORDER_CHAR_CORNER_BLEFT,15,0);
	.line	350
	pea	#<$0
	pea	#<$f
	pea	#<$d3
	pei	<L111+k_1
	pei	<L110+bx_0
	jsl	~~k_put_char
;			k_put_char(bx+bw-1,k,WIN_BORDER_CHAR_CORNER_BRIGHT,15,0);
	.line	351
	pea	#<$0
	pea	#<$f
	pea	#<$d3
	pei	<L111+k_1
	clc
	lda	<L110+bx_0
	adc	<L110+bw_0
	sta	<R0
	clc
	lda	#$ffff
	adc	<R0
	pha
	jsl	~~k_put_char
;		}
	.line	352
;		else
	brl	L10032
L10027:
;		{
	.line	354
;			k_put_char(bx     ,k,WIN_BORDER_CHAR_EDGE,15,0);
	.line	355
	pea	#<$0
	pea	#<$f
	pea	#<$ba
	pei	<L111+k_1
	pei	<L110+bx_0
	jsl	~~k_put_char
;			k_put_char(bx+bw-1,k,WIN_BORDER_CHAR_EDGE,15,0);
	.line	356
	pea	#<$0
	pea	#<$f
	pea	#<$ba
	pei	<L111+k_1
	clc
	lda	<L110+bx_0
	adc	<L110+bw_0
	sta	<R0
	clc
	lda	#$ffff
	adc	<R0
	pha
	jsl	~~k_put_char
;		}
	.line	357
L10032:
L10026:
;	}
	.line	358
L10017:
	inc	<L111+k_1
L10020:
	clc
	lda	<L110+by_0
	adc	<L110+bh_0
	sta	<R0
	sec
	lda	<L111+k_1
	sbc	<R0
	bvs	L121
	eor	#$8000
L121:
	bmi	L122
	brl	L10019
L122:
L10018:
;
;	k_put_char(0,1,'x',5,0);
	.line	360
	pea	#<$0
	pea	#<$5
	pea	#<$78
	pea	#<$1
	pea	#<$0
	jsl	~~k_put_char
;
;}
	.line	362
L123:
	lda	<L110+2
	sta	<L110+2+12
	lda	<L110+1
	sta	<L110+1+12
	pld
	tsc
	clc
	adc	#L110+12
	tcs
	rtl
	.endblock	362
L110	equ	12
L111	equ	9
	ends
	efunc
	.endfunc	362,9,12
	.line	362
;
;void k_window_draw_background(int bx,int by, int bw,int bh,char bcolor)
;{
	.line	364
	.line	365
	code
	xdef	~~k_window_draw_background
	func
	.function	365
~~k_window_draw_background:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L124
	tcs
	phd
	tcd
bx_0	set	4
by_0	set	6
bw_0	set	8
bh_0	set	10
bcolor_0	set	12
	.block	365
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
	stz	<L125+i_1
	stz	<L125+k_1
	.line	369
	pea	#<$0
	pea	#<$5
	pea	#<$77
	pea	#<$1
	pea	#<$0
	jsl	~~k_put_char
;
;	for(k=by;k<(by + bh);k++)
	.line	371
	lda	<L124+by_0
	sta	<L125+k_1
	brl	L10036
L10035:
;	{
	.line	372
;		k_put_char(0,1,'u',5,0);
	.line	373
	pea	#<$0
	pea	#<$5
	pea	#<$75
	pea	#<$1
	pea	#<$0
	jsl	~~k_put_char
;		for(i=bx;i<(bx+bw);i++)
	.line	374
	lda	<L124+bx_0
	sta	<L125+i_1
	brl	L10040
L10039:
;		{
	.line	375
;			//k_set_background(i,k,bcolor);
;			k_put_char(i,k,' ',0,15);
	.line	377
	pea	#<$f
	pea	#<$0
	pea	#<$20
	pei	<L125+k_1
	pei	<L125+i_1
	jsl	~~k_put_char
;			k_put_char(0,1,'t',5,0);
	.line	378
	pea	#<$0
	pea	#<$5
	pea	#<$74
	pea	#<$1
	pea	#<$0
	jsl	~~k_put_char
;		}
	.line	379
L10037:
	inc	<L125+i_1
L10040:
	clc
	lda	<L124+bx_0
	adc	<L124+bw_0
	sta	<R0
	sec
	lda	<L125+i_1
	sbc	<R0
	bvs	L127
	eor	#$8000
L127:
	bmi	L128
	brl	L10039
L128:
L10038:
;	}
	.line	380
L10033:
	inc	<L125+k_1
L10036:
	clc
	lda	<L124+by_0
	adc	<L124+bh_0
	sta	<R0
	sec
	lda	<L125+k_1
	sbc	<R0
	bvs	L129
	eor	#$8000
L129:
	bmi	L130
	brl	L10035
L130:
L10034:
;
;	k_put_char(0,1,'v',5,0);
	.line	382
	pea	#<$0
	pea	#<$5
	pea	#<$76
	pea	#<$1
	pea	#<$0
	jsl	~~k_put_char
;}
	.line	383
L131:
	lda	<L124+2
	sta	<L124+2+10
	lda	<L124+1
	sta	<L124+1+10
	pld
	tsc
	clc
	adc	#L124+10
	tcs
	rtl
	.endblock	383
L124	equ	8
L125	equ	5
	ends
	efunc
	.endfunc	383,5,8
	.line	383
;
;
	.line	384
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxconsole.c",364
	xref	~~k_debug_string
	xref	~~strcpy
	xref	~~memset
	udata
~~consolespinctx
	ds	6
	ends
	udata
~~_k_window_list
	ds	1660
	ends
	.sym	~~k_set_background,~~k_set_background,65,2,0
	.sym	~~k_debug_string,~~k_debug_string,69,18,0
	.sym	~~consolespinner,~~consolespinner,110,3,0,4
	.sym	~~consolespinctx,~~consolespinctx,10,3,48,44
	.sym	~~_k_window_list,~~_k_window_list,106,3,0,27,10
	.sym	~~_k_window_index,~~_k_window_index,5,3,16
	.sym	~~k_window_draw_background,~~k_window_draw_background,65,2,0
	.sym	~~k_create_text_window,~~k_create_text_window,65,2,0
	.sym	~~k_window_draw,~~k_window_draw,65,2,0
	.sym	~~k_text_mode_dialog,~~k_text_mode_dialog,65,2,0
	.sym	~~k_put_color,~~k_put_color,69,2,0
	.sym	~~k_put_string,~~k_put_string,69,2,0
	.sym	~~k_put_char,~~k_put_char,65,2,0
	.sym	~~k_clear_screen,~~k_clear_screen,65,2,0
	.sym	~~k_set_cursor_position,~~k_set_cursor_position,65,2,0
	.sym	~~k_enable_text_cursor,~~k_enable_text_cursor,65,2,0
	.sym	~~k_set_text_font_page,~~k_set_text_font_page,65,2,0
	.sym	~~k_set_border_color,~~k_set_border_color,65,2,0
	.sym	~~k_disable_border,~~k_disable_border,65,2,0
	.sym	~~k_enable_border,~~k_enable_border,65,2,0
	.sym	~~k_get_lines_max,~~k_get_lines_max,69,2,0
	.sym	~~k_get_lines_visible,~~k_get_lines_visible,69,2,0
	.sym	~~k_get_cols_per_line,~~k_get_cols_per_line,69,2,0
	.sym	~~k_get_cols_visible,~~k_get_cols_visible,69,2,0
	.sym	~~k_initialize_text_fonts,~~k_initialize_text_fonts,69,2,0
	.sym	~~k_enable_text_mode,~~k_enable_text_mode,65,2,0
	.sym	~~k_initialize_text,~~k_initialize_text,65,2,0
	.sym	~~k_updatespinner,~~k_updatespinner,65,2,0
	.sym	~~k_init_spinner,~~k_init_spinner,65,2,0
	.sym	PCOMMANDARGS,0,138,14,32,47
	.sym	COMMANDARGS,0,10,14,64,47
	.sym	PTOKENIZESTATE,0,133,14,32
	.sym	TOKENIZESTATE,0,5,14,16
	.sym	PTOKEN,0,138,14,32,46
	.sym	TOKEN,0,10,14,64,46
	.sym	PTOKENTYPE,0,133,14,32
	.sym	TOKENTYPE,0,5,14,16
	.sym	FXCommandHandler,0,656,14,32
	.sym	PCONSOLECTX,0,138,14,32,45
	.sym	CONSOLECTX,0,10,14,1144,45
	.sym	PSPINNERCTX,0,138,14,32,44
	.sym	SPINNERCTX,0,10,14,48,44
	.sym	PFXSTRING,0,138,14,32,43
	.sym	FXSTRING,0,10,14,64,43
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
	.sym	ldiv_t,0,10,14,64,2
	.sym	div_t,0,10,14,32,1
	.sym	wctype_t,0,16,14,16
	.sym	wint_t,0,16,14,16
	.sym	wchar_t,0,14,14,8
	.sym	ptrdiff_t,0,7,14,32
	.sym	~~strcpy,~~strcpy,1102,18,32
	.sym	~~memset,~~memset,1089,18,32
	.sym	Boolean_T,0,5,14,16
	.sym	size_t,0,16,14,16
	end

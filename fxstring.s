;:ts=8
R0	equ	1
R1	equ	5
R2	equ	9
R3	equ	13
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxstring.c",0
;
;#include "fxstring.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxstring.h",0
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxstring.h",5
	.file	"G:\devtools\WDCTools\wdc\Tools\include\string.h",0
	.line	134
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxstring.h",6
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxstring.h",7
	.stag	_fx_string,64,43
	.member	size,0,16,8,16
	.member	pos,16,5,8,16
	.member	buffer,32,142,8,32
	.eos
	.line	69
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxstring.c",2
;#include <stdlib.h>
	.file	"G:\devtools\WDCTools\wdc\Tools\include\stdlib.h",0
	.line	205
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxstring.c",3
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
	.line	11
	.line	12
	code
	xdef	~~strupr
	func
	.function	12
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
	.block	12
;  char	*p;
;
;  for (p = s; *p; ++p)
p_1	set	0
	.sym	p,0,142,1,32
	.sym	s,4,142,6,32
	.line	15
	lda	<L2+s_0
	sta	<L3+p_1
	lda	<L2+s_0+2
	sta	<L3+p_1+2
	brl	L10004
L10003:
;    *p = toupper(*p);
	.line	16
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
	.line	18
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
	.line	20
	.endblock	20
L2	equ	4
L3	equ	1
	ends
	efunc
	.endfunc	20,1,4
	.line	20
;
;/* -------------------------------------------------------------------- */
;char * strlower(char * s)
;{
	.line	23
	.line	24
	code
	xdef	~~strlower
	func
	.function	24
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
	.block	24
;  char	*p;
;
;  for (p = s; *p; ++p)
p_1	set	0
	.sym	p,0,142,1,32
	.sym	s,4,142,6,32
	.line	27
	lda	<L8+s_0
	sta	<L9+p_1
	lda	<L8+s_0+2
	sta	<L9+p_1+2
	brl	L10008
L10007:
;    *p = tolower(*p);
	.line	28
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
	.line	30
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
	.line	32
	.endblock	32
L8	equ	4
L9	equ	1
	ends
	efunc
	.endfunc	32,1,4
	.line	32
;
;char FAR * k_pad_string(char FAR * dest,char FAR * src,char filler,int width)
;{
	.line	34
	.line	35
	code
	xdef	~~k_pad_string
	func
	.function	35
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
	.block	35
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
	.line	38
	lda	<L14+width_0
	ina
	pha
	pea	#<$0
	pei	<L14+dest_0+2
	pei	<L14+dest_0
	jsl	~~memset
;	memset(dest,filler,width);
	.line	39
	pei	<L14+width_0
	lda	<L14+filler_0
	and	#$ff
	pha
	pei	<L14+dest_0+2
	pei	<L14+dest_0
	jsl	~~memset
;
;	len = strlen(src);
	.line	41
	pei	<L14+src_0+2
	pei	<L14+src_0
	jsl	~~strlen
	sta	<L15+len_1
;
;	if(len > width)
	.line	43
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
	.line	44
	lda	<L14+width_0
	sta	<L15+len_1
;
;	memcpy(&dest[width - len],src,len);
L10009:
	.line	46
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
	.line	48
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
	.line	49
	.endblock	49
L14	equ	10
L15	equ	9
	ends
	efunc
	.endfunc	49,9,10
	.line	49
;/*
; *
; *
; *
; *
; */
;PFAR k_inttodec(UINT b,char FAR *bhbuffer)
;{
	.line	56
	.line	57
	code
	xdef	~~k_inttodec
	func
	.function	57
~~k_inttodec:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L21
	tcs
	phd
	tcd
b_0	set	4
bhbuffer_0	set	6
	.block	57
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
	stz	<L22+tthou_1
	stz	<L22+thou_1
	stz	<L22+hund_1
	stz	<L22+tens_1
	stz	<L22+ones_1
	.line	64
	sep	#$20
	longa	off
	lda	#$30
	sta	[<L21+bhbuffer_0]
	rep	#$20
	longa	on
;	bhbuffer[1] = '0';
	.line	65
	sep	#$20
	longa	off
	lda	#$30
	ldy	#$1
	sta	[<L21+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[2] = '0';
	.line	66
	sep	#$20
	longa	off
	lda	#$30
	ldy	#$2
	sta	[<L21+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[3] = '0';
	.line	67
	sep	#$20
	longa	off
	lda	#$30
	ldy	#$3
	sta	[<L21+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[4] = '0';
	.line	68
	sep	#$20
	longa	off
	lda	#$30
	ldy	#$4
	sta	[<L21+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[5] = 0;
	.line	69
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$5
	sta	[<L21+bhbuffer_0],Y
	rep	#$20
	longa	on
;
;	tthou = (int)((b / 10000));
	.line	71
	lda	<L21+b_0
	ldx	#<$2710
	xref	~~~udv
	jsl	~~~udv
	sta	<L22+tthou_1
;	b = (b - 10000*tthou);
	.line	72
	lda	<L22+tthou_1
	ldx	#<$2710
	xref	~~~mul
	jsl	~~~mul
	sta	<R0
	sec
	lda	<L21+b_0
	sbc	<R0
	sta	<L21+b_0
;	thou = (int)((b / 1000));
	.line	73
	lda	<L21+b_0
	ldx	#<$3e8
	xref	~~~udv
	jsl	~~~udv
	sta	<L22+thou_1
;	b = (b - 1000*thou);
	.line	74
	lda	<L22+thou_1
	ldx	#<$3e8
	xref	~~~mul
	jsl	~~~mul
	sta	<R0
	sec
	lda	<L21+b_0
	sbc	<R0
	sta	<L21+b_0
;	hund = (int)((b / 100));
	.line	75
	lda	<L21+b_0
	ldx	#<$64
	xref	~~~udv
	jsl	~~~udv
	sta	<L22+hund_1
;	b = (b - 100*hund);
	.line	76
	lda	<L22+hund_1
	ldx	#<$64
	xref	~~~mul
	jsl	~~~mul
	sta	<R0
	sec
	lda	<L21+b_0
	sbc	<R0
	sta	<L21+b_0
;	tens = (int)((b / 10));
	.line	77
	lda	<L21+b_0
	ldx	#<$a
	xref	~~~udv
	jsl	~~~udv
	sta	<L22+tens_1
;	b = (b - 10*tens);
	.line	78
	lda	<L22+tens_1
	asl	A
	asl	A
	adc	<L22+tens_1
	asl	A
	sta	<R0
	sec
	lda	<L21+b_0
	sbc	<R0
	sta	<L21+b_0
;	ones = (int)b;
	.line	79
	lda	<L21+b_0
	sta	<L22+ones_1
;
;	bhbuffer[0] = bytetodec[tthou];
	.line	81
	sep	#$20
	longa	off
	ldx	<L22+tthou_1
	lda	|~~bytetodec,X
	sta	[<L21+bhbuffer_0]
	rep	#$20
	longa	on
;	bhbuffer[1] = bytetodec[thou];
	.line	82
	sep	#$20
	longa	off
	ldx	<L22+thou_1
	lda	|~~bytetodec,X
	ldy	#$1
	sta	[<L21+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[2] = bytetodec[hund];
	.line	83
	sep	#$20
	longa	off
	ldx	<L22+hund_1
	lda	|~~bytetodec,X
	ldy	#$2
	sta	[<L21+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[3] = bytetodec[tens];
	.line	84
	sep	#$20
	longa	off
	ldx	<L22+tens_1
	lda	|~~bytetodec,X
	ldy	#$3
	sta	[<L21+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[4] = bytetodec[ones];
	.line	85
	sep	#$20
	longa	off
	ldx	<L22+ones_1
	lda	|~~bytetodec,X
	ldy	#$4
	sta	[<L21+bhbuffer_0],Y
	rep	#$20
	longa	on
;
;	return bhbuffer;
	.line	87
	ldx	<L21+bhbuffer_0+2
	lda	<L21+bhbuffer_0
L24:
	tay
	lda	<L21+2
	sta	<L21+2+6
	lda	<L21+1
	sta	<L21+1+6
	pld
	tsc
	clc
	adc	#L21+6
	tcs
	tya
	rtl
;}
	.line	88
	.endblock	88
L21	equ	14
L22	equ	5
	ends
	efunc
	.endfunc	88,5,14
	.line	88
;/*
; *
; *
; *
; *
; */
;PFAR k_longtodec(ULONG b,char FAR *bhbuffer)
;{
	.line	95
	.line	96
	code
	xdef	~~k_longtodec
	func
	.function	96
~~k_longtodec:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L25
	tcs
	phd
	tcd
b_0	set	4
bhbuffer_0	set	8
	.block	96
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
	stz	<L26+bill_1
	stz	<L26+hmill_1
	stz	<L26+tmill_1
	stz	<L26+mill_1
	stz	<L26+hthou_1
	stz	<L26+tthou_1
	stz	<L26+thou_1
	stz	<L26+hund_1
	stz	<L26+tens_1
	stz	<L26+ones_1
	.line	109
	sep	#$20
	longa	off
	lda	#$30
	sta	[<L25+bhbuffer_0]
	rep	#$20
	longa	on
;	bhbuffer[1] = '0';
	.line	110
	sep	#$20
	longa	off
	lda	#$30
	ldy	#$1
	sta	[<L25+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[2] = '0';
	.line	111
	sep	#$20
	longa	off
	lda	#$30
	ldy	#$2
	sta	[<L25+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[3] = '0';
	.line	112
	sep	#$20
	longa	off
	lda	#$30
	ldy	#$3
	sta	[<L25+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[4] = '0';
	.line	113
	sep	#$20
	longa	off
	lda	#$30
	ldy	#$4
	sta	[<L25+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[5] = '0';
	.line	114
	sep	#$20
	longa	off
	lda	#$30
	ldy	#$5
	sta	[<L25+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[6] = '0';
	.line	115
	sep	#$20
	longa	off
	lda	#$30
	ldy	#$6
	sta	[<L25+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[7] = '0';
	.line	116
	sep	#$20
	longa	off
	lda	#$30
	ldy	#$7
	sta	[<L25+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[8] = '0';
	.line	117
	sep	#$20
	longa	off
	lda	#$30
	ldy	#$8
	sta	[<L25+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[9] = '0';
	.line	118
	sep	#$20
	longa	off
	lda	#$30
	ldy	#$9
	sta	[<L25+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[10] = 0;
	.line	119
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$a
	sta	[<L25+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[11] = 0;
	.line	120
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$b
	sta	[<L25+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[12] = 0;
	.line	121
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$c
	sta	[<L25+bhbuffer_0],Y
	rep	#$20
	longa	on
;
;	bill = (int)((b / 1000000000L));
	.line	123
	pea	#^$3b9aca00
	pea	#<$3b9aca00
	pei	<L25+b_0+2
	pei	<L25+b_0
	xref	~~~ludv
	jsl	~~~ludv
	sta	<R0
	stx	<R0+2
	lda	<R0
	sta	<L26+bill_1
;	b = (b - 1000000000L*bill);
	.line	124
	ldy	#$0
	lda	<L26+bill_1
	bpl	L28
	dey
L28:
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
	lda	<L25+b_0
	sbc	<R0
	sta	<L25+b_0
	lda	<L25+b_0+2
	sbc	<R0+2
	sta	<L25+b_0+2
;
;	hmill = (int)((b / 100000000L));
	.line	126
	pea	#^$5f5e100
	pea	#<$5f5e100
	pei	<L25+b_0+2
	pei	<L25+b_0
	xref	~~~ludv
	jsl	~~~ludv
	sta	<R0
	stx	<R0+2
	lda	<R0
	sta	<L26+hmill_1
;	b = (b - 100000000L*hmill);
	.line	127
	ldy	#$0
	lda	<L26+hmill_1
	bpl	L29
	dey
L29:
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
	lda	<L25+b_0
	sbc	<R0
	sta	<L25+b_0
	lda	<L25+b_0+2
	sbc	<R0+2
	sta	<L25+b_0+2
;
;	tmill = (int)((b / 10000000L));
	.line	129
	pea	#^$989680
	pea	#<$989680
	pei	<L25+b_0+2
	pei	<L25+b_0
	xref	~~~ludv
	jsl	~~~ludv
	sta	<R0
	stx	<R0+2
	lda	<R0
	sta	<L26+tmill_1
;	b = (b - 10000000L*tmill);
	.line	130
	ldy	#$0
	lda	<L26+tmill_1
	bpl	L30
	dey
L30:
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
	lda	<L25+b_0
	sbc	<R0
	sta	<L25+b_0
	lda	<L25+b_0+2
	sbc	<R0+2
	sta	<L25+b_0+2
;
;	mill = (int)((b / 1000000L));
	.line	132
	pea	#^$f4240
	pea	#<$f4240
	pei	<L25+b_0+2
	pei	<L25+b_0
	xref	~~~ludv
	jsl	~~~ludv
	sta	<R0
	stx	<R0+2
	lda	<R0
	sta	<L26+mill_1
;	b = (b - 1000000L*mill);
	.line	133
	ldy	#$0
	lda	<L26+mill_1
	bpl	L31
	dey
L31:
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
	lda	<L25+b_0
	sbc	<R0
	sta	<L25+b_0
	lda	<L25+b_0+2
	sbc	<R0+2
	sta	<L25+b_0+2
;
;	hthou = (int)((b / 100000L));
	.line	135
	pea	#^$186a0
	pea	#<$186a0
	pei	<L25+b_0+2
	pei	<L25+b_0
	xref	~~~ludv
	jsl	~~~ludv
	sta	<R0
	stx	<R0+2
	lda	<R0
	sta	<L26+hthou_1
;	b = (b - 100000L*hthou);
	.line	136
	ldy	#$0
	lda	<L26+hthou_1
	bpl	L32
	dey
L32:
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
	lda	<L25+b_0
	sbc	<R0
	sta	<L25+b_0
	lda	<L25+b_0+2
	sbc	<R0+2
	sta	<L25+b_0+2
;
;
;	tthou = (int)((b / 10000L));
	.line	139
	pea	#^$2710
	pea	#<$2710
	pei	<L25+b_0+2
	pei	<L25+b_0
	xref	~~~ludv
	jsl	~~~ludv
	sta	<R0
	stx	<R0+2
	lda	<R0
	sta	<L26+tthou_1
;	b = (b - 10000L*tthou);
	.line	140
	ldy	#$0
	lda	<L26+tthou_1
	bpl	L33
	dey
L33:
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
	lda	<L25+b_0
	sbc	<R0
	sta	<L25+b_0
	lda	<L25+b_0+2
	sbc	<R0+2
	sta	<L25+b_0+2
;	thou = (int)((b / 1000L));
	.line	141
	pea	#^$3e8
	pea	#<$3e8
	pei	<L25+b_0+2
	pei	<L25+b_0
	xref	~~~ludv
	jsl	~~~ludv
	sta	<R0
	stx	<R0+2
	lda	<R0
	sta	<L26+thou_1
;	b = (b - 1000L*thou);
	.line	142
	ldy	#$0
	lda	<L26+thou_1
	bpl	L34
	dey
L34:
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
	lda	<L25+b_0
	sbc	<R0
	sta	<L25+b_0
	lda	<L25+b_0+2
	sbc	<R0+2
	sta	<L25+b_0+2
;	hund = (int)((b / 100L));
	.line	143
	pea	#^$64
	pea	#<$64
	pei	<L25+b_0+2
	pei	<L25+b_0
	xref	~~~ludv
	jsl	~~~ludv
	sta	<R0
	stx	<R0+2
	lda	<R0
	sta	<L26+hund_1
;	b = (b - 100L*hund);
	.line	144
	ldy	#$0
	lda	<L26+hund_1
	bpl	L35
	dey
L35:
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
	lda	<L25+b_0
	sbc	<R0
	sta	<L25+b_0
	lda	<L25+b_0+2
	sbc	<R0+2
	sta	<L25+b_0+2
;	tens = (int)((b / 10L));
	.line	145
	pea	#^$a
	pea	#<$a
	pei	<L25+b_0+2
	pei	<L25+b_0
	xref	~~~ludv
	jsl	~~~ludv
	sta	<R0
	stx	<R0+2
	lda	<R0
	sta	<L26+tens_1
;	b = (b - 10L*tens);
	.line	146
	ldy	#$0
	lda	<L26+tens_1
	bpl	L36
	dey
L36:
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
	lda	<L25+b_0
	sbc	<R0
	sta	<L25+b_0
	lda	<L25+b_0+2
	sbc	<R0+2
	sta	<L25+b_0+2
;	ones = (int)b;
	.line	147
	lda	<L25+b_0
	sta	<L26+ones_1
;
;	bhbuffer[0] = bytetodec[bill];
	.line	149
	sep	#$20
	longa	off
	ldx	<L26+bill_1
	lda	|~~bytetodec,X
	sta	[<L25+bhbuffer_0]
	rep	#$20
	longa	on
;	bhbuffer[1] = bytetodec[hmill];
	.line	150
	sep	#$20
	longa	off
	ldx	<L26+hmill_1
	lda	|~~bytetodec,X
	ldy	#$1
	sta	[<L25+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[2] = bytetodec[tmill];
	.line	151
	sep	#$20
	longa	off
	ldx	<L26+tmill_1
	lda	|~~bytetodec,X
	ldy	#$2
	sta	[<L25+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[3] = bytetodec[mill];
	.line	152
	sep	#$20
	longa	off
	ldx	<L26+mill_1
	lda	|~~bytetodec,X
	ldy	#$3
	sta	[<L25+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[4] = bytetodec[hthou];
	.line	153
	sep	#$20
	longa	off
	ldx	<L26+hthou_1
	lda	|~~bytetodec,X
	ldy	#$4
	sta	[<L25+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[5] = bytetodec[tthou];
	.line	154
	sep	#$20
	longa	off
	ldx	<L26+tthou_1
	lda	|~~bytetodec,X
	ldy	#$5
	sta	[<L25+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[6] = bytetodec[thou];
	.line	155
	sep	#$20
	longa	off
	ldx	<L26+thou_1
	lda	|~~bytetodec,X
	ldy	#$6
	sta	[<L25+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[7] = bytetodec[hund];
	.line	156
	sep	#$20
	longa	off
	ldx	<L26+hund_1
	lda	|~~bytetodec,X
	ldy	#$7
	sta	[<L25+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[8] = bytetodec[tens];
	.line	157
	sep	#$20
	longa	off
	ldx	<L26+tens_1
	lda	|~~bytetodec,X
	ldy	#$8
	sta	[<L25+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[9] = bytetodec[ones];
	.line	158
	sep	#$20
	longa	off
	ldx	<L26+ones_1
	lda	|~~bytetodec,X
	ldy	#$9
	sta	[<L25+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[10] = 0;
	.line	159
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$a
	sta	[<L25+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[11] = 0;
	.line	160
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$b
	sta	[<L25+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[12] = 0;
	.line	161
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$c
	sta	[<L25+bhbuffer_0],Y
	rep	#$20
	longa	on
;
;	return bhbuffer;
	.line	163
	ldx	<L25+bhbuffer_0+2
	lda	<L25+bhbuffer_0
L37:
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
	.line	164
	.endblock	164
L25	equ	24
L26	equ	5
	ends
	efunc
	.endfunc	164,5,24
	.line	164
;/*
; *
; *
; *
; *
; */
;PFAR k_bytetodec(UCHAR b,char FAR *bhbuffer)
;{
	.line	171
	.line	172
	code
	xdef	~~k_bytetodec
	func
	.function	172
~~k_bytetodec:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L38
	tcs
	phd
	tcd
b_0	set	4
bhbuffer_0	set	6
	.block	172
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
	stz	<L39+hund_1
	stz	<L39+tens_1
	stz	<L39+ones_1
	.line	177
	sep	#$20
	longa	off
	lda	#$30
	sta	[<L38+bhbuffer_0]
	rep	#$20
	longa	on
;	bhbuffer[1] = '0';
	.line	178
	sep	#$20
	longa	off
	lda	#$30
	ldy	#$1
	sta	[<L38+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[2] = '0';
	.line	179
	sep	#$20
	longa	off
	lda	#$30
	ldy	#$2
	sta	[<L38+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[3] = 0;
	.line	180
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$3
	sta	[<L38+bhbuffer_0],Y
	rep	#$20
	longa	on
;
;	hund = (int)((b / 100));
	.line	182
	lda	<L38+b_0
	and	#$ff
	sta	<R0
	lda	<R0
	ldx	#<$64
	xref	~~~div
	jsl	~~~div
	sta	<L39+hund_1
;	b = (b - 100*hund);
	.line	183
	lda	<L39+hund_1
	ldx	#<$64
	xref	~~~mul
	jsl	~~~mul
	sta	<R0
	lda	<L38+b_0
	and	#$ff
	sta	<R1
	sec
	lda	<R1
	sbc	<R0
	sta	<R2
	sep	#$20
	longa	off
	lda	<R2
	sta	<L38+b_0
	rep	#$20
	longa	on
;	tens = (int)((b / 10));
	.line	184
	lda	<L38+b_0
	and	#$ff
	sta	<R0
	lda	<R0
	ldx	#<$a
	xref	~~~div
	jsl	~~~div
	sta	<L39+tens_1
;	b = (b - 10*tens);
	.line	185
	lda	<L39+tens_1
	asl	A
	asl	A
	adc	<L39+tens_1
	asl	A
	sta	<R0
	lda	<L38+b_0
	and	#$ff
	sta	<R1
	sec
	lda	<R1
	sbc	<R0
	sta	<R2
	sep	#$20
	longa	off
	lda	<R2
	sta	<L38+b_0
	rep	#$20
	longa	on
;	ones = (int)b;
	.line	186
	lda	<L38+b_0
	and	#$ff
	sta	<L39+ones_1
;
;	bhbuffer[0] = bytetodec[hund];
	.line	188
	sep	#$20
	longa	off
	ldx	<L39+hund_1
	lda	|~~bytetodec,X
	sta	[<L38+bhbuffer_0]
	rep	#$20
	longa	on
;	bhbuffer[1] = bytetodec[tens];
	.line	189
	sep	#$20
	longa	off
	ldx	<L39+tens_1
	lda	|~~bytetodec,X
	ldy	#$1
	sta	[<L38+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[2] = bytetodec[ones];
	.line	190
	sep	#$20
	longa	off
	ldx	<L39+ones_1
	lda	|~~bytetodec,X
	ldy	#$2
	sta	[<L38+bhbuffer_0],Y
	rep	#$20
	longa	on
;
;	return bhbuffer;
	.line	192
	ldx	<L38+bhbuffer_0+2
	lda	<L38+bhbuffer_0
L41:
	tay
	lda	<L38+2
	sta	<L38+2+6
	lda	<L38+1
	sta	<L38+1+6
	pld
	tsc
	clc
	adc	#L38+6
	tcs
	tya
	rtl
;}
	.line	193
	.endblock	193
L38	equ	18
L39	equ	13
	ends
	efunc
	.endfunc	193,13,18
	.line	193
;/*
; *
; *
; *
; *
; */
;PFAR k_bytetohex(UCHAR b,char FAR *bhbuffer)
;{
	.line	200
	.line	201
	code
	xdef	~~k_bytetohex
	func
	.function	201
~~k_bytetohex:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L42
	tcs
	phd
	tcd
b_0	set	4
bhbuffer_0	set	6
	.block	201
;	bhbuffer[0] = '0';
	.sym	b,4,14,6,8
	.sym	bhbuffer,6,142,6,32
	.line	202
	sep	#$20
	longa	off
	lda	#$30
	sta	[<L42+bhbuffer_0]
	rep	#$20
	longa	on
;	bhbuffer[1] = '0';
	.line	203
	sep	#$20
	longa	off
	lda	#$30
	ldy	#$1
	sta	[<L42+bhbuffer_0],Y
	rep	#$20
	longa	on
;	bhbuffer[2] = 0;
	.line	204
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$2
	sta	[<L42+bhbuffer_0],Y
	rep	#$20
	longa	on
;
;
;	bhbuffer[0] = bytetohex[(unsigned)((b & 0xF0) >> 4)];
	.line	207
	lda	<L42+b_0
	and	#<$f0
	ldx	#<$4
	xref	~~~asr
	jsl	~~~asr
	sta	<R0
	sep	#$20
	longa	off
	ldx	<R0
	lda	|~~bytetohex,X
	sta	[<L42+bhbuffer_0]
	rep	#$20
	longa	on
;	bhbuffer[1] = bytetohex[(unsigned)(b & 0x0F)];
	.line	208
	lda	<L42+b_0
	and	#<$f
	sta	<R0
	sep	#$20
	longa	off
	ldx	<R0
	lda	|~~bytetohex,X
	ldy	#$1
	sta	[<L42+bhbuffer_0],Y
	rep	#$20
	longa	on
;
;	return bhbuffer;
	.line	210
	ldx	<L42+bhbuffer_0+2
	lda	<L42+bhbuffer_0
L45:
	tay
	lda	<L42+2
	sta	<L42+2+6
	lda	<L42+1
	sta	<L42+1+6
	pld
	tsc
	clc
	adc	#L42+6
	tcs
	tya
	rtl
;}
	.line	211
	.endblock	211
L42	equ	4
L43	equ	5
	ends
	efunc
	.endfunc	211,5,4
	.line	211
;
;/*
; *
; *
; *
; *
; */
;PFAR k_strip_padding(PFAR orgText)
;{
	.line	219
	.line	220
	code
	xdef	~~k_strip_padding
	func
	.function	220
~~k_strip_padding:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L46
	tcs
	phd
	tcd
orgText_0	set	4
	.block	220
;	PFAR p = orgText;
;	while(*p)
p_1	set	0
	.sym	p,0,142,1,32
	.sym	orgText,4,142,6,32
	lda	<L46+orgText_0
	sta	<L47+p_1
	lda	<L46+orgText_0+2
	sta	<L47+p_1+2
	.line	222
L10010:
	lda	[<L47+p_1]
	and	#$ff
	bne	L49
	brl	L10011
L49:
;	{
	.line	223
;		if(*p != '0')
	.line	224
;		{
	sep	#$20
	longa	off
	lda	[<L47+p_1]
	cmp	#<$30
	rep	#$20
	longa	on
	bne	L50
	brl	L10012
L50:
	.line	225
;			break;
	.line	226
	brl	L10011
;		}
	.line	227
;		p++;
L10012:
	.line	228
	inc	<L47+p_1
	bne	L51
	inc	<L47+p_1+2
L51:
;	}
	.line	229
	brl	L10010
L10011:
;
;	return p;
	.line	231
	ldx	<L47+p_1+2
	lda	<L47+p_1
L52:
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
	.line	232
	.endblock	232
L46	equ	4
L47	equ	1
	ends
	efunc
	.endfunc	232,1,4
	.line	232
;/*
; *
; *
; *
; *
; */
;PFAR k_replace_padding(PFAR orgText,CHAR replacement)
;{
	.line	239
	.line	240
	code
	xdef	~~k_replace_padding
	func
	.function	240
~~k_replace_padding:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L53
	tcs
	phd
	tcd
orgText_0	set	4
replacement_0	set	8
	.block	240
;	PFAR p = orgText;
;	while(*p)
p_1	set	0
	.sym	p,0,142,1,32
	.sym	orgText,4,142,6,32
	.sym	replacement,8,14,6,8
	lda	<L53+orgText_0
	sta	<L54+p_1
	lda	<L53+orgText_0+2
	sta	<L54+p_1+2
	.line	242
L10013:
	lda	[<L54+p_1]
	and	#$ff
	bne	L56
	brl	L10014
L56:
;	{
	.line	243
;		if(*p == '0')
	.line	244
;		{
	sep	#$20
	longa	off
	lda	[<L54+p_1]
	cmp	#<$30
	rep	#$20
	longa	on
	beq	L57
	brl	L10015
L57:
	.line	245
;			*p = replacement;
	.line	246
	sep	#$20
	longa	off
	lda	<L53+replacement_0
	sta	[<L54+p_1]
	rep	#$20
	longa	on
;		}
	.line	247
;		p++;
L10015:
	.line	248
	inc	<L54+p_1
	bne	L58
	inc	<L54+p_1+2
L58:
;	}
	.line	249
	brl	L10013
L10014:
;
;	return orgText;
	.line	251
	ldx	<L53+orgText_0+2
	lda	<L53+orgText_0
L59:
	tay
	lda	<L53+2
	sta	<L53+2+6
	lda	<L53+1
	sta	<L53+1+6
	pld
	tsc
	clc
	adc	#L53+6
	tcs
	tya
	rtl
;}
	.line	252
	.endblock	252
L53	equ	4
L54	equ	1
	ends
	efunc
	.endfunc	252,1,4
	.line	252
;
;/*
; *
; *
; *
; *
; */
;LPCHAR k_to_uppercase(LPCHAR orgText)
;{
	.line	260
	.line	261
	code
	xdef	~~k_to_uppercase
	func
	.function	261
~~k_to_uppercase:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L60
	tcs
	phd
	tcd
orgText_0	set	4
	.block	261
;	LPCHAR p = orgText;
;	while(*p)
p_1	set	0
	.sym	p,0,142,1,32
	.sym	orgText,4,142,6,32
	lda	<L60+orgText_0
	sta	<L61+p_1
	lda	<L60+orgText_0+2
	sta	<L61+p_1+2
	.line	263
L10016:
	lda	[<L61+p_1]
	and	#$ff
	bne	L63
	brl	L10017
L63:
;	{
	.line	264
;		*p = toupper(*p);
	.line	265
	lda	[<L61+p_1]
	and	#$ff
	pha
	jsl	~~toupper
	sep	#$20
	longa	off
	sta	[<L61+p_1]
	rep	#$20
	longa	on
;		p++;
	.line	266
	inc	<L61+p_1
	bne	L64
	inc	<L61+p_1+2
L64:
;	}
	.line	267
	brl	L10016
L10017:
;
;	return orgText;
	.line	269
	ldx	<L60+orgText_0+2
	lda	<L60+orgText_0
L65:
	tay
	lda	<L60+2
	sta	<L60+2+4
	lda	<L60+1
	sta	<L60+1+4
	pld
	tsc
	clc
	adc	#L60+4
	tcs
	tya
	rtl
;}
	.line	270
	.endblock	270
L60	equ	4
L61	equ	1
	ends
	efunc
	.endfunc	270,1,4
	.line	270
;
;/*
; *
; *
; *
; *
; */
;LPCHAR k_to_lowercase(LPCHAR orgText)
;{
	.line	278
	.line	279
	code
	xdef	~~k_to_lowercase
	func
	.function	279
~~k_to_lowercase:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L66
	tcs
	phd
	tcd
orgText_0	set	4
	.block	279
;	LPCHAR p = orgText;
;	while(*p)
p_1	set	0
	.sym	p,0,142,1,32
	.sym	orgText,4,142,6,32
	lda	<L66+orgText_0
	sta	<L67+p_1
	lda	<L66+orgText_0+2
	sta	<L67+p_1+2
	.line	281
L10018:
	lda	[<L67+p_1]
	and	#$ff
	bne	L69
	brl	L10019
L69:
;	{
	.line	282
;		*p = tolower(*p);
	.line	283
	lda	[<L67+p_1]
	and	#$ff
	pha
	jsl	~~tolower
	sep	#$20
	longa	off
	sta	[<L67+p_1]
	rep	#$20
	longa	on
;		p++;
	.line	284
	inc	<L67+p_1
	bne	L70
	inc	<L67+p_1+2
L70:
;	}
	.line	285
	brl	L10018
L10019:
;
;	return orgText;
	.line	287
	ldx	<L66+orgText_0+2
	lda	<L66+orgText_0
L71:
	tay
	lda	<L66+2
	sta	<L66+2+4
	lda	<L66+1
	sta	<L66+1+4
	pld
	tsc
	clc
	adc	#L66+4
	tcs
	tya
	rtl
;}
	.line	288
	.endblock	288
L66	equ	4
L67	equ	1
	ends
	efunc
	.endfunc	288,1,4
	.line	288
;
;/*
; *
; *
; *
; *
; */
;char FAR* k_itoa(unsigned int value, char FAR*result, int base)
;{
	.line	296
	.line	297
	code
	xdef	~~k_itoa
	func
	.function	297
~~k_itoa:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L72
	tcs
	phd
	tcd
value_0	set	4
result_0	set	6
base_0	set	10
	.block	297
;	result[0] = 0;
	.sym	value,4,16,6,16
	.sym	result,6,142,6,32
	.sym	base,10,5,6,16
	.line	298
	sep	#$20
	longa	off
	lda	#$0
	sta	[<L72+result_0]
	rep	#$20
	longa	on
;
;	if(base!=10)
	.line	300
;		return result;
	lda	<L72+base_0
	cmp	#<$a
	bne	L75
	brl	L10020
L75:
	.line	301
	ldx	<L72+result_0+2
	lda	<L72+result_0
L76:
	tay
	lda	<L72+2
	sta	<L72+2+8
	lda	<L72+1
	sta	<L72+1+8
	pld
	tsc
	clc
	adc	#L72+8
	tcs
	tya
	rtl
;
;	return k_inttodec(value,result);
L10020:
	.line	303
	pei	<L72+result_0+2
	pei	<L72+result_0
	pei	<L72+value_0
	jsl	~~k_inttodec
	sta	<R0
	stx	<R0+2
	ldx	<R0+2
	lda	<R0
	brl	L76
;}
	.line	304
	.endblock	304
L72	equ	4
L73	equ	5
	ends
	efunc
	.endfunc	304,5,4
	.line	304
;//
;/// A utility function to reverse a string
;//
;void k_reverse(char FAR str[], int length)
;{
	.line	308
	.line	309
	code
	xdef	~~k_reverse
	func
	.function	309
~~k_reverse:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L77
	tcs
	phd
	tcd
str_0	set	4
length_0	set	8
	.block	309
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
	stz	<L78+t_1
	rep	#$20
	longa	on
	stz	<L78+start_1
	stz	<L78+start_1+2
	clc
	lda	#$ffff
	adc	<L77+length_0
	sta	<R0
	ldy	#$0
	lda	<R0
	bpl	L80
	dey
L80:
	sta	<L78+end_1
	sty	<L78+end_1+2
	.line	314
L10021:
	sec
	lda	<L78+start_1
	sbc	<L78+end_1
	lda	<L78+start_1+2
	sbc	<L78+end_1+2
	bvs	L81
	eor	#$8000
L81:
	bpl	L82
	brl	L10022
L82:
;    {
	.line	315
;		t = *(str+start);
	.line	316
	clc
	lda	<L77+str_0
	adc	<L78+start_1
	sta	<R0
	lda	<L77+str_0+2
	adc	<L78+start_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	[<R0]
	sta	<L78+t_1
	rep	#$20
	longa	on
;	    *(str+start) = *(str+end);
	.line	317
	clc
	lda	<L77+str_0
	adc	<L78+start_1
	sta	<R0
	lda	<L77+str_0+2
	adc	<L78+start_1+2
	sta	<R0+2
	clc
	lda	<L77+str_0
	adc	<L78+end_1
	sta	<R1
	lda	<L77+str_0+2
	adc	<L78+end_1+2
	sta	<R1+2
	sep	#$20
	longa	off
	lda	[<R1]
	sta	[<R0]
	rep	#$20
	longa	on
;		*(str+end) = t;
	.line	318
	clc
	lda	<L77+str_0
	adc	<L78+end_1
	sta	<R0
	lda	<L77+str_0+2
	adc	<L78+end_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	<L78+t_1
	sta	[<R0]
	rep	#$20
	longa	on
;
;        //swap(*(str+start), *(str+end));
;        start++;
	.line	321
	inc	<L78+start_1
	bne	L83
	inc	<L78+start_1+2
L83:
;        end--;
	.line	322
	lda	<L78+end_1
	bne	L84
	dec	<L78+end_1+2
L84:
	dec	<L78+end_1
;    }
	.line	323
	brl	L10021
L10022:
;}
	.line	324
L85:
	lda	<L77+2
	sta	<L77+2+6
	lda	<L77+1
	sta	<L77+1+6
	pld
	tsc
	clc
	adc	#L77+6
	tcs
	rtl
	.endblock	324
L77	equ	17
L78	equ	9
	ends
	efunc
	.endfunc	324,9,17
	.line	324
;
;LPCHAR k_string_trim(LPCHAR lpText)
;{
	.line	326
	.line	327
	code
	xdef	~~k_string_trim
	func
	.function	327
~~k_string_trim:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L86
	tcs
	phd
	tcd
lpText_0	set	4
	.block	327
;	return k_string_rtrim(k_string_ltrim(lpText));
	.sym	lpText,4,142,6,32
	.line	328
	pei	<L86+lpText_0+2
	pei	<L86+lpText_0
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
L89:
	tay
	lda	<L86+2
	sta	<L86+2+4
	lda	<L86+1
	sta	<L86+1+4
	pld
	tsc
	clc
	adc	#L86+4
	tcs
	tya
	rtl
;}
	.line	329
	.endblock	329
L86	equ	8
L87	equ	9
	ends
	efunc
	.endfunc	329,9,8
	.line	329
;
;LPCHAR k_string_rtrim(LPCHAR lpText)
;{
	.line	331
	.line	332
	code
	xdef	~~k_string_rtrim
	func
	.function	332
~~k_string_rtrim:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L90
	tcs
	phd
	tcd
lpText_0	set	4
	.block	332
;	UINT index  = 0;
;	UINT length = 0;
;	if(lpText)
index_1	set	0
length_1	set	2
	.sym	index,0,16,1,16
	.sym	length,2,16,1,16
	.sym	lpText,4,142,6,32
	stz	<L91+index_1
	stz	<L91+length_1
	.line	335
;	{
	lda	<L90+lpText_0
	ora	<L90+lpText_0+2
	bne	L93
	brl	L10023
L93:
	.line	336
;		length = strlen(lpText) - 1;
	.line	337
	pei	<L90+lpText_0+2
	pei	<L90+lpText_0
	jsl	~~strlen
	sta	<R0
	clc
	lda	#$ffff
	adc	<R0
	sta	<L91+length_1
;		for(index = length;index >= 0;index--)
	.line	338
	lda	<L91+length_1
	sta	<L91+index_1
	brl	L10027
L10026:
;		{
	.line	339
;			if(lpText[index] == ' ')
	.line	340
;			{
	sep	#$20
	longa	off
	ldy	<L91+index_1
	lda	[<L90+lpText_0],Y
	cmp	#<$20
	rep	#$20
	longa	on
	beq	L94
	brl	L10028
L94:
	.line	341
;				lpText[index] = 0;
	.line	342
	sep	#$20
	longa	off
	lda	#$0
	ldy	<L91+index_1
	sta	[<L90+lpText_0],Y
	rep	#$20
	longa	on
;			}
	.line	343
;			else
	brl	L10029
L10028:
;			{
	.line	345
;				break;
	.line	346
	brl	L10025
;			}
	.line	347
L10029:
;		}
	.line	348
L10024:
	dec	<L91+index_1
L10027:
	lda	<L91+index_1
	cmp	#<$0
	bcc	L95
	brl	L10026
L95:
L10025:
;	}
	.line	349
;	return lpText;
L10023:
	.line	350
	ldx	<L90+lpText_0+2
	lda	<L90+lpText_0
L96:
	tay
	lda	<L90+2
	sta	<L90+2+4
	lda	<L90+1
	sta	<L90+1+4
	pld
	tsc
	clc
	adc	#L90+4
	tcs
	tya
	rtl
;}
	.line	351
	.endblock	351
L90	equ	8
L91	equ	5
	ends
	efunc
	.endfunc	351,5,8
	.line	351
;
;LPCHAR k_string_ltrim(LPCHAR lpText)
;{
	.line	353
	.line	354
	code
	xdef	~~k_string_ltrim
	func
	.function	354
~~k_string_ltrim:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L97
	tcs
	phd
	tcd
lpText_0	set	4
	.block	354
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
	stz	<L98+index_1
	stz	<L98+c_1
	stz	<L98+length_1
	stz	<L98+tmp_1
	stz	<L98+tmp_1+2
	.line	359
;	{
	lda	<L97+lpText_0
	ora	<L97+lpText_0+2
	bne	L100
	brl	L10030
L100:
	.line	360
;		length = strlen(lpText);
	.line	361
	pei	<L97+lpText_0+2
	pei	<L97+lpText_0
	jsl	~~strlen
	sta	<L98+length_1
;		tmp = malloc(length+1);
	.line	362
	lda	<L98+length_1
	ina
	pha
	jsl	~~malloc
	sta	<L98+tmp_1
	stx	<L98+tmp_1+2
;		if(tmp)
	.line	363
;		{
	lda	<L98+tmp_1
	ora	<L98+tmp_1+2
	bne	L101
	brl	L10031
L101:
	.line	364
;			memset(tmp,0,length+1);
	.line	365
	lda	<L98+length_1
	ina
	pha
	pea	#<$0
	pei	<L98+tmp_1+2
	pei	<L98+tmp_1
	jsl	~~memset
;			for(index = 0;index < length;index++)
	.line	366
	stz	<L98+index_1
	brl	L10035
L10034:
;			{
	.line	367
;				if(lpText[index] == ' ' && c == 0)
	.line	368
;				{
	sep	#$20
	longa	off
	ldy	<L98+index_1
	lda	[<L97+lpText_0],Y
	cmp	#<$20
	rep	#$20
	longa	on
	beq	L102
	brl	L10036
L102:
	lda	<L98+c_1
	beq	L103
	brl	L10036
L103:
	.line	369
;					// skip spaces until we find another char first
;				}
	.line	371
;				else
	brl	L10037
L10036:
;				{
	.line	373
;					tmp[c] = lpText[index];
	.line	374
	sep	#$20
	longa	off
	ldy	<L98+index_1
	lda	[<L97+lpText_0],Y
	ldy	<L98+c_1
	sta	[<L98+tmp_1],Y
	rep	#$20
	longa	on
;					c++;
	.line	375
	inc	<L98+c_1
;				}
	.line	376
L10037:
;
;				if(lpText[0]  == 0)
	.line	378
;					break;
	lda	[<L97+lpText_0]
	and	#$ff
	bne	L104
	brl	L10033
L104:
;			}
	.line	380
L10032:
	inc	<L98+index_1
L10035:
	lda	<L98+index_1
	cmp	<L98+length_1
	bcs	L105
	brl	L10034
L105:
L10033:
;			strcpy(lpText,tmp);
	.line	381
	pei	<L98+tmp_1+2
	pei	<L98+tmp_1
	pei	<L97+lpText_0+2
	pei	<L97+lpText_0
	jsl	~~strcpy
;			free(tmp);
	.line	382
	pei	<L98+tmp_1+2
	pei	<L98+tmp_1
	jsl	~~free
;		}
	.line	383
;	}
L10031:
	.line	384
;	return lpText;
L10030:
	.line	385
	ldx	<L97+lpText_0+2
	lda	<L97+lpText_0
L106:
	tay
	lda	<L97+2
	sta	<L97+2+4
	lda	<L97+1
	sta	<L97+1+4
	pld
	tsc
	clc
	adc	#L97+4
	tcs
	tya
	rtl
;}
	.line	386
	.endblock	386
L97	equ	10
L98	equ	1
	ends
	efunc
	.endfunc	386,1,10
	.line	386
;
;INT k_string_indexOf(LPCHAR chars,CHAR c)
;{
	.line	388
	.line	389
	code
	xdef	~~k_string_indexOf
	func
	.function	389
~~k_string_indexOf:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L107
	tcs
	phd
	tcd
chars_0	set	4
c_0	set	8
	.block	389
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
	lda	<L107+chars_0
	sta	<L108+ptr_1
	lda	<L107+chars_0+2
	sta	<L108+ptr_1+2
	stz	<L108+pos_1
	.line	393
	lda	<L107+c_0
	and	#$ff
	pha
	pea	#^L1
	pea	#<L1
	jsl	~~k_debug_char
;
;	while(*ptr!=0)
	.line	395
L10038:
	lda	[<L108+ptr_1]
	and	#$ff
	bne	L110
	brl	L10039
L110:
;	{
	.line	396
;		if(*ptr == c)
	.line	397
;		{
	sep	#$20
	longa	off
	lda	[<L108+ptr_1]
	cmp	<L107+c_0
	rep	#$20
	longa	on
	beq	L111
	brl	L10040
L111:
	.line	398
;			k_debug_integer("k_string_indexOf:pos:",pos);
	.line	399
	pei	<L108+pos_1
	pea	#^L1+23
	pea	#<L1+23
	jsl	~~k_debug_integer
;			return pos;
	.line	400
	lda	<L108+pos_1
L112:
	tay
	lda	<L107+2
	sta	<L107+2+6
	lda	<L107+1
	sta	<L107+1+6
	pld
	tsc
	clc
	adc	#L107+6
	tcs
	tya
	rtl
;		}
	.line	401
;		pos++;
L10040:
	.line	402
	inc	<L108+pos_1
;		ptr++;
	.line	403
	inc	<L108+ptr_1
	bne	L113
	inc	<L108+ptr_1+2
L113:
;	};
	.line	404
	brl	L10038
L10039:
	.line	404
;
;	return -1;
	.line	406
	lda	#$ffff
	brl	L112
;}
	.line	407
	.endblock	407
L107	equ	6
L108	equ	1
	ends
	efunc
	.endfunc	407,1,6
	.line	407
	data
L1:
	db	$6B,$5F,$73,$74,$72,$69,$6E,$67,$5F,$69,$6E,$64,$65,$78,$4F
	db	$66,$3A,$63,$68,$61,$72,$3A,$00,$6B,$5F,$73,$74,$72,$69,$6E
	db	$67,$5F,$69,$6E,$64,$65,$78,$4F,$66,$3A,$70,$6F,$73,$3A,$00
	ends
;
;LPCHAR k_string_toString(CHAR c,LPCHAR toBuffer)
;{
	.line	409
	.line	410
	code
	xdef	~~k_string_toString
	func
	.function	410
~~k_string_toString:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L115
	tcs
	phd
	tcd
c_0	set	4
toBuffer_0	set	6
	.block	410
;	toBuffer[0] = c;
	.sym	c,4,14,6,8
	.sym	toBuffer,6,142,6,32
	.line	411
	sep	#$20
	longa	off
	lda	<L115+c_0
	sta	[<L115+toBuffer_0]
	rep	#$20
	longa	on
;	toBuffer[1] = 0;
	.line	412
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$1
	sta	[<L115+toBuffer_0],Y
	rep	#$20
	longa	on
;	return toBuffer;
	.line	413
	ldx	<L115+toBuffer_0+2
	lda	<L115+toBuffer_0
L118:
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
;}
	.line	414
	.endblock	414
L115	equ	0
L116	equ	1
	ends
	efunc
	.endfunc	414,1,0
	.line	414
;
;LPCHAR k_string_copy_string(LPCSTR src)
;{
	.line	416
	.line	417
	code
	xdef	~~k_string_copy_string
	func
	.function	417
~~k_string_copy_string:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L119
	tcs
	phd
	tcd
src_0	set	4
	.block	417
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
	stz	<L120+size_1
	stz	<L120+copy_1
	stz	<L120+copy_1+2
	stz	<L120+ptr_1
	stz	<L120+ptr_1+2
	.line	424
;	{
	lda	<L119+src_0
	ora	<L119+src_0+2
	bne	L122
	brl	L10041
L122:
	.line	425
;		size = strlen(src);
	.line	426
	pei	<L119+src_0+2
	pei	<L119+src_0
	jsl	~~strlen
	sta	<L120+size_1
;
;		//k_debug_integer("k_string_copy_string:size:",size);
;
;		if(size > 0)
	.line	430
;		{
	lda	#$0
	cmp	<L120+size_1
	bcc	L123
	brl	L10042
L123:
	.line	431
;			copy = malloc(size+1);
	.line	432
	lda	<L120+size_1
	ina
	pha
	jsl	~~malloc
	sta	<L120+copy_1
	stx	<L120+copy_1+2
;			//strcpy(copy,src);
;			ptr = copy;
	.line	434
	lda	<L120+copy_1
	sta	<L120+ptr_1
	lda	<L120+copy_1+2
	sta	<L120+ptr_1+2
;			while(*src)
	.line	435
L10043:
	lda	[<L119+src_0]
	and	#$ff
	bne	L124
	brl	L10044
L124:
;			{
	.line	436
;				*ptr = *src;
	.line	437
	sep	#$20
	longa	off
	lda	[<L119+src_0]
	sta	[<L120+ptr_1]
	rep	#$20
	longa	on
;				ptr++;
	.line	438
	inc	<L120+ptr_1
	bne	L125
	inc	<L120+ptr_1+2
L125:
;				src++;
	.line	439
	inc	<L119+src_0
	bne	L126
	inc	<L119+src_0+2
L126:
;			}
	.line	440
	brl	L10043
L10044:
;			*ptr = 0;
	.line	441
	sep	#$20
	longa	off
	lda	#$0
	sta	[<L120+ptr_1]
	rep	#$20
	longa	on
;			//k_debug_strings("k_string_copy_string:size:",copy);
;		}
	.line	443
;	}
L10042:
	.line	444
;
;	//k_debug_strings("k_string_copy_string:",copy);
;
;	return copy;
L10041:
	.line	448
	ldx	<L120+copy_1+2
	lda	<L120+copy_1
L127:
	tay
	lda	<L119+2
	sta	<L119+2+4
	lda	<L119+1
	sta	<L119+1+4
	pld
	tsc
	clc
	adc	#L119+4
	tcs
	tya
	rtl
;}
	.line	449
	.endblock	449
L119	equ	10
L120	equ	1
	ends
	efunc
	.endfunc	449,1,10
	.line	449
;
;PFXSTRING k_fxstring_init(UINT size)
;{
	.line	451
	.line	452
	code
	xdef	~~k_fxstring_init
	func
	.function	452
~~k_fxstring_init:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L128
	tcs
	phd
	tcd
size_0	set	4
	.block	452
;	PFXSTRING fxstring = NULL;
;
;	if(size > 0)
fxstring_1	set	0
	.sym	fxstring,0,138,1,32,43
	.sym	size,4,16,6,16
	stz	<L129+fxstring_1
	stz	<L129+fxstring_1+2
	.line	455
;	{
	lda	#$0
	cmp	<L128+size_0
	bcc	L131
	brl	L10045
L131:
	.line	456
;		k_debug_integer("k_fxstring_new:",size);
	.line	457
	pei	<L128+size_0
	pea	#^L114
	pea	#<L114
	jsl	~~k_debug_integer
;
;		fxstring = malloc(sizeof(FXSTRING));
	.line	459
	pea	#<$8
	jsl	~~malloc
	sta	<L129+fxstring_1
	stx	<L129+fxstring_1+2
;		fxstring->pos = 0;
	.line	460
	lda	#$0
	ldy	#$2
	sta	[<L129+fxstring_1],Y
;		fxstring->size = size;
	.line	461
	lda	<L128+size_0
	sta	[<L129+fxstring_1]
;		fxstring->buffer = malloc(fxstring->size);
	.line	462
	lda	[<L129+fxstring_1]
	pha
	jsl	~~malloc
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$4
	sta	[<L129+fxstring_1],Y
	lda	<R0+2
	ldy	#$6
	sta	[<L129+fxstring_1],Y
;		if(fxstring->buffer)
	.line	463
;			memset(fxstring->buffer,0,fxstring->size);
	ldy	#$4
	lda	[<L129+fxstring_1],Y
	ldy	#$6
	ora	[<L129+fxstring_1],Y
	bne	L132
	brl	L10046
L132:
	.line	464
	lda	[<L129+fxstring_1]
	pha
	pea	#<$0
	ldy	#$6
	lda	[<L129+fxstring_1],Y
	pha
	ldy	#$4
	lda	[<L129+fxstring_1],Y
	pha
	jsl	~~memset
;
;		k_debug_integer("k_fxstring_new:",fxstring->size);
L10046:
	.line	466
	lda	[<L129+fxstring_1]
	pha
	pea	#^L114+16
	pea	#<L114+16
	jsl	~~k_debug_integer
;	}
	.line	467
;	return fxstring;
L10045:
	.line	468
	ldx	<L129+fxstring_1+2
	lda	<L129+fxstring_1
L133:
	tay
	lda	<L128+2
	sta	<L128+2+2
	lda	<L128+1
	sta	<L128+1+2
	pld
	tsc
	clc
	adc	#L128+2
	tcs
	tya
	rtl
;}
	.line	469
	.endblock	469
L128	equ	8
L129	equ	5
	ends
	efunc
	.endfunc	469,5,8
	.line	469
	data
L114:
	db	$6B,$5F,$66,$78,$73,$74,$72,$69,$6E,$67,$5F,$6E,$65,$77,$3A
	db	$00,$6B,$5F,$66,$78,$73,$74,$72,$69,$6E,$67,$5F,$6E,$65,$77
	db	$3A,$00
	ends
;
;
;PFXSTRING k_fxstring_reinit(PFXSTRING fxstring)
;{
	.line	472
	.line	473
	code
	xdef	~~k_fxstring_reinit
	func
	.function	473
~~k_fxstring_reinit:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L135
	tcs
	phd
	tcd
fxstring_0	set	4
	.block	473
;	if(fxstring)
	.sym	fxstring,4,138,6,32,43
	.line	474
;	{
	lda	<L135+fxstring_0
	ora	<L135+fxstring_0+2
	bne	L138
	brl	L10047
L138:
	.line	475
;		fxstring->pos = 0;
	.line	476
	lda	#$0
	ldy	#$2
	sta	[<L135+fxstring_0],Y
;		if(fxstring->buffer)
	.line	477
;			memset(fxstring->buffer,0,fxstring->size);
	ldy	#$4
	lda	[<L135+fxstring_0],Y
	ldy	#$6
	ora	[<L135+fxstring_0],Y
	bne	L139
	brl	L10048
L139:
	.line	478
	lda	[<L135+fxstring_0]
	pha
	pea	#<$0
	ldy	#$6
	lda	[<L135+fxstring_0],Y
	pha
	ldy	#$4
	lda	[<L135+fxstring_0],Y
	pha
	jsl	~~memset
;	}
L10048:
	.line	479
;	return fxstring;
L10047:
	.line	480
	ldx	<L135+fxstring_0+2
	lda	<L135+fxstring_0
L140:
	tay
	lda	<L135+2
	sta	<L135+2+4
	lda	<L135+1
	sta	<L135+1+4
	pld
	tsc
	clc
	adc	#L135+4
	tcs
	tya
	rtl
;}
	.line	481
	.endblock	481
L135	equ	0
L136	equ	1
	ends
	efunc
	.endfunc	481,1,0
	.line	481
;
;
;
;PFXSTRING k_fxstring_new(LPCHAR initial,UINT size)
;{
	.line	485
	.line	486
	code
	xdef	~~k_fxstring_new
	func
	.function	486
~~k_fxstring_new:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L141
	tcs
	phd
	tcd
initial_0	set	4
size_0	set	8
	.block	486
;	PFXSTRING fxstring = k_fxstring_init(size);
;
;	if(fxstring->buffer == NULL)
fxstring_1	set	0
	.sym	fxstring,0,138,1,32,43
	.sym	initial,4,142,6,32
	.sym	size,8,16,6,16
	pei	<L141+size_0
	jsl	~~k_fxstring_init
	sta	<L142+fxstring_1
	stx	<L142+fxstring_1+2
	.line	489
;	{
	ldy	#$4
	lda	[<L142+fxstring_1],Y
	ldy	#$6
	ora	[<L142+fxstring_1],Y
	beq	L144
	brl	L10049
L144:
	.line	490
;		fxstring->buffer = malloc(fxstring->size);
	.line	491
	lda	[<L142+fxstring_1]
	pha
	jsl	~~malloc
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$4
	sta	[<L142+fxstring_1],Y
	lda	<R0+2
	ldy	#$6
	sta	[<L142+fxstring_1],Y
;		memset(fxstring->buffer,0,fxstring->size);
	.line	492
	lda	[<L142+fxstring_1]
	pha
	pea	#<$0
	ldy	#$6
	lda	[<L142+fxstring_1],Y
	pha
	ldy	#$4
	lda	[<L142+fxstring_1],Y
	pha
	jsl	~~memset
;	}
	.line	493
;
;	strcpy(fxstring->buffer,initial);
L10049:
	.line	495
	pei	<L141+initial_0+2
	pei	<L141+initial_0
	ldy	#$6
	lda	[<L142+fxstring_1],Y
	pha
	ldy	#$4
	lda	[<L142+fxstring_1],Y
	pha
	jsl	~~strcpy
;	fxstring->pos = strlen(fxstring->buffer);
	.line	496
	ldy	#$6
	lda	[<L142+fxstring_1],Y
	pha
	ldy	#$4
	lda	[<L142+fxstring_1],Y
	pha
	jsl	~~strlen
	ldy	#$2
	sta	[<L142+fxstring_1],Y
;
;	k_debug_message("k_fxstring_new:",fxstring->buffer);
	.line	498
	ldy	#$6
	lda	[<L142+fxstring_1],Y
	pha
	ldy	#$4
	lda	[<L142+fxstring_1],Y
	pha
	pea	#^L134
	pea	#<L134
	jsl	~~k_debug_message
;
;	return fxstring;
	.line	500
	ldx	<L142+fxstring_1+2
	lda	<L142+fxstring_1
L145:
	tay
	lda	<L141+2
	sta	<L141+2+6
	lda	<L141+1
	sta	<L141+1+6
	pld
	tsc
	clc
	adc	#L141+6
	tcs
	tya
	rtl
;}
	.line	501
	.endblock	501
L141	equ	8
L142	equ	5
	ends
	efunc
	.endfunc	501,5,8
	.line	501
	data
L134:
	db	$6B,$5F,$66,$78,$73,$74,$72,$69,$6E,$67,$5F,$6E,$65,$77,$3A
	db	$00
	ends
;
;VOID k_fxstring_free(PFXSTRING string)
;{
	.line	503
	.line	504
	code
	xdef	~~k_fxstring_free
	func
	.function	504
~~k_fxstring_free:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L147
	tcs
	phd
	tcd
string_0	set	4
	.block	504
;	if(string)
	.sym	string,4,138,6,32,43
	.line	505
;	{
	lda	<L147+string_0
	ora	<L147+string_0+2
	bne	L150
	brl	L10050
L150:
	.line	506
;		if(string->buffer)
	.line	507
;			free(string->buffer);
	ldy	#$4
	lda	[<L147+string_0],Y
	ldy	#$6
	ora	[<L147+string_0],Y
	bne	L151
	brl	L10051
L151:
	.line	508
	ldy	#$6
	lda	[<L147+string_0],Y
	pha
	ldy	#$4
	lda	[<L147+string_0],Y
	pha
	jsl	~~free
;
;		string->size = 0;
L10051:
	.line	510
	lda	#$0
	sta	[<L147+string_0]
;		string->pos  = 0;
	.line	511
	lda	#$0
	ldy	#$2
	sta	[<L147+string_0],Y
;		string->buffer = NULL;
	.line	512
	lda	#$0
	ldy	#$4
	sta	[<L147+string_0],Y
	lda	#$0
	ldy	#$6
	sta	[<L147+string_0],Y
;
;		free(string);
	.line	514
	pei	<L147+string_0+2
	pei	<L147+string_0
	jsl	~~free
;	}
	.line	515
;	return;
L10050:
	.line	516
L152:
	lda	<L147+2
	sta	<L147+2+4
	lda	<L147+1
	sta	<L147+1+4
	pld
	tsc
	clc
	adc	#L147+4
	tcs
	rtl
;}
	.line	517
	.endblock	517
L147	equ	0
L148	equ	1
	ends
	efunc
	.endfunc	517,1,0
	.line	517
;
;UINT k_fxstring_size(PFXSTRING string)
;{
	.line	519
	.line	520
	code
	xdef	~~k_fxstring_size
	func
	.function	520
~~k_fxstring_size:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L153
	tcs
	phd
	tcd
string_0	set	4
	.block	520
;	if(string)
	.sym	string,4,138,6,32,43
	.line	521
;	{
	lda	<L153+string_0
	ora	<L153+string_0+2
	bne	L156
	brl	L10052
L156:
	.line	522
;		return string->size;
	.line	523
	lda	[<L153+string_0]
L157:
	tay
	lda	<L153+2
	sta	<L153+2+4
	lda	<L153+1
	sta	<L153+1+4
	pld
	tsc
	clc
	adc	#L153+4
	tcs
	tya
	rtl
;	}
	.line	524
;	return -1;
L10052:
	.line	525
	lda	#$ffff
	brl	L157
;}
	.line	526
	.endblock	526
L153	equ	0
L154	equ	1
	ends
	efunc
	.endfunc	526,1,0
	.line	526
;
;UINT k_fxstring_length(PFXSTRING string)
;{
	.line	528
	.line	529
	code
	xdef	~~k_fxstring_length
	func
	.function	529
~~k_fxstring_length:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L158
	tcs
	phd
	tcd
string_0	set	4
	.block	529
;	if(string)
	.sym	string,4,138,6,32,43
	.line	530
;	{
	lda	<L158+string_0
	ora	<L158+string_0+2
	bne	L161
	brl	L10053
L161:
	.line	531
;		return strlen(string->buffer);
	.line	532
	ldy	#$6
	lda	[<L158+string_0],Y
	pha
	ldy	#$4
	lda	[<L158+string_0],Y
	pha
	jsl	~~strlen
L162:
	tay
	lda	<L158+2
	sta	<L158+2+4
	lda	<L158+1
	sta	<L158+1+4
	pld
	tsc
	clc
	adc	#L158+4
	tcs
	tya
	rtl
;	}
	.line	533
;	return -1;
L10053:
	.line	534
	lda	#$ffff
	brl	L162
;}
	.line	535
	.endblock	535
L158	equ	0
L159	equ	1
	ends
	efunc
	.endfunc	535,1,0
	.line	535
;
;UINT k_fxstring_position(PFXSTRING string)
;{
	.line	537
	.line	538
	code
	xdef	~~k_fxstring_position
	func
	.function	538
~~k_fxstring_position:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L163
	tcs
	phd
	tcd
string_0	set	4
	.block	538
;	if(string)
	.sym	string,4,138,6,32,43
	.line	539
;	{
	lda	<L163+string_0
	ora	<L163+string_0+2
	bne	L166
	brl	L10054
L166:
	.line	540
;		return string->pos;
	.line	541
	ldy	#$2
	lda	[<L163+string_0],Y
L167:
	tay
	lda	<L163+2
	sta	<L163+2+4
	lda	<L163+1
	sta	<L163+1+4
	pld
	tsc
	clc
	adc	#L163+4
	tcs
	tya
	rtl
;	}
	.line	542
;	return -1;
L10054:
	.line	543
	lda	#$ffff
	brl	L167
;}
	.line	544
	.endblock	544
L163	equ	0
L164	equ	1
	ends
	efunc
	.endfunc	544,1,0
	.line	544
;
;LPCHAR k_fxstring_addchar(PFXSTRING string,CHAR c)
;{
	.line	546
	.line	547
	code
	xdef	~~k_fxstring_addchar
	func
	.function	547
~~k_fxstring_addchar:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L168
	tcs
	phd
	tcd
string_0	set	4
c_0	set	8
	.block	547
;	if(string)
	.sym	string,4,138,6,32,43
	.sym	c,8,14,6,8
	.line	548
;	{
	lda	<L168+string_0
	ora	<L168+string_0+2
	bne	L171
	brl	L10055
L171:
	.line	549
;		string->buffer[string->pos] = c;
	.line	550
	ldy	#$2
	lda	[<L168+string_0],Y
	sta	<R0
	ldy	#$4
	lda	[<L168+string_0],Y
	sta	<R1
	ldy	#$6
	lda	[<L168+string_0],Y
	sta	<R1+2
	sep	#$20
	longa	off
	lda	<L168+c_0
	ldy	<R0
	sta	[<R1],Y
	rep	#$20
	longa	on
;		string->pos++;
	.line	551
	ldy	#$2
	lda	[<L168+string_0],Y
	ina
	ldy	#$2
	sta	[<L168+string_0],Y
;		//k_debug_message("k_fxstring_addchar:",string->buffer);
;		return string->buffer;
	.line	553
	ldy	#$6
	lda	[<L168+string_0],Y
	tax
	ldy	#$4
	lda	[<L168+string_0],Y
L172:
	tay
	lda	<L168+2
	sta	<L168+2+6
	lda	<L168+1
	sta	<L168+1+6
	pld
	tsc
	clc
	adc	#L168+6
	tcs
	tya
	rtl
;	}
	.line	554
;	return NULL;
L10055:
	.line	555
	lda	#$0
	tax
	lda	#$0
	brl	L172
;}
	.line	556
	.endblock	556
L168	equ	8
L169	equ	9
	ends
	efunc
	.endfunc	556,9,8
	.line	556
;
;CHAR k_fxstring_removechar(PFXSTRING string)
;{
	.line	558
	.line	559
	code
	xdef	~~k_fxstring_removechar
	func
	.function	559
~~k_fxstring_removechar:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L173
	tcs
	phd
	tcd
string_0	set	4
	.block	559
;	CHAR old = 0;
;
;	if(string)
old_1	set	0
	.sym	old,0,14,1,8
	.sym	string,4,138,6,32,43
	sep	#$20
	longa	off
	stz	<L174+old_1
	rep	#$20
	longa	on
	.line	562
;	{
	lda	<L173+string_0
	ora	<L173+string_0+2
	bne	L176
	brl	L10056
L176:
	.line	563
;		string->pos--;
	.line	564
	clc
	lda	#$ffff
	ldy	#$2
	adc	[<L173+string_0],Y
	ldy	#$2
	sta	[<L173+string_0],Y
;		if(string->pos < 0)
	.line	565
;			string->pos = 0;
	ldy	#$2
	lda	[<L173+string_0],Y
	bmi	L177
	brl	L10057
L177:
	.line	566
	lda	#$0
	ldy	#$2
	sta	[<L173+string_0],Y
;
;		old = string->buffer[string->pos];
L10057:
	.line	568
	ldy	#$2
	lda	[<L173+string_0],Y
	sta	<R0
	ldy	#$4
	lda	[<L173+string_0],Y
	sta	<R1
	ldy	#$6
	lda	[<L173+string_0],Y
	sta	<R1+2
	sep	#$20
	longa	off
	ldy	<R0
	lda	[<R1],Y
	sta	<L174+old_1
	rep	#$20
	longa	on
;		string->buffer[string->pos] = 0;
	.line	569
	ldy	#$2
	lda	[<L173+string_0],Y
	sta	<R0
	ldy	#$4
	lda	[<L173+string_0],Y
	sta	<R1
	ldy	#$6
	lda	[<L173+string_0],Y
	sta	<R1+2
	sep	#$20
	longa	off
	lda	#$0
	ldy	<R0
	sta	[<R1],Y
	rep	#$20
	longa	on
;	}
	.line	570
;	return old;
L10056:
	.line	571
	lda	<L174+old_1
	and	#$ff
L178:
	tay
	lda	<L173+2
	sta	<L173+2+4
	lda	<L173+1
	sta	<L173+1+4
	pld
	tsc
	clc
	adc	#L173+4
	tcs
	tya
	rtl
;}
	.line	572
	.endblock	572
L173	equ	9
L174	equ	9
	ends
	efunc
	.endfunc	572,9,9
	.line	572
;
;LPCHAR k_fxstring_add(PFXSTRING string,LPCHAR text)
;{
	.line	574
	.line	575
	code
	xdef	~~k_fxstring_add
	func
	.function	575
~~k_fxstring_add:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L179
	tcs
	phd
	tcd
string_0	set	4
text_0	set	8
	.block	575
;	if(string && text)
	.sym	string,4,138,6,32,43
	.sym	text,8,142,6,32
	.line	576
;	{
	lda	<L179+string_0
	ora	<L179+string_0+2
	bne	L182
	brl	L10058
L182:
	lda	<L179+text_0
	ora	<L179+text_0+2
	bne	L183
	brl	L10058
L183:
	.line	577
;		strcat(string->buffer,text);
	.line	578
	pei	<L179+text_0+2
	pei	<L179+text_0
	ldy	#$6
	lda	[<L179+string_0],Y
	pha
	ldy	#$4
	lda	[<L179+string_0],Y
	pha
	jsl	~~strcat
;		string->pos = strlen(string->buffer);
	.line	579
	ldy	#$6
	lda	[<L179+string_0],Y
	pha
	ldy	#$4
	lda	[<L179+string_0],Y
	pha
	jsl	~~strlen
	ldy	#$2
	sta	[<L179+string_0],Y
;		//k_debug_integer("k_fxstring_add:",string->pos);
;		return string->buffer;
	.line	581
	ldy	#$6
	lda	[<L179+string_0],Y
	tax
	ldy	#$4
	lda	[<L179+string_0],Y
L184:
	tay
	lda	<L179+2
	sta	<L179+2+8
	lda	<L179+1
	sta	<L179+1+8
	pld
	tsc
	clc
	adc	#L179+8
	tcs
	tya
	rtl
;	}
	.line	582
;	return string->buffer;
L10058:
	.line	583
	ldy	#$6
	lda	[<L179+string_0],Y
	tax
	ldy	#$4
	lda	[<L179+string_0],Y
	brl	L184
;}
	.line	584
	.endblock	584
L179	equ	0
L180	equ	1
	ends
	efunc
	.endfunc	584,1,0
	.line	584
;
;UINT k_fxstring_fxadd(PFXSTRING string,PFXSTRING text)
;{
	.line	586
	.line	587
	code
	xdef	~~k_fxstring_fxadd
	func
	.function	587
~~k_fxstring_fxadd:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L185
	tcs
	phd
	tcd
string_0	set	4
text_0	set	8
	.block	587
;	return  -1;
	.sym	string,4,138,6,32,43
	.sym	text,8,138,6,32,43
	.line	588
	lda	#$ffff
L188:
	tay
	lda	<L185+2
	sta	<L185+2+8
	lda	<L185+1
	sta	<L185+1+8
	pld
	tsc
	clc
	adc	#L185+8
	tcs
	tya
	rtl
;}
	.line	589
	.endblock	589
L185	equ	0
L186	equ	1
	ends
	efunc
	.endfunc	589,1,0
	.line	589
;
;LPCHAR k_fxstring_as(PFXSTRING string)
;{
	.line	591
	.line	592
	code
	xdef	~~k_fxstring_as
	func
	.function	592
~~k_fxstring_as:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L189
	tcs
	phd
	tcd
string_0	set	4
	.block	592
;	if(string)
	.sym	string,4,138,6,32,43
	.line	593
;	{
	lda	<L189+string_0
	ora	<L189+string_0+2
	bne	L192
	brl	L10059
L192:
	.line	594
;		return string->buffer;
	.line	595
	ldy	#$6
	lda	[<L189+string_0],Y
	tax
	ldy	#$4
	lda	[<L189+string_0],Y
L193:
	tay
	lda	<L189+2
	sta	<L189+2+4
	lda	<L189+1
	sta	<L189+1+4
	pld
	tsc
	clc
	adc	#L189+4
	tcs
	tya
	rtl
;	}
	.line	596
;	return NULL;
L10059:
	.line	597
	lda	#$0
	tax
	lda	#$0
	brl	L193
;}
	.line	598
	.endblock	598
L189	equ	0
L190	equ	1
	ends
	efunc
	.endfunc	598,1,0
	.line	598
;
;CHAR k_fxstring_at(PFXSTRING string,UINT index)
;{
	.line	600
	.line	601
	code
	xdef	~~k_fxstring_at
	func
	.function	601
~~k_fxstring_at:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L194
	tcs
	phd
	tcd
string_0	set	4
index_0	set	8
	.block	601
;	return 0;
	.sym	string,4,138,6,32,43
	.sym	index,8,16,6,16
	.line	602
	lda	#$0
L197:
	tay
	lda	<L194+2
	sta	<L194+2+6
	lda	<L194+1
	sta	<L194+1+6
	pld
	tsc
	clc
	adc	#L194+6
	tcs
	tya
	rtl
;}
	.line	603
	.endblock	603
L194	equ	0
L195	equ	1
	ends
	efunc
	.endfunc	603,1,0
	.line	603
;
;BOOL k_fxstring_equals(PFXSTRING string,LPCHAR match)
;{
	.line	605
	.line	606
	code
	xdef	~~k_fxstring_equals
	func
	.function	606
~~k_fxstring_equals:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L198
	tcs
	phd
	tcd
string_0	set	4
match_0	set	8
	.block	606
;	BOOL bRet = FALSE;
;
;	bRet = (strcmp(string->buffer,match) == 0);
bRet_1	set	0
	.sym	bRet,0,14,1,8
	.sym	string,4,138,6,32,43
	.sym	match,8,142,6,32
	sep	#$20
	longa	off
	stz	<L199+bRet_1
	rep	#$20
	longa	on
	.line	609
	stz	<R0
	pei	<L198+match_0+2
	pei	<L198+match_0
	ldy	#$6
	lda	[<L198+string_0],Y
	pha
	ldy	#$4
	lda	[<L198+string_0],Y
	pha
	jsl	~~strcmp
	tax
	beq	L202
	brl	L201
L202:
	inc	<R0
L201:
	sep	#$20
	longa	off
	lda	<R0
	sta	<L199+bRet_1
	rep	#$20
	longa	on
;
;	return bRet;
	.line	611
	lda	<L199+bRet_1
	and	#$ff
L203:
	tay
	lda	<L198+2
	sta	<L198+2+8
	lda	<L198+1
	sta	<L198+1+8
	pld
	tsc
	clc
	adc	#L198+8
	tcs
	tya
	rtl
;}
	.line	612
	.endblock	612
L198	equ	5
L199	equ	5
	ends
	efunc
	.endfunc	612,5,5
	.line	612
;
;LPCHAR k_fxstring_copy_string(PFXSTRING string)
;{
	.line	614
	.line	615
	code
	xdef	~~k_fxstring_copy_string
	func
	.function	615
~~k_fxstring_copy_string:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L204
	tcs
	phd
	tcd
string_0	set	4
	.block	615
;	if(string)
	.sym	string,4,138,6,32,43
	.line	616
;	{
	lda	<L204+string_0
	ora	<L204+string_0+2
	bne	L207
	brl	L10060
L207:
	.line	617
;		return k_string_copy_string(string->buffer);
	.line	618
	ldy	#$6
	lda	[<L204+string_0],Y
	pha
	ldy	#$4
	lda	[<L204+string_0],Y
	pha
	jsl	~~k_string_copy_string
	sta	<R0
	stx	<R0+2
	ldx	<R0+2
	lda	<R0
L208:
	tay
	lda	<L204+2
	sta	<L204+2+4
	lda	<L204+1
	sta	<L204+1+4
	pld
	tsc
	clc
	adc	#L204+4
	tcs
	tya
	rtl
;	}
	.line	619
;	return NULL;
L10060:
	.line	620
	lda	#$0
	tax
	lda	#$0
	brl	L208
;}
	.line	621
	.endblock	621
L204	equ	4
L205	equ	5
	ends
	efunc
	.endfunc	621,5,4
	.line	621
;
;PFXSTRING k_fxstring_from_long(ULONG nLong)
;{
	.line	623
	.line	624
	code
	xdef	~~k_fxstring_from_long
	func
	.function	624
~~k_fxstring_from_long:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L209
	tcs
	phd
	tcd
nLong_0	set	4
	.block	624
;	PFXSTRING newString = NULL;
;
;	newString = k_fxstring_init(16);
newString_1	set	0
	.sym	newString,0,138,1,32,43
	.sym	nLong,4,18,6,32
	stz	<L210+newString_1
	stz	<L210+newString_1+2
	.line	627
	pea	#<$10
	jsl	~~k_fxstring_init
	sta	<L210+newString_1
	stx	<L210+newString_1+2
;	if(newString!=NULL)
	.line	628
;	{
	lda	<L210+newString_1
	ora	<L210+newString_1+2
	bne	L212
	brl	L10061
L212:
	.line	629
;		k_longtodec(nLong,newString->buffer);
	.line	630
	ldy	#$6
	lda	[<L210+newString_1],Y
	pha
	ldy	#$4
	lda	[<L210+newString_1],Y
	pha
	pei	<L209+nLong_0+2
	pei	<L209+nLong_0
	jsl	~~k_longtodec
;	}
	.line	631
;
;	return newString;
L10061:
	.line	633
	ldx	<L210+newString_1+2
	lda	<L210+newString_1
L213:
	tay
	lda	<L209+2
	sta	<L209+2+4
	lda	<L209+1
	sta	<L209+1+4
	pld
	tsc
	clc
	adc	#L209+4
	tcs
	tya
	rtl
;}
	.line	634
	.endblock	634
L209	equ	4
L210	equ	1
	ends
	efunc
	.endfunc	634,1,4
	.line	634
;
;
;LPCHAR k_string_append_integer(LPCHAR baseText,UINT integer)
;{
	.line	637
	.line	638
	code
	xdef	~~k_string_append_integer
	func
	.function	638
~~k_string_append_integer:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L214
	tcs
	phd
	tcd
baseText_0	set	4
integer_0	set	8
	.block	638
;	LPCHAR newString = NULL;
;	UCHAR buffer[16];
;
;
;	newString = malloc(strlen(baseText) + 16 + 1);
newString_1	set	0
buffer_1	set	4
	.sym	newString,0,142,1,32
	.sym	buffer,4,110,1,0,16
	.sym	baseText,4,142,6,32
	.sym	integer,8,16,6,16
	stz	<L215+newString_1
	stz	<L215+newString_1+2
	.line	643
	pei	<L214+baseText_0+2
	pei	<L214+baseText_0
	jsl	~~strlen
	sta	<R0
	clc
	lda	#$11
	adc	<R0
	pha
	jsl	~~malloc
	sta	<L215+newString_1
	stx	<L215+newString_1+2
;	newString[0] = 0;
	.line	644
	sep	#$20
	longa	off
	lda	#$0
	sta	[<L215+newString_1]
	rep	#$20
	longa	on
;	strcat(newString,baseText);
	.line	645
	pei	<L214+baseText_0+2
	pei	<L214+baseText_0
	pei	<L215+newString_1+2
	pei	<L215+newString_1
	jsl	~~strcat
;	strcat(newString,k_inttodec(integer,buffer));
	.line	646
	pea	#0
	clc
	tdc
	adc	#<L215+buffer_1
	pha
	pei	<L214+integer_0
	jsl	~~k_inttodec
	sta	<R0
	stx	<R0+2
	phx
	pha
	pei	<L215+newString_1+2
	pei	<L215+newString_1
	jsl	~~strcat
;
;	return newString;
	.line	648
	ldx	<L215+newString_1+2
	lda	<L215+newString_1
L217:
	tay
	lda	<L214+2
	sta	<L214+2+6
	lda	<L214+1
	sta	<L214+1+6
	pld
	tsc
	clc
	adc	#L214+6
	tcs
	tya
	rtl
;}
	.line	649
	.endblock	649
L214	equ	24
L215	equ	5
	ends
	efunc
	.endfunc	649,5,24
	.line	649
;
;
;LPCHAR k_string_replace(LPCSTR template, LPCSTR marker, LPCSTR replacement)
;{
	.line	652
	.line	653
	code
	xdef	~~k_string_replace
	func
	.function	653
~~k_string_replace:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L218
	tcs
	phd
	tcd
template_0	set	4
marker_0	set	8
replacement_0	set	12
	.block	653
;	LPCHAR buffer = NULL;
;	LPCHAR tc     = NULL;
;	LPCHAR p 	  = NULL;
;
;	UINT   mlen = 0;
;	UINT   rlen = 0;
;
;	if(template && marker && replacement)
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
	stz	<L219+buffer_1
	stz	<L219+buffer_1+2
	stz	<L219+tc_1
	stz	<L219+tc_1+2
	stz	<L219+p_1
	stz	<L219+p_1+2
	stz	<L219+mlen_1
	stz	<L219+rlen_1
	.line	661
;	{
	lda	<L218+template_0
	ora	<L218+template_0+2
	bne	L221
	brl	L10062
L221:
	lda	<L218+marker_0
	ora	<L218+marker_0+2
	bne	L222
	brl	L10062
L222:
	lda	<L218+replacement_0
	ora	<L218+replacement_0+2
	bne	L223
	brl	L10062
L223:
	.line	662
;		tc = k_string_copy_string(template);
	.line	663
	pei	<L218+template_0+2
	pei	<L218+template_0
	jsl	~~k_string_copy_string
	sta	<L219+tc_1
	stx	<L219+tc_1+2
;		if(tc)
	.line	664
;		{
	lda	<L219+tc_1
	ora	<L219+tc_1+2
	bne	L224
	brl	L10063
L224:
	.line	665
;			mlen = strlen(marker);
	.line	666
	pei	<L218+marker_0+2
	pei	<L218+marker_0
	jsl	~~strlen
	sta	<L219+mlen_1
;			rlen = strlen(replacement);
	.line	667
	pei	<L218+replacement_0+2
	pei	<L218+replacement_0
	jsl	~~strlen
	sta	<L219+rlen_1
;			if(mlen && rlen)
	.line	668
;			{
	lda	<L219+mlen_1
	bne	L225
	brl	L10064
L225:
	lda	<L219+rlen_1
	bne	L226
	brl	L10064
L226:
	.line	669
;				buffer = malloc(256);
	.line	670
	pea	#<$100
	jsl	~~malloc
	sta	<L219+buffer_1
	stx	<L219+buffer_1+2
;				if(buffer)
	.line	671
;				{
	lda	<L219+buffer_1
	ora	<L219+buffer_1+2
	bne	L227
	brl	L10065
L227:
	.line	672
;					memset(buffer,0,256);
	.line	673
	pea	#<$100
	pea	#<$0
	pei	<L219+buffer_1+2
	pei	<L219+buffer_1
	jsl	~~memset
;					p = strstr(tc,marker);
	.line	674
	pei	<L218+marker_0+2
	pei	<L218+marker_0
	pei	<L219+tc_1+2
	pei	<L219+tc_1
	jsl	~~strstr
	sta	<L219+p_1
	stx	<L219+p_1+2
;					while(p)
	.line	675
L10066:
	lda	<L219+p_1
	ora	<L219+p_1+2
	bne	L228
	brl	L10067
L228:
;					{
	.line	676
;						p[0] = 0;
	.line	677
	sep	#$20
	longa	off
	lda	#$0
	sta	[<L219+p_1]
	rep	#$20
	longa	on
;						strcat(buffer,tc);
	.line	678
	pei	<L219+tc_1+2
	pei	<L219+tc_1
	pei	<L219+buffer_1+2
	pei	<L219+buffer_1
	jsl	~~strcat
;						strcat(buffer,replacement);
	.line	679
	pei	<L218+replacement_0+2
	pei	<L218+replacement_0
	pei	<L219+buffer_1+2
	pei	<L219+buffer_1
	jsl	~~strcat
;						p+=mlen;
	.line	680
	lda	<L219+mlen_1
	sta	<R0
	stz	<R0+2
	clc
	lda	<L219+p_1
	adc	<R0
	sta	<L219+p_1
	lda	<L219+p_1+2
	adc	<R0+2
	sta	<L219+p_1+2
;						tc = p;
	.line	681
	lda	<L219+p_1
	sta	<L219+tc_1
	lda	<L219+p_1+2
	sta	<L219+tc_1+2
;						p = strstr(tc,marker);
	.line	682
	pei	<L218+marker_0+2
	pei	<L218+marker_0
	pei	<L219+tc_1+2
	pei	<L219+tc_1
	jsl	~~strstr
	sta	<L219+p_1
	stx	<L219+p_1+2
;
;						//k_debug_string(tc);
;						//k_debug_crlf();
;						//k_debug_string(buffer);
;						//k_debug_crlf();
;					}
	.line	688
	brl	L10066
L10067:
;					strcat(buffer,tc);
	.line	689
	pei	<L219+tc_1+2
	pei	<L219+tc_1
	pei	<L219+buffer_1+2
	pei	<L219+buffer_1
	jsl	~~strcat
;				}
	.line	690
;			}
L10065:
	.line	691
;			free(tc);
L10064:
	.line	692
	pei	<L219+tc_1+2
	pei	<L219+tc_1
	jsl	~~free
;		}
	.line	693
;	}
L10063:
	.line	694
;
;
;	return buffer;
L10062:
	.line	697
	ldx	<L219+buffer_1+2
	lda	<L219+buffer_1
L229:
	tay
	lda	<L218+2
	sta	<L218+2+12
	lda	<L218+1
	sta	<L218+1+12
	pld
	tsc
	clc
	adc	#L218+12
	tcs
	tya
	rtl
;}
	.line	698
	.endblock	698
L218	equ	20
L219	equ	5
	ends
	efunc
	.endfunc	698,5,20
	.line	698
;
;LPCSTR k_get_date_string(LPCHAR buffer)
;{
	.line	700
	.line	701
	code
	xdef	~~k_get_date_string
	func
	.function	701
~~k_get_date_string:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L230
	tcs
	phd
	tcd
buffer_0	set	4
	.block	701
;	UCHAR tmp[16];
;
;	buffer[0] = 0;
tmp_1	set	0
	.sym	tmp,0,110,1,0,16
	.sym	buffer,4,142,6,32
	.line	704
	sep	#$20
	longa	off
	lda	#$0
	sta	[<L230+buffer_0]
	rep	#$20
	longa	on
;
;	strcat(buffer,k_strip_padding(k_inttodec(k_get_rtc_month(),tmp)));
	.line	706
	pea	#0
	clc
	tdc
	adc	#<L231+tmp_1
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
	pei	<L230+buffer_0+2
	pei	<L230+buffer_0
	jsl	~~strcat
;	strcat(buffer,"/");
	.line	707
	pea	#^L146
	pea	#<L146
	pei	<L230+buffer_0+2
	pei	<L230+buffer_0
	jsl	~~strcat
;	strcat(buffer,k_strip_padding(k_inttodec(k_get_rtc_day(),tmp)));
	.line	708
	pea	#0
	clc
	tdc
	adc	#<L231+tmp_1
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
	pei	<L230+buffer_0+2
	pei	<L230+buffer_0
	jsl	~~strcat
;	strcat(buffer,"/");
	.line	709
	pea	#^L146+2
	pea	#<L146+2
	pei	<L230+buffer_0+2
	pei	<L230+buffer_0
	jsl	~~strcat
;	strcat(buffer,k_strip_padding(k_inttodec(k_get_rtc_century(),tmp)));
	.line	710
	pea	#0
	clc
	tdc
	adc	#<L231+tmp_1
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
	pei	<L230+buffer_0+2
	pei	<L230+buffer_0
	jsl	~~strcat
;	strcat(buffer,k_strip_padding(k_inttodec(k_get_rtc_year(),tmp)));
	.line	711
	pea	#0
	clc
	tdc
	adc	#<L231+tmp_1
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
	pei	<L230+buffer_0+2
	pei	<L230+buffer_0
	jsl	~~strcat
;
;
;	return buffer;
	.line	714
	ldx	<L230+buffer_0+2
	lda	<L230+buffer_0
L233:
	tay
	lda	<L230+2
	sta	<L230+2+4
	lda	<L230+1
	sta	<L230+1+4
	pld
	tsc
	clc
	adc	#L230+4
	tcs
	tya
	rtl
;}
	.line	715
	.endblock	715
L230	equ	24
L231	equ	9
	ends
	efunc
	.endfunc	715,9,24
	.line	715
	data
L146:
	db	$2F,$00,$2F,$00
	ends
;
;LPCSTR k_get_localtime_string(LPCHAR buffer)
;{
	.line	717
	.line	718
	code
	xdef	~~k_get_localtime_string
	func
	.function	718
~~k_get_localtime_string:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L235
	tcs
	phd
	tcd
buffer_0	set	4
	.block	718
;	UCHAR tmp[16];
;	UCHAR digits[16];
;
;	buffer[0] = 0;
tmp_1	set	0
digits_1	set	16
	.sym	tmp,0,110,1,0,16
	.sym	digits,16,110,1,0,16
	.sym	buffer,4,142,6,32
	.line	722
	sep	#$20
	longa	off
	lda	#$0
	sta	[<L235+buffer_0]
	rep	#$20
	longa	on
;
;
;	k_pad_string(digits,k_strip_padding(k_inttodec(k_get_rtc_hour(),tmp)),'0',2);
	.line	725
	pea	#<$2
	pea	#<$30
	pea	#0
	clc
	tdc
	adc	#<L236+tmp_1
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
	adc	#<L236+digits_1
	pha
	jsl	~~k_pad_string
;	strcat(buffer, digits );
	.line	726
	pea	#0
	clc
	tdc
	adc	#<L236+digits_1
	pha
	pei	<L235+buffer_0+2
	pei	<L235+buffer_0
	jsl	~~strcat
;
;	strcat(buffer,":");
	.line	728
	pea	#^L234
	pea	#<L234
	pei	<L235+buffer_0+2
	pei	<L235+buffer_0
	jsl	~~strcat
;
;	k_pad_string(digits,k_strip_padding(k_inttodec(k_get_rtc_minute(),tmp)),'0',2);
	.line	730
	pea	#<$2
	pea	#<$30
	pea	#0
	clc
	tdc
	adc	#<L236+tmp_1
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
	adc	#<L236+digits_1
	pha
	jsl	~~k_pad_string
;	strcat(buffer, digits );
	.line	731
	pea	#0
	clc
	tdc
	adc	#<L236+digits_1
	pha
	pei	<L235+buffer_0+2
	pei	<L235+buffer_0
	jsl	~~strcat
;
;	strcat(buffer,":");
	.line	733
	pea	#^L234+2
	pea	#<L234+2
	pei	<L235+buffer_0+2
	pei	<L235+buffer_0
	jsl	~~strcat
;
;	k_pad_string(digits,k_strip_padding(k_inttodec(k_get_rtc_second(),tmp)),'0',2);
	.line	735
	pea	#<$2
	pea	#<$30
	pea	#0
	clc
	tdc
	adc	#<L236+tmp_1
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
	adc	#<L236+digits_1
	pha
	jsl	~~k_pad_string
;	strcat(buffer,digits);
	.line	736
	pea	#0
	clc
	tdc
	adc	#<L236+digits_1
	pha
	pei	<L235+buffer_0+2
	pei	<L235+buffer_0
	jsl	~~strcat
;
;
;	return buffer;
	.line	739
	ldx	<L235+buffer_0+2
	lda	<L235+buffer_0
L238:
	tay
	lda	<L235+2
	sta	<L235+2+4
	lda	<L235+1
	sta	<L235+1+4
	pld
	tsc
	clc
	adc	#L235+4
	tcs
	tya
	rtl
;}
	.line	740
	.endblock	740
L235	equ	40
L236	equ	9
	ends
	efunc
	.endfunc	740,9,40
	.line	740
	data
L234:
	db	$3A,$00,$3A,$00
	ends
;
;LPSTR k_wcstombs(LPWCSTR wcsBuffer,LPSTR mbsBuffer,UINT charCount)
;{
	.line	742
	.line	743
	code
	xdef	~~k_wcstombs
	func
	.function	743
~~k_wcstombs:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L240
	tcs
	phd
	tcd
wcsBuffer_0	set	4
mbsBuffer_0	set	8
charCount_0	set	12
	.block	743
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
	stz	<L241+c_1
	stz	<L241+mc_1
	.line	747
	lda	<L240+charCount_0
	ina
	pha
	pea	#<$0
	pei	<L240+mbsBuffer_0+2
	pei	<L240+mbsBuffer_0
	jsl	~~memset
;	for(c=0;c<(2*charCount);c+=2)
	.line	748
	stz	<L241+c_1
	brl	L10071
L10070:
;	{
	.line	749
;		mbsBuffer[mc++] = wcsBuffer[c];
	.line	750
	sep	#$20
	longa	off
	ldy	<L241+c_1
	lda	[<L240+wcsBuffer_0],Y
	ldy	<L241+mc_1
	sta	[<L240+mbsBuffer_0],Y
	rep	#$20
	longa	on
	inc	<L241+mc_1
;	}
	.line	751
L10068:
	inc	<L241+c_1
	inc	<L241+c_1
L10071:
	lda	<L240+charCount_0
	asl	A
	sta	<R0
	lda	<L241+c_1
	cmp	<R0
	bcs	L243
	brl	L10070
L243:
L10069:
;
;	return mbsBuffer;
	.line	753
	ldx	<L240+mbsBuffer_0+2
	lda	<L240+mbsBuffer_0
L244:
	tay
	lda	<L240+2
	sta	<L240+2+10
	lda	<L240+1
	sta	<L240+1+10
	pld
	tsc
	clc
	adc	#L240+10
	tcs
	tya
	rtl
;}
	.line	754
	.endblock	754
L240	equ	8
L241	equ	5
	ends
	efunc
	.endfunc	754,5,8
	.line	754
;
	.line	754
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\BaseKit\src\fxstring.c",742
	xref	~~k_get_rtc_second
	xref	~~k_get_rtc_minute
	xref	~~k_get_rtc_hour
	xref	~~k_get_rtc_year
	xref	~~k_get_rtc_century
	xref	~~k_get_rtc_day
	xref	~~k_get_rtc_month
	xref	~~k_debug_message
	xref	~~k_debug_integer
	xref	~~k_debug_char
	xref	~~tolower
	xref	~~toupper
	xref	~~strstr
	xref	~~strlen
	xref	~~strcpy
	xref	~~strcmp
	xref	~~strcat
	xref	~~memset
	xref	~~memcpy
	xref	~~malloc
	xref	~~free
	.sym	~~k_get_rtc_second,~~k_get_rtc_second,69,18,0
	.sym	~~k_get_rtc_minute,~~k_get_rtc_minute,69,18,0
	.sym	~~k_get_rtc_hour,~~k_get_rtc_hour,69,18,0
	.sym	~~k_get_rtc_year,~~k_get_rtc_year,69,18,0
	.sym	~~k_get_rtc_century,~~k_get_rtc_century,69,18,0
	.sym	~~k_get_rtc_day,~~k_get_rtc_day,69,18,0
	.sym	~~k_get_rtc_month,~~k_get_rtc_month,69,18,0
	.sym	~~k_debug_message,~~k_debug_message,69,18,0
	.sym	~~k_debug_integer,~~k_debug_integer,69,18,0
	.sym	~~k_debug_char,~~k_debug_char,69,18,0
	.sym	~~tolower,~~tolower,69,18,0
	.sym	~~toupper,~~toupper,69,18,0
	.sym	~~bytetodec,~~bytetodec,110,3,0,10
	.sym	~~bytetohex,~~bytetohex,110,3,0,16
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
	.sym	~~k_fxstring_from_long,~~k_fxstring_from_long,1098,2,32,43
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
	.sym	~~k_fxstring_reinit,~~k_fxstring_reinit,1098,2,32,43
	.sym	~~k_fxstring_new,~~k_fxstring_new,1098,2,32,43
	.sym	~~k_fxstring_init,~~k_fxstring_init,1098,2,32,43
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
	.sym	~~strupr,~~strupr,1102,2,32
	.sym	~~strstr,~~strstr,1102,18,32
	.sym	~~strlen,~~strlen,80,18,0
	.sym	~~strcpy,~~strcpy,1102,18,32
	.sym	~~strcmp,~~strcmp,69,18,0
	.sym	~~strcat,~~strcat,1102,18,32
	.sym	~~memset,~~memset,1089,18,32
	.sym	~~memcpy,~~memcpy,1089,18,32
	.sym	Boolean_T,0,5,14,16
	.sym	~~malloc,~~malloc,1089,18,32
	.sym	~~free,~~free,65,18,0
	.sym	ldiv_t,0,10,14,64,2
	.sym	div_t,0,10,14,32,1
	.sym	wctype_t,0,16,14,16
	.sym	wint_t,0,16,14,16
	.sym	wchar_t,0,14,14,8
	.sym	ptrdiff_t,0,7,14,32
	.sym	size_t,0,16,14,16
	end

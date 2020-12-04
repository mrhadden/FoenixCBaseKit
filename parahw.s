;:ts=8
R0	equ	1
R1	equ	5
R2	equ	9
R3	equ	13
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\PARA_HW.C",0
;
;#include	"HAL.H"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\HAL.H",0
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\CH376INC.H",0
	.stag	_FAT_DIR_INFO,256,1
	.member	DIR_Name,0,110,8,0,11
	.member	DIR_Attr,88,14,8,8
	.member	DIR_NTRes,96,14,8,8
	.member	DIR_CrtTimeTenth,104,14,8,8
	.member	DIR_CrtTime,112,15,8,16
	.member	DIR_CrtDate,128,15,8,16
	.member	DIR_LstAccDate,144,15,8,16
	.member	DIR_FstClusHI,160,15,8,16
	.member	DIR_WrtTime,176,15,8,16
	.member	DIR_WrtDate,192,15,8,16
	.member	DIR_FstClusLO,208,15,8,16
	.member	DIR_FileSize,224,18,8,32
	.eos
	.stag	_BULK_ONLY_CBW,248,2
	.member	CBW_Sig,0,18,8,32
	.member	CBW_Tag,32,18,8,32
	.member	CBW_DataLen0,64,14,8,8
	.member	CBW_DataLen1,72,14,8,8
	.member	CBW_DataLen2,80,15,8,16
	.member	CBW_Flag,96,14,8,8
	.member	CBW_LUN,104,14,8,8
	.member	CBW_CB_Len,112,14,8,8
	.member	CBW_CB_Buf,120,110,8,0,16
	.eos
	.stag	_INQUIRY_DATA,288,3
	.member	DeviceType,0,14,8,8
	.member	RemovableMedia,8,14,8,8
	.member	Versions,16,14,8,8
	.member	DataFormatAndEtc,24,14,8,8
	.member	AdditionalLength,32,14,8,8
	.member	Reserved1,40,14,8,8
	.member	Reserved2,48,14,8,8
	.member	MiscFlag,56,14,8,8
	.member	VendorIdStr,64,110,8,0,8
	.member	ProductIdStr,128,110,8,0,16
	.member	ProductRevStr,256,110,8,0,4
	.eos
	.stag	_SENSE_DATA,144,4
	.member	ErrorCode,0,14,8,8
	.member	SegmentNumber,8,14,8,8
	.member	SenseKeyAndEtc,16,14,8,8
	.member	Information0,24,14,8,8
	.member	Information1,32,14,8,8
	.member	Information2,40,14,8,8
	.member	Information3,48,14,8,8
	.member	AdditSenseLen,56,14,8,8
	.member	CmdSpecInfo,64,110,8,0,4
	.member	AdditSenseCode,96,14,8,8
	.member	AddSenCodeQual,104,14,8,8
	.member	FieldReplaUnit,112,14,8,8
	.member	SenseKeySpec,120,110,8,0,3
	.eos
	.stag	fake5_,112,5
	.member	mBuffer,0,110,8,0,14
	.eos
	.stag	fake6_,8,6
	.member	mUpdateFileSz,0,14,8,8
	.eos
	.stag	fake7_,8,7
	.member	mDirInfoIndex,0,14,8,8
	.eos
	.utag	fake8_,32,8
	.member	mByteOffset,0,18,11,32
	.member	mSectorLba,0,18,11,32
	.eos
	.stag	fake9_,16,9
	.member	mByteCount,0,15,8,16
	.eos
	.stag	fake10_,16,10
	.member	mByteCount,0,15,8,16
	.eos
	.utag	fake11_,32,11
	.member	mSectorOffset,0,18,11,32
	.member	mSectorLba,0,18,11,32
	.eos
	.stag	fake12_,64,12
	.member	mSectorCount,0,14,8,8
	.member	mReserved1,8,14,8,8
	.member	mReserved2,16,14,8,8
	.member	mReserved3,24,14,8,8
	.member	mStartSector,32,18,8,32
	.eos
	.stag	fake13_,64,13
	.member	mSectorCount,0,14,8,8
	.member	mReserved1,8,14,8,8
	.member	mReserved2,16,14,8,8
	.member	mReserved3,24,14,8,8
	.member	mStartSector,32,18,8,32
	.eos
	.stag	fake14_,32,14
	.member	mDiskSizeSec,0,18,8,32
	.eos
	.stag	fake15_,72,15
	.member	mTotalSector,0,18,8,32
	.member	mFreeSector,32,18,8,32
	.member	mDiskFat,64,14,8,8
	.eos
	.stag	fake16_,8,16
	.member	mMaxLogicUnit,0,14,8,8
	.eos
	.stag	fake17_,32,17
	.member	mDiskSizeSec,0,18,8,32
	.eos
	.stag	fake18_,40,18
	.member	mStartSector,0,18,8,32
	.member	mSectorCount,32,14,8,8
	.eos
	.stag	fake19_,40,19
	.member	mStartSector,0,18,8,32
	.member	mSectorCount,32,14,8,8
	.eos
	.utag	_CH376_CMD_DATA,288,20
	.member	Default,0,10,11,112,5
	.member	DiskMountInq,0,10,11,288,3
	.member	OpenDirInfo,0,10,11,256,1
	.member	EnumDirInfo,0,10,11,256,1
	.member	FileCLose,0,10,11,8,6
	.member	DirInfoRead,0,10,11,8,7
	.member	ByteLocate,0,11,11,32,8
	.member	ByteRead,0,10,11,16,9
	.member	ByteWrite,0,10,11,16,10
	.member	SectorLocate,0,11,11,32,11
	.member	SectorRead,0,10,11,64,12
	.member	SectorWrite,0,10,11,64,13
	.member	DiskCapacity,0,10,11,32,14
	.member	DiskQuery,0,10,11,72,15
	.member	DiskBocCbw,0,10,11,248,2
	.member	DiskMaxLun,0,10,11,8,16
	.member	DiskInitInq,0,10,11,288,3
	.member	DiskInqData,0,10,11,288,3
	.member	ReqSenseData,0,10,11,144,4
	.member	DiskSize,0,10,11,32,17
	.member	DiskRead,0,10,11,40,18
	.member	DiskWrite,0,10,11,40,19
	.eos
	.line	586
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\HAL.H",4
	.line	42
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\PARA_HW.C",2
;#include	"fxtypes.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxtypes.h",0
	.stag	_fx_bytebits,8,21
	.member	b7,0,14,17,1
	.member	b6,1,14,17,1
	.member	b5,2,14,17,1
	.member	b4,3,14,17,1
	.member	b3,4,14,17,1
	.member	b2,5,14,17,1
	.member	b1,6,14,17,1
	.member	b0,7,14,17,1
	.eos
	.stag	_fx_node,384,22
	.member	type,0,14,8,8
	.member	Reserved0,8,14,8,8
	.member	data,16,129,8,32
	.member	last,48,138,8,32,22
	.member	next,80,138,8,32,22
	.member	name,112,110,8,0,32
	.member	Reserved1,368,16,8,16
	.eos
	.stag	_fx_nodelist,96,23
	.member	listhead,0,138,8,32,22
	.member	listData,32,129,8,32
	.member	deallocator,64,641,8,32
	.eos
	.stag	_fx_queue,80,24
	.member	count,0,5,8,16
	.member	front,16,138,8,32,22
	.member	rear,48,138,8,32,22
	.eos
	.stag	fake25_,32,25
	.member	subsystem,0,14,8,8
	.member	level,8,14,8,8
	.member	error,16,16,8,16
	.eos
	.stag	_fx_process_signal,16,26
	.member	cbSize,0,16,8,16
	.eos
	.stag	_fx_semaphore,16,27
	.member	reserved,0,5,8,16
	.eos
	.stag	_fx_fileBlock,552,28
	.member	openCount,0,16,8,16
	.member	lockCount,16,16,8,16
	.member	dirty,32,14,8,8
	.member	fileBuffer,40,110,8,0,64
	.eos
	.stag	_fx_irq_data,48,29
	.member	line,0,5,8,16
	.member	keycode,16,142,8,32
	.eos
	.stag	_task,48,30
	.member	SPL,0,14,8,8
	.member	SPH,8,14,8,8
	.member	pstack,16,142,8,32
	.eos
	.stag	_task_stack,32,31
	.member	SS,0,142,8,32
	.eos
	.stag	int_regs,104,32
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
	.stag	_fx_eventMessage,304,33
	.member	src,0,18,8,32
	.member	dest,32,18,8,32
	.member	type,64,16,8,16
	.member	hwnd,80,129,8,32
	.member	pheap,112,129,8,32
	.member	msgTime,144,18,8,32
	.member	data,176,110,8,0,16
	.eos
	.stag	_fx_cmdMessage,304,34
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
	.stag	_fx_console_ctl,448,35
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
	.stag	_fx_desktop_ctl,392,36
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
	.member	wndProc,360,138,8,32,23
	.eos
	.stag	_fx_process,800,37
	.member	cbSize,0,5,8,16
	.member	procId,16,18,8,32
	.member	parentId,48,18,8,32
	.member	ctx,80,129,8,32
	.member	userId,112,16,8,16
	.member	status,128,16,8,16
	.member	foregroundActive,144,14,8,8
	.member	tls,152,1121,8,32,8
	.member	commandLine,408,142,8,32
	.member	semaphores,440,138,8,32,23
	.member	fileHandles,472,138,8,32,23
	.member	pathList,504,138,8,32,23
	.member	resources,536,138,8,32,23
	.member	timerAware,568,14,8,8
	.member	timerTicks,576,112,8,0,2
	.member	timerTickCount,608,112,8,0,2
	.member	kernelError,640,10,8,32,25
	.member	consoleCtl,672,138,8,32,35
	.member	desktopCtl,704,138,8,32,36
	.member	execProc,736,641,8,32
	.member	startupArgs,768,129,8,32
	.eos
	.stag	_fxProcessMessage,112,38
	.member	src,0,18,8,32
	.member	dest,32,18,8,32
	.member	type,64,16,8,16
	.member	processInfo,80,138,8,32,37
	.eos
	.stag	_fx_property,384,39
	.member	name,0,110,8,0,16
	.member	value,128,110,8,0,32
	.eos
	.utag	_24bitPointer,32,40
	.member	address,0,142,11,32
	.member	bytes,0,110,11,0,4
	.eos
	.stag	_PointStruct,32,41
	.member	x,0,5,8,16
	.member	y,16,5,8,16
	.eos
	.stag	_RectStruct,64,42
	.member	x,0,5,8,16
	.member	y,16,5,8,16
	.member	width,32,5,8,16
	.member	height,48,5,8,16
	.eos
	.stag	_k_WindowClass,256,43
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
	.stag	_ClickableRect,88,44
	.member	area,0,10,8,64,42
	.member	z,64,5,8,16
	.member	enabled,80,14,8,8
	.eos
	.stag	_NCClickableRect,88,45
	.member	area,0,10,8,64,42
	.member	msgType,64,16,8,16
	.member	enabled,80,14,8,8
	.eos
	.stag	_DragData,136,46
	.member	area,0,10,8,64,42
	.member	xoffset,64,5,8,16
	.member	yoffset,80,5,8,16
	.member	msgType,96,16,8,16
	.member	isDrag,112,14,8,8
	.member	canDrag,120,14,8,8
	.member	canDrop,128,14,8,8
	.eos
	.stag	_k_WindowStruct,2808,47
	.member	cbSize,0,16,8,16
	.member	style,16,18,8,32
	.member	win_id,48,5,8,16
	.member	win_x,64,5,8,16
	.member	win_y,80,5,8,16
	.member	win_width,96,5,8,16
	.member	win_height,112,5,8,16
	.member	wndRect,128,10,8,64,42
	.member	clientRect,192,10,8,64,42
	.member	nonclientGadgets,256,106,8,0,45,16
	.member	clickable,1664,129,8,32
	.member	win_title,1696,110,8,0,32
	.member	Reserved0,1952,16,8,16
	.member	win_class,1968,110,8,0,16
	.member	win_class_name,2096,110,8,0,32
	.member	nBitmapLayer,2352,16,8,16
	.member	procid,2368,18,8,32
	.member	pWndClass,2400,138,8,32,43
	.member	pParentWindow,2432,129,8,32
	.member	hMenu,2464,129,8,32
	.member	pChildWindows,2496,138,8,32,23
	.member	pChildHitList,2528,138,8,32,23
	.member	isVisible,2560,14,8,8
	.member	windowData,2568,129,8,32
	.member	clientData,2600,1121,8,32,6
	.member	isClosed,2792,14,8,8
	.member	isClosing,2800,14,8,8
	.eos
	.stag	_k_WindowStructEx,2704,48
	.member	cbSize,0,16,8,16
	.member	style,16,18,8,32
	.member	win_id,48,5,8,16
	.member	win_x,64,5,8,16
	.member	win_y,80,5,8,16
	.member	win_width,96,5,8,16
	.member	win_height,112,5,8,16
	.member	wndRect,128,10,8,64,42
	.member	clientRect,192,10,8,64,42
	.member	nonclientGadgets,256,106,8,0,45,16
	.member	clickable,1664,129,8,32
	.member	win_title,1696,110,8,0,32
	.member	Reserved0,1952,16,8,16
	.member	win_class,1968,110,8,0,16
	.member	nBitmapLayer,2096,16,8,16
	.member	procid,2112,18,8,32
	.member	pWndClass,2144,138,8,32,43
	.member	pParentWindow,2176,129,8,32
	.member	hMenu,2208,129,8,32
	.member	pChildWindows,2240,138,8,32,23
	.member	pChildHitList,2272,138,8,32,23
	.member	isVisible,2304,14,8,8
	.member	windowData,2312,129,8,32
	.member	clientData,2344,1121,8,32,4
	.member	isClosed,2472,14,8,8
	.member	hWnd,2480,129,8,32
	.member	localRect,2512,10,8,64,42
	.member	globalRect,2576,10,8,64,42
	.member	clientOffsetRect,2640,10,8,64,42
	.eos
	.stag	_FontMetric,32,49
	.member	width,0,5,8,16
	.member	height,16,5,8,16
	.eos
	.stag	_ctl_Textbox,112,50
	.member	win_id,0,5,8,16
	.member	win_x,16,5,8,16
	.member	win_y,32,5,8,16
	.member	win_width,48,5,8,16
	.member	win_height,64,5,8,16
	.member	content,80,1166,8,32
	.eos
	.stag	_MenuStruct,248,51
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
	.member	subMenus,152,138,8,32,23
	.member	pBackground,184,129,8,32
	.member	hWndOwner,216,129,8,32
	.eos
	.stag	fake52_,112,52
	.member	menuId,0,16,8,16
	.member	caption,16,142,8,32
	.member	rect,48,10,8,64,42
	.eos
	.stag	fake53_,3568,53
	.member	pParent,0,138,8,32,47
	.member	rect,32,10,8,64,42
	.member	captions,96,1134,8,32,24
	.member	chrome,864,110,8,0,24
	.member	ids,1056,112,8,0,24
	.member	clickable,1440,106,8,0,44,24
	.member	selected,3552,16,8,16
	.eos
	.stag	_fx_button_t,80,54
	.member	pCaption,0,142,8,32
	.member	data,32,129,8,32
	.member	captionPixelWidth,64,16,8,16
	.eos
	.stag	_fx_scrollbar_t,192,55
	.member	min,0,16,8,16
	.member	max,16,16,8,16
	.member	increment,32,16,8,16
	.member	stopsize,48,16,8,16
	.member	location,64,5,8,16
	.member	state,80,5,8,16
	.member	rectThumb,96,10,8,64,42
	.member	data,160,129,8,32
	.eos
	.stag	_fx_listbox_t,240,56
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
	.stag	_fx_textbox_t,144,57
	.member	pos,0,5,8,16
	.member	selected,16,16,8,16
	.member	offsetX,32,5,8,16
	.member	offsetY,48,5,8,16
	.member	isShifted,64,14,8,8
	.member	cursorState,72,14,8,8
	.member	fontSet,80,142,8,32
	.member	data,112,129,8,32
	.eos
	.stag	_fx_menuAnchor_t,144,58
	.member	pCaption,0,142,8,32
	.member	renderLayoutX,32,16,8,16
	.member	renderLayoutY,48,16,8,16
	.member	captionPixelWidth,64,16,8,16
	.member	data,80,129,8,32
	.member	droppedWindow,112,138,8,32,47
	.eos
	.stag	_SubMenuStruct,64,59
	.member	caption,0,142,8,32
	.member	action,32,641,8,32
	.eos
	.stag	_SubMenuListStruct,40,60
	.member	cMenus,0,14,8,8
	.member	psubmenus,8,9354,8,32,59
	.eos
	.stag	_fx_ComBuffer,2080,61
	.member	cbSize,0,16,8,16
	.member	cbBuffer,16,16,8,16
	.member	buffer,32,110,8,0,256
	.eos
	.line	708
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\PARA_HW.C",3
;//#include "fxkernel.h"
;
;//void k_debug_integer(char FAR* debugString, UINT n);
;
;#define CH376_CMD_PORT	((unsigned char FAR *)0xAFE809)
;#define CH376_DAT_PORT	((unsigned char FAR *)0xAFE808)
;
;
;
;void CH376_PORT_INIT( void )
;{
	.line	13
	.line	14
	code
	xdef	~~CH376_PORT_INIT
	func
	.function	14
~~CH376_PORT_INIT:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L2
	tcs
	phd
	tcd
	.block	14
;}
	.line	15
L5:
	pld
	tsc
	clc
	adc	#L2
	tcs
	rtl
	.endblock	15
L2	equ	0
L3	equ	1
	ends
	efunc
	.endfunc	15,1,0
	.line	15
;
;//void	mDelay0_5uS( void )
;//{
;//}
;
;void xEndCH376Cmd(void)
;{
	.line	21
	.line	22
	code
	xdef	~~xEndCH376Cmd
	func
	.function	22
~~xEndCH376Cmd:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L6
	tcs
	phd
	tcd
	.block	22
;	return;
	.line	23
L9:
	pld
	tsc
	clc
	adc	#L6
	tcs
	rtl
;}
	.line	24
	.endblock	24
L6	equ	0
L7	equ	1
	ends
	efunc
	.endfunc	24,1,0
	.line	24
;
;UINT8 xReadCH376Status(void)
;{
	.line	26
	.line	27
	code
	xdef	~~xReadCH376Status
	func
	.function	27
~~xReadCH376Status:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L10
	tcs
	phd
	tcd
	.block	27
;	UINT8 b = 0;
;
;	k_debug_integer("xReadCH376Status1:",0);
b_1	set	0
	.sym	b,0,14,1,8
	sep	#$20
	longa	off
	stz	<L11+b_1
	rep	#$20
	longa	on
	.line	30
	pea	#<$0
	pea	#^L1
	pea	#<L1
	jsl	~~k_debug_integer
;
;	b = CH376_CMD_PORT[0];
	.line	32
	sep	#$20
	longa	off
	lda	>11528201
	sta	<L11+b_1
	rep	#$20
	longa	on
;
;	k_debug_integer("xReadCH376Status2:",0);
	.line	34
	pea	#<$0
	pea	#^L1+19
	pea	#<L1+19
	jsl	~~k_debug_integer
;
;
;	return b;
	.line	37
	lda	<L11+b_1
	and	#$ff
L13:
	tay
	pld
	tsc
	clc
	adc	#L10
	tcs
	tya
	rtl
;}
	.line	38
	.endblock	38
L10	equ	1
L11	equ	1
	ends
	efunc
	.endfunc	38,1,1
	.line	38
	data
L1:
	db	$78,$52,$65,$61,$64,$43,$48,$33,$37,$36,$53,$74,$61,$74,$75
	db	$73,$31,$3A,$00,$78,$52,$65,$61,$64,$43,$48,$33,$37,$36,$53
	db	$74,$61,$74,$75,$73,$32,$3A,$00
	ends
;
;void xWriteCH376Cmd( UINT8 mCmd )
;{
	.line	40
	.line	41
	code
	xdef	~~xWriteCH376Cmd
	func
	.function	41
~~xWriteCH376Cmd:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L15
	tcs
	phd
	tcd
mCmd_0	set	4
	.block	41
;	UINT8	i;
;
;
;
;	CH376_CMD_PORT[0] = mCmd;
i_1	set	0
	.sym	i,0,14,1,8
	.sym	mCmd,4,14,6,8
	.line	46
	sep	#$20
	longa	off
	lda	<L15+mCmd_0
	sta	>11528201
	rep	#$20
	longa	on
;	/*	mDelay0_5uS( ); mDelay0_5uS( ); mDelay0_5uS( );*/
;
;	k_debug_integer("xWriteCH376Cmd1:",mCmd);
	.line	49
	lda	<L15+mCmd_0
	and	#$ff
	pha
	pea	#^L14
	pea	#<L14
	jsl	~~k_debug_integer
;
;	mDelaymS(1);
	.line	51
	pea	#<$1
	jsl	~~mDelaymS
;
;	k_debug_integer("xWriteCH376Cmd2:",mCmd);
	.line	53
	lda	<L15+mCmd_0
	and	#$ff
	pha
	pea	#^L14+17
	pea	#<L14+17
	jsl	~~k_debug_integer
;
;	for ( i = 10; i != 0; -- i )
	.line	55
	sep	#$20
	longa	off
	lda	#$a
	sta	<L16+i_1
	rep	#$20
	longa	on
	brl	L10004
L10003:
;	{
	.line	56
;		if ( ( xReadCH376Status( ) & PARA_STATE_BUSY ) == 0 )
	.line	57
;			break;
	jsl	~~xReadCH376Status
	sep	#$20
	longa	off
	and	#<$10
	rep	#$20
	longa	on
	bne	L18
	brl	L10002
L18:
;	}
	.line	59
L10001:
	sep	#$20
	longa	off
	dec	<L16+i_1
	rep	#$20
	longa	on
L10004:
	lda	<L16+i_1
	and	#$ff
	beq	L19
	brl	L10003
L19:
L10002:
;}
	.line	60
L20:
	lda	<L15+2
	sta	<L15+2+2
	lda	<L15+1
	sta	<L15+1+2
	pld
	tsc
	clc
	adc	#L15+2
	tcs
	rtl
	.endblock	60
L15	equ	1
L16	equ	1
	ends
	efunc
	.endfunc	60,1,1
	.line	60
	data
L14:
	db	$78,$57,$72,$69,$74,$65,$43,$48,$33,$37,$36,$43,$6D,$64,$31
	db	$3A,$00,$78,$57,$72,$69,$74,$65,$43,$48,$33,$37,$36,$43,$6D
	db	$64,$32,$3A,$00
	ends
;
;
;void	xWriteCH376Data( UINT8 mData )
;{
	.line	63
	.line	64
	code
	xdef	~~xWriteCH376Data
	func
	.function	64
~~xWriteCH376Data:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L22
	tcs
	phd
	tcd
mData_0	set	4
	.block	64
;	CH376_DAT_PORT[0] = mData;
	.sym	mData,4,14,6,8
	.line	65
	sep	#$20
	longa	off
	lda	<L22+mData_0
	sta	>11528200
	rep	#$20
	longa	on
;	mDelaymS(1);
	.line	66
	pea	#<$1
	jsl	~~mDelaymS
;//	mDelay0_5uS( );
;}
	.line	68
L25:
	lda	<L22+2
	sta	<L22+2+2
	lda	<L22+1
	sta	<L22+1+2
	pld
	tsc
	clc
	adc	#L22+2
	tcs
	rtl
	.endblock	68
L22	equ	0
L23	equ	1
	ends
	efunc
	.endfunc	68,1,0
	.line	68
;UINT8	xReadCH376Data( void )
;{
	.line	69
	.line	70
	code
	xdef	~~xReadCH376Data
	func
	.function	70
~~xReadCH376Data:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L26
	tcs
	phd
	tcd
	.block	70
;	UINT8 b = 0;
;
;//	mDelay0_5uS( );
;	mDelaymS(1);
b_1	set	0
	.sym	b,0,14,1,8
	sep	#$20
	longa	off
	stz	<L27+b_1
	rep	#$20
	longa	on
	.line	74
	pea	#<$1
	jsl	~~mDelaymS
;
;	b = CH376_DAT_PORT[0];
	.line	76
	sep	#$20
	longa	off
	lda	>11528200
	sta	<L27+b_1
	rep	#$20
	longa	on
;
;	return b;
	.line	78
	lda	<L27+b_1
	and	#$ff
L29:
	tay
	pld
	tsc
	clc
	adc	#L26
	tcs
	tya
	rtl
;}
	.line	79
	.endblock	79
L26	equ	1
L27	equ	1
	ends
	efunc
	.endfunc	79,1,1
	.line	79
;
;
;
;UINT8 Query376Interrupt( void )
;{
	.line	83
	.line	84
	code
	xdef	~~Query376Interrupt
	func
	.function	84
~~Query376Interrupt:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L30
	tcs
	phd
	tcd
	.block	84
;	//return( xReadCH376Status( ) & PARA_STATE_INTB ? FALSE : TRUE );
;
;	UINT8 status = 0x80;
;
;	asm SEI;
status_1	set	0
	.sym	status,0,14,1,8
	sep	#$20
	longa	off
	lda	#$80
	sta	<L31+status_1
	rep	#$20
	longa	on
	.line	89
	asmstart
	SEI
	asmend
;
;	while(status == 0x80)
	.line	91
L10005:
	sep	#$20
	longa	off
	lda	<L31+status_1
	cmp	#<$80
	rep	#$20
	longa	on
	beq	L33
	brl	L10006
L33:
;	{
	.line	92
;		status = xReadCH376Status();
	.line	93
	jsl	~~xReadCH376Status
	sep	#$20
	longa	off
	sta	<L31+status_1
	rep	#$20
	longa	on
;	    k_debug_integer("k_sd_waitforirq::wait:",status);
	.line	94
	lda	<L31+status_1
	and	#$ff
	pha
	pea	#^L21
	pea	#<L21
	jsl	~~k_debug_integer
;	}
	.line	95
	brl	L10005
L10006:
;
;	mDelayuS(2);
	.line	97
	pea	#<$2
	jsl	~~mDelayuS
;
;	xWriteCH376Cmd(CMD01_GET_STATUS);
	.line	99
	pea	#<$22
	jsl	~~xWriteCH376Cmd
;
;	mDelayuS(1);
	.line	101
	pea	#<$1
	jsl	~~mDelayuS
;
;	status = xReadCH376Status();
	.line	103
	jsl	~~xReadCH376Status
	sep	#$20
	longa	off
	sta	<L31+status_1
	rep	#$20
	longa	on
;
;	k_debug_integer("k_sd_waitforirq::status:",status);
	.line	105
	lda	<L31+status_1
	and	#$ff
	pha
	pea	#^L21+23
	pea	#<L21+23
	jsl	~~k_debug_integer
;
;	asm cli;
	.line	107
	asmstart
	cli
	asmend
;
;	return status;
	.line	109
	lda	<L31+status_1
	and	#$ff
L34:
	tay
	pld
	tsc
	clc
	adc	#L30
	tcs
	tya
	rtl
;
;
;}
	.line	112
	.endblock	112
L30	equ	1
L31	equ	1
	ends
	efunc
	.endfunc	112,1,1
	.line	112
	data
L21:
	db	$6B,$5F,$73,$64,$5F,$77,$61,$69,$74,$66,$6F,$72,$69,$72,$71
	db	$3A,$3A,$77,$61,$69,$74,$3A,$00,$6B,$5F,$73,$64,$5F,$77,$61
	db	$69,$74,$66,$6F,$72,$69,$72,$71,$3A,$3A,$73,$74,$61,$74,$75
	db	$73,$3A,$00
	ends
;
;UINT8	mInitCH376Host( void )
;{
	.line	114
	.line	115
	code
	xdef	~~mInitCH376Host
	func
	.function	115
~~mInitCH376Host:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L36
	tcs
	phd
	tcd
	.block	115
;	UINT8	res;
;	CH376_PORT_INIT( );
res_1	set	0
	.sym	res,0,14,1,8
	.line	117
	jsl	~~CH376_PORT_INIT
;	xWriteCH376Cmd( CMD11_CHECK_EXIST );
	.line	118
	pea	#<$6
	jsl	~~xWriteCH376Cmd
;	xWriteCH376Data( 0x65 );
	.line	119
	pea	#<$65
	jsl	~~xWriteCH376Data
;	res = xReadCH376Data( );
	.line	120
	jsl	~~xReadCH376Data
	sep	#$20
	longa	off
	sta	<L37+res_1
	rep	#$20
	longa	on
;//	xEndCH376Cmd( );
;	if ( res != 0x9A ) return( ERR_USB_UNKNOWN );
	.line	122
	sep	#$20
	longa	off
	lda	<L37+res_1
	cmp	#<$9a
	rep	#$20
	longa	on
	bne	L39
	brl	L10007
L39:
	.line	122
	lda	#$fa
L40:
	tay
	pld
	tsc
	clc
	adc	#L36
	tcs
	tya
	rtl
;	xWriteCH376Cmd( CMD11_SET_USB_MODE );
L10007:
	.line	123
	pea	#<$15
	jsl	~~xWriteCH376Cmd
;	xWriteCH376Data( 0x03 );
	.line	124
	pea	#<$3
	jsl	~~xWriteCH376Data
;	mDelayuS( 20 );
	.line	125
	pea	#<$14
	jsl	~~mDelayuS
;	res = xReadCH376Data( );
	.line	126
	jsl	~~xReadCH376Data
	sep	#$20
	longa	off
	sta	<L37+res_1
	rep	#$20
	longa	on
;//	xEndCH376Cmd( );
;	if ( res == CMD_RET_SUCCESS ) return( USB_INT_SUCCESS );
	.line	128
	sep	#$20
	longa	off
	lda	<L37+res_1
	cmp	#<$51
	rep	#$20
	longa	on
	beq	L41
	brl	L10008
L41:
	.line	128
	lda	#$14
	brl	L40
;	else return( ERR_USB_UNKNOWN );
L10008:
	.line	129
	lda	#$fa
	brl	L40
;}
	.line	130
	.endblock	130
L36	equ	1
L37	equ	1
	ends
	efunc
	.endfunc	130,1,1
	.line	130
;
	.line	130
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\PARA_HW.C",114
	xref	~~k_debug_integer
	xref	~~mDelaymS
	xref	~~mDelayuS
	.sym	~~k_debug_integer,~~k_debug_integer,69,18,0
	.sym	~~xReadCH376Status,~~xReadCH376Status,78,2,0
	.sym	PFXCOMBUFFER,0,138,14,32,61
	.sym	FXCOMBUFFER,0,10,14,2080,61
	.sym	PSUBMENULIST,0,138,14,32,60
	.sym	SUBMENULIST,0,10,14,40,60
	.sym	HSUBMENU,0,7,14,32
	.sym	PSUBMENU,0,138,14,32,59
	.sym	SUBMENU,0,10,14,64,59
	.sym	MenuAction,0,641,14,32
	.sym	PMENUANCHOR,0,138,14,32,58
	.sym	MENUANCHOR,0,10,14,144,58
	.sym	PTEXTBOX,0,138,14,32,57
	.sym	TEXTBOX,0,10,14,144,57
	.sym	PLISTBOX,0,138,14,32,56
	.sym	LISTBOX,0,10,14,240,56
	.sym	PSCROLLBAR,0,138,14,32,55
	.sym	SCROLLBAR,0,10,14,192,55
	.sym	PBUTTON,0,138,14,32,54
	.sym	BUTTON,0,10,14,80,54
	.sym	PMENUDROPDOWNDATA,0,138,14,32,53
	.sym	MENUDROPDOWNDATA,0,10,14,3568,53
	.sym	PMENUTAG,0,138,14,32,52
	.sym	MENUTAG,0,10,14,112,52
	.sym	PMENU,0,138,14,32,51
	.sym	MENU,0,10,14,248,51
	.sym	HMENURESOURCE,0,129,14,32
	.sym	HTEXTBOX,0,7,14,32
	.sym	PTEXTBOXX,0,138,14,32,50
	.sym	TEXTBOXX,0,10,14,112,50
	.sym	FONTMETRIC,0,10,14,32,49
	.sym	TITLE,0,142,14,32
	.sym	PHANDLE,0,1153,14,32
	.sym	HANDLE,0,129,14,32
	.sym	PWINDOWEX,0,138,14,32,48
	.sym	WINDOWEX,0,10,14,2704,48
	.sym	PWINDOW,0,138,14,32,47
	.sym	WINDOW,0,10,14,2808,47
	.sym	PDRAGDATA,0,138,14,32,46
	.sym	DRAGDATA,0,10,14,136,46
	.sym	PNCCLICKABLE,0,138,14,32,45
	.sym	NCCLICKABLE,0,10,14,88,45
	.sym	HCLICKABLE,0,7,14,32
	.sym	PCLICKABLE,0,138,14,32,44
	.sym	CLICKABLE,0,10,14,88,44
	.sym	PWNDCLASS,0,138,14,32,43
	.sym	WNDCLASS,0,10,14,256,43
	.sym	HBRUSH,0,129,14,32
	.sym	HCURSOR,0,129,14,32
	.sym	HICON,0,129,14,32
	.sym	HINSTANCE,0,129,14,32
	.sym	FXWndProc,0,654,14,32
	.sym	PRECT,0,138,14,32,42
	.sym	RECT,0,10,14,64,42
	.sym	PPOINT,0,138,14,32,41
	.sym	POINT,0,10,14,32,41
	.sym	PFXPROPERTY,0,138,14,32,39
	.sym	FXPROPERTY,0,10,14,384,39
	.sym	SCANCODE,0,14,14,8
	.sym	KEYCODE,0,14,14,8
	.sym	PFXPROCESSMESSAGE,0,138,14,32,38
	.sym	FXPROCESSMESSAGE,0,10,14,112,38
	.sym	PFXPROCESS,0,138,14,32,37
	.sym	FXPROCESS,0,10,14,800,37
	.sym	PDESKTOP_CONTROL,0,138,14,32,36
	.sym	DESKTOP_CONTROL,0,10,14,392,36
	.sym	PCONSOLE_CONTROL,0,138,14,32,35
	.sym	CONSOLE_CONTROL,0,10,14,448,35
	.sym	FXProcessProc,0,641,14,32
	.sym	PFXCMDMESSAGE,0,138,14,32,34
	.sym	FXCMDMESSAGE,0,10,14,304,34
	.sym	PFXOSMESSAGE,0,138,14,32,33
	.sym	FXOSMESSAGE,0,10,14,304,33
	.sym	PINT_REGS,0,138,14,32,32
	.sym	INT_REGS,0,10,14,104,32
	.sym	TASK_STACK,0,10,14,32,31
	.sym	TASK,0,10,14,48,30
	.sym	PIRQDATA,0,138,14,32,29
	.sym	IRQDATA,0,10,14,48,29
	.sym	HMENU,0,129,14,32
	.sym	HWND,0,129,14,32
	.sym	MSGDATA,0,14,14,8
	.sym	MSGDEST,0,18,14,32
	.sym	MSGSRC,0,18,14,32
	.sym	MSGTYPE,0,16,14,16
	.sym	PROCESS_RESOURCE_LIST,0,138,14,32,23
	.sym	PROCESS_TLS_LIST,0,138,14,32,23
	.sym	SEMAPHORE_LIST,0,138,14,32,23
	.sym	FILE_BLOCK_LIST,0,138,14,32,23
	.sym	FILE_PATH_LIST,0,138,14,32,23
	.sym	PROCEDURE_LIST,0,138,14,32,23
	.sym	FILE_HANDLE,0,138,14,32,28
	.sym	FILE_BLOCK,0,10,14,552,28
	.sym	SEMAPHORE,0,10,14,16,27
	.sym	PPROCESS_SIGNAL,0,138,14,32,26
	.sym	PROCESS_SIGNAL,0,10,14,16,26
	.sym	KRESULT,0,18,14,32
	.sym	PKERNEL_ERROR,0,138,14,32,25
	.sym	KERNEL_ERROR,0,10,14,32,25
	.sym	PROCESS_STATUS,0,16,14,16
	.sym	FILE_PATH_NAME,0,142,14,32
	.sym	PROCESS_RESOURCE,0,129,14,32
	.sym	PROCESS_TLS,0,129,14,32
	.sym	PROCESS_CTX,0,129,14,32
	.sym	USERID,0,16,14,16
	.sym	PROCESS_ID,0,18,14,32
	.sym	PROCESS_BANK,0,14,14,8
	.sym	PFXQUEUE,0,138,14,32,24
	.sym	FXQUEUE,0,10,14,80,24
	.sym	PFXNODELIST,0,138,14,32,23
	.sym	FXNODELIST,0,10,14,96,23
	.sym	NodeListDeallocator,0,641,14,32
	.sym	PFXNODE,0,138,14,32,22
	.sym	FXNODE,0,10,14,384,22
	.sym	PBYTEBITS,0,138,14,32,21
	.sym	BYTEBITS,0,10,14,8,21
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
	.sym	~~mInitCH376Host,~~mInitCH376Host,78,2,0
	.sym	~~Query376Interrupt,~~Query376Interrupt,78,2,0
	.sym	~~xReadCH376Data,~~xReadCH376Data,78,2,0
	.sym	~~xWriteCH376Data,~~xWriteCH376Data,65,2,0
	.sym	~~xWriteCH376Cmd,~~xWriteCH376Cmd,65,2,0
	.sym	~~xEndCH376Cmd,~~xEndCH376Cmd,65,2,0
	.sym	~~CH376_PORT_INIT,~~CH376_PORT_INIT,65,2,0
	.sym	~~mDelaymS,~~mDelaymS,65,18,0
	.sym	~~mDelayuS,~~mDelayuS,65,18,0
	.sym	P_CH376_CMD_DATA,0,139,14,32,20
	.sym	CH376_CMD_DATA,0,11,14,288,20
	.sym	P_SENSE_DATA,0,138,14,32,4
	.sym	SENSE_DATA,0,10,14,144,4
	.sym	P_INQUIRY_DATA,0,138,14,32,3
	.sym	INQUIRY_DATA,0,10,14,288,3
	.sym	P_BULK_ONLY_CBW,0,138,14,32,2
	.sym	BULK_ONLY_CBW,0,10,14,248,2
	.sym	P_FAT_DIR_INFO,0,138,14,32,1
	.sym	FAT_DIR_INFO,0,10,14,256,1
	.sym	PUINT8V,0,142,14,32
	.sym	UINT8V,0,14,14,8
	.sym	PUINT32,0,146,14,32
	.sym	PUINT16,0,143,14,32
	.sym	PUINT8,0,142,14,32
	.sym	UINT32,0,18,14,32
	.sym	UINT16,0,15,14,16
	.sym	UINT8,0,14,14,8
	end

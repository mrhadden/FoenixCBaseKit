;:ts=8
R0	equ	1
R1	equ	5
R2	equ	9
R3	equ	13
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\diskio.c",0
;/*-----------------------------------------------------------------------*/
;/* Low level disk I/O module skeleton for FatFs     (C)ChaN, 2019        */
;/*-----------------------------------------------------------------------*/
;/* If a working storage control module is available, it should be        */
;/* attached to the FatFs via a glue function rather than modifying it.   */
;/* This is an example of glue functions to attach various exsisting      */
;/* storage control modules to the FatFs module with a defined API.       */
;/*-----------------------------------------------------------------------*/
;
;#ifdef USE_FX256_FMX
;
;
;#include "ff.h"			/* Obtains integer types */
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\ff.h",0
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\ffconf.h",0
	.line	298
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\ff.h",29
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\ff.h",30
	.stag	fake42_,4472,42
	.member	fs_type,0,14,8,8
	.member	pdrv,8,14,8,8
	.member	n_fats,16,14,8,8
	.member	wflag,24,14,8,8
	.member	fsi_flag,32,14,8,8
	.member	id,40,5,8,16
	.member	n_rootdir,56,5,8,16
	.member	csize,72,5,8,16
	.member	last_clst,88,18,8,32
	.member	free_clst,120,18,8,32
	.member	n_fatent,152,18,8,32
	.member	fsize,184,18,8,32
	.member	volbase,216,18,8,32
	.member	fatbase,248,18,8,32
	.member	dirbase,280,18,8,32
	.member	database,312,18,8,32
	.member	winsect,344,18,8,32
	.member	win,376,110,8,0,512
	.eos
	.stag	fake43_,128,43
	.member	fs,0,138,8,32,42
	.member	id,32,5,8,16
	.member	attr,48,14,8,8
	.member	stat,56,14,8,8
	.member	sclust,64,18,8,32
	.member	objsize,96,18,8,32
	.eos
	.stag	fake44_,4400,44
	.member	obj,0,10,8,128,43
	.member	flag,128,14,8,8
	.member	err,136,14,8,8
	.member	fptr,144,18,8,32
	.member	clust,176,18,8,32
	.member	sect,208,18,8,32
	.member	dir_sect,240,18,8,32
	.member	dir_ptr,272,142,8,32
	.member	buf,304,110,8,0,512
	.eos
	.stag	fake45_,352,45
	.member	obj,0,10,8,128,43
	.member	dptr,128,18,8,32
	.member	clust,160,18,8,32
	.member	sect,192,18,8,32
	.member	dir,224,142,8,32
	.member	fn,256,110,8,0,12
	.eos
	.stag	fake46_,176,46
	.member	fsize,0,18,8,32
	.member	fdate,32,5,8,16
	.member	ftime,48,5,8,16
	.member	fattrib,64,14,8,8
	.member	fname,72,110,8,0,13
	.eos
	.stag	fake47_,80,47
	.member	fmt,0,14,8,8
	.member	n_fat,8,14,8,8
	.member	align,16,16,8,16
	.member	n_root,32,16,8,16
	.member	au_size,48,18,8,32
	.eos
	.line	429
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\diskio.c",13
;#include "diskio.h"		/* Declarations of disk functions */
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\diskio.h",0
	.line	77
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\diskio.c",14
;#include "fxdos.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxdos.h",0
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxtypes.h",0
	.line	708
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxdos.h",5
	.stag	_fx_sd_direntry,256,48
	.member	filename,0,110,8,0,11
	.member	type,88,14,8,8
	.member	attrs,96,110,8,0,20
	.eos
	.stag	_fx_info,416,49
	.member	stgName,0,110,8,0,32
	.member	Reserved1,256,14,8,8
	.member	stgType,264,16,8,16
	.member	Reserved2,280,14,8,8
	.member	stgReserved,288,110,8,0,16
	.eos
	.stag	_fx_fileinfo,136,50
	.member	type,0,14,8,8
	.member	pFilename,8,142,8,32
	.member	lSize,40,18,8,32
	.member	lcreateDate,72,18,8,32
	.member	lchangeDate,104,18,8,32
	.eos
	.stag	_FX_FAT_DIR_INFO,256,51
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
	.stag	fat_extBS_32,416,52
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
	.stag	fat_extBS_16,192,53
	.member	bios_drive_num,0,14,8,8
	.member	reserved1,8,14,8,8
	.member	boot_signature,16,14,8,8
	.member	volume_id,24,16,8,16
	.member	volume_label,40,110,8,0,11
	.member	fat_type_label,128,110,8,0,8
	.eos
	.stag	fat_BS,688,54
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
	.stag	__FATBootSector,928,55
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
	.stag	__PARTITIONTABLE,128,56
	.member	first_byte,0,14,8,8
	.member	start_chs,8,110,8,0,3
	.member	partition_type,32,14,8,8
	.member	end_chs,40,110,8,0,3
	.member	start_sector,64,18,8,32
	.member	length_sectors,96,18,8,32
	.eos
	.stag	fake57_,4096,57
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
	.stag	__FAT16ENTRY,256,58
	.member	filename,0,110,8,0,8
	.member	ext,64,110,8,0,3
	.member	attributes,88,14,8,8
	.member	reserved,96,110,8,0,10
	.member	modify_time,176,16,8,16
	.member	modify_date,192,16,8,16
	.member	starting_cluster,208,16,8,16
	.member	file_size,224,18,8,32
	.eos
	.stag	__FAT16ENTRYLONG,288,59
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
	.stag	_LongFileName,256,60
	.member	sequenceNo,0,14,8,8
	.member	fileName_Part1,8,110,8,0,10
	.member	fileattribute,88,14,8,8
	.member	type,96,14,8,8
	.member	checksum,104,14,8,8
	.member	fileName_Part2,112,110,8,0,12
	.member	fstclusLO,208,5,8,16
	.member	fileName_Part3,224,110,8,0,4
	.eos
	.stag	_IDSECTOR,2048,61
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
	.stag	fake62_,16,62
	.member	Reserved1,0,16,17,1
	.member	Retired3,1,16,17,1
	.member	ResponseIncomplete,2,16,17,1
	.member	Retired2,3,16,17,3
	.member	FixedDevice,6,16,17,1
	.member	RemovableMedia,7,16,17,1
	.member	Retired1,8,16,17,7
	.member	DeviceType,15,16,17,1
	.eos
	.stag	fake63_,16,63
	.member	FeatureSupported,0,16,17,1
	.member	Reserved,1,16,17,15
	.eos
	.stag	fake64_,32,64
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
	.stag	fake65_,16,65
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
	.stag	fake66_,32,66
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
	.stag	fake67_,16,67
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
	.stag	fake68_,16,68
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
	.stag	fake69_,48,69
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
	.stag	fake70_,48,70
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
	.stag	fake71_,16,71
	.member	TimeRequired,0,16,17,15
	.member	ExtendedTimeReported,15,16,17,1
	.eos
	.stag	fake72_,16,72
	.member	TimeRequired,0,16,17,15
	.member	ExtendedTimeReported,15,16,17,1
	.eos
	.stag	fake73_,16,73
	.member	LogicalSectorsPerPhysicalSector,0,16,17,4
	.member	Reserved0,4,16,17,8
	.member	LogicalSectorLongerThan256Words,12,16,17,1
	.member	MultipleLogicalSectorsPerPhysicalSector,13,16,17,1
	.member	Reserved1,14,16,17,2
	.eos
	.stag	fake74_,16,74
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
	.stag	fake75_,16,75
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
	.stag	fake76_,16,76
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
	.stag	fake77_,16,77
	.member	MaximumCurrentInMA,0,16,17,12
	.member	CfaPowerMode1Disabled,12,16,17,1
	.member	CfaPowerMode1Required,13,16,17,1
	.member	Reserved0,14,16,17,1
	.member	Word160Supported,15,16,17,1
	.eos
	.stag	fake78_,16,78
	.member	SupportsTrim,0,16,17,1
	.member	Reserved0,1,16,17,15
	.eos
	.stag	fake79_,16,79
	.member	Supported,0,16,17,1
	.member	Reserved0,1,16,17,1
	.member	WriteSameSuported,2,16,17,1
	.member	ErrorRecoveryControlSupported,3,16,17,1
	.member	FeatureControlSuported,4,16,17,1
	.member	DataTablesSuported,5,16,17,1
	.member	Reserved1,6,16,17,6
	.member	VendorSpecific,12,16,17,4
	.eos
	.stag	fake80_,16,80
	.member	AlignmentOfLogicalWithinPhysical,0,16,17,14
	.member	Word209Supported,14,16,17,1
	.member	Reserved0,15,16,17,1
	.eos
	.stag	fake81_,16,81
	.member	NVCachePowerModeEnabled,0,16,17,1
	.member	Reserved0,1,16,17,3
	.member	NVCacheFeatureSetEnabled,4,16,17,1
	.member	Reserved1,5,16,17,3
	.member	NVCachePowerModeVersion,8,16,17,4
	.member	NVCacheFeatureSetVersion,12,16,17,4
	.eos
	.stag	fake82_,16,82
	.member	NVCacheEstimatedTimeToSpinUpInSeconds,0,14,8,8
	.member	Reserved,8,14,8,8
	.eos
	.stag	fake83_,16,83
	.member	MajorVersion,0,16,17,12
	.member	TransportType,12,16,17,4
	.eos
	.stag	_IDENTIFY_DEVICE_DATA,4096,84
	.member	GeneralConfiguration,0,10,8,16,62
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
	.member	TrustedComputing,768,10,8,16,63
	.member	Capabilities,784,10,8,32,64
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
	.member	AdditionalSupported,1104,10,8,16,65
	.member	ReservedWords70,1120,112,8,0,5
	.member	QueueDepth,1200,16,17,5
	.member	ReservedWord75,1205,16,17,11
	.member	SerialAtaCapabilities,1216,10,8,32,66
	.member	SerialAtaFeaturesSupported,1248,10,8,16,67
	.member	SerialAtaFeaturesEnabled,1264,10,8,16,68
	.member	MajorRevision,1280,16,8,16
	.member	MinorRevision,1296,16,8,16
	.member	CommandSetSupport,1312,10,8,48,69
	.member	CommandSetActive,1360,10,8,48,70
	.member	UltraDMASupport,1408,16,17,8
	.member	UltraDMAActive,1416,16,17,8
	.member	NormalSecurityEraseUnit,1424,10,8,16,71
	.member	EnhancedSecurityEraseUnit,1440,10,8,16,72
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
	.member	PhysicalLogicalSectorSize,1696,10,8,16,73
	.member	InterSeekDelay,1712,16,8,16
	.member	WorldWideName,1728,112,8,0,4
	.member	ReservedForWorldWideName128,1792,112,8,0,4
	.member	ReservedForTlcTechnicalReport,1856,16,8,16
	.member	WordsPerLogicalSector,1872,112,8,0,2
	.member	CommandSetSupportExt,1904,10,8,16,74
	.member	CommandSetActiveExt,1920,10,8,16,75
	.member	ReservedForExpandedSupportandActive,1936,112,8,0,6
	.member	MsnSupport,2032,16,17,2
	.member	ReservedWord127,2034,16,17,14
	.member	SecurityStatus,2048,10,8,16,76
	.member	ReservedWord129,2064,112,8,0,31
	.member	CfaPowerMode1,2560,10,8,16,77
	.member	ReservedForCfaWord161,2576,112,8,0,7
	.member	NominalFormFactor,2688,16,17,4
	.member	ReservedWord168,2692,16,17,12
	.member	DataSetManagementFeature,2704,10,8,16,78
	.member	AdditionalProductID,2720,112,8,0,4
	.member	ReservedForCfaWord174,2784,112,8,0,2
	.member	CurrentMediaSerialNumber,2816,112,8,0,30
	.member	SCTCommandTransport,3296,10,8,16,79
	.member	ReservedWord207,3312,112,8,0,2
	.member	BlockAlignment,3344,10,8,16,80
	.member	WriteReadVerifySectorCountMode3Only,3360,112,8,0,2
	.member	WriteReadVerifySectorCountMode2Only,3392,112,8,0,2
	.member	NVCacheCapabilities,3424,10,8,16,81
	.member	NVCacheSizeLSW,3440,16,8,16
	.member	NVCacheSizeMSW,3456,16,8,16
	.member	NominalMediaRotationRate,3472,16,8,16
	.member	ReservedWord218,3488,16,8,16
	.member	NVCacheOptions,3504,10,8,16,82
	.member	WriteReadVerifySectorCountMode,3520,16,17,8
	.member	ReservedWord220,3528,16,17,8
	.member	ReservedWord221,3536,16,8,16
	.member	TransportMajorVersion,3552,10,8,16,83
	.member	TransportMinorVersion,3568,16,8,16
	.member	ReservedWord224,3584,112,8,0,6
	.member	ExtendedNumberOfUserAddressableSectors,3680,114,8,0,2
	.member	MinBlocksPerDownloadMicrocodeMode03,3744,16,8,16
	.member	MaxBlocksPerDownloadMicrocodeMode03,3760,16,8,16
	.member	ReservedWord236,3776,112,8,0,19
	.member	Signature,4080,16,17,8
	.member	CheckSum,4088,16,17,8
	.eos
	.stag	_FXDosDevice,5648,85
	.member	type,0,14,8,8
	.member	initialized,8,14,8,8
	.member	devdata,16,129,8,32
	.member	devstatus,48,14,8,8
	.member	bootSector,56,10,8,928,55
	.member	partitionTable,984,10,8,128,56
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\diskio.c",15
;
;/* Definitions of physical drive number for each drive */
;#define DEV_RAM		0	/* Example: Map Ramdisk to physical drive 0 */
;#define DEV_MMC		1	/* Example: Map MMC/SD card to physical drive 1 */
;#define DEV_USB		2	/* Example: Map USB MSD to physical drive 2 */
;
;
;static PFXDOSDEVICE diskioDevices[] = {NULL,NULL,NULL};
	data
~~diskioDevices:
	dl	$0,$0,$0
	ends
;
;
;/*-----------------------------------------------------------------------*/
;/* Get Drive Status                                                      */
;/*-----------------------------------------------------------------------*/
;
;DSTATUS disk_status (
;	BYTE pdrv		/* Physical drive nmuber to identify the drive */
;)
;{
	.line	30
	.line	33
	code
	xdef	~~disk_status
	func
	.function	33
~~disk_status:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L2
	tcs
	phd
	tcd
pdrv_0	set	4
	.block	33
;	DSTATUS stat = STA_NOINIT;
;	int result;
;
;	k_debug_hex("disk_status:",pdrv);
stat_1	set	0
result_1	set	1
	.sym	stat,0,14,1,8
	.sym	result,1,5,1,16
	.sym	pdrv,4,14,6,8
	sep	#$20
	longa	off
	lda	#$1
	sta	<L3+stat_1
	rep	#$20
	longa	on
	.line	37
	lda	<L2+pdrv_0
	and	#$ff
	pha
	pea	#^L1
	pea	#<L1
	jsl	~~k_debug_hex
;
;	switch (pdrv) {
	.line	39
	lda	<L2+pdrv_0
	and	#$ff
	brl	L10001
	.line	39
;	case DEV_RAM :
	.line	40
L10003:
;		//result = RAM_disk_status();
;
;		// translate the reslut code here
;
;		return RES_OK;
	.line	45
	lda	#$0
L5:
	tay
	lda	<L2+2
	sta	<L2+2+2
	lda	<L2+1
	sta	<L2+1+2
	pld
	tsc
	clc
	adc	#L2+2
	tcs
	tya
	rtl
;
;	case DEV_MMC :
	.line	47
L10004:
;		//result = MMC_disk_status();
;
;		// translate the reslut code here
;
;		return stat;
	.line	52
	lda	<L3+stat_1
	and	#$ff
	brl	L5
;
;	case DEV_USB :
	.line	54
L10005:
;		//result = USB_disk_status();
;
;		// translate the reslut code here
;
;		return stat;
	.line	59
	lda	<L3+stat_1
	and	#$ff
	brl	L5
;	}
	.line	60
L10001:
	xref	~~~swt
	jsl	~~~swt
	dw	3
	dw	0
	dw	L10003-1
	dw	1
	dw	L10004-1
	dw	2
	dw	L10005-1
	dw	L10002-1
L10002:
;	return STA_NOINIT;
	.line	61
	lda	#$1
	brl	L5
;}
	.line	62
	.endblock	62
L2	equ	3
L3	equ	1
	ends
	efunc
	.endfunc	62,1,3
	.line	62
	data
L1:
	db	$64,$69,$73,$6B,$5F,$73,$74,$61,$74,$75,$73,$3A,$00
	ends
;
;
;
;/*-----------------------------------------------------------------------*/
;/* Inidialize a Drive                                                    */
;/*-----------------------------------------------------------------------*/
;
;DSTATUS disk_initialize (
;	BYTE pdrv				/* Physical drive nmuber to identify the drive */
;)
;{
	.line	70
	.line	73
	code
	xdef	~~disk_initialize
	func
	.function	73
~~disk_initialize:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L7
	tcs
	phd
	tcd
pdrv_0	set	4
	.block	73
;	DSTATUS stat = STA_NOINIT;
;	int result = 0;
;
;	k_debug_integer( "------- disk_initialize:dev:",pdrv);
stat_1	set	0
result_1	set	1
	.sym	stat,0,14,1,8
	.sym	result,1,5,1,16
	.sym	pdrv,4,14,6,8
	sep	#$20
	longa	off
	lda	#$1
	sta	<L8+stat_1
	rep	#$20
	longa	on
	stz	<L8+result_1
	.line	77
	lda	<L7+pdrv_0
	and	#$ff
	pha
	pea	#^L6
	pea	#<L6
	jsl	~~k_debug_integer
;	k_debug_string("------- disk_initialize...\r\n");
	.line	78
	pea	#^L6+29
	pea	#<L6+29
	jsl	~~k_debug_string
;
;	switch (pdrv)
	.line	80
	lda	<L7+pdrv_0
	and	#$ff
	brl	L10006
;	{
	.line	81
;	case DEV_RAM :
	.line	82
L10008:
;
;		k_debug_pointer( "------- disk_initialize:diskioDevices[pdrv]:",diskioDevices[pdrv]);
	.line	84
	lda	<L7+pdrv_0
	and	#$ff
	sta	<R1
	lda	<R1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~diskioDevices
	adc	<R0
	sta	<R1
	ldy	#$2
	lda	(<R1),Y
	pha
	lda	(<R1)
	pha
	pea	#^L6+58
	pea	#<L6+58
	jsl	~~k_debug_pointer
;
;		if(diskioDevices[pdrv] == NULL)
	.line	86
;			diskioDevices[pdrv] =  k_create_dos_device(FXDOS_SDC);
	lda	<L7+pdrv_0
	and	#$ff
	sta	<R1
	lda	<R1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~diskioDevices
	adc	<R0
	sta	<R1
	lda	(<R1)
	ldy	#$2
	ora	(<R1),Y
	beq	L10
	brl	L10009
L10:
	.line	87
	lda	<L7+pdrv_0
	and	#$ff
	sta	<R1
	lda	<R1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~diskioDevices
	adc	<R0
	sta	<R1
	pea	#<$5
	jsl	~~k_create_dos_device
	sta	<R0
	stx	<R0+2
	lda	<R0
	sta	(<R1)
	lda	<R0+2
	ldy	#$2
	sta	(<R1),Y
;
;		k_debug_pointer( "------- disk_initialize:diskioDevices[pdrv]:",diskioDevices[pdrv]);
L10009:
	.line	89
	lda	<L7+pdrv_0
	and	#$ff
	sta	<R1
	lda	<R1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~diskioDevices
	adc	<R0
	sta	<R1
	ldy	#$2
	lda	(<R1),Y
	pha
	lda	(<R1)
	pha
	pea	#^L6+103
	pea	#<L6+103
	jsl	~~k_debug_pointer
;		//result = RAM_disk_initialize();
;
;		if(diskioDevices[pdrv] != NULL)
	.line	92
;			stat = 0x00;
	lda	<L7+pdrv_0
	and	#$ff
	sta	<R1
	lda	<R1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~diskioDevices
	adc	<R0
	sta	<R1
	lda	(<R1)
	ldy	#$2
	ora	(<R1),Y
	bne	L11
	brl	L10010
L11:
	.line	93
	sep	#$20
	longa	off
	stz	<L8+stat_1
	rep	#$20
	longa	on
;		else
	brl	L10011
L10010:
;			stat = STA_NOINIT;
	.line	95
	sep	#$20
	longa	off
	lda	#$1
	sta	<L8+stat_1
	rep	#$20
	longa	on
L10011:
;		// translate the reslut code here
;
;		//return stat;
;		break;
	.line	99
	brl	L10007
;	case DEV_MMC :
	.line	100
L10012:
;		//result = MMC_disk_initialize();
;
;		// translate the reslut code here
;
;		//return stat;
;		break;
	.line	106
	brl	L10007
;	case DEV_USB :
	.line	107
L10013:
;		//result = USB_disk_initialize();
;
;		// translate the reslut code here
;
;		//return stat;
;		break;
	.line	113
	brl	L10007
;	}
	.line	114
L10006:
	xref	~~~swt
	jsl	~~~swt
	dw	3
	dw	0
	dw	L10008-1
	dw	1
	dw	L10012-1
	dw	2
	dw	L10013-1
	dw	L10007-1
L10007:
;
;	k_debug_string("------- disk_initialize exit\r\n");
	.line	116
	pea	#^L6+148
	pea	#<L6+148
	jsl	~~k_debug_string
;
;	return stat;
	.line	118
	lda	<L8+stat_1
	and	#$ff
L12:
	tay
	lda	<L7+2
	sta	<L7+2+2
	lda	<L7+1
	sta	<L7+1+2
	pld
	tsc
	clc
	adc	#L7+2
	tcs
	tya
	rtl
;}
	.line	119
	.endblock	119
L7	equ	11
L8	equ	9
	ends
	efunc
	.endfunc	119,9,11
	.line	119
	data
L6:
	db	$2D,$2D,$2D,$2D,$2D,$2D,$2D,$20,$64,$69,$73,$6B,$5F,$69,$6E
	db	$69,$74,$69,$61,$6C,$69,$7A,$65,$3A,$64,$65,$76,$3A,$00,$2D
	db	$2D,$2D,$2D,$2D,$2D,$2D,$20,$64,$69,$73,$6B,$5F,$69,$6E,$69
	db	$74,$69,$61,$6C,$69,$7A,$65,$2E,$2E,$2E,$0D,$0A,$00,$2D,$2D
	db	$2D,$2D,$2D,$2D,$2D,$20,$64,$69,$73,$6B,$5F,$69,$6E,$69,$74
	db	$69,$61,$6C,$69,$7A,$65,$3A,$64,$69,$73,$6B,$69,$6F,$44,$65
	db	$76,$69,$63,$65,$73,$5B,$70,$64,$72,$76,$5D,$3A,$00,$2D,$2D
	db	$2D,$2D,$2D,$2D,$2D,$20,$64,$69,$73,$6B,$5F,$69,$6E,$69,$74
	db	$69,$61,$6C,$69,$7A,$65,$3A,$64,$69,$73,$6B,$69,$6F,$44,$65
	db	$76,$69,$63,$65,$73,$5B,$70,$64,$72,$76,$5D,$3A,$00,$2D,$2D
	db	$2D,$2D,$2D,$2D,$2D,$20,$64,$69,$73,$6B,$5F,$69,$6E,$69,$74
	db	$69,$61,$6C,$69,$7A,$65,$20,$65,$78,$69,$74,$0D,$0A,$00
	ends
;
;
;
;/*-----------------------------------------------------------------------*/
;/* Read Sector(s)                                                        */
;/*-----------------------------------------------------------------------*/
;
;DRESULT disk_read (
;	BYTE pdrv,		/* Physical drive nmuber to identify the drive */
;	BYTE *buff,		/* Data buffer to store read data */
;	LBA_t sector,	/* Start sector in LBA */
;	UINT count		/* Number of sectors to read */
;)
;{
	.line	127
	.line	133
	code
	xdef	~~disk_read
	func
	.function	133
~~disk_read:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L14
	tcs
	phd
	tcd
pdrv_0	set	4
buff_0	set	6
sector_0	set	10
count_0	set	14
	.block	133
;	DRESULT res;
;	int result = RES_PARERR;
;
;
;	k_debug_integer( "------- disk_read:dev:",pdrv);
res_1	set	0
result_1	set	2
	.sym	res,0,5,1,16
	.sym	result,2,5,1,16
	.sym	pdrv,4,14,6,8
	.sym	buff,6,142,6,32
	.sym	sector,10,18,6,32
	.sym	count,14,16,6,16
	lda	#$4
	sta	<L15+result_1
	.line	138
	lda	<L14+pdrv_0
	and	#$ff
	pha
	pea	#^L13
	pea	#<L13
	jsl	~~k_debug_integer
;	k_debug_long("------- disk_read:sector:",sector);
	.line	139
	pei	<L14+sector_0+2
	pei	<L14+sector_0
	pea	#^L13+23
	pea	#<L13+23
	jsl	~~k_debug_long
;	k_debug_long("------- disk_read:count:",count);
	.line	140
	pei	<L14+count_0
	pea	#^L13+49
	pea	#<L13+49
	jsl	~~k_debug_long
;
;
;
;	switch (pdrv) {
	.line	144
	lda	<L14+pdrv_0
	and	#$ff
	brl	L10014
	.line	144
;	case DEV_RAM :
	.line	145
L10016:
;		// translate the arguments here
;
;		k_debug_pointer( "------- disk_read:diskioDevices[pdrv]:",diskioDevices[pdrv]);
	.line	148
	lda	<L14+pdrv_0
	and	#$ff
	sta	<R1
	lda	<R1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~diskioDevices
	adc	<R0
	sta	<R1
	ldy	#$2
	lda	(<R1),Y
	pha
	lda	(<R1)
	pha
	pea	#^L13+74
	pea	#<L13+74
	jsl	~~k_debug_pointer
;
;		if(diskioDevices[pdrv]!=NULL)
	.line	150
;		{
	lda	<L14+pdrv_0
	and	#$ff
	sta	<R1
	lda	<R1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~diskioDevices
	adc	<R0
	sta	<R1
	lda	(<R1)
	ldy	#$2
	ora	(<R1),Y
	bne	L17
	brl	L10017
L17:
	.line	151
;			k_debug_pointer( "------- disk_read:buff:",buff);
	.line	152
	pei	<L14+buff_0+2
	pei	<L14+buff_0
	pea	#^L13+113
	pea	#<L13+113
	jsl	~~k_debug_pointer
;
;			diskioDevices[pdrv]->pfReader(sector * 512,buff);
	.line	154
	pei	<L14+buff_0+2
	pei	<L14+buff_0
	pei	<L14+sector_0+2
	pei	<L14+sector_0
	lda	#$9
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R0
	stx	<R0+2
	pei	<R0+2
	pei	<R0
	lda	<L14+pdrv_0
	and	#$ff
	sta	<R2
	lda	<R2
	asl	A
	asl	A
	sta	<R1
	clc
	lda	#<~~diskioDevices
	adc	<R1
	sta	<R2
	lda	(<R2)
	sta	<R1
	ldy	#$2
	lda	(<R2),Y
	sta	<R1+2
	ldy	#$2bc
	lda	[<R1],Y
	tax
	ldy	#$2ba
	lda	[<R1],Y
	xref	~~~lcal
	jsl	~~~lcal
;
;			k_debug_byte_array("------- disk_read:buff:data:\r\n",buff,512);
	.line	156
	pea	#<$200
	pei	<L14+buff_0+2
	pei	<L14+buff_0
	pea	#^L13+137
	pea	#<L13+137
	jsl	~~k_debug_byte_array
;
;			//result = RAM_disk_read(buff, sector, count);
;
;			// translate the reslut code here
;
;			res = RES_OK;
	.line	162
	stz	<L15+res_1
;		}
	.line	163
;		break;
L10017:
	.line	164
	brl	L10015
;
;	case DEV_MMC :
	.line	166
L10018:
;		// translate the arguments here
;
;		//result = MMC_disk_read(buff, sector, count);
;
;		// translate the reslut code here
;
;		//return res;
;		break;
	.line	174
	brl	L10015
;	case DEV_USB :
	.line	175
L10019:
;		// translate the arguments here
;
;		//result = USB_disk_read(buff, sector, count);
;
;		// translate the reslut code here
;
;		//return res;
;		break;
	.line	183
	brl	L10015
;	}
	.line	184
L10014:
	xref	~~~swt
	jsl	~~~swt
	dw	3
	dw	0
	dw	L10016-1
	dw	1
	dw	L10018-1
	dw	2
	dw	L10019-1
	dw	L10015-1
L10015:
;
;	k_debug_string("------- disk_read exit\r\n");
	.line	186
	pea	#^L13+168
	pea	#<L13+168
	jsl	~~k_debug_string
;
;	return res;
	.line	188
	lda	<L15+res_1
L18:
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
	.line	189
	.endblock	189
L14	equ	16
L15	equ	13
	ends
	efunc
	.endfunc	189,13,16
	.line	189
	data
L13:
	db	$2D,$2D,$2D,$2D,$2D,$2D,$2D,$20,$64,$69,$73,$6B,$5F,$72,$65
	db	$61,$64,$3A,$64,$65,$76,$3A,$00,$2D,$2D,$2D,$2D,$2D,$2D,$2D
	db	$20,$64,$69,$73,$6B,$5F,$72,$65,$61,$64,$3A,$73,$65,$63,$74
	db	$6F,$72,$3A,$00,$2D,$2D,$2D,$2D,$2D,$2D,$2D,$20,$64,$69,$73
	db	$6B,$5F,$72,$65,$61,$64,$3A,$63,$6F,$75,$6E,$74,$3A,$00,$2D
	db	$2D,$2D,$2D,$2D,$2D,$2D,$20,$64,$69,$73,$6B,$5F,$72,$65,$61
	db	$64,$3A,$64,$69,$73,$6B,$69,$6F,$44,$65,$76,$69,$63,$65,$73
	db	$5B,$70,$64,$72,$76,$5D,$3A,$00,$2D,$2D,$2D,$2D,$2D,$2D,$2D
	db	$20,$64,$69,$73,$6B,$5F,$72,$65,$61,$64,$3A,$62,$75,$66,$66
	db	$3A,$00,$2D,$2D,$2D,$2D,$2D,$2D,$2D,$20,$64,$69,$73,$6B,$5F
	db	$72,$65,$61,$64,$3A,$62,$75,$66,$66,$3A,$64,$61,$74,$61,$3A
	db	$0D,$0A,$00,$2D,$2D,$2D,$2D,$2D,$2D,$2D,$20,$64,$69,$73,$6B
	db	$5F,$72,$65,$61,$64,$20,$65,$78,$69,$74,$0D,$0A,$00
	ends
;
;
;
;/*-----------------------------------------------------------------------*/
;/* Write Sector(s)                                                       */
;/*-----------------------------------------------------------------------*/
;
;#if FF_FS_READONLY == 0
;
;DRESULT disk_write (
;	BYTE pdrv,			/* Physical drive nmuber to identify the drive */
;	const BYTE *buff,	/* Data to be written */
;	LBA_t sector,		/* Start sector in LBA */
;	UINT count			/* Number of sectors to write */
;)
;{
	.line	199
	.line	205
	code
	xdef	~~disk_write
	func
	.function	205
~~disk_write:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L20
	tcs
	phd
	tcd
pdrv_0	set	4
buff_0	set	6
sector_0	set	10
count_0	set	14
	.block	205
;	DRESULT res = RES_PARERR;
;	int result;
;
;	k_debug_integer( "------- disk_write:dev:",pdrv);
res_1	set	0
result_1	set	2
	.sym	res,0,5,1,16
	.sym	result,2,5,1,16
	.sym	pdrv,4,14,6,8
	.sym	buff,6,142,6,32
	.sym	sector,10,18,6,32
	.sym	count,14,16,6,16
	lda	#$4
	sta	<L21+res_1
	.line	209
	lda	<L20+pdrv_0
	and	#$ff
	pha
	pea	#^L19
	pea	#<L19
	jsl	~~k_debug_integer
;	k_debug_string("------- disk_write...\r\n");
	.line	210
	pea	#^L19+24
	pea	#<L19+24
	jsl	~~k_debug_string
;
;	switch (pdrv) {
	.line	212
	lda	<L20+pdrv_0
	and	#$ff
	brl	L10020
	.line	212
;	case DEV_RAM :
	.line	213
L10022:
;		// translate the arguments here
;
;		diskioDevices[pdrv]->pfWriter(sector,(BYTE*)buff);
	.line	216
	pei	<L20+buff_0+2
	pei	<L20+buff_0
	pei	<L20+sector_0+2
	pei	<L20+sector_0
	lda	<L20+pdrv_0
	and	#$ff
	sta	<R1
	lda	<R1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~diskioDevices
	adc	<R0
	sta	<R1
	lda	(<R1)
	sta	<R0
	ldy	#$2
	lda	(<R1),Y
	sta	<R0+2
	ldy	#$2c0
	lda	[<R0],Y
	tax
	ldy	#$2be
	lda	[<R0],Y
	xref	~~~lcal
	jsl	~~~lcal
;
;		// translate the reslut code here
;
;		res = 0;
	.line	220
	stz	<L21+res_1
;
;		break;
	.line	222
	brl	L10021
;	case DEV_MMC :
	.line	223
L10023:
;		// translate the arguments here
;
;		//result = MMC_disk_write(buff, sector, count);
;
;		// translate the reslut code here
;
;		return res;
	.line	230
	lda	<L21+res_1
L23:
	tay
	lda	<L20+2
	sta	<L20+2+12
	lda	<L20+1
	sta	<L20+1+12
	pld
	tsc
	clc
	adc	#L20+12
	tcs
	tya
	rtl
;
;	case DEV_USB :
	.line	232
L10024:
;		// translate the arguments here
;
;		//result = USB_disk_write(buff, sector, count);
;
;		// translate the reslut code here
;
;		return res;
	.line	239
	lda	<L21+res_1
	brl	L23
;	}
	.line	240
L10020:
	xref	~~~swt
	jsl	~~~swt
	dw	3
	dw	0
	dw	L10022-1
	dw	1
	dw	L10023-1
	dw	2
	dw	L10024-1
	dw	L10021-1
L10021:
;
;	k_debug_string("------- disk_write exit\r\n");
	.line	242
	pea	#^L19+48
	pea	#<L19+48
	jsl	~~k_debug_string
;
;	return res;
	.line	244
	lda	<L21+res_1
	brl	L23
;}
	.line	245
	.endblock	245
L20	equ	12
L21	equ	9
	ends
	efunc
	.endfunc	245,9,12
	.line	245
	data
L19:
	db	$2D,$2D,$2D,$2D,$2D,$2D,$2D,$20,$64,$69,$73,$6B,$5F,$77,$72
	db	$69,$74,$65,$3A,$64,$65,$76,$3A,$00,$2D,$2D,$2D,$2D,$2D,$2D
	db	$2D,$20,$64,$69,$73,$6B,$5F,$77,$72,$69,$74,$65,$2E,$2E,$2E
	db	$0D,$0A,$00,$2D,$2D,$2D,$2D,$2D,$2D,$2D,$20,$64,$69,$73,$6B
	db	$5F,$77,$72,$69,$74,$65,$20,$65,$78,$69,$74,$0D,$0A,$00
	ends
;
;#endif
;
;
;/*-----------------------------------------------------------------------*/
;/* Miscellaneous Functions                                               */
;/*-----------------------------------------------------------------------*/
;
;DRESULT disk_ioctl (
;	BYTE pdrv,		/* Physical drive nmuber (0..) */
;	BYTE cmd,		/* Control code */
;	void *buff		/* Buffer to send/receive control data */
;)
;{
	.line	254
	.line	259
	code
	xdef	~~disk_ioctl
	func
	.function	259
~~disk_ioctl:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L25
	tcs
	phd
	tcd
pdrv_0	set	4
cmd_0	set	6
buff_0	set	8
	.block	259
;	DRESULT res;
;	int result;
;
;	k_debug_string("disk_ioctl...\r\n");
res_1	set	0
result_1	set	2
	.sym	res,0,5,1,16
	.sym	result,2,5,1,16
	.sym	pdrv,4,14,6,8
	.sym	cmd,6,14,6,8
	.sym	buff,8,129,6,32
	.line	263
	pea	#^L24
	pea	#<L24
	jsl	~~k_debug_string
;
;	switch (pdrv) {
	.line	265
	lda	<L25+pdrv_0
	and	#$ff
	brl	L10025
	.line	265
;	case DEV_RAM :
	.line	266
L10027:
;
;		// Process of the command for the RAM drive
;
;		return res;
	.line	270
	lda	<L26+res_1
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
;
;	case DEV_MMC :
	.line	272
L10028:
;
;		// Process of the command for the MMC/SD card
;
;		return res;
	.line	276
	lda	<L26+res_1
	brl	L28
;
;	case DEV_USB :
	.line	278
L10029:
;
;		// Process of the command the USB drive
;
;		return res;
	.line	282
	lda	<L26+res_1
	brl	L28
;	}
	.line	283
L10025:
	xref	~~~swt
	jsl	~~~swt
	dw	3
	dw	0
	dw	L10027-1
	dw	1
	dw	L10028-1
	dw	2
	dw	L10029-1
	dw	L10026-1
L10026:
;
;	return RES_PARERR;
	.line	285
	lda	#$4
	brl	L28
;}
	.line	286
	.endblock	286
L25	equ	4
L26	equ	1
	ends
	efunc
	.endfunc	286,1,4
	.line	286
	data
L24:
	db	$64,$69,$73,$6B,$5F,$69,$6F,$63,$74,$6C,$2E,$2E,$2E,$0D,$0A
	db	$00
	ends
;#else
;
;
;#include "ff.h"			/* Obtains integer types */
;#include "diskio.h"
;
;/* Definitions of physical drive number for each drive */
;#define DEV_RAM		0	/* Example: Map Ramdisk to physical drive 0 */
;#define DEV_MMC		1	/* Example: Map MMC/SD card to physical drive 1 */
;#define DEV_USB		2	/* Example: Map USB MSD to physical drive 2 */
;
;
;/*-----------------------------------------------------------------------*/
;/* Get Drive Status                                                      */
;/*-----------------------------------------------------------------------*/
;
;DSTATUS disk_status (
;	BYTE pdrv		/* Physical drive nmuber to identify the drive */
;)
;{
;	return STA_NOINIT;
;}
;
;
;
;/*-----------------------------------------------------------------------*/
;/* Inidialize a Drive                                                    */
;/*-----------------------------------------------------------------------*/
;
;DSTATUS disk_initialize (
;	BYTE pdrv				/* Physical drive nmuber to identify the drive */
;)
;{
;	return STA_NOINIT;
;}
;
;
;
;/*-----------------------------------------------------------------------*/
;/* Read Sector(s)                                                        */
;/*-----------------------------------------------------------------------*/
;
;DRESULT disk_read (
;	BYTE pdrv,		/* Physical drive nmuber to identify the drive */
;	BYTE *buff,		/* Data buffer to store read data */
;	LBA_t sector,	/* Start sector in LBA */
;	UINT count		/* Number of sectors to read */
;)
;{
;	k_debug_string("------- disk_read exit\r\n");
;
;	return RES_PARERR;
;}
;
;
;
;/*-----------------------------------------------------------------------*/
;/* Write Sector(s)                                                       */
;/*-----------------------------------------------------------------------*/
;
;#if FF_FS_READONLY == 0
;
;DRESULT disk_write (
;	BYTE pdrv,			/* Physical drive nmuber to identify the drive */
;	const BYTE *buff,	/* Data to be written */
;	LBA_t sector,		/* Start sector in LBA */
;	UINT count			/* Number of sectors to write */
;)
;{
;	k_debug_string("------- disk_write exit\r\n");
;
;	return RES_PARERR;
;}
;
;#endif
;
;
;/*-----------------------------------------------------------------------*/
;/* Miscellaneous Functions                                               */
;/*-----------------------------------------------------------------------*/
;
;DRESULT disk_ioctl (
;	BYTE pdrv,		/* Physical drive nmuber (0..) */
;	BYTE cmd,		/* Control code */
;	void *buff		/* Buffer to send/receive control data */
;)
;{
;	return RES_PARERR;
;}
;
;
;#endif
;
	.line	378
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\diskio.c",254
	xref	~~k_debug_byte_array
	xref	~~k_debug_long
	xref	~~k_debug_pointer
	xref	~~k_debug_string
	xref	~~k_debug_integer
	xref	~~k_debug_hex
	xref	~~k_create_dos_device
	.sym	~~k_debug_byte_array,~~k_debug_byte_array,69,18,0
	.sym	~~k_debug_long,~~k_debug_long,69,18,0
	.sym	~~k_debug_pointer,~~k_debug_pointer,69,18,0
	.sym	~~k_debug_string,~~k_debug_string,69,18,0
	.sym	~~k_debug_integer,~~k_debug_integer,69,18,0
	.sym	~~k_debug_hex,~~k_debug_hex,69,18,0
	.sym	~~diskioDevices,~~diskioDevices,1130,3,32,85,3
	.sym	~~k_create_dos_device,~~k_create_dos_device,1098,18,32,85
	.sym	PFXDOSDEVICE,0,138,14,32,85
	.sym	FXDOSDEVICE,0,10,14,5648,85
	.sym	DOSINITDEVICE,0,641,14,32
	.sym	DOSSECTORWRITER,0,654,14,32
	.sym	DOSSECTORREADER,0,654,14,32
	.sym	PIDENTIFY_DEVICE_DATA,0,138,14,32,84
	.sym	IDENTIFY_DEVICE_DATA,0,10,14,4096,84
	.sym	PIDSECTOR,0,138,14,32,61
	.sym	IDSECTOR,0,10,14,2048,61
	.sym	PLFN,0,138,14,32,60
	.sym	LFN,0,10,14,256,60
	.sym	PFAT16ENTRYLONG,0,138,14,32,59
	.sym	FAT16ENTRYLONG,0,10,14,288,59
	.sym	PFAT16ENTRY,0,138,14,32,58
	.sym	FAT16ENTRY,0,10,14,256,58
	.sym	Fat16BootSector,0,10,14,4096,57
	.sym	PPARTITIONTABLE,0,138,14,32,56
	.sym	PARTITIONTABLE,0,10,14,128,56
	.sym	PFATBOOTSECTOR,0,138,14,32,55
	.sym	FATBOOTSECTOR,0,10,14,928,55
	.sym	fat_BS_t,0,10,14,688,54
	.sym	fat_extBS_16_t,0,10,14,192,53
	.sym	PFAT32EXT,0,138,14,32,52
	.sym	fat_extBS_32_t,0,10,14,416,52
	.sym	P_FX_FAT_DIR_INFO,0,138,14,32,51
	.sym	FX_FAT_DIR_INFO,0,10,14,256,51
	.sym	PFILEINFO,0,138,14,32,50
	.sym	FILEINFO,0,10,14,136,50
	.sym	PDISKINFO,0,138,14,32,49
	.sym	DISKINFO,0,10,14,416,49
	.sym	PDIRENTRY,0,138,14,32,48
	.sym	DIRENTRY,0,10,14,256,48
	.sym	~~disk_ioctl,~~disk_ioctl,69,2,0
	.sym	~~disk_write,~~disk_write,69,2,0
	.sym	~~disk_read,~~disk_read,69,2,0
	.sym	~~disk_status,~~disk_status,78,2,0
	.sym	~~disk_initialize,~~disk_initialize,78,2,0
	.sym	DRESULT,0,5,14,16
	.sym	DSTATUS,0,14,14,8
	.sym	FRESULT,0,5,14,16
	.sym	MKFS_PARM,0,10,14,80,47
	.sym	FILINFO,0,10,14,176,46
	.sym	DIR,0,10,14,352,45
	.sym	FIL,0,10,14,4400,44
	.sym	FFOBJID,0,10,14,128,43
	.sym	FATFS,0,10,14,4472,42
	.sym	LBA_t,0,18,14,32
	.sym	FSIZE_t,0,18,14,32
	.sym	TCHAR,0,14,14,8
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

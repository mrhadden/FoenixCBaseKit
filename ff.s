;:ts=8
R0	equ	1
R1	equ	5
R2	equ	9
R3	equ	13
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\ff.c",0
;/*----------------------------------------------------------------------------/
;/  FatFs - Generic FAT Filesystem Module  R0.14                               /
;/-----------------------------------------------------------------------------/
;/
;/ Copyright (C) 2019, ChaN, all right reserved.
;/
;/ FatFs module is an open source software. Redistribution and use of FatFs in
;/ source and binary forms, with or without modification, are permitted provided
;/ that the following condition is met:
;/
;/ 1. Redistributions of source code must retain the above copyright notice,
;/    this condition and the following disclaimer.
;/
;/ This software is provided by the copyright holder and contributors "AS IS"
;/ and any warranties related to this software are DISCLAIMED.
;/ The copyright owner or contributors be NOT LIABLE for any damages caused
;/ by use of this software.
;/
;/----------------------------------------------------------------------------*/
;
;
;
;#include "fxtypes.h"
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\ff.c",23
;#include "fxdos.h"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxdos.h",0
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxtypes.h",0
	.line	708
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxdos.h",5
	.stag	_fx_sd_direntry,256,42
	.member	filename,0,110,8,0,11
	.member	type,88,14,8,8
	.member	attrs,96,110,8,0,20
	.eos
	.stag	_fx_info,416,43
	.member	stgName,0,110,8,0,32
	.member	Reserved1,256,14,8,8
	.member	stgType,264,16,8,16
	.member	Reserved2,280,14,8,8
	.member	stgReserved,288,110,8,0,16
	.eos
	.stag	_fx_fileinfo,136,44
	.member	type,0,14,8,8
	.member	pFilename,8,142,8,32
	.member	lSize,40,18,8,32
	.member	lcreateDate,72,18,8,32
	.member	lchangeDate,104,18,8,32
	.eos
	.stag	_FX_FAT_DIR_INFO,256,45
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
	.stag	fat_extBS_32,416,46
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
	.stag	fat_extBS_16,192,47
	.member	bios_drive_num,0,14,8,8
	.member	reserved1,8,14,8,8
	.member	boot_signature,16,14,8,8
	.member	volume_id,24,16,8,16
	.member	volume_label,40,110,8,0,11
	.member	fat_type_label,128,110,8,0,8
	.eos
	.stag	fat_BS,688,48
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
	.stag	__FATBootSector,928,49
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
	.stag	__PARTITIONTABLE,128,50
	.member	first_byte,0,14,8,8
	.member	start_chs,8,110,8,0,3
	.member	partition_type,32,14,8,8
	.member	end_chs,40,110,8,0,3
	.member	start_sector,64,18,8,32
	.member	length_sectors,96,18,8,32
	.eos
	.stag	fake51_,4096,51
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
	.stag	__FAT16ENTRY,256,52
	.member	filename,0,110,8,0,8
	.member	ext,64,110,8,0,3
	.member	attributes,88,14,8,8
	.member	reserved,96,110,8,0,10
	.member	modify_time,176,16,8,16
	.member	modify_date,192,16,8,16
	.member	starting_cluster,208,16,8,16
	.member	file_size,224,18,8,32
	.eos
	.stag	__FAT16ENTRYLONG,288,53
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
	.stag	_LongFileName,256,54
	.member	sequenceNo,0,14,8,8
	.member	fileName_Part1,8,110,8,0,10
	.member	fileattribute,88,14,8,8
	.member	type,96,14,8,8
	.member	checksum,104,14,8,8
	.member	fileName_Part2,112,110,8,0,12
	.member	fstclusLO,208,5,8,16
	.member	fileName_Part3,224,110,8,0,4
	.eos
	.stag	_IDSECTOR,2048,55
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
	.stag	fake56_,16,56
	.member	Reserved1,0,16,17,1
	.member	Retired3,1,16,17,1
	.member	ResponseIncomplete,2,16,17,1
	.member	Retired2,3,16,17,3
	.member	FixedDevice,6,16,17,1
	.member	RemovableMedia,7,16,17,1
	.member	Retired1,8,16,17,7
	.member	DeviceType,15,16,17,1
	.eos
	.stag	fake57_,16,57
	.member	FeatureSupported,0,16,17,1
	.member	Reserved,1,16,17,15
	.eos
	.stag	fake58_,32,58
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
	.stag	fake59_,16,59
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
	.stag	fake60_,32,60
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
	.stag	fake61_,16,61
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
	.stag	fake62_,16,62
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
	.stag	fake63_,48,63
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
	.stag	fake64_,48,64
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
	.stag	fake65_,16,65
	.member	TimeRequired,0,16,17,15
	.member	ExtendedTimeReported,15,16,17,1
	.eos
	.stag	fake66_,16,66
	.member	TimeRequired,0,16,17,15
	.member	ExtendedTimeReported,15,16,17,1
	.eos
	.stag	fake67_,16,67
	.member	LogicalSectorsPerPhysicalSector,0,16,17,4
	.member	Reserved0,4,16,17,8
	.member	LogicalSectorLongerThan256Words,12,16,17,1
	.member	MultipleLogicalSectorsPerPhysicalSector,13,16,17,1
	.member	Reserved1,14,16,17,2
	.eos
	.stag	fake68_,16,68
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
	.stag	fake69_,16,69
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
	.stag	fake70_,16,70
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
	.stag	fake71_,16,71
	.member	MaximumCurrentInMA,0,16,17,12
	.member	CfaPowerMode1Disabled,12,16,17,1
	.member	CfaPowerMode1Required,13,16,17,1
	.member	Reserved0,14,16,17,1
	.member	Word160Supported,15,16,17,1
	.eos
	.stag	fake72_,16,72
	.member	SupportsTrim,0,16,17,1
	.member	Reserved0,1,16,17,15
	.eos
	.stag	fake73_,16,73
	.member	Supported,0,16,17,1
	.member	Reserved0,1,16,17,1
	.member	WriteSameSuported,2,16,17,1
	.member	ErrorRecoveryControlSupported,3,16,17,1
	.member	FeatureControlSuported,4,16,17,1
	.member	DataTablesSuported,5,16,17,1
	.member	Reserved1,6,16,17,6
	.member	VendorSpecific,12,16,17,4
	.eos
	.stag	fake74_,16,74
	.member	AlignmentOfLogicalWithinPhysical,0,16,17,14
	.member	Word209Supported,14,16,17,1
	.member	Reserved0,15,16,17,1
	.eos
	.stag	fake75_,16,75
	.member	NVCachePowerModeEnabled,0,16,17,1
	.member	Reserved0,1,16,17,3
	.member	NVCacheFeatureSetEnabled,4,16,17,1
	.member	Reserved1,5,16,17,3
	.member	NVCachePowerModeVersion,8,16,17,4
	.member	NVCacheFeatureSetVersion,12,16,17,4
	.eos
	.stag	fake76_,16,76
	.member	NVCacheEstimatedTimeToSpinUpInSeconds,0,14,8,8
	.member	Reserved,8,14,8,8
	.eos
	.stag	fake77_,16,77
	.member	MajorVersion,0,16,17,12
	.member	TransportType,12,16,17,4
	.eos
	.stag	_IDENTIFY_DEVICE_DATA,4096,78
	.member	GeneralConfiguration,0,10,8,16,56
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
	.member	TrustedComputing,768,10,8,16,57
	.member	Capabilities,784,10,8,32,58
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
	.member	AdditionalSupported,1104,10,8,16,59
	.member	ReservedWords70,1120,112,8,0,5
	.member	QueueDepth,1200,16,17,5
	.member	ReservedWord75,1205,16,17,11
	.member	SerialAtaCapabilities,1216,10,8,32,60
	.member	SerialAtaFeaturesSupported,1248,10,8,16,61
	.member	SerialAtaFeaturesEnabled,1264,10,8,16,62
	.member	MajorRevision,1280,16,8,16
	.member	MinorRevision,1296,16,8,16
	.member	CommandSetSupport,1312,10,8,48,63
	.member	CommandSetActive,1360,10,8,48,64
	.member	UltraDMASupport,1408,16,17,8
	.member	UltraDMAActive,1416,16,17,8
	.member	NormalSecurityEraseUnit,1424,10,8,16,65
	.member	EnhancedSecurityEraseUnit,1440,10,8,16,66
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
	.member	PhysicalLogicalSectorSize,1696,10,8,16,67
	.member	InterSeekDelay,1712,16,8,16
	.member	WorldWideName,1728,112,8,0,4
	.member	ReservedForWorldWideName128,1792,112,8,0,4
	.member	ReservedForTlcTechnicalReport,1856,16,8,16
	.member	WordsPerLogicalSector,1872,112,8,0,2
	.member	CommandSetSupportExt,1904,10,8,16,68
	.member	CommandSetActiveExt,1920,10,8,16,69
	.member	ReservedForExpandedSupportandActive,1936,112,8,0,6
	.member	MsnSupport,2032,16,17,2
	.member	ReservedWord127,2034,16,17,14
	.member	SecurityStatus,2048,10,8,16,70
	.member	ReservedWord129,2064,112,8,0,31
	.member	CfaPowerMode1,2560,10,8,16,71
	.member	ReservedForCfaWord161,2576,112,8,0,7
	.member	NominalFormFactor,2688,16,17,4
	.member	ReservedWord168,2692,16,17,12
	.member	DataSetManagementFeature,2704,10,8,16,72
	.member	AdditionalProductID,2720,112,8,0,4
	.member	ReservedForCfaWord174,2784,112,8,0,2
	.member	CurrentMediaSerialNumber,2816,112,8,0,30
	.member	SCTCommandTransport,3296,10,8,16,73
	.member	ReservedWord207,3312,112,8,0,2
	.member	BlockAlignment,3344,10,8,16,74
	.member	WriteReadVerifySectorCountMode3Only,3360,112,8,0,2
	.member	WriteReadVerifySectorCountMode2Only,3392,112,8,0,2
	.member	NVCacheCapabilities,3424,10,8,16,75
	.member	NVCacheSizeLSW,3440,16,8,16
	.member	NVCacheSizeMSW,3456,16,8,16
	.member	NominalMediaRotationRate,3472,16,8,16
	.member	ReservedWord218,3488,16,8,16
	.member	NVCacheOptions,3504,10,8,16,76
	.member	WriteReadVerifySectorCountMode,3520,16,17,8
	.member	ReservedWord220,3528,16,17,8
	.member	ReservedWord221,3536,16,8,16
	.member	TransportMajorVersion,3552,10,8,16,77
	.member	TransportMinorVersion,3568,16,8,16
	.member	ReservedWord224,3584,112,8,0,6
	.member	ExtendedNumberOfUserAddressableSectors,3680,114,8,0,2
	.member	MinBlocksPerDownloadMicrocodeMode03,3744,16,8,16
	.member	MaxBlocksPerDownloadMicrocodeMode03,3760,16,8,16
	.member	ReservedWord236,3776,112,8,0,19
	.member	Signature,4080,16,17,8
	.member	CheckSum,4088,16,17,8
	.eos
	.stag	_FXDosDevice,5648,79
	.member	type,0,14,8,8
	.member	initialized,8,14,8,8
	.member	devdata,16,129,8,32
	.member	devstatus,48,14,8,8
	.member	bootSector,56,10,8,928,49
	.member	partitionTable,984,10,8,128,50
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\ff.c",24
;#include "ff.h"			/* Declarations of FatFs API */
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\ff.h",0
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\ffconf.h",0
	.line	298
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\ff.h",29
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxtypes.h",0
	.line	708
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\ff.h",30
	.stag	fake80_,4472,80
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
	.stag	fake81_,128,81
	.member	fs,0,138,8,32,80
	.member	id,32,5,8,16
	.member	attr,48,14,8,8
	.member	stat,56,14,8,8
	.member	sclust,64,18,8,32
	.member	objsize,96,18,8,32
	.eos
	.stag	fake82_,4400,82
	.member	obj,0,10,8,128,81
	.member	flag,128,14,8,8
	.member	err,136,14,8,8
	.member	fptr,144,18,8,32
	.member	clust,176,18,8,32
	.member	sect,208,18,8,32
	.member	dir_sect,240,18,8,32
	.member	dir_ptr,272,142,8,32
	.member	buf,304,110,8,0,512
	.eos
	.stag	fake83_,352,83
	.member	obj,0,10,8,128,81
	.member	dptr,128,18,8,32
	.member	clust,160,18,8,32
	.member	sect,192,18,8,32
	.member	dir,224,142,8,32
	.member	fn,256,110,8,0,12
	.eos
	.stag	fake84_,176,84
	.member	fsize,0,18,8,32
	.member	fdate,32,5,8,16
	.member	ftime,48,5,8,16
	.member	fattrib,64,14,8,8
	.member	fname,72,110,8,0,13
	.eos
	.stag	fake85_,80,85
	.member	fmt,0,14,8,8
	.member	n_fat,8,14,8,8
	.member	align,16,16,8,16
	.member	n_root,32,16,8,16
	.member	au_size,48,18,8,32
	.eos
	.line	429
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\ff.c",25
;#include "diskio.h"		/* Declarations of device I/O functions */
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\diskio.h",0
	.line	77
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\ff.c",26
;
;#include <stdarg.h>
	.file	"G:\devtools\WDCTools\wdc\Tools\include\stdarg.h",0
	.line	51
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\ff.c",28
;
;#pragma section CODE=FFDOS,offset $08:0000
FFDOS	section	offset $08:0000
	ends
;
;/*--------------------------------------------------------------------------
;
;   Module Private Definitions
;
;---------------------------------------------------------------------------*/
;
;#if FF_DEFINED != 86606	/* Revision ID */
;#error Wrong include file (ff.h).
;#endif
;
;
;/* Limits and boundaries */
;#define MAX_DIR		0x200000		/* Max size of FAT directory */
;#define MAX_DIR_EX	0x10000000		/* Max size of exFAT directory */
;#define MAX_FAT12	0xFF5			/* Max FAT12 clusters (differs from specs, but right for real DOS/Windows behavior) */
;#define MAX_FAT16	0xFFF5			/* Max FAT16 clusters (differs from specs, but right for real DOS/Windows behavior) */
;#define MAX_FAT32	0x0FFFFFF5		/* Max FAT32 clusters (not specified, practical limit) */
;#define MAX_EXFAT	0x7FFFFFFD		/* Max exFAT clusters (differs from specs, implementation limit) */
;
;
;#define FADDR(x) (&(fs->win[x]))
;
;/* Character code support macros */
;#define IsUpper(c)		((c) >= 'A' && (c) <= 'Z')
;#define IsLower(c)		((c) >= 'a' && (c) <= 'z')
;#define IsDigit(c)		((c) >= '0' && (c) <= '9')
;#define IsSurrogate(c)	((c) >= 0xD800 && (c) <= 0xDFFF)
;#define IsSurrogateH(c)	((c) >= 0xD800 && (c) <= 0xDBFF)
;#define IsSurrogateL(c)	((c) >= 0xDC00 && (c) <= 0xDFFF)
;
;
;/* Additional file access control and file status flags for internal use */
;#define FA_SEEKEND	0x20	/* Seek to end of the file on file open */
;#define FA_MODIFIED	0x40	/* File has been modified */
;#define FA_DIRTY	0x80	/* FIL.buf[] needs to be written-back */
;
;
;/* Additional file attribute bits for internal use */
;#define AM_VOL		0x08	/* Volume label */
;#define AM_LFN		0x0F	/* LFN entry */
;#define AM_MASK		0x3F	/* Mask of defined bits */
;
;
;/* Name status flags in fn[11] */
;#define NSFLAG		11		/* Index of the name status byte */
;#define NS_LOSS		0x01	/* Out of 8.3 format */
;#define NS_LFN		0x02	/* Force to create LFN entry */
;#define NS_LAST		0x04	/* Last segment */
;#define NS_BODY		0x08	/* Lower case flag (body) */
;#define NS_EXT		0x10	/* Lower case flag (ext) */
;#define NS_DOT		0x20	/* Dot entry */
;#define NS_NOLFN	0x40	/* Do not find LFN */
;#define NS_NONAME	0x80	/* Not followed */
;
;
;/* exFAT directory entry types */
;#define	ET_BITMAP	0x81	/* Allocation bitmap */
;#define	ET_UPCASE	0x82	/* Up-case table */
;#define	ET_VLABEL	0x83	/* Volume label */
;#define	ET_FILEDIR	0x85	/* File and directory */
;#define	ET_STREAM	0xC0	/* Stream extension */
;#define	ET_FILENAME	0xC1	/* Name extension */
;
;
;/* FatFs refers the FAT structure as simple byte array instead of structure member
;/ because the C structure is not binary compatible between different platforms */
;
;#define BS_JmpBoot			0		/* x86 jump instruction (3-byte) */
;#define BS_OEMName			3		/* OEM name (8-byte) */
;#define BPB_BytsPerSec		11		/* Sector size [byte] (WORD) */
;#define BPB_SecPerClus		13		/* Cluster size [sector] (BYTE) */
;#define BPB_RsvdSecCnt		14		/* Size of reserved area [sector] (WORD) */
;#define BPB_NumFATs			16		/* Number of FATs (BYTE) */
;#define BPB_RootEntCnt		17		/* Size of root directory area for FAT [entry] (WORD) */
;#define BPB_TotSec16		19		/* Volume size (16-bit) [sector] (WORD) */
;#define BPB_Media			21		/* Media descriptor byte (BYTE) */
;#define BPB_FATSz16			22		/* FAT size (16-bit) [sector] (WORD) */
;#define BPB_SecPerTrk		24		/* Number of sectors per track for int13h [sector] (WORD) */
;#define BPB_NumHeads		26		/* Number of heads for int13h (WORD) */
;#define BPB_HiddSec			28		/* Volume offset from top of the drive (DWORD) */
;#define BPB_TotSec32		32		/* Volume size (32-bit) [sector] (DWORD) */
;#define BS_DrvNum			36		/* Physical drive number for int13h (BYTE) */
;#define BS_NTres			37		/* WindowsNT error flag (BYTE) */
;#define BS_BootSig			38		/* Extended boot signature (BYTE) */
;#define BS_VolID			39		/* Volume serial number (DWORD) */
;#define BS_VolLab			43		/* Volume label string (8-byte) */
;#define BS_FilSysType		54		/* Filesystem type string (8-byte) */
;#define BS_BootCode			62		/* Boot code (448-byte) */
;#define BS_55AA				510		/* Signature word (WORD) */
;
;#define BPB_FATSz32			36		/* FAT32: FAT size [sector] (DWORD) */
;#define BPB_ExtFlags32		40		/* FAT32: Extended flags (WORD) */
;#define BPB_FSVer32			42		/* FAT32: Filesystem version (WORD) */
;#define BPB_RootClus32		44		/* FAT32: Root directory cluster (DWORD) */
;#define BPB_FSInfo32		48		/* FAT32: Offset of FSINFO sector (WORD) */
;#define BPB_BkBootSec32		50		/* FAT32: Offset of backup boot sector (WORD) */
;#define BS_DrvNum32			64		/* FAT32: Physical drive number for int13h (BYTE) */
;#define BS_NTres32			65		/* FAT32: Error flag (BYTE) */
;#define BS_BootSig32		66		/* FAT32: Extended boot signature (BYTE) */
;#define BS_VolID32			67		/* FAT32: Volume serial number (DWORD) */
;#define BS_VolLab32			71		/* FAT32: Volume label string (8-byte) */
;#define BS_FilSysType32		82		/* FAT32: Filesystem type string (8-byte) */
;#define BS_BootCode32		90		/* FAT32: Boot code (420-byte) */
;
;#define BPB_ZeroedEx		11		/* exFAT: MBZ field (53-byte) */
;#define BPB_VolOfsEx		64		/* exFAT: Volume offset from top of the drive [sector] (QWORD) */
;#define BPB_TotSecEx		72		/* exFAT: Volume size [sector] (QWORD) */
;#define BPB_FatOfsEx		80		/* exFAT: FAT offset from top of the volume [sector] (DWORD) */
;#define BPB_FatSzEx			84		/* exFAT: FAT size [sector] (DWORD) */
;#define BPB_DataOfsEx		88		/* exFAT: Data offset from top of the volume [sector] (DWORD) */
;#define BPB_NumClusEx		92		/* exFAT: Number of clusters (DWORD) */
;#define BPB_RootClusEx		96		/* exFAT: Root directory start cluster (DWORD) */
;#define BPB_VolIDEx			100		/* exFAT: Volume serial number (DWORD) */
;#define BPB_FSVerEx			104		/* exFAT: Filesystem version (WORD) */
;#define BPB_VolFlagEx		106		/* exFAT: Volume flags (WORD) */
;#define BPB_BytsPerSecEx	108		/* exFAT: Log2 of sector size in unit of byte (BYTE) */
;#define BPB_SecPerClusEx	109		/* exFAT: Log2 of cluster size in unit of sector (BYTE) */
;#define BPB_NumFATsEx		110		/* exFAT: Number of FATs (BYTE) */
;#define BPB_DrvNumEx		111		/* exFAT: Physical drive number for int13h (BYTE) */
;#define BPB_PercInUseEx		112		/* exFAT: Percent in use (BYTE) */
;#define BPB_RsvdEx			113		/* exFAT: Reserved (7-byte) */
;#define BS_BootCodeEx		120		/* exFAT: Boot code (390-byte) */
;
;#define DIR_Name			0		/* Short file name (11-byte) */
;#define DIR_Attr			11		/* Attribute (BYTE) */
;#define DIR_NTres			12		/* Lower case flag (BYTE) */
;#define DIR_CrtTime10		13		/* Created time sub-second (BYTE) */
;#define DIR_CrtTime			14		/* Created time (DWORD) */
;#define DIR_LstAccDate		18		/* Last accessed date (WORD) */
;#define DIR_FstClusHI		20		/* Higher 16-bit of first cluster (WORD) */
;#define DIR_ModTime			22		/* Modified time (DWORD) */
;#define DIR_FstClusLO		26		/* Lower 16-bit of first cluster (WORD) */
;#define DIR_FileSize		28		/* File size (DWORD) */
;#define LDIR_Ord			0		/* LFN: LFN order and LLE flag (BYTE) */
;#define LDIR_Attr			11		/* LFN: LFN attribute (BYTE) */
;#define LDIR_Type			12		/* LFN: Entry type (BYTE) */
;#define LDIR_Chksum			13		/* LFN: Checksum of the SFN (BYTE) */
;#define LDIR_FstClusLO		26		/* LFN: MBZ field (WORD) */
;#define XDIR_Type			0		/* exFAT: Type of exFAT directory entry (BYTE) */
;#define XDIR_NumLabel		1		/* exFAT: Number of volume label characters (BYTE) */
;#define XDIR_Label			2		/* exFAT: Volume label (11-WORD) */
;#define XDIR_CaseSum		4		/* exFAT: Sum of case conversion table (DWORD) */
;#define XDIR_NumSec			1		/* exFAT: Number of secondary entries (BYTE) */
;#define XDIR_SetSum			2		/* exFAT: Sum of the set of directory entries (WORD) */
;#define XDIR_Attr			4		/* exFAT: File attribute (WORD) */
;#define XDIR_CrtTime		8		/* exFAT: Created time (DWORD) */
;#define XDIR_ModTime		12		/* exFAT: Modified time (DWORD) */
;#define XDIR_AccTime		16		/* exFAT: Last accessed time (DWORD) */
;#define XDIR_CrtTime10		20		/* exFAT: Created time subsecond (BYTE) */
;#define XDIR_ModTime10		21		/* exFAT: Modified time subsecond (BYTE) */
;#define XDIR_CrtTZ			22		/* exFAT: Created timezone (BYTE) */
;#define XDIR_ModTZ			23		/* exFAT: Modified timezone (BYTE) */
;#define XDIR_AccTZ			24		/* exFAT: Last accessed timezone (BYTE) */
;#define XDIR_GenFlags		33		/* exFAT: General secondary flags (BYTE) */
;#define XDIR_NumName		35		/* exFAT: Number of file name characters (BYTE) */
;#define XDIR_NameHash		36		/* exFAT: Hash of file name (WORD) */
;#define XDIR_ValidFileSize	40		/* exFAT: Valid file size (QWORD) */
;#define XDIR_FstClus		52		/* exFAT: First cluster of the file data (DWORD) */
;#define XDIR_FileSize		56		/* exFAT: File/Directory size (QWORD) */
;
;#define SZDIRE				32		/* Size of a directory entry */
;#define DDEM				0xE5	/* Deleted directory entry mark set to DIR_Name[0] */
;#define RDDEM				0x05	/* Replacement of the character collides with DDEM */
;#define LLEF				0x40	/* Last long entry flag in LDIR_Ord */
;
;#define FSI_LeadSig			0		/* FAT32 FSI: Leading signature (DWORD) */
;#define FSI_StrucSig		484		/* FAT32 FSI: Structure signature (DWORD) */
;#define FSI_Free_Count		488		/* FAT32 FSI: Number of free clusters (DWORD) */
;#define FSI_Nxt_Free		492		/* FAT32 FSI: Last allocated cluster (DWORD) */
;
;#define MBR_Table			446		/* MBR: Offset of partition table in the MBR */
;#define SZ_PTE				16		/* MBR: Size of a partition table entry */
;#define PTE_Boot			0		/* MBR PTE: Boot indicator */
;#define PTE_StHead			1		/* MBR PTE: Start head */
;#define PTE_StSec			2		/* MBR PTE: Start sector */
;#define PTE_StCyl			3		/* MBR PTE: Start cylinder */
;#define PTE_System			4		/* MBR PTE: System ID */
;#define PTE_EdHead			5		/* MBR PTE: End head */
;#define PTE_EdSec			6		/* MBR PTE: End sector */
;#define PTE_EdCyl			7		/* MBR PTE: End cylinder */
;#define PTE_StLba			8		/* MBR PTE: Start in LBA */
;#define PTE_SizLba			12		/* MBR PTE: Size in LBA */
;
;#define GPTH_Sign			0		/* GPT: Header signature (8-byte) */
;#define GPTH_Rev			8		/* GPT: Revision (DWORD) */
;#define GPTH_Size			12		/* GPT: Header size (DWORD) */
;#define GPTH_Bcc			16		/* GPT: Header BCC (DWORD) */
;#define GPTH_CurLba			24		/* GPT: Main header LBA (QWORD) */
;#define GPTH_BakLba			32		/* GPT: Backup header LBA (QWORD) */
;#define GPTH_FstLba			40		/* GPT: First LBA for partitions (QWORD) */
;#define GPTH_LstLba			48		/* GPT: Last LBA for partitions (QWORD) */
;#define GPTH_DskGuid		56		/* GPT: Disk GUID (16-byte) */
;#define GPTH_PtOfs			72		/* GPT: Partation table LBA (QWORD) */
;#define GPTH_PtNum			80		/* GPT: Number of table entries (DWORD) */
;#define GPTH_PteSize		84		/* GPT: Size of table entry (DWORD) */
;#define GPTH_PtBcc			88		/* GPT: Partation table BCC (DWORD) */
;#define SZ_GPTE				128		/* GPT: Size of partition table entry */
;#define GPTE_PtGuid			0		/* GPT PTE: Partition type GUID (16-byte) */
;#define GPTE_UpGuid			16		/* GPT PTE: Partition unique GUID (16-byte) */
;#define GPTE_FstLba			32		/* GPT PTE: First LBA (QWORD) */
;#define GPTE_LstLba			40		/* GPT PTE: Last LBA inclusive (QWORD) */
;#define GPTE_Flags			48		/* GPT PTE: Flags (QWORD) */
;#define GPTE_Name			56		/* GPT PTE: Name */
;
;
;/* Post process on fatal error in the file operations */
;#define ABORT(fs, res)		{ fp->err = (BYTE)(res); LEAVE_FF(fs, res); }
;
;
;/* Re-entrancy related */
;#if FF_FS_REENTRANT
;#if FF_USE_LFN == 1
;#error Static LFN work area cannot be used at thread-safe configuration
;#endif
;#define LEAVE_FF(fs, res)	{ unlock_fs(fs, res); return res; }
;#else
;#define LEAVE_FF(fs, res)	return res
;#endif
;
;
;/* Definitions of logical drive - physical location conversion */
;#if FF_MULTI_PARTITION
;#define LD2PD(vol) VolToPart[vol].pd	/* Get physical drive number */
;#define LD2PT(vol) VolToPart[vol].pt	/* Get partition index */
;#else
;#define LD2PD(vol) (BYTE)(vol)	/* Each logical drive is associated with the same physical drive number */
;#define LD2PT(vol) 0			/* Find first valid partition or in SFD */
;#endif
;
;
;/* Definitions of sector size */
;#if (FF_MAX_SS < FF_MIN_SS) || (FF_MAX_SS != 512 && FF_MAX_SS != 1024 && FF_MAX_SS != 2048 && FF_MAX_SS != 4096) || (FF_MIN_SS != 512 && FF_MIN_SS != 1024 && FF_MIN_SS != 2048 && FF_MIN_SS != 4096)
;#error Wrong sector size configuration
;#endif
;#if FF_MAX_SS == FF_MIN_SS
;#define SS(fs)	((UINT)FF_MAX_SS)	/* Fixed sector size */
;#else
;#define SS(fs)	((fs)->ssize)	/* Variable sector size */
;#endif
;
;
;/* Timestamp */
;#if FF_FS_NORTC == 1
;#if FF_NORTC_YEAR < 1980 || FF_NORTC_YEAR > 2107 || FF_NORTC_MON < 1 || FF_NORTC_MON > 12 || FF_NORTC_MDAY < 1 || FF_NORTC_MDAY > 31
;#error Invalid FF_FS_NORTC settings
;#endif
;#define GET_FATTIME()	((DWORD)(FF_NORTC_YEAR - 1980) << 25 | (DWORD)FF_NORTC_MON << 21 | (DWORD)FF_NORTC_MDAY << 16)
;#else
;#define GET_FATTIME()	get_fattime()
;#endif
;
;
;/* File lock controls */
;#if FF_FS_LOCK != 0
;#if FF_FS_READONLY
;#error FF_FS_LOCK must be 0 at read-only configuration
;#endif
;typedef struct {
;	FATFS *fs;		/* Object ID 1, volume (NULL:blank entry) */
;	DWORD clu;		/* Object ID 2, containing directory (0:root) */
;	DWORD ofs;		/* Object ID 3, offset in the directory */
;	WORD ctr;		/* Object open counter, 0:none, 0x01..0xFF:read mode open count, 0x100:write mode */
;} FILESEM;
;#endif
;
;
;/* SBCS up-case tables (\x80-\xFF) */
;#define TBL_CT437  {0x80,0x9A,0x45,0x41,0x8E,0x41,0x8F,0x80,0x45,0x45,0x45,0x49,0x49,0x49,0x8E,0x8F, \
;					0x90,0x92,0x92,0x4F,0x99,0x4F,0x55,0x55,0x59,0x99,0x9A,0x9B,0x9C,0x9D,0x9E,0x9F, \
;					0x41,0x49,0x4F,0x55,0xA5,0xA5,0xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF, \
;					0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \
;					0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF, \
;					0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \
;					0xE0,0xE1,0xE2,0xE3,0xE4,0xE5,0xE6,0xE7,0xE8,0xE9,0xEA,0xEB,0xEC,0xED,0xEE,0xEF, \
;					0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6,0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}
;#define TBL_CT720  {0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F, \
;					0x90,0x91,0x92,0x93,0x94,0x95,0x96,0x97,0x98,0x99,0x9A,0x9B,0x9C,0x9D,0x9E,0x9F, \
;					0xA0,0xA1,0xA2,0xA3,0xA4,0xA5,0xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF, \
;					0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \
;					0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF, \
;					0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \
;					0xE0,0xE1,0xE2,0xE3,0xE4,0xE5,0xE6,0xE7,0xE8,0xE9,0xEA,0xEB,0xEC,0xED,0xEE,0xEF, \
;					0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6,0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}
;#define TBL_CT737  {0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F, \
;					0x90,0x92,0x92,0x93,0x94,0x95,0x96,0x97,0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87, \
;					0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F,0x90,0x91,0xAA,0x92,0x93,0x94,0x95,0x96, \
;					0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \
;					0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF, \
;					0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \
;					0x97,0xEA,0xEB,0xEC,0xE4,0xED,0xEE,0xEF,0xF5,0xF0,0xEA,0xEB,0xEC,0xED,0xEE,0xEF, \
;					0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6,0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}
;#define TBL_CT771  {0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F, \
;					0x90,0x91,0x92,0x93,0x94,0x95,0x96,0x97,0x98,0x99,0x9A,0x9B,0x9C,0x9D,0x9E,0x9F, \
;					0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F, \
;					0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \
;					0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF, \
;					0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDC,0xDE,0xDE, \
;					0x90,0x91,0x92,0x93,0x94,0x95,0x96,0x97,0x98,0x99,0x9A,0x9B,0x9C,0x9D,0x9E,0x9F, \
;					0xF0,0xF0,0xF2,0xF2,0xF4,0xF4,0xF6,0xF6,0xF8,0xF8,0xFA,0xFA,0xFC,0xFC,0xFE,0xFF}
;#define TBL_CT775  {0x80,0x9A,0x91,0xA0,0x8E,0x95,0x8F,0x80,0xAD,0xED,0x8A,0x8A,0xA1,0x8D,0x8E,0x8F, \
;					0x90,0x92,0x92,0xE2,0x99,0x95,0x96,0x97,0x97,0x99,0x9A,0x9D,0x9C,0x9D,0x9E,0x9F, \
;					0xA0,0xA1,0xE0,0xA3,0xA3,0xA5,0xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF, \
;					0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \
;					0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF, \
;					0xB5,0xB6,0xB7,0xB8,0xBD,0xBE,0xC6,0xC7,0xA5,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \
;					0xE0,0xE1,0xE2,0xE3,0xE5,0xE5,0xE6,0xE3,0xE8,0xE8,0xEA,0xEA,0xEE,0xED,0xEE,0xEF, \
;					0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6,0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}
;#define TBL_CT850  {0x43,0x55,0x45,0x41,0x41,0x41,0x41,0x43,0x45,0x45,0x45,0x49,0x49,0x49,0x41,0x41, \
;					0x45,0x92,0x92,0x4F,0x4F,0x4F,0x55,0x55,0x59,0x4F,0x55,0x4F,0x9C,0x4F,0x9E,0x9F, \
;					0x41,0x49,0x4F,0x55,0xA5,0xA5,0xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF, \
;					0xB0,0xB1,0xB2,0xB3,0xB4,0x41,0x41,0x41,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \
;					0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0x41,0x41,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF, \
;					0xD1,0xD1,0x45,0x45,0x45,0x49,0x49,0x49,0x49,0xD9,0xDA,0xDB,0xDC,0xDD,0x49,0xDF, \
;					0x4F,0xE1,0x4F,0x4F,0x4F,0x4F,0xE6,0xE8,0xE8,0x55,0x55,0x55,0x59,0x59,0xEE,0xEF, \
;					0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6,0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}
;#define TBL_CT852  {0x80,0x9A,0x90,0xB6,0x8E,0xDE,0x8F,0x80,0x9D,0xD3,0x8A,0x8A,0xD7,0x8D,0x8E,0x8F, \
;					0x90,0x91,0x91,0xE2,0x99,0x95,0x95,0x97,0x97,0x99,0x9A,0x9B,0x9B,0x9D,0x9E,0xAC, \
;					0xB5,0xD6,0xE0,0xE9,0xA4,0xA4,0xA6,0xA6,0xA8,0xA8,0xAA,0x8D,0xAC,0xB8,0xAE,0xAF, \
;					0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBD,0xBF, \
;					0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC6,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF, \
;					0xD1,0xD1,0xD2,0xD3,0xD2,0xD5,0xD6,0xD7,0xB7,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \
;					0xE0,0xE1,0xE2,0xE3,0xE3,0xD5,0xE6,0xE6,0xE8,0xE9,0xE8,0xEB,0xED,0xED,0xDD,0xEF, \
;					0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6,0xF7,0xF8,0xF9,0xFA,0xEB,0xFC,0xFC,0xFE,0xFF}
;#define TBL_CT855  {0x81,0x81,0x83,0x83,0x85,0x85,0x87,0x87,0x89,0x89,0x8B,0x8B,0x8D,0x8D,0x8F,0x8F, \
;					0x91,0x91,0x93,0x93,0x95,0x95,0x97,0x97,0x99,0x99,0x9B,0x9B,0x9D,0x9D,0x9F,0x9F, \
;					0xA1,0xA1,0xA3,0xA3,0xA5,0xA5,0xA7,0xA7,0xA9,0xA9,0xAB,0xAB,0xAD,0xAD,0xAE,0xAF, \
;					0xB0,0xB1,0xB2,0xB3,0xB4,0xB6,0xB6,0xB8,0xB8,0xB9,0xBA,0xBB,0xBC,0xBE,0xBE,0xBF, \
;					0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC7,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF, \
;					0xD1,0xD1,0xD3,0xD3,0xD5,0xD5,0xD7,0xD7,0xDD,0xD9,0xDA,0xDB,0xDC,0xDD,0xE0,0xDF, \
;					0xE0,0xE2,0xE2,0xE4,0xE4,0xE6,0xE6,0xE8,0xE8,0xEA,0xEA,0xEC,0xEC,0xEE,0xEE,0xEF, \
;					0xF0,0xF2,0xF2,0xF4,0xF4,0xF6,0xF6,0xF8,0xF8,0xFA,0xFA,0xFC,0xFC,0xFD,0xFE,0xFF}
;#define TBL_CT857  {0x80,0x9A,0x90,0xB6,0x8E,0xB7,0x8F,0x80,0xD2,0xD3,0xD4,0xD8,0xD7,0x49,0x8E,0x8F, \
;					0x90,0x92,0x92,0xE2,0x99,0xE3,0xEA,0xEB,0x98,0x99,0x9A,0x9D,0x9C,0x9D,0x9E,0x9E, \
;					0xB5,0xD6,0xE0,0xE9,0xA5,0xA5,0xA6,0xA6,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF, \
;					0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \
;					0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC7,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF, \
;					0xD0,0xD1,0xD2,0xD3,0xD4,0x49,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \
;					0xE0,0xE1,0xE2,0xE3,0xE5,0xE5,0xE6,0xE7,0xE8,0xE9,0xEA,0xEB,0xDE,0xED,0xEE,0xEF, \
;					0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6,0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}
;#define TBL_CT860  {0x80,0x9A,0x90,0x8F,0x8E,0x91,0x86,0x80,0x89,0x89,0x92,0x8B,0x8C,0x98,0x8E,0x8F, \
;					0x90,0x91,0x92,0x8C,0x99,0xA9,0x96,0x9D,0x98,0x99,0x9A,0x9B,0x9C,0x9D,0x9E,0x9F, \
;					0x86,0x8B,0x9F,0x96,0xA5,0xA5,0xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF, \
;					0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \
;					0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF, \
;					0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \
;					0xE0,0xE1,0xE2,0xE3,0xE4,0xE5,0xE6,0xE7,0xE8,0xE9,0xEA,0xEB,0xEC,0xED,0xEE,0xEF, \
;					0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6,0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}
;#define TBL_CT861  {0x80,0x9A,0x90,0x41,0x8E,0x41,0x8F,0x80,0x45,0x45,0x45,0x8B,0x8B,0x8D,0x8E,0x8F, \
;					0x90,0x92,0x92,0x4F,0x99,0x8D,0x55,0x97,0x97,0x99,0x9A,0x9D,0x9C,0x9D,0x9E,0x9F, \
;					0xA4,0xA5,0xA6,0xA7,0xA4,0xA5,0xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF, \
;					0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \
;					0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF, \
;					0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \
;					0xE0,0xE1,0xE2,0xE3,0xE4,0xE5,0xE6,0xE7,0xE8,0xE9,0xEA,0xEB,0xEC,0xED,0xEE,0xEF, \
;					0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6,0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}
;#define TBL_CT862  {0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F, \
;					0x90,0x91,0x92,0x93,0x94,0x95,0x96,0x97,0x98,0x99,0x9A,0x9B,0x9C,0x9D,0x9E,0x9F, \
;					0x41,0x49,0x4F,0x55,0xA5,0xA5,0xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF, \
;					0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \
;					0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF, \
;					0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \
;					0xE0,0xE1,0xE2,0xE3,0xE4,0xE5,0xE6,0xE7,0xE8,0xE9,0xEA,0xEB,0xEC,0xED,0xEE,0xEF, \
;					0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6,0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}
;#define TBL_CT863  {0x43,0x55,0x45,0x41,0x41,0x41,0x86,0x43,0x45,0x45,0x45,0x49,0x49,0x8D,0x41,0x8F, \
;					0x45,0x45,0x45,0x4F,0x45,0x49,0x55,0x55,0x98,0x4F,0x55,0x9B,0x9C,0x55,0x55,0x9F, \
;					0xA0,0xA1,0x4F,0x55,0xA4,0xA5,0xA6,0xA7,0x49,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF, \
;					0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \
;					0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF, \
;					0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \
;					0xE0,0xE1,0xE2,0xE3,0xE4,0xE5,0xE6,0xE7,0xE8,0xE9,0xEA,0xEB,0xEC,0xED,0xEE,0xEF, \
;					0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6,0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}
;#define TBL_CT864  {0x80,0x9A,0x45,0x41,0x8E,0x41,0x8F,0x80,0x45,0x45,0x45,0x49,0x49,0x49,0x8E,0x8F, \
;					0x90,0x92,0x92,0x4F,0x99,0x4F,0x55,0x55,0x59,0x99,0x9A,0x9B,0x9C,0x9D,0x9E,0x9F, \
;					0x41,0x49,0x4F,0x55,0xA5,0xA5,0xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF, \
;					0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \
;					0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF, \
;					0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \
;					0xE0,0xE1,0xE2,0xE3,0xE4,0xE5,0xE6,0xE7,0xE8,0xE9,0xEA,0xEB,0xEC,0xED,0xEE,0xEF, \
;					0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6,0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}
;#define TBL_CT865  {0x80,0x9A,0x90,0x41,0x8E,0x41,0x8F,0x80,0x45,0x45,0x45,0x49,0x49,0x49,0x8E,0x8F, \
;					0x90,0x92,0x92,0x4F,0x99,0x4F,0x55,0x55,0x59,0x99,0x9A,0x9B,0x9C,0x9D,0x9E,0x9F, \
;					0x41,0x49,0x4F,0x55,0xA5,0xA5,0xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF, \
;					0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \
;					0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF, \
;					0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \
;					0xE0,0xE1,0xE2,0xE3,0xE4,0xE5,0xE6,0xE7,0xE8,0xE9,0xEA,0xEB,0xEC,0xED,0xEE,0xEF, \
;					0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6,0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}
;#define TBL_CT866  {0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F, \
;					0x90,0x91,0x92,0x93,0x94,0x95,0x96,0x97,0x98,0x99,0x9A,0x9B,0x9C,0x9D,0x9E,0x9F, \
;					0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F, \
;					0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \
;					0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF, \
;					0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, \
;					0x90,0x91,0x92,0x93,0x94,0x95,0x96,0x97,0x98,0x99,0x9A,0x9B,0x9C,0x9D,0x9E,0x9F, \
;					0xF0,0xF0,0xF2,0xF2,0xF4,0xF4,0xF6,0xF6,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}
;#define TBL_CT869  {0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F, \
;					0x90,0x91,0x92,0x93,0x94,0x95,0x96,0x97,0x98,0x99,0x9A,0x86,0x9C,0x8D,0x8F,0x90, \
;					0x91,0x90,0x92,0x95,0xA4,0xA5,0xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF, \
;					0xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF, \
;					0xC0,0xC1,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xCE,0xCF, \
;					0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xA4,0xA5,0xA6,0xD9,0xDA,0xDB,0xDC,0xA7,0xA8,0xDF, \
;					0xA9,0xAA,0xAC,0xAD,0xB5,0xB6,0xB7,0xB8,0xBD,0xBE,0xC6,0xC7,0xCF,0xCF,0xD0,0xEF, \
;					0xF0,0xF1,0xD1,0xD2,0xD3,0xF5,0xD4,0xF7,0xF8,0xF9,0xD5,0x96,0x95,0x98,0xFE,0xFF}
;
;
;/* DBCS code range |----- 1st byte -----|  |----------- 2nd byte -----------| */
;/*                  <------>    <------>    <------>    <------>    <------>  */
;#define TBL_DC932 {0x81, 0x9F, 0xE0, 0xFC, 0x40, 0x7E, 0x80, 0xFC, 0x00, 0x00}
;#define TBL_DC936 {0x81, 0xFE, 0x00, 0x00, 0x40, 0x7E, 0x80, 0xFE, 0x00, 0x00}
;#define TBL_DC949 {0x81, 0xFE, 0x00, 0x00, 0x41, 0x5A, 0x61, 0x7A, 0x81, 0xFE}
;#define TBL_DC950 {0x81, 0xFE, 0x00, 0x00, 0x40, 0x7E, 0xA1, 0xFE, 0x00, 0x00}
;
;
;/* Macros for table definitions */
;#define MERGE_2STR(a, b) a ## b
;#define MKCVTBL(hd, cp) MERGE_2STR(hd, cp)
;
;
;
;
;/*--------------------------------------------------------------------------
;
;   Module Private Work Area
;
;---------------------------------------------------------------------------*/
;/* Remark: Variables defined here without initial value shall be guaranteed
;/  zero/null at start-up. If not, the linker option or start-up routine is
;/  not compliance with C standard. */
;
;/*--------------------------------*/
;/* File/Volume controls           */
;/*--------------------------------*/
;
;#if FF_VOLUMES < 1 || FF_VOLUMES > 10
;#error Wrong FF_VOLUMES setting
;#endif
;static FATFS* FatFs[FF_VOLUMES];	/* Pointer to the filesystem objects (logical drives) */
;static WORD Fsid;					/* Filesystem mount ID */
;
;#if FF_FS_RPATH != 0
;static BYTE CurrVol;				/* Current drive */
;#endif
;
;#if FF_FS_LOCK != 0
;static FILESEM Files[FF_FS_LOCK];	/* Open object lock semaphores */
;#endif
;
;#if FF_STR_VOLUME_ID
;#ifdef FF_VOLUME_STRS
;static const char* const VolumeStr[FF_VOLUMES] = {FF_VOLUME_STRS};	/* Pre-defined volume ID */
;#endif
;#endif
;
;#if FF_LBA64
;#if FF_MIN_GPT > 0x100000000
;#error Wrong FF_MIN_GPT setting
;#endif
;static const BYTE GUID_MS_Basic[16] = {0xA2,0xA0,0xD0,0xEB,0xE5,0xB9,0x33,0x44,0x87,0xC0,0x68,0xB6,0xB7,0x26,0x99,0xC7};
;#endif
;
;
;
;/*--------------------------------*/
;/* LFN/Directory working buffer   */
;/*--------------------------------*/
;
;#if FF_USE_LFN == 0		/* Non-LFN configuration */
;#if FF_FS_EXFAT
;#error LFN must be enabled when enable exFAT
;#endif
;#define DEF_NAMBUF
;#define INIT_NAMBUF(fs)
;#define FREE_NAMBUF()
;#define LEAVE_MKFS(res)	return res
;
;#else					/* LFN configurations */
;#if FF_MAX_LFN < 12 || FF_MAX_LFN > 255
;#error Wrong setting of FF_MAX_LFN
;#endif
;#if FF_LFN_BUF < FF_SFN_BUF || FF_SFN_BUF < 12
;#error Wrong setting of FF_LFN_BUF or FF_SFN_BUF
;#endif
;#if FF_LFN_UNICODE < 0 || FF_LFN_UNICODE > 3
;#error Wrong setting of FF_LFN_UNICODE
;#endif
;static const BYTE LfnOfs[] = {1,3,5,7,9,14,16,18,20,22,24,28,30};	/* FAT: Offset of LFN characters in the directory entry */
;#define MAXDIRB(nc)	((nc + 44U) / 15 * SZDIRE)	/* exFAT: Size of directory entry block scratchpad buffer needed for the name length */
;
;#if FF_USE_LFN == 1		/* LFN enabled with static working buffer */
;#if FF_FS_EXFAT
;static BYTE	DirBuf[MAXDIRB(FF_MAX_LFN)];	/* Directory entry block scratchpad buffer */
;#endif
;static WCHAR LfnBuf[FF_MAX_LFN + 1];		/* LFN working buffer */
;#define DEF_NAMBUF
;#define INIT_NAMBUF(fs)
;#define FREE_NAMBUF()
;#define LEAVE_MKFS(res)	return res
;
;#elif FF_USE_LFN == 2 	/* LFN enabled with dynamic working buffer on the stack */
;#if FF_FS_EXFAT
;#define DEF_NAMBUF		WCHAR lbuf[FF_MAX_LFN+1]; BYTE dbuf[MAXDIRB(FF_MAX_LFN)];	/* LFN working buffer and directory entry block scratchpad buffer */
;#define INIT_NAMBUF(fs)	{ (fs)->lfnbuf = lbuf; (fs)->dirbuf = dbuf; }
;#define FREE_NAMBUF()
;#else
;#define DEF_NAMBUF		WCHAR lbuf[FF_MAX_LFN+1];	/* LFN working buffer */
;#define INIT_NAMBUF(fs)	{ (fs)->lfnbuf = lbuf; }
;#define FREE_NAMBUF()
;#endif
;#define LEAVE_MKFS(res)	return res
;
;#elif FF_USE_LFN == 3 	/* LFN enabled with dynamic working buffer on the heap */
;#if FF_FS_EXFAT
;#define DEF_NAMBUF		WCHAR *lfn;	/* Pointer to LFN working buffer and directory entry block scratchpad buffer */
;#define INIT_NAMBUF(fs)	{ lfn = ff_memalloc((FF_MAX_LFN+1)*2 + MAXDIRB(FF_MAX_LFN)); if (!lfn) LEAVE_FF(fs, FR_NOT_ENOUGH_CORE); (fs)->lfnbuf = lfn; (fs)->dirbuf = (BYTE*)(lfn+FF_MAX_LFN+1); }
;#define FREE_NAMBUF()	ff_memfree(lfn)
;#else
;#define DEF_NAMBUF		WCHAR *lfn;	/* Pointer to LFN working buffer */
;#define INIT_NAMBUF(fs)	{ lfn = ff_memalloc((FF_MAX_LFN+1)*2); if (!lfn) LEAVE_FF(fs, FR_NOT_ENOUGH_CORE); (fs)->lfnbuf = lfn; }
;#define FREE_NAMBUF()	ff_memfree(lfn)
;#endif
;#define LEAVE_MKFS(res)	{ if (!work) ff_memfree(buf); return res; }
;#define MAX_MALLOC	0x8000	/* Must be >=FF_MAX_SS */
;
;#else
;#error Wrong setting of FF_USE_LFN
;
;#endif	/* FF_USE_LFN == 1 */
;#endif	/* FF_USE_LFN == 0 */
;
;
;
;/*--------------------------------*/
;/* Code conversion tables         */
;/*--------------------------------*/
;
;#if FF_CODE_PAGE == 0		/* Run-time code page configuration */
;#define CODEPAGE CodePage
;static WORD CodePage;	/* Current code page */
;static const BYTE *ExCvt, *DbcTbl;	/* Pointer to current SBCS up-case table and DBCS code range table below */
;
;static const BYTE Ct437[] = TBL_CT437;
;static const BYTE Ct720[] = TBL_CT720;
;static const BYTE Ct737[] = TBL_CT737;
;static const BYTE Ct771[] = TBL_CT771;
;static const BYTE Ct775[] = TBL_CT775;
;static const BYTE Ct850[] = TBL_CT850;
;static const BYTE Ct852[] = TBL_CT852;
;static const BYTE Ct855[] = TBL_CT855;
;static const BYTE Ct857[] = TBL_CT857;
;static const BYTE Ct860[] = TBL_CT860;
;static const BYTE Ct861[] = TBL_CT861;
;static const BYTE Ct862[] = TBL_CT862;
;static const BYTE Ct863[] = TBL_CT863;
;static const BYTE Ct864[] = TBL_CT864;
;static const BYTE Ct865[] = TBL_CT865;
;static const BYTE Ct866[] = TBL_CT866;
;static const BYTE Ct869[] = TBL_CT869;
;static const BYTE Dc932[] = TBL_DC932;
;static const BYTE Dc936[] = TBL_DC936;
;static const BYTE Dc949[] = TBL_DC949;
;static const BYTE Dc950[] = TBL_DC950;
;
;#elif FF_CODE_PAGE < 900	/* Static code page configuration (SBCS) */
;#define CODEPAGE FF_CODE_PAGE
;static const BYTE ExCvt[] = MKCVTBL(TBL_CT, FF_CODE_PAGE);
	data
~~ExCvt:
	db	$80,$9A,$45,$41,$8E,$41,$8F,$80,$45,$45
	db	$45,$49,$49,$49,$8E,$8F,$90,$92,$92,$4F
	db	$99,$4F,$55,$55,$59,$99,$9A,$9B,$9C,$9D
	db	$9E,$9F,$41,$49,$4F,$55,$A5,$A5,$A6,$A7
	db	$A8,$A9,$AA,$AB,$AC,$AD,$AE,$AF,$B0,$B1
	db	$B2,$B3,$B4,$B5,$B6,$B7,$B8,$B9,$BA,$BB
	db	$BC,$BD,$BE,$BF,$C0,$C1,$C2,$C3,$C4,$C5
	db	$C6,$C7,$C8,$C9,$CA,$CB,$CC,$CD,$CE,$CF
	db	$D0,$D1,$D2,$D3,$D4,$D5,$D6,$D7,$D8,$D9
	db	$DA,$DB,$DC,$DD,$DE,$DF,$E0,$E1,$E2,$E3
	db	$E4,$E5,$E6,$E7,$E8,$E9,$EA,$EB,$EC,$ED
	db	$EE,$EF,$F0,$F1,$F2,$F3,$F4,$F5,$F6,$F7
	db	$F8,$F9,$FA,$FB,$FC,$FD,$FE,$FF
	ends
;
;#else					/* Static code page configuration (DBCS) */
;#define CODEPAGE FF_CODE_PAGE
;static const BYTE DbcTbl[] = MKCVTBL(TBL_DC, FF_CODE_PAGE);
;
;#endif
;
;
;
;
;/*--------------------------------------------------------------------------
;
;   Module Private Functions
;
;---------------------------------------------------------------------------*/
;
;
;/*-----------------------------------------------------------------------*/
;/* Load/Store multi-byte word in the FAT structure                       */
;/*-----------------------------------------------------------------------*/
;
;static WORD ld_word (const BYTE* ptr)	/*	 Load a 2-byte little-endian word */
;{
	.line	618
	.line	619
	FFDOS
	func
	.function	619
~~ld_word:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L2
	tcs
	phd
	tcd
ptr_0	set	4
	.block	619
;	WORD rv;
;
;	//k_debug_integer("ld_word::before:", *((UINT*)ptr)  );
;
;	rv = ptr[1];
rv_1	set	0
	.sym	rv,0,5,1,16
	.sym	ptr,4,142,6,32
	.line	624
	ldy	#$1
	lda	[<L2+ptr_0],Y
	and	#$ff
	sta	<L3+rv_1
;	rv = rv << 8 | ptr[0];
	.line	625
	lda	<L3+rv_1
	xba
	and	#$ff00
	sta	<R0
	lda	[<L2+ptr_0]
	and	#$ff
	sta	<R1
	lda	<R1
	ora	<R0
	sta	<L3+rv_1
;
;	//k_debug_integer("ld_word::after:", rv);
;
;	return rv;
	.line	629
	lda	<L3+rv_1
L5:
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
;}
	.line	630
	.endblock	630
L2	equ	10
L3	equ	9
	ends
	efunc
	.endfunc	630,9,10
	.line	630
;
;static DWORD ld_dword (const BYTE* ptr)	/* Load a 4-byte little-endian word */
;{
	.line	632
	.line	633
	FFDOS
	func
	.function	633
~~ld_dword:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L6
	tcs
	phd
	tcd
ptr_0	set	4
	.block	633
;	DWORD rv;
;
;	rv = ptr[3];
rv_1	set	0
	.sym	rv,0,18,1,32
	.sym	ptr,4,142,6,32
	.line	636
	ldy	#$3
	lda	[<L6+ptr_0],Y
	and	#$ff
	sta	<L7+rv_1
	stz	<L7+rv_1+2
;	rv = rv << 8 | ptr[2];
	.line	637
	pei	<L7+rv_1+2
	pei	<L7+rv_1
	lda	#$8
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R0
	stx	<R0+2
	ldy	#$2
	lda	[<L6+ptr_0],Y
	and	#$ff
	sta	<R1
	stz	<R1+2
	lda	<R1
	ora	<R0
	sta	<L7+rv_1
	lda	<R1+2
	ora	<R0+2
	sta	<L7+rv_1+2
;	rv = rv << 8 | ptr[1];
	.line	638
	pei	<L7+rv_1+2
	pei	<L7+rv_1
	lda	#$8
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R0
	stx	<R0+2
	ldy	#$1
	lda	[<L6+ptr_0],Y
	and	#$ff
	sta	<R1
	stz	<R1+2
	lda	<R1
	ora	<R0
	sta	<L7+rv_1
	lda	<R1+2
	ora	<R0+2
	sta	<L7+rv_1+2
;	rv = rv << 8 | ptr[0];
	.line	639
	pei	<L7+rv_1+2
	pei	<L7+rv_1
	lda	#$8
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R0
	stx	<R0+2
	lda	[<L6+ptr_0]
	and	#$ff
	sta	<R1
	stz	<R1+2
	lda	<R1
	ora	<R0
	sta	<L7+rv_1
	lda	<R1+2
	ora	<R0+2
	sta	<L7+rv_1+2
;	return rv;
	.line	640
	ldx	<L7+rv_1+2
	lda	<L7+rv_1
L9:
	tay
	lda	<L6+2
	sta	<L6+2+4
	lda	<L6+1
	sta	<L6+1+4
	pld
	tsc
	clc
	adc	#L6+4
	tcs
	tya
	rtl
;}
	.line	641
	.endblock	641
L6	equ	12
L7	equ	9
	ends
	efunc
	.endfunc	641,9,12
	.line	641
;
;#if FF_FS_EXFAT
;static QWORD ld_qword (const BYTE* ptr)	/* Load an 8-byte little-endian word */
;{
;	QWORD rv;
;
;	rv = ptr[7];
;	rv = rv << 8 | ptr[6];
;	rv = rv << 8 | ptr[5];
;	rv = rv << 8 | ptr[4];
;	rv = rv << 8 | ptr[3];
;	rv = rv << 8 | ptr[2];
;	rv = rv << 8 | ptr[1];
;	rv = rv << 8 | ptr[0];
;	return rv;
;}
;#endif
;
;#if !FF_FS_READONLY
;static void st_word (BYTE* ptr, WORD val)	/* Store a 2-byte word in little-endian */
;{
	.line	661
	.line	662
	FFDOS
	func
	.function	662
~~st_word:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L10
	tcs
	phd
	tcd
ptr_0	set	4
val_0	set	8
	.block	662
;	*ptr++ = (BYTE)val; val >>= 8;
	.sym	ptr,4,142,6,32
	.sym	val,8,5,6,16
	.line	663
	sep	#$20
	longa	off
	lda	<L10+val_0
	sta	[<L10+ptr_0]
	rep	#$20
	longa	on
	inc	<L10+ptr_0
	bne	L13
	inc	<L10+ptr_0+2
L13:
	.line	663
	lda	<L10+val_0
	ldx	#<$8
	xref	~~~asr
	jsl	~~~asr
	sta	<L10+val_0
;	*ptr++ = (BYTE)val;
	.line	664
	sep	#$20
	longa	off
	lda	<L10+val_0
	sta	[<L10+ptr_0]
	rep	#$20
	longa	on
	inc	<L10+ptr_0
	bne	L14
	inc	<L10+ptr_0+2
L14:
;}
	.line	665
L15:
	lda	<L10+2
	sta	<L10+2+6
	lda	<L10+1
	sta	<L10+1+6
	pld
	tsc
	clc
	adc	#L10+6
	tcs
	rtl
	.endblock	665
L10	equ	0
L11	equ	1
	ends
	efunc
	.endfunc	665,1,0
	.line	665
;
;static void st_dword (BYTE* ptr, DWORD val)	/* Store a 4-byte word in little-endian */
;{
	.line	667
	.line	668
	FFDOS
	func
	.function	668
~~st_dword:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L16
	tcs
	phd
	tcd
ptr_0	set	4
val_0	set	8
	.block	668
;	*ptr++ = (BYTE)val; val >>= 8;
	.sym	ptr,4,142,6,32
	.sym	val,8,18,6,32
	.line	669
	sep	#$20
	longa	off
	lda	<L16+val_0
	sta	[<L16+ptr_0]
	rep	#$20
	longa	on
	inc	<L16+ptr_0
	bne	L19
	inc	<L16+ptr_0+2
L19:
	.line	669
	pei	<L16+val_0+2
	pei	<L16+val_0
	lda	#$8
	xref	~~~llsr
	jsl	~~~llsr
	sta	<L16+val_0
	stx	<L16+val_0+2
;	*ptr++ = (BYTE)val; val >>= 8;
	.line	670
	sep	#$20
	longa	off
	lda	<L16+val_0
	sta	[<L16+ptr_0]
	rep	#$20
	longa	on
	inc	<L16+ptr_0
	bne	L20
	inc	<L16+ptr_0+2
L20:
	.line	670
	pei	<L16+val_0+2
	pei	<L16+val_0
	lda	#$8
	xref	~~~llsr
	jsl	~~~llsr
	sta	<L16+val_0
	stx	<L16+val_0+2
;	*ptr++ = (BYTE)val; val >>= 8;
	.line	671
	sep	#$20
	longa	off
	lda	<L16+val_0
	sta	[<L16+ptr_0]
	rep	#$20
	longa	on
	inc	<L16+ptr_0
	bne	L21
	inc	<L16+ptr_0+2
L21:
	.line	671
	pei	<L16+val_0+2
	pei	<L16+val_0
	lda	#$8
	xref	~~~llsr
	jsl	~~~llsr
	sta	<L16+val_0
	stx	<L16+val_0+2
;	*ptr++ = (BYTE)val;
	.line	672
	sep	#$20
	longa	off
	lda	<L16+val_0
	sta	[<L16+ptr_0]
	rep	#$20
	longa	on
	inc	<L16+ptr_0
	bne	L22
	inc	<L16+ptr_0+2
L22:
;}
	.line	673
L23:
	lda	<L16+2
	sta	<L16+2+8
	lda	<L16+1
	sta	<L16+1+8
	pld
	tsc
	clc
	adc	#L16+8
	tcs
	rtl
	.endblock	673
L16	equ	0
L17	equ	1
	ends
	efunc
	.endfunc	673,1,0
	.line	673
;
;#if FF_FS_EXFAT
;static void st_qword (BYTE* ptr, QWORD val)	/* Store an 8-byte word in little-endian */
;{
;	*ptr++ = (BYTE)val; val >>= 8;
;	*ptr++ = (BYTE)val; val >>= 8;
;	*ptr++ = (BYTE)val; val >>= 8;
;	*ptr++ = (BYTE)val; val >>= 8;
;	*ptr++ = (BYTE)val; val >>= 8;
;	*ptr++ = (BYTE)val; val >>= 8;
;	*ptr++ = (BYTE)val; val >>= 8;
;	*ptr++ = (BYTE)val;
;}
;#endif
;#endif	/* !FF_FS_READONLY */
;
;
;
;/*-----------------------------------------------------------------------*/
;/* String functions                                                      */
;/*-----------------------------------------------------------------------*/
;
;/* Copy memory to memory */
;static void mem_cpy (void* dst, const void* src, UINT cnt)
;{
	.line	697
	.line	698
	FFDOS
	func
	.function	698
~~mem_cpy:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L24
	tcs
	phd
	tcd
dst_0	set	4
src_0	set	8
cnt_0	set	12
	.block	698
;	BYTE *d = (BYTE*)dst;
;	const BYTE *s = (const BYTE*)src;
;
;	if (cnt != 0) {
d_1	set	0
s_1	set	4
	.sym	d,0,142,1,32
	.sym	s,4,142,1,32
	.sym	dst,4,129,6,32
	.sym	src,8,129,6,32
	.sym	cnt,12,16,6,16
	lda	<L24+dst_0
	sta	<L25+d_1
	lda	<L24+dst_0+2
	sta	<L25+d_1+2
	lda	<L24+src_0
	sta	<L25+s_1
	lda	<L24+src_0+2
	sta	<L25+s_1+2
	.line	702
	lda	<L24+cnt_0
	bne	L27
	brl	L10001
L27:
	.line	702
;		do {
	.line	703
L10004:
	.line	703
;			*d++ = *s++;
	.line	704
	sep	#$20
	longa	off
	lda	[<L25+s_1]
	sta	[<L25+d_1]
	rep	#$20
	longa	on
	inc	<L25+s_1
	bne	L28
	inc	<L25+s_1+2
L28:
	inc	<L25+d_1
	bne	L29
	inc	<L25+d_1+2
L29:
;		} while (--cnt);
	.line	705
L10002:
	dec	<L24+cnt_0
	lda	<L24+cnt_0
	beq	L30
	brl	L10004
L30:
L10003:
;	}
	.line	706
;}
L10001:
	.line	707
L31:
	lda	<L24+2
	sta	<L24+2+10
	lda	<L24+1
	sta	<L24+1+10
	pld
	tsc
	clc
	adc	#L24+10
	tcs
	rtl
	.endblock	707
L24	equ	8
L25	equ	1
	ends
	efunc
	.endfunc	707,1,8
	.line	707
;
;
;/* Fill memory block */
;static void mem_set (void* dst, int val, UINT cnt)
;{
	.line	711
	.line	712
	FFDOS
	func
	.function	712
~~mem_set:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L32
	tcs
	phd
	tcd
dst_0	set	4
val_0	set	8
cnt_0	set	10
	.block	712
;	BYTE *d = (BYTE*)dst;
;
;	do {
d_1	set	0
	.sym	d,0,142,1,32
	.sym	dst,4,129,6,32
	.sym	val,8,5,6,16
	.sym	cnt,10,16,6,16
	lda	<L32+dst_0
	sta	<L33+d_1
	lda	<L32+dst_0+2
	sta	<L33+d_1+2
	.line	715
L10007:
	.line	715
;		*d++ = (BYTE)val;
	.line	716
	sep	#$20
	longa	off
	lda	<L32+val_0
	sta	[<L33+d_1]
	rep	#$20
	longa	on
	inc	<L33+d_1
	bne	L35
	inc	<L33+d_1+2
L35:
;	} while (--cnt);
	.line	717
L10005:
	dec	<L32+cnt_0
	lda	<L32+cnt_0
	beq	L36
	brl	L10007
L36:
L10006:
;}
	.line	718
L37:
	lda	<L32+2
	sta	<L32+2+8
	lda	<L32+1
	sta	<L32+1+8
	pld
	tsc
	clc
	adc	#L32+8
	tcs
	rtl
	.endblock	718
L32	equ	4
L33	equ	1
	ends
	efunc
	.endfunc	718,1,4
	.line	718
;
;
;/* Compare memory block */
;static int mem_cmp (const void* dst, const void* src, UINT cnt)	/* ZR:same, NZ:different */
;{
	.line	722
	.line	723
	FFDOS
	func
	.function	723
~~mem_cmp:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L38
	tcs
	phd
	tcd
dst_0	set	4
src_0	set	8
cnt_0	set	12
	.block	723
;	const BYTE *d = (const BYTE *)dst, *s = (const BYTE *)src;
;	int r = 0;
;
;	do {
d_1	set	0
s_1	set	4
r_1	set	8
	.sym	d,0,142,1,32
	.sym	s,4,142,1,32
	.sym	r,8,5,1,16
	.sym	dst,4,129,6,32
	.sym	src,8,129,6,32
	.sym	cnt,12,16,6,16
	lda	<L38+dst_0
	sta	<L39+d_1
	lda	<L38+dst_0+2
	sta	<L39+d_1+2
	lda	<L38+src_0
	sta	<L39+s_1
	lda	<L38+src_0+2
	sta	<L39+s_1+2
	stz	<L39+r_1
	.line	727
L10010:
	.line	727
;		r = *d++ - *s++;
	.line	728
	lda	[<L39+s_1]
	and	#$ff
	sta	<R0
	lda	[<L39+d_1]
	and	#$ff
	sta	<R1
	sec
	lda	<R1
	sbc	<R0
	sta	<L39+r_1
	inc	<L39+s_1
	bne	L41
	inc	<L39+s_1+2
L41:
	inc	<L39+d_1
	bne	L42
	inc	<L39+d_1+2
L42:
;	} while (--cnt && r == 0);
	.line	729
L10008:
	dec	<L38+cnt_0
	lda	<L38+cnt_0
	bne	L44
	brl	L43
L44:
	lda	<L39+r_1
	bne	L45
	brl	L10010
L45:
L43:
L10009:
;
;	return r;
	.line	731
	lda	<L39+r_1
L46:
	tay
	lda	<L38+2
	sta	<L38+2+10
	lda	<L38+1
	sta	<L38+1+10
	pld
	tsc
	clc
	adc	#L38+10
	tcs
	tya
	rtl
;}
	.line	732
	.endblock	732
L38	equ	18
L39	equ	9
	ends
	efunc
	.endfunc	732,9,18
	.line	732
;
;
;/* Check if chr is contained in the string */
;static int chk_chr (const char* str, int chr)	/* NZ:contained, ZR:not contained */
;{
	.line	736
	.line	737
	FFDOS
	func
	.function	737
~~chk_chr:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L47
	tcs
	phd
	tcd
str_0	set	4
chr_0	set	8
	.block	737
;	while (*str && *str != chr) str++;
	.sym	str,4,142,6,32
	.sym	chr,8,5,6,16
	.line	738
L10011:
	lda	[<L47+str_0]
	and	#$ff
	bne	L50
	brl	L10012
L50:
	lda	[<L47+str_0]
	and	#$ff
	sta	<R0
	lda	<R0
	cmp	<L47+chr_0
	bne	L51
	brl	L10012
L51:
	.line	738
	inc	<L47+str_0
	bne	L52
	inc	<L47+str_0+2
L52:
	brl	L10011
L10012:
;	return *str;
	.line	739
	lda	[<L47+str_0]
	and	#$ff
L53:
	tay
	lda	<L47+2
	sta	<L47+2+6
	lda	<L47+1
	sta	<L47+1+6
	pld
	tsc
	clc
	adc	#L47+6
	tcs
	tya
	rtl
;}
	.line	740
	.endblock	740
L47	equ	4
L48	equ	5
	ends
	efunc
	.endfunc	740,5,4
	.line	740
;
;
;/* Test if the byte is DBC 1st byte */
;static int dbc_1st (BYTE c)
;{
	.line	744
	.line	745
	FFDOS
	func
	.function	745
~~dbc_1st:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L54
	tcs
	phd
	tcd
c_0	set	4
	.block	745
;#if FF_CODE_PAGE == 0		/* Variable code page */
;	if (DbcTbl && c >= DbcTbl[0]) {
;		if (c <= DbcTbl[1]) return 1;					/* 1st byte range 1 */
;		if (c >= DbcTbl[2] && c <= DbcTbl[3]) return 1;	/* 1st byte range 2 */
;	}
;#elif FF_CODE_PAGE >= 900	/* DBCS fixed code page */
;	if (c >= DbcTbl[0]) {
;		if (c <= DbcTbl[1]) return 1;
;		if (c >= DbcTbl[2] && c <= DbcTbl[3]) return 1;
;	}
;#else						/* SBCS fixed code page */
;	if (c != 0) return 0;	/* Always false */
	.sym	c,4,14,6,8
	.line	757
	lda	<L54+c_0
	and	#$ff
	bne	L57
	brl	L10013
L57:
	.line	757
	lda	#$0
L58:
	tay
	lda	<L54+2
	sta	<L54+2+2
	lda	<L54+1
	sta	<L54+1+2
	pld
	tsc
	clc
	adc	#L54+2
	tcs
	tya
	rtl
;#endif
;	return 0;
L10013:
	.line	759
	lda	#$0
	brl	L58
;}
	.line	760
	.endblock	760
L54	equ	0
L55	equ	1
	ends
	efunc
	.endfunc	760,1,0
	.line	760
;
;
;/* Test if the byte is DBC 2nd byte */
;static int dbc_2nd (BYTE c)
;{
	.line	764
	.line	765
	FFDOS
	func
	.function	765
~~dbc_2nd:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L59
	tcs
	phd
	tcd
c_0	set	4
	.block	765
;#if FF_CODE_PAGE == 0		/* Variable code page */
;	if (DbcTbl && c >= DbcTbl[4]) {
;		if (c <= DbcTbl[5]) return 1;					/* 2nd byte range 1 */
;		if (c >= DbcTbl[6] && c <= DbcTbl[7]) return 1;	/* 2nd byte range 2 */
;		if (c >= DbcTbl[8] && c <= DbcTbl[9]) return 1;	/* 2nd byte range 3 */
;	}
;#elif FF_CODE_PAGE >= 900	/* DBCS fixed code page */
;	if (c >= DbcTbl[4]) {
;		if (c <= DbcTbl[5]) return 1;
;		if (c >= DbcTbl[6] && c <= DbcTbl[7]) return 1;
;		if (c >= DbcTbl[8] && c <= DbcTbl[9]) return 1;
;	}
;#else						/* SBCS fixed code page */
;	if (c != 0) return 0;	/* Always false */
	.sym	c,4,14,6,8
	.line	779
	lda	<L59+c_0
	and	#$ff
	bne	L62
	brl	L10014
L62:
	.line	779
	lda	#$0
L63:
	tay
	lda	<L59+2
	sta	<L59+2+2
	lda	<L59+1
	sta	<L59+1+2
	pld
	tsc
	clc
	adc	#L59+2
	tcs
	tya
	rtl
;#endif
;	return 0;
L10014:
	.line	781
	lda	#$0
	brl	L63
;}
	.line	782
	.endblock	782
L59	equ	0
L60	equ	1
	ends
	efunc
	.endfunc	782,1,0
	.line	782
;
;
;#if FF_USE_LFN
;
;/* Get a Unicode code point from the TCHAR string in defined API encodeing */
;static DWORD tchar2uni (	/* Returns a character in UTF-16 encoding (>=0x10000 on surrogate pair, 0xFFFFFFFF on decode error) */
;	const TCHAR** str		/* Pointer to pointer to TCHAR string in configured encoding */
;)
;{
;	DWORD uc;
;	const TCHAR *p = *str;
;
;#if FF_LFN_UNICODE == 1		/* UTF-16 input */
;	WCHAR wc;
;
;	uc = *p++;	/* Get a unit */
;	if (IsSurrogate(uc)) {	/* Surrogate? */
;		wc = *p++;		/* Get low surrogate */
;		if (!IsSurrogateH(uc) || !IsSurrogateL(wc)) return 0xFFFFFFFF;	/* Wrong surrogate? */
;		uc = uc << 16 | wc;
;	}
;
;#elif FF_LFN_UNICODE == 2	/* UTF-8 input */
;	BYTE b;
;	int nf;
;
;	uc = (BYTE)*p++;	/* Get an encoding unit */
;	if (uc & 0x80) {	/* Multiple byte code? */
;		if ((uc & 0xE0) == 0xC0) {	/* 2-byte sequence? */
;			uc &= 0x1F; nf = 1;
;		} else {
;			if ((uc & 0xF0) == 0xE0) {	/* 3-byte sequence? */
;				uc &= 0x0F; nf = 2;
;			} else {
;				if ((uc & 0xF8) == 0xF0) {	/* 4-byte sequence? */
;					uc &= 0x07; nf = 3;
;				} else {					/* Wrong sequence */
;					return 0xFFFFFFFF;
;				}
;			}
;		}
;		do {	/* Get trailing bytes */
;			b = (BYTE)*p++;
;			if ((b & 0xC0) != 0x80) return 0xFFFFFFFF;	/* Wrong sequence? */
;			uc = uc << 6 | (b & 0x3F);
;		} while (--nf != 0);
;		if (uc < 0x80 || IsSurrogate(uc) || uc >= 0x110000) return 0xFFFFFFFF;	/* Wrong code? */
;		if (uc >= 0x010000) uc = 0xD800DC00 | ((uc - 0x10000) << 6 & 0x3FF0000) | (uc & 0x3FF);	/* Make a surrogate pair if needed */
;	}
;
;#elif FF_LFN_UNICODE == 3	/* UTF-32 input */
;	uc = (TCHAR)*p++;	/* Get a unit */
;	if (uc >= 0x110000 || IsSurrogate(uc)) return 0xFFFFFFFF;	/* Wrong code? */
;	if (uc >= 0x010000) uc = 0xD800DC00 | ((uc - 0x10000) << 6 & 0x3FF0000) | (uc & 0x3FF);	/* Make a surrogate pair if needed */
;
;#else		/* ANSI/OEM input */
;	BYTE b;
;	WCHAR wc;
;
;	wc = (BYTE)*p++;			/* Get a byte */
;	if (dbc_1st((BYTE)wc)) {	/* Is it a DBC 1st byte? */
;		b = (BYTE)*p++;			/* Get 2nd byte */
;		if (!dbc_2nd(b)) return 0xFFFFFFFF;	/* Invalid code? */
;		wc = (wc << 8) + b;		/* Make a DBC */
;	}
;	if (wc != 0) {
;		wc = ff_oem2uni(wc, CODEPAGE);	/* ANSI/OEM ==> Unicode */
;		if (wc == 0) return 0xFFFFFFFF;	/* Invalid code? */
;	}
;	uc = wc;
;
;#endif
;	*str = p;	/* Next read pointer */
;	return uc;
;}
;
;
;/* Output a TCHAR string in defined API encoding */
;static BYTE put_utf (	/* Returns number of encoding units written (0:buffer overflow or wrong encoding) */
;	DWORD chr,	/* UTF-16 encoded character (Surrogate pair if >=0x10000) */
;	TCHAR* buf,	/* Output buffer */
;	UINT szb	/* Size of the buffer */
;)
;{
;#if FF_LFN_UNICODE == 1	/* UTF-16 output */
;	WCHAR hs, wc;
;
;	hs = (WCHAR)(chr >> 16);
;	wc = (WCHAR)chr;
;	if (hs == 0) {	/* Single encoding unit? */
;		if (szb < 1 || IsSurrogate(wc)) return 0;	/* Buffer overflow or wrong code? */
;		*buf = wc;
;		return 1;
;	}
;	if (szb < 2 || !IsSurrogateH(hs) || !IsSurrogateL(wc)) return 0;	/* Buffer overflow or wrong surrogate? */
;	*buf++ = hs;
;	*buf++ = wc;
;	return 2;
;
;#elif FF_LFN_UNICODE == 2	/* UTF-8 output */
;	DWORD hc;
;
;	if (chr < 0x80) {	/* Single byte code? */
;		if (szb < 1) return 0;	/* Buffer overflow? */
;		*buf = (TCHAR)chr;
;		return 1;
;	}
;	if (chr < 0x800) {	/* 2-byte sequence? */
;		if (szb < 2) return 0;	/* Buffer overflow? */
;		*buf++ = (TCHAR)(0xC0 | (chr >> 6 & 0x1F));
;		*buf++ = (TCHAR)(0x80 | (chr >> 0 & 0x3F));
;		return 2;
;	}
;	if (chr < 0x10000) {	/* 3-byte sequence? */
;		if (szb < 3 || IsSurrogate(chr)) return 0;	/* Buffer overflow or wrong code? */
;		*buf++ = (TCHAR)(0xE0 | (chr >> 12 & 0x0F));
;		*buf++ = (TCHAR)(0x80 | (chr >> 6 & 0x3F));
;		*buf++ = (TCHAR)(0x80 | (chr >> 0 & 0x3F));
;		return 3;
;	}
;	/* 4-byte sequence */
;	if (szb < 4) return 0;	/* Buffer overflow? */
;	hc = ((chr & 0xFFFF0000) - 0xD8000000) >> 6;	/* Get high 10 bits */
;	chr = (chr & 0xFFFF) - 0xDC00;					/* Get low 10 bits */
;	if (hc >= 0x100000 || chr >= 0x400) return 0;	/* Wrong surrogate? */
;	chr = (hc | chr) + 0x10000;
;	*buf++ = (TCHAR)(0xF0 | (chr >> 18 & 0x07));
;	*buf++ = (TCHAR)(0x80 | (chr >> 12 & 0x3F));
;	*buf++ = (TCHAR)(0x80 | (chr >> 6 & 0x3F));
;	*buf++ = (TCHAR)(0x80 | (chr >> 0 & 0x3F));
;	return 4;
;
;#elif FF_LFN_UNICODE == 3	/* UTF-32 output */
;	DWORD hc;
;
;	if (szb < 1) return 0;	/* Buffer overflow? */
;	if (chr >= 0x10000) {	/* Out of BMP? */
;		hc = ((chr & 0xFFFF0000) - 0xD8000000) >> 6;	/* Get high 10 bits */
;		chr = (chr & 0xFFFF) - 0xDC00;					/* Get low 10 bits */
;		if (hc >= 0x100000 || chr >= 0x400) return 0;	/* Wrong surrogate? */
;		chr = (hc | chr) + 0x10000;
;	}
;	*buf++ = (TCHAR)chr;
;	return 1;
;
;#else						/* ANSI/OEM output */
;	WCHAR wc;
;
;	wc = ff_uni2oem(chr, CODEPAGE);
;	if (wc >= 0x100) {	/* Is this a DBC? */
;		if (szb < 2) return 0;
;		*buf++ = (char)(wc >> 8);	/* Store DBC 1st byte */
;		*buf++ = (TCHAR)wc;			/* Store DBC 2nd byte */
;		return 2;
;	}
;	if (wc == 0 || szb < 1) return 0;	/* Invalid char or buffer overflow? */
;	*buf++ = (TCHAR)wc;					/* Store the character */
;	return 1;
;#endif
;}
;#endif	/* FF_USE_LFN */
;
;
;#if FF_FS_REENTRANT
;/*-----------------------------------------------------------------------*/
;/* Request/Release grant to access the volume                            */
;/*-----------------------------------------------------------------------*/
;static int lock_fs (		/* 1:Ok, 0:timeout */
;	FATFS* fs		/* Filesystem object */
;)
;{
;	return ff_req_grant(fs->sobj);
;}
;
;
;static void unlock_fs (
;	FATFS* fs,		/* Filesystem object */
;	FRESULT res		/* Result code to be returned */
;)
;{
;	if (fs && res != FR_NOT_ENABLED && res != FR_INVALID_DRIVE && res != FR_TIMEOUT) {
;		ff_rel_grant(fs->sobj);
;	}
;}
;
;#endif
;
;
;
;#if FF_FS_LOCK != 0
;/*-----------------------------------------------------------------------*/
;/* File lock control functions                                           */
;/*-----------------------------------------------------------------------*/
;
;static FRESULT chk_lock (	/* Check if the file can be accessed */
;	DIR* dp,		/* Directory object pointing the file to be checked */
;	int acc			/* Desired access type (0:Read mode open, 1:Write mode open, 2:Delete or rename) */
;)
;{
;	UINT i, be;
;
;	/* Search open object table for the object */
;	be = 0;
;	for (i = 0; i < FF_FS_LOCK; i++) {
;		if (Files[i].fs) {	/* Existing entry */
;			if (Files[i].fs == dp->obj.fs &&	 	/* Check if the object matches with an open object */
;				Files[i].clu == dp->obj.sclust &&
;				Files[i].ofs == dp->dptr) break;
;		} else {			/* Blank entry */
;			be = 1;
;		}
;	}
;	if (i == FF_FS_LOCK) {	/* The object has not been opened */
;		return (!be && acc != 2) ? FR_TOO_MANY_OPEN_FILES : FR_OK;	/* Is there a blank entry for new object? */
;	}
;
;	/* The object was opened. Reject any open against writing file and all write mode open */
;	return (acc != 0 || Files[i].ctr == 0x100) ? FR_LOCKED : FR_OK;
;}
;
;
;static int enq_lock (void)	/* Check if an entry is available for a new object */
;{
;	UINT i;
;
;	for (i = 0; i < FF_FS_LOCK && Files[i].fs; i++) ;
;	return (i == FF_FS_LOCK) ? 0 : 1;
;}
;
;
;static UINT inc_lock (	/* Increment object open counter and returns its index (0:Internal error) */
;	DIR* dp,	/* Directory object pointing the file to register or increment */
;	int acc		/* Desired access (0:Read, 1:Write, 2:Delete/Rename) */
;)
;{
;	UINT i;
;
;
;	for (i = 0; i < FF_FS_LOCK; i++) {	/* Find the object */
;		if (Files[i].fs == dp->obj.fs
;		 && Files[i].clu == dp->obj.sclust
;		 && Files[i].ofs == dp->dptr) break;
;	}
;
;	if (i == FF_FS_LOCK) {				/* Not opened. Register it as new. */
;		for (i = 0; i < FF_FS_LOCK && Files[i].fs; i++) ;
;		if (i == FF_FS_LOCK) return 0;	/* No free entry to register (int err) */
;		Files[i].fs = dp->obj.fs;
;		Files[i].clu = dp->obj.sclust;
;		Files[i].ofs = dp->dptr;
;		Files[i].ctr = 0;
;	}
;
;	if (acc >= 1 && Files[i].ctr) return 0;	/* Access violation (int err) */
;
;	Files[i].ctr = acc ? 0x100 : Files[i].ctr + 1;	/* Set semaphore value */
;
;	return i + 1;	/* Index number origin from 1 */
;}
;
;
;static FRESULT dec_lock (	/* Decrement object open counter */
;	UINT i			/* Semaphore index (1..) */
;)
;{
;	WORD n;
;	FRESULT res;
;
;
;	if (--i < FF_FS_LOCK) {	/* Index number origin from 0 */
;		n = Files[i].ctr;
;		if (n == 0x100) n = 0;		/* If write mode open, delete the entry */
;		if (n > 0) n--;				/* Decrement read mode open count */
;		Files[i].ctr = n;
;		if (n == 0) Files[i].fs = 0;	/* Delete the entry if open count gets zero */
;		res = FR_OK;
;	} else {
;		res = FR_INT_ERR;			/* Invalid index nunber */
;	}
;	return res;
;}
;
;
;static void clear_lock (	/* Clear lock entries of the volume */
;	FATFS *fs
;)
;{
;	UINT i;
;
;	for (i = 0; i < FF_FS_LOCK; i++) {
;		if (Files[i].fs == fs) Files[i].fs = 0;
;	}
;}
;
;#endif	/* FF_FS_LOCK != 0 */
;
;
;
;/*-----------------------------------------------------------------------*/
;/* Move/Flush disk access window in the filesystem object                */
;/*-----------------------------------------------------------------------*/
;#if !FF_FS_READONLY
;static FRESULT sync_window (	/* Returns FR_OK or FR_DISK_ERR */
;	FATFS* fs			/* Filesystem object */
;)
;{
	.line	1085
	.line	1088
	FFDOS
	func
	.function	1088
~~sync_window:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L64
	tcs
	phd
	tcd
fs_0	set	4
	.block	1088
;	FRESULT res = FR_OK;
;
;
;	if (fs->wflag) {	/* Is the disk access window dirty? */
res_1	set	0
	.sym	res,0,5,1,16
	.sym	fs,4,138,6,32,80
	stz	<L65+res_1
	.line	1092
	ldy	#$3
	lda	[<L64+fs_0],Y
	and	#$ff
	bne	L67
	brl	L10015
L67:
	.line	1092
;		if (disk_write(fs->pdrv, fs->win, fs->winsect, 1) == RES_OK) {	/* Write it back into the volume */
	.line	1093
	pea	#<$1
	ldy	#$2d
	lda	[<L64+fs_0],Y
	pha
	ldy	#$2b
	lda	[<L64+fs_0],Y
	pha
	clc
	lda	#$2f
	adc	<L64+fs_0
	sta	<R0
	lda	#$0
	adc	<L64+fs_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$1
	lda	[<L64+fs_0],Y
	pha
	jsl	~~disk_write
	tax
	beq	L68
	brl	L10016
L68:
	.line	1093
;			fs->wflag = 0;	/* Clear window dirty flag */
	.line	1094
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$3
	sta	[<L64+fs_0],Y
	rep	#$20
	longa	on
;			if (fs->winsect - fs->fatbase < fs->fsize) {	/* Is it in the 1st FAT? */
	.line	1095
	sec
	ldy	#$2b
	lda	[<L64+fs_0],Y
	ldy	#$1f
	sbc	[<L64+fs_0],Y
	sta	<R0
	ldy	#$2d
	lda	[<L64+fs_0],Y
	ldy	#$21
	sbc	[<L64+fs_0],Y
	sta	<R0+2
	lda	<R0
	ldy	#$17
	cmp	[<L64+fs_0],Y
	lda	<R0+2
	ldy	#$19
	sbc	[<L64+fs_0],Y
	bcc	L69
	brl	L10017
L69:
	.line	1095
;				if (fs->n_fats == 2) disk_write(fs->pdrv, fs->win, fs->winsect + fs->fsize, 1);	/* Reflect it to 2nd FAT if needed */
	.line	1096
	sep	#$20
	longa	off
	ldy	#$2
	lda	[<L64+fs_0],Y
	cmp	#<$2
	rep	#$20
	longa	on
	beq	L70
	brl	L10018
L70:
	.line	1096
	pea	#<$1
	clc
	ldy	#$2b
	lda	[<L64+fs_0],Y
	ldy	#$17
	adc	[<L64+fs_0],Y
	sta	<R0
	ldy	#$2d
	lda	[<L64+fs_0],Y
	ldy	#$19
	adc	[<L64+fs_0],Y
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	#$2f
	adc	<L64+fs_0
	sta	<R1
	lda	#$0
	adc	<L64+fs_0+2
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	ldy	#$1
	lda	[<L64+fs_0],Y
	pha
	jsl	~~disk_write
;			}
L10018:
	.line	1097
;		} else {
L10017:
	.line	1098
	brl	L10019
L10016:
	.line	1098
;			res = FR_DISK_ERR;
	.line	1099
	lda	#$1
	sta	<L65+res_1
;		}
	.line	1100
L10019:
;	}
	.line	1101
;	return res;
L10015:
	.line	1102
	lda	<L65+res_1
L71:
	tay
	lda	<L64+2
	sta	<L64+2+4
	lda	<L64+1
	sta	<L64+1+4
	pld
	tsc
	clc
	adc	#L64+4
	tcs
	tya
	rtl
;}
	.line	1103
	.endblock	1103
L64	equ	10
L65	equ	9
	ends
	efunc
	.endfunc	1103,9,10
	.line	1103
;#endif
;
;
;static FRESULT move_window (	/* Returns FR_OK or FR_DISK_ERR */
;	FATFS* fs,		/* Filesystem object */
;	LBA_t sect		/* Sector LBA to make appearance in the fs->win[] */
;)
;{
	.line	1107
	.line	1111
	FFDOS
	func
	.function	1111
~~move_window:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L72
	tcs
	phd
	tcd
fs_0	set	4
sect_0	set	8
	.block	1111
;	FRESULT res = FR_OK;
;
;
;	if (sect != fs->winsect) {	/* Window offset changed? */
res_1	set	0
	.sym	res,0,5,1,16
	.sym	fs,4,138,6,32,80
	.sym	sect,8,18,6,32
	stz	<L73+res_1
	.line	1115
	lda	<L72+sect_0
	ldy	#$2b
	cmp	[<L72+fs_0],Y
	bne	L75
	lda	<L72+sect_0+2
	ldy	#$2d
	cmp	[<L72+fs_0],Y
L75:
	bne	L76
	brl	L10020
L76:
	.line	1115
;#if !FF_FS_READONLY
;		res = sync_window(fs);		/* Flush the window */
	.line	1117
	pei	<L72+fs_0+2
	pei	<L72+fs_0
	jsl	~~sync_window
	sta	<L73+res_1
;#endif
;		if (res == FR_OK) {			/* Fill sector window with new data */
	.line	1119
	lda	<L73+res_1
	beq	L77
	brl	L10021
L77:
	.line	1119
;			if (disk_read(fs->pdrv, fs->win, sect, 1) != RES_OK) {
	.line	1120
	pea	#<$1
	pei	<L72+sect_0+2
	pei	<L72+sect_0
	clc
	lda	#$2f
	adc	<L72+fs_0
	sta	<R0
	lda	#$0
	adc	<L72+fs_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$1
	lda	[<L72+fs_0],Y
	pha
	jsl	~~disk_read
	tax
	bne	L78
	brl	L10022
L78:
	.line	1120
;				sect = (LBA_t)0 - 1;	/* Invalidate window if read data is not valid */
	.line	1121
	lda	#$ffff
	sta	<L72+sect_0
	lda	#$ffff
	sta	<L72+sect_0+2
;				res = FR_DISK_ERR;
	.line	1122
	lda	#$1
	sta	<L73+res_1
;			}
	.line	1123
;			fs->winsect = sect;
L10022:
	.line	1124
	lda	<L72+sect_0
	ldy	#$2b
	sta	[<L72+fs_0],Y
	lda	<L72+sect_0+2
	ldy	#$2d
	sta	[<L72+fs_0],Y
;		}
	.line	1125
;	}
L10021:
	.line	1126
;	return res;
L10020:
	.line	1127
	lda	<L73+res_1
L79:
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
;}
	.line	1128
	.endblock	1128
L72	equ	6
L73	equ	5
	ends
	efunc
	.endfunc	1128,5,6
	.line	1128
;
;
;
;
;#if !FF_FS_READONLY
;/*-----------------------------------------------------------------------*/
;/* Synchronize filesystem and data on the storage                        */
;/*-----------------------------------------------------------------------*/
;
;static FRESULT sync_fs (	/* Returns FR_OK or FR_DISK_ERR */
;	FATFS* fs		/* Filesystem object */
;)
;{
	.line	1138
	.line	1141
	FFDOS
	func
	.function	1141
~~sync_fs:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L80
	tcs
	phd
	tcd
fs_0	set	4
	.block	1141
;	FRESULT res;
;
;
;	res = sync_window(fs);
res_1	set	0
	.sym	res,0,5,1,16
	.sym	fs,4,138,6,32,80
	.line	1145
	pei	<L80+fs_0+2
	pei	<L80+fs_0
	jsl	~~sync_window
	sta	<L81+res_1
;	if (res == FR_OK) {
	.line	1146
	lda	<L81+res_1
	beq	L83
	brl	L10023
L83:
	.line	1146
;		if (fs->fs_type == FS_FAT32 && fs->fsi_flag == 1) {	/* FAT32: Update FSInfo sector if needed */
	.line	1147
	sep	#$20
	longa	off
	lda	[<L80+fs_0]
	cmp	#<$3
	rep	#$20
	longa	on
	beq	L84
	brl	L10024
L84:
	sep	#$20
	longa	off
	ldy	#$4
	lda	[<L80+fs_0],Y
	cmp	#<$1
	rep	#$20
	longa	on
	beq	L85
	brl	L10024
L85:
	.line	1147
;			/* Create FSInfo structure */
;			mem_set(fs->win, 0, sizeof fs->win);
	.line	1149
	pea	#<$200
	pea	#<$0
	clc
	lda	#$2f
	adc	<L80+fs_0
	sta	<R0
	lda	#$0
	adc	<L80+fs_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~mem_set
;			st_word(fs->win + BS_55AA, 0xAA55);
	.line	1150
	pea	#<$aa55
	clc
	lda	#$22d
	adc	<L80+fs_0
	sta	<R0
	lda	#$0
	adc	<L80+fs_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~st_word
;			st_dword(fs->win + FSI_LeadSig, 0x41615252);
	.line	1151
	pea	#^$41615252
	pea	#<$41615252
	clc
	lda	#$2f
	adc	<L80+fs_0
	sta	<R0
	lda	#$0
	adc	<L80+fs_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~st_dword
;			st_dword(fs->win + FSI_StrucSig, 0x61417272);
	.line	1152
	pea	#^$61417272
	pea	#<$61417272
	clc
	lda	#$213
	adc	<L80+fs_0
	sta	<R0
	lda	#$0
	adc	<L80+fs_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~st_dword
;			st_dword(fs->win + FSI_Free_Count, fs->free_clst);
	.line	1153
	ldy	#$11
	lda	[<L80+fs_0],Y
	pha
	ldy	#$f
	lda	[<L80+fs_0],Y
	pha
	clc
	lda	#$217
	adc	<L80+fs_0
	sta	<R0
	lda	#$0
	adc	<L80+fs_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~st_dword
;			st_dword(fs->win + FSI_Nxt_Free, fs->last_clst);
	.line	1154
	ldy	#$d
	lda	[<L80+fs_0],Y
	pha
	ldy	#$b
	lda	[<L80+fs_0],Y
	pha
	clc
	lda	#$21b
	adc	<L80+fs_0
	sta	<R0
	lda	#$0
	adc	<L80+fs_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~st_dword
;			/* Write it into the FSInfo sector */
;			fs->winsect = fs->volbase + 1;
	.line	1156
	clc
	lda	#$1
	ldy	#$1b
	adc	[<L80+fs_0],Y
	sta	<R0
	lda	#$0
	ldy	#$1d
	adc	[<L80+fs_0],Y
	sta	<R0+2
	lda	<R0
	ldy	#$2b
	sta	[<L80+fs_0],Y
	lda	<R0+2
	ldy	#$2d
	sta	[<L80+fs_0],Y
;			disk_write(fs->pdrv, fs->win, fs->winsect, 1);
	.line	1157
	pea	#<$1
	ldy	#$2d
	lda	[<L80+fs_0],Y
	pha
	ldy	#$2b
	lda	[<L80+fs_0],Y
	pha
	clc
	lda	#$2f
	adc	<L80+fs_0
	sta	<R0
	lda	#$0
	adc	<L80+fs_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$1
	lda	[<L80+fs_0],Y
	pha
	jsl	~~disk_write
;			fs->fsi_flag = 0;
	.line	1158
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$4
	sta	[<L80+fs_0],Y
	rep	#$20
	longa	on
;		}
	.line	1159
;		/* Make sure that no pending write process in the lower layer */
;		if (disk_ioctl(fs->pdrv, CTRL_SYNC, 0) != RES_OK) res = FR_DISK_ERR;
L10024:
	.line	1161
	pea	#^$0
	pea	#<$0
	pea	#<$0
	ldy	#$1
	lda	[<L80+fs_0],Y
	pha
	jsl	~~disk_ioctl
	tax
	bne	L86
	brl	L10025
L86:
	.line	1161
	lda	#$1
	sta	<L81+res_1
;	}
L10025:
	.line	1162
;
;	return res;
L10023:
	.line	1164
	lda	<L81+res_1
L87:
	tay
	lda	<L80+2
	sta	<L80+2+4
	lda	<L80+1
	sta	<L80+1+4
	pld
	tsc
	clc
	adc	#L80+4
	tcs
	tya
	rtl
;}
	.line	1165
	.endblock	1165
L80	equ	6
L81	equ	5
	ends
	efunc
	.endfunc	1165,5,6
	.line	1165
;
;#endif
;
;
;
;/*-----------------------------------------------------------------------*/
;/* Get physical sector number from cluster number                        */
;/*-----------------------------------------------------------------------*/
;
;static LBA_t clst2sect (	/* !=0:Sector number, 0:Failed (invalid cluster#) */
;	FATFS* fs,		/* Filesystem object */
;	DWORD clst		/* Cluster# to be converted */
;)
;{
	.line	1175
	.line	1179
	FFDOS
	func
	.function	1179
~~clst2sect:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L88
	tcs
	phd
	tcd
fs_0	set	4
clst_0	set	8
	.block	1179
;	clst -= 2;		/* Cluster number is origin from 2 */
	.sym	fs,4,138,6,32,80
	.sym	clst,8,18,6,32
	.line	1180
	clc
	lda	#$fffe
	adc	<L88+clst_0
	sta	<L88+clst_0
	lda	#$ffff
	adc	<L88+clst_0+2
	sta	<L88+clst_0+2
;	if (clst >= fs->n_fatent - 2) return 0;		/* Is it invalid cluster number? */
	.line	1181
	clc
	lda	#$fffe
	ldy	#$13
	adc	[<L88+fs_0],Y
	sta	<R0
	lda	#$ffff
	ldy	#$15
	adc	[<L88+fs_0],Y
	sta	<R0+2
	lda	<L88+clst_0
	cmp	<R0
	lda	<L88+clst_0+2
	sbc	<R0+2
	bcs	L91
	brl	L10026
L91:
	.line	1181
	lda	#$0
	tax
	lda	#$0
L92:
	tay
	lda	<L88+2
	sta	<L88+2+8
	lda	<L88+1
	sta	<L88+1+8
	pld
	tsc
	clc
	adc	#L88+8
	tcs
	tya
	rtl
;	return fs->database + (LBA_t)fs->csize * clst;	/* Start sector number of the cluster */
L10026:
	.line	1182
	ldy	#$0
	phy
	ldy	#$9
	lda	[<L88+fs_0],Y
	ply
	rol	A
	ror	A
	bpl	L93
	dey
L93:
	sta	<R0
	sty	<R0+2
	pei	<L88+clst_0+2
	pei	<L88+clst_0
	pei	<R0+2
	pei	<R0
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R0
	stx	<R0+2
	clc
	lda	<R0
	ldy	#$27
	adc	[<L88+fs_0],Y
	sta	<R1
	lda	<R0+2
	ldy	#$29
	adc	[<L88+fs_0],Y
	sta	<R1+2
	ldx	<R1+2
	lda	<R1
	brl	L92
;}
	.line	1183
	.endblock	1183
L88	equ	8
L89	equ	9
	ends
	efunc
	.endfunc	1183,9,8
	.line	1183
;
;
;
;
;/*-----------------------------------------------------------------------*/
;/* FAT access - Read value of a FAT entry                                */
;/*-----------------------------------------------------------------------*/
;
;static DWORD get_fat (		/* 0xFFFFFFFF:Disk error, 1:Internal error, 2..0x7FFFFFFF:Cluster status */
;	FFOBJID* obj,	/* Corresponding object */
;	DWORD clst		/* Cluster number to get the value */
;)
;{
	.line	1192
	.line	1196
	FFDOS
	func
	.function	1196
~~get_fat:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L94
	tcs
	phd
	tcd
obj_0	set	4
clst_0	set	8
	.block	1196
;	UINT wc, bc;
;	DWORD val;
;	FATFS *fs = obj->fs;
;
;
;	if (clst < 2 || clst >= fs->n_fatent) {	/* Check if in valid range */
wc_1	set	0
bc_1	set	2
val_1	set	4
fs_1	set	8
	.sym	wc,0,16,1,16
	.sym	bc,2,16,1,16
	.sym	val,4,18,1,32
	.sym	fs,8,138,1,32,80
	.sym	obj,4,138,6,32,81
	.sym	clst,8,18,6,32
	lda	[<L94+obj_0]
	sta	<L95+fs_1
	ldy	#$2
	lda	[<L94+obj_0],Y
	sta	<L95+fs_1+2
	.line	1202
	lda	<L94+clst_0
	cmp	#<$2
	lda	<L94+clst_0+2
	sbc	#^$2
	bcs	L98
	brl	L97
L98:
	lda	<L94+clst_0
	ldy	#$13
	cmp	[<L95+fs_1],Y
	lda	<L94+clst_0+2
	ldy	#$15
	sbc	[<L95+fs_1],Y
	bcs	L99
	brl	L10027
L99:
L97:
	.line	1202
;		val = 1;	/* Internal error */
	.line	1203
	lda	#$1
	sta	<L95+val_1
	lda	#$0
	sta	<L95+val_1+2
;
;	} else {
	.line	1205
	brl	L10028
L10027:
	.line	1205
;		val = 0xFFFFFFFF;	/* Default value falls on disk error */
	.line	1206
	lda	#$ffff
	sta	<L95+val_1
	lda	#$ffff
	sta	<L95+val_1+2
;
;		switch (fs->fs_type) {
	.line	1208
	lda	[<L95+fs_1]
	and	#$ff
	brl	L10029
	.line	1208
;		case FS_FAT12 :
	.line	1209
L10031:
;			bc = (UINT)clst; bc += bc / 2;
	.line	1210
	lda	<L94+clst_0
	sta	<L95+bc_1
	.line	1210
	lda	<L95+bc_1
	lsr	A
	sta	<R0
	clc
	lda	<R0
	adc	<L95+bc_1
	sta	<L95+bc_1
;			if (move_window(fs, fs->fatbase + (bc / SS(fs))) != FR_OK) break;
	.line	1211
	lda	<L95+bc_1
	ldx	#<$9
	xref	~~~lsr
	jsl	~~~lsr
	sta	<R0
	lda	<R0
	sta	<R0
	stz	<R0+2
	clc
	lda	<R0
	ldy	#$1f
	adc	[<L95+fs_1],Y
	sta	<R1
	lda	<R0+2
	ldy	#$21
	adc	[<L95+fs_1],Y
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	pei	<L95+fs_1+2
	pei	<L95+fs_1
	jsl	~~move_window
	tax
	beq	L100
	brl	L10030
L100:
;			wc = fs->win[bc++ % SS(fs)];		/* Get 1st byte of the entry */
	.line	1212
	lda	<L95+bc_1
	and	#<$1ff
	sta	<R0
	clc
	lda	#$2f
	adc	<R0
	sta	<R1
	ldy	<R1
	lda	[<L95+fs_1],Y
	and	#$ff
	sta	<L95+wc_1
	inc	<L95+bc_1
;			if (move_window(fs, fs->fatbase + (bc / SS(fs))) != FR_OK) break;
	.line	1213
	lda	<L95+bc_1
	ldx	#<$9
	xref	~~~lsr
	jsl	~~~lsr
	sta	<R0
	lda	<R0
	sta	<R0
	stz	<R0+2
	clc
	lda	<R0
	ldy	#$1f
	adc	[<L95+fs_1],Y
	sta	<R1
	lda	<R0+2
	ldy	#$21
	adc	[<L95+fs_1],Y
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	pei	<L95+fs_1+2
	pei	<L95+fs_1
	jsl	~~move_window
	tax
	beq	L101
	brl	L10030
L101:
;			wc |= fs->win[bc % SS(fs)] << 8;	/* Merge 2nd byte of the entry */
	.line	1214
	lda	<L95+bc_1
	and	#<$1ff
	sta	<R1
	clc
	lda	#$2f
	adc	<R1
	sta	<R2
	ldy	<R2
	lda	[<L95+fs_1],Y
	and	#$ff
	sta	<R1
	lda	<R1
	xba
	and	#$ff00
	sta	<R0
	lda	<R0
	tsb	<L95+wc_1
;			val = (clst & 1) ? (wc >> 4) : (wc & 0xFFF);	/* Adjust bit position */
	.line	1215
	lda	<L94+clst_0
	and	#<$1
	bne	L103
	brl	L102
L103:
	lda	<L95+wc_1
	lsr	A
	lsr	A
	lsr	A
	lsr	A
	sta	<R0
	lda	<R0
	bra	L104
L102:
	lda	<L95+wc_1
	and	#<$fff
	sta	<R0
	lda	<R0
L104:
	sta	<R0
	lda	<R0
	sta	<L95+val_1
	stz	<L95+val_1+2
;			break;
	.line	1216
	brl	L10030
;
;		case FS_FAT16 :
	.line	1218
L10032:
;			if (move_window(fs, fs->fatbase + (clst / (SS(fs) / 2))) != FR_OK) break;
	.line	1219
	pei	<L94+clst_0+2
	pei	<L94+clst_0
	lda	#$8
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R0
	stx	<R0+2
	clc
	lda	<R0
	ldy	#$1f
	adc	[<L95+fs_1],Y
	sta	<R1
	lda	<R0+2
	ldy	#$21
	adc	[<L95+fs_1],Y
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	pei	<L95+fs_1+2
	pei	<L95+fs_1
	jsl	~~move_window
	tax
	beq	L105
	brl	L10030
L105:
;			val = ld_word(fs->win + clst * 2 % SS(fs));		/* Simple WORD array */
	.line	1220
	lda	<L94+clst_0
	sta	<R0
	lda	<L94+clst_0+2
	sta	<R0+2
	asl	<R0
	rol	<R0+2
	lda	<R0
	and	#<$1ff
	sta	<R1
	stz	<R1+2
	clc
	lda	#$2f
	adc	<R1
	sta	<R0
	lda	#$0
	adc	<R1+2
	sta	<R0+2
	clc
	lda	<L95+fs_1
	adc	<R0
	sta	<R1
	lda	<L95+fs_1+2
	adc	<R0+2
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~ld_word
	sta	<R2
	ldy	#$0
	lda	<R2
	bpl	L106
	dey
L106:
	sta	<L95+val_1
	sty	<L95+val_1+2
;			break;
	.line	1221
	brl	L10030
;
;		case FS_FAT32 :
	.line	1223
L10033:
;			if (move_window(fs, fs->fatbase + (clst / (SS(fs) / 4))) != FR_OK) break;
	.line	1224
	pei	<L94+clst_0+2
	pei	<L94+clst_0
	lda	#$7
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R0
	stx	<R0+2
	clc
	lda	<R0
	ldy	#$1f
	adc	[<L95+fs_1],Y
	sta	<R1
	lda	<R0+2
	ldy	#$21
	adc	[<L95+fs_1],Y
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	pei	<L95+fs_1+2
	pei	<L95+fs_1
	jsl	~~move_window
	tax
	beq	L107
	brl	L10030
L107:
;			val = ld_dword(fs->win + clst * 4 % SS(fs)) & 0x0FFFFFFF;	/* Simple DWORD array but mask out upper 4 bits */
	.line	1225
	lda	<L94+clst_0
	sta	<R0
	lda	<L94+clst_0+2
	sta	<R0+2
	asl	<R0
	rol	<R0+2
	asl	<R0
	rol	<R0+2
	lda	<R0
	and	#<$1ff
	sta	<R1
	stz	<R1+2
	clc
	lda	#$2f
	adc	<R1
	sta	<R0
	lda	#$0
	adc	<R1+2
	sta	<R0+2
	clc
	lda	<L95+fs_1
	adc	<R0
	sta	<R1
	lda	<L95+fs_1+2
	adc	<R0+2
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~ld_dword
	sta	<R2
	stx	<R2+2
	lda	<R2
	sta	<L95+val_1
	lda	<R2+2
	and	#^$fffffff
	sta	<L95+val_1+2
;			break;
	.line	1226
	brl	L10030
;#if FF_FS_EXFAT
;		case FS_EXFAT :
;			if ((obj->objsize != 0 && obj->sclust != 0) || obj->stat == 0) {	/* Object except root dir must have valid data length */
;				DWORD cofs = clst - obj->sclust;	/* Offset from start cluster */
;				DWORD clen = (DWORD)((LBA_t)((obj->objsize - 1) / SS(fs)) / fs->csize);	/* Number of clusters - 1 */
;
;				if (obj->stat == 2 && cofs <= clen) {	/* Is it a contiguous chain? */
;					val = (cofs == clen) ? 0x7FFFFFFF : clst + 1;	/* No data on the FAT, generate the value */
;					break;
;				}
;				if (obj->stat == 3 && cofs < obj->n_cont) {	/* Is it in the 1st fragment? */
;					val = clst + 1; 	/* Generate the value */
;					break;
;				}
;				if (obj->stat != 2) {	/* Get value from FAT if FAT chain is valid */
;					if (obj->n_frag != 0) {	/* Is it on the growing edge? */
;						val = 0x7FFFFFFF;	/* Generate EOC */
;					} else {
;						if (move_window(fs, fs->fatbase + (clst / (SS(fs) / 4))) != FR_OK) break;
;						val = ld_dword(fs->win + clst * 4 % SS(fs)) & 0x7FFFFFFF;
;					}
;					break;
;				}
;			}
;			/* go to default */
;#endif
;		default:
	.line	1253
L10034:
;			val = 1;	/* Internal error */
	.line	1254
	lda	#$1
	sta	<L95+val_1
	lda	#$0
	sta	<L95+val_1+2
;		}
	.line	1255
	brl	L10030
L10029:
	xref	~~~swt
	jsl	~~~swt
	dw	3
	dw	1
	dw	L10031-1
	dw	2
	dw	L10032-1
	dw	3
	dw	L10033-1
	dw	L10034-1
L10030:
;	}
	.line	1256
L10028:
;
;	return val;
	.line	1258
	ldx	<L95+val_1+2
	lda	<L95+val_1
L108:
	tay
	lda	<L94+2
	sta	<L94+2+8
	lda	<L94+1
	sta	<L94+1+8
	pld
	tsc
	clc
	adc	#L94+8
	tcs
	tya
	rtl
;}
	.line	1259
	.endblock	1259
L94	equ	24
L95	equ	13
	ends
	efunc
	.endfunc	1259,13,24
	.line	1259
;
;
;
;
;#if !FF_FS_READONLY
;/*-----------------------------------------------------------------------*/
;/* FAT access - Change value of a FAT entry                              */
;/*-----------------------------------------------------------------------*/
;
;static FRESULT put_fat (	/* FR_OK(0):succeeded, !=0:error */
;	FATFS* fs,		/* Corresponding filesystem object */
;	DWORD clst,		/* FAT index number (cluster number) to be changed */
;	DWORD val		/* New value to be set to the entry */
;)
;{
	.line	1269
	.line	1274
	FFDOS
	func
	.function	1274
~~put_fat:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L109
	tcs
	phd
	tcd
fs_0	set	4
clst_0	set	8
val_0	set	12
	.block	1274
;	UINT bc;
;	BYTE *p;
;	FRESULT res = FR_INT_ERR;
;
;
;	if (clst >= 2 && clst < fs->n_fatent) {	/* Check if in valid range */
bc_1	set	0
p_1	set	2
res_1	set	6
	.sym	bc,0,16,1,16
	.sym	p,2,142,1,32
	.sym	res,6,5,1,16
	.sym	fs,4,138,6,32,80
	.sym	clst,8,18,6,32
	.sym	val,12,18,6,32
	lda	#$2
	sta	<L110+res_1
	.line	1280
	lda	<L109+clst_0
	cmp	#<$2
	lda	<L109+clst_0+2
	sbc	#^$2
	bcs	L112
	brl	L10035
L112:
	lda	<L109+clst_0
	ldy	#$13
	cmp	[<L109+fs_0],Y
	lda	<L109+clst_0+2
	ldy	#$15
	sbc	[<L109+fs_0],Y
	bcc	L113
	brl	L10035
L113:
	.line	1280
;		switch (fs->fs_type) {
	.line	1281
	lda	[<L109+fs_0]
	and	#$ff
	brl	L10036
	.line	1281
;		case FS_FAT12 :
	.line	1282
L10038:
;			bc = (UINT)clst; bc += bc / 2;	/* bc: byte offset of the entry */
	.line	1283
	lda	<L109+clst_0
	sta	<L110+bc_1
	.line	1283
	lda	<L110+bc_1
	lsr	A
	sta	<R0
	clc
	lda	<R0
	adc	<L110+bc_1
	sta	<L110+bc_1
;			res = move_window(fs, fs->fatbase + (bc / SS(fs)));
	.line	1284
	lda	<L110+bc_1
	ldx	#<$9
	xref	~~~lsr
	jsl	~~~lsr
	sta	<R0
	lda	<R0
	sta	<R0
	stz	<R0+2
	clc
	lda	<R0
	ldy	#$1f
	adc	[<L109+fs_0],Y
	sta	<R1
	lda	<R0+2
	ldy	#$21
	adc	[<L109+fs_0],Y
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	pei	<L109+fs_0+2
	pei	<L109+fs_0
	jsl	~~move_window
	sta	<L110+res_1
;			if (res != FR_OK) break;
	.line	1285
	lda	<L110+res_1
	beq	L114
	brl	L10037
L114:
;			p = fs->win + bc++ % SS(fs);
	.line	1286
	lda	<L110+bc_1
	and	#<$1ff
	sta	<R0
	lda	<R0
	sta	<R0
	stz	<R0+2
	clc
	lda	#$2f
	adc	<R0
	sta	<R1
	lda	#$0
	adc	<R0+2
	sta	<R1+2
	clc
	lda	<L109+fs_0
	adc	<R1
	sta	<L110+p_1
	lda	<L109+fs_0+2
	adc	<R1+2
	sta	<L110+p_1+2
	inc	<L110+bc_1
;			*p = (clst & 1) ? ((*p & 0x0F) | ((BYTE)val << 4)) : (BYTE)val;		/* Update 1st byte */
	.line	1287
	lda	<L109+clst_0
	and	#<$1
	bne	L116
	brl	L115
L116:
	lda	[<L110+p_1]
	and	#<$f
	sta	<R0
	lda	<L109+val_0
	and	#$ff
	sta	<R2
	lda	<R2
	asl	A
	asl	A
	asl	A
	asl	A
	sta	<R1
	lda	<R1
	ora	<R0
	bra	L117
L115:
	lda	<L109+val_0
	and	#$ff
L117:
	sep	#$20
	longa	off
	sta	[<L110+p_1]
	rep	#$20
	longa	on
;			fs->wflag = 1;
	.line	1288
	sep	#$20
	longa	off
	lda	#$1
	ldy	#$3
	sta	[<L109+fs_0],Y
	rep	#$20
	longa	on
;			res = move_window(fs, fs->fatbase + (bc / SS(fs)));
	.line	1289
	lda	<L110+bc_1
	ldx	#<$9
	xref	~~~lsr
	jsl	~~~lsr
	sta	<R0
	lda	<R0
	sta	<R0
	stz	<R0+2
	clc
	lda	<R0
	ldy	#$1f
	adc	[<L109+fs_0],Y
	sta	<R1
	lda	<R0+2
	ldy	#$21
	adc	[<L109+fs_0],Y
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	pei	<L109+fs_0+2
	pei	<L109+fs_0
	jsl	~~move_window
	sta	<L110+res_1
;			if (res != FR_OK) break;
	.line	1290
	lda	<L110+res_1
	beq	L118
	brl	L10037
L118:
;			p = fs->win + bc % SS(fs);
	.line	1291
	lda	<L110+bc_1
	and	#<$1ff
	sta	<R0
	lda	<R0
	sta	<R0
	stz	<R0+2
	clc
	lda	#$2f
	adc	<R0
	sta	<R1
	lda	#$0
	adc	<R0+2
	sta	<R1+2
	clc
	lda	<L109+fs_0
	adc	<R1
	sta	<L110+p_1
	lda	<L109+fs_0+2
	adc	<R1+2
	sta	<L110+p_1+2
;			*p = (clst & 1) ? (BYTE)(val >> 4) : ((*p & 0xF0) | ((BYTE)(val >> 8) & 0x0F));	/* Update 2nd byte */
	.line	1292
	lda	<L109+clst_0
	and	#<$1
	bne	L120
	brl	L119
L120:
	lda	<L109+val_0
	sta	<R0
	lda	<L109+val_0+2
	sta	<R0+2
	lsr	<R0+2
	ror	<R0
	lsr	<R0+2
	ror	<R0
	lsr	<R0+2
	ror	<R0
	lsr	<R0+2
	ror	<R0
	lda	<R0
	and	#$ff
	bra	L121
L119:
	pei	<L109+val_0+2
	pei	<L109+val_0
	lda	#$8
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R0
	stx	<R0+2
	lda	<R0
	and	#<$f
	sta	<R1
	lda	[<L110+p_1]
	and	#<$f0
	sta	<R0
	lda	<R0
	ora	<R1
L121:
	sep	#$20
	longa	off
	sta	[<L110+p_1]
	rep	#$20
	longa	on
;			fs->wflag = 1;
	.line	1293
	sep	#$20
	longa	off
	lda	#$1
	ldy	#$3
	sta	[<L109+fs_0],Y
	rep	#$20
	longa	on
;			break;
	.line	1294
	brl	L10037
;
;		case FS_FAT16 :
	.line	1296
L10039:
;			res = move_window(fs, fs->fatbase + (clst / (SS(fs) / 2)));
	.line	1297
	pei	<L109+clst_0+2
	pei	<L109+clst_0
	lda	#$8
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R0
	stx	<R0+2
	clc
	lda	<R0
	ldy	#$1f
	adc	[<L109+fs_0],Y
	sta	<R1
	lda	<R0+2
	ldy	#$21
	adc	[<L109+fs_0],Y
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	pei	<L109+fs_0+2
	pei	<L109+fs_0
	jsl	~~move_window
	sta	<L110+res_1
;			if (res != FR_OK) break;
	.line	1298
	lda	<L110+res_1
	beq	L122
	brl	L10037
L122:
;			st_word(fs->win + clst * 2 % SS(fs), (WORD)val);	/* Simple WORD array */
	.line	1299
	pei	<L109+val_0
	lda	<L109+clst_0
	sta	<R0
	lda	<L109+clst_0+2
	sta	<R0+2
	asl	<R0
	rol	<R0+2
	lda	<R0
	and	#<$1ff
	sta	<R1
	stz	<R1+2
	clc
	lda	#$2f
	adc	<R1
	sta	<R0
	lda	#$0
	adc	<R1+2
	sta	<R0+2
	clc
	lda	<L109+fs_0
	adc	<R0
	sta	<R1
	lda	<L109+fs_0+2
	adc	<R0+2
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~st_word
;			fs->wflag = 1;
	.line	1300
	sep	#$20
	longa	off
	lda	#$1
	ldy	#$3
	sta	[<L109+fs_0],Y
	rep	#$20
	longa	on
;			break;
	.line	1301
	brl	L10037
;
;		case FS_FAT32 :
	.line	1303
L10040:
;#if FF_FS_EXFAT
;		case FS_EXFAT :
;#endif
;			res = move_window(fs, fs->fatbase + (clst / (SS(fs) / 4)));
	.line	1307
	pei	<L109+clst_0+2
	pei	<L109+clst_0
	lda	#$7
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R0
	stx	<R0+2
	clc
	lda	<R0
	ldy	#$1f
	adc	[<L109+fs_0],Y
	sta	<R1
	lda	<R0+2
	ldy	#$21
	adc	[<L109+fs_0],Y
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	pei	<L109+fs_0+2
	pei	<L109+fs_0
	jsl	~~move_window
	sta	<L110+res_1
;			if (res != FR_OK) break;
	.line	1308
	lda	<L110+res_1
	beq	L123
	brl	L10037
L123:
;			if (!FF_FS_EXFAT || fs->fs_type != FS_EXFAT) {
	.line	1309
	brl	L124
	sep	#$20
	longa	off
	lda	[<L109+fs_0]
	cmp	#<$4
	rep	#$20
	longa	on
	bne	L125
	brl	L10041
L125:
L124:
	.line	1309
;				val = (val & 0x0FFFFFFF) | (ld_dword(fs->win + clst * 4 % SS(fs)) & 0xF0000000);
	.line	1310
	lda	<L109+clst_0
	sta	<R0
	lda	<L109+clst_0+2
	sta	<R0+2
	asl	<R0
	rol	<R0+2
	asl	<R0
	rol	<R0+2
	lda	<R0
	and	#<$1ff
	sta	<R1
	stz	<R1+2
	clc
	lda	#$2f
	adc	<R1
	sta	<R0
	lda	#$0
	adc	<R1+2
	sta	<R0+2
	clc
	lda	<L109+fs_0
	adc	<R0
	sta	<R1
	lda	<L109+fs_0+2
	adc	<R0+2
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~ld_dword
	sta	<R2
	stx	<R2+2
	stz	<R3
	lda	<R2+2
	and	#^$f0000000
	sta	<R3+2
	lda	<L109+val_0
	sta	<R2
	lda	<L109+val_0+2
	and	#^$fffffff
	sta	<R2+2
	lda	<R2
	ora	<R3
	sta	<L109+val_0
	lda	<R2+2
	ora	<R3+2
	sta	<L109+val_0+2
;			}
	.line	1311
;			st_dword(fs->win + clst * 4 % SS(fs), val);
L10041:
	.line	1312
	pei	<L109+val_0+2
	pei	<L109+val_0
	lda	<L109+clst_0
	sta	<R0
	lda	<L109+clst_0+2
	sta	<R0+2
	asl	<R0
	rol	<R0+2
	asl	<R0
	rol	<R0+2
	lda	<R0
	and	#<$1ff
	sta	<R1
	stz	<R1+2
	clc
	lda	#$2f
	adc	<R1
	sta	<R0
	lda	#$0
	adc	<R1+2
	sta	<R0+2
	clc
	lda	<L109+fs_0
	adc	<R0
	sta	<R1
	lda	<L109+fs_0+2
	adc	<R0+2
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~st_dword
;			fs->wflag = 1;
	.line	1313
	sep	#$20
	longa	off
	lda	#$1
	ldy	#$3
	sta	[<L109+fs_0],Y
	rep	#$20
	longa	on
;			break;
	.line	1314
	brl	L10037
;		}
	.line	1315
L10036:
	xref	~~~swt
	jsl	~~~swt
	dw	3
	dw	1
	dw	L10038-1
	dw	2
	dw	L10039-1
	dw	3
	dw	L10040-1
	dw	L10037-1
L10037:
;	}
	.line	1316
;	return res;
L10035:
	.line	1317
	lda	<L110+res_1
L126:
	tay
	lda	<L109+2
	sta	<L109+2+12
	lda	<L109+1
	sta	<L109+1+12
	pld
	tsc
	clc
	adc	#L109+12
	tcs
	tya
	rtl
;}
	.line	1318
	.endblock	1318
L109	equ	24
L110	equ	17
	ends
	efunc
	.endfunc	1318,17,24
	.line	1318
;
;#endif /* !FF_FS_READONLY */
;
;
;
;
;#if FF_FS_EXFAT && !FF_FS_READONLY
;/*-----------------------------------------------------------------------*/
;/* exFAT: Accessing FAT and Allocation Bitmap                            */
;/*-----------------------------------------------------------------------*/
;
;/*--------------------------------------*/
;/* Find a contiguous free cluster block */
;/*--------------------------------------*/
;
;static DWORD find_bitmap (	/* 0:Not found, 2..:Cluster block found, 0xFFFFFFFF:Disk error */
;	FATFS* fs,	/* Filesystem object */
;	DWORD clst,	/* Cluster number to scan from */
;	DWORD ncl	/* Number of contiguous clusters to find (1..) */
;)
;{
;	BYTE bm, bv;
;	UINT i;
;	DWORD val, scl, ctr;
;
;
;	clst -= 2;	/* The first bit in the bitmap corresponds to cluster #2 */
;	if (clst >= fs->n_fatent - 2) clst = 0;
;	scl = val = clst; ctr = 0;
;	for (;;) {
;		if (move_window(fs, fs->bitbase + val / 8 / SS(fs)) != FR_OK) return 0xFFFFFFFF;
;		i = val / 8 % SS(fs); bm = 1 << (val % 8);
;		do {
;			do {
;				bv = fs->win[i] & bm; bm <<= 1;		/* Get bit value */
;				if (++val >= fs->n_fatent - 2) {	/* Next cluster (with wrap-around) */
;					val = 0; bm = 0; i = SS(fs);
;				}
;				if (bv == 0) {	/* Is it a free cluster? */
;					if (++ctr == ncl) return scl + 2;	/* Check if run length is sufficient for required */
;				} else {
;					scl = val; ctr = 0;		/* Encountered a cluster in-use, restart to scan */
;				}
;				if (val == clst) return 0;	/* All cluster scanned? */
;			} while (bm != 0);
;			bm = 1;
;		} while (++i < SS(fs));
;	}
;}
;
;
;/*----------------------------------------*/
;/* Set/Clear a block of allocation bitmap */
;/*----------------------------------------*/
;
;static FRESULT change_bitmap (
;	FATFS* fs,	/* Filesystem object */
;	DWORD clst,	/* Cluster number to change from */
;	DWORD ncl,	/* Number of clusters to be changed */
;	int bv		/* bit value to be set (0 or 1) */
;)
;{
;	BYTE bm;
;	UINT i;
;	LBA_t sect;
;
;
;	clst -= 2;	/* The first bit corresponds to cluster #2 */
;	sect = fs->bitbase + clst / 8 / SS(fs);	/* Sector address */
;	i = clst / 8 % SS(fs);					/* Byte offset in the sector */
;	bm = 1 << (clst % 8);					/* Bit mask in the byte */
;	for (;;) {
;		if (move_window(fs, sect++) != FR_OK) return FR_DISK_ERR;
;		do {
;			do {
;				if (bv == (int)((fs->win[i] & bm) != 0)) return FR_INT_ERR;	/* Is the bit expected value? */
;				fs->win[i] ^= bm;	/* Flip the bit */
;				fs->wflag = 1;
;				if (--ncl == 0) return FR_OK;	/* All bits processed? */
;			} while (bm <<= 1);		/* Next bit */
;			bm = 1;
;		} while (++i < SS(fs));		/* Next byte */
;		i = 0;
;	}
;}
;
;
;/*---------------------------------------------*/
;/* Fill the first fragment of the FAT chain    */
;/*---------------------------------------------*/
;
;static FRESULT fill_first_frag (
;	FFOBJID* obj	/* Pointer to the corresponding object */
;)
;{
;	FRESULT res;
;	DWORD cl, n;
;
;
;	if (obj->stat == 3) {	/* Has the object been changed 'fragmented' in this session? */
;		for (cl = obj->sclust, n = obj->n_cont; n; cl++, n--) {	/* Create cluster chain on the FAT */
;			res = put_fat(obj->fs, cl, cl + 1);
;			if (res != FR_OK) return res;
;		}
;		obj->stat = 0;	/* Change status 'FAT chain is valid' */
;	}
;	return FR_OK;
;}
;
;
;/*---------------------------------------------*/
;/* Fill the last fragment of the FAT chain     */
;/*---------------------------------------------*/
;
;static FRESULT fill_last_frag (
;	FFOBJID* obj,	/* Pointer to the corresponding object */
;	DWORD lcl,		/* Last cluster of the fragment */
;	DWORD term		/* Value to set the last FAT entry */
;)
;{
;	FRESULT res;
;
;
;	while (obj->n_frag > 0) {	/* Create the chain of last fragment */
;		res = put_fat(obj->fs, lcl - obj->n_frag + 1, (obj->n_frag > 1) ? lcl - obj->n_frag + 2 : term);
;		if (res != FR_OK) return res;
;		obj->n_frag--;
;	}
;	return FR_OK;
;}
;
;#endif	/* FF_FS_EXFAT && !FF_FS_READONLY */
;
;
;
;#if !FF_FS_READONLY
;/*-----------------------------------------------------------------------*/
;/* FAT handling - Remove a cluster chain                                 */
;/*-----------------------------------------------------------------------*/
;
;static FRESULT remove_chain (	/* FR_OK(0):succeeded, !=0:error */
;	FFOBJID* obj,		/* Corresponding object */
;	DWORD clst,			/* Cluster to remove a chain from */
;	DWORD pclst			/* Previous cluster of clst (0 if entire chain) */
;)
;{
	.line	1459
	.line	1464
	FFDOS
	func
	.function	1464
~~remove_chain:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L127
	tcs
	phd
	tcd
obj_0	set	4
clst_0	set	8
pclst_0	set	12
	.block	1464
;	FRESULT res = FR_OK;
;	DWORD nxt;
;	FATFS *fs = obj->fs;
;#if FF_FS_EXFAT || FF_USE_TRIM
;	DWORD scl = clst, ecl = clst;
;#endif
;#if FF_USE_TRIM
;	LBA_t rt[2];
;#endif
;
;	if (clst < 2 || clst >= fs->n_fatent) return FR_INT_ERR;	/* Check if in valid range */
res_1	set	0
nxt_1	set	2
fs_1	set	6
	.sym	res,0,5,1,16
	.sym	nxt,2,18,1,32
	.sym	fs,6,138,1,32,80
	.sym	obj,4,138,6,32,81
	.sym	clst,8,18,6,32
	.sym	pclst,12,18,6,32
	stz	<L128+res_1
	lda	[<L127+obj_0]
	sta	<L128+fs_1
	ldy	#$2
	lda	[<L127+obj_0],Y
	sta	<L128+fs_1+2
	.line	1475
	lda	<L127+clst_0
	cmp	#<$2
	lda	<L127+clst_0+2
	sbc	#^$2
	bcs	L131
	brl	L130
L131:
	lda	<L127+clst_0
	ldy	#$13
	cmp	[<L128+fs_1],Y
	lda	<L127+clst_0+2
	ldy	#$15
	sbc	[<L128+fs_1],Y
	bcs	L132
	brl	L10042
L132:
L130:
	.line	1475
	lda	#$2
L133:
	tay
	lda	<L127+2
	sta	<L127+2+12
	lda	<L127+1
	sta	<L127+1+12
	pld
	tsc
	clc
	adc	#L127+12
	tcs
	tya
	rtl
;
;	/* Mark the previous cluster 'EOC' on the FAT if it exists */
;	if (pclst != 0 && (!FF_FS_EXFAT || fs->fs_type != FS_EXFAT || obj->stat != 2)) {
L10042:
	.line	1478
	lda	<L127+pclst_0
	ora	<L127+pclst_0+2
	bne	L134
	brl	L10043
L134:
	brl	L135
	sep	#$20
	longa	off
	lda	[<L128+fs_1]
	cmp	#<$4
	rep	#$20
	longa	on
	beq	L136
	brl	L135
L136:
	sep	#$20
	longa	off
	ldy	#$7
	lda	[<L127+obj_0],Y
	cmp	#<$2
	rep	#$20
	longa	on
	bne	L137
	brl	L10043
L137:
L135:
	.line	1478
;		res = put_fat(fs, pclst, 0xFFFFFFFF);
	.line	1479
	pea	#^$ffffffff
	pea	#<$ffffffff
	pei	<L127+pclst_0+2
	pei	<L127+pclst_0
	pei	<L128+fs_1+2
	pei	<L128+fs_1
	jsl	~~put_fat
	sta	<L128+res_1
;		if (res != FR_OK) return res;
	.line	1480
	lda	<L128+res_1
	bne	L138
	brl	L10044
L138:
	.line	1480
	lda	<L128+res_1
	brl	L133
;	}
L10044:
	.line	1481
;
;	/* Remove the chain */
;	do {
L10043:
	.line	1484
L10047:
	.line	1484
;		nxt = get_fat(obj, clst);			/* Get cluster status */
	.line	1485
	pei	<L127+clst_0+2
	pei	<L127+clst_0
	pei	<L127+obj_0+2
	pei	<L127+obj_0
	jsl	~~get_fat
	sta	<L128+nxt_1
	stx	<L128+nxt_1+2
;		if (nxt == 0) break;				/* Empty cluster? */
	.line	1486
	lda	<L128+nxt_1
	ora	<L128+nxt_1+2
	bne	L139
	brl	L10046
L139:
;		if (nxt == 1) return FR_INT_ERR;	/* Internal error? */
	.line	1487
	lda	<L128+nxt_1
	cmp	#<$1
	bne	L140
	lda	<L128+nxt_1+2
	cmp	#^$1
L140:
	beq	L141
	brl	L10048
L141:
	.line	1487
	lda	#$2
	brl	L133
;		if (nxt == 0xFFFFFFFF) return FR_DISK_ERR;	/* Disk error? */
L10048:
	.line	1488
	lda	<L128+nxt_1
	cmp	#<$ffffffff
	bne	L142
	lda	<L128+nxt_1+2
	cmp	#^$ffffffff
L142:
	beq	L143
	brl	L10049
L143:
	.line	1488
	lda	#$1
	brl	L133
;		if (!FF_FS_EXFAT || fs->fs_type != FS_EXFAT) {
L10049:
	.line	1489
	brl	L144
	sep	#$20
	longa	off
	lda	[<L128+fs_1]
	cmp	#<$4
	rep	#$20
	longa	on
	bne	L145
	brl	L10050
L145:
L144:
	.line	1489
;			res = put_fat(fs, clst, 0);		/* Mark the cluster 'free' on the FAT */
	.line	1490
	pea	#^$0
	pea	#<$0
	pei	<L127+clst_0+2
	pei	<L127+clst_0
	pei	<L128+fs_1+2
	pei	<L128+fs_1
	jsl	~~put_fat
	sta	<L128+res_1
;			if (res != FR_OK) return res;
	.line	1491
	lda	<L128+res_1
	bne	L146
	brl	L10051
L146:
	.line	1491
	lda	<L128+res_1
	brl	L133
;		}
L10051:
	.line	1492
;		if (fs->free_clst < fs->n_fatent - 2) {	/* Update FSINFO */
L10050:
	.line	1493
	clc
	lda	#$fffe
	ldy	#$13
	adc	[<L128+fs_1],Y
	sta	<R0
	lda	#$ffff
	ldy	#$15
	adc	[<L128+fs_1],Y
	sta	<R0+2
	ldy	#$f
	lda	[<L128+fs_1],Y
	cmp	<R0
	ldy	#$11
	lda	[<L128+fs_1],Y
	sbc	<R0+2
	bcc	L147
	brl	L10052
L147:
	.line	1493
;			fs->free_clst++;
	.line	1494
	clc
	lda	#$1
	ldy	#$f
	adc	[<L128+fs_1],Y
	ldy	#$f
	sta	[<L128+fs_1],Y
	lda	#$0
	ldy	#$11
	adc	[<L128+fs_1],Y
	ldy	#$11
	sta	[<L128+fs_1],Y
;			fs->fsi_flag |= 1;
	.line	1495
	clc
	lda	#$4
	adc	<L128+fs_1
	sta	<R0
	lda	#$0
	adc	<L128+fs_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	[<R0]
	ora	#<$1
	sta	[<R0]
	rep	#$20
	longa	on
;		}
	.line	1496
;#if FF_FS_EXFAT || FF_USE_TRIM
;		if (ecl + 1 == nxt) {	/* Is next cluster contiguous? */
;			ecl = nxt;
;		} else {				/* End of contiguous cluster block */
;#if FF_FS_EXFAT
;			if (fs->fs_type == FS_EXFAT) {
;				res = change_bitmap(fs, scl, ecl - scl + 1, 0);	/* Mark the cluster block 'free' on the bitmap */
;				if (res != FR_OK) return res;
;			}
;#endif
;#if FF_USE_TRIM
;			rt[0] = clst2sect(fs, scl);					/* Start of data area to be freed */
;			rt[1] = clst2sect(fs, ecl) + fs->csize - 1;	/* End of data area to be freed */
;			disk_ioctl(fs->pdrv, CTRL_TRIM, rt);		/* Inform storage device that the data in the block may be erased */
;#endif
;			scl = ecl = nxt;
;		}
;#endif
;		clst = nxt;					/* Next cluster */
L10052:
	.line	1515
	lda	<L128+nxt_1
	sta	<L127+clst_0
	lda	<L128+nxt_1+2
	sta	<L127+clst_0+2
;	} while (clst < fs->n_fatent);	/* Repeat while not the last link */
	.line	1516
L10045:
	lda	<L127+clst_0
	ldy	#$13
	cmp	[<L128+fs_1],Y
	lda	<L127+clst_0+2
	ldy	#$15
	sbc	[<L128+fs_1],Y
	bcs	L148
	brl	L10047
L148:
L10046:
;
;#if FF_FS_EXFAT
;	/* Some post processes for chain status */
;	if (fs->fs_type == FS_EXFAT) {
;		if (pclst == 0) {	/* Has the entire chain been removed? */
;			obj->stat = 0;		/* Change the chain status 'initial' */
;		} else {
;			if (obj->stat == 0) {	/* Is it a fragmented chain from the beginning of this session? */
;				clst = obj->sclust;		/* Follow the chain to check if it gets contiguous */
;				while (clst != pclst) {
;					nxt = get_fat(obj, clst);
;					if (nxt < 2) return FR_INT_ERR;
;					if (nxt == 0xFFFFFFFF) return FR_DISK_ERR;
;					if (nxt != clst + 1) break;	/* Not contiguous? */
;					clst++;
;				}
;				if (clst == pclst) {	/* Has the chain got contiguous again? */
;					obj->stat = 2;		/* Change the chain status 'contiguous' */
;				}
;			} else {
;				if (obj->stat == 3 && pclst >= obj->sclust && pclst <= obj->sclust + obj->n_cont) {	/* Was the chain fragmented in this session and got contiguous again? */
;					obj->stat = 2;	/* Change the chain status 'contiguous' */
;				}
;			}
;		}
;	}
;#endif
;	return FR_OK;
	.line	1544
	lda	#$0
	brl	L133
;}
	.line	1545
	.endblock	1545
L127	equ	14
L128	equ	5
	ends
	efunc
	.endfunc	1545,5,14
	.line	1545
;
;
;
;
;/*-----------------------------------------------------------------------*/
;/* FAT handling - Stretch a chain or Create a new chain                  */
;/*-----------------------------------------------------------------------*/
;
;static DWORD create_chain (	/* 0:No free cluster, 1:Internal error, 0xFFFFFFFF:Disk error, >=2:New cluster# */
;	FFOBJID* obj,		/* Corresponding object */
;	DWORD clst			/* Cluster# to stretch, 0:Create a new chain */
;)
;{
	.line	1554
	.line	1558
	FFDOS
	func
	.function	1558
~~create_chain:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L149
	tcs
	phd
	tcd
obj_0	set	4
clst_0	set	8
	.block	1558
;	DWORD cs, ncl, scl;
;	FRESULT res;
;	FATFS *fs = obj->fs;
;
;
;	if (clst == 0) {	/* Create a new chain */
cs_1	set	0
ncl_1	set	4
scl_1	set	8
res_1	set	12
fs_1	set	14
	.sym	cs,0,18,1,32
	.sym	ncl,4,18,1,32
	.sym	scl,8,18,1,32
	.sym	res,12,5,1,16
	.sym	fs,14,138,1,32,80
	.sym	obj,4,138,6,32,81
	.sym	clst,8,18,6,32
	lda	[<L149+obj_0]
	sta	<L150+fs_1
	ldy	#$2
	lda	[<L149+obj_0],Y
	sta	<L150+fs_1+2
	.line	1564
	lda	<L149+clst_0
	ora	<L149+clst_0+2
	beq	L152
	brl	L10053
L152:
	.line	1564
;		scl = fs->last_clst;				/* Suggested cluster to start to find */
	.line	1565
	ldy	#$b
	lda	[<L150+fs_1],Y
	sta	<L150+scl_1
	ldy	#$d
	lda	[<L150+fs_1],Y
	sta	<L150+scl_1+2
;		if (scl == 0 || scl >= fs->n_fatent) scl = 1;
	.line	1566
	lda	<L150+scl_1
	ora	<L150+scl_1+2
	bne	L154
	brl	L153
L154:
	lda	<L150+scl_1
	ldy	#$13
	cmp	[<L150+fs_1],Y
	lda	<L150+scl_1+2
	ldy	#$15
	sbc	[<L150+fs_1],Y
	bcs	L155
	brl	L10054
L155:
L153:
	.line	1566
	lda	#$1
	sta	<L150+scl_1
	lda	#$0
	sta	<L150+scl_1+2
;	}
L10054:
	.line	1567
;	else {				/* Stretch a chain */
	brl	L10055
L10053:
	.line	1568
;		cs = get_fat(obj, clst);			/* Check the cluster status */
	.line	1569
	pei	<L149+clst_0+2
	pei	<L149+clst_0
	pei	<L149+obj_0+2
	pei	<L149+obj_0
	jsl	~~get_fat
	sta	<L150+cs_1
	stx	<L150+cs_1+2
;		if (cs < 2) return 1;				/* Test for insanity */
	.line	1570
	lda	<L150+cs_1
	cmp	#<$2
	lda	<L150+cs_1+2
	sbc	#^$2
	bcc	L156
	brl	L10056
L156:
	.line	1570
	lda	#$0
	tax
	lda	#$1
L157:
	tay
	lda	<L149+2
	sta	<L149+2+8
	lda	<L149+1
	sta	<L149+1+8
	pld
	tsc
	clc
	adc	#L149+8
	tcs
	tya
	rtl
;		if (cs == 0xFFFFFFFF) return cs;	/* Test for disk error */
L10056:
	.line	1571
	lda	<L150+cs_1
	cmp	#<$ffffffff
	bne	L158
	lda	<L150+cs_1+2
	cmp	#^$ffffffff
L158:
	beq	L159
	brl	L10057
L159:
	.line	1571
	ldx	<L150+cs_1+2
	lda	<L150+cs_1
	brl	L157
;		if (cs < fs->n_fatent) return cs;	/* It is already followed by next cluster */
L10057:
	.line	1572
	lda	<L150+cs_1
	ldy	#$13
	cmp	[<L150+fs_1],Y
	lda	<L150+cs_1+2
	ldy	#$15
	sbc	[<L150+fs_1],Y
	bcc	L160
	brl	L10058
L160:
	.line	1572
	ldx	<L150+cs_1+2
	lda	<L150+cs_1
	brl	L157
;		scl = clst;							/* Cluster to start to find */
L10058:
	.line	1573
	lda	<L149+clst_0
	sta	<L150+scl_1
	lda	<L149+clst_0+2
	sta	<L150+scl_1+2
;	}
	.line	1574
L10055:
;	if (fs->free_clst == 0) return 0;		/* No free cluster */
	.line	1575
	ldy	#$f
	lda	[<L150+fs_1],Y
	ldy	#$11
	ora	[<L150+fs_1],Y
	beq	L161
	brl	L10059
L161:
	.line	1575
	lda	#$0
	tax
	lda	#$0
	brl	L157
;
;#if FF_FS_EXFAT
;	if (fs->fs_type == FS_EXFAT) {	/* On the exFAT volume */
;		ncl = find_bitmap(fs, scl, 1);				/* Find a free cluster */
;		if (ncl == 0 || ncl == 0xFFFFFFFF) return ncl;	/* No free cluster or hard error? */
;		res = change_bitmap(fs, ncl, 1, 1);			/* Mark the cluster 'in use' */
;		if (res == FR_INT_ERR) return 1;
;		if (res == FR_DISK_ERR) return 0xFFFFFFFF;
;		if (clst == 0) {							/* Is it a new chain? */
;			obj->stat = 2;							/* Set status 'contiguous' */
;		} else {									/* It is a stretched chain */
;			if (obj->stat == 2 && ncl != scl + 1) {	/* Is the chain got fragmented? */
;				obj->n_cont = scl - obj->sclust;	/* Set size of the contiguous part */
;				obj->stat = 3;						/* Change status 'just fragmented' */
;			}
;		}
;		if (obj->stat != 2) {	/* Is the file non-contiguous? */
;			if (ncl == clst + 1) {	/* Is the cluster next to previous one? */
;				obj->n_frag = obj->n_frag ? obj->n_frag + 1 : 2;	/* Increment size of last framgent */
;			} else {				/* New fragment */
;				if (obj->n_frag == 0) obj->n_frag = 1;
;				res = fill_last_frag(obj, clst, ncl);	/* Fill last fragment on the FAT and link it to new one */
;				if (res == FR_OK) obj->n_frag = 1;
;			}
;		}
;	} else
;#endif
;	{	/* On the FAT/FAT32 volume */
L10059:
	.line	1603
;		ncl = 0;
	.line	1604
	stz	<L150+ncl_1
	stz	<L150+ncl_1+2
;		if (scl == clst) {						/* Stretching an existing chain? */
	.line	1605
	lda	<L150+scl_1
	cmp	<L149+clst_0
	bne	L162
	lda	<L150+scl_1+2
	cmp	<L149+clst_0+2
L162:
	beq	L163
	brl	L10060
L163:
	.line	1605
;			ncl = scl + 1;						/* Test if next cluster is free */
	.line	1606
	clc
	lda	#$1
	adc	<L150+scl_1
	sta	<L150+ncl_1
	lda	#$0
	adc	<L150+scl_1+2
	sta	<L150+ncl_1+2
;			if (ncl >= fs->n_fatent) ncl = 2;
	.line	1607
	lda	<L150+ncl_1
	ldy	#$13
	cmp	[<L150+fs_1],Y
	lda	<L150+ncl_1+2
	ldy	#$15
	sbc	[<L150+fs_1],Y
	bcs	L164
	brl	L10061
L164:
	.line	1607
	lda	#$2
	sta	<L150+ncl_1
	lda	#$0
	sta	<L150+ncl_1+2
;			cs = get_fat(obj, ncl);				/* Get next cluster status */
L10061:
	.line	1608
	pei	<L150+ncl_1+2
	pei	<L150+ncl_1
	pei	<L149+obj_0+2
	pei	<L149+obj_0
	jsl	~~get_fat
	sta	<L150+cs_1
	stx	<L150+cs_1+2
;			if (cs == 1 || cs == 0xFFFFFFFF) return cs;	/* Test for error */
	.line	1609
	lda	<L150+cs_1
	cmp	#<$1
	bne	L166
	lda	<L150+cs_1+2
	cmp	#^$1
L166:
	bne	L167
	brl	L165
L167:
	lda	<L150+cs_1
	cmp	#<$ffffffff
	bne	L168
	lda	<L150+cs_1+2
	cmp	#^$ffffffff
L168:
	beq	L169
	brl	L10062
L169:
L165:
	.line	1609
	ldx	<L150+cs_1+2
	lda	<L150+cs_1
	brl	L157
;			if (cs != 0) {						/* Not free? */
L10062:
	.line	1610
	lda	<L150+cs_1
	ora	<L150+cs_1+2
	bne	L170
	brl	L10063
L170:
	.line	1610
;				cs = fs->last_clst;				/* Start at suggested cluster if it is valid */
	.line	1611
	ldy	#$b
	lda	[<L150+fs_1],Y
	sta	<L150+cs_1
	ldy	#$d
	lda	[<L150+fs_1],Y
	sta	<L150+cs_1+2
;				if (cs >= 2 && cs < fs->n_fatent) scl = cs;
	.line	1612
	lda	<L150+cs_1
	cmp	#<$2
	lda	<L150+cs_1+2
	sbc	#^$2
	bcs	L171
	brl	L10064
L171:
	lda	<L150+cs_1
	ldy	#$13
	cmp	[<L150+fs_1],Y
	lda	<L150+cs_1+2
	ldy	#$15
	sbc	[<L150+fs_1],Y
	bcc	L172
	brl	L10064
L172:
	.line	1612
	lda	<L150+cs_1
	sta	<L150+scl_1
	lda	<L150+cs_1+2
	sta	<L150+scl_1+2
;				ncl = 0;
L10064:
	.line	1613
	stz	<L150+ncl_1
	stz	<L150+ncl_1+2
;			}
	.line	1614
;		}
L10063:
	.line	1615
;		if (ncl == 0) {	/* The new cluster cannot be contiguous and find another fragment */
L10060:
	.line	1616
	lda	<L150+ncl_1
	ora	<L150+ncl_1+2
	beq	L173
	brl	L10065
L173:
	.line	1616
;			ncl = scl;	/* Start cluster */
	.line	1617
	lda	<L150+scl_1
	sta	<L150+ncl_1
	lda	<L150+scl_1+2
	sta	<L150+ncl_1+2
;			for (;;) {
	.line	1618
L10068:
	.line	1618
;				ncl++;							/* Next cluster */
	.line	1619
	inc	<L150+ncl_1
	bne	L174
	inc	<L150+ncl_1+2
L174:
;				if (ncl >= fs->n_fatent) {		/* Check wrap-around */
	.line	1620
	lda	<L150+ncl_1
	ldy	#$13
	cmp	[<L150+fs_1],Y
	lda	<L150+ncl_1+2
	ldy	#$15
	sbc	[<L150+fs_1],Y
	bcs	L175
	brl	L10069
L175:
	.line	1620
;					ncl = 2;
	.line	1621
	lda	#$2
	sta	<L150+ncl_1
	lda	#$0
	sta	<L150+ncl_1+2
;					if (ncl > scl) return 0;	/* No free cluster found? */
	.line	1622
	lda	<L150+scl_1
	cmp	<L150+ncl_1
	lda	<L150+scl_1+2
	sbc	<L150+ncl_1+2
	bcc	L176
	brl	L10070
L176:
	.line	1622
	lda	#$0
	tax
	lda	#$0
	brl	L157
;				}
L10070:
	.line	1623
;				cs = get_fat(obj, ncl);			/* Get the cluster status */
L10069:
	.line	1624
	pei	<L150+ncl_1+2
	pei	<L150+ncl_1
	pei	<L149+obj_0+2
	pei	<L149+obj_0
	jsl	~~get_fat
	sta	<L150+cs_1
	stx	<L150+cs_1+2
;				if (cs == 0) break;				/* Found a free cluster? */
	.line	1625
	lda	<L150+cs_1
	ora	<L150+cs_1+2
	bne	L177
	brl	L10067
L177:
;				if (cs == 1 || cs == 0xFFFFFFFF) return cs;	/* Test for error */
	.line	1626
	lda	<L150+cs_1
	cmp	#<$1
	bne	L179
	lda	<L150+cs_1+2
	cmp	#^$1
L179:
	bne	L180
	brl	L178
L180:
	lda	<L150+cs_1
	cmp	#<$ffffffff
	bne	L181
	lda	<L150+cs_1+2
	cmp	#^$ffffffff
L181:
	beq	L182
	brl	L10071
L182:
L178:
	.line	1626
	ldx	<L150+cs_1+2
	lda	<L150+cs_1
	brl	L157
;				if (ncl == scl) return 0;		/* No free cluster found? */
L10071:
	.line	1627
	lda	<L150+ncl_1
	cmp	<L150+scl_1
	bne	L183
	lda	<L150+ncl_1+2
	cmp	<L150+scl_1+2
L183:
	beq	L184
	brl	L10072
L184:
	.line	1627
	lda	#$0
	tax
	lda	#$0
	brl	L157
;			}
L10072:
	.line	1628
L10066:
	brl	L10068
L10067:
;		}
	.line	1629
;		res = put_fat(fs, ncl, 0xFFFFFFFF);		/* Mark the new cluster 'EOC' */
L10065:
	.line	1630
	pea	#^$ffffffff
	pea	#<$ffffffff
	pei	<L150+ncl_1+2
	pei	<L150+ncl_1
	pei	<L150+fs_1+2
	pei	<L150+fs_1
	jsl	~~put_fat
	sta	<L150+res_1
;		if (res == FR_OK && clst != 0) {
	.line	1631
	lda	<L150+res_1
	beq	L185
	brl	L10073
L185:
	lda	<L149+clst_0
	ora	<L149+clst_0+2
	bne	L186
	brl	L10073
L186:
	.line	1631
;			res = put_fat(fs, clst, ncl);		/* Link it from the previous one if needed */
	.line	1632
	pei	<L150+ncl_1+2
	pei	<L150+ncl_1
	pei	<L149+clst_0+2
	pei	<L149+clst_0
	pei	<L150+fs_1+2
	pei	<L150+fs_1
	jsl	~~put_fat
	sta	<L150+res_1
;		}
	.line	1633
;	}
L10073:
	.line	1634
;
;	if (res == FR_OK) {			/* Update FSINFO if function succeeded. */
	.line	1636
	lda	<L150+res_1
	beq	L187
	brl	L10074
L187:
	.line	1636
;		fs->last_clst = ncl;
	.line	1637
	lda	<L150+ncl_1
	ldy	#$b
	sta	[<L150+fs_1],Y
	lda	<L150+ncl_1+2
	ldy	#$d
	sta	[<L150+fs_1],Y
;		if (fs->free_clst <= fs->n_fatent - 2) fs->free_clst--;
	.line	1638
	clc
	lda	#$fffe
	ldy	#$13
	adc	[<L150+fs_1],Y
	sta	<R0
	lda	#$ffff
	ldy	#$15
	adc	[<L150+fs_1],Y
	sta	<R0+2
	lda	<R0
	ldy	#$f
	cmp	[<L150+fs_1],Y
	lda	<R0+2
	ldy	#$11
	sbc	[<L150+fs_1],Y
	bcs	L188
	brl	L10075
L188:
	.line	1638
	clc
	lda	#$ffff
	ldy	#$f
	adc	[<L150+fs_1],Y
	ldy	#$f
	sta	[<L150+fs_1],Y
	lda	#$ffff
	ldy	#$11
	adc	[<L150+fs_1],Y
	ldy	#$11
	sta	[<L150+fs_1],Y
;		fs->fsi_flag |= 1;
L10075:
	.line	1639
	clc
	lda	#$4
	adc	<L150+fs_1
	sta	<R0
	lda	#$0
	adc	<L150+fs_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	[<R0]
	ora	#<$1
	sta	[<R0]
	rep	#$20
	longa	on
;	} else {
	.line	1640
	brl	L10076
L10074:
	.line	1640
;		ncl = (res == FR_DISK_ERR) ? 0xFFFFFFFF : 1;	/* Failed. Generate error status */
	.line	1641
	lda	<L150+res_1
	cmp	#<$1
	beq	L190
	brl	L189
L190:
	lda	#$ffff
	tax
	lda	#$ffff
	bra	L191
L189:
	lda	#$0
	tax
	lda	#$1
L191:
	sta	<R0
	stx	<R0+2
	lda	<R0
	sta	<L150+ncl_1
	lda	<R0+2
	sta	<L150+ncl_1+2
;	}
	.line	1642
L10076:
;
;	return ncl;		/* Return new cluster number or error status */
	.line	1644
	ldx	<L150+ncl_1+2
	lda	<L150+ncl_1
	brl	L157
;}
	.line	1645
	.endblock	1645
L149	equ	22
L150	equ	5
	ends
	efunc
	.endfunc	1645,5,22
	.line	1645
;
;#endif /* !FF_FS_READONLY */
;
;
;
;
;#if FF_USE_FASTSEEK
;/*-----------------------------------------------------------------------*/
;/* FAT handling - Convert offset into cluster with link map table        */
;/*-----------------------------------------------------------------------*/
;
;static DWORD clmt_clust (	/* <2:Error, >=2:Cluster number */
;	FIL* fp,		/* Pointer to the file object */
;	FSIZE_t ofs		/* File offset to be converted to cluster# */
;)
;{
;	DWORD cl, ncl, *tbl;
;	FATFS *fs = fp->obj.fs;
;
;
;	tbl = fp->cltbl + 1;	/* Top of CLMT */
;	cl = (DWORD)(ofs / SS(fs) / fs->csize);	/* Cluster order from top of the file */
;	for (;;) {
;		ncl = *tbl++;			/* Number of cluters in the fragment */
;		if (ncl == 0) return 0;	/* End of table? (error) */
;		if (cl < ncl) break;	/* In this fragment? */
;		cl -= ncl; tbl++;		/* Next fragment */
;	}
;	return cl + *tbl;	/* Return the cluster number */
;}
;
;#endif	/* FF_USE_FASTSEEK */
;
;
;
;
;/*-----------------------------------------------------------------------*/
;/* Directory handling - Fill a cluster with zeros                        */
;/*-----------------------------------------------------------------------*/
;
;#if !FF_FS_READONLY
;static FRESULT dir_clear (	/* Returns FR_OK or FR_DISK_ERR */
;	FATFS *fs,		/* Filesystem object */
;	DWORD clst		/* Directory table to clear */
;)
;{
	.line	1687
	.line	1691
	FFDOS
	func
	.function	1691
~~dir_clear:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L192
	tcs
	phd
	tcd
fs_0	set	4
clst_0	set	8
	.block	1691
;	LBA_t sect;
;	UINT n, szb;
;	BYTE *ibuf;
;
;
;	if (sync_window(fs) != FR_OK) return FR_DISK_ERR;	/* Flush disk access window */
sect_1	set	0
n_1	set	4
szb_1	set	6
ibuf_1	set	8
	.sym	sect,0,18,1,32
	.sym	n,4,16,1,16
	.sym	szb,6,16,1,16
	.sym	ibuf,8,142,1,32
	.sym	fs,4,138,6,32,80
	.sym	clst,8,18,6,32
	.line	1697
	pei	<L192+fs_0+2
	pei	<L192+fs_0
	jsl	~~sync_window
	tax
	bne	L195
	brl	L10077
L195:
	.line	1697
	lda	#$1
L196:
	tay
	lda	<L192+2
	sta	<L192+2+8
	lda	<L192+1
	sta	<L192+1+8
	pld
	tsc
	clc
	adc	#L192+8
	tcs
	tya
	rtl
;	sect = clst2sect(fs, clst);		/* Top of the cluster */
L10077:
	.line	1698
	pei	<L192+clst_0+2
	pei	<L192+clst_0
	pei	<L192+fs_0+2
	pei	<L192+fs_0
	jsl	~~clst2sect
	sta	<L193+sect_1
	stx	<L193+sect_1+2
;	fs->winsect = sect;				/* Set window to top of the cluster */
	.line	1699
	lda	<L193+sect_1
	ldy	#$2b
	sta	[<L192+fs_0],Y
	lda	<L193+sect_1+2
	ldy	#$2d
	sta	[<L192+fs_0],Y
;	mem_set(fs->win, 0, sizeof fs->win);	/* Clear window buffer */
	.line	1700
	pea	#<$200
	pea	#<$0
	clc
	lda	#$2f
	adc	<L192+fs_0
	sta	<R0
	lda	#$0
	adc	<L192+fs_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~mem_set
;#if FF_USE_LFN == 3		/* Quick table clear by using multi-secter write */
;	/* Allocate a temporary buffer */
;	for (szb = ((DWORD)fs->csize * SS(fs) >= MAX_MALLOC) ? MAX_MALLOC : fs->csize * SS(fs), ibuf = 0; szb > SS(fs) && (ibuf = ff_memalloc(szb)) == 0; szb /= 2) ;
;	if (szb > SS(fs)) {		/* Buffer allocated? */
;		mem_set(ibuf, 0, szb);
;		szb /= SS(fs);		/* Bytes -> Sectors */
;		for (n = 0; n < fs->csize && disk_write(fs->pdrv, ibuf, sect + n, szb) == RES_OK; n += szb) ;	/* Fill the cluster with 0 */
;		ff_memfree(ibuf);
;	} else
;#endif
;	{
	.line	1711
;		ibuf = fs->win; szb = 1;	/* Use window buffer (many single-sector writes may take a time) */
	.line	1712
	clc
	lda	#$2f
	adc	<L192+fs_0
	sta	<L193+ibuf_1
	lda	#$0
	adc	<L192+fs_0+2
	sta	<L193+ibuf_1+2
	.line	1712
	lda	#$1
	sta	<L193+szb_1
;		for (n = 0; n < fs->csize && disk_write(fs->pdrv, ibuf, sect + n, szb) == RES_OK; n += szb) ;	/* Fill the cluster with 0 */
	.line	1713
	stz	<L193+n_1
	brl	L10081
L10080:
	.line	1713
L10078:
	clc
	lda	<L193+n_1
	adc	<L193+szb_1
	sta	<L193+n_1
L10081:
	lda	<L193+n_1
	ldy	#$9
	cmp	[<L192+fs_0],Y
	bcc	L198
	brl	L197
L198:
	pei	<L193+szb_1
	lda	<L193+n_1
	sta	<R0
	stz	<R0+2
	clc
	lda	<R0
	adc	<L193+sect_1
	sta	<R1
	lda	<R0+2
	adc	<L193+sect_1+2
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	pei	<L193+ibuf_1+2
	pei	<L193+ibuf_1
	ldy	#$1
	lda	[<L192+fs_0],Y
	pha
	jsl	~~disk_write
	tax
	bne	L199
	brl	L10080
L199:
L197:
L10079:
;	}
	.line	1714
;	return (n == fs->csize) ? FR_OK : FR_DISK_ERR;
	.line	1715
	lda	<L193+n_1
	ldy	#$9
	cmp	[<L192+fs_0],Y
	beq	L201
	brl	L200
L201:
	lda	#$0
	bra	L202
L200:
	lda	#$1
L202:
	brl	L196
;}
	.line	1716
	.endblock	1716
L192	equ	20
L193	equ	9
	ends
	efunc
	.endfunc	1716,9,20
	.line	1716
;#endif	/* !FF_FS_READONLY */
;
;
;
;
;/*-----------------------------------------------------------------------*/
;/* Directory handling - Set directory index                              */
;/*-----------------------------------------------------------------------*/
;
;static FRESULT dir_sdi (	/* FR_OK(0):succeeded, !=0:error */
;	DIR* dp,		/* Pointer to directory object */
;	DWORD ofs		/* Offset of directory table */
;)
;{
	.line	1726
	.line	1730
	FFDOS
	func
	.function	1730
~~dir_sdi:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L203
	tcs
	phd
	tcd
dp_0	set	4
ofs_0	set	8
	.block	1730
;	DWORD csz, clst;
;	FATFS *fs = dp->obj.fs;
;
;
;	if (ofs >= (DWORD)((FF_FS_EXFAT && fs->fs_type == FS_EXFAT) ? MAX_DIR_EX : MAX_DIR) || ofs % SZDIRE) {	/* Check range of offset and alignment */
csz_1	set	0
clst_1	set	4
fs_1	set	8
	.sym	csz,0,18,1,32
	.sym	clst,4,18,1,32
	.sym	fs,8,138,1,32,80
	.sym	dp,4,138,6,32,83
	.sym	ofs,8,18,6,32
	lda	[<L203+dp_0]
	sta	<L204+fs_1
	ldy	#$2
	lda	[<L203+dp_0],Y
	sta	<L204+fs_1+2
	.line	1735
	brl	L207
	sep	#$20
	longa	off
	lda	[<L204+fs_1]
	cmp	#<$4
	rep	#$20
	longa	on
	beq	L208
	brl	L207
L208:
	lda	#$1000
	tax
	lda	#$0
	bra	L209
L207:
	lda	#$20
	tax
	lda	#$0
L209:
	sta	<R0
	stx	<R0+2
	lda	<L203+ofs_0
	cmp	<R0
	lda	<L203+ofs_0+2
	sbc	<R0+2
	bcc	L210
	brl	L206
L210:
	lda	<L203+ofs_0
	and	#<$1f
	bne	L211
	brl	L10082
L211:
L206:
	.line	1735
;		return FR_INT_ERR;
	.line	1736
	lda	#$2
L212:
	tay
	lda	<L203+2
	sta	<L203+2+8
	lda	<L203+1
	sta	<L203+1+8
	pld
	tsc
	clc
	adc	#L203+8
	tcs
	tya
	rtl
;	}
	.line	1737
;	dp->dptr = ofs;				/* Set current offset */
L10082:
	.line	1738
	lda	<L203+ofs_0
	ldy	#$10
	sta	[<L203+dp_0],Y
	lda	<L203+ofs_0+2
	ldy	#$12
	sta	[<L203+dp_0],Y
;	clst = dp->obj.sclust;		/* Table start cluster (0:root) */
	.line	1739
	ldy	#$8
	lda	[<L203+dp_0],Y
	sta	<L204+clst_1
	ldy	#$a
	lda	[<L203+dp_0],Y
	sta	<L204+clst_1+2
;	if (clst == 0 && fs->fs_type >= FS_FAT32) {	/* Replace cluster# 0 with root cluster# */
	.line	1740
	lda	<L204+clst_1
	ora	<L204+clst_1+2
	beq	L213
	brl	L10083
L213:
	sep	#$20
	longa	off
	lda	[<L204+fs_1]
	cmp	#<$3
	rep	#$20
	longa	on
	bcs	L214
	brl	L10083
L214:
	.line	1740
;		clst = (DWORD)fs->dirbase;
	.line	1741
	ldy	#$23
	lda	[<L204+fs_1],Y
	sta	<L204+clst_1
	ldy	#$25
	lda	[<L204+fs_1],Y
	sta	<L204+clst_1+2
;		if (FF_FS_EXFAT) dp->obj.stat = 0;	/* exFAT: Root dir has an FAT chain */
	.line	1742
	brl	L10084
	.line	1742
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$7
	sta	[<L203+dp_0],Y
	rep	#$20
	longa	on
;	}
L10084:
	.line	1743
;
;	if (clst == 0) {	/* Static table (root-directory on the FAT volume) */
L10083:
	.line	1745
	lda	<L204+clst_1
	ora	<L204+clst_1+2
	beq	L215
	brl	L10085
L215:
	.line	1745
;		if (ofs / SZDIRE >= fs->n_rootdir) return FR_INT_ERR;	/* Is index out of range? */
	.line	1746
	ldy	#$0
	phy
	ldy	#$7
	lda	[<L204+fs_1],Y
	ply
	rol	A
	ror	A
	bpl	L216
	dey
L216:
	sta	<R0
	sty	<R0+2
	pei	<L203+ofs_0+2
	pei	<L203+ofs_0
	lda	#$5
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R1
	stx	<R1+2
	lda	<R1
	cmp	<R0
	lda	<R1+2
	sbc	<R0+2
	bcs	L217
	brl	L10086
L217:
	.line	1746
	lda	#$2
	brl	L212
;		dp->sect = fs->dirbase;
L10086:
	.line	1747
	ldy	#$23
	lda	[<L204+fs_1],Y
	ldy	#$18
	sta	[<L203+dp_0],Y
	ldy	#$25
	lda	[<L204+fs_1],Y
	ldy	#$1a
	sta	[<L203+dp_0],Y
;
;	} else {			/* Dynamic table (sub-directory or root-directory on the FAT32/exFAT volume) */
	.line	1749
	brl	L10087
L10085:
	.line	1749
;		csz = (DWORD)fs->csize * SS(fs);	/* Bytes per cluster */
	.line	1750
	ldy	#$0
	phy
	ldy	#$9
	lda	[<L204+fs_1],Y
	ply
	rol	A
	ror	A
	bpl	L218
	dey
L218:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	lda	#$9
	xref	~~~lasl
	jsl	~~~lasl
	sta	<L204+csz_1
	stx	<L204+csz_1+2
;		while (ofs >= csz) {				/* Follow cluster chain */
	.line	1751
L10088:
	lda	<L203+ofs_0
	cmp	<L204+csz_1
	lda	<L203+ofs_0+2
	sbc	<L204+csz_1+2
	bcs	L219
	brl	L10089
L219:
	.line	1751
;			clst = get_fat(&dp->obj, clst);				/* Get next cluster */
	.line	1752
	pei	<L204+clst_1+2
	pei	<L204+clst_1
	pei	<L203+dp_0+2
	pei	<L203+dp_0
	jsl	~~get_fat
	sta	<L204+clst_1
	stx	<L204+clst_1+2
;			if (clst == 0xFFFFFFFF) return FR_DISK_ERR;	/* Disk error */
	.line	1753
	lda	<L204+clst_1
	cmp	#<$ffffffff
	bne	L220
	lda	<L204+clst_1+2
	cmp	#^$ffffffff
L220:
	beq	L221
	brl	L10090
L221:
	.line	1753
	lda	#$1
	brl	L212
;			if (clst < 2 || clst >= fs->n_fatent) return FR_INT_ERR;	/* Reached to end of table or internal error */
L10090:
	.line	1754
	lda	<L204+clst_1
	cmp	#<$2
	lda	<L204+clst_1+2
	sbc	#^$2
	bcs	L223
	brl	L222
L223:
	lda	<L204+clst_1
	ldy	#$13
	cmp	[<L204+fs_1],Y
	lda	<L204+clst_1+2
	ldy	#$15
	sbc	[<L204+fs_1],Y
	bcs	L224
	brl	L10091
L224:
L222:
	.line	1754
	lda	#$2
	brl	L212
;			ofs -= csz;
L10091:
	.line	1755
	sec
	lda	<L203+ofs_0
	sbc	<L204+csz_1
	sta	<L203+ofs_0
	lda	<L203+ofs_0+2
	sbc	<L204+csz_1+2
	sta	<L203+ofs_0+2
;		}
	.line	1756
	brl	L10088
L10089:
;		dp->sect = clst2sect(fs, clst);
	.line	1757
	pei	<L204+clst_1+2
	pei	<L204+clst_1
	pei	<L204+fs_1+2
	pei	<L204+fs_1
	jsl	~~clst2sect
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$18
	sta	[<L203+dp_0],Y
	lda	<R0+2
	ldy	#$1a
	sta	[<L203+dp_0],Y
;	}
	.line	1758
L10087:
;	dp->clust = clst;					/* Current cluster# */
	.line	1759
	lda	<L204+clst_1
	ldy	#$14
	sta	[<L203+dp_0],Y
	lda	<L204+clst_1+2
	ldy	#$16
	sta	[<L203+dp_0],Y
;	if (dp->sect == 0) return FR_INT_ERR;
	.line	1760
	ldy	#$18
	lda	[<L203+dp_0],Y
	ldy	#$1a
	ora	[<L203+dp_0],Y
	beq	L225
	brl	L10092
L225:
	.line	1760
	lda	#$2
	brl	L212
;	dp->sect += ofs / SS(fs);			/* Sector# of the directory entry */
L10092:
	.line	1761
	clc
	lda	#$18
	adc	<L203+dp_0
	sta	<R0
	lda	#$0
	adc	<L203+dp_0+2
	sta	<R0+2
	pei	<L203+ofs_0+2
	pei	<L203+ofs_0
	lda	#$9
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R1
	stx	<R1+2
	clc
	lda	<R1
	adc	[<R0]
	sta	[<R0]
	lda	<R1+2
	ldy	#$2
	adc	[<R0],Y
	ldy	#$2
	sta	[<R0],Y
;	dp->dir = fs->win + (ofs % SS(fs));	/* Pointer to the entry in the win[] */
	.line	1762
	lda	<L203+ofs_0
	and	#<$1ff
	sta	<R0
	stz	<R0+2
	clc
	lda	#$2f
	adc	<R0
	sta	<R1
	lda	#$0
	adc	<R0+2
	sta	<R1+2
	clc
	lda	<L204+fs_1
	adc	<R1
	sta	<R0
	lda	<L204+fs_1+2
	adc	<R1+2
	sta	<R0+2
	lda	<R0
	ldy	#$1c
	sta	[<L203+dp_0],Y
	lda	<R0+2
	ldy	#$1e
	sta	[<L203+dp_0],Y
;
;	return FR_OK;
	.line	1764
	lda	#$0
	brl	L212
;}
	.line	1765
	.endblock	1765
L203	equ	20
L204	equ	9
	ends
	efunc
	.endfunc	1765,9,20
	.line	1765
;
;
;
;
;/*-----------------------------------------------------------------------*/
;/* Directory handling - Move directory table index next                  */
;/*-----------------------------------------------------------------------*/
;
;static FRESULT dir_next (	/* FR_OK(0):succeeded, FR_NO_FILE:End of table, FR_DENIED:Could not stretch */
;	DIR* dp,				/* Pointer to the directory object */
;	int stretch				/* 0: Do not stretch table, 1: Stretch table if needed */
;)
;{
	.line	1774
	.line	1778
	FFDOS
	func
	.function	1778
~~dir_next:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L226
	tcs
	phd
	tcd
dp_0	set	4
stretch_0	set	8
	.block	1778
;	DWORD ofs, clst;
;	FATFS *fs = dp->obj.fs;
;
;
;	ofs = dp->dptr + SZDIRE;	/* Next entry */
ofs_1	set	0
clst_1	set	4
fs_1	set	8
	.sym	ofs,0,18,1,32
	.sym	clst,4,18,1,32
	.sym	fs,8,138,1,32,80
	.sym	dp,4,138,6,32,83
	.sym	stretch,8,5,6,16
	lda	[<L226+dp_0]
	sta	<L227+fs_1
	ldy	#$2
	lda	[<L226+dp_0],Y
	sta	<L227+fs_1+2
	.line	1783
	clc
	lda	#$20
	ldy	#$10
	adc	[<L226+dp_0],Y
	sta	<L227+ofs_1
	lda	#$0
	ldy	#$12
	adc	[<L226+dp_0],Y
	sta	<L227+ofs_1+2
;	if (ofs >= (DWORD)((FF_FS_EXFAT && fs->fs_type == FS_EXFAT) ? MAX_DIR_EX : MAX_DIR)) dp->sect = 0;	/* Disable it if the offset reached the max value */
	.line	1784
	brl	L229
	sep	#$20
	longa	off
	lda	[<L227+fs_1]
	cmp	#<$4
	rep	#$20
	longa	on
	beq	L230
	brl	L229
L230:
	lda	#$1000
	tax
	lda	#$0
	bra	L231
L229:
	lda	#$20
	tax
	lda	#$0
L231:
	sta	<R0
	stx	<R0+2
	lda	<L227+ofs_1
	cmp	<R0
	lda	<L227+ofs_1+2
	sbc	<R0+2
	bcs	L232
	brl	L10093
L232:
	.line	1784
	lda	#$0
	ldy	#$18
	sta	[<L226+dp_0],Y
	lda	#$0
	ldy	#$1a
	sta	[<L226+dp_0],Y
;	if (dp->sect == 0) return FR_NO_FILE;	/* Report EOT if it has been disabled */
L10093:
	.line	1785
	ldy	#$18
	lda	[<L226+dp_0],Y
	ldy	#$1a
	ora	[<L226+dp_0],Y
	beq	L233
	brl	L10094
L233:
	.line	1785
	lda	#$4
L234:
	tay
	lda	<L226+2
	sta	<L226+2+6
	lda	<L226+1
	sta	<L226+1+6
	pld
	tsc
	clc
	adc	#L226+6
	tcs
	tya
	rtl
;
;	if (ofs % SS(fs) == 0) {	/* Sector changed? */
L10094:
	.line	1787
	lda	<L227+ofs_1
	and	#<$1ff
	beq	L235
	brl	L10095
L235:
	.line	1787
;		dp->sect++;				/* Next sector */
	.line	1788
	clc
	lda	#$1
	ldy	#$18
	adc	[<L226+dp_0],Y
	ldy	#$18
	sta	[<L226+dp_0],Y
	lda	#$0
	ldy	#$1a
	adc	[<L226+dp_0],Y
	ldy	#$1a
	sta	[<L226+dp_0],Y
;
;		if (dp->clust == 0) {	/* Static table */
	.line	1790
	ldy	#$14
	lda	[<L226+dp_0],Y
	ldy	#$16
	ora	[<L226+dp_0],Y
	beq	L236
	brl	L10096
L236:
	.line	1790
;			if (ofs / SZDIRE >= fs->n_rootdir) {	/* Report EOT if it reached end of static table */
	.line	1791
	ldy	#$0
	phy
	ldy	#$7
	lda	[<L227+fs_1],Y
	ply
	rol	A
	ror	A
	bpl	L237
	dey
L237:
	sta	<R0
	sty	<R0+2
	pei	<L227+ofs_1+2
	pei	<L227+ofs_1
	lda	#$5
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R1
	stx	<R1+2
	lda	<R1
	cmp	<R0
	lda	<R1+2
	sbc	<R0+2
	bcs	L238
	brl	L10097
L238:
	.line	1791
;				dp->sect = 0; return FR_NO_FILE;
	.line	1792
	lda	#$0
	ldy	#$18
	sta	[<L226+dp_0],Y
	lda	#$0
	ldy	#$1a
	sta	[<L226+dp_0],Y
	.line	1792
	lda	#$4
	brl	L234
;			}
	.line	1793
;		}
L10097:
	.line	1794
;		else {					/* Dynamic table */
	brl	L10098
L10096:
	.line	1795
;			if ((ofs / SS(fs) & (fs->csize - 1)) == 0) {	/* Cluster changed? */
	.line	1796
	pei	<L227+ofs_1+2
	pei	<L227+ofs_1
	lda	#$9
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R0
	stx	<R0+2
	clc
	lda	#$ffff
	ldy	#$9
	adc	[<L227+fs_1],Y
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L239
	dey
L239:
	sta	<R1
	sty	<R1+2
	lda	<R1
	and	<R0
	sta	<R2
	lda	<R1+2
	and	<R0+2
	sta	<R2+2
	lda	<R2
	ora	<R2+2
	beq	L240
	brl	L10099
L240:
	.line	1796
;				clst = get_fat(&dp->obj, dp->clust);		/* Get next cluster */
	.line	1797
	ldy	#$16
	lda	[<L226+dp_0],Y
	pha
	ldy	#$14
	lda	[<L226+dp_0],Y
	pha
	pei	<L226+dp_0+2
	pei	<L226+dp_0
	jsl	~~get_fat
	sta	<L227+clst_1
	stx	<L227+clst_1+2
;				if (clst <= 1) return FR_INT_ERR;			/* Internal error */
	.line	1798
	lda	#$1
	cmp	<L227+clst_1
	lda	#$0
	sbc	<L227+clst_1+2
	bcs	L241
	brl	L10100
L241:
	.line	1798
	lda	#$2
	brl	L234
;				if (clst == 0xFFFFFFFF) return FR_DISK_ERR;	/* Disk error */
L10100:
	.line	1799
	lda	<L227+clst_1
	cmp	#<$ffffffff
	bne	L242
	lda	<L227+clst_1+2
	cmp	#^$ffffffff
L242:
	beq	L243
	brl	L10101
L243:
	.line	1799
	lda	#$1
	brl	L234
;				if (clst >= fs->n_fatent) {					/* It reached end of dynamic table */
L10101:
	.line	1800
	lda	<L227+clst_1
	ldy	#$13
	cmp	[<L227+fs_1],Y
	lda	<L227+clst_1+2
	ldy	#$15
	sbc	[<L227+fs_1],Y
	bcs	L244
	brl	L10102
L244:
	.line	1800
;#if !FF_FS_READONLY
;					if (!stretch) {								/* If no stretch, report EOT */
	.line	1802
	lda	<L226+stretch_0
	beq	L245
	brl	L10103
L245:
	.line	1802
;						dp->sect = 0; return FR_NO_FILE;
	.line	1803
	lda	#$0
	ldy	#$18
	sta	[<L226+dp_0],Y
	lda	#$0
	ldy	#$1a
	sta	[<L226+dp_0],Y
	.line	1803
	lda	#$4
	brl	L234
;					}
	.line	1804
;					clst = create_chain(&dp->obj, dp->clust);	/* Allocate a cluster */
L10103:
	.line	1805
	ldy	#$16
	lda	[<L226+dp_0],Y
	pha
	ldy	#$14
	lda	[<L226+dp_0],Y
	pha
	pei	<L226+dp_0+2
	pei	<L226+dp_0
	jsl	~~create_chain
	sta	<L227+clst_1
	stx	<L227+clst_1+2
;					if (clst == 0) return FR_DENIED;			/* No free cluster */
	.line	1806
	lda	<L227+clst_1
	ora	<L227+clst_1+2
	beq	L246
	brl	L10104
L246:
	.line	1806
	lda	#$7
	brl	L234
;					if (clst == 1) return FR_INT_ERR;			/* Internal error */
L10104:
	.line	1807
	lda	<L227+clst_1
	cmp	#<$1
	bne	L247
	lda	<L227+clst_1+2
	cmp	#^$1
L247:
	beq	L248
	brl	L10105
L248:
	.line	1807
	lda	#$2
	brl	L234
;					if (clst == 0xFFFFFFFF) return FR_DISK_ERR;	/* Disk error */
L10105:
	.line	1808
	lda	<L227+clst_1
	cmp	#<$ffffffff
	bne	L249
	lda	<L227+clst_1+2
	cmp	#^$ffffffff
L249:
	beq	L250
	brl	L10106
L250:
	.line	1808
	lda	#$1
	brl	L234
;					if (dir_clear(fs, clst) != FR_OK) return FR_DISK_ERR;	/* Clean up the stretched table */
L10106:
	.line	1809
	pei	<L227+clst_1+2
	pei	<L227+clst_1
	pei	<L227+fs_1+2
	pei	<L227+fs_1
	jsl	~~dir_clear
	tax
	bne	L251
	brl	L10107
L251:
	.line	1809
	lda	#$1
	brl	L234
;					if (FF_FS_EXFAT) dp->obj.stat |= 4;			/* exFAT: The directory has been stretched */
L10107:
	.line	1810
	brl	L10108
	.line	1810
	clc
	lda	#$7
	adc	<L226+dp_0
	sta	<R0
	lda	#$0
	adc	<L226+dp_0+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	[<R0]
	ora	#<$4
	sta	[<R0]
	rep	#$20
	longa	on
;#else
;					if (!stretch) dp->sect = 0;					/* (this line is to suppress compiler warning) */
;					dp->sect = 0; return FR_NO_FILE;			/* Report EOT */
;#endif
;				}
L10108:
	.line	1815
;				dp->clust = clst;		/* Initialize data for new cluster */
L10102:
	.line	1816
	lda	<L227+clst_1
	ldy	#$14
	sta	[<L226+dp_0],Y
	lda	<L227+clst_1+2
	ldy	#$16
	sta	[<L226+dp_0],Y
;				dp->sect = clst2sect(fs, clst);
	.line	1817
	pei	<L227+clst_1+2
	pei	<L227+clst_1
	pei	<L227+fs_1+2
	pei	<L227+fs_1
	jsl	~~clst2sect
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$18
	sta	[<L226+dp_0],Y
	lda	<R0+2
	ldy	#$1a
	sta	[<L226+dp_0],Y
;			}
	.line	1818
;		}
L10099:
	.line	1819
L10098:
;	}
	.line	1820
;	dp->dptr = ofs;						/* Current entry */
L10095:
	.line	1821
	lda	<L227+ofs_1
	ldy	#$10
	sta	[<L226+dp_0],Y
	lda	<L227+ofs_1+2
	ldy	#$12
	sta	[<L226+dp_0],Y
;	dp->dir = fs->win + ofs % SS(fs);	/* Pointer to the entry in the win[] */
	.line	1822
	lda	<L227+ofs_1
	and	#<$1ff
	sta	<R0
	stz	<R0+2
	clc
	lda	#$2f
	adc	<R0
	sta	<R1
	lda	#$0
	adc	<R0+2
	sta	<R1+2
	clc
	lda	<L227+fs_1
	adc	<R1
	sta	<R0
	lda	<L227+fs_1+2
	adc	<R1+2
	sta	<R0+2
	lda	<R0
	ldy	#$1c
	sta	[<L226+dp_0],Y
	lda	<R0+2
	ldy	#$1e
	sta	[<L226+dp_0],Y
;
;	return FR_OK;
	.line	1824
	lda	#$0
	brl	L234
;}
	.line	1825
	.endblock	1825
L226	equ	24
L227	equ	13
	ends
	efunc
	.endfunc	1825,13,24
	.line	1825
;
;
;
;
;#if !FF_FS_READONLY
;/*-----------------------------------------------------------------------*/
;/* Directory handling - Reserve a block of directory entries             */
;/*-----------------------------------------------------------------------*/
;
;static FRESULT dir_alloc (	/* FR_OK(0):succeeded, !=0:error */
;	DIR* dp,				/* Pointer to the directory object */
;	UINT nent				/* Number of contiguous entries to allocate */
;)
;{
	.line	1835
	.line	1839
	FFDOS
	func
	.function	1839
~~dir_alloc:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L252
	tcs
	phd
	tcd
dp_0	set	4
nent_0	set	8
	.block	1839
;	FRESULT res;
;	UINT n;
;	FATFS *fs = dp->obj.fs;
;
;
;	res = dir_sdi(dp, 0);
res_1	set	0
n_1	set	2
fs_1	set	4
	.sym	res,0,5,1,16
	.sym	n,2,16,1,16
	.sym	fs,4,138,1,32,80
	.sym	dp,4,138,6,32,83
	.sym	nent,8,16,6,16
	lda	[<L252+dp_0]
	sta	<L253+fs_1
	ldy	#$2
	lda	[<L252+dp_0],Y
	sta	<L253+fs_1+2
	.line	1845
	pea	#^$0
	pea	#<$0
	pei	<L252+dp_0+2
	pei	<L252+dp_0
	jsl	~~dir_sdi
	sta	<L253+res_1
;	if (res == FR_OK) {
	.line	1846
	lda	<L253+res_1
	beq	L255
	brl	L10109
L255:
	.line	1846
;		n = 0;
	.line	1847
	stz	<L253+n_1
;		do {
	.line	1848
L10112:
	.line	1848
;			res = move_window(fs, dp->sect);
	.line	1849
	ldy	#$1a
	lda	[<L252+dp_0],Y
	pha
	ldy	#$18
	lda	[<L252+dp_0],Y
	pha
	pei	<L253+fs_1+2
	pei	<L253+fs_1
	jsl	~~move_window
	sta	<L253+res_1
;			if (res != FR_OK) break;
	.line	1850
	lda	<L253+res_1
	beq	L256
	brl	L10111
L256:
;#if FF_FS_EXFAT
;			if ((fs->fs_type == FS_EXFAT) ? (int)((dp->dir[XDIR_Type] & 0x80) == 0) : (int)(dp->dir[DIR_Name] == DDEM || dp->dir[DIR_Name] == 0)) {
;#else
;			if (dp->dir[DIR_Name] == DDEM || dp->dir[DIR_Name] == 0) {
	.line	1854
	ldy	#$1c
	lda	[<L252+dp_0],Y
	sta	<R0
	ldy	#$1e
	lda	[<L252+dp_0],Y
	sta	<R0+2
	sep	#$20
	longa	off
	lda	[<R0]
	cmp	#<$e5
	rep	#$20
	longa	on
	bne	L258
	brl	L257
L258:
	ldy	#$1c
	lda	[<L252+dp_0],Y
	sta	<R0
	ldy	#$1e
	lda	[<L252+dp_0],Y
	sta	<R0+2
	lda	[<R0]
	and	#$ff
	beq	L259
	brl	L10113
L259:
L257:
	.line	1854
;#endif
;				if (++n == nent) break;	/* A block of contiguous free entries is found */
	.line	1856
	inc	<L253+n_1
	lda	<L253+n_1
	cmp	<L252+nent_0
	bne	L260
	brl	L10111
L260:
;			} else {
	.line	1857
	brl	L10114
L10113:
	.line	1857
;				n = 0;					/* Not a blank entry. Restart to search */
	.line	1858
	stz	<L253+n_1
;			}
	.line	1859
L10114:
;			res = dir_next(dp, 1);
	.line	1860
	pea	#<$1
	pei	<L252+dp_0+2
	pei	<L252+dp_0
	jsl	~~dir_next
	sta	<L253+res_1
;		} while (res == FR_OK);	/* Next entry with table stretch enabled */
	.line	1861
L10110:
	lda	<L253+res_1
	bne	L261
	brl	L10112
L261:
L10111:
;	}
	.line	1862
;
;	if (res == FR_NO_FILE) res = FR_DENIED;	/* No directory entry to allocate */
L10109:
	.line	1864
	lda	<L253+res_1
	cmp	#<$4
	beq	L262
	brl	L10115
L262:
	.line	1864
	lda	#$7
	sta	<L253+res_1
;	return res;
L10115:
	.line	1865
	lda	<L253+res_1
L263:
	tay
	lda	<L252+2
	sta	<L252+2+6
	lda	<L252+1
	sta	<L252+1+6
	pld
	tsc
	clc
	adc	#L252+6
	tcs
	tya
	rtl
;}
	.line	1866
	.endblock	1866
L252	equ	12
L253	equ	5
	ends
	efunc
	.endfunc	1866,5,12
	.line	1866
;
;#endif	/* !FF_FS_READONLY */
;
;
;
;
;/*-----------------------------------------------------------------------*/
;/* FAT: Directory handling - Load/Store start cluster number             */
;/*-----------------------------------------------------------------------*/
;
;static DWORD ld_clust (	/* Returns the top cluster value of the SFN entry */
;	FATFS* fs,			/* Pointer to the fs object */
;	const BYTE* dir		/* Pointer to the key entry */
;)
;{
	.line	1877
	.line	1881
	FFDOS
	func
	.function	1881
~~ld_clust:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L264
	tcs
	phd
	tcd
fs_0	set	4
dir_0	set	8
	.block	1881
;	DWORD cl;
;
;	cl = ld_word(dir + DIR_FstClusLO);
cl_1	set	0
	.sym	cl,0,18,1,32
	.sym	fs,4,138,6,32,80
	.sym	dir,8,142,6,32
	.line	1884
	clc
	lda	#$1a
	adc	<L264+dir_0
	sta	<R0
	lda	#$0
	adc	<L264+dir_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~ld_word
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L267
	dey
L267:
	sta	<L265+cl_1
	sty	<L265+cl_1+2
;	if (fs->fs_type == FS_FAT32) {
	.line	1885
	sep	#$20
	longa	off
	lda	[<L264+fs_0]
	cmp	#<$3
	rep	#$20
	longa	on
	beq	L268
	brl	L10116
L268:
	.line	1885
;		cl |= (DWORD)ld_word(dir + DIR_FstClusHI) << 16;
	.line	1886
	clc
	lda	#$14
	adc	<L264+dir_0
	sta	<R1
	lda	#$0
	adc	<L264+dir_0+2
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~ld_word
	sta	<R2
	ldy	#$0
	lda	<R2
	bpl	L269
	dey
L269:
	sta	<R2
	sty	<R2+2
	pei	<R2+2
	pei	<R2
	lda	#$10
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R0
	stx	<R0+2
	lda	<L265+cl_1
	ora	<R0
	sta	<L265+cl_1
	lda	<L265+cl_1+2
	ora	<R0+2
	sta	<L265+cl_1+2
;	}
	.line	1887
;
;	return cl;
L10116:
	.line	1889
	ldx	<L265+cl_1+2
	lda	<L265+cl_1
L270:
	tay
	lda	<L264+2
	sta	<L264+2+8
	lda	<L264+1
	sta	<L264+1+8
	pld
	tsc
	clc
	adc	#L264+8
	tcs
	tya
	rtl
;}
	.line	1890
	.endblock	1890
L264	equ	16
L265	equ	13
	ends
	efunc
	.endfunc	1890,13,16
	.line	1890
;
;
;#if !FF_FS_READONLY
;static void st_clust (
;	FATFS* fs,	/* Pointer to the fs object */
;	BYTE* dir,	/* Pointer to the key entry */
;	DWORD cl	/* Value to be set */
;)
;{
	.line	1894
	.line	1899
	FFDOS
	func
	.function	1899
~~st_clust:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L271
	tcs
	phd
	tcd
fs_0	set	4
dir_0	set	8
cl_0	set	12
	.block	1899
;	st_word(dir + DIR_FstClusLO, (WORD)cl);
	.sym	fs,4,138,6,32,80
	.sym	dir,8,142,6,32
	.sym	cl,12,18,6,32
	.line	1900
	pei	<L271+cl_0
	clc
	lda	#$1a
	adc	<L271+dir_0
	sta	<R0
	lda	#$0
	adc	<L271+dir_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~st_word
;	if (fs->fs_type == FS_FAT32) {
	.line	1901
	sep	#$20
	longa	off
	lda	[<L271+fs_0]
	cmp	#<$3
	rep	#$20
	longa	on
	beq	L274
	brl	L10117
L274:
	.line	1901
;		st_word(dir + DIR_FstClusHI, (WORD)(cl >> 16));
	.line	1902
	pei	<L271+cl_0+2
	pei	<L271+cl_0
	lda	#$10
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R0
	stx	<R0+2
	pei	<R0
	clc
	lda	#$14
	adc	<L271+dir_0
	sta	<R1
	lda	#$0
	adc	<L271+dir_0+2
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~st_word
;	}
	.line	1903
;}
L10117:
	.line	1904
L275:
	lda	<L271+2
	sta	<L271+2+12
	lda	<L271+1
	sta	<L271+1+12
	pld
	tsc
	clc
	adc	#L271+12
	tcs
	rtl
	.endblock	1904
L271	equ	8
L272	equ	9
	ends
	efunc
	.endfunc	1904,9,8
	.line	1904
;#endif
;
;
;
;#if FF_USE_LFN
;/*--------------------------------------------------------*/
;/* FAT-LFN: Compare a part of file name with an LFN entry */
;/*--------------------------------------------------------*/
;
;static int cmp_lfn (		/* 1:matched, 0:not matched */
;	const WCHAR* lfnbuf,	/* Pointer to the LFN working buffer to be compared */
;	BYTE* dir				/* Pointer to the directory entry containing the part of LFN */
;)
;{
;	UINT i, s;
;	WCHAR wc, uc;
;
;
;	if (ld_word(dir + LDIR_FstClusLO) != 0) return 0;	/* Check LDIR_FstClusLO */
;
;	i = ((dir[LDIR_Ord] & 0x3F) - 1) * 13;	/* Offset in the LFN buffer */
;
;	for (wc = 1, s = 0; s < 13; s++) {		/* Process all characters in the entry */
;		uc = ld_word(dir + LfnOfs[s]);		/* Pick an LFN character */
;		if (wc != 0) {
;			if (i >= FF_MAX_LFN + 1 || ff_wtoupper(uc) != ff_wtoupper(lfnbuf[i++])) {	/* Compare it */
;				return 0;					/* Not matched */
;			}
;			wc = uc;
;		} else {
;			if (uc != 0xFFFF) return 0;		/* Check filler */
;		}
;	}
;
;	if ((dir[LDIR_Ord] & LLEF) && wc && lfnbuf[i]) return 0;	/* Last segment matched but different length */
;
;	return 1;		/* The part of LFN matched */
;}
;
;
;#if FF_FS_MINIMIZE <= 1 || FF_FS_RPATH >= 2 || FF_USE_LABEL || FF_FS_EXFAT
;/*-----------------------------------------------------*/
;/* FAT-LFN: Pick a part of file name from an LFN entry */
;/*-----------------------------------------------------*/
;
;static int pick_lfn (	/* 1:succeeded, 0:buffer overflow or invalid LFN entry */
;	WCHAR* lfnbuf,		/* Pointer to the LFN working buffer */
;	BYTE* dir			/* Pointer to the LFN entry */
;)
;{
;	UINT i, s;
;	WCHAR wc, uc;
;
;
;	if (ld_word(dir + LDIR_FstClusLO) != 0) return 0;	/* Check LDIR_FstClusLO is 0 */
;
;	i = ((dir[LDIR_Ord] & ~LLEF) - 1) * 13;	/* Offset in the LFN buffer */
;
;	for (wc = 1, s = 0; s < 13; s++) {		/* Process all characters in the entry */
;		uc = ld_word(dir + LfnOfs[s]);		/* Pick an LFN character */
;		if (wc != 0) {
;			if (i >= FF_MAX_LFN + 1) return 0;	/* Buffer overflow? */
;			lfnbuf[i++] = wc = uc;			/* Store it */
;		} else {
;			if (uc != 0xFFFF) return 0;		/* Check filler */
;		}
;	}
;
;	if (dir[LDIR_Ord] & LLEF && wc != 0) {	/* Put terminator if it is the last LFN part and not terminated */
;		if (i >= FF_MAX_LFN + 1) return 0;	/* Buffer overflow? */
;		lfnbuf[i] = 0;
;	}
;
;	return 1;		/* The part of LFN is valid */
;}
;#endif
;
;
;#if !FF_FS_READONLY
;/*-----------------------------------------*/
;/* FAT-LFN: Create an entry of LFN entries */
;/*-----------------------------------------*/
;
;static void put_lfn (
;	const WCHAR* lfn,	/* Pointer to the LFN */
;	BYTE* dir,			/* Pointer to the LFN entry to be created */
;	BYTE ord,			/* LFN order (1-20) */
;	BYTE sum			/* Checksum of the corresponding SFN */
;)
;{
;	UINT i, s;
;	WCHAR wc;
;
;
;	dir[LDIR_Chksum] = sum;			/* Set checksum */
;	dir[LDIR_Attr] = AM_LFN;		/* Set attribute. LFN entry */
;	dir[LDIR_Type] = 0;
;	st_word(dir + LDIR_FstClusLO, 0);
;
;	i = (ord - 1) * 13;				/* Get offset in the LFN working buffer */
;	s = wc = 0;
;	do {
;		if (wc != 0xFFFF) wc = lfn[i++];	/* Get an effective character */
;		st_word(dir + LfnOfs[s], wc);		/* Put it */
;		if (wc == 0) wc = 0xFFFF;		/* Padding characters for following items */
;	} while (++s < 13);
;	if (wc == 0xFFFF || !lfn[i]) ord |= LLEF;	/* Last LFN part is the start of LFN sequence */
;	dir[LDIR_Ord] = ord;			/* Set the LFN order */
;}
;
;#endif	/* !FF_FS_READONLY */
;#endif	/* FF_USE_LFN */
;
;
;
;#if FF_USE_LFN && !FF_FS_READONLY
;/*-----------------------------------------------------------------------*/
;/* FAT-LFN: Create a Numbered SFN                                        */
;/*-----------------------------------------------------------------------*/
;
;static void gen_numname (
;	BYTE* dst,			/* Pointer to the buffer to store numbered SFN */
;	const BYTE* src,	/* Pointer to SFN */
;	const WCHAR* lfn,	/* Pointer to LFN */
;	UINT seq			/* Sequence number */
;)
;{
;	BYTE ns[8], c;
;	UINT i, j;
;	WCHAR wc;
;	DWORD sreg;
;
;
;	mem_cpy(dst, src, 11);
;
;	if (seq > 5) {	/* In case of many collisions, generate a hash number instead of sequential number */
;		sreg = seq;
;		while (*lfn) {	/* Create a CRC as hash value */
;			wc = *lfn++;
;			for (i = 0; i < 16; i++) {
;				sreg = (sreg << 1) + (wc & 1);
;				wc >>= 1;
;				if (sreg & 0x10000) sreg ^= 0x11021;
;			}
;		}
;		seq = (UINT)sreg;
;	}
;
;	/* itoa (hexdecimal) */
;	i = 7;
;	do {
;		c = (BYTE)((seq % 16) + '0');
;		if (c > '9') c += 7;
;		ns[i--] = c;
;		seq /= 16;
;	} while (seq);
;	ns[i] = '~';
;
;	/* Append the number to the SFN body */
;	for (j = 0; j < i && dst[j] != ' '; j++) {
;		if (dbc_1st(dst[j])) {
;			if (j == i - 1) break;
;			j++;
;		}
;	}
;	do {
;		dst[j++] = (i < 8) ? ns[i++] : ' ';
;	} while (j < 8);
;}
;#endif	/* FF_USE_LFN && !FF_FS_READONLY */
;
;
;
;#if FF_USE_LFN
;/*-----------------------------------------------------------------------*/
;/* FAT-LFN: Calculate checksum of an SFN entry                           */
;/*-----------------------------------------------------------------------*/
;
;static BYTE sum_sfn (
;	const BYTE* dir		/* Pointer to the SFN entry */
;)
;{
;	BYTE sum = 0;
;	UINT n = 11;
;
;	do {
;		sum = (sum >> 1) + (sum << 7) + *dir++;
;	} while (--n);
;	return sum;
;}
;
;#endif	/* FF_USE_LFN */
;
;
;
;#if FF_FS_EXFAT
;/*-----------------------------------------------------------------------*/
;/* exFAT: Checksum                                                       */
;/*-----------------------------------------------------------------------*/
;
;static WORD xdir_sum (	/* Get checksum of the directoly entry block */
;	const BYTE* dir		/* Directory entry block to be calculated */
;)
;{
;	UINT i, szblk;
;	WORD sum;
;
;
;	szblk = (dir[XDIR_NumSec] + 1) * SZDIRE;	/* Number of bytes of the entry block */
;	for (i = sum = 0; i < szblk; i++) {
;		if (i == XDIR_SetSum) {	/* Skip 2-byte sum field */
;			i++;
;		} else {
;			sum = ((sum & 1) ? 0x8000 : 0) + (sum >> 1) + dir[i];
;		}
;	}
;	return sum;
;}
;
;
;
;static WORD xname_sum (	/* Get check sum (to be used as hash) of the file name */
;	const WCHAR* name	/* File name to be calculated */
;)
;{
;	WCHAR chr;
;	WORD sum = 0;
;
;
;	while ((chr = *name++) != 0) {
;		chr = (WCHAR)ff_wtoupper(chr);		/* File name needs to be up-case converted */
;		sum = ((sum & 1) ? 0x8000 : 0) + (sum >> 1) + (chr & 0xFF);
;		sum = ((sum & 1) ? 0x8000 : 0) + (sum >> 1) + (chr >> 8);
;	}
;	return sum;
;}
;
;
;#if !FF_FS_READONLY && FF_USE_MKFS
;static DWORD xsum32 (	/* Returns 32-bit checksum */
;	BYTE  dat,			/* Byte to be calculated (byte-by-byte processing) */
;	DWORD sum			/* Previous sum value */
;)
;{
;	sum = ((sum & 1) ? 0x80000000 : 0) + (sum >> 1) + dat;
;	return sum;
;}
;#endif
;
;
;#if FF_FS_MINIMIZE <= 1 || FF_FS_RPATH >= 2
;/*------------------------------------------------------*/
;/* exFAT: Get object information from a directory block */
;/*------------------------------------------------------*/
;
;static void get_xfileinfo (
;	BYTE* dirb,			/* Pointer to the direcotry entry block 85+C0+C1s */
;	FILINFO* fno		/* Buffer to store the extracted file information */
;)
;{
;	WCHAR wc, hs;
;	UINT di, si, nc;
;
;	/* Get file name from the entry block */
;	si = SZDIRE * 2;	/* 1st C1 entry */
;	nc = 0; hs = 0; di = 0;
;	while (nc < dirb[XDIR_NumName]) {
;		if (si >= MAXDIRB(FF_MAX_LFN)) { di = 0; break; }	/* Truncated directory block? */
;		if ((si % SZDIRE) == 0) si += 2;		/* Skip entry type field */
;		wc = ld_word(dirb + si); si += 2; nc++;	/* Get a character */
;		if (hs == 0 && IsSurrogate(wc)) {	/* Is it a surrogate? */
;			hs = wc; continue;	/* Get low surrogate */
;		}
;		wc = put_utf((DWORD)hs << 16 | wc, &fno->fname[di], FF_LFN_BUF - di);	/* Store it in API encoding */
;		if (wc == 0) { di = 0; break; }	/* Buffer overflow or wrong encoding? */
;		di += wc;
;		hs = 0;
;	}
;	if (hs != 0) di = 0;					/* Broken surrogate pair? */
;	if (di == 0) fno->fname[di++] = '?';	/* Inaccessible object name? */
;	fno->fname[di] = 0;						/* Terminate the name */
;	fno->altname[0] = 0;					/* exFAT does not support SFN */
;
;	fno->fattrib = dirb[XDIR_Attr];			/* Attribute */
;	fno->fsize = (fno->fattrib & AM_DIR) ? 0 : ld_qword(dirb + XDIR_FileSize);	/* Size */
;	fno->ftime = ld_word(dirb + XDIR_ModTime + 0);	/* Time */
;	fno->fdate = ld_word(dirb + XDIR_ModTime + 2);	/* Date */
;}
;
;#endif	/* FF_FS_MINIMIZE <= 1 || FF_FS_RPATH >= 2 */
;
;
;/*-----------------------------------*/
;/* exFAT: Get a directry entry block */
;/*-----------------------------------*/
;
;static FRESULT load_xdir (	/* FR_INT_ERR: invalid entry block */
;	DIR* dp					/* Reading direcotry object pointing top of the entry block to load */
;)
;{
;	FRESULT res;
;	UINT i, sz_ent;
;	BYTE* dirb = dp->obj.fs->dirbuf;	/* Pointer to the on-memory direcotry entry block 85+C0+C1s */
;
;
;	/* Load file-directory entry */
;	res = move_window(dp->obj.fs, dp->sect);
;	if (res != FR_OK) return res;
;	if (dp->dir[XDIR_Type] != ET_FILEDIR) return FR_INT_ERR;	/* Invalid order */
;	mem_cpy(dirb + 0 * SZDIRE, dp->dir, SZDIRE);
;	sz_ent = (dirb[XDIR_NumSec] + 1) * SZDIRE;
;	if (sz_ent < 3 * SZDIRE || sz_ent > 19 * SZDIRE) return FR_INT_ERR;
;
;	/* Load stream-extension entry */
;	res = dir_next(dp, 0);
;	if (res == FR_NO_FILE) res = FR_INT_ERR;	/* It cannot be */
;	if (res != FR_OK) return res;
;	res = move_window(dp->obj.fs, dp->sect);
;	if (res != FR_OK) return res;
;	if (dp->dir[XDIR_Type] != ET_STREAM) return FR_INT_ERR;	/* Invalid order */
;	mem_cpy(dirb + 1 * SZDIRE, dp->dir, SZDIRE);
;	if (MAXDIRB(dirb[XDIR_NumName]) > sz_ent) return FR_INT_ERR;
;
;	/* Load file-name entries */
;	i = 2 * SZDIRE;	/* Name offset to load */
;	do {
;		res = dir_next(dp, 0);
;		if (res == FR_NO_FILE) res = FR_INT_ERR;	/* It cannot be */
;		if (res != FR_OK) return res;
;		res = move_window(dp->obj.fs, dp->sect);
;		if (res != FR_OK) return res;
;		if (dp->dir[XDIR_Type] != ET_FILENAME) return FR_INT_ERR;	/* Invalid order */
;		if (i < MAXDIRB(FF_MAX_LFN)) mem_cpy(dirb + i, dp->dir, SZDIRE);
;	} while ((i += SZDIRE) < sz_ent);
;
;	/* Sanity check (do it for only accessible object) */
;	if (i <= MAXDIRB(FF_MAX_LFN)) {
;		if (xdir_sum(dirb) != ld_word(dirb + XDIR_SetSum)) return FR_INT_ERR;
;	}
;	return FR_OK;
;}
;
;
;/*------------------------------------------------------------------*/
;/* exFAT: Initialize object allocation info with loaded entry block */
;/*------------------------------------------------------------------*/
;
;static void init_alloc_info (
;	FATFS* fs,		/* Filesystem object */
;	FFOBJID* obj	/* Object allocation information to be initialized */
;)
;{
;	obj->sclust = ld_dword(fs->dirbuf + XDIR_FstClus);		/* Start cluster */
;	obj->objsize = ld_qword(fs->dirbuf + XDIR_FileSize);	/* Size */
;	obj->stat = fs->dirbuf[XDIR_GenFlags] & 2;				/* Allocation status */
;	obj->n_frag = 0;										/* No last fragment info */
;}
;
;
;
;#if !FF_FS_READONLY || FF_FS_RPATH != 0
;/*------------------------------------------------*/
;/* exFAT: Load the object's directory entry block */
;/*------------------------------------------------*/
;
;static FRESULT load_obj_xdir (
;	DIR* dp,			/* Blank directory object to be used to access containing direcotry */
;	const FFOBJID* obj	/* Object with its containing directory information */
;)
;{
;	FRESULT res;
;
;	/* Open object containing directory */
;	dp->obj.fs = obj->fs;
;	dp->obj.sclust = obj->c_scl;
;	dp->obj.stat = (BYTE)obj->c_size;
;	dp->obj.objsize = obj->c_size & 0xFFFFFF00;
;	dp->obj.n_frag = 0;
;	dp->blk_ofs = obj->c_ofs;
;
;	res = dir_sdi(dp, dp->blk_ofs);	/* Goto object's entry block */
;	if (res == FR_OK) {
;		res = load_xdir(dp);		/* Load the object's entry block */
;	}
;	return res;
;}
;#endif
;
;
;#if !FF_FS_READONLY
;/*----------------------------------------*/
;/* exFAT: Store the directory entry block */
;/*----------------------------------------*/
;
;static FRESULT store_xdir (
;	DIR* dp				/* Pointer to the direcotry object */
;)
;{
;	FRESULT res;
;	UINT nent;
;	BYTE* dirb = dp->obj.fs->dirbuf;	/* Pointer to the direcotry entry block 85+C0+C1s */
;
;	/* Create set sum */
;	st_word(dirb + XDIR_SetSum, xdir_sum(dirb));
;	nent = dirb[XDIR_NumSec] + 1;
;
;	/* Store the direcotry entry block to the directory */
;	res = dir_sdi(dp, dp->blk_ofs);
;	while (res == FR_OK) {
;		res = move_window(dp->obj.fs, dp->sect);
;		if (res != FR_OK) break;
;		mem_cpy(dp->dir, dirb, SZDIRE);
;		dp->obj.fs->wflag = 1;
;		if (--nent == 0) break;
;		dirb += SZDIRE;
;		res = dir_next(dp, 0);
;	}
;	return (res == FR_OK || res == FR_DISK_ERR) ? res : FR_INT_ERR;
;}
;
;
;
;/*-------------------------------------------*/
;/* exFAT: Create a new directory enrty block */
;/*-------------------------------------------*/
;
;static void create_xdir (
;	BYTE* dirb,			/* Pointer to the direcotry entry block buffer */
;	const WCHAR* lfn	/* Pointer to the object name */
;)
;{
;	UINT i;
;	BYTE nc1, nlen;
;	WCHAR wc;
;
;
;	/* Create file-directory and stream-extension entry */
;	mem_set(dirb, 0, 2 * SZDIRE);
;	dirb[0 * SZDIRE + XDIR_Type] = ET_FILEDIR;
;	dirb[1 * SZDIRE + XDIR_Type] = ET_STREAM;
;
;	/* Create file-name entries */
;	i = SZDIRE * 2;	/* Top of file_name entries */
;	nlen = nc1 = 0; wc = 1;
;	do {
;		dirb[i++] = ET_FILENAME; dirb[i++] = 0;
;		do {	/* Fill name field */
;			if (wc != 0 && (wc = lfn[nlen]) != 0) nlen++;	/* Get a character if exist */
;			st_word(dirb + i, wc); 		/* Store it */
;			i += 2;
;		} while (i % SZDIRE != 0);
;		nc1++;
;	} while (lfn[nlen]);	/* Fill next entry if any char follows */
;
;	dirb[XDIR_NumName] = nlen;		/* Set name length */
;	dirb[XDIR_NumSec] = 1 + nc1;	/* Set secondary count (C0 + C1s) */
;	st_word(dirb + XDIR_NameHash, xname_sum(lfn));	/* Set name hash */
;}
;
;#endif	/* !FF_FS_READONLY */
;#endif	/* FF_FS_EXFAT */
;
;
;
;#if FF_FS_MINIMIZE <= 1 || FF_FS_RPATH >= 2 || FF_USE_LABEL || FF_FS_EXFAT
;/*-----------------------------------------------------------------------*/
;/* Read an object from the directory                                     */
;/*-----------------------------------------------------------------------*/
;
;#define DIR_READ_FILE(dp) dir_read(dp, 0)
;#define DIR_READ_LABEL(dp) dir_read(dp, 1)
;
;static FRESULT dir_read (
;	DIR* dp,		/* Pointer to the directory object */
;	int vol			/* Filtered by 0:file/directory or 1:volume label */
;)
;{
	.line	2377
	.line	2381
	FFDOS
	func
	.function	2381
~~dir_read:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L276
	tcs
	phd
	tcd
dp_0	set	4
vol_0	set	8
	.block	2381
;	FRESULT res = FR_NO_FILE;
;	FATFS *fs = dp->obj.fs;
;	BYTE attr, b;
;#if FF_USE_LFN
;	BYTE ord = 0xFF, sum = 0xFF;
;#endif
;
;	while (dp->sect) {
res_1	set	0
fs_1	set	2
attr_1	set	6
b_1	set	7
	.sym	res,0,5,1,16
	.sym	fs,2,138,1,32,80
	.sym	attr,6,14,1,8
	.sym	b,7,14,1,8
	.sym	dp,4,138,6,32,83
	.sym	vol,8,5,6,16
	lda	#$4
	sta	<L277+res_1
	lda	[<L276+dp_0]
	sta	<L277+fs_1
	ldy	#$2
	lda	[<L276+dp_0],Y
	sta	<L277+fs_1+2
	.line	2389
L10118:
	ldy	#$18
	lda	[<L276+dp_0],Y
	ldy	#$1a
	ora	[<L276+dp_0],Y
	bne	L279
	brl	L10119
L279:
	.line	2389
;		res = move_window(fs, dp->sect);
	.line	2390
	ldy	#$1a
	lda	[<L276+dp_0],Y
	pha
	ldy	#$18
	lda	[<L276+dp_0],Y
	pha
	pei	<L277+fs_1+2
	pei	<L277+fs_1
	jsl	~~move_window
	sta	<L277+res_1
;		if (res != FR_OK) break;
	.line	2391
	lda	<L277+res_1
	beq	L280
	brl	L10119
L280:
;		b = dp->dir[DIR_Name];	/* Test for the entry type */
	.line	2392
	ldy	#$1c
	lda	[<L276+dp_0],Y
	sta	<R0
	ldy	#$1e
	lda	[<L276+dp_0],Y
	sta	<R0+2
	sep	#$20
	longa	off
	lda	[<R0]
	sta	<L277+b_1
	rep	#$20
	longa	on
;		if (b == 0) {
	.line	2393
	lda	<L277+b_1
	and	#$ff
	beq	L281
	brl	L10120
L281:
	.line	2393
;			res = FR_NO_FILE; break; /* Reached to end of the directory */
	.line	2394
	lda	#$4
	sta	<L277+res_1
	.line	2394
	brl	L10119
;		}
	.line	2395
;#if FF_FS_EXFAT
;		if (fs->fs_type == FS_EXFAT) {	/* On the exFAT volume */
;			if (FF_USE_LABEL && vol) {
;				if (b == ET_VLABEL) break;	/* Volume label entry? */
;			} else {
;				if (b == ET_FILEDIR) {		/* Start of the file entry block? */
;					dp->blk_ofs = dp->dptr;	/* Get location of the block */
;					res = load_xdir(dp);	/* Load the entry block */
;					if (res == FR_OK) {
;						dp->obj.attr = fs->dirbuf[XDIR_Attr] & AM_MASK;	/* Get attribute */
;					}
;					break;
;				}
;			}
;		} else
;#endif
;		{	/* On the FAT/FAT32 volume */
L10120:
	.line	2412
;			dp->obj.attr = attr = dp->dir[DIR_Attr] & AM_MASK;	/* Get attribute */
	.line	2413
	ldy	#$1c
	lda	[<L276+dp_0],Y
	sta	<R0
	ldy	#$1e
	lda	[<L276+dp_0],Y
	sta	<R0+2
	sep	#$20
	longa	off
	ldy	#$b
	lda	[<R0],Y
	and	#<$3f
	sta	<L277+attr_1
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	lda	<L277+attr_1
	ldy	#$6
	sta	[<L276+dp_0],Y
	rep	#$20
	longa	on
;#if FF_USE_LFN		/* LFN configuration */
;			if (b == DDEM || b == '.' || (int)((attr & ~AM_ARC) == AM_VOL) != vol) {	/* An entry without valid data */
;				ord = 0xFF;
;			} else {
;				if (attr == AM_LFN) {			/* An LFN entry is found */
;					if (b & LLEF) {			/* Is it start of an LFN sequence? */
;						sum = dp->dir[LDIR_Chksum];
;						b &= (BYTE)~LLEF; ord = b;
;						dp->blk_ofs = dp->dptr;
;					}
;					/* Check LFN validity and capture it */
;					ord = (b == ord && sum == dp->dir[LDIR_Chksum] && pick_lfn(fs->lfnbuf, dp->dir)) ? ord - 1 : 0xFF;
;				} else {					/* An SFN entry is found */
;					if (ord != 0 || sum != sum_sfn(dp->dir)) {	/* Is there a valid LFN? */
;						dp->blk_ofs = 0xFFFFFFFF;			/* It has no LFN. */
;					}
;					break;
;				}
;			}
;#else		/* Non LFN configuration */
;			if (b != DDEM && b != '.' && attr != AM_LFN && (int)((attr & ~AM_ARC) == AM_VOL) == vol) {	/* Is it a valid entry? */
	.line	2434
	sep	#$20
	longa	off
	lda	<L277+b_1
	cmp	#<$e5
	rep	#$20
	longa	on
	bne	L282
	brl	L10121
L282:
	sep	#$20
	longa	off
	lda	<L277+b_1
	cmp	#<$2e
	rep	#$20
	longa	on
	bne	L283
	brl	L10121
L283:
	sep	#$20
	longa	off
	lda	<L277+attr_1
	cmp	#<$f
	rep	#$20
	longa	on
	bne	L284
	brl	L10121
L284:
	stz	<R0
	lda	<L277+attr_1
	and	#$ff
	and	#<$ffffffdf
	sta	<R1
	lda	<R1
	cmp	#<$8
	beq	L286
	brl	L285
L286:
	inc	<R0
L285:
	lda	<R0
	cmp	<L276+vol_0
	beq	L287
	brl	L10121
L287:
	.line	2434
;				break;
	.line	2435
	brl	L10119
;			}
	.line	2436
;#endif
;		}
L10121:
	.line	2438
;		res = dir_next(dp, 0);		/* Next entry */
	.line	2439
	pea	#<$0
	pei	<L276+dp_0+2
	pei	<L276+dp_0
	jsl	~~dir_next
	sta	<L277+res_1
;		if (res != FR_OK) break;
	.line	2440
	lda	<L277+res_1
	beq	L288
	brl	L10119
L288:
;	}
	.line	2441
	brl	L10118
L10119:
;
;	if (res != FR_OK) dp->sect = 0;		/* Terminate the read operation on error or EOT */
	.line	2443
	lda	<L277+res_1
	bne	L289
	brl	L10122
L289:
	.line	2443
	lda	#$0
	ldy	#$18
	sta	[<L276+dp_0],Y
	lda	#$0
	ldy	#$1a
	sta	[<L276+dp_0],Y
;	return res;
L10122:
	.line	2444
	lda	<L277+res_1
L290:
	tay
	lda	<L276+2
	sta	<L276+2+6
	lda	<L276+1
	sta	<L276+1+6
	pld
	tsc
	clc
	adc	#L276+6
	tcs
	tya
	rtl
;}
	.line	2445
	.endblock	2445
L276	equ	16
L277	equ	9
	ends
	efunc
	.endfunc	2445,9,16
	.line	2445
;
;#endif	/* FF_FS_MINIMIZE <= 1 || FF_USE_LABEL || FF_FS_RPATH >= 2 */
;
;
;
;/*-----------------------------------------------------------------------*/
;/* Directory handling - Find an object in the directory                  */
;/*-----------------------------------------------------------------------*/
;
;static FRESULT dir_find (	/* FR_OK(0):succeeded, !=0:error */
;	DIR* dp					/* Pointer to the directory object with the file name */
;)
;{
	.line	2455
	.line	2458
	FFDOS
	func
	.function	2458
~~dir_find:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L291
	tcs
	phd
	tcd
dp_0	set	4
	.block	2458
;	FRESULT res;
;	FATFS *fs = dp->obj.fs;
;	BYTE c;
;#if FF_USE_LFN
;	BYTE a, ord, sum;
;#endif
;
;	res = dir_sdi(dp, 0);			/* Rewind directory object */
res_1	set	0
fs_1	set	2
c_1	set	6
	.sym	res,0,5,1,16
	.sym	fs,2,138,1,32,80
	.sym	c,6,14,1,8
	.sym	dp,4,138,6,32,83
	lda	[<L291+dp_0]
	sta	<L292+fs_1
	ldy	#$2
	lda	[<L291+dp_0],Y
	sta	<L292+fs_1+2
	.line	2466
	pea	#^$0
	pea	#<$0
	pei	<L291+dp_0+2
	pei	<L291+dp_0
	jsl	~~dir_sdi
	sta	<L292+res_1
;	if (res != FR_OK) return res;
	.line	2467
	lda	<L292+res_1
	bne	L294
	brl	L10123
L294:
	.line	2467
	lda	<L292+res_1
L295:
	tay
	lda	<L291+2
	sta	<L291+2+4
	lda	<L291+1
	sta	<L291+1+4
	pld
	tsc
	clc
	adc	#L291+4
	tcs
	tya
	rtl
;#if FF_FS_EXFAT
;	if (fs->fs_type == FS_EXFAT) {	/* On the exFAT volume */
;		BYTE nc;
;		UINT di, ni;
;		WORD hash = xname_sum(fs->lfnbuf);		/* Hash value of the name to find */
;
;		while ((res = DIR_READ_FILE(dp)) == FR_OK) {	/* Read an item */
;#if FF_MAX_LFN < 255
;			if (fs->dirbuf[XDIR_NumName] > FF_MAX_LFN) continue;			/* Skip comparison if inaccessible object name */
;#endif
;			if (ld_word(fs->dirbuf + XDIR_NameHash) != hash) continue;	/* Skip comparison if hash mismatched */
;			for (nc = fs->dirbuf[XDIR_NumName], di = SZDIRE * 2, ni = 0; nc; nc--, di += 2, ni++) {	/* Compare the name */
;				if ((di % SZDIRE) == 0) di += 2;
;				if (ff_wtoupper(ld_word(fs->dirbuf + di)) != ff_wtoupper(fs->lfnbuf[ni])) break;
;			}
;			if (nc == 0 && !fs->lfnbuf[ni]) break;	/* Name matched? */
;		}
;		return res;
;	}
;#endif
;	/* On the FAT/FAT32 volume */
;#if FF_USE_LFN
;	ord = sum = 0xFF; dp->blk_ofs = 0xFFFFFFFF;	/* Reset LFN sequence */
;#endif
;	do {
L10123:
	.line	2492
L10126:
	.line	2492
;		res = move_window(fs, dp->sect);
	.line	2493
	ldy	#$1a
	lda	[<L291+dp_0],Y
	pha
	ldy	#$18
	lda	[<L291+dp_0],Y
	pha
	pei	<L292+fs_1+2
	pei	<L292+fs_1
	jsl	~~move_window
	sta	<L292+res_1
;		if (res != FR_OK) break;
	.line	2494
	lda	<L292+res_1
	beq	L296
	brl	L10125
L296:
;		c = dp->dir[DIR_Name];
	.line	2495
	ldy	#$1c
	lda	[<L291+dp_0],Y
	sta	<R0
	ldy	#$1e
	lda	[<L291+dp_0],Y
	sta	<R0+2
	sep	#$20
	longa	off
	lda	[<R0]
	sta	<L292+c_1
	rep	#$20
	longa	on
;		if (c == 0) { res = FR_NO_FILE; break; }	/* Reached to end of table */
	.line	2496
	lda	<L292+c_1
	and	#$ff
	beq	L297
	brl	L10127
L297:
	.line	2496
	.line	2496
	lda	#$4
	sta	<L292+res_1
	.line	2496
	brl	L10125
	.line	2496
;#if FF_USE_LFN		/* LFN configuration */
;		dp->obj.attr = a = dp->dir[DIR_Attr] & AM_MASK;
;		if (c == DDEM || ((a & AM_VOL) && a != AM_LFN)) {	/* An entry without valid data */
;			ord = 0xFF; dp->blk_ofs = 0xFFFFFFFF;	/* Reset LFN sequence */
;		} else {
;			if (a == AM_LFN) {			/* An LFN entry is found */
;				if (!(dp->fn[NSFLAG] & NS_NOLFN)) {
;					if (c & LLEF) {		/* Is it start of LFN sequence? */
;						sum = dp->dir[LDIR_Chksum];
;						c &= (BYTE)~LLEF; ord = c;	/* LFN start order */
;						dp->blk_ofs = dp->dptr;	/* Start offset of LFN */
;					}
;					/* Check validity of the LFN entry and compare it with given name */
;					ord = (c == ord && sum == dp->dir[LDIR_Chksum] && cmp_lfn(fs->lfnbuf, dp->dir)) ? ord - 1 : 0xFF;
;				}
;			} else {					/* An SFN entry is found */
;				if (ord == 0 && sum == sum_sfn(dp->dir)) break;	/* LFN matched? */
;				if (!(dp->fn[NSFLAG] & NS_LOSS) && !mem_cmp(dp->dir, dp->fn, 11)) break;	/* SFN matched? */
;				ord = 0xFF; dp->blk_ofs = 0xFFFFFFFF;	/* Reset LFN sequence */
;			}
;		}
;#else		/* Non LFN configuration */
;		dp->obj.attr = dp->dir[DIR_Attr] & AM_MASK;
L10127:
	.line	2519
	ldy	#$1c
	lda	[<L291+dp_0],Y
	sta	<R0
	ldy	#$1e
	lda	[<L291+dp_0],Y
	sta	<R0+2
	sep	#$20
	longa	off
	ldy	#$b
	lda	[<R0],Y
	and	#<$3f
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	ldy	#$6
	sta	[<L291+dp_0],Y
	rep	#$20
	longa	on
;		if (!(dp->dir[DIR_Attr] & AM_VOL) && !mem_cmp(dp->dir, dp->fn, 11)) break;	/* Is it a valid entry? */
	.line	2520
	ldy	#$1c
	lda	[<L291+dp_0],Y
	sta	<R0
	ldy	#$1e
	lda	[<L291+dp_0],Y
	sta	<R0+2
	sep	#$20
	longa	off
	ldy	#$b
	lda	[<R0],Y
	and	#<$8
	rep	#$20
	longa	on
	beq	L299
	brl	L298
L299:
	pea	#<$b
	clc
	lda	#$20
	adc	<L291+dp_0
	sta	<R0
	lda	#$0
	adc	<L291+dp_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$1e
	lda	[<L291+dp_0],Y
	pha
	ldy	#$1c
	lda	[<L291+dp_0],Y
	pha
	jsl	~~mem_cmp
	tax
	bne	L300
	brl	L10125
L300:
L298:
;#endif
;		res = dir_next(dp, 0);	/* Next entry */
	.line	2522
	pea	#<$0
	pei	<L291+dp_0+2
	pei	<L291+dp_0
	jsl	~~dir_next
	sta	<L292+res_1
;	} while (res == FR_OK);
	.line	2523
L10124:
	lda	<L292+res_1
	bne	L301
	brl	L10126
L301:
L10125:
;
;	return res;
	.line	2525
	lda	<L292+res_1
	brl	L295
;}
	.line	2526
	.endblock	2526
L291	equ	11
L292	equ	5
	ends
	efunc
	.endfunc	2526,5,11
	.line	2526
;
;
;
;
;#if !FF_FS_READONLY
;/*-----------------------------------------------------------------------*/
;/* Register an object to the directory                                   */
;/*-----------------------------------------------------------------------*/
;
;static FRESULT dir_register (	/* FR_OK:succeeded, FR_DENIED:no free entry or too many SFN collision, FR_DISK_ERR:disk error */
;	DIR* dp						/* Target directory with object name to be created */
;)
;{
	.line	2536
	.line	2539
	FFDOS
	func
	.function	2539
~~dir_register:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L302
	tcs
	phd
	tcd
dp_0	set	4
	.block	2539
;	FRESULT res;
;	FATFS *fs = dp->obj.fs;
;#if FF_USE_LFN		/* LFN configuration */
;	UINT n, nlen, nent;
;	BYTE sn[12], sum;
;
;
;	if (dp->fn[NSFLAG] & (NS_DOT | NS_NONAME)) return FR_INVALID_NAME;	/* Check name validity */
;	for (nlen = 0; fs->lfnbuf[nlen]; nlen++) ;	/* Get lfn length */
;
;#if FF_FS_EXFAT
;	if (fs->fs_type == FS_EXFAT) {	/* On the exFAT volume */
;		nent = (nlen + 14) / 15 + 2;	/* Number of entries to allocate (85+C0+C1s) */
;		res = dir_alloc(dp, nent);		/* Allocate directory entries */
;		if (res != FR_OK) return res;
;		dp->blk_ofs = dp->dptr - SZDIRE * (nent - 1);	/* Set the allocated entry block offset */
;
;		if (dp->obj.stat & 4) {			/* Has the directory been stretched by new allocation? */
;			dp->obj.stat &= ~4;
;			res = fill_first_frag(&dp->obj);	/* Fill the first fragment on the FAT if needed */
;			if (res != FR_OK) return res;
;			res = fill_last_frag(&dp->obj, dp->clust, 0xFFFFFFFF);	/* Fill the last fragment on the FAT if needed */
;			if (res != FR_OK) return res;
;			if (dp->obj.sclust != 0) {		/* Is it a sub-directory? */
;				DIR dj;
;
;				res = load_obj_xdir(&dj, &dp->obj);	/* Load the object status */
;				if (res != FR_OK) return res;
;				dp->obj.objsize += (DWORD)fs->csize * SS(fs);			/* Increase the directory size by cluster size */
;				st_qword(fs->dirbuf + XDIR_FileSize, dp->obj.objsize);
;				st_qword(fs->dirbuf + XDIR_ValidFileSize, dp->obj.objsize);
;				fs->dirbuf[XDIR_GenFlags] = dp->obj.stat | 1;			/* Update the allocation status */
;				res = store_xdir(&dj);				/* Store the object status */
;				if (res != FR_OK) return res;
;			}
;		}
;
;		create_xdir(fs->dirbuf, fs->lfnbuf);	/* Create on-memory directory block to be written later */
;		return FR_OK;
;	}
;#endif
;	/* On the FAT/FAT32 volume */
;	mem_cpy(sn, dp->fn, 12);
;	if (sn[NSFLAG] & NS_LOSS) {			/* When LFN is out of 8.3 format, generate a numbered name */
;		dp->fn[NSFLAG] = NS_NOLFN;		/* Find only SFN */
;		for (n = 1; n < 100; n++) {
;			gen_numname(dp->fn, sn, fs->lfnbuf, n);	/* Generate a numbered name */
;			res = dir_find(dp);				/* Check if the name collides with existing SFN */
;			if (res != FR_OK) break;
;		}
;		if (n == 100) return FR_DENIED;		/* Abort if too many collisions */
;		if (res != FR_NO_FILE) return res;	/* Abort if the result is other than 'not collided' */
;		dp->fn[NSFLAG] = sn[NSFLAG];
;	}
;
;	/* Create an SFN with/without LFNs. */
;	nent = (sn[NSFLAG] & NS_LFN) ? (nlen + 12) / 13 + 1 : 1;	/* Number of entries to allocate */
;	res = dir_alloc(dp, nent);		/* Allocate entries */
;	if (res == FR_OK && --nent) {	/* Set LFN entry if needed */
;		res = dir_sdi(dp, dp->dptr - nent * SZDIRE);
;		if (res == FR_OK) {
;			sum = sum_sfn(dp->fn);	/* Checksum value of the SFN tied to the LFN */
;			do {					/* Store LFN entries in bottom first */
;				res = move_window(fs, dp->sect);
;				if (res != FR_OK) break;
;				put_lfn(fs->lfnbuf, dp->dir, (BYTE)nent, sum);
;				fs->wflag = 1;
;				res = dir_next(dp, 0);	/* Next entry */
;			} while (res == FR_OK && --nent);
;		}
;	}
;
;#else	/* Non LFN configuration */
;	res = dir_alloc(dp, 1);		/* Allocate an entry for SFN */
res_1	set	0
fs_1	set	2
	.sym	res,0,5,1,16
	.sym	fs,2,138,1,32,80
	.sym	dp,4,138,6,32,83
	lda	[<L302+dp_0]
	sta	<L303+fs_1
	ldy	#$2
	lda	[<L302+dp_0],Y
	sta	<L303+fs_1+2
	.line	2613
	pea	#<$1
	pei	<L302+dp_0+2
	pei	<L302+dp_0
	jsl	~~dir_alloc
	sta	<L303+res_1
;
;#endif
;
;	/* Set SFN entry */
;	if (res == FR_OK) {
	.line	2618
	lda	<L303+res_1
	beq	L305
	brl	L10128
L305:
	.line	2618
;		res = move_window(fs, dp->sect);
	.line	2619
	ldy	#$1a
	lda	[<L302+dp_0],Y
	pha
	ldy	#$18
	lda	[<L302+dp_0],Y
	pha
	pei	<L303+fs_1+2
	pei	<L303+fs_1
	jsl	~~move_window
	sta	<L303+res_1
;		if (res == FR_OK) {
	.line	2620
	lda	<L303+res_1
	beq	L306
	brl	L10129
L306:
	.line	2620
;			mem_set(dp->dir, 0, SZDIRE);	/* Clean the entry */
	.line	2621
	pea	#<$20
	pea	#<$0
	ldy	#$1e
	lda	[<L302+dp_0],Y
	pha
	ldy	#$1c
	lda	[<L302+dp_0],Y
	pha
	jsl	~~mem_set
;			mem_cpy(dp->dir + DIR_Name, dp->fn, 11);	/* Put SFN */
	.line	2622
	pea	#<$b
	clc
	lda	#$20
	adc	<L302+dp_0
	sta	<R0
	lda	#$0
	adc	<L302+dp_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$1e
	lda	[<L302+dp_0],Y
	pha
	ldy	#$1c
	lda	[<L302+dp_0],Y
	pha
	jsl	~~mem_cpy
;#if FF_USE_LFN
;			dp->dir[DIR_NTres] = dp->fn[NSFLAG] & (NS_BODY | NS_EXT);	/* Put NT flag */
;#endif
;			fs->wflag = 1;
	.line	2626
	sep	#$20
	longa	off
	lda	#$1
	ldy	#$3
	sta	[<L303+fs_1],Y
	rep	#$20
	longa	on
;		}
	.line	2627
;	}
L10129:
	.line	2628
;
;	return res;
L10128:
	.line	2630
	lda	<L303+res_1
L307:
	tay
	lda	<L302+2
	sta	<L302+2+4
	lda	<L302+1
	sta	<L302+1+4
	pld
	tsc
	clc
	adc	#L302+4
	tcs
	tya
	rtl
;}
	.line	2631
	.endblock	2631
L302	equ	10
L303	equ	5
	ends
	efunc
	.endfunc	2631,5,10
	.line	2631
;
;#endif /* !FF_FS_READONLY */
;
;
;
;#if !FF_FS_READONLY && FF_FS_MINIMIZE == 0
;/*-----------------------------------------------------------------------*/
;/* Remove an object from the directory                                   */
;/*-----------------------------------------------------------------------*/
;
;static FRESULT dir_remove (	/* FR_OK:Succeeded, FR_DISK_ERR:A disk error */
;	DIR* dp					/* Directory object pointing the entry to be removed */
;)
;{
	.line	2642
	.line	2645
	FFDOS
	func
	.function	2645
~~dir_remove:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L308
	tcs
	phd
	tcd
dp_0	set	4
	.block	2645
;	FRESULT res;
;	FATFS *fs = dp->obj.fs;
;#if FF_USE_LFN		/* LFN configuration */
;	DWORD last = dp->dptr;
;
;	res = (dp->blk_ofs == 0xFFFFFFFF) ? FR_OK : dir_sdi(dp, dp->blk_ofs);	/* Goto top of the entry block if LFN is exist */
;	if (res == FR_OK) {
;		do {
;			res = move_window(fs, dp->sect);
;			if (res != FR_OK) break;
;			if (FF_FS_EXFAT && fs->fs_type == FS_EXFAT) {	/* On the exFAT volume */
;				dp->dir[XDIR_Type] &= 0x7F;	/* Clear the entry InUse flag. */
;			} else {									/* On the FAT/FAT32 volume */
;				dp->dir[DIR_Name] = DDEM;	/* Mark the entry 'deleted'. */
;			}
;			fs->wflag = 1;
;			if (dp->dptr >= last) break;	/* If reached last entry then all entries of the object has been deleted. */
;			res = dir_next(dp, 0);	/* Next entry */
;		} while (res == FR_OK);
;		if (res == FR_NO_FILE) res = FR_INT_ERR;
;	}
;#else			/* Non LFN configuration */
;
;	res = move_window(fs, dp->sect);
res_1	set	0
fs_1	set	2
	.sym	res,0,5,1,16
	.sym	fs,2,138,1,32,80
	.sym	dp,4,138,6,32,83
	lda	[<L308+dp_0]
	sta	<L309+fs_1
	ldy	#$2
	lda	[<L308+dp_0],Y
	sta	<L309+fs_1+2
	.line	2669
	ldy	#$1a
	lda	[<L308+dp_0],Y
	pha
	ldy	#$18
	lda	[<L308+dp_0],Y
	pha
	pei	<L309+fs_1+2
	pei	<L309+fs_1
	jsl	~~move_window
	sta	<L309+res_1
;	if (res == FR_OK) {
	.line	2670
	lda	<L309+res_1
	beq	L311
	brl	L10130
L311:
	.line	2670
;		dp->dir[DIR_Name] = DDEM;	/* Mark the entry 'deleted'.*/
	.line	2671
	ldy	#$1c
	lda	[<L308+dp_0],Y
	sta	<R0
	ldy	#$1e
	lda	[<L308+dp_0],Y
	sta	<R0+2
	sep	#$20
	longa	off
	lda	#$e5
	sta	[<R0]
	rep	#$20
	longa	on
;		fs->wflag = 1;
	.line	2672
	sep	#$20
	longa	off
	lda	#$1
	ldy	#$3
	sta	[<L309+fs_1],Y
	rep	#$20
	longa	on
;	}
	.line	2673
;#endif
;
;	return res;
L10130:
	.line	2676
	lda	<L309+res_1
L312:
	tay
	lda	<L308+2
	sta	<L308+2+4
	lda	<L308+1
	sta	<L308+1+4
	pld
	tsc
	clc
	adc	#L308+4
	tcs
	tya
	rtl
;}
	.line	2677
	.endblock	2677
L308	equ	10
L309	equ	5
	ends
	efunc
	.endfunc	2677,5,10
	.line	2677
;
;#endif /* !FF_FS_READONLY && FF_FS_MINIMIZE == 0 */
;
;
;
;#if FF_FS_MINIMIZE <= 1 || FF_FS_RPATH >= 2
;/*-----------------------------------------------------------------------*/
;/* Get file information from directory entry                             */
;/*-----------------------------------------------------------------------*/
;
;static void get_fileinfo (
;	DIR* dp,			/* Pointer to the directory object */
;	FILINFO* fno		/* Pointer to the file information to be filled */
;)
;{
	.line	2688
	.line	2692
	FFDOS
	func
	.function	2692
~~get_fileinfo:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L313
	tcs
	phd
	tcd
dp_0	set	4
fno_0	set	8
	.block	2692
;	UINT si, di;
;#if FF_USE_LFN
;	BYTE lcf;
;	WCHAR wc, hs;
;	FATFS *fs = dp->obj.fs;
;#else
;	TCHAR c;
;#endif
;
;
;	fno->fname[0] = 0;			/* Invaidate file info */
si_1	set	0
di_1	set	2
c_1	set	4
	.sym	si,0,16,1,16
	.sym	di,2,16,1,16
	.sym	c,4,14,1,8
	.sym	dp,4,138,6,32,83
	.sym	fno,8,138,6,32,84
	.line	2703
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$9
	sta	[<L313+fno_0],Y
	rep	#$20
	longa	on
;	if (dp->sect == 0) return;	/* Exit if read pointer has reached end of directory */
	.line	2704
	ldy	#$18
	lda	[<L313+dp_0],Y
	ldy	#$1a
	ora	[<L313+dp_0],Y
	beq	L316
	brl	L10131
L316:
	.line	2704
L317:
	lda	<L313+2
	sta	<L313+2+8
	lda	<L313+1
	sta	<L313+1+8
	pld
	tsc
	clc
	adc	#L313+8
	tcs
	rtl
;
;#if FF_USE_LFN		/* LFN configuration */
;#if FF_FS_EXFAT
;	if (fs->fs_type == FS_EXFAT) {	/* On the exFAT volume */
;		get_xfileinfo(fs->dirbuf, fno);
;		return;
;	} else
;#endif
;	{	/* On the FAT/FAT32 volume */
;		if (dp->blk_ofs != 0xFFFFFFFF) {	/* Get LFN if available */
;			si = di = hs = 0;
;			while (fs->lfnbuf[si] != 0) {
;				wc = fs->lfnbuf[si++];		/* Get an LFN character (UTF-16) */
;				if (hs == 0 && IsSurrogate(wc)) {	/* Is it a surrogate? */
;					hs = wc; continue;		/* Get low surrogate */
;				}
;				wc = put_utf((DWORD)hs << 16 | wc, &fno->fname[di], FF_LFN_BUF - di);	/* Store it in UTF-16 or UTF-8 encoding */
;				if (wc == 0) { di = 0; break; }	/* Invalid char or buffer overflow? */
;				di += wc;
;				hs = 0;
;			}
;			if (hs != 0) di = 0;	/* Broken surrogate pair? */
;			fno->fname[di] = 0;		/* Terminate the LFN (null string means LFN is invalid) */
;		}
;	}
;
;	si = di = 0;
;	while (si < 11) {		/* Get SFN from SFN entry */
;		wc = dp->dir[si++];			/* Get a char */
;		if (wc == ' ') continue;	/* Skip padding spaces */
;		if (wc == RDDEM) wc = DDEM;	/* Restore replaced DDEM character */
;		if (si == 9 && di < FF_SFN_BUF) fno->altname[di++] = '.';	/* Insert a . if extension is exist */
;#if FF_LFN_UNICODE >= 1	/* Unicode output */
;		if (dbc_1st((BYTE)wc) && si != 8 && si != 11 && dbc_2nd(dp->dir[si])) {	/* Make a DBC if needed */
;			wc = wc << 8 | dp->dir[si++];
;		}
;		wc = ff_oem2uni(wc, CODEPAGE);		/* ANSI/OEM -> Unicode */
;		if (wc == 0) { di = 0; break; }		/* Wrong char in the current code page? */
;		wc = put_utf(wc, &fno->altname[di], FF_SFN_BUF - di);	/* Store it in Unicode */
;		if (wc == 0) { di = 0; break; }		/* Buffer overflow? */
;		di += wc;
;#else					/* ANSI/OEM output */
;		fno->altname[di++] = (TCHAR)wc;	/* Store it without any conversion */
;#endif
;	}
;	fno->altname[di] = 0;	/* Terminate the SFN  (null string means SFN is invalid) */
;
;	if (fno->fname[0] == 0) {	/* If LFN is invalid, altname[] needs to be copied to fname[] */
;		if (di == 0) {	/* If LFN and SFN both are invalid, this object is inaccesible */
;			fno->fname[di++] = '?';
;		} else {
;			for (si = di = 0, lcf = NS_BODY; fno->altname[si]; si++, di++) {	/* Copy altname[] to fname[] with case information */
;				wc = (WCHAR)fno->altname[si];
;				if (wc == '.') lcf = NS_EXT;
;				if (IsUpper(wc) && (dp->dir[DIR_NTres] & lcf)) wc += 0x20;
;				fno->fname[di] = (TCHAR)wc;
;			}
;		}
;		fno->fname[di] = 0;	/* Terminate the LFN */
;		if (!dp->dir[DIR_NTres]) fno->altname[0] = 0;	/* Altname is not needed if neither LFN nor case info is exist. */
;	}
;
;#else	/* Non-LFN configuration */
;	si = di = 0;
L10131:
	.line	2768
	stz	<L314+di_1
	stz	<L314+si_1
;	while (si < 11) {		/* Copy name body and extension */
	.line	2769
L10132:
	lda	<L314+si_1
	cmp	#<$b
	bcc	L318
	brl	L10133
L318:
	.line	2769
;		c = (TCHAR)dp->dir[si++];
	.line	2770
	ldy	#$1c
	lda	[<L313+dp_0],Y
	sta	<R0
	ldy	#$1e
	lda	[<L313+dp_0],Y
	sta	<R0+2
	sep	#$20
	longa	off
	ldy	<L314+si_1
	lda	[<R0],Y
	sta	<L314+c_1
	rep	#$20
	longa	on
	inc	<L314+si_1
;		if (c == ' ') continue;		/* Skip padding spaces */
	.line	2771
	sep	#$20
	longa	off
	lda	<L314+c_1
	cmp	#<$20
	rep	#$20
	longa	on
	bne	L319
	brl	L10132
L319:
;		if (c == RDDEM) c = DDEM;	/* Restore replaced DDEM character */
	.line	2772
	sep	#$20
	longa	off
	lda	<L314+c_1
	cmp	#<$5
	rep	#$20
	longa	on
	beq	L320
	brl	L10134
L320:
	.line	2772
	sep	#$20
	longa	off
	lda	#$e5
	sta	<L314+c_1
	rep	#$20
	longa	on
;		if (si == 9) fno->fname[di++] = '.';/* Insert a . if extension is exist */
L10134:
	.line	2773
	lda	<L314+si_1
	cmp	#<$9
	beq	L321
	brl	L10135
L321:
	.line	2773
	clc
	lda	#$9
	adc	<L314+di_1
	sta	<R0
	sep	#$20
	longa	off
	lda	#$2e
	ldy	<R0
	sta	[<L313+fno_0],Y
	rep	#$20
	longa	on
	inc	<L314+di_1
;		fno->fname[di++] = c;
L10135:
	.line	2774
	clc
	lda	#$9
	adc	<L314+di_1
	sta	<R0
	sep	#$20
	longa	off
	lda	<L314+c_1
	ldy	<R0
	sta	[<L313+fno_0],Y
	rep	#$20
	longa	on
	inc	<L314+di_1
;	}
	.line	2775
	brl	L10132
L10133:
;	fno->fname[di] = 0;
	.line	2776
	clc
	lda	#$9
	adc	<L314+di_1
	sta	<R0
	sep	#$20
	longa	off
	lda	#$0
	ldy	<R0
	sta	[<L313+fno_0],Y
	rep	#$20
	longa	on
;#endif
;
;	fno->fattrib = dp->dir[DIR_Attr];					/* Attribute */
	.line	2779
	ldy	#$1c
	lda	[<L313+dp_0],Y
	sta	<R0
	ldy	#$1e
	lda	[<L313+dp_0],Y
	sta	<R0+2
	sep	#$20
	longa	off
	ldy	#$b
	lda	[<R0],Y
	ldy	#$8
	sta	[<L313+fno_0],Y
	rep	#$20
	longa	on
;	fno->fsize = ld_dword(dp->dir + DIR_FileSize);		/* Size */
	.line	2780
	clc
	lda	#$1c
	ldy	#$1c
	adc	[<L313+dp_0],Y
	sta	<R0
	lda	#$0
	ldy	#$1e
	adc	[<L313+dp_0],Y
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~ld_dword
	sta	<R1
	stx	<R1+2
	lda	<R1
	sta	[<L313+fno_0]
	lda	<R1+2
	ldy	#$2
	sta	[<L313+fno_0],Y
;	fno->ftime = ld_word(dp->dir + DIR_ModTime + 0);	/* Time */
	.line	2781
	clc
	lda	#$16
	ldy	#$1c
	adc	[<L313+dp_0],Y
	sta	<R0
	lda	#$0
	ldy	#$1e
	adc	[<L313+dp_0],Y
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~ld_word
	ldy	#$6
	sta	[<L313+fno_0],Y
;	fno->fdate = ld_word(dp->dir + DIR_ModTime + 2);	/* Date */
	.line	2782
	clc
	lda	#$18
	ldy	#$1c
	adc	[<L313+dp_0],Y
	sta	<R0
	lda	#$0
	ldy	#$1e
	adc	[<L313+dp_0],Y
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~ld_word
	ldy	#$4
	sta	[<L313+fno_0],Y
;}
	.line	2783
	brl	L317
	.endblock	2783
L313	equ	13
L314	equ	9
	ends
	efunc
	.endfunc	2783,9,13
	.line	2783
;
;#endif /* FF_FS_MINIMIZE <= 1 || FF_FS_RPATH >= 2 */
;
;
;
;#if FF_USE_FIND && FF_FS_MINIMIZE <= 1
;/*-----------------------------------------------------------------------*/
;/* Pattern matching                                                      */
;/*-----------------------------------------------------------------------*/
;
;static DWORD get_achar (	/* Get a character and advances ptr */
;	const TCHAR** ptr		/* Pointer to pointer to the ANSI/OEM or Unicode string */
;)
;{
;	DWORD chr;
;
;
;#if FF_USE_LFN && FF_LFN_UNICODE >= 1	/* Unicode input */
;	chr = tchar2uni(ptr);
;	if (chr == 0xFFFFFFFF) chr = 0;		/* Wrong UTF encoding is recognized as end of the string */
;	chr = ff_wtoupper(chr);
;
;#else									/* ANSI/OEM input */
;	chr = (BYTE)*(*ptr)++;				/* Get a byte */
;	if (IsLower(chr)) chr -= 0x20;		/* To upper ASCII char */
;#if FF_CODE_PAGE == 0
;	if (ExCvt && chr >= 0x80) chr = ExCvt[chr - 0x80];	/* To upper SBCS extended char */
;#elif FF_CODE_PAGE < 900
;	if (chr >= 0x80) chr = ExCvt[chr - 0x80];	/* To upper SBCS extended char */
;#endif
;#if FF_CODE_PAGE == 0 || FF_CODE_PAGE >= 900
;	if (dbc_1st((BYTE)chr)) {	/* Get DBC 2nd byte if needed */
;		chr = dbc_2nd((BYTE)**ptr) ? chr << 8 | (BYTE)*(*ptr)++ : 0;
;	}
;#endif
;
;#endif
;	return chr;
;}
;
;
;static int pattern_matching (	/* 0:not matched, 1:matched */
;	const TCHAR* pat,	/* Matching pattern */
;	const TCHAR* nam,	/* String to be tested */
;	int skip,			/* Number of pre-skip chars (number of ?s) */
;	int inf				/* Infinite search (* specified) */
;)
;{
;	const TCHAR *pp, *np;
;	DWORD pc, nc;
;	int nm, nx;
;
;
;	while (skip--) {				/* Pre-skip name chars */
;		if (!get_achar(&nam)) return 0;	/* Branch mismatched if less name chars */
;	}
;	if (*pat == 0 && inf) return 1;	/* (short circuit) */
;
;	do {
;		pp = pat; np = nam;			/* Top of pattern and name to match */
;		for (;;) {
;			if (*pp == '?' || *pp == '*') {	/* Wildcard? */
;				nm = nx = 0;
;				do {				/* Analyze the wildcard block */
;					if (*pp++ == '?') nm++; else nx = 1;
;				} while (*pp == '?' || *pp == '*');
;				if (pattern_matching(pp, np, nm, nx)) return 1;	/* Test new branch (recurs upto number of wildcard blocks in the pattern) */
;				nc = *np; break;	/* Branch mismatched */
;			}
;			pc = get_achar(&pp);	/* Get a pattern char */
;			nc = get_achar(&np);	/* Get a name char */
;			if (pc != nc) break;	/* Branch mismatched? */
;			if (pc == 0) return 1;	/* Branch matched? (matched at end of both strings) */
;		}
;		get_achar(&nam);			/* nam++ */
;	} while (inf && nc);			/* Retry until end of name if infinite search is specified */
;
;	return 0;
;}
;
;#endif /* FF_USE_FIND && FF_FS_MINIMIZE <= 1 */
;
;
;
;/*-----------------------------------------------------------------------*/
;/* Pick a top segment and create the object name in directory form       */
;/*-----------------------------------------------------------------------*/
;
;static FRESULT create_name (	/* FR_OK: successful, FR_INVALID_NAME: could not create */
;	DIR* dp,					/* Pointer to the directory object */
;	const TCHAR** path			/* Pointer to pointer to the segment in the path string */
;)
;{
	.line	2872
	.line	2876
	FFDOS
	func
	.function	2876
~~create_name:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L322
	tcs
	phd
	tcd
dp_0	set	4
path_0	set	8
	.block	2876
;#if FF_USE_LFN		/* LFN configuration */
;	BYTE b, cf;
;	WCHAR wc, *lfn;
;	DWORD uc;
;	UINT i, ni, si, di;
;	const TCHAR *p;
;
;
;	/* Create LFN into LFN working buffer */
;	p = *path; lfn = dp->obj.fs->lfnbuf; di = 0;
;	for (;;) {
;		uc = tchar2uni(&p);			/* Get a character */
;		if (uc == 0xFFFFFFFF) return FR_INVALID_NAME;		/* Invalid code or UTF decode error */
;		if (uc >= 0x10000) lfn[di++] = (WCHAR)(uc >> 16);	/* Store high surrogate if needed */
;		wc = (WCHAR)uc;
;		if (wc < ' ' || wc == '/' || wc == '\\') break;	/* Break if end of the path or a separator is found */
;		if (wc < 0x80 && chk_chr("\"*:<>\?|\x7F", wc)) return FR_INVALID_NAME;	/* Reject illegal characters for LFN */
;		if (di >= FF_MAX_LFN) return FR_INVALID_NAME;	/* Reject too long name */
;		lfn[di++] = wc;					/* Store the Unicode character */
;	}
;	if (wc < ' ') {				/* End of path? */
;		cf = NS_LAST;			/* Set last segment flag */
;	} else {
;		cf = 0;					/* Next segment follows */
;		while (*p == '/' || *p == '\\') p++;	/* Skip duplicated separators if exist */
;	}
;	*path = p;					/* Return pointer to the next segment */
;
;#if FF_FS_RPATH != 0
;	if ((di == 1 && lfn[di - 1] == '.') ||
;		(di == 2 && lfn[di - 1] == '.' && lfn[di - 2] == '.')) {	/* Is this segment a dot name? */
;		lfn[di] = 0;
;		for (i = 0; i < 11; i++) {		/* Create dot name for SFN entry */
;			dp->fn[i] = (i < di) ? '.' : ' ';
;		}
;		dp->fn[i] = cf | NS_DOT;		/* This is a dot entry */
;		return FR_OK;
;	}
;#endif
;	while (di) {						/* Snip off trailing spaces and dots if exist */
;		wc = lfn[di - 1];
;		if (wc != ' ' && wc != '.') break;
;		di--;
;	}
;	lfn[di] = 0;							/* LFN is created into the working buffer */
;	if (di == 0) return FR_INVALID_NAME;	/* Reject null name */
;
;	/* Create SFN in directory form */
;	for (si = 0; lfn[si] == ' '; si++) ;	/* Remove leading spaces */
;	if (si > 0 || lfn[si] == '.') cf |= NS_LOSS | NS_LFN;	/* Is there any leading space or dot? */
;	while (di > 0 && lfn[di - 1] != '.') di--;	/* Find last dot (di<=si: no extension) */
;
;	mem_set(dp->fn, ' ', 11);
;	i = b = 0; ni = 8;
;	for (;;) {
;		wc = lfn[si++];					/* Get an LFN character */
;		if (wc == 0) break;				/* Break on end of the LFN */
;		if (wc == ' ' || (wc == '.' && si != di)) {	/* Remove embedded spaces and dots */
;			cf |= NS_LOSS | NS_LFN;
;			continue;
;		}
;
;		if (i >= ni || si == di) {		/* End of field? */
;			if (ni == 11) {				/* Name extension overflow? */
;				cf |= NS_LOSS | NS_LFN;
;				break;
;			}
;			if (si != di) cf |= NS_LOSS | NS_LFN;	/* Name body overflow? */
;			if (si > di) break;						/* No name extension? */
;			si = di; i = 8; ni = 11; b <<= 2;		/* Enter name extension */
;			continue;
;		}
;
;		if (wc >= 0x80) {	/* Is this a non-ASCII character? */
;			cf |= NS_LFN;	/* LFN entry needs to be created */
;#if FF_CODE_PAGE == 0
;			if (ExCvt) {	/* At SBCS */
;				wc = ff_uni2oem(wc, CODEPAGE);			/* Unicode ==> ANSI/OEM code */
;				if (wc & 0x80) wc = ExCvt[wc & 0x7F];	/* Convert extended character to upper (SBCS) */
;			} else {		/* At DBCS */
;				wc = ff_uni2oem(ff_wtoupper(wc), CODEPAGE);	/* Unicode ==> Upper convert ==> ANSI/OEM code */
;			}
;#elif FF_CODE_PAGE < 900	/* SBCS cfg */
;			wc = ff_uni2oem(wc, CODEPAGE);			/* Unicode ==> ANSI/OEM code */
;			if (wc & 0x80) wc = ExCvt[wc & 0x7F];	/* Convert extended character to upper (SBCS) */
;#else						/* DBCS cfg */
;			wc = ff_uni2oem(ff_wtoupper(wc), CODEPAGE);	/* Unicode ==> Upper convert ==> ANSI/OEM code */
;#endif
;		}
;
;		if (wc >= 0x100) {				/* Is this a DBC? */
;			if (i >= ni - 1) {			/* Field overflow? */
;				cf |= NS_LOSS | NS_LFN;
;				i = ni; continue;		/* Next field */
;			}
;			dp->fn[i++] = (BYTE)(wc >> 8);	/* Put 1st byte */
;		} else {						/* SBC */
;			if (wc == 0 || chk_chr("+,;=[]", wc)) {	/* Replace illegal characters for SFN if needed */
;				wc = '_'; cf |= NS_LOSS | NS_LFN;/* Lossy conversion */
;			} else {
;				if (IsUpper(wc)) {		/* ASCII upper case? */
;					b |= 2;
;				}
;				if (IsLower(wc)) {		/* ASCII lower case? */
;					b |= 1; wc -= 0x20;
;				}
;			}
;		}
;		dp->fn[i++] = (BYTE)wc;
;	}
;
;	if (dp->fn[0] == DDEM) dp->fn[0] = RDDEM;	/* If the first character collides with DDEM, replace it with RDDEM */
;
;	if (ni == 8) b <<= 2;				/* Shift capital flags if no extension */
;	if ((b & 0x0C) == 0x0C || (b & 0x03) == 0x03) cf |= NS_LFN;	/* LFN entry needs to be created if composite capitals */
;	if (!(cf & NS_LFN)) {				/* When LFN is in 8.3 format without extended character, NT flags are created */
;		if (b & 0x01) cf |= NS_EXT;		/* NT flag (Extension has small capital letters only) */
;		if (b & 0x04) cf |= NS_BODY;	/* NT flag (Body has small capital letters only) */
;	}
;
;	dp->fn[NSFLAG] = cf;	/* SFN is created into dp->fn[] */
;
;	return FR_OK;
;
;
;#else	/* FF_USE_LFN : Non-LFN configuration */
;	BYTE c, d, *sfn;
;	UINT ni, si, i;
;	const char *p;
;
;	/* Create file name in directory form */
;	p = *path; sfn = dp->fn;
c_1	set	0
d_1	set	1
sfn_1	set	2
ni_1	set	6
si_1	set	8
i_1	set	10
p_1	set	12
	.sym	c,0,14,1,8
	.sym	d,1,14,1,8
	.sym	sfn,2,142,1,32
	.sym	ni,6,16,1,16
	.sym	si,8,16,1,16
	.sym	i,10,16,1,16
	.sym	p,12,142,1,32
	.sym	dp,4,138,6,32,83
	.sym	path,8,1166,6,32
	.line	3008
	lda	[<L322+path_0]
	sta	<L323+p_1
	ldy	#$2
	lda	[<L322+path_0],Y
	sta	<L323+p_1+2
	.line	3008
	clc
	lda	#$20
	adc	<L322+dp_0
	sta	<L323+sfn_1
	lda	#$0
	adc	<L322+dp_0+2
	sta	<L323+sfn_1+2
;	mem_set(sfn, ' ', 11);
	.line	3009
	pea	#<$b
	pea	#<$20
	pei	<L323+sfn_1+2
	pei	<L323+sfn_1
	jsl	~~mem_set
;	si = i = 0; ni = 8;
	.line	3010
	stz	<L323+i_1
	stz	<L323+si_1
	.line	3010
	lda	#$8
	sta	<L323+ni_1
;#if FF_FS_RPATH != 0
;	if (p[si] == '.') { /* Is this a dot entry? */
;		for (;;) {
;			c = (BYTE)p[si++];
;			if (c != '.' || si >= 3) break;
;			sfn[i++] = c;
;		}
;		if (c != '/' && c != '\\' && c > ' ') return FR_INVALID_NAME;
;		*path = p + si;								/* Return pointer to the next segment */
;		sfn[NSFLAG] = (c <= ' ') ? NS_LAST | NS_DOT : NS_DOT;	/* Set last segment flag if end of the path */
;		return FR_OK;
;	}
;#endif
;	for (;;) {
	.line	3024
L10138:
	.line	3024
;		c = (BYTE)p[si++];				/* Get a byte */
	.line	3025
	sep	#$20
	longa	off
	ldy	<L323+si_1
	lda	[<L323+p_1],Y
	sta	<L323+c_1
	rep	#$20
	longa	on
	inc	<L323+si_1
;		if (c <= ' ') break; 			/* Break if end of the path name */
	.line	3026
	sep	#$20
	longa	off
	lda	#$20
	cmp	<L323+c_1
	rep	#$20
	longa	on
	bcc	L325
	brl	L10137
L325:
;		if (c == '/' || c == '\\') {	/* Break if a separator is found */
	.line	3027
	sep	#$20
	longa	off
	lda	<L323+c_1
	cmp	#<$2f
	rep	#$20
	longa	on
	bne	L327
	brl	L326
L327:
	sep	#$20
	longa	off
	lda	<L323+c_1
	cmp	#<$5c
	rep	#$20
	longa	on
	beq	L328
	brl	L10139
L328:
L326:
	.line	3027
;			while (p[si] == '/' || p[si] == '\\') si++;	/* Skip duplicated separator if exist */
	.line	3028
L10140:
	sep	#$20
	longa	off
	ldy	<L323+si_1
	lda	[<L323+p_1],Y
	cmp	#<$2f
	rep	#$20
	longa	on
	bne	L330
	brl	L329
L330:
	sep	#$20
	longa	off
	ldy	<L323+si_1
	lda	[<L323+p_1],Y
	cmp	#<$5c
	rep	#$20
	longa	on
	beq	L331
	brl	L10141
L331:
L329:
	.line	3028
	inc	<L323+si_1
	brl	L10140
L10141:
;			break;
	.line	3029
	brl	L10137
;		}
	.line	3030
;		if (c == '.' || i >= ni) {		/* End of body or field overflow? */
L10139:
	.line	3031
	sep	#$20
	longa	off
	lda	<L323+c_1
	cmp	#<$2e
	rep	#$20
	longa	on
	bne	L333
	brl	L332
L333:
	lda	<L323+i_1
	cmp	<L323+ni_1
	bcs	L334
	brl	L10142
L334:
L332:
	.line	3031
;			if (ni == 11 || c != '.') return FR_INVALID_NAME;	/* Field overflow or invalid dot? */
	.line	3032
	lda	<L323+ni_1
	cmp	#<$b
	bne	L336
	brl	L335
L336:
	sep	#$20
	longa	off
	lda	<L323+c_1
	cmp	#<$2e
	rep	#$20
	longa	on
	bne	L337
	brl	L10143
L337:
L335:
	.line	3032
	lda	#$6
L338:
	tay
	lda	<L322+2
	sta	<L322+2+8
	lda	<L322+1
	sta	<L322+1+8
	pld
	tsc
	clc
	adc	#L322+8
	tcs
	tya
	rtl
;			i = 8; ni = 11;				/* Enter file extension field */
L10143:
	.line	3033
	lda	#$8
	sta	<L323+i_1
	.line	3033
	lda	#$b
	sta	<L323+ni_1
;			continue;
	.line	3034
	brl	L10136
;		}
	.line	3035
;#if FF_CODE_PAGE == 0
;		if (ExCvt && c >= 0x80) {		/* Is SBC extended character? */
;			c = ExCvt[c & 0x7F];		/* To upper SBC extended character */
;		}
;#elif FF_CODE_PAGE < 900
;		if (c >= 0x80) {				/* Is SBC extended character? */
L10142:
	.line	3041
	sep	#$20
	longa	off
	lda	<L323+c_1
	cmp	#<$80
	rep	#$20
	longa	on
	bcs	L339
	brl	L10144
L339:
	.line	3041
;			c = ExCvt[c & 0x7F];		/* To upper SBC extended character */
	.line	3042
	lda	<L323+c_1
	and	#<$7f
	sta	<R0
	sep	#$20
	longa	off
	ldx	<R0
	lda	|~~ExCvt,X
	sta	<L323+c_1
	rep	#$20
	longa	on
;		}
	.line	3043
;#endif
;		if (dbc_1st(c)) {				/* Check if it is a DBC 1st byte */
L10144:
	.line	3045
	pei	<L323+c_1
	jsl	~~dbc_1st
	tax
	bne	L340
	brl	L10145
L340:
	.line	3045
;			d = (BYTE)p[si++];			/* Get 2nd byte */
	.line	3046
	sep	#$20
	longa	off
	ldy	<L323+si_1
	lda	[<L323+p_1],Y
	sta	<L323+d_1
	rep	#$20
	longa	on
	inc	<L323+si_1
;			if (!dbc_2nd(d) || i >= ni - 1) return FR_INVALID_NAME;	/* Reject invalid DBC */
	.line	3047
	pei	<L323+d_1
	jsl	~~dbc_2nd
	tax
	bne	L342
	brl	L341
L342:
	clc
	lda	#$ffff
	adc	<L323+ni_1
	sta	<R0
	lda	<L323+i_1
	cmp	<R0
	bcs	L343
	brl	L10146
L343:
L341:
	.line	3047
	lda	#$6
	brl	L338
;			sfn[i++] = c;
L10146:
	.line	3048
	sep	#$20
	longa	off
	lda	<L323+c_1
	ldy	<L323+i_1
	sta	[<L323+sfn_1],Y
	rep	#$20
	longa	on
	inc	<L323+i_1
;			sfn[i++] = d;
	.line	3049
	sep	#$20
	longa	off
	lda	<L323+d_1
	ldy	<L323+i_1
	sta	[<L323+sfn_1],Y
	rep	#$20
	longa	on
	inc	<L323+i_1
;		} else {						/* SBC */
	.line	3050
	brl	L10147
L10145:
	.line	3050
;			if (chk_chr("\"*+,:;<=>\?[]|\x7F", c)) return FR_INVALID_NAME;	/* Reject illegal chrs for SFN */
	.line	3051
	lda	<L323+c_1
	and	#$ff
	pha
	pea	#^L1
	pea	#<L1
	jsl	~~chk_chr
	tax
	bne	L344
	brl	L10148
L344:
	.line	3051
	lda	#$6
	brl	L338
;			if (IsLower(c)) c -= 0x20;	/* To upper */
L10148:
	.line	3052
	sep	#$20
	longa	off
	lda	<L323+c_1
	cmp	#<$61
	rep	#$20
	longa	on
	bcs	L345
	brl	L10149
L345:
	sep	#$20
	longa	off
	lda	#$7a
	cmp	<L323+c_1
	rep	#$20
	longa	on
	bcs	L346
	brl	L10149
L346:
	.line	3052
	lda	<L323+c_1
	and	#$ff
	sta	<R0
	clc
	lda	#$ffe0
	adc	<R0
	sta	<R1
	sep	#$20
	longa	off
	lda	<R1
	sta	<L323+c_1
	rep	#$20
	longa	on
;			sfn[i++] = c;
L10149:
	.line	3053
	sep	#$20
	longa	off
	lda	<L323+c_1
	ldy	<L323+i_1
	sta	[<L323+sfn_1],Y
	rep	#$20
	longa	on
	inc	<L323+i_1
;		}
	.line	3054
L10147:
;	}
	.line	3055
L10136:
	brl	L10138
L10137:
;	*path = p + si;						/* Return pointer to the next segment */
	.line	3056
	lda	<L323+si_1
	sta	<R0
	stz	<R0+2
	clc
	lda	<L323+p_1
	adc	<R0
	sta	<R1
	lda	<L323+p_1+2
	adc	<R0+2
	sta	<R1+2
	lda	<R1
	sta	[<L322+path_0]
	lda	<R1+2
	ldy	#$2
	sta	[<L322+path_0],Y
;	if (i == 0) return FR_INVALID_NAME;	/* Reject nul string */
	.line	3057
	lda	<L323+i_1
	beq	L347
	brl	L10150
L347:
	.line	3057
	lda	#$6
	brl	L338
;
;	if (sfn[0] == DDEM) sfn[0] = RDDEM;	/* If the first character collides with DDEM, replace it with RDDEM */
L10150:
	.line	3059
	sep	#$20
	longa	off
	lda	[<L323+sfn_1]
	cmp	#<$e5
	rep	#$20
	longa	on
	beq	L348
	brl	L10151
L348:
	.line	3059
	sep	#$20
	longa	off
	lda	#$5
	sta	[<L323+sfn_1]
	rep	#$20
	longa	on
;	sfn[NSFLAG] = (c <= ' ') ? NS_LAST : 0;		/* Set last segment flag if end of the path */
L10151:
	.line	3060
	sep	#$20
	longa	off
	lda	#$20
	cmp	<L323+c_1
	rep	#$20
	longa	on
	bcs	L350
	brl	L349
L350:
	lda	#$4
	bra	L351
L349:
	lda	#$0
L351:
	sep	#$20
	longa	off
	ldy	#$b
	sta	[<L323+sfn_1],Y
	rep	#$20
	longa	on
;
;	return FR_OK;
	.line	3062
	lda	#$0
	brl	L338
;#endif /* FF_USE_LFN */
;}
	.line	3064
	.endblock	3064
L322	equ	24
L323	equ	9
	ends
	efunc
	.endfunc	3064,9,24
	.line	3064
	data
L1:
	db	$22,$2A,$2B,$2C,$3A,$3B,$3C,$3D,$3E,$3F,$5B,$5D,$7C,$7F,$00
	ends
;
;
;
;
;/*-----------------------------------------------------------------------*/
;/* Follow a file path                                                    */
;/*-----------------------------------------------------------------------*/
;
;static FRESULT follow_path (	/* FR_OK(0): successful, !=0: error code */
;	DIR* dp,					/* Directory object to return last directory and found object */
;	const TCHAR* path			/* Full-path string to find a file or directory */
;)
;{
	.line	3073
	.line	3077
	FFDOS
	func
	.function	3077
~~follow_path:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L353
	tcs
	phd
	tcd
dp_0	set	4
path_0	set	8
	.block	3077
;	FRESULT res;
;	BYTE ns;
;	FATFS *fs = dp->obj.fs;
;
;
;	k_debug_string( "follow_path...\r\n");
res_1	set	0
ns_1	set	2
fs_1	set	3
	.sym	res,0,5,1,16
	.sym	ns,2,14,1,8
	.sym	fs,3,138,1,32,80
	.sym	dp,4,138,6,32,83
	.sym	path,8,142,6,32
	lda	[<L353+dp_0]
	sta	<L354+fs_1
	ldy	#$2
	lda	[<L353+dp_0],Y
	sta	<L354+fs_1+2
	.line	3083
	pea	#^L352
	pea	#<L352
	jsl	~~k_debug_string
;
;
;#if FF_FS_RPATH != 0
;	if (*path != '/' && *path != '\\') {	/* Without heading separator */
;		dp->obj.sclust = fs->cdir;				/* Start from current directory */
;	} else
;#endif
;	{										/* With heading separator */
	.line	3091
;		while (*path == '/' || *path == '\\') path++;	/* Strip heading separator */
	.line	3092
L10152:
	sep	#$20
	longa	off
	lda	[<L353+path_0]
	cmp	#<$2f
	rep	#$20
	longa	on
	bne	L357
	brl	L356
L357:
	sep	#$20
	longa	off
	lda	[<L353+path_0]
	cmp	#<$5c
	rep	#$20
	longa	on
	beq	L358
	brl	L10153
L358:
L356:
	.line	3092
	inc	<L353+path_0
	bne	L359
	inc	<L353+path_0+2
L359:
	brl	L10152
L10153:
;		dp->obj.sclust = 0;					/* Start from root directory */
	.line	3093
	lda	#$0
	ldy	#$8
	sta	[<L353+dp_0],Y
	lda	#$0
	ldy	#$a
	sta	[<L353+dp_0],Y
;	}
	.line	3094
;#if FF_FS_EXFAT
;	dp->obj.n_frag = 0;	/* Invalidate last fragment counter of the object */
;#if FF_FS_RPATH != 0
;	if (fs->fs_type == FS_EXFAT && dp->obj.sclust) {	/* exFAT: Retrieve the sub-directory's status */
;		DIR dj;
;
;		dp->obj.c_scl = fs->cdc_scl;
;		dp->obj.c_size = fs->cdc_size;
;		dp->obj.c_ofs = fs->cdc_ofs;
;		res = load_obj_xdir(&dj, &dp->obj);
;		if (res != FR_OK) return res;
;		dp->obj.objsize = ld_dword(fs->dirbuf + XDIR_FileSize);
;		dp->obj.stat = fs->dirbuf[XDIR_GenFlags] & 2;
;	}
;#endif
;#endif
;
;	if ((UINT)*path < ' ') {				/* Null path name is the origin directory itself */
	.line	3112
	sep	#$20
	longa	off
	lda	[<L353+path_0]
	cmp	#<$20
	rep	#$20
	longa	on
	bcc	L360
	brl	L10154
L360:
	.line	3112
;		dp->fn[NSFLAG] = NS_NONAME;
	.line	3113
	sep	#$20
	longa	off
	lda	#$80
	ldy	#$2b
	sta	[<L353+dp_0],Y
	rep	#$20
	longa	on
;		res = dir_sdi(dp, 0);
	.line	3114
	pea	#^$0
	pea	#<$0
	pei	<L353+dp_0+2
	pei	<L353+dp_0
	jsl	~~dir_sdi
	sta	<L354+res_1
;
;	} else {								/* Follow path */
	.line	3116
	brl	L10155
L10154:
	.line	3116
;		for (;;) {
	.line	3117
L10158:
	.line	3117
;			res = create_name(dp, &path);	/* Get a segment name of the path */
	.line	3118
	pea	#0
	clc
	tdc
	adc	#<L353+path_0
	pha
	pei	<L353+dp_0+2
	pei	<L353+dp_0
	jsl	~~create_name
	sta	<L354+res_1
;			if (res != FR_OK) break;
	.line	3119
	lda	<L354+res_1
	beq	L361
	brl	L10157
L361:
;			res = dir_find(dp);				/* Find an object with the segment name */
	.line	3120
	pei	<L353+dp_0+2
	pei	<L353+dp_0
	jsl	~~dir_find
	sta	<L354+res_1
;			ns = dp->fn[NSFLAG];
	.line	3121
	sep	#$20
	longa	off
	ldy	#$2b
	lda	[<L353+dp_0],Y
	sta	<L354+ns_1
	rep	#$20
	longa	on
;			if (res != FR_OK) {				/* Failed to find the object */
	.line	3122
	lda	<L354+res_1
	bne	L362
	brl	L10159
L362:
	.line	3122
;				if (res == FR_NO_FILE) {	/* Object is not found */
	.line	3123
	lda	<L354+res_1
	cmp	#<$4
	beq	L363
	brl	L10160
L363:
	.line	3123
;					if (FF_FS_RPATH && (ns & NS_DOT)) {	/* If dot entry is not exist, stay there */
	.line	3124
	brl	L10161
	sep	#$20
	longa	off
	lda	<L354+ns_1
	and	#<$20
	rep	#$20
	longa	on
	bne	L364
	brl	L10161
L364:
	.line	3124
;						if (!(ns & NS_LAST)) continue;	/* Continue to follow if not last segment */
	.line	3125
	sep	#$20
	longa	off
	lda	<L354+ns_1
	and	#<$4
	rep	#$20
	longa	on
	bne	L365
	brl	L10156
L365:
;						dp->fn[NSFLAG] = NS_NONAME;
	.line	3126
	sep	#$20
	longa	off
	lda	#$80
	ldy	#$2b
	sta	[<L353+dp_0],Y
	rep	#$20
	longa	on
;						res = FR_OK;
	.line	3127
	stz	<L354+res_1
;					} else {							/* Could not find the object */
	.line	3128
	brl	L10162
L10161:
	.line	3128
;						if (!(ns & NS_LAST)) res = FR_NO_PATH;	/* Adjust error code if not last segment */
	.line	3129
	sep	#$20
	longa	off
	lda	<L354+ns_1
	and	#<$4
	rep	#$20
	longa	on
	beq	L366
	brl	L10163
L366:
	.line	3129
	lda	#$5
	sta	<L354+res_1
;					}
L10163:
	.line	3130
L10162:
;				}
	.line	3131
;				break;
L10160:
	.line	3132
	brl	L10157
;			}
	.line	3133
;			if (ns & NS_LAST) break;			/* Last segment matched. Function completed. */
L10159:
	.line	3134
	sep	#$20
	longa	off
	lda	<L354+ns_1
	and	#<$4
	rep	#$20
	longa	on
	beq	L367
	brl	L10157
L367:
;			/* Get into the sub-directory */
;			if (!(dp->obj.attr & AM_DIR)) {		/* It is not a sub-directory and cannot follow */
	.line	3136
	sep	#$20
	longa	off
	ldy	#$6
	lda	[<L353+dp_0],Y
	and	#<$10
	rep	#$20
	longa	on
	beq	L368
	brl	L10164
L368:
	.line	3136
;				res = FR_NO_PATH; break;
	.line	3137
	lda	#$5
	sta	<L354+res_1
	.line	3137
	brl	L10157
;			}
	.line	3138
;#if FF_FS_EXFAT
;			if (fs->fs_type == FS_EXFAT) {		/* Save containing directory information for next dir */
;				dp->obj.c_scl = dp->obj.sclust;
;				dp->obj.c_size = ((DWORD)dp->obj.objsize & 0xFFFFFF00) | dp->obj.stat;
;				dp->obj.c_ofs = dp->blk_ofs;
;				init_alloc_info(fs, &dp->obj);	/* Open next directory */
;			} else
;#endif
;			{
L10164:
	.line	3147
;				dp->obj.sclust = ld_clust(fs, fs->win + dp->dptr % SS(fs));	/* Open next directory */
	.line	3148
	ldy	#$10
	lda	[<L353+dp_0],Y
	and	#<$1ff
	sta	<R0
	stz	<R0+2
	clc
	lda	#$2f
	adc	<R0
	sta	<R1
	lda	#$0
	adc	<R0+2
	sta	<R1+2
	clc
	lda	<L354+fs_1
	adc	<R1
	sta	<R0
	lda	<L354+fs_1+2
	adc	<R1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pei	<L354+fs_1+2
	pei	<L354+fs_1
	jsl	~~ld_clust
	sta	<R2
	stx	<R2+2
	lda	<R2
	ldy	#$8
	sta	[<L353+dp_0],Y
	lda	<R2+2
	ldy	#$a
	sta	[<L353+dp_0],Y
;			}
	.line	3149
;		}
	.line	3150
L10156:
	brl	L10158
L10157:
;	}
	.line	3151
L10155:
;
;	return res;
	.line	3153
	lda	<L354+res_1
L369:
	tay
	lda	<L353+2
	sta	<L353+2+8
	lda	<L353+1
	sta	<L353+1+8
	pld
	tsc
	clc
	adc	#L353+8
	tcs
	tya
	rtl
;}
	.line	3154
	.endblock	3154
L353	equ	19
L354	equ	13
	ends
	efunc
	.endfunc	3154,13,19
	.line	3154
	data
L352:
	db	$66,$6F,$6C,$6C,$6F,$77,$5F,$70,$61,$74,$68,$2E,$2E,$2E,$0D
	db	$0A,$00
	ends
;
;
;
;
;/*-----------------------------------------------------------------------*/
;/* Get logical drive number from path name                               */
;/*-----------------------------------------------------------------------*/
;
;static int get_ldnumber (	/* Returns logical drive number (-1:invalid drive number or null pointer) */
;	const TCHAR** path		/* Pointer to pointer to the path name */
;)
;{
	.line	3163
	.line	3166
	FFDOS
	func
	.function	3166
~~get_ldnumber:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L371
	tcs
	phd
	tcd
path_0	set	4
	.block	3166
;	const TCHAR *tp, *tt;
;	TCHAR tc;
;	int i, vol = -1;
;#if FF_STR_VOLUME_ID		/* Find string volume ID */
;	const char *sp;
;	char c;
;#endif
;
;	tt = tp = *path;
tp_1	set	0
tt_1	set	4
tc_1	set	8
i_1	set	9
vol_1	set	11
	.sym	tp,0,142,1,32
	.sym	tt,4,142,1,32
	.sym	tc,8,14,1,8
	.sym	i,9,5,1,16
	.sym	vol,11,5,1,16
	.sym	path,4,1166,6,32
	lda	#$ffff
	sta	<L372+vol_1
	.line	3175
	lda	[<L371+path_0]
	sta	<L372+tp_1
	ldy	#$2
	lda	[<L371+path_0],Y
	sta	<L372+tp_1+2
	lda	<L372+tp_1
	sta	<L372+tt_1
	lda	<L372+tp_1+2
	sta	<L372+tt_1+2
;	if (!tp) return vol;	/* Invalid path name? */
	.line	3176
	lda	<L372+tp_1
	ora	<L372+tp_1+2
	beq	L374
	brl	L10165
L374:
	.line	3176
	lda	<L372+vol_1
L375:
	tay
	lda	<L371+2
	sta	<L371+2+4
	lda	<L371+1
	sta	<L371+1+4
	pld
	tsc
	clc
	adc	#L371+4
	tcs
	tya
	rtl
;	do tc = *tt++; while ((UINT)tc >= (FF_USE_LFN ? ' ' : '!') && tc != ':');	/* Find a colon in the path */
L10165:
	.line	3177
L10168:
	.line	3177
	sep	#$20
	longa	off
	lda	[<L372+tt_1]
	sta	<L372+tc_1
	rep	#$20
	longa	on
	inc	<L372+tt_1
	bne	L376
	inc	<L372+tt_1+2
L376:
L10166:
	sep	#$20
	longa	off
	lda	<L372+tc_1
	cmp	#<$21
	rep	#$20
	longa	on
	bcs	L378
	brl	L377
L378:
	sep	#$20
	longa	off
	lda	<L372+tc_1
	cmp	#<$3a
	rep	#$20
	longa	on
	beq	L379
	brl	L10168
L379:
L377:
L10167:
;
;	if (tc == ':') {	/* DOS/Windows style volume ID? */
	.line	3179
	sep	#$20
	longa	off
	lda	<L372+tc_1
	cmp	#<$3a
	rep	#$20
	longa	on
	beq	L380
	brl	L10169
L380:
	.line	3179
;		i = FF_VOLUMES;
	.line	3180
	lda	#$1
	sta	<L372+i_1
;		if (IsDigit(*tp) && tp + 2 == tt) {	/* Is there a numeric volume ID + colon? */
	.line	3181
	sep	#$20
	longa	off
	lda	[<L372+tp_1]
	cmp	#<$30
	rep	#$20
	longa	on
	bcs	L381
	brl	L10170
L381:
	sep	#$20
	longa	off
	lda	#$39
	cmp	[<L372+tp_1]
	rep	#$20
	longa	on
	bcs	L382
	brl	L10170
L382:
	clc
	lda	#$2
	adc	<L372+tp_1
	sta	<R0
	lda	#$0
	adc	<L372+tp_1+2
	sta	<R0+2
	lda	<L372+tt_1
	cmp	<R0
	bne	L383
	lda	<L372+tt_1+2
	cmp	<R0+2
L383:
	beq	L384
	brl	L10170
L384:
	.line	3181
;			i = (int)*tp - '0';	/* Get the LD number */
	.line	3182
	lda	[<L372+tp_1]
	and	#$ff
	sta	<R0
	clc
	lda	#$ffd0
	adc	<R0
	sta	<L372+i_1
;		}
	.line	3183
;#if FF_STR_VOLUME_ID == 1	/* Arbitrary string is enabled */
;		else {
;			i = 0;
;			do {
;				sp = VolumeStr[i]; tp = *path;	/* This string volume ID and path name */
;				do {	/* Compare the volume ID with path name */
;					c = *sp++; tc = *tp++;
;					if (IsLower(c)) c -= 0x20;
;					if (IsLower(tc)) tc -= 0x20;
;				} while (c && (TCHAR)c == tc);
;			} while ((c || tp != tt) && ++i < FF_VOLUMES);	/* Repeat for each id until pattern match */
;		}
;#endif
;		if (i < FF_VOLUMES) {	/* If a volume ID is found, get the drive number and strip it */
L10170:
	.line	3197
	lda	<L372+i_1
	bmi	L385
	dea
	bmi	L385
	brl	L10171
L385:
	.line	3197
;			vol = i;		/* Drive number */
	.line	3198
	lda	<L372+i_1
	sta	<L372+vol_1
;			*path = tt;		/* Snip the drive prefix off */
	.line	3199
	lda	<L372+tt_1
	sta	[<L371+path_0]
	lda	<L372+tt_1+2
	ldy	#$2
	sta	[<L371+path_0],Y
;		}
	.line	3200
;		return vol;
L10171:
	.line	3201
	lda	<L372+vol_1
	brl	L375
;	}
	.line	3202
;#if FF_STR_VOLUME_ID == 2		/* Unix style volume ID is enabled */
;	if (*tp == '/') {
;		i = 0;
;		do {
;			sp = VolumeStr[i]; tp = *path;	/* This string volume ID and path name */
;			do {	/* Compare the volume ID with path name */
;				c = *sp++; tc = *(++tp);
;				if (IsLower(c)) c -= 0x20;
;				if (IsLower(tc)) tc -= 0x20;
;			} while (c && (TCHAR)c == tc);
;		} while ((c || (tc != '/' && (UINT)tc >= (FF_USE_LFN ? ' ' : '!'))) && ++i < FF_VOLUMES);	/* Repeat for each ID until pattern match */
;		if (i < FF_VOLUMES) {	/* If a volume ID is found, get the drive number and strip it */
;			vol = i;		/* Drive number */
;			*path = tp;		/* Snip the drive prefix off */
;			return vol;
;		}
;	}
;#endif
;	/* No drive prefix is found */
;#if FF_FS_RPATH != 0
;	vol = CurrVol;	/* Default drive is current drive */
;#else
;	vol = 0;		/* Default drive is 0 */
L10169:
	.line	3225
	stz	<L372+vol_1
;#endif
;	return vol;		/* Return the default drive */
	.line	3227
	lda	<L372+vol_1
	brl	L375
;}
	.line	3228
	.endblock	3228
L371	equ	17
L372	equ	5
	ends
	efunc
	.endfunc	3228,5,17
	.line	3228
;
;
;
;
;/*-----------------------------------------------------------------------*/
;/* GPT support functions                                                 */
;/*-----------------------------------------------------------------------*/
;
;#if FF_LBA64
;
;/* Calculate CRC32 in byte-by-byte */
;
;static DWORD crc32 (	/* Returns next CRC value */
;	DWORD crc,			/* Current CRC value */
;	BYTE d				/* A byte to be processed */
;)
;{
;	BYTE b;
;
;
;	for (b = 1; b; b <<= 1) {
;		crc ^= (d & b) ? 1 : 0;
;		crc = (crc & 1) ? crc >> 1 ^ 0xEDB88320 : crc >> 1;
;	}
;	return crc;
;}
;
;
;/* Check validity of GPT header */
;
;static int test_gpt_header (	/* 0:Invalid, 1:Valid */
;	const BYTE* gpth			/* Pointer to the GPT header */
;)
;{
;	UINT i;
;	DWORD bcc;
;
;
;	if (mem_cmp(gpth + GPTH_Sign, "EFI PART" "\0\0\1\0" "\x5C\0\0", 16)) return 0;	/* Check sign, version (1.0) and length (92) */
;	for (i = 0, bcc = 0xFFFFFFFF; i < 92; i++) {		/* Check header BCC */
;		bcc = crc32(bcc, i - GPTH_Bcc < 4 ? 0 : gpth[i]);
;	}
;	if (~bcc != ld_dword(gpth + GPTH_Bcc)) return 0;
;	if (ld_dword(gpth + GPTH_PteSize) != SZ_GPTE) return 0;	/* Table entry size (must be SZ_GPTE bytes) */
;	if (ld_dword(gpth + GPTH_PtNum) > 128) return 0;	/* Table size (must be 128 entries or less) */
;
;	return 1;
;}
;
;#if !FF_FS_READONLY && FF_USE_MKFS
;
;/* Generate random value */
;static DWORD make_rand (
;	DWORD seed,		/* Seed value */
;	BYTE* buff,		/* Output buffer */
;	UINT n			/* Data length */
;)
;{
;	UINT r;
;
;
;	if (seed == 0) seed = 1;
;	do {
;		for (r = 0; r < 8; r++) seed = seed & 1 ? seed >> 1 ^ 0xA3000000 : seed >> 1;	/* Shift 8 bits the 32-bit LFSR */
;		*buff++ = (BYTE)seed;
;	} while (--n);
;	return seed;
;}
;
;#endif
;#endif
;
;
;
;/*-----------------------------------------------------------------------*/
;/* Load a sector and check if it is an FAT VBR                           */
;/*-----------------------------------------------------------------------*/
;
;/* Check what the sector is */
;
;static UINT check_fs (	/* 0:FAT VBR, 1:exFAT VBR, 2:Valid BS but not FAT, 3:Invalid BS, 4:Disk error */
;	FATFS* fs,			/* Filesystem object */
;	LBA_t sect			/* Sector to load and check if it is an FAT-VBR or not */
;)
;{
	.line	3309
	.line	3313
	FFDOS
	func
	.function	3313
~~check_fs:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L386
	tcs
	phd
	tcd
fs_0	set	4
sect_0	set	8
	.block	3313
;
;	k_debug_long( "check_fs:", sect);
	.sym	fs,4,138,6,32,80
	.sym	sect,8,18,6,32
	.line	3315
	pei	<L386+sect_0+2
	pei	<L386+sect_0
	pea	#^L370
	pea	#<L370
	jsl	~~k_debug_long
;
;	fs->wflag = 0; fs->winsect = (LBA_t)0 - 1;		/* Invaidate window */
	.line	3317
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$3
	sta	[<L386+fs_0],Y
	rep	#$20
	longa	on
	.line	3317
	lda	#$ffff
	ldy	#$2b
	sta	[<L386+fs_0],Y
	lda	#$ffff
	ldy	#$2d
	sta	[<L386+fs_0],Y
;	if (move_window(fs, sect) != FR_OK) return 4;	/* Load the boot sector */
	.line	3318
	pei	<L386+sect_0+2
	pei	<L386+sect_0
	pei	<L386+fs_0+2
	pei	<L386+fs_0
	jsl	~~move_window
	tax
	bne	L389
	brl	L10172
L389:
	.line	3318
	lda	#$4
L390:
	tay
	lda	<L386+2
	sta	<L386+2+8
	lda	<L386+1
	sta	<L386+1+8
	pld
	tsc
	clc
	adc	#L386+8
	tcs
	tya
	rtl
;
;
;	k_debug_integer( "check_fs:ld_word(&fs->win[BS_55AA]):",ld_word(&fs->win[BS_55AA]));
L10172:
	.line	3321
	clc
	lda	#$22d
	adc	<L386+fs_0
	sta	<R0
	lda	#$0
	adc	<L386+fs_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~ld_word
	pha
	pea	#^L370+10
	pea	#<L370+10
	jsl	~~k_debug_integer
;	if (ld_word(&fs->win[BS_55AA]) != 0xAA55) return 3;	/* Check boot signature (always here regardless of the sector size) */
	.line	3322
	clc
	lda	#$22d
	adc	<L386+fs_0
	sta	<R0
	lda	#$0
	adc	<L386+fs_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~ld_word
	sta	<R1
	lda	<R1
	cmp	#<$aa55
	bne	L391
	brl	L10173
L391:
	.line	3322
	lda	#$3
	brl	L390
;
;	if (FF_FS_EXFAT && !mem_cmp(&(fs->win[BS_JmpBoot]), "\xEB\x76\x90" "EXFAT   ", 11)) return 1;	/* Check if exFAT VBR */
L10173:
	.line	3324
	brl	L10174
	pea	#<$b
	pea	#^L370+47
	pea	#<L370+47
	clc
	lda	#$2f
	adc	<L386+fs_0
	sta	<R0
	lda	#$0
	adc	<L386+fs_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~mem_cmp
	tax
	beq	L392
	brl	L10174
L392:
	.line	3324
	lda	#$1
	brl	L390
;
;	k_debug_hex( "check_fs:BS_JmpBoot:",fs->win[BS_JmpBoot]);
L10174:
	.line	3326
	ldy	#$2f
	lda	[<L386+fs_0],Y
	and	#$ff
	pha
	pea	#^L370+59
	pea	#<L370+59
	jsl	~~k_debug_hex
;
;	if (fs->win[BS_JmpBoot] == 0xE9 || fs->win[BS_JmpBoot] == 0xEB || fs->win[BS_JmpBoot] == 0xE8)
	.line	3328
;	{	/* Valid JumpBoot code? */
	sep	#$20
	longa	off
	ldy	#$2f
	lda	[<L386+fs_0],Y
	cmp	#<$e9
	rep	#$20
	longa	on
	bne	L394
	brl	L393
L394:
	sep	#$20
	longa	off
	ldy	#$2f
	lda	[<L386+fs_0],Y
	cmp	#<$eb
	rep	#$20
	longa	on
	bne	L395
	brl	L393
L395:
	sep	#$20
	longa	off
	ldy	#$2f
	lda	[<L386+fs_0],Y
	cmp	#<$e8
	rep	#$20
	longa	on
	beq	L396
	brl	L10175
L396:
L393:
	.line	3329
;		if (!mem_cmp(&(fs->win[BS_FilSysType]) , "FAT", 3)) return 0;		/* Is it an FAT VBR? */
	.line	3330
	pea	#<$3
	pea	#^L370+80
	pea	#<L370+80
	clc
	lda	#$65
	adc	<L386+fs_0
	sta	<R0
	lda	#$0
	adc	<L386+fs_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~mem_cmp
	tax
	beq	L397
	brl	L10176
L397:
	.line	3330
	lda	#$0
	brl	L390
;		if (!mem_cmp(&(fs->win[BS_FilSysType32]) , "FAT32", 5)) return 0;	/* Is it an FAT32 VBR? */
L10176:
	.line	3331
	pea	#<$5
	pea	#^L370+84
	pea	#<L370+84
	clc
	lda	#$81
	adc	<L386+fs_0
	sta	<R0
	lda	#$0
	adc	<L386+fs_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~mem_cmp
	tax
	beq	L398
	brl	L10177
L398:
	.line	3331
	lda	#$0
	brl	L390
;	}
L10177:
	.line	3332
;	return 2;	/* Valid BS but not FAT */
L10175:
	.line	3333
	lda	#$2
	brl	L390
;}
	.line	3334
	.endblock	3334
L386	equ	8
L387	equ	9
	ends
	efunc
	.endfunc	3334,9,8
	.line	3334
	data
L370:
	db	$63,$68,$65,$63,$6B,$5F,$66,$73,$3A,$00,$63,$68,$65,$63,$6B
	db	$5F,$66,$73,$3A,$6C,$64,$5F,$77,$6F,$72,$64,$28,$26,$66,$73
	db	$2D,$3E,$77,$69,$6E,$5B,$42,$53,$5F,$35,$35,$41,$41,$5D,$29
	db	$3A,$00,$FFFFFFEB,$76,$FFFFFF90,$45,$58,$46,$41,$54,$20,$20,$20,$00,$63
	db	$68,$65,$63,$6B,$5F,$66,$73,$3A,$42,$53,$5F,$4A,$6D,$70,$42
	db	$6F,$6F,$74,$3A,$00,$46,$41,$54,$00,$46,$41,$54,$33,$32,$00
	ends
;
;
;/* Find an FAT volume */
;/* (It supports only generic partitioning rules, MBR, GPT and SFD) */
;
;static UINT find_volume (	/* Returns BS status found in the hosting drive */
;	FATFS* fs,		/* Filesystem object */
;	UINT part		/* Partition to fined = 0:auto, 1..:forced */
;)
;{
	.line	3340
	.line	3344
	FFDOS
	func
	.function	3344
~~find_volume:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L400
	tcs
	phd
	tcd
fs_0	set	4
part_0	set	8
	.block	3344
;	UINT fmt, i;
;	DWORD mbr_pt[4];
;
;	PPARTITIONTABLE ppt[4];
;
;	k_debug_string( "find_volume...\r\n");
fmt_1	set	0
i_1	set	2
mbr_pt_1	set	4
ppt_1	set	20
	.sym	fmt,0,16,1,16
	.sym	i,2,16,1,16
	.sym	mbr_pt,4,114,1,0,4
	.sym	ppt,20,1130,1,32,50,4
	.sym	fs,4,138,6,32,80
	.sym	part,8,16,6,16
	.line	3350
	pea	#^L399
	pea	#<L399
	jsl	~~k_debug_string
;
;	fmt = check_fs(fs, 0);				/* Load sector 0 and check if it is an FAT VBR as SFD */
	.line	3352
	pea	#^$0
	pea	#<$0
	pei	<L400+fs_0+2
	pei	<L400+fs_0
	jsl	~~check_fs
	sta	<L401+fmt_1
;
;	k_debug_integer( "find_volume:fmt:",fmt);
	.line	3354
	pei	<L401+fmt_1
	pea	#^L399+17
	pea	#<L399+17
	jsl	~~k_debug_integer
;
;	if (fmt != 2 && (fmt >= 3 || part == 0))
	.line	3356
;	{
	lda	<L401+fmt_1
	cmp	#<$2
	bne	L403
	brl	L10178
L403:
	lda	<L401+fmt_1
	cmp	#<$3
	bcc	L405
	brl	L404
L405:
	lda	<L400+part_0
	beq	L406
	brl	L10178
L406:
L404:
	.line	3357
;		return fmt;	/* Returns if it is a FAT VBR as auto scan, not a BS or disk error */
	.line	3358
	lda	<L401+fmt_1
L407:
	tay
	lda	<L400+2
	sta	<L400+2+6
	lda	<L400+1
	sta	<L400+1+6
	pld
	tsc
	clc
	adc	#L400+6
	tcs
	tya
	rtl
;	}
	.line	3359
;	/* Sector 0 is not an FAT VBR or forced partition number wants a partition */
;
;#if FF_LBA64
;	if (fs->win[MBR_Table + PTE_System] == 0xEE) {	/* GPT protective MBR? */
;		DWORD n_ent, v_ent, ofs;
;		QWORD pt_lba;
;
;		if (move_window(fs, 1) != FR_OK) return 4;	/* Load GPT header sector (next to MBR) */
;		if (!test_gpt_header(fs->win)) return 3;	/* Check if GPT header is valid */
;		n_ent = ld_dword(fs->win + GPTH_PtNum);		/* Number of entries */
;		pt_lba = ld_qword(fs->win + GPTH_PtOfs);	/* Table location */
;		for (v_ent = i = 0; i < n_ent; i++) {		/* Find FAT partition */
;			if (move_window(fs, pt_lba + i * SZ_GPTE / SS(fs)) != FR_OK) return 4;	/* PT sector */
;			ofs = i * SZ_GPTE % SS(fs);												/* Offset in the sector */
;			if (!mem_cmp(fs->win + ofs + GPTE_PtGuid, GUID_MS_Basic, 16)) {	/* MS basic data partition? */
;				v_ent++;
;				fmt = check_fs(fs, ld_qword(fs->win + ofs + GPTE_FstLba));	/* Load VBR and check status */
;				if (part == 0 && fmt <= 1) return fmt;			/* Auto search (valid FAT volume found first) */
;				if (part != 0 && v_ent == part) return fmt;		/* Forced partition order (regardless of it is valid or not) */
;			}
;		}
;		return 3;	/* Not found */
;	}
;#endif
;	if (FF_MULTI_PARTITION && part > 4) return 3;	/* MBR has 4 partitions max */
L10178:
	.line	3384
	brl	L10179
	lda	#$4
	cmp	<L400+part_0
	bcc	L408
	brl	L10179
L408:
	.line	3384
	lda	#$3
	brl	L407
;	for (i = 0; i < 4; i++)
L10179:
	.line	3385
	stz	<L401+i_1
L10182:
;	{		/* Load partition offset in the MBR */
	.line	3386
;		//mbr_pt[i] = ld_dword(&(fs->win[ MBR_Table + i * SZ_PTE + PTE_StLba ]));
;
;		ppt[i] = (PPARTITIONTABLE)&(fs->win[ (ULONG)MBR_Table + ((ULONG)i * 0x10L)]);
	.line	3389
	lda	<L401+i_1
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
	tdc
	adc	#<L401+ppt_1
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
	lda	<L401+i_1
	sta	<R2
	stz	<R2+2
	pei	<R2+2
	pei	<R2
	lda	#$4
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R0
	stx	<R0+2
	clc
	lda	#$1ed
	adc	<R0
	sta	<17
	lda	#$0
	adc	<R0+2
	sta	<17+2
	clc
	lda	<L400+fs_0
	adc	<17
	sta	<R0
	lda	<L400+fs_0+2
	adc	<17+2
	sta	<R0+2
	lda	<R0
	sta	[<R3]
	lda	<R0+2
	ldy	#$2
	sta	[<R3],Y
;		k_debug_hex( "find_volume:ppt[i].partition_type:",ppt[i]->partition_type);
	.line	3390
	lda	<L401+i_1
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
	tdc
	adc	#<L401+ppt_1
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
	sta	<R0
	ldy	#$2
	lda	[<R3],Y
	sta	<R0+2
	ldy	#$4
	lda	[<R0],Y
	and	#$ff
	pha
	pea	#^L399+34
	pea	#<L399+34
	jsl	~~k_debug_hex
;		k_debug_long( "find_volume:ppt[i].start_sector:",ppt[i]->start_sector);
	.line	3391
	lda	<L401+i_1
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
	tdc
	adc	#<L401+ppt_1
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
	sta	<R0
	ldy	#$2
	lda	[<R3],Y
	sta	<R0+2
	ldy	#$a
	lda	[<R0],Y
	pha
	ldy	#$8
	lda	[<R0],Y
	pha
	pea	#^L399+69
	pea	#<L399+69
	jsl	~~k_debug_long
;
;
;		mbr_pt[i] = ld_dword(&(fs->win[ (ULONG)MBR_Table + ((ULONG)i * 0x10L)]));
	.line	3394
	lda	<L401+i_1
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
	tdc
	adc	#<L401+mbr_pt_1
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
	lda	<L401+i_1
	sta	<R2
	stz	<R2+2
	pei	<R2+2
	pei	<R2
	lda	#$4
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R0
	stx	<R0+2
	clc
	lda	#$1ed
	adc	<R0
	sta	<17
	lda	#$0
	adc	<R0+2
	sta	<17+2
	clc
	lda	<L400+fs_0
	adc	<17
	sta	<R0
	lda	<L400+fs_0+2
	adc	<17+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~ld_dword
	sta	<21
	stx	<21+2
	lda	<21
	sta	[<R3]
	lda	<21+2
	ldy	#$2
	sta	[<R3],Y
;		k_debug_long( "find_volume:mbr_pt[i]:",mbr_pt[i]);
	.line	3395
	lda	<L401+i_1
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
	tdc
	adc	#<L401+mbr_pt_1
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
	ldy	#$2
	lda	[<R3],Y
	pha
	lda	[<R3]
	pha
	pea	#^L399+102
	pea	#<L399+102
	jsl	~~k_debug_long
;	}
	.line	3396
L10180:
	inc	<L401+i_1
	lda	<L401+i_1
	cmp	#<$4
	bcs	L409
	brl	L10182
L409:
L10181:
;
;	i = part ? part - 1 : 0;		/* Table index to find first */
	.line	3398
	lda	<L400+part_0
	bne	L411
	brl	L410
L411:
	clc
	lda	#$ffff
	adc	<L400+part_0
	bra	L412
L410:
	lda	#$0
L412:
	sta	<L401+i_1
;
;	do
	.line	3400
L10185:
;	{							/* Find an FAT volume */
	.line	3401
;
;
;
;		//fmt = mbr_pt[i] ? check_fs(fs,  mbr_pt[i]) : 3;	/* Check if the partition is FAT */
;		fmt = mbr_pt[i] ? check_fs(fs,  ppt[i]->start_sector) : 3;	/* Check if the partition is FAT */
	.line	3406
	lda	<L401+i_1
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
	tdc
	adc	#<L401+mbr_pt_1
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
	ldy	#$2
	ora	[<R3],Y
	bne	L414
	brl	L413
L414:
	lda	<L401+i_1
	sta	<R2
	stz	<R2+2
	pei	<R2+2
	pei	<R2
	lda	#$2
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R0
	stx	<R0+2
	clc
	tdc
	adc	#<L401+ppt_1
	sta	<R3
	lda	#$0
	sta	<R3+2
	clc
	lda	<R3
	adc	<R0
	sta	<17
	lda	<R3+2
	adc	<R0+2
	sta	<17+2
	lda	[<17]
	sta	<R0
	ldy	#$2
	lda	[<17],Y
	sta	<R0+2
	ldy	#$a
	lda	[<R0],Y
	pha
	ldy	#$8
	lda	[<R0],Y
	pha
	pei	<L400+fs_0+2
	pei	<L400+fs_0
	jsl	~~check_fs
	bra	L415
L413:
	lda	#$3
L415:
	sta	<L401+fmt_1
;		k_debug_integer( "find_volume:part-fmt:",fmt);
	.line	3407
	pei	<L401+fmt_1
	pea	#^L399+125
	pea	#<L399+125
	jsl	~~k_debug_integer
;	}
	.line	3408
;	while (part == 0 && fmt >= 2 && ++i < 4);
L10183:
	lda	<L400+part_0
	beq	L417
	brl	L416
L417:
	lda	<L401+fmt_1
	cmp	#<$2
	bcs	L418
	brl	L416
L418:
	inc	<L401+i_1
	lda	<L401+i_1
	cmp	#<$4
	bcs	L419
	brl	L10185
L419:
L416:
L10184:
;
;	k_debug_integer( "find_volume:fmt2:",fmt);
	.line	3411
	pei	<L401+fmt_1
	pea	#^L399+147
	pea	#<L399+147
	jsl	~~k_debug_integer
;
;
;	return fmt;
	.line	3414
	lda	<L401+fmt_1
	brl	L407
;}
	.line	3415
	.endblock	3415
L400	equ	60
L401	equ	25
	ends
	efunc
	.endfunc	3415,25,60
	.line	3415
	data
L399:
	db	$66,$69,$6E,$64,$5F,$76,$6F,$6C,$75,$6D,$65,$2E,$2E,$2E,$0D
	db	$0A,$00,$66,$69,$6E,$64,$5F,$76,$6F,$6C,$75,$6D,$65,$3A,$66
	db	$6D,$74,$3A,$00,$66,$69,$6E,$64,$5F,$76,$6F,$6C,$75,$6D,$65
	db	$3A,$70,$70,$74,$5B,$69,$5D,$2E,$70,$61,$72,$74,$69,$74,$69
	db	$6F,$6E,$5F,$74,$79,$70,$65,$3A,$00,$66,$69,$6E,$64,$5F,$76
	db	$6F,$6C,$75,$6D,$65,$3A,$70,$70,$74,$5B,$69,$5D,$2E,$73,$74
	db	$61,$72,$74,$5F,$73,$65,$63,$74,$6F,$72,$3A,$00,$66,$69,$6E
	db	$64,$5F,$76,$6F,$6C,$75,$6D,$65,$3A,$6D,$62,$72,$5F,$70,$74
	db	$5B,$69,$5D,$3A,$00,$66,$69,$6E,$64,$5F,$76,$6F,$6C,$75,$6D
	db	$65,$3A,$70,$61,$72,$74,$2D,$66,$6D,$74,$3A,$00,$66,$69,$6E
	db	$64,$5F,$76,$6F,$6C,$75,$6D,$65,$3A,$66,$6D,$74,$32,$3A,$00
	ends
;
;
;
;
;/*-----------------------------------------------------------------------*/
;/* Determine logical drive number and mount the volume if needed         */
;/*-----------------------------------------------------------------------*/
;
;static FRESULT mount_volume (	/* FR_OK(0): successful, !=0: an error occurred */
;	const TCHAR** path,			/* Pointer to pointer to the path name (drive number) */
;	FATFS** rfs,				/* Pointer to pointer to the found filesystem object */
;	BYTE mode					/* !=0: Check write protection for write access */
;)
;{
	.line	3424
	.line	3429
	FFDOS
	func
	.function	3429
~~mount_volume:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L421
	tcs
	phd
	tcd
path_0	set	4
rfs_0	set	8
mode_0	set	12
	.block	3429
;	int vol;
;	DSTATUS stat;
;	LBA_t bsect;
;	DWORD tsect, sysect, fasize, nclst, szbfat;
;	WORD nrsv;
;	FATFS *fs;
;	UINT fmt;
;
;	k_debug_string( "mount_volume...\r\n");
vol_1	set	0
stat_1	set	2
bsect_1	set	3
tsect_1	set	7
sysect_1	set	11
fasize_1	set	15
nclst_1	set	19
szbfat_1	set	23
nrsv_1	set	27
fs_1	set	29
fmt_1	set	33
	.sym	vol,0,5,1,16
	.sym	stat,2,14,1,8
	.sym	bsect,3,18,1,32
	.sym	tsect,7,18,1,32
	.sym	sysect,11,18,1,32
	.sym	fasize,15,18,1,32
	.sym	nclst,19,18,1,32
	.sym	szbfat,23,18,1,32
	.sym	nrsv,27,5,1,16
	.sym	fs,29,138,1,32,80
	.sym	fmt,33,16,1,16
	.sym	path,4,1166,6,32
	.sym	rfs,8,1162,6,32,80
	.sym	mode,12,14,6,8
	.line	3438
	pea	#^L420
	pea	#<L420
	jsl	~~k_debug_string
;
;	/* Get logical drive number */
;	*rfs = 0;
	.line	3441
	lda	#$0
	sta	[<L421+rfs_0]
	lda	#$0
	ldy	#$2
	sta	[<L421+rfs_0],Y
;	vol = get_ldnumber(path);
	.line	3442
	pei	<L421+path_0+2
	pei	<L421+path_0
	jsl	~~get_ldnumber
	sta	<L422+vol_1
;	if (vol < 0) return FR_INVALID_DRIVE;
	.line	3443
	lda	<L422+vol_1
	bmi	L424
	brl	L10186
L424:
	.line	3443
	lda	#$b
L425:
	tay
	lda	<L421+2
	sta	<L421+2+10
	lda	<L421+1
	sta	<L421+1+10
	pld
	tsc
	clc
	adc	#L421+10
	tcs
	tya
	rtl
;
;	/* Check if the filesystem object is valid or not */
;	fs = FatFs[vol];					/* Get pointer to the filesystem object */
L10186:
	.line	3446
	lda	<L422+vol_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~FatFs
	adc	<R0
	sta	<R1
	lda	(<R1)
	sta	<L422+fs_1
	ldy	#$2
	lda	(<R1),Y
	sta	<L422+fs_1+2
;	if (!fs) return FR_NOT_ENABLED;		/* Is the filesystem object available? */
	.line	3447
	lda	<L422+fs_1
	ora	<L422+fs_1+2
	beq	L426
	brl	L10187
L426:
	.line	3447
	lda	#$c
	brl	L425
;#if FF_FS_REENTRANT
;	if (!lock_fs(fs)) return FR_TIMEOUT;	/* Lock the volume */
;#endif
;	*rfs = fs;							/* Return pointer to the filesystem object */
L10187:
	.line	3451
	lda	<L422+fs_1
	sta	[<L421+rfs_0]
	lda	<L422+fs_1+2
	ldy	#$2
	sta	[<L421+rfs_0],Y
;
;	mode &= (BYTE)~FA_READ;				/* Desired access mode, write access or not */
	.line	3453
	sep	#$20
	longa	off
	lda	#$1
	trb	<L421+mode_0
	rep	#$20
	longa	on
;	if (fs->fs_type != 0) {				/* If the volume has been mounted */
	.line	3454
	lda	[<L422+fs_1]
	and	#$ff
	bne	L427
	brl	L10188
L427:
	.line	3454
;		stat = disk_status(fs->pdrv);
	.line	3455
	ldy	#$1
	lda	[<L422+fs_1],Y
	pha
	jsl	~~disk_status
	sep	#$20
	longa	off
	sta	<L422+stat_1
	rep	#$20
	longa	on
;		if (!(stat & STA_NOINIT)) {		/* and the physical drive is kept initialized */
	.line	3456
	sep	#$20
	longa	off
	lda	<L422+stat_1
	and	#<$1
	rep	#$20
	longa	on
	beq	L428
	brl	L10189
L428:
	.line	3456
;			if (!FF_FS_READONLY && mode && (stat & STA_PROTECT)) {	/* Check write protection if needed */
	.line	3457
	lda	<L421+mode_0
	and	#$ff
	bne	L429
	brl	L10190
L429:
	sep	#$20
	longa	off
	lda	<L422+stat_1
	and	#<$4
	rep	#$20
	longa	on
	bne	L430
	brl	L10190
L430:
	.line	3457
;				return FR_WRITE_PROTECTED;
	.line	3458
	lda	#$a
	brl	L425
;			}
	.line	3459
;			return FR_OK;				/* The filesystem object is already valid */
L10190:
	.line	3460
	lda	#$0
	brl	L425
;		}
	.line	3461
;	}
L10189:
	.line	3462
;
;	/* The filesystem object is not valid. */
;	/* Following code attempts to mount the volume. (find a FAT volume, analyze the BPB and initialize the filesystem object) */
;
;	fs->fs_type = 0;					/* Clear the filesystem object */
L10188:
	.line	3467
	sep	#$20
	longa	off
	lda	#$0
	sta	[<L422+fs_1]
	rep	#$20
	longa	on
;	fs->pdrv = LD2PD(vol);				/* Volume hosting physical drive */
	.line	3468
	sep	#$20
	longa	off
	lda	<L422+vol_1
	ldy	#$1
	sta	[<L422+fs_1],Y
	rep	#$20
	longa	on
;	stat = disk_initialize(fs->pdrv);	/* Initialize the physical drive */
	.line	3469
	ldy	#$1
	lda	[<L422+fs_1],Y
	pha
	jsl	~~disk_initialize
	sep	#$20
	longa	off
	sta	<L422+stat_1
	rep	#$20
	longa	on
;	if (stat & STA_NOINIT) { 			/* Check if the initialization succeeded */
	.line	3470
	sep	#$20
	longa	off
	lda	<L422+stat_1
	and	#<$1
	rep	#$20
	longa	on
	bne	L431
	brl	L10191
L431:
	.line	3470
;		return FR_NOT_READY;			/* Failed to initialize due to no medium or hard error */
	.line	3471
	lda	#$3
	brl	L425
;	}
	.line	3472
;	if (!FF_FS_READONLY && mode && (stat & STA_PROTECT)) { /* Check disk write protection if needed */
L10191:
	.line	3473
	lda	<L421+mode_0
	and	#$ff
	bne	L432
	brl	L10192
L432:
	sep	#$20
	longa	off
	lda	<L422+stat_1
	and	#<$4
	rep	#$20
	longa	on
	bne	L433
	brl	L10192
L433:
	.line	3473
;		return FR_WRITE_PROTECTED;
	.line	3474
	lda	#$a
	brl	L425
;	}
	.line	3475
;#if FF_MAX_SS != FF_MIN_SS				/* Get sector size (multiple sector size cfg only) */
;	if (disk_ioctl(fs->pdrv, GET_SECTOR_SIZE, &SS(fs)) != RES_OK) return FR_DISK_ERR;
;	if (SS(fs) > FF_MAX_SS || SS(fs) < FF_MIN_SS || (SS(fs) & (SS(fs) - 1))) return FR_DISK_ERR;
;#endif
;
;
;
;
;	/* Find an FAT volume on the drive */
;	fmt = find_volume(fs, LD2PT(vol));
L10192:
	.line	3485
	pea	#<$0
	pei	<L422+fs_1+2
	pei	<L422+fs_1
	jsl	~~find_volume
	sta	<L422+fmt_1
;
;	k_debug_integer( "mount_volume:fmt:",fmt);
	.line	3487
	pei	<L422+fmt_1
	pea	#^L420+18
	pea	#<L420+18
	jsl	~~k_debug_integer
;
;	if (fmt == 4) return FR_DISK_ERR;		/* An error occured in the disk I/O layer */
	.line	3489
	lda	<L422+fmt_1
	cmp	#<$4
	beq	L434
	brl	L10193
L434:
	.line	3489
	lda	#$1
	brl	L425
;	//if (fmt >= 2) return FR_NO_FILESYSTEM;	/* No FAT volume is found */
;	if (fmt == 2) return FR_NO_FILESYSTEM;	/* No FAT volume is found */
L10193:
	.line	3491
	lda	<L422+fmt_1
	cmp	#<$2
	beq	L435
	brl	L10194
L435:
	.line	3491
	lda	#$d
	brl	L425
;	bsect = fs->winsect;					/* Volume location */
L10194:
	.line	3492
	ldy	#$2b
	lda	[<L422+fs_1],Y
	sta	<L422+bsect_1
	ldy	#$2d
	lda	[<L422+fs_1],Y
	sta	<L422+bsect_1+2
;
;	k_debug_long( "mount_volume:bsect:",bsect);
	.line	3494
	pei	<L422+bsect_1+2
	pei	<L422+bsect_1
	pea	#^L420+36
	pea	#<L420+36
	jsl	~~k_debug_long
;	/* An FAT volume is found (bsect). Following code initializes the filesystem object */
;
;#if FF_FS_EXFAT
;	if (fmt == 1) {
;		QWORD maxlba;
;		DWORD so, cv, bcl, i;
;
;		for (i = BPB_ZeroedEx; i < BPB_ZeroedEx + 53 && fs->win[i] == 0; i++) ;	/* Check zero filler */
;		if (i < BPB_ZeroedEx + 53) return FR_NO_FILESYSTEM;
;
;		if (ld_word(FADDR(BPB_FSVerEx)) != 0x100) return FR_NO_FILESYSTEM;	/* Check exFAT version (must be version 1.0) */
;
;		if (1 << fs->win[BPB_BytsPerSecEx] != SS(fs)) {	/* (BPB_BytsPerSecEx must be equal to the physical sector size) */
;			return FR_NO_FILESYSTEM;
;		}
;
;		maxlba = ld_qword(FADDR(BPB_TotSecEx)) + bsect;	/* Last LBA + 1 of the volume */
;		if (!FF_LBA64 && maxlba >= 0x100000000) return FR_NO_FILESYSTEM;	/* (It cannot be handled in 32-bit LBA) */
;
;		fs->fsize = ld_dword(fs->win[BPB_FatSzEx]);	/* Number of sectors per FAT */
;
;		fs->n_fats = fs->win[BPB_NumFATsEx];			/* Number of FATs */
;		if (fs->n_fats != 1) return FR_NO_FILESYSTEM;	/* (Supports only 1 FAT) */
;
;		fs->csize = 1 << fs->win[BPB_SecPerClusEx];		/* Cluster size */
;		if (fs->csize == 0)	return FR_NO_FILESYSTEM;	/* (Must be 1..32768) */
;
;		nclst = ld_dword(fs->win + BPB_NumClusEx);		/* Number of clusters */
;		if (nclst > MAX_EXFAT) return FR_NO_FILESYSTEM;	/* (Too many clusters) */
;		fs->n_fatent = nclst + 2;
;
;		/* Boundaries and Limits */
;		fs->volbase = bsect;
;		fs->database = bsect + ld_dword(fs->win + BPB_DataOfsEx);
;		fs->fatbase = bsect + ld_dword(fs->win + BPB_FatOfsEx);
;		if (maxlba < (QWORD)fs->database + nclst * fs->csize) return FR_NO_FILESYSTEM;	/* (Volume size must not be smaller than the size requiered) */
;		fs->dirbase = ld_dword(fs->win + BPB_RootClusEx);
;
;		/* Get bitmap location and check if it is contiguous (implementation assumption) */
;		so = i = 0;
;		for (;;) {	/* Find the bitmap entry in the root directory (in only first cluster) */
;			if (i == 0) {
;				if (so >= fs->csize) return FR_NO_FILESYSTEM;	/* Not found? */
;				if (move_window(fs, clst2sect(fs, (DWORD)fs->dirbase) + so) != FR_OK) return FR_DISK_ERR;
;				so++;
;			}
;			if (fs->win[i] == ET_BITMAP) break;				/* Is it a bitmap entry? */
;			i = (i + SZDIRE) % SS(fs);	/* Next entry */
;		}
;		bcl = ld_dword(fs->win + i + 20);					/* Bitmap cluster */
;		if (bcl < 2 || bcl >= fs->n_fatent) return FR_NO_FILESYSTEM;
;		fs->bitbase = fs->database + fs->csize * (bcl - 2);	/* Bitmap sector */
;		for (;;) {	/* Check if bitmap is contiguous */
;			if (move_window(fs, fs->fatbase + bcl / (SS(fs) / 4)) != FR_OK) return FR_DISK_ERR;
;			cv = ld_dword(fs->win + bcl % (SS(fs) / 4) * 4);
;			if (cv == 0xFFFFFFFF) break;				/* Last link? */
;			if (cv != ++bcl) return FR_NO_FILESYSTEM;	/* Fragmented? */
;		}
;
;#if !FF_FS_READONLY
;		fs->last_clst = fs->free_clst = 0xFFFFFFFF;		/* Initialize cluster allocation information */
;#endif
;		fmt = FS_EXFAT;			/* FAT sub-type */
;	} else
;#endif	/* FF_FS_EXFAT */
;	{
	.line	3560
;
;		k_debug_pointer( "mount_volume:fs->win:",fs->win);
	.line	3562
	clc
	lda	#$2f
	adc	<L422+fs_1
	sta	<R0
	lda	#$0
	adc	<L422+fs_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pea	#^L420+56
	pea	#<L420+56
	jsl	~~k_debug_pointer
;		//k_debug_long( "mount_volume:BPB_BytsPerSec:",(long)BPB_BytsPerSec);
;		k_debug_integer( "mount_volume:SS(fs):",SS(fs));
	.line	3564
	pea	#<$200
	pea	#^L420+78
	pea	#<L420+78
	jsl	~~k_debug_integer
;		k_debug_integer( "mount_volume:fs->win + BPB_BytsPerSec:",ld_word(FADDR(BPB_BytsPerSec)) );
	.line	3565
	clc
	lda	#$3a
	adc	<L422+fs_1
	sta	<R0
	lda	#$0
	adc	<L422+fs_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~ld_word
	pha
	pea	#^L420+99
	pea	#<L420+99
	jsl	~~k_debug_integer
;
;
;
;
;		if (ld_word(FADDR(BPB_BytsPerSec)) != SS(fs)) return FR_NO_FILESYSTEM;	/* (BPB_BytsPerSec must be equal to the physical sector size) */
	.line	3570
	clc
	lda	#$3a
	adc	<L422+fs_1
	sta	<R0
	lda	#$0
	adc	<L422+fs_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~ld_word
	sta	<R1
	lda	<R1
	cmp	#<$200
	bne	L436
	brl	L10195
L436:
	.line	3570
	lda	#$d
	brl	L425
;
;		fasize = ld_word(FADDR(BPB_FATSz16));		/* Number of sectors per FAT */
L10195:
	.line	3572
	clc
	lda	#$45
	adc	<L422+fs_1
	sta	<R0
	lda	#$0
	adc	<L422+fs_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~ld_word
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L437
	dey
L437:
	sta	<L422+fasize_1
	sty	<L422+fasize_1+2
;		if (fasize == 0) fasize = ld_dword(&(fs->win[BPB_FATSz32]));
	.line	3573
	lda	<L422+fasize_1
	ora	<L422+fasize_1+2
	beq	L438
	brl	L10196
L438:
	.line	3573
	clc
	lda	#$53
	adc	<L422+fs_1
	sta	<R0
	lda	#$0
	adc	<L422+fs_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~ld_dword
	sta	<L422+fasize_1
	stx	<L422+fasize_1+2
;		fs->fsize = fasize;
L10196:
	.line	3574
	lda	<L422+fasize_1
	ldy	#$17
	sta	[<L422+fs_1],Y
	lda	<L422+fasize_1+2
	ldy	#$19
	sta	[<L422+fs_1],Y
;
;		fs->n_fats = fs->win[BPB_NumFATs];				/* Number of FATs */
	.line	3576
	sep	#$20
	longa	off
	ldy	#$3f
	lda	[<L422+fs_1],Y
	ldy	#$2
	sta	[<L422+fs_1],Y
	rep	#$20
	longa	on
;
;
;		k_debug_long( "mount_volume:n_fats:",fs->n_fats);
	.line	3579
	ldy	#$2
	lda	[<L422+fs_1],Y
	and	#$ff
	pha
	pea	#^L420+138
	pea	#<L420+138
	jsl	~~k_debug_long
;
;
;		if (fs->n_fats != 1 && fs->n_fats != 2) return FR_NO_FILESYSTEM;	/* (Must be 1 or 2) */
	.line	3582
	sep	#$20
	longa	off
	ldy	#$2
	lda	[<L422+fs_1],Y
	cmp	#<$1
	rep	#$20
	longa	on
	bne	L439
	brl	L10197
L439:
	sep	#$20
	longa	off
	ldy	#$2
	lda	[<L422+fs_1],Y
	cmp	#<$2
	rep	#$20
	longa	on
	bne	L440
	brl	L10197
L440:
	.line	3582
	lda	#$d
	brl	L425
;		fasize *= fs->n_fats;							/* Number of sectors for FAT area */
L10197:
	.line	3583
	ldy	#$2
	lda	[<L422+fs_1],Y
	and	#$ff
	sta	<R0
	stz	<R0+2
	pei	<L422+fasize_1+2
	pei	<L422+fasize_1
	pei	<R0+2
	pei	<R0
	xref	~~~lmul
	jsl	~~~lmul
	sta	<L422+fasize_1
	stx	<L422+fasize_1+2
;
;		fs->csize = fs->win[BPB_SecPerClus];			/* Cluster size */
	.line	3585
	ldy	#$3c
	lda	[<L422+fs_1],Y
	and	#$ff
	ldy	#$9
	sta	[<L422+fs_1],Y
;		if (fs->csize == 0 || (fs->csize & (fs->csize - 1))) return FR_NO_FILESYSTEM;	/* (Must be power of 2) */
	.line	3586
	ldy	#$9
	lda	[<L422+fs_1],Y
	bne	L442
	brl	L441
L442:
	clc
	lda	#$ffff
	ldy	#$9
	adc	[<L422+fs_1],Y
	sta	<R0
	ldy	#$9
	lda	[<L422+fs_1],Y
	and	<R0
	bne	L443
	brl	L10198
L443:
L441:
	.line	3586
	lda	#$d
	brl	L425
;
;		fs->n_rootdir = ld_word(FADDR(BPB_RootEntCnt));	/* Number of root directory entries */
L10198:
	.line	3588
	clc
	lda	#$40
	adc	<L422+fs_1
	sta	<R0
	lda	#$0
	adc	<L422+fs_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~ld_word
	ldy	#$7
	sta	[<L422+fs_1],Y
;		if (fs->n_rootdir % (SS(fs) / SZDIRE)) return FR_NO_FILESYSTEM;	/* (Must be sector aligned) */
	.line	3589
	ldy	#$7
	lda	[<L422+fs_1],Y
	and	#<$f
	bne	L444
	brl	L10199
L444:
	.line	3589
	lda	#$d
	brl	L425
;
;		tsect = ld_word(FADDR(BPB_TotSec16));		/* Number of sectors on the volume */
L10199:
	.line	3591
	clc
	lda	#$42
	adc	<L422+fs_1
	sta	<R0
	lda	#$0
	adc	<L422+fs_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~ld_word
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L445
	dey
L445:
	sta	<L422+tsect_1
	sty	<L422+tsect_1+2
;		if (tsect == 0) tsect = ld_dword(fs->win + BPB_TotSec32);
	.line	3592
	lda	<L422+tsect_1
	ora	<L422+tsect_1+2
	beq	L446
	brl	L10200
L446:
	.line	3592
	clc
	lda	#$4f
	adc	<L422+fs_1
	sta	<R0
	lda	#$0
	adc	<L422+fs_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~ld_dword
	sta	<L422+tsect_1
	stx	<L422+tsect_1+2
;
;		nrsv = ld_word(FADDR(BPB_RsvdSecCnt));		/* Number of reserved sectors */
L10200:
	.line	3594
	clc
	lda	#$3d
	adc	<L422+fs_1
	sta	<R0
	lda	#$0
	adc	<L422+fs_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~ld_word
	sta	<L422+nrsv_1
;		if (nrsv == 0) return FR_NO_FILESYSTEM;			/* (Must not be 0) */
	.line	3595
	lda	<L422+nrsv_1
	beq	L447
	brl	L10201
L447:
	.line	3595
	lda	#$d
	brl	L425
;
;		/* Determine the FAT sub type */
;		sysect = nrsv + fasize + fs->n_rootdir / (SS(fs) / SZDIRE);	/* RSV + FAT + DIR */
L10201:
	.line	3598
	ldy	#$7
	lda	[<L422+fs_1],Y
	lsr	A
	lsr	A
	lsr	A
	lsr	A
	sta	<R0
	lda	<R0
	sta	<R0
	stz	<R0+2
	ldy	#$0
	lda	<L422+nrsv_1
	bpl	L448
	dey
L448:
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
	lda	<R2
	adc	<L422+fasize_1
	sta	<L422+sysect_1
	lda	<R2+2
	adc	<L422+fasize_1+2
	sta	<L422+sysect_1+2
;		if (tsect < sysect) return FR_NO_FILESYSTEM;	/* (Invalid volume size) */
	.line	3599
	lda	<L422+tsect_1
	cmp	<L422+sysect_1
	lda	<L422+tsect_1+2
	sbc	<L422+sysect_1+2
	bcc	L449
	brl	L10202
L449:
	.line	3599
	lda	#$d
	brl	L425
;		nclst = (tsect - sysect) / fs->csize;			/* Number of clusters */
L10202:
	.line	3600
	ldy	#$0
	phy
	ldy	#$9
	lda	[<L422+fs_1],Y
	ply
	rol	A
	ror	A
	bpl	L450
	dey
L450:
	sta	<R0
	sty	<R0+2
	sec
	lda	<L422+tsect_1
	sbc	<L422+sysect_1
	sta	<R1
	lda	<L422+tsect_1+2
	sbc	<L422+sysect_1+2
	sta	<R1+2
	pei	<R0+2
	pei	<R0
	pei	<R1+2
	pei	<R1
	xref	~~~ludv
	jsl	~~~ludv
	sta	<L422+nclst_1
	stx	<L422+nclst_1+2
;		if (nclst == 0) return FR_NO_FILESYSTEM;		/* (Invalid volume size) */
	.line	3601
	lda	<L422+nclst_1
	ora	<L422+nclst_1+2
	beq	L451
	brl	L10203
L451:
	.line	3601
	lda	#$d
	brl	L425
;		fmt = 0;
L10203:
	.line	3602
	stz	<L422+fmt_1
;		if (nclst <= MAX_FAT32) fmt = FS_FAT32;
	.line	3603
	lda	#$fff5
	cmp	<L422+nclst_1
	lda	#$fff
	sbc	<L422+nclst_1+2
	bcs	L452
	brl	L10204
L452:
	.line	3603
	lda	#$3
	sta	<L422+fmt_1
;		if (nclst <= MAX_FAT16) fmt = FS_FAT16;
L10204:
	.line	3604
	lda	#$fff5
	cmp	<L422+nclst_1
	lda	#$0
	sbc	<L422+nclst_1+2
	bcs	L453
	brl	L10205
L453:
	.line	3604
	lda	#$2
	sta	<L422+fmt_1
;		if (nclst <= MAX_FAT12) fmt = FS_FAT12;
L10205:
	.line	3605
	lda	#$ff5
	cmp	<L422+nclst_1
	lda	#$0
	sbc	<L422+nclst_1+2
	bcs	L454
	brl	L10206
L454:
	.line	3605
	lda	#$1
	sta	<L422+fmt_1
;		if (fmt == 0) return FR_NO_FILESYSTEM;
L10206:
	.line	3606
	lda	<L422+fmt_1
	beq	L455
	brl	L10207
L455:
	.line	3606
	lda	#$d
	brl	L425
;
;		/* Boundaries and Limits */
;		fs->n_fatent = nclst + 2;						/* Number of FAT entries */
L10207:
	.line	3609
	clc
	lda	#$2
	adc	<L422+nclst_1
	sta	<R0
	lda	#$0
	adc	<L422+nclst_1+2
	sta	<R0+2
	lda	<R0
	ldy	#$13
	sta	[<L422+fs_1],Y
	lda	<R0+2
	ldy	#$15
	sta	[<L422+fs_1],Y
;		fs->volbase = bsect;							/* Volume start sector */
	.line	3610
	lda	<L422+bsect_1
	ldy	#$1b
	sta	[<L422+fs_1],Y
	lda	<L422+bsect_1+2
	ldy	#$1d
	sta	[<L422+fs_1],Y
;		fs->fatbase = bsect + nrsv; 					/* FAT start sector */
	.line	3611
	ldy	#$0
	lda	<L422+nrsv_1
	bpl	L456
	dey
L456:
	sta	<R0
	sty	<R0+2
	clc
	lda	<R0
	adc	<L422+bsect_1
	sta	<R1
	lda	<R0+2
	adc	<L422+bsect_1+2
	sta	<R1+2
	lda	<R1
	ldy	#$1f
	sta	[<L422+fs_1],Y
	lda	<R1+2
	ldy	#$21
	sta	[<L422+fs_1],Y
;		fs->database = bsect + sysect;					/* Data start sector */
	.line	3612
	clc
	lda	<L422+bsect_1
	adc	<L422+sysect_1
	sta	<R0
	lda	<L422+bsect_1+2
	adc	<L422+sysect_1+2
	sta	<R0+2
	lda	<R0
	ldy	#$27
	sta	[<L422+fs_1],Y
	lda	<R0+2
	ldy	#$29
	sta	[<L422+fs_1],Y
;		if (fmt == FS_FAT32) {
	.line	3613
	lda	<L422+fmt_1
	cmp	#<$3
	beq	L457
	brl	L10208
L457:
	.line	3613
;			if (ld_word(FADDR(BPB_FSVer32)) != 0) return FR_NO_FILESYSTEM;	/* (Must be FAT32 revision 0.0) */
	.line	3614
	clc
	lda	#$59
	adc	<L422+fs_1
	sta	<R0
	lda	#$0
	adc	<L422+fs_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~ld_word
	tax
	bne	L458
	brl	L10209
L458:
	.line	3614
	lda	#$d
	brl	L425
;			if (fs->n_rootdir != 0) return FR_NO_FILESYSTEM;	/* (BPB_RootEntCnt must be 0) */
L10209:
	.line	3615
	ldy	#$7
	lda	[<L422+fs_1],Y
	bne	L459
	brl	L10210
L459:
	.line	3615
	lda	#$d
	brl	L425
;			fs->dirbase = ld_dword(fs->win + BPB_RootClus32);	/* Root directory start cluster */
L10210:
	.line	3616
	clc
	lda	#$5b
	adc	<L422+fs_1
	sta	<R0
	lda	#$0
	adc	<L422+fs_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~ld_dword
	sta	<R1
	stx	<R1+2
	lda	<R1
	ldy	#$23
	sta	[<L422+fs_1],Y
	lda	<R1+2
	ldy	#$25
	sta	[<L422+fs_1],Y
;			szbfat = fs->n_fatent * 4;					/* (Needed FAT size) */
	.line	3617
	ldy	#$15
	lda	[<L422+fs_1],Y
	pha
	ldy	#$13
	lda	[<L422+fs_1],Y
	pha
	lda	#$2
	xref	~~~lasl
	jsl	~~~lasl
	sta	<L422+szbfat_1
	stx	<L422+szbfat_1+2
;		} else {
	.line	3618
	brl	L10211
L10208:
	.line	3618
;			if (fs->n_rootdir == 0)	return FR_NO_FILESYSTEM;	/* (BPB_RootEntCnt must not be 0) */
	.line	3619
	ldy	#$7
	lda	[<L422+fs_1],Y
	beq	L460
	brl	L10212
L460:
	.line	3619
	lda	#$d
	brl	L425
;			fs->dirbase = fs->fatbase + fasize;			/* Root directory start sector */
L10212:
	.line	3620
	clc
	ldy	#$1f
	lda	[<L422+fs_1],Y
	adc	<L422+fasize_1
	sta	<R0
	ldy	#$21
	lda	[<L422+fs_1],Y
	adc	<L422+fasize_1+2
	sta	<R0+2
	lda	<R0
	ldy	#$23
	sta	[<L422+fs_1],Y
	lda	<R0+2
	ldy	#$25
	sta	[<L422+fs_1],Y
;			szbfat = (fmt == FS_FAT16) ?				/* (Needed FAT size) */
	.line	3621
;				fs->n_fatent * 2 : fs->n_fatent * 3 / 2 + (fs->n_fatent & 1);
	lda	<L422+fmt_1
	cmp	#<$2
	beq	L462
	brl	L461
L462:
	ldy	#$15
	lda	[<L422+fs_1],Y
	pha
	ldy	#$13
	lda	[<L422+fs_1],Y
	pha
	lda	#$1
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R0
	stx	<R0+2
	ldx	<R0+2
	lda	<R0
	bra	L463
L461:
	ldy	#$13
	lda	[<L422+fs_1],Y
	and	#<$1
	sta	<R0
	stz	<R0+2
	pea	#^$3
	pea	#<$3
	ldy	#$15
	lda	[<L422+fs_1],Y
	pha
	ldy	#$13
	lda	[<L422+fs_1],Y
	pha
	xref	~~~lmul
	jsl	~~~lmul
	sta	<R2
	stx	<R2+2
	pei	<R2+2
	pei	<R2
	lda	#$1
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R1
	stx	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<R3
	lda	<R1+2
	adc	<R0+2
	sta	<R3+2
	ldx	<R3+2
	lda	<R3
L463:
	sta	<R0
	stx	<R0+2
	lda	<R0
	sta	<L422+szbfat_1
	lda	<R0+2
	sta	<L422+szbfat_1+2
;		}
	.line	3623
L10211:
;		if (fs->fsize < (szbfat + (SS(fs) - 1)) / SS(fs)) return FR_NO_FILESYSTEM;	/* (BPB_FATSz must not be less than the size needed) */
	.line	3624
	clc
	lda	#$1ff
	adc	<L422+szbfat_1
	sta	<R1
	lda	#$0
	adc	<L422+szbfat_1+2
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	lda	#$9
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R0
	stx	<R0+2
	ldy	#$17
	lda	[<L422+fs_1],Y
	cmp	<R0
	ldy	#$19
	lda	[<L422+fs_1],Y
	sbc	<R0+2
	bcc	L464
	brl	L10213
L464:
	.line	3624
	lda	#$d
	brl	L425
;
;#if !FF_FS_READONLY
;		/* Get FSInfo if available */
;		fs->last_clst = fs->free_clst = 0xFFFFFFFF;		/* Initialize cluster allocation information */
L10213:
	.line	3628
	lda	#$ffff
	ldy	#$f
	sta	[<L422+fs_1],Y
	lda	#$ffff
	ldy	#$11
	sta	[<L422+fs_1],Y
	lda	#$ffff
	ldy	#$b
	sta	[<L422+fs_1],Y
	lda	#$ffff
	ldy	#$d
	sta	[<L422+fs_1],Y
;		fs->fsi_flag = 0x80;
	.line	3629
	sep	#$20
	longa	off
	lda	#$80
	ldy	#$4
	sta	[<L422+fs_1],Y
	rep	#$20
	longa	on
;#if (FF_FS_NOFSINFO & 3) != 3
;		if (fmt == FS_FAT32				/* Allow to update FSInfo only if BPB_FSInfo32 == 1 */
	.line	3631
;			&& ld_word(fs->win + BPB_FSInfo32) == 1
;			&& move_window(fs, bsect + 1) == FR_OK)
;		{
	lda	<L422+fmt_1
	cmp	#<$3
	beq	L465
	brl	L10214
L465:
	clc
	lda	#$5f
	adc	<L422+fs_1
	sta	<R0
	lda	#$0
	adc	<L422+fs_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~ld_word
	sta	<R1
	lda	<R1
	cmp	#<$1
	beq	L466
	brl	L10214
L466:
	clc
	lda	#$1
	adc	<L422+bsect_1
	sta	<R1
	lda	#$0
	adc	<L422+bsect_1+2
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	pei	<L422+fs_1+2
	pei	<L422+fs_1
	jsl	~~move_window
	tax
	beq	L467
	brl	L10214
L467:
	.line	3634
;			fs->fsi_flag = 0;
	.line	3635
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$4
	sta	[<L422+fs_1],Y
	rep	#$20
	longa	on
;			if (ld_word(fs->win + BS_55AA) == 0xAA55	/* Load FSInfo data if available */
	.line	3636
;				&& ld_dword(fs->win + FSI_LeadSig) == 0x41615252
;				&& ld_dword(fs->win + FSI_StrucSig) == 0x61417272)
;			{
	clc
	lda	#$22d
	adc	<L422+fs_1
	sta	<R0
	lda	#$0
	adc	<L422+fs_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~ld_word
	sta	<R1
	lda	<R1
	cmp	#<$aa55
	beq	L468
	brl	L10215
L468:
	clc
	lda	#$2f
	adc	<L422+fs_1
	sta	<R1
	lda	#$0
	adc	<L422+fs_1+2
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~ld_dword
	sta	<R2
	stx	<R2+2
	lda	<R2
	cmp	#<$41615252
	bne	L469
	lda	<R2+2
	cmp	#^$41615252
L469:
	beq	L470
	brl	L10215
L470:
	clc
	lda	#$213
	adc	<L422+fs_1
	sta	<R2
	lda	#$0
	adc	<L422+fs_1+2
	sta	<R2+2
	pei	<R2+2
	pei	<R2
	jsl	~~ld_dword
	sta	<R3
	stx	<R3+2
	lda	<R3
	cmp	#<$61417272
	bne	L471
	lda	<R3+2
	cmp	#^$61417272
L471:
	beq	L472
	brl	L10215
L472:
	.line	3639
;#if (FF_FS_NOFSINFO & 1) == 0
;				fs->free_clst = ld_dword(fs->win + FSI_Free_Count);
	.line	3641
	clc
	lda	#$217
	adc	<L422+fs_1
	sta	<R0
	lda	#$0
	adc	<L422+fs_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~ld_dword
	sta	<R1
	stx	<R1+2
	lda	<R1
	ldy	#$f
	sta	[<L422+fs_1],Y
	lda	<R1+2
	ldy	#$11
	sta	[<L422+fs_1],Y
;#endif
;#if (FF_FS_NOFSINFO & 2) == 0
;				fs->last_clst = ld_dword(fs->win + FSI_Nxt_Free);
	.line	3644
	clc
	lda	#$21b
	adc	<L422+fs_1
	sta	<R0
	lda	#$0
	adc	<L422+fs_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~ld_dword
	sta	<R1
	stx	<R1+2
	lda	<R1
	ldy	#$b
	sta	[<L422+fs_1],Y
	lda	<R1+2
	ldy	#$d
	sta	[<L422+fs_1],Y
;#endif
;			}
	.line	3646
;		}
L10215:
	.line	3647
;#endif	/* (FF_FS_NOFSINFO & 3) != 3 */
;#endif	/* !FF_FS_READONLY */
;	}
L10214:
	.line	3650
;
;	fs->fs_type = (BYTE)fmt;/* FAT sub-type */
	.line	3652
	sep	#$20
	longa	off
	lda	<L422+fmt_1
	sta	[<L422+fs_1]
	rep	#$20
	longa	on
;	fs->id = ++Fsid;		/* Volume mount ID */
	.line	3653
	inc	|~~Fsid
	lda	|~~Fsid
	ldy	#$5
	sta	[<L422+fs_1],Y
;#if FF_USE_LFN == 1
;	fs->lfnbuf = LfnBuf;	/* Static LFN working buffer */
;#if FF_FS_EXFAT
;	fs->dirbuf = DirBuf;	/* Static directory block scratchpad buuffer */
;#endif
;#endif
;#if FF_FS_RPATH != 0
;	fs->cdir = 0;			/* Initialize current directory */
;#endif
;#if FF_FS_LOCK != 0			/* Clear file lock semaphores */
;	clear_lock(fs);
;#endif
;	return FR_OK;
	.line	3666
	lda	#$0
	brl	L425
;}
	.line	3667
	.endblock	3667
L421	equ	51
L422	equ	17
	ends
	efunc
	.endfunc	3667,17,51
	.line	3667
	data
L420:
	db	$6D,$6F,$75,$6E,$74,$5F,$76,$6F,$6C,$75,$6D,$65,$2E,$2E,$2E
	db	$0D,$0A,$00,$6D,$6F,$75,$6E,$74,$5F,$76,$6F,$6C,$75,$6D,$65
	db	$3A,$66,$6D,$74,$3A,$00,$6D,$6F,$75,$6E,$74,$5F,$76,$6F,$6C
	db	$75,$6D,$65,$3A,$62,$73,$65,$63,$74,$3A,$00,$6D,$6F,$75,$6E
	db	$74,$5F,$76,$6F,$6C,$75,$6D,$65,$3A,$66,$73,$2D,$3E,$77,$69
	db	$6E,$3A,$00,$6D,$6F,$75,$6E,$74,$5F,$76,$6F,$6C,$75,$6D,$65
	db	$3A,$53,$53,$28,$66,$73,$29,$3A,$00,$6D,$6F,$75,$6E,$74,$5F
	db	$76,$6F,$6C,$75,$6D,$65,$3A,$66,$73,$2D,$3E,$77,$69,$6E,$20
	db	$2B,$20,$42,$50,$42,$5F,$42,$79,$74,$73,$50,$65,$72,$53,$65
	db	$63,$3A,$00,$6D,$6F,$75,$6E,$74,$5F,$76,$6F,$6C,$75,$6D,$65
	db	$3A,$6E,$5F,$66,$61,$74,$73,$3A,$00
	ends
;
;
;
;
;/*-----------------------------------------------------------------------*/
;/* Check if the file/directory object is valid or not                    */
;/*-----------------------------------------------------------------------*/
;
;static FRESULT validate (	/* Returns FR_OK or FR_INVALID_OBJECT */
;	FFOBJID* obj,			/* Pointer to the FFOBJID, the 1st member in the FIL/DIR object, to check validity */
;	FATFS** rfs				/* Pointer to pointer to the owner filesystem object to return */
;)
;{
	.line	3676
	.line	3680
	FFDOS
	func
	.function	3680
~~validate:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L474
	tcs
	phd
	tcd
obj_0	set	4
rfs_0	set	8
	.block	3680
;	FRESULT res = FR_INVALID_OBJECT;
;
;
;	if (obj && obj->fs && obj->fs->fs_type && obj->id == obj->fs->id) {	/* Test if the object is valid */
res_1	set	0
	.sym	res,0,5,1,16
	.sym	obj,4,138,6,32,81
	.sym	rfs,8,1162,6,32,80
	lda	#$9
	sta	<L475+res_1
	.line	3684
	lda	<L474+obj_0
	ora	<L474+obj_0+2
	bne	L477
	brl	L10216
L477:
	lda	[<L474+obj_0]
	ldy	#$2
	ora	[<L474+obj_0],Y
	bne	L478
	brl	L10216
L478:
	lda	[<L474+obj_0]
	sta	<R0
	ldy	#$2
	lda	[<L474+obj_0],Y
	sta	<R0+2
	lda	[<R0]
	and	#$ff
	bne	L479
	brl	L10216
L479:
	lda	[<L474+obj_0]
	sta	<R0
	ldy	#$2
	lda	[<L474+obj_0],Y
	sta	<R0+2
	ldy	#$4
	lda	[<L474+obj_0],Y
	ldy	#$5
	cmp	[<R0],Y
	beq	L480
	brl	L10216
L480:
	.line	3684
;#if FF_FS_REENTRANT
;		if (lock_fs(obj->fs)) {	/* Obtain the filesystem object */
;			if (!(disk_status(obj->fs->pdrv) & STA_NOINIT)) { /* Test if the phsical drive is kept initialized */
;				res = FR_OK;
;			} else {
;				unlock_fs(obj->fs, FR_OK);
;			}
;		} else {
;			res = FR_TIMEOUT;
;		}
;#else
;		if (!(disk_status(obj->fs->pdrv) & STA_NOINIT)) { /* Test if the phsical drive is kept initialized */
	.line	3696
	lda	[<L474+obj_0]
	sta	<R0
	ldy	#$2
	lda	[<L474+obj_0],Y
	sta	<R0+2
	ldy	#$1
	lda	[<R0],Y
	pha
	jsl	~~disk_status
	sep	#$20
	longa	off
	and	#<$1
	rep	#$20
	longa	on
	beq	L481
	brl	L10217
L481:
	.line	3696
;			res = FR_OK;
	.line	3697
	stz	<L475+res_1
;		}
	.line	3698
;#endif
;	}
L10217:
	.line	3700
;	*rfs = (res == FR_OK) ? obj->fs : 0;	/* Corresponding filesystem object */
L10216:
	.line	3701
	lda	<L475+res_1
	beq	L483
	brl	L482
L483:
	ldy	#$2
	lda	[<L474+obj_0],Y
	tax
	lda	[<L474+obj_0]
	bra	L484
L482:
	lda	#$0
	tax
	lda	#$0
L484:
	sta	<R0
	stx	<R0+2
	lda	<R0
	sta	[<L474+rfs_0]
	lda	<R0+2
	ldy	#$2
	sta	[<L474+rfs_0],Y
;	return res;
	.line	3702
	lda	<L475+res_1
L485:
	tay
	lda	<L474+2
	sta	<L474+2+8
	lda	<L474+1
	sta	<L474+1+8
	pld
	tsc
	clc
	adc	#L474+8
	tcs
	tya
	rtl
;}
	.line	3703
	.endblock	3703
L474	equ	6
L475	equ	5
	ends
	efunc
	.endfunc	3703,5,6
	.line	3703
;
;
;
;
;/*---------------------------------------------------------------------------
;
;   Public Functions (FatFs API)
;
;----------------------------------------------------------------------------*/
;
;
;
;/*-----------------------------------------------------------------------*/
;/* Mount/Unmount a Logical Drive                                         */
;/*-----------------------------------------------------------------------*/
;
;FRESULT f_mount (
;	FATFS* fs,			/* Pointer to the filesystem object (NULL:unmount)*/
;	const TCHAR* path,	/* Logical drive number to be mounted/unmounted */
;	BYTE opt			/* Mode option 0:Do not mount (delayed mount), 1:Mount immediately */
;)
;{
	.line	3720
	.line	3725
	FFDOS
	xdef	~~f_mount
	func
	.function	3725
~~f_mount:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L486
	tcs
	phd
	tcd
fs_0	set	4
path_0	set	8
opt_0	set	12
	.block	3725
;	FATFS *cfs;
;	int vol;
;	FRESULT res;
;	const TCHAR *rp = path;
;
;
;	/* Get logical drive number */
;	vol = get_ldnumber(&rp);
cfs_1	set	0
vol_1	set	4
res_1	set	6
rp_1	set	8
	.sym	cfs,0,138,1,32,80
	.sym	vol,4,5,1,16
	.sym	res,6,5,1,16
	.sym	rp,8,142,1,32
	.sym	fs,4,138,6,32,80
	.sym	path,8,142,6,32
	.sym	opt,12,14,6,8
	lda	<L486+path_0
	sta	<L487+rp_1
	lda	<L486+path_0+2
	sta	<L487+rp_1+2
	.line	3733
	pea	#0
	clc
	tdc
	adc	#<L487+rp_1
	pha
	jsl	~~get_ldnumber
	sta	<L487+vol_1
;	if (vol < 0) return FR_INVALID_DRIVE;
	.line	3734
	lda	<L487+vol_1
	bmi	L489
	brl	L10218
L489:
	.line	3734
	lda	#$b
L490:
	tay
	lda	<L486+2
	sta	<L486+2+10
	lda	<L486+1
	sta	<L486+1+10
	pld
	tsc
	clc
	adc	#L486+10
	tcs
	tya
	rtl
;	cfs = FatFs[vol];					/* Pointer to fs object */
L10218:
	.line	3735
	lda	<L487+vol_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~FatFs
	adc	<R0
	sta	<R1
	lda	(<R1)
	sta	<L487+cfs_1
	ldy	#$2
	lda	(<R1),Y
	sta	<L487+cfs_1+2
;
;	if (cfs) {
	.line	3737
	lda	<L487+cfs_1
	ora	<L487+cfs_1+2
	bne	L491
	brl	L10219
L491:
	.line	3737
;#if FF_FS_LOCK != 0
;		clear_lock(cfs);
;#endif
;#if FF_FS_REENTRANT						/* Discard sync object of the current volume */
;		if (!ff_del_syncobj(cfs->sobj)) return FR_INT_ERR;
;#endif
;		cfs->fs_type = 0;				/* Clear old fs object */
	.line	3744
	sep	#$20
	longa	off
	lda	#$0
	sta	[<L487+cfs_1]
	rep	#$20
	longa	on
;	}
	.line	3745
;
;	if (fs) {
L10219:
	.line	3747
	lda	<L486+fs_0
	ora	<L486+fs_0+2
	bne	L492
	brl	L10220
L492:
	.line	3747
;		fs->fs_type = 0;				/* Clear new fs object */
	.line	3748
	sep	#$20
	longa	off
	lda	#$0
	sta	[<L486+fs_0]
	rep	#$20
	longa	on
;#if FF_FS_REENTRANT						/* Create sync object for the new volume */
;		if (!ff_cre_syncobj((BYTE)vol, &fs->sobj)) return FR_INT_ERR;
;#endif
;	}
	.line	3752
;	FatFs[vol] = fs;					/* Register new fs object */
L10220:
	.line	3753
	lda	<L487+vol_1
	asl	A
	asl	A
	sta	<R0
	clc
	lda	#<~~FatFs
	adc	<R0
	sta	<R1
	lda	<L486+fs_0
	sta	(<R1)
	lda	<L486+fs_0+2
	ldy	#$2
	sta	(<R1),Y
;
;	if (opt == 0) return FR_OK;			/* Do not mount now, it will be mounted later */
	.line	3755
	lda	<L486+opt_0
	and	#$ff
	beq	L493
	brl	L10221
L493:
	.line	3755
	lda	#$0
	brl	L490
;
;	res = mount_volume(&path, &fs, 0);	/* Force mounted the volume */
L10221:
	.line	3757
	pea	#<$0
	pea	#0
	clc
	tdc
	adc	#<L486+fs_0
	pha
	pea	#0
	clc
	tdc
	adc	#<L486+path_0
	pha
	jsl	~~mount_volume
	sta	<L487+res_1
;	LEAVE_FF(fs, res);
	.line	3758
	lda	<L487+res_1
	brl	L490
;}
	.line	3759
	.endblock	3759
L486	equ	20
L487	equ	9
	ends
	efunc
	.endfunc	3759,9,20
	.line	3759
;
;
;
;
;/*-----------------------------------------------------------------------*/
;/* Open or Create a File                                                 */
;/*-----------------------------------------------------------------------*/
;
;FRESULT f_open (
;	FIL* fp,			/* Pointer to the blank file object */
;	const TCHAR* path,	/* Pointer to the file name */
;	BYTE mode			/* Access mode and file open mode flags */
;)
;{
	.line	3768
	.line	3773
	FFDOS
	xdef	~~f_open
	func
	.function	3773
~~f_open:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L494
	tcs
	phd
	tcd
fp_0	set	4
path_0	set	8
mode_0	set	12
	.block	3773
;	FRESULT res;
;	DIR dj;
;	FATFS *fs;
;#if !FF_FS_READONLY
;	DWORD cl, bcs, clst;
;	LBA_t sc;
;	FSIZE_t ofs;
;#endif
;	DEF_NAMBUF
;
;	k_debug_string( "f_open...\r\n");
res_1	set	0
dj_1	set	2
fs_1	set	46
cl_1	set	50
bcs_1	set	54
clst_1	set	58
sc_1	set	62
ofs_1	set	66
	.sym	res,0,5,1,16
	.sym	dj,2,10,1,352,83
	.sym	fs,46,138,1,32,80
	.sym	cl,50,18,1,32
	.sym	bcs,54,18,1,32
	.sym	clst,58,18,1,32
	.sym	sc,62,18,1,32
	.sym	ofs,66,18,1,32
	.sym	fp,4,138,6,32,82
	.sym	path,8,142,6,32
	.sym	mode,12,14,6,8
	.line	3784
	pea	#^L473
	pea	#<L473
	jsl	~~k_debug_string
;
;
;	if (!fp) return FR_INVALID_OBJECT;
	.line	3787
	lda	<L494+fp_0
	ora	<L494+fp_0+2
	beq	L497
	brl	L10222
L497:
	.line	3787
	lda	#$9
L498:
	tay
	lda	<L494+2
	sta	<L494+2+10
	lda	<L494+1
	sta	<L494+1+10
	pld
	tsc
	clc
	adc	#L494+10
	tcs
	tya
	rtl
;
;	/* Get logical drive number */
;	mode &= FF_FS_READONLY ? FA_READ : FA_READ | FA_WRITE | FA_CREATE_ALWAYS | FA_CREATE_NEW | FA_OPEN_ALWAYS | FA_OPEN_APPEND;
L10222:
	.line	3790
	sep	#$20
	longa	off
	lda	#$c0
	trb	<L494+mode_0
	rep	#$20
	longa	on
;	res = mount_volume(&path, &fs, mode);
	.line	3791
	pei	<L494+mode_0
	pea	#0
	clc
	tdc
	adc	#<L495+fs_1
	pha
	pea	#0
	clc
	tdc
	adc	#<L494+path_0
	pha
	jsl	~~mount_volume
	sta	<L495+res_1
;	if (res == FR_OK) {
	.line	3792
	lda	<L495+res_1
	beq	L499
	brl	L10223
L499:
	.line	3792
;		dj.obj.fs = fs;
	.line	3793
	lda	<L495+fs_1
	sta	<L495+dj_1
	lda	<L495+fs_1+2
	sta	<L495+dj_1+2
;		INIT_NAMBUF(fs);
	.line	3794
;		res = follow_path(&dj, path);	/* Follow the file path */
	.line	3795
	pei	<L494+path_0+2
	pei	<L494+path_0
	pea	#0
	clc
	tdc
	adc	#<L495+dj_1
	pha
	jsl	~~follow_path
	sta	<L495+res_1
;#if !FF_FS_READONLY	/* Read/Write configuration */
;		if (res == FR_OK) {
	.line	3797
	lda	<L495+res_1
	beq	L500
	brl	L10224
L500:
	.line	3797
;			if (dj.fn[NSFLAG] & NS_NONAME) {	/* Origin directory itself? */
	.line	3798
	sep	#$20
	longa	off
	lda	<L495+dj_1+43
	and	#<$80
	rep	#$20
	longa	on
	bne	L501
	brl	L10225
L501:
	.line	3798
;				res = FR_INVALID_NAME;
	.line	3799
	lda	#$6
	sta	<L495+res_1
;			}
	.line	3800
;#if FF_FS_LOCK != 0
;			else {
;				res = chk_lock(&dj, (mode & ~FA_READ) ? 1 : 0);		/* Check if the file can be used */
;			}
;#endif
;		}
L10225:
	.line	3806
;
;		k_debug_integer( "f_open mode:", mode);
L10224:
	.line	3808
	lda	<L494+mode_0
	and	#$ff
	pha
	pea	#^L473+12
	pea	#<L473+12
	jsl	~~k_debug_integer
;
;		/* Create or Open a file */
;		if (mode & (FA_CREATE_ALWAYS | FA_OPEN_ALWAYS | FA_CREATE_NEW)) {
	.line	3811
	sep	#$20
	longa	off
	lda	<L494+mode_0
	and	#<$1c
	rep	#$20
	longa	on
	bne	L502
	brl	L10226
L502:
	.line	3811
;			if (res != FR_OK) {					/* No file, create new */
	.line	3812
	lda	<L495+res_1
	bne	L503
	brl	L10227
L503:
	.line	3812
;				if (res == FR_NO_FILE) {		/* There is no file to open, create a new entry */
	.line	3813
	lda	<L495+res_1
	cmp	#<$4
	beq	L504
	brl	L10228
L504:
	.line	3813
;#if FF_FS_LOCK != 0
;					res = enq_lock() ? dir_register(&dj) : FR_TOO_MANY_OPEN_FILES;
;#else
;					res = dir_register(&dj);
	.line	3817
	pea	#0
	clc
	tdc
	adc	#<L495+dj_1
	pha
	jsl	~~dir_register
	sta	<L495+res_1
;#endif
;				}
	.line	3819
;				mode |= FA_CREATE_ALWAYS;		/* File is created */
L10228:
	.line	3820
	sep	#$20
	longa	off
	lda	#$8
	tsb	<L494+mode_0
	rep	#$20
	longa	on
;			}
	.line	3821
;			else {								/* Any object with the same name is already existing */
	brl	L10229
L10227:
	.line	3822
;				if (dj.obj.attr & (AM_RDO | AM_DIR)) {	/* Cannot overwrite it (R/O or DIR) */
	.line	3823
	sep	#$20
	longa	off
	lda	<L495+dj_1+6
	and	#<$11
	rep	#$20
	longa	on
	bne	L505
	brl	L10230
L505:
	.line	3823
;					res = FR_DENIED;
	.line	3824
	lda	#$7
	sta	<L495+res_1
;				} else {
	.line	3825
	brl	L10231
L10230:
	.line	3825
;					if (mode & FA_CREATE_NEW) res = FR_EXIST;	/* Cannot create as new file */
	.line	3826
	sep	#$20
	longa	off
	lda	<L494+mode_0
	and	#<$4
	rep	#$20
	longa	on
	bne	L506
	brl	L10232
L506:
	.line	3826
	lda	#$8
	sta	<L495+res_1
;				}
L10232:
	.line	3827
L10231:
;			}
	.line	3828
L10229:
;			if (res == FR_OK && (mode & FA_CREATE_ALWAYS)) {	/* Truncate the file if overwrite mode */
	.line	3829
	lda	<L495+res_1
	beq	L507
	brl	L10233
L507:
	sep	#$20
	longa	off
	lda	<L494+mode_0
	and	#<$8
	rep	#$20
	longa	on
	bne	L508
	brl	L10233
L508:
	.line	3829
;#if FF_FS_EXFAT
;				if (fs->fs_type == FS_EXFAT) {
;					/* Get current allocation info */
;					fp->obj.fs = fs;
;					init_alloc_info(fs, &fp->obj);
;					/* Set directory entry block initial state */
;					mem_set(fs->dirbuf + 2, 0, 30);		/* Clear 85 entry except for NumSec */
;					mem_set(fs->dirbuf + 38, 0, 26);	/* Clear C0 entry except for NumName and NameHash */
;					fs->dirbuf[XDIR_Attr] = AM_ARC;
;					st_dword(fs->dirbuf + XDIR_CrtTime, GET_FATTIME());
;					fs->dirbuf[XDIR_GenFlags] = 1;
;					res = store_xdir(&dj);
;					if (res == FR_OK && fp->obj.sclust != 0) {	/* Remove the cluster chain if exist */
;						res = remove_chain(&fp->obj, fp->obj.sclust, 0);
;						fs->last_clst = fp->obj.sclust - 1;		/* Reuse the cluster hole */
;					}
;				} else
;#endif
;				{
	.line	3848
;					/* Set directory entry initial state */
;					cl = ld_clust(fs, dj.dir);			/* Get current cluster chain */
	.line	3850
	pei	<L495+dj_1+30
	pei	<L495+dj_1+28
	pei	<L495+fs_1+2
	pei	<L495+fs_1
	jsl	~~ld_clust
	sta	<L495+cl_1
	stx	<L495+cl_1+2
;					st_dword(dj.dir + DIR_CrtTime, GET_FATTIME());	/* Set created time */
	.line	3851
	pea	#^$4e210000
	pea	#<$4e210000
	clc
	lda	#$e
	adc	<L495+dj_1+28
	sta	<R0
	lda	#$0
	adc	<L495+dj_1+30
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~st_dword
;					dj.dir[DIR_Attr] = AM_ARC;			/* Reset attribute */
	.line	3852
	sep	#$20
	longa	off
	lda	#$20
	ldy	#$b
	sta	[<L495+dj_1+28],Y
	rep	#$20
	longa	on
;					st_clust(fs, dj.dir, 0);			/* Reset file allocation info */
	.line	3853
	pea	#^$0
	pea	#<$0
	pei	<L495+dj_1+30
	pei	<L495+dj_1+28
	pei	<L495+fs_1+2
	pei	<L495+fs_1
	jsl	~~st_clust
;					st_dword(dj.dir + DIR_FileSize, 0);
	.line	3854
	pea	#^$0
	pea	#<$0
	clc
	lda	#$1c
	adc	<L495+dj_1+28
	sta	<R0
	lda	#$0
	adc	<L495+dj_1+30
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~st_dword
;					fs->wflag = 1;
	.line	3855
	sep	#$20
	longa	off
	lda	#$1
	ldy	#$3
	sta	[<L495+fs_1],Y
	rep	#$20
	longa	on
;					if (cl != 0) {						/* Remove the cluster chain if exist */
	.line	3856
	lda	<L495+cl_1
	ora	<L495+cl_1+2
	bne	L509
	brl	L10234
L509:
	.line	3856
;						sc = fs->winsect;
	.line	3857
	ldy	#$2b
	lda	[<L495+fs_1],Y
	sta	<L495+sc_1
	ldy	#$2d
	lda	[<L495+fs_1],Y
	sta	<L495+sc_1+2
;						res = remove_chain(&dj.obj, cl, 0);
	.line	3858
	pea	#^$0
	pea	#<$0
	pei	<L495+cl_1+2
	pei	<L495+cl_1
	pea	#0
	clc
	tdc
	adc	#<L495+dj_1
	pha
	jsl	~~remove_chain
	sta	<L495+res_1
;						if (res == FR_OK) {
	.line	3859
	lda	<L495+res_1
	beq	L510
	brl	L10235
L510:
	.line	3859
;							res = move_window(fs, sc);
	.line	3860
	pei	<L495+sc_1+2
	pei	<L495+sc_1
	pei	<L495+fs_1+2
	pei	<L495+fs_1
	jsl	~~move_window
	sta	<L495+res_1
;							fs->last_clst = cl - 1;		/* Reuse the cluster hole */
	.line	3861
	clc
	lda	#$ffff
	adc	<L495+cl_1
	sta	<R0
	lda	#$ffff
	adc	<L495+cl_1+2
	sta	<R0+2
	lda	<R0
	ldy	#$b
	sta	[<L495+fs_1],Y
	lda	<R0+2
	ldy	#$d
	sta	[<L495+fs_1],Y
;						}
	.line	3862
;					}
L10235:
	.line	3863
;				}
L10234:
	.line	3864
;			}
	.line	3865
;		}
L10233:
	.line	3866
;		else {	/* Open an existing file */
	brl	L10236
L10226:
	.line	3867
;			if (res == FR_OK) {					/* Is the object exsiting? */
	.line	3868
	lda	<L495+res_1
	beq	L511
	brl	L10237
L511:
	.line	3868
;				if (dj.obj.attr & AM_DIR) {		/* File open against a directory */
	.line	3869
	sep	#$20
	longa	off
	lda	<L495+dj_1+6
	and	#<$10
	rep	#$20
	longa	on
	bne	L512
	brl	L10238
L512:
	.line	3869
;					res = FR_NO_FILE;
	.line	3870
	lda	#$4
	sta	<L495+res_1
;				} else {
	.line	3871
	brl	L10239
L10238:
	.line	3871
;					if ((mode & FA_WRITE) && (dj.obj.attr & AM_RDO)) { /* Write mode open against R/O file */
	.line	3872
	sep	#$20
	longa	off
	lda	<L494+mode_0
	and	#<$2
	rep	#$20
	longa	on
	bne	L513
	brl	L10240
L513:
	sep	#$20
	longa	off
	lda	<L495+dj_1+6
	and	#<$1
	rep	#$20
	longa	on
	bne	L514
	brl	L10240
L514:
	.line	3872
;						res = FR_DENIED;
	.line	3873
	lda	#$7
	sta	<L495+res_1
;					}
	.line	3874
;				}
L10240:
	.line	3875
L10239:
;			}
	.line	3876
;		}
L10237:
	.line	3877
L10236:
;		if (res == FR_OK) {
	.line	3878
	lda	<L495+res_1
	beq	L515
	brl	L10241
L515:
	.line	3878
;			if (mode & FA_CREATE_ALWAYS) mode |= FA_MODIFIED;	/* Set file change flag if created or overwritten */
	.line	3879
	sep	#$20
	longa	off
	lda	<L494+mode_0
	and	#<$8
	rep	#$20
	longa	on
	bne	L516
	brl	L10242
L516:
	.line	3879
	sep	#$20
	longa	off
	lda	#$40
	tsb	<L494+mode_0
	rep	#$20
	longa	on
;			fp->dir_sect = fs->winsect;			/* Pointer to the directory entry */
L10242:
	.line	3880
	ldy	#$2b
	lda	[<L495+fs_1],Y
	ldy	#$1e
	sta	[<L494+fp_0],Y
	ldy	#$2d
	lda	[<L495+fs_1],Y
	ldy	#$20
	sta	[<L494+fp_0],Y
;			fp->dir_ptr = dj.dir;
	.line	3881
	lda	<L495+dj_1+28
	ldy	#$22
	sta	[<L494+fp_0],Y
	lda	<L495+dj_1+30
	ldy	#$24
	sta	[<L494+fp_0],Y
;#if FF_FS_LOCK != 0
;			fp->obj.lockid = inc_lock(&dj, (mode & ~FA_READ) ? 1 : 0);	/* Lock the file for this session */
;			if (fp->obj.lockid == 0) res = FR_INT_ERR;
;#endif
;		}
	.line	3886
;#else		/* R/O configuration */
;		if (res == FR_OK) {
;			if (dj.fn[NSFLAG] & NS_NONAME) {	/* Is it origin directory itself? */
;				res = FR_INVALID_NAME;
;			} else {
;				if (dj.obj.attr & AM_DIR) {		/* Is it a directory? */
;					res = FR_NO_FILE;
;				}
;			}
;		}
;#endif
;
;		if (res == FR_OK) {
L10241:
	.line	3899
	lda	<L495+res_1
	beq	L517
	brl	L10243
L517:
	.line	3899
;#if FF_FS_EXFAT
;			if (fs->fs_type == FS_EXFAT) {
;				fp->obj.c_scl = dj.obj.sclust;							/* Get containing directory info */
;				fp->obj.c_size = ((DWORD)dj.obj.objsize & 0xFFFFFF00) | dj.obj.stat;
;				fp->obj.c_ofs = dj.blk_ofs;
;				init_alloc_info(fs, &fp->obj);
;			} else
;#endif
;			{
	.line	3908
;				fp->obj.sclust = ld_clust(fs, dj.dir);					/* Get object allocation info */
	.line	3909
	pei	<L495+dj_1+30
	pei	<L495+dj_1+28
	pei	<L495+fs_1+2
	pei	<L495+fs_1
	jsl	~~ld_clust
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$8
	sta	[<L494+fp_0],Y
	lda	<R0+2
	ldy	#$a
	sta	[<L494+fp_0],Y
;				fp->obj.objsize = ld_dword(dj.dir + DIR_FileSize);
	.line	3910
	clc
	lda	#$1c
	adc	<L495+dj_1+28
	sta	<R0
	lda	#$0
	adc	<L495+dj_1+30
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~ld_dword
	sta	<R1
	stx	<R1+2
	lda	<R1
	ldy	#$c
	sta	[<L494+fp_0],Y
	lda	<R1+2
	ldy	#$e
	sta	[<L494+fp_0],Y
;			}
	.line	3911
;#if FF_USE_FASTSEEK
;			fp->cltbl = 0;			/* Disable fast seek mode */
;#endif
;			fp->obj.fs = fs;	 	/* Validate the file object */
	.line	3915
	lda	<L495+fs_1
	sta	[<L494+fp_0]
	lda	<L495+fs_1+2
	ldy	#$2
	sta	[<L494+fp_0],Y
;			fp->obj.id = fs->id;
	.line	3916
	ldy	#$5
	lda	[<L495+fs_1],Y
	ldy	#$4
	sta	[<L494+fp_0],Y
;			fp->flag = mode;		/* Set file access mode */
	.line	3917
	sep	#$20
	longa	off
	lda	<L494+mode_0
	ldy	#$10
	sta	[<L494+fp_0],Y
	rep	#$20
	longa	on
;			fp->err = 0;			/* Clear error flag */
	.line	3918
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$11
	sta	[<L494+fp_0],Y
	rep	#$20
	longa	on
;			fp->sect = 0;			/* Invalidate current data sector */
	.line	3919
	lda	#$0
	ldy	#$1a
	sta	[<L494+fp_0],Y
	lda	#$0
	ldy	#$1c
	sta	[<L494+fp_0],Y
;			fp->fptr = 0;			/* Set file pointer top of the file */
	.line	3920
	lda	#$0
	ldy	#$12
	sta	[<L494+fp_0],Y
	lda	#$0
	ldy	#$14
	sta	[<L494+fp_0],Y
;#if !FF_FS_READONLY
;#if !FF_FS_TINY
;			mem_set(fp->buf, 0, sizeof fp->buf);	/* Clear sector buffer */
	.line	3923
	pea	#<$200
	pea	#<$0
	clc
	lda	#$26
	adc	<L494+fp_0
	sta	<R0
	lda	#$0
	adc	<L494+fp_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~mem_set
;#endif
;			if ((mode & FA_SEEKEND) && fp->obj.objsize > 0) {	/* Seek to end of file if FA_OPEN_APPEND is specified */
	.line	3925
	sep	#$20
	longa	off
	lda	<L494+mode_0
	and	#<$20
	rep	#$20
	longa	on
	bne	L518
	brl	L10244
L518:
	lda	#$0
	ldy	#$c
	cmp	[<L494+fp_0],Y
	lda	#$0
	ldy	#$e
	sbc	[<L494+fp_0],Y
	bcc	L519
	brl	L10244
L519:
	.line	3925
;				fp->fptr = fp->obj.objsize;			/* Offset to seek */
	.line	3926
	ldy	#$c
	lda	[<L494+fp_0],Y
	ldy	#$12
	sta	[<L494+fp_0],Y
	ldy	#$e
	lda	[<L494+fp_0],Y
	ldy	#$14
	sta	[<L494+fp_0],Y
;				bcs = (DWORD)fs->csize * SS(fs);	/* Cluster size in byte */
	.line	3927
	ldy	#$0
	phy
	ldy	#$9
	lda	[<L495+fs_1],Y
	ply
	rol	A
	ror	A
	bpl	L520
	dey
L520:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	lda	#$9
	xref	~~~lasl
	jsl	~~~lasl
	sta	<L495+bcs_1
	stx	<L495+bcs_1+2
;				clst = fp->obj.sclust;				/* Follow the cluster chain */
	.line	3928
	ldy	#$8
	lda	[<L494+fp_0],Y
	sta	<L495+clst_1
	ldy	#$a
	lda	[<L494+fp_0],Y
	sta	<L495+clst_1+2
;				for (ofs = fp->obj.objsize; res == FR_OK && ofs > bcs; ofs -= bcs) {
	.line	3929
	ldy	#$c
	lda	[<L494+fp_0],Y
	sta	<L495+ofs_1
	ldy	#$e
	lda	[<L494+fp_0],Y
	sta	<L495+ofs_1+2
	brl	L10248
L10247:
	.line	3929
;					clst = get_fat(&fp->obj, clst);
	.line	3930
	pei	<L495+clst_1+2
	pei	<L495+clst_1
	pei	<L494+fp_0+2
	pei	<L494+fp_0
	jsl	~~get_fat
	sta	<L495+clst_1
	stx	<L495+clst_1+2
;					if (clst <= 1) res = FR_INT_ERR;
	.line	3931
	lda	#$1
	cmp	<L495+clst_1
	lda	#$0
	sbc	<L495+clst_1+2
	bcs	L521
	brl	L10249
L521:
	.line	3931
	lda	#$2
	sta	<L495+res_1
;					if (clst == 0xFFFFFFFF) res = FR_DISK_ERR;
L10249:
	.line	3932
	lda	<L495+clst_1
	cmp	#<$ffffffff
	bne	L522
	lda	<L495+clst_1+2
	cmp	#^$ffffffff
L522:
	beq	L523
	brl	L10250
L523:
	.line	3932
	lda	#$1
	sta	<L495+res_1
;				}
L10250:
	.line	3933
L10245:
	sec
	lda	<L495+ofs_1
	sbc	<L495+bcs_1
	sta	<L495+ofs_1
	lda	<L495+ofs_1+2
	sbc	<L495+bcs_1+2
	sta	<L495+ofs_1+2
L10248:
	lda	<L495+res_1
	beq	L525
	brl	L524
L525:
	lda	<L495+bcs_1
	cmp	<L495+ofs_1
	lda	<L495+bcs_1+2
	sbc	<L495+ofs_1+2
	bcs	L526
	brl	L10247
L526:
L524:
L10246:
;				fp->clust = clst;
	.line	3934
	lda	<L495+clst_1
	ldy	#$16
	sta	[<L494+fp_0],Y
	lda	<L495+clst_1+2
	ldy	#$18
	sta	[<L494+fp_0],Y
;				if (res == FR_OK && ofs % SS(fs)) {	/* Fill sector buffer if not on the sector boundary */
	.line	3935
	lda	<L495+res_1
	beq	L527
	brl	L10251
L527:
	lda	<L495+ofs_1
	and	#<$1ff
	bne	L528
	brl	L10251
L528:
	.line	3935
;					sc = clst2sect(fs, clst);
	.line	3936
	pei	<L495+clst_1+2
	pei	<L495+clst_1
	pei	<L495+fs_1+2
	pei	<L495+fs_1
	jsl	~~clst2sect
	sta	<L495+sc_1
	stx	<L495+sc_1+2
;					if (sc == 0) {
	.line	3937
	lda	<L495+sc_1
	ora	<L495+sc_1+2
	beq	L529
	brl	L10252
L529:
	.line	3937
;						res = FR_INT_ERR;
	.line	3938
	lda	#$2
	sta	<L495+res_1
;					} else {
	.line	3939
	brl	L10253
L10252:
	.line	3939
;						fp->sect = sc + (DWORD)(ofs / SS(fs));
	.line	3940
	pei	<L495+ofs_1+2
	pei	<L495+ofs_1
	lda	#$9
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R0
	stx	<R0+2
	clc
	lda	<R0
	adc	<L495+sc_1
	sta	<R1
	lda	<R0+2
	adc	<L495+sc_1+2
	sta	<R1+2
	lda	<R1
	ldy	#$1a
	sta	[<L494+fp_0],Y
	lda	<R1+2
	ldy	#$1c
	sta	[<L494+fp_0],Y
;#if !FF_FS_TINY
;						if (disk_read(fs->pdrv, fp->buf, fp->sect, 1) != RES_OK) res = FR_DISK_ERR;
	.line	3942
	pea	#<$1
	ldy	#$1c
	lda	[<L494+fp_0],Y
	pha
	ldy	#$1a
	lda	[<L494+fp_0],Y
	pha
	clc
	lda	#$26
	adc	<L494+fp_0
	sta	<R0
	lda	#$0
	adc	<L494+fp_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$1
	lda	[<L495+fs_1],Y
	pha
	jsl	~~disk_read
	tax
	bne	L530
	brl	L10254
L530:
	.line	3942
	lda	#$1
	sta	<L495+res_1
;#endif
;					}
L10254:
	.line	3944
L10253:
;				}
	.line	3945
;			}
L10251:
	.line	3946
;#endif
;		}
L10244:
	.line	3948
;
;		FREE_NAMBUF();
L10243:
	.line	3950
;	}
	.line	3951
;
;	if (res != FR_OK) fp->obj.fs = 0;	/* Invalidate file object on error */
L10223:
	.line	3953
	lda	<L495+res_1
	bne	L531
	brl	L10255
L531:
	.line	3953
	lda	#$0
	sta	[<L494+fp_0]
	lda	#$0
	ldy	#$2
	sta	[<L494+fp_0],Y
;
;	LEAVE_FF(fs, res);
L10255:
	.line	3955
	lda	<L495+res_1
	brl	L498
;}
	.line	3956
	.endblock	3956
L494	equ	78
L495	equ	9
	ends
	efunc
	.endfunc	3956,9,78
	.line	3956
	data
L473:
	db	$66,$5F,$6F,$70,$65,$6E,$2E,$2E,$2E,$0D,$0A,$00,$66,$5F,$6F
	db	$70,$65,$6E,$20,$6D,$6F,$64,$65,$3A,$00
	ends
;
;
;
;
;/*-----------------------------------------------------------------------*/
;/* Read File                                                             */
;/*-----------------------------------------------------------------------*/
;
;FRESULT f_read (
;	FIL* fp, 	/* Pointer to the file object */
;	void* buff,	/* Pointer to data buffer */
;	UINT btr,	/* Number of bytes to read */
;	UINT* br	/* Pointer to number of bytes read */
;)
;{
	.line	3965
	.line	3971
	FFDOS
	xdef	~~f_read
	func
	.function	3971
~~f_read:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L533
	tcs
	phd
	tcd
fp_0	set	4
buff_0	set	8
btr_0	set	12
br_0	set	14
	.block	3971
;	FRESULT res;
;	FATFS *fs;
;	DWORD clst;
;	LBA_t sect;
;	FSIZE_t remain;
;	UINT rcnt, cc, csect;
;	BYTE *rbuff = (BYTE*)buff;
;
;
;	*br = 0;	/* Clear read byte counter */
res_1	set	0
fs_1	set	2
clst_1	set	6
sect_1	set	10
remain_1	set	14
rcnt_1	set	18
cc_1	set	20
csect_1	set	22
rbuff_1	set	24
	.sym	res,0,5,1,16
	.sym	fs,2,138,1,32,80
	.sym	clst,6,18,1,32
	.sym	sect,10,18,1,32
	.sym	remain,14,18,1,32
	.sym	rcnt,18,16,1,16
	.sym	cc,20,16,1,16
	.sym	csect,22,16,1,16
	.sym	rbuff,24,142,1,32
	.sym	fp,4,138,6,32,82
	.sym	buff,8,129,6,32
	.sym	btr,12,16,6,16
	.sym	br,14,144,6,32
	lda	<L533+buff_0
	sta	<L534+rbuff_1
	lda	<L533+buff_0+2
	sta	<L534+rbuff_1+2
	.line	3981
	lda	#$0
	sta	[<L533+br_0]
;	res = validate(&fp->obj, &fs);				/* Check validity of the file object */
	.line	3982
	pea	#0
	clc
	tdc
	adc	#<L534+fs_1
	pha
	pei	<L533+fp_0+2
	pei	<L533+fp_0
	jsl	~~validate
	sta	<L534+res_1
;	if (res != FR_OK || (res = (FRESULT)fp->err) != FR_OK) LEAVE_FF(fs, res);	/* Check validity */
	.line	3983
	lda	<L534+res_1
	beq	L537
	brl	L536
L537:
	ldy	#$11
	lda	[<L533+fp_0],Y
	and	#$ff
	sta	<L534+res_1
	lda	<L534+res_1
	bne	L538
	brl	L10256
L538:
L536:
	.line	3983
	lda	<L534+res_1
L539:
	tay
	lda	<L533+2
	sta	<L533+2+14
	lda	<L533+1
	sta	<L533+1+14
	pld
	tsc
	clc
	adc	#L533+14
	tcs
	tya
	rtl
;	if (!(fp->flag & FA_READ)) LEAVE_FF(fs, FR_DENIED); /* Check access mode */
L10256:
	.line	3984
	sep	#$20
	longa	off
	ldy	#$10
	lda	[<L533+fp_0],Y
	and	#<$1
	rep	#$20
	longa	on
	beq	L540
	brl	L10257
L540:
	.line	3984
	lda	#$7
	brl	L539
;	remain = fp->obj.objsize - fp->fptr;
L10257:
	.line	3985
	sec
	ldy	#$c
	lda	[<L533+fp_0],Y
	ldy	#$12
	sbc	[<L533+fp_0],Y
	sta	<L534+remain_1
	ldy	#$e
	lda	[<L533+fp_0],Y
	ldy	#$14
	sbc	[<L533+fp_0],Y
	sta	<L534+remain_1+2
;	if (btr > remain) btr = (UINT)remain;		/* Truncate btr by remaining bytes */
	.line	3986
	lda	<L533+btr_0
	sta	<R0
	stz	<R0+2
	lda	<L534+remain_1
	cmp	<R0
	lda	<L534+remain_1+2
	sbc	<R0+2
	bcc	L541
	brl	L10258
L541:
	.line	3986
	lda	<L534+remain_1
	sta	<L533+btr_0
;
;	for ( ;  btr;								/* Repeat until btr bytes read */
L10258:
	.line	3988
	brl	L10262
;		btr -= rcnt, *br += rcnt, rbuff += rcnt, fp->fptr += rcnt) {
L10261:
	.line	3989
;		if (fp->fptr % SS(fs) == 0) {			/* On the sector boundary? */
	.line	3990
	ldy	#$12
	lda	[<L533+fp_0],Y
	and	#<$1ff
	beq	L542
	brl	L10263
L542:
	.line	3990
;			csect = (UINT)(fp->fptr / SS(fs) & (fs->csize - 1));	/* Sector offset in the cluster */
	.line	3991
	ldy	#$14
	lda	[<L533+fp_0],Y
	pha
	ldy	#$12
	lda	[<L533+fp_0],Y
	pha
	lda	#$9
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R0
	stx	<R0+2
	clc
	lda	#$ffff
	ldy	#$9
	adc	[<L534+fs_1],Y
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L543
	dey
L543:
	sta	<R1
	sty	<R1+2
	lda	<R1
	and	<R0
	sta	<R2
	lda	<R1+2
	and	<R0+2
	sta	<R2+2
	lda	<R2
	sta	<L534+csect_1
;			if (csect == 0) {					/* On the cluster boundary? */
	.line	3992
	lda	<L534+csect_1
	beq	L544
	brl	L10264
L544:
	.line	3992
;				if (fp->fptr == 0) {			/* On the top of the file? */
	.line	3993
	ldy	#$12
	lda	[<L533+fp_0],Y
	ldy	#$14
	ora	[<L533+fp_0],Y
	beq	L545
	brl	L10265
L545:
	.line	3993
;					clst = fp->obj.sclust;		/* Follow cluster chain from the origin */
	.line	3994
	ldy	#$8
	lda	[<L533+fp_0],Y
	sta	<L534+clst_1
	ldy	#$a
	lda	[<L533+fp_0],Y
	sta	<L534+clst_1+2
;				} else {						/* Middle or end of the file */
	.line	3995
	brl	L10266
L10265:
	.line	3995
;#if FF_USE_FASTSEEK
;					if (fp->cltbl) {
;						clst = clmt_clust(fp, fp->fptr);	/* Get cluster# from the CLMT */
;					} else
;#endif
;					{
	.line	4001
;						clst = get_fat(&fp->obj, fp->clust);	/* Follow cluster chain on the FAT */
	.line	4002
	ldy	#$18
	lda	[<L533+fp_0],Y
	pha
	ldy	#$16
	lda	[<L533+fp_0],Y
	pha
	pei	<L533+fp_0+2
	pei	<L533+fp_0
	jsl	~~get_fat
	sta	<L534+clst_1
	stx	<L534+clst_1+2
;					}
	.line	4003
;				}
	.line	4004
L10266:
;				if (clst < 2) ABORT(fs, FR_INT_ERR);
	.line	4005
	lda	<L534+clst_1
	cmp	#<$2
	lda	<L534+clst_1+2
	sbc	#^$2
	bcc	L546
	brl	L10267
L546:
	.line	4005
	.line	4005
	sep	#$20
	longa	off
	lda	#$2
	ldy	#$11
	sta	[<L533+fp_0],Y
	rep	#$20
	longa	on
	.line	4005
	lda	#$2
	brl	L539
	.line	4005
L10267:
	.line	4005
;				if (clst == 0xFFFFFFFF) ABORT(fs, FR_DISK_ERR);
	.line	4006
	lda	<L534+clst_1
	cmp	#<$ffffffff
	bne	L547
	lda	<L534+clst_1+2
	cmp	#^$ffffffff
L547:
	beq	L548
	brl	L10268
L548:
	.line	4006
	.line	4006
	sep	#$20
	longa	off
	lda	#$1
	ldy	#$11
	sta	[<L533+fp_0],Y
	rep	#$20
	longa	on
	.line	4006
	lda	#$1
	brl	L539
	.line	4006
L10268:
	.line	4006
;				fp->clust = clst;				/* Update current cluster */
	.line	4007
	lda	<L534+clst_1
	ldy	#$16
	sta	[<L533+fp_0],Y
	lda	<L534+clst_1+2
	ldy	#$18
	sta	[<L533+fp_0],Y
;			}
	.line	4008
;			sect = clst2sect(fs, fp->clust);	/* Get current sector */
L10264:
	.line	4009
	ldy	#$18
	lda	[<L533+fp_0],Y
	pha
	ldy	#$16
	lda	[<L533+fp_0],Y
	pha
	pei	<L534+fs_1+2
	pei	<L534+fs_1
	jsl	~~clst2sect
	sta	<L534+sect_1
	stx	<L534+sect_1+2
;			if (sect == 0) ABORT(fs, FR_INT_ERR);
	.line	4010
	lda	<L534+sect_1
	ora	<L534+sect_1+2
	beq	L549
	brl	L10269
L549:
	.line	4010
	.line	4010
	sep	#$20
	longa	off
	lda	#$2
	ldy	#$11
	sta	[<L533+fp_0],Y
	rep	#$20
	longa	on
	.line	4010
	lda	#$2
	brl	L539
	.line	4010
L10269:
	.line	4010
;			sect += csect;
	.line	4011
	lda	<L534+csect_1
	sta	<R0
	stz	<R0+2
	clc
	lda	<R0
	adc	<L534+sect_1
	sta	<L534+sect_1
	lda	<R0+2
	adc	<L534+sect_1+2
	sta	<L534+sect_1+2
;			cc = btr / SS(fs);					/* When remaining bytes >= sector size, */
	.line	4012
	lda	<L533+btr_0
	ldx	#<$9
	xref	~~~lsr
	jsl	~~~lsr
	sta	<L534+cc_1
;			if (cc > 0) {						/* Read maximum contiguous sectors directly */
	.line	4013
	lda	#$0
	cmp	<L534+cc_1
	bcc	L550
	brl	L10270
L550:
	.line	4013
;				if (csect + cc > fs->csize) {	/* Clip at cluster boundary */
	.line	4014
	clc
	lda	<L534+csect_1
	adc	<L534+cc_1
	sta	<R0
	ldy	#$9
	lda	[<L534+fs_1],Y
	cmp	<R0
	bcc	L551
	brl	L10271
L551:
	.line	4014
;					cc = fs->csize - csect;
	.line	4015
	sec
	ldy	#$9
	lda	[<L534+fs_1],Y
	sbc	<L534+csect_1
	sta	<L534+cc_1
;				}
	.line	4016
;				if (disk_read(fs->pdrv, rbuff, sect, cc) != RES_OK) ABORT(fs, FR_DISK_ERR);
L10271:
	.line	4017
	pei	<L534+cc_1
	pei	<L534+sect_1+2
	pei	<L534+sect_1
	pei	<L534+rbuff_1+2
	pei	<L534+rbuff_1
	ldy	#$1
	lda	[<L534+fs_1],Y
	pha
	jsl	~~disk_read
	tax
	bne	L552
	brl	L10272
L552:
	.line	4017
	.line	4017
	sep	#$20
	longa	off
	lda	#$1
	ldy	#$11
	sta	[<L533+fp_0],Y
	rep	#$20
	longa	on
	.line	4017
	lda	#$1
	brl	L539
	.line	4017
L10272:
	.line	4017
;#if !FF_FS_READONLY && FF_FS_MINIMIZE <= 2		/* Replace one of the read sectors with cached data if it contains a dirty sector */
;#if FF_FS_TINY
;				if (fs->wflag && fs->winsect - sect < cc) {
;					mem_cpy(rbuff + ((fs->winsect - sect) * SS(fs)), fs->win, SS(fs));
;				}
;#else
;				if ((fp->flag & FA_DIRTY) && fp->sect - sect < cc) {
	.line	4024
	sep	#$20
	longa	off
	ldy	#$10
	lda	[<L533+fp_0],Y
	and	#<$80
	rep	#$20
	longa	on
	bne	L553
	brl	L10273
L553:
	lda	<L534+cc_1
	sta	<R0
	stz	<R0+2
	sec
	ldy	#$1a
	lda	[<L533+fp_0],Y
	sbc	<L534+sect_1
	sta	<R1
	ldy	#$1c
	lda	[<L533+fp_0],Y
	sbc	<L534+sect_1+2
	sta	<R1+2
	lda	<R1
	cmp	<R0
	lda	<R1+2
	sbc	<R0+2
	bcc	L554
	brl	L10273
L554:
	.line	4024
;					mem_cpy(rbuff + ((fp->sect - sect) * SS(fs)), fp->buf, SS(fs));
	.line	4025
	pea	#<$200
	clc
	lda	#$26
	adc	<L533+fp_0
	sta	<R0
	lda	#$0
	adc	<L533+fp_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	sec
	ldy	#$1a
	lda	[<L533+fp_0],Y
	sbc	<L534+sect_1
	sta	<R2
	ldy	#$1c
	lda	[<L533+fp_0],Y
	sbc	<L534+sect_1+2
	sta	<R2+2
	pei	<R2+2
	pei	<R2
	lda	#$9
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R1
	stx	<R1+2
	clc
	lda	<L534+rbuff_1
	adc	<R1
	sta	<R3
	lda	<L534+rbuff_1+2
	adc	<R1+2
	sta	<R3+2
	pei	<R3+2
	pei	<R3
	jsl	~~mem_cpy
;				}
	.line	4026
;#endif
;#endif
;				rcnt = SS(fs) * cc;				/* Number of bytes transferred */
L10273:
	.line	4029
	lda	<L534+cc_1
	ldx	#<$9
	xref	~~~asl
	jsl	~~~asl
	sta	<L534+rcnt_1
;				continue;
	.line	4030
	brl	L10259
;			}
	.line	4031
;#if !FF_FS_TINY
;			if (fp->sect != sect) {			/* Load data sector if not in cache */
L10270:
	.line	4033
	ldy	#$1a
	lda	[<L533+fp_0],Y
	cmp	<L534+sect_1
	bne	L555
	ldy	#$1c
	lda	[<L533+fp_0],Y
	cmp	<L534+sect_1+2
L555:
	bne	L556
	brl	L10274
L556:
	.line	4033
;#if !FF_FS_READONLY
;				if (fp->flag & FA_DIRTY) {		/* Write-back dirty sector cache */
	.line	4035
	sep	#$20
	longa	off
	ldy	#$10
	lda	[<L533+fp_0],Y
	and	#<$80
	rep	#$20
	longa	on
	bne	L557
	brl	L10275
L557:
	.line	4035
;					if (disk_write(fs->pdrv, fp->buf, fp->sect, 1) != RES_OK) ABORT(fs, FR_DISK_ERR);
	.line	4036
	pea	#<$1
	ldy	#$1c
	lda	[<L533+fp_0],Y
	pha
	ldy	#$1a
	lda	[<L533+fp_0],Y
	pha
	clc
	lda	#$26
	adc	<L533+fp_0
	sta	<R0
	lda	#$0
	adc	<L533+fp_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$1
	lda	[<L534+fs_1],Y
	pha
	jsl	~~disk_write
	tax
	bne	L558
	brl	L10276
L558:
	.line	4036
	.line	4036
	sep	#$20
	longa	off
	lda	#$1
	ldy	#$11
	sta	[<L533+fp_0],Y
	rep	#$20
	longa	on
	.line	4036
	lda	#$1
	brl	L539
	.line	4036
L10276:
	.line	4036
;					fp->flag &= (BYTE)~FA_DIRTY;
	.line	4037
	clc
	lda	#$10
	adc	<L533+fp_0
	sta	<R0
	lda	#$0
	adc	<L533+fp_0+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	[<R0]
	and	#<$7f
	sta	[<R0]
	rep	#$20
	longa	on
;				}
	.line	4038
;#endif
;				if (disk_read(fs->pdrv, fp->buf, sect, 1) != RES_OK)	ABORT(fs, FR_DISK_ERR);	/* Fill sector cache */
L10275:
	.line	4040
	pea	#<$1
	pei	<L534+sect_1+2
	pei	<L534+sect_1
	clc
	lda	#$26
	adc	<L533+fp_0
	sta	<R0
	lda	#$0
	adc	<L533+fp_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$1
	lda	[<L534+fs_1],Y
	pha
	jsl	~~disk_read
	tax
	bne	L559
	brl	L10277
L559:
	.line	4040
	.line	4040
	sep	#$20
	longa	off
	lda	#$1
	ldy	#$11
	sta	[<L533+fp_0],Y
	rep	#$20
	longa	on
	.line	4040
	lda	#$1
	brl	L539
	.line	4040
L10277:
	.line	4040
;			}
	.line	4041
;#endif
;			fp->sect = sect;
L10274:
	.line	4043
	lda	<L534+sect_1
	ldy	#$1a
	sta	[<L533+fp_0],Y
	lda	<L534+sect_1+2
	ldy	#$1c
	sta	[<L533+fp_0],Y
;		}
	.line	4044
;		rcnt = SS(fs) - (UINT)fp->fptr % SS(fs);	/* Number of bytes remains in the sector */
L10263:
	.line	4045
	ldy	#$12
	lda	[<L533+fp_0],Y
	and	#<$1ff
	sta	<R0
	sec
	lda	#$200
	sbc	<R0
	sta	<L534+rcnt_1
;		if (rcnt > btr) rcnt = btr;					/* Clip it by btr if needed */
	.line	4046
	lda	<L533+btr_0
	cmp	<L534+rcnt_1
	bcc	L560
	brl	L10278
L560:
	.line	4046
	lda	<L533+btr_0
	sta	<L534+rcnt_1
;#if FF_FS_TINY
;		if (move_window(fs, fp->sect) != FR_OK) ABORT(fs, FR_DISK_ERR);	/* Move sector window */
;		mem_cpy(rbuff, fs->win + fp->fptr % SS(fs), rcnt);	/* Extract partial sector */
;#else
;		mem_cpy(rbuff, fp->buf + fp->fptr % SS(fs), rcnt);	/* Extract partial sector */
L10278:
	.line	4051
	pei	<L534+rcnt_1
	ldy	#$12
	lda	[<L533+fp_0],Y
	and	#<$1ff
	sta	<R0
	stz	<R0+2
	clc
	lda	#$26
	adc	<R0
	sta	<R1
	lda	#$0
	adc	<R0+2
	sta	<R1+2
	clc
	lda	<L533+fp_0
	adc	<R1
	sta	<R0
	lda	<L533+fp_0+2
	adc	<R1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pei	<L534+rbuff_1+2
	pei	<L534+rbuff_1
	jsl	~~mem_cpy
;#endif
;	}
	.line	4053
L10259:
	sec
	lda	<L533+btr_0
	sbc	<L534+rcnt_1
	sta	<L533+btr_0
	clc
	lda	[<L533+br_0]
	adc	<L534+rcnt_1
	sta	[<L533+br_0]
	lda	<L534+rcnt_1
	sta	<R0
	stz	<R0+2
	clc
	lda	<L534+rbuff_1
	adc	<R0
	sta	<L534+rbuff_1
	lda	<L534+rbuff_1+2
	adc	<R0+2
	sta	<L534+rbuff_1+2
	clc
	lda	#$12
	adc	<L533+fp_0
	sta	<R0
	lda	#$0
	adc	<L533+fp_0+2
	sta	<R0+2
	lda	<L534+rcnt_1
	sta	<R1
	stz	<R1+2
	clc
	lda	<R1
	adc	[<R0]
	sta	[<R0]
	lda	<R1+2
	ldy	#$2
	adc	[<R0],Y
	ldy	#$2
	sta	[<R0],Y
L10262:
	lda	<L533+btr_0
	beq	L561
	brl	L10261
L561:
L10260:
;
;	LEAVE_FF(fs, FR_OK);
	.line	4055
	lda	#$0
	brl	L539
;}
	.line	4056
	.endblock	4056
L533	equ	44
L534	equ	17
	ends
	efunc
	.endfunc	4056,17,44
	.line	4056
;
;
;
;
;#if !FF_FS_READONLY
;/*-----------------------------------------------------------------------*/
;/* Write File                                                            */
;/*-----------------------------------------------------------------------*/
;
;FRESULT f_write (
;	FIL* fp,			/* Pointer to the file object */
;	const void* buff,	/* Pointer to the data to be written */
;	UINT btw,			/* Number of bytes to write */
;	UINT* bw			/* Pointer to number of bytes written */
;)
;{
	.line	4066
	.line	4072
	FFDOS
	xdef	~~f_write
	func
	.function	4072
~~f_write:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L562
	tcs
	phd
	tcd
fp_0	set	4
buff_0	set	8
btw_0	set	12
bw_0	set	14
	.block	4072
;	FRESULT res;
;	FATFS *fs;
;	DWORD clst;
;	LBA_t sect;
;	UINT wcnt, cc, csect;
;	const BYTE *wbuff = (const BYTE*)buff;
;
;
;	*bw = 0;	/* Clear write byte counter */
res_1	set	0
fs_1	set	2
clst_1	set	6
sect_1	set	10
wcnt_1	set	14
cc_1	set	16
csect_1	set	18
wbuff_1	set	20
	.sym	res,0,5,1,16
	.sym	fs,2,138,1,32,80
	.sym	clst,6,18,1,32
	.sym	sect,10,18,1,32
	.sym	wcnt,14,16,1,16
	.sym	cc,16,16,1,16
	.sym	csect,18,16,1,16
	.sym	wbuff,20,142,1,32
	.sym	fp,4,138,6,32,82
	.sym	buff,8,129,6,32
	.sym	btw,12,16,6,16
	.sym	bw,14,144,6,32
	lda	<L562+buff_0
	sta	<L563+wbuff_1
	lda	<L562+buff_0+2
	sta	<L563+wbuff_1+2
	.line	4081
	lda	#$0
	sta	[<L562+bw_0]
;	res = validate(&fp->obj, &fs);			/* Check validity of the file object */
	.line	4082
	pea	#0
	clc
	tdc
	adc	#<L563+fs_1
	pha
	pei	<L562+fp_0+2
	pei	<L562+fp_0
	jsl	~~validate
	sta	<L563+res_1
;	if (res != FR_OK || (res = (FRESULT)fp->err) != FR_OK) LEAVE_FF(fs, res);	/* Check validity */
	.line	4083
	lda	<L563+res_1
	beq	L566
	brl	L565
L566:
	ldy	#$11
	lda	[<L562+fp_0],Y
	and	#$ff
	sta	<L563+res_1
	lda	<L563+res_1
	bne	L567
	brl	L10279
L567:
L565:
	.line	4083
	lda	<L563+res_1
L568:
	tay
	lda	<L562+2
	sta	<L562+2+14
	lda	<L562+1
	sta	<L562+1+14
	pld
	tsc
	clc
	adc	#L562+14
	tcs
	tya
	rtl
;	if (!(fp->flag & FA_WRITE)) LEAVE_FF(fs, FR_DENIED);	/* Check access mode */
L10279:
	.line	4084
	sep	#$20
	longa	off
	ldy	#$10
	lda	[<L562+fp_0],Y
	and	#<$2
	rep	#$20
	longa	on
	beq	L569
	brl	L10280
L569:
	.line	4084
	lda	#$7
	brl	L568
;
;	/* Check fptr wrap-around (file size cannot reach 4 GiB at FAT volume) */
;	if ((!FF_FS_EXFAT || fs->fs_type != FS_EXFAT) && (DWORD)(fp->fptr + btw) < (DWORD)fp->fptr) {
L10280:
	.line	4087
	brl	L570
	sep	#$20
	longa	off
	lda	[<L563+fs_1]
	cmp	#<$4
	rep	#$20
	longa	on
	bne	L571
	brl	L10281
L571:
L570:
	lda	<L562+btw_0
	sta	<R0
	stz	<R0+2
	clc
	lda	<R0
	ldy	#$12
	adc	[<L562+fp_0],Y
	sta	<R1
	lda	<R0+2
	ldy	#$14
	adc	[<L562+fp_0],Y
	sta	<R1+2
	lda	<R1
	ldy	#$12
	cmp	[<L562+fp_0],Y
	lda	<R1+2
	ldy	#$14
	sbc	[<L562+fp_0],Y
	bcc	L572
	brl	L10281
L572:
	.line	4087
;		btw = (UINT)(0xFFFFFFFF - (DWORD)fp->fptr);
	.line	4088
	sec
	lda	#$ffff
	ldy	#$12
	sbc	[<L562+fp_0],Y
	sta	<R0
	lda	#$ffff
	ldy	#$14
	sbc	[<L562+fp_0],Y
	sta	<R0+2
	lda	<R0
	sta	<L562+btw_0
;	}
	.line	4089
;
;	for ( ;  btw;							/* Repeat until all data written */
L10281:
	.line	4091
	brl	L10285
;		btw -= wcnt, *bw += wcnt, wbuff += wcnt, fp->fptr += wcnt, fp->obj.objsize = (fp->fptr > fp->obj.objsize) ? fp->fptr : fp->obj.objsize) {
L10284:
	.line	4092
;		if (fp->fptr % SS(fs) == 0) {		/* On the sector boundary? */
	.line	4093
	ldy	#$12
	lda	[<L562+fp_0],Y
	and	#<$1ff
	beq	L573
	brl	L10286
L573:
	.line	4093
;			csect = (UINT)(fp->fptr / SS(fs)) & (fs->csize - 1);	/* Sector offset in the cluster */
	.line	4094
	ldy	#$14
	lda	[<L562+fp_0],Y
	pha
	ldy	#$12
	lda	[<L562+fp_0],Y
	pha
	lda	#$9
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R0
	stx	<R0+2
	clc
	lda	#$ffff
	ldy	#$9
	adc	[<L563+fs_1],Y
	sta	<R1
	lda	<R1
	and	<R0
	sta	<L563+csect_1
;			if (csect == 0) {				/* On the cluster boundary? */
	.line	4095
	lda	<L563+csect_1
	beq	L574
	brl	L10287
L574:
	.line	4095
;				if (fp->fptr == 0) {		/* On the top of the file? */
	.line	4096
	ldy	#$12
	lda	[<L562+fp_0],Y
	ldy	#$14
	ora	[<L562+fp_0],Y
	beq	L575
	brl	L10288
L575:
	.line	4096
;					clst = fp->obj.sclust;	/* Follow from the origin */
	.line	4097
	ldy	#$8
	lda	[<L562+fp_0],Y
	sta	<L563+clst_1
	ldy	#$a
	lda	[<L562+fp_0],Y
	sta	<L563+clst_1+2
;					if (clst == 0) {		/* If no cluster is allocated, */
	.line	4098
	lda	<L563+clst_1
	ora	<L563+clst_1+2
	beq	L576
	brl	L10289
L576:
	.line	4098
;						clst = create_chain(&fp->obj, 0);	/* create a new cluster chain */
	.line	4099
	pea	#^$0
	pea	#<$0
	pei	<L562+fp_0+2
	pei	<L562+fp_0
	jsl	~~create_chain
	sta	<L563+clst_1
	stx	<L563+clst_1+2
;					}
	.line	4100
;				} else {					/* On the middle or end of the file */
L10289:
	.line	4101
	brl	L10290
L10288:
	.line	4101
;#if FF_USE_FASTSEEK
;					if (fp->cltbl) {
;						clst = clmt_clust(fp, fp->fptr);	/* Get cluster# from the CLMT */
;					} else
;#endif
;					{
	.line	4107
;						clst = create_chain(&fp->obj, fp->clust);	/* Follow or stretch cluster chain on the FAT */
	.line	4108
	ldy	#$18
	lda	[<L562+fp_0],Y
	pha
	ldy	#$16
	lda	[<L562+fp_0],Y
	pha
	pei	<L562+fp_0+2
	pei	<L562+fp_0
	jsl	~~create_chain
	sta	<L563+clst_1
	stx	<L563+clst_1+2
;					}
	.line	4109
;				}
	.line	4110
L10290:
;				if (clst == 0) break;		/* Could not allocate a new cluster (disk full) */
	.line	4111
	lda	<L563+clst_1
	ora	<L563+clst_1+2
	bne	L577
	brl	L10283
L577:
;				if (clst == 1) ABORT(fs, FR_INT_ERR);
	.line	4112
	lda	<L563+clst_1
	cmp	#<$1
	bne	L578
	lda	<L563+clst_1+2
	cmp	#^$1
L578:
	beq	L579
	brl	L10291
L579:
	.line	4112
	.line	4112
	sep	#$20
	longa	off
	lda	#$2
	ldy	#$11
	sta	[<L562+fp_0],Y
	rep	#$20
	longa	on
	.line	4112
	lda	#$2
	brl	L568
	.line	4112
L10291:
	.line	4112
;				if (clst == 0xFFFFFFFF) ABORT(fs, FR_DISK_ERR);
	.line	4113
	lda	<L563+clst_1
	cmp	#<$ffffffff
	bne	L580
	lda	<L563+clst_1+2
	cmp	#^$ffffffff
L580:
	beq	L581
	brl	L10292
L581:
	.line	4113
	.line	4113
	sep	#$20
	longa	off
	lda	#$1
	ldy	#$11
	sta	[<L562+fp_0],Y
	rep	#$20
	longa	on
	.line	4113
	lda	#$1
	brl	L568
	.line	4113
L10292:
	.line	4113
;				fp->clust = clst;			/* Update current cluster */
	.line	4114
	lda	<L563+clst_1
	ldy	#$16
	sta	[<L562+fp_0],Y
	lda	<L563+clst_1+2
	ldy	#$18
	sta	[<L562+fp_0],Y
;				if (fp->obj.sclust == 0) fp->obj.sclust = clst;	/* Set start cluster if the first write */
	.line	4115
	ldy	#$8
	lda	[<L562+fp_0],Y
	ldy	#$a
	ora	[<L562+fp_0],Y
	beq	L582
	brl	L10293
L582:
	.line	4115
	lda	<L563+clst_1
	ldy	#$8
	sta	[<L562+fp_0],Y
	lda	<L563+clst_1+2
	ldy	#$a
	sta	[<L562+fp_0],Y
;			}
L10293:
	.line	4116
;#if FF_FS_TINY
;			if (fs->winsect == fp->sect && sync_window(fs) != FR_OK) ABORT(fs, FR_DISK_ERR);	/* Write-back sector cache */
;#else
;			if (fp->flag & FA_DIRTY) {		/* Write-back sector cache */
L10287:
	.line	4120
	sep	#$20
	longa	off
	ldy	#$10
	lda	[<L562+fp_0],Y
	and	#<$80
	rep	#$20
	longa	on
	bne	L583
	brl	L10294
L583:
	.line	4120
;				if (disk_write(fs->pdrv, fp->buf, fp->sect, 1) != RES_OK) ABORT(fs, FR_DISK_ERR);
	.line	4121
	pea	#<$1
	ldy	#$1c
	lda	[<L562+fp_0],Y
	pha
	ldy	#$1a
	lda	[<L562+fp_0],Y
	pha
	clc
	lda	#$26
	adc	<L562+fp_0
	sta	<R0
	lda	#$0
	adc	<L562+fp_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$1
	lda	[<L563+fs_1],Y
	pha
	jsl	~~disk_write
	tax
	bne	L584
	brl	L10295
L584:
	.line	4121
	.line	4121
	sep	#$20
	longa	off
	lda	#$1
	ldy	#$11
	sta	[<L562+fp_0],Y
	rep	#$20
	longa	on
	.line	4121
	lda	#$1
	brl	L568
	.line	4121
L10295:
	.line	4121
;				fp->flag &= (BYTE)~FA_DIRTY;
	.line	4122
	clc
	lda	#$10
	adc	<L562+fp_0
	sta	<R0
	lda	#$0
	adc	<L562+fp_0+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	[<R0]
	and	#<$7f
	sta	[<R0]
	rep	#$20
	longa	on
;			}
	.line	4123
;#endif
;			sect = clst2sect(fs, fp->clust);	/* Get current sector */
L10294:
	.line	4125
	ldy	#$18
	lda	[<L562+fp_0],Y
	pha
	ldy	#$16
	lda	[<L562+fp_0],Y
	pha
	pei	<L563+fs_1+2
	pei	<L563+fs_1
	jsl	~~clst2sect
	sta	<L563+sect_1
	stx	<L563+sect_1+2
;			if (sect == 0) ABORT(fs, FR_INT_ERR);
	.line	4126
	lda	<L563+sect_1
	ora	<L563+sect_1+2
	beq	L585
	brl	L10296
L585:
	.line	4126
	.line	4126
	sep	#$20
	longa	off
	lda	#$2
	ldy	#$11
	sta	[<L562+fp_0],Y
	rep	#$20
	longa	on
	.line	4126
	lda	#$2
	brl	L568
	.line	4126
L10296:
	.line	4126
;			sect += csect;
	.line	4127
	lda	<L563+csect_1
	sta	<R0
	stz	<R0+2
	clc
	lda	<R0
	adc	<L563+sect_1
	sta	<L563+sect_1
	lda	<R0+2
	adc	<L563+sect_1+2
	sta	<L563+sect_1+2
;			cc = btw / SS(fs);				/* When remaining bytes >= sector size, */
	.line	4128
	lda	<L562+btw_0
	ldx	#<$9
	xref	~~~lsr
	jsl	~~~lsr
	sta	<L563+cc_1
;			if (cc > 0) {					/* Write maximum contiguous sectors directly */
	.line	4129
	lda	#$0
	cmp	<L563+cc_1
	bcc	L586
	brl	L10297
L586:
	.line	4129
;				if (csect + cc > fs->csize) {	/* Clip at cluster boundary */
	.line	4130
	clc
	lda	<L563+csect_1
	adc	<L563+cc_1
	sta	<R0
	ldy	#$9
	lda	[<L563+fs_1],Y
	cmp	<R0
	bcc	L587
	brl	L10298
L587:
	.line	4130
;					cc = fs->csize - csect;
	.line	4131
	sec
	ldy	#$9
	lda	[<L563+fs_1],Y
	sbc	<L563+csect_1
	sta	<L563+cc_1
;				}
	.line	4132
;				if (disk_write(fs->pdrv, wbuff, sect, cc) != RES_OK) ABORT(fs, FR_DISK_ERR);
L10298:
	.line	4133
	pei	<L563+cc_1
	pei	<L563+sect_1+2
	pei	<L563+sect_1
	pei	<L563+wbuff_1+2
	pei	<L563+wbuff_1
	ldy	#$1
	lda	[<L563+fs_1],Y
	pha
	jsl	~~disk_write
	tax
	bne	L588
	brl	L10299
L588:
	.line	4133
	.line	4133
	sep	#$20
	longa	off
	lda	#$1
	ldy	#$11
	sta	[<L562+fp_0],Y
	rep	#$20
	longa	on
	.line	4133
	lda	#$1
	brl	L568
	.line	4133
L10299:
	.line	4133
;#if FF_FS_MINIMIZE <= 2
;#if FF_FS_TINY
;				if (fs->winsect - sect < cc) {	/* Refill sector cache if it gets invalidated by the direct write */
;					mem_cpy(fs->win, wbuff + ((fs->winsect - sect) * SS(fs)), SS(fs));
;					fs->wflag = 0;
;				}
;#else
;				if (fp->sect - sect < cc) { /* Refill sector cache if it gets invalidated by the direct write */
	.line	4141
	lda	<L563+cc_1
	sta	<R0
	stz	<R0+2
	sec
	ldy	#$1a
	lda	[<L562+fp_0],Y
	sbc	<L563+sect_1
	sta	<R1
	ldy	#$1c
	lda	[<L562+fp_0],Y
	sbc	<L563+sect_1+2
	sta	<R1+2
	lda	<R1
	cmp	<R0
	lda	<R1+2
	sbc	<R0+2
	bcc	L589
	brl	L10300
L589:
	.line	4141
;					mem_cpy(fp->buf, wbuff + ((fp->sect - sect) * SS(fs)), SS(fs));
	.line	4142
	pea	#<$200
	sec
	ldy	#$1a
	lda	[<L562+fp_0],Y
	sbc	<L563+sect_1
	sta	<R1
	ldy	#$1c
	lda	[<L562+fp_0],Y
	sbc	<L563+sect_1+2
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	lda	#$9
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R0
	stx	<R0+2
	clc
	lda	<L563+wbuff_1
	adc	<R0
	sta	<R2
	lda	<L563+wbuff_1+2
	adc	<R0+2
	sta	<R2+2
	pei	<R2+2
	pei	<R2
	clc
	lda	#$26
	adc	<L562+fp_0
	sta	<R0
	lda	#$0
	adc	<L562+fp_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~mem_cpy
;					fp->flag &= (BYTE)~FA_DIRTY;
	.line	4143
	clc
	lda	#$10
	adc	<L562+fp_0
	sta	<R0
	lda	#$0
	adc	<L562+fp_0+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	[<R0]
	and	#<$7f
	sta	[<R0]
	rep	#$20
	longa	on
;				}
	.line	4144
;#endif
;#endif
;				wcnt = SS(fs) * cc;		/* Number of bytes transferred */
L10300:
	.line	4147
	lda	<L563+cc_1
	ldx	#<$9
	xref	~~~asl
	jsl	~~~asl
	sta	<L563+wcnt_1
;				continue;
	.line	4148
	brl	L10282
;			}
	.line	4149
;#if FF_FS_TINY
;			if (fp->fptr >= fp->obj.objsize) {	/* Avoid silly cache filling on the growing edge */
;				if (sync_window(fs) != FR_OK) ABORT(fs, FR_DISK_ERR);
;				fs->winsect = sect;
;			}
;#else
;			if (fp->sect != sect && 		/* Fill sector cache with file data */
L10297:
	.line	4156
;				fp->fptr < fp->obj.objsize &&
;				disk_read(fs->pdrv, fp->buf, sect, 1) != RES_OK) {
	ldy	#$1a
	lda	[<L562+fp_0],Y
	cmp	<L563+sect_1
	bne	L590
	ldy	#$1c
	lda	[<L562+fp_0],Y
	cmp	<L563+sect_1+2
L590:
	bne	L591
	brl	L10301
L591:
	ldy	#$12
	lda	[<L562+fp_0],Y
	ldy	#$c
	cmp	[<L562+fp_0],Y
	ldy	#$14
	lda	[<L562+fp_0],Y
	ldy	#$e
	sbc	[<L562+fp_0],Y
	bcc	L592
	brl	L10301
L592:
	pea	#<$1
	pei	<L563+sect_1+2
	pei	<L563+sect_1
	clc
	lda	#$26
	adc	<L562+fp_0
	sta	<R0
	lda	#$0
	adc	<L562+fp_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$1
	lda	[<L563+fs_1],Y
	pha
	jsl	~~disk_read
	tax
	bne	L593
	brl	L10301
L593:
	.line	4158
;					ABORT(fs, FR_DISK_ERR);
	.line	4159
	.line	4159
	sep	#$20
	longa	off
	lda	#$1
	ldy	#$11
	sta	[<L562+fp_0],Y
	rep	#$20
	longa	on
	.line	4159
	lda	#$1
	brl	L568
	.line	4159
	.line	4159
;			}
	.line	4160
;#endif
;			fp->sect = sect;
L10301:
	.line	4162
	lda	<L563+sect_1
	ldy	#$1a
	sta	[<L562+fp_0],Y
	lda	<L563+sect_1+2
	ldy	#$1c
	sta	[<L562+fp_0],Y
;		}
	.line	4163
;		wcnt = SS(fs) - (UINT)fp->fptr % SS(fs);	/* Number of bytes remains in the sector */
L10286:
	.line	4164
	ldy	#$12
	lda	[<L562+fp_0],Y
	and	#<$1ff
	sta	<R0
	sec
	lda	#$200
	sbc	<R0
	sta	<L563+wcnt_1
;		if (wcnt > btw) wcnt = btw;					/* Clip it by btw if needed */
	.line	4165
	lda	<L562+btw_0
	cmp	<L563+wcnt_1
	bcc	L594
	brl	L10302
L594:
	.line	4165
	lda	<L562+btw_0
	sta	<L563+wcnt_1
;#if FF_FS_TINY
;		if (move_window(fs, fp->sect) != FR_OK) ABORT(fs, FR_DISK_ERR);	/* Move sector window */
;		mem_cpy(fs->win + fp->fptr % SS(fs), wbuff, wcnt);	/* Fit data to the sector */
;		fs->wflag = 1;
;#else
;		mem_cpy(fp->buf + fp->fptr % SS(fs), wbuff, wcnt);	/* Fit data to the sector */
L10302:
	.line	4171
	pei	<L563+wcnt_1
	pei	<L563+wbuff_1+2
	pei	<L563+wbuff_1
	ldy	#$12
	lda	[<L562+fp_0],Y
	and	#<$1ff
	sta	<R0
	stz	<R0+2
	clc
	lda	#$26
	adc	<R0
	sta	<R1
	lda	#$0
	adc	<R0+2
	sta	<R1+2
	clc
	lda	<L562+fp_0
	adc	<R1
	sta	<R0
	lda	<L562+fp_0+2
	adc	<R1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~mem_cpy
;		fp->flag |= FA_DIRTY;
	.line	4172
	clc
	lda	#$10
	adc	<L562+fp_0
	sta	<R0
	lda	#$0
	adc	<L562+fp_0+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	[<R0]
	ora	#<$80
	sta	[<R0]
	rep	#$20
	longa	on
;#endif
;	}
	.line	4174
L10282:
	sec
	lda	<L562+btw_0
	sbc	<L563+wcnt_1
	sta	<L562+btw_0
	clc
	lda	[<L562+bw_0]
	adc	<L563+wcnt_1
	sta	[<L562+bw_0]
	lda	<L563+wcnt_1
	sta	<R0
	stz	<R0+2
	clc
	lda	<L563+wbuff_1
	adc	<R0
	sta	<L563+wbuff_1
	lda	<L563+wbuff_1+2
	adc	<R0+2
	sta	<L563+wbuff_1+2
	clc
	lda	#$12
	adc	<L562+fp_0
	sta	<R0
	lda	#$0
	adc	<L562+fp_0+2
	sta	<R0+2
	lda	<L563+wcnt_1
	sta	<R1
	stz	<R1+2
	clc
	lda	<R1
	adc	[<R0]
	sta	[<R0]
	lda	<R1+2
	ldy	#$2
	adc	[<R0],Y
	ldy	#$2
	sta	[<R0],Y
	ldy	#$c
	lda	[<L562+fp_0],Y
	ldy	#$12
	cmp	[<L562+fp_0],Y
	ldy	#$e
	lda	[<L562+fp_0],Y
	ldy	#$14
	sbc	[<L562+fp_0],Y
	bcc	L596
	brl	L595
L596:
	ldy	#$14
	lda	[<L562+fp_0],Y
	tax
	ldy	#$12
	lda	[<L562+fp_0],Y
	bra	L597
L595:
	ldy	#$e
	lda	[<L562+fp_0],Y
	tax
	ldy	#$c
	lda	[<L562+fp_0],Y
L597:
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$c
	sta	[<L562+fp_0],Y
	lda	<R0+2
	ldy	#$e
	sta	[<L562+fp_0],Y
L10285:
	lda	<L562+btw_0
	beq	L598
	brl	L10284
L598:
L10283:
;
;	fp->flag |= FA_MODIFIED;				/* Set file change flag */
	.line	4176
	clc
	lda	#$10
	adc	<L562+fp_0
	sta	<R0
	lda	#$0
	adc	<L562+fp_0+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	[<R0]
	ora	#<$40
	sta	[<R0]
	rep	#$20
	longa	on
;
;	LEAVE_FF(fs, FR_OK);
	.line	4178
	lda	#$0
	brl	L568
;}
	.line	4179
	.endblock	4179
L562	equ	36
L563	equ	13
	ends
	efunc
	.endfunc	4179,13,36
	.line	4179
;
;
;
;
;/*-----------------------------------------------------------------------*/
;/* Synchronize the File                                                  */
;/*-----------------------------------------------------------------------*/
;
;FRESULT f_sync (
;	FIL* fp		/* Pointer to the file object */
;)
;{
	.line	4188
	.line	4191
	FFDOS
	xdef	~~f_sync
	func
	.function	4191
~~f_sync:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L599
	tcs
	phd
	tcd
fp_0	set	4
	.block	4191
;	FRESULT res;
;	FATFS *fs;
;	DWORD tm;
;	BYTE *dir;
;
;
;	res = validate(&fp->obj, &fs);	/* Check validity of the file object */
res_1	set	0
fs_1	set	2
tm_1	set	6
dir_1	set	10
	.sym	res,0,5,1,16
	.sym	fs,2,138,1,32,80
	.sym	tm,6,18,1,32
	.sym	dir,10,142,1,32
	.sym	fp,4,138,6,32,82
	.line	4198
	pea	#0
	clc
	tdc
	adc	#<L600+fs_1
	pha
	pei	<L599+fp_0+2
	pei	<L599+fp_0
	jsl	~~validate
	sta	<L600+res_1
;	if (res == FR_OK) {
	.line	4199
	lda	<L600+res_1
	beq	L602
	brl	L10303
L602:
	.line	4199
;		if (fp->flag & FA_MODIFIED) {	/* Is there any change to the file? */
	.line	4200
	sep	#$20
	longa	off
	ldy	#$10
	lda	[<L599+fp_0],Y
	and	#<$40
	rep	#$20
	longa	on
	bne	L603
	brl	L10304
L603:
	.line	4200
;#if !FF_FS_TINY
;			if (fp->flag & FA_DIRTY) {	/* Write-back cached data if needed */
	.line	4202
	sep	#$20
	longa	off
	ldy	#$10
	lda	[<L599+fp_0],Y
	and	#<$80
	rep	#$20
	longa	on
	bne	L604
	brl	L10305
L604:
	.line	4202
;				if (disk_write(fs->pdrv, fp->buf, fp->sect, 1) != RES_OK) LEAVE_FF(fs, FR_DISK_ERR);
	.line	4203
	pea	#<$1
	ldy	#$1c
	lda	[<L599+fp_0],Y
	pha
	ldy	#$1a
	lda	[<L599+fp_0],Y
	pha
	clc
	lda	#$26
	adc	<L599+fp_0
	sta	<R0
	lda	#$0
	adc	<L599+fp_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$1
	lda	[<L600+fs_1],Y
	pha
	jsl	~~disk_write
	tax
	bne	L605
	brl	L10306
L605:
	.line	4203
	lda	#$1
L606:
	tay
	lda	<L599+2
	sta	<L599+2+4
	lda	<L599+1
	sta	<L599+1+4
	pld
	tsc
	clc
	adc	#L599+4
	tcs
	tya
	rtl
;				fp->flag &= (BYTE)~FA_DIRTY;
L10306:
	.line	4204
	clc
	lda	#$10
	adc	<L599+fp_0
	sta	<R0
	lda	#$0
	adc	<L599+fp_0+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	[<R0]
	and	#<$7f
	sta	[<R0]
	rep	#$20
	longa	on
;			}
	.line	4205
;#endif
;			/* Update the directory entry */
;			tm = GET_FATTIME();				/* Modified time */
L10305:
	.line	4208
	lda	#$0
	sta	<L600+tm_1
	lda	#$4e21
	sta	<L600+tm_1+2
;#if FF_FS_EXFAT
;			if (fs->fs_type == FS_EXFAT) {
;				res = fill_first_frag(&fp->obj);	/* Fill first fragment on the FAT if needed */
;				if (res == FR_OK) {
;					res = fill_last_frag(&fp->obj, fp->clust, 0xFFFFFFFF);	/* Fill last fragment on the FAT if needed */
;				}
;				if (res == FR_OK) {
;					DIR dj;
;					DEF_NAMBUF
;
;					INIT_NAMBUF(fs);
;					res = load_obj_xdir(&dj, &fp->obj);	/* Load directory entry block */
;					if (res == FR_OK) {
;						fs->dirbuf[XDIR_Attr] |= AM_ARC;				/* Set archive attribute to indicate that the file has been changed */
;						fs->dirbuf[XDIR_GenFlags] = fp->obj.stat | 1;	/* Update file allocation information */
;						st_dword(fs->dirbuf + XDIR_FstClus, fp->obj.sclust);		/* Update start cluster */
;						st_qword(fs->dirbuf + XDIR_FileSize, fp->obj.objsize);		/* Update file size */
;						st_qword(fs->dirbuf + XDIR_ValidFileSize, fp->obj.objsize);	/* (FatFs does not support Valid File Size feature) */
;						st_dword(fs->dirbuf + XDIR_ModTime, tm);		/* Update modified time */
;						fs->dirbuf[XDIR_ModTime10] = 0;
;						st_dword(fs->dirbuf + XDIR_AccTime, 0);
;						res = store_xdir(&dj);	/* Restore it to the directory */
;						if (res == FR_OK) {
;							res = sync_fs(fs);
;							fp->flag &= (BYTE)~FA_MODIFIED;
;						}
;					}
;					FREE_NAMBUF();
;				}
;			} else
;#endif
;			{
	.line	4240
;				res = move_window(fs, fp->dir_sect);
	.line	4241
	ldy	#$20
	lda	[<L599+fp_0],Y
	pha
	ldy	#$1e
	lda	[<L599+fp_0],Y
	pha
	pei	<L600+fs_1+2
	pei	<L600+fs_1
	jsl	~~move_window
	sta	<L600+res_1
;				if (res == FR_OK) {
	.line	4242
	lda	<L600+res_1
	beq	L607
	brl	L10307
L607:
	.line	4242
;					dir = fp->dir_ptr;
	.line	4243
	ldy	#$22
	lda	[<L599+fp_0],Y
	sta	<L600+dir_1
	ldy	#$24
	lda	[<L599+fp_0],Y
	sta	<L600+dir_1+2
;					dir[DIR_Attr] |= AM_ARC;						/* Set archive attribute to indicate that the file has been changed */
	.line	4244
	clc
	lda	#$b
	adc	<L600+dir_1
	sta	<R0
	lda	#$0
	adc	<L600+dir_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	[<R0]
	ora	#<$20
	sta	[<R0]
	rep	#$20
	longa	on
;					st_clust(fp->obj.fs, dir, fp->obj.sclust);		/* Update file allocation information  */
	.line	4245
	ldy	#$a
	lda	[<L599+fp_0],Y
	pha
	ldy	#$8
	lda	[<L599+fp_0],Y
	pha
	pei	<L600+dir_1+2
	pei	<L600+dir_1
	ldy	#$2
	lda	[<L599+fp_0],Y
	pha
	lda	[<L599+fp_0]
	pha
	jsl	~~st_clust
;					st_dword(dir + DIR_FileSize, (DWORD)fp->obj.objsize);	/* Update file size */
	.line	4246
	ldy	#$e
	lda	[<L599+fp_0],Y
	pha
	ldy	#$c
	lda	[<L599+fp_0],Y
	pha
	clc
	lda	#$1c
	adc	<L600+dir_1
	sta	<R0
	lda	#$0
	adc	<L600+dir_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~st_dword
;					st_dword(dir + DIR_ModTime, tm);				/* Update modified time */
	.line	4247
	pei	<L600+tm_1+2
	pei	<L600+tm_1
	clc
	lda	#$16
	adc	<L600+dir_1
	sta	<R0
	lda	#$0
	adc	<L600+dir_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~st_dword
;					st_word(dir + DIR_LstAccDate, 0);
	.line	4248
	pea	#<$0
	clc
	lda	#$12
	adc	<L600+dir_1
	sta	<R0
	lda	#$0
	adc	<L600+dir_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~st_word
;					fs->wflag = 1;
	.line	4249
	sep	#$20
	longa	off
	lda	#$1
	ldy	#$3
	sta	[<L600+fs_1],Y
	rep	#$20
	longa	on
;					res = sync_fs(fs);					/* Restore it to the directory */
	.line	4250
	pei	<L600+fs_1+2
	pei	<L600+fs_1
	jsl	~~sync_fs
	sta	<L600+res_1
;					fp->flag &= (BYTE)~FA_MODIFIED;
	.line	4251
	clc
	lda	#$10
	adc	<L599+fp_0
	sta	<R0
	lda	#$0
	adc	<L599+fp_0+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	[<R0]
	and	#<$bf
	sta	[<R0]
	rep	#$20
	longa	on
;				}
	.line	4252
;			}
L10307:
	.line	4253
;		}
	.line	4254
;	}
L10304:
	.line	4255
;
;	LEAVE_FF(fs, res);
L10303:
	.line	4257
	lda	<L600+res_1
	brl	L606
;}
	.line	4258
	.endblock	4258
L599	equ	18
L600	equ	5
	ends
	efunc
	.endfunc	4258,5,18
	.line	4258
;
;#endif /* !FF_FS_READONLY */
;
;
;
;
;/*-----------------------------------------------------------------------*/
;/* Close File                                                            */
;/*-----------------------------------------------------------------------*/
;
;FRESULT f_close (
;	FIL* fp		/* Pointer to the file object to be closed */
;)
;{
	.line	4269
	.line	4272
	FFDOS
	xdef	~~f_close
	func
	.function	4272
~~f_close:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L608
	tcs
	phd
	tcd
fp_0	set	4
	.block	4272
;	FRESULT res;
;	FATFS *fs;
;
;#if !FF_FS_READONLY
;	res = f_sync(fp);					/* Flush cached data */
res_1	set	0
fs_1	set	2
	.sym	res,0,5,1,16
	.sym	fs,2,138,1,32,80
	.sym	fp,4,138,6,32,82
	.line	4277
	pei	<L608+fp_0+2
	pei	<L608+fp_0
	jsl	~~f_sync
	sta	<L609+res_1
;	if (res == FR_OK)
	.line	4278
;#endif
;	{
	lda	<L609+res_1
	beq	L611
	brl	L10308
L611:
	.line	4280
;		res = validate(&fp->obj, &fs);	/* Lock volume */
	.line	4281
	pea	#0
	clc
	tdc
	adc	#<L609+fs_1
	pha
	pei	<L608+fp_0+2
	pei	<L608+fp_0
	jsl	~~validate
	sta	<L609+res_1
;		if (res == FR_OK) {
	.line	4282
	lda	<L609+res_1
	beq	L612
	brl	L10309
L612:
	.line	4282
;#if FF_FS_LOCK != 0
;			res = dec_lock(fp->obj.lockid);		/* Decrement file open counter */
;			if (res == FR_OK) fp->obj.fs = 0;	/* Invalidate file object */
;#else
;			fp->obj.fs = 0;	/* Invalidate file object */
	.line	4287
	lda	#$0
	sta	[<L608+fp_0]
	lda	#$0
	ldy	#$2
	sta	[<L608+fp_0],Y
;#endif
;#if FF_FS_REENTRANT
;			unlock_fs(fs, FR_OK);		/* Unlock volume */
;#endif
;		}
	.line	4292
;	}
L10309:
	.line	4293
;	return res;
L10308:
	.line	4294
	lda	<L609+res_1
L613:
	tay
	lda	<L608+2
	sta	<L608+2+4
	lda	<L608+1
	sta	<L608+1+4
	pld
	tsc
	clc
	adc	#L608+4
	tcs
	tya
	rtl
;}
	.line	4295
	.endblock	4295
L608	equ	6
L609	equ	1
	ends
	efunc
	.endfunc	4295,1,6
	.line	4295
;
;
;
;
;#if FF_FS_RPATH >= 1
;/*-----------------------------------------------------------------------*/
;/* Change Current Directory or Current Drive, Get Current Directory      */
;/*-----------------------------------------------------------------------*/
;
;FRESULT f_chdrive (
;	const TCHAR* path		/* Drive number to set */
;)
;{
;	int vol;
;
;
;	/* Get logical drive number */
;	vol = get_ldnumber(&path);
;	if (vol < 0) return FR_INVALID_DRIVE;
;	CurrVol = (BYTE)vol;	/* Set it as current volume */
;
;	return FR_OK;
;}
;
;
;
;FRESULT f_chdir (
;	const TCHAR* path	/* Pointer to the directory path */
;)
;{
;#if FF_STR_VOLUME_ID == 2
;	UINT i;
;#endif
;	FRESULT res;
;	DIR dj;
;	FATFS *fs;
;	DEF_NAMBUF
;
;	k_debug_string( "f_chdir...\r\n");
;
;	/* Get logical drive */
;	res = mount_volume(&path, &fs, 0);
;	if (res == FR_OK) {
;		dj.obj.fs = fs;
;		INIT_NAMBUF(fs);
;		res = follow_path(&dj, path);		/* Follow the path */
;		if (res == FR_OK) {					/* Follow completed */
;			if (dj.fn[NSFLAG] & NS_NONAME) {	/* Is it the start directory itself? */
;				fs->cdir = dj.obj.sclust;
;#if FF_FS_EXFAT
;				if (fs->fs_type == FS_EXFAT) {
;					fs->cdc_scl = dj.obj.c_scl;
;					fs->cdc_size = dj.obj.c_size;
;					fs->cdc_ofs = dj.obj.c_ofs;
;				}
;#endif
;			} else {
;				if (dj.obj.attr & AM_DIR) {	/* It is a sub-directory */
;#if FF_FS_EXFAT
;					if (fs->fs_type == FS_EXFAT) {
;						fs->cdir = ld_dword(fs->dirbuf + XDIR_FstClus);		/* Sub-directory cluster */
;						fs->cdc_scl = dj.obj.sclust;						/* Save containing directory information */
;						fs->cdc_size = ((DWORD)dj.obj.objsize & 0xFFFFFF00) | dj.obj.stat;
;						fs->cdc_ofs = dj.blk_ofs;
;					} else
;#endif
;					{
;						fs->cdir = ld_clust(fs, dj.dir);					/* Sub-directory cluster */
;					}
;				} else {
;					res = FR_NO_PATH;		/* Reached but a file */
;				}
;			}
;		}
;		FREE_NAMBUF();
;		if (res == FR_NO_FILE) res = FR_NO_PATH;
;#if FF_STR_VOLUME_ID == 2	/* Also current drive is changed at Unix style volume ID */
;		if (res == FR_OK) {
;			for (i = FF_VOLUMES - 1; i && fs != FatFs[i]; i--) ;	/* Set current drive */
;			CurrVol = (BYTE)i;
;		}
;#endif
;	}
;
;	LEAVE_FF(fs, res);
;}
;
;
;#if FF_FS_RPATH >= 2
;FRESULT f_getcwd (
;	TCHAR* buff,	/* Pointer to the directory path */
;	UINT len		/* Size of buff in unit of TCHAR */
;)
;{
;	FRESULT res;
;	DIR dj;
;	FATFS *fs;
;	UINT i, n;
;	DWORD ccl;
;	TCHAR *tp = buff;
;#if FF_VOLUMES >= 2
;	UINT vl;
;#if FF_STR_VOLUME_ID
;	const char *vp;
;#endif
;#endif
;	FILINFO fno;
;	DEF_NAMBUF
;
;
;	/* Get logical drive */
;	buff[0] = 0;	/* Set null string to get current volume */
;	res = mount_volume((const TCHAR**)&buff, &fs, 0);	/* Get current volume */
;	if (res == FR_OK) {
;		dj.obj.fs = fs;
;		INIT_NAMBUF(fs);
;
;		/* Follow parent directories and create the path */
;		i = len;			/* Bottom of buffer (directory stack base) */
;		if (!FF_FS_EXFAT || fs->fs_type != FS_EXFAT) {	/* (Cannot do getcwd on exFAT and returns root path) */
;			dj.obj.sclust = fs->cdir;				/* Start to follow upper directory from current directory */
;			while ((ccl = dj.obj.sclust) != 0) {	/* Repeat while current directory is a sub-directory */
;				res = dir_sdi(&dj, 1 * SZDIRE);	/* Get parent directory */
;				if (res != FR_OK) break;
;				res = move_window(fs, dj.sect);
;				if (res != FR_OK) break;
;				dj.obj.sclust = ld_clust(fs, dj.dir);	/* Goto parent directory */
;				res = dir_sdi(&dj, 0);
;				if (res != FR_OK) break;
;				do {							/* Find the entry links to the child directory */
;					res = DIR_READ_FILE(&dj);
;					if (res != FR_OK) break;
;					if (ccl == ld_clust(fs, dj.dir)) break;	/* Found the entry */
;					res = dir_next(&dj, 0);
;				} while (res == FR_OK);
;				if (res == FR_NO_FILE) res = FR_INT_ERR;/* It cannot be 'not found'. */
;				if (res != FR_OK) break;
;				get_fileinfo(&dj, &fno);		/* Get the directory name and push it to the buffer */
;				for (n = 0; fno.fname[n]; n++) ;	/* Name length */
;				if (i < n + 1) {	/* Insufficient space to store the path name? */
;					res = FR_NOT_ENOUGH_CORE; break;
;				}
;				while (n) buff[--i] = fno.fname[--n];	/* Stack the name */
;				buff[--i] = '/';
;			}
;		}
;		if (res == FR_OK) {
;			if (i == len) buff[--i] = '/';	/* Is it the root-directory? */
;#if FF_VOLUMES >= 2			/* Put drive prefix */
;			vl = 0;
;#if FF_STR_VOLUME_ID >= 1	/* String volume ID */
;			for (n = 0, vp = (const char*)VolumeStr[CurrVol]; vp[n]; n++) ;
;			if (i >= n + 2) {
;				if (FF_STR_VOLUME_ID == 2) *tp++ = (TCHAR)'/';
;				for (vl = 0; vl < n; *tp++ = (TCHAR)vp[vl], vl++) ;
;				if (FF_STR_VOLUME_ID == 1) *tp++ = (TCHAR)':';
;				vl++;
;			}
;#else						/* Numeric volume ID */
;			if (i >= 3) {
;				*tp++ = (TCHAR)'0' + CurrVol;
;				*tp++ = (TCHAR)':';
;				vl = 2;
;			}
;#endif
;			if (vl == 0) res = FR_NOT_ENOUGH_CORE;
;#endif
;			/* Add current directory path */
;			if (res == FR_OK) {
;				do *tp++ = buff[i++]; while (i < len);	/* Copy stacked path string */
;			}
;		}
;		FREE_NAMBUF();
;	}
;
;	*tp = 0;
;	LEAVE_FF(fs, res);
;}
;
;#endif /* FF_FS_RPATH >= 2 */
;#endif /* FF_FS_RPATH >= 1 */
;
;
;
;#if FF_FS_MINIMIZE <= 2
;/*-----------------------------------------------------------------------*/
;/* Seek File Read/Write Pointer                                          */
;/*-----------------------------------------------------------------------*/
;
;FRESULT f_lseek (
;	FIL* fp,		/* Pointer to the file object */
;	FSIZE_t ofs		/* File pointer from top of file */
;)
;{
	.line	4485
	.line	4489
	FFDOS
	xdef	~~f_lseek
	func
	.function	4489
~~f_lseek:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L614
	tcs
	phd
	tcd
fp_0	set	4
ofs_0	set	8
	.block	4489
;	FRESULT res;
;	FATFS *fs;
;	DWORD clst, bcs;
;	LBA_t nsect;
;	FSIZE_t ifptr;
;#if FF_USE_FASTSEEK
;	DWORD cl, pcl, ncl, tcl, tlen, ulen, *tbl;
;	LBA_t dsc;
;#endif
;
;	res = validate(&fp->obj, &fs);		/* Check validity of the file object */
res_1	set	0
fs_1	set	2
clst_1	set	6
bcs_1	set	10
nsect_1	set	14
ifptr_1	set	18
	.sym	res,0,5,1,16
	.sym	fs,2,138,1,32,80
	.sym	clst,6,18,1,32
	.sym	bcs,10,18,1,32
	.sym	nsect,14,18,1,32
	.sym	ifptr,18,18,1,32
	.sym	fp,4,138,6,32,82
	.sym	ofs,8,18,6,32
	.line	4500
	pea	#0
	clc
	tdc
	adc	#<L615+fs_1
	pha
	pei	<L614+fp_0+2
	pei	<L614+fp_0
	jsl	~~validate
	sta	<L615+res_1
;	if (res == FR_OK) res = (FRESULT)fp->err;
	.line	4501
	lda	<L615+res_1
	beq	L617
	brl	L10310
L617:
	.line	4501
	ldy	#$11
	lda	[<L614+fp_0],Y
	and	#$ff
	sta	<L615+res_1
;#if FF_FS_EXFAT && !FF_FS_READONLY
;	if (res == FR_OK && fs->fs_type == FS_EXFAT) {
;		res = fill_last_frag(&fp->obj, fp->clust, 0xFFFFFFFF);	/* Fill last fragment on the FAT if needed */
;	}
;#endif
;	if (res != FR_OK) LEAVE_FF(fs, res);
L10310:
	.line	4507
	lda	<L615+res_1
	bne	L618
	brl	L10311
L618:
	.line	4507
	lda	<L615+res_1
L619:
	tay
	lda	<L614+2
	sta	<L614+2+8
	lda	<L614+1
	sta	<L614+1+8
	pld
	tsc
	clc
	adc	#L614+8
	tcs
	tya
	rtl
;
;#if FF_USE_FASTSEEK
;	if (fp->cltbl) {	/* Fast seek */
;		if (ofs == CREATE_LINKMAP) {	/* Create CLMT */
;			tbl = fp->cltbl;
;			tlen = *tbl++; ulen = 2;	/* Given table size and required table size */
;			cl = fp->obj.sclust;		/* Origin of the chain */
;			if (cl != 0) {
;				do {
;					/* Get a fragment */
;					tcl = cl; ncl = 0; ulen += 2;	/* Top, length and used items */
;					do {
;						pcl = cl; ncl++;
;						cl = get_fat(&fp->obj, cl);
;						if (cl <= 1) ABORT(fs, FR_INT_ERR);
;						if (cl == 0xFFFFFFFF) ABORT(fs, FR_DISK_ERR);
;					} while (cl == pcl + 1);
;					if (ulen <= tlen) {		/* Store the length and top of the fragment */
;						*tbl++ = ncl; *tbl++ = tcl;
;					}
;				} while (cl < fs->n_fatent);	/* Repeat until end of chain */
;			}
;			*fp->cltbl = ulen;	/* Number of items used */
;			if (ulen <= tlen) {
;				*tbl = 0;		/* Terminate table */
;			} else {
;				res = FR_NOT_ENOUGH_CORE;	/* Given table size is smaller than required */
;			}
;		} else {						/* Fast seek */
;			if (ofs > fp->obj.objsize) ofs = fp->obj.objsize;	/* Clip offset at the file size */
;			fp->fptr = ofs;				/* Set file pointer */
;			if (ofs > 0) {
;				fp->clust = clmt_clust(fp, ofs - 1);
;				dsc = clst2sect(fs, fp->clust);
;				if (dsc == 0) ABORT(fs, FR_INT_ERR);
;				dsc += (DWORD)((ofs - 1) / SS(fs)) & (fs->csize - 1);
;				if (fp->fptr % SS(fs) && dsc != fp->sect) {	/* Refill sector cache if needed */
;#if !FF_FS_TINY
;#if !FF_FS_READONLY
;					if (fp->flag & FA_DIRTY) {		/* Write-back dirty sector cache */
;						if (disk_write(fs->pdrv, fp->buf, fp->sect, 1) != RES_OK) ABORT(fs, FR_DISK_ERR);
;						fp->flag &= (BYTE)~FA_DIRTY;
;					}
;#endif
;					if (disk_read(fs->pdrv, fp->buf, dsc, 1) != RES_OK) ABORT(fs, FR_DISK_ERR);	/* Load current sector */
;#endif
;					fp->sect = dsc;
;				}
;			}
;		}
;	} else
;#endif
;
;	/* Normal Seek */
;	{
L10311:
	.line	4562
;#if FF_FS_EXFAT
;		if (fs->fs_type != FS_EXFAT && ofs >= 0x100000000) ofs = 0xFFFFFFFF;	/* Clip at 4 GiB - 1 if at FATxx */
;#endif
;		if (ofs > fp->obj.objsize && (FF_FS_READONLY || !(fp->flag & FA_WRITE))) {	/* In read-only mode, clip offset with the file size */
	.line	4566
	ldy	#$c
	lda	[<L614+fp_0],Y
	cmp	<L614+ofs_0
	ldy	#$e
	lda	[<L614+fp_0],Y
	sbc	<L614+ofs_0+2
	bcc	L620
	brl	L10312
L620:
	sep	#$20
	longa	off
	ldy	#$10
	lda	[<L614+fp_0],Y
	and	#<$2
	rep	#$20
	longa	on
	beq	L622
	brl	L10312
L622:
L621:
	.line	4566
;			ofs = fp->obj.objsize;
	.line	4567
	ldy	#$c
	lda	[<L614+fp_0],Y
	sta	<L614+ofs_0
	ldy	#$e
	lda	[<L614+fp_0],Y
	sta	<L614+ofs_0+2
;		}
	.line	4568
;		ifptr = fp->fptr;
L10312:
	.line	4569
	ldy	#$12
	lda	[<L614+fp_0],Y
	sta	<L615+ifptr_1
	ldy	#$14
	lda	[<L614+fp_0],Y
	sta	<L615+ifptr_1+2
;		fp->fptr = nsect = 0;
	.line	4570
	stz	<L615+nsect_1
	stz	<L615+nsect_1+2
	lda	#$0
	ldy	#$12
	sta	[<L614+fp_0],Y
	lda	#$0
	ldy	#$14
	sta	[<L614+fp_0],Y
;		if (ofs > 0) {
	.line	4571
	lda	#$0
	cmp	<L614+ofs_0
	lda	#$0
	sbc	<L614+ofs_0+2
	bcc	L623
	brl	L10313
L623:
	.line	4571
;			bcs = (DWORD)fs->csize * SS(fs);	/* Cluster size (byte) */
	.line	4572
	ldy	#$0
	phy
	ldy	#$9
	lda	[<L615+fs_1],Y
	ply
	rol	A
	ror	A
	bpl	L624
	dey
L624:
	sta	<R0
	sty	<R0+2
	pei	<R0+2
	pei	<R0
	lda	#$9
	xref	~~~lasl
	jsl	~~~lasl
	sta	<L615+bcs_1
	stx	<L615+bcs_1+2
;			if (ifptr > 0 &&
	.line	4573
;				(ofs - 1) / bcs >= (ifptr - 1) / bcs) {	/* When seek to same or following cluster, */
	lda	#$0
	cmp	<L615+ifptr_1
	lda	#$0
	sbc	<L615+ifptr_1+2
	bcc	L625
	brl	L10314
L625:
	clc
	lda	#$ffff
	adc	<L615+ifptr_1
	sta	<R0
	lda	#$ffff
	adc	<L615+ifptr_1+2
	sta	<R0+2
	pei	<L615+bcs_1+2
	pei	<L615+bcs_1
	pei	<R0+2
	pei	<R0
	xref	~~~ludv
	jsl	~~~ludv
	sta	<R0
	stx	<R0+2
	clc
	lda	#$ffff
	adc	<L614+ofs_0
	sta	<R1
	lda	#$ffff
	adc	<L614+ofs_0+2
	sta	<R1+2
	pei	<L615+bcs_1+2
	pei	<L615+bcs_1
	pei	<R1+2
	pei	<R1
	xref	~~~ludv
	jsl	~~~ludv
	sta	<R1
	stx	<R1+2
	lda	<R1
	cmp	<R0
	lda	<R1+2
	sbc	<R0+2
	bcs	L626
	brl	L10314
L626:
	.line	4574
;				fp->fptr = (ifptr - 1) & ~(FSIZE_t)(bcs - 1);	/* start from the current cluster */
	.line	4575
	clc
	lda	#$ffff
	adc	<L615+ifptr_1
	sta	<R0
	lda	#$ffff
	adc	<L615+ifptr_1+2
	sta	<R0+2
	clc
	lda	#$ffff
	adc	<L615+bcs_1
	sta	<R1
	lda	#$ffff
	adc	<L615+bcs_1+2
	sta	<R1+2
	lda	<R1
	eor	#<$ffffffff
	sta	<R2
	lda	<R1+2
	eor	#^$ffffffff
	sta	<R2+2
	lda	<R2
	and	<R0
	sta	<R1
	lda	<R2+2
	and	<R0+2
	sta	<R1+2
	lda	<R1
	ldy	#$12
	sta	[<L614+fp_0],Y
	lda	<R1+2
	ldy	#$14
	sta	[<L614+fp_0],Y
;				ofs -= fp->fptr;
	.line	4576
	sec
	lda	<L614+ofs_0
	ldy	#$12
	sbc	[<L614+fp_0],Y
	sta	<L614+ofs_0
	lda	<L614+ofs_0+2
	ldy	#$14
	sbc	[<L614+fp_0],Y
	sta	<L614+ofs_0+2
;				clst = fp->clust;
	.line	4577
	ldy	#$16
	lda	[<L614+fp_0],Y
	sta	<L615+clst_1
	ldy	#$18
	lda	[<L614+fp_0],Y
	sta	<L615+clst_1+2
;			} else {									/* When seek to back cluster, */
	.line	4578
	brl	L10315
L10314:
	.line	4578
;				clst = fp->obj.sclust;					/* start from the first cluster */
	.line	4579
	ldy	#$8
	lda	[<L614+fp_0],Y
	sta	<L615+clst_1
	ldy	#$a
	lda	[<L614+fp_0],Y
	sta	<L615+clst_1+2
;#if !FF_FS_READONLY
;				if (clst == 0) {						/* If no cluster chain, create a new chain */
	.line	4581
	lda	<L615+clst_1
	ora	<L615+clst_1+2
	beq	L627
	brl	L10316
L627:
	.line	4581
;					clst = create_chain(&fp->obj, 0);
	.line	4582
	pea	#^$0
	pea	#<$0
	pei	<L614+fp_0+2
	pei	<L614+fp_0
	jsl	~~create_chain
	sta	<L615+clst_1
	stx	<L615+clst_1+2
;					if (clst == 1) ABORT(fs, FR_INT_ERR);
	.line	4583
	lda	<L615+clst_1
	cmp	#<$1
	bne	L628
	lda	<L615+clst_1+2
	cmp	#^$1
L628:
	beq	L629
	brl	L10317
L629:
	.line	4583
	.line	4583
	sep	#$20
	longa	off
	lda	#$2
	ldy	#$11
	sta	[<L614+fp_0],Y
	rep	#$20
	longa	on
	.line	4583
	lda	#$2
	brl	L619
	.line	4583
L10317:
	.line	4583
;					if (clst == 0xFFFFFFFF) ABORT(fs, FR_DISK_ERR);
	.line	4584
	lda	<L615+clst_1
	cmp	#<$ffffffff
	bne	L630
	lda	<L615+clst_1+2
	cmp	#^$ffffffff
L630:
	beq	L631
	brl	L10318
L631:
	.line	4584
	.line	4584
	sep	#$20
	longa	off
	lda	#$1
	ldy	#$11
	sta	[<L614+fp_0],Y
	rep	#$20
	longa	on
	.line	4584
	lda	#$1
	brl	L619
	.line	4584
L10318:
	.line	4584
;					fp->obj.sclust = clst;
	.line	4585
	lda	<L615+clst_1
	ldy	#$8
	sta	[<L614+fp_0],Y
	lda	<L615+clst_1+2
	ldy	#$a
	sta	[<L614+fp_0],Y
;				}
	.line	4586
;#endif
;				fp->clust = clst;
L10316:
	.line	4588
	lda	<L615+clst_1
	ldy	#$16
	sta	[<L614+fp_0],Y
	lda	<L615+clst_1+2
	ldy	#$18
	sta	[<L614+fp_0],Y
;			}
	.line	4589
L10315:
;			if (clst != 0) {
	.line	4590
	lda	<L615+clst_1
	ora	<L615+clst_1+2
	bne	L632
	brl	L10319
L632:
	.line	4590
;				while (ofs > bcs) {						/* Cluster following loop */
	.line	4591
L10320:
	lda	<L615+bcs_1
	cmp	<L614+ofs_0
	lda	<L615+bcs_1+2
	sbc	<L614+ofs_0+2
	bcc	L633
	brl	L10321
L633:
	.line	4591
;					ofs -= bcs; fp->fptr += bcs;
	.line	4592
	sec
	lda	<L614+ofs_0
	sbc	<L615+bcs_1
	sta	<L614+ofs_0
	lda	<L614+ofs_0+2
	sbc	<L615+bcs_1+2
	sta	<L614+ofs_0+2
	.line	4592
	clc
	lda	#$12
	adc	<L614+fp_0
	sta	<R0
	lda	#$0
	adc	<L614+fp_0+2
	sta	<R0+2
	clc
	lda	[<R0]
	adc	<L615+bcs_1
	sta	[<R0]
	ldy	#$2
	lda	[<R0],Y
	adc	<L615+bcs_1+2
	ldy	#$2
	sta	[<R0],Y
;#if !FF_FS_READONLY
;					if (fp->flag & FA_WRITE) {			/* Check if in write mode or not */
	.line	4594
	sep	#$20
	longa	off
	ldy	#$10
	lda	[<L614+fp_0],Y
	and	#<$2
	rep	#$20
	longa	on
	bne	L634
	brl	L10322
L634:
	.line	4594
;						if (FF_FS_EXFAT && fp->fptr > fp->obj.objsize) {	/* No FAT chain object needs correct objsize to generate FAT value */
	.line	4595
	brl	L10323
	ldy	#$c
	lda	[<L614+fp_0],Y
	ldy	#$12
	cmp	[<L614+fp_0],Y
	ldy	#$e
	lda	[<L614+fp_0],Y
	ldy	#$14
	sbc	[<L614+fp_0],Y
	bcc	L635
	brl	L10323
L635:
	.line	4595
;							fp->obj.objsize = fp->fptr;
	.line	4596
	ldy	#$12
	lda	[<L614+fp_0],Y
	ldy	#$c
	sta	[<L614+fp_0],Y
	ldy	#$14
	lda	[<L614+fp_0],Y
	ldy	#$e
	sta	[<L614+fp_0],Y
;							fp->flag |= FA_MODIFIED;
	.line	4597
	clc
	lda	#$10
	adc	<L614+fp_0
	sta	<R0
	lda	#$0
	adc	<L614+fp_0+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	[<R0]
	ora	#<$40
	sta	[<R0]
	rep	#$20
	longa	on
;						}
	.line	4598
;						clst = create_chain(&fp->obj, clst);	/* Follow chain with forceed stretch */
L10323:
	.line	4599
	pei	<L615+clst_1+2
	pei	<L615+clst_1
	pei	<L614+fp_0+2
	pei	<L614+fp_0
	jsl	~~create_chain
	sta	<L615+clst_1
	stx	<L615+clst_1+2
;						if (clst == 0) {				/* Clip file size in case of disk full */
	.line	4600
	lda	<L615+clst_1
	ora	<L615+clst_1+2
	beq	L636
	brl	L10324
L636:
	.line	4600
;							ofs = 0; break;
	.line	4601
	stz	<L614+ofs_0
	stz	<L614+ofs_0+2
	.line	4601
	brl	L10321
;						}
	.line	4602
;					} else
L10324:
	.line	4603
	brl	L10325
L10322:
;#endif
;					{
	.line	4605
;						clst = get_fat(&fp->obj, clst);	/* Follow cluster chain if not in write mode */
	.line	4606
	pei	<L615+clst_1+2
	pei	<L615+clst_1
	pei	<L614+fp_0+2
	pei	<L614+fp_0
	jsl	~~get_fat
	sta	<L615+clst_1
	stx	<L615+clst_1+2
;					}
	.line	4607
L10325:
;					if (clst == 0xFFFFFFFF) ABORT(fs, FR_DISK_ERR);
	.line	4608
	lda	<L615+clst_1
	cmp	#<$ffffffff
	bne	L637
	lda	<L615+clst_1+2
	cmp	#^$ffffffff
L637:
	beq	L638
	brl	L10326
L638:
	.line	4608
	.line	4608
	sep	#$20
	longa	off
	lda	#$1
	ldy	#$11
	sta	[<L614+fp_0],Y
	rep	#$20
	longa	on
	.line	4608
	lda	#$1
	brl	L619
	.line	4608
L10326:
	.line	4608
;					if (clst <= 1 || clst >= fs->n_fatent) ABORT(fs, FR_INT_ERR);
	.line	4609
	lda	#$1
	cmp	<L615+clst_1
	lda	#$0
	sbc	<L615+clst_1+2
	bcc	L640
	brl	L639
L640:
	lda	<L615+clst_1
	ldy	#$13
	cmp	[<L615+fs_1],Y
	lda	<L615+clst_1+2
	ldy	#$15
	sbc	[<L615+fs_1],Y
	bcs	L641
	brl	L10327
L641:
L639:
	.line	4609
	.line	4609
	sep	#$20
	longa	off
	lda	#$2
	ldy	#$11
	sta	[<L614+fp_0],Y
	rep	#$20
	longa	on
	.line	4609
	lda	#$2
	brl	L619
	.line	4609
L10327:
	.line	4609
;					fp->clust = clst;
	.line	4610
	lda	<L615+clst_1
	ldy	#$16
	sta	[<L614+fp_0],Y
	lda	<L615+clst_1+2
	ldy	#$18
	sta	[<L614+fp_0],Y
;				}
	.line	4611
	brl	L10320
L10321:
;				fp->fptr += ofs;
	.line	4612
	clc
	lda	#$12
	adc	<L614+fp_0
	sta	<R0
	lda	#$0
	adc	<L614+fp_0+2
	sta	<R0+2
	clc
	lda	[<R0]
	adc	<L614+ofs_0
	sta	[<R0]
	ldy	#$2
	lda	[<R0],Y
	adc	<L614+ofs_0+2
	ldy	#$2
	sta	[<R0],Y
;				if (ofs % SS(fs)) {
	.line	4613
	lda	<L614+ofs_0
	and	#<$1ff
	bne	L642
	brl	L10328
L642:
	.line	4613
;					nsect = clst2sect(fs, clst);	/* Current sector */
	.line	4614
	pei	<L615+clst_1+2
	pei	<L615+clst_1
	pei	<L615+fs_1+2
	pei	<L615+fs_1
	jsl	~~clst2sect
	sta	<L615+nsect_1
	stx	<L615+nsect_1+2
;					if (nsect == 0) ABORT(fs, FR_INT_ERR);
	.line	4615
	lda	<L615+nsect_1
	ora	<L615+nsect_1+2
	beq	L643
	brl	L10329
L643:
	.line	4615
	.line	4615
	sep	#$20
	longa	off
	lda	#$2
	ldy	#$11
	sta	[<L614+fp_0],Y
	rep	#$20
	longa	on
	.line	4615
	lda	#$2
	brl	L619
	.line	4615
L10329:
	.line	4615
;					nsect += (DWORD)(ofs / SS(fs));
	.line	4616
	pei	<L614+ofs_0+2
	pei	<L614+ofs_0
	lda	#$9
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R0
	stx	<R0+2
	clc
	lda	<R0
	adc	<L615+nsect_1
	sta	<L615+nsect_1
	lda	<R0+2
	adc	<L615+nsect_1+2
	sta	<L615+nsect_1+2
;				}
	.line	4617
;			}
L10328:
	.line	4618
;		}
L10319:
	.line	4619
;		if (!FF_FS_READONLY && fp->fptr > fp->obj.objsize) {	/* Set file change flag if the file size is extended */
L10313:
	.line	4620
	ldy	#$c
	lda	[<L614+fp_0],Y
	ldy	#$12
	cmp	[<L614+fp_0],Y
	ldy	#$e
	lda	[<L614+fp_0],Y
	ldy	#$14
	sbc	[<L614+fp_0],Y
	bcc	L644
	brl	L10330
L644:
	.line	4620
;			fp->obj.objsize = fp->fptr;
	.line	4621
	ldy	#$12
	lda	[<L614+fp_0],Y
	ldy	#$c
	sta	[<L614+fp_0],Y
	ldy	#$14
	lda	[<L614+fp_0],Y
	ldy	#$e
	sta	[<L614+fp_0],Y
;			fp->flag |= FA_MODIFIED;
	.line	4622
	clc
	lda	#$10
	adc	<L614+fp_0
	sta	<R0
	lda	#$0
	adc	<L614+fp_0+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	[<R0]
	ora	#<$40
	sta	[<R0]
	rep	#$20
	longa	on
;		}
	.line	4623
;		if (fp->fptr % SS(fs) && nsect != fp->sect) {	/* Fill sector cache if needed */
L10330:
	.line	4624
	ldy	#$12
	lda	[<L614+fp_0],Y
	and	#<$1ff
	bne	L645
	brl	L10331
L645:
	lda	<L615+nsect_1
	ldy	#$1a
	cmp	[<L614+fp_0],Y
	bne	L646
	lda	<L615+nsect_1+2
	ldy	#$1c
	cmp	[<L614+fp_0],Y
L646:
	bne	L647
	brl	L10331
L647:
	.line	4624
;#if !FF_FS_TINY
;#if !FF_FS_READONLY
;			if (fp->flag & FA_DIRTY) {			/* Write-back dirty sector cache */
	.line	4627
	sep	#$20
	longa	off
	ldy	#$10
	lda	[<L614+fp_0],Y
	and	#<$80
	rep	#$20
	longa	on
	bne	L648
	brl	L10332
L648:
	.line	4627
;				if (disk_write(fs->pdrv, fp->buf, fp->sect, 1) != RES_OK) ABORT(fs, FR_DISK_ERR);
	.line	4628
	pea	#<$1
	ldy	#$1c
	lda	[<L614+fp_0],Y
	pha
	ldy	#$1a
	lda	[<L614+fp_0],Y
	pha
	clc
	lda	#$26
	adc	<L614+fp_0
	sta	<R0
	lda	#$0
	adc	<L614+fp_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$1
	lda	[<L615+fs_1],Y
	pha
	jsl	~~disk_write
	tax
	bne	L649
	brl	L10333
L649:
	.line	4628
	.line	4628
	sep	#$20
	longa	off
	lda	#$1
	ldy	#$11
	sta	[<L614+fp_0],Y
	rep	#$20
	longa	on
	.line	4628
	lda	#$1
	brl	L619
	.line	4628
L10333:
	.line	4628
;				fp->flag &= (BYTE)~FA_DIRTY;
	.line	4629
	clc
	lda	#$10
	adc	<L614+fp_0
	sta	<R0
	lda	#$0
	adc	<L614+fp_0+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	[<R0]
	and	#<$7f
	sta	[<R0]
	rep	#$20
	longa	on
;			}
	.line	4630
;#endif
;			if (disk_read(fs->pdrv, fp->buf, nsect, 1) != RES_OK) ABORT(fs, FR_DISK_ERR);	/* Fill sector cache */
L10332:
	.line	4632
	pea	#<$1
	pei	<L615+nsect_1+2
	pei	<L615+nsect_1
	clc
	lda	#$26
	adc	<L614+fp_0
	sta	<R0
	lda	#$0
	adc	<L614+fp_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$1
	lda	[<L615+fs_1],Y
	pha
	jsl	~~disk_read
	tax
	bne	L650
	brl	L10334
L650:
	.line	4632
	.line	4632
	sep	#$20
	longa	off
	lda	#$1
	ldy	#$11
	sta	[<L614+fp_0],Y
	rep	#$20
	longa	on
	.line	4632
	lda	#$1
	brl	L619
	.line	4632
L10334:
	.line	4632
;#endif
;			fp->sect = nsect;
	.line	4634
	lda	<L615+nsect_1
	ldy	#$1a
	sta	[<L614+fp_0],Y
	lda	<L615+nsect_1+2
	ldy	#$1c
	sta	[<L614+fp_0],Y
;		}
	.line	4635
;	}
L10331:
	.line	4636
;
;	LEAVE_FF(fs, res);
	.line	4638
	lda	<L615+res_1
	brl	L619
;}
	.line	4639
	.endblock	4639
L614	equ	34
L615	equ	13
	ends
	efunc
	.endfunc	4639,13,34
	.line	4639
;
;
;
;#if FF_FS_MINIMIZE <= 1
;/*-----------------------------------------------------------------------*/
;/* Create a Directory Object                                             */
;/*-----------------------------------------------------------------------*/
;
;FRESULT f_opendir (
;	DIR* dp,			/* Pointer to directory object to create */
;	const TCHAR* path	/* Pointer to the directory path */
;)
;{
	.line	4648
	.line	4652
	FFDOS
	xdef	~~f_opendir
	func
	.function	4652
~~f_opendir:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L651
	tcs
	phd
	tcd
dp_0	set	4
path_0	set	8
	.block	4652
;	FRESULT res;
;	FATFS *fs;
;	DEF_NAMBUF
;
;
;	if (!dp) return FR_INVALID_OBJECT;
res_1	set	0
fs_1	set	2
	.sym	res,0,5,1,16
	.sym	fs,2,138,1,32,80
	.sym	dp,4,138,6,32,83
	.sym	path,8,142,6,32
	.line	4658
	lda	<L651+dp_0
	ora	<L651+dp_0+2
	beq	L654
	brl	L10335
L654:
	.line	4658
	lda	#$9
L655:
	tay
	lda	<L651+2
	sta	<L651+2+8
	lda	<L651+1
	sta	<L651+1+8
	pld
	tsc
	clc
	adc	#L651+8
	tcs
	tya
	rtl
;
;	/* Get logical drive */
;	res = mount_volume(&path, &fs, 0);
L10335:
	.line	4661
	pea	#<$0
	pea	#0
	clc
	tdc
	adc	#<L652+fs_1
	pha
	pea	#0
	clc
	tdc
	adc	#<L651+path_0
	pha
	jsl	~~mount_volume
	sta	<L652+res_1
;	if (res == FR_OK) {
	.line	4662
	lda	<L652+res_1
	beq	L656
	brl	L10336
L656:
	.line	4662
;		dp->obj.fs = fs;
	.line	4663
	lda	<L652+fs_1
	sta	[<L651+dp_0]
	lda	<L652+fs_1+2
	ldy	#$2
	sta	[<L651+dp_0],Y
;		INIT_NAMBUF(fs);
	.line	4664
;		res = follow_path(dp, path);			/* Follow the path to the directory */
	.line	4665
	pei	<L651+path_0+2
	pei	<L651+path_0
	pei	<L651+dp_0+2
	pei	<L651+dp_0
	jsl	~~follow_path
	sta	<L652+res_1
;		if (res == FR_OK) {						/* Follow completed */
	.line	4666
	lda	<L652+res_1
	beq	L657
	brl	L10337
L657:
	.line	4666
;			if (!(dp->fn[NSFLAG] & NS_NONAME)) {	/* It is not the origin directory itself */
	.line	4667
	sep	#$20
	longa	off
	ldy	#$2b
	lda	[<L651+dp_0],Y
	and	#<$80
	rep	#$20
	longa	on
	beq	L658
	brl	L10338
L658:
	.line	4667
;				if (dp->obj.attr & AM_DIR) {		/* This object is a sub-directory */
	.line	4668
	sep	#$20
	longa	off
	ldy	#$6
	lda	[<L651+dp_0],Y
	and	#<$10
	rep	#$20
	longa	on
	bne	L659
	brl	L10339
L659:
	.line	4668
;#if FF_FS_EXFAT
;					if (fs->fs_type == FS_EXFAT) {
;						dp->obj.c_scl = dp->obj.sclust;							/* Get containing directory inforamation */
;						dp->obj.c_size = ((DWORD)dp->obj.objsize & 0xFFFFFF00) | dp->obj.stat;
;						dp->obj.c_ofs = dp->blk_ofs;
;						init_alloc_info(fs, &dp->obj);	/* Get object allocation info */
;					} else
;#endif
;					{
	.line	4677
;						dp->obj.sclust = ld_clust(fs, dp->dir);	/* Get object allocation info */
	.line	4678
	ldy	#$1e
	lda	[<L651+dp_0],Y
	pha
	ldy	#$1c
	lda	[<L651+dp_0],Y
	pha
	pei	<L652+fs_1+2
	pei	<L652+fs_1
	jsl	~~ld_clust
	sta	<R0
	stx	<R0+2
	lda	<R0
	ldy	#$8
	sta	[<L651+dp_0],Y
	lda	<R0+2
	ldy	#$a
	sta	[<L651+dp_0],Y
;					}
	.line	4679
;				} else {						/* This object is a file */
	.line	4680
	brl	L10340
L10339:
	.line	4680
;					res = FR_NO_PATH;
	.line	4681
	lda	#$5
	sta	<L652+res_1
;				}
	.line	4682
L10340:
;			}
	.line	4683
;			if (res == FR_OK) {
L10338:
	.line	4684
	lda	<L652+res_1
	beq	L660
	brl	L10341
L660:
	.line	4684
;				dp->obj.id = fs->id;
	.line	4685
	ldy	#$5
	lda	[<L652+fs_1],Y
	ldy	#$4
	sta	[<L651+dp_0],Y
;				res = dir_sdi(dp, 0);			/* Rewind directory */
	.line	4686
	pea	#^$0
	pea	#<$0
	pei	<L651+dp_0+2
	pei	<L651+dp_0
	jsl	~~dir_sdi
	sta	<L652+res_1
;#if FF_FS_LOCK != 0
;				if (res == FR_OK) {
;					if (dp->obj.sclust != 0) {
;						dp->obj.lockid = inc_lock(dp, 0);	/* Lock the sub directory */
;						if (!dp->obj.lockid) res = FR_TOO_MANY_OPEN_FILES;
;					} else {
;						dp->obj.lockid = 0;	/* Root directory need not to be locked */
;					}
;				}
;#endif
;			}
	.line	4697
;		}
L10341:
	.line	4698
;		FREE_NAMBUF();
L10337:
	.line	4699
;		if (res == FR_NO_FILE) res = FR_NO_PATH;
	.line	4700
	lda	<L652+res_1
	cmp	#<$4
	beq	L661
	brl	L10342
L661:
	.line	4700
	lda	#$5
	sta	<L652+res_1
;	}
L10342:
	.line	4701
;	if (res != FR_OK) dp->obj.fs = 0;		/* Invalidate the directory object if function faild */
L10336:
	.line	4702
	lda	<L652+res_1
	bne	L662
	brl	L10343
L662:
	.line	4702
	lda	#$0
	sta	[<L651+dp_0]
	lda	#$0
	ldy	#$2
	sta	[<L651+dp_0],Y
;
;	LEAVE_FF(fs, res);
L10343:
	.line	4704
	lda	<L652+res_1
	brl	L655
;}
	.line	4705
	.endblock	4705
L651	equ	10
L652	equ	5
	ends
	efunc
	.endfunc	4705,5,10
	.line	4705
;
;
;
;
;/*-----------------------------------------------------------------------*/
;/* Close Directory                                                       */
;/*-----------------------------------------------------------------------*/
;
;FRESULT f_closedir (
;	DIR *dp		/* Pointer to the directory object to be closed */
;)
;{
	.line	4714
	.line	4717
	FFDOS
	xdef	~~f_closedir
	func
	.function	4717
~~f_closedir:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L663
	tcs
	phd
	tcd
dp_0	set	4
	.block	4717
;	FRESULT res;
;	FATFS *fs;
;
;
;	res = validate(&dp->obj, &fs);	/* Check validity of the file object */
res_1	set	0
fs_1	set	2
	.sym	res,0,5,1,16
	.sym	fs,2,138,1,32,80
	.sym	dp,4,138,6,32,83
	.line	4722
	pea	#0
	clc
	tdc
	adc	#<L664+fs_1
	pha
	pei	<L663+dp_0+2
	pei	<L663+dp_0
	jsl	~~validate
	sta	<L664+res_1
;	if (res == FR_OK) {
	.line	4723
	lda	<L664+res_1
	beq	L666
	brl	L10344
L666:
	.line	4723
;#if FF_FS_LOCK != 0
;		if (dp->obj.lockid) res = dec_lock(dp->obj.lockid);	/* Decrement sub-directory open counter */
;		if (res == FR_OK) dp->obj.fs = 0;	/* Invalidate directory object */
;#else
;		dp->obj.fs = 0;	/* Invalidate directory object */
	.line	4728
	lda	#$0
	sta	[<L663+dp_0]
	lda	#$0
	ldy	#$2
	sta	[<L663+dp_0],Y
;#endif
;#if FF_FS_REENTRANT
;		unlock_fs(fs, FR_OK);		/* Unlock volume */
;#endif
;	}
	.line	4733
;	return res;
L10344:
	.line	4734
	lda	<L664+res_1
L667:
	tay
	lda	<L663+2
	sta	<L663+2+4
	lda	<L663+1
	sta	<L663+1+4
	pld
	tsc
	clc
	adc	#L663+4
	tcs
	tya
	rtl
;}
	.line	4735
	.endblock	4735
L663	equ	6
L664	equ	1
	ends
	efunc
	.endfunc	4735,1,6
	.line	4735
;
;
;
;
;/*-----------------------------------------------------------------------*/
;/* Read Directory Entries in Sequence                                    */
;/*-----------------------------------------------------------------------*/
;
;FRESULT f_readdir (
;	DIR* dp,			/* Pointer to the open directory object */
;	FILINFO* fno		/* Pointer to file information to return */
;)
;{
	.line	4744
	.line	4748
	FFDOS
	xdef	~~f_readdir
	func
	.function	4748
~~f_readdir:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L668
	tcs
	phd
	tcd
dp_0	set	4
fno_0	set	8
	.block	4748
;	FRESULT res;
;	FATFS *fs;
;	DEF_NAMBUF
;
;
;	res = validate(&dp->obj, &fs);	/* Check validity of the directory object */
res_1	set	0
fs_1	set	2
	.sym	res,0,5,1,16
	.sym	fs,2,138,1,32,80
	.sym	dp,4,138,6,32,83
	.sym	fno,8,138,6,32,84
	.line	4754
	pea	#0
	clc
	tdc
	adc	#<L669+fs_1
	pha
	pei	<L668+dp_0+2
	pei	<L668+dp_0
	jsl	~~validate
	sta	<L669+res_1
;	if (res == FR_OK) {
	.line	4755
	lda	<L669+res_1
	beq	L671
	brl	L10345
L671:
	.line	4755
;		if (!fno) {
	.line	4756
	lda	<L668+fno_0
	ora	<L668+fno_0+2
	beq	L672
	brl	L10346
L672:
	.line	4756
;			res = dir_sdi(dp, 0);			/* Rewind the directory object */
	.line	4757
	pea	#^$0
	pea	#<$0
	pei	<L668+dp_0+2
	pei	<L668+dp_0
	jsl	~~dir_sdi
	sta	<L669+res_1
;		} else {
	.line	4758
	brl	L10347
L10346:
	.line	4758
;			INIT_NAMBUF(fs);
	.line	4759
;			res = DIR_READ_FILE(dp);		/* Read an item */
	.line	4760
	pea	#<$0
	pei	<L668+dp_0+2
	pei	<L668+dp_0
	jsl	~~dir_read
	sta	<L669+res_1
;			if (res == FR_NO_FILE) res = FR_OK;	/* Ignore end of directory */
	.line	4761
	lda	<L669+res_1
	cmp	#<$4
	beq	L673
	brl	L10348
L673:
	.line	4761
	stz	<L669+res_1
;			if (res == FR_OK) {				/* A valid entry is found */
L10348:
	.line	4762
	lda	<L669+res_1
	beq	L674
	brl	L10349
L674:
	.line	4762
;				get_fileinfo(dp, fno);		/* Get the object information */
	.line	4763
	pei	<L668+fno_0+2
	pei	<L668+fno_0
	pei	<L668+dp_0+2
	pei	<L668+dp_0
	jsl	~~get_fileinfo
;				res = dir_next(dp, 0);		/* Increment index for next */
	.line	4764
	pea	#<$0
	pei	<L668+dp_0+2
	pei	<L668+dp_0
	jsl	~~dir_next
	sta	<L669+res_1
;				if (res == FR_NO_FILE) res = FR_OK;	/* Ignore end of directory now */
	.line	4765
	lda	<L669+res_1
	cmp	#<$4
	beq	L675
	brl	L10350
L675:
	.line	4765
	stz	<L669+res_1
;			}
L10350:
	.line	4766
;			FREE_NAMBUF();
L10349:
	.line	4767
;		}
	.line	4768
L10347:
;	}
	.line	4769
;	LEAVE_FF(fs, res);
L10345:
	.line	4770
	lda	<L669+res_1
L676:
	tay
	lda	<L668+2
	sta	<L668+2+8
	lda	<L668+1
	sta	<L668+1+8
	pld
	tsc
	clc
	adc	#L668+8
	tcs
	tya
	rtl
;}
	.line	4771
	.endblock	4771
L668	equ	6
L669	equ	1
	ends
	efunc
	.endfunc	4771,1,6
	.line	4771
;
;
;
;#if FF_USE_FIND
;/*-----------------------------------------------------------------------*/
;/* Find Next File                                                        */
;/*-----------------------------------------------------------------------*/
;
;FRESULT f_findnext (
;	DIR* dp,		/* Pointer to the open directory object */
;	FILINFO* fno	/* Pointer to the file information structure */
;)
;{
;	FRESULT res;
;
;
;	for (;;) {
;		res = f_readdir(dp, fno);		/* Get a directory item */
;		if (res != FR_OK || !fno || !fno->fname[0]) break;	/* Terminate if any error or end of directory */
;		if (pattern_matching(dp->pat, fno->fname, 0, 0)) break;		/* Test for the file name */
;#if FF_USE_LFN && FF_USE_FIND == 2
;		if (pattern_matching(dp->pat, fno->altname, 0, 0)) break;	/* Test for alternative name if exist */
;#endif
;	}
;	return res;
;}
;
;
;
;/*-----------------------------------------------------------------------*/
;/* Find First File                                                       */
;/*-----------------------------------------------------------------------*/
;
;FRESULT f_findfirst (
;	DIR* dp,				/* Pointer to the blank directory object */
;	FILINFO* fno,			/* Pointer to the file information structure */
;	const TCHAR* path,		/* Pointer to the directory to open */
;	const TCHAR* pattern	/* Pointer to the matching pattern */
;)
;{
;	FRESULT res;
;
;
;	dp->pat = pattern;		/* Save pointer to pattern string */
;	res = f_opendir(dp, path);		/* Open the target directory */
;	if (res == FR_OK) {
;		res = f_findnext(dp, fno);	/* Find the first item */
;	}
;	return res;
;}
;
;#endif	/* FF_USE_FIND */
;
;
;
;#if FF_FS_MINIMIZE == 0
;/*-----------------------------------------------------------------------*/
;/* Get File Status                                                       */
;/*-----------------------------------------------------------------------*/
;
;FRESULT f_stat (
;	const TCHAR* path,	/* Pointer to the file path */
;	FILINFO* fno		/* Pointer to file information to return */
;)
;{
	.line	4832
	.line	4836
	FFDOS
	xdef	~~f_stat
	func
	.function	4836
~~f_stat:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L677
	tcs
	phd
	tcd
path_0	set	4
fno_0	set	8
	.block	4836
;	FRESULT res;
;	DIR dj;
;	DEF_NAMBUF
;
;
;	/* Get logical drive */
;	res = mount_volume(&path, &dj.obj.fs, 0);
res_1	set	0
dj_1	set	2
	.sym	res,0,5,1,16
	.sym	dj,2,10,1,352,83
	.sym	path,4,142,6,32
	.sym	fno,8,138,6,32,84
	.line	4843
	pea	#<$0
	pea	#0
	clc
	tdc
	adc	#<L678+dj_1
	pha
	pea	#0
	clc
	tdc
	adc	#<L677+path_0
	pha
	jsl	~~mount_volume
	sta	<L678+res_1
;	if (res == FR_OK) {
	.line	4844
	lda	<L678+res_1
	beq	L680
	brl	L10351
L680:
	.line	4844
;		INIT_NAMBUF(dj.obj.fs);
	.line	4845
;		res = follow_path(&dj, path);	/* Follow the file path */
	.line	4846
	pei	<L677+path_0+2
	pei	<L677+path_0
	pea	#0
	clc
	tdc
	adc	#<L678+dj_1
	pha
	jsl	~~follow_path
	sta	<L678+res_1
;		if (res == FR_OK) {				/* Follow completed */
	.line	4847
	lda	<L678+res_1
	beq	L681
	brl	L10352
L681:
	.line	4847
;			if (dj.fn[NSFLAG] & NS_NONAME) {	/* It is origin directory */
	.line	4848
	sep	#$20
	longa	off
	lda	<L678+dj_1+43
	and	#<$80
	rep	#$20
	longa	on
	bne	L682
	brl	L10353
L682:
	.line	4848
;				res = FR_INVALID_NAME;
	.line	4849
	lda	#$6
	sta	<L678+res_1
;			} else {							/* Found an object */
	.line	4850
	brl	L10354
L10353:
	.line	4850
;				if (fno) get_fileinfo(&dj, fno);
	.line	4851
	lda	<L677+fno_0
	ora	<L677+fno_0+2
	bne	L683
	brl	L10355
L683:
	.line	4851
	pei	<L677+fno_0+2
	pei	<L677+fno_0
	pea	#0
	clc
	tdc
	adc	#<L678+dj_1
	pha
	jsl	~~get_fileinfo
;			}
L10355:
	.line	4852
L10354:
;		}
	.line	4853
;		FREE_NAMBUF();
L10352:
	.line	4854
;	}
	.line	4855
;
;	LEAVE_FF(dj.obj.fs, res);
L10351:
	.line	4857
	lda	<L678+res_1
L684:
	tay
	lda	<L677+2
	sta	<L677+2+8
	lda	<L677+1
	sta	<L677+1+8
	pld
	tsc
	clc
	adc	#L677+8
	tcs
	tya
	rtl
;}
	.line	4858
	.endblock	4858
L677	equ	46
L678	equ	1
	ends
	efunc
	.endfunc	4858,1,46
	.line	4858
;
;
;
;#if !FF_FS_READONLY
;/*-----------------------------------------------------------------------*/
;/* Get Number of Free Clusters                                           */
;/*-----------------------------------------------------------------------*/
;
;FRESULT f_getfree (
;	const TCHAR* path,	/* Logical drive number */
;	DWORD* nclst,		/* Pointer to a variable to return number of free clusters */
;	FATFS** fatfs		/* Pointer to return pointer to corresponding filesystem object */
;)
;{
	.line	4867
	.line	4872
	FFDOS
	xdef	~~f_getfree
	func
	.function	4872
~~f_getfree:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L685
	tcs
	phd
	tcd
path_0	set	4
nclst_0	set	8
fatfs_0	set	12
	.block	4872
;	FRESULT res;
;	FATFS *fs;
;	DWORD nfree, clst, stat;
;	LBA_t sect;
;	UINT i;
;	FFOBJID obj;
;
;
;	/* Get logical drive */
;	res = mount_volume(&path, &fs, 0);
res_1	set	0
fs_1	set	2
nfree_1	set	6
clst_1	set	10
stat_1	set	14
sect_1	set	18
i_1	set	22
obj_1	set	24
	.sym	res,0,5,1,16
	.sym	fs,2,138,1,32,80
	.sym	nfree,6,18,1,32
	.sym	clst,10,18,1,32
	.sym	stat,14,18,1,32
	.sym	sect,18,18,1,32
	.sym	i,22,16,1,16
	.sym	obj,24,10,1,128,81
	.sym	path,4,142,6,32
	.sym	nclst,8,146,6,32
	.sym	fatfs,12,1162,6,32,80
	.line	4882
	pea	#<$0
	pea	#0
	clc
	tdc
	adc	#<L686+fs_1
	pha
	pea	#0
	clc
	tdc
	adc	#<L685+path_0
	pha
	jsl	~~mount_volume
	sta	<L686+res_1
;	if (res == FR_OK) {
	.line	4883
	lda	<L686+res_1
	beq	L688
	brl	L10356
L688:
	.line	4883
;		*fatfs = fs;				/* Return ptr to the fs object */
	.line	4884
	lda	<L686+fs_1
	sta	[<L685+fatfs_0]
	lda	<L686+fs_1+2
	ldy	#$2
	sta	[<L685+fatfs_0],Y
;		/* If free_clst is valid, return it without full FAT scan */
;		if (fs->free_clst <= fs->n_fatent - 2) {
	.line	4886
	clc
	lda	#$fffe
	ldy	#$13
	adc	[<L686+fs_1],Y
	sta	<R0
	lda	#$ffff
	ldy	#$15
	adc	[<L686+fs_1],Y
	sta	<R0+2
	lda	<R0
	ldy	#$f
	cmp	[<L686+fs_1],Y
	lda	<R0+2
	ldy	#$11
	sbc	[<L686+fs_1],Y
	bcs	L689
	brl	L10357
L689:
	.line	4886
;			*nclst = fs->free_clst;
	.line	4887
	ldy	#$f
	lda	[<L686+fs_1],Y
	sta	[<L685+nclst_0]
	ldy	#$11
	lda	[<L686+fs_1],Y
	ldy	#$2
	sta	[<L685+nclst_0],Y
;		} else {
	.line	4888
	brl	L10358
L10357:
	.line	4888
;			/* Scan FAT to obtain number of free clusters */
;			nfree = 0;
	.line	4890
	stz	<L686+nfree_1
	stz	<L686+nfree_1+2
;			if (fs->fs_type == FS_FAT12) {	/* FAT12: Scan bit field FAT entries */
	.line	4891
	sep	#$20
	longa	off
	lda	[<L686+fs_1]
	cmp	#<$1
	rep	#$20
	longa	on
	beq	L690
	brl	L10359
L690:
	.line	4891
;				clst = 2; obj.fs = fs;
	.line	4892
	lda	#$2
	sta	<L686+clst_1
	lda	#$0
	sta	<L686+clst_1+2
	.line	4892
	lda	<L686+fs_1
	sta	<L686+obj_1
	lda	<L686+fs_1+2
	sta	<L686+obj_1+2
;				do {
	.line	4893
L10362:
	.line	4893
;					stat = get_fat(&obj, clst);
	.line	4894
	pei	<L686+clst_1+2
	pei	<L686+clst_1
	pea	#0
	clc
	tdc
	adc	#<L686+obj_1
	pha
	jsl	~~get_fat
	sta	<L686+stat_1
	stx	<L686+stat_1+2
;					if (stat == 0xFFFFFFFF) { res = FR_DISK_ERR; break; }
	.line	4895
	lda	<L686+stat_1
	cmp	#<$ffffffff
	bne	L691
	lda	<L686+stat_1+2
	cmp	#^$ffffffff
L691:
	beq	L692
	brl	L10363
L692:
	.line	4895
	.line	4895
	lda	#$1
	sta	<L686+res_1
	.line	4895
	brl	L10361
	.line	4895
;					if (stat == 1) { res = FR_INT_ERR; break; }
L10363:
	.line	4896
	lda	<L686+stat_1
	cmp	#<$1
	bne	L693
	lda	<L686+stat_1+2
	cmp	#^$1
L693:
	beq	L694
	brl	L10364
L694:
	.line	4896
	.line	4896
	lda	#$2
	sta	<L686+res_1
	.line	4896
	brl	L10361
	.line	4896
;					if (stat == 0) nfree++;
L10364:
	.line	4897
	lda	<L686+stat_1
	ora	<L686+stat_1+2
	beq	L695
	brl	L10365
L695:
	.line	4897
	inc	<L686+nfree_1
	bne	L696
	inc	<L686+nfree_1+2
L696:
;				} while (++clst < fs->n_fatent);
L10365:
	.line	4898
L10360:
	inc	<L686+clst_1
	bne	L697
	inc	<L686+clst_1+2
L697:
	lda	<L686+clst_1
	ldy	#$13
	cmp	[<L686+fs_1],Y
	lda	<L686+clst_1+2
	ldy	#$15
	sbc	[<L686+fs_1],Y
	bcs	L698
	brl	L10362
L698:
L10361:
;			} else {
	.line	4899
	brl	L10366
L10359:
	.line	4899
;#if FF_FS_EXFAT
;				if (fs->fs_type == FS_EXFAT) {	/* exFAT: Scan allocation bitmap */
;					BYTE bm;
;					UINT b;
;
;					clst = fs->n_fatent - 2;	/* Number of clusters */
;					sect = fs->bitbase;			/* Bitmap sector */
;					i = 0;						/* Offset in the sector */
;					do {	/* Counts numbuer of bits with zero in the bitmap */
;						if (i == 0) {
;							res = move_window(fs, sect++);
;							if (res != FR_OK) break;
;						}
;						for (b = 8, bm = fs->win[i]; b && clst; b--, clst--) {
;							if (!(bm & 1)) nfree++;
;							bm >>= 1;
;						}
;						i = (i + 1) % SS(fs);
;					} while (clst);
;				} else
;#endif
;				{	/* FAT16/32: Scan WORD/DWORD FAT entries */
	.line	4921
;					clst = fs->n_fatent;	/* Number of entries */
	.line	4922
	ldy	#$13
	lda	[<L686+fs_1],Y
	sta	<L686+clst_1
	ldy	#$15
	lda	[<L686+fs_1],Y
	sta	<L686+clst_1+2
;					sect = fs->fatbase;		/* Top of the FAT */
	.line	4923
	ldy	#$1f
	lda	[<L686+fs_1],Y
	sta	<L686+sect_1
	ldy	#$21
	lda	[<L686+fs_1],Y
	sta	<L686+sect_1+2
;					i = 0;					/* Offset in the sector */
	.line	4924
	stz	<L686+i_1
;					do {	/* Counts numbuer of entries with zero in the FAT */
	.line	4925
L10369:
	.line	4925
;						if (i == 0) {
	.line	4926
	lda	<L686+i_1
	beq	L699
	brl	L10370
L699:
	.line	4926
;							res = move_window(fs, sect++);
	.line	4927
	lda	<L686+sect_1
	sta	<R0
	lda	<L686+sect_1+2
	sta	<R0+2
	inc	<L686+sect_1
	bne	L700
	inc	<L686+sect_1+2
L700:
	pei	<R0+2
	pei	<R0
	pei	<L686+fs_1+2
	pei	<L686+fs_1
	jsl	~~move_window
	sta	<L686+res_1
;							if (res != FR_OK) break;
	.line	4928
	lda	<L686+res_1
	beq	L701
	brl	L10368
L701:
;						}
	.line	4929
;						if (fs->fs_type == FS_FAT16) {
L10370:
	.line	4930
	sep	#$20
	longa	off
	lda	[<L686+fs_1]
	cmp	#<$2
	rep	#$20
	longa	on
	beq	L702
	brl	L10371
L702:
	.line	4930
;							if (ld_word(fs->win + i) == 0) nfree++;
	.line	4931
	lda	<L686+i_1
	sta	<R0
	stz	<R0+2
	clc
	lda	#$2f
	adc	<R0
	sta	<R1
	lda	#$0
	adc	<R0+2
	sta	<R1+2
	clc
	lda	<L686+fs_1
	adc	<R1
	sta	<R0
	lda	<L686+fs_1+2
	adc	<R1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~ld_word
	tax
	beq	L703
	brl	L10372
L703:
	.line	4931
	inc	<L686+nfree_1
	bne	L704
	inc	<L686+nfree_1+2
L704:
;							i += 2;
L10372:
	.line	4932
	inc	<L686+i_1
	inc	<L686+i_1
;						} else {
	.line	4933
	brl	L10373
L10371:
	.line	4933
;							if ((ld_dword(fs->win + i) & 0x0FFFFFFF) == 0) nfree++;
	.line	4934
	lda	<L686+i_1
	sta	<R0
	stz	<R0+2
	clc
	lda	#$2f
	adc	<R0
	sta	<R1
	lda	#$0
	adc	<R0+2
	sta	<R1+2
	clc
	lda	<L686+fs_1
	adc	<R1
	sta	<R0
	lda	<L686+fs_1+2
	adc	<R1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~ld_dword
	sta	<R2
	stx	<R2+2
	lda	<R2
	sta	<R3
	lda	<R2+2
	and	#^$fffffff
	sta	<R3+2
	lda	<R3
	ora	<R3+2
	beq	L705
	brl	L10374
L705:
	.line	4934
	inc	<L686+nfree_1
	bne	L706
	inc	<L686+nfree_1+2
L706:
;							i += 4;
L10374:
	.line	4935
	clc
	lda	#$4
	adc	<L686+i_1
	sta	<L686+i_1
;						}
	.line	4936
L10373:
;						i %= SS(fs);
	.line	4937
	lda	#$fe00
	trb	<L686+i_1
;					} while (--clst);
	.line	4938
L10367:
	lda	<L686+clst_1
	bne	L707
	dec	<L686+clst_1+2
L707:
	dec	<L686+clst_1
	lda	<L686+clst_1
	ora	<L686+clst_1+2
	beq	L708
	brl	L10369
L708:
L10368:
;				}
	.line	4939
;			}
	.line	4940
L10366:
;			*nclst = nfree;			/* Return the free clusters */
	.line	4941
	lda	<L686+nfree_1
	sta	[<L685+nclst_0]
	lda	<L686+nfree_1+2
	ldy	#$2
	sta	[<L685+nclst_0],Y
;			fs->free_clst = nfree;	/* Now free_clst is valid */
	.line	4942
	lda	<L686+nfree_1
	ldy	#$f
	sta	[<L686+fs_1],Y
	lda	<L686+nfree_1+2
	ldy	#$11
	sta	[<L686+fs_1],Y
;			fs->fsi_flag |= 1;		/* FAT32: FSInfo is to be updated */
	.line	4943
	clc
	lda	#$4
	adc	<L686+fs_1
	sta	<R0
	lda	#$0
	adc	<L686+fs_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	[<R0]
	ora	#<$1
	sta	[<R0]
	rep	#$20
	longa	on
;		}
	.line	4944
L10358:
;	}
	.line	4945
;
;	LEAVE_FF(fs, res);
L10356:
	.line	4947
	lda	<L686+res_1
L709:
	tay
	lda	<L685+2
	sta	<L685+2+12
	lda	<L685+1
	sta	<L685+1+12
	pld
	tsc
	clc
	adc	#L685+12
	tcs
	tya
	rtl
;}
	.line	4948
	.endblock	4948
L685	equ	56
L686	equ	17
	ends
	efunc
	.endfunc	4948,17,56
	.line	4948
;
;
;
;
;/*-----------------------------------------------------------------------*/
;/* Truncate File                                                         */
;/*-----------------------------------------------------------------------*/
;
;FRESULT f_truncate (
;	FIL* fp		/* Pointer to the file object */
;)
;{
	.line	4957
	.line	4960
	FFDOS
	xdef	~~f_truncate
	func
	.function	4960
~~f_truncate:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L710
	tcs
	phd
	tcd
fp_0	set	4
	.block	4960
;	FRESULT res;
;	FATFS *fs;
;	DWORD ncl;
;
;
;	res = validate(&fp->obj, &fs);	/* Check validity of the file object */
res_1	set	0
fs_1	set	2
ncl_1	set	6
	.sym	res,0,5,1,16
	.sym	fs,2,138,1,32,80
	.sym	ncl,6,18,1,32
	.sym	fp,4,138,6,32,82
	.line	4966
	pea	#0
	clc
	tdc
	adc	#<L711+fs_1
	pha
	pei	<L710+fp_0+2
	pei	<L710+fp_0
	jsl	~~validate
	sta	<L711+res_1
;	if (res != FR_OK || (res = (FRESULT)fp->err) != FR_OK) LEAVE_FF(fs, res);
	.line	4967
	lda	<L711+res_1
	beq	L714
	brl	L713
L714:
	ldy	#$11
	lda	[<L710+fp_0],Y
	and	#$ff
	sta	<L711+res_1
	lda	<L711+res_1
	bne	L715
	brl	L10375
L715:
L713:
	.line	4967
	lda	<L711+res_1
L716:
	tay
	lda	<L710+2
	sta	<L710+2+4
	lda	<L710+1
	sta	<L710+1+4
	pld
	tsc
	clc
	adc	#L710+4
	tcs
	tya
	rtl
;	if (!(fp->flag & FA_WRITE)) LEAVE_FF(fs, FR_DENIED);	/* Check access mode */
L10375:
	.line	4968
	sep	#$20
	longa	off
	ldy	#$10
	lda	[<L710+fp_0],Y
	and	#<$2
	rep	#$20
	longa	on
	beq	L717
	brl	L10376
L717:
	.line	4968
	lda	#$7
	brl	L716
;
;	if (fp->fptr < fp->obj.objsize) {	/* Process when fptr is not on the eof */
L10376:
	.line	4970
	ldy	#$12
	lda	[<L710+fp_0],Y
	ldy	#$c
	cmp	[<L710+fp_0],Y
	ldy	#$14
	lda	[<L710+fp_0],Y
	ldy	#$e
	sbc	[<L710+fp_0],Y
	bcc	L718
	brl	L10377
L718:
	.line	4970
;		if (fp->fptr == 0) {	/* When set file size to zero, remove entire cluster chain */
	.line	4971
	ldy	#$12
	lda	[<L710+fp_0],Y
	ldy	#$14
	ora	[<L710+fp_0],Y
	beq	L719
	brl	L10378
L719:
	.line	4971
;			res = remove_chain(&fp->obj, fp->obj.sclust, 0);
	.line	4972
	pea	#^$0
	pea	#<$0
	ldy	#$a
	lda	[<L710+fp_0],Y
	pha
	ldy	#$8
	lda	[<L710+fp_0],Y
	pha
	pei	<L710+fp_0+2
	pei	<L710+fp_0
	jsl	~~remove_chain
	sta	<L711+res_1
;			fp->obj.sclust = 0;
	.line	4973
	lda	#$0
	ldy	#$8
	sta	[<L710+fp_0],Y
	lda	#$0
	ldy	#$a
	sta	[<L710+fp_0],Y
;		} else {				/* When truncate a part of the file, remove remaining clusters */
	.line	4974
	brl	L10379
L10378:
	.line	4974
;			ncl = get_fat(&fp->obj, fp->clust);
	.line	4975
	ldy	#$18
	lda	[<L710+fp_0],Y
	pha
	ldy	#$16
	lda	[<L710+fp_0],Y
	pha
	pei	<L710+fp_0+2
	pei	<L710+fp_0
	jsl	~~get_fat
	sta	<L711+ncl_1
	stx	<L711+ncl_1+2
;			res = FR_OK;
	.line	4976
	stz	<L711+res_1
;			if (ncl == 0xFFFFFFFF) res = FR_DISK_ERR;
	.line	4977
	lda	<L711+ncl_1
	cmp	#<$ffffffff
	bne	L720
	lda	<L711+ncl_1+2
	cmp	#^$ffffffff
L720:
	beq	L721
	brl	L10380
L721:
	.line	4977
	lda	#$1
	sta	<L711+res_1
;			if (ncl == 1) res = FR_INT_ERR;
L10380:
	.line	4978
	lda	<L711+ncl_1
	cmp	#<$1
	bne	L722
	lda	<L711+ncl_1+2
	cmp	#^$1
L722:
	beq	L723
	brl	L10381
L723:
	.line	4978
	lda	#$2
	sta	<L711+res_1
;			if (res == FR_OK && ncl < fs->n_fatent) {
L10381:
	.line	4979
	lda	<L711+res_1
	beq	L724
	brl	L10382
L724:
	lda	<L711+ncl_1
	ldy	#$13
	cmp	[<L711+fs_1],Y
	lda	<L711+ncl_1+2
	ldy	#$15
	sbc	[<L711+fs_1],Y
	bcc	L725
	brl	L10382
L725:
	.line	4979
;				res = remove_chain(&fp->obj, ncl, fp->clust);
	.line	4980
	ldy	#$18
	lda	[<L710+fp_0],Y
	pha
	ldy	#$16
	lda	[<L710+fp_0],Y
	pha
	pei	<L711+ncl_1+2
	pei	<L711+ncl_1
	pei	<L710+fp_0+2
	pei	<L710+fp_0
	jsl	~~remove_chain
	sta	<L711+res_1
;			}
	.line	4981
;		}
L10382:
	.line	4982
L10379:
;		fp->obj.objsize = fp->fptr;	/* Set file size to current read/write point */
	.line	4983
	ldy	#$12
	lda	[<L710+fp_0],Y
	ldy	#$c
	sta	[<L710+fp_0],Y
	ldy	#$14
	lda	[<L710+fp_0],Y
	ldy	#$e
	sta	[<L710+fp_0],Y
;		fp->flag |= FA_MODIFIED;
	.line	4984
	clc
	lda	#$10
	adc	<L710+fp_0
	sta	<R0
	lda	#$0
	adc	<L710+fp_0+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	[<R0]
	ora	#<$40
	sta	[<R0]
	rep	#$20
	longa	on
;#if !FF_FS_TINY
;		if (res == FR_OK && (fp->flag & FA_DIRTY)) {
	.line	4986
	lda	<L711+res_1
	beq	L726
	brl	L10383
L726:
	sep	#$20
	longa	off
	ldy	#$10
	lda	[<L710+fp_0],Y
	and	#<$80
	rep	#$20
	longa	on
	bne	L727
	brl	L10383
L727:
	.line	4986
;			if (disk_write(fs->pdrv, fp->buf, fp->sect, 1) != RES_OK) {
	.line	4987
	pea	#<$1
	ldy	#$1c
	lda	[<L710+fp_0],Y
	pha
	ldy	#$1a
	lda	[<L710+fp_0],Y
	pha
	clc
	lda	#$26
	adc	<L710+fp_0
	sta	<R0
	lda	#$0
	adc	<L710+fp_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$1
	lda	[<L711+fs_1],Y
	pha
	jsl	~~disk_write
	tax
	bne	L728
	brl	L10384
L728:
	.line	4987
;				res = FR_DISK_ERR;
	.line	4988
	lda	#$1
	sta	<L711+res_1
;			} else {
	.line	4989
	brl	L10385
L10384:
	.line	4989
;				fp->flag &= (BYTE)~FA_DIRTY;
	.line	4990
	clc
	lda	#$10
	adc	<L710+fp_0
	sta	<R0
	lda	#$0
	adc	<L710+fp_0+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	[<R0]
	and	#<$7f
	sta	[<R0]
	rep	#$20
	longa	on
;			}
	.line	4991
L10385:
;		}
	.line	4992
;#endif
;		if (res != FR_OK) ABORT(fs, res);
L10383:
	.line	4994
	lda	<L711+res_1
	bne	L729
	brl	L10386
L729:
	.line	4994
	.line	4994
	sep	#$20
	longa	off
	lda	<L711+res_1
	ldy	#$11
	sta	[<L710+fp_0],Y
	rep	#$20
	longa	on
	.line	4994
	lda	<L711+res_1
	brl	L716
	.line	4994
L10386:
	.line	4994
;	}
	.line	4995
;
;	LEAVE_FF(fs, res);
L10377:
	.line	4997
	lda	<L711+res_1
	brl	L716
;}
	.line	4998
	.endblock	4998
L710	equ	14
L711	equ	5
	ends
	efunc
	.endfunc	4998,5,14
	.line	4998
;
;
;
;
;/*-----------------------------------------------------------------------*/
;/* Delete a File/Directory                                               */
;/*-----------------------------------------------------------------------*/
;
;FRESULT f_unlink (
;	const TCHAR* path		/* Pointer to the file or directory path */
;)
;{
	.line	5007
	.line	5010
	FFDOS
	xdef	~~f_unlink
	func
	.function	5010
~~f_unlink:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L730
	tcs
	phd
	tcd
path_0	set	4
	.block	5010
;	FRESULT res;
;	DIR dj, sdj;
;	DWORD dclst = 0;
;	FATFS *fs;
;#if FF_FS_EXFAT
;	FFOBJID obj;
;#endif
;	DEF_NAMBUF
;
;
;	/* Get logical drive */
;	res = mount_volume(&path, &fs, FA_WRITE);
res_1	set	0
dj_1	set	2
sdj_1	set	46
dclst_1	set	90
fs_1	set	94
	.sym	res,0,5,1,16
	.sym	dj,2,10,1,352,83
	.sym	sdj,46,10,1,352,83
	.sym	dclst,90,18,1,32
	.sym	fs,94,138,1,32,80
	.sym	path,4,142,6,32
	stz	<L731+dclst_1
	stz	<L731+dclst_1+2
	.line	5022
	pea	#<$2
	pea	#0
	clc
	tdc
	adc	#<L731+fs_1
	pha
	pea	#0
	clc
	tdc
	adc	#<L730+path_0
	pha
	jsl	~~mount_volume
	sta	<L731+res_1
;	if (res == FR_OK) {
	.line	5023
	lda	<L731+res_1
	beq	L733
	brl	L10387
L733:
	.line	5023
;		dj.obj.fs = fs;
	.line	5024
	lda	<L731+fs_1
	sta	<L731+dj_1
	lda	<L731+fs_1+2
	sta	<L731+dj_1+2
;		INIT_NAMBUF(fs);
	.line	5025
;		res = follow_path(&dj, path);		/* Follow the file path */
	.line	5026
	pei	<L730+path_0+2
	pei	<L730+path_0
	pea	#0
	clc
	tdc
	adc	#<L731+dj_1
	pha
	jsl	~~follow_path
	sta	<L731+res_1
;		if (FF_FS_RPATH && res == FR_OK && (dj.fn[NSFLAG] & NS_DOT)) {
	.line	5027
	brl	L10388
	lda	<L731+res_1
	beq	L734
	brl	L10388
L734:
	sep	#$20
	longa	off
	lda	<L731+dj_1+43
	and	#<$20
	rep	#$20
	longa	on
	bne	L735
	brl	L10388
L735:
	.line	5027
;			res = FR_INVALID_NAME;			/* Cannot remove dot entry */
	.line	5028
	lda	#$6
	sta	<L731+res_1
;		}
	.line	5029
;#if FF_FS_LOCK != 0
;		if (res == FR_OK) res = chk_lock(&dj, 2);	/* Check if it is an open object */
;#endif
;		if (res == FR_OK) {					/* The object is accessible */
L10388:
	.line	5033
	lda	<L731+res_1
	beq	L736
	brl	L10389
L736:
	.line	5033
;			if (dj.fn[NSFLAG] & NS_NONAME) {
	.line	5034
	sep	#$20
	longa	off
	lda	<L731+dj_1+43
	and	#<$80
	rep	#$20
	longa	on
	bne	L737
	brl	L10390
L737:
	.line	5034
;				res = FR_INVALID_NAME;		/* Cannot remove the origin directory */
	.line	5035
	lda	#$6
	sta	<L731+res_1
;			} else {
	.line	5036
	brl	L10391
L10390:
	.line	5036
;				if (dj.obj.attr & AM_RDO) {
	.line	5037
	sep	#$20
	longa	off
	lda	<L731+dj_1+6
	and	#<$1
	rep	#$20
	longa	on
	bne	L738
	brl	L10392
L738:
	.line	5037
;					res = FR_DENIED;		/* Cannot remove R/O object */
	.line	5038
	lda	#$7
	sta	<L731+res_1
;				}
	.line	5039
;			}
L10392:
	.line	5040
L10391:
;			if (res == FR_OK) {
	.line	5041
	lda	<L731+res_1
	beq	L739
	brl	L10393
L739:
	.line	5041
;#if FF_FS_EXFAT
;				obj.fs = fs;
;				if (fs->fs_type == FS_EXFAT) {
;					init_alloc_info(fs, &obj);
;					dclst = obj.sclust;
;				} else
;#endif
;				{
	.line	5049
;					dclst = ld_clust(fs, dj.dir);
	.line	5050
	pei	<L731+dj_1+30
	pei	<L731+dj_1+28
	pei	<L731+fs_1+2
	pei	<L731+fs_1
	jsl	~~ld_clust
	sta	<L731+dclst_1
	stx	<L731+dclst_1+2
;				}
	.line	5051
;				if (dj.obj.attr & AM_DIR) {			/* Is it a sub-directory? */
	.line	5052
	sep	#$20
	longa	off
	lda	<L731+dj_1+6
	and	#<$10
	rep	#$20
	longa	on
	bne	L740
	brl	L10394
L740:
	.line	5052
;#if FF_FS_RPATH != 0
;					if (dclst == fs->cdir) {		 	/* Is it the current directory? */
;						res = FR_DENIED;
;					} else
;#endif
;					{
	.line	5058
;						sdj.obj.fs = fs;				/* Open the sub-directory */
	.line	5059
	lda	<L731+fs_1
	sta	<L731+sdj_1
	lda	<L731+fs_1+2
	sta	<L731+sdj_1+2
;						sdj.obj.sclust = dclst;
	.line	5060
	lda	<L731+dclst_1
	sta	<L731+sdj_1+8
	lda	<L731+dclst_1+2
	sta	<L731+sdj_1+10
;#if FF_FS_EXFAT
;						if (fs->fs_type == FS_EXFAT) {
;							sdj.obj.objsize = obj.objsize;
;							sdj.obj.stat = obj.stat;
;						}
;#endif
;						res = dir_sdi(&sdj, 0);
	.line	5067
	pea	#^$0
	pea	#<$0
	pea	#0
	clc
	tdc
	adc	#<L731+sdj_1
	pha
	jsl	~~dir_sdi
	sta	<L731+res_1
;						if (res == FR_OK) {
	.line	5068
	lda	<L731+res_1
	beq	L741
	brl	L10395
L741:
	.line	5068
;							res = DIR_READ_FILE(&sdj);			/* Test if the directory is empty */
	.line	5069
	pea	#<$0
	pea	#0
	clc
	tdc
	adc	#<L731+sdj_1
	pha
	jsl	~~dir_read
	sta	<L731+res_1
;							if (res == FR_OK) res = FR_DENIED;	/* Not empty? */
	.line	5070
	lda	<L731+res_1
	beq	L742
	brl	L10396
L742:
	.line	5070
	lda	#$7
	sta	<L731+res_1
;							if (res == FR_NO_FILE) res = FR_OK;	/* Empty? */
L10396:
	.line	5071
	lda	<L731+res_1
	cmp	#<$4
	beq	L743
	brl	L10397
L743:
	.line	5071
	stz	<L731+res_1
;						}
L10397:
	.line	5072
;					}
L10395:
	.line	5073
;				}
	.line	5074
;			}
L10394:
	.line	5075
;			if (res == FR_OK) {
L10393:
	.line	5076
	lda	<L731+res_1
	beq	L744
	brl	L10398
L744:
	.line	5076
;				res = dir_remove(&dj);			/* Remove the directory entry */
	.line	5077
	pea	#0
	clc
	tdc
	adc	#<L731+dj_1
	pha
	jsl	~~dir_remove
	sta	<L731+res_1
;				if (res == FR_OK && dclst != 0) {	/* Remove the cluster chain if exist */
	.line	5078
	lda	<L731+res_1
	beq	L745
	brl	L10399
L745:
	lda	<L731+dclst_1
	ora	<L731+dclst_1+2
	bne	L746
	brl	L10399
L746:
	.line	5078
;#if FF_FS_EXFAT
;					res = remove_chain(&obj, dclst, 0);
;#else
;					res = remove_chain(&dj.obj, dclst, 0);
	.line	5082
	pea	#^$0
	pea	#<$0
	pei	<L731+dclst_1+2
	pei	<L731+dclst_1
	pea	#0
	clc
	tdc
	adc	#<L731+dj_1
	pha
	jsl	~~remove_chain
	sta	<L731+res_1
;#endif
;				}
	.line	5084
;				if (res == FR_OK) res = sync_fs(fs);
L10399:
	.line	5085
	lda	<L731+res_1
	beq	L747
	brl	L10400
L747:
	.line	5085
	pei	<L731+fs_1+2
	pei	<L731+fs_1
	jsl	~~sync_fs
	sta	<L731+res_1
;			}
L10400:
	.line	5086
;		}
L10398:
	.line	5087
;		FREE_NAMBUF();
L10389:
	.line	5088
;	}
	.line	5089
;
;	LEAVE_FF(fs, res);
L10387:
	.line	5091
	lda	<L731+res_1
L748:
	tay
	lda	<L730+2
	sta	<L730+2+4
	lda	<L730+1
	sta	<L730+1+4
	pld
	tsc
	clc
	adc	#L730+4
	tcs
	tya
	rtl
;}
	.line	5092
	.endblock	5092
L730	equ	98
L731	equ	1
	ends
	efunc
	.endfunc	5092,1,98
	.line	5092
;
;
;
;
;/*-----------------------------------------------------------------------*/
;/* Create a Directory                                                    */
;/*-----------------------------------------------------------------------*/
;
;FRESULT f_mkdir (
;	const TCHAR* path		/* Pointer to the directory path */
;)
;{
	.line	5101
	.line	5104
	FFDOS
	xdef	~~f_mkdir
	func
	.function	5104
~~f_mkdir:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L749
	tcs
	phd
	tcd
path_0	set	4
	.block	5104
;	FRESULT res;
;	DIR dj;
;	FFOBJID sobj;
;	FATFS *fs;
;	DWORD dcl, pcl, tm;
;	DEF_NAMBUF
;
;
;	res = mount_volume(&path, &fs, FA_WRITE);	/* Get logical drive */
res_1	set	0
dj_1	set	2
sobj_1	set	46
fs_1	set	62
dcl_1	set	66
pcl_1	set	70
tm_1	set	74
	.sym	res,0,5,1,16
	.sym	dj,2,10,1,352,83
	.sym	sobj,46,10,1,128,81
	.sym	fs,62,138,1,32,80
	.sym	dcl,66,18,1,32
	.sym	pcl,70,18,1,32
	.sym	tm,74,18,1,32
	.sym	path,4,142,6,32
	.line	5113
	pea	#<$2
	pea	#0
	clc
	tdc
	adc	#<L750+fs_1
	pha
	pea	#0
	clc
	tdc
	adc	#<L749+path_0
	pha
	jsl	~~mount_volume
	sta	<L750+res_1
;	if (res == FR_OK) {
	.line	5114
	lda	<L750+res_1
	beq	L752
	brl	L10401
L752:
	.line	5114
;		dj.obj.fs = fs;
	.line	5115
	lda	<L750+fs_1
	sta	<L750+dj_1
	lda	<L750+fs_1+2
	sta	<L750+dj_1+2
;		INIT_NAMBUF(fs);
	.line	5116
;		res = follow_path(&dj, path);			/* Follow the file path */
	.line	5117
	pei	<L749+path_0+2
	pei	<L749+path_0
	pea	#0
	clc
	tdc
	adc	#<L750+dj_1
	pha
	jsl	~~follow_path
	sta	<L750+res_1
;		if (res == FR_OK) res = FR_EXIST;		/* Name collision? */
	.line	5118
	lda	<L750+res_1
	beq	L753
	brl	L10402
L753:
	.line	5118
	lda	#$8
	sta	<L750+res_1
;		if (FF_FS_RPATH && res == FR_NO_FILE && (dj.fn[NSFLAG] & NS_DOT)) {	/* Invalid name? */
L10402:
	.line	5119
	brl	L10403
	lda	<L750+res_1
	cmp	#<$4
	beq	L754
	brl	L10403
L754:
	sep	#$20
	longa	off
	lda	<L750+dj_1+43
	and	#<$20
	rep	#$20
	longa	on
	bne	L755
	brl	L10403
L755:
	.line	5119
;			res = FR_INVALID_NAME;
	.line	5120
	lda	#$6
	sta	<L750+res_1
;		}
	.line	5121
;		if (res == FR_NO_FILE) {				/* It is clear to create a new directory */
L10403:
	.line	5122
	lda	<L750+res_1
	cmp	#<$4
	beq	L756
	brl	L10404
L756:
	.line	5122
;			sobj.fs = fs;						/* New object id to create a new chain */
	.line	5123
	lda	<L750+fs_1
	sta	<L750+sobj_1
	lda	<L750+fs_1+2
	sta	<L750+sobj_1+2
;			dcl = create_chain(&sobj, 0);		/* Allocate a cluster for the new directory */
	.line	5124
	pea	#^$0
	pea	#<$0
	pea	#0
	clc
	tdc
	adc	#<L750+sobj_1
	pha
	jsl	~~create_chain
	sta	<L750+dcl_1
	stx	<L750+dcl_1+2
;			res = FR_OK;
	.line	5125
	stz	<L750+res_1
;			if (dcl == 0) res = FR_DENIED;		/* No space to allocate a new cluster? */
	.line	5126
	lda	<L750+dcl_1
	ora	<L750+dcl_1+2
	beq	L757
	brl	L10405
L757:
	.line	5126
	lda	#$7
	sta	<L750+res_1
;			if (dcl == 1) res = FR_INT_ERR;		/* Any insanity? */
L10405:
	.line	5127
	lda	<L750+dcl_1
	cmp	#<$1
	bne	L758
	lda	<L750+dcl_1+2
	cmp	#^$1
L758:
	beq	L759
	brl	L10406
L759:
	.line	5127
	lda	#$2
	sta	<L750+res_1
;			if (dcl == 0xFFFFFFFF) res = FR_DISK_ERR;	/* Disk error? */
L10406:
	.line	5128
	lda	<L750+dcl_1
	cmp	#<$ffffffff
	bne	L760
	lda	<L750+dcl_1+2
	cmp	#^$ffffffff
L760:
	beq	L761
	brl	L10407
L761:
	.line	5128
	lda	#$1
	sta	<L750+res_1
;			tm = GET_FATTIME();
L10407:
	.line	5129
	lda	#$0
	sta	<L750+tm_1
	lda	#$4e21
	sta	<L750+tm_1+2
;			if (res == FR_OK) {
	.line	5130
	lda	<L750+res_1
	beq	L762
	brl	L10408
L762:
	.line	5130
;				res = dir_clear(fs, dcl);		/* Clean up the new table */
	.line	5131
	pei	<L750+dcl_1+2
	pei	<L750+dcl_1
	pei	<L750+fs_1+2
	pei	<L750+fs_1
	jsl	~~dir_clear
	sta	<L750+res_1
;				if (res == FR_OK) {
	.line	5132
	lda	<L750+res_1
	beq	L763
	brl	L10409
L763:
	.line	5132
;					if (!FF_FS_EXFAT || fs->fs_type != FS_EXFAT) {	/* Create dot entries (FAT only) */
	.line	5133
	brl	L764
	sep	#$20
	longa	off
	lda	[<L750+fs_1]
	cmp	#<$4
	rep	#$20
	longa	on
	bne	L765
	brl	L10410
L765:
L764:
	.line	5133
;						mem_set(fs->win + DIR_Name, ' ', 11);	/* Create "." entry */
	.line	5134
	pea	#<$b
	pea	#<$20
	clc
	lda	#$2f
	adc	<L750+fs_1
	sta	<R0
	lda	#$0
	adc	<L750+fs_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~mem_set
;						fs->win[DIR_Name] = '.';
	.line	5135
	sep	#$20
	longa	off
	lda	#$2e
	ldy	#$2f
	sta	[<L750+fs_1],Y
	rep	#$20
	longa	on
;						fs->win[DIR_Attr] = AM_DIR;
	.line	5136
	sep	#$20
	longa	off
	lda	#$10
	ldy	#$3a
	sta	[<L750+fs_1],Y
	rep	#$20
	longa	on
;						st_dword(fs->win + DIR_ModTime, tm);
	.line	5137
	pei	<L750+tm_1+2
	pei	<L750+tm_1
	clc
	lda	#$45
	adc	<L750+fs_1
	sta	<R0
	lda	#$0
	adc	<L750+fs_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~st_dword
;						st_clust(fs, fs->win, dcl);
	.line	5138
	pei	<L750+dcl_1+2
	pei	<L750+dcl_1
	clc
	lda	#$2f
	adc	<L750+fs_1
	sta	<R0
	lda	#$0
	adc	<L750+fs_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pei	<L750+fs_1+2
	pei	<L750+fs_1
	jsl	~~st_clust
;						mem_cpy(fs->win + SZDIRE, fs->win, SZDIRE); /* Create ".." entry */
	.line	5139
	pea	#<$20
	clc
	lda	#$2f
	adc	<L750+fs_1
	sta	<R0
	lda	#$0
	adc	<L750+fs_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	clc
	lda	#$4f
	adc	<L750+fs_1
	sta	<R1
	lda	#$0
	adc	<L750+fs_1+2
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~mem_cpy
;						fs->win[SZDIRE + 1] = '.'; pcl = dj.obj.sclust;
	.line	5140
	sep	#$20
	longa	off
	lda	#$2e
	ldy	#$50
	sta	[<L750+fs_1],Y
	rep	#$20
	longa	on
	.line	5140
	lda	<L750+dj_1+8
	sta	<L750+pcl_1
	lda	<L750+dj_1+10
	sta	<L750+pcl_1+2
;						st_clust(fs, fs->win + SZDIRE, pcl);
	.line	5141
	pei	<L750+pcl_1+2
	pei	<L750+pcl_1
	clc
	lda	#$4f
	adc	<L750+fs_1
	sta	<R0
	lda	#$0
	adc	<L750+fs_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	pei	<L750+fs_1+2
	pei	<L750+fs_1
	jsl	~~st_clust
;						fs->wflag = 1;
	.line	5142
	sep	#$20
	longa	off
	lda	#$1
	ldy	#$3
	sta	[<L750+fs_1],Y
	rep	#$20
	longa	on
;					}
	.line	5143
;					res = dir_register(&dj);	/* Register the object to the parent directoy */
L10410:
	.line	5144
	pea	#0
	clc
	tdc
	adc	#<L750+dj_1
	pha
	jsl	~~dir_register
	sta	<L750+res_1
;				}
	.line	5145
;			}
L10409:
	.line	5146
;			if (res == FR_OK) {
L10408:
	.line	5147
	lda	<L750+res_1
	beq	L766
	brl	L10411
L766:
	.line	5147
;#if FF_FS_EXFAT
;				if (fs->fs_type == FS_EXFAT) {	/* Initialize directory entry block */
;					st_dword(fs->dirbuf + XDIR_ModTime, tm);	/* Created time */
;					st_dword(fs->dirbuf + XDIR_FstClus, dcl);	/* Table start cluster */
;					st_dword(fs->dirbuf + XDIR_FileSize, (DWORD)fs->csize * SS(fs));	/* Directory size needs to be valid */
;					st_dword(fs->dirbuf + XDIR_ValidFileSize, (DWORD)fs->csize * SS(fs));
;					fs->dirbuf[XDIR_GenFlags] = 3;				/* Initialize the object flag */
;					fs->dirbuf[XDIR_Attr] = AM_DIR;				/* Attribute */
;					res = store_xdir(&dj);
;				} else
;#endif
;				{
	.line	5159
;					st_dword(dj.dir + DIR_ModTime, tm);	/* Created time */
	.line	5160
	pei	<L750+tm_1+2
	pei	<L750+tm_1
	clc
	lda	#$16
	adc	<L750+dj_1+28
	sta	<R0
	lda	#$0
	adc	<L750+dj_1+30
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~st_dword
;					st_clust(fs, dj.dir, dcl);			/* Table start cluster */
	.line	5161
	pei	<L750+dcl_1+2
	pei	<L750+dcl_1
	pei	<L750+dj_1+30
	pei	<L750+dj_1+28
	pei	<L750+fs_1+2
	pei	<L750+fs_1
	jsl	~~st_clust
;					dj.dir[DIR_Attr] = AM_DIR;			/* Attribute */
	.line	5162
	sep	#$20
	longa	off
	lda	#$10
	ldy	#$b
	sta	[<L750+dj_1+28],Y
	rep	#$20
	longa	on
;					fs->wflag = 1;
	.line	5163
	sep	#$20
	longa	off
	lda	#$1
	ldy	#$3
	sta	[<L750+fs_1],Y
	rep	#$20
	longa	on
;				}
	.line	5164
;				if (res == FR_OK) {
	.line	5165
	lda	<L750+res_1
	beq	L767
	brl	L10412
L767:
	.line	5165
;					res = sync_fs(fs);
	.line	5166
	pei	<L750+fs_1+2
	pei	<L750+fs_1
	jsl	~~sync_fs
	sta	<L750+res_1
;				}
	.line	5167
;			} else {
L10412:
	.line	5168
	brl	L10413
L10411:
	.line	5168
;				remove_chain(&sobj, dcl, 0);		/* Could not register, remove the allocated cluster */
	.line	5169
	pea	#^$0
	pea	#<$0
	pei	<L750+dcl_1+2
	pei	<L750+dcl_1
	pea	#0
	clc
	tdc
	adc	#<L750+sobj_1
	pha
	jsl	~~remove_chain
;			}
	.line	5170
L10413:
;		}
	.line	5171
;		FREE_NAMBUF();
L10404:
	.line	5172
;	}
	.line	5173
;
;	LEAVE_FF(fs, res);
L10401:
	.line	5175
	lda	<L750+res_1
L768:
	tay
	lda	<L749+2
	sta	<L749+2+4
	lda	<L749+1
	sta	<L749+1+4
	pld
	tsc
	clc
	adc	#L749+4
	tcs
	tya
	rtl
;}
	.line	5176
	.endblock	5176
L749	equ	86
L750	equ	9
	ends
	efunc
	.endfunc	5176,9,86
	.line	5176
;
;
;
;
;/*-----------------------------------------------------------------------*/
;/* Rename a File/Directory                                               */
;/*-----------------------------------------------------------------------*/
;
;FRESULT f_rename (
;	const TCHAR* path_old,	/* Pointer to the object name to be renamed */
;	const TCHAR* path_new	/* Pointer to the new name */
;)
;{
	.line	5185
	.line	5189
	FFDOS
	xdef	~~f_rename
	func
	.function	5189
~~f_rename:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L769
	tcs
	phd
	tcd
path_old_0	set	4
path_new_0	set	8
	.block	5189
;	FRESULT res;
;	DIR djo, djn;
;	FATFS *fs;
;	BYTE buf[FF_FS_EXFAT ? SZDIRE * 2 : SZDIRE], *dir;
;	LBA_t sect;
;	DEF_NAMBUF
;
;
;	get_ldnumber(&path_new);						/* Snip the drive number of new name off */
res_1	set	0
djo_1	set	2
djn_1	set	46
fs_1	set	90
buf_1	set	94
dir_1	set	126
sect_1	set	130
	.sym	res,0,5,1,16
	.sym	djo,2,10,1,352,83
	.sym	djn,46,10,1,352,83
	.sym	fs,90,138,1,32,80
	.sym	buf,94,110,1,0,32
	.sym	dir,126,142,1,32
	.sym	sect,130,18,1,32
	.sym	path_old,4,142,6,32
	.sym	path_new,8,142,6,32
	.line	5198
	pea	#0
	clc
	tdc
	adc	#<L769+path_new_0
	pha
	jsl	~~get_ldnumber
;	res = mount_volume(&path_old, &fs, FA_WRITE);	/* Get logical drive of the old object */
	.line	5199
	pea	#<$2
	pea	#0
	clc
	tdc
	adc	#<L770+fs_1
	pha
	pea	#0
	clc
	tdc
	adc	#<L769+path_old_0
	pha
	jsl	~~mount_volume
	sta	<L770+res_1
;	if (res == FR_OK) {
	.line	5200
	lda	<L770+res_1
	beq	L772
	brl	L10414
L772:
	.line	5200
;		djo.obj.fs = fs;
	.line	5201
	lda	<L770+fs_1
	sta	<L770+djo_1
	lda	<L770+fs_1+2
	sta	<L770+djo_1+2
;		INIT_NAMBUF(fs);
	.line	5202
;		res = follow_path(&djo, path_old);		/* Check old object */
	.line	5203
	pei	<L769+path_old_0+2
	pei	<L769+path_old_0
	pea	#0
	clc
	tdc
	adc	#<L770+djo_1
	pha
	jsl	~~follow_path
	sta	<L770+res_1
;		if (res == FR_OK && (djo.fn[NSFLAG] & (NS_DOT | NS_NONAME))) res = FR_INVALID_NAME;	/* Check validity of name */
	.line	5204
	lda	<L770+res_1
	beq	L773
	brl	L10415
L773:
	sep	#$20
	longa	off
	lda	<L770+djo_1+43
	and	#<$a0
	rep	#$20
	longa	on
	bne	L774
	brl	L10415
L774:
	.line	5204
	lda	#$6
	sta	<L770+res_1
;#if FF_FS_LOCK != 0
;		if (res == FR_OK) {
;			res = chk_lock(&djo, 2);
;		}
;#endif
;		if (res == FR_OK) {						/* Object to be renamed is found */
L10415:
	.line	5210
	lda	<L770+res_1
	beq	L775
	brl	L10416
L775:
	.line	5210
;#if FF_FS_EXFAT
;			if (fs->fs_type == FS_EXFAT) {	/* At exFAT volume */
;				BYTE nf, nn;
;				WORD nh;
;
;				mem_cpy(buf, fs->dirbuf, SZDIRE * 2);	/* Save 85+C0 entry of old object */
;				mem_cpy(&djn, &djo, sizeof djo);
;				res = follow_path(&djn, path_new);		/* Make sure if new object name is not in use */
;				if (res == FR_OK) {						/* Is new name already in use by any other object? */
;					res = (djn.obj.sclust == djo.obj.sclust && djn.dptr == djo.dptr) ? FR_NO_FILE : FR_EXIST;
;				}
;				if (res == FR_NO_FILE) { 				/* It is a valid path and no name collision */
;					res = dir_register(&djn);			/* Register the new entry */
;					if (res == FR_OK) {
;						nf = fs->dirbuf[XDIR_NumSec]; nn = fs->dirbuf[XDIR_NumName];
;						nh = ld_word(fs->dirbuf + XDIR_NameHash);
;						mem_cpy(fs->dirbuf, buf, SZDIRE * 2);	/* Restore 85+C0 entry */
;						fs->dirbuf[XDIR_NumSec] = nf; fs->dirbuf[XDIR_NumName] = nn;
;						st_word(fs->dirbuf + XDIR_NameHash, nh);
;						if (!(fs->dirbuf[XDIR_Attr] & AM_DIR)) fs->dirbuf[XDIR_Attr] |= AM_ARC;	/* Set archive attribute if it is a file */
;/* Start of critical section where an interruption can cause a cross-link */
;						res = store_xdir(&djn);
;					}
;				}
;			} else
;#endif
;			{	/* At FAT/FAT32 volume */
	.line	5237
;				mem_cpy(buf, djo.dir, SZDIRE);			/* Save directory entry of the object */
	.line	5238
	pea	#<$20
	pei	<L770+djo_1+30
	pei	<L770+djo_1+28
	pea	#0
	clc
	tdc
	adc	#<L770+buf_1
	pha
	jsl	~~mem_cpy
;				mem_cpy(&djn, &djo, sizeof (DIR));		/* Duplicate the directory object */
	.line	5239
	pea	#<$2c
	pea	#0
	clc
	tdc
	adc	#<L770+djo_1
	pha
	pea	#0
	clc
	tdc
	adc	#<L770+djn_1
	pha
	jsl	~~mem_cpy
;				res = follow_path(&djn, path_new);		/* Make sure if new object name is not in use */
	.line	5240
	pei	<L769+path_new_0+2
	pei	<L769+path_new_0
	pea	#0
	clc
	tdc
	adc	#<L770+djn_1
	pha
	jsl	~~follow_path
	sta	<L770+res_1
;				if (res == FR_OK) {						/* Is new name already in use by any other object? */
	.line	5241
	lda	<L770+res_1
	beq	L776
	brl	L10417
L776:
	.line	5241
;					res = (djn.obj.sclust == djo.obj.sclust && djn.dptr == djo.dptr) ? FR_NO_FILE : FR_EXIST;
	.line	5242
	lda	<L770+djn_1+8
	cmp	<L770+djo_1+8
	bne	L778
	lda	<L770+djn_1+10
	cmp	<L770+djo_1+10
L778:
	beq	L779
	brl	L777
L779:
	lda	<L770+djn_1+16
	cmp	<L770+djo_1+16
	bne	L780
	lda	<L770+djn_1+18
	cmp	<L770+djo_1+18
L780:
	beq	L781
	brl	L777
L781:
	lda	#$4
	bra	L782
L777:
	lda	#$8
L782:
	sta	<L770+res_1
;				}
	.line	5243
;				if (res == FR_NO_FILE) { 				/* It is a valid path and no name collision */
L10417:
	.line	5244
	lda	<L770+res_1
	cmp	#<$4
	beq	L783
	brl	L10418
L783:
	.line	5244
;					res = dir_register(&djn);			/* Register the new entry */
	.line	5245
	pea	#0
	clc
	tdc
	adc	#<L770+djn_1
	pha
	jsl	~~dir_register
	sta	<L770+res_1
;					if (res == FR_OK) {
	.line	5246
	lda	<L770+res_1
	beq	L784
	brl	L10419
L784:
	.line	5246
;						dir = djn.dir;					/* Copy directory entry of the object except name */
	.line	5247
	lda	<L770+djn_1+28
	sta	<L770+dir_1
	lda	<L770+djn_1+30
	sta	<L770+dir_1+2
;						mem_cpy(dir + 13, buf + 13, SZDIRE - 13);
	.line	5248
	pea	#<$13
	pea	#0
	clc
	tdc
	adc	#<L770+buf_1+13
	pha
	clc
	lda	#$d
	adc	<L770+dir_1
	sta	<R0
	lda	#$0
	adc	<L770+dir_1+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	jsl	~~mem_cpy
;						dir[DIR_Attr] = buf[DIR_Attr];
	.line	5249
	sep	#$20
	longa	off
	lda	<L770+buf_1+11
	ldy	#$b
	sta	[<L770+dir_1],Y
	rep	#$20
	longa	on
;						if (!(dir[DIR_Attr] & AM_DIR)) dir[DIR_Attr] |= AM_ARC;	/* Set archive attribute if it is a file */
	.line	5250
	sep	#$20
	longa	off
	ldy	#$b
	lda	[<L770+dir_1],Y
	and	#<$10
	rep	#$20
	longa	on
	beq	L785
	brl	L10420
L785:
	.line	5250
	clc
	lda	#$b
	adc	<L770+dir_1
	sta	<R0
	lda	#$0
	adc	<L770+dir_1+2
	sta	<R0+2
	sep	#$20
	longa	off
	lda	[<R0]
	ora	#<$20
	sta	[<R0]
	rep	#$20
	longa	on
;						fs->wflag = 1;
L10420:
	.line	5251
	sep	#$20
	longa	off
	lda	#$1
	ldy	#$3
	sta	[<L770+fs_1],Y
	rep	#$20
	longa	on
;						if ((dir[DIR_Attr] & AM_DIR) && djo.obj.sclust != djn.obj.sclust) {	/* Update .. entry in the sub-directory if needed */
	.line	5252
	sep	#$20
	longa	off
	ldy	#$b
	lda	[<L770+dir_1],Y
	and	#<$10
	rep	#$20
	longa	on
	bne	L786
	brl	L10421
L786:
	lda	<L770+djo_1+8
	cmp	<L770+djn_1+8
	bne	L787
	lda	<L770+djo_1+10
	cmp	<L770+djn_1+10
L787:
	bne	L788
	brl	L10421
L788:
	.line	5252
;							sect = clst2sect(fs, ld_clust(fs, dir));
	.line	5253
	pei	<L770+dir_1+2
	pei	<L770+dir_1
	pei	<L770+fs_1+2
	pei	<L770+fs_1
	jsl	~~ld_clust
	sta	<R0
	stx	<R0+2
	phx
	pha
	pei	<L770+fs_1+2
	pei	<L770+fs_1
	jsl	~~clst2sect
	sta	<L770+sect_1
	stx	<L770+sect_1+2
;							if (sect == 0) {
	.line	5254
	lda	<L770+sect_1
	ora	<L770+sect_1+2
	beq	L789
	brl	L10422
L789:
	.line	5254
;								res = FR_INT_ERR;
	.line	5255
	lda	#$2
	sta	<L770+res_1
;							} else {
	.line	5256
	brl	L10423
L10422:
	.line	5256
;/* Start of critical section where an interruption can cause a cross-link */
;								res = move_window(fs, sect);
	.line	5258
	pei	<L770+sect_1+2
	pei	<L770+sect_1
	pei	<L770+fs_1+2
	pei	<L770+fs_1
	jsl	~~move_window
	sta	<L770+res_1
;								dir = fs->win + SZDIRE * 1;	/* Ptr to .. entry */
	.line	5259
	clc
	lda	#$4f
	adc	<L770+fs_1
	sta	<L770+dir_1
	lda	#$0
	adc	<L770+fs_1+2
	sta	<L770+dir_1+2
;								if (res == FR_OK && dir[1] == '.') {
	.line	5260
	lda	<L770+res_1
	beq	L790
	brl	L10424
L790:
	sep	#$20
	longa	off
	ldy	#$1
	lda	[<L770+dir_1],Y
	cmp	#<$2e
	rep	#$20
	longa	on
	beq	L791
	brl	L10424
L791:
	.line	5260
;									st_clust(fs, dir, djn.obj.sclust);
	.line	5261
	pei	<L770+djn_1+10
	pei	<L770+djn_1+8
	pei	<L770+dir_1+2
	pei	<L770+dir_1
	pei	<L770+fs_1+2
	pei	<L770+fs_1
	jsl	~~st_clust
;									fs->wflag = 1;
	.line	5262
	sep	#$20
	longa	off
	lda	#$1
	ldy	#$3
	sta	[<L770+fs_1],Y
	rep	#$20
	longa	on
;								}
	.line	5263
;							}
L10424:
	.line	5264
L10423:
;						}
	.line	5265
;					}
L10421:
	.line	5266
;				}
L10419:
	.line	5267
;			}
L10418:
	.line	5268
;			if (res == FR_OK) {
	.line	5269
	lda	<L770+res_1
	beq	L792
	brl	L10425
L792:
	.line	5269
;				res = dir_remove(&djo);		/* Remove old entry */
	.line	5270
	pea	#0
	clc
	tdc
	adc	#<L770+djo_1
	pha
	jsl	~~dir_remove
	sta	<L770+res_1
;				if (res == FR_OK) {
	.line	5271
	lda	<L770+res_1
	beq	L793
	brl	L10426
L793:
	.line	5271
;					res = sync_fs(fs);
	.line	5272
	pei	<L770+fs_1+2
	pei	<L770+fs_1
	jsl	~~sync_fs
	sta	<L770+res_1
;				}
	.line	5273
;			}
L10426:
	.line	5274
;/* End of the critical section */
;		}
L10425:
	.line	5276
;		FREE_NAMBUF();
L10416:
	.line	5277
;	}
	.line	5278
;
;	LEAVE_FF(fs, res);
L10414:
	.line	5280
	lda	<L770+res_1
L794:
	tay
	lda	<L769+2
	sta	<L769+2+8
	lda	<L769+1
	sta	<L769+1+8
	pld
	tsc
	clc
	adc	#L769+8
	tcs
	tya
	rtl
;}
	.line	5281
	.endblock	5281
L769	equ	138
L770	equ	5
	ends
	efunc
	.endfunc	5281,5,138
	.line	5281
;
;#endif /* !FF_FS_READONLY */
;#endif /* FF_FS_MINIMIZE == 0 */
;#endif /* FF_FS_MINIMIZE <= 1 */
;#endif /* FF_FS_MINIMIZE <= 2 */
;
;
;
;#if FF_USE_CHMOD && !FF_FS_READONLY
;/*-----------------------------------------------------------------------*/
;/* Change Attribute                                                      */
;/*-----------------------------------------------------------------------*/
;
;FRESULT f_chmod (
;	const TCHAR* path,	/* Pointer to the file path */
;	BYTE attr,			/* Attribute bits */
;	BYTE mask			/* Attribute mask to change */
;)
;{
;	FRESULT res;
;	DIR dj;
;	FATFS *fs;
;	DEF_NAMBUF
;
;
;	res = mount_volume(&path, &fs, FA_WRITE);	/* Get logical drive */
;	if (res == FR_OK) {
;		dj.obj.fs = fs;
;		INIT_NAMBUF(fs);
;		res = follow_path(&dj, path);	/* Follow the file path */
;		if (res == FR_OK && (dj.fn[NSFLAG] & (NS_DOT | NS_NONAME))) res = FR_INVALID_NAME;	/* Check object validity */
;		if (res == FR_OK) {
;			mask &= AM_RDO|AM_HID|AM_SYS|AM_ARC;	/* Valid attribute mask */
;#if FF_FS_EXFAT
;			if (fs->fs_type == FS_EXFAT) {
;				fs->dirbuf[XDIR_Attr] = (attr & mask) | (fs->dirbuf[XDIR_Attr] & (BYTE)~mask);	/* Apply attribute change */
;				res = store_xdir(&dj);
;			} else
;#endif
;			{
;				dj.dir[DIR_Attr] = (attr & mask) | (dj.dir[DIR_Attr] & (BYTE)~mask);	/* Apply attribute change */
;				fs->wflag = 1;
;			}
;			if (res == FR_OK) {
;				res = sync_fs(fs);
;			}
;		}
;		FREE_NAMBUF();
;	}
;
;	LEAVE_FF(fs, res);
;}
;
;
;
;
;/*-----------------------------------------------------------------------*/
;/* Change Timestamp                                                      */
;/*-----------------------------------------------------------------------*/
;
;FRESULT f_utime (
;	const TCHAR* path,	/* Pointer to the file/directory name */
;	const FILINFO* fno	/* Pointer to the timestamp to be set */
;)
;{
;	FRESULT res;
;	DIR dj;
;	FATFS *fs;
;	DEF_NAMBUF
;
;
;	res = mount_volume(&path, &fs, FA_WRITE);	/* Get logical drive */
;	if (res == FR_OK) {
;		dj.obj.fs = fs;
;		INIT_NAMBUF(fs);
;		res = follow_path(&dj, path);	/* Follow the file path */
;		if (res == FR_OK && (dj.fn[NSFLAG] & (NS_DOT | NS_NONAME))) res = FR_INVALID_NAME;	/* Check object validity */
;		if (res == FR_OK) {
;#if FF_FS_EXFAT
;			if (fs->fs_type == FS_EXFAT) {
;				st_dword(fs->dirbuf + XDIR_ModTime, (DWORD)fno->fdate << 16 | fno->ftime);
;				res = store_xdir(&dj);
;			} else
;#endif
;			{
;				st_dword(dj.dir + DIR_ModTime, (DWORD)fno->fdate << 16 | fno->ftime);
;				fs->wflag = 1;
;			}
;			if (res == FR_OK) {
;				res = sync_fs(fs);
;			}
;		}
;		FREE_NAMBUF();
;	}
;
;	LEAVE_FF(fs, res);
;}
;
;#endif	/* FF_USE_CHMOD && !FF_FS_READONLY */
;
;
;
;#if FF_USE_LABEL
;/*-----------------------------------------------------------------------*/
;/* Get Volume Label                                                      */
;/*-----------------------------------------------------------------------*/
;
;FRESULT f_getlabel (
;	const TCHAR* path,	/* Logical drive number */
;	TCHAR* label,		/* Buffer to store the volume label */
;	DWORD* vsn			/* Variable to store the volume serial number */
;)
;{
;	FRESULT res;
;	DIR dj;
;	FATFS *fs;
;	UINT si, di;
;	WCHAR wc;
;
;	/* Get logical drive */
;	res = mount_volume(&path, &fs, 0);
;
;	/* Get volume label */
;	if (res == FR_OK && label) {
;		dj.obj.fs = fs; dj.obj.sclust = 0;	/* Open root directory */
;		res = dir_sdi(&dj, 0);
;		if (res == FR_OK) {
;		 	res = DIR_READ_LABEL(&dj);		/* Find a volume label entry */
;		 	if (res == FR_OK) {
;#if FF_FS_EXFAT
;				if (fs->fs_type == FS_EXFAT) {
;					WCHAR hs;
;
;					for (si = di = hs = 0; si < dj.dir[XDIR_NumLabel]; si++) {	/* Extract volume label from 83 entry */
;						wc = ld_word(dj.dir + XDIR_Label + si * 2);
;						if (hs == 0 && IsSurrogate(wc)) {	/* Is the code a surrogate? */
;							hs = wc; continue;
;						}
;						wc = put_utf((DWORD)hs << 16 | wc, &label[di], 4);
;						if (wc == 0) { di = 0; break; }
;						di += wc;
;						hs = 0;
;					}
;					if (hs != 0) di = 0;	/* Broken surrogate pair? */
;					label[di] = 0;
;				} else
;#endif
;				{
;					si = di = 0;		/* Extract volume label from AM_VOL entry */
;					while (si < 11) {
;						wc = dj.dir[si++];
;#if FF_USE_LFN && FF_LFN_UNICODE >= 1 	/* Unicode output */
;						if (dbc_1st((BYTE)wc) && si < 11) wc = wc << 8 | dj.dir[si++];	/* Is it a DBC? */
;						wc = ff_oem2uni(wc, CODEPAGE);					/* Convert it into Unicode */
;						if (wc != 0) wc = put_utf(wc, &label[di], 4);	/* Put it in Unicode */
;						if (wc == 0) { di = 0; break; }
;						di += wc;
;#else									/* ANSI/OEM output */
;						label[di++] = (TCHAR)wc;
;#endif
;					}
;					do {				/* Truncate trailing spaces */
;						label[di] = 0;
;						if (di == 0) break;
;					} while (label[--di] == ' ');
;				}
;			}
;		}
;		if (res == FR_NO_FILE) {	/* No label entry and return nul string */
;			label[0] = 0;
;			res = FR_OK;
;		}
;	}
;
;	/* Get volume serial number */
;	if (res == FR_OK && vsn) {
;		res = move_window(fs, fs->volbase);
;		if (res == FR_OK) {
;			switch (fs->fs_type) {
;			case FS_EXFAT:
;				di = BPB_VolIDEx; break;
;
;			case FS_FAT32:
;				di = BS_VolID32; break;
;
;			default:
;				di = BS_VolID;
;			}
;			*vsn = ld_dword(fs->win + di);
;		}
;	}
;
;	LEAVE_FF(fs, res);
;}
;
;
;
;#if !FF_FS_READONLY
;/*-----------------------------------------------------------------------*/
;/* Set Volume Label                                                      */
;/*-----------------------------------------------------------------------*/
;
;FRESULT f_setlabel (
;	const TCHAR* label	/* Volume label to set with heading logical drive number */
;)
;{
;	FRESULT res;
;	DIR dj;
;	FATFS *fs;
;	BYTE dirvn[22];
;	UINT di;
;	WCHAR wc;
;	static const char badchr[] = "+.,;=[]/\\\"*:<>\?|\x7F";	/* [0..] for FAT, [7..] for exFAT */
;#if FF_USE_LFN
;	DWORD dc;
;#endif
;
;	/* Get logical drive */
;	res = mount_volume(&label, &fs, FA_WRITE);
;	if (res != FR_OK) LEAVE_FF(fs, res);
;
;#if FF_FS_EXFAT
;	if (fs->fs_type == FS_EXFAT) {	/* On the exFAT volume */
;		mem_set(dirvn, 0, 22);
;		di = 0;
;		while ((UINT)*label >= ' ') {	/* Create volume label */
;			dc = tchar2uni(&label);	/* Get a Unicode character */
;			if (dc >= 0x10000) {
;				if (dc == 0xFFFFFFFF || di >= 10) {	/* Wrong surrogate or buffer overflow */
;					dc = 0;
;				} else {
;					st_word(dirvn + di * 2, (WCHAR)(dc >> 16)); di++;
;				}
;			}
;			if (dc == 0 || chk_chr(badchr + 7, (int)dc) || di >= 11) {	/* Check validity of the volume label */
;				LEAVE_FF(fs, FR_INVALID_NAME);
;			}
;			st_word(dirvn + di * 2, (WCHAR)dc); di++;
;		}
;	} else
;#endif
;	{	/* On the FAT/FAT32 volume */
;		mem_set(dirvn, ' ', 11);
;		di = 0;
;		while ((UINT)*label >= ' ') {	/* Create volume label */
;#if FF_USE_LFN
;			dc = tchar2uni(&label);
;			wc = (dc < 0x10000) ? ff_uni2oem(ff_wtoupper(dc), CODEPAGE) : 0;
;#else									/* ANSI/OEM input */
;			wc = (BYTE)*label++;
;			if (dbc_1st((BYTE)wc)) wc = dbc_2nd((BYTE)*label) ? wc << 8 | (BYTE)*label++ : 0;
;			if (IsLower(wc)) wc -= 0x20;		/* To upper ASCII characters */
;#if FF_CODE_PAGE == 0
;			if (ExCvt && wc >= 0x80) wc = ExCvt[wc - 0x80];	/* To upper extended characters (SBCS cfg) */
;#elif FF_CODE_PAGE < 900
;			if (wc >= 0x80) wc = ExCvt[wc - 0x80];	/* To upper extended characters (SBCS cfg) */
;#endif
;#endif
;			if (wc == 0 || chk_chr(badchr + 0, (int)wc) || di >= (UINT)((wc >= 0x100) ? 10 : 11)) {	/* Reject invalid characters for volume label */
;				LEAVE_FF(fs, FR_INVALID_NAME);
;			}
;			if (wc >= 0x100) dirvn[di++] = (BYTE)(wc >> 8);
;			dirvn[di++] = (BYTE)wc;
;		}
;		if (dirvn[0] == DDEM) LEAVE_FF(fs, FR_INVALID_NAME);	/* Reject illegal name (heading DDEM) */
;		while (di && dirvn[di - 1] == ' ') di--;				/* Snip trailing spaces */
;	}
;
;	/* Set volume label */
;	dj.obj.fs = fs; dj.obj.sclust = 0;	/* Open root directory */
;	res = dir_sdi(&dj, 0);
;	if (res == FR_OK) {
;		res = DIR_READ_LABEL(&dj);	/* Get volume label entry */
;		if (res == FR_OK) {
;			if (FF_FS_EXFAT && fs->fs_type == FS_EXFAT) {
;				dj.dir[XDIR_NumLabel] = (BYTE)di;	/* Change the volume label */
;				mem_cpy(dj.dir + XDIR_Label, dirvn, 22);
;			} else {
;				if (di != 0) {
;					mem_cpy(dj.dir, dirvn, 11);	/* Change the volume label */
;				} else {
;					dj.dir[DIR_Name] = DDEM;	/* Remove the volume label */
;				}
;			}
;			fs->wflag = 1;
;			res = sync_fs(fs);
;		} else {			/* No volume label entry or an error */
;			if (res == FR_NO_FILE) {
;				res = FR_OK;
;				if (di != 0) {	/* Create a volume label entry */
;					res = dir_alloc(&dj, 1);	/* Allocate an entry */
;					if (res == FR_OK) {
;						mem_set(dj.dir, 0, SZDIRE);	/* Clean the entry */
;						if (FF_FS_EXFAT && fs->fs_type == FS_EXFAT) {
;							dj.dir[XDIR_Type] = ET_VLABEL;	/* Create volume label entry */
;							dj.dir[XDIR_NumLabel] = (BYTE)di;
;							mem_cpy(dj.dir + XDIR_Label, dirvn, 22);
;						} else {
;							dj.dir[DIR_Attr] = AM_VOL;		/* Create volume label entry */
;							mem_cpy(dj.dir, dirvn, 11);
;						}
;						fs->wflag = 1;
;						res = sync_fs(fs);
;					}
;				}
;			}
;		}
;	}
;
;	LEAVE_FF(fs, res);
;}
;
;#endif /* !FF_FS_READONLY */
;#endif /* FF_USE_LABEL */
;
;
;
;#if FF_USE_EXPAND && !FF_FS_READONLY
;/*-----------------------------------------------------------------------*/
;/* Allocate a Contiguous Blocks to the File                              */
;/*-----------------------------------------------------------------------*/
;
;FRESULT f_expand (
;	FIL* fp,		/* Pointer to the file object */
;	FSIZE_t fsz,	/* File size to be expanded to */
;	BYTE opt		/* Operation mode 0:Find and prepare or 1:Find and allocate */
;)
;{
;	FRESULT res;
;	FATFS *fs;
;	DWORD n, clst, stcl, scl, ncl, tcl, lclst;
;
;
;	res = validate(&fp->obj, &fs);		/* Check validity of the file object */
;	if (res != FR_OK || (res = (FRESULT)fp->err) != FR_OK) LEAVE_FF(fs, res);
;	if (fsz == 0 || fp->obj.objsize != 0 || !(fp->flag & FA_WRITE)) LEAVE_FF(fs, FR_DENIED);
;#if FF_FS_EXFAT
;	if (fs->fs_type != FS_EXFAT && fsz >= 0x100000000) LEAVE_FF(fs, FR_DENIED);	/* Check if in size limit */
;#endif
;	n = (DWORD)fs->csize * SS(fs);	/* Cluster size */
;	tcl = (DWORD)(fsz / n) + ((fsz & (n - 1)) ? 1 : 0);	/* Number of clusters required */
;	stcl = fs->last_clst; lclst = 0;
;	if (stcl < 2 || stcl >= fs->n_fatent) stcl = 2;
;
;#if FF_FS_EXFAT
;	if (fs->fs_type == FS_EXFAT) {
;		scl = find_bitmap(fs, stcl, tcl);			/* Find a contiguous cluster block */
;		if (scl == 0) res = FR_DENIED;				/* No contiguous cluster block was found */
;		if (scl == 0xFFFFFFFF) res = FR_DISK_ERR;
;		if (res == FR_OK) {	/* A contiguous free area is found */
;			if (opt) {		/* Allocate it now */
;				res = change_bitmap(fs, scl, tcl, 1);	/* Mark the cluster block 'in use' */
;				lclst = scl + tcl - 1;
;			} else {		/* Set it as suggested point for next allocation */
;				lclst = scl - 1;
;			}
;		}
;	} else
;#endif
;	{
;		scl = clst = stcl; ncl = 0;
;		for (;;) {	/* Find a contiguous cluster block */
;			n = get_fat(&fp->obj, clst);
;			if (++clst >= fs->n_fatent) clst = 2;
;			if (n == 1) { res = FR_INT_ERR; break; }
;			if (n == 0xFFFFFFFF) { res = FR_DISK_ERR; break; }
;			if (n == 0) {	/* Is it a free cluster? */
;				if (++ncl == tcl) break;	/* Break if a contiguous cluster block is found */
;			} else {
;				scl = clst; ncl = 0;		/* Not a free cluster */
;			}
;			if (clst == stcl) { res = FR_DENIED; break; }	/* No contiguous cluster? */
;		}
;		if (res == FR_OK) {	/* A contiguous free area is found */
;			if (opt) {		/* Allocate it now */
;				for (clst = scl, n = tcl; n; clst++, n--) {	/* Create a cluster chain on the FAT */
;					res = put_fat(fs, clst, (n == 1) ? 0xFFFFFFFF : clst + 1);
;					if (res != FR_OK) break;
;					lclst = clst;
;				}
;			} else {		/* Set it as suggested point for next allocation */
;				lclst = scl - 1;
;			}
;		}
;	}
;
;	if (res == FR_OK) {
;		fs->last_clst = lclst;		/* Set suggested start cluster to start next */
;		if (opt) {	/* Is it allocated now? */
;			fp->obj.sclust = scl;		/* Update object allocation information */
;			fp->obj.objsize = fsz;
;			if (FF_FS_EXFAT) fp->obj.stat = 2;	/* Set status 'contiguous chain' */
;			fp->flag |= FA_MODIFIED;
;			if (fs->free_clst <= fs->n_fatent - 2) {	/* Update FSINFO */
;				fs->free_clst -= tcl;
;				fs->fsi_flag |= 1;
;			}
;		}
;	}
;
;	LEAVE_FF(fs, res);
;}
;
;#endif /* FF_USE_EXPAND && !FF_FS_READONLY */
;
;
;
;#if FF_USE_FORWARD
;/*-----------------------------------------------------------------------*/
;/* Forward Data to the Stream Directly                                   */
;/*-----------------------------------------------------------------------*/
;
;FRESULT f_forward (
;	FIL* fp, 						/* Pointer to the file object */
;	UINT (*func)(const BYTE*,UINT),	/* Pointer to the streaming function */
;	UINT btf,						/* Number of bytes to forward */
;	UINT* bf						/* Pointer to number of bytes forwarded */
;)
;{
;	FRESULT res;
;	FATFS *fs;
;	DWORD clst;
;	LBA_t sect;
;	FSIZE_t remain;
;	UINT rcnt, csect;
;	BYTE *dbuf;
;
;
;	*bf = 0;	/* Clear transfer byte counter */
;	res = validate(&fp->obj, &fs);		/* Check validity of the file object */
;	if (res != FR_OK || (res = (FRESULT)fp->err) != FR_OK) LEAVE_FF(fs, res);
;	if (!(fp->flag & FA_READ)) LEAVE_FF(fs, FR_DENIED);	/* Check access mode */
;
;	remain = fp->obj.objsize - fp->fptr;
;	if (btf > remain) btf = (UINT)remain;			/* Truncate btf by remaining bytes */
;
;	for ( ;  btf && (*func)(0, 0);					/* Repeat until all data transferred or stream goes busy */
;		fp->fptr += rcnt, *bf += rcnt, btf -= rcnt) {
;		csect = (UINT)(fp->fptr / SS(fs) & (fs->csize - 1));	/* Sector offset in the cluster */
;		if (fp->fptr % SS(fs) == 0) {				/* On the sector boundary? */
;			if (csect == 0) {						/* On the cluster boundary? */
;				clst = (fp->fptr == 0) ?			/* On the top of the file? */
;					fp->obj.sclust : get_fat(&fp->obj, fp->clust);
;				if (clst <= 1) ABORT(fs, FR_INT_ERR);
;				if (clst == 0xFFFFFFFF) ABORT(fs, FR_DISK_ERR);
;				fp->clust = clst;					/* Update current cluster */
;			}
;		}
;		sect = clst2sect(fs, fp->clust);			/* Get current data sector */
;		if (sect == 0) ABORT(fs, FR_INT_ERR);
;		sect += csect;
;#if FF_FS_TINY
;		if (move_window(fs, sect) != FR_OK) ABORT(fs, FR_DISK_ERR);	/* Move sector window to the file data */
;		dbuf = fs->win;
;#else
;		if (fp->sect != sect) {		/* Fill sector cache with file data */
;#if !FF_FS_READONLY
;			if (fp->flag & FA_DIRTY) {		/* Write-back dirty sector cache */
;				if (disk_write(fs->pdrv, fp->buf, fp->sect, 1) != RES_OK) ABORT(fs, FR_DISK_ERR);
;				fp->flag &= (BYTE)~FA_DIRTY;
;			}
;#endif
;			if (disk_read(fs->pdrv, fp->buf, sect, 1) != RES_OK) ABORT(fs, FR_DISK_ERR);
;		}
;		dbuf = fp->buf;
;#endif
;		fp->sect = sect;
;		rcnt = SS(fs) - (UINT)fp->fptr % SS(fs);	/* Number of bytes remains in the sector */
;		if (rcnt > btf) rcnt = btf;					/* Clip it by btr if needed */
;		rcnt = (*func)(dbuf + ((UINT)fp->fptr % SS(fs)), rcnt);	/* Forward the file data */
;		if (rcnt == 0) ABORT(fs, FR_INT_ERR);
;	}
;
;	LEAVE_FF(fs, FR_OK);
;}
;#endif /* FF_USE_FORWARD */
;
;
;
;#if !FF_FS_READONLY && FF_USE_MKFS
;/*-----------------------------------------------------------------------*/
;/* Create an FAT/exFAT volume                                            */
;/*-----------------------------------------------------------------------*/
;
;#define N_SEC_TRACK 63			/* Sectors per track for determination of drive CHS */
;#define	GPT_ALIGN	0x100000	/* Alignment of partitions in GPT [byte] (>=128KB) */
;#define GPT_ITEMS	128			/* Number of GPT table size (>=128, sector aligned) */
;
;
;/* Create partitions on the physical drive */
;
;static FRESULT create_partition (
;	BYTE drv,			/* Physical drive number */
;	const LBA_t plst[],	/* Partition list */
;	UINT sys,			/* System ID (for only MBR, temp setting) and bit8:GPT */
;	BYTE* buf			/* Working buffer for a sector */
;)
;{
;	UINT i, cy;
;	LBA_t sz_drv;
;	DWORD sz_drv32, s_lba32, n_lba32;
;	BYTE *pte, hd, n_hd, sc, n_sc;
;
;	/* Get drive size */
;	if (disk_ioctl(drv, GET_SECTOR_COUNT, &sz_drv) != RES_OK) return FR_DISK_ERR;
;
;#if FF_LBA64
;	if (sz_drv >= FF_MIN_GPT) {	/* Create partitions in GPT */
;		WORD ss;
;		UINT sz_pt, pi, si, ofs;
;		DWORD bcc, rnd, align;
;		QWORD s_lba64, n_lba64, sz_pool, s_bpt;
;		static const BYTE gpt_mbr[16] = {0x00, 0x00, 0x02, 0x00, 0xEE, 0xFE, 0xFF, 0x00, 0x01, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF};
;
;#if FF_MAX_SS != FF_MIN_SS
;		if (disk_ioctl(drv, GET_SECTOR_SIZE, &ss) != RES_OK) return FR_DISK_ERR;	/* Get sector size */
;		if (ss > FF_MAX_SS || ss < FF_MIN_SS || (ss & (ss - 1))) return FR_DISK_ERR;
;#else
;		ss = FF_MAX_SS;
;#endif
;		rnd = GET_FATTIME();			/* Random seed */
;		align = GPT_ALIGN / ss;			/* Partition alignment [sector] */
;		sz_pt = GPT_ITEMS * SZ_GPTE / ss;	/* Size of PT [sector] */
;		s_bpt = sz_drv - sz_pt - 1;		/* Backup PT start sector */
;		s_lba64 = 2 + sz_pt;			/* First allocatable sector */
;		sz_pool = s_bpt - s_lba64;		/* Size of allocatable area */
;		bcc = 0xFFFFFFFF; n_lba64 = 1;
;		pi = si = 0;	/* partition table index, size table index */
;		do {
;			if (pi * SZ_GPTE % ss == 0) mem_set(buf, 0, ss);	/* Clean the buffer if needed */
;			if (n_lba64 != 0) {	/* Is the size table not termintated? */
;				s_lba64 = (s_lba64 + align - 1) & ((QWORD)0 - align);	/* Align partition start */
;				n_lba64 = plst[si++];	/* Get a partition size */
;				if (n_lba64 <= 100) {	/* Is the size in percentage? */
;					n_lba64 = sz_pool * n_lba64 / 100;
;					n_lba64 = (n_lba64 + align - 1) & ((QWORD)0 - align);	/* Align partition end (only if in percentage) */
;				}
;				if (s_lba64 + n_lba64 > s_bpt) {	/* Clip at end of the pool */
;					n_lba64 = (s_lba64 < s_bpt) ? s_bpt - s_lba64 : 0;
;				}
;			}
;			if (n_lba64 != 0) {		/* Add a partition? */
;				ofs = pi * SZ_GPTE % ss;
;				mem_cpy(buf + ofs + GPTE_PtGuid, GUID_MS_Basic, 16);	/* Partition GUID (Microsoft Basic Data) */
;				rnd = make_rand(rnd, buf + ofs + GPTE_UpGuid, 16);		/* Unique partition GUID */
;				st_qword(buf + ofs + GPTE_FstLba, s_lba64);				/* Partition start LBA */
;				st_qword(buf + ofs + GPTE_LstLba, s_lba64 + n_lba64 - 1);	/* Partition end LBA */
;				s_lba64 += n_lba64;		/* Next partition LBA */
;			}
;			if ((pi + 1) * SZ_GPTE % ss == 0) {		/* Write the buffer if it is filled up */
;				for (i = 0; i < ss; bcc = crc32(bcc, buf[i++])) ;	/* Calculate table check sum */
;				if (disk_write(drv, buf, 2 + pi * SZ_GPTE / ss, 1) != RES_OK) return FR_DISK_ERR;		/* Primary table */
;				if (disk_write(drv, buf, s_bpt + pi * SZ_GPTE / ss, 1) != RES_OK) return FR_DISK_ERR;	/* Secondary table */
;			}
;		} while (++pi < GPT_ITEMS);
;
;		/* Create primary GPT header */
;		mem_set(buf, 0, ss);
;		mem_cpy(buf + GPTH_Sign, "EFI PART" "\0\0\1\0" "\x5C\0\0", 16);	/* Signature, version (1.0) and size (92) */
;		st_dword(buf + GPTH_PtBcc, ~bcc);				/* Table check sum */
;		st_qword(buf + GPTH_CurLba, 1);					/* LBA of this header */
;		st_qword(buf + GPTH_BakLba, sz_drv - 1);		/* LBA of another header */
;		st_qword(buf + GPTH_FstLba, 2 + sz_pt);			/* LBA of first allocatable sector */
;		st_qword(buf + GPTH_LstLba, s_bpt - 1);			/* LBA of last allocatable sector */
;		st_dword(buf + GPTH_PteSize, SZ_GPTE);			/* Size of a table entry */
;		st_dword(buf + GPTH_PtNum, GPT_ITEMS);			/* Number of table entries */
;		st_dword(buf + GPTH_PtOfs, 2);					/* LBA of this table */
;		rnd = make_rand(rnd, buf + GPTH_DskGuid, 16);	/* Disk GUID */
;		for (i = 0, bcc= 0xFFFFFFFF; i < 92; bcc = crc32(bcc, buf[i++])) ;	/* Calculate header check sum */
;		st_dword(buf + GPTH_Bcc, ~bcc);					/* Header check sum */
;		if (disk_write(drv, buf, 1, 1) != RES_OK) return FR_DISK_ERR;
;
;		/* Create secondary GPT header */
;		st_qword(buf + GPTH_CurLba, sz_drv - 1);		/* LBA of this header */
;		st_qword(buf + GPTH_BakLba, 1);					/* LBA of another header */
;		st_qword(buf + GPTH_PtOfs, s_bpt);				/* LBA of this table */
;		st_dword(buf + GPTH_Bcc, 0);
;		for (i = 0, bcc= 0xFFFFFFFF; i < 92; bcc = crc32(bcc, buf[i++])) ;	/* Calculate header check sum */
;		st_dword(buf + GPTH_Bcc, ~bcc);					/* Header check sum */
;		if (disk_write(drv, buf, sz_drv - 1, 1) != RES_OK) return FR_DISK_ERR;
;
;		/* Create protective MBR */
;		mem_set(buf, 0, ss);
;		mem_cpy(buf + MBR_Table, gpt_mbr, 16);			/* Create a GPT partition */
;		st_word(buf + BS_55AA, 0xAA55);
;		if (disk_write(drv, buf, 0, 1) != RES_OK) return FR_DISK_ERR;
;
;	} else
;#endif
;	{					/* Create partitions in MBR */
;		sz_drv32 = (DWORD)sz_drv;
;		n_sc = N_SEC_TRACK;		/* Determine drive CHS without any consideration of the drive geometry */
;		for (n_hd = 8; n_hd != 0 && sz_drv32 / n_hd / n_sc > 1024; n_hd *= 2) ;
;		if (n_hd == 0) n_hd = 255;	/* Number of heads needs to be <256 */
;
;		mem_set(buf, 0, FF_MAX_SS);	/* Clear MBR */
;		pte = buf + MBR_Table;	/* Partition table in the MBR */
;		for (i = 0, s_lba32 = n_sc; i < 4 && s_lba32 != 0 && s_lba32 < sz_drv32; i++, s_lba32 += n_lba32) {
;			n_lba32 = (DWORD)plst[i];	/* Get partition size */
;			if (n_lba32 <= 100) n_lba32 = (n_lba32 == 100) ? sz_drv32 : sz_drv32 / 100 * n_lba32;	/* Size in percentage? */
;			if (s_lba32 + n_lba32 > sz_drv32 || s_lba32 + n_lba32 < s_lba32) n_lba32 = sz_drv32 - s_lba32;	/* Clip at drive size */
;			if (n_lba32 == 0) break;	/* End of table or no sector to allocate? */
;
;			st_dword(pte + PTE_StLba, s_lba32);		/* Start LBA */
;			st_dword(pte + PTE_SizLba, n_lba32);	/* Number of sectors */
;			pte[PTE_System] = (BYTE)sys;			/* System type */
;
;			cy = (UINT)(s_lba32 / n_sc / n_hd);		/* Start cylinder */
;			hd = (BYTE)(s_lba32 / n_sc % n_hd);		/* Start head */
;			sc = (BYTE)(s_lba32 % n_sc + 1);		/* Start sector */
;			pte[PTE_StHead] = hd;
;			pte[PTE_StSec] = (BYTE)((cy >> 2 & 0xC0) | sc);
;			pte[PTE_StCyl] = (BYTE)cy;
;
;			cy = (UINT)((s_lba32 + n_lba32 - 1) / n_sc / n_hd);	/* End cylinder */
;			hd = (BYTE)((s_lba32 + n_lba32 - 1) / n_sc % n_hd);	/* End head */
;			sc = (BYTE)((s_lba32 + n_lba32 - 1) % n_sc + 1);	/* End sector */
;			pte[PTE_EdHead] = hd;
;			pte[PTE_EdSec] = (BYTE)((cy >> 2 & 0xC0) | sc);
;			pte[PTE_EdCyl] = (BYTE)cy;
;
;			pte += SZ_PTE;		/* Next entry */
;		}
;
;		st_word(buf + BS_55AA, 0xAA55);		/* MBR signature */
;		if (disk_write(drv, buf, 0, 1) != RES_OK) return FR_DISK_ERR;	/* Write it to the MBR */
;	}
;
;	return FR_OK;
;}
;
;
;
;FRESULT f_mkfs (
;	const TCHAR* path,		/* Logical drive number */
;	const MKFS_PARM* opt,	/* Format options */
;	void* work,				/* Pointer to working buffer (null: use heap memory) */
;	UINT len				/* Size of working buffer [byte] */
;)
;{
;	static const WORD cst[] = {1, 4, 16, 64, 256, 512, 0};	/* Cluster size boundary for FAT volume (4Ks unit) */
;	static const WORD cst32[] = {1, 2, 4, 8, 16, 32, 0};	/* Cluster size boundary for FAT32 volume (128Ks unit) */
;	static const MKFS_PARM defopt = {FM_ANY, 0, 0, 0, 0};	/* Default parameter */
;	BYTE fsopt, fsty, sys, *buf, *pte, pdrv, ipart;
;	WORD ss;	/* Sector size */
;	DWORD sz_buf, sz_blk, n_clst, pau, nsect, n;
;	LBA_t sz_vol, b_vol, b_fat, b_data;		/* Size of volume, Base LBA of volume, fat, data */
;	LBA_t sect, lba[2];
;	DWORD sz_rsv, sz_fat, sz_dir, sz_au;	/* Size of reserved, fat, dir, data, cluster */
;	UINT n_fat, n_root, i;					/* Index, Number of FATs and Number of roor dir entries */
;	int vol;
;	DSTATUS ds;
;	FRESULT fr;
;
;
;	/* Check mounted drive and clear work area */
;	vol = get_ldnumber(&path);					/* Get target logical drive */
;	if (vol < 0) return FR_INVALID_DRIVE;
;	if (FatFs[vol]) FatFs[vol]->fs_type = 0;	/* Clear the fs object if mounted */
;	pdrv = LD2PD(vol);			/* Physical drive */
;	ipart = LD2PT(vol);			/* Partition (0:create as new, 1..:get from partition table) */
;	if (!opt) opt = &defopt;	/* Use default parameter if it is not given */
;
;	/* Get physical drive status (sz_drv, sz_blk, ss) */
;	ds = disk_initialize(pdrv);
;	if (ds & STA_NOINIT) return FR_NOT_READY;
;	if (ds & STA_PROTECT) return FR_WRITE_PROTECTED;
;	sz_blk = opt->align;
;	if (sz_blk == 0 && disk_ioctl(pdrv, GET_BLOCK_SIZE, &sz_blk) != RES_OK) sz_blk = 1;
; 	if (sz_blk == 0 || sz_blk > 0x8000 || (sz_blk & (sz_blk - 1))) sz_blk = 1;
;#if FF_MAX_SS != FF_MIN_SS
;	if (disk_ioctl(pdrv, GET_SECTOR_SIZE, &ss) != RES_OK) return FR_DISK_ERR;
;	if (ss > FF_MAX_SS || ss < FF_MIN_SS || (ss & (ss - 1))) return FR_DISK_ERR;
;#else
;	ss = FF_MAX_SS;
;#endif
;	/* Options for FAT sub-type and FAT parameters */
;	fsopt = opt->fmt & (FM_ANY | FM_SFD);
;	n_fat = (opt->n_fat >= 1 && opt->n_fat <= 2) ? opt->n_fat : 1;
;	n_root = (opt->n_root >= 1 && opt->n_root <= 32768 && (opt->n_root % (ss / SZDIRE)) == 0) ? opt->n_root : 512;
;	sz_au = (opt->au_size <= 0x1000000 && (opt->au_size & (opt->au_size - 1)) == 0) ? opt->au_size : 0;
;	sz_au /= ss;	/* Byte --> Sector */
;
;	/* Get working buffer */
;	sz_buf = len / ss;		/* Size of working buffer [sector] */
;	if (sz_buf == 0) return FR_NOT_ENOUGH_CORE;
;	buf = (BYTE*)work;		/* Working buffer */
;#if FF_USE_LFN == 3
;	if (!buf) buf = ff_memalloc(sz_buf * ss);	/* Use heap memory for working buffer */
;#endif
;	if (!buf) return FR_NOT_ENOUGH_CORE;
;
;	/* Determine where the volume to be located (b_vol, sz_vol) */
;	b_vol = sz_vol = 0;
;	if (FF_MULTI_PARTITION && ipart != 0) {	/* Is the volume associated with any specific partition? */
;		/* Get partition location from the existing partition table */
;		if (disk_read(pdrv, buf, 0, 1) != RES_OK) LEAVE_MKFS(FR_DISK_ERR);	/* Load MBR */
;		if (ld_word(buf + BS_55AA) != 0xAA55) LEAVE_MKFS(FR_MKFS_ABORTED);	/* Check if MBR is valid */
;#if FF_LBA64
;		if (buf[MBR_Table + PTE_System] == 0xEE) {	/* GPT protective MBR? */
;			DWORD n_ent, ofs;
;			QWORD pt_lba;
;
;			/* Get the partition location from GPT */
;			if (disk_read(pdrv, buf, 1, 1) != RES_OK) LEAVE_MKFS(FR_DISK_ERR);	/* Load GPT header sector (next to MBR) */
;			if (!test_gpt_header(buf)) LEAVE_MKFS(FR_MKFS_ABORTED);	/* Check if GPT header is valid */
;			n_ent = ld_dword(buf + GPTH_PtNum);		/* Number of entries */
;			pt_lba = ld_qword(buf + GPTH_PtOfs);	/* Table start sector */
;			ofs = i = 0;
;			while (n_ent) {		/* Find MS Basic partition with order of ipart */
;				if (ofs == 0 && disk_read(pdrv, buf, pt_lba++, 1) != RES_OK) LEAVE_MKFS(FR_DISK_ERR);	/* Get PT sector */
;				if (!mem_cmp(buf + ofs + GPTE_PtGuid, GUID_MS_Basic, 16) && ++i == ipart) {	/* MS basic data partition? */
;					b_vol = ld_qword(buf + ofs + GPTE_FstLba);
;					sz_vol = ld_qword(buf + ofs + GPTE_LstLba) - b_vol + 1;
;					break;
;				}
;				n_ent--; ofs = (ofs + SZ_GPTE) % ss;	/* Next entry */
;			}
;			if (n_ent == 0) LEAVE_MKFS(FR_MKFS_ABORTED);	/* Partition not found */
;			fsopt |= 0x80;	/* Partitioning is in GPT */
;		} else
;#endif
;		{	/* Get the partition location from MBR partition table */
;			pte = buf + (MBR_Table + (ipart - 1) * SZ_PTE);
;			if (ipart > 4 || pte[PTE_System] == 0) LEAVE_MKFS(FR_MKFS_ABORTED);	/* No partition? */
;			b_vol = ld_dword(pte + PTE_StLba);		/* Get volume start sector */
;			sz_vol = ld_dword(pte + PTE_SizLba);	/* Get volume size */
;		}
;	} else {	/* The volume is associated with a physical drive */
;		if (disk_ioctl(pdrv, GET_SECTOR_COUNT, &sz_vol) != RES_OK) LEAVE_MKFS(FR_DISK_ERR);
;		if (!(fsopt & FM_SFD)) {	/* To be partitioned? */
;			/* Create a single-partition on the drive in this function */
;#if FF_LBA64
;			if (sz_vol >= FF_MIN_GPT) {	/* Which partition type to create, MBR or GPT? */
;				fsopt |= 0x80;		/* Partitioning is in GPT */
;				b_vol = GPT_ALIGN / ss; sz_vol -= b_vol + GPT_ITEMS * SZ_GPTE / ss + 1;	/* Estimated partition offset and size */
;			} else
;#endif
;			{	/* Partitioning is in MBR */
;				if (sz_vol > N_SEC_TRACK) {
;					b_vol = N_SEC_TRACK; sz_vol -= b_vol;	/* Estimated partition offset and size */
;				}
;			}
;		}
;	}
;	if (sz_vol < 128) LEAVE_MKFS(FR_MKFS_ABORTED);	/* Check if volume size is >=128s */
;
;	/* Now start to create a FAT volume at b_vol and sz_vol */
;
;	do {	/* Pre-determine the FAT type */
;		if (FF_FS_EXFAT && (fsopt & FM_EXFAT)) {	/* exFAT possible? */
;			if ((fsopt & FM_ANY) == FM_EXFAT || sz_vol >= 0x4000000 || sz_au > 128) {	/* exFAT only, vol >= 64MS or sz_au > 128S ? */
;				fsty = FS_EXFAT; break;
;			}
;		}
;#if FF_LBA64
;		if (sz_vol >= 0x100000000) LEAVE_MKFS(FR_MKFS_ABORTED);	/* Too large volume for FAT/FAT32 */
;#endif
;		if (sz_au > 128) sz_au = 128;	/* Invalid AU for FAT/FAT32? */
;		if (fsopt & FM_FAT32) {	/* FAT32 possible? */
;			if (!(fsopt & FM_FAT)) {	/* no-FAT? */
;				fsty = FS_FAT32; break;
;			}
;		}
;		if (!(fsopt & FM_FAT)) LEAVE_MKFS(FR_INVALID_PARAMETER);	/* no-FAT? */
;		fsty = FS_FAT16;
;	} while (0);
;
;#if FF_FS_EXFAT
;	if (fsty == FS_EXFAT) {	/* Create an exFAT volume */
;		DWORD szb_bit, szb_case, sum, nb, cl, tbl[3];
;		WCHAR ch, si;
;		UINT j, st;
;		BYTE b;
;
;		if (sz_vol < 0x1000) LEAVE_MKFS(FR_MKFS_ABORTED);	/* Too small volume for exFAT? */
;#if FF_USE_TRIM
;		lba[0] = b_vol; lba[1] = b_vol + sz_vol - 1;	/* Inform storage device that the volume area may be erased */
;		disk_ioctl(pdrv, CTRL_TRIM, lba);
;#endif
;		/* Determine FAT location, data location and number of clusters */
;		if (sz_au == 0) {	/* AU auto-selection */
;			sz_au = 8;
;			if (sz_vol >= 0x80000) sz_au = 64;		/* >= 512Ks */
;			if (sz_vol >= 0x4000000) sz_au = 256;	/* >= 64Ms */
;		}
;		b_fat = b_vol + 32;										/* FAT start at offset 32 */
;		sz_fat = (DWORD)((sz_vol / sz_au + 2) * 4 + ss - 1) / ss;	/* Number of FAT sectors */
;		b_data = (b_fat + sz_fat + sz_blk - 1) & ~((LBA_t)sz_blk - 1);	/* Align data area to the erase block boundary */
;		if (b_data - b_vol >= sz_vol / 2) LEAVE_MKFS(FR_MKFS_ABORTED);	/* Too small volume? */
;		n_clst = (DWORD)(sz_vol - (b_data - b_vol)) / sz_au;	/* Number of clusters */
;		if (n_clst <16) LEAVE_MKFS(FR_MKFS_ABORTED);			/* Too few clusters? */
;		if (n_clst > MAX_EXFAT) LEAVE_MKFS(FR_MKFS_ABORTED);	/* Too many clusters? */
;
;		szb_bit = (n_clst + 7) / 8;							/* Size of allocation bitmap */
;		tbl[0] = (szb_bit + sz_au * ss - 1) / (sz_au * ss);	/* Number of allocation bitmap clusters */
;
;		/* Create a compressed up-case table */
;		sect = b_data + sz_au * tbl[0];	/* Table start sector */
;		sum = 0;						/* Table checksum to be stored in the 82 entry */
;		st = 0; si = 0; i = 0; j = 0; szb_case = 0;
;		do {
;			switch (st) {
;			case 0:
;				ch = (WCHAR)ff_wtoupper(si);	/* Get an up-case char */
;				if (ch != si) {
;					si++; break;		/* Store the up-case char if exist */
;				}
;				for (j = 1; (WCHAR)(si + j) && (WCHAR)(si + j) == ff_wtoupper((WCHAR)(si + j)); j++) ;	/* Get run length of no-case block */
;				if (j >= 128) {
;					ch = 0xFFFF; st = 2; break;	/* Compress the no-case block if run is >= 128 */
;				}
;				st = 1;			/* Do not compress short run */
;				/* go to next case */
;			case 1:
;				ch = si++;		/* Fill the short run */
;				if (--j == 0) st = 0;
;				break;
;
;			default:
;				ch = (WCHAR)j; si += (WCHAR)j;	/* Number of chars to skip */
;				st = 0;
;			}
;			sum = xsum32(buf[i + 0] = (BYTE)ch, sum);		/* Put it into the write buffer */
;			sum = xsum32(buf[i + 1] = (BYTE)(ch >> 8), sum);
;			i += 2; szb_case += 2;
;			if (si == 0 || i == sz_buf * ss) {		/* Write buffered data when buffer full or end of process */
;				n = (i + ss - 1) / ss;
;				if (disk_write(pdrv, buf, sect, n) != RES_OK) LEAVE_MKFS(FR_DISK_ERR);
;				sect += n; i = 0;
;			}
;		} while (si);
;		tbl[1] = (szb_case + sz_au * ss - 1) / (sz_au * ss);	/* Number of up-case table clusters */
;		tbl[2] = 1;										/* Number of root dir clusters */
;
;		/* Initialize the allocation bitmap */
;		sect = b_data; nsect = (szb_bit + ss - 1) / ss;	/* Start of bitmap and number of sectors */
;		nb = tbl[0] + tbl[1] + tbl[2];					/* Number of clusters in-use by system */
;		do {
;			mem_set(buf, 0, sz_buf * ss);
;			for (i = 0; nb >= 8 && i < sz_buf * ss; buf[i++] = 0xFF, nb -= 8) ;
;			for (b = 1; nb != 0 && i < sz_buf * ss; buf[i] |= b, b <<= 1, nb--) ;
;			n = (nsect > sz_buf) ? sz_buf : nsect;		/* Write the buffered data */
;			if (disk_write(pdrv, buf, sect, n) != RES_OK) LEAVE_MKFS(FR_DISK_ERR);
;			sect += n; nsect -= n;
;		} while (nsect);
;
;		/* Initialize the FAT */
;		sect = b_fat; nsect = sz_fat;	/* Start of FAT and number of FAT sectors */
;		j = nb = cl = 0;
;		do {
;			mem_set(buf, 0, sz_buf * ss); i = 0;	/* Clear work area and reset write index */
;			if (cl == 0) {	/* Set FAT [0] and FAT[1] */
;				st_dword(buf + i, 0xFFFFFFF8); i += 4; cl++;
;				st_dword(buf + i, 0xFFFFFFFF); i += 4; cl++;
;			}
;			do {			/* Create chains of bitmap, up-case and root dir */
;				while (nb != 0 && i < sz_buf * ss) {	/* Create a chain */
;					st_dword(buf + i, (nb > 1) ? cl + 1 : 0xFFFFFFFF);
;					i += 4; cl++; nb--;
;				}
;				if (nb == 0 && j < 3) nb = tbl[j++];	/* Next chain */
;			} while (nb != 0 && i < sz_buf * ss);
;			n = (nsect > sz_buf) ? sz_buf : nsect;	/* Write the buffered data */
;			if (disk_write(pdrv, buf, sect, n) != RES_OK) LEAVE_MKFS(FR_DISK_ERR);
;			sect += n; nsect -= n;
;		} while (nsect);
;
;		/* Initialize the root directory */
;		mem_set(buf, 0, sz_buf * ss);
;		buf[SZDIRE * 0 + 0] = ET_VLABEL;					/* Volume label entry (no label) */
;		buf[SZDIRE * 1 + 0] = ET_BITMAP;					/* Bitmap entry */
;		st_dword(buf + SZDIRE * 1 + 20, 2);					/*  cluster */
;		st_dword(buf + SZDIRE * 1 + 24, szb_bit);			/*  size */
;		buf[SZDIRE * 2 + 0] = ET_UPCASE;					/* Up-case table entry */
;		st_dword(buf + SZDIRE * 2 + 4, sum);				/*  sum */
;		st_dword(buf + SZDIRE * 2 + 20, 2 + tbl[0]);		/*  cluster */
;		st_dword(buf + SZDIRE * 2 + 24, szb_case);			/*  size */
;		sect = b_data + sz_au * (tbl[0] + tbl[1]); nsect = sz_au;	/* Start of the root directory and number of sectors */
;		do {	/* Fill root directory sectors */
;			n = (nsect > sz_buf) ? sz_buf : nsect;
;			if (disk_write(pdrv, buf, sect, n) != RES_OK) LEAVE_MKFS(FR_DISK_ERR);
;			mem_set(buf, 0, ss);
;			sect += n; nsect -= n;
;		} while (nsect);
;
;		/* Create two set of the exFAT VBR blocks */
;		sect = b_vol;
;		for (n = 0; n < 2; n++) {
;			/* Main record (+0) */
;			mem_set(buf, 0, ss);
;			mem_cpy(buf + BS_JmpBoot, "\xEB\x76\x90" "EXFAT   ", 11);	/* Boot jump code (x86), OEM name */
;			st_qword(buf + BPB_VolOfsEx, b_vol);					/* Volume offset in the physical drive [sector] */
;			st_qword(buf + BPB_TotSecEx, sz_vol);					/* Volume size [sector] */
;			st_dword(buf + BPB_FatOfsEx, (DWORD)(b_fat - b_vol));	/* FAT offset [sector] */
;			st_dword(buf + BPB_FatSzEx, sz_fat);					/* FAT size [sector] */
;			st_dword(buf + BPB_DataOfsEx, (DWORD)(b_data - b_vol));	/* Data offset [sector] */
;			st_dword(buf + BPB_NumClusEx, n_clst);					/* Number of clusters */
;			st_dword(buf + BPB_RootClusEx, 2 + tbl[0] + tbl[1]);	/* Root dir cluster # */
;			st_dword(buf + BPB_VolIDEx, GET_FATTIME());				/* VSN */
;			st_word(buf + BPB_FSVerEx, 0x100);						/* Filesystem version (1.00) */
;			for (buf[BPB_BytsPerSecEx] = 0, i = ss; i >>= 1; buf[BPB_BytsPerSecEx]++) ;	/* Log2 of sector size [byte] */
;			for (buf[BPB_SecPerClusEx] = 0, i = sz_au; i >>= 1; buf[BPB_SecPerClusEx]++) ;	/* Log2 of cluster size [sector] */
;			buf[BPB_NumFATsEx] = 1;					/* Number of FATs */
;			buf[BPB_DrvNumEx] = 0x80;				/* Drive number (for int13) */
;			st_word(buf + BS_BootCodeEx, 0xFEEB);	/* Boot code (x86) */
;			st_word(buf + BS_55AA, 0xAA55);			/* Signature (placed here regardless of sector size) */
;			for (i = sum = 0; i < ss; i++) {		/* VBR checksum */
;				if (i != BPB_VolFlagEx && i != BPB_VolFlagEx + 1 && i != BPB_PercInUseEx) sum = xsum32(buf[i], sum);
;			}
;			if (disk_write(pdrv, buf, sect++, 1) != RES_OK) LEAVE_MKFS(FR_DISK_ERR);
;			/* Extended bootstrap record (+1..+8) */
;			mem_set(buf, 0, ss);
;			st_word(buf + ss - 2, 0xAA55);	/* Signature (placed at end of sector) */
;			for (j = 1; j < 9; j++) {
;				for (i = 0; i < ss; sum = xsum32(buf[i++], sum)) ;	/* VBR checksum */
;				if (disk_write(pdrv, buf, sect++, 1) != RES_OK) LEAVE_MKFS(FR_DISK_ERR);
;			}
;			/* OEM/Reserved record (+9..+10) */
;			mem_set(buf, 0, ss);
;			for ( ; j < 11; j++) {
;				for (i = 0; i < ss; sum = xsum32(buf[i++], sum)) ;	/* VBR checksum */
;				if (disk_write(pdrv, buf, sect++, 1) != RES_OK) LEAVE_MKFS(FR_DISK_ERR);
;			}
;			/* Sum record (+11) */
;			for (i = 0; i < ss; i += 4) st_dword(buf + i, sum);		/* Fill with checksum value */
;			if (disk_write(pdrv, buf, sect++, 1) != RES_OK) LEAVE_MKFS(FR_DISK_ERR);
;		}
;
;	} else
;#endif	/* FF_FS_EXFAT */
;	{	/* Create an FAT/FAT32 volume */
;		do {
;			pau = sz_au;
;			/* Pre-determine number of clusters and FAT sub-type */
;			if (fsty == FS_FAT32) {	/* FAT32 volume */
;				if (pau == 0) {	/* AU auto-selection */
;					n = (DWORD)sz_vol / 0x20000;	/* Volume size in unit of 128KS */
;					for (i = 0, pau = 1; cst32[i] && cst32[i] <= n; i++, pau <<= 1) ;	/* Get from table */
;				}
;				n_clst = (DWORD)sz_vol / pau;	/* Number of clusters */
;				sz_fat = (n_clst * 4 + 8 + ss - 1) / ss;	/* FAT size [sector] */
;				sz_rsv = 32;	/* Number of reserved sectors */
;				sz_dir = 0;		/* No static directory */
;				if (n_clst <= MAX_FAT16 || n_clst > MAX_FAT32) LEAVE_MKFS(FR_MKFS_ABORTED);
;			} else {				/* FAT volume */
;				if (pau == 0) {	/* au auto-selection */
;					n = (DWORD)sz_vol / 0x1000;	/* Volume size in unit of 4KS */
;					for (i = 0, pau = 1; cst[i] && cst[i] <= n; i++, pau <<= 1) ;	/* Get from table */
;				}
;				n_clst = (DWORD)sz_vol / pau;
;				if (n_clst > MAX_FAT12) {
;					n = n_clst * 2 + 4;		/* FAT size [byte] */
;				} else {
;					fsty = FS_FAT12;
;					n = (n_clst * 3 + 1) / 2 + 3;	/* FAT size [byte] */
;				}
;				sz_fat = (n + ss - 1) / ss;		/* FAT size [sector] */
;				sz_rsv = 1;						/* Number of reserved sectors */
;				sz_dir = (DWORD)n_root * SZDIRE / ss;	/* Root dir size [sector] */
;			}
;			b_fat = b_vol + sz_rsv;						/* FAT base */
;			b_data = b_fat + sz_fat * n_fat + sz_dir;	/* Data base */
;
;			/* Align data area to erase block boundary (for flash memory media) */
;			n = (DWORD)(((b_data + sz_blk - 1) & ~(sz_blk - 1)) - b_data);	/* Sectors to next nearest from current data base */
;			if (fsty == FS_FAT32) {		/* FAT32: Move FAT */
;				sz_rsv += n; b_fat += n;
;			} else {					/* FAT: Expand FAT */
;				if (n % n_fat) {	/* Adjust fractional error if needed */
;					n--; sz_rsv++; b_fat++;
;				}
;				sz_fat += n / n_fat;
;			}
;
;			/* Determine number of clusters and final check of validity of the FAT sub-type */
;			if (sz_vol < b_data + pau * 16 - b_vol) LEAVE_MKFS(FR_MKFS_ABORTED);	/* Too small volume? */
;			n_clst = ((DWORD)sz_vol - sz_rsv - sz_fat * n_fat - sz_dir) / pau;
;			if (fsty == FS_FAT32) {
;				if (n_clst <= MAX_FAT16) {	/* Too few clusters for FAT32? */
;					if (sz_au == 0 && (sz_au = pau / 2) != 0) continue;	/* Adjust cluster size and retry */
;					LEAVE_MKFS(FR_MKFS_ABORTED);
;				}
;			}
;			if (fsty == FS_FAT16) {
;				if (n_clst > MAX_FAT16) {	/* Too many clusters for FAT16 */
;					if (sz_au == 0 && (pau * 2) <= 64) {
;						sz_au = pau * 2; continue;		/* Adjust cluster size and retry */
;					}
;					if ((fsopt & FM_FAT32)) {
;						fsty = FS_FAT32; continue;	/* Switch type to FAT32 and retry */
;					}
;					if (sz_au == 0 && (sz_au = pau * 2) <= 128) continue;	/* Adjust cluster size and retry */
;					LEAVE_MKFS(FR_MKFS_ABORTED);
;				}
;				if  (n_clst <= MAX_FAT12) {	/* Too few clusters for FAT16 */
;					if (sz_au == 0 && (sz_au = pau * 2) <= 128) continue;	/* Adjust cluster size and retry */
;					LEAVE_MKFS(FR_MKFS_ABORTED);
;				}
;			}
;			if (fsty == FS_FAT12 && n_clst > MAX_FAT12) LEAVE_MKFS(FR_MKFS_ABORTED);	/* Too many clusters for FAT12 */
;
;			/* Ok, it is the valid cluster configuration */
;			break;
;		} while (1);
;
;#if FF_USE_TRIM
;		lba[0] = b_vol; lba[1] = b_vol + sz_vol - 1;	/* Inform storage device that the volume area may be erased */
;		disk_ioctl(pdrv, CTRL_TRIM, lba);
;#endif
;		/* Create FAT VBR */
;		mem_set(buf, 0, ss);
;		mem_cpy(buf + BS_JmpBoot, "\xEB\xFE\x90" "MSDOS5.0", 11);/* Boot jump code (x86), OEM name */
;		st_word(buf + BPB_BytsPerSec, ss);				/* Sector size [byte] */
;		buf[BPB_SecPerClus] = (BYTE)pau;				/* Cluster size [sector] */
;		st_word(buf + BPB_RsvdSecCnt, (WORD)sz_rsv);	/* Size of reserved area */
;		buf[BPB_NumFATs] = (BYTE)n_fat;					/* Number of FATs */
;		st_word(buf + BPB_RootEntCnt, (WORD)((fsty == FS_FAT32) ? 0 : n_root));	/* Number of root directory entries */
;		if (sz_vol < 0x10000) {
;			st_word(buf + BPB_TotSec16, (WORD)sz_vol);	/* Volume size in 16-bit LBA */
;		} else {
;			st_dword(buf + BPB_TotSec32, (DWORD)sz_vol);	/* Volume size in 32-bit LBA */
;		}
;		buf[BPB_Media] = 0xF8;							/* Media descriptor byte */
;		st_word(buf + BPB_SecPerTrk, 63);				/* Number of sectors per track (for int13) */
;		st_word(buf + BPB_NumHeads, 255);				/* Number of heads (for int13) */
;		st_dword(buf + BPB_HiddSec, (DWORD)b_vol);		/* Volume offset in the physical drive [sector] */
;		if (fsty == FS_FAT32) {
;			st_dword(buf + BS_VolID32, GET_FATTIME());	/* VSN */
;			st_dword(buf + BPB_FATSz32, sz_fat);		/* FAT size [sector] */
;			st_dword(buf + BPB_RootClus32, 2);			/* Root directory cluster # (2) */
;			st_word(buf + BPB_FSInfo32, 1);				/* Offset of FSINFO sector (VBR + 1) */
;			st_word(buf + BPB_BkBootSec32, 6);			/* Offset of backup VBR (VBR + 6) */
;			buf[BS_DrvNum32] = 0x80;					/* Drive number (for int13) */
;			buf[BS_BootSig32] = 0x29;					/* Extended boot signature */
;			mem_cpy(buf + BS_VolLab32, "NO NAME    " "FAT32   ", 19);	/* Volume label, FAT signature */
;		} else {
;			st_dword(buf + BS_VolID, GET_FATTIME());	/* VSN */
;			st_word(buf + BPB_FATSz16, (WORD)sz_fat);	/* FAT size [sector] */
;			buf[BS_DrvNum] = 0x80;						/* Drive number (for int13) */
;			buf[BS_BootSig] = 0x29;						/* Extended boot signature */
;			mem_cpy(buf + BS_VolLab, "NO NAME    " "FAT     ", 19);	/* Volume label, FAT signature */
;		}
;		st_word(buf + BS_55AA, 0xAA55);					/* Signature (offset is fixed here regardless of sector size) */
;		if (disk_write(pdrv, buf, b_vol, 1) != RES_OK) LEAVE_MKFS(FR_DISK_ERR);	/* Write it to the VBR sector */
;
;		/* Create FSINFO record if needed */
;		if (fsty == FS_FAT32) {
;			disk_write(pdrv, buf, b_vol + 6, 1);		/* Write backup VBR (VBR + 6) */
;			mem_set(buf, 0, ss);
;			st_dword(buf + FSI_LeadSig, 0x41615252);
;			st_dword(buf + FSI_StrucSig, 0x61417272);
;			st_dword(buf + FSI_Free_Count, n_clst - 1);	/* Number of free clusters */
;			st_dword(buf + FSI_Nxt_Free, 2);			/* Last allocated cluster# */
;			st_word(buf + BS_55AA, 0xAA55);
;			disk_write(pdrv, buf, b_vol + 7, 1);		/* Write backup FSINFO (VBR + 7) */
;			disk_write(pdrv, buf, b_vol + 1, 1);		/* Write original FSINFO (VBR + 1) */
;		}
;
;		/* Initialize FAT area */
;		mem_set(buf, 0, sz_buf * ss);
;		sect = b_fat;		/* FAT start sector */
;		for (i = 0; i < n_fat; i++) {			/* Initialize FATs each */
;			if (fsty == FS_FAT32) {
;				st_dword(buf + 0, 0xFFFFFFF8);	/* FAT[0] */
;				st_dword(buf + 4, 0xFFFFFFFF);	/* FAT[1] */
;				st_dword(buf + 8, 0x0FFFFFFF);	/* FAT[2] (root directory) */
;			} else {
;				st_dword(buf + 0, (fsty == FS_FAT12) ? 0xFFFFF8 : 0xFFFFFFF8);	/* FAT[0] and FAT[1] */
;			}
;			nsect = sz_fat;		/* Number of FAT sectors */
;			do {	/* Fill FAT sectors */
;				n = (nsect > sz_buf) ? sz_buf : nsect;
;				if (disk_write(pdrv, buf, sect, (UINT)n) != RES_OK) LEAVE_MKFS(FR_DISK_ERR);
;				mem_set(buf, 0, ss);	/* Rest of FAT all are cleared */
;				sect += n; nsect -= n;
;			} while (nsect);
;		}
;
;		/* Initialize root directory (fill with zero) */
;		nsect = (fsty == FS_FAT32) ? pau : sz_dir;	/* Number of root directory sectors */
;		do {
;			n = (nsect > sz_buf) ? sz_buf : nsect;
;			if (disk_write(pdrv, buf, sect, (UINT)n) != RES_OK) LEAVE_MKFS(FR_DISK_ERR);
;			sect += n; nsect -= n;
;		} while (nsect);
;	}
;
;	/* A FAT volume has been created here */
;
;	/* Determine system ID in the MBR partition table */
;	if (FF_FS_EXFAT && fsty == FS_EXFAT) {
;		sys = 0x07;			/* exFAT */
;	} else {
;		if (fsty == FS_FAT32) {
;			sys = 0x0C;		/* FAT32X */
;		} else {
;			if (sz_vol >= 0x10000) {
;				sys = 0x06;	/* FAT12/16 (large) */
;			} else {
;				sys = (fsty == FS_FAT16) ? 0x04 : 0x01;	/* FAT16 : FAT12 */
;			}
;		}
;	}
;
;	/* Update partition information */
;	if (FF_MULTI_PARTITION && ipart != 0) {	/* Volume is in the existing partition */
;		if (!FF_LBA64 || !(fsopt & 0x80)) {
;			/* Update system ID in the partition table */
;			if (disk_read(pdrv, buf, 0, 1) != RES_OK) LEAVE_MKFS(FR_DISK_ERR);	/* Read the MBR */
;			buf[MBR_Table + (ipart - 1) * SZ_PTE + PTE_System] = sys;			/* Set system ID */
;			if (disk_write(pdrv, buf, 0, 1) != RES_OK) LEAVE_MKFS(FR_DISK_ERR);	/* Write it back to the MBR */
;		}
;	} else {								/* Volume as a new single partition */
;		if (!(fsopt & FM_SFD)) {	/* Create partition table if not in SFD */
;			lba[0] = sz_vol, lba[1] = 0;
;			fr = create_partition(pdrv, lba, sys, buf);
;			if (fr != FR_OK) LEAVE_MKFS(fr);
;		}
;	}
;
;	if (disk_ioctl(pdrv, CTRL_SYNC, 0) != RES_OK) LEAVE_MKFS(FR_DISK_ERR);
;
;	LEAVE_MKFS(FR_OK);
;}
;
;
;
;
;#if FF_MULTI_PARTITION
;/*-----------------------------------------------------------------------*/
;/* Create Partition Table on the Physical Drive                          */
;/*-----------------------------------------------------------------------*/
;
;FRESULT f_fdisk (
;	BYTE pdrv,			/* Physical drive number */
;	const LBA_t ptbl[],	/* Pointer to the size table for each partitions */
;	void* work			/* Pointer to the working buffer (null: use heap memory) */
;)
;{
;	BYTE *buf = (BYTE*)work;
;	DSTATUS stat;
;
;
;	stat = disk_initialize(pdrv);
;	if (stat & STA_NOINIT) return FR_NOT_READY;
;	if (stat & STA_PROTECT) return FR_WRITE_PROTECTED;
;#if FF_USE_LFN == 3
;	if (!buf) buf = ff_memalloc(FF_MAX_SS);	/* Use heap memory for working buffer */
;#endif
;	if (!buf) return FR_NOT_ENOUGH_CORE;
;
;	LEAVE_MKFS(create_partition(pdrv, ptbl, 0x07, buf));
;}
;
;#endif /* FF_MULTI_PARTITION */
;#endif /* !FF_FS_READONLY && FF_USE_MKFS */
;
;
;
;
;#if FF_USE_STRFUNC
;#if FF_USE_LFN && FF_LFN_UNICODE && (FF_STRF_ENCODE < 0 || FF_STRF_ENCODE > 3)
;#error Wrong FF_STRF_ENCODE setting
;#endif
;/*-----------------------------------------------------------------------*/
;/* Get a String from the File                                            */
;/*-----------------------------------------------------------------------*/
;
;TCHAR* f_gets (
;	TCHAR* buff,	/* Pointer to the buffer to store read string */
;	int len,		/* Size of string buffer (items) */
;	FIL* fp			/* Pointer to the file object */
;)
;{
	.line	6451
	.line	6456
	FFDOS
	xdef	~~f_gets
	func
	.function	6456
~~f_gets:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L795
	tcs
	phd
	tcd
buff_0	set	4
len_0	set	8
fp_0	set	10
	.block	6456
;	int nc = 0;
;	TCHAR *p = buff;
;	BYTE s[4];
;	UINT rc;
;	DWORD dc;
;#if FF_USE_LFN && FF_LFN_UNICODE && FF_STRF_ENCODE <= 2
;	WCHAR wc;
;#endif
;#if FF_USE_LFN && FF_LFN_UNICODE && FF_STRF_ENCODE == 3
;	UINT ct;
;#endif
;
;#if FF_USE_LFN && FF_LFN_UNICODE			/* With code conversion (Unicode API) */
;	/* Make a room for the character and terminator  */
;	if (FF_LFN_UNICODE == 1) len -= (FF_STRF_ENCODE == 0) ? 1 : 2;
;	if (FF_LFN_UNICODE == 2) len -= (FF_STRF_ENCODE == 0) ? 3 : 4;
;	if (FF_LFN_UNICODE == 3) len -= 1;
;	while (nc < len) {
;#if FF_STRF_ENCODE == 0				/* Read a character in ANSI/OEM */
;		f_read(fp, s, 1, &rc);		/* Get a code unit */
;		if (rc != 1) break;			/* EOF? */
;		wc = s[0];
;		if (dbc_1st((BYTE)wc)) {	/* DBC 1st byte? */
;			f_read(fp, s, 1, &rc);	/* Get DBC 2nd byte */
;			if (rc != 1 || !dbc_2nd(s[0])) continue;	/* Wrong code? */
;			wc = wc << 8 | s[0];
;		}
;		dc = ff_oem2uni(wc, CODEPAGE);	/* OEM --> */
;		if (dc == 0) continue;
;#elif FF_STRF_ENCODE == 1 || FF_STRF_ENCODE == 2 	/* Read a character in UTF-16LE/BE */
;		f_read(fp, s, 2, &rc);		/* Get a code unit */
;		if (rc != 2) break;			/* EOF? */
;		dc = (FF_STRF_ENCODE == 1) ? ld_word(s) : s[0] << 8 | s[1];
;		if (IsSurrogateL(dc)) continue;	/* Broken surrogate pair? */
;		if (IsSurrogateH(dc)) {		/* High surrogate? */
;			f_read(fp, s, 2, &rc);	/* Get low surrogate */
;			if (rc != 2) break;		/* EOF? */
;			wc = (FF_STRF_ENCODE == 1) ? ld_word(s) : s[0] << 8 | s[1];
;			if (!IsSurrogateL(wc)) continue;	/* Broken surrogate pair? */
;			dc = ((dc & 0x3FF) + 0x40) << 10 | (wc & 0x3FF);	/* Merge surrogate pair */
;		}
;#else	/* Read a character in UTF-8 */
;		f_read(fp, s, 1, &rc);		/* Get a code unit */
;		if (rc != 1) break;			/* EOF? */
;		dc = s[0];
;		if (dc >= 0x80) {			/* Multi-byte sequence? */
;			ct = 0;
;			if ((dc & 0xE0) == 0xC0) { dc &= 0x1F; ct = 1; }	/* 2-byte sequence? */
;			if ((dc & 0xF0) == 0xE0) { dc &= 0x0F; ct = 2; }	/* 3-byte sequence? */
;			if ((dc & 0xF8) == 0xF0) { dc &= 0x07; ct = 3; }	/* 4-byte sequence? */
;			if (ct == 0) continue;
;			f_read(fp, s, ct, &rc);		/* Get trailing bytes */
;			if (rc != ct) break;
;			rc = 0;
;			do {	/* Merge the byte sequence */
;				if ((s[rc] & 0xC0) != 0x80) break;
;				dc = dc << 6 | (s[rc] & 0x3F);
;			} while (++rc < ct);
;			if (rc != ct || dc < 0x80 || IsSurrogate(dc) || dc >= 0x110000) continue;	/* Wrong encoding? */
;		}
;#endif
;		/* A code point is avaialble in dc to be output */
;
;		if (FF_USE_STRFUNC == 2 && dc == '\r') continue;	/* Strip \r off if needed */
;#if FF_LFN_UNICODE == 1	|| FF_LFN_UNICODE == 3	/* Output it in UTF-16/32 encoding */
;		if (FF_LFN_UNICODE == 1 && dc >= 0x10000) {	/* Out of BMP at UTF-16? */
;			*p++ = (TCHAR)(0xD800 | ((dc >> 10) - 0x40)); nc++;	/* Make and output high surrogate */
;			dc = 0xDC00 | (dc & 0x3FF);		/* Make low surrogate */
;		}
;		*p++ = (TCHAR)dc; nc++;
;		if (dc == '\n') break;	/* End of line? */
;#elif FF_LFN_UNICODE == 2		/* Output it in UTF-8 encoding */
;		if (dc < 0x80) {	/* Single byte? */
;			*p++ = (TCHAR)dc;
;			nc++;
;			if (dc == '\n') break;	/* End of line? */
;		} else {
;			if (dc < 0x800) {		/* 2-byte sequence? */
;				*p++ = (TCHAR)(0xC0 | (dc >> 6 & 0x1F));
;				*p++ = (TCHAR)(0x80 | (dc >> 0 & 0x3F));
;				nc += 2;
;			} else {
;				if (dc < 0x10000) {	/* 3-byte sequence? */
;					*p++ = (TCHAR)(0xE0 | (dc >> 12 & 0x0F));
;					*p++ = (TCHAR)(0x80 | (dc >> 6 & 0x3F));
;					*p++ = (TCHAR)(0x80 | (dc >> 0 & 0x3F));
;					nc += 3;
;				} else {			/* 4-byte sequence? */
;					*p++ = (TCHAR)(0xF0 | (dc >> 18 & 0x07));
;					*p++ = (TCHAR)(0x80 | (dc >> 12 & 0x3F));
;					*p++ = (TCHAR)(0x80 | (dc >> 6 & 0x3F));
;					*p++ = (TCHAR)(0x80 | (dc >> 0 & 0x3F));
;					nc += 4;
;				}
;			}
;		}
;#endif
;	}
;
;#else			/* Byte-by-byte read without any conversion (ANSI/OEM API) */
;	len -= 1;	/* Make a room for the terminator */
nc_1	set	0
p_1	set	2
s_1	set	6
rc_1	set	10
dc_1	set	12
	.sym	nc,0,5,1,16
	.sym	p,2,142,1,32
	.sym	s,6,110,1,0,4
	.sym	rc,10,16,1,16
	.sym	dc,12,18,1,32
	.sym	buff,4,142,6,32
	.sym	len,8,5,6,16
	.sym	fp,10,138,6,32,82
	stz	<L796+nc_1
	lda	<L795+buff_0
	sta	<L796+p_1
	lda	<L795+buff_0+2
	sta	<L796+p_1+2
	.line	6557
	dec	<L795+len_0
;	while (nc < len) {
	.line	6558
L10427:
	sec
	lda	<L796+nc_1
	sbc	<L795+len_0
	bvs	L798
	eor	#$8000
L798:
	bpl	L799
	brl	L10428
L799:
	.line	6558
;		f_read(fp, s, 1, &rc);	/* Get a byte */
	.line	6559
	pea	#0
	clc
	tdc
	adc	#<L796+rc_1
	pha
	pea	#<$1
	pea	#0
	clc
	tdc
	adc	#<L796+s_1
	pha
	pei	<L795+fp_0+2
	pei	<L795+fp_0
	jsl	~~f_read
;		if (rc != 1) break;		/* EOF? */
	.line	6560
	lda	<L796+rc_1
	cmp	#<$1
	beq	L800
	brl	L10428
L800:
;		dc = s[0];
	.line	6561
	lda	<L796+s_1
	and	#$ff
	sta	<L796+dc_1
	stz	<L796+dc_1+2
;		if (FF_USE_STRFUNC == 2 && dc == '\r') continue;
	.line	6562
	brl	L801
	lda	<L796+dc_1
	cmp	#<$d
	bne	L802
	lda	<L796+dc_1+2
	cmp	#^$d
L802:
	bne	L803
	brl	L10427
L803:
L801:
;		*p++ = (TCHAR)dc; nc++;
	.line	6563
	sep	#$20
	longa	off
	lda	<L796+dc_1
	sta	[<L796+p_1]
	rep	#$20
	longa	on
	inc	<L796+p_1
	bne	L804
	inc	<L796+p_1+2
L804:
	.line	6563
	inc	<L796+nc_1
;		if (dc == '\n') break;
	.line	6564
	lda	<L796+dc_1
	cmp	#<$a
	bne	L805
	lda	<L796+dc_1+2
	cmp	#^$a
L805:
	bne	L806
	brl	L10428
L806:
;	}
	.line	6565
	brl	L10427
L10428:
;#endif
;
;	*p = 0;		/* Terminate the string */
	.line	6568
	sep	#$20
	longa	off
	lda	#$0
	sta	[<L796+p_1]
	rep	#$20
	longa	on
;	return nc ? buff : 0;	/* When no data read due to EOF or error, return with error. */
	.line	6569
	lda	<L796+nc_1
	bne	L808
	brl	L807
L808:
	ldx	<L795+buff_0+2
	lda	<L795+buff_0
	bra	L809
L807:
	lda	#$0
	tax
	lda	#$0
L809:
	sta	<R0
	stx	<R0+2
	ldx	<R0+2
	lda	<R0
L810:
	tay
	lda	<L795+2
	sta	<L795+2+10
	lda	<L795+1
	sta	<L795+1+10
	pld
	tsc
	clc
	adc	#L795+10
	tcs
	tya
	rtl
;}
	.line	6570
	.endblock	6570
L795	equ	20
L796	equ	5
	ends
	efunc
	.endfunc	6570,5,20
	.line	6570
;
;
;
;
;#if !FF_FS_READONLY
;#include <stdarg.h>
	.file	"G:\devtools\WDCTools\wdc\Tools\include\stdarg.h",0
	.line	51
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\ff.c",6576
;/*-----------------------------------------------------------------------*/
;/* Put a Character to the File (sub-functions)                           */
;/*-----------------------------------------------------------------------*/
;
;/* Putchar output buffer and work area */
;
;typedef struct {
;	FIL *fp;		/* Ptr to the writing file */
;	int idx, nchr;	/* Write index of buf[] (-1:error), number of encoding units written */
;#if FF_USE_LFN && FF_LFN_UNICODE == 1
;	WCHAR hs;
;#elif FF_USE_LFN && FF_LFN_UNICODE == 2
;	BYTE bs[4];
;	UINT wi, ct;
;#endif
;	BYTE buf[64];	/* Write buffer */
;} putbuff;
	.stag	fake86_,576,86
	.member	fp,0,138,8,32,82
	.member	idx,32,5,8,16
	.member	nchr,48,5,8,16
	.member	buf,64,110,8,0,64
	.eos
;
;
;/* Buffered write with code conversion */
;
;static void putc_bfd (putbuff* pb, TCHAR c)
;{
	.line	6598
	.line	6599
	FFDOS
	func
	.function	6599
~~putc_bfd:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L811
	tcs
	phd
	tcd
pb_0	set	4
c_0	set	8
	.block	6599
;	UINT n;
;	int i, nc;
;#if FF_USE_LFN && FF_LFN_UNICODE
;	WCHAR hs, wc;
;#if FF_LFN_UNICODE == 2
;	DWORD dc;
;	TCHAR *tp;
;#endif
;#endif
;
;	if (FF_USE_STRFUNC == 2 && c == '\n') {	 /* LF -> CRLF conversion */
n_1	set	0
i_1	set	2
nc_1	set	4
	.sym	n,0,16,1,16
	.sym	i,2,5,1,16
	.sym	nc,4,5,1,16
	.sym	pb,4,138,6,32,86
	.sym	c,8,14,6,8
	.line	6610
	brl	L10429
	sep	#$20
	longa	off
	lda	<L811+c_0
	cmp	#<$a
	rep	#$20
	longa	on
	beq	L814
	brl	L10429
L814:
	.line	6610
;		putc_bfd(pb, '\r');
	.line	6611
	pea	#<$d
	pei	<L811+pb_0+2
	pei	<L811+pb_0
	jsl	~~putc_bfd
;	}
	.line	6612
;
;	i = pb->idx;			/* Write index of pb->buf[] */
L10429:
	.line	6614
	ldy	#$4
	lda	[<L811+pb_0],Y
	sta	<L812+i_1
;	if (i < 0) return;
	.line	6615
	lda	<L812+i_1
	bmi	L815
	brl	L10430
L815:
	.line	6615
L816:
	lda	<L811+2
	sta	<L811+2+6
	lda	<L811+1
	sta	<L811+1+6
	pld
	tsc
	clc
	adc	#L811+6
	tcs
	rtl
;	nc = pb->nchr;			/* Write unit counter */
L10430:
	.line	6616
	ldy	#$6
	lda	[<L811+pb_0],Y
	sta	<L812+nc_1
;
;#if FF_USE_LFN && FF_LFN_UNICODE
;#if FF_LFN_UNICODE == 1		/* UTF-16 input */
;	if (IsSurrogateH(c)) {	/* High surrogate? */
;		pb->hs = c; return;	/* Save it for next */
;	}
;	hs = pb->hs; pb->hs = 0;
;	if (hs != 0) {			/* There is a leading high surrogate */
;		if (!IsSurrogateL(c)) hs = 0;	/* Discard high surrogate if not a surrogate pair */
;	} else {
;		if (IsSurrogateL(c)) return;	/* Discard stray low surrogate */
;	}
;	wc = c;
;#elif FF_LFN_UNICODE == 2	/* UTF-8 input */
;	for (;;) {
;		if (pb->ct == 0) {	/* Out of multi-byte sequence? */
;			pb->bs[pb->wi = 0] = (BYTE)c;	/* Save 1st byte */
;			if ((BYTE)c < 0x80) break;					/* Single byte? */
;			if (((BYTE)c & 0xE0) == 0xC0) pb->ct = 1;	/* 2-byte sequence? */
;			if (((BYTE)c & 0xF0) == 0xE0) pb->ct = 2;	/* 3-byte sequence? */
;			if (((BYTE)c & 0xF1) == 0xF0) pb->ct = 3;	/* 4-byte sequence? */
;			return;
;		} else {				/* In the multi-byte sequence */
;			if (((BYTE)c & 0xC0) != 0x80) {	/* Broken sequence? */
;				pb->ct = 0; continue;
;			}
;			pb->bs[++pb->wi] = (BYTE)c;	/* Save the trailing byte */
;			if (--pb->ct == 0) break;	/* End of multi-byte sequence? */
;			return;
;		}
;	}
;	tp = (TCHAR*)pb->bs;
;	dc = tchar2uni(&tp);	/* UTF-8 ==> UTF-16 */
;	if (dc == 0xFFFFFFFF) return;	/* Wrong code? */
;	wc = (WCHAR)dc;
;	hs = (WCHAR)(dc >> 16);
;#elif FF_LFN_UNICODE == 3	/* UTF-32 input */
;	if (IsSurrogate(c) || c >= 0x110000) return;	/* Discard invalid code */
;	if (c >= 0x10000) {		/* Out of BMP? */
;		hs = (WCHAR)(0xD800 | ((c >> 10) - 0x40)); 	/* Make high surrogate */
;		wc = 0xDC00 | (c & 0x3FF);					/* Make low surrogate */
;	} else {
;		hs = 0;
;		wc = (WCHAR)c;
;	}
;#endif
;	/* A code point in UTF-16 is available in hs and wc */
;
;#if FF_STRF_ENCODE == 1		/* Write a code point in UTF-16LE */
;	if (hs != 0) {	/* Surrogate pair? */
;		st_word(&pb->buf[i], hs);
;		i += 2;
;		nc++;
;	}
;	st_word(&pb->buf[i], wc);
;	i += 2;
;#elif FF_STRF_ENCODE == 2	/* Write a code point in UTF-16BE */
;	if (hs != 0) {	/* Surrogate pair? */
;		pb->buf[i++] = (BYTE)(hs >> 8);
;		pb->buf[i++] = (BYTE)hs;
;		nc++;
;	}
;	pb->buf[i++] = (BYTE)(wc >> 8);
;	pb->buf[i++] = (BYTE)wc;
;#elif FF_STRF_ENCODE == 3	/* Write a code point in UTF-8 */
;	if (hs != 0) {	/* 4-byte sequence? */
;		nc += 3;
;		hs = (hs & 0x3FF) + 0x40;
;		pb->buf[i++] = (BYTE)(0xF0 | hs >> 8);
;		pb->buf[i++] = (BYTE)(0x80 | (hs >> 2 & 0x3F));
;		pb->buf[i++] = (BYTE)(0x80 | (hs & 3) << 4 | (wc >> 6 & 0x0F));
;		pb->buf[i++] = (BYTE)(0x80 | (wc & 0x3F));
;	} else {
;		if (wc < 0x80) {	/* Single byte? */
;			pb->buf[i++] = (BYTE)wc;
;		} else {
;			if (wc < 0x800) {	/* 2-byte sequence? */
;				nc += 1;
;				pb->buf[i++] = (BYTE)(0xC0 | wc >> 6);
;			} else {			/* 3-byte sequence */
;				nc += 2;
;				pb->buf[i++] = (BYTE)(0xE0 | wc >> 12);
;				pb->buf[i++] = (BYTE)(0x80 | (wc >> 6 & 0x3F));
;			}
;			pb->buf[i++] = (BYTE)(0x80 | (wc & 0x3F));
;		}
;	}
;#else						/* Write a code point in ANSI/OEM */
;	if (hs != 0) return;
;	wc = ff_uni2oem(wc, CODEPAGE);	/* UTF-16 ==> ANSI/OEM */
;	if (wc == 0) return;
;	if (wc >= 0x100) {
;		pb->buf[i++] = (BYTE)(wc >> 8); nc++;
;	}
;	pb->buf[i++] = (BYTE)wc;
;#endif
;
;#else									/* ANSI/OEM input (without re-encoding) */
;	pb->buf[i++] = (BYTE)c;
	.line	6715
	clc
	lda	#$8
	adc	<L812+i_1
	sta	<R0
	sep	#$20
	longa	off
	lda	<L811+c_0
	ldy	<R0
	sta	[<L811+pb_0],Y
	rep	#$20
	longa	on
	inc	<L812+i_1
;#endif
;
;	if (i >= (int)(sizeof pb->buf) - 4) {	/* Write buffered characters to the file */
	.line	6718
	sec
	lda	<L812+i_1
	sbc	#<$3c
	bvs	L817
	eor	#$8000
L817:
	bmi	L818
	brl	L10431
L818:
	.line	6718
;		f_write(pb->fp, pb->buf, (UINT)i, &n);
	.line	6719
	pea	#0
	clc
	tdc
	adc	#<L812+n_1
	pha
	pei	<L812+i_1
	clc
	lda	#$8
	adc	<L811+pb_0
	sta	<R0
	lda	#$0
	adc	<L811+pb_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$2
	lda	[<L811+pb_0],Y
	pha
	lda	[<L811+pb_0]
	pha
	jsl	~~f_write
;		i = (n == (UINT)i) ? 0 : -1;
	.line	6720
	lda	<L812+n_1
	cmp	<L812+i_1
	beq	L820
	brl	L819
L820:
	lda	#$0
	bra	L821
L819:
	lda	#$ffff
L821:
	sta	<L812+i_1
;	}
	.line	6721
;	pb->idx = i;
L10431:
	.line	6722
	lda	<L812+i_1
	ldy	#$4
	sta	[<L811+pb_0],Y
;	pb->nchr = nc + 1;
	.line	6723
	lda	<L812+nc_1
	ina
	ldy	#$6
	sta	[<L811+pb_0],Y
;}
	.line	6724
	brl	L816
	.endblock	6724
L811	equ	10
L812	equ	5
	ends
	efunc
	.endfunc	6724,5,10
	.line	6724
;
;
;/* Flush remaining characters in the buffer */
;
;static int putc_flush (putbuff* pb)
;{
	.line	6729
	.line	6730
	FFDOS
	func
	.function	6730
~~putc_flush:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L822
	tcs
	phd
	tcd
pb_0	set	4
	.block	6730
;	UINT nw;
;
;	if (   pb->idx >= 0	/* Flush buffered characters to the file */
nw_1	set	0
	.sym	nw,0,16,1,16
	.sym	pb,4,138,6,32,86
	.line	6733
;		&& f_write(pb->fp, pb->buf, (UINT)pb->idx, &nw) == FR_OK
;		&& (UINT)pb->idx == nw) return pb->nchr;
	ldy	#$4
	lda	[<L822+pb_0],Y
	bpl	L825
	brl	L10432
L825:
	pea	#0
	clc
	tdc
	adc	#<L823+nw_1
	pha
	ldy	#$4
	lda	[<L822+pb_0],Y
	pha
	clc
	lda	#$8
	adc	<L822+pb_0
	sta	<R0
	lda	#$0
	adc	<L822+pb_0+2
	sta	<R0+2
	pei	<R0+2
	pei	<R0
	ldy	#$2
	lda	[<L822+pb_0],Y
	pha
	lda	[<L822+pb_0]
	pha
	jsl	~~f_write
	tax
	beq	L826
	brl	L10432
L826:
	ldy	#$4
	lda	[<L822+pb_0],Y
	cmp	<L823+nw_1
	beq	L827
	brl	L10432
L827:
	.line	6735
	ldy	#$6
	lda	[<L822+pb_0],Y
L828:
	tay
	lda	<L822+2
	sta	<L822+2+4
	lda	<L822+1
	sta	<L822+1+4
	pld
	tsc
	clc
	adc	#L822+4
	tcs
	tya
	rtl
;	return EOF;
L10432:
	.line	6736
	lda	#$ffff
	brl	L828
;}
	.line	6737
	.endblock	6737
L822	equ	6
L823	equ	5
	ends
	efunc
	.endfunc	6737,5,6
	.line	6737
;
;
;/* Initialize write buffer */
;
;static void putc_init (putbuff* pb, FIL* fp)
;{
	.line	6742
	.line	6743
	FFDOS
	func
	.function	6743
~~putc_init:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L829
	tcs
	phd
	tcd
pb_0	set	4
fp_0	set	8
	.block	6743
;	mem_set(pb, 0, sizeof (putbuff));
	.sym	pb,4,138,6,32,86
	.sym	fp,8,138,6,32,82
	.line	6744
	pea	#<$48
	pea	#<$0
	pei	<L829+pb_0+2
	pei	<L829+pb_0
	jsl	~~mem_set
;	pb->fp = fp;
	.line	6745
	lda	<L829+fp_0
	sta	[<L829+pb_0]
	lda	<L829+fp_0+2
	ldy	#$2
	sta	[<L829+pb_0],Y
;}
	.line	6746
L832:
	lda	<L829+2
	sta	<L829+2+8
	lda	<L829+1
	sta	<L829+1+8
	pld
	tsc
	clc
	adc	#L829+8
	tcs
	rtl
	.endblock	6746
L829	equ	0
L830	equ	1
	ends
	efunc
	.endfunc	6746,1,0
	.line	6746
;
;
;
;int f_putc (
;	TCHAR c,	/* A character to be output */
;	FIL* fp		/* Pointer to the file object */
;)
;{
	.line	6750
	.line	6754
	FFDOS
	xdef	~~f_putc
	func
	.function	6754
~~f_putc:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L833
	tcs
	phd
	tcd
c_0	set	4
fp_0	set	6
	.block	6754
;	putbuff pb;
;
;
;	putc_init(&pb, fp);
pb_1	set	0
	.sym	pb,0,10,1,576,86
	.sym	c,4,14,6,8
	.sym	fp,6,138,6,32,82
	.line	6758
	pei	<L833+fp_0+2
	pei	<L833+fp_0
	pea	#0
	clc
	tdc
	adc	#<L834+pb_1
	pha
	jsl	~~putc_init
;	putc_bfd(&pb, c);	/* Put the character */
	.line	6759
	pei	<L833+c_0
	pea	#0
	clc
	tdc
	adc	#<L834+pb_1
	pha
	jsl	~~putc_bfd
;	return putc_flush(&pb);
	.line	6760
	pea	#0
	clc
	tdc
	adc	#<L834+pb_1
	pha
	jsl	~~putc_flush
L836:
	tay
	lda	<L833+2
	sta	<L833+2+6
	lda	<L833+1
	sta	<L833+1+6
	pld
	tsc
	clc
	adc	#L833+6
	tcs
	tya
	rtl
;}
	.line	6761
	.endblock	6761
L833	equ	72
L834	equ	1
	ends
	efunc
	.endfunc	6761,1,72
	.line	6761
;
;
;
;
;/*-----------------------------------------------------------------------*/
;/* Put a String to the File                                              */
;/*-----------------------------------------------------------------------*/
;
;int f_puts (
;	const TCHAR* str,	/* Pointer to the string to be output */
;	FIL* fp				/* Pointer to the file object */
;)
;{
	.line	6770
	.line	6774
	FFDOS
	xdef	~~f_puts
	func
	.function	6774
~~f_puts:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L837
	tcs
	phd
	tcd
str_0	set	4
fp_0	set	8
	.block	6774
;	putbuff pb;
;
;
;	putc_init(&pb, fp);
pb_1	set	0
	.sym	pb,0,10,1,576,86
	.sym	str,4,142,6,32
	.sym	fp,8,138,6,32,82
	.line	6778
	pei	<L837+fp_0+2
	pei	<L837+fp_0
	pea	#0
	clc
	tdc
	adc	#<L838+pb_1
	pha
	jsl	~~putc_init
;	while (*str) putc_bfd(&pb, *str++);		/* Put the string */
	.line	6779
L10433:
	lda	[<L837+str_0]
	and	#$ff
	bne	L840
	brl	L10434
L840:
	.line	6779
	lda	<L837+str_0
	sta	<R0
	lda	<L837+str_0+2
	sta	<R0+2
	inc	<L837+str_0
	bne	L841
	inc	<L837+str_0+2
L841:
	lda	[<R0]
	pha
	pea	#0
	clc
	tdc
	adc	#<L838+pb_1
	pha
	jsl	~~putc_bfd
	brl	L10433
L10434:
;	return putc_flush(&pb);
	.line	6780
	pea	#0
	clc
	tdc
	adc	#<L838+pb_1
	pha
	jsl	~~putc_flush
L842:
	tay
	lda	<L837+2
	sta	<L837+2+8
	lda	<L837+1
	sta	<L837+1+8
	pld
	tsc
	clc
	adc	#L837+8
	tcs
	tya
	rtl
;}
	.line	6781
	.endblock	6781
L837	equ	76
L838	equ	5
	ends
	efunc
	.endfunc	6781,5,76
	.line	6781
;
;
;
;
;/*-----------------------------------------------------------------------*/
;/* Put a Formatted String to the File                                    */
;/*-----------------------------------------------------------------------*/
;
;int f_printf (
;	FIL* fp,			/* Pointer to the file object */
;	const TCHAR* fmt,	/* Pointer to the format string */
;	...					/* Optional arguments... */
;)
;{
	.line	6790
	.line	6795
	FFDOS
	xdef	~~f_printf
	func
	.function	6795
~~f_printf:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L843
	tcs
	phd
	tcd
fp_0	set	6
fmt_0	set	10
	.block	6795
;	va_list arp;
;	putbuff pb;
;	BYTE f, r;
;	UINT i, j, w;
;	DWORD v;
;	TCHAR c, d, str[32], *p;
;
;
;	putc_init(&pb, fp);
arp_1	set	0
pb_1	set	4
f_1	set	76
r_1	set	77
i_1	set	78
j_1	set	80
w_1	set	82
v_1	set	84
c_1	set	88
d_1	set	89
str_1	set	90
p_1	set	122
	.sym	arp,0,142,1,32
	.sym	pb,4,10,1,576,86
	.sym	f,76,14,1,8
	.sym	r,77,14,1,8
	.sym	i,78,16,1,16
	.sym	j,80,16,1,16
	.sym	w,82,16,1,16
	.sym	v,84,18,1,32
	.sym	c,88,14,1,8
	.sym	d,89,14,1,8
	.sym	str,90,110,1,0,32
	.sym	p,122,142,1,32
	.sym	fp,6,138,6,32,82
	.sym	fmt,10,142,6,32
	.line	6804
	pei	<L843+fp_0+2
	pei	<L843+fp_0
	pea	#0
	clc
	tdc
	adc	#<L844+pb_1
	pha
	jsl	~~putc_init
;
;	va_start(arp, fmt);
	.line	6806
	clc
	tdc
	adc	#<L843+fmt_0+4
	sta	<L844+arp_1
	lda	#$0
	sta	<L844+arp_1+2
;
;	for (;;) {
	.line	6808
L10437:
	.line	6808
;		c = *fmt++;
	.line	6809
	sep	#$20
	longa	off
	lda	[<L843+fmt_0]
	sta	<L844+c_1
	rep	#$20
	longa	on
	inc	<L843+fmt_0
	bne	L846
	inc	<L843+fmt_0+2
L846:
;		if (c == 0) break;			/* End of string */
	.line	6810
	lda	<L844+c_1
	and	#$ff
	bne	L847
	brl	L10436
L847:
;		if (c != '%') {				/* Non escape character */
	.line	6811
	sep	#$20
	longa	off
	lda	<L844+c_1
	cmp	#<$25
	rep	#$20
	longa	on
	bne	L848
	brl	L10438
L848:
	.line	6811
;			putc_bfd(&pb, c);
	.line	6812
	pei	<L844+c_1
	pea	#0
	clc
	tdc
	adc	#<L844+pb_1
	pha
	jsl	~~putc_bfd
;			continue;
	.line	6813
	brl	L10435
;		}
	.line	6814
;		w = f = 0;
L10438:
	.line	6815
	sep	#$20
	longa	off
	stz	<L844+f_1
	rep	#$20
	longa	on
	lda	#$0
	and	#$ff
	sta	<L844+w_1
;		c = *fmt++;
	.line	6816
	sep	#$20
	longa	off
	lda	[<L843+fmt_0]
	sta	<L844+c_1
	rep	#$20
	longa	on
	inc	<L843+fmt_0
	bne	L849
	inc	<L843+fmt_0+2
L849:
;		if (c == '0') {				/* Flag: '0' padding */
	.line	6817
	sep	#$20
	longa	off
	lda	<L844+c_1
	cmp	#<$30
	rep	#$20
	longa	on
	beq	L850
	brl	L10439
L850:
	.line	6817
;			f = 1; c = *fmt++;
	.line	6818
	sep	#$20
	longa	off
	lda	#$1
	sta	<L844+f_1
	rep	#$20
	longa	on
	.line	6818
	sep	#$20
	longa	off
	lda	[<L843+fmt_0]
	sta	<L844+c_1
	rep	#$20
	longa	on
	inc	<L843+fmt_0
	bne	L851
	inc	<L843+fmt_0+2
L851:
;		} else {
	.line	6819
	brl	L10440
L10439:
	.line	6819
;			if (c == '-') {			/* Flag: left justified */
	.line	6820
	sep	#$20
	longa	off
	lda	<L844+c_1
	cmp	#<$2d
	rep	#$20
	longa	on
	beq	L852
	brl	L10441
L852:
	.line	6820
;				f = 2; c = *fmt++;
	.line	6821
	sep	#$20
	longa	off
	lda	#$2
	sta	<L844+f_1
	rep	#$20
	longa	on
	.line	6821
	sep	#$20
	longa	off
	lda	[<L843+fmt_0]
	sta	<L844+c_1
	rep	#$20
	longa	on
	inc	<L843+fmt_0
	bne	L853
	inc	<L843+fmt_0+2
L853:
;			}
	.line	6822
;		}
L10441:
	.line	6823
L10440:
;		if (c == '*') {				/* Minimum width by argument */
	.line	6824
	sep	#$20
	longa	off
	lda	<L844+c_1
	cmp	#<$2a
	rep	#$20
	longa	on
	beq	L854
	brl	L10442
L854:
	.line	6824
;			w = va_arg(arp, int);
	.line	6825
	clc
	lda	#$2
	adc	<L844+arp_1
	sta	<L844+arp_1
	bcc	L855
	inc	<L844+arp_1+2
L855:
	clc
	lda	#$fffe
	adc	<L844+arp_1
	sta	<R0
	lda	#$ffff
	adc	<L844+arp_1+2
	sta	<R0+2
	lda	[<R0]
	sta	<L844+w_1
;			c = *fmt++;
	.line	6826
	sep	#$20
	longa	off
	lda	[<L843+fmt_0]
	sta	<L844+c_1
	rep	#$20
	longa	on
	inc	<L843+fmt_0
	bne	L856
	inc	<L843+fmt_0+2
L856:
;		} else {
	.line	6827
	brl	L10443
L10442:
	.line	6827
;			while (IsDigit(c)) {	/* Minimum width */
	.line	6828
L10444:
	sep	#$20
	longa	off
	lda	<L844+c_1
	cmp	#<$30
	rep	#$20
	longa	on
	bcs	L857
	brl	L10445
L857:
	sep	#$20
	longa	off
	lda	#$39
	cmp	<L844+c_1
	rep	#$20
	longa	on
	bcs	L858
	brl	L10445
L858:
	.line	6828
;				w = w * 10 + c - '0';
	.line	6829
	lda	<L844+c_1
	and	#$ff
	sta	<R0
	lda	<L844+w_1
	asl	A
	asl	A
	adc	<L844+w_1
	asl	A
	sta	<R1
	clc
	lda	<R1
	adc	<R0
	sta	<R2
	clc
	lda	#$ffd0
	adc	<R2
	sta	<L844+w_1
;				c = *fmt++;
	.line	6830
	sep	#$20
	longa	off
	lda	[<L843+fmt_0]
	sta	<L844+c_1
	rep	#$20
	longa	on
	inc	<L843+fmt_0
	bne	L859
	inc	<L843+fmt_0+2
L859:
;			}
	.line	6831
	brl	L10444
L10445:
;		}
	.line	6832
L10443:
;		if (c == 'l' || c == 'L') {	/* Type prefix: Size is long int */
	.line	6833
	sep	#$20
	longa	off
	lda	<L844+c_1
	cmp	#<$6c
	rep	#$20
	longa	on
	bne	L861
	brl	L860
L861:
	sep	#$20
	longa	off
	lda	<L844+c_1
	cmp	#<$4c
	rep	#$20
	longa	on
	beq	L862
	brl	L10446
L862:
L860:
	.line	6833
;			f |= 4; c = *fmt++;
	.line	6834
	sep	#$20
	longa	off
	lda	#$4
	tsb	<L844+f_1
	rep	#$20
	longa	on
	.line	6834
	sep	#$20
	longa	off
	lda	[<L843+fmt_0]
	sta	<L844+c_1
	rep	#$20
	longa	on
	inc	<L843+fmt_0
	bne	L863
	inc	<L843+fmt_0+2
L863:
;		}
	.line	6835
;		if (c == 0) break;
L10446:
	.line	6836
	lda	<L844+c_1
	and	#$ff
	bne	L864
	brl	L10436
L864:
;		d = c;
	.line	6837
	sep	#$20
	longa	off
	lda	<L844+c_1
	sta	<L844+d_1
	rep	#$20
	longa	on
;		if (IsLower(d)) d -= 0x20;
	.line	6838
	sep	#$20
	longa	off
	lda	<L844+d_1
	cmp	#<$61
	rep	#$20
	longa	on
	bcs	L865
	brl	L10447
L865:
	sep	#$20
	longa	off
	lda	#$7a
	cmp	<L844+d_1
	rep	#$20
	longa	on
	bcs	L866
	brl	L10447
L866:
	.line	6838
	lda	<L844+d_1
	and	#$ff
	sta	<R0
	clc
	lda	#$ffe0
	adc	<R0
	sta	<R1
	sep	#$20
	longa	off
	lda	<R1
	sta	<L844+d_1
	rep	#$20
	longa	on
;		switch (d) {				/* Atgument type is... */
L10447:
	.line	6839
	lda	<L844+d_1
	and	#$ff
	brl	L10448
	.line	6839
;		case 'S' :					/* String */
	.line	6840
L10450:
;			p = va_arg(arp, TCHAR*);
	.line	6841
	clc
	lda	#$4
	adc	<L844+arp_1
	sta	<L844+arp_1
	bcc	L867
	inc	<L844+arp_1+2
L867:
	clc
	lda	#$fffc
	adc	<L844+arp_1
	sta	<R0
	lda	#$ffff
	adc	<L844+arp_1+2
	sta	<R0+2
	lda	[<R0]
	sta	<L844+p_1
	ldy	#$2
	lda	[<R0],Y
	sta	<L844+p_1+2
;			for (j = 0; p[j]; j++) ;
	.line	6842
	stz	<L844+j_1
	brl	L10454
L10453:
	.line	6842
L10451:
	inc	<L844+j_1
L10454:
	ldy	<L844+j_1
	lda	[<L844+p_1],Y
	and	#$ff
	beq	L868
	brl	L10453
L868:
L10452:
;			if (!(f & 2)) {						/* Right padded */
	.line	6843
	sep	#$20
	longa	off
	lda	<L844+f_1
	and	#<$2
	rep	#$20
	longa	on
	beq	L869
	brl	L10455
L869:
	.line	6843
;				while (j++ < w) putc_bfd(&pb, ' ') ;
	.line	6844
L10456:
	lda	<L844+j_1
	sta	<R0
	inc	<L844+j_1
	lda	<R0
	cmp	<L844+w_1
	bcc	L870
	brl	L10457
L870:
	.line	6844
	pea	#<$20
	pea	#0
	clc
	tdc
	adc	#<L844+pb_1
	pha
	jsl	~~putc_bfd
	brl	L10456
L10457:
;			}
	.line	6845
;			while (*p) putc_bfd(&pb, *p++) ;		/* String body */
L10455:
	.line	6846
L10458:
	lda	[<L844+p_1]
	and	#$ff
	bne	L871
	brl	L10459
L871:
	.line	6846
	lda	<L844+p_1
	sta	<R0
	lda	<L844+p_1+2
	sta	<R0+2
	inc	<L844+p_1
	bne	L872
	inc	<L844+p_1+2
L872:
	lda	[<R0]
	pha
	pea	#0
	clc
	tdc
	adc	#<L844+pb_1
	pha
	jsl	~~putc_bfd
	brl	L10458
L10459:
;			while (j++ < w) putc_bfd(&pb, ' ') ;	/* Left padded */
	.line	6847
L10460:
	lda	<L844+j_1
	sta	<R0
	inc	<L844+j_1
	lda	<R0
	cmp	<L844+w_1
	bcc	L873
	brl	L10461
L873:
	.line	6847
	pea	#<$20
	pea	#0
	clc
	tdc
	adc	#<L844+pb_1
	pha
	jsl	~~putc_bfd
	brl	L10460
L10461:
;			continue;
	.line	6848
	brl	L10435
;
;		case 'C' :					/* Character */
	.line	6850
L10462:
;			putc_bfd(&pb, (TCHAR)va_arg(arp, int)); continue;
	.line	6851
	clc
	lda	#$2
	adc	<L844+arp_1
	sta	<L844+arp_1
	bcc	L874
	inc	<L844+arp_1+2
L874:
	clc
	lda	#$fffe
	adc	<L844+arp_1
	sta	<R0
	lda	#$ffff
	adc	<L844+arp_1+2
	sta	<R0+2
	lda	[<R0]
	pha
	pea	#0
	clc
	tdc
	adc	#<L844+pb_1
	pha
	jsl	~~putc_bfd
	.line	6851
	brl	L10435
;
;		case 'B' :					/* Unsigned binary */
	.line	6853
L10463:
;			r = 2; break;
	.line	6854
	sep	#$20
	longa	off
	lda	#$2
	sta	<L844+r_1
	rep	#$20
	longa	on
	.line	6854
	brl	L10449
;
;		case 'O' :					/* Unsigned octal */
	.line	6856
L10464:
;			r = 8; break;
	.line	6857
	sep	#$20
	longa	off
	lda	#$8
	sta	<L844+r_1
	rep	#$20
	longa	on
	.line	6857
	brl	L10449
;
;		case 'D' :					/* Signed decimal */
	.line	6859
L10465:
;		case 'U' :					/* Unsigned decimal */
	.line	6860
L10466:
;			r = 10; break;
	.line	6861
	sep	#$20
	longa	off
	lda	#$a
	sta	<L844+r_1
	rep	#$20
	longa	on
	.line	6861
	brl	L10449
;
;		case 'X' :					/* Unsigned hexdecimal */
	.line	6863
L10467:
;			r = 16; break;
	.line	6864
	sep	#$20
	longa	off
	lda	#$10
	sta	<L844+r_1
	rep	#$20
	longa	on
	.line	6864
	brl	L10449
;
;		default:					/* Unknown type (pass-through) */
	.line	6866
L10468:
;			putc_bfd(&pb, c); continue;
	.line	6867
	pei	<L844+c_1
	pea	#0
	clc
	tdc
	adc	#<L844+pb_1
	pha
	jsl	~~putc_bfd
	.line	6867
	brl	L10435
;		}
	.line	6868
L10448:
	xref	~~~swt
	jsl	~~~swt
	dw	7
	dw	66
	dw	L10463-1
	dw	67
	dw	L10462-1
	dw	68
	dw	L10465-1
	dw	79
	dw	L10464-1
	dw	83
	dw	L10450-1
	dw	85
	dw	L10466-1
	dw	88
	dw	L10467-1
	dw	L10468-1
L10449:
;
;		/* Get an argument and put it in numeral */
;		v = (f & 4) ? (DWORD)va_arg(arp, long) : ((d == 'D') ? (DWORD)(long)va_arg(arp, int) : (DWORD)va_arg(arp, unsigned int));
	.line	6871
	sep	#$20
	longa	off
	lda	<L844+f_1
	and	#<$4
	rep	#$20
	longa	on
	bne	L876
	brl	L875
L876:
	clc
	lda	#$4
	adc	<L844+arp_1
	sta	<L844+arp_1
	bcc	L877
	inc	<L844+arp_1+2
L877:
	clc
	lda	#$fffc
	adc	<L844+arp_1
	sta	<R0
	lda	#$ffff
	adc	<L844+arp_1+2
	sta	<R0+2
	ldy	#$2
	lda	[<R0],Y
	tax
	lda	[<R0]
	bra	L878
L875:
	sep	#$20
	longa	off
	lda	<L844+d_1
	cmp	#<$44
	rep	#$20
	longa	on
	beq	L880
	brl	L879
L880:
	clc
	lda	#$2
	adc	<L844+arp_1
	sta	<L844+arp_1
	bcc	L881
	inc	<L844+arp_1+2
L881:
	clc
	lda	#$fffe
	adc	<L844+arp_1
	sta	<R0
	lda	#$ffff
	adc	<L844+arp_1+2
	sta	<R0+2
	ldy	#$0
	lda	[<R0]
	bpl	L882
	dey
L882:
	sta	<R0
	sty	<R0+2
	ldx	<R0+2
	lda	<R0
	bra	L883
L879:
	clc
	lda	#$2
	adc	<L844+arp_1
	sta	<L844+arp_1
	bcc	L884
	inc	<L844+arp_1+2
L884:
	clc
	lda	#$fffe
	adc	<L844+arp_1
	sta	<R0
	lda	#$ffff
	adc	<L844+arp_1+2
	sta	<R0+2
	lda	[<R0]
	sta	<R0
	stz	<R0+2
	ldx	<R0+2
	lda	<R0
L883:
	sta	<R0
	stx	<R0+2
	ldx	<R0+2
	lda	<R0
L878:
	sta	<R0
	stx	<R0+2
	lda	<R0
	sta	<L844+v_1
	lda	<R0+2
	sta	<L844+v_1+2
;		if (d == 'D' && (v & 0x80000000)) {
	.line	6872
	sep	#$20
	longa	off
	lda	<L844+d_1
	cmp	#<$44
	rep	#$20
	longa	on
	beq	L885
	brl	L10469
L885:
	lda	<L844+v_1+2
	and	#^$80000000
	bne	L886
	brl	L10469
L886:
	.line	6872
;			v = 0 - v;
	.line	6873
	sec
	lda	#$0
	sbc	<L844+v_1
	sta	<L844+v_1
	lda	#$0
	sbc	<L844+v_1+2
	sta	<L844+v_1+2
;			f |= 8;
	.line	6874
	sep	#$20
	longa	off
	lda	#$8
	tsb	<L844+f_1
	rep	#$20
	longa	on
;		}
	.line	6875
;		i = 0;
L10469:
	.line	6876
	stz	<L844+i_1
;		do {
	.line	6877
L10472:
	.line	6877
;			d = (TCHAR)(v % r); v /= r;
	.line	6878
	lda	<L844+r_1
	and	#$ff
	sta	<R0
	stz	<R0+2
	pei	<R0+2
	pei	<R0
	pei	<L844+v_1+2
	pei	<L844+v_1
	xref	~~~lumd
	jsl	~~~lumd
	sta	<R0
	stx	<R0+2
	sep	#$20
	longa	off
	lda	<R0
	sta	<L844+d_1
	rep	#$20
	longa	on
	.line	6878
	lda	<L844+r_1
	and	#$ff
	sta	<R0
	stz	<R0+2
	pei	<R0+2
	pei	<R0
	pei	<L844+v_1+2
	pei	<L844+v_1
	xref	~~~ludv
	jsl	~~~ludv
	sta	<L844+v_1
	stx	<L844+v_1+2
;			if (d > 9) d += (c == 'x') ? 0x27 : 0x07;
	.line	6879
	sep	#$20
	longa	off
	lda	#$9
	cmp	<L844+d_1
	rep	#$20
	longa	on
	bcc	L887
	brl	L10473
L887:
	.line	6879
	lda	<L844+d_1
	and	#$ff
	sta	<R0
	sep	#$20
	longa	off
	lda	<L844+c_1
	cmp	#<$78
	rep	#$20
	longa	on
	beq	L889
	brl	L888
L889:
	lda	#$27
	bra	L890
L888:
	lda	#$7
L890:
	sta	<R1
	clc
	lda	<R1
	adc	<R0
	sta	<R2
	sep	#$20
	longa	off
	lda	<R2
	sta	<L844+d_1
	rep	#$20
	longa	on
;			str[i++] = d + '0';
L10473:
	.line	6880
	sep	#$20
	longa	off
	clc
	lda	#$30
	adc	<L844+d_1
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	ldx	<L844+i_1
	sta	<L844+str_1,X
	rep	#$20
	longa	on
	inc	<L844+i_1
;		} while (v && i < sizeof str / sizeof *str);
	.line	6881
L10470:
	lda	<L844+v_1
	ora	<L844+v_1+2
	bne	L892
	brl	L891
L892:
	lda	<L844+i_1
	cmp	#<$20
	bcs	L893
	brl	L10472
L893:
L891:
L10471:
;		if (f & 8) str[i++] = '-';
	.line	6882
	sep	#$20
	longa	off
	lda	<L844+f_1
	and	#<$8
	rep	#$20
	longa	on
	bne	L894
	brl	L10474
L894:
	.line	6882
	sep	#$20
	longa	off
	lda	#$2d
	ldx	<L844+i_1
	sta	<L844+str_1,X
	rep	#$20
	longa	on
	inc	<L844+i_1
;		j = i; d = (f & 1) ? '0' : ' ';
L10474:
	.line	6883
	lda	<L844+i_1
	sta	<L844+j_1
	.line	6883
	sep	#$20
	longa	off
	lda	<L844+f_1
	and	#<$1
	rep	#$20
	longa	on
	bne	L896
	brl	L895
L896:
	lda	#$30
	bra	L897
L895:
	lda	#$20
L897:
	sta	<R0
	sep	#$20
	longa	off
	lda	<R0
	sta	<L844+d_1
	rep	#$20
	longa	on
;		if (!(f & 2)) {
	.line	6884
	sep	#$20
	longa	off
	lda	<L844+f_1
	and	#<$2
	rep	#$20
	longa	on
	beq	L898
	brl	L10475
L898:
	.line	6884
;			while (j++ < w) putc_bfd(&pb, d);	/* Right pad */
	.line	6885
L10476:
	lda	<L844+j_1
	sta	<R0
	inc	<L844+j_1
	lda	<R0
	cmp	<L844+w_1
	bcc	L899
	brl	L10477
L899:
	.line	6885
	pei	<L844+d_1
	pea	#0
	clc
	tdc
	adc	#<L844+pb_1
	pha
	jsl	~~putc_bfd
	brl	L10476
L10477:
;		}
	.line	6886
;		do {
L10475:
	.line	6887
L10480:
	.line	6887
;			putc_bfd(&pb, str[--i]);			/* Number body */
	.line	6888
	dec	<L844+i_1
	ldx	<L844+i_1
	lda	<L844+str_1,X
	pha
	pea	#0
	clc
	tdc
	adc	#<L844+pb_1
	pha
	jsl	~~putc_bfd
;		} while (i);
	.line	6889
L10478:
	lda	<L844+i_1
	beq	L900
	brl	L10480
L900:
L10479:
;		while (j++ < w) putc_bfd(&pb, d);		/* Left pad */
	.line	6890
L10481:
	lda	<L844+j_1
	sta	<R0
	inc	<L844+j_1
	lda	<R0
	cmp	<L844+w_1
	bcc	L901
	brl	L10482
L901:
	.line	6890
	pei	<L844+d_1
	pea	#0
	clc
	tdc
	adc	#<L844+pb_1
	pha
	jsl	~~putc_bfd
	brl	L10481
L10482:
;	}
	.line	6891
L10435:
	brl	L10437
L10436:
;
;	va_end(arp);
	.line	6893
;
;	return putc_flush(&pb);
	.line	6895
	pea	#0
	clc
	tdc
	adc	#<L844+pb_1
	pha
	jsl	~~putc_flush
L902:
	tay
	phx
	ldx	<L843+4
	lda	<L843+2
	sta	<L843+2,X
	lda	<L843+1
	sta	<L843+1,X
	txa
	plx
	pld
	pha
	tsc
	clc
	adc	#L843+2
	adc	<1,s
	tcs
	tya
	rtl
;}
	.line	6896
	.endblock	6896
L843	equ	138
L844	equ	13
	ends
	efunc
	.endfunc	6896,13,138
	.line	6896
;
;#endif /* !FF_FS_READONLY */
;#endif /* FF_USE_STRFUNC */
;
;
;
;#if FF_CODE_PAGE == 0
;/*-----------------------------------------------------------------------*/
;/* Set Active Codepage for the Path Name                                 */
;/*-----------------------------------------------------------------------*/
;
;FRESULT f_setcp (
;	WORD cp		/* Value to be set as active code page */
;)
;{
;	static const WORD       validcp[] = {  437,   720,   737,   771,   775,   850,   852,   857,   860,   861,   862,   863,   864,   865,   866,   869,   932,   936,   949,   950, 0};
;	static const BYTE* const tables[] = {Ct437, Ct720, Ct737, Ct771, Ct775, Ct850, Ct852, Ct857, Ct860, Ct861, Ct862, Ct863, Ct864, Ct865, Ct866, Ct869, Dc932, Dc936, Dc949, Dc950, 0};
;	UINT i;
;
;
;	for (i = 0; validcp[i] != 0 && validcp[i] != cp; i++) ;	/* Find the code page */
;	if (validcp[i] != cp) return FR_INVALID_PARAMETER;	/* Not found? */
;
;	CodePage = cp;
;	if (cp >= 900) {	/* DBCS */
;		ExCvt = 0;
;		DbcTbl = tables[i];
;	} else {			/* SBCS */
;		ExCvt = tables[i];
;		DbcTbl = 0;
;	}
;	return FR_OK;
;}
;#endif	/* FF_CODE_PAGE == 0 */
;
;
	.line	6931
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\ff.c",6790
	xref	~~k_debug_pointer
	xref	~~k_debug_hex
	xref	~~k_debug_integer
	xref	~~k_debug_long
	xref	~~k_debug_string
	xref	~~disk_ioctl
	xref	~~disk_write
	xref	~~disk_read
	xref	~~disk_status
	xref	~~disk_initialize
	udata
~~Fsid
	ds	2
	ends
	udata
~~FatFs
	ds	4
	ends
	.sym	~~putc_init,~~putc_init,65,3,0
	.sym	~~putc_flush,~~putc_flush,69,3,0
	.sym	~~putc_bfd,~~putc_bfd,65,3,0
	.sym	putbuff,0,10,14,576,86
	.sym	~~validate,~~validate,69,3,0
	.sym	~~k_debug_pointer,~~k_debug_pointer,69,18,0
	.sym	~~mount_volume,~~mount_volume,69,3,0
	.sym	~~find_volume,~~find_volume,80,3,0
	.sym	~~k_debug_hex,~~k_debug_hex,69,18,0
	.sym	~~k_debug_integer,~~k_debug_integer,69,18,0
	.sym	~~k_debug_long,~~k_debug_long,69,18,0
	.sym	~~check_fs,~~check_fs,80,3,0
	.sym	~~get_ldnumber,~~get_ldnumber,69,3,0
	.sym	~~k_debug_string,~~k_debug_string,69,18,0
	.sym	~~follow_path,~~follow_path,69,3,0
	.sym	~~create_name,~~create_name,69,3,0
	.sym	~~get_fileinfo,~~get_fileinfo,65,3,0
	.sym	~~dir_remove,~~dir_remove,69,3,0
	.sym	~~dir_register,~~dir_register,69,3,0
	.sym	~~dir_find,~~dir_find,69,3,0
	.sym	~~dir_read,~~dir_read,69,3,0
	.sym	~~st_clust,~~st_clust,65,3,0
	.sym	~~ld_clust,~~ld_clust,82,3,0
	.sym	~~dir_alloc,~~dir_alloc,69,3,0
	.sym	~~dir_next,~~dir_next,69,3,0
	.sym	~~dir_sdi,~~dir_sdi,69,3,0
	.sym	~~dir_clear,~~dir_clear,69,3,0
	.sym	~~create_chain,~~create_chain,82,3,0
	.sym	~~remove_chain,~~remove_chain,69,3,0
	.sym	~~put_fat,~~put_fat,69,3,0
	.sym	~~get_fat,~~get_fat,82,3,0
	.sym	~~clst2sect,~~clst2sect,82,3,0
	.sym	~~sync_fs,~~sync_fs,69,3,0
	.sym	~~move_window,~~move_window,69,3,0
	.sym	~~sync_window,~~sync_window,69,3,0
	.sym	~~dbc_2nd,~~dbc_2nd,69,3,0
	.sym	~~dbc_1st,~~dbc_1st,69,3,0
	.sym	~~chk_chr,~~chk_chr,69,3,0
	.sym	~~mem_cmp,~~mem_cmp,69,3,0
	.sym	~~mem_set,~~mem_set,65,3,0
	.sym	~~mem_cpy,~~mem_cpy,65,3,0
	.sym	~~st_dword,~~st_dword,65,3,0
	.sym	~~st_word,~~st_word,65,3,0
	.sym	~~ld_dword,~~ld_dword,82,3,0
	.sym	~~ld_word,~~ld_word,69,3,0
	.sym	~~ExCvt,~~ExCvt,110,3,0,128
	.sym	~~Fsid,~~Fsid,5,3,16
	.sym	~~FatFs,~~FatFs,1130,3,32,80,1
	.sym	va_list,0,142,14,32
	.sym	~~disk_ioctl,~~disk_ioctl,69,18,0
	.sym	~~disk_write,~~disk_write,69,18,0
	.sym	~~disk_read,~~disk_read,69,18,0
	.sym	~~disk_status,~~disk_status,78,18,0
	.sym	~~disk_initialize,~~disk_initialize,78,18,0
	.sym	DRESULT,0,5,14,16
	.sym	DSTATUS,0,14,14,8
	.sym	~~f_gets,~~f_gets,1102,2,32
	.sym	~~f_printf,~~f_printf,69,2,0
	.sym	~~f_puts,~~f_puts,69,2,0
	.sym	~~f_putc,~~f_putc,69,2,0
	.sym	~~f_mount,~~f_mount,69,2,0
	.sym	~~f_getfree,~~f_getfree,69,2,0
	.sym	~~f_stat,~~f_stat,69,2,0
	.sym	~~f_rename,~~f_rename,69,2,0
	.sym	~~f_unlink,~~f_unlink,69,2,0
	.sym	~~f_mkdir,~~f_mkdir,69,2,0
	.sym	~~f_readdir,~~f_readdir,69,2,0
	.sym	~~f_closedir,~~f_closedir,69,2,0
	.sym	~~f_opendir,~~f_opendir,69,2,0
	.sym	~~f_sync,~~f_sync,69,2,0
	.sym	~~f_truncate,~~f_truncate,69,2,0
	.sym	~~f_lseek,~~f_lseek,69,2,0
	.sym	~~f_write,~~f_write,69,2,0
	.sym	~~f_read,~~f_read,69,2,0
	.sym	~~f_close,~~f_close,69,2,0
	.sym	~~f_open,~~f_open,69,2,0
	.sym	FRESULT,0,5,14,16
	.sym	MKFS_PARM,0,10,14,80,85
	.sym	FILINFO,0,10,14,176,84
	.sym	DIR,0,10,14,352,83
	.sym	FIL,0,10,14,4400,82
	.sym	FFOBJID,0,10,14,128,81
	.sym	FATFS,0,10,14,4472,80
	.sym	LBA_t,0,18,14,32
	.sym	FSIZE_t,0,18,14,32
	.sym	TCHAR,0,14,14,8
	.sym	PFXDOSDEVICE,0,138,14,32,79
	.sym	FXDOSDEVICE,0,10,14,5648,79
	.sym	DOSINITDEVICE,0,641,14,32
	.sym	DOSSECTORWRITER,0,654,14,32
	.sym	DOSSECTORREADER,0,654,14,32
	.sym	PIDENTIFY_DEVICE_DATA,0,138,14,32,78
	.sym	IDENTIFY_DEVICE_DATA,0,10,14,4096,78
	.sym	PIDSECTOR,0,138,14,32,55
	.sym	IDSECTOR,0,10,14,2048,55
	.sym	PLFN,0,138,14,32,54
	.sym	LFN,0,10,14,256,54
	.sym	PFAT16ENTRYLONG,0,138,14,32,53
	.sym	FAT16ENTRYLONG,0,10,14,288,53
	.sym	PFAT16ENTRY,0,138,14,32,52
	.sym	FAT16ENTRY,0,10,14,256,52
	.sym	Fat16BootSector,0,10,14,4096,51
	.sym	PPARTITIONTABLE,0,138,14,32,50
	.sym	PARTITIONTABLE,0,10,14,128,50
	.sym	PFATBOOTSECTOR,0,138,14,32,49
	.sym	FATBOOTSECTOR,0,10,14,928,49
	.sym	fat_BS_t,0,10,14,688,48
	.sym	fat_extBS_16_t,0,10,14,192,47
	.sym	PFAT32EXT,0,138,14,32,46
	.sym	fat_extBS_32_t,0,10,14,416,46
	.sym	P_FX_FAT_DIR_INFO,0,138,14,32,45
	.sym	FX_FAT_DIR_INFO,0,10,14,256,45
	.sym	PFILEINFO,0,138,14,32,44
	.sym	FILEINFO,0,10,14,136,44
	.sym	PDISKINFO,0,138,14,32,43
	.sym	DISKINFO,0,10,14,416,43
	.sym	PDIRENTRY,0,138,14,32,42
	.sym	DIRENTRY,0,10,14,256,42
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

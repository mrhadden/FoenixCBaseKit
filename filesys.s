;:ts=8
R0	equ	1
R1	equ	5
R2	equ	9
R3	equ	13
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\FILE_SYS.C",0
;
;#include	"FILE_SYS.H"
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\FILE_SYS.H",0
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\FILE_SYS.H",6
	.line	124
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\FILE_SYS.C",2
;
;UINT8	CH376ReadBlock( PUINT8 buf )
;{
	.line	4
	.line	5
	code
	xdef	~~CH376ReadBlock
	func
	.function	5
~~CH376ReadBlock:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L2
	tcs
	phd
	tcd
buf_0	set	4
	.block	5
;	UINT8	s, l;
;	xWriteCH376Cmd( CMD01_RD_USB_DATA0 );
s_1	set	0
l_1	set	1
	.sym	s,0,14,1,8
	.sym	l,1,14,1,8
	.sym	buf,4,142,6,32
	.line	7
	pea	#<$27
	jsl	~~xWriteCH376Cmd
;	s = l = xReadCH376Data( );
	.line	8
	jsl	~~xReadCH376Data
	sep	#$20
	longa	off
	sta	<L3+l_1
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	lda	<L3+l_1
	sta	<L3+s_1
	rep	#$20
	longa	on
;	if ( l ) {
	.line	9
	lda	<L3+l_1
	and	#$ff
	bne	L5
	brl	L10001
L5:
	.line	9
;		do {
	.line	10
L10004:
	.line	10
;			*buf = xReadCH376Data( );
	.line	11
	jsl	~~xReadCH376Data
	sep	#$20
	longa	off
	sta	[<L2+buf_0]
	rep	#$20
	longa	on
;			buf ++;
	.line	12
	inc	<L2+buf_0
	bne	L6
	inc	<L2+buf_0+2
L6:
;		} while ( -- l );
	.line	13
L10002:
	sep	#$20
	longa	off
	dec	<L3+l_1
	rep	#$20
	longa	on
	lda	<L3+l_1
	and	#$ff
	beq	L7
	brl	L10004
L7:
L10003:
;	}
	.line	14
;	xEndCH376Cmd( );
L10001:
	.line	15
	jsl	~~xEndCH376Cmd
;	return( s );
	.line	16
	lda	<L3+s_1
	and	#$ff
L8:
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
	.line	17
	.endblock	17
L2	equ	2
L3	equ	1
	ends
	efunc
	.endfunc	17,1,2
	.line	17
;
;UINT8	CH376WriteReqBlock( PUINT8 buf )
;{
	.line	19
	.line	20
	code
	xdef	~~CH376WriteReqBlock
	func
	.function	20
~~CH376WriteReqBlock:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L9
	tcs
	phd
	tcd
buf_0	set	4
	.block	20
;	UINT8	s, l;
;	xWriteCH376Cmd( CMD01_WR_REQ_DATA );
s_1	set	0
l_1	set	1
	.sym	s,0,14,1,8
	.sym	l,1,14,1,8
	.sym	buf,4,142,6,32
	.line	22
	pea	#<$2d
	jsl	~~xWriteCH376Cmd
;	s = l = xReadCH376Data( );
	.line	23
	jsl	~~xReadCH376Data
	sep	#$20
	longa	off
	sta	<L10+l_1
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	lda	<L10+l_1
	sta	<L10+s_1
	rep	#$20
	longa	on
;	if ( l ) {
	.line	24
	lda	<L10+l_1
	and	#$ff
	bne	L12
	brl	L10005
L12:
	.line	24
;		do {
	.line	25
L10008:
	.line	25
;			xWriteCH376Data( *buf );
	.line	26
	lda	[<L9+buf_0]
	pha
	jsl	~~xWriteCH376Data
;			buf ++;
	.line	27
	inc	<L9+buf_0
	bne	L13
	inc	<L9+buf_0+2
L13:
;		} while ( -- l );
	.line	28
L10006:
	sep	#$20
	longa	off
	dec	<L10+l_1
	rep	#$20
	longa	on
	lda	<L10+l_1
	and	#$ff
	beq	L14
	brl	L10008
L14:
L10007:
;	}
	.line	29
;	xEndCH376Cmd( );
L10005:
	.line	30
	jsl	~~xEndCH376Cmd
;	return( s );
	.line	31
	lda	<L10+s_1
	and	#$ff
L15:
	tay
	lda	<L9+2
	sta	<L9+2+4
	lda	<L9+1
	sta	<L9+1+4
	pld
	tsc
	clc
	adc	#L9+4
	tcs
	tya
	rtl
;}
	.line	32
	.endblock	32
L9	equ	2
L10	equ	1
	ends
	efunc
	.endfunc	32,1,2
	.line	32
;
;void	CH376WriteHostBlock( PUINT8 buf, UINT8 len )
;{
	.line	34
	.line	35
	code
	xdef	~~CH376WriteHostBlock
	func
	.function	35
~~CH376WriteHostBlock:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L16
	tcs
	phd
	tcd
buf_0	set	4
len_0	set	8
	.block	35
;	xWriteCH376Cmd( CMD10_WR_HOST_DATA );
	.sym	buf,4,142,6,32
	.sym	len,8,14,6,8
	.line	36
	pea	#<$2c
	jsl	~~xWriteCH376Cmd
;	xWriteCH376Data( len );
	.line	37
	pei	<L16+len_0
	jsl	~~xWriteCH376Data
;	if ( len ) {
	.line	38
	lda	<L16+len_0
	and	#$ff
	bne	L19
	brl	L10009
L19:
	.line	38
;		do {
	.line	39
L10012:
	.line	39
;			xWriteCH376Data( *buf );
	.line	40
	lda	[<L16+buf_0]
	pha
	jsl	~~xWriteCH376Data
;			buf ++;
	.line	41
	inc	<L16+buf_0
	bne	L20
	inc	<L16+buf_0+2
L20:
;		} while ( -- len );
	.line	42
L10010:
	sep	#$20
	longa	off
	dec	<L16+len_0
	rep	#$20
	longa	on
	lda	<L16+len_0
	and	#$ff
	beq	L21
	brl	L10012
L21:
L10011:
;	}
	.line	43
;	xEndCH376Cmd( );
L10009:
	.line	44
	jsl	~~xEndCH376Cmd
;}
	.line	45
L22:
	lda	<L16+2
	sta	<L16+2+6
	lda	<L16+1
	sta	<L16+1+6
	pld
	tsc
	clc
	adc	#L16+6
	tcs
	rtl
	.endblock	45
L16	equ	0
L17	equ	1
	ends
	efunc
	.endfunc	45,1,0
	.line	45
;
;void	CH376WriteOfsBlock( PUINT8 buf, UINT8 ofs, UINT8 len )
;{
	.line	47
	.line	48
	code
	xdef	~~CH376WriteOfsBlock
	func
	.function	48
~~CH376WriteOfsBlock:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L23
	tcs
	phd
	tcd
buf_0	set	4
ofs_0	set	8
len_0	set	10
	.block	48
;	xWriteCH376Cmd( CMD20_WR_OFS_DATA );
	.sym	buf,4,142,6,32
	.sym	ofs,8,14,6,8
	.sym	len,10,14,6,8
	.line	49
	pea	#<$2e
	jsl	~~xWriteCH376Cmd
;	xWriteCH376Data( ofs );
	.line	50
	pei	<L23+ofs_0
	jsl	~~xWriteCH376Data
;	xWriteCH376Data( len );
	.line	51
	pei	<L23+len_0
	jsl	~~xWriteCH376Data
;	if ( len ) {
	.line	52
	lda	<L23+len_0
	and	#$ff
	bne	L26
	brl	L10013
L26:
	.line	52
;		do {
	.line	53
L10016:
	.line	53
;			xWriteCH376Data( *buf );
	.line	54
	lda	[<L23+buf_0]
	pha
	jsl	~~xWriteCH376Data
;			buf ++;
	.line	55
	inc	<L23+buf_0
	bne	L27
	inc	<L23+buf_0+2
L27:
;		} while ( -- len );
	.line	56
L10014:
	sep	#$20
	longa	off
	dec	<L23+len_0
	rep	#$20
	longa	on
	lda	<L23+len_0
	and	#$ff
	beq	L28
	brl	L10016
L28:
L10015:
;	}
	.line	57
;	xEndCH376Cmd( );
L10013:
	.line	58
	jsl	~~xEndCH376Cmd
;}
	.line	59
L29:
	lda	<L23+2
	sta	<L23+2+8
	lda	<L23+1
	sta	<L23+1+8
	pld
	tsc
	clc
	adc	#L23+8
	tcs
	rtl
	.endblock	59
L23	equ	0
L24	equ	1
	ends
	efunc
	.endfunc	59,1,0
	.line	59
;
;void	CH376SetFileName( PUINT8 name )
;{
	.line	61
	.line	62
	code
	xdef	~~CH376SetFileName
	func
	.function	62
~~CH376SetFileName:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L30
	tcs
	phd
	tcd
name_0	set	4
	.block	62
;/*	UINT8	i;*/
;	UINT8	c;
;#ifndef	DEF_IC_V43_U
;	UINT8	s;
;	xWriteCH376Cmd( CMD01_GET_IC_VER );
c_1	set	0
s_1	set	1
	.sym	c,0,14,1,8
	.sym	s,1,14,1,8
	.sym	name,4,142,6,32
	.line	67
	pea	#<$1
	jsl	~~xWriteCH376Cmd
;	if ( xReadCH376Data( ) < 0x43 ) {
	.line	68
	jsl	~~xReadCH376Data
	sep	#$20
	longa	off
	sta	<R0
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	lda	<R0
	cmp	#<$43
	rep	#$20
	longa	on
	bcc	L33
	brl	L10017
L33:
	.line	68
;		if ( CH376ReadVar8( VAR_DISK_STATUS ) < DEF_DISK_READY ) {
	.line	69
	pea	#<$2b
	jsl	~~CH376ReadVar8
	sep	#$20
	longa	off
	sta	<R0
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	lda	<R0
	cmp	#<$10
	rep	#$20
	longa	on
	bcc	L34
	brl	L10018
L34:
	.line	69
;			xWriteCH376Cmd( CMD10_SET_FILE_NAME );
	.line	70
	pea	#<$2f
	jsl	~~xWriteCH376Cmd
;			xWriteCH376Data( 0 );
	.line	71
	pea	#<$0
	jsl	~~xWriteCH376Data
;			s = CH376SendCmdWaitInt( CMD0H_FILE_OPEN );
	.line	72
	pea	#<$32
	jsl	~~CH376SendCmdWaitInt
	sep	#$20
	longa	off
	sta	<L31+s_1
	rep	#$20
	longa	on
;			if ( s == USB_INT_SUCCESS ) {
	.line	73
	sep	#$20
	longa	off
	lda	<L31+s_1
	cmp	#<$14
	rep	#$20
	longa	on
	beq	L35
	brl	L10019
L35:
	.line	73
;				s = CH376ReadVar8( 0xCF );
	.line	74
	pea	#<$cf
	jsl	~~CH376ReadVar8
	sep	#$20
	longa	off
	sta	<L31+s_1
	rep	#$20
	longa	on
;				if ( s ) {
	.line	75
	lda	<L31+s_1
	and	#$ff
	bne	L36
	brl	L10020
L36:
	.line	75
;					CH376WriteVar32( 0x4C, CH376ReadVar32( 0x4C ) + ( (UINT16)s << 8 ) );
	.line	76
	lda	<L31+s_1
	and	#$ff
	sta	<R1
	lda	<R1
	xba
	and	#$ff00
	sta	<R0
	lda	<R0
	sta	<R0
	stz	<R0+2
	pea	#<$4c
	jsl	~~CH376ReadVar32
	sta	<R1
	stx	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<R2
	lda	<R1+2
	adc	<R0+2
	sta	<R2+2
	pei	<R2+2
	pei	<R2
	pea	#<$4c
	jsl	~~CH376WriteVar32
;					CH376WriteVar32( 0x50, CH376ReadVar32( 0x50 ) + ( (UINT16)s << 8 ) );
	.line	77
	lda	<L31+s_1
	and	#$ff
	sta	<R1
	lda	<R1
	xba
	and	#$ff00
	sta	<R0
	lda	<R0
	sta	<R0
	stz	<R0+2
	pea	#<$50
	jsl	~~CH376ReadVar32
	sta	<R1
	stx	<R1+2
	clc
	lda	<R1
	adc	<R0
	sta	<R2
	lda	<R1+2
	adc	<R0+2
	sta	<R2+2
	pei	<R2+2
	pei	<R2
	pea	#<$50
	jsl	~~CH376WriteVar32
;					CH376WriteVar32( 0x70, 0 );
	.line	78
	pea	#^$0
	pea	#<$0
	pea	#<$70
	jsl	~~CH376WriteVar32
;				}
	.line	79
;			}
L10020:
	.line	80
;		}
L10019:
	.line	81
;	}
L10018:
	.line	82
;#endif
;	xWriteCH376Cmd( CMD10_SET_FILE_NAME );
L10017:
	.line	84
	pea	#<$2f
	jsl	~~xWriteCH376Cmd
;/*	for ( i = MAX_FILE_NAME_LEN; i != 0; -- i ) {
;		c = *name;
;		xWriteCH376Data( c );
;		if ( c == 0 ) break;
;		name ++;
;	}*/
;	c = *name;
	.line	91
	sep	#$20
	longa	off
	lda	[<L30+name_0]
	sta	<L31+c_1
	rep	#$20
	longa	on
;	xWriteCH376Data( c );
	.line	92
	pei	<L31+c_1
	jsl	~~xWriteCH376Data
;	while ( c ) {
	.line	93
L10021:
	lda	<L31+c_1
	and	#$ff
	bne	L37
	brl	L10022
L37:
	.line	93
;		name ++;
	.line	94
	inc	<L30+name_0
	bne	L38
	inc	<L30+name_0+2
L38:
;		c = *name;
	.line	95
	sep	#$20
	longa	off
	lda	[<L30+name_0]
	sta	<L31+c_1
	rep	#$20
	longa	on
;		if ( c == DEF_SEPAR_CHAR1 || c == DEF_SEPAR_CHAR2 ) c = 0;      									  									    									  									/*强行将文件名截止 */
	.line	96
	sep	#$20
	longa	off
	lda	<L31+c_1
	cmp	#<$5c
	rep	#$20
	longa	on
	bne	L40
	brl	L39
L40:
	sep	#$20
	longa	off
	lda	<L31+c_1
	cmp	#<$2f
	rep	#$20
	longa	on
	beq	L41
	brl	L10023
L41:
L39:
	.line	96
	sep	#$20
	longa	off
	stz	<L31+c_1
	rep	#$20
	longa	on
;		xWriteCH376Data( c );
L10023:
	.line	97
	pei	<L31+c_1
	jsl	~~xWriteCH376Data
;	}
	.line	98
	brl	L10021
L10022:
;	xEndCH376Cmd( );
	.line	99
	jsl	~~xEndCH376Cmd
;}
	.line	100
L42:
	lda	<L30+2
	sta	<L30+2+4
	lda	<L30+1
	sta	<L30+1+4
	pld
	tsc
	clc
	adc	#L30+4
	tcs
	rtl
	.endblock	100
L30	equ	14
L31	equ	13
	ends
	efunc
	.endfunc	100,13,14
	.line	100
;
;UINT32	CH376Read32bitDat( void )      									  									    									  									/*从CH376芯片读取32位的数据并结束命令 */
;{
	.line	102
	.line	103
	code
	xdef	~~CH376Read32bitDat
	func
	.function	103
~~CH376Read32bitDat:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L43
	tcs
	phd
	tcd
	.block	103
;	UINT8	c0, c1, c2, c3;
;	c0 = xReadCH376Data( );
c0_1	set	0
c1_1	set	1
c2_1	set	2
c3_1	set	3
	.sym	c0,0,14,1,8
	.sym	c1,1,14,1,8
	.sym	c2,2,14,1,8
	.sym	c3,3,14,1,8
	.line	105
	jsl	~~xReadCH376Data
	sep	#$20
	longa	off
	sta	<L44+c0_1
	rep	#$20
	longa	on
;	c1 = xReadCH376Data( );
	.line	106
	jsl	~~xReadCH376Data
	sep	#$20
	longa	off
	sta	<L44+c1_1
	rep	#$20
	longa	on
;	c2 = xReadCH376Data( );
	.line	107
	jsl	~~xReadCH376Data
	sep	#$20
	longa	off
	sta	<L44+c2_1
	rep	#$20
	longa	on
;	c3 = xReadCH376Data( );
	.line	108
	jsl	~~xReadCH376Data
	sep	#$20
	longa	off
	sta	<L44+c3_1
	rep	#$20
	longa	on
;	xEndCH376Cmd( );
	.line	109
	jsl	~~xEndCH376Cmd
;	return( c0 | (UINT16)c1 << 8 | (UINT32)c2 << 16 | (UINT32)c3 << 24 );
	.line	110
	lda	<L44+c0_1
	and	#$ff
	sta	<R0
	lda	<L44+c1_1
	and	#$ff
	sta	<R2
	lda	<R2
	xba
	and	#$ff00
	sta	<R1
	lda	<R1
	ora	<R0
	sta	<R2
	lda	<R2
	sta	<R0
	stz	<R0+2
	lda	<L44+c2_1
	and	#$ff
	sta	<R2
	stz	<R2+2
	pei	<R2+2
	pei	<R2
	lda	#$10
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R1
	stx	<R1+2
	lda	<R1
	ora	<R0
	sta	<R3
	lda	<R1+2
	ora	<R0+2
	sta	<R3+2
	lda	<L44+c3_1
	and	#$ff
	sta	<R1
	stz	<R1+2
	pei	<R1+2
	pei	<R1
	lda	#$18
	xref	~~~lasl
	jsl	~~~lasl
	sta	<R0
	stx	<R0+2
	lda	<R0
	ora	<R3
	sta	<17
	lda	<R0+2
	ora	<R3+2
	sta	<17+2
	ldx	<17+2
	lda	<17
L46:
	tay
	pld
	tsc
	clc
	adc	#L43
	tcs
	tya
	rtl
;}
	.line	111
	.endblock	111
L43	equ	24
L44	equ	21
	ends
	efunc
	.endfunc	111,21,24
	.line	111
;
;UINT8	CH376ReadVar8( UINT8 var )      									  									    									  									/*读CH376芯片内部的8位变量 */
;{
	.line	113
	.line	114
	code
	xdef	~~CH376ReadVar8
	func
	.function	114
~~CH376ReadVar8:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L47
	tcs
	phd
	tcd
var_0	set	4
	.block	114
;	UINT8	c0;
;	xWriteCH376Cmd( CMD11_READ_VAR8 );
c0_1	set	0
	.sym	c0,0,14,1,8
	.sym	var,4,14,6,8
	.line	116
	pea	#<$a
	jsl	~~xWriteCH376Cmd
;	xWriteCH376Data( var );
	.line	117
	pei	<L47+var_0
	jsl	~~xWriteCH376Data
;	c0 = xReadCH376Data( );
	.line	118
	jsl	~~xReadCH376Data
	sep	#$20
	longa	off
	sta	<L48+c0_1
	rep	#$20
	longa	on
;	xEndCH376Cmd( );
	.line	119
	jsl	~~xEndCH376Cmd
;	return( c0 );
	.line	120
	lda	<L48+c0_1
	and	#$ff
L50:
	tay
	lda	<L47+2
	sta	<L47+2+2
	lda	<L47+1
	sta	<L47+1+2
	pld
	tsc
	clc
	adc	#L47+2
	tcs
	tya
	rtl
;}
	.line	121
	.endblock	121
L47	equ	1
L48	equ	1
	ends
	efunc
	.endfunc	121,1,1
	.line	121
;
;void	CH376WriteVar8( UINT8 var, UINT8 dat )      									  									    									  									/*写CH376芯片内部的8位变量 */
;{
	.line	123
	.line	124
	code
	xdef	~~CH376WriteVar8
	func
	.function	124
~~CH376WriteVar8:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L51
	tcs
	phd
	tcd
var_0	set	4
dat_0	set	6
	.block	124
;	xWriteCH376Cmd( CMD20_WRITE_VAR8 );
	.sym	var,4,14,6,8
	.sym	dat,6,14,6,8
	.line	125
	pea	#<$b
	jsl	~~xWriteCH376Cmd
;	xWriteCH376Data( var );
	.line	126
	pei	<L51+var_0
	jsl	~~xWriteCH376Data
;	xWriteCH376Data( dat );
	.line	127
	pei	<L51+dat_0
	jsl	~~xWriteCH376Data
;	xEndCH376Cmd( );
	.line	128
	jsl	~~xEndCH376Cmd
;}
	.line	129
L54:
	lda	<L51+2
	sta	<L51+2+4
	lda	<L51+1
	sta	<L51+1+4
	pld
	tsc
	clc
	adc	#L51+4
	tcs
	rtl
	.endblock	129
L51	equ	0
L52	equ	1
	ends
	efunc
	.endfunc	129,1,0
	.line	129
;
;UINT32	CH376ReadVar32( UINT8 var )      									  									    									  									/*读CH376芯片内部的32位变量 */
;{
	.line	131
	.line	132
	code
	xdef	~~CH376ReadVar32
	func
	.function	132
~~CH376ReadVar32:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L55
	tcs
	phd
	tcd
var_0	set	4
	.block	132
;	xWriteCH376Cmd( CMD14_READ_VAR32 );
	.sym	var,4,14,6,8
	.line	133
	pea	#<$c
	jsl	~~xWriteCH376Cmd
;	xWriteCH376Data( var );
	.line	134
	pei	<L55+var_0
	jsl	~~xWriteCH376Data
;	return( CH376Read32bitDat( ) );      									  									    									  									/*从CH376芯片读取32位的数据并结束命令 */
	.line	135
	jsl	~~CH376Read32bitDat
	sta	<R0
	stx	<R0+2
	ldx	<R0+2
	lda	<R0
L58:
	tay
	lda	<L55+2
	sta	<L55+2+2
	lda	<L55+1
	sta	<L55+1+2
	pld
	tsc
	clc
	adc	#L55+2
	tcs
	tya
	rtl
;}
	.line	136
	.endblock	136
L55	equ	4
L56	equ	5
	ends
	efunc
	.endfunc	136,5,4
	.line	136
;
;void	CH376WriteVar32( UINT8 var, UINT32 dat )      									  									    									  									/*写CH376芯片内部的32位变量 */
;{
	.line	138
	.line	139
	code
	xdef	~~CH376WriteVar32
	func
	.function	139
~~CH376WriteVar32:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L59
	tcs
	phd
	tcd
var_0	set	4
dat_0	set	6
	.block	139
;	xWriteCH376Cmd( CMD50_WRITE_VAR32 );
	.sym	var,4,14,6,8
	.sym	dat,6,18,6,32
	.line	140
	pea	#<$d
	jsl	~~xWriteCH376Cmd
;	xWriteCH376Data( var );
	.line	141
	pei	<L59+var_0
	jsl	~~xWriteCH376Data
;	xWriteCH376Data( (UINT8)dat );
	.line	142
	pei	<L59+dat_0
	jsl	~~xWriteCH376Data
;	xWriteCH376Data( (UINT8)( (UINT16)dat >> 8 ) );
	.line	143
	lda	<L59+dat_0
	xba
	and	#$00ff
	pha
	jsl	~~xWriteCH376Data
;	xWriteCH376Data( (UINT8)( dat >> 16 ) );
	.line	144
	pei	<L59+dat_0+2
	pei	<L59+dat_0
	lda	#$10
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R0
	stx	<R0+2
	pei	<R0
	jsl	~~xWriteCH376Data
;	xWriteCH376Data( (UINT8)( dat >> 24 ) );
	.line	145
	pei	<L59+dat_0+2
	pei	<L59+dat_0
	lda	#$18
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R0
	stx	<R0+2
	pei	<R0
	jsl	~~xWriteCH376Data
;	xEndCH376Cmd( );
	.line	146
	jsl	~~xEndCH376Cmd
;}
	.line	147
L62:
	lda	<L59+2
	sta	<L59+2+6
	lda	<L59+1
	sta	<L59+1+6
	pld
	tsc
	clc
	adc	#L59+6
	tcs
	rtl
	.endblock	147
L59	equ	4
L60	equ	5
	ends
	efunc
	.endfunc	147,5,4
	.line	147
;
;void	CH376EndDirInfo( void )      									  									    									  									/*在调用CH376DirInfoRead获取FAT_DIR_INFO结构之后应该通知CH376结束 */
;{
	.line	149
	.line	150
	code
	xdef	~~CH376EndDirInfo
	func
	.function	150
~~CH376EndDirInfo:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L63
	tcs
	phd
	tcd
	.block	150
;	CH376WriteVar8( 0x0D, 0x00 );
	.line	151
	pea	#<$0
	pea	#<$d
	jsl	~~CH376WriteVar8
;}
	.line	152
L66:
	pld
	tsc
	clc
	adc	#L63
	tcs
	rtl
	.endblock	152
L63	equ	0
L64	equ	1
	ends
	efunc
	.endfunc	152,1,0
	.line	152
;
;UINT32	CH376GetFileSize( void )     									  									     									  									/*读取当前文件长度 */
;{
	.line	154
	.line	155
	code
	xdef	~~CH376GetFileSize
	func
	.function	155
~~CH376GetFileSize:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L67
	tcs
	phd
	tcd
	.block	155
;	return( CH376ReadVar32( VAR_FILE_SIZE ) );
	.line	156
	pea	#<$68
	jsl	~~CH376ReadVar32
	sta	<R0
	stx	<R0+2
	ldx	<R0+2
	lda	<R0
L70:
	tay
	pld
	tsc
	clc
	adc	#L67
	tcs
	tya
	rtl
;}
	.line	157
	.endblock	157
L67	equ	4
L68	equ	5
	ends
	efunc
	.endfunc	157,5,4
	.line	157
;
;UINT8	CH376GetDiskStatus( void )      									  									    									  									/*获取磁盘和文件系统的工作状态 */
;{
	.line	159
	.line	160
	code
	xdef	~~CH376GetDiskStatus
	func
	.function	160
~~CH376GetDiskStatus:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L71
	tcs
	phd
	tcd
	.block	160
;	return( CH376ReadVar8( VAR_DISK_STATUS ) );
	.line	161
	pea	#<$2b
	jsl	~~CH376ReadVar8
	sep	#$20
	longa	off
	sta	<R0
	rep	#$20
	longa	on
	lda	<R0
	and	#$ff
L74:
	tay
	pld
	tsc
	clc
	adc	#L71
	tcs
	tya
	rtl
;}
	.line	162
	.endblock	162
L71	equ	4
L72	equ	5
	ends
	efunc
	.endfunc	162,5,4
	.line	162
;
;UINT8	CH376GetIntStatus( void )      									  									    									  									/*获取中断状态并取消中断请求 */
;{
	.line	164
	.line	165
	code
	xdef	~~CH376GetIntStatus
	func
	.function	165
~~CH376GetIntStatus:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L75
	tcs
	phd
	tcd
	.block	165
;	UINT8	s;
;	xWriteCH376Cmd( CMD01_GET_STATUS );
s_1	set	0
	.sym	s,0,14,1,8
	.line	167
	pea	#<$22
	jsl	~~xWriteCH376Cmd
;	s = xReadCH376Data( );
	.line	168
	jsl	~~xReadCH376Data
	sep	#$20
	longa	off
	sta	<L76+s_1
	rep	#$20
	longa	on
;	xEndCH376Cmd( );
	.line	169
	jsl	~~xEndCH376Cmd
;	return( s );
	.line	170
	lda	<L76+s_1
	and	#$ff
L78:
	tay
	pld
	tsc
	clc
	adc	#L75
	tcs
	tya
	rtl
;}
	.line	171
	.endblock	171
L75	equ	1
L76	equ	1
	ends
	efunc
	.endfunc	171,1,1
	.line	171
;
;#ifndef	NO_DEFAULT_CH376_INT
;UINT8	Wait376Interrupt( void )     									  									     									  									/*等待CH376中断(INT#低电平)，返回中断状态码, 超时则返回ERR_USB_UNKNOWN */
;{
	.line	174
	.line	175
	code
	xdef	~~Wait376Interrupt
	func
	.function	175
~~Wait376Interrupt:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L79
	tcs
	phd
	tcd
	.block	175
;#ifdef	DEF_INT_TIMEOUT
;#if		DEF_INT_TIMEOUT < 1
;	while ( Query376Interrupt( ) == FALSE );      									  									    									  									/*一直等中断 */
;	return( CH376GetIntStatus( ) );      									  									    									  									/*检测到中断 */
;#else
;	UINT32	i;
;	for ( i = 0; i < DEF_INT_TIMEOUT; i ++ ) {      									  									    									  									/*计数防止超时 */
;		if ( Query376Interrupt( ) ) return( CH376GetIntStatus( ) );      									  									    									  									/*检测到中断 */
;	}
;	return( ERR_USB_UNKNOWN );      									  									    									  									/*不应该发生的情况 */
;#endif
;#else
;	UINT32	i;
;	for ( i = 0; i < 5000000; i ++ ) {      									  									    									  									/*计数防止超时,默认的超时时间,与单片机主频有关 */
i_1	set	0
	.sym	i,0,18,1,32
	.line	189
	stz	<L80+i_1
	stz	<L80+i_1+2
L10026:
	.line	189
;		if ( Query376Interrupt( ) ) return( CH376GetIntStatus( ) );      									  									    									  									/*检测到中断 */
	.line	190
	jsl	~~Query376Interrupt
	and	#$ff
	bne	L82
	brl	L10027
L82:
	.line	190
	jsl	~~CH376GetIntStatus
	sep	#$20
	longa	off
	sta	<R0
	rep	#$20
	longa	on
	lda	<R0
	and	#$ff
L83:
	tay
	pld
	tsc
	clc
	adc	#L79
	tcs
	tya
	rtl
;	}
L10027:
	.line	191
L10024:
	inc	<L80+i_1
	bne	L84
	inc	<L80+i_1+2
L84:
	lda	<L80+i_1
	cmp	#<$4c4b40
	lda	<L80+i_1+2
	sbc	#^$4c4b40
	bcs	L85
	brl	L10026
L85:
L10025:
;	return( ERR_USB_UNKNOWN );
	.line	192
	lda	#$fa
	brl	L83
;#endif
;}
	.line	194
	.endblock	194
L79	equ	8
L80	equ	5
	ends
	efunc
	.endfunc	194,5,8
	.line	194
;#endif
;
;UINT8	CH376SendCmdWaitInt( UINT8 mCmd )
;{
	.line	197
	.line	198
	code
	xdef	~~CH376SendCmdWaitInt
	func
	.function	198
~~CH376SendCmdWaitInt:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L86
	tcs
	phd
	tcd
mCmd_0	set	4
	.block	198
;	xWriteCH376Cmd( mCmd );
	.sym	mCmd,4,14,6,8
	.line	199
	pei	<L86+mCmd_0
	jsl	~~xWriteCH376Cmd
;	xEndCH376Cmd( );
	.line	200
	jsl	~~xEndCH376Cmd
;	return( Wait376Interrupt( ) );
	.line	201
	jsl	~~Wait376Interrupt
	sep	#$20
	longa	off
	sta	<R0
	rep	#$20
	longa	on
	lda	<R0
	and	#$ff
L89:
	tay
	lda	<L86+2
	sta	<L86+2+2
	lda	<L86+1
	sta	<L86+1+2
	pld
	tsc
	clc
	adc	#L86+2
	tcs
	tya
	rtl
;}
	.line	202
	.endblock	202
L86	equ	4
L87	equ	5
	ends
	efunc
	.endfunc	202,5,4
	.line	202
;
;UINT8	CH376SendCmdDatWaitInt( UINT8 mCmd, UINT8 mDat )      									  									    									  									/*发出命令码和一字节数据后,等待中断 */
;{
	.line	204
	.line	205
	code
	xdef	~~CH376SendCmdDatWaitInt
	func
	.function	205
~~CH376SendCmdDatWaitInt:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L90
	tcs
	phd
	tcd
mCmd_0	set	4
mDat_0	set	6
	.block	205
;	xWriteCH376Cmd( mCmd );
	.sym	mCmd,4,14,6,8
	.sym	mDat,6,14,6,8
	.line	206
	pei	<L90+mCmd_0
	jsl	~~xWriteCH376Cmd
;	xWriteCH376Data( mDat );
	.line	207
	pei	<L90+mDat_0
	jsl	~~xWriteCH376Data
;	xEndCH376Cmd( );
	.line	208
	jsl	~~xEndCH376Cmd
;	return( Wait376Interrupt( ) );
	.line	209
	jsl	~~Wait376Interrupt
	sep	#$20
	longa	off
	sta	<R0
	rep	#$20
	longa	on
	lda	<R0
	and	#$ff
L93:
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
	.line	210
	.endblock	210
L90	equ	4
L91	equ	5
	ends
	efunc
	.endfunc	210,5,4
	.line	210
;
;UINT8	CH376DiskReqSense( void )      									  									    									  									/*检查USB存储器错误 */
;{
	.line	212
	.line	213
	code
	xdef	~~CH376DiskReqSense
	func
	.function	213
~~CH376DiskReqSense:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L94
	tcs
	phd
	tcd
	.block	213
;	UINT8	s;
;	mDelaymS( 5 );
s_1	set	0
	.sym	s,0,14,1,8
	.line	215
	pea	#<$5
	jsl	~~mDelaymS
;	s = CH376SendCmdWaitInt( CMD0H_DISK_R_SENSE );
	.line	216
	pea	#<$5a
	jsl	~~CH376SendCmdWaitInt
	sep	#$20
	longa	off
	sta	<L95+s_1
	rep	#$20
	longa	on
;	mDelaymS( 5 );
	.line	217
	pea	#<$5
	jsl	~~mDelaymS
;	return( s );
	.line	218
	lda	<L95+s_1
	and	#$ff
L97:
	tay
	pld
	tsc
	clc
	adc	#L94
	tcs
	tya
	rtl
;}
	.line	219
	.endblock	219
L94	equ	1
L95	equ	1
	ends
	efunc
	.endfunc	219,1,1
	.line	219
;
;UINT8	CH376DiskConnect( void )      									  									    									  									/*检查U盘是否连接,不支持SD卡 */
;{
	.line	221
	.line	222
	code
	xdef	~~CH376DiskConnect
	func
	.function	222
~~CH376DiskConnect:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L98
	tcs
	phd
	tcd
	.block	222
;	if ( Query376Interrupt( ) ) CH376GetIntStatus( );      									  									    									  									/*检测到中断 */
	.line	223
	jsl	~~Query376Interrupt
	and	#$ff
	bne	L101
	brl	L10028
L101:
	.line	223
	jsl	~~CH376GetIntStatus
;	return( CH376SendCmdWaitInt( CMD0H_DISK_CONNECT ) );
L10028:
	.line	224
	pea	#<$30
	jsl	~~CH376SendCmdWaitInt
	sep	#$20
	longa	off
	sta	<R0
	rep	#$20
	longa	on
	lda	<R0
	and	#$ff
L102:
	tay
	pld
	tsc
	clc
	adc	#L98
	tcs
	tya
	rtl
;}
	.line	225
	.endblock	225
L98	equ	4
L99	equ	5
	ends
	efunc
	.endfunc	225,5,4
	.line	225
;
;UINT8	CH376DiskMount( void )      									  									    									  									/*初始化磁盘并测试磁盘是否就绪 */
;{
	.line	227
	.line	228
	code
	xdef	~~CH376DiskMount
	func
	.function	228
~~CH376DiskMount:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L103
	tcs
	phd
	tcd
	.block	228
;	return( CH376SendCmdWaitInt( CMD0H_DISK_MOUNT ) );
	.line	229
	pea	#<$31
	jsl	~~CH376SendCmdWaitInt
	sep	#$20
	longa	off
	sta	<R0
	rep	#$20
	longa	on
	lda	<R0
	and	#$ff
L106:
	tay
	pld
	tsc
	clc
	adc	#L103
	tcs
	tya
	rtl
;}
	.line	230
	.endblock	230
L103	equ	4
L104	equ	5
	ends
	efunc
	.endfunc	230,5,4
	.line	230
;
;UINT8	CH376FileOpen( PUINT8 name )      									  									    									  									/*在根目录或者当前目录下打开文件或者目录(文件夹) */
;{
	.line	232
	.line	233
	code
	xdef	~~CH376FileOpen
	func
	.function	233
~~CH376FileOpen:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L107
	tcs
	phd
	tcd
name_0	set	4
	.block	233
;	CH376SetFileName( name );      									  									    									  									    									  									/*设置将要操作的文件的文件名 */
	.sym	name,4,142,6,32
	.line	234
	pei	<L107+name_0+2
	pei	<L107+name_0
	jsl	~~CH376SetFileName
;#ifndef	DEF_IC_V43_U
;	if ( name[0] == DEF_SEPAR_CHAR1 || name[0] == DEF_SEPAR_CHAR2 ) CH376WriteVar32( VAR_CURRENT_CLUST, 0 );
	.line	236
	sep	#$20
	longa	off
	lda	[<L107+name_0]
	cmp	#<$5c
	rep	#$20
	longa	on
	bne	L111
	brl	L110
L111:
	sep	#$20
	longa	off
	lda	[<L107+name_0]
	cmp	#<$2f
	rep	#$20
	longa	on
	beq	L112
	brl	L10029
L112:
L110:
	.line	236
	pea	#^$0
	pea	#<$0
	pea	#<$64
	jsl	~~CH376WriteVar32
;#endif
;	return( CH376SendCmdWaitInt( CMD0H_FILE_OPEN ) );
L10029:
	.line	238
	pea	#<$32
	jsl	~~CH376SendCmdWaitInt
	sep	#$20
	longa	off
	sta	<R0
	rep	#$20
	longa	on
	lda	<R0
	and	#$ff
L113:
	tay
	lda	<L107+2
	sta	<L107+2+4
	lda	<L107+1
	sta	<L107+1+4
	pld
	tsc
	clc
	adc	#L107+4
	tcs
	tya
	rtl
;}
	.line	239
	.endblock	239
L107	equ	4
L108	equ	5
	ends
	efunc
	.endfunc	239,5,4
	.line	239
;
;UINT8	CH376FileCreate( PUINT8 name )      									  									    									  									/*在根目录或者当前目录下新建文件,如果文件已经存在那么先删除 */
;{
	.line	241
	.line	242
	code
	xdef	~~CH376FileCreate
	func
	.function	242
~~CH376FileCreate:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L114
	tcs
	phd
	tcd
name_0	set	4
	.block	242
;	if ( name ) CH376SetFileName( name );      									  									    									  									/*设置将要操作的文件的文件名 */
	.sym	name,4,142,6,32
	.line	243
	lda	<L114+name_0
	ora	<L114+name_0+2
	bne	L117
	brl	L10030
L117:
	.line	243
	pei	<L114+name_0+2
	pei	<L114+name_0
	jsl	~~CH376SetFileName
;	return( CH376SendCmdWaitInt( CMD0H_FILE_CREATE ) );
L10030:
	.line	244
	pea	#<$34
	jsl	~~CH376SendCmdWaitInt
	sep	#$20
	longa	off
	sta	<R0
	rep	#$20
	longa	on
	lda	<R0
	and	#$ff
L118:
	tay
	lda	<L114+2
	sta	<L114+2+4
	lda	<L114+1
	sta	<L114+1+4
	pld
	tsc
	clc
	adc	#L114+4
	tcs
	tya
	rtl
;}
	.line	245
	.endblock	245
L114	equ	4
L115	equ	5
	ends
	efunc
	.endfunc	245,5,4
	.line	245
;
;UINT8	CH376DirCreate( PUINT8 name )      									  									    									  									/*在根目录下新建目录(文件夹)并打开,如果目录已经存在那么直接打开 */
;{
	.line	247
	.line	248
	code
	xdef	~~CH376DirCreate
	func
	.function	248
~~CH376DirCreate:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L119
	tcs
	phd
	tcd
name_0	set	4
	.block	248
;	CH376SetFileName( name );      									  									    									  									    									  									/*设置将要操作的文件的文件名 */
	.sym	name,4,142,6,32
	.line	249
	pei	<L119+name_0+2
	pei	<L119+name_0
	jsl	~~CH376SetFileName
;#ifndef	DEF_IC_V43_U
;	if ( name[0] == DEF_SEPAR_CHAR1 || name[0] == DEF_SEPAR_CHAR2 ) CH376WriteVar32( VAR_CURRENT_CLUST, 0 );
	.line	251
	sep	#$20
	longa	off
	lda	[<L119+name_0]
	cmp	#<$5c
	rep	#$20
	longa	on
	bne	L123
	brl	L122
L123:
	sep	#$20
	longa	off
	lda	[<L119+name_0]
	cmp	#<$2f
	rep	#$20
	longa	on
	beq	L124
	brl	L10031
L124:
L122:
	.line	251
	pea	#^$0
	pea	#<$0
	pea	#<$64
	jsl	~~CH376WriteVar32
;#endif
;	return( CH376SendCmdWaitInt( CMD0H_DIR_CREATE ) );
L10031:
	.line	253
	pea	#<$40
	jsl	~~CH376SendCmdWaitInt
	sep	#$20
	longa	off
	sta	<R0
	rep	#$20
	longa	on
	lda	<R0
	and	#$ff
L125:
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
	.line	254
	.endblock	254
L119	equ	4
L120	equ	5
	ends
	efunc
	.endfunc	254,5,4
	.line	254
;
;UINT8	CH376SeparatePath( PUINT8 path )      									  									    									  									/*从路径中分离出最后一级文件名或者目录(文件夹)名,返回最后一级文件名或者目录名的字节偏移 */
;{
	.line	256
	.line	257
	code
	xdef	~~CH376SeparatePath
	func
	.function	257
~~CH376SeparatePath:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L126
	tcs
	phd
	tcd
path_0	set	4
	.block	257
;	PUINT8	pName;
;	for ( pName = path; *pName != 0; ++ pName );     									  									     									  									/*到文件名字符串结束位置 */
pName_1	set	0
	.sym	pName,0,142,1,32
	.sym	path,4,142,6,32
	.line	259
	lda	<L126+path_0
	sta	<L127+pName_1
	lda	<L126+path_0+2
	sta	<L127+pName_1+2
	brl	L10035
L10034:
	.line	259
L10032:
	inc	<L127+pName_1
	bne	L129
	inc	<L127+pName_1+2
L129:
L10035:
	lda	[<L127+pName_1]
	and	#$ff
	beq	L130
	brl	L10034
L130:
L10033:
;	while ( *pName != DEF_SEPAR_CHAR1 && *pName != DEF_SEPAR_CHAR2 && pName != path ) pName --;      									  									    									  									/* 搜索倒数第一个路径分隔符 */
	.line	260
L10036:
	sep	#$20
	longa	off
	lda	[<L127+pName_1]
	cmp	#<$5c
	rep	#$20
	longa	on
	bne	L131
	brl	L10037
L131:
	sep	#$20
	longa	off
	lda	[<L127+pName_1]
	cmp	#<$2f
	rep	#$20
	longa	on
	bne	L132
	brl	L10037
L132:
	lda	<L127+pName_1
	cmp	<L126+path_0
	bne	L133
	lda	<L127+pName_1+2
	cmp	<L126+path_0+2
L133:
	bne	L134
	brl	L10037
L134:
	.line	260
	lda	<L127+pName_1
	bne	L135
	dec	<L127+pName_1+2
L135:
	dec	<L127+pName_1
	brl	L10036
L10037:
;	if ( pName != path ) pName ++;      									  									    									  									/*找到了路径分隔符,则修改指向目标文件的最后一级文件名,跳过前面的多级目录名及路径分隔符 */
	.line	261
	lda	<L127+pName_1
	cmp	<L126+path_0
	bne	L136
	lda	<L127+pName_1+2
	cmp	<L126+path_0+2
L136:
	bne	L137
	brl	L10038
L137:
	.line	261
	inc	<L127+pName_1
	bne	L138
	inc	<L127+pName_1+2
L138:
;	return( pName - path );
L10038:
	.line	262
	sec
	lda	<L127+pName_1
	sbc	<L126+path_0
	sta	<R0
	lda	<L127+pName_1+2
	sbc	<L126+path_0+2
	sta	<R0+2
	lda	<R0
	and	#$ff
L139:
	tay
	lda	<L126+2
	sta	<L126+2+4
	lda	<L126+1
	sta	<L126+1+4
	pld
	tsc
	clc
	adc	#L126+4
	tcs
	tya
	rtl
;}
	.line	263
	.endblock	263
L126	equ	8
L127	equ	5
	ends
	efunc
	.endfunc	263,5,8
	.line	263
;
;UINT8	CH376FileOpenDir( PUINT8 PathName, UINT8 StopName )
;
;{
	.line	265
	.line	267
	code
	xdef	~~CH376FileOpenDir
	func
	.function	267
~~CH376FileOpenDir:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L140
	tcs
	phd
	tcd
PathName_0	set	4
StopName_0	set	8
	.block	267
;	UINT8	i, s;
;	s = 0;
i_1	set	0
s_1	set	1
	.sym	i,0,14,1,8
	.sym	s,1,14,1,8
	.sym	PathName,4,142,6,32
	.sym	StopName,8,14,6,8
	.line	269
	sep	#$20
	longa	off
	stz	<L141+s_1
	rep	#$20
	longa	on
;	i = 1;
	.line	270
	sep	#$20
	longa	off
	lda	#$1
	sta	<L141+i_1
	rep	#$20
	longa	on
;	while ( 1 ) {
	.line	271
L10039:
	.line	271
;		while ( PathName[i] != DEF_SEPAR_CHAR1 && PathName[i] != DEF_SEPAR_CHAR2 && PathName[i] != 0 ) ++ i;      									  									/*搜索下一个路径分隔符或者路径结束符 */
	.line	272
L10041:
	lda	<L141+i_1
	and	#$ff
	sta	<R0
	sep	#$20
	longa	off
	ldy	<R0
	lda	[<L140+PathName_0],Y
	cmp	#<$5c
	rep	#$20
	longa	on
	bne	L143
	brl	L10042
L143:
	lda	<L141+i_1
	and	#$ff
	sta	<R1
	sep	#$20
	longa	off
	ldy	<R1
	lda	[<L140+PathName_0],Y
	cmp	#<$2f
	rep	#$20
	longa	on
	bne	L144
	brl	L10042
L144:
	lda	<L141+i_1
	and	#$ff
	sta	<R2
	ldy	<R2
	lda	[<L140+PathName_0],Y
	and	#$ff
	bne	L145
	brl	L10042
L145:
	.line	272
	sep	#$20
	longa	off
	inc	<L141+i_1
	rep	#$20
	longa	on
	brl	L10041
L10042:
;		if ( PathName[i] ) i ++;
	.line	273
	lda	<L141+i_1
	and	#$ff
	sta	<R0
	ldy	<R0
	lda	[<L140+PathName_0],Y
	and	#$ff
	bne	L146
	brl	L10043
L146:
	.line	273
	sep	#$20
	longa	off
	inc	<L141+i_1
	rep	#$20
	longa	on
;		else i = 0;
	brl	L10044
L10043:
	.line	274
	sep	#$20
	longa	off
	stz	<L141+i_1
	rep	#$20
	longa	on
L10044:
;		s = CH376FileOpen( &PathName[s] );
	.line	275
	lda	<L141+s_1
	and	#$ff
	sta	<R0
	stz	<R0+2
	clc
	lda	<L140+PathName_0
	adc	<R0
	sta	<R1
	lda	<L140+PathName_0+2
	adc	<R0+2
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~CH376FileOpen
	sep	#$20
	longa	off
	sta	<L141+s_1
	rep	#$20
	longa	on
;		if ( i && i != StopName ) {
	.line	276
	lda	<L141+i_1
	and	#$ff
	bne	L147
	brl	L10045
L147:
	sep	#$20
	longa	off
	lda	<L141+i_1
	cmp	<L140+StopName_0
	rep	#$20
	longa	on
	bne	L148
	brl	L10045
L148:
	.line	276
;			if ( s != ERR_OPEN_DIR ) {
	.line	277
	sep	#$20
	longa	off
	lda	<L141+s_1
	cmp	#<$41
	rep	#$20
	longa	on
	bne	L149
	brl	L10046
L149:
	.line	277
;				if ( s == USB_INT_SUCCESS ) return( ERR_FOUND_NAME );
	.line	278
	sep	#$20
	longa	off
	lda	<L141+s_1
	cmp	#<$14
	rep	#$20
	longa	on
	beq	L150
	brl	L10047
L150:
	.line	278
	lda	#$43
L151:
	tay
	lda	<L140+2
	sta	<L140+2+6
	lda	<L140+1
	sta	<L140+1+6
	pld
	tsc
	clc
	adc	#L140+6
	tcs
	tya
	rtl
;				else if ( s == ERR_MISS_FILE ) return( ERR_MISS_DIR );
L10047:
	.line	279
	sep	#$20
	longa	off
	lda	<L141+s_1
	cmp	#<$42
	rep	#$20
	longa	on
	beq	L152
	brl	L10048
L152:
	.line	279
	lda	#$b3
	brl	L151
;				else return( s );
L10048:
	.line	280
	lda	<L141+s_1
	and	#$ff
	brl	L151
;			}
	.line	281
;			s = i;
L10046:
	.line	282
	sep	#$20
	longa	off
	lda	<L141+i_1
	sta	<L141+s_1
	rep	#$20
	longa	on
;		}
	.line	283
;		else return( s );
	brl	L10049
L10045:
	.line	284
	lda	<L141+s_1
	and	#$ff
	brl	L151
L10049:
;	}
	.line	285
	brl	L10039
;}
	.line	286
	.endblock	286
L140	equ	14
L141	equ	13
	ends
	efunc
	.endfunc	286,13,14
	.line	286
;
;UINT8	CH376FileOpenPath( PUINT8 PathName )
;{
	.line	288
	.line	289
	code
	xdef	~~CH376FileOpenPath
	func
	.function	289
~~CH376FileOpenPath:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L153
	tcs
	phd
	tcd
PathName_0	set	4
	.block	289
;	return( CH376FileOpenDir( PathName, 0xFF ) );
	.sym	PathName,4,142,6,32
	.line	290
	pea	#<$ff
	pei	<L153+PathName_0+2
	pei	<L153+PathName_0
	jsl	~~CH376FileOpenDir
	sep	#$20
	longa	off
	sta	<R0
	rep	#$20
	longa	on
	lda	<R0
	and	#$ff
L156:
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
;}
	.line	291
	.endblock	291
L153	equ	4
L154	equ	5
	ends
	efunc
	.endfunc	291,5,4
	.line	291
;
;UINT8	CH376FileCreatePath( PUINT8 PathName )
;{
	.line	293
	.line	294
	code
	xdef	~~CH376FileCreatePath
	func
	.function	294
~~CH376FileCreatePath:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L157
	tcs
	phd
	tcd
PathName_0	set	4
	.block	294
;	UINT8	s;
;	UINT8	Name;
;	Name = CH376SeparatePath( PathName );
s_1	set	0
Name_1	set	1
	.sym	s,0,14,1,8
	.sym	Name,1,14,1,8
	.sym	PathName,4,142,6,32
	.line	297
	pei	<L157+PathName_0+2
	pei	<L157+PathName_0
	jsl	~~CH376SeparatePath
	sep	#$20
	longa	off
	sta	<L158+Name_1
	rep	#$20
	longa	on
;	if ( Name ) {
	.line	298
	lda	<L158+Name_1
	and	#$ff
	bne	L160
	brl	L10050
L160:
	.line	298
;		s = CH376FileOpenDir( PathName, Name );
	.line	299
	pei	<L158+Name_1
	pei	<L157+PathName_0+2
	pei	<L157+PathName_0
	jsl	~~CH376FileOpenDir
	sep	#$20
	longa	off
	sta	<L158+s_1
	rep	#$20
	longa	on
;		if ( s != ERR_OPEN_DIR ) {
	.line	300
	sep	#$20
	longa	off
	lda	<L158+s_1
	cmp	#<$41
	rep	#$20
	longa	on
	bne	L161
	brl	L10051
L161:
	.line	300
;			if ( s == USB_INT_SUCCESS ) return( ERR_FOUND_NAME );
	.line	301
	sep	#$20
	longa	off
	lda	<L158+s_1
	cmp	#<$14
	rep	#$20
	longa	on
	beq	L162
	brl	L10052
L162:
	.line	301
	lda	#$43
L163:
	tay
	lda	<L157+2
	sta	<L157+2+4
	lda	<L157+1
	sta	<L157+1+4
	pld
	tsc
	clc
	adc	#L157+4
	tcs
	tya
	rtl
;			else if ( s == ERR_MISS_FILE ) return( ERR_MISS_DIR );
L10052:
	.line	302
	sep	#$20
	longa	off
	lda	<L158+s_1
	cmp	#<$42
	rep	#$20
	longa	on
	beq	L164
	brl	L10053
L164:
	.line	302
	lda	#$b3
	brl	L163
;			else return( s );
L10053:
	.line	303
	lda	<L158+s_1
	and	#$ff
	brl	L163
;		}
	.line	304
;	}
L10051:
	.line	305
;	return( CH376FileCreate( &PathName[Name] ) );
L10050:
	.line	306
	lda	<L158+Name_1
	and	#$ff
	sta	<R0
	stz	<R0+2
	clc
	lda	<L157+PathName_0
	adc	<R0
	sta	<R1
	lda	<L157+PathName_0+2
	adc	<R0+2
	sta	<R1+2
	pei	<R1+2
	pei	<R1
	jsl	~~CH376FileCreate
	sep	#$20
	longa	off
	sta	<R0
	rep	#$20
	longa	on
	lda	<R0
	and	#$ff
	brl	L163
;}
	.line	307
	.endblock	307
L157	equ	10
L158	equ	9
	ends
	efunc
	.endfunc	307,9,10
	.line	307
;
;#ifdef	EN_DIR_CREATE
;UINT8	CH376DirCreatePath( PUINT8 PathName )
;{
;	UINT8	s;
;	UINT8	Name;
;	UINT8	ClustBuf[4];
;	Name = CH376SeparatePath( PathName );
;	if ( Name ) {
;		s = CH376FileOpenDir( PathName, Name );
;		if ( s != ERR_OPEN_DIR ) {
;			if ( s == USB_INT_SUCCESS ) return( ERR_FOUND_NAME );
;			else if ( s == ERR_MISS_FILE ) return( ERR_MISS_DIR );
;			else return( s );
;		}
;		xWriteCH376Cmd( CMD14_READ_VAR32 );
;		xWriteCH376Data( VAR_START_CLUSTER );
;		for ( s = 0; s != 4; s ++ ) ClustBuf[ s ] = xReadCH376Data( );
;		xEndCH376Cmd( );
;		s = CH376DirCreate( &PathName[Name] );
;		if ( s != USB_INT_SUCCESS ) return( s );
;		s = CH376ByteLocate( sizeof(FAT_DIR_INFO) + STRUCT_OFFSET( FAT_DIR_INFO, DIR_FstClusHI ) );
;		if ( s != USB_INT_SUCCESS ) return( s );
;		s = CH376ByteWrite( &ClustBuf[2], 2, NULL );
;		if ( s != USB_INT_SUCCESS ) return( s );
;		s = CH376ByteLocate( sizeof(FAT_DIR_INFO) + STRUCT_OFFSET( FAT_DIR_INFO, DIR_FstClusLO ) );
;		if ( s != USB_INT_SUCCESS ) return( s );
;		s = CH376ByteWrite( ClustBuf, 2, NULL );
;		if ( s != USB_INT_SUCCESS ) return( s );
;		s = CH376ByteLocate( 0 );
;		if ( s != USB_INT_SUCCESS ) return( s );
;	}
;	else {
;		if ( PathName[0] == DEF_SEPAR_CHAR1 || PathName[0] == DEF_SEPAR_CHAR2 ) return( CH376DirCreate( PathName ) );
;		else return( ERR_MISS_DIR );
;	}
;}
;#endif
;
;UINT8	CH376FileErase( PUINT8 PathName )
;{
	.line	347
	.line	348
	code
	xdef	~~CH376FileErase
	func
	.function	348
~~CH376FileErase:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L165
	tcs
	phd
	tcd
PathName_0	set	4
	.block	348
;	UINT8	s;
;	if ( PathName ) {
s_1	set	0
	.sym	s,0,14,1,8
	.sym	PathName,4,142,6,32
	.line	350
	lda	<L165+PathName_0
	ora	<L165+PathName_0+2
	bne	L168
	brl	L10054
L168:
	.line	350
;		for ( s = 1; PathName[s] != DEF_SEPAR_CHAR1 && PathName[s] != DEF_SEPAR_CHAR2 && PathName[s] != 0; ++ s );
	.line	351
	sep	#$20
	longa	off
	lda	#$1
	sta	<L166+s_1
	rep	#$20
	longa	on
	brl	L10058
L10057:
	.line	351
L10055:
	sep	#$20
	longa	off
	inc	<L166+s_1
	rep	#$20
	longa	on
L10058:
	lda	<L166+s_1
	and	#$ff
	sta	<R0
	sep	#$20
	longa	off
	ldy	<R0
	lda	[<L165+PathName_0],Y
	cmp	#<$5c
	rep	#$20
	longa	on
	bne	L170
	brl	L169
L170:
	lda	<L166+s_1
	and	#$ff
	sta	<R1
	sep	#$20
	longa	off
	ldy	<R1
	lda	[<L165+PathName_0],Y
	cmp	#<$2f
	rep	#$20
	longa	on
	bne	L171
	brl	L169
L171:
	lda	<L166+s_1
	and	#$ff
	sta	<R2
	ldy	<R2
	lda	[<L165+PathName_0],Y
	and	#$ff
	beq	L172
	brl	L10057
L172:
L169:
L10056:
;		if ( PathName[s] ) {
	.line	352
	lda	<L166+s_1
	and	#$ff
	sta	<R0
	ldy	<R0
	lda	[<L165+PathName_0],Y
	and	#$ff
	bne	L173
	brl	L10059
L173:
	.line	352
;			s = CH376FileOpenPath( PathName );
	.line	353
	pei	<L165+PathName_0+2
	pei	<L165+PathName_0
	jsl	~~CH376FileOpenPath
	sep	#$20
	longa	off
	sta	<L166+s_1
	rep	#$20
	longa	on
;			if ( s != USB_INT_SUCCESS && s != ERR_OPEN_DIR ) return( s );
	.line	354
	sep	#$20
	longa	off
	lda	<L166+s_1
	cmp	#<$14
	rep	#$20
	longa	on
	bne	L174
	brl	L10060
L174:
	sep	#$20
	longa	off
	lda	<L166+s_1
	cmp	#<$41
	rep	#$20
	longa	on
	bne	L175
	brl	L10060
L175:
	.line	354
	lda	<L166+s_1
	and	#$ff
L176:
	tay
	lda	<L165+2
	sta	<L165+2+4
	lda	<L165+1
	sta	<L165+1+4
	pld
	tsc
	clc
	adc	#L165+4
	tcs
	tya
	rtl
;		}
L10060:
	.line	355
;		else CH376SetFileName( PathName );
	brl	L10061
L10059:
	.line	356
	pei	<L165+PathName_0+2
	pei	<L165+PathName_0
	jsl	~~CH376SetFileName
L10061:
;	}
	.line	357
;	return( CH376SendCmdWaitInt( CMD0H_FILE_ERASE ) );
L10054:
	.line	358
	pea	#<$35
	jsl	~~CH376SendCmdWaitInt
	sep	#$20
	longa	off
	sta	<R0
	rep	#$20
	longa	on
	lda	<R0
	and	#$ff
	brl	L176
;}
	.line	359
	.endblock	359
L165	equ	13
L166	equ	13
	ends
	efunc
	.endfunc	359,13,13
	.line	359
;
;UINT8	CH376FileClose( UINT8 UpdateSz )
;{
	.line	361
	.line	362
	code
	xdef	~~CH376FileClose
	func
	.function	362
~~CH376FileClose:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L177
	tcs
	phd
	tcd
UpdateSz_0	set	4
	.block	362
;	return( CH376SendCmdDatWaitInt( CMD1H_FILE_CLOSE, UpdateSz ) );
	.sym	UpdateSz,4,14,6,8
	.line	363
	pei	<L177+UpdateSz_0
	pea	#<$36
	jsl	~~CH376SendCmdDatWaitInt
	sep	#$20
	longa	off
	sta	<R0
	rep	#$20
	longa	on
	lda	<R0
	and	#$ff
L180:
	tay
	lda	<L177+2
	sta	<L177+2+2
	lda	<L177+1
	sta	<L177+1+2
	pld
	tsc
	clc
	adc	#L177+2
	tcs
	tya
	rtl
;}
	.line	364
	.endblock	364
L177	equ	4
L178	equ	5
	ends
	efunc
	.endfunc	364,5,4
	.line	364
;
;UINT8	CH376DirInfoRead( void )
;{
	.line	366
	.line	367
	code
	xdef	~~CH376DirInfoRead
	func
	.function	367
~~CH376DirInfoRead:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L181
	tcs
	phd
	tcd
	.block	367
;	return( CH376SendCmdDatWaitInt( CMD1H_DIR_INFO_READ, 0xFF ) );
	.line	368
	pea	#<$ff
	pea	#<$37
	jsl	~~CH376SendCmdDatWaitInt
	sep	#$20
	longa	off
	sta	<R0
	rep	#$20
	longa	on
	lda	<R0
	and	#$ff
L184:
	tay
	pld
	tsc
	clc
	adc	#L181
	tcs
	tya
	rtl
;}
	.line	369
	.endblock	369
L181	equ	4
L182	equ	5
	ends
	efunc
	.endfunc	369,5,4
	.line	369
;
;UINT8	CH376DirInfoSave( void )
;{
	.line	371
	.line	372
	code
	xdef	~~CH376DirInfoSave
	func
	.function	372
~~CH376DirInfoSave:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L185
	tcs
	phd
	tcd
	.block	372
;	return( CH376SendCmdWaitInt( CMD0H_DIR_INFO_SAVE ) );
	.line	373
	pea	#<$38
	jsl	~~CH376SendCmdWaitInt
	sep	#$20
	longa	off
	sta	<R0
	rep	#$20
	longa	on
	lda	<R0
	and	#$ff
L188:
	tay
	pld
	tsc
	clc
	adc	#L185
	tcs
	tya
	rtl
;}
	.line	374
	.endblock	374
L185	equ	4
L186	equ	5
	ends
	efunc
	.endfunc	374,5,4
	.line	374
;
;UINT8	CH376ByteLocate( UINT32 offset )
;{
	.line	376
	.line	377
	code
	xdef	~~CH376ByteLocate
	func
	.function	377
~~CH376ByteLocate:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L189
	tcs
	phd
	tcd
offset_0	set	4
	.block	377
;	xWriteCH376Cmd( CMD4H_BYTE_LOCATE );
	.sym	offset,4,18,6,32
	.line	378
	pea	#<$39
	jsl	~~xWriteCH376Cmd
;	xWriteCH376Data( (UINT8)offset );
	.line	379
	pei	<L189+offset_0
	jsl	~~xWriteCH376Data
;	xWriteCH376Data( (UINT8)((UINT16)offset>>8) );
	.line	380
	lda	<L189+offset_0
	xba
	and	#$00ff
	pha
	jsl	~~xWriteCH376Data
;	xWriteCH376Data( (UINT8)(offset>>16) );
	.line	381
	pei	<L189+offset_0+2
	pei	<L189+offset_0
	lda	#$10
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R0
	stx	<R0+2
	pei	<R0
	jsl	~~xWriteCH376Data
;	xWriteCH376Data( (UINT8)(offset>>24) );
	.line	382
	pei	<L189+offset_0+2
	pei	<L189+offset_0
	lda	#$18
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R0
	stx	<R0+2
	pei	<R0
	jsl	~~xWriteCH376Data
;	xEndCH376Cmd( );
	.line	383
	jsl	~~xEndCH376Cmd
;	return( Wait376Interrupt( ) );
	.line	384
	jsl	~~Wait376Interrupt
	sep	#$20
	longa	off
	sta	<R0
	rep	#$20
	longa	on
	lda	<R0
	and	#$ff
L192:
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
;}
	.line	385
	.endblock	385
L189	equ	4
L190	equ	5
	ends
	efunc
	.endfunc	385,5,4
	.line	385
;
;UINT8	CH376ByteRead( PUINT8 buf, UINT16 ReqCount, PUINT16 RealCount )
;{
	.line	387
	.line	388
	code
	xdef	~~CH376ByteRead
	func
	.function	388
~~CH376ByteRead:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L193
	tcs
	phd
	tcd
buf_0	set	4
ReqCount_0	set	8
RealCount_0	set	10
	.block	388
;	UINT8	s;
;	xWriteCH376Cmd( CMD2H_BYTE_READ );
s_1	set	0
	.sym	s,0,14,1,8
	.sym	buf,4,142,6,32
	.sym	ReqCount,8,15,6,16
	.sym	RealCount,10,143,6,32
	.line	390
	pea	#<$3a
	jsl	~~xWriteCH376Cmd
;	xWriteCH376Data( (UINT8)ReqCount );
	.line	391
	pei	<L193+ReqCount_0
	jsl	~~xWriteCH376Data
;	xWriteCH376Data( (UINT8)(ReqCount>>8) );
	.line	392
	lda	<L193+ReqCount_0
	xba
	and	#$00ff
	pha
	jsl	~~xWriteCH376Data
;	xEndCH376Cmd( );
	.line	393
	jsl	~~xEndCH376Cmd
;	if ( RealCount ) *RealCount = 0;
	.line	394
	lda	<L193+RealCount_0
	ora	<L193+RealCount_0+2
	bne	L196
	brl	L10062
L196:
	.line	394
	lda	#$0
	sta	[<L193+RealCount_0]
;	while ( 1 ) {
L10062:
	.line	395
L10063:
	.line	395
;		s = Wait376Interrupt( );
	.line	396
	jsl	~~Wait376Interrupt
	sep	#$20
	longa	off
	sta	<L194+s_1
	rep	#$20
	longa	on
;		if ( s == USB_INT_DISK_READ ) {
	.line	397
	sep	#$20
	longa	off
	lda	<L194+s_1
	cmp	#<$1d
	rep	#$20
	longa	on
	beq	L197
	brl	L10065
L197:
	.line	397
;			s = CH376ReadBlock( buf );
	.line	398
	pei	<L193+buf_0+2
	pei	<L193+buf_0
	jsl	~~CH376ReadBlock
	sep	#$20
	longa	off
	sta	<L194+s_1
	rep	#$20
	longa	on
;			xWriteCH376Cmd( CMD0H_BYTE_RD_GO );
	.line	399
	pea	#<$3b
	jsl	~~xWriteCH376Cmd
;			xEndCH376Cmd( );
	.line	400
	jsl	~~xEndCH376Cmd
;			buf += s;
	.line	401
	lda	<L194+s_1
	and	#$ff
	sta	<R0
	stz	<R0+2
	clc
	lda	<L193+buf_0
	adc	<R0
	sta	<L193+buf_0
	lda	<L193+buf_0+2
	adc	<R0+2
	sta	<L193+buf_0+2
;			if ( RealCount ) *RealCount += s;
	.line	402
	lda	<L193+RealCount_0
	ora	<L193+RealCount_0+2
	bne	L198
	brl	L10066
L198:
	.line	402
	lda	<L194+s_1
	and	#$ff
	sta	<R0
	clc
	lda	<R0
	adc	[<L193+RealCount_0]
	sta	[<L193+RealCount_0]
;		}
L10066:
	.line	403
;/*		else if ( s == USB_INT_SUCCESS ) return( s );*/
;		else return( s );
	brl	L10067
L10065:
	.line	405
	lda	<L194+s_1
	and	#$ff
L199:
	tay
	lda	<L193+2
	sta	<L193+2+10
	lda	<L193+1
	sta	<L193+1+10
	pld
	tsc
	clc
	adc	#L193+10
	tcs
	tya
	rtl
L10067:
;	}
	.line	406
	brl	L10063
;}
	.line	407
	.endblock	407
L193	equ	5
L194	equ	5
	ends
	efunc
	.endfunc	407,5,5
	.line	407
;
;UINT8	CH376ByteWrite( PUINT8 buf, UINT16 ReqCount, PUINT16 RealCount )
;{
	.line	409
	.line	410
	code
	xdef	~~CH376ByteWrite
	func
	.function	410
~~CH376ByteWrite:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L200
	tcs
	phd
	tcd
buf_0	set	4
ReqCount_0	set	8
RealCount_0	set	10
	.block	410
;	UINT8	s;
;	xWriteCH376Cmd( CMD2H_BYTE_WRITE );
s_1	set	0
	.sym	s,0,14,1,8
	.sym	buf,4,142,6,32
	.sym	ReqCount,8,15,6,16
	.sym	RealCount,10,143,6,32
	.line	412
	pea	#<$3c
	jsl	~~xWriteCH376Cmd
;	xWriteCH376Data( (UINT8)ReqCount );
	.line	413
	pei	<L200+ReqCount_0
	jsl	~~xWriteCH376Data
;	xWriteCH376Data( (UINT8)(ReqCount>>8) );
	.line	414
	lda	<L200+ReqCount_0
	xba
	and	#$00ff
	pha
	jsl	~~xWriteCH376Data
;	xEndCH376Cmd( );
	.line	415
	jsl	~~xEndCH376Cmd
;	if ( RealCount ) *RealCount = 0;
	.line	416
	lda	<L200+RealCount_0
	ora	<L200+RealCount_0+2
	bne	L203
	brl	L10068
L203:
	.line	416
	lda	#$0
	sta	[<L200+RealCount_0]
;	while ( 1 ) {
L10068:
	.line	417
L10069:
	.line	417
;		s = Wait376Interrupt( );
	.line	418
	jsl	~~Wait376Interrupt
	sep	#$20
	longa	off
	sta	<L201+s_1
	rep	#$20
	longa	on
;		if ( s == USB_INT_DISK_WRITE ) {
	.line	419
	sep	#$20
	longa	off
	lda	<L201+s_1
	cmp	#<$1e
	rep	#$20
	longa	on
	beq	L204
	brl	L10071
L204:
	.line	419
;			s = CH376WriteReqBlock( buf );
	.line	420
	pei	<L200+buf_0+2
	pei	<L200+buf_0
	jsl	~~CH376WriteReqBlock
	sep	#$20
	longa	off
	sta	<L201+s_1
	rep	#$20
	longa	on
;			xWriteCH376Cmd( CMD0H_BYTE_WR_GO );
	.line	421
	pea	#<$3d
	jsl	~~xWriteCH376Cmd
;			xEndCH376Cmd( );
	.line	422
	jsl	~~xEndCH376Cmd
;			buf += s;
	.line	423
	lda	<L201+s_1
	and	#$ff
	sta	<R0
	stz	<R0+2
	clc
	lda	<L200+buf_0
	adc	<R0
	sta	<L200+buf_0
	lda	<L200+buf_0+2
	adc	<R0+2
	sta	<L200+buf_0+2
;			if ( RealCount ) *RealCount += s;
	.line	424
	lda	<L200+RealCount_0
	ora	<L200+RealCount_0+2
	bne	L205
	brl	L10072
L205:
	.line	424
	lda	<L201+s_1
	and	#$ff
	sta	<R0
	clc
	lda	<R0
	adc	[<L200+RealCount_0]
	sta	[<L200+RealCount_0]
;		}
L10072:
	.line	425
;/*		else if ( s == USB_INT_SUCCESS ) return( s );*/
;		else return( s );
	brl	L10073
L10071:
	.line	427
	lda	<L201+s_1
	and	#$ff
L206:
	tay
	lda	<L200+2
	sta	<L200+2+10
	lda	<L200+1
	sta	<L200+1+10
	pld
	tsc
	clc
	adc	#L200+10
	tcs
	tya
	rtl
L10073:
;	}
	.line	428
	brl	L10069
;}
	.line	429
	.endblock	429
L200	equ	5
L201	equ	5
	ends
	efunc
	.endfunc	429,5,5
	.line	429
;
;#ifdef	EN_DISK_QUERY
;
;UINT8	CH376DiskCapacity( PUINT32 DiskCap )
;{
;	UINT8	s;
;	s = CH376SendCmdWaitInt( CMD0H_DISK_CAPACITY );
;	if ( s == USB_INT_SUCCESS ) {
;		xWriteCH376Cmd( CMD01_RD_USB_DATA0 );
;		xReadCH376Data( );
;		*DiskCap = CH376Read32bitDat( );
;	}
;	else *DiskCap = 0;
;	return( s );
;}
;
;UINT8	CH376DiskQuery( PUINT32 DiskFre )
;{
;	UINT8	s;
;	UINT8	c0, c1, c2, c3;
;#ifndef	DEF_IC_V43_U
;	xWriteCH376Cmd( CMD01_GET_IC_VER );
;	if ( xReadCH376Data( ) < 0x43 ) {
;		if ( CH376ReadVar8( VAR_DISK_STATUS ) >= DEF_DISK_READY ) CH376WriteVar8( VAR_DISK_STATUS, DEF_DISK_MOUNTED );
;	}
;#endif
;	s = CH376SendCmdWaitInt( CMD0H_DISK_QUERY );
;	if ( s == USB_INT_SUCCESS ) {
;		xWriteCH376Cmd( CMD01_RD_USB_DATA0 );
;		xReadCH376Data( );
;		xReadCH376Data( );
;		xReadCH376Data( );
;		xReadCH376Data( );
;		xReadCH376Data( );
;		c0 = xReadCH376Data( );
;		c1 = xReadCH376Data( );
;		c2 = xReadCH376Data( );
;		c3 = xReadCH376Data( );
;		*DiskFre = c0 | (UINT16)c1 << 8 | (UINT32)c2 << 16 | (UINT32)c3 << 24;
;		xReadCH376Data( );
;		xEndCH376Cmd( );
;	}
;	else *DiskFre = 0;
;	return( s );
;}
;
;#endif
;
;UINT8	CH376SecLocate( UINT32 offset )
;{
	.line	478
	.line	479
	code
	xdef	~~CH376SecLocate
	func
	.function	479
~~CH376SecLocate:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L207
	tcs
	phd
	tcd
offset_0	set	4
	.block	479
;	xWriteCH376Cmd( CMD4H_SEC_LOCATE );
	.sym	offset,4,18,6,32
	.line	480
	pea	#<$4a
	jsl	~~xWriteCH376Cmd
;	xWriteCH376Data( (UINT8)offset );
	.line	481
	pei	<L207+offset_0
	jsl	~~xWriteCH376Data
;	xWriteCH376Data( (UINT8)((UINT16)offset>>8) );
	.line	482
	lda	<L207+offset_0
	xba
	and	#$00ff
	pha
	jsl	~~xWriteCH376Data
;	xWriteCH376Data( (UINT8)(offset>>16) );
	.line	483
	pei	<L207+offset_0+2
	pei	<L207+offset_0
	lda	#$10
	xref	~~~llsr
	jsl	~~~llsr
	sta	<R0
	stx	<R0+2
	pei	<R0
	jsl	~~xWriteCH376Data
;	xWriteCH376Data( 0 );
	.line	484
	pea	#<$0
	jsl	~~xWriteCH376Data
;	xEndCH376Cmd( );
	.line	485
	jsl	~~xEndCH376Cmd
;	return( Wait376Interrupt( ) );
	.line	486
	jsl	~~Wait376Interrupt
	sep	#$20
	longa	off
	sta	<R0
	rep	#$20
	longa	on
	lda	<R0
	and	#$ff
L210:
	tay
	lda	<L207+2
	sta	<L207+2+4
	lda	<L207+1
	sta	<L207+1+4
	pld
	tsc
	clc
	adc	#L207+4
	tcs
	tya
	rtl
;}
	.line	487
	.endblock	487
L207	equ	4
L208	equ	5
	ends
	efunc
	.endfunc	487,5,4
	.line	487
;
;#ifdef	EN_SECTOR_ACCESS
;
;UINT8	CH376DiskReadSec( PUINT8 buf, UINT32 iLbaStart, UINT8 iSectorCount )
;
;{
;	UINT8	s, err;
;	UINT16	mBlockCount;
;	for ( err = 0; err != 3; ++ err ) {
;		xWriteCH376Cmd( CMD5H_DISK_READ );
;		xWriteCH376Data( (UINT8)iLbaStart );
;		xWriteCH376Data( (UINT8)( (UINT16)iLbaStart >> 8 ) );
;		xWriteCH376Data( (UINT8)( iLbaStart >> 16 ) );
;		xWriteCH376Data( (UINT8)( iLbaStart >> 24 ) );
;		xWriteCH376Data( iSectorCount );
;		xEndCH376Cmd( );
;		for ( mBlockCount = iSectorCount * DEF_SECTOR_SIZE / CH376_DAT_BLOCK_LEN; mBlockCount != 0; -- mBlockCount ) {
;			s = Wait376Interrupt( );
;			if ( s == USB_INT_DISK_READ ) {
;				s = CH376ReadBlock( buf );
;				xWriteCH376Cmd( CMD0H_DISK_RD_GO );
;				xEndCH376Cmd( );
;				buf += s;
;			}
;			else break;
;		}
;		if ( mBlockCount == 0 ) {
;			s = Wait376Interrupt( );
;			if ( s == USB_INT_SUCCESS ) return( USB_INT_SUCCESS );
;		}
;		if ( s == USB_INT_DISCONNECT ) return( s );
;		CH376DiskReqSense( );
;	}
;	return( s );
;}
;
;UINT8	CH376DiskWriteSec( PUINT8 buf, UINT32 iLbaStart, UINT8 iSectorCount )
;
;{
;	UINT8	s, err;
;	UINT16	mBlockCount;
;	for ( err = 0; err != 3; ++ err ) {
;		xWriteCH376Cmd( CMD5H_DISK_WRITE );
;		xWriteCH376Data( (UINT8)iLbaStart );
;		xWriteCH376Data( (UINT8)( (UINT16)iLbaStart >> 8 ) );
;		xWriteCH376Data( (UINT8)( iLbaStart >> 16 ) );
;		xWriteCH376Data( (UINT8)( iLbaStart >> 24 ) );
;		xWriteCH376Data( iSectorCount );
;		xEndCH376Cmd( );
;		for ( mBlockCount = iSectorCount * DEF_SECTOR_SIZE / CH376_DAT_BLOCK_LEN; mBlockCount != 0; -- mBlockCount ) {
;			s = Wait376Interrupt( );
;			if ( s == USB_INT_DISK_WRITE ) {
;				CH376WriteHostBlock( buf, CH376_DAT_BLOCK_LEN );
;				xWriteCH376Cmd( CMD0H_DISK_WR_GO );
;				xEndCH376Cmd( );
;				buf += CH376_DAT_BLOCK_LEN;
;			}
;			else break;
;		}
;		if ( mBlockCount == 0 ) {
;			s = Wait376Interrupt( );
;			if ( s == USB_INT_SUCCESS ) return( USB_INT_SUCCESS );
;		}
;		if ( s == USB_INT_DISCONNECT ) return( s );
;		CH376DiskReqSense( );
;	}
;	return( s );
;}
;
;UINT8	CH376SecRead( PUINT8 buf, UINT8 ReqCount, PUINT8 RealCount )
;{
;	UINT8	s;
;	UINT8	cnt;
;	UINT32	StaSec;
;#ifndef	DEF_IC_V43_U
;	UINT32	fsz, fofs;
;#endif
;	if ( RealCount ) *RealCount = 0;
;	do {
;#ifndef	DEF_IC_V43_U
;		xWriteCH376Cmd( CMD01_GET_IC_VER );
;		cnt = xReadCH376Data( );
;		if ( cnt == 0x41 ) {
;			xWriteCH376Cmd( CMD14_READ_VAR32 );
;			xWriteCH376Data( VAR_FILE_SIZE );
;			xReadCH376Data( );
;			fsz = xReadCH376Data( );
;			fsz |= (UINT16)(xReadCH376Data( )) << 8;
;			cnt = xReadCH376Data( );
;			fsz |= (UINT32)cnt << 16;
;			xWriteCH376Cmd( CMD14_READ_VAR32 );
;			xWriteCH376Data( VAR_CURRENT_OFFSET );
;			xReadCH376Data( );
;			fofs = xReadCH376Data( );
;			fofs |= (UINT16)(xReadCH376Data( )) << 8;
;			fofs |= (UINT32)(xReadCH376Data( )) << 16;
;			if ( fsz >= fofs + 510 ) CH376WriteVar8( VAR_FILE_SIZE + 3, 0xFF );
;			else cnt = 0xFF;
;		}
;		else cnt = 0xFF;
;#endif
;		xWriteCH376Cmd( CMD1H_SEC_READ );
;		xWriteCH376Data( ReqCount );
;		xEndCH376Cmd( );
;		s = Wait376Interrupt( );
;#ifndef	DEF_IC_V43_U
;		if ( cnt != 0xFF ) CH376WriteVar8( VAR_FILE_SIZE + 3, cnt );
;#endif
;		if ( s != USB_INT_SUCCESS ) return( s );
;		xWriteCH376Cmd( CMD01_RD_USB_DATA0 );
;		xReadCH376Data( );
;		cnt = xReadCH376Data( );
;		xReadCH376Data( );
;		xReadCH376Data( );
;		xReadCH376Data( );
;		StaSec = CH376Read32bitDat( );
;		if ( cnt == 0 ) break;
;		s = CH376DiskReadSec( buf, StaSec, cnt );
;		if ( s != USB_INT_SUCCESS ) return( s );
;		buf += cnt * DEF_SECTOR_SIZE;
;		if ( RealCount ) *RealCount += cnt;
;		ReqCount -= cnt;
;	} while ( ReqCount );
;	return( s );
;}
;
;UINT8	CH376SecWrite( PUINT8 buf, UINT8 ReqCount, PUINT8 RealCount )
;{
;	UINT8	s;
;	UINT8	cnt;
;	UINT32	StaSec;
;	if ( RealCount ) *RealCount = 0;
;	do {
;		xWriteCH376Cmd( CMD1H_SEC_WRITE );
;		xWriteCH376Data( ReqCount );
;		xEndCH376Cmd( );
;		s = Wait376Interrupt( );
;		if ( s != USB_INT_SUCCESS ) return( s );
;		xWriteCH376Cmd( CMD01_RD_USB_DATA0 );
;		xReadCH376Data( );
;		cnt = xReadCH376Data( );
;		xReadCH376Data( );
;		xReadCH376Data( );
;		xReadCH376Data( );
;		StaSec = CH376Read32bitDat( );
;		if ( cnt == 0 ) break;
;		s = CH376DiskWriteSec( buf, StaSec, cnt );
;		if ( s != USB_INT_SUCCESS ) return( s );
;		buf += cnt * DEF_SECTOR_SIZE;
;		if ( RealCount ) *RealCount += cnt;
;		ReqCount -= cnt;
;	} while ( ReqCount );
;	return( s );
;}
;
;#endif
;
;#ifdef	EN_LONG_NAME
;
;UINT8	CH376LongNameWrite( PUINT8 buf, UINT16 ReqCount )
;{
;	UINT8	s;
;#ifndef	DEF_IC_V43_U
;	UINT8	c;
;	c = CH376ReadVar8( VAR_DISK_STATUS );
;	if ( c == DEF_DISK_OPEN_ROOT ) CH376WriteVar8( VAR_DISK_STATUS, DEF_DISK_OPEN_DIR );
;#endif
;	xWriteCH376Cmd( CMD2H_BYTE_WRITE );
;	xWriteCH376Data( (UINT8)ReqCount );
;	xWriteCH376Data( (UINT8)(ReqCount>>8) );
;	xEndCH376Cmd( );
;	while ( 1 ) {
;		s = Wait376Interrupt( );
;		if ( s == USB_INT_DISK_WRITE ) {
;			if ( buf ) buf += CH376WriteReqBlock( buf );
;			else {
;				xWriteCH376Cmd( CMD01_WR_REQ_DATA );
;				s = xReadCH376Data( );
;				while ( s -- ) xWriteCH376Data( 0 );
;			}
;			xWriteCH376Cmd( CMD0H_BYTE_WR_GO );
;			xEndCH376Cmd( );
;		}
;/*		else if ( s == USB_INT_SUCCESS ) return( s );*/
;		else {
;#ifndef	DEF_IC_V43_U
;			if ( c == DEF_DISK_OPEN_ROOT ) CH376WriteVar8( VAR_DISK_STATUS, c );
;#endif
;			return( s );
;		}
;	}
;}
;
;UINT8	CH376CheckNameSum( PUINT8 DirName )
;{
;	UINT8	NameLen;
;	UINT8	CheckSum;
;	CheckSum = 0;
;	for ( NameLen = 0; NameLen != 11; NameLen ++ ) CheckSum = ( CheckSum & 1 ? 0x80 : 0x00 ) + ( CheckSum >> 1 ) + *DirName++;
;	return( CheckSum );
;}
;
;UINT8	CH376LocateInUpDir( PUINT8 PathName )
;
;
;{
;	UINT8	s;
;	xWriteCH376Cmd( CMD14_READ_VAR32 );
;	xWriteCH376Data( VAR_FAT_DIR_LBA );
;	for ( s = 4; s != 8; s ++ ) GlobalBuf[ s ] = xReadCH376Data( );
;	xEndCH376Cmd( );
;	s = CH376SeparatePath( PathName );
;	if ( s ) s = CH376FileOpenDir( PathName, s );
;	else s = CH376FileOpen( "/" );
;	if ( s != ERR_OPEN_DIR ) return( s );
;	*(PUINT32)(&GlobalBuf[0]) = 0;
;	while ( 1 ) {
;		s = CH376SecLocate( *(PUINT32)(&GlobalBuf[0]) );
;		if ( s != USB_INT_SUCCESS ) return( s );
;		CH376ReadBlock( &GlobalBuf[8] );
;		if ( *(PUINT32)(&GlobalBuf[8]) == *(PUINT32)(&GlobalBuf[4]) ) return( USB_INT_SUCCESS );
;		xWriteCH376Cmd( CMD50_WRITE_VAR32 );
;		xWriteCH376Data( VAR_FAT_DIR_LBA );
;		for ( s = 8; s != 12; s ++ ) xWriteCH376Data( GlobalBuf[ s ] );
;		xEndCH376Cmd( );
;		++ *(PUINT32)(&GlobalBuf[0]);
;	}
;}
;
;UINT8	CH376GetLongName( PUINT8 PathName, PUINT8 LongName )
;
;
;{
;	UINT8	s;
;	UINT16	NameCount;
;	s = CH376FileOpenPath( PathName );
;	if ( s != USB_INT_SUCCESS && s != ERR_OPEN_DIR ) return( s );
;	s = CH376DirInfoRead( );
;	if ( s != USB_INT_SUCCESS ) return( s );
;	CH376ReadBlock( GlobalBuf );
;	CH376EndDirInfo( );
;	GlobalBuf[32] = CH376CheckNameSum( GlobalBuf );
;	GlobalBuf[33] = CH376ReadVar8( VAR_FILE_DIR_INDEX );
;	NameCount = 0;
;	while ( 1 ) {
;		if ( GlobalBuf[33] == 0 ) {
;			s = CH376LocateInUpDir( PathName );
;			if ( s != USB_INT_SUCCESS ) break;
;			if ( CH376ReadVar32( VAR_CURRENT_OFFSET ) == 0 ) {
;				s = ERR_LONG_NAME_ERR;
;				break;
;			}
;			GlobalBuf[33] = DEF_SECTOR_SIZE / sizeof( FAT_DIR_INFO );
;		}
;		GlobalBuf[33] --;
;		s = CH376SendCmdDatWaitInt( CMD1H_DIR_INFO_READ, GlobalBuf[33] );
;		if ( s != USB_INT_SUCCESS ) break;
;		CH376ReadBlock( GlobalBuf );
;		CH376EndDirInfo( );
;		if ( ( GlobalBuf[11] & ATTR_LONG_NAME_MASK ) != ATTR_LONG_NAME || GlobalBuf[13] != GlobalBuf[32] ) {
;			s = ERR_LONG_NAME_ERR;
;			break;
;		}
;		for ( s = 1; s < sizeof( FAT_DIR_INFO ); s += 2 ) {
;			if ( s == 1 + 5 * 2 ) s = 14;
;			else if ( s == 14 + 6 * 2 ) s = 28;
;			LongName[ NameCount++ ] = GlobalBuf[ s ];
;			LongName[ NameCount++ ] = GlobalBuf[ s + 1 ];
;			if ( GlobalBuf[ s ] == 0 && GlobalBuf[ s + 1 ] == 0 ) break;
;			if ( NameCount >= LONG_NAME_BUF_LEN ) {
;				s = ERR_LONG_BUF_OVER;
;				goto CH376GetLongNameE;
;			}
;		}
;		if ( GlobalBuf[0] & 0x40 ) {
;			if ( s >= sizeof( FAT_DIR_INFO ) ) *(PUINT16)( &LongName[ NameCount ] ) = 0x0000;
;			s = USB_INT_SUCCESS;
;			break;
;		}
;	}
;CH376GetLongNameE:
;	CH376FileClose( FALSE );
;	return( s );
;}
;
;UINT8	CH376CreateLongName( PUINT8 PathName, PUINT8 LongName )
;{
;	UINT8	s, i;
;	UINT8	DirBlockCnt;
;	UINT16	count;
;	UINT16	NameCount;
;	UINT32	NewFileLoc;
;	for ( count = 0; count < LONG_NAME_BUF_LEN; count += 2 ) if ( *(PUINT16)(&LongName[count]) == 0 ) break;
;	if ( count == 0 || count >= LONG_NAME_BUF_LEN || count > LONE_NAME_MAX_CHAR ) return( ERR_LONG_NAME_ERR );
;	DirBlockCnt = count / LONG_NAME_PER_DIR;
;	i = count - DirBlockCnt * LONG_NAME_PER_DIR;
;	if ( i ) {
;		if ( ++ DirBlockCnt * LONG_NAME_PER_DIR > LONG_NAME_BUF_LEN ) return( ERR_LONG_BUF_OVER );
;		count += 2;
;		i += 2;
;		if ( i < LONG_NAME_PER_DIR ) {
;			while ( i++ < LONG_NAME_PER_DIR ) LongName[count++] = 0xFF;
;		}
;	}
;	s = CH376FileOpenPath( PathName );
;	if ( s == USB_INT_SUCCESS ) {
;		s = ERR_NAME_EXIST;
;		goto CH376CreateLongNameE;
;	}
;	if ( s != ERR_MISS_FILE ) return( s );
;	s = CH376FileCreatePath( PathName );
;	if ( s != USB_INT_SUCCESS ) return( s );
;	i = CH376ReadVar8( VAR_FILE_DIR_INDEX );
;	s = CH376LocateInUpDir( PathName );
;	if ( s != USB_INT_SUCCESS ) goto CH376CreateLongNameE;
;	NewFileLoc = CH376ReadVar32( VAR_CURRENT_OFFSET ) + i * sizeof(FAT_DIR_INFO);
;	s = CH376ByteLocate( NewFileLoc );
;	if ( s != USB_INT_SUCCESS ) goto CH376CreateLongNameE;
;	s = CH376ByteRead( &GlobalBuf[ sizeof(FAT_DIR_INFO) ], sizeof(FAT_DIR_INFO), NULL );
;	if ( s != USB_INT_SUCCESS ) goto CH376CreateLongNameE;
;	for ( i = DirBlockCnt; i != 0; -- i ) {
;		s = CH376ByteRead( GlobalBuf, sizeof(FAT_DIR_INFO), &count );
;		if ( s != USB_INT_SUCCESS ) goto CH376CreateLongNameE;
;		if ( count == 0 ) break;
;		if ( GlobalBuf[0] && GlobalBuf[0] != 0xE5 ) {
;			s = CH376ByteLocate( NewFileLoc );
;			if ( s != USB_INT_SUCCESS ) goto CH376CreateLongNameE;
;			GlobalBuf[ 0 ] = 0xE5;
;			for ( s = 1; s != sizeof(FAT_DIR_INFO); s ++ ) GlobalBuf[ s ] = GlobalBuf[ sizeof(FAT_DIR_INFO) + s ];
;			s = CH376LongNameWrite( GlobalBuf, sizeof(FAT_DIR_INFO) );
;			if ( s != USB_INT_SUCCESS ) goto CH376CreateLongNameE;
;			do {
;				s = CH376ByteRead( GlobalBuf, sizeof(FAT_DIR_INFO), &count );
;				if ( s != USB_INT_SUCCESS ) goto CH376CreateLongNameE;
;			} while ( count && GlobalBuf[0] );
;			NewFileLoc = CH376ReadVar32( VAR_CURRENT_OFFSET );
;			i = DirBlockCnt + 1;
;			if ( count == 0 ) break;
;			NewFileLoc -= sizeof(FAT_DIR_INFO);
;		}
;	}
;	if ( i ) {
;		s = CH376ReadVar8( VAR_SEC_PER_CLUS );
;		if ( s == 128 ) {
;			s = ERR_FDT_OVER;
;			goto CH376CreateLongNameE;
;		}
;		count = s * DEF_SECTOR_SIZE;
;		if ( count < i * sizeof(FAT_DIR_INFO) ) count <<= 1;
;		s = CH376LongNameWrite( NULL, count );
;		if ( s != USB_INT_SUCCESS ) goto CH376CreateLongNameE;
;	}
;	s = CH376ByteLocate( NewFileLoc );
;	if ( s != USB_INT_SUCCESS ) goto CH376CreateLongNameE;
;	GlobalBuf[11] = ATTR_LONG_NAME;
;	GlobalBuf[12] = 0x00;
;	GlobalBuf[13] = CH376CheckNameSum( &GlobalBuf[ sizeof(FAT_DIR_INFO) ] );
;	GlobalBuf[26] = 0x00;
;	GlobalBuf[27] = 0x00;
;	for ( s = 0; DirBlockCnt != 0; ) {
;		GlobalBuf[0] = s ? DirBlockCnt : DirBlockCnt | 0x40;
;		DirBlockCnt --;
;		NameCount = DirBlockCnt * LONG_NAME_PER_DIR;
;		for ( s = 1; s < sizeof( FAT_DIR_INFO ); s += 2 ) {
;			if ( s == 1 + 5 * 2 ) s = 14;
;			else if ( s == 14 + 6 * 2 ) s = 28;
;			GlobalBuf[ s ] = LongName[ NameCount++ ];
;			GlobalBuf[ s + 1 ] = LongName[ NameCount++ ];
;		}
;		s = CH376LongNameWrite( GlobalBuf, sizeof(FAT_DIR_INFO) );
;		if ( s != USB_INT_SUCCESS ) goto CH376CreateLongNameE;
;	}
;	s = CH376LongNameWrite( &GlobalBuf[ sizeof(FAT_DIR_INFO) ], sizeof(FAT_DIR_INFO) );
;CH376CreateLongNameE:
;	CH376FileClose( FALSE );
;	return( s );
;}
;
;#endif
;
	.line	866
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\FILE_SYS.C",478
	xref	~~Query376Interrupt
	xref	~~xReadCH376Data
	xref	~~xWriteCH376Data
	xref	~~xWriteCH376Cmd
	xref	~~xEndCH376Cmd
	xref	~~mDelaymS
	.sym	~~CH376SecLocate,~~CH376SecLocate,78,2,0
	.sym	~~CH376ByteWrite,~~CH376ByteWrite,78,2,0
	.sym	~~CH376ByteRead,~~CH376ByteRead,78,2,0
	.sym	~~CH376ByteLocate,~~CH376ByteLocate,78,2,0
	.sym	~~CH376DirInfoSave,~~CH376DirInfoSave,78,2,0
	.sym	~~CH376DirInfoRead,~~CH376DirInfoRead,78,2,0
	.sym	~~CH376FileClose,~~CH376FileClose,78,2,0
	.sym	~~CH376FileErase,~~CH376FileErase,78,2,0
	.sym	~~CH376FileCreatePath,~~CH376FileCreatePath,78,2,0
	.sym	~~CH376FileOpenPath,~~CH376FileOpenPath,78,2,0
	.sym	~~CH376FileOpenDir,~~CH376FileOpenDir,78,2,0
	.sym	~~CH376SeparatePath,~~CH376SeparatePath,78,2,0
	.sym	~~CH376DirCreate,~~CH376DirCreate,78,2,0
	.sym	~~CH376FileCreate,~~CH376FileCreate,78,2,0
	.sym	~~CH376FileOpen,~~CH376FileOpen,78,2,0
	.sym	~~CH376DiskMount,~~CH376DiskMount,78,2,0
	.sym	~~CH376DiskConnect,~~CH376DiskConnect,78,2,0
	.sym	~~CH376DiskReqSense,~~CH376DiskReqSense,78,2,0
	.sym	~~CH376SendCmdDatWaitInt,~~CH376SendCmdDatWaitInt,78,2,0
	.sym	~~CH376SendCmdWaitInt,~~CH376SendCmdWaitInt,78,2,0
	.sym	~~Wait376Interrupt,~~Wait376Interrupt,78,2,0
	.sym	~~CH376GetIntStatus,~~CH376GetIntStatus,78,2,0
	.sym	~~CH376GetDiskStatus,~~CH376GetDiskStatus,78,2,0
	.sym	~~CH376GetFileSize,~~CH376GetFileSize,82,2,0
	.sym	~~CH376EndDirInfo,~~CH376EndDirInfo,65,2,0
	.sym	~~CH376WriteVar32,~~CH376WriteVar32,65,2,0
	.sym	~~CH376ReadVar32,~~CH376ReadVar32,82,2,0
	.sym	~~CH376WriteVar8,~~CH376WriteVar8,65,2,0
	.sym	~~CH376ReadVar8,~~CH376ReadVar8,78,2,0
	.sym	~~CH376Read32bitDat,~~CH376Read32bitDat,82,2,0
	.sym	~~CH376SetFileName,~~CH376SetFileName,65,2,0
	.sym	~~CH376WriteOfsBlock,~~CH376WriteOfsBlock,65,2,0
	.sym	~~CH376WriteHostBlock,~~CH376WriteHostBlock,65,2,0
	.sym	~~CH376WriteReqBlock,~~CH376WriteReqBlock,78,2,0
	.sym	~~CH376ReadBlock,~~CH376ReadBlock,78,2,0
	.sym	~~Query376Interrupt,~~Query376Interrupt,78,18,0
	.sym	~~xReadCH376Data,~~xReadCH376Data,78,18,0
	.sym	~~xWriteCH376Data,~~xWriteCH376Data,65,18,0
	.sym	~~xWriteCH376Cmd,~~xWriteCH376Cmd,65,18,0
	.sym	~~xEndCH376Cmd,~~xEndCH376Cmd,65,18,0
	.sym	~~mDelaymS,~~mDelaymS,65,18,0
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

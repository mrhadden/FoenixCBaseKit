;:ts=8
R0	equ	1
R1	equ	5
R2	equ	9
R3	equ	13
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\HAL_BASE.C",0
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
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\HAL_BASE.C",2
;
;void mDelayuS( UINT8 us )
;{
	.line	4
	.line	5
	code
	xdef	~~mDelayuS
	func
	.function	5
~~mDelayuS:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L2
	tcs
	phd
	tcd
us_0	set	4
	.block	5
;	while ( us -- );  /* 14MHz WDC65C816 */
	.sym	us,4,14,6,8
	.line	6
L10001:
	sep	#$20
	longa	off
	lda	<L2+us_0
	sta	<R0
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	dec	<L2+us_0
	rep	#$20
	longa	on
	lda	<R0
	and	#$ff
	bne	L5
	brl	L10002
L5:
	.line	6
	brl	L10001
L10002:
;}
	.line	7
L6:
	lda	<L2+2
	sta	<L2+2+2
	lda	<L2+1
	sta	<L2+1+2
	pld
	tsc
	clc
	adc	#L2+2
	tcs
	rtl
	.endblock	7
L2	equ	4
L3	equ	5
	ends
	efunc
	.endfunc	7,5,4
	.line	7
;
;void mDelaymS( UINT8 ms )
;{
	.line	9
	.line	10
	code
	xdef	~~mDelaymS
	func
	.function	10
~~mDelaymS:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L7
	tcs
	phd
	tcd
ms_0	set	4
	.block	10
;	while ( ms -- )
	.sym	ms,4,14,6,8
	.line	11
L10003:
	sep	#$20
	longa	off
	lda	<L7+ms_0
	sta	<R0
	rep	#$20
	longa	on
	sep	#$20
	longa	off
	dec	<L7+ms_0
	rep	#$20
	longa	on
	lda	<R0
	and	#$ff
	bne	L10
	brl	L10004
L10:
;	{
	.line	12
;		asm NOP;
	.line	13
	asmstart
	NOP
	asmend
;		asm NOP;
	.line	14
	asmstart
	NOP
	asmend
;		asm NOP;
	.line	15
	asmstart
	NOP
	asmend
;		asm NOP;
	.line	16
	asmstart
	NOP
	asmend
;		asm NOP;
	.line	17
	asmstart
	NOP
	asmend
;		asm NOP;
	.line	18
	asmstart
	NOP
	asmend
;		asm NOP;
	.line	19
	asmstart
	NOP
	asmend
;		asm NOP;
	.line	20
	asmstart
	NOP
	asmend
;	}
	.line	21
	brl	L10003
L10004:
;}
	.line	22
L11:
	lda	<L7+2
	sta	<L7+2+2
	lda	<L7+1
	sta	<L7+1+2
	pld
	tsc
	clc
	adc	#L7+2
	tcs
	rtl
	.endblock	22
L7	equ	4
L8	equ	5
	ends
	efunc
	.endfunc	22,5,4
	.line	22
;
	.line	22
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\HAL_BASE.C",9
	.sym	~~mDelaymS,~~mDelaymS,65,2,0
	.sym	~~mDelayuS,~~mDelayuS,65,2,0
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

;:ts=8
R0	equ	1
R1	equ	5
R2	equ	9
R3	equ	13
	.file	"G:\devprojects\6502\fex\Test\fxstartup.c",0
;
;#include "basic.h"
	.file	"G:\devprojects\6502\basic.h",0
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
	.file	"G:\devprojects\6502\basic.h",5
	.file	"G:\devtools\WDCTools\wdc\Tools\include\string.h",0
	.line	134
	.file	"G:\devprojects\6502\basic.h",6
	.stag	_RectStruct,64,4
	.member	x,0,5,8,16
	.member	y,16,5,8,16
	.member	width,32,5,8,16
	.member	height,48,5,8,16
	.eos
	.stag	_WindowStruct,160,5
	.member	win_id,0,5,8,16
	.member	win_x,16,5,8,16
	.member	win_y,32,5,8,16
	.member	win_width,48,5,8,16
	.member	win_height,64,5,8,16
	.member	win_title,80,110,8,0,10
	.eos
	.stag	_FontMetric,32,6
	.member	width,0,5,8,16
	.member	height,16,5,8,16
	.eos
	.stag	_ctl_Textbox,112,7
	.member	win_id,0,5,8,16
	.member	win_x,16,5,8,16
	.member	win_y,32,5,8,16
	.member	win_width,48,5,8,16
	.member	win_height,64,5,8,16
	.member	content,80,1166,8,32
	.eos
	.stag	_ClickableRect,80,8
	.member	area,0,10,8,64,4
	.member	enabled,64,14,8,8
	.member	depth,72,14,8,8
	.eos
	.stag	_MenuStruct,168,9
	.member	cx,0,5,8,16
	.member	cy,16,5,8,16
	.member	width,32,5,8,16
	.member	height,48,5,8,16
	.member	fcolor,64,14,8,8
	.member	bcolor,72,14,8,8
	.member	chromeLeft,80,14,8,8
	.member	chromeRight1,88,14,8,8
	.member	chromeRight2,96,14,8,8
	.member	pCaption,104,142,8,32
	.member	subMenus,136,1153,8,32
	.eos
	.stag	_SubMenuStruct,48,10
	.member	caption,0,142,8,32
	.member	action,32,545,8,16
	.eos
	.stag	_SubMenuListStruct,40,11
	.member	cMenus,0,14,8,8
	.member	psubmenus,8,9354,8,32,10
	.eos
	.line	1372
	.file	"G:\devprojects\6502\fex\Test\fxstartup.c",2
;
;//#pragma section CODE=FCODE,OFFSET $15:0000
;//extern char _END_UDATA;
;//void *heap_start=(void*)&_END_UDATA,*heap_end=(void*)(&_END_UDATA + 0x1000);
;
;#define INT_PENDING_REG0  ((char far*)0x000140) 
;#define INT_PENDING_REG1  ((char far*)0x000141) 
;#define INT_PENDING_REG2  ((char far*)0x000142) 
;#define INT_POL_REG0      ((char far*)0x000144) 
;#define INT_POL_REG1      ((char far*)0x000145) 
;#define INT_POL_REG2      ((char far*)0x000146) 
;#define INT_EDGE_REG0     ((char far*)0x000148) 
;#define INT_EDGE_REG1     ((char far*)0x000149) 
;#define INT_EDGE_REG2     ((char far*)0x00014A) 
;#define INT_MASK_REG0     ((char far*)0x00014C) 
;#define INT_MASK_REG1     ((char far*)0x00014D) 
;#define INT_MASK_REG2     ((char far*)0x00014E) 
;
;#define FNX0_INT00_ALLONE 0x01
;#define FNX0_INT01_SOF    0x02
;#define FNX0_INT02_SOL    0x04
;#define FNX0_INT03_TMR0   0x08
;#define FNX0_INT04_TMR1   0x10
;#define FNX0_INT05_TMR2   0x20
;#define FNX0_INT06_RTC    0x40
;#define FNX0_INT07_FDC    0x80
;#define FNX1_INT00_KBD    0x01
;#define FNX1_INT01_SC0    0x02
;#define FNX1_INT02_SC1    0x04
;#define FNX1_INT03_COM2   0x08
;#define FNX1_INT04_COM1   0x10
;#define FNX1_INT05_MPU401 0x20
;#define FNX1_INT06_LPT    0x40
;#define FNX1_INT07_SDCARD 0x80
;#define FNX2_INT00_OPL2R  0x01
;#define FNX2_INT01_OPL2L  0x02
;#define FNX2_INT02_BTX_INT 0x04
;#define FNX2_INT03_SDMA   0x08
;#define FNX2_INT04_VDMA   0x10
;#define FNX2_INT05_DACHP  0x20
;#define FNX2_INT06_EXT    0x40
;#define FNX2_INT07_ALLONE 0x80
;
;static char sc = 0;
	data
_~sc:
	db	$0
	ends
;static char irqspinner[] = {'|','/','-','\\'};
	data
_~irqspinner:
	db	$7C,$2F,$2D,$5C
	ends
;
;void XIRQHandler(void)
;{
	.line	49
	.line	50
	code
	xdef	_~XIRQHandler
	func
	.function	50
_~XIRQHandler:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L2
	tcs
	phd
	tcd
	.block	50
;	k_put_char(0,5,'Z',15,0);
	.line	51
	pea	#<$0
	pea	#<$f
	pea	#<$5a
	pea	#<$5
	pea	#<$0
	jsr	_~k_put_char
;	
;	return;
	.line	53
L5:
	pld
	tsc
	clc
	adc	#L2
	tcs
	rts
;}
	.line	54
	.endblock	54
L2	equ	0
L3	equ	1
	ends
	efunc
	.endfunc	54,1,0
	.line	54
;
;void IRQHandler(void)
;{
	.line	56
	.line	57
	code
	xdef	_~IRQHandler
	func
	.function	57
_~IRQHandler:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L6
	tcs
	phd
	tcd
	.block	57
;	k_put_char(0,0,irqspinner[sc],15,0);	
	.line	58
	pea	#<$0
	pea	#<$f
	lda	|_~sc
	and	#$ff
	sta	<R0
	ldx	<R0
	lda	|_~irqspinner,X
	pha
	pea	#<$0
	pea	#<$0
	jsr	_~k_put_char
;	sc++;
	.line	59
	sep	#$20
	longa	off
	inc	|_~sc
	rep	#$20
	longa	on
;	if(sc>3)
	.line	60
;		sc = 0;
	sep	#$20
	longa	off
	lda	#$3
	cmp	|_~sc
	rep	#$20
	longa	on
	bcc	L9
	brl	L10001
L9:
	.line	61
	sep	#$20
	longa	off
	stz	|_~sc
	rep	#$20
	longa	on
;	/*
;	k_put_char(0,5,'\\',15,0);
;	k_put_char(0,5,'|',15,0);
;	k_put_char(0,5,'/',15,0);
;	k_put_char(0,5,'-',15,0);
;	
;	k_put_char(0,5,'\\',15,0);
;	k_put_char(0,5,'|',15,0);
;	k_put_char(0,5,'/',15,0);
;	k_put_char(0,5,'-',15,0);
;
;	k_put_char(0,5,'\\',15,0);
;	k_put_char(0,5,'|',15,0);
;	k_put_char(0,5,'/',15,0);
;	k_put_char(0,5,'-',15,0);
;	*/
;
;	if(INT_PENDING_REG0[0]!=0)
L10001:
	.line	79
;	{
	lda	>320
	and	#$ff
	bne	L10
	brl	L10002
L10:
	.line	80
;		k_put_char(0,0,'0',15,0);	
	.line	81
	pea	#<$0
	pea	#<$f
	pea	#<$30
	pea	#<$0
	pea	#<$0
	jsr	_~k_put_char
;		
;		if(INT_PENDING_REG0[0] & FNX0_INT01_SOF)
	.line	83
;		{
	sep	#$20
	longa	off
	lda	>320
	and	#<$2
	rep	#$20
	longa	on
	bne	L11
	brl	L10003
L11:
	.line	84
;			k_put_char(2,0,'X',15,0);
	.line	85
	pea	#<$0
	pea	#<$f
	pea	#<$58
	pea	#<$0
	pea	#<$2
	jsr	_~k_put_char
;			k_put_char(2,0,'1',15,0);
	.line	86
	pea	#<$0
	pea	#<$f
	pea	#<$31
	pea	#<$0
	pea	#<$2
	jsr	_~k_put_char
;			//INT_PENDING_REG0[0]&=FNX0_INT01_SOF;
;			/*
;			#asm
;				sep	#$20
;				longa off
;				LDA >$000140
;				AND #$02
;				STA >$000140				
;				sep	#$30
;				longa on
;			#endasm
;			*/
;			INT_PENDING_REG0[0] = (INT_PENDING_REG0[0] & FNX0_INT01_SOF);
	.line	99
	sep	#$20
	longa	off
	lda	>320
	and	#<$2
	sta	>320
	rep	#$20
	longa	on
;		}
	.line	100
;		if(INT_PENDING_REG0[0] & FNX0_INT02_SOL)
L10003:
	.line	101
;		{
	sep	#$20
	longa	off
	lda	>320
	and	#<$4
	rep	#$20
	longa	on
	bne	L12
	brl	L10004
L12:
	.line	102
;			k_put_char(3,0,'X',15,0);
	.line	103
	pea	#<$0
	pea	#<$f
	pea	#<$58
	pea	#<$0
	pea	#<$3
	jsr	_~k_put_char
;			k_put_char(3,0,'2',15,0);
	.line	104
	pea	#<$0
	pea	#<$f
	pea	#<$32
	pea	#<$0
	pea	#<$3
	jsr	_~k_put_char
;		}
	.line	105
;		if(INT_PENDING_REG0[0] & FNX0_INT03_TMR0)
L10004:
	.line	106
;		{
	sep	#$20
	longa	off
	lda	>320
	and	#<$8
	rep	#$20
	longa	on
	bne	L13
	brl	L10005
L13:
	.line	107
;			k_put_char(4,0,'X',15,0);
	.line	108
	pea	#<$0
	pea	#<$f
	pea	#<$58
	pea	#<$0
	pea	#<$4
	jsr	_~k_put_char
;			k_put_char(4,0,'3',15,0);
	.line	109
	pea	#<$0
	pea	#<$f
	pea	#<$33
	pea	#<$0
	pea	#<$4
	jsr	_~k_put_char
;			/*
;			#asm
;				sep	#$20
;				longa off
;				LDA >$000140
;				AND #$02
;				STA >$000140				
;				REP #$20        ; set A long 
;				LONGA ON			
;			#endasm
;			*/
;		}
	.line	121
;		if(INT_PENDING_REG0[0] & FNX0_INT04_TMR1)
L10005:
	.line	122
;		{
	sep	#$20
	longa	off
	lda	>320
	and	#<$10
	rep	#$20
	longa	on
	bne	L14
	brl	L10006
L14:
	.line	123
;			k_put_char(5,0,'X',15,0);
	.line	124
	pea	#<$0
	pea	#<$f
	pea	#<$58
	pea	#<$0
	pea	#<$5
	jsr	_~k_put_char
;			k_put_char(5,0,'4',15,0);
	.line	125
	pea	#<$0
	pea	#<$f
	pea	#<$34
	pea	#<$0
	pea	#<$5
	jsr	_~k_put_char
;			//INT_PENDING_REG0[0]&=FNX0_INT04_TMR1;
;		}
	.line	127
;		if(INT_PENDING_REG0[0] & FNX0_INT05_TMR2)
L10006:
	.line	128
;		{
	sep	#$20
	longa	off
	lda	>320
	and	#<$20
	rep	#$20
	longa	on
	bne	L15
	brl	L10007
L15:
	.line	129
;			k_put_char(6,0,'X',15,0);
	.line	130
	pea	#<$0
	pea	#<$f
	pea	#<$58
	pea	#<$0
	pea	#<$6
	jsr	_~k_put_char
;			k_put_char(6,0,'5',15,0);
	.line	131
	pea	#<$0
	pea	#<$f
	pea	#<$35
	pea	#<$0
	pea	#<$6
	jsr	_~k_put_char
;			//INT_PENDING_REG0[0]&=FNX0_INT05_TMR2;
;		}
	.line	133
;		if(INT_PENDING_REG0[0] & FNX0_INT06_RTC)
L10007:
	.line	134
;		{
	sep	#$20
	longa	off
	lda	>320
	and	#<$40
	rep	#$20
	longa	on
	bne	L16
	brl	L10008
L16:
	.line	135
;			k_put_char(7,0,'X',15,0);
	.line	136
	pea	#<$0
	pea	#<$f
	pea	#<$58
	pea	#<$0
	pea	#<$7
	jsr	_~k_put_char
;			k_put_char(7,0,'6',15,0);
	.line	137
	pea	#<$0
	pea	#<$f
	pea	#<$36
	pea	#<$0
	pea	#<$7
	jsr	_~k_put_char
;			//INT_PENDING_REG0[0]&=FNX0_INT06_RTC;
;		}
	.line	139
;		if(INT_PENDING_REG0[0] & FNX0_INT07_FDC)
L10008:
	.line	140
;		{
	sep	#$20
	longa	off
	lda	>320
	and	#<$80
	rep	#$20
	longa	on
	bne	L17
	brl	L10009
L17:
	.line	141
;			k_put_char(8,0,'X',15,0);
	.line	142
	pea	#<$0
	pea	#<$f
	pea	#<$58
	pea	#<$0
	pea	#<$8
	jsr	_~k_put_char
;			k_put_char(8,0,'7',15,0);
	.line	143
	pea	#<$0
	pea	#<$f
	pea	#<$37
	pea	#<$0
	pea	#<$8
	jsr	_~k_put_char
;			//INT_PENDING_REG0[0]&=FNX0_INT07_FDC;
;		}
	.line	145
;		INT_PENDING_REG0[0] = INT_PENDING_REG0[0];
L10009:
	.line	146
	sep	#$20
	longa	off
	lda	>320
	sta	>320
	rep	#$20
	longa	on
;		INT_PENDING_REG0[0] = 0;
	.line	147
	sep	#$20
	longa	off
	lda	#$0
	sta	>320
	rep	#$20
	longa	on
;	}
	.line	148
;	
;	if(INT_PENDING_REG1[0]!=0)
L10002:
	.line	150
;	{
	lda	>321
	and	#$ff
	bne	L18
	brl	L10010
L18:
	.line	151
;		k_put_char(0,1,'1',15,0);
	.line	152
	pea	#<$0
	pea	#<$f
	pea	#<$31
	pea	#<$1
	pea	#<$0
	jsr	_~k_put_char
;		if(INT_PENDING_REG1[0] & FNX1_INT00_KBD)
	.line	153
;		{
	sep	#$20
	longa	off
	lda	>321
	and	#<$1
	rep	#$20
	longa	on
	bne	L19
	brl	L10011
L19:
	.line	154
;			k_put_char(1,1,' ',15,0);
	.line	155
	pea	#<$0
	pea	#<$f
	pea	#<$20
	pea	#<$1
	pea	#<$1
	jsr	_~k_put_char
;			k_put_char(1,1,'K',15,0);
	.line	156
	pea	#<$0
	pea	#<$f
	pea	#<$4b
	pea	#<$1
	pea	#<$1
	jsr	_~k_put_char
;			k_put_char(1,1,'X',15,0);
	.line	157
	pea	#<$0
	pea	#<$f
	pea	#<$58
	pea	#<$1
	pea	#<$1
	jsr	_~k_put_char
;			/*
;			#asm
;				sep	#$20
;				longa off
;				LDA >$000141
;				AND #$01
;				STA >$000141				
;				REP #$20        ; set A long 
;				LONGA ON			
;			#endasm
;			*/
;			INT_PENDING_REG1[0] = (INT_PENDING_REG1[0] & FNX1_INT00_KBD);
	.line	169
	sep	#$20
	longa	off
	lda	>321
	and	#<$1
	sta	>321
	rep	#$20
	longa	on
;		}
	.line	170
;		if(INT_PENDING_REG1[0] & FNX1_INT01_SC0)
L10011:
	.line	171
;		{
	sep	#$20
	longa	off
	lda	>321
	and	#<$2
	rep	#$20
	longa	on
	bne	L20
	brl	L10012
L20:
	.line	172
;			k_put_char(2,1,' ',15,0);
	.line	173
	pea	#<$0
	pea	#<$f
	pea	#<$20
	pea	#<$1
	pea	#<$2
	jsr	_~k_put_char
;			k_put_char(2,1,'1',15,0);
	.line	174
	pea	#<$0
	pea	#<$f
	pea	#<$31
	pea	#<$1
	pea	#<$2
	jsr	_~k_put_char
;			//INT_PENDING_REG1[0]&=FNX1_INT01_SC0;
;		}
	.line	176
;		if(INT_PENDING_REG1[0] & FNX1_INT02_SC1)
L10012:
	.line	177
;		{
	sep	#$20
	longa	off
	lda	>321
	and	#<$4
	rep	#$20
	longa	on
	bne	L21
	brl	L10013
L21:
	.line	178
;			k_put_char(3,1,' ',15,0);
	.line	179
	pea	#<$0
	pea	#<$f
	pea	#<$20
	pea	#<$1
	pea	#<$3
	jsr	_~k_put_char
;			k_put_char(3,1,'2',15,0);
	.line	180
	pea	#<$0
	pea	#<$f
	pea	#<$32
	pea	#<$1
	pea	#<$3
	jsr	_~k_put_char
;			//INT_PENDING_REG1[0]&=FNX1_INT02_SC1;
;		}
	.line	182
;		if(INT_PENDING_REG1[0] & FNX1_INT03_COM2)
L10013:
	.line	183
;		{
	sep	#$20
	longa	off
	lda	>321
	and	#<$8
	rep	#$20
	longa	on
	bne	L22
	brl	L10014
L22:
	.line	184
;			k_put_char(4,1,' ',15,0);
	.line	185
	pea	#<$0
	pea	#<$f
	pea	#<$20
	pea	#<$1
	pea	#<$4
	jsr	_~k_put_char
;			k_put_char(4,1,'3',15,0);
	.line	186
	pea	#<$0
	pea	#<$f
	pea	#<$33
	pea	#<$1
	pea	#<$4
	jsr	_~k_put_char
;			//INT_PENDING_REG1[0]&=FNX1_INT03_COM2;
;		}
	.line	188
;		if(INT_PENDING_REG1[0] & FNX1_INT04_COM1)
L10014:
	.line	189
;		{
	sep	#$20
	longa	off
	lda	>321
	and	#<$10
	rep	#$20
	longa	on
	bne	L23
	brl	L10015
L23:
	.line	190
;			k_put_char(5,1,' ',15,0);
	.line	191
	pea	#<$0
	pea	#<$f
	pea	#<$20
	pea	#<$1
	pea	#<$5
	jsr	_~k_put_char
;			k_put_char(5,1,'4',15,0);
	.line	192
	pea	#<$0
	pea	#<$f
	pea	#<$34
	pea	#<$1
	pea	#<$5
	jsr	_~k_put_char
;			//INT_PENDING_REG1[0]&=FNX1_INT04_COM1;
;		}
	.line	194
;		if(INT_PENDING_REG1[0] & FNX1_INT05_MPU401)
L10015:
	.line	195
;		{
	sep	#$20
	longa	off
	lda	>321
	and	#<$20
	rep	#$20
	longa	on
	bne	L24
	brl	L10016
L24:
	.line	196
;			k_put_char(6,1,' ',15,0);
	.line	197
	pea	#<$0
	pea	#<$f
	pea	#<$20
	pea	#<$1
	pea	#<$6
	jsr	_~k_put_char
;			k_put_char(6,1,'5',15,0);
	.line	198
	pea	#<$0
	pea	#<$f
	pea	#<$35
	pea	#<$1
	pea	#<$6
	jsr	_~k_put_char
;			//INT_PENDING_REG1[0]&=FNX1_INT05_MPU401;
;		}
	.line	200
;		if(INT_PENDING_REG1[0] & FNX1_INT06_LPT)
L10016:
	.line	201
;		{
	sep	#$20
	longa	off
	lda	>321
	and	#<$40
	rep	#$20
	longa	on
	bne	L25
	brl	L10017
L25:
	.line	202
;			k_put_char(6,1,' ',15,0);
	.line	203
	pea	#<$0
	pea	#<$f
	pea	#<$20
	pea	#<$1
	pea	#<$6
	jsr	_~k_put_char
;			k_put_char(6,1,'6',15,0);
	.line	204
	pea	#<$0
	pea	#<$f
	pea	#<$36
	pea	#<$1
	pea	#<$6
	jsr	_~k_put_char
;			//INT_PENDING_REG1[0]&=FNX1_INT06_LPT;
;		}
	.line	206
;		if(INT_PENDING_REG1[0] & FNX1_INT07_SDCARD)
L10017:
	.line	207
;		{
	sep	#$20
	longa	off
	lda	>321
	and	#<$80
	rep	#$20
	longa	on
	bne	L26
	brl	L10018
L26:
	.line	208
;			k_put_char(7,1,' ',15,0);
	.line	209
	pea	#<$0
	pea	#<$f
	pea	#<$20
	pea	#<$1
	pea	#<$7
	jsr	_~k_put_char
;			k_put_char(7,1,'7',15,0);
	.line	210
	pea	#<$0
	pea	#<$f
	pea	#<$37
	pea	#<$1
	pea	#<$7
	jsr	_~k_put_char
;			//INT_PENDING_REG1[0]&=FNX1_INT07_SDCARD;
;		}
	.line	212
;		//INT_PENDING_REG1[0]=INT_PENDING_REG1[0];
;		INT_PENDING_REG1[0]=0;
L10018:
	.line	214
	sep	#$20
	longa	off
	lda	#$0
	sta	>321
	rep	#$20
	longa	on
;	}
	.line	215
;	if(INT_PENDING_REG2[0]!=0)
L10010:
	.line	216
;	{
	lda	>322
	and	#$ff
	bne	L27
	brl	L10019
L27:
	.line	217
;		k_put_char(0,2,'2',15,0);
	.line	218
	pea	#<$0
	pea	#<$f
	pea	#<$32
	pea	#<$2
	pea	#<$0
	jsr	_~k_put_char
;		if(INT_PENDING_REG2[0] & FNX2_INT00_OPL2R)
	.line	219
;		{
	sep	#$20
	longa	off
	lda	>322
	and	#<$1
	rep	#$20
	longa	on
	bne	L28
	brl	L10020
L28:
	.line	220
;			k_put_char(2,2,' ',15,0);
	.line	221
	pea	#<$0
	pea	#<$f
	pea	#<$20
	pea	#<$2
	pea	#<$2
	jsr	_~k_put_char
;			k_put_char(2,2,'0',15,0);
	.line	222
	pea	#<$0
	pea	#<$f
	pea	#<$30
	pea	#<$2
	pea	#<$2
	jsr	_~k_put_char
;		}
	.line	223
;		if(INT_PENDING_REG2[0] & FNX2_INT01_OPL2L)
L10020:
	.line	224
;		{
	sep	#$20
	longa	off
	lda	>322
	and	#<$2
	rep	#$20
	longa	on
	bne	L29
	brl	L10021
L29:
	.line	225
;			k_put_char(3,2,' ',15,0);
	.line	226
	pea	#<$0
	pea	#<$f
	pea	#<$20
	pea	#<$2
	pea	#<$3
	jsr	_~k_put_char
;			k_put_char(3,2,'1',15,0);
	.line	227
	pea	#<$0
	pea	#<$f
	pea	#<$31
	pea	#<$2
	pea	#<$3
	jsr	_~k_put_char
;		}
	.line	228
;		if(INT_PENDING_REG2[0] & FNX2_INT02_BTX_INT)
L10021:
	.line	229
;		{
	sep	#$20
	longa	off
	lda	>322
	and	#<$4
	rep	#$20
	longa	on
	bne	L30
	brl	L10022
L30:
	.line	230
;			k_put_char(4,2,' ',15,0);
	.line	231
	pea	#<$0
	pea	#<$f
	pea	#<$20
	pea	#<$2
	pea	#<$4
	jsr	_~k_put_char
;			k_put_char(4,2,'2',15,0);
	.line	232
	pea	#<$0
	pea	#<$f
	pea	#<$32
	pea	#<$2
	pea	#<$4
	jsr	_~k_put_char
;		}
	.line	233
;		if(INT_PENDING_REG2[0] & FNX2_INT03_SDMA)
L10022:
	.line	234
;		{
	sep	#$20
	longa	off
	lda	>322
	and	#<$8
	rep	#$20
	longa	on
	bne	L31
	brl	L10023
L31:
	.line	235
;			k_put_char(5,2,' ',15,0);
	.line	236
	pea	#<$0
	pea	#<$f
	pea	#<$20
	pea	#<$2
	pea	#<$5
	jsr	_~k_put_char
;			k_put_char(5,2,'3',15,0);
	.line	237
	pea	#<$0
	pea	#<$f
	pea	#<$33
	pea	#<$2
	pea	#<$5
	jsr	_~k_put_char
;		}
	.line	238
;		if(INT_PENDING_REG2[0] & FNX2_INT04_VDMA)
L10023:
	.line	239
;		{
	sep	#$20
	longa	off
	lda	>322
	and	#<$10
	rep	#$20
	longa	on
	bne	L32
	brl	L10024
L32:
	.line	240
;			k_put_char(6,2,' ',15,0);
	.line	241
	pea	#<$0
	pea	#<$f
	pea	#<$20
	pea	#<$2
	pea	#<$6
	jsr	_~k_put_char
;			k_put_char(6,2,'4',15,0);
	.line	242
	pea	#<$0
	pea	#<$f
	pea	#<$34
	pea	#<$2
	pea	#<$6
	jsr	_~k_put_char
;		}
	.line	243
;		if(INT_PENDING_REG2[0] & FNX1_INT06_LPT)
L10024:
	.line	244
;		{
	sep	#$20
	longa	off
	lda	>322
	and	#<$40
	rep	#$20
	longa	on
	bne	L33
	brl	L10025
L33:
	.line	245
;			k_put_char(7,2,' ',15,0);
	.line	246
	pea	#<$0
	pea	#<$f
	pea	#<$20
	pea	#<$2
	pea	#<$7
	jsr	_~k_put_char
;			k_put_char(7,2,'6',15,0);
	.line	247
	pea	#<$0
	pea	#<$f
	pea	#<$36
	pea	#<$2
	pea	#<$7
	jsr	_~k_put_char
;		}
	.line	248
;		INT_PENDING_REG2[0]=0;
L10025:
	.line	249
	sep	#$20
	longa	off
	lda	#$0
	sta	>322
	rep	#$20
	longa	on
;	}
	.line	250
;	
;	return;
L10019:
	.line	252
L34:
	pld
	tsc
	clc
	adc	#L6
	tcs
	rts
;}
	.line	253
	.endblock	253
L6	equ	4
L7	equ	5
	ends
	efunc
	.endfunc	253,5,4
	.line	253
;
;void main(void)
;{	
	.line	255
	.line	256
	code
	xdef	_~main
	func
	.function	256
_~main:
	longa	on
	longi	on
;	tsc
;	sec
;	sbc	#L35
;	tcs
;	phd
;	tcd
	.block	256
;	asm LDA #$42
	.line	257
	asmstart
	LDA #$42
	asmend
;	asm STA >$000708
	.line	258
	asmstart
	STA >$000708
	asmend
;	//k_clear_screen(0);
;	//k_query_environment();
;	k_run_loop();
	.line	261
	jsr	_~k_run_loop
;}
	.line	262
L38:
;	pld
;	tsc
;	clc
;	adc	#L35
;	tcs
	rts
	.endblock	262
L35	equ	0
L36	equ	1
	ends
	efunc
	.endfunc	262,1,0
	.line	262
;
;void k_run_loop(void)
;{
	.line	264
	.line	265
	code
	xdef	_~k_run_loop
	func
	.function	265
_~k_run_loop:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L39
	tcs
	phd
	tcd
	.block	265
;	asm LDA #$43
	.line	266
	asmstart
	LDA #$43
	asmend
;	asm STA >$000708
	.line	267
	asmstart
	STA >$000708
	asmend
;	//asm cli;
;	while(TRUE)
	.line	269
L10026:
;	{
	.line	270
;		//asm sei;
;		k_put_char(0,5,'\\',15,0);
	.line	272
	pea	#<$0
	pea	#<$f
	pea	#<$5c
	pea	#<$5
	pea	#<$0
	jsr	_~k_put_char
;		#asm
	.line	273
;		NOP
;		#endasm
	asmstart
		NOP
	asmend
;		k_put_char(0,5,'|',15,0);
	.line	276
	pea	#<$0
	pea	#<$f
	pea	#<$7c
	pea	#<$5
	pea	#<$0
	jsr	_~k_put_char
;		#asm
	.line	277
;		NOP
;		#endasm
	asmstart
		NOP
	asmend
;		k_put_char(0,5,'/',15,0);
	.line	280
	pea	#<$0
	pea	#<$f
	pea	#<$2f
	pea	#<$5
	pea	#<$0
	jsr	_~k_put_char
;		#asm
	.line	281
;		NOP
;		#endasm
	asmstart
		NOP
	asmend
;		k_put_char(0,5,'-',15,0);
	.line	284
	pea	#<$0
	pea	#<$f
	pea	#<$2d
	pea	#<$5
	pea	#<$0
	jsr	_~k_put_char
;		#asm
	.line	285
;		NOP
;		#endasm
	asmstart
		NOP
	asmend
;		//asm cli;
;	}
	.line	289
	brl	L10026
;}
	.line	290
	.endblock	290
L39	equ	0
L40	equ	1
	ends
	efunc
	.endfunc	290,1,0
	.line	290
;
;void k_query_environment(void)
;{
	.line	292
	.line	293
	code
	xdef	_~k_query_environment
	func
	.function	293
_~k_query_environment:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L42
	tcs
	phd
	tcd
	.block	293
;	char qbuffer[32];
;	
;	int pos = 0;
;	int line = 30;
;	
;	pos = k_put_string(pos,line,"C256 Version:",15,0);
qbuffer_1	set	0
pos_1	set	32
line_1	set	34
	.sym	qbuffer,0,110,1,0,32
	.sym	pos,32,5,1,16
	.sym	line,34,5,1,16
	stz	<L43+pos_1
	lda	#$1e
	sta	<L43+line_1
	.line	299
	pea	#<$0
	pea	#<$f
	pea	#^L1
	pea	#<L1
	pei	<L43+line_1
	pei	<L43+pos_1
	jsr	_~k_put_string
	sta	<L43+pos_1
;	k_get_c256_major_version(qbuffer);
	.line	300
	pea	#0
	clc
	tdc
	adc	#<L43+qbuffer_1
	pha
	jsr	_~k_get_c256_major_version
;	pos = k_put_string(pos,line,qbuffer,15,0);
	.line	301
	pea	#<$0
	pea	#<$f
	pea	#0
	clc
	tdc
	adc	#<L43+qbuffer_1
	pha
	pei	<L43+line_1
	pei	<L43+pos_1
	jsr	_~k_put_string
	sta	<L43+pos_1
;	k_get_c256_minor_version(qbuffer);
	.line	302
	pea	#0
	clc
	tdc
	adc	#<L43+qbuffer_1
	pha
	jsr	_~k_get_c256_minor_version
;	pos = k_put_string(pos,line,qbuffer,15,0);
	.line	303
	pea	#<$0
	pea	#<$f
	pea	#0
	clc
	tdc
	adc	#<L43+qbuffer_1
	pha
	pei	<L43+line_1
	pei	<L43+pos_1
	jsr	_~k_put_string
	sta	<L43+pos_1
;
;	pos  = 0;
	.line	305
	stz	<L43+pos_1
;	line = 31;
	.line	306
	lda	#$1f
	sta	<L43+line_1
;
;	pos = k_put_string(pos,line,"FPGA Version:",15,0);
	.line	308
	pea	#<$0
	pea	#<$f
	pea	#^L1+14
	pea	#<L1+14
	pei	<L43+line_1
	pei	<L43+pos_1
	jsr	_~k_put_string
	sta	<L43+pos_1
;	k_get_fpga_date_month(qbuffer);
	.line	309
	pea	#0
	clc
	tdc
	adc	#<L43+qbuffer_1
	pha
	jsr	_~k_get_fpga_date_month
;	pos = k_put_string(pos,line,qbuffer,15,0);
	.line	310
	pea	#<$0
	pea	#<$f
	pea	#0
	clc
	tdc
	adc	#<L43+qbuffer_1
	pha
	pei	<L43+line_1
	pei	<L43+pos_1
	jsr	_~k_put_string
	sta	<L43+pos_1
;	pos = k_put_string(pos,line,"/",15,0);
	.line	311
	pea	#<$0
	pea	#<$f
	pea	#^L1+28
	pea	#<L1+28
	pei	<L43+line_1
	pei	<L43+pos_1
	jsr	_~k_put_string
	sta	<L43+pos_1
;	k_get_fpga_date_day(qbuffer);
	.line	312
	pea	#0
	clc
	tdc
	adc	#<L43+qbuffer_1
	pha
	jsr	_~k_get_fpga_date_day
;	pos = k_put_string(pos,line,qbuffer,15,0);
	.line	313
	pea	#<$0
	pea	#<$f
	pea	#0
	clc
	tdc
	adc	#<L43+qbuffer_1
	pha
	pei	<L43+line_1
	pei	<L43+pos_1
	jsr	_~k_put_string
	sta	<L43+pos_1
;	pos = k_put_string(pos,line,"/",15,0);;
	.line	314
	pea	#<$0
	pea	#<$f
	pea	#^L1+30
	pea	#<L1+30
	pei	<L43+line_1
	pei	<L43+pos_1
	jsr	_~k_put_string
	sta	<L43+pos_1
	.line	314
;	k_get_fpga_date_year(qbuffer);
	.line	315
	pea	#0
	clc
	tdc
	adc	#<L43+qbuffer_1
	pha
	jsr	_~k_get_fpga_date_year
;	pos = k_put_string(pos,line,qbuffer,15,0);;
	.line	316
	pea	#<$0
	pea	#<$f
	pea	#0
	clc
	tdc
	adc	#<L43+qbuffer_1
	pha
	pei	<L43+line_1
	pei	<L43+pos_1
	jsr	_~k_put_string
	sta	<L43+pos_1
	.line	316
;	
;}
	.line	318
L45:
	pld
	tsc
	clc
	adc	#L42
	tcs
	rts
	.endblock	318
L42	equ	36
L43	equ	1
	ends
	efunc
	.endfunc	318,1,36
	.line	318
	data
L1:
	db	$43,$32,$35,$36,$20,$56,$65,$72,$73,$69,$6F,$6E,$3A,$00,$46
	db	$50,$47,$41,$20,$56,$65,$72,$73,$69,$6F,$6E,$3A,$00,$2F,$00
	db	$2F,$00
	ends
;
;
;void k_get_fpga_date_day(char far *buffer)
;{
	.line	321
	.line	322
	code
	xdef	_~k_get_fpga_date_day
	func
	.function	322
_~k_get_fpga_date_day:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L47
	tcs
	phd
	tcd
buffer_0	set	3
	.block	322
;	k_itoa(FPGA_DOR[0],buffer,10);
	.sym	buffer,3,142,6,32
	.line	323
	pea	#<$a
	pei	<L47+buffer_0+2
	pei	<L47+buffer_0
	lda	>11470605
	and	#$ff
	pha
	jsr	_~k_itoa
;}
	.line	324
L50:
	lda	<L47+1
	sta	<L47+1+4
	pld
	tsc
	clc
	adc	#L47+4
	tcs
	rts
	.endblock	324
L47	equ	0
L48	equ	1
	ends
	efunc
	.endfunc	324,1,0
	.line	324
;
;void k_get_fpga_date_month(char far *buffer)
;{
	.line	326
	.line	327
	code
	xdef	_~k_get_fpga_date_month
	func
	.function	327
_~k_get_fpga_date_month:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L51
	tcs
	phd
	tcd
buffer_0	set	3
	.block	327
;	k_itoa(FPGA_MOR[0],buffer,10);
	.sym	buffer,3,142,6,32
	.line	328
	pea	#<$a
	pei	<L51+buffer_0+2
	pei	<L51+buffer_0
	lda	>11470606
	and	#$ff
	pha
	jsr	_~k_itoa
;}
	.line	329
L54:
	lda	<L51+1
	sta	<L51+1+4
	pld
	tsc
	clc
	adc	#L51+4
	tcs
	rts
	.endblock	329
L51	equ	0
L52	equ	1
	ends
	efunc
	.endfunc	329,1,0
	.line	329
;
;void k_get_fpga_date_year(char far *buffer)
;{
	.line	331
	.line	332
	code
	xdef	_~k_get_fpga_date_year
	func
	.function	332
_~k_get_fpga_date_year:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L55
	tcs
	phd
	tcd
buffer_0	set	3
	.block	332
;	k_itoa(*FPGA_YOR,buffer,10);
	.sym	buffer,3,142,6,32
	.line	333
	pea	#<$a
	pei	<L55+buffer_0+2
	pei	<L55+buffer_0
	lda	>11470607
	and	#$ff
	pha
	jsr	_~k_itoa
;}
	.line	334
L58:
	lda	<L55+1
	sta	<L55+1+4
	pld
	tsc
	clc
	adc	#L55+4
	tcs
	rts
	.endblock	334
L55	equ	0
L56	equ	1
	ends
	efunc
	.endfunc	334,1,0
	.line	334
;
;void k_get_c256_major_version(char far *buffer)
;{
	.line	336
	.line	337
	code
	xdef	_~k_get_c256_major_version
	func
	.function	337
_~k_get_c256_major_version:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L59
	tcs
	phd
	tcd
buffer_0	set	3
	.block	337
;	buffer[0] = *C256F_MODEL_MAJOR;
	.sym	buffer,3,142,6,32
	.line	338
	sep	#$20
	longa	off
	lda	>11470603
	sta	[<L59+buffer_0]
	rep	#$20
	longa	on
;	buffer[1] = 0;
	.line	339
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$1
	sta	[<L59+buffer_0],Y
	rep	#$20
	longa	on
;}
	.line	340
L62:
	lda	<L59+1
	sta	<L59+1+4
	pld
	tsc
	clc
	adc	#L59+4
	tcs
	rts
	.endblock	340
L59	equ	0
L60	equ	1
	ends
	efunc
	.endfunc	340,1,0
	.line	340
;
;void k_get_c256_minor_version(char far *buffer)
;{
	.line	342
	.line	343
	code
	xdef	_~k_get_c256_minor_version
	func
	.function	343
_~k_get_c256_minor_version:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L63
	tcs
	phd
	tcd
buffer_0	set	3
	.block	343
;	buffer[0] = *C256F_MODEL_MINOR;
	.sym	buffer,3,142,6,32
	.line	344
	sep	#$20
	longa	off
	lda	>11470604
	sta	[<L63+buffer_0]
	rep	#$20
	longa	on
;	buffer[1] = 0;
	.line	345
	sep	#$20
	longa	off
	lda	#$0
	ldy	#$1
	sta	[<L63+buffer_0],Y
	rep	#$20
	longa	on
;}
	.line	346
L66:
	lda	<L63+1
	sta	<L63+1+4
	pld
	tsc
	clc
	adc	#L63+4
	tcs
	rts
	.endblock	346
L63	equ	0
L64	equ	1
	ends
	efunc
	.endfunc	346,1,0
	.line	346
;
;char far * k_itoa(unsigned int value, char far *result, int base)
;{
	.line	348
	.line	349
	code
	xdef	_~k_itoa
	func
	.function	349
_~k_itoa:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L67
	tcs
	phd
	tcd
value_0	set	3
result_0	set	5
base_0	set	9
	.block	349
;    char far * ptr  = result;
;	char far * ptr1 = result;
;	char tmp_char;
;    int tmp_value;
;
;	char far *CHAR_LIST = "ZYXWVUTSRQPONMLKJIHGFEDCBA9876543210123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
;
;    // check that the base if valid
;    if (base < 2 || base > 36)
ptr_1	set	0
ptr1_1	set	4
tmp_char_1	set	8
tmp_value_1	set	9
CHAR_LIST_1	set	11
	.sym	ptr,0,142,1,32
	.sym	ptr1,4,142,1,32
	.sym	tmp_char,8,14,1,8
	.sym	tmp_value,9,5,1,16
	.sym	CHAR_LIST,11,142,1,32
	.sym	value,3,16,6,16
	.sym	result,5,142,6,32
	.sym	base,9,5,6,16
	lda	<L67+result_0
	sta	<L68+ptr_1
	lda	<L67+result_0+2
	sta	<L68+ptr_1+2
	lda	<L67+result_0
	sta	<L68+ptr1_1
	lda	<L67+result_0+2
	sta	<L68+ptr1_1+2
	lda	#<L46
	sta	<L68+CHAR_LIST_1
	lda	#^L46
	sta	<L68+CHAR_LIST_1+2
	.line	358
;	{	
	lda	<L67+base_0
	bmi	L71
	dea
	dea
	bpl	L72
L71:
	brl	L70
L72:
	sec
	lda	#$24
	sbc	<L67+base_0
	bvs	L73
	eor	#$8000
L73:
	bpl	L74
	brl	L10028
L74:
L70:
	.line	359
;		*result = '\0'; 
	.line	360
	sep	#$20
	longa	off
	lda	#$0
	sta	[<L67+result_0]
	rep	#$20
	longa	on
;		return result; 
	.line	361
	ldx	<L67+result_0+2
	lda	<L67+result_0
L75:
	tay
	lda	<L67+1
	sta	<L67+1+8
	pld
	tsc
	clc
	adc	#L67+8
	tcs
	tya
	rts
;	}
	.line	362
;
;
;    do 
L10028:
	.line	365
L10031:
;	{
	.line	366
;        tmp_value = value;
	.line	367
	lda	<L67+value_0
	sta	<L68+tmp_value_1
;        value /= base;
	.line	368
	lda	<L67+value_0
	ldx	<L67+base_0
	xref	_~~udv
	jsr	_~~udv
	sta	<L67+value_0
;        *ptr++ = CHAR_LIST [35 + (tmp_value - value * base)];
	.line	369
	lda	<L67+value_0
	ldx	<L67+base_0
	xref	_~~mul
	jsr	_~~mul
	sta	<R0
	sec
	lda	<L68+tmp_value_1
	sbc	<R0
	sta	<R1
	clc
	lda	#$23
	adc	<R1
	sta	<R0
	sep	#$20
	longa	off
	ldy	<R0
	lda	[<L68+CHAR_LIST_1],Y
	sta	[<L68+ptr_1]
	rep	#$20
	longa	on
	inc	<L68+ptr_1
	bne	L76
	inc	<L68+ptr_1+2
L76:
;    }
	.line	370
;	while ( value );
L10029:
	lda	<L67+value_0
	beq	L77
	brl	L10031
L77:
L10030:
;
;    // Apply negative sign
;    if (tmp_value < 0) *ptr++ = '-';
	.line	374
	lda	<L68+tmp_value_1
	bmi	L78
	brl	L10032
L78:
	.line	374
	sep	#$20
	longa	off
	lda	#$2d
	sta	[<L68+ptr_1]
	rep	#$20
	longa	on
	inc	<L68+ptr_1
	bne	L79
	inc	<L68+ptr_1+2
L79:
;    *ptr-- = '\0';
L10032:
	.line	375
	sep	#$20
	longa	off
	lda	#$0
	sta	[<L68+ptr_1]
	rep	#$20
	longa	on
	lda	<L68+ptr_1
	bne	L80
	dec	<L68+ptr_1+2
L80:
	dec	<L68+ptr_1
;    while (ptr1 < ptr) 
	.line	376
L10033:
	lda	<L68+ptr1_1
	cmp	<L68+ptr_1
	lda	<L68+ptr1_1+2
	sbc	<L68+ptr_1+2
	bcc	L81
	brl	L10034
L81:
;	{
	.line	377
;        tmp_char = *ptr;
	.line	378
	sep	#$20
	longa	off
	lda	[<L68+ptr_1]
	sta	<L68+tmp_char_1
	rep	#$20
	longa	on
;        *ptr--= *ptr1;
	.line	379
	sep	#$20
	longa	off
	lda	[<L68+ptr1_1]
	sta	[<L68+ptr_1]
	rep	#$20
	longa	on
	lda	<L68+ptr_1
	bne	L82
	dec	<L68+ptr_1+2
L82:
	dec	<L68+ptr_1
;        *ptr1++ = tmp_char;
	.line	380
	sep	#$20
	longa	off
	lda	<L68+tmp_char_1
	sta	[<L68+ptr1_1]
	rep	#$20
	longa	on
	inc	<L68+ptr1_1
	bne	L83
	inc	<L68+ptr1_1+2
L83:
;    }
	.line	381
	brl	L10033
L10034:
;    return result;
	.line	382
	ldx	<L67+result_0+2
	lda	<L67+result_0
	brl	L75
;}
	.line	383
	.endblock	383
L67	equ	23
L68	equ	9
	ends
	efunc
	.endfunc	383,9,23
	.line	383
	data
L46:
	db	$5A,$59,$58,$57,$56,$55,$54,$53,$52,$51,$50,$4F,$4E,$4D,$4C
	db	$4B,$4A,$49,$48,$47,$46,$45,$44,$43,$42,$41,$39,$38,$37,$36
	db	$35,$34,$33,$32,$31,$30,$31,$32,$33,$34,$35,$36,$37,$38,$39
	db	$41,$42,$43,$44,$45,$46,$47,$48,$49,$4A,$4B,$4C,$4D,$4E,$4F
	db	$50,$51,$52,$53,$54,$55,$56,$57,$58,$59,$5A,$00
	ends
;
;
;int k_get_cols_visible(void)
;{
	.line	386
	.line	387
	code
	xdef	_~k_get_cols_visible
	func
	.function	387
_~k_get_cols_visible:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L85
	tcs
	phd
	tcd
	.block	387
;	return *((int*)(&((COLS_VISIBLE)[0]))); //2 Bytes Columns visible per screen line. A virtual line can be longer than displayed, up to COLS_PER_LINE long. Default  80
	.line	388
	lda	>15
L88:
	tay
	pld
	tsc
	clc
	adc	#L85
	tcs
	tya
	rts
;}
	.line	389
	.endblock	389
L85	equ	0
L86	equ	1
	ends
	efunc
	.endfunc	389,1,0
	.line	389
;
;int k_get_cols_per_line(void)
;{
	.line	391
	.line	392
	code
	xdef	_~k_get_cols_per_line
	func
	.function	392
_~k_get_cols_per_line:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L89
	tcs
	phd
	tcd
	.block	392
;	return *((int*)COLS_PER_LINE); //2 Bytes Columns visible per screen line. A virtual line can be longer than displayed, up to COLS_PER_LINE long. Default  80
	.line	393
	lda	>17
L92:
	tay
	pld
	tsc
	clc
	adc	#L89
	tcs
	tya
	rts
;}
	.line	394
	.endblock	394
L89	equ	0
L90	equ	1
	ends
	efunc
	.endfunc	394,1,0
	.line	394
;
;int k_get_lines_visible(void)
;{
	.line	396
	.line	397
	code
	xdef	_~k_get_lines_visible
	func
	.function	397
_~k_get_lines_visible:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L93
	tcs
	phd
	tcd
	.block	397
;	return *((int*)LINES_VISIBLE); //2 Bytes Columns visible per screen line. A virtual line can be longer than displayed, up to COLS_PER_LINE long. Default  80
	.line	398
	lda	>19
L96:
	tay
	pld
	tsc
	clc
	adc	#L93
	tcs
	tya
	rts
;}
	.line	399
	.endblock	399
L93	equ	0
L94	equ	1
	ends
	efunc
	.endfunc	399,1,0
	.line	399
;
;int k_get_lines_max(void)
;{
	.line	401
	.line	402
	code
	xdef	_~k_get_lines_max
	func
	.function	402
_~k_get_lines_max:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L97
	tcs
	phd
	tcd
	.block	402
;	return *((int*)LINES_MAX); //2 Bytes Columns visible per screen line. A virtual line can be longer than displayed, up to COLS_PER_LINE long. Default  80
	.line	403
	lda	>21
L100:
	tay
	pld
	tsc
	clc
	adc	#L97
	tcs
	tya
	rts
;}
	.line	404
	.endblock	404
L97	equ	0
L98	equ	1
	ends
	efunc
	.endfunc	404,1,0
	.line	404
;
;void k_enable_text_mode(void)
;{
	.line	406
	.line	407
	code
	xdef	_~k_enable_text_mode
	func
	.function	407
_~k_enable_text_mode:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L101
	tcs
	phd
	tcd
	.block	407
;	MASTER_CTRL_REG_L[0] = MSTR_CTRL_TEXT_MODE_EN;
	.line	408
	sep	#$20
	longa	off
	lda	#$1
	sta	>11468800
	rep	#$20
	longa	on
;}
	.line	409
L104:
	pld
	tsc
	clc
	adc	#L101
	tcs
	rts
	.endblock	409
L101	equ	0
L102	equ	1
	ends
	efunc
	.endfunc	409,1,0
	.line	409
;
;void k_enable_border(void)
;{
	.line	411
	.line	412
	code
	xdef	_~k_enable_border
	func
	.function	412
_~k_enable_border:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L105
	tcs
	phd
	tcd
	.block	412
;	BORDER_CTRL_REG[0] = BORDER_CTRL_ENABLE;
	.line	413
	sep	#$20
	longa	off
	lda	#$1
	sta	>11468804
	rep	#$20
	longa	on
;}
	.line	414
L108:
	pld
	tsc
	clc
	adc	#L105
	tcs
	rts
	.endblock	414
L105	equ	0
L106	equ	1
	ends
	efunc
	.endfunc	414,1,0
	.line	414
;
;void k_disable_border(void)
;{
	.line	416
	.line	417
	code
	xdef	_~k_disable_border
	func
	.function	417
_~k_disable_border:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L109
	tcs
	phd
	tcd
	.block	417
;	BORDER_CTRL_REG[0] = 0x00 ;
	.line	418
	sep	#$20
	longa	off
	lda	#$0
	sta	>11468804
	rep	#$20
	longa	on
;}
	.line	419
L112:
	pld
	tsc
	clc
	adc	#L109
	tcs
	rts
	.endblock	419
L109	equ	0
L110	equ	1
	ends
	efunc
	.endfunc	419,1,0
	.line	419
;
;void k_set_border_color(char r,char g,char b)
;{
	.line	421
	.line	422
	code
	xdef	_~k_set_border_color
	func
	.function	422
_~k_set_border_color:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L113
	tcs
	phd
	tcd
r_0	set	3
g_0	set	5
b_0	set	7
	.block	422
;	BORDER_COLOR_B[0] = b;
	.sym	r,3,14,6,8
	.sym	g,5,14,6,8
	.sym	b,7,14,6,8
	.line	423
	sep	#$20
	longa	off
	lda	<L113+b_0
	sta	>11468805
	rep	#$20
	longa	on
;	BORDER_COLOR_G[0] = g;
	.line	424
	sep	#$20
	longa	off
	lda	<L113+g_0
	sta	>11468806
	rep	#$20
	longa	on
;	BORDER_COLOR_R[0] = r;
	.line	425
	sep	#$20
	longa	off
	lda	<L113+r_0
	sta	>11468807
	rep	#$20
	longa	on
;}
	.line	426
L116:
	lda	<L113+1
	sta	<L113+1+6
	pld
	tsc
	clc
	adc	#L113+6
	tcs
	rts
	.endblock	426
L113	equ	0
L114	equ	1
	ends
	efunc
	.endfunc	426,1,0
	.line	426
;
;void k_clear_screen(int bcolor)
;{
	.line	428
	.line	429
	code
	xdef	_~k_clear_screen
	func
	.function	429
_~k_clear_screen:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L117
	tcs
	phd
	tcd
bcolor_0	set	3
	.block	429
;	memset((unsigned char far *)0xAFA000,0,0xAFA000 + 0xC000);
	.sym	bcolor,3,5,6,16
	.line	430
	pea	#<$b06000
	pea	#<$0
	pea	#^$afa000
	pea	#<$afa000
	jsr	_~memset
;	memset((unsigned char far *)0xAFC000,bcolor,0xAFA000 + 0xC000);
	.line	431
	pea	#<$b06000
	pei	<L117+bcolor_0
	pea	#^$afc000
	pea	#<$afc000
	jsr	_~memset
;}
	.line	432
L120:
	lda	<L117+1
	sta	<L117+1+2
	pld
	tsc
	clc
	adc	#L117+2
	tcs
	rts
	.endblock	432
L117	equ	0
L118	equ	1
	ends
	efunc
	.endfunc	432,1,0
	.line	432
;
;int k_put_string(int col,int row,char far * text,int fcolor,int bcolor)
;{
	.line	434
	.line	435
	code
	xdef	_~k_put_string
	func
	.function	435
_~k_put_string:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L121
	tcs
	phd
	tcd
col_0	set	3
row_0	set	5
text_0	set	7
fcolor_0	set	11
bcolor_0	set	13
	.block	435
;	char far * ptr = text;
;	while(*ptr)
ptr_1	set	0
	.sym	ptr,0,142,1,32
	.sym	col,3,5,6,16
	.sym	row,5,5,6,16
	.sym	text,7,142,6,32
	.sym	fcolor,11,5,6,16
	.sym	bcolor,13,5,6,16
	lda	<L121+text_0
	sta	<L122+ptr_1
	lda	<L121+text_0+2
	sta	<L122+ptr_1+2
	.line	437
L10035:
	lda	[<L122+ptr_1]
	and	#$ff
	bne	L124
	brl	L10036
L124:
;	{
	.line	438
;		k_put_char(col,row,*ptr,fcolor,bcolor);
	.line	439
	pei	<L121+bcolor_0
	pei	<L121+fcolor_0
	lda	[<L122+ptr_1]
	pha
	pei	<L121+row_0
	pei	<L121+col_0
	jsr	_~k_put_char
;		col++;
	.line	440
	inc	<L121+col_0
;		ptr++;
	.line	441
	inc	<L122+ptr_1
	bne	L125
	inc	<L122+ptr_1+2
L125:
;	}
	.line	442
	brl	L10035
L10036:
;	
;	return col;
	.line	444
	lda	<L121+col_0
L126:
	tay
	lda	<L121+1
	sta	<L121+1+12
	pld
	tsc
	clc
	adc	#L121+12
	tcs
	tya
	rts
;}
	.line	445
	.endblock	445
L121	equ	4
L122	equ	1
	ends
	efunc
	.endfunc	445,1,4
	.line	445
;
;void k_put_char(int col,int row,char c,int fcolor,int bcolor)
;{
	.line	447
	.line	448
	code
	xdef	_~k_put_char
	func
	.function	448
_~k_put_char:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L127
	tcs
	phd
	tcd
col_0	set	3
row_0	set	5
c_0	set	7
fcolor_0	set	9
bcolor_0	set	11
	.block	448
;	//((unsigned char far *)(0xAFA000 + (128 * row) + col))[0] = c;
;	//((unsigned char far *)(0xAFC000 + (128 * row) + col))[0] = (fcolor & 0x0F) << 4 + (bcolor & 0x0F);
;	//#define CS_TEXT_MEM_PTR           ((volatile unsigned char *)0xAFA000)
;	//#define CS_COLOR_MEM_PTR          ((volatile unsigned char *)0xAFC000)
;	//(CS_TEXT_MEM_PTR  + (128 * row + col))[0] = c;
;	//(CS_COLOR_MEM_PTR + (128 * row + col))[0] = (fcolor & 0x0F) << 4 + (bcolor & 0x0F);
;
;	CS_TEXT_MEM_PTR[128 * row + col] = c;
	.sym	col,3,5,6,16
	.sym	row,5,5,6,16
	.sym	c,7,14,6,8
	.sym	fcolor,9,5,6,16
	.sym	bcolor,11,5,6,16
	.line	456
	lda	<L127+row_0
	ldx	#<$7
	xref	_~~asl
	jsr	_~~asl
	sta	<R0
	clc
	lda	<R0
	adc	<L127+col_0
	sta	<R1
	lda	#$a000
	sta	<R0
	lda	#$af
	sta	<R0+2
	sep	#$20
	longa	off
	lda	<L127+c_0
	ldy	<R1
	sta	[<R0],Y
	rep	#$20
	longa	on
;	CS_COLOR_MEM_PTR[128 * row + col] = (fcolor & 0x0F) << 4 + (bcolor & 0x0F);
	.line	457
	lda	<L127+row_0
	ldx	#<$7
	xref	_~~asl
	jsr	_~~asl
	sta	<R0
	clc
	lda	<R0
	adc	<L127+col_0
	sta	<R1
	lda	#$c000
	sta	<R0
	lda	#$af
	sta	<R0+2
	lda	<L127+bcolor_0
	and	#<$f
	sta	<R2
	clc
	lda	#$4
	adc	<R2
	pha
	lda	<L127+fcolor_0
	and	#<$f
	plx
	xref	_~~asl
	jsr	_~~asl
	sep	#$20
	longa	off
	ldy	<R1
	sta	[<R0],Y
	rep	#$20
	longa	on
;
;}
	.line	459
L130:
	lda	<L127+1
	sta	<L127+1+10
	pld
	tsc
	clc
	adc	#L127+10
	tcs
	rts
	.endblock	459
L127	equ	12
L128	equ	13
	ends
	efunc
	.endfunc	459,13,12
	.line	459
;
;void k_set_background(int col,int row,int bcolor)
;{
	.line	461
	.line	462
	code
	xdef	_~k_set_background
	func
	.function	462
_~k_set_background:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L131
	tcs
	phd
	tcd
col_0	set	3
row_0	set	5
bcolor_0	set	7
	.block	462
;	((volatile unsigned char far *)(0xAFC000 + (128 * row) + col))[0] =  bcolor;
	.sym	col,3,5,6,16
	.sym	row,5,5,6,16
	.sym	bcolor,7,5,6,16
	.line	463
	ldy	#$0
	lda	<L131+col_0
	bpl	L134
	dey
L134:
	sta	<R0
	sty	<R0+2
	lda	<L131+row_0
	ldx	#<$7
	xref	_~~asl
	jsr	_~~asl
	sta	<R1
	ldy	#$0
	lda	<R1
	bpl	L135
	dey
L135:
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
	lda	<L131+bcolor_0
	sta	[<R0]
	rep	#$20
	longa	on
;}
	.line	464
L136:
	lda	<L131+1
	sta	<L131+1+6
	pld
	tsc
	clc
	adc	#L131+6
	tcs
	rts
	.endblock	464
L131	equ	12
L132	equ	13
	ends
	efunc
	.endfunc	464,13,12
	.line	464
;
;//
;// STRING LIB
;//
;char far *strupr(char far *s)
;{
	.line	469
	.line	470
	code
	xdef	_~strupr
	func
	.function	470
_~strupr:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L137
	tcs
	phd
	tcd
s_0	set	3
	.block	470
;  char	*p;
;
;  for (p = s; *p; ++p)
p_1	set	0
	.sym	p,0,142,1,32
	.sym	s,3,142,6,32
	.line	473
	lda	<L137+s_0
	sta	<L138+p_1
	lda	<L137+s_0+2
	sta	<L138+p_1+2
	brl	L10040
L10039:
;    *p = toupper(*p);
	.line	474
	lda	[<L138+p_1]
	and	#$ff
	pha
	jsr	_~toupper
	sep	#$20
	longa	off
	sta	[<L138+p_1]
	rep	#$20
	longa	on
L10037:
	inc	<L138+p_1
	bne	L140
	inc	<L138+p_1+2
L140:
L10040:
	lda	[<L138+p_1]
	and	#$ff
	beq	L141
	brl	L10039
L141:
L10038:
;
;  return(s);
	.line	476
	ldx	<L137+s_0+2
	lda	<L137+s_0
L142:
	tay
	lda	<L137+1
	sta	<L137+1+4
	pld
	tsc
	clc
	adc	#L137+4
	tcs
	tya
	rts
;
;}	/* END STRUPR */
	.line	478
	.endblock	478
L137	equ	4
L138	equ	1
	ends
	efunc
	.endfunc	478,1,4
	.line	478
;
;/* -------------------------------------------------------------------- */
;char far* strlower(char far* s)
;{
	.line	481
	.line	482
	code
	xdef	_~strlower
	func
	.function	482
_~strlower:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L143
	tcs
	phd
	tcd
s_0	set	3
	.block	482
;  char	*p;
;
;  for (p = s; *p; ++p)
p_1	set	0
	.sym	p,0,142,1,32
	.sym	s,3,142,6,32
	.line	485
	lda	<L143+s_0
	sta	<L144+p_1
	lda	<L143+s_0+2
	sta	<L144+p_1+2
	brl	L10044
L10043:
;    *p = tolower(*p);
	.line	486
	lda	[<L144+p_1]
	and	#$ff
	pha
	jsr	_~tolower
	sep	#$20
	longa	off
	sta	[<L144+p_1]
	rep	#$20
	longa	on
L10041:
	inc	<L144+p_1
	bne	L146
	inc	<L144+p_1+2
L146:
L10044:
	lda	[<L144+p_1]
	and	#$ff
	beq	L147
	brl	L10043
L147:
L10042:
;
;  return(s);
	.line	488
	ldx	<L143+s_0+2
	lda	<L143+s_0
L148:
	tay
	lda	<L143+1
	sta	<L143+1+4
	pld
	tsc
	clc
	adc	#L143+4
	tcs
	tya
	rts
;
;}	/* END STRLOWER */
	.line	490
	.endblock	490
L143	equ	4
L144	equ	1
	ends
	efunc
	.endfunc	490,1,4
	.line	490
;
;
;
	.line	492
	.file	"G:\devprojects\6502\fex\Test\fxstartup.c",481
	xref	_~tolower
	xref	_~toupper
	xref	_~memset
	.sym	_~tolower,_~tolower,69,18,0
	.sym	_~strlower,_~strlower,1102,2,32
	.sym	_~toupper,_~toupper,69,18,0
	.sym	_~k_set_background,_~k_set_background,65,2,0
	.sym	_~main,_~main,65,2,0
	.sym	_~IRQHandler,_~IRQHandler,65,2,0
	.sym	_~XIRQHandler,_~XIRQHandler,65,2,0
	.sym	_~irqspinner,_~irqspinner,110,3,0,4
	.sym	_~sc,_~sc,14,3,8
	.sym	_~k_run_loop,_~k_run_loop,65,2,0
	.sym	_~k_query_environment,_~k_query_environment,65,2,0
	.sym	_~k_get_lines_max,_~k_get_lines_max,69,2,0
	.sym	_~k_get_lines_visible,_~k_get_lines_visible,69,2,0
	.sym	_~k_get_cols_per_line,_~k_get_cols_per_line,69,2,0
	.sym	_~k_get_cols_visible,_~k_get_cols_visible,69,2,0
	.sym	_~k_enable_text_mode,_~k_enable_text_mode,65,2,0
	.sym	_~k_get_fpga_date_year,_~k_get_fpga_date_year,65,2,0
	.sym	_~k_get_fpga_date_month,_~k_get_fpga_date_month,65,2,0
	.sym	_~k_get_fpga_date_day,_~k_get_fpga_date_day,65,2,0
	.sym	_~k_get_c256_minor_version,_~k_get_c256_minor_version,65,2,0
	.sym	_~k_get_c256_major_version,_~k_get_c256_major_version,65,2,0
	.sym	_~k_set_border_color,_~k_set_border_color,65,2,0
	.sym	_~k_disable_border,_~k_disable_border,65,2,0
	.sym	_~k_enable_border,_~k_enable_border,65,2,0
	.sym	_~k_put_string,_~k_put_string,69,2,0
	.sym	_~k_put_char,_~k_put_char,65,2,0
	.sym	_~k_clear_screen,_~k_clear_screen,65,2,0
	.sym	_~k_itoa,_~k_itoa,1102,2,32
	.sym	C256Task,0,545,14,16
	.sym	PSUBMENULIST,0,138,14,32,11
	.sym	SUBMENULIST,0,10,14,40,11
	.sym	HSUBMENU,0,7,14,32
	.sym	PSUBMENU,0,138,14,32,10
	.sym	SUBMENU,0,10,14,48,10
	.sym	MenuAction,0,545,14,16
	.sym	HMENU,0,7,14,32
	.sym	PMENU,0,138,14,32,9
	.sym	MENU,0,10,14,168,9
	.sym	HCLICKABLE,0,7,14,32
	.sym	PCLICKABLE,0,138,14,32,8
	.sym	CLICKABLE,0,10,14,80,8
	.sym	HTEXTBOX,0,7,14,32
	.sym	PTEXTBOX,0,138,14,32,7
	.sym	TEXTBOX,0,10,14,112,7
	.sym	FONTMETRIC,0,10,14,32,6
	.sym	TITLE,0,142,14,32
	.sym	PHANDLE,0,133,14,32
	.sym	HANDLE,0,5,14,16
	.sym	Window,0,10,14,160,5
	.sym	PRECT,0,138,14,32,4
	.sym	RECT,0,10,14,64,4
	.sym	BOOL,0,14,14,8
	.sym	LONG,0,7,14,32
	.sym	WORD,0,5,14,16
	.sym	CHAR,0,14,14,8
	.sym	BYTE,0,14,14,8
	.sym	_~strupr,_~strupr,1102,2,32
	.sym	_~memset,_~memset,1089,18,32
	.sym	Boolean_T,0,5,14,16
	.sym	ldiv_t,0,10,14,64,2
	.sym	div_t,0,10,14,32,1
	.sym	wctype_t,0,16,14,16
	.sym	wint_t,0,16,14,16
	.sym	wchar_t,0,14,14,8
	.sym	ptrdiff_t,0,7,14,32
	.sym	size_t,0,16,14,16
	end

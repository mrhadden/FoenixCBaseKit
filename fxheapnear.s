;:ts=8
R0	equ	1
R1	equ	5
R2	equ	9
R3	equ	13
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxheapnear.c",0
;
;
;#pragma section CODE=HEAPNEAR, offset $06:0000
HEAPNEAR	section	 offset $06:0000
	ends
;
;void far * k_mem_get_heap_near(void)
;{
	.line	5
	.line	6
	HEAPNEAR
	xdef	~~k_mem_get_heap_near
	func
	.function	6
~~k_mem_get_heap_near:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L2
	tcs
	phd
	tcd
	.block	6
;	return (void far *)k_mem_get_heap_near;
	.line	7
	lda	#^~~k_mem_get_heap_near
	tax
	lda	#<~~k_mem_get_heap_near
L5:
	tay
	pld
	tsc
	clc
	adc	#L2
	tcs
	tya
	rtl
;}
	.line	8
	.endblock	8
L2	equ	0
L3	equ	1
	ends
	efunc
	.endfunc	8,1,0
	.line	8
;
	.line	8
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxheapnear.c",5
	.sym	~~k_mem_get_heap_near,~~k_mem_get_heap_near,1089,2,32
	end

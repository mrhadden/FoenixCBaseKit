;:ts=8
R0	equ	1
R1	equ	5
R2	equ	9
R3	equ	13
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxheapfar.c",0
;
;
;#pragma section CODE=HEAPFAR, offset $19:0000
HEAPFAR	section	 offset $19:0000
	ends
;
;//LPVOID __init_heap_near1(void)
;void far * k_mem_get_heap_far(void)
;{
	.line	6
	.line	7
	HEAPFAR
	xdef	~~k_mem_get_heap_far
	func
	.function	7
~~k_mem_get_heap_far:
	longa	on
	longi	on
	tsc
	sec
	sbc	#L2
	tcs
	phd
	tcd
	.block	7
;	return (void far *)k_mem_get_heap_far;
	.line	8
	lda	#^~~k_mem_get_heap_far
	tax
	lda	#<~~k_mem_get_heap_far
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
	.line	9
	.endblock	9
L2	equ	0
L3	equ	1
	ends
	efunc
	.endfunc	9,1,0
	.line	9
;/*
;
;#pragma section DATA=HEAPNEAR,offset $1A:0000
;
;static void __init_heap_near2(void)
;{
;}
;
;#pragma section DATA=HEAPNEAR,offset $1B:0000
;
;static void __init_heap_near3(void)
;{
;}
;
;*/
;
	.line	24
	.file	"G:\devprojects\c256Foenix\fxos\FXOSWorkspace\FXOSv1\src\fxheapfar.c",6
	.sym	~~k_mem_get_heap_far,~~k_mem_get_heap_far,1089,2,32
	end

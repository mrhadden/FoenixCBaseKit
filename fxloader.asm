; File: WDC_CStartup_816.asm
; 05/14/2004

     PW 128         ;Page Width (# of char/line) 
     PL 60          ;Page Length for HP Laser
     INCLIST ON     ;Add Include files in Listing

				;*********************************************
				;Test for Valid Processor defined in -D option
				;*********************************************
	IF	USING_265
	ELSEIF	USING_816
	ELSEIF	USING_CDC16F 
	ELSE
		EXIT         "Not Valid Processor: Use -DUSING_816, etc. ! ! ! ! ! ! ! ! ! ! ! !"
	ENDIF


				;*********************************************
				;Test for Valid 'Model' type defined in -D option
				;*********************************************
	IF	SMALL
	ELSEIF	MEDIUM
	ELSEIF	COMPACT
	ELSEIF	LARGE
	ELSE
;		EXIT         "Not Valid 'Model' type - SMALL, MEDIUM, COMPACT, or LARGE: Use -DSMALL, etc. ! ! ! ! ! ! ! ! ! ! ! !"
	ENDIF

	title  "FXOS 'C' Startup Program V 1.00 for Large Model W65C816 - fxstartup.asm"

	INCLUDE interrupt_def.asm
	INCLUDE macros_inc.asm
	INCLUDE super_io_def.asm
	INCLUDE vicky_def.asm
	INCLUDE keyboard_def.asm
	INCLUDE page_00_inc.asm

; bgnpkhdr
;***************************************************************************
;  FILE_NAME: WDC_CStartup_816.asm
;
;  DATA_RIGHTS: Western Design Center and R & C Services Proprietary
;               Copyright(C) 1980-2003
;               All rights reserved. Reproduction in any manner, 
;               in whole or in part, is strictly prohibited without
;               the prior written approval of R & C Services or 
;               Western Design Center.
;
;               Information contained in this publication regarding
;               device applications and the like is intended through
;               suggestion only and may be superseded by updates.  
;               It is your responsibility to ensure that your application
;               meets with your specifications.  No representation or
;               warranty is given and no liability is assumed by 
;               Western Design Center, Inc. with respect to the accuracy
;               or use of such information, or infringement of patents
;               or other intellectual property rights arising from such
;               use or otherwise.  Use of Western Design Center's products
;               as critical components in life support systems is not
;               authorized except with express written approval by
;               Western Design Center, Inc.'s.  No licenses are conveyed,
;               implicitly or otherwise, under any intellectual property rights.
;
;
;
;  TITLE: WDC_CStartup_816
;
;  DESCRIPTION: This File describes the WDC SDS General purpose ROM startup code.
;
;                Program Flow
;
;                First we make sure we are in native mode.
;                Then we set up the stack pointer.
;                Then we set the data bank register.
;                Then we copy the initialized data.
;                Then we clear out the uninitialized data.
;                Then we call main.
;
;  DEFINED FUNCTIONS:
;          Undefined_IRQ
;                   - Process a Bad Interrupt Vector - send code & Hang!
;
;
;  SPECIAL_CONSIDERATIONS:
;
;
;  SHARED_DATA:
;          None
;
;  GLOBAL_MODULES:
;          None
;
;  LOCAL_MODULES:
;          See above in "DEFINED FUNCTIONS"
;
;  AUTHOR: Jim Goodnow II
;
;  CREATION DATE: March 11,1997
;
;  REVISION HISTORY
;     Name           Date         Description
;     ------------   ----------   ------------------------------------------------
;     R. Greenthal   10/07/2003   1.01 Initial
;
;
;
; NOTE:
;    Change the lines for each version - current version is 1.01
;    See - 
;         title  "WDC 'C' Startup Program V 1.01 for Large Model W65C816 - WDC_CStartup_816.asm"
;
;
;***************************************************************************
;endpkhdr


;***************************************************************************
;                             Include Files
;***************************************************************************
;None


;***************************************************************************
;                              Global Modules
;***************************************************************************
;None

;***************************************************************************
;                              External Modules
;***************************************************************************
;None

;***************************************************************************
;                              External Variables
;***************************************************************************
;None


;***************************************************************************
;                               Local Constants
;***************************************************************************
;


;	.page

;***************************************************************************
;                          RAM Section
;***************************************************************************
;   



        sttl "WDC_CStartup_816 Code"
	.page

;***************************************************************************
;***************************************************************************
;                    WDC_CStartup_816 Code Section
;***************************************************************************
;***************************************************************************

****************************************************************
*                                                              *
*   Define a special section in case most of the               *
*      code is not in bank 0.                                  *
*                                                              *
****************************************************************
;           Large   Model Function Calls use module Function_Name  and xdef ~~Function_Name

STACK   EQU   $EF00     ;CHANGE THIS FOR YOUR SYSTEM

STARTUP SECTION OFFSET $7D00

~~START:

START:
	SEI
        CLC                ;clear carry
        XCE                ;clear emulation-Now in Native 16 bit Mode
        REP   #$38         ;16 bit registers and Clear Decimal mode
        LONGI ON
        LONGA ON
        LDA   #STACK       ;get the stack address
        TCS                ;and set the stack to it

****************************************************************
*                                                              *
*   Set up the data bank register. We assume that the data     *
*       section is where we want to point at.                  *
*                                                              *
****************************************************************

        SEP   #$20         ;8 bit accum
        LONGA OFF

        LDA   #^_BEG_DATA  ;get bank of data
        PHA
        PLB                ;set data bank register
        REP   #$20         ;back to 16 bit mode
        LONGA ON

****************************************************************
*                                                              *
*    Next, we want to copy the initialized data from           *
*      ROM to RAM.                                             *
*                                                              *
****************************************************************

        LDA   #_END_DATA-_BEG_DATA ;number of bytes to copy
        BEQ   SKIP         ;if none, just skip
        DEC   A            ;less one for MVN instruction
        LDX   #<_ROM_BEG_DATA ;get source into X
        LDY   #<_BEG_DATA  ;get dest into Y
        MVN   #^_ROM_BEG_DATA,#^_BEG_DATA ;copy bytes
SKIP:

****************************************************************
*                                                              *
*   Now, clear out the uninitialized data area.                *
*    We assume that it is in the same bank as DATA.            *
*                                                              *
****************************************************************

        LDX   #_END_UDATA-_BEG_UDATA  ;get number of bytes to clear
        BEQ   DONE         ;nothing to do
        LDA   #0           ;get a zero for storing
        SEP   #$20         ;do byte at a time
        LDY   #_BEG_UDATA  ;get beginning of zeros

LOOP    STA   |0,Y         ;clear memory
        INY                ;bump pointer
        DEX                ;decrement count
        BNE   LOOP         ;continue till done
        REP   #$20         ;16 bit memory reg
DONE:

****************************************************************
*                                                              *
*   Finally, transfer control to the real program.             *
*                                                              *
****************************************************************
;           Small   Model Function Calls use module Function_Name  and xdef __Function_Name
;           Medium  Model Function Calls use module Function_Name  and xdef ~_Function_Name
;           Large   Model Function Calls use module Function_Name  and xdef ~~Function_Name
;           Compact Model Function Calls use module Function_Name  and xdef _~Function_Name		
		
		NOP
		NOP

		setas
		LDA #00
		STA >MOUSE_PTR
		; Setup the Interrupt Controller
		; For Now all Interrupt are Falling Edge Detection (IRQ)
		LDA #$FF
		STA >INT_EDGE_REG0
		STA >INT_EDGE_REG1
		STA >INT_EDGE_REG2
		;; Mask all Interrupt @ This Point
		STA >INT_MASK_REG0		
		STA >INT_MASK_REG1
		STA >INT_MASK_REG2
		
		
		setas 
		JSL IINITSUPERIO

		;LDA #'S'
		;STA >$AFA001
	
		;setal 
		;JSL IINITSUPERIO

		;setas
		;LDA #'I'
		;STA >$AFA002

		
		setas
		
ENABLE_IRQS


		LDA >INT_PENDING_REG1  ; Read the Pending Register &
		AND #FNX1_INT00_KBD
		STA >INT_PENDING_REG1  ; Writing it back will clear the Active Bit
		; Disable the Mask
		LDA >INT_MASK_REG1
		AND #$FE ;~FNX1_INT00_KBD
		STA >INT_MASK_REG1

		LDA >INT_PENDING_REG0  ; Read the Pending Register &
		AND #FNX0_INT07_MOUSE
		STA >INT_PENDING_REG0  ; Writing it back will clear the Active Bit
		LDA >INT_MASK_REG0
		AND #$7F ;~FNX0_INT07_MOUSE
		STA >INT_MASK_REG0


		LDA >INT_PENDING_REG0  ; Read the Pending Register &
		AND #FNX0_INT06_FDC
		STA >INT_PENDING_REG0  ; Writing it back will clear the Active Bit
		LDA >INT_MASK_REG0
		AND #$BF ;~FNX0_INT06_FDC
		STA >INT_MASK_REG0



		
		LDA >INT_PENDING_REG1
		AND #FNX1_INT05_MPU401
		;STA >INT_PENDING_REG1  ; Writing it back will clear the Active Bit
		;LDA >INT_MASK_REG1
		;AND #$DF ;~FNX1_INT05_MPU401
		;STA >INT_MASK_REG1

		LDA >INT_PENDING_REG1
		AND #FNX1_INT03_COM2
		STA >INT_PENDING_REG1  ; Writing it back will clear the Active Bit
		LDA >INT_MASK_REG1
		AND #$F7 ;~FNX1_INT03_COM2
		STA >INT_MASK_REG1


		LDA >INT_PENDING_REG1
		AND #FNX1_INT04_COM1
		STA >INT_PENDING_REG1  ; Writing it back will clear the Active Bit
		LDA >INT_MASK_REG1
		AND #$EF ;~FNX1_INT04_COM1
		STA >INT_MASK_REG1

		LDA >INT_PENDING_REG1
		AND #FNX1_INT07_SDCARD
		STA >INT_PENDING_REG1  ; Writing it back will clear the Active Bit
		LDA >INT_MASK_REG1
		AND #$7F ;~FNX1_INT07_SDCARD
		STA >INT_MASK_REG1

		;LDA >INT_PENDING_REG2
		;AND #FNX2_INT07_SDCARD
		;STA >INT_PENDING_REG2  ; Writing it back will clear the Active Bit
		;LDA >INT_MASK_REG2
		;AND #$7F ;~FNX2_INT07_SDCARD
		;STA >INT_MASK_REG2

		LDA >INT_MASK_REG0
		AND #%00000000
		STA >INT_MASK_REG0
		
		LDA >INT_MASK_REG1
		AND #%00000000
		STA >INT_MASK_REG1

		LDA >INT_MASK_REG2
		AND #%00000000
		STA >INT_MASK_REG2
		
		;LDA >INT_PENDING_REG2
		;AND #FNX2_INT01_OPL2L | FNX2_INT00_OPL2R
		;STA >INT_PENDING_REG2  ; Writing it back will clear the Active Bit
		
		; Enable Mouse
		;STA >INT_MASK_REG0
		;LDA #$FB ;~(FNX0_INT02_TMR0)  ;LDA #~(FNX0_INT00_SOF | FNX0_INT00_SOF )
		;STA >INT_MASK_REG0
		
		; Enable Keyboard
		;LDA #~(FNX1_INT00_KBD | FNX1_INT05_MPU401)
		;STA >INT_MASK_REG1
		
		; Enable OPL2 Interrupts
		;LDA #~(FNX2_INT01_OPL2L | FNX2_INT00_OPL2R)
		;STA >INT_MASK_REG2
                
		;JSL IINITKEYBOARD


		setas
		LDA #Mstr_Ctrl_Text_Mode_En      ;Okay, this Enables the Text Mode (Video Display)
		STA >MASTER_CTRL_REG_L
		; Set the Border Color
		LDA #$20
		STA >BORDER_COLOR_B
		STA >BORDER_COLOR_R
		;LDA #$DD
		LDA #$20
		STA >BORDER_COLOR_G
		LDA #Border_Ctrl_Enable   ; Enable the Border
		STA >BORDER_CTRL_REG
		; Enable the Text Mode Only
		LDA #Mstr_Ctrl_Text_Mode_En
		STA >MASTER_CTRL_REG_L
		; enable interrupts

		LDA #$F0
		STA >$af001c ;VKY_LINE0_CMP_VALUE_LO
		LDA #$01 ; Enable Line Interrupt
		STA >$af001b ;VKY_LINE_IRQ_CTRL_REG
		LDA >INT_PENDING_REG0  ; Read the Pending Register &
		AND #FNX0_INT00_SOF
		;AND #FNX0_INT01_SOL
		STA >INT_PENDING_REG0  ; Writing it back will clear the Active Bit
		LDA >INT_MASK_REG0
		AND #$FE ;~FNX0_INT00_SOF
		STA >INT_MASK_REG0				;
	
	
		
	
		
		setal
		
	
	;CLI

		setas 
		
		LDA #$00
		STA >TIMER0_CHARGE_L
		STA >TIMER0_CHARGE_M
		STA >TIMER0_CHARGE_H
		
		LDA #$00
		STA >TIMER0_CMP_L
		
		LDA #$F0
		STA >TIMER0_CMP_M
		
		LDA #$0A
		STA >TIMER0_CMP_H
		
		LDA #TMR0_CMP_RECLR
		STA >TIMER0_CMP_REG
		
		LDA #TMR0_EN
		ORA #TMR0_UPDWN
		ORA #TMR0_SCLR
		STA >TIMER0_CTRL_REG

        ; Clear Any Pending Interrupt
		;LDA >INT_PENDING_REG0
		;AND #FNX0_INT02_TMR0 ;
		;STA >INT_PENDING_REG0  ; Writing it back will clear the Active Bit
		;LDA >INT_MASK_REG0
		;AND #$FB ;~FNX0_INT02_TMR0
		;STA >INT_MASK_REG0		
		
		;setas
		;LDA #'X'
		;STA >$AFA003
		
		;LDA #'F'
		;STA >$AFA004
		
		setal
		
		JSL IINITKEYBOARD
		
		XREF  ~~main      ;change MYSTART to yours
        JSL   ~~main      ;long jump in case not bank 0

	XDEF ~~_exit
~~_exit:
        BRK




        sttl "WDC_CStartup_816 IRQ - Interrupt Handler Code"
	.page

;***************************************************************
;                                                              *
;   Example of transfering control to the real Interrupt       *
;    Handler written in 'C'. Note: save all the registers      *
;                                                              *
;***************************************************************
		XDEF	IRQ

IRQ:	
		
		setal 	
		;Example of needing to read/write to data in another data bank

		phb		; save Data Bank
		phd		; save Direct Page Register
		pha
		phx
		phy

		setas

		;LDA #'A'
		;STA >$AFA000

		setal
		XREF	~~IRQHandler
		jsl		~~IRQHandler

		;setas
		;LDA #'B'
		;STA >$AFA000

		
		setal
		
		ply
		plx
		pla
		pld		; restore Direct Page Reg
		plb		; Restore Data Bank


		
		RTI


NMI:
		RTI


BRK:	

		setal 	
		;Example of needing to read/write to data in another data bank

		phb		; save Data Bank
		phd		; save Direct Page Register
		pha
		phx
		phy

		setas

		setal
		XREF	~~BRKHandler
		jsl		~~BRKHandler

		setal
		
		ply
		plx
		pla
		pld		; restore Direct Page Reg
		plb		; Restore Data Bank

		RTI
		
COP:	

		setal 	
		;Example of needing to read/write to data in another data bank

		phb		; save Data Bank

		;phk
		;plb

		phd		; save Direct Page Register
		pha
		phx
		phy

		setas

		setal
		XREF	~~COPHandler
		jsl		~~COPHandler

		setal
		
		ply
		plx
		pla
		pld		; restore Direct Page Reg
		plb		; Restore Data Bank

		RTI
;************************************************
; Bad Vectors
;************************************************

Undefined_IRQ:
		nop
		bra Undefined_IRQ


;WDCMON_START	EQU	$7E00
;ROMSPACE EQU WDCMON_START-*  ;gives space left in the ROM BEFORE TABLES;
;	IF ROMSPACE<0
		;EXIT         "Not Enough Memory for WDC_Cstartup_02.ASM - bumping into WDCMON! ! ! ! ! ! ! ! ! ! ! !"
	;ENDIF

;        ENDS


        XREF  _BEG_DATA
        XREF  _END_DATA
        XREF  _ROM_BEG_DATA
        XREF  _BEG_UDATA
        XREF  _END_UDATA


	ends


;        DATA
;        XDEF  ~~heap_start,~~heap_end
;~~heap_start:
;        WORD  $6000
;~~heap_end:
;        WORD  $7CF0
;
;        ENDS


        sttl "IINITSUPERIO"
	.page
	
	xdef ~~k_init_superio	
~~k_init_superio:	
IINITSUPERIO	
		
		setal
		
		PHD
		PHP
		PHA
		setas			;just make sure we are in 8bit mode

		LDA #$01		;Default Value - C256 Doesn't use this IO Pin
		STA >GP10_REG
		LDA GP10_REG
		LDA #$01		;Default Value - C256 Doesn't use this IO Pin
		STA >GP11_REG
		LDA #$01		;Default Value - C256 Doesn't use this IO Pin
		STA >GP12_REG
				LDA #$01		;Default Value - C256 Doesnt use this IO Pin
				STA >GP13_REG
				LDA #$05		;(C256 - POT A Analog BX) Bit[0] = 1, Bit[2] = 1
				STA >GP14_REG
				LDA #$05		;(C256 - POT A Analog BY) Bit[0] = 1, Bit[2] = 1
				STA >GP15_REG
				LDA #$05		;(C256 - POT B Analog BX) Bit[0] = 1, Bit[2] = 1
				STA >GP16_REG
				LDA #$05		;(C256 - POT B Analog BY) Bit[0] = 1, Bit[2] = 1
				STA >GP17_REG
				LDA #$00		;(C256 - HEADPHONE MUTE) - Output GPIO - Push-Pull (1 - Headphone On, 0 - HeadPhone Off)
				STA >GP20_REG

		;LDA #$00		;(C256 - FLOPPY - DS1) - TBD Later, Floppy Stuff (JIM DREW)
				;STA >GP21_REG
				;LDA #$00		;(C256 - FLOPPY - DMTR1) - TBD Later, Floppy Stuff (JIM DREW)
				;STA >GP22_REG

				LDA #$01		;Default Value - C256 Doesnt use this IO Pin
				STA >GP24_REG
				LDA #$05		;(C256 - MIDI IN) Bit[0] = 1, Bit[2] = 1 (Page 132 Manual)
				STA >GP25_REG
				LDA #$84		;(C256 - MIDI OUT) Bit[2] = 1, Bit[7] = 1 (Open Drain - To be Checked)
				STA >GP26_REG

				LDA #$01		;Default Value - (C256 - JP1 Fanout Pin 1) Setup as GPIO Input for now
				STA >GP30_REG
				LDA #$01		;Default Value - (C256 - JP1 Fanout Pin 4) Setup as GPIO Input for now
				STA >GP31_REG
				LDA #$01		;Default Value - (C256 - JP1 Fanout Pin 3) Setup as GPIO Input for now
				STA >GP32_REG
				LDA #$01		;Default Value - (C256 - JP1 Fanout Pin 6) Setup as GPIO Input for now
				STA >GP33_REG
				LDA #$01		;Default Value - (C256 - JP1 Fanout Pin 5) Setup as GPIO Input for now
				STA >GP34_REG
				LDA #$01		;Default Value - (C256 - JP1 Fanout Pin 8) Setup as GPIO Input for now
				STA >GP35_REG
				LDA #$01		;Default Value - (C256 - JP1 Fanout Pin 7) Setup as GPIO Input for now
				STA >GP36_REG
				LDA #$01		;Default Value - (C256 - JP1 Fanout Pin 10) Setup as GPIO Input for now
				STA >GP37_REG

				;LDA #$01		;(C256 - FLOPPY - DRVDEN0) - TBD Later, Floppy Stuff (JIM DREW)
				;STA >GP40_REG
				;LDA #$01		;(C256 - FLOPPY - DRVDEN1) - TBD Later, Floppy Stuff (JIM DREW)
				;STA >GP41_REG
				LDA #$01		;Default Value - C256 Doesnt use this IO Pin
				STA >GP42_REG
			  LDA #$01		;(C256 - INPUT PLL CLK INTERRUPT) Default Value - Will keep it as an input for now, no real usage for now
				STA >GP43_REG
				LDA #$05		;(C256 - UART2 - RI2) - Input - Set Secondary Function
				STA >GP50_REG
				LDA #$05		;(C256 - UART2 - DCD2) - Input - Set Secondary Function
				STA >GP51_REG
				LDA #$05		;(C256 - UART2 - RXD2) - Input - Set Secondary Function
				STA >GP52_REG
				LDA #$04		;(C256 - UART2 - TXD2) - Output - Set Secondary Function
				STA >GP53_REG
				LDA #$05		;(C256 - UART2 - DSR2) - Input - Set Secondary Function
				STA >GP54_REG
				LDA #$04		;(C256 - UART2 - RTS2) - Output - Set Secondary Function
				STA >GP55_REG
				LDA #$05		;(C256 - UART2 - CTS2) - Input - Set Secondary Function
				STA >GP56_REG
				LDA #$04		;(C256 - UART2 - DTR2) - Output - Set Secondary Function
				STA >GP57_REG
				LDA #$84		;(C256 - LED1) - Open Drain - Output
				STA >GP60_REG
				LDA #$84		;(C256 - LED2) - Open Drain - Output
				STA >GP61_REG
				LDA #$00		;GPIO Data Register (GP10..GP17) - Not Used
				STA >GP1_REG
				LDA #$01		;GPIO Data Register (GP20..GP27) - Bit[0] - Headphone Mute (Enabling it)
				STA >GP2_REG
				LDA #$00		;GPIO Data Register (GP30..GP37) - Since it is in Output mode, nothing to write here.
				STA >GP3_REG
				LDA #$00		;GPIO Data Register (GP40..GP47)  - Not Used
				STA >GP4_REG
				LDA #$00		;GPIO Data Register (GP50..GP57)  - Not Used
				STA >GP5_REG
				LDA #$00		;GPIO Data Register (GP60..GP61)  - Not Used
				STA >GP6_REG

				LDA #$01		;LED1 Output - Already setup by Vicky Init Phase, for now, I will leave it alone
				STA >LED1_REG
				LDA #$02		;LED2 Output - However, I will setup this one, to make sure the Code works (Full On, when Code was ran)
				STA >LED2_REG
				setal
		PLA
				PLP
				PLD
		RTL



;
; IINITKEYBOARD
; Author: Stefany
; Note: We assume that A & X are 16Bits Wide when entering here.
; Initialize the Keyboard Controler (8042) in the SuperIO.
; Inputs:
;   None
; Affects:
;   Carry (c)
	xdef ~~k_init_keyboard
~~k_init_keyboard:
IINITKEYBOARD	setal  
				PHD
				        PHP
				        PHA
				        PHX

                setas				;just make sure we are in 8bit mode
                setxl 					; Set 8bits

				; Setup Foreground LUT First
                CLC

                JSR Poll_Inbuf ;
;; Test AA
				        LDA #$AA			;Send self test command
				        STA >KBD_CMD_BUF
								;; Sent Self-Test Code and Waiting for Return value, it ought to be 0x55.
                JSR Poll_Outbuf ;

				        LDA >KBD_OUT_BUF		;Check self test result
				        CMP #$55
				        BEQ	passAAtest

                BRL initkb_loop_out

passAAtest      LDA #'A'
				;STA >$AFA001


				;LDX #<>pass_tst0xAAmsg
                ;JSL IPRINT      ; print Message
;; Test AB
				LDA #$AB			;Send test Interface command
				STA >KBD_CMD_BUF

                JSR Poll_Outbuf ;

				        LDA >KBD_OUT_BUF		;Display Interface test results
				        CMP #$00			;Should be 00
				        BEQ	passABtest

                BRL initkb_loop_out

passABtest      ;LDX #<>pass_tst0xABmsg
                ;JSL IPRINT       ; print Message
				LDA #'B'
				;STA >$AFA002
                ;LDA #$A8        ; Enable Second PS2 Port
                ;STA KBD_DATA_BUF
                ;JSR Poll_Outbuf ;

;; Program the Keyboard & Enable Interrupt with Cmd 0x60
                LDA #$60            ; Send Command 0x60 so to Enable Interrupt
                STA >KBD_CMD_BUF
                JSR Poll_Inbuf ;
                LDA #%01101001      ; Enable Interrupt
                ;LDA #%01001011      ; Enable Interrupt for Mouse and Keyboard
                STA >KBD_DATA_BUF
                JSR Poll_Inbuf ;
                ;LDX #<>pass_cmd0x60msg
                ;JSL IPRINT       ; print Message
				LDA #'6'
				;STA >$AFA003

; Reset Keyboard
                LDA #$FF      ; Send Keyboard Reset command
                STA >KBD_DATA_BUF
                ; Must wait here;
                LDX #$FFFF
DLY_LOOP1       DEX
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                NOP
                CPX #$0000
                BNE DLY_LOOP1
                JSR Poll_Outbuf ;

                LDA >KBD_OUT_BUF   ; Read Output Buffer

				;LDA #'F'
				;STA >$AFA004

                ;LDX #<>pass_cmd0xFFmsg
                ;JSL IPRINT       ; print Message
DO_CMD_F4_AGAIN
                JSR Poll_Inbuf ;
				        LDA #$F4			; Enable the Keyboard
				        STA >KBD_DATA_BUF
                JSR Poll_Outbuf ;

				        LDA >KBD_OUT_BUF		; Clear the Output buffer
                CMP #$FA
                BNE DO_CMD_F4_AGAIN
                ; Till We Reach this point, the Keyboard is setup Properly
                JSR INIT_MOUSE

				
                ;; Unmask the Keyboard interrupt
                ;; Clear Any Pending Interrupt
                ;LDA >INT_PENDING_REG0  ; Read the Pending Register &
                ;AND #FNX0_INT07_MOUSE
                ;STA >INT_PENDING_REG0  ; Writing it back will clear the Active Bit

                ;LDA >INT_PENDING_REG1  ; Read the Pending Register &
                ;AND #FNX1_INT00_KBD
                ;STA >INT_PENDING_REG1  ; Writing it back will clear the Active Bit
                ; Disable the Mask
                ;LDA >INT_MASK_REG1
                ;AND #~FNX1_INT00_KBD
                ;STA >INT_MASK_REG1

                ;LDA >INT_MASK_REG0
                ;AND #~FNX0_INT07_MOUSE
                ;STA >INT_MASK_REG0


                ;LDX #<>Success_kb_init
				LDA #'1'

                SEC
                BCS InitSuccess

initkb_loop_out ;LDX #<>Failed_kb_init
				LDA #'0'
InitSuccess     ;STA >$AFA005
				;JSL IPRINT       ; print Message
                setal 					; Set 16bits
                setxl 					; Set 16bits

                PLX
                PLA
				        PLP
				        PLD
                RTL

Poll_Inbuf	    setas
                LDA >STATUS_PORT		; Load Status Byte
				        AND	#<INPT_BUF_FULL	; Test bit $02 (if 0, Empty)
				        CMP #<INPT_BUF_FULL
				        BEQ Poll_Inbuf
                RTS

Poll_Outbuf	    setas
                LDA >STATUS_PORT
                AND #OUT_BUF_FULL ; Test bit $01 (if 1, Full)
                CMP #OUT_BUF_FULL
                BNE Poll_Outbuf
                RTS

INIT_MOUSE      setas

                JSR Poll_Inbuf
                LDA #$A8          ; Enable the second PS2 Channel
                STA >KBD_CMD_BUF

;                LDX #$4000
;DLY_MOUSE_LOOP  DEX
                ;CPX #$0000
                ;BNE DLY_MOUSE_LOOP
DO_CMD_A9_AGAIN
                JSR Poll_Inbuf
                LDA #$A9          ; Tests second PS2 Channel
                STA >KBD_CMD_BUF
                JSR Poll_Outbuf ;
				        LDA >KBD_OUT_BUF		; Clear the Output buffer
                CMP #$00
                BNE DO_CMD_A9_AGAIN
                ; IF we pass this point, the Channel is OKAY, Let's move on

                JSR Poll_Inbuf
                LDA #$20
                STA >KBD_CMD_BUF
                JSR Poll_Outbuf ;

                LDA >KBD_OUT_BUF
                ORA #$02
                PHA
                JSR Poll_Inbuf
                LDA #$60
                STA >KBD_CMD_BUF
                JSR Poll_Inbuf ;
                PLA
                STA >KBD_DATA_BUF

                LDA #$F6        ;Tell the mouse to use default settings
                JSR MOUSE_WRITE
                JSR MOUSE_READ

                ; Set the Mouse Resolution 1 Clicks for 1mm - For a 640 x 480, it needs to be the slowest
                LDA #$E8
                JSR MOUSE_WRITE
                JSR MOUSE_READ
                LDA #$00
                JSR MOUSE_WRITE
                JSR MOUSE_READ

                ; Set the Refresh Rate to 60
;                LDA #$F2
;                JSR MOUSE_WRITE
;                JSR MOUSE_READ
;                LDA #60
;                JSR MOUSE_WRITE
;                JSR MOUSE_READ


                LDA #$F4        ; Enable the Mouse
                JSR MOUSE_WRITE
                JSR MOUSE_READ
                ; Let's Clear all the Variables Necessary to Computer the Absolute Position of the Mouse
                LDA #$00
                STA >MOUSE_PTR
                RTS

MOUSE_WRITE     setas
                PHA
                JSR Poll_Inbuf
                LDA #$D4
                STA >KBD_CMD_BUF
                JSR Poll_Inbuf
                PLA
                STA >KBD_DATA_BUF
                RTS

MOUSE_READ      setas
                JSR Poll_Outbuf ;
                LDA >KBD_INPT_BUF
                RTS

        sttl "WDC_CStartup_816 Shadow Vector Defines"
	.page

;***************************************************************************
;        $7E00 - $7FFF New Expanded Shadow Vector Section Definitions
;***************************************************************************
;***************************************************************************
;***************************************************************************

;	hvectors:	section		; the real reset and interrupt vectors
;
;					;65C816 Vectors
;	org	$18ffe4
;					;Status bit E = 0 (Native mode);
;		dw	Undefined_IRQ	; $FFE4 - COP(816)
;		dw	Undefined_IRQ	; $FFE6 - BRK(816)
;		dw	Undefined_IRQ	; $FFE8 - ABORT(816)
;		dw	Undefined_IRQ	; $FFEA - NMI(816)
;		dw	Undefined_IRQ	; $FFEC - IRQRVD(816)
;		dw	IRQ		; $FFEE - IRQ(816)
;					;Status bit E = 1 (Emulation mode)
;		dw	Undefined_IRQ	; $FFF0 - IRQRVD(816)
;		dw	Undefined_IRQ	; $FFF2 - IRQRVD(816)
;		dw	Undefined_IRQ	; $FFF4 - COP(816Emulation)
;		dw	Undefined_IRQ	; $FFF6 - IRQRVD(816Emulation)
;		dw	Undefined_IRQ	; $FFF8 - ABORT(816Emulation)
;
;					; Common Vectors for all CPUs
;		dw	Undefined_IRQ	; $FFFA -  NMIRQ (ALL)
;		dw	START		; $FFFC -  RESET (ALL)
;		dw	Undefined_IRQ	; $FFFE -  IRQBRK (ALL)
;
;		ends


	        



****************************************************************
*                                                              *
*   This section defines the interrupt and reset vectors.      *
*      The reset vectors always start at FFE4 in bank 0.       *
*      Since the vectors are only 16 bits, they must point     *
*      into bank 0. Replace the "Undefined_IRQ" with any       *
*      routines that handle that interrupt.                    *
*                                                              *
****************************************************************


	vectors:	section		; the real reset and interrupt vectors

					;65C816 Vectors
		org	$ffe4
					;Status bit E = 0 (Native mode)
		dw	COP				; $FFE4 - COP(816)
		dw	BRK		     	; $FFE6 - BRK(816)
		dw	Undefined_IRQ	; $FFE8 - ABORT(816)
		dw	NMI				; $FFEA - NMI(816)
		dw	Undefined_IRQ	; $FFEC - IRQRVD(816)
		dw	IRQ		; $FFEE - IRQ(816)
					;Status bit E = 1 (Emulation mode)
		dw	Undefined_IRQ	; $FFF0 - IRQRVD(816)
		dw	Undefined_IRQ	; $FFF2 - IRQRVD(816)
		dw	Undefined_IRQ	; $FFF4 - COP(816Emulation)
		dw	Undefined_IRQ	; $FFF6 - IRQRVD(816Emulation)
		dw	Undefined_IRQ	; $FFF8 - ABORT(816Emulation)

					; Common Vectors for all CPUs
		dw	Undefined_IRQ	; $FFFA -  NMIRQ (ALL)
		dw	START		; $FFFC -  RESET (ALL)
		dw	Undefined_IRQ	; $FFFE -  IRQBRK (ALL)

		ends


	        end

;**********************************************************************
;	End of WDC_CSTARTUP_C.ASM
;**********************************************************************


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

	INCLUDE page_00_inc.asm

****************************************************************
*                                                              *
*   Define a special section in case most of the               *
*      code is not in bank 0.                                  *
*                                                              *
****************************************************************
;           Large   Model Function Calls use module Function_Name  and xdef ~~Function_Name

;STACK   EQU   $EF00     ;CHANGE THIS FOR YOUR SYSTEM

STARTUP SECTION OFFSET $01000

_~START:

; MUST BE CALLED LONG A AND LONG X WITH STACK POINTER IN A REGISTER

START:
		SEI
        SEP   #$20         ;8 bit accum
        LONGA OFF
        LDA #$47
		STA >$000710
		;CLC                ;clear carry
        ;XCE                ;clear emulation-Now in Native 16 bit Mode
        REP   #$20         ;16 bit registers and Clear Decimal mode
        LONGA ON
        ;LDA   #STACK       ;get the stack address
        
		;STA >$000706
		LDA >$000700
		STA >$000706
		TCS                ;and set the stack to it

****************************************************************
*                                                              *
*   Set up the data bank register. We assume that the data     *
*       section is where we want to point at.                  *
*                                                              *
****************************************************************

        SEP   #$20         ;8 bit accum
        LONGA OFF

        ;LDA   #^_BEG_DATA  ;get bank of data
        ;PHA
        ;PLB                ;set data bank register
        ;REP   #$20         ;back to 16 bit mode
        ;LONGA ON

****************************************************************
*                                                              *
*    Next, we want to copy the initialized data from           *
*      ROM to RAM.                                             *
*                                                              *
****************************************************************

        ;LDA   #_END_DATA-_BEG_DATA ;number of bytes to copy
        ;BEQ   SKIP         ;if none, just skip
        ;DEC   A            ;less one for MVN instruction
        ;LDX   #<_ROM_BEG_DATA ;get source into X
        ;LDY   #<_BEG_DATA  ;get dest into Y
        ;MVN   #^_ROM_BEG_DATA,#^_BEG_DATA ;copy bytes
SKIP:

****************************************************************
*                                                              *
*   Now, clear out the uninitialized data area.                *
*    We assume that it is in the same bank as DATA.            *
*                                                              *
****************************************************************

        ;LDX   #_END_UDATA-_BEG_UDATA  ;get number of bytes to clear
        ;BEQ   DONE         ;nothing to do
        ;LDA   #0           ;get a zero for storing
        ;SEP   #$20         ;do byte at a time
        ;LDY   #_BEG_UDATA  ;get beginning of zeros

;LOOP    STA   |0,Y         ;clear memory
        ;INY                ;bump pointer
        ;DEX                ;decrement count
        ;BNE   LOOP         ;continue till done
        ;REP   #$20         ;16 bit memory reg
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
		;CLI
        SEP   #$20         ;8 bit accum
        LONGA OFF

		LDA #$45
		STA >$000710
       
        REP   #$20         ;16 bit registers and Clear Decimal mode
        LONGA ON

		XREF  _~main      ;change MYSTART to yours
        JSR   _~main     ;long jump in case not bank 0
		RTL

	XDEF _~_exit
_~_exit:
        BRK


        sttl "WDC_CStartup_816 IRQ - Interrupt Handler Code"
	.page




        XREF  _BEG_DATA
        XREF  _END_DATA
        XREF  _ROM_BEG_DATA
        XREF  _BEG_UDATA
        XREF  _END_UDATA


	ends


        DATA
        XDEF  _~heap_start,_~heap_end
_~heap_start:
        WORD  $6000
_~heap_end:
        WORD  $7CF0

        ENDS


        sttl "WDC_CStartup_816 Shadow Vector Defines"
	.page


	        end

;**********************************************************************
;	End of WDC_CSTARTUP_C.ASM
;**********************************************************************


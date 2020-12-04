; General purpose ROM startup code 
;
; First we make sure we are in native mode.
; Then we set up the stack pointer.
; Then we set the data bank register.
; Then we copy the initialized data.
; Then we clear out the uninitialized data.
; Then we call main.



****************************************************************
*                                                              *
*   Define a special section in case most of the               *
*      code is not in bank 0.                                  *
*                                                              *
****************************************************************

STACK   EQU   $F000     ;CHANGE THIS FOR YOUR SYSTEM

STARTUP SECTION OFFSET $FF80

START:
        CLC                ;clear carry
        XCE                ;clear emulation
        REP   #$30         ;16 bit registers
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

        XREF  MYSTART      ;change MYSTART to yours
        JMP   >MYSTART     ;long jump in case not bank 0

        XREF  _BEG_DATA
        XREF  _END_DATA
        XREF  _ROM_BEG_DATA
        XREF  _BEG_UDATA
        XREF  _END_UDATA

****************************************************************
*                                                              *
*   This section defines the interrupt and reset vectors.      *
*      The reset vectors always start at FFE4 in bank 0.       *
*      Since the vectors are only 16 bits, they must point     *
*      into bank 0. Replace the zeroes with any routines       *
*      that handle interrupts.                                 *
*                                                              *
****************************************************************

        ORG   $FFE4

N_COP   DW    0
N_BRK   DW    0
N_ABORT DW    0
N_NMI   DW    0
N_RSRVD DW    0
N_IRQ   DW    0
        DS    4
E_COP   DW    0
E_RSRVD DW    0
E_ABORT DW    0
E_NMI   DW    0
E_RESET DW    START
E_IRQ   DW    0
        ENDS
        END


; Pending Interrupt (Read and Write Back to Clear)
INT_PENDING_REG0 EQU $000140 ;
INT_PENDING_REG1 EQU $000141 ;
INT_PENDING_REG2 EQU $000142 ;
; Polarity Set
INT_POL_REG0     EQU $000144 ;
INT_POL_REG1     EQU $000145 ;
INT_POL_REG2     EQU $000146 ;
; Edge Detection Enable
INT_EDGE_REG0    EQU $000148 ;
INT_EDGE_REG1    EQU $000149 ;
INT_EDGE_REG2    EQU $00014A ;
; Mask
INT_MASK_REG0    EQU $00014C ;
INT_MASK_REG1    EQU $00014D ;
INT_MASK_REG2    EQU $00014E ;

; Interrupt Bit Definition
; Register Block 0
FNX0_INT00_SOF    EQU $01  ;Start of Frame @ 60FPS
FNX0_INT01_SOL    EQU $02  ;Start of Line (Programmable)
FNX0_INT02_TMR0   EQU $04  ;Timer 0 Interrupt
FNX0_INT03_TMR1   EQU $08  ;Timer 1 Interrupt
FNX0_INT04_TMR2   EQU $10  ;Timer 2 Interrupt
FNX0_INT05_RTC    EQU $20  ;Real-Time Clock Interrupt
FNX0_INT06_FDC    EQU $40  ;Floppy Disk Controller
FNX0_INT07_MOUSE  EQU $80  ; Mouse Interrupt (INT12 in SuperIO IOspace)
; Register Block 1
FNX1_INT00_KBD    EQU $01  ;Keyboard Interrupt
FNX1_INT01_SC0    EQU $02  ;Sprite 2 Sprite Collision
FNX1_INT02_SC1    EQU $04  ;Sprite 2 Tiles Collision
FNX1_INT03_COM2   EQU $08  ;Serial Port 2
FNX1_INT04_COM1   EQU $10  ;Serial Port 1
FNX1_INT05_MPU401 EQU $20  ;Midi Controller Interrupt
FNX1_INT06_LPT    EQU $40  ;Parallel Port
FNX1_INT07_SDCARD EQU $80  ;SD Card Controller Interrupt
; Register Block 2
FNX2_INT00_OPL2R  EQU $01  ;OPl2 Right Channel
FNX2_INT01_OPL2L  EQU $02  ;OPL2 Left Channel
FNX2_INT02_BTX_INT EQU $04  ;Beatrix Interrupt (TBD)
FNX2_INT03_SDMA   EQU $08  ;System DMA
FNX2_INT04_VDMA   EQU $10  ;Video DMA
FNX2_INT05_DACHP  EQU $20  ;DAC Hot Plug
FNX2_INT06_EXT    EQU $40  ;External Expansion
FNX2_INT07_ALLONE EQU $80  ; Not Used - Always 1

TIMER0_CTRL_REG    EQU $000160 ; (Write - Control, Read Status)
; Control Register Definitions
TMR0_EN      EQU $01
TMR0_SCLR    EQU $02
TMR0_SLOAD   EQU $04 ; Use SLOAD is
TMR0_UPDWN   EQU $08

TIMER0_CHARGE_L    EQU $000161 ; Use if you want to Precharge and countdown
TIMER0_CHARGE_M    EQU $000162 ;
TIMER0_CHARGE_H    EQU $000163 ;
; Compare Block
TIMER0_CMP_REG     EQU $000164 ;
TMR0_CMP_RECLR      EQU $01 ; set to one for it to cycle when Counting up
TMR0_CMP_RELOAD     EQU $02 ; Set to one for it to reload when Counting Down

TIMER0_CMP_L       EQU $000165 ; Load this Value for Countup
TIMER0_CMP_M       EQU $000166 ;
TIMER0_CMP_H       EQU $000167 ;
; Pending Interrupt (Read and Write Back to Clear)
; TIMER1
TIMER1_CTRL_REG    EQU $000168 ;
TMR1_EN      EQU $01
TMR1_SCLR    EQU $02
TMR1_SLOAD   EQU $04
TMR1_UPDWN   EQU $08 ; 1 = Up, 0 = Down
TIMER1_CHARGE_L    EQU $000169 ; Use if you want to Precharge and countdown
TIMER1_CHARGE_M    EQU $00016A ;
TIMER1_CHARGE_H    EQU $00016B ;
; Compare Block
TIMER1_CMP_REG     EQU $00016C ;
TMR1_CMP_RECLR      EQU $01 ; set to one for it to cycle when Counting up
TMR1_CMP_RELOAD     EQU $02 ; Set to one for it to reload when Counting Down
TIMER1_CMP_L       EQU $00016D ;
TIMER1_CMP_M       EQU $00016E ;
TIMER1_CMP_H       EQU $00016F ;
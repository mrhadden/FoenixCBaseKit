




	module IRQHandler
	xdef ~~IRQHandler
	
	INCLUDE 	macros_inc.asm
	INCLUDE 	io_def.asm
	INCLUDE 	ch376s_inc.asm
	INCLUDE 	interrupt_def.asm
	INCLUDE 	keyboard_def.asm
	INCLUDE 	page_00_inc.asm
	INCLUDE 	vicky_def.asm

;MASK_INT07_SDCARD	EQU 	$FF7F
CS_TEXT_MEM_PTR_0         EQU $AFA000
CS_TEXT_MEM_PTR_1         EQU $AFA001
CS_TEXT_MEM_PTR_2         EQU $AFA002
CS_TEXT_MEM_PTR_3         EQU $AFA003
CS_TEXT_MEM_PTR_4         EQU $AFA004
CS_TEXT_MEM_PTR_5         EQU $AFA005
CS_TEXT_MEM_PTR_6         EQU $AFA006
CS_TEXT_MEM_PTR_7         EQU $AFA007
CS_TEXT_MEM_PTR_8         EQU $AFA008

MS_TEXT_MEM_PTR_0         EQU $AFA080
MS_TEXT_MEM_PTR_1         EQU $AFA081
MS_TEXT_MEM_PTR_2         EQU $AFA082


FXOS_MOUSE_BYTE_0		  EQU $001500
FXOS_MOUSE_BYTE_1		  EQU $001501
FXOS_MOUSE_BYTE_2		  EQU $001502
FXOS_MOUSE_BYTE_T		  EQU $001503
FXOS_MOUSE_BYTE_X_L		  EQU $001504
FXOS_MOUSE_BYTE_X_H		  EQU $001505
FXOS_MOUSE_BYTE_Y_L		  EQU $001506
FXOS_MOUSE_BYTE_Y_H		  EQU $001507


FXOS_KEY_BYTE_0		  	  EQU $001508
FXOS_KEY_BYTE_1		      EQU $001509
FXOS_KEY_BYTE_2		      EQU $00150A

FXOS_MOUSE_CTL			  EQU $00150B
FXOS_MOUSE_INDEX   		  EQU $00150C
FXOS_MOUSE_STATUS		  EQU $00150D

~~IRQHandler:
;////////////////////////////////////////////////////////////////////////////
;////////////////////////////////////////////////////////////////////////////
; Interrupt Handler
;////////////////////////////////////////////////////////////////////////////
;////////////////////////////////////////////////////////////////////////////
;////////////////////////////////////////////////////////////////////////////

				setas				
				;LDA #'I'
				;JSL IPUTC
				LDA #'B'
				STA >$AFA000
				
				
				;LDX #<>irq_Msg
                ;JSL IPRINT       ; print the Init
                setas 					; Set 8bits
                ; Go Service the Start of Frame Interrupt Interrupt
                ; IRQ0
                ; Start of Frame Interrupt
				;JSR SOF_I+NTERRUPT
				;LDA >INT_PENDING_REG0
				;STA	>CS_TEXT_MEM_PTR_0
				;LDA >INT_PENDING_REG1
				;STA	>CS_TEXT_MEM_PTR_1
				;LDA >INT_PENDING_REG2
				;STA	>CS_TEXT_MEM_PTR_2

				LDA #'C'
				STA >$AFA000
				
				
				;LDA >INT_POL_REG0		
				;STA	>CS_TEXT_MEM_PTR_3				
				;LDA >INT_POL_REG1	
				;STA	>CS_TEXT_MEM_PTR_4
				;LDA >INT_POL_REG2
				;STA	>CS_TEXT_MEM_PTR_5


				;LDA >INT_EDGE_REG0
				;STA	>CS_TEXT_MEM_PTR_6
				;LDA >INT_EDGE_REG1	
				;STA	>CS_TEXT_MEM_PTR_7
				;LDA >INT_EDGE_REG2
				;STA	>CS_TEXT_MEM_PTR_8


				
				LDA >INT_PENDING_REG0
                CMP #$00
                BNE SERVICE_NEXT_IRQ0

				LDA #'D'
				STA >$AFA000

                ;LDA >INT_PENDING_REG0
                ;AND #FNX0_INT00_SOF
                ;CMP #FNX0_INT00_SOF
                ;BNE SERVICE_NEXT_IRQ6
				;BNE SERVICE_NEXT_IRQ0
                ;STA >INT_PENDING_REG0
                ; Start of Frame Interrupt
                ;JSR SOF_INTERRUPT
                ;BRA EXIT_IRQ_HANDLE

                ;IRQ1 - Not Implemented Yet
                ;IRQ6

                setas
                ;BRL SERVICE_PENDING_REG1

				LDA >INT_PENDING_REG1
                CMP #$00
                BRL SERVICE_PENDING_REG1

				LDA >INT_PENDING_REG2
                CMP #$00
                BRL SERVICE_PENDING_REG2



;CHECK_PENDING_REG1
;                setas
;                LDA >INT_PENDING_REG1
;                CMP #$00
;                BEQ PENDING_REG1_EXIT ;BEQ EXIT_IRQ_HANDLE;
;				jmp SERVICE_NEXT_IRQ8
;PENDING_REG1_EXIT
;				jmp EXIT_IRQ_HANDLE
SERVICE_NEXT_IRQ0 ;SOF

				LDA #'E'
				STA >$AFA000
				

				setas
                LDA >INT_PENDING_REG0
                AND #FNX0_INT00_SOF
                CMP #FNX0_INT00_SOF
                BNE SERVICE_NEXT_IRQ1
                STA >INT_PENDING_REG0
                ; Timer 0
                JSR SOF_INTERRUPT
;                BRA EXIT_IRQ_HANDLE
                ;IRQ7
                setas
				
				LDA #'F'
				STA >$AFA000				
				
SERVICE_NEXT_IRQ1 ;SOL
                LDA >INT_PENDING_REG0
                AND #FNX0_INT01_SOL
                CMP #FNX0_INT01_SOL
                BNE SERVICE_NEXT_IRQ2
                STA >INT_PENDING_REG0
                ; Timer 0
                JSR SOL_INTERRUPT
;                BRA EXIT_IRQ_HANDLE
                ;IRQ7
                setas
				
SERVICE_NEXT_IRQ2 ;Timer 0
                LDA >INT_PENDING_REG0
                AND #FNX0_INT02_TMR0
                CMP #FNX0_INT02_TMR0
                BNE SERVICE_NEXT_IRQ3
                STA >INT_PENDING_REG0
                ; Timer 0
                JSR TIMER0_INTERRUPT
;                BRA EXIT_IRQ_HANDLE
                ;IRQ7
                setas
SERVICE_NEXT_IRQ3 ;Timer 1
                LDA >INT_PENDING_REG0
                AND #FNX0_INT03_TMR1
                CMP #FNX0_INT03_TMR1
                BNE SERVICE_NEXT_IRQ4
                STA >INT_PENDING_REG0
                ; Time 1
                JSR TIMER1_INTERRUPT
;                BRA EXIT_IRQ_HANDLE
                ;IRQ7
                setas
SERVICE_NEXT_IRQ4 ;Timer 2
                LDA >INT_PENDING_REG0
                AND #FNX0_INT04_TMR2
                CMP #FNX0_INT04_TMR2
                BNE SERVICE_NEXT_IRQ5
                STA >INT_PENDING_REG0
                ; Time 2
                JSR TIMER2_INTERRUPT
;                BRA EXIT_IRQ_HANDLE
                ;IRQ7
                setas
SERVICE_NEXT_IRQ5 ;Real-Time Clock Interrupt
                LDA >INT_PENDING_REG0
                AND #FNX0_INT05_RTC
                CMP #FNX0_INT05_RTC
                BNE SERVICE_NEXT_IRQ6
                STA >INT_PENDING_REG0
                ; Floppy Disk Controller
                JSR RTC_INTERRUPT
;                BRA EXIT_IRQ_HANDLE
                ;IRQ7
                setas
SERVICE_NEXT_IRQ6 ; FDC Interrupt
                LDA >INT_PENDING_REG0
                AND #FNX0_INT06_FDC
                CMP #FNX0_INT06_FDC
                BNE SERVICE_NEXT_IRQ7
                STA >INT_PENDING_REG0
                ; Floppy Disk Controller
                JSR FDC_INTERRUPT
;                BRA EXIT_IRQ_HANDLE
                ;IRQ7
                setas

SERVICE_NEXT_IRQ7 ; Mouse IRQ
                LDA >INT_PENDING_REG0
                AND #FNX0_INT07_MOUSE
                CMP #FNX0_INT07_MOUSE
                BNE SERVICE_PENDING_REG1
                STA >INT_PENDING_REG0
                ; Mouse Interrupt
                JSR MOUSE_INTERRUPT
;
; Second Block of 8 Interrupts
;                ;IRQ8
SERVICE_PENDING_REG1				

				LDA #'M'
				STA >$AFA000				

                setas
                LDA >INT_PENDING_REG1
                CMP #$00
                BNE SERVICE_NEXT_IRQ8 ;BEQ EXIT_IRQ_HANDLE
				BRL EXIT_IRQ_HANDLE

SERVICE_NEXT_IRQ8 ; Keyboard Interrupt
                setas

				LDA #'N'
				STA >$AFA000				

				LDA >INT_PENDING_REG1
                AND #FNX1_INT00_KBD
                CMP #FNX1_INT00_KBD
                BNE SERVICE_NEXT_IRQ11
                STA >INT_PENDING_REG1
                ; Keyboard Interrupt
                JSR KEYBOARD_INTERRUPT
                ;BRL EXIT_IRQ_HANDLE
                ;IRQ9 - Not Implemented Yet
                ;IRQ10 - Not Implemented Yet
                ;IRQ11
               RTL
SERVICE_NEXT_IRQ11
				setas
                LDA >INT_PENDING_REG1
                AND #FNX1_INT03_COM2
                CMP #FNX1_INT03_COM2
                BNE SERVICE_NEXT_IRQ12
                STA >INT_PENDING_REG1
                ; Serial Port Com2 Interrupt
                JSR COM2_INTERRUPT
                ;BRA EXIT_IRQ_HANDLE
                ;IRQ12
                setas
SERVICE_NEXT_IRQ12
				setas
                LDA >INT_PENDING_REG1
                AND #FNX1_INT04_COM1
                CMP #FNX1_INT04_COM1
                BNE SERVICE_NEXT_IRQ13
                STA >INT_PENDING_REG1
                ; Serial Port Com1 Interrupt
                JSR COM1_INTERRUPT
                ;BRA EXIT_IRQ_HANDLE
                ;IRQ13
                setas
SERVICE_NEXT_IRQ13
				setas
                LDA >INT_PENDING_REG1
                AND #FNX1_INT05_MPU401
                CMP #FNX1_INT05_MPU401
                BNE SERVICE_NEXT_IRQ14
                STA >INT_PENDING_REG1
                ; Serial Port Com1 Interrupt
                JSR MPU401_INTERRUPT
                ;BRA EXIT_IRQ_HANDLE
                ;IRQ14
                setas
SERVICE_NEXT_IRQ14
                LDA >INT_PENDING_REG1
                AND #FNX1_INT06_LPT
                CMP #FNX1_INT06_LPT
                BNE SERVICE_PENDING_REG2
                STA >INT_PENDING_REG1
                ; Serial Port Com1 Interrupt
                JSR LPT1_INTERRUPT
;SERVICE_NEXT_IRQ15
;                LDA >INT_PENDING_REG1
;                AND #FNX1_INT07_SDCARD
;                CMP #FNX1_INT07_SDCARD
;                BNE SERVICE_NEXT_IRQ15_2
;                STA >INT_PENDING_REG1
;
;				JSR SDCARD_INTERRUPT


SERVICE_PENDING_REG2


;SERVICE_NEXT_IRQ15_2
;                LDA >INT_PENDING_REG2
;                AND #FNX2_INT07_SDCARD
;                CMP #FNX2_INT07_SDCARD
;                BNE EXIT_IRQ_HANDLE
;                STA >INT_PENDING_REG2
;				 JSR SDCARD_INS_INTERRUPT



EXIT_IRQ_HANDLE
                ; Exit Interrupt Handler

				setas
				;LDA >INT_POL_REG0							
				;LDA #' '
				;STA	>CS_TEXT_MEM_PTR_3
				;;LDA >INT_POL_REG1	
				;LDA #' '
				;STA	>CS_TEXT_MEM_PTR_4
				;;LDA >INT_POL_REG2
				;LDA #' '
				;STA	>CS_TEXT_MEM_PTR_5

				;LDA #$00
				;STA >INT_PENDING_REG0

                setaxl
                RTL
;////////////////////////////////////////////////////////
;
;
;///////////////////////////////////////////////////////
KEYBOARD_INTERRUPT
                ldx #$0000
                setxs
                setas
                ; Clear the Pending Flag
                LDA >INT_PENDING_REG1
                AND #FNX1_INT00_KBD
                STA >INT_PENDING_REG1


IRQ_HANDLER_FETCH
                LDA KBD_INPT_BUF        ; Get Scan Code from KeyBoard
                STA KEYBOARD_SC_TMP     ; Save Code Immediately
				STA >FXOS_KEY_BYTE_0
                ; Check for Shift Press or Unpressed
                CMP #$2A                ; Left Shift Pressed
                BNE NOT_KB_SET_SHIFT
                BRL KB_SET_SHIFT
NOT_KB_SET_SHIFT
                CMP #$AA                ; Left Shift Unpressed
                BNE NOT_KB_CLR_SHIFT
                BRL KB_CLR_SHIFT
NOT_KB_CLR_SHIFT
                ; Check for CTRL Press or Unpressed
                CMP #$1D                ; Left CTRL pressed
                BNE NOT_KB_SET_CTRL
                BRL KB_SET_CTRL
NOT_KB_SET_CTRL
                CMP #$9D                ; Left CTRL Unpressed
                BNE NOT_KB_CLR_CTRL
                BRL KB_CLR_CTRL

NOT_KB_CLR_CTRL
                CMP #$38                ; Left ALT Pressed
                BNE NOT_KB_SET_ALT
                BRL KB_SET_ALT
NOT_KB_SET_ALT
                CMP #$B8                ; Left ALT Unpressed
                BNE KB_UNPRESSED
                BRL KB_CLR_ALT


KB_UNPRESSED    AND #$80                ; See if the Scan Code is press or Depressed
                CMP #$80                ; Depress Status - We will not do anything at this point
                BNE KB_NORM_SC
				ADC FXOS_KEY_BYTE_1
                BRL KB_CHECK_B_DONE

KB_NORM_SC      LDA KEYBOARD_SC_TMP       ;
                TAX
                LDA KEYBOARD_SC_FLG     ; Check to See if the SHIFT Key is being Pushed
                AND #$10
                CMP #$10
                BEQ SHIFT_KEY_ON

                LDA KEYBOARD_SC_FLG     ; Check to See if the CTRL Key is being Pushed
                AND #$20
                CMP #$20
                BEQ CTRL_KEY_ON

                LDA KEYBOARD_SC_FLG     ; Check to See if the ALT Key is being Pushed
                AND #$40
                CMP #$40
                BEQ ALT_KEY_ON
                ; Pick and Choose the Right Bank of Character depending if the Shift/Ctrl/Alt or none are chosen
                LDA >ScanCode_Press_Set1, x
                BRL KB_WR_2_SCREEN
SHIFT_KEY_ON    LDA >ScanCode_Shift_Set1, x
				;ADC FXOS_KEY_BYTE_2
                BRL KB_WR_2_SCREEN
CTRL_KEY_ON     LDA >ScanCode_Ctrl_Set1, x
				;ADC FXOS_KEY_BYTE_2
                BRL KB_WR_2_SCREEN
ALT_KEY_ON      LDA >ScanCode_Alt_Set1, x
				;ADC FXOS_KEY_BYTE_2
                ; Write Character to Screen (Later in the buffer)
KB_WR_2_SCREEN
                PHA
                setxl				
				;JSL SAVECHAR2CMDLINE				
				setas				
                PLA	
				STA >FXOS_KEY_BYTE_2				
                ;JSL PUTC
                JMP KB_CHECK_B_DONE

KB_SET_SHIFT    LDA KEYBOARD_SC_FLG
                ORA #$10
                STA KEYBOARD_SC_FLG
                JMP KB_CHECK_B_DONE

KB_CLR_SHIFT    LDA KEYBOARD_SC_FLG
                AND #$EF
                STA KEYBOARD_SC_FLG
                JMP KB_CHECK_B_DONE

KB_SET_CTRL    LDA KEYBOARD_SC_FLG
                ORA #$20
                STA KEYBOARD_SC_FLG
                JMP KB_CHECK_B_DONE

KB_CLR_CTRL    LDA KEYBOARD_SC_FLG
                AND #$DF
                STA KEYBOARD_SC_FLG
                JMP KB_CHECK_B_DONE

KB_SET_ALT      LDA KEYBOARD_SC_FLG
                ORA #$40
                STA KEYBOARD_SC_FLG
                JMP KB_CHECK_B_DONE

KB_CLR_ALT     LDA KEYBOARD_SC_FLG
                AND #$BF
                STA KEYBOARD_SC_FLG

KB_CHECK_B_DONE setas
                LDA STATUS_PORT
                AND #OUT_BUF_FULL ; Test bit $01 (if 1, Full)
                CMP #OUT_BUF_FULL ; if Still Byte in the Buffer, fetch it out
                BNE KB_DONE
                JMP IRQ_HANDLER_FETCH

KB_DONE
                setaxl
				RTS
				
				
;
; ///////////////////////////////////////////////////////////////////
; ///
; /// Start of Frame Interrupt
; /// 60Hz, 16ms Cyclical Interrupt
; ///
; ///////////////////////////////////////////////////////////////////
SOL_INTERRUPT
                setas
                LDA >INT_PENDING_REG0
                AND #FNX0_INT01_SOL
                STA >INT_PENDING_REG0
				
				setas
				
				;PHX
				;PHA
				;LDA #'1'
				;JSL IPUTC
				;PLA
				;PLX
				
                RTS
				
;
; ///////////////////////////////////////////////////////////////////
; ///
; /// Start of Frame Interrupt
; /// 60Hz, 16ms Cyclical Interrupt
; ///
; ///////////////////////////////////////////////////////////////////
SOF_INTERRUPT
                setas
                LDA >INT_PENDING_REG0
                AND #FNX0_INT00_SOF
                STA >INT_PENDING_REG0
				
				setas

				;PHX
				;PHA
				;LDA #'S'
				;JSL IPUTC
				;PLA
				;PLX

				PHD		
				;JSL >FXSCHEDULER
				PLD
				
				;PHX
				;PHA
				;LDA #'E'
				;JSL IPUTC
				;PLA
				;PLX

				
                RTS
;
; ///////////////////////////////////////////////////////////////////
; ///
; /// Mouse Interrupt
; /// Desc: Basically Assigning the 3Bytes Packet to Vickys Registers
; ///       Vicky does the rest
; ///////////////////////////////////////////////////////////////////
MOUSE_INTERRUPT setas
                setas

				LDA >FXOS_MOUSE_CTL
				CMP #$FF
				BEQ FXOS_SKIP_UPDATE_2

				
                LDA >INT_PENDING_REG0
                AND #FNX0_INT07_MOUSE
                STA >INT_PENDING_REG0
                LDA KBD_INPT_BUF
				
                LDX #$0000
                setxs
                LDX MOUSE_PTR
				
				STA >FXOS_MOUSE_BYTE_0, X
				STA >MOUSE_PTR_BYTE0, X
				
				;LDA >FXOS_MOUSE_CTL
				;CMP #$FF
				;BEQ FXOS_SKIP_UPDATE

                

FXOS_SKIP_UPDATE_1

                INX
                CPX #$03
                BNE EXIT_FOR_NEXT_VALUE
                ; Create Absolute Count from Relative Input

				;LDA >FXOS_MOUSE_CTL
				;CMP #$FF
				;BEQ EXIT_FOR_NEXT_VALUE

				
                LDA >MOUSE_PTR_X_POS_L
                ;STA MOUSE_POS_X_LO
				STA >FXOS_MOUSE_BYTE_X_L
                
				LDA >MOUSE_PTR_X_POS_H				
                ;STA MOUSE_POS_X_HI
				STA >FXOS_MOUSE_BYTE_X_H

                LDA >MOUSE_PTR_Y_POS_L
                ;STA MOUSE_POS_Y_LO
				STA >FXOS_MOUSE_BYTE_Y_L
                
				LDA >MOUSE_PTR_Y_POS_H
                ;STA MOUSE_POS_Y_HI
				STA >FXOS_MOUSE_BYTE_Y_H



                setas
                LDX #$00
EXIT_FOR_NEXT_VALUE
                STX MOUSE_PTR

FXOS_SKIP_UPDATE_2
                setxl
                RTS




; ///////////////////////////////////////////////////////////////////
; ///
; /// Timer 0
; /// Desc: Interrupt for Real Time Clock
; ///
; ///////////////////////////////////////////////////////////////////
TIMER0_INTERRUPT    setas
                LDA >INT_PENDING_REG0
                AND #FNX0_INT02_TMR0
                STA >INT_PENDING_REG0
;; PUT YOUR CODE HERE
				setas
				;PHX
				;PHA
				;LDA #'2'
				;JSL IPUTC
				;PLX
				;PLA

                RTS
; ///////////////////////////////////////////////////////////////////
; ///
; /// Timer 1
; /// Desc: Interrupt for Real Time Clock
; ///
; ///////////////////////////////////////////////////////////////////
TIMER1_INTERRUPT    setas
                LDA >INT_PENDING_REG0
                AND #FNX0_INT03_TMR1
                STA >INT_PENDING_REG0
;; PUT YOUR CODE HERE
				setas
				;PHX
				;PHA
				;LDA #'3'
				;JSL IPUTC
				;PLX
				;PLA

                RTS
				
; ///////////////////////////////////////////////////////////////////
; ///
; /// Timer 0
; /// Desc: Interrupt for Real Time Clock
; ///
; ///////////////////////////////////////////////////////////////////
TIMER2_INTERRUPT    setas
                LDA >INT_PENDING_REG0
                AND #FNX0_INT04_TMR2
                STA >INT_PENDING_REG0
;; PUT YOUR CODE HERE
				setas
				;PHX
				;PHA
				;LDA #'4'
				;JSL IPUTC
				;PLX
				;PLA

                RTS				
; ///////////////////////////////////////////////////////////////////
; ///
; /// RTC
; /// Desc: Interrupt for Real Time Clock
; ///
; ///////////////////////////////////////////////////////////////////
RTC_INTERRUPT   setas
                LDA >INT_PENDING_REG0
                AND #FNX0_INT05_RTC
                STA >INT_PENDING_REG0
;; PUT YOUR CODE HERE

				;PHX
				;PHA
				;LDA #'5'
				;JSL IPUTC
				;PLX
				;PLA


                RTS
;
;
; ///////////////////////////////////////////////////////////////////
; ///
; /// Floppy Controller
; /// Desc: Interrupt for Data Rx/Tx or Process Commencement or Termination
; ///
; ///////////////////////////////////////////////////////////////////
FDC_INTERRUPT   setas
                LDA >INT_PENDING_REG0
                AND #FNX0_INT06_FDC
                STA >INT_PENDING_REG0
;; PUT YOUR CODE HERE
				;PHX
				;PHA
				;LDA #'6'
				;JSL IPUTC
				;PLX
				;PLA


                RTS
;
;
; ///////////////////////////////////////////////////////////////////
; ///
; /// Serial Port COM2
; /// Desc: Interrupt for Data Rx/Tx or Process Commencement or Termination
; ///
; ///////////////////////////////////////////////////////////////////
COM2_INTERRUPT  setas
                LDA >INT_PENDING_REG1
                AND #FNX1_INT03_COM2
                STA >INT_PENDING_REG1
;; PUT YOUR CODE HERE
				;PHX
				;PHA
				;LDA #'7'
				;JSL IPUTC
				;PLX
				;PLA

                RTS
;
; ///////////////////////////////////////////////////////////////////
; ///
; /// Serial Port COM1
; /// Desc: Interrupt for Data Rx/Tx or Process Commencement or Termination
; ///
; ///////////////////////////////////////////////////////////////////
COM1_INTERRUPT  setas
                LDA >INT_PENDING_REG1
                AND #FNX1_INT04_COM1
                STA >INT_PENDING_REG1
;; PUT YOUR CODE HERE
				;PHA
				;LDA #'8'
				;JSL IPUTC
				;PLX
				;PLA

                RTS
;
; ///////////////////////////////////////////////////////////////////
; ///
; /// MPU-401 (MIDI)
; /// Desc: Interrupt for Data Rx/Tx
; ///
; ///////////////////////////////////////////////////////////////////
MPU401_INTERRUPT  setas
                LDA >INT_PENDING_REG1
                AND #FNX1_INT05_MPU401
                STA >INT_PENDING_REG1
;; PUT YOUR CODE HERE
				;PHX
				;PHA
				;LDA #'9'
				;JSL IPUTC
				;PLX
				;PLA

                RTS
;
; ///////////////////////////////////////////////////////////////////
; ///
; /// Parallel Port LPT1
; /// Desc: Interrupt for Data Rx/Tx or Process Commencement or Termination
; ///
; ///////////////////////////////////////////////////////////////////
LPT1_INTERRUPT  setas
                LDA >INT_PENDING_REG1
                AND #FNX1_INT06_LPT
                STA >INT_PENDING_REG1
;; PUT YOUR CODE HERE
                RTS

; ///////////////////////////////////////////////////////////////////
; ///
; /// Parallel Port LPT1
; /// Desc: Interrupt for Data Rx/Tx or Process Commencement or Termination
; ///
; ///////////////////////////////////////////////////////////////////
SDCARD_INTERRUPT  setas
                LDA >INT_PENDING_REG1
                AND #FNX1_INT07_SDCARD
                STA >INT_PENDING_REG1

				;PHX
				;PHA
				;LDA #'S'
				;JSL IPUTC
				;PLX
				;PLA


                RTS

SDCARD_INS_INTERRUPT  setas
                LDA >INT_PENDING_REG2
                AND #FNX1_INT07_SDCARD
                STA >INT_PENDING_REG2

				;PHX
				;PHA
				;LDA #'S'
				;JSL IPUTC
				;PLX
				;PLA


                RTS

ScanCode_Press_Set1   BYTE $00, $1B, $31, $32, $33, $34, $35, $36, $37, $38, $39, $30, $2D, $3D, $08, $09    ; $00
                      BYTE $71, $77, $65, $72, $74, $79, $75, $69, $6F, $70, $5B, $5D, $0D, $00, $61, $73    ; $10
                      BYTE $64, $66, $67, $68, $6A, $6B, $6C, $3B, $27, $60, $00, $5C, $7A, $78, $63, $76    ; $20
                      BYTE $62, $6E, $6D, $2C, $2E, $2F, $00, $2A, $00, $20, $00, $00, $00, $00, $00, $00    ; $30
                      BYTE $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00    ; $40
                      BYTE $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00    ; $50
                      BYTE $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00    ; $60
                      BYTE $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00    ; $70

ScanCode_Shift_Set1   BYTE $00, $00, $21, $40, $23, $24, $25, $5E, $26, $2A, $28, $29, $5F, $2B, $08, $09    ; $00
                      BYTE $51, $57, $45, $52, $54, $59, $55, $49, $4F, $50, $7B, $7D, $0D, $00, $41, $53    ; $10
                      BYTE $44, $46, $47, $48, $4A, $4B, $4C, $3A, $22, $7E, $00, $5C, $5A, $58, $43, $56    ; $20
                      BYTE $42, $4E, $4D, $3C, $3E, $3F, $00, $2A, $00, $20, $00, $00, $00, $00, $00, $00    ; $30
                      BYTE $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00    ; $40
                      BYTE $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00    ; $50
                      BYTE $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00    ; $60
                      BYTE $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00    ; $70

ScanCode_Ctrl_Set1    BYTE $00, $1B, $31, $32, $33, $34, $35, $36, $37, $38, $39, $30, $2D, $3D, $08, $09    ; $00
                      BYTE $71, $77, $65, $72, $74, $79, $75, $69, $6F, $70, $5B, $5D, $0D, $00, $61, $73    ; $10
                      BYTE $64, $66, $67, $68, $6A, $6B, $6C, $3B, $27, $60, $00, $5C, $7A, $78, $63, $76    ; $20
                      BYTE $62, $6E, $6D, $2C, $2E, $2F, $00, $2A, $00, $20, $00, $00, $00, $00, $00, $00    ; $30
                      BYTE $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00    ; $40
                      BYTE $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00    ; $50
                      BYTE $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00    ; $60
                      BYTE $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00    ; $70

ScanCode_Alt_Set1     BYTE $00, $1B, $31, $32, $33, $34, $35, $36, $37, $38, $39, $30, $2D, $3D, $08, $09    ; $00
                      BYTE $71, $77, $65, $72, $74, $79, $75, $69, $6F, $70, $5B, $5D, $0D, $00, $61, $73    ; $10
                      BYTE $64, $66, $67, $68, $6A, $6B, $6C, $3B, $27, $60, $00, $5C, $7A, $78, $63, $76    ; $20
                      BYTE $62, $6E, $6D, $2C, $2E, $2F, $00, $2A, $00, $20, $00, $00, $00, $00, $00, $00    ; $30
                      BYTE $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00    ; $40
                      BYTE $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00    ; $50
                      BYTE $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00    ; $60
                      BYTE $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00    ; $70

ScanCode_NumLock_Set1 BYTE $00, $1B, $31, $32, $33, $34, $35, $36, $37, $38, $39, $30, $2D, $3D, $08, $09    ; $00
                      BYTE $71, $77, $65, $72, $74, $79, $75, $69, $6F, $70, $5B, $5D, $0D, $00, $61, $73    ; $10
                      BYTE $64, $66, $67, $68, $6A, $6B, $6C, $3B, $27, $60, $00, $5C, $7A, $78, $63, $76    ; $20
                      BYTE $62, $6E, $6D, $2C, $2E, $2F, $00, $2A, $00, $20, $00, $00, $00, $00, $00, $00    ; $30
                      BYTE $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00    ; $40
                      BYTE $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00    ; $50
                      BYTE $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00    ; $60
                      BYTE $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00    ; $70


	endmod

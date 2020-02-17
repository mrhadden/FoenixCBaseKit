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

;;;
;;; Low-level serial I/O routines
;;;

;;;
;;; UART routines
;;;
;;; UART_SELECT : Call with A = COM# to make that UART the active port for subsequent calls
;;; UART_INIT : Initialize the selected UART with some basic, standard settings
;;; UART_SETBPS : Set the transfer rate for the selected UART. A = the desired rate (e.g. UART_9600)
;;; UART_SETLCR : Set parity, stop bit, and data length parameters. A = the flags to set (see LCR_ constants)
;;; UART_HASBYT : Check to see if the receive FIFO has any data. Carry is set, if so.
;;; UART_GETC : Get a byte from the selected UART into A. Block if nothing ready.
;;; UART_PUTC : Send a byte in A to the selected UART. Block until the transmit FIFO has room.
;;; UART_PUTS : Send a nul terminated string to the UART. X = pointer to the string, B = data bank of the string.
;;;

; UARTs
UART1_BASE EQU $AF13F8        ; Base address for UART 1 (COM1)
UART2_BASE EQU $AF12F8        ; Base address for UART 2 (COM2)

; Register Offsets
UART_TRHB EQU $00             ; Transmit/Receive Hold Buffer
UART_DLL EQU UART_TRHB        ; Divisor Latch Low Byte
UART_DLH EQU $01              ; Divisor Latch High Byte
UART_IER EQU  UART_DLH         ; Interupt Enable Register
UART_FCR EQU $02              ; FIFO Control Register
UART_IIR EQU UART_FCR         ; Interupt Indentification Register
UART_LCR EQU $03              ; Line Control Register
UART_MCR EQU $04              ; Modem Control REgister
UART_LSR EQU $05              ; Line Status Register
UART_MSR EQU $06              ; Modem Status Register
UART_SR EQU $07               ; Scratch Register

; Interupt Enable Flags
UINT_LOW_POWER EQU $20        ; Enable Low Power Mode (16750)
UINT_SLEEP_MODE EQU $10       ; Enable Sleep Mode (16750)
UINT_MODEM_STATUS EQU $08     ; Enable Modem Status Interrupt
UINT_LINE_STATUS EQU $04      ; Enable Receiver Line Status Interupt
UINT_THR_EMPTY EQU $02        ; Enable Transmit Holding Register Empty interrupt
UINT_DATA_AVAIL EQU $01       ; Enable Recieve Data Available interupt   

; Interrupt Identification Register Codes
IIR_FIFO_ENABLED EQU $80      ; FIFO is enabled
IIR_FIFO_NONFUNC EQU $40      ; FIFO is not functioning
IIR_FIFO_64BYTE EQU $20       ; 64 byte FIFO enabled (16750)
IIR_MODEM_STATUS EQU $00      ; Modem Status Interrupt
IIR_THR_EMPTY EQU $02         ; Transmit Holding Register Empty Interrupt
IIR_DATA_AVAIL EQU $04        ; Data Available Interrupt
IIR_LINE_STATUS EQU $06       ; Line Status Interrupt
IIR_TIMEOUT EQU $0C           ; Time-out Interrupt (16550 and later)
IIR_INTERRUPT_PENDING EQU $01 ; Interrupt Pending Flag

; Line Control Register Codes
LCR_DLB EQU $80               ; Divisor Latch Access Bit
LCR_SBE EQU $60               ; Set Break Enable

LCR_PARITY_NONE EQU $00       ; Parity: None
LCR_PARITY_ODD EQU $08        ; Parity: Odd
LCR_PARITY_EVEN EQU $18       ; Parity: Even
LCR_PARITY_MARK EQU $28       ; Parity: Mark
LCR_PARITY_SPACE EQU $38      ; Parity: Space

LCR_STOPBIT_1 EQU $00         ; One Stop Bit
LCR_STOPBIT_2 EQU $04         ; 1.5 or 2 Stop Bits

LCR_DATABITS_5 EQU $00        ; Data Bits: 5
LCR_DATABITS_6 EQU $01        ; Data Bits: 6
LCR_DATABITS_7 EQU $02        ; Data Bits: 7
LCR_DATABITS_8 EQU $03        ; Data Bits: 8

LSR_ERR_RECIEVE EQU $80       ; Error in Received FIFO
LSR_XMIT_DONE EQU $40         ; All data has been transmitted
LSR_XMIT_EMPTY EQU $20        ; Empty transmit holding register
LSR_BREAK_INT EQU $10         ; Break interrupt
LSR_ERR_FRAME EQU $08         ; Framing error
LSR_ERR_PARITY EQU $04        ; Parity error
LSR_ERR_OVERRUN EQU $02       ; Overrun error
LSR_DATA_AVAIL EQU $01        ; Data is ready in the receive buffer

UART_300 	 EQU 384              ; Code for 300 bps
UART_1200 	 EQU 96              ; Code for 1200 bps
UART_2400 	 EQU 48              ; Code for 2400 bps
UART_4800 	 EQU 24              ; Code for 4800 bps
UART_9600	 EQU 12              ; Code for 9600 bps
UART_19200 	 EQU 6              ; Code for 19200 bps
UART_38400	 EQU 3              ; Code for 28400 bps
UART_57600	 EQU 2              ; Code for 57600 bps
UART_115200  EQU 1             ; Code for 115200 bps


;
; Select a UART to use. Set the CURRUART pointer to that ports base address.
;
; Inputs:
;   A = the UART number (1 or 2)
;
; Returns:
;   CURRUART = the base address of the selected UART
;

	xdef ~~k_uart_select	
~~k_uart_select
UART_SELECT 
            PHP
    
            setal
            CMP #2
            BEQ is_COM2

            setal
            LDA #<UART1_BASE
            BRA setaddr

is_COM2     setal
            LDA #<UART2_BASE
setaddr     STA >CURRUART
            setas
            LDA #^UART1_BASE
            STA >CURRUART+2

            PLP
            RTL
            

;
; Set the transfer rate for the UART
;
; Inputs:
;   A = the transfer rate code
;
	xdef ~~k_uart_setbaud	
~~k_uart_setbaud
UART_SETBPS 
            PHP
            PHD

            ;setdp CURRUART

            setaxl
            PHA

            setas
            LDY #UART_LCR       ; Enable divisor latch
            LDA [CURRUART],Y  
            ORA #LCR_DLB
            STA [CURRUART],Y

            setal
            PLA
            LDY #UART_DLL
            STA [CURRUART],Y    ; Save the divisor to the UART

            setas
            LDY #UART_LCR       ; Disable divisor latch
            LDA [CURRUART],Y  
            EOR #LCR_DLB
            STA [CURRUART],Y 

            PLD
            PLP
            RTL          
            
	xdef ~~k_uart_setbaud_com1	
~~k_uart_setbaud_com1
UART_SETBPS_COM1
            PHP
            PHD

            ;setdp CURRUART

            setaxl
            PHA

            setas
            LDY #UART_LCR       ; Enable divisor latch
            LDA >UART1_BASE+UART_LCR  
            ORA #LCR_DLB
            STA >UART1_BASE+UART_LCR

            setal
            PLA
            LDY #UART_DLL
			
			LDA #1
            STA >UART1_BASE+UART_DLL    ; Save the divisor to the UART

            setas
            LDY #UART_LCR       ; Disable divisor latch
            LDA >UART1_BASE+UART_LCR  
            EOR #LCR_DLB
            STA >UART1_BASE+UART_LCR 

            PLD
            PLP
            RTL  

	xdef ~~k_uart_setbaud_com2	
~~k_uart_setbaud_com2
UART_SETBPS_COM2
            PHP
            PHD

            ;setdp CURRUART

            setaxl
            PHA

            setas
            LDY #UART_LCR       ; Enable divisor latch
            LDA >UART2_BASE+UART_LCR  
            ORA #LCR_DLB
            STA >UART2_BASE+UART_LCR

            setal
            PLA
            LDY #UART_DLL
			
			LDA #1
            STA >UART2_BASE+UART_DLL    ; Save the divisor to the UART

            setas
            LDY #UART_LCR       ; Disable divisor latch
            LDA >UART2_BASE+UART_LCR  
            EOR #LCR_DLB			
            STA >UART2_BASE+UART_LCR 

            PLD
            PLP
            RTL  			

;
; Set the line control register
;
; Input:
;   X = the port number to set (1 or 2)
;   A = the line control flags (parity, stop bit, data length)
	xdef ~~k_uart_setctl	
~~k_uart_setctl
UART_SETLCR 
            PHP
            PHD

            ;setdp CURRUART

            setas
            setxl
            AND #$7F            ; We don't want to alter divisor latch
            LDY #UART_LCR
            STA [CURRUART],Y

            PLD
            PLP
            RTL

;
; Set the line control register
;
; Input:
;   X = the port number to set (1 or 2)
;   A = the line control flags (parity, stop bit, data length)
	xdef ~~k_uart_setctl_com1	
~~k_uart_setctl_com1
UART_SETLCR_COM1 
            PHP
            PHD

            ;setdp CURRUART

            setas
            setxl
            ;AND #$7F            ; We don't want to alter divisor latch
            ;LDY #UART_LCR
			LDA #%00000011
            STA >UART1_BASE+UART_LCR 

            PLD
            PLP
            RTL

	xdef ~~k_uart_setctl_com2	
~~k_uart_setctl_com2
UART_SETLCR_COM2 
            PHP
            PHD

            ;setdp CURRUART

            setas
            setxl
            ;AND #$7F            ; We don't want to alter divisor latch
            ;LDY #UART_LCR
			LDA #%00000011
            STA >UART2_BASE+UART_LCR 

            PLD
            PLP
            RTL			
			
            

;
; Initialize the serial port to a default state:
;   115200, 1 stop bit, no parity, 8 data bits
;
	xdef ~~k_uart_init	
~~k_uart_init
UART_INIT   
            PHP
            PHD
            setaxl
		
            ;setdp CURRUART

            ; Set speed to 115200 bps
            LDA #UART_9600
            JSL UART_SETBPS

            ; Set: no parity, 1 stop bit, 8 data bits
            setas
            LDA #LCR_PARITY_NONE | LCR_STOPBIT_1 | LCR_DATABITS_8
            JSL UART_SETLCR

            ; Enable FIFOs, set for 56 byte tigger level
            ;LDA #%00000000          ; %11100001
			LDA #%11100001
            LDY #UART_FCR
            STA [CURRUART],Y

            PLD
            PLP
            RTL
            
;
; Initialize the serial port to a default state:
;   115200, 1 stop bit, no parity, 8 data bits
;
	xdef ~~k_uart_init_com1	
~~k_uart_init_com1
UART_INIT_COM1   
            PHP
            PHD
            setaxl
		
            ;setdp CURRUART

            ; Set speed to 115200 bps
            LDA #1
            JSL UART_SETBPS_COM1

            ; Set: no parity, 1 stop bit, 8 data bits
            setas
            LDA #LCR_PARITY_NONE | LCR_STOPBIT_1 | LCR_DATABITS_8
            JSL UART_SETLCR_COM1

            ; Enable FIFOs, set for 56 byte tigger level
            ;LDA #%00000000          ; %11100001
			LDA #%00000001
            LDY #UART_FCR
            STA >UART1_BASE+UART_FCR
            ; Enable FIFOs, set for 56 byte tigger level
            ;LDA #%00000000          ; %11100001
			;LDA #%11100001
			;LDA #%00000000
            ;LDY #UART_FCR
            ;STA >UART1_BASE+UART_FCR

            PLD
            PLP
            RTL

;
; Initialize the serial port to a default state:
;   115200, 1 stop bit, no parity, 8 data bits
;
	xdef ~~k_uart_init_com2	
~~k_uart_init_com2
UART_INIT_COM2   
            PHP
            PHD
            setaxl
		
            ;setdp CURRUART

            ; Set speed to 115200 bps
            LDA #1
            JSL UART_SETBPS_COM2

            ; Set: no parity, 1 stop bit, 8 data bits
            setas
            LDA #LCR_PARITY_NONE | LCR_STOPBIT_1 | LCR_DATABITS_8
            JSL UART_SETLCR_COM2

            ; Enable FIFOs, set for 56 byte tigger level
            ;LDA #%00000000          ; %11100001
			LDA #%00000001
            LDY #UART_FCR
            STA >UART2_BASE+UART_FCR

			;LDA #%00000000
            ;LDY #UART_FCR
            ;STA >UART2_BASE+UART_FCR

            PLD
            PLP
            RTL

;
; Check to see if a character is waiting on the receive FIFO.
;
; Outputs:
;   C is set if a character is available
;
	xdef ~~k_uart_dataready	
~~k_uart_dataready
UART_HASBYT 
            PHP
            PHD

            setaxl
            ;setdp CURRUART

            setas                  
            LDY #UART_LSR           ; Check the receive FIFO
			LDA [CURRUART],Y
            AND #LSR_DATA_AVAIL
            BNE ret_true            ; If flag is set, return true

ret_false   PLD                     ; Return false
            PLP
            CLC
            RTL

ret_true    PLD                     ; Return true
            PLP
            SEC
            RTL
            

;
; Get a character from the selected UARTs receive FIFO.
; Block if nothing is ready.
;
; Outputs:
;   A = the character read
;
	xdef ~~k_uart_getbyte	
~~k_uart_getbyte

UART_GETC   
            PHP
            PHD

            setaxl
            ;setdp CURRUART

            setas                  
            LDY #UART_LSR           ; Check the receive FIFO
wait_getc   LDA [CURRUART],Y
            AND #LSR_DATA_AVAIL
            BEQ wait_getc           ; If the flag is clear, wait

            LDY #UART_TRHB          ; Get the byte from the receive FIFO
            LDA [CURRUART],Y

            PLD
            PLP
            RTL
            

;
; Send a byte to the UART
;
; Inputs:
;   A = the character to print
;   X = the port to use
;
	xdef ~~k_uart_putbyte	
~~k_uart_putbyte

UART_PUTC   
            PHP
            PHD

            setaxl
            ;setdp CURRUART

            setas
            PHA                     ; Wait for the transmit FIFO to free up
            LDY #UART_LSR
wait_putc   LDA [CURRUART],Y
            AND #LSR_XMIT_EMPTY
            BEQ wait_putc
            PLA

            LDY #UART_TRHB
            STA [CURRUART],Y

            PLD
            PLP
            RTL
            

;
; Send a nul-terminated string to the selected UART
;
; Inputs:
;   B = the data bank for the string
;   X = the pointer to the string
;
	xdef ~~k_uart_putstring	
~~k_uart_putstring

UART_PUTS   
            PHP

            setas
put_loop    LDA #0,B,X
            BEQ done
            JSL UART_PUTC
            INX
            BRA put_loop

done        PLP
            RTL
            

;
; Enable interrupt requests for the UARTs
;
	xdef ~~k_uart_enableirq	
~~k_uart_enableirq
UART_ENIRQ  
            PHP
            PHD

            setaxl            
            ;setdp CURRUART

            LDA #2
            JSL UART_SELECT
            JSL UART_INIT           ; Initialize COM1

            setas

            ;LDA #$08
			;LDY #UART_MCR
            ;STA [CURRUART],Y


            ;LDA #UINT_DATA_AVAIL    ; Enable Data Available interrupts
            LDA #$0F
			LDY #UART_IER
            STA [CURRUART],Y

            LDA >INT_MASK_REG1     ; Enable COM1 interrupts
            AND #$EF ;#~FNX1_INT04_COM1
            STA >INT_MASK_REG1

            LDA >INT_MASK_REG1     ; Enable COM1 interrupts
            AND #$F7 ;#~FNX1_INT03_COM2
            STA >INT_MASK_REG1

            ;LDA #'^'
            ;JSL IPUTC
			


            setaxl
            PLD
            PLP
            RTL
            

	xdef ~~k_uart_enableirq_ports	
~~k_uart_enableirq_ports
UART_ENIRQ_PORTS  
            PHP
            PHD

            setaxl            


            JSL UART_INIT_COM1           ; Initialize COM1
			JSL UART_INIT_COM2           ; Initialize COM2
			
            setas

            LDA #$08
			LDY #UART_MCR
            STA >UART1_BASE+UART_MCR

            setas
            LDY #UART_LCR       ; Enable divisor latch
            LDA >UART1_BASE+UART_LCR  
            AND #%01111111
            STA >UART1_BASE+UART_LCR

            ;LDA #UINT_DATA_AVAIL    ; Enable Data Available interrupts
            LDA #$07
			LDY #UART_IER
            STA >UART1_BASE+UART_IER


            LDA #$08
			LDY #UART_MCR
            STA >UART2_BASE+UART_MCR

            setas
            LDY #UART_LCR       ; Enable divisor latch
            LDA >UART2_BASE+UART_LCR  
            AND #%01111111
            STA >UART2_BASE+UART_LCR


            LDA #$07
			LDY #UART_IER
            STA >UART2_BASE+UART_IER
			


            LDA >INT_MASK_REG1     ; Enable COM1 interrupts
            AND #$EF ;#~FNX1_INT04_COM1
            STA >INT_MASK_REG1

            LDA >INT_MASK_REG1     ; Enable COM1 interrupts
            AND #$F7 ;#~FNX1_INT03_COM2
            STA >INT_MASK_REG1

            ;LDA #'^'
            ;JSL IPUTC
			


            setaxl
            PLD
            PLP
            RTL

;
; Loop and poll the Interrupt Identification register of the UART waiting for an interrupt.
; If the interrupt is for received characters, print all the characters in the receive buffer.
;
	xdef ~~k_uart_poll	
~~k_uart_poll

UART_POLLIR 
            PHP
            PHD

            ;setdp CURRUART
            setas

WAITINT      
            ; LDA >INT_PENDING_REG1  ; Check to see if IRQ4 is pending
            ; AND #FNX1_INT04_COM1
            ; CMP #FNX1_INT04_COM1
            ; BNE WAITINT

            LDY #UART_IIR
            LDA [CURRUART],Y        ; Get the Interrupt Identification Register
            BIT #$01                ; See if an interrupt is pending
            BNE WAITINT             ; No? Keep waiting

            LSR A
            AND #$03                ; Get the interrupt vector code
            
            CMP #$02                ; Is it 2 (Received Data)?
            BNE else1               ; No? Keep checking
            ;JSR UART_ECRC           ; Yes: echo the packet

else1       BRA WAITINT             ; Otherwise: just wait

            PLD
            PLP
            RTL
            
                 ; And return
            

		pw      132
		inclist on
		chip    65816


	module init_sd_card
	xdef ~~k_sd_init
	xdef ~~k_sd_ismounted
	xdef ~~k_sd_dir
	
	INCLUDE 	macros_inc.asm
	INCLUDE 	io_def.asm
	INCLUDE 	ch376s_inc.asm
	INCLUDE 	interrupt_def.asm
	INCLUDE 	math_def.asm

; $00:0320 to $00:06FF - Reserved for CH376S SDCard Controller
SDOS_BLOCK_BEGIN EQU $000320 ;
SDOS_LOAD_ADDY   EQU $000324 ; 4 Bytes (Uses 3 Only)
SDOS_FILE_SIZE   EQU $000328 ;
SDOS_BYTE_NUMBER EQU $00032C ; Number of Byte to Read or Write before changing the Pointer
SDOS_REG_WR32_AD EQU $000330 ; 4 Bytes (Used to read and Write Values in/from CH376S)
SDOS_BYTE_PTR    EQU $000334
SDOS_FILE_NAME   EQU $000380 ; // Max of 128 Chars
SDOS_BLK_BEGIN   EQU $000400 ; 512 Bytes to Store SD Card Incoming or Outcoming Block
SDOS_BLK_END     EQU $0006FF ;
; SD Card (CH376S) Variables
SDCARD_FILE_PTR  EQU $000038 ; 3 Bytes Pointer to Filename to open
SDCARD_BYTE_NUM  EQU $00003C ; 2Bytes
SDCARD_PRSNT_MNT EQU $00003F ; 1 Byte, Indicate that the SDCard is Present and that it is Mounted


MASK_INT07_SDCARD	EQU 	$FF7F

~~k_sd_init:

	;/////////////////////////////////////////////////////////
	;////////////////////////////////////////////////////////
	; ISDOS_INIT
	; Init the SDCARD
	; Inputs:
	;  None
	; Affects:
	
		PHA

		LDA #'W'
		STA $AFA000
	


	;   None
ISDOS_INIT    
		
		;setal
		;setas	
		

		;LDA >INT_PENDING_REG1  ; Read the Pending Register &
		;AND #MASK_INT07_SDCARD   ; Enable
		;STA >INT_PENDING_REG1

		LDA #'X'
		STA $AFA000


		SEP #$20
		LONGA OFF
		
		LDA #$06
		STA >SDCARD_CMD
		JSR DLYCMD_2_DTA
		LDA #$A8
		STA >SDCARD_DATA
		JSR DLYDTA_2_DTA
		JSR DLYDTA_2_DTA
		JSR DLYDTA_2_DTA
		LDA >SDCARD_DATA
		JSR DLYCMD_2_DTA


		LDA #CH_CMD_SET_MODE
		STA >SDCARD_CMD
		JSR DLYCMD_2_DTA
		JSR DLYCMD_2_DTA
		LDA #$03            ; Mode 3 - SDCARD
		STA >SDCARD_DATA     ; Write the MODE and Wait for around ~10us

		LDA #'Z'
		STA $AFA000


		;LDA #'A'
		LDX #$00
		
ISDOS_WAIT_FOR_MODE_SW
		INX
		TXA
		CMP #100
		BEQ SD_EXIT 
		
		;STA $AFA000
			
		JSR DLYDTA_2_DTA ; Wait 0.6us
		LDA >SDCARD_DATA
		;STA $AFA0A0
		CMP #$51   ; CMD_RET_SUCCESS		EQU		051H, CMD_RET_ABORT		EQU		05FH
		BNE ISDOS_WAIT_FOR_MODE_SW

		LDA #'B'
		STA $AFA000
		
		LDA >SDCARD_DATA     ; See the Status Output
		STA $AFA0A2

SD_EXIT
		LDA #'1'
		STA $AFA001


		SETAL
		LONGA ON

		PLA
		RTL
;
; 1.5us Delay inbetween the time the Cmd is Sent and Data is either Read or Writen
; NOP takes 2 Cycles Now
DLYCMD_2_DTA
              NOP
              NOP
              NOP
              NOP
              NOP
; 0.6us Delay inbetween the time the Cmd is Sent and Data is either Read or Writen
DLYDTA_2_DTA
              NOP
              NOP
              NOP
              NOP
              NOP
              RTS;

;////////////////////////////////////////////////////////
; ISDOS_DIR
; Check to see if Card exist, then Mount the SDCArd
; Inputs:
;   Pointer to the ASCII File name by
; Located @ $000030..$000032 - SDCARD_FLNMPTR_L
; Affects:
;   None
; Upon the Call of this Routine Display the Files on the SDCARD
~~k_sd_dir:
ISDOS_DIR
              SETAS
              LONGA OFF
              ;setxl
              LDA #'2'
			  STA $AFA000

              LDA #'A'
			  STA $AFA001
              JSL ISDOS_MOUNT_CARD;     First to See if the Card is Present
;              LDA SDCARD_PRSNT_MNT;
;              BEQ NO_SDCARD_PRESENT     ; No SD Card Present
              ; Transfer the "/*\0" String
              LDX #$0000
ISDOS_DIR_TRF
              LDA sd_card_dir_string,X    ; /
              STA >SDOS_FILE_NAME,X
              INX
              CPX #$0003
              BNE ISDOS_DIR_TRF

              JSR SDOS_FILE_OPEN         ; Now that the file name is set, go open File
              CMP #CH376S_STAT_DSK_RD
              BEQ ISDOS_DIR_CONT0
              BRL ISDOS_MISS_FILE
ISDOS_DIR_CONT0

              LDX #<>sd_card_msg4         ; Print Screen the Message "FILE OPENED"
              JSL IPRINT       ; print the first line
ISDOS_NEXT_ENTRY
              LDA #CH_CMD_RD_DATA0
              STA SDCARD_CMD
              JSR DLYCMD_2_DTA;
              LDA SDCARD_DATA  ;  Load First Data
              LDY #$0000
              LDX #$0000
              TAY              ; GET Size (Save in Case we need it)
;#1 Display File Name @ Empty the buffer, since we don't need info for now.
ISDOS_DIR_GET_CHAR
              JSR DLYDTA_2_DTA ; Wait 0.6us
              LDA SDCARD_DATA  ;
              JSL IPUTC        ; Print the character
              INX
              CPX #$0008
              BNE ISDOS_DIR_CONT1
              JSR ISDOS_DISPLAY_DOT
ISDOS_DIR_CONT1
              CPX #$000B          ; the First 11th Character is the file name
              BNE ISDOS_DIR_GET_CHAR
              LDA #$20
              JSL IPUTC        ; Print the character
              LDA #'('
              JSL IPUTC        ; Print the character
              LDA SDCARD_DATA  ;
              AND #$10
              CMP #$10
              BEQ ISDOS_DIR_ATTR0
              LDA #'F'
              BRA ISDOS_DIR_ATTR1
ISDOS_DIR_ATTR0
              LDA #'D'
ISDOS_DIR_ATTR1
              JSL IPUTC        ; Print the character
              LDA #')'
              JSL IPUTC        ; Print the character
              LDA #$0D         ; Carriage Return
              JSL IPUTC        ; Print the character
ISDOS_DIR_GET_CHAR_FINISH
              JSR DLYDTA_2_DTA ; Wait 0.6us
              LDA SDCARD_DATA  ; After the name Just empty the buffer
;             JSL IPUTC        ; Print the character
              INX
              CPX #$0020
              BNE ISDOS_DIR_GET_CHAR_FINISH
              JSR DLYCMD_2_DTA
              ; Ask Controller to go fetch the next entry in the Directory
              LDA #CH_CMD_FILE_ENUM_GO
              STA SDCARD_CMD
              JSR SDCARD_WAIT_4_INT       ; Go Wait for Interrupt
              CMP #CH376S_STAT_DSK_RD
              BEQ ISDOS_NEXT_ENTRY
              CMP #CH376S_ERR_MISS_FIL
              BNE  ISDOS_MISS_FILE
              LDX #<>sd_card_msg5   ; End of File
              BRL ISDOS_DIR_DONE
ISDOS_MISS_FILE
              LDX #<>sd_card_err0
              BRL ISDOS_DIR_DONE
NO_SDCARD_PRESENT
              LDX #<>sd_no_card_msg
ISDOS_DIR_DONE
              JSL IPRINT       ; print the first line
              ; There should be an Error Code Displayed here...

			  LDA #'2'
			  STA $AFA001

  			  SETAL
			  LONGA ON

			  PLA
			  RTL

ISDOS_DISPLAY_DOT
              LDA #'.'
              JSL IPUTC        ; Print the character
              RTS;


;/////////////////////////////////////////////////////////
;////////////////////////////////////////////////////////
; ISDOS_LOAD
; Load a File to Memory
; Inputs:
;  None
; Affects:
;   None
~~k_sd_load:
ISDOS_LOAD
              JSR SDOS_READ_FILE;
              RTL;

; Upon the Call of this Routine this will Save a file defined by the given name and Location
ISDOS_SAVE    BRK;

; Load a File ".FNX" and execute it
ISDOS_EXEC    BRK;

;/////////////////////////////////////////////////////////
;////////////////////////////////////////////////////////
; ISDOS_MOUNT_CARD
; Check to see if Card exist, then Mount the SDCArd
; Inputs:
;   Pointer to the ASCII File name by
; Located @ $000030..$000032 - SDCARD_FLNMPTR_L
; Affects:
;   None
~~k_sd_ismounted:
ISDOS_MOUNT_CARD
			  LDA #'3'
			  STA $AFA000
			  LDA #'1'
			  STA $AFA001

			  RTL

              SETAS
              LONGA OFF
;              JSR ISDOS_CHK_CD            ; Check to See if a Card is present
;              BCC ISDOS_NO_CARD           ;
              SETXL

			  LDA #'2'
			  STA $AFA001

              LDX #<>sd_card_msg1         ; Print Screen the Message "Card Detected"
              JSL IPRINT       ; print the first line
;              LDA SDCARD_PRSNT_MNT        ; Load Presence Status
;              AND #$05
;              CMP #$05
;              BEQ ISDOS_MOUNTED
              LDY #$0000
              LDA #$01
              STA SDCARD_PRSNT_MNT        ; Bit[0] = Card Present
TRY_MOUNT_AGAIN

			  LDA #'3'
			  STA $AFA001

              LDA #CH_CMD_DISK_MOUNT      ; If Present, go Mount it.
              STA SDCARD_CMD              ;
              JSR SDCARD_WAIT_4_INT       ;
              CMP #CH376S_STAT_SUCCESS    ;
              BEQ ISDOS_MOUNTED
              INY
              CPY #$00F0
              BNE TRY_MOUNT_AGAIN
              JMP SDCARD_ERROR_MOUNT
ISDOS_MOUNTED ; The Card is already mounted

			  LDA #'4'
			  STA $AFA001

              LDX #<>sd_card_msg2         ; Print Screen the Message "Card Detected"
              JSL IPRINT       ; print the first line

              LDA SDCARD_PRSNT_MNT
              AND #$FB;#~SDCARD_PRSNT_MNTED
              ORA #SDCARD_PRSNT_MNTED     ; Set Bit to Indicate that is mounted
              RTL

SDCARD_ERROR_MOUNT

			  LDA #'5'
			  STA $AFA001

              LDX #<>sd_card_msg3         ; Print Screen the Message "Card Detected"
              JSL IPRINT       ; print the first line
              RTL

ISDOS_NO_CARD
			  LDA #'6'
			  STA $AFA001

			  LDA #SDCARD_PRSNT_NO_CARD
              STA SDCARD_PRSNT_MNT
              RTL

;
; ISDOS_FILE_OPEN
; Open the File
; Inputs:
; File Name ought to be here: SDOS_FILE_NAME and be terminated by NULL.
; Affects:
;   A
; Outputs:
; A = Interrupt Status
~~k_sd_file_open
SDOS_FILE_OPEN
              JSR SDOS_SET_FILE_NAME ; Make Sure the Pointer to the File Name is properly
              JSR DLYCMD_2_DTA
              LDA #CH_CMD_FILE_OPEN ;
              STA SDCARD_CMD          ; Go Request to open the File
              JSR SDCARD_WAIT_4_INT   ; A Interrupt is Generated, so go polling it
              RTL

; SDOS_SET_FILE_NAME
; Set the Filename to the Controller CH376D
; Inputs:
; File Name ought to reside here: SDOS_FILE_NAME
; Affects:
;   None
~~k_sd_file_name
SDOS_SET_FILE_NAME
              LDA #CH_CMD_SET_FILENAME
              STA SDCARD_CMD
              JSR DLYCMD_2_DTA
              LDX #$0000
SDOS_SET_FILE_LOOP
              LDA >SDOS_FILE_NAME, X   ; This is where the FileName ought to be.
              STA SDCARD_DATA         ; Store into the Data Register of the CH376s
              JSR DLYDTA_2_DTA
              INX
              CMP #$00              ; Check end of Line
              BNE SDOS_SET_FILE_LOOP
              RTL


;
; SDCARD_WAIT_4_INT
; Blocking - Wait for the CH376S Interrupt
; Inputs:
;
; Outputs:
;   A = Interrupt Status
SDCARD_WAIT_4_INT
              setas             ; This is for security
              SEI                 ; There is no time out on this, so let's
                                  ; make sure it is not going to be interrupted
SDCARD_BUSY_INT
              LDA SDCARD_CMD    ; Read Status of Interrupt and
              AND #$80          ; Bit[7] = !INT if Zero = Busy
              CMP #$80          ;
              BEQ SDCARD_BUSY_INT
              CLI
              ; Fetch the Status
SDCARD_BUSY_DONE
              JSR DLYCMD_2_DTA ;
              JSR DLYCMD_2_DTA ;
              LDA #CH_CMD_GET_STATUS
              STA SDCARD_CMD;
              JSR DLYCMD_2_DTA;   ; 1.5us Delay to get the Value Return
              LDA SDCARD_DATA;
              RTS           ;
;
; ISDOS_CHK_CD
; Return the Value of SD Card Present Status
; Inputs:
;   None
; Affects:
;   Carry - If Card Present -> Carry = 1
ISDOS_CHK_CD  setas
              CLC
              LDA SDCARD_STAT;  BIT[0] = Cd, BIT[1] = WP
              AND #$01
              CMP #$01
              BEQ SDCD_NOT_PRST;
              SEC
SDCD_NOT_PRST RTS
;
; ISDOS_CHK_WP
; Return the Value of WP Card Present Status
; Inputs:
;   None
; Affects:
;   Carry - If Card Write Protect -> Carry = 1
ISDOS_CHK_WP  setas
              CLC
              LDA SDCARD_STAT;  BIT[0] = Cd, BIT[1] = WP
              AND #$02
              BNE SDCD_NOT_WP;
              SEC
SDCD_NOT_WP   RTS

ISDOS_GET_FILE_SIZE
              setas
              LDA #CH_CMD_RD_VAR32
              STA SDCARD_CMD;
              JSR DLYCMD_2_DTA;   ; 3us Delay to get the Value Return
              LDA #CH_VAR_FILE_SIZE
              STA SDCARD_DATA;
              JSR DLYCMD_2_DTA
              LDA SDCARD_DATA         ;LSB First
              STA >SDOS_FILE_SIZE+0
              STA >ADDER32_A_LL;     ; Store in ADDER32 REgister A
              JSR DLYDTA_2_DTA
              LDA SDCARD_DATA
              STA >SDOS_FILE_SIZE+1
              STA >ADDER32_A_LH;     ; Store in ADDER32 REgister A
              JSR DLYDTA_2_DTA
              LDA SDCARD_DATA
              STA >SDOS_FILE_SIZE+2
              STA >ADDER32_A_HL;     ; Store in ADDER32 REgister A
              JSR DLYDTA_2_DTA
              LDA SDCARD_DATA
              STA >SDOS_FILE_SIZE+3   ;MSB Last
              STA >ADDER32_A_HH;     ; Store in ADDER32 REgister A
              JSR DLYDTA_2_DTA
              LDA >ADDER32_R_LL;
              LDA >ADDER32_R_LH;
              LDA >ADDER32_R_HL;
              LDA >ADDER32_R_HH;
              RTS


; ISDOS_READ_FILE
; Go Open and Read a file and store it to prefedined address
; Inputs:
;  Name @ SDOS_FILE_NAME, Pointer to Store the DATA: @ SDCARD_FILE_PTR ($00:00030)
; Affects:
;   A, X probably Y and CC and the whole thing... So don't asume anything...
; Returns:
; Well, you ought to have your file loaded where you asked it.
SDOS_READ_FILE
              setaxl
              JSR SDOS_SETUP_ADDER_B;
              ; First Let's Setup the file Name and Open the File
              ; First Step, Let's find and open the file we want to load.
              setas
              JSR SDOS_FILE_OPEN
              ; If successful, get the file sizeof
              CMP #CH376S_STAT_SUCCESS ; if the file open successfully, let's go on.
              BEQ SDOS_READ_FILE_KEEP_GOING
              BRL SDOS_READ_END
SDOS_READ_FILE_KEEP_GOING
              ; Then go read the file
              LDX #<>sd_card_msg6         ; Print Screen the Message "FILE FOUND, LOADING..."
              JSL IPRINT       ; print the first line
              ;
              JSR ISDOS_GET_FILE_SIZE   ; Get the File Size in 32Bits
              setal
;              JSR SDOS_LOAD_ADDER_A_WITH_SIZE;  Load the Size in the Signed Adder
              JSR SDOS_SETUP_CH376S_BUFFER_SIZE;
              LDA #$0000
              STA >SDCARD_BYTE_NUM; Just make sure the High Part of the Size is Zero
              STA >SDOS_BYTE_PTR   ; Clear the Byte Pointer 32 Bytes Register
              STA >SDOS_BYTE_PTR+2 ; This is to Relocated the Pointer after you passed the 64K Boundary
              ; Second Step, Setup the Amount of Data to Send
              ; Set the Transfer Size, I will try 256 bytes
              setas
SDOS_READ_FILE_GO_FETCH_A_NEW_64KBlock
              LDA #CH_CMD_BYTE_READ
              STA SDCARD_CMD;
              JSR DLYCMD_2_DTA;   ; 3us Delay to get the Value Return
              LDA >SDOS_BYTE_NUMBER
              STA SDCARD_DATA
              JSR DLYDTA_2_DTA;   ; 1.5us Delay to get the Value Return
              LDA >SDOS_BYTE_NUMBER+1
              STA SDCARD_DATA
              JSR SDCARD_WAIT_4_INT
              CMP #CH376S_STAT_DSK_RD ;
              BEQ SDOS_READ_FILE_GO_FETCH_A_NEW_BLOCK
              BRL SDOS_READ_END
SDOS_READ_FILE_GO_FETCH_A_NEW_BLOCK
              ; Go Read 1 Block and Store it @ ($00:0030)
              JSR SDOS_READ_BLOCK
              LDA #CH_CMD_BYTE_RD_GO
              STA SDCARD_CMD
              ;Now let's go to Poll the INTERRUPT and wait for
              JSR SDCARD_WAIT_4_INT
              CMP #CH376S_STAT_DSK_RD ;
              BNE SDOS_READ_PROC_DONE
              JSR SDOS_ADJUST_POINTER  ; Go Adjust the Address
              BRA SDOS_READ_FILE_GO_FETCH_A_NEW_BLOCK
SDOS_READ_PROC_DONE
              setal
              LDA >SDOS_BYTE_NUMBER  ; Load the Previously number of Byte
              CMP #$FFFF
              BNE SDOS_READ_DONE1                  ; if it equal 64K, then the file is bugger than 64K
              ; Now let's go compute the Nu Value for the Next Batch
              LDA >ADDER32_R_LL
              STA >ADDER32_A_LL
              LDA >ADDER32_R_HL
              STA >ADDER32_A_HL
              JSR SDOS_SETUP_CH376S_BUFFER_SIZE ;
              JSR SDOS_COMPUTE_LOCATE_POINTER
              setas
              JSR SDOS_BYTE_LOCATE    ; Apply the new location for the CH376S
              JSR SDCARD_WAIT_4_INT
              CMP #CH376S_STAT_SUCCESS ;
              BNE SDOS_READ_END
              ; Check to see that we have Loaded all the bytes.
              BRA SDOS_READ_FILE_GO_FETCH_A_NEW_64KBlock ; Let's go fetch a new block of 64K or less
;SDOS_READ_DONE
;              CMP #CH376S_STAT_SUCCESS
;              BNE SDOS_READ_END
SDOS_READ_DONE1
			  LDA #$02
			  STA >sd_card_msg7
              LDA #$00
              LDX #<>sd_card_msg7         ; Print Screen the Message "FILE LOADED"
              BRA SDOS_READ_PROC_DONE1
SDOS_READ_END
			  LDA #$01
			  STA >sd_card_msg7
              LDA #$FF
              LDX #<>sd_card_err1         ;"ERROR LOADING FILE"
SDOS_READ_PROC_DONE1
              JSL IPRINT       ; print the first line

              RTS;

SDOS_ADJUST_POINTER
              setal
              CLC
              LDA SDCARD_FILE_PTR ;Load the Pointer
              ADC SDCARD_BYTE_NUM
              STA SDCARD_FILE_PTR;
              setas
              LDA SDCARD_FILE_PTR+2;
              ADC #$00          ; This is just add up the Carry
              STA SDCARD_FILE_PTR+2;
SDOS_ADJ_DONE
              RTS

SDOS_BYTE_LOCATE  ; Reposition the Pointer of the CH376S when the File is > 64K
              setas
              LDA #CH_CMD_BYTE_LOCATE
              STA SDCARD_CMD
              JSR DLYCMD_2_DTA
              LDA >SDOS_BYTE_PTR
              STA SDCARD_DATA
              JSR DLYDTA_2_DTA
              LDA >SDOS_BYTE_PTR+1
              STA SDCARD_DATA
              JSR DLYDTA_2_DTA
              LDA >SDOS_BYTE_PTR+2
              STA SDCARD_DATA
              JSR DLYDTA_2_DTA
              LDA >SDOS_BYTE_PTR+3
              STA SDCARD_DATA
              RTS
; This will increment the pointer for the CH376S
SDOS_COMPUTE_LOCATE_POINTER
              setal
              CLC
              LDA >SDOS_BYTE_PTR ; $00330
              ADC #$FFFF
              STA >SDOS_BYTE_PTR
              LDA >SDOS_BYTE_PTR+2
              ADC #$0000          ; this is to Add the Carry
              STA >SDOS_BYTE_PTR+2
              RTS
; Load Register B of the 32Bit Adder with the Value -65535 (size of the CH376S Buffer)
SDOS_SETUP_ADDER_B
              setal
              LDA #$0001
              STA >ADDER32_B_LL
              LDA #$FFFF
              STA >ADDER32_B_HL
              RTS
; Load Register A with the Size of the File
SDOS_LOAD_ADDER_A_WITH_SIZE
              setal
              LDA >SDOS_FILE_SIZE;
              STA >ADDER32_A_LL;
              LDA >SDOS_FILE_SIZE+2;
              STA >ADDER32_A_HL;
              RTS

SDOS_SETUP_CH376S_BUFFER_SIZE
              setal
              LDA  >ADDER32_R_HL
              AND #$8000          ; Check if it is negative
              CMP #$8000          ; if it is then just put the Size of the file in ByteNumber
              BEQ SDOS_SETUP_SMALLR_THAN64K
              LDA #$FFFF
              STA >SDOS_BYTE_NUMBER
              RTS
SDOS_SETUP_SMALLR_THAN64K
              LDA >ADDER32_A_LL
              STA >SDOS_BYTE_NUMBER
              RTS
; SDOS_READ_BLOCK (A needs to be short)
; Read a Block of Data from Controller
; Inputs:
;  None
; Affects:
;   A, X
; Returns:
;   A = Number of byte Fetched
;  Buffer @ SDOS_SECTOR_BEGIN
SDOS_READ_BLOCK
              setas
              LDA #CH_CMD_RD_DATA0
              STA SDCARD_CMD;
              JSR DLYCMD_2_DTA;   ; 3us Delay to get the Value Return
			  JSR DLYCMD_2_DTA;   ; mtb
			  JSR DLYCMD_2_DTA;   ; mtb
              LDA SDCARD_DATA     ; Read First Byte for Number of Byte to Read
              STA SDCARD_BYTE_NUM  ; Store the Number of byte to be read
              JSR DLYDTA_2_DTA;   ; 3us Delay to get the Value Return
              LDY #$0000
SDOS_READ_MORE
              LDA SDCARD_DATA
              STA [SDCARD_FILE_PTR], Y        ; Store Block Data Sector Begin
              INY
              CPY SDCARD_BYTE_NUM
              BNE SDOS_READ_MORE
              LDA #'X'
              JSL IPUTC        ; Print the character
              LDA SDCARD_BYTE_NUM  ; Reload the Number of Byte Read
              RTS

;////////////////////////////////////////////////////////
; ISDOS_INIT_EX
; Check to see if Card exist, then Mount the SDCArd
; Inputs:
;   Pointer to the ASCII File name by
; Located @ $000030..$000032 - SDCARD_FLNMPTR_L
; Affects:
;   None
; Upon the Call of this Routine Display the Files on the SDCARD
ISDOS_INIT_EX
              setas
              ;setxl
              JSR ISDOS_MOUNT_CARD;     First to See if the Card is Present
              LDX #$0000
XISDOS_DIR_TRF
              LDA sd_card_dir_string,X    ; /
              STA >SDOS_FILE_NAME,X
              INX
              CPX #$0003
              BNE XISDOS_DIR_TRF

              JSR SDOS_FILE_OPEN         ; Now that the file name is set, go open File
              CMP #CH376S_STAT_DSK_RD
              BEQ XISDOS_DIR_CONT0
              BRL XISDOS_MISS_FILE
XISDOS_DIR_CONT0

XISDOS_NEXT_ENTRY
              LDA #CH_CMD_RD_DATA0
              STA SDCARD_CMD
              JSR DLYCMD_2_DTA;
              LDA SDCARD_DATA  ;  Load First Data
              LDY #$0000
              LDX #$0000
              TAY              ; GET Size (Save in Case we need it)
;#1 Display File Name @ Empty the buffer, since we don't need info for now.
XISDOS_DIR_GET_CHAR
              JSR DLYDTA_2_DTA ; Wait 0.6us
              LDA SDCARD_DATA  ;
              ;JSL IPUTC        ; Print the character
              INX
              CPX #$0008
              BNE XISDOS_DIR_CONT1
              JSR XISDOS_DISPLAY_DOT
XISDOS_DIR_CONT1
              CPX #$000B          ; the First 11th Character is the file name
              BNE XISDOS_DIR_GET_CHAR
              ;LDA #$20
              ;JSL IPUTC        ; Print the character
              ;LDA #'('
              ;JSL IPUTC        ; Print the character
              LDA SDCARD_DATA  ;
              AND #$10
              CMP #$10
              BEQ XISDOS_DIR_ATTR0
              ;LDA #'F'
              BRA XISDOS_DIR_ATTR1
XISDOS_DIR_ATTR0
              ;LDA #'D'
XISDOS_DIR_ATTR1
              ;JSL IPUTC        ; Print the character
              ;LDA #')'
              ;JSL IPUTC        ; Print the character
              ;LDA #$0D         ; Carriage Return
              ;JSL IPUTC        ; Print the character
XISDOS_DIR_GET_CHAR_FINISH
              JSR DLYDTA_2_DTA ; Wait 0.6us
              LDA SDCARD_DATA  ; After the name Just empty the buffer
;             JSL IPUTC        ; Print the character
              INX
              CPX #$0020
              BNE XISDOS_DIR_GET_CHAR_FINISH
              JSR DLYCMD_2_DTA
              ; Ask Controller to go fetch the next entry in the Directory
              LDA #CH_CMD_FILE_ENUM_GO
              STA SDCARD_CMD
              JSR SDCARD_WAIT_4_INT       ; Go Wait for Interrupt
              CMP #CH376S_STAT_DSK_RD
              BEQ XISDOS_NEXT_ENTRY
              CMP #CH376S_ERR_MISS_FIL
              BNE  XISDOS_MISS_FILE
              ;LDX #<>sd_card_msg5   ; End of File
              ;BRL ISDOS_DIR_DONE
XISDOS_MISS_FILE
              ;LDX #<>sd_card_err0
              BRL XISDOS_DIR_DONE
XNO_SDCARD_PRESENT
              ;LDX #<>sd_no_card_msg
XISDOS_DIR_DONE
              ;JSL IPRINT       ; print the first line
              ; There should be an Error Code Displayed here...
              RTL;
XISDOS_DISPLAY_DOT
              ;LDA #'.'
              ;JSL IPUTC        ; Print the character
              RTS;

;
; IPRINT
; Print a string, followed by a carriage return
; DBR: bank containing string
; X: address of the string in data bank
; Modifies: X
;
IPRINT          ;JSL IPUTS
                ;JSL IPRINTCR



                RTL

; IPUTS
; Print a null terminated string
; DBR: bank containing string
; X: address of the string in data bank
; Modifies: X.
;  X will be set to the location of the byte following the string
;  So you can print multiple, contiguous strings by simply calling
;  IPUTS multiple times.
IPUTS           PHA
                PHP
                ;setas
                ;setxl
iputs1          ;LDA $0,b,x      ; read from the string
                ;BEQ iputs_done
iputs2          ;JSL IPUTC
iputs3          ;INX
                ;JMP iputs1
iputs_done      ;INX
                PLP
                PLA
                RTL

;
;IPUTC
; Print a single character to a channel.
; Handles terminal sequences, based on the selected text mode
; Modifies: none
;
IPUTC           PHD
                PHP             ; stash the flags (we'll be changing M)
                ;setdp 0
                ;setas
                ;CMP #$0D        ; handle CR
                ;BNE iputc_bs
                ;JSL IPRINTCR
                ;bra iputc_done
iputc_bs        ;CMP #$08        ; backspace
                ;BNE iputc_print
                ;JSL IPRINTBS
                ;BRA iputc_done
iputc_print     ;STA [CURSORPOS] ; Save the character on the screen
                ;JSL ICSRRIGHT
iputc_done	;sim_refresh
                PLP
                PLD
                RTL

sd_card_dir_string  BYTE $2F, $2A ,$00
sd_no_card_msg      BYTE "NO SDCARD PRESENT", $0D, $00
sd_card_err0        BYTE "ERROR IN READIND CARD", $00
sd_card_err1        BYTE "ERROR LOADING FILE", $00
sd_card_msg0        BYTE "Name: ", $0D,$00
sd_card_msg1        BYTE "SDCARD DETECTED", $00
sd_card_msg2        BYTE "SDCARD MOUNTED", $00
sd_card_msg3        BYTE "FAILED TO MOUNT SDCARD", $0D, $00
sd_card_msg4        BYTE "FILE OPENED", $0D, $00
sd_card_msg5        BYTE "END OF LINE...", $00
sd_card_msg6        BYTE "FILE FOUND, LOADING...", $00
sd_card_msg7        BYTE "FILE LOADED", $00


	endmod


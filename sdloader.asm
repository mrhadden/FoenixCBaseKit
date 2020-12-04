
.cpu "65816"

;Jump Table
;* = $192000
* = $194000

;FXLOADBASE = $030000
FXLOADBASE = $030000

LOADFXOS	JMP ILOADFXOS

ILOADFXOS:
		;JSL ICLRSCREEN 

		LDX #<>fx_loader_search
		JSL IPRINT       ; print debug

		setxl
		setas
		LDX #$0000
		LDA #$00
CLEAR_DST_LOOP
		STA @lFXLOADBASE, X
		INX
		CPX #$FFFF 
		BNE CLEAR_DST_LOOP
;		NOP

		setas
		JSL ISDOS_INIT
		;JSL ISDOS_INIT_EX
		JSL SDOS_DIR				
;		JSR ISDOS_MOUNT_CARD;
;		
;		LDX #$0000
;LOAD_DIR_NAME
;		LDA sd_card_dir_string,X    ; /
;		STA @lSDOS_FILE_NAME,X
;		INX
;		CPX #$0003
;		BNE LOAD_DIR_NAME
;		JSR SDOS_FILE_OPEN         ; Now that the file name is set, go open File


		LDX #<>fx_loader_loading
		JSL IPRINT       ; print debug

		;LDX #<>fx_loader_file0
		;JSL IPRINT       ; print debug

		setal
		setxl
		LDA   #13 ;number of bytes to copy
		DEC   A ;less one for MVN instruction
		LDX   #<>fx_loader_file0 ;get source into X "/FXLOADER.BIN"
		LDY   #<>SDOS_FILE_NAME  ;get dest into Y
		MVN   #`fx_loader_file0,#`SDOS_FILE_NAME ;copy bytes

		setas

		;LDA #$00
		;STA @lSDCARD_FILE_PTR
		;STA @lSDCARD_FILE_PTR+1
		;LDA #$03
		;STA @lSDCARD_FILE_PTR+2;
		
		LDA #<FXLOADBASE
		STA @lSDCARD_FILE_PTR
		LDA #>FXLOADBASE
		STA @lSDCARD_FILE_PTR+1
		LDA #`FXLOADBASE
		STA @lSDCARD_FILE_PTR+2;


		setas

		LDA #$00
		STA @lSDOS_FILE_LOADED
		
		setal
		
		PHA
		PHX
		PHY

		setas
		LDA #'F'
		STA @l$AFA001
		
REREAD_SDCARD		
		;LDA #$FF
		;STA @l$030000
		JSL SDOS_READ_FILE
		;LDA @l$030000
		;CMP #$FF
		;BEQ REREAD_SDCARD

		LDA #'G'
		STA @l$AFA002

		
		setal
		
		PLY
		PLX
		PLA

		;CLI
		
		LDA @lSDOS_FILE_LOADED
		CMP $01
		;BEQ ZERO_BYTES_READ
		BEQ ILOADFXOS
		
FILE_LOADED_TRUE
		;setdbr `fx_loader_found
		LDX #<>fx_loader_found				
		JSL IPRINT       ; print debug

		setas

		LDA #$38
		STA @l$000710
		LDA #'H'
		STA @l$AFA003


		;LDA @l$030000
		;BEQ ZERO_BYTES_READ

		setal

		PHD
		PHA
		PHX
		PHY
		
		
		TSC
		STA @lTASKSS_SOS_LO
		
		;LDA #$39
		;STA @l$000710
		
		LDA #$51AB
		STA @lTASKSS_STACK_LO
		
		;setal
		;LDA #$40
		;STA @l$000710
		
		;setxs
		;LDX #$00
		;LDY #$00
		;JSL ILOCATE
		;JSL ICLRSCREEN 
		
		setxl
		LDX #<>fx_loader_exec				
		JSL IPRINT       ; print debug		

		setas

		LDA #$5c 
		STA @l$000720
		LDA #$00 
		STA @l$000720 + 1
		LDA #$00 
		STA @l$000720 + 2
		LDA #$03 
		STA @l$000720 + 3


		LDA #'I'
		STA @l$AFA004
		setal
		
		setaxl
		
		LDA #$0720
		STA $FFEE
		
		;setdbr `FXLOADBASE
		JMP @lFXLOADBASE

		setas
		LDA #'K'
		STA @l$AFA005
		
		setal
		LDA @lTASKSS_SOS_LO
		TCS
		
		PLY
		PLX
		PLA
		PLD

		setas

		LDA #$39
		STA @l$000710

		setas
		LDA #'L'
		STA @l$AFA006


		;setxl
		;setdbr $03
		;LDX #0000
		;JSL IPRINT       ; print debug
		;JSL $030000
		BRA FINISHED_EXT_CODE


ZERO_BYTES_READ
		setdbr `fx_loader_fail
		LDX #<>fx_loader_fail				
		JSL IPRINT       ; print debug

	
FINISHED_EXT_CODE
		
		RTL
		
		
fx_loader_search  .null "SEARCHING FOR FX/OS LOADER"
fx_loader_file0   .null "/FXLOADER.BIN"
fx_loader_found   .null "FOUND FX/OS LOADER"
fx_loader_loading .null "LOADING FX/OS"
fx_loader_fail    .null "FX/OS LOAD FAILED"
fx_loader_exec    .null "FX/OS EXECUTIVE"
		
		
		
		
		
		
		
		

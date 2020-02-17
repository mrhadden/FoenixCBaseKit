; page_00.asm
; Direct Page Addresses
;
;* Addresses are the byte AFTER the block. Use this to confirm block locations and check for overlaps
BANK0_BEGIN       EQU  $000000 ;Start of bank 0 and Direct page
unused_0000       EQU  $000000 ;12 Bytes unused
OPL2_ADDY_PTR_LO  EQU  $000008  ; THis Points towards the Instruments Database
OPL2_ADDY_PTR_MD  EQU  $000009
OPL2_ADDY_PTR_HI  EQU  $00000A
SCREENBEGIN       EQU  $00000C ;3 Bytes Start of screen in video RAM. This is the upper-left corrner of the current video page being written to. This may not be what's being displayed by VICKY. Update this if you change VICKY's display page.
COLS_VISIBLE      EQU  $00000F ;2 Bytes Columns visible per screen line. A virtual line can be longer than displayed, up to COLS_PER_LINE long. Default  EQU  80
COLS_PER_LINE     EQU  $000011 ;2 Bytes Columns in memory per screen line. A virtual line can be this long. Default EQU 128
LINES_VISIBLE     EQU  $000013 ;2 Bytes The number of rows visible on the screen. Default EQU 25
LINES_MAX         EQU  $000015 ;2 Bytes The number of rows in memory for the screen. Default EQU 64
CURSORPOS         EQU  $000017 ;3 Bytes The next character written to the screen will be written in this location.
CURSORX           EQU  $00001A ;2 Bytes This is where the blinking cursor sits. Do not edit this direectly. Call LOCATE to update the location and handle moving the cursor correctly.
CURSORY           EQU  $00001C ;2 Bytes This is where the blinking cursor sits. Do not edit this direectly. Call LOCATE to update the location and handle moving the cursor correctly.
CURCOLOR          EQU  $00001E ;2 Bytes Color of next character to be printed to the screen.
CURATTR           EQU  $000020 ;2 Bytes Attribute of next character to be printed to the screen.
STACKBOT          EQU  $000022 ;2 Bytes Lowest location the stack should be allowed to write to. If SP falls below this value, the runtime should generate STACK OVERFLOW error and abort.
STACKTOP          EQU  $000024 ;2 Bytes Highest location the stack can occupy. If SP goes above this value, the runtime should generate STACK OVERFLOW error and abort.
; OPL2 Library Variable (Can be shared if Library is not used)
; THis will need to move eventually
OPL2_OPERATOR     EQU  $000026 ;
OPL2_CHANNEL      EQU  $000027 ;
OPL2_REG_REGION   EQU  $000028 ; Offset to the Group of Registers
OPL2_REG_OFFSET   EQU  $00002A ; 2 Bytes (16Bits)
OPL2_IND_ADDY_LL  EQU  $00002C ; 2 Bytes Reserved (Only need 3)
OPL2_IND_ADDY_HL  EQU  $00002E ; 2 Bytes Reserved (Only need 3)
OPL2_NOTE         EQU  $000030 ; 1 Byte
OPL2_OCTAVE       EQU  $000031 ; 1 Byte
OPL2_PARAMETER0   EQU  $000032 ; 1 Byte - Key On/Feedback
OPL2_PARAMETER1   EQU  $000033 ; 1 Byte
OPL2_PARAMETER2   EQU  $000034 ; 1 Byte
OPL2_PARAMETER3   EQU  $000035 ; 1 Byte
OPL2_LOOP         EQU  $000036 ;
OPL2_BLOCK        EQU  $000036
; SD Card (CH376S) Variables
SDCARD_FILE_PTR   EQU  $000038 ; 3 Bytes Pointer to Filename to open
SDCARD_BYTE_NUM   EQU  $00003C ; 2Bytes
SDCARD_PRSNT_MNT  EQU  $00003F ; 1 Byte, Indicate that the SDCard is Present and that it is Mounted
; Command Line Parser Variables
CMD_PARSER_TMPX   EQU  $000040 ; <<< Command Parser 2Bytes
CMD_PARSER_TMPY   EQU  $000042 ; <<< Command Parser 2Bytes
CMD_LIST_PTR      EQU  $000044 ; <<< Command Parser 3 Bytes
CMD_PARSER_PTR    EQU  $000048 ; <<< Command Parser 3 Bytes
CMD_ATTRIBUTE     EQU  $00004B ; <<< Command Parser 2 Bytes (16bits Attribute Field)
CMD_EXEC_ADDY     EQU  $00004D ; <<< Command Parser 3 Bytes 24 Bits Address Jump to execute the Command
KEY_BUFFER_RPOS   EQU  $000050 ;
KEY_BUFFER_WPOS   EQU  $000052 ;
CMD_VARIABLE_TMP  EQU  $000054 ;
CMD_ARG_DEV       EQU  $000056 ;
CMD_ARG_SA        EQU  $000057 ;
CMD_ARG_EA        EQU  $00005A ;
CMD_VALID         EQU  $00005D ;


; Bitmap Clear Routine
BM_CLEAR_SCRN_X   EQU  $000040
BM_CLEAR_SCRN_Y   EQU  $000042
; RAD File Player
RAD_STARTLINE     EQU  $000040 ; 1 Byte
RAD_PATTERN_IDX   EQU  $000041 ; 1 Byte
RAD_LINE          EQU  $000042 ; 1 Byte
RAD_LINENUMBER    EQU  $000043 ; 1 Byte
RAD_CHANNEL_NUM   EQU  $000044 ; 1 Byte
RAD_ISLASTCHAN    EQU  $000045 ; 1 Byte
RAD_Y_POINTER     EQU  $000046 ; 2 Bytes
RAD_TICK          EQU  $000048
RAD_CHANNEL_DATA  EQU  $00004A ; 2 Bytes
RAD_CHANNE_EFFCT  EQU  $00004C
RAD_TEMP          EQU  $00004D

; BMP File Parser Variables (Can be shared if BMP Parser not used)
; Used for Command Parser Mainly
BMP_X_SIZE        EQU  $000040 ; 2 Bytes
BMP_Y_SIZE        EQU  $000042 ; 2 Bytes
BMP_PRSE_SRC_PTR  EQU  $000044 ; 3 Bytes
BMP_PRSE_DST_PTR  EQU  $000048 ; 3 Bytes
BMP_COLOR_PALET   EQU  $00004C ; 2 Bytes
SCRN_X_STRIDE     EQU  $00004E ; 2 Bytes, Basically How many Pixel Accross in Bitmap Mode
BMP_FILE_SIZE     EQU  $000050 ; 4 Bytes
BMP_POSITION_X    EQU  $000054 ; 2 Bytes Where, the BMP will be position on the X Axis
BMP_POSITION_Y    EQU  $000056 ; 2 Bytes Where, the BMP will be position on the Y Axis
BMP_PALET_CHOICE  EQU  $000058 ;
;Empty Region
;XXX              EQU  $000060
;..
;..
;..
;YYY              EQU  $0000EE

MOUSE_PTR         EQU  $0000E0
MOUSE_POS_X_LO    EQU  $0000E1
MOUSE_POS_X_HI    EQU  $0000E2
MOUSE_POS_Y_LO    EQU  $0000E3
MOUSE_POS_Y_HI    EQU  $0000E4

USER_TEMP         EQU  $0000F0 ;32 Bytes Temp space for user programs
;;///////////////////////////////////////////////////////////////
;;; NO CODE or Variable ought to be Instatied in this REGION
;; BEGIN
;;///////////////////////////////////////////////////////////////
GAVIN_BLOCK       EQU  $000100 ;256 Bytes Gavin reserved, overlaps debugging registers at $1F0

MULTIPLIER_0      EQU  $000100 ;0 Byte  Unsigned multiplier
M0_OPERAND_A      EQU  $000100 ;2 Bytes Operand A (ie: A x B)
M0_OPERAND_B      EQU  $000102 ;2 Bytes Operand B (ie: A x B)
M0_RESULT         EQU  $000104 ;4 Bytes Result of A x B

MULTIPLIER_1      EQU  $000108 ;0 Byte  Signed Multiplier
M1_OPERAND_A      EQU  $000108 ;2 Bytes Operand A (ie: A x B)
M1_OPERAND_B      EQU  $00010A ;2 Bytes Operand B (ie: A x B)
M1_RESULT         EQU  $00010C ;4 Bytes Result of A x B

DIVIDER_0         EQU  $000108 ;0 Byte  Unsigned divider
D0_OPERAND_A      EQU  $000108 ;2 Bytes Divider 0 Dividend ex: A in  A/B
D0_OPERAND_B      EQU  $00010A ;2 Bytes Divider 0 Divisor ex B in A/B
D0_RESULT         EQU  $00010C ;2 Bytes Quotient result of A/B ex: 7/2  EQU  3 r 1
D0_REMAINDER      EQU  $00010E ;2 Bytes Remainder of A/B ex: 1 in 7/2 EQU 3 r 1

DIVIDER_1         EQU  $000110 ;0 Byte  Signed divider
D1_OPERAND_A      EQU  $000110 ;2 Bytes Divider 1 Dividend ex: A in  A/B
D1_OPERAND_B      EQU  $000112 ;2 Bytes Divider 1 Divisor ex B in A/B
D1_RESULT         EQU  $000114 ;2 Bytes Signed quotient result of A/B ex: 7/2  EQU  3 r 1
D1_REMAINDER      EQU  $000116 ;2 Bytes Signed remainder of A/B ex: 1 in 7/2 EQU 3 r 1
; Reserved
ADDER_SIGNED_32   EQU  $000120 ; The 32 Bit Adders takes 12Byte that are NOT RAM Location
; Reserved
INT_CONTROLLER    EQU  $000140 ; $000140...$00015F Interrupt Controller

TIMER_CONTROLLER  EQU  $000160 ; $000160...$00017F Timer0/Timer1/Timer2 Block
TIMER_CTRL_REGLL  EQU  $000160 ;
TIMER_CTRL_REGLH  EQU  $000161 ;
TIMER_CTRL_REGHL  EQU  $000162 ;
TIMER_CTRL_REGHH  EQU  $000163 ;
;;///////////////////////////////////////////////////////////////
;;; NO CODE or Variable ought to be Instatied in this REGION
;; END
;;///////////////////////////////////////////////////////////////
CPU_REGISTERS     EQU  $000240 ; Byte
CPUPC             EQU  $000240 ;2 Bytes Program Counter (PC)
CPUPBR            EQU  $000242 ;2 Bytes Program Bank Register (K)
CPUA              EQU  $000244 ;2 Bytes Accumulator (A)
CPUX              EQU  $000246 ;2 Bytes X Register (X)
CPUY              EQU  $000248 ;2 Bytes Y Register (Y)
CPUSTACK          EQU  $00024A ;2 Bytes Stack Pointer (S)
CPUDP             EQU  $00024C ;2 Bytes Direct Page Register (D)
CPUDBR            EQU  $00024E ;1 Byte  Data Bank Register (B)
CPUFLAGS          EQU  $00024F ;1 Byte  Flags (P)

MONITOR_VARS      EQU  $000250 ; Byte  MONITOR Variables. BASIC variables may overlap this space
MCMDADDR          EQU  $000250 ;3 Bytes Address of the current line of text being processed by the command parser. Can be in display memory or a variable in memory. MONITOR will parse up to MTEXTLEN characters or to a null character.
MCMP_TEXT         EQU  $000253 ;3 Bytes Address of symbol being evaluated for COMPARE routine
MCMP_LEN          EQU  $000256 ;2 Bytes Length of symbol being evaluated for COMPARE routine
MCMD              EQU  $000258 ;3 Bytes Address of the current command/function string
MCMD_LEN          EQU  $00025B ;2 Bytes Length of the current command/function string
MARG1             EQU  $00025D ;4 Bytes First command argument. May be data or address, depending on command
MARG2             EQU  $000261 ;4 Bytes First command argument. May be data or address, depending on command. Data is 32-bit number. Address is 24-bit address and 8-bit length.
MARG3             EQU  $000265 ;4 Bytes First command argument. May be data or address, depending on command. Data is 32-bit number. Address is 24-bit address and 8-bit length.
MARG4             EQU  $000269 ;4 Bytes First command argument. May be data or address, depending on command. Data is 32-bit number. Address is 24-bit address and 8-bit length.
MARG5             EQU  $00026D ;4 Bytes First command argument. May be data or address, depending on command. Data is 32-bit number. Address is 24-bit address and 8-bit length.
MARG6             EQU  $000271 ;4 Bytes First command argument. May be data or address, depending on command. Data is 32-bit number. Address is 24-bit address and 8-bit length.
MARG7             EQU  $000275 ;4 Bytes First command argument. May be data or address, depending on command. Data is 32-bit number. Address is 24-bit address and 8-bit length.
MARG8             EQU  $000279 ;4 Bytes First command argument. May be data or address, depending on command. Data is 32-bit number. Address is 24-bit address and 8-bit length.

LOADFILE_VARS     EQU  $000300 ; Byte
LOADFILE_NAME     EQU  $000300 ;3 Bytes (addr) Name of file to load. Address in Data Page
LOADFILE_LEN      EQU  $000303 ;1 Byte  Length of filename. 0 EQU Null Terminated
LOADPBR           EQU  $000304 ;1 Byte  First Program Bank of loaded file ($05 segment)
LOADPC            EQU  $000305 ;2 Bytes Start address of loaded file ($05 segment)
LOADDBR           EQU  $000307 ;1 Byte  First data bank of loaded file ($06 segment)
LOADADDR          EQU  $000308 ;2 Bytes FIrst data address of loaded file ($06 segment)
LOADFILE_TYPE     EQU  $00030A ;3 Bytes (addr) File type string in loaded data file. Actual string data will be in Bank 1. Valid values are BIN, PRG, P16
BLOCK_LEN         EQU  $00030D ;2 Bytes Length of block being loaded
BLOCK_ADDR        EQU  $00030F ;2 Bytes (temp) Address of block being loaded
BLOCK_BANK        EQU  $000311 ;1 Byte  (temp) Bank of block being loaded
BLOCK_COUNT       EQU  $000312 ;2 Bytes (temp) Counter of bytes read as file is loaded

; $00:0320 to $00:06FF - Reserved for CH376S SDCard Controller
SDOS_BLOCK_BEGIN  EQU  $000320 ;
SDOS_LOAD_ADDY    EQU  $000324 ; 4 Bytes (Uses 3 Only)
SDOS_FILE_SIZE    EQU  $000328 ;
SDOS_BYTE_NUMBER  EQU  $00032C ; Number of Byte to Read or Write before changing the Pointer
SDOS_REG_WR32_AD  EQU  $000330 ; 4 Bytes (Used to read and Write Values in/from CH376S)
SDOS_BYTE_PTR     EQU  $000334
SDOS_FILE_NAME    EQU  $000380 ; // Max of 128 Chars
SDOS_BLK_BEGIN    EQU  $000400 ; 512 Bytes to Store SD Card Incoming or Outcoming Block
SDOS_BLK_END      EQU  $0006FF ;

TASKSS_STACK_LO	  EQU  $000700;
TASKSS_STACK_HI	  EQU  $000701;
TASKSS_CALLER_LO  EQU  $000702;
TASKSS_CALLER_HI  EQU  $000703;
TASKSS_SOS_LO	  EQU  $000704;
TASKSS_SOS_HI	  EQU  $000705;

CURRUART	  	  EQU  $0007F0;

; COMMAND PARSER Variables
; Command Parser Stuff between $000F00 -> $000F84 (see CMD_Parser.asm)
KEY_BUFFER        EQU  $000F00 ;64 Bytes keyboard buffer
KEY_BUFFER_SIZE   EQU  $0080 ;128 Bytes (constant) keyboard buffer length
KEY_BUFFER_END    EQU  $000F7F ;1 Byte  Last byte of keyboard buffer
KEY_BUFFER_CMD    EQU  $000F83 ;1 Byte  Indicates the Command Process Status
COMMAND_SIZE_STR  EQU  $000F84 ; 1 Byte
COMMAND_COMP_TMP  EQU  $000F86 ; 2 Bytes
KEYBOARD_SC_FLG   EQU  $000F87 ;1 Bytes that indicate the Status of Left Shift, Left CTRL, Left ALT, Right Shift
KEYBOARD_SC_TMP   EQU  $000F88 ;1 Byte, Interrupt Save Scan Code while Processing



TEST_BEGIN        EQU  $001000 ;28672 Bytes Test/diagnostic code for prototype.
TEST_END          EQU  $007FFF ;0 Byte

STACK_BEGIN       EQU  $008000 ;32512 Bytes The default beginning of stack space
STACK_END         EQU  $00FEFF ;0 Byte  End of stack space. Everything below this is I/O space

ISR_BEGIN         EQU  $18FF00 ; Byte  Beginning of CPU vectors in Direct page
HRESET            EQU  $18FF00 ;16 Bytes Handle RESET asserted. Reboot computer and re-initialize the kernel.
HCOP              EQU  $18FF10 ;16 Bytes Handle the COP instruction. Program use; not used by OS
HBRK              EQU  $18FF20 ;16 Bytes Handle the BRK instruction. Returns to BASIC Ready prompt.
HABORT            EQU  $18FF30 ;16 Bytes Handle ABORT asserted. Return to Ready prompt with an error message.
HNMI              EQU  $18FF40 ;32 Bytes Handle NMI
HIRQ              EQU  $18FF60 ;32 Bytes Handle IRQ
Unused_FF80       EQU  $18FF80 ;End of direct page Interrrupt handlers

VECTORS_BEGIN     EQU  $18FFE0 ;0 Byte  Interrupt vectors
JMP_READY         EQU  $00FFE0 ;4 Bytes Jumps to ROM READY routine. Modified whenever alternate command interpreter is loaded.
VECTOR_COP        EQU  $00FFE4 ;2 Bytes Native COP Interrupt vector
VECTOR_BRK        EQU  $00FFE6 ;2 Bytes Native BRK Interrupt vector
VECTOR_ABORT      EQU  $00FFE8 ;2 Bytes Native ABORT Interrupt vector
VECTOR_NMI        EQU  $00FFEA ;2 Bytes Native NMI Interrupt vector
VECTOR_RESET      EQU  $00FFEC ;2 Bytes Unused (Native RESET vector)
VECTOR_IRQ        EQU  $00FFEE ;2 Bytes Native IRQ Vector
RETURN            EQU  $00FFF0 ;4 Bytes RETURN key handler. Points to BASIC or MONITOR subroutine to execute when RETURN is pressed.
VECTOR_ECOP       EQU  $00FFF4 ;2 Bytes Emulation mode interrupt handler
VECTOR_EBRK       EQU  $00FFF6 ;2 Bytes Emulation mode interrupt handler
VECTOR_EABORT     EQU  $00FFF8 ;2 Bytes Emulation mode interrupt handler
VECTOR_ENMI       EQU  $00FFFA ;2 Bytes Emulation mode interrupt handler
VECTOR_ERESET     EQU  $00FFFC ;2 Bytes Emulation mode interrupt handler
VECTOR_EIRQ       EQU  $00FFFE ;2 Bytes Emulation mode interrupt handler
VECTORS_END       EQU  $200000 ;*End of vector space
BANK0_END         EQU  $00FFFF ;End of Bank 00 and Direct page
;

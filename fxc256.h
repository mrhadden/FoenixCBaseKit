
#ifndef __FX_C256_
#define __FX_C256_

#include "fxtypes.h"

#define VOLATILE

#define MOUSE_CLICK_LEFT 	((FXOS_MOUSE_BYTE_0[0] & 0x01) == 0x01)
#define MOUSE_CLICK_RIGHT 	((FXOS_MOUSE_BYTE_0[0] & 0x02) == 0x02)
#define MOUSE_CLICK_MIDDLE	((FXOS_MOUSE_BYTE_0[0] & 0x04) == 0x04)

#define CHK_KEYMOUSE_CTL  (0x02)

#define INT_PENDING_REG0  ((char FAR*)0x000140)
#define INT_PENDING_REG1  ((char FAR*)0x000141)
#define INT_PENDING_REG2  ((char FAR*)0x000142)
#define INT_POL_REG0      ((char FAR*)0x000144)
#define INT_POL_REG1      ((char FAR*)0x000145)
#define INT_POL_REG2      ((char FAR*)0x000146)
#define INT_EDGE_REG0     ((char FAR*)0x000148)
#define INT_EDGE_REG1     ((char FAR*)0x000149)
#define INT_EDGE_REG2     ((char FAR*)0x00014A)
#define INT_MASK_REG0     ((char FAR*)0x00014C)
#define INT_MASK_REG1     ((char FAR*)0x00014D)
#define INT_MASK_REG2     ((char FAR*)0x00014E)

// OLD
/*
 #define FNX0_INT00_ALLONE 0x01
 #define FNX0_INT01_SOF    0x02
 #define FNX0_INT02_SOL    0x04
 #define FNX0_INT03_TMR0   0x08
 #define FNX0_INT04_TMR1   0x10
 #define FNX0_INT05_TMR2   0x20
 #define FNX0_INT06_RTC    0x40
 #define FNX0_INT07_MOUSE  0x80
 */

//NEW
#define FNX0_INT00_SOF    0x01
#define FNX0_INT01_SOL    0x02
#define FNX0_INT02_TMR0   0x04
#define FNX0_INT03_TMR1   0x08
#define FNX0_INT04_TMR2   0x10
#define FNX0_INT05_RTC    0x20
#define FNX0_INT06_FDC    0x40
#define FNX0_INT07_MOUSE  0x80

#define FNX1_INT00_KBD    0x01
#define FNX1_INT01_SC0    0x02
#define FNX1_INT02_SC1    0x04
#define FNX1_INT03_COM2   0x08
#define FNX1_INT04_COM1   0x10
#define FNX1_INT05_MPU401 0x20
#define FNX1_INT06_LPT    0x40
#define FNX1_INT07_SDCARD 0x80

#define FNX2_INT00_OPL2R  0x01
#define FNX2_INT01_OPL2L  0x02
#define FNX2_INT02_BTX_INT 0x04
#define FNX2_INT03_SDMA   0x08
#define FNX2_INT04_VDMA   0x10
#define FNX2_INT05_DACHP  0x20
#define FNX2_INT06_EXT    0x40
#define FNX2_INT07_SDCARD 0x80
//#define FNX2_INT07_ALLONE 0x80

#define UART_TRHB 	( 0x00)
//             ; Transmit/Receive Hold Buffer
#define UART_DLL 	( 0x00)
//        ; Divisor Latch Low Byte
#define UART_DLH 	( 0x01)
//              ; Divisor Latch High Byte
#define UART_IER 	(0x01)
//         ; Interupt Enable Register
#define UART_FCR 	(0x02)
//              ; FIFO Control Register
#define UART_IIR 	(0x02)
//         ; Interupt Indentification Register
#define UART_LCR 	(0x03)
//              ; Line Control Register
#define UART_MCR 	(0x04)
//              ; Modem Control REgister
#define UART_LSR 	(0x05)
//              ; Line Status Register
#define UART_MSR 	(0x06)
//              ; Modem Status Register
#define UART_SR 	(0x07)
//               ; Scratch Register

#define BM437_ATI_8X8_Font_Set ((VOLATILE unsigned char FAR*)0x1ff800)
#define FONT_4_BANK0		   ((VOLATILE unsigned char FAR*)0x1ff000)//3FF000
#define FONT_MEMORY_BANK0	   ((VOLATILE unsigned char FAR*)0xaf8000)
#define FONT_MEMORY_BANK1	   ((VOLATILE unsigned char FAR*)0xaf8800)


//* Addresses are the byte AFTER the block. Use this to confirm block locations and check for overlaps
#define BANK0_BEGIN       ((VOLATILE unsigned char FAR*)0x000000)
//Start of bank 0 and Direct page
#define unused_0000       ((VOLATILE unsigned char FAR*)0x000000)
//12 Bytes unused
#define SCREENBEGIN       ((VOLATILE unsigned char FAR*)0x00000C)
//3 Bytes Start of screen in video RAM. This is the upper-left corrner of the current video page being written to. This may not be what's being displayed by VICKY. Update this if you change VICKY's display page.
#define COLS_VISIBLE      ((VOLATILE unsigned char FAR*)0x00000F)
//2 Bytes Columns visible per screen line. A virtual line can be longer than displayed, up to COLS_PER_LINE long. Default  80
#define COLS_PER_LINE     ((VOLATILE unsigned char FAR*)0x000011)
//2 Bytes Columns in memory per screen line. A virtual line can be this long. Default128
#define LINES_VISIBLE     ((VOLATILE unsigned char FAR*)0x000013)
//2 Bytes The number of rows visible on the screen. Default25
#define LINES_MAX         ((VOLATILE unsigned char FAR*)0x000015)
//2 Bytes The number of rows in memory for the screen. Default64
#define CURSORPOS         ((VOLATILE unsigned char FAR*)0x000017)
#define CURCOLOR		  ((VOLATILE unsigned char FAR*)0x00001E)
//3 Bytes The next character written to the screen will be written in this location.
#define CURSORX           ((VOLATILE unsigned char FAR*)0x00001A)
//2 Bytes This is where the blinking cursor sits. Do not edit this direectly. Call LOCATE to update the location and handle moving the cursor correctly.
#define CURSORY           ((VOLATILE unsigned char FAR*)0x00001C)
//2 Bytes This is where the blinking cursor sits. Do not edit this direectly. Call LOCATE to update the location and handle moving the cursor correctly.
#define CURCOLOR_L        ((VOLATILE unsigned char FAR*)0x00001E)
//2 Bytes Color of next character to be printed to the screen.
#define CURCOLOR_H        ((VOLATILE unsigned char FAR*)0x00001F)
//2 Bytes Color of next character to be printed to the screen.
#define CURATTR           ((VOLATILE unsigned char FAR*)0x000020)
//2 Bytes Attribute of next character to be printed to the screen.
#define STACKBOT          ((VOLATILE unsigned char FAR*)0x000022)
//2 Bytes Lowest location the stack should be allowed to write to. If SP falls below this value, the runtime should generate STACK OVERFLOW error and abort.
#define STACKTOP          ((VOLATILE unsigned char FAR*)0x000024)
//2 Bytes Highest location the stack can occupy. If SP goes above this value, the runtime should generate STACK OVERFLOW error and abort.

//CONTROL BITS FIELDS)
#define MSTR_CTRL_TEXT_MODE_EN    (0x01)
#define MSTR_CTRL_TEXT_OVERLAY    (0x02)
//        ENABLE THE OVERLAY OF THE TEXT MODE ON TOP OF GRAPHIC MODE (THE BACKGROUND COLOR IS IGNORED))
#define MSTR_CTRL_GRAPH_MODE_EN   (0x04)
#define MSTR_CTRL_BITMAP_EN       (0x08)
#define MSTR_CTRL_TILEMAP_EN      (0x10)
#define MSTR_CTRL_SPRITE_EN       (0x20)
#define MSTR_CTRL_GAMMA_EN        (0x40)
#define MSTR_CTRL_DISABLE_VID     (0x80)
#define MASTER_CTRL_REG_L	   ((VOLATILE unsigned char FAR*)0xAF0000)
#define MASTER_CTRL_REG_H	   ((VOLATILE unsigned char FAR*)0xAF0001)

#define VKY_RESERVED_00           ((VOLATILE unsigned char FAR*)0xAF0002)
#define VKY_RESERVED_01           ((VOLATILE unsigned char FAR*)0xAF0003)
#define BORDER_CTRL_REG           ((VOLATILE unsigned char FAR*)0xAF0004)
#define BORDER_CTRL_ENABLE        0x01
#define BORDER_COLOR_B            ((VOLATILE unsigned char FAR*)0xAF0005)
#define BORDER_COLOR_G            ((VOLATILE unsigned char FAR*)0xAF0006)
#define BORDER_COLOR_R            ((VOLATILE unsigned char FAR*)0xAF0007)

#define VKY_TXT_CURSOR_CTRL_REG   ((VOLATILE unsigned char FAR*)0xAF0010)
//   [0]  ENABLE TEXT MODE)
#define VKY_CURSOR_ENABLE         (0x01)
#define VKY_CURSOR_FLASH_RATE0    (0x02)
#define VKY_CURSOR_FLASH_RATE1    (0x04)
#define VKY_CURSOR_FONT_PAGE0     (0x08)
//        PICK FONT PAGE 0 OR FONT PAGE 1)
#define VKY_CURSOR_FONT_PAGE1     (0x10)
//       PICK FONT PAGE 0 OR FONT PAGE 1)
#define VKY_TXT_RESERVED          ((VOLATILE unsigned char FAR*)0xAF0011)
//   NOT IN USE)
#define VKY_TXT_CURSOR_CHAR_REG   ((VOLATILE unsigned char FAR*)0xAF0012)

#define VKY_TXT_CURSOR_COLR_REG   ((VOLATILE unsigned char FAR*)0xAF0013)
#define VKY_TXT_CURSOR_X_REG_L    ((VOLATILE unsigned char FAR*)0xAF0014)
#define VKY_TXT_CURSOR_X_REG_H    ((VOLATILE unsigned char FAR*)0xAF0015)
#define VKY_TXT_CURSOR_Y_REG_L    ((VOLATILE unsigned char FAR*)0xAF0016)
#define VKY_TXT_CURSOR_Y_REG_H    ((VOLATILE unsigned char FAR*)0xAF0017)

#define VKY_INFO_CHIP_NUM_L       ((VOLATILE unsigned char FAR*)0xAF001C)
#define VKY_INFO_CHIP_NUM_H       ((VOLATILE unsigned char FAR*)0xAF001D)
#define VKY_INFO_CHIP_VER_L       ((VOLATILE unsigned char FAR*)0xAF001E)
#define VKY_INFO_CHIP_VER_H       ((VOLATILE unsigned char FAR*)0xAF001F)

//)
// BIT FIELD DEFINITION FOR THE CONTROL REGISTER)
#define TILE_ENABLE               ((VOLATILE unsigned char FAR*)0x01)
#define TILE_LUT0                 ((VOLATILE unsigned char FAR*)0x02)
#define TILE_LUT1                 ((VOLATILE unsigned char FAR*)0x04)
#define TILE_LUT2                 ((VOLATILE unsigned char FAR*)0x08)
#define TILESHEET_256X256_EN      ((VOLATILE unsigned char FAR*)0x80)
//    0 -> SEQUENTIAL, 1-> 256X256 TILE SHEET STRIDING)
//)
//TILE MAP LAYER 0 REGISTERS)
#define TL0_CONTROL_REG           ((VOLATILE unsigned char FAR*)0xAF0100)
//        BIT[0] - ENABLE, BIT[3:1] - LUT SELECT,)
#define TL0_START_ADDY_L          ((VOLATILE unsigned char FAR*)0xAF0101)
//        NOT USED RIGHT NOW - STARTING ADDRESS TO WHERE IS THE MAP)
#define TL0_START_ADDY_M          ((VOLATILE unsigned char FAR*)0xAF0102)
#define TL0_START_ADDY_H          ((VOLATILE unsigned char FAR*)0xAF0103)
#define TL0_MAP_X_STRIDE_L        ((VOLATILE unsigned char FAR*)0xAF0104)
//        THE STRIDE OF THE MAP)
#define TL0_MAP_X_STRIDE_H        ((VOLATILE unsigned char FAR*)0xAF0105)
#define TL0_MAP_Y_STRIDE_L        ((VOLATILE unsigned char FAR*)0xAF0106)
//        THE STRIDE OF THE MAP)
#define TL0_MAP_Y_STRIDE_H        ((VOLATILE unsigned char FAR*)0xAF0107)
//TL0_RESERVED_0            ((VOLATILE unsigned char FAR*)0xAF0108)
//TL0_RESERVED_1            ((VOLATILE unsigned char FAR*)0xAF0109)
//TL0_RESERVED_2            ((VOLATILE unsigned char FAR*)0xAF010A)
//TL0_RESERVED_3            ((VOLATILE unsigned char FAR*)0xAF010B)
//TL0_RESERVED_4            ((VOLATILE unsigned char FAR*)0xAF010C)
//TL0_RESERVED_5            ((VOLATILE unsigned char FAR*)0xAF010D)
//TL0_RESERVED_6            ((VOLATILE unsigned char FAR*)0xAF010E)
//TL0_RESERVED_7            ((VOLATILE unsigned char FAR*)0xAF010F)
//TILE MAP LAYER 1 REGISTERS)
#define TL1_CONTROL_REG           ((VOLATILE unsigned char FAR*)0xAF0108)
//        BIT[0] - ENABLE, BIT[3:1] - LUT SELECT,)
#define TL1_START_ADDY_L          ((VOLATILE unsigned char FAR*)0xAF0109)
//        NOT USED RIGHT NOW - STARTING ADDRESS TO WHERE IS THE MAP)
#define TL1_START_ADDY_M          ((VOLATILE unsigned char FAR*)0xAF010A)
#define TL1_START_ADDY_H          ((VOLATILE unsigned char FAR*)0xAF010B)
#define TL1_MAP_X_STRIDE_L        ((VOLATILE unsigned char FAR*)0xAF010C)
//        THE STRIDE OF THE MAP)
#define TL1_MAP_X_STRIDE_H        ((VOLATILE unsigned char FAR*)0xAF010D)
#define TL1_MAP_Y_STRIDE_L        ((VOLATILE unsigned char FAR*)0xAF010E)
//        THE STRIDE OF THE MAP)
#define TL1_MAP_Y_STRIDE_H        ((VOLATILE unsigned char FAR*)0xAF010F)
//TL1_RESERVED_0            ((VOLATILE unsigned char FAR*)0xAF0118)
//TL1_RESERVED_1            ((VOLATILE unsigned char FAR*)0xAF0119)
//TL1_RESERVED_2            ((VOLATILE unsigned char FAR*)0xAF011A)
//TL1_RESERVED_3            ((VOLATILE unsigned char FAR*)0xAF011B)
//TL1_RESERVED_4            ((VOLATILE unsigned char FAR*)0xAF011C)
//TL1_RESERVED_5            ((VOLATILE unsigned char FAR*)0xAF011D)
//TL1_RESERVED_6            ((VOLATILE unsigned char FAR*)0xAF011E)
//TL1_RESERVED_7            ((VOLATILE unsigned char FAR*)0xAF011F)
//TILE MAP LAYER 2 REGISTERS)
#define TL2_CONTROL_REG           ((VOLATILE unsigned char FAR*)0xAF0110)
//        BIT[0] - ENABLE, BIT[3:1] - LUT SELECT,)
#define TL2_START_ADDY_L          ((VOLATILE unsigned char FAR*)0xAF0111)
//        NOT USED RIGHT NOW - STARTING ADDRESS TO WHERE IS THE MAP)
#define TL2_START_ADDY_M          ((VOLATILE unsigned char FAR*)0xAF0112)
#define TL2_START_ADDY_H          ((VOLATILE unsigned char FAR*)0xAF0113)
#define TL2_MAP_X_STRIDE_L        ((VOLATILE unsigned char FAR*)0xAF0114)
//        THE STRIDE OF THE MAP)
#define TL2_MAP_X_STRIDE_H        ((VOLATILE unsigned char FAR*)0xAF0115)
#define TL2_MAP_Y_STRIDE_L        ((VOLATILE unsigned char FAR*)0xAF0116)
//        THE STRIDE OF THE MAP)
#define TL2_MAP_Y_STRIDE_H        ((VOLATILE unsigned char FAR*)0xAF0117)
//TL2_RESERVED_0            ((VOLATILE unsigned char FAR*)0xAF0128)
//TL2_RESERVED_1            ((VOLATILE unsigned char FAR*)0xAF0129)
//TL2_RESERVED_2            ((VOLATILE unsigned char FAR*)0xAF012A)
//TL2_RESERVED_3            ((VOLATILE unsigned char FAR*)0xAF012B)
//TL2_RESERVED_4            ((VOLATILE unsigned char FAR*)0xAF012C)
//TL2_RESERVED_5            ((VOLATILE unsigned char FAR*)0xAF012D)
//TL2_RESERVED_6            ((VOLATILE unsigned char FAR*)0xAF012E)
//TL2_RESERVED_7            ((VOLATILE unsigned char FAR*)0xAF012F)
//TILE MAP LAYER 3 REGISTERS)
#define TL3_CONTROL_REG           ((VOLATILE unsigned char FAR*)0xAF0118)
//        BIT[0] - ENABLE, BIT[3:1] - LUT SELECT,)
#define TL3_START_ADDY_L          ((VOLATILE unsigned char FAR*)0xAF0119)
//        NOT USED RIGHT NOW - STARTING ADDRESS TO WHERE IS THE MAP)
#define TL3_START_ADDY_M          ((VOLATILE unsigned char FAR*)0xAF011A)
#define TL3_START_ADDY_H          ((VOLATILE unsigned char FAR*)0xAF011B)
#define TL3_MAP_X_STRIDE_L        ((VOLATILE unsigned char FAR*)0xAF011C)
//        THE STRIDE OF THE MAP)
#define TL3_MAP_X_STRIDE_H        ((VOLATILE unsigned char FAR*)0xAF011D)
#define TL3_MAP_Y_STRIDE_L        ((VOLATILE unsigned char FAR*)0xAF011E)
//        THE STRIDE OF THE MAP)
#define TL3_MAP_Y_STRIDE_H        ((VOLATILE unsigned char FAR*)0xAF011F)
//TL3_RESERVED_0            ((VOLATILE unsigned char FAR*)0xAF0138)
//TL3_RESERVED_1            ((VOLATILE unsigned char FAR*)0xAF0139)
//TL3_RESERVED_2            ((VOLATILE unsigned char FAR*)0xAF013A)
//TL3_RESERVED_3            ((VOLATILE unsigned char FAR*)0xAF013B)
//TL3_RESERVED_4            ((VOLATILE unsigned char FAR*)0xAF013C)
//TL3_RESERVED_5            ((VOLATILE unsigned char FAR*)0xAF013D)
//TL3_RESERVED_6            ((VOLATILE unsigned char FAR*)0xAF013E)
//TL3_RESERVED_7            ((VOLATILE unsigned char FAR*)0xAF013F)
//BITMAP REGISTERS)
#define BM_CONTROL_REG            ((VOLATILE unsigned char FAR*)0xAF0140)
#define BM_START_ADDY_L           ((VOLATILE unsigned char FAR*)0xAF0141)
#define BM_START_ADDY_M           ((VOLATILE unsigned char FAR*)0xAF0142)
#define BM_START_ADDY_H           ((VOLATILE unsigned char FAR*)0xAF0143)
#define BM_X_SIZE_L               ((VOLATILE unsigned char FAR*)0xAF0144)
#define BM_X_SIZE_H               ((VOLATILE unsigned char FAR*)0xAF0145)
#define BM_Y_SIZE_L               ((VOLATILE unsigned char FAR*)0xAF0146)
#define BM_Y_SIZE_H               ((VOLATILE unsigned char FAR*)0xAF0147)

//#define ASM_BM_CONTROL_REG           $AF0140
//#define ASM_BM_START_ADDY_L          $AF0141
//#define ASM_BM_START_ADDY_M          $AF0142
//#define ASM_BM_START_ADDY_H          $AF0143
//#define ASM_BM_X_SIZE_L              $AF0144
//#define ASM_BM_X_SIZE_H              $AF0145
//#define ASM_BM_Y_SIZE_L              $AF0146
//#define ASM_BM_Y_SIZE_H              $AF0147

#define BM_RESERVED_0             ((VOLATILE unsigned char FAR*)0xAF0148)
#define BM_RESERVED_1             ((VOLATILE unsigned char FAR*)0xAF0149)
#define BM_RESERVED_2             ((VOLATILE unsigned char FAR*)0xAF014A)
#define BM_RESERVED_3             ((VOLATILE unsigned char FAR*)0xAF014B)
#define BM_RESERVED_4             ((VOLATILE unsigned char FAR*)0xAF014C)
#define BM_RESERVED_5             ((VOLATILE unsigned char FAR*)0xAF014D)
#define BM_RESERVED_6             ((VOLATILE unsigned char FAR*)0xAF014E)
#define BM_RESERVED_7             ((VOLATILE unsigned char FAR*)0xAF014F)
//SPRITE REGISTERS)
// BIT FIELD DEFINITION FOR THE CONTROL REGISTER)
#define SPRITE_ENABLE               ((VOLATILE unsigned char FAR*)0x01)
#define SPRITE_LUT0                 ((VOLATILE unsigned char FAR*)0x02)
#define SPRITE_LUT1                 ((VOLATILE unsigned char FAR*)0x04)
#define SPRITE_LUT2                 ((VOLATILE unsigned char FAR*)0x08)
#define SPRITE_DEPTH0               ((VOLATILE unsigned char FAR*)0x10)
#define SPRITE_DEPTH1               ((VOLATILE unsigned char FAR*)0x20)
#define SPRITE_DEPTH2               ((VOLATILE unsigned char FAR*)0x40)

// SPRITE 0 (HIGHEST PRIORITY))
#define SP00_CONTROL_REG          ((VOLATILE unsigned char FAR*)0xAF0200)
#define SP00_ADDY_PTR_L           ((VOLATILE unsigned char FAR*)0xAF0201)
#define SP00_ADDY_PTR_M           ((VOLATILE unsigned char FAR*)0xAF0202)
#define SP00_ADDY_PTR_H           ((VOLATILE unsigned char FAR*)0xAF0203)
#define SP00_X_POS_L              ((VOLATILE unsigned char FAR*)0xAF0204)
#define SP00_X_POS_H              ((VOLATILE unsigned char FAR*)0xAF0205)
#define SP00_Y_POS_L              ((VOLATILE unsigned char FAR*)0xAF0206)
#define SP00_Y_POS_H              ((VOLATILE unsigned char FAR*)0xAF0207)
// SPRITE 1)
#define SP01_CONTROL_REG          ((VOLATILE unsigned char FAR*)0xAF0208)
#define SP01_ADDY_PTR_L           ((VOLATILE unsigned char FAR*)0xAF0209)
#define SP01_ADDY_PTR_M           ((VOLATILE unsigned char FAR*)0xAF020A)
#define SP01_ADDY_PTR_H           ((VOLATILE unsigned char FAR*)0xAF020B)
#define SP01_X_POS_L              ((VOLATILE unsigned char FAR*)0xAF020C)
#define SP01_X_POS_H              ((VOLATILE unsigned char FAR*)0xAF020D)
#define SP01_Y_POS_L              ((VOLATILE unsigned char FAR*)0xAF020E)
#define SP01_Y_POS_H              ((VOLATILE unsigned char FAR*)0xAF020F)
// SPRITE 2)
#define SP02_CONTROL_REG          ((VOLATILE unsigned char FAR*)0xAF0210)
#define SP02_ADDY_PTR_L           ((VOLATILE unsigned char FAR*)0xAF0211)
#define SP02_ADDY_PTR_M           ((VOLATILE unsigned char FAR*)0xAF0212)
#define SP02_ADDY_PTR_H           ((VOLATILE unsigned char FAR*)0xAF0213)
#define SP02_X_POS_L              ((VOLATILE unsigned char FAR*)0xAF0214)
#define SP02_X_POS_H              ((VOLATILE unsigned char FAR*)0xAF0215)
#define SP02_Y_POS_L              ((VOLATILE unsigned char FAR*)0xAF0216)
#define SP02_Y_POS_H              ((VOLATILE unsigned char FAR*)0xAF0217)
// SPRITE 3)
#define SP03_CONTROL_REG          ((VOLATILE unsigned char FAR*)0xAF0218)
#define SP03_ADDY_PTR_L           ((VOLATILE unsigned char FAR*)0xAF0219)
#define SP03_ADDY_PTR_M           ((VOLATILE unsigned char FAR*)0xAF021A)
#define SP03_ADDY_PTR_H           ((VOLATILE unsigned char FAR*)0xAF021B)
#define SP03_X_POS_L              ((VOLATILE unsigned char FAR*)0xAF021C)
#define SP03_X_POS_H              ((VOLATILE unsigned char FAR*)0xAF021D)
#define SP03_Y_POS_L              ((VOLATILE unsigned char FAR*)0xAF021E)
#define SP03_Y_POS_H              ((VOLATILE unsigned char FAR*)0xAF021F)
// SPRITE 4)
#define SP04_CONTROL_REG          ((VOLATILE unsigned char FAR*)0xAF0220)
#define SP04_ADDY_PTR_L           ((VOLATILE unsigned char FAR*)0xAF0221)
#define SP04_ADDY_PTR_M           ((VOLATILE unsigned char FAR*)0xAF0222)
#define SP04_ADDY_PTR_H           ((VOLATILE unsigned char FAR*)0xAF0223)
#define SP04_X_POS_L              ((VOLATILE unsigned char FAR*)0xAF0224)
#define SP04_X_POS_H              ((VOLATILE unsigned char FAR*)0xAF0225)
#define SP04_Y_POS_L              ((VOLATILE unsigned char FAR*)0xAF0226)
#define SP04_Y_POS_H              ((VOLATILE unsigned char FAR*)0xAF0227)
// SPRITE 5)
#define SP05_CONTROL_REG          ((VOLATILE unsigned char FAR*)0xAF0228)
#define SP05_ADDY_PTR_L           ((VOLATILE unsigned char FAR*)0xAF0229)
#define SP05_ADDY_PTR_M           ((VOLATILE unsigned char FAR*)0xAF022A)
#define SP05_ADDY_PTR_H           ((VOLATILE unsigned char FAR*)0xAF022B)
#define SP05_X_POS_L              ((VOLATILE unsigned char FAR*)0xAF022C)
#define SP05_X_POS_H              ((VOLATILE unsigned char FAR*)0xAF022D)
#define SP05_Y_POS_L              ((VOLATILE unsigned char FAR*)0xAF022E)
#define SP05_Y_POS_H              ((VOLATILE unsigned char FAR*)0xAF022F)
// SPRITE 6)
#define SP06_CONTROL_REG          ((VOLATILE unsigned char FAR*)0xAF0230)
#define SP06_ADDY_PTR_L           ((VOLATILE unsigned char FAR*)0xAF0231)
#define SP06_ADDY_PTR_M           ((VOLATILE unsigned char FAR*)0xAF0232)
#define SP06_ADDY_PTR_H           ((VOLATILE unsigned char FAR*)0xAF0233)
#define SP06_X_POS_L              ((VOLATILE unsigned char FAR*)0xAF0234)
#define SP06_X_POS_H              ((VOLATILE unsigned char FAR*)0xAF0235)
#define SP06_Y_POS_L              ((VOLATILE unsigned char FAR*)0xAF0236)
#define SP06_Y_POS_H              ((VOLATILE unsigned char FAR*)0xAF0237)
// SPRITE 7)
#define SP07_CONTROL_REG          ((VOLATILE unsigned char FAR*)0xAF0238)
#define SP07_ADDY_PTR_L           ((VOLATILE unsigned char FAR*)0xAF0239)
#define SP07_ADDY_PTR_M           ((VOLATILE unsigned char FAR*)0xAF023A)
#define SP07_ADDY_PTR_H           ((VOLATILE unsigned char FAR*)0xAF023B)
#define SP07_X_POS_L              ((VOLATILE unsigned char FAR*)0xAF023C)
#define SP07_X_POS_H              ((VOLATILE unsigned char FAR*)0xAF023D)
#define SP07_Y_POS_L              ((VOLATILE unsigned char FAR*)0xAF023E)
#define SP07_Y_POS_H              ((VOLATILE unsigned char FAR*)0xAF023F)
// SPRITE 8)
#define SP08_CONTROL_REG          ((VOLATILE unsigned char FAR*)0xAF0240)
#define SP08_ADDY_PTR_L           ((VOLATILE unsigned char FAR*)0xAF0241)
#define SP08_ADDY_PTR_M           ((VOLATILE unsigned char FAR*)0xAF0242)
#define SP08_ADDY_PTR_H           ((VOLATILE unsigned char FAR*)0xAF0243)
#define SP08_X_POS_L              ((VOLATILE unsigned char FAR*)0xAF0244)
#define SP08_X_POS_H              ((VOLATILE unsigned char FAR*)0xAF0245)
#define SP08_Y_POS_L              ((VOLATILE unsigned char FAR*)0xAF0246)
#define SP08_Y_POS_H              ((VOLATILE unsigned char FAR*)0xAF0247)
// SPRITE 9)
#define SP09_CONTROL_REG          ((VOLATILE unsigned char FAR*)0xAF0248)
#define SP09_ADDY_PTR_L           ((VOLATILE unsigned char FAR*)0xAF0249)
#define SP09_ADDY_PTR_M           ((VOLATILE unsigned char FAR*)0xAF024A)
#define SP09_ADDY_PTR_H           ((VOLATILE unsigned char FAR*)0xAF024B)
#define SP09_X_POS_L              ((VOLATILE unsigned char FAR*)0xAF024C)
#define SP09_X_POS_H              ((VOLATILE unsigned char FAR*)0xAF024D)
#define SP09_Y_POS_L              ((VOLATILE unsigned char FAR*)0xAF024E)
#define SP09_Y_POS_H              ((VOLATILE unsigned char FAR*)0xAF024F)
// SPRITE 10)
#define SP10_CONTROL_REG          ((VOLATILE unsigned char FAR*)0xAF0250)
#define SP10_ADDY_PTR_L           ((VOLATILE unsigned char FAR*)0xAF0251)
#define SP10_ADDY_PTR_M           ((VOLATILE unsigned char FAR*)0xAF0252)
#define SP10_ADDY_PTR_H           ((VOLATILE unsigned char FAR*)0xAF0253)
#define SP10_X_POS_L              ((VOLATILE unsigned char FAR*)0xAF0254)
#define SP10_X_POS_H              ((VOLATILE unsigned char FAR*)0xAF0255)
#define SP10_Y_POS_L              ((VOLATILE unsigned char FAR*)0xAF0256)
#define SP10_Y_POS_H              ((VOLATILE unsigned char FAR*)0xAF0257)
// SPRITE 11)
#define SP11_CONTROL_REG          ((VOLATILE unsigned char FAR*)0xAF0258)
#define SP11_ADDY_PTR_L           ((VOLATILE unsigned char FAR*)0xAF0259)
#define SP11_ADDY_PTR_M           ((VOLATILE unsigned char FAR*)0xAF025A)
#define SP11_ADDY_PTR_H           ((VOLATILE unsigned char FAR*)0xAF025B)
#define SP11_X_POS_L              ((VOLATILE unsigned char FAR*)0xAF025C)
#define SP11_X_POS_H              ((VOLATILE unsigned char FAR*)0xAF025D)
#define SP11_Y_POS_L              ((VOLATILE unsigned char FAR*)0xAF025E)
#define SP11_Y_POS_H              ((VOLATILE unsigned char FAR*)0xAF025F)
// SPRITE 12)
#define SP12_CONTROL_REG          ((VOLATILE unsigned char FAR*)0xAF0260)
#define SP12_ADDY_PTR_L           ((VOLATILE unsigned char FAR*)0xAF0261)
#define SP12_ADDY_PTR_M           ((VOLATILE unsigned char FAR*)0xAF0262)
#define SP12_ADDY_PTR_H           ((VOLATILE unsigned char FAR*)0xAF0263)
#define SP12_X_POS_L              ((VOLATILE unsigned char FAR*)0xAF0264)
#define SP12_X_POS_H              ((VOLATILE unsigned char FAR*)0xAF0265)
#define SP12_Y_POS_L              ((VOLATILE unsigned char FAR*)0xAF0266)
#define SP12_Y_POS_H              ((VOLATILE unsigned char FAR*)0xAF0267)
// SPRITE 13)
#define SP13_CONTROL_REG          ((VOLATILE unsigned char FAR*)0xAF0268)
#define SP13_ADDY_PTR_L           ((VOLATILE unsigned char FAR*)0xAF0269)
#define SP13_ADDY_PTR_M           ((VOLATILE unsigned char FAR*)0xAF026A)
#define SP13_ADDY_PTR_H           ((VOLATILE unsigned char FAR*)0xAF026B)
#define SP13_X_POS_L              ((VOLATILE unsigned char FAR*)0xAF026C)
#define SP13_X_POS_H              ((VOLATILE unsigned char FAR*)0xAF026D)
#define SP13_Y_POS_L              ((VOLATILE unsigned char FAR*)0xAF026E)
#define SP13_Y_POS_H              ((VOLATILE unsigned char FAR*)0xAF026F)
// SPRITE 14)
#define SP14_CONTROL_REG          ((VOLATILE unsigned char FAR*)0xAF0270)
#define SP14_ADDY_PTR_L           ((VOLATILE unsigned char FAR*)0xAF0271)
#define SP14_ADDY_PTR_M           ((VOLATILE unsigned char FAR*)0xAF0272)
#define SP14_ADDY_PTR_H           ((VOLATILE unsigned char FAR*)0xAF0273)
#define SP14_X_POS_L              ((VOLATILE unsigned char FAR*)0xAF0274)
#define SP14_X_POS_H              ((VOLATILE unsigned char FAR*)0xAF0275)
#define SP14_Y_POS_L              ((VOLATILE unsigned char FAR*)0xAF0276)
#define SP14_Y_POS_H              ((VOLATILE unsigned char FAR*)0xAF0277)
// SPRITE 15)
#define SP15_CONTROL_REG          ((VOLATILE unsigned char FAR*)0xAF0278)
#define SP15_ADDY_PTR_L           ((VOLATILE unsigned char FAR*)0xAF0279)
#define SP15_ADDY_PTR_M           ((VOLATILE unsigned char FAR*)0xAF027A)
#define SP15_ADDY_PTR_H           ((VOLATILE unsigned char FAR*)0xAF027B)
#define SP15_X_POS_L              ((VOLATILE unsigned char FAR*)0xAF027C)
#define SP15_X_POS_H              ((VOLATILE unsigned char FAR*)0xAF027D)
#define SP15_Y_POS_L              ((VOLATILE unsigned char FAR*)0xAF027E)
#define SP15_Y_POS_H              ((VOLATILE unsigned char FAR*)0xAF027F)
// SPRITE 16)
#define SP16_CONTROL_REG          ((VOLATILE unsigned char FAR*)0xAF0280)
#define SP16_ADDY_PTR_L           ((VOLATILE unsigned char FAR*)0xAF0281)
#define SP16_ADDY_PTR_M           ((VOLATILE unsigned char FAR*)0xAF0282)
#define SP16_ADDY_PTR_H           ((VOLATILE unsigned char FAR*)0xAF0283)
#define SP16_X_POS_L              ((VOLATILE unsigned char FAR*)0xAF0284)
#define SP16_X_POS_H              ((VOLATILE unsigned char FAR*)0xAF0285)
#define SP16_Y_POS_L              ((VOLATILE unsigned char FAR*)0xAF0286)
#define SP16_Y_POS_H              ((VOLATILE unsigned char FAR*)0xAF0287)
// SPRITE 17)
#define SP17_CONTROL_REG          ((VOLATILE unsigned char FAR*)0xAF0288)
#define SP17_ADDY_PTR_L           ((VOLATILE unsigned char FAR*)0xAF0289)
#define SP17_ADDY_PTR_M           ((VOLATILE unsigned char FAR*)0xAF028A)
#define SP17_ADDY_PTR_H           ((VOLATILE unsigned char FAR*)0xAF028B)
#define SP17_X_POS_L              ((VOLATILE unsigned char FAR*)0xAF028C)
#define SP17_X_POS_H              ((VOLATILE unsigned char FAR*)0xAF028D)
#define SP17_Y_POS_L              ((VOLATILE unsigned char FAR*)0xAF028E)
#define SP17_Y_POS_H              ((VOLATILE unsigned char FAR*)0xAF028F)
// DMA CONTROLLER 0xAF0400 - 0xAF04FF)
#define VDMA_CONTROL_REG          ((unsigned char *)0xAF0400)
#define VDMA_COUNT_REG_L          ((VOLATILE unsigned char FAR*)0xAF0401)
#define VDMA_COUNT_REG_M          ((VOLATILE unsigned char FAR*)0xAF0402)
#define VDMA_COUNT_REG_H          ((VOLATILE unsigned char FAR*)0xAF0403)
#define VDMA_DATA_2_WRITE_L       ((VOLATILE unsigned char FAR*)0xAF0404)
#define VDMA_DATA_2_WRITE_H       ((VOLATILE unsigned char FAR*)0xAF0405)
#define VDMA_STRIDE_L             ((VOLATILE unsigned char FAR*)0xAF0406)
#define VDMA_STRIDE_H             ((VOLATILE unsigned char FAR*)0xAF0407)
//#define VDMA_SRC_ADDY_L           ((VOLATILE unsigned char FAR*)0xAF0408)
//#define VDMA_SRC_ADDY_M           ((VOLATILE unsigned char FAR*)0xAF0409)
//#define VDMA_SRC_ADDY_H           ((VOLATILE unsigned char FAR*)0xAF040A)
#define VDMA_RESERVED_0           ((VOLATILE unsigned char FAR*)0xAF040B)
//#define VDMA_DST_ADDY_L           ((VOLATILE unsigned char FAR*)0xAF040C)
//#define VDMA_DST_ADDY_M           ((VOLATILE unsigned char FAR*)0xAF040D)
//#define VDMA_DST_ADDY_H           ((VOLATILE unsigned char FAR*)0xAF040E)
#define VDMA_RESERVED_1           ((VOLATILE unsigned char FAR*)0xAF040F)

// DMA CONTROLLER $AF0400 - $AF04FF
// BIT FIELD DEFINITION
#define VDMA_CTRL_ENABLE        ((char)0x01)
#define VDMA_CTRL_1D_2D         ((char)0x02)
// 0 - 1D (LINEAR) TRANSFER , 1 - 2D (BLOCK) TRANSFER
#define VDMA_CTRL_TRF_FILL      ((char)0x04)
// 0 - TRANSFER SRC -> DST, 1 - FILL DESTINATION WITH "BYTE2WRITE"
#define VDMA_CTRL_INT_ENABLE    ((char)0x08)
// SET TO 1 TO ENABLE THE GENERATION OF INTERRUPT WHEN THE TRANSFER IS OVER.
#define VDMA_CTRL_START_TRF     ((char)0x80)
// SET TO 1 TO BEGIN PROCESS, NEED TO CLEARED BEFORE, YOU CAN START ANOTHER

// WRITE ONLY - BYTE TO WRITE IN THE FILL FUNCTION
#define VDMA_BYTE_2_WRITE       ((unsigned char *)0xAF0401)
// READ ONLY
#define VDMA_STATUS_REG         ((VOLATILE unsigned char FAR*)0xAF0401)

//STATUS BIT FIELD DEFINITION
#define VDMA_STAT_SIZE_ERR      ((char)0x01)
// IF SET TO 1, OVERALL SIZE IS INVALID
#define VDMA_STAT_DST_ADD_ERR   ((char)0x02)
// IF SET TO 1, DESTINATION ADDRESS INVALID
#define VDMA_STAT_SRC_ADD_ERR   ((char)0x04)
// IF SET TO 1, SOURCE ADDRESS INVALID
// IF SET TO 1, VDMA TRANSFER IN PROGRESS (THIS INHIBIT CPU ACCESS TO MEM)
#define VDMA_STAT_VDMA_IPS      ((char)0x80)
// LET ME REPEAT, DON'T ACCESS THE VIDEO MEMORY THEN THERE IS A VDMA IN PROGRESS
// THIS NEEDS TO BE WITHIN VICKY'S RANGE ($00_0000 - $3F_0000)
#define VDMA_SRC_ADDY_L         ((VOLATILE unsigned char FAR*)0xAF0402)
#define VDMA_SRC_ADDY_M         ((VOLATILE unsigned char FAR*)0xAF0403)
#define VDMA_SRC_ADDY_H         ((VOLATILE unsigned char FAR*)0xAF0404)

#define VDMA_DST_ADDY_L         ((VOLATILE unsigned char FAR*)0xAF0405)
// DESTINATION POINTER WITHIN VICKY'S VIDEO MEMORY RANGE
#define VDMA_DST_ADDY_M         ((VOLATILE unsigned char FAR*)0xAF0406)
// ($00_0000 - $3F_0000)
#define VDMA_DST_ADDY_H         ((VOLATILE unsigned char FAR*)0xAF0407)
// IN 1D TRANSFER MODE
#define VDMA_SIZE_L             ((VOLATILE unsigned char FAR*)0xAF0408)
// MAXIMUM VALUE: $40:0000 (4MEGS)
#define VDMA_SIZE_M             ((VOLATILE unsigned char FAR*)0xAF0409)
#define VDMA_SIZE_H             ((VOLATILE unsigned char FAR*)0xAF040A)
#define VDMA_IGNORED            ((VOLATILE unsigned char FAR*)0xAF040B)
// IN 2D TRANSFER MODE
#define VDMA_X_SIZE_L           ((VOLATILE unsigned char FAR*)0xAF0408)
// MAXIMUM VALUE: 65535
#define VDMA_X_SIZE_H           ((VOLATILE unsigned char FAR*)0xAF0409)
#define VDMA_Y_SIZE_L           ((VOLATILE unsigned char FAR*)0xAF040A)
// MAXIMUM VALUE: 65535
#define VDMA_Y_SIZE_H           ((VOLATILE unsigned char FAR*)0xAF040B)

#define VDMA_SRC_STRIDE_L       ((VOLATILE unsigned char FAR*)0xAF040C)
// ALWAYS USE AN EVEN NUMBER ( THE ENGINE USES EVEN VER OF THAT VALUE)
#define VDMA_SRC_STRIDE_H       ((VOLATILE unsigned char FAR*)0xAF040D)
//
#define VDMA_DST_STRIDE_L       ((VOLATILE unsigned char FAR*)0xAF040E)
// ALWAYS USE AN EVEN NUMBER ( THE ENGINE USES EVEN VER OF THAT VALUE)
#define VDMA_DST_STRIDE_H       ((VOLATILE unsigned char FAR*)0xAF040F)
//

#define FG_CHAR_LUT_PTR           ((VOLATILE unsigned char FAR*)0xAF1F40)
#define BG_CHAR_LUT_PTR		    ((VOLATILE unsigned char FAR*)0xAF1F80)

#define GRPH_LUT0_PTR		 ((VOLATILE unsigned char FAR*)0xAF2000)
#define GRPH_LUT1_PTR		 ((VOLATILE unsigned char FAR*)0xAF2400)
#define GRPH_LUT2_PTR		 ((VOLATILE unsigned char FAR*)0xAF2800)
#define GRPH_LUT3_PTR		 ((VOLATILE unsigned char FAR*)0xAF2C00)
#define GRPH_LUT4_PTR		 ((VOLATILE unsigned char FAR*)0xAF3000)
#define GRPH_LUT5_PTR		 ((VOLATILE unsigned char FAR*)0xAF3400)
#define GRPH_LUT6_PTR		 ((VOLATILE unsigned char FAR*)0xAF3800)
#define GRPH_LUT7_PTR		 ((VOLATILE unsigned char FAR*)0xAF3C00)

#define GAMMA_B_LUT_PTR		 ((VOLATILE unsigned char FAR*)0xAF4000)
#define GAMMA_G_LUT_PTR		 ((VOLATILE unsigned char FAR*)0xAF4100)
#define GAMMA_R_LUT_PTR		 ((VOLATILE unsigned char FAR*)0xAF4200)

#define TILE_MAP0       		 ((VOLATILE unsigned char FAR*)0xAF5000)
#define TILE_MAP1                 ((VOLATILE unsigned char FAR*)0xAF5800)
#define TILE_MAP2                 ((VOLATILE unsigned char FAR*)0xAF6000)
#define TILE_MAP3                 ((VOLATILE unsigned char FAR*)0xAF6800)

#define FONT_MEMORY_BANK          ((VOLATILE unsigned char FAR*)0xAF8000)
#define CS_TEXT_MEM_PTR           ((VOLATILE unsigned char FAR*)0xAFA000)
#define CS_COLOR_MEM_PTR          ((VOLATILE unsigned char FAR*)0xAFC000)

#define BMP_X_SIZE        ((VOLATILE unsigned char FAR*)0x000040)
//2 BYTES)
#define BM_CLEAR_SCRN_X   ((VOLATILE unsigned char FAR*)0x000040)
#define BMP_Y_SIZE        ((VOLATILE unsigned char FAR*)0x000042)
//2 BYTES)
#define BM_CLEAR_SCRN_Y   ((VOLATILE unsigned char FAR*)0x000042)
#define BMP_PRSE_SRC_PTR  ((VOLATILE unsigned char FAR*)0x000044)
//3 BYTES)
#define BMP_PRSE_DST_PTR  ((VOLATILE unsigned char FAR*)0x000048)
//3 BYTES)
#define BMP_COLOR_PALET   ((VOLATILE unsigned char FAR*)0x00004C)
//2 BYTES)
#define SCRN_X_STRIDE     ((VOLATILE unsigned char FAR*)0x00004E)
//2 BYTES, BASICALLY HOW MANY PIXEL ACCROSS IN BITMAP MODE)
#define BMP_FILE_SIZE     ((VOLATILE unsigned char FAR*)0x000050)
//4 BYTES)
#define BMP_POSITION_X    ((VOLATILE unsigned char FAR*)0x000054)
//2 BYTES WHERE, THE BMP WILL BE POSITION ON THE X AXIS)
#define BMP_POSITION_Y    ((VOLATILE unsigned char FAR*)0x000056)
//2 BYTES WHERE, THE BMP WILL BE POSITION ON THE Y AXIS)
#define BMP_PALET_CHOICE  ((VOLATILE unsigned char FAR*)0x000058)

#define BTX_START                 ((VOLATILE unsigned char FAR*)0xAFE000)
//BEATRIX REGISTERS)
#define BTX_END                   ((VOLATILE unsigned char FAR*)0xAFFFFF)

//#define MOUSE_PTR				  ((VOLATILE unsigned char FAR*)0xAF0500)
#define MOUSE_PTR_GRAP0_START     ((VOLATILE unsigned char FAR*)0xAF0500)
//  16 x 16  256 Pixels (Grey Scale) 0  Transparent, 1  Black , 255  White
#define MOUSE_PTR_GRAP0_END       ((VOLATILE unsigned char FAR*)0xAF05FF)
//  Pointer 0
#define MOUSE_PTR_GRAP1_START     ((VOLATILE unsigned char FAR*)0xAF0600)
#define FPGA_YOR                 ((VOLATILE unsigned char FAR*)0xAF070F)
#define MOUSE_PTR_GRAP1_END       ((VOLATILE unsigned char FAR*)0xAF06FF)
//  Pointer 1

#define MOUSE_PTR_CTRL_REG_L     ((VOLATILE unsigned char FAR*)0xAF0700)
//  Bit[0] Enable, Bit[1]  0  ( 0  Pointer0, 1  Pointer1)
#define MOUSE_PTR_CTRL_REG_H     ((VOLATILE unsigned char FAR*)0xAF0701)
//
#define MOUSE_PTR_X_POS_L        ((VOLATILE unsigned char FAR*)0xAF0702)
//  X Position (0 - 639) (Can only read now) Writing will have no effect
#define MOUSE_PTR_X_POS_H        ((VOLATILE unsigned char FAR*)0xAF0703)
//
#define MOUSE_PTR_Y_POS_L        ((VOLATILE unsigned char FAR*)0xAF0704)
//  Y Position (0 - 479) (Can only read now) Writing will have no effect
#define MOUSE_PTR_Y_POS_H        ((VOLATILE unsigned char FAR*)0xAF0705)
//
#define MOUSE_PTR_BYTE0          ((VOLATILE unsigned char FAR*)0xAF0706)
//  Byte 0 of Mouse Packet (you must write 3 Bytes)
#define MOUSE_PTR_BYTE1          ((VOLATILE unsigned char FAR*)0xAF0707)
//  Byte 1 of Mouse Packet (if you don't, then )
#define MOUSE_PTR_BYTE2          ((VOLATILE unsigned char FAR*)0xAF0708)
//  Byte 2 of Mouse Packet (state Machine will be jammed in 1 state)
// (And the mouse won't work)

#define MOUSE_PTR        		 ((VOLATILE unsigned char FAR*)0x0000E0)

//#define MOUSE_PTR_BYTE0_ASM         $AF0706
//#define MOUSE_PTR_BYTE1_ASM         $AF0707
//#define MOUSE_PTR_BYTE2_ASM         $AF0708

#define MOUSE_POS_X_LO  ((VOLATILE unsigned char FAR*)0x0000E1)
#define MOUSE_POS_X_HI  ((VOLATILE unsigned char FAR*)0x0000E2)
#define MOUSE_POS_Y_LO  ((VOLATILE unsigned char FAR*)0x0000E3)
#define MOUSE_POS_Y_HI  ((VOLATILE unsigned char FAR*)0x0000E4)

#define C256F_MODEL_MAJOR        ((VOLATILE unsigned char FAR*)0xAF070B)
#define C256F_MODEL_MINOR        ((VOLATILE unsigned char FAR*)0xAF070C)
#define FPGA_DOR                 ((VOLATILE unsigned char FAR*)0xAF070D)
#define FPGA_MOR                 ((VOLATILE unsigned char FAR*)0xAF070E)

#define	KEYBOARD_SCAN_CODE		 ((VOLATILE unsigned char FAR*)0xAF115F)
#define	KEY_BUFFER_RPOS  		 ((VOLATILE unsigned char FAR*)0x000F40)
#define	KEY_BUFFER       		 ((VOLATILE unsigned char FAR*)0x000F00)

#define	JOYSTICK0     ((VOLATILE unsigned char FAR*)0xAFE800)
#define	JOYSTICK1     ((VOLATILE unsigned char FAR*)0xAFE801)
#define	JOYSTICK2     ((VOLATILE unsigned char FAR*)0xAFE802)
#define	JOYSTICK3     ((VOLATILE unsigned char FAR*)0xAFE803)

// clock
#define	RTC_SEC       ((VOLATILE unsigned char FAR*)0xAF0800 )
//Seconds Register
#define	RTC_SEC_ALARM ((VOLATILE unsigned char FAR*)0xAF0801 )
//Seconds Alarm Register
#define	RTC_MIN       ((VOLATILE unsigned char FAR*)0xAF0802 )
//Minutes Register
#define	RTC_MIN_ALARM ((VOLATILE unsigned char FAR*)0xAF0803 )
//Minutes Alarm Register
#define	RTC_HRS       ((VOLATILE unsigned char FAR*)0xAF0804 )
//Hours Register
#define	RTC_HRS_ALARM ((VOLATILE unsigned char FAR*)0xAF0805 )
//Hours Alarm Register
#define	RTC_DAY       ((VOLATILE unsigned char FAR*)0xAF0806 )
//Day Register
#define	RTC_DAY_ALARM ((VOLATILE unsigned char FAR*)0xAF0807 )
//Day Alarm Register
#define	RTC_DOW       ((VOLATILE unsigned char FAR*)0xAF0808 )
//Day of Week Register
#define	RTC_MONTH     ((VOLATILE unsigned char FAR*)0xAF0809 )
//Month Register
#define	RTC_YEAR      ((VOLATILE unsigned char FAR*)0xAF080A )
//Year Register
#define	RTC_RATES     ((VOLATILE unsigned char FAR*)0xAF080B )
//Rates Register
#define	RTC_ENABLE    ((VOLATILE unsigned char FAR*)0xAF080C )
//Enables Register
#define	RTC_FLAGS     ((VOLATILE unsigned char FAR*)0xAF080D )
//Flags Register
#define	RTC_CTRL      ((VOLATILE unsigned char FAR*)0xAF080E )
//Control Register
#define	RTC_CENTURY   ((VOLATILE unsigned char FAR*)0xAF080F )
//Century Register

//[0] - Enable Line 0, [1] -Enable Line 1
#define	VKY_LINE_IRQ_CTRL_REG   ((VOLATILE unsigned char FAR*)0xAF001B)
//Write Only [7:0]
#define	VKY_LINE0_CMP_VALUE_LO  ((VOLATILE unsigned char FAR*)0xAF001C)
//Write Only [3:0]
#define	VKY_LINE0_CMP_VALUE_HI  ((VOLATILE unsigned char FAR*)0xAF001D )
//Write Only [7:0]
#define	VKY_LINE1_CMP_VALUE_LO  ((VOLATILE unsigned char FAR*)0xAF001E )
//Write Only [3:0]
#define	VKY_LINE1_CMP_VALUE_HI  ((VOLATILE unsigned char FAR*)0xAF001F )

#define UART1_BASE    ((unsigned char FAR*)0xAF13F8)
#define UART2_BASE 	  ((unsigned char FAR*)0xAF12F8)

#define	STATUS_PORT 	         ((char FAR*)0xAF1064)
#define	KBD_OUT_BUF 	         ((char FAR*)0xAF1060)
#define	KBD_INPT_BUF	         ((char FAR*)0xAF1060)
#define	KBD_CMD_BUF		         ((char FAR*)0xAF1064)
#define	KBD_DATA_BUF	         ((char FAR*)0xAF1060)
#define	PORT_A			         ((char FAR*)0xAF1060)
#define	PORT_B			         ((char FAR*)0xAF1061)

#define	BITMAP_BANK_0       		 ((VOLATILE unsigned char FAR*)0xB00000)
#define	BITMAP_BANK_1       		 ((VOLATILE unsigned char FAR*)0xB10000)
#define	BITMAP_BANK_2       		 ((VOLATILE unsigned char FAR*)0xB20000)
#define	BITMAP_BANK_3       		 ((VOLATILE unsigned char FAR*)0xB30000)
#define	BITMAP_BANK_4       		 ((VOLATILE unsigned char FAR*)0xB40000)
#define	BITMAP_BANK_5       		 ((VOLATILE unsigned char FAR*)0xB50000)

#define	SHADOW_BANK_0       		 ((VOLATILE unsigned char FAR*)FXOS_BUILD_SHADOW_BANK_0)
#define	SHADOW_BANK_1       		 ((VOLATILE unsigned char FAR*)FXOS_BUILD_SHADOW_BANK_1)
#define	SHADOW_BANK_2       		 ((VOLATILE unsigned char FAR*)FXOS_BUILD_SHADOW_BANK_2)
#define	SHADOW_BANK_3       		 ((VOLATILE unsigned char FAR*)FXOS_BUILD_SHADOW_BANK_3)
#define	SHADOW_BANK_4       		 ((VOLATILE unsigned char FAR*)FXOS_BUILD_SHADOW_BANK_4)
#define	SHADOW_BANK_5       		 ((VOLATILE unsigned char FAR*)FXOS_BUILD_SHADOW_BANK_5)




#define	BITMAP_PAGE_START       	 (0xB00000)


#define	CH_CMD_SET_MODE       (0x15)

//    ; Get Interrupt Status
#define	CH_CMD_GET_STATUS     (0x22)
#define	CH_CMD_RD_DATA0       (0x27)
#define	CH_CMD_SET_FILENAME   (0x2F)
#define	CH_CMD_DISK_MOUNT     (0x31)
#define	CH_CMD_FILE_OPEN      (0x32)
#define	CH_CMD_FILE_ENUM_GO   (0x33)
#define	CH_CMD_FILE_CLOSE     (0x36)
#define	CH_CMD_BYTE_LOCATE    (0x39)
#define	CH_CMD_BYTE_READ      (0x3A)
#define	CH_CMD_BYTE_RD_GO     (0x3B)
#define	CH_CMD_BYTE_WRITE     (0x3C)
#define	CH_CMD_BYTE_WR_GO     (0x3D)

//; Interruption state in SD card
#define	CH376S_STAT_SUCCESS  (0x14)
#define	CH376S_STAT_BUF_OVF  (0x17)
#define	CH376S_STAT_DSK_RD   (0x1D)
#define	CH376S_STAT_DSK_WR   (0x1E)
//; File system notice code in SD card
#define	CH376S_ERR_OPEN_DIR  (0x41)
#define	CH376S_ERR_MISS_FIL  (0x42)
#define	CH376S_ERR_FND_NAME  (0x43)
//;File system error code in SD card
#define	CH376S_ERR_DISK_DSC  (0x82)
#define	CH376S_ERR_LRG_SEC   (0x84)
#define	CH376S_ERR_PARTTION  (0x92)
#define	CH376S_ERR_NOT_FORM  (0xA1)
#define	CH376S_ERR_DSK_FULL  (0xB1)
#define	CH376S_FDT_OVER      (0xB2)
#define	CH376S_FILE_CLOSED   (0xB4)
/*
//
// CH376S
//
#define	DEF_NULL_CHAR         (0x00)
#define	DEF_WILDCARD_CHAR     (0x2A)
#define	DEF_SEPAR_CHAR1       (0x5C)
#define	DEF_SEPAR_CHAR2       (0x2F)

//; CH376S Commands
//     ; Read 8Bit Value
#define	CH_CMD_RD_VAR8        (0x0A)
//; Write 8Bit Value to controller
#define	CH_CMD_WR_VAR8        (0x0B)
//     ; Read 32Bit Value
#define	CH_CMD_RD_VAR32       (0x0C)
#define	CH_CMD_WR_VAR32       (0x0D)
//     ; Set the Controller's mode, in our Case in SDCARD
#define	CH_CMD_SET_MODE       (0x15)

//    ; Get Interrupt Status
#define	CH_CMD_GET_STATUS     (0x22)
#define	CH_CMD_RD_DATA0       (0x27)
#define	CH_CMD_SET_FILENAME   (0x2F)
#define	CH_CMD_DISK_MOUNT     (0x31)
#define	CH_CMD_FILE_OPEN      (0x32)
#define	CH_CMD_FILE_ENUM_GO   (0x33)
#define	CH_CMD_FILE_CLOSE     (0x36)
#define	CH_CMD_BYTE_LOCATE    (0x39)
#define	CH_CMD_BYTE_READ      (0x3A)
#define	CH_CMD_BYTE_RD_GO     (0x3B)
#define	CH_CMD_BYTE_WRITE     (0x3C)
#define	CH_CMD_BYTE_WR_GO     (0x3D)

//; Varial When Reading 8Bits or 32Bits Values From controller
#define	CH_VAR_DISK_ROOT		  	(0x44)
#define	CH_VAR_DSK_TOTAL_CLUS	  	(0x48)
#define	CH_VAR_DSK_START_LBA	  	(0x4C)
#define	CH_VAR_DSK_DAT_START	  	(0x50)
#define	CH_VAR_LBA_BUFFER		  	(0x54)
#define	CH_VAR_LBA_CURRENT			(0x58)
#define	CH_VAR_FAT_DIR_LBA			(0x5C)
#define	CH_VAR_START_CLUSTER		(0x60)
#define	CH_VAR_CURRENT_CLUST		(0x64)
#define	CH_VAR_FILE_SIZE		  	(0x68)
#define	CH_VAR_CURRENT_OFFSET		(0x6C)

#define	CH_CMD_RET_SUCCESS			(0x51)
#define	CH_CMD_RET_ABORT			(0x5F)
//; Interruption state in SD card
#define	CH376S_STAT_SUCCESS  (0x14)
#define	CH376S_STAT_BUF_OVF  (0x17)
#define	CH376S_STAT_DSK_RD   (0x1D)
#define	CH376S_STAT_DSK_WR   (0x1E)
//; File system notice code in SD card
#define	CH376S_ERR_OPEN_DIR  (0x41)
#define	CH376S_ERR_MISS_FIL  (0x42)
#define	CH376S_ERR_FND_NAME  (0x43)
//;File system error code in SD card
#define	CH376S_ERR_DISK_DSC  (0x82)
#define	CH376S_ERR_LRG_SEC   (0x84)
#define	CH376S_ERR_PARTTION  (0x92)
#define	CH376S_ERR_NOT_FORM  (0xA1)
#define	CH376S_ERR_DSK_FULL  (0xB1)
#define	CH376S_FDT_OVER      (0xB2)
#define	CH376S_FILE_CLOSED   (0xB4)
*/
#define	SDCARD_PRSNT_NO_CARD (0x00)
#define	SDCARD_PRSNT_CD      (0x01)
#define	SDCARD_PRSNT_WP      (0x02)
//; Card is present and Mounted1
#define	SDCARD_PRSNT_MNTED   (0x04)

#define SDCARD_DATA   ((LPCHAR)0xAFE808)
#define SDCARD_CMD    ((LPCHAR)0xAFE809)
// (R) SDCARD (Bit[0] = CD, Bit[1] = WP)
#define SDCARD_STAT   ((LPCHAR)0xAFE810)

//; SD Card (CH376S) Variables
// 3 Bytes Pointer to Filename to open
#define SDCARD_FILE_PTR   ((LPCHAR)0x000038)
// 2Bytes
#define SDCARD_BYTE_NUM   ((LPCHAR)0x00003C)
// 1 Byte, Indicate that the SDCard is Present and that it is Mounted
#define SDCARD_PRSNT_MNT  ((LPCHAR)0x00003F)


//////////
// FLOPPY
//////////

// Register Address
#define FDD_STATUS_A           ((LPCHAR)0xAF13F0) // Read     use in with PS2 and PS2 mode 30 noly
#define FDD_STATUS_B           ((LPCHAR)0xAF13F1) // Read
#define FDD_DIGITAL_OUTPUT     ((LPCHAR)0xAF13F2) // Read/Write
#define FDD_TAPE_DRIVER        ((LPCHAR)0xAF13F3) // Read/Write
#define FDD_MAIN_STATUS        ((LPCHAR)0xAF13F4) // Read
#define FDD_DATA_RATE_SELECT   ((LPCHAR)0xAF13F4) // Write
#define FDD_FIFO               ((LPCHAR)0xAF13F5) // Read/Write
//RESERVED_REG          0xAF13F6 // Reserved
#define FDD_DIGITAL_INPUT      ((LPCHAR)0xAF13F7) // Read
#define FDD_CONFIG_CTRL        ((LPCHAR)0xAF13F7) // Write

//-------------------------------------------------------------------------------
// Status A : PS/2 Mode  (0xAF13F0)
#define FFD_DIRECTION           0x01 // "1" Head is moving inward direction, "0" it moving outward direction
#define FDD_nWRITE_PROTECT      0x02 // "0" protected / "1" unprotected
#define FDD_nINDEX              0x04 //
#define FDD_HEAD_SELLECT        0x08 // "1" side 1 selected / "0" side 0 selected
#define FDD_nTRACK0             0x10 // "0" => head at track 0
#define FDD_STEP                0x20 //
#define FDD_INTERRUPT_PENDING   0x80 // "1" interrupt output is active

// Status A : PS/2 Modele 30 Mode (0xAF13F0)
#define FDD_nDIRECTION          0x01 // "0" Head is moving inward direction, "1" it moving outward direction
#define FDD_WRITE_PROTECT       0x02 // "1" protected / "0" unprotected
#define FDD_INDEX               0x04 //
#define FDD_nHEAD_SELLECT       0x08 // "0" side 1 selected / "1" side 0 selected
#define FDD_TRACK0              0x10 // "1" => head at track 0
//#define FDD_STEP                0x20 //
#define FDD_DMA_REQUEST         0x40 // "1" => DMA requeste pending
//#define FDD_INTERRUPT_PENDING   0x80 // "1" interrupt output is active
//-------------------------------------------------------------------------------
// Status B PS/2 Mode (0xAF13F1)
#define FDD_MOTOR_ENABLE_0      0x01 // "1" => motor enabled
#define FDD_MOTOR_ENABLE_1      0x02 // "1" => motor enabled
#define FDD_WRITE_GATE          0x04 //
#define FDD_READ_DATA_TOOGLE    0x08 //
#define FDD_WRITE_DATA_TOOGLE   0x10 //
#define FDD_DRIVER_SELLECT_0    0x20 // bit reflet the bite 0 in "Data Outpu Register"

// Status B PS/2 Model 30 Mode (0xAF13F1)
//#define FDD_WRITE_GATE          0x04 //
#define FDD_READ_DATA           0x08 //
#define FDD_WRITE_DATA          0x01 //
//#define FDD_DRIVER_SELLECT_0    0x20 //
#define FDD_nDRIVE_SELLECT_1    0x40 //
//-------------------------------------------------------------------------------
// Digital Output Register (0xAF13F2)
#define FDD_DRIVE_SEL           0x03
#define FDD_nRESET              0x04 // Set at 1 will reset the FDD write back 0 to reactivate it
#define FDD_DMAEN               0x08 // Set at 1 will active the DMA and interupt IF in PC/AT and Model 30 mode otherwise alreaddy active
#define FDD_ENABLE_MOTOR_0      0x10
#define FDD_ENABLE_MOTOR_1      0x20
//#define FDD_ENABLE_MOTOR_2      0x40 // not suported in the LPC47M10X
//#define FDD_ENABLE_MOTOR_3      0x80 // not suported in the LPC47M10X
//-------------------------------------------------------------------------------
// Tape Drive Register  (0xAF13F3)
#define FDD_TAPE_SEL            0x03
#define FDD_FLOPPY_BOOT_DRIVE   0x0C
#define FDD_DRIVE_ID            0x30
//-------------------------------------------------------------------------------
// Main Status Register (0xAF13F4 READ)
#define FDD_DRIVER_BUSY         0x03
#define FDD_CMD_BUSSY           0x10 // set to "1" when a command is in progress
#define FDD_NO_DMA              0x20
#define FDD_DIO                 0x40
#define FDD_RQM                 0x80

// Data Rate Select Register (0xAF13F4 WRITE)
#define FDD_DATA_RATE           0x03
#define FDD_PRE_COMP            0x1C
#define FDD_LOW_POWER           0x40 // write 1 to activeate
#define FDD_SOFTWARE_RESET      0x80 // write 1 to reset the controler , this bit will reset himself
//-------------------------------------------------------------------------------
// Data Register (0xAF13F5 READ)
//-------------------------------------------------------------------------------
// Digital Input register (0xAF13F6 READ ONLY)
#define FDD_nHIGH_ENSITY        0x01 // "0" if 500Kbps or 1Mbps / "1" if 250 or 300Kpbs
#define FDD_DRATE_SEL_PS2       0x06
#define FDD_DRATE_SEL_MODE_30   0x03
#define FDD_NOPREC              0x04
#define FDD_DMAEN_MODE_30       0x08
#define FDD_DSKCHG              0x80 // Disk Change state
//-------------------------------------------------------------------------------
// Configuration Control Register (0xAF13F7 WRITE)
#define FDD_DRATE_SEL           0x03
//#define FDD_NOPREC              0x04

//-------------------------------------------------------------------------------
//
// Value send back by the controler afer executing command
//
//-------------------------------------------------------------------------------
// Status register 0
#define FDD_ST0_DRIVE_SELLECT         0x03 // give the curent sellected drive
#define FDD_ST0_HEAD_ADDRESS          0x04
#define FDD_ST0_EQUIPMENT_CHeCK       0x10 // "1" if fail
#define FDD_ST0_SEEK_END              0x20
#define FDD_ST0_INTERRUPT_COE         0xC0 // "00" Normal termination
                                  // "01" Faill executing CMD
                                  // "10" Invalide CMD
                                  // "11" canceled CMD due to pooling

// Status register 1
#define FDD_ST1_MISSIG_ADDRESS_MARK   0x01
#define FDD_ST1_NOT_WRITABLE          0x02
#define FDD_ST1_NO_DATA               0x04
#define FDD_ST1_OVERRUN_UDNERRUN      0x10
#define FDD_ST1_DATTA_ERROR           0x20
#define FDD_ST1_END_OF_CYLINDER       0x80

// Status register 2
#define FDD_ST2_MISSIG_DATA_ADDRESS_MARK   0x01
#define FDD_ST2_BAD_CYLINDER          0x02
#define FDD_ST2_WRONG_CYLINDER        0x10
#define FDD_ST2_DATA_ERROR_IN_DATA_FIELD   0x20
#define FDD_ST2_CONTROL_MASK          0x40

// Status register 3
#define FDD_ST3_DRIVE_SELLECT         0x03
#define FDD_ST3_HEAD_ADDRESS          0x04
#define FDD_ST3_TRACK_0               0x10
#define FDD_ST3_WRITE_PROTECT         0x40

#define outportb(a,b)	( ((LPCHAR)a)[0]=(b) )
#define inportb(a)		( ((LPCHAR)a)[0] )


#endif


#ifndef __FX_STRINGTABLE_
#define __FX_STRINGTABLE_

#define TEXT(a)  a
#define TCHAR(a) a

////////////////////////
// CREDITS
///////////////////////
/*
>190fc5	20 20 20 20 ec a9 ec a9		greet_msg       .text $20, $20, $20, $20, $EC, $A9, $EC, $A9, $EC, $A9, $EC, $A9, $EC, $A9, "C256 FOENIX DEVELOPMENT SYSTEM",$0D
>190fcd	ec a9 ec a9 ec a9 43 32 35 36 20 46 4f 45 4e 49
>190fdd	58 20 44 45 56 45 4c 4f 50 4d 45 4e 54 20 53 59
>190fed	53 54 45 4d 0d
>190ff2	20 20 20 ec a9 ec a9 ec		                .text $20, $20, $20, $EC, $A9, $EC, $A9, $EC, $A9, $EC, $A9, $EC, $A9, $20, "Software Development Team: TBD",$0D
>190ffa	a9 ec a9 ec a9 20 53 6f 66 74 77 61 72 65 20 44
>19100a	65 76 65 6c 6f 70 6d 65 6e 74 20 54 65 61 6d 3a
>19101a	20 54 42 44 0d
>19101f	20 20 ec a9 ec a9 ec a9		                .text $20, $20, $EC, $A9, $EC, $A9, $EC, $A9, $EC, $A9, $EC, $A9, $20, $20, "Hardware platform Created by: Stefany Allaire",$0D
>191027	ec a9 ec a9 20 20 48 61 72 64 77 61 72 65 20 70
>191037	6c 61 74 66 6f 72 6d 20 43 72 65 61 74 65 64 20
>191047	62 79 3a 20 53 74 65 66 61 6e 79 20 41 6c 6c 61
>191057	69 72 65 0d
>19105b	20 ec a9 ec a9 ec a9 ec		                .text $20, $EC, $A9, $EC, $A9, $EC, $A9, $EC, $A9, $EC, $A9, $20, $20, $20, "www.c256foenix.com",$0D
>191063	a9 ec a9 20 20 20 77 77 77 2e 63 32 35 36 66 6f
>191073	65 6e 69 78 2e 63 6f 6d 0d
>19107c	ec a9 ec a9 ec a9 ec a9		                .text $EC, $A9, $EC, $A9, $EC, $A9, $EC, $A9, $EC, $A9, $20, $20, $20, $20, "2048KB CODE RAM  4096K VIDEO MEM",$00
 *
1910c7	1d 1d 1d 1d 8d 8d 4d 4d		greet_clr_line3 .text $1D, $1D, $1D, $1D, $8D, $8D, $4D, $4D, $2D, $2D, $5D, $5D, $5D, $5D
>1910cf	2d 2d 5d 5d 5d 5d
>1910d5	1d 1d 1d 8d 8d 4d 4d 2d		greet_clr_line4 .text $1D, $1D, $1D, $8D, $8D, $4D, $4D, $2D, $2D, $5D, $5D, $5D, $5D, $5D
>1910dd	2d 5d 5d 5d 5d 5d
>1910e3	1d 1d 8d 8d 4d 4d 2d 2d		greet_clr_line5 .text $1D, $1D, $8D, $8D, $4D, $4D, $2D, $2D, $5D, $5D, $5D, $5D, $5D, $5D
 */
//#define CONST_COMPUTER_NAME			TEXT("\\\x05 C\\\x06 2\\\x07 5\\\x08 6 Foenix Computer")

#define CONST_COLORBAR_1			TEXT("\x20\x20\xEC\xA9\xEC\xA9\xEC\xA9\xEC\xA9\xEC\xA9\x20\x20")
#define CONST_COLORBAR_2			TEXT("\x20\xEC\xA9\xEC\xA9\xEC\xA9\xEC\xA9\xEC\xA9\x20\x20\x20")
#define CONST_COLORBAR_3			TEXT("\xEC\xA9\xEC\xA9\xEC\xA9\xEC\xA9\xEC\xA9\x20\x20\x20\x20")

/*
#define CONST_COMPUTER_NAME			TEXT("\x20\x20\xEC\xA9\xEC\xA9\xEC\xA9\xEC\xA9\xEC\xA9 C256 Foenix Development System")
#define CONST_COMPUTER_ACK_1		TEXT("\x20\xEC\xA9\xEC\xA9\xEC\xA9\xEC\xA9\xEC\xA9\x20 A hardware platform crafted by: Stefany Allaire")
#define CONST_COMPUTER_ACK_2		TEXT("\xEC\xA9\xEC\xA9\xEC\xA9\xEC\xA9\xEC\xA9\x20\x20")
*/
#define CONST_COMPUTER_NAME			TEXT("\x20\x20\x0B\x0C\x0B\x0C\x0B\x0C\x0B\x0C\x0B\x0C C256 Foenix Development System")
#define CONST_COMPUTER_NAME_COLOR   TEXT("\x1D\x1D\x1D\x1D\x8D\x8D\x4D\x4D\x2D\x2D\x5D\x5D")
#define CONST_COMPUTER_ACK_1		TEXT("\x20\x0B\x0C\x0B\x0C\x0B\x0C\x0B\x0C\x0B\x0C\x20 A hardware platform crafted by: Stefany Allaire")
#define CONST_COMPUTER_ACK_1_COLOR  TEXT("\x1D\x1D\x1D\x8D\x8D\x4D\x4D\x2D\x2D\x5D\x5D\x5D")
#define CONST_COMPUTER_ACK_2		TEXT("\x0B\x0C\x0B\x0C\x0B\x0C\x0B\x0C\x0B\x0C\x20\x20\x20")
#define CONST_COMPUTER_ACK_2_COLOR  TEXT("\x1D\x1D\x8D\x8D\x4D\x4D\x2D\x2D\x5D\x5D\x5D\x5D")
#define CONST_BOARD_REVISION		TEXT("C256 Board Revision:")

////////////////////////
// EXCEPTIONS
///////////////////////
#define CONST_EXCEPTION_TITLE		TEXT("Foenix Ashes: ")


////////////////////////
// CONSOLE
///////////////////////
#define CONST_TBOX_TL				TCHAR('\xD6')
#define CONST_TBOX_TR				TCHAR('\xB7')
#define CONST_TBOX_BL				TCHAR('\xD3')
#define CONST_TBOX_BR				TCHAR('\xBD')
#define CONST_TBOX_TOP				TCHAR('\xC4')
#define CONST_TBOX_BOTTOM			TCHAR('\xC4')
#define CONST_TBOX_LEFT				TCHAR('\xBA')
#define CONST_TBOX_RIGHT			TCHAR('\xBA')

#define CONST_TBOX_TL_STR			TEXT("\xD6")
#define CONST_TBOX_TR_STR			TEXT("\xB7")
#define CONST_TBOX_BL_STR			TEXT("\xD3")
#define CONST_TBOX_BR_STR			TEXT("\xBD")
#define CONST_TBOX_TOP_STR			TEXT("\xC4")
#define CONST_TBOX_BOTTOM_STR		TEXT("\xC4")
#define CONST_TBOX_LEFT_STR			TEXT("\xBA")
#define CONST_TBOX_RIGHT_STR		TEXT("\xBA")

////////////////////////
// GUI
///////////////////////
#define CONST_WB_MENU_TITLE				TEXT("FX/OS Workbench - Avail Mem: %s1K Heap Free: %s2K")



#endif

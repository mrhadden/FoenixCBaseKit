
#ifndef __FX_STRINGTABLE_
#define __FX_STRINGTABLE_

#define TEXT(a)  a
#define TCHAR(a) a

////////////////////////
// CREDITS
///////////////////////

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
#define CONST_TBOX_TL				TCHAR('0xD6')
#define CONST_TBOX_TR				TCHAR('0xB7')
#define CONST_TBOX_BL				TCHAR('0xD3')
#define CONST_TBOX_BR				TCHAR('0xBD')
#define CONST_TBOX_TOP				TCHAR('0xC4')
#define CONST_TBOX_BOTTOM			TCHAR('0xC4')
#define CONST_TBOX_LEFT				TCHAR('0xBA')
#define CONST_TBOX_RIGHT			TCHAR('0xBA')

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

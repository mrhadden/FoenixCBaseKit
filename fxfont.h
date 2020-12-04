
#ifndef __FX_FONT
#define __FX_FONT


#include "fxtypes.h"

#define CONST_FIXED_FONTW 8
#define CONST_FIXED_FONTH 8


#define ICONW 16
#define ICONH 16


extern int  FAR characterROMMapping[];
extern char FAR fontSpace[];
extern char FAR fontCursor[];
extern char FAR fontImg[][CONST_FIXED_FONTW * CONST_FIXED_FONTH];
extern char FAR windowChromeImg[][CONST_FIXED_FONTW * CONST_FIXED_FONTH];
extern char FAR windowIconImg[][ICONW * ICONH];
//extern unsigned char *Bm437ToshibaLCD8x8;

extern unsigned char FAR Bm437ToshibaLCD8x8[];
extern unsigned char FAR Bm437AmstradPC1512_2y[];
extern unsigned char FAR Bm437ATI8x16[];
extern unsigned char FAR Bm437ATI6x8[];
extern unsigned char FAR BM437TINYTYPE8x8[];
extern unsigned char FAR BM437FANTASY[];
extern unsigned char FAR BM437AMIGO8x8[];
extern unsigned char FAR BM4378X8ITAL[];
extern unsigned char FAR BM437FXOS8x8[];
extern unsigned char FAR EGAFONT[];



#define WINICON_BLOCK		 (0x00)
#define WINICON_TITLE_LINES	 (0x01)
#define WINICON_TITLE_CLOSE  (0x02)
#define WINICON_TITLE_FRONT  (0x03)
#define WINICON_TITLE_BACK   (0x04)
#define WINICON_TITLE_ACLOSE (0x05)
#define WINICON_TITLE_BCLOSE (0x06)

#define PAINTMODE_DEFAULT	  (0x00)
#define PAINTMODE_AND  	  	  (0x01)
#define PAINTMODE_OR  	  	  (0x02)
#define PAINTMODE_XOR  	  	  (0x03)

#define PAINTMODE_BACKGROUND  (0xF0)
#define PAINTMODE_HIGHLIGHT   (0xF1)


#define ICON_BACKGROUND		  (0x00)	
#define ICON_FOREGROUND		  (0x01)
#define ICON_BORDERED		  (0x02)
#define ICON_DISK	 		  (0x03)
#define ICON_TRASH	 		  (0x04)
#define ICON_CABINET 		  (0x05)




#endif

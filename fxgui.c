#include "fxos.h"
#include "fxmemorymanager.h"
//#include "fxstartup.h"
#include "fxfont.h"
#include "fxdrawing.h"
#include "fxgui.h"


//#include "fbtestfnt.h"
//#pragma section CODE=FCODE,OFFSET $15:0000
//extern char _END_UDATA;
//void *heap_start=(void*)&_END_UDATA,*heap_end=(void*)(&_END_UDATA + 0x1000);

#define BITMAP_SEG0   ((char FAR*)0xB00000)
#define BITMAP_SEG1   ((char FAR*)0xB10000)
#define BITMAP_SEG2   ((char FAR*)0xB20000)
#define BITMAP_SEG3   ((char FAR*)0xB30000)
#define BITMAP_SEG4   ((char FAR*)0xB40000)


static CHAR FAR MOUSE_POINTER_PTR[] =
{
	0x00,0x01,0x01,0x00,0x00,0x00,0x00,0x00,0x01,0x01,0x01,0x00,0x00,0x00,0x00,0x00,
	0x01,0xFF,0xFF,0x01,0x00,0x00,0x01,0x01,0xFF,0xFF,0xFF,0x01,0x00,0x00,0x00,0x00,
	0x01,0xFF,0xFF,0xFF,0x01,0x01,0x55,0xFF,0x01,0x55,0xFF,0xFF,0x01,0x00,0x00,0x00,
	0x01,0x55,0xFF,0xFF,0xFF,0xFF,0x01,0x55,0xFF,0xFF,0xFF,0xFF,0x01,0x00,0x00,0x00,
	0x00,0x01,0x55,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x01,0xFF,0xFF,0x01,0x00,0x00,
	0x00,0x00,0x01,0x55,0xFF,0xFF,0xFF,0xFF,0x01,0xFF,0xFF,0x01,0xFF,0x01,0x00,0x00,
	0x00,0x00,0x01,0x01,0x55,0xFF,0xFF,0xFF,0xFF,0x01,0xFF,0xFF,0xFF,0x01,0x00,0x00,
	0x00,0x00,0x01,0x55,0x01,0x55,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x01,0x01,0x00,
	0x00,0x00,0x01,0x55,0x55,0x55,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x01,0xFF,0xFF,0x01,
	0x00,0x00,0x00,0x01,0x55,0x55,0x55,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x01,
	0x00,0x00,0x00,0x00,0x01,0x55,0x55,0x55,0x55,0x55,0x01,0xFF,0xFF,0x55,0x01,0x00,
	0x00,0x00,0x00,0x00,0x00,0x01,0x01,0x01,0x01,0x01,0x55,0xFF,0x55,0x01,0x00,0x00,
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x55,0x55,0x55,0x01,0x00,0x00,0x00,
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x55,0x55,0x01,0x00,0x00,0x00,0x00,
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x01,0x00,0x00,0x00,0x00,0x00,
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
};

static CHAR FAR MOUSE_POINTER_PTR_V2[] =
{
	0xFF,0x55,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	0x01,0xFF,0x55,0x55,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	0x00,0x01,0xFF,0xFF,0x55,0x55,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	0x00,0x01,0xFF,0xFF,0xFF,0xFF,0x55,0x55,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	0x00,0x00,0x01,0xFF,0xFF,0xFF,0xFF,0xFF,0x55,0x55,0x00,0x00,0x00,0x00,0x00,0x00,
	0x00,0x00,0x01,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,
	0x00,0x00,0x00,0x01,0xFF,0xFF,0xFF,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	0x00,0x00,0x00,0x01,0xFF,0xFF,0xFF,0xFF,0x55,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	0x00,0x00,0x00,0x00,0x01,0xFF,0x00,0x01,0xFF,0x55,0x00,0x00,0x00,0x00,0x00,0x00,
	0x00,0x00,0x00,0x00,0x01,0xFF,0x00,0x00,0x01,0xFF,0x55,0x00,0x00,0x00,0x00,0x00,
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0xFF,0x55,0x00,0x00,0x00,0x00,
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0xFF,0x00,0x00,0x00,0x00,
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
};

static CHAR BG_FILL_LINE_ODD[] =
{
0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,
0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,
0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,
0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,
0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,
0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,
0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,
0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,
0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,
0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA
};

static CHAR BG_FILL_LINE_EVEN[] =
{
0x55,0x55,0x55,0x55,0x55,0x55,0x55,0x55,
0x55,0x55,0x55,0x55,0x55,0x55,0x55,0x55,
0x55,0x55,0x55,0x55,0x55,0x55,0x55,0x55,
0x55,0x55,0x55,0x55,0x55,0x55,0x55,0x55,
0x55,0x55,0x55,0x55,0x55,0x55,0x55,0x55,
0x55,0x55,0x55,0x55,0x55,0x55,0x55,0x55,
0x55,0x55,0x55,0x55,0x55,0x55,0x55,0x55,
0x55,0x55,0x55,0x55,0x55,0x55,0x55,0x55,
0x55,0x55,0x55,0x55,0x55,0x55,0x55,0x55,
0x55,0x55,0x55,0x55,0x55,0x55,0x55,0x55
};


static CUR_PALETTE_MAP _k_currentPalatte;

char FAR buffer[32];
char FAR strbuf[32];
//char FAR spinner[] = {'\\','|','/','+'};

char FAR *version_title;

//int g_key_index = 0;

//typedef void (*C256Task)(HANDLE console,void FAR* arg);

//C256Task tasks[2];
//HANDLE consoles[2];

//#define GRPH_LUT0_PTR	((char FAR*)0xAF2000)



#define GRP_LUT_BASE_ADDR GRPH_LUT0_PTR

int 	FAR _k_window_index = 0;
Window 	FAR _k_window_list[10];


CLICKABLE FAR clickList[CHKLIST_MAX];
PCLICKABLE FAR hitList[CHKLIST_MAX];


static PFXNODE _k_WindowObject_nodes = NULL;
static PFXNODE _k_WindowHit_nodes 	 = NULL;


int cop_index = 0;

#pragma section CODE=GUI,offset $3:0000

void k_drawPixel(char fcolor,char fcolor2,char fcolor3)
{
	long vbuffer = 0xB00000;
	long ki = 0;
	long tt = 0;
	char mask = 0x00;
	/*
	unsigned int pos = 0;
	
	pos = ((640L * ploty) + plotx);
	buffer[pos] = 0x01;
	return;
	*/

}

void k_set_foreground_palette(char paletteId)
{
	FG_CHAR_LUT_PTR[0] = paletteId;
}

void k_set_text_gamma(char c)
{
	GAMMA_B_LUT_PTR[0] = c;
	GAMMA_G_LUT_PTR[0] = c;
	GAMMA_R_LUT_PTR[0] = c;
}

void k_set_text_color(char c)
{
	CURCOLOR_L[0] = c;
	CURCOLOR_H[0] = c;
}





//
// 
Window FAR* k_get_window(HANDLE hWindow)
{
	return &_k_window_list[(ULONG)hWindow];
}
 

void k_write_window_text(HANDLE hWin,int col,int row,char FAR * text,int fcolor,int bcolor)
{
	
}
 

HANDLE k_create_window(int bx,int by,int bw,int bh,char FAR* title)
{
	int index = -1;
	Window FAR *pwin = NULL;

	k_put_char(0,1,'a',5,0);
	
	index = _k_window_index++;
	
	k_put_char(0,1,'b',5,0);
	
	pwin = &_k_window_list[index];
	
	pwin->win_x = bx;
	pwin->win_y = by;
	pwin->win_width = bw;
	pwin->win_height = bh;

	k_put_char(0,1,'c',5,0);
	
	strcpy(pwin->win_title,title);
	
	k_put_char(0,1,'d',5,0);
	
	k_window_draw(pwin->win_x,pwin->win_y,pwin->win_width,pwin->win_height,pwin->win_title);
	
	k_put_char(0,1,'e',5,0);
	
	return (HANDLE)index;
}

void setColors(void)
{
	unsigned long colorIndex = 0;

	//colorIndex = 0;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0x00;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0x00;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0x00;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0xFF;

	//colorIndex = 1 * 4;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0x00;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0x00;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0x80;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0xFF;

	//colorIndex = 2 * 4;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0x00;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0x80;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0x00;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0xFF;


	//colorIndex = 3 * 4;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0x80;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0x00;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0x00;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0xFF;

	//colorIndex = 4 * 4;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0x00;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0x80;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0x80;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0xFF;

	//colorIndex = 5 * 4;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0x80;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0x80;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0x00;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0xFF;

	//colorIndex = 6 * 4;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0x80;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0x00;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0x80;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0xFF;

	//colorIndex = 7 * 4;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0x00;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0x45;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0xFF;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0xFF;

	//colorIndex = 8 * 4;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0x13;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0x45;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0x8B;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0xFF;

	//colorIndex = 9 * 4;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0x00;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0x00;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0x20;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0xFF;

	//colorIndex = 10 * 4;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0x00;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0x20;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0x00;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0xFF;

	//colorIndex = 11 * 4;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0x20;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0x00;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0x00;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0xFF;

	//colorIndex = 12 * 4;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0x00;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0x00;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0x00;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0xFF;

	//colorIndex = 13 * 4;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0x50;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0x50;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0x50;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0xFF;

	//colorIndex = 14 * 4;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0x40;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0x40;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0x40;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0xFF;

	//colorIndex = 15 * 4;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0xFF;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0xFF;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0xFF;
	GRP_LUT_BASE_ADDR[colorIndex++] = 0xFF;


	memset(&_k_currentPalatte,0,sizeof(CUR_PALETTE_MAP));

	_k_currentPalatte.CUR_WINDOWFRAME = 0;
	_k_currentPalatte.CUR_DESKTOP = 14;
	_k_currentPalatte.CUR_HIGHLIGHT_COLOR = 8;
	_k_currentPalatte.CUR_SELECTED_FONT = 11;
	_k_currentPalatte.CUR_GADGET = _k_currentPalatte.CUR_WINDOWSHADOW = 12;
	_k_currentPalatte.CUR_BACKGROUND = 13;
	_k_currentPalatte.CUR_FONT = 14;
	_k_currentPalatte.CUR_WINDOWBORDER = _k_currentPalatte.CUR_MENU = 15;

	for(colorIndex=0;colorIndex<15;colorIndex++)
	{
		_k_currentPalatte.CUR_COLOR[colorIndex] = colorIndex;
	}


}

void defineGrayPalette(void)
{
	unsigned long colorIndex = 0;
	int colorShade = 0;
	char color[] = {0x00,0x11,0x22,0x33,0x44,0x55,0x66,0x77,0x88,0x99,0xAA,0xBB,0xCC,0xDD,0xFF};
	
	for(colorIndex = 0;colorIndex<60;colorIndex+=4)
	{
		GRP_LUT_BASE_ADDR[colorIndex+0] = color[colorShade];
		GRP_LUT_BASE_ADDR[colorIndex+1] = color[colorShade];
		GRP_LUT_BASE_ADDR[colorIndex+2] = color[colorShade];
		GRP_LUT_BASE_ADDR[colorIndex+3] = 0xFF;

		colorShade++;
	}

	memset(&_k_currentPalatte,0,sizeof(CUR_PALETTE_MAP));

	_k_currentPalatte.CUR_WINDOWFRAME = 0;
	_k_currentPalatte.CUR_DESKTOP = 3;
	_k_currentPalatte.CUR_HIGHLIGHT_COLOR = 8;
	_k_currentPalatte.CUR_SELECTED_FONT = 11;
	_k_currentPalatte.CUR_GADGET = _k_currentPalatte.CUR_WINDOWSHADOW = 12;
	_k_currentPalatte.CUR_BACKGROUND = 13;
	_k_currentPalatte.CUR_FONT = 14;
	_k_currentPalatte.CUR_WINDOWBORDER = _k_currentPalatte.CUR_MENU = 15;

	for(colorShade=0;colorShade<15;colorShade++)
	{
		_k_currentPalatte.CUR_COLOR[colorShade] = colorShade;
	}
}

int k_getUIBackgroundColor()
{
	return 	_k_currentPalatte.CUR_BACKGROUND;
}

int k_getUIDesktopColor()
{
	return 	_k_currentPalatte.CUR_DESKTOP;
}


int k_getUIFontColor()
{
	return 	_k_currentPalatte.CUR_FONT;
}


int k_getUIFontSelectedColor()
{
	return 	_k_currentPalatte.CUR_SELECTED_FONT;
}


int k_getUIHighlightColor()
{
	return 	_k_currentPalatte.CUR_HIGHLIGHT_COLOR;
}


int k_getUIWindowFrameColor()
{
	return 	_k_currentPalatte.CUR_WINDOWFRAME;
}


int k_getUIWindowBorderColor()
{
	return 	_k_currentPalatte.CUR_WINDOWBORDER;
}


int k_getUIWindowShadowColor()
{
	return 	_k_currentPalatte.CUR_WINDOWSHADOW;
}


int k_getUIMenuColor()
{
	return 	_k_currentPalatte.CUR_MENU;
}


int k_getUIGadgetColor()
{
	return 	_k_currentPalatte.CUR_GADGET;
}


int k_getUIColor(int index)
{
	if(index < 1)
		index = 1;
	if(index > 15)
		index = 15;

	return 	_k_currentPalatte.CUR_COLOR[index - 1];
}



void k_draw_pixel(long x,long y,char pcolor)
{
	long pixelLocation = (long)(((long)y * 640L) + (long)x);

	((unsigned char FAR *)BITMAP_BANK_0)[pixelLocation] = (char)pcolor;
	((unsigned char FAR *)SHADOW_BANK_0)[pixelLocation] = (char)pcolor;


	//((unsigned char FAR *)BITMAP_BANK_0)[(long)(( ((long)y) * 640L) + ((long)x) )] = (char)pcolor;
}

int k_get_pixel_color(int x,int y)
{
	long pixelLocation;
	int color = -1;
	
	pixelLocation = (( (y) * 640) + (x) );

	if(y < 51)
	{
		color = ((unsigned char FAR *)BITMAP_BANK_0)[pixelLocation];
	}
	else if(y > 51 && y < 153)
	{
		color = ((unsigned char FAR *)BITMAP_BANK_1)[pixelLocation];
	}
	else if(y > 153 && y < 255)
	{
		color = ((unsigned char FAR *)BITMAP_BANK_2)[pixelLocation];
	}
	else if(y > 255 && y < 358)
	{
		color = ((unsigned char FAR *)BITMAP_BANK_3)[pixelLocation];
	}
	else if(y > 358 && y < 460)
	{
		color = ((unsigned char FAR *)BITMAP_BANK_4)[pixelLocation];
	}
	else if(y > 460 && y < 479 )
	{
		color = ((unsigned char FAR *)BITMAP_BANK_5)[pixelLocation];
	}
	
	return color;
}

int k_get_pixel_bank(int x,int y)
{
	long pixelLocation;

	if(y < 51)
	{
		return 0;
	}
	else if(y > 51 && y < 153)
	{
		return 1;
	}
	else if(y > 153 && y < 255)
	{
		return 2;
	}
	else if(y > 255 && y < 358)
	{
		return 3;
	}
	else if(y > 358 && y < 460)
	{
		return 4;
	}
	else if(y > 460 && y < 479 )
	{
		return 5;
	}
	
	return 0;
}


void k_draw_segments(int xc, int yc, int x, int y,int color) 
{ 
    k_draw_pixel(xc+x, yc+y, color); 
    k_draw_pixel(xc-x, yc+y, color); 
    k_draw_pixel(xc+x, yc-y, color); 
    k_draw_pixel(xc-x, yc-y, color); 
    k_draw_pixel(xc+y, yc+x, color); 
    k_draw_pixel(xc-y, yc+x, color); 
    k_draw_pixel(xc+y, yc-x, color); 
    k_draw_pixel(xc-y, yc-x, color); 
} 

void k_draw_filled_segments(int xc, int yc, int x, int y,int color) 
{ 
    k_draw_pixel(xc+x, yc+y, color); 	    
	k_draw_pixel(xc-x, yc+y, color); 
    k_draw_line(xc+x, yc+y, xc-x, yc+y,color);
	
	
	k_draw_pixel(xc+x, yc-y, color);     	
	k_draw_pixel(xc-x, yc-y, color); 
	k_draw_line(xc+x, yc-y, xc-x, yc-y,color);
	
    
	k_draw_pixel(xc+y, yc+x, color);     
	k_draw_pixel(xc-y, yc+x, color); 
	k_draw_line(xc+y, yc+x, xc-y, yc+x,color);	
	
	k_draw_pixel(xc+y, yc-x, color);  
	k_draw_pixel(xc-y, yc-x, color); 
	k_draw_line(xc+y, yc-x, xc-y, yc-x,color);
}
  
// Function for circle-generation 
// using Bresenham's algorithm 
void k_draw_circle(int xc, int yc, int r, int color) 
{ 
    int x = 0;
	int y = r; 
	
    int d = 3 - 2 * r; 
	
    k_draw_segments(xc, yc, x, y, color); 
	
    while (y >= x) 
    { 
        // for each pixel we will 
        // draw all eight pixels 
          
        x++; 
  
        // check for decision parameter 
        // and correspondingly  
        // update d, x, y 
        if (d > 0) 
        { 
            y--;  
            d = d + 4 * (x - y) + 10; 
        } 
        else
            d = d + 4 * x + 6; 
        k_draw_segments(xc, yc, x, y, color); 
       
    } 
} 

void k_draw_filled_circle(int xc, int yc, int r, int color) 
{ 
    int x = 0;
	int y = r; 
	
    int d = 3 - 2 * r; 
	
    k_draw_filled_segments(xc, yc, x, y, color); 
	
    while (y >= x) 
    { 
        // for each pixel we will 
        // draw all eight pixels 
          
        x++; 
  
        // check for decision parameter 
        // and correspondingly  
        // update d, x, y 
        if (d > 0) 
        { 
            y--;  
            d = d + 4 * (x - y) + 10; 
        } 
        else
            d = d + 4 * x + 6; 
        k_draw_filled_segments(xc, yc, x, y, color); 
       
    } 
} 

void k_draw_line(int x0, int y0, int x1, int y1,int color) 
{
 	int dx = abs(x1-x0), sx = x0<x1 ? 1 : -1;
	int dy = abs(y1-y0), sy = y0<y1 ? 1 : -1; 
	int err = (dx>dy ? dx : -dy)/2, e2;

	for(;;)
	{
		k_draw_pixel(x0,y0,color);
		if (x0==x1 && y0==y1) break;
		e2 = err;
		if (e2 >-dx) { err -= dy; x0 += sx; }
		if (e2 < dy) { err += dx; y0 += sy; }
	}
}

void k_draw_rect_slow(int left,int top, int right, int bottom, char color)
{
	k_draw_line(left,top,right,top,color);
	k_draw_line(left,top,left,bottom,color);
	k_draw_line(right,top,right,bottom,color);
	k_draw_line(left,bottom,right,bottom,color);
}

void k_draw_filled_rect_slow(int left,int top, int right, int bottom, char color)
{
	
}


int k_put_draw_text(int col,int row,char FAR *text,char color,char bcolor)
{
	return k_draw_text(text, row, col, color);
}

int k_draw_text(char FAR *text,int row,int col,char color)
{
	char FAR * ptr = (text);
	while(*ptr)
	{
		k_put_font(*ptr,col,row,color);
		col++;
		ptr++;
	}
	
	return col;
}

int k_draw_text_point(LPCSTR text,int x,int y,char color)
{
	int col = 0;
	int width = 0;
	int height = 0;

	LPCSTR ptr = (text);
	
	width  = Bm437ToshibaLCD8x8[0];
	height = Bm437ToshibaLCD8x8[1];


	ptr = (text);
	while(*ptr)
	{
		//x+=k_put_font_point(*ptr,x,y,color);

		//x+=k_put_binary_font_point( Bm437ToshibaLCD8x8 , *ptr,x,y,color);
		//x+=k_put_binary_font_point( Bm437AmstradPC1512_2y , *ptr,x,y,color);

		x+=k_put_binary_variablefont_point( (LPCHAR)&Bm437ToshibaLCD8x8[2] , *ptr,x,y,width,height,color);

		ptr++;
		col+=FONTW;
	}
	
	return col;
}

int k_draw_text_point_with_font(LPCSTR text,LPCSTR charSet,int x,int y,char color)
{
	int col = 0;
	int width = 0;
	int height = 0;

	LPCHAR ptr = NULL;

	//k_debug_pointer("k_draw_text_point_with_font:font charSet:",(LPVOID)charSet);

	width  = charSet[0];
	height = charSet[1];


	//k_debug_integer("k_draw_text_point_with_font:font width:",width);
	//k_debug_integer("k_draw_text_point_with_font:font height:",height);


	ptr = (LPCHAR)(text);
	while(*ptr)
	{
		//x+=k_put_font_point(*ptr,x,y,color);

		x+=k_put_binary_variablefont_point( (LPCHAR)&charSet[2] , *ptr,x,y,width,height,color);
		//x+=k_put_binary_font_point( Bm437AmstradPC1512_2y , *ptr,x,y,color);

		ptr++;
		col+=8;
	}

	return col;
}


int k_draw_text_scaled(char FAR *text,int row,int col,char color,int scale)
{
	char FAR * ptr = (text);
	while(*ptr)
	{
		k_put_font_scaled(*ptr,col,row,color,scale);
		col++;
		ptr++;
	}
	
	return col;
}

int k_get_font_metrics(FONTMETRIC FAR *metric)
{
	metric->width  = FONTW;
	metric->height = FONTH;
	
	return sizeof(FONTMETRIC);
}

int k_put_font_point(char outChar,int cx,int cy,char color)
{
	int x = 0;
	int y = 0;
	int textX = cx;
	int textY = cy;

	char FAR* img = NULL;//fontImg[ix];

	outChar = toupper(outChar); // fix this so we can to lower case

    if(outChar == 32)
	{
	   img = NULL;//fontSpace;
    }
    else
	{
	    img = fontImg[(int)characterROMMapping[(int)(outChar & 0xFF)]];
	}
	//printf("putFont:%d\n",characterROMMapping[outChar]);

	// get the font 'image'
        //char *img = fontImg[ix]; 
        // loop through pixel rows
	if(img!=NULL)
	{
		for (y = 0; y < FONTH; y++) 
		{
			// loop through pixel columns
			for (x = 0; x < FONTW; x++) 
			{
				// get the pixel value
				char b = img[y * FONTW + x];
				if (b > 0) 
				{ // plot the pixel
					k_draw_pixel(textX + x, textY + y, color);
				}
				else 
				{ 
					// leave empty (or maybe plot 'text backgr color')
				}
			} // end "for x"
		} // end "for y"
	}
	return FONTW;
}

int k_put_binary_font_point(LPCHAR fontSet, char outChar,int cx,int cy,char color)
{
	int x = 0;
	int y = 0;
	int textX = cx;
	int textY = cy;

	unsigned char FAR* img = NULL;//fontImg[ix];

    if(outChar == 32)
	{
	   img = NULL;//fontSpace;
    }
    else
	{
	    //img = &(fontSet[characterROMMapping[outChar]]);
    	img = fontSet+=(8*outChar);
    	//img = "\xc3\xc3\xc3\xc3\xc3\xc3\xc3\xc3";//&(fontSet[outChar]);
	}
	//printf("putFont:%d\n",characterROMMapping[outChar]);

	// get the font 'image'
        //char *img = fontImg[ix];
        // loop through pixel rows
	if(img!=NULL)
	{
		for (y = 0; y < FONTH; y++)
		{
			// get the pixel value
			PBYTEBITS b = (PBYTEBITS)&(img[y]); //img[y * FONTW + x];
			if (b->b7 > 0)
				k_draw_pixel(textX + 7, textY + y, color);
			if (b->b6 > 0)
				k_draw_pixel(textX + 6, textY + y, color);
			if (b->b5 > 0)
				k_draw_pixel(textX + 5, textY + y, color);
			if (b->b4 > 0)
				k_draw_pixel(textX + 4, textY + y, color);
			if (b->b3 > 0)
				k_draw_pixel(textX + 3, textY + y, color);
			if (b->b2 > 0)
				k_draw_pixel(textX + 2, textY + y, color);
			if (b->b1 > 0)
				k_draw_pixel(textX + 1, textY + y, color);
			if (b->b0 > 0)
				k_draw_pixel(textX + 0, textY + y, color);

		} // end "for y"
	}
	return FONTW;
}

/*
int k_put_binary_variablefont_point(LPCHAR fontSet, char outChar,int cx,int cy,int width,int height,char color)
{
	int x = 0;
	int y = 0;
	int textX = cx;
	int textY = cy;

	unsigned char FAR* img = NULL;//fontImg[ix];

    if(outChar == 32)
	{
	   img = NULL;//fontSpace;
    }
    else
	{
	    //img = &(fontSet[characterROMMapping[outChar]]);
    	img = fontSet+=(height*outChar);
    	//img = "\xc3\xc3\xc3\xc3\xc3\xc3\xc3\xc3";//&(fontSet[outChar]);
	}
	//printf("putFont:%d\n",characterROMMapping[outChar]);

	// get the font 'image'
        //char *img = fontImg[ix];
        // loop through pixel rows
	if(img!=NULL)
	{
		for (y = 0; y < height; y++)
		{
			// get the pixel value
			PBYTEBITS b = (PBYTEBITS)&(img[y]); //img[y * FONTW + x];
			if (b->b7 > 0)
				k_draw_pixel(textX + 7, textY + y, color);
			if (b->b6 > 0)
				k_draw_pixel(textX + 6, textY + y, color);
			if (b->b5 > 0)
				k_draw_pixel(textX + 5, textY + y, color);
			if (b->b4 > 0)
				k_draw_pixel(textX + 4, textY + y, color);
			if (b->b3 > 0)
				k_draw_pixel(textX + 3, textY + y, color);
			if (b->b2 > 0)
				k_draw_pixel(textX + 2, textY + y, color);
			if (b->b1 > 0)
				k_draw_pixel(textX + 1, textY + y, color);
			if (b->b0 > 0)
				k_draw_pixel(textX + 0, textY + y, color);

		} // end "for y"
	}
	return FONTW;
}
*/
int k_put_binary_variablefont_point(LPCHAR fontSet, char outChar,int cx,int cy,int width,int height,char color)
{
	int x = 0;
	int y = 0;
	int textX = cx;
	int textY = cy;
	char tmp;

	unsigned char FAR* img = NULL;//fontImg[ix];

    if(outChar == 32)
	{
	   img = NULL;//fontSpace;
    }
    else
	{
	    //img = &(fontSet[characterROMMapping[outChar]]);
    	img = fontSet+=(height*outChar);
    	//img = "\xc3\xc3\xc3\xc3\xc3\xc3\xc3\xc3";//&(fontSet[outChar]);
	}
	//printf("putFont:%d\n",characterROMMapping[outChar]);

	// get the font 'image'
        //char *img = fontImg[ix];
        // loop through pixel rows
	if(img!=NULL)
	{
		for (y = 0; y < height; y++)
		{
			tmp = img[y];

			for (x = 0; x < width; x++)
			{
				if(tmp & 0x80 )
					k_draw_pixel(textX + x, textY + y, color);

				tmp = tmp << 1;
			}
			// get the pixel value
			/*
			PBYTEBITS b = (PBYTEBITS)&(img[y]); //img[y * FONTW + x];
			if (b->b7 > 0)
				k_draw_pixel(textX + 7, textY + y, color);
			if (b->b6 > 0)
				k_draw_pixel(textX + 6, textY + y, color);
			if (b->b5 > 0)
				k_draw_pixel(textX + 5, textY + y, color);
			if (b->b4 > 0)
				k_draw_pixel(textX + 4, textY + y, color);
			if (b->b3 > 0)
				k_draw_pixel(textX + 3, textY + y, color);
			if (b->b2 > 0)
				k_draw_pixel(textX + 2, textY + y, color);
			if (b->b1 > 0)
				k_draw_pixel(textX + 1, textY + y, color);
			if (b->b0 > 0)
				k_draw_pixel(textX + 0, textY + y, color);
			*/
		} // end "for y"
	}
	return FONTW;
}

int k_render_wingadget(char gadgetCode,int cx,int cy,char color,OBJECTCLICKED callback)
{
	PCLICKDETECTED pcd = NULL;

	int retCode = 0;

	k_put_wingadget_point(gadgetCode,cx,cy,color);

	pcd = k_mem_allocate_heap(sizeof(CLICKDETECTED));
	if(pcd)
	{
		pcd->window  = k_create_ui_window_class(cx,cy,FONTH,FONTW,"disk","gadget",NULL);
		pcd->handler = callback;
		k_add_window_hit_node(pcd);
	}

	return retCode;
}



int k_put_wingadget_point(char gadgetCode,int cx,int cy,char color)
{
	int x = 0;
	int y = 0;
	int textX = cx;
	int textY = cy;

	char FAR* img = NULL;//fontImg[ix];


    img = windowChromeImg[(int)(gadgetCode & 0xFF)];
	if(img!=NULL)
	{
		for (y = 0; y < FONTH; y++) 
		{
			// loop through pixel columns
			for (x = 0; x < FONTW; x++) 
			{
				// get the pixel value
				char b = img[y * FONTW + x];
				if (b > 0) 
				{ // plot the pixel
					k_draw_pixel(textX + x, textY + y, color);
				}
				else 
				{ 
					// leave empty (or maybe plot 'text backgr color')
				}
			} // end "for x"
		} // end "for y"
	}
	return FONTW;
}

int k_put_winicon_point(char iconCode,int cx,int cy,int paletteId,int mode)
{
	int x = 0;
	int y = 0;
	int textX = cx;
	int textY = cy;

	char FAR* img = NULL;
	
    img = windowIconImg[(int)(iconCode & 0xFF)];
	if(img!=NULL)
	{
		for (y = 0; y < ICONH; y++) 
		{
			for (x = 0; x < ICONW; x++) 
			{
				char b = img[y * ICONW + x];
				if (b > 0) 
				{
					if(mode == PAINTMODE_BACKGROUND)
						b = paletteId;

					if(mode == PAINTMODE_HIGHLIGHT && b == 15)
						b = paletteId;

					k_draw_pixel(textX + x, textY + y, b);
				}
				else 
				{ 
					if(mode!=PAINTMODE_DEFAULT)
					{
					
					}
				}
			}
		}
	}
	return FONTW;
}


/*
 		//PFXNODE k_point_in_nodes(int x,int y);
		//void k_add_window_hit_node(PCLICKDETECTED pcd);

		PWINDOW k_create_ui_window_class(cx,cy,ICONW,ICONH,LPCHAR title,LPCHAR className,int color, int bgcolor);

		k_add_window_hit_node();


 */


void k_put_winicon_scaled(char iconCode,int cx,int cy,char paletteId,int mode,int scale)
{
	int x = 0;
	int y = 0;

	int height = ICONH * scale;
	int width  = ICONW * scale;
	
	int textX = cx ;
	int textY = cy ;

	int px   = 0;
	int py   = 0;
	int offx = 0;
	int offy = 0;
	int sx   = 0;
	int sy   = 0;

	char b   = 0;

	char FAR* img = NULL;

	img = windowIconImg[(int)(iconCode & 0xFF)];	//printf("putFont:%d\n",characterROMMapping[outChar]);
	if(img!=NULL)
	{
		py = 0;
		for (y = 0; y < height; y+=scale) 
		{
			offy = y;
			px   = 0;
			for (x = 0; x < width; x+=scale) 
			{
				// get the pixel value
				offx = x;
				b = img[py * ICONW + px];
				if (b > -1) 
				{ // plot the pixel					
					offy = y;
					for(sy=0;sy<scale;sy++)
					{
						offx = x;
						for(sx=0;sx<scale;sx++)
						{
							k_draw_pixel(textX + offx, textY + offy, b);
							offx++;
						}
						offy++;
					}
				}
				px++;
			} // end "for x"
			py++;
		} // end "for y"
	}
}


void k_put_font(char outChar,int row,int column,char color)
{
	int x = 0;
	int y = 0;
	int textX = row * FONTW;
	int textY = column * FONTH;

	char FAR* img = NULL;//fontImg[ix];

    if(outChar == 32)
	{
	   img = NULL;
    }
    else
	{
	    img = fontImg[(int)characterROMMapping[(int)(outChar & 0xFF)]];
		//img = fontImg[0x02];
	}
	//printf("putFont:%d\n",characterROMMapping[outChar]);

	// get the font 'image'
        //char *img = fontImg[ix]; 
        // loop through pixel rows
	if(img!=NULL)
	{
		for (y = 0; y < FONTH; y++) 
		{
			// loop through pixel columns
			for (x = 0; x < FONTW; x++) 
			{
				// get the pixel value
				char b = img[y * FONTW + x];
				if (b > 0) 
				{ // plot the pixel
					//k_draw_pixel(textX + x, textY + y, color);
					
					((unsigned char FAR *)BITMAP_BANK_0)[(long)(( ((long)textY + y) * 640L) + ((long)textX + x) )] = (char)color;
				}
				else 
				{ 
					// leave empty (or maybe plot 'text backgr color')
				}
			} // end "for x"
		} // end "for y"
	}
}

void k_put_font_scaled(char outChar,int row,int column,char color,int scale)
{
	int x = 0;
	int y = 0;

	int height = FONTH * scale;
	int width  = FONTW * scale;
	
	int textX = row    * height;
	int textY = column * width;

	int px   = 0;
	int py   = 0;
	int offx = 0;
	int offy = 0;
	int sx   = 0;
	int sy   = 0;

	char b   = 0;

	char FAR* img = NULL;//fontImg[ix];

    if(outChar == 32)
	{
	   img = NULL;//fontSpace;
    }
    else
	{
	    img = fontImg[(int)characterROMMapping[(int)(outChar & 0xFF)]];
		//img = fontImg[0x01];
	}
	//printf("putFont:%d\n",characterROMMapping[outChar]);

	// get the font 'image'
        //char *img = fontImg[ix]; 
        // loop through pixel rows
	if(img!=NULL)
	{
		py = 0;
		for (y = 0; y < height; y+=scale) 
		{
			offy = y;
			px = 0;
			for (x = 0; x < width; x+=scale) 
			{
				// get the pixel value
				offx = x;
				b = img[py * FONTW + px];
				if (b > 0) 
				{ // plot the pixel					
					offy = y;
					for(sy=0;sy<scale;sy++)
					{
						offx = x;
						for(sx=0;sx<scale;sx++)
						{
							k_draw_pixel(textX + offx, textY + offy, color);
							offx++;
						}
						offy++;
					}
					
					//k_draw_pixel(textX + x, textY + y, color);
				}
				else 
				{ 
					// leave empty (or maybe plot 'text backgr color')
				}
				px++;
			} // end "for x"
			py++;
		} // end "for y"
	}
}

void k_draw_char(char charCode,int row,int column,char color)
{
	int x = 0;
	int y = 0;

	int textX = row * FONTH;
	int textY = column * FONTW;
	char b = 0;

	char FAR* img = NULL;//fontImg[ix];

    if(charCode == 32)
	{
	   img = NULL;//fontSpace;
    }
    else
	{
	    img = fontImg[charCode & 0xFF];
	}
	//printf("putFont:%d\n",characterROMMapping[outChar]);

	// get the font 'image'
        //char *img = fontImg[ix]; 
        // loop through pixel rows
	if(img!=NULL)
	{
		for (y = 0; y < FONTH; y++) 
		{
			// loop through pixel columns
			for (x = 0; x < FONTW; x++) 
			{
				// get the pixel value
				b = img[y * FONTW + x];
				if (b > 0) 
				{ // plot the pixel
					k_draw_pixel(textX + x, textY + y, color);
				}
				else 
				{ 
					// leave empty (or maybe plot 'text backgr color')
				}
			} // end "for x"
		} // end "for y"
	}
}

void k_draw_char_scaled(char charCode,int row,int column,char color,int scale)
{
	int x = 0;
	int y = 0;

	int height = FONTH * scale;
	int width  = FONTW * scale;
	
	int textX = row    * height;
	int textY = column * width;

	int px   = 0;
	int py   = 0;
	int offx = 0;
	int offy = 0;
	int sx   = 0;
	int sy   = 0;

	char b   = 0;

	char FAR* img = NULL;

    if(charCode == 32)
	{
	   img = NULL;
    }
    else
	{
	    img = fontImg[charCode & 0xFF];
	}

	if(img!=NULL)
	{
		py = 0;
		for (y = 0; y < height; y+=scale) 
		{
			offy = y;
			px = 0;
			for (x = 0; x < width; x+=scale) 
			{
				// get the pixel value
				offx = x;
				b = img[py * FONTW + px];
				if (b > 0) 
				{ // plot the pixel					
					offy = y;
					for(sy=0;sy<scale;sy++)
					{
						offx = x;
						for(sx=0;sx<scale;sx++)
						{
							k_draw_pixel(textX + offx, textY + offy, color);
							offx++;
						}
						offy++;
					}
					
					//k_draw_pixel(textX + x, textY + y, color);
				}
				else 
				{ 
					// leave empty (or maybe plot 'text backgr color')
				}
				px++;
			} // end "for x"
			py++;
		} // end "for y"
	}
}


void k_draw_char_scaled_point(char charCode,int locX,int locY,char color,int scale)
{
	int x = 0;
	int y = 0;

	int height = FONTH * scale;
	int width  = FONTW * scale;
	
	int textX = locX;
	int textY = locY;

	int px   = 0;
	int py   = 0;
	int offx = 0;
	int offy = 0;
	int sx   = 0;
	int sy   = 0;

	char b   = 0;

	char FAR* img = NULL;

    if(charCode == 32)
	{
	   img = NULL;
    }
    else
	{
	    img = fontImg[charCode & 0xFF];
	}

	if(img!=NULL)
	{
		py = 0;
		for (y = 0; y < height; y+=scale) 
		{
			offy = y;
			px = 0;
			for (x = 0; x < width; x+=scale) 
			{
				// get the pixel value
				offx = x;
				b = img[py * FONTW + px];
				if (b > 0) 
				{ // plot the pixel					
					offy = y;
					for(sy=0;sy<scale;sy++)
					{
						offx = x;
						for(sx=0;sx<scale;sx++)
						{
							k_draw_pixel(textX + offx, textY + offy, color);
							offx++;
						}
						offy++;
					}
					
					//k_draw_pixel(textX + x, textY + y, color);
				}
				else 
				{ 
					// leave empty (or maybe plot 'text backgr color')
				}
				px++;
			} // end "for x"
			py++;
		} // end "for y"
	}
}


void k_render_bitmap_info(int fcolor)
{
	int x;
	int y;
	int pos = 0;
	int i = 0;
	int k = 0;
	int cv = 0;
	int cl = 0;
	int lv = 0;
	int lm = 0;
	int bx = 0;
	int by = 0;
	int mx = -1;
	int my = -1;
	int mb = -1;
	int bw = 0;
	int bh = 0;
	char kbchar = 0;

	version_title = "Version 1.0.0\0";


	pos=2;
	pos=k_put_draw_text(pos,35,"FOENIX C256 VERSION:",fcolor,0);
	k_get_c256_major_version(buffer);
	pos=k_put_draw_text(pos,35,buffer,fcolor,0);
	k_get_c256_minor_version(buffer);
	pos=k_put_draw_text(pos,35,buffer,fcolor,0);
	
	pos=2;
	pos=k_put_draw_text(pos,37,"FPGA VERSION:",fcolor,0);
	k_get_fpga_date_month(buffer);
	pos=k_put_draw_text(pos,37,k_pad_string(strbuf,buffer,'0',2),fcolor,0);
	pos=k_put_draw_text(pos,37,"/",fcolor,0);
	k_get_fpga_date_day(buffer);
	pos=k_put_draw_text(pos,37,k_pad_string(strbuf,buffer,'0',2),fcolor,0);
	pos=k_put_draw_text(pos,37,"/",fcolor,0);
	k_get_fpga_date_year(buffer);
	pos=k_put_draw_text(pos,37,k_pad_string(strbuf,buffer,'0',2),fcolor,0);


	pos = 2;
	pos=k_put_draw_text(pos,2,"CURRENT COLOR:",15,0);
	k_itoa(fcolor,buffer,10);
	pos=k_put_draw_text(pos,2,buffer,15,0);

	pos = 2;
	k_draw_pixel(0,0,fcolor);
	pos=k_put_draw_text(pos,3,"READ COLOR AT 0,0 :",15,0);
	k_itoa(k_get_pixel_color(0,0),buffer,10);
	pos=k_put_draw_text(pos,3,buffer,15,0);



	pos = 2;
	pos=k_put_draw_text(pos,41,"SIZEOF CHAR:",fcolor,0);
	k_itoa(sizeof(char),buffer,10);
	pos=k_put_draw_text(pos,41,buffer,fcolor,0);

	pos = 2;
	pos=k_put_draw_text(pos,42,"SIZEOF INT:",fcolor,0);
	k_itoa(sizeof(int),buffer,10);
	pos=k_put_draw_text(pos,42,buffer,fcolor,0);

	pos = 2;
	pos=k_put_draw_text(pos,43,"SIZEOF LONG:",fcolor,0);
	k_itoa(sizeof(long),buffer,10);
	pos=k_put_draw_text(pos,43,buffer,fcolor,0);

	pos = 2;
	pos=k_put_draw_text(pos,44,"SIZEOF CHAR*:",fcolor,0);
	k_itoa(sizeof(char*),buffer,10);
	pos=k_put_draw_text(pos,44,buffer,fcolor,0);

	pos = 2;
	pos=k_put_draw_text(pos,45,"SIZEOF CHAR FAR*:",fcolor,0);
	k_itoa(sizeof(char FAR*),buffer,10);
	pos=k_put_draw_text(pos,45,buffer,fcolor,0);


	pos = 2;
	pos=k_put_draw_text(pos,46,"SIZEOF UINT:",fcolor,0);
	k_itoa(sizeof(unsigned int),buffer,10);
	pos=k_put_draw_text(pos,46,buffer,fcolor,0);

	pos = 2;
	pos=k_put_draw_text(pos,47,"SIZEOF ULONG:",fcolor,0);
	k_itoa(sizeof(unsigned long),buffer,10);
	pos=k_put_draw_text(pos,47,buffer,fcolor,0);


				
	/*
	pos = 2;
	pos=k_put_draw_text(pos,49,"MOUSE X:",fcolor,0);
	k_itoa(mx,buffer,10);
	pos=k_put_draw_text(pos,49,buffer,fcolor,0);
	pos = 2;
	pos=k_put_draw_text(pos,50,"MOUSE Y:",fcolor,0);
	k_itoa(my,buffer,10);
	pos=k_put_draw_text(pos,50,buffer,fcolor,0);
	pos = 2;
	pos=k_put_draw_text(pos,51,"MOUSE LEFT:",fcolor,0);
	k_itoa(mb & 0x0001,buffer,10);
	pos=k_put_draw_text(pos,51,buffer,fcolor,0);	
	pos=k_put_draw_text(pos,51," MOUSE MIDDLE:",fcolor,0);
	k_itoa(mb & 0x0004,buffer,10);
	pos=k_put_draw_text(pos,51,buffer,fcolor,0);
	pos=k_put_draw_text(pos,51," MOUSE RIGHT:",fcolor,0);
	k_itoa(mb & 0x0002,buffer,10);
	pos=k_put_draw_text(pos,51,buffer,fcolor,0);

	pos = 2;
	pos=k_put_draw_text(pos,52," KEY INDEX:",fcolor,0);
	k_itoa(k_get_key_handler(),buffer,10);
	pos=k_put_draw_text(pos,52,buffer,fcolor,0);

	*/
}

void k_draw_lines(void)
{
	int dx = 0;
	int dy = 0;
	int bc = 1;	
	int dx0 = 0;
	int dy0 = 0;
	
	for(dy=0;dy<480;dy+=5)
	{
		//if(dx0!=0 && dy0!=0)
		//	k_draw_line(0,dy0,dx0,479,0);
		
		k_draw_line(0,dy,dx,479,bc);

		dx0 = dx;
		dy0 = dy;
		
		dx+=5;
		bc++;
		if(bc > 15)
			bc = 1;
		
		
	}


	dx=479;
	bc = 1;
	for(dy=479;dy>=0;dy-=5)
	{
		
		//if(dx!=480 && dy!=480)
		//	k_draw_line(640,dy,dx,0,15);
		
		k_draw_line(639,dy,dx,0,bc);
		
		dx-=5;
		bc++;
		if(bc > 15)
			bc = 1;
	}
	
	/*
	for(x=0;x<640;x+=10)
	{
		
		for(y=0;y<480;y+=10)
		{
			if(x!=0 && y!=0)
				k_draw_line(x,y,640 - x,480 - y,0);
			k_draw_line(x,y,640 - x,480 - y,15);
		}
		
	}
	*/
}

void k_draw_fontset(void)
{
	int bx = 0;
	int by = 29; 
	int bc = 15;
	char bf = 1;
	
	for(bf=0;bf<64;bf++)
	{
		k_draw_char((char)bf*1,bx,by,bc);
		k_draw_char((char)bf+64,bx,by + 1,bc);
		k_draw_char((char)bf+128,bx,by + 2,bc);
		k_draw_char((char)bf+192,bx,by + 3,bc);


		if(bc > 15)
			bc = 1;
		
		bx++;
	}

}


void k_fill_bank(int bankId,char fcolor)
{
	long fill = 0xffffL;
	
	if(bankId == 0)
	{
		memset((unsigned char FAR *)BITMAP_BANK_0,fcolor + 0,fill);
		((unsigned char FAR *)BITMAP_BANK_0)[fill] = fcolor;
	}
	else if(bankId == 1)
	{
		memset((unsigned char FAR *)BITMAP_BANK_1,fcolor + 0,fill);
		((unsigned char FAR *)BITMAP_BANK_1)[fill] = fcolor;
	}
	else if(bankId == 2)
	{
		memset((unsigned char FAR *)BITMAP_BANK_2,fcolor + 0,fill);
		((unsigned char FAR *)BITMAP_BANK_2)[fill] = fcolor;
	}
	else if(bankId == 3)
	{
		memset((unsigned char FAR *)BITMAP_BANK_3,fcolor + 0,fill);
		((unsigned char FAR *)BITMAP_BANK_3)[fill] = fcolor;
	}
	else if(bankId == 4)
	{
		memset((unsigned char FAR *)BITMAP_BANK_4,fcolor + 0,fill);
		((unsigned char FAR *)BITMAP_BANK_4)[fill] = fcolor;
	}
	else if(bankId == 5)
	{
		memset((unsigned char FAR *)BITMAP_BANK_5,fcolor + 0,fill);
		((unsigned char FAR *)BITMAP_BANK_5)[fill] = fcolor;
	}

}




void k_fill_line(int cx,int cy,int width,int color)
{

	long locStart = (long)(( ((long)cy) * 640L) + ((long)cx) );
	memset(&(((unsigned char FAR *)BITMAP_BANK_0)[locStart]),color,width);
}

void k_vdraw_filled_rect(int cx,int cy,int height,int width,int color)
{
	int x = 0;
	int y = 0;
	int dx = cx + width;
	int dy = cy + height;
	
	if(dx > 639)
		dx = 639;
	if(dy > 479)
		dy = 479;
	
	for(y=cy;y<dy;y++)
	{
		long locStart = (long)(( ((long)y) * 640L) + ((long)cx) );
		memset(&(((unsigned char FAR *)SHADOW_BANK_0)[locStart]),color,dx - cx);
	}
}

void k_draw_filled_rect(int cx,int cy,int height,int width,int color)
{
	int x = 0;
	int y = 0;
	int dx = cx + width;
	int dy = cy + height;
	
	if(dx > 639)
		dx = 639;
	if(dy > 479)
		dy = 479;
	
	for(y=cy;y<dy;y++)
	{
		long locStart = (long)(( ((long)y) * 640L) + ((long)cx) );
		memset(&(((unsigned char FAR *)BITMAP_BANK_0)[locStart]),color,dx - cx);
	}
}


PWINDOW k_create_ui_window_class(int cx,int cy,int height,int width,LPCHAR title,LPCHAR className,FXWndProc wndProc)
{
	PWINDOW pWin = NULL;

	if(className && title)
	{
		pWin = (PWINDOW)k_mem_allocate_heap(sizeof(WINDOW));
		if(pWin)
		{
			memset(pWin,0,sizeof(WINDOW));

			strcpy(pWin->win_title,title);
			strcpy(pWin->win_class,className);
			pWin->win_x = cx;
			pWin->win_y = cy;
			pWin->win_width  = width;
			pWin->win_height = height;
			pWin->clickable = k_mem_allocate_heap(sizeof(CLICKABLE));
			if(pWin->clickable)
			{
				((PCLICKABLE)pWin->clickable)->area.x = cx;
				((PCLICKABLE)pWin->clickable)->area.y = cy;
				((PCLICKABLE)pWin->clickable)->area.height = height;
				((PCLICKABLE)pWin->clickable)->area.width = width;
			}
			//pWin->WndProc = wndProc;
		}
	}

	return pWin;
}


void k_draw_nonclient_area(PRECT wndRect,PRECT clientRect,UINT style,LPCSTR title,int color,int bgcolor)
{
	//PWINDOW pWin,ULONG style,

	int cx = wndRect->x;
	int cy = wndRect->x;
	int height = wndRect->height;
	int width = wndRect->width;

	FONTMETRIC metric;

	int i = 0;
	int odd = 1;
	int borderColor = 0;
	int borderTitle = 0;
	int borderWidth = 0;

	int titleOffsetX = 0;
	int titleOffsetY = 0;
	int titleScaler = 0;

	int clientOffsetX = 0;
	int clientOffsetY = 0;

	int currX = 0;
	int currY = 0;

	int endX = 0;

	int maxminPos = 0;


	int fillOffset = 2;  // correct the fill coordinates so the borders are the same size


	k_debug_integer("k_vdraw_ui_window:cx:",cx);
	k_debug_integer("k_vdraw_ui_window:cy:",cy);
	k_debug_integer("k_vdraw_ui_window:width:",width);
	k_debug_integer("k_vdraw_ui_window:height:",height);

	titleOffsetX = cx+2;
	titleOffsetY = cy+1;

	//k_debug_strings("k_vdraw_ui_window:","enter");

	if(style & FXWS_VISIBLE != FXWS_VISIBLE)
	{
		k_debug_strings("k_vdraw_ui_window::NOT RENDERING:",(LPCHAR)title);
		return;
	}

	//k_debug_strings("k_vdraw_ui_window::RENDERING:",title);

	if(style & FXWS_THICKFRAME)
	{
		borderWidth = 2;
	}
	else if(style & FXWS_BORDER)
	{
		borderWidth = 1;
	}
	else if(style & FXWS_DLGFRAME)
	{
		borderWidth = 4;
	}

	if( ((style & FXWS_CAPTION) == FXWS_CAPTION) || (style & FXWS_SYSMENU) || (style & FXWS_MINIMIZEBOX) || (style & FXWS_MAXIMIZEBOX))
	{
		borderTitle = 10;
	}

	clientOffsetX = cx + borderWidth;

	if(borderTitle)
		clientOffsetY = cy + borderTitle;
	else
		clientOffsetY = cy + borderWidth;

	currX = clientOffsetX;
	currY = clientOffsetY;

	endX = width + cx - borderWidth;
	maxminPos = 0;


	/*
	k_vdma_fill_rect(cx,cy,width,height,color);
	//k_delay(50);

	k_vdma_fill_rect(cx + borderWidth,
			         cy + (borderTitle + borderWidth),
					 //width - borderWidth - borderWidth + 1,
					 //height - borderTitle - borderWidth + 1,
					 width  - (borderWidth + fillOffset),
					 height - (borderTitle + borderWidth + fillOffset),
					 bgcolor);
	*/

	//k_debug_integer("k_vdraw_ui_window:cx:",cx);
	//k_debug_integer("k_vdraw_ui_window:cy:",cy);
	//k_debug_integer("k_vdraw_ui_window:width:",width);
	//k_debug_integer("k_vdraw_ui_window:height:",height);

	k_vdma_fill_rect(cx,cy,width,height,bgcolor);
	borderColor = color;
	for(i=0;i<borderWidth;i++)
	{
		if(borderWidth > 2)
		{
			borderColor = color;
			odd=!odd;
			if(odd)
			{
				borderColor = 0;
			}
		}

		k_draw_rect_slow(cx + i + 0,
						 cy + i + 0,
						 cx + width  - 0 - i,
						 cy + height - 0 - i,
						 borderColor);

	}



	if(borderTitle)
	{
		k_vdma_fill_rect(cx,cy,width,borderTitle,color);
	}

	k_get_font_metrics(&metric);


	//title = strupr(title);

	//FXWS_OVERLAPPED | FXWS_CAPTION | FXWS_SYSMENU | FXWS_THICKFRAME | FXWS_MINIMIZEBOX | FXWS_MAXIMIZEBOX

	if(style & FXWS_SYSMENU)
	{
		//k_debug_strings("k_vdraw_ui_window:","FXWS_SYSMENU");
		titleOffsetX+=k_put_wingadget_point(WINICON_TITLE_BCLOSE,titleOffsetX,titleOffsetY,k_getUIGadgetColor());
	}

	if((style & FXWS_CAPTION) == FXWS_CAPTION)
	{
		//k_debug_strings("k_vdraw_ui_window:","FXWS_CAPTION");
		//titleScaler = (int)(width / metric.width - 3);
		titleScaler = (int)(width / metric.width -1 );
		for(i=0;i<titleScaler;i++)
		{
			titleOffsetX+=k_put_wingadget_point(WINICON_TITLE_LINES,titleOffsetX,titleOffsetY,k_getUIGadgetColor());
		}
	}
	//titleOffsetX+=k_put_wingadget_point(WINICON_TITLE_BACK,titleOffsetX,titleOffsetY,14);
	//titleOffsetX+=2;
	//titleOffsetX+=k_put_wingadget_point(WINICON_TITLE_FRONT,titleOffsetX,titleOffsetY,14);

	if(style & FXWS_MAXIMIZEBOX)
	{
		//k_debug_strings("k_vdraw_ui_window:","FXWS_MAXIMIZEBOX");
		maxminPos+=metric.width;
		//k_put_wingadget_point(WINICON_BLOCK,endX - (metric.width),titleOffsetY,k_getUIWindowBorderColor());
		//k_put_wingadget_point(WINICON_TITLE_FRONT,endX - (metric.width),titleOffsetY,k_getUIGadgetColor());

		k_put_wingadget_point(WINICON_BLOCK,endX - maxminPos,titleOffsetY,k_getUIWindowBorderColor());
		k_put_wingadget_point(WINICON_TITLE_FRONT,endX - maxminPos,titleOffsetY,k_getUIGadgetColor());

		maxminPos+=2;
	}

	if(style & FXWS_MINIMIZEBOX)
	{
		//k_debug_strings("k_vdraw_ui_window:","FXWS_MINIMIZEBOX");
		maxminPos+=metric.width;
		//k_put_wingadget_point(WINICON_BLOCK,endX - (metric.width*2 + 2),titleOffsetY,k_getUIWindowBorderColor());
		//k_put_wingadget_point(WINICON_TITLE_BACK,endX - (metric.width*2 + 2),titleOffsetY,k_getUIGadgetColor());

		k_put_wingadget_point(WINICON_BLOCK,endX - maxminPos,titleOffsetY,k_getUIWindowBorderColor());
		k_put_wingadget_point(WINICON_TITLE_BACK,endX - maxminPos,titleOffsetY,k_getUIGadgetColor());

		maxminPos+=2;
	}

	if((style & FXWS_CAPTION) == FXWS_CAPTION)
	{

		for(i=0;i<=strlen(title);i++)
		{
			k_put_wingadget_point(WINICON_BLOCK,cx+borderWidth+metric.width+(metric.width*i),titleOffsetY,15);
		}
		k_draw_text_point(title,cx+(borderWidth + 3)+metric.width,titleOffsetY,k_getUIGadgetColor());
	}

	clientRect->x = clientOffsetX;
	clientRect->y = clientOffsetY;
	clientRect->width = (0 - (2*borderWidth));
	clientRect->height = (0 - clientOffsetY - borderWidth); ;

	k_debug_rect("RELATIVE CLIENT",clientRect);


	//k_debug_strings("k_vdraw_ui_window:","exit");
}




void k_vdraw_ui_window(PWINDOW pWin,ULONG style,int cx,int cy,int height,int width,char FAR *title,int color, int bgcolor)
{
	FONTMETRIC metric;
	
	int i = 0;
	int odd = 1;
	int borderColor = 0;
	int borderTitle = 0;
	int borderWidth = 0;

	int titleOffsetX = 0;
	int titleOffsetY = 0;
	int titleScaler = 0;
	
	int clientOffsetX = 0;
	int clientOffsetY = 0;
	
	int currX = 0;
	int currY = 0;
	
	int endX = 0;
	
	int maxminPos = 0;


	int fillOffset = 2;  // correct the fill coordinates so the borders are the same size

	/*
	if(pWin->pParentWindow)
	{
		cx = k_getWindowFromHandle(pWin->pParentWindow)->clientRect.x + cx;
		cy = k_getWindowFromHandle(pWin->pParentWindow)->clientRect.y + cy;
		k_debug_strings("k_vdraw_ui_window::IS CHILD:",title);
		k_debug_integer("k_vdraw_ui_window:cx:",cx);
		k_debug_integer("k_vdraw_ui_window:cy:",cy);
		k_debug_integer("k_vdraw_ui_window:width:",width);
		k_debug_integer("k_vdraw_ui_window:height:",height);
	}
	*/
	k_debug_strings("k_vdraw_ui_window::IS CHILD:",title);
	k_debug_integer("k_vdraw_ui_window:cx:",cx);
	k_debug_integer("k_vdraw_ui_window:cy:",cy);
	k_debug_integer("k_vdraw_ui_window:width:",width);
	k_debug_integer("k_vdraw_ui_window:height:",height);

	titleOffsetX = cx+2;
	titleOffsetY = cy+1;

	//k_debug_strings("k_vdraw_ui_window:","enter");

	if(style & FXWS_VISIBLE != FXWS_VISIBLE)
	{
		k_debug_strings("k_vdraw_ui_window::NOT RENDERING:",title);
		return;
	}

	//k_debug_strings("k_vdraw_ui_window::RENDERING:",title);

	if(style & FXWS_THICKFRAME)
	{
		borderWidth = 2;
	}
	else if(style & FXWS_BORDER)
	{
		borderWidth = 1;
	}
	else if(style & FXWS_DLGFRAME)
	{
		borderWidth = 4;
	}

	if( ((style & FXWS_CAPTION) == FXWS_CAPTION) || (style & FXWS_SYSMENU) || (style & FXWS_MINIMIZEBOX) || (style & FXWS_MAXIMIZEBOX))
	{
		borderTitle = 10;
	}

	clientOffsetX = cx + borderWidth;

	if(borderTitle)
		clientOffsetY = cy + borderTitle;
	else
		clientOffsetY = cy + borderWidth;

	currX = clientOffsetX;
	currY = clientOffsetY;

	endX = width + cx - borderWidth;
	maxminPos = 0;


	/*
	k_vdma_fill_rect(cx,cy,width,height,color);
	//k_delay(50);

	k_vdma_fill_rect(cx + borderWidth,
			         cy + (borderTitle + borderWidth),
					 //width - borderWidth - borderWidth + 1,
					 //height - borderTitle - borderWidth + 1,
					 width  - (borderWidth + fillOffset),
					 height - (borderTitle + borderWidth + fillOffset),
					 bgcolor);
	*/

	//k_debug_integer("k_vdraw_ui_window:cx:",cx);
	//k_debug_integer("k_vdraw_ui_window:cy:",cy);
	//k_debug_integer("k_vdraw_ui_window:width:",width);
	//k_debug_integer("k_vdraw_ui_window:height:",height);

	k_vdma_fill_rect(cx,cy,width,height,bgcolor);
	borderColor = color;
	for(i=0;i<borderWidth;i++)
	{
		if(borderWidth > 2)
		{
			borderColor = color;
			odd=!odd;
			if(odd)
			{
				borderColor = 0;
			}
		}

		k_draw_rect_slow(cx + i + 0,
						 cy + i + 0,
						 cx + width  - 0 - i,
						 cy + height - 0 - i,
						 borderColor);

	}



	if(borderTitle)
	{
		k_vdma_fill_rect(cx,cy,width,borderTitle,color);
	}

	k_get_font_metrics(&metric);
	
	
	//title = strupr(title);
	
	//FXWS_OVERLAPPED | FXWS_CAPTION | FXWS_SYSMENU | FXWS_THICKFRAME | FXWS_MINIMIZEBOX | FXWS_MAXIMIZEBOX

	if(style & FXWS_SYSMENU)
	{
		//k_debug_strings("k_vdraw_ui_window:","FXWS_SYSMENU");
		titleOffsetX+=k_put_wingadget_point(WINICON_TITLE_BCLOSE,titleOffsetX,titleOffsetY,k_getUIGadgetColor());
	}
	
	if((style & FXWS_CAPTION) == FXWS_CAPTION)
	{
		//k_debug_strings("k_vdraw_ui_window:","FXWS_CAPTION");
		//titleScaler = (int)(width / metric.width - 3);
		titleScaler = (int)(width / metric.width -1 );
		for(i=0;i<titleScaler;i++)
		{
			titleOffsetX+=k_put_wingadget_point(WINICON_TITLE_LINES,titleOffsetX,titleOffsetY,k_getUIGadgetColor());
		}
	}
	//titleOffsetX+=k_put_wingadget_point(WINICON_TITLE_BACK,titleOffsetX,titleOffsetY,14);
	//titleOffsetX+=2;
	//titleOffsetX+=k_put_wingadget_point(WINICON_TITLE_FRONT,titleOffsetX,titleOffsetY,14);
	
	if(style & FXWS_MAXIMIZEBOX)
	{
		//k_debug_strings("k_vdraw_ui_window:","FXWS_MAXIMIZEBOX");
		maxminPos+=metric.width;
		//k_put_wingadget_point(WINICON_BLOCK,endX - (metric.width),titleOffsetY,k_getUIWindowBorderColor());
		//k_put_wingadget_point(WINICON_TITLE_FRONT,endX - (metric.width),titleOffsetY,k_getUIGadgetColor());

		k_put_wingadget_point(WINICON_BLOCK,endX - maxminPos,titleOffsetY,k_getUIWindowBorderColor());
		k_put_wingadget_point(WINICON_TITLE_FRONT,endX - maxminPos,titleOffsetY,k_getUIGadgetColor());

		maxminPos+=2;
	}

	if(style & FXWS_MINIMIZEBOX)
	{
		//k_debug_strings("k_vdraw_ui_window:","FXWS_MINIMIZEBOX");
		maxminPos+=metric.width;
		//k_put_wingadget_point(WINICON_BLOCK,endX - (metric.width*2 + 2),titleOffsetY,k_getUIWindowBorderColor());
		//k_put_wingadget_point(WINICON_TITLE_BACK,endX - (metric.width*2 + 2),titleOffsetY,k_getUIGadgetColor());

		k_put_wingadget_point(WINICON_BLOCK,endX - maxminPos,titleOffsetY,k_getUIWindowBorderColor());
		k_put_wingadget_point(WINICON_TITLE_BACK,endX - maxminPos,titleOffsetY,k_getUIGadgetColor());

		maxminPos+=2;
	}

	if((style & FXWS_CAPTION) == FXWS_CAPTION)
	{

		for(i=0;i<=strlen(title);i++)
		{
			k_put_wingadget_point(WINICON_BLOCK,cx+borderWidth+metric.width+(metric.width*i),titleOffsetY,15);
		}
		k_draw_text_point(title,cx+(borderWidth + 3)+metric.width,titleOffsetY,k_getUIGadgetColor());
	}

	pWin->clientRect.x = clientOffsetX;
	pWin->clientRect.y = clientOffsetY;
	pWin->clientRect.width = (width - (2*borderWidth));
	pWin->clientRect.height = (height - clientOffsetY - borderWidth); ;

	k_debug_strings("k_vdraw_ui_window:","exit");
}

PMENU k_draw_menu(HMENU hMenu,int color, int bgcolor)
{
	FONTMETRIC metric;

	int i = 0;

	int borderTitle = 10;
	int borderWidth = 3;

	int titleOffsetX = ((PMENU)hMenu)->cx+2;
	int titleOffsetY = ((PMENU)hMenu)->cy+2;
	int titleScaler = 0;

	int clientOffsetX = ((PMENU)hMenu)->cx+borderWidth+2;
	int clientOffsetY = ((PMENU)hMenu)->cy+borderTitle+1;

	int endX = ((PMENU)hMenu)->width + ((PMENU)hMenu)->cx - borderWidth;


	k_get_font_metrics(&metric);


	//int height = 0;
	/*
	PMENU menu = (PMENU)k_mem_allocate_heap(sizeof(MENU));
	memset(menu,0,sizeof(MENU));

	menu->cx = cx;
	menu->cy = cy;
	menu->fcolor = color;
	menu->bcolor = bgcolor;
	menu->pCaption = k_string_copy_string(strupr(title));

	k_get_font_metrics(&metric);

	//height = metric.height + (int)(metric.width/4);

	menu->height = height;
	menu->width  = width;


	k_debug_integer("k_vdraw_ui_menu:menu->cx:",menu->cx);
	k_debug_integer("k_vdraw_ui_menu:menu->cy:",menu->cy);
	k_debug_integer("k_vdraw_ui_menu:menu->height:",menu->height);
	k_debug_integer("k_vdraw_ui_menu:menu->width:",menu->width);
	*/

	//k_vdma_fill_rect(cx,cy,width,height,color);

	//k_vdma_fill_rect(cx,cy,width,height,bgcolor); // +1 on width and height for VDMA
	k_vdma_fill_rect(((PMENU)hMenu)->cx,((PMENU)hMenu)->cy,((PMENU)hMenu)->width,((PMENU)hMenu)->height,color);

	//k_delay(15);

	//title = strupr(title);

	//titleOffsetX+=k_put_wingadget_point(WINICON_TITLE_ACLOSE,titleOffsetX,titleOffsetY,14);
	/*
	titleScaler = (int)(width / metric.width - 4);
	for(i=0;i<titleScaler;i++)
	{
		titleOffsetX+=k_put_wingadget_point(WINICON_TITLE_LINES,titleOffsetX,titleOffsetY,14);
	}*/

	k_put_wingadget_point(WINICON_TITLE_BACK,endX - (metric.width*2 + 2),titleOffsetY,14);
	k_put_wingadget_point(WINICON_TITLE_FRONT,endX - (metric.width),titleOffsetY,14);

	//k_render_wingadget(WINICON_TITLE_BACK,endX - (metric.width*2 + 2),titleOffsetY,14,k_gadget_title_back_callback);
	//k_render_wingadget(WINICON_TITLE_FRONT,endX - (metric.width),titleOffsetY,14,k_gadget_title_front_callback);

	i = k_draw_text_point(((PMENU)hMenu)->pCaption,((PMENU)hMenu)->cx+2+metric.width,titleOffsetY,bgcolor);
	//k_render_text(title,cx+2+metric.width,titleOffsetY,bgcolor,k_text_callback);


	return NULL;
}

PMENU k_vdraw_ui_menu(int cx,int cy,int width,int height,LPCSTR title,int color, int bgcolor)
{
	FONTMETRIC metric;
	
	int i = 0;
	
	int borderTitle = 10;
	int borderWidth = 3;

	int titleOffsetX = cx+2;
	int titleOffsetY = cy+2;
	int titleScaler = 0;
	
	int clientOffsetX = cx+borderWidth+2;
	int clientOffsetY = cy+borderTitle+1;
	
	int endX = width + cx - borderWidth;
	

	k_get_font_metrics(&metric);

	k_debug_integer("k_vdraw_ui_menu::width:",width);
	k_debug_integer("k_vdraw_ui_menu::height:",height);
	k_debug_strings("k_vdraw_ui_menu::title:",(LPSTR)title);

	//int height = 0;
	/*
	PMENU menu = (PMENU)k_mem_allocate_heap(sizeof(MENU));
	memset(menu,0,sizeof(MENU));

	menu->cx = cx;
	menu->cy = cy;
	menu->fcolor = color;
	menu->bcolor = bgcolor;
	menu->pCaption = k_string_copy_string(strupr(title));

	k_get_font_metrics(&metric);
	
	//height = metric.height + (int)(metric.width/4);

	menu->height = height;
	menu->width  = width;


	k_debug_integer("k_vdraw_ui_menu:menu->cx:",menu->cx);
	k_debug_integer("k_vdraw_ui_menu:menu->cy:",menu->cy);
	k_debug_integer("k_vdraw_ui_menu:menu->height:",menu->height);
	k_debug_integer("k_vdraw_ui_menu:menu->width:",menu->width);
	*/

	//k_vdma_fill_rect(cx,cy,width,height,color);

	//k_vdma_fill_rect(cx,cy,width,height,bgcolor); // +1 on width and height for VDMA
	k_vdma_fill_rect(cx,cy,width ,height,bgcolor);//k_getUIMenuColor());

	//k_delay(15);
	
	//title = strupr(title);
	
	//titleOffsetX+=k_put_wingadget_point(WINICON_TITLE_ACLOSE,titleOffsetX,titleOffsetY,14);	
	/*
	titleScaler = (int)(width / metric.width - 4);
	for(i=0;i<titleScaler;i++)
	{
		titleOffsetX+=k_put_wingadget_point(WINICON_TITLE_LINES,titleOffsetX,titleOffsetY,14);	
	}*/

	k_put_wingadget_point(WINICON_TITLE_BACK,endX - (metric.width*2 + 2),titleOffsetY,color);//k_getUIGadgetColor());
	k_put_wingadget_point(WINICON_TITLE_FRONT,endX - (metric.width),titleOffsetY,color);//k_getUIGadgetColor());

	//k_render_wingadget(WINICON_TITLE_BACK,endX - (metric.width*2 + 2),titleOffsetY,14,k_gadget_title_back_callback);
	//k_render_wingadget(WINICON_TITLE_FRONT,endX - (metric.width),titleOffsetY,14,k_gadget_title_front_callback);

	if(title)
		i = k_draw_text_point(title,cx+2+metric.width,titleOffsetY,color);//k_getUIGadgetColor());
	//k_render_text(title,cx+2+metric.width,titleOffsetY,bgcolor,k_text_callback);

	
	return NULL;
}


PMENU k_vdraw_ui_menu_ex(int cx,int cy,int width,int height,LPCSTR title,int color, int bgcolor,LPVOID *prects)
{
	FONTMETRIC metric;

	int i = 0;

	int borderTitle = 10;
	int borderWidth = 3;

	int titleOffsetX = cx+2;
	int titleOffsetY = cy+2;
	int titleScaler = 0;

	int clientOffsetX = cx+borderWidth+2;
	int clientOffsetY = cy+borderTitle+1;

	int endX = width + cx - borderWidth;


	k_get_font_metrics(&metric);


	//int height = 0;
	/*
	PMENU menu = (PMENU)k_mem_allocate_heap(sizeof(MENU));
	memset(menu,0,sizeof(MENU));

	menu->cx = cx;
	menu->cy = cy;
	menu->fcolor = color;
	menu->bcolor = bgcolor;
	menu->pCaption = k_string_copy_string(strupr(title));

	k_get_font_metrics(&metric);

	//height = metric.height + (int)(metric.width/4);

	menu->height = height;
	menu->width  = width;


	k_debug_integer("k_vdraw_ui_menu:menu->cx:",menu->cx);
	k_debug_integer("k_vdraw_ui_menu:menu->cy:",menu->cy);
	k_debug_integer("k_vdraw_ui_menu:menu->height:",menu->height);
	k_debug_integer("k_vdraw_ui_menu:menu->width:",menu->width);
	*/

	//k_vdma_fill_rect(cx,cy,width,height,color);

	//k_vdma_fill_rect(cx,cy,width,height,bgcolor); // +1 on width and height for VDMA
	k_vdma_fill_rect(cx,cy,width,height,color);

	//k_delay(15);

	//title = strupr(title);

	//titleOffsetX+=k_put_wingadget_point(WINICON_TITLE_ACLOSE,titleOffsetX,titleOffsetY,14);
	/*
	titleScaler = (int)(width / metric.width - 4);
	for(i=0;i<titleScaler;i++)
	{
		titleOffsetX+=k_put_wingadget_point(WINICON_TITLE_LINES,titleOffsetX,titleOffsetY,14);
	}*/

	k_put_wingadget_point(WINICON_TITLE_BACK,endX - (metric.width*2 + 2),titleOffsetY,14);
	k_put_wingadget_point(WINICON_TITLE_FRONT,endX - (metric.width),titleOffsetY,14);

	//k_render_wingadget(WINICON_TITLE_BACK,endX - (metric.width*2 + 2),titleOffsetY,14,k_gadget_title_back_callback);
	//k_render_wingadget(WINICON_TITLE_FRONT,endX - (metric.width),titleOffsetY,14,k_gadget_title_front_callback);

	//i = k_draw_text_point(title,cx+2+metric.width,titleOffsetY,bgcolor);
	//k_render_text(title,cx+2+metric.width,titleOffsetY,bgcolor,k_text_callback);


	return NULL;
}



void k_gadget_title_front_callback(PWINDOW gadgetWindow)
{
	k_debug_message("k_gadget_title_front_callback:clicked:",gadgetWindow->win_class);
	k_send_message(NULL,FX_WINDOW_TOFRONT,NULL,0);
	return;
}

void k_gadget_title_back_callback(PWINDOW gadgetWindow)
{
	k_debug_message("k_gadget_title_back_callback:clicked:",gadgetWindow->win_class);
	k_send_message(NULL,FX_WINDOW_TOBACK,NULL,0);
	return;
}



PMENU k_render_menu(PMENU menu)
{
	FONTMETRIC metric;

	int i = 0;

	int cx = menu->cx;
	int cy = menu->cy;

	int borderTitle = 10;
	int borderWidth = 3;

	int titleOffsetX = cx+2;
	int titleOffsetY = cy+2;
	int titleScaler = 0;

	int clientOffsetX = cx+borderWidth+2;
	int clientOffsetY = cy+borderTitle+1;

	int endX = menu->width + cx - borderWidth;

	k_get_font_metrics(&metric);


	k_debug_integer("k_render_menu:menu->cx:",menu->cx);
	k_debug_integer("k_render_menu:menu->cy:",menu->cy);
	k_debug_integer("k_render_menu:menu->height:",menu->height);
	k_debug_integer("k_render_menu:menu->width:",menu->width);


	k_vdma_fill_rect(cx-1,cy,menu->width+1,menu->height+1,0);
	k_vdma_fill_rect(cx,cy,menu->width,menu->height,menu->fcolor);

	//k_vdma_fill_rect(cx,cy,menu->width,menu->height,menu->fcolor);


	k_put_wingadget_point(WINICON_TITLE_BACK,endX - (metric.width*2 + 2),titleOffsetY,14);
	k_put_wingadget_point(WINICON_TITLE_FRONT,endX - (metric.width),titleOffsetY,14);

	k_draw_text_point((LPCHAR)menu->pCaption,cx+2+metric.width,titleOffsetY,0);

	return menu;
}

void k_draw_ui_window(int cx,int cy,int height,int width,char FAR *title,int color, int bgcolor)
{
	FONTMETRIC metric;
	
	int i = 0;
	
	int borderTitle = 10;
	int borderWidth = 2;

	int titleOffsetX = cx+2;
	int titleOffsetY = cy+2;
	int titleScaler = 0;
	
	int clientOffsetX = cx+borderWidth+2;
	int clientOffsetY = cy+borderTitle+1;
	
	int currX = clientOffsetX;
	int currY = clientOffsetY;
	
	int endX = width + cx - borderWidth;
	
	k_draw_filled_rect(cx,cy,height,width,color);	
	k_draw_filled_rect(cx+borderWidth,cy+borderTitle,
	                   height - borderTitle - borderWidth,
					   width - borderWidth - borderWidth,
					   bgcolor);
	
	k_get_font_metrics(&metric);
	
	
	title = strupr(title);
	
	titleOffsetX+=k_put_wingadget_point(WINICON_TITLE_ACLOSE,titleOffsetX,titleOffsetY,14);	
	
	titleScaler = (int)(width / metric.width - 4);
	for(i=0;i<titleScaler;i++)
	{
		titleOffsetX+=k_put_wingadget_point(WINICON_TITLE_LINES,titleOffsetX,titleOffsetY,14);	
	}
	/*
	titleOffsetX+=k_put_wingadget_point(WINICON_TITLE_BACK,titleOffsetX,titleOffsetY,14);
	titleOffsetX+=2;
	titleOffsetX+=k_put_wingadget_point(WINICON_TITLE_FRONT,titleOffsetX,titleOffsetY,14);
	*/
	
	k_put_wingadget_point(WINICON_TITLE_BACK,endX - (metric.width*2 + 2),titleOffsetY,14);
	k_put_wingadget_point(WINICON_TITLE_FRONT,endX - (metric.width),titleOffsetY,14);
	
	
	for(i=0;i<=strlen(title);i++)
	{
		k_put_wingadget_point(WINICON_BLOCK,cx+2+metric.width+(metric.width*i),titleOffsetY,15);	
	}
	k_draw_text_point(title,cx+2+metric.width,titleOffsetY,0);
	
	/*
	k_put_wingadget_point(0x01,titleOffsetX,titleOffsetY,14);	
	titleOffsetX+=metric.width;
	
	titleOffsetX+=k_draw_text_point(title,titleOffsetX,titleOffsetY,0);
	titleOffsetX+=metric.width;
	k_put_wingadget_point(0x00,titleOffsetX,titleOffsetY,14);	
	titleOffsetX+=metric.width;
	k_put_wingadget_point(0x00,titleOffsetX,titleOffsetY,14);	
	titleOffsetX+=metric.width;
	k_put_wingadget_point(0x00,titleOffsetX,titleOffsetY,14);	
	*/
	
	k_draw_text_point("READY.",currX,currY,15);
	currY+=metric.height;	
	k_draw_text_point("10 PRINT \"HELLO WORLD!\"",currX,currY,15);
	currY+=metric.height;
	k_draw_text_point("RUN",currX,currY,15);
	currY+=metric.height;
	k_draw_text_point("HELLO WORLD!",currX,currY,15);
}


void k_paint_brush_rect(long x,long y,int width,int height,BYTE pattern)
{
	ULONG pos = 0L;
	BOOL odd = FALSE;
	long startLocation = (long)(( ((long)y) * 640L) + ((long)x) );
	long endLocation   = (long)(( ((long)479) * 640L) + ((long)639) );

	///k_paint_brush_at_address((char FAR * )pixelLocation, width, height,pattern);

	for(pos=0;pos<479;pos++)
	{
		if(odd)
		{
			memcpy( (LPCHAR)(0xB00000 + ((long)pos) * 640L)   ,BG_FILL_LINE_ODD,80);
		}
		else
		{
			memcpy( (LPCHAR)(0xB00000 + ((long)pos) * 640L) ,BG_FILL_LINE_EVEN,80);

		}
		odd=!odd;
	}



	return;
}

void k_paint_brush_at_address(char FAR * pdst,int width,int height,BYTE pattern)
{
	int pos = 0;
	int spinLock = 0;
	char status = VDMA_STAT_VDMA_IPS;


	while(status == VDMA_STAT_VDMA_IPS)
	{
		status = (VDMA_STATUS_REG[0] & VDMA_STAT_VDMA_IPS);
	}

	VDMA_CONTROL_REG[0] = VDMA_CTRL_ENABLE | VDMA_CTRL_TRF_FILL;

	*BM_START_ADDY_L = 0x00;
	*BM_START_ADDY_M = 0x00;
	*BM_START_ADDY_H = 0x00;
	*((char FAR*)0xAF1F80) = 0x02;

	*BM_X_SIZE_L = 0x80;
	*BM_X_SIZE_H = 0x02;
	*BM_Y_SIZE_L = 0xE0;
	*BM_Y_SIZE_H = 0x01;

	*VDMA_X_SIZE_L = LOBYTE(width);
	*VDMA_X_SIZE_H = HIBYTE(width);

	*VDMA_Y_SIZE_L = LOBYTE(height);
	*VDMA_Y_SIZE_H = HIBYTE(height);

	*VDMA_DST_STRIDE_L = 0x80;
	*VDMA_DST_STRIDE_H	= 0x02;


	VDMA_DST_ADDY_L[0] = L24BYTE((long)pdst);
	VDMA_DST_ADDY_M[0] = M24BYTE((long)pdst);
	VDMA_DST_ADDY_H[0] = H24BYTE((long)pdst);

	VDMA_BYTE_2_WRITE[0] = pattern;

	VDMA_CONTROL_REG[0]  = (VDMA_CTRL_ENABLE | VDMA_CTRL_TRF_FILL | VDMA_CTRL_START_TRF);


   return ;
}



void k_vdma_fill_rect(long x,long y,int width,int height,unsigned char pcolor)
{
	long pixelLocation = (long)(( ((long)y) * (640L)) + ((long)x) );

	k_vdma_fill_address((char FAR * )pixelLocation, width - 2, height - 1,pcolor);

#ifdef FX_C256_USESHADOW
	k_shadow_fill_rect(x,y, width, height, pcolor);
#endif
	//k_shadow_bitblt(x,y,width,height,x,y);

	return;
}

void k_vdma_fill_address_old(char FAR * pdst,int width,int height,unsigned char data)
{
	int pos = 0;
	UINT spinLock = 0;
	char status = VDMA_STAT_VDMA_IPS;

	/*
	while(status == VDMA_STAT_VDMA_IPS)
	{
		status = ( *VDMA_STATUS_REG & VDMA_STAT_VDMA_IPS);
		spinLock++;

		if(spinLock > 32000)
		{
			break;
		}
	}
	k_debug_integer("k_vdma_fill_address1::spinLock:",spinLock);
	*/
	VDMA_CONTROL_REG[0] = VDMA_CTRL_ENABLE | VDMA_CTRL_1D_2D | VDMA_CTRL_TRF_FILL;

	VDMA_DST_ADDY_L[0] = L24BYTE((long)pdst);
	VDMA_DST_ADDY_M[0] = M24BYTE((long)pdst);
	VDMA_DST_ADDY_H[0] = H24BYTE((long)pdst);

	*BM_START_ADDY_L = 0x00;
	*BM_START_ADDY_M = 0x00;
	*BM_START_ADDY_H = 0x00;
	*((char FAR*)0xAF1F80) = 0x02;
	
	*BM_X_SIZE_L = 0x80;
	*BM_X_SIZE_H = 0x02;	
	*BM_Y_SIZE_L = 0xE0;
	*BM_Y_SIZE_H = 0x01;

	width+=(width & 0x0001);

	*VDMA_X_SIZE_L = LOBYTE(width);
	*VDMA_X_SIZE_H = HIBYTE(width);

	*VDMA_Y_SIZE_L = LOBYTE(height);
	*VDMA_Y_SIZE_H = HIBYTE(height);

	*VDMA_DST_STRIDE_L  = 0x80;
	*VDMA_DST_STRIDE_H	= 0x02;
	

	VDMA_DST_ADDY_L[0] = L24BYTE((long)pdst);
	VDMA_DST_ADDY_M[0] = M24BYTE((long)pdst);
	VDMA_DST_ADDY_H[0] = H24BYTE((long)pdst);

	VDMA_BYTE_2_WRITE[0] = (char)data;
	
	VDMA_CONTROL_REG[0]  = (VDMA_CTRL_ENABLE | VDMA_CTRL_1D_2D | VDMA_CTRL_TRF_FILL | VDMA_CTRL_START_TRF);//0x87;


	status = VDMA_STAT_VDMA_IPS;
	while(status == VDMA_STAT_VDMA_IPS)
	{
		status = ( *VDMA_STATUS_REG & VDMA_STAT_VDMA_IPS);
		spinLock++;

		if(spinLock > 32000)
		{
			break;
		}
	}
	k_debug_integer("k_vdma_fill_address2::spinLock:",spinLock);



	/*
	while(status == VDMA_STAT_VDMA_IPS)
	{
		status = ( *((unsigned char *)0xAF0401) & VDMA_STAT_VDMA_IPS);
	}
	
	
	while(status == VDMA_STAT_VDMA_IPS)
	{
		#asm
		PHA 
        LDA $AF0401
        AND #$80
        CMP #$80
        STA %%status
		PLA
		#endasm
	}
	*/
	
   //return *VDMA_STATUS_REG;
   //return VDMA_STATUS_REG[0];
   //VDMA_CONTROL_REG[0] = (char)0x00;
   
   return ;
}

void k_vdma_fill_address(char FAR * pdst,int width,int height,unsigned char data)
{
	int pos = 0;
	UINT spinLock = 0;
	char status = VDMA_STAT_VDMA_IPS;

	VDMA_CONTROL_REG[0] = ( VDMA_CTRL_ENABLE | VDMA_CTRL_TRF_FILL | VDMA_CTRL_1D_2D );

	VDMA_BYTE_2_WRITE[0] = (UCHAR)data;

	VDMA_DST_ADDY_L[0] = L24BYTE((long)pdst);
	VDMA_DST_ADDY_M[0] = M24BYTE((long)pdst);
	VDMA_DST_ADDY_H[0] = H24BYTE((long)pdst);

	VDMA_X_SIZE_L[0] = LOBYTE(width + 1);
	VDMA_X_SIZE_H[0] = HIBYTE(width + 1);

	VDMA_Y_SIZE_L[0] = LOBYTE(height + 1);
	VDMA_Y_SIZE_H[0] = HIBYTE(height + 1);
	VDMA_Y_SIZE_H[1] = 0x00;

	*VDMA_SRC_STRIDE_L = 0x00;
	*VDMA_SRC_STRIDE_H = 0x00;

	*VDMA_DST_STRIDE_L  = 0x80;
	*VDMA_DST_STRIDE_H	= 0x02;

    VDMA_CONTROL_REG[0]  = (VDMA_CTRL_ENABLE | VDMA_CTRL_1D_2D | VDMA_CTRL_TRF_FILL | VDMA_CTRL_START_TRF);

    asm NOP;
    asm NOP;
    asm NOP;

	while(status == VDMA_STAT_VDMA_IPS)
	{
		status = ( *VDMA_STATUS_REG & VDMA_STAT_VDMA_IPS);
		spinLock++;

		if(spinLock > 32000)
		{
			break;
		}
	}

#ifdef USE_MAX_DEBUG
	k_debug_integer("k_vdma_fill_address1::spinLock:",spinLock);
#endif

	asm NOP;

	VDMA_CONTROL_REG[0] = 0;

   return ;
}



void k_vdma_fill(char FAR * pdst,long size,unsigned char data)
{
	int pos = 0;
	int spinLock = 0;
	char status = VDMA_STAT_VDMA_IPS;
	/*
	char size_low = L24BYTE(size);
	char size_mid = M24BYTE(size);
	char size_hi  = H24BYTE(size);

	char addr_low = L24BYTE((long)pdst);
	char addr_mid = M24BYTE((long)pdst);
	char addr_hi  = H24BYTE((long)pdst);

	
	pos=2;
	k_itoa(size_low,buffer,16);
	pos=k_put_draw_text(pos,2,buffer,15,0);
	pos=k_put_draw_text(pos,2,"L:",15,0);
	k_itoa(size_mid,buffer,16);
	pos=k_put_draw_text(pos,2,buffer,15,0);
	pos=k_put_draw_text(pos,2,"M:",15,0);
	k_itoa(size_hi,buffer,16);
	pos=k_put_draw_text(pos,2,buffer,15,0);
	pos=k_put_draw_text(pos,2,"H",15,0);
	
	pos=2;
	k_itoa(addr_low,buffer,16);
	pos=k_put_draw_text(pos,3,buffer,15,0);
	pos=k_put_draw_text(pos,3,"L:",15,0);
	k_itoa(addr_mid,buffer,16);
	pos=k_put_draw_text(pos,3,buffer,15,0);
	pos=k_put_draw_text(pos,3,"M:",15,0);
	k_itoa(addr_hi,buffer,16);
	pos=k_put_draw_text(pos,3,buffer,15,0);
	pos=k_put_draw_text(pos,3,"H",15,0);
	*/
	/*
	if(VDMA_CONTROL_REG[0] > 0)
	{
		while(status == VDMA_STAT_VDMA_IPS || spinLock > 1000)
		{
			status = ( *((unsigned char *)0xAF0401) & (unsigned char)VDMA_STAT_VDMA_IPS);
			spinLock++;
		}
	}
	*/
	VDMA_CONTROL_REG[0] = VDMA_CTRL_ENABLE;

	*BM_START_ADDY_L = 0x00;
	*BM_START_ADDY_M = 0x00;
	*BM_START_ADDY_H = 0x00;
	*((char FAR*)0xAF1F80) = 0x02;
	
	*BM_X_SIZE_L = 0x80;
	*BM_X_SIZE_H = 0x02;	
	*BM_Y_SIZE_L = 0xE0;
	*BM_Y_SIZE_H = 0x01;
	
	VDMA_SIZE_L[0] = L24BYTE(size);
	VDMA_SIZE_M[0] = M24BYTE(size);
	VDMA_SIZE_H[0] = H24BYTE(size);
	
	
	*VDMA_X_SIZE_L = 0x80;
	*VDMA_X_SIZE_H = 0x20;

	*VDMA_Y_SIZE_L = 0xE0;
	*VDMA_Y_SIZE_H = 0x01;

	*VDMA_DST_STRIDE_L = 0x80;
	*VDMA_DST_STRIDE_H	= 0x02;
	
	/*
        LDA #200
        STA @lVDMA_X_SIZE_L
        LDA #00
        STA @lVDMA_X_SIZE_H

        LDA #64
        STA @lVDMA_Y_SIZE_L
        LDA #00
        STA @lVDMA_Y_SIZE_H

        LDA #$60
        STA @lVDMA_DST_ADDY_L
        LDA #$90
        STA @lVDMA_DST_ADDY_M
        LDA #$01
        STA @lVDMA_DST_ADDY_H

        LDA #$80
        STA @lVDMA_DST_STRIDE_L
        LDA #$02
        STA @lVDMA_DST_STRIDE_H
	*/

	VDMA_DST_ADDY_L[0] = L24BYTE((long)pdst);
	VDMA_DST_ADDY_M[0] = M24BYTE((long)pdst);
	VDMA_DST_ADDY_H[0] = H24BYTE((long)pdst);

	VDMA_BYTE_2_WRITE[0] = (char)data;
	
	VDMA_CONTROL_REG[0]  = (VDMA_CTRL_ENABLE | VDMA_CTRL_TRF_FILL | VDMA_CTRL_START_TRF);//0x85;
   
	/*
	while(status == VDMA_STAT_VDMA_IPS)
	{
		status = ( *((unsigned char *)0xAF0401) & VDMA_STAT_VDMA_IPS);
	}
	
	
	while(status == VDMA_STAT_VDMA_IPS)
	{
		#asm
		PHA 
        LDA $AF0401
        AND #$80
        CMP #$80
        STA %%status
		PLA
		#endasm
	}
	*/
	
   //return *VDMA_STATUS_REG;
   //return VDMA_STATUS_REG[0];
   //VDMA_CONTROL_REG[0] = (char)0x00;
   
   return ;
}

void k_init_desktop(PFXPROCESS process)
{

	int i = 0;
	int x = 0;
	int y = 200;


	PFXSTRING fxtitle = NULL;
	PFXSTRING fxstring = NULL;

	ULONG availableMem = 0L;


	k_clear_screen(0);
	setColors();


#ifdef USE_FX256_FMX

	*BM1_CONTROL_REG = 0x01;
	*BM1_START_ADDY_L = 0;
	*BM1_START_ADDY_M = 0;
	*BM1_START_ADDY_H = 0;

	*MASTER_CTRL_REG_H 	= 0x00;
	*MASTER_CTRL_REG_L 	= (MSTR_CTRL_GRAPH_MODE_EN | MSTR_CTRL_BITMAP_EN);

	*MASTER_CTRL_REG_H 	= 0x01;
	*MASTER_CTRL_REG_L 	= (MSTR_CTRL_GRAPH_MODE_EN | MSTR_CTRL_BITMAP_EN);

	*BM1_CONTROL_REG = ( BM_ENABLE | BM_LUT0 );

	*MASTER_CTRL_REG_H 	= 0x00;
	*MASTER_CTRL_REG_L 	= (MSTR_CTRL_GRAPH_MODE_EN | MSTR_CTRL_BITMAP_EN);


#else

	VDMA_CONTROL_REG[0] = VDMA_CTRL_ENABLE;

	*BM_START_ADDY_L = 0x00;
	*BM_START_ADDY_M = 0x00;
	*BM_START_ADDY_H = 0x00;
	*BG_CHAR_LUT_PTR = 0x02;

	*BM_X_SIZE_L = 0x80;
	*BM_X_SIZE_H = 0x02;
	*BM_Y_SIZE_L = 0xE0;
	*BM_Y_SIZE_H = 0x01;

	//*FG_CHAR_LUT_PTR    = 0x00;
	//*BG_CHAR_LUT_PTR    = 0x00;
	*BM_CONTROL_REG 	= 0x08;

	*MASTER_CTRL_REG_H 	= 0x00;
	*MASTER_CTRL_REG_L 	= (MSTR_CTRL_GRAPH_MODE_EN | MSTR_CTRL_BITMAP_EN);

#endif

	k_disable_border();

	//setColors();
	//defineGrayPalette();



	if(!_k_WindowObject_nodes)
		_k_WindowObject_nodes = k_nodelist_init(0xF0,"master",NULL);
	if(!_k_WindowHit_nodes)
		_k_WindowHit_nodes    = k_nodelist_init(0xF0,"master",NULL);

	if(process->desktopCtl == NULL)
	{
		process->desktopCtl = k_mem_allocate_heap(sizeof(DESKTOP_CONTROL));
		memset(process->desktopCtl,0,sizeof(DESKTOP_CONTROL));
	}
	process->desktopCtl->backgroundColor = k_getUIDesktopColor() ;//14;
	process->desktopCtl->currentDiskName = NULL;

	// clear screen the old way

	/*
	for(y=0;y<480;y++)
	{
		k_fill_line(0,y,639,k_getUIDesktopColor());
	}
	*/
	k_vdma_fill_rect(0,0,640,480,k_getUIBackgroundColor());


	//k_paint_brush_rect(0,0,640,480,0x55);


	/*
	fxtitle  = k_fxstring_new(CONST_WB_MENU_TITLE,96);
	fxstring = k_fxstring_from_long(k_getZeroPage()->availableMemoryK);

	//k_debug_message("fxtitle:",fxtitle->buffer);
	//k_debug_message("fxstring:",k_strip_padding(fxstring->buffer));

	//process->desktopCtl->titleNodes = k_vdraw_ui_menu(0,0,639,"C256 Foenix Workbench - Free Mem: 1792K Video Mem: 4096K",15,3);
	process->desktopCtl->titleNodes = k_vdraw_ui_menu(0,0,639,
   													  k_string_replace(fxtitle->buffer, "%d", k_strip_padding(fxstring->buffer)),
													  k_getUIMenuColor(),
													  k_getUIWindowFrameColor());

	if(fxstring)
		k_fxstring_free(fxstring);
	*/

	//k_vdraw_ui_menu(0,0,639,"C256 Foenix Workbench - Free Memory: 1792K Video Memory: 4096K",15,3);

	/*
	//FX-Basic
	k_put_winicon_point(ICON_DISK,640 - 40,20,0,PAINTMODE_DEFAULT);
	k_draw_text_point("FX-BASIC",640 - 35 - (8*4),40,0);

	//Projects
	k_put_winicon_point(ICON_CABINET,640 - 40,55,2,PAINTMODE_DEFAULT);
	k_draw_text_point("PROJECTS",640 - 35 - (8*4),75,0);
	*/

	//Shredder
	//k_put_winicon_point(ICON_TRASH,640 - 40,450,1,PAINTMODE_DEFAULT);
	//k_draw_text_point("SHREDDER",640 - 35 - (8*4),470,0);



	return;
}



void k_add_window_hit_node(PCLICKDETECTED pcd)
{
	k_debug_pointer("k_add_window_hit_node:",pcd);
	k_nodelist_add(_k_WindowHit_nodes,k_nodelist_create(1,"window",pcd,NULL,NULL));
}

/*
int k_point_in_list_depth(int x,int y,PCLICKABLE clickableList,int cSize)
{
	int i = 0;
	int index = -1;
	int found = 0;
	PCLICKABLE top = NULL;
	RECT r;

	for(i=0;i<cSize;i++)
	{
		hitList[i] = NULL;
		r = clickableList[i].area;
		if(x >=r.x && x<(r.x+r.width))
		{
			if(y >=r.y && y<(r.y+r.height))
			{
				index = i;
				//clickableList[i].depth = 1;
				hitList[i] = &clickableList[i];
				found++;
			}
		}
	}

	if(found > 0)
	{
		top = hitList[0];
		for(i=0;i<cSize;i++)
		{
			if(hitList[i]!=NULL && hitList[i]->depth < top->depth)
			{
				top->depth = 1;
				top = hitList[i];
				top->depth = 0;
				index = i;
			}
		}
	}
	else
	{
		clickableList[index].depth = 0;
	}

	return index;
}
*/
PFXNODE k_point_in_nodes(int x,int y)
{
	PFXNODE found = NULL;
	LPCHAR ctx = "";
	PFXNODE ptr = NULL;

	RECT r;
	int i = 0;
	int index = -1;

	//k_debug_string("k_point_in_nodes\r\n");

	if(_k_WindowHit_nodes!=NULL)
	{
		ptr = _k_WindowHit_nodes->next;
		while(ptr!=NULL)
		{
			//k_debug_pointer("FOUND HIT ITEM:",ptr);
			r = ((PCLICKABLE)((PCLICKDETECTED)ptr->data)->window->clickable)->area;
			if(x >=r.x && x<(r.x+r.width))
			{
				if(y >=r.y && y<(r.y+r.height))
				{
					found = ptr;
					break;
				}
			}
			ptr = ptr->next;
		}
	}

	return found;
}

int k_point_in_list(int x,int y,PCLICKABLE clickableList,int cSize)
{
	RECT r;
	int i = 0;
	int index = -1;

	for(i=0;i<cSize;i++)
	{
		r = clickableList[i].area;
		if(x >=r.x && x<(r.x+r.width))
		{
			if(y >=r.y && y<(r.y+r.height))
			{
				index = i;
				//clickableList[i].depth = 1;
				break;
			}
		}
	}

	return index;
}

PMENU k_create_context_menus(PWINDOW pWin,int cx,int cy,int width,int height,PMENUDROPDOWNDATA menus,int color, int bgcolor)
{
	FONTMETRIC metric;

	int i = 0;
	int hy = 0;
	LPCSTR caption = NULL;

	int borderTitle = 10;
	int borderWidth = 3;

	int titleOffsetX = cx+4;
	int titleOffsetY = cy+2;
	int titleScaler = 0;

	int clientOffsetX = cx+borderWidth+2;
	int clientOffsetY = cy+borderTitle+1;

	int endX = width + cx - borderWidth;


	k_debug_string("k_create_context_menu:fill\r\n");

	k_scratch_save_bitblt(cx,cy, width, height, 0, 0);

	//k_vdma_fill_rect(cx,cy,width,height,0);
	//k_vdma_fill_rect(cx+2,cy,width-2,height-2,bgcolor);
	//k_vdma_fill_rect(cx+1,cy+1,width -1 ,height - 1,bgcolor);
	k_vdma_fill_rect(cx,cy,width,height,bgcolor);

	//k_put_wingadget_point(WINICON_TITLE_BACK,endX - (metric.width*2 + 2),titleOffsetY,14);
	//k_put_wingadget_point(WINICON_TITLE_FRONT,endX - (metric.width),titleOffsetY,14);
	i = 0;
	caption = menus->captions[i];
	while(caption!=NULL)
	{
		k_debug_strings("k_create_context_menu:caption:",(LPCHAR)caption);

		//caption = strupr(caption);
		hy = k_draw_text_point(caption,titleOffsetX,titleOffsetY,color);
		titleOffsetY+=(FONTH + 2);
		i++;
		caption = menus->captions[i];
	}

	return NULL;
}

PMENU k_create_context_menu(int cx,int cy,int width,int height,char FAR **captions,int color, int bgcolor)
{
	FONTMETRIC metric;

	int i = 0;
	int hy = 0;
	char FAR *caption = NULL;

	int borderTitle = 10;
	int borderWidth = 3;

	int titleOffsetX = cx+4;
	int titleOffsetY = cy+2;
	int titleScaler = 0;

	int clientOffsetX = cx+borderWidth+2;
	int clientOffsetY = cy+borderTitle+1;

	int endX = width + cx - borderWidth;


	k_debug_string("k_create_context_menu:fill\r\n");

	k_scratch_save_bitblt(cx,cy, width, height, 0, 0);

	//k_vdma_fill_rect(cx,cy,width,height,0);
	//k_vdma_fill_rect(cx+2,cy,width-2,height-2,bgcolor);
	//k_vdma_fill_rect(cx+1,cy+1,width -1 ,height - 1,bgcolor);
	k_vdma_fill_rect(cx,cy,width,height,bgcolor);

	//k_put_wingadget_point(WINICON_TITLE_BACK,endX - (metric.width*2 + 2),titleOffsetY,14);
	//k_put_wingadget_point(WINICON_TITLE_FRONT,endX - (metric.width),titleOffsetY,14);
	i = 0;
	caption = captions[i];
	while(caption!=NULL)
	{
		k_debug_strings("k_create_context_menu:caption:",caption);

		//caption = strupr(caption);
		hy = k_draw_text_point(caption,titleOffsetX,titleOffsetY,color);

		titleOffsetY+=(FONTH + 2);
		i++;
		caption = captions[i];
	}

	return NULL;

}

PMENU k_create_context_menu_in_window(PWINDOW pWin,UINT selected,UINT unselected,int cx,int cy,int width,int height,char FAR **captions,int color, int bgcolor)
{
	FONTMETRIC metric;

	int i = 0;
	int hy = 0;
	char FAR *caption = NULL;

	int borderTitle = 10;
	int borderWidth = 3;

	int titleOffsetX = cx+4;
	int titleOffsetY = cy+2;
	int titleScaler = 0;

	int clientOffsetX = cx+borderWidth+2;
	int clientOffsetY = cy+borderTitle+1;

	int endX = width + cx - borderWidth;


	//k_debug_string("k_create_context_menu:fill\r\n");

	//k_scratch_save_bitblt(cx,cy, width, height, 0, 0);

	//k_vdma_fill_rect(cx,cy,width,height,0);
	//k_vdma_fill_rect(cx+2,cy,width-2,height-2,bgcolor);
	//k_vdma_fill_rect(cx+1,cy+1,width -1 ,height - 1,bgcolor);

	if(selected == -1 && unselected == -1)
		k_vdma_fill_rect(cx,cy,width,height,bgcolor);

	//k_put_wingadget_point(WINICON_TITLE_BACK,endX - (metric.width*2 + 2),titleOffsetY,14);
	//k_put_wingadget_point(WINICON_TITLE_FRONT,endX - (metric.width),titleOffsetY,14);
	i = 0;
	caption = captions[i];
	while(caption!=NULL)
	{
		k_debug_strings("k_create_context_menu:caption:",caption);

		//caption = strupr(caption);

		if(selected!=-1 && unselected!=-1)
		{
			if( i == selected && caption[0] != '_')
			{
				k_vdma_fill_rect(pWin->win_x,titleOffsetY,pWin->win_width,FONTH,color);
				hy = k_draw_text_point(caption,titleOffsetX,titleOffsetY,bgcolor);
			}
			else if( i == unselected && caption[0] != '_')
			{
				k_vdma_fill_rect(pWin->win_x,titleOffsetY,pWin->win_width,FONTH,bgcolor);
				hy = k_draw_text_point(caption,titleOffsetX,titleOffsetY,color);
			}

		}
		else
		{
			if( i == selected && caption[0] != '_')
			{
				k_vdma_fill_rect(pWin->win_x,titleOffsetY,pWin->win_width,FONTH,color);
				hy = k_draw_text_point(caption,titleOffsetX,titleOffsetY,bgcolor);
			}
			else
			{
				hy = k_draw_text_point(caption,titleOffsetX,titleOffsetY,color);
			}
		}
		titleOffsetY+=(FONTH + 2);
		i++;
		caption = captions[i];
	}

	return NULL;

}


PMENU k_render_context_menu(PMENU menu)
{
	FONTMETRIC metric;

	int i = 0;

	int cx = menu->cx;
	int cy = menu->cy;

	char FAR *caption = NULL;

	int borderTitle = 10;
	int borderWidth = 3;

	int titleOffsetX = cx+2;
	int titleOffsetY = cy+2;
	int titleScaler = 0;

	int clientOffsetX = cx+borderWidth+2;
	int clientOffsetY = cy+borderTitle+1;

	int endX = menu->width + cx - borderWidth;


/*
	k_get_font_metrics(&metric);

	height += metric.height + (int)(metric.width/4);

	menu->cx = cx;
	menu->cy = cy;
	menu->height = height;
	menu->width = width;

	*/

	k_vdma_fill_rect(cx-1,cy,menu->width+1,menu->height+1,0);
	k_vdma_fill_rect(cx,cy,menu->width,menu->height,menu->fcolor);

	//k_delay(15);



	//k_put_wingadget_point(WINICON_TITLE_BACK,endX - (metric.width*2 + 2),titleOffsetY,14);
	//k_put_wingadget_point(WINICON_TITLE_FRONT,endX - (metric.width),titleOffsetY,14);
	i = 0;
	caption = ((LPCHAR*)menu->pCaption)[0];
	while(caption!=NULL)
	{
		//caption = strupr(caption);
		k_draw_text_point(caption,titleOffsetX,titleOffsetY,0);
		titleOffsetY+=(FONTH + 2);
		i++;
		caption = ((LPCHAR*)menu->pCaption)[i];
	}

	return menu;

}

void k_free_context_menu(PMENU pmenu,char fcolor,char bcolor)
{
	if(pmenu)
	{
		k_vdma_fill_rect(pmenu->cx-1,pmenu->cy,pmenu->width+1,pmenu->height+1,bcolor);
		//k_vdma_fill_rect(pmenu->cx,pmenu->cy,pmenu->width,pmenu->height,bcolor);
		k_mem_deallocate_heap(pmenu);
	}
}

void k_bitblt(int x0, int y0, int width, int height, int x1, int y1)
{
	long dy = 0L;
	long dd = y1;
	long pixelLocation0 = (long)(((long)y0 * 640L) + (long)x0);
	long pixelLocation1 = (long)(((long)y0 * 640L) + (long)(x0 + width ));
	long pixelLocationD = (long)(((long)y1 * 640L) + (long)(x1));

	long difference = pixelLocation1 - pixelLocation0;

	k_debug_long("pixelLocation0:",pixelLocation0);
	k_debug_long("pixelLocation1:",pixelLocation1);
	k_debug_long("pixelLocationD:",pixelLocationD);
	k_debug_long("difference:",difference);



	for(dy = y0;dy<(y0 + height);dy++)
	{
		pixelLocation0 = (long)(((long)dy * 640L) + (long)x0);
		pixelLocationD = (long)(((long)dd * 640L) + (long)(x1));
		memcpy(   &(((unsigned char FAR *)BITMAP_BANK_0)[pixelLocationD])  , &(((unsigned char FAR *)BITMAP_BANK_0)[pixelLocation0]), difference) ;

		dd++;
	}

}

void k_memory_bitblt(LPCHAR srcBank,int x0, int y0, int width, int height,LPCHAR destBank, int x1, int y1, int direction)
{
	long dy = 0L;
	long dd = y1;
	long pixelLocation0 = (long)(((long)y0 * 640L) + (long)x0);
	long pixelLocation1 = (long)(((long)y0 * 640L) + (long)(x0 + width ));
	long pixelLocationD = (long)(((long)y1 * 640L) + (long)(x1));

	long difference = pixelLocation1 - pixelLocation0;

	k_debug_long("pixelLocation0:",pixelLocation0);
	k_debug_long("pixelLocation1:",pixelLocation1);
	k_debug_long("pixelLocationD:",pixelLocationD);
	k_debug_long("difference:",difference);

	if(direction == BLT_DIR_TOPDOWN)
	{
		for(dy = y0;dy<(y0 + height);dy++)
		{
			pixelLocation0 = (long)(((long)dy * 640L) + (long)x0);
			pixelLocationD = (long)(((long)dd * 640L) + (long)(x1));
			memcpy(   &(((unsigned char FAR *)destBank)[pixelLocationD])  , &(((unsigned char FAR *)srcBank)[pixelLocation0]), difference) ;

			dd++;
		}
	}
	else
	{
		dd = y1 + height;
		//for(dy = y0;dy<(y0 + height);dy++)
		for(dy = (y0 + height);dy>y0;dy--)
		{
			pixelLocation0 = (long)(((long)dy * 640L) + (long)x0);
			pixelLocationD = (long)(((long)dd * 640L) + (long)(x1));
			memcpy(   &(((unsigned char FAR *)destBank)[pixelLocationD])  , &(((unsigned char FAR *)srcBank)[pixelLocation0]), difference) ;

			dd--;
		}

	}

}


void k_shadow_fill_rect_address(LPCHAR bank,int x0, int y0, int width, int height, UCHAR color)
{
	LPCHAR ptr = NULL;
	ULONG dx = 0L;
	long dy = 0L;
	long pixelLocation0 = 0L;
	long pixelLocation1 = 0L;
	long difference     = 0L;
	long fIndex = 0;
	long offset = 0L;

	if(width > 640)
		width = 640;
	if(height > 480)
		height = 480;

	if(width < 0)
		width = 0;
	if(height < 0)
		height = 0;


	offset = ((long)y0 + (long)height);

	//pixelLocation0 = (ULONG)(((ULONG)y0 * 640L) + (ULONG)x0);
	//pixelLocation1 = (ULONG)(((ULONG)y0 * 640L) + (ULONG)(x0 + width ));
	//difference     = pixelLocation1 - pixelLocation0;
	difference     = width;

	//difference = (long)(x0 + width);

	/*
	k_debug_long("k_shadow_fill_rect::width:",width);
	k_debug_long("k_shadow_fill_rect::height:",height);
	k_debug_long("k_shadow_fill_rect::difference:",difference);
	k_debug_long("k_shadow_fill_rect::offset:",offset);
	*/

	for(dy = (long)y0;dy<offset;dy++)
	{
		//k_debug_long("k_shadow_fill_rect::dy:",dy);
		//for(dx=(long)x0;dx<difference;dx++)
		//	SHADOW_BANK_0[(dy * 640L) + dx] = color;
		//k_debug_long("k_shadow_fill_rect::dx:",dx);

		ptr = &( bank[(dy * 640L) + (long)x0] ) ;

		//k_debug_pointer("k_shadow_fill_rect::ptr:",ptr);
		//pixelLocation0 = (ULONG)(((ULONG)dy * 640L) + (ULONG)x0);
		//k_debug_long("k_shadow_fill_rect::pixelLocation0:",pixelLocation0);
		memset( ptr, color , difference ) ;
		//for(fIndex=0;fIndex<difference;fIndex++)
		//	ptr[fIndex] = color;
	}

}

void k_shadow_fill_rect(int x0, int y0, int width, int height, UCHAR color)
{
	k_shadow_fill_rect_address(SHADOW_BANK_0,x0, y0, width, height, color);
}

/*
void k_shadow_fill_rect(int x0, int y0, int width, int height, UCHAR color)
{
	LPCHAR ptr = NULL;
	ULONG dx = 0L;
	long dy = 0L;
	long pixelLocation0 = 0L;
	long pixelLocation1 = 0L;
	long difference     = 0L;
	long fIndex = 0;
	long offset = 0L;

	if(width > 640)
		width = 640;
	if(height > 480)
		height = 480;

	if(width < 0)
		width = 0;
	if(height < 0)
		height = 0;


	offset = ((long)y0 + (long)height);

	//pixelLocation0 = (ULONG)(((ULONG)y0 * 640L) + (ULONG)x0);
	//pixelLocation1 = (ULONG)(((ULONG)y0 * 640L) + (ULONG)(x0 + width ));
	//difference     = pixelLocation1 - pixelLocation0;
	difference     = width;

	//difference = (long)(x0 + width);

	//k_debug_long("k_shadow_fill_rect::width:",width);
	//k_debug_long("k_shadow_fill_rect::height:",height);
	//k_debug_long("k_shadow_fill_rect::difference:",difference);
	//k_debug_long("k_shadow_fill_rect::offset:",offset);


	for(dy = (long)y0;dy<offset;dy++)
	{
		//k_debug_long("k_shadow_fill_rect::dy:",dy);
		//for(dx=(long)x0;dx<difference;dx++)
		//	SHADOW_BANK_0[(dy * 640L) + dx] = color;
		//k_debug_long("k_shadow_fill_rect::dx:",dx);
		ptr = &( SHADOW_BANK_0[(dy * 640L) + (long)x0] ) ;
		//k_debug_pointer("k_shadow_fill_rect::ptr:",ptr);
		//pixelLocation0 = (ULONG)(((ULONG)dy * 640L) + (ULONG)x0);
		//k_debug_long("k_shadow_fill_rect::pixelLocation0:",pixelLocation0);
		memset( ptr, color , difference ) ;
		//for(fIndex=0;fIndex<difference;fIndex++)
		//	ptr[fIndex] = color;
	}

}
*/
void k_shadow_bitblt(int x0, int y0, int width, int height, int x1, int y1)
{
	long dy = 0L;
	long dd = y1;

	long pixelLocation0 = 0L;
	long pixelLocation1 = 0L;
	long pixelLocationD = 0L;
	long difference     = 0L;

	pixelLocation0 = (long)(((long)y0 * 640L) + (long)x0);
	//pixelLocation1 = (long)(((long)y0 * 640L) + (long)(x0 + width ));
	pixelLocationD = (long)(((long)y1 * 640L) + (long)(x1));

	difference = pixelLocation1 - pixelLocation0;

	//k_debug_long("pixelLocation0:",pixelLocation0);
	//k_debug_long("pixelLocation1:",pixelLocation1);
	//k_debug_long("pixelLocationD:",pixelLocationD);
	//k_debug_long("difference:",difference);

	y0++;
	x0++;

	for(dy = y0;dy<(y0 + height);dy++)
	{
		pixelLocation0 = (long)(((long)dy * 640L) + (long)x0);
		pixelLocationD = (long)(((long)dd * 640L) + (long)x1);
		memcpy(   &((BITMAP_BANK_0)[pixelLocationD])  , &((SHADOW_BANK_0)[pixelLocation0]), difference) ;

		dd++;
	}

}

void k_scratch_save_bitblt(int x0, int y0, int width, int height, int x1, int y1)
{
	long dy = 0L;
	long dd = y1;
	long pixelLocation0 = (long)(((long)y0 * 640L) + (long)x0);
	long pixelLocation1 = (long)(((long)y0 * 640L) + (long)(x0 + width ));
	long pixelLocationD = (long)(((long)y1 * 640L) + (long)(x1));

	long difference = width;//pixelLocation1 - pixelLocation0 + 1;

	//k_debug_long("pixelLocation0:",pixelLocation0);
	//k_debug_long("pixelLocation1:",pixelLocation1);
	//k_debug_long("pixelLocationD:",pixelLocationD);
	//k_debug_long("difference:",difference);



	for(dy = y0;dy<(y0 + height);dy++)
	{
		pixelLocation0 = (long)(((long)dy * 640L) + (long)x0);
		pixelLocationD = (long)(((long)dd * 640L) + (long)x1);
		memcpy(   &((SHADOW_BANK_5)[pixelLocationD])  , &((SHADOW_BANK_0)[pixelLocation0]), difference) ;

		dd++;
	}

}

void k_scratch_restore_bitblt(int x0, int y0, int width, int height, int x1, int y1)
{
	long dy = 0L;
	long dd = y1;
	long pixelLocation0 = (long)(((long)y0 * 640L) + (long)x0);
	long pixelLocation1 = (long)(((long)y0 * 640L) + (long)(x0 + width ));
	long pixelLocationD = (long)(((long)y1 * 640L) + (long)(x1));

	long difference = width;//pixelLocation1 - pixelLocation0 + 1;

	//k_debug_long("pixelLocation0:",pixelLocation0);
	//k_debug_long("pixelLocation1:",pixelLocation1);
	//k_debug_long("pixelLocationD:",pixelLocationD);
	//k_debug_long("difference:",difference);



	for(dy = y0;dy<(y0 + height);dy++)
	{
		pixelLocation0 = (long)(((long)dy * 640L) + (long)x0);
		pixelLocationD = (long)(((long)dd * 640L) + (long)x1);
		memcpy(   &((BITMAP_BANK_0)[pixelLocationD])  , &((SHADOW_BANK_5)[pixelLocation0]), difference) ;
		memcpy(   &((SHADOW_BANK_0)[pixelLocationD])  , &((SHADOW_BANK_5)[pixelLocation0]), difference) ;

		dd++;
	}

}


UINT k_font_getFontHeight(void)
{
	return 8;
}

UINT k_font_getFontWidth(void)
{
	return 8;
}


VOID k_gui_init_mousepointer(BOOL enable)
{
	//memcpy(MOUSE_PTR_GRAP0_START,MOUSE_POINTER_PTR,sizeof(MOUSE_POINTER_PTR));
	memcpy(MOUSE_PTR_GRAP0_START,MOUSE_POINTER_PTR_V2,sizeof(MOUSE_POINTER_PTR_V2));

	*MOUSE_PTR_CTRL_REG_L = 0x01;
}


/*




 */


#include "fxconsole.h"


static int 	_k_window_index = 0;
static Window _k_window_list[10];

static SPINNERCTX consolespinctx;
static char consolespinner[] = {'|','/','-','\\'};

/*
// NOT IN BASEKIT
static LPCHAR console_commands[] = {"cls","vol","dir","tsd","desktop","fcolor","bcolor","init","newdir","tasks","front","back","chdir","display","send",NULL};
static FXCommandHandler console_command_proc[] = {cmd_CLEAR,cmd_VOL,cmd_DIR,cmd_TESTSD,cmd_WORKBENCH,
		                                          cmd_FCOLOR,cmd_BCOLOR,cmd_INIT,cmd_NEWDIR,cmd_TASKS,
												  cmd_FRONT,cmd_BACK,cmd_CHRDIR,cmd_DISPLAY,cmd_SEND,NULL};

static LPCHAR tokentypeNames[] = { "WORD",
"NUMBER","STRING","LABEL","LINE","EQUALS",
"OPERATOR","LEFT_PAREN", "RIGHT_PAREN", "EOF", "COMMA", "LEFT_BLOCK",
"RIGHT_BLOCK", "BANG", "NOTEQUAL", "ANNOTATION",
"GTE", "LTE", "GT", "LT", "PERIOD", "POINTER", "NOOP",
"START_BLOCK", "END_BLOCK","AND","OR","VARIADIC", "DOLLAR"};
*/
//#pragma section CODE=CONSOLE,offset $07:0000

VOID k_initialize_text(VOID)
{
	k_debug_string("k_initialize_text\r\n");
	*((int FAR *)COLS_VISIBLE)  =  72;
	*((int FAR *)LINES_VISIBLE) =  56;
	*((int FAR *)COLS_PER_LINE) = 128;
	*((int FAR *)LINES_MAX) 	=  64;
}

void k_init_spinner(PSPINNERCTX ctx)
{
	ctx->spinner = consolespinner;
	ctx->index = 0;
}

void k_updatespinner(int pos,int line,PSPINNERCTX ctx)
{
	k_put_char(pos,line,consolespinner[ctx->index++],15,0);
	if(ctx->index>3) ctx->index = 0;
}

int k_initialize_text_fonts(UINT flag)
{
	int i = 0;
	for(i=0;i<0x800;i++)
	{
		FONT_MEMORY_BANK0[i] = FONT_4_BANK0[i];
		FONT_MEMORY_BANK1[i] = BM437_ATI_8X8_Font_Set[i];
	}

	return 0;
}

int k_get_cols_visible(void)
{
	//return *((int*)(&((COLS_VISIBLE)[0]))); //2 Bytes Columns visible per screen line. A virtual line can be longer than displayed, up to COLS_PER_LINE long. Default  80
	return *((int FAR *)COLS_VISIBLE);
}

int k_get_cols_per_line(void)
{
	return *((int*)COLS_PER_LINE); //2 Bytes Columns visible per screen line. A virtual line can be longer than displayed, up to COLS_PER_LINE long. Default  80
}

int k_get_lines_visible(void)
{
	return *((int*)LINES_VISIBLE); //2 Bytes Columns visible per screen line. A virtual line can be longer than displayed, up to COLS_PER_LINE long. Default  80
}

int k_get_lines_max(void)
{
	return *((int*)LINES_MAX); //2 Bytes Columns visible per screen line. A virtual line can be longer than displayed, up to COLS_PER_LINE long. Default  80
}

void k_enable_text_mode(void)
{
	MASTER_CTRL_REG_L[0] = MSTR_CTRL_TEXT_MODE_EN;
}

void k_enable_border(void)
{
	BORDER_CTRL_REG[0] = BORDER_CTRL_ENABLE;
}

void k_disable_border(void)
{
	BORDER_CTRL_REG[0] = 0x00 ;
}

void k_set_border_color(char r,char g,char b)
{
	BORDER_COLOR_B[0] = b;
	BORDER_COLOR_G[0] = g;
	BORDER_COLOR_R[0] = r;
}

void k_clear_screen(int bcolor)
{
	memset((unsigned char FAR *)0xAFA000,0,0xAFA000 + 0xC000);
	memset((unsigned char FAR *)0xAFC000,bcolor,0xAFA000 + 0xC000);
}

int k_put_string(int col,int row,char * text,int fcolor,int bcolor)
{
	char * ptr = text;
	while(*ptr)
	{
		k_put_char(col,row,*ptr,fcolor,bcolor);
		col++;
		ptr++;
	}

	return col;
}

int k_put_color(int col,int row,char * textColor)
{
	char * ptr = textColor;
	while(*ptr)
	{
		CS_COLOR_MEM_PTR[128 * row + col] = *ptr;
		col++;
		ptr++;
	}

	return col;
}


void k_put_char(int col,int row,char c,int fcolor,int bcolor)
{
	CS_TEXT_MEM_PTR[128 * row + col] = c;
	CS_COLOR_MEM_PTR[128 * row + col] = ((fcolor & 0x0F) << 4 + (bcolor & 0x0F));
}

void k_set_background(int col,int row,int bcolor)
{
	((unsigned char FAR *)(0xAFC000 + (128 * row) + col))[0] =  bcolor;
}

void k_set_text_font_page(UINT page)
{
	if(page)
		VKY_TXT_CURSOR_CTRL_REG[0] = 0x13;
	else
		VKY_TXT_CURSOR_CTRL_REG[0] = 0x0B;

}

void k_enable_text_cursor(UINT page)
{
	/*
	 *
	 *
	 */

	CURCOLOR[0] = 15;
	VKY_TXT_CURSOR_CHAR_REG[0] = 0xA0;  // FULL BLOCK
	//VKY_TXT_CURSOR_CTRL_REG[0] = 0x03;  // ENABLE, FLASH RATE 0
	//VKY_TXT_CURSOR_CTRL_REG[0] = 0x0B;  // ENABLE, FLASH RATE 0
	//VKY_TXT_CURSOR_CTRL_REG[0] = 0x13;

	k_set_text_font_page(page);

	VKY_TXT_CURSOR_COLR_REG[0] = 0xF0;
	VKY_TXT_CURSOR_Y_REG_L[0]  = (UCHAR)0;
	VKY_TXT_CURSOR_X_REG_L[0]  = (UCHAR)0;
	VKY_TXT_CURSOR_Y_REG_H[0]  = (UCHAR)0;
	VKY_TXT_CURSOR_X_REG_H[0]  = (UCHAR)0;


/*
VKY_TXT_CURSOR_CTRL_REG  EQU  $AF0010   ;[0]  Enable Text Mode
Vky_Cursor_Enable        EQU  $01
Vky_Cursor_Flash_Rate0   EQU  $02
Vky_Cursor_Flash_Rate1   EQU  $04
Vky_Cursor_FONT_Page0    EQU  $08       ; Pick Font Page 0 or Font Page 1
Vky_Cursor_FONT_Page1    EQU  $10       ; Pick Font Page 0 or Font Page 1
VKY_TXT_RESERVED         EQU  $AF0011   ;Not in Use
VKY_TXT_CURSOR_CHAR_REG  EQU  $AF0012

VKY_TXT_CURSOR_COLR_REG  EQU  $AF0013
VKY_TXT_CURSOR_X_REG_L   EQU  $AF0014
VKY_TXT_CURSOR_X_REG_H   EQU  $AF0015
VKY_TXT_CURSOR_Y_REG_L   EQU  $AF0016
VKY_TXT_CURSOR_Y_REG_H   EQU  $AF0017 */

}

void k_set_cursor_position(int x,int y)
{
	VKY_TXT_CURSOR_Y_REG_L[0] = (UCHAR)y;
	VKY_TXT_CURSOR_X_REG_L[0] = (UCHAR)x;
	VKY_TXT_CURSOR_Y_REG_H[0] = (UCHAR)0;
	VKY_TXT_CURSOR_X_REG_H[0] = (UCHAR)0;
}

void k_create_text_window(PRECT prect,TITLE title,PHANDLE phandle)
{
	int index = -1;
	Window FAR *pwin = NULL;

	//k_put_char(0,1,'a',5,0);

	index = _k_window_index++;

	//k_put_char(0,1,'b',5,0);

	pwin = &_k_window_list[index];

	pwin->win_x = prect->x;
	pwin->win_y = prect->y;
	pwin->win_width = prect->width;
	pwin->win_height = prect->height;

	//k_put_char(0,1,'c',5,0);

	strcpy(pwin->win_title,title);

	//k_put_char(0,1,'d',5,0);

	k_window_draw(pwin->win_x,pwin->win_y,pwin->win_width,pwin->win_height,pwin->win_title);

	//k_put_char(0,1,'e',5,0);

	*phandle = (LPVOID)index;

	return;
}

void k_text_mode_dialog(int x,int y,int width,int height,LPCSTR message)
{
	int pos  = x;
	int line = y;

	pos = k_put_string(pos,line,CONST_TBOX_TL_STR,15,0);
	while(pos < x + width)
	{
		pos = k_put_string(pos,line,CONST_TBOX_TOP_STR,15,0);
	}
	k_put_string(pos,line,CONST_TBOX_TR_STR,15,0);
	line++;

	while(line < y + height)
	{
		k_put_string(x,line,CONST_TBOX_LEFT_STR,15,0);
		k_put_string(pos,line,CONST_TBOX_RIGHT_STR,15,0);
		line++;
	}
	pos = x;
	pos = k_put_string(pos,line,CONST_TBOX_BL_STR,15,0);
	while(pos < x + width)
	{
		pos = k_put_string(pos,line,CONST_TBOX_BOTTOM_STR,15,0);
	}
	pos = k_put_string(pos,line,CONST_TBOX_BR_STR,15,0);

	/*
	pos = 1;
	pos = k_put_string(pos,line,boxside,15,0);
	pos = 70;
	pos = k_put_string(pos,line,boxside,15,0);
	line++;
	pos = 1;
	pos = k_put_string(pos,line,boxside,15,0);
	pos = k_put_string(pos,line,CONST_EXCEPTION_TITLE,15,0);
	//pos = k_put_string(pos,line,k_longtodec(_k_exec_context,_brk_Buffer),15,0);
	pos = k_put_string(pos,line,k_longtodec(_k_exec_context,_brk_Buffer),15,0);
	//pos = k_put_string(pos,line,k_longtodec(_k_exec_context,_brk_Buffer),15,0);
	//pos++;
	//pos = k_put_string(pos,line,k_longtodec(   ,_brk_Buffer),15,0);

	pos = k_put_string(pos,line,":",15,0);
	pos = k_put_string(pos,line,k_longtodec(_k_exec_error,_brk_Buffer),15,0);
	pos = 70;
	pos = k_put_string(pos,line,boxside,15,0);
	line++;
	pos = 1;
	pos = k_put_string(pos,line,boxside,15,0);
	pos = k_put_string(pos,line,"",15,0);
	pos = 70;
	pos = k_put_string(pos,line,boxside,15,0);
	line++;
	pos = 1;
	pos = k_put_string(pos,line,boxside,15,0);
	pos = k_put_string(pos,line,_k_exec_message,15,0);
	pos = 70;
	pos = k_put_string(pos,line,boxside,15,0);
	line++;
	pos = 1;
	pos = k_put_string(pos,line,boxside,15,0);
	pos = 70;
	pos = k_put_string(pos,line,boxside,15,0);
	line++;
	pos = 1;
	pos = k_put_string(pos,line,boxbottom,15,0);
	*/

}

void k_window_draw(int bx,int by,int bw,int bh,char FAR* title)
{
	int i = 0;
	int k = 0;

	k_put_char(0,1,'z',5,0);

	k_window_draw_background(bx,by,bw,bh,(char)8);

	k_put_char(0,1,'y',5,0);

	for(k=by;k<(by+bh);k++)
	{
		if(k == by ||  k == (by + 2))
		{
			k_put_char(bx     ,k,WIN_BORDER_CHAR_CORNER_TLEFT,15,0);
			k_put_char(bx+bw-1,k,WIN_BORDER_CHAR_CORNER_TRIGHT,15,0);
			for(i=bx+1;i<(bx+bw-1);i++)
			{
				k_put_char(i,k,WIN_BORDER_CHAR_TOP,15,0);
			}
			k_put_string(bx+2,by+1,title,15,0);
			//k_put_char(bx     ,k,WIN_BORDER_CHAR_CORNER_EDGE,15,0);
			//k_put_char(bx+bw-1,k,WIN_BORDER_CHAR_CORNER_EDGE,15,0);

		}
		/*
		else if(k == (by + 1))
		{
			k_put_char(bx     ,k,WIN_BORDER_CHAR_CORNER_EDGE,15,0);
			k_put_char(bx+bw-1,k,WIN_BORDER_CHAR_CORNER_EDGE,15,0);
			for(i=bx+1;i<(bx+bw-1);i++)
			{
				k_put_char(i,k,'=',15,0);
			}
		}
		*/
		else if(k == (by + bh - 1))
		{
			for(i=bx;i<(bx+bw-1);i++)
			{
				k_put_char(i,k,WIN_BORDER_CHAR_BOTTOM,15,0);
			}
			k_put_char(bx     ,k,WIN_BORDER_CHAR_CORNER_BLEFT,15,0);
			k_put_char(bx+bw-1,k,WIN_BORDER_CHAR_CORNER_BRIGHT,15,0);
		}
		else
		{
			k_put_char(bx     ,k,WIN_BORDER_CHAR_EDGE,15,0);
			k_put_char(bx+bw-1,k,WIN_BORDER_CHAR_EDGE,15,0);
		}
	}

	k_put_char(0,1,'x',5,0);

}

void k_window_draw_background(int bx,int by, int bw,int bh,char bcolor)
{
	int i = 0;
	int k = 0;

	k_put_char(0,1,'w',5,0);

	for(k=by;k<(by + bh);k++)
	{
		k_put_char(0,1,'u',5,0);
		for(i=bx;i<(bx+bw);i++)
		{
			//k_set_background(i,k,bcolor);
			k_put_char(i,k,' ',0,15);
			k_put_char(0,1,'t',5,0);
		}
	}

	k_put_char(0,1,'v',5,0);
}


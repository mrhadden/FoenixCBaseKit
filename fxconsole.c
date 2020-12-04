
#include "fxconsole.h"
#include "fxdos.h"
#include "fxnode.h"
#include "fxmemorymanager.h"
#include "fxgui.h"

static int 	_k_window_index = 0;
static WINDOW _k_window_list[10];

static LPCHAR console_commands[] = {"cls","vol","dir","tsd","desktop","fcolor","bcolor","init","newdir","tasks","front","back",
							 	 	"chdir","display","window","send","start",
									"time","exit","pause","resume","lineup",
									NULL};
static FXCommandHandler console_command_proc[] = {cmd_CLEAR,cmd_VOL,cmd_DIR,cmd_TESTSD,cmd_WORKBENCH,
		                                          cmd_FCOLOR,cmd_BCOLOR,cmd_INIT,cmd_NEWDIR,cmd_TASKS,
												  cmd_FRONT,cmd_BACK,cmd_CHRDIR,cmd_DISPLAY,
												  cmd_Window,
												  cmd_SEND,
												  cmd_START,
												  cmd_TIME,
												  cmd_EXIT,cmd_PAUSE,cmd_RESUME,
												  cmd_LINEUP,
												  NULL};

static char consolespinner[] = {'|','/','-','\\'};

static SPINNERCTX consolespinctx;

static UINT cursorFlashInterval  = 0;
static UINT cursorCurrentColor   = 15;

static LPCHAR tokentypeNames[] = { "WORD",
"NUMBER","STRING","LABEL","LINE","EQUALS",
"OPERATOR","LEFT_PAREN", "RIGHT_PAREN", "EOF", "COMMA", "LEFT_BLOCK",
"RIGHT_BLOCK", "BANG", "NOTEQUAL", "ANNOTATION",
"GTE", "LTE", "GT", "LT", "PERIOD", "POINTER", "NOOP",
"START_BLOCK", "END_BLOCK","AND","OR","VARIADIC", "DOLLAR"};

static consoleBuffer[56][72];
static consoleBufferTemp[56][72];
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

	LPSTR font = EGAFONT;
	//LPSTR font = BM437_ATI_8X8_Font_Set;

	for(i=0;i<0x800;i++)
	{
		//FONT_MEMORY_BANK0[i] = FONT_4_BANK0[i];
		FONT_MEMORY_BANK0[i] = font[i];
		//FONT_MEMORY_BANK1[i] = BM437_ATI_8X8_Font_Set[i];
		FONT_MEMORY_BANK1[i] = font[i];
	}

	return 0;
}

void k_scroll_screen(PFXPROCESS p)
{
	int i = 0;
	int j = 0;

	for(i=0;i<(p->consoleCtl->maxCols - 1);i++)
	{
		for(j=0;j<p->consoleCtl->maxRows;j++)
		{
			consoleBuffer[i][j] = consoleBuffer[i+1][j];
		}
	}

	for(i=0;i<p->consoleCtl->maxCols;i++)
	{
		for(j=0;j<p->consoleCtl->maxRows;j++)
		{
			k_put_char(j,i,consoleBuffer[i][j],15,0);
		}
	}

	p->consoleCtl->curX = 0;
	p->consoleCtl->curY--;
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
	int i = 0;
	int j = 0;

	k_debug_string("k_enable_bitmap_mode RESET 1a...\r\n");

	MASTER_CTRL_REG_H[0] = MSTR_CTRL_VIDEO_MODE0;
	MASTER_CTRL_REG_L[0] = MSTR_CTRL_TEXT_MODE_EN;

	for(i=3200;i>0;i--)
	{
		for(j=0;j<256;j++)
		{
			asm NOP;
		}
	}

	k_debug_string("k_enable_bitmap_mode RESET 1b...\r\n");

	MASTER_CTRL_REG_H[0] = MSTR_CTRL_VIDEO_MODE0;
	MASTER_CTRL_REG_L[0] = MSTR_CTRL_TEXT_MODE_EN;

	for(i=3200;i>0;i--)
	{
		for(j=0;j<256;j++)
		{
			asm NOP;
		}
	}

	k_debug_string("k_enable_bitmap_mode RESET 1c...\r\n");

	MASTER_CTRL_REG_H[0] = MSTR_CTRL_VIDEO_MODE0;
	MASTER_CTRL_REG_L[0] = MSTR_CTRL_TEXT_MODE_EN;

	for(i=3200;i>0;i--)
	{
		for(j=0;j<256;j++)
		{
			asm NOP;
		}
	}


	k_debug_string("k_enable_text_mode RESET 1...\r\n");

	MASTER_CTRL_REG_H[0] = 0x00;
	MASTER_CTRL_REG_L[0] = MSTR_CTRL_TEXT_MODE_EN;

	for(i=32;i>0;i--)
	{
		for(j=0;j<256;j++)
		{
			asm NOP;
		}
	}

	k_debug_string("k_enable_text_mode RESET 2...\r\n");
	MASTER_CTRL_REG_H[0] = 0x00;
	MASTER_CTRL_REG_L[0] = MSTR_CTRL_TEXT_MODE_EN;

	for(i=32;i>0;i--)
	{
		for(j=0;j<256;j++)
		{
			asm NOP;
		}
	}

	k_debug_string("k_enable_text_mode RESET 3...\r\n");
	MASTER_CTRL_REG_H[0] = 0x00;
	MASTER_CTRL_REG_L[0] = MSTR_CTRL_TEXT_MODE_EN;

	for(i=32;i>0;i--)
	{
		for(j=0;j<256;j++)
		{
			asm NOP;
		}
	}
#asm
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
#endasm

	//MASTER_CTRL_REG_L[0] = MSTR_CTRL_DISABLE_VID;

#asm
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
#endasm

	//MASTER_CTRL_REG_H[0] = 0;
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

    *BORDER_X_SIZE = 5;
    *BORDER_Y_SIZE = 5;

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

int k_put_string_buffer(int col,int row,char * text,LPVOID buffer)
{
	char * ptr = text;
	while(*ptr)
	{
		//((LPSTR)buffer)[col][row];
		col++;
		ptr++;
	}

	return col;
}

int k_put_color(int col,int row,char * textColor)
{
	char * ptr = textColor;
	col++;
	while(*ptr)
	{
		//CS_COLOR_MEM_PTR[128 * row + col] = *ptr;
		CS_COLOR_MEM_PTR[80 * row + col] = *ptr;
		col++;
		ptr++;
	}

	return col;
}

/*
int k_put_string(int col,int row,char * text,int fcolor,int bcolor)
{
	int tcolor = 0;
	char * ptr = text;
	while(*ptr)
	{
		if(*ptr == '\\')
		{
			ptr++;
			tcolor = *ptr;
			k_debug_hex("tcolor:",(UCHAR)tcolor);
			ptr+=2;
			k_debug_char("char:",*ptr);
			k_put_char(col,row,*ptr,tcolor,bcolor);
		}
		else
		{
			k_put_char(col,row,*ptr,fcolor,bcolor);
		}
		col++;
		ptr++;
	}

	return col;
}
*/

void k_put_char(int col,int row,char c,int fcolor,int bcolor)
{
#ifdef USE_FX256_FMX
	col++;
	CS_TEXT_MEM_PTR[80 * row + col ] = c;
	//CS_COLOR_MEM_PTR[80 * row + col] = ((fcolor & 0x0F) << 4 + (bcolor & 0x0F));
	//CS_COLOR_MEM_PTR[80 * row + col] = ((fcolor & 0x00FF) << 8 + (bcolor & 0x00FF));
	CS_COLOR_MEM_PTR[80 * row + col] = ((fcolor & 0x0F) << 4 + (bcolor & 0x0F));
#else
	CS_TEXT_MEM_PTR[128 * row + col] = c;
	CS_COLOR_MEM_PTR[128 * row + col] = ((fcolor & 0x0F) << 4 + (bcolor & 0x0F));
#endif
}

void k_set_background(int col,int row,int bcolor)
{
	((unsigned char FAR *)(0xAFC000 + (128 * row) + col))[0] =  bcolor;
}

void k_set_text_font_page(UINT page)
{
	/*
	if(page)
		VKY_TXT_CURSOR_CTRL_REG[0] = 0x13;
	else
		VKY_TXT_CURSOR_CTRL_REG[0] = 0x0B;
	*/
}

void k_enable_text_cursor(UINT page)
{
	CURCOLOR[0] = 15;
	VKY_TXT_CURSOR_CTRL_REG[0] = 0;
	//VKY_TXT_CURSOR_CHAR_REG[0] = 0x00;  // FULL BLOCK
	VKY_TXT_CURSOR_CHAR_REG[0] = 0xA0;  // FULL BLOCK
	//VKY_TXT_CURSOR_CTRL_REG[0] = 0x03;  // ENABLE, FLASH RATE 0
	//VKY_TXT_CURSOR_CTRL_REG[0] = 0x0B;  // ENABLE, FLASH RATE 0
	//VKY_TXT_CURSOR_CTRL_REG[0] = 0x13;

	//k_set_text_font_page(page);

	//VKY_TXT_CURSOR_COLR_REG[0] = 0xF0;
	VKY_TXT_CURSOR_COLR_REG[0] = 0x00;
	VKY_TXT_CURSOR_Y_REG_L[0]  = (UCHAR)0;
	VKY_TXT_CURSOR_X_REG_L[0]  = (UCHAR)0;
	VKY_TXT_CURSOR_Y_REG_H[0]  = (UCHAR)0;
	VKY_TXT_CURSOR_X_REG_H[0]  = (UCHAR)0;
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
	PWINDOW pwin = NULL;

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

BOOL consoleWindowProc(PFXOSMESSAGE pMsg)
{
	PFXPROCESS p = NULL;

	if(pMsg!=NULL)
	{
		p = k_exec_get_current_process();

		//k_debug_long("consoleWindowProc::ProcessId:",p->procId);

		switch(pMsg->type)
		{
		case FX_CREATE_WINDOW:
			k_debug_long("consoleWindowProc::ProcessId:",p->procId);
			k_debug_integer("consoleWindowProc::MessageId:",pMsg->type);
			break;
		case FX_MBUTTON_DOWN:
			if(pMsg->type!=FX_PROCESS)
			{
				//k_debug_integer("consoleWindowProc::ProcessId:",p->procId);
				k_debug_string("consoleWindowProc::FX_MBUTTON_DOWN\r\n");
			}

			break;
		default:
			break;
		}
	}

	return TRUE;
}


void DefConsoleProc(PFXOSMESSAGE pMsg)
{
	LPCHAR ptr = NULL;
	PFXPROCESS p = NULL;
	PCONSOLECTX pctx = NULL;
	BYTE decodedKey = 0;
	int i = 0;
	int j = 0;
	int temp1;
	int temp2;
	UINT temp3;
	BYTE serial;
	PCLICKDETECTED pcd;
	LPSTR captionText = NULL;
	PFXNODE  clickNode = NULL;

	//k_debug_string("DefConsoleProc enter\r\n");
	if(pMsg!=NULL)
	{
		p = k_exec_get_current_process();

		if(p)
		{
			pctx = (PCONSOLECTX)p->ctx;
			//k_debug_pointer("DefConsoleProc::pctx:",pctx);
			//k_debug_pointer("DefConsoleProc::pctx->userData:",pctx->userData);
		}

		switch(pMsg->type)
		{
		case FX_INIT_MESSAGE:
			if(p!=NULL)
			{
				k_debug_long("DefConsoleProc::ProcessId:",p->procId);

				k_clear_screen(0);

				p->consoleCtl = (PCONSOLE_CONTROL)k_mem_allocate_heap(sizeof(CONSOLE_CONTROL));
				if(p->consoleCtl!=NULL)
				{
					p->consoleCtl->bgColor = 0;
					p->consoleCtl->curX    = 0;
					p->consoleCtl->curY    = 0;
					p->consoleCtl->fgColor = 15;
					p->consoleCtl->maxCols = k_get_cols_visible();
					p->consoleCtl->maxRows = k_get_lines_visible();
					p->consoleCtl->desktopMode = FALSE;

					k_set_cursor_position(p->consoleCtl->curX,p->consoleCtl->curY);

					k_debug_integer("maxCols:",p->consoleCtl->maxCols);
					k_debug_integer("maxRows:",p->consoleCtl->maxRows);

					for(i=0;i<56;i++)
						for(j=0;j<72;j++)
							consoleBuffer[i][j] = 0;

					p->ctx = k_mem_allocate_heap(sizeof(CONSOLECTX));
					if(p->ctx!=NULL)
					{
						k_debug_pointer("DefConsoleProc::pctx:",p->ctx);

						pctx = (PCONSOLECTX)p->ctx;
						memset(pctx->lineBuffer,0,128);
						pctx->lineBufferIndex = 0;

						pctx->userData = k_mem_allocate_heap(sizeof(FXCOMBUFFER));
						k_debug_pointer("DefConsoleProc::pctx->userData:",pctx->userData);

						if(pctx->userData)
							memset(pctx->userData ,0,sizeof(FXCOMBUFFER));

						((PFXCOMBUFFER)(pctx->userData))->cbSize = sizeof(FXCOMBUFFER);
						((PFXCOMBUFFER)(pctx->userData))->cbBuffer = 0;
						k_debug_long("DefConsoleProc::ProcessId:",p->procId);
						k_debug_integer("DefConsoleProc::FX_PROCESS:COM1-COUNT:",((PFXCOMBUFFER)(pctx->userData))->cbBuffer);

					}

					k_initialize_text_fonts(0);

					k_enable_text_mode();
					setColors();

					//k_enable_text_cursor(1);
					k_enable_text_cursor(0);


					//k_set_cursor_position(p->consoleCtl->curX,
					//		              p->consoleCtl->curY);
					//k_set_cursor_position(20,20);


					k_debug_integer("DefConsoleProc::Initial-lineBufferIndex:",pctx->lineBufferIndex);


					//k_user_CreateWindowClass("consoleWindowClass",NULL,0,NULL,NULL,NULL,consoleWindowProc);

					//UART1_BASE[1] = 0x01;

				}
			}
			else
				k_debug_string("DefConsoleProc::FX_INIT_MESSAGE\r\n");
			k_init_spinner(&consolespinctx);
			break;
		case FX_UNINIT_MESSAGE:
			break;
		case FX_KEY_UP:
			//k_debug_integer("DefConsoleProc::FX_KEY_UP0:",pMsg->data[0]);
			//k_debug_integer("DefConsoleProc::FX_KEY_UP1:",pMsg->data[1]);
			//k_debug_integer("DefConsoleProc::FX_KEY_UP2:",pMsg->data[2]);
			//k_debug_integer("DefConsoleProc::isShifted:",pctx->isShifted);
			if(pMsg->data[0] == 182 || pMsg->data[0] == 170)
			{
				pctx->isShifted = FALSE;
			}
			else
			{

			}
			break;
		case FX_KEY_DOWN:
			//if(p!=NULL)
			//	k_debug_integer("DefConsoleProc::ProcessId:",p->procId);
			//k_debug_integer("DefConsoleProc::FX_KEY_DOWN0:",pMsg->data[0]);
			//k_debug_integer("DefConsoleProc::FX_KEY_DOWN1:",pMsg->data[1]);
			//k_debug_integer("DefConsoleProc::FX_KEY_DOWN2:",pMsg->data[2]);
			//k_debug_integer("DefConsoleProc::isShifted:",pctx->isShifted);

			//k_debug_integer("DefConsoleProc::curX:",p->consoleCtl->curX);
			//k_debug_integer("DefConsoleProc::curY:",p->consoleCtl->curY);

			if(pMsg->data[0] == 54 || pMsg->data[0] == 42)
			{
				pctx->isShifted = TRUE;
			}
			else
			{
				if(pMsg->data[2] == 13)
				{
					k_put_char(p->consoleCtl->curX,
										   p->consoleCtl->curY,
										   95,
										   0,0);

					p->consoleCtl->curX = 0;
					p->consoleCtl->curY++;

					if(pctx->lineBuffer!=NULL && pctx->lineBufferIndex > 0)
					{
						k_console_process_command(pctx->lineBuffer,p);
						//k_debug_string("DefConsoleProc::FX_KEY_DOWN:k_console_process_command\r\n");
					}
					pctx->lineBufferIndex = 0;

				}
				else if(pMsg->data[2] == 8)
				{
					k_put_char(p->consoleCtl->curX,
										   p->consoleCtl->curY,
										   95,
										   0,0);

					p->consoleCtl->curX--;
					if(p->consoleCtl->curX < 0)
					{
						p->consoleCtl->curX = p->consoleCtl->maxCols;
						p->consoleCtl->curY--;
					}

					pctx->lineBuffer[pctx->lineBufferIndex] = 0;
					pctx->lineBufferIndex = pctx->lineBufferIndex - 1;
					if(pctx->lineBufferIndex < 0)
						pctx->lineBufferIndex = 0;

					pctx->lineBuffer[pctx->lineBufferIndex] = 0;

					if(p->consoleCtl->curY < 0)
						p->consoleCtl->curY = 0;
					if(p->consoleCtl->curX < 0)
						p->consoleCtl->curX = 0;
				}
				else
				{
					k_debug_integer("DefConsoleProc::lineBufferIndexA:",pctx->lineBufferIndex);

					if(pctx->isShifted)
						decodedKey = k_getKeyboardChar(pMsg->data[0],pMsg->data[1],pctx->isShifted);
					else
						decodedKey = pMsg->data[2];

					pctx->lineBuffer[pctx->lineBufferIndex] = decodedKey;

					//k_debug_char("KEY:",decodedKey);


					if(p->consoleCtl->desktopMode)
					{

						k_put_font(decodedKey,p->consoleCtl->curX,p->consoleCtl->curY,p->consoleCtl->fgColor);

					}
					else
					{

						k_put_char(p->consoleCtl->curX,
								   p->consoleCtl->curY,
								   decodedKey,
								   p->consoleCtl->fgColor,0);
						consoleBuffer[p->consoleCtl->curY][p->consoleCtl->curX] = decodedKey;
					}

					pctx->lineBufferIndex = pctx->lineBufferIndex+1;
					pctx->lineBuffer[pctx->lineBufferIndex] = 0;

					if(pctx->lineBufferIndex > 127)
					{
						k_exec_throw_exception(0,0,"lineBufferIndex too large",-1);
					}
					//k_debug_integer("DefConsoleProc::lineBufferIndexB:",pctx->lineBufferIndex);
					//k_debug_string("DefConsoleProc::lineBuffer:");
					//k_debug_string(pctx->lineBuffer);
					//k_debug_string("\r\n");

					p->consoleCtl->curX++;
					if(p->consoleCtl->curX >= p->consoleCtl->maxCols)
					{
						p->consoleCtl->curX = 0;
						p->consoleCtl->curY++;
					}
				}

				if(p->consoleCtl->curY > 50)
				{
					k_send_process_command_message(p,FX_SCROLLBAR_COMMAND,CTL_VERT_SCROLL,0,1L,0L);
				}
			}

			//k_enable_text_cursor();
			//k_set_cursor_position(p->consoleCtl->curX+1,p->consoleCtl->curY);
			//k_set_cursor_position(20,20);

			break;
		case FX_DISK_INSERT:

			k_debug_string("DefConsoleProc::DISK-INSERT:");
			if(((PDISKINFO)pMsg->pheap)->stgName)
			{
				k_debug_string(((PDISKINFO)pMsg->pheap)->stgName);
			}
			else
			{
				k_debug_string("NULL");
			}
			k_debug_string("\r\n");

			((PDISKINFO)pMsg->pheap)->stgName[31] = 0;

			if(p->consoleCtl->desktopMode)
			{
				if(p->desktopCtl->currentDiskName && strcmp( k_to_uppercase(  ((PDISKINFO)pMsg->pheap)->stgName),p->desktopCtl->currentDiskName) == 0)
				{
					k_debug_string("DefConsoleProc::DISK-INSERT:NO-CHANGE\r\n");
				}
				else
				{


					if(p->desktopCtl->currentDiskName)
					{
						temp1 = strlen(p->desktopCtl->currentDiskName);
						temp2 = (temp1*4);
						k_put_winicon_point(ICON_DISK,640 - (40 + temp2/2),20,p->desktopCtl->backgroundColor,PAINTMODE_BACKGROUND);
						k_draw_text_point(p->desktopCtl->currentDiskName,640 - (35 + temp2/2) - (temp2),40,p->desktopCtl->backgroundColor);
					}

					temp1 = strlen(((PDISKINFO)pMsg->pheap)->stgName);
					temp2 = (temp1*4);

					k_put_winicon_point(ICON_DISK,640 - (40 + temp2/2),20,0,PAINTMODE_DEFAULT);
					k_draw_text_point(k_to_uppercase(((PDISKINFO)pMsg->pheap)->stgName),640 - (35 + temp2/2) - (temp2),40,0);

					if(p->desktopCtl->currentDiskName!=NULL)
						k_mem_deallocate_heap(p->desktopCtl->currentDiskName);

					p->desktopCtl->currentDiskName = k_string_copy_string(((PDISKINFO)pMsg->pheap)->stgName);

					pcd = k_mem_allocate_heap(sizeof(CLICKDETECTED));
					if(pcd)
					{
						pcd->window  = k_create_ui_window_class(640 - (40 + temp2/2),20,ICONH,ICONW,"disk","icon",NULL);
						pcd->handler = ObjectClicked;
						k_add_window_hit_node(pcd);
					}

					k_debug_message("DefConsoleProc::DISK-INSERT:DISK:",p->desktopCtl->currentDiskName);
				}
			}
			else
			{
				if(pMsg && pMsg->pheap)
					k_put_string(0,51,((PDISKINFO)pMsg->pheap)->stgName,15,0);
			}

			break;
		case FX_DISK_REMOVE:

			k_debug_string("DefConsoleProc::DISK-REMOVE\r\n");

			if(p->consoleCtl->desktopMode )
			{
				if(p->desktopCtl->currentDiskName)
				{
					k_debug_message("DefConsoleProc::DISK-REMOVE:DISK:",p->desktopCtl->currentDiskName);
					k_debug_integer("DefConsoleProc::DISK-REMOVE:backgroundColor:",p->desktopCtl->backgroundColor);

					temp1 = strlen(p->desktopCtl->currentDiskName);
					temp2 = (temp1*4);

					k_put_winicon_point(ICON_DISK,640 - (40 + temp2/2),20,p->desktopCtl->backgroundColor,PAINTMODE_BACKGROUND);
					k_draw_text_point(p->desktopCtl->currentDiskName,640 - (35 + temp2/2) - (temp2),40,p->desktopCtl->backgroundColor);

					if(p->desktopCtl->currentDiskName!=NULL)
						k_mem_deallocate_heap(p->desktopCtl->currentDiskName);

					p->desktopCtl->currentDiskName = NULL;
				}
			}
			else
				k_put_string(0,51,"No Disk Detected                               ",15,0);

			break;
		case FX_APP_MESSAGE:
			k_debug_string("DefConsoleProc::FX_APP_MESSAGE\r\n");
			if(pMsg->pheap)
			{
				if(((PCOMMANDARGS)pMsg->pheap)->proc)
				{
					((PCOMMANDARGS)pMsg->pheap)->proc(p,((PCOMMANDARGS)pMsg->pheap)->tokens);
					//((FXCommandHandler)pMsg->pheap)(p);
				}
				else
				{
					k_debug_string("DefConsoleProc::FX_APP_MESSAGE BAD PROC\r\n");
				}

				k_mem_deallocate_heap(pMsg->pheap);
				pMsg->pheap = NULL;
			}
			k_debug_string("DefConsoleProc::FX_APP_MESSAGE exit\r\n");
			break;
		case FX_MOUSE_MOVE:
			//if(p->consoleCtl->desktopMode )
			//	OnMouse(p,pMsg->data[0],MAKEWORD(pMsg->data[1],pMsg->data[2]),MAKEWORD(pMsg->data[3],pMsg->data[4]));
			break;

		case FX_RBUTTON_DOWN:
			k_debug_string("DefConsoleProc::FX_RBUTTON_DOWN\r\n");
			//k_exec_throw_exception(0xFF000000,1,"Test Exception Mode Messages",-1);
			break;

		case FX_LBUTTON_DOWN:
			k_debug_string("DefConsoleProc::FX_LBUTTON_DOWN\r\n");


			break;
		case FX_LBUTTON_UP:
			k_debug_string("DefConsoleProc::FX_LBUTTON_UP\r\n");
			break;
		case FX_LBUTTON_DRAG:
			k_debug_string("DefConsoleProc::FX_LBUTTON_DRAG\r\n");
			break;
		case FX_LBUTTON_DBLCLICK:
			k_debug_string("DefConsoleProc::FX_LBUTTON_DBLCLICK\r\n");
			break;

		case FX_WINDOW_TOFRONT:
			k_debug_string("DefConsoleProc::FX_WINDOW_TOFRONT\r\n");

			k_vdraw_ui_window(NULL,FXWS_OVERLAPPED,25,25,200,300,"Clicked FRONT",15,3);

			break;
		case FX_WINDOW_TOBACK:
			k_debug_string("DefConsoleProc::FX_WINDOW_TOBACK\r\n");

			k_vdraw_ui_window(NULL,FXWS_OVERLAPPED,250,250,150,200,"Clicked BACK",15,3);

			break;
		case FX_COM1_DATA:
			//if(pMsg->data[0]>64)
			//	k_debug_char("DefConsoleProc::FX_COM1_DATA:",(CHAR)pMsg->data[0]);
			break;
		case FX_COM2_DATA:
			//k_debug_string("DefConsoleProc::FX_COM2_DATA\r\n");
			break;
		case FX_PROCESS:
			//k_debug_string("DefConsoleProc::FX_PROCESS\r\n");

			pctx = (PCONSOLECTX)p->ctx;


			//k_updatespinner(3,40,&consolespinctx);
			/*
			for(i=0;i<100;i++)
			{
				asm NOP;
			}
			*/

			if(((PFXCOMBUFFER)(pctx->userData))->cbBuffer == -1)
			{
				ptr = strtok(((PFXCOMBUFFER)(pctx->userData))->buffer, "\n");

				while( ptr != NULL )
				{
					if(*ptr!='%')
					{
						k_put_string(p->consoleCtl->curX,p->consoleCtl->curY,ptr,15,0);
						p->consoleCtl->curX = 0;
						p->consoleCtl->curY++;
					}
					ptr = strtok(NULL, "\n");
				}

				((PFXCOMBUFFER)(pctx->userData))->cbBuffer = 0;
				memset(((PFXCOMBUFFER)(pctx->userData))->buffer,0,256);
			}

			//k_debug_integer("DefConsoleProc::FX_PROCESS:COM1 DATA:",serial);
			while(UART1_BASE[UART_LSR] & 0x01)
			{
				serial = UART1_BASE[0];

				//k_debug_long("DefConsoleProc::ProcessId:",p->procId);
				//k_debug_pointer("DefConsoleProc::p->ctx:",p->ctx);
				//k_debug_pointer("DefConsoleProc::pctx->userData:",pctx->userData);
				//k_debug_hex("DefConsoleProc::FX_PROCESS:COM1 DATA:",serial);

				temp3 = ((PFXCOMBUFFER)(pctx->userData))->cbBuffer;

				//k_debug_integer("DefConsoleProc::FX_PROCESS:COM1-COUNT:",temp3);

				((PFXCOMBUFFER)(pctx->userData))->buffer[temp3] = (UCHAR)serial;
				((PFXCOMBUFFER)(pctx->userData))->cbBuffer++;

				//if(serial == 13)
				if(((PFXCOMBUFFER)(pctx->userData))->cbBuffer > 255 || serial == '\n')
				{
					//k_debug_strings("DefConsoleProc::FX_PROCESS:COM1-BUFFER:",((PFXCOMBUFFER)(pctx->userData))->buffer);
					k_debug_string(((PFXCOMBUFFER)(pctx->userData))->buffer);
					//k_debug_hex("DefConsoleProc::FX_PROCESS:COM1 DATA:",serial);
					//k_debug_integer("DefConsoleProc::FX_PROCESS:COM1-COUNT:",temp3);
					((PFXCOMBUFFER)(pctx->userData))->cbBuffer = -1;
					//memset(((PFXCOMBUFFER)(pctx->userData))->buffer,0,32);
					break;
				}
			}

			//k_debug_integer("DefConsoleProc::FX_PROCESS:lineBufferIndex:",pctx->lineBufferIndex);
			break;
		case FX_CONTROL_COMMAND:
			k_debug_string("DefConsoleProc::FX_CONTROL_COMMAND\r\n");
			if( MSGCMDID(pMsg) == CTL_CMD_CAPTION )
			{
				captionText = (LPCHAR)MSGCMDPARM1(pMsg);
				if(captionText)
				{
					k_debug_strings("DefConsoleProc::CTL_CMD_CAPTION:",captionText);

					p->consoleCtl->curX = 0;
					//p->consoleCtl->curY++;

					k_put_string(p->consoleCtl->curX,p->consoleCtl->curY,captionText,15,0);

					i=p->consoleCtl->curX;
					ptr = captionText;
					while(*ptr)
					{
						consoleBuffer[p->consoleCtl->curY][i] = *ptr;
						i++;
						ptr++;
					}

					p->consoleCtl->curX = 0;
					p->consoleCtl->curY++;

					k_debug_integer("DefConsoleProc::curY:",p->consoleCtl->curY);

					if(p->consoleCtl->curY > 50)
					{
						k_scroll_screen(p);
					}

					pctx->lineBufferIndex = 0;
				}
			}
			break;
		case FX_SCROLLBAR_COMMAND:
			 if( MSGCMDID(pMsg) == CTL_VERT_SCROLL )
			{
				captionText = (LPCHAR)MSGCMDPARM1(pMsg);
				if(captionText)
				{
					k_debug_string("DefConsoleProc::CTL_VERT_SCROLL\r\n");

					/*
					for(i=0;i<55;i++)
					{
						for(j=0;j<72;j++)
						{
							consoleBuffer[i][j] = consoleBuffer[i+1][j];
						}
					}

					for(i=0;i<56;i++)
					{
						for(j=0;j<72;j++)
						{
							k_put_char(j,i,consoleBuffer[i][j],15,0);
						}
					}

					p->consoleCtl->curX = 0;
					p->consoleCtl->curY--;
					*/
					k_scroll_screen(p);

					pctx->lineBufferIndex = 0;
				}
			}

			break;

		default:
			//k_updatespinner(2,40,&consolespinctx);

			cursorFlashInterval++;

			if(cursorFlashInterval > 10)
			{
				if(cursorCurrentColor == 0)
					cursorCurrentColor = p->consoleCtl->fgColor;
				else
					cursorCurrentColor = 0;

				cursorFlashInterval = 0;
			}

			k_put_char(p->consoleCtl->curX,
					   p->consoleCtl->curY,
					   95,
					   cursorCurrentColor,0);


			break;
		}
	}
	//k_debug_string("DefConsoleProc exit\r\n");
}

void ObjectClicked(PWINDOW console)
{
	int temp1 = 0;
	int temp2 = 0;
	PFXPROCESS p = k_exec_get_current_process();

	k_debug_string("ObjectClicked!!\r\n");
	if(p->desktopCtl->currentDiskName)
	{
		temp1 = strlen(p->desktopCtl->currentDiskName);
		temp2 = (temp1*4);
		k_put_winicon_point(ICON_DISK,640 - (40 + temp2/2),20,6,PAINTMODE_HIGHLIGHT);
		k_draw_text_point(k_to_uppercase(p->desktopCtl->currentDiskName),640 - (35 + temp2/2) - (temp2),40,0);
	}
}



void DefConsoleProc2(PFXOSMESSAGE pMsg)
{

	PSPINNERCTX pconsolespinctx = NULL;
	PFXPROCESS p = NULL;
	int i = 0;

	//k_debug_string("DefConsoleProc enter\r\n");
	if(pMsg!=NULL)
	{
		p = k_exec_get_current_process();

		switch(pMsg->type)
		{
		case FX_INIT_MESSAGE:


			pconsolespinctx = (PSPINNERCTX)k_mem_allocate_heap(sizeof(SPINNERCTX));
			pconsolespinctx->spinner = consolespinner;
			p->tls[0] = (LPVOID)pconsolespinctx;
			p->tls[1] = (PRECT)k_mem_allocate_heap(sizeof(RECT));


			i = (int)((long)(p->startupArgs));
			k_debug_integer("DefConsoleProc2::FX_PROCESS:",i);


			if(p!=NULL)
				k_debug_long("DefConsoleProc2::ProcessId:",p->procId);
			else
				k_debug_string("DefConsoleProc2::FX_INIT_MESSAGE\r\n");



			k_init_spinner(pconsolespinctx);




			//k_sd_test();
			break;
		case FX_UNINIT_MESSAGE:
			k_debug_string("DefConsoleProc2::FX_UNINIT_MESSAGE\r\n");
			if(p->tls[1])
				k_mem_deallocate_heap(p->tls[1]);
			break;
		case FX_KEY_DOWN:
			if(p!=NULL && p->foregroundActive)
			{
				//if(p!=NULL)
				//	k_debug_integer("DefConso-leProc::ProcessId:",p->procId);
				k_put_char(3 ,46,pMsg->data[2],15,0);
			}
			break;
		case FX_PROCESS:

			pconsolespinctx = (PSPINNERCTX)p->tls[0];

			//k_debug_string("DefConsoleProc::FX_PROCESS\r\n");
			i = (int)((long)(p->startupArgs));
			k_updatespinner(3 + i,39,pconsolespinctx);
			//k_debug_integer("DefConsoleProc2::FX_PROCESS:",i);

			if(p->tls[1])
			{
				((PRECT)(p->tls[1]))->x = 0;
				((PRECT)(p->tls[1]))->y = 0;
			}
			/*
			for(i=0;i<1000;i++)
			{
				asm NOP;
			}
			*/
			//k_debug_integer("DefConsoleProc2::FX_PROCESS:",i++);
			break;
		default:
			//k_updatespinner(3,40,&consolespinctx);
			break;
		}
	}
	//k_debug_string("DefConsoleProc exit\r\n");
}

void DefConsoleProc3(PFXOSMESSAGE pMsg)
{
	PSPINNERCTX pconsolespinctx = NULL;
	PFXPROCESS p = NULL;
	int i = 0;

	//k_debug_string("DefConsoleProc enter\r\n");
	if(pMsg!=NULL)
	{
		p = k_exec_get_current_process();

		switch(pMsg->type)
		{
		case FX_INIT_MESSAGE:

			pconsolespinctx = (PSPINNERCTX)k_mem_allocate_heap(sizeof(SPINNERCTX));
			pconsolespinctx->spinner = consolespinner;
			p->tls[0] = (LPVOID)pconsolespinctx;

			i = (int)(long)((PFXPROCESSMESSAGE)pMsg)->processInfo->startupArgs;
			k_debug_integer("DefConsoleProc3::FX_PROCESS:",i);

			if(p!=NULL)
				k_debug_long("DefConsoleProc3::ProcessId:",p->procId);
			else
				k_debug_string("DefConsoleProc3::FX_INIT_MESSAGE\r\n");
			k_init_spinner(pconsolespinctx);

			//k_sd_test();
			break;
		case FX_KEY_DOWN:
			if(p!=NULL && p->foregroundActive)
			{
				//if(p!=NULL)
				//	k_debug_integer("DefConso-leProc::ProcessId:",p->procId);

				k_put_char(1,46,pMsg->data[2],15,0);
			}
			break;
		case FX_PROCESS:
			pconsolespinctx = (PSPINNERCTX)p->tls[0];
			//k_debug_string("DefConsoleProc::FX_PROCESS\r\n");
			k_updatespinner(3,41,pconsolespinctx);
			//k_debug_integer("DefConsoleProc3::FX_PROCESS:",i++);
			break;
		default:
			//k_updatespinner(3,40,&consolespinctx);
			break;
		}
	}
	//k_debug_string("DefConsoleProc exit\r\n");
}


VOID k_console_process_command(LPCHAR commandLine,PFXPROCESS process)
{
	int index = 0;
	int pos = 0;
	LPCHAR cptr  = console_commands[0];
	LPCHAR match = NULL;

	PCOMMANDARGS args = NULL;

	PFXNODE tokens = NULL;
	PFXNODE t = NULL;

	FXCommandHandler handler = NULL;

	k_debug_string("k_console_process_command::enter:");
	k_debug_string(commandLine);
	k_debug_string("\r\n");


	while(cptr)
	{
		//k_debug_string(cptr);
		//k_debug_string("\r\n");
		match = strstr(commandLine,cptr);
		if(match == commandLine)
		{
			k_put_string(0,49,"                                                                        ",15,0);
			k_put_string(0,50,"                                                                        ",15,0);

			tokens = tokenize(commandLine);
			if(tokens)
			{
				t = tokens;
				/*
				while(t)
				{
					if(t)
					{
						k_debug_string("TOKEN:");
						if( ((PTOKEN)t->data)->text)
						{
							k_debug_string(((PTOKEN)t->data)->text );
						}
						else
							k_debug_string("NO NAME");

						k_debug_string("(");
						k_debug_string( token_to_string ( ((PTOKEN)t->data)->type  ));
						k_debug_string(")");
						k_debug_string("\r\n");
						t = t->next;
					}
				}
				*/
			}

			//pos = k_put_string(pos,49,"FOUND COMMAND:",15,0);
			//k_put_string(pos,49,cptr,15,0);

			k_debug_strings("k_console_process_command::found:",cptr);

			// execute command handler
			if(console_command_proc[index]!=NULL)
			{
				//console_command_proc[index](process);

				//handler = console_command_proc[index];

				args = k_mem_allocate_heap(sizeof(COMMANDARGS));
				args->proc = console_command_proc[index];
				args->tokens = tokens;

				//k_debug_integer("k_console_process_command::presend:",index);
				//k_send_message(process,FX_APP_MESSAGE,handler,-1);
				k_send_message(process,FX_APP_MESSAGE,args,-1);
				//k_debug_pointer("k_console_process_command::postsend:",handler);

			}
			break;
		}
		cptr = console_commands[++index];
	}


	//if(commandLine!=NULL)
	//	k_put_string(0,50,commandLine,15,0);

	k_debug_string("k_console_process_command::exit\r\n");

	return;
}
/*
VOID foreach_file_entry(LPVOID ctx,LPVOID data)
{
	CHAR buffer[16];
	int pos = 0;
	PFXPROCESS process = (PFXPROCESS)ctx;

	pos = k_put_string(0,process->consoleCtl->curY,((PFILEINFO)data)->pFilename,15,0);
	pos = k_put_string(20,process->consoleCtl->curY,k_replace_padding( k_longtodec(  ((PFILEINFO)data)->lSize,buffer ),' '),15,0);
	pos++;
	if(((PFILEINFO)data)->type == ATTR_DIRECTORY)
		pos = k_put_string(pos,process->consoleCtl->curY,"directory",15,0);
	else
		pos = k_put_string(pos,process->consoleCtl->curY,"bytes",15,0);

	process->consoleCtl->curY++;
}
*/

LPCHAR token_to_string(TOKENTYPE tt)
{
	return tokentypeNames[tt];
}

PTOKEN newToken(PFXSTRING name,TOKENTYPE type)
{
	PTOKEN t = (PTOKEN)k_mem_allocate_heap(sizeof(TOKEN));
	if(t)
	{
		t->type = type;
		t->depth = 0;
		t->text = k_fxstring_copy_string(name);
	}
	return t;
}
/*
void sig_walk(LPVOID signature,LPVOID pdata)
{
	PTOKEN t = ((PTOKEN)pdata);

	((LPCHAR)signature)[0]++;
	((LPCHAR)signature)[((LPCHAR)signature)[0]] = (t->type + 65);

	//k_debug_integer("sig count:",((LPCHAR)signature)[0]);
	k_debug_integer("sig id:",((LPCHAR)signature)[0]);
	//k_debug_integer("sig type:",((LPCHAR)signature)[((LPCHAR)signature)[0]]);
	k_debug_char("sig type:",((LPCHAR)signature)[((LPCHAR)signature)[0]] );
}

VOID getTokenSig(PFXNODE tokens,LPVOID signature)
{
	memset(signature,0xFF,8);
	((LPCHAR)signature)[0] = 0;

	k_nodelist_foreach_data(tokens->next,signature,sig_walk);

	((LPCHAR)signature)[((LPCHAR)signature)[0] + 1] = 0;
	((LPCHAR)signature)[0] ='#';

	k_debug_strings("string-sig:",((LPCHAR)signature));
}
*/
void sig_walk(LPVOID signature,LPVOID pdata)
{
	CHAR end[2];
	PTOKEN t = ((PTOKEN)pdata);

	if(t)
	{
		if(t->type == 0xFF)
			end[0] = '#';
		else
			end[0] = (t->type + 65);
		end[1] = 0;

		strcat((LPCHAR)signature,end);

		//k_debug_integer("sig count:",((LPCHAR)signature)[0]);
		//k_debug_integer("sig id:",((LPCHAR)signature)[0]);
		//k_debug_integer("sig type:",((LPCHAR)signature)[((LPCHAR)signature)[0]]);
		k_debug_char("sig type:",(t->type + 65));
	}
	else
	{
		strcat((LPCHAR)signature,"#");
		k_debug_string("sig_walk:NO DATA");
	}
}

VOID getTokenSig(PFXNODE tokens,LPVOID signature)
{
	memset(signature,0,8);
	//((LPCHAR)signature)[0] = 0;

	k_nodelist_foreach_data(tokens,signature,sig_walk);

	//((LPCHAR)signature)[((LPCHAR)signature)[0] + 1] = 0;
	//((LPCHAR)signature)[0] ='#';

	k_debug_strings("string-sig:",((LPCHAR)signature));
}



PFXNODE tokenize(LPCHAR source)
{

	INT 	  i = 0;
	CHAR 	  c = 0;
	CHAR      toString[2];
	INT 	  nestedIf = 0;
	UINT sourceLength = 0;
	LPCHAR	  charTokens = "\n=+-/<*>(),";
	//PFXSTRING charTokens = NULL;
	PFXSTRING token    = NULL;
	PFXNODE   tokens   = NULL;
	PTOKEN    tok	   = NULL;
	TOKENIZESTATE state = STATE_DEFAULT;
	TOKENTYPE tokenTypes[] = {
								TTYPE_LINE, TTYPE_EQUALS, TTYPE_OPERATOR,
								TTYPE_OPERATOR, TTYPE_OPERATOR,TTYPE_OPERATOR,
								TTYPE_OPERATOR, TTYPE_OPERATOR,
								TTYPE_LEFT_PAREN, TTYPE_RIGHT_PAREN, TTYPE_COMMA
							  };


	source = k_fxstring_add(k_fxstring_new(source,strlen(source) + 2)," ");


	k_debug_message("SOURCE LINE:",source);

	sourceLength = strlen(source);

	k_debug_integer("SOURCE sourceLength:",sourceLength);

	//tokens = k_nodelist_init(26,"signature", newToken( k_fxstring_new("#",2),0xFF));
	tokens = k_nodelist_init(26,"signature", NULL);

	token = k_fxstring_init(256);
	//charTokens = k_fxstring_new("\n=+-/<*>(),",16);
	// Scan through the code one character at a time, building up the list
	// of tokens.
	for (i = 0; i < sourceLength; i++)
	{
		c = source[i];

		//k_debug_char("SOURCE CHAR:",c);
		//k_debug_hex("SOURCE HEX:",c);

		switch (state)
		{
		case STATE_DEFAULT:
			if (k_string_indexOf(charTokens,c) != -1)
			{
				//k_debug_integer("TOKEN TYPE:",tokenTypes[k_string_indexOf(charTokens,c)]);

				k_nodelist_add(tokens,k_nodelist_create(tokenTypes[k_string_indexOf(charTokens,c)],"token",
						                                newToken( k_fxstring_new(k_string_toString(c,toString),2) ,
						                                		  tokenTypes[k_string_indexOf(charTokens,c)]),NULL,NULL)
						                                );
				//tokens.add(new Token(Character.toString(c), tokenTypes[charTokens.indexOf(c)]));
			}
			else if (isalpha(c))
			{
				k_fxstring_addchar(token,c);
				state = STATE_WORD;
			}
			else if (isdigit(c))
			{
				k_fxstring_addchar(token,c);
				state = STATE_NUMBER;
			}
			else if (c == '"')
			{
				state = STATE_STRING;
			}
			else if (c == '\'')
			{
				state = STATE_COMMENT;
			}

			break;

		case STATE_WORD:
			if (isalpha(c) || isdigit(c))
			{
				k_fxstring_addchar(token,c);
			}
			else if (c == '.')
			{
				k_fxstring_addchar(token,c);
			}
			else if (c == '_')
			{
				k_fxstring_addchar(token,c);
			}
			else if (c == '[')
			{
				k_fxstring_addchar(token,c);
			}
			else if (c == ']')
			{
				k_fxstring_addchar(token,c);
			}
			/*
			else if (c == ':')
			{
				k_nodelist_add(tokens,k_nodelist_create(TTYPE_LABEL,"token",newToken(token, TTYPE_LABEL),NULL,NULL));

				k_fxstring_reinit(token);
				state = STATE_DEFAULT;
			}
			*/
			else
			{
				tok = newToken(token, TTYPE_WORD);

				if (k_fxstring_equals(token,"if"))
				{
					tok->depth = nestedIf;
					nestedIf++;
				}
				else if (k_fxstring_equals(token,"endif"))
				{
					nestedIf--;
					tok->depth = nestedIf;
				}

				k_nodelist_add(tokens,k_nodelist_create(tok->type,"token",tok,NULL,NULL));
				k_fxstring_reinit(token);
				state = STATE_DEFAULT;
				i--; // Reprocess this character in the default state.
			}
			break;

		case STATE_NUMBER:
			// HACK: Negative numbers and floating points aren't supported.
			// To get a negative number, just do 0 - <your number>.
			// To get a floating point, divide.
			if (isdigit(c))
			{
				k_fxstring_addchar(token,c);
			}
			else if (c == '.')
			{
				k_fxstring_addchar(token,c);
			}
			else
			{
				k_nodelist_add(tokens,k_nodelist_create(TTYPE_NUMBER,"token",newToken(token, TTYPE_NUMBER),NULL,NULL));
				k_fxstring_reinit(token);
				state = STATE_DEFAULT;
				i--; // Reprocess this character in the default state.
			}
			break;

		case STATE_STRING:
			if (c == '"' || c == '\n')
			{
				k_nodelist_add(tokens,k_nodelist_create(TTYPE_STRING,"token",newToken(token, TTYPE_STRING),NULL,NULL));

				k_fxstring_reinit(token);
				state = STATE_DEFAULT;
			}
			else
			{
				k_fxstring_addchar(token,c);
			}
			break;

		case STATE_COMMENT:
			if (c == '\n')
			{
				state = STATE_DEFAULT;
			}
			break;
		}
	}

	return tokens;

	//return NULL;
}


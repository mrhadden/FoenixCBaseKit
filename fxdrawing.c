#include "fxos.h"
#include "fxdrawing.h"
#include "fxfont.h"

extern char FAR spinner[];
extern int 	FAR _k_window_index;
extern Window FAR _k_window_list[];

#define CHKLIST_MAX 	(6)
CLICKABLE FAR clickList[CHKLIST_MAX];
PCLICKABLE FAR hitList[CHKLIST_MAX];

void k_sleep(int* pmsec)
{
	int delay = *pmsec;
	while(delay > 0)
	{
		#asm
			NOP
			NOP
			NOP
			NOP
			NOP
		#endasm
		delay--;
	}
}

void k_draw_font(char outChar,int column,int row,char color,char bcolor,char fontSetId)
{
	k_draw_font_at_point(outChar,column * FONTW,row * FONTH,color,bcolor,fontSetId);
}

void k_draw_font_at_point(char outChar,int mx,int my,char color,char bcolor,char fontSetId)
{
	int x = 0;
	int y = 0;
	int textX = mx;
	int textY = my;

	char FAR* img = NULL;//fontImg[ix];

    if(outChar == 32 && fontSetId!=0xFF)
	{
	   img = NULL;
    }
	else if(outChar == 32 && fontSetId==0xFF)
	{
		img = fontSpace;		
	}
    else
	{
	    img = fontImg[(int)characterROMMapping[(int)(outChar & 0xFF)]];
		//img = fontImg[0x02];
	}

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
	
	*phandle = index;
	
	return;
}


int k_is_menu_hit(PMENU pmenu, int cx,int cy)
{
	int i = 0;
	char FAR* caption;
	int index = -1;
	
	if(pmenu!=NULL)
	{
		caption = pmenu->subMenus[i];
		while(caption!=NULL)
		{
			if((cx >= pmenu->cx) && (pmenu->cx + pmenu->width < cx))
			{
				
			}			
			if(index > -1)
				break;
			
			i++;
			caption = pmenu->subMenus[i];
		}
	}

	return index;
}

PMENU k_create_menu(int cx,int cy,int width,char FAR *title,char FAR **captions,int color, int bgcolor)
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
	
	int height = 0;
	
	PMENU menu = (PMENU)malloc(sizeof(MENU));
	

	k_get_font_metrics(&metric);
	
	height = metric.height + (int)(metric.width/4);

	menu->cx = cx;
	menu->cy = cy;
	menu->height = height;
	menu->width = width;
	menu->fcolor = color;
	menu->bcolor = bgcolor;
	menu->subMenus = (void FAR**)captions;

	k_vdma_fill_rect(cx,cy,width,height,color);	
	//k_delay(15);
	
	title = strupr(title);
	
	//titleOffsetX+=k_put_wingadget_point(WINICON_TITLE_ACLOSE,titleOffsetX,titleOffsetY,14);	
	/*
	titleScaler = (int)(width / metric.width - 4);
	for(i=0;i<titleScaler;i++)
	{
		titleOffsetX+=k_put_wingadget_point(WINICON_TITLE_LINES,titleOffsetX,titleOffsetY,14);	
	}*/
	k_put_wingadget_point(WINICON_TITLE_BACK,endX - (metric.width*2 + 2),titleOffsetY,14);
	k_put_wingadget_point(WINICON_TITLE_FRONT,endX - (metric.width),titleOffsetY,14);

	k_draw_text_point(title,cx+2+metric.width,titleOffsetY,0);
	
	return menu;
}


PMENU k_create_context_menu(int cx,int cy,int width,int height,char FAR **captions,int color, int bgcolor)
{
	FONTMETRIC metric;
	
	int i = 0;
	
	char FAR *caption = NULL;
	
	int borderTitle = 10;
	int borderWidth = 3;

	int titleOffsetX = cx+2;
	int titleOffsetY = cy+2;
	int titleScaler = 0;
	
	int clientOffsetX = cx+borderWidth+2;
	int clientOffsetY = cy+borderTitle+1;
	
	int endX = width + cx - borderWidth;
		
	PMENU menu = (PMENU)malloc(sizeof(MENU));
	

	k_get_font_metrics(&metric);
	
	height += metric.height + (int)(metric.width/4);

	menu->cx = cx;
	menu->cy = cy;
	menu->height = height;
	menu->width = width;

	k_vdma_fill_rect(cx-1,cy,width+1,height+1,0);
	k_vdma_fill_rect(cx,cy,width,height,color);	
	
	//k_delay(15);
	
	

	//k_put_wingadget_point(WINICON_TITLE_BACK,endX - (metric.width*2 + 2),titleOffsetY,14);
	//k_put_wingadget_point(WINICON_TITLE_FRONT,endX - (metric.width),titleOffsetY,14);
	i = 0;
	caption = captions[i];	
	while(caption!=NULL)
	{
		caption = strupr(caption);
		k_draw_text_point(caption,titleOffsetX,titleOffsetY,0);
		titleOffsetY+=(FONTH + 2);
		i++;		
		caption = captions[i];
	}
	
	return menu;
	
}

/*
PMENU k_vdraw_ui_menu(int cx,int cy,int width,char FAR *title,int color, int bgcolor)
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
	
	int height = 0;
	
	PMENU menu = (PMENU)malloc(sizeof(MENU));
	

	k_get_font_metrics(&metric);
	
	height = metric.height + (int)(metric.width/4);

	menu->height = height;

	k_vdma_fill_rect(cx,cy,width,height,color);	
	//k_delay(15);
	
	title = strupr(title);
	

	k_put_wingadget_point(WINICON_TITLE_BACK,endX - (metric.width*2 + 2),titleOffsetY,14);
	k_put_wingadget_point(WINICON_TITLE_FRONT,endX - (metric.width),titleOffsetY,14);

	k_draw_text_point(title,cx+2+metric.width,titleOffsetY,0);
	
	return menu;
}
*/

void k_sd_init(void)
{
/*
.192000	5c d2 21 19	jmp $1921d2	SDOS_CHECK_CD JML ISDOS_CHK_CD ; Check if Card is Present
.192004	5c e1 21 19	jmp $1921e1	SDOS_CHECK_WP JML ISDOS_CHK_WP ; Check if Card is Write Protected
.192008	5c 20 20 19	jmp $192020	SDOS_INIT     JML ISDOS_INIT
.19200c	5c 6d 20 19	jmp $19206d	SDOS_DIR      JML ISDOS_DIR
.192010	5c 27 21 19	jmp $192127	SDOS_CHDIR    JML ISDOS_CHDIR
.192014	5c 28 21 19	jmp $192128	SDOS_LOAD     JML ISDOS_LOAD
.192018	5c 2c 21 19	jmp $19212c	SDOS_SAVE     JML ISDOS_SAVE
.19201c	5c 2d 21 19	jmp $19212d	SDOS_EXEC     JML ISDOS_EXEC
*/
	#asm	
		
	jsl $192020
		
	#endasm
}

void k_sd_present(void)
{
/*
.192000	5c d2 21 19	jmp $1921d2	SDOS_CHECK_CD JML ISDOS_CHK_CD ; Check if Card is Present
.192004	5c e1 21 19	jmp $1921e1	SDOS_CHECK_WP JML ISDOS_CHK_WP ; Check if Card is Write Protected
.192008	5c 20 20 19	jmp $192020	SDOS_INIT     JML ISDOS_INIT
.19200c	5c 6d 20 19	jmp $19206d	SDOS_DIR      JML ISDOS_DIR
.192010	5c 27 21 19	jmp $192127	SDOS_CHDIR    JML ISDOS_CHDIR
.192014	5c 28 21 19	jmp $192128	SDOS_LOAD     JML ISDOS_LOAD
.192018	5c 2c 21 19	jmp $19212c	SDOS_SAVE     JML ISDOS_SAVE
.19201c	5c 2d 21 19	jmp $19212d	SDOS_EXEC     JML ISDOS_EXEC
*/
	
	#asm	
		
		phx
		pha
		REP #$30
		jsl $19200c
		REP #$20
		pla
		plx
		
	#endasm	
}

void k_sd_dir(void)
{
/*
.192000	5c d2 21 19	jmp $1921d2	SDOS_CHECK_CD JML ISDOS_CHK_CD ; Check if Card is Present
.192004	5c e1 21 19	jmp $1921e1	SDOS_CHECK_WP JML ISDOS_CHK_WP ; Check if Card is Write Protected
.192008	5c 20 20 19	jmp $192020	SDOS_INIT     JML ISDOS_INIT
.19200c	5c 6d 20 19	jmp $19206d	SDOS_DIR      JML ISDOS_DIR
.192010	5c 27 21 19	jmp $192127	SDOS_CHDIR    JML ISDOS_CHDIR
.192014	5c 28 21 19	jmp $192128	SDOS_LOAD     JML ISDOS_LOAD
.192018	5c 2c 21 19	jmp $19212c	SDOS_SAVE     JML ISDOS_SAVE
.19201c	5c 2d 21 19	jmp $19212d	SDOS_EXEC     JML ISDOS_EXEC
*/
	#asm	
		phd
		phx
		phy
		pha
		jsl $19206d
		pla
		ply
		plx
		pld
	#endasm
}



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


void k_test_bitmap_drawing_sd(void)
{
	int bx = 0;
	int by = 0;
	int bw = 0;
	int bh = 0;
	int mx = -1;
	int my = -1;
	int mb = -1;
	long px = 0;
	int lx = -1;
	int ly = -1;
	int lk = -1;
	int tx = -1;
	int ty = -1;
	int i;
	int delay = 500;
	char bExit = 0;
	int pos = 0;
	char dcolor = 15;
	int fcolor = 15;
	int bcolor = 0;
	char FAR convert[16];
	char FAR *pitoa = "                ";
	int mbState = 0;
	HANDLE hWin;
	RECT rect;
	int debug = 0;
	int FAR *pmx = malloc(sizeof(int));
	char FAR *pstr  = (char FAR*)malloc(32);

	unsigned long tick = 0;
	unsigned long ctick = 0;

	memset(convert,0,16);
	memset(pstr,0,32);
	
	
	//FXOS_MOUSE_CTL[0] = 0xFF;
	
	/*
	k_put_string(1,1,pstr,15,0);
	k_put_string(1,2,"Y:",15,0);
	k_put_string(1,3,"B:",15,0);
	k_put_string(1,4,"K:",15,0);
	k_put_string(1,5,"J:",15,0);	
	k_put_string(1,6,"M:",15,0);
	*/
	mbState = 0;
	
	//rect.x = 5;
	//rect.y = 5;
	//rect.height = 35;
	//rect.width = 45;			
	//k_create_text_window(&rect,"CONSOLE WINDOW",&hWin);
	k_put_string(0,0,"k_sd_init 1",15,0);
	k_print("C256 Version:BEFORE\r");	
	k_put_string(0,0,"k_sd_init",15,0);
	k_print("C256 Version:MIDDLE\r");	
	//k_sd_init();
	k_put_string(0,0,"k_sd_init 2",15,0);
	
	init_sd_card();
	
	k_put_string(0,0,"k_sd_init 3",15,0);
	
	k_print("C256 Version:AFTER\r");

	//k_put_string(0,0,"k_sd_dir",15,0);
	//sd_card_dir();
	
	pos = 0;
	while(1)
	{
		#asm
			WAI
		#endasm
		//asm sei;
		
		//asm cli;
	}	
	return;
}

//
// REAL WORKING VERSION
//
void k_test_bitmap_drawing(void)
{
	char menuOn = 0;
	
	int bx = 0;
	int by = 0;
	int bw = 0;
	int bh = 0;
	int mx = -1;
	int my = -1;
	int mb = -1;
	int lb = -1;
	long px = 0;
	int lx = -1;
	int ly = -1;
	int lk = -1;
	int tx = -1;
	int ty = -1;
	int area = 0;
	int i;
	int delay = 500;
	char bExit = 0;
	int pos = 0;
	char dcolor = 15;
	int fcolor = 15;
	int bcolor = 0;
	char FAR convert[16];
	char FAR *pitoa = "                ";
	int mbState = 0;
	HANDLE hWin;
	PMENU menu = NULL;
	RECT rect;
	int debug = 0;
	int FAR *pmx = malloc(sizeof(int));
	char FAR *pstr  = (char FAR*)malloc(32);
	PMENU ctxMenu = NULL;
	char FAR* menuTitle = "C256 FX-DRAW";
	char FAR* captions[] = {"Open..","Save","SaveAs..","Close",NULL};
	unsigned long tick = 0;
	unsigned long ctick = 0;

	memset(convert,0,16);
	memset(pstr,0,32);


	clickList[0].area.x = 10;
	clickList[0].area.y = 0;
	clickList[0].area.width = 20;
	clickList[0].area.height = 10;
	clickList[0].depth = 0;

	clickList[1].area.x = 300;
	clickList[1].area.y = 200;
	clickList[1].area.width = 200;
	clickList[1].area.height = 100;
	clickList[1].depth = 0;

	clickList[2].area.x = 50;
	clickList[2].area.y = 50;
	clickList[2].area.width = 150;
	clickList[2].area.height = 200;
	clickList[2].depth = 0;

	clickList[3].area.x = 300;
	clickList[3].area.y = 0;
	clickList[3].area.width = 20;
	clickList[3].area.height = 10;
	clickList[3].depth = 0;

	clickList[4].area.x = 500;
	clickList[4].area.y = 400;
	clickList[4].area.width = 100;
	clickList[4].area.height = 100;
	clickList[4].depth = 1;

	clickList[5].area.x = 425;
	clickList[5].area.y = 200;
	clickList[5].area.width = 100;
	clickList[5].area.height = 100;
	clickList[5].depth = 0;

	VDMA_CONTROL_REG[0] = VDMA_CTRL_ENABLE;

	*BM_START_ADDY_L = 0x00;
	*BM_START_ADDY_M = 0x00;
	*BM_START_ADDY_H = 0x00;
	*((char FAR*)0xAF1F80) = 0x02;
	
	*BM_X_SIZE_L = 0x80;
	*BM_X_SIZE_H = 0x02;	
	*BM_Y_SIZE_L = 0xE0;
	*BM_Y_SIZE_H = 0x01;	
	
	setColors();
	
	*FG_CHAR_LUT_PTR    = 0x00;
	*BG_CHAR_LUT_PTR    = 0x00;
	*BM_CONTROL_REG 	= 0x08;
	*MASTER_CTRL_REG_L 	= 0x0C;
	
	k_set_border_color(0xAA,0xAA,0xAA);
	
	k_disable_border();

	for(i=0;i<480;i++)
	{
		k_fill_line(0,i,639,3);
	}				

	menu = k_vdraw_ui_menu(0,0,636,10,menuTitle,15,3);
	//k_put_draw_text(2,1,"C256/FOENIX-DRAW L=DRAW R=COLOR[ ] M=CLEAR",15,bcolor);
	//k_draw_font(32,34,1,dcolor,14,0xFF);
	
	
	k_debug_string("**********************************\r\n");
	k_debug_string("******k_test_bitmap_drawing*******\r\n");
	k_debug_string("**********************************\r\n");
	
	
	while(!bExit)
	{
		mb = 0;
		asm WAI;
	
		mb = (FXOS_MOUSE_BYTE_0 & 0x07);

		if(FXOS_KEY_BYTE_2!=lk)
		{
			lk = FXOS_KEY_BYTE_2;
			mb = 0x08;
			ctick = tick;
		}

		if(mb!=0)
		{
			lb = mb;
			
			//asm sei;
			//FXOS_MOUSE_CTL[0] = 0xFF;
			//asm cli;
			
			asm sei;	
			if(mb & 1)
			{
				mx = k_get_mouse_pos_X();
				my = k_get_mouse_pos_Y();
				if(mx > 0 && mx < 639)
				{
					if(my > menu->height && my < 479)
					{

						tx = mx;
						ty = my;
						if(!menuOn)
							k_draw_pixel((long)mx,(long)my,dcolor);
						
						area = k_point_in_list_depth(mx,my,clickList,CHKLIST_MAX);
						if(area > -1)
						{
							k_vdma_fill_rect(clickList[area].area.x,clickList[area].area.y,
											 clickList[area].area.width,clickList[area].area.height,dcolor);
						}	
						
					}
					else
					{
						
						area = k_point_in_list_depth(mx,my,clickList,CHKLIST_MAX);
						if(area > -1)
						{
							k_vdma_fill_rect(clickList[area].area.x,clickList[area].area.y,
							                 clickList[area].area.width,clickList[area].area.height,dcolor);
						}	
						
						if(menuOn)
						{
							ctxMenu = k_create_context_menu(mx,menu->height,70,60,captions,15,3);
						}
					}
				}
				
				if(debug && mx > 0 && mx < 639)
				{
					k_itoa(mx,convert,10);
					k_put_draw_text(3,1,"     ",0,0);
					k_put_draw_text(3,1,convert,15,0);
				}
				if(debug && my > 0 && my < 479)
				{
					k_itoa(my,convert,10);
					k_put_draw_text(3,2,"      ",0,0);
					k_put_draw_text(3,2,convert,15,0);
				}
			}
			else if(mb == 2)
			{			
				if(!menuOn)
				{
					//k_itoa(menu->height,convert,10);				
					//k_itoa(((int)kt_tick),convert,10);
					//k_itoa(free(),convert,10);
					//menu = k_vdraw_ui_menu(0,0,640,convert,15,3);
					menu = k_vdraw_ui_menu(0,0,640,10," File  Brush  Color  About",15,3);
					menuOn = 1;
			    }
				dcolor++;
				if(dcolor > 0x0F)
					dcolor = 0x01;
				
				//k_draw_font(32,34,1,dcolor,14,0xFF);
				
				mb = 0;
			}
			else if(mb == 4)
			{
				//k_put_draw_text(2,1,"C256/FOENIX-DRAW L=DRAW R=COLOR[ ] M=CLEAR",15,bcolor);
				//k_draw_font(32,34,1,dcolor,14,0xFF);
				for(i=0;i<480;i++)
				{
					k_fill_line(0,i,639,3);
				}				
			}
			else if(mb == 8)
			{
				if(tx > -1 && ty > -1)
				{
					k_draw_font_at_point(lk,tx,ty,dcolor,14,0x00);	
					tx+=(FONTW);
				}
			}
			//asm sei;
			//FXOS_MOUSE_CTL[0] = 0x00;
			//asm cli;
			
			asm cli;
		}
		else if(mb == 0 && lb > 0)
		{
			asm sei;
			
			if(lb & 2)
			{
				if(ctxMenu!=NULL)
				{
					k_free_context_menu(ctxMenu,15,3);
					ctxMenu = NULL;
				}
				menu = k_vdraw_ui_menu(0,0,640,menuTitle,15,3);
				menuOn = 0;
			}
			lb-=2;	
			
			asm cli;		
		}
		
	}
	
	return;
}






void k_test_bitmap_drawing_org(void)
{
	int bx = 0;
	int by = 0;
	int bw = 0;
	int bh = 0;
	int mx = -1;
	int my = -1;
	int mb = -1;
	long px = 0;
	int lx = -1;
	int ly = -1;
	int lk = -1;
	int tx = -1;
	int ty = -1;
	int i;
	int delay = 500;
	char bExit = 0;
	int pos = 0;
	char dcolor = 15;
	int fcolor = 15;
	int bcolor = 0;
	char FAR convert[16];
	char FAR *pitoa = "                ";
	int mbState = 0;
	HANDLE hWin;
	RECT rect;
	int debug = 0;
	int FAR *pmx = malloc(sizeof(int));
	char FAR *pstr  = (char FAR*)malloc(32);

	unsigned long tick = 0;
	unsigned long ctick = 0;

	memset(convert,0,16);
	memset(pstr,0,32);
	
	
	//FXOS_MOUSE_CTL[0] = 0xFF;
	
	
	k_put_string(1,1,pstr,15,0);
	k_put_string(1,2,"Y:",15,0);
	k_put_string(1,3,"B:",15,0);
	k_put_string(1,4,"K:",15,0);
	k_put_string(1,5,"J:",15,0);
	
	k_put_string(1,6,"M:",15,0);
	
	mbState = 0;
	
	k_put_string(0,0,"k_test_bitmap_drawing",15,0);

	
	rect.x = 5;
	rect.y = 5;
	rect.height = 35;
	rect.width = 45;		
	
	k_create_text_window(&rect,"CONSOLE WINDOW",&hWin);
	
	//k_put_text_window_string(hWin,1,3,"LOADING GRAPHICAL WORKBENCH...",15,0);

	
	pos = 0;
	//for(i=0;i<30;i++)
	while(1)
	{
		#asm
			WAI
		#endasm
		asm sei;
		/*
		k_put_char(3,4,FXOS_KEY_BYTE_0[0],15,0);
		k_put_char(4,4,FXOS_KEY_BYTE_1[0],15,0);
		k_put_char(5,4,FXOS_KEY_BYTE_2[0],15,0);
		
		k_put_char(3,6,(FXOS_MOUSE_BYTE_0[0] & 0x07)+65,15,0);
		if((FXOS_MOUSE_BYTE_0[0] & 0x07) == 1)
		{
			k_put_char(4,6,FXOS_MOUSE_BYTE_X_L[0],15,0);
			k_put_char(5,6,FXOS_MOUSE_BYTE_Y_L[0],15,0);
			dummy2(pmx);
			
			
			k_put_char(3,1,*pmx,15,0);								
			
			//k_put_char(4,1,dummy3(&my),15,0);
			//k_put_char(5,1,dummy3(&my),15,0);
		}
		k_put_font(FXOS_KEY_BYTE_0[0],3,4,15);
		k_put_font(FXOS_KEY_BYTE_1[0],4,4,15);
		k_put_font(FXOS_KEY_BYTE_2[0],5,4,15);
		
		
	   k_put_char(bx+1,by + 4,spinner[pos],15,0);		
	   pos++;
	   k_sleep(&delay);
	   if(pos > 3)
			pos = 0;

		*/
		asm cli;
	}	
		
	
	
	VDMA_CONTROL_REG[0] = VDMA_CTRL_ENABLE;

	*BM_START_ADDY_L = 0x00;
	*BM_START_ADDY_M = 0x00;
	*BM_START_ADDY_H = 0x00;
	*((char FAR*)0xAF1F80) = 0x02;
	
	*BM_X_SIZE_L = 0x80;
	*BM_X_SIZE_H = 0x02;	
	*BM_Y_SIZE_L = 0xE0;
	*BM_Y_SIZE_H = 0x01;	
	
	setColors();
	
	*FG_CHAR_LUT_PTR    = 0x00;
	*BG_CHAR_LUT_PTR    = 0x00;
	*BM_CONTROL_REG 	= 0x08;
	*MASTER_CTRL_REG_L 	= 0x0C;
	
/*
	k_fill_bank(0,0);
	k_fill_bank(1,0);
	k_fill_bank(2,0);
	k_fill_bank(3,0);
	k_fill_bank(4,0);
	k_fill_bank(5,0);

*/
	k_set_border_color(0xAA,0xAA,0xAA);
	
	
	
	k_disable_border();

	//asm sei;	
		for(i=0;i<480;i++)
		{
			k_fill_line(0,i,639,14);
		}				

		k_put_draw_text(2,1,"C256/FOENIX-DRAW L=DRAW R=COLOR[ ] M=CLEAR",15,bcolor);
		k_draw_font(32,34,1,dcolor,14,0xFF);
	//asm cli;
	
	
	while(!bExit)
	{
		mb = 0;
		asm WAI;
		tick++;
		//k_put_font(' ',3,4,0);
		//k_put_font(FXOS_KEY_BYTE_0[0],3,4,15);		
		//k_put_font(' ',4,4,0);
		//k_put_font(FXOS_KEY_BYTE_1[0],4,4,15);
		//k_put_font(' ',5,4,0);
		
		//k_put_font((FXOS_MOUSE_BYTE_0[0] & 0x07)+65,3,6,15);
		//asm sei;	
		//FXOS_MOUSE_CTL[0] = 0x00;
	
		mb = (FXOS_MOUSE_BYTE_0 & 0x07);

		if(FXOS_KEY_BYTE_2!=lk)
		//if((tick - ctick) > 1000L)
		{
			lk = FXOS_KEY_BYTE_2;
			mb = 0x08;
			ctick = tick;
		}
		


		if(mb!=0)
		{
			asm sei;	
			if(mb == 1)
			{
				/*
				k_put_font(' ',4,6,0);
				k_put_font(FXOS_MOUSE_BYTE_X_L[0],4,6,15);
				k_put_font(' ',5,6,0);
				k_put_font(FXOS_MOUSE_BYTE_Y_L[0],5,6,15);
				*/
				//asm sei;
				mx = k_get_mouse_pos_X();
				my = k_get_mouse_pos_Y();
				
				
				if(mx > 0 && mx < 639)
				{
					if(my > 0 && my < 479)
					{

						tx = mx;
						ty = my;

						//px = my * 640L;
						//px+=((long)mx);
						//((char FAR *)BITMAP_BANK_0)[px] = (char)dcolor;
						
						//*(BITMAP_BANK_0 + px) = (char)dcolor;
						k_draw_pixel((long)mx,(long)my,dcolor);
						//lx = mx;
						//ly = my;
					}
				}
				//asm cli;
				
				if(debug && mx > 0 && mx < 639)
				{
					k_itoa(mx,convert,10);
					k_put_draw_text(3,1,"     ",0,0);
					k_put_draw_text(3,1,convert,15,0);
				}
				if(debug && my > 0 && my < 479)
				{
					k_itoa(my,convert,10);
					k_put_draw_text(3,2,"      ",0,0);
					k_put_draw_text(3,2,convert,15,0);
				}
			}
			else if(mb == 2)
			{			
				//asm sei;
				dcolor++;
				if(dcolor > 0x0F)
					dcolor = 0x01;
				
				//k_put_font(' ',0,1,dcolor);
				//k_draw_font(32,0,1,dcolor,14,0xFF);
				k_draw_font(32,34,1,dcolor,14,0xFF);
				
				mb = 0;
				//asm cli;
			}
			else if(mb == 4)
			{
				//asm sei;
				k_put_draw_text(2,1,"C256/FOENIX-DRAW L=DRAW R=COLOR[ ] M=CLEAR",15,bcolor);
				k_draw_font(32,34,1,dcolor,14,0xFF);
				for(i=0;i<480;i++)
				{
					k_fill_line(0,i,639,14);
				}				
				//asm cli;
			}
			else if(mb == 8)
			{
				if(tx > -1 && ty > -1)
				{
					k_draw_font_at_point(lk,tx,ty,dcolor,14,0x00);	
					tx+=(FONTW);
					//lk = -1;
				}
			}
			asm cli;
		}
		//asm cli;
		
		
	}
	
	return;
}




#include "fxdesktop.h"

void TestProc(PFXOSMESSAGE pMsg)
{
	k_debug_string("TestProc Enter\r\n");
	return;
}

void k_start_desktop(void)
{
	char bg[12] = {0x30,0x40,0x50,0x60,0x70,0x80,0xA0,0xB0,0xC0,0xD0,0xE0,0xF0};
	int delay = 0;
	char fcolor = 0x01;
	char dcolor = 0x01;
	int i = 0;
	int offset = 0;
	char c = 0;
	char color = 0;
	int x = 0;
	int y = 200;
	int index = 0;
	int pixelLocation = 0;
	long bankAddress = 0L;
	//char bf = 0;
	//char bc = 0;
	//int bx = 0;
	//int by = 0;
	long fill = 0L;
	int mx = 0;
	int my = 0;
	int zx = 0;
	char vfill = 0;
	volatile unsigned char * videoBank = NULL;

	int bx = 5;
	int by = 5;
	int bh = 35;
	int bw = 45;
	int pos = 0;

	k_init_keyboard();
	k_uart_enableirq_ports();

	k_debug_string("**********************************\r\n");
	k_debug_string("******   k_start_desktop   *******\r\n");
	k_debug_string("**********************************\r\n");

	k_getevents(TestProc);

	k_create_window(bx,by,bw,bh,"CONSOLE WINDOW");

	k_put_string(bx+1,by + 3,"LOADING GRAPHICAL WORKBENCH...",15,0);

	pos = 0;
	for(i=0;i<30;i++)
	{
	   k_put_char(bx+1,by + 4,spinner[pos],15,0);
	   k_delay(500);
	   pos++;
	   if(pos > 3)
			pos = 0;
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

	*FG_CHAR_LUT_PTR    = 0x00;
	*BG_CHAR_LUT_PTR    = 0x00;
	*BM_CONTROL_REG 	= 0x08;
	*MASTER_CTRL_REG_L 	= 0x0C;

	k_set_border_color(0xAA,0xAA,0xAA);

	setColors();
	
	k_disable_border();
	
	while(1)
	{
		offset = 0;


		k_fill_bank(0,dcolor + 0);
		k_fill_bank(1,dcolor + 1);
		k_fill_bank(2,dcolor + 2);
		k_fill_bank(3,dcolor + 3);
		k_fill_bank(4,dcolor + 4);
		k_fill_bank(5,dcolor + 5);



		for(fill=0x0000;fill<=0xFFFF;fill++)
		{
			((unsigned char FAR *)BITMAP_BANK_0)[fill] = (char)dcolor + 0;

			((unsigned char FAR *)BITMAP_BANK_1)[fill] = (char)dcolor + 1;

			((unsigned char FAR *)BITMAP_BANK_2)[fill] = (char)dcolor + 2;

			((unsigned char FAR *)BITMAP_BANK_3)[fill] = (char)dcolor + 3;

			((unsigned char FAR *)BITMAP_BANK_4)[fill] = (char)dcolor + 4;

			((unsigned char FAR *)BITMAP_BANK_5)[fill] = (char)dcolor + 5;
		}

		for(fill=0x0000;fill<=0xFFFF;fill++)
		{
			((unsigned char FAR *)BITMAP_BANK_0)[fill] = (char)0;

			((unsigned char FAR *)BITMAP_BANK_1)[fill] = (char)0;

			((unsigned char FAR *)BITMAP_BANK_2)[fill] = (char)0;

			((unsigned char FAR *)BITMAP_BANK_3)[fill] = (char)0;

			((unsigned char FAR *)BITMAP_BANK_4)[fill] = (char)0;

			((unsigned char FAR *)BITMAP_BANK_5)[fill] = (char)0;
		}


		k_vdma_fill_rect(0,0,639,479,0x03);
		k_delay(1000);

		k_draw_text("TEST 2D VDMA",1,1,15);
		for(zx=0;zx<10;zx++)
		{
			for(vfill=1;vfill<15;vfill++)
			{
				//k_vdma_fill_rect((char FAR *)0x019060,100,100,vfill);
				k_vdma_fill_rect(25,25,50,50,vfill);
				k_vdma_fill_rect(100,100,100,100,vfill);
				k_vdma_fill_rect(300,50,200,100,vfill);

				k_delay(100);
				//k_draw_text("VDMA...",1,1,15);
			}
		}

		k_vdma_fill_rect(0,0,639,479,0x04);
		k_delay(1000);
		k_draw_text("TEST SCALED FONTS...",1,1,15);
		//k_draw_char_scaled_point(0x01,10,10,15,1);
		k_draw_char_scaled_point(0x01,20,20,15,2);
		k_draw_char_scaled_point(0x01,30,30,15,3);
		k_draw_char_scaled_point(0x01,45,45,15,4);
		k_draw_char_scaled_point(0x01,70,70,15,5);
		k_draw_char_scaled_point(0x01,100,100,15,6);

		k_delay(1500);

		k_vdma_fill_rect(0,0,639,479,0x04);
		k_delay(1000);
		k_draw_text("TEST ICONS...",1,1,15);
		k_put_winicon_point(ICON_DISK,15,20,0,PAINTMODE_DEFAULT);
		k_put_winicon_point(ICON_TRASH,35,20,1,PAINTMODE_DEFAULT);
		k_put_winicon_point(ICON_CABINET,55,20,2,PAINTMODE_DEFAULT);

		k_put_winicon_scaled(ICON_DISK,75,20,0,PAINTMODE_DEFAULT,2);
		k_put_winicon_scaled(ICON_TRASH,115,20,0,PAINTMODE_DEFAULT,2);
		k_put_winicon_scaled(ICON_CABINET,150,20,0,PAINTMODE_DEFAULT,2);

		k_set_foreground_palette(0);

		k_delay(2000);
		k_vdma_fill_rect(0,0,639,479,0x00);
		k_delay(1000);

		k_render_bitmap_info(fcolor);

		k_delay(5500);
		// clear screen the old way
		for(y=0;y<480;y++)
		{
			k_fill_line(0,y,639,14);
		}
		k_draw_text("INITIALIZING WORKBENCH.  PLEASE WAIT...",1,1,15);

		k_delay(5500);
		// clear screen the old way
		for(y=0;y<480;y++)
		{
			k_fill_line(0,y,639,14);
		}

		k_vdraw_ui_menu(0,0,639,10,"C256 Foenix Workbench - Free Memory: 1792K Video Memory: 4096K",15,3);

		//FX-Basic
		k_put_winicon_point(ICON_DISK,640 - 40,20,0,PAINTMODE_DEFAULT);
		k_draw_text_point("FX-BASIC",640 - 35 - (8*4),40,0);

		//Projects
		k_put_winicon_point(ICON_CABINET,640 - 40,55,2,PAINTMODE_DEFAULT);
		k_draw_text_point("PROJECTS",640 - 35 - (8*4),75,0);

		//Shredder
		k_put_winicon_point(ICON_TRASH,640 - 40,450,1,PAINTMODE_DEFAULT);
		k_draw_text_point("SHREDDER",640 - 35 - (8*4),470,0);

		k_delay(2500);
		k_vdraw_ui_window(NULL,25,25,200,200,"FXBasic 1",15,3);
		k_delay(2500);
		k_vdraw_ui_window(NULL,150,200,200,400,"FXBasic 2",15,3);
		k_delay(2500);
		k_vdraw_ui_window(NULL,275,220,150,350,"FXBasic 3",15,3);


		k_delay(6000);

		k_vdma_fill_rect(25,25,200,200,14);
		k_vdraw_ui_window(NULL,150,200,200,400,"FXBasic 2",15,3);
		k_vdraw_ui_window(NULL,275,220,150,350,"FXBasic 3",15,3);

		k_delay(9500);
		k_vdraw_ui_menu(0,0,639,10,"  File  Edit  Help",15,3);
		k_delay(2500);
		k_vdraw_ui_menu(0,0,639,10,"C256 Foenix Workbench - Free Memory: 1792K Video Memory: 4096K",15,3);
		k_delay(2500);
		k_vdraw_ui_menu(0,0,639,10,"  File  Edit  Help",15,3);
		k_delay(2500);
		k_vdraw_ui_menu(0,0,639,10,"C256 Foenix Workbench - Free Memory: 1792K Video Memory: 4096K",15,3);


		k_delay(2500);
		k_vdraw_ui_window(NULL,275,220,150,350,"FXBasic 3",15,3);
		k_vdraw_ui_window(NULL,150,200,200,400,"FXBasic 2",15,3);
		k_delay(2500);

		k_vdraw_ui_window(NULL,150,200,200,400,"FXBasic 2",15,3);
		k_vdraw_ui_window(NULL,275,220,150,350,"FXBasic 3",15,3);

		k_delay(2500);
		k_vdraw_ui_window(NULL,275,220,150,350,"FXBasic 3",15,3);
		k_vdraw_ui_window(NULL,150,200,200,400,"FXBasic 2",15,3);



		k_delay(9500);

		// clear screen the old way
		for(y=0;y<480;y++)
		{
			k_fill_line(0,y,639,14);
		}
		k_draw_text("RESTARTING...",1,1,15);
		k_delay(5500);
	}
	
	return;
}

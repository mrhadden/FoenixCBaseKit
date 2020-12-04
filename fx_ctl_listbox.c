#include "fxwindowmanager.h"
#include "fxfont.h"

LPCHAR listtext[] =
{
"List Item 1",
"List Item 2",
"List Item 3",
"List Item 4",
"List Item 5",
"List Item 6",
"List Item 7",
"List Item 8",
"List Item 9",
"List Item 10",
"List Item 11",
"List Item 12",
"List Item 13",
"List Item 14",
"List Item 15",
"List Item 16",
"List Item 17",
"List Item 18",
"List Item 19",
"List Item 20",
"List Item 21",
"List Item 22",
"List Item 23",
"List Item 24",
"List Item 25",
"List Item 26",
"List Item 27",
"List Item 28",
"List Item 29",
"List Item 30",
NULL,
};



BOOL listboxWindowProc(PFXOSMESSAGE pMsg)
{
	UINT i;
	RECT r;
	PFXPROCESS p = NULL;
	PWINDOW pWin = NULL;
	UCHAR buffer[16];
	LPCHAR listItem;
	PLISTBOX listbox = NULL;
	HWND hWnd;
	INT cMenu;
	LPCSTR pFont;

	if(pMsg!=NULL)
	{
		p = k_exec_get_current_process();
		pWin = k_getWindowFromHandle(pMsg->hwnd);
		hWnd = k_getHandleFromWindow(pWin);
		listbox = pWin->windowData;
		cMenu = k_getUIMenuColor();


		switch(pMsg->type)
		{
		case FX_CREATE_WINDOW:
			if(p)
			{
				k_debug_long("listboxWindowProc::FX_CREATE_WINDOW:",p->procId);
				listbox = pWin->windowData = k_mem_allocate_heap(sizeof(LISTBOX));
				memset(listbox,0,sizeof(LISTBOX));

				listbox->data = listtext;
				listbox->fontSet = (LPCHAR)k_user_getFontClass("ToshibaLCD8x8");
				listbox->offsetY = 0;

				listbox->maxItems = 30;


				listbox->indexTop 	 = 0;
				listbox->indexBottom = 19;

				/*
	int			pos;
	UINT		selected;
	int 		offsetX;
	int 		offsetY;
	int 		inc;
	int 		direction;
	int 		top;
	int 		bottom;
	int			indexTop;
	int			indexBottom;
	LPVOID  	data;

				 */

				k_user_CreateVerticalScrollBar(pWin,"",1);
				//k_debug_integer("testWindowProc::MessageId:",pMsg->type);
			}
			break;
		case FX_DRAW_WINDOW:
			k_debug_string("listboxWindowProc::FX_DRAW_WINDOW\r\n");

			//pFont = (LPCSTR)k_user_getFontClass("ToshibaLCD8x8");

			r.x = 1;
			r.y = 1;

			k_vdma_fill_rect(pWin->win_x + 2,
					         pWin->win_y + 1,
							 pWin->win_width - k_user_getSystemMetric(SM_CXVSCROLL) -  (k_user_getSystemMetric(SM_CXBORDER) * 2) - 2,
							 pWin->win_height - 1,
							 k_getUIBackgroundColor()
							 //3
							 );

			for(i=listbox->pos;i<listbox->maxItems;i++)
			{
				listItem = ((LPCHAR*)listbox->data)[i];//k_string_append_integer("List Item #", i);

				if(listItem)
				{
					k_user_DrawWindowTextToPointWithFont(hWnd,
														 listItem,
														 cMenu,
														 &r,
														 listbox->fontSet);
					//k_debug_integer("listboxWindowProc:x:",r.x);
				//	k_debug_integer("listboxWindowProc:y:",r.y);
					//k_debug_integer("listboxWindowProc:w:",r.width);
					//k_debug_integer("listboxWindowProc:h:",r.height);
					r.y += 10;

					if(r.y > pWin->win_height)
						break;
					//k_mem_deallocate_heap(listItem);
				}
			}


			//k_vdma_fill_rect(100,100,100,50,4);
			break;
		case FX_SCROLLBAR_COMMAND:
			//k_debug_integer("listboxWindowProc::FX_SCROLLBAR_COMMAND:", ((PFXCMDMESSAGE)pMsg)->cmdCId );
			if(((PFXCMDMESSAGE)pMsg)->cmdCId == CTL_VERT_SCROLL )
			{
				//k_debug_integer("listboxWindowProc::FX_SCROLLBAR_COMMAND:LOCATION:", ((PFXCMDMESSAGE)pMsg)->cmdMId );
				//k_debug_integer("listboxWindowProc::FX_SCROLLBAR_COMMAND:VALUE:", ((PFXCMDMESSAGE)pMsg)->parameter1);
				//k_debug_integer("listboxWindowProc::FX_SCROLLBAR_COMMAND:DIRECTION:", ((PFXCMDMESSAGE)pMsg)->parameter2);

				if(((PFXCMDMESSAGE)pMsg)->parameter2)
				{
					listbox->offsetY+=10;
					listbox->indexTop++;
					listbox->indexBottom++;

					if(listbox->indexBottom > listbox->maxItems - 1)
					{
						listbox->indexBottom = (listbox->maxItems - 1);
						k_debug_integer("listboxWindowProc::FX_SCROLLBAR_COMMAND:BOUND listbox->indexBottom:", listbox->indexBottom);
						break;
					}

					k_memory_bitblt(SHADOW_BANK_0,
							        pWin->win_x + 2,
							        //pWin->win_y + listbox->offsetY,
									pWin->win_y + 11,
									//pWin->win_width - k_user_getSystemMetric(SM_CXVSCROLL),
									pWin->win_width - k_user_getSystemMetric(SM_CXVSCROLL) -  (k_user_getSystemMetric(SM_CXBORDER) * 2) - 2,
									pWin->win_height - 11 - 2,
							        BITMAP_BANK_0,
									pWin->win_x + 2,
									pWin->win_y + 1, BLT_DIR_TOPDOWN);


					k_memory_bitblt(SHADOW_BANK_0,
									pWin->win_x + 2,
									//pWin->win_y + listbox->offsetY,
									pWin->win_y + 11,
									//pWin->win_width - k_user_getSystemMetric(SM_CXVSCROLL),
									pWin->win_width - k_user_getSystemMetric(SM_CXVSCROLL) -  (k_user_getSystemMetric(SM_CXBORDER) * 2) - 2,
									pWin->win_height - 11 - 2,
									SHADOW_BANK_0,
									pWin->win_x + 2,
									pWin->win_y + 1, BLT_DIR_TOPDOWN);

				}
				else
				{

					listbox->offsetY-=10;
					if(listbox->offsetY < 0)
						listbox->offsetY = 0;

					listbox->indexTop--;
					listbox->indexBottom--;

					if(listbox->indexTop < 0)
					{
						listbox->indexTop = 0;
						k_debug_integer("listboxWindowProc::FX_SCROLLBAR_COMMAND:BOUND listbox->indexTop:", listbox->indexTop);
						break;
					}

					k_memory_bitblt(SHADOW_BANK_0,
							        pWin->win_x + 2,
									pWin->win_y + 1,
									//pWin->win_width - k_user_getSystemMetric(SM_CXVSCROLL),
									pWin->win_width - k_user_getSystemMetric(SM_CXVSCROLL) -  (k_user_getSystemMetric(SM_CXBORDER) * 2) - 2,
									//pWin->win_height - 10 - 1,
									pWin->win_height - 11 - 2,
							        BITMAP_BANK_0,
									pWin->win_x + 2,
									pWin->win_y + 11,
									BLT_DIR_TOPDOWN);


					k_memory_bitblt(SHADOW_BANK_0,
									pWin->win_x + 2,
									pWin->win_y + 1,
									//pWin->win_width - k_user_getSystemMetric(SM_CXVSCROLL),
									pWin->win_width - k_user_getSystemMetric(SM_CXVSCROLL) -  (k_user_getSystemMetric(SM_CXBORDER) * 2) - 2,
									//pWin->win_height - 10 - 2,
									pWin->win_height - 11 - 2,
									SHADOW_BANK_0,
									pWin->win_x + 2,
									pWin->win_y + 11,
									BLT_DIR_BOTTOMUP);

				}



				if(((PFXCMDMESSAGE)pMsg)->parameter2)
				{
					r.x = 1;
					r.y = (19 * 10) + 1;

					k_user_DrawWindowTextToPointWithFont(hWnd,
														 "\xDB\xDB\xDB\xDB\xDB\xDB\xDB\xDB\xDB\xDB\xDB\xDB\xDB\xDB\xDB",
														 k_getUIBackgroundColor(),
														 &r,
														 (LPCSTR)k_user_getFontClass("TINYTYPE8x8"));
					r.x = 1;
					r.y = (19 * 10) + 1;

					k_user_DrawWindowTextToPointWithFont(hWnd,
														 ((LPCHAR*)listbox->data)[listbox->indexBottom],
														 cMenu,
														 &r,
														 listbox->fontSet);

				}
				else
				{

					r.x = 1;
					r.y = 1;

					k_user_DrawWindowTextToPointWithFont(hWnd,
														 "\xDB\xDB\xDB\xDB\xDB\xDB\xDB\xDB\xDB\xDB\xDB\xDB\xDB\xDB\xDB",
														 k_getUIBackgroundColor(),
														 &r,
														 (LPCSTR)k_user_getFontClass("TINYTYPE8x8"));

					r.x = 1;
					r.y = 1;
					k_user_DrawWindowTextToPointWithFont(hWnd,
														 listItem = ((LPCHAR*)listbox->data)[listbox->indexTop],
														 cMenu,
														 &r,
														 listbox->fontSet);

				}

				/*
				k_vdma_fill_rect(400,50,pWin->win_width,pWin->win_height,k_getUIBackgroundColor());
				k_memory_bitblt(SHADOW_BANK_0,
						        pWin->win_x + 2,
						        //pWin->win_y + listbox->offsetY,
								pWin->win_y + 1,
								pWin->win_width - 10 ,
								pWin->win_height,
						        BITMAP_BANK_0,
								400,50,BLT_DIR_TOPDOWN);
				*/

			}
			break;

		case FX_KEY_DOWN:
			if(pMsg->data[0] == 80)
			{
				k_debug_integer("listboxWindowProc::FX_KEY_DOWN:ARROWUP:",pMsg->data[0]);
				listbox->pos++;
				if(listbox->pos > 29)
					listbox->pos = 29;
				k_send_window_message(k_getHandleFromWindow(pWin),FX_DRAW_WINDOW,0,0);
			}
			else if(pMsg->data[0] == 72)
			{
				k_debug_integer("listboxWindowProc::FX_KEY_DOWN:ARROWDOWN:",pMsg->data[0]);
				listbox->pos--;
				if(listbox->pos < 0)
					listbox->pos = 0;
				k_send_window_message(k_getHandleFromWindow(pWin),FX_DRAW_WINDOW,0,0);
			}
			break;
		case FX_MBUTTON_DOWN:
			if(pMsg->type!=FX_PROCESS)
			{
				//k_debug_integer("consoleWindowProc::ProcessId:",p->procId);
				k_debug_string("testWindowProc::FX_MBUTTON_DOWN\r\n");
			}

			break;
		default:
			DefWindowProc(pMsg);
			break;
		}
	}

	return TRUE;
}

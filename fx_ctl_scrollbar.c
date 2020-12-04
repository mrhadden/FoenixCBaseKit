#include "fxwindowmanager.h"
#include "fxfont.h"

VOID processSBCommand(PWINDOW pWin, UINT cmdCId,UINT cmdMId,ULONG parameter1);


PWINDOW	k_user_CreateVerticalScrollBar(HWND hWndParent,LPCSTR caption,UINT buttonId)
{
	PWINDOW pWin = NULL;
	PWINDOW pParent = NULL;

	int x;
	int y;
	int width;
	int height;



	pParent = k_getWindowFromHandle(hWndParent);

	width = k_user_getSystemMetric(SM_CXVSCROLL);

	if(pParent->style & FXWS_THICKFRAME)
	{
		//k_debug_integer("k_user_CreateVertScrollBar:SM_CXFRAME:" , k_user_getSystemMetric(SM_CXFRAME) );
		x = pParent->win_width - width - k_user_getSystemMetric(SM_CXFRAME) ;// + 2;
	}
	else if(pParent->style & FXWS_BORDER)
	{
		//k_debug_integer("k_user_CreateVertScrollBar:FXWS_BORDER:" , k_user_getSystemMetric(SM_CXBORDER) );
		x = pParent->win_width - width - k_user_getSystemMetric(SM_CXBORDER);// + 2;
	}
	else
	{
		//k_debug_integer("k_user_CreateVertScrollBar:SM_CXBORDER:" , k_user_getSystemMetric(SM_CXBORDER) );
		x = pParent->win_width - width -  k_user_getSystemMetric(SM_CXBORDER) ;
	}

	if(pParent->style & FXWS_THICKFRAME)
		y = k_user_getSystemMetric(SM_CYFRAME);// + 2;
	else if(pParent->style & FXWS_BORDER)
		y = k_user_getSystemMetric(SM_CYBORDER);// + 2;
	else
		y = FONTH + 2;

	if(pParent->style & FXWS_CAPTION)
		y = k_user_getSystemMetric(SM_CYSMCAPTION);


	height = pParent->win_height - y;

	if(pParent->style & FXWS_THICKFRAME)
		height -=  k_user_getSystemMetric(SM_CXFRAME);// + 2;
	else if(pParent->style & FXWS_BORDER)
		height -= k_user_getSystemMetric(SM_CYBORDER);// + 2;
	else
		height -= k_user_getSystemMetric(SM_CYBORDER);


	/*
	//y = FONTH + 2;
	height = pParent->win_height - FONTH - k_user_getSystemMetric(SM_CYBORDER)*2 - 1;
	//height = pParent->win_height;
	*/

	k_debug_integer("k_user_CreateVertScrollBar:cx:",x);
	k_debug_integer("k_user_CreateVertScrollBar:cy:",y);
	k_debug_integer("k_user_CreateVertScrollBar:width:",width);
	k_debug_integer("k_user_CreateVertScrollBar:height:",height);

	k_debug_integer("k_user_CreateVertScrollBar:k_user_getSystemMetric(SM_CXVSCROLL):",k_user_getSystemMetric(SM_CXVSCROLL));


	pWin = k_user_CreateWindow(FXWS_BORDER | FXWS_VISIBLE | FXWS_PARENT_HEIGHT,
							   "vscrollWindowClass",
								caption,
								x,y,
								width,height,
								hWndParent,
								(HMENU)buttonId,
								NULL);

	if(pWin)
	{
		k_send_window_message(k_getHandleFromWindow(pWin),FX_CREATE_WINDOW,NULL,0);
	}

	return pWin;
}

BOOL vscrollbarWindowProc(PFXOSMESSAGE pMsg)
{
	HWND hWnd = NULL;
	PFXPROCESS p = NULL;
	PWINDOW	   pWin = NULL;
	PSCROLLBAR	   scrollbar = NULL;
	UINT	   size = 0;
	RECT rect;
	INT cx,cy;

	ULONG direction = 0L;

	INT cMenu;
	INT cGadget;

	LPCSTR pFont = (LPCSTR)k_user_getFontClass("FXOS8x8");

	if(pMsg!=NULL)
	{
		p         = k_exec_get_current_process();
		pWin      = k_getWindowFromHandle(pMsg->hwnd);
		scrollbar = ((PSCROLLBAR)pWin->windowData);
		hWnd  	  = k_getHandleFromWindow(pWin);
		//k_debug_long("consoleWindowProc::ProcessId:",p->procId);
		cMenu     = k_getUIMenuColor();
		cGadget   = k_getUIGadgetColor();

		switch(pMsg->type)
		{
		case FX_CREATE_WINDOW:
			//k_debug_long("buttonWindowProc::ProcessId:",p->procId);
			//k_debug_string("buttonWindowProc::FX_CREATE_WINDOW\r\n");

			scrollbar = pWin->windowData = k_mem_allocate_heap(sizeof(SCROLLBAR));


			((PSCROLLBAR)pWin->windowData)->max = 100;
			((PSCROLLBAR)pWin->windowData)->min = 0;
			((PSCROLLBAR)pWin->windowData)->increment = 10;
			((PSCROLLBAR)pWin->windowData)->location = 0;

			((PSCROLLBAR)pWin->windowData)->rectThumb.x = 0;
			((PSCROLLBAR)pWin->windowData)->rectThumb.y = 0;
			((PSCROLLBAR)pWin->windowData)->rectThumb.width = 0;
			((PSCROLLBAR)pWin->windowData)->rectThumb.height = 0;


			((PSCROLLBAR)pWin->windowData)->stopsize = (pWin->win_height - 2*FONTW) / (((PSCROLLBAR)pWin->windowData)->max / ((PSCROLLBAR)pWin->windowData)->increment);

			//
			scrollbar->rectThumb.y =  (scrollbar->stopsize * scrollbar->location) + FONTW;

			if(scrollbar->rectThumb.y > (pWin->win_height - (2*FONTW) -1 ))
				scrollbar->rectThumb.y = (pWin->win_height - (2*FONTW) -1 );


			if(scrollbar->rectThumb.y < FONTW)
				scrollbar->rectThumb.y = FONTW;

			scrollbar->rectThumb.x = 0;

			//

			k_debug_integer("vscrollbarWindowProc::stopsize:",((PSCROLLBAR)pWin->windowData)->stopsize);
			/*
			k_vdraw_ui_window(pWin,
							  pWin->style,
							  pWin->win_x ,pWin->win_y,
							  pWin->win_height,pWin->win_width,
							  pWin->win_title,
							  k_getUIGadgetColor(), k_getUIMenuColor());

			*/
			break;
		case FX_DRAW_WINDOW:
			k_debug_pointer("vscrollbarWindowProc::FX_DRAW_WINDOW:",scrollbar);
			if(scrollbar)
			{
				k_vdraw_ui_window(pWin,pWin->style,
								  pWin->win_x ,pWin->win_y,
								  pWin->win_height,pWin->win_width,
								  pWin->win_title,
								  cGadget,
								  cMenu);


				rect.x = 0;
				rect.y = 0;
				k_user_DrawWindowTextToPointWithFont(hWnd,"\xAF",cMenu,&rect,pFont);
				k_user_DrawWindowTextToPointWithFont(hWnd,"\x9D",cGadget,&rect,pFont);

				rect.x = 0;
				rect.y = pWin->win_height - FONTW - 1;
				k_user_DrawWindowTextToPointWithFont(hWnd,"\xAF",cMenu,&rect,pFont);
				k_user_DrawWindowTextToPointWithFont(hWnd,"\x9E",cGadget,&rect,pFont);

				//rect.x = (pWin->win_width/2) - (FONTW/2);
				//k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\xAF",k_getUIMenuColor(),&scrollbar->rectThumb,(LPCSTR)k_user_getFontClass("FXOS8x8"));

				scrollbar->rectThumb.x = 0;
				scrollbar->rectThumb.y = (scrollbar->stopsize * scrollbar->location) + FONTW;

				k_user_DrawWindowTextToPointWithFont(hWnd,"\xBD",cGadget,&scrollbar->rectThumb,pFont);

			}
			break;
		case FX_REDRAW_WINDOW:
			k_debug_string("vscrollbarWindowProc::FX_REDRAW_WINDOW\r\n");
			break;

		case FX_LBUTTON_DOWN:
			k_debug_string("vscrollbarWindowProc::FX_LBUTTON_DOWN\r\n");


			cy = *((INT*)&pMsg->data[3]) - pWin->win_y;

			if(cy > 0 &&  cy < FONTW)
			{
				k_debug_integer("vscrollbarWindowProc::LEFT ARROW:",cx);
				rect.x = 0;
				rect.y = 0;
				k_user_DrawWindowTextToPointWithFont(hWnd,"\xAF",cMenu,&rect,pFont);
				k_user_DrawWindowTextToPointWithFont(hWnd,"\xB2",cGadget,&rect,pFont);
				scrollbar->location--;
				if(scrollbar->location < 0)
					scrollbar->location = 0;

				direction = 0L;
			}
			else if(cy > (pWin->win_height - FONTW) &&  cy < (pWin->win_height))
			{
				k_debug_integer("vscrollbarWindowProc::RIGHT ARROW:",cx);
				rect.x = 0;
				rect.y = pWin->win_height - FONTW - 1;
				k_user_DrawWindowTextToPointWithFont(hWnd,"\xAF",cMenu,&rect,pFont);
				k_user_DrawWindowTextToPointWithFont(hWnd,"\xB3",cGadget,&rect,pFont);
				scrollbar->location++;
				if(scrollbar->location > (scrollbar->increment ))
					scrollbar->location =  scrollbar->increment;

				direction = 1L;
			}

			k_user_DrawWindowTextToPointWithFont(hWnd,"\xAF",cMenu,&scrollbar->rectThumb,pFont);

			scrollbar->rectThumb.y =  (scrollbar->stopsize * scrollbar->location) + FONTW;

			if(scrollbar->rectThumb.y > (pWin->win_height - (2*FONTW) -1 ))
				scrollbar->rectThumb.y = (pWin->win_height - (2*FONTW) -1 );


			if(scrollbar->rectThumb.y < FONTW)
				scrollbar->rectThumb.y = FONTW;

			scrollbar->rectThumb.x = 0;


			k_debug_integer("vscrollbarWindowProc::pWin->win_height:",pWin->win_height);
			k_debug_integer("vscrollbarWindowProc::scrollbar->rectThumb.x:",scrollbar->rectThumb.x);
			k_debug_integer("vscrollbarWindowProc::location:",scrollbar->location);
			k_debug_integer("vscrollbarWindowProc::increment:",scrollbar->increment);
			k_debug_integer("vscrollbarWindowProc::offset:",scrollbar->rectThumb.x);

			k_user_DrawWindowTextToPointWithFont(hWnd,"\xBD",cGadget,&scrollbar->rectThumb,pFont);


			//k_debug_strings("hscrollbarWindowProc::send parent:",k_getWindowFromHandle(pWin->pParentWindow)->win_title);
			k_send_command_message(pWin->pParentWindow,FX_SCROLLBAR_COMMAND,CTL_VERT_SCROLL,scrollbar->location,scrollbar->location*scrollbar->increment,direction);


			break;

		case FX_LBUTTON_UP:
			k_debug_string("vscrollbarWindowProc::FX_LBUTTON_UP\r\n");

			rect.x = 0;
			rect.y = 0;
			k_user_DrawWindowTextToPointWithFont(hWnd,"\xAF",cMenu,&rect,pFont);
			k_user_DrawWindowTextToPointWithFont(hWnd,"\x9D",cGadget,&rect,pFont);

			rect.x = 0;
			rect.y = pWin->win_height - FONTW - 1;
			k_user_DrawWindowTextToPointWithFont(hWnd,"\xAF",cMenu,&rect,pFont);
			k_user_DrawWindowTextToPointWithFont(hWnd,"\x9E",cGadget,&rect,pFont);

			k_send_command_message(pWin->pParentWindow,FX_CONTROL_COMMAND,CTL_BUTTON_SELECTED,LOWORD((ULONG)pWin->hMenu),0L,0L);

			break;
		case FX_MOUSE_ENTER:
			k_debug_string("vscrollbarWindowProc::FX_MOUSE_ENTER\r\n");

			break;
		case FX_MOUSE_EXIT:
			k_debug_string("vscrollbarWindowProc::FX_MOUSE_EXIT\r\n");

			/*
			rect.x = 0;
			rect.y = 0;
			k_user_DrawWindowTextToPointWithFont(hWnd,"\xAF",cMenu,&rect,pFont);
			k_user_DrawWindowTextToPointWithFont(hWnd,"\x9D",cGadget,&rect,pFont);

			rect.x = 0;
			rect.y = pWin->win_height - FONTW - 1;
			k_user_DrawWindowTextToPointWithFont(hWnd,"\xAF",cMenu,&rect,pFont);
			k_user_DrawWindowTextToPointWithFont(hWnd,"\x9E",cGadget,&rect,pFont);

			*/

			break;
		case FX_MOUSE_MOVE:
			break;
		case FX_CONTROL_COMMAND:
			break;

		case FX_SCROLLBAR_COMMAND:
			k_debug_string("vscrollbarWindowProc::FX_CONTROL_COMMAND\r\n");

			processSBCommand(pWin,((PFXCMDMESSAGE)pMsg)->cmdCId,((PFXCMDMESSAGE)pMsg)->cmdMId,((PFXCMDMESSAGE)pMsg)->parameter1);

			break;
		default:
			DefWindowProc(pMsg);
			break;
		}
	}

	return TRUE;
}

PWINDOW	k_user_CreateHorizontalScrollbar(HWND hWndParent,LPCSTR caption,UINT buttonId)
{
	PWINDOW pWin = NULL;
	PWINDOW pParent = NULL;

	int x;
	int y;
	int width;
	int height;

	pParent = k_getWindowFromHandle(hWndParent);


	x = 0;
	width = pParent->win_width;


	height = k_user_getSystemMetric(SM_CYHSCROLL);
	y = pParent->win_height - height;




	k_debug_integer("k_user_CreateHorizontalScrollbar:cx:",x);
	k_debug_integer("k_user_CreateHorizontalScrollbar:cy:",y);
	k_debug_integer("k_user_CreateHorizontalScrollbar:width:",width);
	k_debug_integer("k_user_CreateHorizontalScrollbar:height:",height);

	pWin = k_user_CreateWindow(FXWS_VISIBLE,
							   "hscrollWindowClass",
								caption,
								x,y,
								width,height,
								hWndParent,
								(HMENU)buttonId,
								NULL);

	if(pWin)
	{
		//k_add_child_window(k_getWindowFromHandle(hWndParent),pWin,k_update_hover_location);//k_buttonHitDetected);

		//k_debug_strings("k_user_CreateButton:","k_send_window_message");
		k_send_window_message(k_getHandleFromWindow(pWin),FX_CREATE_WINDOW,NULL,0);
		//k_debug_strings("k_user_CreateButton:","k_send_command_message");
		//k_send_command_message(k_getHandleFromWindow(pWin),FX_CONTROL_COMMAND,CTL_CMD_CAPTION,0,(ULONG)k_string_copy_string(caption),0L);

	}

	//k_debug_strings("k_user_CreateButton:","Exit");

	return pWin;
}

BOOL hscrollbarWindowProc(PFXOSMESSAGE pMsg)
{
	PFXPROCESS p = NULL;
	PWINDOW	   pWin = NULL;
	PSCROLLBAR	   scrollbar = NULL;
	UINT	   size = 0;
	RECT rect;
	INT cx,cy;

	if(pMsg!=NULL)
	{
		p = k_exec_get_current_process();
		pWin = k_getWindowFromHandle(pMsg->hwnd);
		scrollbar = ((PSCROLLBAR)pWin->windowData);
		//k_debug_long("consoleWindowProc::ProcessId:",p->procId);

		switch(pMsg->type)
		{
		case FX_CREATE_WINDOW:
			//k_debug_long("buttonWindowProc::ProcessId:",p->procId);
			//k_debug_string("buttonWindowProc::FX_CREATE_WINDOW\r\n");

			pWin->windowData = k_mem_allocate_heap(sizeof(SCROLLBAR));


			((PSCROLLBAR)pWin->windowData)->max = 100;
			((PSCROLLBAR)pWin->windowData)->min = 0;
			((PSCROLLBAR)pWin->windowData)->increment = 10;
			((PSCROLLBAR)pWin->windowData)->location = 0;


			((PSCROLLBAR)pWin->windowData)->rectThumb.x = 0;
			((PSCROLLBAR)pWin->windowData)->rectThumb.y = 0;
			((PSCROLLBAR)pWin->windowData)->rectThumb.width = 0;
			((PSCROLLBAR)pWin->windowData)->rectThumb.height = 0;


			((PSCROLLBAR)pWin->windowData)->stopsize = (pWin->win_width - 2*FONTW) / (((PSCROLLBAR)pWin->windowData)->max / ((PSCROLLBAR)pWin->windowData)->increment);

			k_debug_integer("hscrollbarWindowProc::stopsize:",((PSCROLLBAR)pWin->windowData)->stopsize);
			/*
			k_vdraw_ui_window(pWin,
							  pWin->style,
							  pWin->win_x ,pWin->win_y,
							  pWin->win_height,pWin->win_width,
							  pWin->win_title,
							  k_getUIGadgetColor(), k_getUIMenuColor());

			*/
			break;
		case FX_DRAW_WINDOW:
			k_debug_pointer("hscrollbarWindowProc::FX_DRAW_WINDOW:",scrollbar);
			if(scrollbar)
			{
				k_vdraw_ui_window(pWin,pWin->style,
								  pWin->win_x ,pWin->win_y,
								  pWin->win_height,pWin->win_width,
								  pWin->win_title,
								  k_getUIGadgetColor(), k_getUIMenuColor());


				rect.x = 0;
				rect.y = 1;
				k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\xAF",k_getUIMenuColor(),&rect,(LPCSTR)k_user_getFontClass("FXOS8x8"));
				k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\x9B",k_getUIGadgetColor(),&rect,(LPCSTR)k_user_getFontClass("FXOS8x8"));

				rect.x = pWin->win_width - FONTW - 1;
				rect.y = 1;
				k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\xAF",k_getUIMenuColor(),&rect,(LPCSTR)k_user_getFontClass("FXOS8x8"));
				k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\x9C",k_getUIGadgetColor(),&rect,(LPCSTR)k_user_getFontClass("FXOS8x8"));

				//rect.x = (pWin->win_width/2) - (FONTW/2);
				//k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\xAF",k_getUIMenuColor(),&scrollbar->rectThumb,(LPCSTR)k_user_getFontClass("FXOS8x8"));

				scrollbar->rectThumb.x =  (scrollbar->stopsize * scrollbar->location) + FONTW;
				scrollbar->rectThumb.y = 1;

				k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\xBD",k_getUIGadgetColor(),&scrollbar->rectThumb,(LPCSTR)k_user_getFontClass("FXOS8x8"));


			}
			break;
		case FX_REDRAW_WINDOW:
			k_debug_string("hscrollbarWindowProc::FX_REDRAW_WINDOW\r\n");
			break;

		case FX_LBUTTON_DOWN:
			k_debug_string("hscrollbarWindowProc::FX_LBUTTON_DOWN\r\n");


			cx = *((INT*)&pMsg->data[1]) - pWin->win_x;

			if(cx > 0 &&  cx < FONTW)
			{
				k_debug_integer("hscrollbarWindowProc::LEFT ARROW:",cx);
				rect.x = 0;
				rect.y = 1;
				k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\xAF",k_getUIMenuColor(),&rect,(LPCSTR)k_user_getFontClass("FXOS8x8"));
				k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\xB0",k_getUIGadgetColor(),&rect,(LPCSTR)k_user_getFontClass("FXOS8x8"));
				scrollbar->location--;
				if(scrollbar->location < 0)
					scrollbar->location = 0;

			}
			else if(cx > (pWin->win_width - FONTW) &&  cx < (pWin->win_width))
			{
				k_debug_integer("hscrollbarWindowProc::RIGHT ARROW:",cx);
				rect.x = pWin->win_width - FONTW - 1;
				rect.y = 1;
				k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\xAF",k_getUIMenuColor(),&rect,(LPCSTR)k_user_getFontClass("FXOS8x8"));
				k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\xB1",k_getUIGadgetColor(),&rect,(LPCSTR)k_user_getFontClass("FXOS8x8"));
				scrollbar->location++;
				if(scrollbar->location > (scrollbar->increment ))
					scrollbar->location =  scrollbar->increment;
			}

			k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\xAF",k_getUIMenuColor(),&scrollbar->rectThumb,(LPCSTR)k_user_getFontClass("FXOS8x8"));

			scrollbar->rectThumb.x =  (scrollbar->stopsize * scrollbar->location) + FONTW;

			if(scrollbar->rectThumb.x > (pWin->win_width - (2*FONTW) -1 ))
				scrollbar->rectThumb.x = (pWin->win_width - (2*FONTW) -1 );


			if(scrollbar->rectThumb.x < FONTW)
				scrollbar->rectThumb.x = FONTW;

			scrollbar->rectThumb.y = 1;


			k_debug_integer("hscrollbarWindowProc::pWin->win_width:",pWin->win_width);
			k_debug_integer("hscrollbarWindowProc::scrollbar->rectThumb.x:",scrollbar->rectThumb.x);
			k_debug_integer("hscrollbarWindowProc::location:",scrollbar->location);
			k_debug_integer("hscrollbarWindowProc::increment:",scrollbar->increment);
			k_debug_integer("hscrollbarWindowProc::offset:",scrollbar->rectThumb.x);

			k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\xBD",k_getUIGadgetColor(),&scrollbar->rectThumb,(LPCSTR)k_user_getFontClass("FXOS8x8"));


			//k_debug_strings("hscrollbarWindowProc::send parent:",k_getWindowFromHandle(pWin->pParentWindow)->win_title);
			k_send_command_message(pWin->pParentWindow,FX_SCROLLBAR_COMMAND,CTL_HORZ_SCROLL,scrollbar->location,scrollbar->location*scrollbar->increment,0L);


			if(scrollbar)
			{

				//k_debug_strings("buttonWindowProc::CTL_CMD_CAPTION:", (LPCHAR)pButton->pCaption );

				/*
				k_vdraw_ui_window(pWin,pWin->style,
								  pWin->win_x ,pWin->win_y,
								  pWin->win_height,pWin->win_width,
								  pWin->win_title,
								  k_getUIGadgetColor(), k_getUIMenuColor());

				*/
				/*
				k_draw_line(pWin->win_x + 1 ,pWin->win_y + 1,
						    pWin->win_x + 1,
							pWin->win_y + pWin->win_height - 1 , 0);

				k_draw_line(pWin->win_x + 1 ,pWin->win_y + pWin->win_height - 1,
						    pWin->win_x + pWin->win_width - 1,pWin->win_y + pWin->win_height - 1 , 0);

				*/

				/*
				k_draw_line(pWin->win_x + 1 ,
							pWin->win_y + 1,
						    pWin->win_x + pWin->win_width - 1,
							pWin->win_y + 1,
							0);

				k_draw_line(pWin->win_x + 1 ,
							pWin->win_y + 2,
						    pWin->win_x + pWin->win_width - 1,
							pWin->win_y + 2,
							0);


				k_draw_line(pWin->win_x + pWin->win_width  - 1,
							pWin->win_y + 1 ,
						    pWin->win_x + pWin->win_width  - 1,
							pWin->win_y + pWin->win_height - 1,
							0);

				k_draw_line(pWin->win_x + pWin->win_width  - 2,
							pWin->win_y + 1,
						    pWin->win_x + pWin->win_width  - 2,
							pWin->win_y + pWin->win_height - 1,
							0);



				size = strlen(pButton->pCaption) * FONTW;
				k_draw_text_point(pButton->pCaption,
						          pWin->win_x + (pWin->win_width/2)  - (size/2) - 2,
								  pWin->win_y + (pWin->win_height/2) - (4) + 2     , k_getUIGadgetColor()) ;
								  */


				//k_draw_text_point("\x9B",0,0,k_getUIGadgetColor()) ;
				//k_draw_text_point("\x9C",pWin->win_x + (pWin->win_width) - FONTW,0,k_getUIGadgetColor()) ;
			}


			break;

		case FX_LBUTTON_UP:
			k_debug_string("hscrollbarWindowProc::FX_LBUTTON_UP\r\n");

			rect.x = 0;
			rect.y = 1;
			k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\xAF",k_getUIMenuColor(),&rect,(LPCSTR)k_user_getFontClass("FXOS8x8"));
			k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\x9B",k_getUIGadgetColor(),&rect,(LPCSTR)k_user_getFontClass("FXOS8x8"));

			rect.x = pWin->win_width - FONTW - 1;
			rect.y = 1;
			k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\xAF",k_getUIMenuColor(),&rect,(LPCSTR)k_user_getFontClass("FXOS8x8"));
			k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\x9C",k_getUIGadgetColor(),&rect,(LPCSTR)k_user_getFontClass("FXOS8x8"));


			/*
			rect.x = (pWin->win_width/2) - (FONTW/2);
			rect.y = 1;
			k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\xAF",k_getUIMenuColor(),&rect,(LPCSTR)k_user_getFontClass("FXOS8x8"));
			k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\xBD",k_getUIGadgetColor(),&rect,(LPCSTR)k_user_getFontClass("FXOS8x8"));
			*/
			/*
			if(pButton->pCaption)
			{
				//k_debug_strings("buttonWindowProc::CTL_CMD_CAPTION:", (LPCHAR)pButton->pCaption );

				k_vdraw_ui_window(pWin,FXWS_BORDER | FXWS_VISIBLE,
								  pWin->win_x ,pWin->win_y,
								  pWin->win_height,pWin->win_width,
								  pWin->win_title,
								  k_getUIGadgetColor(), k_getUIMenuColor());

				size = strlen(pButton->pCaption) * FONTW;
				k_draw_text_point(pButton->pCaption,
						          pWin->win_x + (pWin->win_width/2)  - (size/2),
								  pWin->win_y + (pWin->win_height/2) - (4),k_getUIGadgetColor());
			}
			*/
			//k_send_command_message(pWin->pParentWindow,FX_CONTROL_COMMAND,LOWORD((ULONG)pWin->hMenu),0,0L,0L);

			k_send_command_message(pWin->pParentWindow,FX_CONTROL_COMMAND,CTL_BUTTON_SELECTED,LOWORD((ULONG)pWin->hMenu),0L,0L);

			break;
		case FX_MOUSE_ENTER:
			k_debug_string("hscrollbarWindowProc::FX_MOUSE_ENTER\r\n");

			break;
		case FX_MOUSE_EXIT:
			k_debug_string("hscrollbarWindowProc::FX_MOUSE_EXIT\r\n");

			rect.x = 0;
			rect.y = 1;
			k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\xAF",k_getUIMenuColor(),&rect,(LPCSTR)k_user_getFontClass("FXOS8x8"));
			k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\x9B",k_getUIGadgetColor(),&rect,(LPCSTR)k_user_getFontClass("FXOS8x8"));

			rect.x = pWin->win_width - FONTW - 1;
			rect.y = 1;
			k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\xAF",k_getUIMenuColor(),&rect,(LPCSTR)k_user_getFontClass("FXOS8x8"));
			k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),"\x9C",k_getUIGadgetColor(),&rect,(LPCSTR)k_user_getFontClass("FXOS8x8"));



			break;
		case FX_MOUSE_MOVE:

			/*
		    cy = *((INT*)&pMsg->data[3]) - pWin->win_y;
			cx = *((INT*)&pMsg->data[1]) - pWin->win_x;

			if(cx > 0 &&  cx < FONTW)
			{
				k_debug_integer("hscrollbarWindowProc::LEFT ARROW:",cx);
			}
			if(cx > (pWin->win_width - FONTW) &&  cx < (pWin->win_width))
			{
				k_debug_integer("hscrollbarWindowProc::RIGHT ARROW:",cx);
			}
			*/

			break;
		case FX_CONTROL_COMMAND:
			//k_debug_string("buttonWindowProc::FX_CONTROL_COMMAND\r\n");


			/*
			if( ((PFXCMDMESSAGE)pMsg)->cmdCId == CTL_CMD_CAPTION )
			{
				pButton->pCaption = (LPCHAR)((PFXCMDMESSAGE)pMsg)->parameter1;

				if(pButton->pCaption)
				{
					//k_debug_strings("buttonWindowProc::CTL_CMD_CAPTION:", (LPCHAR)pButton->pCaption );

					size = strlen(pButton->pCaption) * FONTW;
					k_draw_text_point(pButton->pCaption,
							          pWin->win_x + (pWin->win_width/2)  - (size/2),
									  pWin->win_y + (pWin->win_height/2) - (4),k_getUIGadgetColor());
				}
			}
			*/
			break;
		default:
			break;
		}
	}

	return TRUE;

}

VOID processSBCommand(PWINDOW pWin, UINT cmdCId,UINT cmdMId,ULONG parameter1)
{
	switch(cmdCId)
	{
	case CTL_SB_ADD_ITEM:
		k_debug_string("processSBCommand::CTL_SB_ADD_ITEM\r\n");
		break;
	case CTL_SB_ADD_ITEMS:
		k_debug_string("processSBCommand::CTL_SB_ADD_ITEMS\r\n");
		break;
	case CTL_SB_REMOVE_ITEM:
		k_debug_string("processSBCommand::CTL_SB_REMOVE_ITEM\r\n");
		break;
	case CTL_SB_CLEAR_ITEMS:
		k_debug_string("processSBCommand::CTL_SB_CLEAR_ITEMS\r\n");
		break;
	case CTL_SB_SET_MIN:
		k_debug_string("processSBCommand::CTL_SB_SET_MIN\r\n");
		break;
	case CTL_SB_SET_MAX:
		k_debug_string("processSBCommand::CTL_SB_SET_MAX\r\n");
		break;
	case CTL_SB_SET_INCREMENT:
		k_debug_string("processSBCommand::CTL_SB_SET_INCREMENT\r\n");
		break;
	default:
		break;
	}

	return;
}

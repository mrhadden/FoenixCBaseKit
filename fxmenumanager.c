/*
 * fxmenumanager.c
 *
 *  Created on: Oct 1, 2019
 *      Author: mtbush
 */
#include "fxos.h"
#include "fxmenumanager.h"
#include "fxwindowmanager.h"

BOOL k_initializeMenuManager(void)
{
	k_debug_strings("k_initializeMenuManager:","Enter");

	k_user_CreateWindowClass("menuMainWindowClass",NULL,0,NULL,NULL,NULL,mainMenuWindowProc);
	//k_user_CreateWindowClass("menuAnchorWindowClass",NULL,0,NULL,NULL,NULL,menuAnchorWindowProc);
	//k_user_CreateWindowClass("menuDropDownWindowClass",NULL,0,NULL,NULL,NULL,menuDropDownWindowProc);
	//k_user_CreateWindowClass("menuItemWindowClass",NULL,0,NULL,NULL,NULL,menuItemWindowProc);


	k_menu_CreateMenu(k_user_getDesktopWindow(),NULL,NULL);


	return TRUE;
}

HMENURESOURCE k_menu_CreateMenuResource(LPCSTR resourceName)
{
	PMENU pMenu = NULL;

	k_debug_strings("k_menu_CreateMenuResource:","Enter");

	pMenu = k_mem_allocate_heap(sizeof(MENU));
	if(pMenu)
	{
		memset(pMenu,0,sizeof(MENU));

		pMenu->pCaption = k_string_copy_string(resourceName);
		pMenu->width    = 0;
		pMenu->height   = 0;
		pMenu->subMenus = NULL;
	}
	k_debug_strings("k_user_CreateMenuResource:","Exit");

	return (HMENURESOURCE)pMenu;
}


VOID k_menu_FreemMenuResource(HMENURESOURCE menuResource)
{
	PMENU pMenu = ((PMENU)menuResource);

	k_debug_strings("k_menu_FreemMenuResource:","Enter");

	if(pMenu)
	{
		if(pMenu->pCaption)
			k_mem_deallocate_heap((LPVOID)pMenu->pCaption);

		k_nodelist_deallocate_list(pMenu->subMenus);

		k_mem_deallocate_heap(menuResource);
	}
	k_heap_integrity_check();
	k_debug_strings("k_menu_FreemMenuResource:","Exit");
}

PWINDOW	k_menu_CreateMenu(HWND      	hWndParent,
						  HMENURESOURCE hMenuRes,
						  HINSTANCE 	hInstance)
{

	PWINDOW pWin = NULL;

	k_debug_pointer("k_menu_CreateMenu:Parent hWnd:",hWndParent);
	k_debug_pointer("k_menu_CreateMenu:DesktopWindow:",k_user_getDesktopWindow());

	pWin = k_user_CreateWindow(0,
							   "menuMainWindowClass",
							    "mainmenu",
								0,0,
								k_user_getSystemMetric(SM_CXMENUSIZE),
								k_user_getSystemMetric(SM_CYMENUSIZE),
								hWndParent,
								(HMENU)hMenuRes,
								NULL);




	return pWin;

}


BOOL mainMenuWindowProc(PFXOSMESSAGE pMsg)
{
	PWINDOW pWin = NULL;
	PFXPROCESS p = NULL;
	PFXSTRING  fxstr = NULL;
	LPCHAR title = NULL;
	UCHAR localBuffer[16];
	PFXNODE node = NULL;

	if(pMsg!=NULL)
	{
		p = k_exec_get_current_process();

		pWin = k_getWindowFromHandle(pMsg->hwnd);

		//k_debug_long("consoleWindowProc::ProcessId:",p->procId);

		switch(pMsg->type)
		{
		case FX_CREATE_WINDOW:
			k_debug_string("mainMenuWindowProc::FX_CREATE_WINDOW\r\n");
			//k_debug_long("menuWindowProc::heap:",umm_free_heap_size());
			//k_debug_integer("menuWindowProc::MessageId:",pMsg->type);

			pWin->windowData = k_mem_allocate_heap(sizeof(MENUANCHOR));
			((PMENUANCHOR)pWin->windowData)->renderLayoutX = 2 * FONTW;
			((PMENUANCHOR)pWin->windowData)->renderLayoutY = 2;

			/*
			k_debug_pointer("mainMenuWindowProc::pWin->hMenu:",pWin->hMenu);
			if(pWin->hMenu)
			{

					k_nodelist_foreach_type(((PMENU)pWin->hMenu)->subMenus,
										NL_TYPE_WINDOW_MENU,
										pMsg->hwnd,
										k_iterate_menus);


				if(((PMENU)pWin->hMenu)->subMenus)
				{
					k_vdraw_ui_menu(pWin->win_x,pWin->win_y,
									pWin->win_width,
									pWin->win_height,
									"", //((PFXSTRING)((PMENU)pWin->hMenu)->subMenus->listData)->buffer,
									4,3);

					k_put_wingadget_point(WINICON_TITLE_BCLOSE,pWin->win_x + 2,pWin->win_y + 2 ,k_getUIGadgetColor());

					if(pWin->hMenu && ((PMENU)pWin->hMenu)->subMenus)
					{
						//((PMENU)pWin->hMenu)->hWndOwner = pWin->pParentWindow; // temp for a test
						//k_debug_strings("menuWindowProc::FX_MOUSE_ENTER:hWndOwner:title:", k_getWindowFromHandle(pWin->pParentWindow)->win_title );


						_k_user_send_child_message(pWin,FX_SHOW_WINDOW,NULL,0);

						//fxstr = k_fxstring_init(128);

						//k_debug_strings("menuWindowProc::FX_CREATE_WINDOW:fxstr:",fxstr->buffer);
						//((PMENU)pWin->hMenu)->subMenus->listData = fxstr;
						//k_debug_strings("menuWindowProc::FX_CREATE_WINDOW:title:",title);
					}


				}



				//k_draw_menu(pWin->hMenu,15,3);

			}
			*/
			//k_debug_string("menuWindowProc::FX_CREATE_WINDOW:k_vdraw_ui_menu\r\n");
			break;
		case FX_DRAW_WINDOW:
			k_debug_string("mainMenuWindowProc::FX_REDRAW_WINDOW\r\n");


			k_vdraw_ui_menu(pWin->win_x,
							pWin->win_y,
							pWin->win_width,
							pWin->win_height,
							NULL, //((PFXSTRING)((PMENU)pWin->hMenu)->subMenus->listData)->buffer,
							4,3);


			break;
		case FX_LBUTTON_DOWN:
			if(pMsg->type!=FX_PROCESS)
			{
				//k_debug_integer("consoleWindowProc::ProcessId:",p->procId);
				k_debug_integer("mainMenuWindowProc::FX_LBUTTON_DOWN:X:", *((INT*)&pMsg->data[1])  );
				k_debug_integer("mainMenuWindowProc::FX_LBUTTON_DOWN:Y:", *((INT*)&pMsg->data[3])  );

				k_debug_pointer("mainMenuWindowProc::pChildHitList:",pWin->pChildHitList);

				//if(pWin->pChildHitList)
				//	k_debug_nodelist_with_data( pWin->pChildHitList->listhead, debug_window_node );


				//k_shadow_bitblt(0,0, 640, 480, 1,1);

			}
			break;

		case FX_MOUSE_ENTER:
			k_debug_string("mainMenuWindowProc::FX_MOUSE_ENTER\r\n");

			/*
			if(((PMENU)pWin->hMenu)->subMenus)
			{
				k_vdraw_ui_menu(pWin->win_x,pWin->win_y,
								pWin->win_width,
								pWin->win_height,
								"", //((PFXSTRING)((PMENU)pWin->hMenu)->subMenus->listData)->buffer,
								4,3);


				if(pWin->hMenu && ((PMENU)pWin->hMenu)->subMenus)
				{
					//((PMENU)pWin->hMenu)->hWndOwner = pWin->pParentWindow; // temp for a test
					//k_debug_strings("menuWindowProc::FX_MOUSE_ENTER:hWndOwner:title:", k_getWindowFromHandle(pWin->pParentWindow)->win_title );


					_k_user_send_child_message(pWin,FX_SHOW_WINDOW,NULL,0);

					//fxstr = k_fxstring_init(128);

					//k_debug_strings("menuWindowProc::FX_CREATE_WINDOW:fxstr:",fxstr->buffer);
					//((PMENU)pWin->hMenu)->subMenus->listData = fxstr;
					//k_debug_strings("menuWindowProc::FX_CREATE_WINDOW:title:",title);
				}


			}
			*/
			break;
		case FX_MOUSE_EXIT:
			k_debug_string("mainMenuWindowProc::FX_MOUSE_EXIT\r\n");
			/*
			k_debug_strings("menuWindowProc::FX_MOUSE_EXIT:title:",(LPCHAR)((PMENU)pWin->hMenu)->pCaption);

			((PMENUANCHOR)pWin->windowData)->renderLayoutX = 2 + FONTW;
			((PMENUANCHOR)pWin->windowData)->renderLayoutY = 2 + FONTW;

			if(((PMENU)pWin->hMenu)->pCaption)
			{
				_k_user_send_child_message(pWin,FX_HIDE_WINDOW,NULL,0);

				k_mem_deallocate_heap((LPVOID)((PMENU)pWin->hMenu)->pCaption);

				title = k_string_replace(CONST_WB_MENU_TITLE,"%s1", k_strip_padding(k_longtodec(k_getZeroPage()->availableHeapMemoryK,localBuffer)) );
				((PMENU)pWin->hMenu)->pCaption = k_string_replace(title,"%s2", k_strip_padding(k_longtodec(k_getZeroPage()->availableHeapMemoryK,localBuffer)));


				k_vdraw_ui_menu(pWin->win_x,pWin->win_y,
								pWin->win_width,
								pWin->win_height,
								((PMENU)pWin->hMenu)->pCaption,
								15,3);

				k_mem_deallocate_heap(title);

			}
			*/
			break;

		default:
			break;
		}
	}

	return TRUE;
}



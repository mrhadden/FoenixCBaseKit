
#include "fxos_desktop_proc.h"
#include "fxdos.h"
#include "fxnode.h"
#include "fxmemorymanager.h"
#include "fxgui.h"
#include "fxmenumanager.h"

int tempX = 0;
int tempY = 0;

LPCHAR textData = "Test String.";

static int xscale,yscale,xoffset,yoffset,p[4];
static float a[4],b[4],c[4],d[4],e[4],f[4];

void drawImage(int color);
void drawMandelbrot(void);


#define DEBUG_MOUSE_ENABLE 		0
#define DEBUG_MOUSE_CX 	   		1
#define DEBUG_MOUSE_CY 	   		2
#define DEBUG_MOUSE_BOXING 		3
#define DEBUG_MOUSE_BOX_TOP 	4
#define DEBUG_MOUSE_BOX_LEFT 	5
#define DEBUG_MOUSE_BOX_ENABLE 	6

#pragma section CODE=DTOP,offset $07:7FFF

VOID DesktopEnvironmentProc(PFXOSMESSAGE pMsg)
{
	PFXPROCESS p = NULL;

	//k_debug_string("DesktopEnvironmentProc enter\r\n");

	if(pMsg!=NULL)
	{
		p = k_exec_get_current_process();

		switch(pMsg->type)
		{
		case FX_INIT_MESSAGE:
			if(p!=NULL)
			{
				k_debug_long("DesktopEnvironmentProc::ProcessId:",p->procId);


				k_exec_enable_process_timer(PROCESS_TIMER_0,20);


				p->desktopCtl = k_mem_allocate_heap(sizeof(DESKTOP_CONTROL));
				if(p->desktopCtl)
				{
					memset(p->desktopCtl,0,sizeof(DESKTOP_CONTROL));
				}

				k_gui_init_mousepointer(TRUE);
				k_init_desktop(p);

				k_user_CreateWindowClass("desktopWindowClass",NULL,0,NULL,NULL,NULL,DesktopWindowProc);
				k_user_CreateWindow(FXWS_VISIBLE,
									"desktopWindowClass",
									"DesktopWindow",
									0,0,
									640,480,
									NULL,
									NULL,
									NULL);



			}
			break;
		case FX_PROCESS:
			/*
			//k_debug_string("DesktopWindowProc::FX_PROCESS\r\n");

			for(i=0;i<1000;i++)
			{
				asm NOP;
			}

			*/
			break;
		default:
			break;
		}
	}

	return;
}

BOOL DesktopWindowProc(PFXOSMESSAGE pMsg)
{
	LPCHAR ptr = NULL;
	PWINDOW pWin = NULL;
	PWINDOW dlgWnd = NULL;
	PFXPROCESS p = NULL;
	PCONSOLECTX pctx = NULL;
	BYTE decodedKey = 0;
	int i = 0;
	int temp1;
	int temp2;
	int cx,cy,px,py;
	UINT temp3;
	BYTE serial;
	PCLICKDETECTED pcd;

	LPVOID pixelLocation = NULL;

	PFXNODE  clickNode = NULL;

	HMENU desktopMenu = NULL;
	HMENU subMenu     = NULL;

	LPCHAR	digits[] = {"0","1","2","3","4","5","6","7","8","9"};

	//k_debug_string("DesktopWindowProc enter\r\n");
	if(pMsg!=NULL)
	{
		p = k_exec_get_current_process();

		if(p)
		{
			pctx = (PCONSOLECTX)p->ctx;
			//k_debug_pointer("DesktopWindowProc::pctx:",pctx);
			//k_debug_pointer("DesktopWindowProc::pctx->userData:",pctx->userData);
		}

		switch(pMsg->type)
		{
		case FX_CREATE_WINDOW:
			k_debug_string("DesktopWindowProc::FX_CREATE_WINDOW\r\n");

			p->ctx = k_mem_allocate_heap(sizeof(CONSOLECTX));
			if(p->ctx)
			{
				pctx = (PCONSOLECTX)p->ctx;
				k_debug_pointer("DesktopWindowProc::pctx:",pctx);
				pctx->userData  = (LPVOID)k_mem_allocate_heap(8*sizeof(UINT));

				k_debug_pointer("DesktopWindowProc::pctx->userData:",pctx->userData);


				((INT*)pctx->userData)[DEBUG_MOUSE_ENABLE] 	= FALSE;
				((INT*)pctx->userData)[DEBUG_MOUSE_CX] 		= -1;
				((INT*)pctx->userData)[DEBUG_MOUSE_CY] 		= -1;
				((INT*)pctx->userData)[DEBUG_MOUSE_BOXING] 	= FALSE;
				((INT*)pctx->userData)[DEBUG_MOUSE_BOX_TOP] = -1;
				((INT*)pctx->userData)[DEBUG_MOUSE_BOX_LEFT]= -1;
				((INT*)pctx->userData)[DEBUG_MOUSE_BOX_ENABLE]= FALSE;

			}
			//k_initializeMenuManager();

			//k_vdma_fill_rect(100,100,100,50,15);
			//k_shadow_fill_rect_address(BITMAP_BANK_0,100, 151, 100, 50, 15);
			/*
			k_scratch_save_bitblt(100,100, 100,50, 0,0);
			k_scratch_restore_bitblt(0,0, 100,50, 100,151);

			//k_shadow_fill_rect_address(BITMAP_BANK_0,201, 100, 100, 50, 15);
			k_shadow_fill_rect_address(SHADOW_BANK_0,201, 100, 100, 50, 15);
			k_scratch_save_bitblt(201,100, 100,50, 0,0);
			k_scratch_restore_bitblt(0,0, 100,50, 201,151);
			*/


			k_user_CreateWindowClass("preferencesWindowClass",NULL,0,NULL,NULL,NULL,preferencesWindowProc);
			k_user_CreateWindowClass("testWindowClass",NULL,0,NULL,NULL,NULL,testWindowProc);

			k_user_CreateWindowClass("listboxWindowClass",NULL,0,NULL,NULL,NULL,listboxWindowProc);
			k_user_CreateWindowClass("textboxWindowClass",NULL,0,NULL,NULL,NULL,textboxWindowProc);




//			k_user_CreateWindow(FXWS_OVERLAPPED | FXWS_CAPTION | FXWS_SYSMENU | FXWS_THICKFRAME | FXWS_MINIMIZEBOX | FXWS_MAXIMIZEBOX | FXWS_VISIBLE,


			//k_shadow_fill_rect_address(BITMAP_BANK_0,100, 151, 100, 50, 15);
			//k_shadow_fill_rect_address(BITMAP_BANK_0,201, 151, 100, 50, 15);


			desktopMenu = k_user_CreateMenuResource();
			if(desktopMenu)
			{

				subMenu = k_user_AddMenuItem(desktopMenu,"File" ,20);
							k_user_AddMenuItem(subMenu,"Volume Info",21);
							k_user_AddMenuItem(subMenu,"Rename",22);
							k_user_AddMenuItem(subMenu,"Copy",23);
							k_user_AddMenuItem(subMenu,"Mount",24);
							k_user_AddMenuItem(subMenu,"Eject",25);
							k_user_AddMenuItem(subMenu,"Run...",26);
							k_user_AddMenuItem(subMenu,"__________________",0);
							k_user_AddMenuItem(subMenu,"Processes",27);
							k_user_AddMenuItem(subMenu,"Refresh Desktop",28);
							k_user_AddMenuItem(subMenu,"Quit to CLI",29);

				subMenu = k_user_AddMenuItem(desktopMenu,"Edit" ,30);
							k_user_AddMenuItem(subMenu,"Copy",31);
							k_user_AddMenuItem(subMenu,"Cut",32);
							k_user_AddMenuItem(subMenu,"Paste",33);
							k_user_AddMenuItem(subMenu,"______________",0);
							k_user_AddMenuItem(subMenu,"Preferences",34);

				subMenu = k_user_AddMenuItem(desktopMenu,"Debug",50);
							 k_user_AddMenuItem(subMenu,"Debug Fonts",51);
				             k_user_AddMenuItem(subMenu,"Debug Window",52);
				             k_user_AddMenuItem(subMenu,"Debug Selection",53);
							 k_user_AddMenuItem(subMenu,"Debug Drag",54);
							 k_user_AddMenuItem(subMenu,"Debug Rubberband",55);

							 k_user_AddMenuItem(subMenu,"Debug Pointer Hourglass",56);
							 k_user_AddMenuItem(subMenu,"Debug Pointer Help",57);
							 k_user_AddMenuItem(subMenu,"Debug Pointer Arrow",58);
							 k_user_AddMenuItem(subMenu,"Debug Pointer Resize",DESK_MENU_DBG_RESIZE);




				subMenu = k_user_AddMenuItem(desktopMenu,"About",40);
						  	 k_user_AddMenuItem(subMenu,"About FX/OS...",41);
 							 k_user_AddMenuItem(subMenu,"_________________",0);
						  	 //k_user_AddMenuItem(subMenu,"Developer Options",42);
 							 //k_user_AddMenuItem(subMenu,"Debug Kernel",43);
						  	 k_user_AddMenuItem(subMenu,"Textbox Test",42);
 							 k_user_AddMenuItem(subMenu,"Listbox Test",43);
			}
			k_user_CreateMenu(pMsg->hwnd,desktopMenu,NULL);

			break;
		case FX_PROCESS_TIMER:
			//k_debug_string("DesktopWindowProc::FX_PROCESS_TIMER\r\n");
			break;
		case FX_DRAW_WINDOW:
			k_debug_string("DesktopWindowProc::FX_DRAW_WINDOW\r\n");

			/*
			k_user_CreateButton(pMsg->hwnd,"Ok",0x8801,100,250,-1,-1);

			k_user_CreateButton(pMsg->hwnd,"Cancel",0x8802,150,250,-1,-1);

			for(i=0;i<10;i++)
				k_user_CreateButton(pMsg->hwnd,digits[i],0x080+i,10 + (32 * i),400,-1,-1);

			*/

			//k_vdma_fill_rect(0,0,640,480,k_getUIBackgroundColor());

			//_k_user_send_child_message(pMsg->hwnd,FX_REDRAW_WINDOW,NULL,0);

			i = 100;
			/*
			k_user_CreateWindow(FXWS_THICKFRAME | FXWS_CAPTION | FXWS_VISIBLE | FXWS_SYSMENU | FXWS_MINIMIZEBOX | FXWS_MAXIMIZEBOX,
								"testWindowClass",
								"Test Window 1",
								i,i,
								300,200,
								pMsg->hwnd,
								NULL,
								NULL);
			i+=20;


			k_user_CreateWindow(FXWS_THICKFRAME | FXWS_CAPTION | FXWS_VISIBLE | FXWS_SYSMENU | FXWS_MINIMIZEBOX,
								"testWindowClass",
								"Test Window 2",
								i,i,
								300,200,
								pMsg->hwnd,
								NULL,
								NULL);
			i+=20;

			k_user_CreateWindow(FXWS_THICKFRAME | FXWS_CAPTION | FXWS_VISIBLE | FXWS_SYSMENU,
								"testWindowClass",
								"Test Window 3",
								i,i,
								300,200,
								pMsg->hwnd,
								NULL,
								NULL);
			i+=20;

			k_user_CreateWindow(FXWS_THICKFRAME | FXWS_CAPTION | FXWS_VISIBLE,
								"testWindowClass",
								"Test Window 4",
								i,i,
								300,200,
								pMsg->hwnd,
								NULL,
								NULL);
			i+=20;

			k_user_CreateWindow(FXWS_THICKFRAME | FXWS_VISIBLE,
								"testWindowClass",
								"Test Window 5",
								i,i,
								300,200,
								pMsg->hwnd,
								NULL,
								NULL);
			i+=20;

			k_user_CreateWindow(FXWS_BORDER | FXWS_VISIBLE,
								"testWindowClass",
								"Test Window 5",
								i,i,
								300,200,
								pMsg->hwnd,
								NULL,
								NULL);
			i+=20;


			dlgWnd = k_user_CreateWindow(FXWS_DLGFRAME | FXWS_VISIBLE,
								"dialogWindowClass",
								"Dialog Window",
								i,i,
								300,200,
								pMsg->hwnd,
								NULL,
								NULL);

			k_user_CenterWindow((HWND)dlgWnd);

			i+=20;
			*/

			break;
		case FX_CONTROL_COMMAND:
			k_debug_integer("DesktopWindowProc::FX_CONTROL_COMMAND:", ((PFXCMDMESSAGE)pMsg)->cmdCId );

			break;

		case FX_SCROLLBAR_COMMAND:
			k_debug_integer("DesktopWindowProc::FX_SCROLLBAR_COMMAND:", ((PFXCMDMESSAGE)pMsg)->cmdCId );
			if(((PFXCMDMESSAGE)pMsg)->cmdCId == CTL_HORZ_SCROLL )
			{
				k_debug_integer("DesktopWindowProc::FX_SCROLLBAR_COMMAND:LOCATION:", ((PFXCMDMESSAGE)pMsg)->cmdMId );
				k_debug_integer("DesktopWindowProc::FX_SCROLLBAR_COMMAND:VALUE:", ((PFXCMDMESSAGE)pMsg)->parameter1);
			}
			break;
		case FX_MENU_COMMAND:
			//k_debug_integer("DesktopWindowProc::FX_MENU_COMMAND:", ((PFXCMDMESSAGE)pMsg)->cmdCId );
			//k_debug_integer("DesktopWindowProc::MENUCTL:", ((PFXCMDMESSAGE)pMsg)->cmdMId );
			//k_debug_long("DesktopWindowProc::FX_MENU_COMMAND:DATA:", ((PFXCMDMESSAGE)pMsg)->parameter1 );

			if(((PFXCMDMESSAGE)pMsg)->cmdCId == CTL_MENU_SELECTED )
			{
				switch(((PFXCMDMESSAGE)pMsg)->cmdMId)
				{
				case DESK_MENU_DEVOPS:
					dlgWnd = k_getWindowFromHandle(k_user_findWindow("TEXTBOX1"));
					if(!dlgWnd || (dlgWnd && dlgWnd->isClosed))
					{
						dlgWnd = k_user_CreateWindow(FXWS_BORDER | FXWS_VISIBLE,
											"textboxWindowClass",
											"TEXTBOX1",
											400,20,
											200,FONTH + 4,
											pMsg->hwnd,
											NULL,
											NULL);

					}
					else
					{
						k_debug_string("TEXTBOX1 Already Open\r\n");
					}

					dlgWnd = k_getWindowFromHandle(k_user_findWindow("TEXTBOX2"));
					if(!dlgWnd || (dlgWnd && dlgWnd->isClosed))
					{
						dlgWnd = k_user_CreateWindow(FXWS_BORDER | FXWS_VISIBLE,
											"textboxWindowClass",
											"TEXTBOX2",
											400,50,
											200,FONTH + 4,
											pMsg->hwnd,
											NULL,
											NULL);

					}
					else
					{
						k_debug_string("TEXTBOX2 Already Open\r\n");
					}


					break;
				case DESK_MENU_DEBUG:

					dlgWnd = k_getWindowFromHandle(k_user_findWindow("LISTBOX"));
					if(!dlgWnd || (dlgWnd && dlgWnd->isClosed))
					{
						dlgWnd = k_user_CreateWindow(FXWS_BORDER | FXWS_VISIBLE,
											"listboxWindowClass",
											"LISTBOX",
											20,20,
											200,200,
											pMsg->hwnd,
											NULL,
											NULL);

					}
					else
					{
						k_debug_string("Listbox Already Open\r\n");
					}
					break;
				case DESK_MENU_ABOUTOS:
					dlgWnd = k_getWindowFromHandle(k_user_findWindow("About FX/OS"));
					if(!dlgWnd || (dlgWnd && dlgWnd->isClosed))
					{
						dlgWnd = k_user_CreateWindow(FXWS_DLGFRAME | FXWS_VISIBLE,
											"aboutDialogWindowClass",
											"About FX/OS",
											150,150,
											300,150,
											pMsg->hwnd,
											NULL,
											NULL);

					}
					else
					{
						k_debug_string("Dialog Already Open\r\n");
					}
					break;

				case DESK_MENU_PREFS:

					dlgWnd = k_getWindowFromHandle(k_user_findWindow("Preferences"));
					if(!dlgWnd || (dlgWnd && dlgWnd->isClosed))
					{
						dlgWnd = k_user_CreateWindow(FXWS_THICKFRAME | FXWS_CAPTION | FXWS_VISIBLE | FXWS_SYSMENU,
											"preferencesWindowClass",
											"Preferences",
											150,150,
											350,250,
											pMsg->hwnd,
											NULL,
											NULL);

						dlgWnd = k_user_CreateWindow(FXWS_THICKFRAME | FXWS_CAPTION | FXWS_VISIBLE | FXWS_SYSMENU,
											"preferencesWindowClass",
											"Child1",
											20,20,
											150,120,
											k_getHandleFromWindow(dlgWnd),
											NULL,
											NULL);

						dlgWnd = k_user_CreateWindow(FXWS_THICKFRAME | FXWS_CAPTION | FXWS_VISIBLE | FXWS_SYSMENU,
											"preferencesWindowClass",
											"C2",
											20,20,
											100,75,
											k_getHandleFromWindow(dlgWnd),
											NULL,
											NULL);
					}
					else
					{
						k_debug_string("Dialog Already Open\r\n");
					}

					break;
				case DESK_MENU_DBG_FONTS:
					k_debug_string("DESK_MENU_DBG_FONTS\r\n");
					break;
				case DESK_MENU_DBG_WINDOW:
					k_debug_string("DESK_MENU_DBG_WINDOW\r\n");

					dlgWnd = k_getWindowFromHandle(k_user_findWindow("Debug Window"));
					if(dlgWnd == NULL)
					{
						k_user_CreateWindow(FXWS_THICKFRAME | FXWS_CAPTION | FXWS_VISIBLE | FXWS_SYSMENU | FXWS_MINIMIZEBOX | FXWS_MAXIMIZEBOX,
											"testWindowClass",
											"Debug Window",
											100,100,
											300,200,
											pMsg->hwnd,
											NULL,
											NULL);
					}
					else
					{
						k_debug_string("Debug Window Already Open\r\n");
					}

					break;
				case DESK_MENU_DBG_SELECT:
					k_debug_string("DESK_MENU_DBG_SELECT\r\n");
					break;
				case DESK_MENU_DBG_DRAG:
					//pctx->Reserved1 = (LPVOID)(!((LONG)pctx->Reserved1));

					((INT*)pctx->userData)[DEBUG_MOUSE_ENABLE] = !((INT*)pctx->userData)[DEBUG_MOUSE_ENABLE];

					if(!((INT*)pctx->userData)[DEBUG_MOUSE_ENABLE])
					{
						px = ((INT*)pctx->userData)[1];
						py = ((INT*)pctx->userData)[2];

						if(px > -1)
						{
							//k_draw_rect_slow(px,py, px+100, py+100, 0);
							k_vdma_fill_rect_ex(px,py, 200, 200, FILLCOLOR_TRANSPARENT,BITMAP_FRONT);
						}
					}


					//k_debug_integer("DesktopWindowProc::DEBUG MENU DRAG:",((INT*)pctx->userData)[DEBUG_MOUSE_ENABLE]);
					//k_debug_pointer("DesktopWindowProc::DEBUG MENU CONTROL HMENU:",(HMENU)((PFXCMDMESSAGE)pMsg)->parameter2);
					//k_debug_strings("DesktopWindowProc::DEBUG MENU CONTROL caption:",(LPSTR)((PMENU)((PFXCMDMESSAGE)pMsg)->parameter2)->pCaption);
					//k_debug_pointer("DesktopWindowProc::DEBUG MENU CONTROL subMenus:",((PMENU)((PFXCMDMESSAGE)pMsg)->parameter2)->subMenus);

					k_user_SetMenuState((HMENU)((PFXCMDMESSAGE)pMsg)->parameter2,((PFXCMDMESSAGE)pMsg)->cmdMId,((INT*)pctx->userData)[DEBUG_MOUSE_ENABLE]);


					//k_send_command_message((HWND)((PFXCMDMESSAGE)pMsg)->parameter2,FX_CONTROL_COMMAND,CTL_MENU_CHECKED,((PFXCMDMESSAGE)pMsg)->cmdMId,((INT*)pctx->userData)[0],0);


					break;
				case DESK_MENU_DBG_RUBBERBAND:


					((INT*)pctx->userData)[DEBUG_MOUSE_BOX_ENABLE] = !((INT*)pctx->userData)[DEBUG_MOUSE_BOX_ENABLE];

					if(!((INT*)pctx->userData)[DEBUG_MOUSE_BOX_ENABLE])
					{

						((INT*)pctx->userData)[DEBUG_MOUSE_BOXING] = FALSE;
						((INT*)pctx->userData)[DEBUG_MOUSE_BOX_TOP] = -1;
						((INT*)pctx->userData)[DEBUG_MOUSE_BOX_LEFT] = -1;

					}


					//k_debug_integer("DesktopWindowProc::DEBUG MENU RUBBERBAND:",((INT*)pctx->userData)[DEBUG_MOUSE_BOX_ENABLE]);
					//k_debug_pointer("DesktopWindowProc::DEBUG MENU CONTROL HMENU:",(HMENU)((PFXCMDMESSAGE)pMsg)->parameter2);
					//k_debug_strings("DesktopWindowProc::DEBUG MENU CONTROL caption:",(LPSTR)((PMENU)((PFXCMDMESSAGE)pMsg)->parameter2)->pCaption);
					//k_debug_pointer("DesktopWindowProc::DEBUG MENU CONTROL subMenus:",((PMENU)((PFXCMDMESSAGE)pMsg)->parameter2)->subMenus);


					k_user_SetMenuState((HMENU)((PFXCMDMESSAGE)pMsg)->parameter2,((PFXCMDMESSAGE)pMsg)->cmdMId,((INT*)pctx->userData)[DEBUG_MOUSE_BOX_ENABLE]);
					//k_send_command_message((HWND)((PFXCMDMESSAGE)pMsg)->parameter2,FX_MENU_COMMAND,CTL_MENU_CHECKED,((PFXCMDMESSAGE)pMsg)->cmdMId,((INT*)pctx->userData)[0],0);

					break;

				case DESK_MENU_DBG_HOURGLASS:
					k_user_setMousePointer("HOURGLASS");
					break;
				case DESK_MENU_DBG_HELP:
					k_user_setMousePointer("HELP");
					break;
				case DESK_MENU_DBG_ARROW:
					k_user_setMousePointer("ARROW");
					break;
				case DESK_MENU_DBG_RESIZE:
					k_user_setMousePointer("RESIZE");
					break;
				default:
					break;
				}
			}

			break;
		case FX_KEY_UP:
			//k_debug_integer("DesktopWindowProc::FX_KEY_UP0:",pMsg->data[0]);
			//k_debug_integer("DesktopWindowProc::FX_KEY_UP1:",pMsg->data[1]);
			//k_debug_integer("DesktopWindowProc::FX_KEY_UP2:",pMsg->data[2]);
			//k_debug_integer("DesktopWindowProc::isShifted:",pctx->isShifted);
			k_debug_string("DesktopWindowProc::FX_KEY_UP\r\n");
			break;
		case FX_KEY_DOWN:
			//if(p!=NULL)
			//	k_debug_integer("DesktopWindowProc::ProcessId:",p->procId);
			//k_debug_integer("DesktopWindowProc::FX_KEY_DOWN0:",pMsg->data[0]);
			//k_debug_integer("DesktopWindowProc::FX_KEY_DOWN1:",pMsg->data[1]);
			//k_debug_integer("DesktopWindowProc::FX_KEY_DOWN2:",pMsg->data[2]);
			//k_debug_integer("DesktopWindowProc::isShifted:",pctx->isShifted);

			//k_debug_integer("DesktopWindowProc::curX:",p->consoleCtl->curX);
			//k_debug_integer("DesktopWindowProc::curY:",p->consoleCtl->curY);

			k_debug_string("DesktopWindowProc::FX_KEY_DOWN\r\n");

			break;
		case FX_DISK_INSERT:

			k_debug_string("DesktopWindowProc::DISK-INSERT:");
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

			if(p->desktopCtl->currentDiskName && strcmp( k_to_uppercase(  ((PDISKINFO)pMsg->pheap)->stgName),p->desktopCtl->currentDiskName) == 0)
			{
				k_debug_string("DesktopWindowProc::DISK-INSERT:NO-CHANGE\r\n");
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

				k_debug_message("DesktopWindowProc::DISK-INSERT:DISK:",p->desktopCtl->currentDiskName);
			}
			break;
		case FX_DISK_REMOVE:

			k_debug_string("DesktopWindowProc::DISK-REMOVE\r\n");

			if(p->desktopCtl->currentDiskName)
			{
				k_debug_message("DesktopWindowProc::DISK-REMOVE:DISK:",p->desktopCtl->currentDiskName);
				k_debug_integer("DesktopWindowProc::DISK-REMOVE:backgroundColor:",p->desktopCtl->backgroundColor);

				temp1 = strlen(p->desktopCtl->currentDiskName);
				temp2 = (temp1*4);

				k_put_winicon_point(ICON_DISK,640 - (40 + temp2/2),20,p->desktopCtl->backgroundColor,PAINTMODE_BACKGROUND);
				k_draw_text_point(p->desktopCtl->currentDiskName,640 - (35 + temp2/2) - (temp2),40,p->desktopCtl->backgroundColor);

				if(p->desktopCtl->currentDiskName!=NULL)
					k_mem_deallocate_heap(p->desktopCtl->currentDiskName);

				p->desktopCtl->currentDiskName = NULL;
			}

			break;
		case FX_APP_MESSAGE:
			k_debug_string("DesktopWindowProc::FX_APP_MESSAGE\r\n");
			break;
		case FX_MOUSE_MOVE:
			if(((INT*)pctx->userData)[DEBUG_MOUSE_ENABLE] && !((INT*)pctx->userData)[DEBUG_MOUSE_BOXING])
			{

				cx = *((INT*)&pMsg->data[1]) - pWin->win_x;
				cy = *((INT*)&pMsg->data[3]) - pWin->win_y;


				px = ((INT*)pctx->userData)[DEBUG_MOUSE_CX];
				py = ((INT*)pctx->userData)[DEBUG_MOUSE_CY];

				if(px > -1)
				{
					//k_draw_rect_slow(px,py, px+100, py+100, 0);
					k_vdma_fill_rect_ex(px,py, 200, 200, FILLCOLOR_TRANSPARENT,BITMAP_FRONT);
				}

				//k_draw_rect_slow(cx,cy, cx+100, cy+100, 15);
				k_vdma_fill_rect_ex(cx,cy, 200, 100, 15,BITMAP_FRONT);

				((INT*)pctx->userData)[DEBUG_MOUSE_CX] = cx;
				((INT*)pctx->userData)[DEBUG_MOUSE_CY] = cy;

			}

			break;

		case FX_MOUSE_ENTER:
			k_debug_strings("DesktopWindowProc::FX_MOUSE_ENTER:",pWin->win_title);
			break;
		case FX_MOUSE_EXIT:
			k_debug_strings("DesktopWindowProc::FX_MOUSE_EXIT:",pWin->win_title);
			break;

		case FX_RBUTTON_DOWN:
			k_debug_string("DesktopWindowProc::FX_RBUTTON_DOWN\r\n");
			//k_exec_throw_exception(0xFF000000,1,"Test Exception Mode Messages",-1);
			//drawMandelbrot();

			break;

		case FX_LBUTTON_DOWN:
			k_debug_string("DesktopWindowProc::FX_LBUTTON_DOWN\r\n");
			//k_debug_integer("DesktopWindowProc::DEBUG_MOUSE_BOX_ENABLE:",((INT*)pctx->userData)[DEBUG_MOUSE_BOX_ENABLE]);
			//k_debug_integer("DesktopWindowProc::DEBUG_MOUSE_BOXING:",((INT*)pctx->userData)[DEBUG_MOUSE_BOXING]);

			if(((INT*)pctx->userData)[DEBUG_MOUSE_BOX_ENABLE] && !((INT*)pctx->userData)[DEBUG_MOUSE_BOXING])
			{

				((INT*)pctx->userData)[DEBUG_MOUSE_BOXING] = TRUE;

				cy = *((INT*)&pMsg->data[3]) - pWin->win_y;
				cx = *((INT*)&pMsg->data[1]) - pWin->win_x;

				((INT*)pctx->userData)[DEBUG_MOUSE_BOX_LEFT] = cx;
				((INT*)pctx->userData)[DEBUG_MOUSE_BOX_TOP]  = cy;

				((INT*)pctx->userData)[DEBUG_MOUSE_CX] = cx;
				((INT*)pctx->userData)[DEBUG_MOUSE_CY] = cy;
			}


			break;
		case FX_LBUTTON_UP:
			k_debug_string("DesktopWindowProc::FX_LBUTTON_UP\r\n");
			/*
			//pixelLocation =  &(((unsigned char FAR *)BITMAP_BANK_0)[(long)(( ((long)200) * 640L) + ((long)200) )]);
			pixelLocation =  (LPVOID)((long)(( ((long)200) * 640L) + ((long)200) ));

			k_debug_pointer("DesktopWindowProc::pixelLocation:",pixelLocation);


			while(temp1 == VDMA_STAT_VDMA_IPS)
			{
				temp1 = ( VDMA_STATUS_REG[0] & VDMA_STAT_VDMA_IPS);
			}

			//VDMA_CONTROL_REG[0] = 1 + 2;
			VDMA_CONTROL_REG[0]  = (VDMA_CTRL_ENABLE | VDMA_CTRL_1D_2D );

			k_debug_pointer("DesktopWindowProc::pixelLocation:",pixelLocation);

			VDMA_SRC_ADDY_L[0]  = 0x00;//$AF0402 ;// Pointer to the Source of the Data to be stransfered
			VDMA_SRC_ADDY_M[0]  = 0x00; //$AF0403 ;// This needs to be within Vicky's Range ($00_0000 - $3F_0000)
			VDMA_SRC_ADDY_H[0]  = 0x00;


			VDMA_DST_ADDY_L[0] = L24BYTE(pixelLocation);
			VDMA_DST_ADDY_M[0] = M24BYTE(pixelLocation);
			VDMA_DST_ADDY_H[0] = H24BYTE(pixelLocation);


			VDMA_X_SIZE_L[0]  = 200;
			VDMA_X_SIZE_H[0]  = 0;
			VDMA_Y_SIZE_L[0]  = 200;
			VDMA_Y_SIZE_H[0]  = 0;

			//VDMA_SRC_STRIDE_L[0]  = 200;
			//VDMA_SRC_STRIDE_H[0]  = 0;
			//VDMA_DST_STRIDE_L[0]  = 200;
			//VDMA_DST_STRIDE_H[0]  = 0;


			k_debug_pointer("DesktopWindowProc::start-vdma:",pixelLocation);

			VDMA_CONTROL_REG[0]  = (VDMA_CTRL_ENABLE | VDMA_CTRL_1D_2D | VDMA_CTRL_START_TRF);
			*/

			if(pctx->userData && ((INT*)pctx->userData)[DEBUG_MOUSE_BOXING])
			{
				px = ((INT*)pctx->userData)[DEBUG_MOUSE_CX];
				py = ((INT*)pctx->userData)[DEBUG_MOUSE_CY];

				if(px > -1)
				{
					k_draw_rect_slow(((INT*)pctx->userData)[DEBUG_MOUSE_BOX_LEFT],
							         ((INT*)pctx->userData)[DEBUG_MOUSE_BOX_TOP],
									 px, py,
									 FILLCOLOR_TRANSPARENT);
				}

				((INT*)pctx->userData)[DEBUG_MOUSE_CX] 		= -1;
				((INT*)pctx->userData)[DEBUG_MOUSE_CY] 		= -1;
				((INT*)pctx->userData)[DEBUG_MOUSE_BOXING] 	= FALSE;
				((INT*)pctx->userData)[DEBUG_MOUSE_BOX_TOP] = -1;
				((INT*)pctx->userData)[DEBUG_MOUSE_BOX_LEFT]= -1;

				k_debug_integer("DesktopWindowProc::DEBUG_MOUSE_BOXING:",((INT*)pctx->userData)[DEBUG_MOUSE_BOXING]);
			}



			break;
		case FX_LBUTTON_DRAG:
			k_debug_string("DesktopWindowProc::FX_LBUTTON_DRAG\r\n");


			if(((INT*)pctx->userData)[DEBUG_MOUSE_BOX_ENABLE] && ((INT*)pctx->userData)[DEBUG_MOUSE_BOXING])
			{

				cy = *((INT*)&pMsg->data[3]) - pWin->win_y;
				cx = *((INT*)&pMsg->data[1]) - pWin->win_x;

				px = ((INT*)pctx->userData)[DEBUG_MOUSE_CX];
				py = ((INT*)pctx->userData)[DEBUG_MOUSE_CY];

				if(px > -1)
				{
					k_draw_rect_slow(((INT*)pctx->userData)[DEBUG_MOUSE_BOX_LEFT],
							         ((INT*)pctx->userData)[DEBUG_MOUSE_BOX_TOP],
									 px, py,
									 FILLCOLOR_TRANSPARENT);
				}

				k_draw_rect_slow(((INT*)pctx->userData)[DEBUG_MOUSE_BOX_LEFT],
								 ((INT*)pctx->userData)[DEBUG_MOUSE_BOX_TOP],
								 cx,cy,
								 15);

				((INT*)pctx->userData)[DEBUG_MOUSE_CX] = cx;
				((INT*)pctx->userData)[DEBUG_MOUSE_CY] = cy;
			}

			break;
		case FX_LBUTTON_DBLCLICK:
			k_debug_string("DesktopWindowProc::FX_LBUTTON_DBLCLICK\r\n");



			if(k_user_getDesktopWindow())
			{
				k_debug_string("DesktopWindowProc::DESKTOP HITLISTK\r\n");
				k_debug_nodelist_with_data( k_getWindowFromHandle(k_user_getDesktopWindow())->pChildHitList->listhead->next, debug_clickable_node );
				k_debug_string("DesktopWindowProc::GLOBAL HITLISTK\r\n");
				k_debug_nodelist_with_data( k_getWindowHitList(), debug_clickable_node );
			}


			break;
		case FX_WINDOW_TOFRONT:
			k_debug_string("DesktopWindowProc::FX_WINDOW_TOFRONT\r\n");

			//k_vdraw_ui_window(25,25,200,300,"Clicked FRONT",15,3);

			break;
		case FX_WINDOW_TOBACK:
			k_debug_string("DesktopWindowProc::FX_WINDOW_TOBACK\r\n");

			//k_vdraw_ui_window(250,250,150,200,"Clicked BACK",15,3);

			break;
		case FX_COM1_DATA:
			//k_debug_string("DesktopWindowProc::FX_COM1_DATA\r\n");
			break;
		case FX_COM2_DATA:
			//k_debug_string("DesktopWindowProc::FX_COM2_DATA\r\n");
			break;

		default:
			//k_updatespinner(2,40,&consolespinctx);
			return DefWindowProc(pMsg);
			break;
		}
	}
	//k_debug_string("DesktopWindowProc exit\r\n");

	return TRUE;
}

BOOL testWindowProc(PFXOSMESSAGE pMsg)
{
	PFXPROCESS p = NULL;
	PWINDOW pWin = NULL;
	INT index = 0;
	RECT winRect;

	if(pMsg!=NULL)
	{
		p = k_exec_get_current_process();

		//k_debug_long("consoleWindowProc::ProcessId:",p->procId);

		switch(pMsg->type)
		{
		case FX_CREATE_WINDOW:
			if(p)
			{
				k_debug_long("testWindowProc::FX_CREATE_WINDOW:",p->procId);
				//k_debug_integer("testWindowProc::MessageId:",pMsg->type);
			}
			break;
		case FX_DRAW_WINDOW:
			k_debug_string("testWindowProc::FX_DRAW_WINDOW\r\n");
			//k_vdma_fill_rect(100,100,100,50,4);
			break;
		case FX_MOUSE_MOVE:
			k_debug_string("testWindowProc::FX_MOUSE_MOVE\r\n");
			break;
		//case FX_NC_MOUSE_MOVE:
		//	k_debug_string("testWindowProc::FX_NC_MOUSE_MOVE\r\n");
		//	break;

		case FX_LBUTTON_DRAG:
			k_debug_string("testWindowProc::FX_LBUTTON_DRAG\r\n");
			break;


		case FX_LBUTTON_DBLCLICK:

			//k_getWindowRect(pMsg->hwnd,&winRect);
			//k_vdma_copy_address_ex((LPVOID)(0x100000 | k_gui_get_pixel_offset(20,20)),(LPVOID)(k_gui_get_pixel_offset(winRect.x,winRect.y)),winRect.width,winRect.height);

			//k_switch_window_page(pMsg->hwnd,BITMAP_BACK,BITMAP_FRONT,TRUE);
			//k_switch_window_page(pMsg->hwnd,BITMAP_BACK,BITMAP_FRONT,FALSE);

			pWin = k_getWindowFromHandle(pMsg->hwnd);

			for(index = 0;index<8;index++)
			{
				k_debug_rect("testWindowProc::nonclientGadgets:rect:",&pWin->nonclientGadgets[index].area);
			}


			break;
		case FX_MBUTTON_DOWN:
			if(pMsg->type!=FX_PROCESS)
			{
				//k_debug_integer("consoleWindowProc::ProcessId:",p->procId);
				k_debug_string("testWindowProc::FX_MBUTTON_DOWN\r\n");
			}

			break;
		case FX_LBUTTON_DOWN:
			k_debug_string("testWindowProc::FX_LBUTTON_DOWN\r\n");
			break;

		case FX_LBUTTON_UP:
			k_debug_string("testWindowProc::FX_LBUTTON_UP\r\n");
			break;
			//case FX_NC_LBUTTON_DOWN:
		//	k_debug_string("testWindowProc::FX_NC_LBUTTON_DOWN\r\n");
		//	k_event_lock_focus(pMsg->hwnd);
		//	break;
		//case FX_RBUTTON_DOWN:
		//case FX_NC_RBUTTON_DOWN:
		//	k_debug_string("testWindowProc::FX_RBUTTON_DOWN or FX_NC_RBUTTON_DOWN\r\n");
		//	k_event_unlock_focus();
		//	break;
		case FX_MIN_WINDOW:
			k_switch_window_page(pMsg->hwnd,BITMAP_BACK,BITMAP_FRONT,TRUE);
			break;
		case FX_MAX_WINDOW:
			k_switch_window_page(pMsg->hwnd,BITMAP_FRONT,BITMAP_BACK,FALSE);
			break;
		case FX_WINDOW_CLOSE:
			pWin = k_getWindowFromHandle(pMsg->hwnd);
			k_vdma_fill_rect_ex(pWin->win_x,pWin->win_y, pWin->win_width, pWin->win_height,
					            FILLCOLOR_TRANSPARENT,BITMAP_FRONT);
			k_vdma_fill_rect_ex(pWin->win_x,pWin->win_y, pWin->win_width, pWin->win_height,
								k_getUIBackgroundColor(),BITMAP_BACK);
			return FALSE;
		default:
			return DefWindowProc(pMsg);
			break;
		}
	}

	return TRUE;
}


BOOL textboxWindowProc(PFXOSMESSAGE pMsg)
{
	UINT i;
	RECT r;
	CHAR c;
	PFXPROCESS p = NULL;
	PWINDOW pWin = NULL;
	UCHAR buffer[16];
	LPCHAR listItem;
	PTEXTBOX textbox = NULL;
	HWND hWnd;
	INT cMenu;
	LPCSTR pFont;

	if(pMsg!=NULL)
	{
		p = k_exec_get_current_process();
		pWin = k_getWindowFromHandle(pMsg->hwnd);
		hWnd = k_getHandleFromWindow(pWin);
		textbox = pWin->windowData;
		cMenu = k_getUIMenuColor();


		switch(pMsg->type)
		{
		case FX_CREATE_WINDOW:
			if(p)
			{
				k_debug_long("textboxWindowProc::FX_CREATE_WINDOW:",p->procId);
				textbox = pWin->windowData = k_mem_allocate_heap(sizeof(TEXTBOX));
				memset(textbox,0,sizeof(TEXTBOX));

				//textbox->data = textData;

				textbox->data = k_fxstring_new(textData,128);

				textbox->fontSet = (LPCHAR)k_user_getFontClass("ToshibaLCD8x8");
				textbox->offsetY = 0;
				textbox->cursorState = FALSE;
				//k_debug_integer("testWindowProc::MessageId:",pMsg->type);
			}
			break;
		case FX_DRAW_WINDOW:
			k_debug_string("textboxWindowProc::FX_DRAW_WINDOW\r\n");

			//pFont = (LPCSTR)k_user_getFontClass("ToshibaLCD8x8");

			r.x = 1;
			r.y = 2;

			k_vdma_fill_rect(pWin->win_x + 2,
					         pWin->win_y + 1,
							 pWin->win_width - (k_user_getSystemMetric(SM_CXBORDER) * 2) - 1,
							 pWin->win_height - 1,
							 k_getUIBackgroundColor()
							 //3
							 );

			if(textbox)
			{
				textbox->offsetX = k_user_DrawWindowTextToPointWithFont(hWnd,
												     ((PFXSTRING)textbox->data)->buffer,
													 cMenu,
													 &r,
													 textbox->fontSet);

				if(textbox->offsetX == 0)
					textbox->offsetX = 1;

				k_debug_integer("textboxWindowProc:x:",textbox->offsetX);
			//	k_debug_integer("listboxWindowProc:y:",r.y);
				//k_debug_integer("listboxWindowProc:w:",r.width);
				//k_debug_integer("listboxWindowProc:h:",r.height);
				//r.y += 10;

				//if(r.y > pWin->win_height)
				//	break;
				//k_mem_deallocate_heap(listItem);
			}

			//k_vdma_fill_rect(100,100,100,50,4);
			break;
		case FX_PROCESS_TIMER:
			//k_debug_string("preferencesWindowProc::FX_PROCESS_TIMER\r\n");

			hWnd = k_user_getFocusWindow();
			if(hWnd)
			{
				pWin = k_getWindowFromHandle(hWnd);
				//k_debug_strings("textboxWindowProc:FX_PROCESS_TIMER:pWin->win_class:",(LPSTR)pWin->win_class_name);
				if(pWin && (strcmp("textboxWindowClass",pWin->win_class_name) == 0))
				{
					textbox = ASTEXTBOX(pWin);

					textbox->cursorState=!textbox->cursorState;

					r.x = textbox->offsetX;
					r.y = 1;

					//k_debug_integer("textboxWindowProc:FX_PROCESS_TIMER:name:",pWin->win_title);
					//k_debug_integer("textboxWindowProc:FX_PROCESS_TIMER:offsetX:",r.x);
					//k_debug_integer("textboxWindowProc:FX_PROCESS_TIMER:cursorState:",textbox->cursorState);

					if(textbox->cursorState)
						k_user_DrawWindowTextToPointWithFont(hWnd,"\xAF",k_getUIBackgroundColor(),&r,(LPCSTR)k_user_getFontClass("FXOS8x8"));
					else
						k_user_DrawWindowTextToPointWithFont(hWnd,"\xAE",k_getUIMenuColor(),&r,(LPCSTR)k_user_getFontClass("FXOS8x8"));

				}
			}

			break;


		case FX_KEY_UP:

			if(pMsg->data[0] == 182 || pMsg->data[0] == 170)
			{
				textbox->isShifted = FALSE;
				k_debug_integer("textboxWindowProc::FX_KEY_DOWN:isShifted",textbox->isShifted);
			}

			break;
		case FX_KEY_DOWN:

			k_debug_integer("textboxWindowProc::FX_KEY_DOWN:",pMsg->data[0]);

			if(pMsg->data[0] == 54 || pMsg->data[0] == 42)
			{
				textbox->isShifted = TRUE;
				k_debug_integer("textboxWindowProc::FX_KEY_DOWN:isShifted",textbox->isShifted);
			}
			else if(pMsg->data[0] == 80)
			{
				textbox->pos++;
				if(textbox->pos > 29)
					textbox->pos = 29;
				k_send_window_message(k_getHandleFromWindow(pWin),FX_DRAW_WINDOW,0,0);
			}
			else if(pMsg->data[0] == 72)
			{
				textbox->pos--;
				if(textbox->pos < 0)
					textbox->pos = 0;
				k_send_window_message(k_getHandleFromWindow(pWin),FX_DRAW_WINDOW,0,0);
			}
			else if(pMsg->data[0] == 14)
			{
				c = k_fxstring_removechar(textbox->data);

				k_debug_integer("textboxWindowProc::FX_KEY_DOWN:BACKSPACE:",c);

				k_send_window_message(k_getHandleFromWindow(pWin),FX_DRAW_WINDOW,0,0);
			}
			else
			{
				c = k_getKeyboardChar(pMsg->data[0],pMsg->data[1],textbox->isShifted);

				k_debug_char("textboxWindowProc::FX_KEY_DOWN:",pMsg->data[2]);
				k_debug_char("textboxWindowProc::FX_KEY_DOWN:KEYCODE:",c);



				//k_fxstring_addchar(textbox->data, pMsg->data[2]);
				if(c)
					k_fxstring_addchar(textbox->data,c);

				k_send_window_message(k_getHandleFromWindow(pWin),FX_DRAW_WINDOW,0,0);


			}
			break;
		case FX_LBUTTON_DOWN:
			if(pMsg->type!=FX_PROCESS)
			{
				//k_debug_integer("consoleWindowProc::ProcessId:",p->procId);
				k_debug_string("textboxWindowProc::FX_LBUTTON_DOWN\r\n");
			}

			break;
		default:
			return DefWindowProc(pMsg);
			break;
		}
	}

	return TRUE;

}




BOOL preferencesWindowProc(PFXOSMESSAGE pMsg)
{
	PFXPROCESS p = NULL;
	PPOINT ppoint;
	PWINDOW pWin = NULL;
	RECT r;
	UCHAR buffer[16];

	if(pMsg!=NULL)
	{
		p = k_exec_get_current_process();
		pWin =  k_getWindowFromHandle(pMsg->hwnd);
		//k_debug_long("consoleWindowProc::ProcessId:",p->procId);

		switch(pMsg->type)
		{
		case FX_CREATE_WINDOW:
			if(p)
			{
				k_debug_long("preferencesWindowProc::FX_CREATE_WINDOW:",p->procId);
				//k_user_SetWindowData(pMsg->hwnd,0,k_user_CreateButton(pMsg->hwnd,"Test",0x8801,10,10,20,10));
				//k_debug_integer("testWindowProc::MessageId:",pMsg->type);


				//k_user_CreateHorizontalScrollbar(pWin,"",1);
				k_user_CreateVerticalScrollBar(pWin,"",1);

			}
			break;

		case FX_PROCESS_TIMER:
			//k_debug_string("preferencesWindowProc::FX_PROCESS_TIMER\r\n");

			/*
			p->desktopCtl->cursorState=!p->desktopCtl->cursorState;

			r.x = 0;
			r.y = 20;

			if(p->desktopCtl->cursorState)
				k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(k_user_getFocusWindow()),"\xAF",k_getUIBackgroundColor(),&r,(LPCSTR)k_user_getFontClass("FXOS8x8"));
			else
				k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(k_user_getFocusWindow()),"\xAE",k_getUIMenuColor(),&r,(LPCSTR)k_user_getFontClass("FXOS8x8"));

			*/


			break;
		case FX_DRAW_WINDOW:
			k_debug_string("preferencesWindowProc::FX_DRAW_WINDOW\r\n");

			ppoint = ((PEACHCHILD_MSG)pMsg)->msgData;

			/*
			k_vdma_fill_rect(pWin->clientRect.x + ppoint->x,
							 pWin->clientRect.y + ppoint->y,
							 pWin->win_width,pWin->win_height,
							 128);
			*/
			//k_user_FillClientRect(pMsg->hwnd,128);

			ppoint = (PPOINT)k_mem_allocate_heap(sizeof(POINT));
			ppoint->x = pWin->win_x + ppoint->x;
			ppoint->y = pWin->win_y + ppoint->y;


			_k_user_send_child_message(pMsg->hwnd,FX_DRAW_WINDOW,ppoint,sizeof(POINT));
			break;
		case FX_MBUTTON_DOWN:
			if(pMsg->type!=FX_PROCESS)
			{
				//k_debug_integer("consoleWindowProc::ProcessId:",p->procId);
				k_debug_string("preferencesWindowProc::FX_MBUTTON_DOWN\r\n");
			}
			break;
		case FX_LBUTTON_DOWN:
			if(pMsg->type!=FX_PROCESS)
			{
				//k_debug_integer("consoleWindowProc::ProcessId:",p->procId);
				k_debug_string("preferencesWindowProc::FX_LBUTTON_DOWN\r\n");
			}

			break;
		case FX_MOUSE_ENTER:
			k_debug_strings("preferencesWindowProc::FX_MOUSE_ENTER:",pWin->win_title);
			break;
		case FX_MOUSE_EXIT:
			k_debug_strings("preferencesWindowProc::FX_MOUSE_EXIT:",pWin->win_title);
			break;
		case FX_SCROLLBAR_COMMAND:
			k_debug_integer("preferencesWindowProc::FX_SCROLLBAR_COMMAND:", ((PFXCMDMESSAGE)pMsg)->cmdCId );
			if(((PFXCMDMESSAGE)pMsg)->cmdCId == CTL_HORZ_SCROLL )
			{
				k_debug_integer("preferencesWindowProc::FX_SCROLLBAR_COMMAND:LOCATION:", ((PFXCMDMESSAGE)pMsg)->cmdMId );
				k_debug_integer("preferencesWindowProc::FX_SCROLLBAR_COMMAND:VALUE:", ((PFXCMDMESSAGE)pMsg)->parameter1);

				r.x = 0;
				r.y = 0;

				k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),
													 "\xDB\xDB\xDB\xDB\xDB\xDB\xDB\xDB\xDB\xDB",
						                             k_getUIBackgroundColor(),
													 &r,
													 (LPCSTR)k_user_getFontClass("TINYTYPE8x8"));

				k_user_DrawWindowTextToPointWithFont(k_getHandleFromWindow(pWin),
													 k_longtodec(((PFXCMDMESSAGE)pMsg)->parameter1,buffer),
						                             k_getUIMenuColor(),
													 &r,
													 (LPCSTR)k_user_getFontClass("TINYTYPE8x8"));

			}
			break;

		default:
			return DefWindowProc(pMsg);
			break;
		}
	}

	return TRUE;
}

void drawImage(int color)
{
	int px,py,i,j,k,x,y;
	float newx = 0.0;
	UINT seed;

	x = 0;
	y = 0;

	seed = k_get_rtc_second();
	srand(seed);

	k_debug_integer("drawImage::seed:", seed );

	for(i=1;i<30000;i++)
	{
		j = rand();
		k = (j<p[0]) ? 0 : ( (j<p[1]) ? 1 : ((j<p[2]) ? 2 : 3));

		newx = (a[k] * x + b[k] * y + e[k]);
		y    = (c[k] * x + d[k] * y + f[k]);
		x    = (int)newx;
		px   = x*xscale + xoffset;
		//py   = (350 - y*yscale + yoffset);
		py   = (350 - y*yscale + yoffset);

		//k_debug_integer("drawImage::px:", px );
		//k_debug_integer("drawImage::py:", py );

		if((px>=0) && (px<640) && (py>=0) && (py<480))
		{
			//k_debug_integer("drawImage::px:", px );
			//k_debug_integer("drawImage::py:", py );
			k_draw_pixel(px,py,color);
		}
	}
}

void drawMandelbrot(void)
{

	// fern
	/*
	a[0]=0    ;a[1]=.20 ;a[2]=-.15;a[3]=.85;
	b[0]=0    ;b[1]=-.26;b[2]=.28 ;b[3]=.04;
	c[0]=0    ;c[1]=.23 ;c[2]=.26 ;c[3]=-.04;
	d[0]=1.6  ;d[1]=.22 ;d[2]=.24 ;d[3]=.85;
	e[0]=0    ;e[1]=0   ;e[2]=0   ;e[3]=0;
	f[0]=0    ;f[1]=1.60;f[2]=.44 ;f[3]=1.6;
	p[0]=328  ;p[1]=2621;p[2]=4915;p[3]=32767;
	*/

	// triangle
	a[0]=0.5    ;a[1]=0.5 ;a[2]=0.5;a[3]=0;
	b[0]=0    ;b[1]=0;b[2]=0;b[3]=0;
	c[0]=0    ;c[1]=0 ;c[2]=0 ;c[3]=0;
	d[0]=0.5  ;d[1]=0.5 ;d[2]=0.5 ;d[3]=0;
	e[0]=0    ;e[1]=1.0   ;e[2]=0.5   ;e[3]=0;
	f[0]=0    ;f[1]=0;f[2]=0.5 ;f[3]=0;
	p[0]=10813  ;p[1]=21626;p[2]=32767;p[3]=32767;


	xscale  = 10;
	yscale  = 10;
	xoffset = 320;
	yoffset = 0;

	k_debug_integer("drawMandelbrot:", xoffset );

	drawImage(15);

}

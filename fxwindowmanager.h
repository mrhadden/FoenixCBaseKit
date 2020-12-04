
#ifndef __FX_WINDOWS_
#define __FX_WINDOWS_

#include "fxtypes.h"
#include "fxos.h"
#include "fxmemorymanager.h"
#include "fxeventmanager.h"
#include "fxgui.h"




/////////////////////////////////////////////////////
// Window Chrome Styles
/////////////////////////////////////////////////////



#define FXWS_OVERLAPPED  		(0x00000000)
#define FXWS_NOBORDER	  		(0x00000000)

#define FXWS_VISIBLE  			(0x00000001)
#define FXWS_DISABLED 			(0x00000002)
#define FXWS_CAPTION  			(0x00000004)

#define FXWS_SYSMENU  			(0x00000008)
#define FXWS_MAXIMIZEBOX  		(0x00000010)
#define FXWS_MINIMIZEBOX  		(0x00000020)
#define FXWS_HSCROLL  			(0x00000040)
#define FXWS_VSCROLL  			(0x00000080)
#define FXWS_SIZEBOX  			(0x00000100)
#define FXWS_TABSTOP  			(0x00000200)
#define FXWS_MAXIMIZE 			(0x00000400)
#define FXWS_MINIMIZE 			(0x00000800)
#define FXWS_ICONIC   			(0x00001000)

#define FXWS_BORDER   			(0x00010000)
#define FXWS_THICKFRAME   		(0x00020000)
#define FXWS_DLGFRAME 			(0x00040000)
#define FXWS_CHILD    			(0x00100000)
#define FXWS_CHILDWINDOW  		(0x00100000)
#define FXWS_POPUP    			(0x00200000)
#define FXWS_CLIPCHILDREN 		(0x00400000)
#define FXWS_CLIPSIBLINGS		(0x00800000)
#define FXWS_GROUP    			(0x01000000)

#define FXWS_PARENT_WIDTH		(0x02000000)
#define FXWS_PARENT_HEIGHT		(0x04000000)

#define FXWS_CENTER_MIDDLE 		(0x10000000)
#define FXWS_CENTER_TOP 		(0x20000000)
#define FXWS_CENTER_BOTTOM 		(0x40000000)

#define FXWS_GLOBAL_COORD		(0x80000000)


#define FXWS_OVERLAPPEDWINDOW 	(FXWS_CAPTION | FXWS_SYSMENU | FXWS_THICKFRAME | FXWS_MINIMIZEBOX | FXWS_MAXIMIZEBOX)
#define FXWS_POPUPWINDOW  		(FXWS_POPUP | FXWS_BORDER | FXWS_SYSMENU)



/*
#define FXWS_BORDER   			(0x00800000)
 #define FXWS_CAPTION  			(0x00c00000)
 #define FXWS_CHILD    			(0x40000000)
 #define FXWS_CHILDWINDOW  		(0x40000000)
 #define FXWS_CLIPCHILDREN 		(0x02000000)
 #define FXWS_CLIPSIBLINGS		(0x04000000)
 #define FXWS_DISABLED 			(0x08000000)
 #define FXWS_DLGFRAME 			(0x00400000)
 #define FXWS_GROUP    			(0x00020000)
 #define FXWS_HSCROLL  			(0x00100000)
 #define FXWS_ICONIC   			(0x20000000)
 #define FXWS_MAXIMIZE 			(0x01000000)
 #define FXWS_MAXIMIZEBOX  		(0x00010000)
 #define FXWS_MINIMIZE 			(0x20000000)
 #define FXWS_MINIMIZEBOX  		(0x00020000)
 #define FXWS_OVERLAPPED  		(0x00000000)
 #define FXWS_OVERLAPPEDWINDOW 	(FXWS_OVERLAPPED | FXWS_CAPTION | FXWS_SYSMENU | FXWS_THICKFRAME | FXWS_MINIMIZEBOX | FXWS_MAXIMIZEBOX)
 #define FXWS_POPUP    			(0x80000000)
 #define FXWS_POPUPWINDOW  		(FXWS_POPUP | FXWS_BORDER | FXWS_SYSMENU)
 #define FXWS_SIZEBOX  			(0x00040000)
 #define FXWS_SYSMENU  			(0x00080000)
 #define FXWS_TABSTOP  			(0x00010000)
 #define FXWS_THICKFRAME   		(0x00040000)
 #define FXWS_TILEDWINDOW  		(0x00cf0000)
 #define FXWS_VISIBLE  			(0x10000000)
 #define FXWS_VSCROLL  			(0x00200000)
*/

// SYSTEM METRICS

#define SM_CXSCREEN 0
#define SM_CYSCREEN 1
#define SM_CXVSCROLL 2
#define SM_CYHSCROLL 3
#define SM_CYCAPTION 4
#define SM_CXBORDER 5
#define SM_CYBORDER 6
#define SM_CXDLGFRAME 7
#define SM_CXFIXEDFRAME 7
#define SM_CYDLGFRAME 8
#define SM_CYFIXEDFRAME 8
#define SM_CYVTHUMB 9
#define SM_CXHTHUMB 10
#define SM_CXICON 11
#define SM_CYICON 12
#define SM_CXCURSOR 13
#define SM_CYCURSOR 14
#define SM_CYMENU 15
#define SM_CXFULLSCREEN 16
#define SM_CYFULLSCREEN 17
#define SM_CYKANJIWINDOW 18
#define SM_MOUSEPRESENT 19
#define SM_CYVSCROLL 20
#define SM_CXHSCROLL 21
#define SM_DEBUG 22
#define SM_SWAPBUTTON 23
#define SM_CXGADGET  24
#define SM_CYGADGET 25
#define SM_RESERVED3 26
#define SM_RESERVED4 27
#define SM_CXMIN 28
#define SM_CYMIN 29
#define SM_CXSIZE 30
#define SM_CYSIZE 31
#define SM_CXSIZEFRAME 32
#define SM_CXFRAME 32
#define SM_CYSIZEFRAME 33
#define SM_CYFRAME 33
#define SM_CXMINTRACK 34
#define SM_CYMINTRACK 35
#define SM_CXDOUBLECLK 36
#define SM_CYDOUBLECLK 37
#define SM_CXICONSPACING 38
#define SM_CYICONSPACING 39
#define SM_MENUDROPALIGNMENT 40
#define SM_PENWINDOWS 41
#define SM_DBCSENABLED 42
#define SM_CMOUSEBUTTONS 43
#define SM_SECURE 44
#define SM_CXEDGE 45
#define SM_CYEDGE 46
#define SM_CXMINSPACING 47
#define SM_CYMINSPACING 48
#define SM_CXSMICON 49
#define SM_CYSMICON 50
#define SM_CYSMCAPTION 51
#define SM_CXSMSIZE 52
#define SM_CYSMSIZE 53
#define SM_CXMENUSIZE 54
#define SM_CYMENUSIZE 55
#define SM_ARRANGE 56
#define SM_CXMINIMIZED 57
#define SM_CYMINIMIZED 58
#define SM_CXMAXTRACK 59
#define SM_CYMAXTRACK 60
#define SM_CXMAXIMIZED 61
#define SM_CYMAXIMIZED 62
#define SM_NETWORK 63
#define SM_CLEANBOOT 67
#define SM_CXDRAG 68
#define SM_CYDRAG 69
#define SM_SHOWSOUNDS 70
#define SM_CXMENUCHECK 71
#define SM_CYMENUCHECK 72
#define SM_SLOWMACHINE 73
#define SM_MIDEASTENABLED 74
#define SM_MOUSEWHEELPRESENT 75
#define SM_XVIRTUALSCREEN 76
#define SM_YVIRTUALSCREEN 77
#define SM_CXVIRTUALSCREEN 78
#define SM_CYVIRTUALSCREEN 79
#define SM_CMONITORS 80
#define SM_SAMEDISPLAYFORMAT 81
#define SM_CXPADDEDBORDER 92
#define SM_REMOTESESSION 0x1000



#define DEFAULT_WIN_HIGHLIGHT_COLOR		(3)


BOOL		 k_initializeWindowManager(void);
PFXNODELIST	 k_getWindowManagerList(void);
PFXNODELIST	 k_getWindowManagerClassList(void);
PFXNODELIST	 k_getWindowManagerHitList(void);
PFXNODE		 k_getWindowHitList(void);
PFXNODE		 k_getWindowList(void);
PFXNODE		 k_getWindowClassList(void);
PWINDOW		 k_getWindowFromHandle(HWND hWnd);
HWND 		 k_getHandleFromWindow(PWINDOW pWin);
UINT 		 k_getWindowRect(HWND hWnd,PRECT prect);
HWND 		 k_user_getDesktopWindow(void);
HWND 		 k_user_findWindow(LPCSTR winTitle);

int 		 k_user_getSystemMetric(UINT flag);

PWNDCLASS    k_user_CreateWindowClass(LPCSTR pClassName,LPCSTR pMenuName,UINT style,HICON icon,HCURSOR cursor,HBRUSH brush,FXWndProc pWndProc);
HANDLE		 k_user_RegisterWindowClass(PWNDCLASS pTemplate);
PWINDOW		 k_user_CreateWindow(ULONG     style,
								 LPCSTR    pClassName,
								 LPCSTR    pWindowName,
								 INT       X,
								 INT       Y,
								 INT       nWidth,
								 INT       nHeight,
								 HWND      hWndParent,
								 HMENU     hMenu,
								 HINSTANCE hInstance);

LPVOID	k_user_SetWindowData(HWND hWnd,UINT index,LPVOID data);
LPVOID	k_user_GetWindowData(HWND hWnd,UINT index);

PWINDOW	k_user_LoadDialog(LPCSTR    pWindowName,
						  LPCSTR	pDlgClassName,
   						  INT       x,
						  INT       y,
						  INT       nWidth,
						  INT       nHeight,
						  HWND      hWndParent);

BOOL	k_user_CloseWindow(HWND hWnd);
BOOL 	k_user_DestroyWindow(HWND hWnd);

HPOINTER k_user_RegisterMousePointerClass(LPCSTR pFontName,LPCSTR pCursorData);
HFONT    k_user_RegisterFontClass(LPCSTR pFontName,LPCSTR pFontData);
HFONT    k_user_getFontClass(LPCSTR pFontName);
HPOINTER k_user_getMousePointerClass(LPCSTR pPointerName);
HPOINTER k_user_setMousePointer(LPCSTR pPointerName);

BOOL		k_user_ShowWindow(HWND hWnd,UINT showFlag);
PPOINT		k_user_ClientToGlobalCoordinates(HWND hWnd,PPOINT point);
PPOINT		k_user_GlobalToClientCoordinates(HWND hWnd,PPOINT point);

PWINDOW		k_user_CreateMenu(HWND      hWndParent,
							  HMENU     hMenu,
							  HINSTANCE hInstance);

HMENU k_user_CreateMenuResource(void);
HMENU k_user_AddMenuItem(HMENU hMenu,LPCSTR menuCaption,UINT menuId);
PWINDOW	k_user_CreateMenuAnchor(HWND hWndParent,LPCSTR caption,HMENU hMenu,int x,int y,int width,int height);
PWINDOW	k_user_CreateMenuDropDown(HWND hWndParent,LPCSTR caption,HMENU hMenu,int x,int y,int width,int height);
//PWINDOW	k_user_CreateMenuDropItem(HWND hWndParent,LPCSTR caption,HMENU hMenu,int x,int y,int width,int height);
BOOL k_user_SetMenuState(HMENU hMenu,UINT cmdId,UINT state);

PWINDOW	k_user_CreateButton(HWND hWndParent,LPCSTR caption,UINT controlId,int x,int y,int width,int height);
PWINDOW	k_user_CreateVerticalScrollBar(HWND hWndParent,LPCSTR caption,UINT buttonId);
PWINDOW	k_user_CreateHorizontalScrollBar(HWND hWndParent,LPCSTR caption,UINT buttonId);


VOID k_user_CenterWindow(HWND hWnd);
void k_user_CenterBottomWindow(HWND hWnd);
void k_user_MoveWindow(HWND hWnd, int x,int y);
void k_user_MoveWindow_ex(HWND hWnd, int x,int y);
HWND k_user_getFocusWindow();
BOOL k_user_IsChildWindow(HWND hWndParent,HWND hWndChild);
//
// User Window Drawing
//
void k_user_SetRect(PRECT prect,int x,int y,int width,int height);
void k_user_ClearRect(PRECT prect);
void k_user_CopyRect(PRECT prectSrc,PRECT prectDest);

void k_user_StartWindowForDrag(HWND hWnd,int cx,int cy);
void k_user_EndWindowForDrag(HWND hWnd,int cx,int cy);

UINT k_user_DrawText(HDC hDC,LPCSTR text,PRECT locInOUt);
UINT k_user_DrawWindowTextToPoint(HWND hWnd,LPCSTR text,UINT color,PRECT locInOUt);
UINT k_user_DrawWindowTextToPointWithFont(HWND hWnd,LPCSTR text,UINT color,PRECT rectInOUt,LPCSTR charSet);
PRECT k_user_FillClientRect(HWND hWnd,UINT color);


////
//
///
BOOL k_add_child_window(PWINDOW pParent,PWINDOW pChild,OBJECTCLICKED objclickCallback);
void k_wm_construct_window(int cx,int cy,int height,int width,LPCSTR title,int color, int bgcolor);
void k_wm_vdraw_ui_window(int cx,int cy,int height,int width,char FAR *title,int color, int bgcolor);
int  k_attach_mouse_detection(PWINDOW pWin,OBJECTCLICKED objclickCallback);
void k_add_object_hit_node(PCLICKDETECTED pcd);
PFXNODE k_point_in_nodeslist(int x,int y);
PFXNODE k_point_in_any_nodeslist(PFXNODELIST hitList,int x,int y);
int k_attach_mouse_detection_local(PFXNODELIST list,PWINDOW pWin,OBJECTCLICKED objclickCallback);
void k_add_object_hit_node_local(PFXNODELIST list,PCLICKDETECTED pcd);
void k_update_hover_location(PWINDOW pWin);

PFXNODE k_remove_closed_windows_from_list(PFXNODE ptr);
PFXNODE k_point_hit_scan(int x,int y);
VOID    k_point_hit_resetdepth_nodeslist(PFXNODELIST hitList,int depth);
PFXNODE k_point_hit_scan_nodeslist(PFXNODELIST hitList,int x,int y);


//
//
//
void k_text_callback(PWINDOW textWindow);
int  k_render_text(HWND pParent,LPCSTR clickableText,int cx,int cy,char color,OBJECTCLICKED callback);

void k_func_drawAnchorText(PWINDOW pWin,UINT fontColor,UINT menuColor);

//
// deallocators
//
VOID k_deallocate_window_class(LPCSTR name,LPVOID data);
VOID k_deallocate_window_object(LPCSTR name,LPVOID data);
VOID k_deallocate_menu_object(LPCSTR name,LPVOID data);
VOID k_deallocate_hit_class(LPCSTR name,LPVOID data);
VOID k_deallocate_font_object(LPCSTR name,LPVOID data);
VOID k_deallocate_cursor_object(LPCSTR name,LPVOID data);
VOID k_clean_closed_windows(void);

//
BOOL DefWindowProc(PFXOSMESSAGE pMsg);
BOOL DlgWindowProc(PFXOSMESSAGE pMsg);
BOOL DlgAboutWindowProc(PFXOSMESSAGE pMsg);
BOOL buttonWindowProc(PFXOSMESSAGE pMsg);
BOOL vscrollbarWindowProc(PFXOSMESSAGE pMsg);
BOOL hscrollbarWindowProc(PFXOSMESSAGE pMsg);
BOOL menuWindowProc(PFXOSMESSAGE pMsg);
BOOL gadgetWindowProc(PFXOSMESSAGE pMsg);
BOOL menuAnchorWindowProc(PFXOSMESSAGE pMsg);
BOOL menuDropDownWindowProc(PFXOSMESSAGE pMsg);
BOOL listboxWindowProc(PFXOSMESSAGE pMsg);
//BOOL menuItemWindowProc(PFXOSMESSAGE pMsg);
//
void k_menuHitDetected(PWINDOW pWin);
void k_windowHitDetected(PWINDOW pWin);
void k_buttonHitDetected(PWINDOW pWin);
VOID k_switch_window_page(HWND hWnd,UINT toPage,UINT fromPage,BOOL bFillSrc);

//
//
//
typedef struct  _childMessage_t
{
	MSGTYPE msgType;
	LPVOID  msgData;
	UINT	dataSize;
} EACHCHILD_MSG;
typedef EACHCHILD_MSG FAR *PEACHCHILD_MSG;

BOOL _k_user_send_child_message(HWND hParentWindow,MSGTYPE type,LPVOID data,UINT size);
//
// Node iterators
//
void k_iterate_menus(LPVOID ctx,LPVOID data);
void k_iterate_set_menu_state(LPVOID ctx,LPVOID data);
void k_iterate_dropdown_menu_captions(LPVOID ctx,LPVOID data);
void k_iterate_children(LPVOID ctx,LPVOID data);
BOOL find_child_window(LPVOID ctx,LPVOID data);
BOOL find_window_caption(LPVOID ctx,LPVOID data);
void k_size_dropdown_menus(LPVOID ctx,LPVOID data);
BOOL k_is_window_closed(LPVOID name,LPVOID data);
//
//
void debug_window_node(LPVOID ctx,LPVOID data);
void debug_clickable_node(LPVOID ctx,LPVOID data);
//

#endif

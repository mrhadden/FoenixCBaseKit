/*
 * fxmenumanager.h
 *
 *  Created on: Oct 1, 2019
 *      Author: mtbush
 */

#ifndef FXMENUMANAGER_H_
#define FXMENUMANAGER_H_


BOOL k_initializeMenuManager(void);

HMENURESOURCE k_menu_CreateMenuResource();
PWINDOW	k_menu_CreateMenu(HWND      	hWndParent,
						  HMENURESOURCE hMenuRes,
						  HINSTANCE 	hInstance);



//
//
//
BOOL mainMenuWindowProc(PFXOSMESSAGE pMsg);

#endif /* FXMENUMANAGER_H_ */

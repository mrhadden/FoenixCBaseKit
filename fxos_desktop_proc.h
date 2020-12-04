
#ifndef __FX_DESKTOP_
#define __FX_DESKTOP_

#include "fxtypes.h"

#ifdef USE_FX256_FMX
#include "fxc256fmx.h"
#else
#include "fxc256.h"
#endif

#include "fxstring.h"
#include "fxeventmanager.h"
#include "fxgui.h"
#include "fxwindowmanager.h"

#define DESK_MENU_FILE 		(20)
#define DESK_MENU_VOLINFO 	(21)
#define DESK_MENU_RENAME	(22)
#define DESK_MENU_DISKCOPY	(23)
#define DESK_MENU_MOUNT		(24)
#define DESK_MENU_EJECT		(25)
#define DESK_MENU_RUN		(26)
#define DESK_MENU_PROCESSES	(27)
#define DESK_MENU_REFRESH	(28)
#define DESK_MENU_CLI		(29)

#define DESK_MENU_EDIT 		(30)
#define DESK_MENU_COPY		(31)
#define DESK_MENU_CUT		(32)
#define DESK_MENU_PASTE		(33)
#define DESK_MENU_PREFS		(34)

#define DESK_MENU_DEBUG			 (50)
#define DESK_MENU_DBG_FONTS		 (51)
#define DESK_MENU_DBG_WINDOW	 (52)
#define DESK_MENU_DBG_SELECT	 (53)
#define DESK_MENU_DBG_DRAG  	 (54)
#define DESK_MENU_DBG_RUBBERBAND (55)

#define	DESK_MENU_DBG_HOURGLASS  (56)
#define DESK_MENU_DBG_HELP       (57)
#define	DESK_MENU_DBG_ARROW      (58)
#define DESK_MENU_DBG_RESIZE	 (59)


#define DESK_MENU_ABOUT		(40)
#define DESK_MENU_ABOUTOS	(41)
#define DESK_MENU_DEVOPS	(42)



VOID DesktopEnvironmentProc(PFXOSMESSAGE pMsg);
BOOL DesktopWindowProc(PFXOSMESSAGE pMsg);
BOOL testWindowProc(PFXOSMESSAGE pMsg);
BOOL preferencesWindowProc(PFXOSMESSAGE pMsg);
BOOL textboxWindowProc(PFXOSMESSAGE pMsg);



#endif

#ifndef _FX_GUI
#define _FX_GUI

#include "fxfont.h"


extern CHAR FAR MOUSE_POINTER_ARROW[];
extern CHAR FAR MOUSE_POINTER_HELP[];
extern CHAR FAR MOUSE_POINTER_HOURGLASS[];
extern CHAR FAR MOUSE_POINTER_RESIZE[];


#define FONTW (k_font_getFontWidth())
#define FONTH (k_font_getFontHeight())

#define FILLCOLOR_TRANSPARENT	(0x00)

typedef void (*OBJECTCLICKED)(PWINDOW console);
typedef struct _click_detected
{
	PWINDOW window;
	OBJECTCLICKED handler;
}CLICKDETECTED;
typedef CLICKDETECTED FAR *PCLICKDETECTED;


#define HITTOWND(a)          (((PCLICKDETECTED)a->data)->window)
#define HITTOCLICKABLE(a)    ((PCLICKABLE)((PCLICKDETECTED)a->data)->window->clickable)


PMENU k_draw_menu(HMENU hMenu,int color, int bgcolor);

PMENU k_vdraw_ui_menu(int cx,int cy,int width,int height,LPCSTR title,int color, int bgcolor);
PMENU k_vdraw_ui_menu_ex(int cx,int cy,int width,int height,LPCSTR title,int color, int bgcolor,UINT page);
PMENU k_vdraw_ui_menu_with_rect(int cx,int cy,int width,int height,LPCSTR title,int color, int bgcolor,LPVOID *prects);
PMENU k_render_menu(PMENU menu);

typedef struct _current_palette_map
{
	INT CUR_DESKTOP;
	INT CUR_BACKGROUND;
	INT CUR_FONT;
	INT CUR_SELECTED_FONT;
	INT CUR_HIGHLIGHT_COLOR;
	INT CUR_WINDOWFRAME;
	INT CUR_WINDOWBORDER;
	INT CUR_WINDOWSHADOW;
	INT CUR_MENU;
	INT CUR_GADGET;
	INT CUR_COLOR[15];
}CUR_PALETTE_MAP;
typedef CUR_PALETTE_MAP FAR *PCUR_PALETTE_MAP;


int k_getUIBackgroundColor();
int k_getUIDesktopColor();
int k_getUIFontColor();
int k_getUIFontSelectedColor();
int k_getUIHighlightColor();
int k_getUIWindowFrameColor();
int k_getUIWindowBorderColor();
int k_getUIWindowShadowColor();
int k_getUIMenuColor();
int k_getUIGadgetColor();
int k_getUIColor(int index);


void k_draw_nonclient_area(PRECT wndRect,PRECT clientRect,UINT style,LPCSTR title,int color,int bgcolor);



void k_drawPixel(char fcolor,char fcolor2,char fcolor3);
void setFColors(void);
void setBColors(void);

void  k_init_vicky(void);

void k_enable_text_mode(void);
void k_enable_bitmap_mode(void);

#define VIDEO_MODE_640X480	(0x01)
#define VIDEO_MODE_640X480D	(0x02)
#define VIDEO_MODE_800X600	(0x04)
#define VIDEO_MODE_800X600D	(0x08)
#define VIDEO_MODE_UNKNOWN	(0xFF)
UINT k_get_video_mode(void);

LONG k_gui_get_pixel_offset(int x,int y);
LONG k_gui_get_pixel_offset_width(int x,int y,int width);



void k_reboot(void);
void k_restore(void);
void k_init_mouse(void);
void k_init_graphics(void);

int k_get_cols_visible(void);
int k_get_cols_per_line(void);
int k_get_lines_visible(void);
int k_get_lines_max(void);

char FAR* k_pad_string(char FAR* dest,char FAR* src,char filler,int width);

void setColors(void);
void defineGrayPalette(void);

void k_set_rect(PRECT prect,int x,int y, int width,int height);

void k_shadow_bitblt(int x0, int y0, int width, int height, int x1, int y1);
void k_shadow_fill_rect(int x0, int y0, int width, int height, UCHAR color);
void k_shadow_fill_rect_address(LPCHAR bank,int x0, int y0, int width, int height, UCHAR color);
void k_scratch_save_bitblt(int x0, int y0, int width, int height, int x1, int y1);
void k_scratch_restore_bitblt(int x0, int y0, int width, int height, int x1, int y1);


void k_bitblt(int x0, int y0, int width, int height, int x1, int y1);

#define BLT_DIR_TOPDOWN  (1)
#define BLT_DIR_BOTTOMUP (-1)
void k_memory_bitblt(LPCHAR srcBank,int x0, int y0, int width, int height,LPCHAR destBank, int x1, int y1, int direction);

void k_draw_lines(void);

void k_draw_pixel(long x,long y,char pcolor);
void k_draw_pixel_ex(long x,long y,char pcolor,UINT page);

void k_draw_segments(int xc, int yc, int x, int y,int color);
void k_draw_circle(int xc, int yc, int r, int color);
void k_draw_filled_circle(int xc, int yc, int r, int color);
void k_draw_line(int x0, int y0, int x1, int y1,int color);
void k_draw_line_ex(int x0, int y0, int x1, int y1,int color,UINT page);
void k_draw_rect_slow(int left,int top, int right, int bottom, char color);
void k_draw_filled_rect(int cx,int cy,int height,int width,int color);

void k_vdraw_filled_rect(int cx,int cy,int height,int width,int color);

void k_paint_brush_rect(long x,long y,int width,int height,BYTE pattern);
void k_paint_brush_at_address(char FAR * pdst,int width,int height,BYTE pattern);


void k_fill_line(int cx,int cy,int width,int color);
void k_fill_bank(int bankId,char fcolor);

int k_font_index(char a);
void k_font_draw(char FAR *arg);
void k_put_font(char outChar,int row,int column,char textC);
void k_put_font_scaled(char outChar,int row,int column,char color,int scale);

int k_put_binary_font_point(LPCHAR fontSet, char outChar,int cx,int cy,char color);
int k_put_binary_variablefont_point(LPCHAR fontSet, char outChar,int cx,int cy,int width,int height,char color);
int k_put_binary_variablefont_point_ex(LPCHAR fontSet, char outChar,int cx,int cy,int width,int height,char color,UINT page);

int k_draw_text(char FAR *text,int row,int col,char color);
int k_draw_text_scaled(char FAR *text,int row,int col,char color,int scale);

int k_put_font_point(char outChar,int cx,int cy,char color);
int k_draw_text_point(LPCSTR text,int x,int y,char color);
int k_draw_text_point_ex(LPCSTR text,int x,int y,char color,UINT page);

int k_draw_text_point_with_font(LPCSTR text,LPCSTR charSet,int x,int y,char color);
int k_draw_text_point_with_font_ex(LPCSTR text,LPCSTR charSet,int x,int y,char color,UINT page);

void k_draw_char_scaled_point(char charCode,int locX,int locY,char color,int scale);

int k_put_draw_text(int row,int col,char FAR *text,char color,char bcolor);
void k_draw_char(char charCode,int row,int column,char color);
void k_draw_fontset(void);

int k_get_font_metrics(FONTMETRIC FAR *metric);

void k_draw_char_scaled(char charCode,int row,int column,char color,int scale);

void k_render_bitmap_info(int fcolor);

// windowing
HANDLE k_create_window(int bx,int by,int bw,int bh,char FAR* title);
void k_window_draw_background(int bx,int by, int bw,int bh,char bcolor);

int k_put_wingadget_point(char iconCode,int cx,int cy,char color);
int k_put_winicon_point(char iconCode,int cx,int cy,int paletteId,int mode);
void k_put_winicon_scaled(char iconCode,int cx,int cy,char paletteId,int mode,int scale);

void k_draw_ui_window(int cx,int cy,int height,int width,char FAR *title,int color,int bgcolor);
void k_vdraw_ui_window(PWINDOW pWin,ULONG style,int cx,int cy,int height,int width,char FAR *title,int color,int bgcolor);
void k_vdraw_ui_window_ex(PWINDOW pWin,ULONG style,int cx,int cy,int height,int width,char FAR *title,int color, int bgcolor,UINT page);


void k_vdma_move_rect(long x,long y,int width,int height,int dx,int dy,unsigned char pcolor,UINT page);
void k_vdma_fill(char FAR * pdst,long size,unsigned char data);
void k_vdma_fill_address(char FAR * pdst,int width,int height,unsigned char data);
void k_vdma_fill_rect(long x,long y,int width,int height,unsigned char data);

#define BITMAP_BACK    (0x10)
#define BITMAP_FRONT   (0x00)
#define BITMAP_NOBRUSH (0x00)

void k_vdma_fill_rect_ex(long x,long y,int width,int height,unsigned char pcolor,UINT page);
void k_vdma_fill_address_ex(char FAR * pdst,int width,int height,unsigned char data,UINT page);
void k_vdma_copy_address_ex(char FAR * pdst,char FAR * psrc,int width,int height);

int k_point_in_list_depth(int x,int y,PCLICKABLE clickableList,int cSize);
int k_point_in_list(int x,int y,PCLICKABLE clickableList,int cSize);
PMENU k_create_context_menu(int cx,int cy,int width,int height,char FAR **captions,int color, int bgcolor);

PMENU k_create_context_menu_in_window(PWINDOW pWin,UINT selected,UINT unselected,int cx,int cy,int width,int height,char FAR **captions,int color, int bgcolor);
PMENU k_create_context_menu_in_window_ex(PWINDOW pWin,UINT selected,UINT unselected,int cx,int cy,int width,int height,char FAR **captions,char FAR *chrome,int color, int bgcolor);

PMENU k_create_context_menus(PWINDOW pWin,int cx,int cy,int width,int height,PMENUDROPDOWNDATA menus,int color, int bgcolor);
PMENU k_render_context_menu(PMENU menu);
void k_free_context_menu(PMENU pmenu,char fcolor,char bcolor);


PFXNODE k_point_in_nodes(int x,int y);
void k_add_window_hit_node(PCLICKDETECTED pcd);


PWINDOW k_create_ui_window_class(int cx,int cy,int height,int width,LPCHAR title,LPCHAR className,FXWndProc wndProc);


int k_render_wingadget(char gadgetCode,int cx,int cy,char color,OBJECTCLICKED callback);
void k_gadget_title_front_callback(PWINDOW gadgetWindow);
void k_gadget_title_back_callback(PWINDOW gadgetWindow);



//extern void pascal init_sd_card(void);
void sd_card_dir(void);


UINT k_font_getFontHeight(void);
UINT k_font_getFontWidth(void);

//
// official API naming convention functions
//
VOID k_gui_init_mousepointer(BOOL enable);
VOID k_gui_set_mousepointer(UINT index,LPVOID pointerData);
VOID k_set_text_colors(VOID);

#define CHKLIST_MAX 	(6)
extern CLICKABLE FAR clickList[CHKLIST_MAX];
extern PCLICKABLE FAR hitList[CHKLIST_MAX];

extern char FAR buffer[32];
extern char FAR strbuf[32];
extern char FAR spinner[];
extern char FAR titles[3][10];

extern char FAR *version_title;

extern int g_key_index;


extern char FAR *p_message1;
extern char FAR *p_message2;

//extern C256Task tasks[2];
//extern HANDLE consoles[2];




#endif

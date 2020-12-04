
#ifndef __FX_DRAWING_STD
#define __FX_DRAWING_STD


void k_test_bitmap_drawing(void);
void k_draw_font(char outChar,int row,int column,char color,char bcolor,char fontSetId);
void k_draw_font_at_point(char outChar,int mx,int my,char color,char bcolor,char fontSetId);
void k_test_bitmap_drawing_org(void);
//PMENU k_vdraw_ui_menu(int cx,int cy,int width,char FAR *title,int color, int bgcolor);
//PMENU k_create_context_menu(int cx,int cy,int width,int height,char FAR **captions,int color, int bgcolor);
//void k_free_context_menu(PMENU pmenu,char fcolor,char bcolor);
int k_point_in_list_depth(int x,int y,PCLICKABLE  clickableList,int cSize);

void k_sd_init(void);
void k_sd_present(void);
void k_sd_dir(void);


#endif

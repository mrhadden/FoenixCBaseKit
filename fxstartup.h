
#ifndef __FXSTARTUP
#define __FXSTARTUP

#include "fxos.h"


typedef struct _fx_irq_data
{
	int line;
	char FAR* keycode;
} IRQDATA;
typedef IRQDATA FAR* PIRQDATA;

typedef struct _task
{
	unsigned char SPL;
	unsigned char SPH;
	char FAR *pstack;
} TASK;

typedef struct _task_stack
{
	unsigned char FAR *SS;
} TASK_STACK;

typedef struct int_regs
{
	unsigned char PB;
	unsigned char PH;
	unsigned char PL;
	unsigned char PP;
	unsigned char DB;
	unsigned char DH;
	unsigned char DL;
	unsigned char AH;
	unsigned char AL;
	unsigned char XH;
	unsigned char XL;
	unsigned char YH;
	unsigned char YL;
} INT_REGS;
typedef INT_REGS FAR* PINT_REGS;

typedef void (*C256Task)(HANDLE console, void FAR* arg);

typedef void (*task_type)(void);

void t0(void);
void t1(void);

void disable(void);
void enable(void);

void k_init_multitasking(void);
void k_task_switch(void);
void t_make_task(task_type task, unsigned int ssize, int id);


PMENU k_vdraw_ui_menu(int cx, int cy, int width, char FAR *title, int color,int bgcolor);

#define PASCAL		pascal	

void k_delay(int millisecs);

void k_set_foreground_palette(char paletteId);
void k_set_text_gamma(char c);
void k_set_text_color(char c);

void k_get_c256_major_version(char *buffer);
void k_get_c256_minor_version(char *buffer);

void k_get_fpga_date_day(char *buffer);
void k_get_fpga_date_month(char *buffer);
void k_get_fpga_date_year(char *buffer);

void k_drawPixel(char fcolor, char fcolor2, char fcolor3);
void setFColors(void);
void setBColors(void);
void k_test_graphics(void);
void k_test_desktop(void);
void k_test_tasking(void);
void k_test_mouse(void);

void k_init_vicky(void);



void k_reboot(void);
void k_restore(void);
void k_init_mouse(void);
void k_init_graphics(void);

void setColors(void);
void k_draw_lines(void);

void k_draw_pixel(long x, long y, char pcolor);
void k_draw_segments(int xc, int yc, int x, int y, int color);
void k_draw_circle(int xc, int yc, int r, int color);
void k_draw_filled_circle(int xc, int yc, int r, int color);
void k_draw_line(int x0, int y0, int x1, int y1, int color);
void k_draw_rect_slow(int left, int top, int right, int bottom, char color);
void k_draw_filled_rect(int cx, int cy, int height, int width, int color);

void k_vdraw_filled_rect(int cx, int cy, int height, int width, int color);

void k_fill_line(int cx, int cy, int width, int color);
void k_fill_bank(int bankId, char fcolor);

int k_font_index(char a);
void k_font_draw(char FAR *arg);
void k_put_font(char outChar, int row, int column, char textC);
void k_put_font_scaled(char outChar, int row, int column, char color, int scale);

int k_draw_text(char FAR *text, int row, int col, char color);
int k_draw_text_scaled(char FAR *text, int row, int col, char color, int scale);

int k_put_font_point(char outChar, int cx, int cy, char color);
int k_draw_text_point(char FAR *text, int x, int y, char color);

void k_draw_char_scaled_point(char charCode, int locX, int locY, char color,
		int scale);

int k_put_draw_text(int row, int col, char FAR *text, char color, char bcolor);
void k_draw_char(char charCode, int row, int column, char color);
void k_draw_fontset(void);

int k_get_font_metrics(FONTMETRIC FAR *metric);

void k_draw_char_scaled(char charCode, int row, int column, char color,
		int scale);

void k_render_bitmap_info(int fcolor);

// windowing
//HANDLE k_create_window(int bx, int by, int bw, int bh, char FAR* title);
//void k_window_draw_background(int bx, int by, int bw, int bh, char bcolor);

int k_put_wingadget_point(char iconCode, int cx, int cy, char color);
//int k_put_winicon_point(char iconCode, int cx, int cy, char paletteId, int mode);
//void k_put_winicon_scaled(char iconCode, int cx, int cy, char paletteId,int mode, int scale);

void k_draw_ui_window(int cx, int cy, int height, int width, char FAR *title,
		int color, int bgcolor);
void k_vdraw_ui_window(int cx, int cy, int height, int width, char FAR *title,
		int color, int bgcolor);

void k_vdma_fill(char FAR * pdst, long size, unsigned char data);
void k_vdma_fill_address(char FAR * pdst, int width, int height,
		unsigned char data);
void k_vdma_fill_rect(long x, long y, int width, int height, unsigned char data);

int k_get_key_handler(void);
char k_get_key_buffer(char position);

int k_system_call(char FAR* data);

void k_tickManagement(long FAR *pktick);

void k_query_environment(void);
void k_run_loop(void);

extern void pascal init_sd_card(void);
void sd_card_dir(void);

void k_init_keyboard(void);
void k_uart_enableirq(void);
void k_uart_enableirq_ports(void);
void k_print_uart_status(int lc);

void k_print_uart_status_com1(int lc);
void k_print_uart_status_com2(int lc);

void k_dispatch_reg0(PIRQDATA pIRQ);
void k_dispatch_reg1(PIRQDATA pIRQ);
void k_dispatch_reg2(PIRQDATA pIRQ);

extern char FAR buffer[32];
extern char FAR strbuf[32];
extern char FAR spinner[];
extern char FAR titles[3][10];

extern char *version_title;

extern int g_key_index;

extern int FAR _window_index;
extern Window FAR _k_window_list[];

//extern char *p_message1;
//extern char *p_message2;

//extern C256Task tasks[2];
extern HANDLE consoles[2];

//extern long ktick;

#endif

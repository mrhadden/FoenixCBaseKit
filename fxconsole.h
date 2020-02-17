
#ifndef __FX_CONSOLE_
#define __FX_CONSOLE_

#include <string.h>
#include <stdlib.h>
#include "fxtypes.h"

#ifdef USE_FX256_FMX
#include "fxc256fmx.h"
#else
#include "fxc256.h"
#endif

#include "fxstring.h"
#include "fxstringtable.h"

#define WIN_BORDER_CHAR_TOP 		   	(0xC4)
#define WIN_BORDER_CHAR_BOTTOM 		   	(0xC4)
#define WIN_BORDER_CHAR_EDGE 		   	(0xBA)
#define WIN_BORDER_CHAR_CORNER_TLEFT	(0xD6)
#define WIN_BORDER_CHAR_CORNER_BLEFT	(0xD3)
#define WIN_BORDER_CHAR_CORNER_TRIGHT  	(0xB7)
#define WIN_BORDER_CHAR_CORNER_BRIGHT  	(0xD3)


#define KEY_BUFFER_MAX		(128)

typedef struct _fx_spinner_ctx
{
	int index;
	UCHAR FAR *spinner;
}SPINNERCTX;
typedef SPINNERCTX FAR *PSPINNERCTX;

typedef struct _fx_console_ctx
{
	INT  	lineBufferIndex;
	UCHAR 	lineBuffer[KEY_BUFFER_MAX];
	BOOL 	isShifted;
	LPVOID	userData;
	LPVOID  screenBuffer;
	LPVOID	Reserved1;
}CONSOLECTX;
typedef CONSOLECTX FAR *PCONSOLECTX;

typedef UINT (*FXCommandHandler)(PFXPROCESS pmsg,PFXNODE tokens);

#define TOKEN_WORD 0x00
#define TOKEN_TEXT 0x00

typedef enum _tokenType
{
	TTYPE_WORD,
	TTYPE_NUMBER,
	TTYPE_STRING,
	TTYPE_LABEL,
	TTYPE_LINE,
	TTYPE_EQUALS,
	TTYPE_OPERATOR,
	TTYPE_LEFT_PAREN, TTYPE_RIGHT_PAREN, TTYPE_EOF, TTYPE_COMMA, TTYPE_LEFT_BLOCK,
	TTYPE_RIGHT_BLOCK, TTYPE_BANG, TTYPE_NOTEQUAL, TTYPE_ANNOTATION,
	TTYPE_GTE, TTYPE_LTE, TTYPE_GT, TTYPE_LT, TTYPE_PERIOD, TTYPE_POINTER, TTYPE_NOOP,
	TTYPE_START_BLOCK, TTYPE_END_BLOCK,TTYPE_AND,TTYPE_OR,TTYPE_VARIADIC, TTYPE_DOLLAR
} TOKENTYPE;
typedef TOKENTYPE FAR *PTOKENTYPE;


typedef struct _token
{
	TOKENTYPE 	type;
	UINT		depth;
	LPCHAR 		text;
}TOKEN;
typedef TOKEN FAR *PTOKEN;

typedef enum _tokenizeState
{
	STATE_DEFAULT, STATE_WORD, STATE_NUMBER, STATE_STRING, STATE_COMMENT, STATE_BLOCK, STATE_NOT, STATE_ANNOTATION, STATE_POINTER
}TOKENIZESTATE;
typedef TOKENIZESTATE FAR *PTOKENIZESTATE;

typedef struct _command_args
{
	FXCommandHandler proc;
	PFXNODE			 tokens;
}COMMANDARGS;
typedef COMMANDARGS FAR *PCOMMANDARGS;


void k_init_spinner(PSPINNERCTX ctx);
void k_updatespinner(int pos,int line,PSPINNERCTX ctx);

VOID k_initialize_text(VOID);
void k_enable_text_mode(void);

int k_initialize_text_fonts(UINT flag);

int k_get_cols_visible(void);
int k_get_cols_per_line(void);
int k_get_lines_visible(void);
int k_get_lines_max(void);

void k_enable_border(void);
void k_disable_border(void);
void k_set_border_color(char r, char g, char b);

void k_set_text_font_page(UINT page);
void k_enable_text_cursor(UINT page);
void k_set_cursor_position(int x,int y);

void k_clear_screen(int bcolor);
void k_print(char * message);
void k_put_char(int col, int row, char c, int fcolor, int bcolor);
int k_put_string(int col, int row, char * text, int fcolor, int bcolor);
int k_put_color(int col,int row,char * textColor);
void k_text_mode_dialog(int x,int y,int width,int height,LPCSTR message);
void k_window_draw(int bx,int by,int bw,int bh,char FAR* title);

void k_create_text_window(PRECT prect,TITLE title,PHANDLE phandle);
void k_window_draw_background(int bx,int by, int bw,int bh,char bcolor);

VOID k_console_process_command(LPCHAR commandLine,PFXPROCESS process);

void DefConsoleProc(PFXOSMESSAGE pMsg);
void OnMouse(PFXPROCESS p,int button,int x,int y);
void ObjectClicked(PWINDOW console);

void DefConsoleProc2(PFXOSMESSAGE pMsg);

VOID foreach_file_entry(LPVOID ctx,LPVOID data);

PFXNODE tokenize(LPCHAR commandline);
LPCHAR token_to_string(TOKENTYPE tt);
PTOKEN newToken(PFXSTRING name,TOKENTYPE type);
void sig_walk(LPVOID signature,LPVOID pdata);
VOID getTokenSig(PFXNODE tokens,LPVOID signature);


UINT cmd_CLEAR(PFXPROCESS process,PFXNODE tokens);
UINT cmd_WORKBENCH(PFXPROCESS process,PFXNODE tokens);
UINT cmd_TESTSD(PFXPROCESS process,PFXNODE tokens);
UINT cmd_DIR(PFXPROCESS process,PFXNODE tokens);
UINT cmd_VOL(PFXPROCESS process,PFXNODE tokens);
UINT cmd_FCOLOR(PFXPROCESS process,PFXNODE tokens);
UINT cmd_BCOLOR(PFXPROCESS process,PFXNODE tokens);
UINT cmd_INIT(PFXPROCESS process,PFXNODE tokens);
UINT cmd_NEWDIR(PFXPROCESS process,PFXNODE tokens);
UINT cmd_FRONT(PFXPROCESS process,PFXNODE tokens);
UINT cmd_BACK(PFXPROCESS process,PFXNODE tokens);
UINT cmd_TASKS(PFXPROCESS process,PFXNODE tokens);
UINT cmd_FRONT(PFXPROCESS process,PFXNODE tokens);
UINT cmd_BACK(PFXPROCESS process,PFXNODE tokens);
UINT cmd_CHRDIR(PFXPROCESS process,PFXNODE tokens);
UINT cmd_DISPLAY(PFXPROCESS process,PFXNODE tokens);
UINT cmd_SEND(PFXPROCESS process,PFXNODE tokens);

#endif

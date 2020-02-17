#include "fxos.h"
#include "fxos_build_parameters.h"

LPVOID heap_start = (LPVOID)FXOS_BUILD_NEAR_HEAP_ADDR;
LPVOID heap_end   = (LPVOID)FXOS_BUILD_NEAR_HEAP_TOP;

int line = 2;

static int  msp = 0;
static char mainspinner[] = {'|','/','-','\\'};
static ULONG THIS_MODULE = 0x00000000;

void main(void)
{
	char rmbuffer[16];
	int pos = 0;
	ULONG availableMem = 0;
	KRESULT kerr = KERR_SUCCESS;

	k_initializeZeroPage();

	k_init_keyboard();
	k_uart_enableirq_ports();

	k_debug_crlf();
	k_debug_string("**********************************\r\n");
	k_debug_string("******  Welcome to FX/OS   *******\r\n");
	k_debug_string("******       Booting       *******\r\n");
	k_debug_string("**********************************\r\n");

	k_debug_string_com1("DBG:MSG:%OSBOOTING COM1%");
	k_debug_string_com2("DBG:MSG:%OSBOOTING COM2%");

	k_initialize_text_fonts(0);
	k_initialize_text();

	k_enable_text_mode();
	k_enable_text_cursor(1);

	k_debug_string("k_clear_screen\r\n");
	k_clear_screen(0);

	k_text_mode_dialog(0,0,71,15,NULL);

	line = k_report_configuration(2,line);

	k_debug_integer("sizeof(unsigned short int):",sizeof(unsigned short int));
	k_debug_integer("sizeof(size_t):",sizeof(size_t));
	k_debug_integer("sizeof(unsigned short int):",sizeof(unsigned short int));
	k_debug_integer("sizeof(unsigned long):",sizeof(unsigned long));

	k_debug_integer("k_get_cols_visible:",k_get_cols_visible());
	k_debug_integer("k_get_cols_per_line:",k_get_cols_per_line());
	k_debug_integer("k_get_lines_visible",k_get_lines_visible());
	k_debug_integer("k_get_lines_max:",k_get_lines_max());




	while(1)
	{
		asm sei;
		asm NOP;
		asm cli;
	};
}

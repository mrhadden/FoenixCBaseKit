
#include "fxkernel.h"


static ULONG FXOSVERSION = 0x010000;
static PFAR  FXOSVERSIONSTRING = "FXOS Version 1.0.0 Beta";


static char k16buffer[16];
static char bytetohex[] = {'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'};
static char bytetodec[] = {'0','1','2','3','4','5','6','7','8','9'};

PFAR k_getFXOSVersionName(void)
{
	return FXOSVERSIONSTRING;
}

int k_report_configuration(int line)
{
	char krcBuffer[16];
	int pos = 0;

	pos = k_put_string(pos,line,"C256 Foenix Computer",15,0);
	pos = 0;
	line++;
	pos = k_put_string(pos,line,k_getFXOSVersionName(),15,0);

	pos = 0;
	line++;

	pos = k_put_string(pos,line,"C256 Board:",15,0);
	k_get_c256_major_version(krcBuffer);
	pos = k_put_string(pos,line,krcBuffer,15,0);
	k_get_c256_minor_version(krcBuffer);
	pos = k_put_string(pos,line,krcBuffer,15,0);

	pos  = 0;
	line++;

	pos = k_put_string(pos,line,"FPGA Date :",15,0);
	k_get_fpga_date_month(krcBuffer);
	pos = k_put_string(pos,line,k_strip_padding(krcBuffer),15,0);
	pos = k_put_string(pos,line,"/",15,0);
	k_get_fpga_date_day(krcBuffer);
	pos = k_put_string(pos,line,k_strip_padding(krcBuffer),15,0);
	pos = k_put_string(pos,line,"/",15,0);
	k_get_fpga_date_year(krcBuffer);
	pos = k_put_string(pos,line,k_strip_padding(krcBuffer),15,0);

	line++;

	return line;
}

void k_debug_string(char FAR* debugString)
{
	k_debug_string_com2(debugString);
}

void k_debug_string_com1(char FAR* debugString)
{
	char FAR* ptr = debugString;
	while(*ptr)
	{
		while(!(UART1_BASE[5] & 0x20))
		{
		}
		UART1_BASE[0] = *ptr;
		ptr++;
	}
	return;
}

void k_debug_string_com2(char FAR* debugString)
{
	char FAR* ptr = debugString;
	while(*ptr)
	{
		while(!(UART2_BASE[5] & 0x20))
		{
		}
		UART2_BASE[0] = *ptr;
		ptr++;
	}
	return;
}

void k_debug_pointer(char FAR* debugString, void FAR* p)
{
	k_debug_string(debugString);

	k_debug_string(k_bytetohex(H24BYTE(p),k16buffer));
	k_debug_string(k_bytetohex(M24BYTE(p),k16buffer));
	k_debug_string(k_bytetohex(L24BYTE(p),k16buffer));

	k_debug_string("\r\n");

	return;
}

void k_debug_integer(char FAR* debugString, UINT n)
{
	k_debug_string(debugString);

	k_debug_string(k_inttodec(n,k16buffer));

	k_debug_string("\r\n");

	return;
}

void k_debug_long(char FAR* debugString, ULONG n)
{
	k_debug_string(debugString);

	k_debug_string(k_longtodec(n,k16buffer));

	k_debug_string("\r\n");

	return;
}

void k_debug_hex(PFAR debugString, UCHAR n)
{
	k_debug_string(debugString);

	k_debug_string(k_bytetohex(n,k16buffer));

	k_debug_string("\r\n");

	return;
}

PFAR k_strip_padding(PFAR orgText)
{
	PFAR p = orgText;
	while(*p)
	{
		if(*p != '0')
		{
			break;
		}
		p++;
	}

	return p;
}

PFAR k_inttodec(UINT b,char FAR *bhbuffer)
{
	int tthou = 0;
	int thou  = 0;
	int hund  = 0;
	int tens  = 0;
	int ones  = 0;

	bhbuffer[0] = '0';
	bhbuffer[1] = '0';
	bhbuffer[2] = '0';
	bhbuffer[3] = '0';
	bhbuffer[4] = '0';
	bhbuffer[5] = 0;

	tthou = (int)((b / 10000));
	b = (b - 10000*tthou);
	thou = (int)((b / 1000));
	b = (b - 1000*thou);
	hund = (int)((b / 100));
	b = (b - 100*hund);
	tens = (int)((b / 10));
	b = (b - 10*tens);
	ones = (int)b;

	bhbuffer[0] = bytetodec[tthou];
	bhbuffer[1] = bytetodec[thou];
	bhbuffer[2] = bytetodec[hund];
	bhbuffer[3] = bytetodec[tens];
	bhbuffer[4] = bytetodec[ones];

	return bhbuffer;
}

PFAR k_longtodec(ULONG b,char FAR *bhbuffer)
{
	int bill  = 0;
	int hmill = 0;
	int tmill = 0;
	int mill  = 0;
	int hthou = 0;
	int tthou = 0;
	int thou  = 0;
	int hund  = 0;
	int tens  = 0;
	int ones  = 0;

	// 4000000000
	bhbuffer[0] = '0';
	bhbuffer[1] = '0';
	bhbuffer[2] = '0';
	bhbuffer[3] = '0';
	bhbuffer[4] = '0';
	bhbuffer[5] = '0';
	bhbuffer[6] = '0';
	bhbuffer[7] = '0';
	bhbuffer[8] = '0';
	bhbuffer[9] = '0';
	bhbuffer[10] = 0;
	bhbuffer[11] = 0;
	bhbuffer[12] = 0;

	bill = (int)((b / 1000000000L));
	b = (b - 1000000000L*bill);

	hmill = (int)((b / 100000000L));
	b = (b - 100000000L*hmill);

	tmill = (int)((b / 10000000L));
	b = (b - 10000000L*tmill);

	mill = (int)((b / 1000000L));
	b = (b - 1000000L*mill);

	hthou = (int)((b / 100000L));
	b = (b - 100000L*hthou);


	tthou = (int)((b / 10000L));
	b = (b - 10000L*tthou);
	thou = (int)((b / 1000L));
	b = (b - 1000L*thou);
	hund = (int)((b / 100L));
	b = (b - 100L*hund);
	tens = (int)((b / 10L));
	b = (b - 10L*tens);
	ones = (int)b;

	bhbuffer[0] = bytetodec[bill];
	bhbuffer[1] = bytetodec[hmill];
	bhbuffer[2] = bytetodec[tmill];
	bhbuffer[3] = bytetodec[mill];
	bhbuffer[4] = bytetodec[hthou];
	bhbuffer[5] = bytetodec[tthou];
	bhbuffer[6] = bytetodec[thou];
	bhbuffer[7] = bytetodec[hund];
	bhbuffer[8] = bytetodec[tens];
	bhbuffer[9] = bytetodec[ones];
	bhbuffer[10] = 0;
	bhbuffer[11] = 0;
	bhbuffer[12] = 0;

	return bhbuffer;
}

PFAR k_bytetodec(UCHAR b,char FAR *bhbuffer)
{
	int hund = 0;
	int tens = 0;
	int ones = 0;

	bhbuffer[0] = '0';
	bhbuffer[1] = '0';
	bhbuffer[2] = '0';
	bhbuffer[3] = 0;

	hund = (int)((b / 100));
	b = (b - 100*hund);
	tens = (int)((b / 10));
	b = (b - 10*tens);
	ones = (int)b;

	bhbuffer[0] = bytetodec[hund];
	bhbuffer[1] = bytetodec[tens];
	bhbuffer[2] = bytetodec[ones];

	return bhbuffer;
}

PFAR k_bytetohex(UCHAR b,char FAR *bhbuffer)
{
	bhbuffer[0] = '0';
	bhbuffer[1] = '0';
	bhbuffer[2] = 0;


	bhbuffer[0] = bytetohex[(unsigned)((b & 0xF0) >> 4)];
	bhbuffer[1] = bytetohex[(unsigned)(b & 0x0F)];

	return bhbuffer;
}


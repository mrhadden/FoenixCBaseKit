
#include "fxstartup.h"

//#pragma section CODE=FCODE,OFFSET $15:0000
//extern char _END_UDATA;
//void *heap_start=(void*)&_END_UDATA,*heap_end=(void*)(&_END_UDATA + 0x1000);



char cc = 0;

static char scirq0 = 0;
static char scirq00 = 0;
static char scirq01 = 0;
static char scirq02 = 0;
static char scirq03 = 0;
static char scirq04 = 0;
static char scirq05 = 0;
static char scirq06 = 0;
static char scirq07 = 0;

static char scirq1 = 0;
static char scirq10 = 0;
static char scirq11 = 0;
static char scirq12 = 0;
static char scirq13 = 0;
static char scirq14 = 0;
static char scirq15 = 0;
static char scirq16 = 0;
static char scirq17 = 0;

static char scirq2 = 0;
static char scirq20 = 0;
static char scirq21 = 0;
static char scirq22 = 0;
static char scirq23 = 0;
static char scirq24 = 0;
static char scirq25 = 0;
static char scirq26 = 0;
static char scirq27 = 0;

static char scts = 0;
static char sct1 = 0;
static char sct2 = 0;
static char taskindex = 0;

static char scsof = 0;

static char sc = 0;
static char sct = 0;
static char scto = 0;

static char sccop = 0;
static char scbrk = 0;
static long eirq = 1L;  
static char irqspinner[] = {'|','/','-','\\'};
static char qbuffer[32];

static int irqPos      		= 10;
static int irqSpinPos  		= 0;
static int irqMousePos 		= 0;
static int irqKeyPos   		= 0;
static int irqSpinnerPos 	= 20;
static int irqCOPPos     	= 0;

//static char keyboardBuffer[21] = {'0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0'};
//static char keyboardBufferIndex = 0;

unsigned char currentKeyPress = 0;
unsigned char isIRQOn = 1;
long 		  irqCount = 0;

unsigned char serialChar = 65;

long ctick = 0;
//long ktick = 0;

int timeout = 0; 
int keyboardTimeout = 0;

int taskSwitchCount = 0;

//static TASK_STACK stacks[2] = {{0x00,0x40,0x00,0x40,NULL},{0x00,0x41,0x00,0x41,NULL}};
static TASK_STACK stacks[2] = {{(unsigned char FAR*)0x004000},{(unsigned char FAR*)0x004100}};


static task_type mtasks[2] = {NULL,NULL};
static TASK tasks[2];


//static char k16buffer[16]; // moved to kernel
static char itoaBuffer[16];
//static char bytetohex[] = {'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'};
//static char bytetodec[] = {'0','1','2','3','4','5','6','7','8','9'};


static unsigned char statusReg = 0x00;

//#define CHK_KEYMOUSE_CTL  (0x02)


void disable(void)
{
	asm sei;
	//k_set_border_color(255,0,0);
}

void enable(void)
{
	asm cli;
	//k_set_border_color(0,255,0);
}



void k_init_multitasking(void)
{
	
}

void k_task_switch(void)
{
	/*
	k_put_char(9,8,irqspinner[scts++],15,0);	
	if(scts>3) scts = 0;
	
	taskindex=!taskindex;
	*/
}

/*

typedef struct _task
{
	unsigned char SPL;
	unsigned char SPH;
	char FAR *pstack;
}TASK;

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
}INT_REGS;
*/

void t_make_task(task_type task,unsigned int ssize,int id)
{
	int line = 9;
	int tpos = 0;
	
	PINT_REGS r = NULL;
	
	disable();
	
	mtasks[id] = task;
	tasks[id].pstack = stacks[id].SS;
	
	k_debug_pointer("t_make_task:0x",task);

	/*
	tpos = k_put_string((20*id),line,"@:",15,0);	
	tpos = k_put_string(tpos,line,k_bytetohex(H24BYTE((void FAR*)task),k16buffer),15,0);
	tpos = k_put_string(tpos,line,k_bytetohex(M24BYTE((void FAR*)task),k16buffer),15,0);
	tpos = k_put_string(tpos,line,k_bytetohex(L24BYTE((void FAR*)task),k16buffer),15,0);
	tpos++;
	tpos = k_put_string(tpos,line,"S:",15,0);
	tpos = k_put_string(tpos,line,k_bytetohex(H24BYTE((void FAR*)tasks[id].pstack),k16buffer),15,0);
	tpos = k_put_string(tpos,line,k_bytetohex(M24BYTE((void FAR*)tasks[id].pstack),k16buffer),15,0);
	tpos = k_put_string(tpos,line,k_bytetohex(L24BYTE((void FAR*)tasks[id].pstack),k16buffer),15,0);
	*/
	
	//tpos = k_put_string(tpos,line,k_itoa(H24BYTE(task),tbuffer,16),15,0);
	//tpos = k_put_string(tpos,line,k_itoa(M24BYTE(task),tbuffer,16),15,0);
	//tpos = k_put_string(tpos,line,k_itoa(L24BYTE(task),tbuffer,16),15,0);


	/*
	tpos++;
	tpos = k_put_string(tpos,line,"S:",15,0);	
	k_pad_string(strbuf,k_itoa(H24BYTE((char FAR*)tasks[id].pstack),tbuffer,16),'0',2);
	tpos = k_put_string(tpos,line,strbuf,15,0);
	k_pad_string(strbuf,k_itoa(M24BYTE((char FAR*)tasks[id].pstack),tbuffer,16),'0',2);
	tpos = k_put_string(tpos,line,strbuf,15,0);
	k_pad_string(strbuf,k_itoa(L24BYTE((char FAR*)tasks[id].pstack),tbuffer,16),'0',2);
	tpos = k_put_string(tpos,line,strbuf,15,0);
	*/
	
	tasks[id].SPL = offsetof(struct int_regs,PP);
	tasks[id].SPH = 0x00;
	
	r = (PINT_REGS)tasks[id].pstack;
	r->PB = H24BYTE((void FAR*)task);
	r->PH = M24BYTE((void FAR*)task);
	r->PL = L24BYTE((void FAR*)task);
	r->PP = 0x00; // will have irqs enabled

	r->DB = 0x00;
	r->DH = 0x00;
	r->DL = 0x00;
	r->AH = 0x00;
	r->AL = 0x00;
	r->XH = 0x00;
	r->XL = 0x00;
	r->YH = 0x00;
	r->YL = 0x00;

	enable();
}

void t0(void)
{
	k_put_char(11,8,irqspinner[sct1++],15,0);	
	if(sct1>3) sct1 = 0;	
	return;
}

void t1(void)
{
	k_put_char(13,8,irqspinner[sct2++],15,0);	
	if(sct2>3) sct2 = 0;	
	return;
}

void k_run_loop(void)
{
	t_make_task((task_type)t1,100,0);
	t_make_task((task_type)t0,100,1);

	
	asm cli;

	k_init_keyboard();
	k_uart_enableirq_ports();

	//k_print_uart_status_com1(30);
	//k_print_uart_status_com2(31);

	
	statusReg&=CHK_KEYMOUSE_CTL;
	
	k_debug_string("enter run loop\r\n");

	while(TRUE)
	{
		asm sei;
		k_put_char(9,irqSpinPos,irqspinner[sc++],15,0);	
		if(sc>3) sc = 0;

		if(mtasks[taskindex]!=NULL && isIRQOn != 0)
		{
			//disable();
			//asm sei;
			//mtasks[taskindex]();
			//enable();
			//asm cli;
		}
		if(currentKeyPress == 0x1F)
		{
			currentKeyPress = 0;
			
			k_set_border_color(0,0,128);

			while(!(UART1_BASE[5] & 0x20))
			{
					// waiting;
			}
			
			while(!(UART2_BASE[5] & 0x20))
			{
					// waiting;
			}
			
			//UART1_BASE[0] = serialChar;
			//k_print_uart_status_com1(30);
			UART1_BASE[0] = serialChar++;
			UART2_BASE[0] = serialChar++;
			//k_print_uart_status_com2(31);
			
			
			//UART1_BASE[0] = 'A';
			//asm LDA #'A'			
			//k_uart_putbyte();
			
			k_set_border_color(0,0,255);
		}
		if(currentKeyPress == 0x2E)
		{
			cc+=10;
			k_set_border_color(cc,cc,cc);
		}
		else if(currentKeyPress == 0x0C)
		{
			asm sei;
			k_set_border_color(255,0,0);
			isIRQOn = 0;
		}
		
		if(isIRQOn == 0)
		{
			irqCount++;
			if(irqCount > 65535)
			{
				irqCount = 0;
				isIRQOn = 1;
				asm cli;
				k_set_border_color(0,255,0);
			}
		}
		/*
		timeout++;
		if(timeout == 0)
		{
			if(!statusReg & CHK_KEYMOUSE_CTL)
			{
				k_put_char(9,0,irqspinner[scto++],15,0);	
				if(scto>3) scto = 0;
				k_init_keyboard();
				timeout = 0;
				
				statusReg &= ~CHK_KEYMOUSE_CTL;
			}
		}
		*/
		/*
		eirq++;			
		if(eirq > 0xFF)
		{
			asm COP;
			eirq = 0;
		}	
		*/
		asm cli;
	}
}

int k_system_call(char FAR* data)
{
	asm COP;
	
	return 0;
}

void k_query_environment(void)
{
	int pos = 0;
	int line = 1;

	k_put_string(pos,line,"IRQ REGISTER DISPLAY TOOL",15,0);


	pos = 0;
	line = 5;

	
	pos = k_put_string(pos,line,"C256 Version:",15,0);
	k_get_c256_major_version(qbuffer);
	pos = k_put_string(pos,line,qbuffer,15,0);
	k_get_c256_minor_version(qbuffer);
	pos = k_put_string(pos,line,qbuffer,15,0);

	pos  = 0;
	line = 6;

	pos = k_put_string(pos,line,"FPGA Version:",15,0);
	k_get_fpga_date_month(qbuffer);
	pos = k_put_string(pos,line,qbuffer,15,0);
	pos = k_put_string(pos,line,"/",15,0);
	k_get_fpga_date_day(qbuffer);
	pos = k_put_string(pos,line,qbuffer,15,0);
	pos = k_put_string(pos,line,"/",15,0);;
	k_get_fpga_date_year(qbuffer);
	pos = k_put_string(pos,line,qbuffer,15,0);

	pos  = 0;
	line = 8;
	pos = k_put_string(pos,line,"TASKTICK:",15,0);
	
	
	
	pos  = 0;
	line = irqPos;
	line++;
	
	irqMousePos = line;	
	pos = k_put_string(0,line++,"MOUSE   :",15,0);
	
	irqKeyPos = line;	
	pos = k_put_string(0,line++,"KEYCODE :",15,0);
	line++;
	
	irqSpinPos = line;
	
	pos = k_put_string(0,line++,"CPU     :",15,0);
	pos = k_put_string(0,line++,"BRK     :",15,0);
	
	irqCOPPos = line;
	
	pos = k_put_string(0,line++,"COP     :",15,0);	
	line++;
	//pos = //k_put_string(17,47," > ODD SOF COUNT TRIGGER COP",15,0);	
	
	pos = k_put_string(0,irqSpinnerPos-1,"IRQ     :*01234567",15,0);
	
	//irqSpinnerPos = line;
	line = irqSpinnerPos;
	
	pos = k_put_string(0,line++,"REG0    :",15,0);
	pos = k_put_string(0,line++,"REG1    :",15,0);
	pos = k_put_string(0,line++,"REG2    :",15,0);
	
	
}

void k_tickManagement(long FAR *pktick)
{
	currentKeyPress = 0;
	
	//if(*pktick > 0)
	//	*pktick=*pktick-1;
	
	if(taskSwitchCount > 2)	
	{
		k_task_switch();
		taskSwitchCount = 0;
	}
	taskSwitchCount++;
	
	//k_send_message(NULL,FX_TIMER,NULL,0);
	
	//k_print_uart_status_com1(30);
	//k_print_uart_status_com2(31);
}






/*
{
    char FAR* ptr  = result;
	char FAR* ptr1 = result;
	char tmp_char;
    int tmp_value;

	char FAR *CHAR_LIST = "ZYXWVUTSRQPONMLKJIHGFEDCBA9876543210123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";

    // check that the base if valid
    if (base < 2 || base > 36)
	{	
		*result = '\0'; 
		return result; 
	}


    do 
	{
        tmp_value = value;
        value /= base;
        *ptr++ = CHAR_LIST [35 + (tmp_value - value * base)];
    }
	while ( value );

    // Apply negative sign
    if (tmp_value < 0) *ptr++ = '-';
    *ptr-- = '\0';
    while (ptr1 < ptr) 
	{
        tmp_char = *ptr;
        *ptr--= *ptr1;
        *ptr1++ = tmp_char;
    }
    return result;
}
*/




/*

void BRKHandler(void)
{
	k_put_char(9,irqCOPPos - 1,irqspinner[scbrk++],15,0);	
	if(scbrk>3) scbrk = 0;
	//asm sei;	
}

void COPHandler(void)
{
	k_put_char(9,irqCOPPos,irqspinner[sccop++],15,0);	
	if(sccop>3) sccop = 0;
	//asm sei;	
}


void IRQHandler(void)
{
	char keyCode[16] = {0,0,0,0,0,0,0,0,
						0,0,0,0,0,0,0,0};	
	IRQDATA data;
		
	data.keycode = keyCode;	
	data.line    = irqSpinnerPos;
	
	if(INT_PENDING_REG0[0]!=0)
	{
		k_dispatch_reg0(&data);
	}
	
	if(INT_PENDING_REG1[0]!=0)
	{
		k_dispatch_reg1(&data);	
	}
	
	if(INT_PENDING_REG2[0]!=0)
	{
		k_dispatch_reg2(&data);
	}
	
	return;
}

void k_dispatch_reg0(PIRQDATA pIRQ)
{
	unsigned char mptr = 0;
	unsigned char kbd = 0;
	char irq0buffer[8];
	int line = pIRQ->line;
	
	char FAR *keyCode = pIRQ->keycode;

	
	k_put_char(9,line,irqspinner[scirq0],15,0);	
	scirq0++;
	
	if(scirq0>3)
	{
		scirq0 = 0;
	}
	
	
	if(INT_PENDING_REG0[0] & FNX0_INT00_SOF)
	{
		k_put_char(10,line,irqspinner[scirq00++],15,0);	
		if(scirq00>3) scirq00 = 0;

		INT_PENDING_REG0[0] &=  FNX0_INT00_SOF;
	}
	
	if(INT_PENDING_REG0[0] & FNX0_INT01_SOL)
	{
		k_put_char(11,line,irqspinner[scirq01++],15,0);	
		if(scirq01>3) scirq01 = 0;
		
		k_tickManagement();
		
		INT_PENDING_REG0[0] &= FNX0_INT01_SOL;
	}
	if(INT_PENDING_REG0[0] & FNX0_INT02_TMR0)
	{
		//k_put_char(3,0,'X',15,0);
		//k_put_char(3,0,'2',15,0);

		k_put_char(12,line,irqspinner[scirq02++],15,0);	
		if(scirq02>3) scirq02 = 0;

		k_put_string(10,27,k_bytetohex(STATUS_PORT[0],irq0buffer),15,0);

		keyboardTimeout++;	
		if((STATUS_PORT[0] & 0x01) && keyboardTimeout > 2)
		{
			
			k_put_string(10 ,26,k_bytetohex(STATUS_PORT[0],irq0buffer),15,0);			
			k_put_string(14,26,k_bytetohex(MOUSE_PTR[0],irq0buffer),15,0);
			k_put_string(18,26,k_bytetohex(MOUSE_PTR_BYTE0[0],irq0buffer),15,0);
			
			
			MOUSE_PTR[0] = 0;
			keyboardTimeout = 0;

			k_init_keyboard();			
			if(STATUS_PORT[0] & 0x01)
			{
				k_init_keyboard();
			}

		}
		else if(keyboardTimeout > 2)
		{
			keyboardTimeout = 0;
		}

		k_put_string(0,26,k_inttodec(keyboardTimeout,irq0buffer),15,0);
		


		INT_PENDING_REG0[0] &=  FNX0_INT02_TMR0;
	}
	if(INT_PENDING_REG0[0] & FNX0_INT03_TMR1)
	{
		k_put_char(13,line,irqspinner[scirq03++],15,0);	
		if(scirq03>3) scirq03 = 0;


		//keyboardTimeout++;
		/if(keyboardTimeout > 120)
		//{
		//	keyboardTimeout = 0;
		//	k_init_keyboard();
		//}

		//k_put_string(0,26,k_inttodec(keyboardTimeout,irq0buffer),15,0);

		INT_PENDING_REG0[0] &=  FNX0_INT03_TMR1;
	}
	if(INT_PENDING_REG0[0] & FNX0_INT04_TMR2)
	{
		k_put_char(14,line,irqspinner[scirq04++],15,0);	
		if(scirq04>3) scirq04 = 0;


		//k_put_char(5,0,'X',15,0);
		//k_put_char(5,0,'4',15,0);
		INT_PENDING_REG0[0] &=  FNX0_INT04_TMR2;
	}
	if(INT_PENDING_REG0[0] & FNX0_INT05_RTC)
	{
		k_put_char(15,line,irqspinner[scirq05++],15,0);	
		if(scirq05>3) scirq05 = 0;


		//k_put_char(6,0,'X',15,0);
		//k_put_char(6,0,'5',15,0);
		INT_PENDING_REG0[0]&=FNX0_INT05_RTC;
	}
	if(INT_PENDING_REG0[0] & FNX0_INT06_FDC)
	{
		k_put_char(16,line,irqspinner[scirq06++],15,0);	
		if(scirq06>3) scirq06 = 0;


		//k_put_char(7,0,'X',15,0);
		//k_put_char(7,0,'6',15,0);
		INT_PENDING_REG0[0]&=FNX0_INT06_FDC;
	}
	if(INT_PENDING_REG0[0] & FNX0_INT07_MOUSE)
	{
		keyboardTimeout = 0;
		
		k_put_char(17,line,irqspinner[scirq07++],15,0);	
		if(scirq07>3) scirq07 = 0;

		//k_put_char(11,41,KBD_INPT_BUF[0],15,0);
		
		//k_itoa(KBD_INPT_BUF[0],keyCode,10);
		
		//k_put_string(11,irqMousePos,"     ",15,0);
		//k_put_string(11,irqMousePos,keyCode,15,0);
		
		while(STATUS_PORT[0] & 0x01)
		{
			mptr = MOUSE_PTR[0];
			kbd  = KBD_INPT_BUF[0];

			MOUSE_PTR_BYTE0[mptr]   = kbd;			
			FXOS_MOUSE_BYTE_0[mptr] = kbd;
				
			mptr++;	
				
			if(mptr >  2)
			{
				MOUSE_PTR[0] = 0;
				
				FXOS_MOUSE_BYTE_X_L[0] = MOUSE_PTR_X_POS_L[0];
				FXOS_MOUSE_BYTE_X_H[0] = MOUSE_PTR_X_POS_H[0];
				FXOS_MOUSE_BYTE_Y_L[0] = MOUSE_PTR_Y_POS_L[0];
				FXOS_MOUSE_BYTE_Y_H[0] = MOUSE_PTR_Y_POS_H[0];
			}
			else
			{
				MOUSE_PTR[0] = mptr;
			}
		}
		
		
		INT_PENDING_REG0[0] &= FNX0_INT07_MOUSE;
	}
	//*INT_PENDING_REG0 = *INT_PENDING_REG0;
	INT_PENDING_REG0[0] = 0xFF;
	INT_PENDING_REG0[0] = 0x00;
	
}


void k_dispatch_reg1(PIRQDATA pIRQ)
{
	int line = pIRQ->line;
	
	char FAR *keyCode = pIRQ->keycode;
	char none = 0;
	unsigned char data = 0;
	//char null = 0;
	int dp = 20;
	
	line++;
	
	k_put_char(9,line,irqspinner[scirq1++],15,0);	
	if(scirq1>3)scirq1 = 0;
	
	if(irqKeyPos!=0)
	k_put_string(11,irqKeyPos,"    ",15,0);
	
	//k_put_char(0,1,'1',15,0);
	if(INT_PENDING_REG1[0] & FNX1_INT00_KBD)
	{
		keyboardTimeout = 0;
		
		k_put_char(10,line,irqspinner[scirq10++],15,0);	
		if(scirq10>3)scirq10 = 0;

		if(ktick == 0)
		{
			ktick = 2;

			//if(KBD_INPT_BUF[0]!=currentKeyPress)
			//	currentKeyPress = KBD_INPT_BUF[0];
			currentKeyPress = KBD_INPT_BUF[0];

			keyboardBuffer[keyboardBufferIndex++] = currentKeyPress;//KBD_INPT_BUF[0];
			if(keyboardBufferIndex > 19)
				keyboardBufferIndex = 0;

			//k_itoa(KBD_INPT_BUF[0],keyCode,16);
			k_bytetohex(currentKeyPress,keyCode);
			
			//k_put_char(11,42,KBD_INPT_BUF[0],15,0);
			//k_put_string(11,42,"    ",15,0);
			k_put_string(16,irqKeyPos,keyboardBuffer,15,0);
			k_put_string(11,irqKeyPos,keyCode,15,0);
		}				
		else
		{
			currentKeyPress = 0;
			none = KBD_INPT_BUF[0];
		}
	
		statusReg&=CHK_KEYMOUSE_CTL;
		
		INT_PENDING_REG1[0] &= FNX1_INT00_KBD;
	}
	
	if(INT_PENDING_REG1[0] & FNX1_INT01_SC0)
	{
		k_put_char(11,line,irqspinner[scirq11++],15,0);	
		if(scirq11>3)scirq11 = 0;

		//k_put_char(2,1,' ',15,0);
		//k_put_char(2,1,'1',15,0);
		INT_PENDING_REG1[0]&=FNX1_INT01_SC0;
	}
	if(INT_PENDING_REG1[0] & FNX1_INT02_SC1)
	{
		k_put_char(12,line,irqspinner[scirq12++],15,0);	
		if(scirq12>3)scirq12 = 0;
		
		//k_put_char(3,1,' ',15,0);
		//k_put_char(3,1,'2',15,0);
		INT_PENDING_REG1[0]&=FNX1_INT02_SC1;
	}
	if(INT_PENDING_REG1[0] & FNX1_INT03_COM2)
	{
		k_put_char(13,line,irqspinner[scirq13++],15,0);	
		if(scirq13>3)scirq13 = 0;
		
		k_print_uart_status_com2(31);
		data = UART2_BASE[0];
		k_put_char(dp++,31,data,15,0);
		while(UART2_BASE[UART_LSR] & 0x01)
		{
			data = UART2_BASE[0];
			k_put_char(dp++,31,data,15,0);
		}
		k_print_uart_status_com2(32);
		
		
		//k_put_char(20,31,data+64,15,0);
		//k_put_char(4,1,' ',15,0);
		//k_put_char(4,1,'3',15,0);
		INT_PENDING_REG1[0]&=FNX1_INT03_COM2;
	}
	if(INT_PENDING_REG1[0] & FNX1_INT04_COM1)
	{

		k_put_char(14,line,irqspinner[scirq14++],15,0);	
		if(scirq14>3)scirq14 = 0;
		
		k_print_uart_status_com1(29);
		data = UART1_BASE[0];
		k_put_char(dp++,31,data+64,15,0);
		while(UART1_BASE[UART_LSR] & 0x01)
		{
			data = UART1_BASE[0];
			k_put_char(dp++,31,data+64,15,0);
		}
		k_print_uart_status_com1(30);
		
		//k_put_char(5,1,' ',15,0);
		//k_put_char(5,1,'4',15,0);
		INT_PENDING_REG1[0]&=FNX1_INT04_COM1;
	}
	if(INT_PENDING_REG1[0] & FNX1_INT05_MPU401)
	{
		k_put_char(15,line,irqspinner[scirq15++],15,0);	
		if(scirq15>3)scirq15 = 0;


		//k_put_char(6,1,' ',15,0);
		//k_put_char(6,1,'5',15,0);
		INT_PENDING_REG1[0]&=FNX1_INT05_MPU401;
	}
	if(INT_PENDING_REG1[0] & FNX1_INT06_LPT)
	{
		k_put_char(16,line,irqspinner[scirq16++],15,0);	
		if(scirq16>3)scirq16 = 0;

		//k_put_char(6,1,' ',15,0);
		//k_put_char(6,1,'6',15,0);
		INT_PENDING_REG1[0]&=FNX1_INT06_LPT;
	}
	if(INT_PENDING_REG1[0] & FNX1_INT07_SDCARD)
	{
		k_put_char(17,line,irqspinner[scirq17++],15,0);	
		if(scirq17>3)scirq17 = 0;


		//k_put_char(7,1,' ',15,0);
		//k_put_char(7,1,'7',15,0);
		INT_PENDING_REG1[0]&=FNX1_INT07_SDCARD;
	}
	//*INT_PENDING_REG1=*INT_PENDING_REG1;
	INT_PENDING_REG1[0]=0xFF;
	INT_PENDING_REG1[0]=0x00;
	
}

void k_dispatch_reg2(PIRQDATA pIRQ)
{
	int line = pIRQ->line;
	
	char FAR *keyCode = pIRQ->keycode;
	
	line++;
	
	k_put_char(9,line,irqspinner[scirq2++],15,0);	
	if(scirq2>3) scirq2 = 0;

	if(INT_PENDING_REG2[0] & FNX2_INT00_OPL2R)
	{
		k_put_char(10,line,irqspinner[scirq20++],15,0);	
		if(scirq20>3) scirq20 = 0;
		//k_put_char(2,2,' ',15,0);
		//k_put_char(2,2,'0',15,0);
		INT_PENDING_REG2[0]&=FNX2_INT00_OPL2R;
	}
	if(INT_PENDING_REG2[0] & FNX2_INT01_OPL2L)
	{
		k_put_char(11,line,irqspinner[scirq21++],15,0);	
		if(scirq21>3) scirq21 = 0;
		//k_put_char(3,2,' ',15,0);
		//k_put_char(3,2,'1',15,0);
		INT_PENDING_REG2[0]&=FNX2_INT01_OPL2L;
	}
	if(INT_PENDING_REG2[0] & FNX2_INT02_BTX_INT)
	{
		k_put_char(12,line,irqspinner[scirq22++],15,0);	
		if(scirq22>3) scirq22 = 0;
		//k_put_char(4,2,' ',15,0);
		//k_put_char(4,2,'2',15,0);
		INT_PENDING_REG2[0]&=FNX2_INT02_BTX_INT;
	}
	if(INT_PENDING_REG2[0] & FNX2_INT03_SDMA)
	{
		k_put_char(13,line,irqspinner[scirq23++],15,0);	
		if(scirq23>3) scirq23 = 0;
		//k_put_char(5,2,' ',15,0);
		//k_put_char(5,2,'3',15,0);
		INT_PENDING_REG2[0]&=FNX2_INT03_SDMA;
	}
	if(INT_PENDING_REG2[0] & FNX2_INT04_VDMA)
	{
		k_put_char(14,line,irqspinner[scirq24++],15,0);	
		if(scirq24>3) scirq24 = 0;
		//k_put_char(6,2,' ',15,0);
		//k_put_char(6,2,'4',15,0);
		INT_PENDING_REG2[0]&=FNX2_INT04_VDMA;
	}
	if(INT_PENDING_REG2[0] & FNX1_INT06_LPT)
	{
		k_put_char(16,line,irqspinner[scirq26++],15,0);	
		if(scirq26>3) scirq26 = 0;
		//k_put_char(7,2,' ',15,0);
		//k_put_char(7,2,'6',15,0);
		INT_PENDING_REG2[0]&=FNX1_INT06_LPT;
	}
	
	INT_PENDING_REG2[0]=0xFF;
	INT_PENDING_REG2[0]=0x00;
	
}
*/



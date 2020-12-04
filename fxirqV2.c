
//#include "fxos.h"
//#include "fxstartup.h"
//#include "fxeventmanager.h"

#ifdef USE_FX256_FMX
#include "fxc256fmx.h"
#else
#include "fxc256.h"
#endif

#include "fxtypes.h"
#include "fxkernel.h"
#include "fxfloppy.h"
#include "flpydsk.h"

static int  		 _irq_keyboardBuffer[21] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
static char 		 _irq_keyboardBufferIndex = 0;
static unsigned char _irq_currentKeyPress = 0;
static int			 _irq_keyboardTimeout = 0;
static unsigned char _irq_statusReg 	  = 0x00;

//static unsigned char  floppyBuffer[512];
extern UINT  floppybufferIndex;
extern UCHAR floppybuffer[512];


static LONG 		 _irq_ktick = 0;
static UCHAR		 _k_last_scancode = 0;

//static int  scirq0 = 0;
//static char irqspinner[] = {'|','/','-','\\'};

char boxtop[]    = {0xD6, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4,0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xB7, 0x00};
char boxbottom[] = {0xD3, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4,0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xBD, 0x00};
char boxside[]    = {0xBA, 0x00};

//#define KEYBOARD_TIMEOUT (5)
#define KEYBOARD_TIMEOUT (50)

#define KTICK_MAX		 (1)

static BOOL _k_extendedKeyMode 	= FALSE;
static BOOL _k_shiftKeyMode 	= FALSE;

extern BOOL irq_signaled;

extern ULONG _k_exec_context;
extern ULONG _k_exec_error;
extern UCHAR _k_exec_message[64];

//static ULONG _pseudo_timer = -1;
ULONG _pseudo_timer = -1;
ULONG _system_timer = 0;

void k_dispatch_reg0(PIRQDATA pIRQ);
void k_dispatch_reg1(PIRQDATA pIRQ);
void k_dispatch_reg2(PIRQDATA pIRQ);

void BRKHandler(void)
{
	CHAR _brk_Buffer[64];
	UCHAR flames = 0;
	int pos  = 1;
	int line = 20;

	k_debug_string("BRK Exception...\r\n");




	asm SEI;
	//k_put_char(9,irqCOPPos - 1,irqspinner[scbrk++],15,0);
	//if(scbrk>3) scbrk = 0;
	////asm sei;
	k_enable_text_mode();
	k_enable_text_cursor(1);
	//k_disable_text_cursor();
	k_enable_border();
	k_clear_screen(0);
	k_set_border_color(255,0,0);
	pos = 1;
	pos = k_put_string(pos,line,boxtop,15,0);
	line++;
	pos = 1;
	pos = k_put_string(pos,line,boxside,15,0);
	pos = 70;
	pos = k_put_string(pos,line,boxside,15,0);
	line++;
	pos = 1;
	pos = k_put_string(pos,line,boxside,15,0);
	pos = k_put_string(pos,line,CONST_EXCEPTION_TITLE,15,0);
	//pos = k_put_string(pos,line,k_longtodec(_k_exec_context,_brk_Buffer),15,0);
	pos = k_put_string(pos,line,k_longtodec(_k_exec_context,_brk_Buffer),15,0);
	//pos = k_put_string(pos,line,k_longtodec(_k_exec_context,_brk_Buffer),15,0);
	//pos++;
	//pos = k_put_string(pos,line,k_longtodec(   ,_brk_Buffer),15,0);

	pos = k_put_string(pos,line,":",15,0);
	pos = k_put_string(pos,line,k_longtodec(_k_exec_error,_brk_Buffer),15,0);
	pos = 70;
	pos = k_put_string(pos,line,boxside,15,0);
	line++;
	pos = 1;
	pos = k_put_string(pos,line,boxside,15,0);
	pos = k_put_string(pos,line,"",15,0);
	pos = 70;
	pos = k_put_string(pos,line,boxside,15,0);
	line++;
	pos = 1;
	pos = k_put_string(pos,line,boxside,15,0);
	pos = k_put_string(pos,line,_k_exec_message,15,0);
	pos = 70;
	pos = k_put_string(pos,line,boxside,15,0);
	line++;
	pos = 1;
	pos = k_put_string(pos,line,boxside,15,0);
	pos = 70;
	pos = k_put_string(pos,line,boxside,15,0);
	line++;
	pos = 1;
	pos = k_put_string(pos,line,boxbottom,15,0);


	while(TRUE)
	{
		for(flames=255;flames>64;flames--)
		{
			k_set_border_color(flames,0,0);
			k_delay(25);
		}
		for(flames=64;flames<255;flames++)
		{
			k_set_border_color(flames,0,0);
			k_delay(25);
		}
	}

}

void COPHandler(void)
{
	KERNELTRAPCALL fktCall = NULL;
	//k_put_char(9,irqCOPPos,irqspinner[sccop++],15,0);
	//if(sccop>3) sccop = 0;
	////asm sei;
	PFXZERPOPAGE zp = k_getZeroPage();

	k_debug_integer("COPHandler:Id:",zp->kernelFunctionCallId);

	fktCall = k_getKernelTrapTable()[zp->kernelFunctionCallId];
	if(fktCall)
	{
		k_debug_pointer("COPHandler:BEFORE fktCall:",fktCall);

		fktCall();

		k_debug_pointer("COPHandler:AFTER fktCall:",fktCall);
	}
	else
	{
		asm brk;
	}
}

void IRQHandler(void)
{
	//char keyCode[16] = {0,0,0,0,0,0,0,0,
	//					0,0,0,0,0,0,0,0};
	IRQDATA data;
		
	//data.keycode = keyCode;
	//data.line    = irqSpinnerPos;
	
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

void k_dispatch_reg0(PIRQDATA pIRQx)
{
	int i = 0;
	char spc = 0;
	unsigned char mptr = 0;
	unsigned char kbd = 0;
	char irq0buffer[8];
	//int line = pIRQ->line;
	
	//char FAR *keyCode = pIRQ->keycode;

	//k_put_char(1,40,'A',15,0);
	
	//k_put_char(1,1,irqspinner[scirq0++],15,0);
	//if(scirq0>3)scirq0 = 0;
	
	
	if(INT_PENDING_REG0[0] & FNX0_INT00_SOF)
	{
		//k_put_char(10,line,irqspinner[scirq00++],15,0);
		//if(scirq00>3) scirq00 = 0;

		INT_PENDING_REG0[0] &=  FNX0_INT00_SOF;
	}
	
	if(INT_PENDING_REG0[0] & FNX0_INT01_SOL)
	{
		//k_put_char(11,line,irqspinner[scirq01++],15,0);
		//if(scirq01>3) scirq01 = 0;
		//_system_timer++;
		
		if(_irq_ktick > 0)
			_irq_ktick--;

		//k_tickManagement(&_irq_ktick);
		k_signal_sol_event(&_irq_ktick);
		

		INT_PENDING_REG0[0] &= FNX0_INT01_SOL;
	}
	if(INT_PENDING_REG0[0] & FNX0_INT02_TMR0)
	{
		//k_put_char(3,0,'X',15,0);
		//k_put_char(3,0,'2',15,0);

		//k_put_char(12,line,irqspinner[scirq02++],15,0);
		//if(scirq02>3) scirq02 = 0;

		//k_put_string(10,27,k_bytetohex(STATUS_PORT[0],irq0buffer),15,0);
		_pseudo_timer++;

		_irq_keyboardTimeout++;
		if((STATUS_PORT[0] & 0x01) && (_irq_keyboardTimeout > KEYBOARD_TIMEOUT))
		{
			
			//k_debug_hex("FNX0_INT02_TMR0::STATUS_PORT:",STATUS_PORT[0]);
			//k_debug_hex("FNX0_INT02_TMR0::MOUSE_PTR:",MOUSE_PTR[0]);
			//k_debug_hex("FNX0_INT02_TMR0::MOUSE_PTR_BYTE0:",MOUSE_PTR_BYTE0[0]);
			//k_irq_device_event(IRQE_CTLR_RESET,STATUS_PORT[0],&_irq_ktick);
			//k_irq_device_event(IRQE_CTLR_RESET,MOUSE_PTR[0],&_irq_ktick);

			k_irq_device_event(IRQE_CTLR_RESET,mptr,&_irq_ktick);

			/*
			_irq_keyboardTimeout = 1000;
			
			while(STATUS_PORT[0] & 0x01)
			{
				_irq_keyboardTimeout--;

				kbd  = KBD_INPT_BUF[0];
				//k_irq_device_event(IRQE_CTLR_RESET,_irq_keyboardTimeout,&_irq_ktick);
				//k_irq_device_event(IRQE_CTLR_RESET,STATUS_PORT[0],&_irq_ktick);
				if(_irq_keyboardTimeout < 0)
					break;
			}
			*/
			MOUSE_PTR[0] = 0;



			/*
			if(_irq_keyboardTimeout < 0)
			{
				k_irq_device_event(IRQE_CTLR_RESET,-1,&_irq_ktick);
				k_init_keyboard();
				if(STATUS_PORT[0] & 0x01)
				{
					k_init_keyboard();
				}
			}
			*/
			k_init_keyboard();
			if(STATUS_PORT[0] & 0x01)
			{
				k_init_keyboard();
			}

			_irq_keyboardTimeout = 0;

			spc  = 0;
			mptr = 0;

		}
		else if(_irq_keyboardTimeout > KEYBOARD_TIMEOUT)
		{
			_irq_keyboardTimeout = 0;
		}

		k_irq_device_event(IRQE_SOL_TIMER,_pseudo_timer,&_irq_ktick);
		//k_put_string(0,26,k_inttodec(_irq_keyboardTimeout,irq0buffer),15,0);
		
		//floppy_timer();

		INT_PENDING_REG0[0] &=  FNX0_INT02_TMR0;
	}
	if(INT_PENDING_REG0[0] & FNX0_INT03_TMR1)
	{
		//k_put_char(13,line,irqspinner[scirq03++],15,0);
		//if(scirq03>3) scirq03 = 0;

		/*
		_irq_keyboardTimeout++;
		if(_irq_keyboardTimeout > 120)
		{
			_irq_keyboardTimeout = 0;
			k_init_keyboard();
		}

		k_put_string(0,26,k_inttodec(_irq_keyboardTimeout,irq0buffer),15,0);
		*/
		INT_PENDING_REG0[0] &=  FNX0_INT03_TMR1;
	}
	if(INT_PENDING_REG0[0] & FNX0_INT04_TMR2)
	{
		//k_put_char(14,line,irqspinner[scirq04++],15,0);
		//if(scirq04>3) scirq04 = 0;


		//k_put_char(5,0,'X',15,0);
		//k_put_char(5,0,'4',15,0);
		INT_PENDING_REG0[0] &=  FNX0_INT04_TMR2;
	}
	if(INT_PENDING_REG0[0] & FNX0_INT05_RTC)
	{
		//k_put_char(15,line,irqspinner[scirq05++],15,0);
		//if(scirq05>3) scirq05 = 0;


		//k_put_char(6,0,'X',15,0);
		//k_put_char(6,0,'5',15,0);
		INT_PENDING_REG0[0]&=FNX0_INT05_RTC;
	}
	if(INT_PENDING_REG0[0] & FNX0_INT06_FDC)
	{
		//k_put_char(16,line,irqspinner[scirq06++],15,0);
		//if(scirq06>3) scirq06 = 0;

		/*
		floppybuffer[floppybufferIndex] = (((LPCHAR)0xaf13f5)[0]);
		if(floppybufferIndex > 511)
			floppybufferIndex = 0;

		floppybufferIndex++;
		*/
		/*
		for (i = 0; i < 512; i++)
		{
			floppybuffer[i] =  (((LPCHAR)0xAF13f5)[0]);
		}
		 */

		k_irq_device_event(IRQE_FLOPPY,_pseudo_timer,floppybuffer);


		//irq_signaled = _FloppyDiskIRQ = TRUE;
		//floppy_isr();

		// REENABLE FOR FLOPPY
		irq_signaled =  TRUE;

		//k_irq_device_event(IRQE_FLOPPY,_pseudo_timer,floppyBuffer);

		//k_put_char(7,0,'#',15,0);
		//k_put_char(7,0,'6',15,0);
		INT_PENDING_REG0[0]&=FNX0_INT06_FDC;
	}
	if(INT_PENDING_REG0[0] & FNX0_INT07_MOUSE)
	{
		_irq_keyboardTimeout = 0;
		
		//k_put_char(17,line,irqspinner[scirq07++],15,0);
		//if(scirq07>3) scirq07 = 0;

		//k_put_char(11,41,KBD_INPT_BUF[0],15,0);
		
		//k_itoa(KBD_INPT_BUF[0],keyCode,10);
		
		//k_put_string(11,irqMousePos,"     ",15,0);
		//k_put_string(11,irqMousePos,keyCode,15,0);
		
		//k_put_char(1,40,'B',15,0);
		while((STATUS_PORT[0] & 0x01) && spc < 4)
		//while((STATUS_PORT[0] & 0x01))
		{
			mptr = MOUSE_PTR[0];
			kbd  = KBD_INPT_BUF[0];

			MOUSE_PTR_BYTE0[mptr]   = kbd;			
			FXOS_MOUSE_BYTE[mptr]   = kbd;
				
			mptr++;	
				
			if(mptr >  2)
			{
				MOUSE_PTR[0] = 0;
				
				FXOS_MOUSE_BYTE_T   = MOUSE_PTR_BYTE0[0];
				FXOS_MOUSE_BYTE_X_L = MOUSE_PTR_X_POS_L[0];
				FXOS_MOUSE_BYTE_X_H = MOUSE_PTR_X_POS_H[0];
				FXOS_MOUSE_BYTE_Y_L = MOUSE_PTR_Y_POS_L[0];
				FXOS_MOUSE_BYTE_Y_H = MOUSE_PTR_Y_POS_H[0];

				//k_irq_device_event(IRQE_MOUSE,_pseudo_timer,&FXOS_MOUSE_BYTE_T);
				k_irq_device_event(IRQE_MOUSE,_pseudo_timer,&FXOS_MOUSE_BYTE_T);

				spc  = 0;
				mptr = 0;
			}
			else
			{
				MOUSE_PTR[0] = mptr;
			}

			spc++;
		}
		
		//if(spc > 3)
		//	k_put_char(1,40,'C',15,0);

		INT_PENDING_REG0[0] &= FNX0_INT07_MOUSE;
	}
	//*INT_PENDING_REG0 = *INT_PENDING_REG0;
	INT_PENDING_REG0[0] = 0xFF;
	INT_PENDING_REG0[0] = 0x00;

	//k_put_char(1,40,'Z',15,0);
}

void k_dispatch_reg1(PIRQDATA pIRQx)
{
	//int line = pIRQ->line;
	
	//char FAR *keyCode = pIRQ->keycode;
	char none = 0;
	unsigned char data = 0;
	//char null = 0;
	int dp = 20;
	
	//line++;
	
	//k_put_char(9,line,irqspinner[scirq1++],15,0);
	//if(scirq1>3)scirq1 = 0;
	
	//if(irqKeyPos!=0)
	//k_put_string(11,irqKeyPos,"    ",15,0);
	
	//k_put_char(2,40,'A',15,0);

	//k_put_char(0,1,'1',15,0);
	if(INT_PENDING_REG1[0] & FNX1_INT00_KBD)
	{
		_irq_keyboardTimeout = 0;
		
		//k_put_char(2,40,'B',15,0);

		//k_put_char(10,line,irqspinner[scirq10++],15,0);
		//if(scirq10>3)scirq10 = 0;

		if(_irq_ktick < 1)
		{
			//k_put_char(2,40,'C',15,0);

			_irq_ktick = KTICK_MAX;

			//if(KBD_INPT_BUF[0]!=_irq_currentKeyPress)
			//	_irq_currentKeyPress = KBD_INPT_BUF[0];
			_irq_currentKeyPress = KBD_INPT_BUF[0];
			_k_last_scancode = _irq_currentKeyPress;

			FXOS_KEY_BYTE_0 =  0;
			FXOS_KEY_BYTE_1 =  _irq_keyboardBufferIndex;
			FXOS_KEY_BYTE_2 =  _irq_currentKeyPress;

			//_irq_keyboardBuffer[_irq_keyboardBufferIndex++] = _irq_currentKeyPress;
			_irq_keyboardBuffer[_irq_keyboardBufferIndex] = _irq_currentKeyPress;

			if(_irq_currentKeyPress == 0xE0)
				_k_extendedKeyMode = TRUE;
			else
				k_irq_device_event(IRQE_KEYBOARD,_pseudo_timer,&_irq_keyboardBuffer[_irq_keyboardBufferIndex]);

			_irq_keyboardBufferIndex++;
			if(_irq_keyboardBufferIndex > 19)
				_irq_keyboardBufferIndex = 0;

			//k_put_char(11,42,_irq_currentKeyPress,15,0);

			if(_irq_currentKeyPress == 0xE0)
				_k_extendedKeyMode = TRUE;

			//k_itoa(KBD_INPT_BUF[0],keyCode,16);
			//k_bytetohex(_irq_currentKeyPress,keyCode);
			
			//k_put_char(11,42,KBD_INPT_BUF[0],15,0);
			//k_put_string(11,42,"    ",15,0);
			//k_put_string(16,irqKeyPos,_irq_keyboardBuffer,15,0);
			//k_put_string(11,irqKeyPos,keyCode,15,0);
		}
		else if(_k_extendedKeyMode == TRUE)
		{
			_k_extendedKeyMode = FALSE;

			_irq_currentKeyPress = KBD_INPT_BUF[0];
			_k_last_scancode = _irq_currentKeyPress;

			FXOS_KEY_BYTE_0 =  0;
			FXOS_KEY_BYTE_1 =  _irq_keyboardBufferIndex;
			FXOS_KEY_BYTE_2 =  _irq_currentKeyPress;

			_irq_keyboardBuffer[_irq_keyboardBufferIndex] = (_irq_currentKeyPress | 0xE000);

			k_irq_device_event(IRQE_KEYBOARD,_pseudo_timer,&_irq_keyboardBuffer[_irq_keyboardBufferIndex]);

			_irq_keyboardBufferIndex++;
			if(_irq_keyboardBufferIndex > 19)
				_irq_keyboardBufferIndex = 0;

			//k_put_char(11,42,_irq_currentKeyPress,15,0);

		}
		else
		{
			//k_put_char(2,40,'D',15,0);
			//if(_k_last_scancode != _irq_currentKeyPress)
				_irq_currentKeyPress = 0;

			none = KBD_INPT_BUF[0];
		}
	
		_irq_statusReg&=CHK_KEYMOUSE_CTL;
		
		INT_PENDING_REG1[0] &= FNX1_INT00_KBD;
	}
	
	if(INT_PENDING_REG1[0] & FNX1_INT01_SC0)
	{
		//k_put_char(11,line,irqspinner[scirq11++],15,0);
		//if(scirq11>3)scirq11 = 0;

		//k_put_char(2,1,' ',15,0);
		//k_put_char(2,1,'1',15,0);
		INT_PENDING_REG1[0]&=FNX1_INT01_SC0;
	}
	if(INT_PENDING_REG1[0] & FNX1_INT02_SC1)
	{
		//k_put_char(12,line,irqspinner[scirq12++],15,0);
		//if(scirq12>3)scirq12 = 0;
		
		//k_put_char(3,1,' ',15,0);
		//k_put_char(3,1,'2',15,0);
		INT_PENDING_REG1[0]&=FNX1_INT02_SC1;
	}
	if(INT_PENDING_REG1[0] & FNX1_INT03_COM2)
	{
		//k_put_char(13,line,irqspinner[scirq13++],15,0);
		//if(scirq13>3)scirq13 = 0;
		
		//k_print_uart_status_com2(31);
		data = UART2_BASE[0];
		//k_irq_device_event(IRQE_COM2,_pseudo_timer,&data);
		//k_put_char(dp++,31,data,15,0);
		//k_put_char(31,1,'*' ,15,0);
		while(UART2_BASE[UART_LSR] & 0x01)
		{
			data = UART2_BASE[0];
			//k_put_char(dp++,31,data,15,0);
		}
		//k_print_uart_status_com2(32);
		//k_put_char(30,1,'M' ,15,0);
		
		//k_put_char(20,31,data+64,15,0);
		//k_put_char(4,1,' ',15,0);
		//k_put_char(4,1,'3',15,0);
		INT_PENDING_REG1[0]&=FNX1_INT03_COM2;
	}
	if(INT_PENDING_REG1[0] & FNX1_INT04_COM1)
	{

		//k_put_char(14,line,irqspinner[scirq14++],15,0);
		//if(scirq14>3)scirq14 = 0;
		
		//k_print_uart_status_com1(29);
		data = UART1_BASE[0];
		k_irq_device_event(IRQE_COM1,_pseudo_timer,&data);
		//k_put_char(30,1,'*' ,15,0);
		//if(data)
		//	k_put_char(30,2,data,15,0);
		//k_put_char(31,1,'N' ,15,0);
		//k_put_char(dp++,31,data+64,15,0);
		while(UART1_BASE[UART_LSR] & 0x01)
		{
			data = UART1_BASE[0];
		}
		//k_print_uart_status_com1(30);
		//k_put_char(31,1,'*' ,15,0);
		//k_put_char(30,3,'*' ,15,0);
		
		//k_put_char(5,1,' ',15,0);
		//k_put_char(5,1,'4',15,0);
		INT_PENDING_REG1[0]&=FNX1_INT04_COM1;
	}
	if(INT_PENDING_REG1[0] & FNX1_INT05_MPU401)
	{
		//k_put_char(15,line,irqspinner[scirq15++],15,0);
		//if(scirq15>3)scirq15 = 0;


		//k_put_char(6,1,' ',15,0);
		//k_put_char(6,1,'5',15,0);
		INT_PENDING_REG1[0]&=FNX1_INT05_MPU401;
	}
	if(INT_PENDING_REG1[0] & FNX1_INT06_LPT)
	{
		//k_put_char(16,line,irqspinner[scirq16++],15,0);
		//if(scirq16>3)scirq16 = 0;

		//k_put_char(6,1,' ',15,0);
		//k_put_char(6,1,'6',15,0);
		INT_PENDING_REG1[0]&=FNX1_INT06_LPT;
	}
	if(INT_PENDING_REG1[0] & FNX1_INT07_SDCARD)
	{
		//k_put_char(17,line,irqspinner[scirq17++],15,0);
		//if(scirq17>3)scirq17 = 0;

		k_irq_device_event(IRQE_SDCARD,_pseudo_timer,NULL);

		//k_put_char(7,1,' ',15,0);
		//k_put_char(7,1,'7',15,0);
		INT_PENDING_REG1[0]&=FNX1_INT07_SDCARD;
	}
	//*INT_PENDING_REG1=*INT_PENDING_REG1;
	INT_PENDING_REG1[0]=0xFF;
	INT_PENDING_REG1[0]=0x00;
	
	//k_put_char(2,40,'Z',15,0);
}

void k_dispatch_reg2(PIRQDATA pIRQx)
{
	//int line = pIRQ->line;
	
	//char FAR *keyCode = pIRQ->keycode;
	
	//line++;
	
	//k_put_char(9,line,irqspinner[scirq2++],15,0);
	//if(scirq2>3) scirq2 = 0;

	//k_put_char(3,40,'A',15,0);

	if(INT_PENDING_REG2[0] & FNX2_INT00_OPL2R)
	{
		//k_put_char(10,line,irqspinner[scirq20++],15,0);
		//if(scirq20>3) scirq20 = 0;
		//k_put_char(2,2,' ',15,0);
		//k_put_char(2,2,'0',15,0);
		INT_PENDING_REG2[0]&=FNX2_INT00_OPL2R;
	}
	if(INT_PENDING_REG2[0] & FNX2_INT01_OPL2L)
	{
		//k_put_char(11,line,irqspinner[scirq21++],15,0);
		//if(scirq21>3) scirq21 = 0;
		//k_put_char(3,2,' ',15,0);
		//k_put_char(3,2,'1',15,0);
		INT_PENDING_REG2[0]&=FNX2_INT01_OPL2L;
	}
	if(INT_PENDING_REG2[0] & FNX2_INT02_BTX_INT)
	{
		//k_put_char(12,line,irqspinner[scirq22++],15,0);
		//if(scirq22>3) scirq22 = 0;
		//k_put_char(4,2,' ',15,0);
		//k_put_char(4,2,'2',15,0);
		INT_PENDING_REG2[0]&=FNX2_INT02_BTX_INT;
	}
	if(INT_PENDING_REG2[0] & FNX2_INT03_SDMA)
	{
		//k_put_char(13,line,irqspinner[scirq23++],15,0);
		//if(scirq23>3) scirq23 = 0;
		//k_put_char(5,2,' ',15,0);
		//k_put_char(5,2,'3',15,0);
		INT_PENDING_REG2[0]&=FNX2_INT03_SDMA;
	}
	if(INT_PENDING_REG2[0] & FNX2_INT04_VDMA)
	{
		//k_put_char(14,line,irqspinner[scirq24++],15,0);
		//if(scirq24>3) scirq24 = 0;
		//k_put_char(6,2,' ',15,0);
		//k_put_char(6,2,'4',15,0);
		INT_PENDING_REG2[0]&=FNX2_INT04_VDMA;
	}
	if(INT_PENDING_REG2[0] & FNX1_INT06_LPT)
	{
		//k_put_char(16,line,irqspinner[scirq26++],15,0);
		//if(scirq26>3) scirq26 = 0;
		//k_put_char(7,2,' ',15,0);
		//k_put_char(7,2,'6',15,0);
		INT_PENDING_REG2[0]&=FNX1_INT06_LPT;
	}
	/*
	if(INT_PENDING_REG2[0] & FNX2_INT07_SDCARD_INS)
		{
			//k_put_char(16,line,irqspinner[scirq26++],15,0);
			//if(scirq26>3) scirq26 = 0;
			//k_put_char(7,2,' ',15,0);
			//k_put_char(7,2,'6',15,0);
			INT_PENDING_REG2[0]&=FNX2_INT07_SDCARD_INS;
		}
	*/
	/*
	if(INT_PENDING_REG2[0] & FNX2_INT07_SDCARD)
	{
		//k_put_char(17,line,irqspinner[scirq17++],15,0);
		//if(scirq17>3)scirq17 = 0;

		k_irq_device_event(IRQE_SDCARD_INS,_pseudo_timer,NULL);

		//k_put_char(7,1,' ',15,0);
		//k_put_char(7,1,'7',15,0);
		INT_PENDING_REG2[0]&=FNX2_INT07_SDCARD;
	}
	*/
	INT_PENDING_REG2[0]=0xFF;
	INT_PENDING_REG2[0]=0x00;

	//k_put_char(3,40,'Z',15,0);
}


#ifndef __FX_KERNEL_
#define __FX_KERNEL_

#include "fxos.h"
#include "fxnode.h"

#define MEM_SYSTEM_MIN	 (0x010000 * 3)
#define MEM_USER_CEILING 0xAF0000
//#define MEM_USER_FLOOR 	 0x060000
#define MEM_USER_FLOOR 	 0x190000

#define ZEROPAGE_VERSION_B2 		  ((unsigned char FAR*)0x001500)
#define ZEROPAGE_VERSION_CX 		  ((unsigned char FAR*)0x001500)

#ifdef C256_REVC
#define ZEROPAGE ZEROPAGE_VERSION_CX
#else
#define ZEROPAGE ZEROPAGE_VERSION_B2
#endif

// kernel trap call
typedef VOID (*KERNELTRAPCALL)(VOID);

typedef struct _fx_zero_page
{
	unsigned char fxos_mouse_byte_0;
	unsigned char fxos_mouse_byte_1;
	unsigned char fxos_mouse_byte_2;
	unsigned char fxos_mouse_byte_t;

	unsigned char fxos_mouse_byte_x_l;
	unsigned char fxos_mouse_byte_x_h;
	unsigned char fxos_mouse_byte_y_l;
	unsigned char fxos_mouse_byte_y_h;

	unsigned char fxos_key_byte_0;
	unsigned char fxos_key_byte_1;
	unsigned char fxos_key_byte_2;

	unsigned char fxos_mouse_ctl;
	unsigned char fxos_mouse_index;
	unsigned char fxos_mouse_status;

	unsigned int VersionMajor;
	unsigned int VersionMinor;
	unsigned int VersionRelease;

	unsigned long topMemory;
	unsigned long bottomMemory;
	unsigned long availableMemory;
	unsigned long availableMemoryK;
	unsigned long availableHeapMemory;
	unsigned long availableHeapMemoryK;

	unsigned int  kernelFunctionCallId;
	UCHAR  		  kernelFunctionCallBank;
	UCHAR  		  kernelFunctionCallReserved;
	void FAR *    kernelFunctionCallParameter;
	void FAR *    kernelFunctionCallReturn;

}FXZERPOPAGE;
typedef FXZERPOPAGE FAR* PFXZERPOPAGE;
//
//
// Legacy Entries that need to be removed and reference ZP definition
//
//
/*
#define FXOS_MOUSE_BYTE_0		  ((UCHAR)((PFXZERPOPAGE)ZEROPAGE)->fxos_mouse_byte_0)
#define FXOS_MOUSE_BYTE			  (&((PFXZERPOPAGE)ZEROPAGE)->fxos_mouse_byte_0)
#define FXOS_MOUSE_BYTE_1		  ((UCHAR)((PFXZERPOPAGE)ZEROPAGE)->fxos_mouse_byte_1)
#define FXOS_MOUSE_BYTE_2		  ((UCHAR)((PFXZERPOPAGE)ZEROPAGE)->fxos_mouse_byte_2)
#define FXOS_MOUSE_BYTE_T		  ((UCHAR)((PFXZERPOPAGE)ZEROPAGE)->fxos_mouse_byte_t)
#define FXOS_MOUSE_BYTE_X_L		  ((UCHAR)((PFXZERPOPAGE)ZEROPAGE)->fxos_mouse_byte_x_l)
#define FXOS_MOUSE_BYTE_X_H		  ((UCHAR)((PFXZERPOPAGE)ZEROPAGE)->fxos_mouse_byte_x_h)
#define FXOS_MOUSE_BYTE_Y_L		  ((UCHAR)((PFXZERPOPAGE)ZEROPAGE)->fxos_mouse_byte_y_l)
#define FXOS_MOUSE_BYTE_Y_H		  ((UCHAR)((PFXZERPOPAGE)ZEROPAGE)->fxos_mouse_byte_y_h)

#define FXOS_KEY_BYTE_0		  	  ((UCHAR)((PFXZERPOPAGE)ZEROPAGE)->fxos_key_byte_0)
#define FXOS_KEY_BYTE		  	  (&((PFXZERPOPAGE)ZEROPAGE)->fxos_key_byte_0))
#define FXOS_KEY_BYTE_1		      ((UCHAR)((PFXZERPOPAGE)ZEROPAGE)->fxos_key_byte_1)
#define FXOS_KEY_BYTE_2		      ((UCHAR)((PFXZERPOPAGE)ZEROPAGE)->fxos_key_byte_2)

#define FXOS_MOUSE_CTL			  ((UCHAR)((PFXZERPOPAGE)ZEROPAGE)->fxos_mouse_ctl)
#define FXOS_MOUSE_INDEX   		  ((UCHAR)((PFXZERPOPAGE)ZEROPAGE)->fxos_mouse_index)
#define FXOS_MOUSE_STATUS		  ((UCHAR)((PFXZERPOPAGE)ZEROPAGE)->fxos_mouse_status)
*/
#define FXOS_MOUSE_BYTE		 	  ((unsigned char FAR*)0x001500)
#define FXOS_MOUSE_BYTE_0		  (((unsigned char FAR*)0x001500)[0])
#define FXOS_MOUSE_BYTE_1		  (((unsigned char FAR*)0x001501)[0])
#define FXOS_MOUSE_BYTE_2		  (((unsigned char FAR*)0x001502)[0])
#define FXOS_MOUSE_BYTE_T		  (((unsigned char FAR*)0x001503)[0])
#define FXOS_MOUSE_BYTE_X_L		  (((unsigned char FAR*)0x001504)[0])
#define FXOS_MOUSE_BYTE_X_H		  (((unsigned char FAR*)0x001505)[0])
#define FXOS_MOUSE_BYTE_Y_L		  (((unsigned char FAR*)0x001506)[0])
#define FXOS_MOUSE_BYTE_Y_H		  (((unsigned char FAR*)0x001507)[0])

#define FXOS_KEY_BYTE 		  	  ((unsigned char FAR*)0x001508)
#define FXOS_KEY_BYTE_0		  	  (((unsigned char FAR*)0x001508)[0])
#define FXOS_KEY_BYTE_1		      (((unsigned char FAR*)0x001509)[0])
#define FXOS_KEY_BYTE_2		      (((unsigned char FAR*)0x00150A)[0])

#define FXOS_MOUSE_CTL			  (((unsigned char FAR*)0x00150B)[0])
#define FXOS_MOUSE_INDEX   		  (((unsigned char FAR*)0x00150C)[0])
#define FXOS_MOUSE_STATUS		  (((unsigned char FAR*)0x00150D)[0])


typedef struct _fx_environment
{
	char FAR* variables;
	int reserved1;
	int reserved2;
	int reserved3;
	int reserved4;
}FXENVIRONMENT;
typedef FXENVIRONMENT FAR* PFXENVIRONMENT;

typedef struct _debug_byte_bits
{
    UCHAR bit7 : 1;
    UCHAR bit6 : 1;
    UCHAR bit5 : 1;
    UCHAR bit4 : 1;
    UCHAR bit3 : 1;
    UCHAR bit2 : 1;
    UCHAR bit1 : 1;
    UCHAR bit0 : 1;
}DEBUGBYTEBITS;
typedef DEBUGBYTEBITS FAR* PDEBUGBYTEBITS;

PFXZERPOPAGE k_getZeroPage(void);
KERNELTRAPCALL FAR *k_getKernelTrapTable(VOID);
VOID k_initializeZeroPage(VOID);

void k_delay_nop(void);
void k_delay_1(void);
void k_delay_1ms(void);
void sleep(int msec);

//
// configuration
//
PFAR k_getFXOSVersionName(void);
int   k_report_configuration(int offset,int line);
//
//
void k_delay(int millisecs);
//
//
// Debugging API
//
//
void k_debug_string_com1(char FAR* debugString);
void k_debug_string_com2(char FAR* debugString);
void k_debug_nstring_com2(char FAR* debugString,int nsize);
void k_debug_nstring_com1(char FAR* debugString,int nsize);
void k_debug_string(char FAR* debugString);
void k_debug_nstring(char FAR* debugString,int nsize);
void k_debug_char(char FAR* debugString,UCHAR n);
void k_debug_pointer(char FAR* debugString, void FAR* p);
void k_debug_integer(char FAR* debugString, UINT n);
void k_debug_integer_array(char FAR* debugString,UINT FAR *n,UINT size);
void k_debug_long(char FAR* debugString, ULONG n);
void k_debug_hex(PFAR debugString, UCHAR n);
void k_debug_hexchar(PFAR debugString, UCHAR n);
void k_debug_bits(PFAR debugString, UCHAR n);
void k_debug_on(UCHAR n);
void k_debug_byte_array(char FAR* debugString,BYTE FAR *n,ULONG size);
void k_debug_message(char FAR* debugString,char FAR *message);
void k_debug_strings(char FAR* debugString,char FAR *message);
void k_debug_nmessage(char FAR* debugString,char FAR *message,UINT size);
void k_debug_nstrings(char FAR* debugString,char FAR *message,UINT size);

void k_debug_rect(LPCSTR message,PRECT prect);
void k_debug_crlf();

void k_debug_integers(char FAR* format, int nHowMany, ...);

void k_debug_node(PFXNODE node);
void k_debug_nodelist(PFXNODE head);
void k_debug_nodelist_list(PFXNODELIST list,FOREACHNODE handler);
void k_debug_nodelist_with_data(PFXNODE head,FOREACHNODE handler);

void k_debug_uart_status_com1(int lc);
void k_debug_uart_status_com2(int lc);
//
//
//
UINT k_get_rtc_hour(void);
UINT k_get_rtc_minute(void);
UINT k_get_rtc_second(void);
UINT k_get_rtc_month(void);
UINT k_get_rtc_day(void);
UINT k_get_rtc_year(void);
UINT k_get_rtc_century(void);
//
//
//
void k_get_fpga_date_day(char *buffer);
void k_get_fpga_date_month(char *buffer);
void k_get_fpga_date_year(char *buffer);
void k_get_c256_major_version(char *buffer);
void k_get_c256_minor_version(char *buffer);

//////////////////////////
// KERNEL/USER INTERFACE
//////////////////////////

enum KERNALTRAPINDEX
{
	KT_DOS_GETDIRECTORY = 1,

	KT_DBG_STRING 		= 50,

	KT_OS_CALL_END	    = 511
};

VOID k_DebugOutString(VOID);

//VOID k_GetDirectory(VOID);

#define DRIVER_TYPE_CONSOLE  (0x00)
#define DRIVER_TYPE_MOUSE    (0x01)
#define DRIVER_TYPE_COM      (0x02)
#define DRIVER_TYPE_DIP      (0x03)
#define DRIVER_TYPE_KEYBOARD (0x04)
#define DRIVER_TYPE_SDCARD	 (0x05)
#define DRIVER_TYPE_FDCARD	 (0x06)
#define DRIVER_TYPE_HDCARD	 (0x07)
#define DRIVER_TYPE_SOUND	 (0xA0)
#define DRIVER_TYPE_EXTENDED (0xF0)

typedef struct _fx_device_driver
{
	char   name[64];
	char   version[64];
	char   hmajor[16];
	char   hminor[16];
	BYTE   type;
	LPVOID f_driver_load;
	LPVOID f_driver_read;
	LPVOID f_driver_write;
	LPVOID f_driver_unload;
}FX_DEVICE_DRIVER;
typedef FX_DEVICE_DRIVER FAR* PFX_DEVICE_DRIVER;


typedef struct _fx_block_device_driver
{
	char   name[64];
	char   version[64];
	char   hmajor[16];
	char   hminor[16];
	BYTE   type;
	LPVOID f_driver_load;
	LPVOID f_driver_read;
	LPVOID f_driver_write;
	LPVOID f_driver_unload;
	LPVOID f_driver_command;
}FX_BLOCK_DEVICE_DRIVER;
typedef FX_BLOCK_DEVICE_DRIVER FAR* PFX_BLOCK_DEVICE_DRIVER;

typedef BOOL (*DEVICEDRIVER_LOAD)(VOID);
typedef UINT (*DEVICEDRIVER_READ)(LPVOID buffer);
typedef UINT (*DEVICEDRIVER_WRITE)(UINT size,LPVOID buffer);
typedef BOOL (*DEVICEDRIVER_UNLOAD)(VOID);
typedef UINT (*DEVICEDRIVER_COMMAND)(UINT command,LPVOID buffer);

#endif

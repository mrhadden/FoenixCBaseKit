
#ifndef __FX_KERNEL_
#define __FX_KERNEL_

#include "fxos.h"

#define ZEROPAGE_VERSION_B2 		  ((unsigned char FAR*)0x001500)
#define ZEROPAGE_VERSION_CX 		  ((unsigned char FAR*)0x001500)

#ifdef C256_REVC
#define ZEROPAGE ZEROPAGE_VERSION_CX
#else
#define ZEROPAGE ZEROPAGE_VERSION_B2
#endif

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
}FXZERPOPAGE;
typedef FXZERPOPAGE FAR* PFXZERPOPAGE;

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


PFXZERPOPAGE k_getZeroPage(void);
//
// configutation
//
PFAR k_getFXOSVersionName(void);
int   k_report_configuration(int line);

//
// Debugging API
//
void k_debug_string_com1(char FAR* debugString);
void k_debug_string_com2(char FAR* debugString);
void k_debug_string(char FAR* debugString);
void k_debug_pointer(char FAR* debugString, void FAR* p);
void k_debug_integer(char FAR* debugString, UINT n);
void k_debug_long(char FAR* debugString, ULONG n);
void k_debug_hex(PFAR debugString, UCHAR n);

PFAR k_strip_padding(PFAR text);
PFAR k_bytetohex(UCHAR b, char FAR *buffer);
PFAR k_bytetodec(UCHAR b, char FAR *buffer);
PFAR k_inttodec(UINT b, char FAR *buffer);
PFAR k_longtodec(ULONG b, char FAR *buffer);



#endif

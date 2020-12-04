#ifndef	__CH376_HAL_H__
#define __CH376_HAL_H__

#include "CH376INC.H"


#ifdef __CX51__
#ifndef __C51__
#define __C51__		1
#endif
#endif

#ifdef __C51__
#define	BIG_ENDIAN		1
#endif

#ifdef __C51__
#pragma NOAREGS
#endif


#define		ERR_USB_UNKNOWN		0xFA

void	mDelayuS( UINT8 us );

void	mDelaymS( UINT8 ms );

void	CH376_PORT_INIT( void );

void	xEndCH376Cmd( void );

void	xWriteCH376Cmd( UINT8 mCmd );

void	xWriteCH376Data( UINT8 mData );

UINT8	xReadCH376Data( void );

UINT8	Query376Interrupt( void );

UINT8	mInitCH376Host( void );

#endif

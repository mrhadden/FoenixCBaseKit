
#include	"HAL.H"
#include	"fxtypes.h"
//#include "fxkernel.h"

//void k_debug_integer(char FAR* debugString, UINT n);

#define CH376_CMD_PORT	((unsigned char FAR *)0xAFE809)
#define CH376_DAT_PORT	((unsigned char FAR *)0xAFE808)



void CH376_PORT_INIT( void )
{
}

//void	mDelay0_5uS( void )
//{
//}

void xEndCH376Cmd(void)
{
	return;
}

UINT8 xReadCH376Status(void)
{
	UINT8 b = 0;

	k_debug_integer("xReadCH376Status1:",0);

	b = CH376_CMD_PORT[0];

	k_debug_integer("xReadCH376Status2:",0);


	return b;
}

void xWriteCH376Cmd( UINT8 mCmd )
{
	UINT8	i;



	CH376_CMD_PORT[0] = mCmd;
	/*	mDelay0_5uS( ); mDelay0_5uS( ); mDelay0_5uS( );*/

	k_debug_integer("xWriteCH376Cmd1:",mCmd);

	mDelaymS(1);

	k_debug_integer("xWriteCH376Cmd2:",mCmd);

	for ( i = 10; i != 0; -- i )
	{
		if ( ( xReadCH376Status( ) & PARA_STATE_BUSY ) == 0 )
			break;
	}
}


void	xWriteCH376Data( UINT8 mData )
{
	CH376_DAT_PORT[0] = mData;
	mDelaymS(1);
//	mDelay0_5uS( );
}
UINT8	xReadCH376Data( void )
{
	UINT8 b = 0;

//	mDelay0_5uS( );
	mDelaymS(1);

	b = CH376_DAT_PORT[0];

	return b;
}



UINT8 Query376Interrupt( void )
{
	//return( xReadCH376Status( ) & PARA_STATE_INTB ? FALSE : TRUE );

	UINT8 status = 0x80;

	asm SEI;

	while(status == 0x80)
	{
		status = xReadCH376Status();
	    k_debug_integer("k_sd_waitforirq::wait:",status);
	}

	mDelayuS(2);

	xWriteCH376Cmd(CMD01_GET_STATUS);

	mDelayuS(1);

	status = xReadCH376Status();

	k_debug_integer("k_sd_waitforirq::status:",status);

	asm cli;

	return status;


}

UINT8	mInitCH376Host( void )
{
	UINT8	res;
	CH376_PORT_INIT( );
	xWriteCH376Cmd( CMD11_CHECK_EXIST );
	xWriteCH376Data( 0x65 );
	res = xReadCH376Data( );
//	xEndCH376Cmd( );
	if ( res != 0x9A ) return( ERR_USB_UNKNOWN );
	xWriteCH376Cmd( CMD11_SET_USB_MODE );
	xWriteCH376Data( 0x03 );
	mDelayuS( 20 );
	res = xReadCH376Data( );
//	xEndCH376Cmd( );
	if ( res == CMD_RET_SUCCESS ) return( USB_INT_SUCCESS );
	else return( ERR_USB_UNKNOWN );
}

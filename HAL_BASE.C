
#include	"HAL.H"

void mDelayuS( UINT8 us )
{
	while ( us -- );  /* 14MHz WDC65C816 */
}

void mDelaymS( UINT8 ms )
{
	while ( ms -- )
	{
		asm NOP;
		asm NOP;
		asm NOP;
		asm NOP;
		asm NOP;
		asm NOP;
		asm NOP;
		asm NOP;
	}
}

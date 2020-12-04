
#include "fxkernel.h"
#include "fxmouse.h"

int k_get_mouse_button(void)
{
	int  pos = 0;

	pos = (int)(FXOS_MOUSE_BYTE_T);

	return pos;
}

int k_get_mouse_pos_X(void)
{
	int pos = 0;

	pos = MAKEWORD(FXOS_MOUSE_BYTE_X_L,FXOS_MOUSE_BYTE_X_H);

	return pos;

}

int k_get_mouse_pos_Y(void)
{
	int pos = 0;

	pos = MAKEWORD(FXOS_MOUSE_BYTE_Y_L,FXOS_MOUSE_BYTE_Y_H);

	return pos;
}

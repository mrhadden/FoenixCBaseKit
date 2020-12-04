
#ifndef __FX_CBUFFER_
#define __FX_CBUFFER_

#include "fxtypes.h"

struct _fx_node
{
	BYTE 		type;
    void FAR*  	data;
    struct 	_fx_node FAR *last;
    struct 	_fx_node FAR *next;
};
typedef struct _fx_node FXNODE;
typedef FXNODE FAR *PFXNODE;

typedef void FAR* PCBUFFER;

PCBUFFER  k_init_circ_buffer(int size);

PFXNODE fifoRead(PCBUFFER pb);
PFXNODE fifoWrite(PCBUFFER pb,PFXNODE val);

int   k_isempty(PFXQUEUE q);
void  k_enqueue(PFXQUEUE q, void FAR* value);
void FAR* k_dequeue(PFXQUEUE q);
void  k_debug_queue(FXNODE FAR* head);

#endif

/*
 * fxnode.c

 *
 *  Created on: Aug 16, 2019
 *      Author: mtbush
 */
#include <stdlib.h>
#include "fxnode.h"
#include "fxkernel.h"
#include "fxeventmanager.h"

void k_initialize(PFXQUEUE q)
{
    q->count = 0;
    q->front = NULL;
    q->rear  = NULL;
}

int k_isempty(PFXQUEUE q)
{
    return (q->rear == NULL);
}

void k_enqueue(PFXQUEUE q, void FAR* value)
{
    FXNODE FAR *tmp = NULL;

    //k_debug_integer("k_enqueue:",((PFXOSMESSAGE)value)->type);

    tmp = (FXNODE FAR *)malloc(sizeof(FXNODE));
    tmp->data = value;
    tmp->next = NULL;
    if(!k_isempty(q))
    {
        q->rear->next = tmp;
        q->rear = tmp;
    }
    else
    {
        q->front = q->rear = tmp;
    }
    q->count++;

    //k_debug_integer("k_enqueue data:",((PFXOSMESSAGE)tmp->data)->type);
}

void FAR* k_dequeue(PFXQUEUE q)
{
	FXNODE *tmp = NULL;
	void FAR* n = NULL;

	//k_debug_pointer("k_dequeue::q->front:",q->front);

	if(q->front == NULL)
		return NULL;

	n = q->front->data;

	//k_debug_integer("n:",n);
	//if(n!=NULL)
	//	k_debug_integer("k_dequeue:",((PFXOSMESSAGE)n)->type);

	if(q->count < 1)
		return NULL;

    tmp = q->front;
    q->front = q->front->next;
    q->count--;
    free(tmp);

    k_debug_integer("k_dequeue:",((PFXOSMESSAGE)n)->type);

    return(n);
}

void k_debug_queue(FXNODE FAR* head)
{
    if(head == NULL)
    {
    	k_debug_string("HEAD == NULL\r\n");
    }
    else
    {
    	k_debug_pointer("NODE:",head->data);
        k_debug_queue(head->next);
    }
}

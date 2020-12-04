/*
 * fxnode.c

 *
 *  Created on: Aug 16, 2019
 *      Author: mtbush
 */
//#include <stdlib.h>
#include "fxnode.h"
#include "fxkernel.h"
#include "fxeventmanager.h"
#include "fxmemorymanager.h"

static ULONG THIS_MODULE = 0xA000000A;

#define MSG_MAX (1024)

#pragma section CODE=NODEMAN,offset $5:B000

void k_initialize(PFXQUEUE q)
{
    q->count = 0;
    q->front = NULL;
    q->rear  = NULL;
}

int k_isempty(PFXQUEUE q)
{
	if(q == NULL)
		k_exec_throw_exception(THIS_MODULE,0x00010001,"Kernel node list is NULL.",-1);

    return (q->rear == NULL);
}

void k_enqueue_with_lock(PFXQUEUE q, LPVOID value)
{
#ifdef FXOS_WITH_LOCK
	asm sei;
#endif

	k_enqueue(q, value);

#ifdef FXOS_WITH_LOCK
	asm cli;
#endif

}

LPVOID k_dequeue_with_lock(PFXQUEUE q)
{
	LPVOID data = NULL;

#ifdef FXOS_WITH_LOCK
	asm sei;
#endif

	data =  k_dequeue(q);

#ifdef FXOS_WITH_LOCK
	asm cli;
#endif

	return data;
}


void k_enqueue(PFXQUEUE q, LPVOID value)
{
	PFXNODE tmp = NULL;


    //k_debug_pointer("k_enqueue::enter:",q);
    //k_debug_integer("k_enqueue::malloc:",sizeof(FXNODE));

    if(q)
    {
    	if(q->count>MSG_MAX)
    	{
    		if(value)
    		{
    			k_debug_integer("k_enqueue::k_mem_deallocate_heap:",q->count);
    			k_mem_deallocate_heap(value);
    		}
    		return;
    	}

		tmp = (PFXNODE)k_mem_allocate_heap(sizeof(FXNODE));
		if(tmp!=NULL)
		{
			//k_debug_integer("k_enqueue::malloc'ed:",sizeof(FXNODE));

			tmp->data = value;
			tmp->next = NULL;

			if(!k_isempty(q))
			{
				//k_debug_string("k_enqueue::not empty\r\n");
				q->rear->next = tmp;
				q->rear = tmp;
			}
			else
			{
				//k_debug_string("k_enqueue::empty\r\n");
				q->front = q->rear = tmp;
			}
			q->count++;
			//k_debug_integer("k_enqueue::count:",q->count);
		}
		else
		{
			k_debug_integer("k_enqueue::size:",q->count);
			k_exec_throw_exception(THIS_MODULE,0x00010000,"Cannot allocate a kernel node.",-1);
		}
    }
    else
    {
    	k_exec_throw_exception(THIS_MODULE,0x00010001,"Kernel node list is NULL.",-1);
    }



    //k_debug_string("k_enqueue::exit\r\n");
    //k_debug_integer("k_enqueue data:",((PFXOSMESSAGE)tmp->data)->type);
}

LPVOID k_dequeue(PFXQUEUE q)
{
	FXNODE *tmp = NULL;
	LPVOID n = NULL;

	//k_debug_pointer("k_dequeue::q->front:",q->front);

	if(q)
	{
		if(q->front == NULL)
			return NULL;

		tmp = q->front;
		if(tmp)
		{
			n = tmp->data;

			//k_debug_integer("n:",n);
			//if(n!=NULL)
			//	k_debug_integer("k_dequeue:",((PFXOSMESSAGE)n)->type);

			//if(q->count < 1)
			//	return NULL;

			q->front = tmp->next;
			if(!q->front)
			{
				q->rear = NULL;
			}

			q->count--;

			k_mem_deallocate_heap(tmp);

			//k_debug_integer("k_dequeue:",((PFXOSMESSAGE)n)->type);
		}
		else
		{
			k_exec_throw_exception(THIS_MODULE,0x00010002,"Kernel node is NULL.",-1);
		}
	}
    else
    {
    	k_exec_throw_exception(THIS_MODULE,0x00010001,"Kernel node list is NULL.",-1);
    }
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
    	//k_debug_pointer("NODE:",head->data);
        k_debug_queue(head->next);
    }
}


/**
 *
 *
 */
PFXNODE k_nodelist_create(BYTE type,LPCSTR name,LPVOID data,PFXNODE last,PFXNODE next)
{
	PFXNODE node = (PFXNODE)k_mem_allocate_heap(sizeof(FXNODE));

	memset(node,0,sizeof(FXNODE));

	node->last = last;
	node->next = next;
	node->type = type;
	node->data = data;
	node->Reserved1 = 0;
	node->name[0] = 0;
	//k_debug_strings("k_nodelist_create::name:", (LPCHAR)name);
	//k_debug_integer("k_nodelist_create::sizeof(node->name):", sizeof(node->name));

	//if(name!=NULL && (strlen(name) < sizeof(node->name)))
	//	strcpy(node->name,name);

	if(name!=NULL)
	{
		if(strlen(name) < sizeof(node->name))
		{
			strcpy(node->name,name);
		}
		else
		{
			strncpy(node->name,name,sizeof(node->name)-1);
		}
		node->name[31] = 0;

		k_debug_strings("k_nodelist_create::node->name:", node->name);

	}
	//umm_integrity_check();

	//k_debug_string("k_nodelist_create::exit\r\n");

	return node;
}

PFXNODE k_nodelist_ncreate(BYTE type,ULONG objId,LPVOID data,PFXNODE last,PFXNODE next)
{
	UCHAR buffer[16];
	LPCHAR name = NULL;
	PFXNODE node = (PFXNODE)k_mem_allocate_heap(sizeof(FXNODE));

	memset(node,0,sizeof(FXNODE));

	node->last = last;
	node->next = next;
	node->type = type;
	node->data = data;
	node->Reserved1 = 0;
	node->name[0] = 0;
	//k_debug_strings("k_nodelist_create::name:", (LPCHAR)name);
	//k_debug_integer("k_nodelist_create::sizeof(node->name):", sizeof(node->name));

	name = k_longtodec(objId,buffer);

	if(name!=NULL && (strlen(name) < sizeof(node->name)))
		strcpy(node->name,name);

	node->name[31] = 0;
	//umm_integrity_check();

	//k_debug_string("k_nodelist_create::exit\r\n");

	return node;
}
/**
 *
 *
 */
PFXNODE k_nodelist_init(BYTE type,LPCSTR name,LPVOID data)
{
	PFXNODE node = (PFXNODE)k_mem_allocate_heap(sizeof(FXNODE));

	memset(node,0,sizeof(FXNODE));

	node->last = NULL;
	node->next = NULL;
	node->type = type;
	node->data = data;
	node->Reserved1 = 0;
	if(name!=NULL)
		strncpy(node->name,name,sizeof(node->name));

	node->name[31] = 0;

	return node;
}
/**
 *
 *
 */
PFXNODE k_nodelist_copy(PFXNODE node)
{
	PFXNODE newnode = k_nodelist_init(node->type,node->name,node->data);
	if(newnode!=NULL)
	{
		newnode->last = node->last;
		newnode->next = node->next;
	}
	return newnode;
}
/**
 *
 *
 */
VOID k_nodelist_add(PFXNODE head,PFXNODE new)
{
	PFXNODE lastNode = k_nodelist_last(head);
	if(lastNode!=NULL)
	{
		new->last = lastNode;
		new->next = NULL;
		lastNode->next = new;
	}
	return;
}

VOID k_nodelist_addtohead(PFXNODE listhead,PFXNODE new)
{
	PFXNODE head = listhead->next;

	if(head)
	{
		if(head!=NULL)
		{
			new->last = head->last;
			new->next = head;
			head->last = new;

			//new->last = head;
			//new->next = head->next;
			//head->next = new;
		}
	}
	else
	{
		listhead->next = new;
		new->last = listhead;
		new->next = NULL;
	}
	return;
}
/**
 *
 *
 */
PFXNODE k_nodelist_gettype(PFXNODE head,BYTE type)
{
	PFXNODE ptr = head;
	while(ptr!=NULL)
	{
		//k_debug_string("k_nodelist_gettype\r\n");
		if(ptr->type == type)
		{
			break;
		}
		ptr = ptr->next;
	}
	return ptr;
}
/**
 *
 *
 */
PFXNODE k_nodelist_getname(PFXNODE head,LPCSTR name)
{
	PFXNODE ptr = head;
	while(ptr!=NULL)
	{
		//k_debug_strings("k_nodelist_getname:",(LPSTR)name);
		//k_debug_strings("             found:",ptr->name);
		if(name && strcmp(ptr->name,name) == 0)
		{
			//k_debug_strings("k_nodelist_getname:found:",(LPSTR)name);
			//k_debug_strings("k_nodelist_getname:name:",(LPSTR)ptr->name);
			//k_debug_pointer("k_nodelist_getname:name:",ptr);
			break;
		}
		ptr = ptr->next;
	}
	return ptr;
}


PFXNODE k_nodelist_getname_and_type(PFXNODE head,LPCSTR name,BYTE type)
{
	PFXNODE node = NULL;

	if(head && name)
	{
		node = k_nodelist_getname(head,(LPCHAR)name);
		if(node && node->type != type)
		{
			//k_debug_strings("k_nodelist_getname_and_type:found:name:",node->name);
			//k_debug_pointer("k_nodelist_getname_and_type:found:data:",node->data);
			node = NULL;
		}
	}
	return node;
}

PFXNODE k_nodelist_get(PFXNODE head,INT index)
{
	PFXNODE ptr = head;
	while(ptr!=NULL)
	{
		index--;

		if(index == 0)
			break;

		ptr = ptr->next;
	}

	//k_debug_integer("k_nodelist_get type:",ptr->type);

	return ptr;
}

/**
 *
 *
 */
PFXNODE k_nodelist_remove(PFXNODE head,LPCSTR name)
{
	PFXNODE found = NULL;
	PFXNODE ptr = head;
	while(ptr!=NULL)
	{
		//k_debug_string("k_nodelist_remove\r\n");
		if(strcmp(ptr->name,name) == 0)
		{
			found = ptr;
			ptr->last->next = ptr->next;
			ptr->next->last = ptr->last;
			break;
		}
		ptr = ptr->next;
	}
	return found;
}
/**
 *
 *
 */
LPVOID k_nodelist_data(PFXNODE head,LPCSTR name)
{
	LPVOID found = NULL;
	PFXNODE ptr = head;
	while(ptr!=NULL)
	{
		//k_debug_string("k_nodelist_data\r\n");
		if(strcmp(ptr->name,name) == 0)
		{
			found = ptr->data;
			break;
		}
		ptr = ptr->next;
	}
	return found;
}

/**
 *
 *
 */
PFXNODE	k_nodelist_last(PFXNODE head)
{
	UINT abort = 0;
	PFXNODE ptr = head;

	//k_debug_pointer("k_nodelist_last:next:",ptr->next);
	//k_debug_pointer("k_nodelist_last:last:",ptr->last);

	while(ptr!=NULL)
	{
		//k_debug_string("k_nodelist_last\r\n");
		if(ptr->next == NULL)
		{
			break;
		}
		ptr = ptr->next;
		abort++;
		if(abort == -1)
			k_exec_throw_exception(THIS_MODULE,0x00020001,"Infinite Node List Detected",-1);
	}
	return ptr;
}
/**
 *
 *
 */
VOID k_nodelist_foreach_data(PFXNODE head,LPVOID context,FOREACHNODE each)
{
	PFXNODE ptr = head;

	//k_debug_pointer("k_nodelist_foreach_data:",context);

	while(ptr!=NULL)
	{
		each(context,ptr->data);
		ptr = ptr->next;
	}
}

PFXNODE k_nodelist_foreach_until_data(PFXNODE head,LPVOID context,FOREACHNODEUNTIL each)
{
	BOOL bRet = FALSE;
	PFXNODE ptr = head;

	//k_debug_pointer("k_nodelist_foreach_data:",context);

	while(ptr!=NULL)
	{
		BOOL bRet = each(context,ptr->data);
		//k_debug_integer("k_nodelist_foreach_data:bRet",bRet);
		if(bRet)
		{
			//k_debug_pointer("k_nodelist_foreach_data:FOUND DATA MATCH:",ptr);
			return ptr;
		}
		ptr = ptr->next;
	}

	//k_debug_pointer("k_nodelist_foreach_data:RETURNING:",ptr);

	return NULL;
}

VOID k_nodelist_foreach_listdata(PFXNODELIST list,LPVOID context,FOREACHNODE each)
{
	PFXNODE ptr = NULL;
	if(list && list->listhead)
	{
		k_nodelist_foreach_data(list->listhead->next,context,each);
	}
}

VOID k_nodelist_foreach_listdata_remove(PFXNODELIST list,LPVOID context,FOREACHNODEUNTIL checkStatus)
{
	PFXNODE ptr   = NULL;
	PFXNODE tmp   = NULL;

	k_debug_pointer("k_nodelist_foreach_listdata_remove:",context);

	if(list && list->listhead)
	{
		ptr = list->listhead->next;
		while(ptr!=NULL)
		{
			if(checkStatus(context,ptr->data))
			{
				tmp = ptr->next;

				if(ptr->last)
					ptr->last->next = ptr->next;
				if(ptr->next)
					ptr->next->last = ptr->last;

				if(list->deallocator)
				{
					list->deallocator(ptr->name,ptr->data);

					k_debug_strings("k_nodelist_foreach_listdata_remove:delete node:",ptr->name);

					//memset(ptr,0,sizeof(PFXNODE));
					k_mem_deallocate_heap(ptr);
				}

				ptr = tmp;
			}
			else
			{
				ptr = ptr->next;
			}
		}

	}
}

PFXNODE k_nodelist_foreach_until_listdata(PFXNODELIST list,LPVOID context,FOREACHNODEUNTIL each)
{
	PFXNODE ptr = NULL;
	if(list && list->listhead)
	{
		ptr = k_nodelist_foreach_until_data(list->listhead->next,context,each);
	}

	return ptr;
}


VOID k_nodelist_foreach_type(PFXNODELIST list,BYTE type,LPVOID context,FOREACHNODE each)
{
	PFXNODE ptr = NULL;
	if(list && list->listhead)
	{
		ptr = list->listhead->next;
		while(ptr!=NULL)
		{
			if(ptr->type == type)
				each(context,ptr->data);
			ptr = ptr->next;
		}
	}
}

//
// node list helper functions and types
//
PFXNODELIST k_nodelist_allocate_list(LPCSTR listName,NodeListDeallocator deallocator)
{
	LPCSTR safeName = NULL;
	PFXNODELIST nodelist = NULL;

	nodelist = (PFXNODELIST)k_mem_allocate_heap(sizeof(FXNODELIST));
	if(nodelist)
	{
		if(listName)
			safeName = k_string_copy_string(listName);

		nodelist->listhead = k_nodelist_init(-1,"head",(LPVOID)safeName);
		nodelist->deallocator = deallocator;

		//if(safeName)
		//	k_mem_deallocate_heap((LPVOID)safeName);
	}

	return nodelist;
}

PFXNODE	k_nodelist_getfirstnode(PFXNODELIST list)
{
	PFXNODE node = NULL;

	if(list && list->listhead)
		node = list->listhead->next;

	return node;
}

VOID k_nodelist_deallocate_list(PFXNODELIST nodelist)
{
	PFXNODE ptr  = NULL;
	PFXNODE ptmp = NULL;

	if(nodelist)
	{
		ptr = nodelist->listhead;
		while(ptr)
		{
			ptmp = ptr->next;

			if((ptr != nodelist->listhead) && nodelist->deallocator)
				nodelist->deallocator(ptr->name,ptr->data);

			if(ptr == nodelist->listhead)
			{
				if(nodelist->listhead->data)
				{
					k_debug_pointer("k_nodelist_deallocate_list:nodelist->listhead->data:",nodelist->listhead->data);
					k_mem_deallocate_heap(nodelist->listhead->data);
				}
			}

			k_mem_deallocate_heap(ptr);

			ptr = ptmp;
		}
		k_mem_deallocate_heap(nodelist);
	}
}


PFXNODELIST	k_nodelist_clear_list(PFXNODELIST nodelist)
{
	PFXNODE ptr  = NULL;
	PFXNODE ptmp = NULL;

	if(nodelist)
	{
		ptr = nodelist->listhead->next;
		while(ptr)
		{
			ptmp = ptr->next->next;

			if(nodelist->deallocator)
				nodelist->deallocator(ptr->name,ptr->data);

			k_mem_deallocate_heap(ptr);

			ptr = ptmp;
		}
		nodelist->listhead->next = NULL;
		nodelist->listhead->last = NULL;
	}

	return nodelist;
}

PFXNODE k_nodelist_naddtolist_tohead(PFXNODELIST list,BYTE type,ULONG objId,LPVOID data)
{
	UCHAR buffer[16];

	return k_nodelist_addtolist_tohead(list,type,k_longtodec(objId,buffer),data);
}

PFXNODE k_nodelist_addtolist_tohead(PFXNODELIST list,BYTE type,LPCSTR name,LPVOID data)
{
	PFXNODE node = NULL;

	/*
	k_debug_pointer("k_nodelist_addtolist_tohead:enter:",list);
	if(name)
		k_debug_strings("k_nodelist_addtolist_tohead:name:",(LPSTR)name);
	else
		k_debug_strings("k_nodelist_addtolist_tohead:name:","NULL");
	*/
	if(list && list->listhead)
	{
		if(!k_nodelist_getname_and_type(list->listhead,name,type))
		{
			node = k_nodelist_create(type,name,data,NULL,NULL);
			if(node)
			{
				k_nodelist_addtohead(list->listhead,node);
			}
		}
		else
		{
			if(name!=NULL)
				k_exec_throw_exception(THIS_MODULE,0x00020002,k_string_replace("Attempt to add node with duplicate name: %s1","%s1",name),-1);
			else
				k_exec_throw_exception(THIS_MODULE,0x00020002,"Attempt to add node with duplicate name.",-1);
		}
	}
	//k_debug_string("check k_nodelist_addtolist\r\n");
	//k_heap_integrity_check();

	//k_debug_pointer("k_nodelist_addtolist:exit:",list);

	return node;
}

PFXNODE k_nodelist_naddtolist(PFXNODELIST list,BYTE type,ULONG objId,LPVOID data)
{
	UCHAR buffer[16];

	return k_nodelist_addtolist(list,type,k_longtodec(objId,buffer),data);
}

PFXNODE k_nodelist_addtolist(PFXNODELIST list,BYTE type,LPCSTR name,LPVOID data)
{
	PFXNODE node = NULL;

	//k_debug_pointer("k_nodelist_addtolist:enter:",list);
	if(name)
		k_debug_strings("k_nodelist_addtolist:name:",(LPSTR)name);
	else
		k_debug_strings("k_nodelist_addtolist:name:","NULL");

	if(list && list->listhead)
	{
		if(!k_nodelist_getname_and_type(list->listhead,name,type))
		{
			node = k_nodelist_create(type,name,data,NULL,NULL);
			if(node)
			{
				k_nodelist_add(list->listhead,node);
			}
		}
		else
		{
			//k_exec_throw_exception(THIS_MODULE,0x00020002,k_string_replace("Attempt to add node with duplicate name: %s1","%s1",name),-1);

			if(name!=NULL)
				k_exec_throw_exception(THIS_MODULE,0x00020002,k_string_replace("Attempt to add node with duplicate name: %s1","%s1",name),-1);
			else
				k_exec_throw_exception(THIS_MODULE,0x00020002,"Attempt to add node with duplicate name.",-1);

		}
	}
	//k_debug_string("check k_nodelist_addtolist\r\n");
	//k_heap_integrity_check();

	//k_debug_pointer("k_nodelist_addtolist:exit:",list);

	return node;
}

PFXNODE k_nodelist_addnodetolist(PFXNODELIST list,PFXNODE new)
{
	PFXNODE node = NULL;

	if(list && list->listhead)
	{
		if(!k_nodelist_getname_and_type(list->listhead,new->name,new->type))
		{
			k_nodelist_add(list->listhead,new);
		}
		else
		{
			k_exec_throw_exception(THIS_MODULE,0x00020003,k_string_replace("Attempt to add node with duplicate name: %s1","%s1",new->name),-1);
		}
	}
	return node;
}



PFXNODE	k_nodelist_searchByName(PFXNODELIST list,LPCSTR name)
{
	PFXNODE node = NULL;

	if(list && list->listhead)
		node = k_nodelist_getname(list->listhead->next,(LPCHAR)name);

	return node;
}


PFXNODE	k_nodelist_searchByType(PFXNODELIST list,BYTE type)
{
	PFXNODE node = NULL;

	if(list && list->listhead)
		node = k_nodelist_gettype(list->listhead->next,type);

	return node;
}

LPCSTR k_nodelist_getlistname(PFXNODELIST list)
{
	LPCSTR name = NULL;

	if(list && list->listhead)
		name = (LPCSTR)list->listhead->data;

	return name;
}




#ifndef __FX_NODE_
#define __FX_NODE_

#include "fxtypes.h"


VOID   k_initque(PFXQUEUE q);
INT    k_isempty(PFXQUEUE q);
VOID   k_enqueue(PFXQUEUE q, LPVOID value);
LPVOID k_dequeue(PFXQUEUE q);
void k_enqueue_with_lock(PFXQUEUE q, LPVOID value);
LPVOID k_dequeue_with_lock(PFXQUEUE q);

VOID   k_debug_queue(FXNODE FAR* head);

PFXNODE k_nodelist_init(BYTE type,LPCSTR name,LPVOID data);
PFXNODE k_nodelist_create(BYTE type,LPCSTR name,LPVOID data,PFXNODE next,PFXNODE last);
PFXNODE k_nodelist_ncreate(BYTE type,ULONG objId,LPVOID data,PFXNODE last,PFXNODE next);
PFXNODE k_nodelist_copy(PFXNODE node);
VOID    k_nodelist_add(PFXNODE head,PFXNODE new);
VOID 	k_nodelist_addtohead(PFXNODE head,PFXNODE new);
PFXNODE k_nodelist_gettype(PFXNODE head,BYTE type);
PFXNODE k_nodelist_get(PFXNODE head,INT index);
PFXNODE k_nodelist_getname(PFXNODE head,LPCSTR name);
PFXNODE k_nodelist_getname_and_type(PFXNODE head,LPCSTR name,BYTE type);
PFXNODE k_nodelist_remove(PFXNODE head,LPCSTR name);
PFXNODE	k_nodelist_last(PFXNODE head);

//
// node list helper functions and types
//


PFXNODELIST k_nodelist_allocate_list(LPCSTR listName,NodeListDeallocator deallocator);
VOID		k_nodelist_deallocate_list(PFXNODELIST nodelist);
PFXNODE		k_nodelist_addtolist(PFXNODELIST nodelist,BYTE type,LPCSTR name,LPVOID data);
PFXNODE 	k_nodelist_naddtolist_tohead(PFXNODELIST list,BYTE type,ULONG objId,LPVOID data);
PFXNODE 	k_nodelist_addtolist_tohead(PFXNODELIST list,BYTE type,LPCSTR name,LPVOID data);
PFXNODE 	k_nodelist_naddtolist(PFXNODELIST list,BYTE type,ULONG objId,LPVOID data);
PFXNODE 	k_nodelist_addnodetolist(PFXNODELIST list,PFXNODE new);
PFXNODELIST	k_nodelist_clear_list(PFXNODELIST nodelist);
PFXNODE		k_nodelist_searchByName(PFXNODELIST list,LPCSTR name);
PFXNODE		k_nodelist_searchByType(PFXNODELIST list,BYTE type);
LPCSTR		k_nodelist_getlistname(PFXNODELIST list);
PFXNODE		k_nodelist_getfirstnode(PFXNODELIST list);


typedef void (*FOREACHNODE)(LPVOID ctx,LPVOID pdata);
typedef BOOL (*FOREACHNODEUNTIL)(LPVOID ctx,LPVOID pdata);


VOID    k_nodelist_foreach_data(PFXNODE head,LPVOID ctx,FOREACHNODE each);
PFXNODE k_nodelist_foreach_until_data(PFXNODE head,LPVOID context,FOREACHNODEUNTIL each);
VOID    k_nodelist_foreach_type(PFXNODELIST list,BYTE type,LPVOID context,FOREACHNODE each); // TODO: fix name
VOID    k_nodelist_foreach_listdata(PFXNODELIST list,LPVOID context,FOREACHNODE each);
PFXNODE k_nodelist_foreach_until_listdata(PFXNODELIST list,LPVOID context,FOREACHNODEUNTIL each);
VOID 	k_nodelist_foreach_listdata_remove(PFXNODELIST list,LPVOID context,FOREACHNODEUNTIL checkStatus);


#endif

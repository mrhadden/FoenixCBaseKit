/* ----------------------------------------------------------------------------
 * umm_malloc.h - a memory allocator for embedded systems (microcontrollers)
 *
 * See copyright notice in LICENSE.TXT
 * ----------------------------------------------------------------------------
 */

#ifndef UMM_MALLOC_H
#define UMM_MALLOC_H

#include "fxtypes.h"

/* ------------------------------------------------------------------------ */

void  umm_init( void );
void FAR *umm_malloc( unsigned long size );
void FAR *umm_calloc( unsigned long num, unsigned long size );
void FAR *umm_realloc( void FAR *ptr, unsigned long size );
void  umm_free( void FAR *ptr );


/* ------------------------------------------------------------------------ */

#endif /* UMM_MALLOC_H */

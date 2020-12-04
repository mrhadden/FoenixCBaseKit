/************************************************************************/
/*                                                                      */
/*  Dc_Memory.h : Header pour la bibliothèque de gestion mémoire.       */
/*                                                                      */
/************************************************************************/
/*  Auteur : Olivier ZARDINI  *  Brutal Deluxe Software  *  Avril 2013  */
/************************************************************************/

#define MEMORY_INIT              1
#define MEMORY_FREE              2

#define MEMORY_ADD_RELOC        10
#define MEMORY_GET_RELOC_NB     11
#define MEMORY_SORT_RELOC       12
#define MEMORY_FREE_RELOC       13

#define MEMORY_ADD_INTERSEG     20
#define MEMORY_GET_INTERSEG_NB  21
#define MEMORY_SORT_INTERSEG    22
#define MEMORY_FREE_INTERSEG    23

void my_Memory(int i,void *p,void *pp);

/************************************************************************/

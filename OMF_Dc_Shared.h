/************************************************************************/
/*                                                                      */
/*  Dc_Shared.h : Header pour la bibliothèque de fonctions génériques.  */
/*                                                                      */
/************************************************************************/
/*  Auteur : Olivier ZARDINI  *  Brutal Deluxe Software  *  Avril 2013  */
/************************************************************************/


//typedef unsigned long       DWORD;    /* Unsigned 32 bit */
//typedef unsigned short      WORD;     /* Unsigned 16 bit */
//typedef unsigned char       BYTE;     /* Unsigned 8 bit */

unsigned char *LoadFileData(char *c,int *i);
int CreateBinaryFile(char *c,int,unsigned char *i);
int my_stricmp(char *c, char *cc);

/************************************************************************/

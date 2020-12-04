
#ifndef __FX_STRING_
#define __FX_STRING_

#include <stdlib.h>
#include <string.h>
#include "fxtypes.h"

typedef struct _fx_string
{
	UINT   size;
	int    pos;
	LPCHAR buffer;
}FXSTRING;
typedef FXSTRING FAR *PFXSTRING;

PFXSTRING k_fxstring_init(UINT size);
PFXSTRING k_fxstring_new(LPCHAR initial,UINT size);
PFXSTRING k_fxstring_reinit(PFXSTRING fxstring);
VOID 	  k_fxstring_free(PFXSTRING string);
UINT 	  k_fxstring_length(PFXSTRING string);
UINT 	  k_fxstring_size(PFXSTRING string);
UINT 	  k_fxstring_position(PFXSTRING string);
LPCHAR 	  k_fxstring_addchar(PFXSTRING string,CHAR c);
CHAR 	  k_fxstring_removechar(PFXSTRING string);
LPCHAR 	  k_fxstring_add(PFXSTRING string,LPCHAR text);
UINT 	  k_fxstring_fxadd(PFXSTRING string,PFXSTRING text);
LPCHAR 	  k_fxstring_as(PFXSTRING string);
CHAR 	  k_fxstring_at(PFXSTRING string,UINT index);
LPCHAR 	  k_fxstring_copy_string(PFXSTRING src);

PFXSTRING k_fxstring_from_long(ULONG nLong);

BOOL 	  k_fxstring_equals(PFXSTRING string,LPCHAR match);

LPSTR k_wcstombs(LPWCSTR wcsBuffer,LPSTR mbsBuffer,UINT charCount);

PFAR k_strip_padding(PFAR text);
PFAR k_replace_padding(PFAR orgText,CHAR replacement);
PFAR k_bytetohex(UCHAR b, char FAR *buffer);
PFAR k_bytetodec(UCHAR b, char FAR *buffer);
PFAR k_inttodec(UINT b, char FAR *buffer);
PFAR k_longtodec(ULONG b, char FAR *buffer);
LPCHAR k_string_append_integer(LPCHAR baseText,UINT integer);

PFAR k_itoa(unsigned int value, char FAR *result, int base);

LPCHAR k_pad_string(char FAR * dest,char FAR * src,char filler,int width);
void k_reverse(char FAR str[], int length);

char *strupr(char *s);
char *strlower(char * s);

LPSTR  k_strcat(LPSTR dest,LPCSTR src);
LPSTR  k_strcpy(LPSTR dest,LPCSTR src);
LPCHAR k_string_rtrim(LPCHAR lpText);
LPCHAR k_string_ltrim(LPCHAR lpText);
LPCHAR k_string_trim(LPCHAR lpText);
LPCHAR k_string_replace(LPCSTR s, LPCSTR old, LPCSTR new);
INT k_string_indexOf(LPCHAR chars,CHAR c);
LPCHAR k_string_toString(CHAR c,LPCHAR toBuffer);
LPCHAR k_string_copy_string(LPCSTR src);


LPCHAR k_to_uppercase(LPCHAR orgText);
LPCHAR k_to_lowercase(LPCHAR orgText);

LPCSTR k_get_date_string(LPCHAR buffer);
LPCSTR k_get_localtime_string(LPCHAR buffer);

#endif

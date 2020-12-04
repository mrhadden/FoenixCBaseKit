/************************************************************************/
/*                                                                      */
/*  Dc_Shared.c : Module pour la bibliothèque de fonctions génériques.  */
/*                                                                      */
/************************************************************************/
/*  Auteur : Olivier ZARDINI  *  Brutal Deluxe Software  *  Avril 2013  */
/************************************************************************/

#include "fxtypes.h"
#include "fxmemorymanager.h"
#include "OMF_Dc_Shared.h"

#include "ff.h"

#pragma section CODE=LOADER,offset $9:0F00

unsigned char *LoadFileData(char *file_path, int *data_length_rtn)
{
  int file_size = 0;
  unsigned char *data = NULL;
  UINT nb_read = 0;

  FIL *fd = k_calloc(1,sizeof(FIL));

  f_open(fd,file_path,FA_READ);
  file_size = fd->obj.objsize;
  data = (unsigned char *) k_calloc(1,file_size+1);
  if(data == NULL)
    {
      f_close(fd);
      return(NULL);
    }

  //nb_read = (int) fread(data,1,file_size,fd);
  f_read(fd,data,file_size,&nb_read);
  if(nb_read < 0)
    {
      k_free(data);
      f_close(fd);
      return(NULL);
    }
  data[nb_read] = '\0';

  f_close(fd);

  k_free(fd);

  *data_length_rtn = nb_read;
  return data;
}


/********************************************************************/
/*  CreateBinaryFile() :  Création d'un fichier binaire sur disque. */
/********************************************************************/
int CreateBinaryFile(char *file_path, int data_length, unsigned char *data)
{

  UINT nb_write = 0;
  FIL *fd;

  fd = k_calloc(1,sizeof(FIL));

  f_open(fd,file_path,FA_WRITE);

  f_write(fd,data,data_length,&nb_write);

  f_close(fd);

  k_free(fd);


  if(nb_write != data_length)
    return(2);
  return(0);
}


/************************************************************************/
/*  my_stricmp() :  On compare les chaines de caractere sans la casse.  */
/************************************************************************/
int my_stricmp(char *string1, char *string2)
{
#if defined(WIN64) | defined(WIN32) 
  return(stricmp(string1,string2));
#else
  char a, b;
  
  while(*string1)
    {
      a = toupper(*string1);
      b = toupper(*string2);
      if(a != b)
        break;
      string1++;
      string2++;
    }
  if(*string1 == 0)
    return(0);
    
  return((*string1 - *string2) > 0 ? 1:-1); 
#endif
}

/************************************************************************/

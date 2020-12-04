/**************************************************************************/
/*                                                                        */
/*  OMF_Extract.c : Module pour l'extraction du LCONST des fichiers OMF.  */
/*                                                                        */
/**************************************************************************/
/*  Auteur : Olivier ZARDINI  *  Brutal Deluxe Software  *  Janvier 2014  */
/**************************************************************************/

#include "fxos.h"
/*
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
*/

#if defined(WIN32) || defined(WIN64)
#include <malloc.h>
#endif

#include "OMF_Dc_Shared.h"
#include "OMF_Load.h"
#include "OMF_Dc_Memory.h"
#include "OMF_Record.h"
#include "OMF_Extract.h"

#pragma section CODE=LOADER,offset $9:D7FF

/***********************************************************************************/
/*  ExtractLConstFile() :  Création d'un fichier contenant le LCONST d'un segment. */
/***********************************************************************************/
int ExtractLConstFile(struct omf_file *current_file, char *segment_number_txt, char *file_path)
{
  int i, result, segment_number;
  struct omf_segment *current_segment;

  /** Numéro du Segment **/
  if(strlen(segment_number_txt) == 0)
    {
      //printf("  Error : Invalid Segment number.\n");
      return(1);
    }
  segment_number = atoi(segment_number_txt);
  if(segment_number <= 0)
    {
      //printf("  Error : Invalid Segment number (%s).\n",segment_number_txt);
      return(2);
    }
  if(segment_number > current_file->nb_segment)
    {
      //printf("  Error : Segment number is higher than available segments (%d > %d).\n",segment_number,current_file->nb_segment);
      return(3);
    }

  /** On récupère le Segment **/
  for(i=1, current_segment=current_file->first_segment; current_segment; current_segment=current_segment->next, i++)
    if(i == segment_number)
      {
        /* Création d'un fichier */
        if(current_segment->data_length == 0 || current_segment->data == NULL)
          {
            //printf("  Error : LConst data is missing in Segment number %d.\n",segment_number);
            return(4);
          }

        /** Ecriture des données **/
        result = CreateBinaryFile(file_path,current_segment->data_length,current_segment->data);
        if(result == 1)
        {
          //printf("  Error : Impossible to create output file '%s'.\n",file_path);
        }
        else if(result == 2)
        {
          //printf("  Error : Impossible to write LConst data into output file '%s'.\n",file_path);
        }
        /* Fini */
        break;
      }

  /* OK */
  return(0);
}

/**************************************************************************/

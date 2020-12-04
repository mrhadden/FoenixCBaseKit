/************************************************************************/
/*                                                                      */
/*  OMF_Load.c : Module pour le chargement/décodage des fichiers OMF.   */
/*                                                                      */
/************************************************************************/
/*  Auteur : Olivier ZARDINI  *  Brutal Deluxe Software  *  Avril 2013  */
/************************************************************************/

#include "fxtypes.h"
#include "fxmemorymanager.h"
/*
#include <stdlib.h>
#include <string.h>
*/


#include "OMF_Dc_Memory.h"
#include "OMF_Dc_Shared.h"
#include "OMF_Record.h"
#include "OMF_Load.h"

static int DecodeOMFFile(struct omf_file *f);
static struct omf_segment *DecodeOneSegment(struct omf_file *f,int i,int *ii);
static int DecodeSegmentHeader(struct omf_file *f,int i,struct omf_segment_header *sh);
static int DecodeSegmentHeaderV0(struct omf_file *f,int i,struct omf_segment_header *sh);
static int DecodeSegmentHeaderV1(struct omf_file *f,int i,struct omf_segment_header *sh);
static int DecodeSegmentHeaderV2(struct omf_file *f,int i,struct omf_segment_header *sh);
static int DecodeSegmentBody(struct omf_file *f,int i,struct omf_segment *s);
static void mem_free_segment(struct omf_segment *s);

#pragma section CODE=LOADER,offset $9:B1CE

/***********************************************************/
/*  LoadOMFFile() :  Chargement/Décodage d'un fichier OMF. */
/***********************************************************/
struct omf_file *LoadOMFFile(char *file_path)
{
  int i, result;
  struct omf_file *current_file;

  k_debug_string("LoadOMFFile enter... \r\n");

  /* Allocation mémoire */
  current_file = (struct omf_file *) k_calloc(1,sizeof(struct omf_file));
  if(current_file == NULL)
    {
      //printf("  Error : Impossible to allocate memory to process OMF file.\n");
      return(NULL);
    }

  /* Conservation du nom */
  current_file->file_path = k_string_copy_string(file_path);
  if(current_file->file_path == NULL)
    {
      mem_free_omf(current_file);
      //printf("  Error : Impossible to allocate memory to process OMF file.\n");
      return(NULL);
    }

  k_debug_strings("LoadOMFFile current_file->file_path:",current_file->file_path);

  for(i=(int)strlen(current_file->file_path); i>=0; i--)
    if(current_file->file_path[i] == '\\' || current_file->file_path[i] == '/')
      {
        current_file->file_name = &current_file->file_path[i+1];
        break;
      }
  if(current_file->file_name == NULL)
    current_file->file_name = current_file->file_path;

  /* Chargement des Data du fichier OMF */
  current_file->data = LoadFileData(file_path,&current_file->data_length);
  if(current_file->data == NULL)
    {
      mem_free_omf(current_file);
      //printf("  Error : Impossible to load OMF file '%s'.\n",file_path);
      return(NULL);
    }

  /** Décodage du contenu du fichier OMF **/
  result = DecodeOMFFile(current_file);

  k_debug_string("LoadOMFFile exit... \r\n");

  /* Renvoie la structure */
  return(current_file);
}


/***************************************************************/
/*  DecodeOMFFile() :  Décodage des structures du fichier OMF. */
/***************************************************************/
static int DecodeOMFFile(struct omf_file *current_file)
{
  int file_offset, segment_length;
  struct omf_segment *current_segment;

  /* Init */
  file_offset = 0;

  /** On va itérer sur tous les segments **/
  while(1)
    {
      /** Décode 1 segment **/
      current_segment = DecodeOneSegment(current_file,file_offset,&segment_length);
      if(current_segment == NULL)
        {
          /* Erreur */
          return(1);
        }

      /* Rattache ce segment au fichier OMF */
      if(current_file->first_segment == NULL)
        current_file->first_segment = current_segment;
      else
        current_file->last_segment->next = current_segment;
      current_file->last_segment = current_segment;
      current_file->nb_segment++;

      /* Segment suivant */
      file_offset += segment_length;

      /* Fin de fichier */
      if(file_offset == current_file->data_length)
        break;
    }

  /* OK */
  return(0);
}


/****************************************************************/
/*  DecodeOneSegment() :  Décodage d'un Segment du fichier OMF. */
/****************************************************************/
static struct omf_segment *DecodeOneSegment(struct omf_file *current_file, int data_offset, int *segment_length_rtn)
{
  int result;
  struct omf_segment *current_segment;

  /* Allocation mémoire */
  current_segment = (struct omf_segment *) k_calloc(1,sizeof(struct omf_segment));
  if(current_segment == NULL)
    {
      //printf("  Error : Impossible to allocate memory to process Segment #%d.\n",current_file->nb_segment+1);
      return(NULL);
    }

  /** Décodage du Segment Header **/
  result = DecodeSegmentHeader(current_file,data_offset,&current_segment->header);
  if(result)
    {
      mem_free_segment(current_segment);
      return(NULL);
    }
  current_segment->header.FileOffset = data_offset;
  current_segment->header.SegmentOffset = 0;

  /** Décodage du Segment Body **/
  result = DecodeSegmentBody(current_file,data_offset+current_segment->header.DispDataOffset,current_segment);
  if(result)
    {
      mem_free_segment(current_segment);
      return(NULL);
    }

  /* Renvoie le segment */
  *segment_length_rtn = (int) current_segment->header.ByteCnt;
  return(current_segment);
}


/**********************************************************/
/*  DecodeSegmentHeader() :  Décode le Header du Segment. */
/**********************************************************/
static int DecodeSegmentHeader(struct omf_file *current_file, int data_offset, struct omf_segment_header *current_header)
{
  int error;

  /* Vérifie la taille */
  if(data_offset + SEGMENT_HEADER_VERSION_OFFSET > current_file->data_length)
    {
      //printf("  Error : Not enough data to encode a Segment Header (offset=%d, Segment #%d).\n",data_offset,current_file->nb_segment+1);
      return(1);
    }

  /**  On va déterminer la version de l'OMF utilisé  **/
  memcpy(&current_header->Version,&current_file->data[data_offset+SEGMENT_HEADER_VERSION_OFFSET],sizeof(BYTE));

  /** On décode selon le type **/
  if(current_header->Version == 0x00)
    error = DecodeSegmentHeaderV0(current_file,data_offset,current_header);
  else if(current_header->Version == 0x01)
    error = DecodeSegmentHeaderV1(current_file,data_offset,current_header);
  else if(current_header->Version == 0x02)
    error = DecodeSegmentHeaderV2(current_file,data_offset,current_header);
  else
    {
      //printf("  Segment #%d Header Error : Invalid 'Version' value (the value should be 0, 1 or 2 for the Apple IIgs).\n",current_file->nb_segment+1);
      return(1);
    }

  /* Code d'erreur */
  return(error);
}


/************************************************************/
/*  DecodeSegmentHeaderV0() :  Décode le Header du Segment. */
/************************************************************/
static int DecodeSegmentHeaderV0(struct omf_file *current_file, int data_offset, struct omf_segment_header *current_header)
{
  /* Vérifie la taille */
  if(data_offset + SEGMENT_HEADER_SIZE_V0 > current_file->data_length)
    {
      //printf("  Error : Not enough data to encode a Segment Header (offset=%d, Segment #%d).\n",data_offset,current_file->nb_segment+1);
      return(1);
    }

  /*******************************************************/
  /**  On va décoder tous les éléments fixes du Header  **/
  /*******************************************************/
  memcpy(&current_header->BlockCnt,&current_file->data[data_offset+0x00],sizeof(DWORD));     /* Block Count * 512 = ByteCount */
  current_header->ByteCnt = 512*current_header->BlockCnt;
  memcpy(&current_header->ResSpc,&current_file->data[data_offset+0x04],sizeof(DWORD));
  memcpy(&current_header->Length,&current_file->data[data_offset+0x08],sizeof(DWORD));
  memcpy(&current_header->Type,&current_file->data[data_offset+0x0C],sizeof(BYTE));
  memcpy(&current_header->LabLen,&current_file->data[data_offset+0x0D],sizeof(BYTE));
  memcpy(&current_header->NumLen,&current_file->data[data_offset+0x0E],sizeof(BYTE));
  /* Version Byte */
  memcpy(&current_header->BankSize,&current_file->data[data_offset+0x10],sizeof(DWORD));
  memcpy(&current_header->Org,&current_file->data[data_offset+0x14],sizeof(DWORD));
  memcpy(&current_header->Align,&current_file->data[data_offset+0x18],sizeof(DWORD));
  memcpy(&current_header->NumSEx,&current_file->data[data_offset+0x1C],sizeof(BYTE));
  memcpy(&current_header->undefine_1,&current_file->data[data_offset+0x1D],sizeof(BYTE));
  memcpy(&current_header->undefine_2,&current_file->data[data_offset+0x1E],sizeof(BYTE));
  memcpy(&current_header->undefine_3,&current_file->data[data_offset+0x1F],sizeof(BYTE));
  memcpy(&current_header->undefine_4,&current_file->data[data_offset+0x20],sizeof(BYTE));
  memcpy(&current_header->undefine_5,&current_file->data[data_offset+0x21],sizeof(BYTE));
  memcpy(&current_header->undefine_6,&current_file->data[data_offset+0x22],sizeof(BYTE));
  memcpy(&current_header->undefine_7,&current_file->data[data_offset+0x23],sizeof(BYTE));

  /********************************************/
  /**  On va valider les données récupérées  **/
  /********************************************/
  /* Taille du Segment */
  if((int)(data_offset + current_header->ByteCnt) > (int) current_file->data_length)
    {
      //printf("  Segment #%d Header Error : Invalid 'BlockCnt' value (the segment size can't be larger than the OMF file).\n",current_file->nb_segment+1);
      return(1);
    }
  if(current_header->ByteCnt < SEGMENT_HEADER_SIZE_V1)
    {
      //printf("  Segment #%d Header Error : Invalid 'BlockCnt' value (the segment size can't be smaller than the Sgement Header size).\n",current_file->nb_segment+1);
      return(1);
    }

  /* Nombre de 0x00 à ajouter à la fin */
  if(current_header->ResSpc >= 0x010000)
    {
      //printf("  Segment #%d Header Error : Invalid 'ResSpc' value (the size can't be larger than 64 KB).\n",current_file->nb_segment+1);
      return(1);
    }

  /* La taille d'un Segment en mémoire ne peut pas dépasser 64 KB */
  if(current_header->Length >= 0x010000)
    //printf("  Segment #%d Header Warning : Weird 'Length' value (the segment size is usually < 64 KB).\n",current_file->nb_segment+1);

  /* Type */
  if((current_header->Type & 0x1F) != 0x00 && (current_header->Type & 0x1F) != 0x01 && (current_header->Type & 0x1F) != 0x02 &&
     (current_header->Type & 0x1F) != 0x04 && (current_header->Type & 0x1F) != 0x08 && (current_header->Type & 0x1F) != 0x10 &&
     (current_header->Type & 0x1F) != 0x11 && (current_header->Type & 0x1F) != 0x12)
    {
      //printf("  Segment #%d Header Error : Invalid 'Type' value (possible values are $0,$1,$2,$4,$8,$10,$11 or $12).\n",current_file->nb_segment+1);
      return(1);
    }

  /* LabLen : 0 ou 10 */
  if(current_header->LabLen != 0x00 && current_header->LabLen != 0x0A)
    {
      //printf("  Segment #%d Header Error : Invalid 'LabLen' value (the value should be 0 or 10 for the Apple IIgs).\n",current_file->nb_segment+1);
      return(1);
    }

  /* Num Len : Tjs à 4 pour le IIgs */
  if(current_header->NumLen != 0x04)
    {
      //printf("  Segment #%d Header Error : Invalid 'NumLen' value (the value should be 4 for the Apple IIgs).\n",current_file->nb_segment+1);
      return(1);
    }

  /* BankSize : <= 64 KB */
  if(current_header->BankSize > 0x010000)
    {
      //printf("  Segment #%d Header Error : Invalid 'BankSize' value (the value can't be larger than 64 KB).\n",current_file->nb_segment+1);
      return(1);
    }

  /* Org : < 64 KB */
  if(current_header->Org >= 0x010000)
    //printf("  Segment #%d Header Warning : Unusual 'Org' value (the value in usually < 64 KB).\n",current_file->nb_segment+1);

  /* Align : 0, 0x0100 ou 0x010000 */
  if(current_header->Align != 0x00 && current_header->Align != 0x0100 && current_header->Align != 0x010000)
    {
      //printf("  Segment #%d Header Error : Invalid 'Align' value (the value should be 0, 256 or 64KB or for the Apple IIgs).\n",current_file->nb_segment+1);
      return(1);
    }

  /* NumSEx : Tjs à 0 */
  if(current_header->NumSEx != 0x00)
    {
      //printf("  Segment #%d Header Error : Invalid 'NumSEx' value (the value should be 0 for the Apple IIgs).\n",current_file->nb_segment+1);
      return(1);
    }

  /* Noms */
  memcpy(current_header->SegName,&current_file->data[data_offset+0x24],current_header->LabLen);

  /* OK */
  return(0);
}


/************************************************************/
/*  DecodeSegmentHeaderV1() :  Décode le Header du Segment. */
/************************************************************/
static int DecodeSegmentHeaderV1(struct omf_file *current_file, int data_offset, struct omf_segment_header *current_header)
{
  int length;

  /* Vérifie la taille */
  if(data_offset + SEGMENT_HEADER_SIZE_V1 > current_file->data_length)
    {
      //printf("  Error : Not enough data to encode a Segment Header (offset=%d, Segment #%d).\n",data_offset,current_file->nb_segment+1);
      return(1);
    }

  /*******************************************************/
  /**  On va décoder tous les éléments fixes du Header  **/
  /*******************************************************/
  memcpy(&current_header->BlockCnt,&current_file->data[data_offset+0x00],sizeof(DWORD));     /* Block Count * 512 = ByteCount */
  current_header->ByteCnt = 512*current_header->BlockCnt;
  memcpy(&current_header->ResSpc,&current_file->data[data_offset+0x04],sizeof(DWORD));
  memcpy(&current_header->Length,&current_file->data[data_offset+0x08],sizeof(DWORD));
  memcpy(&current_header->Type,&current_file->data[data_offset+0x0C],sizeof(BYTE));
  memcpy(&current_header->LabLen,&current_file->data[data_offset+0x0D],sizeof(BYTE));
  memcpy(&current_header->NumLen,&current_file->data[data_offset+0x0E],sizeof(BYTE));
  /* Version Byte */
  memcpy(&current_header->BankSize,&current_file->data[data_offset+0x10],sizeof(DWORD));
  memcpy(&current_header->undefine_1,&current_file->data[data_offset+0x14],sizeof(BYTE));
  memcpy(&current_header->undefine_2,&current_file->data[data_offset+0x15],sizeof(BYTE));
  memcpy(&current_header->undefine_3,&current_file->data[data_offset+0x16],sizeof(BYTE));
  memcpy(&current_header->undefine_4,&current_file->data[data_offset+0x17],sizeof(BYTE));
  memcpy(&current_header->Org,&current_file->data[data_offset+0x18],sizeof(DWORD));
  memcpy(&current_header->Align,&current_file->data[data_offset+0x1C],sizeof(DWORD));
  memcpy(&current_header->NumSEx,&current_file->data[data_offset+0x20],sizeof(BYTE));
  memcpy(&current_header->LCBank,&current_file->data[data_offset+0x21],sizeof(BYTE));               /* Language Card */
  memcpy(&current_header->SegNum,&current_file->data[data_offset+0x22],sizeof(WORD));
  memcpy(&current_header->EntryPointOffset,&current_file->data[data_offset+0x24],sizeof(DWORD));
  memcpy(&current_header->DispNameOffset,&current_file->data[data_offset+0x28],sizeof(WORD));       /* Load Name Offset */
  memcpy(&current_header->DispDataOffset,&current_file->data[data_offset+0x2A],sizeof(WORD));       /* Segment Name Offset */

  /********************************************/
  /**  On va valider les données récupérées  **/
  /********************************************/
  /* Taille du Segment */
  if((int)(data_offset + current_header->ByteCnt) > (int) current_file->data_length)
    {
      //printf("  Segment #%d Header Error : Invalid 'BlockCnt' value (the segment size can't be larger than the OMF file).\n",current_file->nb_segment+1);
      return(1);
    }
  if(current_header->ByteCnt < SEGMENT_HEADER_SIZE_V1)
    {
      //printf("  Segment #%d Header Error : Invalid 'BlockCnt' value (the segment size can't be smaller than the Sgement Header size).\n",current_file->nb_segment+1);
      return(1);
    }

  /* Nombre de 0x00 à ajouter à la fin */
  if(current_header->ResSpc >= 0x010000)
    {
      //printf("  Segment #%d Header Error : Invalid 'ResSpc' value (the size can't be larger than 64 KB).\n",current_file->nb_segment+1);
      return(1);
    }

  /* La taille d'un Segment en mémoire ne peut pas dépasser 64 KB */
  if(current_header->Length >= 0x010000)
    //printf("  Segment #%d Header Warning : Weird 'Length' value (the segment size is usually < 64 KB).\n",current_file->nb_segment+1);

  /* Type */
  if((current_header->Type & 0x1F) != 0x00 && (current_header->Type & 0x1F) != 0x01 && (current_header->Type & 0x1F) != 0x02 &&
     (current_header->Type & 0x1F) != 0x04 && (current_header->Type & 0x1F) != 0x08 && (current_header->Type & 0x1F) != 0x10 &&
     (current_header->Type & 0x1F) != 0x11 && (current_header->Type & 0x1F) != 0x12)
    {
      //printf("  Segment #%d Header Error : Invalid 'Type' value (possible values are $0,$1,$2,$4,$8,$10,$11 or $12).\n",current_file->nb_segment+1);
      return(1);
    }

  /* LabLen : 0 ou 10 */
  if(current_header->LabLen != 0x00 && current_header->LabLen != 0x0A)
    {
      //printf("  Segment #%d Header Error : Invalid 'LabLen' value (the value should be 0 or 10 for the Apple IIgs).\n",current_file->nb_segment+1);
      return(1);
    }

  /* Num Len : Tjs à 4 pour le IIgs */
  if(current_header->NumLen != 0x04)
    {
      //printf("  Segment #%d Header Error : Invalid 'NumLen' value (the value should be 4 for the Apple IIgs).\n",current_file->nb_segment+1);
      return(1);
    }

  /* BankSize : <= 64 KB */
  if(current_header->BankSize > 0x010000)
    {
      //printf("  Segment #%d Header Error : Invalid 'BankSize' value (the value can't be larger than 64 KB).\n",current_file->nb_segment+1);
      return(1);
    }

  /* Org : < 64 KB */
  if(current_header->Org >= 0x010000)
    //printf("  Segment #%d Header Warning : Unusual 'Org' value (the value is usually < 64 KB) and it is set to 0x%X.\n",current_file->nb_segment+1,current_header->Org);

  /* Align : 0, 0x0100 ou 0x010000 (0x200 avec GsBasic) */
  if(current_header->Align != 0x00 && current_header->Align != 0x0100 && current_header->Align != 0x010000)
    //printf("  Segment #%d Header Warning : Unusual 'Align' value (the value should be 0, 256 or 64KB or for the Apple IIgs) and it is set to 0x%X.\n",current_file->nb_segment+1,current_header->Align);

  /* NumSEx : Tjs à 0 */
  if(current_header->NumSEx != 0x00)
    {
      //printf("  Segment #%d Header Error : Invalid 'NumSEx' value (the value should be 0 for the Apple IIgs).\n",current_file->nb_segment+1);
      return(1);
    }

  /* SegNum : 1 -> N */
  if(current_header->SegNum != (WORD) current_file->nb_segment+1)
    {
      //printf("  Segment #%d Header Error : Invalid 'SegNum' value (the value should be %d and we have %d for the Apple IIgs).\n",current_file->nb_segment+1,current_file->nb_segment+1,current_header->SegNum);
      return(1);
    }

  /* Entry Point */
  if(current_header->EntryPointOffset > current_header->Length)
    {
      //printf("  Segment #%d Header Error : Invalid 'EntryPointOffset' value (the value can't be larger than the Segment size).\n",current_file->nb_segment+1);
      return(1);
    }

  /* DispName offset devrait être 44 ($2C) */
  if(current_header->DispNameOffset < SEGMENT_HEADER_MIN_SIZE_V1)
    {
      //printf("  Segment #%d Header Error : Invalid 'DispNameOffset' value (the value can't be smaller than the Segment Header size).\n",current_file->nb_segment+1);
      return(1);
    }
  if(current_header->DispNameOffset > current_header->ByteCnt)
    {
      //printf("  Segment #%d Header Error : Invalid 'DispNameOffset' value (the value can't be larger than the Segment size).\n",current_file->nb_segment+1);
      return(1);
    }

  /* DispData offset devrait être 64 ($40) */
  if(current_header->DispDataOffset < SEGMENT_HEADER_MIN_SIZE_V1)
    {
      //printf("  Segment #%d Header Error : Invalid 'DispDataOffset' value (the value can't be smaller than the Segment Header size).\n",current_file->nb_segment+1);
      return(1);
    }
  if(current_header->DispNameOffset > current_header->ByteCnt)
    {
      //printf("  Segment #%d Header Error : Invalid 'DispDataOffset' value (the value can't be larger than the Segment size).\n",current_file->nb_segment+1);
      return(1);
    }

  /*********************************************/
  /**  On va récupérer les données variables  **/
  /*********************************************/
  /* Noms */
  memcpy(current_header->LoadName,&current_file->data[data_offset+current_header->DispNameOffset],10);
  if(current_header->LabLen > 0)
    memcpy(current_header->SegName,&current_file->data[data_offset+current_header->DispNameOffset+10],current_header->LabLen);
  else
    {
      /* La longueur est codée au début */
      length = (int) current_file->data[data_offset+current_header->DispNameOffset+10];
      memcpy(&current_header->SegName,&current_file->data[data_offset+current_header->DispNameOffset+10+1],length);
    }

  /* OK */
  return(0);
}


/************************************************************/
/*  DecodeSegmentHeaderV2() :  Décode le Header du Segment. */
/************************************************************/
static int DecodeSegmentHeaderV2(struct omf_file *current_file, int data_offset, struct omf_segment_header *current_header)
{
  int length;

  /* Vérifie la taille */
  if(data_offset + SEGMENT_HEADER_SIZE_V2 > current_file->data_length)
    {
      //printf("  Error : Not enough data to encode a Segment Header (offset=%d, Segment #%d).\n",data_offset,current_file->nb_segment+1);
      return(1);
    }

  /*******************************************************/
  /**  On va décoder tous les éléments fixes du Header  **/
  /*******************************************************/
  memcpy(&current_header->ByteCnt,&current_file->data[data_offset+0x00],sizeof(DWORD));
  memcpy(&current_header->ResSpc,&current_file->data[data_offset+0x04],sizeof(DWORD));
  memcpy(&current_header->Length,&current_file->data[data_offset+0x08],sizeof(DWORD));
  memcpy(&current_header->undefine_1,&current_file->data[data_offset+0x0C],sizeof(BYTE));
  memcpy(&current_header->LabLen,&current_file->data[data_offset+0x0D],sizeof(BYTE));
  memcpy(&current_header->NumLen,&current_file->data[data_offset+0x0E],sizeof(BYTE));
  memcpy(&current_header->BankSize,&current_file->data[data_offset+0x10],sizeof(DWORD));
  memcpy(&current_header->Kind,&current_file->data[data_offset+0x14],sizeof(WORD));
  memcpy(&current_header->undefine_2,&current_file->data[data_offset+0x16],sizeof(BYTE));
  memcpy(&current_header->undefine_3,&current_file->data[data_offset+0x17],sizeof(BYTE));
  memcpy(&current_header->Org,&current_file->data[data_offset+0x18],sizeof(DWORD));
  memcpy(&current_header->Align,&current_file->data[data_offset+0x1C],sizeof(DWORD));
  memcpy(&current_header->NumSEx,&current_file->data[data_offset+0x20],sizeof(BYTE));
  memcpy(&current_header->undefine_4,&current_file->data[data_offset+0x21],sizeof(BYTE));
  memcpy(&current_header->SegNum,&current_file->data[data_offset+0x22],sizeof(WORD));
  memcpy(&current_header->EntryPointOffset,&current_file->data[data_offset+0x24],sizeof(DWORD));
  memcpy(&current_header->DispNameOffset,&current_file->data[data_offset+0x28],sizeof(WORD));       /* Load Name Offset */
  memcpy(&current_header->DispDataOffset,&current_file->data[data_offset+0x2A],sizeof(WORD));       /* Segment Name Offset */

  /********************************************/
  /**  On va valider les données récupérées  **/
  /********************************************/
  /* Taille du Segment */
  if((int)(data_offset + current_header->ByteCnt) > (int) current_file->data_length)
    {
      //printf("  Segment #%d Header Error : Invalid 'ByteCnt' value (the segment size can't be larger than the OMF file).\n",current_file->nb_segment+1);
      return(1);
    }
  if(current_header->ByteCnt < SEGMENT_HEADER_SIZE_V2)
    {
      //printf("  Segment #%d Header Error : Invalid 'ByteCnt' value (the segment size can't be smaller than the Sgement Header size).\n",current_file->nb_segment+1);
      return(1);
    }

  /* Nombre de 0x00 à ajouter à la fin */
  if(current_header->ResSpc >= 0x010000)
    {
      //printf("  Segment #%d Header Error : Invalid 'ResSpc' value (the size can't be larger than 64 KB).\n",current_file->nb_segment+1);
      return(1);
    }

  /* La taille d'un Segment en mémoire ne peut pas dépasser 64 KB */
  if(current_header->Length >= 0x010000)
    {
      //printf("  Segment #%d Header Error : Invalid 'Length' value (the segment size can't be larger than 64 KB).\n",current_file->nb_segment+1);
      return(1);
    }

  /* LabLen : 0 ou 10 */
  if(current_header->LabLen != 0x00 && current_header->LabLen != 0x0A)
    {
      //printf("  Segment #%d Header Error : Invalid 'LabLen' value (the value should be 0 or 10 for the Apple IIgs).\n",current_file->nb_segment+1);
      return(1);
    }

  /* Num Len : Tjs à 4 pour le IIgs */
  if(current_header->NumLen != 0x04)
    {
      //printf("  Segment #%d Header Error : Invalid 'NumLen' value (the value should be 4 for the Apple IIgs).\n",current_file->nb_segment+1);
      return(1);
    }

  /* BankSize : <= 64 KB */
  if(current_header->BankSize > 0x010000)
    {
      //printf("  Segment #%d Header Error : Invalid 'BankSize' value (the value can't be larger than 64 KB).\n",current_file->nb_segment+1);
      return(1);
    }

  /* Kind */
  if((current_header->Kind & 0x001F) != 0x0000 && (current_header->Kind & 0x001F) != 0x0001 && (current_header->Kind & 0x001F) != 0x0002 &&
     (current_header->Kind & 0x001F) != 0x0004 && (current_header->Kind & 0x001F) != 0x0008 && (current_header->Kind & 0x001F) != 0x0010 &&
     (current_header->Kind & 0x001F) != 0x0012)
    {
      //printf("  Segment #%d Header Error : Invalid 'Kind' value (possible values are 0,1,2,4,8,16 or 18).\n",current_file->nb_segment+1);
      return(1);
    }

  /* Org : < 64 KB */
  if(current_header->Org >= 0x010000)
    //printf("  Segment #%d Header Warning : Unusual 'Org' value (the value is usually < 64 KB).\n",current_file->nb_segment+1);

  /* Align : 0, 0x0100 ou 0x010000 */
  if(current_header->Align != 0x00 && current_header->Align != 0x0100 && current_header->Align != 0x010000)
    {
      //printf("  Segment #%d Header Error : Invalid 'Align' value (the value should be 0, 256 or 64KB or for the Apple IIgs).\n",current_file->nb_segment+1);
      return(1);
    }

  /* NumSEx : Tjs à 0 */
  if(current_header->NumSEx != 0x00)
    {
      //printf("  Segment #%d Header Error : Invalid 'NumSEx' value (the value should be 0 for the Apple IIgs).\n",current_file->nb_segment+1);
      return(1);
    }

  /* SegNum : 1 -> N */
  if(current_header->SegNum != (WORD) current_file->nb_segment+1)
    {
      //printf("  Segment #%d Header Error : Invalid 'SegNum' value (the value should be %d and we have %d for the Apple IIgs).\n",current_file->nb_segment+1,current_file->nb_segment+1,current_header->SegNum);
      return(1);
    }

  /* Entry Point */
  if(current_header->EntryPointOffset > current_header->Length)
    {
      //printf("  Segment #%d Header Error : Invalid 'EntryPointOffset' value (the value can't be larger than the Segment size).\n",current_file->nb_segment+1);
      return(1);
    }

  /* DispName offset (devrait être 44 si TmpOrg est vide) */
  if(current_header->DispNameOffset < SEGMENT_HEADER_MIN_SIZE_V2)
    {
      //printf("  Segment #%d Header Error : Invalid 'DispNameOffset' value (the value can't be smaller than the Segment Header size).\n",current_file->nb_segment+1);
      return(1);
    }
  if(current_header->DispNameOffset > current_header->ByteCnt)
    {
      //printf("  Segment #%d Header Error : Invalid 'DispNameOffset' value (the value can't be larger than the Segment size).\n",current_file->nb_segment+1);
      return(1);
    }

  /* DispData offset (devrait être 64 si TmpOrg est vide) */
  if(current_header->DispDataOffset < SEGMENT_HEADER_MIN_SIZE_V2)
    {
      //printf("  Segment #%d Header Error : Invalid 'DispDataOffset' value (the value can't be smaller than the Segment Header size).\n",current_file->nb_segment+1);
      return(1);
    }
  if(current_header->DispNameOffset > current_header->ByteCnt)
    {
      //printf("  Segment #%d Header Error : Invalid 'DispDataOffset' value (the value can't be larger than the Segment size).\n",current_file->nb_segment+1);
      return(1);
    }

  /*********************************************/
  /**  On va récupérer les données variables  **/
  /*********************************************/
  /* Temp Org */
  if(current_header->DispNameOffset > SEGMENT_HEADER_MIN_SIZE_V2) /* 44 */
    {
      current_header->TempOrgLength = current_header->DispNameOffset - SEGMENT_HEADER_MIN_SIZE_V2;
      memcpy(current_header->TempOrg,&current_file->data[data_offset+SEGMENT_HEADER_MIN_SIZE_V2],current_header->TempOrgLength);
    }
  else
    current_header->TempOrgLength = 0;

  /* Noms */
  memcpy(current_header->LoadName,&current_file->data[data_offset+current_header->DispNameOffset],10);
  if(current_header->LabLen > 0)
    memcpy(current_header->SegName,&current_file->data[data_offset+current_header->DispNameOffset+10],current_header->LabLen);
  else
    {
      /* La longueur est codée au début du texte, sur 1 Byte */
      length = (int) current_file->data[data_offset+current_header->DispNameOffset+10];
      memcpy(&current_header->SegName,&current_file->data[data_offset+current_header->DispNameOffset+10+1],length);
    }

  /* OK */
  return(0);
}


/*******************************************************************************/
/*  DecodeSegmentBody() :  Décode les différents Records du Body d'un Segment. */
/*******************************************************************************/
static int DecodeSegmentBody(struct omf_file *current_file, int data_offset, struct omf_segment *current_segment)
{
  int body_offset, body_length, record_length, record_data_length;
  unsigned char *record_data;
  unsigned char *data;
  struct omf_body_record *current_record;

  /* Init */
  body_offset = 0;
  body_length = current_segment->header.ByteCnt - current_segment->header.DispDataOffset;

  /* On libère les structures précédentes */
  my_Memory(MEMORY_FREE_RELOC,NULL,NULL);
  my_Memory(MEMORY_FREE_INTERSEG,NULL,NULL);

  /** Boucle sur tous les Records du Body **/
  while(1)
    {
      /** Extrait un Record du Body **/
      current_record = DecodeOneRecord(&current_file->data[data_offset+body_offset],current_segment->header.SegNum,data_offset+body_offset,current_segment->header.ByteCnt+body_offset,current_segment->data,current_segment->data_length,&record_length,current_segment);
      if(current_record == NULL)
        return(1);
      current_record->FileOffset = data_offset+body_offset;
      current_record->SegmentOffset = current_segment->header.ByteCnt + body_offset;

      /* Attache de Record aux précédents */
      if(current_segment->first_record == NULL)
        current_segment->first_record = current_record;
      else
        current_segment->last_record->next = current_record;
      current_segment->last_record = current_record;
      current_segment->nb_record++;

      /******************************************************/
      /** On conserve un pointeur vers les Data du Segment **/
      /******************************************************/
      if(current_record->operation_code >= 0x01 && current_record->operation_code <= 0xDF && current_record->record_data != NULL)
        {
          /* Ajoute les data du CONST au Segment */
          record_data = ((struct record_CONST *)(current_record->record_data))->data;
          record_data_length = ((struct record_CONST *)(current_record->record_data))->ByteCnt;

          /* Allocation mémoire */
          data = (unsigned char *) k_calloc(1,current_segment->data_length+record_data_length);
          if(data == NULL)
            {
              //printf("  Error : Impossible to allocate memory to process Segment Body Record.\n");
              mem_free_record(current_record);
              return(1);
            }

          /* Data */
          memcpy(data,current_segment->data,current_segment->data_length);
          memcpy(data+current_segment->data_length,record_data,record_data_length);
          k_free(current_segment->data);
          current_segment->data = data;

          /* Longueur Data (CONST/DS/LCONST) */
          current_segment->data_length += record_data_length;

          /* Offset des Data (CONST/DS/LCONST) du segment */
          if(current_segment->data_offset == 0)
            current_segment->data_offset = current_record->FileOffset + 1;    /* Code */
        }
      else if(current_record->operation_code == 0xF1 && current_record->record_data != NULL)
        {
          /* Ajoute les 00 du DS au Segment */
          record_data_length = (int) ((struct record_DS *)(current_record->record_data))->nb_zero_byte;

          /* Allocation mémoire */
          data = (unsigned char *) k_calloc(1,current_segment->data_length+record_data_length);
          if(data == NULL)
            {
              //printf("  Error : Impossible to allocate memory to process Segment Body Record.\n");
              mem_free_record(current_record);
              return(1);
            }

          /* Data */
          memcpy(data,current_segment->data,current_segment->data_length);
          k_free(current_segment->data);
          current_segment->data = data;

          /* Longueur Data (CONST/DS/LCONST) */
          current_segment->data_length += record_data_length;

          /* Offset des Data (CONST/DS/LCONST) du segment */
          if(current_segment->data_offset == 0)
            current_segment->data_offset = current_record->FileOffset + 1 + sizeof(DWORD);    /* Code + Nb 0 */
        }
      else if(current_record->operation_code == 0xF2 && current_record->record_data != NULL)
        {
          /* Ajoute les data du LCONST au Segment */
          record_data = ((struct record_LCONST *)(current_record->record_data))->data;
          record_data_length = ((struct record_LCONST *)(current_record->record_data))->ByteCnt;

          /* Allocation mémoire */
          data = (unsigned char *) k_calloc(1,current_segment->data_length+record_data_length);
          if(data == NULL)
            {
              //printf("  Error : Impossible to allocate memory to process Segment Body Record.\n");
              mem_free_record(current_record);
              return(1);
            }

          /* Data */
          memcpy(data,current_segment->data,current_segment->data_length);
          memcpy(data+current_segment->data_length,record_data,record_data_length);
          k_free(current_segment->data);
          current_segment->data = data;

          /* Longueur Data (CONST/DS/LCONST) */
          current_segment->data_length += record_data_length;

          /* Offset des Data (CONST/DS/LCONST) du segment */
          if(current_segment->data_offset == 0)
            current_segment->data_offset = current_record->FileOffset + 1 + sizeof(DWORD);    /* Code + Length */
        }

      /**************************************************************/
      /** On conserve l'offset et la longueur des Reloc du Segment **/
      /**************************************************************/
      if(current_record->operation_code == 0xE2)      /* RELOC */
        {
          /* Longueur Reloc */
          current_segment->reloc_length += current_record->length;

          /* Offset des Reloc du segment */
          if(current_segment->reloc_offset == 0)
            current_segment->reloc_offset = current_record->FileOffset;
        }
      else if(current_record->operation_code == 0xE3)      /* INTERSEG */
        {
          /* Longueur Reloc */
          current_segment->reloc_length += current_record->length;

          /* Offset des Reloc du segment */
          if(current_segment->reloc_offset == 0)
            current_segment->reloc_offset = current_record->FileOffset;
        }
      else if(current_record->operation_code == 0xF5)      /* cRELOC */
        {
          /* Longueur Reloc */
          current_segment->reloc_length += current_record->length;

          /* Offset des Reloc du segment */
          if(current_segment->reloc_offset == 0)
            current_segment->reloc_offset = current_record->FileOffset;
        }
      else if(current_record->operation_code == 0xF6)      /* cINTERSEG */
        {
          /* Longueur Reloc */
          current_segment->reloc_length += current_record->length;

          /* Offset des Reloc du segment */
          if(current_segment->reloc_offset == 0)
            current_segment->reloc_offset = current_record->FileOffset;
        }
      else if(current_record->operation_code == 0xF7)      /* SUPER */
        {
          /* Longueur Reloc */
          current_segment->reloc_length += current_record->length;

          /* Offset des Reloc du segment */
          if(current_segment->reloc_offset == 0)
            current_segment->reloc_offset = current_record->FileOffset;
        }


      /** On passe au Record suivant si on est arrivé à la fin du Body (V 2.1) **/
      body_offset += record_length;
      if(body_offset == body_length)
        break;

      /* On va aussi s'arrêter si on tombe sur un DEND (qui en V0 et V1 vient avant la fin du Body) */
      if(current_record->operation_code == 0x00)
        break;
    }

  /** On va extraire tous les RELOC / INTERSEG **/
  my_Memory(MEMORY_SORT_RELOC,&current_segment->nb_reloc,&current_segment->tab_reloc);
  my_Memory(MEMORY_SORT_INTERSEG,&current_segment->nb_interseg,&current_segment->tab_interseg);

  /* OK */
  return(0);
}


/*******************************************************************/
/*  mem_free_omf() :  Libération mémoire de la structure omf_file. */
/*******************************************************************/
void mem_free_omf(struct omf_file *current_file)
{
  struct omf_segment *current_segment;
  struct omf_segment *next_segment;

  if(current_file)
    {
      if(current_file->file_path)
        k_free(current_file->file_path);

      if(current_file->data)
        k_free(current_file->data);

      /* Libération des segments */
      for(current_segment = current_file->first_segment; current_segment; )
        {
          next_segment = current_segment->next;
          mem_free_segment(current_segment);
          current_segment = next_segment;
        }

      k_free(current_file);
    }
}


/**************************************************************************/
/*  mem_free_segment() :  Libération mémoire de la structure omf_segment. */
/**************************************************************************/
static void mem_free_segment(struct omf_segment *current_segment)
{
  int i;
  struct omf_body_record *current_record;
  struct omf_body_record *next_record;

  if(current_segment)
    {
      /* Libération des Records */
      for(current_record=current_segment->first_record; current_record; )
        {
          next_record = current_record->next;
          mem_free_record(current_record);
          current_record = next_record;
        }

      /* Libération des Data */
      if(current_segment->data)
        k_free(current_segment->data);

      /* Libération des tableaux */
      if(current_segment->tab_reloc)
        {
          for(i=0; i<current_segment->nb_reloc; i++)
            k_free(current_segment->tab_reloc[i]);
          k_free(current_segment->tab_reloc);
        }
      if(current_segment->tab_interseg)
        {
          for(i=0; i<current_segment->nb_interseg; i++)
            k_free(current_segment->tab_interseg[i]);
          k_free(current_segment->tab_interseg);
        }

      k_free(current_segment);
    }
}

/************************************************************************/

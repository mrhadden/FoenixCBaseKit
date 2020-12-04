/************************************************************************/
/*                                                                      */
/*  OMF_Record.c : Module pour le décodage des Record des Segments OMF. */
/*                                                                      */
/************************************************************************/
/*  Auteur : Olivier ZARDINI  *  Brutal Deluxe Software  *  Avril 2013  */
/************************************************************************/

#include "fxos.h"
//#include <stdlib.h>
//#include <string.h>

#include "OMF_Dc_Memory.h"
#include "OMF_Dc_Shared.h"
#include "OMF_Load.h"
#include "OMF_Record.h"

static void *DecodeRecordEND(unsigned char *,int,int,int *);
static void *DecodeRecordCONST(unsigned char *,int,int,int *);
static void *DecodeRecordALIGN(unsigned char *,int,int,int *);
static void *DecodeRecordORG(unsigned char *,int,int,int *);
static void *DecodeRecordRELOC(unsigned char *,int,int,int *);
static void *DecodeRecordINTERSEG(unsigned char *,int,int,int *);
static void *DecodeRecordUSING(unsigned char *,int,int,int *);
static void *DecodeRecordSTRONG(unsigned char *,int,int,int *);
static void *DecodeRecordGLOBAL(unsigned char *,int,int,int *);
static void *DecodeRecordGEQU(unsigned char *,int,int,int *);
static void *DecodeRecordMEM(unsigned char *,int,int,int *);
static void *DecodeRecordEXPR(unsigned char *,int,int,int *);
static void *DecodeRecordZEXPR(unsigned char *,int,int,int *);
static void *DecodeRecordBEXPR(unsigned char *,int,int,int *);
static void *DecodeRecordRELEXPR(unsigned char *,int,int,int *);
static void *DecodeRecordLOCAL(unsigned char *,int,int,int *);
static void *DecodeRecordEQU(unsigned char *,int,int,int *);
static void *DecodeRecordDS(unsigned char *,int,int,int *);
static void *DecodeRecordLCONST(unsigned char *,int,int,int *);
static void *DecodeRecordLEXPR(unsigned char *,int,int,int *);
static void *DecodeRecordENTRY(unsigned char *,int,int,int *);
static void *DecodeRecordcRELOC(unsigned char *,int,int,int *);
static void *DecodeRecordcINTERSEG(unsigned char *,int,int,int *);
static void *DecodeRecordSUPER(unsigned char *,int,int,unsigned char *,int,int *,struct omf_segment *);
static void *DecodeRecordGeneral(unsigned char *,int,int,int *);
static void *DecodeRecordExperimental(unsigned char *,int,int,int *);

static struct subrecord_SuperReloc2 *DecodeSuperReloc2(unsigned char *,unsigned char *,int,BYTE *,int *,struct omf_segment *);
static struct subrecord_SuperReloc3 *DecodeSuperReloc3(unsigned char *,unsigned char *,int,BYTE *,int *,struct omf_segment *);
static struct subrecord_SuperInterseg1 *DecodeSuperInterseg1(unsigned char *,unsigned char *,int,BYTE *,int *,struct omf_segment *);
static struct subrecord_SuperInterseg212 *DecodeSuperInterseg212(unsigned char *,BYTE,unsigned char *,int,BYTE *,int *,struct omf_segment *);
static struct subrecord_SuperInterseg1324 *DecodeSuperInterseg1324(unsigned char *,BYTE,unsigned char *,int,BYTE *,int *,struct omf_segment *);
static struct subrecord_SuperInterseg2536 *DecodeSuperInterseg2536(unsigned char *,BYTE,unsigned char *,int,BYTE *,int *,struct omf_segment *);

static void AddReloc(BYTE,BYTE,DWORD,DWORD,int);
static void AddInterseg(BYTE,BYTE,DWORD,DWORD,WORD,WORD,int);

static void mem_free_END(struct record_END *);
static void mem_free_CONST(struct record_CONST *);
static void mem_free_ALIGN(struct record_ALIGN *);
static void mem_free_ORG(struct record_ORG *);
static void mem_free_RELOC(struct record_RELOC *);
static void mem_free_INTERSEG(struct record_INTERSEG *);
static void mem_free_USING(struct record_USING *);
static void mem_free_STRONG(struct record_STRONG *);
static void mem_free_GLOBAL(struct record_GLOBAL *);
static void mem_free_GEQU(struct record_GEQU *);
static void mem_free_MEM(struct record_MEM *);
static void mem_free_EXPR(struct record_EXPR *);
static void mem_free_ZEXPR(struct record_ZEXPR *);
static void mem_free_BEXPR(struct record_BEXPR *);
static void mem_free_RELEXPR(struct record_RELEXPR *);
static void mem_free_LOCAL(struct record_LOCAL *);
static void mem_free_EQU(struct record_EQU *);
static void mem_free_DS(struct record_DS *);
static void mem_free_LCONST(struct record_LCONST *);
static void mem_free_LEXPR(struct record_LEXPR *);
static void mem_free_ENTRY(struct record_ENTRY *);
static void mem_free_cRELOC(struct record_cRELOC *);
static void mem_free_cINTERSEG(struct record_cINTERSEG *);
static void mem_free_SUPER(struct record_SUPER *);
static void mem_free_General(struct record_General *);
static void mem_free_Experimental(struct record_Experimental *);

#pragma section CODE=LOADER,offset $9:7000

/****************************************************************/
/*  DecodeOneRecord() :  Décode un Record du Body d'un Segment. */
/****************************************************************/
struct omf_body_record *DecodeOneRecord(unsigned char *data, int segment_num, int file_offset, int segment_offset, unsigned char *lconst, int lconst_length, int *record_length_rtn, struct omf_segment *current_segment)
{
  struct omf_body_record *current_record;

  /* Allocation mémoire */
  current_record = (struct omf_body_record *) k_calloc(1,sizeof(struct omf_body_record));
  if(current_record == NULL)
    {
      ////printf("Error : Impossible to allocate memory to process Segment #%02X Body Record.\n",current_segment->header.SegNum);
      return(NULL);
    }

  /* Operation code */
  current_record->operation_code = data[0];

  /** Données du Record **/
  if(current_record->operation_code == 0x00)
    current_record->record_data = DecodeRecordEND(data,file_offset,segment_offset,record_length_rtn);
  else if(current_record->operation_code >= 0x01 && current_record->operation_code <= 0xDF)
    current_record->record_data = DecodeRecordCONST(data,file_offset,segment_offset,record_length_rtn);
  else if(current_record->operation_code == 0xE0)
    current_record->record_data = DecodeRecordALIGN(data,file_offset,segment_offset,record_length_rtn);
  else if(current_record->operation_code == 0xE1)
    current_record->record_data = DecodeRecordORG(data,file_offset,segment_offset,record_length_rtn);
  else if(current_record->operation_code == 0xE2)
    current_record->record_data = DecodeRecordRELOC(data,file_offset,segment_offset,record_length_rtn);
  else if(current_record->operation_code == 0xE3)
    current_record->record_data = DecodeRecordINTERSEG(data,file_offset,segment_offset,record_length_rtn);
  else if(current_record->operation_code == 0xE4)
    current_record->record_data = DecodeRecordUSING(data,file_offset,segment_offset,record_length_rtn);
  else if(current_record->operation_code == 0xE5)
    current_record->record_data = DecodeRecordSTRONG(data,file_offset,segment_offset,record_length_rtn);
  else if(current_record->operation_code == 0xE6)
    current_record->record_data = DecodeRecordGLOBAL(data,file_offset,segment_offset,record_length_rtn);
  else if(current_record->operation_code == 0xE7)
    current_record->record_data = DecodeRecordGEQU(data,file_offset,segment_offset,record_length_rtn);
  else if(current_record->operation_code == 0xE8)
    current_record->record_data = DecodeRecordMEM(data,file_offset,segment_offset,record_length_rtn);
  else if(current_record->operation_code == 0xEB)
    current_record->record_data = DecodeRecordEXPR(data,file_offset,segment_offset,record_length_rtn);
  else if(current_record->operation_code == 0xEC)
    current_record->record_data = DecodeRecordZEXPR(data,file_offset,segment_offset,record_length_rtn);
  else if(current_record->operation_code == 0xED)
    current_record->record_data = DecodeRecordBEXPR(data,file_offset,segment_offset,record_length_rtn);
  else if(current_record->operation_code == 0xEE)
    current_record->record_data = DecodeRecordRELEXPR(data,file_offset,segment_offset,record_length_rtn);
  else if(current_record->operation_code == 0xEF)
    current_record->record_data = DecodeRecordLOCAL(data,file_offset,segment_offset,record_length_rtn);
  else if(current_record->operation_code == 0xF0)
    current_record->record_data = DecodeRecordEQU(data,file_offset,segment_offset,record_length_rtn);
  else if(current_record->operation_code == 0xF1)
    current_record->record_data = DecodeRecordDS(data,file_offset,segment_offset,record_length_rtn);
  else if(current_record->operation_code == 0xF2)
    current_record->record_data = DecodeRecordLCONST(data,file_offset,segment_offset,record_length_rtn);
  else if(current_record->operation_code == 0xF3)
    current_record->record_data = DecodeRecordLEXPR(data,file_offset,segment_offset,record_length_rtn);
  else if(current_record->operation_code == 0xF4)
    current_record->record_data = DecodeRecordENTRY(data,file_offset,segment_offset,record_length_rtn);
  else if(current_record->operation_code == 0xF5)
    current_record->record_data = DecodeRecordcRELOC(data,file_offset,segment_offset,record_length_rtn);
  else if(current_record->operation_code == 0xF6)
    current_record->record_data = DecodeRecordcINTERSEG(data,file_offset,segment_offset,record_length_rtn);
  else if(current_record->operation_code == 0xF7)
    current_record->record_data = DecodeRecordSUPER(data,file_offset,segment_offset,lconst,lconst_length,record_length_rtn,current_segment);
  else if(current_record->operation_code == 0xFB)
    current_record->record_data = DecodeRecordGeneral(data,file_offset,segment_offset,record_length_rtn);
  else if(current_record->operation_code >= 0xFC && current_record->operation_code <= 0xFF)
    current_record->record_data = DecodeRecordExperimental(data,file_offset,segment_offset,record_length_rtn);
  else
    {
      /* Operation Code inconnu */
      ////printf("Error : Unknow Record Operation Code %02X for Segment #%02X at offset %d.\n",current_record->operation_code,segment_num,file_offset);
      mem_free_record(current_record);
      return(NULL);
    }

  /* Valide le Record */
  if(current_record->record_data == NULL)
    {
      mem_free_record(current_record);
      return(NULL);
    }

  /* Longueur du Record */
  current_record->length = *record_length_rtn;

  /* Renvoie le Record */
  return(current_record);
}


/***********************************************************************************/
/*  GetRecordName() :  Revoie le nom d'un Record par rapport à son Operation Code. */
/***********************************************************************************/
char *GetRecordName(BYTE operation_code, BYTE RecordType)
{
  static char record_name[256];

  /* Renvoi le nom du Record */
  if(operation_code == 0x00)
    strcpy(record_name,"END");
  else if(operation_code >= 0x01 && operation_code <= 0xDF)
    strcpy(record_name,"CONST");
  else if(operation_code == 0xE0)
    strcpy(record_name,"ALIGN");
  else if(operation_code == 0xE1)
    strcpy(record_name,"ORG");
  else if(operation_code == 0xE2)
    strcpy(record_name,"RELOC");
  else if(operation_code == 0xE3)
    strcpy(record_name,"INTERSEG");
  else if(operation_code == 0xE4)
    strcpy(record_name,"USING");
  else if(operation_code == 0xE5)
    strcpy(record_name,"STRONG");
  else if(operation_code == 0xE6)
    strcpy(record_name,"GLOBAL");
  else if(operation_code == 0xE7)
    strcpy(record_name,"GEQU");
  else if(operation_code == 0xE8)
    strcpy(record_name,"MEM");
  else if(operation_code == 0xEB)
    strcpy(record_name,"EXPR");
  else if(operation_code == 0xEC)
    strcpy(record_name,"ZEXPR");
  else if(operation_code == 0xED)
    strcpy(record_name,"BEXPR");
  else if(operation_code == 0xEE)
    strcpy(record_name,"RELEXPR");
  else if(operation_code == 0xEF)
    strcpy(record_name,"LOCAL");
  else if(operation_code == 0xF0)
    strcpy(record_name,"EQU");
  else if(operation_code == 0xF1)
    strcpy(record_name,"DS");
  else if(operation_code == 0xF2)
    strcpy(record_name,"LCONST");
  else if(operation_code == 0xF3)
    strcpy(record_name,"LEXPR");
  else if(operation_code == 0xF4)
    strcpy(record_name,"ENTRY");
  else if(operation_code == 0xF5)
    strcpy(record_name,"cRELOC");
  else if(operation_code == 0xF6)
    strcpy(record_name,"cINTERSEG");
  else if(operation_code == 0xF7)
    strcpy(record_name,GetSUPERType(RecordType));
  else if(operation_code == 0xFB)
    strcpy(record_name,"General");
  else if(operation_code >= 0xFC && operation_code <= 0xFF)
    strcpy(record_name,"Experimental");
  else
    strcpy(record_name,"Unknown");

  /* Renvoie le nom */
  return(&record_name[0]);
}


/******************************************************/
/*  GetSUPERType() :  Décode le Type du Record SUPER. */
/******************************************************/
char *GetSUPERType(BYTE Type)
{
  static char type_txt[256];

  /* On ne veut pas du Type */
  if(Type == 0xFF)
    {
      strcpy(type_txt,"SUPER");
      return(&type_txt[0]);
    }

  /** Décode le type du SUPER **/
  if(Type == 0x00)
    strcpy(type_txt,"SUPER RELOC2");
  else if(Type == 0x01)
    strcpy(type_txt,"SUPER RELOC3");
  else if(Type >= 0x02 && Type <= 0x25)   /* 37 */
  {
	  //printf(type_txt,"SUPER INTERSEG%d",Type-1);

  }
  else
    strcpy(type_txt," SUPER Unknown");

  /* Renvoi le Texte */
  return(&type_txt[0]);
}


/*****************************************************************************/
/*  mem_free_record() :  Libération mémoire de la structure omf_body_record. */
/*****************************************************************************/
void mem_free_record(struct omf_body_record *current_record)
{
  if(current_record)
    {
      if(current_record->operation_code == 0x00)
        mem_free_END((struct record_END *) current_record->record_data);
      else if(current_record->operation_code >= 0x01 && current_record->operation_code <= 0xDF)
        mem_free_CONST((struct record_CONST *) current_record->record_data);
      else if(current_record->operation_code == 0xE0)
        mem_free_ALIGN((struct record_ALIGN *) current_record->record_data);
      else if(current_record->operation_code == 0xE1)
        mem_free_ORG((struct record_ORG *) current_record->record_data);
      else if(current_record->operation_code == 0xE2)
        mem_free_RELOC((struct record_RELOC *) current_record->record_data);
      else if(current_record->operation_code == 0xE3)
        mem_free_INTERSEG((struct record_INTERSEG *) current_record->record_data);
      else if(current_record->operation_code == 0xE4)
        mem_free_USING((struct record_USING *) current_record->record_data);
      else if(current_record->operation_code == 0xE5)
        mem_free_STRONG((struct record_STRONG *) current_record->record_data);
      else if(current_record->operation_code == 0xE6)
        mem_free_GLOBAL((struct record_GLOBAL *) current_record->record_data);
      else if(current_record->operation_code == 0xE7)
        mem_free_GEQU((struct record_GEQU *) current_record->record_data);
      else if(current_record->operation_code == 0xE8)
        mem_free_MEM((struct record_MEM *) current_record->record_data);
      else if(current_record->operation_code == 0xEB)
        mem_free_EXPR((struct record_EXPR *) current_record->record_data);
      else if(current_record->operation_code == 0xEC)
        mem_free_ZEXPR((struct record_ZEXPR *) current_record->record_data);
      else if(current_record->operation_code == 0xED)
        mem_free_BEXPR((struct record_BEXPR *) current_record->record_data);
      else if(current_record->operation_code == 0xEE)
        mem_free_RELEXPR((struct record_RELEXPR *) current_record->record_data);
      else if(current_record->operation_code == 0xEF)
        mem_free_LOCAL((struct record_LOCAL *) current_record->record_data);
      else if(current_record->operation_code == 0xF0)
        mem_free_EQU((struct record_EQU *) current_record->record_data);
      else if(current_record->operation_code == 0xF1)
        mem_free_DS((struct record_DS *) current_record->record_data);
      else if(current_record->operation_code == 0xF2)
        mem_free_LCONST((struct record_LCONST *) current_record->record_data);
      else if(current_record->operation_code == 0xF3)
        mem_free_LEXPR((struct record_LEXPR *) current_record->record_data);
      else if(current_record->operation_code == 0xF4)
        mem_free_ENTRY((struct record_ENTRY *) current_record->record_data);
      else if(current_record->operation_code == 0xF5)
        mem_free_cRELOC((struct record_cRELOC *) current_record->record_data);
      else if(current_record->operation_code == 0xF6)
        mem_free_cINTERSEG((struct record_cINTERSEG *) current_record->record_data);
      else if(current_record->operation_code == 0xF7)
        mem_free_SUPER((struct record_SUPER *) current_record->record_data);
      else if(current_record->operation_code == 0xFB)
        mem_free_General((struct record_General *) current_record->record_data);
      else if(current_record->operation_code >= 0xFC && current_record->operation_code <= 0xFF)
        mem_free_Experimental((struct record_Experimental *) current_record->record_data);

      k_free(current_record);
    }
}


/*************************************************/
/*  DecodeRecordEND() :  Décodage du Record END. */
/*************************************************/
static void *DecodeRecordEND(unsigned char *data, int file_offset, int segment_offset, int *record_length_rtn)
{
  struct record_END *current_record;

  /* Allocation mémoire */
  current_record = (struct record_END *) k_calloc(1,sizeof(struct record_END));
  if(current_record == NULL)
    {
      //printf("Error : Impossible to allocate memory to process Segment Body Record.\n");
      return(NULL);
    }

  /* Offset */
  current_record->FileOffset = (DWORD) file_offset;
  current_record->SegmentOffset = (DWORD) segment_offset;

  /* Operation Code */
  current_record->operation_code = data[0];

  /* Renvoie la structure */
  *record_length_rtn = 1;
  return(current_record);
}


/*****************************************************/
/*  DecodeRecordCONST() :  Décodage du Record CONST. */
/*****************************************************/
static void *DecodeRecordCONST(unsigned char *data, int file_offset, int segment_offset, int *record_length_rtn)
{
  struct record_CONST *current_record;

  /* Allocation mémoire */
  current_record = (struct record_CONST *) k_calloc(1,sizeof(struct record_CONST));
  if(current_record == NULL)
    {
      //printf("Error : Impossible to allocate memory to process Segment Body Record.\n");
      return(NULL);
    }

  /* Offset */
  current_record->FileOffset = (DWORD) file_offset;
  current_record->SegmentOffset = (DWORD) segment_offset;

  /* Operation Code : 0x01 - 0xDF */
  current_record->operation_code = data[0];

  /** Zone de Data qui n'a pas besoin d'être relogée **/
  current_record->ByteCnt = data[0];

  /* Allocation mémoire */
  current_record->data = (unsigned char *) k_calloc(current_record->ByteCnt,sizeof(unsigned char));
  if(current_record->data == NULL)
    {
      //printf("Error : Impossible to allocate memory to process Segment Body Record LCONST : %d bytes required.\n",current_record->ByteCnt);
      mem_free_CONST(current_record);
      return(NULL);
    }
  
  /* Copie les Data */
  memcpy(current_record->data,&data[1],current_record->ByteCnt);

  /* Renvoie la structure */
  *record_length_rtn = 1 + current_record->ByteCnt;
  return(current_record);
}


/*****************************************************/
/*  DecodeRecordALIGN() :  Décodage du Record ALIGN. */
/*****************************************************/
static void *DecodeRecordALIGN(unsigned char *data, int file_offset, int segment_offset, int *record_length_rtn)
{
  struct record_ALIGN *current_record;

  /* Allocation mémoire */
  current_record = (struct record_ALIGN *) k_calloc(1,sizeof(struct record_ALIGN));
  if(current_record == NULL)
    {
      //printf("Error : Impossible to allocate memory to process Segment Body Record.\n");
      return(NULL);
    }

  /* Offset */
  current_record->FileOffset = (DWORD) file_offset;
  current_record->SegmentOffset = (DWORD) segment_offset;

  /* Operation Code */
  current_record->operation_code = data[0];

  /* Renvoie la structure */
  return(current_record);
}


/*************************************************/
/*  DecodeRecordORG() :  Décodage du Record ORG. */
/*************************************************/
static void *DecodeRecordORG(unsigned char *data, int file_offset, int segment_offset, int *record_length_rtn)
{  
  struct record_ORG *current_record;

  /* Allocation mémoire */
  current_record = (struct record_ORG *) k_calloc(1,sizeof(struct record_ORG));
  if(current_record == NULL)
    {
      //printf("Error : Impossible to allocate memory to process Segment Body Record.\n");
      return(NULL);
    }

  /* Offset */
  current_record->FileOffset = (DWORD) file_offset;
  current_record->SegmentOffset = (DWORD) segment_offset;

  /* Operation Code */
  current_record->operation_code = data[0];

  /* Renvoie la structure */
  return(current_record);
}


/*****************************************************/
/*  DecodeRecordRELOC() :  Décodage du Record RELOC. */
/*****************************************************/
static void *DecodeRecordRELOC(unsigned char *data, int file_offset, int segment_offset, int *record_length_rtn)
{
  struct record_RELOC *current_record;

  /* Allocation mémoire */
  current_record = (struct record_RELOC *) k_calloc(1,sizeof(struct record_RELOC));
  if(current_record == NULL)
    {
      //printf("Error : Impossible to allocate memory to process Segment Body Record.\n");
      return(NULL);
    }

  /* Offset */
  current_record->FileOffset = (DWORD) file_offset;
  current_record->SegmentOffset = (DWORD) segment_offset;

  /* Operation Code */
  current_record->operation_code = data[0];

  /* Récupère les données */
  current_record->ByteCnt = data[1];
  current_record->BitShiftCnt = data[2];
  memcpy(&current_record->OffsetPatch,&data[3],sizeof(DWORD));
  memcpy(&current_record->OffsetReference,&data[7],sizeof(DWORD));

  /* Conserve ce RELOC */
  AddReloc(current_record->ByteCnt,current_record->BitShiftCnt,current_record->OffsetPatch,current_record->OffsetReference,RECORD_RELOC);

  /* Renvoie la structure */
  *record_length_rtn = 3*sizeof(BYTE) + 2*sizeof(DWORD);
  return(current_record);
}


/***********************************************************/
/*  DecodeRecordINTERSEG() :  Décodage du Record INTERSEG. */
/***********************************************************/
static void *DecodeRecordINTERSEG(unsigned char *data, int file_offset, int segment_offset, int *record_length_rtn)
{
  struct record_INTERSEG *current_record;

  /* Allocation mémoire */
  current_record = (struct record_INTERSEG *) k_calloc(1,sizeof(struct record_INTERSEG));
  if(current_record == NULL)
    {
      //printf("Error : Impossible to allocate memory to process Segment Body Record.\n");
      return(NULL);
    }

  /* Offset */
  current_record->FileOffset = (DWORD) file_offset;
  current_record->SegmentOffset = (DWORD) segment_offset;

  /* Operation Code */
  current_record->operation_code = data[0];

  /** Récupère les informations **/
  current_record->ByteCnt = data[1];
  current_record->BitShiftCnt = data[2];
  memcpy(&current_record->OffsetPatch,&data[3],sizeof(DWORD));
  memcpy(&current_record->FileNum,&data[7],sizeof(WORD));
  memcpy(&current_record->SegNum,&data[9],sizeof(WORD));
  memcpy(&current_record->OffsetReference,&data[11],sizeof(DWORD));

  /* Conserve ce INTERSEG */
  AddInterseg(current_record->ByteCnt,current_record->BitShiftCnt,current_record->OffsetPatch,current_record->OffsetReference,current_record->FileNum,current_record->SegNum,RECORD_INTERSEG);

  /* Renvoie la structure */
  *record_length_rtn = 3*sizeof(BYTE) + 2*sizeof(DWORD) + 2*sizeof(WORD);
  return(current_record);
}


/*****************************************************/
/*  DecodeRecordUSING() :  Décodage du Record USING. */
/*****************************************************/
static void *DecodeRecordUSING(unsigned char *data, int file_offset, int segment_offset, int *record_length_rtn)
{
  struct record_USING *current_record;

  /* Allocation mémoire */
  current_record = (struct record_USING *) k_calloc(1,sizeof(struct record_USING));
  if(current_record == NULL)
    {
      //printf("Error : Impossible to allocate memory to process Segment Body Record.\n");
      return(NULL);
    }


  /* Offset */
  current_record->FileOffset = (DWORD) file_offset;
  current_record->SegmentOffset = (DWORD) segment_offset;

  /* Operation Code */
  current_record->operation_code = data[0];

  /* Renvoie la structure */
  return(current_record);
}

  
/*******************************************************/
/*  DecodeRecordSTRONG() :  Décodage du Record STRONG. */
/*******************************************************/
static void *DecodeRecordSTRONG(unsigned char *data, int file_offset, int segment_offset, int *record_length_rtn)
{
  struct record_STRONG *current_record;

  /* Allocation mémoire */
  current_record = (struct record_STRONG *) k_calloc(1,sizeof(struct record_STRONG));
  if(current_record == NULL)
    {
      //printf("Error : Impossible to allocate memory to process Segment Body Record.\n");
      return(NULL);
    }

  /* Offset */
  current_record->FileOffset = (DWORD) file_offset;
  current_record->SegmentOffset = (DWORD) segment_offset;

  /* Operation Code */
  current_record->operation_code = data[0];

  /* Renvoie la structure */
  return(current_record);
}


/*******************************************************/
/*  DecodeRecordGLOBAL() :  Décodage du Record GLOBAL. */
/*******************************************************/
static void *DecodeRecordGLOBAL(unsigned char *data, int file_offset, int segment_offset, int *record_length_rtn)
{
  struct record_GLOBAL *current_record;

  /* Allocation mémoire */
  current_record = (struct record_GLOBAL *) k_calloc(1,sizeof(struct record_GLOBAL));
  if(current_record == NULL)
    {
      //printf("Error : Impossible to allocate memory to process Segment Body Record.\n");
      return(NULL);
    }

  /* Offset */
  current_record->FileOffset = (DWORD) file_offset;
  current_record->SegmentOffset = (DWORD) segment_offset;

  /* Operation Code */
  current_record->operation_code = data[0];

  /* Renvoie la structure */
  return(current_record);
}


/***************************************************/
/*  DecodeRecordGEQU() :  Décodage du Record GEQU. */
/***************************************************/
static void *DecodeRecordGEQU(unsigned char *data, int file_offset, int segment_offset, int *record_length_rtn)
{
  struct record_GEQU *current_record;

  /* Allocation mémoire */
  current_record = (struct record_GEQU *) k_calloc(1,sizeof(struct record_GEQU));
  if(current_record == NULL)
    {
      //printf("Error : Impossible to allocate memory to process Segment Body Record.\n");
      return(NULL);
    }

  /* Offset */
  current_record->FileOffset = (DWORD) file_offset;
  current_record->SegmentOffset = (DWORD) segment_offset;

  /* Operation Code */
  current_record->operation_code = data[0];

  /* Renvoie la structure */
  return(current_record);
}


/*************************************************/
/*  DecodeRecordMEM() :  Décodage du Record MEM. */
/*************************************************/
static void *DecodeRecordMEM(unsigned char *data, int file_offset, int segment_offset, int *record_length_rtn)
{
  struct record_MEM *current_record;

  /* Allocation mémoire */
  current_record = (struct record_MEM *) k_calloc(1,sizeof(struct record_MEM));
  if(current_record == NULL)
    {
      //printf("Error : Impossible to allocate memory to process Segment Body Record.\n");
      return(NULL);
    }

  /* Offset */
  current_record->FileOffset = (DWORD) file_offset;
  current_record->SegmentOffset = (DWORD) segment_offset;

  /* Operation Code */
  current_record->operation_code = data[0];

  /* Renvoie la structure */
  return(current_record);
}


/***************************************************/
/*  DecodeRecordEXPR() :  Décodage du Record EXPR. */
/***************************************************/
static void *DecodeRecordEXPR(unsigned char *data, int file_offset, int segment_offset, int *record_length_rtn)
{
  struct record_EXPR *current_record;

  /* Allocation mémoire */
  current_record = (struct record_EXPR *) k_calloc(1,sizeof(struct record_EXPR));
  if(current_record == NULL)
    {
      //printf("Error : Impossible to allocate memory to process Segment Body Record.\n");
      return(NULL);
    }

  /* Offset */
  current_record->FileOffset = (DWORD) file_offset;
  current_record->SegmentOffset = (DWORD) segment_offset;

  /* Operation Code */
  current_record->operation_code = data[0];

  /* Renvoie la structure */
  return(current_record);
}


/*****************************************************/
/*  DecodeRecordZEXPR() :  Décodage du Record ZEXPR. */
/*****************************************************/
static void *DecodeRecordZEXPR(unsigned char *data, int file_offset, int segment_offset, int *record_length_rtn)
{
  struct record_ZEXPR *current_record;

  /* Allocation mémoire */
  current_record = (struct record_ZEXPR *) k_calloc(1,sizeof(struct record_ZEXPR));
  if(current_record == NULL)
    {
      //printf("Error : Impossible to allocate memory to process Segment Body Record.\n");
      return(NULL);
    }

  /* Offset */
  current_record->FileOffset = (DWORD) file_offset;
  current_record->SegmentOffset = (DWORD) segment_offset;

  /* Operation Code */
  current_record->operation_code = data[0];

  /* Renvoie la structure */
  return(current_record);
}


/*****************************************************/
/*  DecodeRecordBEXPR() :  Décodage du Record BEXPR. */
/*****************************************************/
static void *DecodeRecordBEXPR(unsigned char *data, int file_offset, int segment_offset, int *record_length_rtn)
{
  struct record_BEXPR *current_record;

  /* Allocation mémoire */
  current_record = (struct record_BEXPR *) k_calloc(1,sizeof(struct record_BEXPR));
  if(current_record == NULL)
    {
      //printf("Error : Impossible to allocate memory to process Segment Body Record.\n");
      return(NULL);
    }

  /* Offset */
  current_record->FileOffset = (DWORD) file_offset;
  current_record->SegmentOffset = (DWORD) segment_offset;

  /* Operation Code */
  current_record->operation_code = data[0];

  /* Renvoie la structure */
  return(current_record);
}


/********************************************************/
/*  DecodeRecordRELEXPR() :  Décodage du Record ELEXPR. */
/********************************************************/
static void *DecodeRecordRELEXPR(unsigned char *data, int file_offset, int segment_offset, int *record_length_rtn)
{
  struct record_RELEXPR *current_record;

  /* Allocation mémoire */
  current_record = (struct record_RELEXPR *) k_calloc(1,sizeof(struct record_RELEXPR));
  if(current_record == NULL)
    {
      //printf("Error : Impossible to allocate memory to process Segment Body Record.\n");
      return(NULL);
    }

  /* Offset */
  current_record->FileOffset = (DWORD) file_offset;
  current_record->SegmentOffset = (DWORD) segment_offset;

  /* Operation Code */
  current_record->operation_code = data[0];

  /* Renvoie la structure */
  return(current_record);
}


/*****************************************************/
/*  DecodeRecordLOCAL() :  Décodage du Record LOCAL. */
/*****************************************************/
static void *DecodeRecordLOCAL(unsigned char *data, int file_offset, int segment_offset, int *record_length_rtn)
{
  struct record_LOCAL *current_record;

  /* Allocation mémoire */
  current_record = (struct record_LOCAL *) k_calloc(1,sizeof(struct record_LOCAL));
  if(current_record == NULL)
    {
      //printf("Error : Impossible to allocate memory to process Segment Body Record.\n");
      return(NULL);
    }

  /* Offset */
  current_record->FileOffset = (DWORD) file_offset;
  current_record->SegmentOffset = (DWORD) segment_offset;

  /* Operation Code */
  current_record->operation_code = data[0];

  /* Renvoie la structure */
  return(current_record);
}


/*************************************************/
/*  DecodeRecordEQU() :  Décodage du Record EQU. */
/*************************************************/
static void *DecodeRecordEQU(unsigned char *data, int file_offset, int segment_offset, int *record_length_rtn)
{
  struct record_EQU *current_record;

  /* Allocation mémoire */
  current_record = (struct record_EQU *) k_calloc(1,sizeof(struct record_EQU));
  if(current_record == NULL)
    {
      //printf("Error : Impossible to allocate memory to process Segment Body Record.\n");
      return(NULL);
    }

  /* Offset */
  current_record->FileOffset = (DWORD) file_offset;
  current_record->SegmentOffset = (DWORD) segment_offset;

  /* Operation Code */
  current_record->operation_code = data[0];

  /* Renvoie la structure */
  return(current_record);
}


/***********************************************/
/*  DecodeRecordDS() :  Décodage du Record DS. */
/***********************************************/
static void *DecodeRecordDS(unsigned char *data, int file_offset, int segment_offset, int *record_length_rtn)
{
  struct record_DS *current_record;

  /* Allocation mémoire */
  current_record = (struct record_DS *) k_calloc(1,sizeof(struct record_DS));
  if(current_record == NULL)
    {
      //printf("Error : Impossible to allocate memory to process Segment Body Record.\n");
      return(NULL);
    }

  /* Offset */
  current_record->FileOffset = (DWORD) file_offset;
  current_record->SegmentOffset = (DWORD) segment_offset;

  /* Operation Code */
  current_record->operation_code = data[0];

  /* Nombre de Byte à $00 */
  memcpy(&current_record->nb_zero_byte,&data[1],sizeof(DWORD));

  /* Renvoie la structure */
  *record_length_rtn = 1 + sizeof(DWORD);
  return(current_record);
}


/*******************************************************/
/*  DecodeRecordLCONST() :  Décodage du Record LCONST. */
/*******************************************************/
static void *DecodeRecordLCONST(unsigned char *data, int file_offset, int segment_offset, int *record_length_rtn)
{
  struct record_LCONST *current_record;

  /* Allocation mémoire */
  current_record = (struct record_LCONST *) k_calloc(1,sizeof(struct record_LCONST));
  if(current_record == NULL)
    {
      //printf("Error : Impossible to allocate memory to process Segment Body Record.\n");
      return(NULL);
    }

  /* Offset */
  current_record->FileOffset = (DWORD) file_offset;
  current_record->SegmentOffset = (DWORD) segment_offset;

  /* Operation Code : 0xF2 */
  current_record->operation_code = data[0];

  /** Zone de Data ou de Code **/
  memcpy(&current_record->ByteCnt,&data[1],sizeof(DWORD));

  /* Allocation mémoire */
  current_record->data = (unsigned char *) k_calloc(current_record->ByteCnt,sizeof(unsigned char));
  if(current_record->data == NULL)
    {
      //printf("Error : Impossible to allocate memory to process Segment Body Record LCONST : %d bytes required.\n",current_record->ByteCnt);
      mem_free_LCONST(current_record);
      return(NULL);
    }
  
  /* Copie les Data */
  memcpy(current_record->data,&data[5],current_record->ByteCnt);

  /* Renvoie la structure */
  *record_length_rtn = 1 + sizeof(DWORD) + current_record->ByteCnt;
  return(current_record);
}


/*****************************************************/
/*  DecodeRecordLEXPR() :  Décodage du Record LEXPR. */
/*****************************************************/
static void *DecodeRecordLEXPR(unsigned char *data, int file_offset, int segment_offset, int *record_length_rtn)
{
  struct record_LEXPR *current_record;

  /* Allocation mémoire */
  current_record = (struct record_LEXPR *) k_calloc(1,sizeof(struct record_LEXPR));
  if(current_record == NULL)
    {
      //printf("Error : Impossible to allocate memory to process Segment Body Record.\n");
      return(NULL);
    }

  /* Offset */
  current_record->FileOffset = (DWORD) file_offset;
  current_record->SegmentOffset = (DWORD) segment_offset;

  /* Operation Code */
  current_record->operation_code = data[0];

  /* Renvoie la structure */
  return(current_record);
}


/*****************************************************/
/*  DecodeRecordENTRY() :  Décodage du Record ENTRY. */
/*****************************************************/
static void *DecodeRecordENTRY(unsigned char *data, int file_offset, int segment_offset, int *record_length_rtn)
{
  struct record_ENTRY *current_record;

  /* Allocation mémoire */
  current_record = (struct record_ENTRY *) k_calloc(1,sizeof(struct record_ENTRY));
  if(current_record == NULL)
    {
      //printf("Error : Impossible to allocate memory to process Segment Body Record.\n");
      return(NULL);
    }

  /* Offset */
  current_record->FileOffset = (DWORD) file_offset;
  current_record->SegmentOffset = (DWORD) segment_offset;

  /* Operation Code */
  current_record->operation_code = data[0];

  /* Renvoie la structure */
  return(current_record);
}


/*******************************************************/
/*  DecodeRecordcRELOC() :  Décodage du Record cRELOC. */
/*******************************************************/
static void *DecodeRecordcRELOC(unsigned char *data, int file_offset, int segment_offset, int *record_length_rtn)
{
  WORD one_word;
  struct record_cRELOC *current_record;

  /* Allocation mémoire */
  current_record = (struct record_cRELOC *) k_calloc(1,sizeof(struct record_cRELOC));
  if(current_record == NULL)
    {
      //printf("Error : Impossible to allocate memory to process Segment Body Record.\n");
      return(NULL);
    }

  /* Offset */
  current_record->FileOffset = (DWORD) file_offset;
  current_record->SegmentOffset = (DWORD) segment_offset;

  /* Operation Code */
  current_record->operation_code = data[0];

  /* Récupère les données */
  current_record->ByteCnt = data[1];
  current_record->BitShiftCnt = data[2];
  memcpy(&one_word,&data[3],sizeof(WORD));
  current_record->OffsetPatch = (DWORD) one_word;
  memcpy(&one_word,&data[5],sizeof(WORD));
  current_record->OffsetReference = (DWORD) one_word;

  /* Conserve ce RELOC */
  AddReloc(current_record->ByteCnt,current_record->BitShiftCnt,current_record->OffsetPatch,current_record->OffsetReference,RECORD_cRELOC);

  /* Renvoie la structure */
  *record_length_rtn = 3*sizeof(BYTE) + 2*sizeof(WORD);
  return(current_record);
}


/*************************************************************/
/*  DecodeRecordcINTERSEG() :  Décodage du Record cINTERSEG. */
/*************************************************************/
static void *DecodeRecordcINTERSEG(unsigned char *data, int file_offset, int segment_offset, int *record_length_rtn)
{
  WORD one_word;
  struct record_cINTERSEG *current_record;

  /* Allocation mémoire */
  current_record = (struct record_cINTERSEG *) k_calloc(1,sizeof(struct record_cINTERSEG));
  if(current_record == NULL)
    {
      //printf("Error : Impossible to allocate memory to process Segment Body Record.\n");
      return(NULL);
    }

  /* Offset */
  current_record->FileOffset = (DWORD) file_offset;
  current_record->SegmentOffset = (DWORD) segment_offset;

  /* Operation Code */
  current_record->operation_code = data[0];

  /* File Number toujours à 1 */
  current_record->FileNum = 1;

  /** Récupère les informations **/
  current_record->ByteCnt = data[1];
  current_record->BitShiftCnt = data[2];
  memcpy(&one_word,&data[3],sizeof(WORD));
  current_record->OffsetPatch = (DWORD) one_word;
  current_record->SegNum = data[5];
  memcpy(&one_word,&data[6],sizeof(WORD));
  current_record->OffsetReference = (DWORD) one_word;

  /* Conserve ce INTERSEG */
  AddInterseg(current_record->ByteCnt,current_record->BitShiftCnt,current_record->OffsetPatch,current_record->OffsetReference,current_record->FileNum,current_record->SegNum,RECORD_cINTERSEG);

  /* Renvoie la structure */
  *record_length_rtn = 4*sizeof(BYTE) + 2*sizeof(WORD);
  return(current_record);
}


/*****************************************************/
/*  DecodeRecordSUPER() :  Décodage du Record SUPER. */
/*****************************************************/
static void *DecodeRecordSUPER(unsigned char *data, int file_offset, int segment_offset, unsigned char *lconst, int lconst_length, int *record_length_rtn, struct omf_segment *current_segment)
{
  int offset, length;
  BYTE page;
  struct record_SUPER *current_record;
  struct subrecord_SuperReloc2 *current_SuperReloc2;
  struct subrecord_SuperReloc3 *current_SuperReloc3;
  struct subrecord_SuperInterseg1 *current_SuperInterseg1;
  struct subrecord_SuperInterseg212 *current_SuperInterseg212;
  struct subrecord_SuperInterseg1324 *current_SuperInterseg1324;
  struct subrecord_SuperInterseg2536 *current_SuperInterseg2536;

  /* Allocation mémoire */
  current_record = (struct record_SUPER *) k_calloc(1,sizeof(struct record_SUPER));
  if(current_record == NULL)
    {
      //printf("Error : Impossible to allocate memory to process Segment Body Record.\n");
      return(NULL);
    }

  /* Offset */
  current_record->FileOffset = (DWORD) file_offset;
  current_record->SegmentOffset = (DWORD) segment_offset;

  /* Operation Code : 0xF7 */
  current_record->operation_code = data[0];

  /* Longueur */
  memcpy(&current_record->ByteCnt,&data[1],sizeof(DWORD));

  /* Type */
  current_record->RecordType = data[5];

  /** Décodage des Sous Record **/
  if(current_record->RecordType == 0x00)
    {
      /** Super Reloc2 **/
      offset = 0;
      page = 0x00;
      while(1)
        {
          /* Récupère les données */
          current_SuperReloc2 = DecodeSuperReloc2(&data[1+sizeof(DWORD)+1+offset],lconst,lconst_length,&page,&length,current_segment);
          if(current_SuperReloc2 == NULL)
            {
              mem_free_SUPER(current_record);
              return(NULL);
            }

          /* Attache à la liste chainée */
          if(current_record->first_SuperReloc2 == NULL)
            current_record->first_SuperReloc2 = current_SuperReloc2;
          else
            current_record->last_SuperReloc2->next = current_SuperReloc2;
          current_record->last_SuperReloc2 = current_SuperReloc2;
          current_record->nb_SuperReloc2++;

          /* SubRecord suivant */
          offset += length;
          if(offset == (int) (current_record->ByteCnt-1))
            break;
        }
    }
  else if(current_record->RecordType == 0x01)
    {
      /** Super Reloc3 **/
      offset = 0;
      page = 0x00;
      while(1)
        {
          /* Récupère les données */
          current_SuperReloc3 = DecodeSuperReloc3(&data[1+sizeof(DWORD)+1+offset],lconst,lconst_length,&page,&length,current_segment);
          if(current_SuperReloc3 == NULL)
            {
              mem_free_SUPER(current_record);
              return(NULL);
            }

          /* Attache à la liste chainée */
          if(current_record->first_SuperReloc3 == NULL)
            current_record->first_SuperReloc3 = current_SuperReloc3;
          else
            current_record->last_SuperReloc3->next = current_SuperReloc3;
          current_record->last_SuperReloc3 = current_SuperReloc3;
          current_record->nb_SuperReloc3++;

          /* SubRecord suivant */
          offset += length;
          if(offset == (int) (current_record->ByteCnt-1))
            break;
        }      
    }
  else if(current_record->RecordType == 0x02)  /* 2 */
    {
      /** Super Interseg1 **/
      offset = 0;
      page = 0x00;
      while(1)
        {
          /* Récupère les données */
          current_SuperInterseg1 = DecodeSuperInterseg1(&data[1+sizeof(DWORD)+1+offset],lconst,lconst_length,&page,&length,current_segment);
          if(current_SuperInterseg1 == NULL)
            {
              mem_free_SUPER(current_record);
              return(NULL);
            }

          /* Attache à la liste chainée */
          if(current_record->first_SuperInterseg1 == NULL)
            current_record->first_SuperInterseg1 = current_SuperInterseg1;
          else
            current_record->last_SuperInterseg1->next = current_SuperInterseg1;
          current_record->last_SuperInterseg1 = current_SuperInterseg1;
          current_record->nb_SuperInterseg1++;

          /* SubRecord suivant */
          offset += length;
          if(offset == (int) (current_record->ByteCnt-1))
            break;
        }  
    }
  else if(current_record->RecordType >= 0x03 && current_record->RecordType <= 0x0D)  /* 3-13 */
    {
      /** Super Interseg 2-12 **/
      offset = 0;
      page = 0x00;
      while(1)
        {
          /* Récupère les données */
          current_SuperInterseg212 = DecodeSuperInterseg212(&data[1+sizeof(DWORD)+1+offset],current_record->RecordType-1,lconst,lconst_length,&page,&length,current_segment);
          if(current_SuperInterseg212 == NULL)
            {
              mem_free_SUPER(current_record);
              return(NULL);
            }

          /* Attache à la liste chainée */
          if(current_record->first_SuperInterseg212 == NULL)
            current_record->first_SuperInterseg212 = current_SuperInterseg212;
          else
            current_record->last_SuperInterseg212->next = current_SuperInterseg212;
          current_record->last_SuperInterseg212 = current_SuperInterseg212;
          current_record->nb_SuperInterseg212++;

          /* SubRecord suivant */
          offset += length;
          if(offset == (int) (current_record->ByteCnt-1))
            break;
        }
    }
  else if(current_record->RecordType >= 0x0E && current_record->RecordType <= 0x19)  /* 14-25 */
    {
      /** Super Interseg 13-24 **/
      offset = 0;
      page = 0x00;
      while(1)
        {
          /* Récupère les données */
          current_SuperInterseg1324 = DecodeSuperInterseg1324(&data[1+sizeof(DWORD)+1+offset],current_record->RecordType-1-12,lconst,lconst_length,&page,&length,current_segment);
          if(current_SuperInterseg1324 == NULL)
            {
              mem_free_SUPER(current_record);
              return(NULL);
            }

          /* Attache à la liste chainée */
          if(current_record->first_SuperInterseg1324 == NULL)
            current_record->first_SuperInterseg1324 = current_SuperInterseg1324;
          else
            current_record->last_SuperInterseg1324->next = current_SuperInterseg1324;
          current_record->last_SuperInterseg1324 = current_SuperInterseg1324;
          current_record->nb_SuperInterseg1324++;

          /* SubRecord suivant */
          offset += length;
          if(offset == (int) (current_record->ByteCnt-1))
            break;
        }
    }
  else if(current_record->RecordType >= 0x1A && current_record->RecordType <= 0x25)  /* 26-37 */
    {
      /** Super Interseg 25-36 **/
      offset = 0;
      page = 0x00;
      while(1)
        {
          /* Récupère les données */
          current_SuperInterseg2536 = DecodeSuperInterseg2536(&data[1+sizeof(DWORD)+1+offset],current_record->RecordType-1-24,lconst,lconst_length,&page,&length,current_segment);
          if(current_SuperInterseg2536 == NULL)
            {
              mem_free_SUPER(current_record);
              return(NULL);
            }

          /* Attache à la liste chainée */
          if(current_record->first_SuperInterseg2536 == NULL)
            current_record->first_SuperInterseg2536 = current_SuperInterseg2536;
          else
            current_record->last_SuperInterseg2536->next = current_SuperInterseg2536;
          current_record->last_SuperInterseg2536 = current_SuperInterseg2536;
          current_record->nb_SuperInterseg2536++;

          /* SubRecord suivant */
          offset += length;
          if(offset == (int) (current_record->ByteCnt-1))
            break;
        }
    }
  else
    {
      //printf("");
    }

  /* Renvoie la structure */
  *record_length_rtn = 1 + sizeof(DWORD) + current_record->ByteCnt;
  return(current_record);
}


/*********************************************************/
/*  DecodeRecordGeneral() :  Décodage du Record General. */
/*********************************************************/
static void *DecodeRecordGeneral(unsigned char *data, int file_offset, int segment_offset, int *record_length_rtn)
{
  struct record_General *current_record;

  /* Allocation mémoire */
  current_record = (struct record_General *) k_calloc(1,sizeof(struct record_General));
  if(current_record == NULL)
    {
      //printf("Error : Impossible to allocate memory to process Segment Body Record.\n");
      return(NULL);
    }

  /* Offset */
  current_record->FileOffset = (DWORD) file_offset;
  current_record->SegmentOffset = (DWORD) segment_offset;

  /* Operation Code */
  current_record->operation_code = data[0];

  /* Renvoie la structure */
  return(current_record);
}


/*******************************************************************/
/*  DecodeRecordExperimental() :  Décodage du Record Experimental. */
/*******************************************************************/
static void *DecodeRecordExperimental(unsigned char *data, int file_offset, int segment_offset, int *record_length_rtn)
{
  struct record_Experimental *current_record;

  /* Allocation mémoire */
  current_record = (struct record_Experimental *) k_calloc(1,sizeof(struct record_Experimental));
  if(current_record == NULL)
    {
      //printf("Error : Impossible to allocate memory to process Segment Body Record.\n");
      return(NULL);
    }

  /* Offset */
  current_record->FileOffset = (DWORD) file_offset;
  current_record->SegmentOffset = (DWORD) segment_offset;

  /* Operation Code */
  current_record->operation_code = data[0];

  /* Renvoie la structure */
  return(current_record);
}


/****************************************************************/
/*  DecodeSuperReloc2() :  Décodage d'un SubRecord SuperReloc2. */
/****************************************************************/
static struct subrecord_SuperReloc2 *DecodeSuperReloc2(unsigned char *data, unsigned char *lconst, int lconst_length, BYTE *page_rtn, int *length_rtn, struct omf_segment *current_segment)
{
  int i;
  WORD one_word;
  struct subrecord_SuperReloc2 *current_SuperReloc2;

  /* Allocation mémoire */
  current_SuperReloc2 = (struct subrecord_SuperReloc2 *) k_calloc(1,sizeof(struct subrecord_SuperReloc2));
  if(current_SuperReloc2 == NULL)
    {
      //printf("Error : Impossible to allocate memory for SubRecord SuperReloc2 for Segment #%02X.\n",current_segment->header.SegNum);
      return(NULL);
    }

  /* Nombre d'adresse-1 ou Saut de Page */
  current_SuperReloc2->Count = data[0];

  /** Saut de Page **/
  if((current_SuperReloc2->Count & 0x80) == 0x80)
    {
      /* On saute X pages */
      *page_rtn = *page_rtn + (current_SuperReloc2->Count & 0x7F);

      /* Longueur du SubRecord */
      *length_rtn = 1;
    }
  else
    {
      /* Number of Bytes to be relocated = Toujours à 2 */
      current_SuperReloc2->ByteCnt = 0x02;

      /* Opérations >> ou << = Toujours à 0  */
      current_SuperReloc2->BitShiftCnt = 0x00;

      /* Nombre d'adresse */
      current_SuperReloc2->nb_address = current_SuperReloc2->Count + 1;

      /** Copie les adresses **/
      for(i=0; i<current_SuperReloc2->nb_address; i++)
        {
          /* Décode OffsetPath et OffsetReference */
          current_SuperReloc2->OffsetPatch[i] = ((WORD)*page_rtn) << 8 | data[1+i];
          
          /* On vérifie qu'on reste dans les limite du LCONST */
          if(current_SuperReloc2->OffsetPatch[i] > (DWORD) lconst_length)
            {
              //printf("  Error : Bad Reference Address in SuperReloc2 for Offset %04X in Segment #%02X.\n",current_SuperReloc2->OffsetPatch[i],current_segment->header.SegNum);
              current_SuperReloc2->OffsetReference[i] = 0xFFFF;   /* Erreur */
            }
          else
            {
              memcpy(&one_word,&lconst[current_SuperReloc2->OffsetPatch[i]],sizeof(WORD));
              current_SuperReloc2->OffsetReference[i] = (DWORD) one_word;
            }

          /* Conserve ce RELOC */
          AddReloc(current_SuperReloc2->ByteCnt,current_SuperReloc2->BitShiftCnt,current_SuperReloc2->OffsetPatch[i],current_SuperReloc2->OffsetReference[i],RECORD_SUPER_RELOC2);
          ////printf("  Page %02X : %02X  %04X  %04X\n",*page_rtn,current_SuperReloc2->ByteCnt,current_SuperReloc2->OffsetPatch[i],current_SuperReloc2->OffsetReference[i]);
        }

      /* Page suivante */
      *page_rtn = *page_rtn + 1;

      /* Longueur du SubRecord */
      *length_rtn = 1 + current_SuperReloc2->nb_address*sizeof(BYTE);
    }

  /* Renvoie la structure */
  return(current_SuperReloc2);
}


/****************************************************************/
/*  DecodeSuperReloc3() :  Décodage d'un SubRecord SuperReloc3. */
/****************************************************************/
static struct subrecord_SuperReloc3 *DecodeSuperReloc3(unsigned char *data, unsigned char *lconst, int lconst_length, BYTE *page_rtn, int *length_rtn, struct omf_segment *current_segment)
{
  int i;
  WORD one_word;
  struct subrecord_SuperReloc3 *current_SuperReloc3;

  /* Allocation mémoire */
  current_SuperReloc3 = (struct subrecord_SuperReloc3 *) k_calloc(1,sizeof(struct subrecord_SuperReloc3));
  if(current_SuperReloc3 == NULL)
    {
      //printf("Error : Impossible to allocate memory for SubRecord SuperReloc3.\n");
      return(NULL);
    }

  /* Nombre d'adresse-1 ou Saut de Page */
  current_SuperReloc3->Count = data[0];

  /** Saut de Page **/
  if((current_SuperReloc3->Count & 0x80) == 0x80)
    {
      /* On saute X pages */
      *page_rtn = *page_rtn + (current_SuperReloc3->Count & 0x7F);

      /* Longueur du SubRecord */
      *length_rtn = 1;
    }
  else
    {
      /* Number of Bytes to be relocated = Toujours à 3 */
      current_SuperReloc3->ByteCnt = 0x03;

      /* Opérations >> ou << = Toujours à 0  */
      current_SuperReloc3->BitShiftCnt = 0x00;

      /* Nombre d'adresse */
      current_SuperReloc3->nb_address = current_SuperReloc3->Count + 1;

      /** Copie les adresses **/
      for(i=0; i<current_SuperReloc3->nb_address; i++)
        {
          /* Décode OffsetPath et OffsetReference */
          current_SuperReloc3->OffsetPatch[i] = ((WORD)(*page_rtn) << 8) | data[1+i];
          
          /* On vérifie qu'on reste dans les limite du LCONST */
          if(current_SuperReloc3->OffsetPatch[i] > (DWORD) lconst_length)
            {
              //printf("  Error : Bad Reference Address in SuperReloc3 for Offset %04X in Segment #%02X.\n",current_SuperReloc3->OffsetPatch[i],current_segment->header.SegNum);
              current_SuperReloc3->OffsetReference[i] = 0xFFFF;   /* Erreur */
            }
          else
            {          
              memcpy(&one_word,&lconst[current_SuperReloc3->OffsetPatch[i]],sizeof(WORD));
              current_SuperReloc3->OffsetReference[i] = (DWORD) one_word;
            }
             
          /* Conserve ce RELOC */
          AddReloc(current_SuperReloc3->ByteCnt,current_SuperReloc3->BitShiftCnt,current_SuperReloc3->OffsetPatch[i],current_SuperReloc3->OffsetReference[i],RECORD_SUPER_RELOC3);
        }

      /* Page suivante */
      *page_rtn = *page_rtn + 1;

      /* Longueur du SubRecord */
      *length_rtn = 1 + current_SuperReloc3->nb_address*sizeof(BYTE);
    }

  /* Renvoie la structure */
  return(current_SuperReloc3);
}


/**********************************************************************/
/*  DecodeSuperInterseg1() :  Décodage d'un SubRecord SuperInterseg1. */
/**********************************************************************/
static struct subrecord_SuperInterseg1 *DecodeSuperInterseg1(unsigned char *data, unsigned char *lconst, int lconst_length, BYTE *page_rtn, int *length_rtn, struct omf_segment *current_segment)
{
  int i;
  WORD one_word;
  struct subrecord_SuperInterseg1 *current_SuperInterseg1;

  /* Allocation mémoire */
  current_SuperInterseg1 = (struct subrecord_SuperInterseg1 *) k_calloc(1,sizeof(struct subrecord_SuperInterseg1));
  if(current_SuperInterseg1 == NULL)
    {
      //printf("Error : Impossible to allocate memory for SubRecord SuperInterseg1.\n");
      return(NULL);
    }

  /* Nombre d'adresse-1 ou Saut de Page */
  current_SuperInterseg1->Count = data[0];

  /** Saut de Page **/
  if((current_SuperInterseg1->Count & 0x80) == 0x80)
    {
      /* On saute X pages */
      *page_rtn = *page_rtn + (current_SuperInterseg1->Count & 0x7F);

      /* Longueur du SubRecord */
      *length_rtn = 1;
    }
  else
    {
      /* Number of Bytes to be relocated = Toujours à 3 */
      current_SuperInterseg1->ByteCnt = 0x03;

      /* Opérations >> ou << = Toujours à 0  */
      current_SuperInterseg1->BitShiftCnt = 0x00;

      /* File Number toujours à 1 */
      current_SuperInterseg1->FileNum = 1;

      /* Nombre d'adresse */
      current_SuperInterseg1->nb_address = current_SuperInterseg1->Count + 1;

      /** Copie les adresses **/
      for(i=0; i<current_SuperInterseg1->nb_address; i++)
        {
          /* Décode OffsetPath et OffsetReference */
          current_SuperInterseg1->OffsetPatch[i] = ((WORD)(*page_rtn)) << 8 | data[1+i];
          
          /* On vérifie qu'on reste dans les limite du LCONST */
          if(current_SuperInterseg1->OffsetPatch[i] > (DWORD) lconst_length)
            {
              //printf("  Error : Bad Reference Address in SuperInterseg1 for Offset %04X in Segment #%02X.\n",current_SuperInterseg1->OffsetPatch[i],current_segment->header.SegNum);
              current_SuperInterseg1->OffsetReference[i] = 0xFFFF;   /* Erreur */
              current_SuperInterseg1->SegNum[i] = 0xFF;              /* Erreur */
            }
          else
            {          
              memcpy(&one_word,&lconst[current_SuperInterseg1->OffsetPatch[i]],sizeof(WORD));
              current_SuperInterseg1->OffsetReference[i] = (DWORD) one_word;
              current_SuperInterseg1->SegNum[i] = (WORD) lconst[current_SuperInterseg1->OffsetPatch[i]+2];
            }
            
          /* Conserve ce INTERSEG */
          AddInterseg(current_SuperInterseg1->ByteCnt,current_SuperInterseg1->BitShiftCnt,current_SuperInterseg1->OffsetPatch[i],current_SuperInterseg1->OffsetReference[i],current_SuperInterseg1->FileNum,current_SuperInterseg1->SegNum[i],RECORD_SUPER_INTERSEG1);
        }

      /* Page suivante */
      *page_rtn = *page_rtn + 1;

      /* Longueur du SubRecord */
      *length_rtn = 1 + current_SuperInterseg1->nb_address*sizeof(BYTE);
    }

  /* Renvoie la structure */
  return(current_SuperInterseg1);
}


/**************************************************************************/
/*  DecodeSuperInterseg212() :  Décodage d'un SubRecord SuperInterseg212. */
/**************************************************************************/
static struct subrecord_SuperInterseg212 *DecodeSuperInterseg212(unsigned char *data, BYTE FileNum, unsigned char *lconst, int lconst_length, BYTE *page_rtn, int *length_rtn, struct omf_segment *current_segment)
{
  int i;
  WORD one_word;
  struct subrecord_SuperInterseg212 *current_SuperInterseg212;

  /* Allocation mémoire */
  current_SuperInterseg212 = (struct subrecord_SuperInterseg212 *) k_calloc(1,sizeof(struct subrecord_SuperInterseg212));
  if(current_SuperInterseg212 == NULL)
    {
      //printf("Error : Impossible to allocate memory for SubRecord SuperInterseg212.\n");
      return(NULL);
    }

  /* Nombre d'adresse-1 ou Saut de Page */
  current_SuperInterseg212->Count = data[0];

  /** Saut de Page **/
  if((current_SuperInterseg212->Count & 0x80) == 0x80)
    {
      /* On saute X pages */
      *page_rtn = *page_rtn + (current_SuperInterseg212->Count & 0x7F);

      /* Longueur du SubRecord */
      *length_rtn = 1;
    }
  else
    {
      /* Number of Bytes to be relocated = Toujours à 3 */
      current_SuperInterseg212->ByteCnt = 0x03;

      /* Opérations >> ou << = Toujours à 0  */
      current_SuperInterseg212->BitShiftCnt = 0x00;

      /* File Number */
      current_SuperInterseg212->FileNum = FileNum;

      /* Nombre d'adresse */
      current_SuperInterseg212->nb_address = current_SuperInterseg212->Count + 1;

      /** Copie les adresses **/
      for(i=0; i<current_SuperInterseg212->nb_address; i++)
        {
          /* Décode OffsetPath et OffsetReference */
          current_SuperInterseg212->OffsetPatch[i] = ((WORD)*page_rtn) << 8 | data[1+i];
          
          /* On vérifie qu'on reste dans les limite du LCONST */
          if(current_SuperInterseg212->OffsetPatch[i] > (DWORD) lconst_length)
            {
              //printf("  Error : Bad Reference Address in SuperInterseg212 for Offset %04X in Segment #%02X.\n",current_SuperInterseg212->OffsetPatch[i],current_segment->header.SegNum);
              current_SuperInterseg212->OffsetReference[i] = 0xFFFF;   /* Erreur */
              current_SuperInterseg212->SegNum[i] = 0xFF;              /* Erreur */
            }
          else
            {
              memcpy(&one_word,&lconst[current_SuperInterseg212->OffsetPatch[i]],sizeof(WORD));
              current_SuperInterseg212->OffsetReference[i] = (DWORD) one_word;
              current_SuperInterseg212->SegNum[i] = (WORD) lconst[current_SuperInterseg212->OffsetPatch[i]+2];
            }

          /* Conserve ce INTERSEG */
          AddInterseg(current_SuperInterseg212->ByteCnt,current_SuperInterseg212->BitShiftCnt,current_SuperInterseg212->OffsetPatch[i],current_SuperInterseg212->OffsetReference[i],current_SuperInterseg212->FileNum,current_SuperInterseg212->SegNum[i],RECORD_SUPER_INTERSEG212);
        }

      /* Page suivante */
      *page_rtn = *page_rtn + 1;

      /* Longueur du SubRecord */
      *length_rtn = 1 + current_SuperInterseg212->nb_address*sizeof(BYTE);
    }

  /* Renvoie la structure */
  return(current_SuperInterseg212);
}


/****************************************************************************/
/*  DecodeSuperInterseg1324() :  Décodage d'un SubRecord SuperInterseg1324. */
/****************************************************************************/
static struct subrecord_SuperInterseg1324 *DecodeSuperInterseg1324(unsigned char *data, BYTE SegNum, unsigned char *lconst, int lconst_length, BYTE *page_rtn, int *length_rtn, struct omf_segment *current_segment)
{
  int i;
  WORD one_word;
  struct subrecord_SuperInterseg1324 *current_SuperInterseg1324;

  /* Allocation mémoire */
  current_SuperInterseg1324 = (struct subrecord_SuperInterseg1324 *) k_calloc(1,sizeof(struct subrecord_SuperInterseg1324));
  if(current_SuperInterseg1324 == NULL)
    {
      //printf("Error : Impossible to allocate memory for SubRecord SuperInterseg1324.\n");
      return(NULL);
    }

  /* Nombre d'adresse-1 ou Saut de Page */
  current_SuperInterseg1324->Count = data[0];

  /** Saut de Page **/
  if((current_SuperInterseg1324->Count & 0x80) == 0x80)
    {
      /* On saute X pages */
      *page_rtn = *page_rtn + (current_SuperInterseg1324->Count & 0x7F);

      /* Longueur du SubRecord */
      *length_rtn = 1;
    }
  else
    {
      /* Number of Bytes to be relocated = Toujours à 2 */
      current_SuperInterseg1324->ByteCnt = 0x02;

      /* Opérations >> ou << = Toujours à 0  */
      current_SuperInterseg1324->BitShiftCnt = 0x00;

      /* Segment Number */
      current_SuperInterseg1324->SegNum = SegNum;

      /* File Number toujours à 1 */
      current_SuperInterseg1324->FileNum = 1;

      /* Nombre d'adresse */
      current_SuperInterseg1324->nb_address = current_SuperInterseg1324->Count + 1;

      /** Copie les adresses **/
      for(i=0; i<current_SuperInterseg1324->nb_address; i++)
        {
          /* Décode OffsetPath et OffsetReference */
          current_SuperInterseg1324->OffsetPatch[i] = ((WORD)*page_rtn) << 8 | data[1+i];
          
          /* On vérifie qu'on reste dans les limite du LCONST */
          if(current_SuperInterseg1324->OffsetPatch[i] > (DWORD) lconst_length)
            {
              current_SuperInterseg1324->OffsetReference[i] = 0xFFFF;     /* Erreur */
              //printf("  Error : Bad Reference Address in SuperInterseg1324 for Offset %04X in Segment #%02X.\n",current_SuperInterseg1324->OffsetPatch[i],current_segment->header.SegNum);
            }
          else
            {
              memcpy(&one_word,&lconst[current_SuperInterseg1324->OffsetPatch[i]],sizeof(WORD));
              current_SuperInterseg1324->OffsetReference[i] = (DWORD) one_word;
            }

          /* Conserve ce INTERSEG */
          AddInterseg(current_SuperInterseg1324->ByteCnt,current_SuperInterseg1324->BitShiftCnt,current_SuperInterseg1324->OffsetPatch[i],current_SuperInterseg1324->OffsetReference[i],current_SuperInterseg1324->FileNum,current_SuperInterseg1324->SegNum,RECORD_SUPER_INTERSEG1324);
        }

      /* Page suivante */
      *page_rtn = *page_rtn + 1;

      /* Longueur du SubRecord */
      *length_rtn = 1 + current_SuperInterseg1324->nb_address*sizeof(BYTE);
    }

  /* Renvoie la structure */
  return(current_SuperInterseg1324);
}


/****************************************************************************/
/*  DecodeSuperInterseg2536() :  Décodage d'un SubRecord SuperInterseg2536. */
/****************************************************************************/
static struct subrecord_SuperInterseg2536 *DecodeSuperInterseg2536(unsigned char *data, BYTE SegNum, unsigned char *lconst, int lconst_length, BYTE *page_rtn, int *length_rtn, struct omf_segment *current_segment)
{
  int i;
  WORD one_word;
  struct subrecord_SuperInterseg2536 *current_SuperInterseg2536;

  /* Allocation mémoire */
  current_SuperInterseg2536 = (struct subrecord_SuperInterseg2536 *) k_calloc(1,sizeof(struct subrecord_SuperInterseg2536));
  if(current_SuperInterseg2536 == NULL)
    {
      //printf("Error : Impossible to allocate memory for SubRecord SuperInterseg2536.\n");
      return(NULL);
    }

  /* Nombre d'adresse-1 ou Saut de Page */
  current_SuperInterseg2536->Count = data[0];

  /** Saut de Page **/
  if((current_SuperInterseg2536->Count & 0x80) == 0x80)
    {
      /* On saute X pages */
      *page_rtn = *page_rtn + (current_SuperInterseg2536->Count & 0x7F);

      /* Longueur du SubRecord */
      *length_rtn = 1;
    }
  else
    {
      /* Number of Bytes to be relocated = Toujours à 2 */
      current_SuperInterseg2536->ByteCnt = 0x02;

      /* Opérations >> ou << = Toujours à 0xF0  */
      current_SuperInterseg2536->BitShiftCnt = 0xF0;

      /* Segment Number */
      current_SuperInterseg2536->SegNum = SegNum;

      /* File Number toujours à 1 */
      current_SuperInterseg2536->FileNum = 1;

      /* Nombre d'adresse */
      current_SuperInterseg2536->nb_address = current_SuperInterseg2536->Count + 1;

      /** Copie les adresses **/
      for(i=0; i<current_SuperInterseg2536->nb_address; i++)
        {
          /* Décode OffsetPath et OffsetReference */
          current_SuperInterseg2536->OffsetPatch[i] = ((WORD)*page_rtn) << 8 | data[1+i];
          
          /* On vérifie qu'on reste dans les limite du LCONST */
          if(current_SuperInterseg2536->OffsetPatch[i] > (DWORD) lconst_length)
            {
              current_SuperInterseg2536->OffsetReference[i] = 0xFFFF;     /* Erreur */
              //printf("  Error : Bad Reference Address in SuperInterseg2536 for Offset %04X in Segment #%02X.\n",current_SuperInterseg2536->OffsetPatch[i],current_segment->header.SegNum);
            }
          else
            {          
              memcpy(&one_word,&lconst[current_SuperInterseg2536->OffsetPatch[i]],sizeof(WORD));
              current_SuperInterseg2536->OffsetReference[i] = (DWORD) one_word;
            }
             
          /* Conserve ce INTERSEG */
          AddInterseg(current_SuperInterseg2536->ByteCnt,current_SuperInterseg2536->BitShiftCnt,current_SuperInterseg2536->OffsetPatch[i],current_SuperInterseg2536->OffsetReference[i],current_SuperInterseg2536->FileNum,current_SuperInterseg2536->SegNum,RECORD_SUPER_INTERSEG2536);
        }

      /* Page suivante */
      *page_rtn = *page_rtn + 1;

      /* Longueur du SubRecord */
      *length_rtn = 1 + current_SuperInterseg2536->nb_address*sizeof(BYTE);
    }

  /* Renvoie la structure */
  return(current_SuperInterseg2536);
}


/*******************************************************/
/*  AddReloc() :  On conserve les RELOC de ce Segment. */
/*******************************************************/
static void AddReloc(BYTE ByteCnt, BYTE BitShiftCnt, DWORD OffsetPatch, DWORD OffsetReference, int origin)
{
  struct omf_reloc *current_reloc;

  /* Allocation d'une structure Reloc */
  current_reloc = (struct omf_reloc *) k_calloc(1,sizeof(struct omf_reloc));
  if(current_reloc == NULL)
    ;

  /* Ajoute des valeurs */
  current_reloc->ByteCnt = ByteCnt;
  current_reloc->BitShiftCnt = BitShiftCnt;
  current_reloc->OffsetPatch = OffsetPatch;
  current_reloc->OffsetReference = OffsetReference;

  /* Origine du Reloc */
  current_reloc->origin = origin;

  /* Conserve la structure */
  my_Memory(MEMORY_ADD_RELOC,current_reloc,NULL);
}


/*************************************************************/
/*  AddInterseg() :  On conserve les INTERSEG de ce Segment. */
/*************************************************************/
static void AddInterseg(BYTE ByteCnt, BYTE BitShiftCnt, DWORD OffsetPatch, DWORD OffsetReference, WORD FileNum, WORD SegNum, int origin)
{
  struct omf_interseg *current_interseg;

  /* Allocation d'une structure Reloc */
  current_interseg = (struct omf_interseg *) k_calloc(1,sizeof(struct omf_interseg));
  if(current_interseg == NULL)
    ;

  /* Ajoute des valeurs */
  current_interseg->ByteCnt = ByteCnt;
  current_interseg->BitShiftCnt = BitShiftCnt;
  current_interseg->OffsetPatch = OffsetPatch;
  current_interseg->OffsetReference = OffsetReference;
  current_interseg->FileNum = FileNum;
  current_interseg->SegNum = SegNum;

  /* Origine du Reloc */
  current_interseg->origin = origin;

  /* Conserve la structure */
  my_Memory(MEMORY_ADD_INTERSEG,current_interseg,NULL);
}


/*********************************************************************/
/*  mem_free_END() :  Libération mémoire de la structure record_END. */
/*********************************************************************/
static void mem_free_END(struct record_END *current_record)
{
  if(current_record)
    {
      k_free(current_record);
    }
}


/*************************************************************************/
/*  mem_free_CONST() :  Libération mémoire de la structure record_CONST. */
/*************************************************************************/
static void mem_free_CONST(struct record_CONST *current_record)
{
  if(current_record)
    {
      if(current_record->data)
        k_free(current_record->data);

      k_free(current_record);
    }
}


/*************************************************************************/
/*  mem_free_ALIGN() :  Libération mémoire de la structure record_ALIGN. */
/*************************************************************************/
static void mem_free_ALIGN(struct record_ALIGN *current_record)
{
  if(current_record)
    {
      k_free(current_record);
    }
}


/*********************************************************************/
/*  mem_free_ORG() :  Libération mémoire de la structure record_ORG. */
/*********************************************************************/
static void mem_free_ORG(struct record_ORG *current_record)
{
  if(current_record)
    {
      k_free(current_record);
    }
}


/*************************************************************************/
/*  mem_free_RELOC() :  Libération mémoire de la structure record_RELOC. */
/*************************************************************************/
static void mem_free_RELOC(struct record_RELOC *current_record)
{
  if(current_record)
    {
      k_free(current_record);
    }
}


/*******************************************************************************/
/*  mem_free_INTERSEG() :  Libération mémoire de la structure record_INTERSEG. */
/*******************************************************************************/
static void mem_free_INTERSEG(struct record_INTERSEG *current_record)
{
  if(current_record)
    {
      k_free(current_record);
    }
}


/*************************************************************************/
/*  mem_free_USING() :  Libération mémoire de la structure record_USING. */
/*************************************************************************/
static void mem_free_USING(struct record_USING *current_record)
{
  if(current_record)
    {
      k_free(current_record);
    }
}


/***************************************************************************/
/*  mem_free_STRONG() :  Libération mémoire de la structure record_STRONG. */
/***************************************************************************/
static void mem_free_STRONG(struct record_STRONG *current_record)
{
  if(current_record)
    {
      k_free(current_record);
    }
}


/***************************************************************************/
/*  mem_free_GLOBAL() :  Libération mémoire de la structure record_GLOBAL. */
/***************************************************************************/
static void mem_free_GLOBAL(struct record_GLOBAL *current_record)
{
  if(current_record)
    {
      k_free(current_record);
    }
}


/***********************************************************************/
/*  mem_free_GEQU() :  Libération mémoire de la structure record_GEQU. */
/***********************************************************************/
static void mem_free_GEQU(struct record_GEQU *current_record)
{
  if(current_record)
    {
      k_free(current_record);
    }
}


/*********************************************************************/
/*  mem_free_MEM() :  Libération mémoire de la structure record_MEM. */
/*********************************************************************/
static void mem_free_MEM(struct record_MEM *current_record)
{
  if(current_record)
    {
      k_free(current_record);
    }
}


/***********************************************************************/
/*  mem_free_EXPR() :  Libération mémoire de la structure record_EXPR. */
/***********************************************************************/
static void mem_free_EXPR(struct record_EXPR *current_record)
{
  if(current_record)
    {
      k_free(current_record);
    }
}


/*************************************************************************/
/*  mem_free_ZEXPR() :  Libération mémoire de la structure record_ZEXPR. */
/*************************************************************************/
static void mem_free_ZEXPR(struct record_ZEXPR *current_record)
{
  if(current_record)
    {
      k_free(current_record);
    }
}


/*************************************************************************/
/*  mem_free_BEXPR() :  Libération mémoire de la structure record_BEXPR. */
/*************************************************************************/
static void mem_free_BEXPR(struct record_BEXPR *current_record)
{
  if(current_record)
    {
      k_free(current_record);
    }
}


/*****************************************************************************/
/*  mem_free_RELEXPR() :  Libération mémoire de la structure record_RELEXPR. */
/*****************************************************************************/
static void mem_free_RELEXPR(struct record_RELEXPR *current_record)
{
  if(current_record)
    {
      k_free(current_record);
    }
}


/*************************************************************************/
/*  mem_free_LOCAL() :  Libération mémoire de la structure record_LOCAL. */
/*************************************************************************/
static void mem_free_LOCAL(struct record_LOCAL *current_record)
{
  if(current_record)
    {
      k_free(current_record);
    }
}


/*********************************************************************/
/*  mem_free_EQU() :  Libération mémoire de la structure record_EQU. */
/*********************************************************************/
static void mem_free_EQU(struct record_EQU *current_record)
{
  if(current_record)
    {
      k_free(current_record);
    }
}


/*******************************************************************/
/*  mem_free_DS() :  Libération mémoire de la structure record_DS. */
/*******************************************************************/
static void mem_free_DS(struct record_DS *current_record)
{
  if(current_record)
    {
      k_free(current_record);
    }
}


/***************************************************************************/
/*  mem_free_LCONST() :  Libération mémoire de la structure record_LCONST. */
/***************************************************************************/
static void mem_free_LCONST(struct record_LCONST *current_record)
{
  if(current_record)
    {
      if(current_record->data)
        k_free(current_record->data);

      k_free(current_record);
    }
}


/*************************************************************************/
/*  mem_free_LEXPR() :  Libération mémoire de la structure record_LEXPR. */
/*************************************************************************/
static void mem_free_LEXPR(struct record_LEXPR *current_record)
{
  if(current_record)
    {
      k_free(current_record);
    }
}


/*************************************************************************/
/*  mem_free_ENTRY() :  Libération mémoire de la structure record_ENTRY. */
/*************************************************************************/
static void mem_free_ENTRY(struct record_ENTRY *current_record)
{
  if(current_record)
    {
      k_free(current_record);
    }
}


/***************************************************************************/
/*  mem_free_cRELOC() :  Libération mémoire de la structure record_cRELOC. */
/***************************************************************************/
static void mem_free_cRELOC(struct record_cRELOC *current_record)
{
  if(current_record)
    {
      k_free(current_record);
    }
}


/*********************************************************************************/
/*  mem_free_cINTERSEG() :  Libération mémoire de la structure record_cINTERSEG. */
/*********************************************************************************/
static void mem_free_cINTERSEG(struct record_cINTERSEG *current_record)
{
  if(current_record)
    {
      k_free(current_record);
    }
}


/*************************************************************************/
/*  mem_free_SUPER() :  Libération mémoire de la structure record_SUPER. */
/*************************************************************************/
static void mem_free_SUPER(struct record_SUPER *current_record)
{
  struct subrecord_SuperReloc2 *current_SuperReloc2;
  struct subrecord_SuperReloc2 *next_SuperReloc2;

  if(current_record)
    {
      for(current_SuperReloc2=current_record->first_SuperReloc2; current_SuperReloc2; )
        {
          next_SuperReloc2 = current_SuperReloc2->next;
          k_free(current_SuperReloc2);
          current_SuperReloc2 = next_SuperReloc2;
        }

      k_free(current_record);
    }
}


/*****************************************************************************/
/*  mem_free_General() :  Libération mémoire de la structure record_General. */
/*****************************************************************************/
static void mem_free_General(struct record_General *current_record)
{
  if(current_record)
    {
      k_free(current_record);
    }
}


/***************************************************************************************/
/*  mem_free_Experimental() :  Libération mémoire de la structure record_Experimental. */
/***************************************************************************************/
static void mem_free_Experimental(struct record_Experimental *current_record)
{
  if(current_record)
    {
      k_free(current_record);
    }
}

/************************************************************************/

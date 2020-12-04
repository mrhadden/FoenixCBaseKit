/************************************************************************/
/*                                                                      */
/*  OMF_Dump.c : Module pour le dump en format Text des fichiers OMF.   */
/*                                                                      */
/************************************************************************/
/*  Auteur : Olivier ZARDINI  *  Brutal Deluxe Software  *  Avril 2013  */
/************************************************************************/
#include "fxtypes.h"
#include "fxmemorymanager.h"

/*
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <setjmp.h>
#if defined(WIN32) || defined(WIN64)
#include <malloc.h>
#endif
*/
#include "OMF_Dc_Shared.h"
#include "OMF_Load.h"
#include "OMF_Dc_Memory.h"
#include "OMF_Record.h"
#include "OMF_Dump.h"
#include "ff.h"

static void DumpExpressLoadData(struct omf_segment *s,FIL *fd);
static void DumpSegmentHeader(struct omf_segment_header *s,FIL *fd);
static char *GetSegmentType(BYTE b,int i);
static char *GetSegmentKind(WORD w,int i);
static char *GetSegmentAlign(DWORD dw);
static char *GetRecordList(struct omf_segment *s);
static void DumpLCONSTRecord(struct omf_body_record *r,FIL *f,int i);
static void DumpRELOCRecord(struct omf_body_record *r,FIL *f,int i);
static void DumpcRELOCRecord(struct omf_body_record *r,FIL *f,int i);
static void DumpINTERSEGRecord(struct omf_body_record *r,FIL *f,int i);
static void DumpcINTERSEGRecord(struct omf_body_record *r,FIL *f,int i);
static void DumpSUPERRecord(struct omf_body_record *r,FIL *f,int i);


#pragma section CODE=LOADER,offset $9:DA80

static char bit_shift[256];
static char *origin_tab[] = {"                    ","RELOC               ","INTERSEG            ","cRELOC              ","cINTERSEG           ","SUPER RELOC 2      ","SUPER RELOC 3       ","SUPER INTERSEG 1    ","SUPER INTERSEG 2-12 ","SUPER INTERSEG 13-24","SUPER INTERSEG 25-36"};


/****************************************************************************/
/*  CreateDumpFile() :  Création du fichier DUMP pour un fichier objet OMF. */
/****************************************************************************/
int CreateDumpFile(struct omf_file *current_file, char *file_path)
{
  int i, j, nb_item;
  FIL *fd;
  struct omf_segment *current_segment;
  LPSTR grl = NULL;
  LPSTR buffer = k_mem_allocate_heap(2048);

  fd = k_calloc(1,sizeof(FIL));

  /* Création du fichier */
  f_open(fd,file_path,FA_WRITE);
  if(fd == NULL)
    {
      //printf("Error : Impossible to create output DUMP file '%s'.\n",file_path);
      return(1);
    }

  /* Information du fichier */
  f_printf(fd,"***************************\n");
  f_printf(fd,"**   File Information    **\n");
  f_printf(fd,"***************************\n\n");
  f_printf(fd,"     - File Name      :  '%s'\n",current_file->file_name);
  f_printf(fd,"     - Length         :  %06X (%d)\n",current_file->data_length,current_file->data_length);
  f_printf(fd,"     - Segment Count  :  %02X (%d)\n\n",current_file->nb_segment,current_file->nb_segment);

  /** Segment Summary **/
  f_printf(fd,"***************************\n");
  f_printf(fd,"**    Segments Summary   **\n");
  f_printf(fd,"***************************\n\n");

  f_printf(fd,"     +----------+----------+-----------------+----------------+----------------+-------------+-------------+------------+------------+--------------\n");
  f_printf(fd,"     |  Offset  |  SegNum  |     SegType     |     SegName    |    LoadName    |  SegLength  |  MemLength  | OrgAddress |  # Record  |  RecordList  \n");
  f_printf(fd,"     +----------+----------+-----------------+----------------+----------------+-------------+-------------+------------+------------+--------------\n");
  for(current_segment=current_file->first_segment; current_segment; current_segment=current_segment->next)
    {
      /* Information du Segment */
      f_printf(fd,"     |  %06X  |    %02X    | %-15s |  %-12s  |  %-12s  |    %06X   |    %06X   |   %06X   |    %04X    |  %s\n",
              current_segment->header.FileOffset,current_segment->header.SegNum,
              (current_segment->header.Version == 2) ? GetSegmentKind(current_segment->header.Kind,1) : GetSegmentType(current_segment->header.Type,1),
              current_segment->header.SegName,current_segment->header.LoadName,
              current_segment->header.ByteCnt,current_segment->header.Length,current_segment->header.Org,current_segment->nb_record,GetRecordList(current_segment));
    }
  f_printf(fd,"     +----------+----------+-----------------+----------------+----------------+-------------+-------------+------------+------------+--------------\n\n");

  /** Dump des Segments **/


  for(current_segment=current_file->first_segment; current_segment; current_segment=current_segment->next)
    {
      f_printf(fd,"***************************\n");
      f_printf(fd,"**      Segment %02X       **\n",current_segment->header.SegNum);
      f_printf(fd,"***************************\n\n");

      /** Header **/
      f_printf(fd,"  ***  Header  ***\n\n");
      DumpSegmentHeader(&current_segment->header,fd);

      /** Data / Code **/
      f_printf(fd,"  ***  Data or Code  ***\n\n");
      if(current_segment->data_length == 0)
        f_printf(fd,"       - No Data or Code record\n\n");
      else
        {
    	  grl = GetRecordList(current_segment);
          /* Liste des Record du Body */
          f_printf(fd,"     o Body Record List                                      :  %s\n\n",grl);
          k_free(grl);
          f_printf(fd,"     - Data Offset    :  %06X\n",current_segment->data_offset);
          f_printf(fd,"     - Data Length    :  %06X (%d)\n\n",current_segment->data_length,current_segment->data_length);

          /* On va décoder l'ExpressLoad */
          if(!my_stricmp(current_segment->header.SegName,"~ExpressLoad"))
            DumpExpressLoadData(current_segment,fd);
          else
            {
              /* Valeurs en Hexa */
              for(i=0; i< (int) current_segment->data_length; i+=nb_item)
                {
                  /* 1 Ligne de 32 bytes */
                  nb_item = ((i+32) > (int) current_segment->data_length) ? (current_segment->data_length - i) : 32;
                  for(j=0; j<nb_item; j++)
                    {
                      ////sprintf(&buffer[j*3],"%02X",current_segment->data[i+j]);
                      //k_strcat(buffer,(j == 15) ? "." : " ");
                    }

                  /* Dump dans le fichier */
                  f_printf(fd,"       %06X   %s\n",i,buffer);
                }
            }
        }
      f_printf(fd,"\n");

      /** Relocation dictionary **/
      if(current_segment->nb_reloc > 0 || current_segment->nb_interseg > 0)
        {
          f_printf(fd,"  ***  Relocation Dictionary ***\n\n");
          f_printf(fd,"     - Reloc Offset   :  %06X\n",current_segment->reloc_offset);
          f_printf(fd,"     - Reloc Length   :  %06X (%d)\n\n",current_segment->reloc_length,current_segment->reloc_length);
        }

      /** RELOC **/
      if(current_segment->nb_reloc > 0)
        {
          f_printf(fd,"     - # Address to be patched  :  %04X (%d)\n\n",current_segment->nb_reloc,current_segment->nb_reloc);
          f_printf(fd,"       +--------+-----------+-------------+----------+-------------+\n");
          f_printf(fd,"       |    #   |  # Bytes  |  Bit Shift  |  Offset  |  Reference  |\n");
          f_printf(fd,"       +--------+-----------+-------------+----------+-------------+\n");
          for(i=0; i<current_segment->nb_reloc; i++)
            {
              /* Bit Shift en version Ascii */
              if(current_segment->tab_reloc[i]->BitShiftCnt == 0x00)
                k_strcpy(bit_shift,"     ");
              else if(current_segment->tab_reloc[i]->BitShiftCnt == 0xF8)   /* F8 = -8 */
                k_strcpy(bit_shift,">> 8 ");
              else if(current_segment->tab_reloc[i]->BitShiftCnt == 0xF0)   /* F0 = -16 */
                k_strcpy(bit_shift,">> 16");
              else
              {
                ////sprintf(bit_shift," %02X  ",current_segment->tab_reloc[i]->BitShiftCnt);
              }
              /* Ligne de Patch d'une adresse interne au segment */
              if((current_segment->tab_reloc[i]->OffsetReference & 0xFF000000) == 0x00000000)
                f_printf(fd,"       |  %04X  |    %02X     |    %s    |  %06X  |   %06X    |  %s\n",
                           i,
                           current_segment->tab_reloc[i]->ByteCnt,
                           bit_shift,
                           current_segment->tab_reloc[i]->OffsetPatch,
                           current_segment->tab_reloc[i]->OffsetReference,
                           origin_tab[current_segment->tab_reloc[i]->origin]);
              else
                f_printf(fd,"       |  %04X  |    %02X     |    %s    |  %06X  | %08X    |  %s\n",
                           i,
                           current_segment->tab_reloc[i]->ByteCnt,
                           bit_shift,
                           current_segment->tab_reloc[i]->OffsetPatch,
                           current_segment->tab_reloc[i]->OffsetReference,                   /* RELOC : OffsetReference est sur 32 bits */
                           origin_tab[current_segment->tab_reloc[i]->origin]);
            }
          f_printf(fd,"       +--------+-----------+-------------+----------+-------------+\n\n");
        }

      /** INTERSEG **/
      if(current_segment->nb_interseg > 0)
        {
          f_printf(fd,"     - # Address to be patched  :  %04X (%d)\n\n",current_segment->nb_interseg,current_segment->nb_interseg);
          f_printf(fd,"       +--------+-----------+-------------+----------+-------------+------------+-----------+\n");
          f_printf(fd,"       |    #   |  # Bytes  |  Bit Shift  |  Offset  |  Reference  |  File Num  |  Seg Num  |\n");
          f_printf(fd,"       +--------+-----------+-------------+----------+-------------+------------+-----------+\n");
          for(i=0; i<current_segment->nb_interseg; i++)
            {
              /* Bit Shift en version Ascii */
              if(current_segment->tab_interseg[i]->BitShiftCnt == 0x00)
                k_strcpy(bit_shift,"     ");
              else if(current_segment->tab_interseg[i]->BitShiftCnt == 0xF8)   /* -8 */
                k_strcpy(bit_shift,">> 8 ");
              else if(current_segment->tab_interseg[i]->BitShiftCnt == 0xF0)   /* -16 */
                k_strcpy(bit_shift,">> 16");
              else
              {
                ////sprintf(bit_shift," %02X  ",current_segment->tab_interseg[i]->BitShiftCnt);
              }
              /* Ligne de Patch d'une adresse externe au segment */
              f_printf(fd,"       |  %04X  |    %02X     |    %s    |  %06X  |   %06X    |    %04X    |    %04X   |  %s\n",
                         i,
                         current_segment->tab_interseg[i]->ByteCnt,
                         bit_shift,
                         current_segment->tab_interseg[i]->OffsetPatch,
                         current_segment->tab_interseg[i]->OffsetReference,
                         current_segment->tab_interseg[i]->FileNum,
                         current_segment->tab_interseg[i]->SegNum,
                         origin_tab[current_segment->tab_interseg[i]->origin]);
            }
          f_printf(fd,"       +--------+-----------+-------------+----------+-------------+------------+-----------+\n\n");
        }
    }

  /* Fermeture du fichier */
  f_printf(fd,"\n************************************************************************************************************\n");
  f_close(fd);
  k_free(fd);

  k_mem_deallocate_heap(buffer);

  /* OK */
  return(0);
}


/****************************************************************/
/*  DumpExpressLoadData() :  Dump le contenue de l'ExpressLoad. */
/****************************************************************/

static void DumpExpressLoadData(struct omf_segment *current_segment, FIL *fd)
{
	return;
}

void processHeader00(FIL* fd, struct omf_segment_header* current_header)
{
	/* Version 0 */
	f_printf(fd,
			"     - Block Count (Segment Header size + Segment Body size) :  %06X %d (512 x %04X)\n",
			current_header->ByteCnt, current_header->ByteCnt,
			current_header->BlockCnt);
	f_printf(fd,
			"     - Number of 0x00 to add at the end of the Segment Body  :  %06X %d\n",
			current_header->ResSpc, current_header->ResSpc);
	f_printf(fd,
			"     - Size of the Segment once loaded in Memory             :  %06X %d\n",
			current_header->Length, current_header->Length);
	f_printf(fd,
			"     - Segment Type + Segment Attributes                     :    %02X = %s\n",
			current_header->Type, GetSegmentType(current_header->Type, 0));
	f_printf(fd,
			"     - Label Length (usually set to 0x00 or 0x0A)            :      %02X\n",
			current_header->LabLen);
	f_printf(fd,
			"     - Number Length (usually set to 4 bytes)                :      %02X\n",
			current_header->NumLen);
	f_printf(fd,
			"     - Segment OMF Version (should be 0x01 for 1)            :      %02X\n",
			current_header->Version);
	f_printf(fd,
			"     - Bank Size (64 KB for Code, 0-64 KB for Data)          :  %06X %d%s\n",
			current_header->BankSize, current_header->BankSize,
			(current_header->BankSize == 0) ?
					" = Segment can cross bank boundaries" : "");
	f_printf(fd,
			"     - Org Address to load the Segment (0x0000 = anywhere)   :  %06X%s\n",
			current_header->Org,
			(current_header->Org == 0) ? "" : " > Beware, unusual value <");
	f_printf(fd,
			"     - Boundary for Segment Alignment (0, 0x100 or 0x010000) :  %06X = %s\n",
			current_header->Align, GetSegmentAlign(current_header->Align));
	f_printf(fd,
			"     - Order of the bytes in a Number (0x00 for the IIgs)    :      %02X\n",
			current_header->NumSEx);
	f_printf(fd,
			"     - Undefined Byte #1 (usually set to 0x00)               :      %02X\n",
			current_header->undefine_1);
	f_printf(fd,
			"     - Undefined Byte #2 (usually set to 0x00)               :      %02X\n",
			current_header->undefine_2);
	f_printf(fd,
			"     - Undefined Byte #3 (usually set to 0x00)               :      %02X\n",
			current_header->undefine_3);
	f_printf(fd,
			"     - Undefined Byte #4 (usually set to 0x00)               :      %02X\n",
			current_header->undefine_4);
	f_printf(fd,
			"     - Undefined Byte #5 (usually set to 0x00)               :      %02X\n",
			current_header->undefine_5);
	f_printf(fd,
			"     - Undefined Byte #6 (usually set to 0x00)               :      %02X\n",
			current_header->undefine_6);
	f_printf(fd,
			"     - Undefined Byte #7 (usually set to 0x00)               :      %02X\n",
			current_header->undefine_7);
	f_printf(fd,
			"     - Segment Name                                          :  '%s'\n\n",
			current_header->SegName);
}

void processHeader01(FIL* fd, struct omf_segment_header* current_header)
{
	/* Version 1 */
	f_printf(fd,
			"     - Block Count (Segment Header size + Segment Body size) :  %06X %d (512 x %04X)\n",
			current_header->ByteCnt, current_header->ByteCnt,
			current_header->BlockCnt);
	f_printf(fd,
			"     - Number of 0x00 to add at the end of the Segment Body  :  %06X %d\n",
			current_header->ResSpc, current_header->ResSpc);
	f_printf(fd,
			"     - Size of the Segment once loaded in Memory             :  %06X %d\n",
			current_header->Length, current_header->Length);
	f_printf(fd,
			"     - Segment Type + Segment Attributes                     :    %02X = %s\n",
			current_header->Type, GetSegmentType(current_header->Type, 0));
	f_printf(fd,
			"     - Label Length (usually set to 0x00 or 0x0A)            :      %02X\n",
			current_header->LabLen);
	f_printf(fd,
			"     - Number Length (usually set to 4 bytes)                :      %02X\n",
			current_header->NumLen);
	f_printf(fd,
			"     - Segment OMF Version (should be 0x01 for 1)            :      %02X\n",
			current_header->Version);
	f_printf(fd,
			"     - Bank Size (64 KB for Code, 0-64 KB for Data)          :  %06X %d\n",
			current_header->BankSize, current_header->BankSize);
	f_printf(fd,
			"     - Undefined Byte #1 (usually set to 0x00)               :      %02X\n",
			current_header->undefine_1);
	f_printf(fd,
			"     - Undefined Byte #2 (usually set to 0x00)               :      %02X\n",
			current_header->undefine_2);
	f_printf(fd,
			"     - Undefined Byte #3 (usually set to 0x00)               :      %02X\n",
			current_header->undefine_3);
	f_printf(fd,
			"     - Undefined Byte #4 (usually set to 0x00)               :      %02X\n",
			current_header->undefine_4);
	f_printf(fd,
			"     - Org Address to load the Segment (0x0000 = anywhere)   :  %06X%s\n",
			current_header->Org,
			(current_header->Org == 0) ? "" : " > Beware, unusual value <");
	f_printf(fd,
			"     - Boundary for Segment Alignment (0, 0x100 or 0x010000) :  %06X = %s\n",
			current_header->Align, GetSegmentAlign(current_header->Align));
	f_printf(fd,
			"     - Order of the bytes in a Number (0x00 for the IIgs)    :      %02X\n",
			current_header->NumSEx);
	f_printf(fd,
			"     - Language Card Bank (usually unused)                   :      %02X\n",
			current_header->LCBank);
	f_printf(fd,
			"     - Segment Number (1 to N)                               :    %04X %d\n",
			current_header->SegNum, current_header->SegNum);
	f_printf(fd,
			"     - Entry Point in the Segment                            :  %06X %d\n",
			current_header->EntryPointOffset, current_header->EntryPointOffset);
	f_printf(fd,
			"     - Load Name                                             :  '%s'\n",
			current_header->LoadName);
	f_printf(fd,
			"     - Segment Name                                          :  '%s'\n\n",
			current_header->SegName);
}

void processHeader02(FIL* fd, struct omf_segment_header* current_header)
{
	/* Version 2.1 */
	f_printf(fd,
			"     - Segment Header size + Segment Body size               :  %06X %d\n",
			current_header->ByteCnt, current_header->ByteCnt);
	f_printf(fd,
			"     - Number of 0x00 to add at the end of the Segment Body  :  %06X %d\n",
			current_header->ResSpc, current_header->ResSpc);
	f_printf(fd,
			"     - Size of the Segment once loaded in Memory             :  %06X %d\n",
			current_header->Length, current_header->Length);
	f_printf(fd,
			"     - Undefined Byte #1 (usually set to 0x00)               :      %02X\n",
			current_header->undefine_1);
	f_printf(fd,
			"     - Label Length (usually set to 0x00 or 0x0A)            :      %02X\n",
			current_header->LabLen);
	f_printf(fd,
			"     - Number Length (usually set to 4 bytes)                :      %02X\n",
			current_header->NumLen);
	f_printf(fd,
			"     - Segment OMF Version (should be 0x02 for 2.1)          :      %02X\n",
			current_header->Version);
	f_printf(fd,
			"     - Bank Size (64 KB for Code, 0-64 KB for Data)          :  %06X %d\n",
			current_header->BankSize, current_header->BankSize);
	f_printf(fd,
			"     - Segment Type + Segment Attributes                     :    %04X = %s\n",
			current_header->Kind, GetSegmentKind(current_header->Kind, 0));
	f_printf(fd,
			"     - Undefined Byte #2 (usually set to 0x00)               :      %02X\n",
			current_header->undefine_2);
	f_printf(fd,
			"     - Undefined Byte #3 (usually set to 0x00)               :      %02X\n",
			current_header->undefine_3);
	f_printf(fd,
			"     - Org Address to load the Segment (0x0000 = anywhere)   :  %06X%s\n",
			current_header->Org,
			(current_header->Org == 0) ? "" : " > Beware, unusual value <");
	f_printf(fd,
			"     - Boundary for Segment Alignment (0, 0x100 or 0x010000) :  %06X = %s\n",
			current_header->Align, GetSegmentAlign(current_header->Align));
	f_printf(fd,
			"     - Order of the bytes in a Number (0x00 for the IIgs)    :      %02X\n",
			current_header->NumSEx);
	f_printf(fd,
			"     - Undefined Byte #4 (usually set to 0x00)               :      %02X\n",
			current_header->undefine_4);
	f_printf(fd,
			"     - Segment Number (1 to N)                               :    %04X %d\n",
			current_header->SegNum, current_header->SegNum);
	f_printf(fd,
			"     - Entry Point in the Segment                            :  %06X %d\n",
			current_header->EntryPointOffset, current_header->EntryPointOffset);
	f_printf(fd,
			"     - Load Name                                             :  '%s'\n",
			current_header->LoadName);
	f_printf(fd,
			"     - Segment Name                                          :  '%s'\n\n",
			current_header->SegName);
}

/*
static void DumpExpressLoadData(struct omf_segment *current_segment, FIL *fd)
{
  DWORD value_dwd;
  WORD value_wd;
  BYTE value_byte;
  int i, nb_segment, length, offset, label_length;
  unsigned char *data;
  unsigned char zero_12[12] = {0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00};
  char name[256];

  offset = 0;
  length = current_segment->data_length;
  data = current_segment->data;

   f_printf(fd,"     - ExpressLoad Segment Data\n");
  memcpy(&value_dwd,&data[offset],sizeof(DWORD));
  f_printf(fd,"        %04X   %08X           ; Reserved\n",offset,value_dwd);
  offset += sizeof(DWORD);
  memcpy(&value_wd,&data[offset],sizeof(WORD));
  f_printf(fd,"        %04X   %04X               ; #Segment - 1\n\n",offset,value_wd);
  offset += sizeof(WORD);

  f_printf(fd,"     - Header entry table\n");
  nb_segment = (int) value_wd + 1;
  for(i=0; i<nb_segment; i++)
    {
      memcpy(&value_wd,&data[offset],sizeof(WORD));
      f_printf(fd,"        %04X + %04X = %04X        ; Offset to Segment #%02X Header Table Entry\n",offset,value_wd,offset+value_wd,i+2);
      offset += sizeof(WORD);

      memcpy(&value_wd,&data[offset],sizeof(WORD));
      f_printf(fd,"        %04X   %04X               ; Reserved\n",offset,value_wd);
      offset += sizeof(WORD);

      memcpy(&value_dwd,&data[offset],sizeof(DWORD));
      f_printf(fd,"        %04X   %08X           ; Reserved\n\n",offset,value_dwd);
      offset += sizeof(DWORD);
    }

  f_printf(fd,"     - Segment Number Conversion Table\n");
  for(i=0; i<nb_segment; i++)
    {
      memcpy(&value_wd,&data[offset],sizeof(WORD));
      f_printf(fd,"        %04X   %04X               ; Actual file Segment Number for Original Segment #%02X\n",offset,value_wd,i+2);
      offset += sizeof(WORD);
    }

  f_printf(fd,"\n     - Segment Header Table\n");
  for(i=0; i<nb_segment; i++)
    {
      memcpy(&value_dwd,&data[offset],sizeof(DWORD));
      f_printf(fd,"        %04X   %08X           ; File Mark for Segment #%02X LConst Record\n",offset,value_dwd,i+2);
      offset += sizeof(DWORD);

      memcpy(&value_dwd,&data[offset],sizeof(DWORD));
      f_printf(fd,"        %04X   %08X           ; Number of bytes in Segment #%02X LConst Record\n",offset,value_dwd,i+2);
      offset += sizeof(DWORD);

      memcpy(&value_dwd,&data[offset],sizeof(DWORD));
      f_printf(fd,"        %04X   %08X           ; File Mark for Segment #%02X Relocation Dictionary\n",offset,value_dwd,i+2);
      offset += sizeof(DWORD);

      memcpy(&value_dwd,&data[offset],sizeof(DWORD));
      f_printf(fd,"        %04X   %08X           ; Number of bytes in Segment #%02X Relocation Dictionary\n",offset,value_dwd,i+2);
      offset += sizeof(DWORD);

      value_byte = data[offset];
      f_printf(fd,"        %04X   %02X                 ; Reserved\n",offset,value_byte);
      offset += sizeof(BYTE);

      value_byte = data[offset];
      f_printf(fd,"        %04X   %02X                 ; Label Length (usually set to 0x00 or 0x0A)\n",offset,value_byte);
      offset += sizeof(BYTE);
      label_length = (int) value_byte;

      value_byte = data[offset];
      f_printf(fd,"        %04X   %02X                 ; Number Length (usually set to 4 bytes)\n",offset,value_byte);
      offset += sizeof(BYTE);

      value_byte = data[offset];
      f_printf(fd,"        %04X   %02X                 ; Segment OMF Version (should be 0x02 for 2.1)\n",offset,value_byte);
      offset += sizeof(BYTE);

      memcpy(&value_dwd,&data[offset],sizeof(DWORD));
      f_printf(fd,"        %04X   %08X           ; Bank Size (64 KB for Code, 0-64 KB for Data)\n",offset,value_dwd);
      offset += sizeof(DWORD);

      memcpy(&value_wd,&data[offset],sizeof(WORD));
      f_printf(fd,"        %04X   %04X               ; Segment Type + Segment Attributes\n",offset,value_wd);
      offset += sizeof(WORD);

      memcpy(&value_wd,&data[offset],sizeof(WORD));
      f_printf(fd,"        %04X   %04X               ; Reserved\n",offset,value_wd);
      offset += sizeof(WORD);

      memcpy(&value_dwd,&data[offset],sizeof(DWORD));
      f_printf(fd,"        %04X   %08X           ; Org Address to load the Segment (0x0000 = anywhere)\n",offset,value_dwd);
      offset += sizeof(DWORD);

      memcpy(&value_dwd,&data[offset],sizeof(DWORD));
      f_printf(fd,"        %04X   %08X           ; Boundary for Segment Alignment (0, 0x100 or 0x010000)\n",offset,value_dwd);
      offset += sizeof(DWORD);

      value_byte = data[offset];
      f_printf(fd,"        %04X   %02X                 ; Order of the bytes in a Number (0x00 for the IIgs)\n",offset,value_byte);
      offset += sizeof(BYTE);

      value_byte = data[offset];
      f_printf(fd,"        %04X   %02X                 ; Reserved\n",offset,value_byte);
      offset += sizeof(BYTE);

      memcpy(&value_wd,&data[offset],sizeof(WORD));
      f_printf(fd,"        %04X   %04X               ; Segment Number (1 to N)\n",offset,value_wd);
      offset += sizeof(WORD);

      memcpy(&value_dwd,&data[offset],sizeof(DWORD));
      f_printf(fd,"        %04X   %08X           ; Entry Point in the Segment\n",offset,value_dwd);

      memcpy(&value_wd,&data[offset],sizeof(WORD));
      f_printf(fd,"        %04X   %04X               ; Displacement to Names (usually 0x2C)\n",offset,value_wd);
      offset += sizeof(WORD);

      if(!memcmp(&data[offset],zero_12,12))
        {
          f_printf(fd,"        %04X   000000000000000000000000\n",offset);
          offset += 12;
        }
      else
        {
          memcpy(&value_wd,&data[offset],sizeof(WORD));
          f_printf(fd,"        %04X   %04X               ; Displacement to Data (usually 0x40)\n",offset,value_wd);
          offset += sizeof(WORD);

          memset(name,' ',32);
          memcpy(name,&data[offset],10);
          name[19] = '\0';
          f_printf(fd,"        %04X   %s; Load Name\n",offset,name);
          offset += 10;
        }
      if(label_length == 0)
        {
          value_byte = data[offset];
          f_printf(fd,"        %04X   %02X                 ; Segment Name Length\n",offset,value_byte);
          offset += sizeof(BYTE);

          memset(name,' ',32);
          memcpy(name,&data[offset],(int)value_byte);
          name[19] = '\0';
          f_printf(fd,"        %04X   %s; Segment Name\n",offset,name);
          offset += (int) value_byte;
        }
      else
        {
          memset(name,' ',32);
          memcpy(name,&data[offset],label_length);
          name[19] = '\0';
          f_printf(fd,"        %04X   %s; Segment Name\n",offset,name);
          offset += label_length;
        }

      f_printf(fd,"\n");
    }
}
*/


/*
  BYTE record_super_type;
    struct omf_body_record *current_record;
for(i=1,current_record=current_segment->first_record; current_record; current_record=current_record->next,i++)
  {
    /* Information du Record *
    record_super_type = (current_record->operation_code == 0xF7) ? ((struct record_SUPER *)current_record->record_data)->RecordType : 0;
    f_printf(fd,"\n  %06X  %02X  %06X   Length=%04X   Record #%04X   Operation Code=%02X  %s\n",current_record->FileOffset,current_segment->header.SegNum,current_record->SegmentOffset,current_record->length,
                                                                                              i,current_record->operation_code,GetRecordName(current_record->operation_code,record_super_type));

    /* Détail du Record *
    if(current_record->operation_code == 0xE2)
      DumpRELOCRecord(current_record,fd,current_segment->header.SegNum);
    else if(current_record->operation_code == 0xE3)
      DumpINTERSEGRecord(current_record,fd,current_segment->header.SegNum);             
    else if(current_record->operation_code == 0xF2)
      DumpLCONSTRecord(current_record,fd,current_segment->header.SegNum);
    else if(current_record->operation_code == 0xF5)
      DumpcRELOCRecord(current_record,fd,current_segment->header.SegNum);
    else if(current_record->operation_code == 0xF6)
      DumpcINTERSEGRecord(current_record,fd,current_segment->header.SegNum);             
    else if(current_record->operation_code == 0xF7)
      DumpSUPERRecord(current_record,fd,current_segment->header.SegNum);                         
  }
*/

/********************************************************/
/*  DumpSegmentHeader() :  Dump le Header d'un Segment. */
/********************************************************/
static void DumpSegmentHeader(struct omf_segment_header *current_header, FIL *fd)
{
  if(current_header->Version == 0x00)
    {
      /* Version 0 */
		processHeader00(fd, current_header);
    }
  else if(current_header->Version == 0x01)
    {
      /* Version 1 */
		processHeader01(fd, current_header);
    }
  else if(current_header->Version == 0x02)
    {
      /* Version 2.1 */
		processHeader02(fd, current_header);
    }
}


/************************************************************************/
/*  GetSegmentType() :  Décode les différentes valeurs pour le Type V1. */
/************************************************************************/
static char *GetSegmentType(BYTE Type, int type_only)
{
  //static char type_txt[1024];
  //char attributes_txt[512] = "";


	LPSTR type_txt = k_calloc(1,1024);
	LPSTR attributes_txt = k_calloc(1,512);
	  //char attributes_txt[512] = "";


  /** Décode le Type + Attributs **/
  if((Type & 0x1F) == 0x00)
    k_strcpy(type_txt,"Code");
  else if((Type & 0x1F) == 0x01)
    k_strcpy(type_txt,"Data");
  else if((Type & 0x1F) == 0x02)
    k_strcpy(type_txt,"Jump Table");
  else if((Type & 0x1F) == 0x04)
    k_strcpy(type_txt,"PathName");
  else if((Type & 0x1F) == 0x08)
    k_strcpy(type_txt,"Lib Dictionnary");
  else if((Type & 0x1F) == 0x10)
    k_strcpy(type_txt,"Init");
  else if((Type & 0x1F) == 0x11)
    k_strcpy(type_txt,"Absolute Bank");
  else if((Type & 0x1F) == 0x12)
    k_strcpy(type_txt,"DP / Stack");
  else
    k_strcpy(type_txt,"Unknown Type");
  if(type_only == 1)
    return(&type_txt[0]);

  /** Attributs **/
  if((Type & 0x80) == 0x00)
    k_strcpy(attributes_txt,"Static");
  else
    k_strcpy(attributes_txt,"Dynamic");
  if((Type & 0x40))
    k_strcat(attributes_txt," + Private");
  if((Type & 0x20))
    k_strcat(attributes_txt," + Position independent");

  /* Ajoute les attributs */
  k_strcat(type_txt,"  (");
  k_strcat(type_txt,attributes_txt);
  k_strcat(type_txt,")");

  k_free(attributes_txt);

  /* Renvoi le Texte */
  return(type_txt);
}


/************************************************************************/
/*  GetSegmentKind() :  Décode les différentes valeurs pour le Type V2. */
/************************************************************************/
static char *GetSegmentKind(WORD Type, int type_only)
{
	  //static char type_txt[1024];
	  //char attributes_txt[512] = "";


	LPSTR type_txt = k_calloc(1,1024);
	LPSTR attributes_txt = k_calloc(1,512);

  /** Décode le Type + Attributs **/
  if((Type & 0x001F) == 0x0000)
    k_strcpy(type_txt,"Code");
  else if((Type & 0x001F) == 0x0001)
    k_strcpy(type_txt,"Data");
  else if((Type & 0x001F) == 0x0002)
    k_strcpy(type_txt,"Jump Table");
  else if((Type & 0x001F) == 0x0004)
    k_strcpy(type_txt,"PathName");
  else if((Type & 0x001F) == 0x0008)
    k_strcpy(type_txt,"Lib Dictionnary");
  else if((Type & 0x001F) == 0x0010)
    k_strcpy(type_txt,"Init");
  else if((Type & 0x001F) == 0x0012)
    k_strcpy(type_txt,"DP / Stack");
  else
    k_strcpy(type_txt,"Unknown Type");
  if(type_only == 1)
    return(&type_txt[0]);

  /** Attributs **/
  if((Type & 0x8000) == 0x0000)
    k_strcpy(attributes_txt,"Static");
  else
    k_strcpy(attributes_txt,"Dynamic");
  if((Type & 0x4000))
    k_strcat(attributes_txt," + Private");
  if((Type & 0x2000))
    k_strcat(attributes_txt," + Position independent");
  if((Type & 0x1000) == 0x0000)
    k_strcat(attributes_txt," + Can be loaded in Special Memory");
  if((Type & 0x0800))
    k_strcat(attributes_txt," + Absolute Bank");
  if((Type & 0x0400))
    k_strcat(attributes_txt," + Reload");
  if((Type & 0x0200))
    k_strcat(attributes_txt," + Skip");
  if((Type & 0x0100))
    k_strcat(attributes_txt," + Bank Relative");

  /* Ajoute les attributs */
  k_strcat(type_txt,"  (");
  k_strcat(type_txt,attributes_txt);
  k_strcat(type_txt,")");

  k_free(attributes_txt);

  /* Renvoi le Texte */
  return(type_txt);
}


/***************************************************************************/
/*  GetSegmentAlign() :  Décode les différentes valeurs pour l'alignement. */
/***************************************************************************/
static char *GetSegmentAlign(DWORD Align)
{
  LPSTR align_txt = k_calloc(1,256);

  /** Décode l'alignement **/
  if(Align == 0)
    k_strcpy(align_txt,"No alignment needed");
  else if(Align == 0x100)
    k_strcpy(align_txt,"Page boundary alignment");
  else if(Align == 0x010000)
    k_strcpy(align_txt,"Bank boundary alignment");
  else
    k_strcpy(align_txt,"Unknown alignment");

  /* Renvoi le Texte */
  return(align_txt);
}


/***************************************************************/
/*  GetRecordList() :  Extrait la liste des Record du Segment. */
/***************************************************************/
static char *GetRecordList(struct omf_segment *current_segment)
{
  int nb_found;
  struct omf_body_record *current_record;
  struct omf_body_record *next_record;

  LPSTR record_list = k_calloc(1,2048);

  /* Init */
  k_strcpy(record_list,"");
  for(current_record=current_segment->first_record; current_record; current_record=current_record->next)
    current_record->processed = 0;

  /** Passe tous les Record en revue **/
  for(current_record=current_segment->first_record; current_record; current_record=current_record->next)
    {
      /* Déjà traitée ? */
      if(current_record->processed == 1)
        continue;

      /** Ajoute celui là **/
      if(strlen(record_list) > 0)
        k_strcat(record_list," + ");
      k_strcat(record_list,GetRecordName(current_record->operation_code,0xFF));
      current_record->processed = 1;

      /* Combien du même type ? */
      for(nb_found=1,next_record=current_record->next; next_record; next_record=next_record->next)
        if(next_record->processed == 0)
          if(next_record->operation_code == current_record->operation_code)
            {
              nb_found++;
              next_record->processed = 1;
            }

      /* On met le nombre si + de 1 */
      if(nb_found > 1)
      {
        ////sprintf(&record_list[strlen(record_list)]," (%d)",nb_found);
      }
    }

  /* Renvoie la liste */
  return(record_list);
}


/******************************************************************/
/*  DumpLCONSTRecord() :  Dump des informations du Record LCONST. */
/******************************************************************/
static void DumpLCONSTRecord(struct omf_body_record *current_record, FIL *fd, int segment_num)
{
  struct record_LCONST *current_LCONST;
  int i, j, nb_item;
  
  //char buffer[2048];
  LPSTR buffer = k_mem_allocate_heap(2048);

  /* Récupère la structure dédiée */
  current_LCONST = (struct record_LCONST *) current_record->record_data;
  
  /** Dump les données en Hexa **/
  for(i=0; i< (int) current_LCONST->ByteCnt; i+=nb_item)
    {
      /* 1 Ligne de 32 bytes */
      nb_item = ((i+32) > (int) current_LCONST->ByteCnt) ? (current_LCONST->ByteCnt - i) : 32;
      for(j=0; j<nb_item; j++)
        {
          ////sprintf(&buffer[j*3],"%02X",current_LCONST->data[i+j]);
          k_strcat(buffer,(j == 15) ? "." : " ");
        }
        
      /* Dump dans le fichier */
      f_printf(fd,"  %06X  %02X  %06X  %06X   %s\n",current_LCONST->FileOffset+i,segment_num,current_LCONST->SegmentOffset+i,i,buffer);
    }

  k_mem_deallocate_heap(buffer);
}


/****************************************************************/
/*  DumpRELOCRecord() :  Dump des informations du Record RELOC. */
/****************************************************************/
static void DumpRELOCRecord(struct omf_body_record *current_record, FIL *fd, int segment_num)
{
  struct record_RELOC *current_RELOC;
  
  /* Récupère la structure dédiée */
  current_RELOC = (struct record_RELOC *) current_record->record_data;
  
  /** Dump les données **/
  f_printf(fd,"       # Byte to be relocated = %02X,   Bit Shift = %02X,   Offset Patch = %08X,   Reference = %08X\n",
             current_RELOC->ByteCnt,current_RELOC->BitShiftCnt,current_RELOC->OffsetPatch,current_RELOC->OffsetReference);
}


/******************************************************************/
/*  DumpcRELOCRecord() :  Dump des informations du Record cRELOC. */
/******************************************************************/
static void DumpcRELOCRecord(struct omf_body_record *current_record, FIL *fd, int segment_num)
{
  struct record_cRELOC *current_cRELOC;
  
  /* Récupère la structure dédiée */
  current_cRELOC = (struct record_cRELOC *) current_record->record_data;
  
  /** Dump les données **/
  f_printf(fd,"       # Byte to be relocated = %02X,   Bit Shift = %02X,   Offset Patch = %04X,   Reference = %04X\n",
             current_cRELOC->ByteCnt,current_cRELOC->BitShiftCnt,current_cRELOC->OffsetPatch,current_cRELOC->OffsetReference);
}


/**********************************************************************/
/*  DumpINTERSEGRecord() :  Dump des informations du Record INTERSEG. */
/**********************************************************************/
static void DumpINTERSEGRecord(struct omf_body_record *current_record, FIL *fd, int segment_num)
{
  struct record_INTERSEG *current_INTERSEG;
  
  /* Récupère la structure dédiée */
  current_INTERSEG = (struct record_INTERSEG *) current_record->record_data;
  
  /** Dump les données **/
  f_printf(fd,"       # Byte to be relocated = %02X,   Bit Shift = %02X,   Offset Patch = %08X,   Reference = %08X,   File Number = %04X,   Segment Number = %04X\n",
             current_INTERSEG->ByteCnt,current_INTERSEG->BitShiftCnt,current_INTERSEG->OffsetPatch,current_INTERSEG->OffsetReference,current_INTERSEG->FileNum,current_INTERSEG->SegNum);
}


/************************************************************************/
/*  DumpcINTERSEGRecord() :  Dump des informations du Record cINTERSEG. */
/************************************************************************/
static void DumpcINTERSEGRecord(struct omf_body_record *current_record, FIL *fd, int segment_num)
{
  struct record_cINTERSEG *current_cINTERSEG;
  
  /* Récupère la structure dédiée */
  current_cINTERSEG = (struct record_cINTERSEG *) current_record->record_data;
  
  /** Dump les données **/
  f_printf(fd,"       # Byte to be relocated = %02X,   Bit Shift = %02X,   Offset Patch = %04X,   Reference = %04X,   Segment Number = %02X\n",
             current_cINTERSEG->ByteCnt,current_cINTERSEG->BitShiftCnt,current_cINTERSEG->OffsetPatch,current_cINTERSEG->OffsetReference,current_cINTERSEG->SegNum);
}


/****************************************************************/
/*  DumpSUPERRecord() :  Dump des informations du Record SUPER. */
/****************************************************************/
static void DumpSUPERRecord(struct omf_body_record *current_record, FIL *fd, int segment_num)
{
  int i;
  struct record_SUPER *current_SUPER;
  struct subrecord_SuperReloc2 *current_SuperReloc2;
  struct subrecord_SuperReloc3 *current_SuperReloc3;
  struct subrecord_SuperInterseg1 *current_SuperInterseg1;
  struct subrecord_SuperInterseg212 *current_SuperInterseg212;
  struct subrecord_SuperInterseg1324 *current_SuperInterseg1324;
  struct subrecord_SuperInterseg2536 *current_SuperInterseg2536;

  /* Récupère la structure dédiée */
  current_SUPER = (struct record_SUPER *) current_record->record_data;
    
  /** On Dump le contenu **/
  if(current_SUPER->RecordType == 0x00)    /* SuperReloc2 */
    {
      for(current_SuperReloc2=current_SUPER->first_SuperReloc2; current_SuperReloc2; current_SuperReloc2=current_SuperReloc2->next)
        for(i=0; i<current_SuperReloc2->nb_address; i++)
          f_printf(fd,"       # Byte to be relocated = %02X,   Bit Shift = %02X,   Offset Patch = %04X,   Reference = %04X\n",
                     current_SuperReloc2->ByteCnt,
                     current_SuperReloc2->BitShiftCnt,
                     current_SuperReloc2->OffsetPatch[i],
                     current_SuperReloc2->OffsetReference[i]);
    }
  else if(current_SUPER->RecordType == 0x01)    /* SuperReloc3 */
    {
      for(current_SuperReloc3=current_SUPER->first_SuperReloc3; current_SuperReloc3; current_SuperReloc3=current_SuperReloc3->next)
        for(i=0; i<current_SuperReloc3->nb_address; i++)
          f_printf(fd,"       # Byte to be relocated = %02X,   Bit Shift = %02X,   Offset Patch = %04X,   Reference = %04X\n",
                     current_SuperReloc3->ByteCnt,
                     current_SuperReloc3->BitShiftCnt,
                     current_SuperReloc3->OffsetPatch[i],
                     current_SuperReloc3->OffsetReference[i]);
    }
  else if(current_SUPER->RecordType == 0x02)    /* Super Interseg1 */
    {
      for(current_SuperInterseg1=current_SUPER->first_SuperInterseg1; current_SuperInterseg1; current_SuperInterseg1=current_SuperInterseg1->next)
        for(i=0; i<current_SuperInterseg1->nb_address; i++)
          f_printf(fd,"       # Byte to be relocated = %02X,   Bit Shift = %02X,   Offset Patch = %04X,   Reference = %04X,   Segment Number = %04X,   File Number = %04X\n",
                     current_SuperInterseg1->ByteCnt,
                     current_SuperInterseg1->BitShiftCnt,
                     current_SuperInterseg1->OffsetPatch[i],
                     current_SuperInterseg1->OffsetReference[i],
                     current_SuperInterseg1->SegNum[i],
                     current_SuperInterseg1->FileNum);
    }
  else if(current_SUPER->RecordType >= 0x03 && current_SUPER->RecordType <= 0x0D)    /* Super Interseg 2-12 */
    {
      for(current_SuperInterseg212=current_SUPER->first_SuperInterseg212; current_SuperInterseg212; current_SuperInterseg212=current_SuperInterseg212->next)
        for(i=0; i<current_SuperInterseg212->nb_address; i++)
          f_printf(fd,"       # Byte to be relocated = %02X,   Bit Shift = %02X,   Offset Patch = %04X,   Reference = %02X,   Segment Number = %04X,   File Number = %04X\n",
                     current_SuperInterseg212->ByteCnt,
                     current_SuperInterseg212->BitShiftCnt,
                     current_SuperInterseg212->OffsetPatch[i],
                     current_SuperInterseg212->OffsetReference[i],
                     current_SuperInterseg212->SegNum[i],
                     current_SuperInterseg212->FileNum);
    }
  else if(current_SUPER->RecordType >= 0x0E && current_SUPER->RecordType <= 0x19)    /* Super Interseg 13-24 */
    {
      for(current_SuperInterseg1324=current_SUPER->first_SuperInterseg1324; current_SuperInterseg1324; current_SuperInterseg1324=current_SuperInterseg1324->next)
        for(i=0; i<current_SuperInterseg1324->nb_address; i++)
          f_printf(fd,"       # Byte to be relocated = %02X,   Bit Shift = %02X,   Offset Patch = %04X,   Reference = %04X,   Segment Number = %02X,   File Number = %04X\n",
                     current_SuperInterseg1324->ByteCnt,
                     current_SuperInterseg1324->BitShiftCnt,
                     current_SuperInterseg1324->OffsetPatch[i],
                     current_SuperInterseg1324->OffsetReference[i],
                     current_SuperInterseg1324->SegNum,
                     current_SuperInterseg1324->FileNum); 
  }
  else if(current_SUPER->RecordType >= 0x1A && current_SUPER->RecordType <= 0x25)    /* Super Interseg 25-36 */
    {
      for(current_SuperInterseg2536=current_SUPER->first_SuperInterseg2536; current_SuperInterseg2536; current_SuperInterseg2536=current_SuperInterseg2536->next)
        for(i=0; i<current_SuperInterseg2536->nb_address; i++)
          f_printf(fd,"       # Byte to be relocated = %02X,   Bit Shift = %02X,   Offset Patch = %04X,   Reference = %04X,   Segment Number = %02X,   File Number = %04X\n",
                     current_SuperInterseg2536->ByteCnt,
                     current_SuperInterseg2536->BitShiftCnt,
                     current_SuperInterseg2536->OffsetPatch[i],
                     current_SuperInterseg2536->OffsetReference[i],
                     current_SuperInterseg2536->SegNum,
                     current_SuperInterseg2536->FileNum);
    }
}

/************************************************************************/

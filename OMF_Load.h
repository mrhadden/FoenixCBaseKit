/************************************************************************/
/*                                                                      */
/*  OMF_Load.h : Header pour le chargement/décodage des fichiers OMF.   */
/*                                                                      */
/************************************************************************/
/*  Auteur : Olivier ZARDINI  *  Brutal Deluxe Software  *  Avril 2013  */
/************************************************************************/

#include "fxtypes.h"


#define SEGMENT_HEADER_VERSION_OFFSET   0x0F  /* Version OMF du Segment */

#define SEGMENT_HEADER_MIN_SIZE_V0  36        /* Taille de la partie fixe du Header en Version 0 */
#define SEGMENT_HEADER_SIZE_V0      46        /* Taille habituelle (pourait être plus grande) en Version 0 */

#define SEGMENT_HEADER_MIN_SIZE_V1  44        /* Taille de la partie fixe du Header en Version 1 */
#define SEGMENT_HEADER_SIZE_V1      64        /* Taille habituelle (pourait être plus grande) en Version 1 */

#define SEGMENT_HEADER_MIN_SIZE_V2  44        /* Taille de la partie fixe du Header en Version 2 */
#define SEGMENT_HEADER_SIZE_V2      64        /* Taille habituelle (pourait être plus grande) en Version 2 */

struct omf_segment_header
{
  DWORD FileOffset;            /* Offset depuis le début du fichier */
  DWORD SegmentOffset;         /* Offset depuis le début du Segment */

  DWORD BlockCnt;              /* V0,V1= Segment Block Count = nb de block de 512 octets utilisé par le Segment */
  DWORD ByteCnt;               /* V2   = Segment Header size + Segment Body size */

  DWORD ResSpc;                /* Number of 0x00 à ajouter à la fin du Body */
  DWORD Length;                /* Taille du Segment en mémoire */

  BYTE Type;                   /* V0,V1 = Type & Attributs du Segment */
  BYTE undefine_1;             /* V2    = Unused */

  BYTE LabLen;                 /* Longueur des Noms : 10 */
  BYTE NumLen;                 /* Taille des nombres = 4 Bytes */
  BYTE Version;                /* OMF version : 0, 1 ou 2 */
  DWORD BankSize;              /* Taille d'un Bank : 64 KB si Code, entre 0 et 64 KB pour Data */

  WORD Kind;                   /* V2 = Type de Segment */

  BYTE undefine_2;
  BYTE undefine_3;
  DWORD Org;
  DWORD Align;                 /* Alignment : 0, 256 ou 64 KB */
  BYTE NumSEx;                 /* Little Endian : 0 pour le IIgs */

  BYTE LCBank;                 /* V1 = Ce Segment doit être chargé dans la zone Language Card */
  BYTE undefine_4;             /* V2 = Unused */

  WORD SegNum;                 /* Numéro du Segment : 1->N */
  DWORD EntryPointOffset;      /* Point d'entrée dans le Segment */
  WORD DispNameOffset;         /* V1,V2 = Offset où se situe le LoadName */
  WORD DispDataOffset;         /* Offset où commence le Segment Body */

  int TempOrgLength;           /* V2 = Usually nothing here */
  unsigned char TempOrg[2048];

  char LoadName[256];          /* Tjs 10 de long */
  char SegName[256];           /* LabLen de long */

  BYTE undefine_5;             /* V0 */
  BYTE undefine_6;
  BYTE undefine_7;
};


struct omf_segment
{
  struct omf_segment_header header;    /* Segment Header */

  int nb_record;                       /* Segment Body : Record List */
  struct omf_body_record *first_record;
  struct omf_body_record *last_record;

  /** Data des Record : BYTES + DS + LCONST **/
  int data_offset;
  int data_length;
  unsigned char *data;

  /** Dictionnaire de relogement **/
  int reloc_offset;
  int reloc_length;

  int nb_reloc;                        /* Relocation intra-segment */
  struct omf_reloc **tab_reloc;

  int nb_interseg;                     /* Relocation inter-segment */
  struct omf_interseg **tab_interseg;

  struct omf_segment *next;
};


struct omf_file
{
  char *file_path;
  char *file_name;

  int data_length;
  unsigned char *data;

  int nb_segment;
  struct omf_segment *first_segment;
  struct omf_segment *last_segment;
};

struct omf_file *LoadOMFFile(char *ff);
void mem_free_omf(struct omf_file *f);

/************************************************************************/

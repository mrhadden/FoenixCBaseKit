/************************************************************************/
/*                                                                      */
/*  Main.c : Outil d'analyse des fichiers OMF.                          */
/*                                                                      */
/************************************************************************/
/*  Auteur : Olivier ZARDINI  *  Brutal Deluxe Software  *  Avril 2013  */
/************************************************************************/

#include <stdlib.h>
#include <string.h>

#include "OMF_Load.h"
#include "OMF_Dump.h"
#include "OMF_Dc_Memory.h"

static void usage(char *program_name);

/****************************************************/
/*  main() :  Fonction principale de l'application. */
/****************************************************/
int main(int argc, char *argv[])
{
  int result, length_1, length_2;
  struct omf_file *current_file;
  struct omf_file *first_file;
  struct omf_file *second_file;



  /* Init */
  my_Memory(MEMORY_INIT,NULL,NULL);

  /***********************************************************/
  /**  On oriente le traitement en fonction de la commande  **/
  /***********************************************************/
  current_file = LoadOMFFile(argv[2]);
  if(current_file == NULL)
	return(2);

  /** Création du fichier Dump Texte **/
  result = CreateDumpFile(current_file,argv[3]);

  /* Libération mémoire */
  mem_free_omf(current_file);

  /* Libération */
  my_Memory(MEMORY_FREE,NULL,NULL);

  /* OK */
  return(0);
}


/****************************************************************/
/*  usage() :  Liste des commandes et des paramètres autorisés. */
/****************************************************************/
static void usage(char *program_name)
{
  printf("   Usage : %s DUMP        <omf_file_path>      <output_file_path>.\n",program_name);
  printf("           %s EXTRACT     <omf_file_path>      <segment_number>     <output_file_path>.\n",program_name);
  printf("           %s COMPARE     <omf_file1_path>     <omf_file2_path>.\n",program_name);
  printf("           %s COMPAREBIN  <binary_file1_path>  <binary_file2_path>.\n",program_name);
}

/******************************************************************************/

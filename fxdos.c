#include "fxos.h"
#include "fxdos.h"
#include "fxmemorymanager.h"
#include "MINDRVR.H"
#include "fxfloppy.h"

#pragma section CODE=FXDOS,offset $08:7FFF

static UCHAR sectorBuffer[512];
static CHAR	 longnamecount;
static UCHAR longnameBuffer[255];

FXDOSDEVICE fxdosDevice;

static PFXNODELIST _k_dos_devicedrivers	= NULL;

extern FX_DEVICE_DRIVER DRIVER_B2Console;
extern FX_DEVICE_DRIVER DRIVER_B2SDCard;
extern FX_DEVICE_DRIVER DRIVER_FMXSDCard;

void k_dos_load_drivers(void)
{
	CHAR major[16];
	CHAR minor[16];

	PFX_DEVICE_DRIVER driver = NULL;

	_k_dos_devicedrivers 	= k_nodelist_allocate_list("_k_dos_devicedrivers" ,NULL);

	k_get_c256_major_version(major);
	k_debug_strings("k_dos_load_drivers VERSION MAJOR:",major);
	k_get_c256_minor_version(minor);
	k_debug_strings("k_dos_load_drivers VERSION MINOR:",minor);

	driver = &DRIVER_B2Console;
	k_nodelist_addtolist(_k_dos_devicedrivers,driver->type,driver->name,driver);

	k_debug_strings("k_dos_load_drivers::driver->name:",driver->name);
	k_debug_strings("k_dos_load_drivers::driver->version:",driver->version);
	k_debug_strings("k_dos_load_drivers::driver->major:",driver->hmajor);
	k_debug_strings("k_dos_load_drivers::driver->minor:",driver->hminor);
	k_debug_integer("k_dos_load_drivers::driver->type:",driver->type);
	k_debug_pointer("k_dos_load_drivers::driver->f_driver_load:",driver->f_driver_load);

	if((strcmp(driver->hmajor,major) == 0) && (strcmp(driver->hminor,minor) == 0))
	{
		k_debug_strings("k_dos_load_drivers[HARWARE MATCH]:",driver->name);
		if(driver->f_driver_load)
			((DEVICEDRIVER_LOAD)driver->f_driver_load)();
	}


	driver = &DRIVER_B2SDCard;

	k_nodelist_addtolist(_k_dos_devicedrivers,driver->type,driver->name,driver);

	k_debug_strings("k_dos_load_drivers::driver->name:",driver->name);
	k_debug_strings("k_dos_load_drivers::driver->version:",driver->version);
	k_debug_strings("k_dos_load_drivers::driver->major:",driver->hmajor);
	k_debug_strings("k_dos_load_drivers::driver->minor:",driver->hminor);
	k_debug_integer("k_dos_load_drivers::driver->type:",driver->type);
	k_debug_pointer("k_dos_load_drivers::driver->f_driver_load:",driver->f_driver_load);

	if((strcmp(driver->hmajor,major) == 0) && (strcmp(driver->hminor,minor) == 0))
	{
		k_debug_strings("k_dos_load_drivers[HARWARE MATCH]:",driver->name);
		if(driver->f_driver_load)
			((DEVICEDRIVER_LOAD)driver->f_driver_load)();
	}

	driver = &DRIVER_FMXSDCard;
	k_nodelist_addtolist(_k_dos_devicedrivers,driver->type,driver->name,driver);
	k_debug_strings("k_dos_load_drivers::driver->name:",driver->name);
	k_debug_strings("k_dos_load_drivers::driver->version:",driver->version);
	k_debug_strings("k_dos_load_drivers::driver->major:",driver->hmajor);
	k_debug_strings("k_dos_load_drivers::driver->minor:",driver->hminor);
	k_debug_integer("k_dos_load_drivers::driver->type:",driver->type);
	k_debug_pointer("k_dos_load_drivers::driver->f_driver_load:",driver->f_driver_load);

	if((strcmp(driver->hmajor,major) == 0) && (strcmp(driver->hminor,minor) == 0))
	{
		k_debug_strings("k_dos_load_drivers[HARWARE MATCH]:",driver->name);
	}

}


PFXDOSDEVICE k_create_dos_device(UINT type)
{
	INT x = 0;

	BYTE	errorCode;
	CHAR	byte;

	BYTE	s;

	BOOL isFAT12 = FALSE;

	PFATBOOTSECTOR  pBoot = NULL;
	PPARTITIONTABLE pPartTable 		= NULL;
	PFXDOSDEVICE 	pfxdosDevice 	= NULL;
	PFAT32EXT		pfat32 			= NULL;
	ULONG lba = 0L;

	INT partitionId = 0x00;

    k_debug_integer("k_create_dos_device:",type);


    pfxdosDevice = k_mem_allocate_heap(sizeof(FXDOSDEVICE));
    if(pfxdosDevice)
    {
    	memset(pfxdosDevice,0,sizeof(FXDOSDEVICE));

    	switch(type)
		{
    	case FXDOS_SDC:

    		//pfxdosDevice->pfInit   = (DOSINITDEVICE)k_sd_dos_init;
    		//pfxdosDevice->pfReader = (DOSSECTORREADER)k_read_sd_sector;
    		break;

    	case FXDOS_HDD:

    		//pfxdosDevice->pfInit   = (DOSINITDEVICE)k_hd_dos_init;
    		//pfxdosDevice->pfReader = (DOSSECTORREADER)k_read_hd_sector;
    		lba = 0L;

    		break;

    	case FXDOS_FDD:

    		//pfxdosDevice->pfInit   = (DOSINITDEVICE)floppy_init;//k_fd_dos_init;
    		//pfxdosDevice->pfReader = (DOSSECTORREADER)k_read_fd_sector;
    		lba = 0L;

    		break;

		}

    	k_debug_integer("k_create_dos_device size:",sizeof(FXDOSDEVICE));

    	if(!pfxdosDevice->initialized)
    		pfxdosDevice->pfInit((LPVOID)pfxdosDevice);


    	if(!pfxdosDevice->initialized)
    	{
    		k_mem_deallocate_heap(pfxdosDevice);
    		return NULL;
    	}

		//_MSTR_CTRL[0] |= GABE_CTRL_SDC_LED;

		errorCode = pfxdosDevice->pfReader(lba,sectorBuffer);
		k_debug_byte_array("pfxdosDevice->pfReader:\r\n",sectorBuffer,512);

		pBoot =  (PFATBOOTSECTOR)sectorBuffer;;

		k_debug_integer("pBoot->sectors_per_cluster:",pBoot->sectors_per_cluster);
		k_debug_integer("pBoot->root_entry_count:",pBoot->root_entry_count);
		k_debug_integer("pBoot->total_sectors_16:",pBoot->total_sectors_16);
		k_debug_integer("pBoot->sectors_per_fat:",pBoot->sectors_per_fat);
		k_debug_integer("pBoot->sectors_per_track:",pBoot->sectors_per_track);
		k_debug_nstrings("pBoot->vol_name:",pBoot->vol_name,11);
		k_debug_integer("pBoot->bytes_per_sector:",pBoot->bytes_per_sector);
		k_debug_hex("pBoot->fat_table_count:",pBoot->fat_table_count);
		k_debug_integer("pBoot->bytes_per_sector:",pBoot->hidden_sector_count);


		if(pBoot->total_sectors_16 == 2880)
			isFAT12 = TRUE;


		if(!isFAT12)
		{
			pfat32 =  (PFAT32EXT)(&sectorBuffer[36]);

			k_debug_long("pfat32->table_size_32:",pfat32->table_size_32);
			k_debug_nstrings("pfat32->volume_label:",pfat32->volume_label,11);

			for(x=0;x<4;x++)
			{
				k_debug_integer("*** partition table:",x);

				pPartTable = (PPARTITIONTABLE)&sectorBuffer[FAT_PARTITION_TABLE_1 + (0x10 * x)];

				if(pPartTable->partition_type == FAT_PARTITION_TYPE_DOS30 ||
				   pPartTable->partition_type == FAT_PARTITION_TYPE_DOS33 ||
				   pPartTable->partition_type == FAT_PARTITION_TYPE_DOS70)
				{
					k_debug_hex("FAT16 filesystem found from partition:", pPartTable->partition_type);
					partitionId = x;
					break;
				}
				else
				{
					k_debug_hex("*** pPartTable->partition_type:",pPartTable->partition_type);
				}
			}


			memcpy(&pfxdosDevice->partitionTable,&sectorBuffer[FAT_PARTITION_TABLE_1 + (0x10 * partitionId)],sizeof(PARTITIONTABLE));
			k_debug_hex ("***fxdosDevice first_byte:",pfxdosDevice->partitionTable.first_byte);
			k_debug_hex ("***fxdosDevice start_chs0:",pfxdosDevice->partitionTable.start_chs[0]);
			k_debug_hex ("***fxdosDevice start_chs1:",pfxdosDevice->partitionTable.start_chs[1]);
			k_debug_hex ("***fxdosDevice start_chs2:",pfxdosDevice->partitionTable.start_chs[2]);
			k_debug_hex ("***fxdosDevice partition_type:",(INT)pfxdosDevice->partitionTable.partition_type);
			k_debug_hex ("***fxdosDevice end_chs0:",pfxdosDevice->partitionTable.end_chs[0]);
			k_debug_hex ("***fxdosDevice end_chs1:",pfxdosDevice->partitionTable.end_chs[1]);
			k_debug_hex ("***fxdosDevice end_chs2:",pfxdosDevice->partitionTable.end_chs[2]);
			k_debug_long("***fxdosDevice start_sector:",pfxdosDevice->partitionTable.start_sector);
			k_debug_long("***fxdosDevice length_sectors:",pfxdosDevice->partitionTable.length_sectors);
		}
		else
		{
			memset(&pfxdosDevice->partitionTable,0,sizeof(PARTITIONTABLE));
			pPartTable->start_sector = 0;
		}

		pfxdosDevice->bsOffset = (pPartTable->start_sector * FAT_PAGE_SIZE);

		pfxdosDevice->errorCode = pfxdosDevice->pfReader(pfxdosDevice->bsOffset,sectorBuffer);
		if(!pfxdosDevice->errorCode)
		{
			memcpy(&pfxdosDevice->bootSector,sectorBuffer,sizeof(FATBOOTSECTOR));

			k_debug_integer("***fxdosDevice bytes_per_sector:",(INT)pfxdosDevice->bootSector.bytes_per_sector);
			k_debug_integer("***fxdosDevice sectors_per_cluster:",(INT)pfxdosDevice->bootSector.sectors_per_cluster);
			k_debug_integer("***fxdosDevice reserved_sector_count:",(INT)pfxdosDevice->bootSector.reserved_sector_count);
			k_debug_integer("***fxdosDevice table_count:",(INT)pfxdosDevice->bootSector.fat_table_count);
			k_debug_integer("***fxdosDevice root_entry_count:",(INT)pfxdosDevice->bootSector.root_entry_count);
			k_debug_integer("***fxdosDevice total_sectors_16:",(INT)pfxdosDevice->bootSector.total_sectors_16);
			k_debug_integer("***fxdosDevice media_type:",(INT)pfxdosDevice->bootSector.media_type);
			k_debug_integer("***fxdosDevice sectors_per_fat:",(INT)pfxdosDevice->bootSector.sectors_per_fat);
			k_debug_integer("***fxdosDevice sectors_per_track:",(INT)pfxdosDevice->bootSector.sectors_per_track);
			k_debug_integer("***fxdosDevice head_side_count:",(INT)pfxdosDevice->bootSector.head_side_count);
			k_debug_integer("***fxdosDevice hidden_sector_count:",(INT)pfxdosDevice->bootSector.hidden_sector_count);
			k_debug_integer("***fxdosDevice total_sectors_32:",(INT)pfxdosDevice->bootSector.total_sectors_32);

			strncpy(pfxdosDevice->volume_name,pfxdosDevice->bootSector.vol_name,11);
			//pfxdosDevice->volume_name[11] = 0;
			k_debug_nstrings("***fxdosDevice Volume Name:",pfxdosDevice->volume_name,11);

			pfxdosDevice->root_entry_count = pfxdosDevice->bootSector.root_entry_count;

			pfxdosDevice->fatTableOffset = pfxdosDevice->bsOffset + (pfxdosDevice->bootSector.bytes_per_sector * pfxdosDevice->bootSector.reserved_sector_count);
			pfxdosDevice->rootDirSectors = pfxdosDevice->bsOffset + (((ULONG)pfxdosDevice->bootSector.reserved_sector_count + ((ULONG)pfxdosDevice->bootSector.sectors_per_fat * (ULONG)pfxdosDevice->bootSector.fat_table_count)) * (ULONG)pfxdosDevice->bootSector.bytes_per_sector);
			pfxdosDevice->sectors_per_cluster = (INT)pfxdosDevice->bootSector.sectors_per_cluster;

			k_debug_long("***fxdosDevice fatTable:",pfxdosDevice->fatTableOffset);



			if(pfxdosDevice->pfReader(pfxdosDevice->fatTableOffset,sectorBuffer) == 0)
			{
				memcpy(&pfxdosDevice->fileAllocationTable,sectorBuffer,FAT_PAGE_SIZE);
			}

			k_debug_long("***fxdosDevice root offset:",pfxdosDevice->rootDirSectors);
			k_debug_long("***fxdosDevice root sizeof(FAT16ENTRY):",sizeof(FAT16ENTRY));
			k_debug_long("***fxdosDevice root root_entry_count:",pfxdosDevice->root_entry_count);
			k_debug_long("***fxdosDevice root root_entry_count/sizeof(FAT16ENTRY):",pfxdosDevice->root_entry_count/sizeof(FAT16ENTRY));


			pfxdosDevice->rootEntriesPerPage = pfxdosDevice->root_entry_count/sizeof(FAT16ENTRY);

			/*
			if(pfxdosDevice->pfReader(pfxdosDevice->rootDirSectors,sectorBuffer) == 0)
			{
				k_read_volume_name((PFAT16ENTRY)&sectorBuffer[0],pfxdosDevice);
				k_debug_strings("k_create_dos_device::ROOT VOLUME NAME:",pfxdosDevice->root_volume_name);
			}
			*/
		}

    }

    //GABE_MSTR_CTRL[0] = GABE_MSTR_CTRL[0] & (~GABE_CTRL_SDC_LED);

	return pfxdosDevice;
}



LPCHAR _k_dos_alloc_filename(LPCHAR filename11)
{
	UINT index = 0;
	//UINT p = 0;
	//UINT dot = 0;
	LPCHAR lpName = NULL;
	CHAR ftmp[4] = {0,0,0,0};

	//k_debug_string("_k_dos_alloc_filename:enter\r\n");

	lpName = (LPCHAR)k_mem_allocate_heap(16);
	if(lpName!=NULL)
	{
		//k_debug_string("_k_dos_alloc_filename:copy\r\n");
		//memset(lpName,0,16);
		//memcpy(lpName,filename11,8);
		for(index=0;index<16;index++)
					lpName[index] = 0;

		for(index=0;index<8;index++)
			lpName[index] = filename11[index];


		lpName = k_string_rtrim(lpName);
		if(filename11[8]!=' ')
		{
			strcat(lpName,".");

			for(index=0;index<3;index++)
				ftmp[index] = filename11[index + 8];

			strcat(lpName,ftmp);
		}

		//k_debug_string("_k_ds_alloc_filename:");
		//k_debug_string(lpName);
		//k_debug_string("\r\n");
	}

	return lpName;
}



VOID  k_dos_dealloc_filelist(PFXNODE plist)
{
	PFXNODE p   = plist;
	PFXNODE tmp = NULL;

	while(p)
	{
		tmp = p->next;

		k_mem_deallocate_heap(((PFILEINFO)p->data)->pFilename);
		k_mem_deallocate_heap(p->data);
		k_mem_deallocate_heap(p);

		p = tmp;
	}
}

PFILEINFO _k_dos_alloc_fileinfo(FX_FAT_DIR_INFO FAR *direntry)
{
	PFILEINFO pfi = NULL;

	//k_debug_string("_k_dos_alloc_fileinfo:enter\r\n");

	pfi = k_mem_allocate_heap(sizeof(FILEINFO));
	if(pfi!=NULL)
	{
		pfi->type  		 = direntry->DIR_Attr;
		pfi->lSize 		 = direntry->DIR_FileSize;
		pfi->lchangeDate = direntry->DIR_LstAccDate;
		pfi->lcreateDate = direntry->DIR_CrtDate;
		pfi->pFilename   = _k_dos_alloc_filename(direntry->DIR_Name);
	}

	return pfi;
}


BOOL k_dos_foreach_file(LPVOID ctx,LPVOID pdata)
{
	BOOL bBreak = FALSE;

	PFAT16ENTRYLONG entry = (PFAT16ENTRYLONG)pdata;
	if(pdata)
	{
		if(entry->plongfileName && ctx)
		{
			//k_debug_strings("k_dos_foreach_file:",entry->plongfileName);
			//k_debug_strings("k_dos_foreach_file compare:",(LPSTR)ctx);

			bBreak = (strcmp(ctx,entry->plongfileName) == 0);

			//k_debug_integer("k_dos_foreach_file compare:",bBreak);
		}
	}

	return bBreak;
}

LPSTR k_dos_alloc_short_name(PFAT16ENTRYLONG entry)
{
	int i = 0;
	// 01234567.901N
	entry->plongfileName = k_mem_allocate_heap(14);
	memset(entry->plongfileName,0,14);
	/*
	memcpy(entry->plongfileName,entry->filename,8);
	memcpy(&(entry->plongfileName[9]),entry->ext,3);

	entry->plongfileName[8] = '.';
	entry->plongfileName[12] = 0;
	*/

	memcpy(entry->plongfileName,entry->filename,8);
	for(i=0;i<8;i++)
	{
		if(entry->plongfileName[i] == ' ')
			break;
	}
	//k_debug_strings("k_dos_alloc_short_name:filename:",entry->plongfileName);
	//k_debug_integer("k_dos_alloc_short_name:i:",i);

	if(entry->ext[0]!=' ')
	{
		entry->plongfileName[i] = '.';
		memcpy(&(entry->plongfileName[i+1]),entry->ext,3);
		for(i=0;i<14;i++)
		{
			if(entry->plongfileName[i] == ' ')
				entry->plongfileName[i] = 0;
		}
	}
	//entry->plongfileName[8] = '.';
	//entry->plongfileName[12] = 0;

	//k_debug_strings("k_dos_alloc_short_name:",entry->plongfileName);

	return entry->plongfileName;
}

ULONG k_dos_get_name(PFAT16ENTRYLONG entry,LPCHAR pbuffer)
{
	ULONG fileOffset = 0L;

	ULONG RootDirSectors;
	ULONG Cluster2SectorNumber;
	ULONG ClusterSectorNumber;
	ULONG ClusterByteNumber = 0;


	LFN* plfn = NULL;

	CHAR mbsBuffer[15];


	if(!pbuffer)
		pbuffer = mbsBuffer;

    switch(entry->filename[0])
	{
    case 0x00:
    	//k_debug_string("Unused\r\n");
        return 0; // unused entry
    case 0xE5:
    	/*
    	k_debug_string("Deleted file:");
    	k_debug_nstring(entry->filename+1,7);
    	k_debug_nstring(entry->ext,3);
    	k_debug_string("\r\n");
        //printf("Deleted file: [?%.7s.%.3s]\n", entry->filename+1, entry->ext);

         */
        return 0;
    case 0x05:
    	//k_debug_string("File 0x05:");
    	//k_debug_nstring(entry->filename+1,7);
    	//k_debug_nstring(entry->ext,3);
    	//k_debug_string("\r\n");
        //printf("File starting with 0xE5: [%c%.7s.%.3s]\n", 0xE5, entry->filename+1, entry->ext);
        break;
    case 0x2E:
    	//k_debug_string("DIR:");
    	//k_debug_nstring(entry->filename+1,8);
    	//k_debug_nstring(entry->ext,3);
    	//k_debug_string("\r\n");
        //printf("Directory: [%.8s.%.3s]\n", entry->filename, entry->ext);
    	k_dos_alloc_short_name(entry);
        break;
    default:
    	if(entry->attributes == 0x10)
    	{
			//k_debug_string("DIRECTORY:");
			//k_debug_nstring(entry->filename,8);
			//k_debug_nstring(entry->ext,3);
			//k_debug_string("\r\n");

			k_dos_alloc_short_name(entry);

			//k_debug_strings("plongfileName:",entry->plongfileName);

    	}
    	else if(entry->attributes == 0x08)
		{
			//k_debug_string("VOLUME NAME:");
			//k_debug_nstring(entry->filename,8);
			//k_debug_nstring(entry->ext,3);
			//k_debug_string("\r\n");

			k_dos_alloc_short_name(entry);

			//k_debug_strings("plongfileName:",entry->plongfileName);

		}
    	else if(entry->attributes == 0x0F)
		{
			k_debug_string("LONG NAME:");
			//k_debug_nstring(entry->filename,8);
			//k_debug_nstring(entry->ext,3);

			plfn = (LFN*)entry;

			/*
			k_debug_integer("SEQ:",plfn->sequenceNo);
			k_debug_string("10:[");
			k_debug_nstring(k_wcstombs(plfn->fileName_Part1,mbsBuffer,5),5);
			k_debug_string("]\r\n");
			k_debug_string("12:[");
			k_debug_nstring(k_wcstombs(plfn->fileName_Part2,mbsBuffer,6),6);
			k_debug_string("]\r\n");
			k_debug_string("4:[");
			k_debug_nstring(k_wcstombs(plfn->fileName_Part3,mbsBuffer,2),2);
			k_debug_string("]\r\n");
			*/
			//k_debug_byte_array("LONG BYTES:",(BYTE FAR *)plfn,32);


			if(plfn->sequenceNo & 0x40)
			{
				entry->plongfileName = (LPVOID)0xffffffff;
				longnamecount = (plfn->sequenceNo - 0x41);
				//k_debug_integer("longnamecount:",longnamecount);
				k_debug_string("SEQ:0x40");

				memset(longnameBuffer,0,255);
				memcpy(&longnameBuffer[longnamecount * 13]     ,k_wcstombs(plfn->fileName_Part1,mbsBuffer,5),5);
				memcpy(&longnameBuffer[longnamecount * 13 + 5] ,k_wcstombs(plfn->fileName_Part2,mbsBuffer,6),6);
				memcpy(&longnameBuffer[longnamecount * 13 + 11],k_wcstombs(plfn->fileName_Part3,mbsBuffer,2),2);
			}
			else
			{
				longnamecount = plfn->sequenceNo - 1 ;
				//k_debug_integer("longnamecount:",longnamecount);
				memcpy(&longnameBuffer[longnamecount * 13]     ,k_wcstombs(plfn->fileName_Part1,mbsBuffer,5),5);
				memcpy(&longnameBuffer[longnamecount * 13 + 5] ,k_wcstombs(plfn->fileName_Part2,mbsBuffer,6),6);
				memcpy(&longnameBuffer[longnamecount * 13 + 11],k_wcstombs(plfn->fileName_Part3,mbsBuffer,2),2);

				if(plfn->sequenceNo == 1)
				{
					//k_debug_string("Unicodename:");

					entry->plongfileName = k_mem_allocate_heap(strlen(longnameBuffer) + 1);
					strcpy(entry->plongfileName,(LPCSTR)longnameBuffer);

					k_debug_string(entry->plongfileName);
				}
			}

			k_debug_string("\r\n");
		}
    	else
    	{
			//k_debug_string("SHORT NAME:");
			//k_debug_nstring(entry->filename,8);
			//k_debug_nstring(entry->ext,3);
			//k_debug_long(" SIZE:",entry->file_size);
			//k_debug_hex("\tAttributes:",entry->attributes);
			//k_debug_integer("\tStart Cluster:",entry->starting_cluster);
			k_dos_alloc_short_name(entry);

			//k_debug_strings("plongfileName:",entry->plongfileName);

			ClusterByteNumber = getClusterLocationByIndex(entry->starting_cluster);
    	}
    }

    return ClusterByteNumber;
}

void k_dos_deallocate_long_entry(LPCSTR name,LPVOID pdata)
{
	PFAT16ENTRYLONG entry = (PFAT16ENTRYLONG)pdata;

	//k_debug_strings("k_dos_deallocate_long_entry name:",(LPSTR)name);

	if(entry)
	{
		//k_debug_pointer("k_dos_deallocate_long_entry ptr:",(LPSTR)entry->plongfileName);
		if(entry->plongfileName)
			k_mem_deallocate_heap(entry->plongfileName);

		k_mem_deallocate_heap(entry);
	}

	//k_debug_string("k_dos_deallocate_long_exit\r\n");
}

UINT k_dos_read_file(PFXDOSDEVICE pfxdosDevice,LPCSTR fileName)
{
	UINT fileSize = 0;
	UINT next = 0;
	UINT pageSize = 0;
	PFXNODELIST fileList = NULL;
	PFXNODE file = NULL;
	PBYTE buffer = NULL;


	fileList = k_read_dos_directory(pfxdosDevice);
	if(fileList)
	{

		file = k_nodelist_foreach_until_listdata(fileList,(LPVOID)fileName,k_dos_foreach_file);
		if(file)
		{
			PFAT16ENTRYLONG pentry = ((PFAT16ENTRYLONG)file->data);

			k_debug_strings("k_dos_read_file MATCH:file:",pentry->plongfileName);
			fileSize = pentry->file_size;

			pageSize = 512 * (fileSize/512 + 1);
			buffer = k_mem_allocate_heap(pageSize);

			k_debug_integer("pentry->starting_cluster:",pentry->starting_cluster);

			next = pentry->starting_cluster;
			while(next!=65528L && next!=0L && next!=65535L)
			{
				k_debug_integer("k_dos_read_file:next1:",next);

				if(next!=65528L && next!=0L && next!=65535L)
				{



					k_debug_integer("k_dos_read_file:pageSize:",pageSize);


					//readClusterToMemory(getClusterLocationByIndex(next) + pfxdosDevice->bsOffset,pfxdosDevice->sectors_per_cluster,buffer,pentry->file_size);
					//readSDSector(offset + (pfxdosDevice->sectors_per_cluster * 1) + read,buffer);

					k_debug_long("k_dos_read_file:getClusterLocationByIndex:0x210000:",0x210000);


					k_debug_long("k_dos_read_file:getDeviceClusterLocationByIndex:",getDeviceClusterLocationByIndex(pfxdosDevice,next));
					k_debug_long("k_dos_read_file:getDeviceClusterLocationByIndex:",getDeviceClusterLocationByIndex(pfxdosDevice,next) + pfxdosDevice->bsOffset);

					k_debug_long("k_dos_read_file:getClusterLocationByIndex:",getClusterLocationByIndex(next) + pfxdosDevice->bsOffset);


					//pfxdosDevice->pfReader((getClusterLocationByIndex(next)+ pfxdosDevice->bsOffset) * 512,buffer);
					pfxdosDevice->pfReader(0x210000,buffer);

					/*
					buffer = readClusterToMemory(getClusterLocationByIndex(next) + pfxdosDevice->bsOffset,
							                     pfxdosDevice->sectors_per_cluster,
												 buffer,
												 fileSize);*/
					k_debug_byte_array("k_dos_read_file:buffer:\r\n",buffer,512);

					next = pfxdosDevice->fileAllocationTable[next];

					k_debug_integer("k_dos_read_file:next2:",next);
					k_debug_long("k_dos_read_file:next512:",next * 512);
				}
			}

			k_mem_deallocate_heap(buffer);
		}

		k_nodelist_deallocate_list(fileList);
	}


	k_debug_integer("k_dos_read_file exit:fileSize:",fileSize);

	return fileSize;
}

PFXNODELIST k_read_dos_directory(PFXDOSDEVICE pfxdosDevice)
{
	ULONG x = 0;
	ULONG i = 0;
	ULONG check = 0L;
	ULONG fileOffset;
	//PFAT16ENTRY     pentry     = NULL;
	PFAT16ENTRYLONG  pentrylong = NULL;

	PFXNODELIST plist   = NULL;

	unsigned long rootDirSectors = pfxdosDevice->rootDirSectors;

	k_debug_nstrings("k_read_dos_directory volume:",pfxdosDevice->root_volume_name,11);

	if(pfxdosDevice->initialized)
	{
		plist = k_nodelist_allocate_list("currentDirectory",k_dos_deallocate_long_entry);
		if(plist)
		{
			for(i=0; i<pfxdosDevice->rootEntriesPerPage; i++)
			{
				if(pfxdosDevice->pfReader(rootDirSectors,sectorBuffer) == 0)
				{
					for(x=0; x<pfxdosDevice->rootEntriesPerPage; x++)
					{
						pentrylong = (PFAT16ENTRYLONG)k_mem_allocate_heap(sizeof(FAT16ENTRYLONG));
						if(pentrylong)
						{
							memset(pentrylong,0,sizeof(FAT16ENTRYLONG));
							memcpy(pentrylong,(PFAT16ENTRY)&sectorBuffer[x * sizeof(FAT16ENTRY)],sizeof(FAT16ENTRY));
							pentrylong->plongfileName = NULL;

							check = k_dos_get_name(pentrylong,NULL);

							if(check > 0)
							{
								k_debug_long("k_dos_get_name check:",check);
								//fileOffset = ((pentrylong->starting_cluster - 2) * 16) + (8 + (2 * 240)  + ( ((512 * 32) + (512 - 1)) / 512 ));
								//k_debug_long("fileOffset:",fileOffset);
							}
							//print_file_info((PFAT16ENTRY)pentrylong);

							if(pentrylong->plongfileName && pentrylong->plongfileName!=(LPSTR)0xffffffff)
							{
								k_nodelist_addtolist(plist,PFXNODE_FILE_PATH_TYPE,pentrylong->plongfileName,pentrylong);
								//k_debug_pointer("k_read_dos_directory dealloc pentrylong1:",pentrylong);
								//k_mem_deallocate_heap(pentrylong->plongfileName);
								//pentrylong->plongfileName = NULL;
								//k_mem_deallocate_heap(pentrylong);
							}
							else
							{
								//k_debug_pointer("k_read_dos_directory dealloc pentrylong2:",pentrylong);
								k_mem_deallocate_heap(pentrylong);
							}
						}
					}
				}
				rootDirSectors+=512;
			}
		}
	}



	return plist;
}

ULONG getDeviceClusterLocationByIndex(PFXDOSDEVICE pfxdosDevice,ULONG starting_cluster)
{
	ULONG rootDirSectors = 0L;
	ULONG cluster2SectorNumber = 0L;
	ULONG clusterSectorNumber = 0L;
	ULONG clusterByteNumber = 0L;

	ULONG firstDataSector = 0L;

	/*
			k_debug_integer("***fxdosDevice bytes_per_sector:",(INT)pfxdosDevice->bootSector.bytes_per_sector);
			k_debug_integer("***fxdosDevice sectors_per_cluster:",(INT)pfxdosDevice->bootSector.sectors_per_cluster);
			k_debug_integer("***fxdosDevice reserved_sector_count:",(INT)pfxdosDevice->bootSector.reserved_sector_count);
			k_debug_integer("***fxdosDevice table_count:",(INT)pfxdosDevice->bootSector.fat_table_count);
			k_debug_integer("***fxdosDevice root_entry_count:",(INT)pfxdosDevice->bootSector.root_entry_count);
			k_debug_integer("***fxdosDevice total_sectors_16:",(INT)pfxdosDevice->bootSector.total_sectors_16);
			k_debug_integer("***fxdosDevice media_type:",(INT)pfxdosDevice->bootSector.media_type);
			k_debug_integer("***fxdosDevice sectors_per_fat:",(INT)pfxdosDevice->bootSector.sectors_per_fat);
			k_debug_integer("***fxdosDevice sectors_per_track:",(INT)pfxdosDevice->bootSector.sectors_per_track);
			k_debug_integer("***fxdosDevice head_side_count:",(INT)pfxdosDevice->bootSector.head_side_count);
			k_debug_integer("***fxdosDevice hidden_sector_count:",(INT)pfxdosDevice->bootSector.hidden_sector_count);
			k_debug_integer("***fxdosDevice total_sectors_32:",(INT)pfxdosDevice->bootSector.total_sectors_32);
	 */



	firstDataSector = pfxdosDevice->bootSector.reserved_sector_count + (pfxdosDevice->bootSector.fat_table_count * 512) + pfxdosDevice->rootDirSectors;

	k_debug_long("firstDataSector:",firstDataSector);

	clusterSectorNumber = ((starting_cluster - 2) * pfxdosDevice->sectors_per_cluster) + firstDataSector;

	k_debug_long("Cluster Offset Calculated:",clusterSectorNumber);

	k_debug_long("FAT Entry:",((UINT*)(&pfxdosDevice->fileAllocationTable))[starting_cluster]);

	rootDirSectors = (pfxdosDevice->bootSector.reserved_sector_count * pfxdosDevice->root_entry_count)  / pfxdosDevice->bootSector.bytes_per_sector;


	cluster2SectorNumber =  8 + (2 * 240) + rootDirSectors;
	clusterSectorNumber =  ((starting_cluster - 2) * 16) + cluster2SectorNumber;
	k_debug_long("clusterSectorNumber:",clusterSectorNumber);

	clusterByteNumber = clusterSectorNumber * 512;

	return clusterByteNumber;
}


ULONG getClusterLocationByIndex(ULONG starting_cluster)
{
	ULONG rootDirSectors;
	ULONG cluster2SectorNumber;
	ULONG clusterSectorNumber;
	ULONG clusterByteNumber = 0;

	rootDirSectors = (32 * 512)  / 512;

	cluster2SectorNumber = 8 + (2 * 240) + rootDirSectors;
	clusterSectorNumber =  ((starting_cluster - 2) * 16) + cluster2SectorNumber;
	clusterByteNumber = clusterSectorNumber * 512;

	return clusterByteNumber;
}


VOID k_GetDirectory(VOID)
{
	PFXZERPOPAGE zp = k_getZeroPage();

	k_debug_integer("k_GetDirectory:Id:",zp->kernelFunctionCallId);
	k_debug_integer("k_GetDirectory:Index:",zp->kernelFunctionCallBank);
	k_debug_strings("k_GetDirectory:Parameter:",(LPSTR)zp->kernelFunctionCallParameter);

	zp->kernelFunctionCallReturn = k_mem_allocate_heap(16);

	strcpy((LPSTR)zp->kernelFunctionCallReturn,"Hello!");
}


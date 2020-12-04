
#include "DRIVER_B2SDCard.h"

#pragma section CODE=B2SDCard,offset $08:A000

static CHAR sd_card_dir_string[] =
{ 0x2F, 0x2A, 0x00 };
static UINT8 buf[64];

static UCHAR sectorBuffer[512];


static BOOL _mount_lock = FALSE;
static DISKINFO lastdiskInfo;
static PDISKINFO pdiskCache = NULL;

#ifdef USE_FX256_FMX

FX_DEVICE_DRIVER DRIVER_B2SDCard = {
										"DRIVER_B2SDCard\0",
										"v1.0.0\0",
										"B\0",
										"2\0",
										DRIVER_TYPE_SDCARD,
										NULL,
										NULL,
										NULL,
										NULL
								   };


#else

FX_DEVICE_DRIVER DRIVER_B2SDCard = {
										"DRIVER_B2SDCard\0",
										"v1.0.0\0",
										"B\0",
										"2\0",
										DRIVER_TYPE_SDCARD,
										k_sd_initialize,
										NULL,
										NULL,
										NULL
								   };


BOOL k_pc_initialize(void)
{
	return FALSE;
}


BOOL k_sd_initialize(void)
{
	BOOL retCode = FALSE;
	UCHAR data = 0;
	UCHAR status = 0;
	int abort = 0;
	//k_sd_init();
	//k_sd_ismounted();
	k_debug_string("k_sd_initialize::reset...\r\n");

	k_sd_mount();

	SDCARD_PRSNT_MNT[0] = 0x00;

	SDCARD_CMD[0] = 0x05;

	for (abort = 0; abort < 35; abort++)
		k_sd_cmd_delay();

	k_debug_string("k_sd_initialize::init s1...\r\n");

	SDCARD_CMD[0] = 0x06;
	k_sd_cmd_delay();
	SDCARD_DATA[0] = 0xA8;


	k_debug_string("k_sd_initialize::init s1a...\r\n");

	k_sd_dta_delay();
	k_sd_dta_delay();
	k_sd_dta_delay();

	k_debug_string("k_sd_initialize::init s1b...\r\n");

	data = SDCARD_DATA[0];

	k_debug_string("k_sd_initialize::init s1c...\r\n");

	k_sd_cmd_delay();

	k_debug_string("k_sd_initialize::init s2...\r\n");

	SDCARD_CMD[0] = CH_CMD_SET_MODE;
	k_sd_cmd_delay();
	k_sd_cmd_delay();
	k_sd_cmd_delay();



	SDCARD_DATA[0] = 0x03; // Mode 3 - SDCARD

	k_debug_string("k_sd_initialize::read..\r\n");

	retCode = TRUE;
	data = 0;
	while (data != 0x51)
	{
		abort++;
		if (abort > 100)
		{
			retCode = FALSE;
			break;
		}
		k_sd_dta_delay();

		data = SDCARD_DATA[0];
		k_debug_integer("k_sd_initialize::SDCARD_DATA:", data);
	}


	abort = k_read_disk_sector(sectorBuffer, 1, 1);
	//SDCARD_CMD[0] = 0x01;
	//k_sd_cmd_delay();
	//k_debug_integer("k_sd_initialize::version:",SDCARD_DATA[0]);

	//SDCARD_CMD[0] = CH_CMD_GET_STATUS;
	//status = k_sd_waitforirq();
	//k_debug_integer("k_sd_initialize::CH_CMD_GET_STATUS:",status);

	k_debug_string("k_sd_initialize::exit...\r\n");

	return retCode;
}

UINT8 k_sd_reset(VOID)
{
	UINT8	s;

	k_debug_string("***k_sd_reset 1\r\n");

	xWriteCH376Cmd( CMD_RESET_ALL );
	s = xReadCH376Data( );
	xEndCH376Cmd( );

	k_debug_string("***k_sd_reset 2\r\n");

	k_sd_cmd_delay();
	k_sd_cmd_delay();
	k_sd_cmd_delay();
	k_sd_cmd_delay();
	k_sd_cmd_delay();

	k_sd_initialize();

	return( s );
}


UINT8 k_sd_status(VOID)
{
	UINT8	s;

	xWriteCH376Cmd( CMD01_GET_STATUS );
	s = xReadCH376Data( );
	xEndCH376Cmd( );
	return( s );
}

BOOL k_sd_ispresent(void)
{
	UCHAR stat = 0;
	BOOL retCode = FALSE;

	stat = SDCARD_STAT[0]; //  BIT[0] = Cd, BIT[1] = WP
	k_debug_integer("k_sd_initialize::SDCARD_STAT:", stat);

	if (stat & 0x01)
	{
		retCode = FALSE;
		SDCARD_PRSNT_MNT[0] = 0x00;
	}
	else
	{
		SDCARD_PRSNT_MNT[0] = 0x01;
		retCode = TRUE;
	}


	if(!retCode)
	{
		pdiskCache = NULL;
		k_sd_reset();
	}


	k_debug_integer("k_sd_ispresent:", retCode);

	return retCode;
}

UCHAR k_sd_waitforirq(void)
{
	UINT abort = 0xFF;
	UCHAR status = 0x80;

	//asm SEI;

	while (status == 0x80)
	{
		status = SDCARD_DATA[0];
		//k_debug_integer("k_sd_waitforirq::wait:", status);

		abort--;
		if(abort < 1)
		{
			return 0x80;
		}
	}

	k_sd_cmd_delay();
	k_sd_cmd_delay();

	SDCARD_CMD[0] = CH_CMD_GET_STATUS;

	k_sd_cmd_delay();

	status = SDCARD_DATA[0];

	//k_debug_integer("k_sd_waitforirq::status:", status);

	//asm cli;

	return status;
}

BOOL k_sd_mount(void)
{
	int i = 0;
	int abort = 0;
	UCHAR status = 0x00;
	UCHAR data[37];
	BOOL retCode = FALSE;

	if(_mount_lock)
		return TRUE;

	if(k_sd_ispresent())
	{
		k_debug_string("k_sd_mount::card detected\r\n");
		//if(SDCARD_PRSNT_MNT[0] & 0x05 != 0x05)
		if (SDCARD_PRSNT_MNT[0] == 0x01)
		{
			k_debug_string("k_sd_mount::card mounting..\r\n");

			/// SDCARD_PRSNT_MNT[0] = 0x01;//      ; Bit[0] = Card Present

			while (status != CH376S_STAT_SUCCESS) //TRY_MOUNT_AGAIN
			{
				SDCARD_CMD[0] = CH_CMD_DISK_MOUNT;
				k_sd_cmd_delay();

				k_sd_cmd_delay();
				k_sd_cmd_delay();

				status = k_sd_waitforirq();

				if (status == CH376S_STAT_SUCCESS)
				{

					/*
					 SDCARD_CMD[0] = CH_CMD_RD_DATA0;
					 k_sd_cmd_delay();
					 k_debug_hex("k_sd_read_dir::k_sd_mount-size:",SDCARD_DATA[0]);

					 for(i=0;i<36;i++)
					 {
					 data[i] = SDCARD_DATA[0];
					 k_sd_dta_delay();
					 k_debug_hexchar("k_sd_read_dir::k_sd_mount:",data[i]);
					 }
					 data[36] = 0;

					 k_debug_string("k_sd_mount::mount-name:");
					 k_debug_string(data);
					 k_debug_string("\r\n");
					 */
				}

				//INY
				//CPY #$00F0
				//BNE TRY_MOUNT_AGAIN
				//JMP SDCARD_ERROR_MOUNT
				abort++;
				if (abort > 0x03FF) // 0x03FF
				{
					k_debug_string("k_sd_mount::card mount failed\r\n");
					k_debug_hex("k_sd_mount::status:",status);
					return FALSE;
				}
			}

			k_debug_integer("k_sd_mount::abort:",abort);
		}

		//;              LDA SDCARD_PRSNT_MNT        ; Load Presence Status
		//;              AND #$05
		//;              CMP #$05
		//;              BEQ ISDOS_MOUNTED

		SDCARD_PRSNT_MNT[0] &= SDCARD_PRSNT_MNTED;
		k_debug_string("k_sd_mount::card mounted\r\n");
		retCode = TRUE;
	}
	else
	{
		SDCARD_PRSNT_MNT[0] = SDCARD_PRSNT_NO_CARD;
	}

	return retCode;
}

BOOL k_sd_openfile(LPCHAR filename)
{
	UCHAR status = 0x00;
	BOOL retCode = FALSE;

	k_debug_string("k_sd_openfile::filename:");
	k_debug_string(filename);
	k_debug_string("\r\n");

	k_sd_setfilename(filename);
	k_sd_cmd_delay();
	SDCARD_CMD[0] = CH_CMD_FILE_OPEN;

	status = k_sd_waitforirq();

	k_debug_integer("k_sd_openfile::result:", status);

	//retCode = (status == 0x14);
	retCode = (status !=USB_INT_DISK_ERR);


	return retCode;
}

BOOL k_sd_setfilename(LPCHAR filename)
{
	int i = 0;
	BOOL bRet = FALSE;
	LPCHAR fptr = filename;

	//k_debug_string("k_sd_setfilename::enter\r\n");

	if (filename != NULL)
	{
		SDCARD_CMD[0] = CH_CMD_SET_FILENAME;
		k_sd_cmd_delay();

		//k_debug_string("k_sd_setfilename::send\r\n");

		while (*fptr)
		{
			SDCARD_DATA[0] = *fptr;
			k_sd_dta_delay();
			fptr++;
		}
		SDCARD_DATA[0] = 0;
		k_sd_dta_delay();

		bRet = TRUE;
	}

	//k_debug_integer("k_sd_setfilename::result:", bRet);

	return bRet;
}

/*
 	nodelist = k_nodelist_init(1,"node1",NULL);

	newnode = k_nodelist_create(2,"node2",NULL,NULL,NULL);
	k_nodelist_add(nodelist,newnode);
	newnode = k_nodelist_create(3,"node3",NULL,NULL,NULL);
	k_nodelist_add(nodelist,newnode);
	newnode = k_nodelist_create(34,"node4",NULL,NULL,NULL);
	k_nodelist_add(nodelist,newnode);

	k_debug_nodelist(nodelist);

*/

PFXNODE k_sd_read_dir(void)
{
	PFXNODE pnDirList = NULL;
	PFXNODE node  = NULL;
	PFILEINFO pfi = NULL;
	UCHAR rsize = 0;
	FX_FAT_DIR_INFO FAR *direntry = NULL;
	//FAT_DIR_INFO direntry;
	LPCHAR pdirentry = NULL;
	UCHAR data = 0;
	UCHAR status = 0x000;
	int i = 0;

	k_debug_integer("k_sd_read_dir::enter:sizeof(FAT_DIR_INFO):",sizeof(FAT_DIR_INFO));

	k_sd_read_vol(NULL);

	if(k_sd_ispresent() && k_sd_mount())
	{
		if(k_sd_openfile(sd_card_dir_string))
		{
			k_debug_string("k_sd_read_dir::k_sd_openfile:success\r\n");

			direntry = k_mem_allocate_heap(sizeof(FAT_DIR_INFO));

			status = CH376S_STAT_DSK_RD;
			while (status == CH376S_STAT_DSK_RD || status == 0x51)
			//while (status != ERR_MISS_FILE)
			{
				SDCARD_CMD[0] = CH_CMD_RD_DATA0;
				k_sd_cmd_delay();

				rsize = SDCARD_DATA[0];
				k_debug_hex("k_sd_read_dir::k_sd_openfile:read:",data);

				//k_sd_cmd_delay();

				pdirentry = (LPCHAR) direntry;

				for (i = 0; i < rsize; i++)
				{
					k_sd_dta_delay();
					data = SDCARD_DATA[0];
					//k_debug_char("k_sd_read_dir::entrydata:",data);
					*pdirentry = data;
					pdirentry++;
				}

				k_debug_string("k_sd_read_dir::FAT_DIR_INFO.NAME:");
				k_debug_nstring(direntry->DIR_Name, 11);
				k_debug_string("\r\n");

				if(pnDirList == NULL)
				{
					k_debug_string("k_sd_read_dir::pnDirList\r\n");
					pnDirList = k_nodelist_init(direntry->DIR_Attr,"dos",(LPVOID)_k_dos_alloc_fileinfo(direntry));
				}
				else
				{
					node = k_nodelist_create(direntry->DIR_Attr,"dos",(LPVOID)_k_dos_alloc_fileinfo(direntry),NULL,NULL);
					k_debug_pointer("k_sd_read_dir::node:",node);
					if(node!=NULL)
						k_nodelist_add(pnDirList,node);
				}

				/*
				if (direntry.DIR_Attr == ATTR_VOLUME_ID)
				{
					k_debug_string("** VOLUME **\r\n");
				}
				*/
				//k_debug_integer("k_sd_read_dir::FAT_DIR_INFO.ATTR:",direntry.DIR_Attr);
				//k_debug_integer("k_sd_read_dir::FAT_DIR_INFO.NTRES:",direntry.DIR_NTRes);
				//k_debug_integer("k_sd_read_dir::FAT_DIR_INFO.SIZE:",direntry.DIR_FileSize);

				k_sd_cmd_delay();

				SDCARD_CMD[0] = CH_CMD_FILE_ENUM_GO;
				k_sd_cmd_delay();
				status = k_sd_waitforirq();
				k_debug_hex("k_sd_read_dir::CH_CMD_FILE_ENUM_GO:status:",status);

				if(status == 0)
				{
					SDCARD_CMD[0] = CH_CMD_FILE_ENUM_GO;
					k_sd_cmd_delay();
					status = k_sd_waitforirq();
					k_debug_hex("k_sd_read_dir::CH_CMD_FILE_ENUM_GO:retry status:",status);
				}

			}

			k_sd_close(0);
		}
	}

	return pnDirList;
}

void k_sd_read_dir_OLD(void)
{
	PFXNODE nodesDirList = NULL;

	FAT_DIR_INFO direntry;
	LPCHAR pdirentry = NULL;
	UCHAR data = 0;
	UCHAR status = 0x000;
	int i = 0;

	//k_debug_string("k_sd_read_dir::enter\r\n");

	if (k_sd_mount())
	{
		if (k_sd_openfile(sd_card_dir_string))
		{
			//k_debug_string("k_sd_read_dir::k_sd_openfile:success\r\n");
			;
			status = CH376S_STAT_DSK_RD;
			while (status == CH376S_STAT_DSK_RD || status == 0x51)
			{
				SDCARD_CMD[0] = CH_CMD_RD_DATA0;
				k_sd_cmd_delay();

				data = SDCARD_DATA[0];
				//k_debug_hex("k_sd_read_dir::k_sd_openfile:read:",data);

				//k_sd_cmd_delay();

				pdirentry = (LPCHAR) &direntry;

				for (i = 0; i < sizeof(DIRENTRY); i++)
				{
					k_sd_dta_delay();
					data = SDCARD_DATA[0];
					//k_debug_char("k_sd_read_dir::entrydata:",data);
					*pdirentry = data;
					pdirentry++;
				}

				k_debug_string("k_sd_read_dir::FAT_DIR_INFO.NAME:");
				k_debug_nstring(direntry.DIR_Name, 11);
				//k_debug_string(pdirentry);
				k_debug_string("\r\n");

				if (direntry.DIR_Attr == ATTR_VOLUME_ID)
				{
					k_debug_string("** VOLUME **\r\n");
				}

				k_debug_integer("k_sd_read_dir::FAT_DIR_INFO.ATTR:",direntry.DIR_Attr);
				//k_debug_integer("k_sd_read_dir::FAT_DIR_INFO.NTRES:",direntry.DIR_NTRes);
				k_debug_integer("k_sd_read_dir::FAT_DIR_INFO.SIZE:",direntry.DIR_FileSize);

				k_sd_cmd_delay();

				SDCARD_CMD[0] = CH_CMD_FILE_ENUM_GO;
				status = k_sd_waitforirq();
				//k_debug_hex("k_sd_read_dir::CH_CMD_FILE_ENUM_GO:status:",status);
			}

			k_sd_close(0);
		}
	}
}

void k_sd_search_dir(LPCHAR searchString)
{
	FAT_DIR_INFO direntry;
	LPCHAR pdirentry = NULL;
	UCHAR data = 0;
	UCHAR status = 0x000;
	int i = 0;

	//k_debug_string("k_sd_read_dir::enter\r\n");

	if (k_sd_mount())
	{
		if (k_sd_openfile(searchString))
		{
			//k_debug_string("k_sd_read_dir::k_sd_openfile:success\r\n");
			;
			status = CH376S_STAT_DSK_RD;
			while (status == CH376S_STAT_DSK_RD || status == 0x51)
			{
				SDCARD_CMD[0] = CH_CMD_RD_DATA0;
				k_sd_cmd_delay();

				data = SDCARD_DATA[0];
				//k_debug_hex("k_sd_read_dir::k_sd_openfile:read:",data);

				//k_sd_cmd_delay();

				pdirentry = (LPCHAR) &direntry;

				for (i = 0; i < sizeof(DIRENTRY); i++)
				{
					k_sd_dta_delay();
					data = SDCARD_DATA[0];
					//k_debug_char("k_sd_read_dir::entrydata:",data);
					*pdirentry = data;
					pdirentry++;
				}

				k_debug_string("k_sd_read_dir::FAT_DIR_INFO.NAME:");
				k_debug_nstring(direntry.DIR_Name, 11);
				//k_debug_string(pdirentry);
				k_debug_string("\r\n");

				if (direntry.DIR_Attr == ATTR_VOLUME_ID)
				{
					k_debug_string("** VOLUME **\r\n");
				}

				k_debug_integer("k_sd_read_dir::FAT_DIR_INFO.ATTR:",direntry.DIR_Attr);
				//k_debug_integer("k_sd_read_dir::FAT_DIR_INFO.NTRES:",direntry.DIR_NTRes);
				k_debug_integer("k_sd_read_dir::FAT_DIR_INFO.SIZE:",direntry.DIR_FileSize);

				k_sd_cmd_delay();

				SDCARD_CMD[0] = CH_CMD_FILE_ENUM_GO;
				status = k_sd_waitforirq();
				//k_debug_hex("k_sd_read_dir::CH_CMD_FILE_ENUM_GO:status:",status);
			}

			k_sd_close(0);
		}
	}
}


UINT16 k_read_disk_sector(LPCHAR buf, UINT32 iLbaStart, UINT8 iSectorCount)
{
	UINT16 size = 0;
	UINT8  err;
	UINT16 mBlockCount;

	UINT8  s = USB_INT_DISK_READ;

	k_debug_long("k_read_disk_sector::iLbaStart:",iLbaStart);

	for (err = 0; err != 3; ++err)
	{
		xWriteCH376Cmd(CMD5H_DISK_READ);
		k_sd_cmd_delay();
		k_sd_cmd_delay();
		xWriteCH376Data((UINT8) iLbaStart);
		k_sd_dta_delay();
		xWriteCH376Data((UINT8) ((UINT16) iLbaStart >> 8));
		k_sd_dta_delay();
		xWriteCH376Data((UINT8) (iLbaStart >> 16));
		k_sd_dta_delay();
		xWriteCH376Data((UINT8) (iLbaStart >> 24));
		k_sd_dta_delay();
		xWriteCH376Data(iSectorCount);
		k_sd_dta_delay();
		xEndCH376Cmd();

		s = USB_INT_DISK_READ;

		for (mBlockCount = iSectorCount * DEF_SECTOR_SIZE / CH376_DAT_BLOCK_LEN;mBlockCount != 0; --mBlockCount)
		{
			k_debug_integer("k_read_disk_sector::mBlockCount:",mBlockCount);

			s = k_sd_waitforirq();

			//s = USB_INT_DISK_READ;
			if (s == USB_INT_DISK_READ)
			{
				s = k_sd_read_block(buf);
				xWriteCH376Cmd( CMD0H_DISK_RD_GO);
				xEndCH376Cmd();
				buf += s;
				size += s;
				k_debug_integer("k_read_disk_sector::read:size:",size);
			}
			else
			{
				k_debug_integer("k_read_disk_sector::k_sd_waitforirq:",s);
				break;
			}
			s = k_sd_waitforirq();
		}

		if (mBlockCount == 0)
		{
			s = k_sd_waitforirq();
			if (s == USB_INT_SUCCESS)
				return (size);
		}
		if (s == USB_INT_DISCONNECT)
			return (size);
		k_sd_disk_req_sense();
	}
	return (size);
}

UINT8 k_sd_cmd_and_irq( UINT8 mCmd )
{
	xWriteCH376Cmd( mCmd );
	k_sd_cmd_delay();
	xEndCH376Cmd( );
	return( k_sd_waitforirq( ) );
}

UINT8 k_sd_disk_req_sense( void )
{
	UINT8	s;
	mDelaymS( 5 );
	s = k_sd_cmd_and_irq( CMD0H_DISK_R_SENSE );
	mDelaymS( 5 );
	return( s );
}

BOOL k_sd_read_vol(PDISKINFO pdiskInfo)
{

	BOOL bRet = FALSE;
	//UINT size = 0;
	UINT   index = 0;
	BOOL   cmd = FALSE;
	UINT16 read = 0;
	//fat_BS_t direntry;
	//LPCHAR pdirentry = (LPCHAR) &direntry;
	UCHAR data = 0;
	//UCHAR status = 0x000;
	LPCHAR contents = NULL;
	//LPCHAR test = "This is a test!\r\n";
	int i = 0;

	k_debug_string("k_sd_read_dir::enter\r\n");

	//asm sei;

	k_sd_reset();

	//if(k_sd_ispresent() && k_sd_mount())
	if(k_sd_mount())
	{
		_mount_lock = TRUE;

		k_sd_openfile("\0");

		if (k_sd_openfile(CONST_FXINFO_FILE))
		{

			k_debug_string("k_sd_read_vol::opened\r\n");

			//k_sd_byte_locate(0L);

			if(pdiskInfo!=NULL)
			{
				memset(pdiskInfo,0,sizeof(DISKINFO));


				k_sd_byte_read((LPCHAR)pdiskInfo,sizeof(DISKINFO),&read);
				if(read == 0)
				{
					strcpy(pdiskInfo->stgName,"NO NAME");
				}
				k_debug_integer("k_sd_read_vol::k_sd_byte_read:read:", read);
				k_debug_string("VOLUME NAME:");
				k_debug_nstring(pdiskInfo->stgName, 32 );
				k_debug_string("\r\n");

				memcpy(&lastdiskInfo,pdiskInfo,sizeof(DISKINFO));
				pdiskCache = &lastdiskInfo;

				bRet = TRUE;
			}

			k_sd_close(CLOSE_NOUPDATE);
		}

		k_debug_string("k_sd_read_vol::exit\r\n");

		_mount_lock = FALSE;
	}
	else
	{
		pdiskCache = NULL;
	}

	//asm cli;

	return bRet;
}

BOOL k_sd_write_file(LPCHAR fileName,LPVOID fileBuffer,UINT fileSize)
{

	BOOL bRet = FALSE;
	UINT   index = 0;
	BOOL   cmd = FALSE;
	UINT16 wrote = 0;
	int i = 0;

	k_debug_integer("k_sd_write_file::enter:",fileSize);

	//asm sei;

	k_sd_reset();

	if(fileName && k_sd_ispresent() && k_sd_mount())
	{
		k_sd_openfile("\0");

		k_sd_delete(fileName);

		k_sd_reset();

		k_sd_openfile("\0");
		if(k_sd_createfile(fileName))
		{
			if (k_sd_openfile(fileName))
			{
				k_sd_cmd_delay();
				k_debug_string("k_sd_write_file::opened\r\n");
				if(fileBuffer!=NULL)
				{
					k_sd_byte_write((LPCHAR)fileBuffer,fileSize,&wrote);
					k_debug_integer("k_sd_write_file::k_sd_byte_write:wrote:", wrote);
					bRet = (wrote == fileSize);
				}
				k_sd_close(TRUE);
			}
		}
		k_debug_string("k_sd_write_file::exit\r\n");
	}

	//asm cli;

	return bRet;
}

BOOL k_sd_read_file(LPCHAR fileName,LPVOID fileBuffer,UINT fileSize)
{

	BOOL bRet = FALSE;
	UINT   index = 0;
	BOOL   cmd = FALSE;
	UINT16 read = 0;
	UCHAR data = 0;
	LPCHAR contents = NULL;
	int i = 0;

	k_debug_string("k_sd_read_file::enter\r\n");

	//asm sei;

	k_sd_reset();

	if(k_sd_ispresent() && k_sd_mount())
	{
		if (k_sd_openfile(CONST_FXINFO_FILE))
		{

			k_debug_string("k_sd_read_file::opened\r\n");

			//k_sd_byte_locate(0L);

			if(fileBuffer!=NULL)
			{
				memset(fileBuffer,0,fileSize);
				k_sd_byte_read((LPCHAR)fileBuffer,fileSize,&read);


				k_debug_integer("k_sd_read_file::k_sd_byte_read:read:", read);

				bRet = TRUE;
			}

			k_sd_close(CLOSE_NOUPDATE);
		}

		k_debug_string("k_sd_read_file::exit\r\n");
	}

	//asm cli;

	return bRet;
}

BOOL k_sd_create_dir(LPCHAR dirName)
{
	UCHAR status = 0;
	BOOL bRet = FALSE;

	if (k_sd_setfilename(dirName))
	{
		k_sd_sendcmd( CMD0H_DIR_CREATE);
		status = k_sd_waitforirq();
		if (status == USB_INT_SUCCESS)
		{
			bRet = TRUE;
		}
	}

	return bRet;
}

BOOL k_sd_getdirinfo(P_FAT_DIR_INFO pdirName)
{
	int i = 0;
	UCHAR status = 0;
	UCHAR data = 0;
	BOOL bRet = FALSE;
	LPCHAR ptr = (LPCHAR) pdirName;

	if (k_sd_openfile("/NEWDIR"))
	{
		k_sd_sendcmd( CMD1H_DIR_INFO_READ);
		k_sd_senddta(0xFF);
		status = k_sd_waitforirq();
		k_debug_hex("k_sd_getdirinfo::CMD1H_DIR_INFO_READ:read:", status);
		if (status == USB_INT_SUCCESS)
		{
			k_sd_sendcmd( CH_CMD_RD_DATA0);

			//data = SDCARD_DATA[0];
			//k_debug_hex("k_sd_getdirinfo::read:",data);

			//k_sd_cmd_delay();

			for (i = 0; i < sizeof(FAT_DIR_INFO); i++)
			{
				k_sd_dta_delay();
				data = SDCARD_DATA[0];
				k_debug_char("k_sd_getdirinfo::entrydata:", data);
				*ptr = data;
				ptr++;
			}

			bRet = TRUE;
		}

		k_sd_close(FALSE);
	}
	return bRet;
}

BOOL k_sd_delete(LPCHAR dirOrFileName)
{
	UCHAR status = 0;
	BOOL bRet = FALSE;

	k_debug_string("k_sd_delete:enter\r\n");

	if (k_sd_setfilename(dirOrFileName))
	{
		k_sd_sendcmd( CMD0H_FILE_ERASE);
		status = k_sd_waitforirq();
		if (status == USB_INT_SUCCESS)
		{
			bRet = TRUE;
		}
		//k_sd_close(TRUE);
	}


	k_debug_integer("k_sd_delete:exit:",bRet);

	return bRet;
}

BOOL k_sd_close(UCHAR update)
{
	UCHAR status = 0;
	BOOL bRet = FALSE;

	k_debug_string("k_sd_close\r\n");

	k_sd_sendcmd( CMD1H_FILE_CLOSE);
	k_sd_senddta(update);

	status = k_sd_waitforirq();
	if (status == USB_INT_SUCCESS)
	{
		bRet = TRUE;
	}

	return bRet;
}

void k_sd_sendcmd(UCHAR command)
{
	SDCARD_CMD[0] = command;
	k_sd_cmd_delay();
}

void k_sd_senddta(UCHAR data)
{
	SDCARD_DATA[0] = data;
	k_sd_dta_delay();
}

void k_sd_cmd_delay(void)
{
#asm
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
#endasm
}

void k_sd_dta_delay(void)
{
#asm
	NOP
	NOP
	NOP
	NOP
	NOP
#endasm
}


UINT8 k_sd_createfile( LPCHAR name )
{
	if(name)
	{
		k_debug_string("k_sd_createfile:name:");
		k_debug_string(name);
		k_debug_string("\r\n");

		k_sd_setfilename( name );
	}
	return( k_sd_cmd_and_irq( CMD0H_FILE_CREATE ) );
}

UINT8	k_sd_read_block( PUINT8 buf )
{
	UINT8	s, l;
	xWriteCH376Cmd( CMD01_RD_USB_DATA0 );
	s = l = xReadCH376Data( );
	if ( l ) {
		do {
			*buf = xReadCH376Data( );
			buf ++;
		} while ( -- l );
	}
	xEndCH376Cmd( );
	return( s );
}


void k_sd_write_host_block( PUINT8 buf, UINT8 len )
{
	xWriteCH376Cmd( CMD10_WR_HOST_DATA );
	xWriteCH376Data( len );
	if ( len ) {
		do {
			xWriteCH376Data( *buf );
			buf ++;
		} while ( -- len );
	}
	xEndCH376Cmd( );
}

void k_sd_write_ofs_blocks( PUINT8 buf, UINT8 ofs, UINT8 len )
{
	xWriteCH376Cmd( CMD20_WR_OFS_DATA );
	xWriteCH376Data( ofs );
	xWriteCH376Data( len );
	if ( len ) {
		do {
			xWriteCH376Data( *buf );
			buf ++;
		} while ( -- len );
	}
	xEndCH376Cmd( );
}

UINT8 k_sd_byte_locate( UINT32 offset )
{
	xWriteCH376Cmd( CMD4H_BYTE_LOCATE );
	xWriteCH376Data( (UINT8)offset );
	xWriteCH376Data( (UINT8)((UINT16)offset>>8) );
	xWriteCH376Data( (UINT8)(offset>>16) );
	xWriteCH376Data( (UINT8)(offset>>24) );
	xEndCH376Cmd( );
	return( Wait376Interrupt( ) );
}

/*
UINT8 k_sd_byte_read( PUINT8 buf, UINT16 ReqCount, PUINT16 RealCount )
{
	UINT8	s;

	k_debug_integer("k_sd_byte_read:",ReqCount);

	xWriteCH376Cmd( CMD2H_BYTE_READ );
	xWriteCH376Data( (UINT8)ReqCount );
	xWriteCH376Data( (UINT8)(ReqCount>>8) );
	xEndCH376Cmd( );
	if ( RealCount ) *RealCount = 0;
	while ( 1 )
	{
		s = k_sd_waitforirq( );
		k_debug_integer("k_sd_byte_read:status:",s);
		if ( s == USB_INT_DISK_READ || s == USB_INT_SUCCESS)
		{
			s = k_sd_read_block( buf );
			xWriteCH376Cmd( CMD0H_BYTE_RD_GO );
			xEndCH376Cmd( );
			buf += s;
			if ( RealCount )
				*RealCount += s;

			k_debug_integer("k_sd_byte_read:RealCount:",*RealCount);
		}
		//else if ( s == USB_INT_SUCCESS ) return( s );
		else return( s );
	}
}
*/
UINT8 k_sd_byte_read( PUINT8 buf, UINT16 ReqCount, PUINT16 RealCount )
{
	UINT8	s;

	k_debug_integer("k_sd_byte_read:ReqCount:",ReqCount);

	k_debug_hex("k_sd_byte_read:ReqCount L:",(UINT8)ReqCount );
	k_debug_hex("k_sd_byte_read:ReqCount H:",(UINT8)(ReqCount>>8));

	xWriteCH376Cmd( CMD2H_BYTE_READ );
	xWriteCH376Data( (UINT8)ReqCount );
	xWriteCH376Data( (UINT8)(ReqCount>>8) );
	xEndCH376Cmd( );
	if ( RealCount )
		*RealCount = 0;

	s = k_sd_waitforirq( );
	k_debug_integer("k_sd_byte_read:INITIAL:",s);
	if(s == USB_INT_SUCCESS || s == USB_INT_DISK_READ)
	{
		k_debug_integer("k_sd_byte_read:STATUS:",s);

		s = USB_INT_DISK_READ;
		while(s == USB_INT_DISK_READ)
		{
			s = k_sd_read_block( buf );
			buf += s;

			if ( RealCount )
			{
				*RealCount += s;
			}
			k_debug_integer("k_sd_byte_read:READ:",s);

			xWriteCH376Cmd( CMD0H_BYTE_RD_GO );
			xEndCH376Cmd( );

			s = k_sd_waitforirq();
		}
	}

	return s;
}

/*
UINT8 k_sd_byte_write( LPCHAR buf, UINT16 ReqCount, PUINT16 RealCount )
{
	UINT8	s;

	k_debug_integer("k_sd_byte_write:",ReqCount);

	xWriteCH376Cmd( CMD2H_BYTE_WRITE );
	xWriteCH376Data( (UINT8)ReqCount );
	xWriteCH376Data( (UINT8)(ReqCount>>8) );
	xEndCH376Cmd( );
	if ( RealCount ) *RealCount = 0;
	while ( 1 )
	{
		s = k_sd_waitforirq( );
		k_debug_integer("k_sd_byte_write:status1:",s);
		//if ( s == USB_INT_DISK_WRITE )
		if ( s == USB_INT_SUCCESS ||  s == USB_INT_DISK_WRITE)
		{
			s = k_sd_write_req_block( buf );

			xWriteCH376Cmd( CMD0H_BYTE_WR_GO );
			xEndCH376Cmd( );
			buf += s;

			if ( RealCount )
			{
				*RealCount += s;
				if(*RealCount == ReqCount)
					return s;
			}
			k_debug_integer("k_sd_byte_write:status2:",s);
		}
		//e-lse if ( s == USB_INT_SUCCESS ) return( s );
		else return( s );
	}
}
*/

UINT8 k_sd_byte_write( LPCHAR buf, UINT16 ReqCount, PUINT16 RealCount )
{
	UINT8	s;

	k_debug_integer("k_sd_byte_write:ReqCount:",ReqCount);

	k_debug_hex("k_sd_byte_write:ReqCount L:",(UINT8)ReqCount );
	k_debug_hex("k_sd_byte_write:ReqCount H:",(UINT8)(ReqCount>>8));

	xWriteCH376Cmd( CMD2H_BYTE_WRITE );
	xWriteCH376Data( (UINT8)ReqCount );
	xWriteCH376Data( (UINT8)(ReqCount>>8) );
	xEndCH376Cmd( );

	if ( RealCount )
		*RealCount = 0;

	s = k_sd_waitforirq( );

	k_debug_integer("k_sd_byte_write:INITIAL:",s);
	if(s == USB_INT_SUCCESS || s == CMD_RET_SUCCESS  || s == USB_INT_DISK_WRITE)
	{
		k_debug_integer("k_sd_byte_write:STATUS:",s);
		s = USB_INT_DISK_WRITE;
		while(s == USB_INT_DISK_WRITE)
		{
			s = k_sd_write_req_block( buf );
			buf += s;

			if ( RealCount )
			{
				*RealCount += s;
			}
			k_debug_integer("k_sd_byte_write:WRITE:",s);

			xWriteCH376Cmd( CMD0H_BYTE_WR_GO );
			xEndCH376Cmd( );

			s = k_sd_waitforirq();
			k_debug_integer("k_sd_byte_write:CMD0H_BYTE_WR_GO:STATUS:",s);
		}
	}

	return s;
}

UINT8 k_sd_write_req_block( PUINT8 buf )
{
	UINT8	s, l;

	k_debug_string("k_sd_write_req_block::ENTER\r\n");

	xWriteCH376Cmd( CMD01_WR_REQ_DATA );
	s = l = xReadCH376Data( );
	k_debug_integer("k_sd_write_req_block:SIZE:",l);

	if ( l )
	{
		do
		{
			xWriteCH376Data( *buf );
			buf ++;
		} while ( -- l );
	}
	xEndCH376Cmd( );

	k_debug_integer("k_sd_write_req_block::EXIT:",s);

	return( s );
}


void k_sd_test_new(void)
{
	UINT8 s;
	UINT16 j;

	mDelaymS(100);

	//mInitCH376Host();

	if (k_sd_initialize())
	{
		k_debug_string("k_sd_test::initialized...\r\n");
		if (k_sd_ispresent())
		{
			k_debug_string("k_sd_test::card present...\r\n");

			if (k_sd_mount())
			{
				k_debug_string("k_sd_test::card mounted...\r\n");

				k_debug_string("k_sd_test::k_sd_read_dir...\r\n");
				s = CH376ReadBlock(buf);
				if (s == sizeof(INQUIRY_DATA))
				{
					buf[s] = 0;
					k_debug_string("UdiskInfo:");
					k_debug_string(
							(char FAR*) ((P_INQUIRY_DATA) buf)->VendorIdStr);
					k_debug_string("\r\n");
				}

			}
			else
			{
				k_debug_string("k_sd_test::card NOT mounted...\r\n");
			}
		}
		else
		{
			k_debug_string("k_sd_test::card NOT present...\r\n");
		}
	}
	else
	{
		k_debug_string("k_sd_test::NOT initialized...\r\n");
	}

}

void k_sd_test(void)
{

	DISKINFO di;
	FAT_DIR_INFO dirName;

	if (k_sd_initialize())
	{
		k_debug_string("k_sd_test::initialized...\r\n");
		if (k_sd_ispresent())
		{
			k_debug_string("k_sd_test::card present...\r\n");

			if (k_sd_mount())
			{
				k_debug_string("k_sd_test::card mounted...\r\n");

				k_debug_string("k_sd_test::k_sd_read_dir...\r\n");

				//k_sd_read_vol(&di);
				//k_sd_search_dir("*VOL");

				//k_sd_read_dir();
				/*
				 k_sd_read_vol();

				 if(k_sd_getdirinfo( &dirName ))
				 {
				 k_debug_string("k_sd_getdirinfo::ROOT:FAT_DIR_INFO.NAME:");
				 k_debug_nstring(dirName.DIR_Name,11);
				 k_debug_string("\r\n");
				 }
				 */

				/*
				 k_debug_string("k_sd_test::k_sd_delete...\r\n");
				 if(k_sd_delete("/NEWDIR"))
				 {
				 k_debug_string("k_sd_test::k_sd_delete:DELETED\r\n");
				 }
				 else
				 {
				 k_debug_string("k_sd_test::k_sd_delete:NOT DELETED\r\n");
				 }

				 k_debug_string("k_sd_test::k_sd_create_dir...\r\n");
				 if(k_sd_create_dir("/NEWDIR"))
				 {
				 k_debug_string("k_sd_test::ck_sd_create_dir CREATED...\r\n");
				 }
				 else
				 {
				 k_debug_string("k_sd_test::ck_sd_create_dir:NOT CREATED\r\n");
				 }

				 k_debug_string("k_sd_test::k_sd_read_dir...\r\n");
				 k_sd_read_dir();
				 */
			}
			else
			{
				k_debug_string("k_sd_test::card NOT mounted...\r\n");
			}
		}
		else
		{
			k_debug_string("k_sd_test::card NOT present...\r\n");
		}
	}
	else
	{
		k_debug_string("k_sd_test::NOT initialized...\r\n");
	}
}


#endif

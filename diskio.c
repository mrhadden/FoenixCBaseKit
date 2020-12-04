/*-----------------------------------------------------------------------*/
/* Low level disk I/O module skeleton for FatFs     (C)ChaN, 2019        */
/*-----------------------------------------------------------------------*/
/* If a working storage control module is available, it should be        */
/* attached to the FatFs via a glue function rather than modifying it.   */
/* This is an example of glue functions to attach various exsisting      */
/* storage control modules to the FatFs module with a defined API.       */
/*-----------------------------------------------------------------------*/

#ifdef USE_FX256_FMX


#include "ff.h"			/* Obtains integer types */
#include "diskio.h"		/* Declarations of disk functions */
#include "fxdos.h"

/* Definitions of physical drive number for each drive */
#define DEV_RAM		0	/* Example: Map Ramdisk to physical drive 0 */
#define DEV_MMC		1	/* Example: Map MMC/SD card to physical drive 1 */
#define DEV_USB		2	/* Example: Map USB MSD to physical drive 2 */


static PFXDOSDEVICE diskioDevices[] = {NULL,NULL,NULL};


/*-----------------------------------------------------------------------*/
/* Get Drive Status                                                      */
/*-----------------------------------------------------------------------*/

DSTATUS disk_status (
	BYTE pdrv		/* Physical drive nmuber to identify the drive */
)
{
	DSTATUS stat = STA_NOINIT;
	int result;

	k_debug_hex("disk_status:",pdrv);

	switch (pdrv) {
	case DEV_RAM :
		//result = RAM_disk_status();

		// translate the reslut code here

		return RES_OK;

	case DEV_MMC :
		//result = MMC_disk_status();

		// translate the reslut code here

		return stat;

	case DEV_USB :
		//result = USB_disk_status();

		// translate the reslut code here

		return stat;
	}
	return STA_NOINIT;
}



/*-----------------------------------------------------------------------*/
/* Inidialize a Drive                                                    */
/*-----------------------------------------------------------------------*/

DSTATUS disk_initialize (
	BYTE pdrv				/* Physical drive nmuber to identify the drive */
)
{
	DSTATUS stat = STA_NOINIT;
	int result = 0;

	k_debug_integer( "------- disk_initialize:dev:",pdrv);
	k_debug_string("------- disk_initialize...\r\n");

	switch (pdrv)
	{
	case DEV_RAM :

		k_debug_pointer( "------- disk_initialize:diskioDevices[pdrv]:",diskioDevices[pdrv]);

		if(diskioDevices[pdrv] == NULL)
			diskioDevices[pdrv] =  k_create_dos_device(FXDOS_SDC);

		k_debug_pointer( "------- disk_initialize:diskioDevices[pdrv]:",diskioDevices[pdrv]);
		//result = RAM_disk_initialize();

		if(diskioDevices[pdrv] != NULL)
			stat = 0x00;
		else
			stat = STA_NOINIT;
		// translate the reslut code here

		//return stat;
		break;
	case DEV_MMC :
		//result = MMC_disk_initialize();

		// translate the reslut code here

		//return stat;
		break;
	case DEV_USB :
		//result = USB_disk_initialize();

		// translate the reslut code here

		//return stat;
		break;
	}

	k_debug_string("------- disk_initialize exit\r\n");

	return stat;
}



/*-----------------------------------------------------------------------*/
/* Read Sector(s)                                                        */
/*-----------------------------------------------------------------------*/

DRESULT disk_read (
	BYTE pdrv,		/* Physical drive nmuber to identify the drive */
	BYTE *buff,		/* Data buffer to store read data */
	LBA_t sector,	/* Start sector in LBA */
	UINT count		/* Number of sectors to read */
)
{
	DRESULT res;
	int result = RES_PARERR;


	k_debug_integer( "------- disk_read:dev:",pdrv);
	k_debug_long("------- disk_read:sector:",sector);
	k_debug_long("------- disk_read:count:",count);



	switch (pdrv) {
	case DEV_RAM :
		// translate the arguments here

		k_debug_pointer( "------- disk_read:diskioDevices[pdrv]:",diskioDevices[pdrv]);

		if(diskioDevices[pdrv]!=NULL)
		{
			k_debug_pointer( "------- disk_read:buff:",buff);

			diskioDevices[pdrv]->pfReader(sector * 512,buff);

			k_debug_byte_array("------- disk_read:buff:data:\r\n",buff,512);

			//result = RAM_disk_read(buff, sector, count);

			// translate the reslut code here

			res = RES_OK;
		}
		break;

	case DEV_MMC :
		// translate the arguments here

		//result = MMC_disk_read(buff, sector, count);

		// translate the reslut code here

		//return res;
		break;
	case DEV_USB :
		// translate the arguments here

		//result = USB_disk_read(buff, sector, count);

		// translate the reslut code here

		//return res;
		break;
	}

	k_debug_string("------- disk_read exit\r\n");

	return res;
}



/*-----------------------------------------------------------------------*/
/* Write Sector(s)                                                       */
/*-----------------------------------------------------------------------*/

#if FF_FS_READONLY == 0

DRESULT disk_write (
	BYTE pdrv,			/* Physical drive nmuber to identify the drive */
	const BYTE *buff,	/* Data to be written */
	LBA_t sector,		/* Start sector in LBA */
	UINT count			/* Number of sectors to write */
)
{
	DRESULT res = RES_PARERR;
	int result;

	k_debug_integer( "------- disk_write:dev:",pdrv);
	k_debug_string("------- disk_write...\r\n");

	switch (pdrv) {
	case DEV_RAM :
		// translate the arguments here

		diskioDevices[pdrv]->pfWriter(sector,(BYTE*)buff);

		// translate the reslut code here

		res = 0;

		break;
	case DEV_MMC :
		// translate the arguments here

		//result = MMC_disk_write(buff, sector, count);

		// translate the reslut code here

		return res;

	case DEV_USB :
		// translate the arguments here

		//result = USB_disk_write(buff, sector, count);

		// translate the reslut code here

		return res;
	}

	k_debug_string("------- disk_write exit\r\n");

	return res;
}

#endif


/*-----------------------------------------------------------------------*/
/* Miscellaneous Functions                                               */
/*-----------------------------------------------------------------------*/

DRESULT disk_ioctl (
	BYTE pdrv,		/* Physical drive nmuber (0..) */
	BYTE cmd,		/* Control code */
	void *buff		/* Buffer to send/receive control data */
)
{
	DRESULT res;
	int result;

	k_debug_string("disk_ioctl...\r\n");

	switch (pdrv) {
	case DEV_RAM :

		// Process of the command for the RAM drive

		return res;

	case DEV_MMC :

		// Process of the command for the MMC/SD card

		return res;

	case DEV_USB :

		// Process of the command the USB drive

		return res;
	}

	return RES_PARERR;
}
#else


#include "ff.h"			/* Obtains integer types */
#include "diskio.h"

/* Definitions of physical drive number for each drive */
#define DEV_RAM		0	/* Example: Map Ramdisk to physical drive 0 */
#define DEV_MMC		1	/* Example: Map MMC/SD card to physical drive 1 */
#define DEV_USB		2	/* Example: Map USB MSD to physical drive 2 */


/*-----------------------------------------------------------------------*/
/* Get Drive Status                                                      */
/*-----------------------------------------------------------------------*/

DSTATUS disk_status (
	BYTE pdrv		/* Physical drive nmuber to identify the drive */
)
{
	return STA_NOINIT;
}



/*-----------------------------------------------------------------------*/
/* Inidialize a Drive                                                    */
/*-----------------------------------------------------------------------*/

DSTATUS disk_initialize (
	BYTE pdrv				/* Physical drive nmuber to identify the drive */
)
{
	return STA_NOINIT;
}



/*-----------------------------------------------------------------------*/
/* Read Sector(s)                                                        */
/*-----------------------------------------------------------------------*/

DRESULT disk_read (
	BYTE pdrv,		/* Physical drive nmuber to identify the drive */
	BYTE *buff,		/* Data buffer to store read data */
	LBA_t sector,	/* Start sector in LBA */
	UINT count		/* Number of sectors to read */
)
{
	k_debug_string("------- disk_read exit\r\n");

	return RES_PARERR;
}



/*-----------------------------------------------------------------------*/
/* Write Sector(s)                                                       */
/*-----------------------------------------------------------------------*/

#if FF_FS_READONLY == 0

DRESULT disk_write (
	BYTE pdrv,			/* Physical drive nmuber to identify the drive */
	const BYTE *buff,	/* Data to be written */
	LBA_t sector,		/* Start sector in LBA */
	UINT count			/* Number of sectors to write */
)
{
	k_debug_string("------- disk_write exit\r\n");

	return RES_PARERR;
}

#endif


/*-----------------------------------------------------------------------*/
/* Miscellaneous Functions                                               */
/*-----------------------------------------------------------------------*/

DRESULT disk_ioctl (
	BYTE pdrv,		/* Physical drive nmuber (0..) */
	BYTE cmd,		/* Control code */
	void *buff		/* Buffer to send/receive control data */
)
{
	return RES_PARERR;
}


#endif


#ifndef __FX_B2SDCARD_
#define __FX_B2SDCARD_

#include "fxos.h"
#include "fxdos.h"
#include "fxmemorymanager.h"
#include "CH376INC.H"

UCHAR k_sd_waitforirq(void);
void k_sd_sendcmd(UCHAR command);
void k_sd_senddta(UCHAR data);
void k_sd_cmd_delay(void);
void k_sd_dta_delay(void);

BOOL k_sd_read_vol(PDISKINFO pdiskInfo);

BOOL k_sd_openfile(LPCHAR filename);
UINT8 k_sd_createfile(LPCHAR name);
BOOL k_sd_close(UCHAR update);
BOOL k_sd_setfilename(LPCHAR filename);
BOOL k_sd_getdirinfo(P_FAT_DIR_INFO pdirName);

BOOL k_sd_initialize(void);
BOOL k_sd_ispresent(void);
UINT8 k_sd_status(VOID);
BOOL k_sd_mount(void);
PFXNODE k_sd_read_dir(void);
void k_sd_search_dir(LPCHAR searchString);
BOOL k_sd_create_dir(LPCHAR dirName);
BOOL k_sd_delete(LPCHAR dirorFileName);

UINT8 k_sd_byte_locate(UINT32 offset);
UINT8 k_sd_byte_read(PUINT8 buf, UINT16 ReqCount, PUINT16 RealCount);
UINT8 k_sd_byte_write(LPCHAR buf, UINT16 ReqCount, PUINT16 RealCount);

UINT16 k_read_disk_sector(LPCHAR buf, UINT32 iLbaStart, UINT8 iSectorCount);
UINT8 k_sd_read_block(PUINT8 buf);
UINT8 k_sd_write_req_block(PUINT8 buf);
void k_sd_write_host_block(PUINT8 buf, UINT8 len);
void k_sd_write_ofs_blocks(PUINT8 buf, UINT8 ofs, UINT8 len);
UINT8 k_sd_disk_req_sense(void);
UINT8 k_sd_cmd_and_irq(UINT8 mCmd);

BOOL k_sd_read_file(LPCHAR fineName, LPVOID data, UINT size);
BOOL k_sd_write_file(LPCHAR fineName, LPVOID data, UINT size);

void k_sd_test(void);


#endif

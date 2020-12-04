
#ifndef __FX_FLOPPY_
#define __FX_FLOPPY_

enum FloppyCommands
{
   READ_TRACK =                 2,	// generates IRQ6
   SPECIFY =                    3,      // * set drive parameters
   SENSE_DRIVE_STATUS =         4,
   WRITE_DATA =                 5,      // * write to the disk
   READ_DATA =                  6,      // * read from the disk
   RECALIBRATE =                7,      // * seek to cylinder 0
   SENSE_INTERRUPT =            8,      // * ack IRQ6, get status of last command
   WRITE_DELETED_DATA =         9,
   READ_ID =                    10,	// generates IRQ6
   READ_DELETED_DATA =          12,
   FORMAT_TRACK =               13,     // *
   DUMPREG =                    14,
   SEEK =                       15,     // * seek both heads to cylinder X
   VERSION =                    16,	// * used during initialization, once
   SCAN_EQUAL =                 17,
   PERPENDICULAR_MODE =         18,	// * used during initialization, once, maybe
   CONFIGURE =                  19,     // * set controller parameters
   LOCK =                       20,     // * protect controller params from a reset
   VERIFY =                     22,
   SCAN_LOW_OR_EQUAL =          25,
   SCAN_HIGH_OR_EQUAL =         29
};

extern BOOL irq_signaled;

void floppy_init();
void floppy_check_int(UCHAR* st0, UCHAR* cyl);
void io_wait(void);
void lba_2_chs(ULONG lba, UINT *c, UINT *h, UINT *s);
int sendbyte(UCHAR d);
int getbyte(void);
int fdc_waitint(void);
int fdc_wait(int sensei);
void motor_on(void);
void motor_off(void);
void fdc_configure(void);
void fdc_reset(void);
void floppy_specify(void);
int floppy_select(int drive);
void floppy_drive_data(UINT stepr, UINT loadt, UINT unloadt,BOOL dma);
void floppy_calibrate(void);
int floppy_seek(unsigned track);
int floppy_present(void);
int floppy_transfer_try1(UCHAR* buf, int do_write, UINT c,UINT h, UINT s);
int floppy_transfer_try2(UCHAR* buf, int do_write, UINT c,UINT h, UINT s);
int floppy_transfer(UCHAR *buf, int do_write, UINT c, UINT h,UINT s);
int floppy_transfer_lba(UCHAR *buf, ULONG lba, UINT num,int do_write);
int floppy_read(const UCHAR *buf, ULONG offset, ULONG num);
int floppy_write(UCHAR *buf, ULONG offset, ULONG num);
void floppy_init(void);
void floppy_isr(void);
void floppy_timer(void);

BOOL k_fd_reset(VOID);
BOOL k_fd_init(VOID);
BOOL k_fd_isreadable(VOID);
BOOL k_fd_isready(VOID);
BOOL k_fd_isbusy(VOID);
BOOL k_fd_isbusy_drive(UCHAR drive);
UINT k_fd_read_sector(UCHAR *buf, ULONG lba);
int  k_fd_read_lba(UCHAR *buf, ULONG lba, UINT num,int do_write);
int  k_fd_rw_command(UCHAR* buf, int do_write, UINT c,UINT h, UINT s);

#endif

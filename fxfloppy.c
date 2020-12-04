#include "fxtypes.h"
#include "fxkernel.h"
#include "fxfloppy.h"
/* Floppy controller driver. Supports only 3.5" HD 1440 KiB disks */

#define PORT 0xAF13F0

#define SRA (0xAF13F0)   //Status register A
#define SRB (0xAF13F1)   //Status register B

#define FDC_DOR (0xAF13F2)   //Digital output register
//#define FDC_TDR (PORT+3)   //Tape drive register
#define FDC_MSR (0xAF13F4)   //Main state register
#define FDC_DRS (0xAF13F4)   //Datarate select register
#define FDC_DATA (0xAF13F5)  //Data FIFO

#define FDC_DIR (0xAF13F7)   //Digital input register
#define FDC_CCR (0xAF13F7)   //Configuration control register

/* DOR flags */
#define DOR_IRQ   0x08
#define DOR_RESET 0x04

/* MSR flags */
#define MSR_RQM  0x80
#define MSR_DIO  0x40
#define MSR_NDMA 0x20
#define MSR_CB   0x10

#define MSR_ACTD 0x08
#define MSR_ACTC 0x04
#define MSR_ACTB 0x02
#define MSR_ACTA 0x01

//#define MSR_OK_READ (MSR_RQM | MSR_DIO | MSR_CB)
#define MSR_OK_READ (MSR_RQM | MSR_DIO)

/* DIR flags */
#define DIR_DC 0x80

#define SECTOR_SIZE 512
#define SEC_PER_TRACK 18

#define MS 1000

#define FL_HLT (8*MS)
#define FL_SPIN_UP (400*MS)
#define FL_SPIN_DN (3000*MS)
#define FL_SEL_D (20*MS)
#define FL_INT_TMT (30000*MS)

#define CMD_SPECIFY  0x03
#define CMD_WRITE    0x45
#define CMD_READ     0x46
#define CMD_SENSEI   0x08
#define CMD_READID   0x4A
#define CMD_RECAL    0x07
#define CMD_SEEK     0x0F
#define CMD_VERSION  0x10
#define CMD_CONF     0x13
/* Bits of main status register */
#define STATUS_BUSYMASK	0x0F		/* drive busy mask */
#define STATUS_BUSY		0x10		/* FDC busy */
#define STATUS_NON_DMA	0x20		/* 0- DMA mode */
#define STATUS_DIR		0x40		/* 0- cpu->fdc */
#define STATUS_READY	0x80		/* Data reg ready */

/* Values for FD_COMMAND */
#define FD_RECALIBRATE		0x07	/* move to track 0 */
#define FD_SEEK			0x0F	/* seek track */
#define FD_READ			0xA6	/* read with MT, SKip deleted */
#define FD_WRITE		0xC5	/* write with MT, MFM */
#define FD_SENSEI		0x08	/* Sense Interrupt Status */
#define FD_SPECIFY		0x03	/* specify HUT etc */
#define FD_FORMAT		0x4D	/* format one track */
#define FD_VERSION		0x10	/* get version code */
#define FD_CONFIGURE		0x13	/* configure FIFO operation */
#define FD_PERPENDICULAR	0x12	/* perpendicular r/w mode */
#define FD_GETSTATUS		0x04	/* read ST3 */
#define FD_DUMPREGS		0x0E	/* dump the contents of the fdc regs */
#define FD_READID		0xEA	/* prints the header of a sector */
#define FD_UNLOCK		0x14	/* Fifo config unlock */
#define FD_LOCK			0x94	/* Fifo config lock */
#define FD_RSEEK_OUT		0x8f	/* seek out (i.e. to lower tracks) */
#define FD_RSEEK_IN		0xcf	/* seek in (i.e. to higher tracks) */

/* Parameters for a 1.44 3.5" disk */
#define DISK_H1440_SIZE       2880
#define DISK_H1440_SECT       18
#define DISK_H1440_HEAD       2
#define DISK_H1440_TRACK      80
#define DISK_H1440_STRETCH    0
#define DISK_H1440_GAP        0x1B
#define DISK_H1440_RATE       0x00
#define DISK_H1440_SPEC1      0xCF
#define DISK_H1440_FMT_GAP    0x6C

/* Parameters for a 1.44 3.5" drive */
#define DRIVE_H1440_MAX_DTR          500
#define DRIVE_H1440_HLT              16   /* ms */
#define DRIVE_H1440_HUT              16   /* ms */
#define DRIVE_H1440_SRT              4000 /* us */
#define DRIVE_H1440_SPINUP           400  /* ms */
#define DRIVE_H1440_SPINDOWN         3000 /* ms */
#define DRIVE_H1440_SPINDOWN_OFFSET  10
#define DRIVE_H1440_SELECT_DELAY     20  /* ms */
#define DRIVE_H1440_RPS              5
#define DRIVE_H1440_TRACKS           83
#define DRIVE_H1440_TIMEOUT          3000 /* ms */
#define DRIVE_H1440_INTERLEAVE_SECT  20

/* Floppy drive configuration */
#define FIFO_DEPTH            10
#define USE_IMPLIED_SEEK      0
#define USE_FIFO              1
#define FIFO_THRESHOLD        10
#define TRACK_PRECOMPENSATION 0

#define SLOW_FLOPPY 0

#define FD_RESET_DELAY 20 /* microseconds */


#define WAIT_COND(c) while (!(c)) {}

BOOL irq_signaled = FALSE;

typedef struct
{
	UINT track;
	int motstate;
	int dchg;
} drive_state_t;

//static volatile int irq_signaled = 0;
static UCHAR reg_dor, reg_sr0, reg_sr1, reg_sr2;

static drive_state_t drives[4];
static UCHAR cur_drive = 0;
static int motoff_timer;

static int status_sz;
static UCHAR status[7];

UINT  floppybufferIndex = 0;
UCHAR floppybuffer[512];


static void io_wait(void)
{
	sleep(DRIVE_H1440_SPINUP);
}

static void lba_2_chs(ULONG lba, UINT *track, UINT *head, UINT *sector)
{
	*head	 = ((lba % (2 * SEC_PER_TRACK)) / SEC_PER_TRACK);
	*sector  = ((lba % (2 * SEC_PER_TRACK)) % SEC_PER_TRACK + 1);
	*track 	 = (lba / (2 * SEC_PER_TRACK));
}

int sendbyte(UCHAR d)
{
	int i;

	UCHAR msr;

	for (i = 0; i < 0x0fff; i++)
	{
		msr = inportb(FDC_MSR);
		//if ((msr & MSR_RQM) && !(msr & MSR_DIO))
		k_debug_bits("sendbyte:",msr);
		//if ((msr & (STATUS_READY|STATUS_DIR|STATUS_NON_DMA)))
		if ((msr & MSR_RQM) && !(msr & MSR_DIO))
		{
			outportb(FDC_DATA, d);
			return 0;
		}
		io_wait();
	}
	k_debug_string("sendbyte::NOSEND\r\n");
	return -1; /* timeout */
}

int getbyte()
{
	int i ;

	UCHAR msr;

	for (i = 0; i < 0x0FF; i++)
	{
		msr = inportb(FDC_MSR);
		if ((msr & MSR_OK_READ) == MSR_OK_READ)
		{
			return inportb(FDC_DATA);
		}
		io_wait();
	}
	return -1; /* timeout */
}

static int fdc_waitint()
{
	UINT tmout = 0x0FFF;

	/*
	clock_t s = clock();
	int tmout;
	WAIT_COND(!irq_signaled && (tmout = (clock() - s < FL_INT_TMT)));
	if (!tmout)
		return -1;
		*/
	//sleep(300);

	k_debug_integer("*** fdc_waitint::irq_signaled:",irq_signaled);
	while(!irq_signaled)
	{
		//k_debug_integer("*** fdc_waitint::irq_signaled:",irq_signaled);
		tmout--;
		if(tmout < 1)
			break;
		//sleep(10);
	}
	k_debug_integer("*** fdc_waitint::irq_signaled:",irq_signaled);
	irq_signaled = FALSE;
	if (!tmout)
	{
		k_debug_string("*** fdc_waitint::timeout\r\n");
		return -1;
	}
	return 0;
}

static int fdc_wait(int sensei)
{
	int tmout = fdc_waitint();

	status_sz = 0;
	while (status_sz < 7 && (inportb(FDC_MSR) & MSR_CB))
		status[status_sz++] = getbyte();

	if (sensei)
	{
		sendbyte(CMD_SENSEI);
		reg_sr0 = getbyte();
		k_debug_hex("fdc_wait:reg_sr0:",reg_sr0);
		drives[cur_drive].track = getbyte();
		k_debug_hex("fdc_wait:track:",drives[cur_drive].track);
	}

	irq_signaled = 0;
	if (tmout)
	{
		if (inportb(FDC_DIR) & DIR_DC)
			drives[cur_drive].dchg = 1;
		return 1;
	}
	else
		return 0;
}

static void motor_on()
{
	k_debug_string("motor_on\r\n");
	motoff_timer = 0;
	//if (drives[cur_drive].motstate == 0)
	if(1)
	{
		reg_dor |= (1 << (cur_drive + 4));
		reg_dor |= cur_drive;
		outportb(FDC_DOR, reg_dor);
		drives[cur_drive].motstate = 1;
		//usleep(FL_SPIN_UP);
		sleep(DRIVE_H1440_SPINUP);
	}
}

static void motor_off()
{
	k_debug_string("motor_off\r\n");
	if (drives[cur_drive].motstate)
	{
		//motoff_timer = 2000;
		motoff_timer = 200;
	}
	// TODO
	//motoff_timer = 1;
	//floppy_timer();
}

static void fdc_configure()
{
	sendbyte(CMD_CONF);
	sendbyte(0x00);
	sendbyte(0x47); /* threshold = 8, FIFO on, polling on, implied seek on */
	//sendbyte(0x4F); /* threshold = 16, FIFO off, polling on, implied seek on */
	//sendbyte(0x7F); /* threshold = 16, FIFO on, polling on, implied seek on */
	//sendbyte(0x7F);
	//sendbyte(0x40);
	sendbyte(0x00);
	//sendbyte(0x2F);
}

/**
// Register Address
#define FDD_STATUS_A           ((LPCHAR)0xAF13F0) // Read     use in with PS2 and PS2 mode 30 noly
#define FDD_STATUS_B           ((LPCHAR)0xAF13F1) // Read
#define FDD_DIGITAL_OUTPUT     ((LPCHAR)0xAF13F2) // Read/Write
#define FDD_TAPE_DRIVER        ((LPCHAR)0xAF13F3) // Read/Write
#define FDD_MAIN_STATUS        ((LPCHAR)0xAF13F4) // Read
#define FDD_DATA_RATE_SELECT   ((LPCHAR)0xAF13F4) // Write
#define FDD_FIFO               ((LPCHAR)0xAF13F5) // Read/Write
//RESERVED_REG          0xAF13F6 // Reserved
#define FDD_DIGITAL_INPUT      ((LPCHAR)0xAF13F7) // Read
#define FDD_CONFIG_CTRL        ((LPCHAR)0xAF13F7) // Write
 */

static void fdc_reset()
{
	UCHAR st0, cyl;
	int i;
	/* Send reset */
	outportb(FDD_DIGITAL_OUTPUT, 0x00);
	io_wait();
	io_wait();
	io_wait();
	io_wait();

	//reg_dor = DOR_IRQ | DOR_RESET;
	reg_dor = DOR_RESET;
	outportb(FDD_DIGITAL_OUTPUT, reg_dor);
	io_wait();

	outportb(FDD_DIGITAL_OUTPUT, reg_dor | 0x04);
	io_wait();

	outportb(FDD_DATA_RATE_SELECT, 0x02);
	io_wait();

	k_debug_string("fdc_reset\r\n");
	/* Wait for IRQ or timeout */
	/*
	clock_t s = clock();
	WAIT_COND(!irq_signaled && (clock() - s < FL_INT_TMT));
	if (!irq_signaled)
	{
	}
	*/

	//sleep(1000);

	//fdc_waitint();

	//if (fdc_waitint())
	//	return;
	/* Hmph... Timeout */

	for ( i = 0; i < 5; i++)
	{
		sendbyte(CMD_SENSEI);
		reg_sr0 = getbyte();
		k_debug_bits("fdc_reset:reg_sr0:",reg_sr0);
		drives[i].track = getbyte();
		k_debug_bits("fdc_reset:track:",drives[i].track);
		sleep(30);
	}

	irq_signaled = 0;

	fdc_configure();
	//floppy_specify();

	//motor_off();
}

//! configure drive floppy__drive_data(3, 16, 240, FALSE);
void floppy_drive_data(UINT stepr, UINT loadt, UINT unloadt,BOOL dma)
{

	UINT data = 0;

	k_debug_string("floppy_drive_data\r\n");

	//! send command
	sendbyte(CMD_SPECIFY);
//	data = ((stepr & 0xf) << 4) | (unloadt & 0xf);
	data = 0x00;
	sendbyte(data);
	//data = (((loadt) << 1) |  (1));
//	data = ((0x05 << 1) | (1));
	//data = 0x00; // enable DMA
	data = 0x01; // disable DMA
	sendbyte(data);
}


static void floppy_specify()
{
	sendbyte(CMD_SPECIFY);
	sendbyte((0x08 << 4) | (0));
	//sendbyte((0x05 << 1) | (1));
	//sendbyte(0xDF);
	sendbyte(0x01);
}

static int floppy_select(int drive)
{
	if (drive < 0 || drive > 3)
	{
		return -1;
	}

	outportb(FDC_CCR, 0x00);

	cur_drive = (UCHAR) drive;
	//reg_dor = (reg_dor & 0x0C) | cur_drive; /* stop all motors and select new drive */

	reg_dor |= (1 << (drive + 4)); /* Spinup the selected drive */
	reg_dor |= drive; /* Select the drive for commands as well */

	outportb(FDC_DOR, reg_dor);

	sleep(DRIVE_H1440_SPINUP);

	floppy_specify();
	//floppy_drive_data(3, 16, 240, FALSE);

	return 0;
}

static void floppy_calibrate()
{
	int i;
	UCHAR  st0, cyl;
	motor_on();

	//sendbyte(CMD_RECAL);
	//sendbyte(cur_drive);

	//fdc_wait(1);



	for (i = 0; i < 100; i++)
	{

		//! send command
		sendbyte(CMD_RECAL);
		sendbyte(cur_drive);
		fdc_waitint();
		floppy_check_int(&st0, &cyl);

		//! did we find cylinder 0? if so, we are done
		if (!cyl)
		{
			k_debug_hex("floppy_calibrate:cy:", cyl);
			//motor_off();
			return ;
		}
	}

	motor_off();
}

static int floppy_seek(UINT track)
{
	UCHAR sts = 0;
	int res = 0;

	k_debug_hex("floppy_seek:cy:", track);

	//if (drives[cur_drive].track == track)
	//	return 0;

	motor_on();

	sendbyte(CMD_SEEK);
	sendbyte(cur_drive);
	sendbyte((UCHAR) track);


	//if (fdc_wait(1))
	//	res = 1;

	do
	{
		sts = FDD_MAIN_STATUS[0];
		k_debug_bits("floppy_seek:sts:", sts);
		if(sts & MSR_DIO)
		{
			k_debug_hex("floppy_seek:data:", inportb(FDC_DATA));
		}
	}while(sts & MSR_CB);

	//usleep(15 * MS);
	sleep(15);

	motor_off();

	k_debug_bits("floppy_seek:stsA:", FDD_STATUS_A[0]);
	k_debug_bits("floppy_seek:stsB:", FDD_STATUS_B[0]);



	res = !(FDD_STATUS_A[0] & FDD_ST1_DATTA_ERROR);


	k_debug_integer("floppy_seek:res:", res);

	return res;

	//if (!(reg_sr0 & 0x20) || (drives[cur_drive].track != track))
	//	return 1;
	//else
	//	return res;
}

int floppy_present()
{
	int retCode = 0;
	UCHAR dir = inportb(FDC_DIR);
	if (dir & DIR_DC)
	{
		floppy_seek(79);
		floppy_seek(0);
	}

	retCode = !(inportb(FDC_DIR) & DIR_DC);

	k_debug_bits("floppy_present:retCode:", (UCHAR)retCode);

	return retCode;
}

static int floppy_transfer_try1(UCHAR* buf, int do_write, UINT c,UINT h, UINT s)
{
	int i = 0;
	UCHAR msr = 0;
	UCHAR cmd = do_write ? CMD_WRITE : CMD_READ;
	//UCHAR cmd = do_write ? CMD_WRITE : 0xE6;
	BOOL retCode = FALSE;

	k_debug_integer("floppy_transfer_try:",cur_drive);
	k_debug_integer("floppy_transfer_try:track:",c);
	k_debug_integer("floppy_transfer_try:head:",h);
	k_debug_integer("floppy_transfer_try:sector:",s);


	//floppy_seek(c);


	k_debug_string("floppy_transfer_try:READING NOW!\r\n");

	sendbyte(cmd);
	sendbyte((UCHAR) ((h << 2) | cur_drive));
	//sendbyte((UCHAR) 0x00);
	sendbyte((UCHAR) c);
	sendbyte((UCHAR) h);
	sendbyte((UCHAR) s);
	sendbyte(0x2);
	sendbyte((UCHAR) SEC_PER_TRACK);
	sendbyte(0x1b);
	sendbyte(0xff);

	//if (fdc_waitint())
//		return -1;
	sleep(DRIVE_H1440_SPINUP);


	//fdc_waitint();

	/*
	do
	{
		msr = inportb(FDC_MSR);
		//k_debug_bits("floppy_transfer_try1:msr:",msr);
		if(msr & (MSR_RQM |  MSR_DIO))
			break;
		//k_debug_integer("floppy_transfer_try:floppybufferIndex:",floppybufferIndex);
		if(floppybufferIndex>0)
			k_debug_hex("floppy_transfer_try:floppybufferIndex:data:",floppybuffer[floppybufferIndex - 1]);
	}while(msr & MSR_CB);
	*/
	//for (i = 0; i < SECTOR_SIZE && (msr & MSR_NDMA); i++)

	/*
	for (i = 0; i < SECTOR_SIZE; i++)
	{
		if (do_write)
			sendbyte(buf[i]);
		else
		{
			buf[i] = getbyte();

			if(buf[i]!=0xFF)
				k_debug_hex("READ:", buf[i]);
		}
	}
	*/

	for (i = 0; i < SECTOR_SIZE; i++)
	{
		msr = inportb(FDC_MSR);
		//k_debug_bits("floppy_transfer_try1:msr:",msr);
		if(msr & (MSR_RQM |  MSR_DIO))
			break;
		//k_debug_integer("floppy_transfer_try:floppybufferIndex:",floppybufferIndex);
		buf[i] = getbyte();

	}

	k_debug_byte_array("DATA:\r\n",buf,512);
/*
	for (i = 0; i < SECTOR_SIZE; i++)
	{
		buf[i] = inportb(FDC_DATA);
		while(!(MSR_DIO & inportb(FDC_MSR)))
			k_debug_bits("floppy_transfer_try1:read:msr:",msr);
	}


	/*
	do
	{
		msr = inportb(FDC_MSR);
		k_debug_bits("floppy_transfer_try1:msr:",msr);
		buf[i] = inportb(FDC_DATA);
		if(i < 511)
			i++;
	}while(msr & MSR_DIO);
	*/


	reg_sr0 = getbyte();
	k_debug_bits("floppy_transfer_try1:reg_sr0:msr:",reg_sr0);
	reg_sr1 = getbyte();
	k_debug_bits("floppy_transfer_try1:reg_sr1:msr:",reg_sr1);
	reg_sr2 = getbyte();
	k_debug_bits("floppy_transfer_try1:reg_sr2:msr:",reg_sr2);
	drives[cur_drive].track = getbyte();

	//k_debug_integer("floppy_transfer_try:drives[cur_drive].track:",drives[cur_drive].track);

	i = getbyte();
	k_debug_bits("floppy_transfer_try1:1:c:",i);
	//k_debug_integer("floppy_transfer_try:i1:",i);
	i = getbyte();
	k_debug_bits("floppy_transfer_try1:2:h:",i);
	//k_debug_integer("floppy_transfer_try:i2:",i);
	i = getbyte();
	k_debug_bits("floppy_transfer_try1:3:r:",i);
	//k_debug_integer("floppy_transfer_try:i3:",i);
	i = getbyte();
	k_debug_bits("floppy_transfer_try1:3:n:",i);
	//k_debug_integer("floppy_transfer_try:i3:",i);

	k_debug_integer("floppy_transfer_try:floppybufferIndex:",floppybufferIndex);
	//return i != 2;

	retCode = (i != 2);

	return retCode;
}

void floppy_check_int(UCHAR* st0, UCHAR* cyl)
{
	k_debug_string("floppy_check_int\r\n");

	sendbyte(CMD_SENSEI);

	*st0 = (UCHAR)getbyte();
	*cyl = (UCHAR)getbyte();

	k_debug_hex("floppy_check_int:st0:", *st0);
	k_debug_hex("floppy_check_int:cyl:", *cyl);
}

static int wait_til_ready(void)
{
	int counter, status;
	for (counter = 0; counter < 10000; counter++)
	{
		status = getbyte();
		if (status & STATUS_READY)
		{
			return status;
		}
	}

	return -3;
}

static int floppy_transfer_try2(UCHAR* buf, int do_write, UINT c,UINT h, UINT s)
{
	UCHAR st, cyl;
	int i = 0;
	UINT max_bytes = 512;
	UCHAR msr = 0;
	UCHAR st0 = 0;
	UCHAR cmd = do_write ? CMD_WRITE : CMD_READ;
	unsigned char byte;
	int status;
	int bytes_read;
	int result;

	motor_on();

	k_debug_string("floppy_transfer_try2\r\n");

	floppy_check_int(&st,&cyl);

	//sendbyte(CMD_READ);
	sendbyte(FD_READ | (((DISK_H1440_HEAD ==2)?1:0) << 6));
	sendbyte((UCHAR) ((h << 2) | cur_drive));
	sendbyte((UCHAR) c);
	sendbyte((UCHAR) h);
	sendbyte((UCHAR) s);
	sendbyte(0x2);
	sendbyte(DISK_H1440_SECT);
	sendbyte(DISK_H1440_GAP);
	sendbyte(0xff);

	k_debug_string("floppy_transfer_try2:check for RQM\r\n");
	//sleep(10);

	/*
	i = 32000;
	msr = 0;//inportb(FDC_MSR);
	while(status != (STATUS_READY|STATUS_NON_DMA))
	{
		//k_debug_integer("floppy_transfer_try2:wait for RQM:",i);

		//k_debug_hex("     RQM:",(msr & 0x80));
		//k_debug_hex("     DIO:",(msr & 0x40));
		//k_debug_hex("    NDMA:",(msr & 0x20));
		//k_debug_hex("    CMDB:",(msr & 0x10));
		i--;
		if(i == 0)
		{
			//st0 =  inportb(SRA);

			k_debug_integer("floppy_transfer_try2:wait for ready ABORT:",i);
			k_debug_hex("     RQM:",(msr & 0x80));
			k_debug_hex("     DIO:",(msr & 0x40));
			k_debug_hex("    NDMA:",(msr & 0x20));
			k_debug_hex("    CMDB:",(msr & 0x10));

			k_debug_hex("     IRQ:",(st0 & 0x80));

			return 1;
		}
		//sleep(30);
		msr = inportb(FDC_MSR);
	}
	*/

	do
	{
		status =  inportb(FDC_MSR);
		status &= STATUS_READY | STATUS_NON_DMA;
	} while (status != (STATUS_READY | STATUS_NON_DMA));


	//st0 =  inportb(SRA);
	k_debug_string("floppy_transfer_try2:read start\r\n");
	//k_debug_hex("     RQM:",(msr & 0x80));
	//k_debug_hex("     DIO:",(msr & 0x40));
	//k_debug_hex("    NDMA:",(msr & 0x20));
	//k_debug_hex("    CMDB:",(msr & 0x10));
	//k_debug_hex("     IRQ:",(st0 & 0x80));


	for (i = 0; i < max_bytes; i++)
	{
		if ((status = wait_til_ready()) < 0)
		{
			break;
		}
		status &= STATUS_READY | STATUS_DIR | STATUS_NON_DMA;
		if (status != (STATUS_READY | STATUS_DIR | STATUS_NON_DMA))
		{
			break;
		}
		byte = getbyte();
		k_debug_hex("READ:",byte);
		buf[i] = byte;
	}
	bytes_read = i;

	/* The result stage begins when STATUS_NON_DMA is cleared */
	while ((status = inportb(FDC_MSR)) & STATUS_NON_DMA)
	{
		/* We get extra bytes in the fifo  past
		 * the end of the sector and drop them on the floor.
		 * Otherwise the fifo is polluted.
		 */
		getbyte();
	}
	/*
	for (i = 0; i < SECTOR_SIZE ; i++)
	{
		msr = inportb(FDC_MSR);
		if((msr & 0xC0) || (msr & 0x20))
		{

			buf[i] = inportb(FDC_DATA);

			if(buf[i]!=0xFF)
			{
				//k_debug_integer("INDEX:", i);
				k_debug_hex("READ:", buf[i]);
			}

			//sleep(20);
		}
		else
		{
			st0 =  inportb(SRA);
			k_debug_integer("floppy_transfer_try2:read quit:",i);
			k_debug_hex("     RQM:",(msr & 0x80));
			k_debug_hex("     DIO:",(msr & 0x40));
			k_debug_hex("    NDMA:",(msr & 0x20));
			k_debug_hex("    CMDB:",(msr & 0x10));
			k_debug_hex("     IRQ:",(st0 & 0x80));
			break;
		}
		//msr = inportb(FDC_MSR);
	}
	*/

	msr = inportb(FDC_MSR);

	//st0 =  inportb(SRA);
	k_debug_string("floppy_transfer_try2:read complete\r\n");
	//k_debug_hex("     RQM:",(msr & 0x80));
	//k_debug_hex("     DIO:",(msr & 0x40));
	//k_debug_hex("    NDMA:",(msr & 0x20));
	//k_debug_hex("    CMDB:",(msr & 0x10));
	//k_debug_hex("     IRQ:",(st0 & 0x80));

	/*
	i = 0xFFF;
	msr = inportb(FDC_MSR);
	while(!(msr & 0x80))
	{

		//k_debug_integer("floppy_transfer_try2:wait for result:",i);

		//k_debug_hex("     RQM:",(msr & 0x80));
		//k_debug_hex("     DIO:",(msr & 0x40));
		//k_debug_hex("    NDMA:",(msr & 0x20));
		//k_debug_hex("    CMDB:",(msr & 0x10));
		i--;
		if(i == 0)
		{
			//st0 =  inportb(SRA);
			k_debug_integer("floppy_transfer_try2:wait for result ABORT:",i);
			k_debug_hex("     RQM:",(msr & 0x80));
			k_debug_hex("     DIO:",(msr & 0x40));
			k_debug_hex("    NDMA:",(msr & 0x20));
			k_debug_hex("    CMDB:",(msr & 0x10));
			k_debug_hex("     IRQ:",(st0 & 0x80));
			//return 1;
		}

		msr = inportb(FDC_MSR);
		//sleep(30);
	}
	*/

	reg_sr0 = getbyte();
	k_debug_integer("floppy_transfer_try2:reg_sr0:",reg_sr0);
	reg_sr1 = getbyte();
	k_debug_integer("floppy_transfer_try2:reg_sr1:",reg_sr1);
	reg_sr2 = getbyte();
	k_debug_integer("floppy_transfer_try2:reg_sr2:",reg_sr2);
	drives[cur_drive].track = getbyte();
	k_debug_integer("floppy_transfer_try2:C:",drives[cur_drive].track);

	//k_debug_integer("floppy_transfer_try:drives[cur_drive].track:",drives[cur_drive].track);

	i = getbyte();
	k_debug_integer("floppy_transfer_try2:H:",i);
	i = getbyte();
	k_debug_integer("floppy_transfer_try2:R:",i);
	i = getbyte();
	k_debug_integer("floppy_transfer_try2:N:",i);


	floppy_check_int(&st, &cyl);
	//k_debug_hex("floppy_transfer_try2:st:",st);
	//k_debug_hex("floppy_transfer_try2:cyl:",cyl);

	result = (i != 2);


	k_debug_string("floppy_transfer_try2:read exit\r\n");

	return result;

}


static int floppy_transfer(UCHAR *buf, int do_write, UINT c, UINT h,UINT s)
{
	int i;
	int res = 0 ;

	i = floppy_seek(c);

	k_debug_integer("floppy_transfer:i:", i);
	k_debug_integer("floppy_transfer:c:", c);
	k_debug_integer("floppy_transfer:h:", h);
	k_debug_integer("floppy_transfer:s:", s);

	/*
	res = -1;
	for (i = 0; i < 4; i++)
	{
		if(!floppy_transfer_try2(buf, do_write, c, h, s))
		{
			if (!(reg_sr0 & 0xC0))
			{
				res = 0;
				break;
			}
			if (do_write && (reg_sr1 & 0x2))
			{
				res = 1;
				break;
			}
		}
	}
	return res;
	*/

	//return floppy_transfer_try2(buf, do_write, c, h, s);
	return floppy_transfer_try1(buf, do_write, c, h, s);

}

static int floppy_transfer_lba(UCHAR *buf, ULONG lba, UINT num,int do_write)
{
	int i;
	int res = 0;
	UINT c, h, s;

	motor_on();

	for (i = 0; i < num; i++)
	{
		k_debug_long("floppy_transfer_lba:lba:", lba);
		lba_2_chs(lba, &c, &h, &s);

		res = floppy_transfer(buf, do_write, c, h, s);
		k_debug_integer("floppy_transfer_lba:res:", res);
		lba++;
	}

	motor_off();

	return res;
}

int floppy_read(const UCHAR *buf, ULONG offset, ULONG num)
{
	return floppy_transfer_lba((UCHAR*) buf, offset, (UINT) num, 0);
}

int floppy_write(UCHAR *buf, ULONG offset, ULONG num)
{
	return floppy_transfer_lba(buf, offset, (UINT) num, 1);
}

void floppy_init()
{
	int r = 0;
	int pres = 0;

	k_debug_string("floppy_init\r\n");

	fdc_reset();

	sendbyte(CMD_VERSION);
	r = getbyte();
	k_debug_long("fdc ver:", r);
	if (r != 0x90)
	{
		k_debug_string("floppy might not being working\r\n");
	}

	k_debug_string("select\r\n");
	floppy_select(0);
	k_debug_string("calibrate\r\n");
	floppy_calibrate();
	k_debug_long("sr0:", reg_sr0);

	pres = floppy_present();
	k_debug_long("floppy_present():", pres);

	r = floppy_read(floppybuffer, 0, 1);

	k_debug_integer("read(0) return:",r);
	k_debug_byte_array("floppy_sector:\r\n",floppybuffer,512);

/*
	r = floppy_read(floppybuffer, 1, 1);

		k_debug_integer("read(0):",r);

		k_debug_byte_array("floppy_sector:\r\n",floppybuffer,512);
*/
	//k_debug_integer("read(0):", floppy_read(floppybuffer, 1,1));
	//k_debug_integer("read(0):", floppy_read(floppybuffer, 19, 1));

	//motor_off();
}

/* this is IRQ6 handler */
void floppy_isr()
{
	irq_signaled = 1;
}

/* this's being called from timer isr (1000 Hz) */
void floppy_timer()
{
	if (motoff_timer > 0)
	{
		//k_debug_string("motoff_timer\r\n");
		motoff_timer--;
		if (motoff_timer == 0)
		{
			k_debug_hex("motoff_timer_off:",inportb(FDC_DOR));
			reg_dor &= ~(1 << (cur_drive + 4));
			k_debug_hex("motoff_timer_off:",reg_dor);
			outportb(FDC_DOR, reg_dor);
			drives[cur_drive].motstate = 0;
		}
	}
}

BOOL k_fd_reset(VOID)
{
	inportb(FDC_DOR);

	return TRUE;
}


BOOL k_fd_init(VOID)
{
	INT i = 0;
	INT wait = 0;

	inportb(FDC_DOR) = 0x04;

	sleep(1);

	inportb(FDC_DRS) = 0x02;

	sleep(32768);

	for ( i = 0; i < 5; i++)
	{
		sendbyte(CMD_SENSEI);
		reg_sr0 = getbyte();
		k_debug_bits("fdc_reset:CMD_SENSEI:reg_sr0:",reg_sr0);
		drives[i].track = getbyte();
		k_debug_bits("fdc_reset:CMD_SENSEI:track:",drives[i].track);
		sleep(30);
	}


	return TRUE;
}

BOOL k_fd_isreadable(VOID)
{
	int timeout = 0;
	UCHAR sts = 0;

	for (timeout = 0; timeout < 0x0FF; timeout++)
	{
		sts = inportb(FDC_MSR);
		if ((sts & MSR_DIO) == MSR_DIO)
			return TRUE;
	}

	return FALSE;
}

BOOL k_fd_isready(VOID)
{
	int timeout = 0;
	UCHAR sts = 0;

	for (timeout = 0; timeout < 0x0FF; timeout++)
	{
		sts = inportb(FDC_MSR);
		if ((sts & MSR_RQM) == MSR_RQM)
			return TRUE;
	}

	return FALSE;
}

BOOL k_fd_isbusy(VOID)
{
	int timeout = 0;
	UCHAR sts = 0;

	for (timeout = 0; timeout < 0x0FF; timeout++)
	{
		sts = inportb(FDC_MSR);
		if ((sts & MSR_CB) == 0)
			return TRUE;
	}
	return FALSE;
}

BOOL k_fd_isbusy_drive(UCHAR drive)
{
	int timeout = 0;
	UCHAR sts = 0;

	for (timeout = 0; timeout < 0x0FF; timeout++)
	{
		sts = inportb(FDC_MSR);
		if ((sts & drive) == 0)
			return TRUE;
	}
	return FALSE;
}

UINT k_fd_read_sector(UCHAR *buf, ULONG lba)
{
	return k_fd_read_lba(buf, lba, 1, FALSE);
}

static int k_fd_read_lba(UCHAR *buf, ULONG lba, UINT num,int do_write)
{
	int i;
	int res = 0;
	UINT c, h, s;

	motor_on();

	for (i = 0; i < num; i++)
	{
		k_debug_long("k_fd_read_lba:lba:", lba);
		lba_2_chs(lba, &c, &h, &s);

		res = k_fd_rw_command(buf, do_write, c, h, s);
		k_debug_integer("k_fd_read_lba:res:", res);
		lba++;
	}

	motor_off();

	return res;
}

static int k_fd_rw_command(UCHAR* buf, int do_write, UINT c,UINT h, UINT s)
{
	int i = 0;
	UCHAR msr = 0;
	UCHAR cmd = do_write ? CMD_WRITE : CMD_READ;
	//UCHAR cmd = do_write ? CMD_WRITE : 0xE6;
	BOOL retCode = FALSE;

	k_debug_integer("k_fd_rw_command:",cur_drive);
	k_debug_integer("k_fd_rw_command:track:",c);
	k_debug_integer("k_fd_rw_command:head:",h);
	k_debug_integer("k_fd_rw_command:sector:",s);


	//floppy_seek(c);

	//sleep(32768);
	//sleep(DRIVE_H1440_SPINUP);

	sendbyte(CMD_SENSEI);
	reg_sr0 = getbyte();
	k_debug_hex("k_fd_rw_command:CMD_SENSEI:reg_sr0:",reg_sr0);
	drives[cur_drive].track = getbyte();
	k_debug_hex("k_fd_rw_command:CMD_SENSEI:track:",drives[cur_drive].track);

	sleep(32768);

	k_debug_string("k_fd_rw_command:READING NOW!\r\n");

	sendbyte(cmd);
	sendbyte((UCHAR) ((h << 2) | cur_drive));
	//sendbyte((UCHAR) 0x00);
	sendbyte((UCHAR) c);
	sendbyte((UCHAR) h);
	sendbyte((UCHAR) s);
	sendbyte(0x2);
	sendbyte((UCHAR) SEC_PER_TRACK);
	sendbyte(0x1b);
	sendbyte(0xff);

	sleep(DRIVE_H1440_SPINUP);
	sleep(DRIVE_H1440_SPINUP);

	k_fd_isreadable();

	for (i = 0; i < SECTOR_SIZE; i++)
	{
		msr = inportb(FDC_MSR);
		//k_debug_bits("floppy_transfer_try1:msr:",msr);
		if(msr & (MSR_RQM |  MSR_DIO))
			break;
		//k_debug_integer("floppy_transfer_try:floppybufferIndex:",floppybufferIndex);
		buf[i] = getbyte();

	}

	k_debug_byte_array("DATA:\r\n",buf,512);


	reg_sr0 = getbyte();
	k_debug_bits("floppy_transfer_try1:reg_sr0:msr:",reg_sr0);
	reg_sr1 = getbyte();
	k_debug_bits("floppy_transfer_try1:reg_sr1:msr:",reg_sr1);
	reg_sr2 = getbyte();
	k_debug_bits("floppy_transfer_try1:reg_sr2:msr:",reg_sr2);
	drives[cur_drive].track = getbyte();

	//k_debug_integer("floppy_transfer_try:drives[cur_drive].track:",drives[cur_drive].track);

	i = getbyte();
	k_debug_bits("floppy_transfer_try1:1:c:",i);
	//k_debug_integer("floppy_transfer_try:i1:",i);
	i = getbyte();
	k_debug_bits("floppy_transfer_try1:2:h:",i);
	//k_debug_integer("floppy_transfer_try:i2:",i);
	i = getbyte();
	k_debug_bits("floppy_transfer_try1:3:r:",i);
	//k_debug_integer("floppy_transfer_try:i3:",i);
	i = getbyte();
	k_debug_bits("floppy_transfer_try1:3:n:",i);
	//k_debug_integer("floppy_transfer_try:i3:",i);

	k_debug_integer("floppy_transfer_try:floppybufferIndex:",floppybufferIndex);
	//return i != 2;

	retCode = (i != 2);

	return retCode;
}



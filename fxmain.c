
//#include "fxstartup.h"
#include "fxos.h"
#include "fxdos.h"

#include "DllMainBin.h"

#pragma section CODE=entry,offset $4:F000

int line = 2;

static int  msp = 0;
static char mainspinner[] = {'|','/','-','\\'};
static ULONG THIS_MODULE = 0x00000000;

LPVOID	pAPGMPTR = NULL;
typedef void (*DllMain)(UINT argc,LPVOID *argv);

void k_level_test(VOID);
void DeallocateNodeListString(LPCSTR name,LPVOID data);

void ReportMemory(UCHAR segment,ULONG block,ULONG size)
{
	char rmbuffer[16];
	int pos  = 2;

	pos = k_put_string(pos,line,"Memory Test Bank:",15,0);
	pos = k_put_string(pos,line,k_bytetohex(segment,rmbuffer),15,0);
	pos = k_put_string(pos,line," Found ",15,0);
	pos = k_put_string(pos,line,k_strip_padding(k_longtodec(size,rmbuffer)),15,0);
	pos = k_put_string(pos,line," Bytes    ",15,0);
}

void SpinMemory(UCHAR segment,ULONG block,ULONG size)
{
	int pos = 0;
	pos = k_put_string(pos,line,"System Memory Check:",15,0);
	k_put_char(pos,line,mainspinner[msp++],15,0);
	if(msp>3) msp = 0;
}

void DeallocateNodeListString(LPCSTR name,LPVOID data)
{
	if(name)
		k_debug_strings("DeallocateNodeListString:name:",(LPCHAR)name);

	k_debug_pointer("DeallocateNodeListString:",data);
	if(data)
	{
		k_mem_deallocate_heap(data);
	}
}
/*
void k_delay_nop(void)
{
	asm NOP;
	asm NOP;
	asm NOP;
	asm NOP;
	asm NOP;
	asm NOP;
	asm NOP;
	asm NOP;
	asm NOP;
	asm NOP;
}

void k_delay_1(void)
{
	int c = 0;

	for(c=0;c<10;c++)
	{
		k_delay_nop();
	}
}

void k_delay_1ms(void)
{
	k_delay_1();
}

void sleep(int msec)
{
	int c = 0;
	for(c=0;c<msec;c++)
	{
		k_delay_1ms();
	}
}
*/
void main(void)
{
	UMM_HEAP_INFO *pheapInfo = NULL;
	LPVOID ptrMemTest = NULL;
	ULONG byteCount = 0;
	//LPCHAR test1 = "   spaces to the left!";
	//LPCHAR test2 = "spaces to the right!        ";
	//LPCHAR test3 = "  spaces on both        ";
	//LPCHAR test4 = "  spaces on both        ";
	//LPCHAR test5 = "  spaces on both        ";
	ULONG heapSize = 0;
	//PFXSTRING fxtest = NULL;
	PFXNODE tokens = NULL;
	PFXNODE t = NULL;

	PFXNODELIST nodelist = NULL;

	//PFXNODE nodelist = NULL;
	//PFXNODE newnode  = NULL;
	//FXQUEUE *q = NULL;
	char rmbuffer[16];
	int i = 0;
	int j = 0;
	int pos = 0;
	ULONG availableMem = 0;
	KRESULT kerr = KERR_SUCCESS;

	k_initializeZeroPage();

	k_init_keyboard();
	k_uart_enableirq_ports();

	k_debug_crlf();
	k_debug_string("**********************************\r\n");
	k_debug_string("******  Welcome to FX/OS   *******\r\n");
	k_debug_string("******       Booting       *******\r\n");
	k_debug_string("**********************************\r\n");

	k_debug_string_com1("%OSBOOTING COM1%\r\n");
	k_debug_string_com2("%OSBOOTING COM2%\r\n");

	k_gui_init_mousepointer(TRUE);
	k_set_text_colors();

	k_initialize_text_fonts(0);
	k_initialize_text();
	k_enable_text_cursor(0);

	k_enable_text_mode();
	k_set_border_color(0x00,0x00,0x00);
	k_enable_border();

	k_debug_string("k_clear_screen\r\n");

	k_clear_screen(0);

	for(i=3200;i>0;i--)
	{
		for(j=0;j<256;j++)
		{
			asm NOP;
		}
	}
	/*
	k_debug_string("waiting...\r\n");
	for(i=16000;i>0;i--)
	{
		for(j=0;j<256;j++)
		{
			asm NOP;
		}
	}
	*/
	//*BORDER_X_SIZE = 5;
	//*BORDER_Y_SIZE = 5;

	k_debug_string("k_text_mode_dialog\r\n");
	k_text_mode_dialog(1,0,73,15,NULL);

	k_get_c256_major_version(rmbuffer);
	k_debug_strings("C256 VERSION MAJOR:",rmbuffer);
	k_get_c256_minor_version(rmbuffer);
	k_debug_strings("C256 VERSION MINOR:",rmbuffer);

	k_debug_pointer("BUILD SYSTEM HEAP:",(LPVOID)FXOS_BUILD_FAR_HEAP_ADDR);
	k_debug_pointer("             SIZE:",(LPVOID)FXOS_BUILD_FAR_HEAP_SIZE);


	k_debug_string("k_report_configuration\r\n");
	line = k_report_configuration(2,line);
	//k_run_loop();



	k_debug_string("k_fcheck_system_memory\r\n");
	availableMem = k_fcheck_system_memory(ReportMemory);

	k_getZeroPage()->availableMemory 	= availableMem;
	k_getZeroPage()->availableMemoryK	= availableMem/1024+1;

	heapSize = k_heap_integrity_check();
	k_debug_long("k_heap_integrity_check::heapsize:",heapSize);
	//pheapInfo = umm_info(NULL,0);

	k_debug_integer("sizeof(unsigned short int):",sizeof(unsigned short int));
	k_debug_integer("sizeof(size_t):",sizeof(size_t));

	k_debug_strings("DATE:",(LPSTR)k_get_date_string(rmbuffer));
	k_debug_strings("TIME:",(LPSTR)k_get_localtime_string(rmbuffer));

	//RTC_HRS[0]     = (0 << 4) + (8);
	//RTC_MIN[0]     = (5 << 4) + (8);
	//RTC_SEC[0]     = 0;

	//k_debug_strings("Initialize:","flpydsk_install");
	//asm cli;
	//flpydsk_install(6);
	//asm sei;

	//floppy_init();
	//asm sei;

	//flpydsk_read_sector(1);
	//flpydsk_read_sector(2);


/*
	RTC_HRS[0]     = (1 << 4) + (2);
	RTC_DAY[0]     = (1 << 4) + (0);
	RTC_MONTH[0]   = (1 << 4) + (0);
	RTC_CENTURY[0] = (2 << 4) + (0);
	RTC_YEAR[0]    = (1 << 4) + (9);

	while(1)
	{
		k_debug_integer("TIME:H:", (((RTC_HRS[0]&0x30)>>4) * 10)  + (RTC_HRS[0]&0x0F) );
		k_debug_integer("    :M:", (((RTC_MIN[0]&0x70)>>4) * 10)  + (RTC_MIN[0]&0x0F) );
		k_debug_integer("    :S:", (((RTC_SEC[0]&0x70)>>4) * 10)  + (RTC_SEC[0]&0x0F) );


		k_debug_integer("    :M:",  (((RTC_MONTH[0]&0x10)>>4)  * 10)  + (RTC_MONTH[0]&0x0F)   );
		k_debug_integer("    :D:",  (((RTC_DAY[0]&0x10)>>4)    * 10)  + (RTC_DAY[0]&0x0F)     );
		k_debug_integer("    :Y:",  (((RTC_YEAR[0]&0xF0)>>4)   * 10)  + (RTC_YEAR[0]&0x0F)    );
		k_debug_integer("    :C:",  (((RTC_CENTURY[0]&0xF0)>>4)* 10)  + (RTC_CENTURY[0]&0x0F) );

		k_debug_integer("    :RY:",  RTC_YEAR[0]);
		for(pos=0;pos<0xFFFF;pos++)
		{
			asm NOP;
			asm NOP;
			asm NOP;
			asm NOP;
			asm NOP;
			asm NOP;
			asm NOP;
			asm NOP;
			asm NOP;
			asm NOP;
			asm NOP;
			asm NOP;
			asm NOP;
		}
	}

*/
	/*
	kerr = KERR_SUCCESS;
	if(SUCCESS(kerr))
		k_debug_string("KERR_SUCCESS WORKED\r\n");

	kerr = KERR_FAIL;
	if(SUCCESS(kerr))
		k_debug_string("KERR_FAIL TEST FAILED\r\n");
	else
		k_debug_string("FAIL WORKED\r\n");

	kerr += 1024;
	if(SUCCESS(kerr))
		k_debug_string("KERR_FAIL TEST FAILED\r\n");
	else
		k_debug_string("FAIL WORKED\r\n");

	if(FAILED(kerr))
		k_debug_string("FAIL WORKED\r\n");
	else
		k_debug_string("KERR_FAIL TEST FAILED\r\n");
	*/
	//availableMem = k_fcheck_system_memory(SpinMemory);
	line++;
	line++;
	pos = 2;
	pos = k_put_string(pos,line,k_strip_padding(k_longtodec(k_getZeroPage()->availableMemoryK,rmbuffer)),15,0);
	pos = k_put_string(pos,line,"K RAM Available",15,0);

	k_debug_long("AVAIL MEM:", availableMem);

	line++;
	pos = 2;
	pos = k_put_string(pos,line,k_strip_padding(k_longtodec(heapSize/1024 ,rmbuffer)),15,0);
	pos = k_put_string(pos,line,"K HEAP RAM Available",15,0);


	//pos = 2;
	//line+=2;
	//pos = k_put_string(pos,line,"Initializing SD",5,0);
	//k_sd_initialize();


	k_debug_integer("sizeof(unsigned short int):",sizeof(unsigned short int));
	k_debug_integer("sizeof(FXOSMESSAGE):",sizeof(FXOSMESSAGE));
	k_debug_integer("sizeof(FXCMDMESSAGE):",sizeof(FXCMDMESSAGE));
	// version testing
	if(sizeof(FXOSMESSAGE)!=sizeof(FXCMDMESSAGE))
		k_exec_throw_exception(THIS_MODULE,0x10000001,"VERSION ERROR: FXOSMESSAGE size mismatch",-1);
	//
	k_debug_integer("k_get_cols_visible:",k_get_cols_visible());
	k_debug_integer("k_get_cols_per_line:",k_get_cols_per_line());
	k_debug_integer("k_get_lines_visible",k_get_lines_visible());
	k_debug_integer("k_get_lines_max:",k_get_lines_max());


	k_dos_load_drivers();
	//k_create_dos_device(FXDOS_SDC);

	/*
	k_debug_string("****");
	k_debug_string(test1);
	k_debug_string("****\r\n");

	k_debug_string("****");
	k_debug_string(test2);
	k_debug_string("****\r\n");

	k_debug_string("****");
	k_debug_string(test3);
	k_debug_string("****\r\n");


	k_debug_string("****");
	k_debug_string(k_string_ltrim(test1));
	k_debug_string("****\r\n");


	k_debug_string("****");
	k_debug_string(k_string_rtrim(test2));
	k_debug_string("****\r\n");

	k_debug_string("****");
	k_debug_string(k_string_ltrim(test3));
	k_debug_string("****\r\n");
	k_debug_string("****");
	k_debug_string(k_string_rtrim(test4));
	k_debug_string("****\r\n");
	k_debug_string("****");
	k_debug_string(k_string_trim(test5));
	k_debug_string("****\r\n");
	*/

	/*
	nodelist = k_nodelist_allocate_list("testlist",DeallocateNodeListString);
	if(nodelist)
	{
		k_nodelist_addtolist(nodelist,1,"node1",k_mem_allocate_heap(8));
		k_nodelist_addtolist(nodelist,2,"node2",NULL);
		k_nodelist_addtolist(nodelist,3,"node3",k_mem_allocate_heap(8));
		k_nodelist_addtolist(nodelist,1,"node4",k_mem_allocate_heap(8));
		k_nodelist_addtolist(nodelist,2,"node5",k_mem_allocate_heap(8));

		//k_nodelist_addtolist(nodelist,2,"node5",k_mem_allocate_heap(8));

		k_debug_strings("NodeList Name:",(LPCHAR)k_nodelist_getlistname(nodelist));

		k_debug_nodelist(k_nodelist_getfirstnode(nodelist));

		k_debug_pointer("NODELIST:",nodelist);
		k_debug_pointer("NODELIST->HEAD:",nodelist->listhead);
		k_nodelist_deallocate_list(nodelist);
	}
	*/

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

	/*
    q = malloc(sizeof(FXQUEUE));
    k_debug_pointer("QUEUE:", q);
    k_initialize(q);
    k_enqueue(q,10);
    k_enqueue(q,20);
    k_enqueue(q,30);
    k_debug_string("Queue before dequeue\r\n");
    k_debug_queue(q->front);
    k_dequeue(q);
    k_debug_string("Queue after dequeue\r\n");
    k_debug_queue(q->front);

	free(q);
	*/

	/*
	k_debug_string("**********************************\r\n");
	fxtest = k_fxstring_new("This is a test",64);
	k_debug_message("fxstring:text:" ,k_fxstring_as(fxtest));
	k_debug_integer("fxstring:size:" ,k_fxstring_size(fxtest));
	k_debug_integer("fxstring:length:" ,k_fxstring_length(fxtest));
	k_debug_integer("fxstring:pos:" ,k_fxstring_position(fxtest));
	k_debug_string("**********************************\r\n");
	k_debug_message("fxstring:text:" ,k_fxstring_addchar(fxtest,'*'));
	k_debug_integer("fxstring:length:" ,k_fxstring_length(fxtest));
	k_debug_integer("fxstring:pos:" ,k_fxstring_position(fxtest));
	k_debug_string("**********************************\r\n");
	k_debug_message("fxstring:text:" ,k_fxstring_addchar(fxtest,'#'));
	k_debug_integer("fxstring:length:" ,k_fxstring_length(fxtest));
	k_debug_integer("fxstring:pos:" ,k_fxstring_position(fxtest));
	k_debug_string("**********************************\r\n");
	k_debug_message("fxstring:text:" ,k_fxstring_add(fxtest,"at the end!"));
	k_debug_integer("fxstring:length:" ,k_fxstring_length(fxtest));
	k_debug_integer("fxstring:pos:" ,k_fxstring_position(fxtest));
	k_debug_string("**********************************\r\n");
	*/

	//k_debug_string(k_string_replace(k_string_replace("This is a %s1 of the replacement %s2 systems.", "%s1", "TEST1"), "%s2", "TEST2"));
	//k_debug_crlf();
	//k_debug_integers("k_debug_integers:%d1 %d2 %d3",2,4,5);

	//
	/*
	asm cli;
	while(1)
	{
		asm WAI;
	}
	*/
	//

	////k_main_loop(NULL);

	////
	// init trap table - temp location
	///

#ifdef USE_FX256_FMX
	/*
	memset(k_getKernelTrapTable(),0,512);
	k_getKernelTrapTable()[KT_DOS_GETDIRECTORY] = k_GetDirectory;
	k_getKernelTrapTable()[KT_DBG_STRING] = k_DebugOutString;
	*/
#endif
	/*
	k_debug_integer("APGM sizeof:",sizeof(APGMBIN));

	pAPGMPTR = ((LPCHAR)0x0E0000);//k_mem_allocate_heap(sizeof(APGMBIN));
	memcpy(pAPGMPTR,APGMBIN,sizeof(APGMBIN));

	k_debug_byte_array("APGM DATA:\r\n",pAPGMPTR,sizeof(APGMBIN));

	k_debug_string("Calling DllMain\r\n");

	//((DllMain)pAPGMPTR)(0,NULL);

	k_debug_string("Back from DllMain\r\n");
	*/

	//k_level_test();
	//while(1);


	k_event_loop();

}


void k_level_test(VOID)
{

	int i = 30000;
	int j = 30000;
	int x = 0;
	int y = 200;

	int boxx = 200;
	int boxy = 200;
	int incx = 1;
	int incy = 1;
	int size = 5;

	incx = size;
	incy = size;

	setColors();

	for(i=3200;i>0;i--)
	{
		for(j=0;j<256;j++)
		{
			asm NOP;
		}
	}

	/*
	*BM1_CONTROL_REG = 0x01;
	*BM1_START_ADDY_L = 0;
	*BM1_START_ADDY_M = 0;
	*BM1_START_ADDY_H = 0x10;

	*BM0_CONTROL_REG = 0x01;
	*BM0_START_ADDY_L = 0;
	*BM0_START_ADDY_M = 0;
	*BM0_START_ADDY_H = 0;


	k_debug_string("k_enable_bitmap_mode RESET 1a...\r\n");

	MASTER_CTRL_REG_H[0] = MSTR_CTRL_VIDEO_MODE0;
	MASTER_CTRL_REG_L[0] = MSTR_CTRL_GRAPH_MODE_EN;

	for(i=3200;i>0;i--)
	{
		for(j=0;j<256;j++)
		{
			asm NOP;
		}
	}

	k_debug_string("k_enable_bitmap_mode RESET 1b...\r\n");

	MASTER_CTRL_REG_H[0] = 0x00;
	MASTER_CTRL_REG_L[0] = MSTR_CTRL_GRAPH_MODE_EN;

	for(i=3200;i>0;i--)
	{
		for(j=0;j<256;j++)
		{
			asm NOP;
		}
	}

	k_debug_string("k_enable_bitmap_mode RESET 1c...\r\n");

	MASTER_CTRL_REG_H[0] = 0x00;
	MASTER_CTRL_REG_L[0] = MSTR_CTRL_GRAPH_MODE_EN;

	for(i=3200;i>0;i--)
	{
		for(j=0;j<256;j++)
		{
			asm NOP;
		}
	}

	k_debug_string("k_enable_bitmap_mode RESET 2...\r\n");

	MASTER_CTRL_REG_H[0] = 0x00;
	MASTER_CTRL_REG_L[0] = MSTR_CTRL_GRAPH_MODE_EN;
	for(i=3200;i>0;i--)
	{
		for(j=0;j<256;j++)
		{
			asm NOP;
		}
	}


	*BM1_CONTROL_REG = ( BM_ENABLE | BM_LUT0 );
	*BM0_CONTROL_REG = ( BM_ENABLE | BM_LUT0 );

	k_debug_string("k_enable_bitmap_mode RESET 3...\r\n");
	*MASTER_CTRL_REG_L 	= (MSTR_CTRL_GRAPH_MODE_EN | MSTR_CTRL_BITMAP_EN);

	for(i=3200;i>0;i--)
	{
		for(j=0;j<256;j++)
		{
			asm NOP;
		}
	}
	*/

	k_enable_bitmap_mode();

	k_gui_init_mousepointer(TRUE);

	k_disable_border();

	k_debug_string("CLEAR\r\n");

	k_vdma_fill_rect_ex(0,0,640,480,0,0x00);
	k_vdma_fill_rect_ex(0,0,640,480,0,0x10);

	k_debug_string("FILL 0x00\r\n");

	k_vdma_fill_rect_ex(200,200,100,100,15,0x00);
	k_vdma_fill_rect_ex(200,50,100,100,15,0x00);

	k_vdma_fill_rect_ex(0,0,640,480,0,0x10);

	x = 1;
	while(1)
	{
		k_vdma_fill_rect_ex(0,0,400,400,x,0x10);
		k_vdma_fill_rect_ex(400,400,200,80,15-x,0x10);

		/*
		i = 32000;
		for(y=0;y<30;y++)
		{
			k_debug_string("WAIT\r\n");
			while(i > 0)
			{
				i--;
				asm NOP;
				asm NOP;
				asm NOP;
				asm NOP;
				asm NOP;
				asm NOP;
			}
		}
		*/



		k_vdma_move_rect(boxx,boxy,100,100,incx,0,15,0x00);
		k_vdma_fill_rect_ex(boxx,boxy - 150,100,100,0,0x00);
		//k_draw_rect_slow(boxx,boxy, boxx+100, boxy+100, 0);

		//k_draw_circle(boxx,boxy,100,0);


		boxx+=incx;
		if(incx > 0 && ((boxx + size + 100) > 640))
			incx = (-1 * size);
		if(incx < 0 && ((boxx - size) < 0))
			incx = size;

		/*
		boxy+=incy;
		if(incy > 0 && ((boxy+100)>480))
			incy = (-1 * size);
		if(incy < 0 && (boxy < 0))
			incy = size;
		*/
		k_vdma_fill_rect_ex(boxx,boxy - 150,100,100,15,0x00);
		//k_draw_circle(boxx,boxy,100,15);
		//k_draw_rect_slow(boxx,boxy, boxx+100, boxy+100, 15);


		//k_debug_string("SECOND\r\n");

		x++;
		if(x > 14)
			x = 0;
	}
	//k_vdma_fill_rect(10,10,100,100,5);


	return;
}



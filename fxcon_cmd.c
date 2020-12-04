
#include "fxconsole.h"
#include "fxdos.h"
#include "fxnode.h"
#include "fxmemorymanager.h"
#include "fxgui.h"

#pragma section CODE=CONCMD,offset $07:0000

static int consoleAppOffset = 10;

UINT cmd_TIME(PFXPROCESS process,PFXNODE tokens)
{
	BYTE   signature[8];
	CHAR   time[16];
	RECT   rect;
	HANDLE hWin;
	UINT   seed;

	int random;

	k_debug_string("cmd_TIME\r\n");

	getTokenSig(tokens,signature);

	k_get_localtime_string(time);


	seed = k_get_rtc_second();
	srand(seed);
	for(seed = 0;seed<5;seed++)
		k_debug_integer("cmd_TIME::random:",rand());


	k_send_process_command_message(process,FX_CONTROL_COMMAND,CTL_CMD_CAPTION,0,(ULONG)k_string_copy_string(time),0L);


	k_debug_strings("cmd_TIME::time:",time);

	return 0;
}

UINT cmd_Window(PFXPROCESS process,PFXNODE tokens)
{
	BYTE 	signature[8];
	RECT rect;
	HANDLE hWin;

	k_debug_string("cmd_Window\r\n");

	getTokenSig(tokens,signature);

	rect.x = 0;
	rect.y = 0;
	rect.width = 50;
	rect.height = 25;
	k_create_text_window(&rect,"Text Window",&hWin);

	return 0;
}

UINT cmd_START(PFXPROCESS process,PFXNODE tokens)
{
	LPCHAR  name = NULL;
	LPCHAR  offset = NULL;
	CHAR 	signature[16];

	PFXPROCESS pprocess = NULL;

	CHAR message[64];

	k_debug_string("cmd_START\r\n");

	getTokenSig(tokens,signature);

	if(strcmp(signature,"#AAB") == 0)
	{
		name    = (LPCHAR)((PTOKEN)k_nodelist_get(tokens,3)->data)->text;
		offset  = (LPCHAR)((PTOKEN)k_nodelist_get(tokens,4)->data)->text;

		k_debug_strings("cmd_START::name:",name);
		k_debug_strings("cmd_START::name:",offset);

		if(strcmp(name,"consoleapp") == 0)
		{
			pprocess =  k_exec_createProcess("consoleApp",DefConsoleProc2,(LPVOID)consoleAppOffset++);
			if(pprocess!=NULL)
			{
				k_attach_process_events(pprocess->execProc,pprocess);
				k_exec_set_process_foreground(pprocess,FALSE);

				k_inttodec(pprocess->procId,signature);

				strcpy(message,"Started process:");
				strcat(message,signature);

				k_send_process_command_message(process,FX_CONTROL_COMMAND,CTL_CMD_CAPTION,0,(ULONG)k_string_copy_string((LPCSTR)message),0L);
			}
		}

	}

	return 0;
}

UINT cmd_EXIT(PFXPROCESS process,PFXNODE tokens)
{
	LPCHAR  name = NULL;
	LONG    procId = 0;
	CHAR 	signature[16];

	PFXPROCESS pprocess = NULL;

	CHAR message[64];

	k_debug_string("cmd_EXIT\r\n");

	getTokenSig(tokens,signature);

	if(strcmp(signature,"#AB") == 0)
	{
		name    = (LPCHAR)((PTOKEN)k_nodelist_get(tokens,3)->data)->text;

		k_debug_strings("cmd_EXIT::name:",name);

		procId = atol(name);

		k_debug_long("cmd_EXIT::procid:",procId);

		k_exec_signal_terminate(procId);
	}

	return 0;
}

UINT cmd_RESUME(PFXPROCESS process,PFXNODE tokens)
{
	LPCHAR  name = NULL;
	LONG    procId = 0;
	CHAR 	signature[16];

	PFXPROCESS pprocess = NULL;

	CHAR message[64];

	k_debug_string("cmd_RESUME\r\n");

	getTokenSig(tokens,signature);

	if(strcmp(signature,"#AB") == 0)
	{
		name    = (LPCHAR)((PTOKEN)k_nodelist_get(tokens,3)->data)->text;

		k_debug_strings("cmd_RESUME::name:",name);

		procId = atol(name);

		k_debug_long("cmd_RESUME::procid:",procId);

		k_exec_signal_start(procId);
	}

	return 0;
}

UINT cmd_PAUSE(PFXPROCESS process,PFXNODE tokens)
{
	LPCHAR  name = NULL;
	LONG    procId = 0;
	CHAR 	signature[16];

	PFXPROCESS pprocess = NULL;

	CHAR message[64];

	k_debug_string("cmd_PAUSE\r\n");

	getTokenSig(tokens,signature);

	if(strcmp(signature,"#AB") == 0)
	{
		name    = (LPCHAR)((PTOKEN)k_nodelist_get(tokens,3)->data)->text;

		k_debug_strings("cmd_PAUSE::name:",name);

		procId = atol(name);

		k_debug_long("cmd_PAUSE::procid:",procId);

		k_exec_signal_sleep(procId);
	}

	return 0;
}


UINT cmd_DIR(PFXPROCESS process,PFXNODE tokens)
{
	BYTE 	signature[8];

	PFXNODE dirList = NULL;
	LPCHAR  drive   = NULL;
	LPCHAR  path   = NULL;
	LPCHAR	diskName = NULL;

	DISKINFO diskInfo;

	k_debug_string("cmd_DIR\r\n");

	getTokenSig(tokens,signature);

	/*
	if(strcmp(signature,"#AAC") == 0)
	{
		drive = (LPCHAR)((PTOKEN)k_nodelist_get(tokens,3)->data)->text;
		path  = (LPCHAR)((PTOKEN)k_nodelist_get(tokens,4)->data)->text;

		k_debug_strings("cmd_DIR::drive:",drive);
		k_debug_strings("cmd_DIR::path:",path);
		k_debug_strings("cmd_DIR::drive:",drive);

		if(strcmp(drive,"pc") == 0)
		{
			k_debug_string_com1("%SUBDIRECTORY%");
			k_debug_string_com1(path);
		}

	}
	else if(strcmp(signature,"#AA") == 0)
	{
		drive = (LPCHAR)((PTOKEN)k_nodelist_get(tokens,3)->data)->text;

		k_debug_strings("cmd_DIR::drive:",drive);

		if(strcmp(drive,"pc") == 0)
		{
			k_debug_string_com1("%DIRECTORY%");
		}
		else if(strcmp(drive,"sd") == 0)
		{
			dirList = k_sd_read_dir();
			if(dirList!=NULL)
			{
				k_clear_screen(0);

				process->consoleCtl->curX = 0;
				process->consoleCtl->curY = 0;

				k_nodelist_foreach_data(dirList,process,foreach_file_entry);
				k_dos_dealloc_filelist(dirList);
				process->consoleCtl->curY++;
			}
		}
	}
	else if(strcmp(signature,"#A") == 0)
	{
		dirList = k_sd_read_dir();
		if(dirList!=NULL)
		{
			k_clear_screen(0);

			process->consoleCtl->curX = 0;
			process->consoleCtl->curY = 0;

			k_nodelist_foreach_data(dirList,process,foreach_file_entry);
			k_dos_dealloc_filelist(dirList);

			process->consoleCtl->curY++;
		}
	}
	else
	{
		k_debug_string("DIR Syntax Error\r\n");
	}
	*/


	return 0;
}

UINT cmd_VOL(PFXPROCESS process,PFXNODE tokens)
{
	int pos = 0;
	DISKINFO diskInfo;

	k_debug_string("cmd_VOL\r\n");

	/*
	if(k_sd_read_vol(&diskInfo))
	{
		k_clear_screen(0);

		process->consoleCtl->curX = 0;
		process->consoleCtl->curY = 0;

		pos = k_put_string(0,process->consoleCtl->curY,"Volume:",15,0);
		process->consoleCtl->curY++;
		pos = k_put_string(0,process->consoleCtl->curY,diskInfo.stgName,15,0);

		//k_send_message(NULL,FX_DISK_INSERT,&diskInfo,sizeof(DISKINFO));
	}
	else
	{
		//k_send_message(NULL,FX_DISK_REMOVE,NULL,0);
	}
	*/
	return 0;
}

UINT cmd_TESTSD(PFXPROCESS process,PFXNODE tokens)
{
	//k_sd_test();

	return 0;
}


UINT cmd_WORKBENCH(PFXPROCESS process,PFXNODE tokens)
{
	k_debug_string("cmd_WORKBENCH\r\n");
	k_init_desktop(process);

	process->consoleCtl->desktopMode = TRUE;
	//k_sd_initialize();


	k_user_CreateWindow(0,
						"consoleWindowClass",
						"TestWindow1",
						100,100,
						200,200,
						NULL,
						NULL,
						NULL);

	k_user_CreateWindow(0,
						"consoleWindowClass",
						"TestWindow2",
						250,100,
						200,200,
						NULL,
						NULL,
						NULL);

	k_user_CreateWindow(0,
						"consoleWindowClass",
						"TestWindow3",
						175,200,
						200,200,
						NULL,
						NULL,
						NULL);



	return 0;
}

UINT cmd_CLEAR(PFXPROCESS process,PFXNODE tokens)
{
	k_debug_string("cmd_CLEAR\r\n");
	k_clear_screen(0);

	process->consoleCtl->curX = 0;
	process->consoleCtl->curY = 0;

	return 0;
}


UINT cmd_FCOLOR(PFXPROCESS process,PFXNODE tokens)
{
	k_debug_string("cmd_FCOLOR\r\n");
	return 0;
}

UINT cmd_BCOLOR(PFXPROCESS process,PFXNODE tokens)
{
	k_debug_string("cmd_BCOLOR\r\n");
	return 0;
}

UINT cmd_INIT(PFXPROCESS process,PFXNODE tokens)
{
	BYTE 	signature[8];
	LPCHAR	diskName = NULL;
	DISKINFO diskInfo;

	k_debug_string("cmd_INIT\r\n");

	getTokenSig(tokens,signature);

	if(strcmp(signature,"#AC") == 0)
	{
		diskName = ((PTOKEN)k_nodelist_get(tokens,3)->data)->text;

		memset(&diskInfo,0,sizeof(DISKINFO));
		strcpy(diskInfo.stgName,diskName);

		k_debug_message("INIT DISK NAME:",diskName);
		//k_sd_write_file(CONST_FXINFO_FILE,&diskInfo,sizeof(DISKINFO));

	}
	else
	{
		k_debug_string("INIT Syntax Error\r\n");
	}


	return 0;
}

UINT cmd_TASKS(PFXPROCESS process,PFXNODE tokens)
{
	int index = 0;
	PFXPROCESS FAR *processes = NULL;

	CHAR signature[16];
	CHAR message[80];

	k_debug_string("cmd_TASKS\r\n");

	processes = k_exec_process_list();

	for(index=0;index < MAX_PROCESS;index++)
	{
		if(processes[index]!=NULL && processes[index]->status!=PROCESS_STATUS_TERMINATED)
		{
			k_debug_long   ("Process:",processes[index]->procId);
			k_debug_strings("   Name:",(LPSTR)processes[index]->commandLine);


			k_inttodec(processes[index]->procId,signature);

			strcpy(message,"PID:");
			strcat(message,signature);
			strcat(message,"[");

			k_inttodec(processes[index]->status,signature);
			strcat(message,signature);

			strcat(message,"] ");
			strcat(message,processes[index]->commandLine);


			k_send_process_command_message(process,FX_CONTROL_COMMAND,CTL_CMD_CAPTION,0,(ULONG)k_string_copy_string((LPCSTR)message),0L);


		}
	}


	return 0;
}



UINT cmd_FRONT(PFXPROCESS process,PFXNODE tokens)
{
	k_debug_string("cmd_FRONT\r\n");
	return 0;
}

UINT cmd_BACK(PFXPROCESS process,PFXNODE tokens)
{
	k_debug_string("cmd_BACK\r\n");
	return 0;
}

UINT cmd_CHRDIR(PFXPROCESS process,PFXNODE tokens)
{
	k_debug_string("cmd_CHRDIR\r\n");
	return 0;
}

UINT cmd_DISPLAY(PFXPROCESS process,PFXNODE tokens)
{
	k_debug_string("cmd_DISPLAY\r\n");
	return 0;
}

UINT cmd_NEWDIR(PFXPROCESS process,PFXNODE tokens)
{
	BYTE signature[8];
	LPCHAR dirName = NULL;

	k_debug_string("cmd_NEWDIR\r\n");

	getTokenSig(tokens,signature);

	if(strcmp(signature,"#AC") == 0)
	{
		dirName = ((PTOKEN)k_nodelist_get(tokens,3)->data)->text;

		k_debug_message("NEWDIR CORRECT:",dirName);
		//k_sd_create_dir(dirName);
	}
	else
	{
		k_debug_string("NEWDIR Syntax Error\r\n");
	}


	return 0;
}


UINT cmd_SEND(PFXPROCESS process,PFXNODE tokens)
{
	BYTE signature[8];
	LPCHAR dirName = NULL;


	k_debug_string("cmd_SEND\r\n");


	getTokenSig(tokens,signature);

	if(signature[2] == TTYPE_WORD && signature[3] == TTYPE_STRING)
	{
		dirName = ((PTOKEN)k_nodelist_get(tokens,3)->data)->text;

		k_debug_message("SEND CORRECT:",dirName);
		k_debug_string_com1(dirName);
	}
	else
	{
		k_debug_string("SEND Syntax Error\r\n");
	}

	return 0;
}

UINT cmd_LINEUP(PFXPROCESS process,PFXNODE tokens)
{
	LPCHAR  name = NULL;
	UINT    scrollSize = 0;
	CHAR 	signature[16];
	int i = 0;
	int j = 0;

	k_debug_string("cmd_LINEUP\r\n");

	getTokenSig(tokens,signature);
	/*
	if(strcmp(signature,"#A") == 0)
	{
		name    = (LPCHAR)((PTOKEN)k_nodelist_get(tokens,3)->data)->text;

		k_debug_strings("cmd_LINEUP::arg:",name);

		scrollSize = atol(name);

		k_debug_long("cmd_LINEUP::scrollSize:",scrollSize);

		k_bitblt(10,10,100,100,0,0);

	}
	*/


	k_send_process_command_message(process,FX_SCROLLBAR_COMMAND,CTL_VERT_SCROLL,0,1L,0L);



	return 0;
}



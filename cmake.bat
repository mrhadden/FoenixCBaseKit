@echo off

SET JAVA_HOME=

SET KERNELNAME=boot

SET MODEL=USE_FX256_B2
SET BUILD=Y
SET VERBOSE=
SET TRANSFER=
SET CLEAN=
SET FMX=
SET FLOAT=

SET MODELLIB=CL
SET FLOATLIB=-LML

set argCount=0
for %%x in (%*) do (
   set /A argCount+=1
)


REM IF %argCount% == 0 GOTO usage

for %%x in (%*) do (
	IF [%%x] == [-n] SET BUILD=
	IF [%%x] == [-v] SET VERBOSE=Y
	IF [%%x] == [-t] SET TRANSFER=Y
	IF [%%x] == [-c] SET CLEAN=Y
	IF [%%x] == [-fmx] SET FMX=Y
	IF [%%x] == [-f] SET FLOAT=Y
)

IF [%FLOAT%] == [] ( 
SET FLOATLIB=
) else (
SET FLOATLIB=-LML
)

echo Using Library %MODELLIB%

IF [%JAVA_HOME%] == [] ( 
SET JAVABIN=java.exe
) else (
SET JAVABIN="%JAVA_HOME%\bin\java.exe"
)

REM set JAVA_HOME=G:\devtools\java\jdk1.8.0_211\jre

IF [%FMX%] == [Y] (
SET MODEL=USE_FX256_FMX
)

ECHO "Building with %MODEL%"

SET CCTEMP=%TEMP%
SET WDC_INC_65816=G:\devtools\WDCTools\wdc\Tools\include
SET WDC_INC_6502=G:\devtools\WDCTools\wdc\Tools\include
SET WDC_LIB=G:\devtools\WDCTools\wdc\Tools\lib

SET SREC_DIR=G:\devtools\srec

SET COMPILER=G:\devtools\WDCTools\wdc\Tools\bin\wdc816cc.exe

SET ASSEMBLER=G:\devtools\WDCTools\wdc\Tools\bin\wdc816AS.exe
REM ASSEMBLER=G:\devtools\WDCTools\wdc\Tools\bin\WDC02AS.exe

SET LINKER=G:\devtools\WDCTools\wdc\Tools\bin\wdcln.exe
SET INCLUDES=-IG:\devprojects\6502
REM SET OPTIONS=-DUSING_816 -DUSING_DEBUG -ML -MT -LT -PX -WO -A -BS
SET ASM_OPTIONS=-DUSING_816 -DLARGE -V -l 

REM SET OPTIONS=-DFXOS_WITH_LOCK -D%MODEL% -DUSING_816 -DLARGE -ML -MT -LT -PX -WO -WR -A -BS -SO0S
SET OPTIONS=-D%MODEL% -DUSING_816 -DLARGE -ML -MT -LT -PX -WO -WR -A -BS -SO0S
REM SET OPTIONS=-DUSE_FX256_FMX -DUSING_816 -DLARGE -ML -MT -LT -PX -WO -WR -A -BS -SO0S

REM SET LINK_OPT= -CC020,C020 -T -G -B
SET ASM_OPT=-G -V -L -W
REM MAIN WOKRING 
REM SET LINK_OPT=-C1A0000,1A0000 -D1C0000,1C0000 -T -G -B
REM MOVE LOWER
SET LINK_OPT=-C010000,010000 -D020000 -T -G -B -Q

REM SET LINK_OPT= -C15000A,15000A -D160000,160000 -T -G -B
REM SET LINK_OPT= -C150000,C150000 -T -G
REM OPTIONS=-lt -PX -A
SET LIBS=-LG:\devtools\WDCTools\wdc\Tools\lib

SET TASSDIR=G:\devprojects\c256feonix\kernel-builds\Kernel-Trinity-11-Cleaned-up
SET CURDIR=%~dp0

IF [%CLEAN%] == [Y] ( 
	del /q srec.out
	del /q myprog.hex
	del /q myprog.s28.hex
	
	del /q *.obj
	del /q *.o
	del /q *.bnk	
	del /q *.sym	
	del /q *.lst
	del /q *.hex
	del /q *.map
	del /q *.bin
)


IF [%VERBOSE%] == [Y] ( 

echo Build Settings:
echo WDC 65816 Includes:%WDC_INC_65816%
echo WDC  6502 Includes:%WDC_INC_6502%
echo WDC LIB:%WDC_LIB%
echo SREC DIR:%SREC_DIR%
echo COMPILER:%COMPILER%
echo ASSEMBLER:%ASSEMBLER%
echo LINKER:%LINKER%
echo INCLUDES:%INCLUDES%
echo OPTIONS:%OPTIONS%
echo LINK OPTIONS:%LINK_OPT%
echo LIBS:%LIBS%
echo TASSDIR:%TASSDIR%
echo CURRENT DIR:%CURDIR%

)

IF [%BUILD%] == [Y] (
del /Q *.s

REM %COMPILER% %INCLUDES% %OPTIONS% -Ofxdrawing.s fxdrawing.c
REM %ASSEMBLER% -V -l fxdrawing.s -o fxdrawing.obj

REM %COMPILER% %INCLUDES% %OPTIONS% -Otasking.s tasking.c
REM %ASSEMBLER% -V -l tasking.s -o tasking.obj

%ASSEMBLER% %ASM_OPTIONS% uart.asm -o uart.obj
%ASSEMBLER% %ASM_OPTIONS% fxsdcard.asm -o fxsdcard.obj

%ASSEMBLER% %ASM_OPTIONS% fxloader.asm -o fxloader.obj
%ASSEMBLER% %ASM_OPTIONS% Interrupt_Handler.asm -o Interrupt_Handler.obj

echo Compling fxheapnear.c
%COMPILER% %INCLUDES% %OPTIONS% -O fxheapnear.s fxheapnear.c
%ASSEMBLER% %ASM_OPTIONS% fxheapnear.s -o fxheapnear.obj

echo Compling fxheapfar.c
%COMPILER% %INCLUDES% %OPTIONS% -O fxheapfar.s fxheapfar.c
%ASSEMBLER% %ASM_OPTIONS% fxheapfar.s -o fxheapfar.obj


echo Compling MINDRVR.C
%COMPILER% %INCLUDES% %OPTIONS% -O MINDRVR.s MINDRVR.C
%ASSEMBLER% %ASM_OPTIONS% MINDRVR.s -o MINDRVR.obj


echo Compile umm_malloc.c
%COMPILER% %INCLUDES% %OPTIONS% -O umm_malloc.s umm_malloc.c
%ASSEMBLER% %ASM_OPTIONS% umm_malloc.s -o umm_malloc.obj

echo Compile filesys
%COMPILER% %INCLUDES% %OPTIONS% -O filesys.s FILE_SYS.C
%ASSEMBLER% %ASM_OPTIONS% filesys.s -o filesys.obj

echo Compile halbase
%COMPILER% %INCLUDES% %OPTIONS% -O halbase.s HAL_BASE.C
%ASSEMBLER% %ASM_OPTIONS% halbase.s -o halbase.obj

echo Compile halbase
%COMPILER% %INCLUDES% %OPTIONS% -O parahw.s PARA_HW.C
%ASSEMBLER% %ASM_OPTIONS% parahw.s -o parahw.obj

echo Compile fxdos
%COMPILER% %INCLUDES% %OPTIONS% -O fxdos.s fxdos.c
%ASSEMBLER% %ASM_OPTIONS% fxdos.s -o fxdos.obj

echo Compile fxnode
%COMPILER% %INCLUDES% %OPTIONS% -O fxnode.s fxnode.c
%ASSEMBLER% %ASM_OPTIONS% fxnode.s -o fxnode.obj

echo Compile fxexec
%COMPILER% %INCLUDES% %OPTIONS% -O fxexec.s fxexec.c
%ASSEMBLER% %ASM_OPTIONS% fxexec.s -o fxexec.obj


echo Compile fxstring
%COMPILER% %INCLUDES% %OPTIONS% -O fxstring.s fxstring.c
%ASSEMBLER% %ASM_OPTIONS% fxstring.s -o fxstring.obj

echo Compile fxconsole
%COMPILER% %INCLUDES% %OPTIONS% -O fxconsole.s fxconsole.c
%ASSEMBLER% %ASM_OPTIONS% fxconsole.s -o fxconsole.obj

echo Compile fxkernel
%COMPILER% %INCLUDES% %OPTIONS% -O fxkernel.s fxkernel.c
%ASSEMBLER% %ASM_OPTIONS% fxkernel.s -o fxkernel.obj

echo Compile fxmain
%COMPILER% %INCLUDES% %OPTIONS% -Ofxmain.s fxmain.c
%ASSEMBLER% %ASM_OPTIONS% fxmain.s -o fxmain.obj

echo Compile fxmouse
%COMPILER% %INCLUDES% %OPTIONS% -Ofxmouse.s fxmouse.c
%ASSEMBLER% %ASM_OPTIONS% fxmouse.s -o fxmouse.obj

echo Compile fxstartup
REM %COMPILER% %INCLUDES% %OPTIONS% -Ofxstartup.s fxstartup.c
REM %ASSEMBLER% %ASM_OPTIONS% fxstartup.s -o fxstartup.obj

echo Compile fxmemorymanager
%COMPILER% %INCLUDES% %OPTIONS% -O fxmemorymanager.s fxmemorymanager.c
%ASSEMBLER% %ASM_OPTIONS% fxmemorymanager.s -o fxmemorymanager.obj

echo Compile fxeventmanager
%COMPILER% %INCLUDES% %OPTIONS% -O fxeventmanager.s fxeventmanager.c
%ASSEMBLER% %ASM_OPTIONS% fxeventmanager.s -o fxeventmanager.obj

echo Compile fxdesktop
REM COMPILER% %INCLUDES% %OPTIONS% -O fxdesktop.s fxdesktop.c
REM %ASSEMBLER% %ASM_OPTIONS% fxdesktop.s -o fxdesktop.obj

echo Compile fxirq
%COMPILER% %INCLUDES% %OPTIONS% -Ofxirq.s fxirq.c
%ASSEMBLER% %ASM_OPTIONS% fxirq.s -o fxirq.obj

REM %COMPILER% %INCLUDES% %OPTIONS% -Obasic.s basic.c
REM %ASSEMBLER% -V -l basic.s -o basic.obj

echo Compile fxfont
%COMPILER% %INCLUDES% %OPTIONS% -Ofxfont.s fxfont.c
%ASSEMBLER% -V -l fxfont.s -o fxfont.obj

REM echo Compile fxwindowmanager.c
REM %COMPILER% %INCLUDES% %OPTIONS% -O fxwindowmanager.s fxwindowmanager.c
REM %ASSEMBLER% %ASM_OPTIONS% fxwindowmanager.s -o fxwindowmanager.obj

echo Compile fxwindowmanagerV2.c
%COMPILER% %INCLUDES% %OPTIONS% -O fxwindowmanagerV2.s fxwindowmanagerV2.c
%ASSEMBLER% %ASM_OPTIONS% fxwindowmanagerV2.s -o fxwindowmanager.obj


echo Compile fxmenumanager.c
%COMPILER% %INCLUDES% %OPTIONS% -O fxmenumanager.s fxmenumanager.c
%ASSEMBLER% %ASM_OPTIONS% fxmenumanager.s -o fxmenumanager.obj

REM echo Compile fxgui
REM %COMPILER% %INCLUDES% %OPTIONS% -O fxgui.s fxgui.c
REM %ASSEMBLER% %ASM_OPTIONS% fxgui.s -o fxgui.obj

echo Compile fxguiV2
%COMPILER% %INCLUDES% %OPTIONS% -O fxguiV2.s fxguiV2.c
%ASSEMBLER% %ASM_OPTIONS% fxguiV2.s -o fxgui.obj


echo Compile fx_ctl_scrollbar
%COMPILER% %INCLUDES% %OPTIONS% -O fx_ctl_scrollbar.s fx_ctl_scrollbar.c
%ASSEMBLER% %ASM_OPTIONS% fx_ctl_scrollbar.s -o fx_ctl_scrollbar.obj

echo Compile fx_ctl_listbox
%COMPILER% %INCLUDES% %OPTIONS% -O fx_ctl_listbox.s fx_ctl_listbox.c
%ASSEMBLER% %ASM_OPTIONS% fx_ctl_listbox.s -o fx_ctl_listbox.obj


echo Compile fxos_desktop_proc
%COMPILER% %INCLUDES% %OPTIONS% -O fxos_desktop_proc.s fxos_desktop_proc.c
%ASSEMBLER% -V -l fxos_desktop_proc.s -o fxos_desktop_proc.obj

echo Compile fxos_desktop_proc
%COMPILER% %INCLUDES% %OPTIONS% -O fxcon_cmd.s fxcon_cmd.c
%ASSEMBLER% -V -l fxcon_cmd.s -o fxcon_cmd.obj

echo Compile fxos_desktop_proc
%COMPILER% %INCLUDES% %OPTIONS% -O flpydsk.s flpydsk.c
%ASSEMBLER% -V -l flpydsk.s -o flpydsk.obj

echo Compile fxfloppy
%COMPILER% %INCLUDES% %OPTIONS% -O fxfloppy.s fxfloppy.c
%ASSEMBLER% -V -l fxfloppy.s -o fxfloppy.obj

echo Compile fxuser
%COMPILER% %INCLUDES% %OPTIONS% -O fxuser.s fxuser.c
%ASSEMBLER% -V -l fxuser.s -o fxuser.obj

echo Compile ff
%COMPILER% %INCLUDES% %OPTIONS% -O ff.s ff.c
%ASSEMBLER% -V -l ff.s -o ff.obj

echo Compile ff
%COMPILER% %INCLUDES% %OPTIONS% -O diskio.s diskio.c
%ASSEMBLER% -V -l diskio.s -o diskio.obj

echo Compile OMF_Dc_Memory
%COMPILER% %INCLUDES% %OPTIONS% -O omf_mem.s OMF_Dc_Memory.c
%ASSEMBLER% -V -l omf_mem.s -o omf_mem.obj

echo Compile OMF_Dc_shared
%COMPILER% %INCLUDES% %OPTIONS% -O omf_shared.s OMF_Dc_shared.c
%ASSEMBLER% -V -l omf_shared.s -o omf_shared.obj

echo Compile OMF_Load
%COMPILER% %INCLUDES% %OPTIONS% -O omf_load.s OMF_Load.c
%ASSEMBLER% -V -l omf_load.s -o omf_load.obj

echo Compile OMF_Record
%COMPILER% %INCLUDES% %OPTIONS% -O omf_record.s OMF_Record.c
%ASSEMBLER% -V -l omf_record.s -o omf_record.obj

echo Compile OMF_Extract
%COMPILER% %INCLUDES% %OPTIONS% -O omf_extract.s OMF_Extract.c
%ASSEMBLER% -V -l omf_extract.s -o omf_extract.obj

echo Compile OMF_Dump
%COMPILER% %INCLUDES% %OPTIONS% -O omf_dump.s OMF_Dump.c
%ASSEMBLER% -V -l omf_dump.s -o omf_dump.obj

echo Compiling DRIVER_B2Console.c
%COMPILER% %INCLUDES% %OPTIONS% -O DRIVER_B2Console.s DRIVER_B2Console.c
%ASSEMBLER% -V -l DRIVER_B2Console.s -o DRIVER_B2Console.obj

echo Compiling DRIVER_B2SDCard.c
%COMPILER% %INCLUDES% %OPTIONS% -O DRIVER_B2SDCard.s DRIVER_B2SDCard.c
%ASSEMBLER% -V -l DRIVER_B2SDCard.s -o DRIVER_B2SDCard.obj

echo Compiling DRIVER_FMXSDCard.c
%COMPILER% %INCLUDES% %OPTIONS% -O DRIVER_FMXSDCard.s DRIVER_FMXSDCard.c
%ASSEMBLER% -V -l DRIVER_FMXSDCard.s -o DRIVER_FMXSDCard.obj

REM %LINKER% %LINK_OPT% -HB   fxloader.obj fxstartup.obj Interrupt_Handler.obj -LCL -O %KERNELNAME%.bin
REM %LINKER% %LINK_OPT% -HM28 fxloader.obj fxstartup.obj Interrupt_Handler.obj -LCL -O %KERNELNAME%.s28.hex
REM %LINKER% %LINK_OPT% -HB   fxmain.obj fxeventmanager.obj uart.obj fxloader.obj fxstartup.obj basic.obj basicdrawing.obj fxfont.obj fxsdcard.obj fxdesktop.obj fxirq.obj -LCL -O %KERNELNAME%.bin
REM %LINKER% %LINK_OPT% -HM28 fxmain.obj fxeventmanager.obj uart.obj fxloader.obj fxstartup.obj basic.obj basicdrawing.obj fxfont.obj fxsdcard.obj fxdesktop.obj fxirq.obj -LCL -O %KERNELNAME%.s28.hex

IF [%FMX%] == [Y] (
echo Compile FMX LINK
%LINKER% %LINK_OPT% -HB    DRIVER_B2Console.obj DRIVER_FMXSDCard.obj DRIVER_B2SDCard.obj  diskio.obj ff.obj fxuser.obj fxheapfar.obj fxheapnear.obj MINDRVR.obj fxfloppy.obj fxos_desktop_proc.obj fxwindowmanager.obj fx_ctl_scrollbar.obj fx_ctl_listbox.obj fxmenumanager.obj fxmemorymanager.obj umm_malloc.obj parahw.obj filesys.obj halbase.obj fxdos.obj fxexec.obj fxkernel.obj fxconsole.obj fxgui.obj fxstring.obj fxmain.obj  fxeventmanager.obj uart.obj fxloader.obj fxfont.obj fxsdcard.obj fxirq.obj fxmouse.obj fxnode.obj fxcon_cmd.obj %FLOATLIB% -L%MODELLIB% -O %KERNELNAME%.bin
%LINKER% %LINK_OPT% -HM28  DRIVER_B2Console.obj DRIVER_FMXSDCard.obj DRIVER_B2SDCard.obj  diskio.obj ff.obj fxuser.obj fxheapfar.obj fxheapnear.obj MINDRVR.obj fxfloppy.obj fxos_desktop_proc.obj fxwindowmanager.obj fx_ctl_scrollbar.obj fx_ctl_listbox.obj fxmenumanager.obj fxmemorymanager.obj umm_malloc.obj parahw.obj filesys.obj halbase.obj fxdos.obj fxexec.obj fxkernel.obj fxconsole.obj fxgui.obj fxstring.obj fxmain.obj  fxeventmanager.obj uart.obj fxloader.obj fxfont.obj fxsdcard.obj fxirq.obj fxmouse.obj fxnode.obj fxcon_cmd.obj %FLOATLIB% -L%MODELLIB% -O %KERNELNAME%.s28.hex
) ELSE (
echo Compile B2 LINK
%LINKER% %LINK_OPT% -HB   DRIVER_B2Console.obj DRIVER_FMXSDCard.obj DRIVER_B2SDCard.obj fxuser.obj fxheapfar.obj fxheapnear.obj MINDRVR.obj fxfloppy.obj fxos_desktop_proc.obj fxwindowmanager.obj fx_ctl_scrollbar.obj fx_ctl_listbox.obj fxmenumanager.obj fxmemorymanager.obj umm_malloc.obj parahw.obj filesys.obj halbase.obj fxdos.obj fxexec.obj fxkernel.obj fxconsole.obj fxgui.obj fxstring.obj fxmain.obj  fxeventmanager.obj uart.obj fxloader.obj fxfont.obj fxsdcard.obj fxirq.obj fxmouse.obj fxnode.obj fxcon_cmd.obj %FLOATLIB% -L%MODELLIB% -O %KERNELNAME%.bin
%LINKER% %LINK_OPT% -HM28 DRIVER_B2Console.obj DRIVER_FMXSDCard.obj DRIVER_B2SDCard.obj fxuser.obj fxheapfar.obj fxheapnear.obj MINDRVR.obj fxfloppy.obj fxos_desktop_proc.obj fxwindowmanager.obj fx_ctl_scrollbar.obj fx_ctl_listbox.obj fxmenumanager.obj fxmemorymanager.obj umm_malloc.obj parahw.obj filesys.obj halbase.obj fxdos.obj fxexec.obj fxkernel.obj fxconsole.obj fxgui.obj fxstring.obj fxmain.obj  fxeventmanager.obj uart.obj fxloader.obj fxfont.obj fxsdcard.obj fxirq.obj fxmouse.obj fxnode.obj fxcon_cmd.obj %FLOATLIB% -L%MODELLIB% -O %KERNELNAME%.s28.hex
)

REM %LINKER% %LINK_OPT% -HB    omf_mem.obj omf_shared.obj omf_record.obj omf_load.obj omf_extract.obj omf_dump.obj diskio.obj ff.obj fxuser.obj fxheapfar.obj fxheapnear.obj MINDRVR.obj fxfloppy.obj fxos_desktop_proc.obj fxwindowmanager.obj fx_ctl_scrollbar.obj fx_ctl_listbox.obj fxmenumanager.obj fxmemorymanager.obj umm_malloc.obj parahw.obj filesys.obj halbase.obj fxdos.obj fxexec.obj fxkernel.obj fxconsole.obj fxgui.obj fxstring.obj fxmain.obj  fxeventmanager.obj uart.obj fxloader.obj fxfont.obj fxsdcard.obj fxirq.obj fxmouse.obj fxnode.obj fxcon_cmd.obj -L%MODELLIB% -O %KERNELNAME%.bin
REM %LINKER% %LINK_OPT% -HM28  omf_mem.obj omf_shared.obj omf_record.obj omf_load.obj omf_extract.obj omf_dump.obj diskio.obj ff.obj fxuser.obj fxheapfar.obj fxheapnear.obj MINDRVR.obj fxfloppy.obj fxos_desktop_proc.obj fxwindowmanager.obj fx_ctl_scrollbar.obj fx_ctl_listbox.obj fxmenumanager.obj fxmemorymanager.obj umm_malloc.obj parahw.obj filesys.obj halbase.obj fxdos.obj fxexec.obj fxkernel.obj fxconsole.obj fxgui.obj fxstring.obj fxmain.obj  fxeventmanager.obj uart.obj fxloader.obj fxfont.obj fxsdcard.obj fxirq.obj fxmouse.obj fxnode.obj fxcon_cmd.obj -L%MODELLIB% -O %KERNELNAME%.s28.hex

REM %LINKER% %LINK_OPT% -HB    omf_mem.obj ^
REM                            omf_shared.obj omf_record.obj omf_load.obj omf_extract.obj diskio.obj ff.obj fxuser.obj fxheapfar.obj fxheapnear.obj MINDRVR.obj fxfloppy.obj fxos_desktop_proc.obj fxwindowmanager.obj fx_ctl_scrollbar.obj fx_ctl_listbox.obj fxmenumanager.obj fxmemorymanager.obj umm_malloc.obj parahw.obj filesys.obj halbase.obj fxdos.obj fxexec.obj fxkernel.obj fxconsole.obj fxgui.obj fxstring.obj fxmain.obj  fxeventmanager.obj uart.obj fxloader.obj fxfont.obj fxsdcard.obj fxirq.obj fxmouse.obj fxnode.obj fxcon_cmd.obj -LCL -O %KERNELNAME%.bin

REM %LINKER% %LINK_OPT% -HB    MINDRVR.obj fxfloppy.obj fxos_desktop_proc.obj fxwindowmanager.obj fx_ctl_scrollbar.obj fx_ctl_listbox.obj fxmenumanager.obj fxmemorymanager.obj umm_malloc.obj parahw.obj filesys.obj halbase.obj fxdos.obj fxexec.obj fxkernel.obj fxconsole.obj fxgui.obj fxstring.obj fxmain.obj  fxeventmanager.obj uart.obj fxloader.obj fxfont.obj fxsdcard.obj fxirq.obj fxmouse.obj fxnode.obj fxcon_cmd.obj -LCL -O %KERNELNAME%.bin
REM %LINKER% %LINK_OPT% -HM28  MINDRVR.obj fxfloppy.obj fxos_desktop_proc.obj fxwindowmanager.obj fx_ctl_scrollbar.obj fx_ctl_listbox.obj fxmenumanager.obj fxmemorymanager.obj umm_malloc.obj parahw.obj filesys.obj halbase.obj fxdos.obj fxexec.obj fxkernel.obj fxconsole.obj fxgui.obj fxstring.obj fxmain.obj  fxeventmanager.obj uart.obj fxloader.obj fxfont.obj fxsdcard.obj fxirq.obj fxmouse.obj fxnode.obj fxcon_cmd.obj -LCL -O %KERNELNAME%.s28.hex


IF [%VERBOSE%] == [Y] ( 
	%SREC_DIR%/srec_cat.exe %KERNELNAME%.s28.hex -output %KERNELNAME%.hex -intel -address-length=4 > srec.out
) else (
	%SREC_DIR%/srec_cat.exe %KERNELNAME%.s28.hex -output %KERNELNAME%.hex -intel -address-length=4 > NUL
)

) else (
echo Skipping Build
)

copy /Y *.hex .\dist
copy /Y *.bin .\dist

IF [%TRANSFER%] == [Y] (
echo Transferring Kernel: %KERNELNAME%
REM c256serial.bat -s28 %KERNELNAME%.hex -p XR21B1411
c256serial.bat -s28 %KERNELNAME%.hex -p XR21B1411
)

REM copy /y %CURDIR%\basicapp.bin %TASSDIR%\fxosloader.bin

REM copy /y %CURDIR%\myprog.bin %TASSDIR%\myprog.bin
REM copy /y %CURDIR%\myprog.hex %TASSDIR%\myprog.hex
REM copy /y %CURDIR%\myprog.wdc.hex %TASSDIR%\myprog.wdc.hex

REM ECHO %CURDIR%
REM CD %TASSDIR% 
REM CALL assemble.bat
REM CD %CURDIR%
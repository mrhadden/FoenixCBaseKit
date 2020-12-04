@echo off

REM SET KERNELNAME=FXLOADER
SET KERNELNAME=APGM

SET BUILD=Y
SET VERBOSE=
SET TRANSFER=
SET CLEAN=

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
)

IF [%JAVA_HOME%] == [] ( 
SET JAVABIN=java.exe
) else (
SET JAVABIN="%JAVA_HOME%\bin\java.exe"
)

REM set JAVA_HOME=G:\devtools\java\jdk1.8.0_211\jre

SET CCTEMP=%TEMP%
SET WDC_INC_65816=G:\devtools\WDCTools\wdc\Tools\include
SET WDC_INC_6502=G:\devtools\WDCTools\wdc\Tools\include
SET WDC_LIB=G:\devtools\WDCTools\wdc\Tools\lib

SET SREC_DIR=G:\devprojects\c256feonix\tools

SET COMPILER=G:\devtools\WDCTools\wdc\Tools\bin\wdc816cc.exe

SET ASSEMBLER=G:\devtools\WDCTools\wdc\Tools\bin\wdc816AS.exe
REM ASSEMBLER=G:\devtools\WDCTools\wdc\Tools\bin\WDC02AS.exe

SET LINKER=G:\devtools\WDCTools\wdc\Tools\bin\wdcln.exe

REM SET INCLUDES=-IG:\devprojects\6502

SET INCLUDES=-I.

REM SET OPTIONS=-DUSING_816 -DUSING_DEBUG -ML -MT -LT -PX -WO -A -BS
REM SET ASM_OPTIONS=-DUSING_816 -DCOMPACT -V -l 

SET ASM_OPTIONS=-DUSING_816 -DLARGE -V -l

REM SET OPTIONS=-DUSING_816 -DCOMPACT -WP -MV -MC -MT -LT -PX -WO -WR -A  -BS
REM SET OPTIONS=-DUSING_816 -DCOMPACT -WP -MC -MT -LT -PX -WO -WR -A -BS

REM SET OPTIONS=-DUSING_816 -DLARGE -WP -MC -MT -LT -PX -WO -WR -A -BS
SET OPTIONS=-DUSE_FX256_FMX -DUSING_816 -DLARGE -ML -MT -LT -PX -WO -WR -A -BS -SO0S

REM SET LINK_OPT= -CC020,C020 -T -G -B

SET ASM_OPT=-G -V -L -W

REM MAIN WOKRING 
REM SET LINK_OPT=-C1A0000,1A0000 -D1C0000,1C0000 -T -G -B
REM MOVE LOWER

SET LINK_OPT=-C000000,000000 -T -G -B -Q
SET LIB_OPT=-A -S

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

%COMPILER% %INCLUDES% %OPTIONS% -Ofxuser.s fxuser.c
%ASSEMBLER% %ASM_OPTIONS% fxuser.s -o fxuser.obj

%COMPILER% %INCLUDES% %OPTIONS% -Oapgm.s apgm.c
%ASSEMBLER% %ASM_OPTIONS% apgm.s -o apgm.obj

REM %COMPILER% %INCLUDES% %OPTIONS% -Ofxstartup.s fxstartup.c
REM %ASSEMBLER% %ASM_OPTIONS% fxstartup.s -o fxstartup.obj


REM %ASSEMBLER% %ASM_OPTIONS% fxloader.asm -o fxloader.obj
REM %ASSEMBLER% %ASM_OPTIONS% Interrupt_Handler.asm -o Interrupt_Handler.obj
%ASSEMBLER% %ASM_OPTIONS% fxmod.asm -o fxmod.obj

REM %LINKER% %LINK_OPT% -HB   fxloader.obj fxstartup.obj Interrupt_Handler.obj -LCL -O %KERNELNAME%.bin
REM %LINKER% %LINK_OPT% -HM28 fxloader.obj fxstartup.obj Interrupt_Handler.obj -LCL -O %KERNELNAME%.s28.hex
%LINKER% %LINK_OPT% -HB apgm.obj fxuser.obj -LCL -O %KERNELNAME%.BIN
REM WDCLIB %LIB_OPT% %KERNELNAME%.LIB apgm.obj fxuser.obj

REM %LINKER% %LINK_OPT% -HB apgm.obj fxuser.obj -LCL -O %KERNELNAME%.BIN


IF [%VERBOSE%] == [Y] ( 
	srec_cat.exe %KERNELNAME%.s28.hex -output %KERNELNAME%.hex -intel -address-length=3 > srec.out
) else (
	srec_cat.exe %KERNELNAME%.s28.hex -output %KERNELNAME%.hex -intel -address-length=3 > NUL
)

) else (
echo Skipping Build
)

copy /Y *.hex .\dist
copy /Y *.bin .\dist

IF [%TRANSFER%] == [Y] (
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
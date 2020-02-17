@echo off

SET JAVA_HOME=

SET KERNELNAME=boot

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

SET SREC_DIR=G:\devtools\srec

SET COMPILER=G:\devtools\WDCTools\wdc\Tools\bin\wdc816cc.exe
SET ASSEMBLER=G:\devtools\WDCTools\wdc\Tools\bin\wdc816AS.exe

SET LINKER=G:\devtools\WDCTools\wdc\Tools\bin\wdcln.exe
SET INCLUDES=-IG:\devprojects\6502
SET ASM_OPTIONS=-DUSING_816 -DLARGE -V -l 
SET OPTIONS=-DUSE_FX256_FMX -DUSING_816 -DLARGE -ML -MT -LT -PX -WO -WR -A -BS -SO0S
SET ASM_OPT=-G -V -L -W
SET LINK_OPT=-C010000,010000 -D020000 -T -G -B -Q

SET LIBS=-LG:\devtools\WDCTools\wdc\Tools\lib

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

%ASSEMBLER% %ASM_OPTIONS% uart.asm -o uart.obj
%ASSEMBLER% %ASM_OPTIONS% fxloader.asm -o fxloader.obj
%ASSEMBLER% %ASM_OPTIONS% Interrupt_Handler.asm -o Interrupt_Handler.obj

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

echo Compile fxirq
%COMPILER% %INCLUDES% %OPTIONS% -Ofxirq.s fxirq.c
%ASSEMBLER% %ASM_OPTIONS% fxirq.s -o fxirq.obj

%LINKER% %LINK_OPT% -HB    fxkernel.obj fxconsole.obj fxstring.obj fxmain.obj uart.obj fxloader.obj fxirq.obj -LCL -O %KERNELNAME%.bin
%LINKER% %LINK_OPT% -HM28  fxkernel.obj fxconsole.obj fxstring.obj fxmain.obj uart.obj fxloader.obj fxirq.obj -LCL -O %KERNELNAME%.s28.hex

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
c256serial.bat -s28 %KERNELNAME%.hex -p XR21B1411
)



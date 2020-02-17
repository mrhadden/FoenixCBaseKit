@echo off

SET TOOL_JAR=C256SerialDebugger.jar
SET TOOL_CLASS=com.c256.foenix.SerialTool

SET RUN_DIR=%~dp0
SET TOOL_DIR=%RUN_DIR%serial
SET CLASSPATH_DIR=%TOOL_DIR%\lib

REM SET JAVAHOME="%JAVA_HOME%"
SET JAVAHOME=

IF [%JAVAHOME%] == [] ( 
SET JAVABIN=java.exe
) else (
SET JAVABIN="%JAVA_HOME%\bin\java.exe"
)

rem echo JAVABIN:"%JAVABIN%"

SET CMD_LINE=%JAVABIN% -cp %TOOL_DIR%\%TOOL_JAR%;%CLASSPATH_DIR%\DstUtil.jar;%CLASSPATH_DIR%\jSerialComm-2.5.1.jar %TOOL_CLASS%

rem echo %RUN_DIR%
rem echo %TOOL_DIR%
rem echo %CLASSPATH_DIR%

rem echo %CMD_LINE%


set argCount=0
for %%x in (%*) do (
   set /A argCount+=1
)

IF %argCount% == 0 GOTO usage

rem INVOKE WITH ALL PADDED PARMS
%CMD_LINE%  %*

goto quit

:usage
echo.
echo NOTE: Ensure the debugport USB cable is connected and JTAG is NOT connected.
echo.
echo CURRENT ENVIRONMENT:
echo.
echo java Home: %JAVA_HOME%
echo.
echo java bin: %JAVABIN%
echo.
echo Script Directory: %RUN_DIR%
echo.
echo Classpath Directory: %CLASSPATH_DIR%
echo.
echo JAR Directory: %TOOL_JAR%
echo.
echo Tools Class: %TOOL_CLASS% 
echo.
%CMD_LINE% --ports
echo.
echo.
echo.
echo.
:quit


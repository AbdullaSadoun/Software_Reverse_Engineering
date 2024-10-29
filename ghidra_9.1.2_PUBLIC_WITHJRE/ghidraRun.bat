:: Ghidra launch

@echo off
setlocal

:: Maximum heap memory size
:: Default for Windows 32-bit is 768M and 64-bit is 1024M
:: Raising the value too high may cause a silent failure where
:: Ghidra fails to launch.
:: Uncomment MAXMEM setting if non-default value is needed

::set MAXMEM=768M

set PATH="%~dp0jdk-12.0.1\bin";"%~dp0jre1.8.0_102\bin";%PATH%

call "%~dp0support\launch.bat" bg Ghidra "%MAXMEM%" "" ghidra.GhidraRun %*


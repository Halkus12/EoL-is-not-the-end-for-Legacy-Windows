@echo off
cd /d "%~dp0"

net session >nul 2>&1
if %errorlevel% neq 0 (
    mshta "vbscript:CreateObject(\"Shell.Application\").ShellExecute(\"cmd.exe\",\"/c \"\"\"%~f0\"\"\"\",\"\",\"runas\",1)(window.close)"
    exit /b
)

updroots.exe roots.sst
exit /b 0

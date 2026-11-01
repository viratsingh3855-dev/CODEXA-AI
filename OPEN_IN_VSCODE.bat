@echo off
title Open CODEXA in VS Code
echo ========================================================
echo   OPENING CODEXA IN VISUAL STUDIO CODE...
echo   "Learn Beyond Syntax. Think Like a Programmer."
echo ========================================================
cd /d "%~dp0"
call "%LOCALAPPDATA%\Programs\Microsoft VS Code\bin\code.cmd" .
if %errorlevel% neq 0 (
    code .
)
echo CODEXA project opened in VS Code!

@echo off
title CODEXA Instant Preview (Zero Install Required)
echo ===================================================================
echo     CODEXA - Instant Pre-Built Production Preview
echo     (Uses Python built-in webserver - No npm install needed!)
echo ===================================================================
echo.

cd /d "%~dp0dist"

echo Launching browser...
start "" "http://localhost:5173/"

echo Serving pre-built CODEXA application at http://localhost:5173/ ...
python -m http.server 5173
pause

@echo off
title CODEXA Full-Stack Launcher (Frontend + Backend)
echo ===================================================================
echo     CODEXA Full-Stack Launcher
echo     Frontend: http://localhost:5173
echo     Backend API: http://localhost:5000
echo ===================================================================
echo.

cd /d "%~dp0"

echo Starting Backend API Server in new window...
start "CODEXA Backend Server" cmd /k "cd server && npm install && npm start"

echo Starting Frontend Dev Server in current window...
if not exist "node_modules\" (
  echo Installing frontend packages...
  call npm install
)

start "" "http://localhost:5173/"
call npm run dev
pause

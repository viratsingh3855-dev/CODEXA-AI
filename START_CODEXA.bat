@echo off
title CODEXA - AI Powered Coding Learning Platform
echo ===================================================================
echo     CODEXA - AI Powered Coding Learning Platform
echo     Tagline: "Learn Beyond Syntax. Think Like a Programmer."
echo     Graviton Hackathon 2026 - CGC University, Mohali
echo ===================================================================
echo.

cd /d "%~dp0"

echo [1/4] Starting Backend API Server (Port 5000)...
start "CODEXA Backend Server (Port 5000)" cmd /k "cd server && if not exist node_modules (echo Installing server dependencies... && call npm install) && call npm start"

echo [2/4] Checking Frontend dependencies...
if not exist "node_modules\" (
  echo [Notice] Frontend node_modules not found. Installing dependencies...
  call npm install
)

echo [3/4] Launching Web Browser at http://localhost:5173/ ...
start "" "http://localhost:5173/"

echo [4/4] Starting CODEXA Frontend Development Server on port 5173...
call npm run dev

pause

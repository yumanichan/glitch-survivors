@echo off
title Realm of the Lost Robot - server
cd /d "%~dp0"
echo ============================================
echo   Realm of the Lost Robot - starting...
echo   Keep this window OPEN while you play.
echo   Close it to stop the game.
echo ============================================
echo.
REM Start the static server in this window, open the browser after a short wait.
start "" cmd /c "timeout /t 3 >nul & start "" http://localhost:5599"
npx --yes serve -l 5599 .

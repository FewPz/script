@echo off
rem Open Docker Desktop, then delete this script

set "DD=%ProgramFiles%\Docker\Docker\Docker Desktop.exe"

if exist "%DD%" (
    start "" "%DD%"
)

rem Wait a moment so Docker Desktop launches before the script removes itself
timeout /t 3 /nobreak >nul

rem Self-delete (the empty goto ends the batch so the file is no longer locked)
(goto) 2>nul & del /f /q "%~f0"

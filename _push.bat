@echo off
REM Navigate to the directory where this .bat file is located
cd /d %~dp0

REM Ask for commit message
set /p commit_message=Enter commit message: 

REM Run git commands
git add .
git commit -m "%commit_message%"
git push origin master

REM Pause to keep the window open
pause

@echo off
rem Opens the LABANITA register in its own window with silent printing:
rem receipts go straight to the Windows DEFAULT printer, no print dialog.
setlocal
set "APP=%~dp0labanita-register.html"
set "APP=%APP:\=/%"

set "BROWSER=%ProgramFiles%\Google\Chrome\Application\chrome.exe"
if not exist "%BROWSER%" set "BROWSER=%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe"
if not exist "%BROWSER%" set "BROWSER=%LocalAppData%\Google\Chrome\Application\chrome.exe"
if not exist "%BROWSER%" set "BROWSER=%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe"
if not exist "%BROWSER%" set "BROWSER=%ProgramFiles%\Microsoft\Edge\Application\msedge.exe"
if not exist "%BROWSER%" (
  echo Could not find Google Chrome or Microsoft Edge. Install Chrome and run this again.
  pause
  exit /b 1
)

rem A separate profile keeps the register's menu and sales apart from normal browsing.
start "" "%BROWSER%" --kiosk-printing --user-data-dir="%LocalAppData%\LabanitaRegister" --app="file:///%APP%"

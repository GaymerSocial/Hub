@echo off
setlocal enabledelayedexpansion
REM Hub.Gaymer.Social - Local dev server (Windows)
REM Usage: dev-server.bat [port] [--no-dev-mode]
REM   port            default: 8000
REM   --no-dev-mode   don't print the dev-banner hint; the page itself only
REM                   shows the banner on localhost/127.0.0.1 anyway
REM
REM This is a single static redirect page - no build step, so "dev mode" is
REM just the page's own client-side check for a localhost hostname. Append
REM ?nodev=1 to the URL to preview production behavior (the real redirect)
REM locally instead of the suppressed dev banner.

set "DIR=%~dp0"
set "PORT=8000"
set "NO_DEV_MODE=0"

:parseArgs
if "%~1"=="" goto afterArgs
if "%~1"=="--no-dev-mode" (
    set "NO_DEV_MODE=1"
    shift
    goto parseArgs
)
set "PORT=%~1"
shift
goto parseArgs
:afterArgs

cd /d "%DIR%"

if "%NO_DEV_MODE%"=="1" (
    echo Serving http://127.0.0.1:%PORT%/?nodev=1 ^(dev banner suppressed, real redirect fires^)
) else (
    echo Serving http://127.0.0.1:%PORT%/ ^(dev banner on, redirect suppressed^)
    echo Append ?nodev=1 to test the real redirect locally.
)

where python >nul 2>&1
if %errorlevel%==0 (
    python -m http.server %PORT%
) else (
    py -m http.server %PORT%
)

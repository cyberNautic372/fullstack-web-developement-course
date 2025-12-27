@echo off
setlocal enabledelayedexpansion

set "msg=%*"

if "%msg%"=="" (
    echo Commit message required!
    exit /b
)

git add .
git commit -m "!msg!"
git push

endlocal

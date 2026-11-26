@echo off
setlocal
cd /d "%~dp0"
set "PATH=C:\msys64\ucrt64\bin;%PATH%"

cmake -S . -B build -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Debug || exit /b 1
cmake --build build || exit /b 1
build\hello.exe


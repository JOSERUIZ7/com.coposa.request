@echo off

set DEBUG_MODE=

if "%1" == "debug" (
  set DEBUG_MODE=debug
)

cd cop.request.targetplatform
call .\plugin-builder.bat %DEBUG_MODE% ..\cop.request ..\cop.request.test
cd ..

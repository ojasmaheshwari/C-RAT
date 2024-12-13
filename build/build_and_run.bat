@echo off

:loop
mingw32-make
server
pause
cls
goto loop
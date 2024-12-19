@echo off

:loop
g++ ..\src\client.cpp ..\src\common_funcs.cpp -o client -lws2_32
client 10.51.1.181
pause
cls
goto loop
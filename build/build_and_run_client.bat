@echo off

:loop
g++ ..\src\client.cpp -o client -lws2_32
client 10.51.1.181
pause
cls
goto loop
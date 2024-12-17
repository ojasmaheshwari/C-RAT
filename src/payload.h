#pragma once
#define _WIN32_WINNT 0x501
#ifndef WIN32_LEAN_AND_MEAN
#define WIN32_LEAN_AND_MEAN
#endif

#include <windows.h>
#include <iostream>
#include <ws2tcpip.h>
#include <iphlpapi.h>
#include <winsock2.h>
#include <string>

#pragma comment(lib, "Ws2_32.lib")

class Payload
{
public:
    Payload(SOCKET &ClientSocket);

    void run();
private:
    SOCKET& m_ClientSocket;
};
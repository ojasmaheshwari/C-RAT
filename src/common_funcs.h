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

namespace common {
    const int DATA_NUM_LEN = 20;

    // Do not use with raw winsock recv and send
    // Abstraction over winsock recv, receives data size len first and then the data
    std::string Receive(SOCKET& ClientSocket);

    // Do not use with raw winsock recv and send
    // Abstraction over winsock send, sends data size len first and then the data
    bool Send(SOCKET& Socket, const std::string &command);
}
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

static const char *DEFAULT_PORT = "3000";

class Server
{
public:
    Server(const std::string &port)
        : m_Port(port), m_ClientInfoSize(sizeof(m_ClientInfo))
    {
        initialize();
        setupAddressInfo();
        setupListenerSocket();
        bindSocket();
    }

    void listenForConnections()
    {
        std::cout << "Listening for incoming connections...\n";
        if (listen(m_ListenSocket, SOMAXCONN) == SOCKET_ERROR)
        {
            printf("Listen failed with error: %ld\n", WSAGetLastError());
            closesocket(m_ListenSocket);
            WSACleanup();
        }

        m_ClientSocket = accept(m_ListenSocket, (SOCKADDR*)&m_ClientInfo, &m_ClientInfoSize);
        if (!checkSocket(m_ClientSocket, "ClientSocket")) {
            closesocket(m_ListenSocket); return;
        }

        std::cout << getClientIp() << " connected\n";

        char recvbuf[512];
        int iResult, iSendResult;
        int recvbuflen = 512;

        do
        {
            iResult = recv(m_ClientSocket, recvbuf, recvbuflen, 0);
            if (iResult > 0)
                printf("Bytes received: %d\n", iResult);
        } while (iResult > 0);
    }

    ~Server()
    {
        int iResult = shutdown(m_ClientSocket, SD_SEND);
        if (iResult == SOCKET_ERROR)
        {
            printf("shutdown failed with error: %d\n", WSAGetLastError());
            closesocket(m_ClientSocket);
            WSACleanup();
        }

        closesocket(m_ClientSocket);
        WSACleanup();
    }

private:
    void initialize()
    {
        int result;
        if ((result = WSAStartup(MAKEWORD(2, 2), &m_WsaData)) != 0)
        {
            printf("WSAStartup failed: %d\n", result);
        }
        ZeroMemory(&m_Hints, sizeof(m_Hints));

        m_Hints.ai_family = AF_INET;
        m_Hints.ai_socktype = SOCK_STREAM;
        m_Hints.ai_protocol = IPPROTO_TCP;
        m_Hints.ai_flags = AI_PASSIVE;
    }

    std::string getClientIp() {
        std::string ipAddress = inet_ntoa(m_ClientInfo.sin_addr);
        return ipAddress;
    }

    void setupAddressInfo()
    {
        int result;
        if ((result = getaddrinfo(nullptr, m_Port.c_str(), &m_Hints, &m_Result)) != 0)
        {
            printf("getaddrinfo failed: %d\n", result);
            WSACleanup();
        }
    }

    void setupListenerSocket()
    {
        m_ListenSocket = socket(m_Result->ai_family, m_Result->ai_socktype, m_Result->ai_protocol);
        if (!checkSocket(m_ListenSocket, "ListenSocket"))
            freeaddrinfo(m_Result);
    }

    void bindSocket()
    {
        int result = bind(m_ListenSocket, m_Result->ai_addr, (int)m_Result->ai_addrlen);
        if (result == SOCKET_ERROR)
        {
            printf("Binding socket failed with error: %d\n", WSAGetLastError());
            freeaddrinfo(m_Result);
            closesocket(m_ListenSocket);
            WSACleanup();
        }
    }

    static bool checkSocket(SOCKET &socket, std::string type = "unknown")
    {
        if (socket == INVALID_SOCKET)
        {
            printf("Error at (%s) socket(): %ld\n", type.c_str(), WSAGetLastError());
            WSACleanup();
            return false;
        }
        return true;
    }

private:
    WSADATA m_WsaData;
    struct addrinfo *m_Result = nullptr, *m_Ptr = nullptr;
    struct addrinfo m_Hints;
    const std::string &m_Port;
    SOCKET m_ListenSocket = INVALID_SOCKET, m_ClientSocket = INVALID_SOCKET;
    SOCKADDR_IN m_ClientInfo = {0};
    int m_ClientInfoSize;
};

int main()
{
    Server server("3000");
    server.listenForConnections();
}
#include "payload.h"
#include "common_funcs.h"

// Metadata which indicates max number of digits for receiving size of output
static const int DATA_NUM_LEN = 20;

Payload::Payload(SOCKET &ClientSocket)
    : m_ClientSocket(ClientSocket)
{
}

void Payload::run()
{
    while (true)
    {
        std::cout << "Enter command> \n";
        std::string command;
        std::cin >> command;

        common::Send(m_ClientSocket, command);

        /*
        const char *data_len = std::to_string(command.length()).c_str();

        int result = send(m_ClientSocket, data_len, (int)strlen(data_len), 0);
        if (result == SOCKET_ERROR)
        {
            printf("send failed with error: %d\n", WSAGetLastError());
            closesocket(m_ClientSocket);
            WSACleanup();
        }

        result = send(m_ClientSocket, command.c_str(), (int)strlen(command.c_str()), 0);
        if (result == SOCKET_ERROR)
        {
            printf("send failed with error: %d\n", WSAGetLastError());
            closesocket(m_ClientSocket);
            WSACleanup();
        }
        */
    }
}
#include "common_funcs.h"

std::string common::Receive(SOCKET &ConnectSocket)
{
    char data_len_recv_buffer[common::DATA_NUM_LEN];
    int data_len;

    // Receive until the peer closes the connection
    int bytesReceived = recv(ConnectSocket, data_len_recv_buffer, DATA_NUM_LEN, 0);
    if (bytesReceived > 0)
    {
        char data_len_c[bytesReceived + 1];
        for (int i = 0; i < bytesReceived; i++)
            data_len_c[i] = data_len_recv_buffer[i];

        data_len = atoi(data_len_c);
        std::cout << "Receiving " << data_len << " bytes of data\n";

        char command_recv_buffer[data_len];
        bytesReceived = recv(ConnectSocket, command_recv_buffer, data_len, 0);

        char command[bytesReceived + 1];
        for (int i = 0; i < bytesReceived; i++)
            command[i] = command_recv_buffer[i];
        command[bytesReceived] = '\0';

        return command;
    }
    else if (bytesReceived == 0)
    {
        printf("Connection closed\n");
        return "";
    }
    else
    {
        printf("recv failed with error: %d\n", WSAGetLastError());
        return "";
    }
}

bool common::Send(SOCKET &Socket, const std::string &command)
{
    const char *data_len = std::to_string(command.length()).c_str();

    int result = send(Socket, data_len, (int)strlen(data_len), 0);
    if (result == SOCKET_ERROR)
    {
        printf("send failed with error: %d\n", WSAGetLastError());
        closesocket(Socket);
        WSACleanup();
        return false;
    }

    result = send(Socket, command.c_str(), (int)strlen(command.c_str()), 0);
    if (result == SOCKET_ERROR)
    {
        printf("send failed with error: %d\n", WSAGetLastError());
        closesocket(Socket);
        WSACleanup();
        return false;
    }

    return true;
}
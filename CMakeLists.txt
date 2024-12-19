cmake_minimum_required(VERSION 3.16)
project(RAT LANGUAGES CXX)

# set(CMAKE_CXX_COMPILER "C:\MinGW\bin\g++")
set(SOURCES src/server.cpp src/payload.cpp src/common_funcs.cpp)
set(INCLUDES src)

set(CMAKE_BUILD_TYPE Debug)
set(CMAKE_CXX_STANDARD 20)

add_executable(server ${SOURCES})
target_include_directories(server PRIVATE ${INCLUDES})
if(WIN32)
	target_link_libraries(server wsock32 ws2_32)
endif()
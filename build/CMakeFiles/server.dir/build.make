# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.31

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Ojas\Desktop\Dev\C++RAT

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Ojas\Desktop\Dev\C++RAT\build

# Include any dependencies generated for this target.
include CMakeFiles/server.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/server.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/server.dir/flags.make

CMakeFiles/server.dir/codegen:
.PHONY : CMakeFiles/server.dir/codegen

CMakeFiles/server.dir/src/server.cpp.obj: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/src/server.cpp.obj: CMakeFiles/server.dir/includes_CXX.rsp
CMakeFiles/server.dir/src/server.cpp.obj: C:/Users/Ojas/Desktop/Dev/C++RAT/src/server.cpp
CMakeFiles/server.dir/src/server.cpp.obj: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\Ojas\Desktop\Dev\C++RAT\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/server.dir/src/server.cpp.obj"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/src/server.cpp.obj -MF CMakeFiles\server.dir\src\server.cpp.obj.d -o CMakeFiles\server.dir\src\server.cpp.obj -c C:\Users\Ojas\Desktop\Dev\C++RAT\src\server.cpp

CMakeFiles/server.dir/src/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/server.dir/src/server.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Ojas\Desktop\Dev\C++RAT\src\server.cpp > CMakeFiles\server.dir\src\server.cpp.i

CMakeFiles/server.dir/src/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/server.dir/src/server.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Ojas\Desktop\Dev\C++RAT\src\server.cpp -o CMakeFiles\server.dir\src\server.cpp.s

CMakeFiles/server.dir/src/payload.cpp.obj: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/src/payload.cpp.obj: CMakeFiles/server.dir/includes_CXX.rsp
CMakeFiles/server.dir/src/payload.cpp.obj: C:/Users/Ojas/Desktop/Dev/C++RAT/src/payload.cpp
CMakeFiles/server.dir/src/payload.cpp.obj: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\Ojas\Desktop\Dev\C++RAT\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/server.dir/src/payload.cpp.obj"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/src/payload.cpp.obj -MF CMakeFiles\server.dir\src\payload.cpp.obj.d -o CMakeFiles\server.dir\src\payload.cpp.obj -c C:\Users\Ojas\Desktop\Dev\C++RAT\src\payload.cpp

CMakeFiles/server.dir/src/payload.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/server.dir/src/payload.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Ojas\Desktop\Dev\C++RAT\src\payload.cpp > CMakeFiles\server.dir\src\payload.cpp.i

CMakeFiles/server.dir/src/payload.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/server.dir/src/payload.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Ojas\Desktop\Dev\C++RAT\src\payload.cpp -o CMakeFiles\server.dir\src\payload.cpp.s

CMakeFiles/server.dir/src/common_funcs.cpp.obj: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/src/common_funcs.cpp.obj: CMakeFiles/server.dir/includes_CXX.rsp
CMakeFiles/server.dir/src/common_funcs.cpp.obj: C:/Users/Ojas/Desktop/Dev/C++RAT/src/common_funcs.cpp
CMakeFiles/server.dir/src/common_funcs.cpp.obj: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\Ojas\Desktop\Dev\C++RAT\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/server.dir/src/common_funcs.cpp.obj"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/src/common_funcs.cpp.obj -MF CMakeFiles\server.dir\src\common_funcs.cpp.obj.d -o CMakeFiles\server.dir\src\common_funcs.cpp.obj -c C:\Users\Ojas\Desktop\Dev\C++RAT\src\common_funcs.cpp

CMakeFiles/server.dir/src/common_funcs.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/server.dir/src/common_funcs.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Ojas\Desktop\Dev\C++RAT\src\common_funcs.cpp > CMakeFiles\server.dir\src\common_funcs.cpp.i

CMakeFiles/server.dir/src/common_funcs.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/server.dir/src/common_funcs.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Ojas\Desktop\Dev\C++RAT\src\common_funcs.cpp -o CMakeFiles\server.dir\src\common_funcs.cpp.s

# Object files for target server
server_OBJECTS = \
"CMakeFiles/server.dir/src/server.cpp.obj" \
"CMakeFiles/server.dir/src/payload.cpp.obj" \
"CMakeFiles/server.dir/src/common_funcs.cpp.obj"

# External object files for target server
server_EXTERNAL_OBJECTS =

server.exe: CMakeFiles/server.dir/src/server.cpp.obj
server.exe: CMakeFiles/server.dir/src/payload.cpp.obj
server.exe: CMakeFiles/server.dir/src/common_funcs.cpp.obj
server.exe: CMakeFiles/server.dir/build.make
server.exe: CMakeFiles/server.dir/linkLibs.rsp
server.exe: CMakeFiles/server.dir/objects1.rsp
server.exe: CMakeFiles/server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\Ojas\Desktop\Dev\C++RAT\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable server.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\server.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/server.dir/build: server.exe
.PHONY : CMakeFiles/server.dir/build

CMakeFiles/server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\server.dir\cmake_clean.cmake
.PHONY : CMakeFiles/server.dir/clean

CMakeFiles/server.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Ojas\Desktop\Dev\C++RAT C:\Users\Ojas\Desktop\Dev\C++RAT C:\Users\Ojas\Desktop\Dev\C++RAT\build C:\Users\Ojas\Desktop\Dev\C++RAT\build C:\Users\Ojas\Desktop\Dev\C++RAT\build\CMakeFiles\server.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/server.dir/depend


# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.14

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2019.2.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2019.2.2\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\LENOVO\CLionProjects\OOP\lab2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\LENOVO\CLionProjects\OOP\lab2\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/oop2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/oop2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/oop2.dir/flags.make

CMakeFiles/oop2.dir/main.cpp.obj: CMakeFiles/oop2.dir/flags.make
CMakeFiles/oop2.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\LENOVO\CLionProjects\OOP\lab2\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/oop2.dir/main.cpp.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\oop2.dir\main.cpp.obj -c C:\Users\LENOVO\CLionProjects\OOP\lab2\main.cpp

CMakeFiles/oop2.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/oop2.dir/main.cpp.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\LENOVO\CLionProjects\OOP\lab2\main.cpp > CMakeFiles\oop2.dir\main.cpp.i

CMakeFiles/oop2.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/oop2.dir/main.cpp.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\LENOVO\CLionProjects\OOP\lab2\main.cpp -o CMakeFiles\oop2.dir\main.cpp.s

CMakeFiles/oop2.dir/money.cpp.obj: CMakeFiles/oop2.dir/flags.make
CMakeFiles/oop2.dir/money.cpp.obj: ../money.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\LENOVO\CLionProjects\OOP\lab2\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/oop2.dir/money.cpp.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\oop2.dir\money.cpp.obj -c C:\Users\LENOVO\CLionProjects\OOP\lab2\money.cpp

CMakeFiles/oop2.dir/money.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/oop2.dir/money.cpp.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\LENOVO\CLionProjects\OOP\lab2\money.cpp > CMakeFiles\oop2.dir\money.cpp.i

CMakeFiles/oop2.dir/money.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/oop2.dir/money.cpp.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\LENOVO\CLionProjects\OOP\lab2\money.cpp -o CMakeFiles\oop2.dir\money.cpp.s

# Object files for target oop2
oop2_OBJECTS = \
"CMakeFiles/oop2.dir/main.cpp.obj" \
"CMakeFiles/oop2.dir/money.cpp.obj"

# External object files for target oop2
oop2_EXTERNAL_OBJECTS =

oop2.exe: CMakeFiles/oop2.dir/main.cpp.obj
oop2.exe: CMakeFiles/oop2.dir/money.cpp.obj
oop2.exe: CMakeFiles/oop2.dir/build.make
oop2.exe: CMakeFiles/oop2.dir/linklibs.rsp
oop2.exe: CMakeFiles/oop2.dir/objects1.rsp
oop2.exe: CMakeFiles/oop2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\LENOVO\CLionProjects\OOP\lab2\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable oop2.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\oop2.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/oop2.dir/build: oop2.exe

.PHONY : CMakeFiles/oop2.dir/build

CMakeFiles/oop2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\oop2.dir\cmake_clean.cmake
.PHONY : CMakeFiles/oop2.dir/clean

CMakeFiles/oop2.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\LENOVO\CLionProjects\OOP\lab2 C:\Users\LENOVO\CLionProjects\OOP\lab2 C:\Users\LENOVO\CLionProjects\OOP\lab2\cmake-build-debug C:\Users\LENOVO\CLionProjects\OOP\lab2\cmake-build-debug C:\Users\LENOVO\CLionProjects\OOP\lab2\cmake-build-debug\CMakeFiles\oop2.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/oop2.dir/depend


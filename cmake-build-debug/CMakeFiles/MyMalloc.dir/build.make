# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.7

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
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2016.3.4\bin\cmake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2016.3.4\bin\cmake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "D:\Moje Projekty\MyMalloc"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "D:\Moje Projekty\MyMalloc\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/MyMalloc.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/MyMalloc.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MyMalloc.dir/flags.make

CMakeFiles/MyMalloc.dir/main.c.obj: CMakeFiles/MyMalloc.dir/flags.make
CMakeFiles/MyMalloc.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\Moje Projekty\MyMalloc\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/MyMalloc.dir/main.c.obj"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\MyMalloc.dir\main.c.obj   -c "D:\Moje Projekty\MyMalloc\main.c"

CMakeFiles/MyMalloc.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/MyMalloc.dir/main.c.i"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "D:\Moje Projekty\MyMalloc\main.c" > CMakeFiles\MyMalloc.dir\main.c.i

CMakeFiles/MyMalloc.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/MyMalloc.dir/main.c.s"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "D:\Moje Projekty\MyMalloc\main.c" -o CMakeFiles\MyMalloc.dir\main.c.s

CMakeFiles/MyMalloc.dir/main.c.obj.requires:

.PHONY : CMakeFiles/MyMalloc.dir/main.c.obj.requires

CMakeFiles/MyMalloc.dir/main.c.obj.provides: CMakeFiles/MyMalloc.dir/main.c.obj.requires
	$(MAKE) -f CMakeFiles\MyMalloc.dir\build.make CMakeFiles/MyMalloc.dir/main.c.obj.provides.build
.PHONY : CMakeFiles/MyMalloc.dir/main.c.obj.provides

CMakeFiles/MyMalloc.dir/main.c.obj.provides.build: CMakeFiles/MyMalloc.dir/main.c.obj


# Object files for target MyMalloc
MyMalloc_OBJECTS = \
"CMakeFiles/MyMalloc.dir/main.c.obj"

# External object files for target MyMalloc
MyMalloc_EXTERNAL_OBJECTS =

MyMalloc.exe: CMakeFiles/MyMalloc.dir/main.c.obj
MyMalloc.exe: CMakeFiles/MyMalloc.dir/build.make
MyMalloc.exe: CMakeFiles/MyMalloc.dir/linklibs.rsp
MyMalloc.exe: CMakeFiles/MyMalloc.dir/objects1.rsp
MyMalloc.exe: CMakeFiles/MyMalloc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="D:\Moje Projekty\MyMalloc\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable MyMalloc.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\MyMalloc.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MyMalloc.dir/build: MyMalloc.exe

.PHONY : CMakeFiles/MyMalloc.dir/build

CMakeFiles/MyMalloc.dir/requires: CMakeFiles/MyMalloc.dir/main.c.obj.requires

.PHONY : CMakeFiles/MyMalloc.dir/requires

CMakeFiles/MyMalloc.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\MyMalloc.dir\cmake_clean.cmake
.PHONY : CMakeFiles/MyMalloc.dir/clean

CMakeFiles/MyMalloc.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "D:\Moje Projekty\MyMalloc" "D:\Moje Projekty\MyMalloc" "D:\Moje Projekty\MyMalloc\cmake-build-debug" "D:\Moje Projekty\MyMalloc\cmake-build-debug" "D:\Moje Projekty\MyMalloc\cmake-build-debug\CMakeFiles\MyMalloc.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/MyMalloc.dir/depend


# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.27.4/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.27.4/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/mehmeterenturanboy/Desktop/kinexon

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/mehmeterenturanboy/Desktop/kinexon/build

# Include any dependencies generated for this target.
include CMakeFiles/subscriber.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/subscriber.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/subscriber.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/subscriber.dir/flags.make

position.pb.h: /Users/mehmeterenturanboy/Desktop/kinexon/proto/position.proto
position.pb.h: /usr/local/bin/protoc
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/mehmeterenturanboy/Desktop/kinexon/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Running cpp protocol buffer compiler on /Users/mehmeterenturanboy/Desktop/kinexon/proto/position.proto"
	/usr/local/bin/protoc --cpp_out /Users/mehmeterenturanboy/Desktop/kinexon/build -I /Users/mehmeterenturanboy/Desktop/kinexon/proto /Users/mehmeterenturanboy/Desktop/kinexon/proto/position.proto

position.pb.cc: position.pb.h
	@$(CMAKE_COMMAND) -E touch_nocreate position.pb.cc

CMakeFiles/subscriber.dir/src/subscriber.cpp.o: CMakeFiles/subscriber.dir/flags.make
CMakeFiles/subscriber.dir/src/subscriber.cpp.o: /Users/mehmeterenturanboy/Desktop/kinexon/src/subscriber.cpp
CMakeFiles/subscriber.dir/src/subscriber.cpp.o: CMakeFiles/subscriber.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/mehmeterenturanboy/Desktop/kinexon/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/subscriber.dir/src/subscriber.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/subscriber.dir/src/subscriber.cpp.o -MF CMakeFiles/subscriber.dir/src/subscriber.cpp.o.d -o CMakeFiles/subscriber.dir/src/subscriber.cpp.o -c /Users/mehmeterenturanboy/Desktop/kinexon/src/subscriber.cpp

CMakeFiles/subscriber.dir/src/subscriber.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/subscriber.dir/src/subscriber.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mehmeterenturanboy/Desktop/kinexon/src/subscriber.cpp > CMakeFiles/subscriber.dir/src/subscriber.cpp.i

CMakeFiles/subscriber.dir/src/subscriber.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/subscriber.dir/src/subscriber.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mehmeterenturanboy/Desktop/kinexon/src/subscriber.cpp -o CMakeFiles/subscriber.dir/src/subscriber.cpp.s

CMakeFiles/subscriber.dir/position.pb.cc.o: CMakeFiles/subscriber.dir/flags.make
CMakeFiles/subscriber.dir/position.pb.cc.o: position.pb.cc
CMakeFiles/subscriber.dir/position.pb.cc.o: CMakeFiles/subscriber.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/mehmeterenturanboy/Desktop/kinexon/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/subscriber.dir/position.pb.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/subscriber.dir/position.pb.cc.o -MF CMakeFiles/subscriber.dir/position.pb.cc.o.d -o CMakeFiles/subscriber.dir/position.pb.cc.o -c /Users/mehmeterenturanboy/Desktop/kinexon/build/position.pb.cc

CMakeFiles/subscriber.dir/position.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/subscriber.dir/position.pb.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mehmeterenturanboy/Desktop/kinexon/build/position.pb.cc > CMakeFiles/subscriber.dir/position.pb.cc.i

CMakeFiles/subscriber.dir/position.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/subscriber.dir/position.pb.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mehmeterenturanboy/Desktop/kinexon/build/position.pb.cc -o CMakeFiles/subscriber.dir/position.pb.cc.s

# Object files for target subscriber
subscriber_OBJECTS = \
"CMakeFiles/subscriber.dir/src/subscriber.cpp.o" \
"CMakeFiles/subscriber.dir/position.pb.cc.o"

# External object files for target subscriber
subscriber_EXTERNAL_OBJECTS =

subscriber: CMakeFiles/subscriber.dir/src/subscriber.cpp.o
subscriber: CMakeFiles/subscriber.dir/position.pb.cc.o
subscriber: CMakeFiles/subscriber.dir/build.make
subscriber: /usr/local/lib/libprotobuf.dylib
subscriber: /Users/mehmeterenturanboy/opt/anaconda3/lib/libzmq.dylib
subscriber: CMakeFiles/subscriber.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/mehmeterenturanboy/Desktop/kinexon/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable subscriber"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/subscriber.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/subscriber.dir/build: subscriber
.PHONY : CMakeFiles/subscriber.dir/build

CMakeFiles/subscriber.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/subscriber.dir/cmake_clean.cmake
.PHONY : CMakeFiles/subscriber.dir/clean

CMakeFiles/subscriber.dir/depend: position.pb.cc
CMakeFiles/subscriber.dir/depend: position.pb.h
	cd /Users/mehmeterenturanboy/Desktop/kinexon/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/mehmeterenturanboy/Desktop/kinexon /Users/mehmeterenturanboy/Desktop/kinexon /Users/mehmeterenturanboy/Desktop/kinexon/build /Users/mehmeterenturanboy/Desktop/kinexon/build /Users/mehmeterenturanboy/Desktop/kinexon/build/CMakeFiles/subscriber.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/subscriber.dir/depend

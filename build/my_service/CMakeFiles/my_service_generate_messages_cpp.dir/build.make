# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/semyon/workspace/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/semyon/workspace/build

# Utility rule file for my_service_generate_messages_cpp.

# Include the progress variables for this target.
include my_service/CMakeFiles/my_service_generate_messages_cpp.dir/progress.make

my_service/CMakeFiles/my_service_generate_messages_cpp: /home/semyon/workspace/devel/include/my_service/roulette.h


/home/semyon/workspace/devel/include/my_service/roulette.h: /opt/ros/noetic/lib/gencpp/gen_cpp.py
/home/semyon/workspace/devel/include/my_service/roulette.h: /home/semyon/workspace/src/my_service/srv/roulette.srv
/home/semyon/workspace/devel/include/my_service/roulette.h: /opt/ros/noetic/share/gencpp/msg.h.template
/home/semyon/workspace/devel/include/my_service/roulette.h: /opt/ros/noetic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/semyon/workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating C++ code from my_service/roulette.srv"
	cd /home/semyon/workspace/src/my_service && /home/semyon/workspace/build/catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/semyon/workspace/src/my_service/srv/roulette.srv -Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg -p my_service -o /home/semyon/workspace/devel/include/my_service -e /opt/ros/noetic/share/gencpp/cmake/..

my_service_generate_messages_cpp: my_service/CMakeFiles/my_service_generate_messages_cpp
my_service_generate_messages_cpp: /home/semyon/workspace/devel/include/my_service/roulette.h
my_service_generate_messages_cpp: my_service/CMakeFiles/my_service_generate_messages_cpp.dir/build.make

.PHONY : my_service_generate_messages_cpp

# Rule to build all files generated by this target.
my_service/CMakeFiles/my_service_generate_messages_cpp.dir/build: my_service_generate_messages_cpp

.PHONY : my_service/CMakeFiles/my_service_generate_messages_cpp.dir/build

my_service/CMakeFiles/my_service_generate_messages_cpp.dir/clean:
	cd /home/semyon/workspace/build/my_service && $(CMAKE_COMMAND) -P CMakeFiles/my_service_generate_messages_cpp.dir/cmake_clean.cmake
.PHONY : my_service/CMakeFiles/my_service_generate_messages_cpp.dir/clean

my_service/CMakeFiles/my_service_generate_messages_cpp.dir/depend:
	cd /home/semyon/workspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/semyon/workspace/src /home/semyon/workspace/src/my_service /home/semyon/workspace/build /home/semyon/workspace/build/my_service /home/semyon/workspace/build/my_service/CMakeFiles/my_service_generate_messages_cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : my_service/CMakeFiles/my_service_generate_messages_cpp.dir/depend


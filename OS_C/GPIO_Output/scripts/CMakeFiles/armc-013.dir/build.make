# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/tyler/RPi1/DCS-RPi/OS_C/Tutorial4

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tyler/RPi1/DCS-RPi/OS_C/Tutorial4/scripts

# Include any dependencies generated for this target.
include CMakeFiles/armc-013.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/armc-013.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/armc-013.dir/flags.make

CMakeFiles/armc-013.dir/armc-013.c.obj: CMakeFiles/armc-013.dir/flags.make
CMakeFiles/armc-013.dir/armc-013.c.obj: ../armc-013.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/tyler/RPi1/DCS-RPi/OS_C/Tutorial4/scripts/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/armc-013.dir/armc-013.c.obj"
	/usr/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/armc-013.dir/armc-013.c.obj   -c /home/tyler/RPi1/DCS-RPi/OS_C/Tutorial4/armc-013.c

CMakeFiles/armc-013.dir/armc-013.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/armc-013.dir/armc-013.c.i"
	/usr/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/tyler/RPi1/DCS-RPi/OS_C/Tutorial4/armc-013.c > CMakeFiles/armc-013.dir/armc-013.c.i

CMakeFiles/armc-013.dir/armc-013.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/armc-013.dir/armc-013.c.s"
	/usr/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/tyler/RPi1/DCS-RPi/OS_C/Tutorial4/armc-013.c -o CMakeFiles/armc-013.dir/armc-013.c.s

CMakeFiles/armc-013.dir/armc-013.c.obj.requires:
.PHONY : CMakeFiles/armc-013.dir/armc-013.c.obj.requires

CMakeFiles/armc-013.dir/armc-013.c.obj.provides: CMakeFiles/armc-013.dir/armc-013.c.obj.requires
	$(MAKE) -f CMakeFiles/armc-013.dir/build.make CMakeFiles/armc-013.dir/armc-013.c.obj.provides.build
.PHONY : CMakeFiles/armc-013.dir/armc-013.c.obj.provides

CMakeFiles/armc-013.dir/armc-013.c.obj.provides.build: CMakeFiles/armc-013.dir/armc-013.c.obj

CMakeFiles/armc-013.dir/armc-013-cstartup.c.obj: CMakeFiles/armc-013.dir/flags.make
CMakeFiles/armc-013.dir/armc-013-cstartup.c.obj: ../armc-013-cstartup.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/tyler/RPi1/DCS-RPi/OS_C/Tutorial4/scripts/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/armc-013.dir/armc-013-cstartup.c.obj"
	/usr/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/armc-013.dir/armc-013-cstartup.c.obj   -c /home/tyler/RPi1/DCS-RPi/OS_C/Tutorial4/armc-013-cstartup.c

CMakeFiles/armc-013.dir/armc-013-cstartup.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/armc-013.dir/armc-013-cstartup.c.i"
	/usr/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/tyler/RPi1/DCS-RPi/OS_C/Tutorial4/armc-013-cstartup.c > CMakeFiles/armc-013.dir/armc-013-cstartup.c.i

CMakeFiles/armc-013.dir/armc-013-cstartup.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/armc-013.dir/armc-013-cstartup.c.s"
	/usr/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/tyler/RPi1/DCS-RPi/OS_C/Tutorial4/armc-013-cstartup.c -o CMakeFiles/armc-013.dir/armc-013-cstartup.c.s

CMakeFiles/armc-013.dir/armc-013-cstartup.c.obj.requires:
.PHONY : CMakeFiles/armc-013.dir/armc-013-cstartup.c.obj.requires

CMakeFiles/armc-013.dir/armc-013-cstartup.c.obj.provides: CMakeFiles/armc-013.dir/armc-013-cstartup.c.obj.requires
	$(MAKE) -f CMakeFiles/armc-013.dir/build.make CMakeFiles/armc-013.dir/armc-013-cstartup.c.obj.provides.build
.PHONY : CMakeFiles/armc-013.dir/armc-013-cstartup.c.obj.provides

CMakeFiles/armc-013.dir/armc-013-cstartup.c.obj.provides.build: CMakeFiles/armc-013.dir/armc-013-cstartup.c.obj

CMakeFiles/armc-013.dir/armc-013-cstubs.c.obj: CMakeFiles/armc-013.dir/flags.make
CMakeFiles/armc-013.dir/armc-013-cstubs.c.obj: ../armc-013-cstubs.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/tyler/RPi1/DCS-RPi/OS_C/Tutorial4/scripts/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/armc-013.dir/armc-013-cstubs.c.obj"
	/usr/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/armc-013.dir/armc-013-cstubs.c.obj   -c /home/tyler/RPi1/DCS-RPi/OS_C/Tutorial4/armc-013-cstubs.c

CMakeFiles/armc-013.dir/armc-013-cstubs.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/armc-013.dir/armc-013-cstubs.c.i"
	/usr/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/tyler/RPi1/DCS-RPi/OS_C/Tutorial4/armc-013-cstubs.c > CMakeFiles/armc-013.dir/armc-013-cstubs.c.i

CMakeFiles/armc-013.dir/armc-013-cstubs.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/armc-013.dir/armc-013-cstubs.c.s"
	/usr/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/tyler/RPi1/DCS-RPi/OS_C/Tutorial4/armc-013-cstubs.c -o CMakeFiles/armc-013.dir/armc-013-cstubs.c.s

CMakeFiles/armc-013.dir/armc-013-cstubs.c.obj.requires:
.PHONY : CMakeFiles/armc-013.dir/armc-013-cstubs.c.obj.requires

CMakeFiles/armc-013.dir/armc-013-cstubs.c.obj.provides: CMakeFiles/armc-013.dir/armc-013-cstubs.c.obj.requires
	$(MAKE) -f CMakeFiles/armc-013.dir/build.make CMakeFiles/armc-013.dir/armc-013-cstubs.c.obj.provides.build
.PHONY : CMakeFiles/armc-013.dir/armc-013-cstubs.c.obj.provides

CMakeFiles/armc-013.dir/armc-013-cstubs.c.obj.provides.build: CMakeFiles/armc-013.dir/armc-013-cstubs.c.obj

CMakeFiles/armc-013.dir/armc-013-start.S.obj: CMakeFiles/armc-013.dir/flags.make
CMakeFiles/armc-013.dir/armc-013-start.S.obj: ../armc-013-start.S
	$(CMAKE_COMMAND) -E cmake_progress_report /home/tyler/RPi1/DCS-RPi/OS_C/Tutorial4/scripts/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building ASM object CMakeFiles/armc-013.dir/armc-013-start.S.obj"
	/usr/bin/arm-none-eabi-gcc  $(ASM_DEFINES) $(ASM_FLAGS) -o CMakeFiles/armc-013.dir/armc-013-start.S.obj -c /home/tyler/RPi1/DCS-RPi/OS_C/Tutorial4/armc-013-start.S

CMakeFiles/armc-013.dir/armc-013-start.S.obj.requires:
.PHONY : CMakeFiles/armc-013.dir/armc-013-start.S.obj.requires

CMakeFiles/armc-013.dir/armc-013-start.S.obj.provides: CMakeFiles/armc-013.dir/armc-013-start.S.obj.requires
	$(MAKE) -f CMakeFiles/armc-013.dir/build.make CMakeFiles/armc-013.dir/armc-013-start.S.obj.provides.build
.PHONY : CMakeFiles/armc-013.dir/armc-013-start.S.obj.provides

CMakeFiles/armc-013.dir/armc-013-start.S.obj.provides.build: CMakeFiles/armc-013.dir/armc-013-start.S.obj

CMakeFiles/armc-013.dir/rpi-armtimer.c.obj: CMakeFiles/armc-013.dir/flags.make
CMakeFiles/armc-013.dir/rpi-armtimer.c.obj: ../rpi-armtimer.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/tyler/RPi1/DCS-RPi/OS_C/Tutorial4/scripts/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/armc-013.dir/rpi-armtimer.c.obj"
	/usr/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/armc-013.dir/rpi-armtimer.c.obj   -c /home/tyler/RPi1/DCS-RPi/OS_C/Tutorial4/rpi-armtimer.c

CMakeFiles/armc-013.dir/rpi-armtimer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/armc-013.dir/rpi-armtimer.c.i"
	/usr/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/tyler/RPi1/DCS-RPi/OS_C/Tutorial4/rpi-armtimer.c > CMakeFiles/armc-013.dir/rpi-armtimer.c.i

CMakeFiles/armc-013.dir/rpi-armtimer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/armc-013.dir/rpi-armtimer.c.s"
	/usr/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/tyler/RPi1/DCS-RPi/OS_C/Tutorial4/rpi-armtimer.c -o CMakeFiles/armc-013.dir/rpi-armtimer.c.s

CMakeFiles/armc-013.dir/rpi-armtimer.c.obj.requires:
.PHONY : CMakeFiles/armc-013.dir/rpi-armtimer.c.obj.requires

CMakeFiles/armc-013.dir/rpi-armtimer.c.obj.provides: CMakeFiles/armc-013.dir/rpi-armtimer.c.obj.requires
	$(MAKE) -f CMakeFiles/armc-013.dir/build.make CMakeFiles/armc-013.dir/rpi-armtimer.c.obj.provides.build
.PHONY : CMakeFiles/armc-013.dir/rpi-armtimer.c.obj.provides

CMakeFiles/armc-013.dir/rpi-armtimer.c.obj.provides.build: CMakeFiles/armc-013.dir/rpi-armtimer.c.obj

CMakeFiles/armc-013.dir/rpi-gpio.c.obj: CMakeFiles/armc-013.dir/flags.make
CMakeFiles/armc-013.dir/rpi-gpio.c.obj: ../rpi-gpio.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/tyler/RPi1/DCS-RPi/OS_C/Tutorial4/scripts/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/armc-013.dir/rpi-gpio.c.obj"
	/usr/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/armc-013.dir/rpi-gpio.c.obj   -c /home/tyler/RPi1/DCS-RPi/OS_C/Tutorial4/rpi-gpio.c

CMakeFiles/armc-013.dir/rpi-gpio.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/armc-013.dir/rpi-gpio.c.i"
	/usr/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/tyler/RPi1/DCS-RPi/OS_C/Tutorial4/rpi-gpio.c > CMakeFiles/armc-013.dir/rpi-gpio.c.i

CMakeFiles/armc-013.dir/rpi-gpio.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/armc-013.dir/rpi-gpio.c.s"
	/usr/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/tyler/RPi1/DCS-RPi/OS_C/Tutorial4/rpi-gpio.c -o CMakeFiles/armc-013.dir/rpi-gpio.c.s

CMakeFiles/armc-013.dir/rpi-gpio.c.obj.requires:
.PHONY : CMakeFiles/armc-013.dir/rpi-gpio.c.obj.requires

CMakeFiles/armc-013.dir/rpi-gpio.c.obj.provides: CMakeFiles/armc-013.dir/rpi-gpio.c.obj.requires
	$(MAKE) -f CMakeFiles/armc-013.dir/build.make CMakeFiles/armc-013.dir/rpi-gpio.c.obj.provides.build
.PHONY : CMakeFiles/armc-013.dir/rpi-gpio.c.obj.provides

CMakeFiles/armc-013.dir/rpi-gpio.c.obj.provides.build: CMakeFiles/armc-013.dir/rpi-gpio.c.obj

CMakeFiles/armc-013.dir/rpi-interrupts.c.obj: CMakeFiles/armc-013.dir/flags.make
CMakeFiles/armc-013.dir/rpi-interrupts.c.obj: ../rpi-interrupts.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/tyler/RPi1/DCS-RPi/OS_C/Tutorial4/scripts/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/armc-013.dir/rpi-interrupts.c.obj"
	/usr/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/armc-013.dir/rpi-interrupts.c.obj   -c /home/tyler/RPi1/DCS-RPi/OS_C/Tutorial4/rpi-interrupts.c

CMakeFiles/armc-013.dir/rpi-interrupts.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/armc-013.dir/rpi-interrupts.c.i"
	/usr/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/tyler/RPi1/DCS-RPi/OS_C/Tutorial4/rpi-interrupts.c > CMakeFiles/armc-013.dir/rpi-interrupts.c.i

CMakeFiles/armc-013.dir/rpi-interrupts.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/armc-013.dir/rpi-interrupts.c.s"
	/usr/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/tyler/RPi1/DCS-RPi/OS_C/Tutorial4/rpi-interrupts.c -o CMakeFiles/armc-013.dir/rpi-interrupts.c.s

CMakeFiles/armc-013.dir/rpi-interrupts.c.obj.requires:
.PHONY : CMakeFiles/armc-013.dir/rpi-interrupts.c.obj.requires

CMakeFiles/armc-013.dir/rpi-interrupts.c.obj.provides: CMakeFiles/armc-013.dir/rpi-interrupts.c.obj.requires
	$(MAKE) -f CMakeFiles/armc-013.dir/build.make CMakeFiles/armc-013.dir/rpi-interrupts.c.obj.provides.build
.PHONY : CMakeFiles/armc-013.dir/rpi-interrupts.c.obj.provides

CMakeFiles/armc-013.dir/rpi-interrupts.c.obj.provides.build: CMakeFiles/armc-013.dir/rpi-interrupts.c.obj

CMakeFiles/armc-013.dir/rpi-systimer.c.obj: CMakeFiles/armc-013.dir/flags.make
CMakeFiles/armc-013.dir/rpi-systimer.c.obj: ../rpi-systimer.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/tyler/RPi1/DCS-RPi/OS_C/Tutorial4/scripts/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/armc-013.dir/rpi-systimer.c.obj"
	/usr/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/armc-013.dir/rpi-systimer.c.obj   -c /home/tyler/RPi1/DCS-RPi/OS_C/Tutorial4/rpi-systimer.c

CMakeFiles/armc-013.dir/rpi-systimer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/armc-013.dir/rpi-systimer.c.i"
	/usr/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/tyler/RPi1/DCS-RPi/OS_C/Tutorial4/rpi-systimer.c > CMakeFiles/armc-013.dir/rpi-systimer.c.i

CMakeFiles/armc-013.dir/rpi-systimer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/armc-013.dir/rpi-systimer.c.s"
	/usr/bin/arm-none-eabi-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/tyler/RPi1/DCS-RPi/OS_C/Tutorial4/rpi-systimer.c -o CMakeFiles/armc-013.dir/rpi-systimer.c.s

CMakeFiles/armc-013.dir/rpi-systimer.c.obj.requires:
.PHONY : CMakeFiles/armc-013.dir/rpi-systimer.c.obj.requires

CMakeFiles/armc-013.dir/rpi-systimer.c.obj.provides: CMakeFiles/armc-013.dir/rpi-systimer.c.obj.requires
	$(MAKE) -f CMakeFiles/armc-013.dir/build.make CMakeFiles/armc-013.dir/rpi-systimer.c.obj.provides.build
.PHONY : CMakeFiles/armc-013.dir/rpi-systimer.c.obj.provides

CMakeFiles/armc-013.dir/rpi-systimer.c.obj.provides.build: CMakeFiles/armc-013.dir/rpi-systimer.c.obj

# Object files for target armc-013
armc__013_OBJECTS = \
"CMakeFiles/armc-013.dir/armc-013.c.obj" \
"CMakeFiles/armc-013.dir/armc-013-cstartup.c.obj" \
"CMakeFiles/armc-013.dir/armc-013-cstubs.c.obj" \
"CMakeFiles/armc-013.dir/armc-013-start.S.obj" \
"CMakeFiles/armc-013.dir/rpi-armtimer.c.obj" \
"CMakeFiles/armc-013.dir/rpi-gpio.c.obj" \
"CMakeFiles/armc-013.dir/rpi-interrupts.c.obj" \
"CMakeFiles/armc-013.dir/rpi-systimer.c.obj"

# External object files for target armc-013
armc__013_EXTERNAL_OBJECTS =

armc-013: CMakeFiles/armc-013.dir/armc-013.c.obj
armc-013: CMakeFiles/armc-013.dir/armc-013-cstartup.c.obj
armc-013: CMakeFiles/armc-013.dir/armc-013-cstubs.c.obj
armc-013: CMakeFiles/armc-013.dir/armc-013-start.S.obj
armc-013: CMakeFiles/armc-013.dir/rpi-armtimer.c.obj
armc-013: CMakeFiles/armc-013.dir/rpi-gpio.c.obj
armc-013: CMakeFiles/armc-013.dir/rpi-interrupts.c.obj
armc-013: CMakeFiles/armc-013.dir/rpi-systimer.c.obj
armc-013: CMakeFiles/armc-013.dir/build.make
armc-013: CMakeFiles/armc-013.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable armc-013"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/armc-013.dir/link.txt --verbose=$(VERBOSE)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Convert the ELF output file to a binary image"
	arm-none-eabi-objcopy ./armc-013 -O binary ./kernel-013.img

# Rule to build all files generated by this target.
CMakeFiles/armc-013.dir/build: armc-013
.PHONY : CMakeFiles/armc-013.dir/build

CMakeFiles/armc-013.dir/requires: CMakeFiles/armc-013.dir/armc-013.c.obj.requires
CMakeFiles/armc-013.dir/requires: CMakeFiles/armc-013.dir/armc-013-cstartup.c.obj.requires
CMakeFiles/armc-013.dir/requires: CMakeFiles/armc-013.dir/armc-013-cstubs.c.obj.requires
CMakeFiles/armc-013.dir/requires: CMakeFiles/armc-013.dir/armc-013-start.S.obj.requires
CMakeFiles/armc-013.dir/requires: CMakeFiles/armc-013.dir/rpi-armtimer.c.obj.requires
CMakeFiles/armc-013.dir/requires: CMakeFiles/armc-013.dir/rpi-gpio.c.obj.requires
CMakeFiles/armc-013.dir/requires: CMakeFiles/armc-013.dir/rpi-interrupts.c.obj.requires
CMakeFiles/armc-013.dir/requires: CMakeFiles/armc-013.dir/rpi-systimer.c.obj.requires
.PHONY : CMakeFiles/armc-013.dir/requires

CMakeFiles/armc-013.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/armc-013.dir/cmake_clean.cmake
.PHONY : CMakeFiles/armc-013.dir/clean

CMakeFiles/armc-013.dir/depend:
	cd /home/tyler/RPi1/DCS-RPi/OS_C/Tutorial4/scripts && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tyler/RPi1/DCS-RPi/OS_C/Tutorial4 /home/tyler/RPi1/DCS-RPi/OS_C/Tutorial4 /home/tyler/RPi1/DCS-RPi/OS_C/Tutorial4/scripts /home/tyler/RPi1/DCS-RPi/OS_C/Tutorial4/scripts /home/tyler/RPi1/DCS-RPi/OS_C/Tutorial4/scripts/CMakeFiles/armc-013.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/armc-013.dir/depend


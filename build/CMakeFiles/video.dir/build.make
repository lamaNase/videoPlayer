# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/lama/Desktop/Training/task3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lama/Desktop/Training/task3/build

# Include any dependencies generated for this target.
include CMakeFiles/video.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/video.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/video.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/video.dir/flags.make

CMakeFiles/video.dir/video_autogen/mocs_compilation.cpp.o: CMakeFiles/video.dir/flags.make
CMakeFiles/video.dir/video_autogen/mocs_compilation.cpp.o: video_autogen/mocs_compilation.cpp
CMakeFiles/video.dir/video_autogen/mocs_compilation.cpp.o: CMakeFiles/video.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lama/Desktop/Training/task3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/video.dir/video_autogen/mocs_compilation.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/video.dir/video_autogen/mocs_compilation.cpp.o -MF CMakeFiles/video.dir/video_autogen/mocs_compilation.cpp.o.d -o CMakeFiles/video.dir/video_autogen/mocs_compilation.cpp.o -c /home/lama/Desktop/Training/task3/build/video_autogen/mocs_compilation.cpp

CMakeFiles/video.dir/video_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/video.dir/video_autogen/mocs_compilation.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lama/Desktop/Training/task3/build/video_autogen/mocs_compilation.cpp > CMakeFiles/video.dir/video_autogen/mocs_compilation.cpp.i

CMakeFiles/video.dir/video_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/video.dir/video_autogen/mocs_compilation.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lama/Desktop/Training/task3/build/video_autogen/mocs_compilation.cpp -o CMakeFiles/video.dir/video_autogen/mocs_compilation.cpp.s

CMakeFiles/video.dir/main.cpp.o: CMakeFiles/video.dir/flags.make
CMakeFiles/video.dir/main.cpp.o: ../main.cpp
CMakeFiles/video.dir/main.cpp.o: CMakeFiles/video.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lama/Desktop/Training/task3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/video.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/video.dir/main.cpp.o -MF CMakeFiles/video.dir/main.cpp.o.d -o CMakeFiles/video.dir/main.cpp.o -c /home/lama/Desktop/Training/task3/main.cpp

CMakeFiles/video.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/video.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lama/Desktop/Training/task3/main.cpp > CMakeFiles/video.dir/main.cpp.i

CMakeFiles/video.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/video.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lama/Desktop/Training/task3/main.cpp -o CMakeFiles/video.dir/main.cpp.s

CMakeFiles/video.dir/myWidget.cpp.o: CMakeFiles/video.dir/flags.make
CMakeFiles/video.dir/myWidget.cpp.o: ../myWidget.cpp
CMakeFiles/video.dir/myWidget.cpp.o: CMakeFiles/video.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lama/Desktop/Training/task3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/video.dir/myWidget.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/video.dir/myWidget.cpp.o -MF CMakeFiles/video.dir/myWidget.cpp.o.d -o CMakeFiles/video.dir/myWidget.cpp.o -c /home/lama/Desktop/Training/task3/myWidget.cpp

CMakeFiles/video.dir/myWidget.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/video.dir/myWidget.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lama/Desktop/Training/task3/myWidget.cpp > CMakeFiles/video.dir/myWidget.cpp.i

CMakeFiles/video.dir/myWidget.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/video.dir/myWidget.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lama/Desktop/Training/task3/myWidget.cpp -o CMakeFiles/video.dir/myWidget.cpp.s

# Object files for target video
video_OBJECTS = \
"CMakeFiles/video.dir/video_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/video.dir/main.cpp.o" \
"CMakeFiles/video.dir/myWidget.cpp.o"

# External object files for target video
video_EXTERNAL_OBJECTS =

video: CMakeFiles/video.dir/video_autogen/mocs_compilation.cpp.o
video: CMakeFiles/video.dir/main.cpp.o
video: CMakeFiles/video.dir/myWidget.cpp.o
video: CMakeFiles/video.dir/build.make
video: /usr/local/lib/libopencv_gapi.so.4.10.0
video: /usr/local/lib/libopencv_stitching.so.4.10.0
video: /usr/local/lib/libopencv_aruco.so.4.10.0
video: /usr/local/lib/libopencv_bgsegm.so.4.10.0
video: /usr/local/lib/libopencv_bioinspired.so.4.10.0
video: /usr/local/lib/libopencv_ccalib.so.4.10.0
video: /usr/local/lib/libopencv_dnn_objdetect.so.4.10.0
video: /usr/local/lib/libopencv_dnn_superres.so.4.10.0
video: /usr/local/lib/libopencv_dpm.so.4.10.0
video: /usr/local/lib/libopencv_face.so.4.10.0
video: /usr/local/lib/libopencv_freetype.so.4.10.0
video: /usr/local/lib/libopencv_fuzzy.so.4.10.0
video: /usr/local/lib/libopencv_hfs.so.4.10.0
video: /usr/local/lib/libopencv_img_hash.so.4.10.0
video: /usr/local/lib/libopencv_intensity_transform.so.4.10.0
video: /usr/local/lib/libopencv_line_descriptor.so.4.10.0
video: /usr/local/lib/libopencv_mcc.so.4.10.0
video: /usr/local/lib/libopencv_quality.so.4.10.0
video: /usr/local/lib/libopencv_rapid.so.4.10.0
video: /usr/local/lib/libopencv_reg.so.4.10.0
video: /usr/local/lib/libopencv_rgbd.so.4.10.0
video: /usr/local/lib/libopencv_saliency.so.4.10.0
video: /usr/local/lib/libopencv_signal.so.4.10.0
video: /usr/local/lib/libopencv_stereo.so.4.10.0
video: /usr/local/lib/libopencv_structured_light.so.4.10.0
video: /usr/local/lib/libopencv_superres.so.4.10.0
video: /usr/local/lib/libopencv_surface_matching.so.4.10.0
video: /usr/local/lib/libopencv_tracking.so.4.10.0
video: /usr/local/lib/libopencv_videostab.so.4.10.0
video: /usr/local/lib/libopencv_wechat_qrcode.so.4.10.0
video: /usr/local/lib/libopencv_xfeatures2d.so.4.10.0
video: /usr/local/lib/libopencv_xobjdetect.so.4.10.0
video: /usr/local/lib/libopencv_xphoto.so.4.10.0
video: /usr/lib/x86_64-linux-gnu/libQt5Widgets.so.5.15.3
video: /usr/local/lib/libopencv_shape.so.4.10.0
video: /usr/local/lib/libopencv_highgui.so.4.10.0
video: /usr/local/lib/libopencv_datasets.so.4.10.0
video: /usr/local/lib/libopencv_plot.so.4.10.0
video: /usr/local/lib/libopencv_text.so.4.10.0
video: /usr/local/lib/libopencv_ml.so.4.10.0
video: /usr/local/lib/libopencv_phase_unwrapping.so.4.10.0
video: /usr/local/lib/libopencv_optflow.so.4.10.0
video: /usr/local/lib/libopencv_ximgproc.so.4.10.0
video: /usr/local/lib/libopencv_video.so.4.10.0
video: /usr/local/lib/libopencv_videoio.so.4.10.0
video: /usr/local/lib/libopencv_imgcodecs.so.4.10.0
video: /usr/local/lib/libopencv_objdetect.so.4.10.0
video: /usr/local/lib/libopencv_calib3d.so.4.10.0
video: /usr/local/lib/libopencv_dnn.so.4.10.0
video: /usr/local/lib/libopencv_features2d.so.4.10.0
video: /usr/local/lib/libopencv_flann.so.4.10.0
video: /usr/local/lib/libopencv_photo.so.4.10.0
video: /usr/local/lib/libopencv_imgproc.so.4.10.0
video: /usr/local/lib/libopencv_core.so.4.10.0
video: /usr/lib/x86_64-linux-gnu/libQt5Gui.so.5.15.3
video: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.15.3
video: CMakeFiles/video.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lama/Desktop/Training/task3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable video"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/video.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/video.dir/build: video
.PHONY : CMakeFiles/video.dir/build

CMakeFiles/video.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/video.dir/cmake_clean.cmake
.PHONY : CMakeFiles/video.dir/clean

CMakeFiles/video.dir/depend:
	cd /home/lama/Desktop/Training/task3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lama/Desktop/Training/task3 /home/lama/Desktop/Training/task3 /home/lama/Desktop/Training/task3/build /home/lama/Desktop/Training/task3/build /home/lama/Desktop/Training/task3/build/CMakeFiles/video.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/video.dir/depend


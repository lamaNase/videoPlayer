cmake_minimum_required(VERSION 3.10)
project(video)

# Set C++ standard
set(CMAKE_CXX_STANDARD 17)

# Find OpenCV package
find_package(OpenCV REQUIRED)

# Find the Qt5 package
find_package(Qt5 COMPONENTS Core Widgets REQUIRED)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

# Add executable
add_executable(video main.cpp myWidget.cpp)

# Link OpenCV and Qt5 libraries
target_link_libraries(video ${OpenCV_LIBS} Qt5::Core Qt5::Widgets)


cmake_minimum_required(VERSION 3.10)

project(KinexonProject)

# Set C++14
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Find required packages
find_package(Protobuf REQUIRED)
find_package(ZeroMQ REQUIRED)
find_package(Threads REQUIRED)

# Include the protobuf generated files' directory
include_directories(${CMAKE_CURRENT_BINARY_DIR})
include_directories(${PROTOBUF_INCLUDE_DIR})

# Generate C++ sources from proto files
file(GLOB PROTO_FILES "${CMAKE_CURRENT_SOURCE_DIR}/proto/*.proto")
PROTOBUF_GENERATE_CPP(PROTO_SRCS PROTO_HDRS ${PROTO_FILES})

# Include directories
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src)
include_directories(${ZeroMQ_INCLUDE_DIR})

# RTLS Simulator executable
add_executable(rtls_simulator src/rtls_simulator.cpp src/PositionManager.cpp ${PROTO_SRCS} ${PROTO_HDRS})
target_link_libraries(rtls_simulator ${PROTOBUF_LIBRARY} ${ZeroMQ_LIBRARY} ${CMAKE_THREAD_LIBS_INIT})

# Subscriber executable
add_executable(subscriber src/subscriber.cpp ${PROTO_SRCS} ${PROTO_HDRS})
target_link_libraries(subscriber ${PROTOBUF_LIBRARY} ${ZeroMQ_LIBRARY} ${CMAKE_THREAD_LIBS_INIT})

cmake_minimum_required(VERSION 3.5 FATAL_ERROR)

project(tglang)

project(${PROJECT_NAME} VERSION 1.0.0 LANGUAGES CXX)
set(CMAKE_CXX_STANDARD 11)

find_package(TensorFlow REQUIRED)

message(${TensorFlow_LIBRARIES}/)
message(${TensorFlow_INCLUDE_DIRS}/)

add_library(${PROJECT_NAME} SHARED tglang.cpp)
#add_executable(${PROJECT_NAME} tglang.h tglang.cpp)

target_include_directories(${PROJECT_NAME} PRIVATE ${TensorFlow_INCLUDE_DIRS})
target_link_libraries(${PROJECT_NAME} PRIVATE "/usr/local/lib/libtensorflow_cc.so")
target_link_libraries(${PROJECT_NAME} PRIVATE "/usr/local/lib/libprotobuf.so")

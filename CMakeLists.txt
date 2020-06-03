cmake_minimum_required(VERSION 3.2)

project(dcparser)

find_package(SWIG REQUIRED)
include(${SWIG_USE_FILE})

include_directories(${CMAKE_CURRENT_SOURCE_DIR})
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/dcparser)

set(CMAKE_SWIG_FLAGS "")

set_source_files_properties(dcparser.swig PROPERTIES CPLUSPLUS ON)

# Default swig extension is .i which could
# get confused with .I inline files.
set(SWIG_SOURCE_FILE_EXTENSIONS ".swig")

# Locate swig files.
file(GLOB SRC_SWIG_FILES *.swig)

# Locate DC Parser source files.
file(GLOB_RECURSE SRC_H_FILES *.h)
file(GLOB_RECURSE SRC_I_FILES *.I)
file(GLOB_RECURSE SRC_CXX_FILES *.cxx)

# Exclude ext files. 
#list(FILTER SRC_H_FILES EXCLUDE REGEX ".*_ext.h$")
#list(FILTER SRC_CPP_FILES EXCLUDE REGEX ".*_ext.cxx$")

SWIG_ADD_LIBRARY(dcparser LANGUAGE csharp SOURCES ${SRC_SWIG_FILES} ${SRC_H_FILES} ${SRC_I_FILES} ${SRC_CXX_FILES})

# Set minimum required cmake version to 3.24
cmake_minimum_required(VERSION 3.24)

# Set the project metadata
project(cmake-executable-template
  VERSION 0.1.0
  DESCRIPTION "CMake template for building basic C/C++ executables"
  HOMEPAGE_URL https://github.com/MEhrn00/cmake-templates
  LANGUAGES CXX
  #LANGUAGES C
)

# Create a compile_commands.json file if supported
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Create a 'TARGET' variable for the main project executable target
set(TARGET cmake-executable-template)

# Documentation
include(cmake/Doxygen.cmake)

# Define the executable target
add_executable(${TARGET}
  src/main.cpp
  src/module.cpp
)

# Set the C/C++ standard to 23
target_compile_features(${TARGET} PRIVATE cxx_std_23)
#target_compile_features(${TARGET} PRIVATE c_std_23)

# Set the include directory to the top level of the sources
target_include_directories(${TARGET} PRIVATE src)

# Compiler warnings
include(cmake/CompilerWarnings.cmake)
set_compiler_warnings(${TARGET})

# Static analyzers
include(cmake/StaticAnalyzers.cmake)

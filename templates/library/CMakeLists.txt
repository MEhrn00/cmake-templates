# Set minimum required cmake version to 3.24
cmake_minimum_required(VERSION 3.24)

# Set the project metadata
project(
  CMakeLibraryTemplate
  VERSION 0.1.0
  DESCRIPTION "CMake template for building basic C/C++ libraries"
  HOMEPAGE_URL https://github.com/MEhrn00/cmake-templates
  LANGUAGES CXX
  #LANGUAGES C
)

# Create a compile_commands.json file if supported
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# This helps support IDEs
set_property(GLOBAL PROPERTY USE_FOLDERS ON)

# Add `cmake/` to the module path
set(CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake" ${CMAKE_MODULE_PATH})

# Static analyzers
include(StaticAnalyzers)

# Documentation
include(Documentation)

# TODO: Package management with CPM
# TODO: Package management with Conan

# Add library sources and target
add_subdirectory(src)

# TODO: Test integration

cmake_minimum_required(VERSION 3.19)

project(cmake-executable-template
    VERSION 0.1.0
    DESCRIPTION "CMake template for building basic executables"
    HOMEPAGE_URL https://github.com/MEhrn00/cmake-templates
    LANGUAGES CXX
)

add_executable(cmake-executable-template
    src/main.cpp
)

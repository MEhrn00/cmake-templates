# This is adapted from Json Turner's "The Ultimate CMake / C++ Quick Start" https://www.youtube.com/watch?v=YbgH7yat-Jo

option(ENABLE_CLANG_TIDY "Enable static analysis with clang-tidy" OFF)
option(ENABLE_CPPCHECK "Enable static analysis with cppcheck" OFF)
option(ENABLE_IWYU "Enable include-what-you-use" OFF)

if (ENABLE_CLANG_TIDY)
  find_program(CLANGTIDY clang-tidy)

  if (CLANGTIDY)
    set(CMAKE_CXX_CLANG_TIDY ${CLANGTIDY})
    set(CMAKE_C_CLANG_TIDY ${CLANGTIDY})
    message(STATUS "clang-tidy enabled and configured")
  else ()
    message(SEND_ERROR "clang-tidy is enabled but executable was not found")
  endif ()
endif ()


if (ENABLE_CPPCHECK)
  find_program(CPPCHECK cppcheck)

  if (CPPCHECK)
    set(CMAKE_CXX_CPPCHECK ${CPPCHECK} --suppress=missingInclude --enable=all)
    set(CMAKE_C_CPPCHECK ${CPPCHECK} --suppress=missingInclude --enable=all)
    message(STATUS "cppcheck enabled and configured")
  else ()
    message(SEND_ERROR "cppcheck is enabled but executable was not found")
  endif ()
endif ()

if (ENABLE_IWYU)
  find_program(IWYU include-what-you-use)

  if (IWYU)
    set(CMAKE_CXX_INCLUDE_WHAT_YOU_USE ${IWYU})
    set(CMAKE_C_INCLUDE_WHAT_YOU_USE ${IWYU})
    message(STATUS "include-what-you-use enabled and configured")
  else ()
    message(SEND_ERROR "include-what-you-use is enabled but executable was not found")
  endif ()
endif ()

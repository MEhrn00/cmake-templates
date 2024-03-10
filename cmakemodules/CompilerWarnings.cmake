# This is adapted from Json Turner's "The Ultimate CMake / C++ Quick Start" https://www.youtube.com/watch?v=YbgH7yat-Jo

# Function for setting common compiler warnings on a target. This will work for GCC, Clang and MSVC.
function (set_compiler_warnings target_name)
  set(CLANG_WARNINGS
    -Wall
    -Wextra
    -Wpedantic
    -Wshadow # Variable shadowing
    -Wnon-virtual-dtor # Class with virtual functions has non-virtual destructor
    -Wcast-align # Alignment issues with casts
    -Wunused # Unused variables
    -Woverloaded-virtual # Overloaded virtual functions
    -Wconversion # Lossy type conversions
    -Wsign-conversion # Sign conversion
    -Wnull-dereference # null deref
    -Wdouble-promotion # float implicitly promoted to a double
    -Wformat=2 # Potential format string vulnerabilities

    # C++ specific options
    $<$<COMPILE_LANGUAGE:CXX>:
      -Wold-style-cast # Warn on C-style casts
    >
  )

  set(GCC_WARNINGS
    ${CLANG_WARNINGS} # Clang warning flags work with GCC

    -Wmisleading-indentation # Indentation issues
    -Wduplicated-cond # Duplicated conditional statement
    -Wlogical-op # Logical operation used where a bitwise operation should have been used instead
    -Wuseless-cast # Unnecessary cast
  )

  set(MSVC_WARNINGS
    /Wall
  )

  target_compile_options(${target_name} PRIVATE
    $<$<OR:$<COMPILE_LANG_AND_ID:C,Clang>,$<COMPILE_LANG_AND_ID:CXX,Clang>>:${CLANG_WARNINGS}>
    $<$<OR:$<COMPILE_LANG_AND_ID:C,GNU>,$<COMPILE_LANG_AND_ID:CXX,GNU>>:${GCC_WARNINGS}>
    $<$<OR:$<COMPILE_LANG_AND_ID:C,MSVC>,$<COMPILE_LANG_AND_ID:CXX,MSV>>:${MSVC_WARNINGS}>
  )

endfunction ()

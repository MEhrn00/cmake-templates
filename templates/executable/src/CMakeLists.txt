# Create a variable for the target
set(target_name cmake-executable-template)

# Define the executable target and source files
add_executable(${target_name}
  main.cpp
  module.cpp
)

# Set the C/C++ standard to 23
target_compile_features(${target_name} PRIVATE cxx_std_23)
#target_compile_features(cmake-executable-template PRIVATE c_std_23)

# Set the include path to this directory
target_include_directories(${target_name} PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})

# Add compiler warnings
include(CompilerWarnings)
set_compiler_warnings(${target_name})

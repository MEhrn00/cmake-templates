# Create a variable for the target
set(target_name cmake-library-template)

# Define the library target and source files
add_library(${target_name}
  library.cpp
)

# Set the C/C++ standard to 23
target_compile_features(${target_name} PRIVATE cxx_std_23)
#target_compile_features(cmake-executable-template PRIVATE c_std_23)

# Add an include path to the library include directory
target_include_directories(${target_name} PUBLIC ${PROJECT_SOURCE_DIR}/include)

# Add compiler warnings
include(CompilerWarnings)
set_compiler_warnings(${target_name})

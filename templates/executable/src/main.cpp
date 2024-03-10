/// This is an example cmake project for building an executable file

// Header include order
// Current source file header (ex: module.h for module.c)
// <blank line>
// C system headers (unistd.h, stdlib.h)
// <blank line>
// C++ std headers (iostream, memory)
// <blank line>
// External library headers
// <blank line>
// Current project headers

#include <iostream>

#include "module.h"

int main() {
    std::cout << add(1, 2) << "\n";
}

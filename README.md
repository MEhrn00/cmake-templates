# CMake Templates

Basic CMake templates for starting various C/C++ projects.

## Templates
- [templates/executable](templates/executable) - Basic template for creating standalone executable programs
- [templates/library](templates/library) - Basic template for creating static or shared libraries

## CMake Modules
Each of the templates will consume items from the [cmakemodules/](cmakemodules) directory. These are
small `.cmake` files that help configure various things. The purpose of these modules is to help
limit code reuse and make everything more modular.

## Tool configurations
The [configs/](configs) directory contains configuration files for various tools, such as,
clang-format, clang-tidy, etc.

## Git Submodules
Git submodules under the [submodules/](submodules) directory are used for keeping various
tool configuration files up to date with my [dotfiles](https://github.com/MEhrn00/dots).

# SDL C++ Programs in VSCode
---
## .vscode
### c_cpp_properties.json
>  This file sets up intellisense for VSCode

>  includePath should include all paths for includes

>  browsePath should include all paths used in includePath -- browsePath will additional pull in all sub directories

### launch.json
>  Calls build processes and executes in debug mode using gdb

### settings.json
>  Various VSCode settings

### tasks.json
>  compile -- includes compile options and includes/libs 

>  * -mwindows hides the console - uncomment this if you don't want to see the console output

>  copy    -- copies dlls needed for running the executes

>  clean   -- cleans files from the build directories

## build
>  Contains all built parts needed to run the program(.exe, dlls, etc)

## external
>  Contains external frameworks and the compiler

## scripts
>  Contains scripts for this project

>  build.bat -- creates build directory, compiles and creates .exe and copies dlls

>  clean.bat -- cleans up the build directory

## src
>  Contains source code

>  By defaul main.cpp is built as part of the build process
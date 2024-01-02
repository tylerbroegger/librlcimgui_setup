# librlcimgui_setup
A hacky batch file for setting up a raylib + rlimgui + cimgui project

## Usage
Simply run the .bat file, it will:

- Create a file structure for librlcimgui itself (rlcimgui)
- Create a file structure for a raylib project (src)

### In /rlcimgui:
- Clone cimgui and RLImGui
- Compile cimgui and RLImGui, then link into librlcimgui.a
- Compile Raylib
- throw all necessary .h and .a files for librlcimgui.a into rlcimgui/inlcude and rlcimgui/bin

### In /src
- copy all necessary .h and .a files for librlcimgui.a and raylib.a into src/include and src/bin
- clone a main.c template for use with liblrcimgui.a
- create a compile.bat file for compiling

## Compiling
Compile your project by simply running the compile.bat file. I am using w64devkit for this.




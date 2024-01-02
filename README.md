# librlcimgui_setup
A batch file for setting up a raylib + rlimgui + cimgui project

## Usage
Simply run the .bat file, it will:

- Create a file-structure for the raylib project (src) and for librlcimgui (rlcimgui)
- Clone cimgui and rlImGui (including imgui and raylib)
- Compile cimgui and rlimGui, then link it into librlcimgui.a
- Compile Raylib
- Copy all necessary .h files for librcimgui into rlcimgui/include
- Copy all necessary .a files for librcimgui into rlcimgui/bin
- Copy all necessary .h and .a files for librcimgui and raylib into src/include and src/bin
- Clone a template main.c file
- Create a compile.bat file for compilation

## Compiling
Compile your project by simply running the compile.bat file. I am using w64devkit for this.




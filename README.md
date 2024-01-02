# rlcimgui_setup.bat
A batch file for setting up a raylib + rlimgui + cimgui project

## Usage
Simply run the .bat file, it will:

- Create a file-structure for the raylib project (src) and for librlcimgui (rlcimgui)
- clone cimgui and rlImGui (including imgui and raylib)
- compile cimgui and rlimGui, then link it into librlcimgui.a
- copy all necessary .h files for librcimgui into rlcimgui/include
- copy all necessary .a files for librcimgui into rlcimgui/bin
- copy all necessary .h and .a files for librcimgui and raylib into src/include and src/bin
- create a compile.bat file for compilation

## Compiling
Compile your project by simply running the compile.bat file. I am using w64devkit for this.




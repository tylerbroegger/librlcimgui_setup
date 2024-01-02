REM rlcimgui project setup tool

mkdir rlcimgui && cd rlcimgui
mkdir include lib src && cd include && mkdir extras
cd ../src

git clone --recursive https://github.com/cimgui/cimgui.git && git clone https://github.com/raylib-extras/rlImGui.git

cd rlImGui && mkdir imgui && cd ../cimgui/imgui
cp *.cpp ../../rlImGui/imgui/ && cp *.h ../../rlImGui/imgui/ && cp *.txt ../../rlImGui/imgui/

cd ../../rlImGui && start premake-mingw.bat

cd ../cimgui && make static && cp libcimgui.a ../rlImGui
cd ../rlImGui && g++ -O2 -fno-exceptions -fno-rtti -Wall -shared -fPIC -c -o rlImGui.o rlImGui.cpp -I raylib-master/src/ -I imgui/ && ar r libcimgui.a rlImGui.o
cp *.h ../../include/ && cp *.a ../../lib/

cd extras && cp * ../../../include/extras/

cd ../imgui && cp *.h ../../../include/

cd ../../cimgui && cp *.h ../../include/

cd ../../../ && mkdir src && cd src && mkdir bin lib include && cd include && mkdir extras && cd ../../

cd rlcimgui\src\rlImGui\raylib-master\src && mingw32-make PLATFORM=PLATFORM_DESKTOP
cp raylib.h ../../../../../src/include && cp libraylib.a ../../../../../src/lib

cd ../../ && cp libcimgui.a ../../../src/lib

cd ../../include/ && cp * ../../src/include

cd extras && cp * ../../../src/include/extras

cd ../../../src/ && echo g++ main.c -Wall -Wextra -O2 -I include/ -L lib/ -lraylib -lcimgui -lopengl32 -lgdi32 -lwinmm -lkernel32 -o bin/game.exe >> compile.bat

git clone https://github.com/tylerbroegger/rlcimgui_main.git &&  cp rlcimgui_main/main.c ./ && rd /s /q rlcimgui_main






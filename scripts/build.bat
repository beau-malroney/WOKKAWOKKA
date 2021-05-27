@echo on
 
set buildDir=%~dp0..\build
set externalDir=%~dp0..\external

cd /d %buildDir%
 
if not exist %buildDir% mkdir %buildDir%
 
pushd %buildDir%
 
:: compiler input
set compilerPath=%external%\compiler\mingw64\bin\x86_64-w64-mingw32-g++.exe
set inputFiles=..\src\main.cpp
set outputExe=..\build\main.exe
set dlls=-lmingw32 -lSDL2main -lSDL2 -lSDL2_image
set includes=-I %external%\external\SDL2\x86_64-w64-mingw32\include\SDL2 -I %external%\external\SDL2_image\x86_64-w64-mingw32\include\SDL2
set libraries=-L %external%\external\SDL2\x86_64-w64-mingw32\lib -L %external%\external\SDL2_image\x86_64-w64-mingw32\lib

 
%compilerPath% -g %inputFiles% -o %outputExe% %includes% %libraries% %dlls% -mwindows

:: Copy dependencies
xcopy /y ..\external\SDL2\x86_64-w64-mingw32\bin\SDL2.dll .
xcopy /y ..\external\SDL2_image\x86_64-w64-mingw32\bin\SDL2_image.dll .

popd
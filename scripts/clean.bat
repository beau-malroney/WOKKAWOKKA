@echo on
 
set buildDir=%~dp0..\build
 
if exist %buildDir% (  
  pushd %buildDir%
  del /q /s *.exe *.pdb *.ilk *.dll  
  rd /s /q .vs
  popd
)
##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Release
ProjectName            :=ScreenShare_Web
ConfigurationName      :=Release
WorkspaceConfiguration := $(ConfigurationName)
WorkspacePath          :=C:/Users/Ferdy/Documents/CodeLite/C++_Shenanigans
ProjectPath            :=C:/Users/Ferdy/Documents/CodeLite/C++_Shenanigans/ScreenShare_Web
IntermediateDirectory  :=../build-$(ConfigurationName)/ScreenShare_Web
OutDir                 :=../build-$(ConfigurationName)/ScreenShare_Web
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Ferdy
Date                   :=16/09/2019
CodeLitePath           :="C:/Program Files/CodeLite"
LinkerName             :="C:/Program Files (x86)/mingw-w64/i686-8.1.0-posix-dwarf-rt_v6-rev0/mingw32/bin/g++.exe"
SharedObjectLinkerName :="C:/Program Files (x86)/mingw-w64/i686-8.1.0-posix-dwarf-rt_v6-rev0/mingw32/bin/g++.exe" -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=..\build-$(ConfigurationName)\bin\$(ProjectName)
Preprocessors          :=$(PreprocessorSwitch)NDEBUG 
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :=$(IntermediateDirectory)/ObjectsList.txt
PCHCompileFlags        :=
RcCmpOptions           := 
RcCompilerName         :="C:/Program Files (x86)/mingw-w64/i686-8.1.0-posix-dwarf-rt_v6-rev0/mingw32/bin/windres.exe"
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch)./src/socket $(IncludeSwitch)./src/base64 $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)wsock32 $(LibrarySwitch)gdi32 $(LibrarySwitch)gdiplus 
ArLibs                 :=  "wsock32" "gdi32" "gdiplus" 
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := "C:/Program Files (x86)/mingw-w64/i686-8.1.0-posix-dwarf-rt_v6-rev0/mingw32/bin/ar.exe" rcu
CXX      := "C:/Program Files (x86)/mingw-w64/i686-8.1.0-posix-dwarf-rt_v6-rev0/mingw32/bin/g++.exe"
CC       := "C:/Program Files (x86)/mingw-w64/i686-8.1.0-posix-dwarf-rt_v6-rev0/mingw32/bin/gcc.exe"
CXXFLAGS :=  -O5 -Wall $(Preprocessors)
CFLAGS   :=  -O5 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := "C:/Program Files (x86)/mingw-w64/i686-8.1.0-posix-dwarf-rt_v6-rev0/mingw32/bin/as.exe"


##
## User defined environment variables
##
CodeLiteDir:=C:\Program Files\CodeLite
Objects0=../build-$(ConfigurationName)/ScreenShare_Web/src_socket_Socket.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/ScreenShare_Web/src_stdHelpers.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/ScreenShare_Web/src_UrlHelper.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/ScreenShare_Web/src_base64_base64.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/ScreenShare_Web/src_webserver.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/ScreenShare_Web/src_main.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/ScreenShare_Web/src_CaptureWindow.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: MakeIntermediateDirs $(OutputFile)

$(OutputFile): ../build-$(ConfigurationName)/ScreenShare_Web/.d $(Objects) 
	@if not exist "..\build-$(ConfigurationName)\ScreenShare_Web" mkdir "..\build-$(ConfigurationName)\ScreenShare_Web"
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@if not exist "..\build-$(ConfigurationName)\ScreenShare_Web" mkdir "..\build-$(ConfigurationName)\ScreenShare_Web"
	@if not exist ""..\build-$(ConfigurationName)\bin"" mkdir ""..\build-$(ConfigurationName)\bin""

../build-$(ConfigurationName)/ScreenShare_Web/.d:
	@if not exist "..\build-$(ConfigurationName)\ScreenShare_Web" mkdir "..\build-$(ConfigurationName)\ScreenShare_Web"

PreBuild:


##
## Objects
##
../build-$(ConfigurationName)/ScreenShare_Web/src_socket_Socket.cpp$(ObjectSuffix): src/socket/Socket.cpp ../build-$(ConfigurationName)/ScreenShare_Web/src_socket_Socket.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Ferdy/Documents/CodeLite/C++_Shenanigans/ScreenShare_Web/src/socket/Socket.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_socket_Socket.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/ScreenShare_Web/src_socket_Socket.cpp$(DependSuffix): src/socket/Socket.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/ScreenShare_Web/src_socket_Socket.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/ScreenShare_Web/src_socket_Socket.cpp$(DependSuffix) -MM src/socket/Socket.cpp

../build-$(ConfigurationName)/ScreenShare_Web/src_socket_Socket.cpp$(PreprocessSuffix): src/socket/Socket.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/ScreenShare_Web/src_socket_Socket.cpp$(PreprocessSuffix) src/socket/Socket.cpp

../build-$(ConfigurationName)/ScreenShare_Web/src_stdHelpers.cpp$(ObjectSuffix): src/stdHelpers.cpp ../build-$(ConfigurationName)/ScreenShare_Web/src_stdHelpers.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Ferdy/Documents/CodeLite/C++_Shenanigans/ScreenShare_Web/src/stdHelpers.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_stdHelpers.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/ScreenShare_Web/src_stdHelpers.cpp$(DependSuffix): src/stdHelpers.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/ScreenShare_Web/src_stdHelpers.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/ScreenShare_Web/src_stdHelpers.cpp$(DependSuffix) -MM src/stdHelpers.cpp

../build-$(ConfigurationName)/ScreenShare_Web/src_stdHelpers.cpp$(PreprocessSuffix): src/stdHelpers.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/ScreenShare_Web/src_stdHelpers.cpp$(PreprocessSuffix) src/stdHelpers.cpp

../build-$(ConfigurationName)/ScreenShare_Web/src_UrlHelper.cpp$(ObjectSuffix): src/UrlHelper.cpp ../build-$(ConfigurationName)/ScreenShare_Web/src_UrlHelper.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Ferdy/Documents/CodeLite/C++_Shenanigans/ScreenShare_Web/src/UrlHelper.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_UrlHelper.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/ScreenShare_Web/src_UrlHelper.cpp$(DependSuffix): src/UrlHelper.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/ScreenShare_Web/src_UrlHelper.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/ScreenShare_Web/src_UrlHelper.cpp$(DependSuffix) -MM src/UrlHelper.cpp

../build-$(ConfigurationName)/ScreenShare_Web/src_UrlHelper.cpp$(PreprocessSuffix): src/UrlHelper.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/ScreenShare_Web/src_UrlHelper.cpp$(PreprocessSuffix) src/UrlHelper.cpp

../build-$(ConfigurationName)/ScreenShare_Web/src_base64_base64.cpp$(ObjectSuffix): src/base64/base64.cpp ../build-$(ConfigurationName)/ScreenShare_Web/src_base64_base64.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Ferdy/Documents/CodeLite/C++_Shenanigans/ScreenShare_Web/src/base64/base64.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_base64_base64.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/ScreenShare_Web/src_base64_base64.cpp$(DependSuffix): src/base64/base64.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/ScreenShare_Web/src_base64_base64.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/ScreenShare_Web/src_base64_base64.cpp$(DependSuffix) -MM src/base64/base64.cpp

../build-$(ConfigurationName)/ScreenShare_Web/src_base64_base64.cpp$(PreprocessSuffix): src/base64/base64.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/ScreenShare_Web/src_base64_base64.cpp$(PreprocessSuffix) src/base64/base64.cpp

../build-$(ConfigurationName)/ScreenShare_Web/src_webserver.cpp$(ObjectSuffix): src/webserver.cpp ../build-$(ConfigurationName)/ScreenShare_Web/src_webserver.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Ferdy/Documents/CodeLite/C++_Shenanigans/ScreenShare_Web/src/webserver.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_webserver.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/ScreenShare_Web/src_webserver.cpp$(DependSuffix): src/webserver.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/ScreenShare_Web/src_webserver.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/ScreenShare_Web/src_webserver.cpp$(DependSuffix) -MM src/webserver.cpp

../build-$(ConfigurationName)/ScreenShare_Web/src_webserver.cpp$(PreprocessSuffix): src/webserver.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/ScreenShare_Web/src_webserver.cpp$(PreprocessSuffix) src/webserver.cpp

../build-$(ConfigurationName)/ScreenShare_Web/src_main.cpp$(ObjectSuffix): src/main.cpp ../build-$(ConfigurationName)/ScreenShare_Web/src_main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Ferdy/Documents/CodeLite/C++_Shenanigans/ScreenShare_Web/src/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_main.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/ScreenShare_Web/src_main.cpp$(DependSuffix): src/main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/ScreenShare_Web/src_main.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/ScreenShare_Web/src_main.cpp$(DependSuffix) -MM src/main.cpp

../build-$(ConfigurationName)/ScreenShare_Web/src_main.cpp$(PreprocessSuffix): src/main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/ScreenShare_Web/src_main.cpp$(PreprocessSuffix) src/main.cpp

../build-$(ConfigurationName)/ScreenShare_Web/src_CaptureWindow.cpp$(ObjectSuffix): src/CaptureWindow.cpp ../build-$(ConfigurationName)/ScreenShare_Web/src_CaptureWindow.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Ferdy/Documents/CodeLite/C++_Shenanigans/ScreenShare_Web/src/CaptureWindow.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_CaptureWindow.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/ScreenShare_Web/src_CaptureWindow.cpp$(DependSuffix): src/CaptureWindow.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/ScreenShare_Web/src_CaptureWindow.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/ScreenShare_Web/src_CaptureWindow.cpp$(DependSuffix) -MM src/CaptureWindow.cpp

../build-$(ConfigurationName)/ScreenShare_Web/src_CaptureWindow.cpp$(PreprocessSuffix): src/CaptureWindow.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/ScreenShare_Web/src_CaptureWindow.cpp$(PreprocessSuffix) src/CaptureWindow.cpp


-include ../build-$(ConfigurationName)/ScreenShare_Web//*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(IntermediateDirectory)



REM https://git.io/JfS9U
set CC=cl
set CXX=cl
IF "%ARCH%"=="" set ARCH=x64
IF "%WINSDK_VERSION%"=="" set WINSDK_VERSION=10.0.18362.0
IF "%VCVARS_VER%"=="" set VCVARS_VER=14.2

C:\\BuildTools\\VC\\Auxiliary\\Build\\vcvarsall.bat %ARCH% %WINSDK_VERSION% -vcvars_ver=%VCVARS_VER%

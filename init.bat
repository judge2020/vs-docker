REM https://git.io/JfyjC
IF "%ARCH%"=="" set ARCH=amd64
IF "%HOST_ARCH%"=="" set HOST_ARCH=amd64
IF "%WINSDK%"=="" set WINSDK=10.0.18362.0
IF "%VCVARS_VER%"=="" set VCVARS_VER=14.26

C:\\BuildTools\\Common7\\Tools\\VsDevCmd.bat -vcvars_ver=%VCVARS_VER% -arch=%ARCH% -host_arch=%HOST_ARCH%

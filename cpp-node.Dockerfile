# escape=`

FROM base


# Install Node.js LTS
ADD https://nodejs.org/dist/v12.18.0/node-v12.18.0-x64.msi C:\TEMP\node-install.msi
RUN start /wait msiexec.exe /i C:\TEMP\node-install.msi /l*vx "%TEMP%\MSI-node-install.log" /qn ADDLOCAL=ALL

RUN C:\TEMP\vs_buildtools.exe --quiet --wait --norestart --nocache `
    --installPath C:\BuildTools `
    --add Microsoft.VisualStudio.Workload.MSBuildTools `
    --add Microsoft.VisualStudio.Workload.VCTools `
    --add Microsoft.VisualStudio.Component.TestTools.BuildTools `
    --add Microsoft.VisualStudio.Component.VC.CMake.Project `
    --add Microsoft.VisualStudio.Component.Windows10SDK.18362 `
    --add Microsoft.VisualStudio.Component.VC.v141.x86.x64 `
    --add Microsoft.VisualStudio.VC.MSBuild.v150.x64.v141 `
    --remove Microsoft.VisualStudio.Component.Windows10SDK.10240 `
    --remove Microsoft.VisualStudio.Component.Windows10SDK.10586 `
    --remove Microsoft.VisualStudio.Component.Windows10SDK.14393 `
    --remove Microsoft.VisualStudio.Component.Windows10SDK.16299 `
    --remove Microsoft.VisualStudio.Component.Windows10SDK.17134 `
    --remove Microsoft.VisualStudio.Component.Windows10SDK.17763 `
    --remove Microsoft.VisualStudio.Component.Windows81SDK `
 || IF "%ERRORLEVEL%"=="3010" EXIT 0

COPY init.bat C:\\init.bat
ENTRYPOINT ["C:\\init.bat", "&&", "powershell.exe", "-NoLogo", "-ExecutionPolicy", "Bypass"]

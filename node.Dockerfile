# escape=`

FROM base

# Install Node.js LTS
ADD https://nodejs.org/dist/v12.18.0/node-v12.18.0-x64.msi C:\TEMP\node-install.msi
RUN start /wait msiexec.exe /i C:\TEMP\node-install.msi /l*vx "%TEMP%\MSI-node-install.log" /qn ADDLOCAL=ALL

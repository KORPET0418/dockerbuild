FROM microsoft/windowsservercore
RUN powershell.exe -Command [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12 ; \
Invoke-WebRequest "https://www.python.org/ftp/python/3.6.5/python-3.6.5.exe" -Outfile C:\python-3.6.5.exe
RUN powershell.exe -Command Start-Process C:\python-3.6.5.exe -ArgumentList '/quiet InstallAllUsers=1 PrependPath=1' -Wait
RUN powershell.exe -Command Remove-Item C:\python-3.6.5.exe -Force
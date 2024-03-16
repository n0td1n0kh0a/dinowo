& {$P = $env:TEMP + '\chromeremotedesktophost.msi'; Invoke-WebRequest 'https://dl.google.com/edgedl/chrome-remote-desktop/chromeremotedesktophost.msi' -OutFile $P; Start-Process $P -Wait; Remove-Item $P}

& "${Env:PROGRAMFILES(X86)}\Google\Chrome Remote Desktop\CurrentVersion\remoting_start_host.exe" --code="4/0AeaYSHBLXh6ejI2sOb7PjM4jD-o8loRxA3eD_G4BYpoCM4TeVaLGW-pYdhwhAs3wMSqjZQ" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=$Env:COMPUTERNAME --pin=123456

cmd /c net user /add Admin P@ssw0rd.
cmd /c net localgroup /add administrators Admin

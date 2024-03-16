& {$P = $env:TEMP + '\chromeremotedesktophost.msi'; Invoke-WebRequest 'https://dl.google.com/edgedl/chrome-remote-desktop/chromeremotedesktophost.msi' -OutFile $P; Start-Process $P -Wait; Remove-Item $P}
Invoke-WebRequest https://dl.google.com/tag/s/appguid%3D%7B8A69D345-D564-463C-AFF1-A69D9E530F96%7D%26iid%3D%7BC41EF8CE-49A6-7FBC-D4D0-9F08CACF683B%7D%26lang%3Dtr%26browser%3D4%26usagestats%3D1%26appname%3DGoogle%2520Chrome%26needsadmin%3Dprefers%26ap%3Dx64-stable-statsdef_1%26brand%3DYTUH%26installdataindex%3Dempty/update2/installers/ChromeSetup.exe -OutFile chrome.exe

cmd /c net user /add Admin P@ssw0rd.
cmd /c net localgroup /add administrators Admin

& "${Env:PROGRAMFILES(X86)}\Google\Chrome Remote Desktop\CurrentVersion\remoting_start_host.exe" --code="4/0AeaYSHAmsCfq18tpzbHK2MOru_cy1wbTt6LenC_PTrl4eGCynZCxMIrMUhWFHthZFiplhQ" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=$Env:COMPUTERNAME --pin=123456
$i = 10000000
do {
    Write-Host $i
    Sleep 120
    $i--
} while ($i -gt 0)

cmd /c net user /add Admin P@ssw0rd.
cmd /c net localgroup /add administrators Admin

Invoke-WebRequest https://github.com/playit-cloud/playit-agent/releases/download/v0.15.13/playit-windows-x86_64-signed.msi -OutFile playit.msi
./playit.msi

$i = 10000000
do {
    Write-Host $i
    Sleep 120
    $i--
} while ($i -gt 0)

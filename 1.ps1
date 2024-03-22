$username = 'FreeRDP_Community'
$password = ''
$securePassword = ConvertTo-SecureString $password -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential ($username, $securePassword)
& "${Env:PROGRAMFILES(X86)}\Google\Chrome Remote Desktop\CurrentVersion\remoting_start_host.exe" --code="4/0AeaYSHDxCHr2Sl7sbVnPDM64JwzniPdpjNocZGlY-GtLOBdiPrPvpZ89neSGkfNDcgxSzw" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=$Env:COMPUTERNAME
}

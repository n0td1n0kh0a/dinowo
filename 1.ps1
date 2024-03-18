$username = 'FreeRDP_Community'
$password = 'Din0_On_T0p!'
$credential = New-Object System.Management.Automation.PSCredential ($username, $securePassword)

Invoke-Command -ComputerName localhost -Credential $credential -ScriptBlock {
& "${Env:PROGRAMFILES(X86)}\Google\Chrome Remote Desktop\CurrentVersion\remoting_start_host.exe" --code="4/0AeaYSHCzRMmw-Y7aqSbesilDBQK_Z6CZtEYDaEh8Uqq9KW5z1EB6xxQWWRx_KMKjaDlyzQ" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=$Env:COMPUTERNAME --pin=696969
}

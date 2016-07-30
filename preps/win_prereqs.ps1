Set-ExecutionPolicy RemoteSigned
choco install -y powershell
New-ItemProperty -Path HKLM:Software\Microsoft\Windows\CurrentVersion\policies\system -Name EnableLUA -PropertyType DWord -Value 0 -Force
Restart-Computer

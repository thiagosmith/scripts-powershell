# Scripting Powershell
echo "Mentoria OffSec - Scripting PowerShell"
echo "5m1th Security - OffSec Team"
$ip = Read-Host "Digite o IP"
echo "Efetuando ping no host: $ip"
ping -n 1 $ip | Select-String "bytes=32"
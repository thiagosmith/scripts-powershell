# Scripting Powershell
param($ip)
if (!$ip){
    echo "Mentoria OffSec - Scripting PowerShell"
    echo "5m1th Security - OffSec Team"
    echo "exemplo de uso: .\script.ps1 192.168.0.1"
} else {
echo "Efetuando ping no host: $ip"
ping -n 1 $ip | Select-String "bytes=32"
}
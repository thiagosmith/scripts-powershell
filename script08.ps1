# Scripting Powershell
param($p1)
if(!$p1){
    echo "Mentoria OffSec - Scripting PowerShell"
    echo "5m1th Security - OffSec Team"
    echo "exemplo de uso: .\script.ps1 192.168.0"
} else {
foreach ($ip in 1..254) {
echo "Efetuando ping no host: $p1.$ip"
}
}
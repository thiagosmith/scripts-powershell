# Scripting Powershell
param($p1)
if(!$p1){
    echo "RedScan Academy - Curso Red Team"
    echo "5m1th - OffSec Team"
    echo "Modo de uso: .\script.ps1 192.168.0"
} else {
foreach ($ip in 1..254) {
echo "Efetuando ping no host: $p1.$ip"
}
}

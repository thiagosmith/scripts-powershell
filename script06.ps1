# Scripting Powershell
param($ip)
if (!$ip){
    echo "RedScan Academy - Curso Red Team"
    echo "5m1th - OffSec Team"
    echo "Modo de uso: .\script.ps1 192.168.0.1"
} else {
echo "Detectando o alvo com IP: $ip"
ping -n 1 $ip | Select-String "bytes=32"
}

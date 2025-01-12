# Scripting Powershell
param($ip)
if(!$ip){
    echo "Mentoria OffSec - Scripting PowerShell"
    echo "5m1th Security - OffSec Team - Port Scanning"
    echo "exemplo de uso: .\script13.ps1 192.168.0.1"
} else {
foreach ($porta in 1..1024){
if (Test-NetConnection $ip -Port $porta -WarningAction SilentlyContinue -InformationLevel Quiet) {
    echo "Porta $porta Aberta"
} else {
    echo "Porta $porta Fechada"
}}
}
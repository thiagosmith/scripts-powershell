# Scripting Powershell
param($ip)
if(!$ip){
    echo "Mentoria OffSec - Scripting PowerShell"
    echo "5m1th Security - OffSec Team - Port Scanning"
    echo "exemplo de uso: .\script1.ps1 192.168.0.1"
} else {
$topports = 21,22,445,80,53,443,81,8080,8008
try {foreach ($porta in $topports){
if (Test-NetConnection $ip -Port $porta -WarningAction SilentlyContinue -InformationLevel Quiet) {
    echo "Porta $porta Aberta"
}} else {
    echo "Porta $porta Fechada"
}} catch {}
}
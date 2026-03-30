# Scripting Powershell
param($ip)
if(!$ip){
    echo "RedScan Academy - Curso Red Team"
    echo "5m1th - OffSec Team"
    echo "Modo de uso: .\script.ps1 192.168.0.1"
} else {
$topports = 21,22,445,80,53,443,81,8080,8008
try {foreach ($porta in $topports){
if (Test-NetConnection $ip -Port $porta -WarningAction SilentlyContinue -InformationLevel Quiet) {
    echo "Port $porta Opened"
}} else {
    echo "Port $porta Closed"
}} catch {}
}

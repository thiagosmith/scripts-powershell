# Scripting Powershell
param($ip)
if(!$ip){
    echo "RedScan Academy - Curso Red Team"
    echo "5m1th - OffSec Team"
    echo "Modo de uso: .\script.ps1 192.168.0.1"
} else {
foreach ($porta in 1..1024){
if (Test-NetConnection $ip -Port $porta -WarningAction SilentlyContinue -InformationLevel Quiet) {
    echo "Porta $porta Aberta"
}} else {
    echo "Porta $porta Fechada"
}
}

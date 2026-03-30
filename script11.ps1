# Scripting Powershell
param($ip,$porta)
if(!$ip -or !$porta){
    echo "RedScan Academy - Curso Red Team"
    echo "5m1th - OffSec Team"
    echo "Modo de uso: .\script.ps1 192.168.0.1 80"
}else {
if (Test-NetConnection $ip -Port $porta -WarningAction SilentlyContinue -InformationLevel Quiet) {
    echo "Porta Aberta"
} else {
    echo "Porta Fechada"
}
}

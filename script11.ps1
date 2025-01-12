# Scripting Powershell
param($ip,$porta)
if(!$ip -or !$porta){
    echo "Mentoria OffSec - Scripting PowerShell"
    echo "5m1th Security - OffSec Team - Port Scanning"
    echo "exemplo de uso: .\script1.ps1 192.168.0.1 80"
}else {
if (Test-NetConnection $ip -Port $porta -WarningAction SilentlyContinue -InformationLevel Quiet) {
    echo "Porta Aberta"
} else {
    echo "Porta Fechada"
}
}
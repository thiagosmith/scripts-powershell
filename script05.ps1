# Scripting Powershell
echo "RedScan Academy - Curso Red Team"
echo "5m1th - OffSec Team"
$ip = Read-Host "Informe o IP a ser detectado"
echo "Detectando o alvo com IP: $ip"
ping -n 1 $ip | Select-String "bytes=32"

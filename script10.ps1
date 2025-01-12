# Scripting Powershell
param($p1)
if(!$p1){
    echo "Mentoria OffSec - Scripting PowerShell"
    echo "5m1th Security - OffSec Team - Ping Sweep"
    echo "exemplo de uso: .\script.ps1 192.168.0"
} else {
foreach ($ip in 1..254) {
try {$res = ping -n 1 "$p1.$ip" | Select-String "bytes=32"
$res.Line.split(' ')[2] -replace ":",""
} catch {}
}
}
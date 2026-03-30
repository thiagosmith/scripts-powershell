# Scripting Powershell
# Parsing Web
echo "RedScan Academy - Curso Red Team"
echo "5m1th - OffSec Team"
$site = Read-Host "Digite o target: "
$web = Invoke-WebRequest -uri "$site" -Method Options
echo " Tecnologia do Server: "
$web.headers.server
echo ""
echo "Métodos aceitos: "
$web.headers.allow
echo ""
echo "Links encontrados: "
$web2 = Invoke-WebRequest -uri "$site"
$web2.links.href | Select-String http

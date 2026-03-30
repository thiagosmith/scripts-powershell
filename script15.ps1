# Scripting Powershell
echo "RedScan Academy - Curso Red Team"
echo "5m1th - OffSec Team"

$web = Invoke-WebRequest -uri "http://scanme.org" -Method Options
echo "Tecnologia do Server: "
$web.headers.server
echo ""
echo "Métodos aceitos: "
$web.headers.allow
echo ""
echo "Links encontrados: "
$web2 = Invoke-WebRequest -uri "http://scanme.org"
$web2.links.href | Select-String http

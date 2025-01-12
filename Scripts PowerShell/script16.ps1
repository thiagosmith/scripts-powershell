# Scripting Powershell
# Parsing Web
$site = Read-Host "Digite o site: "
$web = Invoke-WebRequest -uri "$site" -Method Options
echo " o servidor roda: "
$web.headers.server
echo ""
echo "o servidor aceita os metodos: "
$web.headers.allow
echo ""
echo "Links encontrados: "
$web2 = Invoke-WebRequest -uri "$site"
$web2.links.href | Select-String http
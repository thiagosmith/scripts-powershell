# Scripting Powershell
$web = Invoke-WebRequest -uri "http://scanme.org" -Method Options
echo "o servidor roda: "
$web.headers.server
echo ""
echo "o servidor aceita os metodos: "
$web.headers.allow
echo ""
echo "Links encontrados: "
$web2 = Invoke-WebRequest -uri "http://scanme.org"
$web2.links.href | Select-String http

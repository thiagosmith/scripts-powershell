# Scripting Powershell
echo "RedScan Academy - Curso Red Team"
echo "5m1th - OffSec Team"
$age = Read-Host "qual a idade?"
if ($age -ge "18"){
    echo "YES: pode comprar bebida alcolica"
}else{
    echo "SORRY: nao pode comprar bebida alcolica"
}

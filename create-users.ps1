# Lista de usuários e senhas fornecidos
$usuarios = @(
    @{Nome="lucas"; Senha="shelby"},
    @{Nome="camila"; Senha="genesis"},
    @{Nome="pablo"; Senha="147258"},
    @{Nome="jonas"; Senha="kelsey"},
    @{Nome="euler"; Senha="snickers"}
)

# Criar cada usuário local
foreach ($u in $usuarios) {
    $securePass = ConvertTo-SecureString $u.Senha -AsPlainText -Force
    New-LocalUser -Name $u.Nome -Password $securePass -FullName $u.Nome -Description "Usuário fictício de teste"
    Write-Host "Usuário $($u.Nome) criado."
}

# Sortear aleatoriamente um usuário para cada grupo
$randomMgmt = Get-Random -InputObject $usuarios
$randomRdp  = Get-Random -InputObject $usuarios

# Adicionar ao grupo Remote Management Users
Add-LocalGroupMember -Group "Remote Management Users" -Member $randomMgmt.Nome
Write-Host "Usuário $($randomMgmt.Nome) adicionado ao grupo Remote Management Users."

# Adicionar ao grupo Remote Desktop Users
Add-LocalGroupMember -Group "Remote Desktop Users" -Member $randomRdp.Nome
Write-Host "Usuário $($randomRdp.Nome) adicionado ao grupo Remote Desktop Users."

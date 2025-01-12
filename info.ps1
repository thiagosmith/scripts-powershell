# Coleta informações do sistema e hardware
$systemInfo = Get-CimInstance -ClassName Win32_ComputerSystem
$osInfo = Get-CimInstance -ClassName Win32_OperatingSystem
$cpuInfo = Get-CimInstance -ClassName Win32_Processor
$memoryInfo = Get-CimInstance -ClassName Win32_PhysicalMemory
$memoryInfo = Get-CimInstance -ClassName Win32_PhysicalMemory
$totalMemoryBytes = 0
foreach ($mem in $memoryInfo) {
    $totalMemoryBytes += $mem.Capacity
}
$totalMemoryGB = $totalMemoryBytes / 1GB

# Exibe informações no console
Write-Host "Informações do Sistema:"
Write-Host "Nome do Computador: $($systemInfo.Name)"
Write-Host "Sistema Operacional: $($osInfo.Caption)"
Write-Host "Arquitetura do Sistema: $($osInfo.OSArchitecture)"
Write-Host "Processador: $($cpuInfo.Name)"
Write-Host "Memória Total: $totalMemoryGB GB"

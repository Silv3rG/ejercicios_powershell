[int]$horas = Read-Host "Cuantas horas has trabajado este mes?"
[int]$coste = Read-Host "A cuanto cobras la hora?"
$salario = $horas*$coste
Write-Host "Tu salario son" $salario "euros" 
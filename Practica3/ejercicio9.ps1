 [int] $dinero = Read-Host "¿Cual es tu renta anual?"

switch ($dinero){
{($_ -lt 10000)} {Write-Host "Tu tramo impositivo es del 5%"}
{($_ -ge 10000) -and ($_ -lt 20000)} {Write-Host "Tu tramo impositivo es del 15%"}
{($_ -ge 20000) -and ($_ -lt 35000)} {Write-Host "Tu tramo impositivo es del 20%"}
{($_ -ge 35000) -and ($_ -lt 60000)} {Write-Host "Tu tramo impositivo es del 35%"}
{($_ -ge 60000)} {Write-Host "Tu tramo impositivo es del 45%"}
}
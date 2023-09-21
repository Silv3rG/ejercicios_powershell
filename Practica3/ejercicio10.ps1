[double] $puntuacion = Read-Host "Introduce la puntuación que ha obtenido el empleado"
[int]$sueldo = 2400*$puntuacion

switch($puntuacion){
{($_ -eq 0.0)} {Write-Host "Tu nivel de rendimiento es inaceptable y cobrarás $sueldo €"}
{($_ -eq 0.4)} {Write-Host "Tu nivel de rendimiento es aceptable y cobrarás $sueldo €"}
{($_ -ge 0.6)} {Write-Host "Tu nivel de rendimiento es merito y cobrarás $sueldo €"}
default {Write-Host "Error, la puntuacion solo puede ser 0.0, 0.4, 0.6 o más"}
}

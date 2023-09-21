[string] $sexo = Read-Host "¿Eres hombre o mujer?"
[string]$nombre = Read-Host "¿Como te llamas?"

 switch ($sexo){
 {($_ -eq "mujer") -and ($nombre -lt "M")} {Write-Host "Perteneces al grupo A"}
 {($_ -eq "hombre") -and ($nombre -gt "N")} { Write-Host "Perteneces al grupo A"}
 {($_ -eq "mujer") -and ($nombre -gt "M")} {Write-Host "Perteneces al grupo B"}
 {($_ -eq "hombre") -and ($nombre -lt "N")} {Write-Host "Perteneces al grupo B"}
 default { Write-Host "Datos introducidos erroneos"}

 }
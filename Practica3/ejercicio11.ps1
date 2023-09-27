$edad = Read-Host "¿Cuantos años tienes?"

switch($edad){
{$_ -lt 4} {Write-Host "Puedes entrar gratis"}
{($_ -ge 4) -and ($_ -le 18)} {Write-Host "La entrada cuesta 5€"}
{$_ -gt 18}  {Write-Host "La entrada cuesta 10€"}
}
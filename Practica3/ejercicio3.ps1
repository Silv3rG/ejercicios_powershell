[int] $num1 = Read-Host "Dime un número"
[int] $num2 = Read-Host "Dime otro número"
if ($num1 -gt $num2 )
{ Write-Host "$num1 es mayor que $num2"}
elseif ($num1 -eq $num2) 
{ Write-Host "Los números son iguales"}
else{
Write-Host "$num1 es menor que $num2"}

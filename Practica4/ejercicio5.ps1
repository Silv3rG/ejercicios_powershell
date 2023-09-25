$num = Read-Host "Dimero un numero entero positivo: "
for($a=0;$a -le 10; $a++)
{
$num2 = $num*$a
Write-Host "$num * $a es $num2"}
$num = 53
while( $a -ne $num)
{
$a = Read-Host "Dime un número entre 0 y 100"
switch($a)
{
{$_ -lt $num}{ Write-Host "El número es mayor que $a"}
{$_ -gt $num}{ Write-Host "El número es menor que $a"}
{$_ -eq $num}{ Write-Host "Exacto, el número era $a"}
}
}
$num1 = Read-Host "Dime un número: "
for($a=1; $a -le $num1; $a++){
$b = 1
while ($b -le $a){
$c= (2*$b-1)
Write-Host "$c " -NoNewline
$b++

}
Write-Host ""

}
$num1 = Read-Host "Dime un número: "
for($a=1; $a -le $num1; $a++){
$b = ($a)
while ($b -ge 1){
Write-Host "$b " -NoNewline
$b= $b-1
}
Write-Host ""

}
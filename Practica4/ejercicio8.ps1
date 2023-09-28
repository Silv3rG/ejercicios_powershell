$num1 = Read-Host "Dime un número: "
for($a=1; $a -le $num1; $a++){
$b = (2*$a-1)
while ($b -ge $1){
Write-Host "$b " -NoNewline
$b= $b-2
}
Write-Host ""

}
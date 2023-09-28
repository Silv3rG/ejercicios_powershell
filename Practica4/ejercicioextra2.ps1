$num1 = Read-Host "Dime un número: "
for($a=1; $a -le $num1; $a++){
$b = ($a)
while ($b -gt 1){
Write-Host "-" -NoNewline
$b= $b-1
}
Write-Host "*"

}
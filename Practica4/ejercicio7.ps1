$num1 = Read-Host "Dime un número: "
for($a=1; $a -le $num1; $a++){
$b = 1
while ($b -lt $a){
Write-Host "*" -NoNewline
$b++
}
Write-Host "*"
}


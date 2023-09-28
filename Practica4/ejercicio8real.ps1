[int] $altura = Read-Host "Introduce un número"
for ($a= 1; $a -le $altura; $a++){
for($num= 2*$a-1;$num -ge 1; $num = $num -2){
Write-Host -NoNewline "$num "
}
Write-Host""
}
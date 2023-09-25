$num = Read-Host "Dimero un numero entero positivo: "

for ($a = 0; $a -le $num; $num--){
Write-Host $num -NoNewline 
if($num -gt 0)
{ Write-Host -NoNewline ", "}
}
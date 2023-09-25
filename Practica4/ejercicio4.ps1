$num = Read-Host "Dimero un numero entero positivo: "

for ($a =1; $a -le $num; $a= $a + 2){

Write-Host $a -NoNewline 
if($a -lt $num -1)
{ Write-Host -NoNewline ", "}
}

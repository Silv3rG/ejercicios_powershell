$nombre = Read-Host "Cual es tu nombre?"
[int]$num = Read-Host "Dimero un número"

for ($a = 1; $a -le $num; $a++){
Write-Host $nombre
}
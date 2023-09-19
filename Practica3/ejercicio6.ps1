$nombre = Read-Host "Dime la ruta de la carpeta"
$existe = Test-Path $nombre -PathType Container

if($existe -eq 1)
{Write-Host "La carpeta sí existe"
 Get-ChildItem -Path $nombre -Recurse }
else
{Write-Host "No es una carpeta o no existe"}

$nombre = Read-Host "Dime la ruta de la carpeta o fichero que deseas saber si existe"
$existe = Test-Path $nombre

if($existe -eq 1)
{Write-Host "La carpeta o fichero sí existe"}
else
{Write-Host "La carpeta o fichero no existe"}

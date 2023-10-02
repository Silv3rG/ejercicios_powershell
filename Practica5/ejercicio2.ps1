$usuarios = Import-Csv Z:\Practica5\usuarios.csv

foreach ($usu in $usuarios)
{
Write-Host " Usuario: $($usu.nombre) $($usu.apellidos)   $($usu.grupo)"
}
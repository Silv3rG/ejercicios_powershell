while ($menu -ne "x"){
Clear-Host
 $menu = Read-Host "
 ********************************************
 a) Crear una carpeta. 
 b)Crear un fichero nuevo.
 c)Cambiar el nombre de un fichero o carpeta.
 d)Borrar un archivo o carpeta.
 e)Verificar si existe un fichero o carpeta.
 f)Mostrar el contenido de un directorio.
 g)Mostrar la fecha y hora actuales
 x)Salir
 ********************************************
 "

 switch ($menu){
 {$_ -eq "a"} 
  { $dondedir= Read-Host "Dime la dirección donde se  creará la nueva carpeta"
    $nombredir= Read-Host "Introduce el nombre de la carpeta"
    New-Item -Path $dondedir\$nombredir -ItemType directory}
 {$_ -eq "b"}{
    $dondefi= Read-Host "Dime la dirección donde se  creará el nuevo fichero"
    $nombrefi= Read-Host "Introduce el nombre del fichero"
    New-Item -Path $dondefi\$nombrefi -ItemType file
    }
 {$_ -eq "c"}{
    
 $donderename = Read-Host "Dime la ruta en la que se encuentra el fichero o carpeta"
 $nuevonombre = Read-Host "Inserta el nuevo nombre del fichero o la carpeta"
 Rename-Item $donderename $nuevonombre
 }
 
{$_ -eq "d"}{
 $borrar = Read-Host "Introduce la ruta del archivo o carpeta a borrar"
 Remove-Item $borrar
}
{$_ -eq "e"}{
$verificar = Read-Host "Introduce la ruta de la carpeta o fichero a verificar"
Test-Path $verificar
}

{$_ -eq "f"}
{$contenido = Read-Host "Introduce la ruta de la carpeta que quieres ver el contenido"
Get-ChildItem $contenido
 }
 {$_ -eq "g"}
{
Get-Date
 }
 {$_ -eq "x"}
{
Write-Host "Has salido"
 }
 }
 }

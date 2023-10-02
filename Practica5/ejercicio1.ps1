Function Sumar($x, $y) {
    $sumar = $x + $y
    Write-Host "La respuesta es $sumar"
    }

Function Restar ($x, $y) {
    $restar = $x - $y
    Write-Host "La respuesta es $restar"
    }

Function Multiplicar ($x, $y) {
    $multiplicar = $x * $y
    Write-Host "La respuesta es $multiplicar"
    }

Function Dividir ($x, $y) {
    $dividir = $x / $y
    Write-Host "La respuesta es $dividir"
    }
Clear-Host
while($operacion -ine "Salir") {

$operacion = Read-Host "
***** Calculador*****
Sumar
Restar
Multiplicar
Dividir
Salir
¿Qué desea hacer?Elige una opción"
[int]$num1 = Read-Host "Dime un número"
[int]$num2 = Read-Host "Dime otro número"

switch($operacion){

{$_ -ieq "Sumar"}{ Sumar $num1 $num2}
{$_ -ieq "Restar"}{ Restar $num1 $num2}
{$_ -ieq "Multiplicar"}{ Multiplicar $num1 $num2}
{$_ -ieq "Dividir"}{ Dividir $num1 $num2}
{$_ -ieq "Salir"}{ exit}
}

}

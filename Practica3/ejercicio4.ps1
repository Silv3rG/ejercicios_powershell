[int] $num1 = Read-Host "Dime un número"
[int] $num2 = Read-Host "Dime otro número"
[int] $operacion = Read-Host "
***** Calculador*****
1.Suma
2.Resta
3.Multiplicación
4.División
"


switch ($operacion) {
     {$_ -eq 1} {$sol= $num1+$num2
                 Write-Host  "La suma de los números es $sol"}
     {$_ -eq 2} {$sol= $num1-$num2
                 Write-Host  "La resta de los números es $sol"}
     {$_ -eq 3} {$sol= $num1*$num2
                 Write-Host "La multiplicación de los números es $sol"}
      {$_ -eq 4} {$sol= $num1/$num2
                 Write-Host  "La división de los números es $sol"}
       default {Write-Host "Error"}
       }
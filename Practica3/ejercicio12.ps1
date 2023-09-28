[string]$elegir = Read-Host "¿Quieres que la pizza sea vegetariana? (si/no)"

if ($elegir -ieq "si") {
    Write-Host "Estos son los ingredientes disponibles:"
    Write-Host "Tomate (incluido)"
    Write-Host "Mozzarella (incluido)"
    Write-Host "Pimiento"
    Write-Host "Tofu"

    $ingredientes = Read-Host "¿Quieres que tu pizza tenga pimientos o tofu?"

    if ($ingredientes -ieq "pimientos") {
        Write-Host "Los ingredientes de tu pizza vegetariana son: 
        tomate
        mozzarella
        pimiento."
    }
    elseif ($ingredientes -ieq "tofu") {
        Write-Host "Los ingredientes de tu pizza vegetariana son: 
        tomate
        mozzarella
        tofu."
    }
    else {
        Write-Host "Error, debes elegir pimientos o tofu."
    }
}
elseif ($elegir -ieq "no") {
    Write-Host "Estos son los ingredientes disponibles:"
    Write-Host "Tomate (incluido)"
    Write-Host "Mozzarella (incluido)"
    Write-Host "Pepperoni"
    Write-Host "Jamón"
    Write-Host "Salmón"

    $ingr = Read-Host "¿Quieres que tu pizza tenga pepperoni, jamón o salmón?"
    
    switch  ($ingr) {
        {$_ -ieq "pepperoni"} {
            Write-Host "Los ingredientes de tu pizza no vegetariana son:
            tomate
            mozzarella
            pepperoni"
        }
         {$_ -ieq "jamón"} {
            Write-Host "Los ingredientes de tu pizza no vegetariana son:
            tomate
            mozzarella
            jamón"
        }
        {$_ -ieq "salmón"} {
            Write-Host "Los ingredientes de tu pizza no vegetariana son:
            tomate
            mozzarella
            salmón"
        }
            default { Write-Host "Error, debes elegir entre pepperoni, jamón o salmón."}
    }
}

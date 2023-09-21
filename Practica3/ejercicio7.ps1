[string]$contraseña1 = "contraseña"
[string]$contraseña2 = Read-Host "Introduce la contraseña: "
if ($contraseña1 -ieq $contraseña2){
Write-Host "Las contraseñas coinciden"}
else {Write-Host "Las contraseñas no coinciden"}


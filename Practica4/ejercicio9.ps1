$contraseña = "contraseña"
$pregunta = Read-Host "Introduce la contraseña: "
while ($contraseña -ne $pregunta){
$pregunta = Read-Host "Contraseña incorrecta, introduzca de nuevo la contraseña"}
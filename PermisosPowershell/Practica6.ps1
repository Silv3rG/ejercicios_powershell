#Importo los usuarios
$empleados = import-CSV C:\Users\Administrador\Desktop\empleados.csv -Delimiter ";"
#Creo la estructura de carpetas y comparto la carpeta empresa_users en oculto
New-Item -Path C:\empresa_users -ItemType Directory
New-SmbShare -Path C:\empresa_users -Name "empresa_users$" -ChangeAccess "Usuarios del dominio"

foreach($emp in $empleados){
#Crea carpeta de cada empleado
New-Item -Path C:\empresa_users\"$($emp.nombre).$($emp.apellido)" -ItemType Directory

#config de permisos NTFS
$aclEMP= Get-Acl -Path  C:\empresa_users\"$($emp.nombre).$($emp.apellido)"
#Elimino la herencia
$aclEMP.SetAccessRuleProtection($true,$false)
$permisosEMP = @("$($emp.nombre).$($emp.apellido)", "FullControl", "ContainerInherit,ObjectInherit","None","Allow")
$aceEMP= New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisosEMP
$aclEMP.SetAccessRule($aceEMP)
$aclEMP | Set-Acl -Path C:\empresa_users\"$($emp.nombre).$($emp.apellido)"

$permisosADMIN = @("Administradores", "FullControl", "ContainerInherit,ObjectInherit", "None", "Allow")
$aceADMIN= New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisosADMIN
$aclEMP.SetAccessRule($aceADMIN)
$aclEMP | Set-Acl -Path C:\empresa_users\"$($emp.nombre).$($emp.apellido)"

#Conectar de forma automática la carpeta en la unidad Z:
Set-ADUser -Identity "$($emp.nombre).$($emp.apellido)" -ScriptPath "carpetas$($emp.departamento).bat" -HomeDrive "Z:" -HomeDirectory "\\EMPRESA-DC1\empresa_users$\$($emp.nombre).$($emp.apellido)"
}
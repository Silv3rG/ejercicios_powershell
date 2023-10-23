$departamentos = import-CSV C:\Users\Administrador\Desktop\departamentos.csv -Delimiter ";"
$rutaprincipal= "C:\empresa"

#Crear carpeta empresa y compartir a usuarios... con permisos de Modificar
New-Item -Path C:\empresa -ItemType Directory


#Permisos para las carpetas de los departamentos
foreach($dep in $departamentos){
$rutaDEP= "C:\empresa\$($dep.departamento)"
New-Item -Path $rutaDEP -ItemType Directory
New-SmbShare -Path $rutaDEP -Name $dep.departamento -ChangeAccess $dep.departamento -FullAccess Administradores -ReadAccess "Usuarios del dominio"

#ACL del departamento
$aclDEP= Get-Acl -Path $rutaDEP
$aclDEP.SetAccessRuleProtection($true,$false)

$permisosDEP = @($dep.departamento, "Modify", "ContainerInherit,ObjectInherit", "None", "Allow")
$aceDEP= New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisosDEP
$aclDEP.SetAccessRule($aceDEP)
$aclDEP | Set-Acl -Path $rutaDEP

$permisosADMIN = @("Administradores", "FullControl", "ContainerInherit,ObjectInherit", "None", "Allow")
$aceADMIN= New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisosADMIN
$aclDEP.SetAccessRule($aceADMIN)
$aclDEP | Set-Acl -Path $rutaDEP

$permisosUDD = @("Usuarios del dominio", "Read", "ContainerInherit,ObjectInherit", "None", "Allow")
$aceUDD= New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisosUDD
$aclDEP.SetAccessRule($aceUDD)
$aclDEP | Set-Acl -Path $rutaDEP
}


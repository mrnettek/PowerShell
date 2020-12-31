$RegPath="HKLM:\Software\Microsoft\Windows NT\CurrentVersion"
$reg=Get-ItemProperty $RegPath

Write-Host "Registered Owner:"$reg.RegisteredOwner
write-Host "Registered Organization:"$reg.RegisteredOrganization


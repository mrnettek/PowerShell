$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PatchPackage -computername $computer -namespace $namespace

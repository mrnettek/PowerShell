$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_SoftwareElementAction -computername $computer -namespace $namespace

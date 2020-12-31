$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_SoftwareElementCheck -computername $computer -namespace $namespace

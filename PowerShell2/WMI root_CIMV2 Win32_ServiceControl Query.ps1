$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_ServiceControl -computername $computer -namespace $namespace

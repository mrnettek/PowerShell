$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_SystemNetworkConnections -computername $computer -namespace $namespace

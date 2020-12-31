$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_NetworkClient -computername $computer -namespace $namespace

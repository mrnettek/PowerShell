$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_NetworkConnection -computername $computer -namespace $namespace

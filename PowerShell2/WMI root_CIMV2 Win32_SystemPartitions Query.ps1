$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_SystemPartitions -computername $computer -namespace $namespace

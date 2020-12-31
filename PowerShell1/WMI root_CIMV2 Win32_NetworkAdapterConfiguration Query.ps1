$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_NetworkAdapterConfiguration -computername $computer -namespace $namespace

$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_SystemBootConfiguration -computername $computer -namespace $namespace

$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_SessionConnection -computername $computer -namespace $namespace

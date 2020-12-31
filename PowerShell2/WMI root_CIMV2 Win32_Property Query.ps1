$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_Property -computername $computer -namespace $namespace

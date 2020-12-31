$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_ActiveRoute -computername $computer -namespace $namespace

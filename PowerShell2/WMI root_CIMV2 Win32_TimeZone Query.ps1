$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_TimeZone -computername $computer -namespace $namespace

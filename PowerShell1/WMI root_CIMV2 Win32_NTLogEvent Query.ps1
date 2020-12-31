$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_NTLogEvent -computername $computer -namespace $namespace

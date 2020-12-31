$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_NTLogEventLog -computername $computer -namespace $namespace

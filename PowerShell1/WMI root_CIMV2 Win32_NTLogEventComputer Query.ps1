$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_NTLogEventComputer -computername $computer -namespace $namespace

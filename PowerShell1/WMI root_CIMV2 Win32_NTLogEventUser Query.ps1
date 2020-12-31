$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_NTLogEventUser -computername $computer -namespace $namespace

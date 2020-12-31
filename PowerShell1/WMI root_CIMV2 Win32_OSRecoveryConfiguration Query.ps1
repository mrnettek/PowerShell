$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_OSRecoveryConfiguration -computername $computer -namespace $namespace

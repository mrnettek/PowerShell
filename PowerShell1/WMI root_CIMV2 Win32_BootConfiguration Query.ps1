$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_BootConfiguration -computername $computer -namespace $namespace

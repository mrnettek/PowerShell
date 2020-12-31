$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_ConnectionShare -computername $computer -namespace $namespace

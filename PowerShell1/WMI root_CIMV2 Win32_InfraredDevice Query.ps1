$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_InfraredDevice -computername $computer -namespace $namespace

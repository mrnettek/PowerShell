$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_SCSIControllerDevice -computername $computer -namespace $namespace

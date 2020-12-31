$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_1394ControllerDevice -computername $computer -namespace $namespace

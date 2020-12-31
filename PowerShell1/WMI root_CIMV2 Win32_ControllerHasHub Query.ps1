$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_ControllerHasHub -computername $computer -namespace $namespace

$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_USBControllerDevice -computername $computer -namespace $namespace

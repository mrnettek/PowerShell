$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_IDEControllerDevice -computername $computer -namespace $namespace

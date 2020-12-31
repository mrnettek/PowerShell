$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PointingDevice -computername $computer -namespace $namespace

$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class CIM_VideoControllerResolution -computername $computer -namespace $namespace

$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSMCAEvent_PlatformSpecificError -computername $computer -namespace $namespace

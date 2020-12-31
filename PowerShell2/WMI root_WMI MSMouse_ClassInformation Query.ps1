$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSMouse_ClassInformation -computername $computer -namespace $namespace

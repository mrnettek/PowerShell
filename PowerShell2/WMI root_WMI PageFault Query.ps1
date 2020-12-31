$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class PageFault -computername $computer -namespace $namespace

$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class FreeSegment -computername $computer -namespace $namespace

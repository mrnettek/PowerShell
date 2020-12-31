$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AllocateSegment -computername $computer -namespace $namespace

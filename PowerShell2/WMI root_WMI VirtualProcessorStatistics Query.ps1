$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class VirtualProcessorStatistics -computername $computer -namespace $namespace

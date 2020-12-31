$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class ProcessorPerformance -computername $computer -namespace $namespace

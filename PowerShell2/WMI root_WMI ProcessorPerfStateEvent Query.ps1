$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class ProcessorPerfStateEvent -computername $computer -namespace $namespace

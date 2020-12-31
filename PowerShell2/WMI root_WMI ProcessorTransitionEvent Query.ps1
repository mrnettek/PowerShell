$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class ProcessorTransitionEvent -computername $computer -namespace $namespace

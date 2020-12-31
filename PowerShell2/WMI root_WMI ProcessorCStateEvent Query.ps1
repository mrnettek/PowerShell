$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class ProcessorCStateEvent -computername $computer -namespace $namespace

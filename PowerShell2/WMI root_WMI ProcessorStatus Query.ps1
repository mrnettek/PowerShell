$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class ProcessorStatus -computername $computer -namespace $namespace

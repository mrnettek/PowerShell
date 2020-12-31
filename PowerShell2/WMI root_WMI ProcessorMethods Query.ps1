$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class ProcessorMethods -computername $computer -namespace $namespace

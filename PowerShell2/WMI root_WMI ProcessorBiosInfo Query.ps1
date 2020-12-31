$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class ProcessorBiosInfo -computername $computer -namespace $namespace

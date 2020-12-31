$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class Process_TypeGroup1 -computername $computer -namespace $namespace

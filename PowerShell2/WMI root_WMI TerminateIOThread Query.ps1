$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class TerminateIOThread -computername $computer -namespace $namespace

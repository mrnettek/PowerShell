$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSTapeProblemIoError -computername $computer -namespace $namespace

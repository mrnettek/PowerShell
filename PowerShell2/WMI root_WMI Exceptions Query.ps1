$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class Exceptions -computername $computer -namespace $namespace

$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class GCEnd -computername $computer -namespace $namespace

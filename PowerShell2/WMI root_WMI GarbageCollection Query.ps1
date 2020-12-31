$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class GarbageCollection -computername $computer -namespace $namespace

$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class BatteryCycleCount -computername $computer -namespace $namespace

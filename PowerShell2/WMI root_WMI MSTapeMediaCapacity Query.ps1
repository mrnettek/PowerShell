$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSTapeMediaCapacity -computername $computer -namespace $namespace

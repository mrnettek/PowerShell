$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class Registry_TypeGroup1 -computername $computer -namespace $namespace

$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class Registry_V0_TypeGroup1 -computername $computer -namespace $namespace

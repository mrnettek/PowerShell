$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetStop -computername $computer -namespace $namespace

$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetHttpHandlerEnter -computername $computer -namespace $namespace

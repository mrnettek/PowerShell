$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetHttpHandlerLeave -computername $computer -namespace $namespace

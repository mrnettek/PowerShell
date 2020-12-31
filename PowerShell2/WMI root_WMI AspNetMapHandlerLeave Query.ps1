$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetMapHandlerLeave -computername $computer -namespace $namespace

$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetMapHandlerEnter -computername $computer -namespace $namespace

$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetParseLeave -computername $computer -namespace $namespace

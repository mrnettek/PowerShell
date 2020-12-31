$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetPageLoadViewstateLeave -computername $computer -namespace $namespace

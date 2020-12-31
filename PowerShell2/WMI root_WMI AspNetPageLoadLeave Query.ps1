$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetPageLoadLeave -computername $computer -namespace $namespace

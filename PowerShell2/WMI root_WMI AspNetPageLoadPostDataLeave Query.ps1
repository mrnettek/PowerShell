$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetPageLoadPostDataLeave -computername $computer -namespace $namespace

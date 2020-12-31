$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetPageLoadViewstateEnter -computername $computer -namespace $namespace

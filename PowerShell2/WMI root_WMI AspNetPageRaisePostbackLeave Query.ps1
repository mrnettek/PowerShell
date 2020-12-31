$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetPageRaisePostbackLeave -computername $computer -namespace $namespace

$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetPageInitLeave -computername $computer -namespace $namespace

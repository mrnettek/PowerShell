$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetPagePreInitLeave -computername $computer -namespace $namespace

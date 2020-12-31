$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetPageInitEnter -computername $computer -namespace $namespace

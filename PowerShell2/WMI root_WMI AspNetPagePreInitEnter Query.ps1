$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetPagePreInitEnter -computername $computer -namespace $namespace

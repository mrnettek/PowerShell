$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetRoleManagerBegin -computername $computer -namespace $namespace

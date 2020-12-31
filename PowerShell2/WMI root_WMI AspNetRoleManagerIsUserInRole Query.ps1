$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetRoleManagerIsUserInRole -computername $computer -namespace $namespace

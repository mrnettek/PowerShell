$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetRoleManagerEnd -computername $computer -namespace $namespace

$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetRoleManagerGetUserRoles -computername $computer -namespace $namespace

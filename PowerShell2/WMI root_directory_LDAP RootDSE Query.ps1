$computer = "LocalHost" 
$namespace = "root\directory\LDAP" 
Get-WmiObject -class RootDSE -computername $computer -namespace $namespace

$computer = "LocalHost" 
$namespace = "root\directory\LDAP" 
Get-WmiObject -class DS_LDAP_Class_Containment -computername $computer -namespace $namespace

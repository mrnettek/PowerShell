$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetAppDomainEnter -computername $computer -namespace $namespace

$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetGetAppDomainEnter -computername $computer -namespace $namespace

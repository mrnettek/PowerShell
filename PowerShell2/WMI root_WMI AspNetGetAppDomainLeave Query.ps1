$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetGetAppDomainLeave -computername $computer -namespace $namespace

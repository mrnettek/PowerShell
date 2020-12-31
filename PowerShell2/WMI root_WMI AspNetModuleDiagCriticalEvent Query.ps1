$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetModuleDiagCriticalEvent -computername $computer -namespace $namespace

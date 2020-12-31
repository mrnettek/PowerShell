$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetModuleDiagSuspendEvent -computername $computer -namespace $namespace

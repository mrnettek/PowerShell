$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetModuleDiagStopEvent -computername $computer -namespace $namespace

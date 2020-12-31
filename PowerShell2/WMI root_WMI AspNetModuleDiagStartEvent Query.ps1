$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetModuleDiagStartEvent -computername $computer -namespace $namespace

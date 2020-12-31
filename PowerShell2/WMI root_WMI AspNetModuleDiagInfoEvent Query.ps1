$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetModuleDiagInfoEvent -computername $computer -namespace $namespace

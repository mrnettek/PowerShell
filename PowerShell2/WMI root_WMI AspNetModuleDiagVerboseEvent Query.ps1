$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetModuleDiagVerboseEvent -computername $computer -namespace $namespace

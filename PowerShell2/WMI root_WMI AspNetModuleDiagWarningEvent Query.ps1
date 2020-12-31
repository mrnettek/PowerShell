$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetModuleDiagWarningEvent -computername $computer -namespace $namespace

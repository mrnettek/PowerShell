$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetModuleDiagErrorEvent -computername $computer -namespace $namespace

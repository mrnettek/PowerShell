$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetModuleDiagTransferEvent -computername $computer -namespace $namespace

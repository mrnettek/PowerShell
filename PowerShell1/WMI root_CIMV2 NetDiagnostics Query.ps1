$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class NetDiagnostics -computername $computer -namespace $namespace

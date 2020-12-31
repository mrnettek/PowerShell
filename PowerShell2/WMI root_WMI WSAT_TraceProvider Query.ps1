$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class WSAT_TraceProvider -computername $computer -namespace $namespace

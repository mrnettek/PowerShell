$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class WSAT_TraceRecord -computername $computer -namespace $namespace

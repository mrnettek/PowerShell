$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class WSAT_TraceEvent -computername $computer -namespace $namespace

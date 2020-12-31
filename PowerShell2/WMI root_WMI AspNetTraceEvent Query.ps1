$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetTraceEvent -computername $computer -namespace $namespace

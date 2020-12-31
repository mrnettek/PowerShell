$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetPageTraceWarnEvent -computername $computer -namespace $namespace
